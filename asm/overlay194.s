    .include "macros/function.inc"
	.include "overlay194.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy194_21b76e0
ovy194_21b76e0: ; 0x021B76E0
	push {r3, r4, r5, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02199D74
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	bl sub_02199D08
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21b76e0

	thumb_func_start ovy194_21b7708
ovy194_21b7708: ; 0x021B7708
	push {r4, lr}
	ldr r1, _021B7728 ; =0x0000082C
	ldr r0, [r0, r1]
	bl sub_02009790
	mov r4, #0
	mov r1, #0
	bl sub_020097C4
	sub r1, r4, #1
	cmp r0, r1
	bne _021B7722
	mov r4, #1
_021B7722:
	add r0, r4, #0
	pop {r4, pc}
	nop
_021B7728: .word 0x0000082C
	thumb_func_end ovy194_21b7708

	thumb_func_start ovy194_21b772c
ovy194_21b772c: ; 0x021B772C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	mov r0, #0
	bl sub_020421AC
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21b772c

	thumb_func_start ovy194_21b774c
ovy194_21b774c: ; 0x021B774C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201C2C8
	cmp r4, #0
	bne _021B775C
	mov r0, #0
	pop {r4, pc}
_021B775C:
	mov r2, #0
	cmp r0, #0
	ble _021B7772
_021B7762:
	ldrb r1, [r4, r2]
	cmp r1, #0
	beq _021B776C
	mov r0, #1
	pop {r4, pc}
_021B776C:
	add r2, r2, #1
	cmp r2, r0
	blt _021B7762
_021B7772:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21b774c

	thumb_func_start sub_021B7778
sub_021B7778: ; 0x021B7778
	ldr r1, _021B7780 ; =0x000011F2
	ldrb r0, [r0, r1]
	bx lr
	nop
_021B7780: .word 0x000011F2
	thumb_func_end sub_021B7778

	thumb_func_start ovy194_21b7784
ovy194_21b7784: ; 0x021B7784
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021B7790
	mov r0, #0
	pop {r3, pc}
_021B7790:
	ldr r1, _021B77AC ; =0x0000118C
	ldr r0, [r0, r1]
	cmp r0, #4
	blt _021B779C
	mov r0, #0
	pop {r3, pc}
_021B779C:
	bl sub_02042788
	cmp r0, #0
	beq _021B77A8
	mov r0, #1
	pop {r3, pc}
_021B77A8:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B77AC: .word 0x0000118C
	thumb_func_end ovy194_21b7784

	thumb_func_start ovy194_21b77b0
ovy194_21b77b0: ; 0x021B77B0
	push {r3, r4, r5, lr}
	ldr r4, _021B77F8 ; =0x00001094
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B77F4
	add r0, r0, #1
	str r0, [r5, r4]
	cmp r0, #2
	bne _021B77CC
	mov r0, #6
	bl sub_02005EA0
	pop {r3, r4, r5, pc}
_021B77CC:
	cmp r0, #8
	bne _021B77F4
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _021B77FC ; =0x000011F8
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldr r0, _021B7800 ; =0x000003F3
	ldr r1, _021B7804 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #1
	bl sub_02005E68
	mov r0, #0
	str r0, [r5, r4]
_021B77F4:
	pop {r3, r4, r5, pc}
	nop
_021B77F8: .word 0x00001094
_021B77FC: .word 0x000011F8
_021B7800: .word 0x000003F3
_021B7804: .word 0x0000FFFF
	thumb_func_end ovy194_21b77b0

	thumb_func_start sub_021B7808
sub_021B7808: ; 0x021B7808
	ldr r2, _021B7838 ; =0x0000118C
	mov r1, #0
	ldr r0, [r0, r2]
	cmp r0, #8
	bhi _021B7830
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B781E: ; jump table
	.short _021B7832 - _021B781E - 2 ; case 0
	.short _021B7830 - _021B781E - 2 ; case 1
	.short _021B7830 - _021B781E - 2 ; case 2
	.short _021B7830 - _021B781E - 2 ; case 3
	.short _021B7832 - _021B781E - 2 ; case 4
	.short _021B7830 - _021B781E - 2 ; case 5
	.short _021B7832 - _021B781E - 2 ; case 6
	.short _021B7832 - _021B781E - 2 ; case 7
	.short _021B7832 - _021B781E - 2 ; case 8
_021B7830:
	mov r1, #1
_021B7832:
	add r0, r1, #0
	bx lr
	nop
_021B7838: .word 0x0000118C
	thumb_func_end sub_021B7808

	thumb_func_start sub_021B783C
sub_021B783C: ; 0x021B783C
	ldr r1, _021B7850 ; =0x0000118C
	mov r2, #0
	ldr r0, [r0, r1]
	cmp r0, #3
	beq _021B784A
	cmp r0, #9
	bne _021B784C
_021B784A:
	mov r2, #1
_021B784C:
	add r0, r2, #0
	bx lr
	.align 2, 0
_021B7850: .word 0x0000118C
	thumb_func_end sub_021B783C

	thumb_func_start ovy194_21b7854
ovy194_21b7854: ; 0x021B7854
	push {r3, lr}
	cmp r0, #2
	blt _021B7864
	sub r0, r0, #2
	mov r1, #6
	blx sub_0208D65C
	pop {r3, pc}
_021B7864:
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, pc}
	thumb_func_end ovy194_21b7854

	thumb_func_start ovy194_21b786c
ovy194_21b786c: ; 0x021B786C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	cmp r0, #2
	blt _021B7886
	sub r0, r0, #2
	mov r1, #6
	mov r5, #6
	blx sub_0208D65C
	add r0, r4, #0
	mul r0, r5
	add r0, r1, r0
	pop {r3, r4, r5, pc}
_021B7886:
	cmp r4, #3
	bge _021B7890
	lsl r1, r4, #1
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021B7890:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21b786c

	thumb_func_start sub_021B7898
sub_021B7898: ; 0x021B7898
	mov r1, #0x42
	lsl r1, r1, #6
	ldrsh r2, [r0, r1]
	ldr r3, _021B78B0 ; =ovy194_21ba500
	add r2, r2, #1
	strh r2, [r0, r1]
	mov r2, #1
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0
	mov r2, #0
	bx r3
	.align 2, 0
_021B78B0: .word ovy194_21ba500
	thumb_func_end sub_021B7898

	thumb_func_start ovy194_21b78b4
ovy194_21b78b4: ; 0x021B78B4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _021B7956
	mov r0, #0xf6
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021B78D6
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
_021B78D6:
	mov r1, #0xf6
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021B7940
	add r0, r1, #4
	add r1, #8
	ldrsh r2, [r4, r0]
	ldrsh r0, [r4, r1]
	sub r1, r2, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	bpl _021B78F2
	neg r0, r0
_021B78F2:
	cmp r0, #2
	ble _021B78FC
	ldr r0, _021B795C ; =0x00000F5C
	mov r1, #1
	str r1, [r4, r0]
_021B78FC:
	ldr r0, _021B7960 ; =0x00000F66
	ldrsh r1, [r4, r0]
	add r0, r0, #4
	ldrsh r0, [r4, r0]
	sub r1, r1, r0
	ldr r0, [sp]
	sub r0, r1, r0
	bpl _021B790E
	neg r0, r0
_021B790E:
	cmp r0, #2
	ble _021B7918
	ldr r0, _021B795C ; =0x00000F5C
	mov r1, #1
	str r1, [r4, r0]
_021B7918:
	ldr r0, _021B7964 ; =0x00000F64
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	bpl _021B7924
	neg r0, r0
_021B7924:
	cmp r0, #6
	ble _021B7940
	ldr r0, _021B7960 ; =0x00000F66
	ldrsh r1, [r4, r0]
	ldr r0, [sp]
	sub r0, r1, r0
	bpl _021B7934
	neg r0, r0
_021B7934:
	cmp r0, #6
	ble _021B7940
	mov r0, #0xf7
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021B7940:
	ldr r0, [sp]
	cmp r0, #0x10
	blo _021B7956
	cmp r0, #0x90
	bhs _021B7956
	ldr r1, [sp, #4]
	ldr r0, _021B7968 ; =0x00000F54
	str r1, [r4, r0]
	ldr r1, [sp]
	add r0, r0, #4
	str r1, [r4, r0]
_021B7956:
	add sp, #8
	pop {r4, pc}
	nop
_021B795C: .word 0x00000F5C
_021B7960: .word 0x00000F66
_021B7964: .word 0x00000F64
_021B7968: .word 0x00000F54
	thumb_func_end ovy194_21b78b4

	thumb_func_start ovy194_21b796c
ovy194_21b796c: ; 0x021B796C
	push {r4, r5, lr}
	sub sp, #0xc
	mov r4, #0xf6
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B79C8
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #0
	beq _021B79C8
	add r1, r4, #0
	add r1, #0xc
	ldr r0, [r5, r4]
	add r1, r5, r1
	mov r2, #1
	bl sub_0204C178
	add r0, r4, #0
	add r0, #8
	ldrsh r0, [r5, r0]
	ldr r1, [sp, #8]
	add r4, #0xa
	add r0, r1, r0
	add r1, sp, #0
	strh r0, [r1]
	ldrsh r0, [r5, r4]
	ldr r2, [sp, #4]
	add r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0x96
	ble _021B79BA
	mov r0, #0x96
	strh r0, [r1, #2]
_021B79BA:
	mov r0, #0xf6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
_021B79C8:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy194_21b796c

	thumb_func_start sub_021B79CC
sub_021B79CC: ; 0x021B79CC
	mov r1, #0xf6
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021B79DA
	mov r2, #0
	str r2, [r0, r1]
_021B79DA:
	ldr r3, _021B79E0 ; =ovy194_21c54ec
	bx r3
	nop
_021B79E0: .word ovy194_21c54ec
	thumb_func_end sub_021B79CC

	thumb_func_start ovy194_21b79e4
ovy194_21b79e4: ; 0x021B79E4
	push {r4, r5, r6, lr}
	mov r4, #0xf6
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B7A2A
	mov r1, #0x10
	bl sub_0204C438
	add r1, r4, #4
	ldr r0, [r5, r4]
	add r1, r5, r1
	mov r2, #1
	mov r6, #1
	bl sub_0204C140
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	sub r1, r6, #2
	add r0, #0x1c
	str r1, [r5, r0]
	add r4, #0x20
	add r0, r5, #0
	str r1, [r5, r4]
	bl sub_021B79CC
	add r0, r5, #4
	mov r1, #0
	mov r2, #2
	blx MI_CpuFill8
_021B7A2A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy194_21b79e4

	thumb_func_start ovy194_21b7a2c
ovy194_21b7a2c: ; 0x021B7A2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0xf6
	add r5, r0, #0
	lsl r4, r4, #4
	add r6, r2, #0
	str r1, [r5, r4]
	add r0, r1, #0
	add r1, r4, #4
	add r1, r5, r1
	mov r2, #1
	add r7, r3, #0
	bl sub_0204C178
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #1
	bl sub_021C38BC
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DA84
	cmp r0, #0
	beq _021B7AA6
	add r0, r4, #4
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #8
	strh r1, [r5, r0]
	add r0, r4, #6
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #8]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0xa
	strh r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xa
	ldrsh r0, [r5, r0]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	str r0, [sp, #4]
	add r6, r4, #0
	add r6, #8
	ldrsh r6, [r5, r6]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r3, r3, r6
	bl ovy194_21c52e0
	add r0, r4, #0
	sub r0, #0x40
	ldr r0, [r5, r0]
	str r0, [r5, r4]
_021B7AA6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21b7a2c

	thumb_func_start ovy194_21b7aac
ovy194_21b7aac: ; 0x021B7AAC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r4, r3, #0
	sub r3, r6, #1
	add r5, r2, #0
	cmp r1, r3
	beq _021B7B22
	mov r7, #0x63
	lsl r7, r7, #4
	ldr r3, [r4, r7]
	cmp r1, r3
	ble _021B7AC8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B7AC8:
	cmp r1, r3
	beq _021B7AE2
	sub r3, r6, #1
	cmp r5, r3
	beq _021B7AE2
	bl sub_02007CF4
	sub r7, #0x3c
	ldrh r1, [r4, r7]
	bl sub_0201C358
	add r6, r0, #0
	b _021B7B22
_021B7AE2:
	ldr r0, _021B7B28 ; =0x00000838
	ldr r7, [r4, r0]
	add r0, r7, #0
	bl sub_0201FDF8
	cmp r5, r0
	bge _021B7B22
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B7B22
	ldr r0, _021B7B2C ; =0x000005F4
	mov r1, #1
	ldrh r0, [r4, r0]
	mov r3, #0
	mov r2, #1
	str r0, [sp]
	mov r0, #1
	bl sub_0201C2CC
	add r6, r0, #0
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0201FF08
	add r1, r6, #0
	add r2, r4, #0
	blx MI_CpuCopy8
_021B7B22:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7B28: .word 0x00000838
_021B7B2C: .word 0x000005F4
	thumb_func_end ovy194_21b7aac

	thumb_func_start ovy194_21b7b30
ovy194_21b7b30: ; 0x021B7B30
	push {r4, r5, r6, lr}
	mov r6, #0
	mvn r6, r6
	add r4, r2, #0
	cmp r1, r6
	beq _021B7B7C
	mov r5, #0x63
	lsl r5, r5, #4
	ldr r5, [r3, r5]
	cmp r1, r5
	ble _021B7B4A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B7B4A:
	cmp r1, r5
	beq _021B7B58
	cmp r4, r6
	beq _021B7B58
	bl sub_02007CF4
	pop {r4, r5, r6, pc}
_021B7B58:
	ldr r0, _021B7B80 ; =0x00000838
	ldr r5, [r3, r0]
	add r0, r5, #0
	bl sub_0201FDF8
	cmp r4, r0
	bge _021B7B7C
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021B7B7C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FF08
	bl sub_0201D624
	pop {r4, r5, r6, pc}
_021B7B7C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7B80: .word 0x00000838
	thumb_func_end ovy194_21b7b30

	thumb_func_start ovy194_21b7b84
ovy194_21b7b84: ; 0x021B7B84
	push {r3, r4}
	mov r4, #0
	mvn r4, r4
	cmp r0, r4
	beq _021B7BD4
	mov r3, #0x63
	lsl r3, r3, #4
	ldr r3, [r2, r3]
	cmp r0, r3
	ble _021B7B9E
	mov r0, #0
	pop {r3, r4}
	bx lr
_021B7B9E:
	cmp r0, r3
	beq _021B7BBA
	cmp r1, r4
	beq _021B7BBA
	ldr r3, _021B7BDC ; =0x000011FC
	add r3, r2, r3
	mov r2, #0x1e
	mul r2, r0
	add r0, r2, #6
	add r0, r1, r0
	lsl r0, r0, #2
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_021B7BBA:
	cmp r1, #0
	blt _021B7BCE
	cmp r1, #6
	bge _021B7BCE
	ldr r0, _021B7BDC ; =0x000011FC
	add r2, r2, r0
	lsl r0, r1, #2
	add r0, r2, r0
	pop {r3, r4}
	bx lr
_021B7BCE:
	mov r0, #0
	pop {r3, r4}
	bx lr
_021B7BD4:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_021B7BDC: .word 0x000011FC
	thumb_func_end ovy194_21b7b84

	thumb_func_start sub_021B7BE0
sub_021B7BE0: ; 0x021B7BE0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B7BE0

	thumb_func_start sub_021B7BE4
sub_021B7BE4: ; 0x021B7BE4
	ldr r2, _021B7BEC ; =0x000005EC
	str r1, [r0, r2]
	bx lr
	nop
_021B7BEC: .word 0x000005EC
	thumb_func_end sub_021B7BE4
_021B7BF0:
	.byte 0x00, 0x28, 0x06, 0xDB, 0x02, 0x28, 0x04, 0xDA, 0x80, 0x00, 0x09, 0x18, 0x02, 0x48, 0x08, 0x58
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0xC0, 0x46, 0x64, 0x10, 0x00, 0x00, 0x00, 0x28, 0x06, 0xDB
	.byte 0x02, 0x28, 0x04, 0xDA, 0x80, 0x00, 0x09, 0x18, 0x02, 0x48, 0x08, 0x58, 0x70, 0x47, 0x00, 0x20
	.byte 0x70, 0x47, 0xC0, 0x46, 0x64, 0x10, 0x00, 0x00

	thumb_func_start ovy194_21b7c28
ovy194_21b7c28: ; 0x021B7C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	bne _021B7C3E
	add r4, #0x10
	b _021B7C42
_021B7C3E:
	ldr r0, _021B7C48 ; =0x000002E6
	add r4, r4, r0
_021B7C42:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021B7C48: .word 0x000002E6
	thumb_func_end ovy194_21b7c28

	thumb_func_start ovy194_21b7c4c
ovy194_21b7c4c: ; 0x021B7C4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7C78
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B7C6E
	mov r0, #1
	b _021B7C70
_021B7C6E:
	mov r0, #0
_021B7C70:
	ldrb r2, [r4]
	add r1, r6, r0
	ldr r0, _021B7C7C ; =0x000011E8
	strb r2, [r1, r0]
_021B7C78:
	pop {r4, r5, r6, pc}
	nop
_021B7C7C: .word 0x000011E8
	thumb_func_end ovy194_21b7c4c

	thumb_func_start ovy194_21b7c80
ovy194_21b7c80: ; 0x021B7C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021B7C98
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7CBC ; =0x000005E4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_021B7C98:
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	bne _021B7CAE
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7CBC ; =0x000005E4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_021B7CAE:
	mov r0, #1
	sub r0, r0, r4
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021B7CBC ; =0x000005E4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7CBC: .word 0x000005E4
	thumb_func_end ovy194_21b7c80

	thumb_func_start ovy194_21b7cc0
ovy194_21b7cc0: ; 0x021B7CC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021B7CDA
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7D00 ; =0x000005E4
	str r6, [r1, r0]
	pop {r4, r5, r6, pc}
_021B7CDA:
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	bne _021B7CF0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7D00 ; =0x000005E4
	str r6, [r1, r0]
	pop {r4, r5, r6, pc}
_021B7CF0:
	mov r0, #1
	sub r0, r0, r4
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021B7D00 ; =0x000005E4
	str r6, [r1, r0]
	pop {r4, r5, r6, pc}
	nop
_021B7D00: .word 0x000005E4
	thumb_func_end ovy194_21b7cc0

	thumb_func_start ovy194_21b7d04
ovy194_21b7d04: ; 0x021B7D04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021B7D1C
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7D40 ; =0x000005DC
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_021B7D1C:
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	bne _021B7D32
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021B7D40 ; =0x000005DC
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_021B7D32:
	mov r0, #1
	sub r0, r0, r4
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021B7D40 ; =0x000005DC
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7D40: .word 0x000005DC
	thumb_func_end ovy194_21b7d04

	thumb_func_start ovy194_21b7d44
ovy194_21b7d44: ; 0x021B7D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7D8A
	bl sub_0201C2C8
	add r2, r0, #0
	lsl r0, r5, #2
	ldr r6, _021B7D8C ; =0x00001064
	add r3, r4, r0
	ldr r1, _021B7D90 ; =0x000005DC
	ldr r0, [r3, r6]
	ldr r1, [r3, r1]
	blx MI_CpuCopy8
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B7D8A
	add r0, r5, #1
	sub r6, #0xc8
	str r0, [r4, r6]
	ldr r1, _021B7D94 ; =0x000011FB
	mov r0, #0xf0
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	strb r0, [r4, r1]
_021B7D8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7D8C: .word 0x00001064
_021B7D90: .word 0x000005DC
_021B7D94: .word 0x000011FB
	thumb_func_end ovy194_21b7d44

	thumb_func_start ovy194_21b7d98
ovy194_21b7d98: ; 0x021B7D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bne _021B7E00
	bl sub_02040440
	bl sub_02042A6C
	cmp r4, r0
	beq _021B7E00
	ldr r0, _021B7E04 ; =0x00001064
	lsl r4, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r4]
	mov r1, #0xa9
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021B7DF2
	ldr r1, [sp, #0x24]
	ldr r2, [r6, r4]
	add r0, r5, #0
	bl ovy194_21bc124
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r3, [r6, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c5138
	ldr r2, [r6, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be6c0
_021B7DF2:
	ldr r1, _021B7E08 ; =0x000011FB
	mov r0, #0xf0
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	strb r0, [r5, r1]
_021B7E00:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7E04: .word 0x00001064
_021B7E08: .word 0x000011FB
	thumb_func_end ovy194_21b7d98

	thumb_func_start ovy194_21b7e0c
ovy194_21b7e0c: ; 0x021B7E0C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ovy194_21b7d98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy194_21b7e0c

	thumb_func_start ovy194_21b7e20
ovy194_21b7e20: ; 0x021B7E20
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl ovy194_21b7d98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy194_21b7e20

	thumb_func_start ovy194_21b7e34
ovy194_21b7e34: ; 0x021B7E34
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	bl ovy194_21b7d98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy194_21b7e34

	thumb_func_start ovy194_21b7e48
ovy194_21b7e48: ; 0x021B7E48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _021B7E7C
	bl sub_02040440
	bl sub_02042A6C
	cmp r7, r0
	bne _021B7E74
	lsl r0, r4, #2
	add r1, r6, r0
	mov r0, #0xff
	lsl r0, r0, #4
	str r5, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E74:
	lsl r0, r4, #2
	add r1, r6, r0
	ldr r0, _021B7E80 ; =0x00000FFC
	str r5, [r1, r0]
_021B7E7C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7E80: .word 0x00000FFC
	thumb_func_end ovy194_21b7e48

	thumb_func_start ovy194_21b7e84
ovy194_21b7e84: ; 0x021B7E84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp]
	ldrb r0, [r2]
	add r2, r4, #0
	bl ovy194_21b7e48
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy194_21b7e84

	thumb_func_start ovy194_21b7e9c
ovy194_21b7e9c: ; 0x021B7E9C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r2]
	add r2, r4, #0
	bl ovy194_21b7e48
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy194_21b7e9c

	thumb_func_start ovy194_21b7eb4
ovy194_21b7eb4: ; 0x021B7EB4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r2]
	add r2, r4, #0
	bl ovy194_21b7e48
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy194_21b7eb4

	thumb_func_start ovy194_21b7ecc
ovy194_21b7ecc: ; 0x021B7ECC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7EE8
	lsl r0, r5, #2
	add r1, r6, r0
	ldrb r2, [r4]
	ldr r0, _021B7EEC ; =0x000005E4
	str r2, [r1, r0]
_021B7EE8:
	pop {r4, r5, r6, pc}
	nop
_021B7EEC: .word 0x000005E4
	thumb_func_end ovy194_21b7ecc

	thumb_func_start ovy194_21b7ef0
ovy194_21b7ef0: ; 0x021B7EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7F16
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B7F16
	ldr r1, _021B7F18 ; =0x000011FB
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021B7F16:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7F18: .word 0x000011FB
	thumb_func_end ovy194_21b7ef0

	thumb_func_start ovy194_21b7f1c
ovy194_21b7f1c: ; 0x021B7F1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021B7F34
	bl sub_02040440
	bl sub_02042A6C
	cmp r4, r0
_021B7F34:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21b7f1c

	thumb_func_start ovy194_21b7f38
ovy194_21b7f38: ; 0x021B7F38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7F70
	bl sub_02040440
	bl sub_02042A6C
	cmp r6, r0
	beq _021B7F70
	ldrb r0, [r5]
	ldr r1, _021B7F74 ; =0x000011F2
	ldrb r2, [r5, #1]
	strb r0, [r4, r1]
	add r0, r1, #2
	strb r2, [r4, r0]
	ldrb r1, [r4, r1]
	mov r0, #0xa0
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021B7F78 ; =0x0000107E
	add r2, #0x10
	strh r2, [r4, r0]
_021B7F70:
	pop {r4, r5, r6, pc}
	nop
_021B7F74: .word 0x000011F2
_021B7F78: .word 0x0000107E
	thumb_func_end ovy194_21b7f38

	thumb_func_start ovy194_21b7f7c
ovy194_21b7f7c: ; 0x021B7F7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B7FA0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B7FA0
	ldrb r1, [r4]
	ldr r0, _021B7FA4 ; =0x000011E7
	strb r1, [r6, r0]
_021B7FA0:
	pop {r4, r5, r6, pc}
	nop
_021B7FA4: .word 0x000011E7
	thumb_func_end ovy194_21b7f7c

	thumb_func_start ovy194_21b7fa8
ovy194_21b7fa8: ; 0x021B7FA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x40]
	cmp r1, r0
	bne _021B8034
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B8034
	ldr r0, _021B8038 ; =0x0000082C
	ldr r0, [r4, r0]
	bl sub_02017934
	bl sub_02009B78
	add r7, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	mov r2, #0x28
	blx MI_CpuCopy8
	add r0, sp, #0
	bl sub_02008C0C
	add r5, r0, #0
	add r0, sp, #0
	bl sub_02008C10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02008C04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202B57C
	add r6, r0, #0
	add r0, sp, #0
	bl sub_02008C04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202B590
	cmp r5, r6
	bne _021B8022
	cmp r4, r0
	bne _021B8022
	add r0, sp, #0
	add r1, r5, #0
	add r2, r4, #0
	b _021B8028
_021B8022:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0
_021B8028:
	bl sub_02008C14
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02035350
_021B8034:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B8038: .word 0x0000082C
	thumb_func_end ovy194_21b7fa8

	thumb_func_start ovy194_21b803c
ovy194_21b803c: ; 0x021B803C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B8056
	ldrb r2, [r4]
	ldr r0, _021B8058 ; =0x000011E0
	add r1, r6, r5
	strb r2, [r1, r0]
_021B8056:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B8058: .word 0x000011E0
	thumb_func_end ovy194_21b803c

	thumb_func_start ovy194_21b805c
ovy194_21b805c: ; 0x021B805C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B8080
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B8080
	ldrb r1, [r4]
	ldr r0, _021B8084 ; =0x00001060
	str r1, [r6, r0]
_021B8080:
	pop {r4, r5, r6, pc}
	nop
_021B8084: .word 0x00001060
	thumb_func_end ovy194_21b805c

	thumb_func_start ovy194_21b8088
ovy194_21b8088: ; 0x021B8088
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B80BA
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B80BA
	ldr r2, [r4]
	add r0, r6, #0
	mov r1, #1
	bl ovy194_21bc29c
	ldr r2, [r4]
	add r0, r6, #0
	mov r1, #1
	bl ovy194_21c50d8
_021B80BA:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy194_21b8088

	thumb_func_start ovy194_21b80bc
ovy194_21b80bc: ; 0x021B80BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B80E0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B80E0
	add r0, r4, #0
	mov r1, #1
	bl ovy194_21b8200
_021B80E0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21b80bc

	thumb_func_start ovy194_21b80e4
ovy194_21b80e4: ; 0x021B80E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B8106
	bl sub_0203FFC4
	cmp r5, r0
	beq _021B8106
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _021B8108 ; =0x0000107E
	strh r1, [r6, r0]
_021B8106:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B8108: .word 0x0000107E
	thumb_func_end ovy194_21b80e4

	thumb_func_start ovy194_21b810c
ovy194_21b810c: ; 0x021B810C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B8130
	bl sub_0203FFC4
	cmp r5, r0
	beq _021B8130
	ldrb r1, [r4]
	add r0, r6, #0
	mov r2, #1
	bl ovy194_21be648
_021B8130:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21b810c

	thumb_func_start ovy194_21b8134
ovy194_21b8134: ; 0x021B8134
	push {r3, lr}
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	pop {r3, pc}
	thumb_func_end ovy194_21b8134

	thumb_func_start ovy194_21b8140
ovy194_21b8140: ; 0x021B8140
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B8162
	bl sub_0203FFC4
	cmp r5, r0
	beq _021B8162
	ldrb r1, [r4]
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r6, r0]
_021B8162:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy194_21b8140

	thumb_func_start ovy194_21b8164
ovy194_21b8164: ; 0x021B8164
	push {r3, lr}
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	pop {r3, pc}
	thumb_func_end ovy194_21b8164

	thumb_func_start ovy194_21b8170
ovy194_21b8170: ; 0x021B8170
	push {r3, lr}
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	pop {r3, pc}
	thumb_func_end ovy194_21b8170

	thumb_func_start ovy194_21b817c
ovy194_21b817c: ; 0x021B817C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B8190
	add r0, r4, #0
	mov r1, #0
	bl sub_021B7BE4
_021B8190:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21b817c

	thumb_func_start ovy194_21b8194
ovy194_21b8194: ; 0x021B8194
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021B81C0 ; =0x000005F4
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	ldr r1, _021B81C4 ; =ovy194_21b817c
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021B81C0: .word 0x000005F4
_021B81C4: .word ovy194_21b817c
	thumb_func_end ovy194_21b8194

	thumb_func_start ovy194_21b81c8
ovy194_21b81c8: ; 0x021B81C8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	beq _021B81FA
	bl ovy194_21c24dc
	add r0, r5, #0
	bl sub_021B7808
	mov r2, #1
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, r4
	add r3, r6, #0
	bl ovy194_21c24ac
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21c0918
_021B81FA:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21b81c8

	thumb_func_start ovy194_21b8200
ovy194_21b8200: ; 0x021B8200
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B8220
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21c24dc
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21c123c
	pop {r4, r5, r6, pc}
_021B8220:
	mov r4, #0
_021B8222:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy194_21c50d8
	add r4, r4, #1
	cmp r4, #3
	blt _021B8222
	pop {r4, r5, r6, pc}
	thumb_func_end ovy194_21b8200

	thumb_func_start ovy194_21b8234
ovy194_21b8234: ; 0x021B8234
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B8250
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	b _021B825E
_021B8250:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
_021B825E:
	bl ovy194_21b7c80
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021B8278
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B8278:
	add r0, r4, #0
	mov r1, #0x4c
	add r2, r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021B828A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B828A:
	ldr r0, _021B82A4 ; =0x00000838
	ldr r0, [r5, r0]
	bl sub_02020100
	cmp r0, #1
	bne _021B829E
	cmp r6, #0
	beq _021B829E
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B829E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B82A4: .word 0x00000838
	thumb_func_end ovy194_21b8234

	thumb_func_start ovy194_21b82a8
ovy194_21b82a8: ; 0x021B82A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021B82F8 ; =0x00000828
	add r3, r5, #0
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl ovy194_21b7b30
	ldr r1, _021B82FC ; =0x0000118C
	add r6, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021B82C6
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B82C6:
	mov r1, #0x63
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	cmp r4, r1
	beq _021B82D4
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B82D4:
	mov r1, #0x4c
	mov r2, #0
	mov r4, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021B82E6
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021B82E6:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203600C
	cmp r0, #0
	bne _021B82F4
	mov r4, #1
_021B82F4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B82F8: .word 0x00000828
_021B82FC: .word 0x0000118C
	thumb_func_end ovy194_21b82a8

	thumb_func_start ovy194_21b8300
ovy194_21b8300: ; 0x021B8300
	push {r3, r4, r5, lr}
	mov r1, #3
	mov r2, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021B8316
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B8316:
	add r0, r5, #0
	mov r1, #5
	add r2, r4, #0
	bl sub_0201CCF8
	ldr r1, _021B832C ; =0x000002AE
	cmp r0, r1
	ble _021B8328
	mov r4, #1
_021B8328:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B832C: .word 0x000002AE
	thumb_func_end ovy194_21b8300

	thumb_func_start ovy194_21b8330
ovy194_21b8330: ; 0x021B8330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021B8340
	mov r4, #1
_021B8340:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	bl ovy194_21b8300
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21b8330

	thumb_func_start ovy194_21b8350
ovy194_21b8350: ; 0x021B8350
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	bl sub_021B7808
	cmp r0, #0
	beq _021B8360
	mov r4, #0
_021B8360:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	bl ovy194_21b8300
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21b8350

	thumb_func_start ovy194_21b8370
ovy194_21b8370: ; 0x021B8370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B838C
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	b _021B839A
_021B838C:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
_021B839A:
	bl ovy194_21b7c80
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #0
	beq _021B83C6
	ldr r0, _021B83CC ; =0x000011F4
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021B83C6
	cmp r4, #0
	bne _021B83C6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B83C6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021B83CC: .word 0x000011F4
	thumb_func_end ovy194_21b8370

	thumb_func_start ovy194_21b83d0
ovy194_21b83d0: ; 0x021B83D0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, sp, #0
	bl ovy194_21b7784
	add r6, r0, #0
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B84A2
	cmp r6, #0
	beq _021B8490
	add r0, r5, #0
	bl ovy194_21b8234
	cmp r0, #0
	beq _021B8408
	mov r0, #5
	strb r0, [r4, #4]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #4
	b _021B8470
_021B8408:
	add r0, r5, #0
	bl ovy194_21b8330
	cmp r0, #0
	beq _021B8426
	mov r0, #7
	strb r0, [r4, #3]
	bl sub_02040440
	mov r1, #3
	add r3, sp, #0
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, #3
	b _021B8470
_021B8426:
	add r0, r5, #0
	bl ovy194_21b8350
	cmp r0, #0
	beq _021B8444
	mov r0, #8
	strb r0, [r4, #2]
	bl sub_02040440
	mov r1, #3
	add r3, sp, #0
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, #2
	b _021B8470
_021B8444:
	add r0, r5, #0
	bl ovy194_21b8370
	cmp r0, #0
	beq _021B8460
	mov r6, #6
	strb r6, [r4, #1]
	bl sub_02040440
	add r3, sp, #0
	lsl r1, r6, #9
	mov r2, #1
	add r3, #1
	b _021B8470
_021B8460:
	mov r0, #2
	strb r0, [r4]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
_021B8470:
	bl sub_02042BE8
	cmp r0, #0
	beq _021B84A2
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B84A8 ; =ovy194_21b94ec
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #8
	pop {r4, r5, r6, pc}
_021B8490:
	ldr r0, _021B84AC ; =0x000011E0
	mov r1, #2
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r1, _021B84A8 ; =ovy194_21b94ec
	add r0, r5, #0
	bl sub_021B7BE4
_021B84A2:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021B84A8: .word ovy194_21b94ec
_021B84AC: .word 0x000011E0
	thumb_func_end ovy194_21b83d0

	thumb_func_start ovy194_21b84b0
ovy194_21b84b0: ; 0x021B84B0
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #6
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r1, _021B84DC ; =ovy194_21b83d0
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	nop
_021B84DC: .word ovy194_21b83d0
	thumb_func_end ovy194_21b84b0

	thumb_func_start ovy194_21b84e0
ovy194_21b84e0: ; 0x021B84E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	add r0, sp, #0
	bne _021B84FE
	ldr r2, _021B8560 ; =0x021C6384
	add r1, sp, #4
	ldrh r3, [r2]
	strh r3, [r0, #4]
	ldrh r2, [r2, #2]
	strh r2, [r0, #6]
	b _021B850A
_021B84FE:
	ldr r2, _021B8564 ; =0x021C6380
	add r1, sp, #0
	ldrh r3, [r2]
	strh r3, [r0]
	ldrh r2, [r2, #2]
	strh r2, [r0, #2]
_021B850A:
	ldr r0, _021B8568 ; =0x00000F0C
	mov r2, #1
	ldr r0, [r5, r0]
	bl sub_0204C140
	bl sub_0203D554
	cmp r0, #0
	beq _021B852E
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy194_21c4970
	ldr r0, _021B8568 ; =0x00000F0C
	mov r1, #0
	ldr r0, [r5, r0]
	b _021B853E
_021B852E:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy194_21c4970
	ldr r0, _021B8568 ; =0x00000F0C
	mov r1, #1
	ldr r0, [r5, r0]
_021B853E:
	bl sub_0204C124
	cmp r6, #0
	beq _021B855C
	ldr r4, _021B856C ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r4]
	bl ovy194_21b7d04
	add r1, r0, #0
	ldr r2, [r5, r4]
	add r0, r5, #0
	mov r3, #1
	bl ovy194_21c0fa0
_021B855C:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B8560: .word 0x021C6384
_021B8564: .word 0x021C6380
_021B8568: .word 0x00000F0C
_021B856C: .word 0x000010A0
	thumb_func_end ovy194_21b84e0

	thumb_func_start ovy194_21b8570
ovy194_21b8570: ; 0x021B8570
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B85FC
	mov r0, #3
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl ovy194_21c0aec
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	add r0, r5, #0
	bl ovy194_21c2c84
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c200c
	mov r0, #3
	bl sub_02045B7C
	ldr r0, _021B8600 ; =0x04000050
	mov r1, #0
	strh r4, [r0]
	add r0, r5, #0
	bl ovy194_21b7d04
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b81c8
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b81c8
	add r0, r5, #0
	bl sub_021B7898
	mov r0, #6
	str r0, [sp]
	ldr r0, _021B8604 ; =0x000005F4
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #3
	mov r3, #0
	bl sub_020279B4
	ldr r1, _021B8608 ; =ovy194_21b8838
	add r0, r5, #0
	bl sub_021B7BE4
_021B85FC:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B8600: .word 0x04000050
_021B8604: .word 0x000005F4
_021B8608: .word ovy194_21b8838
	thumb_func_end ovy194_21b8570

	thumb_func_start ovy194_21b860c
ovy194_21b860c: ; 0x021B860C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021B873C ; =0x000011F9
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021B8624
	bl sub_02027ACC
	cmp r0, #0
	bne _021B8626
_021B8624:
	b _021B8738
_021B8626:
	bl sub_0203D554
	cmp r0, #0
	beq _021B8656
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021B863C
	add r0, r4, #0
	bl sub_0203D564
_021B863C:
	cmp r6, #0
	beq _021B8656
	mov r0, #0
	bl sub_0203D564
	ldr r1, _021B8740 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #0
	bl ovy194_21b84e0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B8656:
	mov r0, #3
	mov r1, #1
	mov r6, #1
	bl sub_02044C98
	ldr r0, _021B8744 ; =0x021C63F4
	bl sub_0203DA0C
	cmp r0, #0
	beq _021B8674
	cmp r0, #1
	beq _021B86A2
	cmp r0, #2
	beq _021B86B6
	b _021B86B8
_021B8674:
	ldr r0, _021B8740 ; =0x000010A0
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021B8684
	bl sub_0203D554
	cmp r0, #0
	bne _021B86B8
_021B8684:
	mov r0, #0
_021B8686:
	ldr r6, _021B8740 ; =0x000010A0
	str r0, [r5, r6]
	mov r0, #1
	bl sub_0203D564
	ldr r0, _021B8748 ; =0x00000548
	bl sub_02006254
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #1
	bl ovy194_21b84e0
	b _021B86B8
_021B86A2:
	ldr r0, _021B8740 ; =0x000010A0
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021B86B2
	bl sub_0203D554
	cmp r0, #0
	bne _021B86B8
_021B86B2:
	mov r0, #1
	b _021B8686
_021B86B6:
	add r4, r6, #0
_021B86B8:
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021B86C6
	mov r0, #0
	bl sub_0203D564
_021B86C6:
	cmp r6, #0x20
	beq _021B86DC
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021B86D8
	mov r0, #0
	bl sub_0203D564
_021B86D8:
	cmp r6, #0x10
	bne _021B86FC
_021B86DC:
	ldr r6, _021B8740 ; =0x000010A0
	mov r0, #1
	ldr r1, [r5, r6]
	sub r0, r0, r1
	str r0, [r5, r6]
	ldr r0, _021B8748 ; =0x00000548
	bl sub_02006254
	mov r0, #0
	bl sub_0203D564
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #1
	bl ovy194_21b84e0
_021B86FC:
	mov r6, #0x27
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_02199B90
	ldr r0, [r5, r6]
	bl sub_02199C08
	cmp r0, #1
	bne _021B8712
	mov r4, #1
_021B8712:
	cmp r4, #0
	beq _021B8738
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021B874C ; =0x000005F4
	mov r1, #0
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	ldr r1, _021B8750 ; =ovy194_21b8570
	add r0, r5, #0
	bl sub_021B7BE4
_021B8738:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B873C: .word 0x000011F9
_021B8740: .word 0x000010A0
_021B8744: .word 0x021C63F4
_021B8748: .word 0x00000548
_021B874C: .word 0x000005F4
_021B8750: .word ovy194_21b8570
	thumb_func_end ovy194_21b860c

	thumb_func_start ovy194_21b8754
ovy194_21b8754: ; 0x021B8754
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B879E
	ldr r0, _021B87A4 ; =0x000010A0
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy194_21c0b6c
	add r0, r4, #0
	bl sub_021B7898
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, _021B87A8 ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r4, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	ldr r1, _021B87AC ; =ovy194_21b860c
	add r0, r4, #0
	bl sub_021B7BE4
_021B879E:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B87A4: .word 0x000010A0
_021B87A8: .word 0x000005F4
_021B87AC: .word ovy194_21b860c
	thumb_func_end ovy194_21b8754

	thumb_func_start ovy194_21b87b0
ovy194_21b87b0: ; 0x021B87B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _021B8828 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B8822
	ldr r0, [r5, r4]
	bl sub_0202DC00
	add r6, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r1, #0
	str r1, [r5, r4]
	cmp r6, #0
	beq _021B87EA
	cmp r6, #1
	beq _021B87F6
	cmp r6, #2
	beq _021B881A
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B87EA:
	ldr r1, _021B882C ; =ovy194_21b84b0
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B87F6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	sub r4, #0x58
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	ldr r1, _021B8830 ; =ovy194_21b8754
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B881A:
	ldr r1, _021B8834 ; =ovy194_21b9b00
	add r0, r5, #0
	bl sub_021B7BE4
_021B8822:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021B8828: .word 0x0000064C
_021B882C: .word ovy194_21b84b0
_021B8830: .word ovy194_21b8754
_021B8834: .word ovy194_21b9b00
	thumb_func_end ovy194_21b87b0

	thumb_func_start ovy194_21b8838
ovy194_21b8838: ; 0x021B8838
	push {r4, r5, r6, lr}
	mov r6, #0x72
	lsl r6, r6, #4
	add r2, r6, #0
	add r5, r0, #0
	add r2, #0x1c
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x11
	bl GFL_MsgDataLoadStrbuf
	mov r4, #0
	add r6, r6, #4
_021B8852:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	add r2, r0, #0
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_02024464
	add r4, r4, #1
	cmp r4, #2
	blt _021B8852
	ldr r2, _021B888C ; =0x00000724
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x14
	add r2, #0x18
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r5, #0
	bl sub_021BFE28
	ldr r1, _021B8890 ; =ovy194_21b8894
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B888C: .word 0x00000724
_021B8890: .word ovy194_21b8894
	thumb_func_end ovy194_21b8838

	thumb_func_start ovy194_21b8894
ovy194_21b8894: ; 0x021B8894
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B88D6
	ldr r5, _021B88DC ; =0x021C63E8
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	add r0, r4, #0
	mov r2, #3
	bl ovy194_21c0214
	mov r0, #0x1f
	bl sub_02046D38
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r1, _021B88E0 ; =ovy194_21b87b0
	add r0, r4, #0
	bl sub_021B7BE4
_021B88D6:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B88DC: .word 0x021C63E8
_021B88E0: .word ovy194_21b87b0
	thumb_func_end ovy194_21b8894

	thumb_func_start ovy194_21b88e4
ovy194_21b88e4: ; 0x021B88E4
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B8910
	bl sub_02040440
	mov r1, #0x14
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021B891E
	add r0, r4, #0
	bl ovy194_21bfe9c
	ldr r1, _021B8920 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021B8910:
	add r0, r4, #0
	bl ovy194_21bfe9c
	ldr r1, _021B8920 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
_021B891E:
	pop {r4, pc}
	.align 2, 0
_021B8920: .word ovy194_21b8194
	thumb_func_end ovy194_21b88e4

	thumb_func_start ovy194_21b8924
ovy194_21b8924: ; 0x021B8924
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B8956
	ldr r0, _021B8958 ; =0x00000F2C
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _021B8956
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B894E
	bl sub_02040440
	mov r1, #0x14
	mov r2, #8
	bl sub_02040624
_021B894E:
	ldr r1, _021B895C ; =ovy194_21b88e4
	add r0, r4, #0
	bl sub_021B7BE4
_021B8956:
	pop {r4, pc}
	.align 2, 0
_021B8958: .word 0x00000F2C
_021B895C: .word ovy194_21b88e4
	thumb_func_end ovy194_21b8924

	thumb_func_start ovy194_21b8960
ovy194_21b8960: ; 0x021B8960
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r6, r0, #0
	mov r0, #1
	sub r4, r0, r6
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021B8980
	mov r6, #0
	mov r4, #1
_021B8980:
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B89A2
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021B89A2
	add r0, r5, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021B89A2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy194_21bc038
	ldr r1, _021B8A48 ; =0x000011E0
	add r0, r5, r6
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _021B89C8
	add r2, r5, r4
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _021B89C8
	ldr r1, _021B8A4C ; =ovy194_21b8838
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021B89C8:
	cmp r0, #4
	bne _021B8A08
	ldr r1, _021B8A48 ; =0x000011E0
	add r2, r5, r4
	ldrb r1, [r2, r1]
	cmp r1, #4
	bne _021B8A08
	mov r2, #0x72
	ldr r0, [r5, #8]
	mov r1, #3
	str r1, [r0, #8]
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x8e
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	ldr r0, _021B8A50 ; =0x00000F2C
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _021B8A54 ; =ovy194_21b8924
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021B8A08:
	ldr r1, _021B8A48 ; =0x000011E0
	add r2, r5, r4
	ldrb r1, [r2, r1]
	cmp r1, #4
	bne _021B8A16
	mov r7, #0x61
	b _021B8A1C
_021B8A16:
	cmp r0, #4
	bne _021B8A1C
	mov r7, #0x67
_021B8A1C:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r0, _021B8A48 ; =0x000011E0
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r1, _021B8A58 ; =ovy194_21b9c44
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8A48: .word 0x000011E0
_021B8A4C: .word ovy194_21b8838
_021B8A50: .word 0x00000F2C
_021B8A54: .word ovy194_21b8924
_021B8A58: .word ovy194_21b9c44
	thumb_func_end ovy194_21b8960

	thumb_func_start ovy194_21b8a5c
ovy194_21b8a5c: ; 0x021B8A5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	add r5, r0, #0
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B8AB6
	cmp r5, #0
	bne _021B8A88
	ldr r0, _021B8AB8 ; =0x000011E0
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	ldr r1, _021B8ABC ; =ovy194_21b8960
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021B8A88:
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B8AB6
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B8ABC ; =ovy194_21b8960
	add r0, r4, #0
	bl sub_021B7BE4
_021B8AB6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B8AB8: .word 0x000011E0
_021B8ABC: .word ovy194_21b8960
	thumb_func_end ovy194_21b8a5c

	thumb_func_start ovy194_21b8ac0
ovy194_21b8ac0: ; 0x021B8AC0
	push {r4, r5, r6, lr}
	ldr r4, _021B8B18 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B8B14
	ldr r0, [r5, r4]
	bl sub_0202DC00
	add r6, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	mov r0, #0
	str r0, [r5, r4]
	cmp r6, #0
	bne _021B8B0C
	add r0, r4, #0
	add r0, #0xd4
	add r4, #0xec
	ldr r0, [r5, r0]
	ldr r2, [r5, r4]
	mov r1, #6
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	ldr r1, _021B8B1C ; =ovy194_21b8a5c
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021B8B0C:
	ldr r1, _021B8B20 ; =ovy194_21ba7d4
	add r0, r5, #0
	bl sub_021B7BE4
_021B8B14:
	pop {r4, r5, r6, pc}
	nop
_021B8B18: .word 0x0000064C
_021B8B1C: .word ovy194_21b8a5c
_021B8B20: .word ovy194_21ba7d4
	thumb_func_end ovy194_21b8ac0

	thumb_func_start ovy194_21b8b24
ovy194_21b8b24: ; 0x021B8B24
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ovy194_21b9df4
	cmp r0, #0
	beq _021B8B5A
	ldr r0, _021B8B60 ; =0x021C6388
	add r1, sp, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	bl ovy194_21c0214
	mov r2, #0x1b
	ldr r0, _021B8B64 ; =0x04001050
	mov r1, #0x1b
	sub r2, #0x23
	bl G2x_SetBlendBrightness_
	ldr r1, _021B8B68 ; =ovy194_21b8ac0
	add r0, r4, #0
	bl sub_021B7BE4
_021B8B5A:
	add sp, #8
	pop {r4, pc}
	nop
_021B8B60: .word 0x021C6388
_021B8B64: .word 0x04001050
_021B8B68: .word ovy194_21b8ac0
	thumb_func_end ovy194_21b8b24

	thumb_func_start ovy194_21b8b6c
ovy194_21b8b6c: ; 0x021B8B6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021B8BA8 ; =0x00000F88
	ldr r1, [r4, r0]
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _021B8B88
	mov r0, #1
	str r0, [sp]
_021B8B88:
	bl sub_02040440
	ldr r1, _021B8BAC ; =0x00000C16
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B8BA2
	ldr r1, _021B8BB0 ; =ovy194_21b8b24
	add r0, r4, #0
	bl sub_021B7BE4
_021B8BA2:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021B8BA8: .word 0x00000F88
_021B8BAC: .word 0x00000C16
_021B8BB0: .word ovy194_21b8b24
	thumb_func_end ovy194_21b8b6c

	thumb_func_start ovy194_21b8bb4
ovy194_21b8bb4: ; 0x021B8BB4
	push {r3, r4, r5, lr}
	mov r5, #0x27
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	mov r1, #7
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r4, r5]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r4, r5]
	mov r1, #9
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r4, r5]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r0, _021B8C00 ; =0x00000F04
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0204C124
	add r0, r4, #0
	bl sub_021B79CC
	ldr r1, _021B8C04 ; =ovy194_21b8b6c
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
	nop
_021B8C00: .word 0x00000F04
_021B8C04: .word ovy194_21b8b6c
	thumb_func_end ovy194_21b8bb4

	thumb_func_start sub_021B8C08
sub_021B8C08: ; 0x021B8C08
	ldr r3, _021B8C14 ; =0x00000F74
	str r1, [r0, r3]
	add r1, r3, #4
	ldr r3, _021B8C18 ; =sub_021B7898
	str r2, [r0, r1]
	bx r3
	.align 2, 0
_021B8C14: .word 0x00000F74
_021B8C18: .word sub_021B7898
	thumb_func_end sub_021B8C08

	thumb_func_start ovy194_21b8c1c
ovy194_21b8c1c: ; 0x021B8C1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r0, sp, #0x18
	add r1, sp, #0x14
	add r4, r2, #0
	add r7, r3, #0
	bl sub_0203DAC8
	cmp r0, #1
	bne _021B8C78
	str r4, [sp]
	ldr r0, [sp, #0x30]
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, #0xc
	add r2, #0xc
	add r3, r6, #0
	bl ovy194_21c3fa8
	cmp r0, #0
	beq _021B8C78
	ldr r0, _021B8C80 ; =0x00000828
	ldr r1, [r6]
	ldr r0, [r5, r0]
	ldr r2, [r4]
	add r3, r5, #0
	bl ovy194_21b7b30
	cmp r0, #0
	beq _021B8C78
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021B8C78
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021B8C78:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021B8C80: .word 0x00000828
	thumb_func_end ovy194_21b8c1c

	thumb_func_start ovy194_21b8c84
ovy194_21b8c84: ; 0x021B8C84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, sp, #0x28
	add r1, sp, #0x24
	mov r7, #0
	bl sub_0203DAC8
	cmp r0, #1
	beq _021B8C9C
	b _021B8DA6
_021B8C9C:
	ldr r4, _021B8DAC ; =0x00000F7C
	add r0, r5, r4
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	add r0, sp, #0x18
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	add r3, r4, #4
	add r0, r5, #0
	add r1, #0xc
	add r2, #0xc
	add r3, r5, r3
	bl ovy194_21c3fa8
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _021B8DA6
	ldr r0, _021B8DB0 ; =0x00000828
	add r1, r4, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	add r3, r5, #0
	bl ovy194_21b7b30
	add r1, r4, #4
	add r6, r0, #0
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	add r0, r5, #0
	bl ovy194_21baac4
	cmp r0, #0
	beq _021B8D24
	ldr r0, _021B8DB4 ; =0x00000626
	bl sub_02006254
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B8D06
	ldr r1, _021B8DB8 ; =ovy194_21ba708
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0x2c
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021B8D06:
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x1c
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r4, #0x18
	str r0, [r5, r4]
	ldr r1, _021B8DBC ; =ovy194_21be4b0
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0x2c
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021B8D24:
	add r0, r5, #0
	bl ovy194_21b79e4
	cmp r6, #0
	beq _021B8DA6
	add r0, r6, #0
	mov r1, #0xa9
	add r2, r7, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021B8DA6
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21bbe60
	cmp r0, #0
	beq _021B8D70
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x8f
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ovy194_21bfdf8
	ldr r1, _021B8DC0 ; =ovy194_21b8dc4
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0x2c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021B8D70:
	str r6, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	bl ovy194_21b7a2c
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	bl sub_021B8C08
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021B8D9E
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x1c
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r4, #0x18
	str r0, [r5, r4]
_021B8D9E:
	add r0, r5, #0
	bl sub_021B7898
	mov r7, #1
_021B8DA6:
	add r0, r7, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8DAC: .word 0x00000F7C
_021B8DB0: .word 0x00000828
_021B8DB4: .word 0x00000626
_021B8DB8: .word ovy194_21ba708
_021B8DBC: .word ovy194_21be4b0
_021B8DC0: .word ovy194_21b8dc4
	thumb_func_end ovy194_21b8c84

	thumb_func_start ovy194_21b8dc4
ovy194_21b8dc4: ; 0x021B8DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B8E22
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021B8DDE
	mov r0, #0
	bl sub_0203D564
_021B8DDE:
	cmp r4, #0
	bne _021B8DF4
	bl sub_0203DA48
	add r4, r0, #0
	beq _021B8DF0
	mov r0, #1
	bl sub_0203D564
_021B8DF0:
	cmp r4, #0
	beq _021B8E22
_021B8DF4:
	mov r4, #0
	mov r0, #0x3e
	mvn r4, r4
	lsl r0, r0, #6
	str r4, [r5, r0]
	sub r0, r0, #4
	str r4, [r5, r0]
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r1, _021B8E24 ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	mov r0, #0x42
	lsl r0, r0, #6
	strh r4, [r5, r0]
	ldr r0, _021B8E28 ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r0]
	mov r2, #1
	bl ovy194_21c3c68
_021B8E22:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B8E24: .word ovy194_21babc4
_021B8E28: .word 0x00000828
	thumb_func_end ovy194_21b8dc4

	thumb_func_start ovy194_21b8e2c
ovy194_21b8e2c: ; 0x021B8E2C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x72
	add r5, r0, #0
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	add r1, r4, #0
	add r0, r5, #0
	mov r2, #0
	mov r4, #0
	bl ovy194_21bfdf8
	mov r0, #0x42
	sub r1, r4, #1
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r0, _021B8E6C ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r0]
	mov r2, #0
	bl ovy194_21c3c68
	ldr r1, _021B8E70 ; =ovy194_21b8dc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
	nop
_021B8E6C: .word 0x00000828
_021B8E70: .word ovy194_21b8dc4
	thumb_func_end ovy194_21b8e2c
_021B8E74:
	.byte 0x01, 0x4B, 0x65, 0x21, 0x00, 0x22, 0x18, 0x47, 0x2D, 0x8E, 0x1B, 0x02
	.byte 0x01, 0x4B, 0x66, 0x21, 0x01, 0x22, 0x18, 0x47, 0x2D, 0x8E, 0x1B, 0x02, 0x01, 0x4B, 0x8F, 0x21
	.byte 0x01, 0x22, 0x18, 0x47, 0x2D, 0x8E, 0x1B, 0x02

	thumb_func_start ovy194_21b8e98
ovy194_21b8e98: ; 0x021B8E98
	push {r3, r4, r5, lr}
	ldr r2, _021B8EE4 ; =0x00000F98
	add r5, r0, #0
	ldr r0, _021B8EE8 ; =0x00000828
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7aac
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c1288
	ldr r1, _021B8EEC ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl ovy194_21c0c04
	bl sub_0203D554
	cmp r0, #0
	beq _021B8ED2
	add r0, r5, #0
	bl sub_021B7898
_021B8ED2:
	add r0, r4, #0
	bl sub_0203A24C
	ldr r1, _021B8EF0 ; =ovy194_21b9058
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
	nop
_021B8EE4: .word 0x00000F98
_021B8EE8: .word 0x00000828
_021B8EEC: .word 0x000010A0
_021B8EF0: .word ovy194_21b9058
	thumb_func_end ovy194_21b8e98

	thumb_func_start ovy194_21b8ef4
ovy194_21b8ef4: ; 0x021B8EF4
	push {r4, lr}
	ldr r2, _021B8F14 ; =0x00000F84
	add r4, r0, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	bl ovy194_21bc35c
	cmp r0, #0
	beq _021B8F10
	ldr r1, _021B8F18 ; =ovy194_21ba924
	add r0, r4, #0
	bl sub_021B7BE4
_021B8F10:
	pop {r4, pc}
	nop
_021B8F14: .word 0x00000F84
_021B8F18: .word ovy194_21ba924
	thumb_func_end ovy194_21b8ef4

	thumb_func_start ovy194_21b8f1c
ovy194_21b8f1c: ; 0x021B8F1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021B8F84 ; =0x00000F88
	ldr r1, [r5, r0]
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _021B8F38
	mov r0, #1
	str r0, [sp]
_021B8F38:
	ldr r3, _021B8F88 ; =0x00000F84
	add r0, r5, #0
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	mov r6, #0
	mov r1, #0
	bl ovy194_21bc178
	add r4, r0, #0
	sub r0, r6, #1
	cmp r4, r0
	beq _021B8F76
	bl sub_02040440
	ldr r1, _021B8F8C ; =0x00000C13
	mov r2, #1
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B8F7E
	ldr r1, _021B8F90 ; =ovy194_21b8ef4
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021B8F76:
	ldr r1, _021B8F90 ; =ovy194_21b8ef4
	add r0, r5, #0
	bl sub_021B7BE4
_021B8F7E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B8F84: .word 0x00000F88
_021B8F88: .word 0x00000F84
_021B8F8C: .word 0x00000C13
_021B8F90: .word ovy194_21b8ef4
	thumb_func_end ovy194_21b8f1c

	thumb_func_start ovy194_21b8f94
ovy194_21b8f94: ; 0x021B8F94
	push {r4, lr}
	ldr r2, _021B8FB4 ; =0x00000F84
	add r4, r0, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	bl ovy194_21bc35c
	cmp r0, #0
	beq _021B8FB0
	ldr r1, _021B8FB8 ; =ovy194_21be380
	add r0, r4, #0
	bl sub_021B7BE4
_021B8FB0:
	pop {r4, pc}
	nop
_021B8FB4: .word 0x00000F84
_021B8FB8: .word ovy194_21be380
	thumb_func_end ovy194_21b8f94

	thumb_func_start ovy194_21b8fbc
ovy194_21b8fbc: ; 0x021B8FBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021B9024 ; =0x00000F88
	ldr r1, [r5, r0]
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _021B8FD8
	mov r0, #1
	str r0, [sp]
_021B8FD8:
	ldr r3, _021B9028 ; =0x00000F84
	add r0, r5, #0
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	mov r6, #0
	mov r1, #0
	bl ovy194_21bc178
	add r4, r0, #0
	sub r0, r6, #1
	cmp r4, r0
	beq _021B9016
	bl sub_02040440
	ldr r1, _021B902C ; =0x00000C13
	mov r2, #1
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B901E
	ldr r1, _021B9030 ; =ovy194_21b8f94
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021B9016:
	ldr r1, _021B9030 ; =ovy194_21b8f94
	add r0, r5, #0
	bl sub_021B7BE4
_021B901E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B9024: .word 0x00000F88
_021B9028: .word 0x00000F84
_021B902C: .word 0x00000C13
_021B9030: .word ovy194_21b8f94
	thumb_func_end ovy194_21b8fbc

	thumb_func_start ovy194_21b9034
ovy194_21b9034: ; 0x021B9034
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	bne _021B904E
	ldr r1, _021B9054 ; =ovy194_21babc4
	add r0, r4, #0
	bl sub_021B7BE4
_021B904E:
	add sp, #8
	pop {r4, pc}
	nop
_021B9054: .word ovy194_21babc4
	thumb_func_end ovy194_21b9034

	thumb_func_start ovy194_21b9058
ovy194_21b9058: ; 0x021B9058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	mov r7, #1
	str r0, [sp, #8]
	sub r0, r7, #2
	str r0, [sp, #4]
	ldr r0, _021B9354 ; =0x0000064C
	mov r4, #0
	ldr r0, [r5, r0]
	bl sub_0202DC1C
	cmp r0, #0
	beq _021B9078
	b _021B91A0
_021B9078:
	bl sub_0203DA48
	add r6, r0, #0
	beq _021B9086
	add r0, r7, #0
	bl sub_0203D564
_021B9086:
	cmp r6, #0
	beq _021B9090
	add r0, r5, #0
	bl ovy194_21b79e4
_021B9090:
	mov r6, #0x27
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_02199B90
	ldr r0, [r5, r6]
	bl sub_02199C30
	cmp r0, #9
	bne _021B90B6
	bl sub_0203D554
	cmp r0, #0
	beq _021B90B6
	ldr r0, _021B9354 ; =0x0000064C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0202DC04
_021B90B6:
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02199C08
	cmp r0, #9
	bne _021B90D0
	ldr r1, _021B9358 ; =0x000010A0
	mov r0, #1
	ldr r2, [r5, r1]
	str r0, [sp, #8]
	sub r0, r0, r2
	str r0, [r5, r1]
_021B90D0:
	add r0, sp, #0x18
	add r1, sp, #0x14
	bl sub_0203DAC8
	cmp r0, #1
	bne _021B913A
	mov r0, #1
	bl sub_0203D564
	ldr r0, _021B9354 ; =0x0000064C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0202DC04
	ldr r6, _021B935C ; =0x00000F98
	add r0, sp, #0xc
	sub r2, r6, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, r6
	add r2, r5, r2
	add r3, sp, #0x10
	bl ovy194_21b8c1c
	cmp r0, #0
	beq _021B912E
	add r0, r6, #0
	ldr r1, [sp, #0xc]
	sub r0, #0x20
	str r1, [r5, r0]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	sub r0, #0x24
	str r1, [r5, r0]
	add r0, r6, #0
	ldr r1, [sp, #0x18]
	sub r0, #0x44
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	sub r6, #0x40
	str r0, [r5, r6]
	ldr r0, _021B9360 ; =0x00000548
	bl sub_02006254
	mov r0, #1
	str r0, [sp, #8]
	b _021B913A
_021B912E:
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	blo _021B913A
	cmp r0, #0x90
	bhs _021B913A
	mov r4, #1
_021B913A:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021B9154
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c1288
	ldr r1, _021B9364 ; =ovy194_21b8e98
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021B9154:
	add r0, r5, #0
	bl ovy194_21b796c
	cmp r4, #0
	bne _021B9194
	bl sub_0203DA2C
	cmp r0, #0
	bne _021B9194
	ldr r1, _021B9368 ; =0x00000F34
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021B9194
	add r0, r1, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B918E
	add r1, #0x28
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021B918E
	ldr r0, _021B936C ; =0x00000729
	bl sub_02006254
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #1
	b _021B9194
_021B918E:
	add r0, r5, #0
	bl ovy194_21b79e4
_021B9194:
	add r0, r5, #0
	bl ovy194_21b78b4
	add r0, r5, #0
	bl ovy194_21b796c
_021B91A0:
	ldr r6, _021B9354 ; =0x0000064C
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B91B6
	ldr r0, [r5, r6]
	bl sub_0202DC00
	str r0, [sp, #4]
	mov r4, #1
_021B91B6:
	cmp r4, #0
	bne _021B91BC
	b _021B9346
_021B91BC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021B91C4
	b _021B92DA
_021B91C4:
	ldr r4, _021B935C ; =0x00000F98
	ldr r0, _021B9370 ; =0x00000828
	sub r2, r4, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7b30
	sub r2, r4, #4
	add r6, r0, #0
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy194_21baac4
	cmp r0, #0
	beq _021B9204
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021B9204
	sub r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	sub r4, #0x10
	str r0, [r5, r4]
	b _021B92D4
_021B9204:
	add r0, r6, #0
	bl sub_0201CE8C
	cmp r0, #1
	bne _021B9220
	ldr r1, _021B9374 ; =0x021B8E81
	add r0, r5, #0
_021B9212:
	bl sub_021B7BE4
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	b _021B92EA
_021B9220:
	ldr r4, _021B935C ; =0x00000F98
	add r0, r5, #0
	sub r2, r4, #4
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	bl ovy194_21b82a8
	cmp r0, #0
	beq _021B9240
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	add r0, r5, #0
	ldr r1, _021B9378 ; =0x021B8E75
	b _021B92E6
_021B9240:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21bbe60
	cmp r0, #0
	beq _021B9252
	add r0, r5, #0
	ldr r1, _021B937C ; =0x021B8E8D
	b _021B9212
_021B9252:
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B929A
	sub r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	sub r4, #0x10
	str r0, [r5, r4]
	ldr r1, _021B9380 ; =ovy194_21b8bb4
	add r0, r5, #0
_021B9270:
	bl sub_021B7BE4
	mov r4, #0x27
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	mov r1, #7
	mov r2, #0
	mov r7, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #9
	mov r2, #0
	bl sub_02199D18
	b _021B92EA
_021B929A:
	add r0, r5, #0
	bl ovy194_21bc04c
	cmp r0, #0
	beq _021B92C2
	bl sub_0203D554
	cmp r0, #0
	bne _021B92C2
	sub r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	sub r4, #0x10
	str r0, [r5, r4]
	add r0, r5, #0
	ldr r1, _021B9384 ; =ovy194_21b8fbc
	b _021B9270
_021B92C2:
	ldr r1, _021B9388 ; =0x00000F94
	add r0, r1, #0
	ldr r2, [r5, r1]
	sub r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #4
	ldr r0, [r5, r0]
	sub r1, #0xc
	str r0, [r5, r1]
_021B92D4:
	add r0, r5, #0
	ldr r1, _021B938C ; =ovy194_21b8f1c
	b _021B92E6
_021B92DA:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	ldr r1, _021B9390 ; =ovy194_21b9034
	add r0, r5, #0
_021B92E6:
	bl sub_021B7BE4
_021B92EA:
	mov r1, #0
	ldr r4, _021B935C ; =0x00000F98
	mvn r1, r1
	sub r0, r4, #4
	str r1, [r5, r4]
	str r1, [r5, r0]
	cmp r7, #0
	beq _021B930A
	add r0, r5, #0
	bl ovy194_21ba8c0
	sub r4, #0x94
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
_021B930A:
	mov r4, #0x95
	lsl r4, r4, #4
	add r0, r5, r4
	bl ovy194_21c4cfc
	add r0, r4, #0
	add r0, #0x14
	add r0, r5, r0
	bl ovy194_21c4cfc
	add r4, #0x28
	add r0, r5, r4
	bl ovy194_21c4cfc
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c1288
	mov r0, #6
	bl sub_02045B7C
	add r0, r5, #0
	bl ovy194_21c2f78
	add r0, r5, #0
	bl ovy194_21c00fc
	ldr r0, _021B9354 ; =0x0000064C
	mov r1, #0
	str r1, [r5, r0]
_021B9346:
	bl sub_0203DA2C
	ldr r1, _021B9368 ; =0x00000F34
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021B9354: .word 0x0000064C
_021B9358: .word 0x000010A0
_021B935C: .word 0x00000F98
_021B9360: .word 0x00000548
_021B9364: .word ovy194_21b8e98
_021B9368: .word 0x00000F34
_021B936C: .word 0x00000729
_021B9370: .word 0x00000828
_021B9374: .word 0x021B8E81
_021B9378: .word 0x021B8E75
_021B937C: .word 0x021B8E8D
_021B9380: .word ovy194_21b8bb4
_021B9384: .word ovy194_21b8fbc
_021B9388: .word 0x00000F94
_021B938C: .word ovy194_21b8f1c
_021B9390: .word ovy194_21b9034
	thumb_func_end ovy194_21b9058

	thumb_func_start ovy194_21b9394
ovy194_21b9394: ; 0x021B9394
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	add r5, r0, #0
	mov r7, #0
	bl ovy194_21be554
	mov r4, #0x27
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #7
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #9
	mov r2, #1
	bl sub_02199D18
	ldr r0, _021B943C ; =0x021C6398
	add r1, sp, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #2
	bl ovy194_21c0214
	ldr r4, _021B9440 ; =0x00000F98
	ldr r0, _021B9444 ; =0x00000828
	sub r2, r4, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7aac
	add r6, r0, #0
	ldr r0, _021B9448 ; =0x000010A0
	mov r1, #0
	str r7, [r5, r0]
	add r0, r5, #0
	add r2, r6, #0
	bl ovy194_21c0c04
	add r0, r6, #0
	bl sub_0203A24C
	sub r4, #0x94
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	bl ovy194_21b79e4
	add r0, r5, #0
	bl sub_021B7898
	bl sub_0203D554
	cmp r0, #0
	ldr r0, _021B944C ; =0x0000064C
	beq _021B9426
	ldr r0, [r5, r0]
	add r1, r7, #0
	b _021B942A
_021B9426:
	ldr r0, [r5, r0]
	mov r1, #1
_021B942A:
	bl sub_0202DC04
	ldr r1, _021B9450 ; =ovy194_21b9058
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B943C: .word 0x021C6398
_021B9440: .word 0x00000F98
_021B9444: .word 0x00000828
_021B9448: .word 0x000010A0
_021B944C: .word 0x0000064C
_021B9450: .word ovy194_21b9058
	thumb_func_end ovy194_21b9394

	thumb_func_start ovy194_21b9454
ovy194_21b9454: ; 0x021B9454
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021B94A8 ; =0x000010A0
	add r4, r0, #0
	ldr r2, [r4, r1]
	add r1, sp, #0
	strb r2, [r1]
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B947C
	bl sub_02040440
	ldr r1, _021B94AC ; =0x00000C03
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B94A4
_021B947C:
	ldr r2, _021B94B0 ; =0x04001000
	ldr r0, _021B94B4 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021B949C
	ldr r1, _021B94B8 ; =0x021B38CD
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, pc}
_021B949C:
	ldr r1, _021B94BC ; =0x021B5C79
	add r0, r4, #0
	bl sub_021B7BE4
_021B94A4:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021B94A8: .word 0x000010A0
_021B94AC: .word 0x00000C03
_021B94B0: .word 0x04001000
_021B94B4: .word 0xFFFF1FFF
_021B94B8: .word 0x021B38CD
_021B94BC: .word 0x021B5C79
	thumb_func_end ovy194_21b9454

	thumb_func_start ovy194_21b94c0
ovy194_21b94c0: ; 0x021B94C0
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B94DC
	bl sub_02040440
	mov r1, #0xd
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021B94E4
_021B94DC:
	ldr r1, _021B94E8 ; =ovy194_21b9454
	add r0, r4, #0
	bl sub_021B7BE4
_021B94E4:
	pop {r4, pc}
	nop
_021B94E8: .word ovy194_21b9454
	thumb_func_end ovy194_21b94c0

	thumb_func_start ovy194_21b94ec
ovy194_21b94ec: ; 0x021B94EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	mov r0, #1
	sub r6, r0, r7
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9520
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021B9520
	add r0, r5, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021B9520:
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy194_21bc038
	ldr r1, _021B95E0 ; =0x000011E0
	add r0, r5, r7
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _021B955C
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #2
	bne _021B955C
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9552
	bl sub_02040440
	mov r1, #0xd
	mov r2, #8
	bl sub_02040624
_021B9552:
	ldr r1, _021B95E4 ; =ovy194_21b94c0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021B955C:
	ldr r1, _021B95E0 ; =0x000011E0
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #5
	bne _021B956A
_021B9566:
	mov r4, #0x61
	b _021B95B6
_021B956A:
	cmp r0, #5
	bne _021B9572
	mov r4, #0x62
	b _021B95B6
_021B9572:
	cmp r1, #7
	bne _021B957A
_021B9576:
	mov r4, #0x63
	b _021B95B6
_021B957A:
	cmp r0, #7
	bne _021B9582
_021B957E:
	mov r4, #0x64
	b _021B95B6
_021B9582:
	cmp r1, #8
	bne _021B9588
	b _021B957E
_021B9588:
	cmp r0, #8
	bne _021B958E
	b _021B9576
_021B958E:
	cmp r1, #9
	bne _021B9594
	b _021B9566
_021B9594:
	cmp r0, #9
	bne _021B959C
	mov r4, #0x65
	b _021B95B6
_021B959C:
	cmp r1, #6
	bne _021B95A2
	b _021B9566
_021B95A2:
	cmp r0, #6
	bne _021B95AA
	mov r4, #0x70
	b _021B95B6
_021B95AA:
	cmp r1, #3
	bne _021B95B0
	b _021B9566
_021B95B0:
	cmp r0, #3
	bne _021B95B6
	mov r4, #0x67
_021B95B6:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r0, _021B95E0 ; =0x000011E0
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r1, _021B95E8 ; =ovy194_21b9c44
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B95E0: .word 0x000011E0
_021B95E4: .word ovy194_21b94c0
_021B95E8: .word ovy194_21b9c44
	thumb_func_end ovy194_21b94ec

	thumb_func_start ovy194_21b95ec
ovy194_21b95ec: ; 0x021B95EC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021B9610
	add r0, r4, #0
	bl ovy194_21ba7d4
	add r0, r4, #0
	bl ovy194_21ba84c
	ldr r1, _021B9644 ; =ovy194_21bb104
	add r0, r4, #0
	bl sub_021B7BE4
	b _021B961C
_021B9610:
	add r0, r4, #0
	bl ovy194_21ba7d4
	add r0, r4, #0
	bl ovy194_21ba84c
_021B961C:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, _021B9648 ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r4, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	mov r0, #0x1f
	bl sub_02046D38
	mov r0, #0x1e
	bl sub_02046DC0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021B9644: .word ovy194_21bb104
_021B9648: .word 0x000005F4
	thumb_func_end ovy194_21b95ec

	thumb_func_start ovy194_21b964c
ovy194_21b964c: ; 0x021B964C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9668
	bl sub_02040440
	mov r1, #0x12
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021B9734
_021B9668:
	add r0, r5, #0
	bl ovy194_21bfe9c
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021B9722
	add r0, r5, #0
	bl ovy194_21bbf5c
	add r0, r5, #0
	bl ovy194_21be6ac
	ldr r0, _021B9738 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021B9692
	mov r0, #0
	bl sub_021516A0
_021B9692:
	mov r6, #0x72
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #0x18
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x87
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy194_21bc2d0
	add r0, r5, #0
	bl ovy194_21bc434
	ldr r0, _021B973C ; =0x000011E8
	strb r7, [r5, r0]
	add r0, r0, #1
	strb r7, [r5, r0]
	add r0, r5, #0
	bl ovy194_21be534
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	mov r4, #0xca
	lsl r4, r4, #4
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x78
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x78
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r4, #0xb4
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r0, r5, #0
	bl ovy194_21b79e4
	add r0, r6, #0
	sub r0, #0xd4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B9710
	bl sub_0202DA54
	sub r6, #0xd4
	str r7, [r5, r6]
_021B9710:
	add r0, r5, #0
	bl ovy194_21c3224
	add r0, r5, #0
	bl ovy194_21c5504
	add r0, r5, #0
	bl ovy194_21ba8c0
_021B9722:
	ldr r1, _021B9740 ; =ovy194_21b95ec
	add r0, r5, #0
	bl sub_021B7BE4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy194_21ba500
_021B9734:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9738: .word 0x0000118C
_021B973C: .word 0x000011E8
_021B9740: .word ovy194_21b95ec
	thumb_func_end ovy194_21b964c

	thumb_func_start ovy194_21b9744
ovy194_21b9744: ; 0x021B9744
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9766
	bl sub_02027ACC
	cmp r0, #0
	beq _021B9766
	add r0, r4, #0
	bl ovy194_21bfe9c
	ldr r1, _021B9768 ; =ovy194_21b964c
	add r0, r4, #0
	bl sub_021B7BE4
_021B9766:
	pop {r4, pc}
	.align 2, 0
_021B9768: .word ovy194_21b964c
	thumb_func_end ovy194_21b9744

	thumb_func_start ovy194_21b976c
ovy194_21b976c: ; 0x021B976C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021B9798 ; =0x000005F4
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #4
	bl sub_020279B4
	ldr r1, _021B979C ; =ovy194_21b9744
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021B9798: .word 0x000005F4
_021B979C: .word ovy194_21b9744
	thumb_func_end ovy194_21b976c

	thumb_func_start ovy194_21b97a0
ovy194_21b97a0: ; 0x021B97A0
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B97BC
	bl sub_02040440
	mov r1, #0x12
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021B97CA
_021B97BC:
	add r0, r4, #0
	bl sub_021C2000
	ldr r1, _021B97CC ; =ovy194_21b976c
	add r0, r4, #0
	bl sub_021B7BE4
_021B97CA:
	pop {r4, pc}
	.align 2, 0
_021B97CC: .word ovy194_21b976c
	thumb_func_end ovy194_21b97a0

	thumb_func_start ovy194_21b97d0
ovy194_21b97d0: ; 0x021B97D0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9818
	bl sub_02040440
	add r1, r4, #0
	add r1, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r2, _021B982C ; =0x00000C0E
	ldr r3, _021B9830 ; =0x000002D6
	mov r1, #0xff
	bl sub_02042C18
	cmp r0, #0
	beq _021B9826
	bl sub_02040440
	mov r1, #0x12
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B9834 ; =ovy194_21b97a0
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #0x10
	pop {r4, pc}
_021B9818:
	add r0, r4, #0
	bl sub_021C2000
	ldr r1, _021B9834 ; =ovy194_21b97a0
	add r0, r4, #0
	bl sub_021B7BE4
_021B9826:
	add sp, #0x10
	pop {r4, pc}
	nop
_021B982C: .word 0x00000C0E
_021B9830: .word 0x000002D6
_021B9834: .word ovy194_21b97a0
	thumb_func_end ovy194_21b97d0

	thumb_func_start ovy194_21b9838
ovy194_21b9838: ; 0x021B9838
	push {r3, r4, r5, lr}
	ldr r5, _021B9858 ; =0x00000F2C
	add r4, r0, #0
	ldr r1, [r4, r5]
	sub r1, r1, #1
	bl ovy194_21bb3c0
	ldr r0, [r4, r5]
	cmp r0, #0x18
	blt _021B9854
	ldr r1, _021B985C ; =ovy194_21b97d0
	add r0, r4, #0
	bl sub_021B7BE4
_021B9854:
	pop {r3, r4, r5, pc}
	nop
_021B9858: .word 0x00000F2C
_021B985C: .word ovy194_21b97d0
	thumb_func_end ovy194_21b9838

	thumb_func_start ovy194_21b9860
ovy194_21b9860: ; 0x021B9860
	push {r3, r4, r5, lr}
	ldr r5, _021B9880 ; =0x00000F2C
	add r4, r0, #0
	ldr r1, [r4, r5]
	sub r1, r1, #1
	bl ovy194_21c2c04
	cmp r0, #0
	beq _021B987E
	mov r0, #0
	str r0, [r4, r5]
	ldr r1, _021B9884 ; =ovy194_21b9838
	add r0, r4, #0
	bl sub_021B7BE4
_021B987E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B9880: .word 0x00000F2C
_021B9884: .word ovy194_21b9838
	thumb_func_end ovy194_21b9860

	thumb_func_start ovy194_21b9888
ovy194_21b9888: ; 0x021B9888
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B98CA
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, sp, #0
	strb r0, [r5]
	add r0, r4, #0
	bl ovy194_21b7708
	strb r0, [r5, #1]
	bl sub_02040440
	mov r1, #0xc1
	lsl r1, r1, #4
	mov r2, #2
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B98F0
	ldr r0, _021B98F4 ; =0x00000F2C
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _021B98F8 ; =ovy194_21b9860
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021B98CA:
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, _021B98FC ; =0x000011F2
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	mov r0, #0xa0
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021B9900 ; =0x0000107E
	add r2, #0x10
	strh r2, [r4, r0]
	ldr r0, _021B98F4 ; =0x00000F2C
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _021B98F8 ; =ovy194_21b9860
	add r0, r4, #0
	bl sub_021B7BE4
_021B98F0:
	pop {r3, r4, r5, pc}
	nop
_021B98F4: .word 0x00000F2C
_021B98F8: .word ovy194_21b9860
_021B98FC: .word 0x000011F2
_021B9900: .word 0x0000107E
	thumb_func_end ovy194_21b9888

	thumb_func_start ovy194_21b9904
ovy194_21b9904: ; 0x021B9904
	push {r3, r4, r5, lr}
	ldr r5, _021B9930 ; =0x00000F2C
	add r4, r0, #0
	ldr r1, [r4, r5]
	sub r1, r1, #1
	bl ovy194_21c3e9c
	ldr r0, [r4, r5]
	cmp r0, #0x19
	ble _021B992C
	ldr r0, _021B9934 ; =0x00000828
	add r1, r4, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl ovy194_21c3c68
	ldr r1, _021B9938 ; =ovy194_21b9888
	add r0, r4, #0
	bl sub_021B7BE4
_021B992C:
	pop {r3, r4, r5, pc}
	nop
_021B9930: .word 0x00000F2C
_021B9934: .word 0x00000828
_021B9938: .word ovy194_21b9888
	thumb_func_end ovy194_21b9904

	thumb_func_start ovy194_21b993c
ovy194_21b993c: ; 0x021B993C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x16
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021B996A
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	ldr r0, _021B996C ; =0x00000F2C
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _021B9970 ; =ovy194_21b9904
	add r0, r4, #0
	bl sub_021B7BE4
_021B996A:
	pop {r4, pc}
	.align 2, 0
_021B996C: .word 0x00000F2C
_021B9970: .word ovy194_21b9904
	thumb_func_end ovy194_21b993c

	thumb_func_start ovy194_21b9974
ovy194_21b9974: ; 0x021B9974
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B99A8
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B99A0
	bl sub_02040440
	mov r1, #0x16
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B99AC ; =ovy194_21b993c
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021B99A0:
	ldr r1, _021B99B0 ; =ovy194_21b9888
	add r0, r4, #0
	bl sub_021B7BE4
_021B99A8:
	pop {r4, pc}
	nop
_021B99AC: .word ovy194_21b993c
_021B99B0: .word ovy194_21b9888
	thumb_func_end ovy194_21b9974

	thumb_func_start ovy194_21b99b4
ovy194_21b99b4: ; 0x021B99B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r1, _021B9A2C ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r1]
	mov r0, #1
	mov r4, #1
	bl sub_02042BA8
	ldr r0, _021B9A30 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021B99D4
	add r0, r4, #0
	bl sub_021516A0
_021B99D4:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #6
	mov r4, #6
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r6, #1
	bl ovy194_21bfdf8
	add r0, r5, #0
	bl ovy194_21bfe34
	mov r0, #0x10
	bl sub_02046D38
	mov r0, #4
	bl sub_02046DC0
	mov r0, #0
	bl sub_02027B58
	str r4, [sp]
	ldr r0, _021B9A2C ; =0x000005F4
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0
	bl sub_020279B4
	ldr r1, _021B9A34 ; =ovy194_21b9974
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B9A2C: .word 0x000005F4
_021B9A30: .word 0x0000118C
_021B9A34: .word ovy194_21b9974
	thumb_func_end ovy194_21b99b4

	thumb_func_start ovy194_21b9a38
ovy194_21b9a38: ; 0x021B9A38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203FFC4
	mov r1, #0
	ldr r2, _021B9AC8 ; =0x00000F88
	mvn r1, r1
	str r1, [r5, r2]
	sub r0, r2, #4
	str r1, [r5, r0]
	mov r0, #2
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	add r0, r2, #0
	sub r0, #0x28
	str r1, [r5, r0]
	add r2, #0xd8
	add r0, r5, #0
	str r1, [r5, r2]
	bl ovy194_21c24dc
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c24dc
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021B9A7C
	add r0, r5, #0
	bl ovy194_21bbf5c
_021B9A7C:
	bl sub_0201C2C8
	ldr r6, _021B9ACC ; =0x000005DC
	add r2, r0, #0
	ldr r0, [r5, r6]
	mov r1, #0
	mov r4, #0
	blx MI_CpuFill8
	bl sub_0201C2C8
	add r2, r0, #0
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	blx MI_CpuFill8
	ldr r6, _021B9AD0 ; =0x00000EFC
	mov r7, #1
_021B9AA2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021B9AB2
	add r1, r7, #0
	bl sub_0204C124
_021B9AB2:
	add r4, r4, #1
	cmp r4, #0xa
	blt _021B9AA2
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r1, _021B9AD4 ; =ovy194_21b99b4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B9AC8: .word 0x00000F88
_021B9ACC: .word 0x000005DC
_021B9AD0: .word 0x00000EFC
_021B9AD4: .word ovy194_21b99b4
	thumb_func_end ovy194_21b9a38

	thumb_func_start ovy194_21b9ad8
ovy194_21b9ad8: ; 0x021B9AD8
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9AF8
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B9AFC ; =ovy194_21b94ec
	add r0, r4, #0
	bl sub_021B7BE4
_021B9AF8:
	pop {r4, pc}
	nop
_021B9AFC: .word ovy194_21b94ec
	thumb_func_end ovy194_21b9ad8

	thumb_func_start ovy194_21b9b00
ovy194_21b9b00: ; 0x021B9B00
	push {r3, r4, r5, lr}
	mov r4, #3
	add r1, sp, #0
	add r5, r0, #0
	strb r4, [r1]
	bl ovy194_21b7784
	cmp r0, #0
	bne _021B9B32
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x61
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r1, _021B9B78 ; =ovy194_21b9c44
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021B9B32:
	bl sub_02040440
	lsl r1, r4, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B9B74
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #8
	bl sub_02040624
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #6
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	ldr r1, _021B9B7C ; =ovy194_21b9ad8
	add r0, r5, #0
	bl sub_021B7BE4
_021B9B74:
	pop {r3, r4, r5, pc}
	nop
_021B9B78: .word ovy194_21b9c44
_021B9B7C: .word ovy194_21b9ad8
	thumb_func_end ovy194_21b9b00

	thumb_func_start ovy194_21b9b80
ovy194_21b9b80: ; 0x021B9B80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02040440
	mov r1, #0x19
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021B9B9C
	add r0, r6, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021B9B9C:
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	bl ovy194_21bc038
	add r0, r6, #0
	bl ovy194_21bfe9c
	ldr r1, _021B9C10 ; =0x000011E0
	mov r4, #0
	ldr r7, _021B9C14 ; =0x00000FD8
	strb r4, [r6, r1]
	add r0, r1, #1
	strb r4, [r6, r0]
	add r0, r1, #0
	add r0, #8
	strb r4, [r6, r0]
	add r1, #9
	strb r4, [r6, r1]
	sub r7, #0x34
_021B9BC4:
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D65C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D65C
	mov r0, #0xc
	mul r0, r5
	add r2, r6, r0
	lsl r0, r1, #2
	add r5, r2, r0
	mov r0, #0
	mvn r0, r0
	str r0, [r5, r7]
	ldr r0, _021B9C14 ; =0x00000FD8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B9BFE
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, _021B9C14 ; =0x00000FD8
	mov r1, #0
	ldr r0, [r5, r0]
	blx MI_CpuFill8
_021B9BFE:
	add r4, r4, #1
	cmp r4, #6
	blt _021B9BC4
	ldr r1, _021B9C18 ; =ovy194_21ba7d4
	add r0, r6, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9C10: .word 0x000011E0
_021B9C14: .word 0x00000FD8
_021B9C18: .word ovy194_21ba7d4
	thumb_func_end ovy194_21b9b80

	thumb_func_start ovy194_21b9c1c
ovy194_21b9c1c: ; 0x021B9C1C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9C3C
	bl sub_02040440
	mov r1, #0x19
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B9C40 ; =ovy194_21b9b80
	add r0, r4, #0
	bl sub_021B7BE4
_021B9C3C:
	pop {r4, pc}
	nop
_021B9C40: .word ovy194_21b9b80
	thumb_func_end ovy194_21b9c1c

	thumb_func_start ovy194_21b9c44
ovy194_21b9c44: ; 0x021B9C44
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9CB2
	bl sub_0203DEFC
	add r5, r0, #0
	beq _021B9C5E
	mov r0, #0
	bl sub_0203D564
_021B9C5E:
	cmp r5, #0
	bne _021B9C74
	bl sub_0203DA48
	add r5, r0, #0
	beq _021B9C70
	mov r0, #1
	bl sub_0203D564
_021B9C70:
	cmp r5, #0
	beq _021B9CB2
_021B9C74:
	add r0, r4, #0
	bl ovy194_21bfe9c
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9CAA
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x32
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r1, _021B9CB4 ; =ovy194_21b9c1c
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021B9CAA:
	ldr r1, _021B9CB8 ; =ovy194_21ba7d4
	add r0, r4, #0
	bl sub_021B7BE4
_021B9CB2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B9CB4: .word ovy194_21b9c1c
_021B9CB8: .word ovy194_21ba7d4
	thumb_func_end ovy194_21b9c44

	thumb_func_start ovy194_21b9cbc
ovy194_21b9cbc: ; 0x021B9CBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9D02
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9CFA
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0]
	ldr r1, _021B9D04 ; =0x00000C0F
	add r0, r4, #0
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B9D02
	ldr r1, _021B9D08 ; =ovy194_21b8960
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021B9CFA:
	ldr r1, _021B9D08 ; =ovy194_21b8960
	add r0, r5, #0
	bl sub_021B7BE4
_021B9D02:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B9D04: .word 0x00000C0F
_021B9D08: .word ovy194_21b8960
	thumb_func_end ovy194_21b9cbc

	thumb_func_start ovy194_21b9d0c
ovy194_21b9d0c: ; 0x021B9D0C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9D68
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021B9D76
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #8
	bl sub_02040624
	ldr r1, _021B9D7C ; =ovy194_21b9cbc
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, pc}
_021B9D68:
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	ldr r1, _021B9D80 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
_021B9D76:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021B9D7C: .word ovy194_21b9cbc
_021B9D80: .word ovy194_21b8194
	thumb_func_end ovy194_21b9d0c

	thumb_func_start ovy194_21b9d84
ovy194_21b9d84: ; 0x021B9D84
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021B9DE4 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B9DE2
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	mov r7, #0
	str r7, [r5, r6]
	cmp r4, #0
	beq _021B9DB0
	cmp r4, #1
	beq _021B9DBA
	pop {r3, r4, r5, r6, r7, pc}
_021B9DB0:
	ldr r1, _021B9DE8 ; =ovy194_21b9d0c
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021B9DBA:
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r1, _021B9DEC ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	mov r0, #0x42
	sub r1, r7, #1
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r0, _021B9DF0 ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl ovy194_21c3c68
	add r0, r5, #0
	bl ovy194_21c5504
_021B9DE2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B9DE4: .word 0x0000064C
_021B9DE8: .word ovy194_21b9d0c
_021B9DEC: .word ovy194_21babc4
_021B9DF0: .word 0x00000828
	thumb_func_end ovy194_21b9d84

	thumb_func_start ovy194_21b9df4
ovy194_21b9df4: ; 0x021B9DF4
	push {r4, r5, r6, lr}
	ldr r2, _021B9E54 ; =0x00000F88
	add r5, r0, #0
	ldr r0, _021B9E58 ; =0x00000828
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7aac
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021B9E3E
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r1, _021B9E5C ; =0x00000C01
	add r0, r6, #0
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl sub_02042BE8
	cmp r0, #0
	bne _021B9E3E
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B9E3E:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy194_21b81c8
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021B9E54: .word 0x00000F88
_021B9E58: .word 0x00000828
_021B9E5C: .word 0x00000C01
	thumb_func_end ovy194_21b9df4

	thumb_func_start ovy194_21b9e60
ovy194_21b9e60: ; 0x021B9E60
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021B9EA6
	ldr r0, _021B9EAC ; =0x021C6390
	add r1, sp, #4
	ldr r2, [r0]
	ldr r0, [r0, #4]
	mov r3, #0x20
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	mov r4, #0x20
	bl ovy194_21c0120
	mov r0, #0x42
	sub r4, #0x21
	lsl r0, r0, #6
	strh r4, [r5, r0]
	ldr r0, _021B9EB0 ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r0]
	mov r2, #0
	bl ovy194_21c3c68
	ldr r1, _021B9EB4 ; =ovy194_21b9d84
	add r0, r5, #0
	bl sub_021B7BE4
_021B9EA6:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B9EAC: .word 0x021C6390
_021B9EB0: .word 0x00000828
_021B9EB4: .word ovy194_21b9d84
	thumb_func_end ovy194_21b9e60

	thumb_func_start ovy194_21b9eb8
ovy194_21b9eb8: ; 0x021B9EB8
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x8d
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	ldr r0, _021B9EE4 ; =0x00001074
	mov r1, #1
	str r1, [r4, r0]
	ldr r1, _021B9EE8 ; =ovy194_21b9e60
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	nop
_021B9EE4: .word 0x00001074
_021B9EE8: .word ovy194_21b9e60
	thumb_func_end ovy194_21b9eb8

	thumb_func_start ovy194_21b9eec
ovy194_21b9eec: ; 0x021B9EEC
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x1b
	ldr r0, _021B9F08 ; =0x04001050
	mov r1, #0x1b
	sub r2, #0x23
	bl G2x_SetBlendBrightness_
	ldr r1, _021B9F0C ; =ovy194_21b9eb8
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	nop
_021B9F08: .word 0x04001050
_021B9F0C: .word ovy194_21b9eb8
	thumb_func_end ovy194_21b9eec

	thumb_func_start ovy194_21b9f10
ovy194_21b9f10: ; 0x021B9F10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl ovy194_21c3bc0
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021B9FC4 ; =0x00000634
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _021B9FBE
	add r0, r5, r0
	str r0, [sp, #8]
_021B9F2E:
	add r6, r6, #1
	cmp r6, r1
	blt _021B9F36
	mov r6, #0
_021B9F36:
	mov r4, #0
_021B9F38:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy194_21b7854
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy194_21b786c
	add r2, r0, #0
	ldr r0, _021B9FC8 ; =0x00000828
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r3, r5, #0
	bl ovy194_21b7b30
	add r7, r0, #0
	beq _021B9FA8
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CD88
	ldr r1, [sp]
	bl sub_021C38A8
	cmp r0, #0
	beq _021B9FA8
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	bne _021B9FA8
	mov r4, #0x42
	lsl r4, r4, #6
	ldrsh r0, [r5, r4]
	add r0, r0, #1
	strh r0, [r5, r4]
	add r0, r6, #0
	bl ovy194_21ba208
	sub r0, #0x20
	sub r1, r4, #4
	strh r0, [r5, r1]
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy194_21ba500
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021B9FA8:
	add r4, r4, #1
	cmp r4, #5
	blt _021B9F38
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021B9F2E
_021B9FBE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B9FC4: .word 0x00000634
_021B9FC8: .word 0x00000828
	thumb_func_end ovy194_21b9f10

	thumb_func_start ovy194_21b9fcc
ovy194_21b9fcc: ; 0x021B9FCC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02046DC0
	ldr r1, _021B9FE0 ; =ovy194_21babc4
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021B9FE0: .word ovy194_21babc4
	thumb_func_end ovy194_21b9fcc

	thumb_func_start ovy194_21b9fe4
ovy194_21b9fe4: ; 0x021B9FE4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1a
	bl sub_02046DC0
	add r0, r4, #0
	bl ovy194_21c4b88
	add r0, r4, #0
	bl ovy194_21bfe9c
	ldr r2, _021BA030 ; =0x04001000
	ldr r0, _021BA034 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	mov r1, #1
	bl ovy194_21be554
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21c5fe4
	add r0, r4, #0
	bl ovy194_21ba8c0
	add r0, r4, #0
	bl ovy194_21c5504
	add r0, r4, #0
	bl ovy194_21c5e5c
	ldr r1, _021BA038 ; =ovy194_21b9fcc
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BA030: .word 0x04001000
_021BA034: .word 0xFFFF1FFF
_021BA038: .word ovy194_21b9fcc
	thumb_func_end ovy194_21b9fe4

	thumb_func_start ovy194_21ba03c
ovy194_21ba03c: ; 0x021BA03C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c5e80
	cmp r0, #0
	bne _021BA050
	ldr r1, _021BA054 ; =ovy194_21b9fe4
	add r0, r4, #0
	bl sub_021B7BE4
_021BA050:
	pop {r4, pc}
	nop
_021BA054: .word ovy194_21b9fe4
	thumb_func_end ovy194_21ba03c

	thumb_func_start ovy194_21ba058
ovy194_21ba058: ; 0x021BA058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1f
	mov r6, #0x1f
	bl sub_02046DC0
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BA14A
	ldr r7, _021BA150 ; =0x021C6E44
	add r0, r7, #0
	bl sub_0203DA0C
	add r4, r0, #0
	sub r6, #0x20
	cmp r4, r6
	beq _021BA0E8
	mov r6, #2
	add r0, r4, #1
	lsl r6, r6, #0xa
	str r0, [r5, r6]
	ldr r1, _021BA154 ; =0x021C6E46
	lsl r2, r4, #2
	ldrb r1, [r1, r2]
	ldrb r2, [r7, r2]
	add r0, r5, #0
	bl ovy194_21c5dd8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b9f10
	cmp r0, #0
	beq _021BA0BE
	ldr r0, _021BA158 ; =0x00000548
	bl sub_02006254
	ldr r2, _021BA15C ; =0x04001000
	ldr r0, _021BA160 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r1, _021BA164 ; =ovy194_21ba03c
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BA0BE:
	add r0, r6, #0
	sub r0, #0xe0
	sub r6, #0xc8
	ldr r0, [r5, r0]
	ldr r2, [r5, r6]
	mov r1, #0x34
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy194_21bfcf8
	ldr r0, _021BA168 ; =0x00000557
	bl sub_02006254
_021BA0E8:
	mov r4, #0x27
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_02199B90
	ldr r0, [r5, r4]
	bl sub_02199C08
	cmp r0, #1
	bne _021BA14A
	mov r0, #0x1a
	bl sub_02046DC0
	mov r0, #2
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy194_21c4b88
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r2, _021BA15C ; =0x04001000
	ldr r0, _021BA160 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c5fe4
	add r0, r5, #0
	bl ovy194_21ba8c0
	add r0, r5, #0
	bl ovy194_21c5504
	add r0, r5, #0
	bl ovy194_21c5e5c
	ldr r1, _021BA16C ; =ovy194_21b9fe4
	add r0, r5, #0
	bl sub_021B7BE4
_021BA14A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA150: .word 0x021C6E44
_021BA154: .word 0x021C6E46
_021BA158: .word 0x00000548
_021BA15C: .word 0x04001000
_021BA160: .word 0xFFFF1FFF
_021BA164: .word ovy194_21ba03c
_021BA168: .word 0x00000557
_021BA16C: .word ovy194_21b9fe4
	thumb_func_end ovy194_21ba058

	thumb_func_start ovy194_21ba170
ovy194_21ba170: ; 0x021BA170
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ovy194_21c4a68
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x33
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy194_21bfcf8
	ldr r1, _021BA1AC ; =ovy194_21ba058
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #8
	pop {r4, pc}
	nop
_021BA1AC: .word ovy194_21ba058
	thumb_func_end ovy194_21ba170

	thumb_func_start ovy194_21ba1b0
ovy194_21ba1b0: ; 0x021BA1B0
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	mov r1, #7
	mov r2, #0
	mov r6, #0
	bl sub_02199D08
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21be554
	mov r2, #0xa
	ldr r0, _021BA200 ; =0x04001050
	mov r1, #0xa
	sub r2, #0x12
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c5fe4
	add r0, r5, #0
	bl ovy194_21bc098
	cmp r0, #0
	beq _021BA1F4
	ldr r0, [r5, r4]
	mov r1, #8
	add r2, r6, #0
	bl sub_02199D08
_021BA1F4:
	ldr r1, _021BA204 ; =ovy194_21ba170
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	nop
_021BA200: .word 0x04001050
_021BA204: .word ovy194_21ba170
	thumb_func_end ovy194_21ba1b0

	thumb_func_start ovy194_21ba208
ovy194_21ba208: ; 0x021BA208
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _021BA212
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BA212:
	cmp r0, #1
	bne _021BA21A
	mov r0, #0x30
	pop {r3, r4, r5, pc}
_021BA21A:
	sub r5, r0, #2
	add r0, r5, #0
	mov r1, #6
	blx sub_0208D65C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #6
	blx sub_0208D65C
	add r5, r1, #0
	mov r0, #0xa0
	add r1, r4, #0
	mul r1, r0
	mov r0, #0x1a
	add r1, #0x60
	mul r0, r5
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21ba208

	thumb_func_start ovy194_21ba240
ovy194_21ba240: ; 0x021BA240
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovy194_21ba208
	ldr r1, _021BA278 ; =0x0000107C
	ldrsh r2, [r4, r1]
	cmp r2, r0
	bge _021BA25E
	add r1, r2, #0
	add r1, #0xe0
	cmp r1, r0
	ble _021BA25E
	mov r0, #1
	pop {r4, pc}
_021BA25E:
	ldr r1, _021BA27C ; =0x0000063C
	ldr r1, [r4, r1]
	add r0, r0, r1
	cmp r2, r0
	bge _021BA272
	add r2, #0xe0
	cmp r2, r0
	ble _021BA272
	mov r0, #1
	pop {r4, pc}
_021BA272:
	mov r0, #0
	pop {r4, pc}
	nop
_021BA278: .word 0x0000107C
_021BA27C: .word 0x0000063C
	thumb_func_end ovy194_21ba240

	thumb_func_start ovy194_21ba280
ovy194_21ba280: ; 0x021BA280
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_0203DF44
	mov r6, #0xf6
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	cmp r1, #0
	beq _021BA296
	b _021BA4E2
_021BA296:
	mov r1, #1
	lsl r1, r1, #8
	tst r1, r0
	beq _021BA2E6
	add r0, r4, #0
	bl sub_0203D564
	mov r1, #0x63
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r1, #1
	cmp r2, #0
	ble _021BA2CE
	ldr r1, _021BA4E4 ; =0x0000107C
	ldr r6, _021BA4E8 ; =0x021C6DE0
	ldrsh r1, [r5, r1]
_021BA2B8:
	lsl r3, r0, #2
	ldr r3, [r6, r3]
	cmp r3, r1
	ble _021BA2C8
	ldr r0, _021BA4E4 ; =0x0000107C
	mov r4, #1
	strh r3, [r5, r0]
	b _021BA2CE
_021BA2C8:
	add r0, r0, #1
	cmp r0, r2
	blt _021BA2B8
_021BA2CE:
	cmp r4, #0
	bne _021BA2DC
	ldr r0, _021BA4E8 ; =0x021C6DE0
	mov r4, #1
	ldr r1, [r0]
	ldr r0, _021BA4E4 ; =0x0000107C
	strh r1, [r5, r0]
_021BA2DC:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bbdac
	b _021BA4C8
_021BA2E6:
	mov r1, #1
	lsl r1, r1, #9
	tst r0, r1
	beq _021BA330
	add r0, r4, #0
	bl sub_0203D564
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	blt _021BA318
	ldr r1, _021BA4E4 ; =0x0000107C
	ldr r2, _021BA4E8 ; =0x021C6DE0
	ldrsh r3, [r5, r1]
_021BA304:
	lsl r1, r0, #2
	ldr r1, [r2, r1]
	cmp r1, r3
	bge _021BA314
	ldr r0, _021BA4E4 ; =0x0000107C
	mov r4, #1
	strh r1, [r5, r0]
	b _021BA318
_021BA314:
	sub r0, r0, #1
	bpl _021BA304
_021BA318:
	cmp r4, #0
	bne _021BA32E
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r4, #1
	lsl r1, r0, #2
	ldr r0, _021BA4E8 ; =0x021C6DE0
	ldr r1, [r0, r1]
	ldr r0, _021BA4E4 ; =0x0000107C
	strh r1, [r5, r0]
_021BA32E:
	b _021BA2DC
_021BA330:
	bl sub_0203DF44
	cmp r0, #0x40
	bne _021BA378
	add r0, r4, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, sp, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BA350
	ldr r0, [sp]
	add r6, #0x14
	str r0, [r5, r6]
_021BA350:
	ldr r1, _021BA4EC ; =0x00000F78
	ldr r0, [r5, r1]
	sub r0, r0, #1
	str r0, [r5, r1]
	bpl _021BA36A
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #2
	bge _021BA366
	mov r0, #2
	b _021BA368
_021BA366:
	mov r0, #4
_021BA368:
	str r0, [r5, r1]
_021BA36A:
	mov r0, #0x42
	lsl r0, r0, #6
	ldrsh r1, [r5, r0]
	mov r4, #1
	sub r1, r1, #1
	strh r1, [r5, r0]
	b _021BA4C8
_021BA378:
	bl sub_0203DF44
	cmp r0, #0x80
	bne _021BA3B8
	add r0, r4, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, sp, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BA398
	ldr r0, [sp]
	add r6, #0x14
	str r0, [r5, r6]
_021BA398:
	ldr r0, _021BA4EC ; =0x00000F78
	ldr r1, [r5, r0]
	add r2, r1, #1
	str r2, [r5, r0]
	sub r1, r0, #4
	ldr r1, [r5, r1]
	cmp r1, #2
	bge _021BA3AE
	cmp r2, #3
	blt _021BA3B6
	b _021BA3B2
_021BA3AE:
	cmp r2, #5
	blt _021BA3B6
_021BA3B2:
	mov r1, #0
	str r1, [r5, r0]
_021BA3B6:
	b _021BA36A
_021BA3B8:
	bl sub_0203DF44
	cmp r0, #0x10
	bne _021BA438
	add r0, r4, #0
	bl sub_0203D564
	mov r7, #0x42
	lsl r7, r7, #6
	ldrsh r0, [r5, r7]
	add r1, sp, #0
	mov r4, #1
	sub r0, r0, #1
	strh r0, [r5, r7]
	add r0, r5, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BA3E6
	ldr r0, [sp]
	add r6, #0x14
	str r0, [r5, r6]
	b _021BA416
_021BA3E6:
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy194_21ba240
	cmp r0, #0
	bne _021BA416
	add r6, #0x14
	ldr r0, [r5, r6]
	add r0, r0, #1
	bl ovy194_21ba208
	add r1, r4, #0
	add r1, #0xff
	sub r1, r0, r1
	sub r0, r7, #4
	strh r1, [r5, r0]
	sub r0, r4, #2
	strh r0, [r5, r7]
_021BA416:
	ldr r0, _021BA4F0 ; =0x00000F74
	ldr r1, _021BA4F4 ; =0x00000634
	ldr r2, [r5, r0]
	ldr r1, [r5, r1]
	cmp r2, r1
	blt _021BA426
	mov r1, #0
	str r1, [r5, r0]
_021BA426:
	ldr r1, _021BA4F0 ; =0x00000F74
	ldr r0, [r5, r1]
	cmp r0, #2
	bge _021BA4C8
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	blt _021BA4C8
	b _021BA4C2
_021BA438:
	bl sub_0203DF44
	cmp r0, #0x20
	bne _021BA4C8
	add r0, r4, #0
	bl sub_0203D564
	mov r0, #0x42
	lsl r0, r0, #6
	ldrsh r1, [r5, r0]
	mov r4, #1
	add r1, r1, #1
	strh r1, [r5, r0]
	add r0, r5, #0
	add r1, sp, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BA466
	ldr r0, [sp]
	add r6, #0x14
	str r0, [r5, r6]
	b _021BA4A2
_021BA466:
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	sub r1, r0, #1
	add r0, r6, #0
	add r0, #0x14
	str r1, [r5, r0]
	cmp r1, #0
	bge _021BA482
	ldr r0, _021BA4F4 ; =0x00000634
	add r6, #0x14
	ldr r0, [r5, r0]
	sub r0, r0, #1
	str r0, [r5, r6]
_021BA482:
	ldr r6, _021BA4F0 ; =0x00000F74
	add r0, r5, #0
	ldr r1, [r5, r6]
	bl ovy194_21ba240
	cmp r0, #0
	bne _021BA4A2
	ldr r0, [r5, r6]
	bl ovy194_21ba208
	ldr r1, _021BA4E4 ; =0x0000107C
	mov r2, #0
	strh r0, [r5, r1]
	mvn r2, r2
	add r0, r1, #4
	strh r2, [r5, r0]
_021BA4A2:
	ldr r1, _021BA4F0 ; =0x00000F74
	ldr r0, [r5, r1]
	cmp r0, #0
	bge _021BA4B2
	ldr r0, _021BA4F4 ; =0x00000634
	ldr r0, [r5, r0]
	sub r0, r0, #1
	str r0, [r5, r1]
_021BA4B2:
	ldr r1, _021BA4F0 ; =0x00000F74
	ldr r0, [r5, r1]
	cmp r0, #2
	bge _021BA4C8
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	blt _021BA4C8
_021BA4C2:
	mov r2, #2
	add r0, r1, #4
	str r2, [r5, r0]
_021BA4C8:
	cmp r4, #0
	beq _021BA4E2
	ldr r0, _021BA4F8 ; =0x00001084
	mov r1, #1
	str r1, [r5, r0]
	ldr r0, _021BA4FC ; =0x00000548
	bl sub_02006254
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy194_21ba500
_021BA4E2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA4E4: .word 0x0000107C
_021BA4E8: .word 0x021C6DE0
_021BA4EC: .word 0x00000F78
_021BA4F0: .word 0x00000F74
_021BA4F4: .word 0x00000634
_021BA4F8: .word 0x00001084
_021BA4FC: .word 0x00000548
	thumb_func_end ovy194_21ba280

	thumb_func_start ovy194_21ba500
ovy194_21ba500: ; 0x021BA500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	ldr r2, _021BA5E0 ; =0x0000107C
	add r5, r0, #0
	ldrsh r0, [r5, r2]
	add r6, r1, #0
	cmp r0, #0
	bge _021BA51E
	ldr r1, _021BA5E4 ; =0x0000063C
	ldr r1, [r5, r1]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r0, r0, r1
	strh r0, [r5, r2]
_021BA51E:
	ldr r1, _021BA5E0 ; =0x0000107C
	ldr r0, _021BA5E4 ; =0x0000063C
	ldrsh r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r0, r2
	bgt _021BA532
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r2, r0
	strh r0, [r5, r1]
_021BA532:
	ldr r4, _021BA5E8 ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r4]
	mov r2, #1
	bl ovy194_21c3c68
	add r0, r5, #0
	bl ovy194_21c30b8
	add r0, r5, #0
	bl ovy194_21c339c
	bl sub_020062A8
	cmp r0, #0
	bne _021BA55E
	cmp r6, #0
	beq _021BA55E
	sub r4, #0xfe
	add r0, r4, #0
	bl sub_02006254
_021BA55E:
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BA5C8
	cmp r7, #0
	beq _021BA5C8
	bl sub_02042B20
	cmp r0, #0
	beq _021BA5A6
	ldr r4, _021BA5E0 ; =0x0000107C
	ldrsh r0, [r5, r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	bne _021BA5DA
	bl sub_02040440
	add r1, r5, r4
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021BA5EC ; =0x00000C0C
	mov r1, #0xff
	mov r3, #2
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021BA5A6:
	bl sub_02040440
	ldr r1, _021BA5E0 ; =0x0000107C
	ldr r2, _021BA5EC ; =0x00000C0C
	add r1, r5, r1
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xff
	mov r3, #2
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021BA5C8:
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BA5DA
	ldr r0, _021BA5E0 ; =0x0000107C
	ldrsh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
_021BA5DA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA5E0: .word 0x0000107C
_021BA5E4: .word 0x0000063C
_021BA5E8: .word 0x00000828
_021BA5EC: .word 0x00000C0C
	thumb_func_end ovy194_21ba500

	thumb_func_start ovy194_21ba5f0
ovy194_21ba5f0: ; 0x021BA5F0
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #0xf6
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _021BA6D6
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _021BA680
	ldr r4, _021BA6DC ; =0x00001088
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BA67C
	ldr r0, [sp, #4]
	cmp r0, #0x40
	blo _021BA676
	cmp r0, #0xc0
	bhs _021BA676
	ldr r0, [sp]
	cmp r0, #0xa8
	blo _021BA676
	cmp r0, #0xbc
	bhs _021BA676
	sub r6, #0x5c
	ldr r0, [r5, r6]
	mov r1, #1
	mov r6, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x10
	ldrsh r0, [r5, r0]
	ldr r1, [sp, #4]
	sub r0, r1, r0
	lsl r1, r0, #1
	add r0, r4, #0
	sub r0, #0xe
	strh r1, [r5, r0]
	add r0, r4, #0
	ldr r1, [sp, #4]
	sub r0, #0x10
	strh r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc
	ldrsh r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xe
	ldrsh r0, [r5, r0]
	sub r4, #0xc
	sub r1, r1, r0
	strh r1, [r5, r4]
	cmp r0, #0xc
	ble _021BA670
	add r0, r5, #0
	add r1, r6, #0
_021BA668:
	add r2, r6, #0
	bl ovy194_21ba500
	b _021BA67C
_021BA670:
	add r0, r5, #0
	mov r1, #0
	b _021BA668
_021BA676:
	ldr r0, _021BA6E0 ; =0x0000107A
	mov r1, #0
	strh r1, [r5, r0]
_021BA67C:
	ldr r1, [sp, #4]
	b _021BA682
_021BA680:
	mov r1, #0
_021BA682:
	ldr r0, _021BA6E4 ; =0x00001078
	strh r1, [r5, r0]
	bl sub_0203DA2C
	cmp r0, #0
	bne _021BA6D6
	ldr r4, _021BA6E0 ; =0x0000107A
	ldrsh r0, [r5, r4]
	cmp r0, #0
	beq _021BA6D6
	mov r1, #2
	add r0, r5, r4
	mov r3, #0
	mov r2, #0
	b _021BA6B6
_021BA6A0:
	bge _021BA6A8
	ldrsh r6, [r0, r3]
	add r6, r6, #1
	strh r6, [r0]
_021BA6A8:
	ldrsh r6, [r5, r4]
	cmp r6, #0
	ble _021BA6B4
	ldrsh r6, [r0, r2]
	sub r6, r6, #1
	strh r6, [r0]
_021BA6B4:
	sub r1, r1, #1
_021BA6B6:
	cmp r1, #0
	beq _021BA6C0
	ldrsh r6, [r5, r4]
	cmp r6, #0
	bne _021BA6A0
_021BA6C0:
	ldr r1, _021BA6E8 ; =0x0000107C
	sub r0, r1, #2
	ldrsh r2, [r5, r1]
	ldrsh r0, [r5, r0]
	sub r0, r2, r0
	strh r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy194_21ba500
_021BA6D6:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021BA6DC: .word 0x00001088
_021BA6E0: .word 0x0000107A
_021BA6E4: .word 0x00001078
_021BA6E8: .word 0x0000107C
	thumb_func_end ovy194_21ba5f0

	thumb_func_start ovy194_21ba6ec
ovy194_21ba6ec: ; 0x021BA6EC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DA2C
	cmp r0, #0
	bne _021BA700
	ldr r1, _021BA704 ; =ovy194_21babc4
	add r0, r4, #0
	bl sub_021B7BE4
_021BA700:
	pop {r4, pc}
	nop
_021BA704: .word ovy194_21babc4
	thumb_func_end ovy194_21ba6ec

	thumb_func_start ovy194_21ba708
ovy194_21ba708: ; 0x021BA708
	push {r3, r4, r5, lr}
	ldr r2, _021BA77C ; =0x00000F98
	add r4, r0, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ovy194_21bc0f0
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BA734
	bl sub_02040440
	ldr r1, _021BA780 ; =0x00000C06
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BA778
_021BA734:
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #8
	mov r2, #0
	mov r5, #0
	bl sub_02199D18
	ldr r1, _021BA784 ; =0x00000F84
	sub r2, r5, #1
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	str r2, [r4, r0]
	sub r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r1, #0x14
	str r2, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21b8200
	add r0, r4, #0
	bl sub_021B7898
	ldr r1, _021BA788 ; =ovy194_21ba6ec
	add r0, r4, #0
	bl sub_021B7BE4
_021BA778:
	pop {r3, r4, r5, pc}
	nop
_021BA77C: .word 0x00000F98
_021BA780: .word 0x00000C06
_021BA784: .word 0x00000F84
_021BA788: .word ovy194_21ba6ec
	thumb_func_end ovy194_21ba708

	thumb_func_start ovy194_21ba78c
ovy194_21ba78c: ; 0x021BA78C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BA7B0
	add r0, r4, #0
	mov r1, #1
	bl ovy194_21b8200
	add r0, r4, #0
	bl sub_021B7BE0
	ldr r1, _021BA7CC ; =ovy194_21ba84c
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BA7B0:
	bl sub_02040440
	ldr r1, _021BA7D0 ; =0x00000C06
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BA7CA
	ldr r1, _021BA7CC ; =ovy194_21ba84c
	add r0, r4, #0
	bl sub_021B7BE4
_021BA7CA:
	pop {r4, pc}
	.align 2, 0
_021BA7CC: .word ovy194_21ba84c
_021BA7D0: .word 0x00000C06
	thumb_func_end ovy194_21ba78c

	thumb_func_start ovy194_21ba7d4
ovy194_21ba7d4: ; 0x021BA7D4
	push {r4, r5, r6, lr}
	ldr r1, _021BA840 ; =0x00001088
	add r5, r0, #0
	mov r6, #0
	add r0, r1, #0
	str r6, [r5, r1]
	sub r0, #0x10
	mov r4, #0xca
	strh r6, [r5, r0]
	sub r1, #0xe
	lsl r4, r4, #4
	strh r6, [r5, r1]
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x78
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x78
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r4, #0xb4
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r0, r5, #0
	bl ovy194_21b79e4
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21be554
	ldr r4, _021BA844 ; =0x0000064C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BA82C
	bl sub_0202DA54
	str r6, [r5, r4]
_021BA82C:
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b8200
	ldr r1, _021BA848 ; =ovy194_21ba78c
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	nop
_021BA840: .word 0x00001088
_021BA844: .word 0x0000064C
_021BA848: .word ovy194_21ba78c
	thumb_func_end ovy194_21ba7d4

	thumb_func_start ovy194_21ba84c
ovy194_21ba84c: ; 0x021BA84C
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #7
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #7
	mov r2, #1
	bl sub_02199D08
	ldr r0, [r5, r4]
	mov r1, #9
	mov r2, #0
	mov r4, #9
	bl sub_02199D18
	add r0, r5, #0
	bl ovy194_21b76e0
	ldr r6, _021BA8B8 ; =0x00000F04
	mov r1, #1
	ldr r0, [r5, r6]
	bl sub_0204C124
	add r0, r5, #0
	bl ovy194_21c3224
	add r0, r5, #0
	bl ovy194_21c5504
	add r0, r6, #0
	sub r4, #0xa
	add r0, #0x80
	str r4, [r5, r0]
	add r6, #0x84
	add r0, r5, #0
	str r4, [r5, r6]
	bl sub_021B7898
	ldr r1, _021BA8BC ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	nop
_021BA8B8: .word 0x00000F04
_021BA8BC: .word ovy194_21babc4
	thumb_func_end ovy194_21ba84c

	thumb_func_start ovy194_21ba8c0
ovy194_21ba8c0: ; 0x021BA8C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021BA920 ; =0x00000F04
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C124
	add r0, r4, #0
	bl ovy194_21bc098
	mov r5, #0x27
	lsl r5, r5, #6
	add r2, r0, #0
	ldr r0, [r4, r5]
	mov r1, #8
	bl sub_02199D18
	add r0, r4, #0
	bl ovy194_21bc098
	add r2, r0, #0
	ldr r0, [r4, r5]
	mov r1, #8
	bl sub_02199D08
	ldr r0, [r4, r5]
	mov r1, #7
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r4, r5]
	mov r1, #7
	mov r2, #1
	bl sub_02199D08
	ldr r0, [r4, r5]
	mov r1, #9
	mov r2, #0
	bl sub_02199D18
	add r0, r4, #0
	bl ovy194_21b76e0
	add r0, r4, #0
	bl sub_021B7898
	pop {r3, r4, r5, pc}
	nop
_021BA920: .word 0x00000F04
	thumb_func_end ovy194_21ba8c0

	thumb_func_start ovy194_21ba924
ovy194_21ba924: ; 0x021BA924
	push {r4, r5, r6, lr}
	mov r1, #1
	add r5, r0, #0
	bl ovy194_21be554
	mov r4, #0xca
	lsl r4, r4, #4
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x78
	mov r6, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x78
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r4, #0xb4
	add r0, r5, r4
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	add r0, r5, #0
	bl ovy194_21b79e4
	ldr r4, _021BA988 ; =0x0000064C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BA96C
	bl sub_0202DA54
	str r6, [r5, r4]
_021BA96C:
	add r0, r5, #0
	bl ovy194_21c3224
	add r0, r5, #0
	bl ovy194_21c5504
	add r0, r5, #0
	bl ovy194_21ba8c0
	ldr r1, _021BA98C ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BA988: .word 0x0000064C
_021BA98C: .word ovy194_21babc4
	thumb_func_end ovy194_21ba924

	thumb_func_start ovy194_21ba990
ovy194_21ba990: ; 0x021BA990
	push {r4, lr}
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BA9B0
	ldr r2, _021BA9E0 ; =0x00000F84
	add r0, r4, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	bl ovy194_21bc35c
	cmp r0, #0
	bne _021BA9BA
	pop {r4, pc}
_021BA9B0:
	add r0, r4, #0
	bl ovy194_21b9df4
	cmp r0, #0
	beq _021BA9DE
_021BA9BA:
	mov r2, #0
	ldr r1, _021BA9E4 ; =0x00000F98
	mvn r2, r2
	str r2, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x1c
	str r2, [r4, r0]
	sub r1, #0x18
	add r0, r4, #0
	str r2, [r4, r1]
	bl sub_021B7898
	ldr r1, _021BA9E8 ; =ovy194_21babc4
	add r0, r4, #0
	bl sub_021B7BE4
_021BA9DE:
	pop {r4, pc}
	.align 2, 0
_021BA9E0: .word 0x00000F84
_021BA9E4: .word 0x00000F98
_021BA9E8: .word ovy194_21babc4
	thumb_func_end ovy194_21ba990

	thumb_func_start ovy194_21ba9ec
ovy194_21ba9ec: ; 0x021BA9EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021BAA7C ; =0x00000F88
	ldr r1, [r5, r0]
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _021BAA08
	mov r0, #1
	str r0, [sp]
_021BAA08:
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BAA5C
	ldr r3, _021BAA80 ; =0x00000F84
	add r0, r5, #0
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	mov r6, #0
	mov r1, #0
	bl ovy194_21bc178
	add r4, r0, #0
	sub r0, r6, #1
	cmp r4, r0
	beq _021BAA50
	bl sub_02040440
	ldr r1, _021BAA84 ; =0x00000C13
	mov r2, #1
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BAA76
	ldr r1, _021BAA88 ; =ovy194_21ba990
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021BAA50:
	ldr r1, _021BAA88 ; =ovy194_21ba990
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021BAA5C:
	bl sub_02040440
	ldr r1, _021BAA8C ; =0x00000C16
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BAA76
	ldr r1, _021BAA88 ; =ovy194_21ba990
	add r0, r5, #0
	bl sub_021B7BE4
_021BAA76:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BAA7C: .word 0x00000F88
_021BAA80: .word 0x00000F84
_021BAA84: .word 0x00000C13
_021BAA88: .word ovy194_21ba990
_021BAA8C: .word 0x00000C16
	thumb_func_end ovy194_21ba9ec

	thumb_func_start ovy194_21baa90
ovy194_21baa90: ; 0x021BAA90
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c5460
	cmp r0, #0
	beq _021BAAB8
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BAAB0
	ldr r1, _021BAABC ; =ovy194_21ba9ec
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BAAB0:
	ldr r1, _021BAAC0 ; =ovy194_21ba990
	add r0, r4, #0
	bl sub_021B7BE4
_021BAAB8:
	pop {r4, pc}
	nop
_021BAABC: .word ovy194_21ba9ec
_021BAAC0: .word ovy194_21ba990
	thumb_func_end ovy194_21baa90

	thumb_func_start ovy194_21baac4
ovy194_21baac4: ; 0x021BAAC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021BAAE8
	ldr r0, _021BAB04 ; =0x00000F84
	ldr r1, [r5, r0]
	cmp r1, r6
	bne _021BAAFE
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r4
	bne _021BAAFE
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAAE8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21bc0f0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BAAFE
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAAFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BAB04: .word 0x00000F84
	thumb_func_end ovy194_21baac4

	thumb_func_start ovy194_21bab08
ovy194_21bab08: ; 0x021BAB08
	push {r4, r5, r6, lr}
	ldr r6, _021BABA8 ; =0x00000F98
	add r5, r0, #0
	ldr r0, _021BABAC ; =0x00000828
	sub r2, r6, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r6]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7b30
	sub r2, r6, #4
	add r4, r0, #0
	ldr r1, [r5, r6]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy194_21baac4
	cmp r0, #0
	beq _021BAB58
	ldr r0, _021BABB0 ; =0x00000626
	bl sub_02006254
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021BAB4C
	ldr r1, _021BABB4 ; =ovy194_21ba708
	add r0, r5, #0
	bl sub_021B7BE4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAB4C:
	ldr r1, _021BABB8 ; =ovy194_21be4b0
	add r0, r5, #0
	bl sub_021B7BE4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAB58:
	cmp r4, #0
	beq _021BAB92
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	mov r4, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BAB92
	ldr r0, _021BABBC ; =0x0000054B
	bl sub_02006254
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #8
	add r2, r4, #0
	bl sub_02199D18
	add r0, r5, #0
	bl ovy194_21c00fc
	ldr r1, _021BABC0 ; =ovy194_21b9394
	add r0, r5, #0
	bl sub_021B7BE4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAB92:
	add r0, r5, #0
	bl ovy194_21b79e4
	mov r1, #0
	ldr r0, _021BABA8 ; =0x00000F98
	mvn r1, r1
	str r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BABA8: .word 0x00000F98
_021BABAC: .word 0x00000828
_021BABB0: .word 0x00000626
_021BABB4: .word ovy194_21ba708
_021BABB8: .word ovy194_21be4b0
_021BABBC: .word 0x0000054B
_021BABC0: .word ovy194_21b9394
	thumb_func_end ovy194_21bab08

	thumb_func_start ovy194_21babc4
ovy194_21babc4: ; 0x021BABC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BAEBC ; =0x000011EA
	mov r4, #1
	strb r4, [r5, r0]
	bl sub_0203DA2C
	cmp r0, #0
	beq _021BABE6
	add r0, r4, #0
	bl sub_0203D564
	bl sub_0203DF20
	cmp r0, #0
	beq _021BABE6
	b _021BB02A
_021BABE6:
	bl sub_0203D554
	cmp r0, #0
	beq _021BACA6
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BABFC
	mov r0, #0
	bl sub_0203D564
_021BABFC:
	cmp r4, #0
	beq _021BACA6
	mov r0, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, sp, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BAC2C
	ldr r0, [sp]
	ldr r1, _021BAEC0 ; =0x00000F74
	cmp r0, #2
	str r0, [r5, r1]
	bge _021BAC98
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	blt _021BAC98
	mov r2, #2
	add r0, r1, #4
	str r2, [r5, r0]
	b _021BAC98
_021BAC2C:
	ldr r4, _021BAEC0 ; =0x00000F74
	add r0, r5, #0
	ldr r1, [r5, r4]
	bl ovy194_21ba240
	cmp r0, #0
	bne _021BAC98
	add r0, r5, #0
	bl ovy194_21c3bc0
	ldr r3, _021BAEC4 ; =0x00000634
	ldr r2, [r5, r4]
	add r1, r0, #5
	ldr r3, [r5, r3]
	add r0, #0xa
	add r4, r2, #0
	cmp r0, r3
	blt _021BAC58
	cmp r2, #0x14
	bge _021BAC58
	add r0, r3, #1
	add r4, r2, r0
_021BAC58:
	cmp r1, r4
	bge _021BAC6E
	add r0, r2, #1
	bl ovy194_21ba208
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r0, r1
	ldr r0, _021BAEC8 ; =0x0000107C
	strh r1, [r5, r0]
	b _021BAC78
_021BAC6E:
	add r0, r2, #0
	bl ovy194_21ba208
	ldr r1, _021BAEC8 ; =0x0000107C
	strh r0, [r5, r1]
_021BAC78:
	mov r0, #0
	mov r4, #0x42
	mvn r0, r0
	lsl r4, r4, #6
	strh r0, [r5, r4]
	mov r2, #1
	add r0, r4, #4
	str r2, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy194_21ba500
	sub r0, r4, #6
	strh r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021BAC98:
	add r0, r5, #0
	bl sub_021B7898
	ldr r0, _021BAECC ; =0x0000107A
	mov r1, #0
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021BACA6:
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BACB4
	mov r0, #0
	bl sub_0203D564
_021BACB4:
	cmp r4, #0
	bne _021BACCA
	bl sub_0203DA48
	add r4, r0, #0
	beq _021BACC6
	mov r0, #1
	bl sub_0203D564
_021BACC6:
	cmp r4, #0
	beq _021BACD0
_021BACCA:
	ldr r0, _021BAECC ; =0x0000107A
	mov r1, #0
	strh r1, [r5, r0]
_021BACD0:
	bl sub_0203DA48
	add r4, r0, #0
	beq _021BACDE
	mov r0, #1
	bl sub_0203D564
_021BACDE:
	cmp r4, #0
	beq _021BACF4
	add r0, r5, #0
	bl ovy194_21b79e4
	mov r1, #0
	ldr r0, _021BAED0 ; =0x00000F98
	mvn r1, r1
	str r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
_021BACF4:
	add r0, r5, #0
	bl ovy194_21b78b4
	add r0, r5, #0
	bl ovy194_21b796c
	add r0, r5, #0
	bl ovy194_21ba280
	add r0, r5, #0
	bl ovy194_21be598
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BAD1A
	mov r0, #0
	bl sub_0203D564
_021BAD1A:
	cmp r4, #1
	beq _021BAD20
	b _021BAE34
_021BAD20:
	mov r0, #0
	mov r4, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, sp, #0
	bl ovy194_21c3c10
	cmp r0, #0
	bne _021BAD54
	ldr r0, [sp]
	ldr r1, _021BAEC0 ; =0x00000F74
	cmp r0, #2
	str r0, [r5, r1]
	bge _021BAD48
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	blt _021BAD54
	b _021BAD50
_021BAD48:
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #5
	blt _021BAD54
_021BAD50:
	add r0, r1, #4
	str r4, [r5, r0]
_021BAD54:
	ldr r4, _021BAEC0 ; =0x00000F74
	add r1, r5, #0
	ldr r0, [r5, r4]
	bl ovy194_21b7854
	add r1, r4, #4
	add r6, r0, #0
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	bl ovy194_21b786c
	add r2, r0, #0
	ldr r0, _021BAED4 ; =0x00000828
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r3, r5, #0
	bl ovy194_21b7b30
	add r6, r0, #0
	beq _021BAE34
	mov r1, #0xa9
	mov r2, #0
	mov r7, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BAE34
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21bbe60
	cmp r0, #0
	beq _021BADBA
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x8f
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ovy194_21bfdf8
	ldr r1, _021BAED8 ; =ovy194_21b8dc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BADBA:
	ldr r0, [r5, r4]
	add r1, r5, #0
	bl ovy194_21b7854
	add r1, r4, #0
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r4, #4
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	bl ovy194_21b786c
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0203D564
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BAE0E
	add r1, r4, #0
	add r1, #0x24
	add r4, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	add r0, r5, #0
	bl ovy194_21bc0f0
	sub r1, r7, #1
	cmp r0, r1
	beq _021BAE0E
	ldr r0, _021BAEDC ; =0x00000626
	bl sub_02006254
	ldr r1, _021BAEE0 ; =ovy194_21be4b0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BAE0E:
	ldr r2, _021BAED0 ; =0x00000F98
	ldr r0, _021BAED4 ; =0x00000828
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7b30
	add r0, r5, #0
	bl ovy194_21b79e4
	add r0, r5, #0
	bl ovy194_21c3820
	add r0, r5, #0
	bl ovy194_21bab08
	pop {r3, r4, r5, r6, r7, pc}
_021BAE34:
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b8c84
	cmp r0, #1
	beq _021BAE4C
	cmp r0, #2
	bne _021BAE46
	b _021BB02A
_021BAE46:
	cmp r0, #3
	bne _021BAE5A
	pop {r3, r4, r5, r6, r7, pc}
_021BAE4C:
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
	mov r0, #0xf7
	lsl r0, r0, #4
	str r4, [r5, r0]
_021BAE5A:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021BAE64
	b _021BAFF2
_021BAE64:
	ldr r0, _021BAEE4 ; =0x00001088
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021BAE7C
	ldr r4, _021BAEE8 ; =0x00000F5C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BAE7C
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021BAE7E
_021BAE7C:
	b _021BAF82
_021BAE7E:
	ldr r7, _021BAED4 ; =0x00000828
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x20
	ldr r0, [r5, r7]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7b30
	ldr r1, _021BAEE4 ; =0x00001088
	mov r6, #0
	str r6, [r5, r1]
	str r6, [r5, r4]
	bl sub_0201CE8C
	cmp r0, #1
	bne _021BAEF8
	add r0, r4, #0
	sub r1, r6, #1
	add r0, #0x24
	str r1, [r5, r0]
	add r4, #0x20
	add r0, r5, #0
	str r1, [r5, r4]
	bl sub_021B79CC
	ldr r1, _021BAEEC ; =0x021B8E81
	b _021BAEF0
	nop
_021BAEBC: .word 0x000011EA
_021BAEC0: .word 0x00000F74
_021BAEC4: .word 0x00000634
_021BAEC8: .word 0x0000107C
_021BAECC: .word 0x0000107A
_021BAED0: .word 0x00000F98
_021BAED4: .word 0x00000828
_021BAED8: .word ovy194_21b8dc4
_021BAEDC: .word 0x00000626
_021BAEE0: .word ovy194_21be4b0
_021BAEE4: .word 0x00001088
_021BAEE8: .word 0x00000F5C
_021BAEEC: .word 0x021B8E81
_021BAEF0:
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BAEF8:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy194_21b82a8
	cmp r0, #0
	beq _021BAF2A
	add r0, r4, #0
	sub r1, r6, #1
	add r0, #0x24
	str r1, [r5, r0]
	add r4, #0x20
	add r0, r5, #0
	str r1, [r5, r4]
	bl sub_021B79CC
	ldr r1, _021BB02C ; =0x021B8E75
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BAF2A:
	add r0, r4, #0
	add r0, #0x24
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x3c
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x20
	add r2, r4, #0
	ldr r0, [r5, r0]
	add r2, #0x38
	str r0, [r5, r2]
	add r2, r4, #0
	add r2, #0x28
	str r0, [r5, r2]
	add r0, r4, #0
	add r0, #0x2c
	str r1, [r5, r0]
	add r0, r4, #4
	mov r4, #0x27
	lsl r4, r4, #6
	str r6, [r5, r0]
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #1
	bl sub_02199D08
	add r0, r5, #0
	bl ovy194_21c5348
	sub r7, #0xff
	add r0, r7, #0
	bl sub_02006254
	ldr r1, _021BB030 ; =ovy194_21baa90
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BAF82:
	cmp r1, #0
	beq _021BAFB8
	mov r1, #0xf6
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021BAFB8
	add r0, r1, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BAFB8
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x38
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	add r1, #0x34
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy194_21bab08
	pop {r3, r4, r5, r6, r7, pc}
_021BAFB8:
	ldr r0, _021BB034 ; =0x00000F7C
	mov r1, #0
	ldr r2, [r5, r0]
	mvn r1, r1
	cmp r2, r1
	beq _021BAFDA
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	beq _021BAFDA
	add r0, r5, #0
	bl ovy194_21b79e4
	add r0, r5, #0
	bl sub_021B7898
	b _021BAFE0
_021BAFDA:
	add r0, r5, #0
	bl ovy194_21b79e4
_021BAFE0:
	ldr r0, _021BB038 ; =0x00001088
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, _021BB03C ; =0x00000F5C
	str r1, [r5, r0]
	sub r0, #0x58
	ldr r0, [r5, r0]
	bl sub_0204C520
_021BAFF2:
	add r0, r5, #0
	bl ovy194_21ba5f0
	bl sub_0203DA2C
	cmp r0, #0
	beq _021BB006
	ldr r0, _021BB038 ; =0x00001088
	mov r1, #1
	str r1, [r5, r0]
_021BB006:
	mov r4, #0x27
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_02199B90
	ldr r0, [r5, r4]
	bl sub_02199C30
	cmp r0, #1
	beq _021BB022
	cmp r0, #7
	beq _021BB022
	cmp r0, #8
	bne _021BB02A
_021BB022:
	ldr r1, _021BB040 ; =ovy194_21bb044
	add r0, r5, #0
	bl sub_021B7BE4
_021BB02A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB02C: .word 0x021B8E75
_021BB030: .word ovy194_21baa90
_021BB034: .word 0x00000F7C
_021BB038: .word 0x00001088
_021BB03C: .word 0x00000F5C
_021BB040: .word ovy194_21bb044
	thumb_func_end ovy194_21babc4

	thumb_func_start ovy194_21bb044
ovy194_21bb044: ; 0x021BB044
	push {r3, r4, r5, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_02199B90
	ldr r0, [r5, r4]
	bl sub_02199C08
	cmp r0, #1
	beq _021BB066
	cmp r0, #7
	beq _021BB070
	cmp r0, #8
	beq _021BB07A
	pop {r3, r4, r5, pc}
_021BB066:
	ldr r1, _021BB0EC ; =ovy194_21b9eec
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BB070:
	ldr r1, _021BB0F0 ; =ovy194_21ba1b0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BB07A:
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BB0C6
	add r0, r5, #0
	bl ovy194_21bc098
	cmp r0, #0
	ldr r0, [r5, r4]
	beq _021BB0B2
	mov r1, #7
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	add r0, r5, #0
	bl sub_021B79CC
	ldr r1, _021BB0F4 ; =ovy194_21be380
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BB0B2:
	mov r1, #7
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r5, r4]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	b _021BB0E0
_021BB0C6:
	ldr r0, _021BB0F8 ; =0x00000F84
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021BB0D6
	ldr r0, [r5, r4]
	b _021BB0B2
_021BB0D6:
	ldr r1, _021BB0FC ; =ovy194_21b8bb4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BB0E0:
	ldr r1, _021BB100 ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
	nop
_021BB0EC: .word ovy194_21b9eec
_021BB0F0: .word ovy194_21ba1b0
_021BB0F4: .word ovy194_21be380
_021BB0F8: .word 0x00000F84
_021BB0FC: .word ovy194_21b8bb4
_021BB100: .word ovy194_21babc4
	thumb_func_end ovy194_21bb044

	thumb_func_start ovy194_21bb104
ovy194_21bb104: ; 0x021BB104
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BB174
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021BB120
	add r0, r4, #0
	bl sub_0203D564
_021BB120:
	cmp r6, #0
	beq _021BB12C
	mov r0, #0
	bl sub_0203D564
	mov r4, #1
_021BB12C:
	bl sub_0203DA48
	add r6, r0, #0
	beq _021BB13A
	mov r0, #1
	bl sub_0203D564
_021BB13A:
	cmp r6, #0
	beq _021BB146
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
_021BB146:
	cmp r4, #0
	beq _021BB174
	add r0, r5, #0
	bl ovy194_21bfe9c
	add r0, r5, #0
	bl ovy194_21c5504
	ldr r1, _021BB178 ; =ovy194_21babc4
	add r0, r5, #0
	bl sub_021B7BE4
	mov r1, #0
	mov r0, #0x42
	mvn r1, r1
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r0, _021BB17C ; =0x00000828
	add r1, r5, #0
	ldr r0, [r5, r0]
	mov r2, #1
	bl ovy194_21c3c68
_021BB174:
	pop {r4, r5, r6, pc}
	nop
_021BB178: .word ovy194_21babc4
_021BB17C: .word 0x00000828
	thumb_func_end ovy194_21bb104

	thumb_func_start ovy194_21bb180
ovy194_21bb180: ; 0x021BB180
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21c43c0
	ldr r1, _021BB1B4 ; =0x000005F4
	mov r0, #4
	ldrh r2, [r4, r1]
	ldr r1, _021BB1B8 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020199E8
	mov r5, #0x21
	lsl r5, r5, #6
	mov r1, #3
	str r0, [r4, r5]
	lsl r1, r1, #0x10
	bl sub_0201AEFC
	ldr r0, [r4, r5]
	bl sub_0201AACC
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BB1B4: .word 0x000005F4
_021BB1B8: .word 0x00007FFF
	thumb_func_end ovy194_21bb180

	thumb_func_start ovy194_21bb1bc
ovy194_21bb1bc: ; 0x021BB1BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r6, #0
	bl ovy194_21c24dc
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c24dc
	mov r4, #0x21
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_02019A88
	str r6, [r5, r4]
	sub r4, #0x30
	ldr r0, [r5, r4]
	bl sub_0204A630
	bl sub_02048F44
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21bb1bc

	thumb_func_start ovy194_21bb1ec
ovy194_21bb1ec: ; 0x021BB1EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	bl sub_020444A4
	ldr r0, _021BB214 ; =0x000005F4
	ldrh r0, [r4, r0]
	bl sub_02048080
	add r0, r4, #0
	bl ovy194_21c41fc
	add r0, r4, #0
	bl ovy194_21c4234
	add r0, r4, #0
	bl ovy194_21c4484
	pop {r4, pc}
	nop
_021BB214: .word 0x000005F4
	thumb_func_end ovy194_21bb1ec

	thumb_func_start ovy194_21bb218
ovy194_21bb218: ; 0x021BB218
	push {r3, lr}
	bl sub_0204B758
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy194_21bb218

	thumb_func_start ovy194_21bb228
ovy194_21bb228: ; 0x021BB228
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ovy194_21c2e6c
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _021BB288 ; =0x000005F4
	mov r3, #7
	ldrh r0, [r4, r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #6
	bl sub_0204B0B8
	add r0, r4, #0
	bl ovy194_21be6ac
	ldr r0, _021BB28C ; =0x0000118C
	ldr r0, [r4, r0]
	cmp r0, #4
	bge _021BB25E
	add r0, r4, #0
	bl ovy194_21c46a4
_021BB25E:
	add r0, r4, #0
	bl ovy194_21c3480
	add r0, r4, #0
	bl ovy194_21c2d78
	add r0, r4, #0
	bl ovy194_21c2c84
	add r0, r4, #0
	bl ovy194_21c3224
	ldr r0, _021BB290 ; =0x00000828
	add r1, r4, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl ovy194_21c3c68
	add sp, #8
	pop {r4, pc}
	nop
_021BB288: .word 0x000005F4
_021BB28C: .word 0x0000118C
_021BB290: .word 0x00000828
	thumb_func_end ovy194_21bb228

	thumb_func_start ovy194_21bb294
ovy194_21bb294: ; 0x021BB294
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0204B7C8
	ldr r6, _021BB2C8 ; =0x00001084
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BB2C4
	add r2, r6, #0
	add r2, #8
	ldr r2, [r5, r2]
	mov r0, #7
	mov r1, #0
	mov r4, #0
	bl sub_02044CFC
	add r2, r6, #0
	add r2, #8
	ldr r2, [r5, r2]
	mov r0, #5
	mov r1, #0
	bl sub_02044CFC
	str r4, [r5, r6]
_021BB2C4:
	pop {r4, r5, r6, pc}
	nop
_021BB2C8: .word 0x00001084
	thumb_func_end ovy194_21bb294

	thumb_func_start ovy194_21bb2cc
ovy194_21bb2cc: ; 0x021BB2CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021BB358 ; =0x00000FEE
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r6, #0x76
_021BB2D8:
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021BB358 ; =0x00000FEE
	ldr r3, _021BB35C ; =0x021C6EB0
	str r0, [sp]
	mov r0, #0x91
	mov r2, #1
	bl sub_0203A1FC
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #3
	blo _021BB2D8
	cmp r7, #0
	beq _021BB356
	ldr r4, _021BB360 ; =0x0000082C
	add r0, r7, #0
	str r7, [r5, r4]
	bl sub_02017364
	sub r1, r4, #4
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0201736C
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0201735C
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021BB356
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BB34A
	bl sub_0203FFC4
	add r2, r0, #0
	mov r1, #1
	add r0, r7, #0
	sub r1, r1, r2
	bl sub_02017378
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BB34A:
	add r0, r7, #0
	mov r1, #1
	bl sub_02017378
	add r4, #8
	str r0, [r5, r4]
_021BB356:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB358: .word 0x00000FEE
_021BB35C: .word 0x021C6EB0
_021BB360: .word 0x0000082C
	thumb_func_end ovy194_21bb2cc

	thumb_func_start ovy194_21bb364
ovy194_21bb364: ; 0x021BB364
	push {r4, r5, r6, lr}
	ldr r6, _021BB380 ; =0x00001064
	add r5, r0, #0
	mov r4, #0
_021BB36C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0203A24C
	add r4, r4, #1
	cmp r4, #3
	blo _021BB36C
	pop {r4, r5, r6, pc}
	nop
_021BB380: .word 0x00001064
	thumb_func_end ovy194_21bb364

	thumb_func_start ovy194_21bb384
ovy194_21bb384: ; 0x021BB384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BB3B8 ; =0x00000828
	ldr r0, [r4, r0]
	bl sub_02007968
	mov r1, #6
	mul r1, r0
	ldr r2, _021BB3BC ; =0x00000634
	add r1, r1, #2
	str r1, [r4, r2]
	sub r1, r2, #4
	str r0, [r4, r1]
	mov r1, #0x14
	add r3, r0, #0
	mul r3, r1
	add r1, r2, #4
	add r3, #0xc
	str r3, [r4, r1]
	mov r1, #0xa0
	mul r1, r0
	add r1, #0x60
	add r2, #8
	str r1, [r4, r2]
	pop {r4, pc}
	nop
_021BB3B8: .word 0x00000828
_021BB3BC: .word 0x00000634
	thumb_func_end ovy194_21bb384

	thumb_func_start ovy194_21bb3c0
ovy194_21bb3c0: ; 0x021BB3C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021BB4A8 ; =0x000011FC
	str r1, [sp]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	bne _021BB49C
	ldr r0, [sp, #8]
	ldr r2, _021BB4AC ; =0x00000B58
	mov r1, #0
	mov r4, #0
	blx MI_CpuFill8
_021BB3DE:
	ldr r0, _021BB4B0 ; =0x00000828
	mov r1, #0x63
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	add r3, r5, #0
	bl ovy194_21b7b30
	add r6, r0, #0
	beq _021BB42E
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BB42E
	add r0, r6, #0
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BB42E
	ldr r2, [sp, #8]
	lsl r1, r4, #2
	strh r0, [r2, r1]
	add r7, r2, r1
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CD88
	strb r0, [r7, #2]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CD88
	strb r0, [r7, #3]
_021BB42E:
	add r4, r4, #1
	cmp r4, #6
	blt _021BB3DE
	b _021BB49C
_021BB436:
	ldr r0, [sp]
	mov r1, #0x1e
	mul r1, r0
	add r0, r1, #6
	mov r4, #0
	str r0, [sp, #4]
_021BB442:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r7, r4, r0
	ldr r0, _021BB4B0 ; =0x00000828
	add r2, r4, #0
	ldr r0, [r5, r0]
	add r3, r5, #0
	bl ovy194_21b7b30
	add r6, r0, #0
	beq _021BB492
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BB492
	add r0, r6, #0
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021BB492
	ldr r2, [sp, #8]
	lsl r1, r7, #2
	strh r0, [r2, r1]
	add r7, r2, r1
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CD88
	strb r0, [r7, #2]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CD88
	strb r0, [r7, #3]
_021BB492:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021BB442
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BB49C:
	ldr r0, [sp]
	cmp r0, #0x18
	blt _021BB436
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BB4A8: .word 0x000011FC
_021BB4AC: .word 0x00000B58
_021BB4B0: .word 0x00000828
	thumb_func_end ovy194_21bb3c0

	thumb_func_start ovy194_21bb4b4
ovy194_21bb4b4: ; 0x021BB4B4
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021BB598 ; =0x04001000
	ldr r1, _021BB59C ; =0xFFFF1FFF
	ldr r2, [r3]
	add r5, r0, #0
	and r1, r2
	str r1, [r3]
	bl ovy194_21c52bc
	add r0, r5, #0
	bl ovy194_21c2034
	add r0, r5, #0
	bl ovy194_21bc330
	add r0, r5, #0
	bl ovy194_21be688
	add r0, r5, #0
	bl ovy194_21bc784
	add r0, r5, #0
	bl ovy194_21c3374
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c24dc
	add r0, r5, #0
	bl ovy194_21c57a8
	add r0, r5, #0
	bl ovy194_21be578
	add r0, r5, #0
	bl ovy194_21c1484
	add r0, r5, #0
	bl ovy194_21c368c
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy194_21c123c
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c123c
	mov r6, #0x27
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BB526
	bl sub_02199B5C
	str r4, [r5, r6]
_021BB526:
	add r0, r5, #0
	bl ovy194_21c36e4
	ldr r4, _021BB5A0 ; =0x000009C4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BB53C
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021BB53C:
	add r0, r5, #0
	bl ovy194_21bffac
	add r0, r5, #0
	bl ovy194_21bbf18
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy194_21c1740
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c1740
	add r0, r5, #0
	bl ovy194_21c2d0c
	add r0, r5, #0
	bl ovy194_21c2e04
	add r0, r5, #0
	bl ovy194_21c45a8
	ldr r6, _021BB5A4 ; =0x00000818
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BB57A
	bl sub_0203A24C
	str r4, [r5, r6]
_021BB57A:
	ldr r7, _021BB5A8 ; =0x0000085C
	mov r4, #0
_021BB57E:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021BB590
	bl sub_0203A24C
	mov r0, #0
	str r0, [r6, r7]
_021BB590:
	add r4, r4, #1
	cmp r4, #4
	blt _021BB57E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB598: .word 0x04001000
_021BB59C: .word 0xFFFF1FFF
_021BB5A0: .word 0x000009C4
_021BB5A4: .word 0x00000818
_021BB5A8: .word 0x0000085C
	thumb_func_end ovy194_21bb4b4

	thumb_func_start ovy194_21bb5ac
ovy194_21bb5ac: ; 0x021BB5AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BB5E4 ; =0x000011F8
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021BB5DA
	cmp r0, #1
	beq _021BB5CA
	cmp r0, #2
	bne _021BB5DA
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
_021BB5CA:
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x1e
	bl sub_02005E68
_021BB5DA:
	ldr r0, _021BB5E4 ; =0x000011F8
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_021BB5E4: .word 0x000011F8
	thumb_func_end ovy194_21bb5ac

	thumb_func_start ovy194_21bb5e8
ovy194_21bb5e8: ; 0x021BB5E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #3
	ldr r0, _021BB620 ; =0x021c7360
	lsl r1, r1, #0xe
	mov r2, #0x91
	bl sub_0203A178
	mov r0, #1
	mov r1, #0x1f
	add r2, r4, #0
	bl sub_0203A15C
	add r0, r5, #0
	ldr r5, _021BB624 ; =0x00001D54
	mov r2, #0x91
	add r1, r5, #0
	bl sub_0203AAEC
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021BB620: .word 0x021c7360
_021BB624: .word 0x00001D54
	thumb_func_end ovy194_21bb5e8

	thumb_func_start ovy194_21bb628
ovy194_21bb628: ; 0x021BB628
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x20]
	add r5, r2, #0
	add r4, r3, #0
	cmp r7, #5
	bge _021BB642
	ldr r0, _021BB7E0 ; =0x0000008B
	bl sub_0203CE0C
	ldr r0, _021BB7E4 ; =0x000000BD
	bl sub_0203CE0C
_021BB642:
	cmp r7, #0
	beq _021BB64A
	cmp r7, #4
	bne _021BB64E
_021BB64A:
	ldr r0, _021BB7E8 ; =0x000000C0
	b _021BB650
_021BB64E:
	ldr r0, _021BB7EC ; =0x000000C1
_021BB650:
	bl sub_0203CE0C
	mov r0, #1
	bl sub_02046DF8
	ldr r0, _021BB7F0 ; =0x000005F4
	mov r1, #0x1f
	ldr r6, _021BB7F4 ; =0x0000118C
	strh r1, [r4, r0]
	str r7, [r4, r6]
	str r0, [sp, #4]
	str r5, [r4, #8]
	bl sub_0201C2C8
	add r1, r0, #0
	add r0, r6, #0
	sub r0, #0x71
	str r0, [sp]
	ldr r3, _021BB7F8 ; =0x021C6EB0
	mov r0, #0x91
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [sp, #4]
	sub r1, #0x18
	str r0, [r4, r1]
	bl sub_0201C2C8
	add r1, r0, #0
	add r0, r6, #0
	sub r0, #0x70
	str r0, [sp]
	ldr r3, _021BB7F8 ; =0x021C6EB0
	mov r0, #0x91
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [sp, #4]
	ldr r3, _021BB7F8 ; =0x021C6EB0
	sub r1, #0x14
	str r0, [r4, r1]
	str r1, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	sub r0, #0x6f
	lsl r7, r1, #9
	str r0, [sp]
	mov r0, #0x91
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r6, #0
	sub r1, #0xe8
	str r0, [r4, r1]
	add r0, r6, #0
	sub r0, #0x6e
	str r0, [sp]
	ldr r3, _021BB7F8 ; =0x021C6EB0
	mov r0, #0x91
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r6, #0
	sub r1, #0xe4
	str r0, [r4, r1]
	ldr r0, [r5, #0x14]
	bl sub_0200D190
	bl sub_0200D1AC
	add r6, #0x6a
	strb r0, [r4, r6]
	cmp r5, #0
	beq _021BB6F2
	ldrh r2, [r5, #0x2e]
	ldr r1, [r5, #0x14]
	add r0, r4, #0
	bl ovy194_21bb2cc
_021BB6F2:
	add r0, r4, #0
	bl ovy194_21bb384
	add r0, r4, #0
	bl ovy194_21bb180
	add r0, r4, #0
	bl ovy194_21bb1ec
	ldr r2, _021BB7F0 ; =0x000005F4
	mov r0, #0x55
	ldrh r2, [r4, r2]
	lsl r0, r0, #2
	mov r1, #0
	bl sub_0204BF1C
	ldr r1, _021BB7FC ; =0x000009C4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BB73A
	mov r0, #3
	ldr r1, _021BB800 ; =0x021C6418
	lsl r0, r0, #0xa
	mov r2, #0x18
	add r3, r4, #0
	bl sub_02040C20
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
_021BB73A:
	ldr r0, _021BB804 ; =ovy194_21bb294
	add r1, r4, #0
	mov r2, #0
	mov r7, #0
	bl sub_020056FC
	ldr r1, _021BB808 ; =0x000009C8
	ldr r6, _021BB80C ; =0x0000109C
	str r0, [r4, r1]
	mov r0, #0xf6
	lsl r0, r0, #4
	add r2, r0, #0
	str r7, [r4, r0]
	sub r1, r7, #1
	add r2, #0x24
	str r1, [r4, r2]
	add r2, r0, #0
	str r1, [r4, r6]
	add r2, #0x1c
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x20
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x38
	str r1, [r4, r2]
	add r0, #0x34
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy194_21c1ef0
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021BB794
	mov r0, #0x10
	bl sub_02046D38
	ldr r1, _021BB810 ; =ovy194_21bf938
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #8
	str r7, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BB794:
	add r0, r4, #0
	bl ovy194_21bfedc
	add r0, r4, #0
	bl ovy194_21c2de8
	add r6, #0xf0
	ldr r0, [r4, r6]
	cmp r0, #4
	bge _021BB7BE
	add r0, r4, #0
	bl ovy194_21bb228
	add r0, r4, #0
	bl ovy194_21c2a24
	ldr r1, _021BB7F0 ; =0x000005F4
	mov r0, #1
	ldrh r1, [r4, r1]
	bl sub_02042BA8
_021BB7BE:
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21c200c
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r1, _021BB814 ; =ovy194_21b99b4
	add r0, r4, #0
	bl sub_021B7BE4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB7E0: .word 0x0000008B
_021BB7E4: .word 0x000000BD
_021BB7E8: .word 0x000000C0
_021BB7EC: .word 0x000000C1
_021BB7F0: .word 0x000005F4
_021BB7F4: .word 0x0000118C
_021BB7F8: .word 0x021C6EB0
_021BB7FC: .word 0x000009C4
_021BB800: .word 0x021C6418
_021BB804: .word ovy194_21bb294
_021BB808: .word 0x000009C8
_021BB80C: .word 0x0000109C
_021BB810: .word ovy194_21bf938
_021BB814: .word ovy194_21b99b4
	thumb_func_end ovy194_21bb628

	thumb_func_start ovy194_21bb818
ovy194_21bb818: ; 0x021BB818
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0xc6
	lsl r1, r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	bl ovy194_21bb5e8
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21bb628
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21bb818

	thumb_func_start ovy194_21bb840
ovy194_21bb840: ; 0x021BB840
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0xc6
	lsl r1, r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	bl ovy194_21bb5e8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21bb628
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21bb840

	thumb_func_start ovy194_21bb868
ovy194_21bb868: ; 0x021BB868
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	mov r1, #0xc6
	lsl r1, r1, #0xc
	str r0, [sp, #4]
	add r7, r2, #0
	bl ovy194_21bb5e8
	ldr r1, _021BB8BC ; =0x00001048
	add r5, r0, #0
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	mov r4, #1
	add r2, #8
_021BB888:
	lsl r6, r0, #2
	add r6, r5, r6
	str r3, [r6, r1]
	add r0, r0, #1
	str r4, [r6, r2]
	cmp r0, #2
	blt _021BB888
	bl sub_0203FFC4
	add r2, r0, #0
	mov r1, #1
	ldr r0, [r7, #0x14]
	sub r1, r1, r2
	bl sub_02017378
	ldr r1, _021BB8C0 ; =0x00000834
	add r2, r7, #0
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r3, r5, #0
	str r4, [sp]
	bl ovy194_21bb628
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB8BC: .word 0x00001048
_021BB8C0: .word 0x00000834
	thumb_func_end ovy194_21bb868

	thumb_func_start ovy194_21bb8c4
ovy194_21bb8c4: ; 0x021BB8C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	mov r1, #0xc6
	ldr r4, [r2, #0x18]
	lsl r1, r1, #0xc
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	bl ovy194_21bb5e8
	add r3, r0, #0
	cmp r4, #0
	beq _021BB920
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _021BB908
	ldr r7, _021BB934 ; =0x00001048
	mov r6, #0
	add r0, r7, #0
	add r0, #8
_021BB8F0:
	lsl r1, r6, #3
	add r5, r4, r1
	lsl r1, r6, #2
	add r2, r3, r1
	ldr r1, [r5, #8]
	add r6, r6, #1
	str r1, [r2, r7]
	ldr r1, [r5, #4]
	cmp r6, #2
	str r1, [r2, r0]
	blt _021BB8F0
	b _021BB920
_021BB908:
	ldr r0, _021BB934 ; =0x00001048
	mov r5, #0
	add r1, r0, #0
	sub r2, r5, #1
	add r1, #8
_021BB912:
	lsl r4, r5, #2
	add r4, r3, r4
	str r2, [r4, r0]
	add r5, r5, #1
	str r2, [r4, r1]
	cmp r5, #2
	blt _021BB912
_021BB920:
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl ovy194_21bb628
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BB934: .word 0x00001048
	thumb_func_end ovy194_21bb8c4

	thumb_func_start ovy194_21bb938
ovy194_21bb938: ; 0x021BB938
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C2C8
	ldr r6, _021BB9BC ; =0x000005DC
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, r6]
	blx MI_CpuCopy8
	bl sub_0201C2C8
	add r1, r6, #4
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	ldr r1, [r4, r1]
	blx MI_CpuCopy8
	mov r6, #1
	str r6, [sp]
	ldr r3, [r5, #0x34]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ovy194_21c24cc
	str r6, [sp]
	ldr r3, [r5, #0x38]
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl ovy194_21c24cc
	add r0, r4, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021BB98C
	ldr r0, _021BB9C0 ; =0x00000848
	b _021BB98E
_021BB98C:
	ldr r0, _021BB9C4 ; =0x00000844
_021BB98E:
	ldr r0, [r4, r0]
	bl sub_0201AD7C
	mov r0, #0x83
	ldr r1, [r5, #0x3c]
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, [r5, #0x40]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _021BB9C8 ; =0x000005F4
	mov r0, #0
	ldrh r1, [r4, r1]
	bl sub_02042BA8
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204E060
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BB9BC: .word 0x000005DC
_021BB9C0: .word 0x00000848
_021BB9C4: .word 0x00000844
_021BB9C8: .word 0x000005F4
	thumb_func_end ovy194_21bb938

	thumb_func_start ovy194_21bb9cc
ovy194_21bb9cc: ; 0x021BB9CC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0xc6
	add r5, r2, #0
	lsl r1, r1, #0xc
	add r6, r0, #0
	bl ovy194_21bb5e8
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	str r0, [r5, #0x14]
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy194_21bb628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bb938
	ldr r1, _021BBA08 ; =0x021B38CD
	add r0, r4, #0
	bl sub_021B7BE4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBA08: .word 0x021B38CD
	thumb_func_end ovy194_21bb9cc

	thumb_func_start ovy194_21bba0c
ovy194_21bba0c: ; 0x021BBA0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x96
	add r5, r2, #0
	lsl r1, r1, #0xc
	add r6, r0, #0
	bl ovy194_21bb5e8
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	str r0, [r5, #0x14]
	mov r0, #7
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy194_21bb628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bb938
	ldr r1, _021BBA48 ; =0x021B46F9
	add r0, r4, #0
	bl sub_021B7BE4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBA48: .word 0x021B46F9
	thumb_func_end ovy194_21bba0c

	thumb_func_start ovy194_21bba4c
ovy194_21bba4c: ; 0x021BBA4C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x96
	add r5, r2, #0
	lsl r1, r1, #0xc
	add r6, r0, #0
	bl ovy194_21bb5e8
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	str r0, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy194_21bb628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bb938
	ldr r1, _021BBA88 ; =0x021B5C79
	add r0, r4, #0
	bl sub_021B7BE4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBA88: .word 0x021B5C79
	thumb_func_end ovy194_21bba4c

	thumb_func_start ovy194_21bba8c
ovy194_21bba8c: ; 0x021BBA8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x96
	add r5, r2, #0
	lsl r1, r1, #0xc
	add r6, r0, #0
	bl ovy194_21bb5e8
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	str r0, [r5, #0x14]
	mov r0, #6
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy194_21bb628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bb938
	ldr r1, _021BBAC8 ; =0x021B37F9
	add r0, r4, #0
	bl sub_021B7BE4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBAC8: .word 0x021B37F9
	thumb_func_end ovy194_21bba8c

	thumb_func_start ovy194_21bbacc
ovy194_21bbacc: ; 0x021BBACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #1
	str r0, [sp]
	ldr r0, _021BBC80 ; =0x000005EC
	add r5, r3, #0
	ldr r4, [r5, r0]
	bl sub_0202D7D8
	cmp r0, #0
	beq _021BBAE8
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BBAE8:
	cmp r4, #0
	beq _021BBB16
	add r0, r5, #0
	blx r4
	ldr r0, _021BBC84 ; =0x00000F2C
	ldr r6, _021BBC88 ; =0x000011E8
	ldr r1, [r5, r0]
	mov r4, #0
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	add r7, r0, #0
_021BBB02:
	add r2, r5, r4
	ldrb r2, [r2, r6]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ovy194_21bc6b4
	add r4, r4, #1
	cmp r4, #2
	blt _021BBB02
_021BBB16:
	ldr r4, _021BBC8C ; =0x00000F9C
	ldr r2, [r5, r4]
	cmp r2, #0
	beq _021BBB3C
	ldr r0, _021BBC90 ; =0x000011F3
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021BBB3C
	sub r2, r2, #1
	lsl r2, r2, #2
	add r3, r5, r2
	ldr r2, _021BBC94 ; =0x000005DC
	add r0, r5, #0
	ldr r2, [r3, r2]
	mov r1, #1
	bl ovy194_21b81c8
	mov r0, #0
	str r0, [r5, r4]
_021BBB3C:
	add r0, r5, #0
	bl ovy194_21b77b0
	add r0, r5, #0
	bl ovy194_21be610
	bl sub_0204B794
	ldr r0, _021BBC98 ; =0x0000064C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BBB58
	bl sub_0202DB70
_021BBB58:
	ldr r0, _021BBC9C ; =0x00000648
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BBB64
	bl sub_0202E37C
_021BBB64:
	ldr r4, _021BBCA0 ; =0x000011FB
	ldrb r0, [r5, r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _021BBB88
	bl sub_02040440
	ldr r1, _021BBCA4 ; =0x00000C17
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BBB88
	ldrb r1, [r5, r4]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r5, r4]
_021BBB88:
	ldr r4, _021BBCA8 ; =0x00000744
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBBC2
	add r0, sp, #4
	add r1, sp, #4
	add r0, #2
	add r1, #1
	add r2, sp, #4
	bl sub_02023370
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [r5, r4]
	bl sub_0203A7F4
	add r2, sp, #4
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02021A3C
_021BBBC2:
	add r0, r5, #0
	bl ovy194_21be720
	bl sub_02049A98
	mov r4, #0x81
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204A638
	bl sub_02049AF0
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	bl sub_02019AE8
	add r4, #0x30
	ldr r0, [r5, r4]
	bl sub_02019C0C
	add r0, r5, #0
	bl sub_021C1FB8
	bl sub_02049AA0
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BBC7A
	ldr r0, _021BBCAC ; =0x00000EF8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021BBC7A
	bl sub_020120C8
	cmp r0, #0
	beq _021BBC7A
	ldr r0, _021BBCB0 ; =0x000011F7
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021BBC1E
	mov r0, #0x29
	bl sub_02011D04
_021BBC1E:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BBC3C
	bl sub_0219D124
	ldr r0, [r5]
	bl sub_0219D1F0
	mov r0, #0
	mov r1, #0
	str r0, [r5]
	bl sub_02152040
	bl sub_02152158
_021BBC3C:
	bl sub_02042B20
	cmp r0, #0
	beq _021BBC4E
	mov r0, #1
	mov r1, #1
	bl sub_02152404
	b _021BBC5A
_021BBC4E:
	ldr r0, _021BBCB4 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _021BBC5A
	bl sub_020120DC
_021BBC5A:
	ldr r0, [r5, #8]
	mov r1, #2
	str r1, [r0, #8]
	add r0, r5, #0
	bl ovy194_21bb5ac
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
_021BBC7A:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBC80: .word 0x000005EC
_021BBC84: .word 0x00000F2C
_021BBC88: .word 0x000011E8
_021BBC8C: .word 0x00000F9C
_021BBC90: .word 0x000011F3
_021BBC94: .word 0x000005DC
_021BBC98: .word 0x0000064C
_021BBC9C: .word 0x00000648
_021BBCA0: .word 0x000011FB
_021BBCA4: .word 0x00000C17
_021BBCA8: .word 0x00000744
_021BBCAC: .word 0x00000EF8
_021BBCB0: .word 0x000011F7
_021BBCB4: .word 0x0000118C
	thumb_func_end ovy194_21bbacc

	thumb_func_start ovy194_21bbcb8
ovy194_21bbcb8: ; 0x021BBCB8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021BBD90 ; =0x0000118C
	add r5, r3, #0
	str r0, [sp]
	add r7, r2, #0
	ldr r4, [r5, r6]
	bl sub_02027ACC
	cmp r0, #0
	bne _021BBCD0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BBCD0:
	add r0, r6, #0
	sub r0, #0xe8
	ldr r0, [r5, r0]
	bl sub_0203A24C
	sub r6, #0xe4
	ldr r0, [r5, r6]
	bl sub_0203A24C
	mov r6, #0x95
	lsl r6, r6, #4
	add r0, r5, r6
	bl ovy194_21c4cfc
	add r0, r6, #0
	add r0, #0x14
	add r0, r5, r0
	bl ovy194_21c4cfc
	add r6, #0x28
	add r0, r5, r6
	bl ovy194_21c4cfc
	add r0, r5, #0
	bl ovy194_21c4b88
	add r0, r5, #0
	bl ovy194_21bb4b4
	bl sub_0202D7DC
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BBD20
	mov r0, #3
	lsl r0, r0, #0xa
	bl sub_02040C64
_021BBD20:
	add r0, r5, #0
	bl ovy194_21c1fc0
	ldr r6, _021BBD94 ; =0x000005DC
	ldr r0, [r5, r6]
	bl sub_0203A24C
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0203A24C
	ldr r0, _021BBD98 ; =0x000009C8
	ldr r0, [r5, r0]
	bl sub_0203A6A8
	mov r1, #1
	cmp r7, #0
	bne _021BBD46
	mov r1, #0
_021BBD46:
	add r0, r5, #0
	bl ovy194_21bb364
	add r0, r5, #0
	bl ovy194_21bb1bc
	add r0, r5, #0
	bl ovy194_21bb218
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x1f
	bl sub_0203A1D0
	mov r0, #0x91
	bl sub_0203A1D0
	cmp r4, #5
	bge _021BBD7A
	ldr r0, _021BBD9C ; =0x000000BD
	bl sub_0203CDC8
	ldr r0, _021BBDA0 ; =0x0000008B
	bl sub_0203CDC8
_021BBD7A:
	cmp r4, #0
	beq _021BBD82
	cmp r4, #4
	bne _021BBD86
_021BBD82:
	ldr r0, _021BBDA4 ; =0x000000C0
	b _021BBD88
_021BBD86:
	ldr r0, _021BBDA8 ; =0x000000C1
_021BBD88:
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBD90: .word 0x0000118C
_021BBD94: .word 0x000005DC
_021BBD98: .word 0x000009C8
_021BBD9C: .word 0x000000BD
_021BBDA0: .word 0x0000008B
_021BBDA4: .word 0x000000C0
_021BBDA8: .word 0x000000C1
	thumb_func_end ovy194_21bbcb8

	thumb_func_start ovy194_21bbdac
ovy194_21bbdac: ; 0x021BBDAC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021BBDFE
	bl ovy194_21c3bc0
	add r1, r0, #2
	ldr r0, _021BBE00 ; =0x00000634
	ldr r0, [r4, r0]
	cmp r1, r0
	blt _021BBDC4
	sub r1, r1, r0
_021BBDC4:
	ldr r0, _021BBE04 ; =0x0000107C
	ldr r3, _021BBE08 ; =0x021C6DE0
	ldrsh r0, [r4, r0]
	ldr r2, [r3]
	cmp r0, r2
	bne _021BBDD4
	mov r1, #2
	b _021BBDF0
_021BBDD4:
	mov r2, #0x63
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	cmp r0, r2
	bne _021BBDF0
	ldr r0, _021BBE0C ; =0x00000F78
	mov r1, #0
	ldr r2, [r4, r0]
	cmp r2, #3
	blt _021BBDF0
	mov r2, #2
	str r2, [r4, r0]
_021BBDF0:
	ldr r0, _021BBE10 ; =0x00000F74
	str r1, [r4, r0]
	mov r1, #0
	mov r0, #0x42
	mvn r1, r1
	lsl r0, r0, #6
	strh r1, [r4, r0]
_021BBDFE:
	pop {r4, pc}
	.align 2, 0
_021BBE00: .word 0x00000634
_021BBE04: .word 0x0000107C
_021BBE08: .word 0x021C6DE0
_021BBE0C: .word 0x00000F78
_021BBE10: .word 0x00000F74
	thumb_func_end ovy194_21bbdac

	thumb_func_start ovy194_21bbe14
ovy194_21bbe14: ; 0x021BBE14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BBE2E
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02040624
_021BBE2E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21bbe14

	thumb_func_start ovy194_21bbe30
ovy194_21bbe30: ; 0x021BBE30
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D554
	cmp r0, #0
	beq _021BBE48
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy194_21c56f8
	pop {r4, pc}
_021BBE48:
	ldr r0, _021BBE5C ; =0x000010A0
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021BBE5A
	add r0, r4, #0
	bl ovy194_21c56f8
_021BBE5A:
	pop {r4, pc}
	.align 2, 0
_021BBE5C: .word 0x000010A0
	thumb_func_end ovy194_21bbe30

	thumb_func_start ovy194_21bbe60
ovy194_21bbe60: ; 0x021BBE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CD88
	str r0, [sp, #4]
	ldr r0, _021BBEDC ; =0x0000118C
	ldr r0, [r6, r0]
	cmp r0, #3
	bne _021BBED6
	add r0, r5, #0
	bl sub_0201CC98
	ldr r7, _021BBEE0 ; =0x021C651C
	str r0, [sp]
_021BBE88:
	lsl r1, r4, #2
	ldr r1, [r7, r1]
	add r0, r5, #0
	mov r2, #0
	bl sub_0201CD88
	add r6, r0, #0
	cmp r6, #1
	beq _021BBEA0
	add r4, r4, #1
	cmp r4, #0xf
	blo _021BBE88
_021BBEA0:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0201CCC0
	cmp r6, #0
	beq _021BBEB2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BBEB2:
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201F07C
	cmp r0, #0
	beq _021BBEC6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BBEC6:
	add r0, r5, #0
	bl sub_0201CE8C
	cmp r0, #0
	beq _021BBED6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BBED6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBEDC: .word 0x0000118C
_021BBEE0: .word 0x021C651C
	thumb_func_end ovy194_21bbe60

	thumb_func_start ovy194_21bbee4
ovy194_21bbee4: ; 0x021BBEE4
	push {r3, r4, r5, lr}
	ldr r5, _021BBF14 ; =0x000011F1
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #0
	beq _021BBF02
	bl sub_021B783C
	cmp r0, #0
	beq _021BBEFE
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	b _021BBF00
_021BBEFE:
	mov r0, #0
_021BBF00:
	strb r0, [r4, r5]
_021BBF02:
	ldr r0, _021BBF14 ; =0x000011F1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021BBF0E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BBF0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BBF14: .word 0x000011F1
	thumb_func_end ovy194_21bbee4

	thumb_func_start ovy194_21bbf18
ovy194_21bbf18: ; 0x021BBF18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	ldr r7, _021BBF58 ; =0x00000FD8
	str r0, [sp, #4]
_021BBF24:
	ldr r1, [sp, #4]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r2
_021BBF32:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021BBF44
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r7]
_021BBF44:
	add r4, r4, #1
	cmp r4, #3
	blt _021BBF32
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _021BBF24
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBF58: .word 0x00000FD8
	thumb_func_end ovy194_21bbf18

	thumb_func_start ovy194_21bbf5c
ovy194_21bbf5c: ; 0x021BBF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021BBFBC ; =0x00000FD8
	ldr r7, _021BBFBC ; =0x00000FD8
	str r0, [sp, #8]
	sub r0, #0x34
	str r0, [sp, #8]
	sub r7, #0x1c
_021BBF72:
	ldr r1, [sp, #4]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r2
_021BBF80:
	lsl r0, r4, #2
	add r5, r6, r0
	mov r1, #0
	ldr r0, [sp, #8]
	mvn r1, r1
	str r1, [r5, r0]
	add r0, r1, #0
	str r0, [r5, r7]
	ldr r0, _021BBFBC ; =0x00000FD8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BBFA8
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, _021BBFBC ; =0x00000FD8
	mov r1, #0
	ldr r0, [r5, r0]
	blx MI_CpuFill8
_021BBFA8:
	add r4, r4, #1
	cmp r4, #3
	blt _021BBF80
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _021BBF72
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BBFBC: .word 0x00000FD8
	thumb_func_end ovy194_21bbf5c

	thumb_func_start ovy194_21bbfc0
ovy194_21bbfc0: ; 0x021BBFC0
	push {r4, r5, r6, r7}
	ldr r3, _021BBFEC ; =0x00000FBC
	mov r2, #0
	add r4, r3, #0
	mov r1, #0
	sub r5, r2, #1
	sub r4, #0x18
_021BBFCE:
	lsl r6, r1, #2
	add r7, r0, r6
	ldr r6, [r7, r4]
	cmp r6, r5
	beq _021BBFE0
	ldr r6, [r7, r3]
	cmp r6, r5
	beq _021BBFE0
	add r2, r2, #1
_021BBFE0:
	add r1, r1, #1
	cmp r1, #3
	blt _021BBFCE
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021BBFEC: .word 0x00000FBC
	thumb_func_end ovy194_21bbfc0

	thumb_func_start ovy194_21bbff0
ovy194_21bbff0: ; 0x021BBFF0
	push {r4, lr}
	ldr r1, _021BC02C ; =0x0000118C
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #3
	bne _021BC026
	ldr r1, _021BC030 ; =0x00000648
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021BC00A
	mov r1, #0x9b
	bl ovy194_21c1788
_021BC00A:
	add r0, r4, #0
	bl ovy194_21c1884
	cmp r0, #0
	beq _021BC026
	add r0, r4, #0
	bl ovy194_21b772c
	ldr r1, _021BC034 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
	mov r0, #1
	pop {r4, pc}
_021BC026:
	mov r0, #0
	pop {r4, pc}
	nop
_021BC02C: .word 0x0000118C
_021BC030: .word 0x00000648
_021BC034: .word ovy194_21b8194
	thumb_func_end ovy194_21bbff0

	thumb_func_start ovy194_21bc038
ovy194_21bc038: ; 0x021BC038
	push {r3, lr}
	ldr r3, _021BC048 ; =0x0000118C
	ldr r3, [r0, r3]
	cmp r3, #3
	bne _021BC046
	bl ovy194_21c1820
_021BC046:
	pop {r3, pc}
	.align 2, 0
_021BC048: .word 0x0000118C
	thumb_func_end ovy194_21bc038

	thumb_func_start ovy194_21bc04c
ovy194_21bc04c: ; 0x021BC04C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021BC094 ; =0x0000082C
	add r4, r0, #0
	ldr r0, [r4, r7]
	bl sub_02017364
	add r6, r0, #0
	add r0, r4, #0
	bl ovy194_21bbfc0
	add r5, r0, #0
	ldr r0, [r4, r7]
	bl sub_0201735C
	bl sub_0201FDF8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02007C58
	add r0, r4, r0
	cmp r0, #2
	bne _021BC082
	cmp r5, #1
	blt _021BC082
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BC082:
	cmp r0, #2
	ble _021BC08E
	cmp r5, #2
	blt _021BC08E
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BC08E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BC094: .word 0x0000082C
	thumb_func_end ovy194_21bc04c

	thumb_func_start ovy194_21bc098
ovy194_21bc098: ; 0x021BC098
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BC0CA
	ldr r1, _021BC0E8 ; =0x00000FBC
	mov r0, #0
	add r2, r1, #0
	sub r3, r0, #1
	sub r2, #0x18
_021BC0AE:
	lsl r5, r0, #2
	add r6, r4, r5
	ldr r5, [r6, r2]
	cmp r5, r3
	beq _021BC0C2
	ldr r5, [r6, r1]
	cmp r5, r3
	beq _021BC0C2
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BC0C2:
	add r0, r0, #1
	cmp r0, #3
	blt _021BC0AE
	b _021BC0E2
_021BC0CA:
	ldr r0, _021BC0EC ; =0x00000F84
	mov r1, #0
	ldr r2, [r4, r0]
	mvn r1, r1
	cmp r2, r1
	beq _021BC0E2
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _021BC0E2
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BC0E2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BC0E8: .word 0x00000FBC
_021BC0EC: .word 0x00000F84
	thumb_func_end ovy194_21bc098

	thumb_func_start ovy194_21bc0f0
ovy194_21bc0f0: ; 0x021BC0F0
	push {r4, r5, r6, r7}
	ldr r4, _021BC120 ; =0x00000FBC
	mov r3, #0
	add r5, r4, #0
	sub r5, #0x18
_021BC0FA:
	lsl r6, r3, #2
	add r7, r0, r6
	ldr r6, [r7, r5]
	cmp r2, r6
	bne _021BC110
	ldr r6, [r7, r4]
	cmp r1, r6
	bne _021BC110
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
_021BC110:
	add r3, r3, #1
	cmp r3, #3
	blt _021BC0FA
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021BC120: .word 0x00000FBC
	thumb_func_end ovy194_21bc0f0

	thumb_func_start ovy194_21bc124
ovy194_21bc124: ; 0x021BC124
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	mov r2, #0xfb
	add r5, r0, #0
	lsl r4, r1, #2
	lsl r2, r2, #4
	add r3, r5, r4
	add r0, r2, #0
	str r1, [r3, r2]
	add r2, #0x34
	add r0, #0x18
	add r6, r5, r2
	str r1, [r3, r0]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _021BC15C
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021BC16C ; =0x00000125
	ldr r3, _021BC170 ; =0x021C6EE0
	str r0, [sp]
	ldr r0, _021BC174 ; =0x000005F4
	mov r2, #1
	ldrh r0, [r5, r0]
	bl sub_0203A1FC
	str r0, [r6, r4]
_021BC15C:
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r1, [r6, r4]
	add r0, r7, #0
	blx MI_CpuCopy8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC16C: .word 0x00000125
_021BC170: .word 0x021C6EE0
_021BC174: .word 0x000005F4
	thumb_func_end ovy194_21bc124

	thumb_func_start ovy194_21bc178
ovy194_21bc178: ; 0x021BC178
	push {r4, r5, r6, r7}
	mov r5, #0xc
	mul r5, r1
	add r1, r0, r5
	ldr r0, _021BC1C4 ; =0x00000FBC
	mov r4, #0
	add r5, r0, #0
	sub r5, #0x18
_021BC188:
	lsl r6, r4, #2
	add r7, r1, r6
	ldr r6, [r7, r5]
	cmp r2, r6
	bne _021BC1A0
	ldr r6, [r7, r0]
	cmp r3, r6
	bne _021BC1A0
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_021BC1A0:
	add r4, r4, #1
	cmp r4, #3
	blt _021BC188
	mov r0, #0
	ldr r2, _021BC1C8 ; =0x00000FA4
	sub r3, r0, #1
_021BC1AC:
	lsl r4, r0, #2
	add r4, r1, r4
	ldr r4, [r4, r2]
	cmp r4, r3
	beq _021BC1BE
	add r0, r0, #1
	cmp r0, #3
	blt _021BC1AC
	mov r0, #2
_021BC1BE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021BC1C4: .word 0x00000FBC
_021BC1C8: .word 0x00000FA4
	thumb_func_end ovy194_21bc178

	thumb_func_start ovy194_21bc1cc
ovy194_21bc1cc: ; 0x021BC1CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	str r0, [sp, #4]
	add r1, r3, #0
	ldr r0, [sp, #8]
	mov r3, #0xc
	mul r3, r0
	ldr r0, [sp, #4]
	ldr r7, _021BC288 ; =0x00000FBC
	add r0, r0, r3
	add r3, r7, #0
	mov r6, #0
	sub r3, #0x18
_021BC1E8:
	lsl r4, r6, #2
	add r5, r0, r4
	ldr r4, [r5, r3]
	cmp r2, r4
	bne _021BC200
	ldr r4, [r5, r7]
	cmp r1, r4
	bne _021BC200
	mov r0, #0
	add sp, #0xc
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021BC200:
	add r6, r6, #1
	cmp r6, #3
	blt _021BC1E8
	mov r5, #0
	ldr r7, _021BC28C ; =0x00000FA4
	sub r3, r5, #1
_021BC20C:
	lsl r4, r5, #2
	add r6, r0, r4
	ldr r6, [r6, r7]
	cmp r6, r3
	beq _021BC21A
	cmp r5, #2
	bne _021BC278
_021BC21A:
	ldr r0, [sp, #8]
	mov r3, #0xc
	add r6, r0, #0
	ldr r0, [sp, #4]
	mul r6, r3
	add r0, r0, r6
	add r3, r0, r4
	ldr r0, _021BC28C ; =0x00000FA4
	str r2, [r3, r0]
	add r2, r0, #0
	add r2, #0x18
	str r1, [r3, r2]
	ldr r1, [sp, #4]
	add r0, #0x34
	add r0, r1, r0
	add r6, r0, r6
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _021BC25A
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021BC290 ; =0x0000014F
	ldr r2, _021BC294 ; =0x000005F4
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _021BC298 ; =0x021C6EE0
	ldrh r0, [r0, r2]
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r6, r4]
_021BC25A:
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r4]
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x20]
	bl ovy194_21be6c0
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_021BC278:
	add r5, r5, #1
	cmp r5, #3
	blt _021BC20C
	mov r0, #0
	mvn r0, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BC288: .word 0x00000FBC
_021BC28C: .word 0x00000FA4
_021BC290: .word 0x0000014F
_021BC294: .word 0x000005F4
_021BC298: .word 0x021C6EE0
	thumb_func_end ovy194_21bc1cc

	thumb_func_start ovy194_21bc29c
ovy194_21bc29c: ; 0x021BC29C
	push {r4, r5, r6, lr}
	lsl r4, r2, #2
	mov r2, #0xc
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	ldr r5, _021BC2CC ; =0x00000FA4
	add r6, r1, r4
	sub r2, #0xd
	add r1, r5, #0
	str r2, [r6, r5]
	add r5, #0x34
	add r1, #0x18
	add r0, r0, r5
	str r2, [r6, r1]
	add r5, r0, r3
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BC2C6
	bl sub_0203A24C
_021BC2C6:
	mov r0, #0
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BC2CC: .word 0x00000FA4
	thumb_func_end ovy194_21bc29c

	thumb_func_start ovy194_21bc2d0
ovy194_21bc2d0: ; 0x021BC2D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021BC32C ; =0x000005F4
	mov r0, #7
	ldrh r1, [r5, r1]
	bl sub_0204AA30
	add r7, r0, #0
	mov r4, #0x60
	cmp r6, #1
	beq _021BC2EA
	mov r4, #0
_021BC2EA:
	bl sub_02021114
	add r1, r0, #0
	ldr r0, _021BC32C ; =0x000005F4
	lsl r3, r4, #0x10
	ldrh r0, [r5, r0]
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204BC48
	mov r4, #0x89
	lsl r4, r4, #4
	str r0, [r5, r4]
	bl sub_02021154
	add r6, r0, #0
	bl sub_02021190
	ldr r3, _021BC32C ; =0x000005F4
	add r2, r0, #0
	ldrh r3, [r5, r3]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0204BDE0
	add r4, #0x30
	str r0, [r5, r4]
	add r0, r7, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC32C: .word 0x000005F4
	thumb_func_end ovy194_21bc2d0

	thumb_func_start ovy194_21bc330
ovy194_21bc330: ; 0x021BC330
	push {r3, r4, r5, lr}
	mov r5, #0x89
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC346
	bl sub_0204BCD0
	mov r0, #0
	str r0, [r4, r5]
_021BC346:
	mov r5, #0x23
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC358
	bl sub_0204BE64
	mov r0, #0
	str r0, [r4, r5]
_021BC358:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21bc330

	thumb_func_start ovy194_21bc35c
ovy194_21bc35c: ; 0x021BC35C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #8]
	bl sub_02040440
	ldr r1, _021BC428 ; =0x00000F88
	ldr r0, _021BC42C ; =0x00000828
	str r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	sub r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r5, #0
	bl ovy194_21b7aac
	add r7, r0, #0
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	str r7, [sp]
	beq _021BC3E8
	ldr r3, [sp, #8]
	add r0, r5, #0
	mov r4, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy194_21bc1cc
	add r6, r0, #0
	sub r0, r4, #1
	cmp r6, r0
	beq _021BC3F6
	lsl r1, r6, #2
	add r2, r5, r1
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, #0x50
	str r1, [sp, #0xc]
	ldr r1, [r2, r1]
	ldr r2, _021BC430 ; =0x00000C07
	add r2, r6, r2
	bl ovy194_21be790
	cmp r0, #0
	bne _021BC3D4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21bc29c
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC3D4:
	bl sub_0201C2C8
	cmp r0, #0
	bls _021BC3F6
_021BC3DC:
	add r4, r4, #1
	bl sub_0201C2C8
	cmp r4, r0
	blo _021BC3DC
	b _021BC3F6
_021BC3E8:
	ldr r3, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy194_21bc1cc
	add r6, r0, #0
_021BC3F6:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021BC40A
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BC40A:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	str r1, [sp, #4]
	bl ovy194_21c5138
	add r0, r7, #0
	bl sub_0203A24C
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC428: .word 0x00000F88
_021BC42C: .word 0x00000828
_021BC430: .word 0x00000C07
	thumb_func_end ovy194_21bc35c

	thumb_func_start ovy194_21bc434
ovy194_21bc434: ; 0x021BC434
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r0, _021BC698 ; =0x021C6508
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [sp, #0x44]
	str r0, [sp, #0x48]
	bl sub_0202D7E0
	mov r1, #0x20
	mov r3, #0x1a
	ldr r4, _021BC69C ; =0x000005F4
	str r1, [sp]
	ldrh r1, [r5, r4]
	mov r2, #0
	lsl r3, r3, #4
	str r1, [sp, #4]
	mov r1, #0x1f
	bl sub_0204B0B8
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BC482
	bl sub_02048210
	sub r4, #0x1c
	ldr r0, [r5, r4]
	bl sub_02048210
_021BC482:
	mov r0, #2
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_020480C0
	add r6, r0, #0
	ldr r0, _021BC6A0 ; =0x000005D4
	mov r1, #0xf
	str r6, [r5, r0]
	mov r0, #0xe
	mov r2, #0
	mov r4, #0xf
	bl sub_020232E8
	ldr r0, _021BC6A4 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _021BC516
	ldr r7, _021BC6A8 ; =0x00001050
	sub r4, #0x10
	ldr r0, [r5, r7]
	cmp r0, r4
	beq _021BC516
	mov r4, #0x72
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #0x10
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x86
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x10
	ldr r3, [r5, r3]
	mov r1, #8
	mov r2, #2
	bl sub_02021CFC
	add r2, r4, #0
	ldr r1, [r5, r7]
	add r2, #0x10
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	add r1, #0x7c
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r4, #0x10
	str r1, [sp]
	ldr r3, [r5, r4]
	mov r1, #0x88
	mov r2, #2
	bl sub_02021CFC
_021BC516:
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	mov r0, #8
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r7, #0
	mov r0, #3
	mov r1, #0
	mov r2, #3
	mov r3, #0x20
	str r7, [sp, #8]
	bl sub_020480C0
	ldr r1, _021BC6AC ; =0x000005D8
	str r0, [sp, #0xc]
	str r0, [r5, r1]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x40]
	add r0, #0x10
	str r0, [sp, #0x40]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x3c]
	add r0, #8
	str r0, [sp, #0x3c]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x38]
	add r0, #0x10
	str r0, [sp, #0x38]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x34]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	add r0, #0x14
	str r0, [sp, #0x30]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x24]
	add r0, #0x10
	str r0, [sp, #0x24]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, #0x14
	str r0, [sp, #0x20]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, _021BC6A4 ; =0x0000118C
	add r0, r5, r0
	str r0, [sp, #0x14]
_021BC5AE:
	lsl r4, r7, #2
	add r0, sp, #0x44
	ldr r0, [r0, r4]
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021BC67A
	ldr r0, _021BC6A4 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _021BC5D4
	ldr r0, _021BC6B0 ; =0x00001048
	add r1, r5, r4
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021BC5D4
	mov r6, #0x76
	b _021BC5D6
_021BC5D4:
	mov r6, #0x81
_021BC5D6:
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	ldr r0, [r0]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020245A8
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, sp, #0x4c
	ldr r0, [r0, r4]
	lsl r6, r0, #3
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	ldr r1, [r5, r1]
	mov r2, #2
	str r1, [sp]
	lsl r1, r6, #0x10
	ldr r3, [r5, r3]
	asr r1, r1, #0x10
	bl sub_02021CFC
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	cmp r0, #3
	bne _021BC67A
	ldr r0, _021BC6B0 ; =0x00001048
	add r4, r5, r4
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021BC67A
	mov r0, #3
	mov r1, #4
	mov r2, #0
	bl sub_020232E8
	ldr r1, _021BC6B0 ; =0x00001048
	mov r0, #0x72
	ldr r2, [sp, #0x40]
	lsl r0, r0, #4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, #0x77
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	ldr r1, [sp, #0x3c]
	ldr r3, [sp, #0x38]
	ldr r1, [r5, r1]
	mov r2, #0x22
	str r1, [sp]
	add r1, r6, #4
	lsl r1, r1, #0x10
	ldr r3, [r5, r3]
	asr r1, r1, #0x10
	bl sub_02021CFC
_021BC67A:
	add r7, r7, #1
	cmp r7, #2
	blt _021BC5AE
	ldr r0, [sp, #0xc]
	bl sub_02048244
	ldr r0, [sp, #0xc]
	bl sub_0204826C
	mov r0, #3
	bl sub_02045B7C
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021BC698: .word 0x021C6508
_021BC69C: .word 0x000005F4
_021BC6A0: .word 0x000005D4
_021BC6A4: .word 0x0000118C
_021BC6A8: .word 0x00001050
_021BC6AC: .word 0x000005D8
_021BC6B0: .word 0x00001048
	thumb_func_end ovy194_21bc434

	thumb_func_start ovy194_21bc6b4
ovy194_21bc6b4: ; 0x021BC6B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r1, _021BC778 ; =0x021C6500
	str r2, [sp, #0xc]
	ldr r2, [r1]
	ldr r1, [r1, #4]
	add r5, r0, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r3, #0
	bne _021BC6E6
	ldr r1, _021BC77C ; =0x000011E8
	add r2, r5, r4
	ldrb r2, [r2, r1]
	cmp r2, #3
	beq _021BC772
	add r1, r1, #2
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021BC772
	bl sub_021B7808
	cmp r0, #0
	beq _021BC772
_021BC6E6:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021BC780 ; =0x000005BC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BC6F6
	bl sub_02048210
_021BC6F6:
	ldr r0, _021BC780 ; =0x000005BC
	lsl r6, r4, #2
	add r1, sp, #0x14
	add r7, r5, r0
	mov r0, #2
	ldr r1, [r1, r6]
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #3
	lsr r1, r1, #0x18
	mov r2, #0x10
	mov r3, #0xc
	bl sub_020480C0
	str r0, [sp, #0x10]
	str r0, [r7, r6]
	mov r0, #5
	mov r1, #6
	mov r2, #0
	bl sub_020232E8
	mov r6, #0x72
	lsl r6, r6, #4
	add r2, r6, #0
	ldr r1, [sp, #0xc]
	add r2, #0x10
	add r1, #0x73
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	str r1, [sp, #0xc]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x10]
	bl sub_020484F4
	add r1, r6, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r6, #0x10
	str r1, [sp]
	ldr r3, [r5, r6]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
	ldr r0, [sp, #0x10]
	bl sub_02048244
	ldr r0, [sp, #0x10]
	bl sub_0204826C
	mov r0, #3
	bl sub_02045B7C
	ldr r1, _021BC77C ; =0x000011E8
	add r2, r5, r4
	mov r0, #3
	strb r0, [r2, r1]
_021BC772:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BC778: .word 0x021C6500
_021BC77C: .word 0x000011E8
_021BC780: .word 0x000005BC
	thumb_func_end ovy194_21bc6b4

	thumb_func_start ovy194_21bc784
ovy194_21bc784: ; 0x021BC784
	push {r3, r4, r5, lr}
	ldr r5, _021BC7EC ; =0x000005BC
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC79E
	bl sub_020484B4
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BC79E:
	mov r5, #0x17
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC7B6
	bl sub_020484B4
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BC7B6:
	ldr r5, _021BC7F0 ; =0x000005D4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC7CC
	bl sub_020484B4
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BC7CC:
	ldr r5, _021BC7F4 ; =0x000005D8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC7E2
	bl sub_020484B4
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BC7E2:
	mov r0, #3
	bl sub_02045B7C
	pop {r3, r4, r5, pc}
	nop
_021BC7EC: .word 0x000005BC
_021BC7F0: .word 0x000005D4
_021BC7F4: .word 0x000005D8
	thumb_func_end ovy194_21bc784

	thumb_func_start ovy194_21bc7f8
ovy194_21bc7f8: ; 0x021BC7F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _021BC870 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BC86C
	ldr r0, [r5, r4]
	bl sub_0202DC00
	add r6, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r1, #0
	str r1, [r5, r4]
	cmp r6, #0
	beq _021BC82E
	cmp r6, #1
	beq _021BC852
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021BC82E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	sub r4, #0x58
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	ldr r1, _021BC874 ; =ovy194_21bd2c0
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021BC852:
	add r0, r5, #0
	bl ovy194_21b76e0
	add r0, r5, #0
	bl ovy194_21bd97c
	add r0, r5, #0
	bl ovy194_21bbe30
	ldr r1, _021BC878 ; =ovy194_21bd7cc
	add r0, r5, #0
	bl sub_021B7BE4
_021BC86C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BC870: .word 0x0000064C
_021BC874: .word ovy194_21bd2c0
_021BC878: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bc7f8

	thumb_func_start ovy194_21bc87c
ovy194_21bc87c: ; 0x021BC87C
	push {r4, lr}
	sub sp, #8
	ldr r2, _021BC8B0 ; =0x021C64F8
	add r1, sp, #0
	ldr r3, [r2]
	ldr r2, [r2, #4]
	add r4, r0, #0
	str r2, [sp, #4]
	mov r2, #2
	str r3, [sp]
	bl ovy194_21c0214
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r1, _021BC8B4 ; =ovy194_21bc7f8
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #8
	pop {r4, pc}
	nop
_021BC8B0: .word 0x021C64F8
_021BC8B4: .word ovy194_21bc7f8
	thumb_func_end ovy194_21bc87c

	thumb_func_start ovy194_21bc8b8
ovy194_21bc8b8: ; 0x021BC8B8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BC8E2
	bl sub_02040440
	mov r1, #0x19
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BC8E2
	add r0, r4, #0
	bl ovy194_21bbff0
	pop {r4, pc}
_021BC8E2:
	add r0, r4, #0
	bl ovy194_21bfe9c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy194_21bc038
	add r0, r4, #0
	bl ovy194_21b76e0
	add r0, r4, #0
	bl ovy194_21bbe30
	ldr r1, _021BC908 ; =ovy194_21bd7cc
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BC908: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bc8b8

	thumb_func_start ovy194_21bc90c
ovy194_21bc90c: ; 0x021BC90C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BC932
	bl sub_02040440
	mov r1, #0x19
	add r2, r4, #0
	bl ovy194_21bbe14
	ldr r1, _021BC934 ; =ovy194_21bc8b8
	add r0, r4, #0
	bl sub_021B7BE4
_021BC932:
	pop {r4, pc}
	.align 2, 0
_021BC934: .word ovy194_21bc8b8
	thumb_func_end ovy194_21bc90c

	thumb_func_start ovy194_21bc938
ovy194_21bc938: ; 0x021BC938
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02040440
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BC992
	bl sub_0203DEFC
	add r5, r0, #0
	beq _021BC958
	mov r0, #0
	bl sub_0203D564
_021BC958:
	cmp r5, #0
	bne _021BC96E
	bl sub_0203DA48
	add r5, r0, #0
	beq _021BC96A
	mov r0, #1
	bl sub_0203D564
_021BC96A:
	cmp r5, #0
	beq _021BC992
_021BC96E:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r1, _021BC994 ; =ovy194_21bc90c
	add r0, r4, #0
	bl sub_021B7BE4
_021BC992:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BC994: .word ovy194_21bc90c
	thumb_func_end ovy194_21bc938

	thumb_func_start ovy194_21bc998
ovy194_21bc998: ; 0x021BC998
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	mov r0, #1
	sub r6, r0, r7
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BCA88
	add r0, r5, #0
	bl ovy194_21bbee4
	cmp r0, #0
	beq _021BCA88
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BC9E0
	bl sub_02040440
	mov r1, #0x1d
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BC9E0
	add r0, r5, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021BC9E0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy194_21bc038
	ldr r1, _021BCA8C ; =0x000011E0
	add r0, r5, r7
	ldrb r0, [r0, r1]
	cmp r0, #0xd
	bne _021BCA12
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #0xd
	bne _021BCA12
	bl sub_02040440
	mov r1, #0xd
	add r2, r5, #0
	bl ovy194_21bbe14
	ldr r1, _021BCA90 ; =ovy194_21b94c0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BCA12:
	ldr r1, _021BCA8C ; =0x000011E0
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #5
	bne _021BCA20
_021BCA1C:
	mov r4, #0x61
	b _021BCA60
_021BCA20:
	cmp r0, #5
	bne _021BCA28
	mov r4, #0x62
	b _021BCA60
_021BCA28:
	cmp r1, #7
	bne _021BCA30
_021BCA2C:
	mov r4, #0x63
	b _021BCA60
_021BCA30:
	cmp r0, #7
	bne _021BCA38
_021BCA34:
	mov r4, #0x64
	b _021BCA60
_021BCA38:
	cmp r1, #8
	bne _021BCA3E
	b _021BCA34
_021BCA3E:
	cmp r0, #8
	bne _021BCA44
	b _021BCA2C
_021BCA44:
	cmp r1, #6
	bne _021BCA4A
	b _021BCA1C
_021BCA4A:
	cmp r0, #6
	bne _021BCA52
	mov r4, #0x70
	b _021BCA60
_021BCA52:
	cmp r1, #0xe
	bne _021BCA5A
	mov r4, #0x98
	b _021BCA60
_021BCA5A:
	cmp r0, #0xe
	bne _021BCA60
	mov r4, #0x97
_021BCA60:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r0, _021BCA8C ; =0x000011E0
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r1, _021BCA94 ; =ovy194_21bc938
	add r0, r5, #0
	bl sub_021B7BE4
_021BCA88:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BCA8C: .word 0x000011E0
_021BCA90: .word ovy194_21b94c0
_021BCA94: .word ovy194_21bc938
	thumb_func_end ovy194_21bc998

	thumb_func_start ovy194_21bca98
ovy194_21bca98: ; 0x021BCA98
	push {r3, r4, r5, lr}
	mov r1, #0xd
	add r5, sp, #0
	add r4, r0, #0
	strb r1, [r5]
	bl ovy194_21b8234
	cmp r0, #0
	beq _021BCAAE
	mov r0, #5
	b _021BCAD6
_021BCAAE:
	add r0, r4, #0
	bl ovy194_21b8330
	cmp r0, #0
	beq _021BCABC
	mov r0, #7
	b _021BCAD6
_021BCABC:
	add r0, r4, #0
	bl ovy194_21b8350
	cmp r0, #0
	beq _021BCACA
	mov r0, #8
	b _021BCAD6
_021BCACA:
	add r0, r4, #0
	bl ovy194_21b8370
	cmp r0, #0
	beq _021BCAD8
	mov r0, #6
_021BCAD6:
	strb r0, [r5]
_021BCAD8:
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BCB00
	bl sub_02040440
	mov r1, #0x1d
	add r2, r4, #0
	bl ovy194_21bbe14
	ldr r1, _021BCB04 ; =ovy194_21bc998
	add r0, r4, #0
	bl sub_021B7BE4
_021BCB00:
	pop {r3, r4, r5, pc}
	nop
_021BCB04: .word ovy194_21bc998
	thumb_func_end ovy194_21bca98

	thumb_func_start ovy194_21bcb08
ovy194_21bcb08: ; 0x021BCB08
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BCB28
	ldr r0, _021BCB54 ; =0x000011E0
	mov r1, #0xd
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	ldr r1, _021BCB58 ; =ovy194_21bc998
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BCB28:
	bl sub_02040440
	mov r1, #0x1e
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BCB40
	add r0, r4, #0
	bl ovy194_21bbff0
	pop {r4, pc}
_021BCB40:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy194_21bc038
	ldr r1, _021BCB5C ; =ovy194_21bca98
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BCB54: .word 0x000011E0
_021BCB58: .word ovy194_21bc998
_021BCB5C: .word ovy194_21bca98
	thumb_func_end ovy194_21bcb08

	thumb_func_start ovy194_21bcb60
ovy194_21bcb60: ; 0x021BCB60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0xe
	add r0, sp, #0
	strb r1, [r0]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BCB94
	bl sub_02040440
	mov r1, #0x1d
	add r2, r4, #0
	bl ovy194_21bbe14
	ldr r1, _021BCB98 ; =ovy194_21bc998
	add r0, r4, #0
	bl sub_021B7BE4
_021BCB94:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BCB98: .word ovy194_21bc998
	thumb_func_end ovy194_21bcb60

	thumb_func_start ovy194_21bcb9c
ovy194_21bcb9c: ; 0x021BCB9C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BCBBC
	ldr r0, _021BCBE8 ; =0x000011E0
	mov r1, #0xe
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	ldr r1, _021BCBEC ; =ovy194_21bc998
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BCBBC:
	bl sub_02040440
	mov r1, #0x1e
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BCBD4
	add r0, r4, #0
	bl ovy194_21bbff0
	pop {r4, pc}
_021BCBD4:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy194_21bc038
	ldr r1, _021BCBF0 ; =ovy194_21bcb60
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BCBE8: .word 0x000011E0
_021BCBEC: .word ovy194_21bc998
_021BCBF0: .word ovy194_21bcb60
	thumb_func_end ovy194_21bcb9c

	thumb_func_start ovy194_21bcbf4
ovy194_21bcbf4: ; 0x021BCBF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x1e
	add r2, r4, #0
	bl ovy194_21bbe14
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r0, _021BCC30 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BCC34 ; =ovy194_21bcb08
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BCC30: .word 0x000011F1
_021BCC34: .word ovy194_21bcb08
	thumb_func_end ovy194_21bcbf4

	thumb_func_start ovy194_21bcc38
ovy194_21bcc38: ; 0x021BCC38
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x1e
	add r2, r4, #0
	bl ovy194_21bbe14
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r0, _021BCC74 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BCC78 ; =ovy194_21bcb9c
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BCC74: .word 0x000011F1
_021BCC78: .word ovy194_21bcb9c
	thumb_func_end ovy194_21bcc38

	thumb_func_start ovy194_21bcc7c
ovy194_21bcc7c: ; 0x021BCC7C
	push {r4, r5, r6, lr}
	ldr r6, _021BCCC4 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BCCC0
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r0, #0
	str r0, [r5, r6]
	cmp r4, #0
	beq _021BCCAE
	cmp r4, #1
	beq _021BCCB8
	pop {r4, r5, r6, pc}
_021BCCAE:
	ldr r1, _021BCCC8 ; =ovy194_21bcbf4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BCCB8:
	ldr r1, _021BCCCC ; =ovy194_21bcc38
	add r0, r5, #0
	bl sub_021B7BE4
_021BCCC0:
	pop {r4, r5, r6, pc}
	nop
_021BCCC4: .word 0x0000064C
_021BCCC8: .word ovy194_21bcbf4
_021BCCCC: .word ovy194_21bcc38
	thumb_func_end ovy194_21bcc7c

	thumb_func_start ovy194_21bccd0
ovy194_21bccd0: ; 0x021BCCD0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BCD0E
	ldr r0, _021BCD14 ; =0x021C64E8
	add r1, sp, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	bl ovy194_21c0214
	mov r0, #0x1f
	bl sub_02046D38
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r1, _021BCD18 ; =ovy194_21bcc7c
	add r0, r4, #0
	bl sub_021B7BE4
_021BCD0E:
	add sp, #8
	pop {r4, pc}
	nop
_021BCD14: .word 0x021C64E8
_021BCD18: .word ovy194_21bcc7c
	thumb_func_end ovy194_21bccd0

	thumb_func_start ovy194_21bcd1c
ovy194_21bcd1c: ; 0x021BCD1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r1, #1
	str r0, [sp]
	sub r6, r1, r0
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BCD42
	add r0, r5, #0
	bl ovy194_21bbee4
	cmp r0, #0
	bne _021BCD44
_021BCD42:
	b _021BCE7E
_021BCD44:
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BCD66
	bl sub_02040440
	mov r1, #0x1c
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BCD66
	add r0, r5, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021BCD66:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy194_21bc038
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _021BCE80 ; =0x000011E0
	ldrb r1, [r1, r0]
	cmp r1, #0xb
	bne _021BCDD4
	add r2, r5, r6
	ldrb r0, [r2, r0]
	cmp r0, #0xb
	bne _021BCDD4
	mov r6, #0x72
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #0x1c
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x93
	bl GFL_MsgDataLoadStrbuf
	add r6, r6, #4
_021BCD9A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	add r2, r0, #0
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_02024464
	add r4, r4, #1
	cmp r4, #2
	blt _021BCD9A
	ldr r2, _021BCE84 ; =0x00000724
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x14
	add r2, #0x18
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r5, #0
	bl sub_021BFE28
	ldr r1, _021BCE88 ; =ovy194_21bccd0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BCDD4:
	ldr r0, _021BCE80 ; =0x000011E0
	add r2, r5, r6
	ldrb r2, [r2, r0]
	cmp r2, #0xc
	bne _021BCE0A
	add r1, r0, #0
	mov r2, #0x78
	add r1, #0x11
	strb r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x54
	ldr r1, [r5, r1]
	mov r7, #0x94
	cmp r1, #3
	bne _021BCE3A
	add r0, #0x1a
	ldrb r0, [r5, r0]
	cmp r0, #3
	blo _021BCE3A
	add r0, r5, #0
	bl ovy194_21b772c
	ldr r1, _021BCE8C ; =ovy194_21b8194
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BCE0A:
	cmp r1, #0xc
	bne _021BCE3A
	add r1, r0, #0
	mov r2, #0x78
	add r1, #0x11
	strb r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x54
	ldr r1, [r5, r1]
	mov r7, #0x96
	cmp r1, #3
	bne _021BCE3A
	add r0, #0x1a
	ldrb r0, [r5, r0]
	cmp r0, #3
	blo _021BCE3A
	add r0, r5, #0
	bl ovy194_21b772c
	ldr r1, _021BCE8C ; =ovy194_21b8194
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BCE3A:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r0, _021BCE80 ; =0x000011E0
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BCE70
	bl sub_02040440
	mov r1, #0x19
	mov r2, #8
	bl sub_02040624
_021BCE70:
	ldr r0, _021BCE90 ; =0x00000F2C
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _021BCE94 ; =ovy194_21bd668
	add r0, r5, #0
	bl sub_021B7BE4
_021BCE7E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCE80: .word 0x000011E0
_021BCE84: .word 0x00000724
_021BCE88: .word ovy194_21bccd0
_021BCE8C: .word ovy194_21b8194
_021BCE90: .word 0x00000F2C
_021BCE94: .word ovy194_21bd668
	thumb_func_end ovy194_21bcd1c

	thumb_func_start ovy194_21bce98
ovy194_21bce98: ; 0x021BCE98
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0]
	bl sub_02040440
	mov r1, #3
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BCECC
	bl sub_02040440
	mov r1, #0x1c
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BCED0 ; =ovy194_21bcd1c
	add r0, r4, #0
	bl sub_021B7BE4
_021BCECC:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BCED0: .word ovy194_21bcd1c
	thumb_func_end ovy194_21bce98

	thumb_func_start ovy194_21bced4
ovy194_21bced4: ; 0x021BCED4
	push {r4, r5, r6, lr}
	mov r2, #0x72
	add r5, r0, #0
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	ldr r4, _021BCF4C ; =0x000011F1
	mov r0, #0x78
	strb r0, [r5, r4]
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BCF40
	add r0, r4, #0
	mov r1, #0xb
	sub r0, #0x11
	strb r1, [r5, r0]
	sub r4, #0x10
	strb r1, [r5, r4]
	ldr r0, _021BCF50 ; =0x00000FD8
	mov r1, #1
	ldr r4, [r5, r0]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy194_21b81c8
	bl sub_0201C2C8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	blx MI_CpuCopy8
	ldr r1, _021BCF54 ; =ovy194_21bcd1c
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BCF40:
	ldr r1, _021BCF58 ; =ovy194_21bce98
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	nop
_021BCF4C: .word 0x000011F1
_021BCF50: .word 0x00000FD8
_021BCF54: .word ovy194_21bcd1c
_021BCF58: .word ovy194_21bce98
	thumb_func_end ovy194_21bced4

	thumb_func_start ovy194_21bcf5c
ovy194_21bcf5c: ; 0x021BCF5C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #3
	blx sub_0208D65C
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #3
	blx sub_0208D65C
	mov r1, #1
	str r0, [sp]
	sub r6, r1, r0
	mov r0, #0xc
	mul r0, r6
	add r1, r5, r0
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _021BCFAC ; =0x00000FD8
	ldr r7, [r1, r0]
	add r0, r7, #0
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BCFA8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy194_21c0fa0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy194_21c5244
_021BCFA8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BCFAC: .word 0x00000FD8
	thumb_func_end ovy194_21bcf5c

	thumb_func_start ovy194_21bcfb0
ovy194_21bcfb0: ; 0x021BCFB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021BCFC4
	add r0, r4, #0
	bl sub_0203D564
_021BCFC4:
	cmp r6, #0x10
	bne _021BCFD8
	ldr r4, _021BD068 ; =0x000010A0
	mov r1, #6
	ldr r0, [r5, r4]
	add r0, r0, #3
	blx sub_0208D65C
	str r1, [r5, r4]
	mov r4, #1
_021BCFD8:
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021BCFE6
	mov r0, #0
	bl sub_0203D564
_021BCFE6:
	cmp r6, #0x20
	bne _021BD002
	ldr r4, _021BD068 ; =0x000010A0
	mov r1, #6
	ldr r0, [r5, r4]
	sub r0, r0, #3
	blx sub_0208D65C
	str r1, [r5, r4]
	cmp r1, #0
	bge _021BD000
	add r0, r1, #6
	str r0, [r5, r4]
_021BD000:
	mov r4, #1
_021BD002:
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021BD010
	mov r0, #0
	bl sub_0203D564
_021BD010:
	cmp r6, #0x40
	bne _021BD032
	ldr r0, _021BD068 ; =0x000010A0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BD020
	cmp r0, #3
	bne _021BD028
_021BD020:
	ldr r0, _021BD068 ; =0x000010A0
	ldr r1, [r5, r0]
	add r1, r1, #3
	str r1, [r5, r0]
_021BD028:
	ldr r0, _021BD068 ; =0x000010A0
	mov r4, #1
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
_021BD032:
	bl sub_0203DEFC
	add r6, r0, #0
	beq _021BD040
	mov r0, #0
	bl sub_0203D564
_021BD040:
	cmp r6, #0x80
	bne _021BD062
	ldr r0, _021BD068 ; =0x000010A0
	ldr r0, [r5, r0]
	cmp r0, #2
	beq _021BD050
	cmp r0, #5
	bne _021BD058
_021BD050:
	ldr r0, _021BD068 ; =0x000010A0
	ldr r1, [r5, r0]
	sub r1, r1, #3
	str r1, [r5, r0]
_021BD058:
	ldr r0, _021BD068 ; =0x000010A0
	mov r4, #1
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_021BD062:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021BD068: .word 0x000010A0
	thumb_func_end ovy194_21bcfb0

	thumb_func_start ovy194_21bd06c
ovy194_21bd06c: ; 0x021BD06C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021BD150
	mov r0, #3
	mov r4, #0
	mov r1, #0
	bl sub_02044C98
	sub r1, r4, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ovy194_21c5244
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c0aec
	ldr r7, _021BD154 ; =0x000005F4
	mov r0, #0x67
	ldrh r1, [r5, r7]
	bl sub_0204AA30
	ldr r1, _021BD158 ; =0x0000086C
	add r6, r0, #0
	ldr r1, [r5, r1]
	mov r2, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldrh r1, [r5, r7]
	mov r3, #0
	str r1, [sp, #0xc]
	mov r1, #0xb
	bl sub_0204AFB0
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c200c
	mov r0, #3
	bl sub_02045B7C
	ldr r0, _021BD15C ; =0x000011F3
	mov r1, #1
	strb r4, [r5, r0]
	add r0, r5, #0
	mov r4, #1
	bl ovy194_21b7d04
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BD0FA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b81c8
_021BD0FA:
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy194_21b7d04
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BD11E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b7d04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b81c8
_021BD11E:
	add r0, r5, #0
	bl ovy194_21bd97c
	add r0, r5, #0
	bl ovy194_21bbe30
	ldr r1, _021BD160 ; =ovy194_21bd7cc
	add r0, r5, #0
	bl sub_021B7BE4
	add r0, r5, #0
	bl ovy194_21b76e0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, _021BD154 ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r5, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
_021BD150:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BD154: .word 0x000005F4
_021BD158: .word 0x0000086C
_021BD15C: .word 0x000011F3
_021BD160: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bd06c

	thumb_func_start ovy194_21bd164
ovy194_21bd164: ; 0x021BD164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #3
	bl sub_02042B20
	cmp r0, #0
	beq _021BD174
	mov r4, #0xa
_021BD174:
	ldr r0, _021BD188 ; =0x00000F2C
	ldr r0, [r5, r0]
	cmp r0, r4
	ble _021BD184
	ldr r1, _021BD18C ; =ovy194_21bd190
	add r0, r5, #0
	bl sub_021B7BE4
_021BD184:
	pop {r3, r4, r5, pc}
	nop
_021BD188: .word 0x00000F2C
_021BD18C: .word ovy194_21bd190
	thumb_func_end ovy194_21bd164

	thumb_func_start ovy194_21bd190
ovy194_21bd190: ; 0x021BD190
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #3
	mov r1, #1
	mov r7, #3
	mov r4, #1
	bl sub_02044C98
	bl sub_02027ACC
	cmp r0, #0
	beq _021BD2A0
	mov r6, #0x27
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_02199B90
	ldr r0, [r5, r6]
	bl sub_02199C08
	cmp r0, #1
	bne _021BD1E2
	mov r0, #6
	str r0, [sp]
	ldr r0, _021BD2A4 ; =0x000005F4
	str r4, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_020279B4
	ldr r1, _021BD2A8 ; =ovy194_21bd06c
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD1E2:
	ldr r0, [r5, r6]
	bl sub_02199C30
	sub r1, r4, #2
	cmp r0, r1
	bne _021BD2A0
	ldr r0, _021BD2AC ; =0x021C6EC4
	bl sub_0203DA0C
	add r6, r0, #0
	sub r0, r4, #2
	cmp r6, r0
	beq _021BD22E
	add r0, r4, #0
	bl sub_0203D564
	ldr r7, _021BD2B0 ; =0x000010A0
	add r0, r5, #0
	str r6, [r5, r7]
	sub r1, r4, #2
	bl ovy194_21c56f8
	ldr r1, [r5, r7]
	add r0, r5, #0
	bl ovy194_21bcf5c
	ldr r0, _021BD2B4 ; =0x00000548
	bl sub_02006254
	ldr r0, _021BD2B8 ; =0x00000F2C
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _021BD2BC ; =ovy194_21bd164
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD22E:
	bl sub_0203D554
	cmp r0, #0
	beq _021BD270
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BD244
	mov r0, #0
	bl sub_0203D564
_021BD244:
	cmp r4, #0
	beq _021BD270
	mov r0, #0
	mov r4, #0
	bl sub_0203D564
	ldr r1, _021BD2B0 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy194_21c56f8
	ldr r0, _021BD2B4 ; =0x00000548
	bl sub_02006254
	ldr r0, _021BD2B8 ; =0x00000F2C
	ldr r1, _021BD2BC ; =ovy194_21bd164
	str r4, [r5, r0]
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD270:
	add r0, r5, #0
	bl ovy194_21bcfb0
	cmp r0, #0
	beq _021BD2A0
	ldr r0, _021BD2B4 ; =0x00000548
	bl sub_02006254
	ldr r4, _021BD2B0 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r4]
	bl ovy194_21c56f8
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy194_21bcf5c
	ldr r0, _021BD2B8 ; =0x00000F2C
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _021BD2BC ; =ovy194_21bd164
	add r0, r5, #0
	bl sub_021B7BE4
_021BD2A0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD2A4: .word 0x000005F4
_021BD2A8: .word ovy194_21bd06c
_021BD2AC: .word 0x021C6EC4
_021BD2B0: .word 0x000010A0
_021BD2B4: .word 0x00000548
_021BD2B8: .word 0x00000F2C
_021BD2BC: .word ovy194_21bd164
	thumb_func_end ovy194_21bd190

	thumb_func_start ovy194_21bd2c0
ovy194_21bd2c0: ; 0x021BD2C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021BD356
	ldr r5, _021BD35C ; =0x000010A0
	mov r1, #3
	ldr r0, [r4, r5]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	blx sub_0208D65C
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #3
	blx sub_0208D65C
	add r7, r0, #0
	mov r0, #1
	sub r2, r0, r7
	mov r1, #0xc
	mul r1, r2
	add r2, r4, r1
	lsl r1, r6, #2
	add r1, r2, r1
	sub r5, #0xc8
	ldr r5, [r1, r5]
	ldr r1, _021BD360 ; =0x000011F3
	cmp r5, #0
	strb r0, [r4, r1]
	beq _021BD324
	add r0, r5, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BD324
	add r0, r4, #0
	add r1, r5, #0
	bl ovy194_21c0b6c
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy194_21c5244
_021BD324:
	add r0, r4, #0
	bl ovy194_21bd97c
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, _021BD364 ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r4, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	add r0, r4, #0
	bl ovy194_21b76e0
	add r0, r4, #0
	bl ovy194_21bbe30
	ldr r1, _021BD368 ; =ovy194_21bd190
	add r0, r4, #0
	bl sub_021B7BE4
_021BD356:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BD35C: .word 0x000010A0
_021BD360: .word 0x000011F3
_021BD364: .word 0x000005F4
_021BD368: .word ovy194_21bd190
	thumb_func_end ovy194_21bd2c0

	thumb_func_start ovy194_21bd36c
ovy194_21bd36c: ; 0x021BD36C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021BD404 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BD400
	ldr r0, [r5, r4]
	bl sub_0202DC00
	add r6, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r7, #0
	str r7, [r5, r4]
	cmp r6, #0
	beq _021BD3A6
	cmp r6, #1
	beq _021BD3B2
	cmp r6, #2
	beq _021BD3E6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD3A6:
	ldr r1, _021BD408 ; =ovy194_21bced4
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD3B2:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	sub r4, #0x58
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	add r1, r7, #0
	add r2, r7, #0
	str r0, [sp, #8]
	mov r0, #3
	add r3, r7, #0
	bl sub_020279B4
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r7, #0
	bl sub_02199D08
	ldr r1, _021BD40C ; =ovy194_21bd2c0
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BD3E6:
	add r0, r5, #0
	bl ovy194_21bd97c
	add r0, r5, #0
	bl ovy194_21b76e0
	add r0, r5, #0
	bl ovy194_21bbe30
	ldr r1, _021BD410 ; =ovy194_21bd7cc
	add r0, r5, #0
	bl sub_021B7BE4
_021BD400:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD404: .word 0x0000064C
_021BD408: .word ovy194_21bced4
_021BD40C: .word ovy194_21bd2c0
_021BD410: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bd36c

	thumb_func_start ovy194_21bd414
ovy194_21bd414: ; 0x021BD414
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _021BD44C ; =0x021C6510
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	add r0, r4, #0
	mov r2, #3
	bl ovy194_21c0214
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r1, _021BD450 ; =ovy194_21bd36c
	add r0, r4, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BD44C: .word 0x021C6510
_021BD450: .word ovy194_21bd36c
	thumb_func_end ovy194_21bd414

	thumb_func_start ovy194_21bd454
ovy194_21bd454: ; 0x021BD454
	push {r3, r4, r5, lr}
	ldr r1, _021BD4A4 ; =0x000011FB
	add r5, r0, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	beq _021BD4A2
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BD48C
	bl sub_02040440
	add r4, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r3, _021BD4A8 ; =0x0000106C
	lsl r2, r2, #0x10
	ldr r1, _021BD4AC ; =0x00000C01
	ldr r3, [r5, r3]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _021BD4A2
_021BD48C:
	ldr r1, _021BD4A4 ; =0x000011FB
	mov r0, #0xf
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	ldr r1, _021BD4B0 ; =ovy194_21bd414
	add r0, r5, #0
	bl sub_021B7BE4
_021BD4A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD4A4: .word 0x000011FB
_021BD4A8: .word 0x0000106C
_021BD4AC: .word 0x00000C01
_021BD4B0: .word ovy194_21bd414
	thumb_func_end ovy194_21bd454

	thumb_func_start ovy194_21bd4b4
ovy194_21bd4b4: ; 0x021BD4B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BD4EA
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7c80
	add r1, sp, #0
	strb r0, [r1]
	bl sub_02040440
	add r4, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r1, _021BD4F4 ; =0x00000C16
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BD4F2
_021BD4EA:
	ldr r1, _021BD4F8 ; =ovy194_21bd454
	add r0, r5, #0
	bl sub_021B7BE4
_021BD4F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD4F4: .word 0x00000C16
_021BD4F8: .word ovy194_21bd454
	thumb_func_end ovy194_21bd4b4

	thumb_func_start ovy194_21bd4fc
ovy194_21bd4fc: ; 0x021BD4FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #3
	mov r4, #3
	blx sub_0208D65C
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #3
	blx sub_0208D65C
	ldr r0, [sp]
	sub r2, r4, #4
	cmp r0, r2
	beq _021BD5B2
	lsl r0, r1, #2
	mov r1, #1
	sub r3, r1, r7
	mov r1, #0xc
	add r2, r3, #0
	mul r2, r1
	add r2, r5, r2
	ldr r4, _021BD5B8 ; =0x00000FA4
	add r0, r2, r0
	ldr r2, [r0, r4]
	sub r1, #0xd
	cmp r2, r1
	beq _021BD5B2
	add r1, r4, #0
	add r1, #0x34
	ldr r6, [r0, r1]
	add r1, r4, #0
	add r1, #0x4c
	ldr r0, [r0, r1]
	cmp r6, #0
	str r0, [sp, #4]
	beq _021BD5B2
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BD5B2
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xfc
	str r0, [r5, r1]
	ldr r0, _021BD5BC ; =0x0000054C
	bl sub_02006254
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	cmp r7, #0
	beq _021BD580
	add r0, r5, #0
	ldr r1, _021BD5C0 ; =ovy194_21bc87c
	b _021BD5A8
_021BD580:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy194_21b81c8
	bl sub_0201C2C8
	add r4, #0xc8
	add r2, r0, #0
	ldr r1, [r5, r4]
	add r0, r6, #0
	blx MI_CpuCopy8
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7cc0
	ldr r1, _021BD5C4 ; =ovy194_21bd4b4
	add r0, r5, #0
_021BD5A8:
	bl sub_021B7BE4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BD5B2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BD5B8: .word 0x00000FA4
_021BD5BC: .word 0x0000054C
_021BD5C0: .word ovy194_21bc87c
_021BD5C4: .word ovy194_21bd4b4
	thumb_func_end ovy194_21bd4fc

	thumb_func_start ovy194_21bd5c8
ovy194_21bd5c8: ; 0x021BD5C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021BD650
	add r0, r5, #0
	bl ovy194_21bb4b4
	mov r0, #0
	bl sub_021C45EC
	add r0, r5, #0
	bl ovy194_21c4484
	ldr r4, _021BD654 ; =0x000005F4
	mov r0, #0x55
	ldrh r2, [r5, r4]
	lsl r0, r0, #2
	mov r1, #0
	bl sub_0204BF1C
	ldr r1, _021BD658 ; =0x000009C4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy194_21bfedc
	add r0, r5, #0
	bl ovy194_21c46a4
	add r0, r5, #0
	bl ovy194_21c3480
	add r0, r5, #0
	bl ovy194_21c2c84
	add r0, r5, #0
	bl ovy194_21c2de8
	add r0, r5, #0
	bl ovy194_21c2d78
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c200c
	mov r0, #0x1f
	bl sub_02046D38
	mov r0, #0x1e
	bl sub_02046DC0
	add r0, r5, #0
	bl ovy194_21c2a24
	ldrh r1, [r5, r4]
	mov r0, #0
	bl sub_02042BA8
	ldr r2, _021BD65C ; =0x04001000
	ldr r0, _021BD660 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r1, _021BD664 ; =ovy194_21b9a38
	add r0, r5, #0
	bl sub_021B7BE4
_021BD650:
	pop {r3, r4, r5, pc}
	nop
_021BD654: .word 0x000005F4
_021BD658: .word 0x000009C4
_021BD65C: .word 0x04001000
_021BD660: .word 0xFFFF1FFF
_021BD664: .word ovy194_21b9a38
	thumb_func_end ovy194_21bd5c8

	thumb_func_start ovy194_21bd668
ovy194_21bd668: ; 0x021BD668
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02040440
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BD6B0
	add r0, r4, #0
	bl ovy194_21bbee4
	cmp r0, #0
	beq _021BD6B0
	ldr r0, _021BD6B4 ; =0x00000F2C
	ldr r0, [r4, r0]
	cmp r0, #0x78
	blt _021BD6B0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021BD6B8 ; =0x000005F4
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	ldr r1, _021BD6BC ; =ovy194_21bd5c8
	add r0, r4, #0
	bl sub_021B7BE4
_021BD6B0:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021BD6B4: .word 0x00000F2C
_021BD6B8: .word 0x000005F4
_021BD6BC: .word ovy194_21bd5c8
	thumb_func_end ovy194_21bd668

	thumb_func_start ovy194_21bd6c0
ovy194_21bd6c0: ; 0x021BD6C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xc
	add r0, sp, #0
	strb r4, [r0]
	bl sub_02040440
	lsl r1, r4, #8
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BD6F0
	bl sub_02040440
	mov r1, #0x1c
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BD6F4 ; =ovy194_21bcd1c
	add r0, r5, #0
	bl sub_021B7BE4
_021BD6F0:
	pop {r3, r4, r5, pc}
	nop
_021BD6F4: .word ovy194_21bcd1c
	thumb_func_end ovy194_21bd6c0

	thumb_func_start ovy194_21bd6f8
ovy194_21bd6f8: ; 0x021BD6F8
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r0, _021BD728 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BD72C ; =ovy194_21bd6c0
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BD728: .word 0x000011F1
_021BD72C: .word ovy194_21bd6c0
	thumb_func_end ovy194_21bd6f8

	thumb_func_start ovy194_21bd730
ovy194_21bd730: ; 0x021BD730
	push {r4, r5, r6, lr}
	ldr r6, _021BD784 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BD780
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r0, #0
	str r0, [r5, r6]
	cmp r4, #0
	bne _021BD766
	ldr r1, _021BD788 ; =ovy194_21bd6f8
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BD766:
	add r0, r5, #0
	bl ovy194_21bfe9c
	add r0, r5, #0
	bl ovy194_21b76e0
	add r0, r5, #0
	bl ovy194_21bbe30
	ldr r1, _021BD78C ; =ovy194_21bd7cc
	add r0, r5, #0
	bl sub_021B7BE4
_021BD780:
	pop {r4, r5, r6, pc}
	nop
_021BD784: .word 0x0000064C
_021BD788: .word ovy194_21bd6f8
_021BD78C: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bd730

	thumb_func_start ovy194_21bd790
ovy194_21bd790: ; 0x021BD790
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BD7C0
	ldr r0, _021BD7C4 ; =0x021C64E0
	add r1, sp, #4
	ldr r2, [r0]
	ldr r0, [r0, #4]
	mov r3, #0x20
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	bl ovy194_21c0120
	ldr r1, _021BD7C8 ; =ovy194_21bd730
	add r0, r4, #0
	bl sub_021B7BE4
_021BD7C0:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021BD7C4: .word 0x021C64E0
_021BD7C8: .word ovy194_21bd730
	thumb_func_end ovy194_21bd790

	thumb_func_start ovy194_21bd7cc
ovy194_21bd7cc: ; 0x021BD7CC
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_02199B90
	ldr r0, [r5, r4]
	bl sub_02199C08
	cmp r0, #1
	bne _021BD814
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x95
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #0
	bl sub_02199D08
	add r0, r5, #0
	bl ovy194_21bbe30
	ldr r1, _021BD8CC ; =ovy194_21bd790
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BD814:
	ldr r0, [r5, r4]
	bl sub_02199C30
	mov r6, #0
	mvn r6, r6
	cmp r0, r6
	bne _021BD8C8
	ldr r0, _021BD8D0 ; =0x021C6EC4
	bl sub_0203DA0C
	add r4, r0, #0
	cmp r4, r6
	beq _021BD84E
	mov r0, #1
	bl sub_0203D564
	ldr r0, _021BD8D4 ; =0x00000548
	bl sub_02006254
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21c56f8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21bd4fc
	cmp r0, #0
	bne _021BD8C8
_021BD84E:
	bl sub_0203D554
	cmp r0, #0
	beq _021BD88E
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BD864
	mov r0, #0
	bl sub_0203D564
_021BD864:
	cmp r4, #0
	beq _021BD88E
	ldr r4, _021BD8D8 ; =0x000010A0
	mov r1, #6
	ldr r0, [r5, r4]
	blx sub_0208D65C
	str r1, [r5, r4]
	cmp r1, #0
	bge _021BD87C
	mov r0, #0
	str r0, [r5, r4]
_021BD87C:
	ldr r1, _021BD8D8 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy194_21c56f8
	ldr r0, _021BD8D4 ; =0x00000548
	bl sub_02006254
	pop {r4, r5, r6, pc}
_021BD88E:
	bl sub_0203DEFC
	add r4, r0, #0
	beq _021BD89C
	mov r0, #0
	bl sub_0203D564
_021BD89C:
	cmp r4, #1
	bne _021BD8AE
	ldr r1, _021BD8D8 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy194_21bd4fc
	cmp r0, #0
	bne _021BD8C8
_021BD8AE:
	add r0, r5, #0
	bl ovy194_21bcfb0
	cmp r0, #0
	beq _021BD8C8
	ldr r1, _021BD8D8 ; =0x000010A0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy194_21c56f8
	ldr r0, _021BD8D4 ; =0x00000548
	bl sub_02006254
_021BD8C8:
	pop {r4, r5, r6, pc}
	nop
_021BD8CC: .word ovy194_21bd790
_021BD8D0: .word 0x021C6EC4
_021BD8D4: .word 0x00000548
_021BD8D8: .word 0x000010A0
	thumb_func_end ovy194_21bd7cc

	thumb_func_start ovy194_21bd8dc
ovy194_21bd8dc: ; 0x021BD8DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21bbee4
	cmp r0, #0
	beq _021BD942
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BD942
	bl sub_0203DEFC
	add r5, r0, #0
	beq _021BD900
	mov r0, #0
	bl sub_0203D564
_021BD900:
	cmp r5, #0
	bne _021BD916
	bl sub_0203DA48
	add r5, r0, #0
	beq _021BD912
	mov r0, #1
	bl sub_0203D564
_021BD912:
	cmp r5, #0
	beq _021BD942
_021BD916:
	bl sub_0203D554
	cmp r0, #0
	beq _021BD926
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	b _021BD92A
_021BD926:
	add r0, r4, #0
	mov r1, #0
_021BD92A:
	bl ovy194_21c56f8
	add r0, r4, #0
	bl ovy194_21bfe9c
	add r0, r4, #0
	bl ovy194_21b76e0
	ldr r1, _021BD944 ; =ovy194_21bd7cc
	add r0, r4, #0
	bl sub_021B7BE4
_021BD942:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD944: .word ovy194_21bd7cc
	thumb_func_end ovy194_21bd8dc

	thumb_func_start ovy194_21bd948
ovy194_21bd948: ; 0x021BD948
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x92
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	ldr r0, _021BD974 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BD978 ; =ovy194_21bd8dc
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	nop
_021BD974: .word 0x000011F1
_021BD978: .word ovy194_21bd8dc
	thumb_func_end ovy194_21bd948

	thumb_func_start ovy194_21bd97c
ovy194_21bd97c: ; 0x021BD97C
	push {r3, r4, r5, lr}
	ldr r4, _021BD9E8 ; =0x04001050
	mov r2, #0x1b
	add r0, r4, #0
	mov r1, #0x1b
	sub r2, #0x23
	bl G2x_SetBlendBrightness_
	add r5, r4, #0
	sub r5, #8
	ldrh r0, [r5]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r0, r1
	add r3, r0, #0
	orr r3, r2
	mov r0, #0x20
	orr r3, r0
	strh r3, [r5]
	add r3, r4, #0
	ldr r5, _021BD9EC ; =0x000080FF
	sub r3, #0x10
	strh r5, [r3]
	add r3, r4, #0
	mov r5, #0xa9
	sub r3, #0xc
	strh r5, [r3]
	sub r3, r4, #6
	ldrh r5, [r3]
	sub r4, #0x50
	lsl r0, r0, #8
	bic r5, r1
	add r1, r5, #0
	orr r1, r2
	strh r1, [r3]
	ldr r2, [r4]
	ldr r1, _021BD9F0 ; =0xFFFF1FFF
	and r1, r2
	orr r0, r1
	str r0, [r4]
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	pop {r3, r4, r5, pc}
	nop
_021BD9E8: .word 0x04001050
_021BD9EC: .word 0x000080FF
_021BD9F0: .word 0xFFFF1FFF
	thumb_func_end ovy194_21bd97c

	thumb_func_start ovy194_21bd9f4
ovy194_21bd9f4: ; 0x021BD9F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy194_21c57c4
	cmp r0, #0
	beq _021BDA3E
	bl sub_0203D554
	cmp r0, #0
	beq _021BDA1A
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ovy194_21c56f8
	ldr r0, _021BDA40 ; =0x000010A0
	mov r1, #0
	str r1, [r5, r0]
	b _021BDA28
_021BDA1A:
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy194_21c56f8
	ldr r0, _021BDA40 ; =0x000010A0
	str r4, [r5, r0]
_021BDA28:
	bl sub_02027ACC
	cmp r0, #0
	beq _021BDA3E
	add r0, r5, #0
	bl ovy194_21bd97c
	ldr r1, _021BDA44 ; =ovy194_21bd948
	add r0, r5, #0
	bl sub_021B7BE4
_021BDA3E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BDA40: .word 0x000010A0
_021BDA44: .word ovy194_21bd948
	thumb_func_end ovy194_21bd9f4

	thumb_func_start ovy194_21bda48
ovy194_21bda48: ; 0x021BDA48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy194_21c2e04
	add r0, r5, #0
	bl ovy194_21be578
	add r0, r5, #0
	bl ovy194_21be688
	add r0, r5, #0
	bl ovy194_21c52bc
	add r0, r5, #0
	bl ovy194_21bc330
	add r0, r5, #0
	bl ovy194_21c3374
	add r0, r5, #0
	bl ovy194_21bc784
	add r0, r5, #0
	bl ovy194_21c368c
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy194_21bc2d0
	mov r0, #6
	mov r1, #0
	mov r6, #6
	mov r7, #0
	bl sub_02045790
	ldr r0, _021BDAF0 ; =0x00000F04
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	bl sub_02199D18
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D08
	add r0, r5, #0
	mov r1, #6
	bl ovy194_21c12ec
	ldr r0, _021BDAF4 ; =0x0000108C
	str r7, [r5, r0]
	sub r0, #8
	str r4, [r5, r0]
	add r0, r5, #0
	bl ovy194_21c5994
	str r6, [sp]
	ldr r0, _021BDAF8 ; =0x000005F4
	str r4, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldr r1, _021BDAFC ; =ovy194_21bd9f4
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BDAF0: .word 0x00000F04
_021BDAF4: .word 0x0000108C
_021BDAF8: .word 0x000005F4
_021BDAFC: .word ovy194_21bd9f4
	thumb_func_end ovy194_21bda48

	thumb_func_start ovy194_21bdb00
ovy194_21bdb00: ; 0x021BDB00
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021BDB14
	ldr r1, _021BDB18 ; =ovy194_21bda48
	add r0, r4, #0
	bl sub_021B7BE4
_021BDB14:
	pop {r4, pc}
	nop
_021BDB18: .word ovy194_21bda48
	thumb_func_end ovy194_21bdb00

	thumb_func_start ovy194_21bdb1c
ovy194_21bdb1c: ; 0x021BDB1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BDB32
	ldr r0, _021BDB58 ; =0x00001060
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BDB54
_021BDB32:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021BDB5C ; =0x000005F4
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	ldr r1, _021BDB60 ; =ovy194_21bdb00
	add r0, r4, #0
	bl sub_021B7BE4
_021BDB54:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021BDB58: .word 0x00001060
_021BDB5C: .word 0x000005F4
_021BDB60: .word ovy194_21bdb00
	thumb_func_end ovy194_21bdb1c

	thumb_func_start ovy194_21bdb64
ovy194_21bdb64: ; 0x021BDB64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BDB96
	mov r2, #1
	add r0, sp, #0
	strb r2, [r0]
	ldr r1, _021BDBA0 ; =0x00000C0A
	add r0, r4, #0
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BDB9E
	ldr r1, _021BDBA4 ; =ovy194_21bdb1c
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BDB96:
	ldr r1, _021BDBA4 ; =ovy194_21bdb1c
	add r0, r5, #0
	bl sub_021B7BE4
_021BDB9E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BDBA0: .word 0x00000C0A
_021BDBA4: .word ovy194_21bdb1c
	thumb_func_end ovy194_21bdb64

	thumb_func_start ovy194_21bdba8
ovy194_21bdba8: ; 0x021BDBA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x15
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021BDC36
	ldr r0, _021BDC38 ; =0x000011E6
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021BDBD6
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021BDBD6
	ldr r1, _021BDC3C ; =ovy194_21bdb64
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BDBD6:
	cmp r1, #0xf0
	bne _021BDBDE
	mov r1, #0x9f
	b _021BDC0E
_021BDBDE:
	cmp r1, #0xf1
	bne _021BDBE6
	mov r1, #0xa0
	b _021BDC0E
_021BDBE6:
	cmp r1, #0xf2
	bne _021BDBEE
	mov r1, #0xa1
	b _021BDC0E
_021BDBEE:
	cmp r1, #0xff
	bne _021BDBF6
_021BDBF2:
	mov r1, #0xa2
	b _021BDC0E
_021BDBF6:
	ldr r0, _021BDC40 ; =0x000011E7
	ldrb r1, [r4, r0]
	mov r0, #0xf0
	and r0, r1
	cmp r0, #0xf0
	bne _021BDC04
	b _021BDBF2
_021BDC04:
	cmp r1, #0
	beq _021BDC0C
	mov r1, #0x90
	b _021BDC0E
_021BDC0C:
	mov r1, #0x91
_021BDC0E:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	ldr r0, _021BDC44 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r0, _021BDC48 ; =0x00000F2C
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _021BDC4C ; =ovy194_21bd668
	add r0, r4, #0
	bl sub_021B7BE4
_021BDC36:
	pop {r4, pc}
	.align 2, 0
_021BDC38: .word 0x000011E6
_021BDC3C: .word ovy194_21bdb64
_021BDC40: .word 0x000011E7
_021BDC44: .word 0x000011F1
_021BDC48: .word 0x00000F2C
_021BDC4C: .word ovy194_21bd668
	thumb_func_end ovy194_21bdba8

	thumb_func_start ovy194_21bdc50
ovy194_21bdc50: ; 0x021BDC50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02040440
	ldr r4, _021BDC94 ; =0x000011E6
	ldr r1, _021BDC98 ; =0x0000109A
	mov r6, #0
	strh r6, [r5, r1]
	ldr r1, _021BDC9C ; =0x00000C11
	mov r2, #1
	add r3, r5, r4
	bl sub_02042BE8
	cmp r0, #0
	beq _021BDC90
	bl sub_02040440
	mov r1, #0x15
	mov r2, #8
	bl sub_02040624
	sub r4, #0x5a
	ldr r0, [r5, r4]
	cmp r0, #2
	bne _021BDC88
	add r0, r6, #0
	bl sub_021516A0
_021BDC88:
	ldr r1, _021BDCA0 ; =ovy194_21bdba8
	add r0, r5, #0
	bl sub_021B7BE4
_021BDC90:
	pop {r4, r5, r6, pc}
	nop
_021BDC94: .word 0x000011E6
_021BDC98: .word 0x0000109A
_021BDC9C: .word 0x00000C11
_021BDCA0: .word ovy194_21bdba8
	thumb_func_end ovy194_21bdc50

	thumb_func_start ovy194_21bdca4
ovy194_21bdca4: ; 0x021BDCA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021BDCC0
	bl sub_0219D124
	ldr r0, [r4]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4]
	bl sub_02152158
_021BDCC0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21bdca4

	thumb_func_start ovy194_21bdcc4
ovy194_21bdcc4: ; 0x021BDCC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	bl sub_0219D3A8
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_0219D140
	cmp r0, #0
	bne _021BDCE4
	cmp r4, #0xc8
	beq _021BDCE6
_021BDCE4:
	b _021BDDE8
_021BDCE6:
	ldr r0, [r5]
	bl sub_0219D1A4
	str r0, [sp]
	bl sub_0219D3E4
	ldr r1, _021BDE4C ; =0x000011E6
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _021BDDE6
	ldr r0, _021BDE50 ; =0x0000109A
	str r0, [sp, #0x10]
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021BDDE6
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021BDE54 ; =0x000005F4
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	sub r0, #0xb6
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	sub r0, #0xb6
	str r0, [sp, #0x10]
_021BDD1E:
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r4, r0]
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BDDD0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	ldr r4, [r4, r0]
	ldr r0, [sp]
	bl sub_0219D3E8
	cmp r0, #0
	beq _021BDDC6
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x65
	bl sub_0204875C
	add r7, r0, #0
	mov r1, #0x19
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020487D4
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #0
	beq _021BDDAA
	ldr r0, _021BDE54 ; =0x000005F4
	ldrh r0, [r5, r0]
	bl sub_020096B8
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa7
	add r2, r7, #0
	bl sub_0201CCF8
	add r0, r6, #0
	bl sub_020486F0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02009738
	add r0, r4, #0
	mov r1, #0xa7
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r7, #0
	bl sub_0203A24C
_021BDDAA:
	add r0, r4, #0
	bl sub_0201EDE4
	add r0, r6, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x8e
	bl sub_0201CD1C
	add r0, r6, #0
	bl sub_02048564
_021BDDC6:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_021BDDD0:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _021BDD1E
	ldr r0, _021BDE50 ; =0x0000109A
	mov r1, #1
	strh r1, [r5, r0]
	add r0, r5, #0
	ldr r1, _021BDE58 ; =ovy194_21bde60
	b _021BDE22
_021BDDE6:
	b _021BDE1E
_021BDDE8:
	cmp r0, #0xf
	beq _021BDE46
	cmp r4, #0xc8
	beq _021BDE46
	mov r1, #0x19
	lsl r1, r1, #4
	cmp r4, r1
	beq _021BDE06
	add r0, r1, #1
	cmp r4, r0
	beq _021BDE0A
	add r1, #8
	cmp r4, r1
	beq _021BDE0E
	b _021BDE12
_021BDE06:
	mov r1, #0xf0
	b _021BDE14
_021BDE0A:
	mov r1, #0xf1
	b _021BDE14
_021BDE0E:
	mov r1, #0xf2
	b _021BDE14
_021BDE12:
	mov r1, #0xff
_021BDE14:
	ldr r0, _021BDE4C ; =0x000011E6
	strb r1, [r5, r0]
	ldr r0, [r5]
	bl sub_0219D124
_021BDE1E:
	ldr r1, _021BDE5C ; =ovy194_21bdc50
	add r0, r5, #0
_021BDE22:
	bl sub_021B7BE4
	ldr r0, [r5]
	cmp r0, #0
	beq _021BDE46
	bl sub_0219D384
	ldr r0, [r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r5]
	bl sub_02152158
	mov r0, #0
	mov r1, #0
	bl sub_02152040
_021BDE46:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BDE4C: .word 0x000011E6
_021BDE50: .word 0x0000109A
_021BDE54: .word 0x000005F4
_021BDE58: .word ovy194_21bde60
_021BDE5C: .word ovy194_21bdc50
	thumb_func_end ovy194_21bdcc4

	thumb_func_start ovy194_21bde60
ovy194_21bde60: ; 0x021BDE60
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021BDF00 ; =0x000005F4
	add r5, r0, #0
	ldrh r2, [r5, r4]
	mov r1, #1
	mov r0, #0xd
	lsl r1, r1, #0x10
	mov r6, #0
	bl sub_021520A0
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02008BDC
	ldr r2, [r5, #8]
	add r1, r0, #0
	ldrh r0, [r5, r4]
	ldr r2, [r2, #0x24]
	bl sub_0219D1B8
	str r0, [r5]
	ldr r0, _021BDF04 ; =ovy194_21bdca4
	add r1, r5, #0
	bl sub_02152040
	ldr r7, _021BDF08 ; =0x00000FE4
	mov r4, #0
_021BDE98:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BDEA8
	add r6, r6, #1
_021BDEA8:
	add r4, r4, #1
	cmp r4, #3
	blt _021BDE98
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r1, _021BDF00 ; =0x000005F4
	ldr r0, [r5]
	ldrh r1, [r5, r1]
	mul r2, r6
	mov r3, #2
	bl sub_0219D258
	ldr r7, _021BDF08 ; =0x00000FE4
	mov r4, #0
_021BDEC6:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	bl ovy194_21b774c
	cmp r0, #0
	beq _021BDEE2
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, [r5]
	ldr r1, [r6, r7]
	bl sub_0219D290
_021BDEE2:
	add r4, r4, #1
	cmp r4, #3
	blt _021BDEC6
	ldr r0, [r5]
	bl sub_0219D2B0
	ldr r0, [r5]
	bl sub_0219D0F8
	ldr r1, _021BDF0C ; =ovy194_21bdcc4
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BDF00: .word 0x000005F4
_021BDF04: .word ovy194_21bdca4
_021BDF08: .word 0x00000FE4
_021BDF0C: .word ovy194_21bdcc4
	thumb_func_end ovy194_21bde60

	thumb_func_start ovy194_21bdf10
ovy194_21bdf10: ; 0x021BDF10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021BDF60
	add r0, r4, #0
	bl ovy194_21c368c
	mov r0, #4
	bl sub_02046DC0
	mov r0, #4
	bl sub_02027B58
	ldr r0, _021BDF64 ; =0x000011FA
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #3
	blo _021BDF4C
	add r0, r4, #0
	bl ovy194_21b772c
	ldr r1, _021BDF68 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BDF4C:
	bl sub_02040440
	mov r1, #0x1f
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BDF6C ; =ovy194_21bde60
	add r0, r4, #0
	bl sub_021B7BE4
_021BDF60:
	pop {r4, pc}
	nop
_021BDF64: .word 0x000011FA
_021BDF68: .word ovy194_21b8194
_021BDF6C: .word ovy194_21bde60
	thumb_func_end ovy194_21bdf10

	thumb_func_start ovy194_21bdf70
ovy194_21bdf70: ; 0x021BDF70
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r4, #1
	ldr r0, _021BDFAC ; =0x000005F4
	str r4, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0
	bl sub_020279B4
	ldr r0, _021BDFB0 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021BDF9E
	add r0, r4, #0
	bl sub_021516A0
_021BDF9E:
	ldr r1, _021BDFB4 ; =ovy194_21bdf10
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021BDFAC: .word 0x000005F4
_021BDFB0: .word 0x0000118C
_021BDFB4: .word ovy194_21bdf10
	thumb_func_end ovy194_21bdf70

	thumb_func_start ovy194_21bdfb8
ovy194_21bdfb8: ; 0x021BDFB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	mov r4, #1
	add r0, r5, #0
	sub r6, r4, r7
	bl ovy194_21b7784
	cmp r0, #0
	bne _021BDFD8
	mov r7, #0
	add r6, r4, #0
_021BDFD8:
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BDFFA
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	bne _021BDFFA
	add r0, r5, #0
	bl ovy194_21bbff0
	pop {r3, r4, r5, r6, r7, pc}
_021BDFFA:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy194_21bc038
	ldr r4, _021BE0C8 ; =0x000011EA
	mov r0, #0
	strb r0, [r5, r4]
	mov r1, #3
	sub r0, r4, #2
	strb r1, [r5, r0]
	sub r0, r4, #1
	strb r1, [r5, r0]
	add r0, r4, #0
	add r1, r5, r7
	sub r0, #0xa
	ldrb r0, [r1, r0]
	cmp r0, #0xa
	bne _021BE060
	add r1, r4, #0
	add r2, r5, r6
	sub r1, #0xa
	ldrb r1, [r2, r1]
	cmp r1, #0xa
	bne _021BE060
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy194_21bc6b4
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy194_21bc6b4
	sub r4, #0x5e
	ldr r0, [r5, r4]
	cmp r0, #3
	bne _021BE056
	ldr r1, _021BE0CC ; =ovy194_21bdf70
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BE056:
	ldr r1, _021BE0D0 ; =ovy194_21bdb64
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BE060:
	cmp r0, #4
	bne _021BE07E
	ldr r1, _021BE0D4 ; =0x000011E0
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #4
	bne _021BE07E
	ldr r0, [r5, #8]
	mov r1, #3
	str r1, [r0, #8]
	ldr r1, _021BE0D8 ; =ovy194_21b8194
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
_021BE07E:
	ldr r1, _021BE0D4 ; =0x000011E0
	add r2, r5, r6
	ldrb r1, [r2, r1]
	cmp r1, #4
	bne _021BE08C
	mov r0, #0x61
	b _021BE092
_021BE08C:
	cmp r0, #4
	bne _021BE094
	mov r0, #0x67
_021BE092:
	str r0, [sp]
_021BE094:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r1, [sp]
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r1, _021BE0D4 ; =0x000011E0
	mov r2, #0
	strb r2, [r5, r1]
	add r0, r1, #1
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	strb r2, [r5, r0]
	add r1, #9
	strb r2, [r5, r1]
	ldr r1, _021BE0DC ; =ovy194_21b9c44
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE0C8: .word 0x000011EA
_021BE0CC: .word ovy194_21bdf70
_021BE0D0: .word ovy194_21bdb64
_021BE0D4: .word 0x000011E0
_021BE0D8: .word ovy194_21b8194
_021BE0DC: .word ovy194_21b9c44
	thumb_func_end ovy194_21bdfb8

	thumb_func_start ovy194_21be0e0
ovy194_21be0e0: ; 0x021BE0E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BE112
	mov r2, #1
	add r0, sp, #0
	strb r2, [r0]
	ldr r1, _021BE11C ; =0x00000C0F
	add r0, r4, #0
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BE11A
	ldr r1, _021BE120 ; =ovy194_21bdfb8
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BE112:
	ldr r1, _021BE120 ; =ovy194_21bdfb8
	add r0, r5, #0
	bl sub_021B7BE4
_021BE11A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BE11C: .word 0x00000C0F
_021BE120: .word ovy194_21bdfb8
	thumb_func_end ovy194_21be0e0

	thumb_func_start ovy194_21be124
ovy194_21be124: ; 0x021BE124
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BE182
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BE170
	mov r1, #0xa
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #3
	add r0, r4, #0
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BE182
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BE184 ; =ovy194_21be0e0
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
_021BE170:
	ldr r0, _021BE188 ; =0x000011E0
	mov r1, #0xa
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r1, _021BE184 ; =ovy194_21be0e0
	add r0, r5, #0
	bl sub_021B7BE4
_021BE182:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BE184: .word ovy194_21be0e0
_021BE188: .word 0x000011E0
	thumb_func_end ovy194_21be124

	thumb_func_start ovy194_21be18c
ovy194_21be18c: ; 0x021BE18C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BE1A6
	ldr r1, _021BE1A8 ; =ovy194_21ba924
	add r0, r4, #0
	bl sub_021B7BE4
_021BE1A6:
	pop {r4, pc}
	.align 2, 0
_021BE1A8: .word ovy194_21ba924
	thumb_func_end ovy194_21be18c

	thumb_func_start ovy194_21be1ac
ovy194_21be1ac: ; 0x021BE1AC
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r0, _021BE1DC ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BE1E0 ; =ovy194_21be124
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BE1DC: .word 0x000011F1
_021BE1E0: .word ovy194_21be124
	thumb_func_end ovy194_21be1ac

	thumb_func_start ovy194_21be1e4
ovy194_21be1e4: ; 0x021BE1E4
	push {r4, r5, r6, lr}
	ldr r6, _021BE22C ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BE228
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r0, #0
	str r0, [r5, r6]
	cmp r4, #0
	bne _021BE21A
	ldr r1, _021BE230 ; =ovy194_21be1ac
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BE21A:
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r1, _021BE234 ; =ovy194_21be18c
	add r0, r5, #0
	bl sub_021B7BE4
_021BE228:
	pop {r4, r5, r6, pc}
	nop
_021BE22C: .word 0x0000064C
_021BE230: .word ovy194_21be1ac
_021BE234: .word ovy194_21be18c
	thumb_func_end ovy194_21be1e4

	thumb_func_start ovy194_21be238
ovy194_21be238: ; 0x021BE238
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BE268
	ldr r0, _021BE26C ; =0x021C64D8
	add r1, sp, #4
	ldr r2, [r0]
	ldr r0, [r0, #4]
	mov r3, #0x20
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	bl ovy194_21c0120
	ldr r1, _021BE270 ; =ovy194_21be1e4
	add r0, r4, #0
	bl sub_021B7BE4
_021BE268:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021BE26C: .word 0x021C64D8
_021BE270: .word ovy194_21be1e4
	thumb_func_end ovy194_21be238

	thumb_func_start ovy194_21be274
ovy194_21be274: ; 0x021BE274
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r0, r4, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BE2B2
	add r0, r4, #0
	bl ovy194_21bbee4
	cmp r0, #0
	beq _021BE2B2
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x8a
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	ldr r1, _021BE2B4 ; =ovy194_21be238
	add r0, r4, #0
	bl sub_021B7BE4
_021BE2B2:
	pop {r4, pc}
	.align 2, 0
_021BE2B4: .word ovy194_21be238
	thumb_func_end ovy194_21be274

	thumb_func_start ovy194_21be2b8
ovy194_21be2b8: ; 0x021BE2B8
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x89
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	add r0, r4, #0
	bl ovy194_21bfe34
	ldr r0, _021BE2E8 ; =0x000011F1
	mov r1, #0x78
	strb r1, [r4, r0]
	ldr r1, _021BE2EC ; =ovy194_21be274
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BE2E8: .word 0x000011F1
_021BE2EC: .word ovy194_21be274
	thumb_func_end ovy194_21be2b8

	thumb_func_start ovy194_21be2f0
ovy194_21be2f0: ; 0x021BE2F0
	push {r4, r5, r6, lr}
	ldr r6, _021BE338 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021BE334
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r5, #0
	bl ovy194_21bfe9c
	mov r0, #0
	str r0, [r5, r6]
	cmp r4, #0
	bne _021BE326
	ldr r1, _021BE33C ; =ovy194_21be2b8
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BE326:
	add r0, r5, #0
	bl ovy194_21bfe9c
	ldr r1, _021BE340 ; =ovy194_21ba924
	add r0, r5, #0
	bl sub_021B7BE4
_021BE334:
	pop {r4, r5, r6, pc}
	nop
_021BE338: .word 0x0000064C
_021BE33C: .word ovy194_21be2b8
_021BE340: .word ovy194_21ba924
	thumb_func_end ovy194_21be2f0

	thumb_func_start ovy194_21be344
ovy194_21be344: ; 0x021BE344
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BE374
	ldr r0, _021BE378 ; =0x021C64F0
	add r1, sp, #4
	ldr r2, [r0]
	ldr r0, [r0, #4]
	mov r3, #0x20
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	bl ovy194_21c0120
	ldr r1, _021BE37C ; =ovy194_21be2f0
	add r0, r4, #0
	bl sub_021B7BE4
_021BE374:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021BE378: .word 0x021C64F0
_021BE37C: .word ovy194_21be2f0
	thumb_func_end ovy194_21be344

	thumb_func_start ovy194_21be380
ovy194_21be380: ; 0x021BE380
	push {r4, lr}
	mov r2, #0x72
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #0x88
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_021BFE28
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_02199D08
	ldr r1, _021BE3B8 ; =ovy194_21be344
	add r0, r4, #0
	bl sub_021B7BE4
	add r0, r4, #0
	bl ovy194_21c14b0
	pop {r4, pc}
	.align 2, 0
_021BE3B8: .word ovy194_21be344
	thumb_func_end ovy194_21be380

	thumb_func_start ovy194_21be3bc
ovy194_21be3bc: ; 0x021BE3BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ovy194_21b7854
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy194_21b786c
	add r6, r0, #0
	ldr r0, _021BE450 ; =0x00000F7C
	ldr r1, [r5, r0]
	cmp r1, r6
	bne _021BE3EC
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r4
	bne _021BE3EC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BE3EC:
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE420
	ldr r3, _021BE454 ; =0x00000FBC
	mov r1, #0
	sub r3, #0x18
	sub r7, r1, #1
_021BE3FE:
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r2, [r0, r3]
	cmp r2, r7
	beq _021BE418
	cmp r6, r2
	bne _021BE418
	ldr r2, _021BE454 ; =0x00000FBC
	ldr r0, [r0, r2]
	cmp r4, r0
	bne _021BE418
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BE418:
	add r1, r1, #1
	cmp r1, #3
	blt _021BE3FE
	b _021BE44A
_021BE420:
	ldr r2, _021BE458 ; =0x00000F84
	ldr r0, [r5, r2]
	cmp r0, r6
	bne _021BE44A
	add r0, r2, #4
	ldr r0, [r5, r0]
	cmp r0, r4
	bne _021BE44A
	add r0, r2, #0
	sub r0, #8
	mov r1, #0
	ldr r0, [r5, r0]
	mvn r1, r1
	cmp r0, r1
	bne _021BE44A
	sub r0, r2, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	bne _021BE44A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BE44A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE450: .word 0x00000F7C
_021BE454: .word 0x00000FBC
_021BE458: .word 0x00000F84
	thumb_func_end ovy194_21be3bc

	thumb_func_start ovy194_21be45c
ovy194_21be45c: ; 0x021BE45C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy194_21b7854
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy194_21b786c
	ldr r1, _021BE490 ; =0x00000F94
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021BE48A
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, r6
	bne _021BE48A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BE48A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE490: .word 0x00000F94
	thumb_func_end ovy194_21be45c

	thumb_func_start ovy194_21be494
ovy194_21be494: ; 0x021BE494
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DA2C
	cmp r0, #0
	bne _021BE4A8
	ldr r1, _021BE4AC ; =ovy194_21ba924
	add r0, r4, #0
	bl sub_021B7BE4
_021BE4A8:
	pop {r4, pc}
	nop
_021BE4AC: .word ovy194_21ba924
	thumb_func_end ovy194_21be494

	thumb_func_start ovy194_21be4b0
ovy194_21be4b0: ; 0x021BE4B0
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021BE524 ; =0x00000F98
	add r4, r0, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ovy194_21bc0f0
	str r0, [sp]
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BE4E0
	bl sub_02040440
	ldr r1, _021BE528 ; =0x00000C0B
	mov r2, #4
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BE520
_021BE4E0:
	mov r0, #0
	ldr r2, _021BE52C ; =0x00000F84
	mvn r0, r0
	str r0, [r4, r2]
	add r1, r2, #4
	str r0, [r4, r1]
	add r1, r2, #0
	sub r1, #8
	str r0, [r4, r1]
	sub r1, r2, #4
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r2, #0x14
	str r0, [r4, r2]
	ldr r2, [sp]
	cmp r2, r0
	beq _021BE518
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21bc29c
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl ovy194_21c50d8
_021BE518:
	ldr r1, _021BE530 ; =ovy194_21be494
	add r0, r4, #0
	bl sub_021B7BE4
_021BE520:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BE524: .word 0x00000F98
_021BE528: .word 0x00000C0B
_021BE52C: .word 0x00000F84
_021BE530: .word ovy194_21be494
	thumb_func_end ovy194_21be4b0

	thumb_func_start ovy194_21be534
ovy194_21be534: ; 0x021BE534
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE550
	mov r4, #0
_021BE542:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c551c
	add r4, r4, #1
	cmp r4, #4
	blt _021BE542
_021BE550:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21be534

	thumb_func_start ovy194_21be554
ovy194_21be554: ; 0x021BE554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE574
	mov r4, #0
_021BE564:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021C5594
	add r4, r4, #1
	cmp r4, #4
	blt _021BE564
_021BE574:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21be554

	thumb_func_start ovy194_21be578
ovy194_21be578: ; 0x021BE578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE594
	mov r4, #0
_021BE586:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c55ac
	add r4, r4, #1
	cmp r4, #4
	blt _021BE586
_021BE594:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy194_21be578

	thumb_func_start ovy194_21be598
ovy194_21be598: ; 0x021BE598
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE608
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	beq _021BE608
	ldr r0, [sp, #8]
	cmp r0, #8
	blo _021BE608
	cmp r0, #0x68
	bhs _021BE608
	ldr r1, [sp, #4]
	cmp r1, #0x90
	blo _021BE608
	cmp r1, #0xa8
	bhs _021BE608
	sub r0, #8
	mov r1, #0x18
	blx sub_0208D868
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #4
	blo _021BE5DC
	mov r0, #3
	strb r0, [r1]
_021BE5DC:
	add r5, sp, #0
	ldrb r1, [r5]
	add r0, r4, #0
	bl sub_021C55C8
	ldrb r1, [r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy194_21be648
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BE608
	bl sub_02040440
	ldr r1, _021BE60C ; =0x00000C0D
	mov r2, #1
	add r3, sp, #0
	bl sub_02042BE8
_021BE608:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BE60C: .word 0x00000C0D
	thumb_func_end ovy194_21be598

	thumb_func_start ovy194_21be610
ovy194_21be610: ; 0x021BE610
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE640
	ldr r6, _021BE644 ; =0x000011E4
	mov r4, #0
_021BE620:
	add r1, r5, r4
	ldrb r0, [r1, r6]
	cmp r0, #0
	beq _021BE63A
	sub r0, r0, #1
	strb r0, [r1, r6]
	ldrb r0, [r1, r6]
	cmp r0, #0
	bne _021BE63A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c56b8
_021BE63A:
	add r4, r4, #1
	cmp r4, #2
	blt _021BE620
_021BE640:
	pop {r4, r5, r6, pc}
	nop
_021BE644: .word 0x000011E4
	thumb_func_end ovy194_21be610

	thumb_func_start ovy194_21be648
ovy194_21be648: ; 0x021BE648
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE67C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy194_21c55e4
	add r1, r5, r4
	ldr r0, _021BE680 ; =0x000011E4
	mov r2, #0x3c
	ldr r4, _021BE684 ; =0x0000054A
	strb r2, [r1, r0]
	add r0, r4, #0
	bl sub_020062C4
	cmp r0, #0
	bne _021BE67C
	add r0, r4, #0
	bl sub_02006254
_021BE67C:
	pop {r4, r5, r6, pc}
	nop
_021BE680: .word 0x000011E4
_021BE684: .word 0x0000054A
	thumb_func_end ovy194_21be648

	thumb_func_start ovy194_21be688
ovy194_21be688: ; 0x021BE688
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE6AA
	mov r4, #0
_021BE696:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c56b8
	add r4, r4, #1
	cmp r4, #2
	blt _021BE696
	add r0, r5, #0
	bl ovy194_21c466c
_021BE6AA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21be688

	thumb_func_start ovy194_21be6ac
ovy194_21be6ac: ; 0x021BE6AC
	push {r4, lr}
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BE6BE
	add r0, r4, #0
	bl ovy194_21c4600
_021BE6BE:
	pop {r4, pc}
	thumb_func_end ovy194_21be6ac

	thumb_func_start ovy194_21be6c0
ovy194_21be6c0: ; 0x021BE6C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r4, r1, #0
	bl ovy194_21c510c
	ldr r0, _021BE71C ; =0x000011E2
	add r1, r5, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021BE6EA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c1740
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c24dc
_021BE6EA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21c5d10
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21c1530
	mov r7, #1
	mov r0, #1
	bl sub_02045B7C
	sub r2, r7, r4
	str r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	str r7, [sp, #4]
	bl ovy194_21c24ac
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE71C: .word 0x000011E2
	thumb_func_end ovy194_21be6c0

	thumb_func_start ovy194_21be720
ovy194_21be720: ; 0x021BE720
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _021BE78C ; =0x000011E2
	add r5, r0, #0
	mov r4, #0
_021BE72A:
	add r6, r5, r4
	ldrb r0, [r6, r7]
	cmp r0, #0
	beq _021BE780
	sub r0, r0, #1
	strb r0, [r6, r7]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy194_21c510c
	ldrb r0, [r6, r7]
	cmp r0, #0
	bne _021BE780
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c1740
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	lsl r2, r4, #0x1c
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21c24dc
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy194_21c510c
_021BE780:
	add r4, r4, #1
	cmp r4, #2
	blt _021BE72A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BE78C: .word 0x000011E2
	thumb_func_end ovy194_21be720

	thumb_func_start ovy194_21be790
ovy194_21be790: ; 0x021BE790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02040440
	add r7, r0, #0
	ldr r0, _021BE800 ; =0x000011FB
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021BE7B0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BE7B0:
	bl sub_0201C2C8
	add r2, r0, #0
	add r0, r6, #0
	ldr r6, _021BE804 ; =0x0000106C
	ldr r1, [r5, r6]
	blx MI_CpuCopy8
	bl sub_0201C2C8
	add r3, r0, #0
	ldr r0, [r5, r6]
	lsl r2, r4, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r6, #1
	add r0, r7, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r6, [sp, #0xc]
	bl sub_02042C18
	cmp r0, #0
	bne _021BE7EA
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BE7EA:
	ldr r0, _021BE800 ; =0x000011FB
	ldrb r1, [r5, r0]
	mov r0, #0xf
	bic r1, r0
	ldr r0, _021BE800 ; =0x000011FB
	orr r1, r6
	strb r1, [r5, r0]
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE800: .word 0x000011FB
_021BE804: .word 0x0000106C
	thumb_func_end ovy194_21be790

	thumb_func_start ovy194_21be808
ovy194_21be808: ; 0x021BE808
	push {r4, r5, r6, lr}
	sub sp, #0xc8
	ldr r4, _021BE83C ; =0x021C6648
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #0x19
_021BE814:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021BE814
	mov r4, #0
	add r6, sp, #0
_021BE820:
	lsl r0, r4, #3
	add r1, r6, r0
	ldr r0, [r1, #4]
	cmp r5, r0
	bne _021BE830
	ldr r0, [r1]
	bl sub_02006254
_021BE830:
	add r4, r4, #1
	cmp r4, #0x19
	blo _021BE820
	add sp, #0xc8
	pop {r4, r5, r6, pc}
	nop
_021BE83C: .word 0x021C6648
	thumb_func_end ovy194_21be808

	thumb_func_start ovy194_21be840
ovy194_21be840: ; 0x021BE840
	push {r4, r5, r6, lr}
	sub sp, #0xb0
	ldr r4, _021BE874 ; =0x021C6598
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #0x16
_021BE84C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021BE84C
	mov r4, #0
	add r6, sp, #0
_021BE858:
	lsl r0, r4, #3
	add r1, r6, r0
	ldr r0, [r1, #4]
	cmp r5, r0
	bne _021BE868
	ldr r0, [r1]
	bl sub_02006254
_021BE868:
	add r4, r4, #1
	cmp r4, #0x16
	blo _021BE858
	add sp, #0xb0
	pop {r4, r5, r6, pc}
	nop
_021BE874: .word 0x021C6598
	thumb_func_end ovy194_21be840

	thumb_func_start ovy194_21be878
ovy194_21be878: ; 0x021BE878
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r4, _021BE8E8 ; =0x021C6558
	add r3, sp, #0x30
	add r5, r0, #0
	add r2, r1, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r6, _021BE8EC ; =0x021C6568
	add r4, sp, #0
	mov r3, #6
_021BE892:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021BE892
	ldr r0, _021BE8F0 ; =0x000011EF
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _021BE8E2
	sub r0, r0, #2
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _021BE8C8
	mov r4, #0
	add r6, sp, #0x30
_021BE8AE:
	lsl r0, r4, #3
	add r1, r6, r0
	ldr r0, [r1, #4]
	cmp r5, r0
	bne _021BE8BE
	ldr r0, [r1]
	bl sub_02006254
_021BE8BE:
	add r4, r4, #1
	cmp r4, #2
	blo _021BE8AE
	add sp, #0x40
	pop {r4, r5, r6, pc}
_021BE8C8:
	mov r4, #0
	add r6, sp, #0
_021BE8CC:
	lsl r0, r4, #3
	add r1, r6, r0
	ldr r0, [r1, #4]
	cmp r5, r0
	bne _021BE8DC
	ldr r0, [r1]
	bl sub_02006254
_021BE8DC:
	add r4, r4, #1
	cmp r4, #6
	blo _021BE8CC
_021BE8E2:
	add sp, #0x40
	pop {r4, r5, r6, pc}
	nop
_021BE8E8: .word 0x021C6558
_021BE8EC: .word 0x021C6568
_021BE8F0: .word 0x000011EF
	thumb_func_end ovy194_21be878

	thumb_func_start ovy194_21be8f4
ovy194_21be8f4: ; 0x021BE8F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r7, sp, #0
	add r4, r1, #0
	add r1, r7, #0
	add r6, r2, #0
	bl sub_0201AB0C
	mov r0, #0
	add r1, r5, #0
	str r0, [r5, #8]
	add r0, r6, #0
	add r1, #0x28
	mov r2, #0xc
	str r4, [r5, #4]
	blx MI_CpuCopy8
	add r5, #0x1c
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xc
	blx MI_CpuCopy8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21be8f4

	thumb_func_start ovy194_21be92c
ovy194_21be92c: ; 0x021BE92C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xd2
	str r0, [sp]
	add r0, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r3, _021BE958 ; =0x021C6EF4
	mov r1, #0x38
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r1, r6, #0
	add r2, r7, #0
	str r5, [r4]
	bl ovy194_21be8f4
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE958: .word 0x021C6EF4
	thumb_func_end ovy194_21be92c

	thumb_func_start ovy194_21be95c
ovy194_21be95c: ; 0x021BE95C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xe7
	str r0, [sp]
	add r0, sp, #0x20
	add r6, r3, #0
	add r7, r1, #0
	str r2, [sp, #4]
	ldrh r0, [r0]
	ldr r3, _021BE994 ; =0x021C6EF4
	mov r1, #0x38
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r2, [sp, #4]
	add r1, r7, #0
	str r5, [r4]
	bl ovy194_21be8f4
	mov r0, #0
	str r0, [r4, #0xc]
	str r6, [r4, #0x34]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE994: .word 0x021C6EF4
	thumb_func_end ovy194_21be95c

	thumb_func_start ovy194_21be998
ovy194_21be998: ; 0x021BE998
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #4]
	sub r0, r6, r5
	add r7, r3, #0
	blx sub_0208D65C
	ldr r1, [r4, #8]
	mul r1, r0
	add r0, r5, r1
	ldrh r1, [r4, #0x16]
	cmp r1, #0
	beq _021BE9C8
	cmp r7, #0
	beq _021BE9C8
	ldrh r0, [r4, #0x14]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BE9CC ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	lsl r0, r0, #3
	add r0, r6, r0
_021BE9C8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE9CC: .word FX_SinCosTable_
	thumb_func_end ovy194_21be998

	thumb_func_start ovy194_21be9d0
ovy194_21be9d0: ; 0x021BE9D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #8]
	ldr r3, [r5, #0x34]
	add r2, r1, #0
	mov r0, #0xc
	mul r2, r0
	add r0, r3, r2
	ldr r2, [r3, r2]
	ldr r1, [r5, #0x1c]
	add r1, r2, r1
	str r1, [sp]
	ldr r2, [r0, #4]
	ldr r1, [r5, #0x20]
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, sp, #0
	bl sub_0201AB24
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ovy194_21be878
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy194_21be9d0

	thumb_func_start ovy194_21bea10
ovy194_21bea10: ; 0x021BEA10
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	beq _021BEAA8
	ldr r2, [r4, #8]
	add r3, r2, #1
	ldr r2, [r4, #4]
	str r3, [r4, #8]
	cmp r2, r3
	blt _021BEAA8
	cmp r2, r3
	beq _021BEA9E
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _021BEA36
	bl ovy194_21be9d0
	add sp, #0x18
	pop {r4, pc}
_021BEA36:
	ldr r0, [r4]
	add r1, sp, #0
	bl sub_0201AB0C
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	add r2, r4, #0
	mov r3, #0
	bl ovy194_21be998
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x16]
	cmp r1, #0
	beq _021BEA76
	ldr r1, [sp]
	sub r0, r1, r0
	blx sub_0208D374
	ldr r1, _021BEAAC ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021BEAB0 ; =0x43BB0000
	blx sub_0208DD34
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	ldrh r1, [r4, #0x14]
	lsr r0, r0, #0x10
	sub r0, r1, r0
	strh r0, [r4, #0x14]
_021BEA76:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x2c]
	add r2, r4, #0
	mov r3, #1
	bl ovy194_21be998
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x30]
	add r2, r4, #0
	mov r3, #0
	bl ovy194_21be998
	str r0, [sp, #0x14]
	ldr r0, [r4]
	add r1, sp, #0xc
	bl sub_0201AB24
	add sp, #0x18
	pop {r4, pc}
_021BEA9E:
	ldr r0, [r4]
	add r4, #0x28
	add r1, r4, #0
	bl sub_0201AB24
_021BEAA8:
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021BEAAC: .word 0x45800000
_021BEAB0: .word 0x43BB0000
	thumb_func_end ovy194_21bea10

	thumb_func_start ovy194_21beab4
ovy194_21beab4: ; 0x021BEAB4
	push {r3, r4, r5, lr}
	ldr r5, _021BEAC8 ; =0x00000844
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0201ACE0
	mov r0, #1
	add r5, #0x10
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BEAC8: .word 0x00000844
	thumb_func_end ovy194_21beab4

	thumb_func_start ovy194_21beacc
ovy194_21beacc: ; 0x021BEACC
	push {r3, lr}
	cmp r0, #0
	beq _021BEAD6
	bl sub_0203A24C
_021BEAD6:
	pop {r3, pc}
	thumb_func_end ovy194_21beacc

	thumb_func_start sub_021BEAD8
sub_021BEAD8: ; 0x021BEAD8
	ldr r2, _021BEAE0 ; =0x00000F2C
	str r1, [r0, r2]
	bx lr
	nop
_021BEAE0: .word 0x00000F2C
	thumb_func_end sub_021BEAD8

	thumb_func_start ovy194_21beae4
ovy194_21beae4: ; 0x021BEAE4
	push {r3, r4, r5, lr}
	ldr r5, _021BEB08 ; =0x000011F8
	add r4, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021BEB06
	bl sub_02005F0C
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	strb r0, [r4, r5]
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x3c
	bl sub_02005E68
_021BEB06:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BEB08: .word 0x000011F8
	thumb_func_end ovy194_21beae4

	thumb_func_start ovy194_21beb0c
ovy194_21beb0c: ; 0x021BEB0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005F0C
	ldr r0, _021BEB20 ; =0x000011F8
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_021BEB20: .word 0x000011F8
	thumb_func_end ovy194_21beb0c

	thumb_func_start ovy194_21beb24
ovy194_21beb24: ; 0x021BEB24
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005F0C
	ldr r0, _021BEB44 ; =0x000011F8
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x18
	bl sub_02005E68
	pop {r4, pc}
	nop
_021BEB44: .word 0x000011F8
	thumb_func_end ovy194_21beb24

	thumb_func_start ovy194_21beb48
ovy194_21beb48: ; 0x021BEB48
	push {r4, r5, r6, lr}
	ldr r4, _021BEBD8 ; =0x000009C4
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	bl sub_021C2C64
	ldr r2, _021BEBDC ; =0x000005F4
	mov r0, #0x55
	ldrh r2, [r5, r2]
	lsl r0, r0, #2
	mov r1, #0
	mov r6, #0
	bl sub_0204BF1C
	str r0, [r5, r4]
	ldr r4, _021BEBE0 ; =0x0000118C
	ldr r0, [r5, r4]
	cmp r0, #5
	bne _021BEB8E
	add r0, r5, #0
	bl ovy194_21beae4
	ldr r0, [r5, #8]
	mov r1, #3
	str r1, [r0, #8]
	ldr r1, _021BEBE4 ; =ovy194_21b8194
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BEB8E:
	cmp r0, #6
	bne _021BEBA8
	add r0, r5, #0
	bl ovy194_21beae4
	ldr r0, [r5, #8]
	mov r1, #3
	str r1, [r0, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
_021BEBA8:
	add r0, r5, #0
	bl ovy194_21bfedc
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r5, r0]
	add r4, #0x6c
	add r0, r0, #1
	strb r0, [r5, r4]
	mov r0, #6
	bl sub_02005EA0
	ldr r0, _021BEBE8 ; =0x00000F2C
	ldr r1, _021BEBEC ; =ovy194_21bebf0
	str r6, [r5, r0]
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BEBD8: .word 0x000009C4
_021BEBDC: .word 0x000005F4
_021BEBE0: .word 0x0000118C
_021BEBE4: .word ovy194_21b8194
_021BEBE8: .word 0x00000F2C
_021BEBEC: .word ovy194_21bebf0
	thumb_func_end ovy194_21beb48

	thumb_func_start ovy194_21bebf0
ovy194_21bebf0: ; 0x021BEBF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BECC8 ; =0x00000F2C
	ldr r0, [r5, r0]
	cmp r0, #6
	blt _021BECC6
	ldr r0, _021BECCC ; =0x00000518
	ldr r1, _021BECD0 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #6
	bl sub_02005E68
	ldr r0, _021BECD4 ; =0x0000118C
	ldr r1, [r5, r0]
	cmp r1, #7
	bne _021BEC1C
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	mov r1, #0x9a
	b _021BEC44
_021BEC1C:
	cmp r1, #8
	bne _021BEC2A
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	mov r1, #0x9d
	b _021BEC44
_021BEC2A:
	add r0, #0x62
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021BEC3C
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	mov r1, #0x84
	b _021BEC44
_021BEC3C:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	mov r1, #0x30
_021BEC44:
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BEC5C
	add r0, r5, #0
	mov r1, #0
	b _021BEC60
_021BEC5C:
	add r0, r5, #0
	mov r1, #1
_021BEC60:
	bl ovy194_21b7d04
	ldr r6, _021BECD8 ; =0x00000724
	add r2, r0, #0
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_02024464
	ldr r4, _021BECDC ; =0x00000834
	ldr r0, [r5, r6]
	ldr r2, [r5, r4]
	mov r1, #0
	mov r7, #0
	bl sub_020245A8
	add r1, r4, #0
	sub r1, #0xfc
	sub r4, #0xf8
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl sub_02024920
	ldr r4, _021BECE0 ; =0x000005F4
	mov r0, #6
	ldrh r3, [r5, r4]
	mov r1, #0xf
	mov r2, #0
	bl sub_02024D20
	add r4, #0x50
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy194_21bfdf8
	add r0, r5, #0
	mov r1, #0
	bl sub_021BEAD8
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	ldr r0, _021BECC8 ; =0x00000F2C
	ldr r1, _021BECE4 ; =ovy194_21bece8
	str r7, [r5, r0]
	add r0, r5, #0
	bl sub_021B7BE4
_021BECC6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BECC8: .word 0x00000F2C
_021BECCC: .word 0x00000518
_021BECD0: .word 0x0000FFFF
_021BECD4: .word 0x0000118C
_021BECD8: .word 0x00000724
_021BECDC: .word 0x00000834
_021BECE0: .word 0x000005F4
_021BECE4: .word ovy194_21bece8
	thumb_func_end ovy194_21bebf0

	thumb_func_start ovy194_21bece8
ovy194_21bece8: ; 0x021BECE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021BED74 ; =0x00000F2C
	add r5, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #0xc8
	blt _021BED72
	bl sub_021B7808
	cmp r0, #0
	beq _021BED02
	add r0, r5, #0
	mov r1, #0
	b _021BED06
_021BED02:
	add r0, r5, #0
	mov r1, #1
_021BED06:
	bl ovy194_21b7d04
	ldr r6, _021BED78 ; =0x00000724
	add r2, r0, #0
	ldr r0, [r5, r6]
	mov r1, #1
	mov r7, #1
	bl sub_02024464
	ldr r4, _021BED7C ; =0x00000834
	ldr r0, [r5, r6]
	ldr r2, [r5, r4]
	mov r1, #0
	bl sub_020245A8
	ldr r0, _021BED80 ; =0x0000118C
	ldr r1, [r5, r0]
	cmp r1, #7
	beq _021BED6A
	cmp r1, #8
	beq _021BED6A
	add r0, #0x62
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021BED40
	sub r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0x85
	b _021BED46
_021BED40:
	sub r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0x31
_021BED46:
	add r2, r4, #0
	sub r2, #0xf8
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	add r1, r4, #0
	sub r1, #0xfc
	sub r4, #0xf8
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl sub_02024920
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ovy194_21bfdf8
_021BED6A:
	ldr r1, _021BED84 ; =ovy194_21bed88
	add r0, r5, #0
	bl sub_021B7BE4
_021BED72:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BED74: .word 0x00000F2C
_021BED78: .word 0x00000724
_021BED7C: .word 0x00000834
_021BED80: .word 0x0000118C
_021BED84: .word ovy194_21bed88
	thumb_func_end ovy194_21bece8

	thumb_func_start ovy194_21bed88
ovy194_21bed88: ; 0x021BED88
	push {r4, lr}
	ldr r1, _021BEDA4 ; =0x00000F2C
	add r4, r0, #0
	ldr r2, [r4, r1]
	ldr r1, _021BEDA8 ; =0x0000010E
	cmp r2, r1
	blt _021BEDA2
	bl ovy194_21beb24
	ldr r1, _021BEDAC ; =ovy194_21bedb0
	add r0, r4, #0
	bl sub_021B7BE4
_021BEDA2:
	pop {r4, pc}
	.align 2, 0
_021BEDA4: .word 0x00000F2C
_021BEDA8: .word 0x0000010E
_021BEDAC: .word ovy194_21bedb0
	thumb_func_end ovy194_21bed88

	thumb_func_start ovy194_21bedb0
ovy194_21bedb0: ; 0x021BEDB0
	push {r4, lr}
	ldr r1, _021BEDD0 ; =0x00000F2C
	add r4, r0, #0
	ldr r2, [r4, r1]
	mov r1, #0x69
	lsl r1, r1, #2
	cmp r2, r1
	blt _021BEDCE
	mov r1, #0
	bl sub_021BEAD8
	ldr r1, _021BEDD4 ; =ovy194_21bf6ec
	add r0, r4, #0
	bl sub_021B7BE4
_021BEDCE:
	pop {r4, pc}
	.align 2, 0
_021BEDD0: .word 0x00000F2C
_021BEDD4: .word ovy194_21bf6ec
	thumb_func_end ovy194_21bedb0

	thumb_func_start ovy194_21bedd8
ovy194_21bedd8: ; 0x021BEDD8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x17
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021BEDF4
	ldr r1, _021BEDF8 ; =ovy194_21bf784
	add r0, r4, #0
	bl sub_021B7BE4
_021BEDF4:
	pop {r4, pc}
	nop
_021BEDF8: .word ovy194_21bf784
	thumb_func_end ovy194_21bedd8

	thumb_func_start ovy194_21bedfc
ovy194_21bedfc: ; 0x021BEDFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _021BEF00 ; =0x0000082C
	ldr r0, [r5, r0]
	bl sub_02017934
	bl sub_02009B78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BEE2E
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	b _021BEE40
_021BEE2E:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
_021BEE40:
	add r6, r0, #0
	ldr r0, _021BEF00 ; =0x0000082C
	ldr r0, [r5, r0]
	bl sub_0201736C
	add r1, sp, #0
	bl sub_02008B34
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BEE66
	ldr r1, _021BEF04 ; =0x0000028A
	add r0, sp, #0
	strh r1, [r0, #0x20]
	b _021BEE74
_021BEE66:
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r1, sp, #0
	strh r0, [r1, #0x20]
_021BEE74:
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BEE8C
	ldr r1, _021BEF04 ; =0x0000028A
	add r0, sp, #0
	strh r1, [r0, #0x22]
	b _021BEE9A
_021BEE8C:
	add r0, r6, #0
	mov r1, #5
	add r2, r7, #0
	bl sub_0201CCF8
	add r1, sp, #0
	strh r0, [r1, #0x22]
_021BEE9A:
	add r0, r4, #0
	bl sub_02009D44
	add r6, sp, #0x20
	strb r0, [r6, #4]
	add r0, r4, #0
	bl sub_02009CA0
	strb r0, [r6, #5]
	add r0, r4, #0
	bl sub_02009D28
	ldrb r2, [r6, #6]
	mov r1, #7
	bic r2, r1
	mov r1, #7
	and r0, r1
	orr r0, r2
	strb r0, [r6, #6]
	add r0, r5, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BEEF4
	bl sub_02040440
	ldr r1, _021BEF08 ; =0x00000C12
	mov r2, #0x28
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021BEEFC
	bl sub_02040440
	mov r1, #0x17
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BEF0C ; =ovy194_21bedd8
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021BEEF4:
	ldr r1, _021BEF10 ; =ovy194_21bfa7c
	add r0, r5, #0
	bl sub_021B7BE4
_021BEEFC:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BEF00: .word 0x0000082C
_021BEF04: .word 0x0000028A
_021BEF08: .word 0x00000C12
_021BEF0C: .word ovy194_21bedd8
_021BEF10: .word ovy194_21bfa7c
	thumb_func_end ovy194_21bedfc

	thumb_func_start ovy194_21bef14
ovy194_21bef14: ; 0x021BEF14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_02017934
	add r5, r0, #0
	bl sub_02009B5C
	add r1, r0, #0
	ldr r0, _021BEF50 ; =0x000001AF
	ldr r3, _021BEF54 ; =0x021C6F30
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_02009B5C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02009B78
	add r1, r4, #0
	add r2, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BEF50: .word 0x000001AF
_021BEF54: .word 0x021C6F30
	thumb_func_end ovy194_21bef14

	thumb_func_start ovy194_21bef58
ovy194_21bef58: ; 0x021BEF58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02017934
	bl sub_02009B78
	add r4, r0, #0
	bl sub_02009B5C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21bef58

	thumb_func_start ovy194_21bef7c
ovy194_21bef7c: ; 0x021BEF7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200D15C
	add r1, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021BEFB8 ; =0x021C6F30
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_0200D15C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0200D190
	add r1, r4, #0
	add r2, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BEFB8: .word 0x021C6F30
	thumb_func_end ovy194_21bef7c

	thumb_func_start ovy194_21befbc
ovy194_21befbc: ; 0x021BEFBC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200D190
	add r4, r0, #0
	bl sub_0200D15C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21befbc

	thumb_func_start ovy194_21befdc
ovy194_21befdc: ; 0x021BEFDC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200A4B8
	add r1, r0, #0
	ldr r0, _021BF014 ; =0x000001E9
	ldr r3, _021BF018 ; =0x021C6F30
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_0200A4B8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017980
	add r1, r4, #0
	add r2, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BF014: .word 0x000001E9
_021BF018: .word 0x021C6F30
	thumb_func_end ovy194_21befdc

	thumb_func_start ovy194_21bf01c
ovy194_21bf01c: ; 0x021BF01C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02017980
	add r4, r0, #0
	bl sub_0200A4B8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21bf01c

	thumb_func_start ovy194_21bf03c
ovy194_21bf03c: ; 0x021BF03C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021BF0AC ; =0x0000060C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF04C
	bl sub_0203A24C
_021BF04C:
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF05A
	bl sub_0203A24C
_021BF05A:
	ldr r0, _021BF0B0 ; =0x00000614
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF066
	bl sub_0203A24C
_021BF066:
	ldr r0, _021BF0B4 ; =0x00000618
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF072
	bl sub_0203A24C
_021BF072:
	ldr r0, _021BF0B8 ; =0x0000061C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF07E
	bl sub_0203A24C
_021BF07E:
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF08C
	bl sub_0203A24C
_021BF08C:
	ldr r0, _021BF0BC ; =0x00000624
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF098
	bl sub_0203A24C
_021BF098:
	ldr r0, _021BF0AC ; =0x0000060C
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x24
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, _021BF0C0 ; =0x000011F7
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BF0AC: .word 0x0000060C
_021BF0B0: .word 0x00000614
_021BF0B4: .word 0x00000618
_021BF0B8: .word 0x0000061C
_021BF0BC: .word 0x00000624
_021BF0C0: .word 0x000011F7
	thumb_func_end ovy194_21bf03c

	thumb_func_start ovy194_21bf0c4
ovy194_21bf0c4: ; 0x021BF0C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BF1C8 ; =0x0000060C
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _021BF0F6
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r6, [r5, r0]
	add r0, r6, #0
	bl sub_02017934
	add r0, r6, #0
	bl sub_02009790
	add r6, r0, #0
	bl sub_020097A0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	bl sub_0203A24C
_021BF0F6:
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _021BF11E
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r0, [r5, r0]
	bl sub_02017994
	add r6, r0, #0
	bl sub_020093D0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	bl sub_0203A24C
_021BF11E:
	ldr r0, _021BF1D0 ; =0x00000614
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021BF12E
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r0, [r5, r0]
	bl ovy194_21bef58
_021BF12E:
	ldr r0, _021BF1D4 ; =0x00000618
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021BF13E
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r0, [r5, r0]
	bl ovy194_21befbc
_021BF13E:
	ldr r0, _021BF1D8 ; =0x0000061C
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021BF14E
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r0, [r5, r0]
	bl ovy194_21bf01c
_021BF14E:
	mov r6, #0x62
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BF17C
	ldr r4, _021BF1DC ; =0x00000838
	ldr r1, [r5, r4]
	bl sub_020200AC
	sub r4, #0xc
	ldr r0, [r5, r4]
	bl sub_02017A40
	add r1, r6, #0
	add r1, #8
	add r1, r5, r1
	bl sub_02008D98
	ldr r0, [r5, r6]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r6]
_021BF17C:
	ldr r6, _021BF1E0 ; =0x00000624
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BF1A6
	bl sub_02007E0C
	ldr r1, [r5, #8]
	add r4, r0, #0
	ldr r0, _021BF1E4 ; =0x00000828
	ldrh r1, [r1, #0x28]
	ldr r0, [r5, r0]
	bl sub_02007E14
	add r1, r0, #0
	ldr r0, [r5, r6]
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [r5, r6]
	bl sub_0203A24C
_021BF1A6:
	ldr r0, _021BF1E8 ; =0x0000062C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BF1BA
	ldr r0, _021BF1CC ; =0x0000082C
	ldr r0, [r5, r0]
	bl sub_02017A0C
	bl sub_02007E7C
_021BF1BA:
	ldr r0, _021BF1C8 ; =0x0000060C
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BF1C8: .word 0x0000060C
_021BF1CC: .word 0x0000082C
_021BF1D0: .word 0x00000614
_021BF1D4: .word 0x00000618
_021BF1D8: .word 0x0000061C
_021BF1DC: .word 0x00000838
_021BF1E0: .word 0x00000624
_021BF1E4: .word 0x00000828
_021BF1E8: .word 0x0000062C
	thumb_func_end ovy194_21bf0c4

	thumb_func_start ovy194_21bf1ec
ovy194_21bf1ec: ; 0x021BF1EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, _021BF270 ; =0x0000082C
	str r2, [sp]
	ldr r0, [r0, r1]
	mov r4, #0
	bl sub_02017A0C
	str r0, [sp, #4]
	bl sub_02007E70
	cmp r0, #0
	bne _021BF20E
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BF20E:
	add r0, r6, #0
	bl sub_0201FDF8
	add r7, r0, #0
	add r5, r4, #0
	cmp r7, #0
	ble _021BF23A
_021BF21C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, _021BF274 ; =0x000001B9
	cmp r0, r1
	bne _021BF234
	add r4, r4, #1
_021BF234:
	add r5, r5, #1
	cmp r5, r7
	blt _021BF21C
_021BF23A:
	cmp r4, #1
	beq _021BF244
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BF244:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	ldr r1, _021BF274 ; =0x000001B9
	cmp r0, r1
	bne _021BF268
	ldr r0, [sp, #4]
	bl sub_02007E74
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BF268:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BF270: .word 0x0000082C
_021BF274: .word 0x000001B9
	thumb_func_end ovy194_21bf1ec

	thumb_func_start ovy194_21bf278
ovy194_21bf278: ; 0x021BF278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BF288
	b _021BF3B0
_021BF288:
	ldr r5, _021BF5DC ; =0x000005F4
	ldr r6, _021BF5E0 ; =0x0000082C
	ldrh r0, [r4, r5]
	str r0, [sp, #0xc]
	ldr r0, [r4, r6]
	str r0, [sp, #0x10]
	bl sub_020097A0
	ldr r7, _021BF5E4 ; =0x00000172
	add r1, r0, #0
	str r7, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021BF5E8 ; =0x021C6F1C
	mov r2, #0
	bl sub_0203A1FC
	str r0, [sp, #0x18]
	bl sub_020097A0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	bl sub_02009790
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	blx MI_CpuCopy8
	add r1, r5, #0
	ldr r0, [sp, #0x18]
	add r1, #0x18
	str r0, [r4, r1]
	ldrh r0, [r4, r5]
	str r0, [sp, #4]
	ldr r0, [r4, r6]
	str r0, [sp, #8]
	bl sub_020093D0
	add r7, #0x1f
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [sp, #4]
	ldr r3, _021BF5EC ; =0x021C6F08
	mov r2, #0
	bl sub_0203A1FC
	add r7, r0, #0
	bl sub_020093D0
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl sub_02017994
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	add r0, #0x1c
	str r7, [r4, r0]
	ldrh r1, [r4, r5]
	ldr r0, [r4, r6]
	bl ovy194_21bef14
	add r1, r5, #0
	add r1, #0x20
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	ldr r0, [r4, r6]
	bl ovy194_21bef7c
	add r1, r5, #0
	add r1, #0x24
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	ldr r0, [r4, r6]
	bl ovy194_21befdc
	add r1, r5, #0
	add r1, #0x28
	str r0, [r4, r1]
	ldr r0, [r4, r6]
	bl sub_02017A40
	add r1, r5, #0
	add r1, #0x34
	add r1, r4, r1
	bl sub_02008D90
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_02007968
	ldr r1, [r4, #8]
	ldrh r1, [r1, #0x28]
	cmp r1, r0
	bne _021BF374
	ldrh r0, [r4, r5]
	bl sub_0201FD00
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x2c
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_020200AC
	ldr r2, [r4, #8]
	add r6, #0xc
	ldrh r2, [r2, #0x2a]
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy194_21bf1ec
	add r5, #0x38
	str r0, [r4, r5]
	b _021BF3D2
_021BF374:
	bl sub_02007DC0
	add r1, r0, #0
	mov r0, #0xa
	lsl r0, r0, #6
	str r0, [sp]
	ldrh r0, [r4, r5]
	ldr r3, _021BF5F0 ; =0x021C6F30
	mov r2, #0
	bl sub_0203A1FC
	add r1, r5, #0
	add r1, #0x30
	str r0, [r4, r1]
	bl sub_02007DC0
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r5, #0x30
	sub r0, r6, #4
	ldrh r1, [r1, #0x28]
	ldr r5, [r4, r5]
	ldr r0, [r4, r0]
	bl sub_02007E14
	add r1, r5, #0
	add r2, r7, #0
	blx MI_CpuCopy8
	b _021BF3D2
_021BF3B0:
	ldr r5, _021BF5F4 ; =0x00000828
	ldr r6, [r4, #8]
	ldr r0, [r4, r5]
	bl sub_02007968
	ldrh r1, [r6, #0x28]
	cmp r1, r0
	bne _021BF3CC
	add r5, #0x10
	ldrh r2, [r6, #0x2a]
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy194_21bf1ec
_021BF3CC:
	ldr r0, _021BF5F8 ; =0x000011F7
	mov r1, #1
	strb r1, [r4, r0]
_021BF3D2:
	ldr r6, _021BF5F4 ; =0x00000828
	ldr r5, [r4, #8]
	ldr r0, [r4, r6]
	bl sub_02007968
	ldrh r1, [r5, #0x28]
	cmp r1, r0
	beq _021BF45C
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_0201FF08
	mov r1, #6
	mov r2, #0
	add r5, r0, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #0
	beq _021BF45C
	add r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_02009790
	mov r1, #0
	add r7, r0, #0
	bl sub_020097C4
	str r0, [sp, #0x24]
	mov r0, #6
	sub r1, r0, #7
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _021BF45C
	ldr r0, _021BF5DC ; =0x000005F4
	ldrh r0, [r4, r0]
	bl sub_020096B8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa7
	add r2, r6, #0
	bl sub_0201CCF8
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	mov r1, #0
	add r3, r6, #0
	bl sub_020097E0
	add r0, r6, #0
	bl sub_0200965C
	add r0, r5, #0
	mov r1, #0xa7
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl sub_0203A24C
_021BF45C:
	ldr r0, _021BF5FC ; =0x00000834
	ldr r0, [r4, r0]
	bl sub_02008C0C
	add r5, r0, #0
	ldr r0, _021BF5FC ; =0x00000834
	ldr r0, [r4, r0]
	bl sub_02008C10
	add r6, r0, #0
	ldr r0, _021BF5FC ; =0x00000834
	ldr r0, [r4, r0]
	bl sub_02008C04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202B57C
	add r7, r0, #0
	ldr r0, _021BF5FC ; =0x00000834
	ldr r0, [r4, r0]
	bl sub_02008C04
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202B590
	cmp r5, r7
	bne _021BF49E
	cmp r6, r0
	beq _021BF4AA
_021BF49E:
	ldr r0, _021BF5FC ; =0x00000834
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_02008C14
_021BF4AA:
	ldr r6, _021BF5E0 ; =0x0000082C
	ldr r0, [r4, r6]
	bl sub_02017980
	add r1, r6, #0
	add r1, #8
	ldr r1, [r4, r1]
	bl sub_0200A504
	add r6, #8
	ldr r0, [r4, r6]
	mov r5, #0
	bl sub_02008BFC
	cmp r0, #0x14
	beq _021BF4CE
	cmp r0, #0x16
	bne _021BF4D0
_021BF4CE:
	mov r5, #1
_021BF4D0:
	cmp r5, #0
	beq _021BF4E6
	ldr r0, _021BF5E0 ; =0x0000082C
	ldr r0, [r4, r0]
	bl sub_02017934
	bl sub_0200FB40
	mov r1, #0xa5
	bl sub_0200F98C
_021BF4E6:
	ldr r5, _021BF5E0 ; =0x0000082C
	ldr r0, [r4, r5]
	bl sub_02017934
	bl sub_02009B78
	str r0, [sp, #0x14]
	add r0, r5, #4
	ldr r0, [r4, r0]
	add r5, #8
	str r0, [sp, #0x30]
	ldr r0, [r4, r5]
	mov r6, #0
	str r0, [sp, #0x34]
_021BF502:
	lsl r1, r6, #2
	add r0, sp, #0x30
	ldr r5, [r0, r1]
	cmp r5, #0
	beq _021BF53C
	add r0, r5, #0
	bl sub_02008C0C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02008C10
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl sub_02008C04
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	add r1, r7, #0
	bl sub_02009BA4
	cmp r0, #0
	bne _021BF53C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	add r1, r7, #0
	mov r3, #1
	bl sub_02009BE0
_021BF53C:
	add r6, r6, #1
	cmp r6, #2
	blt _021BF502
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl sub_0201FF08
	add r5, r0, #0
	ldr r0, _021BF5E0 ; =0x0000082C
	ldr r0, [r4, r0]
	bl sub_02017994
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02020EC8
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021BF576
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x46
	bl sub_0201CD1C
_021BF576:
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BF59A
	ldr r0, _021BF5DC ; =0x000005F4
	mov r2, #0x83
	ldrh r0, [r4, r0]
	lsl r2, r2, #4
	ldr r3, _021BF600 ; =0x00007533
	str r0, [sp]
	ldr r2, [r4, r2]
	add r0, r5, #0
	mov r1, #6
	bl sub_02035964
_021BF59A:
	ldr r0, _021BF604 ; =0x0000118C
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _021BF5CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BF5AE: ; jump table
	.short _021BF5C2 - _021BF5AE - 2 ; case 0
	.short _021BF5BC - _021BF5AE - 2 ; case 1
	.short _021BF5B6 - _021BF5AE - 2 ; case 2
	.short _021BF5B6 - _021BF5AE - 2 ; case 3
_021BF5B6:
	add r0, r6, #0
	mov r1, #0x10
	b _021BF5C6
_021BF5BC:
	add r0, r6, #0
	mov r1, #0xc
	b _021BF5C6
_021BF5C2:
	add r0, r6, #0
	mov r1, #0x24
_021BF5C6:
	bl sub_020095A0
_021BF5CA:
	ldr r6, _021BF5E0 ; =0x0000082C
	ldr r0, [r4, r6]
	bl sub_0200D190
	add r1, r5, #0
	bl sub_0200D568
	ldr r0, _021BF604 ; =0x0000118C
	b _021BF608
	.align 2, 0
_021BF5DC: .word 0x000005F4
_021BF5E0: .word 0x0000082C
_021BF5E4: .word 0x00000172
_021BF5E8: .word 0x021C6F1C
_021BF5EC: .word 0x021C6F08
_021BF5F0: .word 0x021C6F30
_021BF5F4: .word 0x00000828
_021BF5F8: .word 0x000011F7
_021BF5FC: .word 0x00000834
_021BF600: .word 0x00007533
_021BF604: .word 0x0000118C
_021BF608:
	ldr r0, [r4, r0]
	cmp r0, #3
	bne _021BF618
	ldr r0, [r4, r6]
	bl sub_02017980
	bl sub_0200A5CC
_021BF618:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _021BF650
	add r0, r5, #0
	mov r1, #0x6f
	add r2, r6, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021BF650
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201C864
	ldr r0, _021BF6E0 ; =0x0000082C
	ldr r0, [r4, r0]
	bl sub_0200D190
	add r1, r5, #0
	bl sub_0200D568
_021BF650:
	ldr r6, _021BF6E4 ; =0x00000828
	ldr r7, [r4, #8]
	ldr r0, [r4, r6]
	bl sub_02007968
	ldrh r1, [r7, #0x28]
	cmp r1, r0
	bne _021BF66E
	add r6, #0x10
	ldrh r1, [r7, #0x2a]
	ldr r0, [r4, r6]
	add r2, r5, #0
	bl sub_0201FF14
	b _021BF682
_021BF66E:
	ldr r7, [r4, #8]
	add r0, r5, #0
	bl sub_0201D624
	add r3, r0, #0
	ldrh r1, [r7, #0x28]
	ldrh r2, [r7, #0x2a]
	ldr r0, [r4, r6]
	bl sub_02007870
_021BF682:
	ldr r0, _021BF6E8 ; =0x0000118C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BF6B0
	cmp r0, #1
	beq _021BF6B0
	cmp r0, #2
	bne _021BF6DC
	ldr r0, _021BF6E0 ; =0x0000082C
	ldr r0, [r4, r0]
	bl sub_02017238
	mov r1, #1
	str r1, [sp]
	ldr r1, [r4, #8]
	mov r2, #0
	ldrh r1, [r1, #0x2c]
	mov r3, #0
	sub r1, r1, #1
	bl sub_0200A2D4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021BF6B0:
	ldr r5, _021BF6E0 ; =0x0000082C
	ldr r0, [r4, r5]
	bl sub_02017238
	add r1, r5, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r2, sp, #0x2c
	bl sub_0200A438
	cmp r0, #0
	beq _021BF6DC
	ldr r0, [r4, r5]
	bl sub_02017238
	mov r1, #1
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	mov r2, #0
	mov r3, #0
	bl sub_0200A2D4
_021BF6DC:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF6E0: .word 0x0000082C
_021BF6E4: .word 0x00000828
_021BF6E8: .word 0x0000118C
	thumb_func_end ovy194_21bf278

	thumb_func_start ovy194_21bf6ec
ovy194_21bf6ec: ; 0x021BF6EC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ovy194_21c24dc
	add r0, r4, #0
	mov r1, #1
	bl ovy194_21c24dc
	add r0, r4, #0
	mov r1, #2
	bl ovy194_21c24dc
	add r0, r4, #0
	mov r1, #3
	bl ovy194_21c24dc
	ldr r0, _021BF74C ; =0x0000118C
	ldr r1, [r4, r0]
	cmp r1, #4
	beq _021BF71C
	sub r0, r1, #7
	cmp r0, #1
	bhi _021BF732
_021BF71C:
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	add r0, r4, #0
	bl ovy194_21beae4
	ldr r1, _021BF750 ; =ovy194_21b8194
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BF732:
	sub r0, r1, #1
	cmp r0, #2
	bhi _021BF742
	ldr r1, _021BF754 ; =ovy194_21bedfc
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BF742:
	ldr r1, _021BF758 ; =ovy194_21bf784
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	.align 2, 0
_021BF74C: .word 0x0000118C
_021BF750: .word ovy194_21b8194
_021BF754: .word ovy194_21bedfc
_021BF758: .word ovy194_21bf784
	thumb_func_end ovy194_21bf6ec

	thumb_func_start ovy194_21bf75c
ovy194_21bf75c: ; 0x021BF75C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BF778
	ldr r0, _021BF77C ; =0x00000F2C
	ldr r0, [r4, r0]
	cmp r0, #0xb4
	ble _021BF778
	ldr r1, _021BF780 ; =ovy194_21bf868
	add r0, r4, #0
	bl sub_021B7BE4
_021BF778:
	pop {r4, pc}
	nop
_021BF77C: .word 0x00000F2C
_021BF780: .word ovy194_21bf868
	thumb_func_end ovy194_21bf75c

	thumb_func_start ovy194_21bf784
ovy194_21bf784: ; 0x021BF784
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021B7808
	cmp r0, #0
	beq _021BF7BC
	mov r7, #0xfa
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	mov r1, #3
	blx sub_0208D65C
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r6, r0, #0
	lsl r0, r4, #2
	add r1, r7, #0
	add r0, r5, r0
	add r1, #0x1c
	ldr r2, [r0, r1]
	ldr r1, [r5, #8]
	strh r2, [r1, #0x28]
	add r1, r7, #4
	ldr r1, [r0, r1]
	b _021BF7D2
_021BF7BC:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r6, r0, #0
	ldr r0, _021BF854 ; =0x00000F88
	ldr r1, [r5, #8]
	ldr r2, [r5, r0]
	sub r0, r0, #4
	strh r2, [r1, #0x28]
	ldr r1, [r5, r0]
_021BF7D2:
	ldr r0, [r5, #8]
	strh r1, [r0, #0x2a]
	ldr r0, [r5, #8]
	mov r1, #6
	ldr r0, [r0, #0x1c]
	bl sub_0201FD34
	ldr r0, [r5, #8]
	add r1, r6, #0
	ldr r0, [r0, #0x1c]
	bl sub_0201FD6C
	ldr r7, _021BF858 ; =0x0000082C
	ldr r0, [r5, r7]
	bl sub_0200D190
	add r1, r6, #0
	bl sub_0200D568
	sub r0, r7, #4
	ldr r4, [r5, #8]
	ldr r0, [r5, r0]
	bl sub_02007968
	ldrh r1, [r4, #0x28]
	cmp r1, r0
	beq _021BF84A
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r4, #0
	bl sub_0201FF08
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #0
	beq _021BF84A
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x6b
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	ldr r1, _021BF85C ; =ovy194_21bf75c
	add r0, r5, #0
	bl sub_021B7BE4
	ldr r0, _021BF860 ; =0x00000F2C
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021BF84A:
	ldr r1, _021BF864 ; =ovy194_21bf868
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF854: .word 0x00000F88
_021BF858: .word 0x0000082C
_021BF85C: .word ovy194_21bf75c
_021BF860: .word 0x00000F2C
_021BF864: .word ovy194_21bf868
	thumb_func_end ovy194_21bf784

	thumb_func_start ovy194_21bf868
ovy194_21bf868: ; 0x021BF868
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r1, _021BF924 ; =0x0000082C
	add r5, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021BF87A
	ldr r1, _021BF928 ; =ovy194_21bfa7c
	b _021BF916
_021BF87A:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021BF8F6
	bl sub_021B7808
	cmp r0, #0
	beq _021BF89C
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	b _021BF8AE
_021BF89C:
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21b7d04
_021BF8AE:
	add r4, r0, #0
	ldr r0, _021BF924 ; =0x0000082C
	ldr r0, [r5, r0]
	bl sub_020173AC
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _021BF92C ; =0x000005F4
	add r1, r6, #0
	ldrh r0, [r5, r0]
	mov r2, #1
	add r3, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #1
	bl sub_02020788
	cmp r0, #0
	beq _021BF8F6
	ldr r1, [r5, #8]
	str r6, [r1, #8]
	ldr r1, [r5, #8]
	str r0, [r1, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #8]
	str r1, [r0, #0x10]
	ldr r1, _021BF930 ; =ovy194_21b8194
	add r0, r5, #0
	bl sub_021B7BE4
	add r0, r5, #0
	bl ovy194_21beb0c
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021BF8F6:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x32
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	ldr r1, _021BF934 ; =ovy194_21bf9a8
	add r0, r5, #0
_021BF916:
	bl sub_021B7BE4
	add r0, r5, #0
	bl ovy194_21beae4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BF924: .word 0x0000082C
_021BF928: .word ovy194_21bfa7c
_021BF92C: .word 0x000005F4
_021BF930: .word ovy194_21b8194
_021BF934: .word ovy194_21bf9a8
	thumb_func_end ovy194_21bf868

	thumb_func_start ovy194_21bf938
ovy194_21bf938: ; 0x021BF938
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy194_21bfedc
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x18
	ldr r2, [r5, r2]
	mov r1, #0x32
	bl GFL_MsgDataLoadStrbuf
	ldr r4, _021BF9A0 ; =0x000005F4
	mov r0, #6
	ldrh r3, [r5, r4]
	mov r1, #0xf
	mov r2, #0
	bl sub_02024D20
	add r1, r4, #0
	add r1, #0x50
	str r0, [r5, r1]
	add r0, r5, #0
	bl sub_021BFE28
	add r0, r5, #0
	bl ovy194_21bfe34
	add r0, r5, #0
	mov r1, #0
	bl sub_021BEAD8
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	ldrh r1, [r5, r4]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204E060
	ldr r1, _021BF9A4 ; =ovy194_21bf9a8
	add r0, r5, #0
	bl sub_021B7BE4
	pop {r3, r4, r5, pc}
	nop
_021BF9A0: .word 0x000005F4
_021BF9A4: .word ovy194_21bf9a8
	thumb_func_end ovy194_21bf938

	thumb_func_start ovy194_21bf9a8
ovy194_21bf9a8: ; 0x021BF9A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x18
	mov r2, #8
	bl sub_02040624
	ldr r1, _021BF9C4 ; =ovy194_21bf9c8
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
	nop
_021BF9C4: .word ovy194_21bf9c8
	thumb_func_end ovy194_21bf9a8

	thumb_func_start ovy194_21bf9c8
ovy194_21bf9c8: ; 0x021BF9C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x18
	mov r2, #8
	bl sub_02040664
	cmp r0, #0
	beq _021BF9E4
	ldr r1, _021BF9E8 ; =ovy194_21bf9ec
	add r0, r4, #0
	bl sub_021B7BE4
_021BF9E4:
	pop {r4, pc}
	nop
_021BF9E8: .word ovy194_21bf9ec
	thumb_func_end ovy194_21bf9c8

	thumb_func_start ovy194_21bf9ec
ovy194_21bf9ec: ; 0x021BF9EC
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c00b0
	cmp r0, #0
	beq _021BFA2E
	add r0, r4, #0
	bl ovy194_21b7784
	cmp r0, #0
	beq _021BFA26
	add r0, r4, #0
	bl ovy194_21bf278
	ldr r0, _021BFA30 ; =0x000005F4
	ldr r1, _021BFA34 ; =0x0000082C
	ldrh r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021BFA38 ; =ovy194_21bf03c
	add r3, r4, #0
	bl sub_02012F1C
	ldr r1, _021BFA3C ; =0x00000EF8
	str r0, [r4, r1]
	ldr r1, _021BFA40 ; =ovy194_21bfa48
	add r0, r4, #0
	bl sub_021B7BE4
	pop {r4, pc}
_021BFA26:
	ldr r1, _021BFA44 ; =ovy194_21bfa7c
	add r0, r4, #0
	bl sub_021B7BE4
_021BFA2E:
	pop {r4, pc}
	.align 2, 0
_021BFA30: .word 0x000005F4
_021BFA34: .word 0x0000082C
_021BFA38: .word ovy194_21bf03c
_021BFA3C: .word 0x00000EF8
_021BFA40: .word ovy194_21bfa48
_021BFA44: .word ovy194_21bfa7c
	thumb_func_end ovy194_21bf9ec

	thumb_func_start ovy194_21bfa48
ovy194_21bfa48: ; 0x021BFA48
	push {r3, r4, r5, lr}
	ldr r5, _021BFA74 ; =0x00000EF8
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_02012F5C
	cmp r0, #0
	beq _021BFA70
	add r0, r4, #0
	bl ovy194_21bf0c4
	ldr r0, [r4, r5]
	bl sub_02012F8C
	mov r0, #0
	str r0, [r4, r5]
	ldr r1, _021BFA78 ; =ovy194_21bfa7c
	add r0, r4, #0
	bl sub_021B7BE4
_021BFA70:
	pop {r3, r4, r5, pc}
	nop
_021BFA74: .word 0x00000EF8
_021BFA78: .word ovy194_21bfa7c
	thumb_func_end ovy194_21bfa48

	thumb_func_start ovy194_21bfa7c
ovy194_21bfa7c: ; 0x021BFA7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021BFAB4 ; =0x000005F4
	mov r1, #0
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r4, #0
	bl sub_020279B4
	ldr r0, _021BFAB8 ; =0x00000F2C
	ldr r1, _021BFABC ; =ovy194_21bfac4
	str r4, [r5, r0]
	ldr r0, _021BFAC0 ; =0x000011F7
	strb r4, [r5, r0]
	add r0, r5, #0
	bl sub_021B7BE4
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021BFAB4: .word 0x000005F4
_021BFAB8: .word 0x00000F2C
_021BFABC: .word ovy194_21bfac4
_021BFAC0: .word 0x000011F7
	thumb_func_end ovy194_21bfa7c

	thumb_func_start ovy194_21bfac4
ovy194_21bfac4: ; 0x021BFAC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BFB90 ; =0x00000F2C
	ldr r0, [r5, r0]
	cmp r0, #6
	blt _021BFB8E
	bl sub_02027ACC
	cmp r0, #0
	beq _021BFB8E
	ldr r0, _021BFB94 ; =0x00000644
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _021BFAF0
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #6
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
_021BFAF0:
	ldr r4, _021BFB94 ; =0x00000644
	mov r6, #0
	mov r0, #0
	str r6, [r5, r4]
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r7, _021BFB98 ; =0x000009C4
	ldr r0, [r5, r7]
	bl sub_0204BF98
	add r2, r4, #0
	sub r2, #0x50
	mov r0, #0x55
	ldrh r2, [r5, r2]
	lsl r0, r0, #2
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, r7]
	add r0, r5, #0
	bl ovy194_21bfe70
	add r0, r5, #0
	bl ovy194_21c45a8
	add r0, r5, #0
	bl ovy194_21c41d0
	mov r0, #0
	bl sub_021C45EC
	add r0, r5, #0
	bl ovy194_21c4484
	add r0, r5, #0
	bl ovy194_21c46a4
	add r0, r5, #0
	bl ovy194_21c3480
	add r0, r5, #0
	bl ovy194_21c3224
	add r0, r5, #0
	bl ovy194_21c2c84
	add r0, r5, #0
	bl ovy194_21c2de8
	add r0, r5, #0
	bl ovy194_21c2d78
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c200c
	mov r0, #0x1f
	bl sub_02046D38
	mov r0, #0x1e
	bl sub_02046DC0
	add r0, r5, #0
	bl ovy194_21c2a24
	sub r4, #0x50
	ldrh r1, [r5, r4]
	mov r0, #1
	bl sub_02042BA8
	ldr r0, _021BFB9C ; =0x000011FA
	ldr r1, _021BFBA0 ; =ovy194_21b9a38
	strb r6, [r5, r0]
	add r0, r5, #0
	bl sub_021B7BE4
_021BFB8E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFB90: .word 0x00000F2C
_021BFB94: .word 0x00000644
_021BFB98: .word 0x000009C4
_021BFB9C: .word 0x000011FA
_021BFBA0: .word ovy194_21b9a38
	thumb_func_end ovy194_21bfac4

	thumb_func_start ovy194_21bfba4
ovy194_21bfba4: ; 0x021BFBA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BFBBC
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl sub_02199A44
_021BFBBC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21bfba4

	thumb_func_start ovy194_21bfbc0
ovy194_21bfbc0: ; 0x021BFBC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r2, #0xae
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r6, r3, #0
	mov r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x48]
	str r7, [sp, #0xc]
	str r0, [sp, #8]
	bl sub_0202D7E0
	str r0, [sp, #0x10]
	bl sub_0202D7E4
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0202D7F4
	str r0, [sp, #0x18]
	mov r0, #2
	bl sub_0202D7F8
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0202D7FC
	str r0, [sp, #0x20]
	mov r1, #8
	add r0, sp, #8
	strb r1, [r0, #0x1c]
	strb r7, [r0, #0x1d]
	mov r1, #3
	strb r1, [r0, #0x1e]
	add r3, sp, #0x40
	ldrh r3, [r3, #0xc]
	add r0, r5, #0
	add r1, sp, #8
	add r2, r6, #0
	bl sub_021999C8
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r7, [sp]
	add r0, sp, #0x40
	ldrh r0, [r0, #0xc]
	add r1, r6, #0
	lsr r2, r2, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl sub_02199A5C
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_0202D7E8
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21bfbc0

	thumb_func_start ovy194_21bfc50
ovy194_21bfc50: ; 0x021BFC50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BFC68
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl sub_02199A44
_021BFC68:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21bfc50

	thumb_func_start ovy194_21bfc6c
ovy194_21bfc6c: ; 0x021BFC6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	mov r1, #0x98
	mov r2, #0
	add r7, r3, #0
	bl sub_0201CCF8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy194_21bfc50
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_0202D7E0
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0202D91C
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0202D928
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #2
	bl sub_0202D934
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #2
	bl sub_0202D93C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x4c]
	add r1, sp, #8
	strb r0, [r1, #0x1c]
	mov r0, #0
	strb r0, [r1, #0x1d]
	mov r0, #1
	strb r0, [r1, #0x1e]
	add r4, sp, #0x40
	ldrh r3, [r4, #8]
	add r0, r5, #0
	add r1, sp, #8
	add r2, r6, #0
	bl sub_021999C8
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r4, #8]
	ldr r3, [sp, #0x40]
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	str r0, [r5, #0x10]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21bfc6c

	thumb_func_start ovy194_21bfcf8
ovy194_21bfcf8: ; 0x021BFCF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ovy194_21bfe70
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _021BFDE8 ; =0x000005F4
	mov r3, #7
	ldrh r0, [r5, r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #6
	bl sub_0204B0B8
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r0, #6
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020480C0
	ldr r4, _021BFDEC ; =0x0000071C
	add r6, r0, #0
	str r6, [r5, r4]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	cmp r7, #0
	bne _021BFDA6
	bl sub_02017BCC
	add r1, r4, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	add r3, #0x1c
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021BFDE8 ; =0x000005F4
	mov r1, #0
	ldrh r0, [r5, r0]
	mov r2, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r3, [r5, r3]
	add r0, r6, #0
	bl sub_02022268
	add r4, #0x10
	str r0, [r5, r4]
	ldr r0, _021BFDF0 ; =0x000011D4
	mov r1, #2
	add r0, r5, r0
	bl sub_0202E678
	b _021BFDC0
_021BFDA6:
	add r0, r6, #0
	bl sub_020484F4
	add r1, r4, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r4, #0x1c
	str r1, [sp]
	ldr r3, [r5, r4]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
_021BFDC0:
	ldr r2, _021BFDF4 ; =0x00000644
	add r0, r6, #0
	ldr r2, [r5, r2]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_02024E80
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	mov r0, #6
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFDE8: .word 0x000005F4
_021BFDEC: .word 0x0000071C
_021BFDF0: .word 0x000011D4
_021BFDF4: .word 0x00000644
	thumb_func_end ovy194_21bfcf8

	thumb_func_start ovy194_21bfdf8
ovy194_21bfdf8: ; 0x021BFDF8
	push {r3, lr}
	sub sp, #8
	cmp r2, #0
	beq _021BFE14
	mov r2, #0x1e
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #1
	mov r3, #0x12
	bl ovy194_21bfcf8
	add sp, #8
	pop {r3, pc}
_021BFE14:
	mov r2, #0x1e
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #1
	mov r3, #1
	bl ovy194_21bfcf8
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy194_21bfdf8

	thumb_func_start sub_021BFE28
sub_021BFE28: ; 0x021BFE28
	ldr r3, _021BFE30 ; =ovy194_21bfdf8
	mov r1, #0
	mov r2, #0
	bx r3
	.align 2, 0
_021BFE30: .word ovy194_21bfdf8
	thumb_func_end sub_021BFE28

	thumb_func_start ovy194_21bfe34
ovy194_21bfe34: ; 0x021BFE34
	push {r3, r4, r5, lr}
	mov r5, #0x5f
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BFE4A
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021BFE4A:
	ldr r5, _021BFE68 ; =0x000005F4
	ldr r1, _021BFE6C ; =0x00000744
	ldrh r0, [r4, r5]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	ldr r0, [r4, r1]
	sub r1, #0x28
	ldr r1, [r4, r1]
	bl sub_02035660
	sub r1, r5, #4
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_021BFE68: .word 0x000005F4
_021BFE6C: .word 0x00000744
	thumb_func_end ovy194_21bfe34

	thumb_func_start ovy194_21bfe70
ovy194_21bfe70: ; 0x021BFE70
	push {r3, r4, r5, lr}
	mov r5, #0x5f
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BFE86
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021BFE86:
	ldr r5, _021BFE98 ; =0x0000071C
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BFE96
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BFE96:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BFE98: .word 0x0000071C
	thumb_func_end ovy194_21bfe70

	thumb_func_start ovy194_21bfe9c
ovy194_21bfe9c: ; 0x021BFE9C
	push {r3, r4, r5, lr}
	mov r5, #0x5f
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BFEB2
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021BFEB2:
	ldr r5, _021BFED8 ; =0x0000071C
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BFED6
	bl sub_020484B4
	mov r0, #6
	bl sub_02045B7C
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_021BFED6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BFED8: .word 0x0000071C
	thumb_func_end ovy194_21bfe9c

	thumb_func_start ovy194_21bfedc
ovy194_21bfedc: ; 0x021BFEDC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _021BFFA4 ; =0x000005F4
	add r5, r0, #0
	ldrh r0, [r5, r6]
	bl sub_020241D4
	ldr r4, _021BFFA8 ; =0x00000724
	mov r1, #2
	str r0, [r5, r4]
	ldrh r3, [r5, r6]
	mov r0, #0
	mov r2, #0xb1
	bl sub_0204875C
	sub r1, r4, #4
	str r0, [r5, r1]
	ldrh r0, [r5, r6]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x80
	bl sub_02048530
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x80
	bl sub_02048530
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x80
	bl sub_02048530
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x80
	bl sub_02048530
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r0, [r5, r6]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldrh r0, [r5, r6]
	mov r2, #2
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	ldrh r3, [r5, r6]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	bl sub_0202E7A4
	add r1, r4, #0
	add r1, #0x28
	str r0, [r5, r1]
	ldrh r0, [r5, r6]
	add r3, r4, #0
	add r2, r4, #4
	str r0, [sp]
	add r3, #0x1c
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	mov r0, #6
	mov r1, #9
	bl sub_0202E168
	sub r4, #0x74
	str r0, [r5, r4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BFFA4: .word 0x000005F4
_021BFFA8: .word 0x00000724
	thumb_func_end ovy194_21bfedc

	thumb_func_start ovy194_21bffac
ovy194_21bffac: ; 0x021BFFAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020056C8
	ldr r4, _021C009C ; =0x00000744
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C0098
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0202E818
	add r0, r5, #0
	bl ovy194_21bfe70
	add r0, r5, #0
	bl ovy194_21c00fc
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BFFE6
	bl sub_020223CC
	mov r0, #0
	sub r4, #0x18
	str r0, [r5, r4]
_021BFFE6:
	ldr r4, _021C00A0 ; =0x00000648
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BFFF6
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, r4]
_021BFFF6:
	mov r4, #0x6b
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C0008
	bl sub_0202E1DC
	mov r0, #0
	str r0, [r5, r4]
_021C0008:
	ldr r4, _021C00A4 ; =0x000006B4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C0018
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021C0018:
	ldr r7, _021C00A8 ; =0x000005BC
	mov r4, #0
_021C001C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021C002E
	bl sub_02048210
	mov r0, #0
	str r0, [r6, r7]
_021C002E:
	add r4, r4, #1
	cmp r4, #2
	blt _021C001C
	ldr r4, _021C00AC ; =0x00000724
	ldr r0, [r5, r4]
	bl sub_02024274
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_020487D4
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_0203A83C
	mov r0, #0
	add r4, #0x20
	str r0, [r5, r4]
_021C0098:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C009C: .word 0x00000744
_021C00A0: .word 0x00000648
_021C00A4: .word 0x000006B4
_021C00A8: .word 0x000005BC
_021C00AC: .word 0x00000724
	thumb_func_end ovy194_21bffac

	thumb_func_start ovy194_21c00b0
ovy194_21c00b0: ; 0x021C00B0
	push {r4, r5, r6, lr}
	ldr r3, _021C00F4 ; =0x0000072C
	add r5, r0, #0
	ldr r1, [r5, r3]
	mov r4, #1
	cmp r1, #0
	beq _021C00EE
	add r0, r3, #0
	sub r0, #0x10
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _021C00D0
	add r3, #0x20
	ldr r0, [r5, r3]
	bl sub_0202E8D8
_021C00D0:
	ldr r6, _021C00F4 ; =0x0000072C
	ldr r0, _021C00F8 ; =0x000011D4
	ldr r1, [r5, r6]
	add r0, r5, r0
	bl sub_0202E68C
	add r4, r0, #0
	beq _021C00EE
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021C00EE
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r6]
_021C00EE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021C00F4: .word 0x0000072C
_021C00F8: .word 0x000011D4
	thumb_func_end ovy194_21c00b0

	thumb_func_start ovy194_21c00fc
ovy194_21c00fc: ; 0x021C00FC
	push {r4, r5, r6, lr}
	ldr r4, _021C0118 ; =0x0000064C
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C0116
	ldr r0, _021C011C ; =0x04000050
	mov r6, #0
	strh r6, [r0]
	ldr r0, [r5, r4]
	bl sub_0202DA54
	str r6, [r5, r4]
_021C0116:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C0118: .word 0x0000064C
_021C011C: .word 0x04000050
	thumb_func_end ovy194_21c00fc

	thumb_func_start ovy194_21c0120
ovy194_21c0120: ; 0x021C0120
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, _021C020C ; =0x000005F4
	str r1, [sp]
	str r0, [sp, #8]
	ldrh r0, [r5, r0]
	add r1, sp, #0x20
	str r2, [sp, #4]
	str r0, [sp, #0x20]
	add r0, r2, #0
	strb r0, [r1, #4]
	ldr r0, [sp, #8]
	mov r6, #0
	add r0, #0x5c
	add r0, r5, r0
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	strb r3, [r1, #0x10]
	strb r0, [r1, #0x11]
	mov r0, #0xd
	strb r0, [r1, #0x12]
	mov r0, #3
	strb r0, [r1, #0x13]
	add r0, r2, #0
	cmp r0, #0
	ble _021C01D4
	ldr r0, [sp, #8]
	str r0, [sp, #0x1c]
	add r0, #0x64
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	add r0, #0x64
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r0, #0x5c
	str r0, [sp, #8]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	sub r0, #0xd0
	str r0, [sp, #0x10]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	sub r0, #0xcc
	str r0, [sp, #0xc]
_021C018A:
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r6
	add r4, r5, r0
	mov r0, #0x64
	bl sub_02048530
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x10]
	str r0, [r4, r1]
	mov r0, #0x72
	lsl r0, r0, #4
	ldr r1, [sp]
	lsl r7, r6, #2
	ldr r0, [r5, r0]
	ldr r1, [r1, r7]
	ldr r2, [r4, r2]
	bl GFL_MsgDataLoadStrbuf
	ldr r1, _021C0210 ; =0x000039E3
	ldr r0, [sp, #0xc]
	strh r1, [r4, r0]
	ldr r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #5
	bne _021C01C6
	mov r1, #1
	ldr r0, [sp, #0x18]
	b _021C01CA
_021C01C6:
	ldr r0, [sp, #0x1c]
	mov r1, #0
_021C01CA:
	str r1, [r4, r0]
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _021C018A
_021C01D4:
	mov r6, #0x6b
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	add r0, sp, #0x20
	bl sub_0202D974
	add r1, r6, #0
	sub r1, #0x64
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _021C0206
	mov r7, #0xc
	sub r6, #0x60
_021C01F2:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048564
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021C01F2
_021C0206:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021C020C: .word 0x000005F4
_021C0210: .word 0x000039E3
	thumb_func_end ovy194_21c0120

	thumb_func_start ovy194_21c0214
ovy194_21c0214: ; 0x021C0214
	push {r3, lr}
	cmp r2, #1
	bne _021C0226
	mov r3, #0x15
	str r3, [sp]
	mov r3, #0x20
	bl ovy194_21c0120
	pop {r3, pc}
_021C0226:
	mov r3, #0x18
	str r3, [sp]
	mov r3, #0x20
	bl ovy194_21c0120
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy194_21c0214

	thumb_func_start ovy194_21c0234
ovy194_21c0234: ; 0x021C0234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x28]
	cmp r0, #0
	bne _021C02AC
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021C0274
	mov r2, #0x72
	mov r0, #0x72
	lsl r2, r2, #4
	lsl r0, r0, #4
	add r2, #0x14
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x1c
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_020243F4
	b _021C0298
_021C0274:
	mov r2, #0x72
	mov r0, #0x72
	lsl r2, r2, #4
	lsl r0, r0, #4
	add r2, #0x14
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x1d
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_02024464
_021C0298:
	ldr r2, _021C02D8 ; =0x00000724
	add r1, r2, #0
	ldr r0, [r4, r2]
	add r1, #0xc
	add r2, #0x10
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_02024920
	b _021C02BC
_021C02AC:
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0x6a
	bl GFL_MsgDataLoadStrbuf
_021C02BC:
	ldr r3, _021C02DC ; =0x00000728
	lsl r1, r6, #0x10
	ldr r0, [r4, r3]
	lsl r2, r7, #0x10
	str r0, [sp]
	add r3, #8
	ldr r0, [sp, #4]
	ldr r3, [r4, r3]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C02D8: .word 0x00000724
_021C02DC: .word 0x00000728
	thumb_func_end ovy194_21c0234

	thumb_func_start ovy194_21c02e0
ovy194_21c02e0: ; 0x021C02E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	add r7, r2, #0
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x2c]
	cmp r1, #0
	bne _021C037E
	mov r1, #0xab
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r0, _021C0384 ; =0x000011F6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021C0318
	ldr r0, _021C0388 ; =0x000005F4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	bl sub_02020428
	lsl r1, r6, #1
	ldrh r6, [r0, r1]
	bl sub_0203A24C
_021C0318:
	ldr r0, _021C038C ; =0x000003E7
	cmp r6, r0
	bne _021C0330
	mov r2, #0x72
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0xa3
	bl GFL_MsgDataLoadStrbuf
	b _021C0364
_021C0330:
	mov r0, #1
	str r0, [sp]
	ldr r4, _021C0390 ; =0x00000724
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r1, #1
	add r2, r6, #0
	mov r3, #3
	bl sub_0202451C
	add r2, r4, #0
	sub r0, r4, #4
	add r2, #0x10
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1b
	bl GFL_MsgDataLoadStrbuf
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xc
	add r4, #0x10
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl sub_02024920
_021C0364:
	ldr r3, _021C0394 ; =0x00000728
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r3]
	lsl r1, r7, #0x10
	str r0, [sp]
	add r3, #8
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	ldr r3, [r5, r3]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
_021C037E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0384: .word 0x000011F6
_021C0388: .word 0x000005F4
_021C038C: .word 0x000003E7
_021C0390: .word 0x00000724
_021C0394: .word 0x00000728
	thumb_func_end ovy194_21c02e0

	thumb_func_start ovy194_21c0398
ovy194_21c0398: ; 0x021C0398
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r1, [sp, #8]
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, [sp, #0x24]
	cmp r0, #0
	bne _021C03F8
	mov r4, #0x72
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #0x14
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x1c
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #4]
	mov r1, #0
	bl sub_020243F4
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	lsl r1, r6, #0x10
	str r0, [sp]
	add r4, #0x10
	lsl r2, r7, #0x10
	ldr r0, [sp, #8]
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
_021C03F8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c0398

	thumb_func_start ovy194_21c03fc
ovy194_21c03fc: ; 0x021C03FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	add r6, r2, #0
	mov r1, #0xab
	mov r2, #0
	str r0, [sp, #8]
	add r7, r3, #0
	ldr r5, [sp, #0x28]
	bl sub_0201CCF8
	mov r4, #0x72
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #0x14
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x12
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #8]
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	lsl r1, r6, #0x10
	str r0, [sp]
	add r4, #0x10
	lsl r2, r7, #0x10
	ldr r0, [sp, #0xc]
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c03fc

	thumb_func_start ovy194_21c0474
ovy194_21c0474: ; 0x021C0474
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r6, r0, #0
	mov r1, #0x6e
	mov r2, #0
	str r3, [sp, #0x10]
	ldr r5, [sp, #0x28]
	bl sub_0201CCF8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	cmp r4, #1
	bgt _021C0510
	cmp r7, #0
	beq _021C0510
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _021C04B4
	cmp r0, #0x1d
	beq _021C0510
_021C04B4:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _021C04BE
	cmp r0, #0x20
	beq _021C0510
_021C04BE:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _021C04D0
	cmp r4, #1
	bne _021C04CC
	ldr r6, _021C0514 ; =0x000031A0
	b _021C04DC
_021C04CC:
	ldr r6, _021C0518 ; =0x000039E0
	b _021C04DC
_021C04D0:
	cmp r4, #1
	bne _021C04D8
	mov r6, #0x32
	b _021C04DA
_021C04D8:
	mov r6, #0x53
_021C04DA:
	lsl r6, r6, #6
_021C04DC:
	mov r7, #0x72
	lsl r7, r7, #4
	add r2, r7, #0
	add r2, #0x10
	add r4, #0x2e
	ldr r0, [r5, r7]
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r6, [sp, #4]
	add r7, #0x10
	ldr r0, [sp, #8]
	ldr r3, [r5, r7]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
_021C0510:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0514: .word 0x000031A0
_021C0518: .word 0x000039E0
	thumb_func_end ovy194_21c0474

	thumb_func_start ovy194_21c051c
ovy194_21c051c: ; 0x021C051C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	lsl r0, r2, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x72
	lsl r0, r0, #4
	mov r7, #0x72
	mov r6, #0x72
	str r0, [sp, #0x10]
	add r0, #0x10
	lsl r7, r7, #4
	lsl r6, r6, #4
	ldr r5, [sp, #0x28]
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, #8
	add r6, #0x10
_021C0544:
	mov r0, #0x72
	ldr r2, [sp, #0x10]
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, #0x1e
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	bl sub_020484F4
	ldr r1, [r5, r7]
	ldr r2, [sp, #8]
	lsl r3, r4, #4
	str r1, [sp]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0xc]
	ldr r3, [r5, r6]
	asr r2, r2, #0x10
	bl sub_02021CFC
	add r4, r4, #1
	cmp r4, #6
	blt _021C0544
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c051c

	thumb_func_start ovy194_21c057c
ovy194_21c057c: ; 0x021C057C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x72
	lsl r4, r4, #4
	add r6, r2, #0
	add r2, r4, #0
	ldr r5, [sp, #0x20]
	add r2, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x2b
	add r7, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	beq _021C05E6
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl LoadItemNameToStrbuf
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #8]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	lsl r2, r7, #0x10
	str r1, [sp]
	add r4, #0x10
	lsl r1, r6, #0x10
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
_021C05E6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c057c

	thumb_func_start ovy194_21c05ec
ovy194_21c05ec: ; 0x021C05EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x72
	lsl r4, r4, #4
	add r7, r2, #0
	add r2, r4, #0
	ldr r5, [sp, #0x28]
	add r2, #0x14
	add r6, r0, #0
	str r1, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x27
	str r3, [sp, #0xc]
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #8]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	str r1, [sp]
	add r4, #0x10
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c05ec

	thumb_func_start ovy194_21c0684
ovy194_21c0684: ; 0x021C0684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r6, _021C074C ; =0x021C6788
	str r3, [sp, #0x10]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r3, sp, #0x30
	ldmia r6!, {r0, r1}
	str r3, [sp, #0x14]
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r7, #0x72
	str r0, [r3]
	lsl r0, r2, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #0x14
	str r0, [sp, #0x2c]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0x72
	lsl r0, r0, #4
	mov r6, #0x72
	str r0, [sp, #0x1c]
	add r0, #0x14
	lsl r7, r7, #4
	lsl r6, r6, #4
	ldr r5, [sp, #0x58]
	mov r4, #0
	str r0, [sp, #0x1c]
	add r7, #8
	add r6, #0x10
_021C06E4:
	mov r0, #0x72
	ldr r2, [sp, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x28
	bl GFL_MsgDataLoadStrbuf
	ldr r1, [sp, #0x14]
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [sp, #8]
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0202451C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	ldr r1, [r5, r7]
	ldr r2, [sp, #0x10]
	lsl r3, r4, #4
	str r1, [sp]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x18]
	ldr r3, [r5, r6]
	asr r2, r2, #0x10
	bl sub_02021CFC
	add r4, r4, #1
	cmp r4, #5
	blt _021C06E4
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C074C: .word 0x021C6788
	thumb_func_end ovy194_21c0684

	thumb_func_start ovy194_21c0750
ovy194_21c0750: ; 0x021C0750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x72
	lsl r4, r4, #4
	add r6, r2, #0
	ldr r5, [sp, #0x20]
	add r2, r4, #0
	add r2, #0x10
	str r1, [sp, #4]
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x2c
	add r7, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	lsl r2, r7, #0x10
	str r1, [sp]
	add r4, #0x10
	lsl r1, r6, #0x10
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c0750

	thumb_func_start ovy194_21c0790
ovy194_21c0790: ; 0x021C0790
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #4]
	lsl r0, r2, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	add r0, #0x14
	str r0, [sp, #0x28]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
	mov r0, #0x72
	lsl r0, r0, #4
	mov r7, #0x72
	str r0, [sp, #0x14]
	add r0, #8
	lsl r7, r7, #4
	ldr r5, [sp, #0x40]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #0x14]
	add r7, #0x10
_021C07E2:
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	beq _021C083C
	mov r0, #0x72
	ldr r2, [sp, #0x28]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x2d
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl sub_020244A4
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #8]
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	ldr r1, [r5, r1]
	lsl r3, r4, #4
	str r1, [sp]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x10]
	ldr r3, [r5, r7]
	asr r2, r2, #0x10
	bl sub_02021CFC
_021C083C:
	add r4, r4, #1
	cmp r4, #4
	blt _021C07E2
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c0790

	thumb_func_start ovy194_21c0848
ovy194_21c0848: ; 0x021C0848
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r3, #0
	ldr r4, [sp, #0x20]
	ldr r3, _021C08A8 ; =0x000005F4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r5, r2, #0
	ldrh r3, [r4, r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x1b
	bl sub_0204875C
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_0201D5C8
	mov r2, #0x73
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #8]
	bl sub_020484F4
	mov r1, #0x73
	lsl r1, r1, #4
	sub r1, #8
	ldr r1, [r4, r1]
	mov r3, #0x73
	str r1, [sp]
	lsl r3, r3, #4
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	ldr r3, [r4, r3]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add r0, r7, #0
	bl sub_020487D4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C08A8: .word 0x000005F4
	thumb_func_end ovy194_21c0848

	thumb_func_start ovy194_21c08ac
ovy194_21c08ac: ; 0x021C08AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x72
	lsl r4, r4, #4
	add r6, r2, #0
	add r2, r4, #0
	ldr r5, [sp, #0x20]
	add r2, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x2a
	add r7, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	mov r1, #0xa
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02024500
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #8]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	lsl r2, r7, #0x10
	str r1, [sp]
	add r4, #0x10
	lsl r1, r6, #0x10
	ldr r3, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c08ac

	thumb_func_start ovy194_21c0918
ovy194_21c0918: ; 0x021C0918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _021C0A90 ; =0x021C6738
	add r6, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x34]
	str r0, [sp, #0x38]
	ldr r0, _021C0A94 ; =0x021C6718
	str r2, [sp, #0x10]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	ldr r0, _021C0A98 ; =0x021C6750
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r2, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x14]
	mov r0, #0x20
	mov r3, #7
	ldr r7, _021C0A9C ; =0x000005F4
	str r0, [sp]
	ldrh r0, [r5, r7]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #6
	bl sub_0204B0B8
	sub r7, #0x38
	add r0, r5, r7
	lsl r4, r6, #2
	str r0, [sp, #0x18]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021C0976
	bl sub_02048210
_021C0976:
	ldr r0, _021C0AA0 ; =0x000005BC
	add r1, sp, #0x34
	ldr r1, [r1, r4]
	str r0, [sp, #0x20]
	add r7, r5, r0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #3
	lsr r1, r1, #0x18
	mov r2, #1
	mov r3, #0xe
	bl sub_020480C0
	str r0, [r7, r4]
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r0, [r7, r4]
	bl sub_020484F4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021B783C
	ldr r1, [sp, #0x14]
	mov r2, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r3, #0
	str r5, [sp, #8]
	bl ovy194_21c0234
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021C0A64
	ldr r0, [sp, #0x20]
	add r7, r5, r0
	ldr r0, [r7, r4]
	bl sub_020484F4
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_021B783C
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	mov r2, #0x50
	mov r3, #0
	bl ovy194_21c0474
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r0, [r7, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r5, [sp]
	mov r2, #0x10
	mov r3, #0x13
	bl ovy194_21c03fc
	str r5, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [r7, r4]
	mov r2, #0x10
	mov r3, #0x80
	bl ovy194_21c057c
	add r1, r6, #1
	add r6, r1, #0
	mov r0, #0x14
	mul r6, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r3, sp, #0x2c
	add r0, #0x38
	str r0, [sp, #0x20]
	ldrh r0, [r5, r0]
	ldr r3, [r3, r4]
	ldr r7, _021C0AA4 ; =0x000009C4
	str r0, [sp, #8]
	add r0, sp, #0x24
	ldr r0, [r0, r4]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, _021C0AA8 ; =0x000008C4
	ldr r2, [r5, r7]
	add r0, r5, r0
	add r0, r0, r6
	add r3, #0x10
	bl ovy194_21bfc6c
	add r0, r5, r6
	sub r7, #0xf0
	ldr r0, [r0, r7]
	mov r1, #1
	bl sub_0204C468
	b _021C0A74
_021C0A64:
	ldr r0, _021C0AA8 ; =0x000008C4
	add r1, r6, #1
	add r2, r5, r0
	mov r0, #0x14
	mul r0, r1
	add r0, r2, r0
	bl ovy194_21bfc50
_021C0A74:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r4]
	bl sub_02048244
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r4]
	bl sub_0204826C
	mov r0, #3
	bl sub_02045B7C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021C0A90: .word 0x021C6738
_021C0A94: .word 0x021C6718
_021C0A98: .word 0x021C6750
_021C0A9C: .word 0x000005F4
_021C0AA0: .word 0x000005BC
_021C0AA4: .word 0x000009C4
_021C0AA8: .word 0x000008C4
	thumb_func_end ovy194_21c0918

	thumb_func_start ovy194_21c0aac
ovy194_21c0aac: ; 0x021C0AAC
	push {r4, r5, r6, lr}
	ldr r1, _021C0AC8 ; =0x000008C4
	mov r5, #0
	add r4, r0, r1
	mov r6, #0x14
_021C0AB6:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy194_21bfc50
	add r5, r5, #1
	cmp r5, #3
	blt _021C0AB6
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C0AC8: .word 0x000008C4
	thumb_func_end ovy194_21c0aac

	thumb_func_start ovy194_21c0acc
ovy194_21c0acc: ; 0x021C0ACC
	push {r4, r5, r6, lr}
	mov r1, #9
	lsl r1, r1, #8
	mov r5, #0
	add r4, r0, r1
	mov r6, #0x14
_021C0AD8:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy194_21bfba4
	add r5, r5, #1
	cmp r5, #4
	blt _021C0AD8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21c0acc

	thumb_func_start ovy194_21c0aec
ovy194_21c0aec: ; 0x021C0AEC
	push {r4, r5, r6, lr}
	ldr r4, _021C0B5C ; =0x00000964
	add r5, r0, #0
	add r0, r5, r4
	add r6, r1, #0
	bl ovy194_21c4cfc
	add r4, #0x14
	add r0, r5, r4
	bl ovy194_21c4cfc
	add r0, r5, #0
	bl ovy194_21c5060
	cmp r6, #0
	beq _021C0B16
	ldr r2, _021C0B60 ; =0x04001000
	ldr r0, _021C0B64 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_021C0B16:
	add r0, r5, #0
	bl ovy194_21c0aac
	add r0, r5, #0
	bl ovy194_21c0acc
	mov r0, #0x95
	lsl r0, r0, #4
	add r0, r5, r0
	bl ovy194_21c4cfc
	add r0, r5, #0
	bl ovy194_21c49e8
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy194_21c24dc
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21c24dc
	ldr r4, _021C0B68 ; =0x000006B4
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r0, [r5, r4]
	bl sub_02048210
	add r0, r5, #0
	str r6, [r5, r4]
	bl sub_021C2D74
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C0B5C: .word 0x00000964
_021C0B60: .word 0x04001000
_021C0B64: .word 0xFFFF1FFF
_021C0B68: .word 0x000006B4
	thumb_func_end ovy194_21c0aec

	thumb_func_start ovy194_21c0b6c
ovy194_21c0b6c: ; 0x021C0B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #3
	mov r1, #0
	mov r7, #0
	bl sub_02044C98
	add r0, r5, #0
	bl ovy194_21c2034
	add r0, r5, #0
	bl ovy194_21bfe9c
	add r0, r5, #0
	mov r1, #0
	bl ovy194_21c123c
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl ovy194_21c123c
	add r0, r5, #0
	bl ovy194_21c475c
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #1
	bl ovy194_21c0fa0
	add r0, r5, #0
	bl sub_021B7808
	cmp r0, #0
	bne _021C0BE8
	add r0, r5, #0
	bl ovy194_21c479c
	add r0, r5, #0
	bl ovy194_21c2d34
	mov r0, #0x1d
	bl sub_02046D38
	mov r0, #0x1f
	bl sub_02046DC0
	mov r2, #0x1a
	ldr r0, _021C0BF8 ; =0x04001050
	mov r1, #0x1a
	sub r2, #0x22
	bl G2x_SetBlendBrightness_
	ldr r0, _021C0BFC ; =0x000011F9
	add r1, r5, #0
	strb r6, [r5, r0]
	ldr r0, _021C0C00 ; =ovy194_21c189c
	add r2, r7, #0
	bl sub_020056FC
_021C0BE8:
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	bl sub_02199D18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C0BF8: .word 0x04001050
_021C0BFC: .word 0x000011F9
_021C0C00: .word ovy194_21c189c
	thumb_func_end ovy194_21c0b6c

	thumb_func_start ovy194_21c0c04
ovy194_21c0c04: ; 0x021C0C04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _021C0E40 ; =0x021C6748
	str r1, [sp, #0x10]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	ldr r0, _021C0E44 ; =0x021C6740
	add r6, r2, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _021C0E48 ; =0x00000F54
	ldr r0, [r5, r0]
	cmp r0, #0x80
	bge _021C0C32
	mov r0, #1
	str r0, [sp, #0x18]
_021C0C32:
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #4
	bl ovy194_21c5098
	ldr r0, _021C0E4C ; =0x000006B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C0C48
	bl sub_02048210
_021C0C48:
	ldr r0, [sp, #0x18]
	add r2, sp, #0x28
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	mov r0, #0x12
	ldr r1, [r2, r1]
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #6
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #0x10
	bl sub_020480C0
	ldr r4, _021C0E4C ; =0x000006B4
	mov r1, #0xf
	str r0, [r5, r4]
	mov r0, #0xe
	mov r2, #0
	bl sub_020232E8
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021C0D5C
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x20
	mov r3, #0
	str r5, [sp, #8]
	bl ovy194_21c0234
	cmp r7, #0
	bne _021C0D52
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r0, #0
	str r5, [sp]
	add r0, r6, #0
	mov r2, #0x20
	mov r3, #0x10
	bl ovy194_21c03fc
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #8
	mov r3, #0x20
	bl ovy194_21c051c
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x18
	mov r3, #0x80
	bl ovy194_21c057c
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x40
	mov r3, #0x20
	bl ovy194_21c05ec
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x50
	mov r3, #0x30
	bl ovy194_21c0684
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r0, #0
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x60
	mov r3, #0
	bl ovy194_21c0474
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	bl ovy194_21c4c00
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl ovy194_21c4d18
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	sub r4, #0xc0
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	ldr r3, [sp, #0x14]
	add r4, sp, #0x20
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r2, _021C0E50 ; =0x000009C4
	ldr r0, _021C0E54 ; =0x000008C4
	ldr r3, [r4, r3]
	ldr r2, [r5, r2]
	add r0, r5, r0
	add r1, r6, #0
	add r3, #0x10
	bl ovy194_21bfc6c
	b _021C0E1E
_021C0D52:
	ldr r0, _021C0E54 ; =0x000008C4
	add r0, r5, r0
	bl ovy194_21bfc50
	b _021C0E1E
_021C0D5C:
	ldr r0, _021C0E54 ; =0x000008C4
	str r0, [sp, #0x1c]
	add r0, r5, r0
	bl ovy194_21bfc50
	ldr r0, [sp, #0x1c]
	add r0, #0x8c
	add r0, r5, r0
	bl ovy194_21c4cfc
	ldr r0, [sp, #0x1c]
	add r0, #0xa0
	add r0, r5, r0
	bl ovy194_21c4cfc
	ldr r0, [sp, #0x1c]
	add r0, #0xb4
	str r0, [sp, #0x1c]
	add r0, r5, r0
	bl ovy194_21c4cfc
	cmp r7, #0
	bne _021C0E1E
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #8
	mov r3, #0
	bl ovy194_21c0750
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x10
	mov r3, #0x10
	bl ovy194_21c0790
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x6c
	add r2, #0x7c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x24
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #0x74
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x7c
	ldr r3, [r5, r3]
	mov r1, #8
	mov r2, #0x50
	bl sub_02021CFC
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x10
	mov r3, #0x60
	bl ovy194_21c0848
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x6c
	add r2, #0x7c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x25
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r4, #0
	add r1, #0x74
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x7c
	ldr r3, [r5, r3]
	mov r1, #8
	mov r2, #0x70
	bl sub_02021CFC
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x10
	mov r3, #0x80
	bl ovy194_21c08ac
_021C0E1E:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	bl ovy194_21c2ef0
	ldr r4, _021C0E4C ; =0x000006B4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_02048244
	mov r0, #6
	bl sub_02045B7C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C0E40: .word 0x021C6748
_021C0E44: .word 0x021C6740
_021C0E48: .word 0x00000F54
_021C0E4C: .word 0x000006B4
_021C0E50: .word 0x000009C4
_021C0E54: .word 0x000008C4
	thumb_func_end ovy194_21c0c04

	thumb_func_start ovy194_21c0e58
ovy194_21c0e58: ; 0x021C0E58
	push {r4, lr}
	add r1, r2, #0
	add r4, r0, #0
	bl ovy194_21c24dc
	ldr r0, _021C0E70 ; =0x000006B4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C0E6E
	bl sub_02048210
_021C0E6E:
	pop {r4, pc}
	.align 2, 0
_021C0E70: .word 0x000006B4
	thumb_func_end ovy194_21c0e58

	thumb_func_start ovy194_21c0e74
ovy194_21c0e74: ; 0x021C0E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	mov r4, #9
	add r7, r1, #0
	ldr r2, [r6]
	mov r1, #0x14
	add r5, r0, #0
	lsl r4, r4, #8
	add r0, r5, r4
	mul r1, r2
	add r0, r0, r1
	bl ovy194_21bfba4
	ldr r2, [r6, #4]
	mov r1, #0x14
	add r0, r5, r4
	mul r1, r2
	add r0, r0, r1
	bl ovy194_21bfba4
	mov r0, #0xb0
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021C0F40 ; =0x000005F4
	add r3, r4, #0
	ldrh r0, [r5, r0]
	mov r1, #0x14
	add r3, #0xc4
	str r0, [sp, #0xc]
	ldr r2, [r6]
	add r0, r5, r4
	mul r1, r2
	add r0, r0, r1
	ldr r3, [r5, r3]
	add r1, r7, #0
	mov r2, #0
	bl ovy194_21bfbc0
	add r0, r7, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0xaf
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _021C0F0C
	mov r0, #0xd2
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021C0F40 ; =0x000005F4
	mov r1, #0x14
	ldrh r0, [r5, r0]
	str r0, [sp, #0xc]
	ldr r2, [r6, #4]
	add r0, r5, r4
	mul r1, r2
	add r4, #0xc4
	add r0, r0, r1
	ldr r3, [r5, r4]
	add r1, r7, #0
	mov r2, #1
	bl ovy194_21bfbc0
_021C0F0C:
	ldr r1, [r6, #8]
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x91
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C0F24
	mov r1, #0
	bl sub_0204C124
_021C0F24:
	ldr r1, [r6, #0xc]
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x91
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C0F3C
	mov r1, #0
	bl sub_0204C124
_021C0F3C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0F40: .word 0x000005F4
	thumb_func_end ovy194_21c0e74

	thumb_func_start ovy194_21c0f44
ovy194_21c0f44: ; 0x021C0F44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r7, _021C0F94 ; =0x00001098
	add r4, r0, #0
	ldrh r0, [r4, r7]
	add r2, r1, #0
	cmp r0, #0
	beq _021C0F74
	ldr r6, _021C0F98 ; =0x021C6758
	add r5, sp, #0x10
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	add r1, r2, #0
	add r0, r4, #0
	add r2, r3, #0
	bl ovy194_21c0e74
	mov r0, #0
	add sp, #0x20
	strh r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021C0F74:
	ldr r6, _021C0F9C ; =0x021C6768
	add r5, sp, #0
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	add r1, r2, #0
	add r0, r4, #0
	add r2, r3, #0
	bl ovy194_21c0e74
	mov r0, #1
	strh r0, [r4, r7]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C0F94: .word 0x00001098
_021C0F98: .word 0x021C6758
_021C0F9C: .word 0x021C6768
	thumb_func_end ovy194_21c0f44

	thumb_func_start ovy194_21c0fa0
ovy194_21c0fa0: ; 0x021C0FA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	str r3, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy194_21c0e58
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _021C1228 ; =0x000005F4
	mov r3, #7
	ldrh r0, [r5, r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #6
	bl sub_0204B0B8
	ldr r0, _021C122C ; =0x00000844
	lsl r7, r4, #2
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021C0FEC
	b _021C0FF2
_021C0FEC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021C1002
_021C0FF2:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy194_21c23a4
_021C1002:
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #0x28]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x28
	ldr r0, [r0, r7]
	bl sub_0201AB24
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r7]
	bl sub_0201AD8C
	mov r0, #1
	sub r0, r0, r4
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021C122C ; =0x00000844
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C1038
	bl sub_0201AD7C
_021C1038:
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	mov r4, #0
	bl sub_020232E8
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #3
	mov r1, #1
	mov r2, #0
	mov r3, #0x1f
	str r4, [sp, #8]
	bl sub_020480C0
	ldr r1, _021C1230 ; =0x000006B4
	str r0, [r5, r1]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	str r5, [sp, #8]
	mov r7, #0x10
	bl ovy194_21c0234
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021C1080
	b _021C11DC
_021C1080:
	ldr r0, _021C1230 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, r7, #0
	str r5, [sp, #4]
	bl ovy194_21c02e0
	ldr r0, _021C1230 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0x38
	str r0, [sp]
	add r0, r6, #0
	add r3, r7, #0
	str r5, [sp, #4]
	bl ovy194_21c0398
	ldr r0, _021C1230 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x60
	add r3, r4, #0
	str r5, [sp]
	bl ovy194_21c03fc
	ldr r0, _021C1230 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_020484F4
	str r5, [sp]
	add r1, r0, #0
	str r4, [sp, #4]
	add r0, r6, #0
	mov r2, #0x50
	add r3, r4, #0
	str r4, [sp, #8]
	bl ovy194_21c0474
	ldr r1, _021C1230 ; =0x000006B4
	str r5, [sp]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x20
	bl ovy194_21c051c
	ldr r0, _021C1230 ; =0x000006B4
	ldr r7, _021C1230 ; =0x000006B4
	str r0, [sp, #0x24]
	add r0, #0x6c
	str r0, [sp, #0x24]
	ldr r0, _021C1230 ; =0x000006B4
	add r7, #0x7c
	str r0, [sp, #0x20]
	add r0, #0x7c
	str r0, [sp, #0x20]
	ldr r0, _021C1230 ; =0x000006B4
	str r0, [sp, #0x1c]
	add r0, #0x74
	str r0, [sp, #0x1c]
_021C1110:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, #0x24
	bl GFL_MsgDataLoadStrbuf
	ldr r0, _021C1230 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_020484F4
	ldr r1, [sp, #0x1c]
	lsl r2, r4, #4
	ldr r1, [r5, r1]
	add r2, #0x88
	str r1, [sp]
	lsl r2, r2, #0x10
	ldr r3, [r5, r7]
	mov r1, #0
	asr r2, r2, #0x10
	bl sub_02021CFC
	add r4, r4, #1
	cmp r4, #2
	blt _021C1110
	ldr r4, _021C1230 ; =0x000006B4
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x38
	mov r3, #0x20
	bl ovy194_21c05ec
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x48
	mov r3, #0x30
	bl ovy194_21c0684
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x38
	mov r3, #0x88
	bl ovy194_21c0848
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x38
	mov r3, #0x98
	bl ovy194_21c08ac
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x28
	mov r3, #0xa8
	bl ovy194_21c057c
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x98
	mov r3, #0x71
	bl ovy194_21c0750
	str r5, [sp]
	ldr r1, [r5, r4]
	add r0, r6, #0
	mov r2, #0x98
	mov r3, #0x80
	bl ovy194_21c0790
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21c0f44
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl ovy194_21c4c00
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	sub r4, #0xc0
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	mov r3, #0xc
	ldr r2, _021C1234 ; =0x000009C4
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _021C1238 ; =0x000008C4
	ldr r2, [r5, r2]
	add r0, r5, r0
	add r1, r6, #0
	bl ovy194_21bfc6c
	b _021C11F8
_021C11DC:
	mov r0, #0x96
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C11EC
	add r1, r4, #0
	bl sub_0204C124
_021C11EC:
	add r0, r5, #0
	bl ovy194_21c0acc
	add r0, r5, #0
	bl ovy194_21c0aac
_021C11F8:
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy194_21c4ec0
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy194_21c4d18
	ldr r4, _021C1230 ; =0x000006B4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_02048244
	mov r0, #3
	bl sub_02045B7C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021C1228: .word 0x000005F4
_021C122C: .word 0x00000844
_021C1230: .word 0x000006B4
_021C1234: .word 0x000009C4
_021C1238: .word 0x000008C4
	thumb_func_end ovy194_21c0fa0

	thumb_func_start ovy194_21c123c
ovy194_21c123c: ; 0x021C123C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021C1280 ; =0x000005BC
	add r7, r1, #0
	lsl r5, r7, #2
	add r4, r6, r0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C127E
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r4, r5]
	bl sub_020484B4
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #3
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, r5]
	ldr r0, _021C1284 ; =0x000008C4
	add r1, r7, #1
	add r2, r6, r0
	mov r0, #0x14
	mul r0, r1
	add r0, r2, r0
	bl ovy194_21bfc50
_021C127E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1280: .word 0x000005BC
_021C1284: .word 0x000008C4
	thumb_func_end ovy194_21c123c

	thumb_func_start ovy194_21c1288
ovy194_21c1288: ; 0x021C1288
	push {r4, r5, r6, lr}
	ldr r4, _021C12E4 ; =0x000008C4
	add r5, r0, #0
	add r0, r5, r4
	add r6, r1, #0
	bl ovy194_21bfc50
	add r0, r4, #0
	add r0, #0x8c
	add r0, r5, r0
	bl ovy194_21c4cfc
	add r0, r4, #0
	add r0, #0xa0
	add r0, r5, r0
	bl ovy194_21c4cfc
	add r4, #0xb4
	add r0, r5, r4
	bl ovy194_21c4cfc
	ldr r4, _021C12E8 ; =0x000006B4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C12E0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	cmp r6, #0
	beq _021C12D4
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r0, [r5, r4]
	bl sub_02048244
_021C12D4:
	ldr r4, _021C12E8 ; =0x000006B4
	ldr r0, [r5, r4]
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021C12E0:
	pop {r4, r5, r6, pc}
	nop
_021C12E4: .word 0x000008C4
_021C12E8: .word 0x000006B4
	thumb_func_end ovy194_21c1288

	thumb_func_start ovy194_21c12ec
ovy194_21c12ec: ; 0x021C12EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	bl ovy194_21c5abc
	ldr r0, _021C1474 ; =0x00000834
	mov r2, #0
	ldr r1, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xf
	mov r1, #2
	mov r4, #0
	bl sub_020232E8
	add r0, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #0x14
	str r0, [sp, #0x2c]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x72
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0x72
	lsl r0, r0, #4
	mov r7, #0x72
	mov r6, #0x72
	str r0, [sp, #0x1c]
	add r0, #0x14
	lsl r7, r7, #4
	lsl r6, r6, #4
	str r0, [sp, #0x1c]
	add r7, #8
	add r6, #0x10
_021C134C:
	mov r0, #0x72
	ldr r2, [sp, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x81
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x28]
	lsl r3, r4, #2
	add r2, sp, #0x34
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r3]
	bl sub_020245A8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [r5, r7]
	str r0, [sp]
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _021C1478 ; =0x000010F4
	ldr r3, [r5, r6]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	add r2, r1, #0
	bl sub_02021CFC
	add r4, r4, #1
	cmp r4, #2
	blt _021C134C
	ldr r2, [sp, #0xc]
	mov r0, #0xf
	mov r1, #2
	bl sub_020232E8
_021C13A2:
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r4, #1
	mov r6, #0
	bl sub_020232E8
	ldr r0, [sp, #0xc]
	sub r1, r4, r0
	mov r0, #0xc
	mul r0, r1
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r0, _021C147C ; =0x00000FD8
	str r0, [sp, #0x30]
	sub r0, #0x34
	str r0, [sp, #0x30]
_021C13CC:
	ldr r0, [sp, #0x14]
	lsl r7, r6, #2
	add r1, r0, r7
	ldr r0, _021C147C ; =0x00000FD8
	ldr r4, [r1, r0]
	ldr r0, [sp, #0x30]
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021C1458
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ovy194_21c5138
	add r0, r5, #0
	bl sub_021B783C
	ldr r1, [sp, #0x18]
	mov r3, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	str r5, [sp, #8]
	add r2, r1, r7
	ldr r1, _021C1480 ; =0x000010F8
	add r0, r4, #0
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy194_21c0234
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021C1458
	ldr r0, [sp, #0x10]
	add r7, r0, r7
	add r0, r5, #0
	bl sub_021B783C
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _021C1480 ; =0x000010F8
	add r0, r4, #0
	ldr r1, [r7, r1]
	mov r2, #0x38
	mov r3, #0x10
	bl ovy194_21c0474
	ldr r1, _021C1480 ; =0x000010F8
	str r5, [sp]
	ldr r1, [r7, r1]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x10
	bl ovy194_21c03fc
_021C1458:
	add r6, r6, #1
	cmp r6, #3
	blt _021C13CC
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021C13A2
	add r0, r5, #0
	bl ovy194_21c5c80
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021C1474: .word 0x00000834
_021C1478: .word 0x000010F4
_021C147C: .word 0x00000FD8
_021C1480: .word 0x000010F8
	thumb_func_end ovy194_21c12ec

	thumb_func_start ovy194_21c1484
ovy194_21c1484: ; 0x021C1484
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021C14AC ; =0x00001038
	add r6, r0, #0
	mov r4, #0
_021C148C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021C149E
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r7]
_021C149E:
	add r4, r4, #1
	cmp r4, #4
	blt _021C148C
	add r0, r6, #0
	bl ovy194_21c5bf0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C14AC: .word 0x00001038
	thumb_func_end ovy194_21c1484

	thumb_func_start ovy194_21c14b0
ovy194_21c14b0: ; 0x021C14B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021C1524 ; =0x04001050
	mov r2, #0x1a
	add r0, r4, #0
	mov r1, #0x1a
	sub r2, #0x22
	bl G2x_SetBlendBrightness_
	add r6, r4, #0
	sub r6, #8
	ldrh r2, [r6]
	mov r0, #0x3f
	mov r1, #0x1f
	bic r2, r0
	add r3, r2, #0
	orr r3, r1
	mov r2, #0x20
	orr r2, r3
	strh r2, [r6]
	add r2, r4, #0
	mov r5, #0xff
	sub r2, #0x10
	strh r5, [r2]
	add r2, r4, #0
	mov r3, #0xc0
	sub r2, #0xc
	strh r3, [r2]
	ldrh r7, [r6]
	ldr r2, _021C1528 ; =0xFFFFC0FF
	lsl r5, r5, #8
	and r7, r2
	lsl r2, r1, #8
	orr r2, r7
	mov r7, #0x20
	lsl r7, r7, #8
	orr r2, r7
	strh r2, [r6]
	add r2, r4, #0
	sub r2, #0xe
	strh r5, [r2]
	add r2, r4, #0
	sub r2, #0xa
	strh r3, [r2]
	sub r2, r4, #6
	ldrh r5, [r2]
	sub r4, #0x50
	bic r5, r0
	add r0, r5, #0
	orr r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	ldr r0, _021C152C ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r3, #7
	orr r0, r1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1524: .word 0x04001050
_021C1528: .word 0xFFFFC0FF
_021C152C: .word 0xFFFF1FFF
	thumb_func_end ovy194_21c14b0

	thumb_func_start ovy194_21c1530
ovy194_21c1530: ; 0x021C1530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	ldr r0, _021C1720 ; =0x021C6728
	add r6, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r2, [sp, #0x10]
	str r0, [sp, #0x4c]
	ldr r0, _021C1724 ; =0x021C6720
	str r1, [sp, #0x48]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r3, _021C1728 ; =0x021C6778
	add r2, sp, #0x50
	str r1, [sp, #0x40]
	str r0, [sp, #0x44]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021C172C ; =0x021C6710
	mov r2, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	mov r1, #0x4c
	bl sub_0201CCF8
	lsl r4, r6, #2
	str r0, [sp, #0x24]
	ldr r7, _021C1730 ; =0x000005C4
	add r0, r5, r4
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _021C158A
	bl sub_02048210
	add r0, r5, r4
	add r7, #8
	ldr r0, [r0, r7]
	bl sub_02048210
_021C158A:
	add r0, sp, #0x48
	ldr r0, [r0, r4]
	mov r2, #0
	str r0, [sp, #0x20]
	ldr r0, _021C1730 ; =0x000005C4
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x34]
	add r7, r5, r0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #1
	lsr r1, r1, #0x18
	mov r3, #0xe
	bl sub_020480C0
	str r0, [r7, r4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x20]
	add r0, #8
	add r0, r5, r0
	str r0, [sp, #0x28]
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #1
	lsr r1, r1, #0x18
	mov r2, #0x11
	mov r3, #0xd
	bl sub_020480C0
	ldr r1, [sp, #0x28]
	str r0, [r1, r4]
	lsl r0, r6, #1
	str r0, [sp, #0x1c]
	lsl r1, r0, #2
	add r0, sp, #0x50
	ldr r0, [r0, r1]
	str r0, [sp, #0x18]
	ldr r0, [r7, r4]
	bl sub_020484F4
	ldr r1, [sp, #0x18]
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	lsl r1, r0, #2
	add r0, sp, #0x50
	ldr r0, [r0, r1]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r0, [r0, r4]
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r2, [sp, #0x18]
	mov r0, #1
	lsl r2, r2, #0x18
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_020232E8
	ldr r0, [r7, r4]
	bl sub_020484F4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021B783C
	ldr r1, [sp, #0x24]
	mov r2, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r3, #4
	str r5, [sp, #8]
	bl ovy194_21c0234
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021C16E0
	ldr r0, [sp, #0x34]
	add r7, r5, r0
	ldr r0, [r7, r4]
	bl sub_020484F4
	str r0, [sp, #0x2c]
	add r0, r5, #0
	bl sub_021B783C
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	mov r2, #0x50
	mov r3, #4
	bl ovy194_21c0474
	ldr r0, [r7, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	mov r2, #0x10
	mov r3, #0x13
	str r5, [sp]
	bl ovy194_21c03fc
	ldr r2, [sp, #0x14]
	mov r0, #1
	lsl r2, r2, #0x18
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_020232E8
	ldr r1, [sp, #0x28]
	str r5, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, r4]
	mov r2, #0
	mov r3, #0
	bl ovy194_21c057c
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	add r3, sp, #0x40
	add r0, #0x30
	str r0, [sp, #0x34]
	ldrh r0, [r5, r0]
	ldr r3, [r3, r4]
	add r1, r6, #1
	str r0, [sp, #8]
	add r0, sp, #0x38
	ldr r0, [r0, r4]
	add r3, #0x10
	str r0, [sp, #0xc]
	ldr r0, _021C1734 ; =0x000008C4
	add r2, r5, r0
	mov r0, #0x14
	mul r0, r1
	add r0, r2, r0
	ldr r2, _021C1738 ; =0x000009C4
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r2]
	bl ovy194_21bfc6c
	b _021C16E6
_021C16E0:
	add r0, r5, #0
	bl ovy194_21c0aac
_021C16E6:
	ldr r7, _021C1730 ; =0x000005C4
	lsl r4, r6, #2
	add r0, r5, r7
	str r0, [sp, #0x30]
	ldr r0, [r0, r4]
	bl sub_02048244
	add r7, #8
	add r7, r5, r7
	ldr r0, [r7, r4]
	bl sub_02048244
	ldr r0, [sp, #0x30]
	ldr r0, [r0, r4]
	bl sub_0204826C
	ldr r0, [r7, r4]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	ldr r0, _021C173C ; =0x000011E2
	mov r2, #0x78
	add r1, r5, r6
	strb r2, [r1, r0]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1720: .word 0x021C6728
_021C1724: .word 0x021C6720
_021C1728: .word 0x021C6778
_021C172C: .word 0x021C6710
_021C1730: .word 0x000005C4
_021C1734: .word 0x000008C4
_021C1738: .word 0x000009C4
_021C173C: .word 0x000011E2
	thumb_func_end ovy194_21c1530

	thumb_func_start ovy194_21c1740
ovy194_21c1740: ; 0x021C1740
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	lsl r4, r7, #2
	ldr r0, _021C1780 ; =0x000005C4
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C177C
	bl sub_02048210
	ldr r0, _021C1780 ; =0x000005C4
	add r0, #8
	add r6, r5, r0
	ldr r0, [r6, r4]
	bl sub_02048210
	ldr r0, _021C1784 ; =0x000008C4
	add r2, r7, #1
	mov r1, #0x14
	add r0, r5, r0
	mul r1, r2
	add r0, r0, r1
	bl ovy194_21bfc50
	ldr r0, _021C1780 ; =0x000005C4
	mov r2, #0
	add r1, r5, r4
	str r2, [r1, r0]
	str r2, [r6, r4]
_021C177C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1780: .word 0x000005C4
_021C1784: .word 0x000008C4
	thumb_func_end ovy194_21c1740

	thumb_func_start ovy194_21c1788
ovy194_21c1788: ; 0x021C1788
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, _021C1814 ; =0x000005F4
	add r5, r0, #0
	add r6, r1, #0
	ldrh r1, [r5, r7]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r7, #0
	mov r4, #0x72
	add r0, #0x5c
	lsl r4, r4, #4
	str r2, [r5, r0]
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	ldr r1, _021C1818 ; =0x000039E3
	sub r0, #0xcc
	strh r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0
	sub r0, #0xc8
	str r1, [r5, r0]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrh r0, [r5, r7]
	add r1, r4, #0
	sub r1, #0xd0
	str r0, [sp, #0x10]
	add r0, r4, #0
	sub r0, #0x70
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #8
	mov r3, #0x15
	bl sub_0202E210
	add r1, r4, #0
	sub r1, #0xd8
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r5, r0]
	bl sub_02048564
	ldr r0, _021C181C ; =0x00000F04
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	sub r4, #0xd8
	ldr r0, [r5, r4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1814: .word 0x000005F4
_021C1818: .word 0x000039E3
_021C181C: .word 0x00000F04
	thumb_func_end ovy194_21c1788

	thumb_func_start ovy194_21c1820
ovy194_21c1820: ; 0x021C1820
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x1d
	add r5, r0, #0
	lsl r7, r7, #6
	ldr r0, [r5, r7]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021C0C
	cmp r0, #0
	bne _021C183C
	ldr r0, [r5, r7]
	bl sub_02021C44
_021C183C:
	cmp r4, #0
	beq _021C184A
	ldr r0, _021C187C ; =0x00000F04
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0204C124
_021C184A:
	cmp r6, #0
	beq _021C1862
	add r0, r5, #0
	bl ovy194_21bc098
	add r2, r0, #0
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_02199D18
_021C1862:
	ldr r4, _021C1880 ; =0x00000648
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C1878
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, r4]
	mov r0, #6
	bl sub_02045B7C
_021C1878:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C187C: .word 0x00000F04
_021C1880: .word 0x00000648
	thumb_func_end ovy194_21c1820

	thumb_func_start ovy194_21c1884
ovy194_21c1884: ; 0x021C1884
	push {r3, lr}
	ldr r0, _021C1898 ; =0x021C6730
	bl sub_0203DA0C
	cmp r0, #0
	bne _021C1894
	mov r0, #1
	pop {r3, pc}
_021C1894:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021C1898: .word 0x021C6730
	thumb_func_end ovy194_21c1884

	thumb_func_start ovy194_21c189c
ovy194_21c189c: ; 0x021C189C
	push {r4, r5, r6, lr}
	ldr r3, _021C18FC ; =0x04001048
	ldr r2, _021C1900 ; =0xFFFFC0FF
	ldrh r4, [r3]
	mov r5, #0x3f
	and r4, r2
	lsr r2, r3, #0xe
	orr r2, r4
	strh r2, [r3]
	ldr r4, _021C1904 ; =0x000030D0
	sub r2, r3, #6
	strh r4, [r2]
	mov r2, #0x20
	sub r4, r3, #2
	strh r2, [r4]
	ldrh r6, [r3]
	mov r4, #0x11
	bic r6, r5
	orr r4, r6
	strh r4, [r3]
	add r4, r3, #0
	ldr r6, _021C1908 ; =0x0000E0FF
	sub r4, #8
	strh r6, [r4]
	ldr r6, _021C190C ; =0x0000A9C0
	sub r4, r3, #4
	strh r6, [r4]
	ldrh r6, [r3, #2]
	mov r4, #0x1f
	bic r6, r5
	orr r4, r6
	orr r2, r4
	strh r2, [r3, #2]
	sub r3, #0x48
	ldr r4, [r3]
	ldr r2, _021C1910 ; =0xFFFF1FFF
	and r4, r2
	mov r2, #6
	lsl r2, r2, #0xc
	orr r2, r4
	str r2, [r3]
	ldr r2, _021C1914 ; =0x000011F9
	mov r3, #0
	strb r3, [r1, r2]
	bl sub_0203A6A8
	pop {r4, r5, r6, pc}
	nop
_021C18FC: .word 0x04001048
_021C1900: .word 0xFFFFC0FF
_021C1904: .word 0x000030D0
_021C1908: .word 0x0000E0FF
_021C190C: .word 0x0000A9C0
_021C1910: .word 0xFFFF1FFF
_021C1914: .word 0x000011F9
	thumb_func_end ovy194_21c189c

	thumb_func_start ovy194_21c1918
ovy194_21c1918: ; 0x021C1918
	push {r4, lr}
	sub sp, #0x20
	add r1, r0, #0
	ldr r0, _021C195C ; =0x021C67A0
	bl sub_0204A6F0
	ldr r1, _021C1960 ; =0x021D3360
	str r0, [r1]
	bl sub_0204A744
	ldr r4, _021C1964 ; =0x021C6920
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021C1968 ; =0x0209497C
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	str r0, [sp, #4]
	mov r0, #0x1a
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	add r0, r2, #0
	bl sub_02048FBC
	add sp, #0x20
	pop {r4, pc}
	nop
_021C195C: .word 0x021C67A0
_021C1960: .word 0x021D3360
_021C1964: .word 0x021C6920
_021C1968: .word 0x0209497C
	thumb_func_end ovy194_21c1918

	thumb_func_start sub_021C196C
sub_021C196C: ; 0x021C196C
	ldr r0, _021C1974 ; =0x021D3360
	ldr r3, _021C1978 ; =sub_0204A73C
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021C1974: .word 0x021D3360
_021C1978: .word sub_0204A73C
	thumb_func_end sub_021C196C

	thumb_func_start ovy194_21c197c
ovy194_21c197c: ; 0x021C197C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0x2b
	mov r4, #0
	lsl r1, r1, #0xc
	add r5, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #0xc
	ldr r6, _021C19D0 ; =0x0000083C
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	str r4, [sp]
	str r4, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, [r5, r6]
	add r1, sp, #0xc
	bl sub_0204A65C
	ldr r0, [r5, r6]
	add r1, sp, #0
	bl sub_0204A69C
	mov r7, #1
	ldr r0, [sp, #0x14]
	lsl r7, r7, #0xc
	sub r0, r0, r7
	str r0, [sp, #0x14]
	ldr r0, [r5, r6]
	add r1, sp, #0x14
	bl sub_0204A6BC
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, r6]
	add r1, sp, #0
	bl sub_0204A67C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C19D0: .word 0x0000083C
	thumb_func_end ovy194_21c197c

	thumb_func_start ovy194_21c19d4
ovy194_21c19d4: ; 0x021C19D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	mov r7, #0
	mov r0, #3
	mov r6, #1
	lsl r0, r0, #0xc
	lsl r6, r6, #0xc
	str r0, [sp, #0x18]
	mov r0, #0xf
	lsl r0, r0, #0xc
	ldr r4, _021C1A34 ; =0x0000083C
	str r6, [sp]
	str r7, [sp, #0x14]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r5, r4]
	add r1, sp, #0x14
	bl sub_0204A65C
	ldr r0, [r5, r4]
	add r1, sp, #8
	bl sub_0204A69C
	ldr r0, [r5, r4]
	add r1, sp, #0
	bl sub_0204A6B4
	ldr r0, [r5, r4]
	add r1, sp, #4
	bl sub_0204A6BC
	lsl r0, r6, #4
	str r7, [sp, #8]
	str r6, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r5, r4]
	add r1, sp, #8
	bl sub_0204A67C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1A34: .word 0x0000083C
	thumb_func_end ovy194_21c19d4
_021C1A38:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x45, 0x28, 0x1C, 0x02

	thumb_func_start ovy194_21c1a40
ovy194_21c1a40: ; 0x021C1A40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	add r1, #0x18
	add r0, r1, #0
	blx MTX_Identity33_
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _021C1A94
	add r0, r1, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _021C1A7C
	ldr r0, _021C1B58 ; =0x0000083C
	add r1, #0x90
	ldr r0, [r5, r0]
	ldr r1, [r1]
	bl sub_02016408
_021C1A7C:
	ldr r1, [r5, #0xc]
	add r0, r1, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _021C1A94
	ldr r0, _021C1B58 ; =0x0000083C
	add r1, #0x94
	ldr r0, [r5, r0]
	ldr r1, [r1]
	bl sub_02016424
_021C1A94:
	ldr r0, _021C1B58 ; =0x0000083C
	ldr r0, [r5, r0]
	bl sub_0204A638
	ldr r0, _021C1B5C ; =0x04000060
	ldr r6, _021C1B60 ; =0xFFFFCFFD
	ldrh r1, [r0]
	mov r4, #0
	add r2, r1, #0
	and r2, r6
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r6, #2
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _021C1B64 ; =0x0000CFFB
	and r1, r2
	strh r1, [r0]
	sub r1, r2, #4
	ldrh r3, [r0]
	sub r2, #0x1c
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r6, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _021C1B68 ; =0xBFFF0000
	ldr r0, _021C1B6C ; =0x04000580
	str r1, [r0]
	ldr r6, _021C1B70 ; =0x021C67CC
_021C1AF4:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r6, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021C1AF4
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _021C1B52
	add r0, r1, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1B2E
	add r1, #0x98
	ldr r0, [r1]
	add r4, sp, #0x10
	add r1, r4, #0
	bl sub_02015CD0
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_02050208
_021C1B2E:
	ldr r1, [r5, #0xc]
	add r0, r1, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1B52
	add r1, #0x9c
	ldr r0, [r1]
	add r4, sp, #4
	add r1, r4, #0
	bl sub_02015CD0
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_02050208
_021C1B52:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021C1B58: .word 0x0000083C
_021C1B5C: .word 0x04000060
_021C1B60: .word 0xFFFFCFFD
_021C1B64: .word 0x0000CFFB
_021C1B68: .word 0xBFFF0000
_021C1B6C: .word 0x04000580
_021C1B70: .word 0x021C67CC
	thumb_func_end ovy194_21c1a40

	thumb_func_start ovy194_21c1b74
ovy194_21c1b74: ; 0x021C1B74
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #3
	bls _021C1B7E
	b _021C1C9E
_021C1B7E:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C1B8A: ; jump table
	.short _021C1B92 - _021C1B8A - 2 ; case 0
	.short _021C1BEA - _021C1B8A - 2 ; case 1
	.short _021C1C2C - _021C1B8A - 2 ; case 2
	.short _021C1C58 - _021C1B8A - 2 ; case 3
_021C1B92:
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x38
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x39
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x36
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x37
	mov r3, #0xa
	bl sub_02015BC8
	add r4, #0x9c
	str r0, [r4]
	pop {r4, pc}
_021C1BEA:
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3f
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3e
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x36
	mov r3, #0xa
	bl sub_02015BC8
	add r4, #0x98
	str r0, [r4]
	pop {r4, pc}
_021C1C2C:
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3d
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3c
	mov r3, #0xa
	bl sub_02015BC8
	add r4, #0x94
	str r0, [r4]
	pop {r4, pc}
_021C1C58:
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3b
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x3a
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x68
	mov r2, #0x37
	mov r3, #0xa
	bl sub_02015BC8
	add r4, #0x9c
	ldr r1, _021C1CA0 ; =0x002B5000
	str r0, [r4]
	bl sub_02015CAC
_021C1C9E:
	pop {r4, pc}
	.align 2, 0
_021C1CA0: .word 0x002B5000
	thumb_func_end ovy194_21c1b74

	thumb_func_start ovy194_21c1ca4
ovy194_21c1ca4: ; 0x021C1CA4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1CBC
	bl sub_02015C10
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
_021C1CBC:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1CD2
	bl sub_02015C10
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0]
_021C1CD2:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1CE8
	bl sub_02015C10
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
_021C1CE8:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1CFC
	bl sub_02015C10
	mov r0, #0
	add r4, #0x9c
	str r0, [r4]
_021C1CFC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c1ca4

	thumb_func_start ovy194_21c1d00
ovy194_21c1d00: ; 0x021C1D00
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x69
	mov r2, #0xb
	mov r3, #0xa
	bl sub_02015BC8
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xba
	ldrh r0, [r0]
	mov r1, #0x69
	mov r2, #0xc
	mov r3, #0xa
	bl sub_02015BC8
	add r4, #0x94
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c1d00

	thumb_func_start sub_021C1D30
sub_021C1D30: ; 0x021C1D30
	ldr r3, _021C1D34 ; =ovy194_21c1ca4
	bx r3
	.align 2, 0
_021C1D34: .word ovy194_21c1ca4
	thumb_func_end sub_021C1D30

	thumb_func_start ovy194_21c1d38
ovy194_21c1d38: ; 0x021C1D38
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xba
	ldrh r0, [r0]
	bl sub_0204F918
	add r0, r6, #0
	mov r7, #0x12
	mov r4, #0
	add r0, #0xb4
	str r4, [r0]
	lsl r7, r7, #0xa
_021C1D50:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, _021C1DAC ; =0x00000201
	ldr r3, _021C1DB0 ; =0x021C6FC0
	str r0, [sp]
	add r0, r6, #0
	add r0, #0xba
	ldrh r0, [r0]
	add r1, r7, #0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r5, #0x24]
	cmp r4, #8
	bhi _021C1D90
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C1D7A: ; jump table
	.short _021C1D8C - _021C1D7A - 2 ; case 0
	.short _021C1D8C - _021C1D7A - 2 ; case 1
	.short _021C1D8C - _021C1D7A - 2 ; case 2
	.short _021C1D90 - _021C1D7A - 2 ; case 3
	.short _021C1D90 - _021C1D7A - 2 ; case 4
	.short _021C1D8C - _021C1D7A - 2 ; case 5
	.short _021C1D8C - _021C1D7A - 2 ; case 6
	.short _021C1D90 - _021C1D7A - 2 ; case 7
	.short _021C1D8C - _021C1D7A - 2 ; case 8
_021C1D8C:
	mov r2, #0
	b _021C1D92
_021C1D90:
	mov r2, #1
_021C1D92:
	add r3, r6, #0
	add r3, #0xba
	ldrh r3, [r3]
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0204F968
	add r4, r4, #1
	str r0, [r5]
	cmp r4, #9
	blt _021C1D50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1DAC: .word 0x00000201
_021C1DB0: .word 0x021C6FC0
	thumb_func_end ovy194_21c1d38

	thumb_func_start ovy194_21c1db4
ovy194_21c1db4: ; 0x021C1DB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0xba
	ldrh r3, [r2]
	ldr r2, _021C1E04 ; =0x00007FFF
	mov r0, #0x68
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r1, #0x35
	lsr r2, r2, #0x10
	bl sub_0204FDF8
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	mov r4, #0
	mov r6, #1
_021C1DDC:
	add r0, r6, #0
	add r1, r6, #0
	bl OS_WaitInterrupt
	bl sub_02005718
	add r1, r5, #0
	add r3, r0, #0
	lsl r0, r4, #2
	add r1, #0xb4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	add r2, r6, #0
	bl sub_0204FEE0
	add r4, r4, #1
	cmp r4, #4
	blt _021C1DDC
	pop {r4, r5, r6, pc}
	nop
_021C1E04: .word 0x00007FFF
	thumb_func_end ovy194_21c1db4

	thumb_func_start ovy194_21c1e08
ovy194_21c1e08: ; 0x021C1E08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #4
	mov r6, #1
_021C1E10:
	add r0, r6, #0
	add r1, r6, #0
	bl OS_WaitInterrupt
	bl sub_02005718
	add r1, r5, #0
	add r3, r0, #0
	lsl r0, r4, #2
	add r1, #0xb4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	add r2, r6, #0
	bl sub_0204FEE0
	add r4, r4, #1
	cmp r4, #9
	blt _021C1E10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21c1e08

	thumb_func_start ovy194_21c1e38
ovy194_21c1e38: ; 0x021C1E38
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0204FB4C
	add r0, r6, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1E56
	bl sub_0203A24C
	add r0, r6, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
_021C1E56:
	mov r4, #0
	add r7, r4, #0
_021C1E5A:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021C1E6A
	bl sub_0203A24C
	str r7, [r5, #0x24]
_021C1E6A:
	add r4, r4, #1
	cmp r4, #9
	blt _021C1E5A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c1e38

	thumb_func_start ovy194_21c1e74
ovy194_21c1e74: ; 0x021C1E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xba
	ldrh r0, [r0]
	bl sub_0204F918
	mov r6, #0
	add r4, r6, #0
_021C1E86:
	lsl r0, r6, #2
	str r0, [sp, #4]
	add r7, r5, r0
	ldr r0, _021C1EE8 ; =0x00000273
	mov r1, #0x12
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xba
	ldrh r0, [r0]
	ldr r3, _021C1EEC ; =0x021C6FC0
	lsl r1, r1, #0xa
	mov r2, #1
	bl sub_0203A1FC
	add r3, r5, #0
	mov r1, #0x12
	str r0, [r7, #0x24]
	add r3, #0xba
	ldrh r3, [r3]
	lsl r1, r1, #0xa
	add r2, r4, #0
	bl sub_0204F968
	ldr r1, [sp, #4]
	add r6, r6, #1
	str r0, [r5, r1]
	cmp r6, #6
	blt _021C1E86
	add r2, r5, #0
	add r2, #0xba
	ldrh r2, [r2]
	mov r0, #0x69
	mov r1, #0xa
	bl sub_0204FDF8
	add r6, r0, #0
	mov r7, #1
_021C1ED0:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0204FE04
	add r4, r4, #1
	cmp r4, #6
	blt _021C1ED0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1EE8: .word 0x00000273
_021C1EEC: .word 0x021C6FC0
	thumb_func_end ovy194_21c1e74

	thumb_func_start ovy194_21c1ef0
ovy194_21c1ef0: ; 0x021C1EF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r0, _021C1F98 ; =0x0000FFFF
	ldr r5, _021C1F9C ; =0x00000824
	ldr r7, _021C1FA0 ; =0x0000109C
	strh r0, [r4, r5]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, r7]
	mov r0, #0x91
	bl ovy194_21c1918
	mov r0, #0x14
	mov r1, #0x14
	mov r2, #0x91
	bl sub_02049D24
	sub r1, r5, #4
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021C1F7C
	mov r1, #0
	add r0, sp, #0x38
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x2c
	add r2, sp, #0x20
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _021C1FA4 ; =0x000005F4
	ldr r3, _021C1FA8 ; =0x021C68F8
	ldrh r6, [r4, r0]
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	sub r7, #0x9c
	str r0, [r2]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r7, [sp, #4]
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, ip
	str r0, [sp, #0x14]
	add r0, sp, #0x2c
	str r0, [sp, #0x18]
	ldr r3, _021C1FAC ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021C1FB0 ; =0x00001555
	mov r0, #0
	str r6, [sp, #0x1c]
	bl sub_0204A5C8
	add r5, #0x18
	str r0, [r4, r5]
_021C1F7C:
	ldr r0, _021C1FA0 ; =0x0000109C
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021C1F92
	lsl r2, r1, #3
	ldr r1, _021C1FB4 ; =0x021C68C8
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
_021C1F92:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021C1F98: .word 0x0000FFFF
_021C1F9C: .word 0x00000824
_021C1FA0: .word 0x0000109C
_021C1FA4: .word 0x000005F4
_021C1FA8: .word 0x021C68F8
_021C1FAC: .word 0x02094A3C
_021C1FB0: .word 0x00001555
_021C1FB4: .word 0x021C68C8
	thumb_func_end ovy194_21c1ef0

	thumb_func_start sub_021C1FB8
sub_021C1FB8: ; 0x021C1FB8
	ldr r3, _021C1FBC ; =ovy194_21c20f0
	bx r3
	.align 2, 0
_021C1FBC: .word ovy194_21c20f0
	thumb_func_end sub_021C1FB8

	thumb_func_start ovy194_21c1fc0
ovy194_21c1fc0: ; 0x021C1FC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021C1FFC ; =0x0000083C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C1FD0
	bl sub_0204A630
_021C1FD0:
	mov r0, #0x82
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02049DDC
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021C1FF6
	mov r1, #6
	bl ovy194_21c1e38
	ldr r0, [r4, #0xc]
	bl sub_021C1D30
	ldr r0, [r4, #0xc]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0xc]
_021C1FF6:
	bl sub_021C196C
	pop {r4, pc}
	.align 2, 0
_021C1FFC: .word 0x0000083C
	thumb_func_end ovy194_21c1fc0

	thumb_func_start sub_021C2000
sub_021C2000: ; 0x021C2000
	ldr r3, _021C2008 ; =ovy194_21c263c
	mov r1, #0x19
	bx r3
	nop
_021C2008: .word ovy194_21c263c
	thumb_func_end sub_021C2000

	thumb_func_start ovy194_21c200c
ovy194_21c200c: ; 0x021C200C
	push {r4, lr}
	add r4, r0, #0
	bl ovy194_21c2050
	ldr r0, _021C202C ; =0x0000109C
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021C202A
	lsl r2, r1, #3
	ldr r1, _021C2030 ; =0x021C68C8
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
_021C202A:
	pop {r4, pc}
	.align 2, 0
_021C202C: .word 0x0000109C
_021C2030: .word 0x021C68C8
	thumb_func_end ovy194_21c200c

	thumb_func_start ovy194_21c2034
ovy194_21c2034: ; 0x021C2034
	push {r4, r5, r6, lr}
	ldr r6, _021C204C ; =0x0000109C
	add r5, r0, #0
	mov r4, #0
	ldr r1, [r5, r6]
	mvn r4, r4
	cmp r1, r4
	beq _021C204A
	bl ovy194_21c20c8
	str r4, [r5, r6]
_021C204A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C204C: .word 0x0000109C
	thumb_func_end ovy194_21c2034

	thumb_func_start ovy194_21c2050
ovy194_21c2050: ; 0x021C2050
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021C20B4 ; =0x021C694C
	lsl r2, r1, #4
	ldrh r0, [r0, r2]
	str r1, [sp]
	cmp r0, #0
	beq _021C2074
	mov r4, #0x82
	lsl r4, r4, #4
	ldr r1, _021C20B8 ; =0x021C6940
	ldr r0, [r7, r4]
	add r1, r1, r2
	bl sub_02049E00
	add r1, r4, #4
	strh r0, [r7, r1]
	b _021C207A
_021C2074:
	ldr r1, _021C20BC ; =0x0000FFFF
	ldr r0, _021C20C0 ; =0x00000824
	strh r1, [r7, r0]
_021C207A:
	ldr r0, _021C20C0 ; =0x00000824
	ldr r2, _021C20BC ; =0x0000FFFF
	ldrh r1, [r7, r0]
	cmp r1, r2
	beq _021C20AA
	sub r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_0204A5C0
	add r6, r0, #0
	bl sub_02049970
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _021C20AA
_021C209A:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02049974
	add r4, r4, #1
	cmp r4, r5
	blt _021C209A
_021C20AA:
	ldr r1, _021C20C4 ; =0x0000109C
	ldr r0, [sp]
	str r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C20B4: .word 0x021C694C
_021C20B8: .word 0x021C6940
_021C20BC: .word 0x0000FFFF
_021C20C0: .word 0x00000824
_021C20C4: .word 0x0000109C
	thumb_func_end ovy194_21c2050

	thumb_func_start ovy194_21c20c8
ovy194_21c20c8: ; 0x021C20C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021C20E8 ; =0x00000824
	ldr r2, _021C20EC ; =0x0000FFFF
	ldrh r1, [r4, r0]
	cmp r1, r2
	beq _021C20DE
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02049F4C
_021C20DE:
	ldr r1, _021C20EC ; =0x0000FFFF
	ldr r0, _021C20E8 ; =0x00000824
	strh r1, [r4, r0]
	pop {r4, pc}
	nop
_021C20E8: .word 0x00000824
_021C20EC: .word 0x0000FFFF
	thumb_func_end ovy194_21c20c8

	thumb_func_start ovy194_21c20f0
ovy194_21c20f0: ; 0x021C20F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r1, _021C21E8 ; =0x0000109C
	add r5, r0, #0
	ldr r2, [r5, r1]
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _021C21E2
	ldr r1, _021C21EC ; =0x021C68CC
	lsl r2, r2, #3
	ldr r2, [r1, r2]
	cmp r2, #0
	beq _021C2110
	add r1, sp, #0
	blx r2
_021C2110:
	ldr r0, _021C21F0 ; =0x00000824
	ldr r2, _021C21F4 ; =0x0000FFFF
	ldrh r1, [r5, r0]
	cmp r1, r2
	beq _021C2144
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0204A5C0
	add r7, r0, #0
	bl sub_02049970
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _021C2144
_021C2130:
	ldr r2, _021C21F8 ; =0x021C6F44
	lsl r1, r4, #0x10
	ldr r2, [r2, #4]
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_02049A64
	add r4, r4, #1
	cmp r4, r6
	blt _021C2130
_021C2144:
	bl sub_02049A98
	ldr r0, _021C21FC ; =0x0000083C
	ldr r0, [r5, r0]
	bl sub_0204A638
	bl sub_02049AF0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021C2162
	bl sub_0205001C
	bl sub_02050044
_021C2162:
	ldr r0, _021C21F0 ; =0x00000824
	ldr r2, _021C21F4 ; =0x0000FFFF
	ldrh r1, [r5, r0]
	cmp r1, r2
	beq _021C217A
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0204A5C0
	add r1, sp, #0
	bl sub_02049B5C
_021C217A:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _021C21E2
	add r0, r1, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021C21BE
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	bne _021C21A0
	ldr r1, _021C21F8 ; =0x021C6F44
	ldr r1, [r1, #4]
	bl sub_02015C48
	ldr r1, [r5, #0xc]
	add r1, #0xa8
	str r0, [r1]
_021C21A0:
	ldr r1, [r5, #0xc]
	add r0, r1, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _021C21BE
	add r1, #0x94
	ldr r0, [r1]
	ldr r1, _021C21F8 ; =0x021C6F44
	ldr r1, [r1, #4]
	bl sub_02015C48
	ldr r1, [r5, #0xc]
	add r1, #0xac
	str r0, [r1]
_021C21BE:
	ldr r0, [r5, #0xc]
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _021C21D0
	ldr r1, _021C21F8 ; =0x021C6F44
	ldr r1, [r1, #4]
	bl sub_02015C48
_021C21D0:
	ldr r0, [r5, #0xc]
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021C21E2
	ldr r1, _021C21F8 ; =0x021C6F44
	ldr r1, [r1, #4]
	bl sub_02015C48
_021C21E2:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021C21E8: .word 0x0000109C
_021C21EC: .word 0x021C68CC
_021C21F0: .word 0x00000824
_021C21F4: .word 0x0000FFFF
_021C21F8: .word 0x021C6F44
_021C21FC: .word 0x0000083C
	thumb_func_end ovy194_21c20f0

	thumb_func_start ovy194_21c2200
ovy194_21c2200: ; 0x021C2200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	str r3, [sp, #8]
	add r0, r3, #0
	mov r1, #5
	mov r2, #0
	mov r5, #0
	bl sub_0201CCF8
	add r7, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r0, [sp, #8]
	bl sub_0201CEB4
	cmp r4, #0
	bne _021C2232
	mov r5, #1
_021C2232:
	mov r1, #0
	mov ip, r1
	mov r1, #0
_021C2238:
	mov r2, #0x1c
	add r4, r1, #0
	mul r4, r2
	ldr r3, _021C238C ; =0x021C69A0
	ldr r2, _021C238C ; =0x021C69A0
	ldr r3, [r3, r4]
	add r2, r2, r4
	cmp r7, r3
	bne _021C2312
	ldr r3, [r2, #4]
	cmp r6, r3
	bne _021C2312
	ldr r3, [r2, #8]
	cmp r3, #3
	beq _021C225A
	cmp r0, r3
	bne _021C2312
_021C225A:
	ldr r2, [r2, #0xc]
	cmp r2, #2
	beq _021C2264
	cmp r5, r2
	bne _021C2312
_021C2264:
	ldr r5, _021C2390 ; =0x021C69B0
	mov r1, #0
	ldr r0, [r5, r4]
	blx sub_0208D1D0
	ldr r0, _021C2394 ; =0x45800000
	bls _021C2284
	ldr r1, [r5, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C2292
_021C2284:
	ldr r1, [r5, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C2292:
	blx sub_0208DA4C
	ldr r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	blt _021C22A4
	neg r0, r0
	str r0, [sp, #0xc]
_021C22A4:
	ldr r5, _021C2398 ; =0x021C69B4
	mov r1, #0
	ldr r0, [r5, r4]
	blx sub_0208D1D0
	ldr r0, _021C2394 ; =0x45800000
	bls _021C22C4
	ldr r1, [r5, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C22D2
_021C22C4:
	ldr r1, [r5, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C22D2:
	blx sub_0208DA4C
	ldr r5, _021C239C ; =0x021C69B8
	str r0, [sp, #0x10]
	ldr r0, [r5, r4]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021C2394 ; =0x45800000
	bls _021C22F8
	ldr r1, [r5, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C2306
_021C22F8:
	ldr r1, [r5, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C2306:
	blx sub_0208DA4C
	str r0, [sp, #0x14]
	mov r0, #1
	mov ip, r0
	b _021C231C
_021C2312:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _021C2238
_021C231C:
	mov r0, ip
	cmp r0, #0
	bne _021C2380
	ldr r0, [sp]
	bl sub_0201ADE0
	ldr r0, [sp]
	bl sub_0201ADF0
	ldr r1, [sp, #4]
	ldr r1, [r1]
	cmp r1, #0
	bge _021C2338
	b _021C233A
_021C2338:
	neg r0, r0
_021C233A:
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _021C23A0 ; =0x3EA8F5C3
	blx sub_0208DD34
	add r4, r0, #0
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021C2394 ; =0x45800000
	bls _021C2366
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C2374
_021C2366:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C2374:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
_021C2380:
	ldr r0, [sp]
	add r1, sp, #0xc
	bl sub_0201AB54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C238C: .word 0x021C69A0
_021C2390: .word 0x021C69B0
_021C2394: .word 0x45800000
_021C2398: .word 0x021C69B4
_021C239C: .word 0x021C69B8
_021C23A0: .word 0x3EA8F5C3
	thumb_func_end ovy194_21c2200

	thumb_func_start ovy194_21c23a4
ovy194_21c23a4: ; 0x021C23A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r3, #0
	ldr r3, _021C2494 ; =0x021C6904
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021C2498 ; =0x021C6910
	str r0, [r2]
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _021C240E
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	ldr r2, _021C249C ; =0x000005F4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r2, [r5, r2]
	add r0, r7, #0
	bl sub_02020274
	str r0, [sp, #0xc]
	mov r1, #0x22
	bl sub_020202AC
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020202A4
	cmp r7, #0
	bne _021C240E
	ldr r0, [sp, #0x20]
	neg r0, r0
	str r0, [sp, #0x20]
_021C240E:
	ldr r0, _021C24A0 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021C241C
	mov r0, #1
	bl sub_021516A0
_021C241C:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, _021C24A4 ; =0xFFFE4000
	beq _021C2438
	mov r7, #0x21
	str r0, [sp]
	mov r0, #0
	lsl r7, r7, #6
	str r0, [sp, #4]
	lsl r4, r4, #2
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0
	b _021C244A
_021C2438:
	mov r7, #0x21
	str r0, [sp]
	mov r0, #0
	lsl r7, r7, #6
	str r0, [sp, #4]
	ldr r0, [r5, r7]
	lsl r4, r4, #2
	add r1, r6, #0
	mov r2, #1
_021C244A:
	add r3, sp, #0x10
	ldr r3, [r3, r4]
	bl sub_0201C14C
	add r2, r5, r4
	add r1, r7, #4
	str r0, [r2, r1]
	ldr r0, _021C24A0 ; =0x0000118C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021C2466
	mov r0, #0
	bl sub_021516A0
_021C2466:
	ldr r0, _021C24A8 ; =0x00000844
	add r5, r5, r0
	ldr r0, [r5, r4]
	bl sub_0201C290
	add r7, sp, #0x20
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0201AB88
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0201AECC
	ldr r0, [r5, r4]
	ldr r2, [sp, #8]
	add r1, r7, #0
	add r3, r6, #0
	bl ovy194_21c2200
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021C2494: .word 0x021C6904
_021C2498: .word 0x021C6910
_021C249C: .word 0x000005F4
_021C24A0: .word 0x0000118C
_021C24A4: .word 0xFFFE4000
_021C24A8: .word 0x00000844
	thumb_func_end ovy194_21c23a4

	thumb_func_start ovy194_21c24ac
ovy194_21c24ac: ; 0x021C24AC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x14]
	cmp r4, #0
	beq _021C24C0
	cmp r2, #0
	bne _021C24C0
	mov r4, #0
	mov r2, #1
	str r4, [sp, #0x10]
_021C24C0:
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy194_21c23a4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy194_21c24ac

	thumb_func_start ovy194_21c24cc
ovy194_21c24cc: ; 0x021C24CC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy194_21c23a4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy194_21c24cc

	thumb_func_start ovy194_21c24dc
ovy194_21c24dc: ; 0x021C24DC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021C2500 ; =0x00000844
	add r6, r0, #0
	lsl r5, r1, #2
	add r4, r6, r7
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C24FE
	bl sub_0201AD7C
	sub r0, r7, #4
	ldr r0, [r6, r0]
	ldr r1, [r4, r5]
	bl sub_0201AA80
	mov r0, #0
	str r0, [r4, r5]
_021C24FE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2500: .word 0x00000844
	thumb_func_end ovy194_21c24dc

	thumb_func_start ovy194_21c2504
ovy194_21c2504: ; 0x021C2504
	push {r3, r4}
	lsl r1, r0, #1
	add r4, r0, r1
	ldr r3, _021C252C ; =0x021C6F90
	lsl r1, r4, #1
	ldrh r2, [r3, r1]
	add r1, r4, #1
	lsl r1, r1, #1
	ldrh r1, [r3, r1]
	add r0, r4, #2
	lsl r0, r0, #1
	lsl r1, r1, #0x10
	orr r2, r1
	ldrh r0, [r3, r0]
	ldr r1, _021C2530 ; =0x0400048C
	str r2, [r1]
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_021C252C: .word 0x021C6F90
_021C2530: .word 0x0400048C
	thumb_func_end ovy194_21c2504

	thumb_func_start sub_021C2534
sub_021C2534: ; 0x021C2534
	lsl r1, r0, #2
	ldr r0, _021C2540 ; =0x021C6F78
	ldr r1, [r0, r1]
	ldr r0, _021C2544 ; =0x04000484
	str r1, [r0]
	bx lr
	.align 2, 0
_021C2540: .word 0x021C6F78
_021C2544: .word 0x04000484
	thumb_func_end sub_021C2534

	thumb_func_start sub_021C2548
sub_021C2548: ; 0x021C2548
	lsl r1, r0, #2
	ldr r0, _021C2554 ; =0x021C6F68
	ldr r1, [r0, r1]
	ldr r0, _021C2558 ; =0x04000488
	str r1, [r0]
	bx lr
	.align 2, 0
_021C2554: .word 0x021C6F68
_021C2558: .word 0x04000488
	thumb_func_end sub_021C2548

	thumb_func_start ovy194_21c255c
ovy194_21c255c: ; 0x021C255C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp]
	lsl r3, r1, #2
	add r1, r1, r3
	add r1, r1, #2
	str r1, [sp, #4]
	mov r1, #6
	mul r1, r2
	add r1, r1, #3
	mov lr, r1
	add r1, r1, #3
	mov r2, lr
	mov ip, r1
	cmp r2, r1
	bge _021C25D6
	ldr r1, [sp, #4]
	add r6, r1, #3
_021C2580:
	ldr r4, [sp, #4]
	add r1, r4, #0
	cmp r1, r6
	bge _021C25CA
	mov r1, lr
	lsl r7, r1, #5
_021C258C:
	add r3, r4, r7
	lsr r2, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r2
	mov r1, #0x1e
	ror r5, r1
	add r1, r2, r5
	lsl r2, r1, #2
	asr r1, r3, #1
	lsr r1, r1, #0x1e
	add r1, r3, r1
	mov r3, #0xf
	asr r1, r1, #2
	lsl r3, r2
	lsl r1, r1, #1
	mvn r3, r3
	lsl r3, r3, #0x10
	ldrh r5, [r0, r1]
	lsr r3, r3, #0x10
	add r4, r4, #1
	and r3, r5
	strh r3, [r0, r1]
	ldr r3, [sp]
	ldrh r5, [r0, r1]
	lsl r3, r2
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	orr r2, r5
	strh r2, [r0, r1]
	cmp r4, r6
	blt _021C258C
_021C25CA:
	mov r1, lr
	add r2, r1, #1
	mov r1, ip
	mov lr, r2
	cmp r2, r1
	blt _021C2580
_021C25D6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c255c

	thumb_func_start ovy194_21c25dc
ovy194_21c25dc: ; 0x021C25DC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x1e
	mul r0, r2
	add r0, r1, r0
	mov r4, #0
	str r0, [sp]
_021C25EA:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp]
	mov r5, #0
	add r6, r0, r1
_021C25F6:
	ldrb r3, [r6, r5]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy194_21c255c
	add r5, r5, #1
	cmp r5, #6
	blt _021C25F6
	add r4, r4, #1
	cmp r4, #5
	blt _021C25EA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c25dc

	thumb_func_start ovy194_21c2610
ovy194_21c2610: ; 0x021C2610
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r7, #0x1f
_021C261A:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	ror r1, r7
	add r1, r2, r1
	add r2, r4, r2
	asr r2, r2, #1
	ldrb r3, [r5, r4]
	add r0, r6, #0
	add r1, r1, #2
	add r2, r2, #1
	bl ovy194_21c255c
	add r4, r4, #1
	cmp r4, #6
	blt _021C261A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c2610

	thumb_func_start ovy194_21c263c
ovy194_21c263c: ; 0x021C263C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp, #4]
	bl GX_BeginLoadTex
	mov r7, #0x51
	lsl r7, r7, #4
	add r0, r7, #0
	mov r1, #2
	str r7, [sp]
	add r0, #0xe4
	ldrh r0, [r6, r0]
	ldr r3, _021C26D8 ; =0x021C6FC0
	lsl r1, r1, #8
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r5, #0
	cmp r0, #0
	ble _021C26C4
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #8]
	add r0, #0xe6
	str r0, [sp, #8]
	add r7, #0xa6
_021C2676:
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	blx MI_CpuFill8
	cmp r5, #0
	bne _021C2692
	add r0, r4, #0
	add r1, r6, r7
	mov r2, #2
	bl ovy194_21c2610
	b _021C26A0
_021C2692:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r1, r6, r1
	sub r2, r5, #1
	mov r3, #2
	bl ovy194_21c25dc
_021C26A0:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	blx DC_FlushRange
	mov r1, #3
	lsl r2, r5, #9
	lsl r1, r1, #0xc
	add r1, r2, r1
	mov r2, #2
	add r0, r4, #0
	lsl r2, r2, #8
	bl GX_LoadTex
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _021C2676
_021C26C4:
	add r0, r4, #0
	bl sub_0203A24C
	bl GX_EndLoadTex
	add r0, r6, #0
	bl ovy194_21c2930
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C26D8: .word 0x021C6FC0
	thumb_func_end ovy194_21c263c

	thumb_func_start sub_021C26DC
sub_021C26DC: ; 0x021C26DC
	cmp r0, #0
	beq _021C26E4
	mov r0, #1
	b _021C26E6
_021C26E4:
	mov r0, #0
_021C26E6:
	lsl r2, r0, #0xf
	ldr r0, _021C2704 ; =0x6B5A5EF7
	orr r2, r0
	ldr r0, _021C2708 ; =0x040004C0
	str r2, [r0]
	mov r0, #1
	cmp r1, #0
	bne _021C26F8
	mov r0, #0
_021C26F8:
	lsl r1, r0, #0xf
	ldr r0, _021C270C ; =0x00007FFF
	orr r1, r0
	ldr r0, _021C2710 ; =0x040004C4
	str r1, [r0]
	bx lr
	.align 2, 0
_021C2704: .word 0x6B5A5EF7
_021C2708: .word 0x040004C0
_021C270C: .word 0x00007FFF
_021C2710: .word 0x040004C4
	thumb_func_end sub_021C26DC

	thumb_func_start ovy194_21c2714
ovy194_21c2714: ; 0x021C2714
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _021C282C ; =0x04000444
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #0
	str r0, [r5]
	sub r6, r5, #4
	mov r0, #1
	str r0, [r6]
	asr r0, r3, #4
	add r7, r1, #0
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r4, _021C2830 ; =FX_SinCosTable_ ; 0x020946BC
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	bl G3_RotY
	mov r0, #0
	str r0, [r5]
	ldr r0, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	bl G3_RotY
	add r0, r5, #0
	add r0, #0x2c
	mov r1, #0
	str r1, [r0]
	str r1, [r0]
	ldr r1, [sp]
	str r1, [r0]
	ldr r0, _021C2834 ; =0x021C6F44
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	bl G3_RotY
	ldr r0, _021C2834 ; =0x021C6F44
	ldrh r0, [r0, #2]
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	bl G3_RotX
	add r0, r5, #0
	ldr r1, _021C2838 ; =0x00000266
	add r0, #0x28
	str r1, [r0]
	str r1, [r0]
	str r1, [r0]
	mov r4, #3
	str r4, [r6]
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #2
	str r0, [r6]
	mov r0, #1
	mov r1, #1
	bl sub_021C26DC
	lsl r1, r7, #9
	lsl r0, r4, #0xc
	add r0, r1, r0
	lsr r1, r0, #3
	ldr r0, _021C283C ; =0x4D200000
	orr r0, r1
	str r0, [r5, #0x64]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [r5, #0x68]
	ldr r0, _021C2840 ; =0x001F0041
	lsl r1, r7, #0x18
	orr r0, r1
	add r1, r5, #0
	str r0, [r5, #0x60]
	add r1, #0xbc
	mov r0, #1
	str r0, [r1]
	bl sub_021C2548
	mov r0, #0
	bl sub_021C2534
	mov r0, #2
	bl ovy194_21c2504
	mov r0, #0
	bl sub_021C2548
	mov r0, #0
	bl sub_021C2534
	mov r0, #0
	bl ovy194_21c2504
	mov r0, #2
	bl sub_021C2548
	mov r0, #0
	bl sub_021C2534
	mov r0, #4
	bl ovy194_21c2504
	add r0, r4, #0
	bl sub_021C2548
	mov r0, #0
	bl sub_021C2534
	mov r0, #6
	bl ovy194_21c2504
	add r1, r5, #0
	add r1, #0xc0
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	str r0, [r5, #4]
	str r0, [r5, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C282C: .word 0x04000444
_021C2830: .word FX_SinCosTable_
_021C2834: .word 0x021C6F44
_021C2838: .word 0x00000266
_021C283C: .word 0x4D200000
_021C2840: .word 0x001F0041
	thumb_func_end ovy194_21c2714

	thumb_func_start ovy194_21c2844
ovy194_21c2844: ; 0x021C2844
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl G3X_Reset
	mov r0, #0
	str r0, [sp]
	ldr r0, _021C2910 ; =0x021C6F5C
	ldr r1, _021C2914 ; =0x021C67B0
	ldr r2, _021C2918 ; =0x021C6F50
	mov r3, #1
	bl G3i_LookAt_
	ldr r0, _021C291C ; =0x2D8B6127
	ldr r1, _021C2920 ; =0x040004C8
	str r0, [r1]
	ldr r0, _021C2924 ; =0x00007FFF
	str r0, [r1, #4]
	add r0, r4, #0
	bl sub_021B7778
	add r7, r0, #0
	add r5, r7, #1
	mov r0, #0xa0
	add r6, r5, #0
	mul r6, r0
	ldr r0, _021C2928 ; =0x0000107E
	ldrsh r1, [r4, r0]
	cmp r1, #0x60
	bge _021C2890
	cmp r1, #0x30
	bge _021C288E
	mov r0, #0x70
	mul r0, r1
	mov r1, #0x30
	blx sub_0208D65C
	b _021C2894
_021C288E:
	b _021C2890
_021C2890:
	add r0, r1, #0
	add r0, #0x40
_021C2894:
	mov r1, #0xa0
	add r4, r7, #0
	mul r4, r1
	cmp r0, r4
	ble _021C28C2
	sub r1, r0, r4
	cmp r1, #0x50
	bhs _021C28B2
	mov r0, #0x70
	mul r0, r1
	mov r1, #0x50
	blx sub_0208D868
	add r0, r4, r0
	b _021C28C2
_021C28B2:
	sub r1, #0x50
	mov r0, #0x30
	mul r0, r1
	mov r1, #0x50
	blx sub_0208D868
	add r0, r4, r0
	add r0, #0x70
_021C28C2:
	add r0, #0x30
	add r1, r6, #0
	blx sub_0208D65C
	add r0, r1, #0
	asr r1, r0, #0x1f
	lsr r2, r0, #0x10
	lsl r1, r1, #0x10
	orr r1, r2
	lsl r0, r0, #0x10
	asr r3, r6, #0x1f
	add r2, r6, #0
	blx sub_0208D5C4
	mov r4, #0
	cmp r5, #0
	ble _021C290E
	mov r1, #1
	lsl r1, r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	ldr r7, _021C292C ; =0x021C6F44
	lsr r6, r0, #0x10
_021C28F0:
	lsl r0, r4, #0x10
	add r1, r5, #0
	blx sub_0208D65C
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r0, [r7, #8]
	add r1, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ovy194_21c2714
	add r4, r4, #1
	cmp r4, r5
	blt _021C28F0
_021C290E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2910: .word 0x021C6F5C
_021C2914: .word 0x021C67B0
_021C2918: .word 0x021C6F50
_021C291C: .word 0x2D8B6127
_021C2920: .word 0x040004C8
_021C2924: .word 0x00007FFF
_021C2928: .word 0x0000107E
_021C292C: .word 0x021C6F44
	thumb_func_end ovy194_21c2844

	thumb_func_start ovy194_21c2930
ovy194_21c2930: ; 0x021C2930
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021C29A8 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r4]
	mov r0, #0x75
	bl sub_0204AA30
	ldrh r3, [r5, r4]
	mov r1, #0x48
	add r2, sp, #0
	add r6, r0, #0
	bl sub_0204B37C
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0x20
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0x20
	blx DC_FlushRange
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x20
	add r1, #0x22
	mov r2, #0x1e
	blx MI_CpuMove
	ldr r0, _021C29AC ; =0x000014A5
	mov r1, #0x20
	strh r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x20
	blx DC_FlushRange
	bl GX_BeginLoadTexPltt
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0x20
	lsl r1, r1, #8
	mov r2, #0x20
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	ldr r1, _021C29B0 ; =0x00001134
	add r4, #0x20
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C29A8: .word 0x000005F4
_021C29AC: .word 0x000014A5
_021C29B0: .word 0x00001134
	thumb_func_end ovy194_21c2930

	thumb_func_start ovy194_21c29b4
ovy194_21c29b4: ; 0x021C29B4
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021C2A20 ; =0x00001154
	str r0, [sp]
	mov r0, #0
	add r7, r6, #0
	mov ip, r0
	sub r7, #0x20
_021C29C2:
	mov r0, ip
	lsl r1, r0, #1
	ldr r0, [sp]
	mov r2, #0
	add r5, r0, r1
	mov r0, #0
	strh r0, [r5, r6]
_021C29D0:
	lsl r0, r2, #2
	add r4, r2, r0
	ldrh r0, [r5, r7]
	add r1, r0, #0
	asr r1, r4
	mov r0, #0x1f
	add r3, r1, #0
	and r3, r0
	beq _021C29E4
	sub r3, r3, #1
_021C29E4:
	mov r0, #0x1f
	and r0, r3
	lsl r0, r4
	lsl r0, r0, #0x10
	ldrh r1, [r5, r6]
	lsr r0, r0, #0x10
	add r2, r2, #1
	orr r0, r1
	strh r0, [r5, r6]
	cmp r2, #3
	blt _021C29D0
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x10
	blt _021C29C2
	bl GX_BeginLoadTexPltt
	ldr r1, _021C2A20 ; =0x00001154
	ldr r0, [sp]
	mov r2, #0x20
	add r0, r0, r1
	mov r1, #2
	lsl r1, r1, #0xc
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C2A20: .word 0x00001154
	thumb_func_end ovy194_21c29b4

	thumb_func_start ovy194_21c2a24
ovy194_21c2a24: ; 0x021C2A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	ldr r5, _021C2AF8 ; =0x021C6A10
	add r4, r0, #0
	add r3, sp, #0x20
	mov r2, #0x10
_021C2A30:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021C2A30
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r1, sp, #0x20
	mov r0, #4
	ldr r7, _021C2AFC ; =0x000009C4
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, r7]
	mov r6, #6
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0x1c]
	mov r2, #7
	str r2, [sp, #0x10]
	mov r2, #0
	str r2, [sp, #0x14]
	mov r2, #2
	str r2, [sp, #0x18]
	ldr r2, _021C2B00 ; =0x00000894
	str r0, [sp, #0xc]
	ldr r3, [r4, r2]
	lsl r3, r3, #0x10
	lsr r5, r3, #0x10
	add r3, r2, #0
	strh r5, [r1, #0x28]
	sub r3, #0x14
	ldr r3, [r4, r3]
	add r2, #0x1c
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	strh r3, [r1, #0x2a]
	ldr r2, [r4, r2]
	lsl r2, r2, #0x10
	strh r0, [r1, #0x32]
	mov r0, #0
	lsr r2, r2, #0x10
	strh r6, [r1, #0x2e]
	mov r6, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x60
	strh r6, [r1, #0x30]
	strh r2, [r1, #0x2c]
	ldr r1, _021C2B04 ; =0x0000054C
	mov r6, #9
	strh r6, [r0, #0xe]
	mov r6, #8
	strh r6, [r0, #0x10]
	mov r6, #7
	strh r6, [r0, #0x12]
	mov r6, #8
	strh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
	mov r2, #0x16
	strh r2, [r0, #0x2e]
	mov r2, #0x15
	strh r2, [r0, #0x30]
	mov r2, #0x14
	strh r5, [r0, #8]
	strh r3, [r0, #0xa]
	strh r5, [r0, #0x28]
	strh r3, [r0, #0x2a]
	strh r2, [r0, #0x32]
	mov r0, #0x30
	str r0, [sp, #0x98]
	str r1, [sp, #0x5c]
	str r6, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r1, [sp, #0x9c]
	add r1, #0xa8
	ldrh r1, [r4, r1]
	add r0, sp, #0
	bl sub_02199AA0
	sub r1, r7, #4
	str r0, [r4, r1]
	mov r1, #9
	mov r2, #0
	bl sub_02199D18
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r1, #8
	mov r2, #0
	bl sub_02199D18
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02199CE0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C2AF8: .word 0x021C6A10
_021C2AFC: .word 0x000009C4
_021C2B00: .word 0x00000894
_021C2B04: .word 0x0000054C
	thumb_func_end ovy194_21c2a24

	thumb_func_start ovy194_21c2b08
ovy194_21c2b08: ; 0x021C2B08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
	bl sub_0201CC98
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021C2B7A
	add r0, r5, #0
	mov r1, #0x4c
	add r2, r4, #0
	bl sub_0201CD88
	cmp r0, #0
	bne _021C2B6A
	add r0, r5, #0
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CD88
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	add r2, r7, #0
	bl sub_02020274
	mov r1, #0x21
	add r6, r0, #0
	bl sub_020202AC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl sub_020202A4
	b _021C2B74
_021C2B6A:
	ldr r0, _021C2B88 ; =0x000001EA
	mov r4, #1
	cmp r6, r0
	beq _021C2B74
	mov r4, #8
_021C2B74:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_021C2B7A:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0201CCC0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2B88: .word 0x000001EA
	thumb_func_end ovy194_21c2b08

	thumb_func_start ovy194_21c2b8c
ovy194_21c2b8c: ; 0x021C2B8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
_021C2B96:
	ldr r0, _021C2BB8 ; =0x00000828
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02007CF4
	ldr r1, _021C2BBC ; =0x000005F4
	ldrh r1, [r5, r1]
	bl ovy194_21c2b08
	strb r0, [r6, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x1e
	blo _021C2B96
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2BB8: .word 0x00000828
_021C2BBC: .word 0x000005F4
	thumb_func_end ovy194_21c2b8c

	thumb_func_start ovy194_21c2bc0
ovy194_21c2bc0: ; 0x021C2BC0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r0, r7, #0
	add r5, r2, #0
	bl sub_0201FDF8
	str r0, [sp]
	mov r4, #0
_021C2BD2:
	ldr r0, [sp]
	cmp r0, r4
	ble _021C2BEE
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0201FF08
	bl sub_0201D620
	ldr r1, _021C2C00 ; =0x000005F4
	ldrh r1, [r6, r1]
	bl ovy194_21c2b08
	b _021C2BF0
_021C2BEE:
	mov r0, #0
_021C2BF0:
	strb r0, [r5, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021C2BD2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C2C00: .word 0x000005F4
	thumb_func_end ovy194_21c2bc0

	thumb_func_start ovy194_21c2c04
ovy194_21c2c04: ; 0x021C2C04
	push {r3, lr}
	b _021C2C2E
_021C2C08:
	cmp r1, r3
	bne _021C2C1E
	ldr r1, _021C2C40 ; =0x00000838
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r1, [r0, r1]
	add r2, r0, r2
	bl ovy194_21c2bc0
	mov r0, #1
	pop {r3, pc}
_021C2C1E:
	add r3, r0, #0
	mov r2, #0x1e
	add r3, #0x10
	mul r2, r1
	add r2, r3, r2
	bl ovy194_21c2b8c
	b _021C2C3A
_021C2C2E:
	mov r2, #0x63
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	add r2, r3, #1
	cmp r1, r2
	blt _021C2C08
_021C2C3A:
	mov r0, #0
	pop {r3, pc}
	nop
_021C2C40: .word 0x00000838
	thumb_func_end ovy194_21c2c04
_021C2C44:
	.byte 0x03, 0x4A, 0x03, 0x1C, 0x9A, 0x5A, 0x03, 0x48, 0x03, 0x49, 0x04, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0xF4, 0x05, 0x00, 0x00, 0xE8, 0x6A, 0x1C, 0x02, 0x44, 0x6B, 0x1C, 0x02
	.byte 0xA9, 0xB6, 0x04, 0x02

	thumb_func_start sub_021C2C64
sub_021C2C64: ; 0x021C2C64
	ldr r2, _021C2C74 ; =0x000005F4
	add r3, r0, #0
	ldrh r2, [r3, r2]
	ldr r0, _021C2C78 ; =0x021C6ACC
	ldr r1, _021C2C7C ; =0x021C6B44
	ldr r3, _021C2C80 ; =sub_0204B6A8
	bx r3
	nop
_021C2C74: .word 0x000005F4
_021C2C78: .word 0x021C6ACC
_021C2C7C: .word 0x021C6B44
_021C2C80: .word sub_0204B6A8
	thumb_func_end sub_021C2C64

	thumb_func_start ovy194_21c2c84
ovy194_21c2c84: ; 0x021C2C84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021C2D04 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r1]
	mov r0, #0x67
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021B7808
	mov r6, #4
	cmp r0, #0
	bne _021C2CA4
	mov r6, #0xb
_021C2CA4:
	mov r7, #0
	ldr r0, _021C2D04 ; =0x000005F4
	str r7, [sp]
	ldrh r0, [r5, r0]
	mov r1, #9
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B0D4
	ldr r0, _021C2D08 ; =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021C2CDA
	ldr r0, _021C2D04 ; =0x000005F4
	str r7, [sp]
	ldrh r0, [r5, r0]
	mov r1, #0xa
	mov r2, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204AE3C
	ldr r1, _021C2D08 ; =0x0000086C
	str r0, [r5, r1]
_021C2CDA:
	ldr r0, _021C2D08 ; =0x0000086C
	mov r3, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, _021C2D04 ; =0x000005F4
	str r3, [sp, #8]
	ldrh r0, [r5, r0]
	mov r2, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2D04: .word 0x000005F4
_021C2D08: .word 0x0000086C
	thumb_func_end ovy194_21c2c84

	thumb_func_start ovy194_21c2d0c
ovy194_21c2d0c: ; 0x021C2D0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021C2D30 ; =0x0000086C
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021C2D28
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #2
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
_021C2D28:
	ldr r0, _021C2D30 ; =0x0000086C
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021C2D30: .word 0x0000086C
	thumb_func_end ovy194_21c2d0c

	thumb_func_start ovy194_21c2d34
ovy194_21c2d34: ; 0x021C2D34
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _021C2D70 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x67
	bl sub_0204AA30
	mov r1, #0x87
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrh r1, [r5, r6]
	add r4, r0, #0
	mov r2, #4
	str r1, [sp, #0xc]
	mov r1, #0xc
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021C2D70: .word 0x000005F4
	thumb_func_end ovy194_21c2d34

	thumb_func_start sub_021C2D74
sub_021C2D74: ; 0x021C2D74
	bx lr
	.align 2, 0
	thumb_func_end sub_021C2D74

	thumb_func_start ovy194_21c2d78
ovy194_21c2d78: ; 0x021C2D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _021C2DE0 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x67
	bl sub_0204AA30
	mov r1, #0xc0
	str r1, [sp]
	ldrh r1, [r5, r6]
	mov r2, #4
	mov r7, #0
	str r1, [sp, #4]
	mov r1, #0x11
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, r6]
	mov r1, #0xd
	mov r2, #7
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AE3C
	ldr r1, _021C2DE4 ; =0x00000874
	mov r2, #5
	str r0, [r5, r1]
	str r7, [sp]
	ldrh r0, [r5, r6]
	mov r1, #0xd
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0204AE3C
	ldr r1, _021C2DE4 ; =0x00000874
	sub r1, r1, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r1, _021C2DE4 ; =0x00000874
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy194_21c3128
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2DE0: .word 0x000005F4
_021C2DE4: .word 0x00000874
	thumb_func_end ovy194_21c2d78

	thumb_func_start ovy194_21c2de8
ovy194_21c2de8: ; 0x021C2DE8
	push {r3, r4, r5, lr}
	ldr r4, _021C2E00 ; =0x000005F4
	add r5, r0, #0
	ldrh r3, [r5, r4]
	mov r0, #6
	mov r1, #0xf
	mov r2, #0
	bl sub_02024D20
	add r4, #0x50
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C2E00: .word 0x000005F4
	thumb_func_end ovy194_21c2de8

	thumb_func_start ovy194_21c2e04
ovy194_21c2e04: ; 0x021C2E04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21c31e0
	mov r5, #0x87
	lsl r5, r5, #4
	ldr r2, [r4, r5]
	cmp r2, #0
	beq _021C2E2A
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #5
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #0
	str r0, [r4, r5]
_021C2E2A:
	ldr r5, _021C2E64 ; =0x00000874
	ldr r2, [r4, r5]
	cmp r2, #0
	beq _021C2E46
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #7
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #0
	str r0, [r4, r5]
_021C2E46:
	ldr r5, _021C2E68 ; =0x00000644
	ldr r2, [r4, r5]
	cmp r2, #0
	beq _021C2E62
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #6
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #0
	str r0, [r4, r5]
_021C2E62:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C2E64: .word 0x00000874
_021C2E68: .word 0x00000644
	thumb_func_end ovy194_21c2e04

	thumb_func_start ovy194_21c2e6c
ovy194_21c2e6c: ; 0x021C2E6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _021C2EE8 ; =0x00000888
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021C2EE4
	bl sub_0202D7E0
	ldr r7, _021C2EEC ; =0x000005F4
	ldrh r1, [r5, r7]
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5, r7]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	str r0, [r5, r4]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0xc]
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5, r7]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204BDE0
	add r4, #0x30
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
_021C2EE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2EE8: .word 0x00000888
_021C2EEC: .word 0x000005F4
	thumb_func_end ovy194_21c2e6c

	thumb_func_start ovy194_21c2ef0
ovy194_21c2ef0: ; 0x021C2EF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021C2F6C ; =0x021C6BD4
	add r4, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	ldr r1, _021C2F70 ; =0x000005F4
	str r0, [sp, #0x14]
	ldrh r1, [r5, r1]
	mov r0, #0x67
	add r6, r2, #0
	bl sub_0204AA30
	mov r1, #0x87
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	lsl r2, r6, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _021C2F70 ; =0x000005F4
	mov r3, #0
	ldrh r1, [r5, r1]
	add r7, r0, #0
	mov r6, #4
	str r1, [sp, #0xc]
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	mov r2, #4
	bl sub_0204AFB0
	cmp r4, #0
	beq _021C2F44
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x80
	b _021C2F4A
_021C2F44:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
_021C2F4A:
	bl sub_02044CFC
	ldr r0, _021C2F74 ; =0x00000F04
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C2F6C: .word 0x021C6BD4
_021C2F70: .word 0x000005F4
_021C2F74: .word 0x00000F04
	thumb_func_end ovy194_21c2ef0

	thumb_func_start ovy194_21c2f78
ovy194_21c2f78: ; 0x021C2F78
	push {r4, lr}
	add r4, r0, #0
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	add r0, r4, #0
	bl ovy194_21c5504
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c2f78

	thumb_func_start ovy194_21c2fa4
ovy194_21c2fa4: ; 0x021C2FA4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021C3010 ; =0x00000638
	add r4, r2, #0
	ldr r1, [r4, r1]
	add r6, r3, #0
	cmp r0, r1
	blt _021C2FB6
	sub r0, r0, r1
_021C2FB6:
	cmp r0, #0xc
	bge _021C2FE0
	cmp r6, #0
	beq _021C2FD0
	mov r1, #0x46
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	lsl r1, r5, #5
	add r1, #0x12
	add r0, r0, r1
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	pop {r4, r5, r6, pc}
_021C2FD0:
	ldr r1, _021C3014 ; =0x00001178
	ldr r2, [r4, r1]
	lsl r1, r5, #5
	add r1, #0x12
	add r0, r0, r1
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	pop {r4, r5, r6, pc}
_021C2FE0:
	sub r0, #0xc
	mov r1, #0x14
	blx sub_0208D65C
	add r0, r1, #0
	cmp r6, #0
	beq _021C2FFE
	ldr r1, _021C3018 ; =0x0000117C
	ldr r2, [r4, r1]
	lsl r1, r5, #5
	add r1, #0x12
	add r0, r0, r1
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	pop {r4, r5, r6, pc}
_021C2FFE:
	ldr r1, _021C301C ; =0x00001174
	ldr r2, [r4, r1]
	lsl r1, r5, #5
	add r1, #0x12
	add r0, r0, r1
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	pop {r4, r5, r6, pc}
	nop
_021C3010: .word 0x00000638
_021C3014: .word 0x00001178
_021C3018: .word 0x0000117C
_021C301C: .word 0x00001174
	thumb_func_end ovy194_21c2fa4

	thumb_func_start ovy194_21c3020
ovy194_21c3020: ; 0x021C3020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r3, r2, #0
	mov lr, r0
_021C302E:
	mov r1, lr
	lsl r2, r1, #2
	mov r1, lr
	add r2, r1, r2
	ldr r1, [sp]
	ldr r6, _021C30B4 ; =0x00000DCC
	add r1, r1, r2
	str r1, [sp, #4]
	mov r2, #0x14
	mov r1, lr
	mul r2, r1
	ldr r1, [sp]
	mov r0, #0
	add r7, r1, r2
	ldr r1, _021C30B4 ; =0x00000DCC
	add r6, #0xf0
	add r1, r1, #2
	mov ip, r1
_021C3052:
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldrb r1, [r1, r6]
	cmp r1, #0
	beq _021C309C
	lsl r1, r0, #2
	add r4, r7, r1
	ldr r1, _021C30B4 ; =0x00000DCC
	mov r2, ip
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	sub r1, r1, #5
	sub r2, #8
	cmp r1, #0
	bge _021C3072
	sub r1, #8
_021C3072:
	asr r4, r1, #2
	lsr r4, r4, #0x1d
	add r4, r1, r4
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r4, r4, #3
	asr r1, r1, #3
	cmp r4, r5
	bgt _021C309C
	add r2, r4, #3
	cmp r2, r5
	ble _021C309C
	cmp r1, r3
	bgt _021C309C
	add r1, r1, #3
	cmp r1, r3
	ble _021C309C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C309C:
	add r0, r0, #1
	cmp r0, #5
	blt _021C3052
	mov r0, lr
	add r0, r0, #1
	mov lr, r0
	cmp r0, #0xc
	blt _021C302E
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C30B4: .word 0x00000DCC
	thumb_func_end ovy194_21c3020

	thumb_func_start ovy194_21c30b8
ovy194_21c30b8: ; 0x021C30B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021C3124 ; =0x0000107C
	add r6, r0, #0
	ldrsh r2, [r6, r1]
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r7, r1, #3
	bl ovy194_21c3bc0
	mov r5, #0
_021C30CE:
	mov r4, #0
_021C30D0:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy194_21c3020
	add r3, r0, #0
	add r0, r7, r4
	add r1, r5, #0
	add r2, r6, #0
	bl ovy194_21c2fa4
	add r3, r0, #0
	mov r0, #7
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0204694C
	add r4, r4, #1
	cmp r4, #0x34
	blt _021C30D0
	add r5, r5, #1
	cmp r5, #0x18
	blt _021C30CE
	ldr r3, _021C3124 ; =0x0000107C
	ldrsh r0, [r6, r3]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r3, #0
	add r1, r2, r1
	add r0, #0x10
	str r1, [r6, r0]
	mov r0, #1
	add r3, #8
	str r0, [r6, r3]
	mov r0, #7
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3124: .word 0x0000107C
	thumb_func_end ovy194_21c30b8

	thumb_func_start ovy194_21c3128
ovy194_21c3128: ; 0x021C3128
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021C31D0 ; =0x000005F4
	add r4, r0, #0
	ldrh r2, [r4, r5]
	add r6, r1, #0
	mov r0, #0x67
	mov r1, #0xe
	bl sub_0204A934
	ldr r1, _021C31D4 ; =0x00001174
	str r0, [r4, r1]
	ldrh r2, [r4, r5]
	mov r0, #0x67
	mov r1, #0xf
	bl sub_0204A934
	ldr r1, _021C31D4 ; =0x00001174
	add r1, r1, #4
	str r0, [r4, r1]
	ldrh r2, [r4, r5]
	mov r0, #0x67
	mov r1, #0x19
	bl sub_0204A934
	ldr r1, _021C31D4 ; =0x00001174
	add r1, #8
	str r0, [r4, r1]
	ldrh r2, [r4, r5]
	mov r0, #0x67
	mov r1, #0x1a
	bl sub_0204A934
	ldr r1, _021C31D4 ; =0x00001174
	ldr r7, _021C31D4 ; =0x00001174
	add r1, #0xc
	str r0, [r4, r1]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, _021C31D4 ; =0x00001174
	ldr r6, _021C31D4 ; =0x00001174
	add r0, r0, #4
	mov r1, #0
	mov ip, r0
	add r7, #8
	add r6, #0xc
_021C3186:
	ldr r2, _021C31D4 ; =0x00001174
	lsl r0, r1, #1
	ldr r2, [r4, r2]
	add r1, r1, #1
	add r2, r2, r0
	ldrh r5, [r2, #0x24]
	add r5, r5, r3
	strh r5, [r2, #0x24]
	mov r2, ip
	ldr r2, [r4, r2]
	add r2, r2, r0
	ldrh r5, [r2, #0x24]
	add r5, r5, r3
	strh r5, [r2, #0x24]
	ldr r2, [r4, r7]
	add r2, r2, r0
	ldrh r5, [r2, #0x24]
	add r5, r5, r3
	strh r5, [r2, #0x24]
	ldr r2, [r4, r6]
	add r0, r2, r0
	ldrh r2, [r0, #0x24]
	add r2, r2, r3
	strh r2, [r0, #0x24]
	mov r0, #3
	lsl r0, r0, #8
	cmp r1, r0
	blt _021C3186
	ldr r0, _021C31D8 ; =0x0000063C
	ldr r1, [r4, r0]
	ldr r0, _021C31DC ; =0x0000107C
	sub r1, #0x50
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ovy194_21c30b8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C31D0: .word 0x000005F4
_021C31D4: .word 0x00001174
_021C31D8: .word 0x0000063C
_021C31DC: .word 0x0000107C
	thumb_func_end ovy194_21c3128

	thumb_func_start ovy194_21c31e0
ovy194_21c31e0: ; 0x021C31E0
	push {r4, r5, r6, lr}
	ldr r4, _021C3220 ; =0x00001174
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C321E
	bl sub_0203A24C
	mov r6, #0
	str r6, [r5, r4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0203A24C
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0203A24C
	add r0, r4, #0
	add r0, #8
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0203A24C
	add r4, #0xc
	str r6, [r5, r4]
_021C321E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C3220: .word 0x00001174
	thumb_func_end ovy194_21c31e0

	thumb_func_start ovy194_21c3224
ovy194_21c3224: ; 0x021C3224
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _021C336C ; =0x000005F4
	mov r3, #7
	str r0, [sp, #0xc]
	ldrh r0, [r5, r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #6
	bl sub_0204B0B8
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, #0x3c
	ldr r0, [r5, r0]
	add r0, r0, #1
	cmp r0, #0
	bgt _021C3254
	b _021C3366
_021C3254:
	ldr r0, [sp, #0xc]
	add r7, r6, #0
	str r0, [sp, #0x14]
	add r0, #0xc4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, #0x3c
	str r0, [sp, #0xc]
	ldr r0, _021C3370 ; =0x00000828
	str r0, [sp, #0x1c]
	sub r0, #0xf8
	str r0, [sp, #0x1c]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x38]
	sub r0, #0x68
	str r0, [sp, #0x38]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x34]
	sub r0, #0x68
	str r0, [sp, #0x34]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	add r0, #8
	str r0, [sp, #0x30]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #0x10
	str r0, [sp, #0x2c]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	sub r0, #0x68
	str r0, [sp, #0x28]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x24]
	sub r0, #0x68
	str r0, [sp, #0x24]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	sub r0, #0xf0
	str r0, [sp, #0x20]
	mov r0, #0x72
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	sub r0, #0x68
	str r0, [sp, #0x10]
_021C32C6:
	lsl r0, r6, #2
	add r4, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021C32EE
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0xf
	bl sub_020480C0
	ldr r1, [sp, #0x14]
	str r0, [r4, r1]
_021C32EE:
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r6, r0
	bne _021C3308
	mov r0, #0x72
	ldr r2, [sp, #0x18]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x10
	bl GFL_MsgDataLoadStrbuf
	b _021C3316
_021C3308:
	ldr r0, _021C3370 ; =0x00000828
	ldr r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl sub_02007B24
_021C3316:
	mov r0, #0xf
	mov r1, #2
	add r2, r7, #0
	bl sub_020232E8
	ldr r0, [sp, #0x38]
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r7, #0
	bl sub_0204713C
	ldr r0, [sp, #0x34]
	ldr r0, [r4, r0]
	bl sub_020484F4
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x2c]
	ldr r1, [r5, r1]
	mov r2, #1
	str r1, [sp]
	ldr r3, [r5, r3]
	add r1, r7, #0
	bl sub_02021CFC
	ldr r0, [sp, #0x28]
	ldr r0, [r4, r0]
	bl sub_02048244
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_02048500
	ldr r0, [sp, #0x20]
	add r6, r6, #1
	ldr r0, [r5, r0]
	add r0, r0, #1
	cmp r6, r0
	blt _021C32C6
_021C3366:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021C336C: .word 0x000005F4
_021C3370: .word 0x00000828
	thumb_func_end ovy194_21c3224

	thumb_func_start ovy194_21c3374
ovy194_21c3374: ; 0x021C3374
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021C3398 ; =0x000006B8
	add r6, r0, #0
	mov r4, #0
_021C337C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021C338E
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r7]
_021C338E:
	add r4, r4, #1
	cmp r4, #0x19
	blt _021C337C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3398: .word 0x000006B8
	thumb_func_end ovy194_21c3374

	thumb_func_start ovy194_21c339c
ovy194_21c339c: ; 0x021C339C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021C3478 ; =0x0000107C
	str r0, [sp]
	ldrsh r1, [r0, r1]
	mov r5, #0
	mov r7, #5
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r6, r0, #3
_021C33B2:
	mov r4, #0
_021C33B4:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_0204694C
	add r4, r4, #1
	cmp r4, #0x40
	blt _021C33B4
	add r5, r5, #1
	cmp r5, #2
	blt _021C33B2
	ldr r1, _021C3478 ; =0x0000107C
	ldr r0, [sp]
	ldrsh r0, [r0, r1]
	cmp r0, #0x60
	bge _021C33E0
	mov r1, #0x63
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r7, [r0, r1]
	b _021C33EA
_021C33E0:
	sub r0, #0x60
	mov r1, #0xa0
	blx sub_0208D65C
	add r7, r0, #0
_021C33EA:
	ldr r0, _021C347C ; =0x00000638
	mov r4, #0
	str r0, [sp, #0xc]
	add r0, #0x80
	str r0, [sp, #0xc]
	ldr r0, _021C347C ; =0x00000638
	str r0, [sp, #8]
	add r0, #0x80
	str r0, [sp, #8]
	ldr r0, _021C347C ; =0x00000638
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
_021C3404:
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r7, r4
	ldr r1, [r2, r1]
	cmp r0, r1
	ble _021C3416
	sub r0, r0, r1
	sub r0, r0, #1
	b _021C341E
_021C3416:
	cmp r0, #0
	bge _021C341E
	add r0, r0, r1
	add r0, r0, #1
_021C341E:
	cmp r0, r1
	bne _021C3436
	ldr r2, [sp]
	ldr r1, _021C347C ; =0x00000638
	ldr r2, [r2, r1]
	sub r1, r2, r6
	cmp r6, r1
	ble _021C3432
	sub r6, r6, r2
	b _021C343E
_021C3432:
	neg r1, r6
	b _021C343E
_021C3436:
	mov r1, #0x14
	mul r1, r0
	add r1, #0xc
	sub r1, r1, r6
_021C343E:
	mov r2, #9
	mvn r2, r2
	cmp r1, r2
	blt _021C3466
	cmp r1, #0x21
	bgt _021C3466
	lsl r2, r0, #2
	ldr r0, [sp]
	add r1, r1, #1
	add r5, r0, r2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_020484FC
	ldr r0, [sp, #8]
	ldr r0, [r5, r0]
	bl sub_0204826C
_021C3466:
	add r4, r4, #1
	cmp r4, #3
	blt _021C3404
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3478: .word 0x0000107C
_021C347C: .word 0x00000638
	thumb_func_end ovy194_21c339c

	thumb_func_start ovy194_21c3480
ovy194_21c3480: ; 0x021C3480
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r7, _021C3604 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r7]
	mov r0, #7
	bl sub_0204AA30
	str r0, [sp, #0x10]
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5, r7]
	mov r2, #1
	mov r3, #0x60
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_0204BC48
	ldr r4, _021C3608 ; =0x0000087C
	str r0, [r5, r4]
	bl sub_02021154
	add r6, r0, #0
	bl sub_02021190
	add r2, r0, #0
	ldrh r3, [r5, r7]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	bl sub_0204BDE0
	add r4, #0x30
	str r0, [r5, r4]
	mov r0, #0
	str r0, [sp, #0x14]
_021C34C8:
	ldr r0, [sp, #0x14]
	mov r1, #0x14
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0xc]
	ldr r0, _021C360C ; =0x0000055E
	mov r7, #0
	str r0, [sp, #0x44]
	add r0, #0x96
	str r0, [sp, #0x44]
	ldr r0, _021C360C ; =0x0000055E
	add r6, r7, #0
	str r0, [sp, #0x40]
	add r0, #0x96
	str r0, [sp, #0x40]
	ldr r0, _021C3610 ; =0x000009CC
	str r0, [sp, #0x3c]
	sub r0, #8
	str r0, [sp, #0x3c]
	ldr r0, _021C3608 ; =0x0000087C
	str r0, [sp, #0x38]
	add r0, #0x30
	str r0, [sp, #0x38]
	ldr r0, _021C3610 ; =0x000009CC
	str r0, [sp, #0x34]
	add r0, #0xf4
	str r0, [sp, #0x34]
	ldr r0, _021C360C ; =0x0000055E
	str r0, [sp, #0x30]
	add r0, #0x96
	str r0, [sp, #0x30]
	ldr r0, _021C3610 ; =0x000009CC
	str r0, [sp, #0x2c]
	sub r0, #8
	str r0, [sp, #0x2c]
	ldr r0, _021C3608 ; =0x0000087C
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _021C3608 ; =0x0000087C
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, _021C3608 ; =0x0000087C
	str r0, [sp, #0x20]
	add r0, #0x34
	str r0, [sp, #0x20]
	mov r0, #0xbb
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	sub r0, #0xf0
	str r0, [sp, #0x1c]
	mov r0, #0xbb
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	sub r0, #0xf0
	str r0, [sp, #0x18]
_021C3538:
	add r0, sp, #0x48
	strh r6, [r0]
	strh r6, [r0, #2]
	mov r1, #1
	strh r1, [r0, #4]
	mov r1, #0x10
	strb r1, [r0, #6]
	mov r1, #3
	strb r1, [r0, #7]
	ldr r0, [sp, #0xc]
	lsl r1, r7, #2
	add r4, r0, r1
	ldr r0, [sp, #0x44]
	ldr r1, _021C360C ; =0x0000055E
	ldrh r0, [r5, r0]
	add r2, r6, #0
	mov r3, #1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_0204B81C
	ldr r1, _021C3610 ; =0x000009CC
	ldr r2, _021C3608 ; =0x0000087C
	str r0, [r4, r1]
	add r0, sp, #0x48
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [r4, r1]
	add r0, sp, #0x48
	strh r6, [r0, #4]
	mov r1, #0xf
	strb r1, [r0, #6]
	add r0, sp, #0x48
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldrh r0, [r5, r0]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl sub_0204C124
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0204C124
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r7, r7, #1
	cmp r7, #5
	blt _021C3538
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xc
	bge _021C35F8
	b _021C34C8
_021C35F8:
	ldr r0, [sp, #0x10]
	bl sub_0204AB0C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3604: .word 0x000005F4
_021C3608: .word 0x0000087C
_021C360C: .word 0x0000055E
_021C3610: .word 0x000009CC
	thumb_func_end ovy194_21c3480

	thumb_func_start ovy194_21c3614
ovy194_21c3614: ; 0x021C3614
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r2, #0x14
	mul r2, r1
	add r7, r0, r2
	mov r0, #0x2b
	lsl r0, r0, #6
	str r0, [sp]
	add r0, #0xf0
	str r0, [sp]
	mov r0, #0x2b
	lsl r0, r0, #6
	str r0, [sp, #8]
	sub r0, #0xf4
	str r0, [sp, #8]
	mov r0, #0x2b
	mov r6, #0x2b
	lsl r0, r0, #6
	lsl r6, r6, #6
	str r0, [sp, #4]
	sub r0, #0xf4
	mov r4, #0
	add r6, #0xf0
	str r0, [sp, #4]
_021C3644:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C365E
	bl sub_0204C108
	mov r0, #0x2b
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
_021C365E:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021C366E
	bl sub_0204C108
	ldr r0, [sp]
	mov r1, #0
	str r1, [r5, r0]
_021C366E:
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C3680
	bl sub_0204B98C
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r5, r0]
_021C3680:
	add r4, r4, #1
	cmp r4, #5
	blt _021C3644
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c3614

	thumb_func_start ovy194_21c368c
ovy194_21c368c: ; 0x021C368C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy194_21c57a8
	mov r5, #0
_021C3696:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy194_21c3614
	add r5, r5, #1
	cmp r5, #0xc
	blt _021C3696
	ldr r5, _021C36D8 ; =0x0000087C
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C36B4
	bl sub_0204BCD0
	mov r0, #0
	str r0, [r4, r5]
_021C36B4:
	ldr r5, _021C36DC ; =0x000008AC
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C36C4
	bl sub_0204BE64
	mov r0, #0
	str r0, [r4, r5]
_021C36C4:
	ldr r0, _021C36E0 ; =0x00001184
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C36D0
	bl sub_0203A24C
_021C36D0:
	ldr r0, _021C36E0 ; =0x00001184
	mov r1, #0
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C36D8: .word 0x0000087C
_021C36DC: .word 0x000008AC
_021C36E0: .word 0x00001184
	thumb_func_end ovy194_21c368c

	thumb_func_start ovy194_21c36e4
ovy194_21c36e4: ; 0x021C36E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy194_21c5e5c
	add r0, r5, #0
	bl ovy194_21c0aac
	ldr r7, _021C3768 ; =0x00000EFC
	mov r4, #0
_021C36F6:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021C3708
	bl sub_0204C108
	mov r0, #0
	str r0, [r6, r7]
_021C3708:
	add r4, r4, #1
	cmp r4, #0xa
	blt _021C36F6
	ldr r7, _021C376C ; =0x0000087C
	mov r4, #0
_021C3712:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021C3724
	bl sub_0204BCD0
	mov r0, #0
	str r0, [r6, r7]
_021C3724:
	add r4, r4, #1
	cmp r4, #6
	blt _021C3712
	cmp r4, #0xc
	bge _021C3748
	ldr r7, _021C376C ; =0x0000087C
_021C3730:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021C3742
	bl sub_0204B98C
	mov r0, #0
	str r0, [r6, r7]
_021C3742:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021C3730
_021C3748:
	cmp r4, #0x12
	bge _021C3766
	ldr r7, _021C376C ; =0x0000087C
_021C374E:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021C3760
	bl sub_0204BE64
	mov r0, #0
	str r0, [r6, r7]
_021C3760:
	add r4, r4, #1
	cmp r4, #0x12
	blt _021C374E
_021C3766:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C3768: .word 0x00000EFC
_021C376C: .word 0x0000087C
	thumb_func_end ovy194_21c36e4

	thumb_func_start ovy194_21c3770
ovy194_21c3770: ; 0x021C3770
	push {r3, r4}
	add r3, r0, #1
	mov r0, #0x18
	add r4, r3, #0
	mul r4, r0
	mul r0, r1
	add r0, #0x48
	strh r4, [r2]
	strh r0, [r2, #2]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy194_21c3770

	thumb_func_start ovy194_21c3788
ovy194_21c3788: ; 0x021C3788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r7, r3, #0
	ldr r6, [sp, #0x20]
	cmp r5, #2
	blt _021C37C0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy194_21b7854
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b786c
	add r2, r0, #0
	mov r0, #0
	str r0, [r6]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r3, r7, #0
	bl ovy194_21b7b30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021C37C0:
	cmp r4, #3
	bge _021C37DA
	mov r1, #1
	str r1, [r6]
	mov r1, #0x63
	lsl r1, r1, #4
	lsl r2, r4, #1
	ldr r1, [r7, r1]
	add r2, r5, r2
	bl ovy194_21b7b30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021C37DA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c3788

	thumb_func_start ovy194_21c37e0
ovy194_21c37e0: ; 0x021C37E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #2
	blt _021C3808
	add r1, r6, #0
	bl ovy194_21b7854
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy194_21b786c
	add r1, r0, #0
	add r0, r7, #0
	add r2, r6, #0
	bl ovy194_21b7b84
	pop {r3, r4, r5, r6, r7, pc}
_021C3808:
	cmp r4, #3
	bge _021C381C
	mov r0, #0x63
	lsl r0, r0, #4
	lsl r1, r4, #1
	ldr r0, [r6, r0]
	add r1, r5, r1
	bl ovy194_21b7b84
	pop {r3, r4, r5, r6, r7, pc}
_021C381C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c37e0

	thumb_func_start ovy194_21c3820
ovy194_21c3820: ; 0x021C3820
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021C3884 ; =0x00000F54
	add r0, r0, #4
	str r0, [sp, #4]
_021C3830:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #2
	add r7, r5, r0
_021C3838:
	mov r0, #0x14
	mul r0, r4
	add r6, r7, r0
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0204C138
	cmp r0, #0
	beq _021C386E
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #8
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, _021C3884 ; =0x00000F54
	str r1, [r5, r0]
	add r1, sp, #8
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #4]
	str r1, [r5, r0]
_021C386E:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021C3838
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #5
	blt _021C3830
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C3884: .word 0x00000F54
	thumb_func_end ovy194_21c3820

	thumb_func_start sub_021C3888
sub_021C3888: ; 0x021C3888
	mov r2, #2
	lsl r2, r2, #0xa
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _021C38A0
	sub r2, r0, #1
	ldr r0, _021C38A4 ; =0x021C70A4
	ldrb r0, [r0, r1]
	cmp r2, r0
	bne _021C38A0
	mov r0, #1
	bx lr
_021C38A0:
	mov r0, #0
	bx lr
	.align 2, 0
_021C38A4: .word 0x021C70A4
	thumb_func_end sub_021C3888

	thumb_func_start sub_021C38A8
sub_021C38A8: ; 0x021C38A8
	ldr r2, _021C38B8 ; =0x021C70A4
	ldrb r0, [r2, r0]
	cmp r1, r0
	bne _021C38B4
	mov r0, #1
	bx lr
_021C38B4:
	mov r0, #0
	bx lr
	.align 2, 0
_021C38B8: .word 0x021C70A4
	thumb_func_end sub_021C38A8

	thumb_func_start sub_021C38BC
sub_021C38BC: ; 0x021C38BC
	cmp r2, #0
	beq _021C38C4
	mov r2, #1
	b _021C38C6
_021C38C4:
	mov r2, #0
_021C38C6:
	ldr r3, _021C38D0 ; =sub_0204C318
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_021C38D0: .word sub_0204C318
	thumb_func_end sub_021C38BC

	thumb_func_start ovy194_21c38d4
ovy194_21c38d4: ; 0x021C38D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r4, #0
	bl ovy194_21be3bc
	cmp r0, #0
	beq _021C38E6
	mov r4, #1
_021C38E6:
	ldr r2, [sp, #0x14]
	mov r1, #0x14
	mul r1, r2
	add r2, r5, r1
	lsl r1, r6, #2
	add r2, r2, r1
	mov r1, #0x2b
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021C38BC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy194_21c38d4

	thumb_func_start ovy194_21c3904
ovy194_21c3904: ; 0x021C3904
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	ldr r0, [sp, #0xb0]
	ldr r4, _021C3BB0 ; =0x00000F74
	str r0, [sp, #0xb0]
	ldr r0, [r5, r4]
	add r6, r2, #0
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	cmp r6, r0
	bne _021C3940
	bl sub_0203D554
	cmp r0, #0
	bne _021C3940
	ldr r0, [sp, #0xc]
	mov r1, #0x14
	mul r1, r0
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r5, r1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
_021C3940:
	ldr r0, [sp, #0xc]
	mov r4, #0
	lsl r1, r0, #2
	add r0, r0, r1
	add r0, r5, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	mov r1, #0x14
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x4c]
	sub r0, #0x3c
	str r0, [sp, #0x4c]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x48]
	add r0, #0x3c
	str r0, [sp, #0x48]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x44]
	sub r0, #0xb4
	str r0, [sp, #0x44]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x50]
	sub r0, #0x3c
	str r0, [sp, #0x50]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x5c]
	sub r0, #0xf0
	str r0, [sp, #0x5c]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x58]
	sub r0, #0xb4
	str r0, [sp, #0x58]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x54]
	sub r0, #0x3c
	str r0, [sp, #0x54]
	ldr r0, _021C3BB8 ; =0x00001184
	add r0, r5, r0
	str r0, [sp, #0x64]
	ldr r0, _021C3BB8 ; =0x00001184
	add r0, r5, r0
	str r0, [sp, #0x60]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x40]
	add r0, #0x3c
	str r0, [sp, #0x40]
	ldr r0, _021C3BB4 ; =0x00000D54
	str r0, [sp, #0x3c]
	add r0, #0x3c
	str r0, [sp, #0x3c]
_021C39BC:
	add r0, sp, #0x74
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ovy194_21c3788
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy194_21c37e0
	cmp r0, #0
	bne _021C39E8
	ldr r0, [sp, #0x28]
	mov r1, #0xff
	add r2, r0, r4
	ldr r0, [sp, #0x3c]
_021C39E4:
	strb r1, [r2, r0]
	b _021C3BA4
_021C39E8:
	ldrh r1, [r0]
	cmp r1, #0
	bne _021C39F8
	ldr r0, [sp, #0x28]
	mov r1, #0xff
	add r2, r0, r4
	ldr r0, [sp, #0x40]
	b _021C39E4
_021C39F8:
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x34]
	add r2, r1, r4
	ldr r1, [sp, #0x48]
	str r2, [sp, #0x1c]
	strb r3, [r2, r1]
	ldrb r1, [r0, #2]
	ldrh r7, [r0]
	ldrb r3, [r0, #3]
	str r1, [sp, #0x68]
	ldr r0, [sp, #0x24]
	lsl r1, r4, #1
	add r1, r0, r1
	ldr r0, [sp, #0x44]
	mov ip, r1
	ldrh r2, [r1, r0]
	cmp r7, r2
	bne _021C3A5A
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x68]
	cmp r0, r1
	bne _021C3A5A
	ldr r1, [sp, #0x1c]
	ldr r0, _021C3BB4 ; =0x00000D54
	ldrb r0, [r1, r0]
	cmp r3, r0
	bne _021C3A5A
	ldr r0, [sp, #0x20]
	lsl r1, r4, #2
	add r1, r0, r1
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0x74]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy194_21c38d4
	b _021C3B82
_021C3A5A:
	cmp r7, r2
	bne _021C3A7E
	cmp r7, r2
	bne _021C3A6E
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x68]
	cmp r0, r1
	bne _021C3A7E
_021C3A6E:
	cmp r7, r2
	bne _021C3A7C
	ldr r1, [sp, #0x1c]
	ldr r0, _021C3BB4 ; =0x00000D54
	ldrb r0, [r1, r0]
	cmp r3, r0
	bne _021C3A7E
_021C3A7C:
	b _021C3B82
_021C3A7E:
	ldr r0, [sp, #0x58]
	mov r1, ip
	strh r7, [r1, r0]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x54]
	add r2, r0, r4
	ldr r0, [sp, #0x68]
	strb r0, [r2, r1]
	ldr r0, _021C3BB4 ; =0x00000D54
	add r1, r4, #0
	strb r3, [r2, r0]
	add r0, r6, #0
	add r2, sp, #0x70
	bl ovy194_21c3770
	ldr r0, [sp, #0x20]
	lsl r1, r4, #2
	add r1, r0, r1
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	str r1, [sp, #0x18]
	add r1, sp, #0x78
	bl sub_0204C40C
	add r0, r6, #0
	add r1, r5, #0
	bl ovy194_21b7854
	str r0, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy194_21b786c
	ldr r2, [sp, #0x38]
	mov r1, #0x1e
	mul r1, r2
	add r0, r0, r1
	str r0, [sp, #0x2c]
	mov r0, #0x2b
	ldr r1, [sp, #0x18]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, sp, #0x6c
	mov r2, #1
	bl sub_0204C178
	ldr r0, [sp, #0xb0]
	cmp r0, #1
	bne _021C3B1A
	add r1, sp, #0x6c
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r0, #0x10
	cmp r1, r0
	blt _021C3B1A
	ldr r0, [sp, #0x5c]
	cmp r1, r0
	bgt _021C3B1A
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x60]
	lsl r0, r0, #9
	str r0, [sp, #0x14]
	ldr r3, [r2]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x80]
	add r2, r3, r2
	mov r3, #2
	mov r0, #0x23
	lsl r3, r3, #8
	bl sub_0205FA10
	cmp r0, #0
	bne _021C3B34
	ldr r0, [sp, #0x64]
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	b _021C3B22
_021C3B1A:
	ldr r0, _021C3BB8 ; =0x00001184
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #9
_021C3B22:
	add r0, r1, r0
	mov r1, #0x66
	ldr r2, [sp, #0x80]
	lsl r1, r1, #0x14
	add r1, r1, r2
	mov r2, #2
	lsl r2, r2, #8
	blx MI_CpuCopy8
_021C3B34:
	ldr r0, [sp, #0x74]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy194_21c38d4
	ldr r0, [sp, #0x20]
	lsl r1, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_020210C0
	add r1, r0, #0
	mov r0, #0x2b
	ldr r2, [sp, #0x10]
	lsl r0, r0, #6
	ldr r0, [r2, r0]
	mov r2, #1
	bl sub_0204C378
	mov r0, #0x2b
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C520
	mov r0, #0x2b
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
_021C3B82:
	ldr r0, [sp, #0x30]
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	bne _021C3BA4
	add r0, r5, #0
	add r1, r7, #0
	bl sub_021C3888
	cmp r0, #0
	beq _021C3BA4
	ldr r1, [sp, #0x1c]
	ldr r0, _021C3BBC ; =0x00000EBC
	mov r2, #1
	strb r2, [r1, r0]
_021C3BA4:
	add r4, r4, #1
	cmp r4, #5
	bge _021C3BAC
	b _021C39BC
_021C3BAC:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C3BB0: .word 0x00000F74
_021C3BB4: .word 0x00000D54
_021C3BB8: .word 0x00001184
_021C3BBC: .word 0x00000EBC
	thumb_func_end ovy194_21c3904

	thumb_func_start ovy194_21c3bc0
ovy194_21c3bc0: ; 0x021C3BC0
	push {r3, r4, r5, lr}
	ldr r1, _021C3C0C ; =0x0000107C
	ldrsh r4, [r0, r1]
	cmp r4, #0x30
	bge _021C3BCE
	mov r4, #0
	b _021C3C06
_021C3BCE:
	cmp r4, #0x60
	bge _021C3BD6
	mov r4, #1
	b _021C3C06
_021C3BD6:
	sub r4, #0x60
	add r0, r4, #0
	mov r1, #0xa0
	mov r5, #0xa0
	blx sub_0208D65C
	add r1, r0, #0
	mul r1, r5
	sub r2, r4, r1
	mov r1, #6
	mul r1, r0
	add r4, r1, #2
	cmp r2, #8
	blt _021C3C06
	cmp r2, #0x98
	blt _021C3BFA
	add r4, r4, #5
	b _021C3C06
_021C3BFA:
	sub r2, #8
	add r0, r2, #0
	mov r1, #0x18
	blx sub_0208D65C
	add r4, r4, r0
_021C3C06:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021C3C0C: .word 0x0000107C
	thumb_func_end ovy194_21c3bc0

	thumb_func_start ovy194_21c3c10
ovy194_21c3c10: ; 0x021C3C10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy194_21c3bc0
	add r3, r0, #2
	add r1, r0, #0
	ldr r2, _021C3C60 ; =0x00000634
	str r3, [r4]
	ldr r2, [r5, r2]
	add r1, #0xa
	cmp r3, r2
	blt _021C3C2E
	sub r2, r3, r2
	str r2, [r4]
_021C3C2E:
	ldr r2, _021C3C60 ; =0x00000634
	ldr r3, [r5, r2]
	cmp r1, r3
	ldr r2, _021C3C64 ; =0x00000F74
	blt _021C3C4E
	ldr r2, [r5, r2]
	cmp r2, #0x14
	bge _021C3C42
	add r2, r2, #1
	add r2, r2, r3
_021C3C42:
	cmp r0, r2
	bgt _021C3C5C
	cmp r2, r1
	bgt _021C3C5C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C3C4E:
	ldr r2, [r5, r2]
	cmp r0, r2
	bgt _021C3C5C
	cmp r2, r1
	bgt _021C3C5C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C3C5C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C3C60: .word 0x00000634
_021C3C64: .word 0x00000F74
	thumb_func_end ovy194_21c3c10

	thumb_func_start ovy194_21c3c68
ovy194_21c3c68: ; 0x021C3C68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	str r2, [sp, #0xc]
	bl ovy194_21c3bc0
	str r0, [sp, #0x10]
	mov r2, #0x42
	ldr r0, [sp, #8]
	lsl r2, r2, #6
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _021C3D16
	add r1, r0, #0
	ldr r0, [sp, #8]
	strh r1, [r0, r2]
	mov r0, #0
	str r0, [sp, #0x14]
	add r5, r0, #0
_021C3C94:
	ldr r1, [sp, #0x14]
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	mov r4, #0
	add r7, r0, r2
	add r0, r1, #0
	lsl r1, r0, #2
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r6, r0, r1
_021C3CAC:
	lsl r0, r4, #2
	add r1, r7, r0
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_0204C124
	add r1, r6, r4
	ldr r0, _021C3D20 ; =0x00000EBC
	add r4, r4, #1
	strb r5, [r1, r0]
	cmp r4, #5
	blt _021C3CAC
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xc
	blt _021C3C94
	ldr r4, _021C3D24 ; =0x00001090
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #8]
	str r1, [r0, r4]
	bl ovy194_21c3f68
	ldr r7, _021C3D28 ; =0x00000634
	mov r6, #0
	sub r4, #0x10
_021C3CE4:
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r4]
	add r0, r0, r5
	bl ovy194_21c3f5c
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	bl ovy194_21c3904
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r0, r7]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _021C3D10
	str r6, [sp, #0x10]
_021C3D10:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021C3CE4
_021C3D16:
	ldr r0, [sp, #8]
	bl ovy194_21c3d2c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C3D20: .word 0x00000EBC
_021C3D24: .word 0x00001090
_021C3D28: .word 0x00000634
	thumb_func_end ovy194_21c3c68

	thumb_func_start ovy194_21c3d2c
ovy194_21c3d2c: ; 0x021C3D2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r1, #0x42
	ldr r0, [sp]
	lsl r1, r1, #6
	ldrsh r7, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x14]
_021C3D42:
	mov r1, #0x42
	ldr r0, [sp]
	lsl r1, r1, #6
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	bl ovy194_21c3f5c
	add r4, r0, #0
	ldr r1, _021C3E90 ; =0x00000634
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r7, r0
	blt _021C3D68
	sub r7, r7, r0
	ldr r0, [sp]
	add r1, #8
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
_021C3D68:
	sub r0, r7, #2
	mov r1, #6
	mov r5, #0
	blx sub_0208D65C
	add r6, r0, #0
	mov r1, #0xa0
	mul r6, r1
	sub r0, r7, #2
	mov r1, #6
	blx sub_0208D65C
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp]
	add r2, #0x14
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0x1c
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, _021C3E94 ; =0x00000DCC
	lsl r1, r4, #2
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _021C3E94 ; =0x00000DCC
	add r3, r4, r1
	ldr r1, [sp]
	str r0, [sp, #0x20]
	add r0, #0xf0
	add r1, r1, r3
	str r0, [sp, #0x20]
	mov r0, #0x2b
	str r1, [sp, #4]
	add r1, r6, r2
	lsl r0, r0, #6
	str r1, [sp, #0x18]
	add r1, #0x60
	str r0, [sp, #0x28]
	add r0, #0xf0
	str r1, [sp, #0x18]
	add r6, sp, #0x2c
	str r0, [sp, #0x28]
_021C3DCC:
	mov r0, #0x18
	mul r0, r5
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	cmp r7, #0
	bne _021C3DDE
	mov r2, #0x1c
	b _021C3DE6
_021C3DDE:
	mov r2, #0x3c
	cmp r7, #1
	beq _021C3DE6
	ldr r2, [sp, #0x18]
_021C3DE6:
	ldr r1, [sp]
	ldr r0, _021C3E98 ; =0x0000107C
	ldrsh r0, [r1, r0]
	sub r1, r2, r0
	ldr r0, [sp, #0x10]
	add r2, r5, #0
	add r0, r0, r1
	strh r0, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	strh r0, [r6, #6]
	ldrh r0, [r6, #4]
	strh r0, [r6]
	ldrh r0, [r6, #6]
	strh r0, [r6, #2]
	ldr r0, [sp]
	bl ovy194_21be45c
	cmp r0, #0
	beq _021C3E2E
	bl sub_0203D554
	cmp r0, #1
	bne _021C3E2E
	mov r0, #6
	ldrsh r0, [r6, r0]
	lsl r1, r5, #2
	sub r0, #8
	strh r0, [r6, #6]
	ldr r0, [sp, #8]
	add r4, r0, r1
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xb
	b _021C3E3C
_021C3E2E:
	ldr r0, [sp, #8]
	lsl r1, r5, #2
	add r4, r0, r1
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x1c]
_021C3E3C:
	bl sub_0204C438
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #0x30
	mov r2, #1
	bl sub_0204C140
	ldr r0, [sp, #4]
	add r1, r0, r5
	ldr r0, [sp, #0x20]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021C3E66
	ldrh r1, [r6]
	ldr r0, _021C3E94 ; =0x00000DCC
	strh r1, [r4, r0]
	ldrh r1, [r6, #2]
	ldr r0, [sp, #0x24]
	strh r1, [r4, r0]
_021C3E66:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x30
	add r0, r0, #3
	strh r0, [r6, #6]
	ldr r0, [sp, #0x28]
	mov r2, #1
	ldr r0, [r4, r0]
	bl sub_0204C140
	add r5, r5, #1
	cmp r5, #5
	blt _021C3DCC
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xc
	bge _021C3E8C
	b _021C3D42
_021C3E8C:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C3E90: .word 0x00000634
_021C3E94: .word 0x00000DCC
_021C3E98: .word 0x0000107C
	thumb_func_end ovy194_21c3d2c

	thumb_func_start ovy194_21c3e9c
ovy194_21c3e9c: ; 0x021C3E9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	bne _021C3EBC
	ldr r0, _021C3F44 ; =0x0000050B
	ldr r1, _021C3F48 ; =0x0005AC00
	str r0, [sp]
	add r0, #0xe9
	ldrh r0, [r5, r0]
	ldr r3, _021C3F4C ; =0x021C7330
	mov r2, #0
	bl sub_0203A1FC
	ldr r1, _021C3F50 ; =0x00001184
	str r0, [r5, r1]
_021C3EBC:
	ldr r1, _021C3F54 ; =0x000005F4
	mov r0, #7
	ldrh r1, [r5, r1]
	bl sub_0204AA30
	str r0, [sp, #4]
	b _021C3F36
_021C3ECA:
	mov r0, #0x1e
	add r6, r7, #0
	mul r6, r0
	mov r4, #0
_021C3ED2:
	cmp r7, #0x18
	bne _021C3EDA
	cmp r4, #6
	beq _021C3F3A
_021C3EDA:
	ldr r0, _021C3F58 ; =0x00000828
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	add r3, r5, #0
	bl ovy194_21b7b30
	cmp r0, #0
	beq _021C3EF2
	bl sub_02020F40
	b _021C3EFE
_021C3EF2:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02020F94
_021C3EFE:
	add r1, r0, #0
	ldr r0, _021C3F54 ; =0x000005F4
	mov r2, #0
	ldrh r0, [r5, r0]
	add r3, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	bl sub_0204B28C
	ldr r1, _021C3F50 ; =0x00001184
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r1]
	lsl r1, r6, #9
	add r1, r2, r1
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	blx MI_CpuCopy8
	ldr r0, [sp, #8]
	add r6, r6, #1
	bl sub_0203A24C
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021C3ED2
	b _021C3F3A
_021C3F36:
	cmp r7, #0x19
	blt _021C3ECA
_021C3F3A:
	ldr r0, [sp, #4]
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C3F44: .word 0x0000050B
_021C3F48: .word 0x0005AC00
_021C3F4C: .word 0x021C7330
_021C3F50: .word 0x00001184
_021C3F54: .word 0x000005F4
_021C3F58: .word 0x00000828
	thumb_func_end ovy194_21c3e9c

	thumb_func_start ovy194_21c3f5c
ovy194_21c3f5c: ; 0x021C3F5C
	push {r3, lr}
	mov r1, #0xc
	blx sub_0208D65C
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end ovy194_21c3f5c

	thumb_func_start ovy194_21c3f68
ovy194_21c3f68: ; 0x021C3F68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	mov r6, #0x2b
	str r0, [sp, #4]
	add r7, r0, #0
	lsl r6, r6, #6
_021C3F78:
	ldr r1, [sp, #4]
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r5, r0, r2
_021C3F86:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #5
	blt _021C3F86
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _021C3F78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c3f68

	thumb_func_start ovy194_21c3fa8
ovy194_21c3fa8: ; 0x021C3FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #0x10]
_021C3FB8:
	ldr r1, [sp, #0x10]
	mov r0, #0x14
	mul r0, r1
	ldr r1, [sp]
	mov r4, #0
	str r0, [sp, #8]
	add r7, r1, r0
_021C3FC6:
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	add r1, r7, r0
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0x18
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, r5
	bgt _021C4072
	add r0, #0x18
	cmp r5, r0
	bge _021C4072
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, r6
	bgt _021C4072
	add r0, #0x18
	cmp r6, r0
	bge _021C4072
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021C404A
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	add r1, r0, r1
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r0, r4
	mov r0, #0xd9
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	str r0, [sp, #0x14]
	cmp r0, #0xff
	bne _021C401C
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021C401C:
	add r1, r4, #0
	bl ovy194_21b786c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021C4044
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	bl ovy194_21b7854
	ldr r1, [sp, #4]
	str r0, [r1]
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl ovy194_21b786c
	ldr r1, [sp, #0x30]
	str r0, [r1]
	b _021C404A
_021C4044:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021C404A:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _021C405E
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	str r4, [r0]
	ldr r0, [sp, #0x10]
	str r0, [r1]
_021C405E:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	add r1, r1, r0
	mov r0, #0x2b
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_021C4072:
	add r4, r4, #1
	cmp r4, #5
	blt _021C3FC6
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0xc
	blt _021C3FB8
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c3fa8

	thumb_func_start ovy194_21c4088
ovy194_21c4088: ; 0x021C4088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	bl sub_021C45EC
	add r3, sp, #0x2c
	ldr r1, _021C41C0 ; =0x000011EC
	mov r0, #1
	ldr r6, _021C41C4 ; =0x021C6C28
	strb r0, [r5, r1]
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	mov r7, #0
	bl sub_0204476C
	mov r0, #6
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r6, _021C41C8 ; =0x021C6D48
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #2
	bl sub_0204476C
	cmp r4, #0
	ldr r6, _021C41CC ; =0x000005F4
	bne _021C4166
	ldrh r1, [r5, r6]
	mov r0, #0x68
	bl sub_0204AA30
	str r7, [sp]
	ldrh r1, [r5, r6]
	mov r3, #0x18
	mov r2, #6
	str r1, [sp, #4]
	mov r1, #5
	lsl r3, r3, #0xa
	add r4, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	mov r1, #4
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	mov r1, #6
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204AF50
	mov r0, #7
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021C4166:
	ldrh r1, [r5, r6]
	mov r0, #0x69
	bl sub_0204AA30
	str r7, [sp]
	ldrh r1, [r5, r6]
	mov r3, #0x18
	mov r2, #6
	str r1, [sp, #4]
	mov r1, #1
	lsl r3, r3, #0xa
	add r4, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	add r1, r7, #0
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	mov r1, #2
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204AF50
	mov r0, #7
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021C41C0: .word 0x000011EC
_021C41C4: .word 0x021C6C28
_021C41C8: .word 0x021C6D48
_021C41CC: .word 0x000005F4
	thumb_func_end ovy194_21c4088

	thumb_func_start ovy194_21c41d0
ovy194_21c41d0: ; 0x021C41D0
	push {r4, r5, r6, lr}
	ldr r6, _021C41F8 ; =0x000011EC
	add r5, r0, #0
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021C41F6
	mov r0, #6
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl sub_02045264
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	strb r4, [r5, r6]
_021C41F6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C41F8: .word 0x000011EC
	thumb_func_end ovy194_21c41d0

	thumb_func_start ovy194_21c41fc
ovy194_21c41fc: ; 0x021C41FC
	push {r3, r4, r5, lr}
	ldr r5, _021C4228 ; =0x021C6B44
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02046C40
	ldr r2, _021C422C ; =0x000005F4
	ldr r0, _021C4230 ; =0x021C6ACC
	ldrh r2, [r4, r2]
	add r1, r5, #0
	bl sub_0204B6A8
	mov r0, #0
	bl sub_021C45EC
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C4228: .word 0x021C6B44
_021C422C: .word 0x000005F4
_021C4230: .word 0x021C6ACC
	thumb_func_end ovy194_21c41fc

	thumb_func_start ovy194_21c4234
ovy194_21c4234: ; 0x021C4234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	ldr r4, _021C4318 ; =0x021C6D28
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r5, #0x20
	str r5, [sp]
	mov r4, #0x18
	str r4, [sp, #4]
	mov r7, #0x11
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #3
	bl sub_02044F90
	ldr r6, _021C431C ; =0x021C6C88
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #2
	bl sub_02044F90
	ldr r6, _021C4320 ; =0x021C6CA8
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #1
	bl sub_02044F90
	mov r0, #0
	bl sub_02044BB8
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C4318: .word 0x021C6D28
_021C431C: .word 0x021C6C88
_021C4320: .word 0x021C6CA8
	thumb_func_end ovy194_21c4234

	thumb_func_start ovy194_21c4324
ovy194_21c4324: ; 0x021C4324
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _021C43A4 ; =0x04000060
	ldr r5, _021C43A8 ; =0xFFFFCFFD
	ldrh r1, [r0]
	mov r3, #0
	mov r4, #0
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r5, #2
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r5, #2
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021C43AC ; =0x0000CFDF
	and r1, r2
	strh r1, [r0]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _021C43B0 ; =0xBFFF0000
	ldr r0, _021C43B4 ; =0x04000580
	str r1, [r0]
	ldr r5, _021C43B8 ; =0x021C6B04
_021C4382:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021C4382
	ldr r1, _021C43BC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C43A4: .word 0x04000060
_021C43A8: .word 0xFFFFCFFD
_021C43AC: .word 0x0000CFDF
_021C43B0: .word 0xBFFF0000
_021C43B4: .word 0x04000580
_021C43B8: .word 0x021C6B04
_021C43BC: .word 0x04000008
	thumb_func_end ovy194_21c4324

	thumb_func_start ovy194_21c43c0
ovy194_21c43c0: ; 0x021C43C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r6, _021C445C ; =0x000005F4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r4, r6]
	ldr r5, _021C4460 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	and r1, r5
	add r0, r5, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021C4464 ; =ovy194_21c4324
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #1
	mov r7, #1
	bl sub_02048D28
	ldrh r0, [r4, r6]
	add r3, sp, #0x20
	add r2, r3, #0
	add r1, r0, #0
	and r1, r5
	lsl r0, r7, #0xf
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r5, _021C4468 ; =0x021C6BE4
	lsr r6, r0, #0x10
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0xc
	str r0, [r3]
	mov r0, #0
	str r0, [sp]
	lsl r0, r7, #0xc
	str r0, [sp, #4]
	lsl r0, r7, #0x16
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021C446C ; =0x021C6AA4
	ldr r3, _021C4470 ; =0x02094A3C
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, #0xe
	ldr r0, _021C4474 ; =0x021C6A98
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _021C4478 ; =0x00001555
	mov r0, #0
	str r6, [sp, #0x1c]
	bl sub_0204A5C8
	mov r1, #0x81
	lsl r1, r1, #4
	str r0, [r4, r1]
	bl sub_0204A638
	ldr r2, _021C447C ; =0x04000060
	ldr r0, _021C4480 ; =0x0000CFDF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021C445C: .word 0x000005F4
_021C4460: .word 0x00007FFF
_021C4464: .word ovy194_21c4324
_021C4468: .word 0x021C6BE4
_021C446C: .word 0x021C6AA4
_021C4470: .word 0x02094A3C
_021C4474: .word 0x021C6A98
_021C4478: .word 0x00001555
_021C447C: .word 0x04000060
_021C4480: .word 0x0000CFDF
	thumb_func_end ovy194_21c43c0

	thumb_func_start ovy194_21c4484
ovy194_21c4484: ; 0x021C4484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r4, _021C4594 ; =0x021C6CE8
	add r3, sp, #0x6c
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #0x20
	str r0, [sp]
	mov r4, #0x18
	str r4, [sp, #4]
	mov r7, #0x11
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	ldr r6, _021C4598 ; =0x021C6D08
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #5
	bl sub_02044F90
	ldr r6, _021C459C ; =0x021C6D68
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	mov r6, #7
	bl sub_0204476C
	mov r0, #0x40
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #7
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	add r0, r6, #0
	bl sub_02044F90
	ldr r6, _021C45A0 ; =0x021C6C08
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r1, _021C45A4 ; =0x000011EB
	mov r0, #1
	strb r0, [r5, r1]
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C4594: .word 0x021C6CE8
_021C4598: .word 0x021C6D08
_021C459C: .word 0x021C6D68
_021C45A0: .word 0x021C6C08
_021C45A4: .word 0x000011EB
	thumb_func_end ovy194_21c4484

	thumb_func_start ovy194_21c45a8
ovy194_21c45a8: ; 0x021C45A8
	push {r4, r5, r6, lr}
	ldr r6, _021C45E8 ; =0x000011EB
	add r5, r0, #0
	ldrb r0, [r5, r6]
	cmp r0, #1
	bne _021C45E4
	mov r0, #4
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl sub_02045264
	mov r0, #6
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	strb r4, [r5, r6]
_021C45E4:
	pop {r4, r5, r6, pc}
	nop
_021C45E8: .word 0x000011EB
	thumb_func_end ovy194_21c45a8

	thumb_func_start sub_021C45EC
sub_021C45EC: ; 0x021C45EC
	ldr r1, _021C45F8 ; =0x021C6B24
	lsl r0, r0, #4
	ldr r3, _021C45FC ; =sub_02044710
	add r0, r1, r0
	bx r3
	nop
_021C45F8: .word 0x021C6B24
_021C45FC: .word sub_02044710
	thumb_func_end sub_021C45EC

	thumb_func_start ovy194_21c4600
ovy194_21c4600: ; 0x021C4600
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021C4664 ; =0x00000898
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021C465E
	ldr r7, _021C4668 ; =0x000005F4
	mov r0, #0x67
	ldrh r1, [r5, r7]
	bl sub_0204AA30
	ldrh r1, [r5, r7]
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	mov r1, #0x15
	add r6, r0, #0
	bl sub_0204B81C
	str r0, [r5, r4]
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	mov r1, #0x12
	mov r2, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0xc0
	bl sub_0204BBB8
	add r1, r4, #0
	sub r1, #0x14
	str r0, [r5, r1]
	ldrh r3, [r5, r7]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0x13
	bl sub_0204BDE0
	add r4, #0x1c
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
_021C465E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C4664: .word 0x00000898
_021C4668: .word 0x000005F4
	thumb_func_end ovy194_21c4600

	thumb_func_start ovy194_21c466c
ovy194_21c466c: ; 0x021C466C
	push {r3, r4, r5, lr}
	ldr r4, _021C46A0 ; =0x00000898
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C469E
	bl sub_0204B98C
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_0204BE64
	mov r1, #0
	add r0, r4, #0
	str r1, [r5, r4]
	sub r0, #0x14
	str r1, [r5, r0]
	add r4, #0x1c
	str r1, [r5, r4]
_021C469E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C46A0: .word 0x00000898
	thumb_func_end ovy194_21c466c

	thumb_func_start ovy194_21c46a4
ovy194_21c46a4: ; 0x021C46A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, _021C474C ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r7]
	mov r0, #0x67
	bl sub_0204AA30
	ldrh r1, [r5, r7]
	mov r2, #0
	mov r3, #1
	str r1, [sp]
	mov r1, #0x18
	add r6, r0, #0
	bl sub_0204B81C
	ldr r4, _021C4750 ; =0x00000894
	mov r1, #0x12
	str r0, [r5, r4]
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	mov r2, #1
	mov r3, #0xc0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	add r1, r4, #0
	sub r1, #0x14
	str r0, [r5, r1]
	ldrh r3, [r5, r7]
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0x16
	bl sub_0204BDE0
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0204AB0C
	add r2, r4, #0
	mov r0, #0x80
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0xb4
	strh r0, [r1, #2]
	mov r0, #2
	strh r0, [r1, #4]
	mov r0, #0xe
	strb r0, [r1, #6]
	mov r0, #0
	strb r0, [r1, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C4754 ; =0x000009C4
	ldr r1, [r5, r4]
	add r4, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	bl sub_0204C040
	ldr r4, _021C4758 ; =0x00000F04
	mov r1, #0
	str r0, [r5, r4]
	bl sub_0204C520
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021C474C: .word 0x000005F4
_021C4750: .word 0x00000894
_021C4754: .word 0x000009C4
_021C4758: .word 0x00000F04
	thumb_func_end ovy194_21c46a4

	thumb_func_start ovy194_21c475c
ovy194_21c475c: ; 0x021C475C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _021C4794 ; =0x000005F4
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x67
	bl sub_0204AA30
	ldr r1, _021C4798 ; =0x0000086C
	mov r3, #0
	ldr r1, [r5, r1]
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrh r1, [r5, r6]
	mov r2, #2
	str r1, [sp, #0xc]
	mov r1, #0x1d
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C4794: .word 0x000005F4
_021C4798: .word 0x0000086C
	thumb_func_end ovy194_21c475c

	thumb_func_start ovy194_21c479c
ovy194_21c479c: ; 0x021C479C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x80
	add r4, sp, #0x14
	strh r0, [r4, #8]
	mov r0, #0x10
	strh r0, [r4, #0xa]
	mov r0, #0x13
	strh r0, [r4, #0xc]
	mov r0, #0xe
	strb r0, [r4, #0xe]
	ldr r6, _021C495C ; =0x00000894
	mov r0, #1
	strb r0, [r4, #0xf]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C4960 ; =0x000005F4
	add r2, r6, #0
	ldrh r0, [r5, r0]
	add r3, r6, #0
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C4964 ; =0x000009C4
	add r3, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r6]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r7, _021C4968 ; =0x00000F08
	mov r1, #1
	str r0, [r5, r7]
	bl sub_0204C520
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0x60
	strh r0, [r4, #8]
	mov r0, #0x10
	strh r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #0xc]
	mov r0, #0xb
	strb r0, [r4, #0xe]
	mov r0, #1
	strb r0, [r4, #0xf]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C4960 ; =0x000005F4
	add r2, r6, #0
	ldrh r0, [r5, r0]
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C4964 ; =0x000009C4
	ldr r1, [r5, r6]
	add r6, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r6]
	bl sub_0204C040
	add r1, r7, #4
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	bl sub_0203D554
	cmp r0, #0
	beq _021C4842
	add r0, r7, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
_021C4842:
	ldr r1, _021C4960 ; =0x000005F4
	mov r0, #7
	ldrh r1, [r5, r1]
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy194_21b7d04
	bl sub_0201D624
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ovy194_21b7d04
	bl sub_0201D624
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_02020F40
	add r1, r0, #0
	ldr r0, _021C4960 ; =0x000005F4
	mov r2, #0
	ldrh r0, [r5, r0]
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r4, _021C496C ; =0x0000089C
	str r0, [r5, r4]
	ldr r0, [sp, #0x10]
	bl sub_02020F40
	add r1, r0, #0
	ldr r0, _021C4960 ; =0x000005F4
	mov r2, #0
	ldrh r0, [r5, r0]
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	add r1, r4, #4
	str r0, [r5, r1]
	add r2, r4, #0
	add r3, r4, #0
	mov r1, #0x60
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #0xc
	add r1, sp, #0x14
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	strb r0, [r1, #6]
	mov r1, #1
	add r0, sp, #0x14
	strb r1, [r0, #7]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C4960 ; =0x000005F4
	sub r2, #0x20
	ldrh r0, [r5, r0]
	add r3, #0x10
	str r0, [sp, #8]
	ldr r0, _021C4964 ; =0x000009C4
	ldr r1, [r5, r4]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r6, #0xf1
	lsl r6, r6, #4
	str r0, [r5, r6]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [r5, r6]
	mov r2, #1
	bl sub_0204C378
	add r2, r4, #0
	mov r1, #0xa0
	add r0, sp, #0x14
	strh r1, [r0]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C4960 ; =0x000005F4
	add r1, r4, #4
	ldrh r0, [r5, r0]
	sub r2, #0x20
	add r4, #0x10
	str r0, [sp, #8]
	ldr r0, _021C4964 ; =0x000009C4
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	bl sub_0204C040
	add r1, r6, #4
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C520
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0x10]
	bl sub_020210C0
	add r1, r0, #0
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r2, #1
	bl sub_0204C378
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C495C: .word 0x00000894
_021C4960: .word 0x000005F4
_021C4964: .word 0x000009C4
_021C4968: .word 0x00000F08
_021C496C: .word 0x0000089C
	thumb_func_end ovy194_21c479c

	thumb_func_start ovy194_21c4970
ovy194_21c4970: ; 0x021C4970
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _021C49A6
	mov r0, #0x60
	add r4, sp, #0
	mov r7, #0xf1
	strh r0, [r4]
	mov r6, #0xc
	strh r6, [r4, #2]
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	mov r0, #0xa0
	strh r0, [r4]
	strh r6, [r4, #2]
	add r0, r7, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	pop {r3, r4, r5, r6, r7, pc}
_021C49A6:
	mov r1, #0x60
	add r0, sp, #0
	strh r1, [r0]
	mov r0, #8
	cmp r4, #0
	beq _021C49B4
	mov r0, #0xc
_021C49B4:
	add r6, sp, #0
	strh r0, [r6, #2]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	mov r0, #0xa0
	mov r1, #8
	strh r0, [r6]
	cmp r4, #0
	bne _021C49D2
	mov r1, #0xc
_021C49D2:
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, _021C49E4 ; =0x00000F14
	add r1, sp, #0
	ldr r0, [r5, r0]
	mov r2, #1
	bl sub_0204C140
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C49E4: .word 0x00000F14
	thumb_func_end ovy194_21c4970

	thumb_func_start ovy194_21c49e8
ovy194_21c49e8: ; 0x021C49E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021C4A58 ; =0x00000F08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C49F8
	bl sub_0204C108
_021C49F8:
	ldr r0, _021C4A5C ; =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4A04
	bl sub_0204C108
_021C4A04:
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4A12
	bl sub_0204C108
_021C4A12:
	ldr r0, _021C4A60 ; =0x00000F14
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4A1E
	bl sub_0204C108
_021C4A1E:
	ldr r1, _021C4A58 ; =0x00000F08
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r1, #0xc
	ldr r0, _021C4A64 ; =0x0000089C
	str r2, [r4, r1]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4A3E
	bl sub_0204B98C
_021C4A3E:
	mov r0, #0x8a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4A4C
	bl sub_0204B98C
_021C4A4C:
	ldr r0, _021C4A64 ; =0x0000089C
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021C4A58: .word 0x00000F08
_021C4A5C: .word 0x00000F0C
_021C4A60: .word 0x00000F14
_021C4A64: .word 0x0000089C
	thumb_func_end ovy194_21c49e8

	thumb_func_start ovy194_21c4a68
ovy194_21c4a68: ; 0x021C4A68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #4
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	ldr r6, _021C4B80 ; =0x000005F4
	mov r0, #0x67
	ldrh r1, [r5, r6]
	bl sub_0204AA30
	mov r1, #0x87
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldrh r1, [r5, r6]
	mov r3, #0
	add r7, r0, #0
	str r1, [sp, #0xc]
	mov r1, #0x10
	mov r6, #0x10
	bl sub_0204AFB0
	mov r0, #4
	bl sub_02045B7C
	sub r6, #0x14
	mov r0, #4
	mov r1, #0
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #6
	mov r1, #0
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	mov r7, #0x75
	lsl r7, r7, #4
	add r0, r7, #0
	str r0, [sp, #0x1c]
	sub r0, #0x30
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	sub r0, #0x20
	str r0, [sp, #0x18]
	add r0, r7, #0
	str r0, [sp, #0x14]
	sub r0, #0x28
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x10]
	sub r0, #0x20
	str r0, [sp, #0x10]
_021C4AFC:
	ldr r0, _021C4B84 ; =0x021C6FD4
	lsl r3, r4, #3
	add r2, r0, r3
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _021C4B84 ; =0x021C6FD4
	ldr r2, [r2, #4]
	ldr r1, [r1, r3]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	mov r0, #6
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_020480C0
	str r0, [r6, r7]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, #0x35
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r6, r7]
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	ldr r1, [r5, r1]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, r3]
	mov r1, #0
	bl sub_02021CFC
	ldr r0, [r6, r7]
	bl sub_0204826C
	ldr r0, [r6, r7]
	bl sub_02048244
	add r4, r4, #1
	cmp r4, #0x1a
	blo _021C4AFC
	mov r0, #6
	bl sub_02045B7C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C4B80: .word 0x000005F4
_021C4B84: .word 0x021C6FD4
	thumb_func_end ovy194_21c4a68

	thumb_func_start ovy194_21c4b88
ovy194_21c4b88: ; 0x021C4B88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	mov r0, #6
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	ldr r0, _021C4BF8 ; =0x00000F04
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021C4BB6
	mov r1, #1
	bl sub_0204C124
_021C4BB6:
	ldr r0, _021C4BFC ; =0x00000F18
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021C4BC4
	mov r1, #1
	bl sub_0204C124
_021C4BC4:
	mov r6, #0x75
	mov r4, #0
	lsl r6, r6, #4
_021C4BCA:
	lsl r0, r4, #2
	add r5, r7, r0
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021C4BEA
	bl sub_020484B4
	ldr r0, [r5, r6]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r5, r6]
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r6]
_021C4BEA:
	add r4, r4, #1
	cmp r4, #0x1a
	blo _021C4BCA
	mov r0, #6
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C4BF8: .word 0x00000F04
_021C4BFC: .word 0x00000F18
	thumb_func_end ovy194_21c4b88

	thumb_func_start ovy194_21c4c00
ovy194_21c4c00: ; 0x021C4C00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #4
	add r6, r1, #0
	add r4, r5, r0
	add r0, r2, #0
	mov r1, #6
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	str r0, [sp, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #0
	beq _021C4C2A
	mov r7, #1
_021C4C2A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021C4C54
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _021C4C40
	mov r1, #0
	bl sub_0204C124
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021C4C40:
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021C4C54:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021C4CEE
	cmp r6, #0
	beq _021C4C68
	cmp r6, #1
	beq _021C4C68
	cmp r6, #2
	beq _021C4C7C
	b _021C4C8E
_021C4C68:
	lsl r0, r6, #7
	str r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x84
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r1, #0xc
	b _021C4C8A
_021C4C7C:
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xac
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r1, #6
_021C4C8A:
	add r0, sp, #0x14
	strb r1, [r0, #0x1c]
_021C4C8E:
	mov r6, #0
	str r6, [sp, #0x18]
	bl sub_0202D7E0
	str r0, [sp, #0x1c]
	bl sub_0202D890
	str r0, [sp, #0x20]
	bl sub_0202D894
	str r0, [sp, #0x24]
	mov r0, #2
	bl sub_0202D898
	str r0, [sp, #0x28]
	mov r0, #2
	bl sub_0202D89C
	str r0, [sp, #0x2c]
	add r0, sp, #0x14
	strb r6, [r0, #0x1d]
	mov r1, #1
	strb r1, [r0, #0x1e]
	ldr r3, _021C4CF4 ; =0x000005F4
	ldr r6, _021C4CF8 ; =0x000009C4
	ldrh r3, [r5, r3]
	ldr r2, [r5, r6]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_021999C8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021C4CF4 ; =0x000005F4
	ldr r2, [sp, #0x10]
	ldrh r0, [r5, r0]
	ldr r3, [sp, #0xc]
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	lsl r3, r3, #0x18
	ldr r1, [r5, r6]
	add r0, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	str r0, [r4, #0x10]
_021C4CEE:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021C4CF4: .word 0x000005F4
_021C4CF8: .word 0x000009C4
	thumb_func_end ovy194_21c4c00

	thumb_func_start ovy194_21c4cfc
ovy194_21c4cfc: ; 0x021C4CFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021C4D14
	bl sub_0204C108
	add r0, r4, #0
	bl sub_02199A44
	mov r0, #0
	str r0, [r4, #0x10]
_021C4D14:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c4cfc

	thumb_func_start ovy194_21c4d18
ovy194_21c4d18: ; 0x021C4D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _021C4E00 ; =0x00000964
	add r7, r1, #0
	add r4, r5, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	bl sub_02020734
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021C4D50
	cmp r0, #0
	bne _021C4D44
	add r0, r1, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021C4D44:
	add r0, r1, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021C4D50:
	cmp r0, #0
	bne _021C4D66
	cmp r6, #0
	bne _021C4DFA
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy194_21c4e0c
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021C4D66:
	cmp r6, #0
	beq _021C4D70
	mov r1, #0
	str r1, [sp, #0xc]
	b _021C4D76
_021C4D70:
	mov r0, #1
	str r0, [sp, #0xc]
	mov r1, #0xb
_021C4D76:
	add r0, sp, #0xc
	strb r1, [r0, #0x1c]
	mov r0, #0
	str r0, [sp, #0x10]
	bl sub_0202D7E0
	str r0, [sp, #0x14]
	bl sub_0202D8B0
	str r0, [sp, #0x18]
	bl sub_0202D8B4
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0202D8B8
	str r0, [sp, #0x20]
	mov r0, #2
	bl sub_0202D8BC
	str r0, [sp, #0x24]
	add r1, sp, #0xc
	mov r0, #0
	strb r0, [r1, #0x1d]
	mov r0, #1
	strb r0, [r1, #0x1e]
	ldr r3, _021C4E04 ; =0x000005F4
	ldr r2, _021C4E08 ; =0x000009C4
	ldrh r3, [r5, r3]
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_021999C8
	cmp r6, #0
	ldr r1, _021C4E08 ; =0x000009C4
	beq _021C4DDC
	mov r0, #0
	str r0, [sp]
	ldr r0, _021C4E04 ; =0x000005F4
	mov r2, #0xf4
	ldrh r0, [r5, r0]
	mov r3, #0x68
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_02199A5C
	add sp, #0x2c
	str r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_021C4DDC:
	mov r0, #0
	str r0, [sp]
	ldr r0, _021C4E04 ; =0x000005F4
	lsl r2, r7, #7
	ldrh r0, [r5, r0]
	add r2, #0x6c
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	lsr r2, r2, #0x18
	mov r3, #0x18
	bl sub_02199A5C
	str r0, [r4, #0x10]
_021C4DFA:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021C4E00: .word 0x00000964
_021C4E04: .word 0x000005F4
_021C4E08: .word 0x000009C4
	thumb_func_end ovy194_21c4d18

	thumb_func_start ovy194_21c4e0c
ovy194_21c4e0c: ; 0x021C4E0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r6, _021C4EB8 ; =0x00000978
	add r5, r0, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, r5, r6
	bl sub_02020758
	cmp r0, #0
	beq _021C4EB2
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021C4E44
	cmp r0, #0
	bne _021C4E38
	add r0, r1, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021C4E38:
	add r0, r1, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021C4E44:
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0xe
	add r0, sp, #8
	strb r1, [r0, #0x1c]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_0202D7E0
	str r0, [sp, #0x10]
	bl sub_0202D944
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_0202D948
	str r0, [sp, #0x18]
	mov r0, #2
	bl sub_0202D94C
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0202D950
	str r0, [sp, #0x20]
	add r2, r6, #0
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0, #0x1d]
	mov r1, #1
	strb r1, [r0, #0x1e]
	ldr r3, _021C4EBC ; =0x000005F4
	add r2, #0x4c
	ldrh r3, [r5, r3]
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r1, sp, #8
	bl sub_021999C8
	mov r0, #0xd
	str r0, [sp]
	ldr r0, _021C4EBC ; =0x000005F4
	lsl r2, r7, #7
	ldrh r0, [r5, r0]
	add r2, #0x6c
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	add r6, #0x4c
	ldr r1, [r5, r6]
	add r0, r4, #0
	lsr r2, r2, #0x18
	mov r3, #0x14
	bl sub_02199A5C
	str r0, [r4, #0x10]
_021C4EB2:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C4EB8: .word 0x00000978
_021C4EBC: .word 0x000005F4
	thumb_func_end ovy194_21c4e0c

	thumb_func_start ovy194_21c4ec0
ovy194_21c4ec0: ; 0x021C4EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r4, r1, #0
	add r6, r0, #0
	str r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_0201CCF8
	ldr r3, _021C504C ; =0x021C6CC8
	str r0, [sp, #0xc]
	add r2, sp, #0x60
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r5, _021C5050 ; =0x021C6D88
	add r3, sp, #0x20
	mov r2, #8
_021C4EF0:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021C4EF0
	mov r5, #0
	str r5, [sp, #0x80]
	str r5, [sp, #0x84]
	bl sub_0202D7E0
	str r0, [sp, #0x88]
	bl sub_0202D944
	str r0, [sp, #0x8c]
	mov r0, #2
	bl sub_0202D948
	str r0, [sp, #0x90]
	mov r0, #2
	bl sub_0202D94C
	str r0, [sp, #0x94]
	mov r0, #2
	bl sub_0202D950
	str r0, [sp, #0x98]
	add r0, sp, #0x80
	mov r1, #0xd
	strb r1, [r0, #0x1c]
	mov r1, #1
	strb r5, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021C4F46
	add r0, r4, #0
	bl sub_0201CDAC
	cmp r0, #0
	beq _021C4F46
	ldr r0, [sp, #0xc]
	mov r1, #0x40
	orr r0, r1
	str r0, [sp, #0xc]
_021C4F46:
	add r0, r4, #0
	bl sub_02020758
	cmp r0, #0
	beq _021C4F58
	ldr r0, [sp, #0xc]
	mov r1, #0x80
	orr r0, r1
	str r0, [sp, #0xc]
_021C4F58:
	ldr r4, _021C5054 ; =0x0000099C
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _021C4F7A
	ldr r3, _021C5058 ; =0x000005F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x28
	sub r0, #0x10
	ldrh r3, [r6, r3]
	ldr r2, [r6, r2]
	add r0, r6, r0
	add r1, sp, #0x80
	bl sub_021999C8
	mov r0, #1
	str r0, [r6, r4]
_021C4F7A:
	ldr r0, _021C505C ; =0x0000098C
	mov r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, _021C505C ; =0x0000098C
	str r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, _021C505C ; =0x0000098C
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, _021C505C ; =0x0000098C
	str r0, [sp, #0x10]
	add r0, #0x14
	str r0, [sp, #0x10]
_021C4F9C:
	lsl r2, r4, #2
	ldr r0, [sp, #0x10]
	add r1, r6, r2
	ldr r7, [r1, r0]
	mov r1, #1
	lsl r1, r4
	ldr r0, [sp, #0xc]
	tst r0, r1
	beq _021C4FBA
	lsl r0, r4, #3
	add r1, sp, #0x20
	add r3, sp, #0x20
	add r1, r1, r0
	ldr r5, [r3, r0]
	b _021C4FC2
_021C4FBA:
	lsl r1, r4, #3
	add r0, sp, #0x20
	add r1, r0, r1
	ldr r5, [r1, #4]
_021C4FC2:
	cmp r7, #0
	beq _021C4FEE
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021C4FD0
	b _021C4FDA
_021C4FD0:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021C4FDE
	cmp r4, #6
	bne _021C4FDE
_021C4FDA:
	add r0, r7, #0
	b _021C503C
_021C4FDE:
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r7, #0
	mov r1, #1
	b _021C503E
_021C4FEE:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021C4FFA
	ldr r0, [r1]
	b _021C4FFC
_021C4FFA:
	add r0, r5, #0
_021C4FFC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021C5058 ; =0x000005F4
	add r3, sp, #0x60
	ldrh r0, [r6, r0]
	add r7, r6, r2
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _021C505C ; =0x0000098C
	lsl r2, r2, #0x1b
	ldr r1, [r6, r1]
	add r0, r6, r0
	lsr r2, r2, #0x18
	mov r3, #0x65
	bl sub_02199A5C
	ldr r1, [sp, #0x18]
	str r0, [r7, r1]
	ldr r0, [sp, #0x14]
	mov r1, #0
	mvn r1, r1
	ldr r0, [r7, r0]
	cmp r5, r1
	bne _021C5032
	b _021C503C
_021C5032:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _021C5042
	cmp r4, #6
	bne _021C5042
_021C503C:
	mov r1, #0
_021C503E:
	bl sub_0204C124
_021C5042:
	add r4, r4, #1
	cmp r4, #8
	blt _021C4F9C
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C504C: .word 0x021C6CC8
_021C5050: .word 0x021C6D88
_021C5054: .word 0x0000099C
_021C5058: .word 0x000005F4
_021C505C: .word 0x0000098C
	thumb_func_end ovy194_21c4ec0

	thumb_func_start ovy194_21c5060
ovy194_21c5060: ; 0x021C5060
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021C5094 ; =0x0000098C
	mov r4, #0
	add r6, r0, r1
	add r7, r4, #0
_021C506A:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021C507A
	bl sub_0204C108
	str r7, [r5, #0x14]
_021C507A:
	add r4, r4, #1
	cmp r4, #8
	blt _021C506A
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021C5090
	add r0, r6, #0
	bl sub_02199A44
	mov r0, #0
	str r0, [r6, #0x10]
_021C5090:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5094: .word 0x0000098C
	thumb_func_end ovy194_21c5060

	thumb_func_start ovy194_21c5098
ovy194_21c5098: ; 0x021C5098
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _021C50D4 ; =0x000005F4
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	lsl r4, r1, #5
	ldrh r0, [r5, r7]
	mov r1, #5
	add r3, r4, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r6, r2, #0
	bl sub_0204B0B8
	bl sub_0202D7E0
	add r4, #0x1c
	str r4, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldrh r1, [r5, r7]
	add r2, r6, #0
	mov r3, #0x1c
	str r1, [sp, #8]
	mov r1, #0x1f
	bl sub_0204B0F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C50D4: .word 0x000005F4
	thumb_func_end ovy194_21c5098

	thumb_func_start ovy194_21c50d8
ovy194_21c50d8: ; 0x021C50D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xc
	add r7, r1, #0
	mul r7, r0
	lsl r5, r2, #2
	add r0, r6, r7
	ldr r4, _021C5108 ; =0x00001008
	add r0, r0, r5
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021C5104
	bl sub_0204C108
	add r0, r6, r7
	mov r1, #0
	add r0, r0, r5
	str r1, [r0, r4]
	add r4, #0x18
	ldr r0, [r0, r4]
	bl sub_0204B98C
_021C5104:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5108: .word 0x00001008
	thumb_func_end ovy194_21c50d8

	thumb_func_start ovy194_21c510c
ovy194_21c510c: ; 0x021C510C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #0xc
	mul r2, r1
	ldr r7, _021C5134 ; =0x00001008
	mov r4, #0
	add r5, r0, r2
_021C511A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _021C512A
	add r1, r6, #0
	bl sub_0204C124
_021C512A:
	add r4, r4, #1
	cmp r4, #3
	blt _021C511A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5134: .word 0x00001008
	thumb_func_end ovy194_21c510c

	thumb_func_start ovy194_21c5138
ovy194_21c5138: ; 0x021C5138
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r3, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0201D620
	ldr r1, _021C5228 ; =0x000005F4
	str r0, [sp, #0x18]
	ldrh r1, [r5, r1]
	mov r0, #7
	bl sub_0204AA30
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy194_21c50d8
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021C5180
	lsl r0, r6, #1
	add r0, r6, r0
	add r0, r4, r0
	ldr r1, _021C522C ; =0x021C6B74
	lsl r0, r0, #3
	ldr r2, [r1, r0]
	add r1, sp, #0x1c
	strh r2, [r1]
	ldr r2, _021C5230 ; =0x021C6B78
	ldr r0, [r2, r0]
	strh r0, [r1, #2]
	mov r0, #0
	b _021C5198
_021C5180:
	lsl r0, r6, #1
	add r0, r6, r0
	add r0, r4, r0
	ldr r1, _021C5234 ; =0x021C6BA4
	lsl r0, r0, #3
	ldr r2, [r1, r0]
	add r1, sp, #0x1c
	strh r2, [r1]
	ldr r2, _021C5238 ; =0x021C6BA8
	ldr r0, [r2, r0]
	strh r0, [r1, #2]
	mov r0, #1
_021C5198:
	str r0, [sp, #0x10]
	mov r2, #1
	add r0, sp, #0x1c
	strh r2, [r0, #4]
	mov r1, #0x10
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	mov r0, #0xc
	mul r0, r6
	ldr r6, _021C523C ; =0x00001020
	str r0, [sp, #0xc]
	add r1, r5, r6
	add r7, r1, r0
	ldr r0, [sp, #0x18]
	lsl r4, r4, #2
	bl sub_02020F40
	add r1, r0, #0
	ldr r0, _021C5228 ; =0x000005F4
	ldr r3, [sp, #0x10]
	ldrh r0, [r5, r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	bl sub_0204B81C
	str r0, [r7, r4]
	sub r6, #0x18
	mov r3, #0x89
	ldr r0, [sp, #0xc]
	add r1, r5, r6
	add r6, r1, r0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x10]
	lsl r3, r3, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021C5228 ; =0x000005F4
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, _021C5240 ; =0x000009C4
	ldr r2, [r5, r3]
	add r3, #0x30
	ldr r0, [r5, r0]
	ldr r1, [r7, r4]
	ldr r3, [r5, r3]
	bl sub_0204C040
	str r0, [r6, r4]
	ldr r0, [sp, #0x18]
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [r6, r4]
	mov r2, #1
	bl sub_0204C378
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r6, r4]
	ldr r1, [sp, #0x3c]
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	bl sub_0204AB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C5228: .word 0x000005F4
_021C522C: .word 0x021C6B74
_021C5230: .word 0x021C6B78
_021C5234: .word 0x021C6BA4
_021C5238: .word 0x021C6BA8
_021C523C: .word 0x00001020
_021C5240: .word 0x000009C4
	thumb_func_end ovy194_21c5138

	thumb_func_start ovy194_21c5244
ovy194_21c5244: ; 0x021C5244
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r6, #0
_021C5250:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	mov r5, #0
	add r0, r0, r1
	str r0, [sp, #0xc]
	lsl r0, r6, #1
	add r0, r6, r0
	lsl r1, r0, #3
	ldr r0, _021C52B4 ; =0x021C6BA4
	add r4, sp, #0x10
	add r7, r0, r1
_021C526A:
	ldr r0, [sp, #0xc]
	lsl r1, r5, #2
	add r1, r0, r1
	ldr r0, _021C52B8 ; =0x00001008
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C52A4
	lsl r2, r5, #3
	add r0, r7, r2
	ldr r2, [r7, r2]
	ldr r0, [r0, #4]
	strh r2, [r4]
	strh r0, [r4, #2]
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _021C5298
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _021C5298
	mov r0, #2
	ldrsh r0, [r4, r0]
	sub r0, r0, #4
	strh r0, [r4, #2]
_021C5298:
	ldr r0, _021C52B8 ; =0x00001008
	mov r2, #1
	ldr r0, [r1, r0]
	add r1, sp, #0x10
	bl sub_0204C140
_021C52A4:
	add r5, r5, #1
	cmp r5, #3
	blt _021C526A
	add r6, r6, #1
	cmp r6, #2
	blt _021C5250
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C52B4: .word 0x021C6BA4
_021C52B8: .word 0x00001008
	thumb_func_end ovy194_21c5244

	thumb_func_start ovy194_21c52bc
ovy194_21c52bc: ; 0x021C52BC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r0, #0
	add r7, r5, #0
_021C52C4:
	add r4, r7, #0
_021C52C6:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy194_21c50d8
	add r4, r4, #1
	cmp r4, #3
	blt _021C52C6
	add r5, r5, #1
	cmp r5, #2
	blt _021C52C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy194_21c52bc

	thumb_func_start ovy194_21c52e0
ovy194_21c52e0: ; 0x021C52E0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0xc
	strh r3, [r0]
	ldr r3, [sp, #0x20]
	mov r5, #1
	strh r3, [r0, #2]
	strh r5, [r0, #4]
	mov r3, #0
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, _021C533C ; =0x000005F4
	mov r3, #0x14
	mul r3, r1
	ldrh r0, [r4, r0]
	add r3, r4, r3
	lsl r1, r2, #2
	add r1, r3, r1
	ldr r5, _021C5340 ; =0x000009C4
	str r0, [sp, #8]
	ldr r3, _021C5344 ; =0x0000087C
	ldr r0, [r4, r5]
	add r5, #8
	ldr r2, [r4, r3]
	add r3, #0x30
	ldr r1, [r1, r5]
	ldr r3, [r4, r3]
	bl sub_0204C040
	mov r5, #0xf2
	lsl r5, r5, #4
	str r0, [r4, r5]
	ldr r0, [sp, #0x24]
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [r4, r5]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021C533C: .word 0x000005F4
_021C5340: .word 0x000009C4
_021C5344: .word 0x0000087C
	thumb_func_end ovy194_21c52e0

	thumb_func_start ovy194_21c5348
ovy194_21c5348: ; 0x021C5348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	mov r6, #0xf2
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r1, sp, #0x1c
	mov r2, #1
	bl sub_0204C178
	add r2, r6, #0
	add r2, #0x4c
	add r6, #0x4e
	add r0, sp, #0x1c
	mov r4, #0
	ldrsh r1, [r0, r4]
	ldrsh r7, [r5, r2]
	ldrsh r6, [r5, r6]
	lsl r3, r1, #0xc
	sub r2, r1, r7
	lsl r2, r2, #0xc
	str r2, [sp, #0xc]
	mov r2, #2
	ldrsh r0, [r0, r2]
	lsl r1, r1, #1
	sub r1, r1, r7
	sub r2, r0, r6
	lsl r2, r2, #0xc
	str r2, [sp, #8]
	lsl r2, r0, #0xc
	lsl r0, r0, #1
	sub r0, r0, r6
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	mov r0, #7
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	sub r0, r3, r0
	str r0, [sp, #0x14]
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	lsl r1, r1, #0xc
	str r0, [sp, #0x10]
	asr r7, r0, #0x1f
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x24]
	asr r1, r0, #0x1f
	str r3, [sp, #0x20]
	add r2, r0, #0
	add r3, r1, #0
	str r4, [sp, #0x28]
	str r4, [sp, #0x34]
	str r4, [sp, #0x48]
	str r4, [sp, #0x4c]
	blx sub_0208D60C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r3, r2, #0xa
	ldr r2, [sp, #0x18]
	add r2, r2, r3
	adc r6, r4
	lsl r3, r6, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	add r0, r2, r1
	bl FX_Sqrt
	mov r1, #0xf
	blx sub_0208D65C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	asr r6, r7, #0x1f
	asr r1, r0, #0x1f
	add r2, r7, #0
	add r3, r6, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #8]
	add r3, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x40]
	add r0, r0, r1
	str r0, [sp, #0x3c]
	add r0, sp, #0x44
	str r0, [sp]
	mov r0, #0x13
	ldr r4, _021C545C ; =0x00001190
	str r0, [sp, #4]
	add r0, r5, r4
	add r1, sp, #0x20
	add r2, sp, #0x2c
	add r3, sp, #0x38
	bl ovy194_21c604c
	mov r0, #0x15
	add r4, #0x4c
	strh r0, [r5, r4]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C545C: .word 0x00001190
	thumb_func_end ovy194_21c5348

	thumb_func_start ovy194_21c5460
ovy194_21c5460: ; 0x021C5460
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _021C54E8 ; =0x000011DC
	add r5, r0, #0
	ldrsh r0, [r5, r4]
	cmp r0, #0
	beq _021C54E2
	sub r0, r0, #1
	strh r0, [r5, r4]
	ldrsh r0, [r5, r4]
	cmp r0, #0
	bne _021C547E
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021C547E:
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	mov r2, #1
	mov r6, #1
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _021C549A
	strh r6, [r5, r4]
_021C549A:
	ldr r4, _021C54E8 ; =0x000011DC
	ldrsh r0, [r5, r4]
	cmp r0, #1
	bne _021C54AA
	add r0, r5, #0
	bl ovy194_21c54ec
	b _021C54E2
_021C54AA:
	add r0, r4, #0
	sub r0, #0x4c
	add r0, r5, r0
	bl ovy194_21c60a0
	add r0, r4, #0
	sub r0, #0x4c
	ldr r1, [r5, r0]
	sub r4, #0x48
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r1, sp, #0
	strh r0, [r1]
	ldr r2, [r5, r4]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	strh r0, [r1, #2]
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
_021C54E2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021C54E8: .word 0x000011DC
	thumb_func_end ovy194_21c5460

	thumb_func_start ovy194_21c54ec
ovy194_21c54ec: ; 0x021C54EC
	push {r3, r4, r5, lr}
	mov r5, #0xf2
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C5502
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021C5502:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy194_21c54ec

	thumb_func_start ovy194_21c5504
ovy194_21c5504: ; 0x021C5504
	push {r3, lr}
	ldr r0, _021C5518 ; =0x04001050
	mov r3, #8
	mov r1, #0
	mov r2, #0xf
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_021C5518: .word 0x04001050
	thumb_func_end ovy194_21c5504

	thumb_func_start ovy194_21c551c
ovy194_21c551c: ; 0x021C551C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, _021C5584 ; =0x000010BC
	lsl r5, r1, #2
	add r4, r6, r0
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021C556E
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	add r2, #8
	add r0, sp, #0xc
	strh r2, [r0]
	mov r2, #0x90
	strh r2, [r0, #2]
	add r1, #0xb
	strh r1, [r0, #4]
	mov r1, #0x32
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r3, _021C5588 ; =0x00000894
	ldr r0, _021C558C ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r6, r0]
	add r2, r3, #0
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C5590 ; =0x000009C4
	ldr r1, [r6, r3]
	add r3, #0x1c
	ldr r0, [r6, r0]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	bl sub_0204C040
	str r0, [r4, r5]
_021C556E:
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021C5584: .word 0x000010BC
_021C5588: .word 0x00000894
_021C558C: .word 0x000005F4
_021C5590: .word 0x000009C4
	thumb_func_end ovy194_21c551c

	thumb_func_start sub_021C5594
sub_021C5594: ; 0x021C5594
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021C55A4 ; =0x000010BC
	ldr r3, _021C55A8 ; =sub_0204C124
	ldr r0, [r1, r0]
	add r1, r2, #0
	bx r3
	nop
_021C55A4: .word 0x000010BC
_021C55A8: .word sub_0204C124
	thumb_func_end sub_021C5594

	thumb_func_start ovy194_21c55ac
ovy194_21c55ac: ; 0x021C55AC
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	ldr r1, _021C55C4 ; =0x000010BC
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C55C2
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021C55C2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C55C4: .word 0x000010BC
	thumb_func_end ovy194_21c55ac

	thumb_func_start sub_021C55C8
sub_021C55C8: ; 0x021C55C8
	lsl r2, r1, #2
	add r2, r0, r2
	ldr r0, _021C55DC ; =0x000010BC
	add r1, #0xf
	lsl r1, r1, #0x10
	ldr r0, [r2, r0]
	ldr r3, _021C55E0 ; =sub_0204C488
	lsr r1, r1, #0x10
	bx r3
	nop
_021C55DC: .word 0x000010BC
_021C55E0: .word sub_0204C488
	thumb_func_end sub_021C55C8

	thumb_func_start ovy194_21c55e4
ovy194_21c55e4: ; 0x021C55E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xce
	mul r0, r2
	add r0, #8
	add r3, sp, #0x10
	strh r0, [r3]
	mov r0, #0xa0
	strh r0, [r3, #2]
	mov r0, #4
	strh r0, [r3, #4]
	mov r0, #1
	strb r0, [r3, #6]
	lsl r0, r2, #1
	add r7, r1, #0
	mov r1, #0
	lsl r4, r0, #2
	str r0, [sp, #0xc]
	ldr r2, _021C56A8 ; =0x000010AC
	strb r1, [r3, #7]
	add r0, r5, r4
	ldr r0, [r0, r2]
	cmp r0, #0
	bne _021C5646
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _021C56AC ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r5, r0]
	ldr r3, _021C56B0 ; =0x00000898
	add r6, r5, r2
	str r0, [sp, #8]
	ldr r0, _021C56B4 ; =0x000009C4
	add r2, r3, #0
	ldr r1, [r5, r3]
	sub r2, #0x14
	add r3, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #1
	str r0, [r6, r4]
	bl sub_0204C520
	ldr r0, [r6, r4]
	b _021C5646
_021C5646:
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	ldr r1, _021C56A8 ; =0x000010AC
	add r0, r0, #1
	lsl r4, r0, #2
	add r0, r5, r4
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021C569C
	mov r0, #0
	add r2, sp, #0x10
	strb r0, [r2, #6]
	add r6, r5, r1
	strh r7, [r2, #4]
	add r1, sp, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021C56AC ; =0x000005F4
	ldr r3, _021C56B0 ; =0x00000898
	ldrh r0, [r5, r0]
	add r2, r3, #0
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C56B4 ; =0x000009C4
	ldr r1, [r5, r3]
	add r3, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	str r0, [r6, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021C569C:
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C56A8: .word 0x000010AC
_021C56AC: .word 0x000005F4
_021C56B0: .word 0x00000898
_021C56B4: .word 0x000009C4
	thumb_func_end ovy194_21c55e4

	thumb_func_start ovy194_21c56b8
ovy194_21c56b8: ; 0x021C56B8
	push {r4, r5, r6, lr}
	lsl r4, r1, #1
	add r5, r0, #0
	add r0, r4, #1
	lsl r0, r0, #2
	ldr r6, _021C56F4 ; =0x000010AC
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021C56DA
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #2
	mov r1, #0
	add r0, r5, r0
	str r1, [r0, r6]
_021C56DA:
	lsl r0, r4, #2
	ldr r6, _021C56F4 ; =0x000010AC
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021C56F2
	bl sub_0204C108
	lsl r0, r4, #2
	mov r1, #0
	add r0, r5, r0
	str r1, [r0, r6]
_021C56F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C56F4: .word 0x000010AC
	thumb_func_end ovy194_21c56b8

	thumb_func_start ovy194_21c56f8
ovy194_21c56f8: ; 0x021C56F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r3, _021C5794 ; =0x021C6BF0
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #0x14
	mov r1, #0xc
_021C5706:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021C5706
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021C572C
	ldr r0, _021C5798 ; =0x00000FD4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C578E
	mov r1, #0
	bl sub_0204C124
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_021C572C:
	ldr r6, _021C5798 ; =0x00000FD4
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _021C576E
	mov r1, #0x40
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x30
	strh r1, [r0, #2]
	mov r1, #0x17
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r3, _021C579C ; =0x00000894
	ldr r0, _021C57A0 ; =0x000005F4
	str r1, [sp, #4]
	ldrh r0, [r5, r0]
	add r2, r3, #0
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C57A4 ; =0x000009C4
	ldr r1, [r5, r3]
	add r3, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	str r0, [r5, r6]
_021C576E:
	ldr r6, _021C5798 ; =0x00000FD4
	mov r1, #1
	ldr r0, [r5, r6]
	bl sub_0204C520
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, r6]
	add r2, sp, #0x14
	lsl r1, r4, #2
	add r1, r2, r1
	mov r2, #1
	bl sub_0204C140
_021C578E:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021C5794: .word 0x021C6BF0
_021C5798: .word 0x00000FD4
_021C579C: .word 0x00000894
_021C57A0: .word 0x000005F4
_021C57A4: .word 0x000009C4
	thumb_func_end ovy194_21c56f8

	thumb_func_start ovy194_21c57a8
ovy194_21c57a8: ; 0x021C57A8
	push {r3, r4, r5, lr}
	ldr r5, _021C57C0 ; =0x00000FD4
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C57BC
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021C57BC:
	pop {r3, r4, r5, pc}
	nop
_021C57C0: .word 0x00000FD4
	thumb_func_end ovy194_21c57a8

	thumb_func_start ovy194_21c57c4
ovy194_21c57c4: ; 0x021C57C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021C58A4 ; =0x000011DE
	ldrsh r1, [r5, r0]
	cmp r1, #0x80
	bge _021C57D8
	add r1, r1, #4
	strh r1, [r5, r0]
	b _021C57DE
_021C57D8:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C57DE:
	mov r4, #0
	add r6, sp, #0
_021C57E2:
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, _021C58A8 ; =0x000010CC
	add r1, sp, #8
	ldr r0, [r7, r0]
	mov r2, #1
	bl sub_0204C178
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r0, r0, #2
	beq _021C5804
	mov r0, #8
	ldrsh r0, [r6, r0]
	add r0, r0, #4
	b _021C580A
_021C5804:
	mov r0, #8
	ldrsh r0, [r6, r0]
	sub r0, r0, #4
_021C580A:
	strh r0, [r6, #8]
	ldr r0, _021C58A8 ; =0x000010CC
	add r1, sp, #8
	ldr r0, [r7, r0]
	mov r2, #1
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #8
	blt _021C57E2
	mov r4, #0
	add r7, sp, #0
_021C5822:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021C58AC ; =0x00001008
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021C584A
	add r1, sp, #4
	mov r2, #1
	bl sub_0204C178
	mov r0, #4
	ldrsh r0, [r7, r0]
	add r1, sp, #4
	mov r2, #1
	sub r0, r0, #4
	strh r0, [r7, #4]
	ldr r0, _021C58AC ; =0x00001008
	ldr r0, [r6, r0]
	bl sub_0204C140
_021C584A:
	add r4, r4, #1
	cmp r4, #3
	blt _021C5822
	mov r4, #0
	add r7, sp, #0
_021C5854:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021C58B0 ; =0x00001014
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021C587C
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, sp, #0
	mov r2, #1
	add r0, r0, #4
	strh r0, [r7]
	ldr r0, _021C58B0 ; =0x00001014
	ldr r0, [r6, r0]
	bl sub_0204C140
_021C587C:
	add r4, r4, #1
	cmp r4, #3
	blt _021C5854
	ldr r4, _021C58A4 ; =0x000011DE
	mov r0, #5
	ldrsh r2, [r5, r4]
	mov r1, #0
	neg r2, r2
	bl sub_02044CFC
	ldrsh r2, [r5, r4]
	mov r0, #4
	mov r1, #0
	sub r2, #0x80
	bl sub_02044CFC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C58A4: .word 0x000011DE
_021C58A8: .word 0x000010CC
_021C58AC: .word 0x00001008
_021C58B0: .word 0x00001014
	thumb_func_end ovy194_21c57c4

	thumb_func_start ovy194_21c58b4
ovy194_21c58b4: ; 0x021C58B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _021C5988 ; =0x000010CC
	add r6, r0, #0
	mov r4, #0
_021C58BE:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C178
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r0, r0, #2
	add r1, sp, #0
	beq _021C58EC
	mov r0, #8
	ldrsh r1, [r1, r0]
	add r0, sp, #0
	sub r1, #0x80
	strh r1, [r0, #8]
	ldr r0, [r5, r7]
	mov r1, #3
	bl sub_0204C468
	b _021C58F6
_021C58EC:
	mov r0, #8
	ldrsh r1, [r1, r0]
	add r0, sp, #0
	add r1, #0x80
	strh r1, [r0, #8]
_021C58F6:
	ldr r0, [r5, r7]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #8
	blt _021C58BE
	ldr r7, _021C598C ; =0x00001008
	mov r4, #0
_021C590A:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021C5932
	add r1, sp, #4
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, sp, #0
	mov r2, #1
	add r1, #0x80
	strh r1, [r0, #4]
	ldr r0, [r5, r7]
	add r1, sp, #4
	bl sub_0204C140
_021C5932:
	add r4, r4, #1
	cmp r4, #3
	blt _021C590A
	ldr r7, _021C5990 ; =0x00001014
	mov r5, #0
_021C593C:
	lsl r0, r5, #2
	add r4, r6, r0
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021C596C
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #0
	mov r2, #1
	sub r1, #0x80
	strh r1, [r0]
	ldr r0, [r4, r7]
	add r1, sp, #0
	bl sub_0204C140
	ldr r0, [r4, r7]
	mov r1, #3
	bl sub_0204C468
_021C596C:
	add r5, r5, #1
	cmp r5, #3
	blt _021C593C
	mov r0, #4
	mov r1, #2
	bl sub_02044BD8
	mov r0, #5
	mov r1, #3
	bl sub_02044BD8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C5988: .word 0x000010CC
_021C598C: .word 0x00001008
_021C5990: .word 0x00001014
	thumb_func_end ovy194_21c58b4

	thumb_func_start ovy194_21c5994
ovy194_21c5994: ; 0x021C5994
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _021C5AB0 ; =0x000005F4
	add r5, r0, #0
	ldrh r3, [r5, r6]
	mov r0, #6
	mov r1, #0xf
	mov r2, #0
	mov r7, #0
	bl sub_02024D20
	add r1, r6, #0
	add r1, #0x50
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x67
	bl sub_0204AA30
	str r7, [sp]
	ldrh r1, [r5, r6]
	mov r2, #5
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #0xd
	add r4, r0, #0
	bl sub_0204AE3C
	mov r1, #0x87
	lsl r1, r1, #4
	str r0, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r1, #7
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AFB0
	mov r0, #0x87
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	ldr r3, _021C5AB4 ; =0x021C6C48
	add r2, sp, #0x18
	str r2, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #7
	bl sub_02044B84
	ldr r1, [sp, #0x10]
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r0, #0x87
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	str r1, [sp, #0x14]
	mov r1, #8
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl sub_0204AFB0
	ldr r2, [sp, #0x14]
	mov r0, #4
	sub r2, #0x88
	add r1, r7, #0
	str r2, [sp, #0x14]
	bl sub_02044CFC
	mov r0, #7
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02044CFC
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	mov r0, #0x87
	lsl r0, r0, #4
	sub r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xb
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r2, #2
	add r3, r7, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r0, _021C5AB8 ; =0x000011DE
	strh r7, [r5, r0]
	add r0, r5, #0
	bl ovy194_21c58b4
	mov r0, #0x1f
	bl sub_02046DC0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C5AB0: .word 0x000005F4
_021C5AB4: .word 0x021C6C48
_021C5AB8: .word 0x000011DE
	thumb_func_end ovy194_21c5994

	thumb_func_start ovy194_21c5abc
ovy194_21c5abc: ; 0x021C5ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	ldr r3, _021C5BDC ; =0x021C6C68
	add r5, r0, #0
	add r2, sp, #0x34
	mov r1, #0x10
_021C5AC8:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021C5AC8
	ldr r1, _021C5BE0 ; =0x000005F4
	mov r0, #0x67
	ldrh r1, [r5, r1]
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, _021C5BE0 ; =0x000005F4
	mov r3, #7
	ldrh r1, [r5, r1]
	mov r2, #1
	lsl r3, r3, #6
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	bl sub_0204BBB8
	ldr r1, _021C5BE4 ; =0x000010EC
	ldr r3, _021C5BE0 ; =0x000005F4
	str r0, [r5, r1]
	str r1, [sp, #0x10]
	ldrh r3, [r5, r3]
	ldr r0, [sp, #0xc]
	mov r1, #2
	mov r2, #1
	bl sub_0204BDE0
	ldr r1, [sp, #0x10]
	add r4, r6, #0
	add r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
	ldr r0, _021C5BE0 ; =0x000005F4
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
_021C5B2A:
	ldr r3, _021C5BE0 ; =0x000005F4
	lsl r0, r6, #2
	ldrh r3, [r5, r3]
	add r7, r5, r0
	mov r0, #0x10
	mov r1, #6
	mov r2, #0x20
	bl sub_02046E28
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r0, [r7, r1]
	ldr r0, [sp, #0x14]
	mov r1, #3
	ldrh r0, [r0]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	bl sub_0204B81C
	ldr r1, [sp, #0x10]
	add r6, r6, #1
	str r0, [r7, r1]
	cmp r6, #8
	blt _021C5B2A
	ldr r0, _021C5BE8 ; =0x00001114
	add r7, sp, #0x2c
	str r0, [sp, #0x28]
	sub r0, #0x28
	str r0, [sp, #0x28]
	ldr r0, _021C5BE8 ; =0x00001114
	str r0, [sp, #0x24]
	sub r0, #0x24
	str r0, [sp, #0x24]
	ldr r0, _021C5BE8 ; =0x00001114
	str r0, [sp, #0x20]
	sub r0, #0x48
	str r0, [sp, #0x20]
	ldr r0, _021C5BE8 ; =0x00001114
	str r0, [sp, #0x1c]
	sub r0, #0x48
	str r0, [sp, #0x1c]
_021C5B7E:
	lsl r1, r4, #2
	add r2, sp, #0x34
	ldrsh r2, [r2, r1]
	add r0, sp, #0x34
	add r0, r0, r1
	strh r2, [r7]
	mov r2, #2
	ldrsh r0, [r0, r2]
	add r6, r5, r1
	ldr r1, _021C5BE8 ; =0x00001114
	strh r0, [r7, #2]
	mov r0, #0
	strh r0, [r7, #4]
	strb r0, [r7, #6]
	mov r0, #1
	strb r0, [r7, #7]
	add r0, sp, #0x2c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C5BE0 ; =0x000005F4
	ldr r2, [sp, #0x28]
	ldrh r0, [r5, r0]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, _021C5BEC ; =0x000009C4
	ldr r1, [r6, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x20]
	str r0, [r6, r1]
	ldr r0, [sp, #0x1c]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #8
	blt _021C5B7E
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C5BDC: .word 0x021C6C68
_021C5BE0: .word 0x000005F4
_021C5BE4: .word 0x000010EC
_021C5BE8: .word 0x00001114
_021C5BEC: .word 0x000009C4
	thumb_func_end ovy194_21c5abc

	thumb_func_start ovy194_21c5bf0
ovy194_21c5bf0: ; 0x021C5BF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, _021C5C78 ; =0x000010CC
	mov r4, #0
	str r0, [sp, #0xc]
	add r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, _021C5C78 ; =0x000010CC
	add r7, r4, #0
	str r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, _021C5C78 ; =0x000010CC
	str r0, [sp, #4]
	add r0, #0x48
	str r0, [sp, #4]
	ldr r0, _021C5C78 ; =0x000010CC
	str r0, [sp]
	add r0, #0x48
	str r0, [sp]
_021C5C1A:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, _021C5C78 ; =0x000010CC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C5C46
	bl sub_0204C108
	ldr r0, _021C5C78 ; =0x000010CC
	str r7, [r5, r0]
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	bl sub_02046EDC
	ldr r0, [sp, #8]
	str r7, [r5, r0]
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	bl sub_0204B98C
	ldr r0, [sp]
	str r7, [r5, r0]
_021C5C46:
	add r4, r4, #1
	cmp r4, #8
	blt _021C5C1A
	ldr r4, _021C5C7C ; =0x000010EC
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021C5C5C
	bl sub_0204BCD0
	mov r0, #0
	str r0, [r6, r4]
_021C5C5C:
	ldr r4, _021C5C7C ; =0x000010EC
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021C5C72
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r6, r0]
	bl sub_0204BE64
	mov r0, #0
	str r0, [r6, r4]
_021C5C72:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5C78: .word 0x000010CC
_021C5C7C: .word 0x000010EC
	thumb_func_end ovy194_21c5bf0

	thumb_func_start ovy194_21c5c80
ovy194_21c5c80: ; 0x021C5C80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _021C5D08 ; =0x021C6BDC
	str r0, [sp]
	add r2, sp, #0x10
	mov r1, #8
_021C5C8C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021C5C8C
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021C5D0C ; =0x00001114
	mov r7, #1
	str r0, [sp, #0xc]
	sub r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, _021C5D0C ; =0x00001114
	lsl r7, r7, #8
	str r0, [sp, #8]
	sub r0, #0x20
	str r0, [sp, #8]
_021C5CB0:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r4, r0, r1
	ldr r0, _021C5D0C ; =0x00001114
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204BB80
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r0, [r4, r0]
	bl sub_02046EF4
	add r6, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r4, r0]
	bl sub_02046F00
	add r1, r0, #0
	add r0, r6, #0
	blx DC_FlushRange
	mov r4, #0
_021C5CE0:
	add r0, sp, #0x10
	ldrb r0, [r0, r4]
	add r1, r5, #0
	add r2, r7, #0
	lsl r0, r0, #8
	add r0, r6, r0
	bl GXS_LoadOBJ
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #8
	blt _021C5CE0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _021C5CB0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5D08: .word 0x021C6BDC
_021C5D0C: .word 0x00001114
	thumb_func_end ovy194_21c5c80

	thumb_func_start ovy194_21c5d10
ovy194_21c5d10: ; 0x021C5D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, _021C5DC4 ; =0x000005F4
	add r4, r0, #0
	add r7, r1, #0
	ldrh r1, [r4, r5]
	mov r0, #0x67
	bl sub_0204AA30
	str r0, [sp, #0xc]
	cmp r7, #0
	ldrh r1, [r4, r5]
	add r3, sp, #0x10
	bne _021C5D32
	str r1, [sp]
	mov r1, #5
	b _021C5D36
_021C5D32:
	str r1, [sp]
	mov r1, #6
_021C5D36:
	mov r2, #0
	bl sub_0204B32C
	str r0, [sp, #8]
	ldr r1, [sp, #0x10]
	mov r3, #0
	ldr r0, [r1, #8]
	add r2, r1, #0
	add r2, #0xc
	lsr r0, r0, #1
	beq _021C5D68
	ldr r5, _021C5DC8 ; =0x0000086C
_021C5D4E:
	lsl r1, r3, #1
	ldr r6, [r4, r5]
	ldrh r0, [r2, r1]
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	add r0, r0, r6
	strh r0, [r2, r1]
	ldr r1, [sp, #0x10]
	add r3, r3, #1
	ldr r0, [r1, #8]
	lsr r0, r0, #1
	cmp r3, r0
	blo _021C5D4E
_021C5D68:
	cmp r7, #0
	bne _021C5D7C
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	b _021C5D88
_021C5D7C:
	mov r2, #0x10
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	add r1, #0xc
_021C5D88:
	mov r3, #0
	bl sub_020454AC
	ldr r0, [sp, #8]
	bl sub_0203A24C
	mov r0, #3
	mov r1, #2
	bl sub_02044BD8
	mov r0, #2
	mov r1, #3
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C5DC4: .word 0x000005F4
_021C5DC8: .word 0x0000086C
	thumb_func_end ovy194_21c5d10
_021C5DCC:
	.byte 0x01, 0x49, 0x01, 0x22
	.byte 0x42, 0x54, 0x70, 0x47, 0xF5, 0x11, 0x00, 0x00

	thumb_func_start ovy194_21c5dd8
ovy194_21c5dd8: ; 0x021C5DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r1, #0xc
	add r4, sp, #0xc
	strh r1, [r4]
	add r2, #0xc
	strh r2, [r4, #2]
	mov r1, #0x18
	strh r1, [r4, #4]
	mov r6, #0
	strb r6, [r4, #6]
	add r5, r0, #0
	strb r6, [r4, #7]
	bl ovy194_21c5e5c
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021C5E44 ; =0x000005F4
	ldr r3, _021C5E48 ; =0x00000894
	ldrh r0, [r5, r0]
	add r2, r3, #0
	sub r2, #0x14
	str r0, [sp, #8]
	ldr r0, _021C5E4C ; =0x000009C4
	ldr r1, [r5, r3]
	add r3, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r7, _021C5E50 ; =0x00000F24
	mov r1, #1
	str r0, [r5, r7]
	bl sub_0204C124
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021C5E54 ; =0x000011F5
	add r1, sp, #0x14
	strb r6, [r5, r0]
	strh r6, [r4, #8]
	ldr r0, _021C5E58 ; =0x021C5DCD
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r5, r7]
	bl sub_0204C5B0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C5E44: .word 0x000005F4
_021C5E48: .word 0x00000894
_021C5E4C: .word 0x000009C4
_021C5E50: .word 0x00000F24
_021C5E54: .word 0x000011F5
_021C5E58: .word 0x021C5DCD
	thumb_func_end ovy194_21c5dd8

	thumb_func_start ovy194_21c5e5c
ovy194_21c5e5c: ; 0x021C5E5C
	push {r3, r4, r5, lr}
	ldr r5, _021C5E78 ; =0x00000F24
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C5E74
	bl sub_0204C108
	mov r1, #0
	ldr r0, _021C5E7C ; =0x000011F5
	str r1, [r4, r5]
	strb r1, [r4, r0]
_021C5E74:
	pop {r3, r4, r5, pc}
	nop
_021C5E78: .word 0x00000F24
_021C5E7C: .word 0x000011F5
	thumb_func_end ovy194_21c5e5c

	thumb_func_start ovy194_21c5e80
ovy194_21c5e80: ; 0x021C5E80
	push {r3, lr}
	ldr r1, _021C5E98 ; =0x000011F5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021C5E92
	bl ovy194_21c5e5c
	mov r0, #0
	pop {r3, pc}
_021C5E92:
	mov r0, #1
	pop {r3, pc}
	nop
_021C5E98: .word 0x000011F5
	thumb_func_end ovy194_21c5e80

	thumb_func_start ovy194_21c5e9c
ovy194_21c5e9c: ; 0x021C5E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, _021C5F60 ; =0x000005F4
	add r4, r0, #0
	ldrh r0, [r4, r5]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_02026DC0
	mov r7, #2
	lsl r7, r7, #8
	ldrh r3, [r4, r5]
	ldr r1, [sp, #8]
	str r0, [sp, #0x10]
	add r2, r7, #0
	bl sub_02026E04
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	mov r2, #0
	add r3, r7, #0
	mov r6, #0
	bl sub_02026F7C
	mov r3, #6
	str r3, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	mov r2, #0
	add r3, #0xfa
	str r6, [sp, #4]
	bl sub_02027880
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	bl sub_02026FD8
	add r4, r0, #0
	mov r7, #0x20
_021C5EEA:
	mov r1, #1
	lsl r1, r6
	ldr r0, [sp, #0xc]
	tst r0, r1
	beq _021C5F46
	lsl r5, r6, #5
	add r0, r4, r5
	add r1, r7, #0
	blx DC_FlushRange
	ldr r0, [sp, #8]
	cmp r0, #3
	bhi _021C5F46
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C5F10: ; jump table
	.short _021C5F3C - _021C5F10 - 2 ; case 0
	.short _021C5F24 - _021C5F10 - 2 ; case 1
	.short _021C5F30 - _021C5F10 - 2 ; case 2
	.short _021C5F18 - _021C5F10 - 2 ; case 3
_021C5F18:
	add r0, r4, r5
	add r1, r5, #0
	add r2, r7, #0
	bl GXS_LoadOBJPltt
	b _021C5F46
_021C5F24:
	add r0, r4, r5
	add r1, r5, #0
	add r2, r7, #0
	bl GXS_LoadBGPltt
	b _021C5F46
_021C5F30:
	add r0, r4, r5
	add r1, r5, #0
	add r2, r7, #0
	bl GX_LoadOBJPltt
	b _021C5F46
_021C5F3C:
	add r0, r4, r5
	add r1, r5, #0
	add r2, r7, #0
	bl GX_LoadBGPltt
_021C5F46:
	add r6, r6, #1
	cmp r6, #0x10
	blt _021C5EEA
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	bl sub_02026E48
	ldr r0, [sp, #0x10]
	bl sub_02026DE8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021C5F60: .word 0x000005F4
	thumb_func_end ovy194_21c5e9c

	thumb_func_start ovy194_21c5f64
ovy194_21c5f64: ; 0x021C5F64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r1, #0
	beq _021C5F98
	cmp r4, #3
	bne _021C5F7A
	ldr r0, _021C5FD4 ; =0x05000600
	ldr r1, _021C5FD8 ; =0x000010A4
	b _021C5F82
_021C5F7A:
	cmp r4, #1
	bne _021C5F8C
	ldr r0, _021C5FDC ; =0x05000400
	ldr r1, _021C5FE0 ; =0x000010A8
_021C5F82:
	mov r2, #2
	ldr r1, [r5, r1]
	lsl r2, r2, #8
	blx MI_CpuCopy8
_021C5F8C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy194_21c5e9c
	pop {r4, r5, r6, pc}
_021C5F98:
	cmp r4, #3
	bne _021C5FB6
	ldr r4, _021C5FD8 ; =0x000010A4
	mov r6, #2
	lsl r6, r6, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	blx DC_FlushRange
	ldr r0, [r5, r4]
	mov r1, #0
	add r2, r6, #0
	bl GXS_LoadOBJPltt
	pop {r4, r5, r6, pc}
_021C5FB6:
	cmp r4, #1
	bne _021C5FD2
	ldr r4, _021C5FE0 ; =0x000010A8
	mov r6, #2
	lsl r6, r6, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	blx DC_FlushRange
	ldr r0, [r5, r4]
	mov r1, #0
	add r2, r6, #0
	bl GXS_LoadBGPltt
_021C5FD2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C5FD4: .word 0x05000600
_021C5FD8: .word 0x000010A4
_021C5FDC: .word 0x05000400
_021C5FE0: .word 0x000010A8
	thumb_func_end ovy194_21c5f64

	thumb_func_start ovy194_21c5fe4
ovy194_21c5fe4: ; 0x021C5FE4
	push {r3, lr}
	ldr r3, _021C5FF0 ; =0x0000FFFE
	mov r2, #3
	bl ovy194_21c5f64
	pop {r3, pc}
	.align 2, 0
_021C5FF0: .word 0x0000FFFE
	thumb_func_end ovy194_21c5fe4

	thumb_func_start ovy194_21c5ff4
ovy194_21c5ff4: ; 0x021C5FF4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02005718
	ldr r1, _021C6008 ; =ovy194_21c6024
	add r2, r4, #0
	mov r3, #0xa
	bl sub_0203A614
	pop {r4, pc}
	.align 2, 0
_021C6008: .word ovy194_21c6024
	thumb_func_end ovy194_21c5ff4

	thumb_func_start ovy194_21c600c
ovy194_21c600c: ; 0x021C600C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02005718
	ldr r1, _021C6020 ; =ovy194_21c6038
	add r2, r4, #0
	mov r3, #0xa
	bl sub_0203A614
	pop {r4, pc}
	.align 2, 0
_021C6020: .word ovy194_21c6038
	thumb_func_end ovy194_21c600c

	thumb_func_start ovy194_21c6024
ovy194_21c6024: ; 0x021C6024
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02046D38
	add r0, r4, #0
	bl sub_0203A6A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c6024

	thumb_func_start ovy194_21c6038
ovy194_21c6038: ; 0x021C6038
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02046DC0
	add r0, r4, #0
	bl sub_0203A6A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy194_21c6038

	thumb_func_start ovy194_21c604c
ovy194_21c604c: ; 0x021C604C
	push {r4, r5, r6, r7}
	add r4, r1, #0
	add r6, r3, #0
	add r5, r0, #0
	add r3, r4, #0
	ldmia r3!, {r0, r1}
	add r7, r5, #0
	stmia r7!, {r0, r1}
	ldr r0, [r3]
	add r3, r5, #0
	str r0, [r7]
	ldmia r4!, {r0, r1}
	add r3, #0xc
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, r5, #0
	str r0, [r3]
	ldmia r6!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	ldr r3, [sp, #0x10]
	str r0, [r2]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x40]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy194_21c604c

	thumb_func_start ovy194_21c60a0
ovy194_21c60a0: ; 0x021C60A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	ldr r5, [r4, #0x3c]
	sub r0, r1, #1
	cmp r5, r0
	blt _021C60B2
	b _021C636E
_021C60B2:
	cmp r1, #0
	ble _021C60C8
	lsl r0, r1, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C60D6
_021C60C8:
	lsl r0, r1, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C60D6:
	add r6, r0, #0
	cmp r5, #0
	ble _021C60EE
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C60FC
_021C60EE:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C60FC:
	blx sub_0208DA4C
	add r5, r0, #0
	add r0, r6, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r5, #0
	bl FX_Div
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	blx sub_0208D60C
	mov r6, #2
	mov r5, #0
	lsl r6, r6, #0xa
	add r2, r0, r6
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r7, r2, #0xc
	orr r7, r0
	ldr r0, [sp, #0x40]
	lsl r1, r6, #1
	sub r0, r1, r0
	str r0, [sp, #0x48]
	asr r0, r0, #0x1f
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	add r2, r0, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r0, r6
	adc r1, r5
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x50]
	orr r0, r1
	str r0, [sp, #0x50]
	asr r0, r0, #0x1f
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x50]
	lsl r1, r0, #1
	add r0, r0, r1
	ldr r3, [sp, #0x54]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	add r0, r0, r6
	adc r1, r5
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x58]
	orr r0, r1
	str r0, [sp, #0x58]
	asr r0, r0, #0x1f
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	blx sub_0208D60C
	add r0, r0, r6
	adc r1, r5
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x60]
	orr r0, r1
	str r0, [sp, #0x60]
	asr r0, r0, #0x1f
	str r0, [sp, #0x64]
	lsl r0, r7, #1
	add r0, r7, r0
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	add r0, r0, r6
	adc r1, r5
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x68]
	orr r0, r1
	str r0, [sp, #0x68]
	asr r0, r0, #0x1f
	str r0, [sp, #0x6c]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	asr r1, r7, #0x1f
	add r0, r7, #0
	blx sub_0208D60C
	add r0, r0, r6
	adc r1, r5
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x70]
	orr r0, r1
	str r0, [sp, #0x70]
	asr r0, r0, #0x1f
	str r0, [sp, #0x74]
	ldr r0, [r4, #0x30]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x78]
	ldr r0, [r4, #0x24]
	add r7, r1, #0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x7c]
	ldr r0, [r4, #0xc]
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x80]
	ldr r0, [r4, #0x18]
	str r1, [sp, #0x34]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x78]
	str r1, [sp, #0x2c]
	add r1, r0, r6
	adc r7, r5
	lsl r0, r7, #0x14
	lsr r2, r1, #0xc
	orr r2, r0
	ldr r0, [sp, #0x7c]
	ldr r3, [sp, #0x34]
	add r1, r0, r6
	ldr r0, [sp, #0x3c]
	adc r0, r5
	str r0, [sp, #0x3c]
	lsl r0, r0, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [sp, #0x80]
	add r0, r0, r6
	adc r3, r5
	str r3, [sp, #0x34]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	ldr r3, [sp, #0x84]
	add r7, r3, r6
	ldr r3, [sp, #0x2c]
	adc r3, r5
	str r3, [sp, #0x2c]
	lsl r3, r3, #0x14
	lsr r7, r7, #0xc
	orr r7, r3
	add r0, r0, r7
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4]
	ldr r0, [r4, #0x34]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x88]
	ldr r0, [r4, #0x28]
	add r7, r1, #0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x8c]
	ldr r0, [r4, #0x10]
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x90]
	ldr r0, [r4, #0x1c]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x94]
	ldr r0, [sp, #0x88]
	str r1, [sp, #0x14]
	add r1, r0, r6
	adc r7, r5
	lsl r0, r7, #0x14
	lsr r2, r1, #0xc
	orr r2, r0
	ldr r0, [sp, #0x8c]
	ldr r3, [sp, #0x1c]
	add r1, r0, r6
	ldr r0, [sp, #0x24]
	adc r0, r5
	str r0, [sp, #0x24]
	lsl r0, r0, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [sp, #0x90]
	add r0, r0, r6
	adc r3, r5
	str r3, [sp, #0x1c]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	ldr r3, [sp, #0x94]
	add r7, r3, r6
	ldr r3, [sp, #0x14]
	adc r3, r5
	str r3, [sp, #0x14]
	lsl r3, r3, #0x14
	lsr r7, r7, #0xc
	orr r7, r3
	add r0, r0, r7
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0x38]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x98]
	ldr r0, [r4, #0x2c]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x9c]
	ldr r0, [r4, #0x14]
	str r1, [sp, #4]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0x20]
	str r1, [sp, #0xa8]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov ip, r0
	ldr r0, [sp, #0x98]
	add r7, r1, #0
	add r1, r0, r6
	ldr r0, [sp, #0xc]
	adc r0, r5
	str r0, [sp, #0xc]
	lsl r0, r0, #0x14
	lsr r2, r1, #0xc
	orr r2, r0
	ldr r0, [sp, #0x9c]
	add r1, r0, r6
	ldr r0, [sp, #4]
	adc r0, r5
	str r0, [sp, #4]
	lsl r0, r0, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [sp, #0xa0]
	add r3, r0, r6
	ldr r0, [sp, #0xa8]
	adc r0, r5
	str r0, [sp, #0xa8]
	lsl r0, r0, #0x14
	lsr r3, r3, #0xc
	orr r3, r0
	mov r0, ip
	add r6, r0, r6
	adc r7, r5
	lsl r0, r7, #0x14
	lsr r5, r6, #0xc
	orr r5, r0
	add r0, r3, r5
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	add sp, #0xac
	add r0, r0, #1
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021C636E:
	add r2, r4, #0
	add r2, #0x30
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	mov r0, #1
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy194_21c60a0
_021C6380:
	.byte 0xA0, 0x00, 0x10, 0x00, 0x60, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0xC5, 0xB8, 0x1B, 0x02, 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0xCD, 0xB9, 0x1B, 0x02
	.byte 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0x0D, 0xBA, 0x1B, 0x02, 0xCD, 0xBA, 0x1B, 0x02
	.byte 0xB9, 0xBC, 0x1B, 0x02, 0x19, 0xB8, 0x1B, 0x02, 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02
	.byte 0x4D, 0xBA, 0x1B, 0x02, 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0x41, 0xB8, 0x1B, 0x02
	.byte 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x04, 0x1C, 0x58, 0x70, 0x04, 0x1C, 0x98, 0xB0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x8D, 0xBA, 0x1B, 0x02, 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0x69, 0xB8, 0x1B, 0x02
	.byte 0xCD, 0xBA, 0x1B, 0x02, 0xB9, 0xBC, 0x1B, 0x02, 0x3D, 0x80, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x45, 0x7D, 0x1B, 0x02, 0xF1, 0x7B, 0x1B, 0x02, 0x71, 0x81, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x41, 0x81, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x35, 0x81, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x81, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xBD, 0x80, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x0D, 0x7E, 0x1B, 0x02, 0x0D, 0x7C, 0x1B, 0x02, 0x21, 0x7E, 0x1B, 0x02, 0x0D, 0x7C, 0x1B, 0x02
	.byte 0x35, 0x7E, 0x1B, 0x02, 0x0D, 0x7C, 0x1B, 0x02, 0x5D, 0x80, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x89, 0x80, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE5, 0x80, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x0D, 0x81, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x7F, 0x1B, 0x02, 0x29, 0x7C, 0x1B, 0x02
	.byte 0x4D, 0x7C, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x39, 0x7F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x7D, 0x7F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA9, 0x7F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x85, 0x7E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x9D, 0x7E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xB5, 0x7E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCD, 0x7E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xF1, 0x7E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00
	.byte 0x6A, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00
	.byte 0x34, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x5E, 0x05, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6C, 0x07, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x5E, 0x05, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6C, 0x07, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x5E, 0x05, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x6C, 0x07, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x5E, 0x05, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x6C, 0x07, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x67, 0x05, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x84, 0x07, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0xA7, 0x05, 0x00, 0x00, 0x6E, 0x00, 0x00, 0x00, 0x8C, 0x07, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00
	.byte 0x85, 0x07, 0x00, 0x00, 0xF1, 0x00, 0x00, 0x00, 0x86, 0x07, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00
	.byte 0xAF, 0x05, 0x00, 0x00, 0x6C, 0x01, 0x00, 0x00, 0xCE, 0x05, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00
	.byte 0x93, 0x05, 0x00, 0x00, 0xE4, 0x01, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0xEE, 0x01, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x10, 0x02, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x1A, 0x02, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x23, 0x02, 0x00, 0x00
	.byte 0x87, 0x07, 0x00, 0x00, 0x39, 0x02, 0x00, 0x00, 0x88, 0x07, 0x00, 0x00, 0x67, 0x02, 0x00, 0x00
	.byte 0x84, 0x07, 0x00, 0x00, 0x5D, 0x02, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x67, 0x05, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x84, 0x07, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x85, 0x07, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0xA7, 0x05, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x89, 0x07, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0x8A, 0x07, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x00
	.byte 0x8B, 0x07, 0x00, 0x00, 0x7C, 0x02, 0x00, 0x00, 0x8C, 0x07, 0x00, 0x00, 0x8A, 0x02, 0x00, 0x00
	.byte 0x8D, 0x07, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00, 0x8E, 0x07, 0x00, 0x00, 0x59, 0x03, 0x00, 0x00
	.byte 0x84, 0x07, 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00, 0x8C, 0x07, 0x00, 0x00, 0x80, 0x03, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x18, 0x04, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x2C, 0x04, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x3A, 0x04, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x44, 0x04, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0x4F, 0x04, 0x00, 0x00, 0x87, 0x07, 0x00, 0x00, 0x63, 0x04, 0x00, 0x00
	.byte 0x67, 0x05, 0x00, 0x00, 0x8E, 0x04, 0x00, 0x00, 0x84, 0x07, 0x00, 0x00, 0x87, 0x04, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0xA0, 0xC0, 0x40, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00
	.byte 0xA5, 0x00, 0x00, 0x00, 0xA6, 0x00, 0x00, 0x00, 0xA4, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0xA0, 0x68, 0x1C, 0x02, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0x67, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x68, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x01, 0x00, 0xFF, 0x0F, 0x01, 0xF0
	.byte 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x03, 0x00
	.byte 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x7D, 0x19, 0x1C, 0x02, 0x39, 0x1A, 0x1C, 0x02
	.byte 0xD5, 0x19, 0x1C, 0x02, 0x41, 0x1A, 0x1C, 0x02, 0xD5, 0x19, 0x1C, 0x02, 0x41, 0x1A, 0x1C, 0x02
	.byte 0xD5, 0x19, 0x1C, 0x02, 0x41, 0x1A, 0x1C, 0x02, 0xD5, 0x19, 0x1C, 0x02, 0x41, 0x1A, 0x1C, 0x02
	.byte 0xD5, 0x19, 0x1C, 0x02, 0x41, 0x1A, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x90, 0xFC, 0xFF, 0x00, 0x70, 0x03, 0x00, 0x00, 0x90, 0xFC, 0xFF, 0x00, 0x70, 0x03, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x15, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xEC, 0x67, 0x1C, 0x02, 0x03, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x10, 0x68, 0x1C, 0x02, 0x03, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x34, 0x68, 0x1C, 0x02, 0x03, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x58, 0x68, 0x1C, 0x02, 0x03, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0x68, 0x1C, 0x02, 0x03, 0x00, 0x00, 0x00, 0xBC, 0x67, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xA2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xB8, 0x1E, 0x05, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA9, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x1E, 0xD5, 0x40
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x85, 0x8B, 0x40, 0xCD, 0xCC, 0xCC, 0x3D
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x33, 0x53, 0x40, 0xCD, 0xCC, 0xCC, 0xBD, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x1C, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0xCC, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x30, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x48, 0x18, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0C, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x80, 0x00
	.byte 0x80, 0x00, 0x80, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x20, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x5E, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x8E, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x06
	.byte 0x01, 0x03, 0x05, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x30, 0x00, 0x40, 0x00, 0x60, 0x00, 0x40, 0x00, 0x90, 0x00, 0xC0, 0x00, 0x30, 0x00
	.byte 0xC0, 0x00, 0x60, 0x00, 0xC0, 0x00, 0x90, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x20, 0x00, 0x68, 0x00, 0x40, 0x00
	.byte 0x68, 0x00, 0x70, 0x00, 0x68, 0x00, 0xA0, 0x00, 0xE0, 0x00, 0x20, 0x00, 0xE8, 0x00, 0x40, 0x00
	.byte 0xE8, 0x00, 0x70, 0x00, 0xE8, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x04, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0D, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x70, 0x01, 0x00, 0x00, 0x10, 0x02, 0x00, 0x00
	.byte 0xB0, 0x02, 0x00, 0x00, 0x50, 0x03, 0x00, 0x00, 0xF0, 0x03, 0x00, 0x00, 0x90, 0x04, 0x00, 0x00
	.byte 0x30, 0x05, 0x00, 0x00, 0xD0, 0x05, 0x00, 0x00, 0x70, 0x06, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00
	.byte 0xB0, 0x07, 0x00, 0x00, 0x50, 0x08, 0x00, 0x00, 0xF0, 0x08, 0x00, 0x00, 0x90, 0x09, 0x00, 0x00
	.byte 0x30, 0x0A, 0x00, 0x00, 0xD0, 0x0A, 0x00, 0x00, 0x70, 0x0B, 0x00, 0x00, 0x10, 0x0C, 0x00, 0x00
	.byte 0xB0, 0x0C, 0x00, 0x00, 0x50, 0x0D, 0x00, 0x00, 0xF0, 0x0D, 0x00, 0x00, 0x90, 0x0E, 0x00, 0x00
	.byte 0x10, 0x0F, 0x00, 0x00, 0x44, 0x5C, 0x08, 0x20, 0x44, 0x5C, 0x20, 0x38, 0x44, 0x5C, 0x38, 0x50
	.byte 0x44, 0x5C, 0x50, 0x68, 0x44, 0x5C, 0x68, 0x80, 0x44, 0x5C, 0x80, 0x98, 0x44, 0x5C, 0x98, 0xB0
	.byte 0x44, 0x5C, 0xB0, 0xC8, 0x44, 0x5C, 0xC8, 0xE0, 0x44, 0x5C, 0xE0, 0xF8, 0x5C, 0x74, 0x08, 0x20
	.byte 0x5C, 0x74, 0x20, 0x38, 0x5C, 0x74, 0x38, 0x50, 0x5C, 0x74, 0x50, 0x68, 0x5C, 0x74, 0x68, 0x80
	.byte 0x5C, 0x74, 0x80, 0x98, 0x5C, 0x74, 0x98, 0xB0, 0x5C, 0x74, 0xB0, 0xC8, 0x5C, 0x74, 0xC8, 0xE0
	.byte 0x5C, 0x74, 0xE0, 0xF8, 0x74, 0x8C, 0x08, 0x20, 0x74, 0x8C, 0x20, 0x38, 0x74, 0x8C, 0x38, 0x50
	.byte 0x74, 0x8C, 0x50, 0x68, 0x74, 0x8C, 0x68, 0x80, 0x74, 0x8C, 0x80, 0x98, 0xFF, 0x00, 0x00, 0x00
	.byte 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x70, 0x72, 0x6F
	.byte 0x63, 0x2E, 0x63, 0x00, 0x18, 0x44, 0x08, 0x78, 0x48, 0x74, 0x08, 0x78, 0x78, 0xA4, 0x08, 0x78
	.byte 0x18, 0x44, 0x88, 0xF8, 0x48, 0x74, 0x88, 0xF8, 0x78, 0xA4, 0x88, 0xF8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x6E, 0x65, 0x67
	.byte 0x6F, 0x2E, 0x63, 0x00, 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65
	.byte 0x5F, 0x6D, 0x63, 0x73, 0x73, 0x2E, 0x63, 0x00, 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74
	.byte 0x72, 0x61, 0x64, 0x65, 0x5F, 0x73, 0x61, 0x76, 0x65, 0x2E, 0x63, 0x00, 0x70, 0x6F, 0x6B, 0x65
	.byte 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x73, 0x61, 0x76, 0x65, 0x2E, 0x63, 0x00
	.byte 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x73, 0x61, 0x76
	.byte 0x65, 0x2E, 0x63, 0x00, 0x00, 0x80, 0x9A, 0x29, 0x00, 0x10, 0x00, 0x00, 0xCD, 0x13, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0xF0, 0x1F, 0x00, 0xFC, 0x07, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x08, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0xF0, 0x00, 0x10, 0x00, 0xF0
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0x10, 0x00, 0x10, 0x00, 0xF0
	.byte 0x00, 0x10, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0x10, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0xF0
	.byte 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x33, 0x64, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x08, 0x15, 0x02, 0x02, 0x02, 0x12, 0x16, 0x01, 0x02, 0x0C
	.byte 0x01, 0x16, 0x0A, 0x01, 0x0F, 0x0F, 0x0F, 0x11, 0x11, 0x12, 0x05, 0x04, 0x00, 0x0F, 0x11, 0x12
	.byte 0x12, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x02, 0x02, 0x15, 0x0D, 0x09, 0x16, 0x19, 0x06, 0x0E
	.byte 0x06, 0x15, 0x0F, 0x0F, 0x15, 0x15, 0x03, 0x03, 0x0C, 0x0F, 0x0F, 0x06, 0x0C, 0x0F, 0x06, 0x00
	.byte 0x0F, 0x0F, 0x0F, 0x00, 0x0A, 0x00, 0x0C, 0x0C, 0x0C, 0x01, 0x16, 0x15, 0x13, 0x13, 0x06, 0x06
	.byte 0x06, 0x0F, 0x11, 0x12, 0x12, 0x0C, 0x0C, 0x05, 0x03, 0x03, 0x12, 0x03, 0x06, 0x0C, 0x12, 0x02
	.byte 0x06, 0x07, 0x06, 0x0E, 0x03, 0x07, 0x0A, 0x0A, 0x15, 0x04, 0x04, 0x04, 0x02, 0x0C, 0x07, 0x07
	.byte 0x0B, 0x0A, 0x16, 0x11, 0x11, 0x02, 0x13, 0x0A, 0x07, 0x12, 0x06, 0x12, 0x12, 0x12, 0x0C, 0x12
	.byte 0x09, 0x04, 0x0C, 0x0F, 0x13, 0x0C, 0x06, 0x0B, 0x03, 0x04, 0x15, 0x09, 0x05, 0x0F, 0x0E, 0x0E
	.byte 0x0A, 0x0A, 0x00, 0x12, 0x00, 0x19, 0x0C, 0x03, 0x03, 0x03, 0x0C, 0x0C, 0x02, 0x01, 0x0C, 0x02
	.byte 0x10, 0x13, 0x13, 0x02, 0x05, 0x12, 0x05, 0x07, 0x0D, 0x0B, 0x0B, 0x12, 0x00, 0x02, 0x02, 0x0B
	.byte 0x0F, 0x02, 0x08, 0x13, 0x13, 0x0D, 0x17, 0x0C, 0x05, 0x00, 0x01, 0x0C, 0x00, 0x12, 0x0F, 0x07
	.byte 0x12, 0x09, 0x00, 0x12, 0x12, 0x18, 0x16, 0x10, 0x04, 0x14, 0x0C, 0x12, 0x0C, 0x14, 0x16, 0x06
	.byte 0x0F, 0x05, 0x03, 0x06, 0x12, 0x12, 0x06, 0x10, 0x12, 0x12, 0x07, 0x12, 0x13, 0x14, 0x12, 0x0C
	.byte 0x12, 0x0F, 0x02, 0x11, 0x0E, 0x03, 0x0C, 0x12, 0x07, 0x07, 0x0A, 0x0F, 0x03, 0x0F, 0x12, 0x12
	.byte 0x13, 0x07, 0x12, 0x04, 0x0C, 0x0C, 0x01, 0x11, 0x04, 0x12, 0x0B, 0x0F, 0x13, 0x0B, 0x07, 0x02
	.byte 0x13, 0x06, 0x12, 0x13, 0x02, 0x01, 0x0C, 0x0C, 0x12, 0x0F, 0x0C, 0x19, 0x0B, 0x16, 0x12, 0x01
	.byte 0x02, 0x03, 0x0B, 0x0B, 0x0B, 0x12, 0x0D, 0x12, 0x13, 0x12, 0x16, 0x0F, 0x11, 0x0A, 0x06, 0x12
	.byte 0x0C, 0x12, 0x01, 0x12, 0x15, 0x12, 0x0D, 0x0D, 0x12, 0x16, 0x0B, 0x04, 0x0C, 0x07, 0x00, 0x0D
	.byte 0x12, 0x03, 0x12, 0x0C, 0x00, 0x0B, 0x00, 0x0C, 0x0C, 0x04, 0x0C, 0x0F, 0x0C, 0x15, 0x08, 0x11
	.byte 0x06, 0x12, 0x02, 0x12, 0x16, 0x16, 0x0D, 0x02, 0x13, 0x12, 0x06, 0x12, 0x13, 0x15, 0x05, 0x02
	.byte 0x02, 0x12, 0x00, 0x19, 0x12, 0x0B, 0x12, 0x01, 0x16, 0x02, 0x02, 0x01, 0x02, 0x0B, 0x02, 0x00
	.byte 0x00, 0x05, 0x0C, 0x02, 0x0A, 0x12, 0x01, 0x03, 0x03, 0x13, 0x02, 0x00, 0x16, 0x12, 0x06, 0x12
	.byte 0x12, 0x16, 0x02, 0x07, 0x06, 0x11, 0x0B, 0x01, 0x12, 0x12, 0x01, 0x0C, 0x0C, 0x11, 0x11, 0x11
	.byte 0x0B, 0x0B, 0x0A, 0x06, 0x11, 0x09, 0x03, 0x13, 0x06, 0x13, 0x02, 0x0C, 0x08, 0x0F, 0x0F, 0x04
	.byte 0x12, 0x12, 0x12, 0x01, 0x01, 0x0A, 0x0A, 0x12, 0x0B, 0x0B, 0x01, 0x11, 0x02, 0x11, 0x12, 0x01
	.byte 0x01, 0x16, 0x0C, 0x02, 0x15, 0x0F, 0x01, 0x05, 0x02, 0x02, 0x12, 0x06, 0x00, 0x03, 0x03, 0x01
	.byte 0x0B, 0x0C, 0x07, 0x06, 0x0F, 0x02, 0x12, 0x12, 0x01, 0x01, 0x01, 0x0C, 0x07, 0x02, 0x12, 0x06
	.byte 0x06, 0x06, 0x0C, 0x11, 0x0B, 0x07, 0x07, 0x12, 0x03, 0x02, 0x13, 0x02, 0x05, 0x0B, 0x0C, 0x12
	.byte 0x00, 0x16, 0x0C, 0x0B, 0x11, 0x13, 0x04, 0x0C, 0x13, 0x18, 0x0B, 0x06, 0x06, 0x0C, 0x0F, 0x06
	.byte 0x0F, 0x03, 0x05, 0x11, 0x14, 0x0C, 0x00, 0x03, 0x0F, 0x07, 0x11, 0x06, 0x02, 0x0F, 0x0C, 0x03
	.byte 0x12, 0x00, 0x15, 0x12, 0x12, 0x12, 0x13, 0x0F, 0x04, 0x0E, 0x03, 0x12, 0x0F, 0x16, 0x0B, 0x07
	.byte 0x12, 0x0F, 0x0B, 0x0F, 0x12, 0x0F, 0x12, 0x0F, 0x12, 0x0C, 0x0C, 0x0F, 0x13, 0x14, 0x01, 0x19
	.byte 0x11, 0x01, 0x06, 0x16, 0x12, 0x03, 0x04, 0x00, 0x13, 0x06, 0x02, 0x13, 0x0F, 0x12, 0x13, 0x12
	.byte 0x12, 0x12, 0x0B, 0x15, 0x16, 0x12, 0x02, 0x16, 0x0F, 0x0B, 0x01, 0x12, 0x0A, 0x0A, 0x03, 0x03
	.byte 0x0C, 0x03, 0x02, 0x12, 0x12, 0x12, 0x18, 0x02, 0x13, 0x02, 0x00, 0x00, 0x13, 0x06, 0x19, 0x19
	.byte 0x0C, 0x02, 0x06, 0x06, 0x06, 0x12, 0x03, 0x11, 0x03, 0x12, 0x15, 0x15, 0x15, 0x03, 0x12, 0x04
	.byte 0x0A, 0x04, 0x05, 0x00, 0x05, 0x09, 0x00, 0x09, 0x06, 0x05, 0x05, 0x0A, 0x0A, 0x0A, 0x13, 0x04
	.byte 0x04, 0x04, 0x01, 0x0B, 0x0B, 0x02, 0x00, 0x05, 0x07, 0x02, 0x01, 0x02, 0x12, 0x00, 0x12, 0x0C
	.byte 0x0C, 0x03, 0x06, 0x06, 0x0F, 0x01, 0x01, 0x11, 0x01, 0x15, 0x0C, 0x07, 0x03, 0x03, 0x19, 0x07
	.byte 0x0B, 0x15, 0x02, 0x13, 0x15, 0x13, 0x13, 0x11, 0x19, 0x0B, 0x0A, 0x0A, 0x0C, 0x06, 0x04, 0x01
	.byte 0x70, 0x6F, 0x6B, 0x65, 0x6D, 0x6F, 0x6E, 0x74, 0x72, 0x61, 0x64, 0x65, 0x5F, 0x32, 0x64, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021C6380
