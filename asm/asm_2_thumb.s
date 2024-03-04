	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02005430
sub_02005430: ; 0x02005430
	push {r3, lr}
	ldr r0, _0200545C ; =0x0209D744
	ldr r0, [r0]
	cmp r0, #0
	beq _0200545A
	mov r0, #2
	bl sub_0203D2A0
	cmp r0, #0
	bne _0200545A
	bl sub_02005464
	cmp r0, #0
	bne _0200545A
	ldr r2, _02005460 ; =0x04000204
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bl sub_02005474
_0200545A:
	pop {r3, pc}
	.align 2, 0
_0200545C: .word 0x0209D744
_02005460: .word 0x04000204
	thumb_func_end sub_02005430

	thumb_func_start sub_02005464
sub_02005464: ; 0x02005464
	bx pc
	nop
	thumb_func_end sub_02005464

