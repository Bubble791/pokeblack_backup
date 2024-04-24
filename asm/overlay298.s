    .include "macros/function.inc"
	.include "overlay298.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy298_219fbc0
ovy298_219fbc0: ; 0x0219FBC0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x4f
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _0219FBE8 ; =0x021ACDE0
	mov r1, #0x14
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	str r5, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	str r4, [r0, #0xc]
	str r6, [r0, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219FBE8: .word 0x021ACDE0
	thumb_func_end ovy298_219fbc0

	thumb_func_start sub_0219FBEC
sub_0219FBEC: ; 0x0219FBEC
	ldr r3, _0219FBF0 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219FBF0: .word GFL_HeapFree
	thumb_func_end sub_0219FBEC

	thumb_func_start ovy298_219fbf4
ovy298_219fbf4: ; 0x0219FBF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r3, [r4, #4]
	mov r2, #1
	cmp r3, #0
	beq _0219FC0A
	cmp r3, #1
	beq _0219FC2E
	cmp r3, #2
	beq _0219FC4C
	b _0219FC6A
_0219FC0A:
	ldr r3, [r4]
	ldr r5, [r3]
	cmp r5, #0
	beq _0219FC20
	str r1, [sp]
	add r1, r4, #0
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	add r1, #8
	blx r5
	add r2, r0, #0
_0219FC20:
	cmp r2, #1
	bne _0219FC6A
	mov r0, #1
_0219FC26:
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	b _0219FC6A
_0219FC2E:
	ldr r3, [r4]
	ldr r5, [r3, #4]
	cmp r5, #0
	beq _0219FC44
	str r1, [sp]
	add r1, r4, #0
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	add r1, #8
	blx r5
	add r2, r0, #0
_0219FC44:
	cmp r2, #1
	bne _0219FC6A
	mov r0, #2
	b _0219FC26
_0219FC4C:
	ldr r3, [r4]
	ldr r5, [r3, #8]
	cmp r5, #0
	beq _0219FC62
	str r1, [sp]
	add r1, r4, #0
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	add r1, #8
	blx r5
	add r2, r0, #0
_0219FC62:
	cmp r2, #1
	bne _0219FC6A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219FC6A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_219fbf4

	thumb_func_start ovy298_219fc70
ovy298_219fc70: ; 0x0219FC70
	push {r4, lr}
	sub sp, #8
	ldr r3, [r0]
	ldr r4, [r3, #0xc]
	cmp r4, #0
	beq _0219FC8A
	str r1, [sp]
	str r2, [sp, #4]
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0, #0x10]
	add r1, #8
	blx r4
_0219FC8A:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_219fc70

	thumb_func_start ovy298_219fc90
ovy298_219fc90: ; 0x0219FC90
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, [r0]
	ldr r4, [r2, #0x10]
	cmp r4, #0
	beq _0219FCA8
	str r1, [sp]
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0, #0x10]
	add r1, #8
	blx r4
_0219FCA8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy298_219fc90

	thumb_func_start ovy298_219fcac
ovy298_219fcac: ; 0x0219FCAC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xc8
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _0219FCC8 ; =0x021ACDE0
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x10]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219FCC8: .word 0x021ACDE0
	thumb_func_end ovy298_219fcac

	thumb_func_start ovy298_219fccc
ovy298_219fccc: ; 0x0219FCCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ovy298_219fccc

	thumb_func_start ovy298_219fcdc
ovy298_219fcdc: ; 0x0219FCDC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r3, #0
	mov r1, #0x60
	add r4, r2, #0
	str r1, [sp]
	ldr r3, _0219FD18 ; =0x021ACDF8
	mov r1, #0x24
	mov r2, #1
	bl GFL_HeapAllocate
	str r5, [r0]
	str r4, [r0, #4]
	ldr r1, [sp, #0x18]
	str r6, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x24]
	str r1, [r0, #0x18]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0x1c]
	ldr r1, [sp, #0x2c]
	str r1, [r0, #0x20]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219FD18: .word 0x021ACDF8
	thumb_func_end ovy298_219fcdc

	thumb_func_start sub_0219FD1C
sub_0219FD1C: ; 0x0219FD1C
	ldr r3, _0219FD20 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219FD20: .word GFL_HeapFree
	thumb_func_end sub_0219FD1C

	thumb_func_start sub_0219FD24
sub_0219FD24: ; 0x0219FD24
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219FD24

	thumb_func_start sub_0219FD28
sub_0219FD28: ; 0x0219FD28
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219FD28

	thumb_func_start sub_0219FD2C
sub_0219FD2C: ; 0x0219FD2C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219FD2C

	thumb_func_start sub_0219FD30
sub_0219FD30: ; 0x0219FD30
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219FD30

	thumb_func_start sub_0219FD34
sub_0219FD34: ; 0x0219FD34
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219FD34

	thumb_func_start sub_0219FD38
sub_0219FD38: ; 0x0219FD38
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219FD38

	thumb_func_start sub_0219FD3C
sub_0219FD3C: ; 0x0219FD3C
	ldrh r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219FD3C

	thumb_func_start sub_0219FD40
sub_0219FD40: ; 0x0219FD40
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x20]
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219FD40

	thumb_func_start ovy298_219fd4c
ovy298_219fd4c: ; 0x0219FD4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	ldrh r4, [r0]
	ldr r0, [r5]
	bl sub_0200D190
	add r6, r0, #0
	mov r7, #0
_0219FD5E:
	ldr r1, [r5, #0x20]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, [r5, #0x20]
	ldrh r0, [r5, #0x1c]
	ldrh r1, [r2]
	cmp r1, r0
	blo _0219FD72
	strh r7, [r2]
_0219FD72:
	ldr r0, [r5, #0x20]
	ldrh r1, [r0]
	cmp r1, r4
	beq _0219FD8A
	ldr r2, [r5, #0x18]
	lsl r1, r1, #1
	ldrh r1, [r2, r1]
	add r0, r6, #0
	bl sub_0200D7F4
	cmp r0, #0
	beq _0219FD5E
_0219FD8A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_219fd4c

	thumb_func_start ovy298_219fd8c
ovy298_219fd8c: ; 0x0219FD8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	ldrh r4, [r0]
	ldr r0, [r5]
	bl sub_0200D190
	add r6, r0, #0
_0219FD9C:
	ldr r0, [r5, #0x20]
	ldrh r1, [r0]
	cmp r1, #0
	bne _0219FDA8
	ldrh r1, [r5, #0x1c]
	b _0219FDA8
_0219FDA8:
	sub r1, r1, #1
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrh r1, [r0]
	cmp r1, r4
	beq _0219FDC4
	ldr r2, [r5, #0x18]
	lsl r1, r1, #1
	ldrh r1, [r2, r1]
	add r0, r6, #0
	bl sub_0200D7F4
	cmp r0, #0
	beq _0219FD9C
_0219FDC4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_219fd8c

	thumb_func_start ovy298_219fdc8
ovy298_219fdc8: ; 0x0219FDC8
	push {r3, lr}
	ldr r1, _0219FDDC ; =0x00000113
	ldr r3, _0219FDE0 ; =0x021ACDF8
	str r1, [sp]
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_0219FDDC: .word 0x00000113
_0219FDE0: .word 0x021ACDF8
	thumb_func_end ovy298_219fdc8

	thumb_func_start sub_0219FDE4
sub_0219FDE4: ; 0x0219FDE4
	ldr r3, _0219FDE8 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219FDE8: .word GFL_HeapFree
	thumb_func_end sub_0219FDE4

	thumb_func_start ovy298_219fdec
ovy298_219fdec: ; 0x0219FDEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r5, #0
	mov r7, #0x10
	add r6, sp, #0
_0219FDFC:
	lsl r0, r5, #2
	ldr r1, [r6, r0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0219FE3A
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0219FE36
	str r4, [r1, #0x10]
	ldr r2, [r1, #8]
	ldr r0, [r1, #0xc]
	add r0, r2, r0
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldr r0, [r1, #8]
	ble _0219FE26
	cmp r0, #0x10
	blt _0219FE2E
	str r7, [r1, #8]
	b _0219FE2C
_0219FE26:
	cmp r0, #0
	bgt _0219FE2E
	str r4, [r1, #8]
_0219FE2C:
	str r4, [r1, #0xc]
_0219FE2E:
	add r0, r5, #0
	bl ovy298_219fea0
	b _0219FE3A
_0219FE36:
	sub r0, r0, #1
	str r0, [r1, #0x10]
_0219FE3A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _0219FDFC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_219fdec

	thumb_func_start sub_0219FE48
sub_0219FE48: ; 0x0219FE48
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0219FE52
	mov r0, #1
	bx lr
_0219FE52:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FE48

	thumb_func_start sub_0219FE58
sub_0219FE58: ; 0x0219FE58
	mov r2, #0
	mov r1, #2
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219FE58

	thumb_func_start sub_0219FE64
sub_0219FE64: ; 0x0219FE64
	mov r1, #0x10
	str r1, [r0, #8]
	sub r1, #0x12
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FE64

	thumb_func_start sub_0219FE74
sub_0219FE74: ; 0x0219FE74
	mov r2, #0x10
	str r2, [r1, #8]
	mov r2, #0
	ldr r3, _0219FE84 ; =ovy298_219fea0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	bx r3
	nop
_0219FE84: .word ovy298_219fea0
	thumb_func_end sub_0219FE74

	thumb_func_start sub_0219FE88
sub_0219FE88: ; 0x0219FE88
	ldr r3, _0219FE94 ; =ovy298_219fea0
	mov r2, #0
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	bx r3
	.align 2, 0
_0219FE94: .word ovy298_219fea0
	thumb_func_end sub_0219FE88

	thumb_func_start sub_0219FE98
sub_0219FE98: ; 0x0219FE98
	mov r1, #0x2d
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219FE98

	thumb_func_start ovy298_219fea0
ovy298_219fea0: ; 0x0219FEA0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	cmp r0, #0
	ldr r3, [r2, #8]
	bne _0219FEC2
	mov r0, #0
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0219FED8 ; =0x04000050
	ldmia r2!, {r1, r2}
	bl G2x_SetBlendBrightnessExt_
	add sp, #8
	pop {r3, pc}
_0219FEC2:
	mov r0, #0
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0219FEDC ; =0x04001050
	ldmia r2!, {r1, r2}
	bl G2x_SetBlendBrightnessExt_
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0219FED8: .word 0x04000050
_0219FEDC: .word 0x04001050
	thumb_func_end ovy298_219fea0

	thumb_func_start ovy298_219fee0
ovy298_219fee0: ; 0x0219FEE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219FF88 ; =0x000001E5
	add r7, r1, #0
	ldr r3, _0219FF8C ; =0x021ACDF8
	mov r1, #0x14
	mov r2, #1
	add r5, r0, #0
	str r6, [sp]
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #2
	bl sub_0203A584
	add r1, r0, #0
	add r0, r6, #3
	str r0, [sp]
	ldr r3, _0219FF8C ; =0x021ACDF8
	add r0, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r1, [r4, #4]
	mov r0, #2
	bl sub_0203A58C
	str r0, [r4]
	add r0, r5, #0
	bl sub_02026DC0
	str r0, [r4, #8]
	mov r1, #1
	bl sub_0202778C
	strh r7, [r4, #0xc]
	ldrh r1, [r4, #0xc]
	lsl r1, r1, #0x1f
	beq _0219FF3C
	sub r6, #0x45
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_02026E04
_0219FF3C:
	ldrh r1, [r4, #0xc]
	mov r0, #4
	tst r0, r1
	beq _0219FF52
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #2
	add r2, #0xfe
	add r3, r5, #0
	bl sub_02026E04
_0219FF52:
	ldrh r1, [r4, #0xc]
	mov r0, #2
	tst r0, r1
	beq _0219FF68
	mov r2, #0x1a
	ldr r0, [r4, #8]
	mov r1, #1
	lsl r2, r2, #4
	add r3, r5, #0
	bl sub_02026E04
_0219FF68:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	tst r0, r1
	beq _0219FF7E
	mov r2, #7
	ldr r0, [r4, #8]
	mov r1, #3
	lsl r2, r2, #6
	add r3, r5, #0
	bl sub_02026E04
_0219FF7E:
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FF88: .word 0x000001E5
_0219FF8C: .word 0x021ACDF8
	thumb_func_end ovy298_219fee0

	thumb_func_start sub_0219FF90
sub_0219FF90: ; 0x0219FF90
	ldr r3, _0219FF98 ; =ovy298_219fee0
	mov r1, #0xf
	bx r3
	nop
_0219FF98: .word ovy298_219fee0
	thumb_func_end sub_0219FF90

	thumb_func_start ovy298_219ff9c
ovy298_219ff9c: ; 0x0219FF9C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0xc]
	mov r0, #8
	tst r0, r1
	beq _0219FFB0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02026E48
_0219FFB0:
	ldrh r1, [r4, #0xc]
	mov r0, #2
	tst r0, r1
	beq _0219FFC0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02026E48
_0219FFC0:
	ldrh r1, [r4, #0xc]
	mov r0, #4
	tst r0, r1
	beq _0219FFD0
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02026E48
_0219FFD0:
	ldrh r1, [r4, #0xc]
	lsl r1, r1, #0x1f
	beq _0219FFDE
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02026E48
_0219FFDE:
	ldr r0, [r4, #8]
	bl sub_02026DE8
	ldr r0, [r4]
	bl sub_0203A610
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy298_219ff9c

	thumb_func_start ovy298_219fff8
ovy298_219fff8: ; 0x0219FFF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0203A5D0
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bhi _021A003A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0014: ; jump table
	.short _021A003A - _021A0014 - 2 ; case 0
	.short _021A003A - _021A0014 - 2 ; case 1
	.short _021A001C - _021A0014 - 2 ; case 2
	.short _021A002C - _021A0014 - 2 ; case 3
_021A001C:
	ldr r0, [r4, #8]
	bl sub_02027780
	cmp r0, #0
	bne _021A003A
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
_021A002C:
	ldr r0, [r4, #8]
	bl sub_02027780
	cmp r0, #0
	bne _021A003A
	mov r0, #1
	str r0, [r4, #0x10]
_021A003A:
	pop {r4, pc}
	thumb_func_end ovy298_219fff8

	thumb_func_start sub_021A003C
sub_021A003C: ; 0x021A003C
	ldr r0, [r0, #8]
	ldr r3, _021A0044 ; =sub_020275F8
	bx r3
	nop
_021A0044: .word sub_020275F8
	thumb_func_end sub_021A003C

	thumb_func_start sub_021A0048
sub_021A0048: ; 0x021A0048
	ldr r0, [r0, #0x10]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A0054
	mov r0, #1
	bx lr
_021A0054:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A0048

	thumb_func_start ovy298_21a0058
ovy298_21a0058: ; 0x021A0058
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A0048
	cmp r0, #0
	bne _021A0076
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0x10
	mov r3, #0
	bl ovy298_21a0134
	mov r0, #2
	str r0, [r4, #0x10]
_021A0076:
	pop {r4, pc}
	thumb_func_end ovy298_21a0058

	thumb_func_start ovy298_21a0078
ovy298_21a0078: ; 0x021A0078
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A0048
	cmp r0, #0
	bne _021A0096
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	mov r3, #0x10
	bl ovy298_21a0134
	mov r0, #3
	str r0, [r4, #0x10]
_021A0096:
	pop {r4, pc}
	thumb_func_end ovy298_21a0078

	thumb_func_start ovy298_21a0098
ovy298_21a0098: ; 0x021A0098
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A0048
	cmp r0, #0
	bne _021A00B4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x10
	bl ovy298_21a0134
	mov r0, #1
	str r0, [r4, #0x10]
_021A00B4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0098

	thumb_func_start ovy298_21a00b8
ovy298_21a00b8: ; 0x021A00B8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	add r4, sp, #0x20
	ldrh r5, [r4, #8]
	str r5, [sp, #8]
	ldrh r4, [r4, #0xc]
	str r4, [sp, #0xc]
	ldr r0, [r0, #8]
	bl sub_02026F08
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a00b8

	thumb_func_start ovy298_21a00d8
ovy298_21a00d8: ; 0x021A00D8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0xc]
	lsl r1, r1, #0x1f
	beq _021A00F0
	mov r3, #0x1a
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02026F7C
_021A00F0:
	ldrh r1, [r4, #0xc]
	mov r0, #4
	tst r0, r1
	beq _021A0106
	mov r3, #2
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #0
	add r3, #0xfe
	bl sub_02026F7C
_021A0106:
	ldrh r1, [r4, #0xc]
	mov r0, #2
	tst r0, r1
	beq _021A011C
	mov r3, #0x1a
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02026F7C
_021A011C:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	tst r0, r1
	beq _021A0132
	mov r3, #7
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02026F7C
_021A0132:
	pop {r4, pc}
	thumb_func_end ovy298_21a00d8

	thumb_func_start ovy298_21a0134
ovy298_21a0134: ; 0x021A0134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	add r7, r1, #0
	mov r1, #1
	add r4, r2, #0
	add r6, r3, #0
	tst r0, r1
	beq _021A015E
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, _021A01BC ; =0x00001FFF
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	add r3, r7, #0
	bl sub_02026FE4
_021A015E:
	ldrh r0, [r5, #0xc]
	mov r1, #4
	tst r0, r1
	beq _021A017C
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r2, #0xff
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	add r3, r7, #0
	bl sub_02026FE4
_021A017C:
	ldrh r0, [r5, #0xc]
	mov r1, #2
	tst r0, r1
	beq _021A019A
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, _021A01BC ; =0x00001FFF
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	add r3, r7, #0
	bl sub_02026FE4
_021A019A:
	ldrh r0, [r5, #0xc]
	mov r1, #8
	tst r0, r1
	beq _021A01B8
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, _021A01C0 ; =0x00003FFF
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	add r3, r7, #0
	bl sub_02026FE4
_021A01B8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A01BC: .word 0x00001FFF
_021A01C0: .word 0x00003FFF
	thumb_func_end ovy298_21a0134

	thumb_func_start ovy298_21a01c4
ovy298_21a01c4: ; 0x021A01C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x2c]
	add r4, r2, #0
	str r3, [sp, #0x10]
	ldr r1, _021A02E0 ; =0x00000323
	mov r2, #1
	str r1, [sp]
	str r2, [sp, #0x24]
	ldr r3, _021A02E4 ; =0x021ACDF8
	mov r1, #8
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r7, r0, #0
	cmp r4, #4
	bhs _021A01F0
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0
	b _021A01F2
_021A01F0:
	mov r0, #4
_021A01F2:
	str r0, [sp, #0x20]
	mov r0, #0x9d
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [sp, #0x24]
	mov r2, #0xc
	lsl r1, r1, #2
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r6, _021A02E8 ; =0x021ABF7C
	mul r2, r1
	str r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r2, _021A02EC ; =0x021ABF84
	ldr r1, [sp, #0x18]
	add r6, r6, r3
	ldr r1, [r2, r1]
	ldr r3, [sp, #0x2c]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldrb r3, [r3, r6]
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	lsl r3, r3, #5
	str r0, [sp, #0x28]
	str r5, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	add r0, sp, #0x48
	ldrb r0, [r0]
	ldr r6, _021A02F0 ; =0x021ABF74
	ldr r3, [sp, #0x1c]
	lsl r0, r0, #5
	add r6, r6, r3
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	ldrb r3, [r3, r6]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	lsl r3, r3, #5
	str r5, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	mov r0, #0
	str r0, [sp]
	ldr r2, _021A02F4 ; =0x021ABF88
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x28]
	ldr r1, [r2, r1]
	str r5, [sp, #4]
	add r2, r4, #0
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	str r0, [r7]
	ldr r1, _021A02F8 ; =0x021ABF8C
	ldr r0, [sp, #0x18]
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x2c]
	cmp r0, #3
	bne _021A0284
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021A0284
	mov r1, #0x21
_021A0284:
	ldr r0, [r7]
	add r2, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r3, #0
	str r5, [sp, #0xc]
	bl GFL_G2DIOLoadNSCRSync
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r5, #0x15
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	str r5, [sp]
	add r0, sp, #0x48
	ldrb r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0x20
	bl sub_0204566C
	ldr r0, [sp, #0x28]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl sub_02045B7C
	strb r4, [r7, #4]
	mov r0, #4
	strb r0, [r7, #5]
	add r0, r7, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A02E0: .word 0x00000323
_021A02E4: .word 0x021ACDF8
_021A02E8: .word 0x021ABF7C
_021A02EC: .word 0x021ABF84
_021A02F0: .word 0x021ABF74
_021A02F4: .word 0x021ABF88
_021A02F8: .word 0x021ABF8C
	thumb_func_end ovy298_21a01c4

	thumb_func_start ovy298_21a02fc
ovy298_21a02fc: ; 0x021A02FC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4]
	ldrb r0, [r4, #4]
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a02fc

	thumb_func_start ovy298_21a031c
ovy298_21a031c: ; 0x021A031C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021A0336
	ldrb r0, [r4, #4]
	mov r1, #1
	mov r2, #1
	bl sub_02045E1C
	mov r0, #4
	strb r0, [r4, #5]
	pop {r4, pc}
_021A0336:
	sub r0, r0, #1
	strb r0, [r4, #5]
	pop {r4, pc}
	thumb_func_end ovy298_21a031c

	thumb_func_start ovy298_21a033c
ovy298_21a033c: ; 0x021A033C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0
	str r3, [sp, #0x10]
	cmp r4, #4
	blo _021A0350
	mov r7, #4
_021A0350:
	ldr r0, [sp, #0x38]
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x14]
	cmp r6, #0
	bne _021A037A
	add r3, sp, #0x30
	ldrb r1, [r3]
	add r2, r7, #0
	lsl r1, r1, #5
	str r1, [sp]
	ldr r1, [sp, #0x10]
	lsl r1, r1, #5
	str r1, [sp, #4]
	str r5, [sp, #8]
	ldrb r3, [r3, #4]
	ldr r1, [sp, #0x3c]
	lsl r3, r3, #5
	bl GFL_G2DIOLoadArcNCLR
_021A037A:
	cmp r6, #0
	bne _021A0390
	mov r3, #0
	str r3, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x40]
	add r2, r4, #0
	str r5, [sp, #4]
	bl GFL_BGSysLoadArcNCGRDynamic
	str r0, [sp, #0x48]
_021A0390:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	mov r3, #0
	str r5, [sp, #0xc]
	bl GFL_G2DIOLoadNSCRSync
	mov r0, #0x18
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0x20
	bl sub_0204566C
	ldr r0, [sp, #0x14]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl sub_02045B7C
	ldr r0, [sp, #0x48]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a033c

	thumb_func_start sub_021A03D4
sub_021A03D4: ; 0x021A03D4
	add r2, r1, #0
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	ldr r3, _021A03E4 ; =sub_02044668
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bx r3
	.align 2, 0
_021A03E4: .word sub_02044668
	thumb_func_end sub_021A03D4

	thumb_func_start ovy298_21a03e8
ovy298_21a03e8: ; 0x021A03E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	mov r2, #9
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x95
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x2c
	mov r2, #0x95
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	mov r0, #0x95
	strh r0, [r4]
	str r7, [r5, #0x10]
	ldrh r1, [r4]
	mov r0, #0
	mov r2, #1
	bl ovy298_21a07a8
	str r0, [r4, #4]
	bl ovy298_21a0858
	ldrh r1, [r4]
	mov r0, #0
	mov r2, #0
	bl ovy298_21a07a8
	str r0, [r4, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #8]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0xc]
	ldr r0, _021A04CC ; =0x021A0619
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x10]
	ldr r0, [r5]
	bl sub_0200D190
	bl sub_0200D1DC
	add r1, r0, #0
	ldrh r0, [r4]
	ldr r2, [r5, #0x14]
	bl ovy298_21a1268
	str r0, [r4, #0x14]
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	bl ovy298_21a21f0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [sp]
	ldr r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xe
	str r0, [sp, #0x14]
	ldrh r0, [r4]
	ldr r1, [r5]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl ovy298_219fcdc
	str r0, [r4, #0x1c]
	str r6, [r4, #0x20]
	str r6, [r4, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy298_21a061c
	str r6, [r4, #0x28]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A04CC: .word 0x021A0619
	thumb_func_end ovy298_21a03e8

	thumb_func_start ovy298_21a04d0
ovy298_21a04d0: ; 0x021A04D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #3
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021A04EC
	bl sub_0219FBEC
_021A04EC:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021A04F6
	bl GFL_HeapFree
_021A04F6:
	ldr r0, [r4, #0x1c]
	bl sub_0219FD1C
	ldr r0, [r4, #0x18]
	bl ovy298_21a2258
	ldr r0, [r4, #0x14]
	bl ovy298_21a12fc
	ldr r0, [r4, #0x10]
	bl GFL_TCBRemove
	ldr r0, [r4, #0xc]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	bl sub_02021A18
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl ovy298_21a0858
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x95
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a04d0

	thumb_func_start ovy298_21a0538
ovy298_21a0538: ; 0x021A0538
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r1]
	add r5, r2, #0
	add r4, r3, #0
	mov r7, #0
	cmp r0, #8
	bgt _021A054A
	add r0, r0, #1
	str r0, [r1]
_021A054A:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ovy298_219fbf4
	cmp r0, #0
	beq _021A0572
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A056E
	str r0, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy298_21a061c
	mov r0, #0
	str r0, [r4, #0x28]
	mov r7, #1
	b _021A0572
_021A056E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A0572:
	cmp r7, #0
	bne _021A05E4
	ldr r0, [r4, #0x14]
	bl ovy298_21a14ac
	add r6, r0, #0
	bne _021A0588
	ldr r0, [r4, #0x14]
	bl ovy298_21a14f8
	add r6, r0, #0
_021A0588:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	add r2, r6, #0
	bl ovy298_219fc70
	cmp r6, #9
	bgt _021A05BA
	cmp r6, #0
	blt _021A05E4
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A05A6: ; jump table
	.short _021A05E4 - _021A05A6 - 2 ; case 0
	.short _021A05C0 - _021A05A6 - 2 ; case 1
	.short _021A05C4 - _021A05A6 - 2 ; case 2
	.short _021A05E4 - _021A05A6 - 2 ; case 3
	.short _021A05E4 - _021A05A6 - 2 ; case 4
	.short _021A05E4 - _021A05A6 - 2 ; case 5
	.short _021A05C8 - _021A05A6 - 2 ; case 6
	.short _021A05CE - _021A05A6 - 2 ; case 7
	.short _021A05D2 - _021A05A6 - 2 ; case 8
	.short _021A05D6 - _021A05A6 - 2 ; case 9
_021A05BA:
	cmp r6, #0x22
	beq _021A05DA
	b _021A05E4
_021A05C0:
	mov r0, #1
	b _021A05E2
_021A05C4:
	mov r0, #2
	b _021A05E2
_021A05C8:
	mov r0, #1
_021A05CA:
	str r0, [r4, #0x28]
	b _021A05E4
_021A05CE:
	mov r0, #2
	b _021A05CA
_021A05D2:
	mov r0, #3
	b _021A05CA
_021A05D6:
	mov r0, #4
	b _021A05CA
_021A05DA:
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #2]
	strh r0, [r5, #0x1a]
	mov r0, #0
_021A05E2:
	str r0, [r5, #0x10]
_021A05E4:
	ldr r0, [r4, #0x14]
	bl ovy298_21a131c
	ldr r0, [r4, #0x18]
	bl ovy298_21a2284
	ldr r0, [r4, #0xc]
	bl sub_02021A3C
	ldr r0, [r4, #4]
	bl ovy298_21a08b0
	ldr r0, [r4, #4]
	bl ovy298_21a08c4
	cmp r7, #0
	bne _021A060E
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ovy298_219fc90
_021A060E:
	ldr r0, [r4, #4]
	bl ovy298_21a08d4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a0538
_021A0618:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy298_21a061c
ovy298_21a061c: ; 0x021A061C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021A062E
	bl sub_0219FBEC
_021A062E:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021A0638
	bl GFL_HeapFree
_021A0638:
	ldr r0, [r6, #4]
	cmp r0, #4
	bhi _021A06CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A064A: ; jump table
	.short _021A06CA - _021A064A - 2 ; case 0
	.short _021A0654 - _021A064A - 2 ; case 1
	.short _021A0672 - _021A064A - 2 ; case 2
	.short _021A0690 - _021A064A - 2 ; case 3
	.short _021A06AE - _021A064A - 2 ; case 4
_021A0654:
	ldr r0, _021A06DC ; =0x000001CE
	ldr r3, _021A06E0 ; =0x021ACE10
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	ldrh r1, [r4]
	add r5, r0, #0
	bl sub_021A24E0
	str r5, [r4, #0x24]
	ldr r5, _021A06E4 ; =0x021AC3D4
	b _021A06CA
_021A0672:
	ldr r0, _021A06E8 ; =0x000001D6
	ldr r3, _021A06E0 ; =0x021ACE10
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	ldrh r1, [r4]
	add r5, r0, #0
	bl sub_021A328C
	str r5, [r4, #0x24]
	ldr r5, _021A06EC ; =0x021AC45C
	b _021A06CA
_021A0690:
	ldr r0, _021A06F0 ; =0x000001DE
	ldr r3, _021A06E0 ; =0x021ACE10
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	ldrh r1, [r4]
	add r5, r0, #0
	bl sub_021A63D4
	str r5, [r4, #0x24]
	ldr r5, _021A06F4 ; =0x021AC74C
	b _021A06CA
_021A06AE:
	ldr r0, _021A06F8 ; =0x000001E6
	ldr r3, _021A06E0 ; =0x021ACE10
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	ldrh r1, [r4]
	add r5, r0, #0
	bl sub_021A79E0
	str r5, [r4, #0x24]
	ldr r5, _021A06FC ; =0x021AC878
_021A06CA:
	ldrh r2, [r4]
	ldr r1, [r4, #0x24]
	add r0, r5, #0
	bl ovy298_219fbc0
	str r0, [r4, #0x20]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A06DC: .word 0x000001CE
_021A06E0: .word 0x021ACE10
_021A06E4: .word 0x021AC3D4
_021A06E8: .word 0x000001D6
_021A06EC: .word 0x021AC45C
_021A06F0: .word 0x000001DE
_021A06F4: .word 0x021AC74C
_021A06F8: .word 0x000001E6
_021A06FC: .word 0x021AC878
	thumb_func_end ovy298_21a061c

	thumb_func_start ovy298_21a0700
ovy298_21a0700: ; 0x021A0700
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	mov r4, #1
	bl sub_02046CFC
	ldr r0, _021A0790 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _021A0794 ; =0xFFFFCFFD
	bic r2, r1
	add r1, r2, #0
	orr r1, r4
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	mov r4, #0
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _021A0798 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r5, #2
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _021A079C ; =0xBFFF0000
	ldr r0, _021A07A0 ; =0x04000580
	str r1, [r0]
	ldr r5, _021A07A4 ; =0x021ABFF8
_021A0774:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021A0774
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0790: .word 0x04000008
_021A0794: .word 0xFFFFCFFD
_021A0798: .word 0x0000CFEF
_021A079C: .word 0xBFFF0000
_021A07A0: .word 0x04000580
_021A07A4: .word 0x021ABFF8
	thumb_func_end ovy298_21a0700

	thumb_func_start ovy298_21a07a8
ovy298_21a07a8: ; 0x021A07A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021A083C ; =0x000001DB
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp]
	ldr r3, _021A0840 ; =0x021ACE20
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021A0844 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	ldr r0, _021A0848 ; =0x04001050
	mov r2, #0
	strh r2, [r0]
	sub r1, #0x50
	ldr r2, [r1]
	ldr r3, _021A084C ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r3
	str r2, [r1]
	ldr r1, [r0]
	and r1, r3
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _021A0850 ; =0x021AC018
	bl GFL_BGSysSetVRAMBanks
	add r0, r7, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy298_21a0930
	ldr r1, _021A0850 ; =0x021AC018
	add r0, r4, #4
	add r2, r5, #0
	bl ovy298_21a09d4
	cmp r6, #0
	beq _021A082C
	add r0, r4, #0
	add r1, r5, #0
	bl ovy298_21a08f0
_021A082C:
	ldr r0, _021A0854 ; =ovy298_21a091c
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A083C: .word 0x000001DB
_021A0840: .word 0x021ACE20
_021A0844: .word 0x04000050
_021A0848: .word 0x04001050
_021A084C: .word 0xFFFF1FFF
_021A0850: .word 0x021AC018
_021A0854: .word ovy298_21a091c
	thumb_func_end ovy298_21a07a8

	thumb_func_start ovy298_21a0858
ovy298_21a0858: ; 0x021A0858
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy298_21a0904
	add r0, r4, #4
	bl ovy298_21a0a14
	add r0, r4, #0
	bl ovy298_21a0990
	bl sub_020232D8
	ldr r5, _021A08A4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A08A8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A08AC ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A08A4: .word 0x04000050
_021A08A8: .word 0x04001050
_021A08AC: .word 0xFFFF1FFF
	thumb_func_end ovy298_21a0858

	thumb_func_start ovy298_21a08b0
ovy298_21a08b0: ; 0x021A08B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A0A30
	add r0, r4, #0
	bl sub_021A09C8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a08b0

	thumb_func_start ovy298_21a08c4
ovy298_21a08c4: ; 0x021A08C4
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _021A08D2
	add r0, #8
	bl ovy298_21a0ac4
_021A08D2:
	pop {r3, pc}
	thumb_func_end ovy298_21a08c4

	thumb_func_start ovy298_21a08d4
ovy298_21a08d4: ; 0x021A08D4
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _021A08E2
	add r0, #8
	bl sub_021A0AD8
_021A08E2:
	pop {r3, pc}
	thumb_func_end ovy298_21a08d4

	thumb_func_start sub_021A08E4
sub_021A08E4: ; 0x021A08E4
	ldr r3, _021A08EC ; =sub_021A0A40
	add r0, r0, #4
	bx r3
	nop
_021A08EC: .word sub_021A0A40
	thumb_func_end sub_021A08E4

	thumb_func_start ovy298_21a08f0
ovy298_21a08f0: ; 0x021A08F0
	push {r3, lr}
	ldr r2, [r0, #0x10]
	cmp r2, #0
	bne _021A0902
	mov r2, #1
	str r2, [r0, #0x10]
	add r0, #8
	bl ovy298_21a0a44
_021A0902:
	pop {r3, pc}
	thumb_func_end ovy298_21a08f0

	thumb_func_start ovy298_21a0904
ovy298_21a0904: ; 0x021A0904
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021A091A
	add r0, r4, #0
	add r0, #8
	bl ovy298_21a0ab4
	mov r0, #0
	str r0, [r4, #0x10]
_021A091A:
	pop {r4, pc}
	thumb_func_end ovy298_21a0904

	thumb_func_start ovy298_21a091c
ovy298_21a091c: ; 0x021A091C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A09CC
	add r0, r4, #4
	bl sub_021A0A38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a091c

	thumb_func_start ovy298_21a0930
ovy298_21a0930: ; 0x021A0930
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl BmpWin_InitAllocator
	ldr r0, _021A0988 ; =0x021ABFCC
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021A098C ; =0x021AC048
_021A0952:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blo _021A0952
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0988: .word 0x021ABFCC
_021A098C: .word 0x021AC048
	thumb_func_end ovy298_21a0930

	thumb_func_start ovy298_21a0990
ovy298_21a0990: ; 0x021A0990
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A09C4 ; =0x021AC048
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A099A:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021A099A
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A09C4: .word 0x021AC048
	thumb_func_end ovy298_21a0990

	thumb_func_start sub_021A09C8
sub_021A09C8: ; 0x021A09C8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A09C8

	thumb_func_start sub_021A09CC
sub_021A09CC: ; 0x021A09CC
	ldr r3, _021A09D0 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A09D0: .word sub_02045A5C
	thumb_func_end sub_021A09CC

	thumb_func_start ovy298_21a09d4
ovy298_21a09d4: ; 0x021A09D4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A0A10 ; =0x021ABFDC
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x60
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0A10: .word 0x021ABFDC
	thumb_func_end ovy298_21a09d4

	thumb_func_start ovy298_21a0a14
ovy298_21a0a14: ; 0x021A0A14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0a14

	thumb_func_start sub_021A0A30
sub_021A0A30: ; 0x021A0A30
	ldr r3, _021A0A34 ; =sub_0204B794
	bx r3
	.align 2, 0
_021A0A34: .word sub_0204B794
	thumb_func_end sub_021A0A30

	thumb_func_start sub_021A0A38
sub_021A0A38: ; 0x021A0A38
	ldr r3, _021A0A3C ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A0A3C: .word sub_0204B7C8
	thumb_func_end sub_021A0A38

	thumb_func_start sub_021A0A40
sub_021A0A40: ; 0x021A0A40
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A0A40

	thumb_func_start ovy298_21a0a44
ovy298_21a0a44: ; 0x021A0A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	ldr r0, _021A0A98 ; =ovy298_21a0700
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0
	mov r3, #2
	mov r7, #2
	bl sub_02048D28
	ldr r0, _021A0A9C ; =0x00107C20
	str r6, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #0x15
	str r0, [sp, #8]
	ldr r0, _021A0AA0 ; =0x021ABFB4
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021A0AA4 ; =0x021ABFA8
	ldr r3, _021A0AA8 ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp, #0x14]
	ldr r0, _021A0AAC ; =0x021ABFC0
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _021A0AB0 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0A98: .word ovy298_21a0700
_021A0A9C: .word 0x00107C20
_021A0AA0: .word 0x021ABFB4
_021A0AA4: .word 0x021ABFA8
_021A0AA8: .word 0x02094A3C
_021A0AAC: .word 0x021ABFC0
_021A0AB0: .word 0x00001555
	thumb_func_end ovy298_21a0a44

	thumb_func_start ovy298_21a0ab4
ovy298_21a0ab4: ; 0x021A0AB4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0ab4

	thumb_func_start ovy298_21a0ac4
ovy298_21a0ac4: ; 0x021A0AC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy298_21a0ac4

	thumb_func_start sub_021A0AD8
sub_021A0AD8: ; 0x021A0AD8
	ldr r3, _021A0ADC ; =sub_02049AA0
	bx r3
	.align 2, 0
_021A0ADC: .word sub_02049AA0
	thumb_func_end sub_021A0AD8

	thumb_func_start ovy298_21a0ae0
ovy298_21a0ae0: ; 0x021A0AE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r1, [r5, #4]
	mov r0, #0x3c
	add r6, r1, #0
	mul r6, r0
	add r0, #0xcc
	add r6, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, _021A0B9C ; =0x021ACE38
	add r1, r6, #0
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r6, #0
	add r7, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #4]
	str r0, [r7, #4]
	mov r0, #1
	str r4, [r7, #8]
	str r0, [r7, #0xc]
	str r4, [r7, #0x10]
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #4
	blo _021A0B26
	mov r4, #4
	b _021A0B28
_021A0B26:
	str r4, [sp, #0x18]
_021A0B28:
	ldr r0, [r5, #0x18]
	lsl r1, r1, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	add r3, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r0, #0x14
	bl ovy298_21a0de8
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	bls _021A0B94
	add r0, r7, #0
	str r0, [sp, #0x1c]
	add r0, #0x28
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, #0x14
	str r0, [sp, #0x20]
_021A0B6C:
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	str r0, [sp, #4]
	mov r0, #0x3c
	mul r1, r0
	ldr r0, [sp, #0x1c]
	ldr r6, [r5]
	add r0, r0, r1
	lsl r3, r4, #5
	ldr r1, [r5, #8]
	add r3, r6, r3
	bl ovy298_21a0fd8
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021A0B6C
_021A0B94:
	add r0, r7, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A0B9C: .word 0x021ACE38
	thumb_func_end ovy298_21a0ae0

	thumb_func_start ovy298_21a0ba0
ovy298_21a0ba0: ; 0x021A0BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	bls _021A0BC4
	add r6, r5, #0
	add r6, #0x28
	mov r7, #0x3c
_021A0BB2:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy298_21a10f0
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021A0BB2
_021A0BC4:
	add r0, r5, #0
	add r0, #0x14
	bl ovy298_21a0edc
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a0ba0

	thumb_func_start ovy298_21a0bd4
ovy298_21a0bd4: ; 0x021A0BD4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021A0C54
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0BEA: ; jump table
	.short _021A0BF2 - _021A0BEA - 2 ; case 0
	.short _021A0C34 - _021A0BEA - 2 ; case 1
	.short _021A0C38 - _021A0BEA - 2 ; case 2
	.short _021A0C50 - _021A0BEA - 2 ; case 3
_021A0BF2:
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A0C54
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021A0C54
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	bls _021A0C54
	add r6, r4, #0
	add r6, #0x28
	mov r7, #0x3c
_021A0C12:
	add r0, r5, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy298_21a1108
	cmp r0, #0
	beq _021A0C2A
	mov r0, #1
	str r5, [r4]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	b _021A0C54
_021A0C2A:
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blo _021A0C12
	b _021A0C54
_021A0C34:
	mov r0, #2
	str r0, [r4, #8]
_021A0C38:
	ldr r1, [r4]
	add r2, r4, #0
	mov r0, #0x3c
	add r2, #0x28
	mul r0, r1
	add r0, r2, r0
	bl ovy298_21a118c
	cmp r0, #0
	beq _021A0C54
	mov r0, #3
	b _021A0C52
_021A0C50:
	mov r0, #0
_021A0C52:
	str r0, [r4, #8]
_021A0C54:
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	bls _021A0C74
	add r6, r4, #0
	add r6, #0x28
	mov r7, #0x3c
_021A0C62:
	add r0, r5, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_021A1220
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blo _021A0C62
_021A0C74:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0bd4

	thumb_func_start ovy298_21a0c78
ovy298_21a0c78: ; 0x021A0C78
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #3
	bne _021A0C98
	mov r1, #0
	ldr r2, [r0]
	mvn r1, r1
	cmp r2, r1
	beq _021A0C98
	mov r1, #0x3c
	add r0, #0x28
	mul r1, r2
	add r0, r0, r1
	bl sub_021A11A0
	pop {r3, pc}
_021A0C98:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0c78

	thumb_func_start ovy298_21a0ca0
ovy298_21a0ca0: ; 0x021A0CA0
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #1
	bne _021A0CC0
	mov r1, #0
	ldr r2, [r0]
	mvn r1, r1
	cmp r2, r1
	beq _021A0CC0
	mov r1, #0x3c
	add r0, #0x28
	mul r1, r2
	add r0, r0, r1
	bl sub_021A11A0
	pop {r3, pc}
_021A0CC0:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0ca0

	thumb_func_start ovy298_21a0cc8
ovy298_21a0cc8: ; 0x021A0CC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _021A0CEE
	add r6, r5, #0
	add r6, #0x28
_021A0CDA:
	mov r0, #0x3c
	mul r0, r4
	add r0, r6, r0
	add r1, r7, #0
	bl sub_021A11A4
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021A0CDA
_021A0CEE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a0cc8

	thumb_func_start sub_021A0CF0
sub_021A0CF0: ; 0x021A0CF0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A0CF0

	thumb_func_start sub_021A0CF4
sub_021A0CF4: ; 0x021A0CF4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A0CF4

	thumb_func_start sub_021A0CF8
sub_021A0CF8: ; 0x021A0CF8
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0CF8

	thumb_func_start ovy298_21a0d00
ovy298_21a0d00: ; 0x021A0D00
	push {r4, lr}
	add r4, r2, #0
	bl ovy298_21a0da8
	add r1, r4, #0
	bl ovy298_21a11bc
	pop {r4, pc}
	thumb_func_end ovy298_21a0d00

	thumb_func_start ovy298_21a0d10
ovy298_21a0d10: ; 0x021A0D10
	push {r4, lr}
	add r4, r2, #0
	bl ovy298_21a0da8
	add r1, r4, #0
	bl sub_021A11A4
	pop {r4, pc}
	thumb_func_end ovy298_21a0d10

	thumb_func_start ovy298_21a0d20
ovy298_21a0d20: ; 0x021A0D20
	push {r3, lr}
	bl sub_021A0DE0
	bl sub_021A11B0
	pop {r3, pc}
	thumb_func_end ovy298_21a0d20

	thumb_func_start ovy298_21a0d2c
ovy298_21a0d2c: ; 0x021A0D2C
	push {r4, lr}
	add r4, r2, #0
	bl ovy298_21a0da8
	add r1, r4, #0
	bl sub_021A11EC
	pop {r4, pc}
	thumb_func_end ovy298_21a0d2c

	thumb_func_start ovy298_21a0d3c
ovy298_21a0d3c: ; 0x021A0D3C
	push {r4, lr}
	add r4, r2, #0
	bl ovy298_21a0da8
	add r1, r4, #0
	bl sub_021A11F0
	pop {r4, pc}
	thumb_func_end ovy298_21a0d3c

	thumb_func_start ovy298_21a0d4c
ovy298_21a0d4c: ; 0x021A0D4C
	push {r3, lr}
	bl sub_021A0DE0
	bl sub_021A1210
	pop {r3, pc}
	thumb_func_end ovy298_21a0d4c

	thumb_func_start ovy298_21a0d58
ovy298_21a0d58: ; 0x021A0D58
	push {r3, lr}
	bl ovy298_21a0da8
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0d58

	thumb_func_start ovy298_21a0d64
ovy298_21a0d64: ; 0x021A0D64
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	bl ovy298_21a0da8
	ldrh r1, [r4]
	mov r2, #1
	strh r1, [r0, #0x18]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1a]
	ldr r1, [r5, #0x20]
	cmp r1, #4
	bhs _021A0D80
	mov r2, #0
_021A0D80:
	lsl r2, r2, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0d64

	thumb_func_start ovy298_21a0d90
ovy298_21a0d90: ; 0x021A0D90
	push {r3, lr}
	bl ovy298_21a0da8
	mov r1, #1
	str r1, [r0, #0x34]
	pop {r3, pc}
	thumb_func_end ovy298_21a0d90

	thumb_func_start ovy298_21a0d9c
ovy298_21a0d9c: ; 0x021A0D9C
	push {r3, lr}
	bl ovy298_21a0da8
	ldr r0, [r0, #0x38]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0d9c

	thumb_func_start ovy298_21a0da8
ovy298_21a0da8: ; 0x021A0DA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _021A0DDA
	add r6, r5, #0
	add r6, #0x28
_021A0DBA:
	mov r0, #0x3c
	mul r0, r4
	str r0, [sp]
	add r0, r6, r0
	bl sub_021A11A0
	cmp r7, r0
	bne _021A0DD2
	ldr r0, [sp]
	add r5, #0x28
	add r0, r5, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A0DD2:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021A0DBA
_021A0DDA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0da8

	thumb_func_start sub_021A0DE0
sub_021A0DE0: ; 0x021A0DE0
	ldr r3, _021A0DE4 ; =ovy298_21a0da8
	bx r3
	.align 2, 0
_021A0DE4: .word ovy298_21a0da8
	thumb_func_end sub_021A0DE0

	thumb_func_start ovy298_21a0de8
ovy298_21a0de8: ; 0x021A0DE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, [sp, #0x58]
	add r6, r1, #0
	str r2, [sp, #0x2c]
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x14
	str r3, [sp, #0x30]
	mov r7, #0
	blx MI_CpuFill8
	str r6, [r5, #0xc]
	bl sub_0202D7E0
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bne _021A0E7E
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	add r3, sp, #0x48
	ldrb r3, [r3, #4]
	ldr r2, [sp, #0x30]
	add r0, r6, #0
	lsl r3, r3, #5
	bl GFL_G2DIOLoadArcNCLRDefault
	bl sub_0202D824
	str r7, [sp]
	str r4, [sp, #4]
	mov r3, #0x20
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	lsl r3, r3, #6
	bl GFL_BGSysLoadArcNCGRDynamic
	str r0, [r5, #0x10]
	bl sub_0202D828
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r2, #0x20
	str r2, [sp, #8]
	mov r2, #0x18
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0x20
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	add r0, sp, #0x48
	ldrb r0, [r0, #4]
	str r0, [sp, #0x20]
	str r7, [sp, #0x24]
	str r4, [sp, #0x28]
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #0xc]
	lsl r3, r3, #0x10
	add r0, r6, #0
	lsr r3, r3, #0x10
	bl ovy298_21a0f18
_021A0E7E:
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r3, sp, #0x48
	ldrb r3, [r3, #8]
	ldr r2, [sp, #0x2c]
	add r0, r6, #0
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl Oam_LoadNCLRFile
	str r0, [r5]
	bl sub_0202D814
	add r1, r0, #0
	ldr r3, [sp, #0x2c]
	str r4, [sp]
	add r0, r6, #0
	mov r2, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #4]
	ldr r0, [sp, #0x48]
	bl sub_0202D818
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #8]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a0de8

	thumb_func_start ovy298_21a0edc
ovy298_21a0edc: ; 0x021A0EDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4]
	bl sub_0204BCD0
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy298_21a0edc

	thumb_func_start sub_021A0F10
sub_021A0F10: ; 0x021A0F10
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0F10

	thumb_func_start ovy298_21a0f18
ovy298_21a0f18: ; 0x021A0F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r3, #0
	add r3, sp, #0x30
	ldrh r3, [r3, #0x28]
	ldr r6, _021A0FD4 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x54]
	lsr r3, r3, #0x10
	bl sub_0204B600
	add r1, sp, #0x18
	add r7, r0, #0
	bl sub_02060338
	cmp r4, #0
	beq _021A0F72
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045864
	cmp r0, #0
	bne _021A0F72
	add r0, sp, #0x30
	ldrb r3, [r0, #0xc]
	ldrb r0, [r0, #8]
	ldr r2, [sp, #0x18]
	mov r1, #0
	mul r3, r0
	add r2, #0xc
	cmp r3, #0
	ble _021A0F72
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021A0F64:
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	add r1, r1, #1
	add r6, r6, r4
	strh r6, [r2, r0]
	cmp r1, r3
	blt _021A0F64
_021A0F72:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045814
	cmp r0, #0
	beq _021A0FC8
	add r4, sp, #0x30
	ldrb r0, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #4]
	ldrb r0, [r4]
	str r0, [sp, #8]
	ldrb r0, [r4, #4]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #0x14]
	lsl r0, r5, #0x18
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x18]
	lsr r0, r0, #0x18
	bl sub_020454D4
	ldrb r0, [r4, #0x1c]
	str r0, [sp]
	add r0, sp, #0x50
	ldrb r0, [r0]
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x18]
	lsr r0, r0, #0x18
	bl sub_0204566C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
_021A0FC8:
	add r0, r7, #0
	bl GFL_HeapFree
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A0FD4: .word 0x00007FFF
	thumb_func_end ovy298_21a0f18

	thumb_func_start ovy298_21a0fd8
ovy298_21a0fd8: ; 0x021A0FD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x3c
	add r4, r3, #0
	blx MI_CpuFill8
	add r2, r5, #0
	add r3, r4, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	mov r7, #1
	str r0, [r5, #0x34]
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	str r7, [r5, #4]
	blx MI_CpuFill8
	ldr r0, [r6, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0204588C
	add r1, sp, #0x14
	strb r0, [r1, #7]
	mov r0, #4
	ldrsh r0, [r4, r0]
	strh r0, [r1]
	mov r0, #6
	ldrsh r0, [r4, r0]
	strh r0, [r1, #2]
	ldr r0, [r4]
	cmp r0, #7
	blt _021A1040
	ldrh r0, [r4, #0xa]
	ldrh r7, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	str r0, [sp, #0x10]
	mov r0, #0
	b _021A1084
_021A1040:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021A0F10
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	bl sub_021A0F10
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_021A0F10
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, _021A10D0 ; =0x021AC1A8
	lsl r0, r0, #4
	ldrh r1, [r1, r0]
	strh r1, [r5, #0x24]
	ldr r1, _021A10D4 ; =0x021AC1AA
	ldrh r1, [r1, r0]
	strh r1, [r5, #0x26]
	ldr r1, _021A10D8 ; =0x021AC1AC
	ldrh r1, [r1, r0]
	strh r1, [r5, #0x28]
	ldr r1, _021A10DC ; =0x021AC1B0
	ldr r1, [r1, r0]
	str r1, [r5, #0x2c]
	ldr r1, _021A10E0 ; =0x021AC1AE
	ldrh r1, [r1, r0]
	str r1, [r5, #0x30]
	ldr r1, _021A10E4 ; =0x021AC1B4
	ldr r0, [r1, r0]
_021A1084:
	ldrh r1, [r5, #0x24]
	str r0, [r5, #0x10]
	add r0, sp, #0x14
	str r1, [r5, #8]
	strh r1, [r0, #4]
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #4]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r5]
	bl sub_0204C520
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021A10C0
	cmp r0, #1
	beq _021A10C8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A10C0:
	ldr r0, _021A10E8 ; =ovy298_21a1228
	add sp, #0x1c
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_021A10C8:
	ldr r0, _021A10EC ; =ovy298_21a1244
	str r0, [r5, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A10D0: .word 0x021AC1A8
_021A10D4: .word 0x021AC1AA
_021A10D8: .word 0x021AC1AC
_021A10DC: .word 0x021AC1B0
_021A10E0: .word 0x021AC1AE
_021A10E4: .word 0x021AC1B4
_021A10E8: .word ovy298_21a1228
_021A10EC: .word ovy298_21a1244
	thumb_func_end ovy298_21a0fd8

	thumb_func_start ovy298_21a10f0
ovy298_21a10f0: ; 0x021A10F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204C108
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a10f0

	thumb_func_start ovy298_21a1108
ovy298_21a1108: ; 0x021A1108
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	bl sub_0204C138
	ldr r1, [r5, #4]
	str r4, [r5, #0x38]
	tst r0, r1
	beq _021A1186
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A114C
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	ldr r1, [sp, #4]
	sub r1, r1, r0
	ldrh r0, [r5, #0x1c]
	cmp r1, r0
	bhi _021A114C
	mov r0, #0x1a
	ldrsh r0, [r5, r0]
	ldr r1, [sp]
	sub r0, r1, r0
	cmp r0, #0x18
	bhi _021A114C
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
_021A114C:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021A1164
	bl GCTX_HIDGetPressedKeys
	ldr r1, [r5, #0x2c]
	tst r0, r1
	beq _021A1164
	mov r0, #0
	bl sub_0203D564
	mov r4, #1
_021A1164:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A1172
	mov r0, #0
	bl sub_0203D564
	mov r4, #1
_021A1172:
	cmp r4, #0
	beq _021A1186
	mov r0, #1
	str r0, [r5, #0x38]
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	blx r1
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A1186:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a1108

	thumb_func_start ovy298_21a118c
ovy298_21a118c: ; 0x021A118C
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A119C
	mov r0, #1
	pop {r3, pc}
_021A119C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy298_21a118c

	thumb_func_start sub_021A11A0
sub_021A11A0: ; 0x021A11A0
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021A11A0

	thumb_func_start sub_021A11A4
sub_021A11A4: ; 0x021A11A4
	ldr r0, [r0]
	ldr r3, _021A11AC ; =sub_0204C124
	bx r3
	nop
_021A11AC: .word sub_0204C124
	thumb_func_end sub_021A11A4

	thumb_func_start sub_021A11B0
sub_021A11B0: ; 0x021A11B0
	ldr r0, [r0]
	ldr r3, _021A11B8 ; =sub_0204C138
	bx r3
	nop
_021A11B8: .word sub_0204C138
	thumb_func_end sub_021A11B0

	thumb_func_start ovy298_21a11bc
ovy298_21a11bc: ; 0x021A11BC
	push {r3, lr}
	add r2, r0, #0
	str r1, [r2, #4]
	cmp r1, #0
	beq _021A11E0
	ldrh r0, [r2, #0x28]
	ldr r1, [r2, #8]
	cmp r1, r0
	bne _021A11D2
	ldrh r0, [r2, #0x24]
	str r0, [r2, #8]
_021A11D2:
	ldr r1, [r2, #8]
	ldr r0, [r2]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	pop {r3, pc}
_021A11E0:
	ldrh r1, [r2, #0x26]
	ldr r0, [r2]
	bl sub_0204C488
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a11bc

	thumb_func_start sub_021A11EC
sub_021A11EC: ; 0x021A11EC
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021A11EC

	thumb_func_start sub_021A11F0
sub_021A11F0: ; 0x021A11F0
	add r2, r0, #0
	cmp r1, #0
	beq _021A11FA
	ldrh r0, [r2, #0x28]
	b _021A11FC
_021A11FA:
	ldrh r0, [r2, #0x24]
_021A11FC:
	str r0, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r2]
	lsl r1, r1, #0x10
	ldr r3, _021A120C ; =sub_0204C488
	lsr r1, r1, #0x10
	bx r3
	nop
_021A120C: .word sub_0204C488
	thumb_func_end sub_021A11F0

	thumb_func_start sub_021A1210
sub_021A1210: ; 0x021A1210
	ldr r1, [r0, #8]
	ldrh r0, [r0, #0x28]
	cmp r1, r0
	bne _021A121C
	mov r0, #1
	bx lr
_021A121C:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A1210

	thumb_func_start sub_021A1220
sub_021A1220: ; 0x021A1220
	mov r1, #0
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1220

	thumb_func_start ovy298_21a1228
ovy298_21a1228: ; 0x021A1228
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x28]
	ldr r0, [r4]
	str r1, [r4, #8]
	bl sub_0204C488
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021A1240
	bl GFL_SndSEPlay
_021A1240:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1228

	thumb_func_start ovy298_21a1244
ovy298_21a1244: ; 0x021A1244
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1210
	mov r1, #1
	cmp r0, #0
	beq _021A1254
	mov r1, #0
_021A1254:
	add r0, r4, #0
	bl sub_021A11F0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021A1264
	bl GFL_SndSEPlay
_021A1264:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1244

	thumb_func_start ovy298_21a1268
ovy298_21a1268: ; 0x021A1268
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _021A12F0 ; =0x00000156
	add r7, r2, #0
	str r1, [sp]
	ldr r3, _021A12F4 ; =0x021ACE44
	sub r1, #0x3e
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	str r6, [r4, #4]
	mov r2, #3
	str r7, [r4, #8]
	mov r5, #0
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	mov r0, #1
	mov r1, #3
	sub r2, #0x1b
	str r5, [r4, #0x1c]
	bl sub_02044CFC
	mov r0, #1
	mov r1, #0
	bl sub_02044BD8
	add r0, r4, #0
	add r0, #0x34
	strb r5, [r0]
	str r5, [r4, #0x38]
	ldrh r2, [r4]
	mov r0, #0x10
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r4, #0x24]
	bl sub_0204C028
	str r5, [r4, #0x2c]
	add r0, r4, #0
	bl ovy298_21a1698
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_021A0CF0
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xb0
	strh r1, [r0]
	mov r1, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy298_21a16e8
	ldr r0, _021A12F8 ; =ovy298_21a167c
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x28]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A12F0: .word 0x00000156
_021A12F4: .word 0x021ACE44
_021A12F8: .word ovy298_21a167c
	thumb_func_end ovy298_21a1268

	thumb_func_start ovy298_21a12fc
ovy298_21a12fc: ; 0x021A12FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy298_21a16c4
	ldr r0, [r4, #0x24]
	bl sub_0204BF98
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a12fc

	thumb_func_start ovy298_21a131c
ovy298_21a131c: ; 0x021A131C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _021A1426
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1332: ; jump table
	.short _021A1426 - _021A1332 - 2 ; case 0
	.short _021A133A - _021A1332 - 2 ; case 1
	.short _021A1426 - _021A1332 - 2 ; case 2
	.short _021A13B8 - _021A1332 - 2 ; case 3
_021A133A:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A13B6
	mov r0, #1
	mov r6, #1
	bl sub_02044E74
	cmp r0, #0
	blt _021A1380
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	mov r5, #0
	bl sub_02045E1C
	add r0, r4, #0
	add r0, #0xb0
	strh r5, [r0]
	mov r1, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy298_21a16e8
	mov r0, #2
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021A1426
	ldr r0, [r4, #0x2c]
	add r1, r6, #0
	bl sub_021A0CF0
	b _021A1426
_021A1380:
	ldr r2, [r4, #0x1c]
	ldr r5, _021A144C ; =0x021AC21C
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r6, #0
	mov r1, #4
	bl sub_02045E1C
	ldr r1, [r4, #0x1c]
	mov r2, #0xb0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrsh r0, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	sub r1, r0, r1
_021A13A0:
	add r0, r4, #0
	add r0, #0xb0
	strh r1, [r0]
	ldrsh r1, [r4, r2]
	add r0, r4, #0
	bl ovy298_21a16e8
	ldr r1, [r4, #0x1c]
	ldr r0, _021A1450 ; =0x021AC218
	ldrb r1, [r0, r1]
	b _021A1420
_021A13B6:
	b _021A1418
_021A13B8:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A1418
	mov r0, #1
	mov r5, #1
	bl sub_02044E74
	mov r1, #1
	sub r1, #0x19
	cmp r0, r1
	bgt _021A13F6
	mov r2, #3
	add r0, r5, #0
	mov r1, #3
	sub r2, #0x1b
	bl sub_02045E1C
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xb0
	strh r1, [r0]
	mov r1, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy298_21a16e8
	mov r0, #0
	str r0, [r4, #0xc]
	b _021A1426
_021A13F6:
	ldr r2, [r4, #0x1c]
	add r0, r5, #0
	ldr r5, _021A144C ; =0x021AC21C
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r1, #5
	bl sub_02045E1C
	ldr r1, [r4, #0x1c]
	mov r2, #0xb0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrsh r0, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r1, r0, r1
	b _021A13A0
_021A1418:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	sub r1, r0, #1
_021A1420:
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_021A1426:
	ldr r0, [r4, #0x2c]
	bl ovy298_21a0bd4
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021A1440
	add r0, r4, #0
	bl ovy298_21a19c4
	add r0, r4, #0
	bl ovy298_21a1c1c
	pop {r4, r5, r6, pc}
_021A1440:
	cmp r0, #2
	bne _021A144A
	add r0, r4, #0
	bl ovy298_21a20e8
_021A144A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A144C: .word 0x021AC21C
_021A1450: .word 0x021AC218
	thumb_func_end ovy298_21a131c

	thumb_func_start ovy298_21a1454
ovy298_21a1454: ; 0x021A1454
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ovy298_21a16c4
	add r0, r5, #0
	str r6, [r5, #0x10]
	str r4, [r5, #0x14]
	str r7, [r5, #0x3c]
	str r4, [r5, #0x18]
	bl ovy298_21a1698
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1454

	thumb_func_start sub_021A1474
sub_021A1474: ; 0x021A1474
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A1474

	thumb_func_start sub_021A1478
sub_021A1478: ; 0x021A1478
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	cmp r1, #2
	beq _021A148A
	mov r1, #1
	str r1, [r0, #0xc]
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
_021A148A:
	bx lr
	thumb_func_end sub_021A1478

	thumb_func_start ovy298_21a148c
ovy298_21a148c: ; 0x021A148C
	push {r3, lr}
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021A14A8
	mov r1, #3
	str r1, [r0, #0xc]
	add r2, r0, #0
	ldr r0, [r0, #0x2c]
	mov r1, #0
	add r2, #0x20
	strb r1, [r2]
	bl sub_021A0CF0
_021A14A8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a148c

	thumb_func_start ovy298_21a14ac
ovy298_21a14ac: ; 0x021A14AC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ovy298_21a0c78
	mov r1, #0
	sub r2, r1, #1
	cmp r0, r2
	beq _021A14F2
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _021A14CC
	cmp r2, #1
	beq _021A14CC
	cmp r2, #2
	bne _021A14F2
_021A14CC:
	add r3, r4, #0
	add r3, #0x64
	ldrb r3, [r3]
	mov r2, #0
	cmp r3, #0
	bls _021A14F2
_021A14D8:
	lsl r5, r2, #3
	add r5, r4, r5
	ldr r6, [r5, #0x68]
	ldr r5, [r6]
	cmp r0, r5
	bne _021A14E8
	ldr r1, [r6, #0xc]
	b _021A14F2
_021A14E8:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r3
	blo _021A14D8
_021A14F2:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a14ac

	thumb_func_start ovy298_21a14f8
ovy298_21a14f8: ; 0x021A14F8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ovy298_21a0ca0
	mov r1, #0
	sub r2, r1, #1
	cmp r0, r2
	beq _021A153E
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _021A1518
	cmp r2, #1
	beq _021A1518
	cmp r2, #2
	bne _021A153E
_021A1518:
	add r3, r4, #0
	add r3, #0x64
	ldrb r3, [r3]
	mov r2, #0
	cmp r3, #0
	bls _021A153E
_021A1524:
	lsl r5, r2, #3
	add r5, r4, r5
	ldr r6, [r5, #0x68]
	ldr r5, [r6]
	cmp r0, r5
	bne _021A1534
	ldr r1, [r6, #0x10]
	b _021A153E
_021A1534:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r3
	blo _021A1524
_021A153E:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a14f8

	thumb_func_start sub_021A1544
sub_021A1544: ; 0x021A1544
	ldr r0, [r0, #0x2c]
	ldr r3, _021A154C ; =sub_021A0CF8
	bx r3
	nop
_021A154C: .word sub_021A0CF8
	thumb_func_end sub_021A1544

	thumb_func_start sub_021A1550
sub_021A1550: ; 0x021A1550
	ldr r0, [r0, #0x2c]
	ldr r3, _021A1558 ; =ovy298_21a0cc8
	bx r3
	nop
_021A1558: .word ovy298_21a0cc8
	thumb_func_end sub_021A1550

	thumb_func_start ovy298_21a155c
ovy298_21a155c: ; 0x021A155C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021A158A
	ldr r0, [r5, #0x18]
	mov r4, #0
	str r1, [r5, #0x14]
	cmp r1, r0
	bne _021A1578
	add r6, r0, #0
	mov r0, #4
	mov r4, #1
	str r0, [r5, #0x18]
_021A1578:
	add r0, r5, #0
	bl ovy298_21a1bcc
	add r0, r5, #0
	bl ovy298_21a1b80
	cmp r4, #0
	beq _021A158A
	str r6, [r5, #0x18]
_021A158A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a155c

	thumb_func_start ovy298_21a158c
ovy298_21a158c: ; 0x021A158C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r0, #2
	bne _021A15B0
	ldr r1, [r5, #0x70]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	add r2, r4, #0
	bl ovy298_21a0d10
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	add r2, r4, #0
	bl ovy298_21a0d10
_021A15B0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a158c

	thumb_func_start ovy298_21a15b4
ovy298_21a15b4: ; 0x021A15B4
	push {r3, lr}
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	add r2, r1, #0
	cmp r0, #0
	bne _021A15CA
	ldr r1, [r3, #0x78]
	ldr r0, [r3, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d3c
_021A15CA:
	pop {r3, pc}
	thumb_func_end ovy298_21a15b4

	thumb_func_start ovy298_21a15cc
ovy298_21a15cc: ; 0x021A15CC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _021A15E2
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x78]
	ldr r1, [r1]
	bl ovy298_21a0d4c
	pop {r3, pc}
_021A15E2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a15cc

	thumb_func_start ovy298_21a15e8
ovy298_21a15e8: ; 0x021A15E8
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0x30]
	cmp r1, #0
	ldr r0, [r4, #0x2c]
	beq _021A160C
	bl sub_021A0CF4
	cmp r0, #0
	bne _021A161C
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _021A161C
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_021A0CF0
	pop {r4, pc}
_021A160C:
	bl sub_021A0CF4
	cmp r0, #0
	beq _021A161C
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_021A0CF0
_021A161C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a15e8

	thumb_func_start sub_021A1620
sub_021A1620: ; 0x021A1620
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _021A1630
	cmp r1, #1
	beq _021A1634
	cmp r1, #2
	beq _021A1638
	b _021A163C
_021A1630:
	ldr r0, [r0, #0x40]
	bx lr
_021A1634:
	ldr r0, [r0, #0x4c]
	bx lr
_021A1638:
	ldr r0, [r0, #0x58]
	bx lr
_021A163C:
	mov r0, #0
	mvn r0, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1620

	thumb_func_start ovy298_21a1644
ovy298_21a1644: ; 0x021A1644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, #0x34
	strb r6, [r0]
	mov r0, #1
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021A167A
_021A165E:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	add r1, r6, #0
	bl sub_0204C468
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r4, r0
	blo _021A165E
_021A167A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a1644

	thumb_func_start ovy298_21a167c
ovy298_21a167c: ; 0x021A167C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021A1694
	add r1, #0x34
	ldrb r1, [r1]
	mov r0, #1
	bl sub_02044BD8
	mov r0, #0
	str r0, [r4, #0x38]
_021A1694:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a167c

	thumb_func_start ovy298_21a1698
ovy298_21a1698: ; 0x021A1698
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021A16AC
	cmp r1, #1
	beq _021A16B2
	cmp r1, #2
	beq _021A16B8
	b _021A16BC
_021A16AC:
	bl ovy298_21a1738
	b _021A16BC
_021A16B2:
	bl ovy298_21a1dd4
	b _021A16BC
_021A16B8:
	bl ovy298_21a1f44
_021A16BC:
	mov r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1698

	thumb_func_start ovy298_21a16c4
ovy298_21a16c4: ; 0x021A16C4
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _021A16D6
	cmp r1, #1
	beq _021A16DC
	cmp r1, #2
	beq _021A16E2
	pop {r3, pc}
_021A16D6:
	bl ovy298_21a1990
	pop {r3, pc}
_021A16DC:
	bl ovy298_21a1f1c
	pop {r3, pc}
_021A16E2:
	bl ovy298_21a20c0
	pop {r3, pc}
	thumb_func_end ovy298_21a16c4

	thumb_func_start ovy298_21a16e8
ovy298_21a16e8: ; 0x021A16E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r0, #0x64
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021A1732
	add r7, sp, #4
_021A16FC:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, #0x6c]
	add r1, sp, #4
	bl sub_0204C21C
	ldr r1, [r5, #0x68]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strh r0, [r7, #2]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	add r0, r1, r0
	strh r0, [r7, #2]
	ldr r0, [r5, #0x6c]
	add r1, sp, #4
	bl sub_0204C210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r4, r0
	blo _021A16FC
_021A1732:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a16e8

	thumb_func_start ovy298_21a1738
ovy298_21a1738: ; 0x021A1738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14c
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x9d
	mov r6, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	add r6, #0xc3
	str r4, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldrh r2, [r5]
	add r3, r6, #0
	add r7, r0, #0
	str r2, [sp, #8]
	mov r2, #0
	bl Oam_LoadNCLRFile
	str r0, [r5, #0x40]
	ldrh r0, [r5]
	mov r1, #0xd
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x44]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x1c
	mov r2, #0x2d
	bl Oam_LoadNCERFile
	str r0, [r5, #0x48]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r5, #0
	mov r1, #9
	add r0, #0x64
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x64
	ldrb r2, [r0]
	cmp r2, #0
	bls _021A17BA
	ldr r0, _021A1980 ; =0x021AC30C
	mov r1, #0x14
_021A179E:
	add r2, r4, #0
	mul r2, r1
	add r3, r0, r2
	lsl r2, r4, #3
	add r2, r5, r2
	str r3, [r2, #0x68]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r2, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	cmp r4, r2
	blo _021A179E
_021A17BA:
	mov r3, #0
	cmp r2, #0
	bls _021A17EC
	add r1, sp, #0x2c
_021A17C2:
	lsl r0, r3, #3
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	lsl r6, r3, #5
	ldr r4, [r0]
	add r2, r1, r6
	str r4, [r1, r6]
	ldrh r4, [r0, #4]
	strh r4, [r2, #4]
	ldrh r4, [r0, #6]
	strh r4, [r2, #6]
	ldrh r0, [r0, #8]
	strh r0, [r2, #8]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r3, r0
	blo _021A17C2
_021A17EC:
	ldr r0, [r5, #0x44]
	add r3, sp, #0x6c
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	strh r2, [r3, #0x2a]
	ldr r0, [r5, #0x40]
	mov r4, #3
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	strh r1, [r3, #0x2c]
	ldr r0, [r5, #0x48]
	ldr r7, _021A1984 ; =0x0000054A
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x32]
	mov r4, #7
	strh r4, [r3, #0x34]
	strh r0, [r3, #0x2e]
	add r3, sp, #0xac
	strh r2, [r3, #0xa]
	mov r4, #0
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
	add r6, r3, #0
	mov r3, #2
	strh r3, [r6, #0x10]
	strh r3, [r6, #0x12]
	add r3, sp, #0xac
	mov r6, #6
	strh r6, [r3, #0x14]
	mov r6, #1
	strh r6, [r3, #0x30]
	strh r6, [r3, #0x32]
	mov r6, #5
	strh r6, [r3, #0x34]
	strh r2, [r3, #0x2a]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	add r3, sp, #0xec
	strh r0, [r3, #0xe]
	mov r0, #4
	strh r2, [r3, #0xa]
	strh r1, [r3, #0xc]
	add r6, sp, #0xc
	strh r0, [r3, #0x14]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x20
	str r4, [sp, #0xa4]
	str r7, [sp, #0xa8]
	str r4, [sp, #0xc4]
	str r7, [sp, #0xc8]
	str r4, [sp, #0xe4]
	str r7, [sp, #0xe8]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	str r4, [sp, #0x104]
	str r7, [sp, #0x108]
	blx MI_CpuFill8
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	mov r0, #9
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0xd
	str r0, [sp, #0x1c]
	mov r0, #8
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	ldrh r1, [r5]
	add r0, r6, #0
	bl ovy298_21a0ae0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bls _021A18B6
_021A1896:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r1, [r6, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d58
	str r0, [r6, #0x6c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r4, r0
	blo _021A1896
_021A18B6:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021A18EC
	ldr r6, _021A1988 ; =0x021AC248
	mov r4, #0
_021A18C0:
	lsl r1, r4, #3
	add r1, r5, r1
	ldr r1, [r1, #0x68]
	lsl r2, r4, #2
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	add r2, r6, r2
	bl ovy298_21a0d64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #9
	blo _021A18C0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d10
_021A18EC:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A192E
	ldr r6, _021A198C ; =0x021AC224
	mov r4, #0
_021A18F6:
	lsl r1, r4, #3
	add r1, r5, r1
	ldr r1, [r1, #0x68]
	lsl r2, r4, #2
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	add r2, r6, r2
	bl ovy298_21a0d64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #9
	blo _021A18F6
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d10
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d10
_021A192E:
	ldr r0, [r5, #0x14]
	bl sub_021A1D10
	add r1, r0, #0
	cmp r1, #9
	beq _021A194A
	lsl r1, r1, #3
	add r1, r5, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d00
_021A194A:
	add r0, r5, #0
	bl ovy298_21a1b38
	add r0, r5, #0
	bl ovy298_21a1b80
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _021A197A
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d10
	ldr r0, [r5, #0x2c]
	add r5, #0xa0
	ldr r1, [r5]
	mov r2, #0
	ldr r1, [r1]
	bl ovy298_21a0d10
_021A197A:
	add sp, #0x14c
	pop {r4, r5, r6, r7, pc}
	nop
_021A1980: .word 0x021AC30C
_021A1984: .word 0x0000054A
_021A1988: .word 0x021AC248
_021A198C: .word 0x021AC224
	thumb_func_end ovy298_21a1738

	thumb_func_start ovy298_21a1990
ovy298_21a1990: ; 0x021A1990
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _021A19BC
	bl ovy298_21a1bcc
	add r0, r4, #0
	bl sub_021A1B7C
	ldr r0, [r4, #0x2c]
	bl ovy298_21a0ba0
	ldr r0, [r4, #0x40]
	bl sub_0204BCD0
	ldr r0, [r4, #0x44]
	bl sub_0204B98C
	ldr r0, [r4, #0x48]
	bl sub_0204BE64
_021A19BC:
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1990

	thumb_func_start ovy298_21a19c4
ovy298_21a19c4: ; 0x021A19C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #9
	bl GCTX_HIDGetPressedKeys
	add r7, r0, #0
	bl sub_0203DF44
	add r6, r0, #0
	mov r0, #0x20
	tst r0, r6
	beq _021A1A2C
	ldr r0, [r5, #0x14]
	cmp r0, #3
	bhi _021A1A7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A19EE: ; jump table
	.short _021A19F6 - _021A19EE - 2 ; case 0
	.short _021A1A10 - _021A19EE - 2 ; case 1
	.short _021A1A12 - _021A19EE - 2 ; case 2
	.short _021A1A2A - _021A19EE - 2 ; case 3
_021A19F6:
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d20
	cmp r0, #0
	beq _021A1A0C
_021A1A08:
	mov r4, #3
	b _021A1A7C
_021A1A0C:
	mov r4, #4
	b _021A1A7C
_021A1A10:
	b _021A1A7A
_021A1A12:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d20
	cmp r0, #0
	beq _021A1A28
_021A1A24:
	mov r4, #5
	b _021A1A7C
_021A1A28:
	b _021A1A7A
_021A1A2A:
	b _021A1A0C
_021A1A2C:
	mov r0, #0x10
	tst r0, r6
	beq _021A1A7C
	ldr r0, [r5, #0x14]
	cmp r0, #3
	bhi _021A1A7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1A44: ; jump table
	.short _021A1A4C - _021A1A44 - 2 ; case 0
	.short _021A1A62 - _021A1A44 - 2 ; case 1
	.short _021A1A64 - _021A1A44 - 2 ; case 2
	.short _021A1A7A - _021A1A44 - 2 ; case 3
_021A1A4C:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d20
	cmp r0, #0
	beq _021A1A60
	b _021A1A24
_021A1A60:
	b _021A1A0C
_021A1A62:
	b _021A1A0C
_021A1A64:
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d20
	cmp r0, #0
	beq _021A1A78
	b _021A1A08
_021A1A78:
	b _021A1A7A
_021A1A7A:
	mov r4, #6
_021A1A7C:
	cmp r4, #9
	beq _021A1A8E
	lsl r1, r4, #3
	add r1, r5, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d90
_021A1A8E:
	mov r0, #0xc0
	tst r0, r7
	bne _021A1AB6
	mov r0, #0x40
	tst r0, r6
	beq _021A1AA2
	add r1, r5, #0
	ldr r0, [r5, #0x2c]
	add r1, #0xa8
	b _021A1AAE
_021A1AA2:
	mov r0, #0x80
	tst r0, r6
	beq _021A1AB6
	add r1, r5, #0
	ldr r0, [r5, #0x2c]
	add r1, #0xa0
_021A1AAE:
	ldr r1, [r1]
	ldr r1, [r1]
	bl ovy298_21a0d90
_021A1AB6:
	add r0, r5, #0
	bl ovy298_21a14ac
	add r4, r0, #0
	add r0, r5, #0
	bl ovy298_21a14f8
	add r7, r0, #0
	cmp r4, #0
	beq _021A1B10
	add r0, r4, #0
	bl sub_021A1D3C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021A1D88
	str r0, [sp]
	cmp r6, #9
	beq _021A1B10
	ldr r0, [sp]
	cmp r0, #4
	beq _021A1B10
	mov r4, #3
_021A1AE6:
	mov r2, #1
	cmp r4, r6
	bne _021A1AEE
	mov r2, #0
_021A1AEE:
	lsl r1, r4, #3
	add r1, r5, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d00
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	bls _021A1AE6
	ldr r0, [sp]
	str r0, [r5, #0x18]
	add r0, r5, #0
	bl ovy298_21a1b80
_021A1B10:
	cmp r7, #0
	beq _021A1B34
	sub r7, #0xf
	cmp r7, #3
	bhi _021A1B34
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1B26: ; jump table
	.short _021A1B2E - _021A1B26 - 2 ; case 0
	.short _021A1B2E - _021A1B26 - 2 ; case 1
	.short _021A1B2E - _021A1B26 - 2 ; case 2
	.short _021A1B2E - _021A1B26 - 2 ; case 3
_021A1B2E:
	add r0, r5, #0
	bl ovy298_21a1bcc
_021A1B34:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a19c4

	thumb_func_start ovy298_21a1b38
ovy298_21a1b38: ; 0x021A1B38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r3, [r5]
	mov r0, #0x9d
	mov r1, #3
	add r2, sp, #0
	bl sub_0204B354
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	ldr r6, [r0, #0xc]
	add r1, #0xb2
	add r0, r6, #0
	add r0, #0x20
	mov r2, #0x20
	mov r4, #0x20
	blx MI_CpuCopy8
	add r6, #0x60
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xd2
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl GFL_HeapFree
	mov r0, #0
	add r4, #0xf4
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1b38

	thumb_func_start sub_021A1B7C
sub_021A1B7C: ; 0x021A1B7C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1B7C

	thumb_func_start ovy298_21a1b80
ovy298_21a1b80: ; 0x021A1B80
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r1, #9
	cmp r0, #3
	bhi _021A1BAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1B98: ; jump table
	.short _021A1BA0 - _021A1B98 - 2 ; case 0
	.short _021A1BA4 - _021A1B98 - 2 ; case 1
	.short _021A1BA8 - _021A1B98 - 2 ; case 2
	.short _021A1BAC - _021A1B98 - 2 ; case 3
_021A1BA0:
	mov r1, #6
	b _021A1BAE
_021A1BA4:
	mov r1, #5
	b _021A1BAE
_021A1BA8:
	mov r1, #4
	b _021A1BAE
_021A1BAC:
	mov r1, #3
_021A1BAE:
	cmp r1, #9
	beq _021A1BC8
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r2, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d58
	mov r1, #2
	mov r2, #0
	bl sub_0204C378
_021A1BC8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1b80

	thumb_func_start ovy298_21a1bcc
ovy298_21a1bcc: ; 0x021A1BCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #9
	cmp r0, #3
	bhi _021A1BFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1BE4: ; jump table
	.short _021A1BEC - _021A1BE4 - 2 ; case 0
	.short _021A1BF0 - _021A1BE4 - 2 ; case 1
	.short _021A1BF4 - _021A1BE4 - 2 ; case 2
	.short _021A1BF8 - _021A1BE4 - 2 ; case 3
_021A1BEC:
	mov r1, #6
	b _021A1BFA
_021A1BF0:
	mov r1, #5
	b _021A1BFA
_021A1BF4:
	mov r1, #4
	b _021A1BFA
_021A1BF8:
	mov r1, #3
_021A1BFA:
	cmp r1, #9
	beq _021A1C18
	lsl r1, r1, #3
	add r1, r4, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d58
	mov r1, #0
	mov r2, #0
	bl sub_0204C378
	mov r0, #4
	str r0, [r4, #0x18]
_021A1C18:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1bcc

	thumb_func_start ovy298_21a1c1c
ovy298_21a1c1c: ; 0x021A1C1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x45
	add r2, r0, #0
	lsl r1, r1, #2
	mov r0, #1
	ldr r3, [r2, r1]
	lsl r0, r0, #0xa
	add r4, r3, r0
	lsl r0, r0, #6
	cmp r4, r0
	blt _021A1C3E
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r3, r0
	str r0, [r2, r1]
	b _021A1C40
_021A1C3E:
	str r4, [r2, r1]
_021A1C40:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A1D0C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r4, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #4]
_021A1C6E:
	lsl r7, r3, #1
	add r0, r2, r7
	add r0, #0xb2
	ldrh r5, [r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r2, r7
	add r0, #0xd2
	ldrh r1, [r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #4]
	asr r0, r0, #0xa
	and r5, r1
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r4
	asr r5, r5, #0xc
	add r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0xa
	mov r5, #0x3e
	str r0, [sp, #8]
	mov r0, #0x1f
	and r0, r1
	lsl r5, r5, #4
	and r1, r5
	lsl r1, r1, #0x13
	lsr r5, r1, #0x18
	ldr r1, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r1, r5, r1
	sub r0, r0, r6
	mul r1, r4
	mul r0, r4
	asr r5, r1, #0xc
	ldr r1, [sp]
	asr r0, r0, #0xc
	add r0, r6, r0
	add r1, r1, r5
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	orr r1, r0
	ldr r0, [sp, #8]
	orr r1, r0
	add r0, r2, r7
	add r0, #0xf2
	strh r1, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x10
	blo _021A1C6E
	mov r1, #0x1a
	mov r0, #0xe
	lsl r1, r1, #4
	add r2, #0xf2
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A1D0C: .word FX_SinCosTable_
	thumb_func_end ovy298_21a1c1c

	thumb_func_start sub_021A1D10
sub_021A1D10: ; 0x021A1D10
	cmp r0, #3
	bhi _021A1D38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1D20: ; jump table
	.short _021A1D28 - _021A1D20 - 2 ; case 0
	.short _021A1D2C - _021A1D20 - 2 ; case 1
	.short _021A1D30 - _021A1D20 - 2 ; case 2
	.short _021A1D34 - _021A1D20 - 2 ; case 3
_021A1D28:
	mov r0, #6
	bx lr
_021A1D2C:
	mov r0, #5
	bx lr
_021A1D30:
	mov r0, #4
	bx lr
_021A1D34:
	mov r0, #3
	bx lr
_021A1D38:
	mov r0, #9
	bx lr
	thumb_func_end sub_021A1D10

	thumb_func_start sub_021A1D3C
sub_021A1D3C: ; 0x021A1D3C
	cmp r0, #0x12
	bhi _021A1D82
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1D4C: ; jump table
	.short _021A1D82 - _021A1D4C - 2 ; case 0
	.short _021A1D82 - _021A1D4C - 2 ; case 1
	.short _021A1D82 - _021A1D4C - 2 ; case 2
	.short _021A1D82 - _021A1D4C - 2 ; case 3
	.short _021A1D82 - _021A1D4C - 2 ; case 4
	.short _021A1D82 - _021A1D4C - 2 ; case 5
	.short _021A1D72 - _021A1D4C - 2 ; case 6
	.short _021A1D76 - _021A1D4C - 2 ; case 7
	.short _021A1D7A - _021A1D4C - 2 ; case 8
	.short _021A1D7E - _021A1D4C - 2 ; case 9
	.short _021A1D82 - _021A1D4C - 2 ; case 10
	.short _021A1D82 - _021A1D4C - 2 ; case 11
	.short _021A1D82 - _021A1D4C - 2 ; case 12
	.short _021A1D82 - _021A1D4C - 2 ; case 13
	.short _021A1D82 - _021A1D4C - 2 ; case 14
	.short _021A1D72 - _021A1D4C - 2 ; case 15
	.short _021A1D76 - _021A1D4C - 2 ; case 16
	.short _021A1D7A - _021A1D4C - 2 ; case 17
	.short _021A1D7E - _021A1D4C - 2 ; case 18
_021A1D72:
	mov r0, #6
	bx lr
_021A1D76:
	mov r0, #5
	bx lr
_021A1D7A:
	mov r0, #4
	bx lr
_021A1D7E:
	mov r0, #3
	bx lr
_021A1D82:
	mov r0, #9
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1D3C

	thumb_func_start sub_021A1D88
sub_021A1D88: ; 0x021A1D88
	cmp r0, #0x12
	bhi _021A1DCE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1D98: ; jump table
	.short _021A1DCE - _021A1D98 - 2 ; case 0
	.short _021A1DCE - _021A1D98 - 2 ; case 1
	.short _021A1DCE - _021A1D98 - 2 ; case 2
	.short _021A1DCE - _021A1D98 - 2 ; case 3
	.short _021A1DCE - _021A1D98 - 2 ; case 4
	.short _021A1DCE - _021A1D98 - 2 ; case 5
	.short _021A1DBE - _021A1D98 - 2 ; case 6
	.short _021A1DC2 - _021A1D98 - 2 ; case 7
	.short _021A1DC6 - _021A1D98 - 2 ; case 8
	.short _021A1DCA - _021A1D98 - 2 ; case 9
	.short _021A1DCE - _021A1D98 - 2 ; case 10
	.short _021A1DCE - _021A1D98 - 2 ; case 11
	.short _021A1DCE - _021A1D98 - 2 ; case 12
	.short _021A1DCE - _021A1D98 - 2 ; case 13
	.short _021A1DCE - _021A1D98 - 2 ; case 14
	.short _021A1DBE - _021A1D98 - 2 ; case 15
	.short _021A1DC2 - _021A1D98 - 2 ; case 16
	.short _021A1DC6 - _021A1D98 - 2 ; case 17
	.short _021A1DCA - _021A1D98 - 2 ; case 18
_021A1DBE:
	mov r0, #0
	bx lr
_021A1DC2:
	mov r0, #1
	bx lr
_021A1DC6:
	mov r0, #2
	bx lr
_021A1DCA:
	mov r0, #3
	bx lr
_021A1DCE:
	mov r0, #4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1D88

	thumb_func_start ovy298_21a1dd4
ovy298_21a1dd4: ; 0x021A1DD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x9d
	mov r6, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	add r6, #0xc3
	str r4, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #0
	add r3, r6, #0
	str r1, [sp, #8]
	mov r1, #6
	add r7, r0, #0
	bl Oam_LoadNCLRFile
	str r0, [r5, #0x4c]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x50]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x1e
	mov r2, #0x2f
	bl Oam_LoadNCERFile
	str r0, [r5, #0x54]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r5, #0
	mov r1, #2
	add r0, #0x64
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x64
	ldrb r2, [r0]
	cmp r2, #0
	bls _021A1E58
	ldr r0, _021A1F14 ; =0x021AC26C
	mov r1, #0x14
_021A1E3C:
	add r2, r4, #0
	mul r2, r1
	add r3, r0, r2
	lsl r2, r4, #3
	add r2, r5, r2
	str r3, [r2, #0x68]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r2, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	cmp r4, r2
	blo _021A1E3C
_021A1E58:
	mov r3, #0
	cmp r2, #0
	bls _021A1E8A
	add r1, sp, #0xc
_021A1E60:
	lsl r0, r3, #3
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	lsl r6, r3, #5
	ldr r4, [r0]
	add r2, r1, r6
	str r4, [r1, r6]
	ldrh r4, [r0, #4]
	strh r4, [r2, #4]
	ldrh r4, [r0, #6]
	strh r4, [r2, #6]
	ldrh r0, [r0, #8]
	strh r0, [r2, #8]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r3, r0
	blo _021A1E60
_021A1E8A:
	ldr r1, [r5, #0x50]
	add r0, sp, #0x2c
	strh r1, [r0, #0xa]
	ldr r1, [r5, #0x4c]
	mov r6, #8
	strh r1, [r0, #0xc]
	ldr r1, [r5, #0x54]
	mov r7, #1
	strh r1, [r0, #0xe]
	mov r1, #6
	strh r1, [r0, #0x10]
	mov r1, #7
	strh r1, [r0, #0x12]
	ldr r1, _021A1F18 ; =0x0000054C
	strh r6, [r0, #0x14]
	str r1, [r0, #0x1c]
	str r7, [r0, #0x18]
	add r0, sp, #0x4c
	mov r1, #0
	mov r2, #0x20
	mov r4, #0
	blx MI_CpuFill8
	mov r1, #2
	add r0, sp, #0xc
	str r1, [sp, #0x50]
	str r0, [sp, #0x4c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x54]
	mov r0, #0xd
	str r0, [sp, #0x5c]
	str r7, [sp, #0x58]
	str r6, [sp, #0x60]
	str r1, [sp, #0x64]
	ldrh r1, [r5]
	add r0, sp, #0x4c
	bl ovy298_21a0ae0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bls _021A1F02
_021A1EE2:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r1, [r6, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d58
	str r0, [r6, #0x6c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r4, r0
	blo _021A1EE2
_021A1F02:
	ldr r1, [r5, #0x70]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #1
	bl ovy298_21a0d10
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021A1F14: .word 0x021AC26C
_021A1F18: .word 0x0000054C
	thumb_func_end ovy298_21a1dd4

	thumb_func_start ovy298_21a1f1c
ovy298_21a1f1c: ; 0x021A1F1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021A1F3C
	bl ovy298_21a0ba0
	ldr r0, [r4, #0x4c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x50]
	bl sub_0204B98C
	ldr r0, [r4, #0x54]
	bl sub_0204BE64
_021A1F3C:
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a1f1c

	thumb_func_start ovy298_21a1f44
ovy298_21a1f44: ; 0x021A1F44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xec
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x9d
	mov r6, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	add r6, #0xc3
	str r4, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldrh r2, [r5]
	add r3, r6, #0
	add r7, r0, #0
	str r2, [sp, #8]
	mov r2, #0
	bl Oam_LoadNCLRFile
	str r0, [r5, #0x58]
	ldrh r0, [r5]
	mov r1, #0xd
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x5c]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x1c
	mov r2, #0x2d
	bl Oam_LoadNCERFile
	str r0, [r5, #0x60]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r5, #0
	mov r1, #6
	add r0, #0x64
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x64
	ldrb r2, [r0]
	cmp r2, #0
	bls _021A1FC6
	ldr r0, _021A20B8 ; =0x021AC294
	mov r1, #0x14
_021A1FAA:
	add r2, r4, #0
	mul r2, r1
	add r3, r0, r2
	lsl r2, r4, #3
	add r2, r5, r2
	str r3, [r2, #0x68]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r2, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	cmp r4, r2
	blo _021A1FAA
_021A1FC6:
	mov r3, #0
	cmp r2, #0
	bls _021A1FF8
	add r1, sp, #0x2c
_021A1FCE:
	lsl r0, r3, #3
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	lsl r6, r3, #5
	ldr r4, [r0]
	add r2, r1, r6
	str r4, [r1, r6]
	ldrh r4, [r0, #4]
	strh r4, [r2, #4]
	ldrh r4, [r0, #6]
	strh r4, [r2, #6]
	ldrh r0, [r0, #8]
	strh r0, [r2, #8]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r3, r0
	blo _021A1FCE
_021A1FF8:
	ldr r1, [r5, #0x5c]
	add r0, sp, #0x8c
	strh r1, [r0, #0xa]
	ldr r1, [r5, #0x58]
	mov r6, #1
	strh r1, [r0, #0xc]
	ldr r1, [r5, #0x60]
	add r7, sp, #0xc
	strh r1, [r0, #0xe]
	mov r1, #0xe
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	mov r1, #0x14
	strh r1, [r0, #0x14]
	ldr r1, _021A20BC ; =0x0000054C
	str r6, [r0, #0x18]
	str r1, [r0, #0x1c]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x20
	mov r4, #0
	blx MI_CpuFill8
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x1c]
	mov r0, #8
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	str r6, [sp, #0x18]
	ldrh r1, [r5]
	add r0, r7, #0
	bl ovy298_21a0ae0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bls _021A2074
_021A2054:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r1, [r6, #0x68]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d58
	str r0, [r6, #0x6c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r4, r0
	blo _021A2054
_021A2074:
	ldr r1, [r5, #0x70]
	mov r4, #0x11
	lsl r4, r4, #4
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	add r2, r4, #0
	bl ovy298_21a0d2c
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	lsl r2, r4, #1
	bl ovy298_21a0d2c
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _021A20B4
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	mov r2, #0
	bl ovy298_21a0d10
	ldr r0, [r5, #0x2c]
	add r5, #0x88
	ldr r1, [r5]
	mov r2, #0
	ldr r1, [r1]
	bl ovy298_21a0d10
_021A20B4:
	add sp, #0xec
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A20B8: .word 0x021AC294
_021A20BC: .word 0x0000054C
	thumb_func_end ovy298_21a1f44

	thumb_func_start ovy298_21a20c0
ovy298_21a20c0: ; 0x021A20C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021A20E0
	bl ovy298_21a0ba0
	ldr r0, [r4, #0x58]
	bl sub_0204BCD0
	ldr r0, [r4, #0x5c]
	bl sub_0204B98C
	ldr r0, [r4, #0x60]
	bl sub_0204BE64
_021A20E0:
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a20c0

	thumb_func_start ovy298_21a20e8
ovy298_21a20e8: ; 0x021A20E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	bl sub_0203DF44
	mov r1, #0x3f
	lsl r1, r1, #4
	tst r1, r4
	bne _021A214C
	mov r1, #0x40
	tst r1, r0
	beq _021A2112
	ldr r0, [r5, #0x2c]
	add r5, #0x90
	ldr r1, [r5]
	ldr r1, [r1]
	bl ovy298_21a0d90
	pop {r3, r4, r5, pc}
_021A2112:
	mov r1, #0x80
	tst r1, r0
	beq _021A2126
	ldr r0, [r5, #0x2c]
	add r5, #0x88
	ldr r1, [r5]
	ldr r1, [r1]
	bl ovy298_21a0d90
	pop {r3, r4, r5, pc}
_021A2126:
	mov r1, #0x22
	lsl r1, r1, #4
	add r2, r0, #0
	tst r2, r1
	beq _021A213C
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d90
	pop {r3, r4, r5, pc}
_021A213C:
	lsr r1, r1, #1
	tst r0, r1
	beq _021A214C
	ldr r1, [r5, #0x70]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d90
_021A214C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a20e8

	thumb_func_start sub_021A2150
sub_021A2150: ; 0x021A2150
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #0x70]
	ldr r0, [r3, #0x2c]
	ldr r1, [r1]
	ldr r3, _021A2160 ; =ovy298_21a0d00
	bx r3
	nop
_021A2160: .word ovy298_21a0d00
	thumb_func_end sub_021A2150

	thumb_func_start sub_021A2164
sub_021A2164: ; 0x021A2164
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #0x70]
	ldr r0, [r3, #0x2c]
	ldr r1, [r1]
	ldr r3, _021A2174 ; =ovy298_21a0d10
	bx r3
	nop
_021A2174: .word ovy298_21a0d10
	thumb_func_end sub_021A2164

	thumb_func_start sub_021A2178
sub_021A2178: ; 0x021A2178
	add r1, r0, #0
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x70]
	ldr r3, _021A2184 ; =ovy298_21a0d90
	ldr r1, [r1]
	bx r3
	.align 2, 0
_021A2184: .word ovy298_21a0d90
	thumb_func_end sub_021A2178

	thumb_func_start ovy298_21a2188
ovy298_21a2188: ; 0x021A2188
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #1
	bne _021A219E
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x70]
	ldr r1, [r1]
	bl ovy298_21a0d9c
	pop {r3, pc}
_021A219E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a2188

	thumb_func_start ovy298_21a21a4
ovy298_21a21a4: ; 0x021A21A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1]
	bl ovy298_21a0d9c
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	add r5, #0xa8
	ldr r1, [r5]
	ldr r1, [r1]
	bl ovy298_21a0d9c
	cmp r4, #0
	bne _021A21CC
	cmp r0, #0
	beq _021A21D0
_021A21CC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A21D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a21a4

	thumb_func_start ovy298_21a21d4
ovy298_21a21d4: ; 0x021A21D4
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #2
	bne _021A21EC
	ldr r0, [r1, #0x2c]
	add r1, #0x80
	ldr r1, [r1]
	ldr r1, [r1]
	bl ovy298_21a0d9c
	pop {r3, pc}
_021A21EC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy298_21a21d4

	thumb_func_start ovy298_21a21f0
ovy298_21a21f0: ; 0x021A21F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0x78
	str r1, [sp]
	ldr r3, _021A2250 ; =0x021ACE5C
	mov r1, #0x34
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	str r6, [r4, #4]
	mov r5, #0
	str r5, [r4, #8]
	mov r0, #5
	str r0, [r4, #0xc]
	mov r0, #5
	mov r1, #3
	mov r2, #0x18
	bl sub_02044CFC
	mov r0, #5
	mov r1, #0
	bl sub_02044BD8
	add r0, r4, #0
	bl ovy298_21a2348
	add r0, r4, #0
	bl ovy298_21a2400
	ldr r0, _021A2254 ; =0x021A2345
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x28]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x2c]
	str r5, [r4, #0x30]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A2250: .word 0x021ACE5C
_021A2254: .word 0x021A2345
	thumb_func_end ovy298_21a21f0

	thumb_func_start ovy298_21a2258
ovy298_21a2258: ; 0x021A2258
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_02021C44
	ldr r0, [r4, #0x2c]
	bl sub_02021A18
	ldr r0, [r4, #0x28]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl sub_021A24A8
	add r0, r4, #0
	bl ovy298_21a23dc
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a2258

	thumb_func_start ovy298_21a2284
ovy298_21a2284: ; 0x021A2284
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021A22FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A229A: ; jump table
	.short _021A22FE - _021A229A - 2 ; case 0
	.short _021A22A2 - _021A229A - 2 ; case 1
	.short _021A22FE - _021A229A - 2 ; case 2
	.short _021A22D4 - _021A229A - 2 ; case 3
_021A22A2:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _021A22D2
	mov r0, #5
	mov r5, #5
	bl sub_02044E74
	cmp r0, #0
	bgt _021A22C4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	mov r0, #2
_021A22C0:
	str r0, [r4, #8]
	b _021A22FE
_021A22C4:
	add r0, r5, #0
	add r1, r5, #0
_021A22C8:
	mov r2, #3
	bl sub_02045E1C
	mov r0, #0
	b _021A22FC
_021A22D2:
	b _021A22FA
_021A22D4:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _021A22FA
	mov r0, #5
	mov r5, #5
	bl sub_02044E74
	cmp r0, #0x18
	blt _021A22F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x18
	bl sub_02045E1C
	mov r0, #0
	b _021A22C0
_021A22F4:
	add r0, r5, #0
	mov r1, #4
	b _021A22C8
_021A22FA:
	sub r0, r0, #1
_021A22FC:
	strb r0, [r4, #0x10]
_021A22FE:
	add r0, r4, #0
	bl ovy298_21a24ac
	ldr r0, [r4, #0x2c]
	bl sub_02021A3C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a2284

	thumb_func_start ovy298_21a230c
ovy298_21a230c: ; 0x021A230C
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0xc]
	bl sub_021A24A8
	add r0, r4, #0
	bl ovy298_21a2400
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a230c

	thumb_func_start sub_021A2320
sub_021A2320: ; 0x021A2320
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021A2320

	thumb_func_start sub_021A2324
sub_021A2324: ; 0x021A2324
	ldr r1, [r0, #8]
	cmp r1, #2
	beq _021A2332
	mov r1, #1
	str r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0x10]
_021A2332:
	bx lr
	thumb_func_end sub_021A2324

	thumb_func_start sub_021A2334
sub_021A2334: ; 0x021A2334
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021A2342
	mov r1, #3
	str r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0x10]
_021A2342:
	bx lr
	thumb_func_end sub_021A2334
_021A2344:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy298_21a2348
ovy298_21a2348: ; 0x021A2348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r6, #0xd
	str r6, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x10
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x14]
	bl BmpWin_FlushChar
	ldrh r3, [r5]
	mov r0, #0x9d
	mov r1, #0xe
	mov r2, #0
	bl sub_02046F3C
	str r0, [r5, #0x18]
	bl sub_02046F00
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	bl sub_02046EF4
	add r1, r0, #0
	ldr r2, [r5, #0x20]
	mov r0, #5
	bl sub_020450A8
	str r0, [r5, #0x1c]
	str r0, [sp]
	mov r4, #0xc0
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5]
	mov r1, #0x26
	mov r2, #5
	str r0, [sp, #0xc]
	mov r0, #0x9d
	mov r3, #0
	bl sub_0204AF88
	mov r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	add r4, #0xf9
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a2348

	thumb_func_start ovy298_21a23dc
ovy298_21a23dc: ; 0x021A23DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl GFL_MsgDataFree
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	mov r0, #5
	bl sub_02044668
	ldr r0, [r4, #0x18]
	bl sub_02046EDC
	ldr r0, [r4, #0x14]
	bl sub_02048210
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a23dc

	thumb_func_start ovy298_21a2400
ovy298_21a2400: ; 0x021A2400
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	blt _021A24A0
	cmp r0, #5
	bge _021A24A0
	ldrh r1, [r5]
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	add r2, sp, #0xc
	ldr r6, _021A24A4 ; =0x021AC3C0
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	mov r1, #4
	str r0, [r2]
	mov r0, #0x1a
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #4
	str r0, [sp, #8]
	ldr r6, [r5, #0xc]
	add r0, r4, #0
	lsl r6, r6, #2
	ldr r3, [r3, r6]
	lsl r3, r3, #5
	bl GFL_G2DIOLoadArcNCLR
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldrh r3, [r5]
	mov r0, #0x9d
	mov r1, #0xe
	mov r2, #0
	bl sub_02046F3C
	ldr r1, [r5, #0x18]
	add r4, r0, #0
	bl sub_02046F18
	add r0, r4, #0
	bl sub_02046EDC
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x24]
	add r1, #0xb3
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	ldr r0, [r5, #4]
	mov r2, #0x18
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x18]
	mov r3, #5
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r5, #0x30]
	add r0, r5, #0
	bl ovy298_21a24ac
_021A24A0:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A24A4: .word 0x021AC3C0
	thumb_func_end ovy298_21a2400

	thumb_func_start sub_021A24A8
sub_021A24A8: ; 0x021A24A8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A24A8

	thumb_func_start ovy298_21a24ac
ovy298_21a24ac: ; 0x021A24AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021A24DE
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x18]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A24DE
	ldr r0, [r4, #0x18]
	bl sub_02046EF4
	add r1, r0, #0
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x1c]
	mov r0, #5
	bl sub_02045080
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x30]
_021A24DE:
	pop {r4, pc}
	thumb_func_end ovy298_21a24ac

	thumb_func_start sub_021A24E0
sub_021A24E0: ; 0x021A24E0
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021A24E0

	thumb_func_start ovy298_21a24e4
ovy298_21a24e4: ; 0x021A24E4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021A2564 ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	ldr r0, _021A2568 ; =0x00000128
	bl sub_0203CE0C
	mov r6, #0x12
	lsl r6, r6, #4
	ldrh r2, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy298_219fcac
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r0, _021A256C ; =0x021A2AA5
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0]
	sub r6, #0x14
	str r7, [r4, r6]
	ldrh r0, [r5]
	bl ovy298_219fdc8
	str r0, [r4, #0xc]
	ldrh r0, [r5]
	bl ovy298_219fdc8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl sub_0219FE98
	ldr r0, [r4, #0x10]
	bl sub_0219FE98
	ldr r1, [r4, #0xc]
	mov r0, #0
	bl sub_0219FE88
	ldr r1, [r4, #0x10]
	mov r0, #1
	bl sub_0219FE88
	str r7, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2564: .word 0x0000008B
_021A2568: .word 0x00000128
_021A256C: .word 0x021A2AA5
	thumb_func_end ovy298_21a24e4

	thumb_func_start ovy298_21a2570
ovy298_21a2570: ; 0x021A2570
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r3, #0
	add r6, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy298_21a3144
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A3124
	ldr r0, [r4, #8]
	bl sub_0219DBCC
	ldr r0, [r4, #4]
	bl sub_0219DBCC
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy298_21a2f24
	mov r5, #0x11
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl GFL_MsgDataFree
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl GFL_MsgDataFree
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x10]
	bl sub_0219FDE4
	ldr r0, [r4, #0xc]
	bl sub_0219FDE4
	ldr r0, [r4]
	bl GFL_TCBRemove
	add r0, r6, #0
	bl ovy298_219fccc
	ldr r0, _021A25F0 ; =0x00000128
	bl sub_0203CDC8
	ldr r0, _021A25F4 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A25F0: .word 0x00000128
_021A25F4: .word 0x0000008B
	thumb_func_end ovy298_21a2570

	thumb_func_start ovy298_21a25f8
ovy298_21a25f8: ; 0x021A25F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r0, [sp, #0x88]
	str r1, [sp, #0x34]
	str r0, [sp, #0x88]
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0219FD34
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x88]
	bl sub_0219FD38
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	cmp r0, #5
	bls _021A261E
	b _021A2936
_021A261E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A262A: ; jump table
	.short _021A2636 - _021A262A - 2 ; case 0
	.short _021A285C - _021A262A - 2 ; case 1
	.short _021A2870 - _021A262A - 2 ; case 2
	.short _021A28A0 - _021A262A - 2 ; case 3
	.short _021A28F8 - _021A262A - 2 ; case 4
	.short _021A2930 - _021A262A - 2 ; case 5
_021A2636:
	ldr r0, [sp, #0x34]
	mov r1, #1
	str r1, [r0]
	ldrh r0, [r6]
	mov r7, #0x17
	mov r1, #0
	str r0, [sp]
	mov r0, #0x17
	mov r2, #1
	mov r3, #0
	mov r5, #0
	bl GFL_FontCreate
	add r7, #0xf9
	str r0, [r4, r7]
	mov r7, #0x1d
	lsl r7, r7, #4
	ldrh r3, [r6]
	mov r0, #1
	mov r1, #2
	add r2, r7, #0
	bl GFL_MsgSysLoadData
	add r1, r7, #0
	sub r1, #0xbc
	str r0, [r4, r1]
	add r2, r7, #0
	ldrh r3, [r6]
	mov r0, #1
	mov r1, #2
	sub r2, #0xd
	bl GFL_MsgSysLoadData
	add r1, r7, #0
	sub r1, #0xb8
	str r0, [r4, r1]
	ldrh r3, [r6]
	mov r0, #1
	mov r1, #2
	add r2, r7, #7
	bl GFL_MsgSysLoadData
	sub r7, #0xb4
	str r0, [r4, r7]
	add r7, r5, #0
_021A2690:
	cmp r5, #1
	beq _021A26B2
	cmp r5, #5
	beq _021A26B2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r5, #0
	mov r1, #3
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r5, #0
	bl sub_02045708
_021A26B2:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	bls _021A2690
	ldr r0, [sp, #0x44]
	bl sub_021A1474
	cmp r0, #2
	beq _021A26E8
	ldr r0, [sp, #0x88]
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A26D4
	mov r3, #0
_021A26D4:
	ldr r0, [sp, #0x44]
	mov r1, #0
	mov r2, #0
	bl ovy298_21a1454
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl sub_021A1478
	b _021A26F0
_021A26E8:
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl ovy298_21a155c
_021A26F0:
	ldr r0, [sp, #0x44]
	mov r1, #0
	mov r5, #0
	bl ovy298_21a15e8
	ldr r0, [sp, #0x88]
	bl sub_0219FD24
	mov r1, #0x14
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	bl ovy298_21a15b4
	ldr r0, [sp, #0x40]
	bl sub_021A2320
	cmp r0, #2
	beq _021A2726
	ldr r0, [sp, #0x40]
	add r1, r5, #0
	bl ovy298_21a230c
	ldr r0, [sp, #0x40]
	bl sub_021A2324
_021A2726:
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a2e10
	ldr r0, [sp, #0x88]
	bl sub_0219FD24
	bl sub_0200D190
	add r5, r0, #0
	ldr r0, [sp, #0x88]
	bl sub_0219FD28
	bl sub_021A08E4
	str r0, [sp, #0x3c]
	add r0, r5, #0
	bl sub_0200D1F8
	cmp r0, #0
	beq _021A275C
	cmp r0, #1
	beq _021A2760
	cmp r0, #2
	beq _021A2764
	b _021A276C
_021A275C:
	mov r0, #0
	b _021A276A
_021A2760:
	mov r0, #1
	b _021A276A
_021A2764:
	add r0, r5, #0
	bl sub_0200D1AC
_021A276A:
	str r0, [sp, #0x38]
_021A276C:
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x48
	add r0, #2
	str r0, [sp, #4]
	add r0, sp, #0x48
	str r0, [sp, #8]
	add r0, sp, #0x54
	str r0, [sp, #0xc]
	add r0, sp, #0x50
	str r0, [sp, #0x10]
	add r0, sp, #0x58
	add r3, sp, #0x4c
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	add r3, #2
	bl ovy298_21a3004
	ldr r0, [sp, #0x88]
	bl sub_0219FD30
	add r7, sp, #0x48
	ldrh r1, [r7]
	mov r5, #0x11
	lsl r5, r5, #4
	str r1, [sp]
	ldr r1, [sp, #0x54]
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #0x1c]
	ldr r1, [r4, r5]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, r5, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	str r0, [sp, #0x30]
	ldrh r0, [r6]
	ldrh r1, [r7, #6]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #2]
	bl sub_0219D768
	str r0, [r4, #4]
	ldr r0, [sp, #0x88]
	bl sub_0219FD30
	ldrh r1, [r7]
	str r1, [sp]
	ldr r1, [sp, #0x54]
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #0x1c]
	ldr r1, [r4, r5]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, r5, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r5, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [r4, r5]
	str r0, [sp, #0x30]
	ldrh r0, [r6]
	ldrh r1, [r7, #6]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #2]
	bl sub_0219D768
	str r0, [r4, #8]
	bl sub_0219E0C8
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	add r3, sp, #0x58
	bl ovy298_21a2fcc
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a30c0
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_021A3128
	b _021A2936
_021A285C:
	ldr r0, [sp, #0x34]
	mov r1, #2
	str r1, [r0]
	ldr r0, [r4, #0xc]
	bl sub_0219FE58
	ldr r0, [r4, #0x10]
	bl sub_0219FE58
	b _021A2936
_021A2870:
	ldr r0, [r4, #0xc]
	bl sub_0219FE48
	cmp r0, #0
	bne _021A2936
	ldr r0, [sp, #0x44]
	bl sub_021A1474
	cmp r0, #2
	bne _021A2936
	ldr r0, [sp, #0x40]
	bl sub_021A2320
	cmp r0, #2
	bne _021A2936
	ldr r0, [sp, #0x44]
	bl sub_021A1544
	ldr r0, [sp, #0x44]
	mov r1, #1
	bl ovy298_21a15e8
	mov r1, #3
	b _021A2928
_021A28A0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A28CE
	ldr r0, [sp, #0x34]
	mov r1, #4
	str r1, [r0]
	ldr r0, [r4, #0xc]
	bl sub_0219FE64
	ldr r0, [r4, #0x10]
	bl sub_0219FE64
	ldr r0, [sp, #0x40]
	bl sub_021A2334
	ldr r0, [r4, #0x14]
	cmp r0, #2
	bne _021A2936
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl ovy298_21a148c
	b _021A2936
_021A28CE:
	ldr r0, [sp, #0x44]
	bl ovy298_21a21a4
	cmp r0, #0
	bne _021A2936
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A2936
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a2aa8
	cmp r0, #0
	bne _021A2936
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a2b90
	b _021A2936
_021A28F8:
	ldr r0, [r4, #0xc]
	bl sub_0219FE48
	cmp r0, #0
	bne _021A2936
	ldr r0, [r4, #0x10]
	bl sub_0219FE48
	cmp r0, #0
	bne _021A2936
	ldr r0, [sp, #0x40]
	bl sub_021A2320
	cmp r0, #0
	bne _021A2936
	ldr r0, [r4, #0x14]
	cmp r0, #2
	bne _021A292E
	ldr r0, [sp, #0x44]
	bl sub_021A1474
	cmp r0, #0
	bne _021A2936
_021A2926:
	mov r1, #5
_021A2928:
	ldr r0, [sp, #0x34]
	str r1, [r0]
	b _021A2936
_021A292E:
	b _021A2926
_021A2930:
	add sp, #0x70
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2936:
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	cmp r0, #2
	blt _021A2968
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a2f58
	ldr r0, [r4, #4]
	bl sub_0219DC74
	ldr r0, [r4, #8]
	bl sub_0219DC74
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	bne _021A2968
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a316c
_021A2968:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl ovy298_219fdec
	mov r0, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a25f8

	thumb_func_start ovy298_21a2978
ovy298_21a2978: ; 0x021A2978
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r6, r3, #0
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	bne _021A2988
	b _021A2AA0
_021A2988:
	add r0, r5, #0
	bl sub_0219FD34
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0xa
	mov r7, #0
	cmp r0, #8
	bhi _021A29BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A29A6: ; jump table
	.short _021A29B8 - _021A29A6 - 2 ; case 0
	.short _021A29B8 - _021A29A6 - 2 ; case 1
	.short _021A29B8 - _021A29A6 - 2 ; case 2
	.short _021A29B8 - _021A29A6 - 2 ; case 3
	.short _021A29B8 - _021A29A6 - 2 ; case 4
	.short _021A29BA - _021A29A6 - 2 ; case 5
	.short _021A29B8 - _021A29A6 - 2 ; case 6
	.short _021A29B8 - _021A29A6 - 2 ; case 7
	.short _021A29B8 - _021A29A6 - 2 ; case 8
_021A29B8:
	str r7, [r6, #0x18]
_021A29BA:
	cmp r4, #9
	bhi _021A29E2
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A29CA: ; jump table
	.short _021A29E2 - _021A29CA - 2 ; case 0
	.short _021A29DE - _021A29CA - 2 ; case 1
	.short _021A29DE - _021A29CA - 2 ; case 2
	.short _021A29DE - _021A29CA - 2 ; case 3
	.short _021A29DE - _021A29CA - 2 ; case 4
	.short _021A29DE - _021A29CA - 2 ; case 5
	.short _021A29E2 - _021A29CA - 2 ; case 6
	.short _021A29DE - _021A29CA - 2 ; case 7
	.short _021A29DE - _021A29CA - 2 ; case 8
	.short _021A29DE - _021A29CA - 2 ; case 9
_021A29DE:
	mov r7, #1
	str r7, [r6, #0x18]
_021A29E2:
	cmp r4, #0xc
	beq _021A29EC
	cmp r4, #0xd
	beq _021A2A08
	b _021A2A2C
_021A29EC:
	add r0, r5, #0
	bl sub_0219FD40
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy298_219fd4c
	add r0, r5, #0
	bl sub_0219FD40
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _021A2A2C
	b _021A2A22
_021A2A08:
	add r0, r5, #0
	bl sub_0219FD40
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ovy298_219fd8c
	add r0, r5, #0
	bl sub_0219FD40
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _021A2A2C
_021A2A22:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ovy298_21a2cd8
_021A2A2C:
	cmp r4, #9
	bhi _021A2A96
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2A3C: ; jump table
	.short _021A2AA0 - _021A2A3C - 2 ; case 0
	.short _021A2A50 - _021A2A3C - 2 ; case 1
	.short _021A2A50 - _021A2A3C - 2 ; case 2
	.short _021A2A60 - _021A2A3C - 2 ; case 3
	.short _021A2A6A - _021A2A3C - 2 ; case 4
	.short _021A2A74 - _021A2A3C - 2 ; case 5
	.short _021A2A96 - _021A2A3C - 2 ; case 6
	.short _021A2A58 - _021A2A3C - 2 ; case 7
	.short _021A2A58 - _021A2A3C - 2 ; case 8
	.short _021A2A58 - _021A2A3C - 2 ; case 9
_021A2A50:
	mov r0, #2
	add sp, #0x10
	str r0, [r6, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021A2A58:
	mov r0, #1
	add sp, #0x10
	str r0, [r6, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021A2A60:
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A2A6A:
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A2A74:
	add r0, r5, #0
	bl sub_0219FD24
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ovy298_21a15cc
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02017644
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A2A96:
	cmp r7, #0
	beq _021A2AA0
	ldr r0, [sp, #4]
	bl sub_021A1544
_021A2AA0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a2978
_021A2AA4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy298_21a2aa8
ovy298_21a2aa8: ; 0x021A2AA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r0, r2, #0
	add r6, r1, #0
	str r2, [sp, #4]
	bl sub_0219FD34
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	bne _021A2B36
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A2B36
	ldr r4, [sp, #8]
	mov r7, #0x14
_021A2AD8:
	add r0, r4, #0
	mul r0, r7
	add r5, r6, r0
	ldr r0, [r5, #0x1c]
	bl sub_0204C138
	cmp r0, #0
	beq _021A2B2C
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhi _021A2B2C
	add r2, r5, #0
	add r2, #0x22
	ldrb r2, [r2]
	add r1, r1, r2
	cmp r0, r1
	bhs _021A2B2C
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bhi _021A2B2C
	add r5, #0x23
	ldrb r0, [r5]
	add r0, r2, r0
	cmp r1, r0
	bhs _021A2B2C
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, r4
	beq _021A2B36
	add r0, r6, #0
	add r0, #0x94
	str r4, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _021A2B36
_021A2B2C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2AD8
_021A2B36:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A2B84
	add r3, r6, #0
	add r3, #0x94
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [r3]
	add r1, r6, #0
	bl ovy298_21a2d88
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x14
	add r2, r0, #0
	mul r2, r1
	mov r3, #1
	add r0, r6, r2
	str r3, [r0, #0x2c]
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	mul r1, r0
	add r1, r6, r1
	ldr r0, [r1, #0x1c]
	ldrh r1, [r1, #0x26]
	bl sub_0204C488
	ldr r0, _021A2B8C ; =0x0000054A
	bl GFL_SndSEPlay
	mov r0, #1
	bl sub_0203D564
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ovy298_21a15e8
_021A2B84:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2B8C: .word 0x0000054A
	thumb_func_end ovy298_21a2aa8

	thumb_func_start ovy298_21a2b90
ovy298_21a2b90: ; 0x021A2B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r2, #0
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_0219FD34
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	bne _021A2C7E
	bl sub_0203DF44
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r1, r5, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #6
	bne _021A2BFA
	mov r1, #3
	lsl r1, r1, #8
	tst r1, r6
	bne _021A2BD2
	mov r1, #1
	tst r0, r1
	beq _021A2C7E
_021A2BD2:
	mov r4, #0
	mov r6, #0x14
_021A2BD6:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_0204C138
	cmp r0, #0
	beq _021A2BEE
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0]
	b _021A2C34
_021A2BEE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2BD6
	b _021A2C7E
_021A2BFA:
	mov r1, #1
	lsl r1, r1, #8
	tst r1, r6
	bne _021A2C08
	mov r4, #1
	tst r0, r4
	beq _021A2C46
_021A2C08:
	mov r4, #1
	mov r7, #0x14
_021A2C0C:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #6
	add r0, r0, r4
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_0204C138
	cmp r0, #0
	beq _021A2C3A
_021A2C2E:
	add r0, r5, #0
	add r0, #0x94
	str r6, [r0]
_021A2C34:
	mov r0, #1
	str r0, [sp, #8]
	b _021A2C7E
_021A2C3A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2C0C
	b _021A2C7E
_021A2C46:
	lsl r0, r4, #9
	tst r0, r6
	beq _021A2C7E
	mov r7, #0x14
_021A2C4E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #6
	add r0, r0, #6
	sub r0, r0, r4
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_0204C138
	cmp r0, #0
	beq _021A2C74
	b _021A2C2E
_021A2C74:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2C4E
_021A2C7E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A2CCC
	add r3, r5, #0
	add r3, #0x94
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [r3]
	add r1, r5, #0
	bl ovy298_21a2d88
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x14
	add r2, r0, #0
	mul r2, r1
	mov r3, #1
	add r0, r5, r2
	str r3, [r0, #0x2c]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #0x1c]
	ldrh r1, [r1, #0x26]
	bl sub_0204C488
	ldr r0, _021A2CD4 ; =0x0000054A
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ovy298_21a15e8
_021A2CCC:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2CD4: .word 0x0000054A
	thumb_func_end ovy298_21a2b90

	thumb_func_start ovy298_21a2cd8
ovy298_21a2cd8: ; 0x021A2CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r3, sp, #0x1c
	str r3, [sp]
	add r3, sp, #0x18
	add r3, #2
	str r3, [sp, #4]
	add r3, sp, #0x18
	str r3, [sp, #8]
	add r3, sp, #0x24
	str r3, [sp, #0xc]
	add r3, sp, #0x20
	str r3, [sp, #0x10]
	add r3, sp, #0x28
	str r3, [sp, #0x14]
	add r3, sp, #0x1c
	add r3, #2
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl ovy298_21a3004
	add r3, sp, #0x18
	ldrh r0, [r3]
	mov r4, #1
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #2]
	ldr r0, [r5, #4]
	bl sub_0219DE50
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #6
	beq _021A2D4A
	lsl r1, r0, #2
	add r0, sp, #0x28
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A2D38
	mov r4, #0
	b _021A2D4A
_021A2D38:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy298_21a3144
	add r0, r5, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0]
_021A2D4A:
	cmp r4, #0
	beq _021A2D56
	ldr r0, [r5, #8]
	bl sub_0219E0C8
	b _021A2D78
_021A2D56:
	add r3, sp, #0x18
	ldrh r0, [r3]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #2]
	ldr r0, [r5, #8]
	bl sub_0219DFB0
_021A2D78:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, sp, #0x28
	bl ovy298_21a2fcc
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a2cd8

	thumb_func_start ovy298_21a2d88
ovy298_21a2d88: ; 0x021A2D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	add r4, r3, #0
	add r3, r5, #0
	add r3, #0x98
	ldr r3, [r3]
	add r6, r0, #0
	add r7, r2, #0
	cmp r3, r4
	beq _021A2E0A
	cmp r3, #6
	bne _021A2DE8
	add r3, sp, #0x1c
	str r3, [sp]
	add r3, sp, #0x18
	add r3, #2
	str r3, [sp, #4]
	add r3, sp, #0x18
	str r3, [sp, #8]
	add r3, sp, #0x24
	str r3, [sp, #0xc]
	add r3, sp, #0x20
	str r3, [sp, #0x10]
	add r3, sp, #0x28
	str r3, [sp, #0x14]
	add r3, sp, #0x1c
	add r3, #2
	bl ovy298_21a3004
	add r3, sp, #0x18
	ldrh r0, [r3]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #2]
	ldr r0, [r5, #8]
	bl sub_0219DFB0
	ldr r0, [r5, #8]
	bl sub_0219E114
	b _021A2DF0
_021A2DE8:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0219DF4C
_021A2DF0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy298_21a3144
	add r0, r5, #0
	add r0, #0x98
	str r4, [r0]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_021A3128
_021A2E0A:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a2d88

	thumb_func_start ovy298_21a2e10
ovy298_21a2e10: ; 0x021A2E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r2, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r5, r1, #0
	bl sub_0219FD34
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219FD28
	bl sub_021A08E4
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrh r1, [r1]
	mov r0, #0x9d
	mov r6, #0
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021A1620
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0xd
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	ldrh r3, [r3]
	mov r1, #0x1c
	mov r2, #0x2d
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r7, sp, #0x18
_021A2E82:
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	lsl r0, r6, #3
	mov r2, #0x14
	mul r2, r6
	add r4, r5, r2
	add r2, r4, #0
	ldr r1, _021A2F20 ; =0x021AC3E8
	add r0, r6, r0
	add r1, r1, r0
	ldrb r3, [r1, #2]
	add r2, #0x20
	strb r3, [r2]
	add r2, r4, #0
	ldrb r3, [r1, #3]
	add r2, #0x21
	strb r3, [r2]
	add r2, r4, #0
	ldrb r3, [r1, #4]
	add r2, #0x22
	strb r3, [r2]
	add r2, r4, #0
	ldrb r3, [r1, #5]
	add r2, #0x23
	strb r3, [r2]
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #8]
	strh r2, [r4, #0x24]
	ldrb r2, [r1, #7]
	strh r2, [r4, #0x26]
	add r2, r4, #0
	add r2, #0x28
	strb r3, [r2]
	mov r2, #0
	str r2, [r4, #0x2c]
	ldr r2, _021A2F20 ; =0x021AC3E8
	add r3, r5, #0
	ldrb r0, [r2, r0]
	add r2, r5, #0
	add r2, #0x9c
	strh r0, [r7]
	ldrb r0, [r1, #1]
	add r1, r5, #0
	add r1, #0xa0
	strh r0, [r7, #2]
	ldrh r0, [r4, #0x24]
	add r3, #0xa4
	strh r0, [r7, #4]
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	str r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C318
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _021A2E82
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2F20: .word 0x021AC3E8
	thumb_func_end ovy298_21a2e10

	thumb_func_start ovy298_21a2f24
ovy298_21a2f24: ; 0x021A2F24
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	mov r6, #0x14
_021A2F2C:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2F2C
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_0204B98C
	add r5, #0xa4
	ldr r0, [r5]
	bl sub_0204BE64
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a2f24

	thumb_func_start ovy298_21a2f58
ovy298_21a2f58: ; 0x021A2F58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r2, #0
	bl sub_0219FD34
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	beq _021A2FCA
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r6, r5, #0
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	add r6, #0x2c
	ldr r0, [r6, r4]
	cmp r0, #3
	bhi _021A2FCA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2F8E: ; jump table
	.short _021A2FCA - _021A2F8E - 2 ; case 0
	.short _021A2F96 - _021A2F8E - 2 ; case 1
	.short _021A2F9C - _021A2F8E - 2 ; case 2
	.short _021A2FAE - _021A2F8E - 2 ; case 3
_021A2F96:
	mov r0, #2
	str r0, [r6, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A2F9C:
	add r0, r5, r4
	ldr r0, [r0, #0x1c]
	bl sub_0204C560
	cmp r0, #0
	bne _021A2FCA
	mov r0, #3
	str r0, [r6, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A2FAE:
	add r1, r5, r4
	ldr r0, [r1, #0x1c]
	ldrh r1, [r1, #0x24]
	bl sub_0204C488
	mov r0, #0
	str r0, [r6, r4]
	mov r0, #6
	add r5, #0x94
	str r0, [r5]
	add r0, r7, #0
	mov r1, #1
	bl ovy298_21a15e8
_021A2FCA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a2f58

	thumb_func_start ovy298_21a2fcc
ovy298_21a2fcc: ; 0x021A2FCC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r3, #0
	mov r4, #0
_021A2FD4:
	mov r0, #0x14
	mul r0, r4
	add r5, r6, r0
	lsl r1, r4, #2
	ldr r0, [r5, #0x1c]
	ldr r1, [r7, r1]
	bl sub_0204C124
	mov r0, #0
	str r0, [r5, #0x2c]
	ldrh r1, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	bl sub_0204C488
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A2FD4
	mov r0, #6
	add r6, #0x94
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a2fcc

	thumb_func_start ovy298_21a3004
ovy298_21a3004: ; 0x021A3004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x64]
	bl sub_0219FD24
	bl sub_0200D190
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219FD40
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x18
	bl sub_0200D3C8
	ldr r0, _021A30BC ; =0x00000147
	cmp r4, r0
	bne _021A304E
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200DA18
	str r0, [sp, #0x14]
_021A304E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200D660
	str r0, [sp, #0x10]
	mov r5, #0
_021A305A:
	mov r2, #0x14
	add r3, r5, #0
	mul r3, r2
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r2, r2, r3
	add r2, #0x28
	ldrb r2, [r2]
	add r1, r4, #0
	bl sub_0200DB5C
	lsl r2, r5, #2
	add r1, sp, #0x24
	str r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A305A
	ldr r0, [sp, #0xc]
	mov r3, #0
	strh r4, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	strh r1, [r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x58]
	strh r1, [r0]
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x10]
	str r0, [r1]
	add r1, sp, #0x24
_021A30A6:
	lsl r2, r3, #2
	ldr r0, [r1, r2]
	str r0, [r7, r2]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _021A30A6
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021A30BC: .word 0x00000147
	thumb_func_end ovy298_21a3004

	thumb_func_start ovy298_21a30c0
ovy298_21a30c0: ; 0x021A30C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r3, r0, #0
	ldrh r3, [r3]
	add r5, r1, #0
	mov r0, #0x9d
	mov r1, #3
	add r2, sp, #0
	bl sub_0204B354
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	ldr r4, [r0, #0xc]
	add r1, #0xa8
	add r0, r4, #0
	add r0, #0x20
	mov r2, #0x20
	blx MI_CpuCopy8
	add r4, #0x60
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0xc8
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r6, #0
	bl GFL_HeapFree
	mov r0, #0x20
	mov r1, #0
	add r0, #0xe8
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xe8
	mov r2, #0x20
	blx MI_CpuCopy8
	add r5, #0xe8
	mov r0, #0xe
	mov r1, #0xc0
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy298_21a30c0

	thumb_func_start sub_021A3124
sub_021A3124: ; 0x021A3124
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3124

	thumb_func_start sub_021A3128
sub_021A3128: ; 0x021A3128
	add r0, r1, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #6
	beq _021A3140
	mov r0, #0x42
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r2, #1
	add r0, r0, #4
	str r2, [r1, r0]
_021A3140:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3128

	thumb_func_start ovy298_21a3144
ovy298_21a3144: ; 0x021A3144
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r0]
	cmp r1, #6
	beq _021A316A
	add r0, r1, #0
	mov r4, #0x14
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl sub_0204C378
	add r4, #0xf8
	str r6, [r5, r4]
_021A316A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a3144

	thumb_func_start ovy298_21a316c
ovy298_21a316c: ; 0x021A316C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x43
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A319E
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0]
	cmp r1, #6
	beq _021A3196
	mov r0, #0x14
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	mov r1, #2
	mov r2, #0
	bl sub_0204C378
_021A3196:
	mov r0, #0x43
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021A319E:
	mov r1, #0x42
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	add r3, r2, r0
	lsl r0, r0, #6
	cmp r3, r0
	blt _021A31BA
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r2, r0
	str r0, [r4, r1]
	b _021A31BC
_021A31BA:
	str r3, [r4, r1]
_021A31BC:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A3288 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r3, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #4]
_021A31EA:
	lsl r7, r2, #1
	add r0, r4, r7
	add r0, #0xa8
	ldrh r5, [r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, r7
	add r0, #0xc8
	ldrh r1, [r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #4]
	asr r0, r0, #0xa
	and r5, r1
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r3
	asr r5, r5, #0xc
	add r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0xa
	mov r5, #0x3e
	str r0, [sp, #8]
	mov r0, #0x1f
	and r0, r1
	lsl r5, r5, #4
	and r1, r5
	lsl r1, r1, #0x13
	lsr r5, r1, #0x18
	ldr r1, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r1, r5, r1
	sub r0, r0, r6
	mul r1, r3
	mul r0, r3
	asr r5, r1, #0xc
	ldr r1, [sp]
	asr r0, r0, #0xc
	add r0, r6, r0
	add r1, r1, r5
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	orr r1, r0
	ldr r0, [sp, #8]
	orr r1, r0
	add r0, r4, r7
	add r0, #0xe8
	strh r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x10
	blo _021A31EA
	add r4, #0xe8
	mov r0, #0xe
	mov r1, #0xc0
	add r2, r4, #0
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A3288: .word FX_SinCosTable_
	thumb_func_end ovy298_21a316c

	thumb_func_start sub_021A328C
sub_021A328C: ; 0x021A328C
	strh r1, [r0]
	ldr r1, _021A3294 ; =0x00000267
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_021A3294: .word 0x00000267
	thumb_func_end sub_021A328C

	thumb_func_start ovy298_21a3298
ovy298_21a3298: ; 0x021A3298
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	add r6, r2, #0
	str r0, [sp, #0x18]
	bl sub_0219FD24
	str r0, [sp]
	ldr r0, _021A33E8 ; =0x00000090
	bl sub_0203CE0C
	mov r7, #0x16
	lsl r7, r7, #6
	ldrh r2, [r6]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy298_219fcac
	mov r1, #0
	add r2, r7, #0
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	bl sub_0219FD28
	bl sub_021A08E4
	str r0, [r5]
	ldr r0, [sp, #0x18]
	bl sub_0219FD2C
	str r0, [r5, #4]
	add r7, r4, #0
_021A32DE:
	lsl r0, r4, #2
	add r0, r5, r0
	str r7, [r0, #0x68]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A32DE
	add r0, r5, #0
	add r1, r5, #0
	str r7, [r5, #0x70]
	add r0, #0x98
	str r7, [r0]
	add r1, #0x9c
	mov r0, #1
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	str r7, [r0]
	str r7, [r5, #0x78]
	add r0, r5, #0
	str r7, [r5, #0x7c]
	add r0, #0x80
	str r7, [r0]
	ldr r0, [sp]
	bl sub_020173AC
	add r1, r5, #0
	add r1, #0x84
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x85
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	add r1, r5, #0
	str r7, [r0]
	add r1, #0x94
	mov r0, #1
	str r0, [r1]
	ldrh r0, [r6]
	bl sub_0219F718
	ldr r4, _021A33EC ; =0x000004F8
	ldr r2, [sp, #0x18]
	str r0, [r5, r4]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy298_21a3bf0
	ldrh r1, [r6]
	mov r0, #0xb0
	bl GFL_ArcSysCreateFileHandle
	add r1, r4, #0
	add r1, #0x5c
	str r0, [r5, r1]
	ldr r0, _021A33F0 ; =ovy298_21a3b94
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	add r1, r4, #0
	add r1, #0x60
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x64
	strb r7, [r5, r0]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy298_21a427c
	ldrh r0, [r6]
	bl ovy298_219fdc8
	add r1, r4, #0
	add r1, #0x68
	str r0, [r5, r1]
	ldrh r0, [r6]
	bl ovy298_219fdc8
	add r1, r4, #0
	add r1, #0x6c
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	bl sub_0219FE98
	add r0, r4, #0
	add r0, #0x6c
	ldr r0, [r5, r0]
	bl sub_0219FE98
	add r1, r4, #0
	add r1, #0x68
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_0219FE88
	add r1, r4, #0
	add r1, #0x6c
	ldr r1, [r5, r1]
	mov r0, #1
	bl sub_0219FE88
	ldrh r0, [r6]
	mov r1, #0xa
	bl ovy298_219fee0
	add r1, r4, #0
	add r1, #0x70
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x74
	add r1, r4, #0
	str r7, [r5, r0]
	add r1, #0x78
	mov r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x7c
	str r7, [r5, r0]
	add r1, #0x80
	mov r0, #1
	str r0, [r5, r1]
	add r4, #0x84
	str r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A33E8: .word 0x00000090
_021A33EC: .word 0x000004F8
_021A33F0: .word ovy298_21a3b94
	thumb_func_end ovy298_21a3298

	thumb_func_start ovy298_21a33f4
ovy298_21a33f4: ; 0x021A33F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r3, #0
	str r0, [sp]
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	str r2, [sp, #4]
	ldr r7, [sp, #0x20]
	bl ovy298_21a5c30
	mov r4, #0
_021A340C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r1, [r5, #0x68]
	cmp r1, #0
	beq _021A341C
	ldr r0, [r5, #0x58]
	bl ovy298_21a47cc
_021A341C:
	mov r0, #0
	str r0, [r5, #0x68]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A340C
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a4724
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_021A4510
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a4458
	ldr r0, [r6, #8]
	bl ovy298_21a02fc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a4254
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a40dc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a3f80
	ldr r4, _021A34C0 ; =0x00000568
	ldr r0, [r6, r4]
	bl ovy298_219ff9c
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0219FDE4
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r6, r0]
	bl sub_0219FDE4
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy298_21a42a0
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r6, r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r6, r0]
	bl GFL_ArcToolFree
	sub r4, #0x70
	ldr r0, [r6, r4]
	bl sub_0219F728
	ldr r0, [sp]
	bl ovy298_219fccc
	ldr r0, _021A34C4 ; =0x00000090
	bl sub_0203CDC8
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A34C0: .word 0x00000568
_021A34C4: .word 0x00000090
	thumb_func_end ovy298_21a33f4

	thumb_func_start ovy298_21a34c8
ovy298_21a34c8: ; 0x021A34C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_0219FD34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	bl sub_0219FD38
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #9
	bls _021A34EE
	b _021A38D4
_021A34EE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A34FA: ; jump table
	.short _021A350E - _021A34FA - 2 ; case 0
	.short _021A3672 - _021A34FA - 2 ; case 1
	.short _021A368E - _021A34FA - 2 ; case 2
	.short _021A3718 - _021A34FA - 2 ; case 3
	.short _021A3768 - _021A34FA - 2 ; case 4
	.short _021A3786 - _021A34FA - 2 ; case 5
	.short _021A37B8 - _021A34FA - 2 ; case 6
	.short _021A3800 - _021A34FA - 2 ; case 7
	.short _021A3858 - _021A34FA - 2 ; case 8
	.short _021A3874 - _021A34FA - 2 ; case 9
_021A350E:
	ldr r1, [sp, #4]
	mov r0, #1
	str r0, [r1]
	mov r1, #5
	mov r2, #0
	mov r6, #0
	bl GX_SetGraphicsMode
_021A351E:
	mov r0, #0x2c
	mul r0, r6
	ldr r1, _021A3848 ; =0x021AC494
	str r0, [sp, #0xc]
	ldr r5, [r1, r0]
	add r7, r1, r0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	lsl r0, r5, #0x18
	ldr r2, _021A3848 ; =0x021AC494
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x18
	add r1, r2, r1
	ldr r2, [r7, #0x24]
	add r1, r1, #4
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r7, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r6, r6, #1
	cmp r6, #2
	blo _021A351E
	mov r5, #0
	add r6, r5, #0
	mov r7, #3
_021A356A:
	cmp r5, #1
	beq _021A358C
	cmp r5, #5
	beq _021A358C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r5, #0
	bl sub_02045708
_021A358C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	bls _021A356A
	mov r0, #2
	mov r1, #2
	bl sub_02044BD8
	mov r0, #3
	mov r1, #3
	bl sub_02044BD8
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	mov r0, #6
	mov r1, #1
	mov r5, #1
	bl sub_02044BD8
	mov r0, #7
	mov r1, #2
	bl sub_02044BD8
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl ovy298_21a1644
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a3c38
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a3cdc
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a400c
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a40fc
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #1
	ldrh r0, [r0]
	mov r2, #4
	mov r3, #9
	bl ovy298_21a01c4
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a433c
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a44a8
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a46dc
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a57c4
	ldr r0, [r4, #0x70]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	bl sub_0204C318
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a4820
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A3662
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	add r3, r5, #0
	bl ovy298_21a485c
_021A3662:
	ldr r5, _021A384C ; =0x00000568
	ldr r0, [r4, r5]
	bl ovy298_21a00d8
	ldr r0, [r4, r5]
	bl ovy298_21a0098
	b _021A38D4
_021A3672:
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0]
	ldr r1, _021A3850 ; =0x00000564
	mov r0, #1
	ldr r1, [r4, r1]
	bl sub_0219FE74
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a6240
	b _021A38D4
_021A368E:
	mov r5, #0x56
	ldr r0, [sp, #4]
	mov r1, #3
	lsl r5, r5, #4
	str r1, [r0]
	ldr r0, [r4, r5]
	bl sub_0219FE58
	add r5, #8
	ldr r0, [r4, r5]
	bl ovy298_21a0058
	ldr r0, [sp, #0x10]
	bl sub_021A1474
	cmp r0, #2
	beq _021A36D2
	ldr r0, [sp, #0x28]
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A36BE
	mov r3, #0
_021A36BE:
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r2, #1
	bl ovy298_21a1454
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_021A1478
	b _021A36DA
_021A36D2:
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl ovy298_21a155c
_021A36DA:
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r5, #0
	bl ovy298_21a15e8
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0]
	ldr r0, [sp, #0x28]
	bl sub_0219FD24
	mov r1, #0x15
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl ovy298_21a15b4
	add r0, r7, #0
	bl sub_021A2320
	cmp r0, #2
	beq _021A37C2
	add r0, r7, #0
	mov r1, #1
	bl ovy298_21a230c
	add r0, r7, #0
	bl sub_021A2324
	b _021A38D4
_021A3718:
	mov r5, #0x56
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0219FE48
	cmp r0, #0
	bne _021A37C2
	add r5, #8
	ldr r0, [r4, r5]
	bl sub_021A0048
	cmp r0, #0
	bne _021A37C2
	ldr r0, [sp, #0x10]
	bl sub_021A1474
	cmp r0, #2
	bne _021A37C2
	add r0, r7, #0
	bl sub_021A2320
	cmp r0, #2
	bne _021A37C2
	ldr r0, [sp, #0x10]
	bl sub_021A1544
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a61a8
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a59fc
	mov r1, #4
_021A3762:
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021A38D4
_021A3768:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021A37C2
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r5, #1
	bl ovy298_21a15e8
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0]
	mov r1, #5
	b _021A3762
_021A3786:
	ldr r0, _021A3854 ; =0x0000056C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A379C
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a5a14
	mov r1, #6
	b _021A3762
_021A379C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A37AC
	add r0, r4, #0
	bl ovy298_21a6150
_021A37AC:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a4c70
	b _021A38D4
_021A37B8:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021A37C4
_021A37C2:
	b _021A38D4
_021A37C4:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a61f4
	mov r5, #0x56
	ldr r0, [sp, #4]
	mov r1, #7
	lsl r5, r5, #4
	str r1, [r0]
	ldr r0, [r4, r5]
	bl sub_0219FE64
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl ovy298_21a0078
	add r0, r7, #0
	bl sub_021A2334
	add r5, #0xc
	ldr r0, [r4, r5]
	cmp r0, #2
	bne _021A38D4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl ovy298_21a148c
	b _021A38D4
_021A3800:
	mov r6, #0x56
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	mov r5, #0
	bl sub_0219FE48
	cmp r0, #0
	bne _021A383E
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_021A0048
	cmp r0, #0
	bne _021A383E
	add r0, r7, #0
	bl sub_021A2320
	cmp r0, #0
	bne _021A383E
	add r6, #0xc
	ldr r0, [r4, r6]
	cmp r0, #2
	bne _021A383C
	ldr r0, [sp, #0x10]
	bl sub_021A1474
	cmp r0, #0
	bne _021A383E
	b _021A383C
_021A383C:
	mov r5, #1
_021A383E:
	cmp r5, #0
	beq _021A38D4
	mov r1, #8
	b _021A3762
	nop
_021A3848: .word 0x021AC494
_021A384C: .word 0x00000568
_021A3850: .word 0x00000564
_021A3854: .word 0x0000056C
_021A3858:
	ldr r0, [sp, #4]
	mov r1, #9
	str r1, [r0]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a627c
	ldr r1, _021A3928 ; =0x00000564
	mov r0, #1
	ldr r1, [r4, r1]
	bl sub_0219FE88
	b _021A38D4
_021A3874:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl sub_021A3CD8
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl GX_SetGraphicsMode
_021A388A:
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	ldr r0, _021A392C ; =0x021AC4EC
	ldr r5, [r0, r7]
	add r6, r0, r7
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	ldr r1, _021A392C ; =0x021AC4EC
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	add r1, r1, r7
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r1, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #2
	blo _021A388A
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A38D4:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #2
	blt _021A38F6
	ldr r0, [r4, #8]
	bl ovy298_21a031c
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a4528
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a4658
_021A38F6:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a54cc
	mov r5, #0x56
	lsl r5, r5, #4
	add r1, r5, #4
	ldr r0, [r4, r5]
	ldr r1, [r4, r1]
	bl ovy298_219fdec
	add r5, #8
	ldr r0, [r4, r5]
	bl ovy298_219fff8
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ovy298_21a42c8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A3928: .word 0x00000564
_021A392C: .word 0x021AC4EC
	thumb_func_end ovy298_21a34c8

	thumb_func_start ovy298_21a3930
ovy298_21a3930: ; 0x021A3930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r4, r3, #0
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	bne _021A3940
	b _021A3B82
_021A3940:
	add r0, r6, #0
	bl sub_0219FD34
	str r0, [sp, #4]
	add r0, r5, #0
	sub r0, #0xa
	mov r7, #0
	cmp r0, #0x18
	bhi _021A3996
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A395E: ; jump table
	.short _021A3990 - _021A395E - 2 ; case 0
	.short _021A3990 - _021A395E - 2 ; case 1
	.short _021A3990 - _021A395E - 2 ; case 2
	.short _021A3990 - _021A395E - 2 ; case 3
	.short _021A3990 - _021A395E - 2 ; case 4
	.short _021A3990 - _021A395E - 2 ; case 5
	.short _021A3996 - _021A395E - 2 ; case 6
	.short _021A3990 - _021A395E - 2 ; case 7
	.short _021A3990 - _021A395E - 2 ; case 8
	.short _021A3996 - _021A395E - 2 ; case 9
	.short _021A3990 - _021A395E - 2 ; case 10
	.short _021A3996 - _021A395E - 2 ; case 11
	.short _021A3996 - _021A395E - 2 ; case 12
	.short _021A3996 - _021A395E - 2 ; case 13
	.short _021A3996 - _021A395E - 2 ; case 14
	.short _021A3996 - _021A395E - 2 ; case 15
	.short _021A3996 - _021A395E - 2 ; case 16
	.short _021A3996 - _021A395E - 2 ; case 17
	.short _021A3996 - _021A395E - 2 ; case 18
	.short _021A3996 - _021A395E - 2 ; case 19
	.short _021A3996 - _021A395E - 2 ; case 20
	.short _021A3996 - _021A395E - 2 ; case 21
	.short _021A3996 - _021A395E - 2 ; case 22
	.short _021A3996 - _021A395E - 2 ; case 23
	.short _021A3990 - _021A395E - 2 ; case 24
_021A3990:
	mov r0, #0x57
	lsl r0, r0, #4
	str r7, [r4, r0]
_021A3996:
	cmp r5, #0x13
	bhi _021A39D6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A39A6: ; jump table
	.short _021A39D6 - _021A39A6 - 2 ; case 0
	.short _021A39CE - _021A39A6 - 2 ; case 1
	.short _021A39CE - _021A39A6 - 2 ; case 2
	.short _021A39CE - _021A39A6 - 2 ; case 3
	.short _021A39CE - _021A39A6 - 2 ; case 4
	.short _021A39CE - _021A39A6 - 2 ; case 5
	.short _021A39CE - _021A39A6 - 2 ; case 6
	.short _021A39D6 - _021A39A6 - 2 ; case 7
	.short _021A39CE - _021A39A6 - 2 ; case 8
	.short _021A39CE - _021A39A6 - 2 ; case 9
	.short _021A39D6 - _021A39A6 - 2 ; case 10
	.short _021A39D6 - _021A39A6 - 2 ; case 11
	.short _021A39D6 - _021A39A6 - 2 ; case 12
	.short _021A39D6 - _021A39A6 - 2 ; case 13
	.short _021A39D6 - _021A39A6 - 2 ; case 14
	.short _021A39D6 - _021A39A6 - 2 ; case 15
	.short _021A39D6 - _021A39A6 - 2 ; case 16
	.short _021A39D6 - _021A39A6 - 2 ; case 17
	.short _021A39D6 - _021A39A6 - 2 ; case 18
	.short _021A39CE - _021A39A6 - 2 ; case 19
_021A39CE:
	mov r0, #0x57
	mov r7, #1
	lsl r0, r0, #4
	str r7, [r4, r0]
_021A39D6:
	cmp r5, #0xc
	beq _021A39E0
	cmp r5, #0xd
	beq _021A3A22
	b _021A3A4E
_021A39E0:
	add r0, r6, #0
	bl sub_0219FD40
	str r0, [sp, #8]
	add r0, r6, #0
	bl ovy298_219fd4c
	add r0, r6, #0
	bl sub_0219FD40
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _021A3A20
_021A39FA:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a57c4
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a59fc
	ldr r1, _021A3B88 ; =0x00000574
	mov r0, #1
	str r0, [r4, r1]
	add r0, r1, #4
	mov r2, #0
	str r2, [r4, r0]
	add r1, #8
	str r2, [r4, r1]
	b _021A3A4E
_021A3A20:
	b _021A3A3E
_021A3A22:
	add r0, r6, #0
	bl sub_0219FD40
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ovy298_219fd8c
	add r0, r6, #0
	bl sub_0219FD40
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _021A3A3E
	b _021A39FA
_021A3A3E:
	ldr r1, _021A3B88 ; =0x00000574
	mov r2, #1
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
_021A3A4E:
	cmp r5, #0x13
	bgt _021A3A8A
	cmp r5, #0
	blt _021A3A8E
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A3A62: ; jump table
	.short _021A3B82 - _021A3A62 - 2 ; case 0
	.short _021A3A90 - _021A3A62 - 2 ; case 1
	.short _021A3A90 - _021A3A62 - 2 ; case 2
	.short _021A3AA4 - _021A3A62 - 2 ; case 3
	.short _021A3ACA - _021A3A62 - 2 ; case 4
	.short _021A3AF0 - _021A3A62 - 2 ; case 5
	.short _021A3A9A - _021A3A62 - 2 ; case 6
	.short _021A3B78 - _021A3A62 - 2 ; case 7
	.short _021A3A9A - _021A3A62 - 2 ; case 8
	.short _021A3A9A - _021A3A62 - 2 ; case 9
	.short _021A3B78 - _021A3A62 - 2 ; case 10
	.short _021A3B78 - _021A3A62 - 2 ; case 11
	.short _021A3B78 - _021A3A62 - 2 ; case 12
	.short _021A3B78 - _021A3A62 - 2 ; case 13
	.short _021A3B78 - _021A3A62 - 2 ; case 14
	.short _021A3B78 - _021A3A62 - 2 ; case 15
	.short _021A3B78 - _021A3A62 - 2 ; case 16
	.short _021A3B78 - _021A3A62 - 2 ; case 17
	.short _021A3B78 - _021A3A62 - 2 ; case 18
	.short _021A3B12 - _021A3A62 - 2 ; case 19
_021A3A8A:
	cmp r5, #0x1b
	beq _021A3B22
_021A3A8E:
	b _021A3B78
_021A3A90:
	ldr r0, _021A3B8C ; =0x0000056C
	mov r1, #2
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A3A9A:
	ldr r0, _021A3B8C ; =0x0000056C
	mov r1, #1
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A3AA4:
	ldr r1, _021A3B88 ; =0x00000574
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021A3B82
	add r0, r1, #0
	mov r2, #1
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A3B82
	mov r0, #0
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A3ACA:
	ldr r1, _021A3B88 ; =0x00000574
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021A3B82
	add r0, r1, #0
	mov r2, #1
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A3B82
	mov r0, #0
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A3AF0:
	add r0, r6, #0
	bl sub_0219FD24
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ovy298_21a15cc
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02017644
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A3B12:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #6
	bl ovy298_21a55dc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A3B22:
	add r0, r6, #0
	bl sub_0219FD24
	bl sub_02017934
	bl sub_02010CB8
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, _021A3B90 ; =0x000004F8
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_0219F730
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02010D70
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #1
	bne _021A3B60
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02010D80
_021A3B60:
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_021A2164
	add r0, r4, #0
	bl ovy298_21a5f20
	ldr r0, _021A3B8C ; =0x0000056C
	mov r1, #2
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A3B78:
	cmp r7, #0
	beq _021A3B82
	ldr r0, [sp, #4]
	bl sub_021A1544
_021A3B82:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3B88: .word 0x00000574
_021A3B8C: .word 0x0000056C
_021A3B90: .word 0x000004F8
	thumb_func_end ovy298_21a3930

	thumb_func_start ovy298_21a3b94
ovy298_21a3b94: ; 0x021A3B94
	push {r3, r4, r5, lr}
	ldr r5, _021A3BEC ; =0x0000055C
	add r4, r1, #0
	ldrb r0, [r4, r5]
	cmp r0, #1
	beq _021A3BAA
	cmp r0, #2
	beq _021A3BB8
	cmp r0, #3
	beq _021A3BC6
	b _021A3BDC
_021A3BAA:
	add r0, r4, #0
	bl sub_021A6130
	add r0, r4, #0
	bl ovy298_21a6098
	b _021A3BDC
_021A3BB8:
	add r0, r4, #0
	bl sub_021A60B0
	add r0, r4, #0
	bl ovy298_21a60c0
	b _021A3BDC
_021A3BC6:
	add r0, r4, #0
	bl sub_021A6130
	add r0, r4, #0
	bl sub_021A60B0
	add r1, r5, #4
	ldr r1, [r4, r1]
	mov r0, #0
	bl sub_0219FE74
_021A3BDC:
	ldr r0, _021A3BEC ; =0x0000055C
	mov r1, #0
	strb r1, [r4, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_021A003C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A3BEC: .word 0x0000055C
	thumb_func_end ovy298_21a3b94

	thumb_func_start ovy298_21a3bf0
ovy298_21a3bf0: ; 0x021A3BF0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _021A3C30 ; =0x000004FC
	ldr r4, _021A3C34 ; =0x021AC544
	add r6, r1, #0
	mov r5, #0
	sub r7, r0, #4
_021A3BFC:
	ldr r0, [r6, r7]
	add r1, r5, #0
	mov r2, #0
	bl sub_0219F730
	mov r1, #0
_021A3C08:
	lsl r2, r1, #1
	ldrh r2, [r4, r2]
	cmp r0, r2
	bne _021A3C18
	ldr r0, _021A3C30 ; =0x000004FC
	add r2, r6, r5
	strb r1, [r2, r0]
	b _021A3C22
_021A3C18:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0x55
	blo _021A3C08
_021A3C22:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x55
	blo _021A3BFC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3C30: .word 0x000004FC
_021A3C34: .word 0x021AC544
	thumb_func_end ovy298_21a3bf0

	thumb_func_start ovy298_21a3c38
ovy298_21a3c38: ; 0x021A3C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x54
	bl GFL_ArcSysCreateFileHandle
	mov r7, #2
	lsl r7, r7, #0xc
	str r7, [sp]
	ldrh r1, [r5]
	mov r3, #6
	mov r2, #2
	str r1, [sp, #4]
	mov r1, #0
	lsl r3, r3, #0xc
	add r4, r0, #0
	mov r6, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	ldrh r0, [r5]
	mov r3, #2
	lsl r7, r3, #0xd
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	add r3, r7, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	mov r0, #6
	lsl r0, r0, #0xd
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	mov r0, #2
	lsl r7, r0, #0xa
	str r7, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x11
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a3c38

	thumb_func_start sub_021A3CD8
sub_021A3CD8: ; 0x021A3CD8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3CD8

	thumb_func_start ovy298_21a3cdc
ovy298_21a3cdc: ; 0x021A3CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r4, _021A3F70 ; =0x021AC44C
	add r3, sp, #0x34
	add r6, r0, #0
	add r5, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldrh r2, [r6]
	mov r1, #1
	bl sub_0204BE9C
	mov r4, #0x91
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldrh r2, [r6]
	mov r0, #0x10
	mov r1, #0
	bl sub_0204BF1C
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r1, [r5, r4]
	bl sub_0204C018
	ldrh r1, [r6]
	mov r0, #0x54
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #5
	str r1, [sp, #4]
	ldrh r1, [r6]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #2
	add r4, r0, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1]
	ldrh r0, [r6]
	mov r1, #8
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	mov r7, #8
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	ldrh r3, [r6]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x13
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldrh r1, [r6]
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldrh r1, [r6]
	mov r2, #0
	mov r3, #0xa0
	str r1, [sp, #8]
	mov r1, #6
	add r4, r0, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	ldrh r0, [r6]
	mov r1, #0x10
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	ldrh r3, [r6]
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #0x2f
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldrh r1, [r6]
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r6]
	mov r2, #0
	mov r3, #0xe0
	str r1, [sp, #8]
	mov r1, #5
	add r4, r0, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	ldrh r0, [r6]
	mov r1, #0xf
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	ldrh r3, [r6]
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #0x2e
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r2, _021A3F74 ; =0x021AC42C
	add r1, sp, #0x2c
_021A3E18:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r1]
	add r1, r1, #1
	sub r7, r7, #1
	bne _021A3E18
	ldr r3, _021A3F78 ; =0x021AC424
	add r2, sp, #0x24
	mov r1, #8
_021A3E2A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A3E2A
	ldr r3, _021A3F7C ; =0x021AC434
	add r2, sp, #0x1c
	mov r1, #8
_021A3E3C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A3E3C
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r4, #5
	mov r7, #0
_021A3E56:
	add r0, sp, #0x14
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r6]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #9
	add r3, r5, #0
	lsl r0, r0, #6
	add r1, #0xa4
	add r2, #0xa8
	add r3, #0xac
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A3E56
	mov r4, #0
_021A3E90:
	add r0, sp, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r6]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #9
	add r3, r5, #0
	lsl r0, r0, #6
	add r1, #0xb0
	add r2, #0xb4
	add r3, #0xb8
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	lsl r1, r7, #2
	add r1, r5, r1
	add r1, #0xc8
	str r0, [r1]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #5
	blo _021A3E90
	mov r7, #0
_021A3ECA:
	lsl r6, r4, #2
	add r0, r5, r6
	add r1, sp, #0x2c
	add r0, #0xc8
	ldrb r1, [r1, r4]
	ldr r0, [r0]
	bl sub_0204C488
	add r0, r5, r6
	add r0, #0xc8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r5, r6
	add r1, sp, #0x24
	add r0, #0xc8
	ldrb r1, [r1, r4]
	ldr r0, [r0]
	bl sub_0204C468
	add r0, r5, r6
	add r1, sp, #0x1c
	add r0, #0xc8
	ldrb r1, [r1, r4]
	ldr r0, [r0]
	bl sub_0204C438
	add r0, r5, r6
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r5, r6
	add r0, #0xc8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A3ECA
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #0x60
	strh r1, [r0, #6]
	add r4, sp, #0x10
	mov r6, #0
_021A3F32:
	lsl r0, r7, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r6, #0
	bl Oam_SetSpritePosData
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #5
	blo _021A3F32
	mov r1, #0x84
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, sp, #0xc
	add r2, r6, #0
	bl Oam_SetSpritePosData
	mov r0, #8
	add r5, #0xe8
	strb r0, [r5]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021A3F70: .word 0x021AC44C
_021A3F74: .word 0x021AC42C
_021A3F78: .word 0x021AC424
_021A3F7C: .word 0x021AC434
	thumb_func_end ovy298_21a3cdc

	thumb_func_start ovy298_21a3f80
ovy298_21a3f80: ; 0x021A3F80
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021A3F86:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A3F86
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204BCD0
	mov r4, #9
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_0204BF98
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BECC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a3f80

	thumb_func_start ovy298_21a400c
ovy298_21a400c: ; 0x021A400C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _021A40D8 ; =0x000004F8
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r0, _021A40D8 ; =0x000004F8
	add r7, r5, r0
_021A402A:
	ldr r0, _021A40D8 ; =0x000004F8
	add r1, r6, #0
	ldr r0, [r5, r0]
	mov r2, #0x19
	bl sub_0219F730
	add r1, sp, #0x14
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	ldr r0, [r0]
	mov r2, #0x1a
	bl sub_0219F730
	add r1, sp, #0x14
	strh r0, [r1, #2]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldrh r0, [r0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp, #8]
	add r1, #0xbc
	add r2, #0xc0
	add r3, #0xc4
	ldr r0, [r5]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	lsl r4, r6, #2
	bl Oam_CreateSprite
	add r1, r5, r4
	add r1, #0xec
	str r0, [r1]
	ldr r0, [r7]
	add r1, r6, #0
	mov r2, #0x18
	bl sub_0219F730
	add r1, r0, #0
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0204C488
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #2
	bl sub_0204C468
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #4
	bl sub_0204C438
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, r4
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C318
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x55
	blo _021A402A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A40D8: .word 0x000004F8
	thumb_func_end ovy298_21a400c

	thumb_func_start ovy298_21a40dc
ovy298_21a40dc: ; 0x021A40DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021A40E2:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A40E2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a40dc

	thumb_func_start ovy298_21a40fc
ovy298_21a40fc: ; 0x021A40FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0219FD24
	str r0, [sp, #0x10]
	ldr r0, _021A424C ; =0x000004F8
	mov r4, #0
	add r0, r5, r0
	str r0, [sp, #0x20]
	ldr r0, _021A424C ; =0x000004F8
	add r7, sp, #0x3c
	add r0, r5, r0
	str r0, [sp, #0x1c]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x38]
	mov r0, #0x25
	lsl r0, r0, #4
	str r0, [sp, #0x34]
	sub r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x30]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _021A424C ; =0x000004F8
	add r0, r5, r0
	str r0, [sp, #0x14]
_021A415C:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0x10
	bl sub_0219F730
	add r1, r0, #0
	ldr r0, _021A4250 ; =0x0000FFFF
	cmp r1, r0
	beq _021A422C
	ldr r0, [sp, #0x10]
	bl sub_02160F74
	cmp r0, #0
	bne _021A417E
	mov r0, #1
	b _021A4180
_021A417E:
	mov r0, #0
_021A4180:
	cmp r0, #0
	beq _021A4198
	lsl r0, r4, #3
	mov r1, #0x25
	add r0, r5, r0
	mov r2, #1
	lsl r1, r1, #4
	str r2, [r0, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0
	str r2, [r0, r1]
	b _021A423C
_021A4198:
	ldr r0, _021A424C ; =0x000004F8
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0219F730
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #2
	bl sub_0219F730
	strh r0, [r7]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #3
	bl sub_0219F730
	strh r0, [r7, #2]
	mov r0, #0xe
	cmp r6, #4
	beq _021A41CA
	mov r0, #0x10
_021A41CA:
	strh r0, [r7, #4]
	mov r0, #5
	strb r0, [r7, #6]
	mov r0, #2
	strb r0, [r7, #7]
	lsl r0, r4, #3
	add r6, r5, r0
	mov r0, #0x25
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r6, r0]
	add r0, sp, #0x3c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldrh r0, [r0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, #0xa4
	add r2, #0xa8
	add r3, #0xac
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x30]
	str r0, [r6, r1]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x28]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C318
	b _021A423C
_021A422C:
	lsl r0, r4, #3
	mov r1, #0x25
	add r0, r5, r0
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	ldr r1, [sp, #0x38]
	str r2, [r0, r1]
_021A423C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A415C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021A424C: .word 0x000004F8
_021A4250: .word 0x0000FFFF
	thumb_func_end ovy298_21a40fc

	thumb_func_start ovy298_21a4254
ovy298_21a4254: ; 0x021A4254
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x95
	lsl r7, r7, #2
	add r6, r1, #0
	mov r5, #0
	sub r4, r7, #4
_021A4260:
	lsl r0, r5, #3
	add r1, r6, r0
	ldr r0, [r1, r4]
	cmp r0, #2
	bne _021A4270
	ldr r0, [r1, r7]
	bl sub_0204C108
_021A4270:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x55
	blo _021A4260
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a4254

	thumb_func_start ovy298_21a427c
ovy298_21a427c: ; 0x021A427C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_021A4284:
	lsl r0, r4, #2
	add r5, r7, r0
	ldrh r0, [r6]
	bl sub_02021998
	str r0, [r5, #0x3c]
	mov r0, #0
	str r0, [r5, #0x28]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A4284
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a427c

	thumb_func_start ovy298_21a42a0
ovy298_21a42a0: ; 0x021A42A0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r1, #0
	add r7, r4, #0
_021A42A8:
	lsl r0, r4, #2
	add r5, r6, r0
	str r7, [r5, #0x28]
	ldr r0, [r5, #0x3c]
	bl sub_02021C44
	ldr r0, [r5, #0x3c]
	bl sub_02021A18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A42A8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a42a0

	thumb_func_start ovy298_21a42c8
ovy298_21a42c8: ; 0x021A42C8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
_021A42D2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl sub_02021A3C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy298_21a42f4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A42D2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a42c8

	thumb_func_start ovy298_21a42f4
ovy298_21a42f4: ; 0x021A42F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r5, #0
	lsl r4, r3, #2
	add r6, #0x28
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021A4338
	add r7, r5, #0
	add r7, #0x14
	ldr r0, [r7, r4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0x3c]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A4338
	ldr r5, [r7, r4]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r6, r4]
_021A4338:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a42f4

	thumb_func_start ovy298_21a433c
ovy298_21a433c: ; 0x021A433C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r2, sp, #0x30
	add r7, r1, #0
	ldr r3, _021A444C ; =0x021AC43C
	str r0, [sp, #0xc]
	add r2, #3
	mov r1, #0xe
_021A434C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A434C
	ldr r3, _021A4450 ; =0x021AC470
	add r2, sp, #0x10
	mov r1, #0x23
_021A435E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A435E
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r5, #0x20
	ldr r0, [sp, #0xc]
	str r5, [sp, #4]
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #8]
	mov r0, #0x17
	mov r4, #0
	mov r3, #0
	bl sub_0204B0F0
	str r4, [sp]
	ldr r0, [sp, #0xc]
	str r5, [sp, #4]
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0x17
	mov r3, #0
	bl sub_0204B0F0
	add r5, r4, #0
_021A43A0:
	mov r0, #7
	add r1, sp, #0x30
	mul r0, r4
	add r1, #3
	add r3, r1, r0
	lsl r1, r4, #2
	add r6, r7, r1
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #6]
	str r1, [sp, #8]
	add r1, sp, #0x30
	add r1, #3
	ldrb r0, [r1, r0]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x50]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	bl BmpWin_BitmapFill
	ldr r0, [r6, #0x50]
	bl BmpWin_FlushChar
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A43A0
	add r6, sp, #0x10
_021A43E8:
	mov r0, #7
	mul r0, r5
	add r3, r6, r0
	lsl r1, r5, #2
	add r4, r7, r1
	ldrb r1, [r3, #4]
	ldrb r0, [r6, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #6]
	str r1, [sp, #8]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x14]
	bl BmpWin_FlushChar
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _021A43E8
	ldr r3, [sp, #0xc]
	ldr r2, _021A4454 ; =0x000001B9
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	str r0, [r7, #0xc]
	ldr r3, [sp, #0xc]
	mov r0, #0
	ldrh r3, [r3]
	mov r1, #2
	mov r2, #0x6d
	bl GFL_MsgSysLoadData
	str r0, [r7, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021A444C: .word 0x021AC43C
_021A4450: .word 0x021AC470
_021A4454: .word 0x000001B9
	thumb_func_end ovy298_21a433c

	thumb_func_start ovy298_21a4458
ovy298_21a4458: ; 0x021A4458
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r4, #0
_021A445E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl GFL_MsgDataFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A445E
	mov r6, #0
	add r4, r6, #0
_021A4476:
	lsl r0, r6, #2
	add r7, r5, r0
	str r4, [r7, #0x28]
	ldr r0, [r7, #0x3c]
	bl sub_02021C44
	ldr r0, [r7, #0x14]
	bl sub_02048210
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _021A4476
_021A4492:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A4492
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a4458

	thumb_func_start ovy298_21a44a8
ovy298_21a44a8: ; 0x021A44A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	mov r0, #0x9d
	mov r4, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	add r4, #0x63
	str r4, [sp, #4]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #2
	add r6, r0, #0
	bl GFL_G2DIOLoadArcNCLR
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #7
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	str r0, [r7, #0x74]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrh r0, [r5]
	mov r1, #0x27
	mov r2, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl GFL_G2DIOLoadNSCRSync
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a44a8

	thumb_func_start sub_021A4510
sub_021A4510: ; 0x021A4510
	ldr r2, [r1, #0x74]
	ldr r3, _021A4524 ; =sub_02044668
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #7
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bx r3
	nop
_021A4524: .word sub_02044668
	thumb_func_end sub_021A4510

	thumb_func_start ovy298_21a4528
ovy298_21a4528: ; 0x021A4528
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy298_21a4540
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021A4654
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a4528

	thumb_func_start ovy298_21a4540
ovy298_21a4540: ; 0x021A4540
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #3
	bhi _021A45C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A4556: ; jump table
	.short _021A45C0 - _021A4556 - 2 ; case 0
	.short _021A455E - _021A4556 - 2 ; case 1
	.short _021A45C0 - _021A4556 - 2 ; case 2
	.short _021A4590 - _021A4556 - 2 ; case 3
_021A455E:
	mov r0, #7
	mov r5, #7
	bl sub_02044E74
	cmp r0, #0x40
	blt _021A457A
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x40
	bl sub_02045E1C
	mov r0, #2
	str r0, [r4, #0x7c]
	b _021A45C0
_021A457A:
	add r0, r5, #0
	mov r1, #4
	mov r2, #8
	bl sub_02045E1C
	mov r0, #6
	mov r1, #4
	mov r2, #8
	bl sub_02045E1C
	b _021A45C0
_021A4590:
	mov r0, #7
	mov r5, #7
	bl sub_02044E74
	cmp r0, #0
	bgt _021A45AC
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r5, #0
	bl sub_02045E1C
	str r5, [r4, #0x7c]
	b _021A45C0
_021A45AC:
	add r0, r5, #0
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
	mov r0, #6
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
_021A45C0:
	ldr r0, [r4, #0x70]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _021A4652
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #3
	bhi _021A4652
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A45E2: ; jump table
	.short _021A4652 - _021A45E2 - 2 ; case 0
	.short _021A45EA - _021A45E2 - 2 ; case 1
	.short _021A4652 - _021A45E2 - 2 ; case 2
	.short _021A461E - _021A45E2 - 2 ; case 3
_021A45EA:
	add r1, sp, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	add r0, sp, #0
	mov r1, #2
	ldrsh r2, [r0, r1]
	cmp r2, #0x70
	bgt _021A4608
	mov r2, #0x70
	strh r2, [r0, #2]
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	b _021A460C
_021A4608:
	sub r2, #8
	strh r2, [r0, #2]
_021A460C:
	ldr r0, [r4, #0x70]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	mov r2, #1
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, pc}
_021A461E:
	add r1, sp, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xb0
	blt _021A463E
	mov r0, #0xb0
	strh r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
	b _021A4642
_021A463E:
	add r0, #8
	strh r0, [r1, #2]
_021A4642:
	ldr r0, [r4, #0x70]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	mov r2, #1
	bl Oam_SetSpritePosData
_021A4652:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a4540

	thumb_func_start sub_021A4654
sub_021A4654: ; 0x021A4654
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4654

	thumb_func_start ovy298_21a4658
ovy298_21a4658: ; 0x021A4658
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r2, #0
	bl sub_0219FD34
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #2
	bne _021A4676
	mov r4, #2
	mov r6, #1
	mov r7, #4
	b _021A4680
_021A4676:
	cmp r0, #1
	bne _021A4680
	mov r4, #4
	mov r6, #2
	mov r7, #2
_021A4680:
	cmp r0, #8
	beq _021A46D8
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A46D8
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	add r1, r4, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_0204C488
	add r4, r5, #0
	add r4, #0xc8
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r6]
	add r1, r7, #0
	bl sub_0204C488
	add r0, r5, #0
	mov r1, #8
	add r0, #0xe8
	strb r1, [r0]
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _021A46D0
	cmp r0, #5
	bne _021A46D8
_021A46D0:
	ldr r0, [sp]
	mov r1, #1
	bl ovy298_21a15e8
_021A46D8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a4658

	thumb_func_start ovy298_21a46dc
ovy298_21a46dc: ; 0x021A46DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	mov r0, #7
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204BC48
	str r0, [r4, #0x60]
	bl sub_02021154
	add r7, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r6, #0
	add r1, r7, #0
	bl Oam_LoadNCERFile
	str r0, [r4, #0x64]
	add r0, r6, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a46dc

	thumb_func_start ovy298_21a4724
ovy298_21a4724: ; 0x021A4724
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x64]
	bl sub_0204BE64
	ldr r0, [r4, #0x60]
	bl sub_0204BCD0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a4724

	thumb_func_start ovy298_21a4738
ovy298_21a4738: ; 0x021A4738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, sp, #0x30
	add r7, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	mov r0, #7
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldrb r0, [r4, #0x14]
	add r1, sp, #0x14
	ldr r2, [sp, #0x3c]
	strh r0, [r1]
	ldrb r0, [r4, #0x18]
	ldr r3, [sp, #0x40]
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	strb r0, [r1, #6]
	mov r0, #0
	strb r0, [r1, #7]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	bl sub_02020F94
	add r1, r0, #0
	ldrh r0, [r4]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	str r0, [r5]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, [sp, #0xc]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [r5]
	bl Oam_CreateSprite
	mov r1, #0
	add r4, r0, #0
	bl sub_0204C520
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_02021034
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_0204C378
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C318
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a4738

	thumb_func_start ovy298_21a47cc
ovy298_21a47cc: ; 0x021A47CC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0204C108
	add r0, r4, #0
	bl sub_0204B98C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a47cc

	thumb_func_start ovy298_21a47e0
ovy298_21a47e0: ; 0x021A47E0
	push {r4, r5, r6, lr}
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0219FD24
	add r6, r0, #0
	bl sub_020171F4
	bl sub_02017544
	add r1, r0, #0
	add r0, r6, #0
	mov r4, #0xff
	bl sub_02160EB4
	add r1, r0, #0
	ldr r0, _021A4818 ; =0x000004F8
	ldr r0, [r5, r0]
	bl sub_0219F73C
	ldr r1, _021A481C ; =0x0000FFFF
	cmp r0, r1
	beq _021A4812
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021A4812:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A4818: .word 0x000004F8
_021A481C: .word 0x0000FFFF
	thumb_func_end ovy298_21a47e0

	thumb_func_start ovy298_21a4820
ovy298_21a4820: ; 0x021A4820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl ovy298_21a47e0
	add r4, r0, #0
	cmp r4, #0xff
	beq _021A4856
	ldr r7, _021A4858 ; =0x000004F8
	add r1, r4, #0
	ldr r0, [r5, r7]
	mov r2, #2
	bl sub_0219F730
	add r6, sp, #0
	strh r0, [r6]
	ldr r0, [r5, r7]
	add r1, r4, #0
	mov r2, #3
	bl sub_0219F730
	add r5, #0xe4
	strh r0, [r6, #2]
	ldr r0, [r5]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
_021A4856:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4858: .word 0x000004F8
	thumb_func_end ovy298_21a4820

	thumb_func_start ovy298_21a485c
ovy298_21a485c: ; 0x021A485C
	push {r4, lr}
	add r4, r1, #0
	cmp r3, #0
	beq _021A4884
	bl ovy298_21a47e0
	cmp r0, #0xff
	beq _021A488E
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #6
	bl sub_0204C488
	add r4, #0xe4
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C124
	pop {r4, pc}
_021A4884:
	add r4, #0xe4
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
_021A488E:
	pop {r4, pc}
	thumb_func_end ovy298_21a485c

	thumb_func_start sub_021A4890
sub_021A4890: ; 0x021A4890
	add r1, #0xe4
	ldr r0, [r1]
	ldr r3, _021A4898 ; =sub_0204C138
	bx r3
	.align 2, 0
_021A4898: .word sub_0204C138
	thumb_func_end sub_021A4890

	thumb_func_start ovy298_21a489c
ovy298_21a489c: ; 0x021A489C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _021A4908 ; =0x021AC420
	add r3, sp, #0
	ldrh r6, [r4]
	add r5, r1, #0
	strh r6, [r3]
	ldrh r4, [r4, #2]
	strh r4, [r3, #2]
	add r3, r5, #0
	add r3, #0x85
	ldrb r3, [r3]
	cmp r3, #0xff
	bne _021A48C2
	bl ovy298_21a47e0
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
_021A48C2:
	add r0, r5, #0
	add r0, #0x85
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _021A48EA
	ldr r6, _021A490C ; =0x000004F8
	mov r2, #2
	ldr r0, [r5, r6]
	bl sub_0219F730
	add r4, sp, #0
	add r1, r5, #0
	strh r0, [r4]
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r5, r6]
	mov r2, #3
	bl sub_0219F730
	strh r0, [r4, #2]
_021A48EA:
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r5, #0xdc
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A4908: .word 0x021AC420
_021A490C: .word 0x000004F8
	thumb_func_end ovy298_21a489c

	thumb_func_start ovy298_21a4910
ovy298_21a4910: ; 0x021A4910
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl ovy298_21a47e0
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a489c
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a4910

	thumb_func_start ovy298_21a4930
ovy298_21a4930: ; 0x021A4930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r6, r1, #0
	mov r7, #0xff
	cmp r3, #0
	beq _021A494E
	lsl r0, r3, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A495C
_021A494E:
	lsl r0, r3, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A495C:
	blx sub_0208DA4C
	str r0, [sp, #0x84]
	add r0, sp, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A497C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A498A
_021A497C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A498A:
	blx sub_0208DA4C
	str r0, [sp, #0x88]
	mov r5, #0
	add r0, sp, #0x90
	add r1, sp, #0x84
	mov r2, #0
	str r5, [sp, #0x8c]
	bl sub_02050678
	ldr r0, _021A4BC0 ; =0x000004F8
	mov r4, #0x3f
	add r0, r6, r0
	str r0, [sp, #8]
	ldr r0, _021A4BC0 ; =0x000004F8
	lsl r4, r4, #0x18
	add r0, r6, r0
	str r0, [sp, #4]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0xc]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x14]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x10]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x18]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x20]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x1c]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x24]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x2c]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x28]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x30]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x38]
	ldr r0, _021A4BC0 ; =0x000004F8
	add r0, r6, r0
	str r0, [sp, #0x34]
_021A49F6:
	lsl r0, r5, #3
	add r1, r6, r0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021A4A06
	b _021A4BAE
_021A4A06:
	ldr r0, _021A4BC0 ; =0x000004F8
	add r1, r5, #0
	ldr r0, [r6, r0]
	mov r2, #6
	bl sub_0219F730
	cmp r0, #0
	beq _021A4A32
	ldr r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #6
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DF14
	b _021A4A4A
_021A4A32:
	ldr r0, [sp, #8]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #6
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208E144
_021A4A4A:
	blx sub_0208DA4C
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #7
	bl sub_0219F730
	cmp r0, #0
	beq _021A4A7C
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #7
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DF14
	b _021A4A94
_021A4A7C:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #7
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208E144
_021A4A94:
	blx sub_0208DA4C
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #8
	bl sub_0219F730
	cmp r0, #0
	beq _021A4ACA
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #8
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DF14
	b _021A4AE2
_021A4ACA:
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #8
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208E144
_021A4AE2:
	blx sub_0208DA4C
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #9
	bl sub_0219F730
	cmp r0, #0
	beq _021A4B14
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #9
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DF14
	b _021A4B2C
_021A4B14:
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #9
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208E144
_021A4B2C:
	blx sub_0208DA4C
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #0xa
	bl sub_0219F730
	cmp r0, #0
	beq _021A4B62
	ldr r0, [sp, #0x34]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #0xa
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DF14
	b _021A4B7A
_021A4B62:
	ldr r0, [sp, #0x38]
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #0xa
	bl sub_0219F730
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208E144
_021A4B7A:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, sp, #0x68
	add r1, sp, #0x5c
	add r2, sp, #0x50
	bl sub_02050760
	add r0, sp, #0x68
	add r1, sp, #0x90
	add r2, sp, #0x3c
	bl sub_02050690
	cmp r0, #0
	beq _021A4BAE
	cmp r7, #0xff
	bne _021A4BA2
	ldr r0, [sp, #0x4c]
	str r0, [sp]
	b _021A4BAC
_021A4BA2:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp]
	cmp r0, r1
	ble _021A4BAE
	str r1, [sp]
_021A4BAC:
	add r7, r5, #0
_021A4BAE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x55
	bhs _021A4BBA
	b _021A49F6
_021A4BBA:
	add r0, r7, #0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4BC0: .word 0x000004F8
	thumb_func_end ovy298_21a4930

	thumb_func_start ovy298_21a4bc4
ovy298_21a4bc4: ; 0x021A4BC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r1, #0
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021A4BDC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4BDC:
	ldr r7, _021A4C1C ; =0x000004F8
	add r1, r4, #0
	ldr r0, [r5, r7]
	mov r2, #4
	bl sub_0219F730
	add r6, r0, #0
	ldr r0, [r5, r7]
	add r1, r4, #0
	mov r2, #5
	bl sub_0219F730
	add r1, sp, #0x18
	ldrb r2, [r1, #4]
	sub r2, r0, r2
	ldrb r0, [r1]
	sub r0, r6, r0
	add r1, r0, #0
	mul r1, r0
	add r0, r2, #0
	mul r0, r2
	add r1, r1, r0
	cmp r1, #0x90
	bhs _021A4C18
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021A4C14
	str r1, [r0]
_021A4C14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4C18:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4C1C: .word 0x000004F8
	thumb_func_end ovy298_21a4bc4

	thumb_func_start ovy298_21a4c20
ovy298_21a4c20: ; 0x021A4C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r3, [sp, #0x18]
	ldr r7, [sp, #0x38]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r4, #0xff
	mov r5, #0
_021A4C32:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r3, r5, #0
	bl ovy298_21a4bc4
	cmp r0, #0
	beq _021A4C60
	cmp r4, #0xff
	bne _021A4C56
	add r4, r5, #0
	ldr r6, [sp, #0x1c]
	b _021A4C60
_021A4C56:
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	bls _021A4C60
	add r4, r5, #0
	add r6, r0, #0
_021A4C60:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x55
	blo _021A4C32
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a4c20

	thumb_func_start ovy298_21a4c70
ovy298_21a4c70: ; 0x021A4C70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r2, [sp, #4]
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0219FD34
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl sub_0219FD24
	bl sub_0200D190
	add r4, r0, #0
	mov r0, #0x57
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A4CA2
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #8
	beq _021A4CA4
_021A4CA2:
	b _021A5028
_021A4CA4:
	ldr r0, [sp, #8]
	bl ovy298_21a2188
	cmp r0, #1
	bne _021A4CB8
	add r0, r4, #0
	bl sub_0200D1C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A4CB8:
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _021A4CC8
	cmp r0, #5
	bne _021A4CC4
	b _021A4E90
_021A4CC4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A4CC8:
	mov r4, #0
	mov r6, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021A4CDC
	add r6, r1, #0
	add r4, r1, #0
	b _021A4D6A
_021A4CDC:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021A4D6A
	bl sub_0203DF44
	mov r1, #1
	add r1, #0xff
	tst r0, r1
	beq _021A4D2A
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #4
	blo _021A4D10
	add r0, r5, #0
	add r0, #0x84
	strb r4, [r0]
_021A4D10:
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	mov r4, #1
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	b _021A4D6A
_021A4D2A:
	bl sub_0203DF44
	mov r1, #1
	lsl r1, r1, #9
	tst r0, r1
	beq _021A4D6A
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A4D44
	mov r1, #3
	b _021A4D4C
_021A4D44:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	sub r1, r0, #1
_021A4D4C:
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	mov r4, #1
_021A4D6A:
	cmp r4, #0
	beq _021A4D80
	mov r0, #0
	bl sub_0203D564
	cmp r6, #0
	beq _021A4D80
	add r1, r5, #0
	add r1, #0x88
	mov r0, #0
	str r0, [r1]
_021A4D80:
	cmp r4, #0
	bne _021A4E58
	add r0, sp, #0x18
	add r1, sp, #0x14
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A4E32
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A4DA2
	ldr r0, [sp, #0x14]
	cmp r0, #0xa8
	bhs _021A4E32
	b _021A4E2E
_021A4DA2:
	ldr r1, [sp, #0x18]
	cmp r1, #0x88
	blo _021A4DEA
	cmp r1, #0xa0
	bhs _021A4DEA
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	bhs _021A4DEA
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #4
	blo _021A4DD2
	add r0, r5, #0
	mov r1, #0
	add r0, #0x84
	strb r1, [r0]
_021A4DD2:
	mov r4, #1
	ldr r2, [sp, #4]
	str r4, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
_021A4DDE:
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	b _021A4E32
_021A4DEA:
	cmp r1, #0x18
	bhs _021A4E1E
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	bhs _021A4E1E
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A4E02
	mov r1, #3
	b _021A4E0A
_021A4E02:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	sub r1, r0, #1
_021A4E0A:
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	mov r4, #1
	str r4, [sp]
	add r0, r7, #0
	add r1, r5, #0
	ldr r2, [sp, #4]
	mov r3, #0
	b _021A4DDE
_021A4E1E:
	cmp r1, #0xa0
	bhs _021A4E28
	ldr r0, [sp, #0x14]
	cmp r0, #0x18
	blo _021A4E32
_021A4E28:
	ldr r0, [sp, #0x14]
	cmp r0, #0xa8
	bhs _021A4E32
_021A4E2E:
	mov r6, #1
	mov r4, #1
_021A4E32:
	cmp r4, #0
	beq _021A4E58
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
	cmp r6, #0
	beq _021A4E58
	add r0, r5, #0
	add r0, #0x88
	str r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0x8c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x14]
	add r0, #0x8d
	strb r1, [r0]
_021A4E58:
	cmp r6, #0
	beq _021A4E70
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A4E72
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _021A4E72
_021A4E70:
	b _021A5028
_021A4E72:
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	bl ovy298_21a55dc
	ldr r0, _021A4FF8 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [sp, #8]
	mov r1, #0
	bl ovy298_21a15e8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A4E90:
	mov r6, #0
	mov r4, #1
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A4EAC
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #4
	add r6, r4, #0
	str r1, [r5, r0]
	mov r4, #0
	b _021A4F3C
_021A4EAC:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021A4F3C
	bl sub_0203DF44
	mov r1, #2
	add r1, #0xfe
	tst r0, r1
	beq _021A4EFC
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #4
	blo _021A4EE2
	add r1, r5, #0
	add r1, #0x84
	mov r0, #0
	strb r0, [r1]
_021A4EE2:
	ldr r2, [sp, #4]
	mov r4, #0
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	str r4, [sp]
	mov r6, #1
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	b _021A4F3C
_021A4EFC:
	bl sub_0203DF44
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _021A4F3C
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A4F16
	mov r1, #3
	b _021A4F1E
_021A4F16:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	sub r1, r0, #1
_021A4F1E:
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	mov r4, #0
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0
	str r4, [sp]
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	mov r6, #1
_021A4F3C:
	cmp r6, #0
	beq _021A4F46
	mov r0, #0
	bl sub_0203D564
_021A4F46:
	cmp r6, #0
	bne _021A501A
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A5010
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A4F68
	ldr r0, [sp, #0xc]
	cmp r0, #0xa8
	blo _021A5010
	b _021A500E
_021A4F68:
	cmp r0, #1
	bne _021A5010
	ldr r1, [sp, #0x10]
	cmp r1, #0x88
	blo _021A4FB4
	cmp r1, #0xa0
	bhs _021A4FB4
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	bhs _021A4FB4
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #4
	blo _021A4F9C
	add r0, r5, #0
	mov r1, #0
	add r0, #0x84
	strb r1, [r0]
_021A4F9C:
	ldr r2, [sp, #4]
	mov r6, #1
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	str r6, [sp]
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	b _021A500E
_021A4FB4:
	cmp r1, #0x18
	bhs _021A4FFC
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	bhs _021A4FFC
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A4FCC
	mov r1, #3
	b _021A4FD4
_021A4FCC:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	sub r1, r0, #1
_021A4FD4:
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	mov r6, #1
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0
	str r6, [sp]
	mov r4, #0
	bl ovy298_21a5afc
	ldr r0, _021A4FF4 ; =0x0000054A
	bl GFL_SndSEPlay
	b _021A5010
	.align 2, 0
_021A4FF4: .word 0x0000054A
_021A4FF8: .word 0x0000054C
_021A4FFC:
	cmp r1, #0xa0
	bhs _021A5008
	ldr r0, [sp, #0xc]
	cmp r0, #0x18
	bhs _021A5008
	b _021A500E
_021A5008:
	ldr r0, [sp, #0xc]
	cmp r0, #0xa8
	blo _021A5010
_021A500E:
	mov r4, #0
_021A5010:
	cmp r6, #0
	beq _021A501A
	mov r0, #1
	bl sub_0203D564
_021A501A:
	cmp r4, #0
	beq _021A5028
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a502c
_021A5028:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a4c70

	thumb_func_start ovy298_21a502c
ovy298_21a502c: ; 0x021A502C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r6, r2, #0
	cmp r0, #0
	bne _021A5042
	b _021A53EA
_021A5042:
	bl sub_0203D554
	cmp r0, #0
	bne _021A506A
	add r0, sp, #0x24
	add r1, sp, #0x20
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A509A
	mov r0, #1
	bl sub_0203D564
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	b _021A509A
_021A506A:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A509A
	mov r0, #0
	bl sub_0203D564
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a489c
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5a20
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5fac
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021A509A:
	bl sub_0203D554
	cmp r0, #0
	beq _021A50A4
	b _021A5386
_021A50A4:
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	mov r4, #0
	add r1, sp, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	add r0, sp, #0x4c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	add r0, sp, #0x40
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r2, #0
	bl Oam_GetSpritePosData
	bl sub_0203DF20
	mov r1, #0x10
	and r1, r0
	bne _021A50EE
	mov r2, #0x20
	tst r2, r0
	bne _021A50EE
	mov r2, #0x40
	tst r2, r0
	bne _021A50EE
	mov r2, #0x80
	tst r2, r0
	beq _021A512A
_021A50EE:
	mov r4, #1
	cmp r1, #0
	beq _021A50FC
	ldr r2, [sp, #0x4c]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #0x4c]
_021A50FC:
	mov r1, #0x20
	add r2, r0, #0
	tst r2, r1
	beq _021A510C
	ldr r2, [sp, #0x4c]
	lsl r1, r1, #7
	sub r1, r2, r1
	str r1, [sp, #0x4c]
_021A510C:
	mov r1, #0x40
	add r2, r0, #0
	tst r2, r1
	beq _021A511C
	ldr r2, [sp, #0x50]
	lsl r1, r1, #6
	sub r1, r2, r1
	str r1, [sp, #0x50]
_021A511C:
	mov r1, #0x80
	tst r0, r1
	beq _021A512A
	ldr r2, [sp, #0x50]
	lsl r0, r1, #5
	add r0, r2, r0
	str r0, [sp, #0x50]
_021A512A:
	add r7, sp, #0x18
	mov r0, #6
	ldrsh r0, [r7, r0]
	mov r3, #4
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrsh r3, [r7, r3]
	ldr r0, [sp, #4]
	add r2, r6, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy298_21a4c20
	str r0, [sp, #0x14]
	cmp r0, #0xff
	bne _021A5150
	b _021A526E
_021A5150:
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _021A53F0 ; =0x000004F8
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r2, #4
	bl sub_0219F730
	strh r0, [r7]
	ldr r0, _021A53F0 ; =0x000004F8
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r2, #5
	bl sub_0219F730
	strh r0, [r7, #2]
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021A518A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A5198
_021A518A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A5198:
	blx sub_0208DA4C
	str r0, [sp, #0x34]
	add r7, sp, #0x18
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021A51BA
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A51C8
_021A51BA:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A51C8:
	blx sub_0208DA4C
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x3c]
	mov r0, #4
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021A51EC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A51FA
_021A51EC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A51FA:
	blx sub_0208DA4C
	str r0, [sp, #0x28]
	mov r0, #6
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021A521A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A5228
_021A521A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A5228:
	blx sub_0208DA4C
	str r0, [sp, #0x2c]
	mov r0, #0
	add r7, sp, #0x40
	str r0, [sp, #0x30]
	add r0, sp, #0x34
	add r1, sp, #0x28
	add r2, r7, #0
	bl VEC_Subtract
	add r0, r7, #0
	blx VEC_Mag
	ldr r1, _021A53F4 ; =0x00001BB6
	cmp r0, r1
	bge _021A524E
	mov r0, #1
	str r0, [sp, #8]
_021A524E:
	add r0, sp, #0x40
	blx VEC_Mag
	mov r7, #1
	lsl r7, r7, #0xc
	cmp r0, r7
	ble _021A526E
	add r0, sp, #0x40
	add r1, r0, #0
	blx VEC_Normalize
	add r0, sp, #0x40
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02050784
_021A526E:
	add r7, sp, #0x18
	cmp r4, #0
	bne _021A527C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021A527C
	b _021A53EA
_021A527C:
	cmp r4, #0
	bne _021A5294
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021A5294
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A5294
	ldrh r0, [r7]
	strh r0, [r7, #4]
	ldrh r0, [r7, #2]
	b _021A52FA
_021A5294:
	add r0, sp, #0x4c
	add r1, r0, #0
	blx VEC_Normalize
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x40]
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r2, r0
	ldr r3, [sp, #0x50]
	ldr r0, [sp, #0x44]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, r0, r2
	cmp r1, #0
	ble _021A52BE
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _021A52BE
	b _021A52C8
_021A52BE:
	ldr r0, _021A53F8 ; =0xFFFFF000
	cmp r1, r0
	ble _021A52CA
	cmp r1, #0
	bge _021A52CA
_021A52C8:
	add r1, r0, #0
_021A52CA:
	cmp r2, #0
	ble _021A52D8
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r2, r0
	bge _021A52D8
	b _021A52E2
_021A52D8:
	ldr r0, _021A53F8 ; =0xFFFFF000
	cmp r2, r0
	ble _021A52E4
	cmp r2, #0
	bge _021A52E4
_021A52E2:
	add r2, r0, #0
_021A52E4:
	mov r0, #4
	ldrsh r0, [r7, r0]
	lsl r1, r1, #4
	asr r1, r1, #0x10
	add r0, r0, r1
	strh r0, [r7, #4]
	mov r0, #6
	ldrsh r1, [r7, r0]
	lsl r0, r2, #4
	asr r0, r0, #0x10
	add r0, r1, r0
_021A52FA:
	strh r0, [r7, #6]
	mov r0, #4
	ldrsh r0, [r7, r0]
	cmp r0, #0xf8
	ble _021A5308
	mov r0, #0xf8
	b _021A530E
_021A5308:
	cmp r0, #0
	bge _021A530E
	mov r0, #0
_021A530E:
	strh r0, [r7, #4]
	mov r0, #6
	ldrsh r0, [r7, r0]
	cmp r0, #0xa8
	ble _021A531C
	mov r0, #0xa8
	b _021A5322
_021A531C:
	cmp r0, #8
	bge _021A5322
	mov r0, #8
_021A5322:
	strh r0, [r7, #6]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, sp, #0x1c
	mov r2, #0
	bl Oam_SetSpritePosData
	mov r0, #6
	ldrsh r0, [r7, r0]
	mov r3, #4
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrsh r3, [r7, r3]
	ldr r0, [sp, #4]
	add r2, r6, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy298_21a4930
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x85
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _021A53EA
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5a20
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5fac
	add r5, #0x85
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021A53EA
	ldr r0, _021A53FC ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021A5386:
	add r0, sp, #0x24
	add r1, sp, #0x20
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A53EA
	add r0, r5, #0
	add r0, #0x85
	ldrb r4, [r0]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #4]
	lsl r3, r3, #0x18
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ovy298_21a4930
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5a20
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a5fac
	add r5, #0x85
	ldrb r0, [r5]
	cmp r4, r0
	bne _021A53E0
	add r0, r6, #0
	bl sub_0219FD34
	bl sub_021A2178
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021A53E0:
	cmp r0, #0xff
	beq _021A53EA
	ldr r0, _021A5400 ; =0x0000054C
	bl GFL_SndSEPlay
_021A53EA:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A53F0: .word 0x000004F8
_021A53F4: .word 0x00001BB6
_021A53F8: .word 0xFFFFF000
_021A53FC: .word 0x00000548
_021A5400: .word 0x0000054C
	thumb_func_end ovy298_21a502c

	thumb_func_start ovy298_21a5404
ovy298_21a5404: ; 0x021A5404
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0x85
	ldrb r1, [r1]
	ldr r2, _021A54C0 ; =0x000004FC
	add r3, r0, r1
	ldrb r2, [r3, r2]
	add r3, r0, #0
	add r3, #0x9c
	ldr r3, [r3]
	cmp r3, #1
	bne _021A54BA
	cmp r1, #0xff
	beq _021A54BA
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #0
	bne _021A5430
	mov r1, #0
	b _021A5436
_021A5430:
	add r1, r0, #0
	add r1, #0x84
	ldrb r1, [r1]
_021A5436:
	add r3, r0, #0
	add r3, #0xa0
	ldr r5, [r3]
	mov r3, #0x56
	mul r3, r1
	add r1, r5, r3
	add r1, r1, r2
	ldrb r5, [r1, #2]
	cmp r5, #0
	beq _021A54BA
	add r1, r4, #0
	bl ovy298_21a62ac
	cmp r0, #1
	bne _021A54BA
	add r0, r4, #0
	bl sub_0219FD24
	add r6, r0, #0
	bl sub_02017934
	bl sub_02010CB8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02017394
	mov r1, #7
	add r6, r0, #0
	tst r1, r5
	beq _021A5480
	add r0, r4, #0
	mov r1, #0
	bl sub_02010D90
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A5480:
	mov r1, #0x18
	tst r1, r5
	beq _021A549C
	ldr r1, _021A54C4 ; =0x00000987
	bl sub_020191AC
	cmp r0, #1
	bne _021A549C
	add r0, r4, #0
	mov r1, #1
	bl sub_02010D90
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A549C:
	mov r0, #0x60
	tst r0, r5
	beq _021A54BA
	ldr r1, _021A54C8 ; =0x00000985
	add r0, r6, #0
	bl sub_020191AC
	cmp r0, #1
	bne _021A54BA
	add r0, r4, #0
	mov r1, #2
	bl sub_02010D90
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A54BA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A54C0: .word 0x000004FC
_021A54C4: .word 0x00000987
_021A54C8: .word 0x00000985
	thumb_func_end ovy298_21a5404

	thumb_func_start ovy298_21a54cc
ovy298_21a54cc: ; 0x021A54CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r3, [r4, #0x78]
	add r5, r0, #0
	add r6, r2, #0
	cmp r3, #8
	bhi _021A55D8
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021A54E6: ; jump table
	.short _021A55D8 - _021A54E6 - 2 ; case 0
	.short _021A54F8 - _021A54E6 - 2 ; case 1
	.short _021A5500 - _021A54E6 - 2 ; case 2
	.short _021A5508 - _021A54E6 - 2 ; case 3
	.short _021A554C - _021A54E6 - 2 ; case 4
	.short _021A55D8 - _021A54E6 - 2 ; case 5
	.short _021A5584 - _021A54E6 - 2 ; case 6
	.short _021A558C - _021A54E6 - 2 ; case 7
	.short _021A5594 - _021A54E6 - 2 ; case 8
_021A54F8:
	mov r3, #2
	bl ovy298_21a55dc
	pop {r4, r5, r6, pc}
_021A5500:
	mov r3, #5
	bl ovy298_21a55dc
	pop {r4, r5, r6, pc}
_021A5508:
	add r3, r4, #0
	add r3, #0x90
	ldr r3, [r3]
	cmp r3, #1
	beq _021A551C
	cmp r3, #2
	beq _021A5528
	cmp r3, #3
	beq _021A5534
	pop {r4, r5, r6, pc}
_021A551C:
	bl ovy298_21a5ccc
	mov r0, #2
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A5528:
	bl ovy298_21a5d7c
	mov r0, #3
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A5534:
	bl ovy298_21a5dac
	add r0, r4, #0
	mov r3, #0
	add r0, #0x90
	str r3, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a55dc
	pop {r4, r5, r6, pc}
_021A554C:
	add r3, r4, #0
	add r3, #0x90
	ldr r3, [r3]
	cmp r3, #1
	beq _021A5560
	cmp r3, #2
	beq _021A556C
	cmp r3, #3
	beq _021A5578
	pop {r4, r5, r6, pc}
_021A5560:
	bl ovy298_21a5f44
	mov r0, #2
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A556C:
	bl sub_021A5F9C
	mov r0, #3
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A5578:
	bl sub_021A5FA8
	mov r0, #0
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A5584:
	mov r3, #7
	bl ovy298_21a55dc
	pop {r4, r5, r6, pc}
_021A558C:
	mov r3, #0
	bl ovy298_21a55dc
	pop {r4, r5, r6, pc}
_021A5594:
	add r3, r4, #0
	add r3, #0x90
	ldr r3, [r3]
	cmp r3, #1
	beq _021A55A8
	cmp r3, #2
	beq _021A55B4
	cmp r3, #3
	beq _021A55C0
	pop {r4, r5, r6, pc}
_021A55A8:
	bl ovy298_21a5ccc
	mov r0, #2
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A55B4:
	bl ovy298_21a5d7c
	mov r0, #3
	add r4, #0x90
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A55C0:
	bl ovy298_21a5dac
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #5
	bl ovy298_21a55dc
_021A55D8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a54cc

	thumb_func_start ovy298_21a55dc
ovy298_21a55dc: ; 0x021A55DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	add r5, r3, #0
	bl sub_0219FD34
	ldr r1, [r4, #0x78]
	str r0, [sp, #4]
	cmp r1, #8
	bhi _021A563C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A5602: ; jump table
	.short _021A5614 - _021A5602 - 2 ; case 0
	.short _021A562C - _021A5602 - 2 ; case 1
	.short _021A5638 - _021A5602 - 2 ; case 2
	.short _021A56DE - _021A5602 - 2 ; case 3
	.short _021A57BA - _021A5602 - 2 ; case 4
	.short _021A5718 - _021A5602 - 2 ; case 5
	.short _021A5722 - _021A5602 - 2 ; case 6
	.short _021A5740 - _021A5602 - 2 ; case 7
	.short _021A5796 - _021A5602 - 2 ; case 8
_021A5614:
	cmp r5, #1
	beq _021A563C
	cmp r5, #3
	bne _021A5626
_021A561C:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x90
	str r1, [r0]
	b _021A57BA
_021A5626:
	cmp r5, #4
	bne _021A563C
	b _021A561C
_021A562C:
	cmp r5, #2
	bne _021A563C
	mov r1, #0
	bl sub_021A1550
	b _021A57BA
_021A5638:
	cmp r5, #5
	beq _021A563E
_021A563C:
	b _021A57BA
_021A563E:
	add r1, r4, #0
	mov r0, #1
	add r1, #0x80
	str r0, [r4, #0x7c]
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A56B0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _021A5668
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a4910
	b _021A569C
_021A5668:
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x8c
	str r0, [sp]
	ldrb r3, [r3]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a4930
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021A569C
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
_021A569C:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a5a20
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a5fac
_021A56B0:
	add r0, r6, #0
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A56BE
	mov r3, #0
_021A56BE:
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, #1
	bl ovy298_21a1454
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x85
	strb r1, [r0]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy298_21a6320
	b _021A57BA
_021A56DE:
	cmp r5, #0
	bne _021A57BA
	ldr r2, _021A57C0 ; =0x00000574
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _021A5702
	mov r3, #1
	add r1, r2, #4
	str r3, [r4, r1]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021A5702
	mov r1, #0
	str r1, [r4, r2]
	bl sub_021A1544
_021A5702:
	add r0, r4, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #8
	bne _021A57BA
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A57BA
	b _021A57B2
_021A5718:
	cmp r5, #6
	beq _021A57BA
	cmp r5, #8
	bne _021A57BA
	b _021A561C
_021A5722:
	cmp r5, #7
	bne _021A57BA
	mov r1, #0
	bl sub_021A1550
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy298_21a6320
	add r0, r4, #0
	bl ovy298_21a5f20
	b _021A57BA
_021A5740:
	cmp r5, #0
	bne _021A57BA
	add r0, r4, #0
	mov r1, #3
	add r0, #0x80
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r4, #0x7c]
	ldr r0, [r0]
	mov r1, #0
	mov r7, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	bl sub_0219FD3C
	cmp r0, #1
	bls _021A5774
	mov r7, #1
_021A5774:
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #1
	add r3, r7, #0
	bl ovy298_21a1454
	add r0, r6, #0
	bl sub_0219FD24
	mov r1, #0x15
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl ovy298_21a15b4
	b _021A57BA
_021A5796:
	cmp r5, #5
	bne _021A57BA
	bl sub_021A1544
	add r0, r4, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #8
	bne _021A57BA
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A57BA
_021A57B2:
	ldr r0, [sp, #4]
	mov r1, #1
	bl ovy298_21a15e8
_021A57BA:
	str r5, [r4, #0x78]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A57C0: .word 0x00000574
	thumb_func_end ovy298_21a55dc

	thumb_func_start ovy298_21a57c4
ovy298_21a57c4: ; 0x021A57C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x98
	ldr r7, [r0]
	add r0, r2, #0
	str r2, [sp, #0x1c]
	bl sub_0219FD40
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl ovy298_21a5c30
	ldr r2, _021A59F8 ; =0x00000554
	ldrh r1, [r5]
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl ovy298_21a5c14
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	ldrb r0, [r0]
	mov r1, #1
	cmp r0, #0
	beq _021A5802
	mov r1, #0
_021A5802:
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0]
	cmp r1, #0
	bne _021A581E
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _021A581C
	mov r1, #0
_021A581C:
	b _021A583A
_021A581E:
	add r1, r4, #0
	add r1, #0x84
	add r0, r4, #0
	ldrb r2, [r1]
	add r0, #0xa0
	mov r1, #0x56
	ldr r0, [r0]
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	mov r1, #1
	cmp r0, #0
	beq _021A583A
	mov r1, #0
_021A583A:
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
	ldr r0, [r4, #0x70]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _021A5852
	mov r1, #0
	bl sub_0204C124
_021A5852:
	ldr r0, [r4, #0x70]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x70]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	cmp r1, #0
	beq _021A5880
	beq _021A5876
	ldr r0, [r0, #0x58]
	bl ovy298_21a47cc
_021A5876:
	ldr r1, [r4, #0x70]
	mov r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x68]
_021A5880:
	ldr r0, [sp, #0x1c]
	bl sub_0219FD24
	bl sub_0200D190
	add r1, sp, #0x2c
	str r1, [sp]
	ldrh r1, [r5]
	add r2, sp, #0x34
	add r3, sp, #0x30
	str r1, [sp, #4]
	add r1, r6, #0
	bl sub_0200D3C8
	ldrh r0, [r5]
	add r1, r4, #0
	add r1, #0x58
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x38
	str r0, [sp, #0x14]
	mov r0, #0xb0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r4, #0x60]
	ldr r3, [r4]
	bl ovy298_21a4738
	ldr r1, [r4, #0x70]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x68]
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	bl sub_02021C44
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x20]
	ldr r0, [r4, #0xc]
	mov r1, #0xbe
	bl sub_0204898C
	str r0, [sp, #0x24]
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	mov r1, #0
	add r2, r6, #0
	bl sub_020243D0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #5
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	bl sub_02021C7C
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	mov r6, #1
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	str r6, [r4, #0x28]
	bl ovy298_21a42f4
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A59AA
	cmp r7, #1
	bne _021A59F2
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x44]
	bl sub_02021C44
	ldr r0, [r4, #0x1c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x1c]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0xcc
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A59AA:
	cmp r7, #0
	bne _021A59F2
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy298_21a5c3c
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	mov r1, #2
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #4
	bl sub_0204C488
	add r4, #0xcc
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0204C124
_021A59F2:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A59F8: .word 0x00000554
	thumb_func_end ovy298_21a57c4

	thumb_func_start ovy298_21a59fc
ovy298_21a59fc: ; 0x021A59FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy298_21a5cb0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a5fac
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a59fc

	thumb_func_start ovy298_21a5a14
ovy298_21a5a14: ; 0x021A5A14
	push {r3, lr}
	mov r3, #4
	bl ovy298_21a55dc
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a5a14

	thumb_func_start ovy298_21a5a20
ovy298_21a5a20: ; 0x021A5A20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x40]
	add r7, r2, #0
	bl sub_02021C44
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0x85
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _021A5AE4
	ldr r0, _021A5AF8 ; =0x000004F8
	mov r2, #0
	ldr r0, [r5, r0]
	bl sub_0219F730
	bl sub_02018C80
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x40]
	mov r3, #1
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r5, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy298_21a42f4
	add r1, r5, #0
	ldr r0, _021A5AF8 ; =0x000004F8
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	mov r2, #2
	bl sub_0219F730
	add r4, sp, #0xc
	add r1, r5, #0
	strh r0, [r4]
	ldr r0, _021A5AF8 ; =0x000004F8
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	mov r2, #3
	bl sub_0219F730
	strh r0, [r4, #2]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #5
	bl sub_0204C488
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, sp, #0xc
	mov r2, #0
	bl Oam_SetSpritePosData
	add r5, #0xe0
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A5AE4:
	ldr r0, [r5, #0x18]
	bl BmpWin_FlushChar
	add r5, #0xe0
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5AF8: .word 0x000004F8
	thumb_func_end ovy298_21a5a20

	thumb_func_start ovy298_21a5afc
ovy298_21a5afc: ; 0x021A5AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	add r7, r3, #0
	bl sub_0219FD34
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A5B2C
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _021A5B2A
	mov r1, #0
_021A5B2A:
	b _021A5B48
_021A5B2C:
	add r1, r5, #0
	add r1, #0x84
	add r0, r5, #0
	ldrb r2, [r1]
	add r0, #0xa0
	mov r1, #0x56
	ldr r0, [r0]
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	mov r1, #1
	cmp r0, #0
	beq _021A5B48
	mov r1, #0
_021A5B48:
	add r0, r5, #0
	add r0, #0x9c
	str r1, [r0]
	mov r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x44]
	bl sub_02021C44
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a5c3c
	cmp r7, #0
	beq _021A5B80
	add r0, r5, #0
	mov r1, #2
	add r0, #0xe8
	strb r1, [r0]
	mov r1, #3
	mov r0, #1
	b _021A5B8C
_021A5B80:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xe8
	strb r1, [r0]
	mov r1, #5
	mov r0, #2
_021A5B8C:
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_0204C488
	ldr r0, [sp]
	add r7, r5, #0
	lsl r0, r0, #2
	add r7, #0xc8
	str r0, [sp, #8]
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r7, r0]
	bl sub_0204C4D4
	ldr r0, [sp, #4]
	mov r1, #0
	bl ovy298_21a15e8
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021A5BD8
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	b _021A5BFC
_021A5BD8:
	ldr r0, [r5, #0x78]
	cmp r0, #5
	bne _021A5BFC
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A5BFC
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a489c
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a5a20
_021A5BFC:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a5cb0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a5fac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a5afc

	thumb_func_start ovy298_21a5c14
ovy298_21a5c14: ; 0x021A5C14
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r3, r1, #0
	str r0, [sp]
	add r0, r2, #0
	sub r1, r4, #1
	mov r2, #0
	bl sub_0204B610
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a5c14

	thumb_func_start ovy298_21a5c30
ovy298_21a5c30: ; 0x021A5C30
	push {r3, lr}
	cmp r0, #0
	beq _021A5C3A
	bl GFL_HeapFree
_021A5C3A:
	pop {r3, pc}
	thumb_func_end ovy298_21a5c30

	thumb_func_start ovy298_21a5c3c
ovy298_21a5c3c: ; 0x021A5C3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, #0x84
	ldrb r1, [r1]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r1, #0xbf
	str r2, [sp, #0x10]
	bl sub_0204898C
	ldr r1, [r5, #4]
	mov r2, #0
	add r6, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	sub r3, r7, r4
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	mov r3, #1
	mov r4, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	mov r3, #2
	str r4, [r5, #0x30]
	bl ovy298_21a42f4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a5c3c

	thumb_func_start ovy298_21a5cb0
ovy298_21a5cb0: ; 0x021A5CB0
	push {r3, lr}
	ldr r3, [r1, #0x78]
	cmp r3, #0
	bne _021A5CC0
	mov r3, #3
	bl ovy298_21a55dc
	pop {r3, pc}
_021A5CC0:
	cmp r3, #5
	bne _021A5CCA
	mov r3, #8
	bl ovy298_21a55dc
_021A5CCA:
	pop {r3, pc}
	thumb_func_end ovy298_21a5cb0

	thumb_func_start ovy298_21a5ccc
ovy298_21a5ccc: ; 0x021A5CCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	str r2, [sp]
	bl sub_0204C138
	cmp r0, #0
	beq _021A5D14
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A5D7A
	mov r0, #0
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x48]
	bl sub_02021C44
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	bl BmpWin_FlushChar
	add r5, #0xd4
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A5D14:
	mov r4, #0
	add r6, r4, #0
_021A5D18:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A5D18
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _021A5D7A
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r6, #0
	bl ovy298_21a485c
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x85
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a5a20
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a5fac
_021A5D7A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a5ccc

	thumb_func_start ovy298_21a5d7c
ovy298_21a5d7c: ; 0x021A5D7C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	bne _021A5DA4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, _021A5DA8 ; =0x0000055C
	bne _021A5DA0
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_021A5DA0:
	mov r1, #2
	strb r1, [r4, r0]
_021A5DA4:
	pop {r4, pc}
	nop
_021A5DA8: .word 0x0000055C
	thumb_func_end ovy298_21a5d7c

	thumb_func_start ovy298_21a5dac
ovy298_21a5dac: ; 0x021A5DAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	str r2, [sp, #0x10]
	bl sub_0204C138
	add r1, r5, #0
	add r1, #0x9c
	ldr r1, [r1]
	cmp r1, #0
	bne _021A5E3E
	cmp r0, #0
	bne _021A5EB4
	ldr r0, [r5, #0xc]
	mov r1, #0x80
	bl sub_0204898C
	ldr r1, [r5, #4]
	mov r2, #0
	add r6, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	sub r3, r7, r4
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	mov r3, #1
	mov r4, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	mov r3, #3
	str r4, [r5, #0x34]
	bl ovy298_21a42f4
	add r5, #0xd4
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021A5E3E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A5E4C
	mov r0, #0
	b _021A5E52
_021A5E4C:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
_021A5E52:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x56
	add r6, r1, #0
	ldr r7, _021A5EB8 ; =0x000004FC
	mov r4, #0
	mul r6, r0
_021A5E60:
	add r0, r5, #0
	add r0, #0xa0
	ldr r2, [r0]
	add r0, r5, r4
	ldrb r1, [r0, r7]
	add r0, r6, r2
	add r0, r1, r0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021A5E90
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _021A5E90
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
_021A5E90:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A5E60
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl sub_021A4890
	cmp r0, #0
	bne _021A5EB4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	mov r3, #1
	bl ovy298_21a485c
_021A5EB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5EB8: .word 0x000004FC
	thumb_func_end ovy298_21a5dac

	thumb_func_start ovy298_21a5ebc
ovy298_21a5ebc: ; 0x021A5EBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0xd2
	str r2, [sp, #0xc]
	add r6, r3, #0
	bl sub_0204898C
	add r4, r0, #0
	cmp r6, #1
	ldr r0, [r5, #0x24]
	bne _021A5EEA
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	b _021A5EFA
_021A5EEA:
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	mov r0, #0x82
	lsl r0, r0, #4
_021A5EFA:
	str r0, [sp, #8]
	ldr r0, [r5, #0x4c]
	mov r2, #0
	mov r3, #5
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r5, #0x38]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #4
	bl ovy298_21a42f4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a5ebc

	thumb_func_start ovy298_21a5f20
ovy298_21a5f20: ; 0x021A5F20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_02021C44
	ldr r0, [r4, #0x24]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x24]
	bl BmpWin_FlushChar
	mov r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a5f20

	thumb_func_start ovy298_21a5f44
ovy298_21a5f44: ; 0x021A5F44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	beq _021A5F7E
	mov r0, #0
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x48]
	bl sub_02021C44
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	bl BmpWin_FlushChar
	add r5, #0xd4
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
_021A5F7E:
	mov r4, #0
	add r6, r4, #0
_021A5F82:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A5F82
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a5f44

	thumb_func_start sub_021A5F9C
sub_021A5F9C: ; 0x021A5F9C
	ldr r0, _021A5FA4 ; =0x0000055C
	mov r2, #3
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_021A5FA4: .word 0x0000055C
	thumb_func_end sub_021A5F9C

	thumb_func_start sub_021A5FA8
sub_021A5FA8: ; 0x021A5FA8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5FA8

	thumb_func_start ovy298_21a5fac
ovy298_21a5fac: ; 0x021A5FAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #8]
	add r6, r1, #0
	add r0, sp, #0x10
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	str r2, [sp, #0xc]
	cmp r0, #1
	bne _021A603A
	add r0, r6, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021A603A
	add r2, r6, #0
	add r2, #0x98
	ldr r2, [r2]
	cmp r2, #0
	beq _021A5FE4
	add r1, r6, #0
	add r1, #0x84
	ldrb r1, [r1]
_021A5FE4:
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x56
	mul r1, r2
	add r2, r6, r0
	ldr r0, _021A608C ; =0x000004FC
	ldrb r0, [r2, r0]
	add r2, r6, #0
	add r2, #0xa0
	ldr r2, [r2]
	add r2, r2, r1
	add r2, r2, r0
	ldrb r3, [r2, #2]
	mov r2, #7
	tst r2, r3
	beq _021A600A
	mov r3, #1
	add r2, sp, #0x10
	strb r3, [r2]
_021A600A:
	add r2, r6, #0
	add r2, #0xa0
	ldr r2, [r2]
	add r2, r2, r1
	add r2, r2, r0
	ldrb r3, [r2, #2]
	mov r2, #0x18
	tst r2, r3
	beq _021A6022
	mov r3, #1
	add r2, sp, #0x10
	strb r3, [r2, #1]
_021A6022:
	add r2, r6, #0
	add r2, #0xa0
	ldr r2, [r2]
	add r1, r2, r1
	add r0, r1, r0
	ldrb r1, [r0, #2]
	mov r0, #0x60
	tst r0, r1
	beq _021A603A
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #2]
_021A603A:
	ldr r4, _021A6090 ; =0x021ACE7A
	ldr r7, _021A6094 ; =0x021ACE74
	mov r5, #0
_021A6040:
	lsl r1, r5, #2
	add r3, r4, r1
	ldrb r0, [r3, #3]
	lsl r2, r5, #1
	add r2, r7, r2
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, r5]
	ldrb r0, [r0, r2]
	str r0, [sp, #4]
	ldrb r2, [r3, #1]
	ldrb r1, [r4, r1]
	ldrb r3, [r3, #2]
	mov r0, #7
	bl sub_0204566C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A6040
	ldr r0, [r6, #0x78]
	cmp r0, #5
	beq _021A6074
	cmp r0, #8
	bne _021A6080
_021A6074:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	mov r3, #1
	bl ovy298_21a6320
_021A6080:
	mov r0, #7
	bl sub_02045B7C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A608C: .word 0x000004FC
_021A6090: .word 0x021ACE7A
_021A6094: .word 0x021ACE74
	thumb_func_end ovy298_21a5fac

	thumb_func_start ovy298_21a6098
ovy298_21a6098: ; 0x021A6098
	push {r3, lr}
	mov r0, #4
	str r0, [sp]
	ldr r0, _021A60AC ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0xc
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	.align 2, 0
_021A60AC: .word 0x04000050
	thumb_func_end ovy298_21a6098

	thumb_func_start sub_021A60B0
sub_021A60B0: ; 0x021A60B0
	mov r1, #0x56
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021A60BC ; =sub_0219FE98
	bx r3
	nop
_021A60BC: .word sub_0219FE98
	thumb_func_end sub_021A60B0

	thumb_func_start ovy298_21a60c0
ovy298_21a60c0: ; 0x021A60C0
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r3, [r2]
	ldr r1, _021A6128 ; =0xFFFF1FFF
	mov r4, #0xa8
	and r3, r1
	mov r1, #6
	lsl r1, r1, #0xc
	orr r1, r3
	str r1, [r2]
	add r1, r2, #0
	mov r3, #0xa0
	add r1, #0x40
	strh r3, [r1]
	add r1, r2, #0
	add r1, #0x44
	strh r4, [r1]
	add r1, r2, #0
	lsl r3, r3, #8
	add r1, #0x42
	strh r3, [r1]
	add r1, r2, #0
	add r1, #0x46
	strh r4, [r1]
	add r1, r2, #0
	add r1, #0x48
	ldrh r3, [r1]
	mov r4, #0x3f
	mov r5, #0x1f
	bic r3, r4
	orr r3, r5
	mov r7, #0x20
	orr r3, r7
	strh r3, [r1]
	ldrh r6, [r1]
	ldr r3, _021A612C ; =0xFFFFC0FF
	add r2, #0x4a
	and r6, r3
	lsl r3, r5, #8
	orr r3, r6
	lsl r6, r7, #8
	orr r3, r6
	strh r3, [r1]
	ldrh r1, [r2]
	bic r1, r4
	orr r1, r5
	strh r1, [r2]
	bl ovy298_21a617c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6128: .word 0xFFFF1FFF
_021A612C: .word 0xFFFFC0FF
	thumb_func_end ovy298_21a60c0

	thumb_func_start sub_021A6130
sub_021A6130: ; 0x021A6130
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _021A6148 ; =0xFFFF1FFF
	and r1, r2
	str r1, [r3]
	mov r1, #0x56
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021A614C ; =sub_0219FE98
	bx r3
	nop
_021A6148: .word 0xFFFF1FFF
_021A614C: .word sub_0219FE98
	thumb_func_end sub_021A6130

	thumb_func_start ovy298_21a6150
ovy298_21a6150: ; 0x021A6150
	push {r3, r4, r5, lr}
	mov r4, #0x92
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r3, [r5, r4]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021A6178 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	bl G2x_SetBlendAlpha_
	add r0, r4, #4
	add r0, r5, r0
	add r1, r5, r4
	bl sub_021ADE74
	pop {r3, r4, r5, pc}
	nop
_021A6178: .word 0x04000050
	thumb_func_end ovy298_21a6150

	thumb_func_start ovy298_21a617c
ovy298_21a617c: ; 0x021A617C
	push {r3, r4, r5, lr}
	mov r5, #0x93
	lsl r5, r5, #2
	add r4, r0, #0
	sub r1, r5, #4
	add r0, r4, r5
	add r1, r4, r1
	bl sub_021ADEC0
	sub r0, r5, #4
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021A61A4 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A61A4: .word 0x04000050
	thumb_func_end ovy298_21a617c

	thumb_func_start ovy298_21a61a8
ovy298_21a61a8: ; 0x021A61A8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021A61B0:
	cmp r4, #3
	beq _021A61C2
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C318
_021A61C2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A61B0
	mov r7, #0x95
	lsl r7, r7, #2
	mov r4, #0
	sub r6, r7, #4
_021A61D4:
	lsl r0, r4, #3
	add r1, r5, r0
	ldr r0, [r1, r6]
	cmp r0, #2
	bne _021A61E6
	ldr r0, [r1, r7]
	mov r1, #0
	bl sub_0204C318
_021A61E6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A61D4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a61a8

	thumb_func_start ovy298_21a61f4
ovy298_21a61f4: ; 0x021A61F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r4, #0
	mov r6, #1
_021A61FC:
	cmp r4, #3
	beq _021A620E
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C318
_021A620E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A61FC
	mov r7, #0x95
	lsl r7, r7, #2
	mov r4, #0
	sub r6, r7, #4
_021A6220:
	lsl r0, r4, #3
	add r1, r5, r0
	ldr r0, [r1, r6]
	cmp r0, #2
	bne _021A6232
	ldr r0, [r1, r7]
	mov r1, #1
	bl sub_0204C318
_021A6232:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A6220
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a61f4

	thumb_func_start ovy298_21a6240
ovy298_21a6240: ; 0x021A6240
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021A624A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _021A625A
	add r1, r6, #0
	bl sub_0204C318
_021A625A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A624A
	mov r0, #4
	str r0, [sp]
	ldr r0, _021A6278 ; =0x04001050
	mov r1, #8
	mov r2, #0x3f
	mov r3, #0xc
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A6278: .word 0x04001050
	thumb_func_end ovy298_21a6240

	thumb_func_start ovy298_21a627c
ovy298_21a627c: ; 0x021A627C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	mov r6, #1
_021A6284:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _021A6294
	add r1, r6, #0
	bl sub_0204C318
_021A6294:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A6284
	ldr r0, _021A62A8 ; =0x00000564
	ldr r0, [r5, r0]
	bl sub_0219FE98
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A62A8: .word 0x00000564
	thumb_func_end ovy298_21a627c

	thumb_func_start ovy298_21a62ac
ovy298_21a62ac: ; 0x021A62AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0219FD24
	add r4, r0, #0
	bl sub_02017934
	bl sub_02010CB8
	add r0, r4, #0
	bl sub_02017394
	add r4, r0, #0
	ldr r0, _021A62F0 ; =0x000004F8
	mov r2, #0
	ldr r0, [r5, r0]
	add r5, #0x85
	ldrb r1, [r5]
	mov r5, #0
	bl sub_0219F730
	bl ovy298_21a62f4
	add r1, r0, #0
	bmi _021A62EC
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_020191AC
	add r5, r0, #0
_021A62EC:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A62F0: .word 0x000004F8
	thumb_func_end ovy298_21a62ac

	thumb_func_start ovy298_21a62f4
ovy298_21a62f4: ; 0x021A62F4
	push {r4, r5}
	ldr r3, _021A631C ; =0x021AC5F0
	mov r5, #0
	mov r1, #6
_021A62FC:
	add r4, r5, #0
	mul r4, r1
	add r2, r3, r4
	ldrh r2, [r2, #2]
	cmp r0, r2
	bne _021A630E
	ldrh r0, [r3, r4]
	pop {r4, r5}
	bx lr
_021A630E:
	add r5, r5, #1
	cmp r5, #0x39
	blt _021A62FC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	.align 2, 0
_021A631C: .word 0x021AC5F0
	thumb_func_end ovy298_21a62f4

	thumb_func_start ovy298_21a6320
ovy298_21a6320: ; 0x021A6320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	str r3, [sp]
	bl sub_0219FD24
	bl sub_0200D190
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0219FD34
	ldr r1, _021A63CC ; =0x00000267
	add r7, r0, #0
	strh r1, [r5, #2]
	ldr r1, [sp]
	cmp r1, #1
	bne _021A63C2
	ldr r0, [sp, #4]
	bl sub_0200D1C0
	cmp r0, #1
	bne _021A63B6
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r7, #0
	mov r1, #1
	bl sub_021A2164
	add r0, r4, #0
	add r1, r6, #0
	bl ovy298_21a5404
	cmp r0, #1
	bne _021A639E
	add r1, r4, #0
	ldr r0, _021A63D0 ; =0x000004F8
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_0219F730
	strh r0, [r5, #2]
	add r0, r7, #0
	mov r1, #1
	bl sub_021A2150
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy298_21a5ebc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A639E:
	add r0, r7, #0
	mov r1, #0
	bl sub_021A2150
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy298_21a5ebc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A63B6:
	add r0, r7, #0
	mov r1, #0
	bl sub_021A2164
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A63C2:
	mov r1, #0
	bl sub_021A2164
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A63CC: .word 0x00000267
_021A63D0: .word 0x000004F8
	thumb_func_end ovy298_21a6320

	thumb_func_start sub_021A63D4
sub_021A63D4: ; 0x021A63D4
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021A63D4

	thumb_func_start ovy298_21a63d8
ovy298_21a63d8: ; 0x021A63D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldrh r2, [r6]
	ldr r7, [sp, #0x18]
	mov r1, #0xd4
	bl ovy298_219fcac
	mov r1, #0
	mov r2, #0xd4
	add r4, r0, #0
	mov r5, #0
	blx MI_CpuFill8
	add r0, r7, #0
	bl sub_0219FD28
	bl sub_021A08E4
	str r0, [r4]
	add r0, r7, #0
	bl sub_0219FD2C
	str r0, [r4, #4]
	add r0, r7, #0
	bl sub_0219FD30
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	add r0, r4, #0
	add r1, r4, #0
	str r5, [r4, #0x68]
	add r0, #0x74
	strh r5, [r0]
	add r1, #0x76
	mov r0, #1
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0xb8
	str r5, [r0]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a6a58
	ldr r0, _021A64B8 ; =ovy298_21a6a20
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1]
	ldrh r0, [r6]
	bl ovy298_219fdc8
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	ldrh r0, [r6]
	bl ovy298_219fdc8
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219FE98
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0219FE98
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1]
	mov r0, #0
	bl sub_0219FE88
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1]
	mov r0, #1
	bl sub_0219FE88
	ldrh r0, [r6]
	bl sub_0219FF90
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xcc
	add r1, r4, #0
	str r5, [r0]
	add r1, #0xd0
	mov r0, #1
	str r0, [r1]
	add r1, r5, #0
_021A64A0:
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x54]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021A64A0
	str r1, [r4, #0x5c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A64B8: .word ovy298_21a6a20
	thumb_func_end ovy298_21a63d8

	thumb_func_start ovy298_21a64bc
ovy298_21a64bc: ; 0x021A64BC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r2, #0
	add r5, r3, #0
	ldr r6, [sp, #0x18]
	bl sub_020066C0
	cmp r0, #0
	beq _021A64D2
	bl sub_02006648
_021A64D2:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a74b0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy298_21a02fc
	ldr r0, [r5, #0x7c]
	bl ovy298_21a02fc
	ldr r1, [r5, #0x78]
	mov r0, #2
	bl sub_021A03D4
	mov r4, #0
_021A64F6:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ovy298_21a6e64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A64F6
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a7174
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a70e0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_021A71F4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_021A71EC
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a6c00
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_219ff9c
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0219FDE4
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219FDE4
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #3
	beq _021A6570
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy298_21a6a6c
_021A6570:
	add r5, #0xbc
	ldr r0, [r5]
	bl GFL_TCBRemove
	ldr r0, [sp]
	bl ovy298_219fccc
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a64bc

	thumb_func_start ovy298_21a6584
ovy298_21a6584: ; 0x021A6584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r0, [sp, #0x38]
	add r7, r1, #0
	str r0, [sp, #0x38]
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0219FD34
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	bl sub_0219FD38
	str r0, [sp, #0x20]
	ldr r0, [r7]
	cmp r0, #7
	bls _021A65A8
	b _021A6878
_021A65A8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A65B4: ; jump table
	.short _021A65C4 - _021A65B4 - 2 ; case 0
	.short _021A66EC - _021A65B4 - 2 ; case 1
	.short _021A6714 - _021A65B4 - 2 ; case 2
	.short _021A678C - _021A65B4 - 2 ; case 3
	.short _021A67C2 - _021A65B4 - 2 ; case 4
	.short _021A680A - _021A65B4 - 2 ; case 5
	.short _021A684A - _021A65B4 - 2 ; case 6
	.short _021A6872 - _021A65B4 - 2 ; case 7
_021A65C4:
	mov r0, #1
	str r0, [r7]
	mov r5, #0
_021A65CA:
	cmp r5, #1
	beq _021A65EC
	cmp r5, #5
	beq _021A65EC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	add r0, r5, #0
	bl sub_02045708
_021A65EC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	bls _021A65CA
	mov r0, #2
	mov r1, #1
	bl sub_02044BD8
	mov r0, #3
	mov r1, #2
	bl sub_02044BD8
	mov r0, #0
	mov r1, #3
	mov r5, #0
	bl sub_02044BD8
	mov r0, #6
	mov r1, #1
	bl sub_02044BD8
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a6abc
	ldr r2, [sp, #0x38]
	ldr r3, [r4, #0x5c]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a6ce4
	ldr r0, [r4, #0x5c]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C318
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a7090
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a70f8
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a71cc
	ldr r2, [sp, #0x38]
	str r5, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_021A71F0
	str r5, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x9d
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #0x2b
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldrh r1, [r6]
	mov r0, #0
	mov r2, #2
	mov r3, #1
	bl ovy298_21a033c
	str r0, [r4, #0x78]
	mov r0, #3
	str r0, [sp]
	ldrh r0, [r6]
	mov r1, #2
	mov r2, #0
	mov r3, #2
	bl ovy298_21a01c4
	str r0, [r4, #0x7c]
	mov r0, #2
	str r0, [sp]
	ldrh r0, [r6]
	mov r1, #2
	mov r2, #4
	mov r3, #1
	bl ovy298_21a01c4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0
	str r5, [sp]
	bl ovy298_21a6c58
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a7454
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_21a00d8
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_21a0098
	b _021A6878
_021A66EC:
	mov r0, #2
	add r1, r4, #0
	str r0, [r7]
	add r1, #0xc0
	ldr r1, [r1]
	mov r0, #0
	bl sub_0219FE74
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1]
	mov r0, #1
	bl sub_0219FE74
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a7920
	b _021A6878
_021A6714:
	mov r0, #3
	str r0, [r7]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_21a0058
	add r0, r5, #0
	bl sub_021A1474
	cmp r0, #2
	beq _021A674E
	ldr r0, [sp, #0x38]
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A673A
	mov r3, #0
_021A673A:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ovy298_21a1454
	add r0, r5, #0
	mov r1, #0
	bl sub_021A1478
	b _021A6756
_021A674E:
	add r0, r5, #0
	mov r1, #2
	bl ovy298_21a155c
_021A6756:
	add r0, r5, #0
	mov r1, #0
	bl ovy298_21a15e8
	ldr r0, [sp, #0x38]
	bl sub_0219FD24
	mov r1, #0x16
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	add r0, r5, #0
	bl ovy298_21a15b4
	ldr r0, [sp, #0x20]
	bl sub_021A2320
	cmp r0, #2
	beq _021A6878
	ldr r0, [sp, #0x20]
	mov r1, #2
	bl ovy298_21a230c
	ldr r0, [sp, #0x20]
	bl sub_021A2324
	b _021A6878
_021A678C:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_021A0048
	cmp r0, #0
	bne _021A6878
	add r0, r5, #0
	bl sub_021A1474
	cmp r0, #2
	bne _021A6878
	ldr r0, [sp, #0x20]
	bl sub_021A2320
	cmp r0, #2
	bne _021A6878
	add r0, r5, #0
	bl sub_021A1544
	add r0, r5, #0
	mov r1, #1
	bl ovy298_21a15e8
	mov r0, #4
_021A67BE:
	str r0, [r7]
	b _021A6878
_021A67C2:
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	beq _021A67FE
	mov r0, #5
	str r0, [r7]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_21a0078
	ldr r0, [sp, #0x20]
	bl sub_021A2334
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #2
	bne _021A67F2
	add r0, r5, #0
	mov r1, #0
	bl ovy298_21a148c
_021A67F2:
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a6a6c
	b _021A6878
_021A67FE:
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a738c
	b _021A6878
_021A680A:
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_021A0048
	cmp r0, #0
	bne _021A6840
	ldr r0, [sp, #0x20]
	bl sub_021A2320
	cmp r0, #0
	bne _021A6840
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #2
	bne _021A683C
	add r0, r5, #0
	bl sub_021A1474
	cmp r0, #0
	bne _021A6840
	b _021A683C
_021A683C:
	mov r0, #1
	str r0, [sp, #0x1c]
_021A6840:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021A6878
	mov r0, #6
	b _021A67BE
_021A684A:
	mov r0, #7
	str r0, [r7]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a798c
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1]
	mov r0, #0
	bl sub_0219FE88
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1]
	mov r0, #1
	bl sub_0219FE88
	b _021A6878
_021A6872:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A6878:
	ldr r0, [r7]
	cmp r0, #3
	blt _021A689C
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a71f8
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a74c8
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a6e94
_021A689C:
	ldr r0, [r7]
	cmp r0, #2
	blt _021A68BC
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a7190
	ldr r0, [r4, #0x7c]
	bl ovy298_21a031c
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy298_21a031c
_021A68BC:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc0
	add r1, #0xc4
	ldr r0, [r0]
	ldr r1, [r1]
	bl ovy298_219fdec
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ovy298_219fff8
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a6a94
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a6584

	thumb_func_start ovy298_21a68e8
ovy298_21a68e8: ; 0x021A68E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r6, r3, #0
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	bne _021A68F8
	b _021A6A1C
_021A68F8:
	add r0, r5, #0
	bl sub_0219FD34
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0xa
	mov r7, #0
	cmp r0, #8
	bhi _021A692E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A6916: ; jump table
	.short _021A6928 - _021A6916 - 2 ; case 0
	.short _021A6928 - _021A6916 - 2 ; case 1
	.short _021A6928 - _021A6916 - 2 ; case 2
	.short _021A6928 - _021A6916 - 2 ; case 3
	.short _021A6928 - _021A6916 - 2 ; case 4
	.short _021A6928 - _021A6916 - 2 ; case 5
	.short _021A6928 - _021A6916 - 2 ; case 6
	.short _021A692E - _021A6916 - 2 ; case 7
	.short _021A6928 - _021A6916 - 2 ; case 8
_021A6928:
	add r0, r6, #0
	add r0, #0xd0
	str r7, [r0]
_021A692E:
	cmp r4, #9
	bhi _021A695A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A693E: ; jump table
	.short _021A695A - _021A693E - 2 ; case 0
	.short _021A6952 - _021A693E - 2 ; case 1
	.short _021A6952 - _021A693E - 2 ; case 2
	.short _021A6952 - _021A693E - 2 ; case 3
	.short _021A6952 - _021A693E - 2 ; case 4
	.short _021A6952 - _021A693E - 2 ; case 5
	.short _021A6952 - _021A693E - 2 ; case 6
	.short _021A6952 - _021A693E - 2 ; case 7
	.short _021A695A - _021A693E - 2 ; case 8
	.short _021A6952 - _021A693E - 2 ; case 9
_021A6952:
	add r0, r6, #0
	mov r7, #1
	add r0, #0xd0
	str r7, [r0]
_021A695A:
	cmp r4, #0xc
	beq _021A6964
	cmp r4, #0xd
	beq _021A6980
	b _021A69A4
_021A6964:
	add r0, r5, #0
	bl sub_0219FD40
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy298_219fd4c
	add r0, r5, #0
	bl sub_0219FD40
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _021A69A4
	b _021A699A
_021A6980:
	add r0, r5, #0
	bl sub_0219FD40
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ovy298_219fd8c
	add r0, r5, #0
	bl sub_0219FD40
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _021A69A4
_021A699A:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ovy298_21a731c
_021A69A4:
	cmp r4, #9
	bhi _021A6A12
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A69B4: ; jump table
	.short _021A6A1C - _021A69B4 - 2 ; case 0
	.short _021A69C8 - _021A69B4 - 2 ; case 1
	.short _021A69C8 - _021A69B4 - 2 ; case 2
	.short _021A69DC - _021A69B4 - 2 ; case 3
	.short _021A69E6 - _021A69B4 - 2 ; case 4
	.short _021A69F0 - _021A69B4 - 2 ; case 5
	.short _021A69D2 - _021A69B4 - 2 ; case 6
	.short _021A69D2 - _021A69B4 - 2 ; case 7
	.short _021A6A12 - _021A69B4 - 2 ; case 8
	.short _021A69D2 - _021A69B4 - 2 ; case 9
_021A69C8:
	mov r0, #2
	add r6, #0xcc
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A69D2:
	mov r0, #1
	add r6, #0xcc
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A69DC:
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A69E6:
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A69F0:
	add r0, r5, #0
	bl sub_0219FD24
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ovy298_21a15cc
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x16
	bl sub_02017644
	ldr r0, [sp, #4]
	bl sub_021A1544
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A6A12:
	cmp r7, #0
	beq _021A6A1C
	ldr r0, [sp, #4]
	bl sub_021A1544
_021A6A1C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a68e8

	thumb_func_start ovy298_21a6a20
ovy298_21a6a20: ; 0x021A6A20
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A6A4C
	mov r2, #0x18
	ldrsh r2, [r5, r2]
	mov r0, #3
	mov r1, #0
	sub r2, r2, #1
	mov r4, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #3
	bl sub_02044F90
	str r4, [r5, #0x1c]
_021A6A4C:
	add r5, #0xc8
	ldr r0, [r5]
	bl sub_021A003C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a6a20

	thumb_func_start ovy298_21a6a58
ovy298_21a6a58: ; 0x021A6A58
	push {r4, lr}
	mov r0, #0x1e
	add r4, r1, #0
	bl sub_02005EA0
	mov r0, #1
	add r4, #0xb8
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a6a58

	thumb_func_start ovy298_21a6a6c
ovy298_21a6a6c: ; 0x021A6A6C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #2
	bne _021A6A84
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
_021A6A84:
	mov r0, #0x3c
	bl sub_02005E68
	mov r0, #3
	add r4, #0xb8
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a6a6c

	thumb_func_start ovy298_21a6a94
ovy298_21a6a94: ; 0x021A6A94
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021A6ABA
	bl sub_02005EC0
	cmp r0, #0
	bne _021A6ABA
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	mov r0, #2
	add r4, #0xb8
	str r0, [r4]
_021A6ABA:
	pop {r4, pc}
	thumb_func_end ovy298_21a6a94

	thumb_func_start ovy298_21a6abc
ovy298_21a6abc: ; 0x021A6ABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	add r5, r1, #0
	ldr r1, [sp, #0xc]
	mov r0, #0x9d
	ldrh r1, [r1]
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	str r4, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r2, #0
	ldrh r1, [r1]
	mov r3, #0
	add r6, r0, #0
	str r1, [sp, #8]
	mov r1, #3
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0xd
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	ldrh r3, [r3]
	mov r1, #0x1c
	mov r2, #0x2d
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #8
	ldrh r0, [r0]
	mov r2, #1
	mov r3, #0x40
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x19
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	ldrh r3, [r3]
	mov r1, #0x1f
	mov r2, #0x30
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r7, sp, #0x10
_021A6B6C:
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	lsl r0, r4, #3
	add r1, r4, r0
	ldr r0, _021A6BFC ; =0x021AC760
	lsl r6, r4, #2
	add r3, r0, r1
	ldrb r0, [r0, r1]
	ldrb r1, [r3, #5]
	ldrb r2, [r3, #6]
	strh r0, [r7]
	ldrb r0, [r3, #1]
	lsl r1, r1, #2
	lsl r2, r2, #2
	strh r0, [r7, #2]
	ldrb r0, [r3, #2]
	add r1, r5, r1
	add r2, r5, r2
	strh r0, [r7, #4]
	ldrb r0, [r3, #3]
	add r1, #0x84
	add r2, #0x84
	strb r0, [r7, #6]
	ldrb r0, [r3, #4]
	strb r0, [r7, #7]
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r0, [r3, #8]
	ldrb r3, [r3, #7]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #2
	ldrh r0, [r0]
	add r3, r5, r3
	add r3, #0x84
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	add r1, r5, r6
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, r6
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, r6
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _021A6B6C
	add r5, #0xb4
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6BFC: .word 0x021AC760
	thumb_func_end ovy298_21a6abc

	thumb_func_start ovy298_21a6c00
ovy298_21a6c00: ; 0x021A6C00
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021A6C06:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _021A6C06
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204B98C
	add r5, #0x98
	ldr r0, [r5]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a6c00

	thumb_func_start ovy298_21a6c58
ovy298_21a6c58: ; 0x021A6C58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _021A6CE0 ; =0x021AC748
	add r5, r1, #0
	ldrb r1, [r0]
	add r4, sp, #0
	add r6, r3, #0
	strb r1, [r4, #8]
	ldrb r1, [r0, #1]
	strb r1, [r4, #9]
	ldrb r1, [r0, #2]
	strb r1, [r4, #0xa]
	ldrb r0, [r0, #3]
	mov r1, #0xa
	strb r0, [r4, #0xb]
	add r0, r6, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r4]
	cmp r0, #9
	bls _021A6C8A
	mov r0, #9
	strh r0, [r4]
_021A6C8A:
	add r0, r6, #0
	mov r1, #0xa
	blx sub_0208D65C
	add r4, sp, #0
	strh r1, [r4, #2]
	add r0, sp, #0x20
	ldrh r6, [r0]
	mov r1, #0xa
	add r0, r6, #0
	blx sub_0208D65C
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #9
	bls _021A6CAE
	mov r0, #9
	strh r0, [r4, #4]
_021A6CAE:
	add r0, r6, #0
	mov r1, #0xa
	blx sub_0208D65C
	add r0, sp, #0
	strh r1, [r0, #6]
	mov r4, #0
	add r6, sp, #8
	add r7, sp, #0
_021A6CC0:
	ldrb r0, [r6, r4]
	lsl r1, r4, #1
	ldrh r1, [r7, r1]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C504
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A6CC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A6CE0: .word 0x021AC748
	thumb_func_end ovy298_21a6c58

	thumb_func_start ovy298_21a6ce4
ovy298_21a6ce4: ; 0x021A6CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	str r3, [sp, #0x18]
	bl sub_0219FD40
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0219FD24
	bl sub_0200D190
	add r1, sp, #0x30
	str r1, [sp]
	ldrh r1, [r5]
	add r2, sp, #0x38
	add r3, sp, #0x34
	str r1, [sp, #4]
	add r1, r7, #0
	add r4, r0, #0
	bl sub_0200D3C8
	ldr r0, _021A6E60 ; =0x00000147
	cmp r7, r0
	bne _021A6D2A
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200DA18
	str r0, [sp, #0x1c]
_021A6D2A:
	ldrh r0, [r5]
	bl sub_02033E24
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x20]
	lsl r4, r1, #2
	add r1, r6, #0
	str r1, [sp, #0x24]
	add r1, #0x44
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x34]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x1c]
	str r1, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	ldrh r1, [r5]
	str r1, [sp, #0x14]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x38]
	add r1, r7, #0
	bl sub_02033E78
	ldr r1, [sp, #0x24]
	str r0, [r1, r4]
	add r0, r6, #0
	str r0, [sp, #0x28]
	add r0, #0x3c
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r5]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x38]
	bl sub_02033E34
	ldr r1, [sp, #0x28]
	str r0, [r1, r4]
	add r0, r6, #0
	str r0, [sp, #0x2c]
	add r0, #0x4c
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x34]
	add r0, r7, #0
	bl sub_02033EF4
	ldr r1, [sp, #0x2c]
	str r0, [r1, r4]
	bl sub_02033768
	ldr r1, [sp, #0x34]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x38]
	add r1, r7, #0
	bl sub_020337DC
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc8
	ldrh r3, [r5]
	ldr r0, [r0]
	bl ovy298_21a00b8
	ldr r0, [sp, #0x20]
	bl GFL_ArcToolFree
	add r0, sp, #0x3c
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	add r7, r6, #0
	mov r1, #0x80
	add r0, sp, #0x30
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r2, #0
	strh r2, [r0, #0x10]
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	lsl r1, r1, #5
	str r1, [sp, #0x48]
	str r1, [sp, #0x4c]
	mov r1, #0
	strh r1, [r0, #0x20]
	mov r1, #2
	strh r1, [r0, #0x22]
	add r0, sp, #0x3c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	ldr r0, [r6]
	ldr r1, [r1, r4]
	ldr r2, [r2, r4]
	ldr r3, [r3, r4]
	add r7, #0x54
	bl sub_0204C0A4
	mov r1, #0
	str r0, [r7, r4]
	bl sub_0204C318
	mov r0, #0
	str r0, [r6, #0x60]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021A6E60: .word 0x00000147
	thumb_func_end ovy298_21a6ce4

	thumb_func_start ovy298_21a6e64
ovy298_21a6e64: ; 0x021A6E64
	push {r3, r4, r5, lr}
	add r5, r1, #0
	lsl r4, r3, #2
	add r0, r5, r4
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _021A6E92
	bl sub_0204C108
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0204BCD0
	add r0, r5, r4
	ldr r0, [r0, #0x44]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	bl sub_0204BE64
_021A6E92:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a6e64

	thumb_func_start ovy298_21a6e94
ovy298_21a6e94: ; 0x021A6E94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0x60]
	cmp r0, #3
	bls _021A6EA2
	b _021A702E
_021A6EA2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A6EAE: ; jump table
	.short _021A702E - _021A6EAE - 2 ; case 0
	.short _021A6EB6 - _021A6EAE - 2 ; case 1
	.short _021A702E - _021A6EAE - 2 ; case 2
	.short _021A6F72 - _021A6EAE - 2 ; case 3
_021A6EB6:
	ldr r0, [r4, #0x5c]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	mov r2, #1
	bl Oam_GetSpritePosData
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C27C
	ldr r0, [sp, #4]
	blx sub_0208D374
	ldr r1, _021A7034 ; =0x45800000
	blx sub_0208E3C8
	ldr r1, _021A7038 ; =0x3C23D70A
	blx sub_0208DF14
	ldr r6, _021A703C ; =0x3F8CCCCD
	add r5, r0, #0
	add r1, r6, #0
	blx sub_0208D174
	blo _021A6EF8
	mov r0, #2
	add r5, r6, #0
	str r0, [r4, #0x60]
_021A6EF8:
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, _021A7040 ; =0x42C00000
	blx sub_0208DD34
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	blx sub_0208DA4C
	mov r1, #0x80
	sub r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #0xa]
	add r0, r5, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021A7034 ; =0x45800000
	bls _021A6F3C
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A6F4A
_021A6F3C:
	add r1, r5, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A6F4A:
	blx sub_0208DA4C
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C270
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021A6F72:
	ldr r0, [r4, #0x5c]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	mov r2, #1
	bl Oam_GetSpritePosData
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C27C
	ldr r0, [sp, #4]
	blx sub_0208D374
	ldr r1, _021A7034 ; =0x45800000
	blx sub_0208E3C8
	ldr r1, _021A7038 ; =0x3C23D70A
	blx sub_0208E144
	mov r6, #0xfe
	lsl r6, r6, #0x16
	add r1, r6, #0
	add r5, r0, #0
	blx sub_0208D22C
	bhi _021A6FBA
	mov r0, #0
	add r5, r6, #0
	str r0, [r4, #0x60]
	mov r1, #0x80
	b _021A6FDA
_021A6FBA:
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, _021A7040 ; =0x42C00000
	blx sub_0208DD34
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	blx sub_0208DA4C
	mov r1, #0x80
	sub r1, r1, r0
_021A6FDA:
	add r0, sp, #0
	strh r1, [r0, #0xa]
	add r0, r5, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021A7034 ; =0x45800000
	bls _021A6FFC
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A700A
_021A6FFC:
	add r1, r5, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A700A:
	blx sub_0208DA4C
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C270
_021A702E:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A7034: .word 0x45800000
_021A7038: .word 0x3C23D70A
_021A703C: .word 0x3F8CCCCD
_021A7040: .word 0x42C00000
	thumb_func_end ovy298_21a6e94

	thumb_func_start ovy298_21a7044
ovy298_21a7044: ; 0x021A7044
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0x80
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	lsl r0, r1, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x5c]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	mov r2, #1
	mov r4, #1
	bl Oam_SetSpritePosData
	ldr r0, [r5, #0x5c]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C270
	str r4, [r5, #0x60]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a7044

	thumb_func_start sub_021A7080
sub_021A7080: ; 0x021A7080
	ldr r0, [r1, #0x60]
	sub r0, r0, #1
	cmp r0, #1
	bhi _021A708C
	mov r0, #3
	str r0, [r1, #0x60]
_021A708C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7080

	thumb_func_start ovy298_21a7090
ovy298_21a7090: ; 0x021A7090
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0
	add r5, r0, #0
	str r7, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #8]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_0204B0F0
	mov r0, #4
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0xa
	mov r2, #5
	mov r3, #0xc
	bl BmpWin_CreateDynamic
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [r4, #0x10]
	bl ovy298_21a7174
	ldr r0, [r4, #0xc]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a7090

	thumb_func_start ovy298_21a70e0
ovy298_21a70e0: ; 0x021A70E0
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	bl sub_02048210
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a70e0

	thumb_func_start ovy298_21a70f8
ovy298_21a70f8: ; 0x021A70F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r5, r1, #0
	str r2, [sp, #0x10]
	bl sub_0219FD40
	add r1, r0, #0
	ldr r0, _021A7170 ; =0x0209A434
	ldr r0, [r0]
	bl sub_0204898C
	ldr r1, [r5, #4]
	mov r2, #0
	add r6, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	sub r3, r7, r4
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	mov r3, #1
	mov r4, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r4, [r5, #0x10]
	bl ovy298_21a7190
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A7170: .word 0x0209A434
	thumb_func_end ovy298_21a70f8

	thumb_func_start ovy298_21a7174
ovy298_21a7174: ; 0x021A7174
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	pop {r4, pc}
	thumb_func_end ovy298_21a7174

	thumb_func_start ovy298_21a7190
ovy298_21a7190: ; 0x021A7190
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021A71C8
	ldr r0, [r4, #0xc]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A71C8
	ldr r5, [r4, #0xc]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x10]
_021A71C8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a7190

	thumb_func_start ovy298_21a71cc
ovy298_21a71cc: ; 0x021A71CC
	push {lr}
	sub sp, #0xc
	mov r1, #0x20
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0x17
	mov r3, #0
	bl sub_0204B0F0
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy298_21a71cc

	thumb_func_start sub_021A71EC
sub_021A71EC: ; 0x021A71EC
	bx lr
	.align 2, 0
	thumb_func_end sub_021A71EC

	thumb_func_start sub_021A71F0
sub_021A71F0: ; 0x021A71F0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A71F0

	thumb_func_start sub_021A71F4
sub_021A71F4: ; 0x021A71F4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A71F4

	thumb_func_start ovy298_21a71f8
ovy298_21a71f8: ; 0x021A71F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0x68]
	str r2, [sp, #4]
	cmp r0, #0
	beq _021A7270
	bl OS_GetTick
	ldr r2, [r4, #0x6c]
	add r5, r0, #0
	ldr r3, [r4, #0x70]
	sub r0, r5, r2
	mov ip, r1
	mov r0, ip
	sbc r0, r3
	blo _021A7222
	sub r2, r5, r2
	sbc r1, r3
	b _021A722E
_021A7222:
	mov r0, #0
	mvn r0, r0
	sub r2, r0, r2
	sbc r0, r3
	add r2, r5, r2
	adc r1, r0
_021A722E:
	lsr r0, r2, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r2, #6
	ldr r2, _021A72F0 ; =0x000082EA
	mov r3, #0
	blx sub_0208D5C4
	mov r3, #0
	ldr r2, _021A72F4 ; =0x00002706
	sub r2, r2, r0
	sbc r3, r1
	bhs _021A724A
	ldr r0, _021A72F4 ; =0x00002706
_021A724A:
	add r1, r4, #0
	add r1, #0x74
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r1, [r4, #0x38]
	cmp r0, r1
	blo _021A7270
	add r0, r4, #0
	add r0, #0x74
	strh r1, [r0]
	mov r0, #0
	str r0, [r4, #0x68]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021A7080
_021A7270:
	add r0, r4, #0
	add r0, #0x74
	ldrh r5, [r0]
	add r0, r4, #0
	add r0, #0x76
	ldrh r0, [r0]
	cmp r5, r0
	beq _021A72EA
	mov r1, #0xfa
	add r0, r5, #0
	lsl r1, r1, #2
	blx sub_0208D65C
	lsl r0, r0, #0x10
	mov r1, #0xfa
	lsr r6, r0, #0x10
	add r0, r5, #0
	lsl r1, r1, #2
	blx sub_0208D65C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xa
	str r0, [sp, #8]
	blx sub_0208D65C
	mov r5, #1
	cmp r1, #5
	bge _021A72AC
	mov r5, #0
_021A72AC:
	ldr r0, [sp, #8]
	mov r1, #0xa
	blx sub_0208D65C
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021A71F4
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	add r3, r6, #0
	str r5, [sp]
	bl sub_021A71F0
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	add r3, r6, #0
	str r5, [sp]
	bl ovy298_21a6c58
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	add r4, #0x76
	strh r0, [r4]
_021A72EA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A72F0: .word 0x000082EA
_021A72F4: .word 0x00002706
	thumb_func_end ovy298_21a71f8

	thumb_func_start ovy298_21a72f8
ovy298_21a72f8: ; 0x021A72F8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021A7312
	bl sub_020066C0
	cmp r0, #0
	beq _021A730E
	bl sub_02006648
_021A730E:
	mov r0, #0
	str r0, [r4, #0x68]
_021A7312:
	mov r0, #0
	add r4, #0x74
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a72f8

	thumb_func_start ovy298_21a731c
ovy298_21a731c: ; 0x021A731C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x5c]
	add r6, r2, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _021A7336
	mov r1, #0
	bl sub_0204C124
_021A7336:
	ldr r0, [r4, #0x5c]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x5c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a7174
	ldr r3, [r4, #0x5c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a6e64
	ldr r3, [r4, #0x5c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a6ce4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a70f8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a72f8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a74f0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a731c

	thumb_func_start ovy298_21a738c
ovy298_21a738c: ; 0x021A738C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0
	beq _021A73DA
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021A73B6
	add r0, r4, #0
	bl sub_0203D564
	mov r4, #1
	b _021A73DA
_021A73B6:
	add r0, sp, #0x24
	add r1, sp, #0x20
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A73DA
	mov r0, #1
	ldr r1, [sp, #0x24]
	add r0, #0xff
	cmp r1, r0
	bhs _021A73DA
	ldr r0, [sp, #0x20]
	cmp r0, #0xa8
	bhs _021A73DA
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
_021A73DA:
	cmp r4, #0
	beq _021A7450
	add r0, r7, #0
	bl sub_0219FD24
	bl sub_0200D190
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_0219FD40
	add r4, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldrh r0, [r6]
	add r1, r4, #0
	add r2, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r3, sp, #0x14
	bl sub_0200D3C8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x40
	mov r3, #0
	bl sub_020069F4
	add r1, r5, #0
	str r0, [r5, #0x64]
	add r1, #0x74
	mov r0, #0
	strh r0, [r1]
	bl OS_GetTick
	str r0, [r5, #0x6c]
	str r1, [r5, #0x70]
	mov r0, #1
	str r0, [r5, #0x68]
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy298_21a76b8
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy298_21a7044
_021A7450:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a738c

	thumb_func_start ovy298_21a7454
ovy298_21a7454: ; 0x021A7454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021A74A4 ; =0x000008A1
	add r4, r1, #0
	str r0, [sp]
	add r6, r2, #0
	ldrh r0, [r5]
	ldr r1, _021A74A8 ; =0x000003A2
	ldr r3, _021A74AC ; =0x021ACE88
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	str r0, [r4, #0x14]
	mov r0, #0xf
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r0, #3
	mov r1, #1
	mov r2, #2
	mov r3, #0x1f
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a74f0
	ldrh r3, [r5]
	mov r0, #0x79
	mov r1, #0xf
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r4, #0x2c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A74A4: .word 0x000008A1
_021A74A8: .word 0x000003A2
_021A74AC: .word 0x021ACE88
	thumb_func_end ovy298_21a7454

	thumb_func_start ovy298_21a74b0
ovy298_21a74b0: ; 0x021A74B0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x2c]
	bl sub_02046EDC
	ldr r0, [r4, #0x20]
	bl sub_02048210
	ldr r0, [r4, #0x14]
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy298_21a74b0

	thumb_func_start ovy298_21a74c8
ovy298_21a74c8: ; 0x021A74C8
	push {r4, lr}
	add r4, r1, #0
	add r3, r4, #0
	add r3, #0x24
	ldrb r3, [r3]
	cmp r3, #0
	beq _021A74E4
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r4, #0x24
	sub r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021A74E4:
	bl ovy298_21a7544
	mov r0, #0
	add r4, #0x24
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy298_21a74c8

	thumb_func_start ovy298_21a74f0
ovy298_21a74f0: ; 0x021A74F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	strh r1, [r4, #0x30]
	mov r0, #0x30
	ldrsh r0, [r4, r0]
	add r6, r2, #0
	strh r0, [r4, #0x32]
	ldr r0, [r4, #0x20]
	str r1, [r4, #0x38]
	bl BmpWin_GetBitmap
	mov r1, #0
	add r7, r0, #0
	bl BmpWin_BitmapFill
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x37
	mov r3, #0xee
	bl sub_020470F8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a789c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a74f0

	thumb_func_start ovy298_21a7544
ovy298_21a7544: ; 0x021A7544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x20]
	str r2, [sp, #0x18]
	bl BmpWin_GetBitmap
	str r0, [sp, #0x24]
	mov r0, #0x18
	ldrsh r1, [r6, r0]
	mov r0, #0x1a
	ldrsh r0, [r6, r0]
	lsl r0, r0, #3
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, #0xee
	mov r1, #0xf8
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r5, r0, #0x10
	mov r0, #0x18
	ldrsh r0, [r6, r0]
	add r7, r6, #0
	mov r4, #0
	add r0, r0, #2
	strh r0, [r6, #0x18]
	mov r0, #0x18
	ldrsh r3, [r6, r0]
	add r7, #0x18
	cmp r3, #8
	blt _021A75C0
_021A7588:
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0x1a
	ldrsh r1, [r6, r1]
	ldr r0, [sp, #0x24]
	mov r2, #0
	lsl r1, r1, #0x13
	asr r1, r1, #0x10
	mov r3, #8
	bl sub_020470F8
	mov r0, #0x1a
	ldrsh r0, [r6, r0]
	mov r1, #0x1f
	add r0, r0, #1
	blx sub_0208D65C
	strh r1, [r6, #0x1a]
	mov r0, #0
	ldrsh r0, [r7, r0]
	sub r0, #8
	strh r0, [r7]
	mov r0, #0x18
	ldrsh r3, [r6, r0]
	cmp r3, #8
	bge _021A7588
_021A75C0:
	cmp r3, #0
	ble _021A75E0
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0x1a
	ldrsh r1, [r6, r1]
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0x13
	asr r1, r1, #0x10
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020470F8
_021A75E0:
	add r0, r6, #0
	str r0, [sp, #0x28]
	add r0, #0x32
	str r0, [sp, #0x28]
_021A75E8:
	mov r0, #0x32
	ldrsh r2, [r6, r0]
	mov r0, #0x30
	ldrsh r0, [r6, r0]
	add r1, r5, #2
	sub r1, r1, r4
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r7, r1, #0x10
	cmp r0, #0
	ble _021A765C
	cmp r7, #0xf8
	ble _021A7608
	mov r7, #0xf8
_021A7608:
	sub r1, r7, r5
	cmp r1, r0
	ble _021A7614
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_021A7614:
	sub r0, r7, r5
	str r0, [sp, #0x20]
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, _021A76B4 ; =0x0000FFFF
	mov r3, #0
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x2c]
	bl sub_02047008
	ldr r0, [sp, #0x20]
	mov r1, #0xf8
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r7, #0
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r5, r0, #0x10
	ldr r1, [sp, #0x28]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	ldr r0, [sp, #0x28]
	cmp r4, #2
	strh r1, [r0]
	blt _021A75E8
_021A765C:
	cmp r4, #2
	bge _021A76A6
_021A7660:
	add r0, r5, #2
	sub r0, r0, r4
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #0xf8
	ble _021A766E
	mov r7, #0xf8
_021A766E:
	sub r0, r7, r5
	str r0, [sp, #0x1c]
	mov r0, #1
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x37
	lsr r3, r3, #0x10
	bl sub_020470F8
	ldr r0, [sp, #0x1c]
	mov r1, #0xf8
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r7, #0
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r5, r0, #0x10
	cmp r4, #2
	blt _021A7660
_021A76A6:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r1, r6, #0
	bl ovy298_21a789c
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A76B4: .word 0x0000FFFF
	thumb_func_end ovy298_21a7544

	thumb_func_start ovy298_21a76b8
ovy298_21a76b8: ; 0x021A76B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r0, [r7, #0x64]
	add r4, r3, #0
	bl sub_02006BCC
	str r0, [r7, #0x34]
	mov r0, #0
	strh r0, [r7, #0x32]
	ldrh r0, [r7, #0x26]
	cmp r4, r0
	bne _021A76DE
	add r0, sp, #0x38
	ldrh r1, [r0]
	ldrh r0, [r7, #0x28]
	cmp r1, r0
	bne _021A76DE
	b _021A788C
_021A76DE:
	strh r4, [r7, #0x26]
	add r0, sp, #0x38
	ldrh r0, [r0]
	strh r0, [r7, #0x28]
	ldr r0, [r7, #0x64]
	bl sub_02006C04
	add r4, r0, #0
	ldr r0, [r7, #0x64]
	bl sub_02006BAC
	add r6, r0, #0
	ldr r0, [r7, #0x64]
	bl sub_02006BE8
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x47
	lsl r0, r0, #0x18
	blx sub_0208DD34
	add r5, r0, #0
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208E3C8
	add r4, r0, #0
	add r0, r6, #0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A7890 ; =0x447A0000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	blx sub_0208DA80
	str r0, [r7, #0x38]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x2c]
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r7, #0x64]
	mov r4, #0
	bl sub_02006BE8
	cmp r0, #0
	bhi _021A775C
	b _021A787C
_021A775C:
	ldr r0, [r7, #0x64]
	bl sub_02006BAC
	add r6, r0, #0
	ldr r0, [r7, #0x64]
	bl sub_02006C04
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	blx sub_0208D3BC
	str r0, [sp, #0x10]
	add r0, r5, #0
	blx sub_0208D374
	add r5, r0, #0
	add r0, r6, #0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	mov r1, #0x47
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	ldr r1, _021A7894 ; =0x42700000
	blx sub_0208E3C8
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	blx sub_0208DD34
	blx sub_0208DA80
	str r0, [sp, #8]
	ldr r0, [r7, #0x64]
	bl sub_02006BE8
	ldr r1, [sp, #8]
	cmp r1, r0
	bls _021A77C4
	ldr r0, [r7, #0x64]
	bl sub_02006BE8
	str r0, [sp, #8]
_021A77C4:
	mov r1, #0xf
	ldr r0, [sp, #0xc]
	lsl r1, r1, #6
	cmp r0, r1
	bhs _021A7866
	ldr r0, [sp, #8]
	mov r6, #0x7d
	lsl r6, r6, #2
	ldr r5, _021A7898 ; =0xFFFFFE0C
	cmp r4, r0
	bhs _021A782E
	str r5, [sp, #0x18]
	str r6, [sp, #0x14]
	str r5, [sp, #0x20]
	str r6, [sp, #0x1c]
_021A77E2:
	ldr r0, [r7, #0x64]
	bl sub_02006B90
	ldr r1, [r7, #0x34]
	mov r2, #0x2f
	ldrsb r1, [r1, r4]
	mul r2, r1
	mul r0, r2
	asr r1, r0, #6
	lsr r1, r1, #0x19
	add r1, r0, r1
	asr r1, r1, #7
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	lsl r0, r0, #9
	asr r1, r0, #0x10
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	ble _021A780E
	ldr r1, [sp, #0x14]
	b _021A7816
_021A780E:
	ldr r0, [sp, #0x20]
	cmp r1, r0
	bge _021A7816
	ldr r1, [sp, #0x18]
_021A7816:
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	cmp r0, r6
	bge _021A7820
	add r6, r0, #0
_021A7820:
	cmp r0, r5
	ble _021A7826
	add r5, r0, #0
_021A7826:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _021A77E2
_021A782E:
	cmp r6, r5
	bgt _021A7866
	mov r0, #0x36
	mvn r0, r0
	cmp r6, r0
	bge _021A783C
	add r6, r0, #0
_021A783C:
	cmp r5, #0x37
	ble _021A7842
	mov r5, #0x37
_021A7842:
	sub r0, r5, r6
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r1, [sp, #0xc]
	mov r2, #0x37
	str r0, [sp]
	mov r0, #0xf
	sub r2, r2, r5
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r7, #0x2c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_020470F8
_021A7866:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r4, r0, #1
	ldr r0, [r7, #0x64]
	bl sub_02006BE8
	cmp r4, r0
	bhs _021A787C
	b _021A775C
_021A787C:
	mov r1, #0xf
	ldr r0, [sp, #0xc]
	lsl r1, r1, #6
	cmp r0, r1
	bls _021A7888
	str r1, [sp, #0xc]
_021A7888:
	ldr r0, [sp, #0xc]
	strh r0, [r7, #0x30]
_021A788C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A7890: .word 0x447A0000
_021A7894: .word 0x42700000
_021A7898: .word 0xFFFFFE0C
	thumb_func_end ovy298_21a76b8

	thumb_func_start ovy298_21a789c
ovy298_21a789c: ; 0x021A789C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r0, [r6, #0x20]
	bl sub_020484F0
	str r0, [sp, #8]
	mov r0, #0
	mov r4, #0
	str r0, [sp, #0xc]
_021A78B0:
	ldr r1, [sp, #0xc]
	mov r0, #0x1f
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	mov r5, #0
	add r7, r0, r2
_021A78BE:
	mov r0, #0x1a
	ldrsh r0, [r6, r0]
	mov r1, #0x1f
	add r0, r5, r0
	blx sub_0208D65C
	add r0, r7, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	add r2, r1, #0
	lsl r0, r0, #0xc
	orr r2, r0
	ldr r1, [r6, #0x14]
	lsl r0, r4, #1
	strh r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x1f
	blo _021A78BE
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, #0xf
	blo _021A78B0
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r1, [r6, #0x14]
	mov r0, #3
	mov r2, #1
	mov r3, #2
	mov r4, #1
	bl sub_020454AC
	ldr r0, [r6, #0x20]
	str r4, [r6, #0x1c]
	bl BmpWin_FlushChar
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a789c

	thumb_func_start ovy298_21a7920
ovy298_21a7920: ; 0x021A7920
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021A792A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _021A793A
	add r1, r6, #0
	bl sub_0204C318
_021A793A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A792A
	mov r4, #0
	add r6, r4, #0
_021A7948:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A7948
	mov r0, #8
	str r0, [sp]
	ldr r0, _021A7984 ; =0x04000050
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0x10
	mov r4, #4
	bl G2x_SetBlendAlpha_
	ldr r0, _021A7988 ; =0x04001050
	add r1, r6, #0
	mov r2, #0x3f
	mov r3, #0xc
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A7984: .word 0x04000050
_021A7988: .word 0x04001050
	thumb_func_end ovy298_21a7920

	thumb_func_start ovy298_21a798c
ovy298_21a798c: ; 0x021A798C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	mov r6, #1
_021A7994:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _021A79A4
	add r1, r6, #0
	bl sub_0204C318
_021A79A4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A7994
	mov r4, #0
	mov r6, #1
_021A79B2:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A79B2
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219FE98
	add r5, #0xc4
	ldr r0, [r5]
	bl sub_0219FE98
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a798c

	thumb_func_start sub_021A79E0
sub_021A79E0: ; 0x021A79E0
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021A79E0

	thumb_func_start ovy298_21a79e4
ovy298_21a79e4: ; 0x021A79E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r6, _021A7AE0 ; =0x000006E4
	ldrh r2, [r7]
	add r1, r6, #0
	bl ovy298_219fcac
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	bl sub_0219FD28
	bl sub_021A08E4
	str r0, [r5]
	ldr r0, [sp, #0x18]
	bl sub_0219FD2C
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x44
_021A7A16:
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #4
	blo _021A7A16
	mov r1, #0x4f
	mov r6, #0
	lsl r1, r1, #2
_021A7A30:
	lsl r2, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r2, r5, r2
	lsr r0, r0, #0x18
	str r6, [r2, r1]
	cmp r0, #2
	blo _021A7A30
	mov r1, #0x51
	lsl r1, r1, #2
	str r6, [r5, r1]
	sub r1, #0x20
	mov r0, #1
	str r0, [r5, r1]
	ldr r0, _021A7AE4 ; =0x021A862D
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	mov r4, #0x6a
	lsl r4, r4, #4
	str r0, [r5, r4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8944
	ldrh r0, [r7]
	bl ovy298_219fdc8
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r0, [r7]
	bl ovy298_219fdc8
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0219FE98
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0219FE98
	add r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r6, #0
	bl sub_0219FE88
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	mov r0, #1
	bl sub_0219FE88
	ldrh r0, [r7]
	bl sub_0219FF90
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x10
	add r1, r4, #0
	str r6, [r5, r0]
	add r1, #0x14
	mov r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x18
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #0x34
	str r6, [r5, r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x38
	str r6, [r5, r0]
	add r1, #0x3c
	mov r0, #1
	str r0, [r5, r1]
	add r4, #0x40
	str r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A7AE0: .word 0x000006E4
_021A7AE4: .word 0x021A862D
	thumb_func_end ovy298_21a79e4

	thumb_func_start ovy298_21a7ae8
ovy298_21a7ae8: ; 0x021A7AE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r2, [sp, #4]
	add r6, r3, #0
	str r0, [sp, #0x28]
	bl sub_0219FD34
	ldr r4, _021A7BAC ; =0x000005BC
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	bl ovy298_21a02fc
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl ovy298_21a02fc
	sub r4, #8
	ldr r1, [r6, r4]
	mov r0, #7
	bl sub_021A03D4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	add r1, r6, #0
	bl ovy298_21aa550
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r7, #0x4b
	str r0, [sp, #0xc]
	add r0, #0x10
	lsl r7, r7, #2
	mov r4, #0
	str r0, [sp, #0xc]
	add r7, #0x10
_021A7B32:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r1, [r5, r7]
	cmp r1, #0
	beq _021A7B46
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy298_21a9260
_021A7B46:
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A7B32
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	add r1, r6, #0
	bl ovy298_21a91bc
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	add r1, r6, #0
	bl ovy298_21a88c8
	ldr r0, [sp, #8]
	mov r1, #0
	bl ovy298_21a1644
	ldr r4, _021A7BB0 ; =0x000006AC
	ldr r0, [r6, r4]
	bl ovy298_219ff9c
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0219FDE4
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r6, r0]
	bl sub_0219FDE4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	add r1, r6, #0
	bl ovy298_21a8974
	sub r4, #0xc
	ldr r0, [r6, r4]
	bl GFL_TCBRemove
	ldr r0, [sp]
	bl ovy298_219fccc
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A7BAC: .word 0x000005BC
_021A7BB0: .word 0x000006AC
	thumb_func_end ovy298_21a7ae8

	thumb_func_start ovy298_21a7bb4
ovy298_21a7bb4: ; 0x021A7BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r0, [sp, #0x50]
	add r7, r1, #0
	str r0, [sp, #0x50]
	str r2, [sp, #0x1c]
	add r4, r3, #0
	bl sub_0219FD28
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x50]
	bl sub_0219FD34
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x50]
	bl sub_0219FD38
	str r0, [sp, #0x2c]
	ldr r0, [r7]
	cmp r0, #9
	bls _021A7BE0
	b _021A806A
_021A7BE0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A7BEC: ; jump table
	.short _021A7C00 - _021A7BEC - 2 ; case 0
	.short _021A7D74 - _021A7BEC - 2 ; case 1
	.short _021A7D98 - _021A7BEC - 2 ; case 2
	.short _021A7D9E - _021A7BEC - 2 ; case 3
	.short _021A7E76 - _021A7BEC - 2 ; case 4
	.short _021A7ECE - _021A7BEC - 2 ; case 5
	.short _021A7F10 - _021A7BEC - 2 ; case 6
	.short _021A7F8E - _021A7BEC - 2 ; case 7
	.short _021A7FFC - _021A7BEC - 2 ; case 8
	.short _021A802C - _021A7BEC - 2 ; case 9
_021A7C00:
	mov r0, #1
	mov r5, #0
	str r0, [r7]
	add r6, r5, #0
_021A7C08:
	cmp r5, #1
	beq _021A7C2A
	cmp r5, #5
	beq _021A7C2A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r5, #0
	bl sub_02045708
_021A7C2A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	bls _021A7C08
	mov r0, #0
	mov r1, #0
	mov r5, #0
	bl sub_02044BD8
	mov r0, #2
	mov r1, #2
	bl sub_02044BD8
	mov r0, #3
	mov r1, #3
	bl sub_02044BD8
	mov r0, #6
	mov r1, #1
	bl sub_02044BD8
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	mov r0, #7
	mov r1, #2
	bl sub_02044BD8
	ldr r0, [sp, #0x30]
	mov r1, #2
	bl ovy298_21a1644
	mov r0, #1
	mov r1, #0
	mov r2, #1
	bl GX_SetGraphicsMode
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	ldrh r1, [r1]
	bl ovy298_21a08f0
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a8df8
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a8744
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21aa0e4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a94e4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a9170
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a968c
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C318
	ldr r0, [r4, #0xc]
	bl sub_0201AD7C
	str r5, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	mov r6, #0x10
	bl sub_0201AE2C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7D08
	bl sub_0201AD7C
	add r0, r4, #0
	str r5, [sp]
	add r0, #0x94
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0201AE2C
_021A7D08:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x9d
	str r0, [sp, #8]
	mov r6, #2
	str r6, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #0x24
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r0, #0
	ldrh r1, [r1]
	mov r2, #7
	mov r3, #1
	bl ovy298_21a033c
	ldr r5, _021A8020 ; =0x000005B4
	mov r1, #3
	str r0, [r4, r5]
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #3
	ldrh r0, [r0]
	mov r3, #1
	mov r6, #3
	bl ovy298_21a01c4
	add r1, r5, #4
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	ldrh r0, [r0]
	mov r1, #3
	mov r2, #4
	mov r3, #2
	bl ovy298_21a01c4
	add r1, r5, #0
	add r1, #8
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r4, r0]
	bl ovy298_21a00d8
	add r5, #0xf8
	ldr r0, [r4, r5]
	bl ovy298_21a0098
	b _021A806A
_021A7D74:
	mov r0, #2
	str r0, [r7]
	ldr r5, _021A8024 ; =0x000006A4
	mov r0, #0
	ldr r1, [r4, r5]
	bl sub_0219FE74
	add r1, r5, #4
	ldr r1, [r4, r1]
	mov r0, #1
	bl sub_0219FE74
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21abd08
	b _021A806A
_021A7D98:
	mov r0, #3
_021A7D9A:
	str r0, [r7]
	b _021A806A
_021A7D9E:
	ldr r0, [r4, #0xc]
	mov r5, #1
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7DAC
	mov r5, #0
_021A7DAC:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7DC0
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7DC0
	mov r5, #0
_021A7DC0:
	cmp r5, #0
	bne _021A7DC6
	b _021A806A
_021A7DC6:
	mov r0, #4
	str r0, [r7]
	ldr r0, _021A8028 ; =0x000006AC
	ldr r0, [r4, r0]
	bl ovy298_21a0058
	ldr r0, [sp, #0x30]
	bl sub_021A1474
	cmp r0, #2
	beq _021A7DFE
	ldr r0, [sp, #0x50]
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A7DEA
	mov r3, #0
_021A7DEA:
	ldr r0, [sp, #0x30]
	mov r1, #0
	mov r2, #3
	bl ovy298_21a1454
	ldr r0, [sp, #0x30]
	mov r1, #0
	bl sub_021A1478
	b _021A7E06
_021A7DFE:
	ldr r0, [sp, #0x30]
	mov r1, #3
	bl ovy298_21a155c
_021A7E06:
	ldr r0, [sp, #0x30]
	mov r1, #0
	bl ovy298_21a15e8
	ldr r0, [sp, #0x50]
	bl sub_0219FD24
	mov r1, #0x17
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl ovy298_21a15b4
	ldr r0, [sp, #0x2c]
	bl sub_021A2320
	cmp r0, #2
	beq _021A7E3A
	ldr r0, [sp, #0x2c]
	mov r1, #3
	bl ovy298_21a230c
	ldr r0, [sp, #0x2c]
	bl sub_021A2324
_021A7E3A:
	ldr r0, [r4, #0xc]
	bl sub_0201AD8C
	mov r6, #0
	str r6, [sp]
	mov r5, #0x10
	sub r5, #0x12
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	mov r2, #0
	add r3, r5, #0
	bl sub_0201AE2C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7F02
	bl sub_0201AD8C
	add r0, r4, #0
	str r6, [sp]
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x10
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0201AE2C
	b _021A806A
_021A7E76:
	ldr r0, [r4, #0xc]
	mov r5, #1
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7E84
	mov r5, #0
_021A7E84:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7E98
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7E98
	mov r5, #0
_021A7E98:
	ldr r0, _021A8028 ; =0x000006AC
	ldr r0, [r4, r0]
	bl sub_021A0048
	cmp r0, #0
	bne _021A7F02
	ldr r0, [sp, #0x30]
	bl sub_021A1474
	cmp r0, #2
	bne _021A7F02
	ldr r0, [sp, #0x2c]
	bl sub_021A2320
	cmp r0, #2
	bne _021A7F02
	cmp r5, #0
	beq _021A7F02
	ldr r0, [sp, #0x30]
	bl sub_021A1544
	ldr r0, [sp, #0x30]
	mov r1, #1
	bl ovy298_21a15e8
	mov r0, #5
	b _021A7D9A
_021A7ECE:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A7F04
	mov r0, #6
	mov r5, #0
	str r0, [r7]
	add r6, r5, #0
_021A7EE0:
	mov r0, #0x44
	mul r0, r5
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A7EF8
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	str r6, [sp]
	bl sub_0201AE2C
_021A7EF8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A7EE0
_021A7F02:
	b _021A806A
_021A7F04:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a9be4
	b _021A806A
_021A7F10:
	mov r0, #1
	str r0, [sp, #0x28]
	mov r5, #0
	mov r6, #0x44
_021A7F18:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A7F32
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7F32
	mov r0, #0
	str r0, [sp, #0x28]
	b _021A7F3C
_021A7F32:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A7F18
_021A7F3C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021A7F8C
	ldr r5, _021A8028 ; =0x000006AC
	mov r0, #7
	str r0, [r7]
	ldr r0, [r4, r5]
	bl ovy298_21a0078
	ldr r0, [sp, #0x2c]
	bl sub_021A2334
	add r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _021A7F64
	ldr r0, [sp, #0x30]
	mov r1, #0
	bl ovy298_21a148c
_021A7F64:
	mov r5, #0
	add r6, r5, #0
_021A7F68:
	mov r0, #0x44
	mul r0, r5
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A7F82
	mov r3, #0x10
	add r1, r6, #0
	mov r2, #0x10
	sub r3, #0x12
	str r6, [sp]
	bl sub_0201AE2C
_021A7F82:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A7F68
_021A7F8C:
	b _021A806A
_021A7F8E:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r5, #0
	mov r6, #0x44
_021A7F9A:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A7FB4
	bl sub_0201AEE8
	cmp r0, #0
	beq _021A7FB4
	mov r0, #0
	str r0, [sp, #0x20]
	b _021A7FBE
_021A7FB4:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A7F9A
_021A7FBE:
	ldr r5, _021A8028 ; =0x000006AC
	ldr r0, [r4, r5]
	bl sub_021A0048
	cmp r0, #0
	bne _021A7FF2
	ldr r0, [sp, #0x2c]
	bl sub_021A2320
	cmp r0, #0
	bne _021A7FF2
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021A7FF2
	add r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _021A7FEE
	ldr r0, [sp, #0x30]
	bl sub_021A1474
	cmp r0, #0
	bne _021A7FF2
	b _021A7FEE
_021A7FEE:
	mov r0, #1
	str r0, [sp, #0x24]
_021A7FF2:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021A806A
	mov r0, #8
	b _021A7D9A
_021A7FFC:
	mov r0, #9
	str r0, [r7]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21abd8c
	ldr r5, _021A8024 ; =0x000006A4
	mov r0, #0
	ldr r1, [r4, r5]
	bl sub_0219FE88
	add r1, r5, #4
	ldr r1, [r4, r1]
	mov r0, #1
	bl sub_0219FE88
	b _021A806A
	.align 2, 0
_021A8020: .word 0x000005B4
_021A8024: .word 0x000006A4
_021A8028: .word 0x000006AC
_021A802C:
	add r6, r4, #0
	mov r5, #0
	add r6, #0xc
	mov r7, #0x44
_021A8034:
	add r0, r5, #0
	mul r0, r7
	ldr r1, [r4, #8]
	add r0, r6, r0
	bl ovy298_21a9020
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A8034
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a8e5c
	ldr r0, [sp, #0x34]
	bl ovy298_21a0904
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl GX_SetGraphicsMode
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A806A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A809A
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0203A5D0
	ldr r0, [r4, #8]
	bl sub_02019AE8
	add r6, r4, #0
	mov r5, #0
	add r6, #0xc
_021A8086:
	mov r0, #0x44
	mul r0, r5
	add r0, r6, r0
	bl ovy298_21a9094
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A8086
_021A809A:
	ldr r0, [r7]
	cmp r0, #3
	blt _021A80E2
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21aa7b4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21aad2c
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21aaa3c
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21ab490
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21ab6f4
	ldr r5, _021A8108 ; =0x000005B8
	ldr r0, [r4, r5]
	bl ovy298_21a031c
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl ovy298_21a031c
_021A80E2:
	ldr r5, _021A810C ; =0x000006A4
	add r1, r5, #4
	ldr r0, [r4, r5]
	ldr r1, [r4, r1]
	bl ovy298_219fdec
	add r5, #8
	ldr r0, [r4, r5]
	bl ovy298_219fff8
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ovy298_21a89ac
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8108: .word 0x000005B8
_021A810C: .word 0x000006A4
	thumb_func_end ovy298_21a7bb4

	thumb_func_start ovy298_21a8110
ovy298_21a8110: ; 0x021A8110
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x44
	ldr r0, _021A8404 ; =0x00000848
	add r6, r2, #0
	add r0, sp
	ldr r1, [r0, #4]
	add r5, r3, #0
	ldr r4, [r0]
	str r1, [r0, #4]
	bne _021A812E
	b _021A85FC
_021A812E:
	add r0, r4, #0
	bl sub_0219FD34
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _021A8408 ; =0x00000698
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	str r1, [r5, r0]
	add r2, #0x3c
	str r1, [r5, r2]
	ldr r1, _021A8404 ; =0x00000848
	add r1, sp
	ldr r1, [r1, #4]
	sub r1, #0xa
	cmp r1, #0x17
	bhi _021A8194
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A815E: ; jump table
	.short _021A818E - _021A815E - 2 ; case 0
	.short _021A818E - _021A815E - 2 ; case 1
	.short _021A818E - _021A815E - 2 ; case 2
	.short _021A818E - _021A815E - 2 ; case 3
	.short _021A818E - _021A815E - 2 ; case 4
	.short _021A818E - _021A815E - 2 ; case 5
	.short _021A818E - _021A815E - 2 ; case 6
	.short _021A818E - _021A815E - 2 ; case 7
	.short _021A8194 - _021A815E - 2 ; case 8
	.short _021A8194 - _021A815E - 2 ; case 9
	.short _021A8194 - _021A815E - 2 ; case 10
	.short _021A8194 - _021A815E - 2 ; case 11
	.short _021A8194 - _021A815E - 2 ; case 12
	.short _021A8194 - _021A815E - 2 ; case 13
	.short _021A8194 - _021A815E - 2 ; case 14
	.short _021A8194 - _021A815E - 2 ; case 15
	.short _021A8194 - _021A815E - 2 ; case 16
	.short _021A8194 - _021A815E - 2 ; case 17
	.short _021A8194 - _021A815E - 2 ; case 18
	.short _021A818E - _021A815E - 2 ; case 19
	.short _021A818E - _021A815E - 2 ; case 20
	.short _021A818E - _021A815E - 2 ; case 21
	.short _021A818E - _021A815E - 2 ; case 22
	.short _021A818E - _021A815E - 2 ; case 23
_021A818E:
	ldr r1, [sp, #0x18]
	add r0, #0x1c
	str r1, [r5, r0]
_021A8194:
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0x1a
	bhi _021A81EE
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A81B0: ; jump table
	.short _021A81EE - _021A81B0 - 2 ; case 0
	.short _021A81E6 - _021A81B0 - 2 ; case 1
	.short _021A81E6 - _021A81B0 - 2 ; case 2
	.short _021A81E6 - _021A81B0 - 2 ; case 3
	.short _021A81E6 - _021A81B0 - 2 ; case 4
	.short _021A81E6 - _021A81B0 - 2 ; case 5
	.short _021A81E6 - _021A81B0 - 2 ; case 6
	.short _021A81E6 - _021A81B0 - 2 ; case 7
	.short _021A81E6 - _021A81B0 - 2 ; case 8
	.short _021A81EE - _021A81B0 - 2 ; case 9
	.short _021A81EE - _021A81B0 - 2 ; case 10
	.short _021A81EE - _021A81B0 - 2 ; case 11
	.short _021A81EE - _021A81B0 - 2 ; case 12
	.short _021A81EE - _021A81B0 - 2 ; case 13
	.short _021A81EE - _021A81B0 - 2 ; case 14
	.short _021A81EE - _021A81B0 - 2 ; case 15
	.short _021A81EE - _021A81B0 - 2 ; case 16
	.short _021A81EE - _021A81B0 - 2 ; case 17
	.short _021A81EE - _021A81B0 - 2 ; case 18
	.short _021A81EE - _021A81B0 - 2 ; case 19
	.short _021A81EE - _021A81B0 - 2 ; case 20
	.short _021A81EE - _021A81B0 - 2 ; case 21
	.short _021A81E6 - _021A81B0 - 2 ; case 22
	.short _021A81E6 - _021A81B0 - 2 ; case 23
	.short _021A81E6 - _021A81B0 - 2 ; case 24
	.short _021A81E6 - _021A81B0 - 2 ; case 25
	.short _021A81E6 - _021A81B0 - 2 ; case 26
_021A81E6:
	ldr r1, _021A840C ; =0x000006B4
	mov r0, #1
	str r0, [sp, #0x18]
	str r0, [r5, r1]
_021A81EE:
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0x1d
	ldr r0, _021A8404 ; =0x00000848
	bgt _021A822E
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0x1d
	blt _021A8204
	b _021A8394
_021A8204:
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0xd
	bgt _021A822C
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0xc
	blt _021A822C
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0xc
	beq _021A824C
	ldr r0, _021A8404 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0xd
	beq _021A82FE
_021A822C:
	b _021A84B4
_021A822E:
	add r0, sp
	ldr r0, [r0, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _021A827C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A8244: ; jump table
	.short _021A8400 - _021A8244 - 2 ; case 0
	.short _021A824C - _021A8244 - 2 ; case 1
	.short _021A82FE - _021A8244 - 2 ; case 2
	.short _021A847E - _021A8244 - 2 ; case 3
_021A824C:
	ldr r0, _021A8410 ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A8278
	add r0, r4, #0
	bl sub_0219FD40
	add r7, r0, #0
	add r0, r4, #0
	bl ovy298_219fd4c
	add r0, r4, #0
	bl sub_0219FD40
	cmp r7, r0
	beq _021A827C
_021A826C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a968c
	b _021A84B4
_021A8278:
	cmp r0, #4
	beq _021A827E
_021A827C:
	b _021A84B4
_021A827E:
	add r0, r4, #0
	bl sub_0219FD40
	add r7, r0, #0
	add r0, r4, #0
	bl ovy298_219fd4c
	add r0, r4, #0
	bl sub_0219FD40
	str r0, [sp, #0x14]
	cmp r7, r0
	beq _021A82D6
_021A8298:
	add r0, sp, #0x30
	str r0, [sp]
	add r0, sp, #0x2c
	add r0, #2
	str r0, [sp, #4]
	add r0, sp, #0x2c
	str r0, [sp, #8]
	add r0, sp, #0x28
	ldr r2, _021A8414 ; =0x00000434
	add r0, #2
	add r3, sp, #0x30
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp
	add r3, #2
	bl ovy298_21a9274
	add r0, sp, #0x20
	ldrh r0, [r0, #0x12]
	cmp r0, #2
	bhs _021A82D6
	add r0, r4, #0
	bl ovy298_219fd4c
	add r0, r4, #0
	bl sub_0219FD40
	str r0, [sp, #0x14]
	cmp r7, r0
	bne _021A8298
_021A82D6:
	ldr r0, [sp, #0x14]
	cmp r7, r0
	beq _021A839C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a968c
	add r0, sp, #0x20
	ldrh r0, [r0, #0x12]
	cmp r0, #3
	blo _021A82F4
_021A82EE:
	ldr r0, [sp, #0x1c]
	mov r1, #1
	b _021A82F8
_021A82F4:
	ldr r0, [sp, #0x1c]
	mov r1, #0
_021A82F8:
	bl ovy298_21a158c
	b _021A84B4
_021A82FE:
	ldr r0, _021A8410 ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A8320
	add r0, r4, #0
	bl sub_0219FD40
	add r7, r0, #0
	add r0, r4, #0
	bl ovy298_219fd8c
	add r0, r4, #0
	bl sub_0219FD40
	cmp r7, r0
	beq _021A839C
	b _021A826C
_021A8320:
	cmp r0, #4
	bne _021A839C
	add r0, r4, #0
	bl sub_0219FD40
	add r7, r0, #0
	add r0, r4, #0
	bl ovy298_219fd8c
	add r0, r4, #0
	bl sub_0219FD40
	str r0, [sp, #0x10]
	cmp r7, r0
	beq _021A8378
_021A833E:
	add r0, sp, #0x24
	add r0, #2
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	add r0, sp, #0x20
	add r0, #2
	str r0, [sp, #8]
	add r0, sp, #0x20
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0x34
	add r3, sp, #0x28
	bl ovy298_21a9274
	add r0, sp, #0x20
	ldrh r0, [r0, #8]
	cmp r0, #2
	bhs _021A8378
	add r0, r4, #0
	bl ovy298_219fd8c
	add r0, r4, #0
	bl sub_0219FD40
	str r0, [sp, #0x10]
	cmp r7, r0
	bne _021A833E
_021A8378:
	ldr r0, [sp, #0x10]
	cmp r7, r0
	beq _021A839C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a968c
	add r0, sp, #0x20
	ldrh r0, [r0, #8]
	cmp r0, #3
	blo _021A8392
	b _021A82EE
_021A8392:
	b _021A82F4
_021A8394:
	ldr r7, _021A8418 ; =0x00000548
	ldrh r2, [r5, r7]
	cmp r2, #3
	bhs _021A839E
_021A839C:
	b _021A84B4
_021A839E:
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r2, #0
	blx sub_0208D868
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r1, r7, #0
	add r0, r7, #6
	add r1, #8
	ldrh r0, [r5, r0]
	ldrh r1, [r5, r1]
	cmp r0, r1
	bne _021A83EA
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	ldrh r1, [r5, r7]
	blx sub_0208D868
	add r7, #8
	strh r1, [r5, r7]
_021A83EA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a9ae4
	ldr r0, _021A8408 ; =0x00000698
	mov r1, #1
	str r1, [r5, r0]
	add r0, #0x3c
	str r1, [r5, r0]
	b _021A84B4
_021A8400:
	ldr r7, _021A8418 ; =0x00000548
	b _021A841C
	.align 2, 0
_021A8404: .word 0x00000848
_021A8408: .word 0x00000698
_021A840C: .word 0x000006B4
_021A8410: .word 0x000006B8
_021A8414: .word 0x00000434
_021A8418: .word 0x00000548
_021A841C:
	ldrh r2, [r5, r7]
	cmp r2, #3
	blo _021A84B4
	add r0, r7, #0
	add r0, #8
	ldrh r1, [r5, r0]
	sub r0, r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r2, #0
	blx sub_0208D868
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r1, r7, #0
	add r0, r7, #6
	add r1, #8
	ldrh r0, [r5, r0]
	ldrh r1, [r5, r1]
	cmp r0, r1
	bne _021A847C
	ldrh r2, [r5, r7]
	add r0, r7, #0
	add r0, #8
	sub r1, r2, #1
	lsl r1, r1, #0x10
	ldrh r0, [r5, r0]
	lsr r1, r1, #0x10
	add r1, r0, r1
	add r0, r7, #0
	add r0, #8
	strh r1, [r5, r0]
	add r0, r7, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r2, #0
	blx sub_0208D868
	add r7, #8
	strh r1, [r5, r7]
_021A847C:
	b _021A83EA
_021A847E:
	ldr r0, _021A8608 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A84A4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ovy298_21a9dbc
	ldr r1, _021A860C ; =0x000006D8
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #4
	mov r2, #0
	str r2, [r5, r0]
	add r1, #8
	str r2, [r5, r1]
	b _021A84B4
_021A84A4:
	ldr r1, _021A860C ; =0x000006D8
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0
	add r1, #8
	str r0, [r5, r1]
_021A84B4:
	ldr r0, _021A8610 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	cmp r0, #0x1a
	bls _021A84C0
	b _021A85F0
_021A84C0:
	ldr r0, _021A8610 ; =0x00000848
	add r0, sp
	ldr r0, [r0, #4]
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A84D2: ; jump table
	.short _021A85FC - _021A84D2 - 2 ; case 0
	.short _021A8508 - _021A84D2 - 2 ; case 1
	.short _021A8508 - _021A84D2 - 2 ; case 2
	.short _021A8530 - _021A84D2 - 2 ; case 3
	.short _021A8542 - _021A84D2 - 2 ; case 4
	.short _021A8554 - _021A84D2 - 2 ; case 5
	.short _021A851C - _021A84D2 - 2 ; case 6
	.short _021A851C - _021A84D2 - 2 ; case 7
	.short _021A851C - _021A84D2 - 2 ; case 8
	.short _021A85F0 - _021A84D2 - 2 ; case 9
	.short _021A85F0 - _021A84D2 - 2 ; case 10
	.short _021A85F0 - _021A84D2 - 2 ; case 11
	.short _021A85F0 - _021A84D2 - 2 ; case 12
	.short _021A85F0 - _021A84D2 - 2 ; case 13
	.short _021A85F0 - _021A84D2 - 2 ; case 14
	.short _021A85F0 - _021A84D2 - 2 ; case 15
	.short _021A85F0 - _021A84D2 - 2 ; case 16
	.short _021A85F0 - _021A84D2 - 2 ; case 17
	.short _021A85F0 - _021A84D2 - 2 ; case 18
	.short _021A85F0 - _021A84D2 - 2 ; case 19
	.short _021A85F0 - _021A84D2 - 2 ; case 20
	.short _021A85A2 - _021A84D2 - 2 ; case 21
	.short _021A857E - _021A84D2 - 2 ; case 22
	.short _021A8590 - _021A84D2 - 2 ; case 23
	.short _021A8530 - _021A84D2 - 2 ; case 24
	.short _021A8542 - _021A84D2 - 2 ; case 25
	.short _021A85C2 - _021A84D2 - 2 ; case 26
_021A8508:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #0x6b
	add sp, #0x1fc
	mov r1, #2
	lsl r0, r0, #4
	add sp, #0x44
	str r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_021A851C:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #0x6b
	add sp, #0x1fc
	mov r1, #1
	lsl r0, r0, #4
	add sp, #0x44
	str r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_021A8530:
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A8542:
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A8554:
	add r0, r4, #0
	bl sub_0219FD24
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ovy298_21a15cc
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x17
	bl sub_02017644
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A857E:
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A8590:
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A85A2:
	ldr r0, _021A8614 ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021A85FC
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #6
	bl ovy298_21a9dbc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A85C2:
	ldr r1, _021A860C ; =0x000006D8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021A85FC
	add r0, r1, #0
	mov r2, #1
	add r0, #8
	str r2, [r5, r0]
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A85FC
	mov r0, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021A85F0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021A85FC
	ldr r0, [sp, #0x1c]
	bl sub_021A1544
_021A85FC:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A8608: .word 0x00000548
_021A860C: .word 0x000006D8
_021A8610: .word 0x00000848
_021A8614: .word 0x000006B8
	thumb_func_end ovy298_21a8110

	thumb_func_start ovy298_21a8618
ovy298_21a8618: ; 0x021A8618
	push {r3, lr}
	cmp r3, #0
	beq _021A8628
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _021A8628
	bl sub_02019C0C
_021A8628:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy298_21a8618
_021A862C:
	.byte 0x01, 0x48, 0x02, 0x4B
	.byte 0x08, 0x58, 0x18, 0x47, 0xAC, 0x06, 0x00, 0x00, 0x3D, 0x00, 0x1A, 0x02

	thumb_func_start ovy298_21a863c
ovy298_21a863c: ; 0x021A863C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, r2, #0
	add r5, r1, #0
	str r3, [sp, #4]
	mov r6, #0
	mov r7, #0
	bl sub_0219FD40
	add r4, r0, #0
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r2, r5, r0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021A8676
	cmp r1, #1
	beq _021A86AE
	cmp r1, #2
	beq _021A86C6
	b _021A86F6
_021A8676:
	ldr r0, [sp]
	ldrh r0, [r0]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x18]
	ldr r0, _021A8730 ; =0x000005A4
	ldr r1, [sp]
	ldr r0, [r5, r0]
	ldrh r1, [r1]
	str r0, [sp, #0xc]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020243D0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x18]
	bl GFL_WordSetSystemFree
	b _021A86F2
_021A86AE:
	add r0, #8
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _021A86BC
	cmp r0, #1
	beq _021A86C2
	b _021A86F6
_021A86BC:
	ldr r0, _021A8734 ; =0x000005A8
_021A86BE:
	ldr r7, [r5, r0]
	b _021A86F6
_021A86C2:
	ldr r0, _021A8738 ; =0x000005AC
	b _021A86BE
_021A86C6:
	add r0, #8
	ldrh r0, [r2, r0]
	add r1, r6, #0
	cmp r0, #0
	beq _021A86E6
	ldr r2, _021A873C ; =0x00000594
	ldr r2, [r5, r2]
_021A86D4:
	lsl r3, r4, #1
	ldrh r4, [r2, r3]
	cmp r4, #0
	beq _021A86E6
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _021A86D4
_021A86E6:
	ldr r0, _021A8740 ; =0x00000598
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r7, r0, #0
_021A86F2:
	mov r0, #1
	str r0, [sp, #0x14]
_021A86F6:
	ldr r0, [sp, #8]
	add r1, r5, r0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021A8716
	cmp r0, #1
	beq _021A8716
	cmp r0, #2
	bne _021A8716
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x10]
_021A8716:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x34]
	str r7, [r0]
	ldr r0, [sp, #0x30]
	str r6, [r0]
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x10]
	str r0, [r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A8730: .word 0x000005A4
_021A8734: .word 0x000005A8
_021A8738: .word 0x000005AC
_021A873C: .word 0x00000594
_021A8740: .word 0x00000598
	thumb_func_end ovy298_21a863c

	thumb_func_start ovy298_21a8744
ovy298_21a8744: ; 0x021A8744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r3, _021A88B8 ; =0x021AC88C
	add r5, r1, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0xc]
	add r2, sp, #0x20
	mov r1, #0x23
_021A8754:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A8754
	mov r6, #0
	str r6, [sp]
	mov r4, #0x20
	ldr r0, [sp, #0xc]
	str r4, [sp, #4]
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #8]
	mov r0, #0x17
	mov r3, #0
	bl sub_0204B0F0
	str r6, [sp]
	ldr r0, [sp, #0xc]
	str r4, [sp, #4]
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0x17
	mov r3, #0
	bl sub_0204B0F0
	add r4, r6, #0
_021A8792:
	mov r0, #7
	mul r0, r6
	add r1, sp, #0x20
	add r3, r1, r0
	lsl r1, r6, #2
	add r7, r5, r1
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #6]
	str r1, [sp, #8]
	add r1, sp, #0x20
	ldrb r0, [r1, r0]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	ldr r1, _021A88BC ; =0x00000554
	str r0, [r7, r1]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	bl BmpWin_BitmapFill
	ldr r0, _021A88BC ; =0x00000554
	ldr r0, [r7, r0]
	bl BmpWin_FlushChar
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _021A8792
	ldr r3, [sp, #0xc]
	ldr r6, _021A88C0 ; =0x000001B9
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	mov r7, #0x59
	lsl r7, r7, #4
	str r0, [r5, r7]
	ldr r3, [sp, #0xc]
	add r6, #9
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	add r1, r7, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r3, [sp, #0xc]
	mov r0, #0x61
	ldrh r3, [r3]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0204B570
	add r1, r7, #4
	str r0, [r5, r1]
	add r0, r7, #0
	sub r0, #0x34
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r6, r0, #0
	ldr r0, [r5, r7]
	mov r1, #0xb9
	bl sub_0204898C
	str r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [r5, r7]
	mov r1, #0xba
	bl sub_0204898C
	str r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_02021C7C
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r1, r7, #0
	sub r1, #0x20
	mov r0, #1
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	mov r3, #2
	bl ovy298_21a89e0
	add r6, r7, #0
	add r6, #0xc
_021A8896:
	ldr r1, _021A88C4 ; =0x021AC7F0
	lsl r2, r4, #1
	ldrh r1, [r1, r2]
	ldr r0, [r5, r7]
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A8896
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021A88B8: .word 0x021AC88C
_021A88BC: .word 0x00000554
_021A88C0: .word 0x000001B9
_021A88C4: .word 0x021AC7F0
	thumb_func_end ovy298_21a8744

	thumb_func_start ovy298_21a88c8
ovy298_21a88c8: ; 0x021A88C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _021A893C ; =0x00000568
	mov r4, #0
	str r0, [sp, #4]
	add r0, #0x14
	str r0, [sp, #4]
	ldr r0, _021A893C ; =0x00000568
	add r7, r1, #0
	str r0, [sp]
	sub r0, #0x14
	add r5, r4, #0
	str r0, [sp]
_021A88E2:
	lsl r0, r4, #2
	add r6, r7, r0
	ldr r0, _021A893C ; =0x00000568
	str r5, [r6, r0]
	ldr r0, [sp, #4]
	ldr r0, [r6, r0]
	bl sub_02021C44
	ldr r0, [sp]
	ldr r0, [r6, r0]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A88E2
	ldr r4, _021A8940 ; =0x0000059C
_021A8906:
	lsl r0, r5, #2
	add r0, r7, r0
	ldr r0, [r0, r4]
	bl GFL_StrBufFree
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A8906
	mov r4, #0x59
	lsl r4, r4, #4
	ldr r0, [r7, r4]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r7, r0]
	bl GFL_MsgDataFree
	add r0, r4, #4
	ldr r0, [r7, r0]
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A893C: .word 0x00000568
_021A8940: .word 0x0000059C
	thumb_func_end ovy298_21a88c8

	thumb_func_start ovy298_21a8944
ovy298_21a8944: ; 0x021A8944
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A8970 ; =0x0000057C
	add r7, r0, #0
	str r1, [sp]
	mov r4, #0
	sub r6, #0x14
_021A8950:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	ldrh r0, [r7]
	bl sub_02021998
	ldr r1, _021A8970 ; =0x0000057C
	str r0, [r5, r1]
	mov r0, #0
	str r0, [r5, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A8950
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8970: .word 0x0000057C
	thumb_func_end ovy298_21a8944

	thumb_func_start ovy298_21a8974
ovy298_21a8974: ; 0x021A8974
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A89A8 ; =0x00000568
	ldr r6, _021A89A8 ; =0x00000568
	str r1, [sp]
	mov r4, #0
	add r7, #0x14
	add r6, #0x14
_021A8982:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	ldr r0, _021A89A8 ; =0x00000568
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, [r5, r7]
	bl sub_02021C44
	ldr r0, [r5, r6]
	bl sub_02021A18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A8982
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A89A8: .word 0x00000568
	thumb_func_end ovy298_21a8974

	thumb_func_start ovy298_21a89ac
ovy298_21a89ac: ; 0x021A89AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
_021A89B6:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021A89DC ; =0x0000057C
	ldr r0, [r1, r0]
	bl sub_02021A3C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy298_21a89e0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A89B6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A89DC: .word 0x0000057C
	thumb_func_end ovy298_21a89ac

	thumb_func_start ovy298_21a89e0
ovy298_21a89e0: ; 0x021A89E0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A8A30 ; =0x00000568
	add r5, r1, #0
	lsl r4, r3, #2
	add r7, r5, r6
	ldr r0, [r7, r4]
	cmp r0, #0
	beq _021A8A2C
	add r0, r6, #0
	sub r0, #0x14
	add r0, r5, r0
	str r0, [sp]
	ldr r0, [r0, r4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, r4
	add r6, #0x14
	ldr r0, [r0, r6]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A8A2C
	ldr r0, [sp]
	ldr r5, [r0, r4]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r7, r4]
_021A8A2C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8A30: .word 0x00000568
	thumb_func_end ovy298_21a89e0

	thumb_func_start ovy298_21a8a34
ovy298_21a8a34: ; 0x021A8A34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0xc]
	ldr r0, _021A8BDC ; =0x00000568
	mov r6, #0
	str r0, [sp, #0x34]
	add r0, #0x14
	str r0, [sp, #0x34]
	ldr r0, _021A8BDC ; =0x00000568
	add r5, r1, #0
	str r0, [sp, #0x30]
	sub r0, #0x14
	str r2, [sp, #0x10]
	add r4, r6, #0
	str r0, [sp, #0x30]
_021A8A52:
	lsl r0, r6, #2
	add r7, r5, r0
	ldr r0, _021A8BDC ; =0x00000568
	str r4, [r7, r0]
	ldr r0, [sp, #0x34]
	ldr r0, [r7, r0]
	bl sub_02021C44
	ldr r0, [sp, #0x30]
	ldr r0, [r7, r0]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	bl BmpWin_BitmapFill
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bls _021A8A52
	ldr r0, [sp, #0x10]
	bl sub_0219FD40
	ldr r6, _021A8BE0 ; =0x00000554
	add r7, r0, #0
	ldr r0, [r5, r6]
	bl BmpWin_GetBitmap
	str r0, [sp, #0x1c]
	ldr r0, _021A8BE4 ; =0x0209A434
	add r1, r7, #0
	ldr r0, [r0]
	bl sub_0204898C
	ldr r1, [r5, #4]
	add r2, r4, #0
	str r0, [sp, #0x20]
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #0x1c]
	bl sub_02046EF8
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	sub r3, r2, r7
	str r0, [sp]
	ldr r0, [r5, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r2, r2, #0xf
	add r0, #0x28
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_02021C7C
	add r1, r6, #0
	add r1, #0x14
	mov r0, #1
	str r0, [r5, r1]
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x28]
	add r0, r6, #0
	ldr r1, [sp, #0xc]
	add r0, #0x48
	ldr r0, [r5, r0]
	ldrh r1, [r1]
	str r0, [sp, #0x18]
	mov r0, #8
	bl GFL_StrBufCreate
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r2, r6, #0
	str r0, [sp, #4]
	sub r2, #0xa
	ldrh r2, [r5, r2]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	str r7, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #1
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x28]
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x2c]
	add r0, r6, #0
	ldr r1, [sp, #0xc]
	add r0, #0x4c
	ldr r0, [r5, r0]
	ldrh r1, [r1]
	str r0, [sp, #0x14]
	mov r0, #8
	bl GFL_StrBufCreate
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r2, r6, #0
	str r0, [sp, #4]
	sub r2, #8
	ldrh r2, [r5, r2]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	str r7, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #0x11
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x2c]
	bl GFL_WordSetSystemFree
	add r6, #0x18
	mov r0, #1
	str r0, [r5, r6]
_021A8BC0:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	add r3, r4, #0
	bl ovy298_21a89e0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #1
	bls _021A8BC0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8BDC: .word 0x00000568
_021A8BE0: .word 0x00000554
_021A8BE4: .word 0x0209A434
	thumb_func_end ovy298_21a8a34

	thumb_func_start ovy298_21a8be8
ovy298_21a8be8: ; 0x021A8BE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	ldr r0, [sp, #0x44]
	add r5, r1, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl BmpWin_GetBitmap
	str r0, [sp, #0x18]
	bl sub_02046EF8
	add r6, r0, #0
	add r0, sp, #0x24
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	add r0, sp, #0x40
	ldrh r0, [r0, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r3, sp, #0x28
	bl ovy298_21a863c
	ldr r0, [sp, #0x24]
	mov r4, #1
	cmp r0, #0
	bne _021A8C2A
	mov r4, #9
_021A8C2A:
	ldr r0, [sp, #0x28]
	ldr r1, [r5, #4]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x28]
	sub r3, r6, r2
	str r0, [sp]
	ldr r0, [r5, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r2, r2, #0xf
	lsl r0, r0, #6
	lsr r2, r2, #0x10
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021A8C9C
	ldr r1, [r5, #4]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x24]
	sub r3, r6, r2
	str r0, [sp]
	ldr r0, [r5, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r2, r2, #0xf
	lsl r0, r0, #6
	lsr r2, r2, #0x10
	mov r3, #0x11
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
_021A8C9C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021A8CAC
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _021A8CAC
	bl GFL_StrBufFree
_021A8CAC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021A8CBC
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _021A8CBC
	bl GFL_StrBufFree
_021A8CBC:
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r1, [r0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a89e0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a8be8

	thumb_func_start ovy298_21a8cd4
ovy298_21a8cd4: ; 0x021A8CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _021A8D28 ; =0x00000574
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r7, r2, #0
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, r4
	sub r4, #0x26
	str r0, [sp, #8]
	ldrh r0, [r5, r4]
	mov r3, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ovy298_21a8be8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8D28: .word 0x00000574
	thumb_func_end ovy298_21a8cd4

	thumb_func_start ovy298_21a8d2c
ovy298_21a8d2c: ; 0x021A8D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _021A8DA8 ; =0x00000578
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r7, r2, #0
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, _021A8DAC ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A8D66
	cmp r0, #4
	beq _021A8D72
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A8D66:
	sub r4, #0x14
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A8D72:
	add r0, r4, #0
	sub r0, #0x30
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A8DA2
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, r4
	sub r4, #0x28
	str r0, [sp, #8]
	ldrh r0, [r5, r4]
	mov r3, #4
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ovy298_21a8be8
_021A8DA2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8DA8: .word 0x00000578
_021A8DAC: .word 0x000006B8
	thumb_func_end ovy298_21a8d2c

	thumb_func_start ovy298_21a8db0
ovy298_21a8db0: ; 0x021A8DB0
	push {r3, lr}
	ldr r0, _021A8DF0 ; =0x000006B8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021A8DC0
	cmp r0, #4
	beq _021A8DCE
	pop {r3, pc}
_021A8DC0:
	mov r2, #0
	mov r0, #2
	mov r1, #0
	sub r2, #0x40
	bl sub_02045E1C
	pop {r3, pc}
_021A8DCE:
	ldr r0, _021A8DF4 ; =0x00000548
	ldrh r0, [r1, r0]
	cmp r0, #2
	blo _021A8DE2
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	pop {r3, pc}
_021A8DE2:
	mov r2, #0
	mov r0, #2
	mov r1, #0
	sub r2, #0x40
	bl sub_02045E1C
	pop {r3, pc}
	.align 2, 0
_021A8DF0: .word 0x000006B8
_021A8DF4: .word 0x00000548
	thumb_func_end ovy298_21a8db0

	thumb_func_start ovy298_21a8df8
ovy298_21a8df8: ; 0x021A8DF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	mov r0, #4
	bl sub_020199E8
	str r0, [r4, #8]
	mov r1, #0
	bl sub_0201AEFC
	ldr r0, [r4, #8]
	bl sub_0201AACC
	bl sub_02033768
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02019B98
	mov r0, #4
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A8E54 ; =0x00000A53
	ldr r3, _021A8E58 ; =0x021ACEC4
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #0
	bl GFL_HeapAllocate
	mov r5, #0x47
	add r1, r0, #0
	lsl r5, r5, #2
	mov r0, #4
	str r1, [r4, r5]
	bl sub_0203A58C
	add r1, r0, #0
	add r0, r5, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	bl sub_02019BCC
	pop {r3, r4, r5, pc}
	nop
_021A8E54: .word 0x00000A53
_021A8E58: .word 0x021ACEC4
	thumb_func_end ovy298_21a8df8

	thumb_func_start ovy298_21a8e5c
ovy298_21a8e5c: ; 0x021A8E5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	bl sub_02019BB4
	ldr r0, [r4, #8]
	bl sub_02019A88
	mov r5, #0x12
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0203A610
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a8e5c

	thumb_func_start ovy298_21a8e80
ovy298_21a8e80: ; 0x021A8E80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r3, #0
	ldr r3, _021A8EF0 ; =0x021AC860
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021A8EF4 ; =0x00000147
	cmp r4, r0
	bne _021A8EA6
	ldr r1, [sp, #0x5c]
	add r0, r5, #0
	bl sub_0201C188
_021A8EA6:
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201C044
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0201A8A8
	add r4, r0, #0
	mov r1, #1
	bl sub_0201AECC
	add r0, r4, #0
	bl sub_0201ACE0
	add r0, r4, #0
	add r1, sp, #0x30
	bl sub_0201AB88
	add r0, r4, #0
	bl ovy298_21a8f10
	add r0, r4, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A8EF0: .word 0x021AC860
_021A8EF4: .word 0x00000147
	thumb_func_end ovy298_21a8e80

	thumb_func_start ovy298_21a8ef8
ovy298_21a8ef8: ; 0x021A8EF8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201AD7C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201AA80
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a8ef8

	thumb_func_start ovy298_21a8f10
ovy298_21a8f10: ; 0x021A8F10
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0201ADF0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0
	blx sub_0208E144
	add r1, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #0x16
	blx sub_0208DD34
	mov r1, #0
	add r5, r0, #0
	blx sub_0208D1D0
	ldr r0, _021A8F74 ; =0x45800000
	bls _021A8F4E
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A8F5C
_021A8F4E:
	add r1, r5, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A8F5C:
	blx sub_0208DA4C
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201AB54
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021A8F74: .word 0x45800000
	thumb_func_end ovy298_21a8f10

	thumb_func_start ovy298_21a8f78
ovy298_21a8f78: ; 0x021A8F78
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_0201AB0C
	ldr r0, _021A8FA4 ; =0x021ACEA0
	ldr r2, [sp]
	ldr r1, [r0, #0x18]
	add r1, r2, r1
	str r1, [r4]
	ldr r2, [sp, #4]
	ldr r1, [r0, #0x1c]
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x20]
	add r0, r1, r0
	str r0, [r4, #8]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A8FA4: .word 0x021ACEA0
	thumb_func_end ovy298_21a8f78

	thumb_func_start ovy298_21a8fa8
ovy298_21a8fa8: ; 0x021A8FA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r3, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r6, r1, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl ovy298_21a8e80
	str r0, [r5]
	ldr r0, _021A9014 ; =0x00000AB1
	ldr r3, _021A9018 ; =0x021ACEC4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r5, #4]
	ldr r0, [r5]
	bl sub_0201ADC4
	ldr r2, [r5, #4]
	ldr r3, _021A901C ; =0x021A90C9
	mov r1, #1
	bl sub_02060618
	ldr r0, [sp, #0x28]
	add r5, #8
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ovy298_21abe00
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A9014: .word 0x00000AB1
_021A9018: .word 0x021ACEC4
_021A901C: .word 0x021A90C9
	thumb_func_end ovy298_21a8fa8

	thumb_func_start ovy298_21a9020
ovy298_21a9020: ; 0x021A9020
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4]
	cmp r2, #0
	beq _021A9032
	add r0, r1, #0
	add r1, r2, #0
	bl ovy298_21a8ef8
_021A9032:
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A9040
	bl GFL_HeapFree
_021A9040:
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9020

	thumb_func_start sub_021A9048
sub_021A9048: ; 0x021A9048
	str r1, [r0]
	mov r1, #0
	str r2, [r0, #4]
	strb r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A9048

	thumb_func_start ovy298_21a9054
ovy298_21a9054: ; 0x021A9054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A907C
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021A907C
	bl sub_0201ADC4
	ldr r1, [r4, #4]
	mov r2, #0
	strb r2, [r1, #8]
	ldr r1, [r4, #4]
	str r2, [r1, #0xc]
	bl sub_020618C0
	ldr r0, [r4]
	bl sub_0201AD28
_021A907C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9054

	thumb_func_start sub_021A9080
sub_021A9080: ; 0x021A9080
	ldr r1, [r0]
	cmp r1, #0
	beq _021A9090
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021A9090
	mov r0, #1
	str r0, [r1, #0xc]
_021A9090:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9080

	thumb_func_start ovy298_21a9094
ovy298_21a9094: ; 0x021A9094
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021A90C4
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _021A90C4
	bl sub_0201ADC4
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A90C4
	ldr r0, [r5]
	bl sub_0201ACE0
	add r0, r4, #0
	bl sub_020618C0
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0xc]
_021A90C4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9094
_021A90C8:
	.byte 0x02, 0x7A, 0x41, 0x68, 0x52, 0x1C, 0x02, 0x72
	.byte 0x02, 0x7A, 0x02, 0x2A, 0x01, 0xD3, 0x01, 0x22, 0xC2, 0x60, 0x02, 0x68, 0x44, 0x20, 0x50, 0x43
	.byte 0x08, 0x18, 0xC0, 0x68, 0x00, 0x4B, 0x18, 0x47, 0x5D, 0xB2, 0x01, 0x02

	thumb_func_start ovy298_21a90ec
ovy298_21a90ec: ; 0x021A90EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x49
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021A9116
	ldr r0, [r4, #0xc]
	bl sub_0201AD7C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A9112
	bl sub_0201AD7C
_021A9112:
	mov r1, #0
	b _021A912C
_021A9116:
	ldr r0, [r4, #0x50]
	bl sub_0201AD7C
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A912A
	bl sub_0201AD7C
_021A912A:
	mov r1, #1
_021A912C:
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a97dc
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A915A
	ldr r0, [r4, #0xc]
	bl sub_0201AD8C
	add r4, #0x94
	ldr r0, [r4]
	cmp r0, #0
	beq _021A916C
	bl sub_0201AD8C
	pop {r4, r5, r6, pc}
_021A915A:
	ldr r0, [r4, #0x50]
	bl sub_0201AD8C
	add r4, #0xd8
	ldr r0, [r4]
	cmp r0, #0
	beq _021A916C
	bl sub_0201AD8C
_021A916C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy298_21a90ec

	thumb_func_start ovy298_21a9170
ovy298_21a9170: ; 0x021A9170
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldrh r1, [r6]
	mov r0, #7
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0x4a
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r6]
	mov r2, #1
	mov r3, #0
	str r0, [sp]
	ldr r0, [r5, r4]
	bl sub_0204BC48
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	bl sub_02021154
	add r7, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	ldrh r3, [r6]
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl Oam_LoadNCERFile
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9170

	thumb_func_start ovy298_21a91bc
ovy298_21a91bc: ; 0x021A91BC
	push {r3, r4, r5, lr}
	mov r4, #0x4e
	add r5, r1, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204BE64
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl GFL_ArcToolFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy298_21a91bc

	thumb_func_start ovy298_21a91dc
ovy298_21a91dc: ; 0x021A91DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x80
	add r1, sp, #0xc
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	strb r0, [r1, #6]
	mov r0, #0
	strb r0, [r1, #7]
	add r6, r2, #0
	add r7, r3, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl sub_02020F94
	add r1, r0, #0
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r5, #0
	bl Oam_LoadNCGRFile
	str r0, [r4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	add r2, r6, #0
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r1, [r4]
	bl Oam_CreateSprite
	mov r1, #0
	add r4, r0, #0
	bl sub_0204C520
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl sub_02021034
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_0204C378
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C318
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy298_21a91dc

	thumb_func_start ovy298_21a9260
ovy298_21a9260: ; 0x021A9260
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0204C108
	add r0, r4, #0
	bl sub_0204B98C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9260

	thumb_func_start ovy298_21a9274
ovy298_21a9274: ; 0x021A9274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r5, r0, #0
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x88]
	ldr r0, [sp, #0x8c]
	str r2, [sp, #8]
	ldr r3, _021A94DC ; =0x021AC86C
	add r4, r1, #0
	str r0, [sp, #0x8c]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021A94E0 ; =0x021AC858
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
	add r0, r4, #0
	bl sub_0219FD40
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl sub_0219FD24
	bl sub_0200D190
	str r0, [sp, #0x30]
	ldrh r2, [r5]
	ldr r0, [sp, #0x34]
	mov r1, #0
	mov r4, #0
	bl sub_02020274
	add r6, r0, #0
	mov r1, #0x20
	bl sub_020202AC
	add r0, r6, #0
	mov r1, #0x14
	bl sub_020202AC
	str r0, [sp, #0x2c]
	add r0, r6, #0
	bl sub_020202A4
	ldr r0, [sp, #0x34]
	bl sub_0200D3A8
	add r6, r0, #0
	add r0, sp, #0x48
	str r0, [sp]
	ldrh r0, [r5]
	add r2, sp, #0x50
	add r3, sp, #0x4c
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl sub_0200D3C8
	mov r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x5c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _021A930E
	cmp r0, #0xfe
	beq _021A9314
	cmp r0, #0xff
	beq _021A9318
	b _021A931E
_021A930E:
	mov r0, #1
	str r0, [sp, #0x5c]
	b _021A9324
_021A9314:
	mov r0, #1
	b _021A9322
_021A9318:
	mov r0, #1
	str r0, [sp, #0x64]
	b _021A9324
_021A931E:
	mov r0, #1
	str r0, [sp, #0x5c]
_021A9322:
	str r0, [sp, #0x60]
_021A9324:
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	bhi _021A932E
	b _021A9444
_021A932E:
	mov r1, #0
	add r0, sp, #0x40
	str r1, [sp, #0x24]
	str r1, [r0]
	ldr r1, [sp, #0x24]
	str r1, [r0, #4]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x38]
_021A9342:
	ldr r0, [sp, #0x24]
	lsl r1, r0, #2
	add r0, sp, #0x5c
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A942A
	add r0, sp, #0x68
	ldr r7, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_021A935C:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, sp, #0x54
	lsl r0, r0, #2
	ldr r5, [r1, r0]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _021A9382
	ldr r1, [sp, #0x4c]
	cmp r1, r5
	bne _021A9382
	ldr r1, [sp, #0x50]
	cmp r1, r7
	bne _021A9382
	str r4, [sp, #0x28]
	b _021A93A6
_021A9382:
	cmp r6, #2
	blo _021A9392
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _021A9392
	ldr r0, [sp, #0x4c]
	cmp r0, r5
	beq _021A93AA
_021A9392:
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	add r3, r5, #0
	bl sub_0200D8D4
	cmp r0, #0
	beq _021A93AA
_021A93A6:
	mov r0, #1
	str r0, [sp, #0x1c]
_021A93AA:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021A941C
	cmp r6, #2
	blo _021A93BE
	ldr r0, [sp, #0x10]
	add r1, sp, #0x40
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021A93C2
_021A93BE:
	cmp r6, #2
	bhs _021A941C
_021A93C2:
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r1, sp, #0x40
	str r2, [r1, r0]
	cmp r6, #2
	blo _021A93E6
	ldr r0, [sp, #8]
	lsl r3, r4, #4
	mov r1, #2
	add r2, r0, r3
	str r1, [r0, r3]
	add r0, r1, #0
	cmp r5, #0
	bne _021A93E0
	mov r0, #1
_021A93E0:
	str r0, [r2, #4]
	ldr r0, [sp, #0x38]
	b _021A940A
_021A93E6:
	ldr r0, [sp, #0x2c]
	mov r1, #0
	cmp r0, #0xff
	beq _021A93F0
	add r1, r2, #0
_021A93F0:
	ldr r0, [sp, #8]
	lsl r3, r4, #4
	add r2, r0, r3
	str r1, [r0, r3]
	mov r0, #2
	cmp r5, #0
	bne _021A9400
	mov r0, #1
_021A9400:
	str r0, [r2, #4]
	mov r0, #1
	cmp r7, #1
	beq _021A940A
	mov r0, #0
_021A940A:
	strh r0, [r2, #8]
	ldr r0, [sp, #0x3c]
	strb r0, [r2, #0xa]
	ldr r0, [sp, #0x38]
	strb r5, [r2, #0xb]
	strh r0, [r2, #0xc]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_021A941C:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #2
	blo _021A935C
_021A942A:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	blo _021A9342
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	bhs _021A9444
	b _021A932E
_021A9444:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x90]
	strh r4, [r0]
	ldr r0, [sp, #0x28]
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	add r0, r0, #1
	blx sub_0208D65C
	ldr r0, [sp, #0x94]
	strh r1, [r0]
	ldr r1, [sp, #0x88]
	mov r0, #0
	strh r0, [r1]
	ldr r1, [sp, #0x8c]
	strh r0, [r1]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r1, #0
	ble _021A9492
_021A946E:
	ldr r1, [sp, #8]
	lsl r2, r0, #4
	add r1, r1, r2
	ldr r1, [r1, #4]
	cmp r1, #2
	bne _021A9484
	ldr r1, [sp, #0x8c]
	ldrh r1, [r1]
	add r2, r1, #1
	ldr r1, [sp, #0x8c]
	strh r2, [r1]
_021A9484:
	ldr r1, [sp, #0xc]
	add r0, r0, #1
	ldrh r1, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	blt _021A946E
_021A9492:
	mov r2, #0
	cmp r1, #0
	ble _021A94D6
	mov r0, #1
_021A949A:
	ldr r3, [sp, #8]
	lsl r4, r2, #4
	ldr r1, [sp, #8]
	ldr r3, [r3, r4]
	add r1, r1, r4
	cmp r3, #0
	bne _021A94AE
	ldr r1, [sp, #0x88]
	strh r0, [r1]
	b _021A94C8
_021A94AE:
	cmp r2, #0
	beq _021A94BA
	ldrh r4, [r1, #8]
	ldr r3, [sp, #0x18]
	cmp r3, r4
	beq _021A94C8
_021A94BA:
	ldrh r1, [r1, #8]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x88]
	ldrh r1, [r1]
	add r3, r1, #1
	ldr r1, [sp, #0x88]
	strh r3, [r1]
_021A94C8:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r2, r1
	blt _021A949A
_021A94D6:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021A94DC: .word 0x021AC86C
_021A94E0: .word 0x021AC858
	thumb_func_end ovy298_21a9274

	thumb_func_start ovy298_21a94e4
ovy298_21a94e4: ; 0x021A94E4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021A9518 ; =0x0000054A
	add r3, r1, #0
	add r1, r3, r4
	str r1, [sp]
	add r1, r4, #2
	add r1, r3, r1
	str r1, [sp, #4]
	add r1, r4, #4
	add r1, r3, r1
	str r1, [sp, #8]
	add r1, r4, #6
	add r1, r3, r1
	str r1, [sp, #0xc]
	add r1, r2, #0
	mov r2, #0x52
	lsl r2, r2, #2
	sub r4, r4, #2
	add r2, r3, r2
	add r3, r3, r4
	bl ovy298_21a9274
	add sp, #0x10
	pop {r4, pc}
	nop
_021A9518: .word 0x0000054A
	thumb_func_end ovy298_21a94e4

	thumb_func_start ovy298_21a951c
ovy298_21a951c: ; 0x021A951C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r2, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r5, r1, #0
	str r3, [sp, #0x1c]
	mov r7, #0
	bl sub_0219FD40
	str r0, [sp, #0x2c]
	add r0, sp, #0x58
	ldrh r0, [r0, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x55
	lsl r0, r0, #2
	ldrh r2, [r1, r0]
	str r2, [sp, #0x28]
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	str r2, [sp, #0x24]
	sub r2, r0, #1
	ldrb r1, [r1, r2]
	sub r0, #0xd
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	bne _021A9568
	add r0, r4, #0
	bl sub_0219FD24
	bl sub_0200D190
	add r1, r7, #0
	bl sub_0200DA18
	add r7, r0, #0
_021A9568:
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	beq _021A95C2
	ldr r1, [sp, #0x1c]
	mov r0, #0x44
	add r6, r1, #0
	str r0, [sp, #0x30]
	mul r6, r0
	ldr r0, [sp, #0x28]
	add r4, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r4, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldrh r1, [r1]
	ldr r2, [r5, #8]
	ldr r3, [sp, #0x2c]
	add r0, r4, r6
	bl ovy298_21a8fa8
	ldr r1, [sp, #0x5c]
	add r0, r4, r6
	add r2, sp, #0x38
	bl sub_021ABF40
	ldr r0, [r4, r6]
	add r1, sp, #0x38
	bl sub_0201AB24
	ldr r0, [sp, #0x30]
	add r0, #0xe0
	str r0, [sp, #0x30]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A95C2
	ldr r0, [r4, r6]
	bl sub_0201AD7C
_021A95C2:
	ldr r1, [sp, #0x58]
	cmp r1, #4
	beq _021A961E
	mov r0, #0x44
	add r6, r1, #0
	str r0, [sp, #0x34]
	mul r6, r0
	ldr r0, [sp, #0x28]
	add r4, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r4, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldrh r1, [r1]
	ldr r2, [r5, #8]
	ldr r3, [sp, #0x2c]
	add r0, r4, r6
	bl ovy298_21a8fa8
	add r7, sp, #0x38
	ldr r1, [sp, #0x5c]
	add r0, r4, r6
	add r2, r7, #0
	bl sub_021ABF40
	ldr r0, [r4, r6]
	add r1, r7, #0
	bl sub_0201AB24
	ldr r0, [sp, #0x34]
	add r0, #0xe0
	str r0, [sp, #0x34]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A961E
	ldr r0, [r4, r6]
	bl sub_0201AD7C
_021A961E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a951c

	thumb_func_start ovy298_21a9624
ovy298_21a9624: ; 0x021A9624
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r6, r3, #0
	bl sub_0219FD40
	ldr r1, [r4]
	lsl r2, r6, #4
	str r1, [sp]
	ldrh r1, [r5]
	mov r5, #0x55
	lsl r5, r5, #2
	str r1, [sp, #4]
	add r1, r4, r2
	str r0, [sp, #8]
	ldrh r0, [r1, r5]
	add r3, r5, #0
	sub r3, #0x1c
	str r0, [sp, #0xc]
	sub r0, r5, #2
	ldrb r0, [r1, r0]
	add r1, r5, #0
	sub r1, #0x28
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r2, r4, r1
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r2, r1
	add r2, r5, #0
	sub r0, #0x2c
	sub r2, #0x20
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ovy298_21a91dc
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	sub r5, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, r5]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy298_21a9624

	thumb_func_start ovy298_21a968c
ovy298_21a968c: ; 0x021A968C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r5, #0
	add r7, r0, #0
	str r2, [sp, #0xc]
	mov r4, #0
	add r6, #0xc
_021A969C:
	mov r0, #0x44
	mul r0, r4
	ldr r1, [r5, #8]
	add r0, r6, r0
	bl ovy298_21a9020
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A969C
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a94e4
	ldr r1, _021A97D0 ; =0x000006B8
	mov r0, #0
	ldr r1, [r5, r1]
	cmp r1, #4
	bne _021A96D0
	ldr r1, _021A97D4 ; =0x00000548
	ldrh r1, [r5, r1]
	cmp r1, #2
	blo _021A96D0
	mov r0, #1
_021A96D0:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	bne _021A96DE
	mov r6, #4
_021A96DE:
	mov r4, #4
	cmp r1, #0
	bne _021A96E6
	mov r4, #1
_021A96E6:
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, _021A97D8 ; =0x0000054E
	ldr r2, [sp, #0xc]
	ldrh r0, [r5, r0]
	add r1, r5, #0
	add r3, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021A970A
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r5, #0
	bl sub_021A9048
_021A970A:
	cmp r4, #4
	beq _021A9718
	ldr r0, [r5, #0x54]
	mov r1, #1
	add r2, r5, #0
	bl sub_021A9048
_021A9718:
	ldr r0, _021A97D0 ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021A977C
	ldr r0, _021A97D4 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A977C
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #2
	cmp r0, #0
	bne _021A9736
	mov r6, #4
_021A9736:
	mov r4, #4
	cmp r0, #0
	bne _021A973E
	mov r4, #3
_021A973E:
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x55
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021A976A
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #2
	add r2, r5, #0
	bl sub_021A9048
_021A976A:
	cmp r4, #4
	beq _021A977C
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
_021A977C:
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a9b70
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8a34
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8db0
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8cd4
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8d2c
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21aa898
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21aa984
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21aa75c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A97D0: .word 0x000006B8
_021A97D4: .word 0x00000548
_021A97D8: .word 0x0000054E
	thumb_func_end ovy298_21a968c

	thumb_func_start ovy298_21a97dc
ovy298_21a97dc: ; 0x021A97DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	mov r1, #0
	str r2, [sp, #0x10]
	mov r7, #0
	bl sub_02019BCC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021A97F8
	mov r7, #4
_021A97F8:
	ldr r0, [r5, #0x50]
	mov r4, #1
	cmp r0, #0
	beq _021A9802
	mov r4, #4
_021A9802:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A9810
	mov r4, #4
	b _021A9812
_021A9810:
	mov r7, #4
_021A9812:
	ldr r0, _021A9974 ; =0x000006B8
	mov r6, #0
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021A9826
	ldr r0, _021A9978 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A9826
	mov r6, #1
_021A9826:
	str r4, [sp]
	ldr r0, _021A997C ; =0x0000054E
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r3, r7, #0
	bl ovy298_21a951c
	cmp r7, #4
	beq _021A984C
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r5, #0
	bl sub_021A9048
	b _021A9868
_021A984C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021A9868
	add r0, r5, #0
	add r7, sp, #0x14
	add r0, #0xc
	add r1, r6, #0
	add r2, r7, #0
	bl sub_021ABF40
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_0201AB24
_021A9868:
	cmp r4, #4
	beq _021A9878
	ldr r0, [r5, #0x54]
	mov r1, #1
	add r2, r5, #0
	bl sub_021A9048
	b _021A9894
_021A9878:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021A9894
	add r0, r5, #0
	add r4, sp, #0x14
	add r0, #0x50
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021ABF40
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl sub_0201AB24
_021A9894:
	ldr r0, _021A9974 ; =0x000006B8
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021A994A
	ldr r0, _021A9978 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A994A
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r6, #2
	cmp r0, #0
	beq _021A98B2
	mov r6, #4
_021A98B2:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r4, #3
	cmp r0, #0
	beq _021A98C0
	mov r4, #4
_021A98C0:
	mov r0, #0x55
	str r4, [sp]
	mov r7, #2
	str r7, [sp, #4]
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021A98EE
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_021A9048
	b _021A9912
_021A98EE:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A9912
	add r0, r5, #0
	add r6, sp, #0x14
	add r0, #0x94
	add r1, r7, #0
	add r2, r6, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0201AB24
_021A9912:
	cmp r4, #4
	beq _021A9926
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
	b _021A994A
_021A9926:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A994A
	add r0, r5, #0
	add r4, sp, #0x14
	add r0, #0xd8
	mov r1, #2
	add r2, r4, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021A994A:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	bl sub_02019BCC
	ldr r0, _021A9974 ; =0x000006B8
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A996E
	mov r1, #1
	add r0, #0x10
	str r1, [r5, r0]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl ovy298_21ab3c8
_021A996E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9974: .word 0x000006B8
_021A9978: .word 0x00000548
_021A997C: .word 0x0000054E
	thumb_func_end ovy298_21a97dc

	thumb_func_start ovy298_21a9980
ovy298_21a9980: ; 0x021A9980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	mov r1, #0
	str r2, [sp, #0x10]
	mov r7, #0
	bl sub_02019BCC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021A999C
	mov r7, #4
_021A999C:
	ldr r0, [r5, #0x50]
	mov r6, #1
	cmp r0, #0
	beq _021A99A6
	mov r6, #4
_021A99A6:
	ldr r0, _021A9AD8 ; =0x000006B8
	mov r4, #0
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021A99BA
	ldr r0, _021A9ADC ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021A99BA
	mov r4, #1
_021A99BA:
	str r6, [sp]
	ldr r0, _021A9AE0 ; =0x0000054E
	str r4, [sp, #4]
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r3, r7, #0
	bl ovy298_21a951c
	cmp r7, #4
	beq _021A99E0
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r5, #0
	bl sub_021A9048
	b _021A99F6
_021A99E0:
	add r0, r5, #0
	add r7, sp, #0x14
	add r0, #0xc
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021ABF40
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_0201AB24
_021A99F6:
	cmp r6, #4
	beq _021A9A06
	ldr r0, [r5, #0x54]
	mov r1, #1
	add r2, r5, #0
	bl sub_021A9048
	b _021A9A1C
_021A9A06:
	add r0, r5, #0
	add r1, r4, #0
	add r4, sp, #0x14
	add r0, #0x50
	add r2, r4, #0
	bl sub_021ABF40
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl sub_0201AB24
_021A9A1C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r6, #2
	cmp r0, #0
	beq _021A9A2A
	mov r6, #4
_021A9A2A:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r4, #3
	cmp r0, #0
	beq _021A9A38
	mov r4, #4
_021A9A38:
	mov r0, #0x55
	str r4, [sp]
	mov r7, #2
	str r7, [sp, #4]
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021A9A66
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_021A9048
	b _021A9A80
_021A9A66:
	add r0, r5, #0
	add r6, sp, #0x14
	add r0, #0x94
	add r1, r7, #0
	add r2, r6, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0201AB24
_021A9A80:
	cmp r4, #4
	beq _021A9A94
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
	b _021A9AAE
_021A9A94:
	add r0, r5, #0
	add r4, sp, #0x14
	add r0, #0xd8
	mov r1, #2
	add r2, r4, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021A9AAE:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	bl sub_02019BCC
	ldr r0, _021A9AD8 ; =0x000006B8
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A9AD2
	mov r1, #1
	add r0, #0x10
	str r1, [r5, r0]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl ovy298_21ab3c8
_021A9AD2:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9AD8: .word 0x000006B8
_021A9ADC: .word 0x00000548
_021A9AE0: .word 0x0000054E
	thumb_func_end ovy298_21a9980

	thumb_func_start ovy298_21a9ae4
ovy298_21a9ae4: ; 0x021A9AE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x94
	str r2, [sp, #0xc]
	bl ovy298_21a9020
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0xd8
	bl ovy298_21a9020
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #2
	cmp r0, #0
	bne _021A9B10
	mov r6, #4
_021A9B10:
	mov r4, #4
	cmp r0, #0
	bne _021A9B18
	mov r4, #3
_021A9B18:
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x55
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021A9B44
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #2
	add r2, r5, #0
	bl sub_021A9048
_021A9B44:
	cmp r4, #4
	beq _021A9B56
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
_021A9B56:
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21a8d2c
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21aa898
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21a9ae4

	thumb_func_start ovy298_21a9b70
ovy298_21a9b70: ; 0x021A9B70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x51
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021A9B90
	mov r1, #0
	bl sub_0204C124
_021A9B90:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	str r1, [r4, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	add r1, r0, #0
	sub r1, #8
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021A9BCE
	beq _021A9BBE
	sub r0, #0x18
	ldr r0, [r2, r0]
	bl ovy298_21a9260
_021A9BBE:
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0
	lsl r2, r2, #2
	add r2, r4, r2
	sub r1, #8
	str r0, [r2, r1]
_021A9BCE:
	ldr r3, _021A9BE0 ; =0x0000054E
	add r0, r5, #0
	ldrh r3, [r4, r3]
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21a9624
	pop {r4, r5, r6, pc}
	nop
_021A9BE0: .word 0x0000054E
	thumb_func_end ovy298_21a9b70

	thumb_func_start ovy298_21a9be4
ovy298_21a9be4: ; 0x021A9BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r6, r0, #0
	add r0, r7, #0
	add r4, r1, #0
	bl sub_0219FD34
	ldr r5, _021A9DAC ; =0x000006B8
	str r0, [sp, #4]
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _021A9C08
	cmp r1, #4
	bne _021A9C04
	b _021A9D44
_021A9C04:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9C08:
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A9C22
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21aa5e8
	cmp r0, #5
	beq _021A9CAE
	cmp r0, #3
	bls _021A9C24
_021A9C22:
	b _021A9DA8
_021A9C24:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A9C30: ; jump table
	.short _021A9C38 - _021A9C30 - 2 ; case 0
	.short _021A9C46 - _021A9C30 - 2 ; case 1
	.short _021A9C6E - _021A9C30 - 2 ; case 2
	.short _021A9C8E - _021A9C30 - 2 ; case 3
_021A9C38:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a90ec
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9C46:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a9980
	mov r5, #0
	add r4, #0xc
	mov r6, #0x44
_021A9C56:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy298_21a9054
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A9C56
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9C6E:
	mov r0, #1
	add r5, #0x10
	str r0, [r4, r5]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21ab2dc
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy298_21a9dbc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9C8E:
	mov r0, #0
	add r5, #0x10
	str r0, [r4, r5]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21ab2dc
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy298_21a9dbc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9CAE:
	mov r5, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021A9CC0
	add r5, r1, #0
	mov r0, #0
	b _021A9CD6
_021A9CC0:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A9CD8
	ldr r0, [sp, #8]
	cmp r0, #0xa8
	bhs _021A9CD8
	mov r5, #1
	mov r0, #1
_021A9CD6:
	str r0, [sp]
_021A9CD8:
	cmp r5, #0
	beq _021A9DA8
	ldr r0, _021A9DB0 ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021A9DA8
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021A9CF8
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A9D06
_021A9CF8:
	cmp r1, #0
	bne _021A9D20
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	bne _021A9D20
_021A9D06:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21abb7c
	ldr r0, _021A9DB4 ; =0x000006C8
	mov r1, #1
	str r1, [r4, r0]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21ab3c8
_021A9D20:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #2
	bl ovy298_21a9dbc
	ldr r0, _021A9DB8 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [sp]
	bl sub_0203D564
	ldr r0, [sp, #4]
	mov r1, #0
	bl ovy298_21a15e8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9D44:
	bl ovy298_21a21d4
	cmp r0, #0
	bne _021A9DA8
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A9DA8
	sub r5, #0x1c
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021A9DA8
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21aa5e8
	cmp r0, #5
	beq _021A9DA8
	cmp r0, #0
	beq _021A9D76
	cmp r0, #1
	beq _021A9D84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9D76:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a90ec
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A9D84:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a9980
	mov r5, #0
	add r4, #0xc
	mov r6, #0x44
_021A9D94:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy298_21a9054
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A9D94
_021A9DA8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9DAC: .word 0x000006B8
_021A9DB0: .word 0x00000548
_021A9DB4: .word 0x000006C8
_021A9DB8: .word 0x0000054C
	thumb_func_end ovy298_21a9be4

	thumb_func_start ovy298_21a9dbc
ovy298_21a9dbc: ; 0x021A9DBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r2, #0
	str r0, [sp]
	add r0, r7, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_0219FD34
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0219FD38
	str r0, [sp, #8]
	mov r0, #0
	ldr r5, _021AA0D8 ; =0x000006B8
	str r0, [sp, #4]
	ldr r0, [r4, r5]
	mov r1, #0
	cmp r0, #7
	bhi _021A9E0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A9DF2: ; jump table
	.short _021A9E02 - _021A9DF2 - 2 ; case 0
	.short _021A9E4C - _021A9DF2 - 2 ; case 1
	.short _021A9E62 - _021A9DF2 - 2 ; case 2
	.short _021A9E6E - _021A9DF2 - 2 ; case 3
	.short _021A9F36 - _021A9DF2 - 2 ; case 4
	.short _021A9F5E - _021A9DF2 - 2 ; case 5
	.short _021A9F8C - _021A9DF2 - 2 ; case 6
	.short _021A9F92 - _021A9DF2 - 2 ; case 7
_021A9E02:
	cmp r6, #1
	beq _021A9E0C
	cmp r6, #2
	beq _021A9E30
_021A9E0A:
	b _021AA088
_021A9E0C:
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A9E18
	b _021AA088
_021A9E18:
	add r0, r4, #0
	add r0, #0x94
	bl sub_021A9080
	add r0, r4, #0
	add r0, #0xd8
	bl sub_021A9080
	mov r0, #1
	add r5, #0xc
	str r0, [r4, r5]
	b _021AA088
_021A9E30:
	add r0, r5, #0
	add r0, #0x14
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x18
	str r1, [r4, r0]
	ldr r0, _021AA0DC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021A9F3E
	mov r0, #1
	add r5, #0x10
	str r0, [r4, r5]
	b _021AA07E
_021A9E4C:
	cmp r6, #0
	bne _021A9F3E
	sub r5, #0x24
	ldr r0, [r4, r5]
	cmp r0, #5
	bne _021A9F3E
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl ovy298_21a15e8
	b _021AA088
_021A9E62:
	cmp r6, #3
	bne _021A9F3E
_021A9E66:
	ldr r0, [sp, #0xc]
	bl sub_021A1550
	b _021AA088
_021A9E6E:
	cmp r6, #4
	bne _021A9F3E
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021AA0DC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021A9EFE
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A9E9A
	add r0, r4, #0
	add r5, sp, #0x1c
	ldr r1, [sp, #4]
	add r0, #0xc
	add r2, r5, #0
	bl sub_021ABF40
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0201AB24
_021A9E9A:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021A9EB6
	add r0, r4, #0
	add r5, sp, #0x1c
	add r0, #0x50
	mov r1, #1
	add r2, r5, #0
	bl sub_021ABF40
	ldr r0, [r4, #0x50]
	add r1, r5, #0
	bl sub_0201AB24
_021A9EB6:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021A9EDA
	add r0, r4, #0
	add r5, sp, #0x1c
	add r0, #0x94
	mov r1, #2
	add r2, r5, #0
	bl sub_021ABF40
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021A9EDA:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A9EFE
	add r0, r4, #0
	add r5, sp, #0x1c
	add r0, #0xd8
	mov r1, #2
	add r2, r5, #0
	bl sub_021ABF40
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021A9EFE:
	add r0, r7, #0
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021A9F0C
	mov r3, #0
_021A9F0C:
	ldr r0, [sp, #0xc]
	mov r1, #2
	mov r2, #3
	bl ovy298_21a1454
	ldr r0, _021AA0DC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #3
	blo _021A9F24
	ldr r0, [sp, #0xc]
	mov r1, #1
	b _021A9F28
_021A9F24:
	ldr r0, [sp, #0xc]
	mov r1, #0
_021A9F28:
	bl ovy298_21a158c
	ldr r0, [sp, #8]
	mov r1, #4
	bl ovy298_21a230c
	b _021AA088
_021A9F36:
	cmp r6, #5
	beq _021A9F40
	cmp r6, #6
	beq _021A9F54
_021A9F3E:
	b _021AA088
_021A9F40:
	add r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A9F7E
	add r0, r5, #4
	mov r2, #1
	str r2, [r4, r0]
	add r5, #8
_021A9F50:
	str r1, [r4, r5]
	b _021AA088
_021A9F54:
	add r0, r5, #0
	add r0, #0x14
	str r1, [r4, r0]
	add r5, #0x18
	b _021A9F50
_021A9F5E:
	cmp r6, #4
	bne _021A9F7E
	add r0, r5, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A9F7E
	add r0, r5, #0
	mov r2, #1
	add r0, #0x24
	str r2, [r4, r0]
	add r0, r5, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A9F80
_021A9F7E:
	b _021AA088
_021A9F80:
	ldr r0, [sp, #0xc]
	add r5, #0x20
	str r1, [r4, r5]
	bl sub_021A1544
	b _021AA088
_021A9F8C:
	cmp r6, #7
	bne _021AA088
	b _021A9E66
_021A9F92:
	cmp r6, #0
	bne _021AA088
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021AA0DC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021AA03C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A9FBC
	add r0, r4, #0
	add r5, sp, #0x10
	add r0, #0xc
	add r2, r5, #0
	bl sub_021ABF40
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0201AB24
_021A9FBC:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021A9FD8
	add r0, r4, #0
	add r5, sp, #0x10
	add r0, #0x50
	mov r1, #0
	add r2, r5, #0
	bl sub_021ABF40
	ldr r0, [r4, #0x50]
	add r1, r5, #0
	bl sub_0201AB24
_021A9FD8:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	cmp r0, #0
	bne _021A9FE6
	mov r1, #1
_021A9FE6:
	mov r0, #0x44
	mul r0, r1
	add r0, r4, r0
	add r5, sp, #0x10
	ldr r0, [r0, #0xc]
	add r1, r5, #0
	bl ovy298_21a8f78
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AA018
	add r0, r4, #0
	add r0, #0x94
	mov r1, #2
	add r2, r5, #0
	bl sub_021ABF40
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021AA018:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AA03C
	add r0, r4, #0
	add r5, sp, #0x10
	add r0, #0xd8
	mov r1, #2
	add r2, r5, #0
	bl sub_021ABF40
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021AA03C:
	add r0, r7, #0
	bl sub_0219FD3C
	mov r3, #1
	cmp r0, #1
	bhi _021AA04A
	mov r3, #0
_021AA04A:
	ldr r0, [sp, #0xc]
	mov r1, #0
	mov r2, #3
	bl ovy298_21a1454
	add r0, r7, #0
	bl sub_0219FD24
	mov r1, #0x17
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl ovy298_21a15b4
	ldr r0, [sp, #8]
	mov r1, #3
	bl ovy298_21a230c
	ldr r0, _021AA0DC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021AA088
	ldr r0, _021AA0E0 ; =0x000006C8
	mov r1, #1
	str r1, [r4, r0]
_021AA07E:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21ab3c8
_021AA088:
	ldr r5, _021AA0D8 ; =0x000006B8
	ldr r0, [sp, #4]
	str r6, [r4, r5]
	cmp r0, #0
	beq _021AA0D2
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a8db0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21a8d2c
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21aa898
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21aa984
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl ovy298_21aa75c
	mov r0, #5
	sub r5, #0x24
	str r0, [r4, r5]
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl ovy298_21a15e8
_021AA0D2:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA0D8: .word 0x000006B8
_021AA0DC: .word 0x00000548
_021AA0E0: .word 0x000006C8
	thumb_func_end ovy298_21a9dbc

	thumb_func_start ovy298_21aa0e4
ovy298_21aa0e4: ; 0x021AA0E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #0xc]
	add r5, r1, #0
	ldr r1, [sp, #0xc]
	mov r0, #0x9d
	ldrh r1, [r1]
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp, #0x58]
	str r1, [sp]
	mov r1, #3
	ldr r2, [sp, #0xc]
	str r1, [sp, #4]
	ldrh r2, [r2]
	mov r3, #0
	add r4, r0, #0
	str r2, [sp, #8]
	mov r2, #0
	bl Oam_LoadNCLRFile
	ldr r1, _021AA4A0 ; =0x000005C4
	mov r2, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrh r0, [r0]
	mov r1, #0xd
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	sub r1, r1, #4
	str r0, [r5, r1]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x2d
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x10]
	mov r2, #0
	add r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp, #0x58]
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #0x60
	ldrh r0, [r0]
	str r0, [sp, #8]
	add r0, r4, #0
	bl Oam_LoadNCLRFile
	ldr r1, [sp, #0x10]
	mov r2, #0
	add r1, #0xc
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	ldrh r0, [r0]
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r1, #8
	str r0, [r5, r1]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0x2c
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x10]
	mov r2, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldr r0, [sp, #0x58]
	mov r1, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #0x80
	ldrh r0, [r0]
	str r0, [sp, #8]
	add r0, r4, #0
	bl Oam_LoadNCLRFile
	ldr r1, [sp, #0x10]
	mov r2, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	ldrh r0, [r0]
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x1e
	mov r6, #0x2f
	mov r2, #0x2f
	bl Oam_LoadNCERFile
	lsl r1, r6, #5
	str r0, [r5, r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r0, [sp, #0x10]
	mov r7, #0
	sub r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	sub r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	sub r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_021AA212:
	add r0, sp, #0x64
	add r1, r7, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [sp, #0x58]
	lsl r1, r0, #3
	ldr r0, _021AA4A4 ; =0x021AC7FC
	add r3, r0, r1
	ldrb r1, [r0, r1]
	add r0, sp, #0x5c
	strh r1, [r0, #8]
	ldrb r1, [r3, #1]
	strh r1, [r0, #0xa]
	ldrb r1, [r3, #2]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #3]
	strb r1, [r0, #0xe]
	ldrb r1, [r3, #4]
	strb r1, [r0, #0xf]
	ldr r0, [sp, #0x58]
	ldrb r1, [r3, #5]
	lsl r0, r0, #2
	add r6, r5, r0
	add r0, sp, #0x64
	str r0, [sp]
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r0, [sp, #0xc]
	str r7, [sp, #4]
	ldrh r0, [r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	ldr r1, [r2, r1]
	ldrb r2, [r3, #6]
	ldrb r3, [r3, #7]
	ldr r0, [r5]
	lsl r2, r2, #2
	add r4, r5, r2
	ldr r2, [sp, #0x24]
	lsl r3, r3, #2
	ldr r2, [r4, r2]
	add r4, r5, r3
	ldr r3, [sp, #0x20]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x1c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C318
	ldr r0, [sp, #0x58]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	cmp r0, #4
	blo _021AA212
	ldr r0, _021AA4A8 ; =0x000005F4
	mov r2, #0x40
	strh r2, [r5, r0]
	mov r1, #0x98
	add r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r3, _021AA4A8 ; =0x000005F4
	add r0, r0, #4
	str r7, [r5, r0]
	add r3, #8
	mov r0, #1
	str r0, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	mov r0, #2
	add r3, #0xc
	str r0, [r5, r3]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r3, _021AA4A8 ; =0x000005F4
	add r0, #0x10
	strb r2, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	mov r6, #0x10
	add r0, #0x11
	strb r1, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r3, #0x14
	add r0, #0x12
	strb r2, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r4, _021AA4A8 ; =0x000005F4
	add r0, #0x13
	strb r6, [r5, r0]
	mov r0, #0x18
	strb r0, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	mov r0, #0x1a
	add r3, #0x15
	strb r0, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	mov r0, #4
	add r3, #0x18
	str r0, [r5, r3]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r3, _021AA4A8 ; =0x000005F4
	sub r0, #0xa8
	add r3, #0x1c
	str r0, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	add r4, #0x28
	add r3, #0x20
	str r7, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	add r3, #0x24
	str r7, [r5, r3]
	mov r3, #0x80
	strh r3, [r5, r4]
	ldr r3, _021AA4A8 ; =0x000005F4
	ldr r4, _021AA4A8 ; =0x000005F4
	add r3, #0x2a
	strh r1, [r5, r3]
	ldr r3, _021AA4A8 ; =0x000005F4
	add r4, #0x30
	add r3, #0x2c
	str r7, [r5, r3]
	mov r3, #1
	str r3, [r5, r4]
	ldr r4, _021AA4A8 ; =0x000005F4
	mov r3, #2
	add r4, #0x34
	str r3, [r5, r4]
	ldr r4, _021AA4A8 ; =0x000005F4
	mov r3, #0x80
	add r4, #0x38
	strb r3, [r5, r4]
	ldr r3, _021AA4A8 ; =0x000005F4
	add r3, #0x39
	strb r1, [r5, r3]
	ldr r1, _021AA4A8 ; =0x000005F4
	ldr r3, _021AA4A8 ; =0x000005F4
	add r1, #0x3a
	strb r2, [r5, r1]
	ldr r1, _021AA4A8 ; =0x000005F4
	mov r2, #0x17
	add r1, #0x3b
	strb r6, [r5, r1]
	ldr r1, _021AA4A8 ; =0x000005F4
	add r3, #0x40
	add r1, #0x3c
	strb r2, [r5, r1]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r1, #0x19
	add r2, #0x3d
	strb r1, [r5, r2]
	mov r2, #8
	str r2, [r5, r3]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r3, #0xe4
	add r2, #0x44
	str r0, [r5, r2]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r2, _021AA4A8 ; =0x000005F4
	add r0, #0x48
	str r7, [r5, r0]
	lsl r0, r1, #6
	ldr r1, _021AA4A8 ; =0x000005F4
	str r7, [r5, r0]
	add r1, #0x50
	mov r0, #0x80
	strh r0, [r5, r1]
	ldr r0, _021AA4A8 ; =0x000005F4
	mov r1, #0x60
	add r0, #0x52
	strh r1, [r5, r0]
	add r2, #0x54
	mov r0, #6
	str r0, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r0, #7
	add r2, #0x58
	str r0, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r0, #8
	add r2, #0x5c
	str r0, [r5, r2]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r2, _021AA4A8 ; =0x000005F4
	add r0, #0x60
	strb r7, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r2, #0x62
	add r0, #0x61
	strb r7, [r5, r0]
	mov r0, #0x18
	strb r0, [r5, r2]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r2, _021AA4A8 ; =0x000005F4
	add r0, #0x63
	strb r6, [r5, r0]
	add r2, #0x64
	mov r0, #4
	strb r0, [r5, r2]
	ldr r0, _021AA4A8 ; =0x000005F4
	mov r2, #5
	add r0, #0x65
	strb r2, [r5, r0]
	mov r0, #0x80
	lsl r2, r0, #2
	ldr r0, _021AA4A8 ; =0x000005F4
	add r0, #0x68
	str r2, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	ldr r2, _021AA4A8 ; =0x000005F4
	sub r0, #0xaa
	add r2, #0x6c
	str r0, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	add r2, #0x70
	str r7, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	add r2, #0x74
	str r7, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	add r2, #0x78
	strh r3, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	add r2, #0x7a
	strh r1, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r1, #6
	add r2, #0x7c
	str r1, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r1, #7
	add r2, #0x80
	str r1, [r5, r2]
	ldr r2, _021AA4A8 ; =0x000005F4
	mov r1, #8
	add r2, #0x84
	str r1, [r5, r2]
	ldr r1, _021AA4A8 ; =0x000005F4
	mov r2, #0xe8
	add r1, #0x88
	strb r2, [r5, r1]
	ldr r1, _021AA4A8 ; =0x000005F4
	ldr r2, _021AA4A8 ; =0x000005F4
	add r1, #0x89
	strb r7, [r5, r1]
	add r2, #0x8a
	mov r1, #0x18
	strb r1, [r5, r2]
	ldr r1, _021AA4A8 ; =0x000005F4
	add r1, #0x8b
	strb r6, [r5, r1]
	mov r1, #0x1a
	lsl r2, r1, #6
	mov r1, #2
	strb r1, [r5, r2]
	ldr r1, _021AA4A8 ; =0x000005F4
	mov r2, #3
	add r1, #0x8d
	strb r2, [r5, r1]
	ldr r1, _021AA4A8 ; =0x000005F4
	add r2, #0xfd
	add r1, #0x90
	str r2, [r5, r1]
	ldr r1, _021AA4A8 ; =0x000005F4
	add r1, #0x94
	str r0, [r5, r1]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r0, #0x98
	str r7, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r0, #0x9c
	str r7, [r5, r0]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r0, r0, #2
	str r0, [sp, #0x54]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x50]
	add r0, #0x14
	str r0, [sp, #0x50]
	ldr r0, _021AA4A8 ; =0x000005F4
	add r0, r0, #4
	str r0, [sp, #0x4c]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x48]
	sub r0, #0x34
	str r0, [sp, #0x48]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x44]
	add r0, #8
	str r0, [sp, #0x44]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x40]
	sub r0, #0x34
	str r0, [sp, #0x40]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x3c]
	add r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x38]
	sub r0, #0x34
	str r0, [sp, #0x38]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x34]
	add r0, #0x24
	str r0, [sp, #0x34]
	ldr r0, _021AA4A8 ; =0x000005F4
	str r0, [sp, #0x30]
	add r0, #0x24
	str r0, [sp, #0x30]
	ldr r0, _021AA4A8 ; =0x000005F4
	b _021AA4AC
	nop
_021AA4A0: .word 0x000005C4
_021AA4A4: .word 0x021AC7FC
_021AA4A8: .word 0x000005F4
_021AA4AC:
	str r0, [sp, #0x2c]
	add r0, #0x24
	str r0, [sp, #0x2c]
_021AA4B2:
	add r0, sp, #0x5c
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0x28
	mul r0, r7
	add r4, r5, r0
	ldr r0, _021AA548 ; =0x000005F4
	ldrsh r1, [r4, r0]
	add r0, sp, #0x5c
	strh r1, [r0]
	ldr r0, [sp, #0x54]
	ldrsh r1, [r4, r0]
	add r0, sp, #0x5c
	strh r1, [r0, #2]
	ldr r0, [sp, #0x50]
	ldrb r1, [r4, r0]
	add r0, sp, #0x5c
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	mov r1, #3
	strb r1, [r0, #7]
	add r0, sp, #0x5c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r1, [r4, r1]
	ldr r0, [r5]
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, [sp, #0x48]
	ldr r1, [r2, r1]
	ldr r2, [sp, #0x44]
	ldr r2, [r4, r2]
	lsl r2, r2, #2
	add r3, r5, r2
	ldr r2, [sp, #0x40]
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x3c]
	ldr r3, [r4, r3]
	lsl r3, r3, #2
	add r6, r5, r3
	ldr r3, [sp, #0x38]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x34]
	str r0, [r4, r1]
	ldr r0, [sp, #0x30]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C318
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021AA4B2
	ldr r0, _021AA54C ; =0x00000694
	mov r1, #5
	str r1, [r5, r0]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021AA548: .word 0x000005F4
_021AA54C: .word 0x00000694
	thumb_func_end ovy298_21aa0e4

	thumb_func_start ovy298_21aa550
ovy298_21aa550: ; 0x021AA550
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021AA5DC ; =0x00000618
	add r5, r1, #0
	mov r4, #0
	mov r7, #0x28
_021AA55A:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA55A
	ldr r6, _021AA5E0 ; =0x000005E4
	mov r4, #0
_021AA574:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA574
	ldr r4, _021AA5E4 ; =0x000005C4
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r4, #0x1c
	ldr r0, [r5, r4]
	bl sub_0204BE64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA5DC: .word 0x00000618
_021AA5E0: .word 0x000005E4
_021AA5E4: .word 0x000005C4
	thumb_func_end ovy298_21aa550

	thumb_func_start ovy298_21aa5e8
ovy298_21aa5e8: ; 0x021AA5E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r0, r2, #0
	add r6, r1, #0
	bl sub_0219FD34
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #4]
	cmp r0, #5
	bne _021AA64C
	ldr r7, _021AA74C ; =0x0000060C
	mov r4, #0
	add r7, #0xc
_021AA604:
	mov r0, #0x28
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl sub_0204C138
	cmp r0, #0
	beq _021AA642
	bl GCTX_HIDGetPressedKeys
	ldr r1, _021AA74C ; =0x0000060C
	ldr r1, [r5, r1]
	tst r0, r1
	beq _021AA628
_021AA620:
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	b _021AA64C
_021AA628:
	add r0, r4, #0
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021AA642
	bl sub_0203DF44
	ldr r1, _021AA74C ; =0x0000060C
	ldr r1, [r5, r1]
	tst r0, r1
	beq _021AA642
	b _021AA620
_021AA642:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA604
_021AA64C:
	ldr r0, [sp, #4]
	cmp r0, #5
	bne _021AA6C0
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_0203DAC8
	cmp r0, #0
	beq _021AA6C0
	ldr r0, _021AA750 ; =0x00000607
	ldr r7, _021AA750 ; =0x00000607
	sub r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, _021AA750 ; =0x00000607
	mov r5, #0
	sub r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021AA750 ; =0x00000607
	add r7, #0x11
	sub r0, r0, #3
	str r0, [sp, #0xc]
_021AA676:
	mov r0, #0x28
	mul r0, r5
	add r4, r6, r0
	ldr r0, [r4, r7]
	bl sub_0204C138
	cmp r0, #0
	beq _021AA6B6
	ldr r0, [sp, #0xc]
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bhi _021AA6B6
	ldr r2, [sp, #0x10]
	ldrb r2, [r4, r2]
	add r1, r1, r2
	cmp r0, r1
	bhs _021AA6B6
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bhi _021AA6B6
	ldr r2, _021AA750 ; =0x00000607
	ldrb r2, [r4, r2]
	add r1, r1, r2
	cmp r0, r1
	bhs _021AA6B6
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	b _021AA6C0
_021AA6B6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021AA676
_021AA6C0:
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _021AA744
	ldr r4, _021AA754 ; =0x00000694
	ldr r0, [r6, r4]
	cmp r0, #5
	beq _021AA6D4
	mov r0, #6
	str r0, [sp, #4]
	b _021AA744
_021AA6D4:
	ldr r0, [sp]
	bl sub_0203D564
	ldr r0, [sp, #8]
	mov r1, #0
	bl ovy298_21a15e8
	ldr r0, [sp, #4]
	mov r1, #0x28
	add r5, r0, #0
	mul r5, r1
	add r0, r4, #0
	mov r2, #1
	add r1, r6, r5
	sub r0, #0x80
	str r2, [r1, r0]
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x7c
	sub r2, #0x8b
	ldr r0, [r1, r0]
	ldrb r1, [r1, r2]
	bl sub_0204C488
	add r0, r6, r5
	sub r4, #0x84
	ldr r0, [r0, r4]
	bl GFL_SndSEPlay
	ldr r1, [sp, #4]
	mov r0, #5
	cmp r1, #2
	bne _021AA71A
	mov r0, #3
	b _021AA720
_021AA71A:
	cmp r1, #3
	bne _021AA720
	mov r0, #2
_021AA720:
	cmp r0, #5
	beq _021AA73E
	ldr r1, _021AA758 ; =0x00000618
	add r5, r0, #0
	add r4, r6, r1
	mov r1, #0x28
	mul r5, r1
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C4D4
_021AA73E:
	ldr r1, _021AA754 ; =0x00000694
	ldr r0, [sp, #4]
	str r0, [r6, r1]
_021AA744:
	ldr r0, [sp, #4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA74C: .word 0x0000060C
_021AA750: .word 0x00000607
_021AA754: .word 0x00000694
_021AA758: .word 0x00000618
	thumb_func_end ovy298_21aa5e8

	thumb_func_start ovy298_21aa75c
ovy298_21aa75c: ; 0x021AA75C
	push {r3, r4, r5, lr}
	ldr r0, _021AA7A8 ; =0x000006B8
	add r4, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	cmp r0, #0
	beq _021AA76E
	cmp r0, #4
	b _021AA778
_021AA76E:
	ldr r0, _021AA7AC ; =0x00000548
	ldrh r0, [r4, r0]
	cmp r0, #2
	blo _021AA778
	mov r1, #1
_021AA778:
	cmp r1, #0
	ldr r5, _021AA7B0 ; =0x00000668
	beq _021AA792
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add r5, #0x28
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_021AA792:
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x28
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	nop
_021AA7A8: .word 0x000006B8
_021AA7AC: .word 0x00000548
_021AA7B0: .word 0x00000668
	thumb_func_end ovy298_21aa75c

	thumb_func_start ovy298_21aa7b4
ovy298_21aa7b4: ; 0x021AA7B4
	push {r3, r4, r5, r6, r7, lr}
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0219FD34
	ldr r5, _021AA890 ; =0x00000694
	str r0, [sp]
	ldr r0, [r4, r5]
	cmp r0, #5
	beq _021AA88E
	add r1, r0, #0
	add r0, r5, #0
	mov r6, #0x28
	sub r0, #0x80
	mul r1, r6
	add r0, r4, r0
	ldr r2, [r0, r1]
	cmp r2, #3
	bhi _021AA88E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021AA7E6: ; jump table
	.short _021AA88E - _021AA7E6 - 2 ; case 0
	.short _021AA7EE - _021AA7E6 - 2 ; case 1
	.short _021AA7F4 - _021AA7E6 - 2 ; case 2
	.short _021AA814 - _021AA7E6 - 2 ; case 3
_021AA7EE:
	mov r2, #2
	str r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021AA7F4:
	add r0, r5, #0
	add r1, r4, r1
	sub r0, #0x7c
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021AA88E
	ldr r0, [r4, r5]
	mov r2, #3
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	sub r5, #0x80
	str r2, [r0, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021AA814:
	add r2, r4, r1
	add r1, r5, #0
	add r0, r5, #0
	sub r1, #0x8c
	sub r0, #0x7c
	ldrb r1, [r2, r1]
	ldr r0, [r2, r0]
	bl sub_0204C488
	ldr r1, [r4, r5]
	mov r0, #0
	add r2, r1, #0
	mul r2, r6
	add r1, r5, #0
	add r2, r4, r2
	sub r1, #0x80
	str r0, [r2, r1]
	ldr r0, [r4, r5]
	mov r1, #5
	cmp r0, #2
	bne _021AA842
	mov r1, #3
	b _021AA848
_021AA842:
	cmp r0, #3
	bne _021AA848
	mov r1, #2
_021AA848:
	cmp r1, #5
	beq _021AA874
	mov r0, #0x28
	add r5, r1, #0
	mul r5, r0
	ldr r6, _021AA894 ; =0x00000614
	add r0, r4, r5
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _021AA874
	add r0, r6, #4
	add r7, r4, r0
	ldr r0, [r7, r5]
	mov r1, #1
	bl sub_0204C520
	add r1, r4, r5
	sub r6, #0xc
	ldrb r1, [r1, r6]
	ldr r0, [r7, r5]
	bl sub_0204C488
_021AA874:
	ldr r0, _021AA890 ; =0x00000694
	mov r1, #5
	str r1, [r4, r0]
	add r0, #0x24
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021AA886
	cmp r0, #4
	bne _021AA88E
_021AA886:
	ldr r0, [sp]
	mov r1, #1
	bl ovy298_21a15e8
_021AA88E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA890: .word 0x00000694
_021AA894: .word 0x00000614
	thumb_func_end ovy298_21aa7b4

	thumb_func_start ovy298_21aa898
ovy298_21aa898: ; 0x021AA898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _021AA974 ; =0x000006B8
	add r5, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	mov r6, #0
	cmp r0, #0
	beq _021AA8B8
	cmp r0, #4
	bne _021AA8B8
	ldr r0, _021AA978 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	blo _021AA8B8
	add r6, r1, #0
_021AA8B8:
	cmp r1, #0
	beq _021AA8EA
	cmp r6, #0
	beq _021AA8EA
	mov r7, #0
	add r4, sp, #4
	strh r7, [r4]
	ldr r0, _021AA97C ; =0x000005EC
	strh r7, [r4, #2]
	ldr r0, [r5, r0]
	add r1, sp, #4
	mov r2, #0
	bl Oam_SetSpritePosData
	mov r0, #0x80
	strh r0, [r4]
	ldr r0, _021AA97C ; =0x000005EC
	strh r7, [r4, #2]
	add r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #4
	mov r2, #0
	bl Oam_SetSpritePosData
	b _021AA902
_021AA8EA:
	cmp r1, #0
	beq _021AA902
	mov r1, #0x40
	add r0, sp, #4
	strh r1, [r0]
	mov r2, #0
	strh r2, [r0, #2]
	ldr r0, _021AA97C ; =0x000005EC
	add r1, sp, #4
	ldr r0, [r5, r0]
	bl Oam_SetSpritePosData
_021AA902:
	ldr r0, _021AA980 ; =0x0000054E
	ldrh r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _021AA918
	mov r0, #1
	b _021AA91A
_021AA918:
	mov r0, #0
_021AA91A:
	str r0, [sp]
	ldr r4, _021AA97C ; =0x000005EC
	mov r1, #1
	ldr r0, [r5, r4]
	mov r7, #1
	bl sub_0204C124
	ldr r1, [sp]
	ldr r0, [r5, r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C488
	cmp r6, #0
	beq _021AA966
	sub r4, #0x9c
	ldrh r0, [r5, r4]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _021AA94C
	mov r7, #0
_021AA94C:
	mov r4, #0x5f
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	lsl r1, r7, #0x18
	ldr r0, [r5, r4]
	lsr r1, r1, #0x18
	bl sub_0204C488
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021AA966:
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA974: .word 0x000006B8
_021AA978: .word 0x00000548
_021AA97C: .word 0x000005EC
_021AA980: .word 0x0000054E
	thumb_func_end ovy298_21aa898

	thumb_func_start ovy298_21aa984
ovy298_21aa984: ; 0x021AA984
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r3, _021AAA2C ; =0x000006B8
	add r5, r1, #0
	ldr r3, [r5, r3]
	mov r1, #0
	cmp r3, #0
	beq _021AA9A2
	cmp r3, #4
	bne _021AA9A2
	ldr r3, _021AAA30 ; =0x00000548
	ldrh r3, [r5, r3]
	cmp r3, #3
	blo _021AA9A2
	mov r1, #1
_021AA9A2:
	cmp r1, #0
	beq _021AAA14
	mov r4, #0x55
	lsl r4, r4, #4
	ldrh r1, [r5, r4]
	sub r3, r4, #2
	str r1, [sp]
	ldrh r3, [r5, r3]
	add r1, r5, #0
	bl ovy298_21aacc4
	add r1, r0, #0
	mov r6, #0
	add r0, r4, #0
	str r6, [sp]
	sub r0, #8
	ldrh r0, [r5, r0]
	mov r2, #0
	add r3, sp, #4
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ovy298_21aac00
	add r0, sp, #4
	ldrb r1, [r0]
	mov r2, #0
	strh r1, [r0, #2]
	mov r1, #0x30
	strh r1, [r0, #4]
	add r0, r4, #0
	add r0, #0x98
	add r1, sp, #4
	ldr r0, [r5, r0]
	add r1, #2
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #0x98
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, _021AAA34 ; =0x00000698
	add sp, #0xc
	add r1, r0, #0
	str r6, [r5, r0]
	add r1, #0x3c
	str r6, [r5, r1]
	add r0, r0, #4
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021AAA14:
	ldr r4, _021AAA38 ; =0x000005E4
	mov r1, #0
	ldr r0, [r5, r4]
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021AAA2C: .word 0x000006B8
_021AAA30: .word 0x00000548
_021AAA34: .word 0x00000698
_021AAA38: .word 0x000005E4
	thumb_func_end ovy298_21aa984

	thumb_func_start ovy298_21aaa3c
ovy298_21aaa3c: ; 0x021AAA3C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_0219FD34
	bl ovy298_21a21d4
	cmp r0, #0
	bne _021AAA8A
	ldr r1, _021AAA8C ; =0x000006B8
	ldr r0, [r4, r1]
	cmp r0, #4
	bne _021AAA6A
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021AAA6A
	sub r1, #0x24
	ldr r0, [r4, r1]
	cmp r0, #5
	beq _021AAA72
_021AAA6A:
	ldr r0, _021AAA90 ; =0x000006D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021AAA8A
_021AAA72:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21aaba4
	cmp r0, #0
	bne _021AAA8A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy298_21aaa94
_021AAA8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021AAA8C: .word 0x000006B8
_021AAA90: .word 0x000006D4
	thumb_func_end ovy298_21aaa3c

	thumb_func_start ovy298_21aaa94
ovy298_21aaa94: ; 0x021AAA94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r0, r2, #0
	add r5, r1, #0
	str r2, [sp, #8]
	bl sub_0219FD34
	ldr r7, _021AAB94 ; =0x0000069C
	add r6, r0, #0
	ldr r0, [r5, r7]
	mov r4, #0
	cmp r0, #0
	beq _021AAAC8
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DA84
	cmp r0, #0
	bne _021AAAFE
	add r0, r6, #0
	mov r1, #1
	str r4, [r5, r7]
	bl ovy298_21a15e8
	b _021AAAFE
_021AAAC8:
	ldr r0, _021AAB98 ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #3
	blo _021AAAFE
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DAC8
	cmp r0, #0
	beq _021AAAFE
	ldr r0, [sp, #0x14]
	cmp r0, #0x90
	blo _021AAAFE
	cmp r0, #0xe7
	bhi _021AAAFE
	ldr r0, [sp, #0x10]
	cmp r0, #0x28
	blo _021AAAFE
	cmp r0, #0x3f
	bhi _021AAAFE
	mov r0, #1
	str r0, [r5, r7]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy298_21a15e8
	mov r4, #1
_021AAAFE:
	ldr r0, _021AAB94 ; =0x0000069C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021AAB74
	mov r0, #0x55
	lsl r0, r0, #4
	ldr r1, [sp, #0x14]
	ldrh r7, [r5, r0]
	cmp r1, #0xdc
	bls _021AAB16
	mov r1, #0xdc
	b _021AAB1C
_021AAB16:
	cmp r1, #0x9c
	bhs _021AAB1C
	mov r1, #0x9c
_021AAB1C:
	str r1, [sp, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x30
	strh r1, [r0, #2]
	ldr r6, _021AAB9C ; =0x000005E8
	add r1, sp, #0xc
	ldr r0, [r5, r6]
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r6, #0
	sub r0, #0xa0
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x14]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl ovy298_21aac6c
	add r3, r6, #0
	str r0, [sp]
	sub r3, #0x9a
	ldrh r3, [r5, r3]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ovy298_21aacf4
	add r1, r6, #0
	sub r1, #0x98
	sub r6, #0x98
	strh r0, [r5, r1]
	ldrh r0, [r5, r6]
	cmp r7, r0
	beq _021AAB74
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ovy298_21a9ae4
	mov r4, #1
_021AAB74:
	cmp r4, #0
	beq _021AAB7E
	ldr r0, _021AABA0 ; =0x00000645
	bl GFL_SndSEPlay
_021AAB7E:
	ldr r0, _021AAB94 ; =0x0000069C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021AAB8C
	mov r0, #1
	bl sub_0203D564
_021AAB8C:
	ldr r0, _021AAB94 ; =0x0000069C
	ldr r0, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAB94: .word 0x0000069C
_021AAB98: .word 0x00000548
_021AAB9C: .word 0x000005E8
_021AABA0: .word 0x00000645
	thumb_func_end ovy298_21aaa94

	thumb_func_start ovy298_21aaba4
ovy298_21aaba4: ; 0x021AABA4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r3, _021AABFC ; =0x00000698
	add r5, r1, #0
	ldr r3, [r5, r3]
	mov r4, #0
	cmp r3, #0
	beq _021AABF6
	mov r6, #0x55
	lsl r6, r6, #4
	ldrh r3, [r5, r6]
	str r3, [sp]
	sub r3, r6, #2
	ldrh r3, [r5, r3]
	bl ovy298_21aacc4
	add r1, r0, #0
	add r0, r6, #0
	str r4, [sp]
	sub r0, #8
	ldrh r0, [r5, r0]
	add r2, r4, #0
	add r3, sp, #4
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ovy298_21aac00
	add r0, sp, #4
	ldrb r1, [r0]
	add r6, #0x98
	add r2, r4, #0
	strh r1, [r0, #2]
	mov r1, #0x30
	strh r1, [r0, #4]
	add r1, sp, #4
	ldr r0, [r5, r6]
	add r1, #2
	bl Oam_SetSpritePosData
	mov r4, #1
_021AABF6:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021AABFC: .word 0x00000698
	thumb_func_end ovy298_21aaba4

	thumb_func_start ovy298_21aac00
ovy298_21aac00: ; 0x021AAC00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	lsl r0, r5, #6
	add r0, r5, r0
	add r1, r6, #0
	add r7, r2, #0
	str r3, [sp]
	blx sub_0208D65C
	add r0, #0x9c
	lsl r0, r0, #0x18
	add r1, r5, #1
	lsr r4, r0, #0x18
	lsl r0, r1, #6
	add r0, r1, r0
	add r1, r6, #0
	blx sub_0208D65C
	add r0, #0x9c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r5, #0
	bne _021AAC34
_021AAC30:
	add r2, r4, #0
	b _021AAC52
_021AAC34:
	sub r1, r6, #1
	cmp r5, r1
	bne _021AAC40
	sub r1, r0, #1
	lsl r1, r1, #0x18
	b _021AAC50
_021AAC40:
	cmp r4, r0
	blo _021AAC46
	b _021AAC30
_021AAC46:
	add r1, r4, r0
	sub r2, r1, #1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0x17
_021AAC50:
	lsr r2, r1, #0x18
_021AAC52:
	cmp r7, #0
	beq _021AAC58
	strb r4, [r7]
_021AAC58:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _021AAC60
	strb r0, [r1]
_021AAC60:
	ldr r0, [sp]
	cmp r0, #0
	beq _021AAC68
	strb r2, [r0]
_021AAC68:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21aac00

	thumb_func_start ovy298_21aac6c
ovy298_21aac6c: ; 0x021AAC6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	cmp r6, #0
	bls _021AACBC
	sub r0, r6, #1
	str r0, [sp, #4]
	add r7, sp, #8
_021AAC80:
	add r0, sp, #8
	add r2, sp, #8
	add r3, sp, #8
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, #2
	add r3, #1
	bl ovy298_21aac00
	cmp r4, #0
	bne _021AACA0
	ldrb r0, [r7]
	cmp r5, r0
	blo _021AACBC
	b _021AACB2
_021AACA0:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _021AACBC
	ldrb r0, [r7, #2]
	cmp r0, r5
	bhi _021AACB2
	ldrb r0, [r7]
	cmp r5, r0
	blo _021AACBC
_021AACB2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _021AAC80
_021AACBC:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy298_21aac6c

	thumb_func_start ovy298_21aacc4
ovy298_21aacc4: ; 0x021AACC4
	push {r4, r5}
	ldr r5, _021AACF0 ; =0x00000548
	ldr r4, [sp, #8]
	ldrh r1, [r1, r5]
	mov r0, #0
	mov r2, #0
	cmp r1, #0
	bls _021AACEC
_021AACD4:
	cmp r2, r3
	beq _021AACE2
	cmp r2, r4
	beq _021AACEC
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_021AACE2:
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, r1
	blo _021AACD4
_021AACEC:
	pop {r4, r5}
	bx lr
	.align 2, 0
_021AACF0: .word 0x00000548
	thumb_func_end ovy298_21aacc4

	thumb_func_start ovy298_21aacf4
ovy298_21aacf4: ; 0x021AACF4
	push {r3, r4, r5, r6}
	ldr r6, _021AAD28 ; =0x00000548
	ldr r5, [sp, #0x10]
	ldrh r1, [r1, r6]
	mov r0, #0
	mov r2, #0
	mov r4, #0
	cmp r1, #0
	bls _021AAD24
_021AAD06:
	cmp r4, r3
	beq _021AAD1A
	cmp r2, r5
	bne _021AAD14
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
_021AAD14:
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
_021AAD1A:
	add r4, r4, #1
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	cmp r4, r1
	blo _021AAD06
_021AAD24:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021AAD28: .word 0x00000548
	thumb_func_end ovy298_21aacf4

	thumb_func_start ovy298_21aad2c
ovy298_21aad2c: ; 0x021AAD2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r3, _021AB078 ; =0x000006BC
	add r5, r1, #0
	ldr r3, [r5, r3]
	add r7, r0, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021AAD78
	ldr r3, _021AB078 ; =0x000006BC
	add r3, r3, #4
	ldr r6, [r5, r3]
	mov r3, #1
	lsl r3, r3, #0xa
	add r3, r6, r3
	ldr r6, _021AB078 ; =0x000006BC
	add r6, r6, #4
	str r3, [r5, r6]
	mov r6, #1
	lsl r6, r6, #0xf
	cmp r3, r6
	bge _021AAD5A
	b _021AAE96
_021AAD5A:
	ldr r6, _021AB078 ; =0x000006BC
	mov r3, #1
	lsl r3, r3, #0xf
	add r6, r6, #4
	str r3, [r5, r6]
	ldr r3, _021AB078 ; =0x000006BC
	mov r6, #0
	str r6, [r5, r3]
	mov r3, #4
	bl ovy298_21a9dbc
	ldr r0, _021AB07C ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #2
	bhs _021AAD7A
_021AAD78:
	b _021AB2CE
_021AAD7A:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AAD9E
	add r0, r5, #0
	add r6, sp, #0x4c
	add r0, #0x94
	mov r1, #1
	add r2, r6, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0201AB24
_021AAD9E:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AADC2
	add r0, r5, #0
	add r6, sp, #0x4c
	add r0, #0xd8
	mov r1, #1
	add r2, r6, #0
	bl sub_021ABF40
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0201AB24
_021AADC2:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	cmp r0, #0
	bne _021AADD0
	mov r1, #3
_021AADD0:
	mov r0, #0x44
	mul r0, r1
	add r0, r5, r0
	add r6, sp, #0x4c
	ldr r0, [r0, #0xc]
	add r1, r6, #0
	bl ovy298_21a8f78
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AADFA
	add r0, r5, #0
	add r0, #0xc
	mov r1, #2
	add r2, r6, #0
	bl sub_021ABF40
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_0201AB24
_021AADFA:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021AAE16
	add r0, r5, #0
	add r6, sp, #0x4c
	add r0, #0x50
	mov r1, #2
	add r2, r6, #0
	bl sub_021ABF40
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_0201AB24
_021AAE16:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21abc14
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a9b70
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a8cd4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21a8d2c
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy298_21aa898
	add r0, r4, #0
	bl sub_0219FD40
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219FD24
	bl sub_0200D190
	ldr r1, _021AB080 ; =0x0000054E
	ldr r3, _021AB084 ; =0x00000152
	ldrh r1, [r5, r1]
	lsl r4, r1, #4
	add r1, r5, r4
	ldrb r2, [r1, r3]
	add r3, r3, #1
	ldrb r1, [r1, r3]
	mov r3, #1
	cmp r1, #0
	bne _021AAE72
	mov r3, #0
_021AAE72:
	mov r1, #0x55
	add r4, r5, r4
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	str r1, [sp]
	add r1, r6, #0
	bl sub_0200D220
	ldr r0, _021AB07C ; =0x00000548
	ldrh r0, [r5, r0]
	cmp r0, #3
	bhs _021AAE8C
	b _021AB2CE
_021AAE8C:
	ldr r0, _021AB088 ; =0x00000698
	mov r1, #1
	add sp, #0x58
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021AAE96:
	asr r0, r3, #4
	lsl r1, r0, #2
	ldr r0, _021AB08C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	blx sub_0208D374
	ldr r1, _021AB090 ; =0x45800000
	blx sub_0208E3C8
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AAFA6
	add r0, r5, #0
	add r0, #0xc
	mov r1, #3
	add r2, sp, #0x40
	bl sub_021ABF60
	add r0, r5, #0
	add r0, #0xc
	mov r1, #4
	add r2, sp, #0x34
	bl sub_021ABF60
	ldr r0, _021AB078 ; =0x000006BC
	add r0, r0, #4
	ldr r0, [r5, r0]
	blx sub_0208D374
	add r4, r0, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	blx sub_0208E144
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	mov r1, #0x47
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x40]
	blx sub_0208DF14
	add r6, r0, #0
	ldr r0, _021AB094 ; =0x41800000
	add r1, r7, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	blx sub_0208DF14
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	bls _021AAF26
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AAF34
_021AAF26:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AAF34:
	blx sub_0208DA4C
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	bls _021AAF58
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AAF66
_021AAF58:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AAF66:
	blx sub_0208DA4C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	bls _021AAF8A
	ldr r1, [sp, #0x48]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AAF98
_021AAF8A:
	ldr r1, [sp, #0x48]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AAF98:
	blx sub_0208DA4C
	str r0, [sp, #0x30]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x28
	bl sub_0201AB24
_021AAFA6:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _021AAFAE
	b _021AB0C8
_021AAFAE:
	add r0, r5, #0
	add r0, #0x50
	mov r1, #3
	add r2, sp, #0x40
	bl sub_021ABF60
	add r0, r5, #0
	add r0, #0x50
	mov r1, #4
	add r2, sp, #0x34
	bl sub_021ABF60
	mov r0, #0x1b
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	blx sub_0208D374
	add r4, r0, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	blx sub_0208E144
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	mov r1, #0x47
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x40]
	blx sub_0208DF14
	add r6, r0, #0
	ldr r0, _021AB094 ; =0x41800000
	add r1, r7, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	blx sub_0208DF14
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	bls _021AB024
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB032
_021AB024:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB032:
	blx sub_0208DA4C
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	bls _021AB056
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB064
_021AB056:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB064:
	blx sub_0208DA4C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB090 ; =0x45800000
	b _021AB098
	nop
_021AB078: .word 0x000006BC
_021AB07C: .word 0x00000548
_021AB080: .word 0x0000054E
_021AB084: .word 0x00000152
_021AB088: .word 0x00000698
_021AB08C: .word FX_SinCosTable_
_021AB090: .word 0x45800000
_021AB094: .word 0x41800000
_021AB098:
	bls _021AB0AC
	ldr r1, [sp, #0x48]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB0BA
_021AB0AC:
	ldr r1, [sp, #0x48]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB0BA:
	blx sub_0208DA4C
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x50]
	add r1, sp, #0x28
	bl sub_0201AB24
_021AB0C8:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB1CC
	add r0, r5, #0
	add r0, #0x94
	mov r1, #3
	add r2, sp, #0x1c
	bl sub_021ABF60
	add r0, r5, #0
	add r0, #0x94
	mov r1, #4
	add r2, sp, #0x10
	bl sub_021ABF60
	mov r0, #0x1b
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	blx sub_0208D374
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	blx sub_0208E144
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	mov r1, #0x47
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	blx sub_0208DF14
	add r6, r0, #0
	ldr r0, _021AB2D4 ; =0xC1800000
	add r1, r7, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	blx sub_0208DF14
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB148
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB156
_021AB148:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB156:
	blx sub_0208DA4C
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB17A
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB188
_021AB17A:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB188:
	blx sub_0208DA4C
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB1AC
	ldr r1, [sp, #0x18]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB1BA
_021AB1AC:
	ldr r1, [sp, #0x18]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB1BA:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_0201AB24
_021AB1CC:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB2CE
	add r0, r5, #0
	add r0, #0xd8
	mov r1, #3
	add r2, sp, #0x1c
	bl sub_021ABF60
	add r0, r5, #0
	add r0, #0xd8
	mov r1, #4
	add r2, sp, #0x10
	bl sub_021ABF60
	mov r0, #0x1b
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	blx sub_0208D374
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	blx sub_0208E144
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	mov r1, #0x47
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	blx sub_0208DF14
	add r6, r0, #0
	ldr r0, _021AB2D4 ; =0xC1800000
	add r1, r7, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	blx sub_0208DF14
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB24C
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB25A
_021AB24C:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB25A:
	blx sub_0208DA4C
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB27E
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB28C
_021AB27E:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB28C:
	blx sub_0208DA4C
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB2D8 ; =0x45800000
	bls _021AB2B0
	ldr r1, [sp, #0x18]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB2BE
_021AB2B0:
	ldr r1, [sp, #0x18]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB2BE:
	blx sub_0208DA4C
	add r5, #0xd8
	str r0, [sp, #0xc]
	ldr r0, [r5]
	add r1, sp, #4
	bl sub_0201AB24
_021AB2CE:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AB2D4: .word 0xC1800000
_021AB2D8: .word 0x45800000
	thumb_func_end ovy298_21aad2c

	thumb_func_start ovy298_21ab2dc
ovy298_21ab2dc: ; 0x021AB2DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, _021AB3C4 ; =0x000006C8
	add r5, r1, #0
	mov r4, #0x55
	lsl r4, r4, #4
	ldr r0, [r5, r0]
	str r2, [sp, #0xc]
	ldrh r6, [r5, r4]
	cmp r0, #0
	bne _021AB308
	add r0, r4, #0
	sub r0, #8
	ldrh r1, [r5, r0]
	cmp r1, #3
	blo _021AB322
	sub r0, r4, #2
	ldrh r0, [r5, r0]
	add r0, r0, r1
	sub r0, r0, #1
	b _021AB318
_021AB308:
	add r0, r4, #0
	sub r0, #8
	ldrh r1, [r5, r0]
	cmp r1, #3
	blo _021AB322
	sub r0, r4, #2
	ldrh r0, [r5, r0]
	add r0, r0, #1
_021AB318:
	strh r0, [r5, r4]
	ldrh r0, [r5, r4]
	blx sub_0208D868
	strh r1, [r5, r4]
_021AB322:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021AB336
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB34E
_021AB336:
	cmp r1, #0
	bne _021AB344
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB34E
_021AB344:
	mov r0, #0x55
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	cmp r0, r6
	beq _021AB3B6
_021AB34E:
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x94
	bl ovy298_21a9020
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0xd8
	bl ovy298_21a9020
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #2
	cmp r0, #0
	bne _021AB370
	mov r6, #4
_021AB370:
	mov r4, #4
	cmp r0, #0
	bne _021AB378
	mov r4, #3
_021AB378:
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x55
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021AB3A4
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #2
	add r2, r5, #0
	bl sub_021A9048
_021AB3A4:
	cmp r4, #4
	beq _021AB3B6
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
_021AB3B6:
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy298_21ab3c8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB3C4: .word 0x000006C8
	thumb_func_end ovy298_21ab2dc

	thumb_func_start ovy298_21ab3c8
ovy298_21ab3c8: ; 0x021AB3C8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _021AB484 ; =0x000006C8
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021AB42C
	ldr r0, _021AB488 ; =0xFFFC0000
	str r0, [sp]
	ldr r0, _021AB48C ; =0xFFFF219A
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB406
	add r0, r4, #0
	add r5, sp, #0
	add r0, #0x94
	mov r1, #1
	add r2, r5, #0
	bl ovy298_21abe8c
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021AB406:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB480
	add r0, r4, #0
	add r5, sp, #0
	add r0, #0xd8
	mov r1, #1
	add r2, r5, #0
	bl ovy298_21abe8c
	add r4, #0xd8
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_0201AB24
	add sp, #0xc
	pop {r4, r5, pc}
_021AB42C:
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp]
	ldr r0, _021AB48C ; =0xFFFF219A
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB45E
	add r0, r4, #0
	add r5, sp, #0
	add r0, #0x94
	mov r1, #2
	add r2, r5, #0
	bl ovy298_21abe8c
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0201AB24
_021AB45E:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB480
	add r0, r4, #0
	add r5, sp, #0
	add r0, #0xd8
	mov r1, #2
	add r2, r5, #0
	bl ovy298_21abe8c
	add r4, #0xd8
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_0201AB24
_021AB480:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021AB484: .word 0x000006C8
_021AB488: .word 0xFFFC0000
_021AB48C: .word 0xFFFF219A
	thumb_func_end ovy298_21ab3c8

	thumb_func_start ovy298_21ab490
ovy298_21ab490: ; 0x021AB490
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r3, _021AB6E0 ; =0x000006C4
	add r4, r1, #0
	ldr r3, [r4, r3]
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #1
	beq _021AB4A4
	b _021AB600
_021AB4A4:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	mov r1, #2
	cmp r0, #0
	bne _021AB4B4
	mov r1, #3
_021AB4B4:
	add r6, r4, #0
	mov r0, #0x44
	mul r0, r1
	add r6, #0xc
	str r0, [sp, #8]
	add r0, r6, r0
	mov r1, #0
	add r2, sp, #0x24
	bl sub_021ABF60
	ldr r0, [sp, #8]
	add r1, sp, #0x30
	ldr r0, [r6, r0]
	ldr r7, [sp, #0x24]
	bl sub_0201AB0C
	ldr r0, [sp, #0x30]
	blx sub_0208D374
	ldr r1, _021AB6E4 ; =0x45800000
	blx sub_0208E3C8
	ldr r1, _021AB6E8 ; =0x000006C8
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021AB4FC
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208DF14
	add r1, r7, #0
	add r6, r0, #0
	blx sub_0208D174
	blo _021AB510
	b _021AB50E
_021AB4FC:
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E144
	add r1, r7, #0
	add r6, r0, #0
	blx sub_0208D22C
	bhi _021AB510
_021AB50E:
	mov r5, #1
_021AB510:
	cmp r5, #0
	beq _021AB51C
	ldr r0, _021AB6E0 ; =0x000006C4
	mov r1, #2
	add r6, r7, #0
	str r1, [r4, r0]
_021AB51C:
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB6E4 ; =0x45800000
	bls _021AB53A
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB548
_021AB53A:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB548:
	blx sub_0208DA4C
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB55E
	add r1, sp, #0x30
	bl sub_0201AB24
_021AB55E:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB56E
	add r1, sp, #0x30
	bl sub_0201AB24
_021AB56E:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	cmp r0, #0
	bne _021AB57C
	mov r1, #1
_021AB57C:
	mov r0, #0x44
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	add r1, sp, #0x30
	bl sub_0201AB0C
	ldr r0, [sp, #0x30]
	blx sub_0208D374
	ldr r1, _021AB6E4 ; =0x45800000
	blx sub_0208E3C8
	ldr r1, _021AB6E8 ; =0x000006C8
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021AB5A8
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208DF14
	b _021AB5B0
_021AB5A8:
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E144
_021AB5B0:
	add r5, r0, #0
	add r0, r5, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB6E4 ; =0x45800000
	bls _021AB5D0
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB5DE
_021AB5D0:
	add r1, r5, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB5DE:
	blx sub_0208DA4C
	str r0, [sp, #0x30]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021AB5F0
	add r1, sp, #0x30
	bl sub_0201AB24
_021AB5F0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021AB6DC
	add r1, sp, #0x30
	bl sub_0201AB24
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021AB600:
	cmp r3, #2
	bne _021AB6DC
	mov r3, #0
	mov r7, #0
	bl ovy298_21a9dbc
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21abc14
	add r0, r4, #0
	add r0, #0x94
	bl sub_021A9080
	add r0, r4, #0
	add r0, #0xd8
	bl sub_021A9080
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21a9b70
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21a8cd4
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21a8d2c
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21aa898
	add r0, r5, #0
	bl sub_0219FD40
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0219FD24
	bl sub_0200D190
	mov ip, r0
	ldr r0, _021AB6EC ; =0x0000054E
	ldr r2, _021AB6F0 ; =0x00000152
	ldrh r0, [r4, r0]
	lsl r1, r0, #4
	add r0, r4, r1
	ldrb r3, [r0, r2]
	add r2, r2, #1
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _021AB678
	mov r7, #1
_021AB678:
	mov r0, #0x55
	add r1, r4, r1
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	add r2, r3, #0
	add r3, r7, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r0, ip
	bl sub_0200D220
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021AB6AA
	add r0, r4, #0
	add r7, sp, #0x18
	add r0, #0xc
	mov r1, #0
	add r2, r7, #0
	bl sub_021ABF40
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl sub_0201AB24
_021AB6AA:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021AB6C6
	add r0, r4, #0
	add r7, sp, #0xc
	add r0, #0x50
	mov r1, #0
	add r2, r7, #0
	bl sub_021ABF40
	ldr r0, [r4, #0x50]
	add r1, r7, #0
	bl sub_0201AB24
_021AB6C6:
	ldr r7, _021AB6E8 ; =0x000006C8
	mov r0, #1
	str r0, [r4, r7]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy298_21ab2dc
	mov r1, #0
	sub r0, r7, #4
	str r1, [r4, r0]
_021AB6DC:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AB6E0: .word 0x000006C4
_021AB6E4: .word 0x45800000
_021AB6E8: .word 0x000006C8
_021AB6EC: .word 0x0000054E
_021AB6F0: .word 0x00000152
	thumb_func_end ovy298_21ab490

	thumb_func_start ovy298_21ab6f4
ovy298_21ab6f4: ; 0x021AB6F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	ldr r3, _021AB9F4 ; =0x00000548
	add r5, r1, #0
	ldrh r3, [r5, r3]
	str r0, [sp]
	str r2, [sp, #4]
	cmp r3, #2
	ldr r3, _021AB9F8 ; =0x000006B8
	bhs _021AB728
	ldr r3, [r5, r3]
	cmp r3, #2
	bne _021AB718
	mov r3, #3
	bl ovy298_21a9dbc
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_021AB718:
	cmp r3, #6
	beq _021AB71E
	b _021ABB6E
_021AB71E:
	mov r3, #7
	bl ovy298_21a9dbc
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_021AB728:
	ldr r4, [r5, r3]
	cmp r4, #2
	beq _021AB730
	b _021AB938
_021AB730:
	add r3, #0x14
	ldr r0, [r5, r3]
	cmp r0, #0
	bne _021AB814
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	cmp r0, #0
	bne _021AB746
	mov r1, #1
_021AB746:
	add r4, r5, #0
	add r6, r1, #0
	mov r0, #0x44
	add r4, #0xc
	mul r6, r0
	add r0, r4, r6
	mov r1, #3
	add r2, sp, #0x68
	bl sub_021ABF60
	ldr r0, [r4, r6]
	add r1, sp, #0x74
	ldr r7, [sp, #0x68]
	bl sub_0201AB0C
	ldr r0, [sp, #0x74]
	blx sub_0208D374
	ldr r1, _021AB9FC ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
	add r1, r7, #0
	add r4, r0, #0
	blx sub_0208D22C
	bhi _021AB78A
	ldr r0, _021ABA00 ; =0x000006CC
	mov r1, #1
	add r4, r7, #0
	str r1, [r5, r0]
_021AB78A:
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB9FC ; =0x45800000
	bls _021AB7A8
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB7B6
_021AB7A8:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB7B6:
	blx sub_0208DA4C
	str r0, [sp, #0x74]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AB7C8
	add r1, sp, #0x74
	bl sub_0201AB24
_021AB7C8:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021AB7D4
	add r1, sp, #0x74
	bl sub_0201AB24
_021AB7D4:
	ldr r0, _021ABA00 ; =0x000006CC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021AB814
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AB7F8
	add r0, r5, #0
	add r4, sp, #0x5c
	add r0, #0xc
	mov r1, #3
	add r2, r4, #0
	bl ovy298_21abe8c
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0201AB24
_021AB7F8:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021AB814
	add r0, r5, #0
	add r4, sp, #0x5c
	add r0, #0x50
	mov r1, #3
	add r2, r4, #0
	bl ovy298_21abe8c
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl sub_0201AB24
_021AB814:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021AB916
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	cmp r0, #0
	bne _021AB82C
	mov r1, #3
_021AB82C:
	add r4, r5, #0
	add r6, r1, #0
	mov r0, #0x44
	add r4, #0xc
	mul r6, r0
	add r0, r4, r6
	mov r1, #4
	add r2, sp, #0x50
	bl sub_021ABF60
	ldr r0, [r4, r6]
	add r1, sp, #0x74
	ldr r7, [sp, #0x50]
	bl sub_0201AB0C
	ldr r0, [sp, #0x74]
	blx sub_0208D374
	ldr r1, _021AB9FC ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0xff
	lsl r1, r1, #0x16
	blx sub_0208E144
	add r1, r7, #0
	add r4, r0, #0
	blx sub_0208D22C
	bhi _021AB872
	mov r0, #0x6d
	mov r1, #1
	lsl r0, r0, #4
	add r4, r7, #0
	str r1, [r5, r0]
_021AB872:
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB9FC ; =0x45800000
	bls _021AB890
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB89E
_021AB890:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB89E:
	blx sub_0208DA4C
	str r0, [sp, #0x74]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB8B4
	add r1, sp, #0x74
	bl sub_0201AB24
_021AB8B4:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB8C4
	add r1, sp, #0x74
	bl sub_0201AB24
_021AB8C4:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021AB916
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB8F2
	add r0, r5, #0
	add r4, sp, #0x44
	add r0, #0x94
	mov r1, #4
	add r2, r4, #0
	bl ovy298_21abe8c
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021AB8F2:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021AB916
	add r0, r5, #0
	add r4, sp, #0x44
	add r0, #0xd8
	mov r1, #4
	add r2, r4, #0
	bl ovy298_21abe8c
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021AB916:
	ldr r0, _021ABA00 ; =0x000006CC
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021AB926
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021AB928
_021AB926:
	b _021ABB6E
_021AB928:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	mov r3, #3
	bl ovy298_21a9dbc
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_021AB938:
	cmp r4, #3
	bne _021AB946
	mov r3, #4
	bl ovy298_21a9dbc
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_021AB946:
	cmp r4, #6
	beq _021AB94C
	b _021ABB64
_021AB94C:
	add r3, #0x14
	ldr r0, [r5, r3]
	cmp r0, #0
	bne _021ABA42
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	cmp r0, #0
	bne _021AB962
	mov r1, #1
_021AB962:
	add r4, r5, #0
	add r6, r1, #0
	mov r0, #0x44
	add r4, #0xc
	mul r6, r0
	add r0, r4, r6
	mov r1, #0
	add r2, sp, #0x2c
	bl sub_021ABF60
	ldr r0, [r4, r6]
	add r1, sp, #0x38
	ldr r7, [sp, #0x2c]
	bl sub_0201AB0C
	ldr r0, [sp, #0x38]
	blx sub_0208D374
	ldr r1, _021AB9FC ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208DF14
	add r1, r7, #0
	add r4, r0, #0
	blx sub_0208D174
	blo _021AB9A6
	ldr r0, _021ABA00 ; =0x000006CC
	mov r1, #1
	add r4, r7, #0
	str r1, [r5, r0]
_021AB9A6:
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021AB9FC ; =0x45800000
	bls _021AB9C4
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021AB9D2
_021AB9C4:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021AB9D2:
	blx sub_0208DA4C
	str r0, [sp, #0x38]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AB9E4
	add r1, sp, #0x38
	bl sub_0201AB24
_021AB9E4:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021AB9F0
	add r1, sp, #0x38
	bl sub_0201AB24
_021AB9F0:
	ldr r0, _021ABA00 ; =0x000006CC
	b _021ABA04
	.align 2, 0
_021AB9F4: .word 0x00000548
_021AB9F8: .word 0x000006B8
_021AB9FC: .word 0x45800000
_021ABA00: .word 0x000006CC
_021ABA04:
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021ABA42
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021ABA26
	add r0, r5, #0
	add r4, sp, #0x20
	add r0, #0xc
	mov r1, #0
	add r2, r4, #0
	bl ovy298_21abe8c
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0201AB24
_021ABA26:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021ABA42
	add r0, r5, #0
	add r4, sp, #0x20
	add r0, #0x50
	mov r1, #0
	add r2, r4, #0
	bl ovy298_21abe8c
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl sub_0201AB24
_021ABA42:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021ABB44
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	cmp r0, #0
	bne _021ABA5A
	mov r1, #3
_021ABA5A:
	add r4, r5, #0
	add r6, r1, #0
	mov r0, #0x44
	add r4, #0xc
	mul r6, r0
	add r0, r4, r6
	mov r1, #2
	add r2, sp, #0x14
	bl sub_021ABF60
	ldr r0, [r4, r6]
	add r1, sp, #0x38
	ldr r7, [sp, #0x14]
	bl sub_0201AB0C
	ldr r0, [sp, #0x38]
	blx sub_0208D374
	ldr r1, _021ABB74 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0xff
	lsl r1, r1, #0x16
	blx sub_0208DF14
	add r1, r7, #0
	add r4, r0, #0
	blx sub_0208D174
	blo _021ABAA0
	mov r0, #0x6d
	mov r1, #1
	lsl r0, r0, #4
	add r4, r7, #0
	str r1, [r5, r0]
_021ABAA0:
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021ABB74 ; =0x45800000
	bls _021ABABE
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021ABACC
_021ABABE:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021ABACC:
	blx sub_0208DA4C
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021ABAE2
	add r1, sp, #0x38
	bl sub_0201AB24
_021ABAE2:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021ABAF2
	add r1, sp, #0x38
	bl sub_0201AB24
_021ABAF2:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021ABB44
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021ABB20
	add r0, r5, #0
	add r4, sp, #8
	add r0, #0x94
	mov r1, #2
	add r2, r4, #0
	bl ovy298_21abe8c
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021ABB20:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021ABB44
	add r0, r5, #0
	add r4, sp, #8
	add r0, #0xd8
	mov r1, #2
	add r2, r4, #0
	bl ovy298_21abe8c
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0201AB24
_021ABB44:
	ldr r0, _021ABB78 ; =0x000006CC
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021ABB6E
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021ABB6E
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	mov r3, #7
	bl ovy298_21a9dbc
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_021ABB64:
	cmp r4, #7
	bne _021ABB6E
	mov r3, #0
	bl ovy298_21a9dbc
_021ABB6E:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABB74: .word 0x45800000
_021ABB78: .word 0x000006CC
	thumb_func_end ovy298_21ab6f4

	thumb_func_start ovy298_21abb7c
ovy298_21abb7c: ; 0x021ABB7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, _021ABC10 ; =0x000006B8
	add r5, r1, #0
	ldr r0, [r5, r0]
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _021ABC0A
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x94
	bl ovy298_21a9020
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0xd8
	bl ovy298_21a9020
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02019BCC
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #2
	cmp r0, #0
	bne _021ABBB8
	mov r6, #4
_021ABBB8:
	mov r4, #4
	cmp r0, #0
	bne _021ABBC0
	mov r4, #3
_021ABBC0:
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x55
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl ovy298_21a951c
	cmp r6, #4
	beq _021ABBEC
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #2
	add r2, r5, #0
	bl sub_021A9048
_021ABBEC:
	cmp r4, #4
	beq _021ABBFE
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #3
	add r2, r5, #0
	bl sub_021A9048
_021ABBFE:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	bl sub_02019BCC
_021ABC0A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABC10: .word 0x000006B8
	thumb_func_end ovy298_21abb7c

	thumb_func_start ovy298_21abc14
ovy298_21abc14: ; 0x021ABC14
	push {r4, r5, r6, r7}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _021ABD04 ; =0x0000054E
	add r0, r1, #2
	ldrh r2, [r5, r1]
	ldrh r0, [r5, r0]
	strh r0, [r5, r1]
	add r0, r1, #2
	strh r2, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r5, #0xc]
	ldr r0, [r0]
	ldr r2, [r5, #0x10]
	str r0, [r5, #0xc]
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	str r1, [r5, #0x10]
	str r2, [r0]
	cmp r1, #0
	beq _021ABC50
	mov r0, #0
	str r0, [r1]
_021ABC50:
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r0]
	cmp r1, #0
	beq _021ABC5E
	mov r0, #2
	str r0, [r1]
_021ABC5E:
	add r0, r5, #0
	add r0, #0xd8
	ldr r1, [r5, #0x50]
	ldr r0, [r0]
	ldr r2, [r5, #0x54]
	str r0, [r5, #0x50]
	add r0, r5, #0
	add r0, #0xd8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	str r1, [r5, #0x54]
	str r2, [r0]
	cmp r1, #0
	beq _021ABC86
	mov r0, #1
	str r0, [r1]
_021ABC86:
	add r0, r5, #0
	add r0, #0xdc
	ldr r1, [r0]
	cmp r1, #0
	beq _021ABC94
	mov r0, #3
	str r0, [r1]
_021ABC94:
	mov r4, #0
_021ABC96:
	mov r0, #0xc
	add r3, r4, #0
	mul r3, r0
	add r7, r5, r3
	add r7, #0x14
	add r6, sp, #0xc
	ldmia r7!, {r0, r1}
	add r2, r6, #0
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	add r7, r5, r3
	str r0, [r6]
	add r7, #0x9c
	add r6, r5, r3
	ldmia r7!, {r0, r1}
	add r6, #0x14
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	add r7, r5, r3
	str r0, [r6]
	add r6, r5, r3
	ldmia r2!, {r0, r1}
	add r6, #0x9c
	stmia r6!, {r0, r1}
	ldr r0, [r2]
	add r7, #0x58
	str r0, [r6]
	add r6, sp, #0
	ldmia r7!, {r0, r1}
	add r2, r6, #0
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	add r7, r5, r3
	str r0, [r6]
	add r6, r5, r3
	add r7, #0xe0
	add r3, r5, r3
	ldmia r7!, {r0, r1}
	add r6, #0x58
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	add r3, #0xe0
	str r0, [r6]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021ABC96
	add sp, #0x18
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021ABD04: .word 0x0000054E
	thumb_func_end ovy298_21abc14

	thumb_func_start ovy298_21abd08
ovy298_21abd08: ; 0x021ABD08
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, #0x4f
	add r5, r1, #0
	add r7, r4, #0
	lsl r6, r6, #2
_021ABD14:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021ABD24
	add r1, r7, #0
	bl sub_0204C318
_021ABD24:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021ABD14
	ldr r6, _021ABD80 ; =0x000005E4
	mov r1, #0
	ldr r0, [r5, r6]
	mov r4, #0
	bl sub_0204C318
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C318
	mov r7, #0x28
	add r6, #0x34
_021ABD48:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #0
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021ABD48
	ldr r0, _021ABD84 ; =0x04000050
	mov r4, #4
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0xc
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _021ABD88 ; =0x04001050
	mov r1, #8
	mov r2, #0x3f
	mov r3, #0xc
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ABD80: .word 0x000005E4
_021ABD84: .word 0x04000050
_021ABD88: .word 0x04001050
	thumb_func_end ovy298_21abd08

	thumb_func_start ovy298_21abd8c
ovy298_21abd8c: ; 0x021ABD8C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x4f
	add r5, r1, #0
	mov r4, #0
	mov r7, #1
	lsl r6, r6, #2
_021ABD98:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021ABDA8
	add r1, r7, #0
	bl sub_0204C318
_021ABDA8:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021ABD98
	ldr r6, _021ABDF8 ; =0x000005E4
	mov r1, #1
	ldr r0, [r5, r6]
	bl sub_0204C318
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C318
	mov r4, #0
	mov r7, #0x28
	add r6, #0x34
_021ABDCC:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021ABDCC
	ldr r4, _021ABDFC ; =0x000006A4
	ldr r0, [r5, r4]
	bl sub_0219FE98
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0219FE98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABDF8: .word 0x000005E4
_021ABDFC: .word 0x000006A4
	thumb_func_end ovy298_21abd8c

	thumb_func_start ovy298_21abe00
ovy298_21abe00: ; 0x021ABE00
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x20]
	add r4, r0, #0
	mov lr, r1
	mov ip, r2
	add r7, r3, #0
	mov r5, #0
_021ABE0E:
	mov r0, #0xc
	mul r0, r5
	ldr r1, _021ABE84 ; =0x021AC81C
	add r2, r4, r0
	add r3, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _021ABE0E
	ldr r5, _021ABE88 ; =0x021AC8B0
	mov r0, #0
_021ABE2E:
	mov r1, #0x58
	mul r1, r0
	ldr r3, [r5, r1]
	add r2, r5, r1
	mov r1, lr
	cmp r1, r3
	bne _021ABE76
	ldr r3, [r2, #4]
	mov r1, ip
	cmp r1, r3
	bne _021ABE76
	ldr r1, [r2, #0x14]
	cmp r6, r1
	bne _021ABE76
	ldr r1, [r2, #8]
	cmp r1, #3
	beq _021ABE54
	cmp r7, r1
	bne _021ABE76
_021ABE54:
	mov r3, #0
	mov r5, #0xc
_021ABE58:
	add r0, r3, #0
	mul r0, r5
	add r7, r2, r0
	add r7, #0x1c
	add r6, r4, r0
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	str r0, [r6]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _021ABE58
	pop {r3, r4, r5, r6, r7, pc}
_021ABE76:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	blo _021ABE2E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABE84: .word 0x021AC81C
_021ABE88: .word 0x021AC8B0
	thumb_func_end ovy298_21abe00

	thumb_func_start ovy298_21abe8c
ovy298_21abe8c: ; 0x021ABE8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xc
	add r7, r5, #0
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	mov r1, #0
	add r6, r2, #0
	blx sub_0208D1D0
	ldr r0, _021ABF3C ; =0x45800000
	bls _021ABEBA
	ldr r1, [r7, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021ABEC8
_021ABEBA:
	ldr r1, [r7, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021ABEC8:
	blx sub_0208DA4C
	add r7, r5, #0
	add r7, #0xc
	str r0, [r6]
	ldr r0, [r7, r4]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021ABF3C ; =0x45800000
	bls _021ABEF0
	ldr r1, [r7, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021ABEFE
_021ABEF0:
	ldr r1, [r7, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021ABEFE:
	blx sub_0208DA4C
	add r5, #0x10
	str r0, [r6, #4]
	ldr r0, [r5, r4]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021ABF3C ; =0x45800000
	bls _021ABF24
	ldr r1, [r5, r4]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021ABF32
_021ABF24:
	ldr r1, [r5, r4]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021ABF32:
	blx sub_0208DA4C
	str r0, [r6, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABF3C: .word 0x45800000
	thumb_func_end ovy298_21abe8c

	thumb_func_start sub_021ABF40
sub_021ABF40: ; 0x021ABF40
	mov r3, #0
	cmp r1, #0
	beq _021ABF56
	cmp r1, #1
	beq _021ABF50
	cmp r1, #2
	beq _021ABF54
	b _021ABF56
_021ABF50:
	mov r3, #3
	b _021ABF56
_021ABF54:
	mov r3, #4
_021ABF56:
	add r1, r3, #0
	ldr r3, _021ABF5C ; =ovy298_21abe8c
	bx r3
	.align 2, 0
_021ABF5C: .word ovy298_21abe8c
	thumb_func_end sub_021ABF40

	thumb_func_start sub_021ABF60
sub_021ABF60: ; 0x021ABF60
	mov r3, #0xc
	mul r3, r1
	add r3, r0, r3
	add r3, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021ABF60
_021ABF74:
	.byte 0x00, 0x03, 0x02, 0x04, 0x00, 0x03, 0x02, 0x04, 0x00, 0x03, 0x02, 0x04
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0xE9, 0x03, 0x1A, 0x02
	.byte 0x39, 0x05, 0x1A, 0x02, 0xD1, 0x04, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x08, 0x00, 0x56, 0x05
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x09, 0x00, 0x51, 0x05
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x10, 0x00, 0x0A, 0x00, 0x48, 0x05
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x00, 0x0B, 0x00, 0x48, 0x05
	.byte 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x12, 0x00, 0x0C, 0x00, 0x48, 0x05
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x13, 0x00, 0x0D, 0x00, 0x48, 0x05
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x14, 0x00, 0x07, 0x00, 0x46, 0x06
	.byte 0x00, 0x08, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0xD0, 0x00, 0xA8, 0x00, 0xB8, 0x00, 0xAC, 0x00
	.byte 0x88, 0x00, 0xA8, 0x00, 0x60, 0x00, 0xA8, 0x00, 0x60, 0x00, 0xA8, 0x00, 0x38, 0x00, 0xA8, 0x00
	.byte 0x18, 0x00, 0xA8, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0xD0, 0x00, 0xA8, 0x00
	.byte 0xB8, 0x00, 0xAC, 0x00, 0xA8, 0x00, 0xA8, 0x00, 0x88, 0x00, 0xA8, 0x00, 0x60, 0x00, 0xA8, 0x00
	.byte 0x38, 0x00, 0xA8, 0x00, 0x18, 0x00, 0xA8, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xE8, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x38, 0x00, 0xA8, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xC0, 0x00, 0xA8, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x68, 0x00, 0xA8, 0x00, 0x30, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xE8, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xB8, 0x00, 0xAC, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x90, 0x00, 0xA8, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0xA8, 0x00, 0x20, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x50, 0x00, 0xA8, 0x00, 0x20, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x30, 0x00, 0xA8, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0xA8, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xA8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xE5, 0x24, 0x1A, 0x02, 0xF9, 0x25, 0x1A, 0x02, 0x71, 0x25, 0x1A, 0x02
	.byte 0x79, 0x29, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x5B, 0x02, 0x5B, 0x10, 0x0F, 0x08, 0x0F
	.byte 0x01, 0x11, 0x5B, 0x13, 0x5B, 0x14, 0x0F, 0x09, 0x10, 0x03, 0x26, 0x5B, 0x28, 0x5B, 0x14, 0x0F
	.byte 0x0A, 0x1B, 0x05, 0x3B, 0x5B, 0x3D, 0x5B, 0x14, 0x0F, 0x0B, 0x11, 0x04, 0x50, 0x5B, 0x52, 0x5B
	.byte 0x14, 0x0F, 0x0C, 0x12, 0x07, 0x65, 0x5B, 0x67, 0x5B, 0x14, 0x0F, 0x0D, 0x13, 0x08, 0x00, 0x00
	.byte 0x80, 0x00, 0x60, 0x00, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x00
	.byte 0x06, 0x04, 0x05, 0x06, 0x02, 0x01, 0x00, 0x03, 0x00, 0x00, 0x01, 0x02, 0x06, 0x00, 0x00, 0x01
	.byte 0x01, 0x08, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0x32, 0x1A, 0x02
	.byte 0xC9, 0x34, 0x1A, 0x02, 0xF5, 0x33, 0x1A, 0x02, 0x31, 0x39, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x0C, 0x15, 0x10, 0x03, 0x08, 0x00, 0x06, 0x09, 0x19, 0x10, 0x02, 0x08, 0x00, 0x00, 0x02
	.byte 0x00, 0x0F, 0x02, 0x00, 0x00, 0x00, 0x08, 0x0A, 0x10, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x15, 0x10
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x04, 0x04, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x85, 0x01, 0x8D, 0x01, 0x06, 0x00, 0x10, 0x00, 0x1C, 0x00, 0x3E, 0x00
	.byte 0x60, 0x00, 0x6B, 0x00, 0x71, 0x00, 0x78, 0x00, 0x88, 0x00, 0x96, 0x01, 0x9C, 0x01, 0xA2, 0x01
	.byte 0x00, 0x00, 0xA8, 0x01, 0x93, 0x00, 0x17, 0x01, 0x7D, 0x01, 0x98, 0x00, 0x9A, 0x00, 0x9D, 0x00
	.byte 0xA0, 0x00, 0xBF, 0x00, 0xC2, 0x00, 0xC6, 0x00, 0xCD, 0x00, 0xE6, 0x00, 0xEB, 0x00, 0xEE, 0x00
	.byte 0x44, 0x01, 0x4D, 0x01, 0x52, 0x01, 0x5A, 0x01, 0x78, 0x01, 0xF0, 0x00, 0x81, 0x01, 0x3D, 0x01
	.byte 0x3F, 0x01, 0x41, 0x01, 0x46, 0x01, 0x49, 0x01, 0x4B, 0x01, 0x51, 0x01, 0x59, 0x01, 0x5C, 0x01
	.byte 0x6D, 0x01, 0x70, 0x01, 0x72, 0x01, 0x76, 0x01, 0x7A, 0x01, 0x7F, 0x01, 0xA7, 0x01, 0x83, 0x01
	.byte 0xF9, 0x00, 0xFD, 0x00, 0xFE, 0x00, 0xFF, 0x00, 0x07, 0x01, 0xAB, 0x01, 0xB7, 0x01, 0xC0, 0x01
	.byte 0xCA, 0x01, 0xD1, 0x01, 0x36, 0x02, 0xEA, 0x01, 0xB5, 0x01, 0xBE, 0x01, 0xCF, 0x01, 0xDA, 0x01
	.byte 0xEF, 0x01, 0xBC, 0x01, 0xC8, 0x01, 0xCD, 0x01, 0xCE, 0x01, 0xDB, 0x01, 0x3D, 0x02, 0xF7, 0x01
	.byte 0x03, 0x02, 0xFA, 0x01, 0x05, 0x02, 0xD0, 0x01, 0x08, 0x01, 0x28, 0x02, 0xF1, 0x00, 0x00, 0x00
	.byte 0xB8, 0x09, 0xAB, 0x01, 0x18, 0x00, 0xC0, 0x09, 0xB5, 0x01, 0x17, 0x00, 0xC1, 0x09, 0xBE, 0x01
	.byte 0x1C, 0x00, 0xC2, 0x09, 0xBC, 0x01, 0x1A, 0x00, 0xB9, 0x09, 0xC0, 0x01, 0x1D, 0x00, 0xC3, 0x09
	.byte 0xC8, 0x01, 0x20, 0x00, 0xAC, 0x09, 0x1C, 0x00, 0x22, 0x00, 0xC4, 0x09, 0xEF, 0x01, 0x1E, 0x00
	.byte 0xC5, 0x09, 0x46, 0x01, 0x00, 0x00, 0xC6, 0x09, 0x9D, 0x00, 0x29, 0x00, 0xC7, 0x09, 0xA0, 0x00
	.byte 0x15, 0x00, 0xC8, 0x09, 0x49, 0x01, 0x09, 0x00, 0xC9, 0x09, 0x7F, 0x01, 0x08, 0x00, 0xCA, 0x09
	.byte 0x81, 0x01, 0x37, 0x00, 0xCB, 0x09, 0xFD, 0x00, 0x35, 0x00, 0xCC, 0x09, 0x4B, 0x01, 0x0D, 0x00
	.byte 0xCD, 0x09, 0xF7, 0x01, 0x07, 0x00, 0xF0, 0x09, 0xFA, 0x01, 0x03, 0x00, 0xCE, 0x09, 0x4D, 0x01
	.byte 0x31, 0x00, 0xCF, 0x09, 0xC2, 0x00, 0x39, 0x00, 0xD0, 0x09, 0x51, 0x01, 0x13, 0x00, 0xD1, 0x09
	.byte 0x52, 0x01, 0x27, 0x00, 0xD2, 0x09, 0xCD, 0x01, 0x25, 0x00, 0xD3, 0x09, 0xCE, 0x01, 0x1B, 0x00
	.byte 0xB5, 0x09, 0x9C, 0x01, 0x0C, 0x00, 0xD4, 0x09, 0x72, 0x01, 0x32, 0x00, 0xD5, 0x09, 0xF0, 0x00
	.byte 0x0E, 0x00, 0xD6, 0x09, 0x76, 0x01, 0x38, 0x00, 0xD7, 0x09, 0x78, 0x01, 0x0B, 0x00, 0xD8, 0x09
	.byte 0x70, 0x01, 0x2F, 0x00, 0xD9, 0x09, 0xFF, 0x00, 0x05, 0x00, 0xDA, 0x09, 0x6D, 0x01, 0x2A, 0x00
	.byte 0xDB, 0x09, 0x5C, 0x01, 0x1F, 0x00, 0xDC, 0x09, 0x03, 0x02, 0x36, 0x00, 0xDD, 0x09, 0xCF, 0x01
	.byte 0x02, 0x00, 0xDE, 0x09, 0x7A, 0x01, 0x01, 0x00, 0xBF, 0x09, 0x07, 0x01, 0x0A, 0x00, 0xBA, 0x09
	.byte 0xD1, 0x01, 0x24, 0x00, 0xDF, 0x09, 0xDA, 0x01, 0x28, 0x00, 0xE0, 0x09, 0xE6, 0x00, 0x12, 0x00
	.byte 0xE1, 0x09, 0xDB, 0x01, 0x2D, 0x00, 0xE2, 0x09, 0x3D, 0x02, 0x14, 0x00, 0xE3, 0x09, 0x59, 0x01
	.byte 0x19, 0x00, 0xE4, 0x09, 0x5A, 0x01, 0x2E, 0x00, 0xB0, 0x09, 0x71, 0x00, 0x34, 0x00, 0xE5, 0x09
	.byte 0xCD, 0x00, 0x06, 0x00, 0xE6, 0x09, 0xC6, 0x00, 0x04, 0x00, 0xE7, 0x09, 0x9A, 0x00, 0x23, 0x00
	.byte 0xE8, 0x09, 0x41, 0x01, 0x33, 0x00, 0xE9, 0x09, 0x44, 0x01, 0x0F, 0x00, 0xAA, 0x09, 0x06, 0x00
	.byte 0x16, 0x00, 0xEA, 0x09, 0x98, 0x00, 0x26, 0x00, 0xEC, 0x09, 0x3F, 0x01, 0x30, 0x00, 0xEB, 0x09
	.byte 0x3D, 0x01, 0x2C, 0x00, 0xED, 0x09, 0xA7, 0x01, 0x2B, 0x00, 0xEE, 0x09, 0x83, 0x01, 0x11, 0x00
	.byte 0xEF, 0x09, 0xEE, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0xD9, 0x63, 0x1A, 0x02
	.byte 0x85, 0x65, 0x1A, 0x02, 0xBD, 0x64, 0x1A, 0x02, 0xE9, 0x68, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xC8, 0x78, 0x1C, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0xD0, 0x78, 0x1C, 0x00, 0x01, 0x00, 0x01
	.byte 0x02, 0x00, 0xE0, 0x78, 0x1C, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0xE8, 0x78, 0x1C, 0x00, 0x01
	.byte 0x00, 0x01, 0x02, 0x00, 0xD8, 0x78, 0x1D, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0xF0, 0x78, 0x1E
	.byte 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x60, 0x00, 0x00, 0x03, 0x03, 0x04, 0x05, 0x01, 0x00
	.byte 0x03, 0x02, 0x80, 0x80, 0x01, 0x00, 0x11, 0x00, 0x00, 0x00, 0x80, 0x41, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0x42, 0x00, 0x00, 0x80, 0xC1, 0x00, 0x00, 0x80, 0xC2, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41
	.byte 0x00, 0x00, 0x80, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41, 0x00, 0x00, 0x00, 0x00
	.byte 0xBB, 0x00, 0xBC, 0x00, 0x9F, 0x00, 0x72, 0x00, 0x73, 0x00, 0xBD, 0x00, 0x90, 0x30, 0x15, 0x01
	.byte 0x03, 0x00, 0x01, 0x02, 0x9C, 0x30, 0x16, 0x00, 0x03, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x03, 0x04, 0x05, 0x80, 0x00, 0x00, 0x00, 0x03, 0x03, 0x04, 0x05, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xE5, 0x79, 0x1A, 0x02, 0xB5, 0x7B, 0x1A, 0x02
	.byte 0xE9, 0x7A, 0x1A, 0x02, 0x11, 0x81, 0x1A, 0x02, 0x19, 0x86, 0x1A, 0x02, 0x06, 0x13, 0x10, 0x08
	.byte 0x02, 0x00, 0x01, 0x06, 0x1B, 0x13, 0x02, 0x04, 0x00, 0x01, 0x06, 0x03, 0x13, 0x17, 0x04, 0x00
	.byte 0x01, 0x02, 0x00, 0x01, 0x10, 0x04, 0x00, 0x01, 0x02, 0x10, 0x01, 0x10, 0x04, 0x00, 0x01, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x4C, 0xBE
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x7F, 0x42, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x99, 0x81, 0xC1, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x7C, 0x41
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0xD7, 0xA3, 0xBC, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x3D, 0x0A, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x85, 0xEB, 0x7F, 0x42
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x48, 0xE1, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x71, 0x3D, 0x7E, 0x41, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x4C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x33, 0x5B, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0x33, 0x33, 0x5B, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0x33, 0x33, 0x5B, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x33, 0x83, 0xC1, 0x33, 0x33, 0x5B, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x7E, 0x41
	.byte 0x33, 0x33, 0x5B, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0xCC, 0x3D, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x99, 0x7F, 0xC2, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x80, 0x42
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0xF5, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x99, 0x99, 0xBE
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x99, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x7E, 0x42, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x66, 0x82, 0xC1, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x7B, 0x41
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x62, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9A, 0x99, 0x99, 0xBE, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x99, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x7E, 0x42
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x7B, 0xC1, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0xCD, 0xCC, 0x5C, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC1, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x77, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC2, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC1, 0xCD, 0xCC, 0x5C, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x56, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x4C, 0xBE
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x7F, 0x42, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x33, 0x83, 0xC1, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x7E, 0x41
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x57, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC2, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC1, 0xCD, 0xCC, 0x5C, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x2F, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0xCD, 0xCC, 0x5C, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC1, 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41
	.byte 0xCD, 0xCC, 0x5C, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB8, 0x1E, 0x05, 0x3E, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0xE1, 0x7A, 0x7F, 0xC2, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x8F, 0x42, 0x80, 0x42
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x7B, 0x14, 0x80, 0x41, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0xF6, 0x28, 0x80, 0x41
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0x5C, 0x8F, 0x3D, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x33, 0x7D, 0xC2, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x81, 0x42
	.byte 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x8F, 0x80, 0xC1, 0x66, 0x66, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x8F, 0xC2, 0x81, 0x41, 0x66, 0x66, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0xBF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x52, 0xB8, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xC2, 0x52, 0xB8, 0x5E, 0xC1
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x42, 0x52, 0xB8, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x80, 0xC1, 0x52, 0xB8, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x41
	.byte 0x52, 0xB8, 0x5E, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x70, 0x72, 0x6F
	.byte 0x63, 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65
	.byte 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x2E, 0x63, 0x00, 0x00
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x67, 0x72, 0x61
	.byte 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x7A, 0x6B, 0x6E, 0x64, 0x5F, 0x74, 0x62, 0x61
	.byte 0x72, 0x2E, 0x63, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C
	.byte 0x5F, 0x74, 0x6F, 0x75, 0x63, 0x68, 0x62, 0x61, 0x72, 0x2E, 0x63, 0x00, 0x7A, 0x75, 0x6B, 0x61
	.byte 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x68, 0x65, 0x61, 0x64, 0x62, 0x61, 0x72
	.byte 0x2E, 0x63, 0x00, 0x00, 0x05, 0x02, 0x06, 0x00, 0x07, 0x04, 0x07, 0x1C, 0x04, 0x03, 0x0E, 0x1C
	.byte 0x04, 0x03, 0x15, 0x1C, 0x04, 0x03, 0x00, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65
	.byte 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x76, 0x6F, 0x69, 0x63, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9A, 0x21, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x9A, 0x21, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C
	.byte 0x5F, 0x66, 0x6F, 0x72, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021ABF74
