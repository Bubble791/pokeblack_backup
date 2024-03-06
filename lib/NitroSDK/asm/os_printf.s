	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start OS_SPrintf
OS_SPrintf: ; 0x0207A290
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #0xc
	mov r2, #3
	bic r3, r2
	ldr r1, [sp, #0xc]
	add r2, r3, #4
	bl OS_VSPrintf
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end OS_SPrintf

	thumb_func_start OS_VSPrintf
OS_VSPrintf: ; 0x0207A2AC
	push {r4, lr}
	add r4, r1, #0
	add r3, r2, #0
	ldr r1, _0207A2BC ; =0x7FFFFFFF
	add r2, r4, #0
	bl OS_VSNPrintf
	pop {r4, pc}
	.align 2, 0
_0207A2BC: .word 0x7FFFFFFF
	thumb_func_end OS_VSPrintf

	thumb_func_start OS_SNPrintf
OS_SNPrintf: ; 0x0207A2C0
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, sp, #0x10
	mov r3, #3
	bic r4, r3
	ldr r2, [sp, #0x10]
	add r3, r4, #4
	bl OS_VSNPrintf
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end OS_SNPrintf

	thumb_func_start OS_VSNPrintf
OS_VSNPrintf: ; 0x0207A2DC
	push {r3, lr}
	bl STD_TVSNPrintf
	pop {r3, pc}
	thumb_func_end OS_VSNPrintf

