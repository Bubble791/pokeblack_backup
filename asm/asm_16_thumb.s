	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0205EA3C
sub_0205EA3C: ; 0x0205EA3C
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_0205EA3C

	thumb_func_start sub_0205EA48
sub_0205EA48: ; 0x0205EA48
	push {r3, r4}
	ldrh r3, [r0, #0xa]
	mov r2, #0
	add r4, r1, r3
	str r2, [r4, #4]
	str r2, [r1, r3]
	str r1, [r0]
	str r1, [r0, #4]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0205EA48

	thumb_func_start sub_0205EA64
sub_0205EA64: ; 0x0205EA64
	push {r4, lr}
	ldr r2, [r0]
	cmp r2, #0
	bne _0205EA72
	bl sub_0205EA48
	pop {r4, pc}
_0205EA72:
	ldrh r3, [r0, #0xa]
	ldr r2, [r0, #4]
	str r2, [r1, r3]
	add r4, r1, r3
	mov r2, #0
	str r2, [r4, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0, #4]
	add r2, r3, r2
	str r1, [r2, #4]
	str r1, [r0, #4]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end sub_0205EA64

	thumb_func_start sub_0205EA90
sub_0205EA90: ; 0x0205EA90
	push {r4, lr}
	ldr r2, [r0]
	cmp r2, #0
	bne _0205EA9E
	bl sub_0205EA48
	pop {r4, pc}
_0205EA9E:
	ldrh r3, [r0, #0xa]
	mov r2, #0
	str r2, [r1, r3]
	ldr r2, [r0]
	add r4, r1, r3
	str r2, [r4, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0]
	str r1, [r3, r2]
	str r1, [r0]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0205EA90

	thumb_func_start sub_0205EABC
sub_0205EABC: ; 0x0205EABC
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _0205EACA
	add r1, r2, #0
	bl sub_0205EA64
	pop {r3, r4, r5, pc}
_0205EACA:
	ldr r3, [r0]
	cmp r1, r3
	bne _0205EAD8
	add r1, r2, #0
	bl sub_0205EA90
	pop {r3, r4, r5, pc}
_0205EAD8:
	ldrh r5, [r0, #0xa]
	ldr r3, [r1, r5]
	add r4, r2, r5
	str r3, [r2, r5]
	str r1, [r4, #4]
	add r3, r3, r5
	str r2, [r3, #4]
	ldrh r3, [r0, #0xa]
	str r2, [r1, r3]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0205EABC

	thumb_func_start sub_0205EAF4
sub_0205EAF4: ; 0x0205EAF4
	push {r3, r4}
	ldrh r4, [r0, #0xa]
	add r2, r1, r4
	ldr r1, [r1, r4]
	cmp r1, #0
	bne _0205EB06
	ldr r1, [r2, #4]
	str r1, [r0]
	b _0205EB0C
_0205EB06:
	ldr r3, [r2, #4]
	add r1, r1, r4
	str r3, [r1, #4]
_0205EB0C:
	ldr r4, [r2, #4]
	cmp r4, #0
	bne _0205EB18
	ldr r1, [r2]
	str r1, [r0, #4]
	b _0205EB1E
_0205EB18:
	ldrh r1, [r0, #0xa]
	ldr r3, [r2]
	str r3, [r4, r1]
_0205EB1E:
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	ldrh r1, [r0, #8]
	sub r1, r1, #1
	strh r1, [r0, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0205EAF4

	thumb_func_start sub_0205EB30
sub_0205EB30: ; 0x0205EB30
	cmp r1, #0
	bne _0205EB38
	ldr r0, [r0]
	bx lr
_0205EB38:
	ldrh r0, [r0, #0xa]
	add r0, r1, r0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB30

	thumb_func_start sub_0205EB40
sub_0205EB40: ; 0x0205EB40
	cmp r1, #0
	bne _0205EB48
	ldr r0, [r0, #4]
	bx lr
_0205EB48:
	ldrh r0, [r0, #0xa]
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205EB40

	thumb_func_start sub_0205EB50
sub_0205EB50: ; 0x0205EB50
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r0, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _0205EB8A
_0205EB60:
	ldr r0, [r4, #0x18]
	cmp r0, r5
	bhi _0205EB7E
	ldr r0, [r4, #0x1c]
	cmp r5, r0
	bhs _0205EB7E
	add r0, r4, #0
	add r0, #0xc
	add r1, r5, #0
	bl sub_0205EB50
	cmp r0, #0
	bne _0205EB8C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0205EB7E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0205EB30
	add r4, r0, #0
	bne _0205EB60
_0205EB8A:
	mov r0, #0
_0205EB8C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0205EB50

	thumb_func_start sub_0205EB90
sub_0205EB90: ; 0x0205EB90
	push {r4, lr}
	ldr r4, _0205EBA8 ; =0x02141A24
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205EB50
	cmp r0, #0
	beq _0205EBA4
	add r4, r0, #0
	add r4, #0xc
_0205EBA4:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0205EBA8: .word 0x02141A24
	thumb_func_end sub_0205EB90

	thumb_func_start sub_0205EBAC
sub_0205EBAC: ; 0x0205EBAC
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4]
	str r2, [r4, #0x18]
	mov r1, #0
	mov r0, #0xff
	bic r1, r0
	ldr r0, _0205EBFC ; =0xFFFFFFF8
	str r3, [r4, #0x1c]
	str r1, [r4, #0x20]
	add r0, sp
	ldrh r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #4
	bl sub_0205EA3C
	ldr r0, _0205EC00 ; =0x02141A20
	ldr r0, [r0]
	cmp r0, #0
	bne _0205EBEC
	ldr r0, _0205EC04 ; =0x02141A24
	mov r1, #4
	bl sub_0205EA3C
	ldr r0, _0205EC00 ; =0x02141A20
	mov r1, #1
	str r1, [r0]
_0205EBEC:
	add r0, r4, #0
	bl sub_0205EB90
	add r1, r4, #0
	bl sub_0205EA64
	pop {r4, pc}
	nop
_0205EBFC: .word 0xFFFFFFF8
_0205EC00: .word 0x02141A20
_0205EC04: .word 0x02141A24
	thumb_func_end sub_0205EBAC

	thumb_func_start sub_0205EC08
sub_0205EC08: ; 0x0205EC08
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB90
	add r1, r4, #0
	bl sub_0205EAF4
	pop {r4, pc}
	thumb_func_end sub_0205EC08

	thumb_func_start sub_0205EC18
sub_0205EC18: ; 0x0205EC18
	ldrh r2, [r1, #2]
	asr r3, r2, #8
	mov r2, #0x7f
	and r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	sub r2, r1, r2
	str r2, [r0]
	ldr r2, [r1, #4]
	add r1, #0x10
	add r1, r2, r1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205EC18

	thumb_func_start sub_0205EC34
sub_0205EC34: ; 0x0205EC34
	ldr r2, [r1, #8]
	ldr r1, [r1, #0xc]
	cmp r2, #0
	beq _0205EC40
	str r1, [r2, #0xc]
	b _0205EC42
_0205EC40:
	str r1, [r0]
_0205EC42:
	cmp r1, #0
	beq _0205EC4A
	str r2, [r1, #8]
	b _0205EC4C
_0205EC4A:
	str r2, [r0, #4]
_0205EC4C:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0205EC34

	thumb_func_start sub_0205EC50
sub_0205EC50: ; 0x0205EC50
	str r2, [r1, #8]
	cmp r2, #0
	beq _0205EC5C
	ldr r3, [r2, #0xc]
	str r1, [r2, #0xc]
	b _0205EC60
_0205EC5C:
	ldr r3, [r0]
	str r1, [r0]
_0205EC60:
	str r3, [r1, #0xc]
	cmp r3, #0
	beq _0205EC6A
	str r1, [r3, #8]
	b _0205EC6C
_0205EC6A:
	str r1, [r0, #4]
_0205EC6C:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_0205EC50

	thumb_func_start sub_0205EC70
sub_0205EC70: ; 0x0205EC70
	ldr r3, [r0]
	mov r2, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	ldr r1, [r0, #4]
	add r0, r3, #0
	add r0, #0x10
	sub r0, r1, r0
	str r0, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #0xc]
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205EC70

	thumb_func_start sub_0205EC8C
sub_0205EC8C: ; 0x0205EC8C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x24
	add r3, r1, #0
	str r2, [sp]
	add r2, r4, #0
	ldr r1, _0205ECD4 ; =0x45585048
	add r2, #0x14
	bl sub_0205EBAC
	mov r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldrh r1, [r4, #0x12]
	mov r0, #1
	bic r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r5, #0x18]
	ldr r1, _0205ECD8 ; =0x00004652
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_0205EC70
	str r0, [r5, #0x24]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0205ECD4: .word 0x45585048
_0205ECD8: .word 0x00004652
	thumb_func_end sub_0205EC8C

	thumb_func_start sub_0205ECDC
sub_0205ECDC: ; 0x0205ECDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0x10
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0205EC18
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp, #0xc]
	add r0, r6, r4
	add r6, r4, #0
	sub r6, #0x10
	str r0, [sp, #8]
	str r6, [sp, #0x14]
	add r0, r5, #0
	bl sub_0205EC34
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r0, r1
	cmp r0, #0x14
	bhs _0205ED14
	str r1, [sp, #0x14]
	b _0205ED28
_0205ED14:
	ldr r1, _0205EDCC ; =0x00004652
	add r0, sp, #0x10
	bl sub_0205EC70
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0205EC50
	add r7, r0, #0
_0205ED28:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x14
	bhs _0205ED36
	str r1, [sp, #8]
	b _0205ED48
_0205ED36:
	ldr r1, _0205EDCC ; =0x00004652
	add r0, sp, #8
	bl sub_0205EC70
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0205EC50
_0205ED48:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	sub r2, r0, r1
	sub r0, r5, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #1
	tst r0, r3
	beq _0205ED66
	mov r0, #0
	blx sub_02078658
_0205ED66:
	ldr r0, [sp, #8]
	ldr r1, _0205EDD0 ; =0x00005544
	str r0, [sp, #4]
	add r0, sp, #0
	str r6, [sp]
	bl sub_0205EC70
	add r1, r0, #0
	ldrh r2, [r1, #2]
	ldr r0, _0205EDD4 ; =0xFFFF7FFF
	and r0, r2
	strh r0, [r1, #2]
	add r2, sp, #0x20
	ldrh r2, [r2, #0x10]
	ldrh r0, [r1, #2]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x10
	orr r0, r2
	strh r0, [r1, #2]
	ldr r0, [sp, #0x14]
	ldrh r3, [r1, #2]
	sub r2, r1, r0
	ldr r0, _0205EDD8 ; =0xFFFF80FF
	lsl r2, r2, #0x10
	and r0, r3
	strh r0, [r1, #2]
	lsr r2, r2, #0x10
	lsl r2, r2, #0x19
	ldrh r0, [r1, #2]
	lsr r2, r2, #0x11
	orr r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5, #0x10]
	ldrh r2, [r1, #2]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #0xff
	bic r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r1, #2]
	orr r0, r3
	strh r0, [r1, #2]
	add r0, r5, #0
	ldr r2, [r5, #0xc]
	add r0, #8
	bl sub_0205EC50
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205EDCC: .word 0x00004652
_0205EDD0: .word 0x00005544
_0205EDD4: .word 0xFFFF7FFF
_0205EDD8: .word 0xFFFF80FF
	thumb_func_end sub_0205ECDC

	thumb_func_start sub_0205EDDC
sub_0205EDDC: ; 0x0205EDDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldrh r0, [r0, #0x12]
	mov r7, #1
	add r3, r1, #0
	and r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _0205EDF6
	mov r7, #0
_0205EDF6:
	mov r0, #0
	mov ip, r0
	sub r5, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r4, [r0]
	cmp r4, #0
	beq _0205EE3A
	sub r0, r2, #1
	str r0, [sp, #4]
	mvn r6, r0
_0205EE0C:
	add r2, r4, #0
	ldr r0, [sp, #4]
	add r2, #0x10
	add r0, r0, r2
	add r1, r6, #0
	and r1, r0
	sub r2, r1, r2
	ldr r0, [r4, #4]
	add r2, r3, r2
	cmp r0, r2
	blo _0205EE34
	cmp r5, r0
	bls _0205EE34
	add r5, r0, #0
	mov ip, r4
	str r1, [sp, #0xc]
	cmp r7, #0
	bne _0205EE3A
	cmp r0, r3
	beq _0205EE3A
_0205EE34:
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _0205EE0C
_0205EE3A:
	mov r0, ip
	cmp r0, #0
	beq _0205EE52
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r1, ip
	bl sub_0205ECDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0205EE52:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205EDDC

	thumb_func_start sub_0205EE58
sub_0205EE58: ; 0x0205EE58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r0, #0x24
	str r0, [sp, #4]
	ldrh r0, [r0, #0x12]
	mov r7, #1
	add r3, r1, #0
	and r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _0205EE72
	mov r7, #0
_0205EE72:
	mov r0, #0
	mov ip, r0
	sub r5, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _0205EEAE
	sub r0, r2, #1
	mvn r6, r0
_0205EE86:
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x10
	add r2, r0, r1
	sub r2, r2, r3
	and r2, r6
	sub r1, r2, r1
	bmi _0205EEA8
	cmp r5, r0
	bls _0205EEA8
	add r5, r0, #0
	mov ip, r4
	str r2, [sp, #8]
	cmp r7, #0
	bne _0205EEAE
	cmp r0, r3
	beq _0205EEAE
_0205EEA8:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _0205EE86
_0205EEAE:
	mov r0, ip
	cmp r0, #0
	beq _0205EEC6
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, ip
	bl sub_0205ECDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205EEC6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0205EE58

	thumb_func_start sub_0205EECC
sub_0205EECC: ; 0x0205EECC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	mov r4, #0
	str r0, [sp, #4]
	str r1, [sp]
	ldr r1, [r6]
	cmp r1, #0
	beq _0205EF0C
	ldr r0, [r5]
_0205EEE6:
	cmp r1, r0
	bhs _0205EEEE
	add r4, r1, #0
	b _0205EF06
_0205EEEE:
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0205EF0C
	add r0, r1, #0
	ldr r2, [r1, #4]
	add r0, #0x10
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0205EC34
	b _0205EF0C
_0205EF06:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0205EEE6
_0205EF0C:
	cmp r4, #0
	beq _0205EF2A
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #0x10
	add r1, r1, r0
	ldr r0, [r5]
	cmp r1, r0
	bne _0205EF2A
	add r0, r6, #0
	add r1, r4, #0
	str r4, [sp]
	bl sub_0205EC34
	add r4, r0, #0
_0205EF2A:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	cmp r0, #0x10
	bhs _0205EF3A
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205EF3A:
	ldr r1, _0205EF54 ; =0x00004652
	add r0, sp, #0
	bl sub_0205EC70
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0205EC50
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0205EF54: .word 0x00004652
	thumb_func_end sub_0205EECC

	thumb_func_start sub_0205EF58
sub_0205EF58: ; 0x0205EF58
	push {r3, lr}
	add r1, r1, r0
	mov r3, #3
	add r0, r0, #3
	bic r1, r3
	bic r0, r3
	cmp r0, r1
	bhi _0205EF6E
	sub r3, r1, r0
	cmp r3, #0x4c
	bhs _0205EF72
_0205EF6E:
	mov r0, #0
	pop {r3, pc}
_0205EF72:
	bl sub_0205EC8C
	pop {r3, pc}
	thumb_func_end sub_0205EF58

	thumb_func_start sub_0205EF78
sub_0205EF78: ; 0x0205EF78
	ldr r3, _0205EF7C ; =sub_0205EC08
	bx r3
	.align 2, 0
_0205EF7C: .word sub_0205EC08
	thumb_func_end sub_0205EF78

	thumb_func_start sub_0205EF80
sub_0205EF80: ; 0x0205EF80
	push {r3, lr}
	cmp r1, #0
	bne _0205EF88
	mov r1, #1
_0205EF88:
	mov r3, #3
	add r1, r1, #3
	bic r1, r3
	cmp r2, #0
	blt _0205EF98
	bl sub_0205EDDC
	pop {r3, pc}
_0205EF98:
	neg r2, r2
	bl sub_0205EE58
	pop {r3, pc}
	thumb_func_end sub_0205EF80

	thumb_func_start sub_0205EFA0
sub_0205EFA0: ; 0x0205EFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	add r5, r2, #0
	sub r6, #0x10
	str r0, [sp]
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	mov r0, #3
	add r5, r5, #3
	ldr r7, [r6, #4]
	bic r5, r0
	str r1, [sp, #4]
	cmp r5, r7
	bne _0205EFC6
	add sp, #0x1c
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_0205EFC6:
	cmp r5, r7
	bls _0205F05E
	add r0, r6, #0
	add r0, #0x10
	add r1, r7, r0
	ldr r0, [sp, #8]
	ldr r4, [r0]
	cmp r4, #0
	beq _0205EFE2
_0205EFD8:
	cmp r4, r1
	beq _0205EFE2
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _0205EFD8
_0205EFE2:
	cmp r4, #0
	beq _0205EFF0
	ldr r0, [r4, #4]
	add r7, #0x10
	add r0, r7, r0
	cmp r5, r0
	bls _0205EFF6
_0205EFF0:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205EFF6:
	add r0, sp, #0x14
	add r1, r4, #0
	bl sub_0205EC18
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0205EC34
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x14]
	add r0, r5, r0
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x14]
	sub r0, r1, r0
	cmp r0, #0x10
	bhs _0205F01A
	str r1, [sp, #0x14]
_0205F01A:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r6, #4]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	cmp r0, #0x10
	blo _0205F03E
	ldr r1, _0205F084 ; =0x00004652
	add r0, sp, #0x14
	bl sub_0205EC70
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, r7, #0
	bl sub_0205EC50
_0205F03E:
	ldr r0, [sp, #0x14]
	sub r2, r0, r4
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	tst r0, r1
	beq _0205F07E
	mov r0, #0
	add r1, r4, #0
	blx sub_02078658
	b _0205F07E
_0205F05E:
	add r0, r1, #0
	add r0, r5, r0
	str r0, [sp, #0xc]
	add r0, r6, #0
	ldr r1, [r6, #4]
	add r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	str r5, [r6, #4]
	bl sub_0205EECC
	cmp r0, #0
	bne _0205F07E
	str r7, [r6, #4]
_0205F07E:
	ldr r0, [r6, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0205F084: .word 0x00004652
	thumb_func_end sub_0205EFA0

	thumb_func_start sub_0205F088
sub_0205F088: ; 0x0205F088
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	sub r5, #0x10
	add r4, #0x24
	add r0, sp, #0
	add r1, r5, #0
	bl sub_0205EC18
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl sub_0205EC34
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205EECC
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0205F088

	thumb_func_start sub_0205F0B4
sub_0205F0B4: ; 0x0205F0B4
	ldr r2, [r0, #0x24]
	mov r1, #0
	cmp r2, #0
	beq _0205F0C6
_0205F0BC:
	ldr r0, [r2, #4]
	ldr r2, [r2, #0xc]
	add r1, r1, r0
	cmp r2, #0
	bne _0205F0BC
_0205F0C6:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F0B4

	thumb_func_start sub_0205F0CC
sub_0205F0CC: ; 0x0205F0CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	blx sub_02082BA8
	mov r2, #0
	ldr r4, [r4, #0x24]
	sub r3, r2, #1
	cmp r4, #0
	beq _0205F10E
	sub r5, r0, #1
	mvn r6, r5
_0205F0E4:
	add r1, r4, #0
	add r1, #0x10
	ldr r7, [r4, #4]
	add r0, r5, r1
	and r0, r6
	add r7, r7, r1
	cmp r0, r7
	bhs _0205F108
	sub r7, r7, r0
	sub r0, r0, r1
	cmp r2, r7
	blo _0205F104
	cmp r2, r7
	bne _0205F108
	cmp r3, r0
	bls _0205F108
_0205F104:
	add r2, r7, #0
	add r3, r0, #0
_0205F108:
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _0205F0E4
_0205F10E:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0205F0CC

	thumb_func_start sub_0205F114
sub_0205F114: ; 0x0205F114
	push {r4, r5}
	add r0, #0x24
	ldrh r5, [r0, #0x12]
	mov r3, #1
	and r1, r3
	add r2, r5, #0
	and r2, r3
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	mov r2, #1
	bic r5, r2
	strh r5, [r0, #0x12]
	ldrh r2, [r0, #0x12]
	orr r1, r2
	strh r1, [r0, #0x12]
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0205F114

	thumb_func_start sub_0205F138
sub_0205F138: ; 0x0205F138
	add r0, #0x24
	ldrh r2, [r0, #0x10]
	strh r1, [r0, #0x10]
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F138

	thumb_func_start sub_0205F144
sub_0205F144: ; 0x0205F144
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	beq _0205F162
_0205F152:
	ldr r4, [r0, #0xc]
	add r0, #0x10
	add r1, r5, #0
	add r2, r7, #0
	blx r6
	add r0, r4, #0
	cmp r4, #0
	bne _0205F152
_0205F162:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F144

	thumb_func_start sub_0205F164
sub_0205F164: ; 0x0205F164
	sub r0, #0xc
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F164

	thumb_func_start sub_0205F16C
sub_0205F16C: ; 0x0205F16C
	sub r0, #0xe
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F16C

	thumb_func_start sub_0205F17C
sub_0205F17C: ; 0x0205F17C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x24
	add r3, r1, #0
	str r2, [sp]
	add r2, r4, #0
	ldr r1, _0205F1A4 ; =0x46524D48
	add r2, #0xc
	bl sub_0205EBAC
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0205F1A4: .word 0x46524D48
	thumb_func_end sub_0205F17C

	thumb_func_start sub_0205F1A8
sub_0205F1A8: ; 0x0205F1A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	sub r0, r2, #1
	mvn r2, r0
	ldr r3, [r5]
	add r6, r2, #0
	add r0, r0, r3
	and r6, r0
	ldr r0, [r5, #4]
	add r4, r1, r6
	cmp r4, r0
	bls _0205F1C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205F1C4:
	sub r0, r5, #4
	ldr r0, [r0]
	sub r2, r4, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	tst r0, r1
	beq _0205F1E0
	mov r0, #0
	add r1, r3, #0
	blx sub_02078658
_0205F1E0:
	str r4, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0205F1A8

	thumb_func_start sub_0205F1E8
sub_0205F1E8: ; 0x0205F1E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	sub r2, r2, #1
	mvn r2, r2
	sub r1, r0, r1
	add r4, r2, #0
	and r4, r1
	ldr r1, [r5]
	cmp r4, r1
	bhs _0205F202
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205F202:
	sub r2, r0, r4
	sub r0, r5, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	tst r0, r1
	beq _0205F21E
	mov r0, #0
	add r1, r4, #0
	blx sub_02078658
_0205F21E:
	str r4, [r5, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205F1E8

	thumb_func_start sub_0205F224
sub_0205F224: ; 0x0205F224
	ldr r1, [r0, #0x18]
	add r2, r0, #0
	str r1, [r0, #0x24]
	add r2, #0x24
	mov r0, #0
	str r0, [r2, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F224

	thumb_func_start sub_0205F234
sub_0205F234: ; 0x0205F234
	add r3, r0, #0
	add r3, #0x24
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _0205F248
_0205F23E:
	ldr r1, [r0, #0x1c]
	str r1, [r2, #8]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _0205F23E
_0205F248:
	ldr r0, [r0, #0x1c]
	str r0, [r3, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F234

	thumb_func_start sub_0205F250
sub_0205F250: ; 0x0205F250
	push {r3, lr}
	add r1, r1, r0
	mov r3, #3
	add r0, r0, #3
	bic r1, r3
	bic r0, r3
	cmp r0, r1
	bhi _0205F266
	sub r3, r1, r0
	cmp r3, #0x30
	bhs _0205F26A
_0205F266:
	mov r0, #0
	pop {r3, pc}
_0205F26A:
	bl sub_0205F17C
	pop {r3, pc}
	thumb_func_end sub_0205F250

	thumb_func_start sub_0205F270
sub_0205F270: ; 0x0205F270
	ldr r3, _0205F274 ; =sub_0205EC08
	bx r3
	.align 2, 0
_0205F274: .word sub_0205EC08
	thumb_func_end sub_0205F270

	thumb_func_start sub_0205F278
sub_0205F278: ; 0x0205F278
	push {r3, lr}
	add r0, #0x24
	cmp r1, #0
	bne _0205F282
	mov r1, #1
_0205F282:
	mov r3, #3
	add r1, r1, #3
	bic r1, r3
	cmp r2, #0
	blt _0205F292
	bl sub_0205F1A8
	pop {r3, pc}
_0205F292:
	neg r2, r2
	bl sub_0205F1E8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0205F278

	thumb_func_start sub_0205F29C
sub_0205F29C: ; 0x0205F29C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r4
	beq _0205F2AC
	bl sub_0205F224
_0205F2AC:
	mov r0, #2
	tst r0, r4
	beq _0205F2B8
	add r0, r5, #0
	bl sub_0205F234
_0205F2B8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0205F29C

	thumb_func_start sub_0205F2BC
sub_0205F2BC: ; 0x0205F2BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r5, #0x24
	add r6, r1, #0
	ldr r4, [r0, #0x24]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #4
	bl sub_0205F1A8
	cmp r0, #0
	bne _0205F2D8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205F2D8:
	str r6, [r0]
	str r4, [r0, #4]
	ldr r1, [r5, #4]
	str r1, [r0, #8]
	ldr r1, [r5, #8]
	str r1, [r0, #0xc]
	str r0, [r5, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0205F2BC

	thumb_func_start sub_0205F2EC
sub_0205F2EC: ; 0x0205F2EC
	add r0, #0x24
	ldr r3, [r0, #8]
	cmp r1, #0
	beq _0205F304
	cmp r3, #0
	beq _0205F304
_0205F2F8:
	ldr r2, [r3]
	cmp r2, r1
	beq _0205F304
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _0205F2F8
_0205F304:
	cmp r3, #0
	bne _0205F30C
	mov r0, #0
	bx lr
_0205F30C:
	ldr r1, [r3, #4]
	str r1, [r0]
	ldr r1, [r3, #8]
	str r1, [r0, #4]
	ldr r1, [r3, #0xc]
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	thumb_func_end sub_0205F2EC

	thumb_func_start sub_0205F31C
sub_0205F31C: ; 0x0205F31C
	ldr r2, [r0]
	cmp r2, #0
	beq _0205F326
	ldr r1, [r2]
	str r1, [r0]
_0205F326:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F31C

	thumb_func_start sub_0205F32C
sub_0205F32C: ; 0x0205F32C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	add r5, #0x24
	add r0, r5, #0
	bl sub_0205F31C
	add r4, r0, #0
	beq _0205F358
	ldr r0, [r6, #0x20]
	ldr r2, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	tst r0, r1
	beq _0205F358
	mov r0, #0
	add r1, r4, #0
	blx sub_02078658
_0205F358:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F32C

	thumb_func_start sub_0205F35C
sub_0205F35C: ; 0x0205F35C
	ldr r2, [r0, #0x24]
	str r2, [r1]
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205F35C

	thumb_func_start sub_0205F364
sub_0205F364: ; 0x0205F364
	ldr r3, _0205F370 ; =sub_0205EF80
	add r2, r0, #0
	ldr r0, [r2, #4]
	ldr r2, [r2, #8]
	bx r3
	nop
_0205F370: .word sub_0205EF80
	thumb_func_end sub_0205F364

	thumb_func_start sub_0205F374
sub_0205F374: ; 0x0205F374
	ldr r3, _0205F37C ; =sub_0205F088
	ldr r0, [r0, #4]
	bx r3
	nop
_0205F37C: .word sub_0205F088
	thumb_func_end sub_0205F374

	thumb_func_start sub_0205F380
sub_0205F380: ; 0x0205F380
	ldr r3, _0205F38C ; =sub_0205F278
	add r2, r0, #0
	ldr r0, [r2, #4]
	ldr r2, [r2, #8]
	bx r3
	nop
_0205F38C: .word sub_0205F278
	thumb_func_end sub_0205F380

	thumb_func_start sub_0205F390
sub_0205F390: ; 0x0205F390
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F390

	thumb_func_start sub_0205F394
sub_0205F394: ; 0x0205F394
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x28]
	cmp r1, r2
	bls _0205F3A2
	mov r0, #0
	pop {r3, pc}
_0205F3A2:
	bl sub_0205F32C
	pop {r3, pc}
	thumb_func_end sub_0205F394

	thumb_func_start sub_0205F3A8
sub_0205F3A8: ; 0x0205F3A8
	ldr r3, _0205F3B0 ; =sub_0205F35C
	ldr r0, [r0, #4]
	bx r3
	nop
_0205F3B0: .word sub_0205F35C
	thumb_func_end sub_0205F3A8

	thumb_func_start sub_0205F3B4
sub_0205F3B4: ; 0x0205F3B4
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	ldr r3, _0205F3C0 ; =sub_0207B4F4
	bx r3
	.align 2, 0
_0205F3C0: .word sub_0207B4F4
	thumb_func_end sub_0205F3B4

	thumb_func_start sub_0205F3C4
sub_0205F3C4: ; 0x0205F3C4
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	ldr r3, _0205F3D0 ; =sub_0207B598
	bx r3
	.align 2, 0
_0205F3D0: .word sub_0207B598
	thumb_func_end sub_0205F3C4

	thumb_func_start sub_0205F3D4
sub_0205F3D4: ; 0x0205F3D4
	push {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0205F3D4

	thumb_func_start sub_0205F3E0
sub_0205F3E0: ; 0x0205F3E0
	push {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #4]
	blx r2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0205F3E0

	thumb_func_start sub_0205F3EC
sub_0205F3EC: ; 0x0205F3EC
	ldr r3, _0205F3FC ; =0x020941C8
	str r3, [r0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	nop
_0205F3FC: .word 0x020941C8
	thumb_func_end sub_0205F3EC

	thumb_func_start sub_0205F400
sub_0205F400: ; 0x0205F400
	mov r0, #0
	bx lr
	thumb_func_end sub_0205F400

	thumb_func_start sub_0205F404
sub_0205F404: ; 0x0205F404
	mov r0, #0
	mvn r0, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F404

	thumb_func_start sub_0205F40C
sub_0205F40C: ; 0x0205F40C
	mov r0, #0
	bx lr
	thumb_func_end sub_0205F40C

	thumb_func_start sub_0205F410
sub_0205F410: ; 0x0205F410
	mov r0, #0
	mvn r0, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F410

	thumb_func_start sub_0205F418
sub_0205F418: ; 0x0205F418
	push {r3, r4, r5, r6}
	add r6, r0, #0
	mov r5, #0x18
	ldr r4, _0205F450 ; =0x0209B1D4
	mul r6, r5
	ldr r0, _0205F454 ; =0x0209B1B8
	add r6, r4, r6
	str r6, [r0, #8]
	add r6, r1, #0
	mul r6, r5
	add r1, r4, r6
	str r1, [r0, #0xc]
	add r1, r2, #0
	mul r1, r5
	add r1, r4, r1
	str r1, [r0, #0x10]
	add r1, r3, #0
	mul r1, r5
	add r1, r4, r1
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r5
	add r1, r4, r2
	str r1, [r0, #0x18]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0205F450: .word 0x0209B1D4
_0205F454: .word 0x0209B1B8
	thumb_func_end sub_0205F418

	thumb_func_start sub_0205F458
sub_0205F458: ; 0x0205F458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #2
	bhi _0205F474
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_0205F418
	b _0205F484
_0205F474:
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #3
	mov r2, #0
	mov r3, #2
	bl sub_0205F418
_0205F484:
	ldr r0, _0205F4A0 ; =0x02141A30
	strh r5, [r0]
	bl sub_0205F4B4
	cmp r4, #0
	beq _0205F49C
	ldr r1, _0205F4A4 ; =sub_0205F500
	ldr r0, _0205F4A8 ; =0x0209B1A8
	str r1, [r0]
	ldr r1, _0205F4AC ; =sub_0205F5E4
	ldr r0, _0205F4B0 ; =0x0209B1AC
	str r1, [r0]
_0205F49C:
	pop {r3, r4, r5, pc}
	nop
_0205F4A0: .word 0x02141A30
_0205F4A4: .word sub_0205F500
_0205F4A8: .word 0x0209B1A8
_0205F4AC: .word sub_0205F5E4
_0205F4B0: .word 0x0209B1AC
	thumb_func_end sub_0205F458

	thumb_func_start sub_0205F4B4
sub_0205F4B4: ; 0x0205F4B4
	push {r4, r5, r6, r7}
	ldr r0, _0205F4F8 ; =0x02141A30
	ldrh r6, [r0]
	cmp r6, #1
	bls _0205F4C0
	add r6, r6, #1
_0205F4C0:
	mov r4, #0
	mov r3, #1
	ldr r5, _0205F4FC ; =0x0209B1D4
	add r2, r4, #0
	add r1, r4, #0
	lsl r0, r3, #0x10
_0205F4CC:
	cmp r4, r6
	bge _0205F4D4
	str r3, [r5, #8]
	b _0205F4D6
_0205F4D4:
	str r2, [r5, #8]
_0205F4D6:
	ldr r7, [r5, #0xc]
	cmp r7, #0
	beq _0205F4E2
	str r1, [r5]
	str r0, [r5, #4]
	b _0205F4EC
_0205F4E2:
	mov r7, #0
	str r7, [r5]
	mov r7, #2
	lsl r7, r7, #0x10
	str r7, [r5, #4]
_0205F4EC:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #5
	blt _0205F4CC
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0205F4F8: .word 0x02141A30
_0205F4FC: .word 0x0209B1D4
	thumb_func_end sub_0205F4B4

	thumb_func_start sub_0205F500
sub_0205F500: ; 0x0205F500
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r1
	cmp r0, #0
	bne _0205F50C
	mov r2, #0x10
	b _0205F514
_0205F50C:
	add r0, #0xf
	mov r1, #0xf
	add r2, r0, #0
	bic r2, r1
_0205F514:
	ldr r0, _0205F5D0 ; =0x0007FFF0
	cmp r2, r0
	blo _0205F51E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F51E:
	mov r0, lr
	cmp r0, #0
	beq _0205F584
	ldr r5, _0205F5D4 ; =0x0209B1B8
	mov r6, #0
	lsr r7, r2, #1
_0205F52A:
	ldr r4, [r5]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205F578
	ldr r1, [r4, #4]
	ldr r0, [r4]
	sub r0, r1, r0
	cmp r0, r2
	blo _0205F578
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0205F548
	cmp r0, #3
	beq _0205F54C
	b _0205F550
_0205F548:
	ldr r3, _0205F5D8 ; =0x0209B1EC
	b _0205F552
_0205F54C:
	ldr r3, _0205F5DC ; =0x0209B204
	b _0205F552
_0205F550:
	mov r3, #0
_0205F552:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0205F578
	ldr r1, [r3, #4]
	ldr r0, [r3]
	sub r0, r1, r0
	cmp r0, r7
	blo _0205F578
	ldr r0, [r4]
	add r1, r0, r2
	str r1, [r4]
	ldr r1, [r3]
	add r1, r1, r7
	str r1, [r3]
	ldr r1, [r4, #0x14]
	add r0, r0, r1
	mov ip, r0
	mov r0, #1
	b _0205F5B4
_0205F578:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0205F52A
	mov r0, #0
	b _0205F5B4
_0205F584:
	ldr r3, _0205F5E0 ; =0x0209B1C0
	mov r1, #0
_0205F588:
	ldr r0, [r3]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _0205F5AA
	ldr r5, [r0, #4]
	ldr r4, [r0]
	sub r4, r5, r4
	cmp r4, r2
	blo _0205F5AA
	ldr r1, [r0, #4]
	sub r1, r1, r2
	str r1, [r0, #4]
	ldr r0, [r0, #0x14]
	add r0, r1, r0
	mov ip, r0
	mov r0, #1
	b _0205F5B4
_0205F5AA:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, #5
	blt _0205F588
	mov r0, #0
_0205F5B4:
	cmp r0, #0
	beq _0205F5CC
	lsr r1, r2, #4
	lsl r2, r1, #0x10
	mov r1, ip
	lsl r1, r1, #0xd
	mov r0, lr
	lsr r1, r1, #0x10
	lsl r0, r0, #0x1f
	orr r1, r2
	orr r0, r1
	pop {r3, r4, r5, r6, r7, pc}
_0205F5CC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205F5D0: .word 0x0007FFF0
_0205F5D4: .word 0x0209B1B8
_0205F5D8: .word 0x0209B1EC
_0205F5DC: .word 0x0209B204
_0205F5E0: .word 0x0209B1C0
	thumb_func_end sub_0205F500

	thumb_func_start sub_0205F5E4
sub_0205F5E4: ; 0x0205F5E4
	mov r0, #0
	bx lr
	thumb_func_end sub_0205F5E4

	thumb_func_start sub_0205F5E8
sub_0205F5E8: ; 0x0205F5E8
	push {r3, r4, r5, r6}
	mov r4, #0
	ldr r5, _0205F60C ; =0x0209B1D4
	add r6, r4, #0
_0205F5F0:
	ldr r1, [r5]
	lsl r2, r6, #2
	str r1, [r0, r2]
	ldr r1, [r5, #4]
	add r3, r0, r2
	add r4, r4, #1
	str r1, [r3, #4]
	add r5, #0x18
	add r6, r6, #2
	cmp r4, #5
	blt _0205F5F0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0205F60C: .word 0x0209B1D4
	thumb_func_end sub_0205F5E8

	thumb_func_start sub_0205F610
sub_0205F610: ; 0x0205F610
	push {r4, r5}
	mov r3, #0
	ldr r5, _0205F634 ; =0x0209B1D4
	add r4, r3, #0
_0205F618:
	lsl r1, r4, #2
	add r2, r0, r1
	ldr r1, [r0, r1]
	add r3, r3, #1
	str r1, [r5]
	ldr r1, [r2, #4]
	add r4, r4, #2
	str r1, [r5, #4]
	add r5, #0x18
	cmp r3, #5
	blt _0205F618
	pop {r4, r5}
	bx lr
	nop
_0205F634: .word 0x0209B1D4
	thumb_func_end sub_0205F610

	thumb_func_start sub_0205F638
sub_0205F638: ; 0x0205F638
	push {r3, r4, r5, r6}
	mov r3, #0
	cmp r0, #0
	bne _0205F644
	mov r4, #8
	b _0205F64A
_0205F644:
	mov r5, #7
	add r4, r0, #7
	bic r4, r5
_0205F64A:
	ldr r0, _0205F700 ; =0x0007FFF8
	cmp r4, r0
	blo _0205F656
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0205F656:
	cmp r2, #1
	bne _0205F6A8
	ldr r0, _0205F704 ; =0x02141A34
	cmp r1, #0
	ldr r2, [r0]
	beq _0205F66C
	mov r5, #7
	add r6, r2, #0
	and r6, r5
	mov r0, #8
	b _0205F674
_0205F66C:
	mov r5, #0xf
	add r6, r2, #0
	and r6, r5
	mov r0, #0x10
_0205F674:
	sub r0, r0, r6
	ldr r6, _0205F704 ; =0x02141A34
	and r5, r0
	ldr r6, [r6, #4]
	add r0, r4, r5
	sub r6, r6, r2
	cmp r6, r0
	blo _0205F6A4
	add r6, r2, r0
	cmp r1, #0
	beq _0205F696
	mov r1, #1
	lsl r1, r1, #0x10
	cmp r6, r1
	bls _0205F696
	mov r0, #0
	b _0205F6E8
_0205F696:
	ldr r1, _0205F704 ; =0x02141A34
	add r3, r2, r5
	ldr r2, [r1]
	add r0, r2, r0
	str r0, [r1]
	mov r0, #1
	b _0205F6E8
_0205F6A4:
	mov r0, #0
	b _0205F6E8
_0205F6A8:
	ldr r0, _0205F704 ; =0x02141A34
	ldr r2, [r0, #4]
	cmp r2, r4
	blo _0205F6E6
	sub r5, r2, r4
	cmp r1, #0
	beq _0205F6BA
	mov r0, #7
	b _0205F6BC
_0205F6BA:
	mov r0, #0xf
_0205F6BC:
	and r0, r5
	ldr r5, _0205F704 ; =0x02141A34
	add r0, r4, r0
	ldr r5, [r5]
	sub r5, r2, r5
	cmp r5, r0
	blo _0205F6E6
	cmp r1, #0
	beq _0205F6DA
	mov r1, #1
	lsl r1, r1, #0x10
	cmp r2, r1
	bls _0205F6DA
	mov r0, #0
	b _0205F6E8
_0205F6DA:
	ldr r1, _0205F704 ; =0x02141A34
	ldr r2, [r1, #4]
	sub r3, r2, r0
	str r3, [r1, #4]
	mov r0, #1
	b _0205F6E8
_0205F6E6:
	mov r0, #0
_0205F6E8:
	cmp r0, #0
	beq _0205F6FA
	lsr r0, r4, #3
	lsl r1, r0, #0x10
	lsl r0, r3, #0xd
	lsr r0, r0, #0x10
	orr r0, r1
	pop {r3, r4, r5, r6}
	bx lr
_0205F6FA:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_0205F700: .word 0x0007FFF8
_0205F704: .word 0x02141A34
	thumb_func_end sub_0205F638

	thumb_func_start sub_0205F708
sub_0205F708: ; 0x0205F708
	ldr r1, _0205F714 ; =0x02141A34
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0205F714: .word 0x02141A34
	thumb_func_end sub_0205F708

	thumb_func_start sub_0205F718
sub_0205F718: ; 0x0205F718
	ldr r2, [r0]
	ldr r1, _0205F724 ; =0x02141A34
	str r2, [r1]
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0205F724: .word 0x02141A34
	thumb_func_end sub_0205F718

	thumb_func_start sub_0205F728
sub_0205F728: ; 0x0205F728
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #1
	ldr r1, [r2, #4]
	blx sub_0208D868
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0205F728

	thumb_func_start sub_0205F73C
sub_0205F73C: ; 0x0205F73C
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0205F748
	mov r0, #1
	bx lr
_0205F748:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205F73C

	thumb_func_start sub_0205F74C
sub_0205F74C: ; 0x0205F74C
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0205F756
	mov r0, #1
	bx lr
_0205F756:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F74C

	thumb_func_start sub_0205F75C
sub_0205F75C: ; 0x0205F75C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02076138
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02076170
	bl sub_02076278
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F75C

	thumb_func_start sub_0205F778
sub_0205F778: ; 0x0205F778
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020762B4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020762D4
	bl sub_02076334
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F778

	thumb_func_start sub_0205F794
sub_0205F794: ; 0x0205F794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0207636C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020763CC
	bl sub_02076484
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205F794

	thumb_func_start sub_0205F7AC
sub_0205F7AC: ; 0x0205F7AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0207636C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02076424
	bl sub_02076484
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205F7AC

	thumb_func_start sub_0205F7C4
sub_0205F7C4: ; 0x0205F7C4
	ldr r3, _0205F7C8 ; =sub_02075B54
	bx r3
	.align 2, 0
_0205F7C8: .word sub_02075B54
	thumb_func_end sub_0205F7C4

	thumb_func_start sub_0205F7CC
sub_0205F7CC: ; 0x0205F7CC
	ldr r3, _0205F7D0 ; =sub_02075C04
	bx r3
	.align 2, 0
_0205F7D0: .word sub_02075C04
	thumb_func_end sub_0205F7CC

	thumb_func_start sub_0205F7D4
sub_0205F7D4: ; 0x0205F7D4
	ldr r3, _0205F7D8 ; =sub_02075CB4
	bx r3
	.align 2, 0
_0205F7D8: .word sub_02075CB4
	thumb_func_end sub_0205F7D4

	thumb_func_start sub_0205F7DC
sub_0205F7DC: ; 0x0205F7DC
	ldr r3, _0205F7E0 ; =sub_02075D64
	bx r3
	.align 2, 0
_0205F7E0: .word sub_02075D64
	thumb_func_end sub_0205F7DC

	thumb_func_start sub_0205F7E4
sub_0205F7E4: ; 0x0205F7E4
	ldr r3, _0205F7E8 ; =sub_020757B4
	bx r3
	.align 2, 0
_0205F7E8: .word sub_020757B4
	thumb_func_end sub_0205F7E4

	thumb_func_start sub_0205F7EC
sub_0205F7EC: ; 0x0205F7EC
	ldr r3, _0205F7F0 ; =sub_0207589C
	bx r3
	.align 2, 0
_0205F7F0: .word sub_0207589C
	thumb_func_end sub_0205F7EC

	thumb_func_start sub_0205F7F4
sub_0205F7F4: ; 0x0205F7F4
	ldr r3, _0205F7F8 ; =sub_02075984
	bx r3
	.align 2, 0
_0205F7F8: .word sub_02075984
	thumb_func_end sub_0205F7F4

	thumb_func_start sub_0205F7FC
sub_0205F7FC: ; 0x0205F7FC
	ldr r3, _0205F800 ; =sub_02075A6C
	bx r3
	.align 2, 0
_0205F800: .word sub_02075A6C
	thumb_func_end sub_0205F7FC

	thumb_func_start sub_0205F804
sub_0205F804: ; 0x0205F804
	ldr r3, _0205F808 ; =sub_02075984
	bx r3
	.align 2, 0
_0205F808: .word sub_02075984
	thumb_func_end sub_0205F804

	thumb_func_start sub_0205F80C
sub_0205F80C: ; 0x0205F80C
	ldr r3, _0205F810 ; =sub_02075A6C
	bx r3
	.align 2, 0
_0205F810: .word sub_02075A6C
	thumb_func_end sub_0205F80C

	thumb_func_start sub_0205F814
sub_0205F814: ; 0x0205F814
	ldr r3, _0205F818 ; =sub_020755A0
	bx r3
	.align 2, 0
_0205F818: .word sub_020755A0
	thumb_func_end sub_0205F814

	thumb_func_start sub_0205F81C
sub_0205F81C: ; 0x0205F81C
	ldr r3, _0205F820 ; =sub_020754B8
	bx r3
	.align 2, 0
_0205F820: .word sub_020754B8
	thumb_func_end sub_0205F81C

	thumb_func_start sub_0205F824
sub_0205F824: ; 0x0205F824
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02075F30
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02075F60
	bl sub_02075FC0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F824

	thumb_func_start sub_0205F840
sub_0205F840: ; 0x0205F840
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02075E14
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02075E74
	bl sub_02075EE8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F840

	thumb_func_start sub_0205F85C
sub_0205F85C: ; 0x0205F85C
	ldr r3, _0205F860 ; =sub_02075678
	bx r3
	.align 2, 0
_0205F860: .word sub_02075678
	thumb_func_end sub_0205F85C

	thumb_func_start sub_0205F864
sub_0205F864: ; 0x0205F864
	ldr r3, _0205F868 ; =sub_0207571C
	bx r3
	.align 2, 0
_0205F868: .word sub_0207571C
	thumb_func_end sub_0205F864

	thumb_func_start sub_0205F86C
sub_0205F86C: ; 0x0205F86C
	ldr r3, _0205F870 ; =sub_02075BAC
	bx r3
	.align 2, 0
_0205F870: .word sub_02075BAC
	thumb_func_end sub_0205F86C

	thumb_func_start sub_0205F874
sub_0205F874: ; 0x0205F874
	ldr r3, _0205F878 ; =sub_02075C5C
	bx r3
	.align 2, 0
_0205F878: .word sub_02075C5C
	thumb_func_end sub_0205F874

	thumb_func_start sub_0205F87C
sub_0205F87C: ; 0x0205F87C
	ldr r3, _0205F880 ; =sub_02075D0C
	bx r3
	.align 2, 0
_0205F880: .word sub_02075D0C
	thumb_func_end sub_0205F87C

	thumb_func_start sub_0205F884
sub_0205F884: ; 0x0205F884
	ldr r3, _0205F888 ; =sub_02075DBC
	bx r3
	.align 2, 0
_0205F888: .word sub_02075DBC
	thumb_func_end sub_0205F884

	thumb_func_start sub_0205F88C
sub_0205F88C: ; 0x0205F88C
	ldr r3, _0205F890 ; =sub_02075828
	bx r3
	.align 2, 0
_0205F890: .word sub_02075828
	thumb_func_end sub_0205F88C

	thumb_func_start sub_0205F894
sub_0205F894: ; 0x0205F894
	ldr r3, _0205F898 ; =sub_02075910
	bx r3
	.align 2, 0
_0205F898: .word sub_02075910
	thumb_func_end sub_0205F894

	thumb_func_start sub_0205F89C
sub_0205F89C: ; 0x0205F89C
	ldr r3, _0205F8A0 ; =sub_020759F8
	bx r3
	.align 2, 0
_0205F8A0: .word sub_020759F8
	thumb_func_end sub_0205F89C

	thumb_func_start sub_0205F8A4
sub_0205F8A4: ; 0x0205F8A4
	ldr r3, _0205F8A8 ; =sub_02075AE0
	bx r3
	.align 2, 0
_0205F8A8: .word sub_02075AE0
	thumb_func_end sub_0205F8A4

	thumb_func_start sub_0205F8AC
sub_0205F8AC: ; 0x0205F8AC
	ldr r3, _0205F8B0 ; =sub_020759F8
	bx r3
	.align 2, 0
_0205F8B0: .word sub_020759F8
	thumb_func_end sub_0205F8AC

	thumb_func_start sub_0205F8B4
sub_0205F8B4: ; 0x0205F8B4
	ldr r3, _0205F8B8 ; =sub_02075AE0
	bx r3
	.align 2, 0
_0205F8B8: .word sub_02075AE0
	thumb_func_end sub_0205F8B4

	thumb_func_start sub_0205F8BC
sub_0205F8BC: ; 0x0205F8BC
	ldr r3, _0205F8C0 ; =sub_0207560C
	bx r3
	.align 2, 0
_0205F8C0: .word sub_0207560C
	thumb_func_end sub_0205F8BC

	thumb_func_start sub_0205F8C4
sub_0205F8C4: ; 0x0205F8C4
	ldr r3, _0205F8C8 ; =sub_02075534
	bx r3
	.align 2, 0
_0205F8C8: .word sub_02075534
	thumb_func_end sub_0205F8C4

	thumb_func_start sub_0205F8CC
sub_0205F8CC: ; 0x0205F8CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02076098
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020760A8
	bl sub_02076104
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F8CC

	thumb_func_start sub_0205F8E8
sub_0205F8E8: ; 0x0205F8E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02075FF8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02076008
	bl sub_02076064
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205F8E8

	thumb_func_start sub_0205F904
sub_0205F904: ; 0x0205F904
	ldr r3, _0205F908 ; =sub_020756CC
	bx r3
	.align 2, 0
_0205F908: .word sub_020756CC
	thumb_func_end sub_0205F904

	thumb_func_start sub_0205F90C
sub_0205F90C: ; 0x0205F90C
	ldr r3, _0205F910 ; =sub_02075768
	bx r3
	.align 2, 0
_0205F910: .word sub_02075768
	thumb_func_end sub_0205F90C

	thumb_func_start sub_0205F914
sub_0205F914: ; 0x0205F914
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	lsl r1, r0, #2
	ldr r0, _0205F934 ; =0x020941D8
	ldr r5, [r0, r1]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	blx sub_0207B0AC
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	blx r5
	pop {r3, r4, r5, pc}
	nop
_0205F934: .word 0x020941D8
	thumb_func_end sub_0205F914

	thumb_func_start sub_0205F938
sub_0205F938: ; 0x0205F938
	mov r2, #0
	strh r2, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r2, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F938

	thumb_func_start sub_0205F948
sub_0205F948: ; 0x0205F948
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F73C
	cmp r0, #0
	bne _0205F968
	ldrh r1, [r4, #0xa]
	add r0, r4, #0
	bl sub_0205F728
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_0205F968:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205F948

	thumb_func_start sub_0205F96C
sub_0205F96C: ; 0x0205F96C
	ldr r1, [r0]
	ldrh r0, [r0, #8]
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F96C

	thumb_func_start sub_0205F978
sub_0205F978: ; 0x0205F978
	ldr r1, [r0]
	ldrh r0, [r0, #0xa]
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0205F978

	thumb_func_start sub_0205F984
sub_0205F984: ; 0x0205F984
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F74C
	cmp r0, #0
	bne _0205F9A4
	ldrh r1, [r4, #8]
	add r0, r4, #0
	bl sub_0205F728
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_0205F9A4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205F984

	thumb_func_start sub_0205F9A8
sub_0205F9A8: ; 0x0205F9A8
	ldr r2, _0205F9B4 ; =0x02141A40
	ldr r3, _0205F9B8 ; =sub_0205F938
	str r0, [r2]
	str r1, [r2, #4]
	ldr r0, _0205F9BC ; =0x02141A40
	bx r3
	.align 2, 0
_0205F9B4: .word 0x02141A40
_0205F9B8: .word sub_0205F938
_0205F9BC: .word 0x02141A40
	thumb_func_end sub_0205F9A8

	thumb_func_start sub_0205F9C0
sub_0205F9C0: ; 0x0205F9C0
	ldr r3, _0205F9C8 ; =sub_0205F938
	ldr r0, _0205F9CC ; =0x02141A40
	bx r3
	nop
_0205F9C8: .word sub_0205F938
_0205F9CC: .word 0x02141A40
	thumb_func_end sub_0205F9C0

	thumb_func_start sub_0205F9D0
sub_0205F9D0: ; 0x0205F9D0
	push {r4, r5, r6, lr}
	ldr r6, _0205FA0C ; =0x02141A40
	add r0, r6, #0
	bl sub_0205F96C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205F984
	cmp r0, #0
	beq _0205FA0A
	add r4, r6, #0
	add r4, #0x10
_0205F9EA:
	add r0, r5, #0
	bl sub_0205F914
	ldr r1, [r4]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0205F96C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205F984
	cmp r0, #0
	bne _0205F9EA
_0205FA0A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0205FA0C: .word 0x02141A40
	thumb_func_end sub_0205F9D0

	thumb_func_start sub_0205FA10
sub_0205FA10: ; 0x0205FA10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0205FA50 ; =0x02141A40
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_0205F73C
	cmp r0, #0
	bne _0205FA4C
	ldr r0, _0205FA50 ; =0x02141A40
	bl sub_0205F978
	add r4, r0, #0
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _0205FA50 ; =0x02141A40
	bl sub_0205F948
	ldr r0, _0205FA50 ; =0x02141A40
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r1, r0
	ldr r0, _0205FA50 ; =0x02141A40
	str r1, [r0, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205FA4C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205FA50: .word 0x02141A40
	thumb_func_end sub_0205FA10

	thumb_func_start sub_0205FA54
sub_0205FA54: ; 0x0205FA54
	push {r4, r5, r6, r7}
	add r4, r2, #0
	ldr r2, [r0]
	add r5, r1, #0
	mov r3, #0
	cmp r2, #0
	beq _0205FADE
_0205FA62:
	ldr r1, [r2, #0xc]
	ldr r6, [r4, #4]
	mov ip, r1
	ldr r1, [r2]
	cmp r1, r6
	bne _0205FA9E
	ldr r6, [r2, #4]
	add r1, r1, r6
	str r1, [r4, #4]
	ldr r6, [r2, #8]
	ldr r1, [r2, #0xc]
	cmp r6, #0
	beq _0205FA80
	str r1, [r6, #0xc]
	b _0205FA82
_0205FA80:
	str r1, [r0]
_0205FA82:
	cmp r1, #0
	beq _0205FA88
	str r6, [r1, #8]
_0205FA88:
	ldr r1, [r5]
	cmp r1, #0
	beq _0205FA90
	str r2, [r1, #8]
_0205FA90:
	ldr r1, [r5]
	str r1, [r2, #0xc]
	mov r1, #0
	str r1, [r2, #8]
	mov r1, #1
	str r2, [r5]
	orr r3, r1
_0205FA9E:
	ldr r1, [r2]
	ldr r6, [r2, #4]
	ldr r7, [r4]
	add r6, r1, r6
	cmp r7, r6
	bne _0205FAD6
	str r1, [r4]
	ldr r6, [r2, #8]
	ldr r1, [r2, #0xc]
	cmp r6, #0
	beq _0205FAB8
	str r1, [r6, #0xc]
	b _0205FABA
_0205FAB8:
	str r1, [r0]
_0205FABA:
	cmp r1, #0
	beq _0205FAC0
	str r6, [r1, #8]
_0205FAC0:
	ldr r1, [r5]
	cmp r1, #0
	beq _0205FAC8
	str r2, [r1, #8]
_0205FAC8:
	ldr r1, [r5]
	str r1, [r2, #0xc]
	mov r1, #0
	str r1, [r2, #8]
	mov r1, #1
	str r2, [r5]
	orr r3, r1
_0205FAD6:
	mov r1, ip
	mov r2, ip
	cmp r1, #0
	bne _0205FA62
_0205FADE:
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0205FA54

	thumb_func_start sub_0205FAE4
sub_0205FAE4: ; 0x0205FAE4
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205FAE4

	thumb_func_start sub_0205FAEC
sub_0205FAEC: ; 0x0205FAEC
	push {r4, r5}
	mov r4, #0
	sub r3, r1, #1
	beq _0205FB06
	add r5, r0, #0
_0205FAF6:
	add r4, r4, #1
	lsl r2, r4, #4
	add r2, r0, r2
	str r2, [r5, #0xc]
	str r5, [r5, #0x18]
	add r5, #0x10
	cmp r4, r3
	blo _0205FAF6
_0205FB06:
	lsl r1, r1, #4
	mov r2, #0
	add r1, r0, r1
	str r2, [r0, #8]
	sub r1, r1, #4
	str r2, [r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_0205FAEC

	thumb_func_start sub_0205FB18
sub_0205FB18: ; 0x0205FB18
	push {r4, r5}
	ldr r4, [r1]
	cmp r4, #0
	beq _0205FB24
	ldr r5, [r4, #0xc]
	str r5, [r1]
_0205FB24:
	cmp r4, #0
	beq _0205FB4A
	str r2, [r4]
	str r3, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, [r0]
	cmp r1, #0
	beq _0205FB3A
	str r4, [r1, #8]
_0205FB3A:
	ldr r1, [r0]
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #8]
	str r4, [r0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_0205FB4A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0205FB18

	thumb_func_start sub_0205FB50
sub_0205FB50: ; 0x0205FB50
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl sub_0205FB60
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0205FB50

	thumb_func_start sub_0205FB60
sub_0205FB60: ; 0x0205FB60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r1, r3, #0
	mov r5, #0
	ldr r7, [sp, #0x20]
	cmp r0, #0
	beq _0205FBAA
	sub r2, r7, #1
	mov ip, r2
	mvn r2, r2
	mov lr, r2
_0205FB7E:
	cmp r7, #1
	bls _0205FB94
	ldr r4, [r0]
	mov r2, ip
	add r3, r4, r2
	mov r2, lr
	add r6, r2, #0
	and r6, r3
	sub r4, r6, r4
	add r3, r1, r4
	b _0205FB9A
_0205FB94:
	ldr r6, [r0]
	mov r4, #0
	add r3, r1, #0
_0205FB9A:
	ldr r2, [r0, #4]
	cmp r2, r3
	blo _0205FBA4
	add r5, r0, #0
	b _0205FBAA
_0205FBA4:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0205FB7E
_0205FBAA:
	cmp r5, #0
	beq _0205FC32
	cmp r4, #0
	beq _0205FBE8
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0205FBC0
	ldr r2, [r0, #0xc]
	ldr r1, [sp, #4]
	str r2, [r1]
_0205FBC0:
	cmp r0, #0
	beq _0205FC32
	ldr r1, [r5]
	str r1, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp]
	ldr r1, [r1]
	cmp r1, #0
	beq _0205FBDA
	str r0, [r1, #8]
_0205FBDA:
	ldr r1, [sp]
	ldr r1, [r1]
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [sp]
	str r0, [r1]
_0205FBE8:
	ldr r0, [r5, #4]
	sub r0, r0, r3
	str r0, [r5, #4]
	ldr r0, [r5]
	add r0, r0, r3
	str r0, [r5]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0205FC28
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	cmp r2, #0
	beq _0205FC06
	str r1, [r2, #0xc]
	b _0205FC0A
_0205FC06:
	ldr r0, [sp]
	str r1, [r0]
_0205FC0A:
	cmp r1, #0
	beq _0205FC10
	str r2, [r1, #8]
_0205FC10:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0205FC1A
	str r5, [r0, #8]
_0205FC1A:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	str r5, [r0]
_0205FC28:
	ldr r0, [sp, #8]
	add sp, #0xc
	str r6, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205FC32:
	ldr r1, [sp, #8]
	mov r0, #0
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FB60

	thumb_func_start sub_0205FC3C
sub_0205FC3C: ; 0x0205FC3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5]
	add r6, r1, #0
	cmp r4, #0
	beq _0205FC7C
	add r7, sp, #0
_0205FC4C:
	ldr r0, [r4]
	add r2, r7, #0
	str r0, [sp]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205FA54
	cmp r0, #0
	beq _0205FC76
	ldr r0, [sp]
	str r0, [r4]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r4, #4]
	ldr r4, [r5]
	b _0205FC78
_0205FC76:
	ldr r4, [r4, #0xc]
_0205FC78:
	cmp r4, #0
	bne _0205FC4C
_0205FC7C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FC3C

	thumb_func_start sub_0205FC80
sub_0205FC80: ; 0x0205FC80
	push {r3, r4, r5, lr}
	sub sp, #8
	str r2, [sp]
	add r2, r2, r3
	str r2, [sp, #4]
	add r4, r1, #0
	add r2, sp, #0
	add r5, r0, #0
	bl sub_0205FA54
	ldr r0, [r4]
	cmp r0, #0
	beq _0205FC9E
	ldr r1, [r0, #0xc]
	str r1, [r4]
_0205FC9E:
	cmp r0, #0
	bne _0205FCA8
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205FCA8:
	ldr r1, [sp]
	str r1, [r0]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	sub r1, r2, r1
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r5]
	cmp r1, #0
	beq _0205FCC2
	str r0, [r1, #8]
_0205FCC2:
	ldr r1, [r5]
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	str r0, [r5]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0205FC80

	thumb_func_start sub_0205FCD4
sub_0205FCD4: ; 0x0205FCD4
	lsl r0, r0, #4
	bx lr
	thumb_func_end sub_0205FCD4

	thumb_func_start sub_0205FCD8
sub_0205FCD8: ; 0x0205FCD8
	push {r4, lr}
	ldr r4, _0205FCFC ; =0x02141A54
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
	str r2, [r4, #0x14]
	str r3, [r4, #0x18]
	bl sub_0205FDC4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0205FCFA
	ldr r1, _0205FD00 ; =sub_0205FD10
	ldr r0, _0205FD04 ; =0x0209B1A8
	str r1, [r0]
	ldr r1, _0205FD08 ; =sub_0205FD74
	ldr r0, _0205FD0C ; =0x0209B1AC
	str r1, [r0]
_0205FCFA:
	pop {r4, pc}
	.align 2, 0
_0205FCFC: .word 0x02141A54
_0205FD00: .word sub_0205FD10
_0205FD04: .word 0x0209B1A8
_0205FD08: .word sub_0205FD74
_0205FD0C: .word 0x0209B1AC
	thumb_func_end sub_0205FCD8

	thumb_func_start sub_0205FD10
sub_0205FD10: ; 0x0205FD10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r0, #0
	bne _0205FD1C
	mov r4, #0x10
	b _0205FD24
_0205FD1C:
	add r0, #0xf
	mov r1, #0xf
	add r4, r0, #0
	bic r4, r1
_0205FD24:
	ldr r0, _0205FD64 ; =0x0007FFF0
	cmp r4, r0
	blo _0205FD2E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205FD2E:
	cmp r5, #0
	add r2, sp, #0
	beq _0205FD40
	ldr r0, _0205FD68 ; =0x02141A58
	ldr r1, _0205FD6C ; =0x02141A5C
	add r3, r4, #0
	bl sub_0205FB50
	b _0205FD4A
_0205FD40:
	ldr r0, _0205FD70 ; =0x02141A54
	ldr r1, _0205FD6C ; =0x02141A5C
	add r3, r4, #0
	bl sub_0205FB50
_0205FD4A:
	cmp r0, #0
	beq _0205FD60
	lsr r1, r4, #4
	lsl r2, r1, #0x10
	ldr r1, [sp]
	lsl r0, r5, #0x1f
	lsl r1, r1, #0xd
	lsr r1, r1, #0x10
	orr r1, r2
	orr r0, r1
	pop {r3, r4, r5, pc}
_0205FD60:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0205FD64: .word 0x0007FFF0
_0205FD68: .word 0x02141A58
_0205FD6C: .word 0x02141A5C
_0205FD70: .word 0x02141A54
	thumb_func_end sub_0205FD10

	thumb_func_start sub_0205FD74
sub_0205FD74: ; 0x0205FD74
	push {r3, lr}
	lsl r1, r0, #0x10
	lsr r2, r1, #0xd
	ldr r1, _0205FDB4 ; =0x7FFF0000
	add r3, r0, #0
	and r3, r1
	lsr r3, r3, #0x10
	lsl r1, r1, #0xf
	and r0, r1
	lsl r3, r3, #4
	lsr r0, r0, #0x1f
	cmp r3, #0
	beq _0205FDB0
	cmp r0, #0
	beq _0205FD9C
	ldr r0, _0205FDB8 ; =0x02141A58
	ldr r1, _0205FDBC ; =0x02141A5C
	bl sub_0205FC80
	b _0205FDA4
_0205FD9C:
	ldr r0, _0205FDC0 ; =0x02141A54
	ldr r1, _0205FDBC ; =0x02141A5C
	bl sub_0205FC80
_0205FDA4:
	cmp r0, #0
	beq _0205FDAC
	mov r0, #0
	pop {r3, pc}
_0205FDAC:
	mov r0, #1
	pop {r3, pc}
_0205FDB0:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
_0205FDB4: .word 0x7FFF0000
_0205FDB8: .word 0x02141A58
_0205FDBC: .word 0x02141A5C
_0205FDC0: .word 0x02141A54
	thumb_func_end sub_0205FD74

	thumb_func_start sub_0205FDC4
sub_0205FDC4: ; 0x0205FDC4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	ldr r4, _0205FEE4 ; =0x02094268
	add r3, sp, #0
	mov r2, #6
_0205FDCE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0205FDCE
	ldr r0, _0205FEE8 ; =0x02141A54
	add r5, sp, #0
	ldr r1, [r0, #0x10]
	ldr r2, [r0, #0xc]
	lsr r4, r1, #1
	add r0, r1, r4
	sub r0, r2, r0
	mov r2, #0
_0205FDE6:
	cmp r2, #0
	beq _0205FDEE
	cmp r2, #2
	bne _0205FE0C
_0205FDEE:
	ldr r3, [r5]
	cmp r3, #0
	beq _0205FE0C
	cmp r1, #0
	beq _0205FE0C
	cmp r3, r1
	bls _0205FDFE
	add r3, r1, #0
_0205FDFE:
	ldr r6, [r5, #8]
	sub r1, r1, r3
	add r6, r6, r3
	str r6, [r5, #8]
	ldr r6, [r5]
	sub r6, r6, r3
	str r6, [r5]
_0205FE0C:
	add r2, r2, #1
	add r5, #0xc
	cmp r2, #4
	blo _0205FDE6
	ldr r1, [sp, #0xc]
	mov r2, #0
	sub r1, r1, r4
	str r1, [sp, #0xc]
	add r1, sp, #0
_0205FE1E:
	ldr r3, [r1]
	cmp r3, #0
	beq _0205FE3C
	cmp r0, #0
	beq _0205FE3C
	cmp r3, r0
	bls _0205FE2E
	add r3, r0, #0
_0205FE2E:
	ldr r5, [r1, #4]
	sub r0, r0, r3
	add r5, r5, r3
	str r5, [r1, #4]
	ldr r5, [r1]
	sub r5, r5, r3
	str r5, [r1]
_0205FE3C:
	add r2, r2, #1
	add r1, #0xc
	cmp r2, #4
	blo _0205FE1E
	ldr r0, _0205FEEC ; =0x02141A54
	bl sub_0205FAE4
	ldr r0, _0205FEF0 ; =0x02141A58
	bl sub_0205FAE4
	ldr r1, _0205FEE8 ; =0x02141A54
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	lsr r1, r1, #4
	bl sub_0205FAEC
	ldr r1, _0205FEE8 ; =0x02141A54
	ldr r3, [sp, #8]
	str r0, [r1, #8]
	cmp r3, #0
	beq _0205FE70
	ldr r0, _0205FEF0 ; =0x02141A58
	ldr r1, _0205FEF4 ; =0x02141A5C
	mov r2, #0
	bl sub_0205FB18
_0205FE70:
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	cmp r3, #0
	beq _0205FE80
	ldr r0, _0205FEEC ; =0x02141A54
	ldr r1, _0205FEF4 ; =0x02141A5C
	bl sub_0205FB18
_0205FE80:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _0205FE92
	mov r2, #1
	ldr r0, _0205FEF0 ; =0x02141A58
	ldr r1, _0205FEF4 ; =0x02141A5C
	lsl r2, r2, #0x12
	bl sub_0205FB18
_0205FE92:
	ldr r3, [sp, #0x1c]
	mov r2, #1
	lsl r2, r2, #0x12
	ldr r5, [sp, #0x20]
	cmp r3, #0
	beq _0205FEA8
	ldr r0, _0205FEEC ; =0x02141A54
	ldr r1, _0205FEF4 ; =0x02141A5C
	add r2, r5, r2
	bl sub_0205FB18
_0205FEA8:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _0205FEBA
	mov r2, #6
	ldr r0, _0205FEEC ; =0x02141A54
	ldr r1, _0205FEF4 ; =0x02141A5C
	lsl r2, r2, #0x10
	bl sub_0205FB18
_0205FEBA:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0205FECE
	mov r2, #2
	lsl r2, r2, #0x10
	ldr r0, _0205FEEC ; =0x02141A54
	ldr r1, _0205FEF4 ; =0x02141A5C
	add r2, r4, r2
	bl sub_0205FB18
_0205FECE:
	ldr r0, _0205FEEC ; =0x02141A54
	ldr r1, _0205FEF4 ; =0x02141A5C
	bl sub_0205FC3C
	ldr r0, _0205FEF0 ; =0x02141A58
	ldr r1, _0205FEF4 ; =0x02141A5C
	bl sub_0205FC3C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_0205FEE4: .word 0x02094268
_0205FEE8: .word 0x02141A54
_0205FEEC: .word 0x02141A54
_0205FEF0: .word 0x02141A58
_0205FEF4: .word 0x02141A5C
	thumb_func_end sub_0205FDC4

	thumb_func_start sub_0205FEF8
sub_0205FEF8: ; 0x0205FEF8
	lsl r0, r0, #4
	bx lr
	thumb_func_end sub_0205FEF8

	thumb_func_start sub_0205FEFC
sub_0205FEFC: ; 0x0205FEFC
	push {r4, lr}
	add r4, r3, #0
	ldr r3, _0205FF20 ; =0x02141A70
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str r2, [r3, #0x10]
	bl sub_0205FFE8
	cmp r4, #0
	beq _0205FF1C
	ldr r1, _0205FF24 ; =sub_0205FF34
	ldr r0, _0205FF28 ; =0x0209B1B0
	str r1, [r0]
	ldr r1, _0205FF2C ; =sub_0205FFB8
	ldr r0, _0205FF30 ; =0x0209B1B4
	str r1, [r0]
_0205FF1C:
	pop {r4, pc}
	nop
_0205FF20: .word 0x02141A70
_0205FF24: .word sub_0205FF34
_0205FF28: .word 0x0209B1B0
_0205FF2C: .word sub_0205FFB8
_0205FF30: .word 0x0209B1B4
	thumb_func_end sub_0205FEFC

	thumb_func_start sub_0205FF34
sub_0205FF34: ; 0x0205FF34
	push {r4, lr}
	sub sp, #8
	cmp r0, #0
	bne _0205FF40
	mov r4, #8
	b _0205FF46
_0205FF40:
	mov r2, #7
	add r4, r0, #7
	bic r4, r2
_0205FF46:
	ldr r0, _0205FFAC ; =0x0007FFF8
	cmp r4, r0
	blo _0205FF52
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0205FF52:
	cmp r1, #0
	add r2, sp, #4
	beq _0205FF82
	mov r0, #8
	str r0, [sp]
	ldr r0, _0205FFB0 ; =0x02141A70
	ldr r1, _0205FFB4 ; =0x02141A74
	add r3, r4, #0
	bl sub_0205FB60
	ldr r2, [sp, #4]
	mov r1, #1
	add r3, r2, r4
	lsl r1, r1, #0x10
	cmp r3, r1
	bls _0205FF90
	ldr r0, _0205FFB0 ; =0x02141A70
	ldr r1, _0205FFB4 ; =0x02141A74
	add r3, r4, #0
	bl sub_0205FC80
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0205FF82:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0205FFB0 ; =0x02141A70
	ldr r1, _0205FFB4 ; =0x02141A74
	add r3, r4, #0
	bl sub_0205FB60
_0205FF90:
	cmp r0, #0
	beq _0205FFA4
	lsr r0, r4, #3
	lsl r1, r0, #0x10
	ldr r0, [sp, #4]
	add sp, #8
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	orr r0, r1
	pop {r4, pc}
_0205FFA4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0205FFAC: .word 0x0007FFF8
_0205FFB0: .word 0x02141A70
_0205FFB4: .word 0x02141A74
	thumb_func_end sub_0205FF34

	thumb_func_start sub_0205FFB8
sub_0205FFB8: ; 0x0205FFB8
	push {r4, lr}
	ldr r3, _0205FFDC ; =0xFFFF0000
	add r4, r0, #0
	and r3, r4
	lsl r2, r4, #0x10
	lsr r3, r3, #0x10
	ldr r0, _0205FFE0 ; =0x02141A70
	ldr r1, _0205FFE4 ; =0x02141A74
	lsr r2, r2, #0xd
	lsl r3, r3, #3
	bl sub_0205FC80
	cmp r0, #0
	bne _0205FFD8
	mov r0, #1
	pop {r4, pc}
_0205FFD8:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0205FFDC: .word 0xFFFF0000
_0205FFE0: .word 0x02141A70
_0205FFE4: .word 0x02141A74
	thumb_func_end sub_0205FFB8

	thumb_func_start sub_0205FFE8
sub_0205FFE8: ; 0x0205FFE8
	push {r3, lr}
	ldr r1, _02060018 ; =0x02141A70
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	lsr r1, r1, #4
	bl sub_0205FAEC
	ldr r1, _02060018 ; =0x02141A70
	str r0, [r1, #4]
	ldr r0, _0206001C ; =0x02141A70
	bl sub_0205FAE4
	ldr r3, _02060018 ; =0x02141A70
	ldr r0, _0206001C ; =0x02141A70
	ldr r1, _02060020 ; =0x02141A74
	ldr r3, [r3, #8]
	mov r2, #0
	bl sub_0205FB18
	ldr r0, _0206001C ; =0x02141A70
	ldr r1, _02060020 ; =0x02141A74
	bl sub_0205FC3C
	pop {r3, pc}
	.align 2, 0
_02060018: .word 0x02141A70
_0206001C: .word 0x02141A70
_02060020: .word 0x02141A74
	thumb_func_end sub_0205FFE8

	thumb_func_start sub_02060024
sub_02060024: ; 0x02060024
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02060048 ; =0x41424E4B
	bl sub_02060358
	add r4, r0, #0
	beq _02060040
	add r0, #8
	bl sub_0206005C
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060040:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_02060048: .word 0x41424E4B
	thumb_func_end sub_02060024

	thumb_func_start sub_0206004C
sub_0206004C: ; 0x0206004C
	ldr r3, _02060050 ; =sub_02060024
	bx r3
	.align 2, 0
_02060050: .word sub_02060024
	thumb_func_end sub_0206004C

	thumb_func_start sub_02060054
sub_02060054: ; 0x02060054
	ldr r3, _02060058 ; =sub_02060024
	bx r3
	.align 2, 0
_02060058: .word sub_02060024
	thumb_func_end sub_02060054

	thumb_func_start sub_0206005C
sub_0206005C: ; 0x0206005C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #4]
	mov r6, #0
	add r0, r0, r7
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	add r0, r0, r7
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r3, r0, r7
	str r3, [r7, #0xc]
	ldr r0, [r7, #4]
	mov ip, r0
	ldr r0, [r7, #8]
	mov lr, r0
	ldrh r0, [r7]
	cmp r0, #0
	bls _020600BC
_02060082:
	lsl r5, r6, #4
	mov r0, ip
	add r4, r0, r5
	ldr r1, [r4, #0xc]
	mov r0, lr
	add r0, r0, r1
	str r0, [r4, #0xc]
	mov r0, ip
	ldrh r0, [r0, r5]
	mov r2, #0
	cmp r0, #0
	bls _020600B0
_0206009A:
	ldr r0, [r4, #0xc]
	lsl r1, r2, #3
	ldr r5, [r0, r1]
	add r5, r3, r5
	str r5, [r0, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldrh r0, [r4]
	cmp r2, r0
	blo _0206009A
_020600B0:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blo _02060082
_020600BC:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02060110
	add r2, r0, r7
	add r6, r2, #0
	str r2, [r7, #0x14]
	add r6, #8
	ldr r0, [r6, #4]
	mov r1, #0
	add r0, r0, r6
	str r0, [r6, #4]
	ldrh r0, [r2, #8]
	cmp r0, #0
	bls _02060110
	add r4, r1, #0
_020600DA:
	ldr r0, [r6, #4]
	add r3, r0, r4
	ldr r2, [r3, #4]
	add r2, r2, r6
	str r2, [r3, #4]
	ldr r2, [r3, #8]
	add r2, r2, r6
	str r2, [r3, #8]
	ldrh r0, [r0, r4]
	mov r2, #0
	cmp r0, #0
	bls _02060106
	add r5, r2, #0
_020600F4:
	ldr r0, [r3, #8]
	add r2, r2, #1
	ldr r7, [r0, r5]
	add r7, r7, r6
	str r7, [r0, r5]
	ldrh r0, [r3]
	add r5, r5, #4
	cmp r2, r0
	blo _020600F4
_02060106:
	ldrh r0, [r6]
	add r1, r1, #1
	add r4, #0xc
	cmp r1, r0
	blo _020600DA
_02060110:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206005C

	thumb_func_start sub_02060114
sub_02060114: ; 0x02060114
	ldrh r2, [r0]
	cmp r2, r1
	bls _02060122
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
_02060122:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02060114

	thumb_func_start sub_02060128
sub_02060128: ; 0x02060128
	ldrh r2, [r0, #2]
	mov r1, #1
	tst r1, r2
	ldr r1, [r0, #4]
	beq _0206013A
	ldrh r0, [r0]
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
_0206013A:
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_02060128

	thumb_func_start sub_02060144
sub_02060144: ; 0x02060144
	ldr r3, _0206014C ; =sub_02060388
	add r0, #8
	bx r3
	nop
_0206014C: .word sub_02060388
	thumb_func_end sub_02060144

	thumb_func_start sub_02060150
sub_02060150: ; 0x02060150
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02060174 ; =0x4345424B
	bl sub_02060358
	add r4, r0, #0
	beq _0206016C
	add r0, #8
	bl sub_02060198
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206016C:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_02060174: .word 0x4345424B
	thumb_func_end sub_02060150

	thumb_func_start sub_02060178
sub_02060178: ; 0x02060178
	ldrh r2, [r0]
	cmp r1, r2
	blo _02060182
	mov r0, #0
	bx lr
_02060182:
	ldrh r3, [r0, #2]
	mov r2, #1
	tst r2, r3
	ldr r2, [r0, #4]
	beq _02060192
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
_02060192:
	lsl r0, r1, #3
	add r0, r2, r0
	bx lr
	thumb_func_end sub_02060178

	thumb_func_start sub_02060198
sub_02060198: ; 0x02060198
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #4]
	add r1, r1, r5
	str r1, [r5, #4]
	bl sub_02060128
	add r6, r0, #0
	ldrh r0, [r5]
	mov r4, #0
	cmp r0, #0
	bls _020601CA
_020601B0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060178
	ldr r1, [r0, #4]
	add r1, r1, r6
	str r1, [r0, #4]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _020601B0
_020601CA:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020601DC
	add r1, r0, r5
	str r1, [r5, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, r1
	str r0, [r1, #4]
	str r1, [r5, #0xc]
_020601DC:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020601EA
	add r0, r0, r5
	str r0, [r5, #0x14]
	bl sub_02060144
_020601EA:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02060198

	thumb_func_start sub_020601EC
sub_020601EC: ; 0x020601EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02060210 ; =0x4D43424B
	bl sub_02060358
	add r4, r0, #0
	beq _02060208
	add r0, #8
	bl sub_02060220
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060208:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_02060210: .word 0x4D43424B
	thumb_func_end sub_020601EC

	thumb_func_start sub_02060214
sub_02060214: ; 0x02060214
	ldr r3, _0206021C ; =sub_02060388
	add r0, #8
	bx r3
	nop
_0206021C: .word sub_02060388
	thumb_func_end sub_02060214

	thumb_func_start sub_02060220
sub_02060220: ; 0x02060220
	push {r3, r4, r5, lr}
	ldr r1, [r0, #4]
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldrh r3, [r0]
	mov r1, #0
	ldr r2, [r0, #4]
	cmp r3, #0
	bls _02060250
_02060238:
	lsl r3, r1, #3
	add r5, r2, r3
	ldr r4, [r0, #8]
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r3, r4, r3
	str r3, [r5, #4]
	lsl r1, r1, #0x10
	ldrh r3, [r0]
	lsr r1, r1, #0x10
	cmp r1, r3
	blo _02060238
_02060250:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _02060260
	add r1, r1, r0
	str r1, [r0, #0x10]
	add r0, r1, #0
	bl sub_02060214
_02060260:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02060220

	thumb_func_start sub_02060264
sub_02060264: ; 0x02060264
	ldrh r2, [r0]
	cmp r1, r2
	bhs _02060272
	ldr r2, [r0, #4]
	lsl r0, r1, #3
	add r0, r2, r0
	bx lr
_02060272:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02060264

	thumb_func_start sub_02060278
sub_02060278: ; 0x02060278
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0206029C ; =0x43484152
	bl sub_02060358
	add r4, r0, #0
	beq _02060294
	add r0, #8
	bl sub_020602A0
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060294:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_0206029C: .word 0x43484152
	thumb_func_end sub_02060278

	thumb_func_start sub_020602A0
sub_020602A0: ; 0x020602A0
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_020602A0

	thumb_func_start sub_020602A8
sub_020602A8: ; 0x020602A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _020602CC ; =0x43484152
	bl sub_02060358
	add r4, r0, #0
	beq _020602C4
	add r0, #8
	bl sub_020602D0
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_020602C4:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_020602CC: .word 0x43484152
	thumb_func_end sub_020602A8

	thumb_func_start sub_020602D0
sub_020602D0: ; 0x020602D0
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_020602D0

	thumb_func_start sub_020602D8
sub_020602D8: ; 0x020602D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _020602FC ; =0x504C5454
	bl sub_02060358
	add r4, r0, #0
	beq _020602F4
	add r0, #8
	bl sub_02060330
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_020602F4:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_020602FC: .word 0x504C5454
	thumb_func_end sub_020602D8

	thumb_func_start sub_02060300
sub_02060300: ; 0x02060300
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02060324 ; =0x50434D50
	bl sub_02060358
	add r4, r0, #0
	beq _0206031C
	add r0, #8
	bl sub_02060328
	add r4, #8
	str r4, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206031C:
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_02060324: .word 0x50434D50
	thumb_func_end sub_02060300

	thumb_func_start sub_02060328
sub_02060328: ; 0x02060328
	ldr r1, [r0, #4]
	add r1, r1, r0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02060328

	thumb_func_start sub_02060330
sub_02060330: ; 0x02060330
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02060330

	thumb_func_start sub_02060338
sub_02060338: ; 0x02060338
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02060354 ; =0x5343524E
	bl sub_02060358
	cmp r0, #0
	beq _0206034E
	add r0, #8
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0206034E:
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02060354: .word 0x5343524E
	thumb_func_end sub_02060338

	thumb_func_start sub_02060358
sub_02060358: ; 0x02060358
	push {r3, r4}
	ldrh r2, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	mov r3, #0
	add r2, r0, r2
	cmp r4, #0
	bls _02060380
_02060366:
	ldr r0, [r2]
	cmp r0, r1
	bne _02060372
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_02060372:
	ldr r0, [r2, #4]
	add r2, r2, r0
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, r4
	blo _02060366
_02060380:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02060358

	thumb_func_start sub_02060388
sub_02060388: ; 0x02060388
	push {r3, r4}
	ldr r1, [r0, #4]
	mov r4, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0
	bls _020603AE
_02060398:
	ldr r2, [r0, #4]
	lsl r3, r4, #2
	ldr r1, [r2, r3]
	add r1, r0, r1
	str r1, [r2, r3]
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	ldrh r1, [r0]
	cmp r4, r1
	blo _02060398
_020603AE:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02060388

	thumb_func_start sub_020603B4
sub_020603B4: ; 0x020603B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _020603C2
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
_020603C2:
	cmp r0, #3
	beq _020603CA
	cmp r0, #4
	bne _02060412
_020603CA:
	ldr r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4]
	ldr r1, [r0, #0xc]
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r1, r0
	sub r0, #8
	cmp r2, r0
	bhi _0206043E
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _020603F2
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_020603F2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _020603FC
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
_020603FC:
	cmp r0, #2
	beq _0206040A
	cmp r0, #4
	beq _0206040A
	mov r0, #0
	str r0, [r4, #0xc]
	b _0206043E
_0206040A:
	add r0, r4, #0
	bl sub_020605D0
	b _0206043E
_02060412:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _02060420
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_02060420:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0206042A
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
_0206042A:
	cmp r0, #2
	beq _02060438
	cmp r0, #4
	beq _02060438
	mov r0, #0
	str r0, [r4, #0xc]
	b _0206043E
_02060438:
	add r0, r4, #0
	bl sub_020605D0
_0206043E:
	ldr r1, [r4, #0x1c]
	ldr r2, [r4]
	ldrh r0, [r1]
	ldr r1, [r1, #0xc]
	lsl r0, r0, #3
	add r0, r1, r0
	sub r0, #8
	cmp r2, r0
	bls _02060454
	str r0, [r4]
	pop {r4, pc}
_02060454:
	cmp r2, r1
	bhs _0206045A
	str r1, [r4]
_0206045A:
	pop {r4, pc}
	thumb_func_end sub_020603B4

	thumb_func_start sub_0206045C
sub_0206045C: ; 0x0206045C
	ldr r3, [r0, #0x1c]
	ldrh r2, [r3]
	cmp r1, r2
	bhs _02060478
	ldr r2, [r3, #0xc]
	lsl r1, r1, #3
	add r2, r2, r1
	str r2, [r0]
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _02060474
	str r2, [r0, #4]
_02060474:
	mov r0, #1
	bx lr
_02060478:
	mov r0, #0
	bx lr
	thumb_func_end sub_0206045C

	thumb_func_start sub_0206047C
sub_0206047C: ; 0x0206047C
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0206047C

	thumb_func_start sub_02060484
sub_02060484: ; 0x02060484
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r7, #0
	cmp r0, #1
	beq _02060494
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02060494:
	ldr r0, [r5, #0x14]
	blx sub_0207465C
	blx sub_02082BA8
	ldr r1, [r5, #0x10]
	add r4, r5, #0
	add r0, r1, r0
	add r4, #0x10
	str r0, [r5, #0x10]
	mov r6, #1
	b _0206055A
_020604AC:
	ldr r1, [r5]
	ldr r0, [r4]
	ldrh r1, [r1, #4]
	add r7, r6, #0
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [r4]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _020604C4
	add r1, r6, #0
	b _020604C6
_020604C4:
	mov r1, #0
_020604C6:
	ldr r0, [r5, #8]
	eor r0, r1
	ldr r0, [r5]
	beq _020604D2
	add r0, #8
	b _020604D4
_020604D2:
	sub r0, #8
_020604D4:
	str r0, [r5]
	ldr r0, [r5, #0x14]
	ldr r1, [r5]
	cmp r0, #0
	ble _020604E2
	mov r2, #1
	b _020604E4
_020604E2:
	mov r2, #0
_020604E4:
	ldr r0, [r5, #8]
	eor r0, r2
	ldr r2, [r5, #0x1c]
	beq _02060500
	ldr r0, [r2, #0xc]
	ldrh r2, [r2]
	lsl r2, r2, #3
	add r0, r0, r2
	cmp r1, r0
	blo _020604FC
	mov r0, #1
	b _02060514
_020604FC:
	mov r0, #0
	b _02060514
_02060500:
	ldr r0, [r2, #0xc]
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	add r0, r0, r2
	sub r0, #8
	cmp r1, r0
	bhi _02060512
	mov r0, #1
	b _02060514
_02060512:
	mov r0, #0
_02060514:
	cmp r0, #0
	beq _0206051E
	add r0, r5, #0
	bl sub_020603B4
_0206051E:
	ldr r1, [r5]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02060528
	str r1, [r5, #4]
_02060528:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0206055A
	ldr r0, [r5, #0x1c]
	ldr r1, [r5]
	ldr r0, [r0, #0xc]
	sub r0, r1, r0
	lsl r0, r0, #0xd
	lsr r1, r0, #0x10
	ldr r0, [r5, #0x20]
	cmp r0, #2
	beq _02060546
	cmp r0, #3
	beq _02060554
	b _0206055A
_02060546:
	ldrh r0, [r5, #0x2c]
	cmp r1, r0
	bne _0206055A
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x28]
	blx r2
	b _0206055A
_02060554:
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x28]
	blx r2
_0206055A:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02060570
	ldr r1, [r5]
	ldr r0, [r5, #0x10]
	ldrh r1, [r1, #4]
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _02060570
	mov r0, #1
	b _02060572
_02060570:
	mov r0, #0
_02060572:
	cmp r0, #0
	bne _020604AC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02060484

	thumb_func_start sub_0206057C
sub_0206057C: ; 0x0206057C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206045C
	cmp r0, #0
	beq _0206058C
	mov r1, #0
	str r1, [r4, #0x10]
_0206058C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206057C

	thumb_func_start sub_02060590
sub_02060590: ; 0x02060590
	ldr r1, [r0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	sub r0, r1, r0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
	thumb_func_end sub_02060590

	thumb_func_start sub_020605A0
sub_020605A0: ; 0x020605A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl sub_020605C4
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020605A0

	thumb_func_start sub_020605C4
sub_020605C4: ; 0x020605C4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020605C4

	thumb_func_start sub_020605D0
sub_020605D0: ; 0x020605D0
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ble _020605DA
	mov r2, #1
	b _020605DC
_020605DA:
	mov r2, #0
_020605DC:
	ldr r1, [r0, #8]
	eor r1, r2
	ldr r1, [r0, #0x1c]
	beq _020605EE
	ldr r2, [r1, #0xc]
	ldrh r1, [r1, #2]
	lsl r1, r1, #3
	add r1, r2, r1
	b _020605F8
_020605EE:
	ldr r2, [r1, #0xc]
	ldrh r1, [r1]
	lsl r1, r1, #3
	add r1, r2, r1
	sub r1, #8
_020605F8:
	str r1, [r0]
	ldr r1, [r0]
	ldr r3, _02060608 ; =sub_02060484
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	bx r3
	nop
_02060608: .word sub_02060484
	thumb_func_end sub_020605D0

	thumb_func_start sub_0206060C
sub_0206060C: ; 0x0206060C
	ldr r3, _02060614 ; =sub_020605D0
	str r1, [r0, #0x1c]
	bx r3
	nop
_02060614: .word sub_020605D0
	thumb_func_end sub_0206060C

	thumb_func_start sub_02060618
sub_02060618: ; 0x02060618
	str r3, [r0, #0x28]
	str r2, [r0, #0x24]
	str r1, [r0, #0x20]
	mov r1, #0
	strh r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_02060618

	thumb_func_start sub_02060624
sub_02060624: ; 0x02060624
	push {r3, r4}
	mov r4, #2
	str r4, [r0, #0x20]
	str r2, [r0, #0x28]
	str r1, [r0, #0x24]
	strh r3, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02060624

	thumb_func_start sub_02060634
sub_02060634: ; 0x02060634
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0206063E
	ldr r0, [r0, #0x1c]
	ldr r1, [r0, #8]
_0206063E:
	cmp r1, #2
	beq _02060646
	cmp r1, #4
	bne _0206064A
_02060646:
	mov r0, #1
	bx lr
_0206064A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02060634

	thumb_func_start sub_02060650
sub_02060650: ; 0x02060650
	ldr r3, _02060658 ; =0x07000400
	add r1, r1, r3
	ldr r3, _0206065C ; =sub_0207863C
	bx r3
	.align 2, 0
_02060658: .word 0x07000400
_0206065C: .word sub_0207863C
	thumb_func_end sub_02060650

	thumb_func_start sub_02060660
sub_02060660: ; 0x02060660
	mov r3, #7
	lsl r3, r3, #0x18
	add r1, r1, r3
	ldr r3, _0206066C ; =sub_0207863C
	bx r3
	nop
_0206066C: .word sub_0207863C
	thumb_func_end sub_02060660

	thumb_func_start sub_02060670
sub_02060670: ; 0x02060670
	push {r3, lr}
	mov r2, #1
	ldr r1, _020606DC ; =0x02141B88
	mov r0, #0xc0
	lsl r2, r2, #0xa
	blx sub_02078624
	mov r2, #1
	ldr r1, _020606E0 ; =0x021420C8
	mov r0, #0xc0
	lsl r2, r2, #0xa
	blx sub_02078624
	mov r2, #1
	ldr r1, _020606E4 ; =0x02142608
	mov r0, #0xc0
	lsl r2, r2, #0xa
	blx sub_02078624
	mov r2, #1
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _020606EC ; =0x02141A88
	lsl r2, r2, #8
	blx sub_02078624
	mov r2, #1
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _020606F0 ; =0x02141FC8
	lsl r2, r2, #8
	blx sub_02078624
	mov r2, #1
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _020606F4 ; =0x02142508
	lsl r2, r2, #8
	blx sub_02078624
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _020606F8 ; =0x02141F88
	mov r2, #0x40
	blx sub_02078624
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _020606FC ; =0x021424C8
	mov r2, #0x40
	blx sub_02078624
	ldr r0, _020606E8 ; =0x0000FFFF
	ldr r1, _02060700 ; =0x02142A08
	mov r2, #0x40
	blx sub_02078624
	pop {r3, pc}
	nop
_020606DC: .word 0x02141B88
_020606E0: .word 0x021420C8
_020606E4: .word 0x02142608
_020606E8: .word 0x0000FFFF
_020606EC: .word 0x02141A88
_020606F0: .word 0x02141FC8
_020606F4: .word 0x02142508
_020606F8: .word 0x02141F88
_020606FC: .word 0x021424C8
_02060700: .word 0x02142A08
	thumb_func_end sub_02060670

	thumb_func_start sub_02060704
sub_02060704: ; 0x02060704
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0x15
	add r7, r0, #0
	str r2, [sp]
	lsl r1, r1, #6
	add r0, r3, #0
	mul r1, r0
	ldr r0, [sp]
	ldr r2, _020607DC ; =0x02141A88
	sub r0, r0, #1
	add r0, r5, r0
	lsl r0, r0, #0x10
	add r4, r2, r1
	lsr r2, r0, #0x10
	lsl r0, r5, #1
	str r0, [sp, #8]
	add r6, r4, r0
	lsl r0, r2, #1
	str r3, [sp, #4]
	add r3, r4, r0
	cmp r6, r3
	bhi _02060746
	ldr r0, _020607E0 ; =0x0000FFFF
_02060736:
	ldrh r1, [r6]
	cmp r1, r0
	beq _02060740
	mov r0, #0
	b _02060748
_02060740:
	add r6, r6, #2
	cmp r6, r3
	bls _02060736
_02060746:
	mov r0, #1
_02060748:
	cmp r0, #0
	beq _0206076E
	ldr r0, _020607E4 ; =0x02141A84
	ldrh r3, [r0]
	add r1, r3, #1
	strh r1, [r0]
	strh r3, [r7, #0x10]
	strh r5, [r7, #4]
	strh r2, [r7, #6]
	strh r5, [r7, #8]
	ldr r1, [sp, #8]
	sub r2, r2, r5
	add r2, r2, #1
	ldrh r0, [r7, #0x10]
	add r1, r4, r1
	lsl r2, r2, #1
	blx sub_02078624
	b _02060774
_0206076E:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02060774:
	lsl r0, r5, #0xe
	lsr r3, r0, #0x10
	ldr r0, [sp]
	lsl r6, r3, #1
	lsl r0, r0, #0xe
	lsr r0, r0, #0x10
	sub r0, r0, #1
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #5
	lsl r0, r0, #8
	add r0, r4, r0
	lsl r1, r2, #1
	add r5, r0, r6
	add r4, r0, r1
	mov ip, r0
	cmp r5, r4
	bhi _020607AC
	ldr r0, _020607E0 ; =0x0000FFFF
_0206079C:
	ldrh r1, [r5]
	cmp r1, r0
	beq _020607A6
	mov r0, #0
	b _020607AE
_020607A6:
	add r5, r5, #2
	cmp r5, r4
	bls _0206079C
_020607AC:
	mov r0, #1
_020607AE:
	cmp r0, #0
	beq _020607CA
	strh r3, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r3, [r7, #0xe]
	sub r2, r2, r3
	mov r1, ip
	add r2, r2, #1
	ldrh r0, [r7, #0x10]
	add r1, r1, r6
	lsl r2, r2, #1
	blx sub_02078624
	b _020607D0
_020607CA:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020607D0:
	mov r0, #1
	ldr r1, [sp, #4]
	str r0, [r7, #0x14]
	str r1, [r7]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020607DC: .word 0x02141A88
_020607E0: .word 0x0000FFFF
_020607E4: .word 0x02141A84
	thumb_func_end sub_02060704

	thumb_func_start sub_020607E8
sub_020607E8: ; 0x020607E8
	push {r3, r4, r5, r6}
	ldrh r6, [r0, #6]
	ldrh r5, [r0, #8]
	mov r4, #0
	add r3, r6, #1
	cmp r5, r3
	bgt _020607FE
	ldrh r3, [r0, #4]
	cmp r3, r6
	bhi _020607FE
	mov r4, #1
_020607FE:
	cmp r4, #0
	beq _0206080C
	sub r3, r6, r5
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	b _0206080E
_0206080C:
	mov r3, #0
_0206080E:
	cmp r3, #1
	blo _02060816
	mov r3, #1
	b _02060818
_02060816:
	mov r3, #0
_02060818:
	cmp r3, #0
	beq _0206086A
	mov r3, #0x15
	ldr r5, [r0]
	lsl r3, r3, #6
	ldr r4, _02060870 ; =0x02141A88
	mul r3, r5
	add r4, r4, r3
	mov r3, #1
	lsl r3, r3, #8
	add r6, r4, r3
	ldrh r3, [r0, #8]
	ldrh r4, [r1]
	lsl r5, r3, #3
	strh r4, [r6, r5]
	ldrh r4, [r1, #2]
	add r3, r6, r5
	strh r4, [r3, #2]
	ldrh r1, [r1, #4]
	strh r1, [r3, #4]
	ldr r1, _02060874 ; =0x0000FFFE
	cmp r2, r1
	beq _0206085E
	ldr r4, [r3]
	lsl r1, r4, #0x16
	lsr r5, r1, #0x1e
	mov r1, #1
	tst r1, r5
	beq _0206085E
	ldr r1, _02060878 ; =0xC1FFFFFF
	and r4, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #2
	orr r1, r4
	str r1, [r3]
_0206085E:
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0206086A:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_02060870: .word 0x02141A88
_02060874: .word 0x0000FFFE
_02060878: .word 0xC1FFFFFF
	thumb_func_end sub_020607E8

	thumb_func_start sub_0206087C
sub_0206087C: ; 0x0206087C
	push {r4, r5}
	ldrh r5, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	mov r3, #0
	add r2, r5, #1
	cmp r4, r2
	bgt _02060892
	ldrh r2, [r0, #0xa]
	cmp r2, r5
	bhi _02060892
	mov r3, #1
_02060892:
	cmp r3, #0
	beq _020608A0
	sub r2, r5, r4
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	b _020608A2
_020608A0:
	mov r2, #0
_020608A2:
	cmp r2, #1
	blo _020608AA
	mov r2, #1
	b _020608AC
_020608AA:
	mov r2, #0
_020608AC:
	cmp r2, #0
	beq _020608EC
	mov r2, #0x15
	ldr r5, [r0]
	lsl r2, r2, #6
	ldr r4, _020608F4 ; =0x02141A88
	mul r2, r5
	add r4, r4, r2
	mov r2, #1
	lsl r2, r2, #8
	ldrh r3, [r0, #0xe]
	add r4, r4, r2
	lsl r2, r3, #5
	add r2, r4, r2
	ldr r4, [r1]
	asr r4, r4, #4
	strh r4, [r2, #6]
	ldr r4, [r1, #4]
	asr r4, r4, #4
	strh r4, [r2, #0xe]
	ldr r4, [r1, #8]
	asr r4, r4, #4
	strh r4, [r2, #0x16]
	ldr r1, [r1, #0xc]
	asr r1, r1, #4
	strh r1, [r2, #0x1e]
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_020608EC:
	ldr r0, _020608F8 ; =0x0000FFFE
	pop {r4, r5}
	bx lr
	nop
_020608F4: .word 0x02141A88
_020608F8: .word 0x0000FFFE
	thumb_func_end sub_0206087C

	thumb_func_start sub_020608FC
sub_020608FC: ; 0x020608FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02060964
	ldr r1, [sp]
	ldr r0, [sp]
	ldr r6, [r1]
	mov r1, #0x15
	ldrh r0, [r0, #4]
	lsl r1, r1, #6
	ldr r2, _02060A54 ; =0x02141A88
	mul r1, r6
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #8
	lsl r4, r0, #3
	add r5, r2, r1
	lsl r1, r4, #0x10
	lsr r7, r1, #0x10
	ldr r1, [sp]
	ldrh r1, [r1, #6]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, r4
	blx sub_0207B0AC
	cmp r6, #0
	beq _02060948
	cmp r6, #1
	beq _02060956
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02060948:
	ldr r2, [sp, #4]
	add r0, r5, r4
	add r1, r7, #0
	bl sub_02075678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02060956:
	ldr r2, [sp, #4]
	add r0, r5, r4
	add r1, r7, #0
	bl sub_020756CC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02060964:
	ldr r0, [sp]
	ldr r3, _02060A54 ; =0x02141A88
	ldrh r2, [r0, #4]
	ldr r1, [r0]
	mov r0, #0x15
	lsl r0, r0, #6
	mul r0, r1
	add r3, r3, r0
	mov r0, #1
	lsl r0, r0, #8
	add r3, r3, r0
	lsl r0, r2, #3
	add r5, r3, r0
	ldr r3, [sp]
	lsl r0, r0, #0x10
	ldrh r3, [r3, #6]
	lsr r4, r0, #0x10
	ldr r0, _02060A58 ; =0x0209B24C
	sub r2, r3, r2
	add r2, r2, #1
	lsl r1, r1, #2
	lsl r2, r2, #0x10
	ldr r0, [r0, r1]
	lsr r7, r2, #0x10
	mov r6, #0
	str r0, [sp, #0xc]
	cmp r7, #0
	bls _020609B8
_0206099C:
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	blx r3
	add r4, #8
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r5, #8
	cmp r6, r7
	blo _0206099C
_020609B8:
	ldr r1, [sp]
	mov r0, #0
	ldrh r3, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	add r1, r3, #1
	cmp r2, r1
	bgt _020609D0
	ldr r1, [sp]
	ldrh r1, [r1, #0xa]
	cmp r1, r3
	bhi _020609D0
	mov r0, #1
_020609D0:
	cmp r0, #0
	beq _02060A4E
	ldr r0, [sp]
	ldr r3, _02060A54 ; =0x02141A88
	ldrh r2, [r0, #0xa]
	ldr r1, [r0]
	mov r0, #0x15
	lsl r0, r0, #6
	mul r0, r1
	add r3, r3, r0
	mov r0, #1
	lsl r0, r0, #8
	add r3, r3, r0
	lsl r0, r2, #5
	add r5, r3, r0
	ldr r3, [sp]
	lsl r0, r0, #0x10
	ldrh r3, [r3, #0xc]
	lsr r4, r0, #0x10
	ldr r0, _02060A58 ; =0x0209B24C
	sub r2, r3, r2
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r1, r1, #2
	str r2, [sp, #8]
	ldr r6, [r0, r1]
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	bls _02060A4E
_02060A0E:
	add r0, r5, #6
	add r1, r4, #6
	mov r2, #2
	blx r6
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xe
	add r1, #0xe
	mov r2, #2
	blx r6
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x16
	add r1, #0x16
	mov r2, #2
	blx r6
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x1e
	add r1, #0x1e
	mov r2, #2
	blx r6
	add r4, #0x20
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #8]
	add r5, #0x20
	cmp r7, r0
	blo _02060A0E
_02060A4E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02060A54: .word 0x02141A88
_02060A58: .word 0x0209B24C
	thumb_func_end sub_020608FC

	thumb_func_start sub_02060A5C
sub_02060A5C: ; 0x02060A5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02060ADA
	ldrh r3, [r5, #6]
	ldrh r1, [r5, #8]
	mov r2, #0
	add r0, r3, #1
	cmp r1, r0
	bgt _02060A7A
	ldrh r0, [r5, #4]
	cmp r0, r3
	bhi _02060A7A
	mov r2, #1
_02060A7A:
	cmp r2, #0
	beq _02060A8A
	ldrh r0, [r5, #4]
	sub r0, r3, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0xd
	b _02060A8C
_02060A8A:
	mov r6, #0
_02060A8C:
	mov r0, #0x15
	ldr r2, [r5]
	lsl r0, r0, #6
	ldr r1, _02060B1C ; =0x02141A88
	mul r0, r2
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #8
	add r4, r1, r0
	ldrh r0, [r5, #4]
	add r1, r6, #0
	lsl r7, r0, #3
	add r0, r4, r7
	blx sub_0207B074
	ldr r0, _02060B20 ; =0x0209B528
	ldr r0, [r0]
	cmp r0, #3
	bls _02060AB6
	mov r0, #0
	mvn r0, r0
_02060AB6:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02060ACE
	mov r1, #1
	str r1, [sp]
	add r1, r4, r7
	mov r2, #0xc0
	add r3, r6, #0
	bl sub_0207802C
	b _02060B10
_02060ACE:
	mov r0, #0xc0
	add r1, r4, r7
	add r2, r6, #0
	blx sub_02078658
	b _02060B10
_02060ADA:
	mov r1, #0x15
	ldr r3, [r5]
	lsl r1, r1, #6
	ldr r2, _02060B1C ; =0x02141A88
	mul r1, r3
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #8
	ldrh r0, [r5, #4]
	add r2, r2, r1
	lsl r1, r0, #3
	add r1, r2, r1
	ldrh r2, [r5, #6]
	sub r0, r2, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, _02060B24 ; =0x00000000
	beq _02060B10
	mov r2, #0xc0
_02060B02:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r2, [r1]
	add r1, #8
	cmp r0, r3
	blo _02060B02
_02060B10:
	ldrh r0, [r5, #4]
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02060B1C: .word 0x02141A88
_02060B20: .word 0x0209B528
_02060B24: .word 0x00000000
	thumb_func_end sub_02060A5C

	thumb_func_start sub_02060B28
sub_02060B28: ; 0x02060B28
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_02060B28

	thumb_func_start sub_02060B30
sub_02060B30: ; 0x02060B30
	mov r2, #0
	sub r1, r2, #1
_02060B34:
	add r2, r2, #1
	stmia r0!, {r1}
	cmp r2, #3
	blt _02060B34
	bx lr
	.align 2, 0
	thumb_func_end sub_02060B30

	thumb_func_start sub_02060B40
sub_02060B40: ; 0x02060B40
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_02060B40

	thumb_func_start sub_02060B48
sub_02060B48: ; 0x02060B48
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_02060B48

	thumb_func_start sub_02060B50
sub_02060B50: ; 0x02060B50
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02060B60
	mov r0, #1
	bx lr
_02060B60:
	mov r0, #0
	bx lr
	thumb_func_end sub_02060B50

	thumb_func_start sub_02060B64
sub_02060B64: ; 0x02060B64
	mov r2, #0
	sub r1, r2, #1
_02060B68:
	add r2, r2, #1
	str r1, [r0, #8]
	add r0, r0, #4
	cmp r2, #3
	blt _02060B68
	bx lr
	thumb_func_end sub_02060B64

	thumb_func_start sub_02060B74
sub_02060B74: ; 0x02060B74
	lsl r1, r1, #2
	add r0, r0, r1
	str r2, [r0, #8]
	bx lr
	thumb_func_end sub_02060B74

	thumb_func_start sub_02060B7C
sub_02060B7C: ; 0x02060B7C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02060B7C

	thumb_func_start sub_02060B84
sub_02060B84: ; 0x02060B84
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [r0, #8]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02060B96
	mov r0, #1
	bx lr
_02060B96:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02060B84

	thumb_func_start sub_02060B9C
sub_02060B9C: ; 0x02060B9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r7, r1, #0
	add r5, r3, #0
	ldr r0, [r4, #8]
	cmp r6, #0
	beq _02060BD2
	cmp r6, #1
	beq _02060BB6
	cmp r6, #2
	beq _02060BC6
	b _02060BD2
_02060BB6:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _02060CD4 ; =0xFFCFFFEF
	and r1, r2
	orr r0, r1
	str r0, [r3]
	b _02060BD2
_02060BC6:
	ldr r3, _02060CD8 ; =0x04001000
	ldr r1, _02060CD4 ; =0xFFCFFFEF
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
_02060BD2:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	blx sub_0207B0AC
	cmp r6, #0
	beq _02060BE8
	cmp r6, #1
	beq _02060BFC
	cmp r6, #2
	beq _02060C08
	b _02060C12
_02060BE8:
	bl sub_02076138
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_02076170
	bl sub_02076278
	b _02060C12
_02060BFC:
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_0207571C
	b _02060C12
_02060C08:
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_02075768
_02060C12:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrh r0, [r4, #2]
	bne _02060CB2
	cmp r0, #0x10
	bgt _02060C42
	bge _02060C58
	cmp r0, #8
	bhi _02060C60
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060C30: ; jump table
	.short _02060C60 - _02060C30 - 2 ; case 0
	.short _02060C48 - _02060C30 - 2 ; case 1
	.short _02060C4C - _02060C30 - 2 ; case 2
	.short _02060C60 - _02060C30 - 2 ; case 3
	.short _02060C50 - _02060C30 - 2 ; case 4
	.short _02060C60 - _02060C30 - 2 ; case 5
	.short _02060C60 - _02060C30 - 2 ; case 6
	.short _02060C60 - _02060C30 - 2 ; case 7
	.short _02060C54 - _02060C30 - 2 ; case 8
_02060C42:
	cmp r0, #0x20
	beq _02060C5C
	b _02060C60
_02060C48:
	mov r0, #0
	b _02060C62
_02060C4C:
	mov r0, #1
	b _02060C62
_02060C50:
	mov r0, #2
	b _02060C62
_02060C54:
	mov r0, #3
	b _02060C62
_02060C58:
	mov r0, #4
	b _02060C62
_02060C5C:
	mov r0, #5
	b _02060C62
_02060C60:
	mov r0, #0
_02060C62:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	cmp r0, #0x10
	bgt _02060C8E
	bge _02060CA4
	cmp r0, #8
	bhi _02060CAC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060C7C: ; jump table
	.short _02060CAC - _02060C7C - 2 ; case 0
	.short _02060C94 - _02060C7C - 2 ; case 1
	.short _02060C98 - _02060C7C - 2 ; case 2
	.short _02060CAC - _02060C7C - 2 ; case 3
	.short _02060C9C - _02060C7C - 2 ; case 4
	.short _02060CAC - _02060C7C - 2 ; case 5
	.short _02060CAC - _02060C7C - 2 ; case 6
	.short _02060CAC - _02060C7C - 2 ; case 7
	.short _02060CA0 - _02060C7C - 2 ; case 8
_02060C8E:
	cmp r0, #0x20
	beq _02060CA8
	b _02060CAC
_02060C94:
	mov r0, #0
	b _02060CAE
_02060C98:
	mov r0, #1
	b _02060CAE
_02060C9C:
	mov r0, #2
	b _02060CAE
_02060CA0:
	mov r0, #3
	b _02060CAE
_02060CA4:
	mov r0, #4
	b _02060CAE
_02060CA8:
	mov r0, #5
	b _02060CAE
_02060CAC:
	mov r0, #0
_02060CAE:
	str r0, [r5, #0x10]
	b _02060CB8
_02060CB2:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
_02060CB8:
	ldr r0, [r4, #4]
	add r1, r6, #0
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [r4, #8]
	add r2, r7, #0
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_02060B40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02060CD4: .word 0xFFCFFFEF
_02060CD8: .word 0x04001000
	thumb_func_end sub_02060B9C

	thumb_func_start sub_02060CDC
sub_02060CDC: ; 0x02060CDC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r7, r1, #0
	add r5, r3, #0
	ldr r0, [r4, #8]
	cmp r6, #0
	beq _02060D12
	cmp r6, #1
	beq _02060CF6
	cmp r6, #2
	beq _02060D06
	b _02060D12
_02060CF6:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _02060E14 ; =0xFFCFFFEF
	and r1, r2
	orr r0, r1
	str r0, [r3]
	b _02060D12
_02060D06:
	ldr r3, _02060E18 ; =0x04001000
	ldr r1, _02060E14 ; =0xFFCFFFEF
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
_02060D12:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	blx sub_0207B0AC
	cmp r6, #0
	beq _02060D28
	cmp r6, #1
	beq _02060D3C
	cmp r6, #2
	beq _02060D48
	b _02060D52
_02060D28:
	bl sub_02076138
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_02076170
	bl sub_02076278
	b _02060D52
_02060D3C:
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_0207571C
	b _02060D52
_02060D48:
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x10]
	add r1, r7, #0
	bl sub_02075768
_02060D52:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrh r0, [r4, #2]
	bne _02060DF2
	cmp r0, #0x10
	bgt _02060D82
	bge _02060D98
	cmp r0, #8
	bhi _02060DA0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060D70: ; jump table
	.short _02060DA0 - _02060D70 - 2 ; case 0
	.short _02060D88 - _02060D70 - 2 ; case 1
	.short _02060D8C - _02060D70 - 2 ; case 2
	.short _02060DA0 - _02060D70 - 2 ; case 3
	.short _02060D90 - _02060D70 - 2 ; case 4
	.short _02060DA0 - _02060D70 - 2 ; case 5
	.short _02060DA0 - _02060D70 - 2 ; case 6
	.short _02060DA0 - _02060D70 - 2 ; case 7
	.short _02060D94 - _02060D70 - 2 ; case 8
_02060D82:
	cmp r0, #0x20
	beq _02060D9C
	b _02060DA0
_02060D88:
	mov r0, #0
	b _02060DA2
_02060D8C:
	mov r0, #1
	b _02060DA2
_02060D90:
	mov r0, #2
	b _02060DA2
_02060D94:
	mov r0, #3
	b _02060DA2
_02060D98:
	mov r0, #4
	b _02060DA2
_02060D9C:
	mov r0, #5
	b _02060DA2
_02060DA0:
	mov r0, #0
_02060DA2:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	cmp r0, #0x10
	bgt _02060DCE
	bge _02060DE4
	cmp r0, #8
	bhi _02060DEC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060DBC: ; jump table
	.short _02060DEC - _02060DBC - 2 ; case 0
	.short _02060DD4 - _02060DBC - 2 ; case 1
	.short _02060DD8 - _02060DBC - 2 ; case 2
	.short _02060DEC - _02060DBC - 2 ; case 3
	.short _02060DDC - _02060DBC - 2 ; case 4
	.short _02060DEC - _02060DBC - 2 ; case 5
	.short _02060DEC - _02060DBC - 2 ; case 6
	.short _02060DEC - _02060DBC - 2 ; case 7
	.short _02060DE0 - _02060DBC - 2 ; case 8
_02060DCE:
	cmp r0, #0x20
	beq _02060DE8
	b _02060DEC
_02060DD4:
	mov r0, #0
	b _02060DEE
_02060DD8:
	mov r0, #1
	b _02060DEE
_02060DDC:
	mov r0, #2
	b _02060DEE
_02060DE0:
	mov r0, #3
	b _02060DEE
_02060DE4:
	mov r0, #4
	b _02060DEE
_02060DE8:
	mov r0, #5
	b _02060DEE
_02060DEC:
	mov r0, #0
_02060DEE:
	str r0, [r5, #0x10]
	b _02060DF8
_02060DF2:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
_02060DF8:
	ldr r0, [r4, #4]
	add r1, r6, #0
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [r4, #8]
	add r2, r7, #0
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_02060B40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02060E14: .word 0xFFCFFFEF
_02060E18: .word 0x04001000
	thumb_func_end sub_02060CDC

	thumb_func_start sub_02060E1C
sub_02060E1C: ; 0x02060E1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	add r6, r2, #0
	add r5, r3, #0
	blx sub_0207B0AC
	ldr r0, [r4, #8]
	cmp r6, #0
	beq _02060E5A
	cmp r6, #1
	beq _02060E3E
	cmp r6, #2
	beq _02060E4E
	b _02060E5A
_02060E3E:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _02060F1C ; =0xFFCFFFEF
	and r1, r2
	orr r0, r1
	str r0, [r3]
	b _02060E5A
_02060E4E:
	ldr r3, _02060F20 ; =0x04001000
	ldr r1, _02060F1C ; =0xFFCFFFEF
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
_02060E5A:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrh r0, [r4, #2]
	bne _02060EFA
	cmp r0, #0x10
	bgt _02060E8A
	bge _02060EA0
	cmp r0, #8
	bhi _02060EA8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060E78: ; jump table
	.short _02060EA8 - _02060E78 - 2 ; case 0
	.short _02060E90 - _02060E78 - 2 ; case 1
	.short _02060E94 - _02060E78 - 2 ; case 2
	.short _02060EA8 - _02060E78 - 2 ; case 3
	.short _02060E98 - _02060E78 - 2 ; case 4
	.short _02060EA8 - _02060E78 - 2 ; case 5
	.short _02060EA8 - _02060E78 - 2 ; case 6
	.short _02060EA8 - _02060E78 - 2 ; case 7
	.short _02060E9C - _02060E78 - 2 ; case 8
_02060E8A:
	cmp r0, #0x20
	beq _02060EA4
	b _02060EA8
_02060E90:
	mov r0, #0
	b _02060EAA
_02060E94:
	mov r0, #1
	b _02060EAA
_02060E98:
	mov r0, #2
	b _02060EAA
_02060E9C:
	mov r0, #3
	b _02060EAA
_02060EA0:
	mov r0, #4
	b _02060EAA
_02060EA4:
	mov r0, #5
	b _02060EAA
_02060EA8:
	mov r0, #0
_02060EAA:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	cmp r0, #0x10
	bgt _02060ED6
	bge _02060EEC
	cmp r0, #8
	bhi _02060EF4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060EC4: ; jump table
	.short _02060EF4 - _02060EC4 - 2 ; case 0
	.short _02060EDC - _02060EC4 - 2 ; case 1
	.short _02060EE0 - _02060EC4 - 2 ; case 2
	.short _02060EF4 - _02060EC4 - 2 ; case 3
	.short _02060EE4 - _02060EC4 - 2 ; case 4
	.short _02060EF4 - _02060EC4 - 2 ; case 5
	.short _02060EF4 - _02060EC4 - 2 ; case 6
	.short _02060EF4 - _02060EC4 - 2 ; case 7
	.short _02060EE8 - _02060EC4 - 2 ; case 8
_02060ED6:
	cmp r0, #0x20
	beq _02060EF0
	b _02060EF4
_02060EDC:
	mov r0, #0
	b _02060EF6
_02060EE0:
	mov r0, #1
	b _02060EF6
_02060EE4:
	mov r0, #2
	b _02060EF6
_02060EE8:
	mov r0, #3
	b _02060EF6
_02060EEC:
	mov r0, #4
	b _02060EF6
_02060EF0:
	mov r0, #5
	b _02060EF6
_02060EF4:
	mov r0, #0
_02060EF6:
	str r0, [r5, #0x10]
	b _02060F00
_02060EFA:
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
_02060F00:
	ldr r0, [r4, #4]
	add r1, r6, #0
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [r4, #8]
	add r2, r7, #0
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_02060B40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02060F1C: .word 0xFFCFFFEF
_02060F20: .word 0x04001000
	thumb_func_end sub_02060E1C

	thumb_func_start sub_02060F24
sub_02060F24: ; 0x02060F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, [sp]
	add r4, r2, #0
	add r7, r3, #0
	str r0, [sp, #4]
	blx sub_0207B0AC
	cmp r4, #0
	beq _02060F98
	cmp r4, #1
	beq _02060F4C
	cmp r4, #2
	beq _02060F72
	b _02060FAA
_02060F4C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02060F66
	bl sub_02075F30
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_02075F60
	bl sub_02075FC0
	b _02060FAA
_02060F66:
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_020755A0
	b _02060FAA
_02060F72:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02060F8C
	bl sub_02076098
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_020760A8
	bl sub_02076104
	b _02060FAA
_02060F8C:
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_0207560C
	b _02060FAA
_02060F98:
	bl sub_020762B4
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_020762D4
	bl sub_02076334
_02060FAA:
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [r7]
	ldr r0, [r5, #4]
	add r2, r6, #0
	str r0, [r7, #4]
	add r0, r7, #0
	bl sub_02060B74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060F24

	thumb_func_start sub_02060FC0
sub_02060FC0: ; 0x02060FC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp]
	str r2, [sp, #8]
	ldr r0, [r0]
	str r3, [sp, #0xc]
	cmp r0, #3
	bne _02060FDC
	mov r5, #0x20
	b _02060FE0
_02060FDC:
	mov r5, #2
	lsl r5, r5, #8
_02060FE0:
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bls _0206109E
_02060FF0:
	ldr r0, [sp, #4]
	add r6, r5, #0
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	add r7, r5, #0
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	ldr r1, [sp]
	mul r6, r0
	ldr r0, [sp]
	ldr r1, [r1, #8]
	ldr r4, [r0, #0xc]
	ldr r0, [sp, #0x10]
	mul r7, r0
	add r0, r4, #0
	blx sub_0207B0AC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0206107A
	cmp r0, #1
	beq _02061022
	cmp r0, #2
	beq _0206104E
	b _0206108E
_02061022:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02061040
	bl sub_02075F30
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r6
	add r2, r5, #0
	bl sub_02075F60
	bl sub_02075FC0
	b _0206108E
_02061040:
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r6
	add r2, r5, #0
	bl sub_020755A0
	b _0206108E
_0206104E:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0206106C
	bl sub_02076098
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r6
	add r2, r5, #0
	bl sub_020760A8
	bl sub_02076104
	b _0206108E
_0206106C:
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r6
	add r2, r5, #0
	bl sub_0207560C
	b _0206108E
_0206107A:
	bl sub_020762B4
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r6
	add r2, r5, #0
	bl sub_020762D4
	bl sub_02076334
_0206108E:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	blo _02060FF0
_0206109E:
	ldr r0, [sp]
	ldr r2, [sp, #8]
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	str r1, [r0]
	ldr r0, [sp]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x30]
	str r1, [r0, #4]
	ldr r1, [sp, #0xc]
	bl sub_02060B74
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02060FC0

	thumb_func_start sub_020610BC
sub_020610BC: ; 0x020610BC
	mov r2, #0
	sub r1, r2, #1
_020610C0:
	add r2, r2, #1
	stmia r0!, {r1}
	cmp r2, #3
	blt _020610C0
	bx lr
	.align 2, 0
	thumb_func_end sub_020610BC

	thumb_func_start sub_020610CC
sub_020610CC: ; 0x020610CC
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_020610CC

	thumb_func_start sub_020610D4
sub_020610D4: ; 0x020610D4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_020610D4

	thumb_func_start sub_020610DC
sub_020610DC: ; 0x020610DC
	push {r3, r4}
	ldr r3, [r0]
	cmp r3, #1
	bne _020610F0
	ldrh r4, [r0, #0x12]
	mov r3, #8
	orr r3, r4
	strh r3, [r0, #0x12]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
_020610F0:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020610DC

	thumb_func_start sub_020610F4
sub_020610F4: ; 0x020610F4
	ldr r2, [r0]
	cmp r2, #1
	bne _02061104
	ldrh r3, [r0, #0x12]
	mov r2, #4
	orr r2, r3
	strh r2, [r0, #0x12]
	strh r1, [r0, #0x10]
_02061104:
	bx lr
	.align 2, 0
	thumb_func_end sub_020610F4

	thumb_func_start sub_02061108
sub_02061108: ; 0x02061108
	push {r3, r4}
	ldr r3, [r0]
	cmp r3, #1
	bne _0206111C
	ldrh r4, [r0, #0x12]
	mov r3, #2
	orr r3, r4
	strh r3, [r0, #0x12]
	str r1, [r0, #4]
	str r2, [r0, #8]
_0206111C:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02061108

	thumb_func_start sub_02061120
sub_02061120: ; 0x02061120
	ldr r3, _02061128 ; =sub_0206112C
	str r1, [r0]
	bx r3
	nop
_02061128: .word sub_0206112C
	thumb_func_end sub_02061120

	thumb_func_start sub_0206112C
sub_0206112C: ; 0x0206112C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #4
	mov r2, #0x18
	blx sub_02078624
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0206112C

	thumb_func_start sub_02061144
sub_02061144: ; 0x02061144
	mov r2, #0
	str r2, [r0]
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	ldr r3, _02061154 ; =sub_02061120
	add r0, #0xc
	bx r3
	.align 2, 0
_02061154: .word sub_02061120
	thumb_func_end sub_02061144

	thumb_func_start sub_02061158
sub_02061158: ; 0x02061158
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #4]
	ldrh r1, [r1, #4]
	cmp r1, #0
	beq _02061204
	bl sub_0206047C
	add r0, r5, #0
	bl sub_0206047C
	add r4, r0, #0
	ldr r7, [r5, #0x34]
	ldrh r1, [r4]
	add r0, r7, #0
	bl sub_02060178
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x3c
	bl sub_02061120
	cmp r6, #0
	beq _020611CE
	cmp r6, #2
	bne _020611A8
	mov r1, #4
	mov r2, #6
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x3c
	bl sub_020610DC
	b _020611CE
_020611A8:
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, #0x3c
	bl sub_02061108
	add r0, r5, #0
	ldrh r1, [r4, #2]
	add r0, #0x3c
	bl sub_020610F4
	mov r1, #0xc
	mov r2, #0xe
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x3c
	bl sub_020610DC
_020611CE:
	ldr r2, [r7, #0xc]
	cmp r2, #0
	beq _020611D8
	mov r0, #1
	b _020611DA
_020611D8:
	mov r0, #0
_020611DA:
	cmp r0, #0
	beq _02061204
	mov r0, #0
	ldr r1, [r5, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _020611EC
	mov r0, #1
	b _020611EE
_020611EC:
	mov r0, #0
_020611EE:
	cmp r0, #0
	beq _02061204
	ldrh r0, [r4]
	ldr r2, [r2, #4]
	lsl r1, r0, #3
	add r3, r2, r1
	ldr r1, [r2, r1]
	ldr r0, [r5, #0x38]
	ldr r2, [r3, #4]
	bl sub_02062D98
_02061204:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02061158

	thumb_func_start sub_02061208
sub_02061208: ; 0x02061208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	str r2, [r5, #0x34]
	mvn r0, r0
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r4, r1, #0
	add r0, #0x3c
	mov r1, #1
	bl sub_02061120
	add r0, r5, #0
	bl sub_020605A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206127C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02061208

	thumb_func_start sub_02061230
sub_02061230: ; 0x02061230
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	add r7, r1, #0
	ldr r0, [r0]
	add r4, r3, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02062C44
	str r4, [r5, #0x38]
	add r0, r5, #0
	str r6, [r5, #0x34]
	add r0, #0x3c
	mov r1, #1
	str r4, [r5, #0x38]
	bl sub_02061120
	add r0, r5, #0
	bl sub_020605A0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0206127C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061230

	thumb_func_start sub_0206127C
sub_0206127C: ; 0x0206127C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206060C
	add r0, r4, #0
	bl sub_02061158
	pop {r4, pc}
	thumb_func_end sub_0206127C

	thumb_func_start sub_0206128C
sub_0206128C: ; 0x0206128C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02060484
	cmp r0, #0
	beq _0206129E
	add r0, r4, #0
	bl sub_02061158
_0206129E:
	pop {r4, pc}
	thumb_func_end sub_0206128C

	thumb_func_start sub_020612A0
sub_020612A0: ; 0x020612A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206057C
	cmp r0, #0
	beq _020612B2
	add r0, r4, #0
	bl sub_02061158
_020612B2:
	pop {r4, pc}
	thumb_func_end sub_020612A0

	thumb_func_start sub_020612B4
sub_020612B4: ; 0x020612B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020605D0
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl sub_02061158
	pop {r4, pc}
	thumb_func_end sub_020612B4

	thumb_func_start sub_020612C8
sub_020612C8: ; 0x020612C8
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_020612C8

	thumb_func_start sub_020612CC
sub_020612CC: ; 0x020612CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	str r0, [sp]
	str r7, [r0]
	ldr r0, [r0, #8]
	add r6, r2, #0
	cmp r0, #1
	bne _020613B6
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [r7, #2]
	cmp r0, #0
	bls _02061306
	add r0, r1, #0
	mov r3, #0x5c
_020612F0:
	add r4, r1, #0
	ldr r2, [sp, #0x14]
	mul r4, r3
	add r2, r2, r4
	str r0, [r2, #0x58]
	add r1, r1, #1
	lsl r1, r1, #0x10
	ldrh r2, [r7, #2]
	lsr r1, r1, #0x10
	cmp r1, r2
	blo _020612F0
_02061306:
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r7]
	cmp r0, #0
	bhi _02061312
	b _02061474
_02061312:
	ldr r0, [sp, #4]
	ldr r1, [r7, #4]
	lsl r0, r0, #3
	add r5, r1, r0
	ldrh r1, [r5, #6]
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #8
	lsr r1, r0, #0x10
	mov r0, #0x5c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r4, r0, r2
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _020613A0
	ldr r0, [sp]
	ldrh r1, [r5]
	ldr r0, [r0, #4]
	bl sub_02060114
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl sub_0206127C
	mov r0, #1
	str r0, [r4, #0xc]
	ldrh r1, [r5, #6]
	mov r0, #0xf
	and r0, r1
	cmp r0, #1
	bne _0206139C
	ldr r0, [sp, #0x18]
	mov r5, #0
	ldrh r3, [r0]
	add r1, r5, #0
	cmp r3, #0
	bls _02061372
	ldr r2, [r0, #0xc]
_02061366:
	ldrh r0, [r2, #4]
	add r1, r1, #1
	add r2, #8
	add r5, r5, r0
	cmp r1, r3
	blo _02061366
_02061372:
	add r0, r4, #0
	bl sub_02060634
	cmp r0, #0
	beq _0206138E
	add r0, r6, #0
	add r1, r5, #0
	blx sub_0208D868
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0206128C
	b _0206139C
_0206138E:
	cmp r6, r5
	bhs _02061394
	add r5, r6, #0
_02061394:
	add r0, r4, #0
	lsl r1, r5, #0xc
	bl sub_0206128C
_0206139C:
	mov r0, #1
	str r0, [r4, #0x58]
_020613A0:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r1, [r7]
	ldr r0, [sp, #4]
	cmp r0, r1
	blo _02061312
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_020613B6:
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r7]
	cmp r0, #0
	bls _02061474
_020613C6:
	ldr r0, [sp, #8]
	ldr r2, [r7, #4]
	lsl r1, r0, #3
	add r0, r2, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r3, #0x28
	mul r3, r0
	ldr r0, [sp, #0x10]
	ldrh r1, [r2, r1]
	ldr r4, [r0, r3]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl sub_02060114
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0206127C
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #6]
	mov r0, #0xf
	and r0, r1
	cmp r0, #1
	bne _02061442
	ldr r0, [sp, #0x1c]
	mov r5, #0
	ldrh r3, [r0]
	add r1, r5, #0
	cmp r3, #0
	bls _02061418
	ldr r2, [r0, #0xc]
_0206140C:
	ldrh r0, [r2, #4]
	add r1, r1, #1
	add r2, #8
	add r5, r5, r0
	cmp r1, r3
	blo _0206140C
_02061418:
	add r0, r4, #0
	bl sub_02060634
	cmp r0, #0
	beq _02061434
	add r0, r6, #0
	add r1, r5, #0
	blx sub_0208D868
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0206128C
	b _02061442
_02061434:
	cmp r6, r5
	bhs _0206143A
	add r5, r6, #0
_0206143A:
	add r0, r4, #0
	lsl r1, r5, #0xc
	bl sub_0206128C
_02061442:
	ldr r0, [sp, #8]
	mov r1, #0x28
	mul r1, r0
	ldr r0, [sp, #0x10]
	mov r2, #2
	add r0, r0, r1
	mov r1, #1
	str r1, [r0, #8]
	ldr r1, [sp, #0xc]
	mov r3, #4
	ldrsh r1, [r1, r2]
	ldr r2, [sp, #0xc]
	add r0, #0xc
	ldrsh r2, [r2, r3]
	bl sub_020610DC
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _020613C6
_02061474:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020612CC

	thumb_func_start sub_02061478
sub_02061478: ; 0x02061478
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	bls _020614A2
_02061486:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060264
	ldrh r0, [r0, #2]
	cmp r0, r6
	bls _02061496
	add r6, r0, #0
_02061496:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _02061486
_020614A2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02061478

	thumb_func_start sub_020614A8
sub_020614A8: ; 0x020614A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0206060C
	mov r0, #0
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0206152C
	add r0, r5, #0
	bl sub_0206047C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #0x44]
	bl sub_02060264
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x48
	bl sub_02061120
	cmp r6, #0
	beq _02061520
	cmp r6, #2
	bne _020614FA
	mov r1, #4
	mov r2, #6
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
	b _02061520
_020614FA:
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, #0x48
	bl sub_02061108
	add r0, r5, #0
	ldrh r1, [r4, #2]
	add r0, #0x48
	bl sub_020610F4
	mov r1, #0xc
	mov r2, #0xe
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
_02061520:
	ldrh r2, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x34
	add r1, r7, #0
	bl sub_020612CC
_0206152C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020614A8

	thumb_func_start sub_02061530
sub_02061530: ; 0x02061530
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r5, r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #1
	bne _02061596
	ldr r0, [sp]
	mov r1, #1
	add r4, r0, #0
	str r1, [r0, #0x3c]
	add r4, #0x34
	str r6, [r4, #4]
	ldr r0, [sp, #0x30]
	str r5, [r4, #0xc]
	bl sub_02061478
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bls _02061610
_02061568:
	mov r0, #0x5c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r1
	add r0, r6, #0
	mov r1, #0
	bl sub_02060114
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02061208
	mov r0, #1
	str r0, [r5, #0x58]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blo _02061568
	b _02061610
_02061596:
	ldr r0, [sp, #0x30]
	bl sub_0206164C
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	mov r1, #0x28
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r4, #0
	str r4, [r0, #0x3c]
	str r4, [r0, #0x34]
	str r6, [r0, #0x38]
	str r5, [r0, #0x40]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _020615F6
_020615BA:
	mov r0, #0x28
	mul r0, r4
	str r0, [sp, #0x18]
	add r0, r5, r0
	mov r1, #1
	bl sub_02061144
	mov r0, #0x58
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	str r1, [sp, #4]
	str r1, [r5, r0]
	add r0, r6, #0
	mov r1, #0
	bl sub_02060114
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r2, r7, #0
	bl sub_02061208
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _020615BA
_020615F6:
	ldr r0, [sp]
	bl sub_020605A0
	ldr r1, [sp, #0x30]
	ldr r0, [sp]
	str r1, [r0, #0x44]
	add r0, #0x48
	mov r1, #1
	bl sub_02061120
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0, #0x30]
_02061610:
	ldr r0, [sp]
	bl sub_020605A0
	ldr r1, [sp, #0x30]
	ldr r0, [sp]
	str r1, [r0, #0x44]
	add r0, #0x48
	mov r1, #1
	bl sub_02061120
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0, #0x30]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02061530

	thumb_func_start sub_02061630
sub_02061630: ; 0x02061630
	push {r3, lr}
	cmp r1, #1
	bne _02061640
	bl sub_02061478
	mov r1, #0x5c
	mul r1, r0
	b _02061646
_02061640:
	bl sub_0206164C
	lsl r1, r0, #7
_02061646:
	add r0, r1, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02061630

	thumb_func_start sub_0206164C
sub_0206164C: ; 0x0206164C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	bls _02061676
_0206165A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060264
	ldrh r0, [r0]
	cmp r0, r6
	bls _0206166A
	add r6, r0, #0
_0206166A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _0206165A
_02061676:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0206164C

	thumb_func_start sub_0206167C
sub_0206167C: ; 0x0206167C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r6, r1, #0
	cmp r0, #1
	ldr r7, [r4, #0xc]
	bne _020616B0
	ldr r0, [r4]
	mov r5, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _020616D4
_02061694:
	mov r0, #0x5c
	mul r0, r5
	add r0, r7, r0
	add r1, r6, #0
	bl sub_0206128C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r5, r0
	blo _02061694
	pop {r3, r4, r5, r6, r7, pc}
_020616B0:
	ldr r0, [r4]
	mov r5, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _020616D4
_020616BA:
	mov r0, #0x28
	mul r0, r5
	ldr r0, [r7, r0]
	add r1, r6, #0
	bl sub_0206128C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r5, r0
	blo _020616BA
_020616D4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206167C

	thumb_func_start sub_020616D8
sub_020616D8: ; 0x020616D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5]
	add r6, r1, #0
	ldrh r4, [r2, #4]
	bl sub_02060484
	cmp r0, #0
	beq _0206176A
	ldrh r0, [r5, #0x30]
	add r0, r0, r4
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _02061774
	add r0, r5, #0
	bl sub_0206047C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #0x44]
	bl sub_02060264
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x48
	bl sub_02061120
	cmp r6, #0
	beq _0206175C
	cmp r6, #2
	bne _02061736
	mov r1, #4
	mov r2, #6
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
	b _0206175C
_02061736:
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, #0x48
	bl sub_02061108
	add r0, r5, #0
	ldrh r1, [r4, #2]
	add r0, #0x48
	bl sub_020610F4
	mov r1, #0xc
	mov r2, #0xe
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
_0206175C:
	ldrh r2, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x34
	add r1, r7, #0
	bl sub_020612CC
	pop {r3, r4, r5, r6, r7, pc}
_0206176A:
	add r5, #0x34
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206167C
_02061774:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020616D8

	thumb_func_start sub_02061778
sub_02061778: ; 0x02061778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0206057C
	cmp r0, #0
	beq _020617FC
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _020617FC
	add r0, r5, #0
	bl sub_0206047C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #0x44]
	bl sub_02060264
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x48
	bl sub_02061120
	cmp r6, #0
	beq _020617F0
	cmp r6, #2
	bne _020617CA
	mov r1, #4
	mov r2, #6
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
	b _020617F0
_020617CA:
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, #0x48
	bl sub_02061108
	add r0, r5, #0
	ldrh r1, [r4, #2]
	add r0, #0x48
	bl sub_020610F4
	mov r1, #0xc
	mov r2, #0xe
	add r0, r5, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x48
	bl sub_020610DC
_020617F0:
	ldrh r2, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x34
	add r1, r7, #0
	bl sub_020612CC
_020617FC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02061778

	thumb_func_start sub_02061800
sub_02061800: ; 0x02061800
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r4, #0x34
	add r6, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #1
	bne _02061838
	ldr r7, [r4, #0xc]
	mov r5, #0
	str r6, [r0, #0x14]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _02061860
_0206181C:
	mov r0, #0x5c
	mul r0, r5
	add r0, r7, r0
	add r1, r6, #0
	bl sub_020612C8
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r5, r0
	blo _0206181C
	pop {r3, r4, r5, r6, r7, pc}
_02061838:
	ldr r7, [r0, #0x40]
	mov r5, #0
	str r6, [r0, #0x14]
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	bls _02061860
_02061846:
	mov r0, #0x28
	mul r0, r5
	ldr r0, [r7, r0]
	add r1, r6, #0
	bl sub_020612C8
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r5, r0
	blo _02061846
_02061860:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02061800

	thumb_func_start sub_02061864
sub_02061864: ; 0x02061864
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r6, [r5, #0xc]
	cmp r0, #1
	bne _02061898
	ldr r0, [r5]
	mov r4, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _020618BE
	mov r7, #0x5c
_0206187C:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #0
	bl sub_020612A0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	ldrh r0, [r0, #2]
	cmp r4, r0
	blo _0206187C
	pop {r3, r4, r5, r6, r7, pc}
_02061898:
	ldr r0, [r5]
	mov r4, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _020618BE
	mov r7, #0x28
_020618A4:
	add r0, r4, #0
	mul r0, r7
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_020612A0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	blo _020618A4
_020618BE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061864

	thumb_func_start sub_020618C0
sub_020618C0: ; 0x020618C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	strh r1, [r5, #0x30]
	add r4, r5, #0
	ldr r1, [r5, #0x1c]
	add r4, #0x34
	bl sub_020614A8
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	ldr r6, [r4, #0xc]
	cmp r0, #1
	bne _02061904
	ldr r0, [r4]
	mov r5, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _02061928
	mov r7, #0x5c
_020618EA:
	add r0, r5, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_020612B4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r5, r0
	blo _020618EA
	pop {r3, r4, r5, r6, r7, pc}
_02061904:
	ldr r0, [r4]
	mov r5, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _02061928
	mov r7, #0x28
_02061910:
	add r0, r5, #0
	mul r0, r7
	ldr r0, [r6, r0]
	bl sub_020612B4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r5, r0
	blo _02061910
_02061928:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020618C0

	thumb_func_start sub_0206192C
sub_0206192C: ; 0x0206192C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	ldr r6, [r0]
	ldr r1, [r0, #8]
	str r2, [sp]
	ldrh r5, [r6]
	cmp r1, #1
	ldr r0, [r0, #0xc]
	bne _0206197A
	mov r4, #0
	str r0, [sp, #8]
	cmp r5, #0
	bls _020619A6
_02061948:
	ldr r1, [r6, #4]
	lsl r0, r4, #3
	add r1, r1, r0
	ldrh r3, [r1, #6]
	mov r2, #0xff
	lsl r2, r2, #8
	and r2, r3
	lsl r2, r2, #8
	lsr r2, r2, #0x10
	mov r3, #0x5c
	mul r3, r2
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r2, r2, r3
	add r3, r4, #0
	blx r7
	cmp r0, #0
	beq _020619A6
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _02061948
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0206197A:
	mov r4, #0
	str r0, [sp, #4]
	cmp r5, #0
	bls _020619A6
_02061982:
	ldr r2, [r6, #4]
	lsl r1, r4, #3
	add r1, r2, r1
	mov r2, #0x28
	add r3, r4, #0
	mul r3, r2
	ldr r2, [sp, #4]
	ldr r0, [sp]
	ldr r2, [r2, r3]
	add r3, r4, #0
	blx r7
	cmp r0, #0
	beq _020619A6
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _02061982
_020619A6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206192C

	thumb_func_start sub_020619AC
sub_020619AC: ; 0x020619AC
	push {r4, r5}
	ldr r0, _02061A04 ; =0x02142A48
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020619CA
	ldr r3, [r0, #0xc]
	mov r0, #0x18
	add r2, r3, #0
	mul r2, r0
	ldr r0, _02061A08 ; =0x02142BE8
	mov r1, #0
	str r1, [r0, r2]
	ldr r0, _02061A0C ; =0x02142BEC
	str r1, [r0, r2]
	b _020619F8
_020619CA:
	ldr r3, [r0, #0xc]
	mov r1, #1
	ldr r5, _02061A10 ; =0x02142BD8
	mov r0, #0x18
	add r4, r3, #0
	mul r4, r0
	lsl r1, r1, #0xc
	add r2, r5, r4
	str r1, [r5, r4]
	mov r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	ldr r0, _02061A14 ; =0x02142ED8
	add r4, r0, r4
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
_020619F8:
	ldr r0, _02061A18 ; =0x02142A58
	mov r2, #0
	lsl r1, r3, #2
	str r2, [r0, r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02061A04: .word 0x02142A48
_02061A08: .word 0x02142BE8
_02061A0C: .word 0x02142BEC
_02061A10: .word 0x02142BD8
_02061A14: .word 0x02142ED8
_02061A18: .word 0x02142A58
	thumb_func_end sub_020619AC

	thumb_func_start sub_02061A1C
sub_02061A1C: ; 0x02061A1C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02061AC8 ; =0x02142A48
	ldr r1, _02061ACC ; =0x02142AD8
	ldr r0, [r0, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	add r2, r1, r0
	ldrh r0, [r2, #4]
	mov r1, #1
	cmp r0, #1
	beq _02061A38
	cmp r0, #2
	beq _02061A38
	mov r1, #0
_02061A38:
	cmp r1, #0
	beq _02061AC6
	ldr r0, _02061AC8 ; =0x02142A48
	ldrh r5, [r0]
	cmp r5, #0x1f
	bhs _02061A48
	add r1, r5, #1
	strh r1, [r0]
_02061A48:
	ldrh r4, [r2, #2]
	mov r0, #0
	lsl r1, r5, #5
	strh r5, [r2]
	ldr r2, _02061AD0 ; =0x021431D8
	mvn r0, r0
	add r1, r2, r1
	add r1, #0x10
	mov r2, #0x10
	blx sub_0207869C
	ldr r0, _02061AC8 ; =0x02142A48
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, #0
	beq _02061A80
	mov r1, #0x18
	add r3, r0, #0
	mul r3, r1
	ldr r1, _02061AD4 ; =0x02142BE8
	ldr r2, [r1, r3]
	ldr r1, _02061AD8 ; =0x0209B260
	str r2, [r1, #0x18]
	ldr r2, _02061ADC ; =0x02142BEC
	ldr r2, [r2, r3]
	ldr r3, _02061AE0 ; =0x0209B268
	str r2, [r1, #0x1c]
	b _02061A88
_02061A80:
	mov r1, #0x18
	ldr r2, _02061AE4 ; =0x02142ED8
	mul r1, r0
	add r3, r2, r1
_02061A88:
	lsl r0, r0, #0x10
	lsr r2, r0, #0xd
	ldr r0, _02061ACC ; =0x02142AD8
	ldr r1, _02061AD0 ; =0x021431D8
	ldrh r2, [r0, r2]
	ldr r6, [r3]
	lsl r7, r2, #5
	add r2, r1, r7
	str r6, [r1, r7]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #0xc]
	str r1, [r2, #0xc]
	ldr r1, _02061AC8 ; =0x02142A48
	ldr r1, [r1, #0xc]
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	bmi _02061AC6
	lsl r1, r2, #3
	add r3, r0, r1
	mov r0, #3
_02061AB6:
	ldrh r1, [r3, #2]
	cmp r4, r1
	bne _02061AC6
	strh r0, [r3, #4]
	strh r5, [r3]
	sub r3, #8
	sub r2, r2, #1
	bpl _02061AB6
_02061AC6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02061AC8: .word 0x02142A48
_02061ACC: .word 0x02142AD8
_02061AD0: .word 0x021431D8
_02061AD4: .word 0x02142BE8
_02061AD8: .word 0x0209B260
_02061ADC: .word 0x02142BEC
_02061AE0: .word 0x0209B268
_02061AE4: .word 0x02142ED8
	thumb_func_end sub_02061A1C

	thumb_func_start sub_02061AE8
sub_02061AE8: ; 0x02061AE8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _02061B78 ; =0x02142A48
	add r5, r0, #0
	ldr r0, [r1, #8]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02061B38
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02061B18
	ldr r1, [r1, #0xc]
	mov r0, #0x18
	mul r0, r1
	ldr r1, _02061B7C ; =0x02142BE8
	ldr r2, [r1, r0]
	ldr r1, _02061B80 ; =0x0209B260
	str r2, [r1, #0x18]
	ldr r2, _02061B84 ; =0x02142BEC
	ldr r0, [r2, r0]
	str r0, [r1, #0x1c]
	ldr r1, _02061B88 ; =0x0209B268
	b _02061B22
_02061B18:
	ldr r2, [r1, #0xc]
	mov r1, #0x18
	ldr r0, _02061B8C ; =0x02142BD8
	mul r1, r2
	add r1, r0, r1
_02061B22:
	ldr r3, [r4, #0x34]
	add r0, r6, #0
	add r2, r4, #0
	blx r3
	cmp r0, #0
	bne _02061B34
	mov r0, #0
	str r0, [r5, #0x30]
	pop {r4, r5, r6, pc}
_02061B34:
	mov r0, #1
	str r0, [r5, #0x30]
_02061B38:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02061B74
	ldr r0, _02061B78 ; =0x02142A48
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02061B5E
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	mul r0, r1
	ldr r1, _02061B7C ; =0x02142BE8
	ldr r3, _02061B88 ; =0x0209B268
	ldr r2, [r1, r0]
	ldr r1, _02061B80 ; =0x0209B260
	str r2, [r1, #0x18]
	ldr r2, _02061B84 ; =0x02142BEC
	ldr r0, [r2, r0]
	str r0, [r1, #0x1c]
	b _02061B68
_02061B5E:
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	ldr r2, _02061B8C ; =0x02142BD8
	mul r0, r1
	add r3, r2, r0
_02061B68:
	ldr r0, _02061B78 ; =0x02142A48
	add r1, r4, #0
	ldr r0, [r0, #8]
	ldr r4, [r4, #0x38]
	add r2, r6, #0
	blx r4
_02061B74:
	pop {r4, r5, r6, pc}
	nop
_02061B78: .word 0x02142A48
_02061B7C: .word 0x02142BE8
_02061B80: .word 0x0209B260
_02061B84: .word 0x02142BEC
_02061B88: .word 0x0209B268
_02061B8C: .word 0x02142BD8
	thumb_func_end sub_02061AE8

	thumb_func_start sub_02061B90
sub_02061B90: ; 0x02061B90
	push {r3, r4, r5, lr}
	ldr r3, _02061BD0 ; =0x02142A48
	add r2, r1, #0
	ldr r0, [r3, #8]
	ldr r4, [r0, #0x74]
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _02061BCE
	ldr r1, [r3, #4]
	cmp r1, #0
	beq _02061BBE
	ldr r3, [r3, #0xc]
	mov r1, #0x18
	mul r1, r3
	ldr r3, _02061BD4 ; =0x02142BE8
	ldr r5, [r3, r1]
	ldr r3, _02061BD8 ; =0x0209B260
	str r5, [r3, #0x18]
	ldr r5, _02061BDC ; =0x02142BEC
	ldr r1, [r5, r1]
	str r1, [r3, #0x1c]
	ldr r3, _02061BE0 ; =0x0209B268
	b _02061BC8
_02061BBE:
	ldr r5, [r3, #0xc]
	mov r3, #0x18
	ldr r1, _02061BE4 ; =0x02142BD8
	mul r3, r5
	add r3, r1, r3
_02061BC8:
	add r1, r4, #0
	ldr r4, [r4, #0x3c]
	blx r4
_02061BCE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02061BD0: .word 0x02142A48
_02061BD4: .word 0x02142BE8
_02061BD8: .word 0x0209B260
_02061BDC: .word 0x02142BEC
_02061BE0: .word 0x0209B268
_02061BE4: .word 0x02142BD8
	thumb_func_end sub_02061B90

	thumb_func_start sub_02061BE8
sub_02061BE8: ; 0x02061BE8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02061D38 ; =0x02142A48
	add r5, r1, #0
	ldr r0, [r0, #8]
	add r6, r2, #0
	add r4, #0x38
	bl sub_02062AEC
	cmp r0, #0
	beq _02061C1E
	ldrh r2, [r4, #4]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl sub_02060B28
	lsl r0, r0, #0x1c
	ldr r2, [r4, #4]
	ldr r1, _02061D3C ; =0xFFFF0FFF
	lsr r0, r0, #0x10
	and r1, r2
	orr r0, r1
	str r0, [r4, #4]
_02061C1E:
	ldr r0, _02061D38 ; =0x02142A48
	ldr r1, [r0, #8]
	add r0, r1, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _02061CF4
	add r0, r1, #0
	add r0, #0x84
	ldr r2, [r0]
	mov r0, #1
	tst r0, r2
	beq _02061C4A
	add r1, #0x88
	ldrh r1, [r1]
	ldr r2, [r4, #4]
	ldr r0, _02061D40 ; =0xFFFFF3FF
	lsl r1, r1, #0x1e
	and r0, r2
	lsr r1, r1, #0x14
	orr r0, r1
	str r0, [r4, #4]
_02061C4A:
	ldr r0, _02061D38 ; =0x02142A48
	ldr r1, [r0, #8]
	add r0, r1, #0
	add r0, #0x84
	ldr r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _02061C6C
	add r1, #0x8a
	ldrh r1, [r1]
	ldr r2, [r4, #4]
	ldr r0, _02061D3C ; =0xFFFF0FFF
	lsl r1, r1, #0x1c
	and r0, r2
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r4, #4]
_02061C6C:
	ldr r0, _02061D38 ; =0x02142A48
	ldr r1, [r0, #8]
	add r0, r1, #0
	add r0, #0x84
	ldr r2, [r0]
	mov r0, #0x10
	tst r0, r2
	beq _02061C94
	add r1, #0x94
	ldr r2, [r4, #4]
	ldr r0, _02061D3C ; =0xFFFF0FFF
	ldrh r1, [r1]
	and r0, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	add r1, r2, r1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r4, #4]
_02061C94:
	ldr r0, _02061D38 ; =0x02142A48
	ldr r0, [r0, #8]
	add r1, r0, #0
	add r1, #0x84
	ldr r2, [r1]
	mov r1, #4
	tst r2, r1
	beq _02061CBE
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _02061CB6
	ldr r2, [r4]
	lsl r0, r1, #0xa
	orr r0, r2
	str r0, [r4]
	b _02061CBE
_02061CB6:
	ldr r1, [r4]
	ldr r0, _02061D44 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r4]
_02061CBE:
	ldr r0, _02061D38 ; =0x02142A48
	ldr r0, [r0, #8]
	add r1, r0, #0
	add r1, #0x84
	ldr r2, [r1]
	mov r1, #8
	tst r1, r2
	beq _02061CF4
	ldrh r2, [r4, #4]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	add r0, #0x8c
	ldr r0, [r0]
	ldr r3, [r4]
	ldr r2, _02061D40 ; =0xFFFFF3FF
	lsl r0, r0, #0xa
	and r2, r3
	orr r0, r2
	str r0, [r4]
	ldrh r2, [r4, #4]
	ldr r0, _02061D3C ; =0xFFFF0FFF
	asr r1, r1, #0xc
	and r2, r0
	lsl r0, r1, #0xc
	orr r0, r2
	strh r0, [r4, #4]
_02061CF4:
	ldr r3, _02061D38 ; =0x02142A48
	ldr r2, [r3, #8]
	ldr r1, [r2, #0x74]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02061D34
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _02061D1E
	ldr r3, [r3, #0xc]
	mov r0, #0x18
	mul r0, r3
	ldr r3, _02061D48 ; =0x02142BE8
	ldr r4, [r3, r0]
	ldr r3, _02061D4C ; =0x0209B260
	str r4, [r3, #0x18]
	ldr r4, _02061D50 ; =0x02142BEC
	ldr r0, [r4, r0]
	str r0, [r3, #0x1c]
	ldr r0, _02061D54 ; =0x0209B268
	b _02061D28
_02061D1E:
	ldr r4, [r3, #0xc]
	mov r3, #0x18
	ldr r0, _02061D58 ; =0x02142BD8
	mul r3, r4
	add r0, r0, r3
_02061D28:
	str r0, [sp]
	ldr r4, [r1, #0x40]
	add r0, r2, #0
	add r2, r5, #0
	add r3, r6, #0
	blx r4
_02061D34:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02061D38: .word 0x02142A48
_02061D3C: .word 0xFFFF0FFF
_02061D40: .word 0xFFFFF3FF
_02061D44: .word 0xFFFFEFFF
_02061D48: .word 0x02142BE8
_02061D4C: .word 0x0209B260
_02061D50: .word 0x02142BEC
_02061D54: .word 0x0209B268
_02061D58: .word 0x02142BD8
	thumb_func_end sub_02061BE8

	thumb_func_start sub_02061D5C
sub_02061D5C: ; 0x02061D5C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _02061DA8 ; =0x02142A48
	add r3, r2, #0
	ldr r2, [r5, #8]
	add r4, r1, #0
	ldr r1, [r2, #0x74]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _02061DA2
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02061D8E
	ldr r5, [r5, #0xc]
	mov r0, #0x18
	mul r0, r5
	ldr r5, _02061DAC ; =0x02142BE8
	ldr r6, [r5, r0]
	ldr r5, _02061DB0 ; =0x0209B260
	str r6, [r5, #0x18]
	ldr r6, _02061DB4 ; =0x02142BEC
	ldr r0, [r6, r0]
	str r0, [r5, #0x1c]
	ldr r0, _02061DB8 ; =0x0209B268
	b _02061D98
_02061D8E:
	ldr r6, [r5, #0xc]
	mov r5, #0x18
	ldr r0, _02061DBC ; =0x02142BD8
	mul r5, r6
	add r0, r0, r5
_02061D98:
	str r0, [sp]
	add r0, r2, #0
	add r2, r4, #0
	ldr r4, [r1, #0x44]
	blx r4
_02061DA2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02061DA8: .word 0x02142A48
_02061DAC: .word 0x02142BE8
_02061DB0: .word 0x0209B260
_02061DB4: .word 0x02142BEC
_02061DB8: .word 0x0209B268
_02061DBC: .word 0x02142BD8
	thumb_func_end sub_02061D5C

	thumb_func_start sub_02061DC0
sub_02061DC0: ; 0x02061DC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0206207C ; =0x02142A48
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x7c]
	str r0, [sp, #8]
	ldr r5, [r0, #0x70]
	mov r0, #2
	tst r0, r1
	bne _02061DD8
	b _02061F08
_02061DD8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02061EA0
	ldr r0, [r4, #4]
	mov r1, #0
	cmp r0, #0
	bne _02061DF4
	ldr r0, _02062080 ; =0x0209B260
	ldrh r2, [r0]
	ldr r0, _02062084 ; =0x0000FFFE
	cmp r2, r0
	beq _02061DF4
	mov r0, #1
	b _02061DF6
_02061DF4:
	mov r0, #0
_02061DF6:
	cmp r0, #0
	beq _02061E48
	ldr r0, _02062088 ; =0x021439D8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02061E32
	ldr r0, _0206208C ; =0x021435D8
	ldrh r0, [r0]
	lsl r1, r0, #2
	ldr r0, _02062090 ; =0x021435DC
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02061E48
	bl sub_02061A1C
	ldr r1, _0206207C ; =0x02142A48
	ldr r0, _02062094 ; =0x021431D8
	ldr r1, [r1, #0xc]
	lsl r1, r1, #0x10
	lsr r2, r1, #0xd
	ldr r1, _02062098 ; =0x02142AD8
	ldrh r1, [r1, r2]
	lsl r1, r1, #5
	add r1, r0, r1
	ldr r0, _0206208C ; =0x021435D8
	ldrh r0, [r0]
	lsl r2, r0, #2
	ldr r0, _02062090 ; =0x021435DC
	str r1, [r0, r2]
	b _02061E48
_02061E32:
	bl sub_02061A1C
	ldr r1, _0206207C ; =0x02142A48
	ldr r0, _02062094 ; =0x021431D8
	ldr r1, [r1, #0xc]
	lsl r1, r1, #0x10
	lsr r2, r1, #0xd
	ldr r1, _02062098 ; =0x02142AD8
	ldrh r1, [r1, r2]
	lsl r1, r1, #5
	add r1, r0, r1
_02061E48:
	ldr r0, _0206207C ; =0x02142A48
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02061E68
	ldr r2, [r0, #0xc]
	mov r0, #0x18
	mul r0, r2
	ldr r2, _0206209C ; =0x02142BE8
	ldr r3, [r2, r0]
	ldr r2, _02062080 ; =0x0209B260
	str r3, [r2, #0x18]
	ldr r3, _020620A0 ; =0x02142BEC
	ldr r0, [r3, r0]
	str r0, [r2, #0x1c]
	ldr r0, _020620A4 ; =0x0209B268
	b _02061E72
_02061E68:
	ldr r2, [r0, #0xc]
	mov r0, #0x18
	ldr r3, _020620A8 ; =0x02142BD8
	mul r0, r2
	add r0, r3, r0
_02061E72:
	bl sub_020638F8
	ldr r0, _02062080 ; =0x0209B260
	ldr r1, [r0, #4]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02061E86
	mov r0, #1
	b _02061E88
_02061E86:
	mov r0, #0
_02061E88:
	cmp r0, #0
	beq _02061E96
	add r0, r6, #0
	bl sub_02063AA4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02061E96:
	add r0, r6, #0
	bl sub_02063A38
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02061EA0:
	ldr r1, [r4, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r1, #2
	ldr r1, _020620AC ; =0x02142A58
	ldr r1, [r1, r2]
	bl sub_02063908
	add r0, r4, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02061ED0
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0206209C ; =0x02142BE8
	ldr r1, [r0, r2]
	ldr r0, _02062080 ; =0x0209B260
	str r1, [r0, #0x18]
	ldr r1, _020620A0 ; =0x02142BEC
	ldr r1, [r1, r2]
	str r1, [r0, #0x1c]
	ldr r0, _020620A4 ; =0x0209B268
	b _02061EDA
_02061ED0:
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	ldr r2, _020620A8 ; =0x02142BD8
	mul r0, r1
	add r0, r2, r0
_02061EDA:
	bl sub_020638C0
	ldr r0, _02062080 ; =0x0209B260
	ldr r1, [r0, #4]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02061EEE
	mov r0, #1
	b _02061EF0
_02061EEE:
	mov r0, #0
_02061EF0:
	cmp r0, #0
	beq _02061EFE
	add r0, r6, #0
	bl sub_02063AA4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02061EFE:
	add r0, r6, #0
	bl sub_02063A38
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02061F08:
	cmp r5, #0
	bne _02061F0E
	b _02062076
_02061F0E:
	ldr r7, _02062080 ; =0x0209B260
_02061F10:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02061F18
	b _0206206E
_02061F18:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _02061FF8
	str r0, [sp, #4]
	str r5, [r0, #0x74]
	add r1, r5, #0
	bl sub_0206390C
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_020638B4
	ldr r0, [sp, #4]
	bl sub_02063958
	ldr r0, [r4, #4]
	mov r1, #0
	cmp r0, #0
	bne _02061F4E
	ldrh r2, [r7]
	ldr r0, _02062084 ; =0x0000FFFE
	cmp r2, r0
	beq _02061F4E
	mov r0, #1
	b _02061F50
_02061F4E:
	mov r0, #0
_02061F50:
	cmp r0, #0
	beq _02061FA2
	ldr r0, _02062088 ; =0x021439D8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02061F8E
	ldr r0, _0206208C ; =0x021435D8
	ldrh r0, [r0]
	lsl r1, r0, #2
	ldr r0, _0206208C ; =0x021435D8
	add r0, r0, r1
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02061FA2
	bl sub_02061A1C
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x10
	lsr r1, r0, #0xd
	ldr r0, _02062098 ; =0x02142AD8
	ldrh r0, [r0, r1]
	lsl r1, r0, #5
	ldr r0, _02062094 ; =0x021431D8
	add r1, r0, r1
	ldr r0, _0206208C ; =0x021435D8
	ldrh r0, [r0]
	lsl r2, r0, #2
	ldr r0, _0206208C ; =0x021435D8
	add r0, r0, r2
	str r1, [r0, #4]
	b _02061FA2
_02061F8E:
	bl sub_02061A1C
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x10
	lsr r1, r0, #0xd
	ldr r0, _02062098 ; =0x02142AD8
	ldrh r0, [r0, r1]
	lsl r1, r0, #5
	ldr r0, _02062094 ; =0x021431D8
	add r1, r0, r1
_02061FA2:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _02061FBE
	mov r2, #0x18
	mul r2, r0
	ldr r0, _020620A8 ; =0x02142BD8
	add r2, r0, r2
	ldr r0, [r2, #0x10]
	str r0, [r7, #0x18]
	ldr r0, [r2, #0x14]
	str r0, [r7, #0x1c]
	ldr r0, _020620A4 ; =0x0209B268
	b _02061FC6
_02061FBE:
	mov r2, #0x18
	mul r2, r0
	ldr r0, _020620A8 ; =0x02142BD8
	add r0, r0, r2
_02061FC6:
	bl sub_020638F8
	mov r0, #0
	ldr r1, [r7, #4]
	mvn r0, r0
	cmp r1, r0
	beq _02061FD8
	mov r0, #1
	b _02061FDA
_02061FD8:
	mov r0, #0
_02061FDA:
	cmp r0, #0
	beq _02061FE6
	add r0, r6, #0
	bl sub_02063AA4
	b _02061FEC
_02061FE6:
	add r0, r6, #0
	bl sub_02063A38
_02061FEC:
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl sub_02063A00
	b _0206206E
_02061FF8:
	str r0, [sp]
	add r1, r5, #0
	str r5, [r0, #0x74]
	bl sub_0206390C
	ldr r0, [sp]
	bl sub_02063958
	ldr r1, [r4, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r1, #2
	ldr r1, _020620AC ; =0x02142A58
	ldr r1, [r1, r2]
	bl sub_02063908
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _02062034
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _020620A8 ; =0x02142BD8
	add r1, r0, r2
	ldr r0, [r1, #0x10]
	str r0, [r7, #0x18]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x1c]
	ldr r0, _020620A4 ; =0x0209B268
	b _0206203E
_02062034:
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _020620A8 ; =0x02142BD8
	add r0, r0, r2
_0206203E:
	bl sub_020638C0
	mov r0, #0
	ldr r1, [r7, #4]
	mvn r0, r0
	cmp r1, r0
	beq _02062050
	mov r0, #1
	b _02062052
_02062050:
	mov r0, #0
_02062052:
	cmp r0, #0
	beq _0206205E
	add r0, r6, #0
	bl sub_02063AA4
	b _02062064
_0206205E:
	add r0, r6, #0
	bl sub_02063A38
_02062064:
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl sub_02063A00
_0206206E:
	ldr r5, [r5, #0x30]
	cmp r5, #0
	beq _02062076
	b _02061F10
_02062076:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0206207C: .word 0x02142A48
_02062080: .word 0x0209B260
_02062084: .word 0x0000FFFE
_02062088: .word 0x021439D8
_0206208C: .word 0x021435D8
_02062090: .word 0x021435DC
_02062094: .word 0x021431D8
_02062098: .word 0x02142AD8
_0206209C: .word 0x02142BE8
_020620A0: .word 0x02142BEC
_020620A4: .word 0x0209B268
_020620A8: .word 0x02142BD8
_020620AC: .word 0x02142A58
	thumb_func_end sub_02061DC0

	thumb_func_start sub_020620B0
sub_020620B0: ; 0x020620B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x4e
	ldrh r0, [r0]
	ldr r7, [r5, #0x30]
	cmp r0, #0
	bne _020620EE
	mov r0, #0
	ldr r1, [r5, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _020620CC
	mov r0, #1
	b _020620CE
_020620CC:
	mov r0, #0
_020620CE:
	cmp r0, #0
	beq _020620E6
	ldr r0, _020621A0 ; =0x0209B260
	str r1, [r0, #4]
	add r0, r7, #0
	bl sub_02061DC0
	mov r1, #0
	ldr r0, _020621A0 ; =0x0209B260
	mvn r1, r1
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020620E6:
	add r0, r7, #0
	bl sub_02061DC0
	pop {r3, r4, r5, r6, r7, pc}
_020620EE:
	bl sub_0206274C
	add r0, r5, #0
	add r0, #0x4e
	ldrh r1, [r0]
	mov r0, #8
	tst r0, r1
	beq _0206212C
	mov r0, #0x4a
	ldrsh r4, [r5, r0]
	mov r0, #0x48
	ldrsh r6, [r5, r0]
	ldr r0, _020621A4 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_02063910
	cmp r0, #0
	beq _02062114
	neg r6, r6
_02062114:
	ldr r0, _020621A4 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_0206391C
	cmp r0, #0
	beq _02062122
	neg r4, r4
_02062122:
	lsl r0, r6, #0xc
	lsl r1, r4, #0xc
	mov r2, #0
	bl sub_020628D0
_0206212C:
	add r0, r5, #0
	add r0, #0x4e
	ldrh r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02062152
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	ldr r2, _020621A8 ; =0x020946BC
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl sub_02062A38
_02062152:
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	mov r2, #2
	tst r0, r2
	beq _02062168
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	lsl r2, r2, #0xb
	bl sub_02062968
_02062168:
	mov r0, #0
	ldr r1, [r5, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _02062176
	mov r0, #1
	b _02062178
_02062176:
	mov r0, #0
_02062178:
	cmp r0, #0
	beq _02062190
	ldr r0, _020621A0 ; =0x0209B260
	str r1, [r0, #4]
	add r0, r7, #0
	bl sub_02061DC0
	mov r1, #0
	ldr r0, _020621A0 ; =0x0209B260
	mvn r1, r1
	str r1, [r0, #4]
	b _02062196
_02062190:
	add r0, r7, #0
	bl sub_02061DC0
_02062196:
	mov r0, #1
	bl sub_0206289C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020621A0: .word 0x0209B260
_020621A4: .word 0x02142A48
_020621A8: .word 0x020946BC
	thumb_func_end sub_020620B0

	thumb_func_start sub_020621AC
sub_020621AC: ; 0x020621AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0206222E
	ldr r7, [r5]
	bl sub_0206274C
	ldrh r1, [r5, #0x1e]
	mov r0, #8
	tst r0, r1
	beq _020621F2
	mov r0, #0x1a
	ldrsh r4, [r5, r0]
	mov r0, #0x18
	ldrsh r6, [r5, r0]
	ldr r0, _02062230 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_02063910
	cmp r0, #0
	beq _020621DA
	neg r6, r6
_020621DA:
	ldr r0, _02062230 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_0206391C
	cmp r0, #0
	beq _020621E8
	neg r4, r4
_020621E8:
	lsl r0, r6, #0xc
	lsl r1, r4, #0xc
	mov r2, #0
	bl sub_020628D0
_020621F2:
	ldrh r1, [r5, #0x1e]
	mov r0, #4
	tst r0, r1
	beq _02062210
	ldrh r0, [r5, #0x1c]
	ldr r2, _02062234 ; =0x020946BC
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl sub_02062A38
_02062210:
	ldrh r0, [r5, #0x1e]
	mov r2, #2
	tst r0, r2
	beq _02062222
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r2, r2, #0xb
	bl sub_02062968
_02062222:
	add r0, r7, #0
	bl sub_020620B0
	mov r0, #1
	bl sub_0206289C
_0206222E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02062230: .word 0x02142A48
_02062234: .word 0x020946BC
	thumb_func_end sub_020621AC

	thumb_func_start sub_02062238
sub_02062238: ; 0x02062238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02063888
	mov r4, #0
	str r4, [r5, #0x70]
	str r4, [r5, #0x74]
	str r4, [r5, #0x78]
	add r0, r5, #0
	str r4, [r5, #0x7c]
	add r0, #0x80
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x84
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x88
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x8a
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x8c
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x90
	str r4, [r0]
	add r5, #0x94
	strh r4, [r5]
	ldr r0, _020622B0 ; =0x02142A48
	ldr r1, _020622B4 ; =0x0000FFFE
	str r4, [r0, #0xc]
	ldr r0, _020622B8 ; =0x0209B260
	ldr r5, _020622BC ; =0x021431D8
	strh r1, [r0]
	sub r6, r4, #1
	mov r7, #0x10
_02062282:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, r7, #0
	blx sub_0207869C
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #0x20
	blt _02062282
	ldr r1, _020622B0 ; =0x02142A48
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r2, #1
	ldr r1, _020622C0 ; =0x02142AD8
	lsl r2, r2, #8
	blx sub_0207869C
	ldr r0, _020622B0 ; =0x02142A48
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020622B0: .word 0x02142A48
_020622B4: .word 0x0000FFFE
_020622B8: .word 0x0209B260
_020622BC: .word 0x021431D8
_020622C0: .word 0x02142AD8
	thumb_func_end sub_02062238

	thumb_func_start sub_020622C4
sub_020622C4: ; 0x020622C4
	ldr r2, [r0, #0x70]
	str r2, [r1, #0x30]
	str r1, [r0, #0x70]
	bx lr
	thumb_func_end sub_020622C4

	thumb_func_start sub_020622CC
sub_020622CC: ; 0x020622CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x48
	blx sub_02078624
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #3
	str r0, [r4, #0x14]
	ldr r0, _020622F4 ; =sub_02061AE8
	str r0, [r4, #0x18]
	ldr r0, _020622F8 ; =sub_02061B90
	str r0, [r4, #0x1c]
	ldr r0, _020622FC ; =sub_02061BE8
	str r0, [r4, #0x20]
	ldr r0, _02062300 ; =sub_02061D5C
	str r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
_020622F4: .word sub_02061AE8
_020622F8: .word sub_02061B90
_020622FC: .word sub_02061BE8
_02062300: .word sub_02061D5C
	thumb_func_end sub_020622CC

	thumb_func_start sub_02062304
sub_02062304: ; 0x02062304
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02062354 ; =0x02142A48
	mov r4, #0
	str r0, [r6, #8]
	ldr r1, _02062358 ; =0x0000FFFE
	ldr r0, _0206235C ; =0x0209B260
	str r4, [r6, #0xc]
	strh r1, [r0]
	ldrh r0, [r6]
	cmp r0, #0
	ble _02062334
	ldr r5, _02062360 ; =0x021431D8
	sub r7, r4, #1
_0206231E:
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x10
	mov r2, #0x10
	blx sub_0207869C
	ldrh r0, [r6]
	add r4, r4, #1
	add r5, #0x20
	cmp r4, r0
	blt _0206231E
_02062334:
	ldr r1, _02062354 ; =0x02142A48
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r2, #1
	ldr r1, _02062364 ; =0x02142AD8
	lsl r2, r2, #8
	blx sub_0207869C
	ldr r0, _02062368 ; =0x04000444
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #0x10]
	bl sub_020619AC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02062354: .word 0x02142A48
_02062358: .word 0x0000FFFE
_0206235C: .word 0x0209B260
_02062360: .word 0x021431D8
_02062364: .word 0x02142AD8
_02062368: .word 0x04000444
	thumb_func_end sub_02062304

	thumb_func_start sub_0206236C
sub_0206236C: ; 0x0206236C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	add r0, r1, #0
	str r1, [r5, #0x7c]
	tst r0, r2
	beq _0206237E
	ldr r0, _020623C4 ; =0x02142A48
	str r2, [r0, #4]
_0206237E:
	mov r0, #2
	tst r0, r1
	beq _020623BC
	ldr r4, [r5, #0x70]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _020623BC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	str r4, [r5, #0x74]
	beq _020623AE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206390C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	add r0, r5, #0
	bl sub_020638B4
	add r0, r5, #0
	bl sub_02063958
	b _020623BC
_020623AE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206390C
	add r0, r5, #0
	bl sub_02063958
_020623BC:
	add r0, r5, #0
	bl sub_02062304
	pop {r3, r4, r5, pc}
	.align 2, 0
_020623C4: .word 0x02142A48
	thumb_func_end sub_0206236C

	thumb_func_start sub_020623C8
sub_020623C8: ; 0x020623C8
	push {r3, lr}
	ldr r0, _02062400 ; =0x04000448
	mov r2, #1
	ldr r1, _02062404 ; =0x02142A48
	str r2, [r0]
	ldr r0, [r1, #8]
	ldr r3, [r0, #0x7c]
	cmp r3, #0
	beq _020623F8
	tst r2, r3
	beq _020623E2
	mov r2, #0
	str r2, [r1, #4]
_020623E2:
	mov r1, #2
	tst r1, r3
	beq _020623F0
	mov r1, #0
	str r1, [r0, #0x74]
	bl sub_02063A00
_020623F0:
	ldr r0, _02062404 ; =0x02142A48
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0x7c]
_020623F8:
	ldr r0, _02062404 ; =0x02142A48
	mov r1, #0
	str r1, [r0, #8]
	pop {r3, pc}
	.align 2, 0
_02062400: .word 0x04000448
_02062404: .word 0x02142A48
	thumb_func_end sub_020623C8

	thumb_func_start sub_02062408
sub_02062408: ; 0x02062408
	push {r3, r4, r5, lr}
	ldr r1, _02062450 ; =0x02142A48
	add r5, r0, #0
	ldr r1, [r1, #8]
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	beq _02062448
	bl sub_02062FE0
	add r4, r0, #0
	mov r0, #1
	bl sub_02062FBC
	ldr r0, _02062450 ; =0x02142A48
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02062FD4
	add r0, r5, #0
	bl sub_02061DC0
	mov r0, #0
	bl sub_02062FBC
	add r0, r4, #0
	bl sub_02062FD4
	bl sub_02062FC8
	pop {r3, r4, r5, pc}
_02062448:
	bl sub_02061DC0
	pop {r3, r4, r5, pc}
	nop
_02062450: .word 0x02142A48
	thumb_func_end sub_02062408

	thumb_func_start sub_02062454
sub_02062454: ; 0x02062454
	push {r3, r4, r5, lr}
	ldr r1, _0206249C ; =0x02142A48
	add r5, r0, #0
	ldr r1, [r1, #8]
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	beq _02062494
	bl sub_02062FE0
	add r4, r0, #0
	mov r0, #1
	bl sub_02062FBC
	ldr r0, _0206249C ; =0x02142A48
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02062FD4
	add r0, r5, #0
	bl sub_020620B0
	mov r0, #0
	bl sub_02062FBC
	add r0, r4, #0
	bl sub_02062FD4
	bl sub_02062FC8
	pop {r3, r4, r5, pc}
_02062494:
	bl sub_020620B0
	pop {r3, r4, r5, pc}
	nop
_0206249C: .word 0x02142A48
	thumb_func_end sub_02062454

	thumb_func_start sub_020624A0
sub_020624A0: ; 0x020624A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #1
	beq _020624AE
	b _02062612
_020624AE:
	ldr r0, [r5]
	mov r2, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _020624D0
	ldr r0, _02062698 ; =0x021435D8
	add r1, r2, #0
_020624BC:
	lsl r3, r2, #2
	add r3, r0, r3
	str r1, [r3, #4]
	ldr r3, [r5]
	add r2, r2, #1
	lsl r2, r2, #0x10
	ldrh r3, [r3, #2]
	lsr r2, r2, #0x10
	cmp r2, r3
	blo _020624BC
_020624D0:
	ldr r0, _0206269C ; =0x021439D8
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0206258A
	bl sub_02062FE0
	str r0, [sp, #0x14]
	mov r0, #1
	bl sub_02062FBC
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02062FD4
	ldr r1, [r5]
	mov r7, #0
	ldrh r0, [r1]
	cmp r0, #0
	bls _02062578
_02062504:
	ldr r1, [r1, #4]
	lsl r0, r7, #3
	add r6, r1, r0
	ldrh r1, [r6, #6]
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, _02062698 ; =0x021435D8
	strh r1, [r0]
	bl sub_0206274C
	mov r0, #4
	ldrsh r4, [r6, r0]
	mov r0, #2
	ldrsh r6, [r6, r0]
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_02063910
	cmp r0, #0
	beq _0206253C
	neg r6, r6
_0206253C:
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_0206391C
	cmp r0, #0
	beq _0206254A
	neg r4, r4
_0206254A:
	lsl r0, r6, #0xc
	lsl r1, r4, #0xc
	mov r2, #0
	bl sub_020628D0
	ldr r1, [sp, #4]
	mov r0, #0x5c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r0, r0, r2
	bl sub_020620B0
	mov r0, #1
	bl sub_0206289C
	add r0, r7, #1
	lsl r0, r0, #0x10
	ldr r1, [r5]
	lsr r7, r0, #0x10
	ldrh r0, [r1]
	cmp r7, r0
	blo _02062504
_02062578:
	mov r0, #0
	bl sub_02062FBC
	ldr r0, [sp, #0x14]
	bl sub_02062FD4
	bl sub_02062FC8
	b _02062608
_0206258A:
	ldr r1, [r5]
	mov r7, #0
	ldrh r0, [r1]
	cmp r0, #0
	bls _02062608
_02062594:
	ldr r1, [r1, #4]
	lsl r0, r7, #3
	add r6, r1, r0
	ldrh r1, [r6, #6]
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, [sp]
	str r0, [sp, #8]
	ldr r0, _02062698 ; =0x021435D8
	strh r1, [r0]
	bl sub_0206274C
	mov r0, #4
	ldrsh r4, [r6, r0]
	mov r0, #2
	ldrsh r6, [r6, r0]
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_02063910
	cmp r0, #0
	beq _020625CC
	neg r6, r6
_020625CC:
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_0206391C
	cmp r0, #0
	beq _020625DA
	neg r4, r4
_020625DA:
	lsl r0, r6, #0xc
	lsl r1, r4, #0xc
	mov r2, #0
	bl sub_020628D0
	ldr r1, [sp]
	mov r0, #0x5c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r0, r0, r2
	bl sub_020620B0
	mov r0, #1
	bl sub_0206289C
	add r0, r7, #1
	lsl r0, r0, #0x10
	ldr r1, [r5]
	lsr r7, r0, #0x10
	ldrh r0, [r1]
	cmp r7, r0
	blo _02062594
_02062608:
	ldr r0, _0206269C ; =0x021439D8
	mov r1, #0
	str r1, [r0, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02062612:
	ldr r0, _020626A0 ; =0x02142A48
	ldr r6, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _02062670
	bl sub_02062FE0
	str r0, [sp, #0x10]
	mov r0, #1
	bl sub_02062FBC
	ldr r0, _020626A0 ; =0x02142A48
	ldr r0, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02062FD4
	ldr r0, [r5]
	mov r4, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _0206265C
	mov r7, #0x28
_02062644:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_020621AC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	blo _02062644
_0206265C:
	mov r0, #0
	bl sub_02062FBC
	ldr r0, [sp, #0x10]
	bl sub_02062FD4
	bl sub_02062FC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02062670:
	ldr r0, [r5]
	mov r4, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _02062694
	mov r7, #0x28
_0206267C:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_020621AC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	blo _0206267C
_02062694:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02062698: .word 0x021435D8
_0206269C: .word 0x021439D8
_020626A0: .word 0x02142A48
	thumb_func_end sub_020624A0

	thumb_func_start sub_020626A4
sub_020626A4: ; 0x020626A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x5a
	ldrh r0, [r0]
	cmp r0, #0
	bne _020626BA
	add r5, #0x34
	add r0, r5, #0
	bl sub_020624A0
	pop {r4, r5, r6, pc}
_020626BA:
	bl sub_0206274C
	add r0, r5, #0
	add r0, #0x5a
	ldrh r1, [r0]
	mov r0, #8
	tst r0, r1
	beq _020626F8
	mov r0, #0x56
	ldrsh r4, [r5, r0]
	mov r0, #0x54
	ldrsh r6, [r5, r0]
	ldr r0, _02062744 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_02063910
	cmp r0, #0
	beq _020626E0
	neg r6, r6
_020626E0:
	ldr r0, _02062744 ; =0x02142A48
	ldr r0, [r0, #8]
	bl sub_0206391C
	cmp r0, #0
	beq _020626EE
	neg r4, r4
_020626EE:
	lsl r0, r6, #0xc
	lsl r1, r4, #0xc
	mov r2, #0
	bl sub_020628D0
_020626F8:
	add r0, r5, #0
	add r0, #0x5a
	ldrh r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _0206271E
	add r0, r5, #0
	add r0, #0x58
	ldrh r0, [r0]
	ldr r2, _02062748 ; =0x020946BC
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl sub_02062A38
_0206271E:
	add r0, r5, #0
	add r0, #0x5a
	ldrh r0, [r0]
	mov r2, #2
	tst r0, r2
	beq _02062734
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	lsl r2, r2, #0xb
	bl sub_02062968
_02062734:
	add r5, #0x34
	add r0, r5, #0
	bl sub_020624A0
	mov r0, #1
	bl sub_0206289C
	pop {r4, r5, r6, pc}
	.align 2, 0
_02062744: .word 0x02142A48
_02062748: .word 0x020946BC
	thumb_func_end sub_020626A4

	thumb_func_start sub_0206274C
sub_0206274C: ; 0x0206274C
	push {r4, r5, r6, r7}
	ldr r1, _0206287C ; =0x02142A48
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x7c]
	mov r0, #1
	tst r2, r0
	bne _02062806
	ldr r2, [r1, #0xc]
	lsl r1, r2, #0x10
	add r6, r2, #1
	lsr r5, r1, #0x10
	cmp r6, #0x20
	blt _02062768
	mov r0, #0
_02062768:
	cmp r0, #0
	beq _020627D0
	ldr r0, _0206287C ; =0x02142A48
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02062790
	ldr r2, [r0, #0xc]
	mov r0, #0x18
	add r1, r2, #0
	mul r1, r0
	ldr r4, _02062880 ; =0x02142BE8
	mul r0, r6
	ldr r3, [r4, r1]
	str r3, [r4, r0]
	ldr r3, _02062884 ; =0x02142BEC
	ldr r1, [r3, r1]
	str r1, [r3, r0]
	lsl r0, r2, #2
	ldr r2, _02062888 ; =0x02142A58
	b _020627C6
_02062790:
	ldr r7, [r0, #0xc]
	mov r0, #0x18
	add r4, r7, #0
	mul r4, r0
	ldr r1, _0206288C ; =0x02142BD8
	mul r0, r6
	add r3, r1, r4
	add r2, r1, r0
	mov ip, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _02062890 ; =0x02142ED8
	mov r0, ip
	add r2, r1, r4
	add r3, r1, r0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r2, _02062888 ; =0x02142A58
	lsl r0, r7, #2
_020627C6:
	ldr r1, [r2, r0]
	lsl r0, r6, #2
	str r1, [r2, r0]
	ldr r0, _0206287C ; =0x02142A48
	str r6, [r0, #0xc]
_020627D0:
	ldr r0, _0206287C ; =0x02142A48
	lsl r1, r5, #3
	ldr r5, _02062894 ; =0x02142AD8
	ldr r0, [r0, #0xc]
	ldrh r2, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	add r4, r5, r1
	strh r2, [r5, r0]
	ldrh r2, [r4, #2]
	add r3, r5, r0
	strh r2, [r3, #2]
	ldrh r2, [r4, #4]
	strh r2, [r3, #4]
	ldrh r2, [r4, #6]
	strh r2, [r3, #6]
	ldr r2, _02062898 ; =0x02142ADC
	ldrh r1, [r2, r1]
	cmp r1, #1
	bne _02062800
	mov r1, #2
	strh r1, [r2, r0]
	pop {r4, r5, r6, r7}
	bx lr
_02062800:
	strh r1, [r2, r0]
	pop {r4, r5, r6, r7}
	bx lr
_02062806:
	ldr r1, [r1, #0xc]
	add r5, r1, #1
	cmp r5, #0x20
	blt _02062810
	mov r0, #0
_02062810:
	cmp r0, #0
	beq _02062878
	ldr r0, _0206287C ; =0x02142A48
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206283A
	ldr r0, [r0, #0xc]
	mov r1, #0x18
	add r4, r0, #0
	add r3, r5, #0
	ldr r2, _02062880 ; =0x02142BE8
	mul r4, r1
	mul r3, r1
	ldr r1, [r2, r4]
	lsl r0, r0, #2
	str r1, [r2, r3]
	ldr r2, _02062884 ; =0x02142BEC
	ldr r1, [r2, r4]
	str r1, [r2, r3]
	ldr r2, _02062888 ; =0x02142A58
	b _0206286E
_0206283A:
	ldr r4, [r0, #0xc]
	mov r0, #0x18
	add r3, r4, #0
	add r2, r5, #0
	mul r3, r0
	mul r2, r0
	ldr r0, _0206288C ; =0x02142BD8
	add r7, r0, r3
	add r6, r0, r2
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, _02062890 ; =0x02142ED8
	add r3, r0, r3
	add r2, r0, r2
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, _02062888 ; =0x02142A58
	lsl r0, r4, #2
_0206286E:
	ldr r1, [r2, r0]
	lsl r0, r5, #2
	str r1, [r2, r0]
	ldr r0, _0206287C ; =0x02142A48
	str r5, [r0, #0xc]
_02062878:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0206287C: .word 0x02142A48
_02062880: .word 0x02142BE8
_02062884: .word 0x02142BEC
_02062888: .word 0x02142A58
_0206288C: .word 0x02142BD8
_02062890: .word 0x02142ED8
_02062894: .word 0x02142AD8
_02062898: .word 0x02142ADC
	thumb_func_end sub_0206274C

	thumb_func_start sub_0206289C
sub_0206289C: ; 0x0206289C
	ldr r0, _020628C4 ; =0x02142A48
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bgt _020628A8
	mov r0, #1
	b _020628AA
_020628A8:
	mov r0, #0
_020628AA:
	cmp r0, #0
	bne _020628C2
	ldr r0, _020628C4 ; =0x02142A48
	ldr r1, [r0, #0xc]
	sub r2, r1, #1
	str r2, [r0, #0xc]
	ldr r0, _020628C8 ; =0x0209B260
	ldrh r1, [r0]
	cmp r1, r2
	ble _020628C2
	ldr r1, _020628CC ; =0x0000FFFE
	strh r1, [r0]
_020628C2:
	bx lr
	.align 2, 0
_020628C4: .word 0x02142A48
_020628C8: .word 0x0209B260
_020628CC: .word 0x0000FFFE
	thumb_func_end sub_0206289C

	thumb_func_start sub_020628D0
sub_020628D0: ; 0x020628D0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r2, #0
	ldr r2, _02062950 ; =0x02142A48
	ldr r3, [r2, #4]
	cmp r3, #0
	beq _02062902
	ldr r3, [r2, #0xc]
	mov r2, #0x18
	ldr r6, _02062954 ; =0x02142BE8
	mul r2, r3
	ldr r5, [r6, r2]
	add sp, #0x18
	add r0, r5, r0
	ldr r5, _02062958 ; =0x02142BEC
	str r0, [r6, r2]
	ldr r0, [r5, r2]
	add r0, r0, r1
	str r0, [r5, r2]
	ldr r2, _0206295C ; =0x02142A58
	lsl r1, r3, #2
	ldr r0, [r2, r1]
	add r0, r0, r4
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_02062902:
	mov r5, #1
	lsl r5, r5, #0xc
	mov r3, #0
	str r0, [sp, #0x10]
	str r5, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r5, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r2, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r2, _02062960 ; =0x02142BD8
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	bl sub_02062AF8
	ldr r0, _02062950 ; =0x02142A48
	ldr r2, _02062964 ; =0x02142ED8
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl sub_02062AF8
	ldr r0, _02062950 ; =0x02142A48
	ldr r2, _0206295C ; =0x02142A58
	ldr r0, [r0, #0xc]
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	add r0, r0, r4
	str r0, [r2, r1]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_02062950: .word 0x02142A48
_02062954: .word 0x02142BE8
_02062958: .word 0x02142BEC
_0206295C: .word 0x02142A58
_02062960: .word 0x02142BD8
_02062964: .word 0x02142ED8
	thumb_func_end sub_020628D0

	thumb_func_start sub_02062968
sub_02062968: ; 0x02062968
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _02062A20 ; =0x02142A48
	ldr r3, _02062A24 ; =0x02142BD8
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	add r0, sp, #0
	add r2, r3, r2
	str r4, [sp]
	str r5, [sp, #0xc]
	bl sub_02062AF8
	add r0, r4, #0
	bl FX_Inv
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	bl FX_Inv
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _02062A20 ; =0x02142A48
	ldr r2, _02062A28 ; =0x02142ED8
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl sub_02062AF8
	ldr r0, _02062A20 ; =0x02142A48
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020629DC
	ldr r0, _02062A2C ; =0x0209B260
	ldrh r1, [r0]
	ldr r0, _02062A30 ; =0x0000FFFE
	cmp r1, r0
	beq _020629DC
	mov r0, #1
	b _020629DE
_020629DC:
	mov r0, #0
_020629DE:
	cmp r0, #0
	bne _020629EA
	ldr r0, _02062A20 ; =0x02142A48
	ldr r1, [r0, #0xc]
	ldr r0, _02062A2C ; =0x0209B260
	strh r1, [r0]
_020629EA:
	ldr r2, _02062A20 ; =0x02142A48
	ldr r1, _02062A34 ; =0x02142AD8
	ldr r0, [r2, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	add r0, r1, r0
	ldrh r1, [r0, #4]
	cmp r1, #3
	bhi _02062A1C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02062A08: ; jump table
	.short _02062A10 - _02062A08 - 2 ; case 0
	.short _02062A1C - _02062A08 - 2 ; case 1
	.short _02062A10 - _02062A08 - 2 ; case 2
	.short _02062A10 - _02062A08 - 2 ; case 3
_02062A10:
	ldrh r3, [r2, #2]
	add r1, r3, #1
	strh r1, [r2, #2]
	strh r3, [r0, #2]
	mov r1, #1
	strh r1, [r0, #4]
_02062A1C:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02062A20: .word 0x02142A48
_02062A24: .word 0x02142BD8
_02062A28: .word 0x02142ED8
_02062A2C: .word 0x0209B260
_02062A30: .word 0x0000FFFE
_02062A34: .word 0x02142AD8
	thumb_func_end sub_02062968

	thumb_func_start sub_02062A38
sub_02062A38: ; 0x02062A38
	push {r3, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	neg r0, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _02062AD4 ; =0x02142A48
	str r1, [sp]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r2, _02062AD8 ; =0x02142BD8
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	bl sub_02062AF8
	ldr r0, _02062AD4 ; =0x02142A48
	ldr r2, _02062ADC ; =0x02142ED8
	ldr r1, [r0, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl sub_02062AF8
	ldr r0, _02062AD4 ; =0x02142A48
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02062A8E
	ldr r0, _02062AE0 ; =0x0209B260
	ldrh r1, [r0]
	ldr r0, _02062AE4 ; =0x0000FFFE
	cmp r1, r0
	beq _02062A8E
	mov r0, #1
	b _02062A90
_02062A8E:
	mov r0, #0
_02062A90:
	cmp r0, #0
	bne _02062A9C
	ldr r0, _02062AD4 ; =0x02142A48
	ldr r1, [r0, #0xc]
	ldr r0, _02062AE0 ; =0x0209B260
	strh r1, [r0]
_02062A9C:
	ldr r2, _02062AD4 ; =0x02142A48
	ldr r1, _02062AE8 ; =0x02142AD8
	ldr r0, [r2, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	add r0, r1, r0
	ldrh r1, [r0, #4]
	cmp r1, #3
	bhi _02062ACE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02062ABA: ; jump table
	.short _02062AC2 - _02062ABA - 2 ; case 0
	.short _02062ACE - _02062ABA - 2 ; case 1
	.short _02062AC2 - _02062ABA - 2 ; case 2
	.short _02062AC2 - _02062ABA - 2 ; case 3
_02062AC2:
	ldrh r3, [r2, #2]
	add r1, r3, #1
	strh r1, [r2, #2]
	strh r3, [r0, #2]
	mov r1, #1
	strh r1, [r0, #4]
_02062ACE:
	add sp, #0x18
	pop {r3, pc}
	nop
_02062AD4: .word 0x02142A48
_02062AD8: .word 0x02142BD8
_02062ADC: .word 0x02142ED8
_02062AE0: .word 0x0209B260
_02062AE4: .word 0x0000FFFE
_02062AE8: .word 0x02142AD8
	thumb_func_end sub_02062A38

	thumb_func_start sub_02062AEC
sub_02062AEC: ; 0x02062AEC
	ldr r0, [r0, #0x78]
	bx lr
	thumb_func_end sub_02062AEC

	thumb_func_start sub_02062AF0
sub_02062AF0: ; 0x02062AF0
	ldr r3, _02062AF4 ; =sub_020638AC
	bx r3
	.align 2, 0
_02062AF4: .word sub_020638AC
	thumb_func_end sub_02062AF0

	thumb_func_start sub_02062AF8
sub_02062AF8: ; 0x02062AF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	cmp r2, r4
	bne _02062B0A
	add r6, sp, #0x1c
	b _02062B0C
_02062B0A:
	add r6, r2, #0
_02062B0C:
	ldr r0, [r5]
	ldr r2, [r4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #4]
	ldr r2, [r4, #8]
	ldr r0, [r5, #4]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #4]
	add r2, r2, r0
	adc r7, r1
	lsl r0, r7, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r6]
	ldr r0, [r5]
	ldr r2, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r5, #4]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #8]
	add r2, r2, r0
	adc r7, r1
	lsl r0, r7, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r6, #4]
	ldr r0, [r5, #8]
	ldr r2, [r4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0xc]
	add r2, r2, r0
	adc r7, r1
	lsl r0, r7, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r6, #8]
	ldr r0, [r5, #8]
	ldr r2, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x10]
	add r7, r1, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r4, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x10]
	add r2, r2, r0
	adc r7, r1
	lsl r0, r7, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r6, #0xc]
	ldr r0, [r5, #0x10]
	ldr r2, [r4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x14]
	ldr r2, [r4, #8]
	ldr r0, [r5, #0x14]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x10]
	add r0, r0, r2
	adc r7, r3
	lsl r2, r7, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x10]
	ldr r2, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r5, #0x14]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r3, [sp, #0x18]
	ldr r2, [r4, #0x14]
	add r3, r3, r0
	adc r7, r1
	lsr r1, r3, #0xc
	lsl r0, r7, #0x14
	orr r1, r0
	add r0, r2, r1
	add r3, sp, #0x1c
	str r0, [r6, #0x14]
	cmp r6, r3
	bne _02062C2E
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
_02062C2E:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02062AF8

	thumb_func_start sub_02062C34
sub_02062C34: ; 0x02062C34
	ldr r1, _02062C40 ; =0x021439E0
	ldr r2, [r1, #8]
	mov r1, #0x30
	mul r1, r0
	add r0, r2, r1
	bx lr
	.align 2, 0
_02062C40: .word 0x021439E0
	thumb_func_end sub_02062C34

	thumb_func_start sub_02062C44
sub_02062C44: ; 0x02062C44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02062CA4 ; =0x021439E0
	add r6, r2, #0
	ldr r2, [r1, #8]
	mov r1, #0x30
	mul r1, r0
	add r4, r2, r1
	add r0, r4, #0
	add r7, r3, #0
	bl sub_020610BC
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02062C6E
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020610CC
_02062C6E:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02062C80
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_020610CC
_02062C80:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02062C92
	add r0, r4, #0
	mov r1, #2
	add r2, r7, #0
	bl sub_020610CC
_02062C92:
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02062CA4: .word 0x021439E0
	thumb_func_end sub_02062C44

	thumb_func_start sub_02062CA8
sub_02062CA8: ; 0x02062CA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02062CE0 ; =0x021439E0
	add r6, r1, #0
	str r2, [r0]
	str r5, [r0, #8]
	str r6, [r0, #4]
	ldr r4, _02062CE4 ; =0x00000000
	beq _02062CDC
	add r7, r4, #0
_02062CBC:
	add r0, r5, #0
	bl sub_020610BC
	str r7, [r5, #0xc]
	str r7, [r5, #0x10]
	str r7, [r5, #0x14]
	str r7, [r5, #0x18]
	str r7, [r5, #0x1c]
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
	str r7, [r5, #0x28]
	str r7, [r5, #0x2c]
	add r4, r4, #1
	add r5, #0x30
	cmp r4, r6
	blo _02062CBC
_02062CDC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02062CE0: .word 0x021439E0
_02062CE4: .word 0x00000000
	thumb_func_end sub_02062CA8

	thumb_func_start sub_02062CE8
sub_02062CE8: ; 0x02062CE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02062D90 ; =0x021439E0
	ldr r0, [r0, #4]
	cmp r0, #0
	bls _02062D8A
	ldr r0, [sp, #8]
	str r0, [sp]
_02062CFC:
	ldr r0, _02062D90 ; =0x021439E0
	ldr r1, [r0, #8]
	ldr r0, [sp]
	add r5, r1, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02062D74
	mov r4, #0
	cmp r4, #3
	bge _02062D70
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x24
	str r0, [sp, #0xc]
_02062D18:
	mov r1, #1
	add r7, r1, #0
	lsl r7, r4
	ldr r1, [r5, #0x24]
	mov r0, #0
	tst r1, r7
	beq _02062D2E
	ldr r1, [r5, #0x20]
	tst r1, r7
	beq _02062D2E
	mov r0, #1
_02062D2E:
	cmp r0, #0
	beq _02062D6A
	ldr r0, _02062D94 ; =0x020942C8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	cmp r4, #0
	str r0, [sp, #4]
	bne _02062D42
	ldr r6, [r5, #0x14]
	b _02062D44
_02062D42:
	ldr r6, [r5, #0x10]
_02062D44:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020610D4
	ldr r2, [r5, #0x28]
	add r1, r0, #0
	add r2, r6, r2
	ldr r6, _02062D90 ; =0x021439E0
	ldr r0, [sp, #4]
	ldr r3, [r5, #0x2c]
	ldr r6, [r6]
	blx r6
	cmp r0, #0
	beq _02062D6A
	ldr r0, [sp, #0xc]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	bic r1, r7
	str r1, [r0]
_02062D6A:
	add r4, r4, #1
	cmp r4, #3
	blt _02062D18
_02062D70:
	mov r0, #0
	str r0, [r5, #0x20]
_02062D74:
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, _02062D90 ; =0x021439E0
	ldr r1, [r0, #4]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _02062CFC
_02062D8A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02062D90: .word 0x021439E0
_02062D94: .word 0x020942C8
	thumb_func_end sub_02062CE8

	thumb_func_start sub_02062D98
sub_02062D98: ; 0x02062D98
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02062C34
	mov r1, #0
	mvn r1, r1
	str r1, [r0, #0x24]
	str r5, [r0, #0x28]
	str r4, [r0, #0x2c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02062D98

	thumb_func_start sub_02062DB0
sub_02062DB0: ; 0x02062DB0
	push {r3, r4}
	ldr r1, _02062DE4 ; =0x021439E0
	mov r0, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	bls _02062DDC
	ldr r4, [r1, #8]
	add r2, r4, #0
_02062DC0:
	ldr r1, [r2, #0x1c]
	cmp r1, #1
	beq _02062DD4
	mov r1, #0x30
	mul r1, r0
	mov r2, #1
	add r1, r4, r1
	str r2, [r1, #0x1c]
	pop {r3, r4}
	bx lr
_02062DD4:
	add r0, r0, #1
	add r2, #0x30
	cmp r0, r3
	blo _02062DC0
_02062DDC:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02062DE4: .word 0x021439E0
	thumb_func_end sub_02062DB0

	thumb_func_start sub_02062DE8
sub_02062DE8: ; 0x02062DE8
	push {r4, lr}
	ldr r1, _02062E10 ; =0x021439E0
	ldr r2, [r1, #8]
	mov r1, #0x30
	mul r1, r0
	add r4, r2, r1
	add r0, r4, #0
	bl sub_020610BC
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
_02062E10: .word 0x021439E0
	thumb_func_end sub_02062DE8

	thumb_func_start sub_02062E14
sub_02062E14: ; 0x02062E14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5]
	ldr r0, _02062F94 ; =0xC000C000
	add r6, r1, #0
	str r2, [sp, #8]
	and r6, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	and r0, r6
	and r2, r6
	asr r0, r0, #0xe
	lsr r2, r2, #0x1e
	str r0, [sp, #0x14]
	str r2, [sp, #0x10]
	str r3, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r6, _02062F98 ; =0x020942B0
	lsl r0, r0, #3
	lsl r1, r1, #0x16
	lsr r1, r1, #0x16
	lsl r1, r1, #0x10
	lsl r2, r2, #1
	add r6, r6, r0
	ldrh r6, [r2, r6]
	ldr r3, [sp, #0x38]
	lsr r1, r1, #0x10
	str r6, [r3, #0x10]
	ldr r6, _02062F9C ; =0x02094298
	add r0, r6, r0
	ldrh r0, [r2, r0]
	str r0, [r3, #0x14]
	ldr r7, [r4, #0x14]
	cmp r7, #0
	bne _02062EAC
	ldr r0, [r4, #0x10]
	ldr r6, [r4, #8]
	lsl r2, r0, #0x1d
	ldr r0, [r4, #4]
	lsl r6, r6, #0x1a
	lsl r7, r0, #0x17
	ldr r0, [r4]
	lsl r0, r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	lsr r0, r0, #3
	orr r6, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r6, r0
	ldr r0, [sp, #0x18]
	orr r0, r6
	orr r0, r7
	orr r2, r0
	ldr r0, _02062FA0 ; =0x040004A8
	str r2, [r0]
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _02062E92
	lsl r0, r1, #0xf
	lsr r1, r0, #0x10
_02062E92:
	ldr r0, [r4]
	lsl r2, r0, #2
	ldr r0, _02062FA4 ; =0x020942E4
	ldr r0, [r0, r2]
	sub r0, r0, #1
	and r0, r1
	lsl r0, r0, #0xf
	str r0, [r3]
	ldr r0, [r4]
	asr r1, r0
	lsl r0, r1, #0xf
	str r0, [r3, #4]
	b _02062F02
_02062EAC:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r2, r0, #0xe
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x10
	lsr r6, r0, #0xc
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x1d
	str r0, [sp, #0x1c]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x1a
	mov ip, r0
	mov r0, #7
	lsl r0, r0, #0x14
	and r0, r7
	asr r0, r0, #0x14
	add r0, r0, #5
	lsl r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	lsr r0, r0, #3
	mov r1, ip
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r0, r1
	ldr r1, _02062FA8 ; =0x02094304
	add r1, r1, r6
	ldr r1, [r2, r1]
	lsl r1, r1, #0x14
	orr r0, r1
	ldr r1, _02062FAC ; =0x02094334
	add r1, r1, r6
	ldr r1, [r2, r1]
	lsl r1, r1, #0x17
	orr r1, r0
	ldr r0, [sp, #0x1c]
	orr r1, r0
	ldr r0, _02062FA0 ; =0x040004A8
	str r1, [r0]
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_02062F02:
	ldr r0, [r3, #0x10]
	ldr r1, [r3]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r3, #8]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r3, #0xc]
	ldr r1, [r5]
	lsl r0, r1, #2
	lsl r1, r1, #3
	lsr r0, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _02062F2A
	ldr r6, [r3]
	ldr r2, [r3, #8]
	str r2, [r3]
	str r6, [r3, #8]
_02062F2A:
	cmp r0, #0
	beq _02062F36
	ldr r6, [r3, #4]
	ldr r2, [r3, #0xc]
	str r2, [r3, #4]
	str r6, [r3, #0xc]
_02062F36:
	ldr r2, _02062FB0 ; =0x021439EC
	ldr r6, [r2]
	cmp r6, #0
	beq _02062F4E
	str r1, [sp]
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r3, #0
	add r1, r3, #4
	add r2, #8
	add r3, #0xc
	blx r6
_02062F4E:
	ldr r0, [r5]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	lsl r1, r0, #2
	ldr r0, _02062FB4 ; =0x020942DC
	ldr r0, [r0, r1]
	ldr r1, [r5, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _02062F6E
	lsl r1, r2, #9
	b _02062F78
_02062F6E:
	cmp r0, #4
	bne _02062F76
	mov r1, #0
	b _02062F78
_02062F76:
	lsl r1, r2, #5
_02062F78:
	cmp r0, #2
	bne _02062F80
	mov r2, #1
	b _02062F82
_02062F80:
	mov r2, #0
_02062F82:
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	mov r0, #4
	sub r0, r0, r2
	lsr r1, r0
	ldr r0, _02062FB8 ; =0x040004AC
	str r1, [r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02062F94: .word 0xC000C000
_02062F98: .word 0x020942B0
_02062F9C: .word 0x02094298
_02062FA0: .word 0x040004A8
_02062FA4: .word 0x020942E4
_02062FA8: .word 0x02094304
_02062FAC: .word 0x02094334
_02062FB0: .word 0x021439EC
_02062FB4: .word 0x020942DC
_02062FB8: .word 0x040004AC
	thumb_func_end sub_02062E14

	thumb_func_start sub_02062FBC
sub_02062FBC: ; 0x02062FBC
	ldr r1, _02062FC4 ; =0x021439EC
	str r0, [r1, #8]
	bx lr
	nop
_02062FC4: .word 0x021439EC
	thumb_func_end sub_02062FBC

	thumb_func_start sub_02062FC8
sub_02062FC8: ; 0x02062FC8
	ldr r0, _02062FD0 ; =0x021439EC
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_02062FD0: .word 0x021439EC
	thumb_func_end sub_02062FC8

	thumb_func_start sub_02062FD4
sub_02062FD4: ; 0x02062FD4
	ldr r1, _02062FDC ; =0x0209B280
	str r0, [r1]
	bx lr
	nop
_02062FDC: .word 0x0209B280
	thumb_func_end sub_02062FD4

	thumb_func_start sub_02062FE0
sub_02062FE0: ; 0x02062FE0
	ldr r0, _02062FE8 ; =0x0209B280
	ldr r0, [r0]
	bx lr
	nop
_02062FE8: .word 0x0209B280
	thumb_func_end sub_02062FE0

	thumb_func_start sub_02062FEC
sub_02062FEC: ; 0x02062FEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r7, #0
	bl sub_02062E14
	ldr r1, [r7]
	mov r2, #3
	mov r3, #1
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r2
	lsl r3, r3, #8
	cmp r0, r3
	beq _02063024
	cmp r0, r2
	beq _02063024
	lsl r2, r2, #0x14
	and r2, r1
	orr r0, r2
_02063024:
	mov r2, #3
	lsl r2, r2, #8
	cmp r0, r2
	bne _02063076
	ldr r2, _02063148 ; =0xC000C000
	add r0, r1, #0
	and r0, r2
	lsl r1, r2, #0x10
	and r1, r0
	lsr r2, r2, #0x10
	and r0, r2
	asr r0, r0, #0xe
	lsr r1, r1, #0x1e
	ldr r2, _0206314C ; =0x020942B0
	lsl r0, r0, #3
	ldr r3, _02063150 ; =0x02094298
	add r2, r2, r0
	lsl r1, r1, #1
	add r0, r3, r0
	ldrh r2, [r1, r2]
	ldrh r0, [r1, r0]
	ldr r1, _02063154 ; =0x021439EC
	asr r2, r2, #1
	ldr r3, [r1, #8]
	asr r0, r0, #1
	cmp r3, #0
	beq _02063062
	ldr r1, [r1, #4]
	lsl r3, r4, #0xc
	add r1, r3, r1
	b _02063064
_02063062:
	lsl r1, r4, #0xc
_02063064:
	add r2, r5, r2
	lsl r3, r2, #0xc
	ldr r2, _02063158 ; =0x04000470
	add r0, r6, r0
	str r3, [r2]
	lsl r0, r0, #0xc
	str r0, [r2]
	str r1, [r2]
	b _02063094
_02063076:
	ldr r0, _02063154 ; =0x021439EC
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02063086
	ldr r0, [r0, #4]
	lsl r1, r4, #0xc
	add r2, r1, r0
	b _02063088
_02063086:
	lsl r2, r4, #0xc
_02063088:
	ldr r1, _02063158 ; =0x04000470
	lsl r0, r5, #0xc
	str r0, [r1]
	lsl r0, r6, #0xc
	str r0, [r1]
	str r2, [r1]
_02063094:
	ldr r0, [sp, #0x18]
	lsl r2, r0, #0xc
	ldr r0, [sp, #0x14]
	lsl r1, r0, #0xc
	ldr r0, _0206315C ; =0x0400046C
	str r1, [r0]
	str r2, [r0]
	lsr r1, r0, #0xe
	str r1, [r0]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x94
	str r2, [r1]
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #4]
	lsl r3, r3, #8
	lsl r1, r1, #8
	asr r3, r3, #0x10
	asr r1, r1, #0x10
	lsl r3, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r3, #0x10
	lsr r1, r1, #0x10
	lsl r3, r3, #0x10
	orr r1, r3
	add r3, r0, #0
	add r3, #0x1c
	str r1, [r3]
	lsl r1, r2, #0x10
	add r2, r0, #0
	add r2, #0x24
	str r1, [r2]
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsl r4, r4, #8
	lsl r1, r1, #8
	asr r4, r4, #0x10
	asr r1, r1, #0x10
	lsl r4, r4, #0x10
	lsl r1, r1, #0x10
	lsr r4, r4, #0x10
	lsr r1, r1, #0x10
	lsl r4, r4, #0x10
	orr r1, r4
	str r1, [r3]
	ldr r1, _02063160 ; =0x00010040
	add r0, #0x98
	str r1, [r2]
	ldr r4, [sp, #8]
	ldr r1, [sp, #0xc]
	lsl r4, r4, #8
	lsl r1, r1, #8
	asr r4, r4, #0x10
	asr r1, r1, #0x10
	lsl r4, r4, #0x10
	lsl r1, r1, #0x10
	lsr r4, r4, #0x10
	lsr r1, r1, #0x10
	lsl r4, r4, #0x10
	orr r1, r4
	str r1, [r3]
	mov r1, #0x40
	str r1, [r2]
	ldr r4, [sp, #8]
	ldr r1, [sp, #4]
	lsl r4, r4, #8
	lsl r1, r1, #8
	asr r4, r4, #0x10
	asr r1, r1, #0x10
	lsl r4, r4, #0x10
	lsl r1, r1, #0x10
	lsr r4, r4, #0x10
	lsr r1, r1, #0x10
	lsl r4, r4, #0x10
	orr r1, r4
	str r1, [r3]
	mov r1, #0
	str r1, [r2]
	str r1, [r0]
	ldr r1, _02063154 ; =0x021439EC
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02063144
	ldr r0, _02063164 ; =0x0209B280
	ldr r2, [r1, #4]
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [r1, #4]
_02063144:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02063148: .word 0xC000C000
_0206314C: .word 0x020942B0
_02063150: .word 0x02094298
_02063154: .word 0x021439EC
_02063158: .word 0x04000470
_0206315C: .word 0x0400046C
_02063160: .word 0x00010040
_02063164: .word 0x0209B280
	thumb_func_end sub_02062FEC

	thumb_func_start sub_02063168
sub_02063168: ; 0x02063168
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _02063388 ; =0x01FF0000
	str r2, [sp]
	and r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	cmp r1, #0xff
	ble _0206318C
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_0206318C:
	lsl r0, r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	cmp r1, #0x7f
	ble _020631A8
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_020631A8:
	lsl r0, r1, #0xc
	str r0, [sp, #0x20]
	ldr r1, [r4]
	mov r2, #3
	mov r3, #1
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r2
	lsl r3, r3, #8
	cmp r0, r3
	beq _020631C8
	cmp r0, r2
	beq _020631C8
	lsl r2, r2, #0x14
	and r2, r1
	orr r0, r2
_020631C8:
	mov r2, #3
	lsl r2, r2, #8
	cmp r0, r2
	bne _02063202
	ldr r3, _0206338C ; =0xC000C000
	add r0, r1, #0
	and r0, r3
	lsl r1, r3, #0x10
	and r1, r0
	lsr r1, r1, #0x1e
	lsl r2, r1, #1
	lsr r1, r3, #0x10
	and r0, r1
	asr r0, r0, #0xe
	lsl r1, r0, #3
	ldr r3, _02063390 ; =0x020942B0
	ldr r0, [sp, #0x1c]
	add r3, r3, r1
	ldrh r3, [r2, r3]
	lsl r3, r3, #0xb
	add r0, r0, r3
	ldr r3, _02063394 ; =0x02094298
	str r0, [sp, #0x1c]
	add r1, r3, r1
	ldrh r1, [r2, r1]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #0xb
	add r0, r0, r1
	str r0, [sp, #0x20]
_02063202:
	add r6, sp, #0x1c
	cmp r6, r6
	bne _0206320A
	add r6, sp, #0x14
_0206320A:
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x20]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r3, r0, #0
	add r0, r1, #0
	mov r2, #1
	ldr r1, [sp, #8]
	lsl r2, r2, #0xc
	add r2, r1, r2
	ldr r1, _02063398 ; =0x00000000
	adc r7, r1
	add r1, r2, r3
	adc r7, r0
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	str r1, [r6]
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x20]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r0, [r5, #4]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r3, r0, #0
	add r0, r1, #0
	mov r2, #1
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0xc
	add r2, r1, r2
	ldr r1, _02063398 ; =0x00000000
	adc r7, r1
	add r1, r2, r3
	adc r7, r0
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	add r0, sp, #0x14
	str r1, [r6, #4]
	cmp r6, r0
	bne _02063288
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
_02063288:
	ldr r0, _0206339C ; =0x02143A08
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020632B8
	cmp r0, #2
	bne _0206329A
	mov r0, #3
	b _0206329C
_0206329A:
	mov r0, #1
_0206329C:
	mov r1, #1
	lsl r0, r0, #8
	lsl r1, r1, #8
	cmp r0, r1
	ldr r2, [r4]
	ldr r1, _020633A0 ; =0xC1FFFCFF
	beq _020632B2
	and r1, r2
	orr r0, r1
	str r0, [r4]
	b _020632B8
_020632B2:
	and r1, r2
	orr r0, r1
	str r0, [r4]
_020632B8:
	ldr r0, [r4]
	mov r1, #3
	mov r3, #1
	lsl r1, r1, #8
	add r2, r0, #0
	and r2, r1
	lsl r3, r3, #8
	cmp r2, r3
	beq _020632D4
	cmp r2, r1
	beq _020632D4
	lsl r1, r1, #0x14
	and r1, r0
	orr r2, r1
_020632D4:
	ldr r1, _0206338C ; =0xC000C000
	ldr r6, _02063394 ; =0x02094298
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r0
	lsr r1, r1, #0x1e
	lsl r3, r1, #1
	ldr r1, _0206338C ; =0xC000C000
	lsr r1, r1, #0x10
	and r0, r1
	asr r0, r0, #0xe
	ldr r1, _02063390 ; =0x020942B0
	lsl r0, r0, #3
	add r1, r1, r0
	ldrh r1, [r3, r1]
	add r0, r6, r0
	ldrh r0, [r3, r0]
	asr r1, r1, #1
	lsl r3, r1, #0xc
	str r3, [sp, #4]
	ldr r3, [sp, #0x1c]
	asr r0, r0, #1
	str r3, [sp, #0x10]
	ldr r3, [sp, #4]
	neg r7, r3
	ldr r3, [r5]
	add r6, r3, #0
	mul r6, r1
	ldr r3, [r5, #8]
	add r7, r7, r6
	add r6, r3, #0
	mul r6, r0
	add r6, r7, r6
	ldr r3, [sp, #0x10]
	ldr r7, [sp, #0x20]
	add r3, r3, r6
	lsl r6, r0, #0xc
	str r3, [sp, #0x1c]
	neg r3, r6
	mov ip, r3
	ldr r3, [r5, #4]
	mul r1, r3
	mov r3, ip
	add r1, r3, r1
	ldr r3, [r5, #0xc]
	mul r0, r3
	add r0, r1, r0
	add r0, r7, r0
	str r0, [sp, #0x20]
	ldr r0, _0206338C ; =0xC000C000
	lsr r0, r0, #0x16
	cmp r2, r0
	bne _02063342
	mov r0, #1
	b _02063344
_02063342:
	mov r0, #0
_02063344:
	cmp r0, #0
	beq _02063356
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	sub r0, r0, r6
	str r0, [sp, #0x20]
_02063356:
	ldr r0, [sp]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0]
	add r2, r1, r0
	ldr r0, [sp]
	str r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #4]
	add r1, r1, r0
	str r1, [sp, #0x20]
	asr r0, r2, #0xc
	asr r1, r1, #0xc
	lsl r1, r1, #0x18
	lsl r0, r0, #0x17
	ldr r3, [r4]
	ldr r2, _020633A4 ; =0xFE00FF00
	lsr r1, r1, #0x18
	and r2, r3
	lsr r0, r0, #7
	orr r1, r2
	orr r0, r1
	str r0, [r4]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02063388: .word 0x01FF0000
_0206338C: .word 0xC000C000
_02063390: .word 0x020942B0
_02063394: .word 0x02094298
_02063398: .word 0x00000000
_0206339C: .word 0x02143A08
_020633A0: .word 0xC1FFFCFF
_020633A4: .word 0xFE00FF00
	thumb_func_end sub_02063168

	thumb_func_start sub_020633A8
sub_020633A8: ; 0x020633A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp]
	ldr r0, _0206364C ; =0x02143A08
	str r1, [sp, #4]
	ldr r4, [r0]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020633C0
	ldr r0, _02063650 ; =0x0209436C
	str r0, [sp, #0xc]
_020633C0:
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0x10]
	str r2, [sp, #0x3c]
	ldr r1, [r0, #0x14]
	ldr r0, [sp]
	str r1, [sp, #0x40]
	ldr r0, [r0]
	sub r0, r2, r0
	str r0, [sp, #0x3c]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	str r0, [sp, #0x40]
	ldr r0, _0206364C ; =0x02143A08
	ldr r1, [r0]
	ldr r0, [r1, #0x10]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _020633F4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _020633F4
	mov r0, #1
	str r0, [sp, #8]
	b _020633F8
_020633F4:
	mov r0, #0
	str r0, [sp, #8]
_020633F8:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	add r4, #0x38
	ldrh r0, [r0]
	cmp r0, #0
	bhi _02063408
	b _02063648
_02063408:
	mov r0, #0xff
	ldr r6, _0206364C ; =0x02143A08
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
_02063410:
	ldr r1, [r6]
	mov r0, #1
	str r0, [r1, #0x30]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [r0, #4]
	mov r0, #6
	mul r0, r1
	add r1, r2, r0
	ldrh r0, [r2, r0]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4, #4]
	ldr r0, [sp]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0206343E
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x20]
	blx r3
_0206343E:
	ldr r0, [r6]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _02063448
	b _02063632
_02063448:
	ldr r1, [r4, #4]
	ldr r0, _02063654 ; =0xFFFFFC00
	and r0, r1
	lsl r1, r1, #0x16
	lsr r2, r1, #0x16
	ldr r1, [sp, #0x24]
	add r2, r2, r1
	ldr r1, _02063658 ; =0x000003FF
	and r1, r2
	orr r0, r1
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0206350E
	ldr r0, [r4]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	lsl r1, r1, #1
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	add r2, r1, #0
	orr r2, r0
	ldr r0, [r6]
	mov ip, r0
	ldr r5, [r0, #0x28]
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	lsl r0, r2, #2
	str r0, [sp, #0x10]
	lsl r0, r1, #1
	ldr r1, [sp, #0x10]
	add r1, r5, r1
	add r0, r0, r1
	ldrh r7, [r0, #0xe]
	ldr r0, _0206365C ; =0x0000FFFF
	cmp r7, r0
	bne _020634EA
	cmp r2, #0
	bne _020634A2
	mov r1, ip
	ldr r1, [r1, #0x20]
	add r0, r5, #0
	blx r1
	add r7, r0, #0
	b _020634DC
_020634A2:
	add r7, r5, #0
	add r3, sp, #0x44
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	tst r0, r2
	beq _020634C0
	ldr r0, [sp, #0x44]
	neg r0, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	neg r0, r0
	str r0, [sp, #0x48]
_020634C0:
	mov r0, #2
	tst r0, r2
	beq _020634D2
	ldr r0, [sp, #0x4c]
	neg r0, r0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	neg r0, r0
	str r0, [sp, #0x50]
_020634D2:
	mov r1, ip
	ldr r1, [r1, #0x20]
	add r0, sp, #0x44
	blx r1
	add r7, r0, #0
_020634DC:
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	lsl r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r5, r0
	add r0, r1, r0
	strh r7, [r0, #0xe]
_020634EA:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	ldr r0, [r0]
	add r2, sp, #0x3c
	str r0, [sp, #0x54]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x60]
	add r0, sp, #0x54
	bl sub_02063168
	b _02063612
_0206350E:
	ldr r0, [r6]
	ldr r7, _02063660 ; =0x0000FFFE
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020635E0
	ldr r2, [r4]
	ldr r1, _02063664 ; =0xC000C000
	add r5, r2, #0
	and r5, r1
	lsl r1, r2, #3
	lsr r1, r1, #0x1f
	str r1, [sp, #0x18]
	bl sub_02063910
	ldr r1, [sp, #0x18]
	eor r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	str r0, [sp, #0x14]
	ldr r0, [r6]
	bl sub_0206391C
	ldr r1, [sp, #0x14]
	ldr r2, [r4]
	eor r1, r0
	ldr r0, _02063668 ; =0xEFFFFFFF
	and r0, r2
	ldr r2, [sp, #0x1c]
	lsl r2, r2, #0x1c
	orr r2, r0
	ldr r0, _0206366C ; =0xDFFFFFFF
	and r2, r0
	lsl r0, r1, #0x1d
	orr r0, r2
	str r0, [r4]
	ldr r0, [r6]
	bl sub_02063910
	cmp r0, #0
	beq _02063598
	ldr r1, [r4]
	ldr r0, _02063670 ; =0xFE00FFFF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #7
	lsr r0, r0, #0x17
	str r0, [sp, #0x30]
	mov r0, #3
	lsl r0, r0, #0xe
	and r0, r5
	asr r0, r0, #0xe
	lsl r1, r0, #3
	mov r0, #3
	lsl r0, r0, #0x1e
	and r0, r5
	lsr r0, r0, #0x1e
	lsl r3, r0, #1
	ldr r0, _02063674 ; =0x020942B0
	add r0, r0, r1
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x30]
	add r0, r0, r1
	neg r0, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #7
	orr r0, r2
	str r0, [r4]
_02063598:
	ldr r0, [r6]
	bl sub_0206391C
	cmp r0, #0
	beq _020635E0
	ldr r2, [r4]
	ldr r0, [sp, #0x28]
	add r1, r2, #0
	bic r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	mov r0, #3
	lsl r0, r0, #0xe
	and r0, r5
	asr r0, r0, #0xe
	lsl r0, r0, #3
	str r0, [sp, #0x34]
	mov r0, #3
	lsl r0, r0, #0x1e
	and r0, r5
	lsr r0, r0, #0x1e
	ldr r3, _02063678 ; =0x02094298
	ldr r2, [sp, #0x34]
	lsl r0, r0, #1
	add r2, r3, r2
	ldrh r2, [r0, r2]
	ldr r0, [sp, #0x38]
	add r0, r0, r2
	neg r0, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4]
_020635E0:
	ldr r1, [r4]
	ldr r0, _02063670 ; =0xFE00FFFF
	and r0, r1
	lsl r1, r1, #7
	lsr r2, r1, #0x17
	ldr r1, [sp, #0x3c]
	asr r1, r1, #0xc
	add r1, r2, r1
	lsl r1, r1, #0x17
	lsr r1, r1, #7
	add r2, r0, #0
	orr r2, r1
	ldr r1, [sp, #0x2c]
	add r0, r2, #0
	bic r0, r1
	str r2, [r4]
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #0x40]
	asr r1, r1, #0xc
	add r1, r2, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4]
_02063612:
	ldr r3, [r6]
	add r0, r4, #0
	ldr r3, [r3, #0x1c]
	add r1, r7, #0
	mov r2, #0
	blx r3
	cmp r0, #1
	bne _02063648
	ldr r0, [sp]
	ldr r3, [r0, #0x24]
	cmp r3, #0
	beq _02063632
	ldr r0, [r6]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x20]
	blx r3
_02063632:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bhs _02063648
	b _02063410
_02063648:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0206364C: .word 0x02143A08
_02063650: .word 0x0209436C
_02063654: .word 0xFFFFFC00
_02063658: .word 0x000003FF
_0206365C: .word 0x0000FFFF
_02063660: .word 0x0000FFFE
_02063664: .word 0xC000C000
_02063668: .word 0xEFFFFFFF
_0206366C: .word 0xDFFFFFFF
_02063670: .word 0xFE00FFFF
_02063674: .word 0x020942B0
_02063678: .word 0x02094298
	thumb_func_end sub_020633A8

	thumb_func_start sub_0206367C
sub_0206367C: ; 0x0206367C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _020637FC ; =0x02143A08
	ldr r0, [r0]
	add r0, #0x40
	bl sub_02074C28
	ldr r0, _020637FC ; =0x02143A08
	ldr r0, [r0]
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _02063698
	b _020637B2
_02063698:
	ldr r2, [r5]
	ldr r1, _02063800 ; =0xC000C000
	add r4, r2, #0
	and r4, r1
	bl sub_02063910
	cmp r0, #0
	ldr r0, [r5]
	beq _020636E0
	lsl r0, r0, #7
	lsr r2, r0, #0x17
	cmp r2, #0xff
	ble _020636BC
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r2
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
_020636BC:
	mov r3, #3
	lsl r3, r3, #0xe
	add r0, r4, #0
	and r0, r3
	asr r0, r0, #0xe
	lsl r3, r3, #0x10
	lsl r1, r0, #3
	ldr r0, _02063804 ; =0x020942B0
	and r3, r4
	lsr r3, r3, #0x1e
	lsl r3, r3, #1
	add r0, r0, r1
	ldrh r0, [r3, r0]
	add r0, r2, r0
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _020636F6
_020636E0:
	lsl r0, r0, #7
	lsr r1, r0, #0x17
	cmp r1, #0xff
	ble _020636F2
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_020636F2:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
_020636F6:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _020637FC ; =0x02143A08
	ldr r0, [r0]
	bl sub_0206391C
	cmp r0, #0
	ldr r0, [r5]
	beq _02063740
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x7f
	ble _0206371C
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r2
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
_0206371C:
	mov r3, #3
	lsl r3, r3, #0xe
	add r0, r4, #0
	and r0, r3
	asr r0, r0, #0xe
	lsl r3, r3, #0x10
	lsl r1, r0, #3
	ldr r0, _02063808 ; =0x02094298
	and r3, r4
	lsr r3, r3, #0x1e
	lsl r3, r3, #1
	add r0, r0, r1
	ldrh r0, [r3, r0]
	add r0, r2, r0
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02063756
_02063740:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0x7f
	ble _02063752
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_02063752:
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
_02063756:
	ldr r0, [r5]
	lsl r0, r0, #3
	lsr r6, r0, #0x1f
	ldr r0, _020637FC ; =0x02143A08
	ldr r0, [r0]
	bl sub_02063910
	add r7, r0, #0
	ldr r0, [r5]
	eor r7, r6
	lsl r0, r0, #2
	lsr r6, r0, #0x1f
	ldr r0, _020637FC ; =0x02143A08
	ldr r0, [r0]
	bl sub_0206391C
	eor r0, r6
	ldr r2, [r5]
	ldr r1, _0206380C ; =0xEFFFFFFF
	lsl r0, r0, #0x1d
	and r2, r1
	lsl r1, r7, #0x1c
	orr r2, r1
	ldr r1, _02063810 ; =0xDFFFFFFF
	add r3, r5, #0
	and r1, r2
	orr r0, r1
	str r0, [r5]
	ldr r0, _020637FC ; =0x02143A08
	mov r2, #0
	ldr r1, [r0]
	mvn r2, r2
	ldr r0, [r1, #8]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [r1, #0x14]
	str r0, [sp, #4]
	ldr r0, [r1, #0x18]
	lsl r1, r4, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	asr r1, r1, #0x10
	bl sub_02062FEC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020637B2:
	ldr r0, [r5]
	lsl r0, r0, #7
	lsr r0, r0, #0x17
	cmp r0, #0xff
	ble _020637C6
	mov r1, #0xff
	lsl r1, r1, #8
	orr r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_020637C6:
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0x7f
	ble _020637DA
	mov r2, #0xff
	lsl r2, r2, #8
	orr r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_020637DA:
	ldr r2, _020637FC ; =0x02143A08
	ldr r3, [r2]
	ldr r2, [r3, #8]
	add r2, #0xc
	str r2, [sp]
	ldr r2, [r3, #0x14]
	str r2, [sp, #4]
	ldr r2, [r3, #0x18]
	add r3, r5, #0
	str r2, [sp, #8]
	mov r2, #0
	mvn r2, r2
	bl sub_02062FEC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020637FC: .word 0x02143A08
_02063800: .word 0xC000C000
_02063804: .word 0x020942B0
_02063808: .word 0x02094298
_0206380C: .word 0xEFFFFFFF
_02063810: .word 0xDFFFFFFF
	thumb_func_end sub_0206367C

	thumb_func_start sub_02063814
sub_02063814: ; 0x02063814
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02063884 ; =0x02143A08
	add r6, r1, #0
	ldr r5, [r0]
	ldrh r0, [r6]
	add r5, #0x38
	mov r4, #0
	cmp r0, #0
	bls _02063882
_02063828:
	ldr r0, _02063884 ; =0x02143A08
	add r2, r4, #0
	ldr r1, [r0]
	mov r0, #1
	str r0, [r1, #0x30]
	mov r1, #6
	ldr r0, [r6, #4]
	mul r2, r1
	add r1, r0, r2
	ldrh r0, [r0, r2]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r5, #4]
	ldr r3, [r7, #0x20]
	cmp r3, #0
	beq _02063856
	ldr r0, _02063884 ; =0x02143A08
	add r1, r6, #0
	ldr r0, [r0]
	add r2, r4, #0
	blx r3
_02063856:
	ldr r0, _02063884 ; =0x02143A08
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _02063866
	add r0, r5, #0
	bl sub_0206367C
_02063866:
	ldr r3, [r7, #0x24]
	cmp r3, #0
	beq _02063876
	ldr r0, _02063884 ; =0x02143A08
	add r1, r6, #0
	ldr r0, [r0]
	add r2, r4, #0
	blx r3
_02063876:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r6]
	cmp r4, r0
	blo _02063828
_02063882:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02063884: .word 0x02143A08
	thumb_func_end sub_02063814

	thumb_func_start sub_02063888
sub_02063888: ; 0x02063888
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x70
	blx sub_02078624
	mov r1, #0
	str r1, [r4]
	mov r0, #2
	str r0, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x30]
	str r1, [r4, #0x28]
	pop {r4, pc}
	thumb_func_end sub_02063888

	thumb_func_start sub_020638AC
sub_020638AC: ; 0x020638AC
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_020638AC

	thumb_func_start sub_020638B4
sub_020638B4: ; 0x020638B4
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_020638B4

	thumb_func_start sub_020638BC
sub_020638BC: ; 0x020638BC
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020638BC

	thumb_func_start sub_020638C0
sub_020638C0: ; 0x020638C0
	ldr r1, _020638F4 ; =0x02143A08
	mov r3, #0
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	ldr r2, [r0]
	str r2, [r1, #0x40]
	ldr r2, [r0, #4]
	str r2, [r1, #0x44]
	str r3, [r1, #0x48]
	ldr r2, [r0, #8]
	str r2, [r1, #0x4c]
	ldr r2, [r0, #0xc]
	str r2, [r1, #0x50]
	str r3, [r1, #0x54]
	str r3, [r1, #0x58]
	mov r2, #1
	str r3, [r1, #0x5c]
	lsl r2, r2, #0xc
	str r2, [r1, #0x60]
	ldr r2, [r0, #0x10]
	str r2, [r1, #0x64]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x68]
	ldr r0, [r1, #0x34]
	str r0, [r1, #0x6c]
	bx lr
	.align 2, 0
_020638F4: .word 0x02143A08
	thumb_func_end sub_020638C0

	thumb_func_start sub_020638F8
sub_020638F8: ; 0x020638F8
	ldr r2, _02063904 ; =0x02143A08
	ldr r2, [r2]
	str r0, [r2, #0x2c]
	str r1, [r2, #0x28]
	bx lr
	nop
_02063904: .word 0x02143A08
	thumb_func_end sub_020638F8

	thumb_func_start sub_02063908
sub_02063908: ; 0x02063908
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_02063908

	thumb_func_start sub_0206390C
sub_0206390C: ; 0x0206390C
	str r1, [r0]
	bx lr
	thumb_func_end sub_0206390C

	thumb_func_start sub_02063910
sub_02063910: ; 0x02063910
	ldr r1, [r0, #0x24]
	mov r0, #1
	tst r1, r0
	bne _0206391A
	mov r0, #0
_0206391A:
	bx lr
	thumb_func_end sub_02063910

	thumb_func_start sub_0206391C
sub_0206391C: ; 0x0206391C
	ldr r1, [r0, #0x24]
	mov r0, #2
	tst r0, r1
	beq _02063928
	mov r0, #1
	bx lr
_02063928:
	mov r0, #0
	bx lr
	thumb_func_end sub_0206391C

	thumb_func_start sub_0206392C
sub_0206392C: ; 0x0206392C
	cmp r1, #0
	ldr r3, [r0, #0x24]
	beq _0206393A
	mov r1, #1
	orr r1, r3
	str r1, [r0, #0x24]
	b _02063940
_0206393A:
	mov r1, #1
	bic r3, r1
	str r3, [r0, #0x24]
_02063940:
	cmp r2, #0
	ldr r2, [r0, #0x24]
	beq _0206394E
	mov r1, #2
	orr r1, r2
	str r1, [r0, #0x24]
	bx lr
_0206394E:
	mov r1, #2
	bic r2, r1
	str r2, [r0, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end sub_0206392C

	thumb_func_start sub_02063958
sub_02063958: ; 0x02063958
	push {r4, r5, r6, lr}
	ldr r3, _020639F8 ; =0x02143A08
	add r4, r0, #0
	str r4, [r3]
	ldr r0, [r4]
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _020639C6
	ldr r2, _020639FC ; =0x04000440
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	ldr r5, [r4]
	ldr r0, [r5, #4]
	ldr r5, [r5]
	neg r0, r0
	neg r6, r5
	add r5, r2, #0
	add r5, #0x30
	str r6, [r5]
	str r0, [r5]
	str r1, [r5]
	mov r0, #1
	str r0, [r2]
	ldr r0, [r3]
	ldr r5, [r0, #8]
	add r0, r5, #0
	bl sub_02060B50
	cmp r0, #0
	beq _020639A0
	add r0, r5, #0
	mov r1, #0
	bl sub_02060B48
	b _020639A2
_020639A0:
	mov r0, #0
_020639A2:
	str r0, [r4, #0x14]
	ldr r0, _020639F8 ; =0x02143A08
	mov r1, #0
	ldr r0, [r0]
	ldr r5, [r0, #0xc]
	add r0, r5, #0
	bl sub_02060B84
	cmp r0, #0
	beq _020639C0
	add r0, r5, #0
	mov r1, #0
	bl sub_02060B7C
	b _020639C2
_020639C0:
	mov r0, #0
_020639C2:
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_020639C6:
	ldr r4, [r4, #8]
	add r1, r5, #0
	add r0, r4, #0
	bl sub_02060B50
	cmp r0, #0
	beq _020639EE
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02060B48
	mov r1, #7
	ldr r2, [r4, #0x20]
	lsl r1, r1, #0x14
	and r1, r2
	asr r1, r1, #0x14
	add r1, r1, #5
	add r2, r0, #0
	lsr r2, r1
	b _020639F0
_020639EE:
	mov r2, #0
_020639F0:
	ldr r0, _020639F8 ; =0x02143A08
	ldr r0, [r0]
	str r2, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_020639F8: .word 0x02143A08
_020639FC: .word 0x04000440
	thumb_func_end sub_02063958

	thumb_func_start sub_02063A00
sub_02063A00: ; 0x02063A00
	ldr r0, _02063A30 ; =0x02143A08
	ldr r3, [r0]
	ldr r1, [r3]
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _02063A1A
	ldr r1, _02063A34 ; =0x04000440
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #8]
	str r0, [r1]
	b _02063A26
_02063A1A:
	mov r2, #0
	str r2, [r3, #0x10]
	ldr r1, [r0]
	str r2, [r1, #0x2c]
	ldr r0, [r0]
	str r2, [r0, #0x28]
_02063A26:
	ldr r0, _02063A30 ; =0x02143A08
	mov r1, #0
	str r1, [r0]
	bx lr
	nop
_02063A30: .word 0x02143A08
_02063A34: .word 0x04000440
	thumb_func_end sub_02063A00

	thumb_func_start sub_02063A38
sub_02063A38: ; 0x02063A38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02063AA0 ; =0x02143A08
	ldr r2, [r0]
	ldr r4, [r2]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02063A9C
	mov r1, #1
	str r1, [r2, #0x30]
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _02063A58
	ldr r0, [r0]
	add r1, r5, #0
	blx r2
_02063A58:
	ldr r0, _02063AA0 ; =0x02143A08
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _02063A8E
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bhi _02063A8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02063A74: ; jump table
	.short _02063A7C - _02063A74 - 2 ; case 0
	.short _02063A86 - _02063A74 - 2 ; case 1
	.short _02063A86 - _02063A74 - 2 ; case 2
	.short _02063A8E - _02063A74 - 2 ; case 3
_02063A7C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063814
	b _02063A8E
_02063A86:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020633A8
_02063A8E:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _02063A9C
	ldr r0, _02063AA0 ; =0x02143A08
	add r1, r5, #0
	ldr r0, [r0]
	blx r2
_02063A9C:
	pop {r3, r4, r5, pc}
	nop
_02063AA0: .word 0x02143A08
	thumb_func_end sub_02063A38

	thumb_func_start sub_02063AA4
sub_02063AA4: ; 0x02063AA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _02063B2C ; =0x02143A08
	add r5, r0, #0
	ldr r0, [r1]
	ldr r4, [r0]
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _02063B28
	mov r2, #1
	str r2, [r0, #0x30]
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _02063AC6
	ldr r0, [r1]
	add r1, r5, #0
	blx r2
_02063AC6:
	ldr r0, _02063B2C ; =0x02143A08
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _02063B1A
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02063AEE
	ldr r7, [r4, #0x14]
	add r0, r6, #0
	bl sub_02062C34
	mov r1, #1
	lsl r1, r7
	ldr r3, [r0, #0x20]
	mvn r2, r1
	and r2, r3
	orr r1, r2
	str r1, [r0, #0x20]
_02063AEE:
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bhi _02063B1A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02063B00: ; jump table
	.short _02063B08 - _02063B00 - 2 ; case 0
	.short _02063B12 - _02063B00 - 2 ; case 1
	.short _02063B12 - _02063B00 - 2 ; case 2
	.short _02063B1A - _02063B00 - 2 ; case 3
_02063B08:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063814
	b _02063B1A
_02063B12:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020633A8
_02063B1A:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _02063B28
	ldr r0, _02063B2C ; =0x02143A08
	add r1, r5, #0
	ldr r0, [r0]
	blx r2
_02063B28:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02063B2C: .word 0x02143A08
	thumb_func_end sub_02063AA4

	thumb_func_start sub_02063B30
sub_02063B30: ; 0x02063B30
	push {r4, r5}
	ldrh r3, [r0, #4]
	ldr r2, _02063BA4 ; =0x0000FFFF
	cmp r3, #0
	beq _02063B44
	cmp r3, #1
	beq _02063B52
	cmp r3, #2
	beq _02063B5E
	b _02063B9E
_02063B44:
	ldrh r2, [r0, #0xc]
	ldrh r0, [r0]
	sub r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _02063B9E
_02063B52:
	ldrh r2, [r0]
	sub r1, r1, r2
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r2, [r0, #0xc]
	b _02063B9E
_02063B5E:
	add r3, r0, #0
	ldrh r0, [r0, #0xc]
	add r3, #0xc
	add r3, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r3, r0
	cmp r3, r0
	bhi _02063B9E
_02063B70:
	sub r5, r0, r3
	asr r4, r5, #1
	lsr r4, r4, #0x1e
	add r4, r5, r4
	asr r5, r4, #2
	lsr r4, r5, #0x1f
	add r4, r5, r4
	asr r4, r4, #1
	lsl r4, r4, #2
	add r5, r3, r4
	ldrh r4, [r3, r4]
	cmp r4, r1
	bhs _02063B8E
	add r3, r5, #4
	b _02063B9A
_02063B8E:
	cmp r1, r4
	bhs _02063B96
	sub r0, r5, #4
	b _02063B9A
_02063B96:
	ldrh r2, [r5, #2]
	b _02063B9E
_02063B9A:
	cmp r3, r0
	bls _02063B70
_02063B9E:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_02063BA4: .word 0x0000FFFF
	thumb_func_end sub_02063B30

	thumb_func_start sub_02063BA8
sub_02063BA8: ; 0x02063BA8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02064D8C
	ldr r0, _02063BBC ; =sub_02064F80
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02063BBC: .word sub_02064F80
	thumb_func_end sub_02063BA8

	thumb_func_start sub_02063BC0
sub_02063BC0: ; 0x02063BC0
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02063BE2
_02063BCA:
	ldrh r2, [r0]
	cmp r2, r1
	bhi _02063BDC
	ldrh r2, [r0, #2]
	cmp r1, r2
	bhi _02063BDC
	bl sub_02063B30
	pop {r3, pc}
_02063BDC:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02063BCA
_02063BE2:
	ldr r0, _02063BE8 ; =0x0000FFFF
	pop {r3, pc}
	nop
_02063BE8: .word 0x0000FFFF
	thumb_func_end sub_02063BC0

	thumb_func_start sub_02063BEC
sub_02063BEC: ; 0x02063BEC
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _02063C16
_02063BF6:
	ldrh r2, [r3]
	cmp r2, r1
	bhi _02063C10
	ldrh r0, [r3, #2]
	cmp r1, r0
	bhi _02063C10
	sub r1, r1, r2
	lsl r0, r1, #1
	add r3, #8
	add r0, r1, r0
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02063C10:
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _02063BF6
_02063C16:
	add r0, r4, #4
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02063BEC

	thumb_func_start sub_02063C1C
sub_02063C1C: ; 0x02063C1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r7, [r5, #4]
	add r0, sp, #4
	add r6, r1, #0
	str r3, [sp]
	mov r4, #0
	blx r7
	add r1, r0, #0
	beq _02063C60
_02063C34:
	cmp r1, #0xa
	beq _02063C60
	add r0, r5, #0
	bl sub_02063BC0
	add r1, r0, #0
	ldr r0, _02063C80 ; =0x0000FFFF
	cmp r1, r0
	bne _02063C4A
	ldr r0, [r5]
	ldrh r1, [r0, #2]
_02063C4A:
	add r0, r5, #0
	bl sub_02063BEC
	mov r1, #2
	ldrsb r0, [r0, r1]
	add r0, r6, r0
	add r4, r4, r0
	add r0, sp, #4
	blx r7
	add r1, r0, #0
	bne _02063C34
_02063C60:
	ldr r0, [sp]
	cmp r0, #0
	beq _02063C74
	cmp r1, #0xa
	bne _02063C6E
	ldr r1, [sp, #4]
	b _02063C70
_02063C6E:
	mov r1, #0
_02063C70:
	ldr r0, [sp]
	str r1, [r0]
_02063C74:
	cmp r4, #0
	ble _02063C7A
	sub r4, r4, r6
_02063C7A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02063C80: .word 0x0000FFFF
	thumb_func_end sub_02063C1C

	thumb_func_start sub_02063C84
sub_02063C84: ; 0x02063C84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r1, [sp]
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r2, [sp, #0xc]
	ldr r5, [r7, #4]
	add r0, sp, #0xc
	mov r4, #1
	blx r5
	cmp r0, #0
	beq _02063CB2
	add r6, sp, #0xc
_02063CA4:
	cmp r0, #0xa
	bne _02063CAA
	add r4, r4, #1
_02063CAA:
	add r0, r6, #0
	blx r5
	cmp r0, #0
	bne _02063CA4
_02063CB2:
	ldr r1, [r7]
	mov r0, #1
	ldrsb r1, [r1, r0]
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp]
	sub r0, r1, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02063C84

	thumb_func_start sub_02063CC8
sub_02063CC8: ; 0x02063CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	ldr r2, [sp, #0x28]
	mov r4, #1
	str r3, [sp, #4]
	str r0, [r1, #4]
	cmp r2, #0
	beq _02063D00
	add r7, sp, #0x28
_02063CE6:
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl sub_02063C1C
	ldr r1, [sp, #8]
	cmp r0, r1
	ble _02063CF8
	str r0, [sp, #8]
_02063CF8:
	ldr r2, [sp, #0x28]
	add r4, r4, #1
	cmp r2, #0
	bne _02063CE6
_02063D00:
	ldr r1, [r5]
	mov r0, #1
	ldrsb r1, [r1, r0]
	ldr r0, [sp, #4]
	sub r2, r4, #1
	add r0, r0, r1
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #4]
	sub r2, r1, r0
	ldr r1, [sp, #8]
	ldr r0, [sp]
	str r2, [sp, #0xc]
	str r1, [r0]
	str r2, [r0, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02063CC8

	thumb_func_start sub_02063D24
sub_02063D24: ; 0x02063D24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r4, r2, #0
	add r5, r3, #0
	str r0, [sp, #0x24]
	mov r7, #0
_02063D3A:
	mov r1, #0
	ldr r0, [sp, #0x20]
	mvn r1, r1
	lsl r1, r0
	mov ip, r1
	mov r1, #0
	mvn r1, r1
	add r3, r1, #0
	ldr r0, [sp, #0x24]
	add r2, r4, #0
	lsl r3, r0
	mov r0, ip
	and r2, r0
	add r1, r5, #0
	ldr r0, [sp]
	and r1, r3
	cmp r1, r0
	bhi _02063D88
	add r0, r4, #0
	mul r0, r1
	add r7, r7, r0
	cmp r2, r6
	bhi _02063D7C
	sub r5, r5, r1
	add r0, r2, #0
	mul r0, r5
	add r7, r7, r0
	ldr r0, [sp]
	sub r6, r6, r2
	sub r0, r0, r1
	str r0, [sp]
	sub r4, r4, r2
	b _02063DC6
_02063D7C:
	ldr r0, [sp]
	add r4, r2, #0
	sub r0, r0, r1
	str r0, [sp]
	sub r5, r5, r1
	b _02063DC6
_02063D88:
	mvn r0, r3
	cmp r2, r6
	bhi _02063D9C
	add r0, r2, #0
	mul r0, r1
	add r7, r7, r0
	sub r6, r6, r2
	sub r4, r4, r2
	add r5, r1, #0
	b _02063DC6
_02063D9C:
	ldr r1, [sp]
	and r1, r3
	mul r1, r2
	mov r2, ip
	add r3, r6, #0
	and r3, r2
	ldr r2, [sp, #0x24]
	add r1, r7, r1
	lsl r3, r2
	ldr r2, [sp]
	add r1, r1, r3
	and r2, r0
	ldr r0, [sp, #0x20]
	add sp, #8
	lsl r2, r0
	mov r0, ip
	mvn r0, r0
	add r1, r1, r2
	and r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02063DC6:
	cmp r4, #8
	blt _02063DD0
	mov r0, #3
	str r0, [sp, #4]
	b _02063DDC
_02063DD0:
	add r0, r4, #0
	blx sub_02076FA8
	mov r1, #0x1f
	sub r0, r1, r0
	str r0, [sp, #4]
_02063DDC:
	cmp r5, #8
	blt _02063DE4
	mov r0, #3
	b _02063DEE
_02063DE4:
	add r0, r5, #0
	blx sub_02076FA8
	mov r1, #0x1f
	sub r0, r1, r0
_02063DEE:
	lsl r1, r0, #3
	ldr r0, _02063E08 ; =0x020943B4
	add r0, r0, r1
	ldr r1, [sp, #4]
	lsl r2, r1, #1
	add r1, r0, r2
	ldrb r0, [r0, r2]
	str r0, [sp, #0x20]
	ldrb r0, [r1, #1]
	str r0, [sp, #0x24]
	b _02063D3A
	thumb_func_end sub_02063D24

	thumb_func_start sub_02063E04
sub_02063E04: ; 0x02063E04
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02063E08: .word 0x020943B4
	thumb_func_end sub_02063E04

	thumb_func_start sub_02063E0C
sub_02063E0C: ; 0x02063E0C
	ldrb r1, [r0, #1]
	ldrb r0, [r0]
	ldr r2, _02063E1C ; =0x020943D4
	lsl r3, r1, #4
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_02063E1C: .word 0x020943D4
	thumb_func_end sub_02063E0C

	thumb_func_start sub_02063E20
sub_02063E20: ; 0x02063E20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r0, #0
	ldr r2, [sp, #0x1c]
	cmp r3, #8
	bne _02063E40
	ldr r0, [sp, #0x18]
	cmp r0, #8
	bne _02063E40
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	lsl r2, r2, #3
	blx sub_0207869C
	pop {r3, r4, r5, r6, r7, pc}
_02063E40:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _02063E7E
	lsl r0, r3, #2
	lsl r1, r1, #2
	add r0, r1, r0
	mov r3, #0x20
	sub r0, r3, r0
	sub r3, #0x21
	lsr r3, r1
	add r1, r1, r0
	lsl r3, r1
	add r1, r3, #0
	lsr r1, r0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	and r0, r1
	mvn r2, r1
	lsl r1, r5, #2
	add r1, r4, r1
	lsl r3, r3, #2
	add r4, r1, r3
	cmp r1, r4
	bhs _02063EEA
_02063E70:
	ldr r3, [r1]
	and r3, r2
	orr r3, r0
	stmia r1!, {r3}
	cmp r1, r4
	blo _02063E70
	pop {r3, r4, r5, r6, r7, pc}
_02063E7E:
	lsl r0, r1, #3
	lsl r1, r3, #3
	add r1, r0, r1
	mov r3, #0x40
	sub r1, r3, r1
	sub r3, #0x41
	add r6, r3, #0
	lsr r6, r0
	cmp r1, #0x20
	blo _02063EA0
	add r7, r1, #0
	sub r7, #0x20
	add r3, r0, r7
	lsl r6, r3
	add r3, r6, #0
	lsr r3, r7
	b _02063EA4
_02063EA0:
	add r3, r6, #0
	lsl r3, r0
_02063EA4:
	mov r6, #0
	mvn r6, r6
	lsl r6, r1
	cmp r0, #0x20
	blo _02063EB8
	sub r0, #0x20
	add r1, r0, r1
	lsr r6, r1
	lsl r6, r0
	b _02063EBA
_02063EB8:
	lsr r6, r1
_02063EBA:
	lsl r5, r5, #3
	add r4, r4, r5
	ldr r5, [sp, #0x18]
	add r0, r2, #0
	add r1, r2, #0
	lsl r5, r5, #3
	add r5, r4, r5
	and r0, r3
	mvn r2, r3
	and r1, r6
	mvn r3, r6
	cmp r4, r5
	bhs _02063EEA
_02063ED4:
	ldr r6, [r4]
	and r6, r2
	orr r6, r0
	str r6, [r4]
	ldr r6, [r4, #4]
	and r6, r3
	orr r6, r1
	str r6, [r4, #4]
	add r4, #8
	cmp r4, r5
	blo _02063ED4
_02063EEA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02063E20

	thumb_func_start sub_02063EEC
sub_02063EEC: ; 0x02063EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	blt _02063EFC
	str r0, [sp]
	b _02063F00
_02063EFC:
	mov r1, #0
	str r1, [sp]
_02063F00:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	blt _02063F0A
	add r2, r1, #0
	b _02063F0C
_02063F0A:
	mov r2, #0
_02063F0C:
	ldr r3, [r4, #0x10]
	add r5, r0, r3
	cmp r5, #8
	blt _02063F16
	mov r5, #8
_02063F16:
	ldr r3, [r4, #0x14]
	add r3, r1, r3
	cmp r3, #8
	blt _02063F20
	mov r3, #8
_02063F20:
	cmp r1, #0
	ble _02063F26
	mov r1, #0
_02063F26:
	neg r6, r1
	cmp r0, #0
	ble _02063F2E
	mov r0, #0
_02063F2E:
	ldr r1, [r4, #0x18]
	ldr r7, [r4, #0x1c]
	neg r0, r0
	str r1, [sp, #0x20]
	mul r1, r6
	mul r0, r7
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [sp]
	add r1, r0, #0
	add r0, r5, #0
	mul r1, r6
	mul r0, r6
	add r5, r0, #0
	str r1, [sp]
	cmp r6, #4
	ldr r0, [r4]
	bne _02063FEA
	lsl r1, r2, #2
	add r1, r0, r1
	str r1, [sp, #0x1c]
	lsl r1, r3, #2
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	blo _02063F72
	b _02064098
_02063F72:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	ldr r6, [r0]
	mov r1, #0
	add r0, sp, #0x2c
	strb r1, [r0, #0xc]
	ldr r0, [sp, #0x24]
	lsl r3, r2, #0x1d
	lsr r1, r0, #3
	ldr r0, [sp, #0x28]
	mov r2, #0x1d
	add r0, r0, r1
	str r0, [sp, #0x34]
	mov r1, #0
	add r0, sp, #0x2c
	strb r1, [r0, #0xd]
	ldr r1, [sp, #0x24]
	add r0, sp, #0x34
	lsr r1, r1, #0x1f
	sub r3, r3, r1
	ror r3, r2
	add r1, r1, r3
	bl sub_02064F40
	ldr r4, [sp]
	add r0, r4, #0
	cmp r0, r5
	bhs _02063FCE
_02063FAA:
	add r0, sp, #0x34
	add r1, r7, #0
	bl sub_02064F40
	cmp r0, #0
	beq _02063FC8
	mov r1, #0xf
	lsl r1, r4
	ldr r2, [sp, #0x14]
	mvn r1, r1
	add r0, r2, r0
	and r1, r6
	lsl r0, r4
	add r6, r1, #0
	orr r6, r0
_02063FC8:
	add r4, r4, #4
	cmp r4, r5
	blo _02063FAA
_02063FCE:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	str r6, [r0]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	add r1, r0, #4
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blo _02063F72
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_02063FEA:
	lsl r1, r2, #3
	add r1, r0, r1
	str r1, [sp, #0x10]
	lsl r1, r3, #3
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r6, [r4, #0x24]
	cmp r1, r0
	bhs _02064098
_02063FFE:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	ldr r0, [r0]
	lsr r3, r1, #3
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #4]
	add r2, sp, #0x2c
	str r0, [sp, #4]
	mov r0, #0
	strb r0, [r2, #4]
	add r1, r1, r3
	str r1, [sp, #0x2c]
	strb r0, [r2, #5]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x24]
	lsr r1, r1, #0x1f
	lsl r3, r2, #0x1d
	sub r3, r3, r1
	mov r2, #0x1d
	ror r3, r2
	add r0, sp, #0x2c
	add r1, r1, r3
	bl sub_02064F40
	ldr r4, [sp]
	add r0, r4, #0
	cmp r0, r5
	bhs _0206407A
_0206403A:
	add r0, sp, #0x2c
	add r1, r7, #0
	bl sub_02064F40
	add r3, r0, #0
	beq _02064074
	cmp r4, #0x20
	bhs _0206405E
	mov r0, #0xff
	lsl r0, r4
	mvn r1, r0
	ldr r0, [sp, #8]
	and r0, r1
	add r1, r6, r3
	lsl r1, r4
	orr r0, r1
	str r0, [sp, #8]
	b _02064074
_0206405E:
	add r2, r4, #0
	sub r2, #0x20
	mov r0, #0xff
	lsl r0, r2
	mvn r1, r0
	ldr r0, [sp, #4]
	and r0, r1
	add r1, r6, r3
	lsl r1, r2
	orr r0, r1
	str r0, [sp, #4]
_02064074:
	add r4, #8
	cmp r4, r5
	blo _0206403A
_0206407A:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [r0]
	ldr r1, [sp, #4]
	str r1, [r0, #4]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x24]
	add r1, #8
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r1, r0
	blo _02063FFE
_02064098:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02063EEC

	thumb_func_start sub_0206409C
sub_0206409C: ; 0x0206409C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	str r2, [sp, #8]
	ldr r2, [sp]
	ldr r0, [sp, #0x64]
	ldr r2, [r2]
	str r0, [sp, #0x64]
	mov ip, r2
	ldr r2, [sp, #0x64]
	ldr r0, [sp]
	ldr r2, [r2]
	str r1, [sp, #4]
	ldrb r2, [r2, #1]
	ldrb r0, [r0, #0xc]
	str r3, [sp, #0xc]
	str r2, [sp, #0x14]
	ldr r2, [sp, #4]
	lsl r1, r0, #6
	ldr r2, [r2]
	asr r0, r1, #2
	ldr r2, [r2, #8]
	lsr r0, r0, #0x1d
	add r0, r1, r0
	ldrb r2, [r2, #1]
	asr r7, r0, #3
	ldr r0, [sp]
	ldr r1, [sp]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #4]
	ldr r1, [r1, #8]
	cmp r2, #0
	beq _020641C8
	ldr r3, [sp, #8]
	add r2, r3, r2
	bmi _020641C8
	ldr r4, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r5, r4, r3
	bmi _020641C8
	ldr r3, [sp, #8]
	cmp r3, #0
	bgt _020640F8
	mov r3, #0
	b _020640FA
_020640F8:
	lsr r3, r3, #3
_020640FA:
	ldr r4, [sp, #0xc]
	cmp r4, #0
	bgt _02064104
	mov r4, #0
	b _02064106
_02064104:
	lsr r4, r4, #3
_02064106:
	add r2, r2, #7
	lsr r2, r2, #3
	cmp r2, r0
	blo _02064110
	add r2, r0, #0
_02064110:
	add r0, r5, #7
	lsr r0, r0, #3
	cmp r0, r1
	blo _0206411A
	add r0, r1, #0
_0206411A:
	sub r1, r2, r3
	sub r2, r0, r4
	cmp r1, #0
	blt _020641C8
	cmp r2, #0
	blt _020641C8
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	mul r4, r0
	sub r0, r0, r1
	mul r0, r7
	add r3, r3, r4
	add r4, r7, #0
	str r0, [sp, #0x18]
	mul r4, r3
	mov r3, ip
	ldr r0, [sp, #8]
	add r5, r3, r4
	cmp r0, #0
	blt _02064148
	mov r3, #7
	and r0, r3
	str r0, [sp, #8]
_02064148:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02064154
	mov r3, #7
	and r0, r3
	str r0, [sp, #0xc]
_02064154:
	ldr r0, [sp, #8]
	lsl r1, r1, #3
	sub r6, r0, r1
	ldr r0, [sp, #0xc]
	lsl r1, r2, #3
	sub r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x64]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x60]
	sub r0, r0, #1
	str r0, [sp, #0x44]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #6]
	str r0, [sp, #0x3c]
	ldrb r1, [r1, #0xc]
	str r1, [sp, #0x40]
	ldr r1, [sp, #4]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	ldrb r1, [r1]
	mul r1, r0
	str r1, [sp, #0x38]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	ble _020641C8
_0206419A:
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #8]
	str r0, [sp, #0x2c]
	add r0, r4, #0
	cmp r0, r6
	ble _020641B8
_020641A6:
	add r0, sp, #0x20
	str r5, [sp, #0x20]
	str r4, [sp, #0x28]
	bl sub_02063EEC
	sub r4, #8
	add r5, r5, r7
	cmp r4, r6
	bgt _020641A6
_020641B8:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	add r5, r5, r0
	sub r1, #8
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _0206419A
_020641C8:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206409C

	thumb_func_start sub_020641CC
sub_020641CC: ; 0x020641CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r1, [sp, #8]
	ldr r1, [sp, #0x7c]
	str r3, [sp, #0x10]
	str r1, [sp, #0x7c]
	ldrb r1, [r0, #0xc]
	str r2, [sp, #0xc]
	ldr r3, [r0, #4]
	lsl r2, r1, #6
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x7c]
	ldr r4, [r0, #8]
	ldr r1, [r1]
	ldrb r2, [r1, #1]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	cmp r2, #0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #1]
	mov ip, r1
	beq _02064206
	ldr r1, [sp, #0xc]
	add r7, r1, r2
	bpl _02064208
_02064206:
	b _0206430E
_02064208:
	ldr r5, [sp, #0x10]
	mov r1, ip
	add r5, r5, r1
	bmi _0206430E
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bgt _0206421C
	mov r1, #0
	str r1, [sp, #0x14]
	b _02064220
_0206421C:
	lsr r1, r1, #3
	str r1, [sp, #0x14]
_02064220:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bgt _0206422A
	mov r6, #0
	b _0206422C
_0206422A:
	lsr r6, r1, #3
_0206422C:
	add r1, r7, #7
	lsr r1, r1, #3
	cmp r1, r3
	blo _02064236
	add r1, r3, #0
_02064236:
	add r3, r5, #7
	lsr r3, r3, #3
	cmp r3, r4
	blo _02064240
	add r3, r4, #0
_02064240:
	ldr r4, [sp, #0x14]
	sub r5, r3, r6
	sub r1, r1, r4
	cmp r1, #0
	blt _0206430E
	cmp r5, #0
	blt _0206430E
	ldr r3, [sp, #0xc]
	cmp r3, #0
	blt _0206425A
	mov r4, #7
	and r3, r4
	str r3, [sp, #0xc]
_0206425A:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	blt _02064266
	mov r4, #7
	and r3, r4
	str r3, [sp, #0x10]
_02064266:
	lsl r3, r1, #3
	ldr r1, [sp, #0xc]
	sub r7, r1, r3
	ldr r1, [sp, #0x10]
	lsl r3, r5, #3
	sub r1, r1, r3
	str r1, [sp, #0x30]
	ldr r1, [r0]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x7c]
	ldr r1, [r1, #4]
	str r1, [sp, #0x3c]
	mov r1, ip
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x78]
	str r2, [sp, #0x48]
	sub r1, r1, #1
	str r1, [sp, #0x5c]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	ldrb r1, [r1, #6]
	str r1, [sp, #0x54]
	ldrb r2, [r0, #0xc]
	str r2, [sp, #0x58]
	ldr r2, [sp, #8]
	ldr r2, [r2]
	ldr r2, [r2, #8]
	ldrb r2, [r2]
	mul r2, r1
	str r2, [sp, #0x50]
	ldr r1, [r0, #0x10]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r1, [sp, #0x34]
	str r0, [sp, #0x20]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x1c]
	cmp r1, r0
	ble _0206430E
_020642C4:
	ldr r0, [sp, #0x10]
	ldr r4, [sp, #0xc]
	str r0, [sp, #0x44]
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	cmp r0, r7
	ble _02064300
_020642D2:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063D24
	ldr r1, [sp, #0x18]
	str r4, [sp, #0x40]
	mul r1, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, r1
	str r0, [sp, #0x38]
	add r0, sp, #0x38
	bl sub_02063EEC
	sub r4, #8
	add r5, r5, #1
	cmp r4, r7
	bgt _020642D2
_02064300:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x30]
	sub r1, #8
	add r6, r6, #1
	str r1, [sp, #0x10]
	cmp r1, r0
	bgt _020642C4
_0206430E:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020641CC

	thumb_func_start sub_02064314
sub_02064314: ; 0x02064314
	push {r4, lr}
	add r3, r0, #0
	ldrb r2, [r3, #0xc]
	cmp r2, #4
	bne _02064324
	lsl r0, r1, #4
	orr r1, r0
	b _02064324
_02064324:
	lsl r0, r1, #8
	orr r1, r0
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r1, #0
	ldr r1, [r3]
	ldr r4, [r3, #4]
	ldr r3, [r3, #8]
	mul r3, r4
	lsl r4, r2, #6
	asr r2, r4, #2
	lsr r2, r2, #0x1d
	add r2, r4, r2
	asr r2, r2, #3
	mul r2, r3
	blx sub_0207869C
	pop {r4, pc}
	thumb_func_end sub_02064314

	thumb_func_start sub_02064348
sub_02064348: ; 0x02064348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #0xc]
	add r7, r1, #0
	cmp r0, #4
	bne _02064360
	lsl r1, r7, #4
	add r2, r7, #0
	orr r2, r1
	lsl r1, r2, #8
	b _02064364
_02064360:
	lsl r1, r7, #8
	add r2, r7, #0
_02064364:
	orr r2, r1
	lsl r1, r2, #0x10
	add r7, r2, #0
	orr r7, r1
	lsl r1, r0, #6
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r1, r0, #3
	ldr r0, [r6, #0x10]
	ldr r5, [r6]
	mul r0, r1
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r4, #0
	mul r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	cmp r0, #0
	ble _020643A2
_0206438C:
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	blx sub_0207869C
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r0
	ldr r0, [r6, #8]
	cmp r4, r0
	blt _0206438C
_020643A2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02064348

	thumb_func_start sub_020643A8
sub_020643A8: ; 0x020643A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0xc]
	add r6, r2, #0
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	add r1, r6, r1
	str r1, [sp, #0x34]
	add r1, r3, #0
	add r1, r1, r2
	str r1, [sp, #0x30]
	ldrb r1, [r0, #0xc]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, #4
	bne _020643DA
	ldr r1, [sp, #0xc]
	lsl r2, r1, #4
	orr r2, r1
	lsl r1, r2, #8
	orr r2, r1
	lsl r1, r2, #0x10
	orr r1, r2
	str r1, [sp, #0xc]
	b _020643E6
_020643DA:
	ldr r1, [sp, #0xc]
	lsl r2, r1, #8
	orr r2, r1
	lsl r1, r2, #0x10
	orr r1, r2
	str r1, [sp, #0xc]
_020643E6:
	add r2, r6, #0
	mov r1, #7
	str r2, [sp, #0x20]
	bic r2, r1
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0x3c]
	bic r2, r1
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	add r2, r2, #7
	str r2, [sp, #0x2c]
	bic r2, r1
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	add r2, r2, #7
	str r2, [sp, #0x28]
	bic r2, r1
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x28]
	lsl r2, r1, #6
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	ldr r2, [r0, #0x10]
	str r1, [sp, #0x1c]
	mul r1, r2
	str r1, [sp, #0x18]
	ldr r1, [r0]
	ldr r0, [sp, #0x20]
	asr r0, r0, #2
	lsr r3, r0, #0x1d
	ldr r0, [sp, #0x20]
	add r3, r0, r3
	asr r0, r3, #3
	ldr r3, [sp, #0x3c]
	asr r3, r3, #2
	lsr r4, r3, #0x1d
	ldr r3, [sp, #0x3c]
	add r4, r3, r4
	asr r3, r4, #3
	mul r2, r3
	add r2, r0, r2
	ldr r0, [sp, #0x1c]
	mul r2, r0
	add r0, r1, r2
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bge _020644C6
_0206444E:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0206445E
	add r1, r0, #0
	ldr r0, [sp, #0x3c]
	sub r7, r1, r0
	b _02064460
_0206445E:
	mov r7, #0
_02064460:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	sub r0, r1, r0
	cmp r0, #8
	ble _0206446C
	mov r0, #8
_0206446C:
	sub r0, r0, r7
	ldr r4, [sp, #0x20]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	ldr r5, [sp, #0x24]
	cmp r1, r0
	bge _020644B2
_0206447C:
	cmp r4, r6
	bge _02064484
	sub r1, r6, r4
	b _02064486
_02064484:
	mov r1, #0
_02064486:
	ldr r0, [sp, #0x34]
	sub r3, r0, r4
	cmp r3, #8
	ble _02064490
	mov r3, #8
_02064490:
	ldr r0, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	sub r3, r3, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02063E20
	ldr r0, [sp, #0x1c]
	add r4, #8
	add r5, r5, r0
	ldr r0, [sp, #0x2c]
	cmp r4, r0
	blt _0206447C
_020644B2:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x24]
	add r1, #8
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x3c]
	cmp r1, r0
	blt _0206444E
_020644C6:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020643A8

	thumb_func_start sub_020644CC
sub_020644CC: ; 0x020644CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r1, [sp, #0xc]
	add r6, r2, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x74]
	add r1, r6, r1
	str r1, [sp, #0x48]
	add r1, r3, #0
	add r1, r1, r2
	str r1, [sp, #0x44]
	ldrb r1, [r0, #0xc]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, #4
	bne _020644FE
	ldr r1, [sp, #0xc]
	lsl r2, r1, #4
	orr r2, r1
	lsl r1, r2, #8
	orr r2, r1
	lsl r1, r2, #0x10
	orr r1, r2
	str r1, [sp, #0xc]
	b _0206450A
_020644FE:
	ldr r1, [sp, #0xc]
	lsl r2, r1, #8
	orr r2, r1
	lsl r1, r2, #0x10
	orr r1, r2
	str r1, [sp, #0xc]
_0206450A:
	add r3, r6, #0
	mov r1, #7
	str r3, [sp, #0x30]
	bic r3, r1
	str r3, [sp, #0x30]
	ldr r3, [sp, #0x10]
	ldr r2, [r0, #0x10]
	str r3, [sp, #0x50]
	bic r3, r1
	str r3, [sp, #0x50]
	ldr r3, [sp, #0x48]
	str r2, [sp, #0x54]
	add r3, r3, #7
	str r3, [sp, #0x40]
	bic r3, r1
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r3, r3, #7
	str r3, [sp, #0x3c]
	bic r3, r1
	ldr r1, [r0, #4]
	str r3, [sp, #0x3c]
	str r1, [sp, #0x20]
	ldr r1, [r0, #8]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x28]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x18
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x38]
	lsl r2, r1, #6
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x50]
	asr r1, r1, #2
	lsr r2, r1, #0x1d
	ldr r1, [sp, #0x30]
	asr r0, r0, #2
	add r2, r1, r2
	asr r1, r2, #3
	str r1, [sp, #0x34]
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0x50]
	add r1, r0, r1
	asr r0, r1, #3
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x50]
	add r0, r3, #0
	cmp r1, r0
	bge _0206460E
_0206457E:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0206458E
	add r1, r0, #0
	ldr r0, [sp, #0x50]
	sub r7, r1, r0
	b _02064590
_0206458E:
	mov r7, #0
_02064590:
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x50]
	sub r0, r1, r0
	cmp r0, #8
	ble _0206459C
	mov r0, #8
_0206459C:
	sub r0, r0, r7
	ldr r4, [sp, #0x30]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	add r1, r4, #0
	ldr r5, [sp, #0x34]
	cmp r1, r0
	bge _020645FC
_020645AC:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r5, #0
	bl sub_02063D24
	add r2, r0, #0
	cmp r4, r6
	bge _020645CA
	sub r1, r6, r4
	b _020645CC
_020645CA:
	mov r1, #0
_020645CC:
	ldr r0, [sp, #0x48]
	sub r3, r0, r4
	cmp r3, #8
	ble _020645D6
	mov r3, #8
_020645D6:
	ldr r0, [sp, #0x4c]
	sub r3, r3, r1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mul r0, r2
	ldr r2, [sp, #0x38]
	add r0, r2, r0
	add r2, r7, #0
	bl sub_02063E20
	ldr r0, [sp, #0x40]
	add r4, #8
	add r5, r5, #1
	cmp r4, r0
	blt _020645AC
_020645FC:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x18]
	add r1, #8
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x50]
	cmp r1, r0
	blt _0206457E
_0206460E:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020644CC

	thumb_func_start sub_02064614
sub_02064614: ; 0x02064614
	str r2, [r0, #4]
	ldr r2, [sp]
	str r3, [r0, #8]
	strb r2, [r0, #0xc]
	str r1, [r0]
	ldr r1, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_02064614

	thumb_func_start sub_02064628
sub_02064628: ; 0x02064628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	str r0, [sp, #8]
	add r0, r6, #0
	add r4, r2, #0
	add r5, r3, #0
	bl sub_02063BC0
	add r7, r0, #0
	ldr r0, _020646DC ; =0x0000FFFF
	cmp r7, r0
	bne _0206464A
	ldr r0, [r6]
	ldrh r7, [r0, #2]
_0206464A:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02063BEC
	add r1, r0, #0
	str r1, [sp, #0xc]
	ldr r0, [r6]
	ldr r2, [r0, #8]
	add r0, r2, #0
	ldrh r2, [r2, #2]
	add r0, #8
	mul r2, r7
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [r6]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #7]
	cmp r2, #7
	bhi _020646BA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0206467C: ; jump table
	.short _0206468C - _0206467C - 2 ; case 0
	.short _02064694 - _0206467C - 2 ; case 1
	.short _02064694 - _0206467C - 2 ; case 2
	.short _020646A0 - _0206467C - 2 ; case 3
	.short _020646A0 - _0206467C - 2 ; case 4
	.short _020646B0 - _0206467C - 2 ; case 5
	.short _020646B0 - _0206467C - 2 ; case 6
	.short _0206468C - _0206467C - 2 ; case 7
_0206468C:
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r4, r4, r0
	b _020646BA
_02064694:
	ldrb r0, [r0]
	sub r4, r4, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r5, r5, r0
	b _020646BA
_020646A0:
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldrb r1, [r1, #1]
	ldrb r0, [r0, #1]
	add r1, r2, r1
	sub r4, r4, r1
	sub r5, r5, r0
	b _020646BA
_020646B0:
	mov r2, #0
	ldrsb r1, [r1, r2]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	sub r5, r5, r0
_020646BA:
	ldr r0, [sp, #0x28]
	add r2, r4, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r4, r0, #0
	ldr r4, [r4, #0x14]
	add r3, r5, #0
	ldr r4, [r4]
	blx r4
	ldr r1, [sp, #0xc]
	mov r0, #2
	ldrsb r0, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020646DC: .word 0x0000FFFF
	thumb_func_end sub_02064628

	thumb_func_start sub_020646E0
sub_020646E0: ; 0x020646E0
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, _020646F8 ; =0x0209439C
	str r4, [sp, #4]
	str r2, [sp, #8]
	bl sub_02064614
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_020646F8: .word 0x0209439C
	thumb_func_end sub_020646E0

	thumb_func_start sub_020646FC
sub_020646FC: ; 0x020646FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	str r1, [sp, #0xc]
	cmp r5, #8
	blt _02064710
	mov r6, #3
	b _0206471A
_02064710:
	add r0, r5, #0
	blx sub_02076FA8
	mov r1, #0x1f
	sub r6, r1, r0
_0206471A:
	cmp r4, #8
	blt _02064722
	mov r0, #3
	b _0206472C
_02064722:
	add r0, r4, #0
	blx sub_02076FA8
	mov r1, #0x1f
	sub r0, r1, r0
_0206472C:
	ldr r1, _0206476C ; =0x020943B4
	lsl r0, r0, #3
	add r3, r1, r0
	lsl r2, r6, #1
	ldr r1, [sp, #0x10]
	mov r0, #0xff
	bic r1, r0
	ldrb r0, [r3, r2]
	add r6, r3, r2
	add r2, r5, #0
	orr r1, r0
	ldr r0, _02064770 ; =0xFFFF00FF
	str r1, [sp, #0x10]
	and r0, r1
	ldrb r1, [r6, #1]
	add r3, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, _02064774 ; =0x020943A8
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_02064614
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0206476C: .word 0x020943B4
_02064770: .word 0xFFFF00FF
_02064774: .word 0x020943A8
	thumb_func_end sub_020646FC

	thumb_func_start sub_02064778
sub_02064778: ; 0x02064778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	cmp r3, #0x20
	bgt _020647AA
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r4, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mul r4, r0
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	lsl r4, r0, #1
	ldr r0, [sp, #8]
	add r0, r0, r4
	bl sub_02064808
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020647AA:
	ldr r3, [sp, #0xc]
	add r3, r3, r1
	ldr r1, [sp, #0x28]
	add r1, r1, r2
	mov ip, r1
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x28]
	lsl r1, r1, #0x1c
	lsr r6, r1, #0x10
	mov r1, ip
	cmp r2, r1
	bge _02064802
	mov r7, #0x3e
	lsl r7, r7, #4
_020647C6:
	ldr r1, [sp, #0x28]
	cmp r1, #0x20
	blt _020647CE
	add r1, #0x20
_020647CE:
	lsl r2, r1, #6
	ldr r1, [sp, #8]
	ldr r4, [sp, #0xc]
	add r5, r1, r2
	add r1, r4, #0
	cmp r1, r3
	bge _020647F6
_020647DC:
	cmp r4, #0x20
	bge _020647E4
	add r1, r4, #0
	b _020647E6
_020647E4:
	add r1, r4, r7
_020647E6:
	add r2, r6, #0
	orr r2, r0
	lsl r1, r1, #1
	add r4, r4, #1
	add r0, r0, #1
	strh r2, [r5, r1]
	cmp r4, r3
	blt _020647DC
_020647F6:
	ldr r1, [sp, #0x28]
	add r2, r1, #1
	mov r1, ip
	str r2, [sp, #0x28]
	cmp r2, r1
	blt _020647C6
_02064802:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02064778

	thumb_func_start sub_02064808
sub_02064808: ; 0x02064808
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	add r4, r1, #0
	lsl r0, r0, #0x1c
	mov lr, r2
	ldr r1, [sp, #0x18]
	lsr r0, r0, #0x10
	mov r7, #0
	cmp r2, #0
	ble _02064846
	lsl r2, r3, #1
	mov ip, r2
_02064822:
	add r5, r6, #0
	mov r3, #0
	cmp r4, #0
	ble _0206483A
_0206482A:
	add r2, r0, #0
	orr r2, r1
	strh r2, [r5]
	add r3, r3, #1
	add r1, r1, #1
	add r5, r5, #2
	cmp r3, r4
	blt _0206482A
_0206483A:
	mov r2, ip
	add r6, r6, r2
	add r7, r7, #1
	mov r2, lr
	cmp r7, r2
	blt _02064822
_02064846:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02064808

	thumb_func_start sub_02064848
sub_02064848: ; 0x02064848
	push {r4, r5, r6, r7}
	mov r6, #2
	and r6, r0
	lsr r7, r6, #1
	mov r6, #1
	add r5, r1, #0
	lsr r4, r0, #3
	add r2, r0, #0
	and r0, r6
	add r0, r7, r0
	mov r7, #2
	mov r1, #4
	and r2, r1
	and r7, r5
	and r1, r5
	lsr r3, r5, #3
	lsr r7, r7, #1
	and r5, r6
	add r6, r7, r5
	add r5, r4, #0
	mov r7, #0
	mul r5, r3
	add r5, r7, r5
	lsr r2, r2, #2
	lsl r7, r0, #1
	add r7, r2, r7
	mul r7, r3
	add r3, r5, r7
	lsr r1, r1, #2
	lsl r5, r6, #1
	add r5, r1, r5
	mul r5, r4
	add r2, r0, r2
	add r0, r6, r1
	add r3, r3, r5
	mul r0, r2
	add r0, r3, r0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_02064848

	thumb_func_start sub_02064898
sub_02064898: ; 0x02064898
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r0, [sp, #0x58]
	str r1, [sp, #0x10]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	str r2, [sp, #0x14]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x64]
	str r3, [sp, #0x18]
	str r0, [sp, #0x64]
	add r0, r1, #0
	ldr r5, [sp, #0x60]
	cmp r0, #8
	blt _020648BC
	mov r6, #3
	b _020648C4
_020648BC:
	blx sub_02076FA8
	mov r1, #0x1f
	sub r6, r1, r0
_020648C4:
	ldr r0, [sp, #0x14]
	cmp r0, #8
	blt _020648CE
	mov r0, #3
	b _020648D6
_020648CE:
	blx sub_02076FA8
	mov r1, #0x1f
	sub r0, r1, r0
_020648D6:
	ldr r1, _02064A9C ; =0x020943B4
	lsl r0, r0, #3
	add r2, r1, r0
	lsl r1, r6, #1
	add r0, r2, r1
	ldrb r1, [r2, r1]
	str r1, [sp, #0x3c]
	ldrb r1, [r0, #1]
	ldr r2, [sp, #0x3c]
	str r1, [sp, #0x38]
	mov r1, #0
	mvn r1, r1
	add r3, r1, #0
	lsl r3, r2
	ldr r2, [sp, #0x10]
	and r2, r3
	str r2, [sp, #0x34]
	add r3, r1, #0
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x14]
	lsl r3, r2
	and r1, r3
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	bne _02064910
	mov r1, #1
	str r1, [sp, #0x1c]
	b _02064914
_02064910:
	mov r1, #2
	str r1, [sp, #0x1c]
_02064914:
	mov r1, #0
	str r1, [sp, #0x2c]
	bl sub_02063E0C
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x20]
	add r6, r1, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x14]
	asr r6, r0
	ldr r0, [sp, #0x38]
	asr r1, r0
	mov ip, r1
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	lsl r1, r0
	ldr r0, [sp, #0x38]
	lsl r1, r0
	ldr r0, [sp, #0x64]
	asr r1, r0
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, ip
	str r1, [sp, #0x28]
	cmp r0, #0
	ble _020649B8
	ldr r0, [sp, #0x5c]
	lsl r0, r0, #0xd
	str r0, [sp, #0x40]
_0206494E:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x38]
	mov r3, #0
	lsl r1, r0
	ldr r0, [sp, #0x58]
	lsl r1, r1, #3
	add r0, r0, r1
	cmp r6, #0
	ble _020649AC
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02064964:
	ldr r0, [sp, #0x3c]
	add r1, r3, #0
	lsl r1, r0
	ldr r0, [sp, #0x18]
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #0x17
	lsr r2, r0, #7
	ldr r1, [r4]
	ldr r0, _02064AA0 ; =0xFE00FF00
	add r3, r3, #1
	and r0, r1
	orr r0, r7
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02064AA4 ; =0x3FFF3FFF
	and r1, r0
	ldr r0, [sp, #0x20]
	orr r0, r1
	str r0, [r4]
	ldrh r1, [r4, #4]
	ldr r0, _02064AA8 ; =0xFFFFFC00
	and r0, r1
	orr r0, r5
	strh r0, [r4, #4]
	ldr r1, [r4]
	ldr r0, _02064AAC ; =0xFFFFDFFF
	and r1, r0
	ldr r0, [sp, #0x40]
	orr r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x28]
	add r4, #8
	add r5, r5, r0
	cmp r3, r6
	blt _02064964
_020649AC:
	ldr r0, [sp, #0x24]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _0206494E
_020649B8:
	mov r0, ip
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _02064A0C
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x34]
	sub r7, r1, r0
	ldr r0, [sp, #0x58]
	lsl r6, r3, #3
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x64]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r7, #0
	add r3, r3, r6
	bl sub_02064898
	lsl r1, r0, #3
	add r4, r4, r1
	ldr r1, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	mul r1, r7
	mul r1, r0
	ldr r0, [sp, #0x64]
	lsr r1, r0
	add r5, r5, r1
_02064A0C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _02064A52
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x18]
	sub r6, r1, r0
	lsl r1, r0, #3
	ldr r0, [sp, #0x58]
	add r2, r6, #0
	add r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [sp, #0x64]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02064898
	lsl r1, r0, #3
	add r4, r4, r1
	ldr r1, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	mul r0, r1
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0x64]
	lsr r1, r0
	add r5, r5, r1
_02064A52:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _02064A96
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _02064A96
	add r0, r1, #0
	lsl r1, r0, #3
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x10]
	add r0, r0, r1
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	sub r1, r2, r1
	str r0, [sp, #4]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x64]
	sub r2, r3, r2
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r0, r4, #0
	lsl r4, r3, #3
	ldr r3, [sp, #0x18]
	add r3, r3, r4
	bl sub_02064898
	ldr r1, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x2c]
_02064A96:
	ldr r0, [sp, #0x2c]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02064A9C: .word 0x020943B4
_02064AA0: .word 0xFE00FF00
_02064AA4: .word 0x3FFF3FFF
_02064AA8: .word 0xFFFFFC00
_02064AAC: .word 0xFFFFDFFF
	thumb_func_end sub_02064898

	thumb_func_start sub_02064AB0
sub_02064AB0: ; 0x02064AB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r5, r1, #0
	add r1, sp, #0x28
	mov r0, #0x19
	ldrsb r0, [r1, r0]
	add r4, r2, #0
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6, #8]
	str r0, [sp, #0x18]
	ldr r0, [r6, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #4]
	add r0, sp, #0x1c
	blx r7
	cmp r0, #0
	beq _02064B12
	add r2, sp, #0x28
	mov r1, #0x18
	ldrsb r1, [r2, r1]
	str r1, [sp, #0x10]
_02064AE4:
	cmp r0, #0xa
	beq _02064B12
	ldr r1, [sp, #8]
	add r2, r5, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	add r3, r4, #0
	bl sub_02064628
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	mul r1, r0
	add r5, r5, r1
	ldr r1, [sp, #0xc]
	mul r1, r0
	add r0, sp, #0x1c
	add r4, r4, r1
	blx r7
	cmp r0, #0
	bne _02064AE4
_02064B12:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq _02064B26
	cmp r0, #0xa
	bne _02064B20
	ldr r1, [sp, #0x1c]
	b _02064B22
_02064B20:
	mov r1, #0
_02064B22:
	ldr r0, [sp, #0x3c]
	str r1, [r0]
_02064B26:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02064AB0

	thumb_func_start sub_02064B2C
sub_02064B2C: ; 0x02064B2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	str r2, [sp, #0x10]
	str r0, [sp, #0x58]
	ldr r0, [r7, #4]
	str r1, [sp, #0xc]
	ldr r1, [r0]
	mov r0, #1
	ldrsb r1, [r1, r0]
	ldr r2, [r7, #0xc]
	str r3, [sp, #0x14]
	add r3, r2, r1
	ldr r2, [sp, #0x60]
	add r1, sp, #0x48
	str r2, [sp, #0x40]
	mov r4, #0x1d
	ldrsb r4, [r1, r4]
	str r4, [sp, #0x24]
	neg r4, r4
	mul r4, r3
	str r4, [sp, #0x34]
	mov r4, #0x1c
	ldrsb r4, [r1, r4]
	str r4, [sp, #0x18]
	mul r4, r3
	str r4, [sp, #0x30]
	cmp r2, #0
	beq _02064C16
	ldr r2, [sp, #0x5c]
	lsl r3, r0, #0xb
	lsl r0, r0, #0xa
	and r0, r2
	str r0, [sp, #0x20]
	and r3, r2
	ldr r0, [sp, #0x14]
	mov r5, #0
	add r2, r0, #1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x1c]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x28]
	str r0, [sp, #0x38]
	ldrb r0, [r1, #0x1d]
	str r0, [sp, #0x3c]
_02064B8E:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	add r6, r1, r0
	ldr r0, [sp, #0x10]
	add r4, r0, r5
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02064BBC
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r2, [sp, #0x40]
	mov r3, #0
	bl sub_02063C1C
	ldr r1, [sp, #0x14]
	sub r0, r1, r0
	ldr r1, [sp, #0x18]
	mul r1, r0
	add r6, r6, r1
	ldr r1, [sp, #0x24]
	mul r1, r0
	add r4, r4, r1
	b _02064BE6
_02064BBC:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02064BE6
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r2, [sp, #0x40]
	mov r3, #0
	bl sub_02063C1C
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0x1c]
	sub r0, r0, r1
	ldr r1, [sp, #0x18]
	mul r1, r0
	add r6, r6, r1
	ldr r1, [sp, #0x24]
	mul r1, r0
	add r4, r4, r1
_02064BE6:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	str r0, [sp]
	add r0, sp, #0x40
	str r0, [sp, #4]
	add r0, sp, #8
	strb r1, [r0]
	ldr r1, [sp, #0x3c]
	ldr r3, [sp, #0x58]
	strb r1, [r0, #1]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02064AB0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r5, r5, r0
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _02064B8E
_02064C16:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02064B2C

	thumb_func_start sub_02064C1C
sub_02064C1C: ; 0x02064C1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	ldr r0, [sp, #0x44]
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	str r3, [sp, #0x10]
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	add r0, sp, #0x1c
	ldr r6, [sp, #0x40]
	bl sub_02063CC8
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x18]
	str r1, [sp, #0x28]
	mov r1, #0x10
	str r0, [sp, #0x14]
	str r0, [sp, #0x24]
	tst r1, r6
	beq _02064C6A
	add r0, r0, #1
	neg r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, sp, #0x30
	mov r2, #0x18
	ldrsb r2, [r0, r2]
	mul r2, r1
	add r5, r5, r2
	mov r2, #0x19
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
	b _02064C84
_02064C6A:
	mov r1, #0x20
	tst r1, r6
	beq _02064C84
	neg r1, r0
	add r0, sp, #0x30
	mov r2, #0x18
	ldrsb r2, [r0, r2]
	mul r2, r1
	add r5, r5, r2
	mov r2, #0x19
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
_02064C84:
	mov r0, #2
	tst r0, r6
	beq _02064CAC
	ldr r0, [sp, #0x28]
	mov r2, #0x19
	add r0, r0, #1
	neg r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, sp, #0x30
	ldrsb r2, [r0, r2]
	neg r2, r2
	mul r2, r1
	add r5, r5, r2
	mov r2, #0x18
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
	b _02064CCA
_02064CAC:
	mov r0, #4
	tst r0, r6
	beq _02064CCA
	ldr r0, [sp, #0x28]
	mov r2, #0x19
	neg r1, r0
	add r0, sp, #0x30
	ldrsb r2, [r0, r2]
	neg r2, r2
	mul r2, r1
	add r5, r5, r2
	mov r2, #0x18
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
_02064CCA:
	ldr r0, [sp, #0x10]
	add r2, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x30
	ldrb r1, [r0, #0x18]
	ldr r3, [sp, #0x24]
	strb r1, [r2]
	ldrb r0, [r0, #0x19]
	add r1, r5, #0
	strb r0, [r2, #1]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02064B2C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02064C1C

	thumb_func_start sub_02064CF0
sub_02064CF0: ; 0x02064CF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #1
	ldr r1, [sp, #0x30]
	lsl r0, r0, #8
	add r4, r2, #0
	add r7, r3, #0
	tst r0, r1
	beq _02064D2A
	ldr r0, [r6, #4]
	ldr r1, [r6, #0xc]
	ldr r2, [sp, #0x34]
	bl sub_02063C84
	ldr r1, [sp, #0x28]
	mov r2, #1
	sub r1, r1, r0
	add r0, sp, #0x38
	ldrsb r2, [r0, r2]
	neg r2, r2
	mul r2, r1
	add r5, r5, r2
	mov r2, #0
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
	b _02064D62
_02064D2A:
	mov r0, #0x80
	tst r0, r1
	beq _02064D62
	ldr r0, [r6, #4]
	ldr r1, [r6, #0xc]
	ldr r2, [sp, #0x34]
	bl sub_02063C84
	ldr r1, [sp, #0x28]
	add r2, r1, #1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	add r2, r0, #1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r1, r1, #1
	asr r0, r0, #1
	sub r1, r1, r0
	add r0, sp, #0x38
	mov r2, #1
	ldrsb r2, [r0, r2]
	neg r2, r2
	mul r2, r1
	add r5, r5, r2
	mov r2, #0
	ldrsb r0, [r0, r2]
	mul r0, r1
	add r4, r4, r0
_02064D62:
	ldr r0, [sp, #0x2c]
	add r1, sp, #0x38
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldrb r2, [r1]
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldrb r1, [r1, #1]
	str r0, [sp, #8]
	add r0, sp, #0xc
	strb r2, [r0]
	strb r1, [r0, #1]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02064B2C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02064CF0

	thumb_func_start sub_02064D8C
sub_02064D8C: ; 0x02064D8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	cmp r5, #0
	beq _02064DD4
	beq _02064DA6
	ldr r1, [r5]
	ldr r0, _02064E9C ; =0x4E465452
	cmp r1, r0
	bne _02064DA6
	mov r0, #1
	b _02064DA8
_02064DA6:
	mov r0, #0
_02064DA8:
	cmp r0, #0
	beq _02064DB0
	mov r0, #1
	b _02064DB2
_02064DB0:
	mov r0, #0
_02064DB2:
	cmp r0, #0
	beq _02064DD6
	cmp r5, #0
	beq _02064DC6
	ldrh r1, [r5, #6]
	ldr r0, _02064EA0 ; =0x00000102
	cmp r1, r0
	blo _02064DC6
	mov r0, #1
	b _02064DC8
_02064DC6:
	mov r0, #0
_02064DC8:
	cmp r0, #0
	beq _02064DD0
	mov r0, #1
	b _02064DD6
_02064DD0:
	mov r0, #0
	b _02064DD6
_02064DD4:
	add r0, r6, #0
_02064DD6:
	cmp r0, #0
	bne _02064E6E
	cmp r5, #0
	beq _02064E1A
	beq _02064DEC
	ldr r1, [r5]
	ldr r0, _02064E9C ; =0x4E465452
	cmp r1, r0
	bne _02064DEC
	mov r0, #1
	b _02064DEE
_02064DEC:
	mov r0, #0
_02064DEE:
	cmp r0, #0
	beq _02064DF6
	mov r0, #1
	b _02064DF8
_02064DF6:
	mov r0, #0
_02064DF8:
	cmp r0, #0
	beq _02064E1C
	cmp r5, #0
	beq _02064E0C
	ldrh r1, [r5, #6]
	ldr r0, _02064EA4 ; =0x00000101
	cmp r1, r0
	blo _02064E0C
	mov r0, #1
	b _02064E0E
_02064E0C:
	mov r0, #0
_02064E0E:
	cmp r0, #0
	beq _02064E16
	mov r0, #1
	b _02064E1C
_02064E16:
	mov r0, #0
	b _02064E1C
_02064E1A:
	mov r0, #0
_02064E1C:
	cmp r0, #0
	bne _02064E6E
	cmp r5, #0
	beq _02064E62
	beq _02064E32
	ldr r1, [r5]
	ldr r0, _02064E9C ; =0x4E465452
	cmp r1, r0
	bne _02064E32
	mov r0, #1
	b _02064E34
_02064E32:
	mov r0, #0
_02064E34:
	cmp r0, #0
	beq _02064E3C
	mov r0, #1
	b _02064E3E
_02064E3C:
	mov r0, #0
_02064E3E:
	cmp r0, #0
	beq _02064E64
	cmp r5, #0
	beq _02064E54
	ldrh r1, [r5, #6]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	blo _02064E54
	mov r0, #1
	b _02064E56
_02064E54:
	mov r0, #0
_02064E56:
	cmp r0, #0
	beq _02064E5E
	mov r0, #1
	b _02064E64
_02064E5E:
	mov r0, #0
	b _02064E64
_02064E62:
	mov r0, #0
_02064E64:
	cmp r0, #0
	bne _02064E6C
	bl sub_0207C774
_02064E6C:
	mov r6, #1
_02064E6E:
	add r0, r5, #0
	bl sub_02064EAC
	ldr r1, _02064EA8 ; =0x46494E46
	add r0, r5, #0
	bl sub_02060358
	cmp r0, #0
	bne _02064E86
	mov r0, #0
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02064E86:
	add r0, #8
	str r0, [r4]
	cmp r6, #0
	beq _02064E96
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #7]
_02064E96:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02064E9C: .word 0x4E465452
_02064EA0: .word 0x00000102
_02064EA4: .word 0x00000101
_02064EA8: .word 0x46494E46
	thumb_func_end sub_02064D8C

	thumb_func_start sub_02064EAC
sub_02064EAC: ; 0x02064EAC
	push {r4, r5, r6, r7}
	add r2, r0, #0
	ldrh r0, [r2, #0xc]
	ldrh r3, [r2, #0xe]
	mov r1, #0
	add r0, r2, r0
	cmp r3, #0
	ble _02064F2A
	ldr r4, _02064F30 ; =0x434D4150
	ldr r3, _02064F34 ; =0x43474C50
	add r5, r4, #0
_02064EC2:
	ldr r6, [r0]
	cmp r6, r5
	bhi _02064ED0
	cmp r6, r4
	bhs _02064F10
	cmp r6, r3
	b _02064F1E
_02064ED0:
	ldr r7, _02064F38 ; =0x43574448
	cmp r6, r7
	bhi _02064EDA
	beq _02064F00
	b _02064F1E
_02064EDA:
	ldr r7, _02064F3C ; =0x46494E46
	cmp r6, r7
	bne _02064F1E
	add r6, r0, #0
	add r6, #8
	ldr r7, [r6, #8]
	add r7, r7, r2
	str r7, [r6, #8]
	ldr r7, [r6, #0xc]
	cmp r7, #0
	beq _02064EF4
	add r7, r7, r2
	str r7, [r6, #0xc]
_02064EF4:
	ldr r7, [r6, #0x10]
	cmp r7, #0
	beq _02064F1E
	add r7, r7, r2
	str r7, [r6, #0x10]
	b _02064F1E
_02064F00:
	add r6, r0, #0
	add r6, #8
	ldr r7, [r6, #4]
	cmp r7, #0
	beq _02064F1E
	add r7, r7, r2
	str r7, [r6, #4]
	b _02064F1E
_02064F10:
	add r6, r0, #0
	add r6, #8
	ldr r7, [r6, #8]
	cmp r7, #0
	beq _02064F1E
	add r7, r7, r2
	str r7, [r6, #8]
_02064F1E:
	ldr r6, [r0, #4]
	add r1, r1, #1
	add r0, r0, r6
	ldrh r6, [r2, #0xe]
	cmp r1, r6
	blt _02064EC2
_02064F2A:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02064F30: .word 0x434D4150
_02064F34: .word 0x43474C50
_02064F38: .word 0x43574448
_02064F3C: .word 0x46494E46
	thumb_func_end sub_02064EAC

	thumb_func_start sub_02064F40
sub_02064F40: ; 0x02064F40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	ldrsb r1, [r0, r1]
	ldrb r2, [r0, #5]
	cmp r1, r5
	bge _02064F6A
	ldr r3, [r0]
	add r4, r2, #0
	add r2, r3, #1
	str r2, [r0]
	ldrb r2, [r3]
	sub r1, r5, r1
	lsl r4, r1
	strb r2, [r0, #5]
	mov r2, #8
	strb r2, [r0, #4]
	bl sub_02064F40
	orr r4, r0
	b _02064F72
_02064F6A:
	sub r1, r1, r5
	add r4, r2, #0
	lsr r4, r1
	strb r1, [r0, #4]
_02064F72:
	mov r0, #8
	mov r1, #0xff
	sub r0, r0, r5
	asr r1, r0
	add r0, r4, #0
	and r0, r1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064F40

	thumb_func_start sub_02064F80
sub_02064F80: ; 0x02064F80
	ldr r1, [r0]
	ldrh r2, [r1]
	add r1, r1, #2
	str r1, [r0]
	add r0, r2, #0
	bx lr
	thumb_func_end sub_02064F80

	thumb_func_start sub_02064F8C
sub_02064F8C: ; 0x02064F8C
	cmp r0, #0
	beq _02064F94
	cmp r1, #0
	bne _02064F98
_02064F94:
	mov r0, #0
	bx lr
_02064F98:
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _02064FB4
	cmp r0, #0x4d
	beq _02064FA8
	cmp r0, #0x56
	beq _02064FB4
	b _02064FC0
_02064FA8:
	ldrb r0, [r1, #0x18]
	mov r1, #3
	lsl r0, r0, #1
	add r0, #0x1c
	bic r0, r1
	bx lr
_02064FB4:
	ldrb r0, [r1, #0x17]
	mov r1, #3
	lsl r0, r0, #1
	add r0, #0x1c
	bic r0, r1
	bx lr
_02064FC0:
	mov r0, #0
	bx lr
	thumb_func_end sub_02064F8C

	thumb_func_start sub_02064FC4
sub_02064FC4: ; 0x02064FC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov ip, r2
	mov r2, #0
	add r6, r1, #0
	str r2, [r7]
	str r6, [r7, #8]
	str r2, [r7, #0x10]
	mov r0, #0x7f
	strb r0, [r7, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r7, #4]
	str r3, [r7, #0x14]
	strb r2, [r7, #0x19]
	ldr r0, _0206501C ; =0x0209B284
	str r2, [r7, #0xc]
	ldr r5, [r0]
	cmp r5, #0
	bls _0206501A
	ldrb r4, [r6]
	ldr r3, _02065020 ; =0x0209B2A8
_02064FF0:
	ldrb r0, [r3]
	cmp r4, r0
	bne _02065012
	ldrh r1, [r6, #2]
	ldrh r0, [r3, #2]
	cmp r1, r0
	bne _02065012
	ldr r0, _02065024 ; =0x0209B2AC
	lsl r1, r2, #3
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _0206501A
	add r0, r7, #0
	add r1, r6, #0
	mov r2, ip
	blx r3
	pop {r3, r4, r5, r6, r7, pc}
_02065012:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blo _02064FF0
_0206501A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206501C: .word 0x0209B284
_02065020: .word 0x0209B2A8
_02065024: .word 0x0209B2AC
	thumb_func_end sub_02064FC4

	thumb_func_start sub_02065028
sub_02065028: ; 0x02065028
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x54
	blx sub_02078658
	ldr r0, _02065050 ; =0x0209B2A4
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _02065054 ; =0x0209B2A0
	ldr r0, [r0]
	str r0, [r5, #0x14]
	ldr r0, _02065058 ; =0x0209B29C
	ldr r0, [r0]
	str r0, [r5, #0x1c]
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_02065050: .word 0x0209B2A4
_02065054: .word 0x0209B2A0
_02065058: .word 0x0209B29C
	thumb_func_end sub_02065028

	thumb_func_start sub_0206505C
sub_0206505C: ; 0x0206505C
	push {r3, r4}
	ldr r2, [r0]
	cmp r2, #0
	bne _0206506A
	str r1, [r0]
	pop {r3, r4}
	bx lr
_0206506A:
	ldr r3, [r2, #0x10]
	cmp r3, #0
	bne _02065096
	ldrb r4, [r2, #0x18]
	ldrb r3, [r1, #0x18]
	cmp r4, r3
	bls _02065090
	ldr r3, [r1, #0x10]
	add r4, r1, #0
	cmp r3, #0
	beq _02065088
_02065080:
	ldr r4, [r4, #0x10]
	ldr r3, [r4, #0x10]
	cmp r3, #0
	bne _02065080
_02065088:
	str r2, [r4, #0x10]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_02065090:
	str r1, [r2, #0x10]
	pop {r3, r4}
	bx lr
_02065096:
	beq _020650C0
	ldrb r4, [r1, #0x18]
_0206509A:
	ldrb r0, [r3, #0x18]
	cmp r0, r4
	blo _020650B8
	ldr r0, [r1, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _020650B0
_020650A8:
	ldr r4, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020650A8
_020650B0:
	str r1, [r2, #0x10]
	str r3, [r4, #0x10]
	pop {r3, r4}
	bx lr
_020650B8:
	add r2, r3, #0
	ldr r3, [r3, #0x10]
	cmp r3, #0
	bne _0206509A
_020650C0:
	str r1, [r2, #0x10]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0206505C

	thumb_func_start sub_020650C8
sub_020650C8: ; 0x020650C8
	push {r4, r5, r6, r7}
	cmp r1, #0
	beq _02065106
_020650CE:
	ldrb r2, [r1, #0x19]
	mov r4, #0
	cmp r2, #0
	ble _02065100
	add r5, r1, #0
_020650D8:
	ldrh r3, [r5, #0x1a]
	mov r2, #1
	lsl r2, r2, #8
	tst r2, r3
	beq _020650F6
	asr r2, r4, #5
	lsl r3, r2, #2
	mov r6, #0x1f
	add r7, r4, #0
	and r7, r6
	mov r6, #1
	ldr r2, [r0, r3]
	lsl r6, r7
	orr r2, r6
	str r2, [r0, r3]
_020650F6:
	ldrb r2, [r1, #0x19]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r2
	blt _020650D8
_02065100:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020650CE
_02065106:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_020650C8

	thumb_func_start sub_0206510C
sub_0206510C: ; 0x0206510C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02065164
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02065164
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _0206513E
	cmp r0, #0x4d
	beq _0206512A
	cmp r0, #0x56
	beq _02065152
	pop {r3, r4, r5, pc}
_0206512A:
	add r0, r5, #0
	add r0, #0x3c
	bl sub_020650C8
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206505C
	pop {r3, r4, r5, pc}
_0206513E:
	add r0, r5, #0
	add r0, #0x44
	bl sub_020650C8
	add r5, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206505C
	pop {r3, r4, r5, pc}
_02065152:
	add r0, r5, #0
	add r0, #0x4c
	bl sub_020650C8
	add r5, #0x18
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206505C
_02065164:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206510C

	thumb_func_start sub_02065168
sub_02065168: ; 0x02065168
	ldr r3, [r0]
	cmp r3, #0
	bne _02065172
	mov r0, #0
	bx lr
_02065172:
	cmp r3, r1
	ldr r2, [r3, #0x10]
	bne _02065182
	str r2, [r0]
	mov r0, #0
	str r0, [r1, #0x10]
	mov r0, #1
	bx lr
_02065182:
	cmp r2, #0
	beq _0206519E
_02065186:
	cmp r2, r1
	bne _02065196
	ldr r0, [r2, #0x10]
	str r0, [r3, #0x10]
	mov r0, #0
	str r0, [r2, #0x10]
	mov r0, #1
	bx lr
_02065196:
	add r3, r2, #0
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _02065186
_0206519E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02065168

	thumb_func_start sub_020651A4
sub_020651A4: ; 0x020651A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #8
	add r5, r1, #0
	bl sub_02065168
	cmp r0, #0
	bne _020651D0
	add r0, r4, #0
	add r0, #0x10
	add r1, r5, #0
	bl sub_02065168
	cmp r0, #0
	bne _020651D0
	add r0, r4, #0
	add r0, #0x18
	add r1, r5, #0
	bl sub_02065168
	cmp r0, #0
	beq _020651D8
_020651D0:
	ldr r1, [r4]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4]
_020651D8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020651A4

	thumb_func_start sub_020651DC
sub_020651DC: ; 0x020651DC
	cmp r0, #0
	beq _020651E6
	ldrh r0, [r0, #0xc]
	lsl r0, r0, #3
	bx lr
_020651E6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_020651DC

	thumb_func_start sub_020651EC
sub_020651EC: ; 0x020651EC
	cmp r0, #0
	beq _020651F6
	ldrh r0, [r0, #0x1c]
	lsl r0, r0, #3
	bx lr
_020651F6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_020651EC

	thumb_func_start sub_020651FC
sub_020651FC: ; 0x020651FC
	cmp r1, #0
	beq _02065202
	str r1, [r0, #8]
_02065202:
	cmp r2, #0
	beq _02065208
	str r2, [r0, #0x18]
_02065208:
	bx lr
	.align 2, 0
	thumb_func_end sub_020651FC

	thumb_func_start sub_0206520C
sub_0206520C: ; 0x0206520C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0
	beq _0206521A
	bl sub_02076138
_0206521A:
	ldrh r0, [r5, #0xc]
	lsl r2, r0, #3
	beq _02065236
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	lsl r1, r1, #0x10
	add r0, r5, r0
	lsr r1, r1, #0xd
	bl sub_02076170
	ldrh r1, [r5, #0x10]
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #0x10]
_02065236:
	ldrh r0, [r5, #0x1c]
	lsl r6, r0, #3
	beq _02065276
	ldr r0, [r5, #0x18]
	add r2, r6, #0
	lsl r0, r0, #0x10
	lsr r4, r0, #0xd
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	add r0, r5, r0
	ldr r7, [r5, #0x28]
	bl sub_02076170
	ldr r1, _02065284 ; =0x0001FFFF
	add r2, r4, #0
	and r2, r1
	lsr r2, r2, #1
	add r1, r1, #1
	add r1, r2, r1
	mov r2, #1
	lsl r2, r2, #0x12
	and r2, r4
	lsr r2, r2, #2
	add r1, r1, r2
	add r0, r5, r7
	lsr r2, r6, #1
	bl sub_02076170
	ldrh r1, [r5, #0x20]
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #0x20]
_02065276:
	ldr r0, [sp]
	cmp r0, #0
	beq _02065280
	bl sub_02076278
_02065280:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02065284: .word 0x0001FFFF
	thumb_func_end sub_0206520C

	thumb_func_start sub_02065288
sub_02065288: ; 0x02065288
	push {r3, r4}
	cmp r1, #0
	beq _0206529E
	ldrh r4, [r0, #0x10]
	mov r3, #1
	bic r4, r3
	strh r4, [r0, #0x10]
	ldr r3, [r0, #8]
	str r3, [r1]
	mov r1, #0
	str r1, [r0, #8]
_0206529E:
	cmp r2, #0
	beq _020652B2
	ldrh r3, [r0, #0x20]
	mov r1, #1
	bic r3, r1
	strh r3, [r0, #0x20]
	ldr r1, [r0, #0x18]
	str r1, [r2]
	mov r1, #0
	str r1, [r0, #0x18]
_020652B2:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02065288

	thumb_func_start sub_020652B8
sub_020652B8: ; 0x020652B8
	cmp r0, #0
	beq _020652C2
	ldrh r0, [r0, #0x30]
	lsl r0, r0, #3
	bx lr
_020652C2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_020652B8

	thumb_func_start sub_020652C8
sub_020652C8: ; 0x020652C8
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_020652C8

	thumb_func_start sub_020652CC
sub_020652CC: ; 0x020652CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _020652D8
	bl sub_020762B4
_020652D8:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r5, #0x30]
	ldr r0, [r5, #0x38]
	lsl r1, r1, #0x10
	add r0, r5, r0
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_020762D4
	ldrh r1, [r5, #0x32]
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #0x32]
	cmp r4, #0
	beq _020652FA
	bl sub_02076334
_020652FA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020652CC

	thumb_func_start sub_020652FC
sub_020652FC: ; 0x020652FC
	ldrh r2, [r0, #0x32]
	mov r1, #1
	bic r2, r1
	strh r2, [r0, #0x32]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x2c]
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_020652FC

	thumb_func_start sub_02065310
sub_02065310: ; 0x02065310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r3, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x10]
	add r0, r3, #0
	ldr r1, [r0]
	mov r0, #7
	lsl r0, r0, #0x1a
	and r1, r0
	mov r0, #5
	lsl r0, r0, #0x1a
	cmp r1, r0
	beq _02065342
	ldr r0, [r2, #8]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020653F0 ; =0x1FFFFFFF
	and r0, r1
	str r0, [sp, #8]
	b _0206534E
_02065342:
	ldr r0, [r2, #0x18]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020653F0 ; =0x1FFFFFFF
	and r0, r1
	str r0, [sp, #8]
_0206534E:
	ldr r0, [sp]
	mov r6, #0
	ldrb r0, [r0, #2]
	cmp r0, #0
	bls _020653DE
	add r7, r5, #4
_0206535A:
	ldr r0, [sp, #0x10]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _02065386
	cmp r7, #0
	beq _0206537A
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _0206537A
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _0206537C
_0206537A:
	mov r0, #0
_0206537C:
	cmp r0, #0
	beq _02065386
	ldr r0, [r0]
	add r4, r5, r0
	b _02065388
_02065386:
	mov r4, #0
_02065388:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, [r1]
	ldr r1, [sp, #8]
	add r1, r2, r1
	orr r0, r1
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	ldr r2, _020653F4 ; =0x003FF800
	ldr r1, [r0, #4]
	ldr r0, _020653F8 ; =0x000007FF
	and r0, r1
	and r1, r2
	lsr r1, r1, #0xb
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x20]
	cmp r0, r1
	beq _020653B6
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	b _020653BA
_020653B6:
	mov r0, #1
	lsl r0, r0, #0xc
_020653BA:
	str r0, [r4, #0x24]
	ldrh r1, [r4, #0x22]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020653CE
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	b _020653D2
_020653CE:
	mov r0, #1
	lsl r0, r0, #0xc
_020653D2:
	str r0, [r4, #0x28]
	ldr r0, [sp]
	add r6, r6, #1
	ldrb r0, [r0, #2]
	cmp r6, r0
	blo _0206535A
_020653DE:
	ldr r0, [sp]
	ldrb r1, [r0, #3]
	mov r0, #1
	orr r1, r0
	ldr r0, [sp]
	strb r1, [r0, #3]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020653F0: .word 0x1FFFFFFF
_020653F4: .word 0x003FF800
_020653F8: .word 0x000007FF
	thumb_func_end sub_02065310

	thumb_func_start sub_020653FC
sub_020653FC: ; 0x020653FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _02065416
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02065416
	add r0, r0, r1
	str r0, [sp]
	b _0206541A
_02065416:
	mov r0, #0
	str r0, [sp]
_0206541A:
	ldr r0, [sp]
	mov r5, #0
	ldrh r1, [r0]
	add r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0206549A
	add r0, r7, #0
	str r0, [sp, #8]
	add r0, #0x3c
	add r6, r5, #0
	str r0, [sp, #8]
_02065432:
	cmp r4, #0
	beq _02065448
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02065448
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6
	b _0206544A
_02065448:
	mov r1, #0
_0206544A:
	cmp r7, #0
	beq _02065458
	ldr r0, [sp, #8]
	bl sub_02068458
	add r3, r0, #0
	b _0206545A
_02065458:
	mov r3, #0
_0206545A:
	cmp r3, #0
	beq _0206548C
	cmp r4, #0
	beq _02065478
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02065478
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _0206547A
_02065478:
	mov r1, #0
_0206547A:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	bne _02065490
	ldr r0, [sp]
	add r2, r7, #0
	bl sub_02065310
	b _02065490
_0206548C:
	mov r0, #0
	str r0, [sp, #4]
_02065490:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	add r6, #0x10
	cmp r5, r0
	blo _02065432
_0206549A:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020653FC

	thumb_func_start sub_020654A0
sub_020654A0: ; 0x020654A0
	push {r4, r5, r6, r7}
	ldr r2, [r2, #0x2c]
	add r4, r0, #0
	add r0, r1, #0
	lsl r2, r2, #0x10
	ldrh r1, [r0]
	lsr r5, r2, #0x10
	ldr r2, _02065520 ; =0x1FFFFFFF
	add r1, r4, r1
	and r2, r5
	mov ip, r1
	lsl r2, r2, #0x10
	ldrh r5, [r3, #2]
	ldrh r1, [r3]
	mov r3, #1
	lsr r2, r2, #0x10
	tst r3, r5
	bne _020654CC
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
_020654CC:
	ldrb r3, [r0, #2]
	mov r5, #0
	cmp r3, #0
	bls _02065514
	add r1, r1, r2
	lsl r1, r1, #0x10
	add r2, r4, #4
	lsr r7, r1, #0x10
_020654DC:
	mov r1, ip
	ldrb r3, [r1, r5]
	cmp r4, #0
	beq _02065508
	cmp r2, #0
	beq _020654FC
	ldrb r1, [r4, #5]
	cmp r3, r1
	bhs _020654FC
	ldrh r6, [r4, #0xa]
	add r1, r2, r6
	ldrh r6, [r2, r6]
	add r1, r1, #4
	mul r3, r6
	add r1, r1, r3
	b _020654FE
_020654FC:
	mov r1, #0
_020654FE:
	cmp r1, #0
	beq _02065508
	ldr r1, [r1]
	add r1, r4, r1
	b _0206550A
_02065508:
	mov r1, #0
_0206550A:
	strh r7, [r1, #0x1c]
	ldrb r1, [r0, #2]
	add r5, r5, #1
	cmp r5, r1
	blo _020654DC
_02065514:
	ldrb r2, [r0, #3]
	mov r1, #1
	orr r1, r2
	strb r1, [r0, #3]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02065520: .word 0x1FFFFFFF
	thumb_func_end sub_020654A0

	thumb_func_start sub_02065524
sub_02065524: ; 0x02065524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _0206553E
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0206553E
	add r0, r0, r1
	str r0, [sp]
	b _02065542
_0206553E:
	mov r0, #0
	str r0, [sp]
_02065542:
	ldr r0, [sp]
	mov r5, #0
	ldrh r1, [r0, #2]
	add r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _020655C0
	add r7, r5, #0
_02065552:
	cmp r4, #0
	beq _02065568
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02065568
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r7
	b _0206556A
_02065568:
	mov r1, #0
_0206556A:
	cmp r6, #0
	beq _0206557E
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	beq _0206557E
	add r0, r6, r0
	bl sub_02068458
	add r3, r0, #0
	b _02065580
_0206557E:
	mov r3, #0
_02065580:
	cmp r3, #0
	beq _020655B2
	cmp r4, #0
	beq _0206559E
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0206559E
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _020655A0
_0206559E:
	mov r1, #0
_020655A0:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	bne _020655B6
	ldr r0, [sp]
	add r2, r6, #0
	bl sub_020654A0
	b _020655B6
_020655B2:
	mov r0, #0
	str r0, [sp, #4]
_020655B6:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	add r7, #0x10
	cmp r5, r0
	blo _02065552
_020655C0:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02065524

	thumb_func_start sub_020655C8
sub_020655C8: ; 0x020655C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, r2, #0
	cmp r0, #0
	beq _020655DC
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020655DC
	add r5, r0, r2
	b _020655DE
_020655DC:
	mov r5, #0
_020655DE:
	ldrh r0, [r5, #2]
	add r2, r5, r0
	cmp r4, #0
	beq _02065608
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _02065608
	add r0, r4, r0
	beq _02065604
	ldrb r6, [r0, #1]
	cmp r3, r6
	bhs _02065604
	ldrh r7, [r0, #6]
	add r6, r0, r7
	ldrh r0, [r0, r7]
	add r6, r6, #4
	mul r3, r0
	add r3, r6, r3
	b _0206560A
_02065604:
	mov r3, #0
	b _0206560A
_02065608:
	mov r3, #0
_0206560A:
	cmp r2, #0
	beq _02065622
	ldrb r0, [r2, #1]
	cmp r1, r0
	bhs _02065622
	ldrh r6, [r2, #6]
	add r0, r2, r6
	ldrh r2, [r2, r6]
	add r0, r0, #4
	mul r1, r2
	add r1, r0, r1
	b _02065624
_02065622:
	mov r1, #0
_02065624:
	cmp r1, #0
	beq _0206563C
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	bne _0206563C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020654A0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206563C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020655C8

	thumb_func_start sub_02065640
sub_02065640: ; 0x02065640
	push {r4, r5, r6, r7}
	cmp r0, #0
	beq _02065650
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02065650
	add r1, r0, r1
	b _02065652
_02065650:
	mov r1, #0
_02065652:
	ldrh r0, [r1, #2]
	add r0, r1, r0
	ldrb r2, [r0, #1]
	mov r1, #0
	cmp r2, #0
	bls _02065694
	add r6, r1, #0
	mov r2, #1
	mov r3, #1
_02065664:
	cmp r0, #0
	beq _0206567E
	ldrb r4, [r0, #1]
	cmp r1, r4
	bhs _0206567E
	ldrh r4, [r0, #6]
	add r5, r0, r4
	ldrh r4, [r0, r4]
	add r7, r5, #4
	add r5, r4, #0
	mul r5, r1
	add r7, r7, r5
	b _02065680
_0206567E:
	add r7, r6, #0
_02065680:
	ldrb r4, [r7, #3]
	add r5, r4, #0
	tst r5, r3
	beq _0206568C
	bic r4, r2
	strb r4, [r7, #3]
_0206568C:
	ldrb r4, [r0, #1]
	add r1, r1, #1
	cmp r1, r4
	blo _02065664
_02065694:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_02065640

	thumb_func_start sub_02065698
sub_02065698: ; 0x02065698
	push {r3, lr}
	ldr r1, _02065730 ; =0x17101610
	ldr r0, _02065734 ; =0x02143A0C
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #2
	str r1, [r0, #0x48]
	ldr r1, _02065738 ; =0x32323232
	str r1, [r0, #0x7c]
	ldr r1, _0206573C ; =0x60293130
	ldr r0, _02065740 ; =0x02143A8C
	str r1, [r0, #0x10]
	ldr r1, _02065744 ; =0x33333333
	str r1, [r0, #0x24]
	ldr r1, _02065748 ; =0x002A1B19
	str r1, [r0, #0x38]
	ldr r0, _0206574C ; =0x02143A58
	blx MTX_Identity43_
	ldr r0, _02065750 ; =0x02143A14
	blx MTX_Identity44_
	ldr r1, _02065754 ; =0x2D8B62D8
	ldr r0, _02065740 ; =0x02143A8C
	str r1, [r0]
	ldr r1, _02065758 ; =0x40000200
	str r1, [r0, #4]
	ldr r1, _0206575C ; =0x800001FF
	str r1, [r0, #8]
	ldr r1, _02065760 ; =0xC0080000
	str r1, [r0, #0xc]
	ldr r1, _02065764 ; =0x4210C210
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r1, _02065768 ; =0x001F008F
	str r1, [r0, #0x1c]
	ldr r1, _0206576C ; =0xBFFF0000
	str r1, [r0, #0x20]
	ldr r1, _02065770 ; =0x00007FFF
	str r1, [r0, #0x28]
	ldr r1, _02065774 ; =0x4000001F
	str r1, [r0, #0x2c]
	ldr r1, _02065778 ; =0x800003E0
	str r1, [r0, #0x30]
	ldr r1, _0206577C ; =0xC0007C00
	str r1, [r0, #0x34]
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	ldr r0, _02065780 ; =0x02143AC8
	blx sub_0207244C
	mov r2, #1
	ldr r0, _02065740 ; =0x02143A8C
	lsl r2, r2, #0xc
	str r2, [r0, #0x6c]
	str r2, [r0, #0x70]
	str r2, [r0, #0x74]
	mov r1, #0
	str r1, [r0, #0x78]
	str r1, [r0, #0x7c]
	ldr r0, _02065784 ; =0x02143C0C
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x40]
	str r1, [r0, #0x54]
	str r1, [r0, #0x4c]
	str r2, [r0, #0x50]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x58]
	ldr r1, _02065788 ; =0xFFFFF000
	str r1, [r0, #0x60]
	pop {r3, pc}
	nop
_02065730: .word 0x17101610
_02065734: .word 0x02143A0C
_02065738: .word 0x32323232
_0206573C: .word 0x60293130
_02065740: .word 0x02143A8C
_02065744: .word 0x33333333
_02065748: .word 0x002A1B19
_0206574C: .word 0x02143A58
_02065750: .word 0x02143A14
_02065754: .word 0x2D8B62D8
_02065758: .word 0x40000200
_0206575C: .word 0x800001FF
_02065760: .word 0xC0080000
_02065764: .word 0x4210C210
_02065768: .word 0x001F008F
_0206576C: .word 0xBFFF0000
_02065770: .word 0x00007FFF
_02065774: .word 0x4000001F
_02065778: .word 0x800003E0
_0206577C: .word 0xC0007C00
_02065780: .word 0x02143AC8
_02065784: .word 0x02143C0C
_02065788: .word 0xFFFFF000
	thumb_func_end sub_02065698

	thumb_func_start sub_0206578C
sub_0206578C: ; 0x0206578C
	push {r3, lr}
	ldr r1, _020657AC ; =0x02143A0C
	mov r2, #0x3e
	ldr r0, [r1]
	add r1, r1, #4
	bl sub_02067D1C
	ldr r1, _020657B0 ; =0x02143A8C
	mov r0, #1
	ldr r2, [r1, #0x7c]
	bic r2, r0
	mov r0, #2
	bic r2, r0
	str r2, [r1, #0x7c]
	pop {r3, pc}
	nop
_020657AC: .word 0x02143A0C
_020657B0: .word 0x02143A8C
	thumb_func_end sub_0206578C

	thumb_func_start sub_020657B4
sub_020657B4: ; 0x020657B4
	push {r3, lr}
	ldr r0, _020657F4 ; =0x00001610
	ldr r1, _020657F8 ; =0x02143A10
	mov r2, #0x11
	bl sub_02067D1C
	ldr r1, _020657FC ; =0x02143A58
	mov r0, #0x19
	mov r2, #0xc
	bl sub_02067D1C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
	ldr r1, _02065800 ; =0x02143A88
	mov r0, #0x15
	mov r2, #0x20
	bl sub_02067D1C
	ldr r1, _02065804 ; =0x02143A8C
	mov r0, #1
	ldr r2, [r1, #0x7c]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	str r0, [r1, #0x7c]
	pop {r3, pc}
	nop
_020657F4: .word 0x00001610
_020657F8: .word 0x02143A10
_020657FC: .word 0x02143A58
_02065800: .word 0x02143A88
_02065804: .word 0x02143A8C
	thumb_func_end sub_020657B4

	thumb_func_start sub_02065808
sub_02065808: ; 0x02065808
	push {lr}
	sub sp, #0x34
	ldr r0, _02065880 ; =0x00001610
	ldr r1, _02065884 ; =0x02143A10
	mov r2, #0x11
	bl sub_02067D1C
	ldr r1, _02065888 ; =0x02143A58
	mov r0, #0x19
	mov r2, #0xc
	bl sub_02067D1C
	ldr r0, _0206588C ; =0x00001B19
	ldr r1, _02065890 ; =0x02143AC8
	mov r2, #0xf
	bl sub_02067D1C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
	ldr r0, _02065890 ; =0x02143AC8
	add r1, sp, #4
	blx sub_0207272C
	mov r0, #0x17
	add r1, sp, #4
	mov r2, #0xc
	bl sub_02067D1C
	ldr r0, _02065894 ; =0x02143A0C
	ldr r1, _02065898 ; =0x02143A88
	ldr r0, [r0, #0x7c]
	add r1, r1, #4
	mov r2, #0xe
	bl sub_02067D1C
	mov r1, #0
	mov r0, #0x15
	add r2, r1, #0
	bl sub_02067D1C
	ldr r1, _0206589C ; =0x02143B04
	mov r0, #0x2a
	mov r2, #1
	bl sub_02067D1C
	ldr r1, _020658A0 ; =0x02143A8C
	mov r0, #1
	ldr r2, [r1, #0x7c]
	orr r2, r0
	mov r0, #2
	bic r2, r0
	str r2, [r1, #0x7c]
	add sp, #0x34
	pop {pc}
	nop
_02065880: .word 0x00001610
_02065884: .word 0x02143A10
_02065888: .word 0x02143A58
_0206588C: .word 0x00001B19
_02065890: .word 0x02143AC8
_02065894: .word 0x02143A0C
_02065898: .word 0x02143A88
_0206589C: .word 0x02143B04
_020658A0: .word 0x02143A8C
	thumb_func_end sub_02065808

	thumb_func_start sub_020658A4
sub_020658A4: ; 0x020658A4
	add r3, r0, #0
	beq _020658BC
	ldr r2, _020658C0 ; =0x02143AEC
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _020658C4 ; =0x02143A8C
	str r0, [r2]
	ldr r2, [r1, #0x7c]
	mov r0, #0xa4
	bic r2, r0
	str r2, [r1, #0x7c]
_020658BC:
	bx lr
	nop
_020658C0: .word 0x02143AEC
_020658C4: .word 0x02143A8C
	thumb_func_end sub_020658A4

	thumb_func_start sub_020658C8
sub_020658C8: ; 0x020658C8
	add r3, r0, #0
	beq _020658E0
	ldr r2, _020658E4 ; =0x02143AF8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _020658E8 ; =0x02143A8C
	str r0, [r2]
	ldr r2, [r1, #0x7c]
	mov r0, #0xa4
	bic r2, r0
	str r2, [r1, #0x7c]
_020658E0:
	bx lr
	nop
_020658E4: .word 0x02143AF8
_020658E8: .word 0x02143A8C
	thumb_func_end sub_020658C8

	thumb_func_start sub_020658EC
sub_020658EC: ; 0x020658EC
	push {r4, r5}
	asr r5, r1, #3
	ldr r1, _02065914 ; =0x000003FF
	asr r3, r3, #3
	and r5, r1
	asr r1, r2, #3
	lsl r1, r1, #0x16
	lsl r3, r3, #0x16
	lsr r1, r1, #0xc
	lsl r4, r0, #0x1e
	lsr r3, r3, #2
	orr r1, r5
	orr r1, r3
	add r2, r4, #0
	orr r2, r1
	lsl r1, r0, #2
	ldr r0, _02065918 ; =0x02143A8C
	str r2, [r0, r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02065914: .word 0x000003FF
_02065918: .word 0x02143A8C
	thumb_func_end sub_020658EC

	thumb_func_start sub_0206591C
sub_0206591C: ; 0x0206591C
	lsl r2, r0, #0x1e
	orr r2, r1
	lsl r1, r0, #2
	ldr r0, _02065928 ; =0x02143AB4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_02065928: .word 0x02143AB4
	thumb_func_end sub_0206591C

	thumb_func_start sub_0206592C
sub_0206592C: ; 0x0206592C
	cmp r2, #0
	beq _02065934
	mov r2, #1
	b _02065936
_02065934:
	mov r2, #0
_02065936:
	lsl r1, r1, #0x10
	lsl r2, r2, #0xf
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02065948 ; =0x02143A8C
	str r1, [r0, #0x14]
	bx lr
	nop
_02065948: .word 0x02143A8C
	thumb_func_end sub_0206592C

	thumb_func_start sub_0206594C
sub_0206594C: ; 0x0206594C
	cmp r2, #0
	beq _02065954
	mov r2, #1
	b _02065956
_02065954:
	mov r2, #0
_02065956:
	lsl r1, r1, #0x10
	lsl r2, r2, #0xf
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02065968 ; =0x02143A8C
	str r1, [r0, #0x18]
	bx lr
	nop
_02065968: .word 0x02143A8C
	thumb_func_end sub_0206594C

	thumb_func_start sub_0206596C
sub_0206596C: ; 0x0206596C
	push {r3, lr}
	ldr r0, _02065990 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #8
	tst r0, r1
	bne _0206598A
	ldr r0, _02065994 ; =0x02143A58
	ldr r1, _02065998 ; =0x02143B0C
	blx MTX_Inverse43
	ldr r1, _02065990 ; =0x02143A8C
	mov r0, #8
	ldr r2, [r1, #0x7c]
	orr r0, r2
	str r0, [r1, #0x7c]
_0206598A:
	ldr r0, _02065998 ; =0x02143B0C
	pop {r3, pc}
	nop
_02065990: .word 0x02143A8C
_02065994: .word 0x02143A58
_02065998: .word 0x02143B0C
	thumb_func_end sub_0206596C

	thumb_func_start sub_0206599C
sub_0206599C: ; 0x0206599C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r1, [sp]
	add r1, sp, #0x34
	blx sub_0207877C
	ldr r0, [sp]
	blx MTX_Identity44_
	mov r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x28]
	add r0, sp, #0x34
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r0, [sp, #0x20]
_020659BC:
	ldr r2, [sp, #0x30]
	mov r1, #0
	add r3, r2, #0
	add r0, r2, #0
	cmp r3, #4
	bge _020659EC
	ldr r3, [sp, #0x28]
	add r4, sp, #0x34
	add r4, r4, r3
	add r3, r2, #0
	lsl r3, r3, #4
	add r3, r4, r3
_020659D4:
	ldr r4, [r3]
	cmp r4, #0
	bge _020659DC
	neg r4, r4
_020659DC:
	cmp r4, r1
	ble _020659E4
	add r1, r4, #0
	add r2, r0, #0
_020659E4:
	add r0, r0, #1
	add r3, #0x10
	cmp r0, #4
	blt _020659D4
_020659EC:
	cmp r1, #0
	bne _020659F8
	mov r0, #0
	add sp, #0x74
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020659F8:
	ldr r0, [sp, #0x30]
	cmp r2, r0
	beq _02065A24
	ldr r3, [sp]
	lsl r5, r2, #4
	add r1, sp, #0x34
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r4, #0
	add r1, r1, r5
	add r3, r3, r5
_02065A0E:
	ldr r5, [r1]
	ldr r6, [r0]
	stmia r0!, {r5}
	stmia r1!, {r6}
	ldr r5, [r3]
	ldr r6, [r2]
	stmia r2!, {r5}
	add r4, r4, #1
	stmia r3!, {r6}
	cmp r4, #4
	blt _02065A0E
_02065A24:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r0, [r1, r0]
	bl FX_InvFx64c
	add r7, r0, #0
	mov r0, #0
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	add r6, r1, #0
	str r0, [sp, #0x2c]
_02065A3A:
	ldr r0, [r4]
	add r1, r7, #0
	add r2, r6, #0
	blx sub_02074674
	stmia r4!, {r0}
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	blx sub_02074674
	stmia r5!, {r0}
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	blt _02065A3A
	mov r0, #0
	str r0, [sp, #8]
	add r1, sp, #0x34
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r0, [sp, #0x14]
_02065A6E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	beq _02065ACE
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r7, [sp, #0x24]
	ldr r0, [r0]
	ldr r4, [sp, #0x18]
	str r0, [sp, #0xc]
	asr r0, r0, #0x1f
	ldr r6, [sp, #0x20]
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x10]
_02065A8C:
	ldr r2, [r7]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [r4]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	stmia r4!, {r0}
	ldr r2, [r6]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [r5]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	stmia r5!, {r0}
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _02065A8C
_02065ACE:
	ldr r0, [sp, #0x1c]
	add r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02065A6E
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #4
	bge _02065B08
	b _020659BC
_02065B08:
	mov r0, #0
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206599C

	thumb_func_start sub_02065B10
sub_02065B10: ; 0x02065B10
	push {r3, lr}
	ldr r0, _02065B34 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #0x10
	tst r0, r1
	bne _02065B2E
	ldr r0, _02065B38 ; =0x02143A14
	ldr r1, _02065B3C ; =0x02143BCC
	bl sub_0206599C
	ldr r1, _02065B34 ; =0x02143A8C
	mov r0, #0x10
	ldr r2, [r1, #0x7c]
	orr r0, r2
	str r0, [r1, #0x7c]
_02065B2E:
	ldr r0, _02065B3C ; =0x02143BCC
	pop {r3, pc}
	nop
_02065B34: .word 0x02143A8C
_02065B38: .word 0x02143A14
_02065B3C: .word 0x02143BCC
	thumb_func_end sub_02065B10

	thumb_func_start sub_02065B40
sub_02065B40: ; 0x02065B40
	push {r3, lr}
	ldr r0, _02065B68 ; =0x02143AC8
	ldr r1, _02065B6C ; =0x02143A58
	ldr r2, _02065B70 ; =0x02143B3C
	blx MTX_Concat43
	ldr r3, _02065B74 ; =0x02143A8C
	ldr r0, [r3, #0x74]
	str r0, [sp]
	ldr r0, _02065B70 ; =0x02143B3C
	ldr r2, [r3, #0x6c]
	ldr r3, [r3, #0x70]
	add r1, r0, #0
	blx MTX_ScaleApply43
	ldr r0, _02065B70 ; =0x02143B3C
	ldr r1, _02065B78 ; =0x02143B6C
	blx MTX_Inverse43
	pop {r3, pc}
	.align 2, 0
_02065B68: .word 0x02143AC8
_02065B6C: .word 0x02143A58
_02065B70: .word 0x02143B3C
_02065B74: .word 0x02143A8C
_02065B78: .word 0x02143B6C
	thumb_func_end sub_02065B40

	thumb_func_start sub_02065B7C
sub_02065B7C: ; 0x02065B7C
	push {r3, lr}
	ldr r0, _02065B9C ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #0x80
	tst r0, r1
	bne _02065B96
	bl sub_02065B40
	ldr r1, _02065B9C ; =0x02143A8C
	mov r0, #0x80
	ldr r2, [r1, #0x7c]
	orr r0, r2
	str r0, [r1, #0x7c]
_02065B96:
	ldr r0, _02065BA0 ; =0x02143B3C
	pop {r3, pc}
	nop
_02065B9C: .word 0x02143A8C
_02065BA0: .word 0x02143B3C
	thumb_func_end sub_02065B7C

	thumb_func_start sub_02065BA4
sub_02065BA4: ; 0x02065BA4
	push {r3, lr}
	ldr r0, _02065BC4 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #0x80
	tst r0, r1
	bne _02065BBE
	bl sub_02065B40
	ldr r1, _02065BC4 ; =0x02143A8C
	mov r0, #0x80
	ldr r2, [r1, #0x7c]
	orr r0, r2
	str r0, [r1, #0x7c]
_02065BBE:
	ldr r0, _02065BC8 ; =0x02143B6C
	pop {r3, pc}
	nop
_02065BC4: .word 0x02143A8C
_02065BC8: .word 0x02143B6C
	thumb_func_end sub_02065BA4

	thumb_func_start sub_02065BCC
sub_02065BCC: ; 0x02065BCC
	push {r3, r4, r5, lr}
	sub sp, #0x40
	ldr r0, _02065C08 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #0x40
	tst r0, r1
	bne _02065C02
	bl sub_0206596C
	add r5, r0, #0
	bl sub_02065B10
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	blx MTX_Copy43To44_
	ldr r2, _02065C0C ; =0x02143C0C
	add r0, r4, #0
	add r1, sp, #0
	blx MTX_Concat44
	ldr r1, _02065C08 ; =0x02143A8C
	mov r0, #0x40
	ldr r2, [r1, #0x7c]
	orr r0, r2
	str r0, [r1, #0x7c]
_02065C02:
	ldr r0, _02065C0C ; =0x02143C0C
	add sp, #0x40
	pop {r3, r4, r5, pc}
	.align 2, 0
_02065C08: .word 0x02143A8C
_02065C0C: .word 0x02143C0C
	thumb_func_end sub_02065BCC

	thumb_func_start sub_02065C10
sub_02065C10: ; 0x02065C10
	push {r3, r4}
	cmp r0, #0
	beq _02065C20
	ldr r4, _02065C54 ; =0x02143A8C
	ldr r4, [r4, #0x20]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [r0]
_02065C20:
	cmp r1, #0
	beq _02065C30
	ldr r0, _02065C54 ; =0x02143A8C
	ldr r0, [r0, #0x20]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r1]
_02065C30:
	cmp r2, #0
	beq _02065C40
	ldr r0, _02065C54 ; =0x02143A8C
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r2]
_02065C40:
	cmp r3, #0
	beq _02065C50
	ldr r0, _02065C54 ; =0x02143A8C
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r3]
_02065C50:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02065C54: .word 0x02143A8C
	thumb_func_end sub_02065C10

	thumb_func_start sub_02065C58
sub_02065C58: ; 0x02065C58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	mov r0, #0
	cmp r5, #0
	beq _02065C9A
	lsl r6, r4, #1
_02065C68:
	ldrb r1, [r5, #0x19]
	cmp r4, r1
	bhs _02065C94
	add r1, r6, r5
	ldrh r2, [r1, #0x1a]
	mov r1, #3
	lsl r1, r1, #8
	add r3, r2, #0
	and r3, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bne _02065C94
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _02065C94
	lsl r2, r2, #0x18
	add r0, r7, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	blx r3
	mov r0, #1
_02065C94:
	ldr r5, [r5, #0x10]
	cmp r5, #0
	bne _02065C68
_02065C9A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02065C58

