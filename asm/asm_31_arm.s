	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207002C
sub_0207002C: ; 0x0207002C
	ldr r1, _02070068 ; =0x04000290
	stmdb sp!, {r4}
	ldmia r1, {r2, r3, r4, ip}
	stmia r0!, {r2, r3, r4, ip}
	ldrh ip, [r1, #-0x10]
	add r1, r1, #0x28
	ldmia r1, {r2, r3}
	stmia r0!, {r2, r3}
	and ip, ip, #3
	ldrh r2, [r1, #-8]
	strh ip, [r0]
	and r2, r2, #1
	strh r2, [r0, #2]
	ldmia sp!, {r4}
	bx lr
	.align 2, 0
_02070068: .word 0x04000290
	arm_func_end sub_0207002C

	arm_func_start sub_0207006C
sub_0207006C: ; 0x0207006C
	stmdb sp!, {r4}
	ldr r1, _020700A4 ; =0x04000290
	ldmia r0, {r2, r3, r4, ip}
	stmia r1, {r2, r3, r4, ip}
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x1a]
	strh r2, [r1, #-0x10]
	strh r3, [r1, #0x20]
	add r0, r0, #0x10
	add r1, r1, #0x28
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldmia sp!, {r4}
	bx lr
	.align 2, 0
_020700A4: .word 0x04000290
	arm_func_end sub_0207006C

