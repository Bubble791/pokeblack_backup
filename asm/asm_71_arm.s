	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

_02077CD4: .word 0x5A827999
_02077CD8: .word 0x6ED9EBA1
_02077CDC: .word 0x8F1BBCDC
_02077CE0: .word 0xCA62C1D6

	arm_func_start MATHi_SHA1ProcessBlock
MATHi_SHA1ProcessBlock: ; 0x02077CE4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov fp, r0
	sub sp, sp, #0x40
	mov ip, sp
	mvn r3, #0xff00
	add r8, fp, #0x14
	mov r1, ip
	ldmia r8!, {r4, r5, r6, r7}
	mov sb, #0x10
_02077D08:
	eor r2, r4, r4, ror #16
	and r2, r3, r2, lsr #8
	eor r4, r2, r4, ror #8
	eor r2, r5, r5, ror #16
	and r2, r3, r2, lsr #8
	eor r5, r2, r5, ror #8
	eor r2, r6, r6, ror #16
	and r2, r3, r2, lsr #8
	eor r6, r2, r6, ror #8
	eor r2, r7, r7, ror #16
	and r2, r3, r2, lsr #8
	eor r7, r2, r7, ror #8
	stmia r1!, {r4, r5, r6, r7}
	subs sb, sb, #4
	ldmneia r8!, {r4, r5, r6, r7}
	bne _02077D08
	ldmia fp, {r4, r5, r6, r7, r8}
	ldr ip, _02077CD4 ; =0x5A827999
	mov sb, #0
_02077D54:
	and sl, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr sl, sl, lr
	add sl, sl, ip
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x10
	bne _02077D54
_02077D9C:
	and sl, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr sl, sl, lr
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x14
	bne _02077D9C
	ldr ip, _02077CD8 ; =0x6ED9EBA1
_02077E30:
	eor sl, r5, r6
	eor sl, sl, r7
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x28
	bne _02077E30
	ldr ip, _02077CDC ; =0x8F1BBCDC
_02077EBC:
	and sl, r5, r6
	and lr, r5, r7
	orr sl, sl, lr
	and lr, r6, r7
	orr sl, sl, lr
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x3c
	bne _02077EBC
	ldr ip, _02077CE0 ; =0xCA62C1D6
_02077F54:
	eor sl, r5, r6
	eor sl, sl, r7
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x50
	bne _02077F54
	ldmia fp, {r1, r2, r3, sb, sl}
	add r1, r1, r4
	add r2, r2, r5
	add r3, r3, r6
	add sb, sb, r7
	add sl, sl, r8
	stmia fp, {r1, r2, r3, sb, sl}
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	arm_func_end MATHi_SHA1ProcessBlock

