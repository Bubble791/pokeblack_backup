	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02074568
sub_02074568: ; 0x02074568
	push {r4, lr}
	cmp r0, #0
	ble _020745BC
	cmp r1, #0
	ble _02074594
	cmp r1, r0
	ble _0207457E
	add r2, r0, #0
	mov r4, #0
_0207457A:
	mov r0, #1
	b _02074614
_0207457E:
	cmp r1, r0
	bge _0207458E
	add r2, r1, #0
	add r1, r0, #0
	mov r4, #1
_02074588:
	lsl r4, r4, #0xe
_0207458A:
	mov r0, #0
	b _02074614
_0207458E:
	mov r0, #2
	lsl r0, r0, #0xc
	pop {r4, pc}
_02074594:
	bge _020745B6
	neg r1, r1
	cmp r1, r0
	bge _020745A6
	mov r4, #1
	add r2, r1, #0
	add r1, r0, #0
	lsl r4, r4, #0xe
	b _0207457A
_020745A6:
	cmp r1, r0
	ble _020745B0
	add r2, r0, #0
	mov r4, #2
	b _02074588
_020745B0:
	mov r0, #6
	lsl r0, r0, #0xc
	pop {r4, pc}
_020745B6:
	mov r0, #1
	lsl r0, r0, #0xe
	pop {r4, pc}
_020745BC:
	bge _02074606
	neg r0, r0
	cmp r1, #0
	bge _020745E2
	neg r1, r1
	cmp r1, r0
	ble _020745D0
	add r2, r0, #0
	ldr r4, _0207464C ; =0xFFFF8000
	b _0207457A
_020745D0:
	cmp r1, r0
	bge _020745DC
	add r2, r1, #0
	add r1, r0, #0
	ldr r4, _02074650 ; =0xFFFFC000
	b _0207458A
_020745DC:
	mov r0, #0xa
	lsl r0, r0, #0xc
	pop {r4, pc}
_020745E2:
	ble _02074600
	cmp r1, r0
	bge _020745F0
	add r2, r1, #0
	add r1, r0, #0
	ldr r4, _02074650 ; =0xFFFFC000
	b _0207457A
_020745F0:
	cmp r1, r0
	ble _020745FA
	add r2, r0, #0
	mov r4, #0
	b _0207458A
_020745FA:
	mov r0, #0xe
	lsl r0, r0, #0xc
	pop {r4, pc}
_02074600:
	mov r0, #3
	lsl r0, r0, #0xe
	pop {r4, pc}
_02074606:
	cmp r1, #0
	blt _0207460E
	mov r0, #0
	pop {r4, pc}
_0207460E:
	mov r0, #2
	lsl r0, r0, #0xe
	pop {r4, pc}
_02074614:
	cmp r1, #0
	bne _0207461C
	mov r0, #0
	pop {r4, pc}
_0207461C:
	cmp r0, #0
	beq _02074636
	add r0, r2, #0
	bl FX_Div
	asr r0, r0, #5
	lsl r1, r0, #1
	ldr r0, _02074654 ; =0x020986BC
	ldrsh r0, [r0, r1]
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02074636:
	add r0, r2, #0
	bl FX_Div
	asr r0, r0, #5
	lsl r1, r0, #1
	ldr r0, _02074654 ; =0x020986BC
	ldrsh r0, [r0, r1]
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
_0207464C: .word 0xFFFF8000
_02074650: .word 0xFFFFC000
_02074654: .word 0x020986BC
	thumb_func_end sub_02074568

	thumb_func_start sub_02074658
sub_02074658: ; 0x02074658
	bx lr
	.align 2, 0
	thumb_func_end sub_02074658

