	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02005484
sub_02005484: ; 0x02005484
	ldr r3, _02005488 ; =sub_0205F9D0
	bx r3
	.align 2, 0
_02005488: .word sub_0205F9D0
	thumb_func_end sub_02005484

	thumb_func_start sub_0200548C
sub_0200548C: ; 0x0200548C
	ldr r3, _02005490 ; =sub_020827D0
	bx r3
	.align 2, 0
_02005490: .word sub_020827D0
	thumb_func_end sub_0200548C

	thumb_func_start sub_02005494
sub_02005494: ; 0x02005494
	push {r3, lr}
	mov r0, #0
	bl sub_020054A8
	ldr r0, _020054A4 ; =0x0209D744
	mov r1, #1
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_020054A4: .word 0x0209D744
	thumb_func_end sub_02005494

	thumb_func_start sub_020054A8
sub_020054A8: ; 0x020054A8
	bx pc
	nop
	thumb_func_end sub_020054A8

