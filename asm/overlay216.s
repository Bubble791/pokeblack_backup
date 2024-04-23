    .include "macros/function.inc"
	.include "overlay216.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy216_21bb700
ovy216_21bb700: ; 0x021BB700
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r1, #0x24
	mov r2, #4
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	mov r0, #1
	str r5, [r4, #8]
	bl sub_0203A970
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bb700

	thumb_func_start ovy216_21bb728
ovy216_21bb728: ; 0x021BB728
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x20]
	bl sub_0203A978
	cmp r0, #0
	beq _021BB73E
	cmp r0, #1
	beq _021BB752
	cmp r0, #2
	b _021BB752
_021BB73E:
	ldr r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021BB758 ; =0x021C08F4
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _021BB752
	mov r0, #1
	pop {r4, pc}
_021BB752:
	mov r0, #0
	pop {r4, pc}
	nop
_021BB758: .word 0x021C08F4
	thumb_func_end ovy216_21bb728

	thumb_func_start ovy216_21bb75c
ovy216_21bb75c: ; 0x021BB75C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r3, #0x20]
	bl sub_0203A980
	add r0, r4, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy216_21bb75c

	thumb_func_start ovy216_21bb770
ovy216_21bb770: ; 0x021BB770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xab
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r3, _021BB7A8 ; =0x021C1100
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r5, #0
	str r6, [r4, #0x14]
	bl ovy216_21bb98c
	str r0, [r4, #0x18]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BB7A8: .word 0x021C1100
	thumb_func_end ovy216_21bb770

	thumb_func_start ovy216_21bb7ac
ovy216_21bb7ac: ; 0x021BB7AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_021BBA18
	ldr r0, [r4, #0x18]
	bl ovy216_21bb9e8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy216_21bb7ac

	thumb_func_start sub_021BB7C4
sub_021BB7C4: ; 0x021BB7C4
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021BB7C4

	thumb_func_start ovy216_21bb7c8
ovy216_21bb7c8: ; 0x021BB7C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl ovy216_21bb770
	add r3, r0, #0
	mov r1, #1
	str r1, [r4]
	ldr r0, [r4, #0x20]
	ldr r2, _021BB7EC ; =0x021C08DC
	sub r1, r1, #2
	str r3, [r4, #0xc]
	bl sub_0203A988
	mov r0, #0
	pop {r4, pc}
	nop
_021BB7EC: .word 0x021C08DC
	thumb_func_end ovy216_21bb7c8

	thumb_func_start ovy216_21bb7f0
ovy216_21bb7f0: ; 0x021BB7F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0201735C
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	mov r3, #4
	bl sub_02034C54
	add r5, r0, #0
	str r4, [r5, #0x4c]
	ldr r0, [r5]
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021BB82E
_021BB81A:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0201FF08
	ldr r0, [r5]
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _021BB81A
_021BB82E:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bb7f0

	thumb_func_start ovy216_21bb834
ovy216_21bb834: ; 0x021BB834
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_021BB7C4
	cmp r0, #0
	bne _021BB846
	mov r0, #5
	b _021BB86C
_021BB846:
	mov r0, #1
	mov r4, #1
	bl sub_02042E94
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0
	bl ovy216_21bb7f0
	add r3, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, _021BB874 ; =0x000000A5
	ldr r2, _021BB878 ; =0x021A4CE0
	str r3, [r5, #0x18]
	bl sub_0203A988
	ldr r0, [r5, #0xc]
	str r4, [r0]
	mov r0, #2
_021BB86C:
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BB874: .word 0x000000A5
_021BB878: .word 0x021A4CE0
	thumb_func_end ovy216_21bb834

	thumb_func_start ovy216_21bb87c
ovy216_21bb87c: ; 0x021BB87C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r6, [r0, #0x50]
	ldr r4, [r0, #0x4c]
	bl GFL_HeapFree
	cmp r6, #1
	bne _021BB908
	ldr r0, [r5, #0x10]
	bl sub_0201736C
	ldr r0, [r5, #0x10]
	bl sub_0200D190
	add r7, r0, #0
	ldr r0, _021BB928 ; =0x00000147
	ldr r3, _021BB92C ; =0x021C1100
	str r0, [sp]
	mov r0, #4
	mov r1, #0x28
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x28
	str r0, [r5, #0x1c]
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	bl sub_0201735C
	ldr r1, [r5, #0x1c]
	str r0, [r1]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #0x1c]
	str r2, [r1, #8]
	ldr r2, [r5, #0x1c]
	mov r1, #1
	strb r1, [r2, #0xc]
	bl sub_0201FDF8
	ldr r1, [r5, #0x1c]
	strb r0, [r1, #0xe]
	ldr r0, [r5, #0x1c]
	strb r6, [r0, #0xf]
	ldr r1, [r5, #0x1c]
	mov r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r5, #0x1c]
	strh r6, [r0, #0x14]
	ldr r0, [r5, #0x1c]
	strb r6, [r0, #0x10]
	add r0, r7, #0
	bl sub_0200D1AC
	ldr r1, [r5, #0x1c]
	ldr r2, _021BB930 ; =0x021BB6A0
	str r0, [r1, #0x18]
	ldr r0, [r5, #0x1c]
	str r4, [r5, #4]
	strb r4, [r0, #0xf]
	ldr r0, [r5, #0x20]
	ldr r1, _021BB934 ; =0x000000CF
	ldr r3, [r5, #0x1c]
	bl sub_0203A988
	mov r0, #3
	b _021BB922
_021BB908:
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r4, [r0, #4]
	ldr r0, [r5, #0x20]
	ldr r2, _021BB938 ; =0x021C08E8
	ldr r3, [r5, #0xc]
	mvn r1, r1
	bl sub_0203A988
	ldr r0, [r5, #0xc]
	mov r1, #3
	str r1, [r0]
	mov r0, #4
_021BB922:
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB928: .word 0x00000147
_021BB92C: .word 0x021C1100
_021BB930: .word 0x021BB6A0
_021BB934: .word 0x000000CF
_021BB938: .word 0x021C08E8
	thumb_func_end ovy216_21bb87c

	thumb_func_start ovy216_21bb93c
ovy216_21bb93c: ; 0x021BB93C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldrb r5, [r0, #0xf]
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0x15
	add r2, r5, #0
	bl ovy216_21bb7f0
	add r3, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, _021BB968 ; =0x000000A5
	ldr r2, _021BB96C ; =0x021A4CE0
	str r3, [r4, #0x18]
	bl sub_0203A988
	mov r0, #2
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BB968: .word 0x000000A5
_021BB96C: .word 0x021A4CE0
	thumb_func_end ovy216_21bb93c
_021BB970:
	.byte 0x05, 0x21, 0x01, 0x60, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy216_21bb978
ovy216_21bb978: ; 0x021BB978
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl ovy216_21bb7ac
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy216_21bb978

	thumb_func_start sub_021BB984
sub_021BB984: ; 0x021BB984
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021BB984

	thumb_func_start ovy216_21bb98c
ovy216_21bb98c: ; 0x021BB98C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x98
	ldr r7, _021BB9E0 ; =0x021C1108
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x58
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x58
	blx MI_CpuFill8
	str r6, [r4]
	mov r0, #0x9f
	ldr r6, _021BB9E4 ; =0x00001BE4
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x4c]
	mov r0, #0xa1
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB9E0: .word 0x021C1108
_021BB9E4: .word 0x00001BE4
	thumb_func_end ovy216_21bb98c

	thumb_func_start ovy216_21bb9e8
ovy216_21bb9e8: ; 0x021BB9E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x50]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy216_21bb9e8

	thumb_func_start ovy216_21bba00
ovy216_21bba00: ; 0x021BBA00
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0xa
	ldr r1, _021BBA14 ; =0x021C090C
	lsl r0, r0, #0xa
	mov r2, #0x10
	bl sub_02040C20
	pop {r3, pc}
	nop
_021BBA14: .word 0x021C090C
	thumb_func_end ovy216_21bba00

	thumb_func_start sub_021BBA18
sub_021BBA18: ; 0x021BBA18
	bx lr
	.align 2, 0
	thumb_func_end sub_021BBA18

	thumb_func_start ovy216_21bba1c
ovy216_21bba1c: ; 0x021BBA1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02040440
	add r4, r4, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #4
	add r2, r5, #0
	blx MI_CpuCopy8
	add r2, r5, #4
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r4, #4
	bl sub_02042BE8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bba1c

	thumb_func_start ovy216_21bba4c
ovy216_21bba4c: ; 0x021BBA4C
	push {r3, lr}
	bl ovy216_21bba1c
	pop {r3, pc}
	thumb_func_end ovy216_21bba4c

	thumb_func_start ovy216_21bba54
ovy216_21bba54: ; 0x021BBA54
	push {r4, lr}
	add r1, r0, #0
	add r4, r2, #0
	mov r2, #1
	mov r0, #0x46
	lsl r2, r1
	lsl r2, r2, #0x10
	ldrsh r0, [r3, r0]
	asr r2, r2, #0x10
	orr r2, r0
	add r0, r3, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r3, #0
	bl sub_021BBC88
	add r1, r0, #0
	ldr r2, _021BBA80 ; =0x00000594
	add r0, r4, #0
	blx MI_CpuCopy8
	pop {r4, pc}
	.align 2, 0
_021BBA80: .word 0x00000594
	thumb_func_end ovy216_21bba54

	thumb_func_start ovy216_21bba84
ovy216_21bba84: ; 0x021BBA84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203FFC4
	cmp r0, #0
	beq _021BBAA8
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x20]
	mov r1, #0x1b
	lsr r2, r2, #0x18
	bl ovy216_21bcf30
_021BBAA8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bba84

	thumb_func_start ovy216_21bbaac
ovy216_21bbaac: ; 0x021BBAAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _021BBB2A
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BBB72
	ldrb r0, [r5]
	add r7, sp, #0
	strb r0, [r7]
	ldrb r0, [r5, #1]
	strb r0, [r7, #1]
	ldrb r0, [r5, #2]
	strb r0, [r7, #2]
	ldrb r0, [r5, #3]
	strb r0, [r7, #3]
	strb r6, [r7]
	ldr r0, [r4, #0x2c]
	strb r0, [r7, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _021BBAE2
	cmp r0, #1
	b _021BBB1C
_021BBAE2:
	add r0, r4, #0
	bl sub_021BB984
	bl sub_0217CF84
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021BBB06
	add r0, r4, #0
	bl sub_021BB984
	bl sub_0217CF80
	bl MATH_CountPopulation
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	beq _021BBB0E
_021BBB06:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _021BBB1C
_021BBB0E:
	mov r1, #1
	ldr r2, [r4, #0x30]
	lsl r1, r6
	orr r1, r2
	mov r0, #1
	str r1, [r4, #0x30]
	strb r0, [r7, #3]
_021BBB1C:
	ldr r1, _021BBB74 ; =0x00002801
	add r0, r4, #0
	add r2, sp, #0
	mov r3, #4
	bl ovy216_21bba4c
	pop {r3, r4, r5, r6, r7, pc}
_021BBB2A:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _021BBB36
	cmp r0, #1
	beq _021BBB66
	pop {r3, r4, r5, r6, r7, pc}
_021BBB36:
	ldrb r6, [r5]
	bl sub_0203FFC4
	cmp r6, r0
	bne _021BBB72
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _021BBB54
	ldr r0, [r4]
	mov r1, #8
	ldr r0, [r0, #0x20]
	add r2, r6, #0
	bl ovy216_21bcf30
	pop {r3, r4, r5, r6, r7, pc}
_021BBB54:
	ldrb r0, [r5, #1]
	mov r1, #7
	add r2, r6, #0
	strh r0, [r4, #0x38]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl ovy216_21bcf30
	pop {r3, r4, r5, r6, r7, pc}
_021BBB66:
	ldr r0, [r4]
	ldrb r2, [r5]
	ldr r0, [r0, #0x20]
	mov r1, #0x13
	bl ovy216_21bcf30
_021BBB72:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBB74: .word 0x00002801
	thumb_func_end ovy216_21bbaac

	thumb_func_start ovy216_21bbb78
ovy216_21bbb78: ; 0x021BBB78
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203FFC4
	cmp r0, #0
	beq _021BBB90
	ldr r0, [r4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl ovy216_21bcf30
_021BBB90:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bbb78
_021BBB94:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC5, 0xFF, 0x03, 0x02

	thumb_func_start ovy216_21bbb9c
ovy216_21bbb9c: ; 0x021BBB9C
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4]
	ldrb r2, [r2]
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl ovy216_21bd020
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BBBB8
	mov r0, #0
	str r0, [r4, #0x34]
_021BBBB8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bbb9c
_021BBBBC:
	.byte 0x18, 0x1C, 0x40, 0x30
	.byte 0x01, 0x88, 0x10, 0x88, 0x40, 0x33, 0x08, 0x43, 0x18, 0x80, 0x70, 0x47, 0x19, 0x1C, 0x42, 0x31
	.byte 0x0A, 0x88, 0x01, 0x21, 0x81, 0x40, 0x08, 0x04, 0x00, 0x0C, 0x10, 0x43, 0x42, 0x33, 0x18, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x18, 0x68, 0x02, 0x4B, 0xC0, 0x69, 0x11, 0x1C, 0x18, 0x47, 0xC0, 0x46
	.byte 0xD1, 0x05, 0x1C, 0x02, 0x18, 0x68, 0x11, 0x68, 0xC0, 0x69, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xFD, 0x05, 0x1C, 0x02, 0x18, 0x68, 0x11, 0x78, 0xC0, 0x69, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x31, 0x05, 0x1C, 0x02

	thumb_func_start ovy216_21bbc14
ovy216_21bbc14: ; 0x021BBC14
	push {r3, lr}
	cmp r0, #0
	bne _021BBC24
	ldr r0, [r3]
	add r1, r2, #0
	ldr r0, [r0, #0x1c]
	bl sub_021C0538
_021BBC24:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy216_21bbc14
_021BBC28:
	.byte 0x01, 0x1C, 0x18, 0x68, 0x12, 0x68, 0xC0, 0x69
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB1, 0x06, 0x1C, 0x02, 0x18, 0x68, 0x02, 0x4B, 0xC0, 0x69, 0x11, 0x1C
	.byte 0x18, 0x47, 0xC0, 0x46, 0xB9, 0x06, 0x1C, 0x02, 0x19, 0x1C, 0x48, 0x31, 0x0A, 0x88, 0x01, 0x21
	.byte 0x81, 0x40, 0x08, 0x04, 0x00, 0x0C, 0x10, 0x43, 0x48, 0x33, 0x18, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x19, 0x1C, 0x4A, 0x31, 0x0A, 0x88, 0x01, 0x21, 0x81, 0x40, 0x08, 0x04, 0x00, 0x0C, 0x10, 0x43
	.byte 0x4A, 0x33, 0x18, 0x80, 0x70, 0x47, 0x00, 0x00, 0xCA, 0x6C, 0x02, 0x49, 0x41, 0x43, 0x50, 0x18
	.byte 0x70, 0x47, 0xC0, 0x46, 0x94, 0x05, 0x00, 0x00

	thumb_func_start sub_021BBC88
sub_021BBC88: ; 0x021BBC88
	ldr r2, [r0, #0x50]
	ldr r0, _021BBC94 ; =0x00000594
	mul r0, r1
	add r0, r2, r0
	bx lr
	nop
_021BBC94: .word 0x00000594
	thumb_func_end sub_021BBC88

	thumb_func_start ovy216_21bbc98
ovy216_21bbc98: ; 0x021BBC98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	add r6, r2, #0
	cmp r0, #0
	beq _021BBCB0
	cmp r0, #1
	bne _021BBCAE
	b _021BBDB6
_021BBCAE:
	b _021BBDC0
_021BBCB0:
	bl sub_02046CF0
	bl sub_02046D78
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021BBDC8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021BBDCC ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r2, #1
	mov r0, #1
	mov r1, #0x72
	lsl r2, r2, #0x13
	bl GFL_HeapCreateChild
	mov r0, #0xb5
	mov r1, #0x72
	bl sub_0204AA30
	add r7, r0, #0
	ldr r1, _021BBDD0 ; =0x00004874
	add r0, r4, #0
	mov r2, #0x72
	bl GFL_ProcInitSubsystem
	ldr r2, _021BBDD0 ; =0x00004874
	add r4, r0, #0
	mov r1, #0
	blx MI_CpuFill8
	str r4, [r6, #0x20]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x10]
	mov r0, #0x72
	bl sub_020444A4
	mov r0, #0x72
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x3c]
	mov r0, #0
	mov r1, #2
	mov r2, #0x2f
	mov r3, #0x72
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x40]
	mov r0, #0x72
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x38]
	bl sub_021BC058
	bl ovy216_21bc068
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	add r0, r4, #0
	add r1, r7, #0
	bl ovy216_21bc260
	ldr r0, _021BBDD4 ; =ovy216_21bc02c
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x30]
	mov r0, #0x72
	mov r1, #0x72
	mov r2, #0x20
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	add r1, r4, #0
	add r1, #0xf4
	str r0, [r1]
	mov r0, #0x72
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy216_21bc168
	add r0, r4, #0
	add r1, r7, #0
	bl ovy216_21bc34c
	add r0, r4, #0
	bl ovy216_21bc450
	add r0, r4, #0
	bl ovy216_21bc4dc
	ldr r0, [r6, #0x18]
	bl ovy216_21bba00
	mov r0, #1
	mov r1, #0x72
	bl sub_02042BA8
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021BBDC0
_021BBDB6:
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021BBDC0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BBDC8: .word 0xFFFFE0FF
_021BBDCC: .word 0x04001000
_021BBDD0: .word 0x00004874
_021BBDD4: .word ovy216_21bc02c
	thumb_func_end ovy216_21bbc98

	thumb_func_start sub_021BBDD8
sub_021BBDD8: ; 0x021BBDD8
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x14]
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021BBDD8

	thumb_func_start ovy216_21bbde0
ovy216_21bbde0: ; 0x021BBDE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BBE00
	add r0, sp, #0
	strb r5, [r0]
	mov r1, #0xa
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xa
	add r2, sp, #0
	mov r3, #1
	bl ovy216_21bba4c
_021BBE00:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bbde0
_021BBE04:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy216_21bbe08
ovy216_21bbe08: ; 0x021BBE08
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BBE2E
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021BBE2E
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF80
	ldr r2, [r4, #0x10]
	ldr r1, [r2, #0x30]
	and r0, r1
	str r0, [r2, #0x30]
_021BBE2E:
	ldr r1, [r4]
	cmp r1, #4
	bhi _021BBF12
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBE40: ; jump table
	.short _021BBE4A - _021BBE40 - 2 ; case 0
	.short _021BBE72 - _021BBE40 - 2 ; case 1
	.short _021BBEC2 - _021BBE40 - 2 ; case 2
	.short _021BBED8 - _021BBE40 - 2 ; case 3
	.short _021BBF00 - _021BBE40 - 2 ; case 4
_021BBE4A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BBF12
	mov r0, #1
	str r0, [r4]
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF14
	add r0, r4, #0
	bl sub_021BBDD8
	ldr r1, _021BBF34 ; =ovy216_21bbde0
	ldr r2, _021BBF38 ; =0x021BBE05
	add r3, r4, #0
	bl sub_0217CEDC
	b _021BBF12
_021BBE72:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021BBF3C ; =0x021C0AC4
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021BBE88
	add r0, r4, #0
	blx r2
	str r0, [r4]
_021BBE88:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021BBEA2
	add r0, r4, #0
	add r0, #0xd0
	mov r2, #0x12
	ldr r0, [r0]
	mov r1, #0
	lsl r2, r2, #6
	add r3, r4, #0
	bl ovy216_21bd0ec
_021BBEA2:
	add r0, r4, #0
	bl ovy216_21bd474
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BBF12
	add r0, r4, #0
	mov r1, #1
	bl ovy216_21bd5dc
	ldr r1, [r4]
	cmp r1, #1
	bne _021BBF12
_021BBEBE:
	str r0, [r4]
	b _021BBF12
_021BBEC2:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021BBF3C ; =0x021C0AC4
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021BBF12
	add r0, r4, #0
	blx r2
	b _021BBEBE
_021BBED8:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BBF12
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021BBEEA
	mov r0, #1
	pop {r4, pc}
_021BBEEA:
	mov r0, #0xa
	lsl r0, r0, #0xa
	bl sub_02040C64
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF54
	mov r0, #4
	b _021BBEBE
_021BBF00:
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF5C
	cmp r0, #0
	beq _021BBF12
	mov r0, #1
	pop {r4, pc}
_021BBF12:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BBF26
	bl sub_020120C8
	cmp r0, #0
	beq _021BBF26
	mov r0, #1
	pop {r4, pc}
_021BBF26:
	bl sub_0204B794
	add r0, r4, #0
	bl ovy216_21bc03c
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021BBF34: .word ovy216_21bbde0
_021BBF38: .word 0x021BBE05
_021BBF3C: .word 0x021C0AC4
	thumb_func_end ovy216_21bbe08

	thumb_func_start ovy216_21bbf40
ovy216_21bbf40: ; 0x021BBF40
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r4, #0
	bl ovy216_21bc414
	add r0, r4, #0
	bl ovy216_21bc604
	bl ovy216_21bc238
	ldr r0, [r4, #0x40]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x3c]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x38]
	bl sub_02022DA8
	ldr r2, _021BBFD0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x30]
	bl GFL_TCBRemove
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x10]
	add r0, r4, #0
	bl ovy216_21bd1f8
	ldr r1, [r4, #0xc]
	str r0, [r1, #8]
	add r0, r4, #0
	bl ovy216_21bd220
	ldr r1, [r4, #0xc]
	str r0, [r1, #0xc]
	add r0, r4, #0
	bl ovy216_21bc208
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x72
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BBFD0: .word 0x04000304
	thumb_func_end ovy216_21bbf40

	thumb_func_start ovy216_21bbfd4
ovy216_21bbfd4: ; 0x021BBFD4
	push {r3, r4, r5, lr}
	ldr r2, [r1, #0x18]
	add r0, r1, #0
	add r0, #0x18
	cmp r2, #0
	beq _021BC022
	ldr r4, [r0, #4]
	ldr r2, _021BC024 ; =0x021C0992
	lsl r3, r4, #1
	ldrb r2, [r2, r3]
	ldr r5, [r0, #8]
	cmp r5, r2
	ble _021BC01C
	add r1, r4, #1
	str r1, [r0, #4]
	lsl r2, r1, #1
	ldr r1, _021BC028 ; =0x021C0993
	mov r3, #0
	ldrb r1, [r1, r2]
	str r3, [r0, #8]
	cmp r1, #0xff
	bne _021BC002
	str r3, [r0, #4]
_021BC002:
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #4]
	ldr r2, [r1, #0xc]
	lsl r1, r0, #1
	ldr r0, _021BC028 ; =0x021C0993
	ldrb r0, [r0, r1]
	mov r1, #0
	lsl r0, r0, #5
	add r0, r2, r0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	pop {r3, r4, r5, pc}
_021BC01C:
	ldr r0, [r1, #0x20]
	add r0, r0, #1
	str r0, [r1, #0x20]
_021BC022:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BC024: .word 0x021C0992
_021BC028: .word 0x021C0993
	thumb_func_end ovy216_21bbfd4

	thumb_func_start ovy216_21bc02c
ovy216_21bc02c: ; 0x021BC02C
	push {r3, lr}
	bl ovy216_21bbfd4
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r3, pc}
	thumb_func_end ovy216_21bc02c

	thumb_func_start ovy216_21bc03c
ovy216_21bc03c: ; 0x021BC03C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _021BC04C
	bl sub_02021A3C
_021BC04C:
	add r4, #0xf4
	ldr r0, [r4]
	bl sub_0203A7F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc03c

	thumb_func_start sub_021BC058
sub_021BC058: ; 0x021BC058
	ldr r0, _021BC060 ; =0x021C09E4
	ldr r3, _021BC064 ; =sub_02046C40
	bx r3
	nop
_021BC060: .word 0x021C09E4
_021BC064: .word sub_02046C40
	thumb_func_end sub_021BC058

	thumb_func_start ovy216_21bc068
ovy216_21bc068: ; 0x021BC068
	push {r4, lr}
	sub sp, #0xb0
	ldr r4, _021BC150 ; =0x021C0A14
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021BC154 ; =0x021C0A84
	add r3, sp, #0x80
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
	mov r0, #4
	bl sub_02045738
	ldr r4, _021BC158 ; =0x021C0A24
	add r3, sp, #0x60
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
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	ldr r4, _021BC15C ; =0x021C0A44
	add r3, sp, #0x40
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
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x72
	bl sub_020450CC
	ldr r4, _021BC160 ; =0x021C0A64
	add r3, sp, #0x20
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
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	ldr r4, _021BC164 ; =0x021C0AA4
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
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x72
	bl sub_020450CC
	add sp, #0xb0
	pop {r4, pc}
	nop
_021BC150: .word 0x021C0A14
_021BC154: .word 0x021C0A84
_021BC158: .word 0x021C0A24
_021BC15C: .word 0x021C0A44
_021BC160: .word 0x021C0A64
_021BC164: .word 0x021C0AA4
	thumb_func_end ovy216_21bc068

	thumb_func_start ovy216_21bc168
ovy216_21bc168: ; 0x021BC168
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r4, #0
	str r0, [sp, #4]
	add r0, #0x28
	str r1, [sp]
	add r7, r4, #0
	str r0, [sp, #4]
_021BC186:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #8
	mov r1, #0x72
	bl GFL_StrBufCreate
	str r0, [r6, #0x44]
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	str r7, [r1, r0]
	ldr r0, [sp, #8]
	add r4, r4, #1
	str r7, [r1, r0]
	ldr r0, [sp, #4]
	cmp r4, #5
	str r7, [r6, r0]
	blt _021BC186
	mov r0, #0xb4
	mov r1, #0x72
	bl GFL_StrBufCreate
	str r0, [r5, #0x5c]
	mov r0, #0x28
	mov r1, #0x72
	mov r4, #0x28
	bl GFL_StrBufCreate
	add r2, r0, #0
	str r2, [r5, #0x60]
	add r4, #0xf0
	str r7, [r5, r4]
	ldr r0, [r5, #0x40]
	mov r1, #0x11
	bl GFL_MsgDataLoadStrbuf
	ldr r1, [sp]
	add r0, r5, #0
	bl ovy216_21bd564
	add r2, r5, #0
	ldr r0, [sp]
	mov r1, #2
	add r2, #0x28
	mov r3, #0x72
	str r7, [r5, #0x18]
	str r7, [r5, #0x20]
	str r7, [r5, #0x1c]
	mov r4, #2
	bl sub_0204B37C
	str r0, [r5, #0x24]
	ldr r0, _021BC204 ; =0x00004804
	str r7, [r5, r0]
	add r0, r5, #0
	add r0, #0xe8
	str r7, [r0]
	ldr r0, [r5, #0x10]
	str r4, [r0, #0x2c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BC204: .word 0x00004804
	thumb_func_end ovy216_21bc168

	thumb_func_start ovy216_21bc208
ovy216_21bc208: ; 0x021BC208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021BD580
	ldr r0, [r5, #0x24]
	bl GFL_HeapFree
	mov r4, #0
_021BC218:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #5
	blt _021BC218
	ldr r0, [r5, #0x60]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x5c]
	bl GFL_StrBufFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc208

	thumb_func_start ovy216_21bc238
ovy216_21bc238: ; 0x021BC238
	push {r3, lr}
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc238

	thumb_func_start ovy216_21bc260
ovy216_21bc260: ; 0x021BC260
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_0201736C
	bl sub_02008BF0
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	mov r5, #0x72
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	mov r7, #0
	bl sub_0204B0D4
	mov r0, #1
	lsl r0, r0, #0xd
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r4, #0x20
	mov r3, #0xd
	str r4, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r3, #5
	str r5, [sp, #4]
	bl sub_0204B0B8
	mov r0, #0x72
	add r0, #0xee
	str r0, [sp]
	add r4, #0xff
	lsr r1, r6, #0x1f
	lsl r2, r6, #0x1f
	sub r2, r2, r1
	mov r6, #0x1f
	ror r2, r6
	add r1, r1, r2
	str r5, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204B0B8
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	mov r3, #0
	bl sub_0204AD88
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF18
	add r0, r7, #0
	mov r1, #1
	mov r2, #0xa
	add r3, r7, #0
	str r5, [sp]
	bl sub_02024D00
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0xb
	add r3, r7, #0
	str r5, [sp]
	bl sub_02024D00
	add r0, r7, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc260

	thumb_func_start ovy216_21bc34c
ovy216_21bc34c: ; 0x021BC34C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_0201736C
	bl sub_02008BF0
	add r5, r0, #0
	mov r0, #0x1e
	mov r1, #0x72
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, _021BC400 ; =0x02093F08
	ldr r1, _021BC404 ; =0x021C09E4
	mov r2, #0x72
	bl sub_0204B6A8
	mov r0, #0x1e
	mov r1, #1
	mov r2, #0x72
	bl sub_0204BF1C
	str r0, [r7, #0x68]
	lsl r0, r5, #2
	ldr r1, _021BC408 ; =0x021C09C4
	str r0, [sp, #0xc]
	add r2, r1, r0
	ldr r0, [r1, r0]
	mov r4, #0
	str r0, [sp, #0x14]
	ldr r0, [r2, #8]
	str r0, [sp, #0x10]
_021BC394:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x72
	str r0, [sp]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	lsl r3, r4, #0x15
	str r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BBB8
	add r4, r4, #1
	str r0, [r5, #0x6c]
	cmp r4, #5
	blt _021BC394
	ldr r2, _021BC40C ; =0x021C09D4
	ldr r1, [sp, #0xc]
	ldr r3, _021BC410 ; =0x021C09DC
	ldr r1, [r2, r1]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	ldr r2, [r3, r2]
	mov r3, #0x72
	bl sub_0204BDE0
	add r1, r7, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0x1f
	mov r1, #0x72
	bl sub_0204AA30
	str r0, [r7, #0x34]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BC400: .word 0x02093F08
_021BC404: .word 0x021C09E4
_021BC408: .word 0x021C09C4
_021BC40C: .word 0x021C09D4
_021BC410: .word 0x021C09DC
	thumb_func_end ovy216_21bc34c

	thumb_func_start ovy216_21bc414
ovy216_21bc414: ; 0x021BC414
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	bl GFL_ArcToolFree
	mov r4, #0
_021BC420:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x6c]
	bl sub_0204B98C
	add r5, #0x80
	ldr r0, [r5]
	bl sub_0204BCD0
	add r4, r4, #1
	cmp r4, #5
	blt _021BC420
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204BE64
	ldr r0, [r6, #0x68]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc414

	thumb_func_start ovy216_21bc450
ovy216_21bc450: ; 0x021BC450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r6, #0
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #7]
	strb r6, [r0, #6]
	strh r6, [r0, #4]
	add r7, r6, #0
_021BC464:
	ldr r1, _021BC4D8 ; =0x021C09AC
	lsl r0, r6, #2
	add r3, r1, r0
	ldrh r2, [r3, #4]
	add r1, sp, #0xc
	add r4, r5, r0
	strh r2, [r1]
	ldrh r2, [r3, #6]
	add r3, r5, #0
	add r0, sp, #0xc
	strh r2, [r1, #2]
	str r0, [sp]
	add r1, r4, #0
	str r7, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	add r1, #0x80
	add r3, #0x94
	ldr r0, [r5, #0x68]
	ldr r1, [r1]
	ldr r2, [r4, #0x6c]
	ldr r3, [r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_0204C488
	add r4, #0x9c
	ldr r0, [r4]
	add r1, r7, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #5
	blt _021BC464
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	add r1, r7, #0
	bl sub_02046D84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021BC4D8: .word 0x021C09AC
	thumb_func_end ovy216_21bc450

	thumb_func_start ovy216_21bc4dc
ovy216_21bc4dc: ; 0x021BC4DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x72
	bl sub_02048080
	mov r7, #2
	str r7, [sp]
	mov r6, #0xd
	str r6, [sp, #4]
	mov r4, #1
	mov r0, #5
	mov r1, #0x1a
	mov r2, #0x14
	mov r3, #6
	str r4, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x13
	mov r3, #0x1b
	str r4, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r6, #0xf
	bl BmpWin_BitmapFill
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0x1a
	str r4, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x38]
	bl ovy216_21bc5a4
	mov r0, #0xb
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #6
	mov r3, #0x10
	str r4, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #0x12
	ldr r0, [r0]
	mov r1, #0
	lsl r2, r2, #6
	add r3, r5, #0
	bl ovy216_21bd0ec
	add r0, r5, #0
	add r0, #0xdc
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0]
	add r5, #0xfc
	mov r0, #0
	strb r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc4dc

	thumb_func_start ovy216_21bc5a4
ovy216_21bc5a4: ; 0x021BC5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02022888
	add r6, r0, #0
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0x12
	str r7, [sp]
	lsl r1, r1, #6
	str r1, [sp, #4]
	mov r1, #0xd0
	sub r2, r1, r6
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	mov r2, #1
	add r3, r4, #0
	bl sub_02021D28
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc5a4

	thumb_func_start ovy216_21bc604
ovy216_21bc604: ; 0x021BC604
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BC614
	bl sub_020256B0
_021BC614:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_02048210
	add r4, #0xd4
	ldr r0, [r4]
	bl sub_02048210
	bl sub_020480A8
	pop {r4, pc}
	thumb_func_end ovy216_21bc604

	thumb_func_start ovy216_21bc640
ovy216_21bc640: ; 0x021BC640
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC66C
	mov r0, #0
	mov r6, #0
	bl sub_02042E94
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	cmp r0, #2
	blo _021BC67C
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	b _021BC678
_021BC66C:
	mov r0, #1
	bl sub_02042E94
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
_021BC678:
	bl ovy216_21bd358
_021BC67C:
	add r0, r5, #0
	mov r1, #3
	bl sub_021BC7E0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy216_21bc640

	thumb_func_start ovy216_21bc688
ovy216_21bc688: ; 0x021BC688
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy216_21bc6b0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC6A6
	add r0, r5, #0
	bl ovy216_21bd0c4
	cmp r0, #1
	beq _021BC6AC
	b _021BC6A6
_021BC6A6:
	add r0, r5, #0
	bl sub_021BD1F4
_021BC6AC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bc688

	thumb_func_start ovy216_21bc6b0
ovy216_21bc6b0: ; 0x021BC6B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021BD698
	mov r1, #1
	tst r0, r1
	beq _021BC70A
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC7B4
	ldr r5, [r4, #0x10]
	add r0, r4, #0
	bl ovy216_21bd1f8
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021BC702
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021BC702
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CEF4
	cmp r0, #0
	beq _021BC7B4
	ldr r0, _021BC7B8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ovy216_21bd358
	add r0, r4, #0
	mov r1, #0x16
	bl sub_021BC7E0
	pop {r3, r4, r5, pc}
_021BC702:
	ldr r0, _021BC7BC ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021BC70A:
	bl sub_021BD698
	mov r1, #2
	tst r0, r1
	beq _021BC788
	bl sub_0203FFC4
	cmp r0, #0
	beq _021BC740
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _021BC738
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ovy216_21bd358
	add r0, r4, #0
	mov r1, #4
	bl sub_021BC7E0
	pop {r3, r4, r5, pc}
_021BC738:
	ldr r0, _021BC7BC ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021BC740:
	ldr r5, [r4, #0x10]
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021BC780
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021BC780
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CEF4
	cmp r0, #0
	beq _021BC7B4
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ovy216_21bd358
	add r0, r4, #0
	mov r1, #4
	bl sub_021BC7E0
	ldr r0, _021BC7C0 ; =0x00000551
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021BC780:
	ldr r0, _021BC7BC ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021BC788:
	ldr r0, _021BC7C4 ; =0x00004808
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021BC7B4
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC7B4
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r4, #0x10]
	ldr r1, [r1, #0x2c]
	cmp r1, r0
	bne _021BC7B4
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF14
_021BC7B4:
	pop {r3, r4, r5, pc}
	nop
_021BC7B8: .word 0x0000054C
_021BC7BC: .word 0x00000548
_021BC7C0: .word 0x00000551
_021BC7C4: .word 0x00004808
	thumb_func_end ovy216_21bc6b0

	thumb_func_start sub_021BC7C8
sub_021BC7C8: ; 0x021BC7C8
	bx lr
	.align 2, 0
	thumb_func_end sub_021BC7C8

	thumb_func_start ovy216_21bc7cc
ovy216_21bc7cc: ; 0x021BC7CC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x46
	mov r2, #2
	lsl r1, r1, #2
	str r2, [r0, r1]
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bc7cc

	thumb_func_start sub_021BC7E0
sub_021BC7E0: ; 0x021BC7E0
	mov r2, #0x1a
	mov r3, #0x1a
	add r2, #0xfe
	str r3, [r0, r2]
	mov r2, #0x47
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021BC7E0

	thumb_func_start ovy216_21bc7f0
ovy216_21bc7f0: ; 0x021BC7F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy216_21bd400
	cmp r0, #0
	beq _021BC808
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
_021BC808:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc7f0

	thumb_func_start ovy216_21bc814
ovy216_21bc814: ; 0x021BC814
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC82C
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF14
_021BC82C:
	mov r0, #0x46
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bc814

	thumb_func_start ovy216_21bc840
ovy216_21bc840: ; 0x021BC840
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x72
	str r0, [sp]
	add r6, r1, #0
	ldr r0, _021BC874 ; =0x021C098C
	mov r1, #0x1f
	mov r2, #0xb
	mov r3, #0
	mov r4, #0x1f
	bl sub_020254E0
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #5
	add r4, #0xf9
	str r0, [r5, r4]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BC874: .word 0x021C098C
	thumb_func_end ovy216_21bc840

	thumb_func_start ovy216_21bc878
ovy216_21bc878: ; 0x021BC878
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq _021BC8A8
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021BC8C8
	bl sub_021BD698
	mov r1, #0xc3
	tst r0, r1
	beq _021BC89E
	ldr r0, _021BC984 ; =0x00000548
	bl GFL_SndSEPlay
_021BC89E:
	add r0, r4, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC8A8:
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021BC8C8
	bl sub_021BD698
	mov r1, #0xc3
	tst r0, r1
	beq _021BC8BE
	ldr r0, _021BC984 ; =0x00000548
	bl GFL_SndSEPlay
_021BC8BE:
	add r0, r4, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC8C8:
	add r0, r4, #0
	bl ovy216_21bd1f8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	cmp r5, r0
	beq _021BC8E8
	add r0, r4, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC8E8:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BC97A
	sub r1, r1, #1
	cmp r0, r1
	bne _021BC91C
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC912
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF14
_021BC912:
	mov r1, #0
_021BC914:
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021BC972
_021BC91C:
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BC938
	add r0, r4, #0
	mov r1, #0xb
	bl sub_021BC7E0
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy216_21bd358
	b _021BC972
_021BC938:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	mov r7, #0
	blx MI_CpuFill8
	add r5, sp, #0
	strb r7, [r5, #2]
	bl sub_0203FFC4
	strb r0, [r5]
	ldr r0, [r4, #0x10]
	ldr r1, _021BC988 ; =0x00002801
	add r2, sp, #0
	mov r3, #4
	bl ovy216_21bba4c
	cmp r0, #0
	beq _021BC96C
	ldr r0, _021BC98C ; =0x00004810
	mov r1, #1
	strb r1, [r4, r0]
	add r0, #0x10
	strh r7, [r4, r0]
	mov r1, #6
	b _021BC914
_021BC96C:
	mov r0, #0x46
	lsl r0, r0, #2
	str r7, [r4, r0]
_021BC972:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
_021BC97A:
	add r0, r4, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC984: .word 0x00000548
_021BC988: .word 0x00002801
_021BC98C: .word 0x00004810
	thumb_func_end ovy216_21bc878

	thumb_func_start ovy216_21bc990
ovy216_21bc990: ; 0x021BC990
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _021BC9A4 ; =0x00004820
	mov r2, #0
	strh r2, [r0, r1]
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r4, pc}
	nop
_021BC9A4: .word 0x00004820
	thumb_func_end ovy216_21bc990

	thumb_func_start ovy216_21bc9a8
ovy216_21bc9a8: ; 0x021BC9A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	bne _021BC9CC
	add r0, r5, #0
	bl ovy216_21bd1f8
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	beq _021BC9E4
_021BC9CC:
	ldr r0, _021BCA2C ; =0x00004820
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #0x46
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC9E4:
	ldr r6, _021BCA2C ; =0x00004820
	ldrsh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5, r6]
	ldrsh r0, [r5, r6]
	cmp r0, #0x1e
	ble _021BCA22
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	mov r7, #0
	blx MI_CpuFill8
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203FFC4
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _021BCA30 ; =0x00002801
	add r2, sp, #0
	mov r3, #4
	bl ovy216_21bba4c
	mov r0, #0x46
	strh r7, [r5, r6]
	mov r1, #9
	lsl r0, r0, #2
	str r1, [r5, r0]
_021BCA22:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCA2C: .word 0x00004820
_021BCA30: .word 0x00002801
	thumb_func_end ovy216_21bc9a8

	thumb_func_start ovy216_21bca34
ovy216_21bca34: ; 0x021BCA34
	push {r3, r4, r5, lr}
	ldr r2, _021BCA50 ; =0x00004810
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5, r2]
	bl sub_021BC7E0
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021BCA50: .word 0x00004810
	thumb_func_end ovy216_21bca34

	thumb_func_start ovy216_21bca54
ovy216_21bca54: ; 0x021BCA54
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x72
	str r0, [sp]
	add r6, r1, #0
	ldr r0, _021BCA88 ; =0x021C098C
	mov r1, #0x1f
	mov r2, #0xb
	mov r3, #0
	mov r4, #0x1f
	bl sub_020254E0
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #0x17
	add r4, #0xf9
	str r0, [r5, r4]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BCA88: .word 0x021C098C
	thumb_func_end ovy216_21bca54

	thumb_func_start ovy216_21bca8c
ovy216_21bca8c: ; 0x021BCA8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ovy216_21bd1f8
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021BCAA4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021BCABE
_021BCAA4:
	bl sub_021BD698
	mov r1, #0xc3
	tst r0, r1
	beq _021BCAB4
	ldr r0, _021BCB18 ; =0x00000548
	bl GFL_SndSEPlay
_021BCAB4:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021BCABE:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BCB0C
	sub r1, r1, #1
	cmp r0, r1
	bne _021BCAEA
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF14
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021BCB04
_021BCAEA:
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BCB04
	mov r0, #0x46
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy216_21bd1f8
	ldr r1, _021BCB1C ; =0x00004812
	strb r0, [r5, r1]
_021BCB04:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
_021BCB0C:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021BCB18: .word 0x00000548
_021BCB1C: .word 0x00004812
	thumb_func_end ovy216_21bca8c

	thumb_func_start ovy216_21bcb20
ovy216_21bcb20: ; 0x021BCB20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021BCB50 ; =0x00004813
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021BCB4C
	ldr r0, [r5, #0x10]
	ldr r1, _021BCB54 ; =0x00002804
	mov r2, #0
	mov r3, #0
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BCB4C
	mov r0, #0x1b
	mov r1, #0x1b
	add r0, #0xfd
	str r1, [r5, r0]
	mov r0, #1
	bl sub_02042E9C
_021BCB4C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BCB50: .word 0x00004813
_021BCB54: .word 0x00002804
	thumb_func_end ovy216_21bcb20

	thumb_func_start ovy216_21bcb58
ovy216_21bcb58: ; 0x021BCB58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BCB70
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF84
_021BCB70:
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, #0x10]
	ldr r1, [r1, #0x20]
	cmp r1, r0
	bne _021BCB8A
	mov r0, #0x1b
	mov r1, #0x1b
	add r0, #0xfd
	str r1, [r5, r0]
_021BCB8A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bcb58

	thumb_func_start ovy216_21bcb90
ovy216_21bcb90: ; 0x021BCB90
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl ovy216_21bd358
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021BC7E0
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bcb90

	thumb_func_start ovy216_21bcbb0
ovy216_21bcbb0: ; 0x021BCBB0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, #0x3c
	ble _021BCBE0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r4, #3
_021BCBE0:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy216_21bcbb0

	thumb_func_start ovy216_21bcbec
ovy216_21bcbec: ; 0x021BCBEC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x72
	str r0, [sp]
	add r6, r1, #0
	ldr r0, _021BCC20 ; =0x021C098C
	mov r1, #0x1f
	mov r2, #0xb
	mov r3, #0
	mov r4, #0x1f
	bl sub_020254E0
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #0xc
	add r4, #0xf9
	str r0, [r5, r4]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BCC20: .word 0x021C098C
	thumb_func_end ovy216_21bcbec

	thumb_func_start ovy216_21bcc24
ovy216_21bcc24: ; 0x021BCC24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ovy216_21bd1f8
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021BCC3C
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021BCC56
_021BCC3C:
	bl sub_021BD698
	mov r1, #0xc3
	tst r0, r1
	beq _021BCC4C
	ldr r0, _021BCCC0 ; =0x0000054C
	bl GFL_SndSEPlay
_021BCC4C:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021BCC56:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BCCB4
	sub r1, r1, #1
	cmp r0, r1
	bne _021BCC82
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF14
	b _021BCCAC
_021BCC82:
	mov r0, #0x46
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	ldr r1, _021BCCC4 ; =0x00002802
	mov r2, #0
	mov r3, #0
	bl ovy216_21bba4c
	add r0, r5, #0
	bl sub_021BBDD8
	mov r1, #0
	bl sub_0217CF60
	add r2, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl GFL_CopyVarForText
_021BCCAC:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
_021BCCB4:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021BCCC0: .word 0x0000054C
_021BCCC4: .word 0x00002802
	thumb_func_end ovy216_21bcc24

	thumb_func_start ovy216_21bccc8
ovy216_21bccc8: ; 0x021BCCC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BCCDC
	add r0, r5, #0
	mov r1, #5
	b _021BCCF6
_021BCCDC:
	add r0, r5, #0
	bl sub_021BBDD8
	mov r1, #0
	bl sub_0217CF60
	add r2, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl GFL_CopyVarForText
	add r0, r5, #0
	mov r1, #0x10
_021BCCF6:
	mov r2, #0
	bl ovy216_21bd358
	add r0, r5, #0
	mov r1, #0xe
	bl sub_021BC7E0
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bccc8

	thumb_func_start ovy216_21bcd18
ovy216_21bcd18: ; 0x021BCD18
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	cmp r2, #0x2d
	ble _021BCD30
	mov r2, #0xf
	sub r1, #0xc
	str r2, [r0, r1]
_021BCD30:
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bcd18

	thumb_func_start ovy216_21bcd38
ovy216_21bcd38: ; 0x021BCD38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02040440
	add r0, r5, #0
	bl ovy216_21bd220
	ldr r4, _021BCD7C ; =0x0000480C
	ldr r1, [r5, r4]
	eor r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	bl sub_02040440
	add r4, #8
	ldr r3, [r5, r4]
	mov r1, #0xcf
	lsl r3, r3, #0x10
	mov r6, #0x28
	mov r2, #0x28
	lsr r3, r3, #0x10
	bl sub_02040B38
	mov r0, #0x10
	add r6, #0xf0
	str r0, [r5, r6]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BCD7C: .word 0x0000480C
	thumb_func_end ovy216_21bcd38

	thumb_func_start ovy216_21bcd80
ovy216_21bcd80: ; 0x021BCD80
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0xcf
	mov r2, #0x28
	bl sub_02040664
	cmp r0, #0
	bne _021BCDAC
	add r0, r5, #0
	bl ovy216_21bd220
	ldr r1, _021BCDD8 ; =0x00004814
	ldr r2, [r5, r1]
	sub r1, #8
	ldr r1, [r5, r1]
	eor r0, r1
	cmp r2, r0
	beq _021BCDCC
_021BCDAC:
	mov r0, #0
	bl sub_02042E94
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r4, #3
_021BCDCC:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BCDD8: .word 0x00004814
	thumb_func_end ovy216_21bcd80

	thumb_func_start ovy216_21bcddc
ovy216_21bcddc: ; 0x021BCDDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy216_21bd400
	cmp r0, #0
	beq _021BCDFC
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy216_21bd358
	mov r0, #0x46
	mov r1, #0x12
	lsl r0, r0, #2
	str r1, [r5, r0]
_021BCDFC:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bcddc

	thumb_func_start ovy216_21bce08
ovy216_21bce08: ; 0x021BCE08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy216_21bd400
	cmp r0, #0
	beq _021BCE1E
	mov r0, #0x46
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r5, r0]
_021BCE1E:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bce08

	thumb_func_start ovy216_21bce28
ovy216_21bce28: ; 0x021BCE28
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xf
	mov r2, #1
	add r5, r0, #0
	bl ovy216_21bd358
	mov r4, #0x46
	mov r0, #0x14
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_0203FFC4
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, _021BCE60 ; =0x0000481C
	add r4, #0x14
	str r0, [r5, r1]
	sub r0, r1, #4
	str r4, [r5, r0]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BCE60: .word 0x0000481C
	thumb_func_end ovy216_21bce28

	thumb_func_start ovy216_21bce64
ovy216_21bce64: ; 0x021BCE64
	push {r4, r5, r6, lr}
	ldr r6, _021BCE9C ; =0x0000481C
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, r6]
	cmp r1, #0
	beq _021BCE84
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, r6]
	cmp r1, r0
	beq _021BCE84
	mov r0, #0
	str r0, [r5, r6]
_021BCE84:
	mov r0, #0x46
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BCE9C: .word 0x0000481C
	thumb_func_end ovy216_21bce64

	thumb_func_start ovy216_21bcea0
ovy216_21bcea0: ; 0x021BCEA0
	push {r4, r5, r6, lr}
	ldr r6, _021BCEFC ; =0x0000481C
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, r6]
	cmp r1, #0
	beq _021BCEC0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, r6]
	cmp r1, r0
	beq _021BCEC0
	mov r0, #0
	str r0, [r5, r6]
_021BCEC0:
	ldr r0, _021BCF00 ; =0x00004818
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _021BCED0
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
_021BCED0:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	cmp r0, #0x3c
	ble _021BCEF0
	ldr r0, _021BCEFC ; =0x0000481C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021BCEF0
	mov r0, #0
	sub r1, #0xc
	str r0, [r5, r1]
	bl sub_0203FFC4
_021BCEF0:
	add r0, r5, #0
	bl sub_021BC7C8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021BCEFC: .word 0x0000481C
_021BCF00: .word 0x00004818
	thumb_func_end ovy216_21bcea0

	thumb_func_start ovy216_21bcf04
ovy216_21bcf04: ; 0x021BCF04
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add r0, r5, #0
	str r4, [r5, #8]
	bl sub_021BC7C8
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy216_21bcf04

	thumb_func_start ovy216_21bcf30
ovy216_21bcf30: ; 0x021BCF30
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x13
	bgt _021BCF58
	bge _021BCF96
	cmp r4, #8
	bgt _021BCF52
	cmp r4, #2
	blt _021BD014
	beq _021BCF66
	cmp r4, #7
	beq _021BD00E
	cmp r4, #8
	beq _021BD00E
	pop {r3, r4, r5, r6, r7, pc}
_021BCF52:
	cmp r4, #0xd
	beq _021BCF6C
	pop {r3, r4, r5, r6, r7, pc}
_021BCF58:
	cmp r4, #0x19
	bgt _021BCF60
	beq _021BCF76
	pop {r3, r4, r5, r6, r7, pc}
_021BCF60:
	cmp r4, #0x1b
	beq _021BCFE6
	pop {r3, r4, r5, r6, r7, pc}
_021BCF66:
	bl sub_021BD464
	b _021BD00E
_021BCF6C:
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BD00E
	b _021BD002
_021BCF76:
	mov r1, #0xc
	mov r2, #0
	mov r6, #0
	bl ovy216_21bd358
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BD00E
	bl sub_020256B0
	add r0, r5, #0
	add r0, #0xe8
	str r6, [r0]
	b _021BD00E
_021BCF96:
	ldr r1, _021BD018 ; =0x00004810
	ldrb r1, [r5, r1]
	cmp r1, #1
	beq _021BD014
	bl sub_021BBDD8
	add r1, r6, #0
	bl sub_0217CF60
	add r2, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r7, #0
	bl GFL_CopyVarForText
	bl sub_0203FFC4
	cmp r6, r0
	beq _021BD014
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BCFD0
	bl sub_020256B0
	add r0, r5, #0
	add r0, #0xe8
	str r7, [r0]
_021BCFD0:
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BD00E
	ldr r2, [r5, #0x10]
	ldr r0, _021BD01C ; =0x0000FFFF
	ldr r1, [r2, #0x30]
	eor r0, r6
	and r0, r1
	str r0, [r2, #0x30]
	b _021BD00E
_021BCFE6:
	bl ovy216_21bd400
	cmp r0, #0
	bne _021BCFF8
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_02022390
_021BCFF8:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BD00E
_021BD002:
	bl sub_020256B0
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
_021BD00E:
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
_021BD014:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD018: .word 0x00004810
_021BD01C: .word 0x0000FFFF
	thumb_func_end ovy216_21bcf30

	thumb_func_start ovy216_21bd020
ovy216_21bd020: ; 0x021BD020
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x46
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r6, r2, #0
	cmp r1, #3
	bne _021BD0A6
	cmp r4, #1
	beq _021BD03C
	cmp r4, #0x13
	beq _021BD06E
	pop {r4, r5, r6, pc}
_021BD03C:
	bl sub_021BBDD8
	add r1, r6, #0
	bl sub_0217CF60
	add r2, r0, #0
	beq _021BD052
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl GFL_CopyVarForText
_021BD052:
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r5, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #0x30]
	pop {r4, r5, r6, pc}
_021BD06E:
	bl sub_021BBDD8
	add r1, r6, #0
	bl sub_0217CF60
	add r2, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl GFL_CopyVarForText
	bl sub_0203FFC4
	cmp r6, r0
	beq _021BD0BC
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BD09E
	ldr r2, [r5, #0x10]
	ldr r0, _021BD0C0 ; =0x0000FFFF
	ldr r1, [r2, #0x30]
	eor r0, r6
	and r0, r1
	str r0, [r2, #0x30]
_021BD09E:
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r4, r5, r6, pc}
_021BD0A6:
	cmp r4, #1
	bne _021BD0BC
	ldr r1, [r5, #0x10]
	mov r2, #0
	str r2, [r1, #0x30]
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
_021BD0BC:
	pop {r4, r5, r6, pc}
	nop
_021BD0C0: .word 0x0000FFFF
	thumb_func_end ovy216_21bd020

	thumb_func_start ovy216_21bd0c4
ovy216_21bd0c4: ; 0x021BD0C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	mov r4, #0
_021BD0CC:
	add r0, r6, #0
	bl sub_021BBDD8
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CF60
	cmp r0, #0
	beq _021BD0E0
	add r5, r5, #1
_021BD0E0:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD0CC
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd0c4

	thumb_func_start ovy216_21bd0ec
ovy216_21bd0ec: ; 0x021BD0EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r3, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_0203FFC4
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy216_21bd22c
	cmp r0, #0
	bne _021BD10C
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BD10C:
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
_021BD11A:
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BD1D0
	bl sub_02008BD4
	add r7, r0, #0
	mov r0, #0x10
	mov r1, #0x72
	bl GFL_StrBufCreate
	add r6, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x14]
	ldr r1, [r1, #0x44]
	bl sub_02008BA0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	add r2, r7, #0
	mov r3, #5
	bl StringSetNumber
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #0x18]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x1c]
	cmp r0, r4
	bne _021BD184
	mov r7, #0x86
	lsl r7, r7, #4
	b _021BD186
_021BD184:
	ldr r7, [sp, #0xc]
_021BD186:
	mov r0, #0x12
	mul r0, r4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x38]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	lsl r2, r2, #0x10
	ldr r3, [sp, #0x14]
	str r7, [sp, #4]
	ldr r3, [r3, #0x44]
	mov r1, #5
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x10]
	ldr r1, [r5, #0x38]
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0x46
	asr r2, r2, #0x10
	add r3, r6, #0
	str r7, [sp, #4]
	bl sub_02021D28
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
_021BD1D0:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD11A
	ldr r0, [sp, #8]
	bl BmpWin_FlushChar
	ldr r0, [sp, #8]
	bl sub_0204826C
	ldr r0, [sp, #8]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd0ec

	thumb_func_start sub_021BD1F4
sub_021BD1F4: ; 0x021BD1F4
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD1F4

	thumb_func_start ovy216_21bd1f8
ovy216_21bd1f8: ; 0x021BD1F8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	mov r4, #0
_021BD200:
	add r0, r6, #0
	bl sub_021BBDD8
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CF60
	cmp r0, #0
	beq _021BD214
	add r5, r5, #1
_021BD214:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD200
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd1f8

	thumb_func_start ovy216_21bd220
ovy216_21bd220: ; 0x021BD220
	push {r3, lr}
	bl sub_021BBDD8
	bl sub_0217CF80
	pop {r3, pc}
	thumb_func_end ovy216_21bd220

	thumb_func_start ovy216_21bd22c
ovy216_21bd22c: ; 0x021BD22C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021BD350 ; =0x00004824
	mov r6, #0
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _021BD350 ; =0x00004824
	add r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, _021BD350 ; =0x00004824
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021BD350 ; =0x00004824
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
	ldr r0, _021BD350 ; =0x00004824
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
_021BD262:
	lsl r0, r6, #3
	add r7, r4, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	ldr r0, [sp, #0x10]
	str r1, [r7, r0]
	add r0, r4, #0
	bl sub_021BBDD8
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CF60
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r7, r1]
	lsl r0, r6, #4
	add r5, r4, r0
	ldr r0, _021BD350 ; =0x00004824
	ldr r2, [sp, #8]
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	str r1, [r5, r2]
	ldr r1, [sp, #4]
	str r0, [r5, r1]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021BD2B0
	bl sub_02008BD0
	ldr r1, _021BD350 ; =0x00004824
	str r0, [r5, r1]
	mov r1, #1
	ldr r0, [sp, #0x14]
	b _021BD2BA
_021BD2B0:
	ldr r0, _021BD350 ; =0x00004824
	mov r2, #0
	str r2, [r5, r0]
	ldr r0, [sp, #0x18]
	mov r1, #0
_021BD2BA:
	add r6, r6, #1
	str r1, [r5, r0]
	cmp r6, #5
	blt _021BD262
	ldr r0, _021BD354 ; =0x00004828
	mov r5, #0x16
	sub r0, r0, #4
	mov ip, r0
	ldr r0, _021BD354 ; =0x00004828
	lsl r5, r5, #4
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, _021BD354 ; =0x00004828
	mov r2, #0
	str r0, [sp, #0x24]
	add r0, #8
	str r0, [sp, #0x24]
	add r0, r5, #0
	str r0, [sp, #0x20]
	sub r0, #0x28
	str r0, [sp, #0x20]
	add r0, r5, #0
	str r0, [sp, #0x1c]
	sub r0, #0x24
	str r0, [sp, #0x1c]
_021BD2EC:
	lsl r0, r2, #3
	add r1, r4, r0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	ldr r0, [r1, r0]
	ldr r1, [r1, r3]
	cmp r1, r0
	beq _021BD30E
	mov r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021BD30C
_021BD304:
	lsl r0, r2, #2
	add r1, r4, r0
	mov r0, #3
	b _021BD340
_021BD30C:
	b _021BD33A
_021BD30E:
	lsl r0, r2, #4
	add r1, r4, r0
	ldr r3, [sp, #0x28]
	mov r0, ip
	ldr r7, [r1, r0]
	ldr r0, _021BD354 ; =0x00004828
	ldr r6, [r1, r3]
	ldr r3, [sp, #0x24]
	ldr r0, [r1, r0]
	ldr r3, [r1, r3]
	eor r0, r3
	add r3, r7, #0
	eor r3, r6
	orr r0, r3
	beq _021BD342
	mov r0, #1
	str r0, [sp]
	ldr r0, _021BD354 ; =0x00004828
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021BD33A
	b _021BD304
_021BD33A:
	lsl r0, r2, #2
	add r1, r4, r0
	mov r0, #1
_021BD340:
	str r0, [r1, r5]
_021BD342:
	add r2, r2, #1
	cmp r2, #5
	blt _021BD2EC
	ldr r0, [sp]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021BD350: .word 0x00004824
_021BD354: .word 0x00004828
	thumb_func_end ovy216_21bd22c

	thumb_func_start ovy216_21bd358
ovy216_21bd358: ; 0x021BD358
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb4
	mov r1, #0x72
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x5c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_02024E80
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	beq _021BD3B2
	bl sub_020223CC
_021BD3B2:
	ldr r0, [r5, #0x38]
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xf4
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x72
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	ldr r3, [r5, #0x5c]
	bl sub_02022268
	add r1, r5, #0
	add r5, #0xd4
	add r1, #0xf0
	ldr r4, [r5]
	str r0, [r1]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd358

	thumb_func_start ovy216_21bd400
ovy216_21bd400: ; 0x021BD400
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	bne _021BD410
	mov r0, #1
	pop {r4, pc}
_021BD410:
	bl sub_020223B4
	cmp r0, #0
	bne _021BD42E
	bl sub_0203DF20
	mov r1, #1
	tst r0, r1
	beq _021BD45E
	add r4, #0xf0
	ldr r0, [r4]
	mov r1, #0
	bl sub_020223E0
	b _021BD45E
_021BD42E:
	cmp r0, #1
	bne _021BD446
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021BD45E
	add r4, #0xf0
	ldr r0, [r4]
	bl sub_020223BC
	b _021BD45E
_021BD446:
	cmp r0, #2
	bne _021BD45E
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_020223CC
	mov r0, #0
	add r4, #0xf0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021BD45E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd400

	thumb_func_start sub_021BD464
sub_021BD464: ; 0x021BD464
	add r0, #0xd4
	ldr r0, [r0]
	ldr r3, _021BD470 ; =sub_02024EEC
	mov r1, #0
	bx r3
	nop
_021BD470: .word sub_02024EEC
	thumb_func_end sub_021BD464

	thumb_func_start ovy216_21bd474
ovy216_21bd474: ; 0x021BD474
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	sub r0, #0x24
	str r0, [sp, #0xc]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #0x28
	mov r7, #0
	mov r4, #0
	str r0, [sp, #8]
_021BD4A6:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [sp, #8]
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021BD54A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BD4BE: ; jump table
	.short _021BD54A - _021BD4BE - 2 ; case 0
	.short _021BD4C6 - _021BD4BE - 2 ; case 1
	.short _021BD54A - _021BD4BE - 2 ; case 2
	.short _021BD520 - _021BD4BE - 2 ; case 3
_021BD4C6:
	lsl r0, r4, #3
	add r7, r6, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02008BF0
	str r0, [sp, #4]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02008BF4
	add r7, r0, #0
	bl sub_0203FFC4
	cmp r4, r0
	bne _021BD4EC
	b _021BD4FE
_021BD4EC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ovy216_21bd590
_021BD4FE:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #4
	bl sub_0204C488
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r1, [r5, r0]
	mov r7, #1
	b _021BD54A
_021BD520:
	bl sub_0203FFC4
	cmp r4, r0
	bne _021BD538
	lsl r0, r4, #3
	add r1, r6, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02008BF0
	b _021BD538
_021BD538:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #5
	bl sub_0204C488
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r5, r0]
_021BD54A:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD4A6
	cmp r7, #0
	beq _021BD55A
	ldr r0, _021BD560 ; =0x00000676
	bl GFL_SndSEPlay
_021BD55A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD560: .word 0x00000676
	thumb_func_end ovy216_21bd474

	thumb_func_start ovy216_21bd564
ovy216_21bd564: ; 0x021BD564
	push {r3, r4, r5, lr}
	mov r2, #0x1f
	add r4, r0, #0
	add r2, #0xf5
	mov r0, #0x1f
	mov r1, #0
	add r2, r4, r2
	mov r3, #0x72
	mov r5, #0x72
	bl sub_0204B354
	add r5, #0x9e
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bd564

	thumb_func_start sub_021BD580
sub_021BD580: ; 0x021BD580
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021BD58C ; =GFL_HeapFree
	bx r3
	nop
_021BD58C: .word GFL_HeapFree
	thumb_func_end sub_021BD580

	thumb_func_start ovy216_21bd590
ovy216_21bd590: ; 0x021BD590
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021BD5D8 ; =0x021C099C
	add r4, r3, #0
	ldrb r0, [r0, r4]
	ldr r1, [r1, #0xc]
	add r5, r2, #0
	lsl r0, r0, #5
	add r0, r1, r0
	lsl r1, r5, #5
	mov r2, #0x20
	bl GX_LoadOBJPltt
	mov r0, #0x72
	str r0, [sp]
	mov r0, #0x1f
	add r1, r4, #1
	mov r2, #0
	add r3, sp, #4
	bl sub_0204B2B4
	add r4, r0, #0
	add r0, r5, #5
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x6c]
	ldr r1, [sp, #4]
	bl sub_0204BA40
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021BD5D8: .word 0x021C099C
	thumb_func_end ovy216_21bd590

	thumb_func_start ovy216_21bd5dc
ovy216_21bd5dc: ; 0x021BD5DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy216_21bd1f8
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	ble _021BD600
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CEF4
	cmp r0, #0
	beq _021BD606
	mov r1, #1
	b _021BD602
_021BD600:
	mov r1, #0
_021BD602:
	ldr r0, _021BD690 ; =0x00004808
	str r1, [r4, r0]
_021BD606:
	ldr r0, _021BD694 ; =0x00004804
	ldr r1, [r4, r0]
	cmp r5, r1
	bne _021BD612
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BD612:
	cmp r5, #5
	bhi _021BD682
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BD622: ; jump table
	.short _021BD682 - _021BD622 - 2 ; case 0
	.short _021BD62E - _021BD622 - 2 ; case 1
	.short _021BD66E - _021BD622 - 2 ; case 2
	.short _021BD66E - _021BD622 - 2 ; case 3
	.short _021BD66E - _021BD622 - 2 ; case 4
	.short _021BD682 - _021BD622 - 2 ; case 5
_021BD62E:
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	cmp r0, #1
	bhi _021BD64A
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF80
	cmp r0, #1
	bls _021BD64E
_021BD64A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BD64E:
	mov r0, #0x46
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BD66A
	bl sub_020256B0
	mov r0, #0
	add r4, #0xe8
	str r0, [r4]
_021BD66A:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021BD66E:
	ldr r0, [r4, r0]
	cmp r5, r0
	bge _021BD682
	add r0, r4, #0
	bl sub_021BBDD8
	bl sub_0217CF84
	ldr r1, [r4, #0x10]
	str r0, [r1, #0x2c]
_021BD682:
	add r0, r4, #0
	bl ovy216_21bd1f8
	ldr r1, _021BD694 ; =0x00004804
	str r0, [r4, r1]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD690: .word 0x00004808
_021BD694: .word 0x00004804
	thumb_func_end ovy216_21bd5dc

	thumb_func_start sub_021BD698
sub_021BD698: ; 0x021BD698
	ldr r3, _021BD69C ; =GCTX_HIDGetPressedKeys
	bx r3
	.align 2, 0
_021BD69C: .word GCTX_HIDGetPressedKeys
	thumb_func_end sub_021BD698

	thumb_func_start ovy216_21bd6a0
ovy216_21bd6a0: ; 0x021BD6A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r5, #1
	mov r0, #1
	add r7, r2, #0
	bl sub_02042E94
	mov r0, #1
	mov r1, #0x72
	lsl r2, r5, #0x13
	bl GFL_HeapCreateChild
	ldr r6, _021BD7E4 ; =0x00000DAC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x72
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	mov r1, #0
	add r2, r6, #0
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	str r5, [r7, #0x1c]
	add r0, #0xd8
	str r7, [r0]
	add r0, r5, #0
	ldr r1, [r7, #0x18]
	add r0, #0xdc
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_0201735C
	str r0, [r5, #0x24]
	mov r0, #0xb4
	mov r1, #0x72
	bl sub_0204AA30
	add r1, r6, #0
	sub r1, #0x54
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy216_21be6a4
	ldr r0, _021BD7E8 ; =ovy216_21be68c
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	sub r6, #0x10
	str r0, [r5, r6]
	mov r0, #0x14
	mov r1, #0xb
	mov r2, #0x72
	bl sub_02049D24
	ldr r1, _021BD7EC ; =0x00000AF4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy216_21bf4e4
	add r0, r5, #0
	bl ovy216_21bf584
	add r0, r5, #0
	bl ovy216_21bf384
	mov r6, #0
	bl sub_0203FFC4
	add r1, r5, #0
	add r1, #0xe0
	mov ip, r1
	add r1, r5, #0
	add r1, #0xd8
	ldr r7, [r1]
	mov r3, #1
	ldr r1, [r7, #0xc]
_021BD74A:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _021BD758
	cmp r4, r0
	beq _021BD75E
	add r6, r6, #1
_021BD758:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD74A
_021BD75E:
	ldr r1, [r7, #8]
	mov r0, #0xa
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BD7F0 ; =0x021C0E44
	lsl r1, r6, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r1, r0, #0xc
	mov r0, ip
	str r1, [r0, #0x40]
	mov r0, #0x20
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021BD7F4 ; =0x000004EC
	ldr r3, _021BD7F8 ; =0x021C1158
	str r0, [sp]
	ldr r0, _021BD7FC ; =0x00008072
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	ldr r4, _021BD800 ; =0x00000D94
	mov r0, #0x20
	str r1, [r5, r4]
	bl sub_0203A58C
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy216_21bfc8c
	add r0, r5, #0
	bl ovy216_21bfdc4
	add r0, r5, #0
	bl ovy216_21bfef0
	add r0, r5, #0
	bl ovy216_21c0058
	add r0, r5, #0
	bl ovy216_21c0260
	add r0, r5, #0
	bl ovy216_21c032c
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
	bl sub_02042E9C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BD7E4: .word 0x00000DAC
_021BD7E8: .word ovy216_21be68c
_021BD7EC: .word 0x00000AF4
_021BD7F0: .word 0x021C0E44
_021BD7F4: .word 0x000004EC
_021BD7F8: .word 0x021C1158
_021BD7FC: .word 0x00008072
_021BD800: .word 0x00000D94
	thumb_func_end ovy216_21bd6a0

	thumb_func_start ovy216_21bd804
ovy216_21bd804: ; 0x021BD804
	push {r4, r5, r6, lr}
	ldr r5, _021BD8A4 ; =0x00000D38
	add r4, r3, #0
	add r6, r0, #0
	ldr r0, [r4, r5]
	bl sub_02021C44
	ldr r0, [r4, r5]
	bl sub_02021A18
	add r5, #0x70
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BD824
	bl sub_0203580C
_021BD824:
	add r0, r4, #0
	bl sub_021BFCC0
	add r0, r4, #0
	bl sub_021BFDF8
	add r0, r4, #0
	bl sub_021BFF24
	add r0, r4, #0
	bl sub_021C0088
	add r0, r4, #0
	bl sub_021C0294
	add r0, r4, #0
	bl sub_021C0360
	ldr r5, _021BD8A8 ; =0x00000D98
	ldr r0, [r4, r5]
	bl sub_0203A610
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	bl sub_021BF51C
	add r0, r4, #0
	bl sub_021BF3F8
	add r0, r4, #0
	bl ovy216_21bf5e0
	ldr r0, _021BD8AC ; =0x00000AF4
	ldr r0, [r4, r0]
	bl sub_02049DDC
	bl sub_02048F44
	add r0, r4, #0
	bl ovy216_21be6e0
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_TCBRemove
	sub r5, #0x40
	ldr r0, [r4, r5]
	bl GFL_ArcToolFree
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x72
	bl sub_0203A1D0
	mov r0, #8
	bl sub_0203D27C
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021BD8A4: .word 0x00000D38
_021BD8A8: .word 0x00000D98
_021BD8AC: .word 0x00000AF4
	thumb_func_end ovy216_21bd804

	thumb_func_start ovy216_21bd8b0
ovy216_21bd8b0: ; 0x021BD8B0
	push {r3, r4, r5, lr}
	ldr r4, _021BD904 ; =0x021C1020
	add r5, r3, #0
_021BD8B6:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021BD8B6
	cmp r0, #2
	bne _021BD8CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BD8CC:
	add r0, r5, #0
	bl ovy216_21bf414
	add r0, r5, #0
	bl ovy216_21bf648
	add r0, r5, #0
	bl ovy216_21be708
	add r0, r5, #0
	bl sub_021BD90C
	ldr r0, _021BD908 ; =0x00000D98
	ldr r0, [r5, r0]
	bl sub_0203A5D0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BD900
	bl sub_020120C8
	cmp r0, #0
	beq _021BD900
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BD900:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD904: .word 0x021C1020
_021BD908: .word 0x00000D98
	thumb_func_end ovy216_21bd8b0

	thumb_func_start sub_021BD90C
sub_021BD90C: ; 0x021BD90C
	mov r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end sub_021BD90C

	thumb_func_start ovy216_21bd914
ovy216_21bd914: ; 0x021BD914
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ovy216_21befd4
	mov r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bd914

	thumb_func_start ovy216_21bd928
ovy216_21bd928: ; 0x021BD928
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BD962
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BD940
	mov r0, #2
	b _021BD942
_021BD940:
	mov r0, #8
_021BD942:
	ldr r4, _021BD968 ; =0x00000D98
	str r0, [r5]
	mov r0, #0x72
	add r1, r4, #0
	str r0, [sp]
	sub r1, #0xa8
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035604
	add r4, #0x10
	str r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BD962:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BD968: .word 0x00000D98
	thumb_func_end ovy216_21bd928

	thumb_func_start ovy216_21bd96c
ovy216_21bd96c: ; 0x021BD96C
	push {r4, lr}
	add r4, r0, #0
	bl ovy216_21c057c
	cmp r0, #0
	beq _021BD980
	mov r0, #3
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021BD980:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bd96c

	thumb_func_start ovy216_21bd984
ovy216_21bd984: ; 0x021BD984
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	add r0, sp, #0
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BD9B0 ; =0x00002805
	add r2, sp, #0
	mov r3, #2
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BD9AA
	mov r0, #4
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021BD9AA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BD9B0: .word 0x00002805
	thumb_func_end ovy216_21bd984

	thumb_func_start sub_021BD9B4
sub_021BD9B4: ; 0x021BD9B4
	add r0, #0xd8
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD9B4

	thumb_func_start ovy216_21bd9c0
ovy216_21bd9c0: ; 0x021BD9C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021C05B0
	add r5, r0, #1
	add r0, r4, #0
	bl sub_021BD9B4
	bl sub_0217CF84
	cmp r5, r0
	beq _021BD9DC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BD9DC:
	mov r0, #5
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bd9c0

	thumb_func_start ovy216_21bd9e4
ovy216_21bd9e4: ; 0x021BD9E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021C05B0
	add r0, r0, #1
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xdc
	add r2, r4, #0
	ldr r0, [r0]
	ldr r1, _021BDA14 ; =0x0000280A
	add r2, #0x30
	mov r3, #4
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDA0E
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #6
	str r0, [r4]
_021BDA0E:
	mov r0, #0
	pop {r4, pc}
	nop
_021BDA14: .word 0x0000280A
	thumb_func_end ovy216_21bd9e4

	thumb_func_start ovy216_21bda18
ovy216_21bda18: ; 0x021BDA18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r3, [r4, #0x14]
	cmp r3, #0
	bne _021BDA4C
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDAA8 ; =0x00002809
	add r2, sp, #0
	mov r3, #4
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDA46
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021BDA46:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021BDA4C:
	add r2, r4, #0
	add r2, #0xdc
	ldr r2, [r2]
	mov r0, #1
	add r2, #0x42
	ldrh r2, [r2]
	mov r1, #1
	add r5, r0, #0
_021BDA5C:
	add r6, r5, #0
	lsl r6, r0
	tst r6, r2
	beq _021BDA8E
	cmp r1, r3
	blt _021BDA8C
	add r1, sp, #0
	strh r0, [r1, #2]
	ldr r0, [r4, #0x14]
	add r2, sp, #0
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDAA8 ; =0x00002809
	mov r3, #4
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDA94
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021BDA94
_021BDA8C:
	add r1, r1, #1
_021BDA8E:
	add r0, r0, #1
	cmp r0, #5
	blt _021BDA5C
_021BDA94:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	blt _021BDAA0
	mov r0, #7
	str r0, [r4]
_021BDAA0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BDAA8: .word 0x00002809
	thumb_func_end ovy216_21bda18

	thumb_func_start ovy216_21bdaac
ovy216_21bdaac: ; 0x021BDAAC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #8
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDAD8 ; =0x00002805
	add r2, sp, #0
	mov r3, #2
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDAD0
	mov r0, #0xa
	str r0, [r4]
_021BDAD0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021BDAD8: .word 0x00002805
	thumb_func_end ovy216_21bdaac

	thumb_func_start ovy216_21bdadc
ovy216_21bdadc: ; 0x021BDADC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDB04 ; =0x00002806
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDAFE
	mov r0, #9
	str r0, [r5]
	str r4, [r5, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021BDAFE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021BDB04: .word 0x00002806
	thumb_func_end ovy216_21bdadc

	thumb_func_start ovy216_21bdb08
ovy216_21bdb08: ; 0x021BDB08
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl sub_021C0568
	cmp r0, #1
	bne _021BDB24
	add r0, r4, #0
	bl sub_021C05B0
	add r0, r0, #1
	str r0, [r4, #0x30]
	mov r0, #0xa
	str r0, [r4]
_021BDB24:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bdb08

	thumb_func_start ovy216_21bdb28
ovy216_21bdb28: ; 0x021BDB28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02040440
	ldr r6, _021BDB50 ; =0x00000DA8
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_0203580C
	mov r0, #0
	str r0, [r5, r6]
	add r0, r4, #0
	mov r1, #0xca
	mov r2, #0x28
	bl sub_02040624
	mov r0, #0xb
	str r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BDB50: .word 0x00000DA8
	thumb_func_end ovy216_21bdb28

	thumb_func_start ovy216_21bdb54
ovy216_21bdb54: ; 0x021BDB54
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0xca
	mov r2, #0x28
	bl sub_02040664
	cmp r0, #0
	beq _021BDB6C
	mov r0, #0xc
	str r0, [r4]
_021BDB6C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bdb54

	thumb_func_start ovy216_21bdb70
ovy216_21bdb70: ; 0x021BDB70
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0xd8
	add r0, #0xdc
	ldr r2, [r2]
	ldr r0, [r0]
	ldr r1, _021BDB94 ; =0x0000280B
	add r2, r2, #4
	mov r3, #4
	bl ovy216_21bba4c
	cmp r0, #0
	beq _021BDB90
	mov r0, #0xd
	str r0, [r4]
_021BDB90:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021BDB94: .word 0x0000280B
	thumb_func_end ovy216_21bdb70

	thumb_func_start ovy216_21bdb98
ovy216_21bdb98: ; 0x021BDB98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021BD9B4
	bl sub_0217CF80
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	lsl r1, r1, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _021BDBD8 ; =0x0000280F
	ldr r3, _021BDBDC ; =0x00000594
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02042C9C
	cmp r0, #0
	beq _021BDBD2
	mov r0, #0xe
	str r0, [r5]
_021BDBD2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BDBD8: .word 0x0000280F
_021BDBDC: .word 0x00000594
	thumb_func_end ovy216_21bdb98

	thumb_func_start ovy216_21bdbe0
ovy216_21bdbe0: ; 0x021BDBE0
	push {r4, lr}
	add r4, r0, #0
	bl sub_021C0690
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021BDC20
	add r0, r4, #0
	bl ovy216_21c07b4
	cmp r0, #1
	bne _021BDC0C
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDC24 ; =0x0000280D
	mov r2, #0
	mov r3, #0
	bl ovy216_21bba4c
	mov r0, #0x2d
	b _021BDC1E
_021BDC0C:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDC28 ; =0x0000280E
	mov r2, #0
	mov r3, #0
	bl ovy216_21bba4c
	mov r0, #0xf
_021BDC1E:
	str r0, [r4]
_021BDC20:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021BDC24: .word 0x0000280D
_021BDC28: .word 0x0000280E
	thumb_func_end ovy216_21bdbe0

	thumb_func_start ovy216_21bdc2c
ovy216_21bdc2c: ; 0x021BDC2C
	push {r4, lr}
	add r4, r0, #0
	bl sub_021C0818
	cmp r0, #1
	bne _021BDC3C
	mov r0, #0x2d
	b _021BDC4A
_021BDC3C:
	add r0, r4, #0
	bl sub_021C07F8
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021BDC4C
	mov r0, #0x10
_021BDC4A:
	str r0, [r4]
_021BDC4C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bdc2c

	thumb_func_start ovy216_21bdc50
ovy216_21bdc50: ; 0x021BDC50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0x18
	bl ovy216_21c0550
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r2, _021BDCE4 ; =0x021C0E44
	str r0, [r7, #0x10]
	ldr r1, [r5, #0x30]
	mov r0, #0xa
	add r3, r1, #0
	str r1, [r7, #0x14]
	mul r3, r0
	ldr r0, [r5, #0x2c]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	str r0, [r7, #4]
_021BDC78:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021C060C
	cmp r0, #0
	beq _021BDCAA
	add r0, r5, #0
	lsl r6, r4, #2
	bl sub_021BD9B4
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CF60
	add r1, r5, r6
	add r1, #0x90
	str r0, [r1]
	add r0, r5, r6
	add r1, r5, r6
	add r0, #0x90
	add r1, #0xa4
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_02008BA0
_021BDCAA:
	add r4, r4, #1
	cmp r4, #5
	blt _021BDC78
	add r0, r5, #0
	bl ovy216_21bde10
	ldr r0, [r7, #4]
	lsl r1, r0, #0xc
	mov r0, #0x12
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x11
	str r0, [r5]
	ldr r0, _021BDCE8 ; =0x00000485
	ldr r1, _021BDCEC ; =0x0000FFFF
	bl sub_02005DF4
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	ldr r0, [r0, #0x14]
	str r1, [r0, #0x14]
	add r0, r5, #0
	bl ovy216_21bf1a8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BDCE4: .word 0x021C0E44
_021BDCE8: .word 0x00000485
_021BDCEC: .word 0x0000FFFF
	thumb_func_end ovy216_21bdc50

	thumb_func_start ovy216_21bdcf0
ovy216_21bdcf0: ; 0x021BDCF0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	sub r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, #0
	ble _021BDD06
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021BDD06:
	mov r1, #0xf
	str r1, [r5, #0xc]
	bl sub_021C0564
	add r4, r0, #0
	ldr r3, [r4, #0x14]
	ldr r1, [r4, #0x10]
	mov r0, #0xa
	add r6, r3, #0
	lsl r2, r1, #1
	mul r6, r0
	ldr r0, _021BDD78 ; =0x021C0E80
	lsl r1, r1, #2
	add r1, r5, r1
	add r0, r0, r6
	add r1, #0x7e
	ldrh r0, [r2, r0]
	add r2, r5, r2
	ldrh r1, [r1]
	add r2, #0x60
	strh r0, [r2]
	ldr r2, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	mov r0, #0x2e
	lsl r0, r0, #4
	add r3, r5, r0
	mov r0, #0xb4
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #8]
	ldr r3, [r4]
	add r0, r5, #0
	bl ovy216_21bfaac
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	blx sub_0208D65C
	str r1, [r4, #0x10]
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021BDD70
	mov r0, #0
	str r0, [r5, #0xc]
	mov r0, #0x12
	str r0, [r5]
_021BDD70:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021BDD78: .word 0x021C0E80
	thumb_func_end ovy216_21bdcf0

	thumb_func_start ovy216_21bdd7c
ovy216_21bdd7c: ; 0x021BDD7C
	push {r4, r5, r6, r7}
	mov r6, #0x1a
	lsl r6, r6, #4
	add r1, r0, r6
	ldr r4, [r0, #0x30]
	mov r2, #0
	mov r3, #0
	mov r5, #0xb4
	sub r6, #0x58
_021BDD8E:
	add r7, r2, #0
	mul r7, r5
	add r7, r1, r7
	ldr r7, [r7, r6]
	cmp r7, #1
	bne _021BDD9C
	add r3, r3, #1
_021BDD9C:
	add r2, r2, #1
	cmp r2, r4
	blt _021BDD8E
	cmp r3, r4
	bne _021BDDB0
	mov r1, #0x13
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_021BDDB0:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy216_21bdd7c

	thumb_func_start ovy216_21bddb8
ovy216_21bddb8: ; 0x021BDDB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _021BDDDA
	mov r0, #0
	str r0, [r4, #0xc]
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BDDD6
	mov r0, #0x14
	b _021BDDD8
_021BDDD6:
	mov r0, #0x15
_021BDDD8:
	str r0, [r4]
_021BDDDA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bddb8

	thumb_func_start ovy216_21bdde0
ovy216_21bdde0: ; 0x021BDDE0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #4
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BDE0C ; =0x00002805
	add r2, sp, #0
	mov r3, #2
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDE04
	mov r0, #0x16
	str r0, [r4]
_021BDE04:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021BDE0C: .word 0x00002805
	thumb_func_end ovy216_21bdde0

	thumb_func_start ovy216_21bde10
ovy216_21bde10: ; 0x021BDE10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_0200F6F4
	add r7, r0, #0
	mov r4, #0
_021BDE28:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021BDE4E
	bl sub_0203FFC4
	cmp r4, r0
	beq _021BDE4E
	add r0, r5, r6
	add r0, #0x90
	ldr r0, [r0]
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
_021BDE4E:
	add r4, r4, #1
	cmp r4, #5
	blt _021BDE28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bde10

	thumb_func_start ovy216_21bde58
ovy216_21bde58: ; 0x021BDE58
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_021C0568
	cmp r0, #1
	bne _021BDE6E
	mov r0, #0x16
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021BDE6E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21bde58

	thumb_func_start ovy216_21bde74
ovy216_21bde74: ; 0x021BDE74
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0xcb
	mov r2, #0x28
	bl sub_02040624
	mov r0, #0x17
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bde74

	thumb_func_start ovy216_21bde8c
ovy216_21bde8c: ; 0x021BDE8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0xcb
	mov r2, #0x28
	bl sub_02040664
	cmp r0, #0
	beq _021BDEA4
	mov r0, #0x18
	str r0, [r4]
_021BDEA4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bde8c

	thumb_func_start ovy216_21bdea8
ovy216_21bdea8: ; 0x021BDEA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy216_21c0428
	add r0, r4, #0
	bl ovy216_21c0140
	mov r0, #0x19
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bdea8

	thumb_func_start ovy216_21bdec0
ovy216_21bdec0: ; 0x021BDEC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x5f
	bge _021BDED2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BDED2:
	ldr r0, [r5, #0x30]
	mov r4, #0
	cmp r0, #0
	ble _021BDEEA
_021BDEDA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy216_21bf31c
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021BDEDA
_021BDEEA:
	mov r0, #0
	mov r1, #0x1a
	str r0, [r5, #0xc]
	str r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bdec0

	thumb_func_start ovy216_21bdef4
ovy216_21bdef4: ; 0x021BDEF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203FFC4
	mov r0, #0x1b
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21bdef4

	thumb_func_start ovy216_21bdf04
ovy216_21bdf04: ; 0x021BDF04
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_021C04C0
	add r5, r0, #0
	cmp r5, #1
	bne _021BDF28
	add r0, r4, #0
	bl sub_021C00B4
	cmp r0, #0
	bne _021BDF28
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _021BDF28
	mov r0, #1
	str r0, [r4, #0x20]
_021BDF28:
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #1
	bne _021BDF3C
	mov r0, #0x1c
	str r0, [r4]
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021BDF3C:
	cmp r5, #0
	bne _021BDFA0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021BDF56
	add r0, r4, #0
	bl sub_021C00B4
	cmp r0, #0
	bne _021BDF56
	add r0, r4, #0
	bl sub_021C0098
_021BDF56:
	add r0, r4, #0
	bl sub_021C02A4
	cmp r0, #0
	bne _021BDF7E
	add r0, r4, #0
	bl ovy216_21bf368
	cmp r0, #1
	bne _021BDF7E
	add r0, r4, #0
	bl sub_021C00B4
	cmp r0, #0
	bne _021BDF78
	mov r0, #1
	str r0, [r4, #0x38]
_021BDF78:
	add r0, r4, #0
	bl sub_021C02B0
_021BDF7E:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021BDFA0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r2, r4, #0
	ldr r0, [r0, #0x18]
	ldr r1, _021BE060 ; =0x00002807
	add r2, #0x38
	mov r3, #1
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BDFA0
	mov r0, #0
	str r0, [r4, #0x38]
_021BDFA0:
	add r5, r4, #0
	add r5, #0xe0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BDFD4
	mov r0, #0x4b
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	cmp r1, r0
	ldr r1, [r5, #0x48]
	bge _021BDFC6
	mov r0, #7
	add r1, #0x5f
	lsl r0, r0, #0xc
	str r1, [r5, #0x48]
	cmp r1, r0
	blt _021BDFD4
	b _021BDFD2
_021BDFC6:
	mov r0, #1
	sub r1, #0x5f
	lsl r0, r0, #0xe
	str r1, [r5, #0x48]
	cmp r1, r0
	bge _021BDFD4
_021BDFD2:
	str r0, [r5, #0x48]
_021BDFD4:
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BE02E
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	str r0, [sp]
	ldr r1, [r4, #0x20]
	add r0, sp, #0
	strh r1, [r0, #0x12]
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ble _021BE01E
	add r1, sp, #0
	mov r5, #0xb4
	sub r0, #0x40
_021BE000:
	add r2, r3, #0
	mul r2, r5
	add r2, r4, r2
	ldr r2, [r2, r0]
	asr r6, r2, #0xb
	lsr r6, r6, #0x14
	add r6, r2, r6
	asr r2, r6, #0xc
	lsl r6, r3, #1
	add r6, r1, r6
	strh r2, [r6, #8]
	ldr r2, [r4, #0x30]
	add r3, r3, #1
	cmp r3, r2
	blt _021BE000
_021BE01E:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BE064 ; =0x00002808
	add r2, sp, #0
	mov r3, #0x14
	bl ovy216_21bba4c
_021BE02E:
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BE05A
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	bl sub_021C00A8
	cmp r0, #1
	bne _021BE052
	add r4, #0xe0
	add r0, r4, #0
	lsl r1, r5, #1
	bl sub_021BF4D8
	b _021BE05A
_021BE052:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy216_21c04a8
_021BE05A:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BE060: .word 0x00002807
_021BE064: .word 0x00002808
	thumb_func_end ovy216_21bdf04

	thumb_func_start ovy216_21be068
ovy216_21be068: ; 0x021BE068
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ovy216_21c0428
	add r0, r4, #0
	bl ovy216_21bf8e8
	str r0, [r4, #0x28]
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BE096
	bl sub_0203FFC4
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	bne _021BE092
	mov r0, #0x1d
	b _021BE098
_021BE092:
	mov r0, #0x1e
	b _021BE098
_021BE096:
	mov r0, #0x1f
_021BE098:
	str r0, [r4]
	ldr r0, _021BE0A4 ; =0x00000728
	bl GFL_SndSEPlay
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_021BE0A4: .word 0x00000728
	thumb_func_end ovy216_21be068

	thumb_func_start ovy216_21be0a8
ovy216_21be0a8: ; 0x021BE0A8
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #0xe
	bl ovy216_21c0864
	add r0, r4, #0
	bl ovy216_21bf8e8
	str r0, [r4, #0x28]
	bl sub_0203FFC4
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	beq _021BE0CC
	mov r0, #0x1e
	str r0, [r4]
_021BE0CC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be0a8

	thumb_func_start ovy216_21be0d0
ovy216_21be0d0: ; 0x021BE0D0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	ldr r2, [r6, #0x30]
	ldr r1, [r0, #0x1c]
	ldr r3, [r6, #0x2c]
	mov r0, #0xa
	mul r0, r2
	ldr r4, _021BE140 ; =0x021C0E80
	lsl r2, r3, #1
	add r0, r4, r0
	ldrh r0, [r2, r0]
	mov r5, #1
	lsl r5, r5, #0xe
	lsl r4, r0, #0xc
	str r1, [sp]
	sub r2, r4, r1
	bpl _021BE0FE
	mov r0, #0x5a
	lsl r0, r0, #0xe
	add r0, r4, r0
	sub r2, r0, r1
_021BE0FE:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	bgt _021BE108
	asr r5, r5, #1
_021BE108:
	cmp r2, r5
	bge _021BE10E
	add r5, r2, #0
_021BE10E:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy216_21c0864
	add r0, sp, #0
	add r1, r5, #0
	bl ovy216_21c0480
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r0, r0, #0xc
	cmp r1, r0
	bne _021BE138
	mov r0, #0x1f
	str r0, [r6]
_021BE138:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BE140: .word 0x021C0E80
	thumb_func_end ovy216_21be0d0

	thumb_func_start ovy216_21be144
ovy216_21be144: ; 0x021BE144
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0xcc
	mov r2, #0x28
	bl sub_02040624
	mov r0, #0x20
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be144

	thumb_func_start ovy216_21be15c
ovy216_21be15c: ; 0x021BE15C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0xcc
	mov r2, #0x28
	bl sub_02040664
	cmp r0, #0
	beq _021BE180
	bl sub_0203FFC4
	cmp r0, #0
	bne _021BE17C
	mov r0, #0x21
	b _021BE17E
_021BE17C:
	mov r0, #0x22
_021BE17E:
	str r0, [r4]
_021BE180:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be15c

	thumb_func_start ovy216_21be184
ovy216_21be184: ; 0x021BE184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0x58]
	mov r4, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, [r5, #0x30]
	str r4, [r5, #0x1c]
	cmp r0, #0
	ble _021BE1EC
	mov r0, #0x2e
	lsl r0, r0, #4
	add r7, r5, #0
	add r0, r5, r0
	add r7, #0x1c
	str r0, [sp]
_021BE1AE:
	mov r0, #0xb4
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp]
	add r6, r0, r1
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0x60
	ldrh r1, [r0]
	ldr r0, [r6, #0x10]
	lsl r2, r0, #1
	add r0, sp, #4
	add r0, r0, r2
	strh r1, [r0, #4]
	ldr r2, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ovy216_21c06d4
	cmp r0, #1
	bne _021BE1E4
	ldr r2, [r6, #0xc]
	mov r1, #1
	ldr r0, [r7]
	lsl r1, r2
	orr r0, r1
	str r0, [r7]
_021BE1E4:
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021BE1AE
_021BE1EC:
	ldr r1, [r5, #0x1c]
	add r0, sp, #4
	strh r1, [r0, #2]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, _021BE210 ; =0x0000280C
	add r2, sp, #4
	mov r3, #0x10
	bl ovy216_21bba4c
	cmp r0, #1
	bne _021BE20A
	mov r0, #0x23
	str r0, [r5]
_021BE20A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BE210: .word 0x0000280C
	thumb_func_end ovy216_21be184

	thumb_func_start ovy216_21be214
ovy216_21be214: ; 0x021BE214
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021BE288
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	add r3, r4, #0
	add r3, #0x6c
	lsl r1, r0, #0xc
	mov r0, #0x47
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	mov r2, #0
	str r1, [r4, #0x58]
	cmp r0, #0
	ble _021BE26C
	mov r0, #0x2e
	lsl r0, r0, #4
	add r1, r4, r0
	mov r5, #0xb4
_021BE242:
	add r0, r2, #0
	mul r0, r5
	add r0, r1, r0
	ldr r6, [r0, #0x10]
	lsl r6, r6, #1
	add r6, r3, r6
	ldrh r6, [r6, #4]
	lsl r6, r6, #0xc
	str r6, [r0, #0x1c]
	ldr r0, [r0, #0x10]
	lsl r6, r2, #1
	lsl r0, r0, #1
	add r0, r3, r0
	add r6, r4, r6
	ldrh r0, [r0, #4]
	add r6, #0x60
	add r2, r2, #1
	strh r0, [r6]
	ldr r0, [r4, #0x30]
	cmp r2, r0
	blt _021BE242
_021BE26C:
	ldrh r0, [r3, #2]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ovy216_21bf414
	add r0, r4, #0
	bl ovy216_21bf648
	add r0, r4, #0
	bl ovy216_21bf8e8
	str r0, [r4, #0x28]
	mov r0, #0x23
	str r0, [r4]
_021BE288:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy216_21be214

	thumb_func_start ovy216_21be28c
ovy216_21be28c: ; 0x021BE28C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	mov r6, #0
	ldr r4, [r0, #0x10]
	ldr r0, [r5, #0x30]
	str r6, [r5, #0x5c]
	cmp r0, #0
	ble _021BE2CC
_021BE29E:
	mov r0, #0xb4
	mul r0, r4
	add r1, r5, r0
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r3, [r1, r0]
	add r0, r5, #0
	lsl r1, r3, #2
	add r1, r5, r1
	add r1, #0xa4
	ldr r1, [r1]
	add r2, r6, #0
	bl ovy216_21bf2f4
	ldr r7, [r5, #0x30]
	add r0, r4, #1
	add r1, r7, #0
	blx sub_0208D65C
	add r6, r6, #1
	add r4, r1, #0
	cmp r6, r7
	blt _021BE29E
_021BE2CC:
	mov r0, #0
	mov r1, #0x24
	str r0, [r5, #0xc]
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21be28c

	thumb_func_start ovy216_21be2d8
ovy216_21be2d8: ; 0x021BE2D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x78
	bge _021BE2EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BE2EA:
	ldr r0, [r5, #0x30]
	mov r4, #0
	str r4, [r5, #0xc]
	cmp r0, #0
	ble _021BE304
_021BE2F4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy216_21bf31c
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021BE2F4
_021BE304:
	ldr r2, [r5, #0x28]
	add r0, r5, #0
	ldr r2, [r2, #0xc]
	mov r1, #2
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0x90
	ldr r2, [r2]
	bl ovy216_21bf054
	ldr r0, _021BE328 ; =0x00000516
	bl ovy216_21c082c
	mov r0, #0x25
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BE328: .word 0x00000516
	thumb_func_end ovy216_21be2d8

	thumb_func_start ovy216_21be32c
ovy216_21be32c: ; 0x021BE32C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021BE33C
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021BE34C
_021BE33C:
	bl ovy216_21c0848
	cmp r0, #0
	bne _021BE34C
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x26
	str r0, [r4]
_021BE34C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be32c

	thumb_func_start ovy216_21be350
ovy216_21be350: ; 0x021BE350
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy216_21c0388
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x1c]
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	bne _021BE370
	mov r0, #0x2a
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BE370:
	ldr r0, [r5, #0x30]
	lsl r6, r0, #3
	ldr r0, _021BE3DC ; =0x021C0DD8
	ldr r4, [r0, r6]
	ldr r0, _021BE3E0 ; =0x021C0DDC
	ldr r7, [r0, r6]
	ldr r0, _021BE3E4 ; =0x0000FFFF
	bl sub_02005748
	sub r1, r7, r4
	add r1, r1, #1
	blx sub_0208D868
	ldr r0, _021BE3DC ; =0x021C0DD8
	add r4, r4, r1
	ldr r0, [r0, r6]
	cmp r4, r0
	bhs _021BE398
	add r4, r0, #0
	b _021BE39E
_021BE398:
	cmp r4, r7
	bls _021BE39E
	add r4, r7, #0
_021BE39E:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ovy216_21bf110
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_02017354
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x72
	bl sub_02008268
	add r4, r0, #0
	ldr r0, _021BE3E8 ; =0x00000516
	bl ovy216_21c082c
	cmp r4, #1
	bne _021BE3D2
	mov r0, #0x27
	b _021BE3D4
_021BE3D2:
	mov r0, #0x28
_021BE3D4:
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE3DC: .word 0x021C0DD8
_021BE3E0: .word 0x021C0DDC
_021BE3E4: .word 0x0000FFFF
_021BE3E8: .word 0x00000516
	thumb_func_end ovy216_21be350

	thumb_func_start ovy216_21be3ec
ovy216_21be3ec: ; 0x021BE3EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0xb4
	bge _021BE3FA
	add r0, r0, #1
	str r0, [r4, #0xc]
_021BE3FA:
	bl ovy216_21c0848
	cmp r0, #0
	bne _021BE40A
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x2a
	str r0, [r4]
_021BE40A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21be3ec

	thumb_func_start ovy216_21be410
ovy216_21be410: ; 0x021BE410
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0xb4
	bge _021BE420
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021BE438
_021BE420:
	bl ovy216_21c0848
	cmp r0, #0
	bne _021BE438
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x29
	str r0, [r4]
	add r0, r4, #0
	mov r1, #4
	bl ovy216_21befd4
_021BE438:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be410
_021BE43C:
	.byte 0xC1, 0x68, 0xB4, 0x29
	.byte 0x02, 0xDA, 0x49, 0x1C, 0xC1, 0x60, 0x03, 0xE0, 0x00, 0x21, 0xC1, 0x60, 0x2A, 0x21, 0x01, 0x60
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy216_21be454
ovy216_21be454: ; 0x021BE454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0x5a
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x10]
	bl sub_020095A0
	add r0, r5, #0
	mov r1, #0xb
	bl ovy216_21befd4
	add r0, r4, #0
	mov r1, #0xcd
	mov r2, #0x28
	bl sub_02040624
	mov r0, #0x2b
	str r0, [r5]
	mov r0, #8
	bl sub_0203D254
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21be454

	thumb_func_start ovy216_21be490
ovy216_21be490: ; 0x021BE490
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0xcd
	mov r2, #0x28
	bl sub_02040664
	cmp r0, #0
	beq _021BE4E6
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	bl ovy216_21c0628
	add r1, r5, #0
	add r1, #0xd8
	ldr r1, [r1]
	mov r0, #0x72
	ldr r1, [r1, #0x14]
	mov r6, #0x72
	ldr r1, [r1, #4]
	bl sub_02012EE4
	mov r4, #0xda
	lsl r4, r4, #4
	str r0, [r5, r4]
	add r0, r4, #0
	add r1, r4, #0
	str r6, [sp]
	sub r0, #8
	sub r1, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035604
	add r4, #8
	str r0, [r5, r4]
	mov r0, #0x2c
	str r0, [r5]
_021BE4E6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy216_21be490

	thumb_func_start ovy216_21be4ec
ovy216_21be4ec: ; 0x021BE4EC
	push {r4, r5, r6, lr}
	mov r6, #0xda
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	bl sub_02012F5C
	add r4, r0, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021BE522
	bl sub_02012154
	mov r0, #1
	bl sub_02011CFC
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r0, #0
	pop {r4, r5, r6, pc}
_021BE522:
	cmp r4, #0
	beq _021BE542
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0203580C
	add r0, r6, #0
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
	ldr r0, [r5, r6]
	bl sub_02012F8C
	mov r0, #0x2f
	str r0, [r5]
_021BE542:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21be4ec

	thumb_func_start ovy216_21be548
ovy216_21be548: ; 0x021BE548
	push {r4, lr}
	mov r1, #0xc
	add r4, r0, #0
	bl ovy216_21befd4
	mov r0, #0x2e
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21be548
_021BE55C:
	.byte 0xC1, 0x68, 0x49, 0x1C
	.byte 0xC1, 0x60, 0xB4, 0x29, 0x05, 0xDB, 0x00, 0x21, 0xC1, 0x60, 0x2F, 0x21, 0x01, 0x60, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy216_21be578
ovy216_21be578: ; 0x021BE578
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _021BE58E
	mov r1, #0xce
	mov r2, #0x28
	bl sub_02040624
_021BE58E:
	add r0, r4, #0
	mov r1, #0xa
	bl ovy216_21befd4
	mov r0, #0x30
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21be578

	thumb_func_start ovy216_21be5a0
ovy216_21be5a0: ; 0x021BE5A0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02040440
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _021BE5F0
	mov r1, #0xce
	mov r2, #0x28
	mov r6, #0x28
	bl sub_02040664
	cmp r0, #0
	beq _021BE612
	ldr r4, _021BE618 ; =0x00000D98
	mov r0, #0x72
	add r1, r4, #0
	str r0, [sp]
	sub r1, #0xa8
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035604
	add r4, #0x10
	str r0, [r5, r4]
	mov r0, #0
	bl sub_02042E9C
	lsl r0, r6, #8
	bl sub_02040C64
	add r0, r5, #0
	bl sub_021BD9B4
	bl sub_0217CF54
	b _021BE60E
_021BE5F0:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0xb4
	blt _021BE612
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	ldr r1, [r1]
	str r0, [r5, #0xc]
	ldr r1, [r1, #0x3c]
	cmp r1, #0
	bne _021BE60E
	bl sub_02042E94
_021BE60E:
	mov r0, #0x31
	str r0, [r5]
_021BE612:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BE618: .word 0x00000D98
	thumb_func_end ovy216_21be5a0

	thumb_func_start ovy216_21be61c
ovy216_21be61c: ; 0x021BE61C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021BD9B4
	bl sub_0217CF5C
	cmp r0, #0
	beq _021BE640
	ldr r5, _021BE644 ; =0x00000DA8
	ldr r0, [r4, r5]
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #0x32
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BE640:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BE644: .word 0x00000DA8
	thumb_func_end ovy216_21be61c

	thumb_func_start ovy216_21be648
ovy216_21be648: ; 0x021BE648
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x33
	str r0, [r4]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy216_21be648

	thumb_func_start ovy216_21be670
ovy216_21be670: ; 0x021BE670
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021BE684
	mov r0, #0x34
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021BE684:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy216_21be670
_021BE688:
	.byte 0x02, 0x20, 0x70, 0x47

	thumb_func_start ovy216_21be68c
ovy216_21be68c: ; 0x021BE68C
	push {r3, lr}
	ldr r0, _021BE6A0 ; =0x00000D78
	ldr r0, [r1, r0]
	bl sub_020275F8
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r3, pc}
	.align 2, 0
_021BE6A0: .word 0x00000D78
	thumb_func_end ovy216_21be68c

	thumb_func_start ovy216_21be6a4
ovy216_21be6a4: ; 0x021BE6A4
	push {r4, lr}
	add r4, r0, #0
	bl ovy216_21be828
	add r0, r4, #0
	bl ovy216_21be97c
	add r0, r4, #0
	bl ovy216_21bea04
	add r0, r4, #0
	bl ovy216_21bed68
	add r0, r4, #0
	bl ovy216_21bede8
	add r0, r4, #0
	bl ovy216_21beb18
	add r0, r4, #0
	bl ovy216_21bee9c
	add r0, r4, #0
	bl ovy216_21bee14
	add r0, r4, #0
	bl ovy216_21be83c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21be6a4

	thumb_func_start ovy216_21be6e0
ovy216_21be6e0: ; 0x021BE6E0
	push {r4, lr}
	add r4, r0, #0
	bl ovy216_21be8b8
	add r0, r4, #0
	bl ovy216_21bee6c
	add r0, r4, #0
	bl ovy216_21bef78
	add r0, r4, #0
	bl ovy216_21bece4
	add r0, r4, #0
	bl ovy216_21beda0
	add r0, r4, #0
	bl sub_021BF358
	pop {r4, pc}
	thumb_func_end ovy216_21be6e0

	thumb_func_start ovy216_21be708
ovy216_21be708: ; 0x021BE708
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0x18
	ldr r4, _021BE81C ; =0x00000D54
	str r0, [sp, #0xc]
	ldr r0, [r5, r4]
	add r1, sp, #0xc
	bl sub_0204A6BC
	bl sub_02049A98
	ldr r0, [r5, r4]
	bl sub_0204A638
	bl sub_02049AF0
	ldr r6, _021BE820 ; =0xFFFFF000
	mov r0, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	mov r7, #0
	bl sub_020658EC
	lsr r6, r6, #0x11
	mov r0, #0
	add r1, r6, #0
	bl sub_0206591C
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0206592C
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0206594C
	add r0, r5, #0
	bl ovy216_21bf53c
	add r0, r5, #0
	bl ovy216_21bf478
	add r0, r5, #0
	bl ovy216_21bf6ec
	bl sub_02049AA0
	bl sub_0204B794
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02021A3C
	add r0, r4, #0
	sub r0, #0x1c
	ldr r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x48
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021BE7B2
	add r0, r4, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021BE7B2
	add r0, r4, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	sub r4, #0x48
	strb r7, [r5, r4]
_021BE7B2:
	mov r0, #0xd1
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #8]
	mov r0, #0xd1
	lsl r0, r0, #4
	str r0, [sp, #4]
	add r0, #0x28
	str r0, [sp, #4]
	mov r0, #0xd1
	lsl r0, r0, #4
	add r0, r0, #4
	mov r6, #0
	str r0, [sp]
_021BE7CE:
	ldr r0, [sp, #4]
	ldr r7, [r5, r0]
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, [sp]
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021BE804
	mov r0, #0xd1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021BE804
	mov r0, #0xd1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	ldr r0, [sp, #8]
	mov r1, #0
	strb r1, [r4, r0]
_021BE804:
	add r6, r6, #1
	cmp r6, #5
	blt _021BE7CE
	ldr r0, _021BE824 ; =0x00000DA8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BE816
	bl sub_02035884
_021BE816:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE81C: .word 0x00000D54
_021BE820: .word 0xFFFFF000
_021BE824: .word 0x00000DA8
	thumb_func_end ovy216_21be708

	thumb_func_start ovy216_21be828
ovy216_21be828: ; 0x021BE828
	push {r3, lr}
	ldr r0, _021BE838 ; =0x021C0D48
	bl sub_02046C40
	mov r0, #0x72
	bl sub_02048080
	pop {r3, pc}
	.align 2, 0
_021BE838: .word 0x021C0D48
	thumb_func_end ovy216_21be828

	thumb_func_start ovy216_21be83c
ovy216_21be83c: ; 0x021BE83C
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0
	mov r1, #1
	mov r4, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	ldr r0, _021BE8B4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	mov r3, #0xb
	bic r2, r1
	add r1, r2, #0
	orr r1, r4
	strh r1, [r0]
	mov r1, #0xa
	str r1, [sp]
	add r0, #0x48
	mov r1, #4
	mov r2, #0x28
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BE8B4: .word 0x04000008
	thumb_func_end ovy216_21be83c

	thumb_func_start ovy216_21be8b8
ovy216_21be8b8: ; 0x021BE8B8
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	pop {r3, pc}
	thumb_func_end ovy216_21be8b8

	thumb_func_start ovy216_21be90c
ovy216_21be90c: ; 0x021BE90C
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _021BE964 ; =0x04000060
	ldr r4, _021BE968 ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r4
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r4, #2
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021BE96C ; =0x0000CFFB
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r4, #2
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r4, #2
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _021BE970 ; =0x021C0C34
	bl G3X_SetEdgeColorTable
	lsr r0, r4, #0x11
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _021BE974 ; =0xBFFF0000
	ldr r0, _021BE978 ; =0x04000580
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BE964: .word 0x04000060
_021BE968: .word 0xFFFFCFFD
_021BE96C: .word 0x0000CFFB
_021BE970: .word 0x021C0C34
_021BE974: .word 0xBFFF0000
_021BE978: .word 0x04000580
	thumb_func_end ovy216_21be90c

	thumb_func_start ovy216_21be97c
ovy216_21be97c: ; 0x021BE97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0x35
	lsl r1, r1, #6
	add r5, r0, r1
	mov r4, #0
	str r4, [sp]
	mov r0, #0x72
	str r0, [sp, #4]
	ldr r0, _021BE9EC ; =ovy216_21be90c
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	mov r3, #1
	mov r7, #1
	bl sub_02048D28
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	ldr r6, _021BE9F0 ; =0x021C0EC4
	add r3, sp, #0x20
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xc
	str r0, [r3]
	ldr r3, _021BE9F4 ; =0x02094A3C
	str r4, [sp]
	lsl r0, r7, #0xc
	str r0, [sp, #4]
	lsl r0, r7, #0x16
	str r0, [sp, #8]
	ldr r0, _021BE9F8 ; =0x021C0BA4
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, _021BE9FC ; =0x021C0BB0
	mov r2, #0xe
	str r0, [sp, #0x18]
	mov r0, #0x72
	str r0, [sp, #0x1c]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021BEA00 ; =0x00001555
	mov r0, #0
	bl sub_0204A5C8
	str r0, [r5, #0x14]
	bl sub_0204A638
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BE9EC: .word ovy216_21be90c
_021BE9F0: .word 0x021C0EC4
_021BE9F4: .word 0x02094A3C
_021BE9F8: .word 0x021C0BA4
_021BE9FC: .word 0x021C0BB0
_021BEA00: .word 0x00001555
	thumb_func_end ovy216_21be97c

	thumb_func_start ovy216_21bea04
ovy216_21bea04: ; 0x021BEA04
	push {r4, lr}
	sub sp, #0xb0
	mov r0, #0x72
	bl sub_020444A4
	ldr r2, _021BEAFC ; =0x04000304
	ldr r4, _021BEB00 ; =0x021C0ED0
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	add r3, sp, #0xa0
	orr r0, r1
	strh r0, [r2]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021BEB04 ; =0x021C0EF0
	add r3, sp, #0x80
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
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x72
	bl sub_020450CC
	ldr r4, _021BEB08 ; =0x021C0F10
	add r3, sp, #0x60
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
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	ldr r4, _021BEB0C ; =0x021C0F30
	add r3, sp, #0x40
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
	bl sub_02045738
	ldr r4, _021BEB10 ; =0x021C0F50
	add r3, sp, #0x20
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
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045738
	ldr r4, _021BEB14 ; =0x021C0F70
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
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r0, #7
	bl sub_02045738
	add sp, #0xb0
	pop {r4, pc}
	nop
_021BEAFC: .word 0x04000304
_021BEB00: .word 0x021C0ED0
_021BEB04: .word 0x021C0EF0
_021BEB08: .word 0x021C0F10
_021BEB0C: .word 0x021C0F30
_021BEB10: .word 0x021C0F50
_021BEB14: .word 0x021C0F70
	thumb_func_end ovy216_21bea04

	thumb_func_start ovy216_21beb18
ovy216_21beb18: ; 0x021BEB18
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x11
	mov r2, #0
	add r5, r0, #0
	mov r7, #0
	bl ovy216_21c04d8
	ldr r4, _021BECDC ; =0x00000D64
	add r6, r0, #0
	add r1, r5, r4
	bl sub_020602D8
	mov r0, #0x40
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r5, r4]
	add r0, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	mov r2, #0
	mov r3, #0
	bl sub_02026E64
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	bl ovy216_21c04d8
	add r1, r5, r4
	add r6, r0, #0
	bl sub_020602D8
	mov r0, #0x40
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r5, r4]
	add r0, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	mov r2, #1
	mov r3, #0
	bl sub_02026E64
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	str r7, [sp]
	add r0, #0x14
	ldr r0, [r5, r0]
	ldr r2, _021BECE0 ; =0x0000FFFF
	mov r1, #1
	mov r3, #8
	bl sub_020278AC
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy216_21c04d8
	sub r1, r4, #4
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060278
	sub r0, r4, #4
	ldr r2, [r5, r0]
	mov r0, #3
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x16
	mov r2, #0
	bl ovy216_21c04d8
	sub r1, r4, #4
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060278
	sub r0, r4, #4
	ldr r2, [r5, r0]
	mov r0, #6
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0
	bl ovy216_21c04d8
	sub r1, r4, #4
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060278
	sub r0, r4, #4
	ldr r2, [r5, r0]
	mov r0, #7
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ovy216_21c04d8
	add r1, r4, #0
	sub r1, #8
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060338
	add r0, r4, #0
	sub r0, #8
	ldr r2, [r5, r0]
	mov r0, #2
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #2
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ovy216_21c04d8
	add r1, r4, #0
	sub r1, #8
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060338
	add r0, r4, #0
	sub r0, #8
	ldr r2, [r5, r0]
	mov r0, #3
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #3
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x18
	add r2, r7, #0
	bl ovy216_21c04d8
	add r1, r4, #0
	sub r1, #8
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060338
	add r0, r4, #0
	sub r0, #8
	ldr r2, [r5, r0]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x17
	add r2, r7, #0
	bl ovy216_21c04d8
	add r1, r4, #0
	sub r1, #8
	add r1, r5, r1
	add r6, r0, #0
	bl sub_02060338
	sub r4, #8
	ldr r2, [r5, r4]
	mov r0, #7
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #7
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BECDC: .word 0x00000D64
_021BECE0: .word 0x0000FFFF
	thumb_func_end ovy216_21beb18

	thumb_func_start ovy216_21bece4
ovy216_21bece4: ; 0x021BECE4
	push {r3, lr}
	bl sub_020480A8
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy216_21bece4

	thumb_func_start ovy216_21bed10
ovy216_21bed10: ; 0x021BED10
	push {r4, r5, r6, lr}
	mov r2, #0
	add r5, r0, #0
	bl ovy216_21c04d8
	ldr r6, _021BED40 ; =0x00000D5C
	add r4, r0, #0
	add r1, r5, r6
	bl sub_02060338
	ldr r2, [r5, r6]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02044F90
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BED40: .word 0x00000D5C
	thumb_func_end ovy216_21bed10

	thumb_func_start sub_021BED44
sub_021BED44: ; 0x021BED44
	ldr r3, _021BED4C ; =ovy216_21bed10
	mov r1, #0x1a
	bx r3
	nop
_021BED4C: .word ovy216_21bed10
	thumb_func_end sub_021BED44

	thumb_func_start sub_021BED50
sub_021BED50: ; 0x021BED50
	ldr r3, _021BED58 ; =ovy216_21bed10
	mov r1, #0x18
	bx r3
	nop
_021BED58: .word ovy216_21bed10
	thumb_func_end sub_021BED50

	thumb_func_start sub_021BED5C
sub_021BED5C: ; 0x021BED5C
	ldr r3, _021BED64 ; =ovy216_21bed10
	mov r1, #0x19
	bx r3
	nop
_021BED64: .word ovy216_21bed10
	thumb_func_end sub_021BED5C

	thumb_func_start ovy216_21bed68
ovy216_21bed68: ; 0x021BED68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x72
	bl sub_02026DC0
	ldr r6, _021BED9C ; =0x00000D78
	mov r4, #1
	str r0, [r5, r6]
	mov r1, #1
	bl sub_0202778C
	lsl r4, r4, #9
	ldr r0, [r5, r6]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x72
	bl sub_02026E04
	ldr r0, [r5, r6]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0x72
	bl sub_02026E04
	pop {r4, r5, r6, pc}
	nop
_021BED9C: .word 0x00000D78
	thumb_func_end ovy216_21bed68

	thumb_func_start ovy216_21beda0
ovy216_21beda0: ; 0x021BEDA0
	push {r3, r4, r5, lr}
	ldr r4, _021BEDC0 ; =0x00000D78
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r5, r4]
	bl sub_02026DE8
	pop {r3, r4, r5, pc}
	nop
_021BEDC0: .word 0x00000D78
	thumb_func_end ovy216_21beda0

	thumb_func_start ovy216_21bedc4
ovy216_21bedc4: ; 0x021BEDC4
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0
	str r1, [sp]
	ldr r1, _021BEDE0 ; =0x00000D78
	lsl r3, r3, #0x18
	ldr r0, [r0, r1]
	ldr r2, _021BEDE4 ; =0x0000FFFF
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_020278AC
	pop {r3, pc}
	nop
_021BEDE0: .word 0x00000D78
_021BEDE4: .word 0x0000FFFF
	thumb_func_end ovy216_21bedc4

	thumb_func_start ovy216_21bede8
ovy216_21bede8: ; 0x021BEDE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BEE08 ; =0x02093F08
	ldr r1, _021BEE0C ; =0x021C0D48
	mov r2, #0x72
	bl sub_0204B6A8
	mov r0, #0x1e
	mov r1, #1
	mov r2, #0x72
	bl sub_0204BF1C
	ldr r1, _021BEE10 ; =0x00000D68
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021BEE08: .word 0x02093F08
_021BEE0C: .word 0x021C0D48
_021BEE10: .word 0x00000D68
	thumb_func_end ovy216_21bede8

	thumb_func_start ovy216_21bee14
ovy216_21bee14: ; 0x021BEE14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb5
	mov r1, #0x72
	mov r7, #0x72
	bl sub_0204AA30
	mov r1, #6
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r7, [sp]
	bl sub_0204B81C
	ldr r4, _021BEE68 ; =0x00000D6C
	mov r1, #0
	str r0, [r5, r4]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0xe
	mov r3, #0x72
	bl sub_0204BDE0
	add r4, #8
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #1
	mov r1, #0x72
	bl sub_02042BA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEE68: .word 0x00000D6C
	thumb_func_end ovy216_21bee14

	thumb_func_start ovy216_21bee6c
ovy216_21bee6c: ; 0x021BEE6C
	push {r3, r4, r5, lr}
	ldr r5, _021BEE98 ; =0x00000D6C
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0204B98C
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0204BE64
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BEE98: .word 0x00000D6C
	thumb_func_end ovy216_21bee6c

	thumb_func_start ovy216_21bee9c
ovy216_21bee9c: ; 0x021BEE9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0xce
	mov r0, #0x72
	lsl r7, r7, #4
	str r0, [sp]
	mov r0, #1
	mov r1, #1
	mov r2, #0xf
	mov r4, #0
	mov r3, #0
	add r6, r5, r7
	bl sub_02024D00
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r7, #0
	add r0, #0x98
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #3
	mov r3, #0x72
	bl sub_02026EE8
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	add r7, #0x98
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	mov r1, #0x17
	mov r2, #5
	mov r3, #0x72
	bl sub_02026EE8
	mov r0, #0x72
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r6, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x2e
	mov r3, #0x72
	bl GFL_MsgSysLoadData
	str r0, [r6, #8]
	mov r0, #0x72
	bl GFL_WordSetSystemCreateDefault
	str r0, [r6, #0xc]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #2
	mov r2, #0x13
	mov r7, #0x1a
	mov r3, #0x1a
	bl BmpWin_CreateDynamic
	add r7, #0xe6
	str r0, [r6, #0x10]
	add r0, r7, #0
	mov r1, #0x72
	bl GFL_StrBufCreate
	str r0, [r6, #0x5c]
	mov r7, #8
_021BEF3E:
	add r0, r7, #0
	mov r1, #0x72
	bl GFL_StrBufCreate
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xa4
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #5
	blt _021BEF3E
	ldr r0, [r6, #0x10]
	mov r1, #0
	str r0, [r6, #0x28]
	add r0, r6, #0
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #0x72
	bl sub_02021998
	str r0, [r6, #0x58]
	add r0, r5, #0
	add r5, #0xd8
	ldr r1, [r5]
	ldr r1, [r1, #8]
	bl ovy216_21bf1dc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bee9c

	thumb_func_start ovy216_21bef78
ovy216_21bef78: ; 0x021BEF78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xce
	lsl r0, r0, #4
	add r4, r5, r0
	ldr r6, [r4, #0x10]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r4, #0x10]
	bl sub_02048210
	add r0, r5, #0
	bl ovy216_21bf244
	ldr r0, [r4, #8]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0xc]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #4]
	bl sub_02022DA8
	ldr r0, [r4, #0x5c]
	bl GFL_StrBufFree
	mov r4, #0
_021BEFBA:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xa4
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #5
	blt _021BEFBA
	bl sub_020480A8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21bef78

	thumb_func_start ovy216_21befd4
ovy216_21befd4: ; 0x021BEFD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #0xce
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r5, [r4, #0x10]
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	mov r7, #1
	bl sub_02024E80
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x5c]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #0x28]
	ldr r6, [r4, #0x58]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C7C
	add r4, #0x2c
	add r0, r5, #0
	strb r7, [r4]
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21befd4

	thumb_func_start ovy216_21bf054
ovy216_21bf054: ; 0x021BF054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	mov r1, #0xce
	lsl r1, r1, #4
	add r4, r0, r1
	add r6, r2, #0
	ldr r5, [r4, #0x10]
	bl sub_021BD9B4
	add r7, r0, #0
	bl sub_0203FFC4
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0217CF60
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r7, #1
	bl GFL_CopyVarForText
	ldr r0, [r4, #0xc]
	mov r1, #2
	add r2, r6, #0
	bl GFL_CopyVarForText
	mov r0, #2
	add r0, #0xfe
	mov r1, #0x72
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0xc]
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x5c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x28]
	ldr r6, [r4, #0x58]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C7C
	add r4, #0x2c
	add r0, r5, #0
	strb r7, [r4]
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bf054

	thumb_func_start ovy216_21bf110
ovy216_21bf110: ; 0x021BF110
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #0xce
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r4, #0xc]
	mov r1, #0
	ldr r5, [r4, #0x10]
	bl LoadItemNameToStrbuf
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x72
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x5c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	mov r7, #1
	bl sub_02024E80
	add r0, r5, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x28]
	ldr r6, [r4, #0x58]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C7C
	add r4, #0x2c
	add r0, r5, #0
	strb r7, [r4]
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bf110

	thumb_func_start ovy216_21bf1a8
ovy216_21bf1a8: ; 0x021BF1A8
	push {r4, lr}
	mov r1, #0xcf
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r1, #0
	add r0, r4, #0
	bl sub_02024EEC
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	thumb_func_end ovy216_21bf1a8

	thumb_func_start ovy216_21bf1dc
ovy216_21bf1dc: ; 0x021BF1DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	mov r1, #0xce
	lsl r1, r1, #4
	add r5, r0, r1
	ldr r0, [sp, #0xc]
	mov r4, #0
	lsl r1, r0, #2
	ldr r0, _021BF240 ; =0x021C0CD4
	ldr r6, [r0, r1]
	ldr r0, [sp, #0xc]
	str r0, [r5]
	cmp r0, #0
	ble _021BF23A
_021BF1FA:
	mov r0, #0xc
	mul r0, r4
	lsl r1, r4, #2
	add r3, r6, r0
	add r7, r5, r1
	ldrb r1, [r3, #7]
	str r1, [sp]
	ldrh r1, [r3, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r6, r0]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r3, #6]
	lsr r0, r0, #0x18
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	str r0, [r7, #0x14]
	add r1, r5, r1
	str r0, [r1, #0x30]
	add r1, #0x34
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _021BF1FA
_021BF23A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BF240: .word 0x021C0CD4
	thumb_func_end ovy216_21bf1dc

	thumb_func_start ovy216_21bf244
ovy216_21bf244: ; 0x021BF244
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xce
	lsl r1, r1, #4
	add r5, r0, r1
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021BF278
_021BF254:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r7, [r6, #0x14]
	add r0, r7, #0
	bl sub_020484B4
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r6, #0x14]
	bl sub_02048210
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021BF254
_021BF278:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bf244

	thumb_func_start ovy216_21bf27c
ovy216_21bf27c: ; 0x021BF27C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0xce
	add r5, r2, #0
	lsl r1, r1, #4
	add r4, r0, r1
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r6, [r0, #0x14]
	str r3, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	add r0, r6, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x58]
	lsl r5, r5, #3
	str r0, [sp, #0x10]
	add r0, r4, r5
	ldr r0, [r0, #0x30]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r4, #4]
	mov r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_02021C7C
	add r1, r4, r5
	add r1, #0x34
	mov r0, #1
	strb r0, [r1]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bf27c

	thumb_func_start ovy216_21bf2f4
ovy216_21bf2f4: ; 0x021BF2F4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x11
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	lsl r4, r4, #6
	bl sub_0203FFC4
	cmp r5, r0
	bne _021BF30E
	mov r4, #0x32
	lsl r4, r4, #6
_021BF30E:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ovy216_21bf27c
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bf2f4

	thumb_func_start ovy216_21bf31c
ovy216_21bf31c: ; 0x021BF31C
	push {r4, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021BF354 ; =0x00000CF4
	ldr r4, [r1, r0]
	mov r1, #0
	add r0, r4, #0
	bl sub_02024EEC
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	nop
_021BF354: .word 0x00000CF4
	thumb_func_end ovy216_21bf31c

	thumb_func_start sub_021BF358
sub_021BF358: ; 0x021BF358
	ldr r1, _021BF360 ; =0x00000D54
	ldr r3, _021BF364 ; =sub_0204A630
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021BF360: .word 0x00000D54
_021BF364: .word sub_0204A630
	thumb_func_end sub_021BF358

	thumb_func_start ovy216_21bf368
ovy216_21bf368: ; 0x021BF368
	push {r3, lr}
	ldr r0, _021BF380 ; =0x021C0B54
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BF37C
	mov r0, #1
	pop {r3, pc}
_021BF37C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021BF380: .word 0x021C0B54
	thumb_func_end ovy216_21bf368

	thumb_func_start ovy216_21bf384
ovy216_21bf384: ; 0x021BF384
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r5, r6, #0
	ldr r4, [r0, #8]
	ldr r0, _021BF3E8 ; =0x00000AF4
	sub r1, r4, #2
	ldr r2, _021BF3EC ; =0x021C0F90
	lsl r1, r1, #4
	ldr r0, [r6, r0]
	add r5, #0xe0
	add r1, r2, r1
	bl sub_02049E00
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	mov r0, #0
	ldr r1, _021BF3F0 ; =0x021C0C8C
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r6, #0xe0
	str r1, [r5, #0x44]
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r5, #0
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	add r1, r5, #0
	add r1, #0x4c
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0x4e
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0x50
	strh r0, [r1]
	ldr r1, _021BF3F4 ; =0xFFFDC000
	str r0, [r5, #0x3c]
	str r0, [r6]
	str r1, [r5, #4]
	str r0, [r5, #8]
	ldmia r5!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BF3E8: .word 0x00000AF4
_021BF3EC: .word 0x021C0F90
_021BF3F0: .word 0x021C0C8C
_021BF3F4: .word 0xFFFDC000
	thumb_func_end ovy216_21bf384

	thumb_func_start sub_021BF3F8
sub_021BF3F8: ; 0x021BF3F8
	mov r1, #0x67
	add r2, r0, #0
	lsl r1, r1, #2
	ldr r0, _021BF40C ; =0x00000AF4
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	lsl r1, r1, #0x10
	ldr r3, _021BF410 ; =sub_02049F4C
	lsr r1, r1, #0x10
	bx r3
	.align 2, 0
_021BF40C: .word 0x00000AF4
_021BF410: .word sub_02049F4C
	thumb_func_end sub_021BF3F8

	thumb_func_start ovy216_21bf414
ovy216_21bf414: ; 0x021BF414
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r5, #0
	add r4, #0xe0
	str r0, [sp]
	add r6, sp, #0
	ldr r1, [r4, #0x40]
	add r0, r6, #0
	bl ovy216_21c0480
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	bl ovy216_21c0480
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #0x5a
	asr r0, r0, #0xc
	lsl r1, r1, #2
	sub r0, r1, r0
	blx sub_0208D65C
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	add r5, #0xe0
	ldr r1, [r5]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x24]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x34]
	ldr r2, [r4, #0x28]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	ldr r2, [r4, #0x2c]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy216_21bf414

	thumb_func_start ovy216_21bf478
ovy216_21bf478: ; 0x021BF478
	push {r4, r5, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r1, _021BF4D4 ; =0x00000AF4
	add r5, #0xe0
	ldr r0, [r0, r1]
	add r1, r5, #0
	add r1, #0xbc
	ldr r1, [r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r4, r0, #0
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	add r3, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x4e
	str r2, [sp, #0x14]
	ldrsh r2, [r5, r1]
	add r0, #0x4c
	mov r1, #0xb6
	mul r1, r2
	add r5, #0x50
	lsl r1, r1, #0x10
	ldrh r0, [r0]
	ldrh r2, [r5]
	lsr r1, r1, #0x10
	bl sub_020507D4
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02049B5C
	add sp, #0x3c
	pop {r4, r5, pc}
	.align 2, 0
_021BF4D4: .word 0x00000AF4
	thumb_func_end ovy216_21bf478

	thumb_func_start sub_021BF4D8
sub_021BF4D8: ; 0x021BF4D8
	ldr r3, _021BF4E0 ; =ovy216_21c0480
	add r0, #0x3c
	bx r3
	nop
_021BF4E0: .word ovy216_21c0480
	thumb_func_end sub_021BF4D8

	thumb_func_start ovy216_21bf4e4
ovy216_21bf4e4: ; 0x021BF4E4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021BF50C ; =0x00000AF4
	ldr r1, _021BF510 ; =0x021C0C24
	ldr r0, [r4, r0]
	bl sub_02049E00
	ldr r1, _021BF514 ; =0x00000DA4
	ldr r2, _021BF518 ; =0x00007FFF
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0
	mov r3, #0
	str r0, [sp]
	bl G3X_SetClearColor
	add sp, #4
	pop {r3, r4, pc}
	nop
_021BF50C: .word 0x00000AF4
_021BF510: .word 0x021C0C24
_021BF514: .word 0x00000DA4
_021BF518: .word 0x00007FFF
	thumb_func_end ovy216_21bf4e4

	thumb_func_start sub_021BF51C
sub_021BF51C: ; 0x021BF51C
	ldr r1, _021BF530 ; =0x00000DA4
	add r2, r0, #0
	ldr r0, _021BF534 ; =0x00000AF4
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	lsl r1, r1, #0x10
	ldr r3, _021BF538 ; =sub_02049F4C
	lsr r1, r1, #0x10
	bx r3
	nop
_021BF530: .word 0x00000DA4
_021BF534: .word 0x00000AF4
_021BF538: .word sub_02049F4C
	thumb_func_end sub_021BF51C

	thumb_func_start ovy216_21bf53c
ovy216_21bf53c: ; 0x021BF53C
	push {r3, r4, lr}
	sub sp, #0x3c
	ldr r1, _021BF57C ; =0x00000DA4
	add r2, r0, #0
	ldr r0, _021BF580 ; =0x00000AF4
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	mov r0, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, #0
	mov r2, #0
	add r3, sp, #0x18
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	bl sub_020507D4
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02049B5C
	add sp, #0x3c
	pop {r3, r4, pc}
	.align 2, 0
_021BF57C: .word 0x00000DA4
_021BF580: .word 0x00000AF4
	thumb_func_end ovy216_21bf53c

	thumb_func_start ovy216_21bf584
ovy216_21bf584: ; 0x021BF584
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	add r6, r7, r0
	ldr r0, _021BF5CC ; =0x00000AF4
	ldr r1, _021BF5D0 ; =0x021C0D04
	ldr r0, [r7, r0]
	bl sub_02049E00
	ldr r4, _021BF5D4 ; =0x00000938
	ldr r1, _021BF5D8 ; =0x021C0D14
	str r0, [r6, r4]
	ldr r0, _021BF5CC ; =0x00000AF4
	ldr r0, [r7, r0]
	bl sub_02049E00
	add r1, r4, #4
	str r0, [r6, r1]
	mov r5, #0
	add r4, #8
_021BF5AE:
	ldr r0, _021BF5CC ; =0x00000AF4
	ldr r1, _021BF5DC ; =0x021C0FD0
	lsl r2, r5, #4
	ldr r0, [r7, r0]
	add r1, r1, r2
	bl sub_02049E00
	lsl r1, r5, #2
	add r1, r6, r1
	add r5, r5, #1
	str r0, [r1, r4]
	cmp r5, #5
	blt _021BF5AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BF5CC: .word 0x00000AF4
_021BF5D0: .word 0x021C0D04
_021BF5D4: .word 0x00000938
_021BF5D8: .word 0x021C0D14
_021BF5DC: .word 0x021C0FD0
	thumb_func_end ovy216_21bf584

	thumb_func_start ovy216_21bf5e0
ovy216_21bf5e0: ; 0x021BF5E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	mov r7, #0x25
	add r5, r6, r0
	mov r4, #0
	lsl r7, r7, #6
_021BF5F0:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r0, _021BF628 ; =0x00000AF4
	ldr r1, [r1, r7]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02049F4C
	add r4, r4, #1
	cmp r4, #5
	blt _021BF5F0
	ldr r7, _021BF62C ; =0x00000938
	ldr r4, _021BF628 ; =0x00000AF4
	ldr r1, [r5, r7]
	ldr r0, [r6, r4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02049F4C
	add r1, r7, #4
	ldr r1, [r5, r1]
	ldr r0, [r6, r4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02049F4C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF628: .word 0x00000AF4
_021BF62C: .word 0x00000938
	thumb_func_end ovy216_21bf5e0

	thumb_func_start ovy216_21bf630
ovy216_21bf630: ; 0x021BF630
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r2, #1
	str r2, [r4, #4]
	bl ovy216_21bf9b8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy216_21bfa48
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bf630

	thumb_func_start ovy216_21bf648
ovy216_21bf648: ; 0x021BF648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	mov r7, #0x1a
	lsl r7, r7, #4
	mov r4, #0
	add r6, r5, r7
	str r0, [sp]
	cmp r0, #0
	ble _021BF6E4
	add r0, r7, #0
	sub r0, #0x60
	add r0, r6, r0
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp, #0x10]
	sub r0, #0x90
	str r0, [sp, #0x10]
	ldr r0, _021BF6E8 ; =0x000004C4
	sub r7, #0x60
	add r0, r6, r0
	str r0, [sp, #8]
	mov r0, #0x73
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0xc]
_021BF67E:
	mov r0, #0xb4
	mul r0, r4
	add r1, r6, r0
	ldr r1, [r1, r7]
	cmp r1, #0
	beq _021BF6A2
	lsl r2, r4, #1
	add r2, r5, r2
	ldr r1, [sp, #4]
	add r2, #0x60
	ldrh r2, [r2]
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	ldr r3, [r5, #0x5c]
	add r1, r5, r1
	lsl r2, r2, #0xc
	bl ovy216_21bf864
_021BF6A2:
	mov r0, #0x7c
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021BF6E8 ; =0x000004C4
	add r2, r6, r1
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021BF6BE
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r2, r1
	ldr r2, [r5, #0x5c]
	bl ovy216_21bf9dc
_021BF6BE:
	mov r0, #0x68
	add r1, r4, #0
	mul r1, r0
	mov r0, #0x73
	add r2, r6, r1
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021BF6DC
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r2, r1
	add r2, r4, #0
	bl ovy216_21bfa64
_021BF6DC:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _021BF67E
_021BF6E4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BF6E8: .word 0x000004C4
	thumb_func_end ovy216_21bf648

	thumb_func_start ovy216_21bf6ec
ovy216_21bf6ec: ; 0x021BF6EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r1, #0x1a
	ldr r0, [r0, #0x30]
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [sp]
	add r7, r0, r1
	ldr r0, _021BF818 ; =0x000004C4
	sub r1, #0x60
	add r5, r7, r0
	mov r0, #0x73
	lsl r0, r0, #4
	add r6, r7, r0
	ldr r0, [sp, #4]
	add r4, r7, r1
	cmp r0, #0
	ble _021BF812
	ldr r1, [sp]
	ldr r0, _021BF81C ; =0x00000AF4
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, _021BF820 ; =0x00000938
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _021BF81C ; =0x00000AF4
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, _021BF820 ; =0x00000938
	str r0, [sp, #0x20]
	add r0, #8
	str r0, [sp, #0x20]
_021BF734:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021BF77A
	ldr r1, [sp]
	ldr r0, _021BF81C ; =0x00000AF4
	ldr r0, [r1, r0]
	ldr r1, _021BF820 ; =0x00000938
	ldr r1, [r7, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x44]
	add r3, sp, #0xb8
	str r0, [sp, #0xa0]
	str r1, [sp, #0xa4]
	str r2, [sp, #0xa8]
	ldr r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x38]
	str r0, [sp, #0xac]
	str r1, [sp, #0xb0]
	str r2, [sp, #0xb4]
	ldrh r0, [r4, #0x24]
	ldrh r1, [r4, #0x26]
	ldrh r2, [r4, #0x28]
	bl sub_020507D4
	ldr r0, [sp, #0xc]
	add r1, sp, #0xa0
	bl sub_02049B5C
_021BF77A:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BF7BE
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [r7, r1]
	ldr r0, [r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	add r3, sp, #0x7c
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	str r2, [sp, #0x6c]
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
	str r2, [sp, #0x78]
	ldrh r0, [r5, #4]
	ldrh r1, [r5, #6]
	ldrh r2, [r5, #8]
	bl sub_020507D4
	ldr r0, [sp, #0x10]
	add r1, sp, #0x64
	bl sub_02049B5C
_021BF7BE:
	ldr r0, [r6]
	cmp r0, #0
	beq _021BF800
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x24]
	lsl r1, r1, #2
	add r2, r7, r1
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	ldr r1, [r2, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	str r0, [sp, #0x14]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	str r0, [sp, #0x28]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	add r0, sp, #0x40
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	blx MTX_Identity33_
	ldr r0, [sp, #0x14]
	add r1, sp, #0x28
	bl sub_02049B5C
_021BF800:
	ldr r0, [sp, #8]
	add r4, #0xb4
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r5, #0x7c
	add r6, #0x68
	str r1, [sp, #8]
	cmp r1, r0
	blt _021BF734
_021BF812:
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	nop
_021BF818: .word 0x000004C4
_021BF81C: .word 0x00000AF4
_021BF820: .word 0x00000938
	thumb_func_end ovy216_21bf6ec

	thumb_func_start ovy216_21bf824
ovy216_21bf824: ; 0x021BF824
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x1a
	lsl r4, r4, #4
	ldr r7, [r0, #0x30]
	str r1, [sp]
	mov r5, #0
	add r6, r0, r4
	cmp r7, #0
	ble _021BF85E
	add r0, r4, #0
	sub r0, #0x44
	add r0, r6, r0
	str r0, [sp, #4]
	sub r4, #0x60
_021BF842:
	mov r0, #0xb4
	mul r0, r5
	add r1, r6, r0
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _021BF858
	ldr r1, [sp, #4]
	add r0, r1, r0
	ldr r1, [sp]
	bl ovy216_21c0480
_021BF858:
	add r5, r5, #1
	cmp r5, r7
	blt _021BF842
_021BF85E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21bf824

	thumb_func_start ovy216_21bf864
ovy216_21bf864: ; 0x021BF864
	push {r0, r1, r2, r3}
	thumb_func_end ovy216_21bf864

	non_word_aligned_thumb_func_start ovy216_21bf866
ovy216_21bf866: ; 0x021BF866
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x20]
	add r0, sp, #0x20
	add r6, r3, #0
	bl ovy216_21c0480
	ldr r1, [sp, #0x20]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r7, r0, #0x10
	add r0, r7, #0
	bl sub_02044330
	ldr r2, [r5, #0x50]
	ldr r1, [r4]
	add r1, r2, r1
	mov r2, #0x16
	mul r2, r0
	add r0, r1, r2
	str r0, [r5, #0x44]
	mov r0, #6
	ldr r1, [r5, #0x54]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, [r4, #4]
	add r0, r1, r0
	add r0, r6, r0
	str r0, [r5, #0x48]
	add r0, r7, #0
	bl sub_02044304
	ldr r2, [r5, #0x58]
	ldr r1, [r4, #8]
	add r2, r2, r1
	mov r1, #0x16
	mul r1, r0
	add r0, r2, r1
	ldr r1, [r5, #0x2c]
	str r0, [r5, #0x4c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [r5, #0x30]
	strh r0, [r5, #0x24]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [r5, #0x34]
	strh r0, [r5, #0x26]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy216_21bf866

	thumb_func_start ovy216_21bf8e8
ovy216_21bf8e8: ; 0x021BF8E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, [r0, #0x30]
	ldr r4, _021BF9B0 ; =0x021C0E80
	mov lr, r1
	mov r1, #0x1a
	lsl r1, r1, #4
	add r1, r0, r1
	str r1, [sp]
	mov r1, #0xa
	mov r2, lr
	ldr r0, [r0, #0x2c]
	mul r1, r2
	lsl r2, r0, #1
	add r0, r4, r1
	ldrh r0, [r2, r0]
	ldr r4, _021BF9B4 ; =0x0000FFFF
	mov r3, #0
	lsl r2, r0, #0xc
	add r5, sp, #4
	add r1, sp, #0x18
_021BF912:
	lsl r0, r3, #2
	str r3, [r5, r0]
	str r4, [r1, r0]
	add r3, r3, #1
	mov r0, lr
	cmp r3, r0
	blt _021BF912
	mov r0, lr
	mov r4, #0
	cmp r0, #0
	ble _021BF95A
	mov r0, #0x5a
	lsl r0, r0, #0xe
	mov r6, #0xb4
	add r1, r2, r0
	add r0, sp, #0x18
	mov r7, #0xb4
	add r6, #0xa8
_021BF936:
	add r5, r4, #0
	ldr r3, [sp]
	mul r5, r7
	add r3, r3, r5
	ldr r5, [r3, r6]
	sub r3, r2, r5
	bpl _021BF946
	sub r3, r1, r5
_021BF946:
	asr r5, r3, #0xb
	lsr r5, r5, #0x14
	add r5, r3, r5
	lsl r3, r4, #2
	asr r5, r5, #0xc
	str r5, [r0, r3]
	add r4, r4, #1
	mov r3, lr
	cmp r4, r3
	blt _021BF936
_021BF95A:
	mov r0, lr
	mov r7, #1
	cmp r0, #1
	ble _021BF99A
	add r5, sp, #4
	add r6, sp, #0x18
_021BF966:
	lsl r0, r7, #2
	ldr r0, [r5, r0]
	mov ip, r0
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	sub r0, r7, #1
	b _021BF978
_021BF974:
	str r2, [r3, #4]
	sub r0, r0, #1
_021BF978:
	cmp r0, #0
	blt _021BF98A
	lsl r2, r0, #2
	add r3, r5, r2
	ldr r2, [r5, r2]
	lsl r4, r2, #2
	ldr r4, [r6, r4]
	cmp r4, r1
	bgt _021BF974
_021BF98A:
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, ip
	str r0, [r1, #4]
	add r7, r7, #1
	mov r0, lr
	cmp r7, r0
	blt _021BF966
_021BF99A:
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	add r2, r0, r1
	ldr r1, [sp, #4]
	mov r0, #0xb4
	mul r0, r1
	add r0, r2, r0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021BF9B0: .word 0x021C0E80
_021BF9B4: .word 0x0000FFFF
	thumb_func_end ovy216_21bf8e8

	thumb_func_start ovy216_21bf9b8
ovy216_21bf9b8: ; 0x021BF9B8
	push {r3, r4, r5, lr}
	ldr r2, _021BF9D8 ; =0x00000664
	ldr r3, [r1, #0x10]
	add r5, r0, r2
	mov r2, #0x7c
	add r4, r3, #0
	mul r4, r2
	mov r2, #1
	str r2, [r5, r4]
	add r3, r5, r4
	str r1, [r3, #0x78]
	add r1, r3, #0
	mov r2, #0
	bl ovy216_21bf9dc
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BF9D8: .word 0x00000664
	thumb_func_end ovy216_21bf9b8

	thumb_func_start ovy216_21bf9dc
ovy216_21bf9dc: ; 0x021BF9DC
	push {r3, r4, r5, r6}
	add r4, r1, #0
	ldr r6, [r4, #0x78]
	mov r0, #0
	add r6, #0x44
	add r5, r4, #0
	add r5, #0x18
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	ldmia r6!, {r0, r1}
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r4, #0x78]
	ldr r5, [r3]
	ldr r1, [r0, #0x50]
	sub r1, r5, r1
	str r1, [r3]
	ldr r1, [r0, #0x54]
	ldr r3, [r4, #0x1c]
	add r1, r1, r2
	sub r5, r3, r1
	str r5, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	ldr r1, [r0, #0x58]
	sub r1, r3, r1
	str r1, [r4, #0x20]
	mov r1, #2
	lsl r1, r1, #0xc
	add r1, r5, r1
	str r1, [r4, #0x1c]
	ldr r0, [r0, #0x54]
	add r1, r0, r2
	bpl _021BFA26
	neg r1, r1
_021BFA26:
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r1, r0, #7
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _021BFA38
	add r1, r0, #0
_021BFA38:
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r0, r1
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy216_21bf9dc

	thumb_func_start ovy216_21bfa48
ovy216_21bfa48: ; 0x021BFA48
	push {r3, r4}
	mov r2, #0x8d
	lsl r2, r2, #4
	add r4, r0, r2
	ldr r2, [r1, #0x10]
	mov r0, #0x68
	add r3, r2, #0
	mul r3, r0
	mov r0, #1
	add r2, r4, r3
	str r0, [r4, r3]
	str r1, [r2, #0x64]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy216_21bfa48

	thumb_func_start ovy216_21bfa64
ovy216_21bfa64: ; 0x021BFA64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021BFAA8 ; =0x00000AF4
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r0, [r3, r1]
	add r2, r3, r2
	sub r1, #0x14
	ldr r1, [r2, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	ldr r5, [r4, #0x64]
	add r2, r0, #0
	add r5, #0x44
	ldmia r5!, {r0, r1}
	add r3, r4, #4
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	mov r0, #5
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r4, #8]
	add r0, r2, #0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_02049A64
	pop {r3, r4, r5, pc}
	nop
_021BFAA8: .word 0x00000AF4
	thumb_func_end ovy216_21bfa64

	thumb_func_start ovy216_21bfaac
ovy216_21bfaac: ; 0x021BFAAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, [sp, #0x20]
	add r5, r0, #0
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	str r3, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r2, [r4, #0x18]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	ldr r3, _021BFB00 ; =0x021C1158
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, _021BFB04 ; =0x0000130E
	mov r1, #0x18
	str r0, [sp]
	ldr r0, _021BFB08 ; =0x00008072
	mov r2, #0
	bl GFL_HeapAllocate
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	str r5, [r6, #0x14]
	ldr r0, _021BFB0C ; =0x00000D98
	str r4, [r6, #0x10]
	ldr r0, [r5, r0]
	ldr r1, _021BFB10 ; =ovy216_21bfb14
	add r2, r6, #0
	mov r3, #0
	bl sub_0203A614
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BFB00: .word 0x021C1158
_021BFB04: .word 0x0000130E
_021BFB08: .word 0x00008072
_021BFB0C: .word 0x00000D98
_021BFB10: .word ovy216_21bfb14
	thumb_func_end ovy216_21bfaac

	thumb_func_start ovy216_21bfb14
ovy216_21bfb14: ; 0x021BFB14
	push {r4, r5, r6, lr}
	ldr r4, _021BFB44 ; =0x021C0B5C
	add r6, r0, #0
	add r5, r1, #0
_021BFB1C:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021BFB1C
	cmp r0, #2
	bne _021BFB40
	ldr r0, [r5, #0x10]
	mov r1, #1
	str r1, [r0, #8]
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r6, #0
	bl GFL_TCBRemove
_021BFB40:
	pop {r4, r5, r6, pc}
	nop
_021BFB44: .word 0x021C0B5C
	thumb_func_end ovy216_21bfb14

	thumb_func_start ovy216_21bfb48
ovy216_21bfb48: ; 0x021BFB48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	ldr r1, [r5, #0x10]
	lsl r4, r4, #0xc
	str r4, [r1, #0x38]
	str r4, [r1, #0x3c]
	mov r0, #3
	str r4, [r1, #0x40]
	lsl r0, r0, #0x12
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x14]
	bl ovy216_21bf630
	lsl r0, r4, #3
	str r0, [r5, #0xc]
	mov r0, #1
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy216_21bfb48

	thumb_func_start ovy216_21bfb70
ovy216_21bfb70: ; 0x021BFB70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x54]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021BFB98
	mov r0, #0x1a
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _021BFB98
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, _021BFBAC ; =0x00000724
	bl GFL_SndSEPlay
_021BFB98:
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _021BFBA8
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r5]
_021BFBA8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BFBAC: .word 0x00000724
	thumb_func_end ovy216_21bfb70

	thumb_func_start ovy216_21bfbb0
ovy216_21bfbb0: ; 0x021BFBB0
	push {r3, lr}
	mov r1, #1
	ldr r3, [r0, #0xc]
	lsl r1, r1, #0xc
	ldr r2, [r0, #0x10]
	cmp r3, r1
	ble _021BFBC8
	sub r3, r3, r1
	str r3, [r0, #0xc]
	cmp r3, r1
	bge _021BFBC8
	str r1, [r0, #0xc]
_021BFBC8:
	ldr r3, [r2, #0x54]
	ldr r1, [r0, #0xc]
	sub r1, r3, r1
	str r1, [r2, #0x54]
	cmp r1, #0
	bgt _021BFBEE
	mov r1, #0
	str r1, [r2, #0x54]
	ldr r3, [r2, #0xc]
	ldr r0, [r0, #0x14]
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0xa4
	ldr r1, [r1]
	ldr r2, [r2, #0x14]
	bl ovy216_21bf2f4
	mov r0, #2
	pop {r3, pc}
_021BFBEE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy216_21bfbb0

	thumb_func_start ovy216_21bfbf4
ovy216_21bfbf4: ; 0x021BFBF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r4, [r5, #0x1c]
	cmp r1, #0
	beq _021BFC08
	cmp r1, #1
	beq _021BFC1E
	pop {r3, r4, r5, r6, r7, pc}
_021BFC08:
	add r1, r4, #0
	bl ovy216_21bfe08
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [r5, #0x10]
	ldr r0, _021BFC60 ; =0xFFFFFBBC
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021BFC1E:
	ldr r1, [r4, #0x5c]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #0x5c]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xf
	blt _021BFC5E
	ldr r0, [r5, #0xc]
	mov r7, #0
	str r7, [r5, #8]
	str r7, [r5, #0x10]
	cmp r0, #0
	bne _021BFC4A
	mov r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021BFC4A:
	add r0, r6, #0
	add r1, r4, #0
	str r7, [r4, #0x5c]
	bl ovy216_21bff34
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x20
	blx MI_CpuFill8
_021BFC5E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFC60: .word 0xFFFFFBBC
	thumb_func_end ovy216_21bfbf4

	thumb_func_start ovy216_21bfc64
ovy216_21bfc64: ; 0x021BFC64
	push {r4, r5, r6, lr}
	ldr r0, _021BFC88 ; =0x00000AF8
	add r6, r1, #0
	add r5, r6, r0
	mov r4, #0
_021BFC6E:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BFC7C
	add r0, r6, #0
	add r1, r5, #0
	bl ovy216_21bfbf4
_021BFC7C:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #5
	blt _021BFC6E
	pop {r4, r5, r6, pc}
	nop
_021BFC88: .word 0x00000AF8
	thumb_func_end ovy216_21bfc64

	thumb_func_start ovy216_21bfc8c
ovy216_21bfc8c: ; 0x021BFC8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BFCB4 ; =0x00000AF8
	mov r1, #0
	add r0, r5, r0
	mov r2, #0xa0
	mov r6, #0xa0
	blx MI_CpuFill8
	ldr r4, _021BFCB8 ; =0x00000D98
	add r6, #0x60
	ldr r0, [r5, r4]
	ldr r1, _021BFCBC ; =ovy216_21bfc64
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0203A614
	sub r4, #0x1c
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BFCB4: .word 0x00000AF8
_021BFCB8: .word 0x00000D98
_021BFCBC: .word ovy216_21bfc64
	thumb_func_end ovy216_21bfc8c

	thumb_func_start sub_021BFCC0
sub_021BFCC0: ; 0x021BFCC0
	ldr r1, _021BFCC8 ; =0x00000D7C
	ldr r3, _021BFCCC ; =GFL_TCBRemove
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021BFCC8: .word 0x00000D7C
_021BFCCC: .word GFL_TCBRemove
	thumb_func_end sub_021BFCC0

	thumb_func_start sub_021BFCD0
sub_021BFCD0: ; 0x021BFCD0
	ldr r2, _021BFCF0 ; =0x00000AF8
	add r3, r0, r2
	mov r2, #0
_021BFCD6:
	ldr r0, [r3]
	cmp r0, #0
	bne _021BFCE4
	mov r0, #1
	str r0, [r3]
	str r1, [r3, #0x1c]
	bx lr
_021BFCE4:
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #5
	blt _021BFCD6
	bx lr
	nop
_021BFCF0: .word 0x00000AF8
	thumb_func_end sub_021BFCD0

	thumb_func_start ovy216_21bfcf4
ovy216_21bfcf4: ; 0x021BFCF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x1a
	lsl r4, r4, #4
	str r0, [sp]
	add r6, r0, r4
	ldr r7, [r0, #0x30]
	add r0, r4, #0
	sub r0, #0x60
	add r0, r6, r0
	mov r5, #0
	str r0, [sp, #4]
	sub r4, #0x60
_021BFD0E:
	mov r0, #0xb4
	add r1, r5, #0
	mul r1, r0
	add r0, r6, r1
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021BFD26
	ldr r2, [sp, #4]
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_021BFCD0
_021BFD26:
	add r5, r5, #1
	cmp r5, r7
	blt _021BFD0E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bfcf4

	thumb_func_start sub_021BFD30
sub_021BFD30: ; 0x021BFD30
	ldr r1, _021BFD4C ; =0x00000AF8
	add r2, r0, r1
	mov r1, #0
_021BFD36:
	ldr r0, [r2]
	cmp r0, #0
	beq _021BFD40
	mov r0, #1
	bx lr
_021BFD40:
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #5
	blt _021BFD36
	mov r0, #0
	bx lr
	.align 2, 0
_021BFD4C: .word 0x00000AF8
	thumb_func_end sub_021BFD30

	thumb_func_start ovy216_21bfd50
ovy216_21bfd50: ; 0x021BFD50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x10]
	cmp r0, #0
	beq _021BFD62
	cmp r0, #1
	beq _021BFD72
	pop {r3, r4, r5, pc}
_021BFD62:
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021BFD72:
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x30
	bl ovy216_21c0480
	mov r0, #1
	ldr r1, [r4, #0x30]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _021BFD9C
	ldr r1, [r5, #0xc]
	lsr r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, r0
	bge _021BFD9C
	mov r1, #0
	add r0, r5, #0
	mov r2, #0x14
	str r1, [r4, #0x30]
	blx MI_CpuFill8
_021BFD9C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21bfd50

	thumb_func_start ovy216_21bfda0
ovy216_21bfda0: ; 0x021BFDA0
	push {r3, r4, r5, lr}
	ldr r0, _021BFDC0 ; =0x00000B98
	mov r4, #0
	add r5, r1, r0
_021BFDA8:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BFDB4
	add r0, r5, #0
	bl ovy216_21bfd50
_021BFDB4:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #5
	blt _021BFDA8
	pop {r3, r4, r5, pc}
	nop
_021BFDC0: .word 0x00000B98
	thumb_func_end ovy216_21bfda0

	thumb_func_start ovy216_21bfdc4
ovy216_21bfdc4: ; 0x021BFDC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BFDEC ; =0x00000B98
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x64
	mov r6, #0x64
	blx MI_CpuFill8
	ldr r4, _021BFDF0 ; =0x00000D98
	add r6, #0x9d
	ldr r0, [r5, r4]
	ldr r1, _021BFDF4 ; =ovy216_21bfda0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0203A614
	sub r4, #0x18
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BFDEC: .word 0x00000B98
_021BFDF0: .word 0x00000D98
_021BFDF4: .word ovy216_21bfda0
	thumb_func_end ovy216_21bfdc4

	thumb_func_start sub_021BFDF8
sub_021BFDF8: ; 0x021BFDF8
	mov r1, #0x36
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r3, _021BFE04 ; =GFL_TCBRemove
	bx r3
	nop
_021BFE04: .word GFL_TCBRemove
	thumb_func_end sub_021BFDF8

	thumb_func_start ovy216_21bfe08
ovy216_21bfe08: ; 0x021BFE08
	push {r3, r4}
	ldr r2, _021BFE4C ; =0x00000B98
	add r4, r0, r2
	add r3, r4, #0
	mov r2, #0
_021BFE12:
	ldr r0, [r3]
	cmp r0, #1
	bne _021BFE26
	ldr r0, [r3, #0x10]
	cmp r0, r1
	bne _021BFE26
	mov r0, #0
	str r0, [r3, #4]
	pop {r3, r4}
	bx lr
_021BFE26:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, #5
	blt _021BFE12
	mov r2, #0
_021BFE30:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BFE40
	mov r0, #1
	str r0, [r4]
	str r1, [r4, #0x10]
	pop {r3, r4}
	bx lr
_021BFE40:
	add r2, r2, #1
	add r4, #0x14
	cmp r2, #5
	blt _021BFE30
	pop {r3, r4}
	bx lr
	.align 2, 0
_021BFE4C: .word 0x00000B98
	thumb_func_end ovy216_21bfe08

	thumb_func_start ovy216_21bfe50
ovy216_21bfe50: ; 0x021BFE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x14]
	cmp r0, #0
	beq _021BFE62
	cmp r0, #1
	beq _021BFE7A
	pop {r3, r4, r5, r6, r7, pc}
_021BFE62:
	mov r0, #0
	str r0, [r4, #0x34]
	str r0, [r5, #0x10]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	mov r0, #5
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021BFE7A:
	ldr r1, [r5, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_02044304
	ldr r2, [r5, #8]
	mov r7, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	add r1, r2, #0
	mul r1, r0
	add r0, r4, #0
	str r7, [r4, #0x34]
	add r0, #0x34
	bl ovy216_21c0480
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x10
	ldr r6, [r5, #0x10]
	bl ovy216_21c0480
	ldr r0, [r5, #0x10]
	cmp r0, r6
	bge _021BFECA
	ldr r0, [r5, #8]
	lsr r0, r0, #1
	str r0, [r5, #8]
	bne _021BFECA
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x18
	str r7, [r4, #0x34]
	blx MI_CpuFill8
_021BFECA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21bfe50

	thumb_func_start ovy216_21bfecc
ovy216_21bfecc: ; 0x021BFECC
	push {r3, r4, r5, lr}
	ldr r0, _021BFEEC ; =0x00000BFC
	mov r4, #0
	add r5, r1, r0
_021BFED4:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BFEE0
	add r0, r5, #0
	bl ovy216_21bfe50
_021BFEE0:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #5
	blt _021BFED4
	pop {r3, r4, r5, pc}
	nop
_021BFEEC: .word 0x00000BFC
	thumb_func_end ovy216_21bfecc

	thumb_func_start ovy216_21bfef0
ovy216_21bfef0: ; 0x021BFEF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BFF18 ; =0x00000BFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x78
	mov r6, #0x78
	blx MI_CpuFill8
	ldr r4, _021BFF1C ; =0x00000D98
	add r6, #0x8a
	ldr r0, [r5, r4]
	ldr r1, _021BFF20 ; =ovy216_21bfecc
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0203A614
	sub r4, #0x14
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BFF18: .word 0x00000BFC
_021BFF1C: .word 0x00000D98
_021BFF20: .word ovy216_21bfecc
	thumb_func_end ovy216_21bfef0

	thumb_func_start sub_021BFF24
sub_021BFF24: ; 0x021BFF24
	ldr r1, _021BFF2C ; =0x00000D84
	ldr r3, _021BFF30 ; =GFL_TCBRemove
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021BFF2C: .word 0x00000D84
_021BFF30: .word GFL_TCBRemove
	thumb_func_end sub_021BFF24

	thumb_func_start ovy216_21bff34
ovy216_21bff34: ; 0x021BFF34
	push {r3, r4}
	ldr r2, _021BFF78 ; =0x00000BFC
	add r4, r0, r2
	add r3, r4, #0
	mov r2, #0
_021BFF3E:
	ldr r0, [r3]
	cmp r0, #1
	bne _021BFF52
	ldr r0, [r3, #0x14]
	cmp r0, r1
	bne _021BFF52
	mov r0, #0
	str r0, [r3, #4]
	pop {r3, r4}
	bx lr
_021BFF52:
	add r2, r2, #1
	add r3, #0x18
	cmp r2, #5
	blt _021BFF3E
	mov r2, #0
_021BFF5C:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BFF6C
	mov r0, #1
	str r0, [r4]
	str r1, [r4, #0x14]
	pop {r3, r4}
	bx lr
_021BFF6C:
	add r2, r2, #1
	add r4, #0x18
	cmp r2, #5
	blt _021BFF5C
	pop {r3, r4}
	bx lr
	.align 2, 0
_021BFF78: .word 0x00000BFC
	thumb_func_end ovy216_21bff34

	thumb_func_start ovy216_21bff7c
ovy216_21bff7c: ; 0x021BFF7C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r2, r0, #0
	add r2, #0xe0
	cmp r1, #5
	bhi _021C0034
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021BFF96: ; jump table
	.short _021C0034 - _021BFF96 - 2 ; case 0
	.short _021BFFA2 - _021BFF96 - 2 ; case 1
	.short _021BFFB0 - _021BFF96 - 2 ; case 2
	.short _021BFFC8 - _021BFF96 - 2 ; case 3
	.short _021BFFEE - _021BFF96 - 2 ; case 4
	.short _021C001E - _021BFF96 - 2 ; case 5
_021BFFA2:
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r1, #1
	str r0, [r4]
_021BFFB0:
	mov r0, #1
	ldr r1, [r2, #0x34]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, _021C0038 ; =0xFFFF8000
	str r1, [r2, #0x34]
	cmp r1, r0
	bgt _021C0034
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFFC8:
	mov r1, #2
	ldr r3, [r2, #0x34]
	lsl r1, r1, #0xc
	add r1, r3, r1
	str r1, [r2, #0x34]
	bmi _021C0034
	mov r1, #0
	str r1, [r2, #0x34]
	bl ovy216_21bfcf4
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldr r0, _021C003C ; =0x0000055E
	bl GFL_SndSEPlay
	pop {r4, pc}
_021BFFEE:
	ldr r0, [r4, #0x10]
	str r0, [r2, #0x28]
	ldr r0, [r4, #0x10]
	neg r3, r0
	ldr r0, [r4, #0xc]
	str r3, [r4, #0x10]
	add r1, r0, #1
	mov r0, #3
	str r1, [r4, #0xc]
	tst r0, r1
	bne _021C0034
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r3, r0
	bgt _021C0018
	mov r0, #0
	str r0, [r2, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C0018:
	asr r0, r3, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_021C001E:
	bl sub_021BFD30
	cmp r0, #0
	bne _021C0034
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	str r0, [r4]
	ldr r0, _021C0040 ; =0x0000076C
	bl GFL_SndSEPlay
_021C0034:
	pop {r4, pc}
	nop
_021C0038: .word 0xFFFF8000
_021C003C: .word 0x0000055E
_021C0040: .word 0x0000076C
	thumb_func_end ovy216_21bff7c
_021C0044:
	.byte 0x02, 0x4A, 0x03, 0x4B, 0x08, 0x1C, 0x89, 0x18, 0x18, 0x47, 0xC0, 0x46
	.byte 0x74, 0x0C, 0x00, 0x00, 0x7D, 0xFF, 0x1B, 0x02

	thumb_func_start ovy216_21c0058
ovy216_21c0058: ; 0x021C0058
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021C007C ; =0x00000C74
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x14
	blx MI_CpuFill8
	ldr r5, _021C0080 ; =0x00000D98
	ldr r1, _021C0084 ; =0x021C0045
	ldr r0, [r4, r5]
	add r2, r4, #0
	mov r3, #0xff
	bl sub_0203A614
	sub r5, #0x10
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C007C: .word 0x00000C74
_021C0080: .word 0x00000D98
_021C0084: .word 0x021C0045
	thumb_func_end ovy216_21c0058

	thumb_func_start sub_021C0088
sub_021C0088: ; 0x021C0088
	ldr r1, _021C0090 ; =0x00000D88
	ldr r3, _021C0094 ; =GFL_TCBRemove
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021C0090: .word 0x00000D88
_021C0094: .word GFL_TCBRemove
	thumb_func_end sub_021C0088

	thumb_func_start sub_021C0098
sub_021C0098: ; 0x021C0098
	ldr r1, _021C00A4 ; =0x00000C74
	add r1, r0, r1
	mov r0, #1
	str r0, [r1, #8]
	str r0, [r1]
	bx lr
	.align 2, 0
_021C00A4: .word 0x00000C74
	thumb_func_end sub_021C0098

	thumb_func_start sub_021C00A8
sub_021C00A8: ; 0x021C00A8
	ldr r1, _021C00B0 ; =0x00000C78
	ldr r0, [r0, r1]
	bx lr
	nop
_021C00B0: .word 0x00000C78
	thumb_func_end sub_021C00A8

	thumb_func_start sub_021C00B4
sub_021C00B4: ; 0x021C00B4
	ldr r1, _021C00BC ; =0x00000C7C
	ldr r0, [r0, r1]
	bx lr
	nop
_021C00BC: .word 0x00000C7C
	thumb_func_end sub_021C00B4

	thumb_func_start ovy216_21c00c0
ovy216_21c00c0: ; 0x021C00C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021C00D6
	cmp r0, #1
	beq _021C0124
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021C00D6:
	ldr r3, [r4, #0xc]
	cmp r3, #4
	bge _021C0106
	ldr r6, _021C013C ; =0x021C0EE0
	add r5, sp, #0
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _021C0106
	mov r0, #0x1e
	str r0, [r4, #4]
	lsl r0, r3, #2
	ldr r0, [r2, r0]
	bl GFL_SndSEPlay
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_021C0106:
	mov r1, #6
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0xa
	bl sub_0204C4E0
	ldr r0, [r4, #0x14]
	bl sub_0204C560
	cmp r0, #0
	bne _021C0136
	ldr r0, [r4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C0124:
	ldr r0, [r4, #0x14]
	bl sub_0204C108
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_TCBRemove
_021C0136:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021C013C: .word 0x021C0EE0
	thumb_func_end ovy216_21c00c0

	thumb_func_start ovy216_21c0140
ovy216_21c0140: ; 0x021C0140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021C01B0 ; =0x00001606
	ldr r3, _021C01B4 ; =0x021C1158
	str r0, [sp]
	ldr r0, _021C01B8 ; =0x00008072
	mov r1, #0x18
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x18
	add r6, r0, #0
	blx MI_CpuFill8
	mov r7, #0x80
	add r0, sp, #0xc
	strh r7, [r0]
	mov r1, #0x64
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	strb r4, [r0, #7]
	strb r4, [r0, #6]
	add r0, sp, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	ldr r4, _021C01BC ; =0x00000D68
	mov r0, #0x72
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, r4, #4
	add r2, #8
	add r3, #0xc
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	str r0, [r6, #0x14]
	lsl r1, r7, #5
	bl sub_0204C4E0
	str r5, [r6, #0x10]
	add r4, #0x30
	ldr r0, [r5, r4]
	ldr r1, _021C01C0 ; =ovy216_21c00c0
	add r2, r6, #0
	mov r3, #0
	bl sub_0203A614
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C01B0: .word 0x00001606
_021C01B4: .word 0x021C1158
_021C01B8: .word 0x00008072
_021C01BC: .word 0x00000D68
_021C01C0: .word ovy216_21c00c0
	thumb_func_end ovy216_21c0140

	thumb_func_start ovy216_21c01c4
ovy216_21c01c4: ; 0x021C01C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021C0244
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C01DC: ; jump table
	.short _021C0244 - _021C01DC - 2 ; case 0
	.short _021C01E6 - _021C01DC - 2 ; case 1
	.short _021C01FA - _021C01DC - 2 ; case 2
	.short _021C0216 - _021C01DC - 2 ; case 3
	.short _021C0230 - _021C01DC - 2 ; case 4
_021C01E6:
	bl sub_021BED44
	ldr r0, _021C0248 ; =0x00000727
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021C01FA:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #2
	blt _021C0244
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r5, #0
	bl sub_021BED5C
	pop {r3, r4, r5, pc}
_021C0216:
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #4
	blt _021C0244
	bl sub_021BED44
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021C0230:
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #2
	blt _021C0244
	bl sub_021BED50
	mov r0, #0
	strh r0, [r4, #2]
	strh r0, [r4]
_021C0244:
	pop {r3, r4, r5, pc}
	nop
_021C0248: .word 0x00000727
	thumb_func_end ovy216_21c01c4
_021C024C:
	.byte 0x02, 0x4A, 0x03, 0x4B
	.byte 0x08, 0x1C, 0x89, 0x18, 0x18, 0x47, 0xC0, 0x46, 0x88, 0x0C, 0x00, 0x00, 0xC5, 0x01, 0x1C, 0x02

	thumb_func_start ovy216_21c0260
ovy216_21c0260: ; 0x021C0260
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021C0288 ; =0x00000C88
	mov r1, #0
	add r0, r5, r0
	mov r2, #8
	mov r6, #8
	blx MI_CpuFill8
	ldr r4, _021C028C ; =0x00000D98
	add r6, #0xfb
	ldr r0, [r5, r4]
	ldr r1, _021C0290 ; =0x021C024D
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0203A614
	sub r4, #0xc
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C0288: .word 0x00000C88
_021C028C: .word 0x00000D98
_021C0290: .word 0x021C024D
	thumb_func_end ovy216_21c0260

	thumb_func_start sub_021C0294
sub_021C0294: ; 0x021C0294
	ldr r1, _021C029C ; =0x00000D8C
	ldr r3, _021C02A0 ; =GFL_TCBRemove
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021C029C: .word 0x00000D8C
_021C02A0: .word GFL_TCBRemove
	thumb_func_end sub_021C0294

	thumb_func_start sub_021C02A4
sub_021C02A4: ; 0x021C02A4
	ldr r1, _021C02AC ; =0x00000C8A
	ldrh r0, [r0, r1]
	bx lr
	nop
_021C02AC: .word 0x00000C8A
	thumb_func_end sub_021C02A4

	thumb_func_start sub_021C02B0
sub_021C02B0: ; 0x021C02B0
	ldr r1, _021C02BC ; =0x00000C88
	add r1, r0, r1
	mov r0, #1
	strh r0, [r1, #2]
	strh r0, [r1]
	bx lr
	.align 2, 0
_021C02BC: .word 0x00000C88
	thumb_func_end sub_021C02B0

	thumb_func_start sub_021C02C0
sub_021C02C0: ; 0x021C02C0
	ldr r0, [r1]
	cmp r0, #0
	beq _021C0306
	cmp r0, #1
	beq _021C02D0
	cmp r0, #2
	beq _021C02F4
	bx lr
_021C02D0:
	ldr r0, [r1, #4]
	lsl r2, r0, #2
	ldr r0, _021C0308 ; =0x021C1118
	ldr r0, [r0, r2]
	lsl r2, r0, #0xc
	ldr r0, [r1, #0xc]
	str r2, [r0, #0x54]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021C0306
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bx lr
_021C02F4:
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	cmp r0, #0xf
	blt _021C0306
	mov r0, #0
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1]
_021C0306:
	bx lr
	.align 2, 0
_021C0308: .word 0x021C1118
	thumb_func_end sub_021C02C0

	thumb_func_start ovy216_21c030c
ovy216_21c030c: ; 0x021C030C
	push {r4, r5, r6, lr}
	mov r0, #0xc9
	add r6, r1, #0
	lsl r0, r0, #4
	add r5, r6, r0
	mov r4, #0
_021C0318:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021C02C0
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _021C0318
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy216_21c030c

	thumb_func_start ovy216_21c032c
ovy216_21c032c: ; 0x021C032C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xc9
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x50
	mov r6, #0x50
	blx MI_CpuFill8
	ldr r4, _021C0358 ; =0x00000D98
	add r6, #0xb4
	ldr r0, [r5, r4]
	ldr r1, _021C035C ; =ovy216_21c030c
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0203A614
	sub r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	nop
_021C0358: .word 0x00000D98
_021C035C: .word ovy216_21c030c
	thumb_func_end ovy216_21c032c

	thumb_func_start sub_021C0360
sub_021C0360: ; 0x021C0360
	mov r1, #0xd9
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021C036C ; =GFL_TCBRemove
	bx r3
	nop
_021C036C: .word GFL_TCBRemove
	thumb_func_end sub_021C0360

	thumb_func_start ovy216_21c0370
ovy216_21c0370: ; 0x021C0370
	push {r3, r4}
	mov r2, #0xc9
	lsl r2, r2, #4
	add r3, r0, r2
	ldr r0, [r1, #0xc]
	lsl r2, r0, #4
	mov r0, #1
	add r4, r3, r2
	str r0, [r3, r2]
	str r1, [r4, #0xc]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy216_21c0370

	thumb_func_start ovy216_21c0388
ovy216_21c0388: ; 0x021C0388
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0x1c]
	mov r4, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r4, r4, #4
	ldr r7, [r0, #0x30]
	mov r5, #0
	add r6, r0, r4
	cmp r7, #0
	ble _021C03E0
	add r0, r4, #0
	sub r0, #0x60
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r4, #0
	str r0, [sp, #0xc]
	sub r0, #0x54
	str r0, [sp, #0xc]
	sub r4, #0x60
_021C03B4:
	mov r0, #0xb4
	add r1, r5, #0
	mul r1, r0
	add r0, r6, r1
	ldr r2, [r0, r4]
	cmp r2, #0
	beq _021C03DA
	ldr r2, [sp, #0xc]
	ldr r0, [r0, r2]
	mov r2, #1
	lsl r2, r0
	ldr r0, [sp, #4]
	tst r0, r2
	beq _021C03DA
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r1, r2, r1
	bl ovy216_21c0370
_021C03DA:
	add r5, r5, #1
	cmp r5, r7
	blt _021C03B4
_021C03E0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy216_21c0388

	thumb_func_start ovy216_21c03e4
ovy216_21c03e4: ; 0x021C03E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _021C0400
	sub r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0
	bgt _021C040E
	str r4, [r5, #8]
	b _021C040C
_021C0400:
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #8
	blt _021C040E
	mov r0, #8
	str r0, [r5, #8]
_021C040C:
	mov r4, #1
_021C040E:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ovy216_21bedc4
	cmp r4, #1
	bne _021C0426
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r6, #0
	bl GFL_TCBRemove
_021C0426:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy216_21c03e4

	thumb_func_start ovy216_21c0428
ovy216_21c0428: ; 0x021C0428
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021C0468 ; =0x021C0EBC
	add r4, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021C046C ; =0x00001768
	ldr r3, _021C0470 ; =0x021C1158
	str r0, [sp]
	ldr r0, _021C0474 ; =0x00008072
	mov r1, #0xc
	mov r2, #0
	add r6, sp, #4
	bl GFL_HeapAllocate
	add r2, r0, #0
	lsl r0, r4, #2
	str r5, [r2]
	ldr r0, [r6, r0]
	str r4, [r2, #4]
	str r0, [r2, #8]
	ldr r0, _021C0478 ; =0x00000D98
	ldr r1, _021C047C ; =ovy216_21c03e4
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_0203A614
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021C0468: .word 0x021C0EBC
_021C046C: .word 0x00001768
_021C0470: .word 0x021C1158
_021C0474: .word 0x00008072
_021C0478: .word 0x00000D98
_021C047C: .word ovy216_21c03e4
	thumb_func_end ovy216_21c0428

	thumb_func_start ovy216_21c0480
ovy216_21c0480: ; 0x021C0480
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	bpl _021C0498
	mov r0, #0x5a
	lsl r0, r0, #0xe
_021C0490:
	ldr r1, [r4]
	add r1, r1, r0
	str r1, [r4]
	bmi _021C0490
_021C0498:
	mov r1, #0x5a
	ldr r0, [r4]
	lsl r1, r1, #0xe
	blx sub_0208D65C
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy216_21c0480

	thumb_func_start ovy216_21c04a8
ovy216_21c04a8: ; 0x021C04A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0xe0
	bl sub_021BF4D8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy216_21bf824
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21c04a8

	thumb_func_start sub_021C04C0
sub_021C04C0: ; 0x021C04C0
	ldr r1, [r0, #8]
	add r2, r1, #1
	mov r1, #0x96
	lsl r1, r1, #2
	str r2, [r0, #8]
	cmp r2, r1
	bge _021C04D2
	mov r0, #0
	bx lr
_021C04D2:
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	thumb_func_end sub_021C04C0

	thumb_func_start ovy216_21c04d8
ovy216_21c04d8: ; 0x021C04D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021C051C ; =0x00000D58
	add r6, r1, #0
	ldr r0, [r4, r0]
	add r5, r2, #0
	bl sub_0204AC0C
	add r1, r0, #0
	cmp r5, #1
	bne _021C04F8
	ldr r0, _021C0520 ; =0x000017CA
	str r0, [sp]
	mov r0, #0x72
	b _021C04FE
_021C04F8:
	ldr r0, _021C0524 ; =0x000017CC
	str r0, [sp]
	ldr r0, _021C0528 ; =0x00008072
_021C04FE:
	ldr r3, _021C052C ; =0x021C1158
	mov r2, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, _021C051C ; =0x00000D58
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r2, r5, #0
	bl sub_0204ABA4
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021C051C: .word 0x00000D58
_021C0520: .word 0x000017CA
_021C0524: .word 0x000017CC
_021C0528: .word 0x00008072
_021C052C: .word 0x021C1158
	thumb_func_end ovy216_21c04d8
_021C0530:
	.byte 0x00, 0x29, 0x00, 0xD0, 0x41, 0x63, 0x70, 0x47

	thumb_func_start sub_021C0538
sub_021C0538: ; 0x021C0538
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	str r1, [r0, #0x3c]
	ldmia r3!, {r0, r1}
	add r2, #0x58
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_021C0538

	thumb_func_start ovy216_21c0550
ovy216_21c0550: ; 0x021C0550
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb8
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r4, #0xb8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy216_21c0550

	thumb_func_start sub_021C0564
sub_021C0564: ; 0x021C0564
	add r0, #0xb8
	bx lr
	thumb_func_end sub_021C0564

	thumb_func_start sub_021C0568
sub_021C0568: ; 0x021C0568
	add r0, #0xdc
	ldr r0, [r0]
	add r0, #0x40
	ldrh r0, [r0]
	tst r0, r1
	beq _021C0578
	mov r0, #1
	bx lr
_021C0578:
	mov r0, #0
	bx lr
	thumb_func_end sub_021C0568

	thumb_func_start ovy216_21c057c
ovy216_21c057c: ; 0x021C057C
	push {r3, r4}
	add r1, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, #0xd8
	ldr r1, [r1]
	add r0, #0x42
	ldr r1, [r1, #8]
	ldrh r4, [r0]
	mov r2, #0
	sub r3, r1, #1
	cmp r4, #0
	beq _021C05A2
	mov r0, #1
_021C0598:
	add r1, r4, #0
	and r1, r0
	add r2, r2, r1
	lsr r4, r4, #1
	bne _021C0598
_021C05A2:
	mov r0, #1
	cmp r2, r3
	bge _021C05AA
	mov r0, #0
_021C05AA:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy216_21c057c

	thumb_func_start sub_021C05B0
sub_021C05B0: ; 0x021C05B0
	add r0, #0xdc
	ldr r0, [r0]
	mov r2, #0
	add r0, #0x42
	ldrh r3, [r0]
	cmp r3, #0
	beq _021C05CA
	mov r0, #1
_021C05C0:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021C05C0
_021C05CA:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C05B0

	thumb_func_start ovy216_21c05d0
ovy216_21c05d0: ; 0x021C05D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4]
	lsl r2, r0, #2
	add r0, r5, r2
	add r0, #0x7c
	strh r1, [r0]
	add r0, r5, r2
	ldrh r1, [r4, #2]
	add r0, #0x7e
	strh r1, [r0]
	bl sub_0203FFC4
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021C05F8
	ldrh r0, [r4]
	str r0, [r5, #0x2c]
_021C05F8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21c05d0

	thumb_func_start ovy216_21c05fc
ovy216_21c05fc: ; 0x021C05FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BD9B4
	bl sub_0217CF84
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ovy216_21c05fc

	thumb_func_start sub_021C060C
sub_021C060C: ; 0x021C060C
	cmp r1, #0
	beq _021C0624
	add r0, #0xdc
	ldr r0, [r0]
	add r0, #0x42
	ldrh r2, [r0]
	mov r0, #1
	lsl r0, r1
	tst r0, r2
	bne _021C0624
	mov r0, #0
	bx lr
_021C0624:
	mov r0, #1
	bx lr
	thumb_func_end sub_021C060C

	thumb_func_start ovy216_21c0628
ovy216_21c0628: ; 0x021C0628
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r5, r1, #0
	ldr r6, [r4, #0x24]
	bl sub_021BBC88
	add r1, r4, #0
	add r1, #0xd8
	add r7, r0, #0
	lsl r0, r5, #2
	ldr r1, [r1]
	add r0, r4, r0
	ldr r5, [r0, #0x44]
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_0201FF08
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0201FF08
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021BD9B4
	add r4, r0, #0
	bl sub_0203FFC4
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0217CF60
	add r2, r0, #0
	mov r0, #0x72
	str r0, [sp]
	ldr r3, _021C068C ; =0x00007532
	add r0, r5, #0
	mov r1, #6
	bl sub_02035964
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201EF6C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C068C: .word 0x00007532
	thumb_func_end ovy216_21c0628

	thumb_func_start sub_021C0690
sub_021C0690: ; 0x021C0690
	add r0, #0xdc
	ldr r1, [r0]
	mov r0, #0x46
	ldrsh r3, [r1, r0]
	mov r2, #0
	cmp r3, #0
	beq _021C06AA
	mov r0, #1
_021C06A0:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021C06A0
_021C06AA:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0690
_021C06B0:
	.byte 0x89, 0x00, 0x40, 0x18, 0x42, 0x64, 0x70, 0x47

	thumb_func_start ovy216_21c06b8
ovy216_21c06b8: ; 0x021C06B8
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x6c
	mov r3, #8
_021C06C0:
	ldrh r2, [r1]
	add r1, r1, #2
	strh r2, [r4]
	add r4, r4, #2
	sub r3, r3, #1
	bne _021C06C0
	mov r1, #1
	str r1, [r0, #0x40]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy216_21c06b8

	thumb_func_start ovy216_21c06d4
ovy216_21c06d4: ; 0x021C06D4
	push {r0, r1, r2, r3}
	thumb_func_end ovy216_21c06d4

	non_word_aligned_thumb_func_start ovy216_21c06d6
ovy216_21c06d6: ; 0x021C06D6
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x47
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r7, sp, #0x1c
	add r0, r7, #0
	neg r1, r1
	add r6, r2, #0
	bl ovy216_21c0480
	add r4, #8
	ldr r1, [r5, r4]
	add r0, r7, #0
	neg r1, r1
	bl ovy216_21c0480
	ldr r0, [sp, #0x1c]
	add r5, sp, #0
	str r0, [sp]
	ldr r1, _021C0768 ; =0xFFFFC000
	add r0, r5, #0
	bl ovy216_21c0480
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r4, r0, #0xc
	ldr r0, [sp, #0x1c]
	mov r1, #5
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ovy216_21c0480
	ldr r1, [sp]
	ldr r2, _021C076C ; =0x021C0DA8
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r1, r6, #3
	add r3, r2, r1
	ldr r2, [r2, r1]
	asr r0, r0, #0xc
	ldr r3, [r3, #4]
	cmp r2, #0
	beq _021C075C
_021C0736:
	ldrh r5, [r3]
	cmp r4, r5
	blo _021C0742
	ldrh r1, [r3, #2]
	cmp r4, r1
	bls _021C074C
_021C0742:
	cmp r0, r5
	blo _021C0756
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhi _021C0756
_021C074C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_021C0756:
	add r3, r3, #4
	sub r2, r2, #1
	bne _021C0736
_021C075C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021C0768: .word 0xFFFFC000
_021C076C: .word 0x021C0DA8
	thumb_func_end ovy216_21c06d6

	thumb_func_start ovy216_21c0770
ovy216_21c0770: ; 0x021C0770
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0201FDF8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021C07AE
_021C0780:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0201FF08
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021C07A8
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021C07A8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C07A8:
	add r5, r5, #1
	cmp r5, r6
	blt _021C0780
_021C07AE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy216_21c0770

	thumb_func_start ovy216_21c07b4
ovy216_21c07b4: ; 0x021C07B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl ovy216_21c0770
	cmp r0, #1
	bne _021C07C6
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C07C6:
	mov r4, #0
_021C07C8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021C060C
	cmp r0, #0
	beq _021C07EC
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_021BBC88
	bl ovy216_21c0770
	cmp r0, #1
	bne _021C07EC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C07EC:
	add r4, r4, #1
	cmp r4, #5
	blt _021C07C8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy216_21c07b4

	thumb_func_start sub_021C07F8
sub_021C07F8: ; 0x021C07F8
	add r0, #0xdc
	ldr r0, [r0]
	mov r2, #0
	add r0, #0x4a
	ldrh r3, [r0]
	cmp r3, #0
	beq _021C0812
	mov r0, #1
_021C0808:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021C0808
_021C0812:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C07F8

	thumb_func_start sub_021C0818
sub_021C0818: ; 0x021C0818
	add r0, #0xdc
	ldr r0, [r0]
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021C0828
	mov r0, #1
	bx lr
_021C0828:
	mov r0, #0
	bx lr
	thumb_func_end sub_021C0818

	thumb_func_start ovy216_21c082c
ovy216_21c082c: ; 0x021C082C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r1, _021C0844 ; =0x0000FFFF
	add r0, r4, #0
	bl sub_02005DF4
	pop {r4, pc}
	.align 2, 0
_021C0844: .word 0x0000FFFF
	thumb_func_end ovy216_21c082c

	thumb_func_start ovy216_21c0848
ovy216_21c0848: ; 0x021C0848
	push {r3, lr}
	bl sub_02005FA8
	cmp r0, #0
	bne _021C0860
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0
	pop {r3, pc}
_021C0860:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy216_21c0848

	thumb_func_start ovy216_21c0864
ovy216_21c0864: ; 0x021C0864
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _021C08C6
	add r0, r4, #0
	add r1, r5, #0
	bl ovy216_21c04a8
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	str r0, [sp]
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ble _021C08B8
	add r1, sp, #0
	mov r5, #0xb4
	sub r0, #0x40
_021C089A:
	add r2, r3, #0
	mul r2, r5
	add r2, r4, r2
	ldr r2, [r2, r0]
	asr r6, r2, #0xb
	lsr r6, r6, #0x14
	add r6, r2, r6
	asr r2, r6, #0xc
	lsl r6, r3, #1
	add r6, r1, r6
	strh r2, [r6, #8]
	ldr r2, [r4, #0x30]
	add r3, r3, #1
	cmp r3, r2
	blt _021C089A
_021C08B8:
	add r4, #0xdc
	ldr r0, [r4]
	ldr r1, _021C08CC ; =0x00002808
	add r2, sp, #0
	mov r3, #0x14
	bl ovy216_21bba4c
_021C08C6:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021C08CC: .word 0x00002808
	thumb_func_end ovy216_21c0864
_021C08D0:
	.byte 0x01, 0xB7, 0x1B, 0x02, 0x29, 0xB7, 0x1B, 0x02, 0x5D, 0xB7, 0x1B, 0x02, 0x99, 0xBC, 0x1B, 0x02
	.byte 0x09, 0xBE, 0x1B, 0x02, 0x41, 0xBF, 0x1B, 0x02, 0xA1, 0xD6, 0x1B, 0x02, 0xB1, 0xD8, 0x1B, 0x02
	.byte 0x05, 0xD8, 0x1B, 0x02, 0xC9, 0xB7, 0x1B, 0x02, 0x35, 0xB8, 0x1B, 0x02, 0x7D, 0xB8, 0x1B, 0x02
	.byte 0x3D, 0xB9, 0x1B, 0x02, 0x71, 0xB9, 0x1B, 0x02, 0x79, 0xB9, 0x1B, 0x02, 0x9D, 0xBB, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAD, 0xBA, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x79, 0xBB, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x95, 0xBB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x85, 0xBA, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBD, 0xBB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xBB, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0xBC, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x15, 0xBC, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE5, 0xBB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF5, 0xBB, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0xBC, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x39, 0xBC, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x49, 0xBC, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x61, 0xBC, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x55, 0xBA, 0x1B, 0x02, 0x79, 0xBC, 0x1B, 0x02, 0x00, 0x17, 0x0D, 0x0D
	.byte 0xD8, 0x00, 0x08, 0x02, 0x08, 0x03, 0x08, 0x04, 0x18, 0x00, 0x00, 0xFF, 0x02, 0x03, 0x06, 0x05
	.byte 0x04, 0x05, 0x02, 0x00, 0x01, 0x03, 0x06, 0x05, 0x04, 0x07, 0x07, 0x00, 0xCC, 0x00, 0x54, 0x00
	.byte 0xCC, 0x00, 0x35, 0x00, 0xE9, 0x00, 0x48, 0x00, 0xDF, 0x00, 0x67, 0x00, 0xB8, 0x00, 0x67, 0x00
	.byte 0xAE, 0x00, 0x48, 0x00, 0x14, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x02, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0xC6, 0x1B, 0x02, 0xCD, 0xC7, 0x1B, 0x02, 0x15, 0xC8, 0x1B, 0x02
	.byte 0x89, 0xC6, 0x1B, 0x02, 0x41, 0xC8, 0x1B, 0x02, 0x79, 0xC8, 0x1B, 0x02, 0x91, 0xC9, 0x1B, 0x02
	.byte 0xA9, 0xC9, 0x1B, 0x02, 0x35, 0xCA, 0x1B, 0x02, 0x91, 0xCB, 0x1B, 0x02, 0xB1, 0xCB, 0x1B, 0x02
	.byte 0xED, 0xCB, 0x1B, 0x02, 0x25, 0xCC, 0x1B, 0x02, 0xC9, 0xCC, 0x1B, 0x02, 0x19, 0xCD, 0x1B, 0x02
	.byte 0x39, 0xCD, 0x1B, 0x02, 0x81, 0xCD, 0x1B, 0x02, 0xDD, 0xCD, 0x1B, 0x02, 0x09, 0xCE, 0x1B, 0x02
	.byte 0x29, 0xCE, 0x1B, 0x02, 0x65, 0xCE, 0x1B, 0x02, 0xA1, 0xCE, 0x1B, 0x02, 0x55, 0xCA, 0x1B, 0x02
	.byte 0x8D, 0xCA, 0x1B, 0x02, 0x21, 0xCB, 0x1B, 0x02, 0x59, 0xCB, 0x1B, 0x02, 0xF1, 0xC7, 0x1B, 0x02
	.byte 0x05, 0xCF, 0x1B, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0xD7, 0x00
	.byte 0x43, 0x01, 0x67, 0x01, 0x00, 0x00, 0xC6, 0x00, 0x56, 0x01, 0x67, 0x01, 0x25, 0x00, 0x8E, 0x00
	.byte 0xD7, 0x00, 0x43, 0x01, 0xFE, 0x80, 0x60, 0x40, 0xFF, 0x00, 0x00, 0x00, 0x49, 0xFB, 0x1B, 0x02
	.byte 0x71, 0xFB, 0x1B, 0x02, 0xB1, 0xFB, 0x1B, 0x02, 0xB4, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x0B, 0x1C, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0x14, 0x0C, 0x1C, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10
	.byte 0x84, 0x10, 0x84, 0x10, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x12, 0x08, 0x02, 0x0F, 0x00, 0x94, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x06, 0x08, 0x02, 0x0F, 0x00, 0xBC, 0x00, 0xB4, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xF4, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0C, 0x1C, 0x02
	.byte 0x24, 0x0D, 0x1C, 0x02, 0x78, 0x0D, 0x1C, 0x02, 0x08, 0x0E, 0x1C, 0x02, 0xB4, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0xD4, 0x0B, 0x1C, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x98, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE4, 0x0B, 0x1C, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x12, 0x08, 0x02, 0x0F, 0x00, 0x94, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x0A, 0x08, 0x02, 0x0F, 0x00, 0xBC, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x13, 0x0A, 0x08, 0x02, 0x0F, 0x00, 0xE4, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x12, 0x08, 0x02
	.byte 0x0F, 0x00, 0x94, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0D, 0x08, 0x02, 0x0F, 0x00, 0xBC, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x06, 0x08, 0x02, 0x0F, 0x00, 0xE4, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x14, 0x0D, 0x08, 0x02, 0x0F, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38, 0x0B, 0x1C, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x44, 0x0B, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0x4C, 0x0B, 0x1C, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x3C, 0x0B, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9F, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00
	.byte 0x9F, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00, 0x95, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x00
	.byte 0xA9, 0x00, 0x00, 0x00, 0xAE, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x13, 0x08, 0x02
	.byte 0x0F, 0x00, 0x94, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0E, 0x08, 0x02, 0x0F, 0x00, 0xBC, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x09, 0x08, 0x02, 0x0F, 0x00, 0xE4, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x12, 0x09, 0x08, 0x02, 0x0F, 0x00, 0x0C, 0x01, 0x01, 0x00, 0x00, 0x00, 0x14, 0x0E, 0x08, 0x02
	.byte 0x0F, 0x00, 0x34, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x01
	.byte 0xB4, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0xD8, 0x00, 0x90, 0x00, 0x48, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00
	.byte 0xD2, 0x00, 0x4A, 0x01, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0xB4, 0x00, 0x0E, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x5A, 0x00, 0xA2, 0x00, 0xEA, 0x00, 0x32, 0x01, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x25, 0x07, 0x00, 0x00, 0x25, 0x07, 0x00, 0x00, 0x25, 0x07, 0x00, 0x00, 0x26, 0x07, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x03, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x03, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0C, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x8C, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0C, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xC8, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0C, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xBC, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x0C, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x5C, 0x0C, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xEC, 0x0C, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xA4, 0x0C, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xBC, 0x0C, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x74, 0x0C, 0x1C, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x0B, 0x1C, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x15, 0xD9, 0x1B, 0x02, 0x29, 0xD9, 0x1B, 0x02, 0x6D, 0xD9, 0x1B, 0x02, 0x85, 0xD9, 0x1B, 0x02
	.byte 0xC1, 0xD9, 0x1B, 0x02, 0xE5, 0xD9, 0x1B, 0x02, 0x19, 0xDA, 0x1B, 0x02, 0xAD, 0xDA, 0x1B, 0x02
	.byte 0xDD, 0xDA, 0x1B, 0x02, 0x09, 0xDB, 0x1B, 0x02, 0x29, 0xDB, 0x1B, 0x02, 0x55, 0xDB, 0x1B, 0x02
	.byte 0x71, 0xDB, 0x1B, 0x02, 0x99, 0xDB, 0x1B, 0x02, 0xE1, 0xDB, 0x1B, 0x02, 0x2D, 0xDC, 0x1B, 0x02
	.byte 0x51, 0xDC, 0x1B, 0x02, 0xF1, 0xDC, 0x1B, 0x02, 0x7D, 0xDD, 0x1B, 0x02, 0xB9, 0xDD, 0x1B, 0x02
	.byte 0xE1, 0xDD, 0x1B, 0x02, 0x59, 0xDE, 0x1B, 0x02, 0x75, 0xDE, 0x1B, 0x02, 0x8D, 0xDE, 0x1B, 0x02
	.byte 0xA9, 0xDE, 0x1B, 0x02, 0xC1, 0xDE, 0x1B, 0x02, 0xF5, 0xDE, 0x1B, 0x02, 0x05, 0xDF, 0x1B, 0x02
	.byte 0x69, 0xE0, 0x1B, 0x02, 0xA9, 0xE0, 0x1B, 0x02, 0xD1, 0xE0, 0x1B, 0x02, 0x45, 0xE1, 0x1B, 0x02
	.byte 0x5D, 0xE1, 0x1B, 0x02, 0x85, 0xE1, 0x1B, 0x02, 0x15, 0xE2, 0x1B, 0x02, 0x8D, 0xE2, 0x1B, 0x02
	.byte 0xD9, 0xE2, 0x1B, 0x02, 0x2D, 0xE3, 0x1B, 0x02, 0x51, 0xE3, 0x1B, 0x02, 0xED, 0xE3, 0x1B, 0x02
	.byte 0x11, 0xE4, 0x1B, 0x02, 0x3D, 0xE4, 0x1B, 0x02, 0x55, 0xE4, 0x1B, 0x02, 0x91, 0xE4, 0x1B, 0x02
	.byte 0xED, 0xE4, 0x1B, 0x02, 0x49, 0xE5, 0x1B, 0x02, 0x5D, 0xE5, 0x1B, 0x02, 0x79, 0xE5, 0x1B, 0x02
	.byte 0xA1, 0xE5, 0x1B, 0x02, 0x1D, 0xE6, 0x1B, 0x02, 0x49, 0xE6, 0x1B, 0x02, 0x71, 0xE6, 0x1B, 0x02
	.byte 0x89, 0xE6, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x75, 0x72, 0x75, 0x32, 0x2E, 0x63, 0x00, 0x67, 0x75, 0x72, 0x75, 0x32, 0x5F, 0x63, 0x6F
	.byte 0x6D, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x67, 0x75, 0x72, 0x75, 0x32, 0x5F, 0x6D, 0x61
	.byte 0x69, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021C08D0
