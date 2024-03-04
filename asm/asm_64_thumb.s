	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02075EE8
sub_02075EE8: ; 0x02075EE8
	push {r4, lr}
	ldr r0, _02075F18 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075F06
	cmp r0, #3
	bls _02075F02
	sub r0, r0, #4
	bl sub_02075F20
	b _02075F06
_02075F02:
	bl sub_0207829C
_02075F06:
	ldr r4, _02075F1C ; =0x0214C050
	ldr r0, [r4, #0x14]
	bl sub_02076758
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_02075F18: .word 0x0209B528
_02075F1C: .word 0x0214C050
	thumb_func_end sub_02075EE8

	thumb_func_start sub_02075F20
sub_02075F20: ; 0x02075F20
	bx pc
	nop
	thumb_func_end sub_02075F20

