	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02050A40
sub_02050A40: ; 0x02050A40
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_02050A60:
	ldr r4, [r1]
	mov r0, r5
	bl sub_02050A84
	mov r1, r4
	cmp r4, #0
	bne _02050A60
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_02050A40

	arm_func_start sub_02050A84
sub_02050A84: ; 0x02050A84
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r7, r0
	add r0, r6, #8
	bl sub_020568F8
	movs r1, r0
	beq _02050AC4
	add r5, r7, #0x1c
	add r4, r6, #8
_02050AAC:
	mov r0, r5
	bl sub_02056944
	mov r0, r4
	bl sub_020568F8
	movs r1, r0
	bne _02050AAC
_02050AC4:
	add r0, r6, #0x14
	bl sub_020568F8
	movs r1, r0
	beq _02050AF4
	add r5, r7, #0x1c
	add r4, r6, #0x14
_02050ADC:
	mov r0, r5
	bl sub_02056944
	mov r0, r4
	bl sub_020568F8
	movs r1, r0
	bne _02050ADC
_02050AF4:
	mov r1, r6
	add r0, r7, #4
	bl sub_02056878
	mov r1, r6
	add r0, r7, #0x10
	bl sub_02056944
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_02050A84

	arm_func_start sub_02050B18
sub_02050B18: ; 0x02050B18
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	mov r4, #0
	beq _02050B9C
	add r1, sp, #0
	str r4, [r1]
	str r4, [r1, #4]
	add r0, r7, #0x10
	str r4, [r1, #8]
	bl sub_020568F8
	ldr r1, [r7, #0x28]
	add r2, sp, #0
	add r1, r1, r6, lsl #5
	mov r4, r0
	bl sub_02051FD8
	cmp r5, #0
	beq _02050B78
	mov r0, r4
	blx r5
_02050B78:
	mov r1, r4
	add r0, r7, #4
	bl sub_02056944
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	ldr r0, [r0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	movne r4, #0
_02050B9C:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_02050B18

	arm_func_start sub_02050BAC
sub_02050BAC: ; 0x02050BAC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	mov r4, #0
	beq _02050C10
	add r0, r7, #0x10
	bl sub_020568F8
	ldr r1, [r7, #0x28]
	mov r4, r0
	mov r2, r5
	add r1, r1, r6, lsl #5
	bl sub_02051FD8
	mov r1, r4
	add r0, r7, #4
	bl sub_02056944
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	ldr r0, [r0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	movne r4, #0
_02050C10:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_02050BAC

	arm_func_start sub_02050C20
sub_02050C20: ; 0x02050C20
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02050CE4 ; =0x04000060
	mov r4, r0
	ldrh r0, [r2]
	bic r0, r0, #0x3000
	orr r0, r0, #8
	strh r0, [r2]
	str r1, [r4, #0x44]
	ldr r0, [r4, #0x38]
	mov r0, r0, lsl #7
	movs r0, r0, lsr #0x1f
	bne _02050C9C
	ldr r5, [r4, #4]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_02050C68:
	str r5, [r4, #0x40]
	ldr r0, [r5, #0x24]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1f
	bne _02050C84
	mov r0, r4
	bl sub_02051540
_02050C84:
	ldr r5, [r5]
	cmp r5, #0
	bne _02050C68
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_02050C9C:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_02050CB0:
	str r5, [r4, #0x40]
	ldr r0, [r5, #0x24]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1f
	bne _02050CCC
	mov r0, r4
	bl sub_02051540
_02050CCC:
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _02050CB0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02050CE4: .word 0x04000060
	arm_func_end sub_02050C20

	arm_func_start sub_02050CE8
sub_02050CE8: ; 0x02050CE8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	ldr r7, [r8, #4]
	cmp r7, #0
	beq _02050DFC
	add sl, r8, #4
	add sb, r8, #0x10
	mov r4, #0
_02050D08:
	ldr r2, [r7, #0x24]
	ldr r1, [r7, #0x20]
	mov r0, r2, lsl #0x1b
	movs r0, r0, lsr #0x1f
	ldr r5, [r1]
	ldr r6, [r7]
	bne _02050D3C
	ldrh r1, [r7, #0x4c]
	ldrh r0, [r5, #0x32]
	cmp r1, r0
	orrhs r0, r2, #0x10
	strhs r0, [r7, #0x24]
	strhsh r4, [r7, #0x4c]
_02050D3C:
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	bne _02050D78
	ldr r0, [r7, #0x80]
	mov r0, r0, lsl #0xd
	movs r0, r0, lsr #0x1d
	beq _02050D6C
	ldrh r1, [r8, #0x48]
	sub r0, r0, #1
	cmp r1, r0
	bne _02050D78
_02050D6C:
	mov r0, r8
	mov r1, r7
	bl sub_02051790
_02050D78:
	ldr r0, [r5]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _02050DB0
	ldrh r1, [r5, #0x3c]
	cmp r1, #0
	beq _02050DB0
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _02050DB0
	ldrh r0, [r7, #0x4c]
	cmp r0, r1
	bhi _02050DC0
_02050DB0:
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _02050DF0
_02050DC0:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _02050DF0
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _02050DF0
	mov r0, sl
	mov r1, r7
	bl sub_02056878
	mov r1, r0
	mov r0, sb
	bl sub_02056944
_02050DF0:
	mov r7, r6
	cmp r6, #0
	bne _02050D08
_02050DFC:
	ldrh r0, [r8, #0x48]
	add r0, r0, #1
	strh r0, [r8, #0x48]
	ldrh r0, [r8, #0x48]
	cmp r0, #1
	movhi r0, #0
	strhih r0, [r8, #0x48]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end sub_02050CE8

	arm_func_start sub_02050E20
sub_02050E20: ; 0x02050E20
	ldr ip, _02050E2C ; =sub_02050E48
	ldr r1, _02050E30 ; =sub_020514D0
	bx ip
	.align 2, 0
_02050E2C: .word sub_02050E48
_02050E30: .word sub_020514D0
	arm_func_end sub_02050E20

	arm_func_start sub_02050E34
sub_02050E34: ; 0x02050E34
	ldr ip, _02050E40 ; =sub_02050EFC
	ldr r1, _02050E44 ; =sub_02051508
	bx ip
	.align 2, 0
_02050E40: .word sub_02050EFC
_02050E44: .word sub_02051508
	arm_func_end sub_02050E34

	arm_func_start sub_02050E48
sub_02050E48: ; 0x02050E48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov fp, r1
	blx GX_BeginLoadTexPltt
	ldrh r0, [sl, #0x32]
	mov sb, #0
	cmp r0, #0
	ble _02050EE8
	mov r0, #1
	mov r5, sb
	mov r4, sb
	str r0, [sp]
_02050E7C:
	ldr r0, [sl, #0x2c]
	mov r6, r4
	ldr r7, [r0, r5]
	add r8, r0, r5
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _02050ED0
	ldr r1, [r7, #4]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	cmp r1, #2
	ldreq r1, [sp]
	movne r1, r4
	blx fp
	mov r6, r0
	ldr r1, [r8]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	add r0, r1, r0
	mov r1, r6
	blx GX_LoadTexPltt
_02050ED0:
	str r6, [r8, #8]
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r5, r5, #0x14
	cmp sb, r0
	blt _02050E7C
_02050EE8:
	blx GX_EndLoadTexPltt
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_02050E48

	arm_func_start sub_02050EFC
sub_02050EFC: ; 0x02050EFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov fp, r1
	blx GX_BeginLoadTex
	ldrh r0, [sl, #0x32]
	mov sb, #0
	cmp r0, #0
	ble _02050FB4
	mov r0, #1
	mov r6, sb
	str sb, [sp, #4]
	str r0, [sp]
	mov r4, #0x14
_02050F34:
	ldr r2, [sl, #0x2c]
	ldr r7, [r2, r6]
	add r8, r2, r6
	ldr r0, [r7, #4]
	mov r1, r0, lsl #0xe
	movs r1, r1, lsr #0x1f
	beq _02050F68
	mov r0, r0, lsl #6
	mov r1, r0, lsr #0x18
	mla r0, r1, r4, r2
	ldr r0, [r0, #4]
	str r0, [r8, #4]
	b _02050FA0
_02050F68:
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #5
	ldreq r1, [sp]
	ldr r0, [r7, #8]
	ldrne r1, [sp, #4]
	blx fp
	mov r5, r0
	ldr r0, [r8]
	ldr r2, [r7, #8]
	add r0, r0, #0x20
	mov r1, r5
	blx GX_LoadTex
	str r5, [r8, #4]
_02050FA0:
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r6, r6, #0x14
	cmp sb, r0
	blt _02050F34
_02050FB4:
	blx GX_EndLoadTex
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_02050EFC

	arm_func_start sub_02050FC8
sub_02050FC8: ; 0x02050FC8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sb, r1
	ldrh r1, [sb, #8]
	mov sl, r0
	mov r8, #0x20
	strh r1, [sl, #0x30]
	ldrh r0, [sb, #0xa]
	strh r0, [sl, #0x32]
	ldrh r0, [sl, #0x30]
	ldr r1, [sl]
	mov r0, r0, lsl #5
	blx r1
	str r0, [sl, #0x28]
	ldrh r2, [sl, #0x30]
	ldr r0, [sl, #0x28]
	mov r1, #0
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldrh r1, [sl, #0x30]
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _02051268
	mov r6, r0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_02051044:
	ldr r1, [sl, #0x28]
	add r0, sb, r8
	str r0, [r1, r6]
	ldr r0, [r1, r6]
	add r8, r8, #0x58
	ldr r0, [r0]
	add r7, r1, r6
	str r0, [sp, #0x28]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #4]
	ldreq r0, [sp, #0x10]
	addne r8, r8, #0xc
	streq r0, [r7, #4]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #8]
	ldreq r0, [sp, #0x14]
	addne r8, r8, #0xc
	streq r0, [r7, #8]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x15
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0xc]
	ldreq r0, [sp, #0x18]
	addne r8, r8, #8
	streq r0, [r7, #0xc]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0x10]
	ldreq r0, [sp, #0x1c]
	addne r8, r8, #0xc
	streq r0, [r7, #0x10]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0x14]
	ldreq r0, [sp, #0x20]
	addne r8, r8, #0x14
	streq r0, [r7, #0x14]
	ldr r0, [sp, #0x28]
	mov r1, r0, lsl #7
	mov r2, r0, lsl #6
	mov r5, r1, lsr #0x1f
	mov r4, r2, lsr #0x1f
	add r1, r5, r2, lsr #31
	mov r2, r0, lsl #5
	add r1, r1, r2, lsr #31
	mov r3, r0, lsl #4
	mov fp, r2, lsr #0x1f
	add r2, r1, r3, lsr #31
	mov r1, r3, lsr #0x1f
	mov ip, r0, lsl #3
	str r1, [sp, #4]
	mov r3, r0, lsl #2
	mov r0, ip, lsr #0x1f
	add r1, r2, ip, lsr #31
	str r0, [sp, #8]
	add r0, r1, r3, lsr #31
	strh r0, [r7, #0x1c]
	mov r0, r3, lsr #0x1f
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0x1c]
	cmp r0, #0
	beq _02051244
	mov r0, r0, lsl #3
	ldr r1, [sl]
	blx r1
	str r0, [r7, #0x18]
	cmp r5, #0
	ldr r0, [r7, #0x18]
	beq _02051198
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _02051328 ; =sub_02056844
	add r8, r8, #8
	str r1, [r0]
	add r0, r0, #8
_02051198:
	cmp r4, #0
	beq _020511B8
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0205132C ; =sub_0205677C
	add r8, r8, #8
	str r1, [r0]
	add r0, r0, #8
_020511B8:
	cmp fp, #0
	beq _020511D8
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _02051330 ; =sub_020566F8
	add r8, r8, #0x10
	str r1, [r0]
	add r0, r0, #8
_020511D8:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _020511FC
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _02051334 ; =sub_02056620
	add r8, r8, #4
	str r1, [r0]
	add r0, r0, #8
_020511FC:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _02051220
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _02051338 ; =sub_02056504
	add r8, r8, #8
	str r1, [r0]
	add r0, r0, #8
_02051220:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0205124C
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0205133C ; =sub_02056470
	add r8, r8, #0x10
	str r1, [r0]
	b _0205124C
_02051244:
	ldr r0, [sp, #0x24]
	str r0, [r7, #0x18]
_0205124C:
	ldr r0, [sp]
	ldrh r1, [sl, #0x30]
	add r0, r0, #1
	add r6, r6, #0x20
	str r0, [sp]
	cmp r0, r1
	blt _02051044
_02051268:
	ldrh r2, [sl, #0x32]
	mov r0, #0x14
	ldr r1, [sl]
	mul r0, r2, r0
	blx r1
	str r0, [sl, #0x2c]
	ldrh r3, [sl, #0x32]
	mov r1, #0x14
	ldr r0, [sl, #0x2c]
	mul r2, r3, r1
	mov r1, #0
	bl MI_CpuFill8
	ldrh r0, [sl, #0x32]
	mov r3, #0
	cmp r0, #0
	addle sp, sp, #0x2c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	mov r4, r3
	mov r0, #1
_020512B8:
	ldr r2, [sl, #0x2c]
	add r1, sb, r8
	str r1, [r2, r4]
	ldr r5, [r1, #4]
	add r2, r2, r4
	mov r5, r5, lsl #0x18
	mov r5, r5, lsr #0x1c
	add r5, r5, #3
	mov r5, r0, lsl r5
	strh r5, [r2, #0x10]
	ldr r5, [r1, #4]
	add r3, r3, #1
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1c
	add r5, r5, #3
	mov r5, r0, lsl r5
	strh r5, [r2, #0x12]
	ldr r5, [r1, #4]
	add r4, r4, #0x14
	str r5, [r2, #0xc]
	ldrh r2, [sl, #0x32]
	ldr r1, [r1, #0x1c]
	cmp r3, r2
	add r8, r8, r1
	blt _020512B8
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02051328: .word sub_02056844
_0205132C: .word sub_0205677C
_02051330: .word sub_020566F8
_02051334: .word sub_02056620
_02051338: .word sub_02056504
_0205133C: .word sub_02056470
	arm_func_end sub_02050FC8

	arm_func_start sub_02051340
sub_02051340: ; 0x02051340
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r0, #0x4c
	mov r7, r1
	mov r6, r2
	mov r4, r3
	blx r8
	mov r5, r0
	mov r1, #0
	mov r2, #0x4c
	bl MI_CpuFill8
	strh r7, [r5, #0x34]
	strh r6, [r5, #0x36]
	ldrh r0, [sp, #0x20]
	and r2, r4, #0x3f
	ldr r1, [r5, #0x38]
	and r0, r0, #0x3f
	bic r1, r1, #0x3f
	orr r0, r1, r0
	str r0, [r5, #0x38]
	ldrh r0, [sp, #0x24]
	ldr r3, [r5, #0x38]
	mov r1, #0
	bic r3, r3, #0xfc0
	and r0, r0, #0x3f
	orr r0, r3, r0, lsl #6
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x38]
	mov r0, #0x9c
	mul r4, r7, r0
	bic ip, r3, #0x3f000
	mov r0, r3, lsl #0x1a
	mov r0, r0, lsr #0x1a
	and r0, r0, #0x3f
	orr r0, ip, r0, lsl #12
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x38]
	mov r0, r4
	bic r3, r3, #0xfc0000
	orr r2, r3, r2, lsl #18
	str r2, [r5, #0x38]
	ldr r2, [r5, #0x38]
	bic r2, r2, #0x1000000
	str r2, [r5, #0x38]
	ldr r2, [r5, #0x38]
	bic r2, r2, #0xfe000000
	str r2, [r5, #0x38]
	str r8, [r5]
	str r1, [r5, #8]
	str r1, [r5, #0x14]
	str r1, [r5, #0x20]
	str r1, [r5, #4]
	str r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x3c]
	strh r1, [r5, #0x48]
	blx r8
	mov r2, r4
	mov sb, r0
	mov r1, #0
	bl MI_CpuFill8
	cmp r7, #0
	mov sl, #0
	ble _02051460
	add r4, r5, #0x10
_02051444:
	mov r0, r4
	mov r1, sb
	bl sub_02056944
	add sl, sl, #1
	cmp sl, r7
	add sb, sb, #0x9c
	blt _02051444
_02051460:
	mov r0, #0x44
	mul r4, r6, r0
	mov r0, r4
	blx r8
	mov r2, r4
	mov r1, #0
	mov r8, r0
	bl MI_CpuFill8
	cmp r6, #0
	mov r7, #0
	ble _020514AC
	add r4, r5, #0x1c
_02051490:
	mov r0, r4
	mov r1, r8
	bl sub_02056944
	add r7, r7, #1
	cmp r7, r6
	add r8, r8, #0x44
	blt _02051490
_020514AC:
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	strh r0, [r5, #0x32]
	ldrh r1, [r5, #0x32]
	mov r0, r5
	strh r1, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end sub_02051340

	arm_func_start sub_020514D0
sub_020514D0: ; 0x020514D0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _02051500 ; =0x0209B1B0
	mov r2, #0
	ldr r3, [r3]
	blx r3
	ldr r1, _02051504 ; =0x0000FFFF
	and r0, r0, r1
	mov r0, r0, lsl #3
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02051500: .word 0x0209B1B0
_02051504: .word 0x0000FFFF
	arm_func_end sub_020514D0

	arm_func_start sub_02051508
sub_02051508: ; 0x02051508
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _02051538 ; =0x0209B1A8
	mov r2, #0
	ldr r3, [r3]
	blx r3
	ldr r1, _0205153C ; =0x0000FFFF
	and r0, r0, r1
	mov r0, r0, lsl #3
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02051538: .word 0x0209B1A8
_0205153C: .word 0x0000FFFF
	arm_func_end sub_02051508

	arm_func_start sub_02051540
sub_02051540: ; 0x02051540
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x20]
	ldr r5, [r1]
	ldr r1, [r5]
	mov r2, r1, lsl #0xa
	movs r2, r2, lsr #0x1f
	beq _02051598
	bl sub_020515BC
	ldr r0, [r5]
	mov r0, r0, lsl #9
	movs r0, r0, lsr #0x1f
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r0, r4
	bl sub_020516A4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_02051598:
	mov r1, r1, lsl #9
	movs r1, r1, lsr #0x1f
	bne _020515A8
	bl sub_020516A4
_020515A8:
	mov r0, r4
	bl sub_020515BC
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_02051540

	arm_func_start sub_020515BC
sub_020515BC: ; 0x020515BC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, [r7, #0x40]
	mov r4, #0
	ldr r5, [r6, #0x20]
	ldr r0, [r5]
	ldr r0, [r0]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	ldr r0, [r5, #0x14]
	ldr r2, [r7, #0x2c]
	ldrb r1, [r0, #0xf]
	mov r0, #0x14
	mla r0, r1, r0, r2
	bl sub_020522A8
	ldr r0, [r5, #0x14]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x17
	mov r0, r0, lsr #0x1e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0205165C
_02051624: ; jump table
	b _02051638 ; case 0
	b _02051640 ; case 1
	b _02051648 ; case 2
	b _02051650 ; case 3
	b _02051658 ; case 4
_02051638:
	ldr r4, _02051694 ; =sub_020540F8
	b _0205165C
_02051640:
	ldr r4, _02051698 ; =sub_02053330
	b _0205165C
_02051648:
	ldr r4, _0205169C ; =sub_02052C90
	b _0205165C
_02051650:
	ldr r4, _020516A0 ; =sub_02052394
	b _0205165C
_02051658:
	ldr r4, _020516A0 ; =sub_02052394
_0205165C:
	ldr r5, [r6, #0x14]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
_02051670:
	mov r0, r7
	mov r1, r5
	blx r4
	ldr r5, [r5]
	cmp r5, #0
	bne _02051670
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02051694: .word sub_020540F8
_02051698: .word sub_02053330
_0205169C: .word sub_02052C90
_020516A0: .word sub_02052394
	arm_func_end sub_020515BC

	arm_func_start sub_020516A4
sub_020516A4: ; 0x020516A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r6, [r7, #0x40]
	ldr r2, [r7, #0x2c]
	ldr r1, [r6, #0x20]
	mov r0, #0x14
	ldr r5, [r1]
	mov r4, #0
	ldrb r1, [r5, #0x47]
	mla r0, r1, r0, r2
	bl sub_020522A8
	ldr r0, [r5]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02051720
_020516E8: ; jump table
	b _020516FC ; case 0
	b _02051704 ; case 1
	b _0205170C ; case 2
	b _02051714 ; case 3
	b _0205171C ; case 4
_020516FC:
	ldr r4, _02051778 ; =sub_0205454C
	b _02051720
_02051704:
	ldr r4, _0205177C ; =sub_02053A10
	b _02051720
_0205170C:
	ldr r4, _02051780 ; =sub_02052FE0
	b _02051720
_02051714:
	ldr r4, _02051784 ; =sub_02052814
	b _02051720
_0205171C:
	ldr r4, _02051784 ; =sub_02052814
_02051720:
	ldr r0, [r5]
	ldr r8, [r6, #8]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	ldrne r5, _02051788 ; =sub_020522A8
	ldreq r5, _0205178C ; =sub_020522A4
	cmp r8, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r6, #0x14
_02051748:
	ldrb r1, [r8, #0x2c]
	ldr r0, [r7, #0x2c]
	mla r0, r1, r6, r0
	blx r5
	mov r0, r7
	mov r1, r8
	blx r4
	ldr r8, [r8]
	cmp r8, #0
	bne _02051748
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02051778: .word sub_0205454C
_0205177C: .word sub_02053A10
_02051780: .word sub_02052FE0
_02051784: .word sub_02052814
_02051788: .word sub_020522A8
_0205178C: .word sub_020522A4
	arm_func_end sub_020516A4

	arm_func_start sub_02051790
sub_02051790: ; 0x02051790
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sb, r1
	ldr r8, [sb, #0x20]
	mov sl, r0
	ldr r0, [r8, #0x14]
	ldr r4, [r8]
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r6, #0
	str r0, [sp, #0x24]
	ldrb r0, [r4, #0x46]
	ldr r2, [sb, #0x90]
	ldrh r7, [r8, #0x1c]
	add r0, r0, #0x180
	cmp r2, #0
	str r0, [sp, #8]
	beq _020517E4
	mov r0, sb
	mov r1, r6
	blx r2
_020517E4:
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	beq _020517FC
	ldrh r0, [sb, #0x4c]
	cmp r0, r1
	bhs _02051844
_020517FC:
	ldrh r0, [sb, #0x4c]
	ldrb r1, [sb, #0x80]
	bl sub_0208D65C
	cmp r1, #0
	bne _02051844
	ldr r1, [sb, #0x24]
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _02051844
	mov r0, r1, lsl #0x1e
	movs r0, r0, lsr #0x1f
	bne _02051844
	mov r0, r1, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _02051844
	mov r0, sb
	add r1, sl, #0x1c
	bl sub_02054F1C
_02051844:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	beq _02051874
	ldr r0, _02051FC0 ; =sub_020563E0
	add r6, r6, #1
	str r0, [sp, #0x28]
	ldr r0, [r8, #4]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	str r0, [sp, #0x2c]
_02051874:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _020518C0
	ldr r3, [r8, #8]
	ldrh r0, [r3, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _020518C0
	ldr r2, _02051FC4 ; =sub_02056214
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldrh r1, [r3, #8]
	mov r2, r6, lsl #3
	add r0, sp, #0x2c
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1f
	add r6, r6, #1
	str r1, [r0, r2]
_020518C0:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x15
	movs r0, r0, lsr #0x1f
	beq _020518FC
	ldr r2, _02051FC8 ; =sub_02056138
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r8, #0xc]
	mov r2, r6, lsl #3
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	add r6, r6, #1
	mov r1, r1, lsl #0x17
	mov r1, r1, lsr #0x1f
	str r1, [r0, r2]
_020518FC:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	beq _02051944
	ldr r3, [r8, #0x10]
	ldr r0, [r3, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	bne _02051944
	ldr r2, _02051FCC ; =sub_020560D4
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r3, #8]
	add r0, sp, #0x2c
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1f
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_02051944:
	ldr r4, [sb, #8]
	cmp r4, #0
	beq _02051C80
	ldr r0, [sp, #0x24]
	add fp, sp, #0x28
	mov r2, r0, lsl #0x10
	mov r1, r0, lsl #0xf
	mov r0, r2, lsr #0x1f
	str r0, [sp, #0xc]
	mov r0, r1, lsr #0x1f
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x18]
_02051978:
	ldr r0, [r4]
	ldrh r1, [r4, #0x2a]
	str r0, [sp]
	ldrh r0, [r4, #0x26]
	cmp r6, #0
	ldr r5, [sp, #0x18]
	mul r2, r1, r0
	mov r1, r2, asr #8
	strb r1, [sp, #0x20]
	ldrh r1, [r4, #0x28]
	ldrb r2, [r4, #0x2d]
	mul r0, r1, r0
	add r0, r2, r0, asr #8
	strb r0, [sp, #0x21]
	ble _020519E0
_020519B4:
	add r2, fp, r5, lsl #3
	ldr ip, [r2, #4]
	add r2, sp, #0x20
	ldrb r2, [r2, ip]
	ldr r3, [fp, r5, lsl #3]
	mov r0, r4
	mov r1, r8
	blx r3
	add r5, r5, #1
	cmp r5, r6
	blt _020519B4
_020519E0:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x18]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addne r0, sb, #0x28
	addne r3, r4, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _02051A40
_02051A14:
	ldr r2, [r8, #0x18]
	mov r1, r4
	add r0, r2, r5, lsl #3
	ldr ip, [r2, r5, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx ip
	add r5, r5, #1
	cmp r5, r7
	blt _02051A14
_02051A40:
	ldr r0, [sp, #0x10]
	ldrh r1, [r4, #0x20]
	cmp r0, #0
	ldrsh r0, [r4, #0x22]
	add r0, r1, r0
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r4, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r4, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r4, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	beq _02051B78
	ldr r0, [sp, #4]
	ldrh r2, [r4, #0x24]
	ldrb r1, [r0, #0xd]
	ldrh r3, [r4, #0x26]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r0, r3, lsl #0xc
	smull r5, r3, r2, r1
	mov r1, #0x800
	adds r2, r5, r1
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, asr #8
	subs r0, r0, r1
	bmi _02051B78
	ldr r1, [sp, #4]
	mov r0, r0, asr #0xc
	ldrb r1, [r1, #0xe]
	bl sub_0208D65C
	cmp r1, #0
	bne _02051B78
	mov r0, r4
	mov r1, sb
	add r2, sl, #0x1c
	bl sub_02054BFC
_02051B78:
	ldr r0, [sb, #0x20]
	ldr r0, [r0]
	ldr r0, [r0]
	mov r0, r0, lsl #1
	movs r0, r0, lsr #0x1f
	beq _02051BBC
	ldrh r0, [r4, #0x2e]
	ldr r1, [sl, #0x38]
	bic r0, r0, #0xfc00
	mov r1, r1, lsl #8
	mov r1, r1, lsr #0x1a
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	and r1, r1, #0x3f
	orr r0, r0, r1, lsl #10
	strh r0, [r4, #0x2e]
	b _02051C3C
_02051BBC:
	ldrh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	add r1, sl, #0x38
	bic r0, r0, #0xfc00
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #10
	strh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	bic r0, r2, #0x3f000
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	add r2, r2, #1
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #12
	str r0, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r0, r2, lsl #0xe
	mov r3, r0, lsr #0x1a
	mov r0, r2, lsl #0x14
	cmp r3, r0, lsr #26
	bls _02051C3C
	mov r0, r2, lsl #0x1a
	mov r0, r0, lsr #0x1a
	and r0, r0, #0x3f
	ldr r2, [r1]
	bic r2, r2, #0x3f000
	orr r0, r2, r0, lsl #12
	str r0, [r1]
_02051C3C:
	ldrh r0, [r4, #0x26]
	add r0, r0, #1
	strh r0, [r4, #0x26]
	ldrh r1, [r4, #0x26]
	ldrh r0, [r4, #0x24]
	cmp r1, r0
	bls _02051C70
	mov r1, r4
	add r0, sb, #8
	bl sub_02056878
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_02056944
_02051C70:
	ldr r0, [sp]
	cmp r0, #0
	mov r4, r0
	bne _02051978
_02051C80:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _02051F88
	ldr r0, [sp, #4]
	mov r6, #0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	ldrne r0, _02051FD0 ; =sub_02056088
	strne r6, [sp, #0x4c]
	strne r0, [sp, #0x48]
	ldr r0, [sp, #4]
	addne r6, r6, #1
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	beq _02051CE4
	ldr r2, _02051FD4 ; =sub_02056030
	add r1, sp, #0x48
	str r2, [r1, r6, lsl #3]
	add r0, sp, #0x4c
	mov r1, #0
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_02051CE4:
	ldr r0, [sp, #4]
	ldr r5, [sb, #0x14]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	moveq r7, #0
	cmp r5, #0
	beq _02051F88
	mov r0, #0
	str r0, [sp, #0x1c]
_02051D0C:
	ldrh r2, [r5, #0x26]
	ldr r0, [r5]
	ldrh r1, [r5, #0x24]
	str r0, [sp, #0x14]
	mov r0, r2, lsl #8
	bl sub_0208D65C
	ldr r4, [sp, #0x1c]
	strb r0, [sp, #0x20]
	cmp r6, #0
	ble _02051D5C
	ldrb fp, [sp, #0x20]
_02051D38:
	add r3, sp, #0x48
	ldr r3, [r3, r4, lsl #3]
	mov r0, r5
	mov r1, r8
	mov r2, fp
	blx r3
	add r4, r4, #1
	cmp r4, r6
	blt _02051D38
_02051D5C:
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	addne r0, sb, #0x28
	addne r3, r5, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _02051DC4
_02051D98:
	ldr r2, [r8, #0x18]
	mov r1, r5
	add r0, r2, r4, lsl #3
	ldr fp, [r2, r4, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx fp
	add r4, r4, #1
	cmp r4, r7
	blt _02051D98
_02051DC4:
	ldrh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	add r0, r1, r0
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r5, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r5, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r5, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r0, [sb, #0x20]
	ldr r0, [r0]
	ldr r0, [r0]
	movs r0, r0, lsr #0x1f
	beq _02051EC8
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	b _02051F48
_02051EC8:
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	ldr r1, [sl, #0x38]
	add r0, sl, #0x38
	bic r2, r1, #0x3f000
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1a
	add r1, r1, #1
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #12
	str r1, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r1, r2, lsl #0xe
	mov r3, r1, lsr #0x1a
	mov r1, r2, lsl #0x14
	cmp r3, r1, lsr #26
	bls _02051F48
	mov r1, r2, lsl #0x1a
	mov r1, r1, lsr #0x1a
	and r1, r1, #0x3f
	ldr r2, [r0]
	bic r2, r2, #0x3f000
	orr r1, r2, r1, lsl #12
	str r1, [r0]
_02051F48:
	ldrh r0, [r5, #0x26]
	add r0, r0, #1
	strh r0, [r5, #0x26]
	ldrh r1, [r5, #0x26]
	ldrh r0, [r5, #0x24]
	cmp r1, r0
	bls _02051F7C
	mov r1, r5
	add r0, sb, #0x14
	bl sub_02056878
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_02056944
_02051F7C:
	ldr r5, [sp, #0x14]
	movs r0, r5
	bne _02051D0C
_02051F88:
	ldrh r0, [sb, #0x4c]
	add r0, r0, #1
	strh r0, [sb, #0x4c]
	ldr r2, [sb, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x74
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, sb
	mov r1, #1
	blx r2
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02051FC0: .word sub_020563E0
_02051FC4: .word sub_02056214
_02051FC8: .word sub_02056138
_02051FCC: .word sub_020560D4
_02051FD0: .word sub_02056088
_02051FD4: .word sub_02056030
	arm_func_end sub_02051790

	arm_func_start sub_02051FD8
sub_02051FD8: ; 0x02051FD8
	stmdb sp!, {r4, r5, r6, lr}
	str r1, [r0, #0x20]
	mov r3, #0
	str r3, [r0, #0x24]
	ldr r1, [r0, #0x20]
	ldr r5, [r2]
	ldr r1, [r1]
	ldr r4, _0205229C ; =0x00007FFF
	ldr r1, [r1, #4]
	ldr ip, _020522A0 ; =0x0007FFFF
	add r1, r5, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r6, [r2, #4]
	ldr r1, [r1]
	mov lr, #0x80000000
	ldr r5, [r1, #8]
	mov r1, #0x1000
	add r5, r6, r5
	str r5, [r0, #0x2c]
	ldr r5, [r0, #0x20]
	ldr r6, [r2, #8]
	ldr r2, [r5]
	ldr r2, [r2, #0xc]
	add r2, r6, r2
	str r2, [r0, #0x30]
	str r3, [r0, #0x40]
	str r3, [r0, #0x44]
	str r3, [r0, #0x48]
	str r3, [r0, #0x3c]
	ldr r2, [r0, #0x3c]
	str r2, [r0, #0x38]
	ldr r2, [r0, #0x38]
	str r2, [r0, #0x34]
	strh r3, [r0, #0x4c]
	strh r3, [r0, #0x4e]
	ldr r2, [r0, #0x20]
	ldr r5, [r2]
	ldrh r3, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	strh r3, [r0, #0x50]
	strh r2, [r0, #0x52]
	ldrh r2, [r5, #0x20]
	strh r2, [r0, #0x54]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldrh r2, [r2, #0x38]
	strh r2, [r0, #0x56]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x10]
	str r2, [r0, #0x58]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x14]
	str r2, [r0, #0x5c]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x18]
	str r2, [r0, #0x60]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x24]
	str r2, [r0, #0x64]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x28]
	str r2, [r0, #0x68]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x2c]
	str r2, [r0, #0x6c]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldrh r2, [r2, #0x3e]
	strh r2, [r0, #0x70]
	strh r4, [r0, #0x72]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldrb r2, [r2, #0x44]
	strb r2, [r0, #0x80]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldrb r2, [r2, #0x45]
	strb r2, [r0, #0x81]
	ldr r2, [r0, #0x80]
	bic r2, r2, #0x70000
	str r2, [r0, #0x80]
	ldr r2, [r0, #0x80]
	and r2, r2, ip
	str r2, [r0, #0x80]
	str lr, [r0, #0x74]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x48]
	mov r2, r2, lsl #6
	mov r2, r2, lsr #0x1e
	mov r2, r1, lsl r2
	strh r2, [r0, #0x78]
	ldr r2, [r0, #0x20]
	ldr r2, [r2]
	ldr r2, [r2, #0x48]
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x1e
	mov r1, r1, lsl r2
	strh r1, [r0, #0x7a]
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x4c]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x78]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x78]
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x4c]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7a]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7a]
	ldr r2, [r0, #0x20]
	ldr r1, [r2]
	ldr r1, [r1]
	mov r1, r1, lsl #0xf
	movs r1, r1, lsr #0x1f
	beq _02052260
	ldr r1, [r2, #0x14]
	mov r2, #0x1000
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	mov r1, r2, lsl r1
	strh r1, [r0, #0x7c]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1e
	mov r1, r2, lsl r1
	strh r1, [r0, #0x7e]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1b
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7c]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7c]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1a
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7e]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7e]
_02052260:
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0]
	str r2, [r0, #0x14]
	ldr r1, [r0, #0x14]
	str r1, [r0, #8]
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x90]
	str r2, [r0, #0x94]
	str r2, [r0, #0x98]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0205229C: .word 0x00007FFF
_020522A0: .word 0x0007FFFF
	arm_func_end sub_02051FD8

	arm_func_start sub_020522A4
sub_020522A4: ; 0x020522A4
	bx lr
	arm_func_end sub_020522A4

	arm_func_start sub_020522A8
sub_020522A8: ; 0x020522A8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r7, [r0, #0xc]
	ldr r3, _02052380 ; =0x040004A8
	str r7, [sp]
	ldr r1, [r0, #4]
	mov r2, r7, lsl #0x1c
	mov lr, r2, lsr #0x1c
	mov r1, r1, lsr #3
	orr ip, r1, lr, lsl #26
	mov r4, r7, lsl #0x18
	mov r5, r7, lsl #0x14
	mov r2, r7, lsl #0xf
	mov r4, r4, lsr #0x1c
	orr ip, ip, #0x40000000
	mov r6, r7, lsl #0x12
	orr ip, ip, r4, lsl #20
	mov r5, r5, lsr #0x1c
	mov r1, r7, lsl #0x10
	orr ip, ip, r5, lsl #23
	mov r4, r6, lsr #0x1e
	mov r5, r1, lsr #0x1e
	orr r1, ip, r4, lsl #16
	mov r2, r2, lsr #0x1f
	orr r1, r1, r5, lsl #18
	orr r1, r1, r2, lsl #29
	str r1, [r3]
	cmp lr, #2
	moveq r1, #1
	movne r1, #0
	ldr r2, [r0, #8]
	rsb r1, r1, #4
	mov r2, r2, lsr r1
	ldr r1, _02052384 ; =0x040004AC
	ldr ip, _02052388 ; =0x04000440
	str r2, [r1]
	mov r2, #3
	ldr r1, _0205238C ; =0x04000454
	str r2, [ip]
	mov r3, #0
	str r3, [r1]
	ldrh r1, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	ldr r0, _02052390 ; =0x0400046C
	mov r1, r1, lsl #0xc
	str r1, [r0]
	mov r1, r2, lsl #0xc
	str r1, [r0]
	str r3, [r0]
	mov r0, #1
	str r0, [ip]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02052380: .word 0x040004A8
_02052384: .word 0x040004AC
_02052388: .word 0x04000440
_0205238C: .word 0x04000454
_02052390: .word 0x0400046C
	arm_func_end sub_020522A8

	arm_func_start sub_02052394
sub_02052394: ; 0x02052394
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _020527F0 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	addeq sp, sp, #0xf0
	ldr r0, [r0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _020527F4 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _020527F8 ; =0x0209B04C
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl MTX_Identity43_
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x10]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _02052474
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl VEC_Normalize
	b _020524A4
_02052474:
	add r1, sp, #0x90
	add r0, r4, #8
	bl VEC_Normalize
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_020524A4:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl VEC_DotProduct
	ldr r1, _020527FC ; =0x00000CCD
	cmp r0, r1
	bgt _020524DC
	ldr r1, _02052800 ; =0xFFFFF333
	cmp r0, r1
	bge _020524F0
_020524DC:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_020524F0:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl VEC_CrossProduct
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl VEC_CrossProduct
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _020525C0
	cmp r0, #1
	beq _020525FC
	cmp r0, #2
	beq _02052618
	b _0205263C
_020525C0:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0205263C
_020525FC:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0205263C
_02052618:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0205263C:
	add r0, sp, #0x60
	mov r3, r2
	blx MTX_Scale43_
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0]
	ldr r0, [r3]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020526B8
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	blx G3_LoadMtx43
	add r0, sp, #0
	blx G3_MultMtx43
	b _0205275C
_020526B8:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _02052804 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, _02052808 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0]
	str r2, [r0]
	str r3, [r0]
	ldr r0, [r5, #0x44]
	blx G3_MultMtx43
	add r0, sp, #0
	blx G3_MultMtx43
_0205275C:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0205280C ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r5, [r5, #0x40]
	ldr r4, _02052810 ; =0x0209B044
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_020527F0: .word 0x040004A4
_020527F4: .word FX_SinCosTable_
_020527F8: .word 0x0209B04C
_020527FC: .word 0x00000CCD
_02052800: .word 0xFFFFF333
_02052804: .word 0x04000454
_02052808: .word 0x04000470
_0205280C: .word 0x04000480
_02052810: .word 0x0209B044
	arm_func_end sub_02052394

	arm_func_start sub_02052814
sub_02052814: ; 0x02052814
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _02052C6C ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	addeq sp, sp, #0xf0
	ldr r0, [r0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _02052C70 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r0, [r0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _02052C74 ; =0x0209B04C
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl MTX_Identity43_
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r0, r0, lsr #0x1f
	bne _020528F0
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl VEC_Normalize
	b _02052920
_020528F0:
	add r1, sp, #0x90
	add r0, r4, #8
	bl VEC_Normalize
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_02052920:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl VEC_DotProduct
	ldr r1, _02052C78 ; =0x00000CCD
	cmp r0, r1
	bgt _02052958
	ldr r1, _02052C7C ; =0xFFFFF333
	cmp r0, r1
	bge _0205296C
_02052958:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_0205296C:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl VEC_CrossProduct
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl VEC_CrossProduct
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _02052A3C
	cmp r0, #1
	beq _02052A78
	cmp r0, #2
	beq _02052A94
	b _02052AB8
_02052A3C:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _02052AB8
_02052A78:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _02052AB8
_02052A94:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_02052AB8:
	add r0, sp, #0x60
	mov r3, r2
	blx MTX_Scale43_
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0]
	ldr r0, [r3]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _02052B34
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	blx G3_LoadMtx43
	add r0, sp, #0
	blx G3_MultMtx43
	b _02052BD8
_02052B34:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _02052C80 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, _02052C84 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0]
	str r2, [r0]
	str r3, [r0]
	ldr r0, [r5, #0x44]
	blx G3_MultMtx43
	add r0, sp, #0
	blx G3_MultMtx43
_02052BD8:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _02052C88 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r4, _02052C8C ; =0x0209B044
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02052C6C: .word 0x040004A4
_02052C70: .word FX_SinCosTable_
_02052C74: .word 0x0209B04C
_02052C78: .word 0x00000CCD
_02052C7C: .word 0xFFFFF333
_02052C80: .word 0x04000454
_02052C84: .word 0x04000470
_02052C88: .word 0x04000480
_02052C8C: .word 0x0209B044
	arm_func_end sub_02052814

	arm_func_start sub_02052C90
sub_02052C90: ; 0x02052C90
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _02052FC4 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	addeq sp, sp, #0x90
	ldr r0, [r0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _02052FC8 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _02052FCC ; =0x0209B04C
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _02052D94
	cmp r0, #1
	beq _02052DD0
	cmp r0, #2
	beq _02052DEC
	b _02052E10
_02052D94:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _02052E10
_02052DD0:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _02052E10
_02052DEC:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_02052E10:
	add r0, sp, #0x60
	mov r3, r2
	blx MTX_Scale43_
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0]
	ldr r0, [r3]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _02052E8C
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	blx G3_LoadMtx43
	add r0, sp, #0
	blx G3_MultMtx43
	b _02052F30
_02052E8C:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _02052FD0 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, _02052FD4 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0]
	str r2, [r0]
	str r3, [r0]
	ldr r0, [r5, #0x44]
	blx G3_MultMtx43
	add r0, sp, #0
	blx G3_MultMtx43
_02052F30:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _02052FD8 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r5, [r5, #0x40]
	ldr r4, _02052FDC ; =0x0209B044
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02052FC4: .word 0x040004A4
_02052FC8: .word FX_SinCosTable_
_02052FCC: .word 0x0209B04C
_02052FD0: .word 0x04000454
_02052FD4: .word 0x04000470
_02052FD8: .word 0x04000480
_02052FDC: .word 0x0209B044
	arm_func_end sub_02052C90

	arm_func_start sub_02052FE0
sub_02052FE0: ; 0x02052FE0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _02053314 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	addeq sp, sp, #0x90
	ldr r0, [r0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _02053318 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r0, [r0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _0205331C ; =0x0209B04C
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _020530E4
	cmp r0, #1
	beq _02053120
	cmp r0, #2
	beq _0205313C
	b _02053160
_020530E4:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _02053160
_02053120:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _02053160
_0205313C:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_02053160:
	add r0, sp, #0x60
	mov r3, r2
	blx MTX_Scale43_
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0]
	ldr r0, [r3]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020531DC
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	blx G3_LoadMtx43
	add r0, sp, #0
	blx G3_MultMtx43
	b _02053280
_020531DC:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _02053320 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, _02053324 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0]
	str r2, [r0]
	str r3, [r0]
	ldr r0, [r5, #0x44]
	blx G3_MultMtx43
	add r0, sp, #0
	blx G3_MultMtx43
_02053280:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _02053328 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r4, _0205332C ; =0x0209B044
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02053314: .word 0x040004A4
_02053318: .word FX_SinCosTable_
_0205331C: .word 0x0209B04C
_02053320: .word 0x04000454
_02053324: .word 0x04000470
_02053328: .word 0x04000480
_0205332C: .word 0x0209B044
	arm_func_end sub_02052FE0

	arm_func_start sub_02053330
sub_02053330: ; 0x02053330
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _02053A00 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1]
	addeq sp, sp, #0x88
	ldr r1, [r1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _020533F8
	cmp r0, #1
	beq _02053434
	cmp r0, #2
	beq _02053450
	b _02053474
_020533F8:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _02053474
_02053434:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _02053474
_02053450:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_02053474:
	ldr r0, [r2]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020536DC
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02053518
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02053518
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_02053518:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _02053A04 ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2]
	blx G3_MultMtx43
	b _02053988
_020536DC:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _020537A0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _020537A0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_020537A0:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _02053A04 ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0]
	ldr r0, [r7, #0x40]
	ldr r1, _02053A08 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1]
	str r3, [r1]
	str r4, [r1]
	blx G3_MultMtx43
_02053988:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _02053A0C ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_02054B40
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02053A00: .word 0x040004A4
_02053A04: .word 0x04000454
_02053A08: .word 0x04000470
_02053A0C: .word 0x04000480
	arm_func_end sub_02053330

	arm_func_start sub_02053A10
sub_02053A10: ; 0x02053A10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _020540E8 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1]
	addeq sp, sp, #0x88
	ldr r1, [r1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _02053AD8
	cmp r0, #1
	beq _02053B14
	cmp r0, #2
	beq _02053B30
	b _02053B54
_02053AD8:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _02053B54
_02053B14:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _02053B54
_02053B30:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_02053B54:
	ldr r0, [r2]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _02053DBC
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02053BF8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02053BF8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_02053BF8:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _020540EC ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2]
	blx G3_MultMtx43
	b _02054068
_02053DBC:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02053E80
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02053E80
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_02053E80:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _020540EC ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0]
	ldr r0, [r7, #0x40]
	ldr r1, _020540F0 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1]
	str r3, [r1]
	str r4, [r1]
	blx G3_MultMtx43
_02054068:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	ldr r1, _020540F4 ; =0x04000480
	and r2, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, r5, #0x7c00
	mul r5, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r2, [r7, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_02054B40
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_020540E8: .word 0x040004A4
_020540EC: .word 0x04000454
_020540F0: .word 0x04000470
_020540F4: .word 0x04000480
	arm_func_end sub_02053A10

	arm_func_start sub_020540F8
sub_020540F8: ; 0x020540F8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x40
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	ldr r0, [r7, #0x3c]
	ldr r4, [r2]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	ldrsh r0, [r4, #0x30]
	movs r4, r3, asr #5
	orr r3, r1, r2, lsl #24
	ldr r1, [r7, #0x44]
	ldr r2, _02054538 ; =0x040004A4
	orr r3, r3, r4, lsl #16
	str r3, [r2]
	addeq sp, sp, #0x40
	ldr r2, [r2]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r2, [r7, #0x40]
	smull r3, r5, r4, r0
	ldr r0, [r2, #0x20]
	mov r8, #0x800
	adds r2, r3, r8
	ldr r3, [r0]
	adc sb, r5, #0
	ldr r0, [r3, #0x48]
	mov r5, r2, lsr #0xc
	mov r0, r0, lsl #1
	mov r2, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _020541C0
	cmp r0, #1
	beq _020541FC
	cmp r0, #2
	beq _02054218
	b _0205423C
_020541C0:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r2, r0, sl
	adds r0, lr, r8
	adc lr, r4, sb
	adds r2, ip, r8
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r2, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0205423C
_020541FC:
	ldrsh r0, [r6, #0x34]
	smull r2, r0, r5, r0
	adds r2, r2, r8
	adc r0, r0, sb
	mov r5, r2, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0205423C
_02054218:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r4, lr, r8
	mla ip, r2, sl, ip
	adc r0, ip, sb
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
_0205423C:
	ldr r0, [r3]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0205435C
	ldr r3, [r6, #8]
	ldr r2, [r6, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr r8, [r6, #0xc]
	ldr r3, [r6, #0x3c]
	mov r2, r0
	add r3, r8, r3
	str r3, [sp, #4]
	ldr r8, [r6, #0x10]
	ldr r3, [r6, #0x40]
	add r3, r8, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r6, #0x20]
	ldr r2, _0205453C ; =FX_SinCosTable_ ; 0x020946BC
	mov sb, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov lr, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull ip, sl, r1, r5
	str lr, [sp, #0x2c]
	rsb r8, r1, #0
	ldr r1, [sp, #8]
	smull lr, r5, r0, r5
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, lr, r3
	adc r5, r5, #0
	adds ip, ip, r3
	mov lr, r2, lsr #0xc
	orr lr, lr, r5, lsl #20
	smull r5, r2, r8, r4
	adc sl, sl, #0
	mov r8, ip, lsr #0xc
	orr r8, r8, sl, lsl #20
	adds r5, r5, r3
	smull sl, r4, r0, r4
	adc r0, r2, #0
	adds r2, sl, r3
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r3, r2, lsr #0xc
	adc r0, r4, #0
	orr r3, r3, r0, lsl #20
	ldr r2, _02054540 ; =0x04000454
	str lr, [sp, #0xc]
	add r0, sp, #0xc
	str r8, [sp, #0x10]
	str sb, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	str sb, [sp, #0x20]
	str sb, [sp, #0x24]
	str sb, [sp, #0x28]
	str r1, [sp, #0x38]
	str sb, [r2]
	blx G3_MultMtx43
	b _020544C0
_0205435C:
	ldr r8, [r6, #8]
	ldr r2, [r6, #0x38]
	ldr r0, [r3, #4]
	add r2, r8, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x3c]
	ldr r2, [r2]
	add r3, r8, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x40]
	ldr r2, [r2]
	add r8, r8, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, r8, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r6, #0x20]
	ldr r2, _0205453C ; =FX_SinCosTable_ ; 0x020946BC
	mov lr, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov sl, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull sb, r8, r1, r5
	str sl, [sp, #0x2c]
	rsb ip, r1, #0
	smull sl, r5, r0, r5
	ldr r1, [sp, #8]
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, sl, r3
	adc r5, r5, #0
	mov sl, r2, lsr #0xc
	orr sl, sl, r5, lsl #20
	str r1, [sp, #0x38]
	adds sb, sb, r3
	str sl, [sp, #0xc]
	adc sl, r8, #0
	smull r5, r2, ip, r4
	mov r8, sb, lsr #0xc
	orr r8, r8, sl, lsl #20
	smull sb, r4, r0, r4
	adds r5, r5, r3
	adc r0, r2, #0
	adds r2, sb, r3
	mov r3, r5, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r0, r4, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, _02054540 ; =0x04000454
	str r8, [sp, #0x10]
	str lr, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x24]
	str lr, [sp, #0x28]
	str lr, [r0]
	ldr r0, [r7, #0x40]
	ldr r1, _02054544 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1]
	str r3, [r1]
	str r4, [r1]
	blx G3_MultMtx43
_020544C0:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _02054548 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_02054B40
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02054538: .word 0x040004A4
_0205453C: .word FX_SinCosTable_
_02054540: .word 0x04000454
_02054544: .word 0x04000470
_02054548: .word 0x04000480
	arm_func_end sub_020540F8

	arm_func_start sub_0205454C
sub_0205454C: ; 0x0205454C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r8, r1
	ldrh r3, [r8, #0x2e]
	mov sb, r0
	ldr r1, [sb, #0x40]
	mov r0, r3, lsl #0x16
	mov r2, r3, lsl #0x1b
	mov r0, r0, lsr #0x1b
	ldr r4, [r1, #0x20]
	mov r2, r2, lsr #0x1b
	ldr r5, [r4]
	add r0, r0, #1
	mul r0, r2, r0
	movs fp, r0, asr #5
	mov r3, r3, lsl #0x10
	ldr r2, [sb, #0x3c]
	mov r6, r3, lsr #0x1a
	orr r3, r2, #0xc0
	ldr r4, [r5, #0x48]
	ldrsh r7, [r5, #0x30]
	mov r2, r4, lsl #1
	ldrh r4, [r1, #0x72]
	orr r3, r3, r6, lsl #24
	ldrsh sl, [r8, #0x34]
	ldrh r5, [r8, #0x36]
	ldr r1, [sb, #0x44]
	ldr r0, _02054984 ; =0x040004A4
	orr r3, r3, fp, lsl #16
	str r3, [r0]
	mov r2, r2, lsr #0x1d
	addeq sp, sp, #0x3c
	and r3, r2, #0xff
	ldr r0, [r0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r6, [r8, #0x30]
	mov r0, #0x800
	smull r7, r2, r6, r7
	adds r7, r7, r0
	adc r2, r2, #0
	mov r7, r7, lsr #0xc
	cmp r3, #0
	mov lr, r6, asr #0x1f
	orr r7, r7, r2, lsl #20
	mov r2, #0
	bne _02054640
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	smull r6, sl, r7, sl
	adds r6, r6, r0
	adc sl, sl, r2
	adds fp, fp, r0
	adc r0, r3, r2
	mov r7, r6, lsr #0xc
	mov r6, fp, lsr #0xc
	orr r7, r7, sl, lsl #20
	orr r6, r6, r0, lsl #20
	b _02054680
_02054640:
	cmp r3, #1
	bne _02054660
	smull sl, r3, r7, sl
	adds r7, sl, r0
	adc r0, r3, r2
	mov r7, r7, lsr #0xc
	orr r7, r7, r0, lsl #20
	b _02054680
_02054660:
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	adds r0, fp, r0
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	adc r2, r3, r2
	mov r6, r0, lsr #0xc
	orr r6, r6, r2, lsl #20
_02054680:
	ldr r0, [sb, #0x40]
	ldr r0, [r0, #0x20]
	ldr sl, [r0]
	ldr r0, [sl]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020547AC
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr sl, [r8, #0xc]
	ldr r3, [r8, #0x3c]
	mov r2, r0
	add r3, sl, r3
	str r3, [sp, #4]
	ldr sl, [r8, #0x10]
	ldr r3, [r8, #0x40]
	add r3, sl, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r8, #0x20]
	ldr r2, _02054988 ; =FX_SinCosTable_ ; 0x020946BC
	ldr ip, [sp]
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	ldr r2, [sp, #4]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	str r2, [sp, #0x34]
	mov r8, #0
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	adds r3, ip, r2
	smull sl, r6, r0, r6
	adc r0, r1, #0
	adds r1, sl, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	mov r2, r1, lsr #0xc
	adc r0, r6, #0
	orr r2, r2, r0, lsl #20
	ldr r1, _0205498C ; =0x04000454
	str fp, [sp, #0xc]
	add r0, sp, #0xc
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r1]
	blx G3_MultMtx43
	b _02054910
_020547AC:
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	ldr r0, [sl, #4]
	add r2, r3, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x3c]
	ldr r2, [r2]
	add r3, sl, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x40]
	ldr r2, [r2]
	add sl, sl, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, sl, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r8, #0x20]
	ldr r2, _02054988 ; =FX_SinCosTable_ ; 0x020946BC
	mov r8, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	ldr ip, [sp]
	ldr r2, [sp, #4]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	str r2, [sp, #0x34]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	smull sl, r6, r0, r6
	adds r3, ip, r2
	adc r0, r1, #0
	adds r1, sl, r2
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	adc r0, r6, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x1c]
	ldr r0, _0205498C ; =0x04000454
	str fp, [sp, #0xc]
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r2, [sp, #0x18]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r0]
	ldr r0, [sb, #0x40]
	ldr r1, _02054990 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2]
	ldr r6, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1]
	str r3, [r1]
	str r6, [r1]
	blx G3_MultMtx43
_02054910:
	and r1, r5, #0x1f
	and r0, r4, #0x1f
	mul r2, r1, r0
	and r1, r5, #0x3e0
	and r0, r4, #0x3e0
	mul r0, r1, r0
	and r3, r5, #0x7c00
	and r1, r4, #0x7c00
	mul r4, r3, r1
	mov r1, r2, asr #5
	mov r0, r0, asr #0xf
	mov r2, r4, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _02054994 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r2, [sb, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_02054B40
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02054984: .word 0x040004A4
_02054988: .word FX_SinCosTable_
_0205498C: .word 0x04000454
_02054990: .word 0x04000470
_02054994: .word 0x04000480
	arm_func_end sub_0205454C

	arm_func_start sub_02054998
sub_02054998: ; 0x02054998
	str r1, [r2]
	mov ip, #0
	str ip, [r2, #0xc]
	str r0, [r2, #0x18]
	str ip, [r2, #0x24]
	str ip, [r2, #4]
	mov r3, #0x1000
	str r3, [r2, #0x10]
	str ip, [r2, #0x1c]
	str ip, [r2, #0x28]
	rsb r0, r0, #0
	str r0, [r2, #8]
	str ip, [r2, #0x14]
	str r1, [r2, #0x20]
	str ip, [r2, #0x2c]
	bx lr
	arm_func_end sub_02054998

	arm_func_start sub_020549D8
sub_020549D8: ; 0x020549D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r3, _02054A7C ; =0x00000555
	rsb r7, r1, #0x1000
	ldr ip, _02054A80 ; =0x0000093D
	mov r4, #0
	umull sb, r8, r7, r3
	umull r6, r5, r0, ip
	mov lr, #0x800
	adds sb, sb, lr
	mla r8, r7, r4, r8
	mov r7, r7, asr #0x1f
	mla r8, r7, r3, r8
	adc r7, r8, #0
	mov r3, sb, lsr #0xc
	adds r6, r6, lr
	orr r3, r3, r7, lsl #20
	add r1, r3, r1
	mla r5, r0, r4, r5
	mov r0, r0, asr #0x1f
	mla r5, r0, ip, r5
	adc r0, r5, #0
	mov r5, r6, lsr #0xc
	orr r5, r5, r0, lsl #20
	str r1, [r2]
	add ip, r3, r5
	str ip, [r2, #0xc]
	sub r0, r3, r5
	str r0, [r2, #0x18]
	str r4, [r2, #0x24]
	str r0, [r2, #4]
	str r1, [r2, #0x10]
	str ip, [r2, #0x1c]
	str r4, [r2, #0x28]
	str ip, [r2, #8]
	str r0, [r2, #0x14]
	str r1, [r2, #0x20]
	str r4, [r2, #0x2c]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_02054A7C: .word 0x00000555
_02054A80: .word 0x0000093D
	arm_func_end sub_020549D8

	arm_func_start sub_02054A84
sub_02054A84: ; 0x02054A84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub r7, r2, #0x1000
	add r5, r3, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr ip, _02054B2C ; =0x04000500
	mov r8, #1
	ldr r6, _02054B30 ; =0x000003FF
	mov r2, r7, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _02054B34 ; =0x04000488
	str r8, [ip]
	mov ip, #0
	and r2, r6, r2, asr #22
	and r7, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _02054B38 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #20
	str r5, [r6]
	str r1, [r3]
	orr r5, lr, r7, lsl #20
	str r5, [r6]
	orr r1, r1, r0, lsl #16
	str r1, [r3]
	orr r1, lr, r4, lsl #20
	str r1, [r6]
	mov r0, r0, lsl #0x10
	str r0, [r3]
	orr r1, r2, r4, lsl #20
	ldr r0, _02054B3C ; =0x04000504
	str r1, [r6]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02054B2C: .word 0x04000500
_02054B30: .word 0x000003FF
_02054B34: .word 0x04000488
_02054B38: .word 0x04000490
_02054B3C: .word 0x04000504
	arm_func_end sub_02054A84

	arm_func_start sub_02054B40
sub_02054B40: ; 0x02054B40
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	add ip, r3, #0x1000
	sub r5, r2, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr r7, _02054BE8 ; =0x04000500
	mov r8, #1
	ldr r6, _02054BEC ; =0x000003FF
	mov r2, ip, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _02054BF0 ; =0x04000488
	str r8, [r7]
	mov ip, #0
	and r7, r6, r2, asr #22
	and r2, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _02054BF4 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #10
	str r5, [r6]
	str r1, [r3]
	orr r5, lr, r7, lsl #10
	str r5, [r6]
	orr r1, r1, r0, lsl #16
	str r1, [r3]
	orr r1, lr, r4, lsl #10
	str r1, [r6]
	mov r0, r0, lsl #0x10
	str r0, [r3]
	orr r1, r2, r4, lsl #10
	ldr r0, _02054BF8 ; =0x04000504
	str r1, [r6]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02054BE8: .word 0x04000500
_02054BEC: .word 0x000003FF
_02054BF0: .word 0x04000488
_02054BF4: .word 0x04000490
_02054BF8: .word 0x04000504
	arm_func_end sub_02054B40

	arm_func_start sub_02054BFC
sub_02054BFC: ; 0x02054BFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r3, [r1, #0x20]
	str r1, [sp]
	ldr r6, [r3, #0x14]
	mov r8, r0
	ldrb r3, [r6, #8]
	ldrb r0, [r6, #0xc]
	str r2, [sp, #4]
	mov r3, r3, lsl #0xc
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #4
	mov r1, #0x800
	mov r4, r3, lsl #4
	adds r4, r4, r1
	orr r2, r2, r3, lsr #28
	adc r1, r2, #0
	mov r5, r4, lsr #0xc
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	orr r5, r5, r1, lsl #20
	addle sp, sp, #0x24
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	ldr sb, _02054F0C ; =0x02141954
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #0x1000
	mov r4, r5, asr #0x1f
	str r0, [sp, #0x10]
_02054C80:
	ldr r0, [sp, #4]
	bl sub_020568F8
	movs r7, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp]
	mov r1, r7
	add r0, r0, #0x14
	bl sub_02056944
	add r0, r7, #0x38
	add r1, r8, #8
	str r0, [sp, #0xc]
	add sl, r7, #8
	ldmia r1, {r0, r1, r2}
	stmia sl, {r0, r1, r2}
	ldr sl, [r8, #0x14]
	ldr ip, [sb]
	ldr r1, _02054F10 ; =0x5EEDF715
	ldr r0, _02054F14 ; =0x1B0CB173
	mov r2, sl, asr #0x1f
	mla r0, ip, r1, r0
	str r0, [sb]
	umull lr, ip, sl, r5
	mla ip, sl, r4, ip
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	mla ip, r2, r5, ip
	mul r0, r1, r0
	mov r3, #0x800
	adds r2, lr, r3
	sub r0, r0, r1, lsl #8
	adc sl, ip, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, sl, lsl #20
	add r0, r2, r0, asr #8
	str r0, [r7, #0x14]
	ldr sl, [r8, #0x18]
	ldr ip, [sb]
	ldr r1, _02054F10 ; =0x5EEDF715
	ldr r0, _02054F14 ; =0x1B0CB173
	mov r2, sl, asr #0x1f
	mla r0, ip, r1, r0
	str r0, [sb]
	umull lr, ip, sl, r5
	mla ip, sl, r4, ip
	mla ip, r2, r5, ip
	adds r2, lr, r3
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	adc sl, ip, #0
	mul r0, r1, r0
	mov r2, r2, lsr #0xc
	sub r0, r0, r1, lsl #8
	orr r2, r2, sl, lsl #20
	add r0, r2, r0, asr #8
	str r0, [r7, #0x18]
	ldr ip, [r8, #0x1c]
	ldr sl, [sb]
	ldr r1, _02054F10 ; =0x5EEDF715
	ldr r0, _02054F14 ; =0x1B0CB173
	mov r2, ip, asr #0x1f
	mla r0, sl, r1, r0
	umull sl, lr, ip, r5
	str r0, [sb]
	mla lr, ip, r4, lr
	adds r3, sl, r3
	mla lr, r2, r5, lr
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	adc r2, lr, #0
	mul r0, r1, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r0, r0, r1, lsl #8
	add r0, r3, r0, asr #8
	ldr r3, [sp, #0xc]
	add fp, r8, #0x38
	str r0, [r7, #0x1c]
	ldmia fp, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrb r0, [r6, #9]
	ldrsh r1, [r8, #0x34]
	ldr r2, [r8, #0x30]
	add r0, r0, #1
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	mul r0, r1, r0
	mov r0, r0, asr #6
	str r0, [r7, #0x30]
	ldr r0, [sp, #0x10]
	strh r0, [r7, #0x34]
	ldrh r0, [r6]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	ldrneh r0, [r6, #0xa]
	strneh r0, [r7, #0x36]
	ldreqh r0, [r8, #0x36]
	streqh r0, [r7, #0x36]
	ldrh r1, [r8, #0x2e]
	ldrh r0, [r7, #0x2e]
	mov r2, r1, lsl #0x1b
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r1, r1, #1
	mul r1, r2, r1
	mov r1, r1, lsl #0xb
	mov r1, r1, lsr #0x10
	bic r0, r0, #0x1f
	and r1, r1, #0x1f
	orr r0, r0, r1
	strh r0, [r7, #0x2e]
	ldrh r0, [r7, #0x2e]
	bic r0, r0, #0x3e0
	orr r0, r0, #0x3e0
	strh r0, [r7, #0x2e]
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1e
	beq _02054E84
	cmp r0, #1
	beq _02054E94
	cmp r0, #2
	ldreqh r0, [r8, #0x20]
	streqh r0, [r7, #0x20]
	ldreqsh r0, [r8, #0x22]
	streqh r0, [r7, #0x22]
	b _02054EA4
_02054E84:
	ldr r0, [sp, #0x14]
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x22]
	b _02054EA4
_02054E94:
	ldrh r0, [r8, #0x20]
	strh r0, [r7, #0x20]
	ldr r0, [sp, #0x18]
	strh r0, [r7, #0x22]
_02054EA4:
	ldrh r1, [r6, #6]
	ldr r0, _02054F18 ; =0x0000FFFF
	strh r1, [r7, #0x24]
	ldr r1, [sp, #0x1c]
	strh r1, [r7, #0x26]
	ldrb r1, [r6, #0xf]
	strb r1, [r7, #0x2c]
	ldrh r1, [r8, #0x24]
	mov r1, r1, lsr #1
	bl sub_0208D65C
	strh r0, [r7, #0x28]
	ldrh r1, [r8, #0x24]
	ldr r0, _02054F18 ; =0x0000FFFF
	bl sub_0208D65C
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0x20]
	strb r0, [r7, #0x2d]
	ldr r0, [sp, #8]
	ldrb r1, [r6, #0xc]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _02054C80
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02054F0C: .word 0x02141954
_02054F10: .word 0x5EEDF715
_02054F14: .word 0x1B0CB173
_02054F18: .word 0x0000FFFF
	arm_func_end sub_02054BFC

	arm_func_start sub_02054F1C
sub_02054F1C: ; 0x02054F1C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov sb, r0
	ldr r0, [sb, #0x20]
	ldrsh r3, [sb, #0x4e]
	str r0, [sp, #4]
	ldr r0, [sb, #0x58]
	ldr r2, _02055C28 ; =0x00000FFF
	add r3, r0, r3
	ldr r0, [sp, #4]
	str r1, [sp]
	ldr r8, [r0]
	and r0, r3, r2
	strh r0, [sb, #0x4e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r1, r0, lsr #0x1c
	mov r0, r3, asr #0xc
	cmp r1, #2
	str r0, [sp, #0xc]
	beq _02054F84
	cmp r1, #3
	beq _02054F84
	sub r0, r1, #5
	cmp r0, #4
	bhi _02054F8C
_02054F84:
	mov r0, sb
	bl sub_02055DA8
_02054F8C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	addle sp, sp, #0xc4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0x1000
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	ldr r6, _02055C2C ; =0x02141954
	ldr r4, _02055C30 ; =0x5EEDF715
	ldr r5, _02055C34 ; =0x1B0CB173
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
_02054FDC:
	ldr r0, [sp]
	bl sub_020568F8
	movs r7, r0
	addeq sp, sp, #0xc4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	add r0, sb, #8
	mov r1, r7
	bl sub_02056944
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0205571C
_02055018: ; jump table
	b _02055040 ; case 0
	b _0205505C ; case 1
	b _020550CC ; case 2
	b _02055134 ; case 3
	b _020551C8 ; case 4
	b _020552C8 ; case 5
	b _020555C0 ; case 6
	b _02055644 ; case 7
	b _02055384 ; case 8
	b _02055454 ; case 9
_02055040:
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	str r0, [r7, #8]
	b _0205571C
_0205505C:
	add r0, r7, #8
	bl sub_020569F0
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _0205571C
_020550CC:
	add r0, sp, #0x58
	bl sub_02056994
	ldr r2, [sp, #0x58]
	ldr r0, [sb, #0x5c]
	mov r1, #0x800
	smull r3, r0, r2, r0
	adds r2, r3, r1
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x20]
	str r2, [sp, #0x5c]
	str r1, [sp, #0x60]
	add r1, sp, #0x58
	mov r2, sb
	bl sub_02055C48
	b _0205571C
_02055134:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	bl sub_0208D65C
	ldr r1, [sp, #0x18]
	mov r0, r0, asr #4
	add r1, r1, #0x10000
	mov r2, r0, lsl #1
	str r1, [sp, #0x18]
	ldr r0, _02055C38 ; =FX_SinCosTable_ ; 0x020946BC
	mov r1, r2, lsl #1
	ldrsh r0, [r0, r1]
	add r1, r2, #1
	mov r2, r1, lsl #1
	ldr r1, _02055C38 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r3, [r1, r2]
	ldr r2, [sb, #0x5c]
	mov r1, #0x800
	smull sl, r2, r0, r2
	adds sl, sl, r1
	adc r0, r2, #0
	mov r2, sl, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x64]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x24]
	str r2, [sp, #0x68]
	str r1, [sp, #0x6c]
	add r1, sp, #0x64
	mov r2, sb
	bl sub_02055C48
	b _0205571C
_020551C8:
	add r0, r7, #8
	bl sub_020569F0
	ldr r1, [r6]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6]
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6]
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _0205571C
_020552C8:
	add r0, sp, #0x70
	bl sub_02056994
	ldr r0, [r6]
	ldr r3, [sp, #0x70]
	mla r1, r0, r4, r5
	str r1, [r6]
	ldr r0, [sb, #0x5c]
	mov r2, #0x800
	smull sl, r0, r3, r0
	adds sl, sl, r2
	adc r3, r0, #0
	mov r0, sl, lsr #0xc
	orr r0, r0, r3, lsl #20
	mov r3, r1, lsr #0x17
	mov r3, r3, lsl #0xc
	sub r3, r3, #0x100000
	mov r3, r3, asr #8
	smull sl, r3, r0, r3
	adds sl, sl, r2
	adc r0, r3, #0
	mov r3, sl, lsr #0xc
	orr r3, r3, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6]
	str r3, [sp, #0x70]
	mov r0, r0, lsr #0x17
	mov r0, r0, lsl #0xc
	sub r0, r0, #0x100000
	mov r1, r0, asr #8
	ldr sl, [sp, #0x74]
	ldr r3, [sb, #0x5c]
	add r0, r7, #8
	smull fp, r3, sl, r3
	adds sl, fp, r2
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	smull r3, r1, sl, r1
	adds r2, r3, r2
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x74]
	add r1, sp, #0x70
	mov r2, sb
	bl sub_02055C48
	b _0205571C
_02055384:
	add r0, r7, #8
	bl sub_020569F0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x44
	bl VEC_Fx16CrossProduct
	ldrsh r1, [sp, #0x46]
	ldrsh r0, [sp, #0x48]
	ldrsh r2, [sp, #0x44]
	str r1, [sp, #0x80]
	str r0, [sp, #0x84]
	add r0, sp, #0x7c
	add r1, r7, #8
	str r2, [sp, #0x7c]
	bl VEC_DotProduct
	cmp r0, #0
	bgt _020553EC
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020553EC:
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _0205571C
_02055454:
	add r0, r7, #8
	bl sub_020569F0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x4a
	bl VEC_Fx16CrossProduct
	ldrsh r1, [sp, #0x4c]
	ldrsh r0, [sp, #0x4e]
	ldrsh r2, [sp, #0x4a]
	str r1, [sp, #0x8c]
	str r0, [sp, #0x90]
	add r0, sp, #0x88
	add r1, r7, #8
	str r2, [sp, #0x88]
	bl VEC_DotProduct
	cmp r0, #0
	bge _020554BC
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020554BC:
	ldr r1, [r6]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6]
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6]
	mla r2, r1, r4, r5
	str r2, [r6]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _0205571C
_020555C0:
	add r0, r7, #0x14
	bl sub_02056994
	ldr r2, [r7, #0x14]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x94]
	ldr r3, [r7, #0x18]
	ldr r2, [sb, #0x5c]
	ldr r1, [r6]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6]
	str r2, [sp, #0x98]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0x9c]
	add r1, sp, #0x94
	mov r2, sb
	bl sub_02055C48
	b _0205571C
_02055644:
	add r0, r7, #0x14
	bl sub_02056994
	ldr r0, [r6]
	mov r3, #0x800
	mla r2, r0, r4, r5
	str r2, [r6]
	ldr sl, [r7, #0x14]
	ldr r0, [sb, #0x5c]
	mov r1, r2, lsr #0x17
	smull fp, r0, sl, r0
	adds fp, fp, r3
	mov r1, r1, lsl #0xc
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	sub r1, r1, #0x100000
	orr r0, r0, sl, lsl #20
	mov r1, r1, asr #8
	smull sl, r1, r0, r1
	adds sl, sl, r3
	adc r0, r1, #0
	mov r1, sl, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0xa0]
	mla r1, r2, r4, r5
	str r1, [r6]
	mov r2, r1, lsr #0x17
	mov r2, r2, lsl #0xc
	sub r2, r2, #0x100000
	ldr sl, [r7, #0x18]
	ldr r0, [sb, #0x5c]
	mov r2, r2, asr #8
	smull fp, r0, sl, r0
	adds fp, fp, r3
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	orr r0, r0, sl, lsl #20
	smull sl, r2, r0, r2
	adds r3, sl, r3
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6]
	str r2, [sp, #0xa4]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0xa8]
	add r1, sp, #0xa0
	mov r2, sb
	bl sub_02055C48
_0205571C:
	ldr r1, [r6]
	mla r0, r1, r4, r5
	str r0, [r6]
	ldrb r2, [r8, #0x42]
	mov r1, r0, lsr #0x18
	ldr r3, [sb, #0x64]
	mul r1, r2, r1
	add r2, r2, #0xff
	sub r1, r2, r1, asr #7
	mul r1, r3, r1
	mov r1, r1, asr #8
	str r1, [sp, #0x10]
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x18
	ldrb r2, [r8, #0x42]
	ldr r3, [sb, #0x68]
	ldr r1, [r8]
	mul r0, r2, r0
	add r2, r2, #0xff
	sub r0, r2, r0, asr #7
	mul r0, r3, r0
	mov r0, r0, asr #8
	str r0, [sp, #0x14]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #6
	bne _02055868
	ldrsh r0, [sb, #0x84]
	ldr r1, [r7, #0x14]
	mov r2, #0x800
	smull r3, r0, r1, r0
	adds r1, r3, r2
	ldrsh r3, [sb, #0x8a]
	ldr lr, [r7, #0x18]
	mov ip, r1, lsr #0xc
	smull sl, r3, lr, r3
	adc r0, r0, #0
	adds sl, sl, r2
	orr ip, ip, r0, lsl #20
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r3, ip, sl
	str r3, [sp, #0xb8]
	ldrsh sl, [sb, #0x86]
	ldr r3, [r7, #0x14]
	ldrsh lr, [sb, #0x8c]
	smull ip, sl, r3, sl
	adds ip, ip, r2
	ldr fp, [r7, #0x18]
	adc sl, sl, #0
	smull r3, lr, fp, lr
	mov ip, ip, lsr #0xc
	adds r3, r3, r2
	orr ip, ip, sl, lsl #20
	adc sl, lr, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, sl, lsl #20
	add r3, ip, r3
	str r3, [sp, #0xbc]
	ldr sl, [r7, #0x18]
	ldrsh fp, [sb, #0x88]
	ldr r3, [r7, #0x14]
	str sl, [sp, #0x28]
	smull ip, fp, r3, fp
	ldrsh sl, [sb, #0x8e]
	ldr r3, [sp, #0x28]
	adds ip, ip, r2
	smull sl, lr, r3, sl
	adc r3, fp, #0
	adds r2, sl, r2
	mov sl, ip, lsr #0xc
	orr sl, sl, r3, lsl #20
	adc r3, lr, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r2, sl, r2
	add r0, sp, #0xb8
	add r1, sp, #0xac
	str r2, [sp, #0xc0]
	bl VEC_Normalize
	b _020558A4
_02055868:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _02055898
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _02055898
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02055898
	add r0, sp, #0xac
	bl sub_020569F0
	b _020558A4
_02055898:
	add r0, r7, #8
	add r1, sp, #0xac
	bl VEC_Normalize
_020558A4:
	ldr r2, [sp, #0xac]
	ldr r1, [sp, #0x10]
	mov r0, #0x800
	smull sl, r1, r2, r1
	adds r2, sl, r0
	add sl, sb, #0x28
	str sl, [sp, #0x2c]
	add sl, r7, #0x38
	str sl, [sp, #0x30]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldrsh r1, [sb, #0x50]
	ldr sl, [sp, #0x14]
	ldr r3, [sb, #0x40]
	smull fp, sl, r1, sl
	adds fp, fp, r0
	adc r1, sl, #0
	mov sl, fp, lsr #0xc
	orr sl, sl, r1, lsl #20
	add r1, r2, sl
	add r1, r3, r1
	str r1, [r7, #0x14]
	ldr r3, [sp, #0xb0]
	ldr r1, [sp, #0x10]
	ldrsh sl, [sb, #0x52]
	smull fp, r1, r3, r1
	adds fp, fp, r0
	adc r3, r1, #0
	mov r1, fp, lsr #0xc
	orr r1, r1, r3, lsl #20
	ldr r3, [sp, #0x14]
	ldr r2, [sb, #0x44]
	smull fp, r3, sl, r3
	adds sl, fp, r0
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r1, r1, sl
	add r1, r2, r1
	str r1, [r7, #0x18]
	ldr r1, [sp, #0xb4]
	ldr r2, [sp, #0x10]
	ldrsh lr, [sb, #0x54]
	smull sl, r3, r1, r2
	ldr r1, [sp, #0x14]
	adds sl, sl, r0
	smull r2, r1, lr, r1
	adc r3, r3, #0
	adds r0, r2, r0
	mov r2, sl, lsr #0xc
	orr r2, r2, r3, lsl #20
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr ip, [sb, #0x48]
	add r0, r2, r0
	add r0, ip, r0
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r6]
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x40]
	ldr r2, [sb, #0x6c]
	mul r0, r1, r0
	add r1, r1, #0xff
	sub r0, r1, r0, asr #7
	mul r0, r2, r0
	mov r0, r0, asr #8
	str r0, [r7, #0x30]
	ldr r0, [sp, #0x34]
	strh r0, [r7, #0x34]
	ldr r0, [r8]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _02055A5C
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _02055A5C
	ldr r0, [r6]
	ldr r3, _02055C3C ; =0x00000003
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr r2, [r1, #8]
	ldr r1, _02055C40 ; =0xAAAAAAAB
	umull r1, sl, r0, r1
	mov sl, sl, lsr #1
	umull sl, fp, r3, sl
	ldrh r1, [r2]
	sub sl, r0, sl
	strh r1, [sp, #0x50]
	ldrh r0, [r8, #0x22]
	mov r1, sl, lsl #1
	strh r0, [sp, #0x52]
	ldrh r0, [r2, #2]
	strh r0, [sp, #0x54]
	add r0, sp, #0x50
	ldrh r0, [r0, r1]
	strh r0, [r7, #0x36]
	b _02055A64
_02055A5C:
	ldrh r0, [r8, #0x22]
	strh r0, [r7, #0x36]
_02055A64:
	ldrh r1, [r7, #0x2e]
	ldrb r0, [sb, #0x81]
	bic r1, r1, #0x1f
	and r0, r0, #0x1f
	orr r0, r1, r0
	strh r0, [r7, #0x2e]
	ldrh r0, [r7, #0x2e]
	bic r0, r0, #0x3e0
	orr r0, r0, #0x3e0
	strh r0, [r7, #0x2e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	strneh r1, [r7, #0x20]
	ldreqh r0, [sb, #0x56]
	streqh r0, [r7, #0x20]
	ldr r0, [r8]
	mov r0, r0, lsl #0x13
	movs r0, r0, lsr #0x1f
	ldreq r0, [sp, #0x38]
	streqh r0, [r7, #0x22]
	beq _02055AF4
	ldr r0, [r6]
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x14
	ldrsh r2, [r8, #0x34]
	ldrsh r1, [r8, #0x36]
	sub r1, r1, r2
	mul r0, r1, r0
	add r0, r0, r2, lsl #12
	mov r0, r0, lsr #0xc
	strh r0, [r7, #0x22]
_02055AF4:
	ldr r0, [r6]
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x41]
	ldrh r2, [sb, #0x70]
	mul r0, r1, r0
	mov r0, r0, asr #8
	rsb r0, r0, #0xff
	mul r0, r2, r0
	mov r0, r0, asr #8
	add r0, r0, #1
	strh r0, [r7, #0x24]
	ldr r0, [sp, #0x3c]
	strh r0, [r7, #0x26]
	ldr r0, [r8]
	mov r0, r0, lsl #0x14
	movs r1, r0, lsr #0x1f
	beq _02055B84
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _02055B84
	ldr r0, [r6]
	mla r1, r0, r4, r5
	str r1, [r6]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr sl, [r1, #0x10]
	ldrb r1, [sl, #8]
	bl sub_0208D868
	ldrb r0, [sl, r1]
	strb r0, [r7, #0x2c]
	b _02055BB4
_02055B84:
	cmp r1, #0
	beq _02055BAC
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r1, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	ldreqb r0, [r1]
	streqb r0, [r7, #0x2c]
	beq _02055BB4
_02055BAC:
	ldrb r0, [r8, #0x47]
	strb r0, [r7, #0x2c]
_02055BB4:
	ldr r1, [sp, #4]
	ldr r0, _02055C44 ; =0x0000FFFF
	ldr r1, [r1]
	ldrb r1, [r1, #0x48]
	bl sub_0208D65C
	strh r0, [r7, #0x28]
	ldrh r1, [r7, #0x24]
	ldr r0, _02055C44 ; =0x0000FFFF
	bl sub_0208D65C
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0x40]
	strb r0, [r7, #0x2d]
	ldr r0, [r8]
	mov r0, r0, lsl #0xb
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	movne r0, r1, lsr #0x18
	strneb r0, [r7, #0x2d]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02054FDC
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02055C28: .word 0x00000FFF
_02055C2C: .word 0x02141954
_02055C30: .word 0x5EEDF715
_02055C34: .word 0x1B0CB173
_02055C38: .word FX_SinCosTable_
_02055C3C: .word 0x00000003
_02055C40: .word 0xAAAAAAAB
_02055C44: .word 0x0000FFFF
	arm_func_end sub_02054F1C

	arm_func_start sub_02055C48
sub_02055C48: ; 0x02055C48
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r6, r0
	mov r5, r1
	add r2, sp, #0
	add r0, r4, #0x84
	add r1, r4, #0x8a
	bl VEC_Fx16CrossProduct
	add r0, sp, #0
	mov r1, r0
	bl VEC_Fx16Normalize
	ldrsh r1, [sp]
	ldr lr, [r5, #8]
	ldrsh r0, [r4, #0x84]
	ldr ip, [r5]
	smull r3, r2, lr, r1
	smull r1, r0, ip, r0
	ldrsh r7, [r4, #0x8a]
	ldr r8, [r5, #4]
	mov ip, #0x800
	smull lr, r7, r8, r7
	adds r8, r3, ip
	adc r3, r2, #0
	mov r2, r8, lsr #0xc
	adds r1, r1, ip
	orr r2, r2, r3, lsl #20
	adc r0, r0, #0
	mov r3, r1, lsr #0xc
	adds r1, lr, ip
	orr r3, r3, r0, lsl #20
	adc r0, r7, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	add r0, r2, r0
	str r0, [r6]
	ldrsh r0, [sp, #2]
	ldr r1, [r5, #8]
	ldrsh r3, [r4, #0x86]
	smull r2, r0, r1, r0
	adds r2, r2, ip
	ldr lr, [r5]
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	smull r8, r7, lr, r3
	ldrsh r1, [r4, #0x8c]
	ldr r2, [r5, #4]
	adds r8, r8, ip
	smull r3, r1, r2, r1
	adc r2, r7, #0
	mov r7, r8, lsr #0xc
	orr r7, r7, r2, lsl #20
	adds r2, r3, ip
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r7, r2
	add r0, r0, r1
	str r0, [r6, #4]
	ldrsh r0, [sp, #4]
	ldr r1, [r5, #8]
	ldr lr, [r5]
	smull r3, r0, r1, r0
	adds r3, r3, ip
	adc r1, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldrsh r3, [r4, #0x88]
	ldrsh r1, [r4, #0x8e]
	ldr r2, [r5, #4]
	smull r5, r4, lr, r3
	adds r5, r5, ip
	smull r3, r1, r2, r1
	adc r4, r4, #0
	adds r2, r3, ip
	mov r3, r5, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r4, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	add r0, r0, r1
	str r0, [r6, #8]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end sub_02055C48

	arm_func_start sub_02055DA8
sub_02055DA8: ; 0x02055DA8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r1, _0205602C ; =0x0209B054
	mov r4, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	ldrh r0, [r1, #4]
	strh r3, [sp]
	strh r2, [sp, #2]
	strh r0, [sp, #4]
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	ldr r0, [r0]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1e
	beq _02055E28
	cmp r0, #1
	beq _02055E10
	cmp r0, #2
	bne _02055E40
	mov r0, #0
	mov r1, #0x1000
	strh r1, [sp, #6]
	strh r0, [sp, #8]
	strh r0, [sp, #0xa]
	b _02055E4C
_02055E10:
	mov r1, #0
	mov r0, #0x1000
	strh r1, [sp, #6]
	strh r0, [sp, #8]
	strh r1, [sp, #0xa]
	b _02055E4C
_02055E28:
	mov r1, #0
	mov r0, #0x1000
	strh r1, [sp, #6]
	strh r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _02055E4C
_02055E40:
	add r1, sp, #6
	add r0, r4, #0x50
	bl VEC_Fx16Normalize
_02055E4C:
	add r0, sp, #0
	add r1, sp, #6
	bl VEC_Fx16DotProduct
	cmp r0, #0x1000
	beq _02055E70
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	bne _02055E84
_02055E70:
	mov r0, #0
	mov r1, #0x1000
	strh r1, [sp]
	strh r0, [sp, #2]
	strh r0, [sp, #4]
_02055E84:
	ldrsh r3, [sp, #8]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #0xa]
	ldrsh r0, [sp, #2]
	smull r6, r5, r3, r1
	mov r1, #0x800
	adds r6, r6, r1
	smull r3, r0, r2, r0
	adc r5, r5, #0
	adds r2, r3, r1
	mov r3, r6, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x84]
	ldrsh r5, [sp, #0xa]
	ldrsh r3, [sp]
	ldrsh r2, [sp, #6]
	ldrsh r0, [sp, #4]
	smull r3, r6, r5, r3
	adds ip, r3, r1
	smull r3, r0, r2, r0
	adc r5, r6, #0
	adds r2, r3, r1
	mov r3, ip, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x86]
	ldrsh r5, [sp, #6]
	ldrsh r3, [sp, #2]
	ldrsh r2, [sp, #8]
	ldrsh r0, [sp]
	smull r3, r6, r5, r3
	adds ip, r3, r1
	smull r3, r0, r2, r0
	adc r5, r6, #0
	adds r2, r3, r1
	mov r3, ip, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x88]
	ldrsh r6, [sp, #8]
	ldrsh r5, [r4, #0x88]
	add r0, r4, #0x84
	ldrsh r3, [sp, #0xa]
	ldrsh r2, [r4, #0x86]
	smull r5, ip, r6, r5
	adds lr, r5, r1
	smull r5, r2, r3, r2
	adc r6, ip, #0
	adds r3, r5, r1
	mov r5, lr, lsr #0xc
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r5, r5, r6, lsl #20
	orr r3, r3, r2, lsl #20
	sub r2, r5, r3
	strh r2, [r4, #0x8a]
	ldrsh r6, [sp, #0xa]
	ldrsh r5, [r4, #0x84]
	ldrsh r3, [sp, #6]
	ldrsh r2, [r4, #0x88]
	smull lr, ip, r6, r5
	smull r5, r2, r3, r2
	adds r6, lr, r1
	adc r3, ip, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r3, lsl #20
	adds r3, r5, r1
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r2, r6, r3
	strh r2, [r4, #0x8c]
	ldrsh lr, [sp, #6]
	ldrsh ip, [r4, #0x86]
	ldrsh r3, [sp, #8]
	ldrsh r2, [r4, #0x84]
	smull r6, r5, lr, ip
	smull ip, r2, r3, r2
	adds r6, r6, r1
	adc r5, r5, #0
	adds r3, ip, r1
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r1, r6, r2
	strh r1, [r4, #0x8e]
	mov r1, r0
	bl VEC_Fx16Normalize
	add r0, r4, #0x8a
	mov r1, r0
	bl VEC_Fx16Normalize
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0205602C: .word 0x0209B054
	arm_func_end sub_02055DA8

	arm_func_start sub_02056030
sub_02056030: ; 0x02056030
	stmdb sp!, {lr}
	sub sp, sp, #4
	rsb r2, r2, #0xff
	mov r1, #0x1f
	mul r3, r2, r1
	ldr r2, _02056084 ; =0x80808081
	ldrh lr, [r0, #0x2e]
	smull r1, ip, r2, r3
	add ip, r3, ip
	mov ip, ip, asr #7
	mov r1, r3, lsr #0x1f
	add ip, r1, ip
	mov r1, ip, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, lr, #0x3e0
	and r1, r1, #0x1f
	orr r1, r2, r1, lsl #5
	strh r1, [r0, #0x2e]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02056084: .word 0x80808081
	arm_func_end sub_02056030

	arm_func_start sub_02056088
sub_02056088: ; 0x02056088
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r1, #0x14]
	sub r1, r2, #0xff
	ldrsh lr, [r3, #4]
	ldr r2, _020560D0 ; =0x80808081
	sub r3, lr, #0x1000
	mul ip, r3, r1
	smull r1, r3, r2, ip
	add r3, ip, r3
	mov r3, r3, asr #7
	mov r1, ip, lsr #0x1f
	add r3, r1, r3
	add r1, lr, r3
	strh r1, [r0, #0x34]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_020560D0: .word 0x80808081
	arm_func_end sub_02056088

	arm_func_start sub_020560D4
sub_020560D4: ; 0x020560D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r5, [r1, #0x10]
	mov r4, #0
	ldrb r3, [r5, #8]
	cmp r3, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, lr}
	bxle lr
	ldrb ip, [r5, #9]
	mov lr, r4
_02056100:
	add r1, lr, ip
	cmp r2, r1
	ldrltb r1, [r5, r4]
	addlt sp, sp, #4
	strltb r1, [r0, #0x2c]
	ldmltia sp!, {r4, r5, lr}
	bxlt lr
	add r4, r4, #1
	cmp r4, r3
	add lr, lr, ip
	blt _02056100
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020560D4

	arm_func_start sub_02056138
sub_02056138: ; 0x02056138
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, [r1, #0xc]
	mov r5, r0
	ldrb r1, [r4, #4]
	ldrb r3, [r4, #5]
	cmp r2, r1
	bge _02056178
	ldrh r3, [r4]
	mov r0, r3, lsl #0x16
	mov r6, r3, lsl #0x1b
	mov r0, r0, lsr #0x1b
	sub r0, r0, r6, lsr #27
	mul r0, r2, r0
	bl sub_0208D65C
	add r0, r0, r6, lsr #27
	b _020561B4
_02056178:
	cmp r2, r3
	ldrlth r0, [r4]
	movlt r0, r0, lsl #0x16
	movlt r0, r0, lsr #0x1b
	blt _020561B4
	ldrh r0, [r4]
	sub r2, r2, #0xff
	rsb r1, r3, #0xff
	mov r6, r0, lsl #0x11
	mov r3, r6, lsr #0x1b
	mov r0, r0, lsl #0x16
	sub r0, r3, r0, lsr #27
	mul r0, r2, r0
	bl sub_0208D65C
	add r0, r0, r6, lsr #27
_020561B4:
	ldr r3, _02056208 ; =0x02141954
	ldr r1, _0205620C ; =0x5EEDF715
	ldr ip, [r3]
	ldr r2, _02056210 ; =0x1B0CB173
	mla r1, ip, r1, r2
	str r1, [r3]
	ldrb r2, [r4, #2]
	mov r1, r1, lsr #0x18
	ldrh r3, [r5, #0x2e]
	mul r1, r2, r1
	mov r1, r1, asr #8
	rsb r1, r1, #0xff
	mul r1, r0, r1
	mov r0, r1, lsl #8
	mov r0, r0, lsr #0x10
	bic r1, r3, #0x3e0
	and r0, r0, #0x1f
	orr r0, r1, r0, lsl #5
	strh r0, [r5, #0x2e]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02056208: .word 0x02141954
_0205620C: .word 0x5EEDF715
_02056210: .word 0x1B0CB173
	arm_func_end sub_02056138

	arm_func_start sub_02056214
sub_02056214: ; 0x02056214
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r4, [r1, #8]
	mov sl, r0
	ldrb r3, [r4, #4]
	ldr r0, [r1]
	ldrb r1, [r4, #5]
	cmp r2, r3
	ldrb fp, [r4, #6]
	ldrlth r0, [r4]
	addlt sp, sp, #4
	strlth r0, [sl, #0x36]
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxlt lr
	cmp r2, r1
	bge _0205630C
	ldrh sb, [r0, #0x22]
	ldrh r0, [r4, #8]
	ldrh r8, [r4]
	mov r7, sb, asr #5
	mov fp, sb, asr #0xa
	mov r4, r0, lsl #0x1d
	mov r6, r8, asr #5
	mov r5, r8, asr #0xa
	movs r4, r4, lsr #0x1f
	and sb, sb, #0x1f
	and r7, r7, #0x1f
	and r0, fp, #0x1f
	orreq r1, sb, r7, lsl #5
	orreq r0, r1, r0, lsl #10
	and r8, r8, #0x1f
	and r6, r6, #0x1f
	and r5, r5, #0x1f
	addeq sp, sp, #4
	streqh r0, [sl, #0x36]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	sub r4, r2, r3
	sub r0, r0, r5
	mul r0, r4, r0
	sub fp, r1, r3
	mov r1, fp
	bl sub_0208D65C
	sub r1, sb, r8
	mov sb, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_0208D65C
	sub r1, r7, r6
	mov r7, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_0208D65C
	add r1, r8, r7
	add r0, r6, r0
	add r2, r5, sb
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	add sp, sp, #4
	strh r0, [sl, #0x36]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0205630C:
	cmp r2, fp
	bge _020563CC
	ldrh r7, [r4, #2]
	ldrh r8, [r0, #0x22]
	ldrh r0, [r4, #8]
	mov r5, r7, asr #5
	mov r4, r7, asr #0xa
	mov r3, r0, lsl #0x1d
	mov r6, r8, asr #5
	mov sb, r8, asr #0xa
	movs r3, r3, lsr #0x1f
	and r7, r7, #0x1f
	and r5, r5, #0x1f
	and r0, r4, #0x1f
	orreq r1, r7, r5, lsl #5
	orreq r0, r1, r0, lsl #10
	and r8, r8, #0x1f
	and r6, r6, #0x1f
	and sb, sb, #0x1f
	addeq sp, sp, #4
	streqh r0, [sl, #0x36]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	sub r4, r2, r1
	sub r0, r0, sb
	mul r0, r4, r0
	sub fp, fp, r1
	mov r1, fp
	bl sub_0208D65C
	sub r1, r7, r8
	mov r7, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_0208D65C
	sub r1, r5, r6
	mov r5, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_0208D65C
	add r1, r8, r5
	add r0, r6, r0
	add r2, sb, r7
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	add sp, sp, #4
	strh r0, [sl, #0x36]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_020563CC:
	ldrh r0, [r4, #2]
	strh r0, [sl, #0x36]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_02056214

	arm_func_start sub_020563E0
sub_020563E0: ; 0x020563E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr ip, [r1, #4]
	mov r4, r0
	ldrb r1, [ip, #6]
	ldrb r3, [ip, #7]
	cmp r2, r1
	bge _02056428
	ldrsh r5, [ip]
	ldrsh r0, [ip, #2]
	sub r0, r0, r5
	mul r0, r2, r0
	bl sub_0208D65C
	add r0, r5, r0
	add sp, sp, #4
	strh r0, [r4, #0x34]
	ldmia sp!, {r4, r5, lr}
	bx lr
_02056428:
	cmp r2, r3
	ldrltsh r0, [ip, #2]
	addlt sp, sp, #4
	strlth r0, [r4, #0x34]
	ldmltia sp!, {r4, r5, lr}
	bxlt lr
	ldrsh r5, [ip, #4]
	ldrsh r0, [ip, #2]
	sub r2, r2, #0xff
	rsb r1, r3, #0xff
	sub r0, r5, r0
	mul r0, r2, r0
	bl sub_0208D65C
	add r0, r5, r0
	strh r0, [r4, #0x34]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020563E0

	arm_func_start sub_02056470
sub_02056470: ; 0x02056470
	stmdb sp!, {r4, lr}
	ldr lr, [r1, #8]
	ldr r2, [r0]
	ldrsh r4, [r0, #0xc]
	sub r3, r2, lr
	mov r2, #0x800
	smull ip, r3, r4, r3
	adds r4, ip, r2
	adc r3, r3, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, lr, r4
	str r3, [r1, #8]
	ldr r4, [r1, #0xc]
	ldr r3, [r0, #4]
	ldrsh ip, [r0, #0xc]
	sub r3, r3, r4
	smull lr, r3, ip, r3
	adds ip, lr, r2
	adc r3, r3, #0
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	add r3, r4, ip
	str r3, [r1, #0xc]
	ldr lr, [r1, #0x10]
	ldr r3, [r0, #8]
	ldrsh ip, [r0, #0xc]
	sub r0, r3, lr
	smull r3, r0, ip, r0
	adds r2, r3, r2
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, lr, r2
	str r0, [r1, #0x10]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_02056470

	arm_func_start sub_02056504
sub_02056504: ; 0x02056504
	ldr r3, [r3, #0x74]
	ldr r2, [r0]
	cmp r3, #0x80000000
	movne r2, r3
	ldrh r3, [r0, #6]
	mov r3, r3, lsl #0x1e
	movs r3, r3, lsr #0x1e
	beq _02056530
	cmp r3, #1
	beq _02056584
	bx lr
_02056530:
	ldr r3, [r1, #0x3c]
	cmp r3, r2
	bge _0205655C
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	subgt r0, r2, r3
	strgt r0, [r1, #0xc]
	ldrgth r0, [r1, #0x24]
	strgth r0, [r1, #0x26]
	bxgt lr
_0205655C:
	cmp r3, r2
	bxlt lr
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	sublt r0, r2, r3
	strlt r0, [r1, #0xc]
	ldrlth r0, [r1, #0x24]
	strlth r0, [r1, #0x26]
	bx lr
_02056584:
	ldr ip, [r1, #0x3c]
	cmp ip, r2
	bge _020565D4
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	ble _020565D4
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
_020565D4:
	cmp ip, r2
	bxlt lr
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	bxge lr
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
	arm_func_end sub_02056504

	arm_func_start sub_02056620
sub_02056620: ; 0x02056620
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x28
	ldrh r2, [r0, #2]
	mov r4, r1
	cmp r2, #0
	beq _0205664C
	cmp r2, #1
	beq _0205667C
	cmp r2, #2
	beq _020566AC
	b _020566D8
_0205664C:
	ldrh r1, [r0]
	ldr r3, _020566F4 ; =FX_SinCosTable_ ; 0x020946BC
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx MTX_RotX33_
	b _020566D8
_0205667C:
	ldrh r1, [r0]
	ldr r3, _020566F4 ; =FX_SinCosTable_ ; 0x020946BC
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx MTX_RotY33_
	b _020566D8
_020566AC:
	ldrh r1, [r0]
	ldr r3, _020566F4 ; =FX_SinCosTable_ ; 0x020946BC
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx MTX_RotZ33_
_020566D8:
	add r0, r4, #8
	add r1, sp, #0
	mov r2, r0
	bl MTX_MultVec33
	add sp, sp, #0x28
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_020566F4: .word FX_SinCosTable_
	arm_func_end sub_02056620

	arm_func_start sub_020566F8
sub_020566F8: ; 0x020566F8
	stmdb sp!, {r4, lr}
	ldr ip, [r0]
	ldr r4, [r1, #8]
	ldrsh lr, [r0, #0xc]
	ldr r3, [r1, #0x14]
	sub r4, ip, r4
	sub r3, r4, r3
	mul r3, lr, r3
	ldr r4, [r2]
	add r3, r4, r3, asr #12
	str r3, [r2]
	ldr lr, [r0, #4]
	ldr ip, [r1, #0xc]
	ldrsh r4, [r0, #0xc]
	ldr r3, [r1, #0x18]
	sub ip, lr, ip
	sub r3, ip, r3
	mul r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r4, r3, asr #12
	str r3, [r2, #4]
	ldr ip, [r0, #8]
	ldr r3, [r1, #0x10]
	ldrsh lr, [r0, #0xc]
	ldr r0, [r1, #0x1c]
	sub r1, ip, r3
	sub r0, r1, r0
	mul r0, lr, r0
	ldr r1, [r2, #8]
	add r0, r1, r0, asr #12
	str r0, [r2, #8]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_020566F8

	arm_func_start sub_0205677C
sub_0205677C: ; 0x0205677C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrh r0, [r1, #0x26]
	ldrh r1, [r5, #6]
	mov r4, r2
	bl sub_0208D65C
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r2, _02056838 ; =0x02141954
	ldr r0, _0205683C ; =0x5EEDF715
	ldr r3, [r2]
	ldr r1, _02056840 ; =0x1B0CB173
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5]
	mov r3, ip, lsr #0x17
	ldr ip, [r4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4]
	ldr r3, [r2]
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5, #2]
	mov r3, ip, lsr #0x17
	ldr ip, [r4, #4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4, #4]
	ldr r3, [r2]
	mla r0, r3, r0, r1
	str r0, [r2]
	ldrsh r2, [r5, #4]
	mov r0, r0, lsr #0x17
	ldr r1, [r4, #8]
	mul r0, r2, r0
	sub r0, r0, r2, lsl #8
	add r0, r1, r0, asr #8
	str r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02056838: .word 0x02141954
_0205683C: .word 0x5EEDF715
_02056840: .word 0x1B0CB173
	arm_func_end sub_0205677C

	arm_func_start sub_02056844
sub_02056844: ; 0x02056844
	ldrsh r1, [r0]
	ldr r3, [r2]
	add r1, r3, r1
	str r1, [r2]
	ldrsh r1, [r0, #2]
	ldr r3, [r2, #4]
	add r1, r3, r1
	str r1, [r2, #4]
	ldrsh r0, [r0, #4]
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_02056844

	arm_func_start sub_02056878
sub_02056878: ; 0x02056878
	ldr r3, [r1]
	cmp r3, #0
	bne _020568B8
	ldr r2, [r0]
	cmp r2, r1
	moveq r2, #0
	streq r2, [r0]
	streq r2, [r0, #8]
	beq _020568E4
	ldr r2, [r1, #4]
	mov r3, #0
	str r3, [r2]
	ldr r2, [r0, #8]
	ldr r2, [r2, #4]
	str r2, [r0, #8]
	b _020568E4
_020568B8:
	ldr r2, [r0]
	cmp r2, r1
	streq r3, [r0]
	ldreq r2, [r0]
	moveq r3, #0
	streq r3, [r2, #4]
	ldrne r2, [r1, #4]
	strne r2, [r3, #4]
	ldrne r3, [r1]
	ldrne r2, [r1, #4]
	strne r3, [r2]
_020568E4:
	ldr r2, [r0, #4]
	sub r2, r2, #1
	str r2, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end sub_02056878

	arm_func_start sub_020568F8
sub_020568F8: ; 0x020568F8
	ldr r2, [r0]
	mov r3, #0
	mov ip, r3
	cmp r2, #0
	beq _0205693C
	ldr r1, [r2]
	mov ip, r2
	str r1, [r0]
	ldr r1, [r0]
	cmp r1, #0
	ldrne r1, [r2]
	strne r3, [r1, #4]
	streq r3, [r0]
	streq r3, [r0, #8]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
_0205693C:
	mov r0, ip
	bx lr
	arm_func_end sub_020568F8

	arm_func_start sub_02056944
sub_02056944: ; 0x02056944
	ldr r2, [r0]
	cmp r2, #0
	bne _0205696C
	str r1, [r0]
	str r1, [r0, #8]
	mov r2, #0
	str r2, [r1]
	ldr r2, [r1]
	str r2, [r1, #4]
	b _02056984
_0205696C:
	str r2, [r1]
	mov r2, #0
	str r2, [r1, #4]
	ldr r2, [r0]
	str r1, [r2, #4]
	str r1, [r0]
_02056984:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_02056944

	arm_func_start sub_02056994
sub_02056994: ; 0x02056994
	stmdb sp!, {r4, lr}
	ldr ip, _020569E4 ; =0x02141954
	ldr r2, _020569E8 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _020569EC ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0]
	ldr r4, [ip]
	mov lr, #0
	mla r2, r4, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #4]
	str lr, [r0, #8]
	bl VEC_Normalize
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_020569E4: .word 0x02141954
_020569E8: .word 0x5EEDF715
_020569EC: .word 0x1B0CB173
	arm_func_end sub_02056994

	arm_func_start sub_020569F0
sub_020569F0: ; 0x020569F0
	stmdb sp!, {r4, lr}
	ldr ip, _02056A4C ; =0x02141954
	ldr r2, _02056A50 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _02056A54 ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0]
	ldr lr, [ip]
	mla r4, lr, r2, r3
	str r4, [ip]
	mov lr, r4, asr #8
	str lr, [r0, #4]
	ldr lr, [ip]
	mla r2, lr, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #8]
	bl VEC_Normalize
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02056A4C: .word 0x02141954
_02056A50: .word 0x5EEDF715
_02056A54: .word 0x1B0CB173
	arm_func_end sub_020569F0

	arm_func_start sub_02056A58
sub_02056A58: ; 0x02056A58
	ldr ip, _02056A68 ; =sub_02056B54
	mov r1, #0
	mov r2, #3
	bx ip
	.align 2, 0
_02056A68: .word sub_02056B54
	arm_func_end sub_02056A58

	arm_func_start sub_02056A6C
sub_02056A6C: ; 0x02056A6C
	stmdb sp!, {r4, lr}
	mov r4, #0
	mov r1, r4
	mov r2, #3
	bl sub_02056BDC
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02056A6C

	arm_func_start sub_02056A90
sub_02056A90: ; 0x02056A90
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #6
	ldr r0, _02056B40 ; =0x0214195C
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r6, _02056B44 ; =0x000007FF
	ldr r1, [r5, #4]
	ldr r2, [r5]
	sub r0, r6, #0x800
	and ip, r2, r0
	and lr, r1, r6
	ldr r0, _02056B48 ; =0x02141961
	stmia r5, {ip, lr}
	mov r2, r4
	add r1, r5, #8
	bl MI_CpuCopy8
	ldr r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r3, r0, lsr #3
	and r1, r6, r2, lsr #3
	str r1, [r5, #0xc]
	orr r3, r3, r2, lsl #29
	sub r0, r6, #0x800
	and r2, r3, r0
	mov r4, #2
	str r2, [r5, #8]
	ldr r0, _02056B4C ; =0x02141966
	mov r2, r4
	add r1, r5, #0x10
	bl MI_CpuCopy8
	mov r2, r4
	ldrh r4, [r5, #0x10]
	sub r3, r6, #0x400
	ldr r0, _02056B50 ; =0x02141968
	mov r4, r4, asr #6
	strh r4, [r5, #0x10]
	ldrh r4, [r5, #0x10]
	add r1, r5, #0x12
	and r3, r4, r3
	strh r3, [r5, #0x10]
	bl MI_CpuCopy8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02056B40: .word 0x0214195C
_02056B44: .word 0x000007FF
_02056B48: .word 0x02141961
_02056B4C: .word 0x02141966
_02056B50: .word 0x02141968
	arm_func_end sub_02056A90

	arm_func_start sub_02056B54
sub_02056B54: ; 0x02056B54
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	add r7, r8, r2
	mov sb, r0
	mov r6, r8
	cmp r8, r7
	bhs _02056BA4
	mov r5, #0x100
	mvn r4, #0
_02056B78:
	sub r0, r6, r8
	mov r1, r5
	mov r2, r6
	add r0, sb, r0, lsl #8
	bl sub_0205DCA4
	cmp r0, r4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, r7
	blo _02056B78
_02056BA4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02056B54

	arm_func_start sub_02056BAC
sub_02056BAC: ; 0x02056BAC
	stmdb sp!, {r4, lr}
	mov r2, r0
	mov r0, r1
	mov r4, #0x100
	mov r1, r2
	mov r2, r4
	bl sub_0205DD40
	rsb r1, r4, #0xff
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02056BAC

	arm_func_start sub_02056BDC
sub_02056BDC: ; 0x02056BDC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	add r7, r8, r2
	mov sb, r0
	mov r6, r8
	cmp r8, r7
	bhs _02056C2C
	mov r5, #0x200
	mvn r4, #0
_02056C00:
	sub r0, r6, r8
	mov r1, r5
	add r0, sb, r0, lsl #9
	add r2, r6, #0x11
	bl sub_0205DCA4
	cmp r0, r4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, r7
	blo _02056C00
_02056C2C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02056BDC

	arm_func_start sub_02056C34
sub_02056C34: ; 0x02056C34
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r1
	bl sub_02056E7C
	ldr r1, _02056CE0 ; =0x0000A001
	add r0, sb, #0x200
	blx MATHi_CRC16InitTableRev
	ldr r6, _02056CE4 ; =0x0214195C
	mov r8, #0
	mov r5, #0xe
	mov r4, #0xfe
	mov r7, #1
_02056C60:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl sub_02056B54
	cmp r0, #0
	bne _02056C84
	blx OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02056C84:
	mov r0, r6
	mov r2, r5
	add r1, sb, #0xf0
	bl MI_CpuCopy8
	mov r1, sb
	mov r2, r4
	add r0, sb, #0x200
	blx MATH_CalcCRC16
	strh r0, [sb, #0xfe]
_02056CA8:
	mov r0, sb
	mov r1, r8
	add r2, sb, #0x100
	bl sub_02056BAC
	cmp r0, #0
	beq _02056CA8
	add r8, r8, #1
	cmp r8, #2
	blt _02056C60
	bl sub_02056E74
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02056CE0: .word 0x0000A001
_02056CE4: .word 0x0214195C
	arm_func_end sub_02056C34

	arm_func_start sub_02056CE8
sub_02056CE8: ; 0x02056CE8
	ldr ip, _02056CF8 ; =sub_02056B54
	mov r1, #0
	mov r2, #4
	bx ip
	.align 2, 0
_02056CF8: .word sub_02056B54
	arm_func_end sub_02056CE8

	arm_func_start sub_02056CFC
sub_02056CFC: ; 0x02056CFC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
_02056D10:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _02056D38
	add r5, r8, r4, lsl #8
_02056D20:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_02056BAC
	cmp r0, #0
	beq _02056D20
_02056D38:
	add r4, r4, #1
	cmp r4, #4
	blt _02056D10
	bl sub_02056E74
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02056CFC

	arm_func_start sub_02056D58
sub_02056D58: ; 0x02056D58
	ldr r1, _02056D68 ; =0x0214195C
	ldr ip, _02056D6C ; =MI_CpuCopy8
	mov r2, #0xe
	bx ip
	.align 2, 0
_02056D68: .word 0x0214195C
_02056D6C: .word MI_CpuCopy8
	arm_func_end sub_02056D58

	arm_func_start sub_02056D70
sub_02056D70: ; 0x02056D70
	stmdb sp!, {r4, lr}
	mov ip, #0
	mov r3, ip
	mov r2, ip
_02056D80:
	ldrb r4, [r0, ip]
	mov lr, r2
_02056D88:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _02056D88
	add ip, ip, #1
	cmp ip, #4
	blt _02056D80
	and r0, r3, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end sub_02056D70

	arm_func_start sub_02056DB4
sub_02056DB4: ; 0x02056DB4
	mvn r2, #0
	eor r3, r2, r2, lsr r0
	mov r2, #0
_02056DC0:
	mov r0, r2, lsl #3
	rsb r0, r0, #0x18
	mov r0, r3, lsr r0
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _02056DC0
	bx lr
	arm_func_end sub_02056DB4

	arm_func_start sub_02056DE0
sub_02056DE0: ; 0x02056DE0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	bl sub_02056E48
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r4, #4
	add r1, sp, #4
	mov r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mvn r0, r0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02056DE0

	arm_func_start sub_02056E48
sub_02056E48: ; 0x02056E48
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end sub_02056E48

	arm_func_start sub_02056E74
sub_02056E74: ; 0x02056E74
	mov r0, #1
	bx lr
	arm_func_end sub_02056E74

	arm_func_start sub_02056E7C
sub_02056E7C: ; 0x02056E7C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r4, _02056F2C ; =0x0214195C
	ldr r3, [r5, #0xc]
	str r2, [sp]
	mov r1, r4
	mov r2, #5
	str r3, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mov ip, r2, lsr #5
	mov lr, r3, lsr #5
	orr ip, ip, r3, lsl #27
	ldr r1, [r5, #4]
	mov r0, #7
	and r1, r0, r1, lsr #8
	and r0, r2, #0x1f
	orr r3, r1, r0, lsl #3
	ldr r6, _02056F30 ; =0x02141958
	ldr r1, _02056F34 ; =0x02141962
	add r0, sp, #0
	mov r2, #4
	strb r3, [r6, #9]
	str ip, [sp]
	str lr, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	ldrh r0, [r5, #0x10]
	and r3, r2, #0x3f
	ldr r1, _02056F38 ; =0x02141968
	mov r2, r0, lsl #0x1e
	orr r2, r3, r2, lsr #24
	strb r2, [r6, #0xe]
	mov r3, r0, asr #2
	add r0, r5, #0x12
	mov r2, #2
	strb r3, [r6, #0xf]
	bl MI_CpuCopy8
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02056F2C: .word 0x0214195C
_02056F30: .word 0x02141958
_02056F34: .word 0x02141962
_02056F38: .word 0x02141968
	arm_func_end sub_02056E7C

	arm_func_start sub_02056F3C
sub_02056F3C: ; 0x02056F3C
	ldr r0, _02056F44 ; =0x0214195C
	bx lr
	.align 2, 0
_02056F44: .word 0x0214195C
	arm_func_end sub_02056F3C

	arm_func_start sub_02056F48
sub_02056F48: ; 0x02056F48
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0x1000
	mov r5, r0
	bl MI_CpuFill8
	blx OS_IsRunOnTwl
	cmp r0, #0
	mov r0, r5
	beq _02056F74
	bl sub_0205E0F0
	b _02056F78
_02056F74:
	bl sub_0205E094
_02056F78:
	mov r4, r0
	mov r0, r5
	mov r1, #0
	mov r2, #0x1000
	bl MI_CpuFill8
	mov r0, r5
	bl sub_02056CE8
	cmp r0, #0
	ldreq r0, _02056FB0 ; =0xFFFFD8EF
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, #0xf0
	bl sub_02056D58
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02056FB0: .word 0xFFFFD8EF
	arm_func_end sub_02056F48

	arm_func_start sub_02056FB4
sub_02056FB4: ; 0x02056FB4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _0205712C ; =0x0000FFFF
	mov lr, #0
	and ip, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, ip, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, ip, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r4, r0, r2, lsl #27
	mov r3, ip, lsl #0x1b
	str r4, [sp, #8]
	orr r7, r7, r5, lsr #29
	orr r0, ip, r6
	orr r3, r3, r2, lsr #5
	orr r0, r7, r0
	orr r5, r3, r0
	str r5, [sp, #0xc]
	mov r4, lr
	add r1, sp, #8
_0205701C:
	ldrb r0, [r1, lr]
	eor r0, r0, #0xd6
	strb r0, [r1, lr]
	add lr, lr, #1
	cmp lr, #6
	blt _0205701C
	ldr r3, _02057130 ; =0x020940C8
	mov r6, #0
	add r0, sp, #8
_02057040:
	ldrb r5, [r0, r6]
	mov r1, r5, asr #4
	and r2, r1, #0xf
	and r1, r5, #0xf
	ldrb r2, [r3, r2]
	ldrb r1, [r3, r1]
	orr r1, r1, r2, lsl #4
	strb r1, [r0, r6]
	add r6, r6, #1
	cmp r6, #5
	blt _02057040
	add r5, sp, #0
	mov r2, #8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r2, _02057134 ; =0x020940B0
	mov r6, #0
	add r0, sp, #8
_02057088:
	ldrb r3, [r5, r6]
	ldrb r1, [r2, r6]
	add r6, r6, #1
	cmp r6, #5
	strb r3, [r0, r1]
	blt _02057088
	ldrb r1, [sp, #0xd]
	mov r0, #0
	ldr r2, [sp, #8]
	and r1, r1, #7
	strb r0, [sp, #0xf]
	strb r0, [sp, #0xe]
	strb r1, [sp, #0xd]
	ldr r1, [sp, #0xc]
	mov ip, r2, lsl #1
	mov r1, r1, lsl #1
	orr r1, r1, r2, lsr #31
	str r1, [sp, #0xc]
	ldrb r1, [sp, #0xd]
	str ip, [sp, #8]
	ldrb r2, [sp, #8]
	mov r1, r1, asr #3
	and r1, r1, #1
	orr r1, r2, r1
	strb r1, [sp, #8]
	add r2, sp, #8
_020570F0:
	ldrb r1, [r2, r0]
	eor r1, r1, #0x67
	strb r1, [r2, r0]
	add r0, r0, #1
	cmp r0, #6
	blt _020570F0
	ldrb r0, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb r4, [sp, #0xe]
	and r0, r0, #7
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205712C: .word 0x0000FFFF
_02057130: .word 0x020940C8
_02057134: .word 0x020940B0
	arm_func_end sub_02056FB4

	arm_func_start sub_02057138
sub_02057138: ; 0x02057138
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r8, #0
	bl sub_02056A90
	blx RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	blx RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, sp, #8
	mov r0, r4
	blx RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r6
	mov r1, r4
	blx RTC_ConvertDateTimeToSecond
	mov sb, r0
	mov r0, r8
	subs r2, sb, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	blx OS_IsTickAvailable
	cmp r0, #0
	beq _020571C0
	ldr r0, _020572F0 ; =OS_GetTick
	adds sb, sb, r0
_020571C0:
	add r0, sp, #0
	blx OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _020572F4 ; =0x5D588B65
	ldr r7, _020572F8 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, sb, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb sl, [sp, #4]
	ldr r0, _020572FC ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb ip, [sp, #3]
	ldrb r0, [sp, #5]
	mov sb, sl, lsl #8
	orr sl, sb, ip, lsl #16
	moveq r1, #0
	ldrh r2, [r5, #0x12]
	mov r3, r3, lsr #0x10
	strh r3, [r5, #0x10]
	str r8, [r5]
	str r8, [r5, #4]
	cmp r2, #0
	and sb, r1, #0xff
	orr sl, r0, sl
	bne _0205729C
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020572E4
_02057254:
	mul r0, r4, r6
	adds r4, r0, r7
	bne _0205726C
_02057260:
	mul r0, r4, r6
	adds r4, r0, r7
	beq _02057260
_0205726C:
	strh r4, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_02056FB4
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _02057254
	b _020572E4
_0205729C:
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020572E4
_020572B0:
	ldrh r0, [r5, #0x12]
	mov r1, sl
	mov r2, sb
	add r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r3, r8
	bl sub_02056FB4
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020572B0
_020572E4:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020572F0: .word OS_GetTick
_020572F4: .word 0x5D588B65
_020572F8: .word 0x00269EC3
_020572FC: .word 0x000009BF
	arm_func_end sub_02057138

	arm_func_start sub_02057300
sub_02057300: ; 0x02057300
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl sub_02057138
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl sub_02056C34
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_02057300

	arm_func_start sub_02057348
sub_02057348: ; 0x02057348
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl sub_02056A90
	add ip, r5, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia ip, {r2, r3}
	bl sub_02056C34
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_02057348

	arm_func_start sub_02057398
sub_02057398: ; 0x02057398
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x24
	add r1, sp, #0
	mov r7, #0
	mov r5, r0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	strb r7, [r1, #4]
	strb r7, [r1, #5]
	bl sub_02056A90
	blx RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	blx RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, sp, #8
	mov r0, r4
	blx RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r6
	mov r1, r4
	blx RTC_ConvertDateTimeToSecond
	mov r8, r0
	subs r0, r8, r7
	sbcs r0, r1, r7
	addlt sp, sp, #0x24
	movlt r0, r7
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	blx OS_IsTickAvailable
	cmp r0, #0
	beq _0205743C
	ldr r0, _0205751C ; =OS_GetTick
	adds r8, r8, r0
_0205743C:
	add r0, sp, #0
	blx OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _02057520 ; =0x5D588B65
	ldr r7, _02057524 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r8, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb sb, [sp, #4]
	ldr r0, _02057528 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb sl, [sp, #3]
	mov r8, sb, lsl #8
	moveq r1, #0
	mov r2, #0
	ldrb r0, [sp, #5]
	orr r8, r8, sl, lsl #16
	mov r3, r3, lsr #0x10
	cmp r2, #0
	strh r3, [r5, #0x10]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	cmpeq r2, #0
	and sb, r1, #0xff
	orr sl, r0, r8
	bne _02057510
	mov r8, r2
_020574C4:
	b _020574C8
	arm_func_end sub_02057398
_020574C8:
	mla r4, r6, r4, r7
	cmp r4, #0
	ldrneh r2, [r5, #0x12]
	movne r0, r4, lsl #0x10
	movne r1, r0, lsr #0x10
	cmpne r2, r0, lsr #16
	beq _020574C8
	strh r1, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_02056FB4
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020574C4
_02057510:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205751C: .word OS_GetTick
_02057520: .word 0x5D588B65
_02057524: .word 0x00269EC3
_02057528: .word 0x000009BF

	arm_func_start sub_0205752C
sub_0205752C: ; 0x0205752C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r5, sp, #0
	mov r4, r0
	mov r0, r5
	bl sub_02056A90
	ldmia r5, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r2, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_0205752C

	arm_func_start sub_02057580
sub_02057580: ; 0x02057580
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl sub_02056A90
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _020575C4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020575C4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end sub_02057580

	arm_func_start sub_020575D0
sub_020575D0: ; 0x020575D0
	mvn ip, r3
	tst r1, ip
	movne r0, #0
	bxne lr
	mvn r3, r3, lsl r2
	ldr ip, [r0]
	and r3, ip, r3
	orr r1, r3, r1, lsl r2
	str r1, [r0]
	mov r0, #1
	bx lr
	arm_func_end sub_020575D0

	arm_func_start sub_020575FC
sub_020575FC: ; 0x020575FC
	ldr r2, [r0]
	ldr r1, _02057618 ; =0x000007FF
	ldr r0, [r0, #4]
	and r1, r2, r1
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	.align 2, 0
_02057618: .word 0x000007FF
	arm_func_end sub_020575FC

	arm_func_start sub_0205761C
sub_0205761C: ; 0x0205761C
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_0205761C

	arm_func_start sub_02057624
sub_02057624: ; 0x02057624
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	arm_func_end sub_02057624

	arm_func_start sub_02057638
sub_02057638: ; 0x02057638
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_02057638

	arm_func_start sub_02057640
sub_02057640: ; 0x02057640
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _02057664 ; =0x000007FF
	mov r4, r1
	mov r1, r2
	mov r2, #0
	mov r5, r0
	bl sub_020575D0
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02057664: .word 0x000007FF
	arm_func_end sub_02057640

	arm_func_start sub_02057668
sub_02057668: ; 0x02057668
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02057668

	arm_func_start sub_02057670
sub_02057670: ; 0x02057670
	stmib r0, {r1, r2}
	bx lr
	arm_func_end sub_02057670

	arm_func_start sub_02057678
sub_02057678: ; 0x02057678
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_02057678

	arm_func_start sub_02057680
sub_02057680: ; 0x02057680
	ldr r1, [r0]
	ldr r0, _02057690 ; =0x001FFFFF
	and r0, r0, r1, lsr #11
	bx lr
	.align 2, 0
_02057690: .word 0x001FFFFF
	arm_func_end sub_02057680

	arm_func_start sub_02057694
sub_02057694: ; 0x02057694
	stmdb sp!, {r3, lr}
	bl sub_02057680
	and r0, r0, #3
	ldmia sp!, {r3, pc}
	arm_func_end sub_02057694

	arm_func_start sub_020576A4
sub_020576A4: ; 0x020576A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020576D4
	cmp r0, #0
	beq _020576CC
	mov r0, r4
	bl sub_0205770C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020576CC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020576A4

	arm_func_start sub_020576D4
sub_020576D4: ; 0x020576D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02057694
	cmp r0, #3
	bne _02057704
	mov r0, r4
	bl sub_02057680
	and r0, r0, #4
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_02057704:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020576D4

	arm_func_start sub_0205770C
sub_0205770C: ; 0x0205770C
	stmdb sp!, {r3, lr}
	bl sub_02057680
	and r0, r0, #8
	cmp r0, #8
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205770C

	arm_func_start sub_02057728
sub_02057728: ; 0x02057728
	stmdb sp!, {r3, lr}
	bl sub_02057680
	and r0, r0, #0x20
	cmp r0, #0x20
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02057728

	arm_func_start sub_02057744
sub_02057744: ; 0x02057744
	ldr ip, _0205774C ; =sub_02057694
	bx ip
	.align 2, 0
_0205774C: .word sub_02057694
	arm_func_end sub_02057744

	arm_func_start sub_02057750
sub_02057750: ; 0x02057750
	ldr r3, _02057760 ; =0x001FFFFF
	ldr ip, _02057764 ; =sub_020575D0
	mov r2, #0xb
	bx ip
	.align 2, 0
_02057760: .word 0x001FFFFF
_02057764: .word sub_020575D0
	arm_func_end sub_02057750

	arm_func_start sub_02057768
sub_02057768: ; 0x02057768
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02057680
	bic r1, r0, #3
	mov r0, r5
	orr r1, r1, r4
	bl sub_02057750
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02057768

	arm_func_start sub_0205778C
sub_0205778C: ; 0x0205778C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02057694
	cmp r0, #3
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02057680
	orr r1, r0, #4
	mov r0, r4
	bl sub_02057750
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205778C

	arm_func_start sub_020577B8
sub_020577B8: ; 0x020577B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _020577D4
	bl sub_02057680
	orr r1, r0, #8
	b _020577DC
_020577D4:
	bl sub_02057680
	bic r1, r0, #8
_020577DC:
	mov r0, r4
	bl sub_02057750
	ldmia sp!, {r4, pc}
	arm_func_end sub_020577B8

	arm_func_start sub_020577E8
sub_020577E8: ; 0x020577E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _02057804
	bl sub_02057680
	orr r1, r0, #0x10
	b _0205780C
_02057804:
	bl sub_02057680
	bic r1, r0, #0x10
_0205780C:
	mov r0, r4
	bl sub_02057750
	ldmia sp!, {r4, pc}
	arm_func_end sub_020577E8

	arm_func_start sub_02057818
sub_02057818: ; 0x02057818
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _02057834
	bl sub_02057680
	orr r1, r0, #0x20
	b _0205783C
_02057834:
	bl sub_02057680
	bic r1, r0, #0x20
_0205783C:
	mov r0, r4
	bl sub_02057750
	ldmia sp!, {r4, pc}
	arm_func_end sub_02057818

	arm_func_start sub_02057848
sub_02057848: ; 0x02057848
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x170
	mov r5, r0
	str r5, [sp]
	str r1, [sp, #4]
	cmp r2, #0
	bne _02057888
	add r4, sp, #0x70
	mov r1, #7
	mov r0, r4
	blx MATHi_CRC8InitTable
	add r1, sp, #0
	mov r0, r4
	mov r2, #8
	blx MATH_CalcCRC8
	b _020578B8
_02057888:
	add r4, sp, #0x18
	mov r0, r4
	blx MATH_MD5Init
	add r1, sp, #0
	mov r0, r4
	mov r2, #8
	blx MATH_MD5Update
	add r1, sp, #8
	mov r0, r4
	blx MATH_MD5GetHash
	ldrb r0, [sp, #8]
	mov r0, r0, asr #1
_020578B8:
	and r0, r0, #0x7f
	orr r1, r0, #0
	orr r0, r5, #0
	add sp, sp, #0x170
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02057848

	arm_func_start sub_020578CC
sub_020578CC: ; 0x020578CC
	mov r3, r0
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x24]
	ldr ip, _020578E8 ; =sub_020578EC
	mov r3, #1
	bx ip
	.align 2, 0
_020578E8: .word sub_020578EC
	arm_func_end sub_020578CC

	arm_func_start sub_020578EC
sub_020578EC: ; 0x020578EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	sub r0, r4, #1
	and r0, r6, r0
	cmp r0, #0
	mov r5, r1
	movle r0, r4
	ldmleia sp!, {r4, r5, r6, pc}
	mov r1, r2
	mov r2, r3
	bl sub_02057848
	cmp r5, r1
	cmpeq r6, r0
	moveq r4, #1
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020578EC

	arm_func_start sub_02057930
sub_02057930: ; 0x02057930
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
_02057944:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020578EC
	cmp r0, #0
	movne r0, #0
	subne r0, r0, #1
	andne r0, r7, r0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, #2
	blt _02057944
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02057930

	arm_func_start sub_02057980
sub_02057980: ; 0x02057980
	stmdb sp!, {r4, r5, r6, lr}
	ldr lr, _020579E4 ; =0x66666667
	add r4, r2, #4
	smull ip, r2, lr, r4
	mov ip, r4, lsr #0x1f
	add r2, ip, r2, asr #1
	cmp r2, #0
	ldr r6, _020579E8 ; =0x0209B05C
	mov r5, #0
	ble _020579D8
	add r4, r3, r2
	sub lr, r4, #1
_020579B0:
	and r4, r0, #0x1f
	ldrsb r4, [r6, r4]
	mov r0, r0, lsr #5
	mov ip, r1, lsr #5
	strb r4, [lr, -r5]
	add r5, r5, #1
	orr r0, r0, r1, lsl #27
	mov r1, ip
	cmp r5, r2
	blt _020579B0
_020579D8:
	mov r0, #0
	strb r0, [r3, r2]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020579E4: .word 0x66666667
_020579E8: .word 0x0209B05C
	arm_func_end sub_02057980

	arm_func_start sub_020579EC
sub_020579EC: ; 0x020579EC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x40
	mov r4, r0
	mov r5, r1
	mov r7, r2
	bl sub_020575FC
	add r6, sp, #0x29
	mov r2, #0x2b
	mov r3, r6
	bl sub_02057980
	mov r0, r4
	bl sub_0205761C
	add r4, sp, #0x14
	mov r1, #0
	mov r2, #0x20
	mov r3, r4
	bl sub_02057980
	mov r1, r5, lsr #0x18
	and r1, r1, #0xff
	str r1, [sp]
	mov r1, r5, lsr #0x10
	and r1, r1, #0xff
	str r1, [sp, #4]
	mov r1, r5, lsr #8
	and r1, r1, #0xff
	str r1, [sp, #8]
	and r1, r5, #0xff
	str r1, [sp, #0xc]
	ldr r2, _02057A7C ; =0x0209B080
	mov r0, r7
	mov r3, r6
	mov r1, #0x15
	str r4, [sp, #0x10]
	blx OS_SNPrintf
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02057A7C: .word 0x0209B080
	arm_func_end sub_020579EC

	arm_func_start sub_02057A80
sub_02057A80: ; 0x02057A80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x400
	mov r4, #0x40
	mov r5, #0
	mov r6, r1
	mov r7, r0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	add r0, r7, #4
	str r4, [r7]
	str r5, [r7, #0x1c]
	str r6, [r7, #0x24]
	bl sub_02057B00
	mov r1, r5
	add r0, r7, #0x10
	bl sub_02057768
	add r4, sp, #0
	ldr r1, _02057AFC ; =0xEDB88320
	mov r0, r4
	blx MATHi_CRC32InitTableRev
	mov r0, r4
	mov r1, r7
	mov r2, #0x3c
	blx MATH_CalcCRC32
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x20]
	orr r0, r0, #1
	str r0, [r7, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02057AFC: .word 0xEDB88320
	arm_func_end sub_02057A80

	arm_func_start sub_02057B00
sub_02057B00: ; 0x02057B00
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	add r4, sp, #0
	mov r6, r0
	mov r0, r4
	blx OS_GetLowEntropyData
	mov r2, #1
_02057B1C:
	add r0, r4, r2, lsl #2
	ldr r1, [r4, r2, lsl #2]
	ldr r0, [r0, #-4]
	eor r0, r1, r0
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #8
	blo _02057B1C
	add r0, sp, #0x20
	ldr r5, [sp, #0x1c]
	mov r4, #0
	bl sub_0205752C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02057B64
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	b _02057B6C
_02057B64:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_02057B6C:
	mov r0, r6
	bl sub_02057640
	ldr r0, _02057BB0 ; =0x6C078965
	ldr r1, _02057BB4 ; =0x5D588B65
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	ldr r1, _02057BB8 ; =0x00269EC3
	mla r2, r4, r0, r2
	adds r0, r3, r1
	mov r0, r6
	adc r1, r2, #0
	bl sub_02057668
	mov r0, r6
	mov r1, #1
	bl sub_02057768
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02057BB0: .word 0x6C078965
_02057BB4: .word 0x5D588B65
_02057BB8: .word 0x00269EC3
	arm_func_end sub_02057B00

	arm_func_start sub_02057BBC
sub_02057BBC: ; 0x02057BBC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_0205752C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r4
	beq _02057C04
	bl sub_020575FC
	ldr r2, [sp, #4]
	ldr ip, [sp]
	cmp r2, r1
	cmpeq ip, r0
	moveq r0, #1
	add sp, sp, #0x14
	movne r0, #0
	ldmia sp!, {r3, r4, pc}
_02057C04:
	bl sub_020575FC
	ldr r2, [sp, #0xc]
	ldr ip, [sp, #8]
	cmp r2, r1
	cmpeq ip, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02057BBC

	arm_func_start sub_02057C28
sub_02057C28: ; 0x02057C28
	stmdb sp!, {r3, lr}
	bl sub_02057694
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02057C28

	arm_func_start sub_02057C40
sub_02057C40: ; 0x02057C40
	ldr ip, _02057C4C ; =sub_02057C28
	add r0, r0, #0x10
	bx ip
	.align 2, 0
_02057C4C: .word sub_02057C28
	arm_func_end sub_02057C40

	arm_func_start sub_02057C50
sub_02057C50: ; 0x02057C50
	stmdb sp!, {r3, lr}
	bl sub_02057694
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02057C50

	arm_func_start sub_02057C68
sub_02057C68: ; 0x02057C68
	ldr ip, _02057C70 ; =sub_02057C50
	bx ip
	.align 2, 0
_02057C70: .word sub_02057C50
	arm_func_end sub_02057C68

	arm_func_start sub_02057C74
sub_02057C74: ; 0x02057C74
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02058684
	mov r1, r0
	mov r0, r4
	bl sub_02057A80
	ldmia sp!, {r4, pc}
	arm_func_end sub_02057C74

	arm_func_start sub_02057C90
sub_02057C90: ; 0x02057C90
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	add r4, sp, #0
	mov r5, r0
	ldr r1, _02057CD4 ; =0xEDB88320
	mov r0, r4
	blx MATHi_CRC32InitTableRev
	mov r0, r4
	mov r1, r5
	mov r2, #0x3c
	blx MATH_CalcCRC32
	ldr r1, [r5, #0x3c]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02057CD4: .word 0xEDB88320
	arm_func_end sub_02057C90

	arm_func_start sub_02057CD8
sub_02057CD8: ; 0x02057CD8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x10
	bl sub_02057694
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	bl sub_0205752C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x10
	bl sub_020575FC
	ldr r2, [sp, #4]
	ldr ip, [sp]
	cmp r2, r1
	cmpeq ip, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02057CD8

	arm_func_start sub_02057D40
sub_02057D40: ; 0x02057D40
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	bl sub_02057C28
	cmp r0, #0
	ldrne r0, [r4, #0x1c]
	cmpne r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02057D40

	arm_func_start sub_02057D68
sub_02057D68: ; 0x02057D68
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r5, r0
	add r3, r5, #0x10
	mov ip, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r4, sp, #0
	ldr r1, _02057DC0 ; =0xEDB88320
	mov r0, r4
	str ip, [r5, #0x1c]
	blx MATHi_CRC32InitTableRev
	mov r0, r4
	mov r1, r5
	mov r2, #0x3c
	blx MATH_CalcCRC32
	ldr r1, [r5, #0x20]
	str r0, [r5, #0x3c]
	orr r0, r1, #1
	str r0, [r5, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02057DC0: .word 0xEDB88320
	arm_func_end sub_02057D68

	arm_func_start sub_02057DC4
sub_02057DC4: ; 0x02057DC4
	ldr ip, _02057DCC ; =sub_02057DD0
	bx ip
	.align 2, 0
_02057DCC: .word sub_02057DD0
	arm_func_end sub_02057DC4

	arm_func_start sub_02057DD0
sub_02057DD0: ; 0x02057DD0
	ldr r0, [r0, #0x20]
	and r0, r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_02057DD0

	arm_func_start sub_02057DE8
sub_02057DE8: ; 0x02057DE8
	ldr ip, _02057DF0 ; =sub_02057DF4
	bx ip
	.align 2, 0
_02057DF0: .word sub_02057DF4
	arm_func_end sub_02057DE8

	arm_func_start sub_02057DF4
sub_02057DF4: ; 0x02057DF4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r5, r0
	ldr r0, [r5, #0x20]
	add r4, sp, #0
	bic r2, r0, #1
	ldr r1, _02057E38 ; =0xEDB88320
	mov r0, r4
	str r2, [r5, #0x20]
	blx MATHi_CRC32InitTableRev
	mov r0, r4
	mov r1, r5
	mov r2, #0x3c
	blx MATH_CalcCRC32
	str r0, [r5, #0x3c]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02057E38: .word 0xEDB88320
	arm_func_end sub_02057DF4

	arm_func_start sub_02057E3C
sub_02057E3C: ; 0x02057E3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02057694
	cmp r0, #2
	movne r0, #0
	movne r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02057624
	ldmia sp!, {r4, pc}
	arm_func_end sub_02057E3C

	arm_func_start sub_02057E64
sub_02057E64: ; 0x02057E64
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl sub_02057694
	cmp r0, #1
	beq _02057EB4
	cmp r0, #2
	beq _02057E94
	cmp r0, #3
	beq _02057EA8
	b _02057EBC
_02057E94:
	mov r0, r4
	bl sub_02057624
	ldr r2, [r5, #0x24]
	bl sub_02057930
	ldmia sp!, {r3, r4, r5, pc}
_02057EA8:
	mov r0, r4
	bl sub_02057638
	ldmia sp!, {r3, r4, r5, pc}
_02057EB4:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02057EBC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02057E64

	arm_func_start sub_02057EC4
sub_02057EC4: ; 0x02057EC4
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x1c]
	mov r2, #0
	mov r1, r2
	cmp r0, #0
	beq _02057EF0
	ldr r1, [r3, #0x24]
	mov r2, #1
	bl sub_02057848
	mov r2, r0
_02057EF0:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_02057EC4

	arm_func_start sub_02057EF8
sub_02057EF8: ; 0x02057EF8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_02057670
	mov r0, r6
	mov r1, #2
	bl sub_02057768
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02057EF8

	arm_func_start sub_02057F34
sub_02057F34: ; 0x02057F34
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r5
	bl sub_02057C40
	cmp r0, #0
	addeq r0, r5, #4
	ldmeqia r0, {r0, r1, r2}
	stmeqia r4, {r0, r1, r2}
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl sub_02057678
	mov r0, r4
	mov r1, #3
	bl sub_02057768
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02057F34

	arm_func_start sub_02057F88
sub_02057F88: ; 0x02057F88
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl sub_02057678
	mov r0, r5
	mov r1, #3
	bl sub_02057768
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02057F88

	arm_func_start sub_02057FBC
sub_02057FBC: ; 0x02057FBC
	mov r3, r0
	mov r0, r1
	ldr r1, [r3, #0x24]
	ldr ip, _02057FD0 ; =sub_020579EC
	bx ip
	.align 2, 0
_02057FD0: .word sub_020579EC
	arm_func_end sub_02057FBC

	arm_func_start sub_02057FD4
sub_02057FD4: ; 0x02057FD4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl sub_02057694
	mov r5, r0
	mov r0, r4
	bl sub_02057694
	cmp r5, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #3
	bne _02058028
	mov r0, r7
	bl sub_02057638
	mov r5, r0
	mov r0, r4
	bl sub_02057638
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02058028:
	cmp r5, #1
	bne _0205807C
	mov r0, r7
	bl sub_020575FC
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_020575FC
	cmp r6, r1
	cmpeq r5, r0
	bne _02058074
	mov r0, r7
	bl sub_0205761C
	mov r5, r0
	mov r0, r4
	bl sub_0205761C
	cmp r5, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02058074:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205807C:
	cmp r5, #2
	bne _020580B0
	mov r0, r7
	bl sub_02057624
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_02057624
	cmp r6, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020580B0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02057FD4

	arm_func_start sub_020580B8
sub_020580B8: ; 0x020580B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _0205822C ; =0xAAAAAAAB
	mov r6, #3
	umull r4, r5, r1, r4
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	subs r5, r1, r4
	movne r5, #4
	str r2, [sp]
	mov sl, r0
	ldr r4, _0205822C ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r2, r1, r4
	mov r2, r2, lsr #1
	addeq sp, sp, #8
	add r0, r5, r2, lsl #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r8, [sp]
	cmp sl, r7
	beq _0205821C
	ldr r5, _02058230 ; =0x0209B090
	add fp, sp, #4
_02058130:
	sub sb, r7, sl
	mov r0, sb, lsl #3
	umull r1, r2, r0, r4
	mov r2, r2, lsr #2
	mov r1, #6
	umull r2, r3, r1, r2
	subs r2, r0, r2
	umull r1, r2, r0, r4
	movne r3, #1
	moveq r3, #0
	add r6, r3, r2, lsr #2
	cmp sb, #3
	movge sb, #3
	mov r0, fp
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, sl
	mov r1, fp
	mov r2, sb
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlo r0, #0x2a
	blo _020581C0
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_020581C0:
	strb r0, [r8, #1]
	cmp r6, #3
	movlo r0, #0x2a
	blo _020581EC
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_020581EC:
	strb r0, [r8, #2]
	cmp r6, #4
	ldrhsb r0, [sp, #6]
	ldrhs r1, [r5]
	add sl, sl, sb
	andhs r0, r0, #0x3f
	ldrhssb r0, [r1, r0]
	movlo r0, #0x2a
	strb r0, [r8, #3]
	cmp sl, r7
	add r8, r8, #4
	bne _02058130
_0205821C:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205822C: .word 0xAAAAAAAB
_02058230: .word 0x0209B090
	arm_func_end sub_020580B8

	arm_func_start sub_02058234
sub_02058234: ; 0x02058234
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r6, r5
	cmp r1, #0
	ble _0205826C
_02058254:
	ldrsb r4, [r0, r6]
	add r6, r6, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp r6, r1
	blt _02058254
_0205826C:
	mov ip, r5, asr #2
	add ip, r5, ip, lsr #29
	mov ip, ip, asr #3
	cmp r2, #0
	moveq r0, ip
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, ip
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_020582A0:
	mov r7, #0
	mov r3, r7
	add r6, sp, #0
	mov r4, #0x3f
	mov r5, #0x3e
_020582B4:
	ldrsb lr, [r0, r7]
	cmp lr, #0x41
	blt _020582D0
	cmp lr, #0x5a
	suble lr, lr, #0x41
	strleb lr, [r6, r7]
	ble _02058318
_020582D0:
	cmp lr, #0x61
	blt _020582E8
	cmp lr, #0x7a
	suble lr, lr, #0x47
	strleb lr, [r6, r7]
	ble _02058318
_020582E8:
	cmp lr, #0x30
	blt _02058300
	cmp lr, #0x39
	addle lr, lr, #4
	strleb lr, [r6, r7]
	ble _02058318
_02058300:
	cmp lr, #0x2e
	streqb r5, [r6, r7]
	beq _02058318
	cmp lr, #0x2d
	streqb r4, [r6, r7]
	strneb r3, [r6, r7]
_02058318:
	add r7, r7, #1
	cmp r7, #4
	blt _020582B4
	ldrsb r5, [sp, #1]
	ldrsb r4, [sp]
	add r3, r1, #1
	mov lr, r5, asr #4
	orr r4, lr, r4, lsl #2
	sub r6, r3, r2
	strb r4, [r1]
	cmp r6, ip
	add r0, r0, #4
	bge _02058388
	ldrsb lr, [sp, #2]
	add r3, r1, #2
	sub r6, r3, r2
	mov r3, lr, asr #2
	orr r3, r3, r5, lsl #4
	strb r3, [r1, #1]
	cmp r6, ip
	bge _02058388
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r6, r1, r2
	cmp r6, ip
	blt _020582A0
_02058388:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02058234

	arm_func_start sub_02058390
sub_02058390: ; 0x02058390
	cmp r0, #0
	ldrne r1, _020583AC ; =0x0214196C
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _020583AC ; =0x0214196C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020583AC: .word 0x0214196C
	arm_func_end sub_02058390

	arm_func_start sub_020583B0
sub_020583B0: ; 0x020583B0
	cmp r0, #0
	ldrne r2, _0205848C ; =0x0214196C
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _02058480
	ldr r0, _0205848C ; =0x0214196C
	ldr r0, [r0]
	cmp r0, #0x16
	addls pc, pc, r0, lsl #2
	b _02058478
_020583DC: ; jump table
	b _02058478 ; case 0
	b _02058458 ; case 1
	b _02058438 ; case 2
	b _02058438 ; case 3
	b _02058438 ; case 4
	b _02058438 ; case 5
	b _0205843C ; case 6
	b _02058448 ; case 7
	b _02058438 ; case 8
	b _02058458 ; case 9
	b _02058450 ; case 10
	b _02058450 ; case 11
	b _02058450 ; case 12
	b _02058460 ; case 13
	b _02058468 ; case 14
	b _02058470 ; case 15
	b _02058468 ; case 16
	b _02058470 ; case 17
	b _02058468 ; case 18
	b _02058470 ; case 19
	b _02058470 ; case 20
	b _02058450 ; case 21
	b _02058444 ; case 22
_02058438:
	b _02058468
_0205843C:
	mov r0, #3
	b _0205847C
_02058444:
	b _02058470
_02058448:
	mov r0, #4
	b _0205847C
_02058450:
	mov r0, #1
	b _0205847C
_02058458:
	mov r0, #7
	b _0205847C
_02058460:
	mov r0, #5
	b _0205847C
_02058468:
	mov r0, #6
	b _0205847C
_02058470:
	mov r0, #2
	b _0205847C
_02058478:
	mov r0, #0
_0205847C:
	str r0, [r1]
_02058480:
	ldr r0, _0205848C ; =0x0214196C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0205848C: .word 0x0214196C
	arm_func_end sub_020583B0

	arm_func_start sub_02058490
sub_02058490: ; 0x02058490
	ldr r0, _020584AC ; =0x0214196C
	ldr r1, [r0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
	.align 2, 0
_020584AC: .word 0x0214196C
	arm_func_end sub_02058490

	arm_func_start sub_020584B0
sub_020584B0: ; 0x020584B0
	ldr r0, _020584C8 ; =0x0214196C
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_020584C8: .word 0x0214196C
	arm_func_end sub_020584B0

	arm_func_start sub_020584CC
sub_020584CC: ; 0x020584CC
	ldr r2, _020584E0 ; =0x0214196C
	ldr r3, [r2]
	cmp r3, #9
	stmneia r2, {r0, r1}
	bx lr
	.align 2, 0
_020584E0: .word 0x0214196C
	arm_func_end sub_020584CC

	arm_func_start sub_020584E4
sub_020584E4: ; 0x020584E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _0205851C ; =0x02005050
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_02004EB0
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #1
	str r4, [sp]
	bl sub_02058520
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205851C: .word 0x02005050
	arm_func_end sub_020584E4

	arm_func_start sub_02058520
sub_02058520: ; 0x02058520
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	ldr r1, [sp, #0x28]
	mov r0, r3
	mov r8, r2
	mov r6, #0
	bl sub_020586D0
	blx OS_InitTick
	blx OS_InitAlarm
	blx RTC_Init
	mov r0, #2
	mov r1, #0x1000
	bl sub_020586E4
	movs r7, r0
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_02056F48
	mov r4, r0
	bl sub_02057580
	cmp r0, #0
	beq _02058584
	mov r0, r7
	bl sub_02057300
	mov r6, #1
_02058584:
	mov r5, #2
	mov fp, #0
	mov r0, r5
	mov r1, r7
	mov r2, fp
	bl sub_02058728
	cmp r4, #0
	bge _020585B0
	cmp r6, #0
	moveq r5, #3
	b _020585BC
_020585B0:
	mov r5, #1
	cmp r6, #0
	moveq r5, fp
_020585BC:
	mov r0, sl
	blx sub_02169DF8
	ldr r4, _02058660 ; =0x02141974
	ldr r0, _02058664 ; =sub_020587E4
	ldr r1, _02058668 ; =sub_02058814
	ldr r2, _0205866C ; =sub_020587F8
	ldr r3, _02058670 ; =sub_0205882C
	str r8, [r4]
	blx sub_0216DDC8
	cmp sb, #0
	beq _020585F4
	ldr r0, _02058674 ; =0x021917BC
	mov r1, sb
	bl sub_02085DB8
_020585F4:
	cmp sl, #0
	bne _0205862C
	ldr r4, _02058678 ; =0x02188FE4
	ldr r3, _0205867C ; =0x0209B0D8
	mov r2, #9
_02058608:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _02058608
	ldrb r0, [r3]
	strb r0, [r4]
	b _02058650
_0205862C:
	ldr r4, _02058678 ; =0x02188FE4
	ldr r3, _02058680 ; =0x0209B0EC
	mov r2, #0xf
_02058638:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _02058638
_02058650:
	mov r0, #1
	bl sub_02058694
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02058660: .word 0x02141974
_02058664: .word sub_020587E4
_02058668: .word sub_02058814
_0205866C: .word sub_020587F8
_02058670: .word sub_0205882C
_02058674: .word 0x021917BC
_02058678: .word 0x02188FE4
_0205867C: .word 0x0209B0D8
_02058680: .word 0x0209B0EC
	arm_func_end sub_02058520

	arm_func_start sub_02058684
sub_02058684: ; 0x02058684
	ldr r0, _02058690 ; =0x02141974
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02058690: .word 0x02141974
	arm_func_end sub_02058684

	arm_func_start sub_02058694
sub_02058694: ; 0x02058694
	ldr r1, _020586A0 ; =0x02141974
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_020586A0: .word 0x02141974
	arm_func_end sub_02058694

	arm_func_start sub_020586A4
sub_020586A4: ; 0x020586A4
	sub r0, r0, #0x20
	bx lr
	arm_func_end sub_020586A4

	arm_func_start sub_020586AC
sub_020586AC: ; 0x020586AC
	ldr r2, _020586BC ; =0x4457434D
	str r1, [r0, #4]
	str r2, [r0], #0x20
	bx lr
	.align 2, 0
_020586BC: .word 0x4457434D
	arm_func_end sub_020586AC

	arm_func_start sub_020586C0
sub_020586C0: ; 0x020586C0
	stmdb sp!, {r3, lr}
	bl sub_020586A4
	ldr r0, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020586C0

	arm_func_start sub_020586D0
sub_020586D0: ; 0x020586D0
	ldr r2, _020586E0 ; =0x0214197C
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
	.align 2, 0
_020586E0: .word 0x0214197C
	arm_func_end sub_020586D0

	arm_func_start sub_020586E4
sub_020586E4: ; 0x020586E4
	ldr ip, _020586F0 ; =sub_020586F4
	mov r2, #0x20
	bx ip
	.align 2, 0
_020586F0: .word sub_020586F4
	arm_func_end sub_020586E4

	arm_func_start sub_020586F4
sub_020586F4: ; 0x020586F4
	stmdb sp!, {r4, lr}
	ldr r3, _02058724 ; =0x0214197C
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_020586AC
	ldmia sp!, {r4, pc}
	.align 2, 0
_02058724: .word 0x0214197C
	arm_func_end sub_020586F4

	arm_func_start sub_02058728
sub_02058728: ; 0x02058728
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r1
	bl sub_020586A4
	mov r1, r0
	ldr r0, _02058760 ; =0x0214197C
	ldr r2, [r1, #4]
	ldr r3, [r0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_02058760: .word 0x0214197C
	arm_func_end sub_02058728

	arm_func_start sub_02058764
sub_02058764: ; 0x02058764
	stmdb sp!, {r3, lr}
	mov ip, #0x20
	str ip, [sp]
	bl sub_02058778
	ldmia sp!, {r3, pc}
	arm_func_end sub_02058764

	arm_func_start sub_02058778
sub_02058778: ; 0x02058778
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r7, r1
	ldr r2, [sp, #0x18]
	mov r1, r5
	mov r8, r0
	bl sub_020586F4
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	beq _020587DC
	mov r0, r7
	bl sub_020586C0
	mov r6, r0
	cmp r6, r5
	movls r5, r6
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl sub_02058728
_020587DC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02058778

	arm_func_start sub_020587E4
sub_020587E4: ; 0x020587E4
	ldr ip, _020587F4 ; =sub_020586E4
	mov r1, r0
	mov r0, #9
	bx ip
	.align 2, 0
_020587F4: .word sub_020586E4
	arm_func_end sub_020587E4

	arm_func_start sub_020587F8
sub_020587F8: ; 0x020587F8
	mov r2, r1
	mov r1, r0
	ldr ip, _02058810 ; =sub_02058764
	mov r3, r2
	mov r0, #9
	bx ip
	.align 2, 0
_02058810: .word sub_02058764
	arm_func_end sub_020587F8

	arm_func_start sub_02058814
sub_02058814: ; 0x02058814
	ldr ip, _02058828 ; =sub_02058728
	mov r1, r0
	mov r0, #9
	mov r2, #0
	bx ip
	.align 2, 0
_02058828: .word sub_02058728
	arm_func_end sub_02058814

	arm_func_start sub_0205882C
sub_0205882C: ; 0x0205882C
	ldr ip, _0205883C ; =sub_020586F4
	mov r2, r0
	mov r0, #9
	bx ip
	.align 2, 0
_0205883C: .word sub_020586F4
	arm_func_end sub_0205882C

	arm_func_start sub_02058840
sub_02058840: ; 0x02058840
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02058840

	arm_func_start sub_02058854
sub_02058854: ; 0x02058854
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02058A38 ; =0x02141984
	mov r7, r0
	ldr r0, [r1]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl DC_InvalidateRange
	ldrh r0, [r7, #2]
	cmp r0, #0
	ldreqh r0, [r7, #8]
	cmpeq r0, #5
	bne _02058A04
	ldrh r0, [r7, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _02058A04
_02058894:
	add r0, r7, r5, lsl #2
	ldr r3, [r0, #0x10]
	ldrb r0, [r3, #0x4a]
	add r0, r0, #0x10
	cmp r0, #0x80
	ldreqh r0, [r3, #0x40]
	cmpeq r0, #1
	ldreq r1, [r3, #0x44]
	ldreq r0, _02058A3C ; =0x00000857
	cmpeq r1, r0
	bne _020589F4
	ldr r0, _02058A38 ; =0x02141984
	mov r4, #0
	ldr ip, [r0]
	mov r2, r4
	add r1, ip, #0x1000
	ldr r0, [r1, #0xa88]
	cmp r0, #0
	bls _0205890C
	ldrh r6, [r3, #0x48]
_020588E4:
	add r0, ip, r2, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x68]
	cmp r0, r6
	moveq r4, #1
	beq _0205890C
	ldr r0, [r1, #0xa88]
	add r2, r2, #1
	cmp r2, r0
	blo _020588E4
_0205890C:
	cmp r4, #1
	beq _020589F4
	ldr r4, _02058A38 ; =0x02141984
	mov r2, #0x70
	ldr ip, [r4]
	add r1, ip, #0x1000
	add r0, ip, #0x348
	ldr r1, [r1, #0xa8c]
	add r0, r0, #0x1000
	mla r6, r1, r2, r0
	add r2, ip, #0x96
	add r1, ip, #0x294
	add r0, r2, #0x1c00
	add r1, r1, #0x1800
	add r2, r2, #0x1a00
	str r6, [sp]
	bl sub_02058D44
	cmp r0, #0
	beq _020589F4
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldr r6, [r4]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl sub_02058840
	add r1, r6, #0x1000
	ldr r1, [r1, #0xa8c]
	add r2, r7, r5, lsl #2
	add r1, r6, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r3, [r4]
	ldr r1, [r2, #0x10]
	add r0, r3, #0x1000
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r3, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r4]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_020589F4:
	ldrh r0, [r7, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _02058894
_02058A04:
	ldr r1, _02058A38 ; =0x02141984
	mov r2, #2
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02058A38: .word 0x02141984
_02058A3C: .word 0x00000857
	arm_func_end sub_02058854

	arm_func_start sub_02058A40
sub_02058A40: ; 0x02058A40
	ldr r0, _02058A48 ; =0x00001DA0
	bx lr
	.align 2, 0
_02058A48: .word 0x00001DA0
	arm_func_end sub_02058A40

	arm_func_start sub_02058A4C
sub_02058A4C: ; 0x02058A4C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _02058AC8 ; =0x02141984
	str r0, [r7]
	bl sub_02058A40
	mov r2, r0
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, [r7]
	ldr r1, _02058ACC ; =0x0000A001
	add r0, r0, #0x1000
	str r4, [r0, #0xa90]
	ldr r0, [r7]
	add r0, r0, #0x1a00
	strh r4, [r0, #0x94]
	ldr r0, [r7]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	blx MATHi_CRC16InitTableRev
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	blx sub_020813C4
	cmp r0, #2
	moveq r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02058AC8: .word 0x02141984
_02058ACC: .word 0x0000A001
	arm_func_end sub_02058A4C

	arm_func_start sub_02058AD0
sub_02058AD0: ; 0x02058AD0
	stmdb sp!, {r4, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, _02058B0C ; =0x02141984
	mov r3, #3
	ldr r1, [r2]
	mov r4, #0
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	str r4, [r2]
	blx sub_02081448
	cmp r0, #2
	moveq r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02058B0C: .word 0x02141984
	arm_func_end sub_02058AD0

	arm_func_start sub_02058B10
sub_02058B10: ; 0x02058B10
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _02058BC0 ; =0x02141984
	mov r1, #0x400
	ldr r0, [r4]
	add r2, r0, #0xf00
	add r0, r0, #0x1000
	str r2, [r0, #0x300]
	ldr r0, [r4]
	add r0, r0, #0x1300
	strh r1, [r0, #4]
	blx sub_020810CC
	ldr r1, [r4]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	blx sub_020811A4
	ldr r1, [r4]
	mov r5, #1
	add r1, r1, #0x1300
	strh r0, [r1, #8]
	ldr r0, [r4]
	mov r1, #0xff
	add r0, r0, #0x1300
	strh r5, [r0, #0x10]
	ldr r0, [r4]
	mov r2, #6
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _02058BC4 ; =sub_02058854
	add r1, r1, #0x1000
	str r6, [r1, #0x344]
	ldr r1, [r4]
	add r1, r1, #0x1000
	str r5, [r1, #0xa90]
	ldr r1, [r4]
	add r1, r1, #0x1300
	blx sub_020815C8
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02058BC0: .word 0x02141984
_02058BC4: .word sub_02058854
	arm_func_end sub_02058B10

	arm_func_start sub_02058BC8
sub_02058BC8: ; 0x02058BC8
	stmdb sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _02058BFC ; =0x02141984
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	blx sub_020816B4
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02058BFC: .word 0x02141984
	arm_func_end sub_02058BC8

	arm_func_start sub_02058C00
sub_02058C00: ; 0x02058C00
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _02058C98 ; =0x02141984
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	blt _02058C3C
	ldr r0, [r0, #0xa88]
	cmp r6, r0
	blt _02058C44
_02058C3C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02058C44:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x78
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	ldr r0, [r7]
	mov r2, #0x70
	add r0, r0, r6, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r5, #6
	strh r0, [r5, #4]
	ldr r0, [r7]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r6, r2, r0
	bl MI_CpuCopy8
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02058C98: .word 0x02141984
	arm_func_end sub_02058C00

	arm_func_start sub_02058C9C
sub_02058C9C: ; 0x02058C9C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02058D40 ; =0x02141984
	mov r5, r0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r1, r6
	mov r2, #0x780
	bl MI_CpuFill8
	mov r4, r6
	mov r0, #0x78
_02058CD8:
	mul r1, r6, r0
	add r6, r6, #1
	str r4, [r5, r1]
	cmp r6, #0x10
	blt _02058CD8
	ldr r8, _02058D40 ; =0x02141984
	ldr r0, [r8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _02058D38
	mov r6, #0x78
	mvn r7, #0
_02058D0C:
	mla r1, r4, r6, r5
	mov r0, r4
	bl sub_02058C00
	cmp r0, r7
	beq _02058D38
	ldr r0, [r8]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r4, r0
	blt _02058D0C
_02058D38:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02058D40: .word 0x02141984
	arm_func_end sub_02058C9C

	arm_func_start sub_02058D44
sub_02058D44: ; 0x02058D44
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x30]
	mov sl, r0
	movs r7, r3
	mov sb, r1
	cmpne sl, #0
	mov r8, r2
	cmpne sb, #0
	cmpne r8, #0
	cmpne r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #0x70
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x50
	bl MI_CpuCopy8
	add r4, sp, #0
	mov fp, #4
	ldr r0, _02058E3C ; =0x020940D8
	mov r1, r4
	mov r2, fp
	bl MI_CpuCopy8
	add r0, r7, #6
	mov r2, fp
	add r1, sp, #4
	bl MI_CpuCopy8
	mov r1, r4
	mov r0, sl
	mov r2, #8
	bl sub_02039988
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r6
	bl sub_02039A08
	mov r4, #0x6e
	mov r1, sb
	mov r0, r8
	mov r2, r6
	mov r3, r4
	blx MATHi_CRC16UpdateRev
	mov r0, r8
	mov r2, r4
	mov r1, r6
	blx MATH_CalcCRC16
	ldrh r1, [r6, #0x6e]
	cmp r0, r1
	cmpne r1, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02058E3C: .word 0x020940D8
	arm_func_end sub_02058D44

	arm_func_start sub_02058E40
sub_02058E40: ; 0x02058E40
	mov r2, #0
_02058E44:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _02058E58
	cmp r1, #0x7e
	bls _02058E60
_02058E58:
	mov r0, #0
	bx lr
_02058E60:
	add r2, r2, #1
	cmp r2, #0xa
	blt _02058E44
	mov r0, #1
	bx lr
	arm_func_end sub_02058E40

	arm_func_start sub_02058E74
sub_02058E74: ; 0x02058E74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x66]
	tst r0, #2
	beq _02058EA8
	add r0, r4, #0x20
	bl sub_02058E40
	cmp r0, #0
	beq _02058EA8
	ldrb r0, [r4, #0x65]
	cmp r0, #3
	movls r0, #1
	ldmlsia sp!, {r4, pc}
_02058EA8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02058E74

	arm_func_start sub_02058EB0
sub_02058EB0: ; 0x02058EB0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x10
	mvn r6, #0
	bl sub_0205A78C
	mov r5, #1
	mov r7, r0
	mov r0, r5
	bl sub_0205A78C
	ldrb r1, [r0, #0xb]
	bic r1, r1, #0xf
	orr r1, r1, #1
	strb r1, [r0, #0xb]
	bl sub_0205A83C
	cmp r0, #3
	beq _02058F04
	cmp r0, #4
	beq _02058F60
	cmp r0, #5
	beq _02058FB4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02058F04:
	ldrh r1, [r8, #0xa]
	add r0, r7, #0x1000
	ldrb r5, [r0, #0x4c1]
	cmp r1, #0
	ldrneb r0, [r8, #0xc]
	cmpne r0, #0
	bne _02058F2C
	ldrh r0, [r8, #0x36]
	bl sub_0205C4E4
	b _02059000
_02058F2C:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _02058F5C
	ldrh r0, [r8, #0x36]
	bl sub_0205C4E4
_02058F40:
	add r0, r7, #0x1000
	ldrb r1, [r0, #0x4c0]
	mov r0, r8
	add r2, r7, #0x900
	bl sub_0205914C
	mov r6, r0
	b _02059000
_02058F5C:
	b _02058F40
_02058F60:
	add r0, r7, #0x1000
	ldrb r2, [r0, #0x4bf]
	mov r1, #0xc0
	mov r0, r8
	mla r1, r2, r1, r7
	add r1, r1, #0xc00
	ldrh r2, [r1, #0x56]
	mov r1, r7
	sub r2, r2, #1
	and r5, r2, #0xff
	bl sub_020591C8
	movs r6, r0
	bmi _02059000
	add r0, r7, #0x1000
	ldrb r1, [r0, #0x4bf]
	add r0, r7, #0xf7
	add r2, r0, #0xb00
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _02059000
_02058FB4:
	add r3, r7, #0x1000
	ldrb r0, [r3, #0x4bf]
	add r1, r7, #0x900
	mov r4, #0x24
	mla r2, r0, r4, r1
	mov r1, r5
	mov r0, r8
	ldrb r5, [r3, #0x4c1]
	bl sub_0205914C
	movs r6, r0
	bmi _02059000
	add r0, r7, #0x1000
	ldrb r0, [r0, #0x4bf]
	add r2, r7, #0x900
	mul r1, r0, r4
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_02059000:
	cmp r6, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl sub_0205925C
	mov r1, r7
	bl sub_020594D4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02058EB0

	arm_func_start sub_02059028
sub_02059028: ; 0x02059028
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _02059058
	cmp r0, #4
	bne _02059080
_02059058:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02059080
	add r0, r5, #0xc
	bl sub_0205D074
	cmp r0, #1
	moveq r0, #0x12
	ldmeqia sp!, {r3, r4, r5, pc}
_02059080:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _0205909C
	cmp r0, #5
	bne _020590C4
_0205909C:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020590C4
	add r0, r5, #0xc
	bl sub_0205CF80
	cmp r0, #1
	moveq r0, #0x13
	ldmeqia sp!, {r3, r4, r5, pc}
_020590C4:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02059028

	arm_func_start sub_020590CC
sub_020590CC: ; 0x020590CC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205913C
	mov r0, r4
	mov r1, #0x30
	bl sub_02703208
	cmp r0, #0
	bne _0205913C
	ldr r1, _02059148 ; =0x020940DC
	add r2, sp, #0
	ldrb ip, [r1]
	ldrb r3, [r1, #1]
	mov r0, r4
	strb ip, [sp]
	strb r3, [sp, #1]
	ldrb ip, [r1, #2]
	ldrb r3, [r1, #3]
	mov r1, #0xdd
	strb ip, [sp, #2]
	strb r3, [sp, #3]
	bl sub_02703250
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
_0205913C:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02059148: .word 0x020940DC
	arm_func_end sub_020590CC

	arm_func_start sub_0205914C
sub_0205914C: ; 0x0205914C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _02059174
	bl sub_02059028
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02059174:
	cmp r5, #0
	mov r8, #0
	ble _020591C0
	ldrh sb, [r6, #0xa]
	and r7, sb, #0xff
_02059188:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _020591B0
	mov r2, sb
	add r0, r6, #0xc
	add r1, r4, #4
	bl sub_02086014
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020591B0:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _02059188
_020591C0:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205914C

	arm_func_start sub_020591C8
sub_020591C8: ; 0x020591C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldrh r2, [sb, #0xa]
	mov r8, r1
	cmp r2, #0x20
	bne _020591EC
	bl sub_02059028
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020591EC:
	add r0, r8, #0x1000
	ldrb r7, [r0, #0x4c2]
	mov r5, #0
	cmp r7, #0
	ble _02059254
	ldrh r6, [sb, #0xa]
	add r0, r8, #0x2c
	add r4, r0, #0xc00
	mov sl, #0xc0
_02059210:
	mul r1, r5, sl
	add r0, r8, r1
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x2a]
	cmp r6, r0
	bne _02059248
	mov r2, r6
	add r0, sb, #0xc
	add r1, r4, r1
	bl sub_02086014
	cmp r0, #0
	addeq r0, r8, r5, lsl #2
	ldreqb r0, [r0, #0xbf5]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02059248:
	add r5, r5, #1
	cmp r5, r7
	blt _02059210
_02059254:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020591C8

	arm_func_start sub_0205925C
sub_0205925C: ; 0x0205925C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	str r3, [sp, #8]
	add r3, r3, #0x1000
	ldrb r4, [r3, #0x4c2]
	str r0, [sp]
	mvn r0, #0
	mov r5, r1
	str r2, [sp, #4]
	cmp r4, #0
	mov r6, #1
	str r0, [sp, #0xc]
	mov r7, #0
	ble _02059384
	ldr r0, [sp, #8]
	ldrb fp, [r5, #4]
	add r1, r0, #0x2c
	add r2, r0, #0x24
	add r0, r1, #0xc00
	str r0, [sp, #0x14]
	add r0, r2, #0xc00
	str r0, [sp, #0x10]
_020592B4:
	mov r0, #0xc0
	mul sb, r7, r0
	ldr r0, [sp, #0x10]
	mov r2, #0
	add sl, r0, sb
	ldrb r0, [r0, sb]
	mov r8, r2
	mov r3, r2
	cmp fp, r0
	ldreqb r1, [r5, #5]
	ldreqb r0, [sl, #1]
	mov ip, r2
	mov lr, r2
	cmpeq r1, r0
	moveq r8, r6
	cmp r8, #0
	beq _02059308
	ldrb r1, [r5, #6]
	ldrb r0, [sl, #2]
	cmp r1, r0
	moveq lr, r6
_02059308:
	cmp lr, #0
	beq _02059320
	ldrb r1, [r5, #7]
	ldrb r0, [sl, #3]
	cmp r1, r0
	moveq ip, r6
_02059320:
	cmp ip, #0
	beq _02059338
	ldrb r1, [r5, #8]
	ldrb r0, [sl, #4]
	cmp r1, r0
	moveq r3, r6
_02059338:
	cmp r3, #0
	beq _02059350
	ldrb r0, [sl, #5]
	ldrb r1, [r5, #9]
	cmp r1, r0
	moveq r2, r6
_02059350:
	cmp r2, #0
	beq _02059378
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, #0xa]
	add r1, r0, sb
	add r0, r5, #0xc
	bl sub_02086014
	cmp r0, #0
	streq r7, [sp, #0xc]
	beq _02059384
_02059378:
	add r7, r7, #1
	cmp r7, r4
	blt _020592B4
_02059384:
	ldr r0, [sp, #0xc]
	mov r1, r5
	cmn r0, #1
	bne _020593CC
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	and r0, r0, #0xff
	bl sub_020593E4
	ldr r0, [sp, #8]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x4c2]
	cmp r1, #0xa
	addlo r1, r1, #1
	strlob r1, [r0, #0x4c2]
	mov r0, #0xa
	str r0, [sp, #0xc]
	b _020593D8
_020593CC:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0205944C
_020593D8:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205925C

	arm_func_start sub_020593E4
sub_020593E4: ; 0x020593E4
	stmdb sp!, {r4, lr}
	add ip, r3, #0x1000
	ldrb lr, [ip, #0x4bc]
	add ip, r3, #0x1c
	strb r0, [ip, #0xc01]
	mov r0, lr, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	add r3, r3, #0x3a0
	ldrh r4, [r1, #2]
	bne _02059424
	mov r0, r4, asr #2
	tst r4, #2
	andne r4, r0, #0xff
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
_02059424:
	ldrb lr, [ip, #0xc03]
	mov r0, r1
	and r1, r2, #0x7f
	bic r2, lr, #0x7f
	orr r2, r2, r1
	add r1, r3, #0x1000
	strb r4, [ip, #0xc02]
	strb r2, [ip, #0xc03]
	blx sub_0215C8B0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020593E4

	arm_func_start sub_0205944C
sub_0205944C: ; 0x0205944C
	stmdb sp!, {r4, lr}
	add ip, r3, #0x1000
	ldrb r4, [ip, #0x4bc]
	mov ip, #0xc0
	mul ip, r0, ip
	add lr, r3, #0x3f4
	mov r4, r4, lsl #0x1a
	add lr, lr, #0x800
	mov r4, r4, lsr #0x1f
	cmp r4, #1
	add r0, lr, r0, lsl #2
	add r3, r3, #0xc20
	ldrh r4, [r1, #2]
	bne _02059498
	tst r4, #2
	mov r4, r4, asr #2
	andne r4, r4, #0xff
	addeq r4, r4, #0x19
	andeq r4, r4, #0xff
_02059498:
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	cmp r4, lr
	bls _020594C0
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_020594C0:
	mov r0, r1
	add r1, r3, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205944C

	arm_func_start sub_020594D4
sub_020594D4: ; 0x020594D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov sl, r0
	add r0, r1, #0x3f4
	add r6, r0, #0x800
	add r7, r1, #0xc20
	subs sb, sl, #1
	mov r5, #1
	mov r4, #0xc0
	bmi _02059694
	add fp, r1, #0x1000
_02059500:
	ldrb r0, [fp, #0x4bc]
	mov r8, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _0205954C
	mla r0, sl, r4, r7
	bl sub_020590CC
	cmp r0, #1
	bne _0205954C
	add r0, r6, sl, lsl #2
	ldrb r1, [r0, #2]
	add r0, r6, sb, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	bhs _02059544
	b _020595E4
_02059544:
	mov r8, r5
	b _02059610
_0205954C:
	add r1, r6, sl, lsl #2
	ldrb r0, [r1, #1]
	cmp r0, #0x13
	blo _020595B8
	cmp r0, #0x16
	bhi _020595B8
	ldrb r0, [r1, #2]
	add r1, r6, sb, lsl #2
	ldrb r3, [r1, #2]
	cmp r0, r3
	blo _02059610
	ldrb r2, [r1, #1]
	cmp r2, #0x13
	blo _0205958C
	cmp r2, #0x16
	bls _020595B4
_0205958C:
	add r0, r6, sb, lsl #2
	ldrb r0, [r0, #3]
	ldrb ip, [r6, sb, lsl #2]
	mov r1, r0, lsl #0x18
	add r2, ip, r2
	add r2, r3, r2
	mov r0, r0, lsl #0x19
	add r0, r2, r0, lsr #25
	adds r0, r0, r1, lsr #31
	bne _02059610
_020595B4:
	b _02059544
_020595B8:
	add r0, r6, sl, lsl #2
	ldrb r2, [r0, #2]
	add r1, r6, sb, lsl #2
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _020595FC
	ldrb r0, [fp, #0x4bc]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020595F8
_020595E4:
	mla r0, sb, r4, r7
	bl sub_020590CC
	cmp r0, #0
	moveq r8, r5
	b _02059610
_020595F8:
	b _02059544
_020595FC:
	ldrb r0, [r1, #1]
	cmp r0, #0x13
	blo _02059610
	cmp r0, #0x16
	movls r8, r5
_02059610:
	cmp r8, #1
	bne _0205968C
	add r8, r6, sb, lsl #2
	mov r0, r8
	add r1, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r8, r6, sl, lsl #2
	mov r0, r8
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r0, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mul r8, sb, r4
	add r0, r7, r8
	add r1, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	mul r8, sl, r4
	add r0, r7, r8
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	add r0, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	mov sl, sb
_0205968C:
	subs sb, sb, #1
	bpl _02059500
_02059694:
	mov r4, #0
	mov r0, r4
	add r1, r6, #0x28
	mov r2, #4
	bl MIi_CpuClear32
	mov r0, r4
	add r1, r7, #0x780
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020594D4

	arm_func_start sub_020596C0
sub_020596C0: ; 0x020596C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	ldrsh r1, [r4]
	cmp r1, #5
	bne _02059748
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _02059708
	cmp r1, #0xf
	beq _02059718
	cmp r1, #0x11
	beq _02059728
	b _02059738
_02059708:
	add r0, r0, #0x1000
	mov r1, #1
	strb r1, [r0, #0x4c4]
	ldmia sp!, {r4, pc}
_02059718:
	add r0, r0, #0x1000
	mov r1, #2
	strb r1, [r0, #0x4c4]
	ldmia sp!, {r4, pc}
_02059728:
	add r0, r0, #0x1000
	mov r1, #3
	strb r1, [r0, #0x4c4]
	ldmia sp!, {r4, pc}
_02059738:
	add r0, r0, #0x1000
	mov r1, #4
	strb r1, [r0, #0x4c4]
	ldmia sp!, {r4, pc}
_02059748:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl sub_02058EB0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020596C0

	arm_func_start sub_0205975C
sub_0205975C: ; 0x0205975C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _020597A0
	bl sub_020597DC
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmn r0, #1
	bne _020597D4
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_020597A0:
	cmp r0, #0xe
	bne _020597BC
	blx sub_0216B24C
	blx sub_0216B1D4
	mov r0, #0xc
	strb r0, [r4]
	b _020597D4
_020597BC:
	cmp r0, #0x12
	bhs _020597D4
	bl sub_02059870
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_020597D4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205975C

	arm_func_start sub_020597DC
sub_020597DC: ; 0x020597DC
	stmdb sp!, {r4, lr}
	blx sub_0215C22C
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02059868
_020597F0: ; jump table
	b _02059824 ; case 0
	b _0205982C ; case 1
	b _02059868 ; case 2
	b _02059834 ; case 3
	b _02059868 ; case 4
	b _02059868 ; case 5
	b _0205983C ; case 6
	b _02059868 ; case 7
	b _02059868 ; case 8
	b _02059844 ; case 9
	b _02059868 ; case 10
	b _02059854 ; case 11
	b _0205984C ; case 12
_02059824:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205982C:
	blx sub_0215BCE0
	b _02059868
_02059834:
	blx sub_0215BE00
	b _02059868
_0205983C:
	blx sub_0215BF14
	b _02059868
_02059844:
	blx sub_0215C0AC
	b _02059868
_0205984C:
	blx sub_0215C150
	b _02059868
_02059854:
	mov r4, #0
	mov r0, r4
	bl sub_0205A85C
	sub r0, r4, #1
	ldmia sp!, {r4, pc}
_02059868:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020597DC

	arm_func_start sub_02059870
sub_02059870: ; 0x02059870
	stmdb sp!, {r3, lr}
	ldr r0, _020598B0 ; =0x0218546C
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	blx sub_02157714
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	blx sub_0215800C
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020598B0: .word 0x0218546C
	arm_func_end sub_02059870

	arm_func_start sub_020598B4
sub_020598B4: ; 0x020598B4
	stmdb sp!, {r4, lr}
	bl sub_0205A83C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	cmp r4, #7
	beq _020598DC
	cmp r4, #8
	beq _020598E4
	b _020598EC
_020598DC:
	bl sub_020598F4
	b _020598E8
_020598E4:
	bl sub_02059A00
_020598E8:
	mov r4, r0
_020598EC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020598B4

	arm_func_start sub_020598F4
sub_020598F4: ; 0x020598F4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r1, r5, #0x1000
	ldrb r2, [r1, #0x4c3]
	add r3, r5, #0xc20
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl sub_02059B64
	add r1, r5, #0x1000
	strb r0, [r1, #0x4bd]
	add r2, r5, #0x68
	add r0, r2, #0x1400
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x4bd]
	add r2, r5, #0x68
	mov r0, r5
	add r2, r2, #0x1400
	bl sub_02059D48
	cmp r0, #0
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x4bb]
	bic r1, r1, #0xc
	beq _020599B8
	orr r1, r1, #4
	strb r1, [r0, #0x4bb]
	ldrh r1, [r4, #0x2c]
	mov r1, r1, asr #4
	tst r1, #1
	bne _0205998C
	ldrb r1, [r0, #0x4c3]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0xbf4]
	ldmia sp!, {r3, r4, r5, pc}
_0205998C:
	ldrb r1, [r0, #0x4bd]
	cmp r1, #0x12
	ldreqb r1, [r4, #0x15]
	cmpeq r1, #0
	bne _020599E8
	ldrb r1, [r0, #0x4c3]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0xbf4]
	ldmia sp!, {r3, r4, r5, pc}
_020599B8:
	strb r1, [r0, #0x4bb]
	ldrh r1, [r4, #0x2c]
	mov r1, r1, asr #4
	and r1, r1, #1
	cmp r1, #1
	bne _020599E8
	ldrb r1, [r0, #0x4c3]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0xbf4]
	ldmia sp!, {r3, r4, r5, pc}
_020599E8:
	add r0, r5, #0x1000
	mov r1, #0
	strb r1, [r0, #0x4c5]
	strb r1, [r0, #0x4c4]
	mov r0, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020598F4

	arm_func_start sub_02059A00
sub_02059A00: ; 0x02059A00
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	blx sub_0215C22C
	add r1, r8, #0x1000
	ldrb r3, [r1, #0x4c3]
	mov r2, #0xc0
	cmp r0, #3
	add r6, r8, #0xc20
	smulbb r5, r3, r2
	bne _02059B0C
	mov r0, r8
	bl sub_02059D08
	add r1, r8, #0x1000
	ldrb r2, [r1, #0x4c5]
	mov r7, r0
	add r0, r2, #1
	and r2, r0, #0xff
	strb r0, [r1, #0x4c5]
	cmp r2, #3
	bls _02059A70
	ldrb r0, [r1, #0x4c3]
	strb r4, [r1, #0x4c5]
	mov r1, #1
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0xbf4]
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059A70:
	cmp r2, #1
	beq _02059AE8
	ldrb r0, [r1, #0x4c4]
	cmp r0, #1
	ldreqb r0, [r1, #0x4bb]
	biceq r0, r0, #0xc
	streqb r0, [r1, #0x4bb]
	beq _02059AE8
	cmp r0, #2
	bne _02059AB4
	ldrb r0, [r1, #0x4c3]
	strb r4, [r1, #0x4c5]
	mov r1, #3
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0xbf4]
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059AB4:
	cmp r0, #3
	bne _02059AD8
	ldrb r0, [r1, #0x4c3]
	strb r4, [r1, #0x4c5]
	mov r1, #4
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0xbf4]
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059AD8:
	cmp r2, #3
	ldreqb r0, [r1, #0x4bb]
	biceq r0, r0, #0xc
	streqb r0, [r1, #0x4bb]
_02059AE8:
	mov r0, r8
	bl sub_02059D28
	mov r2, r0
	add r1, r8, #0x68
	add r0, r6, r5
	add r1, r1, #0x1400
	orr r2, r7, r2
	blx sub_0215BF78
	b _02059B5C
_02059B0C:
	cmp r0, #9
	bne _02059B30
	strb r4, [r1, #0x4c5]
	blx OS_GetTick
	add r2, r8, #0x1000
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	mov r0, #0xa
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059B30:
	cmp r0, #0xb
	bne _02059B48
	mov r0, r4
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059B48:
	ble _02059B5C
	mov r0, #4
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02059B5C:
	mov r0, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02059A00

	arm_func_start sub_02059B64
sub_02059B64: ; 0x02059B64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	add r0, sl, #0x1000
	ldrb r1, [r0, #0x4c3]
	mov sb, #0
	add r2, sl, #0xc20
	mov r0, #0xc0
	str sb, [sp, #4]
	mla r5, r1, r0, r2
	bl sub_0205B9AC
	add r1, sl, #0x1000
	ldrb r1, [r1, #0x4bc]
	mov r8, r0
	mov r0, r1, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _02059C90
	ldrh r0, [r5, #0xa]
	cmp r0, #0x20
	bne _02059BD0
	mov r0, r5
	bl sub_02059028
	cmp r0, #0
	str r0, [sp, #4]
	addgt sb, sb, #1
	strle sb, [sp, #4]
	b _02059BF0
_02059BD0:
	cmp r0, #8
	bne _02059BF0
	mov r0, r5
	bl sub_0205B958
	cmp r0, #0
	str r0, [sp, #4]
	addne sb, sb, #1
	streq sb, [sp, #4]
_02059BF0:
	cmp r8, #0
	mov r6, #0
	ble _02059CF8
	add r0, sl, #0xbc
	add r1, sl, #0x104
	add fp, r0, #0x1400
	add r0, r1, #0x800
	add r4, sl, #0x900
	str r0, [sp, #8]
_02059C14:
	mov r0, #0x24
	mul r7, r6, r0
	add r0, sl, r7
	str r0, [sp]
	ldrh r2, [r5, #0xa]
	ldrb r0, [r0, #0x903]
	cmp r2, r0
	bne _02059C80
	ldr r1, [sp, #8]
	add r0, r5, #0xc
	add r1, r1, r7
	bl sub_02086014
	cmp r0, #0
	bne _02059C80
	cmp sb, #0
	ldreq r0, [sp]
	ldreqb r0, [r0, #0x901]
	streq r0, [sp, #4]
	beq _02059C7C
	ldrb r0, [r4, r7]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4, r7]
	ldrb r0, [fp]
	orr r0, r0, #0x40
	strb r0, [fp]
_02059C7C:
	add sb, sb, #1
_02059C80:
	add r6, r6, #1
	cmp r6, r8
	blt _02059C14
	b _02059CF8
_02059C90:
	mov r5, sb
	cmp r8, #0
	ble _02059CE4
	add r3, sl, #0x900
	mov r1, #0x24
_02059CA4:
	mul r4, sb, r1
	ldrb r0, [r3, r4]
	mov r2, r0, lsl #0x18
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	bne _02059CD8
	cmp r5, #0
	biceq r0, r0, #0xf0
	streqb r0, [r3, r4]
	addeq r0, sl, r4
	ldreqb r0, [r0, #0x901]
	add r5, r5, #1
	streq r0, [sp, #4]
_02059CD8:
	add sb, sb, #1
	cmp sb, r8
	blt _02059CA4
_02059CE4:
	cmp r5, #1
	addeq r0, sl, #0x1000
	ldreqb r1, [r0, #0x4bc]
	biceq r1, r1, #0x40
	streqb r1, [r0, #0x4bc]
_02059CF8:
	ldr r0, [sp, #4]
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02059B64

	arm_func_start sub_02059D08
sub_02059D08: ; 0x02059D08
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x4bb]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end sub_02059D08

	arm_func_start sub_02059D28
sub_02059D28: ; 0x02059D28
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x4bb]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end sub_02059D28

	arm_func_start sub_02059D48
sub_02059D48: ; 0x02059D48
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0x14
	add r3, r0, #0x300
	addls pc, pc, r1, lsl #2
	b _02059EF0
_02059D60: ; jump table
	b _02059DBC ; case 0
	b _02059DB8 ; case 1
	b _02059DB4 ; case 2
	b _02059DE8 ; case 3
	b _02059DE4 ; case 4
	b _02059DE0 ; case 5
	b _02059E04 ; case 6
	b _02059E00 ; case 7
	b _02059DFC ; case 8
	b _02059E5C ; case 9
	b _02059E58 ; case 10
	b _02059E54 ; case 11
	b _02059E7C ; case 12
	b _02059E78 ; case 13
	b _02059E74 ; case 14
	b _02059E8C ; case 15
	b _02059E88 ; case 16
	b _02059E84 ; case 17
	b _02059E9C ; case 18
	b _02059EC8 ; case 19
	b _02059EF0 ; case 20
_02059DB4:
	add r0, r0, #0x100
_02059DB8:
	add r0, r0, #0x100
_02059DBC:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
_02059DC4:
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	add r1, r4, #2
	mov r2, #0x10
_02059DD4:
	strb r3, [r4]
_02059DD8:
	bl MI_CpuCopy8
	b _02059EF0
_02059DE0:
	add r0, r0, #0x100
_02059DE4:
	add r0, r0, #0x100
_02059DE8:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	b _02059DD4
_02059DFC:
	add r3, r3, #0x200
_02059E00:
	add r3, r3, #0x200
_02059E04:
	ldrb r0, [r3, #0xe7]
	cmp r0, #0x10
	beq _02059E20
	add r0, r0, #0xee
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02059E48
_02059E20:
	ldrb ip, [r3, #0x181]
_02059E24:
	mov r2, #0x20
	add r0, r3, #0x100
_02059E2C:
	add r1, r4, #2
	strb ip, [r4]
	strb r2, [r4, #1]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x22]
	b _02059EF0
_02059E48:
	ldrb r2, [r3, #0xe6]
	add r0, r3, #0x80
	b _02059DC4
_02059E54:
	add r3, r3, #0x200
_02059E58:
	add r3, r3, #0x200
_02059E5C:
	mov ip, #1
	add r0, r3, #0xd1
	add r1, r4, #2
	mov r2, #5
	strb ip, [r4]
	b _02059DD8
_02059E74:
	add r3, r3, #0x200
_02059E78:
	add r3, r3, #0x200
_02059E7C:
	mov ip, #4
	b _02059E24
_02059E84:
	add r3, r3, #0x200
_02059E88:
	add r3, r3, #0x200
_02059E8C:
	mov ip, #6
	mov r2, #0x20
	add r0, r3, #0x120
	b _02059E2C
_02059E9C:
	mov r1, #2
	strb r1, [r4]
	add r1, r0, #0x1000
	add r0, r0, #0x2c
	ldrb r1, [r1, #0x4c3]
	add r2, r0, #0xc00
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl sub_0205D098
	b _02059EF0
_02059EC8:
	mov r1, #2
	strb r1, [r4]
	add r1, r0, #0x1000
	add r0, r0, #0x2c
	ldrb r1, [r1, #0x4c3]
	add r2, r0, #0xc00
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl sub_0205CFBC
_02059EF0:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02059D48

	arm_func_start sub_02059F04
sub_02059F04: ; 0x02059F04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r0
	mov r6, #1
	mov r4, #0xcc
	ldr r2, [r7]
	mov r0, r6
	mov r1, r4
	blx r2
	ldr r8, _0205A1E8 ; =0x02141988
	mov r1, r0
	mov r5, #0
	mov r0, r5
	mov r2, r4
	str r1, [r8, #0xc]
	bl MIi_CpuClear32
	ldr r3, [r8, #0xc]
	ldr r1, [r7]
	ldr r4, _0205A1EC ; =0x000014D8
	str r1, [r3]
	ldr r2, [r7, #4]
	mov r0, #0x10
	str r2, [r3, #4]
	strb r6, [r3, #9]
	strb r6, [r3, #0x16]
	mov r1, r4
	strb r6, [r3, #8]
	bl sub_0205A5B0
	mov sl, #0x4800
	str r0, [r8, #0x10]
	mov r0, #2
	mov r1, sl
	bl sub_0205A5B0
	mov sb, #0x58
	str r0, [r8]
	mov r0, #4
	mov r1, sb
	bl sub_0205A5B0
	mov r6, #0xc
	str r0, [r8, #4]
	mov r0, #8
	mov r1, r6
	bl sub_0205A5B0
	str r0, [r8, #8]
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r0, r5
	bl MIi_CpuClear32
	ldr r1, [r8]
	mov r2, sl
	mov r0, r5
	bl MIi_CpuClear32
	ldr r1, [r8, #4]
	mov r2, sb
	mov r0, r5
	bl MIi_CpuClear32
	ldr r1, [r8, #8]
	mov r2, r6
	mov r0, r5
	bl MIi_CpuClear32
	ldr r4, [r8, #0x10]
	ldrb r2, [r7, #8]
	add r1, r4, #0x1000
	mov r0, r4
	strb r2, [r1, #0x4ba]
	ldrb r3, [r1, #0x4bb]
	ldrb r2, [r7, #9]
	bic r3, r3, #3
	and r2, r2, #3
	orr r2, r3, r2
	strb r2, [r1, #0x4bb]
	ldr r2, [r7, #0xc]
	str r2, [r1, #0x4c8]
	ldrb r2, [r7, #0x10]
	strb r2, [r1, #0x4cc]
	ldr r3, [r8, #8]
	ldr r2, [r7]
	str r2, [r3]
	ldr r2, [r7, #4]
	stmib r3, {r2, r5}
	ldrb r3, [r1, #0x4bc]
	ldrb r2, [r7, #0xa]
	bic r3, r3, #0xf
	and r2, r2, #0xf
	orr r2, r3, r2
	strb r2, [r1, #0x4bc]
	and r2, r2, #0xff
	bic r3, r2, #0x10
	ldrb r2, [r7, #0xb]
	mov r2, r2, lsl #0x1c
	mov r2, r2, lsr #0x1c
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #27
	strb r2, [r1, #0x4bc]
	and r2, r2, #0xff
	bic r3, r2, #0x20
	ldrb r2, [r7, #0xb]
	mov r2, r2, lsl #0x18
	mov r2, r2, lsr #0x1c
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #26
	strb r2, [r1, #0x4bc]
	bl sub_02056A58
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205A178
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x4bc]
	add r0, r4, #0x300
	bic r2, r2, #0x80
	strb r2, [r1, #0x4bc]
	bl sub_02056A6C
	add r0, r4, #0x1000
	ldrb r2, [r0, #0x4bc]
	mov r1, r2, lsl #0x1c
	movs r1, r1, lsr #0x1c
	bne _0205A124
	ldrb r0, [r4, #0x3e7]
	cmp r0, #0x10
	blo _0205A0E8
	cmp r0, #0xff
	bne _0205A110
_0205A0E8:
	ldrb r0, [r4, #0x5e7]
	cmp r0, #0x10
	blo _0205A0FC
	cmp r0, #0xff
	bne _0205A110
_0205A0FC:
	ldrb r0, [r4, #0x7e7]
	cmp r0, #0x10
	blo _0205A178
	cmp r0, #0xff
	beq _0205A178
_0205A110:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bc]
	orr r1, r1, #0x80
	strb r1, [r0, #0x4bc]
	b _0205A178
_0205A124:
	cmp r1, #0xb
	bne _0205A13C
	ldrb r1, [r4, #0x3e7]
	cmp r1, #0x10
	blo _0205A178
	b _0205A16C
_0205A13C:
	cmp r1, #0xc
	bne _0205A154
	ldrb r1, [r4, #0x5e7]
	cmp r1, #0x10
	blo _0205A178
	b _0205A16C
_0205A154:
	cmp r1, #0xd
	bne _0205A178
	ldrb r1, [r4, #0x7e7]
	cmp r1, #0x10
	blo _0205A178
	ldrb r1, [r4, #0x5e7]
_0205A16C:
	cmp r1, #0xff
	orrne r1, r2, #0x80
	strneb r1, [r0, #0x4bc]
_0205A178:
	blx OS_IsRunOnTwl
	cmp r0, #0
	mov r1, #0x4800
	beq _0205A1B8
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _0205A1A4
	b _0205A1B8
_0205A1A4:
	ldr r0, _0205A1E8 ; =0x02141988
	mov r2, #2
	ldr r0, [r0]
	blx sub_0215BBF8
	b _0205A1C4
_0205A1B8:
	ldr r0, _0205A1E8 ; =0x02141988
	ldr r0, [r0]
	blx sub_0215BBEC
_0205A1C4:
	cmp r0, #1
	beq _0205A1D4
	cmp r0, #4
	ble _0205A1E0
_0205A1D4:
	bl sub_0205A664
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0205A1E0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205A1E8: .word 0x02141988
_0205A1EC: .word 0x000014D8
	arm_func_end sub_02059F04

	arm_func_start sub_0205A1F0
sub_0205A1F0: ; 0x0205A1F0
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0205A83C
	mov r5, r0
	cmp r5, #1
	bne _0205A238
	bl sub_0205AB78
	cmp r0, #0
	beq _0205A22C
	bl sub_0205ABE8
	cmp r0, #0
	beq _0205A224
	bl sub_0205D568
_0205A220:
	b _0205A29C
_0205A224:
	mov r0, #8
	b _0205A230
_0205A22C:
	mov r0, #7
_0205A230:
	bl sub_0205A85C
	b _0205A298
_0205A238:
	cmp r5, #7
	bhs _0205A260
	bl OS_DisableInterrupts
	mov r4, r0
	bl sub_0205C37C
	mov r5, r0
	bl sub_0205A7D4
	mov r0, r4
	bl OS_RestoreInterrupts
	b _0205A2A0
_0205A260:
	cmp r5, #9
	bhs _0205A270
	bl sub_020598B4
	b _0205A220
_0205A270:
	cmp r5, #0xa
	bhs _0205A280
	bl sub_0205C2A4
	b _0205A220
_0205A280:
	cmp r5, #0x10
	bhs _0205A290
	bl sub_0205D5F4
	b _0205A220
_0205A290:
	cmp r5, #0x11
	bne _0205A2A0
_0205A298:
	bl sub_0205B65C
_0205A29C:
	mov r5, r0
_0205A2A0:
	mov r0, r5
	bl sub_0205A7D4
	cmp r5, #0x10
	bne _0205A2C4
	bl sub_0205AAD4
	mov r4, r0
	bl sub_0205AAA0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_0205A2C4:
	cmp r5, #0x12
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_0205AAA0
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205A1F0

	arm_func_start sub_0205A2DC
sub_0205A2DC: ; 0x0205A2DC
	stmdb sp!, {r3, lr}
	bl sub_0205A83C
	cmp r0, #1
	movls r0, #0
	ldmlsia sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmloia sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmloia sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmloia sp!, {r3, pc}
	moveq r0, #5
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	bl sub_0205B680
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205A2DC

	arm_func_start sub_0205A348
sub_0205A348: ; 0x0205A348
	stmdb sp!, {r4, lr}
	mov r4, #0xff
	bl sub_0205A83C
	cmp r0, #0xa
	blo _0205A36C
	cmp r0, #0x10
	ldrls r0, _0205A374 ; =0x02141988
	ldrls r0, [r0, #0xc]
	ldrlsb r4, [r0, #0x17]
_0205A36C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205A374: .word 0x02141988
	arm_func_end sub_0205A348

	arm_func_start sub_0205A378
sub_0205A378: ; 0x0205A378
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl sub_0205A83C
	cmp r0, #0xa
	blo _0205A3C4
	cmp r0, #0x10
	bhi _0205A3C4
	ldr r0, _0205A3CC ; =0x02141988
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _0205A3C4
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r4, #1
_0205A3C4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205A3CC: .word 0x02141988
	arm_func_end sub_0205A378

	arm_func_start sub_0205A3D0
sub_0205A3D0: ; 0x0205A3D0
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl sub_0205A78C
	ldrb r0, [r0, #0x23]
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205A3D0

	arm_func_start sub_0205A3E4
sub_0205A3E4: ; 0x0205A3E4
	stmdb sp!, {r3, lr}
	bl sub_0205A83C
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _0205A408
	bl sub_0205A664
	mov r0, #1
	ldmia sp!, {r3, pc}
_0205A408:
	add r0, sp, #0
	bl sub_0205975C
	ldrb r0, [sp]
	bl sub_0205A7D4
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205A3E4

	arm_func_start sub_0205A420
sub_0205A420: ; 0x0205A420
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #1
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_0205A78C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r5, r0
	ldr r0, [sp, #0x20]
	mov r2, #0xa
	cmp r0, #0
	beq _0205A468
	add r1, r4, #0x18
	bl MI_CpuCopy8
	b _0205A474
_0205A468:
	add r0, r4, #0x18
	mov r1, #0
	bl MI_CpuFill8
_0205A474:
	ldr r3, [sp, #0x24]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	strb r3, [r4, #0x22]
	bl sub_0205A494
	strh r6, [r5, #0xea]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205A420

	arm_func_start sub_0205A494
sub_0205A494: ; 0x0205A494
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x10
	mov r7, r1
	mov r6, r2
	bl sub_0205A78C
	mov r4, r0
	add r2, r4, #0x1000
	ldrb r3, [r2, #0x4bc]
	mov r5, #0
	mov r1, r5
	bic r3, r3, #0xf
	orr r3, r3, #1
	strb r3, [r2, #0x4bc]
	mov r2, #0xf0
	bl MI_CpuFill8
_0205A4D4:
	ldrb r1, [r8, r5]
	cmp r1, #0
	beq _0205A4F4
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, #0x40]
	cmp r5, #0x20
	blt _0205A4D4
_0205A4F4:
	cmp r7, #0
	cmpne r6, #0
	ldreqb r0, [r4, #0xe6]
	biceq r0, r0, #3
	streqb r0, [r4, #0xe6]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #1
	moveq r2, #5
	beq _0205A524
	mov r2, #0xd
	cmp r6, #2
	movne r2, #0x10
_0205A524:
	mov r0, r7
	add r1, r4, #0x80
	bl MI_CpuCopy8
	ldrb r1, [r4, #0xe6]
	and r0, r6, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0205A494

	arm_func_start sub_0205A54C
sub_0205A54C: ; 0x0205A54C
	stmdb sp!, {r3, lr}
	cmp r1, #0x20
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_0205CF80
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205A54C

	arm_func_start sub_0205A564
sub_0205A564: ; 0x0205A564
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl sub_0205A78C
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205A564

	arm_func_start sub_0205A590
sub_0205A590: ; 0x0205A590
	stmdb sp!, {r3, lr}
	mov r0, #0x10
	bl sub_0205A78C
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x4bc]
	bic r1, r1, #0x80
	strb r1, [r0, #0x4bc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205A590

	arm_func_start sub_0205A5B0
sub_0205A5B0: ; 0x0205A5B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl sub_0205A78C
	ldrb r2, [r0, #8]
	tst r2, r6
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	and r1, r6, #0xff
	orr r1, r2, r1
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r4
	mov r1, r5
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205A5B0

	arm_func_start sub_0205A5F8
sub_0205A5F8: ; 0x0205A5F8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl sub_0205A78C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #8]
	tst r2, r7
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, r7
	and r1, r1, #0xff
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	blx r3
	cmp r7, #1
	ldreq r0, _0205A660 ; =0x02141988
	moveq r1, #0
	streq r1, [r0, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205A660: .word 0x02141988
	arm_func_end sub_0205A5F8

	arm_func_start sub_0205A664
sub_0205A664: ; 0x0205A664
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl sub_0205A78C
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _0205A6B0
	mov r0, #0x10
	bl sub_0205A78C
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _0205A784 ; =0x000014D8
	and r0, r3, #0xef
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r5
	blx r3
_0205A6B0:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _0205A6E4
	mov r0, #8
	bl sub_0205A78C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xf7
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_0205A6E4:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _0205A718
	mov r0, #4
	bl sub_0205A78C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfb
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_0205A718:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _0205A74C
	mov r0, #2
	bl sub_0205A78C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfd
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x4800
	blx r3
_0205A74C:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	and r0, r0, #0xfe
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0xcc
	blx r3
	ldr r0, _0205A788 ; =0x02141988
	mov r1, #0
	str r1, [r0, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205A784: .word 0x000014D8
_0205A788: .word 0x02141988
	arm_func_end sub_0205A664

	arm_func_start sub_0205A78C
sub_0205A78C: ; 0x0205A78C
	ldr r1, _0205A7D0 ; =0x02141988
	tst r0, #1
	ldrne r0, [r1, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, [r1]
	bxne lr
	tst r0, #4
	ldrne r0, [r1, #4]
	bxne lr
	tst r0, #8
	ldrne r0, [r1, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, [r1, #0x10]
	moveq r0, #0
	bx lr
	.align 2, 0
_0205A7D0: .word 0x02141988
	arm_func_end sub_0205A78C

	arm_func_start sub_0205A7D4
sub_0205A7D4: ; 0x0205A7D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl sub_0205A78C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r5, r0
	strb r6, [r4, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x16]
	cmp r6, r0
	strhib r6, [r4, #0x16]
	cmphi r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x4bd]
	bl sub_0205AA40
	strb r0, [r4, #0x15]
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x4c3]
	add r0, r5, r0, lsl #2
	ldrb r0, [r0, #0xbf4]
	strb r0, [r4, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205A7D4

	arm_func_start sub_0205A83C
sub_0205A83C: ; 0x0205A83C
	ldr r0, _0205A858 ; =0x02141988
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneb r0, [r0, #9]
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205A858: .word 0x02141988
	arm_func_end sub_0205A83C

	arm_func_start sub_0205A85C
sub_0205A85C: ; 0x0205A85C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl sub_0205A78C
	mov r4, r0
	str r5, [r4, #0xc]
	bl sub_0205A83C
	strb r0, [r4, #0xa]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205A85C

	arm_func_start sub_0205A880
sub_0205A880: ; 0x0205A880
	ldr r0, _0205A890 ; =0x02141988
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0205A890: .word 0x02141988
	arm_func_end sub_0205A880

	arm_func_start sub_0205A894
sub_0205A894: ; 0x0205A894
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0205A924 ; =0x02141988
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _0205A8B4
	bl sub_0205AA40
	mov r2, r0
_0205A8B4:
	ldr r4, _0205A924 ; =0x02141988
	mov r6, #0
	ldr r1, [r4, #0xc]
	mov r0, r6
	strb r2, [r1, #0x17]
	blx sub_0215CB48
	movs r5, r0
	beq _0205A90C
	mov r1, #0x20
	bl DC_InvalidateRange
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r1, r1, #0x18
	bl sub_0205CFE8
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	mov r1, r6
	add r0, r0, #0x18
	mov r2, #0xa
	bl MI_CpuFill8
	ldmia sp!, {r4, r5, r6, pc}
_0205A90C:
	ldr r0, [r4, #0xc]
	mov r1, r6
	add r0, r0, #0x18
	mov r2, #0xa
	bl MI_CpuFill8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205A924: .word 0x02141988
	arm_func_end sub_0205A894

	arm_func_start sub_0205A928
sub_0205A928: ; 0x0205A928
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	bl sub_0205A78C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r5, r0
	mov r0, r7
	bl sub_0205AA40
	mov r6, r0
	cmp r6, #0xa
	blo _0205AA14
	cmp r6, #0xc
	bhi _0205AA14
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205AA14
	sub r0, r6, #0xa
	and r6, r0, #0xff
	add r3, r5, r6, lsl #9
	ldrb r1, [r3, #0x482]
	add r0, r5, #0x84
	add r0, r0, #0x400
	strb r1, [r4, #0x24]
	ldrb r2, [r3, #0x483]
	add r1, r3, #0x400
	add r0, r0, r6, lsl #9
	strb r2, [r4, #0x25]
	ldrh r3, [r1, #0xe8]
	add r1, r4, #0x28
	mov r2, #0x64
	strh r3, [r4, #0x26]
	bl MI_CpuCopy8
	add r0, r5, #0x300
	mov r7, #0x20
	mov r2, r7
	add r0, r0, r6, lsl #9
	add r1, r4, #0x8c
	bl MI_CpuCopy8
	add r0, r5, #0x320
	mov r2, r7
	add r0, r0, r6, lsl #9
	add r1, r4, #0xac
	bl MI_CpuCopy8
	add r1, r5, r6, lsl #9
	ldrb r0, [r1, #0x3e7]
	add r0, r0, #0xf0
	and r0, r0, #0xff
	cmp r0, #3
	ldrlsb r0, [r1, #0x481]
	strlsb r0, [r4, #0x23]
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r1
	ldrb r0, [r0, #0x3e6]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	strb r0, [r4, #0x23]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205AA14:
	add r0, r7, #0xee
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, #2
	strlsb r0, [r4, #0x23]
	addhi r0, r5, r6, lsl #8
	ldrhib r0, [r0, #0xe6]
	movhi r0, r0, lsl #0x1e
	movhi r0, r0, lsr #0x1e
	strhib r0, [r4, #0x23]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205A928

	arm_func_start sub_0205AA40
sub_0205AA40: ; 0x0205AA40
	cmp r0, #0x12
	subhs r0, r0, #0xf
	andhs r0, r0, #0xff
	bxhs lr
	cmp r0, #0xf
	subhs r0, r0, #5
	andhs r0, r0, #0xff
	bxhs lr
	cmp r0, #0xc
	subhs r0, r0, #2
	andhs r0, r0, #0xff
	bxhs lr
	cmp r0, #9
	addhs r0, r0, #1
	andhs r0, r0, #0xff
	bxhs lr
	cmp r0, #6
	addhs r0, r0, #4
	andhs r0, r0, #0xff
	bxhs lr
	cmp r0, #3
	subhs r0, r0, #3
	andhs r0, r0, #0xff
	bx lr
	arm_func_end sub_0205AA40

	arm_func_start sub_0205AAA0
sub_0205AAA0: ; 0x0205AAA0
	stmdb sp!, {r4, lr}
	ldr r4, _0205AACC ; =0x02141988
	mov r0, #8
	ldr r1, [r4, #8]
	mov r2, #0xc
	bl sub_0205A5F8
	ldr r1, [r4, #0x10]
	ldr r2, _0205AAD0 ; =0x000014D8
	mov r0, #0x10
	bl sub_0205A5F8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205AACC: .word 0x02141988
_0205AAD0: .word 0x000014D8
	arm_func_end sub_0205AAA0

	arm_func_start sub_0205AAD4
sub_0205AAD4: ; 0x0205AAD4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _0205AB74 ; =0x02141988
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	add r2, r8, #0x1000
	ldrb r7, [r2, #0x4c3]
	ldrb r3, [r2, #0x4bd]
	add r0, r8, #0x24
	smulbb r4, r7, r1
	add r5, r0, #0xc00
	cmp r3, #0x12
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb sb, [r2, #0x4c2]
	mov r6, #0
	cmp sb, #0
	bls _0205AB6C
	mov sl, r1
_0205AB1C:
	cmp r6, r7
	beq _0205AB5C
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0xbf5]
	cmp r0, #0x12
	bhs _0205AB5C
	mul r1, r6, sl
	add r0, r8, r1
	add r0, r0, #0xc00
	ldrh r2, [r0, #0x2a]
	add r0, r5, r4
	add r1, r5, r1
	bl sub_02086014
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0205AB5C:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, sb
	blo _0205AB1C
_0205AB6C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205AB74: .word 0x02141988
	arm_func_end sub_0205AAD4

	arm_func_start sub_0205AB78
sub_0205AB78: ; 0x0205AB78
	stmdb sp!, {r4, lr}
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205ABDC
	ldr r0, _0205ABE4 ; =0x02141988
	ldr r0, [r0, #0x10]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x4cc]
	cmp r0, #0
	bne _0205ABCC
	blx OS_IsAgreeEULA
	cmp r0, #0
	beq _0205ABD4
	blx OS_GetAgreedEULAVersion
	cmp r0, #0
	beq _0205ABD4
	blx OS_GetAgreedEULAVersion
	mov r4, r0
	blx OS_GetROMHeaderEULAVersion
	cmp r4, r0
	blo _0205ABD4
_0205ABCC:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205ABD4:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0205ABDC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205ABE4: .word 0x02141988
	arm_func_end sub_0205AB78

	arm_func_start sub_0205ABE8
sub_0205ABE8: ; 0x0205ABE8
	stmdb sp!, {r3, lr}
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205AC1C
	blx OS_IsAvailableWireless
	cmp r0, #1
	bne _0205AC14
	blx OS_IsParentalControledApp
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_0205AC14:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0205AC1C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205ABE8

	arm_func_start sub_0205AC24
sub_0205AC24: ; 0x0205AC24
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0205AC84 ; =0x0214199C
	mov r8, r0
	ldr r2, [r4, #4]
	mov r7, r1
	mov r6, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuFill8
	mov r1, #1
	mov r0, r6
	strh r7, [r8, #8]
	strh r1, [r8, #0xa]
	strh r1, [r8, #4]
	strh r5, [r8, #6]
	strb r5, [r8, #0x11]
	str r5, [r8, #0x14]
	strb r5, [r8, #0x10]
	str r8, [r4, #4]
	blx sub_02158470
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205AC84: .word 0x0214199C
	arm_func_end sub_0205AC24

	arm_func_start sub_0205AC88
sub_0205AC88: ; 0x0205AC88
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _0205ACC8 ; =0x0214199C
	mov r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0x10c0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r0, _0205ACCC ; =0x0000FFFF
	cmp r5, r0
	ldmgtia sp!, {r3, r4, r5, pc}
	blx OS_IsRunOnTwl
	cmp r0, #0
	ldrne r0, [r4, #4]
	strne r5, [r0, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205ACC8: .word 0x0214199C
_0205ACCC: .word 0x0000FFFF
	arm_func_end sub_0205AC88

	arm_func_start sub_0205ACD0
sub_0205ACD0: ; 0x0205ACD0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r4, _0205AD84 ; =0x0214199C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205AD70
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	add r5, sp, #0
	mov r1, #0
	mov r0, r5
	mov r2, #0x14
	bl MI_CpuFill8
	ldr ip, [r4, #4]
	ldr r3, _0205AD88 ; =sub_020586E4
	ldrh r1, [ip, #8]
	ldr r2, _0205AD8C ; =sub_02058728
	mov r0, r5
	strb r1, [sp, #8]
	ldrh r4, [ip, #0xa]
	mov r1, #2
	strb r4, [sp, #9]
	ldr r4, [ip, #0xc]
	str r4, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x10]
	strb r2, [sp, #0x10]
	strh r1, [ip, #4]
	bl sub_02059F04
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r1, _0205AD90 ; =0xFFFF3BE9
	mov r0, #9
	bl sub_020584CC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
_0205AD70:
	ldr r1, _0205AD90 ; =0xFFFF3BE9
	mov r0, #9
	bl sub_020584CC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0205AD84: .word 0x0214199C
_0205AD88: .word sub_020586E4
_0205AD8C: .word sub_02058728
_0205AD90: .word 0xFFFF3BE9
	arm_func_end sub_0205ACD0

	arm_func_start sub_0205AD94
sub_0205AD94: ; 0x0205AD94
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_0205ACD0
	ldr r0, _0205AE00 ; =0x0214199C
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0x11]
	bl sub_0205AF98
	cmp r0, #2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #4]
	bl sub_0205A420
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205AE00: .word 0x0214199C
	arm_func_end sub_0205AD94

	arm_func_start sub_0205AE04
sub_0205AE04: ; 0x0205AE04
	stmdb sp!, {r4, lr}
	ldr r4, _0205AE54 ; =0x0214199C
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r1]
	cmp r0, #0
	beq _0205AE4C
	mov r0, #3
	strh r0, [r1, #4]
	bl sub_0205AF98
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
_0205AE4C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205AE54: .word 0x0214199C
	arm_func_end sub_0205AE04

	arm_func_start sub_0205AE58
sub_0205AE58: ; 0x0205AE58
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _0205AF94 ; =0x0214199C
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0205AF20
_0205AE84: ; jump table
	b _0205AF20 ; case 0
	b _0205AE9C ; case 1
	b _0205AEB8 ; case 2
	b _0205AEFC ; case 3
	b _0205AF18 ; case 4
	b _0205AF18 ; case 5
_0205AE9C:
	mov r0, #0
	str r0, [r1]
	bl sub_0205BF04
	ldr r1, [r4, #4]
	add sp, sp, #8
	str r0, [r1, #0x14]
	ldmia sp!, {r4, pc}
_0205AEB8:
	bl sub_0205C1EC
	ldr ip, [r4, #4]
	mov r0, #8
	add r1, ip, #0x5e
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r3, [ip, #0x5c]
	ldr r2, [ip, #0x58]
	add r0, ip, #0x18
	add r1, ip, #0x38
	bl sub_0205AD94
	bl sub_0205A590
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0205AEFC:
	bl sub_0205C1EC
	ldr r0, [r4, #4]
	mvn r1, #0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
_0205AF18:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0205AF20:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _0205AF44
	bl sub_0205A1F0
	ldr r1, _0205AF94 ; =0x0214199C
	add sp, sp, #8
	ldr r1, [r1, #4]
	str r0, [r1]
	ldmia sp!, {r4, pc}
_0205AF44:
	cmp r0, #4
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	blx sub_0215C22C
	cmp r0, #9
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, _0205AF94 ; =0x0214199C
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205AF94: .word 0x0214199C
	arm_func_end sub_0205AE58

	arm_func_start sub_0205AF98
sub_0205AF98: ; 0x0205AF98
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _0205B18C ; =0x0214199C
	mov r5, #1
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0205B028
_0205AFC4: ; jump table
	b _0205B028 ; case 0
	b _0205AFDC ; case 1
	b _0205AFE4 ; case 2
	b _0205AFEC ; case 3
	b _0205B018 ; case 4
	b _0205B020 ; case 5
_0205AFDC:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205AFE4:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205AFEC:
	bl sub_0205AE58
	ldr r1, [r4]
	mov r0, #5
	bl sub_020584CC
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	mov r2, #4
	str r2, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B018:
	mov r0, #7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B020:
	mov r0, #5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B028:
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_0205A2DC
	mov r6, r0
	cmp r6, #5
	bne _0205B064
	ldr r1, [r4, #4]
	mov r0, #4
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	strh r5, [r1, #6]
	ldr r1, [r4, #4]
	strb r5, [r1, #0x11]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B064:
	cmp r6, #0
	bge _0205B184
	cmn r6, #0xa
	blt _0205B098
	ldr r0, [r4, #4]
	ldr r1, _0205B190 ; =0xFFFF3BE9
	strb r5, [r0, #0x11]
	mov r0, #9
	bl sub_020584CC
	ldr r1, [r4, #4]
	mov r0, #8
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B098:
	ldr r0, _0205B194 ; =0xFFFF3A59
	cmp r6, r0
	subne r0, r0, #0x64
	cmpne r6, r0
	bne _0205B0D0
	ldr r0, [r4, #4]
	mov r1, r6
	strb r5, [r0, #0x11]
	mov r0, #5
	bl sub_020584CC
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B0D0:
	ldr sl, [r4, #4]
	ldrb r0, [sl, #0x11]
	cmp r0, #0
	bne _0205B15C
	ldrh r7, [sl, #8]
	blx sub_02158464
	ldr r1, [r4, #4]
	mov fp, r0
	ldrb r8, [r1, #0x10]
	ldr sb, [r1, #0xc]
	str r6, [r4]
	bl sub_0205B198
	mov r1, fp, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r0, sl
	mov r1, r7
	mov r2, #1
	bl sub_0205AC24
	ldr r0, [r4, #4]
	cmp sb, #0
	strb r8, [r0, #0x10]
	beq _0205B130
	mov r0, sb
	bl sub_0205AC88
_0205B130:
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, #0x18
	bl sub_0205BE94
	ldr r0, [r4, #4]
	mov r1, #0
	str r5, [r0, #0x14]
	ldr r0, [r4, #4]
	str r1, [r0]
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B15C:
	ldr r0, [r4]
	cmp r0, r6
	movlt r6, r0
	mov r1, r6
	mov r0, #5
	bl sub_020584CC
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205B184:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205B18C: .word 0x0214199C
_0205B190: .word 0xFFFF3BE9
_0205B194: .word 0xFFFF3A59
	arm_func_end sub_0205AF98

	arm_func_start sub_0205B198
sub_0205B198: ; 0x0205B198
	stmdb sp!, {r4, lr}
	ldr r0, _0205B220 ; =0x0214199C
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _0205B1EC
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _0205B1DC
	bl sub_0205C1D0
_0205B1C8:
	bl sub_0205BF04
	sub r0, r0, #2
	cmp r0, #2
	bhi _0205B1C8
	bl sub_0205C1EC
_0205B1DC:
	ldr r0, _0205B220 ; =0x0214199C
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
_0205B1EC:
	bl sub_0205A3E4
	cmp r0, #0
	bne _0205B210
	mov r4, #0xa
_0205B1FC:
	mov r0, r4
	blx OS_Sleep
	bl sub_0205A3E4
	cmp r0, #0
	beq _0205B1FC
_0205B210:
	ldr r0, _0205B220 ; =0x0214199C
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B220: .word 0x0214199C
	arm_func_end sub_0205B198

	arm_func_start sub_0205B224
sub_0205B224: ; 0x0205B224
	ldr r0, _0205B24C ; =0x0214199C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0205B244
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_0205B244:
	mov r0, #0
	bx lr
	.align 2, 0
_0205B24C: .word 0x0214199C
	arm_func_end sub_0205B224

	arm_func_start sub_0205B250
sub_0205B250: ; 0x0205B250
	ldr ip, _0205B258 ; =sub_0215CD58
	bx ip
	.align 2, 0
_0205B258: .word sub_0215CD58
	arm_func_end sub_0205B250

	arm_func_start sub_0205B25C
sub_0205B25C: ; 0x0205B25C
	ldrsb r3, [r0]
	mov r2, #0
	cmp r3, #0x30
	blt _0205B274
	cmp r3, #0x39
	movle r2, #1
_0205B274:
	cmp r2, #0
	subne r2, r3, #0x30
	moveq r2, #0xff
	str r2, [r1, #4]
	ldr ip, _0205B298 ; =MI_CpuCopy8
	add r0, r0, #1
	add r1, r1, #0xc
	mov r2, #9
	bx ip
	.align 2, 0
_0205B298: .word MI_CpuCopy8
	arm_func_end sub_0205B25C

	arm_func_start sub_0205B29C
sub_0205B29C: ; 0x0205B29C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r1, r8
	mov r2, #0x40
	mov r5, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r5, #4]
	bl sub_0205AF98
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, r8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl sub_0205A348
	str r0, [r5]
	cmp r0, #0xff
	beq _0205B2EC
	cmp r0, #0x63
	ble _0205B300
_0205B2EC:
	mov r0, #0x63
	str r0, [r5]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205B300:
	bl OS_DisableInterrupts
	mov r4, r0
	blx sub_0215CB14
	mov r6, #6
	mov r7, r0
	mov r1, r6
	bl DC_InvalidateRange
	cmp r7, #0
	bne _0205B338
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205B338:
	mov r0, r7
	mov r2, r6
	add r1, r5, #0x37
	bl MI_CpuCopy8
	ldr r0, [r5]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	beq _0205B378
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205B3B8
	ldr r0, [r5]
	sub r0, r0, #0xa
	cmp r0, #2
	bhi _0205B3B8
_0205B378:
	add r0, sp, #0
	blx sub_0215CB48
	mov r6, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r6, #0
	bne _0205B3A8
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205B3A8:
	ldrh r2, [sp]
	mov r0, r6
	add r1, r5, #0x16
	bl MI_CpuCopy8
_0205B3B8:
	mov r0, r4
	bl OS_RestoreInterrupts
	add r4, sp, #2
	mov r0, r4
	bl sub_0205A378
	cmp r0, #0
	moveq r0, #0xff
	streq r0, [r5, #4]
	beq _0205B3E8
	mov r0, r4
	mov r1, r5
	bl sub_0205B25C
_0205B3E8:
	bl sub_0205A3D0
	str r0, [r5, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0205B29C

	arm_func_start sub_0205B3FC
sub_0205B3FC: ; 0x0205B3FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	add r5, sp, #0
	mov r8, r0
	mov r6, r2
	mov r4, #0
	mov r7, r1
	mov r0, r5
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuFill8
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	bl sub_0205A54C
	cmp r0, #0
	beq _0205B490
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl sub_0205CFE8
	cmp r0, #0
	beq _0205B490
	mov r2, #4
	mov r0, r5
	mov r1, r6
	str r2, [r6]
	bl sub_0205B25C
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205B490:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0205B3FC

	arm_func_start sub_0205B49C
sub_0205B49C: ; 0x0205B49C
	ldr r0, _0205B4A4 ; =0x00000376
	bx lr
	.align 2, 0
_0205B4A4: .word 0x00000376
	arm_func_end sub_0205B49C

	arm_func_start sub_0205B4A8
sub_0205B4A8: ; 0x0205B4A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	cmpne r6, #0
	mov r5, r2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	ldr r2, _0205B57C ; =0x00000376
	mov r1, r4
	bl MI_CpuFill8
	ldrb r0, [r6, #0x4a]
	add r0, r0, #0x10
	cmp r0, #0x80
	ldreqh r0, [r6, #0x40]
	cmpeq r0, #1
	ldreq r1, [r6, #0x44]
	ldreq r0, _0205B580 ; =0x00000857
	cmpeq r1, r0
	bne _0205B574
	add r0, r7, #6
	add r2, r7, #0x100
	ldr r1, _0205B584 ; =0x0000A001
	add r0, r0, #0x100
	strh r4, [r2, #4]
	blx MATHi_CRC16InitTableRev
	add r2, r7, #6
	add r4, r2, #0x300
	mov r0, r7
	mov r3, r6
	add r1, r7, #0x104
	add r2, r2, #0x100
	str r4, [sp]
	bl sub_02058D44
	cmp r0, #0
	beq _0205B574
	add r0, r7, #6
	add r0, r0, #0x300
	bl sub_02058E74
	cmp r0, #0
	beq _0205B574
	cmp r5, #0
	beq _0205B56C
	add r0, r7, #0x26
	mov r2, #8
	mov r1, r5
	add r0, r0, #0x300
	str r2, [r5]
	bl sub_0205B25C
_0205B56C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205B574:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205B57C: .word 0x00000376
_0205B580: .word 0x00000857
_0205B584: .word 0x0000A001
	arm_func_end sub_0205B4A8

	arm_func_start sub_0205B588
sub_0205B588: ; 0x0205B588
	ldr ip, _0205B590 ; =sub_0205B49C
	bx ip
	.align 2, 0
_0205B590: .word sub_0205B49C
	arm_func_end sub_0205B588

	arm_func_start sub_0205B594
sub_0205B594: ; 0x0205B594
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	cmpne r5, #0
	cmpne r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r1, [r5, #0xa]
	add r0, r5, #0xc
	bl sub_0205B3FC
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_0205B4A8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205B594

	arm_func_start sub_0205B5EC
sub_0205B5EC: ; 0x0205B5EC
	stmdb sp!, {r4, lr}
	bl sub_0205AE58
	bl sub_0205B224
	cmp r0, #0
	beq _0205B64C
	bl sub_0205A348
	mov r4, r0
	cmp r4, #0xff
	beq _0205B618
	cmp r4, #0x63
	bls _0205B61C
_0205B618:
	mov r4, #0x63
_0205B61C:
	blx sub_0215C22C
	cmp r0, #0xb
	bne _0205B634
	ldr r1, _0205B654 ; =0xFFFF298C
	mov r0, #9
	b _0205B63C
_0205B634:
	ldr r1, _0205B658 ; =0xFFFF2D10
	mov r0, #8
_0205B63C:
	sub r1, r1, r4
	bl sub_020584CC
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205B64C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B654: .word 0xFFFF298C
_0205B658: .word 0xFFFF2D10
	arm_func_end sub_0205B5EC

	arm_func_start sub_0205B65C
sub_0205B65C: ; 0x0205B65C
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl sub_0205A78C
	add r0, r0, #0xa
	bl sub_0205975C
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205B65C

	arm_func_start sub_0205B680
sub_0205B680: ; 0x0205B680
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl sub_0205A78C
	mov r4, r0
	bl sub_0205A880
	cmp r0, #4
	bge _0205B6A4
	bl sub_0205B6F0
	ldmia sp!, {r4, pc}
_0205B6A4:
	cmp r0, #5
	bge _0205B6B4
	bl sub_0205B734
	ldmia sp!, {r4, pc}
_0205B6B4:
	bne _0205B6C4
	mov r0, r4
	bl sub_0205B73C
	ldmia sp!, {r4, pc}
_0205B6C4:
	cmp r0, #7
	ldreq r0, _0205B6E8 ; =0xFFFF3A59
	ldmeqia sp!, {r4, pc}
	cmp r0, #8
	ldreq r0, _0205B6EC ; =0xFFFF39F5
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0205B75C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B6E8: .word 0xFFFF3A59
_0205B6EC: .word 0xFFFF39F5
	arm_func_end sub_0205B680

	arm_func_start sub_0205B6F0
sub_0205B6F0: ; 0x0205B6F0
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0205B72C
_0205B6FC: ; jump table
	b _0205B714 ; case 0
	b _0205B70C ; case 1
	b _0205B71C ; case 2
	b _0205B724 ; case 3
_0205B70C:
	mvn r0, #8
	bx lr
_0205B714:
	mvn r0, #9
	bx lr
_0205B71C:
	mvn r0, #7
	bx lr
_0205B724:
	mvn r0, #6
	bx lr
_0205B72C:
	mov r0, #0
	bx lr
	arm_func_end sub_0205B6F0

	arm_func_start sub_0205B734
sub_0205B734: ; 0x0205B734
	mvn r0, #5
	bx lr
	arm_func_end sub_0205B734

	arm_func_start sub_0205B73C
sub_0205B73C: ; 0x0205B73C
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	ldreq r0, _0205B754 ; =0xFFFF3C4D
	ldrne r0, _0205B758 ; =0xFFFF3865
	bx lr
	.align 2, 0
_0205B754: .word 0xFFFF3C4D
_0205B758: .word 0xFFFF3865
	arm_func_end sub_0205B73C

	arm_func_start sub_0205B75C
sub_0205B75C: ; 0x0205B75C
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldreqb r1, [r0, #0x15]
	cmp r2, #0xa
	and r1, r1, #0xff
	bhs _0205B7A8
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _0205B864 ; =0xFFFF3864
	subeq r3, r0, r1
	beq _0205B85C
	cmp r0, #4
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r3, r0, r1
	ldrne r0, _0205B868 ; =0xFFFF379C
	subne r3, r0, r1
	b _0205B85C
_0205B7A8:
	cmp r2, #0xd
	ldrlo r0, _0205B86C ; =0xFFFF34E0
	sublo r3, r0, r1
	blo _0205B85C
	ldr r3, [r0, #0x10]
	cmp r3, #0
	ldreq r0, _0205B870 ; =0xFFFF3CB0
	subeq r3, r0, r1
	beq _0205B85C
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	ldreq r0, _0205B874 ; =0xFFFF3224
	subeq r3, r0, r1
	beq _0205B85C
	mvn r2, #0
	cmp r3, r2
	ldreq r0, _0205B878 ; =0xFFFF347C
	subeq r3, r0, r1
	beq _0205B85C
	sub r0, r2, #1
	cmp r3, r0
	ldreq r0, _0205B87C ; =0xFFFF3418
	subeq r3, r0, r1
	beq _0205B85C
	sub r0, r2, #2
	cmp r3, r0
	ldreq r0, _0205B880 ; =0xFFFF33B4
	subeq r3, r0, r1
	beq _0205B85C
	sub r0, r2, #3
	cmp r3, r0
	ldreq r0, _0205B884 ; =0xFFFF30F8
	subeq r3, r0, r1
	beq _0205B85C
	sub r0, r2, #4
	cmp r3, r0
	ldreq r0, _0205B888 ; =0xFFFF3094
	subeq r3, r0, r1
	beq _0205B85C
	sub r0, r2, #5
	cmp r3, r0
	ldreq r0, _0205B88C ; =0xFFFF3030
	subeq r3, r0, r1
_0205B85C:
	mov r0, r3
	bx lr
	.align 2, 0
_0205B864: .word 0xFFFF3864
_0205B868: .word 0xFFFF379C
_0205B86C: .word 0xFFFF34E0
_0205B870: .word 0xFFFF3CB0
_0205B874: .word 0xFFFF3224
_0205B878: .word 0xFFFF347C
_0205B87C: .word 0xFFFF3418
_0205B880: .word 0xFFFF33B4
_0205B884: .word 0xFFFF30F8
_0205B888: .word 0xFFFF3094
_0205B88C: .word 0xFFFF3030
	arm_func_end sub_0205B75C

	arm_func_start sub_0205B890
sub_0205B890: ; 0x0205B890
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r5, r0
	cmp r4, #0
	beq _0205B8C0
	cmp r4, #1
	beq _0205B8E4
	cmp r4, #2
	beq _0205B914
	b _0205B94C
_0205B8C0:
	add r1, r5, #0x900
	mov r0, #0
	mov r2, #0x2f4
	bl MIi_CpuClear32
	mov r0, r5
	bl sub_0205B9E8
	add r1, r5, #0x1000
	strb r0, [r1, #0x4c0]
	b _0205B94C
_0205B8E4:
	bl sub_0205BDC0
	add r1, r5, #0x1000
	strb r0, [r1, #0x4c0]
	mov r0, r5
	bl sub_0205BE4C
	add r1, r5, #0x1000
	strb r0, [r1, #0x4bf]
	ldrb r0, [r1, #0x4c0]
	cmp r0, #0
	bne _0205B94C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205B914:
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x900
	mov r2, #0x2f4
	bl MIi_CpuClear32
	add r1, r5, #0x1000
	mov r0, r5
	strb r4, [r1, #0x4bf]
	bl sub_0205BA50
	add r1, r5, #0x1000
	strb r0, [r1, #0x4c0]
	tst r0, #0xff
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
_0205B94C:
	blx OS_IsRunOnTwl
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205B890

	arm_func_start sub_0205B958
sub_0205B958: ; 0x0205B958
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _0205B984
	cmp r0, #6
	bne _0205B9A0
_0205B984:
	ldr r1, _0205B9A8 ; =0x020940E0
	add r0, r4, #0xc
	mov r2, #8
	bl sub_02086014
	cmp r0, #0
	moveq r0, #0x14
	ldmeqia sp!, {r4, pc}
_0205B9A0:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B9A8: .word 0x020940E0
	arm_func_end sub_0205B958

	arm_func_start sub_0205B9AC
sub_0205B9AC: ; 0x0205B9AC
	stmdb sp!, {r3, lr}
	mov r0, #0x10
	bl sub_0205A78C
	mov r3, #0
	mov r1, #0x24
_0205B9C0:
	mla r2, r3, r1, r0
	ldrb r2, [r2, #0x903]
	cmp r2, #0
	beq _0205B9E0
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, #0x15
	blo _0205B9C0
_0205B9E0:
	mov r0, r3
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205B9AC

	arm_func_start sub_0205B9E8
sub_0205B9E8: ; 0x0205B9E8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r4, r5, #0x900
	bl sub_0205BB00
	add r1, r5, #0x1000
	ldrb r1, [r1, #0x4bc]
	mov r6, r0
	mov r0, #0x24
	mla r4, r6, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _0205BA44
	mov r5, #8
	ldr r0, _0205BA4C ; =0x020940E0
	mov r2, r5
	add r1, r4, #4
	bl MI_CpuCopy8
	add r0, r6, #1
	strb r5, [r4, #3]
	mov r1, #0x14
	strb r1, [r4, #1]
	and r6, r0, #0xff
_0205BA44:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205BA4C: .word 0x020940E0
	arm_func_end sub_0205B9E8

	arm_func_start sub_0205BA50
sub_0205BA50: ; 0x0205BA50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r5, r6, #0x900
	bl sub_0205BB00
	add r1, r6, #0x1000
	ldrb r1, [r1, #0x4bc]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _0205BAB0
	mov r7, #8
	ldr r0, _0205BAF8 ; =0x0209B10C
	mov r2, r7
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r7, [r5, #3]
	mov r1, #0x12
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_0205BAB0:
	add r0, r6, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _0205BAF0
	mov r6, #0xb
	ldr r0, _0205BAFC ; =0x020940E8
	mov r2, r6
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r6, [r5, #3]
	mov r1, #0x16
	strb r1, [r5, #1]
	and r4, r0, #0xff
_0205BAF0:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205BAF8: .word 0x0209B10C
_0205BAFC: .word 0x020940E8
	arm_func_end sub_0205BA50

	arm_func_start sub_0205BB00
sub_0205BB00: ; 0x0205BB00
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r1, r7
	mov r0, r4
	add r5, r7, #0x300
	add r6, r7, #0x900
_0205BB1C:
	add r2, r7, #0x1000
	ldrb r2, [r2, #0x4bc]
	mov r2, r2, lsl #0x1c
	movs r3, r2, lsr #0x1c
	beq _0205BB3C
	add r2, r0, #1
	cmp r3, r2
	bne _0205BBF8
_0205BB3C:
	ldrb r2, [r1, #0xe7]
	cmp r2, #0xff
	beq _0205BBF8
	mov lr, #0
_0205BB4C:
	add r2, r1, lr
	ldrb ip, [r2, #0x40]
	cmp ip, #0
	beq _0205BB74
	add r2, lr, #1
	add r3, r6, lr
	and lr, r2, #0xff
	strb ip, [r3, #4]
	cmp lr, #0x20
	blo _0205BB4C
_0205BB74:
	cmp lr, #0
	movne r2, #1
	strneb lr, [r6, #3]
	moveq r2, #0
	strneb r0, [r6, #1]
	cmp r2, #0
	addne r2, r4, #1
	andne r4, r2, #0xff
	ldrb r2, [r1, #0xe7]
	addne r6, r6, #0x24
	cmp r2, #1
	bne _0205BBF8
	mov lr, #0
_0205BBA8:
	add r2, r1, lr
	ldrb ip, [r2, #0x60]
	cmp ip, #0
	beq _0205BBD0
	add r2, lr, #1
	add r3, r6, lr
	and lr, r2, #0xff
	strb ip, [r3, #4]
	cmp lr, #0x20
	blo _0205BBA8
_0205BBD0:
	cmp lr, #0
	strneb lr, [r6, #3]
	addne r2, r0, #3
	strneb r2, [r6, #1]
	movne r2, #1
	moveq r2, #0
	cmp r2, #0
	addne r2, r4, #1
	andne r4, r2, #0xff
	addne r6, r6, #0x24
_0205BBF8:
	add r0, r0, #1
	cmp r0, #3
	add r1, r1, #0x100
	blt _0205BB1C
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205BDB8
	mov r0, #0
_0205BC18:
	add r1, r7, #0x1000
	ldrb r1, [r1, #0x4bc]
	mov r1, r1, lsl #0x1c
	movs r2, r1, lsr #0x1c
	beq _0205BC38
	add r1, r0, #0xb
	cmp r2, r1
	bne _0205BDA8
_0205BC38:
	ldrb r1, [r5, #0xe7]
	cmp r1, #0xff
	beq _0205BDA8
	mov ip, #0
_0205BC48:
	add r1, r5, ip
	ldrb r3, [r1, #0x40]
	cmp r3, #0
	beq _0205BC70
	add r1, ip, #1
	add r2, r6, ip
	and ip, r1, #0xff
	strb r3, [r2, #4]
	cmp ip, #0x20
	blo _0205BC48
_0205BC70:
	cmp ip, #0
	strneb ip, [r6, #3]
	addne r1, r0, #6
	strneb r1, [r6, #1]
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addne r1, r4, #1
	andne r4, r1, #0xff
	ldrb r1, [r5, #0xe7]
	addne r6, r6, #0x24
	cmp r1, #1
	beq _0205BCAC
	cmp r1, #0x11
	bne _0205BDA8
_0205BCAC:
	mov ip, #0
_0205BCB0:
	add r1, r5, ip
	ldrb r3, [r1, #0x60]
	cmp r3, #0
	beq _0205BCD8
	add r1, ip, #1
	add r2, r6, ip
	and ip, r1, #0xff
	strb r3, [r2, #4]
	cmp ip, #0x20
	blo _0205BCB0
_0205BCD8:
	cmp ip, #0
	strneb ip, [r6, #3]
	addne r1, r0, #9
	strneb r1, [r6, #1]
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addne r1, r4, #1
	andne r4, r1, #0xff
	addne r6, r6, #0x24
	mov ip, #0
_0205BD04:
	add r1, r5, ip
	ldrb r3, [r1, #0x140]
	cmp r3, #0
	beq _0205BD2C
	add r1, ip, #1
	add r2, r6, ip
	and ip, r1, #0xff
	strb r3, [r2, #4]
	cmp ip, #0x20
	blo _0205BD04
_0205BD2C:
	cmp ip, #0
	strneb ip, [r6, #3]
	addne r1, r0, #0xc
	strneb r1, [r6, #1]
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addne r1, r4, #1
	andne r4, r1, #0xff
	addne r6, r6, #0x24
	mov ip, #0
_0205BD58:
	add r1, r5, ip
	ldrb r3, [r1, #0x160]
	cmp r3, #0
	beq _0205BD80
	add r1, ip, #1
	add r2, r6, ip
	and ip, r1, #0xff
	strb r3, [r2, #4]
	cmp ip, #0x20
	blo _0205BD58
_0205BD80:
	cmp ip, #0
	strneb ip, [r6, #3]
	addne r1, r0, #0xf
	strneb r1, [r6, #1]
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addne r1, r4, #1
	andne r4, r1, #0xff
	addne r6, r6, #0x24
_0205BDA8:
	add r0, r0, #1
	cmp r0, #3
	add r5, r5, #0x200
	blt _0205BC18
_0205BDB8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205BB00

	arm_func_start sub_0205BDC0
sub_0205BDC0: ; 0x0205BDC0
	stmdb sp!, {r4, r5, r6, lr}
	add r4, r0, #0x1000
	ldrb r1, [r4, #0x4c2]
	mov r2, #0
	mov r3, r2
	cmp r1, #0
	ble _0205BE44
	add r1, r0, #0xf7
	add r1, r1, #0xb00
	mov ip, #0xc0
_0205BDE8:
	add r5, r0, r3, lsl #2
	ldrb r5, [r5, #0xbf4]
	cmp r5, #0
	bne _0205BE28
	mla r5, r3, ip, r0
	add lr, r5, #0xc00
	ldrh r5, [lr, #0x56]
	ldrb lr, [r1, r3, lsl #2]
	sub r6, r5, #1
	mov r5, lr, lsl #0x19
	cmp r6, r5, lsr #25
	bicne lr, lr, #0x80
	addne r2, r2, #1
	strneb lr, [r1, r3, lsl #2]
	andne r2, r2, #0xff
	bne _0205BE34
_0205BE28:
	ldrb lr, [r1, r3, lsl #2]
	orr lr, lr, #0x80
	strb lr, [r1, r3, lsl #2]
_0205BE34:
	ldrb lr, [r4, #0x4c2]
	add r3, r3, #1
	cmp r3, lr
	blt _0205BDE8
_0205BE44:
	mov r0, r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205BDC0

	arm_func_start sub_0205BE4C
sub_0205BE4C: ; 0x0205BE4C
	add r1, r0, #0x1000
	ldrb ip, [r1, #0x4c2]
	mov r3, #0
	mov r2, r3
	cmp ip, #0
	bls _0205BE8C
_0205BE64:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0xbf7]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _0205BE8C
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, ip
	blo _0205BE64
_0205BE8C:
	mov r0, r3
	bx lr
	arm_func_end sub_0205BE4C

	arm_func_start sub_0205BE94
sub_0205BE94: ; 0x0205BE94
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl sub_02058A40
	mov r6, #1
	mov r1, r0
	mov r0, r6
	bl sub_020586E4
	ldr r4, _0205BEFC ; =0x021419A4
	ldr r5, _0205BF00 ; =0x00000794
	str r0, [r4, #4]
	mov r0, r6
	mov r1, r5
	bl sub_020586E4
	mov r2, r5
	str r0, [r4]
	mov r5, #0
	mov r1, r5
	bl MI_CpuFill8
	mov r0, r6
	ldr r1, [r4]
	str r8, [r1]
	ldr r1, [r4]
	strh r7, [r1, #4]
	str r5, [r4, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205BEFC: .word 0x021419A4
_0205BF00: .word 0x00000794
	arm_func_end sub_0205BE94

	arm_func_start sub_0205BF04
sub_0205BF04: ; 0x0205BF04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r5, _0205C1B0 ; =0x021419A4
	ldr r0, [r5, #4]
	cmp r0, #0
	ldrne r2, [r5]
	cmpne r2, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r5, #8]
	mov r6, #1
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0205C1A8
_0205BF38: ; jump table
	b _0205BF68 ; case 0
	b _0205C1A8 ; case 1
	b _0205BF7C ; case 2
	b _0205C1A8 ; case 3
	b _0205BFCC ; case 4
	b _0205C01C ; case 5
	b _0205C1A8 ; case 6
	b _0205C038 ; case 7
	b _0205C1A8 ; case 8
	b _0205C0DC ; case 9
	b _0205C184 ; case 10
	b _0205C1A4 ; case 11
_0205BF68:
	str r6, [r5, #8]
	ldrh r2, [r2, #4]
	ldr r1, _0205C1B4 ; =sub_0205C240
	bl sub_02058A4C
	b _0205C194
_0205BF7C:
	ldr r0, _0205C1B8 ; =sub_0205C254
	mov r1, #3
	str r1, [r5, #8]
	bl sub_02058B10
	cmp r0, #0
	bne _0205BFC0
	ldr r1, [r5]
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #8]
	cmp r0, #0
	cmpeq r2, #0
	bne _0205C1A8
	blx OS_GetTick
	ldr r2, [r5]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _0205C1A8
_0205BFC0:
	mov r0, #0xa
	str r0, [r5, #8]
	b _0205C1A8
_0205BFCC:
	blx OS_GetTick
	ldr r4, [r5]
	mov r3, #0
	ldr r2, [r4, #8]
	ldr r4, [r4, #0xc]
	subs r7, r0, r2
	sbc r0, r1, r4
	mov r1, r0, lsl #6
	ldr r2, _0205C1BC ; =0x000082EA
	orr r1, r1, r7, lsr #26
	mov r0, r7, lsl #6
	bl sub_0208D5C4
	ldr r2, _0205C1C0 ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	movlo r0, #2
	strlo r0, [r5, #8]
	movhs r0, #5
	strhs r0, [r5, #8]
	b _0205C1A8
_0205C01C:
	ldr r0, _0205C1C4 ; =sub_0205C268
	mov r1, #6
	str r1, [r5, #8]
	bl sub_02058BC8
	cmp r0, #0
	movne r0, #0xa
	b _0205C19C
_0205C038:
	add r0, r2, #0x10
	bl sub_02058C9C
	cmp r0, #0
	movne r0, #0xa
	mov r4, #0
	strne r0, [r5, #8]
	ldr sb, _0205C1B0 ; =0x021419A4
	sub r1, r4, #1
	ldr r0, [sb]
	mov r5, r4
	str r1, [r0, #0x790]
	mov r8, #0x78
_0205C068:
	mul r7, r4, r8
	ldr r0, [sb]
	add r0, r0, #0x16
	add r0, r0, r7
	bl sub_02058E74
	cmp r0, #0
	ldrne r2, [sb]
	addne r1, r2, r7
	ldrne r0, [r1, #0x10]
	cmpne r0, #0
	beq _0205C0AC
	ldrh r0, [r1, #0x14]
	cmp r0, r5
	strhs r4, [r2, #0x790]
	ldrhs r0, [sb]
	addhs r0, r0, r7
	ldrhsh r5, [r0, #0x14]
_0205C0AC:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0205C068
	ldr r4, _0205C1B0 ; =0x021419A4
	mov r1, #8
	ldr r0, _0205C1C8 ; =sub_0205C27C
	str r1, [r4, #8]
	bl sub_02058AD0
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r4, #8]
	b _0205C1A8
_0205C0DC:
	ldr r1, [r2, #0x790]
	cmp r1, #0
	movlt r0, #0xb
	strlt r0, [r5, #8]
	blt _0205C1A8
	add r0, r2, #0x16
	mov r4, #0x78
	mla r0, r1, r4, r0
	mov r6, #0x20
	ldr r1, [r2]
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x5a
	mla r0, r3, r4, r0
	add r1, r1, #0x20
	bl MI_CpuCopy8
	ldr r1, [r5]
	mov r2, #0xa
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrb r1, [r1, #0x7b]
	str r1, [r0, #0x40]
	ldr r1, [r5]
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrh r1, [r1, #0x82]
	strh r1, [r0, #0x44]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x36
	mla r0, r3, r4, r0
	add r1, r1, #0x46
	bl MI_CpuCopy8
	mov r6, #2
	b _0205C1A8
_0205C184:
	ldr r0, _0205C1CC ; =sub_0205C290
	mov r1, #8
	str r1, [r5, #8]
	bl sub_02058AD0
_0205C194:
	cmp r0, #0
	movne r0, #0xb
_0205C19C:
	strne r0, [r5, #8]
	b _0205C1A8
_0205C1A4:
	mov r6, #3
_0205C1A8:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0205C1B0: .word 0x021419A4
_0205C1B4: .word sub_0205C240
_0205C1B8: .word sub_0205C254
_0205C1BC: .word 0x000082EA
_0205C1C0: .word 0x00000BB8
_0205C1C4: .word sub_0205C268
_0205C1C8: .word sub_0205C27C
_0205C1CC: .word sub_0205C290
	arm_func_end sub_0205BF04

	arm_func_start sub_0205C1D0
sub_0205C1D0: ; 0x0205C1D0
	ldr r0, _0205C1E8 ; =0x021419A4
	ldr r1, [r0, #8]
	cmp r1, #4
	moveq r1, #5
	streq r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C1E8: .word 0x021419A4
	arm_func_end sub_0205C1D0

	arm_func_start sub_0205C1EC
sub_0205C1EC: ; 0x0205C1EC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _0205C23C ; =0x021419A4
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0205C214
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl sub_02058728
	str r5, [r4, #4]
_0205C214:
	ldr r4, _0205C23C ; =0x021419A4
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl sub_02058728
	str r5, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C23C: .word 0x021419A4
	arm_func_end sub_0205C1EC

	arm_func_start sub_0205C240
sub_0205C240: ; 0x0205C240
	ldr r0, _0205C250 ; =0x021419A4
	mov r1, #2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C250: .word 0x021419A4
	arm_func_end sub_0205C240

	arm_func_start sub_0205C254
sub_0205C254: ; 0x0205C254
	ldr r0, _0205C264 ; =0x021419A4
	mov r1, #4
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C264: .word 0x021419A4
	arm_func_end sub_0205C254

	arm_func_start sub_0205C268
sub_0205C268: ; 0x0205C268
	ldr r0, _0205C278 ; =0x021419A4
	mov r1, #7
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C278: .word 0x021419A4
	arm_func_end sub_0205C268

	arm_func_start sub_0205C27C
sub_0205C27C: ; 0x0205C27C
	ldr r0, _0205C28C ; =0x021419A4
	mov r1, #9
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C28C: .word 0x021419A4
	arm_func_end sub_0205C27C

	arm_func_start sub_0205C290
sub_0205C290: ; 0x0205C290
	ldr r0, _0205C2A0 ; =0x021419A4
	mov r1, #0xb
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0205C2A0: .word 0x021419A4
	arm_func_end sub_0205C290

	arm_func_start sub_0205C2A4
sub_0205C2A4: ; 0x0205C2A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_0205A78C
	mov r4, r0
	mov r5, #9
	blx sub_0215C22C
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0205C374
_0205C2C8: ; jump table
	b _0205C374 ; case 0
	b _0205C374 ; case 1
	b _0205C374 ; case 2
	b _0205C2FC ; case 3
	b _0205C374 ; case 4
	b _0205C374 ; case 5
	b _0205C34C ; case 6
	b _0205C374 ; case 7
	b _0205C374 ; case 8
	b _0205C354 ; case 9
	b _0205C374 ; case 10
	b _0205C368 ; case 11
	b _0205C35C ; case 12
_0205C2FC:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bc]
	ldrb r5, [r0, #0x4be]
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x1f
	cmp r1, #1
	bne _0205C330
	ldrb r0, [r0, #0x4c3]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0xbf4]
	b _0205C374
_0205C330:
	cmp r5, #3
	blo _0205C374
	cmp r5, #5
	bhi _0205C374
	mov r0, r5
	bl sub_0205C520
	b _0205C374
_0205C34C:
	blx sub_0215BF14
	b _0205C374
_0205C354:
	blx sub_0215C0AC
	b _0205C374
_0205C35C:
	blx sub_0215C150
	mov r0, #4
	b _0205C36C
_0205C368:
	mov r0, #0
_0205C36C:
	bl sub_0205A85C
	mov r5, #0x11
_0205C374:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C2A4

	arm_func_start sub_0205C37C
sub_0205C37C: ; 0x0205C37C
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_0205A78C
	mov r4, r0
	bl sub_0205A83C
	mov r5, r0
	blx sub_0215C22C
	cmp r5, #2
	cmpeq r0, #3
	bne _0205C430
	blx sub_0215C2E0
	mov r2, #0
	mov r1, #0x1000
_0205C3B0:
	tst r0, r1, asr r2
	bne _0205C3C4
	add r2, r2, #1
	cmp r2, #0xc
	ble _0205C3B0
_0205C3C4:
	rsb r1, r2, #0xd
	add r0, r4, #0x1400
	strh r1, [r0, #0xce]
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205C40C
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _0205C3F8
	b _0205C40C
_0205C3F8:
	ldr r1, _0205C4E0 ; =0x00000116
	add r0, r4, #0x1400
	strh r1, [r0, #0xd2]
	mov r1, #0xcb
	b _0205C41C
_0205C40C:
	add r0, r4, #0x1400
	mov r1, #0x12c
	strh r1, [r0, #0xd2]
	mov r1, #0x96
_0205C41C:
	strh r1, [r0, #0xd4]
	mov r0, r4
	bl sub_0205C688
_0205C428:
	mov r5, r0
	b _0205C4D8
_0205C430:
	cmp r5, #6
	bne _0205C448
	mov r0, r4
	mov r1, r5
	bl sub_0205CBC4
	b _0205C428
_0205C448:
	cmp r0, #3
	beq _0205C458
	cmp r0, #6
	bne _0205C4AC
_0205C458:
	mov r0, r4
	mov r1, r5
	bl sub_0205CBC4
	mov r5, r0
	cmp r5, #7
	beq _0205C4D8
	cmp r5, #3
	bne _0205C484
	mov r0, r4
	bl sub_0205C748
	b _0205C428
_0205C484:
	cmp r5, #4
	bne _0205C498
	mov r0, r4
	bl sub_0205C814
	b _0205C428
_0205C498:
	cmp r5, #5
	bne _0205C4D8
	mov r0, r4
	bl sub_0205C9BC
	b _0205C428
_0205C4AC:
	cmp r0, #0xb
	bne _0205C4C4
	mov r0, #0
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, pc}
_0205C4C4:
	ble _0205C4D8
	mov r0, #4
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, pc}
_0205C4D8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C4E0: .word 0x00000116
	arm_func_end sub_0205C37C

	arm_func_start sub_0205C4E4
sub_0205C4E4: ; 0x0205C4E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	add r1, r0, #0x1400
	ldrh r1, [r1, #0xce]
	add r0, r0, #0x1400
	ldrh r3, [r0, #0xc6]
	cmp r4, r1
	movhi r4, r1
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0xc6]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C4E4

	arm_func_start sub_0205C520
sub_0205C520: ; 0x0205C520
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r4, r0
	cmp r5, #3
	beq _0205C550
	cmp r5, #4
	beq _0205C584
	cmp r5, #5
	beq _0205C638
	ldmia sp!, {r4, r5, r6, pc}
_0205C550:
	blx OS_GetTick
	add r2, r4, #0x1000
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	add r0, r4, #0x1400
	ldrsb r2, [r0, #0xc1]
	ldr r1, _0205C67C ; =0x020940F4
	ldr r0, _0205C680 ; =0x02184FDC
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _0205C684 ; =0x02184FE4
	orr r2, r2, #0x200000
	blx sub_0215BE88
	ldmia sp!, {r4, r5, r6, pc}
_0205C584:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bf]
	mov r0, #0xc0
	mov r5, #1
	mla r0, r1, r0, r4
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x56]
	sub r0, r0, #1
	mov r0, r5, lsl r0
	mov r6, r0, lsl #0x10
	blx sub_0215C2E0
	tst r0, r6, lsr #16
	moveq r5, #0
	cmp r5, #1
	bne _0205C618
	blx OS_GetTick
	add r2, r4, #0x1000
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	ldrb r2, [r2, #0x4bf]
	mov r0, #0xc0
	add r1, r4, #0x24
	smulbb r5, r2, r0
	add r0, r4, r5
	add r0, r0, #0xc00
	ldrh r2, [r0, #0x56]
	add r0, r4, #0x2c
	add r4, r1, #0xc00
	sub r1, r2, #1
	orr r1, r1, #0x300000
	add r3, r0, #0xc00
	mov r2, r1, lsl #0x10
	add r0, r4, r5
	add r1, r3, r5
	mov r2, r2, lsr #0x10
	blx sub_0215BE88
	ldmia sp!, {r4, r5, r6, pc}
_0205C618:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bf]
	add r0, r4, #0xf7
	add r2, r0, #0xb00
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldmia sp!, {r4, r5, r6, pc}
_0205C638:
	blx OS_GetTick
	add r2, r4, #0x1000
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	add r0, r4, #0x104
	add r3, r4, #0x1400
	ldrb r2, [r2, #0x4bf]
	add r1, r0, #0x800
	mov r0, #0x24
	mla r1, r2, r0, r1
	ldrsb r3, [r3, #0xc1]
	ldr r2, _0205C67C ; =0x020940F4
	ldr r0, _0205C680 ; =0x02184FDC
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	blx sub_0215BE88
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205C67C: .word 0x020940F4
_0205C680: .word 0x02184FDC
_0205C684: .word 0x02184FE4
	arm_func_end sub_0205C520

	arm_func_start sub_0205C688
sub_0205C688: ; 0x0205C688
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx OS_GetTick
	add r2, r4, #0x1000
	str r0, [r2, #0x460]
	mov r0, #0
	str r1, [r2, #0x464]
	bl sub_0205CD90
	add r1, r4, #0x1000
	strb r0, [r1, #0x4c1]
	blx OS_GetTick
	add r2, r4, #0x1000
	add r3, r4, #0x1400
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	ldrsb r2, [r3, #0xc1]
	ldr r1, _0205C6E8 ; =0x020940F4
	ldr r0, _0205C6EC ; =0x02184FDC
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _0205C6F0 ; =0x02184FE4
	orr r2, r2, #0x200000
	blx sub_0215BE88
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205C6E8: .word 0x020940F4
_0205C6EC: .word 0x02184FDC
_0205C6F0: .word 0x02184FE4
	arm_func_end sub_0205C688

	arm_func_start sub_0205C6F4
sub_0205C6F4: ; 0x0205C6F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x1000
	ldrb r3, [r1, #0x4bb]
	mov r0, #0
	strb r0, [r1, #0x4c5]
	mov r2, r3, lsl #0x18
	mov r2, r2, lsr #0x1c
	add r2, r2, #1
	and r2, r2, #0xff
	bic r3, r3, #0xf0
	mov r2, r2, lsl #0x1c
	orr r2, r3, r2, lsr #24
	strb r2, [r1, #0x4bb]
	bl sub_0205B890
	mov r0, #1
	bl sub_0205CD90
	add r1, r4, #0x1000
	strb r0, [r1, #0x4c1]
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C6F4

	arm_func_start sub_0205C748
sub_0205C748: ; 0x0205C748
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	blx OS_GetTick
	add r2, r5, #0x1000
	ldr ip, [r2, #0x460]
	mov r4, #0
	subs ip, r0, ip
	ldr r0, [r2, #0x464]
	ldr r2, _0205C804 ; =0x000082EA
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	mov r3, r4
	orr r1, r1, ip, lsr #26
	mov r0, ip, lsl #6
	bl sub_0208D5C4
	add r2, r5, #0x1400
	ldrh r3, [r2, #0xd2]
	cmp r1, r3, asr #31
	cmpeq r0, r3
	blo _0205C7FC
	ldrsb r0, [r2, #0xc1]
	bl sub_0205CE34
	add r1, r5, #0x1000
	strb r0, [r1, #0x4c1]
	add r0, r5, #0x1400
	ldrsb r1, [r0, #0xc1]
	sub r0, r4, #1
	cmp r1, r0
	bne _0205C7CC
	mov r0, r5
	mov r1, #3
	bl sub_0205CB08
	ldmia sp!, {r3, r4, r5, pc}
_0205C7CC:
	blx OS_GetTick
	add r3, r5, #0x1400
	add r2, r5, #0x1000
	str r0, [r2, #0x460]
	str r1, [r2, #0x464]
	ldrsb r2, [r3, #0xc1]
	ldr r1, _0205C808 ; =0x020940F4
	ldr r0, _0205C80C ; =0x02184FDC
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _0205C810 ; =0x02184FE4
	orr r2, r2, #0x200000
	blx sub_0215BE88
_0205C7FC:
	mov r0, #3
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C804: .word 0x000082EA
_0205C808: .word 0x020940F4
_0205C80C: .word 0x02184FDC
_0205C810: .word 0x02184FE4
	arm_func_end sub_0205C748

	arm_func_start sub_0205C814
sub_0205C814: ; 0x0205C814
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	blx OS_GetTick
	add r2, r4, #0x1000
	ldr ip, [r2, #0x460]
	ldr lr, [r2, #0x464]
	subs r3, r0, ip
	sbc r0, r1, lr
	mov r1, r0, lsl #6
	ldr r2, _0205C9B8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl sub_0208D5C4
	add r2, r4, #0x1400
	ldrh r2, [r2, #0xd4]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _0205C880
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bf]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0xbf7]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _0205C9B0
_0205C880:
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x4bf]
	add r0, r4, #0xf7
	add r3, r0, #0xb00
	ldrb r0, [r3, r2, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r3, r2, lsl #2]
	ldrb r5, [r1, #0x4c2]
	ldrb r3, [r1, #0x4bf]
	cmp r3, r5
	bhs _0205C8E4
	add r0, r4, #0xbf
	add r2, r0, #0x1400
_0205C8B4:
	add r0, r4, r3, lsl #2
	ldrb r0, [r0, #0xbf7]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _0205C8E4
	ldrb r0, [r2]
	ldrb r5, [r1, #0x4c2]
	add r0, r0, #1
	and r3, r0, #0xff
	strb r0, [r2]
	cmp r3, r5
	blo _0205C8B4
_0205C8E4:
	cmp r5, r3
	bhi _0205C908
	add r2, r4, #0x1000
	mov r3, #0
	mov r0, r4
	mov r1, #4
	strb r3, [r2, #0x4bf]
	bl sub_0205CB08
	ldmia sp!, {r4, r5, r6, pc}
_0205C908:
	mov r0, #0xc0
	mla r0, r3, r0, r4
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x56]
	mov r6, #1
	sub r0, r0, #1
	mov r0, r6, lsl r0
	mov r5, r0, lsl #0x10
	blx sub_0215C2E0
	tst r0, r5, lsr #16
	moveq r6, #0
	cmp r6, #1
	bne _0205C994
	blx OS_GetTick
	add r3, r4, #0x1000
	ldrb r5, [r3, #0x4bf]
	mov r2, #0xc0
	add ip, r4, #0x24
	smulbb r2, r5, r2
	add r5, r4, r2
	str r0, [r3, #0x460]
	str r1, [r3, #0x464]
	add r0, r5, #0xc00
	ldrh r1, [r0, #0x56]
	add r0, r4, #0x2c
	add r5, ip, #0xc00
	sub r1, r1, #1
	orr r1, r1, #0x300000
	add r4, r0, #0xc00
	mov r3, r1, lsl #0x10
	add r0, r5, r2
	add r1, r4, r2
	mov r2, r3, lsr #0x10
	blx sub_0215BE88
	b _0205C9B0
_0205C994:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bf]
	add r0, r4, #0xf7
	add r2, r0, #0xb00
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
_0205C9B0:
	mov r0, #4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205C9B8: .word 0x000082EA
	arm_func_end sub_0205C814

	arm_func_start sub_0205C9BC
sub_0205C9BC: ; 0x0205C9BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx OS_GetTick
	add r2, r4, #0x1000
	ldr ip, [r2, #0x460]
	ldr lr, [r2, #0x464]
	subs r3, r0, ip
	sbc r0, r1, lr
	mov r1, r0, lsl #6
	ldr r2, _0205CAFC ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl sub_0208D5C4
	add r2, r4, #0x1400
	ldrh r2, [r2, #0xd4]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _0205CA2C
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bf]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x900]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _0205CAF4
_0205CA2C:
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x4bf]
	mov r0, #0x24
	add r3, r4, #0x900
	smulbb r2, r2, r0
	ldrb r0, [r3, r2]
	bic r0, r0, #0xf
	strb r0, [r3, r2]
	ldrb r0, [r1, #0x4bf]
	ldrb r2, [r1, #0x4c0]
	add r3, r0, #1
	and r0, r3, #0xff
	strb r3, [r1, #0x4bf]
	cmp r2, r0
	bhi _0205CA88
	ldrb r2, [r1, #0x4c5]
	mov r0, #0
	strb r0, [r1, #0x4bf]
	add r0, r2, #1
	strb r0, [r1, #0x4c5]
	bl sub_0205CECC
	add r1, r4, #0x1000
	strb r0, [r1, #0x4c1]
_0205CA88:
	add r0, r4, #0x1400
	ldrsb r0, [r0, #0xc1]
	cmp r0, #0
	bge _0205CAB4
	add r2, r4, #0x1000
	mov r3, #0
	mov r0, r4
	mov r1, #5
	strb r3, [r2, #0x4c5]
	bl sub_0205CB08
	ldmia sp!, {r4, pc}
_0205CAB4:
	blx OS_GetTick
	add r3, r4, #0x1000
	add r2, r4, #0x104
	add r4, r4, #0x1400
	ldrb ip, [r3, #0x4bf]
	add r2, r2, #0x800
	str r0, [r3, #0x460]
	mov r0, #0x24
	str r1, [r3, #0x464]
	mla r1, ip, r0, r2
	ldrsb r3, [r4, #0xc1]
	ldr r2, _0205CB00 ; =0x020940F4
	ldr r0, _0205CB04 ; =0x02184FDC
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	blx sub_0215BE88
_0205CAF4:
	mov r0, #5
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205CAFC: .word 0x000082EA
_0205CB00: .word 0x020940F4
_0205CB04: .word 0x02184FDC
	arm_func_end sub_0205C9BC

	arm_func_start sub_0205CB08
sub_0205CB08: ; 0x0205CB08
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _0205CB30
	cmp r4, #4
	beq _0205CB8C
	cmp r4, #5
	beq _0205CB90
	b _0205CBB4
_0205CB30:
	add r2, r5, #0x1000
	ldrb r1, [r2, #0x4c2]
	cmp r1, #0
	bne _0205CB50
	add r1, r5, #0x1400
	ldrh r1, [r1, #0xc6]
	cmp r1, #0
	beq _0205CB70
_0205CB50:
	mov r0, #1
	bl sub_0205B890
	cmp r0, #1
	moveq r4, #4
	beq _0205CBB4
	mov r0, r5
_0205CB68:
	bl sub_0205CD08
	b _0205CBB0
_0205CB70:
	ldrb r1, [r2, #0x4bb]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _0205CBB4
	b _0205CBAC
_0205CB8C:
	b _0205CB68
_0205CB90:
	add r1, r5, #0x1000
	ldrb r1, [r1, #0x4bb]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _0205CBB4
_0205CBAC:
	bl sub_0205C6F4
_0205CBB0:
	mov r4, r0
_0205CBB4:
	mov r0, r4
	bl sub_0205C520
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205CB08

	arm_func_start sub_0205CBC4
sub_0205CBC4: ; 0x0205CBC4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0x11
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x4c2]
	mov r4, #0
	cmp r1, #0
	bls _0205CC10
_0205CBF0:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0xbf4]
	cmp r0, #0
	beq _0205CC10
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, r1
	blo _0205CBF0
_0205CC10:
	cmp r5, #6
	bne _0205CC40
	cmp r1, r4
	bne _0205CCE4
	cmp r4, #0
	bne _0205CC30
	mov r0, #5
	b _0205CC34
_0205CC30:
	mov r0, #6
_0205CC34:
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
_0205CC40:
	cmp r1, #0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r1, r4
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0xbf6]
	bne _0205CC88
	cmp r0, #0x14
	bhs _0205CC94
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
_0205CC88:
	cmp r0, #0x16
	movlo r0, r5
	ldmloia sp!, {r4, r5, r6, pc}
_0205CC94:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0xbf5]
	cmp r0, #0x13
	blo _0205CCB0
	cmp r0, #0x16
	movls r0, r5
	ldmlsia sp!, {r4, r5, r6, pc}
_0205CCB0:
	add r0, r6, #0x1000
	ldrb r0, [r0, #0x4bc]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _0205CCE4
	add r1, r6, #0xc20
	mov r0, #0xc0
	mla r0, r4, r0, r1
	bl sub_020590CC
	cmp r0, #0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
_0205CCE4:
	add r0, r6, #0x1000
	strb r4, [r0, #0x4c3]
	blx sub_0215BF14
	cmp r0, #1
	addne r0, r6, #0x1000
	strneb r5, [r0, #0x4be]
	movne r5, #7
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205CBC4

	arm_func_start sub_0205CD08
sub_0205CD08: ; 0x0205CD08
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1400
	ldrh r0, [r0, #0xc6]
	cmp r0, #0
	beq _0205CD68
	mov r0, #2
	bl sub_0205B890
	cmp r0, #1
	bne _0205CD68
	bl sub_0205CECC
	add r2, r4, #0x1000
	strb r0, [r2, #0x4c1]
	add r0, r4, #0x1400
	ldrsb r0, [r0, #0xc1]
	cmp r0, #0
	movge r0, #5
	ldmgeia sp!, {r4, pc}
	mov r3, #0
	mov r0, r4
	mov r1, #5
	strb r3, [r2, #0x4c5]
	bl sub_0205CB08
	ldmia sp!, {r4, pc}
_0205CD68:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl sub_0205C6F4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205CD08

	arm_func_start sub_0205CD90
sub_0205CD90: ; 0x0205CD90
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r0, #0x10
	bl sub_0205A78C
	cmp sl, #0
	mov r7, r0
	add r4, r7, #0x1400
	moveq r8, #0
	moveq sb, #1
	ldrh r0, [r4, #0xce]
	movne r8, #1
	movne sb, #2
	cmp r8, r0
	bgt _0205CE00
	mov r5, #0
	mov r6, #1
_0205CDD0:
	blx sub_0215C2E0
	tst r0, sb
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _0205CE00
	ldrh r1, [r4, #0xce]
	mov r0, sb, lsl #0x12
	add r8, r8, #2
	cmp r8, r1
	mov sb, r0, lsr #0x10
	ble _0205CDD0
_0205CE00:
	add r0, r7, #0x1400
	ldrh r0, [r0, #0xce]
	cmp r8, r0
	ble _0205CE28
	mov r0, #1
	cmp sl, #0
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0205CE28:
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_0205CD90

	arm_func_start sub_0205CE34
sub_0205CE34: ; 0x0205CE34
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #0x10
	bl sub_0205A78C
	add r1, sb, #2
	mov r7, r0
	mov r0, r1, lsl #0x18
	add r4, r7, #0x1400
	ldrh r2, [r4, #0xce]
	mov sb, r0, asr #0x18
	mov r1, #1
	mov r1, r1, lsl sb
	mov r1, r1, lsl #0x10
	cmp r2, r0, asr #24
	mov r8, r1, lsr #0x10
	blt _0205CEB4
	mov r5, #0
	mov r6, #1
_0205CE7C:
	blx sub_0215C2E0
	tst r0, r8
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _0205CEB4
	ldrh r2, [r4, #0xce]
	add r0, sb, #2
	mov r1, r0, lsl #0x18
	mov r0, r8, lsl #0x12
	cmp r2, r1, asr #24
	mov r8, r0, lsr #0x10
	mov sb, r1, asr #0x18
	bge _0205CE7C
_0205CEB4:
	add r0, r7, #0x1400
	ldrh r0, [r0, #0xce]
	cmp sb, r0
	mvngt sb, #0
	mov r0, sb
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205CE34

	arm_func_start sub_0205CECC
sub_0205CECC: ; 0x0205CECC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, #0x10
	mov r0, r4
	bl sub_0205A78C
	add r5, r0, #0x1400
	ldrh sb, [r5, #0xc6]
	cmp sb, #0
	subeq r0, r4, #0x11
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r1, [r5, #0xce]
	mov r7, #0
	mov r8, r7
	cmp r1, #0
	ble _0205CF78
	add r1, r0, #0xc5
	add r6, r1, #0x1400
	add r4, r0, #0x1000
	mov fp, #1
_0205CF14:
	tst sb, fp, lsl r7
	mov sl, fp, lsl r7
	beq _0205CF64
	ldrb r0, [r4, #0x4c5]
	cmp r8, r0
	bne _0205CF5C
	blx sub_0215C2E0
	mov r1, sl, lsl #0x10
	tst r0, r1, lsr #16
	movne r0, fp
	moveq r0, #0
	cmp r0, #1
	moveq r0, r7, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
_0205CF5C:
	add r0, r8, #1
	and r8, r0, #0xff
_0205CF64:
	ldrh r0, [r5, #0xce]
	add r1, r7, #1
	and r7, r1, #0xff
	cmp r7, r0
	blt _0205CF14
_0205CF78:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205CECC

	arm_func_start sub_0205CF80
sub_0205CF80: ; 0x0205CF80
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r1, r4
	bl sub_0205D0A8
	ldr r1, _0205CFB8 ; =0x0209B180
	mov r0, r4
	mov r2, #8
	bl sub_02083A10
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205CFB8: .word 0x0209B180
	arm_func_end sub_0205CF80

	arm_func_start sub_0205CFBC
sub_0205CFBC: ; 0x0205CFBC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl sub_0205D0A8
	mov r0, r4
	mov r1, r5
	bl sub_0205D1A4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205CFBC

	arm_func_start sub_0205CFE8
sub_0205CFE8: ; 0x0205CFE8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl sub_0205D0A8
	ldr r1, _0205D070 ; =0x0209B180
	mov r0, r4
	mov r2, #8
	bl sub_02083A10
	cmp r0, #0
	bne _0205D064
	add r0, sp, #8
	mov r1, r5
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r1, #0
_0205D02C:
	ldrb r0, [r5, r1]
	cmp r0, #0x20
	blo _0205D040
	cmp r0, #0x7e
	bls _0205D04C
_0205D040:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D04C:
	add r1, r1, #1
	cmp r1, #0xa
	blt _0205D02C
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0205D064:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205D070: .word 0x0209B180
	arm_func_end sub_0205CFE8

	arm_func_start sub_0205D074
sub_0205D074: ; 0x0205D074
	stmdb sp!, {r3, lr}
	ldr r1, _0205D094 ; =0x0209B18C
	mov r2, #8
	bl sub_02083A10
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205D094: .word 0x0209B18C
	arm_func_end sub_0205D074

	arm_func_start sub_0205D098
sub_0205D098: ; 0x0205D098
	ldr ip, _0205D0A4 ; =sub_0205D1F4
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_0205D0A4: .word sub_0205D1F4
	arm_func_end sub_0205D098

	arm_func_start sub_0205D0A8
sub_0205D0A8: ; 0x0205D0A8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr lr, _0205D19C ; =0x02094148
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
_0205D0C0:
	ldrb r1, [lr, #1]
	ldrb r2, [lr], #2
	subs r3, r3, #1
	strb r1, [ip, #1]
	strb r2, [ip], #2
	bne _0205D0C0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl sub_0205D410
	ldr r0, _0205D1A0 ; =0x0209B118
	mov r3, #0
_0205D0F0:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _0205D0F0
	mov r6, #0
	add ip, sp, #0
	mov r1, #0xff
_0205D11C:
	and r2, r6, #0xff
	ldrb r0, [ip, r2]
	mov lr, r2
	ldrb r5, [r4, r6]
	cmp r0, #0xff
	beq _0205D160
_0205D134:
	add r0, ip, lr
	ldrb lr, [ip, lr]
	ldrb r2, [ip, r2]
	ldrb r3, [r4, lr]
	strb r1, [r0]
	ldrb r0, [ip, lr]
	strb r5, [r4, r2]
	mov r2, lr
	mov r5, r3
	cmp r0, #0xff
	bne _0205D134
_0205D160:
	add r6, r6, #1
	cmp r6, #0x18
	blt _0205D11C
	ldr r0, _0205D1A0 ; =0x0209B118
	mov r3, #0
_0205D174:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _0205D174
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205D19C: .word 0x02094148
_0205D1A0: .word 0x0209B118
	arm_func_end sub_0205D0A8

	arm_func_start sub_0205D1A4
sub_0205D1A4: ; 0x0205D1A4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	add r4, sp, #0x14
	mov r6, r0
	mov r0, r4
	mov r5, r1
	blx MATH_MD5Init
	mov r0, r4
	mov r1, r6
	mov r2, #0x18
	blx MATH_MD5Update
	add r1, sp, #0
	mov r0, r4
	blx MATH_MD5GetHash
	add r0, sp, #3
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_0205D1A4

	arm_func_start sub_0205D1F4
sub_0205D1F4: ; 0x0205D1F4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr lr, _0205D390 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov ip, #7
_0205D20C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _0205D20C
	mov r5, #0
_0205D248:
	add r3, r4, r5
	add r1, r0, r5
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add r5, r5, #1
	cmp r5, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _0205D248
	ldr r0, _0205D394 ; =0x0209B118
	mov r3, #0
_0205D274:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _0205D274
	add r5, sp, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r1, _0205D398 ; =0x02094128
	mov r3, #0
_0205D2B0:
	ldrb r2, [r5, r3]
	ldrb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #0xd
	strb r2, [r4, r0]
	blt _0205D2B0
	ldr r0, _0205D394 ; =0x0209B118
	mov r3, #0
_0205D2D0:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _0205D2D0
	ldr r2, _0205D39C ; =0x02094135
	mov r5, #0
_0205D2F8:
	ldrb r3, [r4, r5]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #0xd
	blt _0205D2F8
	mov r1, #0
_0205D328:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _0205D328
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205D390: .word 0x92492493
_0205D394: .word 0x0209B118
_0205D398: .word 0x02094128
_0205D39C: .word 0x02094135
	arm_func_end sub_0205D1F4

	arm_func_start sub_0205D3A0
sub_0205D3A0: ; 0x0205D3A0
	cmp r0, #0x41
	blo _0205D3B4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_0205D3B4:
	cmp r0, #0x61
	blo _0205D3CC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_0205D3CC:
	cmp r0, #0x30
	blo _0205D3E4
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_0205D3E4:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end sub_0205D3A0

	arm_func_start sub_0205D410
sub_0205D410: ; 0x0205D410
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	add r4, r2, r2, lsl #1
	str r0, [sp]
	cmp r3, r4, lsr #2
	mov r0, r4, lsr #2
	andhs r7, r2, #3
	str r1, [sp, #4]
	str r0, [sp, #8]
	subhs fp, r2, r7
	bhs _0205D448
	add sp, sp, #0x14
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205D448:
	cmp fp, #0
	mov r8, #0
	ble _0205D4D0
	add r5, sp, #0x10
	mov r4, #6
_0205D45C:
	ldr r0, [sp]
	mov r6, #0
	mov sb, r6
	add sl, r0, r8
_0205D46C:
	ldrb r0, [sl, sb]
	bl sub_0205D3A0
	rsb r1, sb, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add sb, sb, #1
	cmp sb, #4
	blt _0205D46C
	mov r0, r8, asr #1
	add r0, r8, r0, lsr #30
	mov r0, r0, asr #2
	add r1, r0, r0, lsl #1
	ldr r0, [sp, #4]
	mov r2, #0
	str r6, [sp, #0x10]
	add r1, r0, r1
_0205D4AC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _0205D4AC
	add r8, r8, #4
	cmp r8, fp
	blt _0205D45C
_0205D4D0:
	cmp r7, #0
	beq _0205D55C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0xc]
	ble _0205D520
	ldr r0, [sp]
	mov sb, r5
	add r4, r0, fp
	mov r8, #6
_0205D4F8:
	ldrb r0, [r4, r6]
	bl sub_0205D3A0
	rsb r1, r6, #3
	mul r2, r1, r8
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, r7
	orr sb, sb, r5
	blt _0205D4F8
	str sb, [sp, #0xc]
_0205D520:
	cmp r7, #0
	mov r3, #0
	ble _0205D55C
	add r1, fp, fp, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0xc
_0205D544:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	strb r0, [r2, r3]
	add r3, r3, #1
	cmp r3, r7
	blt _0205D544
_0205D55C:
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205D410

	arm_func_start sub_0205D568
sub_0205D568: ; 0x0205D568
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	blx sub_0215C22C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	cmp r4, #1
	bne _0205D5D8
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x4ba]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl sub_0205B890
	ldr r1, _0205D5F0 ; =sub_020596C0
	add r0, sp, #0
	blx sub_0215BD58
	cmp r0, #1
	beq _0205D5C4
	cmp r0, #4
	blt _0205D5E4
_0205D5C4:
	mov r0, #1
	bl sub_0205A85C
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_0205D5D8:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205D5E4:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205D5F0: .word sub_020596C0
	arm_func_end sub_0205D568

	arm_func_start sub_0205D5F4
sub_0205D5F4: ; 0x0205D5F4
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0205A83C
	mov r4, r0
	mov r0, #0x10
	bl sub_0205A78C
	mov r5, r0
	blx sub_0215C22C
	cmp r0, #9
	bne _0205D684
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0205D6C4
_0205D628: ; jump table
	b _0205D640 ; case 0
	b _0205D678 ; case 1
	b _0205D64C ; case 2
	b _0205D658 ; case 3
	b _0205D660 ; case 4
	b _0205D66C ; case 5
_0205D640:
	mov r0, r5
	bl sub_0205D6CC
_0205D648:
	b _0205D67C
_0205D64C:
	mov r0, r5
	bl sub_0205D730
	b _0205D648
_0205D658:
	bl sub_0205D810
	b _0205D648
_0205D660:
	mov r0, r5
	bl sub_0205D83C
	b _0205D648
_0205D66C:
	mov r0, r5
	bl sub_0205D8D4
	b _0205D67C
_0205D678:
	bl sub_0205D8FC
_0205D67C:
	mov r4, r0
	b _0205D6C4
_0205D684:
	cmp r4, #0xb
	beq _0205D6A0
	cmp r4, #0xe
	beq _0205D6A4
	cmp r4, #0xf
	bne _0205D6AC
	b _0205D66C
_0205D6A0:
	b _0205D678
_0205D6A4:
	blx sub_0216B24C
	blx sub_0216B1D4
_0205D6AC:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x4c3]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0xbf4]
_0205D6C4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205D5F4

	arm_func_start sub_0205D6CC
sub_0205D6CC: ; 0x0205D6CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	bl sub_0205A78C
	mov r5, #4
	mov r6, r0
	mov r0, r5
	bl sub_0205A78C
	mov r4, r0
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl sub_0205D928
	ldr r1, _0205D72C ; =0x0218DBE0
	mov r0, r4
	str r5, [r1]
	blx sub_02157F10
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205D72C: .word 0x0218DBE0
	arm_func_end sub_0205D6CC

	arm_func_start sub_0205D730
sub_0205D730: ; 0x0205D730
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	blx sub_02157E2C
	cmp r0, #0
	beq _0205D7B0
	mov r0, r4
	bl sub_0205DB24
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4bc]
	mov r1, r1, lsl #0x1b
	mov r1, r1, lsr #0x1f
	cmp r1, #1
	moveq r0, #0xf
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r0, #0x4bd]
	bl sub_0205AA40
	mov r5, r0
	cmp r5, #0xa
	blo _0205D7A8
	cmp r5, #0xc
	bhi _0205D7A8
	blx OS_IsRunOnTwl
	cmp r0, #0
	subne r0, r5, #0xa
	andne r0, r0, #0xff
	addne r0, r4, r0, lsl #9
	ldrneb r0, [r0, #0x482]
	cmpne r0, #0
	movne r0, #0xf
	ldmneia sp!, {r3, r4, r5, pc}
_0205D7A8:
	mov r0, #0xd
	ldmia sp!, {r3, r4, r5, pc}
_0205D7B0:
	blx OS_GetTick
	add r2, r4, #0x1000
	ldr ip, [r2, #0x460]
	mov r3, #0
	subs ip, r0, ip
	ldr r0, [r2, #0x464]
	ldr r2, _0205D80C ; =0x01FF6210
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, ip, lsr #26
	mov r0, ip, lsl #6
	bl sub_0208D5C4
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4c3]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0xbf4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205D80C: .word 0x01FF6210
	arm_func_end sub_0205D730

	arm_func_start sub_0205D810
sub_0205D810: ; 0x0205D810
	stmdb sp!, {r3, lr}
	mov r0, #8
	bl sub_0205A78C
	blx sub_0216B14C
	cmp r0, #0
	moveq r0, #0xe
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	bl sub_0205A85C
	mov r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205D810

	arm_func_start sub_0205D83C
sub_0205D83C: ; 0x0205D83C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #1
	bl sub_0205A78C
	mov r4, r0
	blx sub_0216B2A4
	movs r6, r0
	beq _0205D8C8
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x4bd]
	bl sub_0205AA40
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _0205D87C
	blx sub_0216B2CC
	str r0, [r4, #0x10]
_0205D87C:
	blx sub_0216B1D4
	cmp r6, #0xb
	beq _0205D8C0
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x4c3]
	mov r2, #1
	ldr r0, _0205D8D0 ; =0x0218BA58
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0xbf4]
	ldr r0, [r0]
	cmp r0, #4
	ldrb r0, [r4, #0xb]
	bic r0, r0, #0xf0
	orreq r0, r0, #0x10
	strb r0, [r4, #0xb]
	mov r0, #0xb
	ldmia sp!, {r4, r5, r6, pc}
_0205D8C0:
	mov r0, #0xf
	ldmia sp!, {r4, r5, r6, pc}
_0205D8C8:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205D8D0: .word 0x0218BA58
	arm_func_end sub_0205D83C

	arm_func_start sub_0205D8D4
sub_0205D8D4: ; 0x0205D8D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bd]
	bl sub_0205A894
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bd]
	bl sub_0205A928
	mov r0, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205D8D4

	arm_func_start sub_0205D8FC
sub_0205D8FC: ; 0x0205D8FC
	stmdb sp!, {r3, lr}
	blx sub_02157714
	cmp r0, #0
	movne r0, #0xb
	ldmneia sp!, {r3, pc}
	blx sub_0215800C
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #9
	movne r0, #0xb
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205D8FC

	arm_func_start sub_0205D928
sub_0205D928: ; 0x0205D928
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r5, r2
	mov r6, r1
	ldr r0, _0205DA70 ; =0x02094160
	mov r1, r5
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r1, [r4]
	add r0, r6, #0x1000
	str r1, [r5, #4]
	ldr r1, [r4, #4]
	str r1, [r5, #8]
	ldrb r0, [r0, #0x4bd]
	cmp r0, #0x12
	ldmhsia sp!, {r4, r5, r6, pc}
	bl sub_0205AA40
	cmp r0, #2
	addls r4, r6, r0, lsl #8
	addhi r1, r6, #0x300
	subhi r0, r0, #0xa
	addhi r4, r1, r0, lsl #9
	ldrb r0, [r4, #0xc0]
	cmp r0, #0
	mov r0, #0
	beq _0205D9D0
	str r0, [r5, #0xc]
	add r0, r4, #0xc0
	bl sub_0205DA7C
	str r0, [r5, #0x10]
	ldrb r0, [r4, #0xd0]
	bl sub_0205DAD0
	str r0, [r5, #0x14]
	add r0, r4, #0xc4
	bl sub_0205DA7C
	str r0, [r5, #0x18]
	add r0, r4, #0xc8
	bl sub_0205DA7C
	str r0, [r5, #0x1c]
	add r0, r4, #0xcc
	bl sub_0205DA7C
	b _0205D9E8
_0205D9D0:
	mov r1, #1
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
_0205D9E8:
	str r0, [r5, #0x20]
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205DA30
	ldrh r1, [r4, #0xea]
	cmp r1, #0
	ldreq r0, _0205DA74 ; =0x00000578
	streq r0, [r5, #0x2c]
	beq _0205DA38
	ldr r0, _0205DA78 ; =0x000005DC
	cmp r1, r0
	strhi r0, [r5, #0x2c]
	bhi _0205DA38
	cmp r1, #0x240
	movlo r0, #0x240
	strlo r0, [r5, #0x2c]
	strhs r1, [r5, #0x2c]
	b _0205DA38
_0205DA30:
	mov r0, #0x240
	str r0, [r5, #0x2c]
_0205DA38:
	blx OS_IsRunOnTwl
	cmp r0, #0
	beq _0205DA64
	ldrh r0, [r4, #0xea]
	cmp r0, #0x240
	moveq r0, #0
	streq r0, [r5, #0x30]
	addne r0, r6, #0x1000
	ldrne r0, [r0, #0x4c8]
	strne r0, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, pc}
_0205DA64:
	mov r0, #0
	str r0, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205DA70: .word 0x02094160
_0205DA74: .word 0x00000578
_0205DA78: .word 0x000005DC
	arm_func_end sub_0205D928

	arm_func_start sub_0205DA7C
sub_0205DA7C: ; 0x0205DA7C
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	mov r3, r3, lsl #0x18
	orr r3, r3, #0
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end sub_0205DA7C

	arm_func_start sub_0205DAD0
sub_0205DAD0: ; 0x0205DAD0
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _0205DAF4
_0205DAE4:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _0205DAE4
_0205DAF4:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end sub_0205DAD0

	arm_func_start sub_0205DB24
sub_0205DB24: ; 0x0205DB24
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x4bd]
	cmp r0, #0x12
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl sub_0205AA40
	cmp r0, #2
	addls r4, r4, r0, lsl #8
	addhi r1, r4, #0x300
	subhi r0, r0, #0xa
	addhi r4, r1, r0, lsl #9
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl sub_0205DA7C
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl sub_0205DA7C
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	blx sub_02157E58
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205DB24

	arm_func_start sub_0205DBC0
sub_0205DBC0: ; 0x0205DBC0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r7, _0205DC64 ; =0x0209B1A4
	mvn r5, #0
	ldr r0, [r7]
	cmp r0, r5
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	blx sub_020791FC
	ldr r6, _0205DC68 ; =0x021419E0
	mov sb, #0x20
	mov r0, r6
	mov r1, sb
	mov r4, #0
	bl DC_InvalidateRange
	ldr r0, _0205DC6C ; =0x000001FE
	mov r1, sb
	mov r2, r6
	bl sub_0205DEE8
	cmp r0, #0
	ldreq r6, _0205DC70 ; =0x021419C0
	ldreqb r0, [r6, #0x20]
	streqb r0, [r6]
	beq _0205DC24
	mov r4, r5
	b _0205DC5C
_0205DC24:
	ldr r8, _0205DC74 ; =0x02141A00
	mov r1, sb
	mov r0, r8
	bl DC_InvalidateRange
	mov r0, sb
	mov r1, sb
	mov r2, r8
	bl sub_0205DEE8
	cmp r0, #0
	ldreqh r0, [r6, #0x40]
	movne r4, r5
	moveq r0, r0, lsl #3
	subeq r0, r0, #0x400
	streq r0, [r7]
_0205DC5C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0205DC64: .word 0x0209B1A4
_0205DC68: .word 0x021419E0
_0205DC6C: .word 0x000001FE
_0205DC70: .word 0x021419C0
_0205DC74: .word 0x02141A00
	arm_func_end sub_0205DBC0

	arm_func_start sub_0205DC78
sub_0205DC78: ; 0x0205DC78
	stmdb sp!, {r3, lr}
	bl sub_0205DBC0
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0205DCA0 ; =0x021419C0
	ldrb r0, [r0]
	cmp r0, #0xff
	moveq r0, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205DCA0: .word 0x021419C0
	arm_func_end sub_0205DC78

	arm_func_start sub_0205DCA4
sub_0205DCA4: ; 0x0205DCA4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0205DBC0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r4
	bl sub_0205DE18
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, r6
	mov r4, r1
	cmp r1, r5
	movhi r4, r5
	movhi r1, r5
	strhi r5, [sp]
	bl DC_InvalidateRange
	mov r1, r4, lsl #0x10
	ldr r0, [sp, #4]
	mov r2, r6
	mov r1, r1, lsr #0x10
	bl sub_0205DEE8
	cmp r0, #0
	ldreq r0, [sp]
	mvnne r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205DCA4

	arm_func_start sub_0205DD40
sub_0205DD40: ; 0x0205DD40
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl sub_0205DBC0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	mvneq r6, #0
	beq _0205DE0C
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r6
	bl sub_0205DE18
	cmp r0, #0
	mvneq r6, #0
	beq _0205DE0C
	ldr r1, [sp]
	mov r0, r4
	cmp r1, r5
	movhi r1, r5
	strhi r5, [sp]
	bl DC_StoreRange
	mvn r6, #0
	mov r5, #0
_0205DDAC:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r1, r1, lsl #0x10
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl sub_0205DF50
	cmp r0, #0
	mvnne r6, #0
	bne _0205DE0C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r1, r1, lsl #0x10
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl sub_0205DFB8
	cmp r0, #0
	ldreq r6, [sp]
	beq _0205DE0C
	cmp r0, #6
	mvnne r6, #0
	bne _0205DE0C
	add r5, r5, #1
	cmp r5, #3
	blt _0205DDAC
_0205DE0C:
	mov r0, r6
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205DD40

	arm_func_start sub_0205DE18
sub_0205DE18: ; 0x0205DE18
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmp r6, #0x11
	bgt _0205DE50
	bge _0205DE8C
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _0205DED0
_0205DE40: ; jump table
	b _0205DE6C ; case 0
	b _0205DE6C ; case 1
	b _0205DE6C ; case 2
	b _0205DE6C ; case 3
_0205DE50:
	cmp r6, #0x12
	bgt _0205DE60
	beq _0205DE8C
	b _0205DED0
_0205DE60:
	cmp r6, #0x13
	beq _0205DE8C
	b _0205DED0
_0205DE6C:
	ldr r0, _0205DEE4 ; =0x0209B1A4
	mov r1, #0x100
	ldr r2, [r0]
	mov r0, #1
	add r2, r2, r6, lsl #8
	str r2, [r5]
	str r1, [r4]
	ldmia sp!, {r4, r5, r6, pc}
_0205DE8C:
	bl sub_0205DC78
	cmp r0, #0x20
	mvnlo r0, #0
	strlo r0, [r5]
	movlo r0, #0
	strlo r0, [r4]
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r0, _0205DEE4 ; =0x0209B1A4
	sub r1, r6, #0x11
	ldr r2, [r0]
	mov r0, #0x200
	sub r2, r2, #0x600
	add r1, r2, r1, lsl #9
	str r1, [r5]
	str r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_0205DED0:
	mvn r0, #0
	str r0, [r5]
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205DEE4: .word 0x0209B1A4
	arm_func_end sub_0205DE18

	arm_func_start sub_0205DEE8
sub_0205DEE8: ; 0x0205DEE8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	mov r4, #1
_0205DF00:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	blx sub_02079354
	mov r5, r0
	cmp r5, #1
	bne _0205DF48
	blx OS_IsTickAvailable
	cmp r0, #0
	beq _0205DF3C
	blx OS_IsAlarmAvailable
	cmp r0, #0
	beq _0205DF3C
	mov r0, r4
	blx OS_Sleep
_0205DF3C:
	add r6, r6, #1
	cmp r6, #5
	blt _0205DF00
_0205DF48:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205DEE8

	arm_func_start sub_0205DF50
sub_0205DF50: ; 0x0205DF50
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	mov r4, #1
_0205DF68:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	blx sub_020796B4
	mov r5, r0
	cmp r5, #1
	bne _0205DFB0
	blx OS_IsTickAvailable
	cmp r0, #0
	beq _0205DFA4
	blx OS_IsAlarmAvailable
	cmp r0, #0
	beq _0205DFA4
	mov r0, r4
	blx OS_Sleep
_0205DFA4:
	add r6, r6, #1
	cmp r6, #5
	blt _0205DF68
_0205DFB0:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205DF50

	arm_func_start sub_0205DFB8
sub_0205DFB8: ; 0x0205DFB8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	mov r4, #1
_0205DFD0:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	blx sub_020798A4
	mov r5, r0
	cmp r5, #1
	bne _0205E018
	blx OS_IsTickAvailable
	cmp r0, #0
	beq _0205E00C
	blx OS_IsAlarmAvailable
	cmp r0, #0
	beq _0205E00C
	mov r0, r4
	blx OS_Sleep
_0205E00C:
	add r6, r6, #1
	cmp r6, #5
	blt _0205DFD0
_0205E018:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205DFB8

	arm_func_start sub_0205E020
sub_0205E020: ; 0x0205E020
	stmdb sp!, {r3, lr}
	bl sub_0205E598
	cmp r0, #0
	movne r0, #0
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205E020

	arm_func_start sub_0205E038
sub_0205E038: ; 0x0205E038
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x600
	bl sub_0205E020
	mov r4, #1
	cmp r0, #0
	movne r4, #0
	bl sub_0205DC78
	cmp r0, #0x20
	blo _0205E080
	cmp r4, #0
	beq _0205E07C
	mov r0, r5
	bl sub_0205E614
	cmp r0, #0
	movne r0, #1
	bne _0205E084
_0205E07C:
	b _0205E080
_0205E080:
	mov r0, #0
_0205E084:
	cmp r0, #0
	movne r0, #0
	mvneq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E038

	arm_func_start sub_0205E094
sub_0205E094: ; 0x0205E094
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x700
	mov r4, r0
	bl MI_CpuFill8
	bl sub_0205DBC0
	cmp r0, #0
	ldrne r0, _0205E0E8 ; =0xFFFFD8EF
	ldmneia sp!, {r4, pc}
	ldr r1, _0205E0EC ; =0x0000A001
	add r0, r4, #0x400
	blx MATHi_CRC16InitTableRev
	mov r0, r4
	bl sub_0205E598
	cmp r0, #0
	ldreq r0, _0205E0E8 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	add r1, r4, #0x400
	bl sub_0205E160
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205E0E8: .word 0xFFFFD8EF
_0205E0EC: .word 0x0000A001
	arm_func_end sub_0205E094

	arm_func_start sub_0205E0F0
sub_0205E0F0: ; 0x0205E0F0
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x1000
	mov r4, r0
	bl MI_CpuFill8
	bl sub_0205DBC0
	cmp r0, #0
	ldrne r0, _0205E158 ; =0xFFFFD8EF
	ldmneia sp!, {r4, pc}
	ldr r1, _0205E15C ; =0x0000A001
	add r0, r4, #0xa00
	blx MATHi_CRC16InitTableRev
	add r0, r4, #0x600
	bl sub_0205E598
	cmp r0, #0
	ldreq r0, _0205E158 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0205E614
	cmp r0, #0
	ldreq r0, _0205E158 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	add r1, r4, #0xa00
	bl sub_0205E380
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205E158: .word 0xFFFFD8EF
_0205E15C: .word 0x0000A001
	arm_func_end sub_0205E0F0

	arm_func_start sub_0205E160
sub_0205E160: ; 0x0205E160
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	add sb, sp, #0
	mov r5, r0
	mov sl, #0
	mov r4, r1
	mov r0, sb
	mov r1, sl
	mov r2, #0x10
	mov r7, #1
	bl MI_CpuFill8
	mov r8, #0xfe
_0205E190:
	add r6, r5, sl, lsl #8
	mov r0, r4
	mov r1, r6
	mov r2, r8
	blx MATH_CalcCRC16
	mov r1, r6
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _0205E1C4
	mov r0, r6
	bl sub_0205E7A8
	cmp r0, #0
	strne r7, [sb, sl, lsl #2]
_0205E1C4:
	add sl, sl, #1
	cmp sl, #3
	mov r6, #1
	blt _0205E190
	mov r0, r4
	add r1, r5, #0x300
	mov r2, #0xfe
	blx MATH_CalcCRC16
	add r1, r5, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	ldr r1, [sp]
	streq r6, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r1, #0
	ldrb r8, [r5, #0xef]
	bne _0205E25C
	mov r8, #0
	mov r0, r5
	mov r1, r8
	bl sub_0205E540
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0205E25C
	add r0, r5, #0x1f0
	add r1, r5, #0xf0
	mov r2, #0xe
	ldrb r8, [r5, #0x1ef]
	bl MI_CpuCopy8
_0205E25C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0205E290
	mov r0, r5
	mov r1, #1
	bl sub_0205E540
	ldr r0, [sp]
	cmp r0, #0
	beq _0205E290
	add r0, r5, #0xf0
	add r1, r5, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
_0205E290:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0205E2A8
	mov r0, r5
	mov r1, #2
	bl sub_0205E540
_0205E2A8:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0205E2C4
	add r1, r5, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_0205E2C4:
	mov r7, #0
	mov r2, r7
	mov r1, r7
_0205E2D0:
	add r0, r5, r1, lsl #8
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	movne r0, r6, lsl r1
	andne r0, r0, #0xff
	orrne r2, r2, r0
	bne _0205E2F4
	tst r8, r6, lsl r1
	movne r7, r6
_0205E2F4:
	add r1, r1, #1
	cmp r1, #3
	blt _0205E2D0
	mov r0, r5
	mov r1, r4
	strb r2, [r5, #0xef]
	strb r2, [r5, #0x1ef]
	bl sub_0205E668
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0205E374 ; =0xFFFFD8F0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [sp]
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0205E378 ; =0xFFFFD8ED
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _0205E37C ; =0xFFFFD8EE
	cmp r7, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205E374: .word 0xFFFFD8F0
_0205E378: .word 0xFFFFD8ED
_0205E37C: .word 0xFFFFD8EE
	arm_func_end sub_0205E160

	arm_func_start sub_0205E380
sub_0205E380: ; 0x0205E380
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	add r0, sl, #0x600
	mov sb, r1
	bl sub_0205E160
	mov r7, #0
	add r6, sp, #4
	str r0, [sp]
	mov r0, r6
	mov r1, r7
	mov r2, #0xc
	bl MI_CpuFill8
	mov fp, #1
	mov r5, #0xfe
_0205E3BC:
	add r8, sl, r7, lsl #9
	mov r0, sb
	mov r1, r8
	mov r2, r5
	blx MATH_CalcCRC16
	mov r4, r0
	mov r0, sb
	mov r2, r5
	add r1, r8, #0x100
	blx MATH_CalcCRC16
	mov r3, r8
	ldrh r1, [r3, #0xfe]
	cmp r4, r1
	addeq r1, r3, #0x100
	ldreqh r2, [r1, #0xfe]
	cmpeq r0, r2
	bne _0205E410
	mov r0, r3
	bl sub_0205E7F8
	cmp r0, #0
	strne fp, [r6, r7, lsl #2]
_0205E410:
	add r7, r7, #1
	cmp r7, #3
	blt _0205E3BC
	ldr r1, [sp, #4]
	cmp r1, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	ldrne r0, [sp]
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r1, #0
	ldrb r5, [sl, #0xef]
	bne _0205E468
	mov r0, sl
	mov r1, #0
	bl sub_0205E56C
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrneb r5, [sl, #0x2ef]
	moveq r5, #7
_0205E468:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0205E480
	mov r0, sl
	mov r1, #1
	bl sub_0205E56C
_0205E480:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0205E498
	mov r0, sl
	mov r1, #2
	bl sub_0205E56C
_0205E498:
	mov r4, #0
	mov r0, #1
	mov r3, r4
	mov r6, r4
	mov r2, r0
_0205E4AC:
	add r1, sl, r6, lsl #9
	ldrb r1, [r1, #0xe7]
	cmp r1, #0xff
	movne r1, r2, lsl r6
	andne r1, r1, #0xff
	orrne r3, r3, r1
	bne _0205E4D0
	tst r5, r0, lsl r6
	movne r4, r0
_0205E4D0:
	add r6, r6, #1
	cmp r6, #3
	blt _0205E4AC
	mov r0, sl
	mov r1, sb
	strb r3, [sl, #0xef]
	strb r3, [sl, #0x2ef]
	bl sub_0205E714
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0205E538 ; =0xFFFFD8F0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	ldr r0, [sp]
	moveq r4, #0
	cmp r0, #0
	ldreq r0, _0205E53C ; =0xFFFFD8EE
	cmpeq r4, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205E538: .word 0xFFFFD8F0
_0205E53C: .word 0xFFFFD8EE
	arm_func_end sub_0205E380

	arm_func_start sub_0205E540
sub_0205E540: ; 0x0205E540
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E540

	arm_func_start sub_0205E56C
sub_0205E56C: ; 0x0205E56C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #9
	mov r0, #0
	mov r2, #0x200
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #9
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E56C

	arm_func_start sub_0205E598
sub_0205E598: ; 0x0205E598
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #1
	mov r7, #0
	mov r4, r0
	mov r5, #0x100
	mov r6, r7
_0205E5B4:
	mov r8, r6
	cmp r0, #0
	beq _0205E5D8
	mov r1, r5
	mov r2, r7
	add r0, sb, r7, lsl #8
	bl sub_0205DCA4
	cmp r0, #0
	movge r8, r4
_0205E5D8:
	add r7, r7, #1
	mov r0, r8
	cmp r7, #3
	blt _0205E5B4
	cmp r8, #0
	beq _0205E60C
	add r0, sb, #0x300
	mov r1, #0x100
	mov r2, #3
	bl sub_0205DCA4
	cmp r0, #0
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0205E60C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0205E598

	arm_func_start sub_0205E614
sub_0205E614: ; 0x0205E614
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #1
	mov r7, #0
	mov r6, #0x200
	mov r4, r7
	mov r5, r0
_0205E630:
	cmp r0, #0
	beq _0205E654
	mov r1, r6
	add r0, r8, r7, lsl #9
	add r2, r7, #0x11
	bl sub_0205DCA4
	cmp r0, #0
	movge r0, r5
	bge _0205E658
_0205E654:
	mov r0, r4
_0205E658:
	add r7, r7, #1
	cmp r7, #3
	blt _0205E630
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0205E614

	arm_func_start sub_0205E668
sub_0205E668: ; 0x0205E668
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #1
	mov sl, r0
	mov sb, r1
	mov r6, #0
	mov r4, #0x100
	mov fp, r8
	mov r5, #0xfe
_0205E688:
	add r7, sl, r6, lsl #8
	mov r0, sb
	mov r1, r7
	mov r2, r5
	blx MATH_CalcCRC16
	mov r1, r7
	strh r0, [r1, #0xfe]
	cmp r8, #0
	beq _0205E6C4
	mov r0, r6
	mov r2, r4
	bl sub_0205DD40
	cmp r0, #0
	movge r8, fp
	bge _0205E6C8
_0205E6C4:
	mov r8, #0
_0205E6C8:
	add r6, r6, #1
	cmp r6, #3
	blt _0205E688
	mov r0, sb
	add r1, sl, #0x300
	mov r2, #0xfe
	blx MATH_CalcCRC16
	add r1, sl, #0x300
	strh r0, [r1, #0xfe]
	cmp r8, #0
	beq _0205E70C
	mov r0, #3
	mov r2, #0x100
	bl sub_0205DD40
	cmp r0, #0
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0205E70C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205E668

	arm_func_start sub_0205E714
sub_0205E714: ; 0x0205E714
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #1
	mov sl, r0
	mov sb, r1
	mov r6, #0
	mov r4, #0x200
	mov fp, r8
	mov r5, #0xfe
_0205E734:
	add r7, sl, r6, lsl #9
	mov r0, sb
	mov r1, r7
	mov r2, r5
	blx MATH_CalcCRC16
	mov r1, r7
	strh r0, [r1, #0xfe]
	mov r0, sb
	mov r2, r5
	add r1, r7, #0x100
	blx MATH_CalcCRC16
	mov r1, r7
	add r1, r1, #0x100
	cmp r8, #0
	strh r0, [r1, #0xfe]
	beq _0205E790
	mov r1, r7
	mov r2, r4
	add r0, r6, #0x11
	bl sub_0205DD40
	cmp r0, #0
	movge r8, fp
	bge _0205E794
_0205E790:
	mov r8, #0
_0205E794:
	add r6, r6, #1
	cmp r6, #3
	blt _0205E734
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205E714

	arm_func_start sub_0205E7A8
sub_0205E7A8: ; 0x0205E7A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xe7]
	cmp r0, #0xff
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #2
	movhi r0, #0
	ldmhiia sp!, {r4, pc}
	add r0, r4, #0x40
	bl sub_0205E968
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0205E870
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205E7A8

	arm_func_start sub_0205E7F8
sub_0205E7F8: ; 0x0205E7F8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xe7]
	mov r4, r1
	cmp r2, #0xff
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, #2
	bhi _0205E824
	bl sub_0205E7A8
	ldmia sp!, {r3, r4, r5, pc}
_0205E824:
	add r0, r5, #0x40
	bl sub_0205E968
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_0205E870
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x82]
	cmp r0, #1
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x83]
	cmp r0, #1
	movls r0, #1
	movhi r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E7F8

	arm_func_start sub_0205E870
sub_0205E870: ; 0x0205E870
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0xc0]
	cmp r0, #0
	ldreqb r0, [r4, #0xc1]
	cmpeq r0, #0
	ldreqb r0, [r4, #0xc2]
	cmpeq r0, #0
	bne _0205E8A0
	ldrb r0, [r4, #0xc3]
	cmp r0, #0
	beq _0205E8E8
_0205E8A0:
	add r0, r4, #0xc4
	bl sub_0205EA10
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #0x20
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, pc}
	add r5, sp, #0
	mov r1, r5
	bl sub_0205E93C
	mov r1, r5
	add r0, r4, #0xc0
	bl sub_0205E990
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_0205E8E8:
	ldrb r0, [r4, #0xc8]
	cmp r0, #0
	ldreqb r0, [r4, #0xc9]
	cmpeq r0, #0
	ldreqb r0, [r4, #0xca]
	cmpeq r0, #0
	bne _0205E910
	ldrb r0, [r4, #0xcb]
	cmp r0, #0
	beq _0205E934
_0205E910:
	add r0, r4, #0xc8
	bl sub_0205EA10
	cmp r0, #0
	bne _0205E934
	add r0, r4, #0xcc
	bl sub_0205EA10
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_0205E934:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E870

	arm_func_start sub_0205E93C
sub_0205E93C: ; 0x0205E93C
	mvn r2, #0
	eor r3, r2, r2, lsr r0
	mov r2, #0
_0205E948:
	mov r0, r2, lsl #3
	rsb r0, r0, #0x18
	mov r0, r3, lsr r0
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _0205E948
	bx lr
	arm_func_end sub_0205E93C

	arm_func_start sub_0205E968
sub_0205E968: ; 0x0205E968
	mov r2, #0
_0205E96C:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _0205E96C
	mov r0, #0
	bx lr
	arm_func_end sub_0205E968

	arm_func_start sub_0205E990
sub_0205E990: ; 0x0205E990
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	bl sub_0205EA10
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r4, #4
	add r1, sp, #4
	mov r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r3, [sp]
	ldr r2, [sp, #4]
	sub r0, r4, #6
	orr r1, r2, r3
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r0, r3
	tst r2, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205E990

	arm_func_start sub_0205EA10
sub_0205EA10: ; 0x0205EA10
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end sub_0205EA10

