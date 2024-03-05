	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207AB04
sub_0207AB04: ; 0x0207AB04
	add r1, r1, #4
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	sub r2, r2, #0x40
	tst r2, #4
	subne r2, r2, #4
	str r2, [r0, #0x38]
	ands r1, r1, #1
	movne r1, #0x3f
	moveq r1, #0x1f
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end sub_0207AB04

	arm_func_start sub_0207AB70
sub_0207AB70: ; 0x0207AB70
	stmdb sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _0207ABB8 ; =sub_0207002C
	blx r1
	ldmia sp!, {r0, lr}
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	add r0, pc, #0x8 ; =_0207ABB8
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
	.align 2, 0
_0207ABB8: .word sub_0207002C
	arm_func_end sub_0207AB70

	arm_func_start sub_0207ABBC
sub_0207ABBC: ; 0x0207ABBC
	stmdb sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _0207AC1C ; =sub_0207006C
	blx r1
	ldmia sp!, {r0, lr}
	mrs r1, cpsr
	bic r1, r1, #0x1f
	orr r1, r1, #0xd3
	msr cpsr_c, r1
	ldr r1, [r0], #4
	msr spsr_fsxc, r1
	ldr sp, [r0, #0x40]
	ldr lr, [r0, #0x3c]
	ldmia r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	stmdb sp!, {r0, r1, r2, r3, ip, lr}
	blx OS_IsRunOnTwl
	beq _0207AC14
	ldr r0, _0207AC20 ; =0x04000280
_0207AC08:
	ldr r1, [r0]
	ands r1, r1, #0x8000
	bne _0207AC08
_0207AC14:
	ldmia sp!, {r0, r1, r2, r3, ip, lr}
	subs pc, lr, #4
	.align 2, 0
_0207AC1C: .word sub_0207006C
_0207AC20: .word 0x04000280
	arm_func_end sub_0207ABBC

