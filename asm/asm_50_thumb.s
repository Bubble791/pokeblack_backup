	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02074820
sub_02074820: ; 0x02074820
	push {r3, r4}
	ldr r4, _02074840 ; =0x04000004
	mov r1, #1
	ldrh r3, [r4]
	lsl r1, r1, #8
	and r1, r0
	mov r2, #0x3f
	lsl r0, r0, #0x18
	and r2, r3
	lsr r0, r0, #0x10
	asr r1, r1, #1
	orr r0, r2
	orr r0, r1
	strh r0, [r4]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02074840: .word 0x04000004
	thumb_func_end sub_02074820

	thumb_func_start sub_02074844
sub_02074844: ; 0x02074844
	ldr r1, _02074864 ; =0x04000004
	mov r3, #0x10
	ldrh r2, [r1]
	and r2, r3
	cmp r0, #0
	beq _02074856
	ldrh r0, [r1]
	orr r0, r3
	b _0207485C
_02074856:
	ldrh r3, [r1]
	ldr r0, _02074868 ; =0x0000FFEF
	and r0, r3
_0207485C:
	strh r0, [r1]
	add r0, r2, #0
	bx lr
	nop
_02074864: .word 0x04000004
_02074868: .word 0x0000FFEF
	thumb_func_end sub_02074844

	thumb_func_start sub_0207486C
sub_0207486C: ; 0x0207486C
	ldr r1, _0207488C ; =0x04000004
	mov r3, #8
	ldrh r2, [r1]
	and r2, r3
	cmp r0, #0
	beq _0207487E
	ldrh r0, [r1]
	orr r0, r3
	b _02074884
_0207487E:
	ldrh r3, [r1]
	ldr r0, _02074890 ; =0x0000FFF7
	and r0, r3
_02074884:
	strh r0, [r1]
	add r0, r2, #0
	bx lr
	nop
_0207488C: .word 0x04000004
_02074890: .word 0x0000FFF7
	thumb_func_end sub_0207486C

	thumb_func_start sub_02074894
sub_02074894: ; 0x02074894
	ldr r0, _0207489C ; =0x0209B524
	ldrh r0, [r0]
	bx lr
	nop
_0207489C: .word 0x0209B524
	thumb_func_end sub_02074894

	thumb_func_start sub_020748A0
sub_020748A0: ; 0x020748A0
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _020748C4 ; =0x0209B524
	mov r3, #0
	strh r3, [r2]
	mov r2, #3
	lsl r2, r2, #0x10
	and r2, r0
	lsr r3, r2, #0x10
	ldr r2, _020748C8 ; =0x0214C04C
	strh r3, [r2]
	ldr r2, _020748CC ; =0xFFFCFFFF
	ldr r3, _020748D0 ; =sub_0207F6B8
	and r0, r2
	str r0, [r1]
	bx r3
	nop
_020748C4: .word 0x0209B524
_020748C8: .word 0x0214C04C
_020748CC: .word 0xFFFCFFFF
_020748D0: .word sub_0207F6B8
	thumb_func_end sub_020748A0

	thumb_func_start sub_020748D4
sub_020748D4: ; 0x020748D4
	ldr r0, _02074904 ; =0x0209B524
	mov r1, #1
	strh r1, [r0]
	ldr r0, _02074908 ; =0x0214C04C
	ldrh r3, [r0]
	cmp r3, #0
	beq _020748F4
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0207490C ; =0xFFFCFFFF
	and r1, r0
	lsl r0, r3, #0x10
	orr r0, r1
	str r0, [r2]
	bx lr
_020748F4:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsr r0, r2, #0xa
	orr r0, r1
	str r0, [r2]
	bx lr
	nop
_02074904: .word 0x0209B524
_02074908: .word 0x0214C04C
_0207490C: .word 0xFFFCFFFF
	thumb_func_end sub_020748D4

	thumb_func_start sub_02074910
sub_02074910: ; 0x02074910
	push {r3, r4}
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r3, [r3]
	ldr r4, _02074950 ; =0x0214C04C
	strh r0, [r4]
	ldr r4, _02074954 ; =0x0209B524
	ldrh r4, [r4]
	cmp r4, #0
	bne _02074926
	mov r0, #0
_02074926:
	ldr r4, _02074958 ; =0xFFF0FFF0
	lsl r0, r0, #0x10
	and r3, r4
	orr r0, r3
	lsl r2, r2, #3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x1a
	str r1, [r0]
	ldr r0, _02074950 ; =0x0214C04C
	ldrh r0, [r0]
	cmp r0, #0
	bne _0207494A
	ldr r0, _02074954 ; =0x0209B524
	mov r1, #0
	strh r1, [r0]
_0207494A:
	pop {r3, r4}
	bx lr
	nop
_02074950: .word 0x0214C04C
_02074954: .word 0x0209B524
_02074958: .word 0xFFF0FFF0
	thumb_func_end sub_02074910

	thumb_func_start sub_0207495C
sub_0207495C: ; 0x0207495C
	ldr r2, _0207496C ; =0x04001000
	mov r1, #7
	ldr r3, [r2]
	bic r3, r1
	orr r0, r3
	str r0, [r2]
	bx lr
	nop
_0207496C: .word 0x04001000
	thumb_func_end sub_0207495C

	thumb_func_start sub_02074970
sub_02074970: ; 0x02074970
	cmp r1, #0
	bne _0207497A
	mov r1, #0
	strh r1, [r0]
	bx lr
_0207497A:
	ble _02074986
	mov r2, #1
	lsl r2, r2, #0xe
	orr r1, r2
	strh r1, [r0]
	bx lr
_02074986:
	neg r2, r1
	mov r1, #2
	lsl r1, r1, #0xe
	orr r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02074970

	thumb_func_start sub_02074994
sub_02074994: ; 0x02074994
	ldrh r2, [r0]
	mov r1, #3
	lsl r1, r1, #0xe
	and r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	bne _020749A6
	mov r0, #0
	bx lr
_020749A6:
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r2, r1
	bne _020749B6
	ldrh r1, [r0]
	mov r0, #0x1f
	and r0, r1
	bx lr
_020749B6:
	lsl r1, r1, #1
	cmp r2, r1
	bne _020749C6
	ldrh r1, [r0]
	mov r0, #0x1f
	and r0, r1
	neg r0, r0
	bx lr
_020749C6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02074994

