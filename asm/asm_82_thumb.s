	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207AC24
sub_0207AC24: ; 0x0207AC24
	push {r4, lr}
	ldr r4, _0207AC54 ; =0x0209B70C
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bne _0207AC4E
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207AC3E
	ldr r0, _0207AC58 ; =0x01800004
	b _0207AC40
_0207AC3E:
	ldr r0, _0207AC5C ; =0x80000001
_0207AC40:
	str r0, [r4, #4]
	bl sub_0207AC60
	ldr r1, _0207AC54 ; =0x0209B70C
	ldr r2, [r1, #4]
	orr r0, r2
	str r0, [r1, #4]
_0207AC4E:
	ldr r0, _0207AC54 ; =0x0209B70C
	ldr r0, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_0207AC54: .word 0x0209B70C
_0207AC58: .word 0x01800004
_0207AC5C: .word 0x80000001
	thumb_func_end sub_0207AC24

	thumb_func_start sub_0207AC60
sub_0207AC60: ; 0x0207AC60
	push {r3, lr}
	bl sub_0207C1FC
	lsl r1, r0, #2
	ldr r0, _0207AC70 ; =0x02098858
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_0207AC70: .word 0x02098858
	thumb_func_end sub_0207AC60

	thumb_func_start sub_0207AC74
sub_0207AC74: ; 0x0207AC74
	push {r3, lr}
	bl sub_0207AC24
	mov r1, #1
	lsl r1, r1, #0x1c
	tst r0, r1
	beq _0207AC86
	mov r0, #1
	pop {r3, pc}
_0207AC86:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207AC74

	thumb_func_start OS_IsRunOnTwl
OS_IsRunOnTwl: ; 0x0207AC8C
	ldr r0, _0207ACB4 ; =0x0214C484
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0207ACAC
	ldr r0, _0207ACB8 ; =0x04004000
	ldrb r1, [r0]
	mov r0, #3
	and r0, r1
	mov r1, #1
	cmp r0, #1
	beq _0207ACA4
	mov r1, #0
_0207ACA4:
	ldr r0, _0207ACB4 ; =0x0214C484
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0x1c]
_0207ACAC:
	ldr r0, _0207ACB4 ; =0x0214C484
	ldr r0, [r0, #4]
	bx lr
	nop
_0207ACB4: .word 0x0214C484
_0207ACB8: .word 0x04004000
	thumb_func_end OS_IsRunOnTwl

	thumb_func_start sub_0207ACBC
sub_0207ACBC: ; 0x0207ACBC
	ldr r3, _0207ACC0 ; =OS_IsRunOnTwl
	bx r3
	.align 2, 0
_0207ACC0: .word OS_IsRunOnTwl
	thumb_func_end sub_0207ACBC

	thumb_func_start sub_0207ACC4
sub_0207ACC4: ; 0x0207ACC4
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0]
	str r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0207ACC4

	thumb_func_start sub_0207ACD8
sub_0207ACD8: ; 0x0207ACD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	blx sub_0207C0E4
	add r7, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	cmp r1, r0
	bgt _0207AD0E
	mov r0, #1
	and r5, r0
_0207ACF2:
	cmp r5, #0
	bne _0207AD00
	add r0, r7, #0
	blx sub_0207C0F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AD00:
	add r0, r4, #0
	bl sub_0207A868
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	cmp r1, r0
	ble _0207ACF2
_0207AD0E:
	ldr r2, [r4, #0x18]
	add r0, r2, r0
	blx sub_0208D65C
	ldr r2, [r4, #0x10]
	lsl r0, r1, #2
	str r6, [r2, r0]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add r4, #8
	add r0, r4, #0
	bl sub_0207A89C
	add r0, r7, #0
	blx sub_0207C0F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207ACD8

	thumb_func_start sub_0207AD34
sub_0207AD34: ; 0x0207AD34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	blx sub_0207C0E4
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0207AD6A
	mov r0, #1
	add r6, r5, #0
	and r4, r0
	add r6, #8
_0207AD50:
	cmp r4, #0
	bne _0207AD5E
	ldr r0, [sp]
	blx sub_0207C0F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AD5E:
	add r0, r6, #0
	bl sub_0207A868
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0207AD50
_0207AD6A:
	cmp r7, #0
	beq _0207AD78
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r7]
_0207AD78:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	blx sub_0208D65C
	ldr r0, [r5, #0x1c]
	str r1, [r5, #0x18]
	sub r0, r0, #1
	str r0, [r5, #0x1c]
	add r0, r5, #0
	bl sub_0207A89C
	ldr r0, [sp]
	blx sub_0207C0F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207AD34

	thumb_func_start sub_0207AD9C
sub_0207AD9C: ; 0x0207AD9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	blx sub_0207C0E4
	add r7, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	bgt _0207ADD2
	mov r0, #1
	and r5, r0
_0207ADB6:
	cmp r5, #0
	bne _0207ADC4
	add r0, r7, #0
	blx sub_0207C0F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207ADC4:
	add r0, r4, #0
	bl sub_0207A868
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0207ADB6
_0207ADD2:
	ldr r0, [r4, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	blx sub_0208D65C
	ldr r2, [r4, #0x10]
	str r1, [r4, #0x18]
	lsl r0, r1, #2
	str r6, [r2, r0]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add r4, #8
	add r0, r4, #0
	bl sub_0207A89C
	add r0, r7, #0
	blx sub_0207C0F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207AD9C

	thumb_func_start sub_0207ADFC
sub_0207ADFC: ; 0x0207ADFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	blx sub_0207C0E4
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0207AE32
	mov r0, #1
	add r6, r5, #0
	and r4, r0
	add r6, #8
_0207AE18:
	cmp r4, #0
	bne _0207AE26
	ldr r0, [sp]
	blx sub_0207C0F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AE26:
	add r0, r6, #0
	bl sub_0207A868
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0207AE18
_0207AE32:
	cmp r7, #0
	beq _0207AE40
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r7]
_0207AE40:
	ldr r0, [sp]
	blx sub_0207C0F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207ADFC

	thumb_func_start sub_0207AE4C
sub_0207AE4C: ; 0x0207AE4C
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	str r1, [r0, #8]
	mov r1, #0xff
	ldr r2, [r0, #0xc]
	lsl r1, r1, #0x18
	and r2, r1
	ldr r1, _0207AE64 ; =0x00FFFFFF
	and r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0207AE64: .word 0x00FFFFFF
	thumb_func_end sub_0207AE4C

	thumb_func_start sub_0207AE68
sub_0207AE68: ; 0x0207AE68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx sub_0207C0E4
	add r7, r0, #0
	ldr r0, _0207AEA0 ; =0x0214C22C
	mov r6, #0
	ldr r4, [r0, #4]
_0207AE78:
	add r0, r5, #0
	bl sub_0207AEEC
	cmp r0, #0
	bne _0207AE96
	add r0, r4, #0
	add r0, #0x84
	str r5, [r0]
	add r0, r5, #0
	bl sub_0207A868
	add r0, r4, #0
	add r0, #0x84
	str r6, [r0]
	b _0207AE78
_0207AE96:
	add r0, r7, #0
	blx sub_0207C0F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207AEA0: .word 0x0214C22C
	thumb_func_end sub_0207AE68

	thumb_func_start sub_0207AEA4
sub_0207AEA4: ; 0x0207AEA4
	mov r1, #1
	ldr r3, _0207AEAC ; =sub_0207AF58
	lsl r1, r1, #0x1c
	bx r3
	.align 2, 0
_0207AEAC: .word sub_0207AF58
	thumb_func_end sub_0207AEA4

	thumb_func_start sub_0207AEB0
sub_0207AEB0: ; 0x0207AEB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0207AEE6
	add r4, r5, #0
	ldr r7, _0207AEE8 ; =0x00FFFFFF
	add r4, #0x88
	mov r6, #0
_0207AEC4:
	add r0, r4, #0
	bl sub_0207A3B4
	ldr r2, [r0, #0xc]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	str r6, [r0, #8]
	and r1, r7
	str r1, [r0, #0xc]
	bl sub_0207A89C
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _0207AEC4
_0207AEE6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207AEE8: .word 0x00FFFFFF
	thumb_func_end sub_0207AEB0

	thumb_func_start sub_0207AEEC
sub_0207AEEC: ; 0x0207AEEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx sub_0207C0E4
	add r4, r0, #0
	ldr r0, _0207AF50 ; =0x0214C22C
	ldr r1, [r5, #8]
	ldr r0, [r0, #4]
	cmp r1, #0
	bne _0207AF2A
	ldr r1, [r5, #0xc]
	ldr r2, _0207AF54 ; =0x00FFFFFF
	add r3, r1, #0
	and r3, r2
	mov r1, #1
	lsl r1, r1, #0x1c
	add r6, r3, #0
	orr r6, r1
	lsl r1, r2, #0x18
	add r3, r6, #0
	and r3, r1
	add r1, r6, #1
	and r1, r2
	orr r1, r3
	str r1, [r5, #0xc]
	add r1, r5, #0
	str r0, [r5, #8]
	bl sub_0207B000
_0207AF26:
	mov r5, #1
	b _0207AF46
_0207AF2A:
	cmp r1, r0
	bne _0207AF44
	ldr r1, [r5, #0xc]
	mov r0, #0xff
	add r2, r1, #0
	lsl r0, r0, #0x18
	and r2, r0
	ldr r0, _0207AF54 ; =0x00FFFFFF
	add r1, r1, #1
	and r0, r1
	orr r0, r2
	str r0, [r5, #0xc]
	b _0207AF26
_0207AF44:
	mov r5, #0
_0207AF46:
	add r0, r4, #0
	blx sub_0207C0F8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207AF50: .word 0x0214C22C
_0207AF54: .word 0x00FFFFFF
	thumb_func_end sub_0207AEEC

	thumb_func_start sub_0207AF58
sub_0207AF58: ; 0x0207AF58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx sub_0207C0E4
	ldr r1, _0207AFF8 ; =0x0214C22C
	add r7, r0, #0
	mov r3, #0
	ldr r6, [r1, #4]
	cmp r4, #0
	beq _0207AF80
	mov r1, #0xff
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x18
	and r1, r2
	cmp r4, r1
	beq _0207AF80
	blx sub_0207C0F8
	pop {r3, r4, r5, r6, r7, pc}
_0207AF80:
	mov r1, #0xff
	mov r2, #1
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x18
	and r1, r0
	lsl r2, r2, #0x1c
	cmp r1, r2
	beq _0207AF9E
	lsl r2, r2, #1
	cmp r1, r2
	beq _0207AFB8
	mov r0, #3
	lsl r0, r0, #0x1c
	cmp r1, r0
	bne _0207AFC8
_0207AF9E:
	ldr r0, [r5, #8]
	cmp r0, r6
	bne _0207AFD0
	ldr r0, [r5, #0xc]
	sub r2, r0, #1
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r2, r0
	orr r1, r2
	str r1, [r5, #0xc]
	tst r0, r1
	bne _0207AFD0
_0207AFB4:
	mov r3, #1
	b _0207AFD0
_0207AFB8:
	sub r2, r0, #1
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r2, r0
	orr r1, r2
	str r1, [r5, #0xc]
	tst r0, r1
	bne _0207AFD0
	b _0207AFB4
_0207AFC8:
	add r0, r7, #0
	blx sub_0207C0F8
	pop {r3, r4, r5, r6, r7, pc}
_0207AFD0:
	cmp r3, #0
	beq _0207AFEE
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0207B020
	mov r0, #0
	str r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r0, r1
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl sub_0207A89C
_0207AFEE:
	add r0, r7, #0
	blx sub_0207C0F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207AFF8: .word 0x0214C22C
_0207AFFC: .word 0x00FFFFFF
	thumb_func_end sub_0207AF58

	thumb_func_start sub_0207B000
sub_0207B000: ; 0x0207B000
	add r2, r0, #0
	add r2, #0x8c
	ldr r3, [r2]
	cmp r3, #0
	bne _0207B012
	add r2, r0, #0
	add r2, #0x88
	str r1, [r2]
	b _0207B014
_0207B012:
	str r1, [r3, #0x10]
_0207B014:
	mov r2, #0
	str r3, [r1, #0x14]
	str r2, [r1, #0x10]
	add r0, #0x8c
	str r1, [r0]
	bx lr
	thumb_func_end sub_0207B000

	thumb_func_start sub_0207B020
sub_0207B020: ; 0x0207B020
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x14]
	cmp r2, #0
	bne _0207B030
	add r1, r0, #0
	add r1, #0x8c
	str r3, [r1]
	b _0207B032
_0207B030:
	str r3, [r2, #0x14]
_0207B032:
	cmp r3, #0
	bne _0207B03C
	add r0, #0x88
	str r2, [r0]
	bx lr
_0207B03C:
	str r2, [r3, #0x10]
	bx lr
	thumb_func_end sub_0207B020

