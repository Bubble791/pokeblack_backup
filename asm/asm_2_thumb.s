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

	arm_func_start sub_02005468
sub_02005468: ; 0x02005468
	ldr ip, _02005470 ; =sub_02769594
	bx ip
	.align 2, 0
_02005470: .word sub_02769594
	arm_func_end sub_02005468

	thumb_func_start sub_02005474
sub_02005474: ; 0x02005474
	bx pc
	nop
	thumb_func_end sub_02005474

	arm_func_start sub_02005478
sub_02005478: ; 0x02005478
	ldr ip, _02005480 ; =sub_027694DC
	bx ip
	.align 2, 0
_02005480: .word sub_027694DC
	arm_func_end sub_02005478

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

	arm_func_start sub_020054AC
sub_020054AC: ; 0x020054AC
	ldr ip, _020054B4 ; =sub_02769588
	bx ip
	.align 2, 0
_020054B4: .word sub_02769588
	arm_func_end sub_020054AC
