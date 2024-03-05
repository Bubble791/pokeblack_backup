	.include "asm/macros.inc"
	.include "fx_asinacosidx.inc"
	.include "global.inc"
	.text

    thumb_func_start FX_AcosIdx
FX_AcosIdx: ; 0x020746C0
	push {r3, r4, r5, r6}
	cmp r0, #0
	blt _020746CE
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xa
	b _020746D4
_020746CE:
	mov r1, #1
	lsl r1, r1, #0xa
	lsl r2, r1, #1
_020746D4:
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r1, r2
	bgt _02074700
	ldr r0, _02074714 ; =FX_SinCosTable_ ; 0x020946BC
	mov r5, #2
_020746E0:
	add r6, r1, r2
	lsr r3, r6, #0x1f
	add r3, r6, r3
	asr r3, r3, #1
	lsl r6, r3, #2
	add r6, r0, r6
	ldrsh r6, [r6, r5]
	cmp r4, r6
	beq _02074700
	cmp r6, r4
	bge _020746FA
	sub r2, r3, #1
	b _020746FC
_020746FA:
	add r1, r3, #1
_020746FC:
	cmp r1, r2
	ble _020746E0
_02074700:
	lsl r0, r3, #1
	add r0, r0, #1
	lsl r1, r0, #0x10
	asr r0, r1, #0xc
	lsr r0, r0, #0x13
	add r0, r1, r0
	lsl r0, r0, #3
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_02074714: .word FX_SinCosTable_
	thumb_func_end FX_AcosIdx
