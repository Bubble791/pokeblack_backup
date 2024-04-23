	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02005BCC
sub_02005BCC: ; 0x02005BCC
	push {r3, r4, r5, lr}
	ldr r4, _02005C10 ; =0x0209DB24
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0206D918
	ldr r0, _02005C14 ; =0x0209DB34
	bl sub_02005838
	cmp r5, #0
	beq _02005BF4
	mov r0, #0
	mov r5, #0
	bl sub_0206CE60
	ldr r1, [r4, #0x10]
	mov r0, #0
	bl sub_0206D260
	str r5, [r4, #0x18]
_02005BF4:
	bl sub_02006188
	mov r0, #0
	mov r4, #0
	bl sub_020058E4
	bl sub_02005FCC
	ldr r0, _02005C10 ; =0x0209DB24
	strh r4, [r0]
	str r4, [r0, #8]
	str r4, [r0, #0x14]
	str r4, [r0, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005C10: .word 0x0209DB24
_02005C14: .word 0x0209DB34
	thumb_func_end sub_02005BCC

	thumb_func_start sub_02005C18
sub_02005C18: ; 0x02005C18
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02006064
	bl sub_0206B930
	bl sub_0206B970
	bl sub_02005C94
	ldr r6, _02005C68 ; =0x0209DB24
	mov r5, #0
	ldr r7, _02005C6C ; =0x0209DCD8
	add r4, r0, #0
	strh r5, [r6]
_02005C34:
	mov r2, #0x1a
	mul r2, r5
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, r2
	bl sub_0206BF9C
	cmp r0, #1
	bne _02005C54
	mov r1, #1
	lsl r1, r5
	lsl r1, r1, #0x10
	ldrh r0, [r6]
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r6]
_02005C54:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02005C34
	ldr r0, _02005C68 ; =0x0209DB24
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02005C66
	sub r1, r1, #1
	str r1, [r0, #8]
_02005C66:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02005C68: .word 0x0209DB24
_02005C6C: .word 0x0209DCD8
	thumb_func_end sub_02005C18

	thumb_func_start sub_02005C70
sub_02005C70: ; 0x02005C70
	ldr r0, _02005C78 ; =0x0209DB24
	ldr r3, _02005C7C ; =sub_0206D05C
	ldr r0, [r0, #0x10]
	bx r3
	.align 2, 0
_02005C78: .word 0x0209DB24
_02005C7C: .word sub_0206D05C
	thumb_func_end sub_02005C70

	thumb_func_start sub_02005C80
sub_02005C80: ; 0x02005C80
	cmp r0, #1
	beq _02005C88
	mov r0, #1
	b _02005C8A
_02005C88:
	mov r0, #0
_02005C8A:
	ldr r3, _02005C90 ; =sub_0206B95C
	bx r3
	nop
_02005C90: .word sub_0206B95C
	thumb_func_end sub_02005C80

	thumb_func_start sub_02005C94
sub_02005C94: ; 0x02005C94
	ldr r3, _02005C98 ; =sub_02005968
	bx r3
	.align 2, 0
_02005C98: .word sub_02005968
	thumb_func_end sub_02005C94

	thumb_func_start sub_02005C9C
sub_02005C9C: ; 0x02005C9C
	ldr r3, _02005CA0 ; =sub_0200592C
	bx r3
	.align 2, 0
_02005CA0: .word sub_0200592C
	thumb_func_end sub_02005C9C

	thumb_func_start sub_02005CA4
sub_02005CA4: ; 0x02005CA4
	push {r3, lr}
	ldr r0, _02005CB8 ; =0x0209DB24
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _02005CB4
	bl sub_0200592C
	pop {r3, pc}
_02005CB4:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
	.align 2, 0
_02005CB8: .word 0x0209DB24
	thumb_func_end sub_02005CA4

	thumb_func_start sub_02005CBC
sub_02005CBC: ; 0x02005CBC
	push {r3, lr}
	ldr r0, _02005CDC ; =0x0209DB24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02005CCA
	mov r0, #0
	pop {r3, pc}
_02005CCA:
	ldr r0, _02005CE0 ; =0x0209DC18
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _02005CD8
	mov r0, #1
	pop {r3, pc}
_02005CD8:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02005CDC: .word 0x0209DB24
_02005CE0: .word 0x0209DC18
	thumb_func_end sub_02005CBC

	thumb_func_start sub_02005CE4
sub_02005CE4: ; 0x02005CE4
	ldr r0, _02005CEC ; =0x0209DB24
	ldr r0, [r0, #0x10]
	bx lr
	nop
_02005CEC: .word 0x0209DB24
	thumb_func_end sub_02005CE4

	thumb_func_start sub_02005CF0
sub_02005CF0: ; 0x02005CF0
	ldr r0, _02005D04 ; =0x04000210
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x12
	tst r0, r1
	beq _02005D00
	mov r0, #1
	bx lr
_02005D00:
	mov r0, #0
	bx lr
	.align 2, 0
_02005D04: .word 0x04000210
	thumb_func_end sub_02005CF0

	thumb_func_start sub_02005D08
sub_02005D08: ; 0x02005D08
	push {r3, lr}
	cmp r0, #1
	bne _02005D16
	mov r0, #0x7f
	bl sub_02005D20
	pop {r3, pc}
_02005D16:
	mov r0, #0
	bl sub_02005D20
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005D08

	thumb_func_start sub_02005D20
sub_02005D20: ; 0x02005D20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r7, #1
_02005D2A:
	add r0, r7, #0
	lsl r0, r4
	tst r0, r5
	beq _02005D3A
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0206BD3C
_02005D3A:
	add r4, r4, #1
	cmp r4, #5
	blt _02005D2A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02005D20

	thumb_func_start sub_02005D44
sub_02005D44: ; 0x02005D44
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005CBC
	cmp r0, #0
	bne _02005D54
	mov r0, #1
	pop {r4, pc}
_02005D54:
	ldr r0, _02005D68 ; =0x0209DB24
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02005D60
	mov r0, #0
	pop {r4, pc}
_02005D60:
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	nop
_02005D68: .word 0x0209DB24
	thumb_func_end sub_02005D44

	thumb_func_start sub_02005D6C
sub_02005D6C: ; 0x02005D6C
	ldr r1, _02005D74 ; =0x0209DB24
	str r0, [r1, #4]
	bx lr
	nop
_02005D74: .word 0x0209DB24
	thumb_func_end sub_02005D6C

	thumb_func_start sub_02005D78
sub_02005D78: ; 0x02005D78
	push {r3, lr}
	bl sub_02005968
	mov r1, #0
	bl sub_0206BDD0
	bl sub_02005A24
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005D78

	thumb_func_start sub_02005D8C
sub_02005D8C: ; 0x02005D8C
	push {r3, lr}
	bl sub_02006000
	bl sub_02005D78
	pop {r3, pc}
	thumb_func_end sub_02005D8C

	thumb_func_start sub_02005D98
sub_02005D98: ; 0x02005D98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02005D44
	cmp r0, #0
	bne _02005DAE
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02005DAE:
	bl sub_02005D78
	add r0, r4, #0
	bl sub_02005980
	cmp r0, #0
	bne _02005DC2
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02005DC2:
	bl sub_02005968
	mov r6, #0
	sub r2, r6, #1
	mov r1, #0
	add r3, r2, #0
	str r4, [sp]
	bl sub_0206D9A0
	add r4, r0, #0
	bne _02005DDE
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02005DDE:
	ldr r0, _02005DF0 ; =0x0000FFFF
	cmp r5, r0
	beq _02005DEA
	add r0, r5, #0
	bl sub_02005F24
_02005DEA:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02005DF0: .word 0x0000FFFF
	thumb_func_end sub_02005D98

	thumb_func_start sub_02005DF4
sub_02005DF4: ; 0x02005DF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02006000
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02005D98
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005DF4

	thumb_func_start sub_02005E08
sub_02005E08: ; 0x02005E08
	push {r3, lr}
	bl sub_02005FE0
	pop {r3, pc}
	thumb_func_end sub_02005E08

	thumb_func_start sub_02005E10
sub_02005E10: ; 0x02005E10
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02006000
	add r0, r4, #0
	bl sub_02005D44
	cmp r0, #0
	beq _02005E42
	bl sub_02005D78
	add r0, r4, #0
	bl sub_02005980
	cmp r0, #0
	beq _02005E42
	bl sub_02005968
	mov r1, #6
	sub r2, r1, #7
	add r3, r2, #0
	str r4, [sp]
	bl sub_0206D9A0
_02005E42:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02005E10

	thumb_func_start sub_02005E48
sub_02005E48: ; 0x02005E48
	push {r3, lr}
	bl sub_02005C94
	bl sub_0206BF74
	pop {r3, pc}
	thumb_func_end sub_02005E48

	thumb_func_start sub_02005E54
sub_02005E54: ; 0x02005E54
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200602C
	bl sub_02005968
	add r1, r4, #0
	bl sub_0206BDDC
	pop {r4, pc}
	thumb_func_end sub_02005E54

	thumb_func_start sub_02005E68
sub_02005E68: ; 0x02005E68
	ldr r3, _02005E70 ; =sub_02005E74
	mov r1, #0x7f
	bx r3
	nop
_02005E70: .word sub_02005E74
	thumb_func_end sub_02005E68

	thumb_func_start sub_02005E74
sub_02005E74: ; 0x02005E74
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0200602C
	bl sub_02005968
	mov r1, #0
	mov r2, #0
	bl sub_0206BE64
	bl sub_02005968
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0206BE64
	ldr r0, _02005E9C ; =0x0209DB24
	str r4, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005E9C: .word 0x0209DB24
	thumb_func_end sub_02005E74

	thumb_func_start sub_02005EA0
sub_02005EA0: ; 0x02005EA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200602C
	bl sub_02005968
	mov r1, #0
	add r2, r4, #0
	bl sub_0206BE64
	ldr r0, _02005EBC ; =0x0209DB24
	str r4, [r0, #8]
	pop {r4, pc}
	nop
_02005EBC: .word 0x0209DB24
	thumb_func_end sub_02005EA0

	thumb_func_start sub_02005EC0
sub_02005EC0: ; 0x02005EC0
	ldr r0, _02005ED0 ; =0x0209DB24
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02005ECC
	mov r0, #1
	bx lr
_02005ECC:
	mov r0, #0
	bx lr
	.align 2, 0
_02005ED0: .word 0x0209DB24
	thumb_func_end sub_02005EC0

	thumb_func_start sub_02005ED4
sub_02005ED4: ; 0x02005ED4
	push {r4, lr}
	bl sub_0200602C
	bl sub_02005968
	ldr r4, _02005F08 ; =0x0000FFFF
	mov r2, #0
	add r1, r4, #0
	bl sub_0206BE98
	bl sub_02005968
	add r1, r4, #0
	mov r2, #0
	bl sub_0206BF08
	bl sub_02005968
	add r1, r4, #0
	mov r2, #0x10
	bl sub_0206BF1C
	bl sub_02005A5C
	pop {r4, pc}
	nop
_02005F08: .word 0x0000FFFF
	thumb_func_end sub_02005ED4

	thumb_func_start sub_02005F0C
sub_02005F0C: ; 0x02005F0C
	push {r3, lr}
	bl sub_0200602C
	bl sub_0200595C
	cmp r0, #0
	beq _02005F22
	bl sub_02005D78
	bl sub_02005AA8
_02005F22:
	pop {r3, pc}
	thumb_func_end sub_02005F0C

	thumb_func_start sub_02005F24
sub_02005F24: ; 0x02005F24
	push {r3, r4, r5, lr}
	ldr r4, _02005F4C ; =0x0000FFFF
	eor r0, r4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	bl sub_02005968
	add r1, r4, #0
	mov r2, #0
	bl sub_0206BE98
	cmp r5, #0
	beq _02005F4A
	bl sub_02005968
	add r1, r5, #0
	mov r2, #1
	bl sub_0206BEAC
_02005F4A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005F4C: .word 0x0000FFFF
	thumb_func_end sub_02005F24

	thumb_func_start sub_02005F50
sub_02005F50: ; 0x02005F50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02005968
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r5, r1
	beq _02005F6E
	add r1, r5, #0
	bl sub_0206BF30
_02005F6E:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02005F80
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0206BEE0
_02005F80:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02005F92
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0206BEF4
_02005F92:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02005F50

	thumb_func_start sub_02005F94
sub_02005F94: ; 0x02005F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02005968
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0206BEC0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005F94

	thumb_func_start sub_02005FA8
sub_02005FA8: ; 0x02005FA8
	push {r3, lr}
	bl sub_0200592C
	cmp r0, #0
	bne _02005FB6
	mov r0, #0
	pop {r3, pc}
_02005FB6:
	bl sub_0200592C
	bl sub_0206BE10
	cmp r0, #0
	beq _02005FC6
	mov r0, #1
	pop {r3, pc}
_02005FC6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005FA8

	thumb_func_start sub_02005FCC
sub_02005FCC: ; 0x02005FCC
	ldr r0, _02005FD8 ; =0x0209DB24
	mov r1, #0x3c
	str r1, [r0, #0x2c]
	ldr r3, _02005FDC ; =sub_02006000
	str r1, [r0, #0x30]
	bx r3
	.align 2, 0
_02005FD8: .word 0x0209DB24
_02005FDC: .word sub_02006000
	thumb_func_end sub_02005FCC

	thumb_func_start sub_02005FE0
sub_02005FE0: ; 0x02005FE0
	push {r4, lr}
	ldr r4, _02005FFC ; =0x0209DB24
	strh r1, [r4, #0x26]
	str r0, [r4, #0x28]
	str r3, [r4, #0x2c]
	str r2, [r4, #0x30]
	strh r2, [r4, #0x24]
	bl sub_020063D8
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
_02005FFC: .word 0x0209DB24
	thumb_func_end sub_02005FE0

	thumb_func_start sub_02006000
sub_02006000: ; 0x02006000
	push {r3, r4, r5, lr}
	ldr r5, _02006024 ; =0x0209DB24
	mov r4, #0
	ldr r0, _02006028 ; =0x0000FFFF
	str r4, [r5, #0x1c]
	strh r0, [r5, #0x26]
	str r4, [r5, #0x28]
	strh r4, [r5, #0x24]
	bl sub_02005968
	mov r1, #0x7f
	bl sub_0206BE44
	str r4, [r5, #0x20]
	bl sub_020063D8
	pop {r3, r4, r5, pc}
	nop
_02006024: .word 0x0209DB24
_02006028: .word 0x0000FFFF
	thumb_func_end sub_02006000

	thumb_func_start sub_0200602C
sub_0200602C: ; 0x0200602C
	push {r4, lr}
	ldr r4, _02006060 ; =0x0209DB24
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0200605E
	bl sub_0200592C
	ldr r1, [r4, #0x28]
	cmp r0, r1
	beq _0200605A
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02006050
_02006046:
	bl sub_02006064
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02006046
_02006050:
	ldr r1, _02006060 ; =0x0209DB24
	ldr r0, [r1, #0x28]
	ldrh r1, [r1, #0x26]
	bl sub_02005DF4
_0200605A:
	bl sub_02006000
_0200605E:
	pop {r4, pc}
	.align 2, 0
_02006060: .word 0x0209DB24
	thumb_func_end sub_0200602C

	thumb_func_start sub_02006064
sub_02006064: ; 0x02006064
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	bl sub_02005968
	add r5, r0, #0
	bl sub_0200592C
	ldr r4, _02006184 ; =0x0209DB24
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _0200607C
	b _0200617E
_0200607C:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _0200608E
	cmp r1, #1
	beq _0200611C
	cmp r1, #2
	beq _02006142
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0200608E:
	cmp r0, #0
	beq _020060EC
	ldr r1, [r4, #0x28]
	cmp r0, r1
	ldrh r0, [r4, #0x24]
	beq _020060C4
	cmp r0, #0
	beq _020060BA
	sub r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x24]
	mov r0, #0x7f
	mul r0, r1
	ldr r1, [r4, #0x30]
	blx sub_0208D65C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206BE44
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020060BA:
	add r0, r5, #0
	mov r1, #0
	bl sub_0206BE44
	b _020060EC
_020060C4:
	ldr r1, [r4, #0x2c]
	cmp r0, r1
	bge _020060E4
	add r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r2, [r4, #0x24]
	mov r0, #0x7f
	mul r0, r2
	blx sub_0208D65C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206BE44
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020060E4:
	bl sub_02006000
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020060EC:
	bl sub_02005D78
	ldr r4, _02006184 ; =0x0209DB24
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02006100
	bl sub_02006000
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02006100:
	mov r0, #0x13
	lsl r0, r0, #8
	bl sub_0206CFE8
	ldr r0, [r4, #0x28]
	mov r5, #0
	mov r1, #0
	bl sub_02006370
	strh r5, [r4, #0x24]
	mov r0, #1
	add sp, #4
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_0200611C:
	bl sub_02006404
	cmp r0, #1
	bne _02006138
	bl sub_020059D8
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02006370
	mov r0, #2
	add sp, #4
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_02006138:
	mov r0, #1
	bl OS_Sleep
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02006142:
	bl sub_02006404
	cmp r0, #1
	bne _02006178
	mov r0, #0
	mov r6, #0
	bl sub_0206CFE8
	ldr r0, [r4, #0x28]
	bl sub_020059FC
	bl sub_02005968
	ldr r1, [r4, #0x28]
	sub r2, r6, #1
	str r1, [sp]
	mov r1, #0
	add r3, r2, #0
	bl sub_0206D9A0
	add r0, r5, #0
	mov r1, #0
	bl sub_0206BE44
	add sp, #4
	str r6, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_02006178:
	mov r0, #1
	bl OS_Sleep
_0200617E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02006184: .word 0x0209DB24
	thumb_func_end sub_02006064

	thumb_func_start sub_02006188
sub_02006188: ; 0x02006188
	push {r4, r5, r6, lr}
	mov r5, #0
	ldr r4, _020061A4 ; =0x0209DB58
	add r6, r5, #0
_02006190:
	lsl r0, r5, #3
	add r1, r4, r0
	str r6, [r4, r0]
	add r0, r1, #4
	bl sub_0206BDE8
	add r5, r5, #1
	cmp r5, #5
	blt _02006190
	pop {r4, r5, r6, pc}
	.align 2, 0
_020061A4: .word 0x0209DB58
	thumb_func_end sub_02006188

	thumb_func_start sub_020061A8
sub_020061A8: ; 0x020061A8
	ldr r1, _020061B4 ; =0x0209DB58
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, r0, #4
	bx lr
	nop
_020061B4: .word 0x0209DB58
	thumb_func_end sub_020061A8

	thumb_func_start sub_020061B8
sub_020061B8: ; 0x020061B8
	push {r3, lr}
	ldr r1, _020061D4 ; =0x00000546
	cmp r0, r1
	blo _020061C6
	ldr r1, _020061D8 ; =0x0000096F
	cmp r0, r1
	blo _020061CA
_020061C6:
	mov r0, #1
	pop {r3, pc}
_020061CA:
	bl sub_0206CC38
	ldrb r0, [r0, #5]
	sub r0, r0, #1
	pop {r3, pc}
	.align 2, 0
_020061D4: .word 0x00000546
_020061D8: .word 0x0000096F
	thumb_func_end sub_020061B8

	thumb_func_start sub_020061DC
sub_020061DC: ; 0x020061DC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02005D44
	cmp r0, #0
	beq _0200620A
	ldr r1, _02006210 ; =0x0209DB58
	lsl r0, r6, #3
	mov r2, #0
	str r2, [r1, r0]
	add r4, r1, r0
	sub r2, r2, #1
	add r0, r4, #4
	add r1, r6, #1
	add r3, r2, #0
	str r5, [sp]
	bl sub_0206D9A0
	cmp r0, #1
	bne _0200620A
	str r5, [r4]
_0200620A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02006210: .word 0x0209DB58
	thumb_func_end sub_020061DC

	thumb_func_start sub_02006214
sub_02006214: ; 0x02006214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02005D44
	cmp r0, #0
	beq _0200624E
	add r0, r5, #0
	bl sub_020061B8
	add r7, r0, #0
	ldr r2, _02006250 ; =0x0209DB58
	lsl r1, r7, #3
	mov r0, #0
	add r4, r2, r1
	str r0, [r2, r1]
	add r0, r4, #4
	add r1, r5, #0
	bl sub_0206D974
	cmp r0, #1
	bne _0200624E
	str r5, [r4]
	cmp r6, #0x80
	bhs _0200624E
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200632C
_0200624E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02006250: .word 0x0209DB58
	thumb_func_end sub_02006214

	thumb_func_start GFL_SndSEPlay
GFL_SndSEPlay: ; 0x02006254
	mov r1, #0
	ldr r3, _0200625C ; =sub_02006214
	mvn r1, r1
	bx r3
	.align 2, 0
_0200625C: .word sub_02006214
	thumb_func_end GFL_SndSEPlay

	thumb_func_start sub_02006260
sub_02006260: ; 0x02006260
	ldr r3, _02006264 ; =sub_02006214
	bx r3
	.align 2, 0
_02006264: .word sub_02006214
	thumb_func_end sub_02006260

	thumb_func_start sub_02006268
sub_02006268: ; 0x02006268
	ldr r1, _02006278 ; =0x0209DB58
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r3, _0200627C ; =sub_0206BDD0
	add r0, r0, #4
	mov r1, #0
	bx r3
	nop
_02006278: .word 0x0209DB58
_0200627C: .word sub_0206BDD0
	thumb_func_end sub_02006268

	thumb_func_start sub_02006280
sub_02006280: ; 0x02006280
	push {r4, lr}
	mov r4, #0
_02006284:
	add r0, r4, #0
	bl sub_02006268
	add r4, r4, #1
	cmp r4, #5
	blt _02006284
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02006280

	thumb_func_start sub_02006294
sub_02006294: ; 0x02006294
	push {r3, lr}
	add r0, r0, #1
	bl sub_0206BE00
	cmp r0, #0
	beq _020062A4
	mov r0, #1
	pop {r3, pc}
_020062A4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02006294

	thumb_func_start sub_020062A8
sub_020062A8: ; 0x020062A8
	push {r4, lr}
	mov r4, #0
_020062AC:
	add r0, r4, #0
	bl sub_02006294
	cmp r0, #1
	bne _020062BA
	mov r0, #1
	pop {r4, pc}
_020062BA:
	add r4, r4, #1
	cmp r4, #5
	blt _020062AC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020062A8

	thumb_func_start sub_020062C4
sub_020062C4: ; 0x020062C4
	push {r3, lr}
	bl sub_0206BE10
	cmp r0, #0
	beq _020062D2
	mov r0, #1
	pop {r3, pc}
_020062D2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020062C4

	thumb_func_start sub_020062D8
sub_020062D8: ; 0x020062D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	add r4, r2, #0
	add r6, r3, #0
	cmp r1, r0
	beq _020062F4
	ldr r2, _02006328 ; =0x0209DB58
	lsl r0, r5, #3
	add r0, r2, r0
	add r0, r0, #4
	bl sub_0206BF30
_020062F4:
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	beq _0200630C
	ldr r2, _02006328 ; =0x0209DB58
	lsl r0, r5, #3
	add r0, r2, r0
	add r0, r0, #4
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0206BEE0
_0200630C:
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _02006324
	ldr r2, _02006328 ; =0x0209DB58
	lsl r0, r5, #3
	add r0, r2, r0
	add r0, r0, #4
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_0206BEF4
_02006324:
	pop {r4, r5, r6, pc}
	nop
_02006328: .word 0x0209DB58
	thumb_func_end sub_020062D8

	thumb_func_start sub_0200632C
sub_0200632C: ; 0x0200632C
	cmp r1, #0x7f
	bls _02006332
	mov r1, #0x7f
_02006332:
	ldr r2, _02006340 ; =0x0209DB58
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r3, _02006344 ; =sub_0206BE44
	add r0, r0, #4
	bx r3
	nop
_02006340: .word 0x0209DB58
_02006344: .word sub_0206BE44
	thumb_func_end sub_0200632C

	thumb_func_start sub_02006348
sub_02006348: ; 0x02006348
	ldr r2, _02006354 ; =0x0209DB24
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	ldr r3, _02006358 ; =sub_0206D2AC
	mov r1, #3
	bx r3
	.align 2, 0
_02006354: .word 0x0209DB24
_02006358: .word sub_0206D2AC
	thumb_func_end sub_02006348

	thumb_func_start sub_0200635C
sub_0200635C: ; 0x0200635C
	ldr r2, _02006368 ; =0x0209DB24
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	ldr r3, _0200636C ; =sub_0206D2AC
	mov r1, #4
	bx r3
	.align 2, 0
_02006368: .word 0x0209DB24
_0200636C: .word sub_0206D2AC
	thumb_func_end sub_0200635C

	thumb_func_start sub_02006370
sub_02006370: ; 0x02006370
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _020063C0 ; =0x0209DB24
	str r0, [r1, #0xc]
	bl sub_020063D8
	cmp r4, #0
	beq _02006388
	cmp r4, #1
	beq _02006398
	b _020063AE
_02006388:
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _020063C4 ; =0x0209DC18
	ldr r1, _020063C8 ; =sub_02006348
	b _020063A6
_02006398:
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _020063C4 ; =0x0209DC18
	ldr r1, _020063CC ; =sub_0200635C
_020063A6:
	ldr r2, _020063D0 ; =0x0209DB30
	ldr r3, _020063D4 ; =_0209E278
	bl OS_CreateThread
_020063AE:
	ldr r4, _020063C4 ; =0x0209DC18
	add r0, r4, #0
	bl OS_WakeupThreadDirect
	ldr r0, _020063C0 ; =0x0209DB24
	str r4, [r0, #0x14]
	add sp, #8
	pop {r4, pc}
	nop
_020063C0: .word 0x0209DB24
_020063C4: .word 0x0209DC18
_020063C8: .word sub_02006348
_020063CC: .word sub_0200635C
_020063D0: .word 0x0209DB30
_020063D4: .word _0209E278
	thumb_func_end sub_02006370

	thumb_func_start sub_020063D8
sub_020063D8: ; 0x020063D8
	push {r3, r4, r5, lr}
	ldr r4, _020063FC ; =0x0209DB24
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020063F8
	ldr r5, _02006400 ; =0x0209DC18
	add r0, r5, #0
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020063F8
	add r0, r5, #0
	bl OS_DestroyThread
	mov r0, #0
	str r0, [r4, #0x14]
_020063F8:
	pop {r3, r4, r5, pc}
	nop
_020063FC: .word 0x0209DB24
_02006400: .word 0x0209DC18
	thumb_func_end sub_020063D8

	thumb_func_start sub_02006404
sub_02006404: ; 0x02006404
	push {r3, lr}
	ldr r0, _0200641C ; =0x0209DB24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02006412
	mov r0, #1
	pop {r3, pc}
_02006412:
	ldr r0, _02006420 ; =0x0209DC18
	bl OS_IsThreadTerminated
	pop {r3, pc}
	nop
_0200641C: .word 0x0209DB24
_02006420: .word 0x0209DC18
	thumb_func_end sub_02006404

	thumb_func_start sub_02006424
sub_02006424: ; 0x02006424
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #1
	bne _0200643C
	bl sub_02005D78
	bl sub_020063D8
	mov r0, #0
	b _02006460
_0200643C:
	ldr r0, [r4]
	cmp r0, #0
	beq _0200644C
	cmp r0, #1
	beq _02006464
	cmp r0, #2
	beq _02006478
	b _020064B0
_0200644C:
	mov r0, #0x13
	lsl r0, r0, #8
	bl sub_0206CFE8
	add r0, r5, #0
	mov r1, #0
_02006458:
	bl sub_02006370
	ldr r0, [r4]
	add r0, r0, #1
_02006460:
	str r0, [r4]
	b _020064B0
_02006464:
	bl sub_02006404
	cmp r0, #1
	bne _02006476
	bl sub_020059D8
	add r0, r5, #0
	mov r1, #1
	b _02006458
_02006476:
	b _020064AA
_02006478:
	bl sub_02006404
	cmp r0, #1
	bne _020064AA
	mov r0, #0
	mov r6, #0
	bl sub_0206CFE8
	add r0, r5, #0
	bl sub_020059FC
	bl sub_02005968
	sub r2, r6, #1
	str r5, [sp]
	mov r1, #0
	add r3, r2, #0
	bl sub_0206D9A0
	ldr r0, [r4]
	add sp, #4
	add r0, r0, #1
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_020064AA:
	mov r0, #2
	bl OS_Sleep
_020064B0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02006424

	thumb_func_start sub_020064B8
sub_020064B8: ; 0x020064B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r0, r2, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_0206CC4C
	ldr r1, [r0]
	ldrh r0, [r0, #4]
	str r1, [sp, #0x10]
	bl sub_0206CCE4
	add r4, r0, #0
	ldr r0, [r4]
	str r0, [sp, #0xc]
	bl sub_020059D8
	ldr r6, _02006520 ; =0x0209DB24
	ldr r7, _02006524 ; =0x0000FFFF
	mov r5, #0
_020064E2:
	lsl r0, r5, #1
	add r0, r4, r0
	ldrh r0, [r0, #4]
	cmp r0, r7
	beq _020064FC
	ldr r1, [r6, #0x10]
	bl sub_0206D290
	cmp r0, #0
	bne _020064FC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020064FC:
	add r5, r5, #1
	cmp r5, #4
	blt _020064E2
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_0206CFD4
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl sub_0206CFD4
	ldr r0, [sp, #8]
	bl sub_020059FC
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02006520: .word 0x0209DB24
_02006524: .word 0x0000FFFF
	thumb_func_end sub_020064B8

	thumb_func_start sub_02006528
sub_02006528: ; 0x02006528
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0206CD30
	cmp r0, #0
	bne _0200653C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200653C:
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl NNS_SndArcGetFileAddress
	add r7, r0, #0
	bne _0200654E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200654E:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0207DFA4
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207DF84
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02006528

	thumb_func_start sub_02006564
sub_02006564: ; 0x02006564
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005968
	add r1, r4, #0
	bl sub_0206D974
	pop {r4, pc}
	thumb_func_end sub_02006564

	thumb_func_start sub_02006574
sub_02006574: ; 0x02006574
	push {r3, lr}
	bl sub_02005968
	mov r1, #0
	bl sub_0206BDD0
	bl sub_02005A24
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02006574

	thumb_func_start sub_02006588
sub_02006588: ; 0x02006588
	push {r3, r4, r5, lr}
	ldr r4, _020065B0 ; =0x000003F2
	add r0, r4, #0
	bl sub_0206CCE4
	ldr r5, [r0]
	add r0, r4, #0
	bl sub_0206CC4C
	ldr r4, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_0206CFD4
	add r0, r4, #0
	mov r1, #0
	bl sub_0206CFD4
	pop {r3, r4, r5, pc}
	nop
_020065B0: .word 0x000003F2
	thumb_func_end sub_02006588

	thumb_func_start sub_020065B4
sub_020065B4: ; 0x020065B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	ldr r1, _02006630 ; =0x0213B278
	str r2, [sp, #4]
	strh r0, [r1]
	ldr r0, _02006634 ; =0x0213B318
	mov r1, #0x7f
	strb r1, [r0, #0xc]
	mov r5, #0
	mov r7, #0xf
	mov r6, #0xf0
_020065CC:
	mov r0, #0x34
	ldr r1, _02006638 ; =0x0213B27C
	mul r0, r5
	mov r2, #0
	str r2, [r1, r0]
	add r4, r1, r0
	ldr r2, _0200663C ; =0x0208EE78
	lsl r3, r5, #2
	ldr r0, _0200663C ; =0x0208EE78
	ldrh r2, [r2, r3]
	add r1, r0, r3
	ldrb r0, [r4, #0x1e]
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	ldrh r1, [r1, #2]
	bic r0, r7
	and r2, r3
	orr r0, r2
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	bic r0, r6
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #0x1e]
	add r0, r4, #0
	bl sub_02006840
	cmp r5, #0
	bne _02006614
	ldr r0, _02006640 ; =0x0213B328
	str r0, [r4, #4]
	str r0, [r4, #0x10]
_02006614:
	add r5, r5, #1
	cmp r5, #3
	blt _020065CC
	ldr r1, _02006644 ; =0x0213B2F8
	mov r0, #1
	strh r0, [r1, #0x22]
	mov r0, #0
	strh r0, [r1, #0x20]
	ldr r0, [sp]
	str r0, [r1, #0x24]
	ldr r0, [sp, #4]
	str r0, [r1, #0x28]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02006630: .word 0x0213B278
_02006634: .word 0x0213B318
_02006638: .word 0x0213B27C
_0200663C: .word 0x0208EE78
_02006640: .word 0x0213B328
_02006644: .word 0x0213B2F8
	thumb_func_end sub_020065B4

	thumb_func_start sub_02006648
sub_02006648: ; 0x02006648
	push {r4, r5, r6, lr}
	ldr r4, _02006668 ; =0x0213B27C
	mov r5, #0
	mov r6, #0x34
_02006650:
	add r1, r5, #0
	mul r1, r6
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02006660
	add r0, r4, r1
	bl sub_020069B8
_02006660:
	add r5, r5, #1
	cmp r5, #3
	blt _02006650
	pop {r4, r5, r6, pc}
	.align 2, 0
_02006668: .word 0x0213B27C
	thumb_func_end sub_02006648

	thumb_func_start sub_0200666C
sub_0200666C: ; 0x0200666C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020066B8 ; =0x0213B2F8
	mov r5, #0
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	ble _020066B6
	ldr r7, _020066BC ; =0x0213B27C
_0200667A:
	mov r0, #0x34
	mul r0, r5
	add r4, r7, r0
	ldr r0, [r7, r0]
	cmp r0, #1
	bne _020066AC
	ldr r0, [r4, #0x14]
	bl sub_0206BCAC
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _0200669C
	ldr r0, [r4, #0x18]
	bl sub_0206BCAC
	b _0200669E
_0200669C:
	mov r0, #0
_0200669E:
	cmp r6, #0
	bne _020066AC
	cmp r0, #0
	bne _020066AC
	add r0, r4, #0
	bl sub_020069B8
_020066AC:
	ldr r0, _020066B8 ; =0x0213B2F8
	add r5, r5, #1
	ldrh r0, [r0, #0x22]
	cmp r5, r0
	blt _0200667A
_020066B6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020066B8: .word 0x0213B2F8
_020066BC: .word 0x0213B27C
	thumb_func_end sub_0200666C

	thumb_func_start sub_020066C0
sub_020066C0: ; 0x020066C0
	ldr r2, _020066E0 ; =0x0213B278
	mov r3, #0
	mov r0, #0x34
_020066C6:
	add r1, r3, #0
	mul r1, r0
	add r1, r2, r1
	ldr r1, [r1, #4]
	cmp r1, #1
	bne _020066D6
	mov r0, #1
	bx lr
_020066D6:
	add r3, r3, #1
	cmp r3, #3
	blt _020066C6
	mov r0, #0
	bx lr
	.align 2, 0
_020066E0: .word 0x0213B278
	thumb_func_end sub_020066C0

	thumb_func_start sub_020066E4
sub_020066E4: ; 0x020066E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r7, r1, #0
	bl sub_02006648
	ldr r0, [sp, #4]
	cmp r0, #2
	ble _020066FA
	mov r0, #2
	str r0, [sp, #4]
_020066FA:
	ldr r0, [sp, #4]
	mov r5, #1
	add r6, r0, #1
	cmp r6, #1
	ble _02006732
_02006704:
	mov r0, #0x34
	add r1, r5, #0
	mul r1, r0
	ldr r0, _02006744 ; =0x0213B27C
	add r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0200672C
	ldr r0, _02006748 ; =0x00000105
	ldr r1, _0200674C ; =0x00005C30
	str r0, [sp]
	ldr r3, _02006750 ; =0x02099F14
	add r0, r7, #0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #4]
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x30]
_0200672C:
	add r5, r5, #1
	cmp r5, r6
	blt _02006704
_02006732:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, _02006754 ; =0x0213B2F8
	strh r1, [r0, #0x22]
	mov r1, #0
	strh r1, [r0, #0x20]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02006744: .word 0x0213B27C
_02006748: .word 0x00000105
_0200674C: .word 0x00005C30
_02006750: .word 0x02099F14
_02006754: .word 0x0213B2F8
	thumb_func_end sub_020066E4

	thumb_func_start sub_02006758
sub_02006758: ; 0x02006758
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02006648
	ldr r7, _0200679C ; =0x0213B2F8
	mov r5, #0
	ldrh r0, [r7, #0x22]
	cmp r0, #0
	ble _0200678E
	ldr r6, _020067A0 ; =0x0213B27C
_0200676A:
	mov r0, #0x34
	mul r0, r5
	add r4, r6, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02006786
	ldr r1, [r4, #0x30]
	cmp r1, #1
	bne _02006786
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_02006840
_02006786:
	ldrh r0, [r7, #0x22]
	add r5, r5, #1
	cmp r5, r0
	blt _0200676A
_0200678E:
	ldr r0, _0200679C ; =0x0213B2F8
	mov r1, #1
	strh r1, [r0, #0x22]
	mov r1, #0
	strh r1, [r0, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200679C: .word 0x0213B2F8
_020067A0: .word 0x0213B27C
	thumb_func_end sub_02006758

	thumb_func_start sub_020067A4
sub_020067A4: ; 0x020067A4
	ldr r1, _020067AC ; =0x0213B318
	strb r0, [r1, #0xc]
	bx lr
	nop
_020067AC: .word 0x0213B318
	thumb_func_end sub_020067A4

	thumb_func_start sub_020067B0
sub_020067B0: ; 0x020067B0
	ldr r0, _020067B8 ; =0x0213B318
	mov r1, #0x7f
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0
_020067B8: .word 0x0213B318
	thumb_func_end sub_020067B0

	thumb_func_start sub_020067BC
sub_020067BC: ; 0x020067BC
	push {r3, lr}
	ldr r1, _020067D4 ; =0x0213B318
	ldrb r1, [r1, #0xc]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x7f
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_020067D4: .word 0x0213B318
	thumb_func_end sub_020067BC

	thumb_func_start sub_020067D8
sub_020067D8: ; 0x020067D8
	push {r4, lr}
	ldr r0, _0200680C ; =0x0213B2F8
	ldr r2, _02006810 ; =0x0213B27C
	ldrh r4, [r0, #0x20]
	mov r0, #0x34
	add r1, r4, #0
	mul r1, r0
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _020067F2
	add r0, r2, r1
	bl sub_020069B8
_020067F2:
	ldr r0, _0200680C ; =0x0213B2F8
	ldrh r1, [r0, #0x22]
	ldrh r2, [r0, #0x20]
	sub r1, r1, #1
	cmp r2, r1
	bge _02006802
	add r1, r2, #1
	b _02006804
_02006802:
	mov r1, #0
_02006804:
	strh r1, [r0, #0x20]
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200680C: .word 0x0213B2F8
_02006810: .word 0x0213B27C
	thumb_func_end sub_020067D8

	thumb_func_start sub_02006814
sub_02006814: ; 0x02006814
	ldr r1, _02006838 ; =0x00003443
	mov r3, #0
	str r1, [r0, #0xc]
	ldr r1, _0200683C ; =0x000064E1
	mov r2, #0x40
	str r1, [r0, #0x20]
	add r1, r0, #0
	add r1, #0x28
	strb r2, [r1]
	ldr r1, [r0, #4]
	str r3, [r0, #8]
	strb r3, [r0, #0x1c]
	strb r3, [r0, #0x1d]
	str r3, [r0, #0x24]
	str r3, [r0, #0x2c]
	str r1, [r0, #0x10]
	bx lr
	nop
_02006838: .word 0x00003443
_0200683C: .word 0x000064E1
	thumb_func_end sub_02006814

	thumb_func_start sub_02006840
sub_02006840: ; 0x02006840
	ldr r3, _0200684C ; =sub_02006814
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x30]
	bx r3
	nop
_0200684C: .word sub_02006814
	thumb_func_end sub_02006840

	thumb_func_start sub_02006850
sub_02006850: ; 0x02006850
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0206CD30
	add r4, r0, #0
	bne _02006862
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006862:
	ldr r0, [r4]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_0206CECC
	add r6, r0, #0
	bne _02006874
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006874:
	ldr r0, [r4]
	ldr r1, [r5, #4]
	lsl r0, r0, #8
	lsr r0, r0, #8
	add r2, r6, #0
	mov r4, #0
	mov r3, #0
	bl NNS_SndArcReadFile
	sub r1, r4, #1
	cmp r0, r1
	bne _02006890
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02006890:
	cmp r0, r6
	beq _02006898
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02006898:
	ldr r6, [r5, #4]
	ldr r0, [r6, #0x3c]
	add r4, r6, r0
	add r0, r6, #0
	bl sub_0207DF80
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x3c]
	sub r1, r1, r0
	add r0, r4, #0
	sub r1, #0xc
	add r0, #0xc
	str r1, [r5, #8]
	str r0, [r5, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #0x7f
	str r0, [r5, #0xc]
	ldrh r2, [r4, #2]
	ldr r0, _020068D4 ; =0xD87F8000
	asr r3, r2, #0x1f
	blx sub_0208D5C4
	ldrh r2, [r4, #4]
	asr r3, r2, #0x1f
	blx sub_0208D5C4
	str r0, [r5, #0x20]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_020068D4: .word 0xD87F8000
	thumb_func_end sub_02006850

	thumb_func_start sub_020068D8
sub_020068D8: ; 0x020068D8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _020068EA
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_020068EA:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020068F6
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_020068F6:
	ldrb r0, [r4, #0x1e]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_0206BB1C
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _0200690C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0200690C:
	ldrb r0, [r4, #0x1c]
	bl sub_020067BC
	mov r5, #0
	str r5, [sp]
	ldr r1, [r4, #8]
	mov r3, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r1, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	bl sub_0206BB58
	cmp r0, #0
	bne _02006942
	add sp, #0x18
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02006942:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _020069AE
	ldrb r0, [r4, #0x1e]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bl sub_0206BB1C
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _0200695E
	add sp, #0x18
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_0200695E:
	mov r0, #0x1c
	ldrsb r1, [r4, r0]
	mov r0, #0x1d
	ldrsb r0, [r4, r0]
	add r0, r1, r0
	bpl _0200696C
	add r0, r5, #0
_0200696C:
	cmp r0, #0x7f
	ble _02006972
	mov r0, #0x7f
_02006972:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020067BC
	mov r5, #0
	str r5, [sp]
	ldr r1, [r4, #8]
	mov r3, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	bl sub_0206BB58
	cmp r0, #0
	bne _020069AE
	add sp, #0x18
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_020069AE:
	mov r0, #1
	str r0, [r4]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020068D8

	thumb_func_start sub_020069B8
sub_020069B8: ; 0x020069B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0206BC1C
	ldr r0, [r4, #0x14]
	bl sub_0206BCEC
	ldr r0, [r4, #0x14]
	bl sub_0206BB48
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _020069E6
	ldr r0, [r4, #0x18]
	bl sub_0206BC1C
	ldr r0, [r4, #0x18]
	bl sub_0206BCEC
	ldr r0, [r4, #0x18]
	bl sub_0206BB48
_020069E6:
	mov r0, #0
	str r0, [r4]
	add r0, r4, #0
	bl sub_02006814
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020069B8

	thumb_func_start sub_020069F4
sub_020069F4: ; 0x020069F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02005CBC
	cmp r0, #1
	bne _02006A18
	mov r4, #2
_02006A0A:
	add r0, r4, #0
	bl OS_Sleep
	bl sub_02005CBC
	cmp r0, #1
	beq _02006A0A
_02006A18:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02006A44
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	bl sub_02006AD4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020069F4

	thumb_func_start sub_02006A44
sub_02006A44: ; 0x02006A44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r3, #0
	ldr r3, _02006ACC ; =0x0213B2F8
	add r5, r2, #0
	ldr r3, [r3, #0x24]
	add r2, sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x10]
	blx r3
	bl sub_020067D8
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	mov r2, #0x34
	ldr r0, _02006AD0 ; =0x0213B27C
	mul r2, r1
	add r4, r0, r2
	ldr r0, [r0, r2]
	cmp r0, #1
	bne _02006A74
	add r0, r4, #0
	bl sub_020069B8
_02006A74:
	add r0, r4, #0
	add r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x20
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x1c
	str r0, [sp, #0xc]
	add r0, r6, #0
	ldr r6, _02006ACC ; =0x0213B2F8
	add r3, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	ldr r6, [r6, #0x28]
	add r3, #0x10
	blx r6
	cmp r0, #0
	bne _02006AA8
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl sub_02006850
_02006AA8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02006AB6
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	bl sub_02006C50
_02006AB6:
	add r0, r4, #0
	add r0, #0x28
	strb r5, [r0]
	ldr r0, [sp, #0x30]
	str r7, [r4, #0x2c]
	strb r0, [r4, #0x1d]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006ACC: .word 0x0213B2F8
_02006AD0: .word 0x0213B27C
	thumb_func_end sub_02006A44

	thumb_func_start sub_02006AD4
sub_02006AD4: ; 0x02006AD4
	push {r3, r4, r5, lr}
	ldr r4, _02006AF8 ; =0x0213B27C
	mov r1, #0x34
	add r5, r0, #0
	mul r5, r1
	add r0, r4, r5
	bl sub_020068D8
	cmp r0, #0
	bne _02006AF2
	add r0, r4, r5
	bl sub_020069B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02006AF2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02006AF8: .word 0x0213B27C
	thumb_func_end sub_02006AD4

	thumb_func_start sub_02006AFC
sub_02006AFC: ; 0x02006AFC
	push {r4, lr}
	mov r2, #0x34
	ldr r3, _02006B58 ; =0x0213B27C
	mul r2, r0
	ldr r0, [r3, r2]
	add r4, r3, r2
	cmp r0, #0
	beq _02006B56
	mov r0, #0x1c
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	bpl _02006B16
	mov r0, #0
_02006B16:
	cmp r0, #0x7f
	ble _02006B1C
	mov r0, #0x7f
_02006B1C:
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	bl sub_020067BC
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0206BC3C
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _02006B56
	mov r0, #0x1c
	ldrsb r1, [r4, r0]
	mov r0, #0x1d
	ldrsb r0, [r4, r0]
	add r0, r1, r0
	bpl _02006B40
	mov r0, #0
_02006B40:
	cmp r0, #0x7f
	ble _02006B46
	mov r0, #0x7f
_02006B46:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020067BC
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0206BC3C
_02006B56:
	pop {r4, pc}
	.align 2, 0
_02006B58: .word 0x0213B27C
	thumb_func_end sub_02006AFC

	thumb_func_start sub_02006B5C
sub_02006B5C: ; 0x02006B5C
	push {r4, lr}
	mov r2, #0x34
	ldr r3, _02006B8C ; =0x0213B27C
	mul r2, r0
	ldr r0, [r3, r2]
	add r4, r3, r2
	cmp r0, #0
	beq _02006B8A
	ldr r0, [r4, #0x20]
	add r1, r0, r1
	str r1, [r4, #0x20]
	ldr r0, [r4, #0x14]
	bl sub_0206BC54
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _02006B8A
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x18]
	add r1, r2, r1
	bl sub_0206BC54
_02006B8A:
	pop {r4, pc}
	.align 2, 0
_02006B8C: .word 0x0213B27C
	thumb_func_end sub_02006B5C

	thumb_func_start sub_02006B90
sub_02006B90: ; 0x02006B90
	mov r1, #0x34
	ldr r2, _02006BA8 ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	bne _02006BA2
	mov r0, #0
	bx lr
_02006BA2:
	mov r0, #0x1c
	ldrsb r0, [r3, r0]
	bx lr
	.align 2, 0
_02006BA8: .word 0x0213B27C
	thumb_func_end sub_02006B90

	thumb_func_start sub_02006BAC
sub_02006BAC: ; 0x02006BAC
	mov r1, #0x34
	ldr r2, _02006BC4 ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	bne _02006BBE
	ldr r0, _02006BC8 ; =0x000064E1
	bx lr
_02006BBE:
	ldr r0, [r3, #0x20]
	bx lr
	nop
_02006BC4: .word 0x0213B27C
_02006BC8: .word 0x000064E1
	thumb_func_end sub_02006BAC

	thumb_func_start sub_02006BCC
sub_02006BCC: ; 0x02006BCC
	mov r1, #0x34
	ldr r2, _02006BE4 ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	bne _02006BDE
	mov r0, #0
	bx lr
_02006BDE:
	ldr r0, [r3, #0x10]
	bx lr
	nop
_02006BE4: .word 0x0213B27C
	thumb_func_end sub_02006BCC

	thumb_func_start sub_02006BE8
sub_02006BE8: ; 0x02006BE8
	mov r1, #0x34
	ldr r2, _02006C00 ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	bne _02006BFA
	mov r0, #0
	bx lr
_02006BFA:
	ldr r0, [r3, #8]
	bx lr
	nop
_02006C00: .word 0x0213B27C
	thumb_func_end sub_02006BE8

	thumb_func_start sub_02006C04
sub_02006C04: ; 0x02006C04
	mov r1, #0x34
	ldr r2, _02006C1C ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	add r3, r2, r1
	cmp r0, #0
	bne _02006C16
	ldr r0, _02006C20 ; =0x00003443
	bx lr
_02006C16:
	ldr r0, [r3, #0xc]
	bx lr
	nop
_02006C1C: .word 0x0213B27C
_02006C20: .word 0x00003443
	thumb_func_end sub_02006C04

	thumb_func_start sub_02006C24
sub_02006C24: ; 0x02006C24
	push {r3, lr}
	mov r1, #0x34
	ldr r2, _02006C3C ; =0x0213B27C
	mul r1, r0
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _02006C38
	add r0, r2, r1
	bl sub_020069B8
_02006C38:
	pop {r3, pc}
	nop
_02006C3C: .word 0x0213B27C
	thumb_func_end sub_02006C24

	thumb_func_start sub_02006C40
sub_02006C40: ; 0x02006C40
	mov r1, #0x34
	mul r1, r0
	ldr r0, _02006C4C ; =0x0213B27C
	ldr r0, [r0, r1]
	bx lr
	nop
_02006C4C: .word 0x0213B27C
	thumb_func_end sub_02006C40

	thumb_func_start sub_02006C50
sub_02006C50: ; 0x02006C50
	push {r3, r4, r5, r6}
	mov r5, #0
	lsr r6, r1, #1
	beq _02006C6A
	sub r2, r1, #1
_02006C5A:
	sub r3, r2, r5
	ldrb r4, [r0, r5]
	ldrb r1, [r0, r3]
	strb r1, [r0, r5]
	add r5, r5, #1
	strb r4, [r0, r3]
	cmp r5, r6
	blo _02006C5A
_02006C6A:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end sub_02006C50

	thumb_func_start sub_02006C70
sub_02006C70: ; 0x02006C70
	push {r4, r5, r6, r7}
	cmp r0, #1
	blo _02006C7E
	mov r4, #0xab
	lsl r4, r4, #2
	cmp r0, r4
	bls _02006C86
_02006C7E:
	mov r0, #1
	str r0, [r2]
	pop {r4, r5, r6, r7}
	bx lr
_02006C86:
	add r3, r4, #0
	sub r3, #0x20
	cmp r0, r3
	blo _02006C98
	cmp r0, r4
	bhi _02006C98
	str r0, [r2]
	pop {r4, r5, r6, r7}
	bx lr
_02006C98:
	ldr r3, _02006CC4 ; =0x0208EE84
	mov r5, #0
	mov r6, #6
_02006C9E:
	add r7, r5, #0
	mul r7, r6
	add r4, r3, r7
	ldrh r7, [r3, r7]
	cmp r7, r0
	bne _02006CB8
	ldrh r7, [r4, #2]
	cmp r1, r7
	bne _02006CB8
	ldrh r0, [r4, #4]
	str r0, [r2]
	pop {r4, r5, r6, r7}
	bx lr
_02006CB8:
	add r5, r5, #1
	cmp r5, #6
	blo _02006C9E
	str r0, [r2]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02006CC4: .word 0x0208EE84
	thumb_func_end sub_02006C70

	thumb_func_start sub_02006CC8
sub_02006CC8: ; 0x02006CC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	str r1, [sp]
	str r3, [sp, #4]
	ldr r6, [sp, #0x2c]
	cmp r5, #1
	blo _02006CE2
	mov r0, #0xab
	lsl r0, r0, #2
	cmp r5, r0
	bls _02006CE4
_02006CE2:
	mov r5, #1
_02006CE4:
	add r0, sp, #8
	mov r1, #0xbf
	add r2, r5, #0
	mov r7, #0xbf
	bl sub_0204A928
	add r0, sp, #8
	ldrh r0, [r0, #2]
	cmp r4, #0
	strb r0, [r6]
	bne _02006D00
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02006D00:
	add r7, #0xfa
	cmp r5, r7
	bne _02006D4A
	ldr r0, [sp]
	cmp r0, #0
	bne _02006D4A
	ldr r0, [r4]
	bl sub_02007E70
	cmp r0, #1
	bne _02006D4A
	ldr r0, [r4]
	bl sub_02007E84
	add r1, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl sub_02007E88
	ldr r0, _02006D50 ; =0x00001FF4
	ldr r1, [sp, #0x20]
	str r0, [r1]
	ldr r1, [sp, #0x24]
	str r0, [r1]
	mov r1, #0x78
	add r0, #0xc
	strb r1, [r6]
	bl sub_02005748
	mov r1, #2
	lsl r1, r1, #0xe
	add r1, r0, r1
	ldr r0, [sp, #0x28]
	add sp, #0xc
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02006D4A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006D50: .word 0x00001FF4
	thumb_func_end sub_02006CC8

	thumb_func_start sub_02006D54
sub_02006D54: ; 0x02006D54
	push {r4, lr}
	add r4, r0, #0
	bl sub_020072FC
	bl sub_02007E64
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02006D54

	thumb_func_start sub_02006D64
sub_02006D64: ; 0x02006D64
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02006DD4 ; =0x02099F2C
	mov r1, #0x59
	str r1, [sp]
	mov r1, #0x28
	mov r2, #0
	add r3, r7, #0
	add r5, r0, #0
	mov r6, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0x5f
	str r0, [sp]
	ldr r1, _02006DD8 ; =0x00002014
	add r0, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_0203A1FC
	ldr r2, _02006DD8 ; =0x00002014
	mov r1, #0
	add r5, r0, #0
	blx MI_CpuFill8
	str r5, [r4, #0x24]
	mov r0, #1
	mov r5, #1
	bl sub_0207EFC4
	mov r0, #2
	bl sub_0207EFF4
	ldr r1, [r4, #0x20]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r5
	str r0, [r4, #0x20]
	bl sub_0207E75C
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02006DCE
	ldr r1, _02006DDC ; =0x02099F20
	add r0, r6, #0
	blx sub_02006DE4
_02006DCE:
	ldr r0, _02006DE0 ; =0x02140F58
	str r4, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02006DD4: .word 0x02099F2C
_02006DD8: .word 0x00002014
_02006DDC: .word 0x02099F20
_02006DE0: .word 0x02140F58
	thumb_func_end sub_02006D64

