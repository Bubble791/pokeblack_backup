	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_020754B8
sub_020754B8: ; 0x020754B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075520 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _02075510
	cmp r3, #0x1c
	bls _02075510
	cmp r6, #3
	bls _020754FC
	mov r1, #5
	lsl r1, r1, #0x18
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _020754F4
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_020754F4:
	add r1, r7, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_020754FC:
	mov r2, #5
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_02075510:
	mov r1, #5
	lsl r1, r1, #0x18
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02075520: .word 0x0209B528
	thumb_func_end sub_020754B8

	thumb_func_start sub_02075524
sub_02075524: ; 0x02075524
	bx pc
	nop
	thumb_func_end sub_02075524

	arm_func_start sub_02075528
sub_02075528: ; 0x02075528
	ldr ip, _02075530 ; =sub_02768180
	bx ip
	.align 2, 0
_02075530: .word sub_02768180
	arm_func_end sub_02075528
