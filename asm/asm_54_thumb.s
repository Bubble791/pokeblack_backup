	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	arm_func_start sub_02074FE4
sub_02074FE4: ; 0x02074FE4
	ldr ip, _02074FEC ; =sub_027681B8
	bx ip
	.align 2, 0
_02074FEC: .word sub_027681B8
	arm_func_end sub_02074FE4

	thumb_func_start sub_02074FF0
sub_02074FF0: ; 0x02074FF0
	ldr r3, _02075010 ; =0x04000600
	ldr r2, [r3]
	lsr r1, r3, #0xc
	tst r1, r2
	beq _02075000
	mov r0, #0
	mvn r0, r0
	bx lr
_02075000:
	mov r1, #0x1f
	ldr r2, [r3]
	lsl r1, r1, #8
	and r1, r2
	lsr r1, r1, #8
	str r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_02075010: .word 0x04000600
	thumb_func_end sub_02074FF0

	thumb_func_start sub_02075014
sub_02075014: ; 0x02075014
	ldr r3, _02075034 ; =0x04000600
	ldr r2, [r3]
	lsr r1, r3, #0xc
	tst r1, r2
	beq _02075024
	mov r0, #0
	mvn r0, r0
	bx lr
_02075024:
	ldr r2, [r3]
	lsr r1, r3, #0xd
	and r1, r2
	lsr r1, r1, #0xd
	str r1, [r0]
	mov r0, #0
	bx lr
	nop
_02075034: .word 0x04000600
	thumb_func_end sub_02075014

	thumb_func_start sub_02075038
sub_02075038: ; 0x02075038
	asr r1, r0, #9
	ldr r0, _02075044 ; =0x00007FFF
	and r1, r0
	ldr r0, _02075048 ; =0x04000610
	strh r1, [r0]
	bx lr
	.align 2, 0
_02075044: .word 0x00007FFF
_02075048: .word 0x04000610
	thumb_func_end sub_02075038

	thumb_func_start sub_0207504C
sub_0207504C: ; 0x0207504C
	ldr r3, _02075068 ; =0x04000600
	mov r1, #1
	ldr r2, [r3]
	tst r2, r1
	beq _0207505A
	sub r0, r1, #2
	bx lr
_0207505A:
	ldr r2, [r3]
	mov r1, #2
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bx lr
	nop
_02075068: .word 0x04000600
	thumb_func_end sub_0207504C

