    .include "macros/function.inc"
	.include "overlay85.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy85_21eae60
ovy85_21eae60: ; 0x021EAE60
	push {r4, lr}
	bl ovy85_21ec5cc
	add r4, r0, #0
	add r1, r4, #0
	mov r2, #1
	add r1, #0x81
	strb r2, [r1]
	bl ovy85_21eb13c
	add r0, r4, #0
	mov r1, #0
	add r0, #0x81
	strb r1, [r0]
	str r1, [r4, #0x68]
	add r0, r4, #0
	mov r1, #1
	bl ovy85_21eb0b8
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21eae60
_021EAE8C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x8D, 0xC6, 0x1E, 0x02

	thumb_func_start ovy85_21eae94
ovy85_21eae94: ; 0x021EAE94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	add r5, r1, #0
	cmp r0, r5
	beq _021EAEC8
	add r0, r4, #0
	add r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EAEB2
	cmp r5, #0
	bne _021EAEB2
	mov r0, #1
	b _021EAEB4
_021EAEB2:
	mov r0, #0
_021EAEB4:
	cmp r0, #0
	bne _021EAEC8
	mov r1, #1
	str r5, [r4, #0x68]
	cmp r5, #0
	beq _021EAEC2
	mov r1, #0
_021EAEC2:
	add r0, r4, #0
	bl ovy85_21eb0b8
_021EAEC8:
	add r0, r4, #0
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	beq _021EAEDE
	cmp r5, #0
	bne _021EAF4A
	add r0, r4, #0
	bl sub_021EC6E4
	pop {r3, r4, r5, pc}
_021EAEDE:
	cmp r5, #0
	beq _021EAF4A
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0203A7F4
	ldr r0, [r4, #0x70]
	cmp r0, #8
	bhi _021EAF4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAEFE: ; jump table
	.short _021EAF10 - _021EAEFE - 2 ; case 0
	.short _021EAF1A - _021EAEFE - 2 ; case 1
	.short _021EAF24 - _021EAEFE - 2 ; case 2
	.short _021EAF2E - _021EAEFE - 2 ; case 3
	.short _021EAF38 - _021EAEFE - 2 ; case 4
	.short _021EAF42 - _021EAEFE - 2 ; case 5
	.short _021EAF4A - _021EAEFE - 2 ; case 6
	.short _021EAF4A - _021EAEFE - 2 ; case 7
	.short _021EAF4A - _021EAEFE - 2 ; case 8
_021EAF10:
	add r0, r4, #0
	bl ovy85_21eaf60
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021EAF1A:
	add r0, r4, #0
	bl ovy85_21eafc0
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021EAF24:
	add r0, r4, #0
	bl ovy85_21eafe4
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021EAF2E:
	add r0, r4, #0
	bl ovy85_21eb000
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021EAF38:
	add r0, r4, #0
	bl ovy85_21eb098
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021EAF42:
	add r0, r4, #0
	bl sub_021EB0B0
	str r0, [r4, #0x70]
_021EAF4A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21eae94
_021EAF4C:
	.byte 0xF0, 0x30, 0x00, 0x68
	.byte 0x00, 0x4B, 0x18, 0x47, 0x3D, 0x1A, 0x02, 0x02, 0x00, 0x4B, 0x18, 0x47, 0xED, 0xC6, 0x1E, 0x02

	thumb_func_start ovy85_21eaf60
ovy85_21eaf60: ; 0x021EAF60
	push {r4, lr}
	add r4, r0, #0
	bl ovy85_21eb388
	add r0, r4, #0
	bl ovy85_21eb2ac
	cmp r0, #0
	beq _021EAF7A
	mov r0, #0x5a
	str r0, [r4, #0x7c]
	mov r0, #2
	pop {r4, pc}
_021EAF7A:
	ldr r0, [r4, #0x20]
	bl sub_02012BE4
	add r0, r4, #0
	bl ovy85_21eb1ec
	cmp r0, #0
	bne _021EAFBE
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _021EAF98
	sub r0, r0, #1
	str r0, [r4, #0x7c]
	mov r0, #0
	pop {r4, pc}
_021EAF98:
	add r0, r4, #0
	bl ovy85_21eb2f8
	cmp r0, #1
	bne _021EAFAA
	mov r0, #0x5a
	str r0, [r4, #0x7c]
	mov r0, #2
	pop {r4, pc}
_021EAFAA:
	add r0, r4, #0
	bl ovy85_21eb320
	cmp r0, #0
	bne _021EAFB8
	mov r0, #0
	pop {r4, pc}
_021EAFB8:
	mov r0, #0x5a
	str r0, [r4, #0x7c]
	mov r0, #1
_021EAFBE:
	pop {r4, pc}
	thumb_func_end ovy85_21eaf60

	thumb_func_start ovy85_21eafc0
ovy85_21eafc0: ; 0x021EAFC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy85_21eb4bc
	cmp r0, #0
	bne _021EAFD0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EAFD0:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	mov r4, #0
	bl ovy85_21eb3cc
	str r4, [r5, #0x74]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21eafc0

	thumb_func_start ovy85_21eafe4
ovy85_21eafe4: ; 0x021EAFE4
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xe0
	ldr r1, [r1]
	cmp r1, #0
	beq _021EAFF4
	mov r0, #2
	pop {r3, pc}
_021EAFF4:
	mov r1, #7
	mov r2, #0
	bl ovy85_21eb3cc
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy85_21eafe4

	thumb_func_start ovy85_21eb000
ovy85_21eb000: ; 0x021EB000
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb9
	ldrb r1, [r1]
	cmp r1, #0
	bne _021EB03A
	bl ovy85_21eb270
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne _021EB024
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EB02C
_021EB024:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb9
	strb r1, [r0]
_021EB02C:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
_021EB03A:
	add r0, r4, #0
	add r0, #0xb9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EB082
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	ble _021EB052
	mov r0, #3
	pop {r4, pc}
_021EB052:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb9
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xb8
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl ovy85_21eb3cc
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #0
	bl sub_021EA88C
	add r4, #0xba
	ldrb r0, [r4]
	pop {r4, pc}
_021EB082:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	bne _021EB092
	add r0, r4, #0
	bl sub_021EB3BC
_021EB092:
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb000

	thumb_func_start ovy85_21eb098
ovy85_21eb098: ; 0x021EB098
	push {r4, lr}
	add r4, r0, #0
	bl ovy85_21eb5dc
	cmp r0, #0
	bne _021EB0A8
	mov r0, #4
	pop {r4, pc}
_021EB0A8:
	mov r0, #0
	str r0, [r4, #0x74]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb098

	thumb_func_start sub_021EB0B0
sub_021EB0B0: ; 0x021EB0B0
	mov r1, #0
	str r1, [r0, #0x74]
	mov r0, #0
	bx lr
	thumb_func_end sub_021EB0B0

	thumb_func_start ovy85_21eb0b8
ovy85_21eb0b8: ; 0x021EB0B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0
	beq _021EB0FE
	mov r4, #6
	str r4, [sp]
	mov r6, #0
	str r6, [sp, #4]
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0x1e
	mov r3, #0xa
	bl sub_021C80E0
	add sp, #8
	pop {r4, r5, r6, pc}
_021EB0FE:
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0xe8
	ldr r0, [r0]
	mov r4, #3
	mov r1, #3
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0xd
	bl sub_021C80E0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb0b8

	thumb_func_start ovy85_21eb13c
ovy85_21eb13c: ; 0x021EB13C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_0201494C
	add r1, r5, #0
	add r1, #0x8a
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0202778C
	add r0, r5, #0
	add r0, #0x86
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021EB1B2
_021EB164:
	add r0, r5, #0
	add r0, #0x85
	ldrb r6, [r0]
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	add r2, r6, r4
	bl ovy85_21ed76c
	ldr r0, [r5, #0x48]
	add r1, r6, r4
	bl ovy85_21ed70c
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl ovy85_21eb9c4
	lsl r1, r7, #0x18
	lsl r2, r4, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r6, r0, #0
	bl ovy85_21eb9a4
	ldr r2, [r5, #0x50]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy85_21ebd48
	add r0, r6, #0
	mov r1, #1
	bl ovy85_21eb8f8
	add r0, r5, #0
	add r0, #0x86
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EB164
_021EB1B2:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy85_21eb3cc
	ldr r0, [r5, #0x34]
	cmp r0, #0x30
	bne _021EB1CE
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_021EA87C
_021EB1CE:
	add r1, r5, #0
	add r1, #0xce
	ldrh r1, [r1]
	mov r0, #0
	bl sub_02042BA8
	add r0, r5, #0
	bl ovy85_21eb74c
	add r0, r5, #0
	add r5, #0xe4
	add r1, r5, #0
	bl ovy85_21eb7f8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21eb13c

	thumb_func_start ovy85_21eb1ec
ovy85_21eb1ec: ; 0x021EB1EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, sp, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	bne _021EB206
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB206:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy85_21eb628
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EB26A
	cmp r1, #5
	bhi _021EB264
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB228: ; jump table
	.short _021EB234 - _021EB228 - 2 ; case 0
	.short _021EB23E - _021EB228 - 2 ; case 1
	.short _021EB244 - _021EB228 - 2 ; case 2
	.short _021EB24A - _021EB228 - 2 ; case 3
	.short _021EB250 - _021EB228 - 2 ; case 4
	.short _021EB250 - _021EB228 - 2 ; case 5
_021EB234:
	add r0, r4, #0
	mov r1, #7
_021EB238:
	bl sub_021EC6D4
	b _021EB264
_021EB23E:
	add r0, r4, #0
	mov r1, #0xa
	b _021EB238
_021EB244:
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, pc}
_021EB24A:
	add r0, r4, #0
	mov r1, #4
	b _021EB238
_021EB250:
	sub r2, r1, #4
	mov r1, #1
	eor r1, r2
	add r0, r4, #0
	mov r2, #0
	bl ovy85_21ebeec
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, pc}
_021EB264:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB26A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21eb1ec

	thumb_func_start ovy85_21eb270
ovy85_21eb270: ; 0x021EB270
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #0
	bne _021EB28C
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021EB28C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy85_21eb628
	sub r1, r0, #4
	cmp r1, #1
	bhi _021EB2A2
	mov r0, #1
	add sp, #8
	eor r0, r1
	pop {r3, r4, r5, pc}
_021EB2A2:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb270

	thumb_func_start ovy85_21eb2ac
ovy85_21eb2ac: ; 0x021EB2AC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0202D7D0
	ldrh r1, [r0]
	cmp r1, #0
	bne _021EB2C4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021EB2C4:
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0x40]
	bl sub_0202D7C4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r3, r4, #0
	str r0, [sp, #4]
	add r3, #0x3c
	add r0, #0xfe
	ldrb r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202437C
	add r0, r4, #0
	mov r1, #7
	bl ovy85_21ec0c0
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb2ac

	thumb_func_start ovy85_21eb2f8
ovy85_21eb2f8: ; 0x021EB2F8
	push {r3, r4, r5, lr}
	mov r4, #0x42
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, r4]
	add r2, sp, #0
	bl ovy85_21ed7a0
	add r1, r0, #0
	cmp r1, #0x30
	bne _021EB314
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB314:
	ldr r2, [r5, r4]
	ldr r3, [sp]
	add r0, r5, #0
	bl ovy85_21ec1d8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21eb2f8

	thumb_func_start ovy85_21eb320
ovy85_21eb320: ; 0x021EB320
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x58]
	bl ovy85_21ed6c4
	cmp r0, #0
	bne _021EB334
	mov r0, #0
	pop {r4, pc}
_021EB334:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x58]
	bl ovy85_21ed72c
	add r1, r4, #0
	add r1, #0x60
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x60
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	bl ovy85_21ed70c
	add r1, r4, #0
	add r1, #0x61
	strb r0, [r1]
	mov r0, #0
	str r0, [r4, #0x5c]
	add r0, r4, #0
	add r0, #0x84
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x63
	strb r1, [r0]
	cmp r1, #0x1e
	bhs _021EB384
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bhi _021EB384
	add r4, #0x86
	strb r0, [r4]
_021EB384:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy85_21eb320

	thumb_func_start ovy85_21eb388
ovy85_21eb388: ; 0x021EB388
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_0201494C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0x8a
	ldrb r0, [r0]
	cmp r1, r0
	bls _021EB3BA
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bne _021EB3BA
	add r0, r4, #0
	add r0, #0x8a
	strb r1, [r0]
	add r0, r4, #0
	add r4, #0xe4
	add r1, r4, #0
	bl ovy85_21eb7f8
_021EB3BA:
	pop {r4, pc}
	thumb_func_end ovy85_21eb388

	thumb_func_start sub_021EB3BC
sub_021EB3BC: ; 0x021EB3BC
	add r1, r0, #0
	add r1, #0xbc
	ldr r1, [r1]
	ldr r3, _021EB3C8 ; =ovy85_21ebe6c
	bx r3
	nop
_021EB3C8: .word ovy85_21ebe6c
	thumb_func_end sub_021EB3BC

	thumb_func_start ovy85_21eb3cc
ovy85_21eb3cc: ; 0x021EB3CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #7
	bne _021EB3DA
	mov r6, #0xff
	b _021EB3E2
_021EB3DA:
	mov r0, #1
	lsl r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021EB3E2:
	mov r0, #1
	tst r0, r6
	beq _021EB3FE
	ldr r0, [r5, #0x34]
	cmp r0, #0x30
	beq _021EB3FE
	mov r0, #0xc9
	lsl r0, r0, #2
	add r1, r4, #3
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021EB3FE:
	mov r0, #2
	tst r0, r6
	beq _021EB414
	mov r0, #0xca
	lsl r0, r0, #2
	add r1, r4, #6
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021EB414:
	mov r0, #4
	tst r0, r6
	beq _021EB42C
	mov r0, #0xcb
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #9
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021EB42C:
	mov r0, #8
	tst r0, r6
	beq _021EB444
	mov r0, #0x33
	add r1, r4, #0
	lsl r0, r0, #4
	add r1, #0xc
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021EB444:
	mov r0, #0x30
	tst r0, r6
	beq _021EB476
	cmp r4, #0
	bne _021EB456
	add r0, r5, #0
	bl ovy85_21eb8a0
	pop {r4, r5, r6, pc}
_021EB456:
	mov r6, #0xcd
	add r1, r4, #0
	lsl r6, r6, #2
	add r1, #0xf
	lsl r1, r1, #0x18
	ldr r0, [r5, r6]
	lsr r1, r1, #0x18
	bl sub_021EA87C
	add r0, r6, #4
	add r4, #0x12
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021EB476:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21eb3cc

	thumb_func_start sub_021EB478
sub_021EB478: ; 0x021EB478
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021EB488 ; =sub_0204C560
	bx r3
	nop
_021EB488: .word sub_0204C560
	thumb_func_end sub_021EB478

	thumb_func_start ovy85_21eb48c
ovy85_21eb48c: ; 0x021EB48C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	mov r4, #0
	add r6, r5, r0
	mov r7, #0x68
_021EB49A:
	add r0, r4, #0
	mul r0, r7
	add r1, r6, r0
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _021EB4B4
	ldrb r0, [r1, #2]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EB4B4
	add r0, r5, #0
	bl ovy85_21ebb04
_021EB4B4:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB49A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21eb48c

	thumb_func_start ovy85_21eb4bc
ovy85_21eb4bc: ; 0x021EB4BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	cmp r1, #0
	beq _021EB4CE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB4CE:
	ldr r1, [r4, #0x74]
	cmp r1, #0
	beq _021EB4DA
	cmp r1, #1
	beq _021EB596
	b _021EB5C0
_021EB4DA:
	mov r1, #7
	mov r2, #2
	bl ovy85_21eb3cc
	ldr r0, [r4, #0x58]
	bl sub_021ED858
	add r5, r0, #0
	cmp r5, #2
	beq _021EB502
	cmp r5, #0x2d
	ldr r0, [r4, #0x58]
	bne _021EB514
	bl sub_021ED860
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1d
	ldr r0, _021EB5C8 ; =0x021ED95C
	ldrh r0, [r0, r1]
	b _021EB52C
_021EB502:
	add r0, r4, #0
	add r0, #0x8a
	ldrb r0, [r0]
	cmp r0, #0xa
	bhs _021EB510
	ldr r0, _021EB5CC ; =0x0000084D
	b _021EB52C
_021EB510:
	ldr r0, _021EB5D0 ; =0x0000084E
	b _021EB52C
_021EB514:
	bl sub_021ED860
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_02014E78
	cmp r0, #0
	beq _021EB52A
	ldr r0, _021EB5D4 ; =0x00000845
	b _021EB52C
_021EB52A:
	ldr r0, _021EB5D8 ; =0x0000064A
_021EB52C:
	bl sub_021EA860
	add r0, r4, #0
	add r0, #0x85
	ldrb r1, [r0]
	cmp r1, #0
	beq _021EB560
	add r0, r4, #0
	add r0, #0x60
	strb r1, [r0]
	add r2, r4, #0
	add r2, #0x60
	ldrb r2, [r2]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x58]
	bl ovy85_21ed76c
	add r1, r4, #0
	add r1, #0x60
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	bl ovy85_21ed70c
	add r1, r4, #0
	add r1, #0x61
	strb r0, [r1]
_021EB560:
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB56E
	mov r0, #1
	b _021EB570
_021EB56E:
	mov r0, #0
_021EB570:
	add r2, r4, #0
	str r0, [sp]
	add r2, #0x61
	ldrb r2, [r2]
	ldr r1, [r4, #0x58]
	add r0, r4, #0
	mov r3, #1
	bl ovy85_21ebf50
	add r0, r4, #0
	add r0, #0x60
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x85
	strb r1, [r0]
_021EB58E:
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
	b _021EB5C4
_021EB596:
	ldr r0, [r4, #0x58]
	bl sub_021ED84C
	cmp r0, #0
	bne _021EB5AA
	ldr r0, [r4, #0x58]
	bl sub_021ED858
	cmp r0, #0xf
	beq _021EB5AE
_021EB5AA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB5AE:
	ldr r1, [r4, #0x58]
	add r0, r4, #0
	bl ovy85_21ec1a8
	cmp r0, #0
	bne _021EB5BE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB5BE:
	b _021EB58E
_021EB5C0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB5C4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EB5C8: .word 0x021ED95C
_021EB5CC: .word 0x0000084D
_021EB5D0: .word 0x0000084E
_021EB5D4: .word 0x00000845
_021EB5D8: .word 0x0000064A
	thumb_func_end ovy85_21eb4bc

	thumb_func_start ovy85_21eb5dc
ovy85_21eb5dc: ; 0x021EB5DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021EB5EC
	cmp r0, #1
	beq _021EB606
	b _021EB624
_021EB5EC:
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl sub_021EA88C
	add r0, r4, #0
	bl sub_021EC424
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
	b _021EB624
_021EB606:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	bne _021EB624
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r5, #0
	mov r1, #0
	bl sub_021EA88C
	str r5, [r4, #0x74]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB624:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21eb5dc

	thumb_func_start ovy85_21eb628
ovy85_21eb628: ; 0x021EB628
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r7, r1, #0
	mov r1, #0xff
	add r0, sp, #8
	strb r1, [r0, #4]
	ldr r0, [sp]
	mov r6, #0
	add r0, #0x85
	ldrb r1, [r0]
	cmp r1, #0
	beq _021EB646
	mov r0, #1
	orr r6, r0
_021EB646:
	ldr r0, [sp]
	add r0, #0x86
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, [sp]
	add r0, #0x84
	ldrb r0, [r0]
	cmp r1, r0
	bge _021EB65C
	mov r0, #2
	orr r6, r0
_021EB65C:
	mov r5, #0
	add r4, sp, #8
_021EB660:
	ldr r0, [sp]
	lsl r1, r5, #2
	add r1, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204C4A0
	add r2, r5, #1
	lsl r1, r2, #1
	add r1, r2, r1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	blx sub_0208D65C
	cmp r1, #2
	bge _021EB6DC
	lsl r0, r5, #1
	add r0, r5, r0
	ldr r1, _021EB6EC ; =0x021ED974
	str r0, [sp, #4]
	add r0, r1, r0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021EB69A
	tst r0, r6
	beq _021EB6DC
_021EB69A:
	lsl r0, r5, #1
	ldr r1, _021EB6EC ; =0x021ED974
	add r0, r5, r0
	add r1, r1, r0
	ldrb r1, [r1, #1]
	strb r1, [r4]
	add r1, #0x18
	strb r1, [r4, #1]
	ldr r1, _021EB6EC ; =0x021ED974
	ldrb r0, [r1, r0]
	strb r0, [r4, #2]
	add r0, #0x18
	strb r0, [r4, #3]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	add r0, sp, #8
	bl sub_0203DADC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021EB6DC
	ldr r1, _021EB6F0 ; =0x021ED976
	ldr r0, [sp, #4]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021EB6D6
	ldr r0, _021EB6F4 ; =0x00000762
	bl sub_021EA860
_021EB6D6:
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EB6DC:
	add r5, r5, #1
	cmp r5, #6
	blt _021EB660
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB6EC: .word 0x021ED974
_021EB6F0: .word 0x021ED976
_021EB6F4: .word 0x00000762
	thumb_func_end ovy85_21eb628

	thumb_func_start ovy85_21eb6f8
ovy85_21eb6f8: ; 0x021EB6F8
	push {r3, r4, r5, lr}
	mov r5, #0x41
	lsl r5, r5, #2
	add r4, r0, #0
	add r2, r5, #4
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	sub r0, r5, #4
	add r1, #8
	add r2, r5, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl GFL_WordSetFormatStrbuf
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb6f8

	thumb_func_start ovy85_21eb720
ovy85_21eb720: ; 0x021EB720
	push {r3, lr}
	sub sp, #0x10
	mov r3, #9
	str r3, [sp]
	ldr r3, _021EB748 ; =0x00000449
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r2, r0, #0
	add r2, #0x81
	ldrb r2, [r2]
	mov r3, #0
	str r2, [sp, #0xc]
	mov r2, #0x5b
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0
	bl sub_021EAC18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021EB748: .word 0x00000449
	thumb_func_end ovy85_21eb720

	thumb_func_start ovy85_21eb74c
ovy85_21eb74c: ; 0x021EB74C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r3, r5, #0
	mov r6, #0x43
	add r3, #0xce
	lsl r6, r6, #2
	ldrh r3, [r3]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, r6]
	ldr r2, [r5, #0x28]
	bl sub_02170D04
	add r1, r5, #0
	add r1, #0xec
	ldr r0, [r5, r6]
	ldr r1, [r1]
	mov r2, #0
	mov r7, #0
	bl sub_02022888
	mov r4, #0xb8
	sub r0, r4, r0
	lsr r2, r0, #0x1f
	add r2, r0, r2
	mov r0, #0xd
	str r0, [sp]
	ldr r0, _021EB7F4 ; =0x0000044D
	lsl r2, r2, #0x17
	str r0, [sp, #4]
	add r0, r5, #0
	str r7, [sp, #8]
	add r0, #0x81
	ldrb r0, [r0]
	lsr r2, r2, #0x18
	mov r3, #4
	str r0, [sp, #0xc]
	mov r0, #0xb8
	add r0, #0xd4
	ldr r1, [r5, r6]
	add r0, r5, r0
	bl sub_021EAC18
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x28]
	add r0, #0xff
	ldr r2, [r2, #4]
	ldr r0, [r5, r0]
	lsl r2, r2, #1
	mov r1, #0
	lsr r2, r2, #0x12
	mov r3, #4
	bl StringSetNumber
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldrh r1, [r1, #0x10]
	lsl r1, r1, #0x17
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy85_21eb6f8
	mov r0, #0xd
	str r0, [sp]
	ldr r0, _021EB7F4 ; =0x0000044D
	add r4, #0xf4
	str r0, [sp, #4]
	add r0, r5, #0
	str r7, [sp, #8]
	add r0, #0x81
	ldrb r0, [r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0xc]
	ldr r1, [r5, r6]
	add r0, r5, r4
	bl sub_021EAC18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB7F4: .word 0x0000044D
	thumb_func_end ovy85_21eb74c

	thumb_func_start ovy85_21eb7f8
ovy85_21eb7f8: ; 0x021EB7F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0xd
	mov r4, #0xd
	bl BmpWin_BitmapFill
	mov r0, #1
	str r0, [sp]
	add r2, r5, #0
	str r0, [sp, #4]
	add r2, #0x8a
	add r0, #0xff
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	mov r7, #0
	bl StringSetNumber
	add r0, r5, #0
	mov r1, #5
	bl ovy85_21eb6f8
	str r4, [sp]
	ldr r0, _021EB85C ; =0x0000044D
	add r4, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	str r6, [sp, #8]
	add r0, #0x81
	ldrb r0, [r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0xc]
	mov r0, #0x1d
	str r7, [sp, #0x10]
	lsl r0, r0, #4
	sub r0, r0, #4
	ldr r1, [r5, r4]
	add r0, r5, r0
	bl sub_021EAB90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EB85C: .word 0x0000044D
	thumb_func_end ovy85_21eb7f8

	thumb_func_start ovy85_21eb860
ovy85_21eb860: ; 0x021EB860
	push {r4, r5, r6, lr}
	mov r4, #0xc9
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, #0x14
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb860

	thumb_func_start ovy85_21eb8a0
ovy85_21eb8a0: ; 0x021EB8A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB8B6
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x11
	b _021EB8BE
_021EB8B6:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf
_021EB8BE:
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x85
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	ldrb r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r1, r0
	bge _021EB8E8
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x12
	bl sub_0204C488
	pop {r4, pc}
_021EB8E8:
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl sub_0204C488
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb8a0

	thumb_func_start ovy85_21eb8f8
ovy85_21eb8f8: ; 0x021EB8F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #0x14
_021EB902:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	add r1, r6, #0
	bl sub_0202B098
	add r4, r4, #1
	cmp r4, #3
	blt _021EB902
	cmp r6, #0
	bne _021EB922
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021EB934
_021EB922:
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl sub_0204C124
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21eb8f8

	thumb_func_start sub_021EB934
sub_021EB934: ; 0x021EB934
	ldr r0, [r0, #0x10]
	ldr r3, _021EB93C ; =sub_0204C124
	bx r3
	nop
_021EB93C: .word sub_0204C124
	thumb_func_end sub_021EB934

	thumb_func_start ovy85_21eb940
ovy85_21eb940: ; 0x021EB940
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _021EB95A
	bl sub_0203A870
	mov r0, #0
	str r0, [r5, #0x60]
	ldrb r1, [r5, #3]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r5, #3]
_021EB95A:
	mov r4, #0
	add r7, r4, #0
	mov r6, #0x14
_021EB960:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r7, #0
	bl BmpWin_BitmapFill
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl sub_02048570
	add r4, r4, #1
	cmp r4, #3
	blt _021EB960
	ldrb r1, [r5, #2]
	mov r0, #0xff
	strb r0, [r5, #1]
	mov r0, #6
	bic r1, r0
	strb r1, [r5, #2]
	ldrb r1, [r5, #2]
	mov r0, #0xf8
	bic r1, r0
	strb r1, [r5, #2]
	ldrb r1, [r5, #3]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r5, #3]
	ldrb r1, [r5, #3]
	mov r0, #0xc
	bic r1, r0
	strb r1, [r5, #3]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21eb940

	thumb_func_start ovy85_21eb9a4
ovy85_21eb9a4: ; 0x021EB9A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy85_21eb940
	ldrb r1, [r5, #2]
	mov r0, #6
	strb r4, [r5, #1]
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x1d
	orr r0, r1
	strb r0, [r5, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy85_21eb9a4

	thumb_func_start ovy85_21eb9c4
ovy85_21eb9c4: ; 0x021EB9C4
	push {r3, r4, r5, r6}
	ldr r4, _021EBA2C ; =0x000001ED
	mov r6, #0
	mov r3, #0x68
_021EB9CC:
	add r2, r6, #0
	mul r2, r3
	add r5, r0, r2
	ldrb r5, [r5, r4]
	cmp r5, #0xff
	bne _021EB9E4
	mov r1, #0x7b
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r2
	pop {r3, r4, r5, r6}
	bx lr
_021EB9E4:
	add r6, r6, #1
	cmp r6, #3
	blt _021EB9CC
	cmp r1, #3
	bne _021EB9F4
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021EB9F4:
	mov r3, #0
	cmp r1, #0
	beq _021EB9FC
	mov r3, #2
_021EB9FC:
	ldr r5, _021EBA30 ; =0x000001EE
	mov r2, #0
	mov r4, #0x68
_021EBA02:
	add r1, r2, #0
	mul r1, r4
	add r6, r0, r1
	ldrb r6, [r6, r5]
	lsl r6, r6, #0x1d
	lsr r6, r6, #0x1e
	cmp r3, r6
	bne _021EBA1E
	mov r2, #0x7b
	lsl r2, r2, #2
	add r0, r0, r2
	add r0, r0, r1
	pop {r3, r4, r5, r6}
	bx lr
_021EBA1E:
	add r2, r2, #1
	cmp r2, #3
	blt _021EBA02
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021EBA2C: .word 0x000001ED
_021EBA30: .word 0x000001EE
	thumb_func_end ovy85_21eb9c4

	thumb_func_start ovy85_21eba34
ovy85_21eba34: ; 0x021EBA34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021EBA94
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r4]
	mov r6, #0x3a
	lsl r6, r6, #4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1b
	lsl r1, r1, #3
	add r1, r5, r1
	ldr r1, [r1, r6]
	bl sub_0204BA40
	mov r0, #0x20
	str r0, [sp]
	ldrb r2, [r4, #2]
	add r0, r5, #0
	add r6, #0x84
	lsl r2, r2, #0x18
	lsr r3, r2, #0x1b
	ldr r2, _021EBAD4 ; =0x021ED964
	add r0, #0xe8
	ldrb r2, [r2, r3]
	ldrb r3, [r4]
	ldr r1, [r5, r6]
	lsl r2, r2, #0x1c
	add r3, #9
	lsr r2, r2, #0x17
	lsl r3, r3, #0x14
	add r1, r1, r2
	ldr r0, [r0]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021EBA94:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	add r5, #0xce
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	mov r1, #0x30
	add r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r5]
	str r0, [sp, #0x18]
	ldrb r2, [r4, #3]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1f
	lsl r3, r2, #2
	ldr r2, _021EBAD8 ; =0x021ED954
	ldr r2, [r2, r3]
	mov r3, #3
	bl sub_02016510
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EBAD4: .word 0x021ED964
_021EBAD8: .word 0x021ED954
	thumb_func_end ovy85_21eba34

	thumb_func_start ovy85_21ebadc
ovy85_21ebadc: ; 0x021EBADC
	push {r3, lr}
	cmp r1, #1
	beq _021EBAEE
	cmp r1, #2
	beq _021EBAEE
	cmp r1, #0x2d
	bne _021EBAF2
	mov r0, #2
	pop {r3, pc}
_021EBAEE:
	mov r0, #1
	pop {r3, pc}
_021EBAF2:
	ldr r0, [r0, #0x28]
	bl sub_02014E78
	cmp r0, #0
	beq _021EBB00
	mov r0, #1
	pop {r3, pc}
_021EBB00:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy85_21ebadc

	thumb_func_start ovy85_21ebb04
ovy85_21ebb04: ; 0x021EBB04
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	mov r6, #0x14
_021EBB0C:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_0202B0F4
	add r4, r4, #1
	cmp r4, #3
	blt _021EBB0C
	ldrb r1, [r5, #2]
	mov r0, #1
	bic r1, r0
	strb r1, [r5, #2]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21ebb04

	thumb_func_start ovy85_21ebb28
ovy85_21ebb28: ; 0x021EBB28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r2, [sp, #0xc]
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021ED858
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_021ED840
	mov r5, #1
	ldrb r2, [r4, #3]
	mov r1, #1
	and r0, r5
	bic r2, r1
	orr r0, r2
	strb r0, [r4, #3]
	ldr r0, [sp, #0xc]
	bl sub_021ED84C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r4, #3]
	mov r2, #2
	lsr r0, r0, #0x1e
	bic r1, r2
	orr r0, r1
	strb r0, [r4, #3]
	ldr r0, [sp, #0xc]
	bl sub_021ED860
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl ovy85_21ebadc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r4, #3]
	mov r2, #0xc
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r4, #3]
	ldr r0, [sp, #0xc]
	bl sub_021ED824
	lsl r0, r0, #0x1b
	ldrb r1, [r4, #2]
	mov r2, #0xf8
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r4, #2]
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x54]
	bl sub_02015018
	ldr r0, [sp, #0xc]
	bl sub_021ED864
	str r5, [sp]
	str r5, [sp, #4]
	add r5, #0xff
	add r2, r0, #0
	ldr r0, [r6, r5]
	mov r1, #0
	mov r3, #4
	mov r7, #0
	bl StringSetNumber
	mov r0, #0x41
	mov r2, #0xe
	lsl r0, r0, #2
	add r2, #0xfa
	ldr r0, [r6, r0]
	ldr r2, [r6, r2]
	mov r1, #0xe
	mov r5, #0xe
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0xe
	mov r2, #0xe
	add r0, #0xf2
	add r2, #0xfa
	ldr r0, [r6, r0]
	ldr r1, [r4, #0x5c]
	ldr r2, [r6, r2]
	bl GFL_WordSetFormatStrbuf
	add r2, r6, #0
	mov r1, #0xe
	add r2, #0xd0
	add r1, #0xf2
	ldrh r2, [r2]
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	bl ovy85_21ed868
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xf6
	ldr r1, [sp, #0x10]
	add r2, #0xfa
	add r1, #0xe
	ldr r0, [r6, r0]
	ldr r2, [r6, r2]
	str r1, [sp, #0x10]
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r0, #0xf2
	add r5, #0xfa
	ldr r0, [r6, r0]
	ldr r1, [r4, #0x58]
	ldr r2, [r6, r5]
	bl GFL_WordSetFormatStrbuf
	ldr r1, _021EBCDC ; =0x021ED950
	add r0, sp, #0x14
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	ldrb r1, [r4, #3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1e
	cmp r1, #2
	bne _021EBC42
	mov r1, #0x86
	lsl r1, r1, #4
	strh r1, [r0]
	mov r1, #0x62
	lsl r1, r1, #6
	strh r1, [r0, #2]
	mov r7, #6
_021EBC42:
	add r0, r6, #0
	add r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EBC90
	mov r5, #0
_021EBC4E:
	add r1, r7, #0
	cmp r5, #1
	beq _021EBC56
	mov r1, #0
_021EBC56:
	mov r0, #1
	cmp r5, #2
	beq _021EBC5E
	mov r0, #0
_021EBC5E:
	add r2, r6, #0
	add r2, #0xec
	ldr r2, [r2]
	lsl r3, r5, #2
	str r2, [sp]
	lsl r2, r0, #1
	add r0, sp, #0x14
	ldrh r0, [r0, r2]
	lsl r1, r1, #0x10
	add r3, r4, r3
	str r0, [sp, #4]
	mov r0, #0x14
	mul r0, r5
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r3, [r3, #0x54]
	asr r1, r1, #0x10
	mov r2, #0
	bl sub_02021D28
	add r5, r5, #1
	cmp r5, #3
	blt _021EBC4E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021EBC90:
	mov r5, #0
_021EBC92:
	add r2, r7, #0
	cmp r5, #1
	beq _021EBC9A
	mov r2, #0
_021EBC9A:
	mov r0, #1
	cmp r5, #2
	beq _021EBCA2
	mov r0, #0
_021EBCA2:
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x54]
	lsl r2, r2, #0x10
	str r1, [sp]
	add r1, r6, #0
	add r1, #0xec
	ldr r1, [r1]
	asr r2, r2, #0x10
	str r1, [sp, #4]
	lsl r1, r0, #1
	add r0, sp, #0x14
	ldrh r0, [r0, r1]
	mov r1, #0x14
	mul r1, r5
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xf0
	add r1, r4, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	mov r3, #0
	bl sub_02021C7C
	add r5, r5, #1
	cmp r5, #3
	blt _021EBC92
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EBCDC: .word 0x021ED950
	thumb_func_end ovy85_21ebb28

	thumb_func_start ovy85_21ebce0
ovy85_21ebce0: ; 0x021EBCE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy85_21eba34
	ldrb r1, [r5, #3]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021EA87C
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy85_21eb8f8
	ldrb r1, [r5, #2]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r4
	strb r0, [r5, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ebce0

	thumb_func_start ovy85_21ebd10
ovy85_21ebd10: ; 0x021EBD10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r7, #0x14
_021EBD1A:
	add r1, r4, #0
	add r0, r6, #0
	mul r1, r7
	add r0, #0xf0
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	bl sub_02021C1C
	cmp r0, #0
	beq _021EBD34
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EBD34:
	add r4, r4, #1
	cmp r4, #3
	blt _021EBD1A
	add r0, r6, #0
	add r1, r5, #0
	bl ovy85_21ebce0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy85_21ebd10

	thumb_func_start ovy85_21ebd48
ovy85_21ebd48: ; 0x021EBD48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy85_21ebb28
	add r0, r5, #0
	add r1, r4, #0
	bl ovy85_21ebce0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy85_21ebb04
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ebd48

	thumb_func_start ovy85_21ebd64
ovy85_21ebd64: ; 0x021EBD64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r4, r2, #0
	strh r6, [r5, #8]
	strh r4, [r5, #0xa]
	bl sub_021EA868
	add r7, r6, #0
	add r7, #0x10
	lsl r1, r7, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x10]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021EA868
	add r2, r4, #0
	add r2, #0x10
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x14]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021EA868
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r1, [sp]
	add r7, r4, #4
	lsl r1, r1, #0x10
	lsl r2, r7, #0x10
	ldr r0, [r5, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	ldr r1, [sp]
	add r4, #0x14
	lsl r1, r1, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x2c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	add r6, #0x80
	lsl r1, r6, #0x10
	lsl r2, r7, #0x10
	ldr r0, [r5, #0x40]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21ebd64

	thumb_func_start ovy85_21ebdd8
ovy85_21ebdd8: ; 0x021EBDD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _021EBDF0
	add r0, r5, #0
	mov r1, #0
	bl sub_021EB934
	pop {r3, r4, r5, r6, r7, pc}
_021EBDF0:
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, _021EBE38 ; =ovy85_21ebe3c
	mov r2, #0xc
	mov r3, #0
	bl sub_0203A888
	add r7, r0, #0
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	str r6, [r4, #8]
	str r5, [r4, #4]
	mov r0, #0x5a
	strb r0, [r4]
	str r7, [r5, #0x60]
	ldrb r1, [r5, #3]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	add r1, #0x14
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021EA87C
	add r0, r5, #0
	mov r1, #1
	bl sub_021EB934
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBE38: .word ovy85_21ebe3c
	thumb_func_end ovy85_21ebdd8

	thumb_func_start ovy85_21ebe3c
ovy85_21ebe3c: ; 0x021EBE3C
	push {r4, lr}
	ldrb r2, [r1]
	add r4, r0, #0
	sub r0, r2, #1
	strb r0, [r1]
	cmp r2, #0
	bne _021EBE68
	ldr r0, [r1, #4]
	mov r2, #0
	str r2, [r0, #0x60]
	ldr r3, [r1, #4]
	mov r0, #0xf0
	ldrb r2, [r3, #3]
	bic r2, r0
	strb r2, [r3, #3]
	ldr r0, [r1, #4]
	mov r1, #0
	bl sub_021EB934
	add r0, r4, #0
	bl sub_0203A870
_021EBE68:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21ebe3c

	thumb_func_start ovy85_21ebe6c
ovy85_21ebe6c: ; 0x021EBE6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021EBEE8 ; =0x0000054B
	add r6, r1, #0
	bl sub_021EA860
	cmp r6, #0
	bne _021EBE9A
	add r0, r5, #0
	add r0, #0x85
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x86
	ldrb r0, [r0]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	add r1, r0, #1
	b _021EBEAE
_021EBE9A:
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	sub r1, r0, #1
_021EBEAE:
	add r0, r5, #0
	add r0, #0x85
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x85
	ldrb r1, [r1]
	ldr r0, [r5, #0x48]
	bl sub_021ED6A0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	add r2, r4, #0
	bl ovy85_21ed76c
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl ovy85_21ed70c
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x50]
	add r0, r5, #0
	add r3, r6, #0
	bl ovy85_21ebf50
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EBEE8: .word 0x0000054B
	thumb_func_end ovy85_21ebe6c

	thumb_func_start ovy85_21ebeec
ovy85_21ebeec: ; 0x021EBEEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r5, #0
	mov r1, #1
	add r0, #0xb8
	strb r1, [r0]
	mov r0, #0
	add r3, #0xb9
	strb r0, [r3]
	add r3, r5, #0
	add r3, #0xbc
	str r4, [r3]
	add r3, r5, #0
	add r3, #0xba
	strb r2, [r3]
	add r2, r5, #0
	add r2, #0xc0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_021EA88C
	add r0, r5, #0
	mov r1, #7
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _021EBF3A
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x13
	b _021EBF42
_021EBF3A:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x10
_021EBF42:
	bl sub_021EA87C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy85_21ebe6c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ebeec

	thumb_func_start ovy85_21ebf50
ovy85_21ebf50: ; 0x021EBF50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r1, r3, #0
	add r5, r0, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl ovy85_21eb9c4
	add r4, r0, #0
	beq _021EBFE2
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, _021EBFE8 ; =ovy85_21ebfec
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x18
	add r6, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #4]
	str r5, [r6, #0xc]
	strb r0, [r6, #1]
	add r0, r5, #0
	str r4, [r6, #8]
	add r0, #0xe0
	str r0, [r6, #0x14]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r2, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy85_21eb9a4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy85_21ebb28
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021EBFDA
	ldrb r1, [r4, #3]
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1e
	cmp r0, #2
	bne _021EBFDA
	mov r0, #0xf0
	bic r1, r0
	ldrh r0, [r4, #6]
	add sp, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021EBFDA:
	ldrb r1, [r4, #3]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r4, #3]
_021EBFE2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBFE8: .word ovy85_21ebfec
	thumb_func_end ovy85_21ebf50

	thumb_func_start ovy85_21ebfec
ovy85_21ebfec: ; 0x021EBFEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldrb r1, [r5]
	ldr r7, [r5, #0xc]
	cmp r1, #0
	beq _021EBFFE
	cmp r1, #1
	b _021EC0AC
_021EBFFE:
	ldr r1, [r5, #8]
	add r0, r7, #0
	bl ovy85_21ebd10
	cmp r0, #0
	beq _021EC0BC
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp]
	mov r0, #6
	mov r6, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #4]
_021EC01E:
	mov r0, #0x68
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _021EC09C
	ldr r0, [r5, #8]
	cmp r4, r0
	ldrb r0, [r5, #1]
	bne _021EC04C
	cmp r0, #0
	ldrb r1, [r4, #2]
	bne _021EC044
	ldr r0, [sp, #4]
	bic r1, r0
	mov r0, #4
	b _021EC074
_021EC044:
	ldr r0, [sp, #8]
	bic r1, r0
	strb r1, [r4, #2]
	b _021EC078
_021EC04C:
	cmp r0, #0
	ldrb r2, [r4, #2]
	bne _021EC060
	ldr r1, [sp, #0xc]
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1e
	add r1, #0xff
	b _021EC06C
_021EC060:
	ldr r1, [sp, #0x10]
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1e
	add r1, r1, #1
_021EC06C:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1d
_021EC074:
	orr r0, r1
	strb r0, [r4, #2]
_021EC078:
	ldrb r2, [r4, #2]
	add r0, r4, #0
	mov r1, #8
	lsl r2, r2, #0x1d
	lsr r3, r2, #0x1e
	mov r2, #0x28
	mul r2, r3
	add r2, #0x30
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ovy85_21ebd64
	ldr r1, [r5, #8]
	cmp r4, r1
	bne _021EC09C
	add r0, r7, #0
	bl ovy85_21ebdd8
_021EC09C:
	add r6, r6, #1
	cmp r6, #3
	blt _021EC01E
	ldrb r0, [r5]
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EC0AC:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _021EC0B8
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
_021EC0B8:
	bl sub_0203A870
_021EC0BC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21ebfec

	thumb_func_start ovy85_21ec0c0
ovy85_21ec0c0: ; 0x021EC0C0
	push {r4, lr}
	add r4, r0, #0
	bl ovy85_21eb6f8
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r4, #0xe0
	add r2, r4, #0
	bl ovy85_21ec0dc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21ec0c0

	thumb_func_start ovy85_21ec0dc
ovy85_21ec0dc: ; 0x021EC0DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xd8
	add r7, r1, #0
	add r4, r2, #0
	ldr r0, [r0]
	ldr r1, _021EC128 ; =ovy85_21ec12c
	mov r2, #0x10
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x10
	add r6, r0, #0
	blx MI_CpuFill8
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02048580
	str r5, [r6, #8]
	mov r0, #0x5a
	strb r0, [r6, #1]
	add r0, r5, #0
	mov r1, #7
	mov r2, #2
	bl ovy85_21eb3cc
	str r4, [r6, #0xc]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC128: .word ovy85_21ec12c
	thumb_func_end ovy85_21ec0dc

	thumb_func_start ovy85_21ec12c
ovy85_21ec12c: ; 0x021EC12C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021EC1A6
	ldrb r1, [r5]
	cmp r1, #0
	beq _021EC146
	cmp r1, #1
	beq _021EC15C
	cmp r1, #2
	beq _021EC174
	b _021EC19A
_021EC146:
	mov r1, #0x11
	ldr r0, [r5, #8]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	add r2, r5, #4
	bl ovy85_21eb720
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EC15C:
	ldr r0, [r5, #8]
	mov r1, #6
	add r0, #0xd8
	ldr r0, [r0]
	mov r2, #0
	add r3, r5, #4
	bl sub_021EADA0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EC174:
	add r0, r5, #1
	mov r1, #6
	mov r4, #6
	bl sub_021EAADC
	cmp r0, #0
	beq _021EC1A6
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r2, #1
	add r3, r5, #4
	bl sub_021EADA0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EC19A:
	ldr r2, [r5, #0xc]
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	bl sub_0203A870
_021EC1A6:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ec12c

	thumb_func_start ovy85_21ec1a8
ovy85_21ec1a8: ; 0x021EC1A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r4, r1, #0
	bl sub_02015248
	add r2, r5, #0
	mov r1, #1
	add r2, #0xd0
	lsl r1, r1, #8
	add r6, r0, #0
	ldrh r2, [r2]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ovy85_21ed868
	add r0, r5, #0
	add r5, #0xe0
	add r1, r6, #0
	mov r2, #0
	add r3, r5, #0
	bl ovy85_21ec208
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21ec1a8

	thumb_func_start ovy85_21ec1d8
ovy85_21ec1d8: ; 0x021EC1D8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	add r6, r3, #0
	str r0, [sp]
	mov r3, #2
	mov r0, #2
	add r4, r1, #0
	str r3, [sp, #4]
	add r0, #0xfe
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0202437C
	add r0, r5, #0
	add r5, #0xe0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ovy85_21ec208
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21ec1d8

	thumb_func_start ovy85_21ec208
ovy85_21ec208: ; 0x021EC208
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	str r2, [sp]
	add r7, r3, #0
	bl sub_02013488
	cmp r0, #0
	bne _021EC228
	ldr r0, [r5, #0x4c]
	ldr r1, [sp]
	bl ovy85_21ed7dc
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC228:
	ldr r1, [r5, #0x2c]
	add r0, r6, #0
	bl sub_02013560
	cmp r6, r0
	bne _021EC238
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC238:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, _021EC2B4 ; =ovy85_21ec2b8
	mov r2, #0x1c
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r5, #0
	mov r1, #0x30
	add r0, #0x88
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x89
	mov r0, #0
	strb r0, [r1]
	str r5, [r4, #0x14]
	mov r1, #0x5a
	strb r1, [r4, #2]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	add r1, #0xa6
	ldr r0, [r5, r1]
	ldr r2, [r4, #0xc]
	mov r1, #1
	bl sub_0202472C
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #2
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #6
	mov r2, #2
	bl ovy85_21eb3cc
	str r7, [r4, #0x18]
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC2B4: .word ovy85_21ec2b8
	thumb_func_end ovy85_21ec208

	thumb_func_start ovy85_21ec2b8
ovy85_21ec2b8: ; 0x021EC2B8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r5, [r4, #0x14]
	cmp r0, #0
	ble _021EC2C8
	b _021EC420
_021EC2C8:
	ldrb r0, [r4]
	cmp r0, #6
	bls _021EC2D0
	b _021EC3FE
_021EC2D0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC2DC: ; jump table
	.short _021EC2EA - _021EC2DC - 2 ; case 0
	.short _021EC30A - _021EC2DC - 2 ; case 1
	.short _021EC322 - _021EC2DC - 2 ; case 2
	.short _021EC34A - _021EC2DC - 2 ; case 3
	.short _021EC39C - _021EC2DC - 2 ; case 4
	.short _021EC3C8 - _021EC2DC - 2 ; case 5
	.short _021EC3DE - _021EC2DC - 2 ; case 6
_021EC2EA:
	add r0, r5, #0
	mov r1, #6
	bl ovy85_21eb6f8
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #8
	bl ovy85_21eb720
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC30A:
	add r5, #0xd8
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC322:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl sub_021EA88C
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl sub_021EA968
	add r0, r5, #0
	mov r1, #0
	bl ovy85_21eb860
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC34A:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_021EA9EC
	cmp r0, #0
	blt _021EC420
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _021EC36A
	cmp r0, #1
	beq _021EC378
	cmp r0, #2
	beq _021EC38E
	pop {r4, r5, r6, pc}
_021EC36A:
	add r0, r5, #0
	mov r1, #8
	bl sub_021EC6D4
	mov r0, #3
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC378:
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0x88
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #6
	bl sub_021EC6D4
	mov r0, #4
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC38E:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #0x10]
	bl ovy85_21ed7dc
	mov r0, #5
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC39C:
	add r0, r5, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _021EC3B2
	mov r0, #0x30
	add r5, #0x88
	strb r0, [r5]
	mov r0, #3
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC3B2:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #0x10]
	bl ovy85_21ed7dc
	add r5, #0xfc
	ldr r0, [r5]
	bl ovy83_21eaaa8
	mov r0, #6
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC3C8:
	add r5, #0xfc
	ldrb r1, [r4, #5]
	ldr r0, [r5]
	bl sub_021EAA68
	cmp r0, #0
	beq _021EC420
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC3DE:
	add r0, r5, #0
	mov r1, #1
	bl ovy85_21eb860
	add r5, #0xd8
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #1
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC3FE:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy85_21eb3cc
	add r5, #0xf0
	ldr r0, [r5]
	mov r1, #0
	bl sub_021EA88C
	ldr r1, [r4, #0x18]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r6, #0
	bl sub_0203A870
_021EC420:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy85_21ec2b8

	thumb_func_start sub_021EC424
sub_021EC424: ; 0x021EC424
	add r1, r0, #0
	ldr r3, _021EC42C ; =ovy85_21ec430
	add r1, #0xe0
	bx r3
	.align 2, 0
_021EC42C: .word ovy85_21ec430
	thumb_func_end sub_021EC424

	thumb_func_start ovy85_21ec430
ovy85_21ec430: ; 0x021EC430
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xd8
	add r4, r1, #0
	ldr r0, [r0]
	ldr r1, _021EC494 ; =ovy85_21ec498
	mov r2, #0x24
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	str r5, [r6, #0x1c]
	mov r0, #0x5a
	strb r0, [r6, #2]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	bl ovy85_21eb3cc
	add r0, r5, #0
	mov r1, #6
	mov r2, #2
	bl ovy85_21eb3cc
	str r4, [r6, #0x20]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EC494: .word ovy85_21ec498
	thumb_func_end ovy85_21ec430

	thumb_func_start ovy85_21ec498
ovy85_21ec498: ; 0x021EC498
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r5, [r4, #0x1c]
	cmp r0, #0
	ble _021EC4A8
	b _021EC5C8
_021EC4A8:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _021EC5A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC4BA: ; jump table
	.short _021EC4C8 - _021EC4BA - 2 ; case 0
	.short _021EC4E8 - _021EC4BA - 2 ; case 1
	.short _021EC500 - _021EC4BA - 2 ; case 2
	.short _021EC528 - _021EC4BA - 2 ; case 3
	.short _021EC552 - _021EC4BA - 2 ; case 4
	.short _021EC570 - _021EC4BA - 2 ; case 5
	.short _021EC586 - _021EC4BA - 2 ; case 6
_021EC4C8:
	add r0, r5, #0
	mov r1, #8
	bl ovy85_21eb6f8
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #8
	bl ovy85_21eb720
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC4E8:
	add r5, #0xd8
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC500:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl sub_021EA88C
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl sub_021EA968
	add r0, r5, #0
	mov r1, #0
	bl ovy85_21eb860
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC528:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_021EA9EC
	cmp r0, #0
	blt _021EC5C8
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021EC54C
	add r0, r5, #0
	mov r1, #5
	bl sub_021EC6D4
	mov r0, #4
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC54C:
	mov r0, #5
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC552:
	add r0, r5, #0
	add r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EC562
	mov r0, #3
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC562:
	add r5, #0xfc
	ldr r0, [r5]
	bl ovy83_21eaaa8
	mov r0, #6
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC570:
	add r5, #0xfc
	ldrb r1, [r4, #5]
	ldr r0, [r5]
	bl sub_021EAA68
	cmp r0, #0
	beq _021EC5C8
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC586:
	add r0, r5, #0
	mov r1, #1
	bl ovy85_21eb860
	add r5, #0xd8
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #1
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021EC5A6:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy85_21eb3cc
	add r5, #0xf0
	ldr r0, [r5]
	mov r1, #0
	bl sub_021EA88C
	ldr r1, [r4, #0x20]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r6, #0
	bl sub_0203A870
_021EC5C8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy85_21ec498

	thumb_func_start ovy85_21ec5cc
ovy85_21ec5cc: ; 0x021EC5CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x5d
	str r0, [sp]
	ldr r1, _021EC680 ; =0x00000438
	ldr r3, _021EC684 ; =0x021EDA40
	mov r0, #0x70
	mov r2, #1
	mov r7, #0x70
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4, #8]
	bl sub_02180670
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02016B08
	str r0, [r4, #0x24]
	bl sub_0201458C
	str r0, [r4, #0x28]
	str r6, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02017238
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0xd0
	add r1, r4, #0
	strh r7, [r0]
	mov r0, #0x15
	add r1, #0xcc
	strh r0, [r1]
	add r1, r4, #0
	ldr r2, _021EC688 ; =0x00008070
	add r1, #0xce
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0xd0
	ldrh r1, [r1]
	add r0, #0xee
	bl sub_0204AA30
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1]
	add r0, r4, #0
	bl ovy85_21ec9b4
	add r0, r4, #0
	bl ovy85_21ecadc
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy85_21ecc6c
	add r0, r4, #0
	bl ovy85_21ecdfc
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy85_21ece54
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy85_21ecfcc
	add r0, r4, #0
	bl ovy85_21ed0f8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC680: .word 0x00000438
_021EC684: .word 0x021EDA40
_021EC688: .word 0x00008070
	thumb_func_end ovy85_21ec5cc

	thumb_func_start ovy85_21ec68c
ovy85_21ec68c: ; 0x021EC68C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	bl ovy85_21ed174
	add r0, r4, #0
	bl ovy85_21ed054
	add r0, r4, #0
	bl ovy85_21ecf8c
	add r0, r4, #0
	bl ovy85_21ece3c
	add r0, r4, #0
	bl ovy85_21ecdb4
	add r0, r4, #0
	bl ovy85_21ecbd8
	add r0, r4, #0
	bl ovy85_21ecab8
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy85_21ec68c

	thumb_func_start sub_021EC6D4
sub_021EC6D4: ; 0x021EC6D4
	add r2, r0, #0
	add r2, #0x78
	strh r1, [r2]
	mov r1, #0
	add r0, #0x7b
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EC6D4

	thumb_func_start sub_021EC6E4
sub_021EC6E4: ; 0x021EC6E4
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021EC6E4

	thumb_func_start ovy85_21ec6ec
ovy85_21ec6ec: ; 0x021EC6EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r1, #0
	bne _021EC6FC
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EC6FC:
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0xa
	bls _021EC706
	b _021EC842
_021EC706:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC712: ; jump table
	.short _021EC842 - _021EC712 - 2 ; case 0
	.short _021EC72E - _021EC712 - 2 ; case 1
	.short _021EC728 - _021EC712 - 2 ; case 2
	.short _021EC72E - _021EC712 - 2 ; case 3
	.short _021EC750 - _021EC712 - 2 ; case 4
	.short _021EC76A - _021EC712 - 2 ; case 5
	.short _021EC78C - _021EC712 - 2 ; case 6
	.short _021EC772 - _021EC712 - 2 ; case 7
	.short _021EC7CE - _021EC712 - 2 ; case 8
	.short _021EC7F2 - _021EC712 - 2 ; case 9
	.short _021EC824 - _021EC712 - 2 ; case 10
_021EC728:
	ldr r0, [r4, #0x1c]
	bl sub_02153654
_021EC72E:
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_021ED6A0
	ldr r0, [r4]
	ldr r1, [r4, #8]
	mov r2, #0
	bl sub_0218B12C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #2
_021EC748:
	bl ovy85_21ec878
	add r5, r0, #0
	b _021EC848
_021EC750:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, _021EC854 ; =0x00000015
	ldr r2, _021EC858 ; =0x0216E80D
	add r3, sp, #0x10
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #3
	b _021EC748
_021EC76A:
	ldr r0, [r4]
	ldr r1, _021EC85C ; =0x0000009D
	ldr r2, _021EC860 ; =0x021F5AE5
	b _021EC7D4
_021EC772:
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, _021EC864 ; =0x0000000E
	ldr r2, _021EC868 ; =0x0216E8AD
	add r3, sp, #0xc
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	b _021EC748
_021EC78C:
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	ldr r1, _021EC86C ; =0x0000009C
	ldr r2, _021EC870 ; =0x021F59E1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x89
	ldrb r0, [r0]
	add r3, sp, #4
	str r0, [sp, #8]
	ldr r0, [r4]
	bl sub_02016EA0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy85_21ec878
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0x88
	strb r1, [r0]
	b _021EC848
_021EC7CE:
	ldr r0, [r4]
	ldr r1, _021EC86C ; =0x0000009C
	ldr r2, _021EC874 ; =0x021F5B01
_021EC7D4:
	ldr r3, [r4, #8]
	bl sub_02016EA0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	b _021EC748
_021EC7F2:
	ldr r0, [r4]
	ldr r1, _021EC86C ; =0x0000009C
	ldr r2, _021EC874 ; =0x021F5B01
	ldr r3, [r4, #8]
	bl sub_02016EA0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	mov r6, #0
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy85_21ec878
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	strb r6, [r0]
	b _021EC848
_021EC824:
	ldr r0, [r4, #0x40]
	bl sub_0202D7D0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #0xe
	bl sub_021775E8
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	b _021EC748
_021EC842:
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EC848:
	add r0, r4, #0
	bl sub_021EC6E4
	add r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EC854: .word 0x00000015
_021EC858: .word 0x0216E80D
_021EC85C: .word 0x0000009D
_021EC860: .word 0x021F5AE5
_021EC864: .word 0x0000000E
_021EC868: .word 0x0216E8AD
_021EC86C: .word 0x0000009C
_021EC870: .word 0x021F59E1
_021EC874: .word 0x021F5B01
	thumb_func_end ovy85_21ec6ec

	thumb_func_start ovy85_21ec878
ovy85_21ec878: ; 0x021EC878
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	add r7, r3, #0
	ldr r0, [r5]
	ldr r2, _021EC8B0 ; =ovy85_21ec8b4
	mov r1, #0
	mov r3, #0x1c
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	str r5, [r0, #0xc]
	ldr r1, [r5]
	str r1, [r0, #4]
	ldr r1, [r5, #8]
	add r5, #0x7a
	str r1, [r0, #8]
	str r4, [r0, #0x10]
	str r6, [r0, #0x14]
	str r7, [r0, #0x18]
	mov r0, #1
	strb r0, [r5]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC8B0: .word ovy85_21ec8b4
	thumb_func_end ovy85_21ec878

	thumb_func_start ovy85_21ec8b4
ovy85_21ec8b4: ; 0x021EC8B4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r1, [r5, #0x14]
	add r6, r0, #0
	mov r0, #0
	ldr r4, [r5, #0xc]
	cmp r1, #0
	beq _021EC8CE
	cmp r1, #1
	beq _021EC8D8
	cmp r1, #2
	beq _021EC8E2
	b _021EC8EA
_021EC8CE:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy85_21ec908
	b _021EC8EA
_021EC8D8:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy85_21ec93c
	b _021EC8EA
_021EC8E2:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy85_21ec958
_021EC8EA:
	cmp r0, #0
	beq _021EC904
	add r0, r4, #0
	mov r1, #0
	add r0, #0x7a
	strb r1, [r0]
	mov r0, #1
	add r4, #0x7b
	strb r0, [r4]
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02016D50
_021EC904:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21ec8b4

	thumb_func_start ovy85_21ec908
ovy85_21ec908: ; 0x021EC908
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EC918
	cmp r1, #1
	beq _021EC92A
	b _021EC938
_021EC918:
	ldr r1, [r4, #0x18]
	mov r2, #1
	bl ovy85_21eb3cc
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021EC92A:
	ldr r1, [r4, #0x18]
	bl sub_021EB478
	cmp r0, #0
	beq _021EC938
	mov r0, #0
	pop {r4, pc}
_021EC938:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy85_21ec908

	thumb_func_start ovy85_21ec93c
ovy85_21ec93c: ; 0x021EC93C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0203A7F4
	add r4, #0xe0
	ldr r0, [r4]
	cmp r0, #0
	bne _021EC954
	mov r0, #1
	pop {r4, pc}
_021EC954:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy85_21ec93c

	thumb_func_start ovy85_21ec958
ovy85_21ec958: ; 0x021EC958
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	ldr r4, [r5, #0x18]
	cmp r0, #0
	beq _021EC96A
	cmp r0, #1
	beq _021EC97A
	b _021EC994
_021EC96A:
	add r0, r4, #0
	mov r1, #1
	bl sub_0202E430
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC994
_021EC97A:
	add r0, r4, #0
	bl sub_0202E37C
	add r0, r4, #0
	bl sub_0202E438
	cmp r0, #0
	beq _021EC994
	add r0, r4, #0
	bl sub_0202E4AC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EC994:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ec958

	thumb_func_start ovy85_21ec998
ovy85_21ec998: ; 0x021EC998
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	beq _021EC9AA
	bl sub_020275F8
_021EC9AA:
	add r0, r4, #0
	bl ovy85_21eb48c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21ec998

	thumb_func_start ovy85_21ec9b4
ovy85_21ec9b4: ; 0x021EC9B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020174D4
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x24]
	bl sub_020146FC
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x24]
	bl sub_02014708
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x24]
	bl sub_02014710
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	bl sub_021ED688
	add r1, r4, #0
	add r1, #0x84
	strb r0, [r1]
	ldr r0, [r4, #0x48]
	bl sub_021ED694
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldrb r1, [r0]
	cmp r1, #3
	bhs _021EC9FC
	b _021EC9FE
_021EC9FC:
	mov r1, #3
_021EC9FE:
	add r0, r4, #0
	add r0, #0x86
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0x88
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_02017934
	add r5, r0, #0
	bl sub_0200C62C
	mov r1, #0
	bl sub_0200C678
	str r0, [r4, #0x34]
	ldr r0, [r4]
	bl sub_02016B20
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02017238
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl sub_02017354
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0200C830
	str r0, [r4, #0x14]
	bl sub_0200C924
	mov r1, #0xcf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_02008DD0
	add r5, r0, #0
	bl sub_02008BD4
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl MyStatus_GetTrainerGender
	add r1, r4, #0
	add r1, #0x3c
	strb r0, [r1]
	add r0, r5, #0
	bl sub_02008BF4
	add r1, r4, #0
	add r1, #0x3d
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x17
	add r0, #0x3e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl ovy85_21ed6ac
	str r0, [r4, #0x50]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl ovy85_21ed6ac
	str r0, [r4, #0x54]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl ovy85_21ed6ac
	str r0, [r4, #0x58]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl sub_0201361C
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl sub_02170AC4
	str r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ec9b4

	thumb_func_start ovy85_21ecab8
ovy85_21ecab8: ; 0x021ECAB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_02170B00
	ldr r0, [r4, #0x2c]
	bl sub_0201362C
	ldr r0, [r4, #0x58]
	bl GFL_HeapFree
	ldr r0, [r4, #0x54]
	bl GFL_HeapFree
	ldr r0, [r4, #0x50]
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy85_21ecab8

	thumb_func_start ovy85_21ecadc
ovy85_21ecadc: ; 0x021ECADC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xd0
	ldrh r0, [r0]
	mov r2, #0x10
	mov r3, #0x80
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	ldr r0, _021ECBD4 ; =ovy85_21ec998
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl sub_02026DC0
	add r3, r5, #0
	add r3, #0xd0
	add r1, r5, #0
	mov r6, #7
	add r1, #0xe8
	lsl r6, r6, #6
	str r0, [r1]
	ldrh r3, [r3]
	mov r1, #1
	add r2, r6, #0
	bl sub_02026E04
	add r3, r5, #0
	add r0, r5, #0
	add r3, #0xd0
	add r0, #0xe8
	add r2, r6, #0
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #3
	add r2, #0x40
	mov r4, #3
	bl sub_02026E04
	add r0, r5, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl sub_02021998
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	mov r1, #1
	bl sub_02021A20
	add r0, r5, #0
	add r0, #0xf0
	add r6, #0x34
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #0
	bl sub_02021A34
	ldr r0, [r5, #8]
	bl sub_02180490
	bl sub_0218799C
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	bl sub_020232D8
	add r0, r5, #0
	add r0, #0xd0
	ldrh r0, [r0]
	bl GFL_WordSetSystemCreateDefault
	add r4, #0xfd
	str r0, [r5, r4]
	add r3, r5, #0
	add r3, #0xd0
	ldrh r3, [r3]
	mov r0, #1
	mov r1, #2
	mov r4, #0x28
	mov r2, #0x28
	bl GFL_MsgSysLoadData
	add r4, #0xdc
	str r0, [r5, r4]
	add r1, r5, #0
	add r1, #0xd0
	ldrh r1, [r1]
	mov r0, #0xd9
	mov r4, #0xd9
	bl GFL_StrBufCreate
	mov r1, #0xd9
	add r1, #0x2f
	str r0, [r5, r1]
	add r1, r5, #0
	add r1, #0xd0
	ldrh r1, [r1]
	mov r0, #0xd9
	bl GFL_StrBufCreate
	mov r1, #0xd9
	add r1, #0x33
	str r0, [r5, r1]
	add r1, r5, #0
	add r1, #0xd0
	ldrh r1, [r1]
	mov r0, #0xd9
	bl GFL_StrBufCreate
	add r4, #0x37
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021ECBD4: .word ovy85_21ec998
	thumb_func_end ovy85_21ecadc

	thumb_func_start ovy85_21ecbd8
ovy85_21ecbd8: ; 0x021ECBD8
	push {r3, r4, r5, lr}
	mov r4, #0x11
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_02021A18
	bl sub_020232D8
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #3
	bl sub_02026E48
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	bl sub_02026E48
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02026DE8
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0203A850
	add r5, #0xd8
	ldr r0, [r5]
	bl GFL_TCBExMgrFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ecbd8

	thumb_func_start ovy85_21ecc6c
ovy85_21ecc6c: ; 0x021ECC6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021ECD9C ; =0x021ED9BC
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021ECDA0 ; =0x021ED9DC
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021ECDA4 ; =0x021ED9FC
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021ECDA8 ; =0x021EDA1C
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r1, #0x62
	mov r2, #4
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0xf
	blx MIi_CpuClear32
	ldr r4, _021ECDAC ; =0x04001000
	add r3, r5, #0
	ldr r1, [r4]
	ldr r0, _021ECDB0 ; =0xFFFF1FFF
	add r3, #0xce
	and r0, r1
	str r0, [r4]
	add r4, #0x50
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1a
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xe8
	ldrh r3, [r3]
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #4
	bl sub_02026F5C
	mov r0, #1
	str r0, [sp]
	mov r7, #0x20
	add r3, r5, #0
	str r7, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, #0xce
	add r0, #0xe8
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #0x17
	mov r2, #5
	bl sub_02026EE8
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xce
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	lsl r7, r7, #6
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xce
	ldrh r0, [r0]
	mov r1, #6
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xce
	ldrh r0, [r0]
	mov r1, #7
	mov r2, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	mov r0, #1
	add r5, #0xce
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021ECD9C: .word 0x021ED9BC
_021ECDA0: .word 0x021ED9DC
_021ECDA4: .word 0x021ED9FC
_021ECDA8: .word 0x021EDA1C
_021ECDAC: .word 0x04001000
_021ECDB0: .word 0xFFFF1FFF
	thumb_func_end ovy85_21ecc6c

	thumb_func_start ovy85_21ecdb4
ovy85_21ecdb4: ; 0x021ECDB4
	push {r4, lr}
	mov r0, #4
	mov r1, #0
	mov r4, #0
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
	ldr r0, _021ECDF8 ; =0x04001050
	strh r4, [r0]
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r4, pc}
	nop
_021ECDF8: .word 0x04001050
	thumb_func_end ovy85_21ecdb4

	thumb_func_start ovy85_21ecdfc
ovy85_21ecdfc: ; 0x021ECDFC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0xd0
	ldrh r3, [r3]
	mov r0, #9
	mov r1, #0
	mov r2, #1
	bl sub_0202E7A4
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r2, #0xec
	add r3, #0xf0
	ldr r2, [r2]
	ldr r3, [r3]
	mov r0, #4
	mov r1, #0xe
	bl sub_021EA8AC
	add r4, #0xfc
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy85_21ecdfc

	thumb_func_start ovy85_21ece3c
ovy85_21ece3c: ; 0x021ECE3C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_021EA928
	add r4, #0xf8
	ldr r0, [r4]
	bl sub_0202E818
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21ece3c

	thumb_func_start ovy85_21ece54
ovy85_21ece54: ; 0x021ECE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	add r7, r1, #0
	add r1, r6, #0
	add r1, #0xce
	ldrh r1, [r1]
	mov r0, #0x1f
	bl sub_0204AA30
	str r0, [sp, #0xc]
	ldr r0, _021ECF80 ; =0x021ED9A0
	add r4, sp, #0x1c
	ldrh r1, [r0]
	mov r5, #0x49
	lsl r5, r5, #2
	strh r1, [r4, #0xc]
	ldrh r1, [r0, #2]
	add r2, sp, #0x28
	add r3, r7, #0
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x10]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x14]
	ldrh r0, [r0, #0xa]
	add r1, r6, r5
	strh r0, [r4, #0x16]
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	bl ovy85_21ed194
	ldr r0, _021ECF84 ; =0x021ED994
	ldr r3, [sp, #0xc]
	ldrh r1, [r0]
	add r2, sp, #0x1c
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r1, [r0, #6]
	strh r1, [r4, #6]
	ldrh r1, [r0, #8]
	strh r1, [r4, #8]
	ldrh r0, [r0, #0xa]
	add r1, r5, #0
	add r1, #0x18
	strh r0, [r4, #0xa]
	mov r4, #0
	add r0, r6, #0
	add r1, r6, r1
	str r4, [sp]
	bl ovy85_21ed194
	mov r0, #3
	str r0, [sp]
	add r5, #0x9c
	str r5, [sp, #4]
	add r3, r6, #0
	add r0, r6, #0
	str r4, [sp, #8]
	add r3, #0xce
	add r0, #0xe8
	ldrh r3, [r3]
	ldr r0, [r0]
	add r1, r7, #0
	mov r2, #0
	bl sub_02026F5C
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	add r3, r6, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, #0xce
	add r0, #0xe8
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	bl sub_02026EE8
	add r2, r6, #0
	add r2, #0xd0
	ldrh r2, [r2]
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_0204AB1C
	ldr r1, _021ECF88 ; =0x00000428
	str r1, [sp, #0x14]
	str r0, [r6, r1]
	sub r1, #8
	add r1, r6, r1
	bl sub_020602D8
	ldr r0, [sp, #0x14]
	sub r0, #8
	ldr r0, [r6, r0]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r0, #4
	str r1, [r6, r0]
	ldr r0, [sp, #0x14]
	sub r0, #0x88
	add r0, r6, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	sub r0, #0x84
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x84
	str r0, [sp, #0x14]
_021ECF46:
	add r2, r6, #0
	add r2, #0xd0
	ldrh r2, [r2]
	add r1, r4, #0
	lsl r7, r4, #3
	ldr r0, [sp, #0xc]
	add r1, #0x31
	add r5, r6, r7
	bl sub_0204AB1C
	ldr r1, [sp, #0x18]
	str r0, [r5, r1]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r1, r7
	bl sub_02060278
	add r4, r4, #1
	cmp r4, #0x10
	blt _021ECF46
	blx DC_FlushAll
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021ECF80: .word 0x021ED9A0
_021ECF84: .word 0x021ED994
_021ECF88: .word 0x00000428
	thumb_func_end ovy85_21ece54

	thumb_func_start ovy85_21ecf8c
ovy85_21ecf8c: ; 0x021ECF8C
	push {r4, r5, r6, lr}
	mov r6, #0xe9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021ECF96:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #0x10
	blt _021ECF96
	ldr r0, _021ECFC8 ; =0x00000428
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	mov r4, #0x4f
	lsl r4, r4, #2
	add r0, r5, #0
	add r1, r5, r4
	bl ovy85_21ed26c
	sub r4, #0x18
	add r0, r5, #0
	add r1, r5, r4
	bl ovy85_21ed26c
	pop {r4, r5, r6, pc}
	nop
_021ECFC8: .word 0x00000428
	thumb_func_end ovy85_21ecf8c

	thumb_func_start ovy85_21ecfcc
ovy85_21ecfcc: ; 0x021ECFCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0xcc
	ldrh r2, [r2]
	mov r0, #0x40
	mov r1, #0
	mov r6, #0x40
	mov r4, #0
	bl sub_0204BF1C
	mov r1, #0x40
	add r1, #0xd8
	add r2, sp, #0
	ldr r3, _021ED050 ; =0x021ED9AC
	str r0, [r5, r1]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	add r2, #0xd0
	ldrh r2, [r2]
	add r0, r7, #0
	mov r1, #1
	bl sub_0204BE9C
	add r1, r0, #0
	mov r0, #0x40
	add r0, #0xdc
	str r1, [r5, r0]
	mov r0, #0x40
	add r0, #0xd8
	ldr r0, [r5, r0]
	bl sub_0204C018
	add r0, r5, #0
	add r0, #0xd0
	mov r1, #0x40
	add r1, #0xd8
	ldrh r0, [r0]
	ldr r1, [r5, r1]
	bl sub_0202AE5C
	add r6, #0xd4
	str r0, [r5, r6]
	add r0, r5, #0
	bl ovy85_21ed328
_021ED032:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy85_21ed44c
	add r4, r4, #1
	cmp r4, #3
	blt _021ED032
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED050: .word 0x021ED9AC
	thumb_func_end ovy85_21ecfcc

	thumb_func_start ovy85_21ed054
ovy85_21ed054: ; 0x021ED054
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #0
	mov r4, #0
	bl sub_02046D84
_021ED062:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy85_21ed620
	add r4, r4, #1
	cmp r4, #3
	blt _021ED062
	add r0, r5, #0
	bl ovy85_21ed3ac
	mov r4, #0x45
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202AEAC
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BECC
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed054

	thumb_func_start ovy85_21ed098
ovy85_21ed098: ; 0x021ED098
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xec
	ldr r1, [r1]
	add r4, sp, #0x18
	str r1, [r5, #8]
	add r1, r0, #0
	add r1, #0xf0
	ldr r1, [r1]
	add r0, #0xd8
	str r1, [r5, #0xc]
	ldr r0, [r0]
	str r0, [r5, #0x10]
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r2, #0
	ldrb r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #8]
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_GetBitmap
	ldr r4, [r5]
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #0x18]
	add r0, r4, #0
	str r4, [r5, #0x14]
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed098

	thumb_func_start ovy85_21ed0f8
ovy85_21ed0f8: ; 0x021ED0F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #2
	mov r4, #0x5b
	str r6, [sp]
	mov r1, #0x16
	str r1, [sp, #4]
	mov r1, #0x1c
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #8]
	mov r2, #6
	add r1, r5, r4
	mov r3, #1
	str r2, [sp, #0xc]
	bl ovy85_21ed098
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r1, r4, #0
	str r0, [sp, #8]
	mov r7, #3
	add r1, #0x20
	str r7, [sp, #0xc]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #5
	mov r3, #1
	bl ovy85_21ed098
	str r6, [sp]
	add r1, r4, #0
	add r1, #0x40
	str r7, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #5
	mov r3, #1
	str r6, [sp, #0xc]
	bl ovy85_21ed098
	mov r0, #0x12
	str r0, [sp]
	add r4, #0x60
	str r7, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, r4
	mov r2, #5
	mov r3, #1
	str r6, [sp, #0xc]
	bl ovy85_21ed098
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed0f8

	thumb_func_start ovy85_21ed174
ovy85_21ed174: ; 0x021ED174
	push {r4, r5, r6, lr}
	mov r6, #0x5b
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021ED17E:
	lsl r0, r4, #5
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021ED18C
	bl sub_02048210
_021ED18C:
	add r4, r4, #1
	cmp r4, #4
	blt _021ED17E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy85_21ed174

	thumb_func_start ovy85_21ed194
ovy85_21ed194: ; 0x021ED194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	str r3, [sp, #4]
	mov r5, #0
	blx MI_CpuFill8
_021ED1B0:
	lsl r0, r5, #2
	ldrh r1, [r6, r0]
	lsl r2, r5, #3
	str r1, [r4, r2]
	cmp r1, #0
	beq _021ED1D8
	mov r0, #0x35
	lsl r0, r0, #4
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xcc
	ldrh r0, [r0]
	ldr r3, _021ED268 ; =0x021EDA40
	lsl r1, r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	lsl r1, r5, #3
	add r1, r4, r1
	str r0, [r1, #4]
_021ED1D8:
	add r5, r5, #1
	cmp r5, #3
	blt _021ED1B0
	ldr r0, [r4]
	mov r5, #0
	cmp r0, #0
	bls _021ED20A
_021ED1E6:
	add r0, r7, #0
	add r0, #0xcc
	ldrh r0, [r0]
	ldrh r1, [r6, #2]
	mov r2, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	mov r3, #0
	bl sub_0204BBA0
	lsl r1, r5, #2
	ldr r2, [r4, #4]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4]
	cmp r5, r0
	blo _021ED1E6
_021ED20A:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	bls _021ED236
_021ED212:
	add r0, r7, #0
	add r0, #0xcc
	ldrh r0, [r0]
	ldrh r1, [r6, #6]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	mov r3, #1
	bl Oam_LoadNCGRFile
	lsl r1, r5, #2
	ldr r2, [r4, #0xc]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4, #8]
	cmp r5, r0
	blo _021ED212
_021ED236:
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	bls _021ED262
_021ED23E:
	ldrh r2, [r6, #0xa]
	lsl r3, r5, #1
	ldr r0, [sp, #4]
	add r1, r2, r3
	add r2, r2, #1
	add r2, r2, r3
	add r3, r7, #0
	add r3, #0xcc
	ldrh r3, [r3]
	bl sub_0204BDE0
	lsl r1, r5, #2
	ldr r2, [r4, #0x14]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4, #0x10]
	cmp r5, r0
	blo _021ED23E
_021ED262:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED268: .word 0x021EDA40
	thumb_func_end ovy85_21ed194

	thumb_func_start ovy85_21ed26c
ovy85_21ed26c: ; 0x021ED26C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	bls _021ED28A
_021ED278:
	ldr r1, [r4, #0x14]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204BE64
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blo _021ED278
_021ED28A:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	bls _021ED2A4
_021ED292:
	ldr r1, [r4, #0xc]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204B98C
	ldr r0, [r4, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _021ED292
_021ED2A4:
	ldr r0, [r4]
	mov r5, #0
	cmp r0, #0
	bls _021ED2BE
_021ED2AC:
	ldr r1, [r4, #4]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204BCD0
	ldr r0, [r4]
	add r5, r5, #1
	cmp r5, r0
	blo _021ED2AC
_021ED2BE:
	mov r5, #0
_021ED2C0:
	lsl r0, r5, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021ED2CE
	bl GFL_HeapFree
_021ED2CE:
	add r5, r5, #1
	cmp r5, #3
	blt _021ED2C0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed26c

	thumb_func_start ovy85_21ed2d8
ovy85_21ed2d8: ; 0x021ED2D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, sp, #0x28
	mov r7, #0
	ldrsh r4, [r6, r7]
	add r5, sp, #0xc
	strh r4, [r5]
	mov r4, #4
	ldrsh r4, [r6, r4]
	strh r4, [r5, #2]
	ldrb r4, [r6, #8]
	strh r4, [r5, #4]
	ldrb r4, [r6, #0xc]
	strb r4, [r5, #7]
	ldrb r4, [r6, #0x10]
	strb r4, [r5, #6]
	add r4, sp, #0xc
	str r4, [sp]
	add r4, r0, #0
	str r7, [sp, #4]
	add r4, #0xcc
	ldrh r4, [r4]
	str r4, [sp, #8]
	mov r4, #0x46
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_0204C040
	add r4, r0, #0
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C5C8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed2d8

	thumb_func_start ovy85_21ed328
ovy85_21ed328: ; 0x021ED328
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	sub r0, #8
	str r0, [sp, #0x18]
	mov r0, #0x13
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	add r0, #8
	mov r4, #0
	mov r7, #1
	str r0, [sp, #0x14]
_021ED346:
	lsl r2, r4, #2
	add r6, r5, r2
	ldr r1, _021ED3A8 ; =0x021ED988
	lsl r0, r4, #1
	ldr r2, _021ED3A8 ; =0x021ED988
	add r1, r1, r0
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldrb r0, [r1, #1]
	add r1, r4, #1
	str r0, [sp, #4]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy85_21ed2d8
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r1, r7, #0
	bl sub_0204C124
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #6
	blt _021ED346
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021ED3A8: .word 0x021ED988
	thumb_func_end ovy85_21ed328

	thumb_func_start ovy85_21ed3ac
ovy85_21ed3ac: ; 0x021ED3AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc9
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021ED3B6:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r7]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _021ED3B6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21ed3ac

	thumb_func_start ovy85_21ed3d0
ovy85_21ed3d0: ; 0x021ED3D0
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r1, r3, #0
	add r3, r5, #0
	add r3, #0xd0
	add r0, r2, #0
	ldrh r3, [r3]
	mov r2, #0x20
	bl sub_02046E28
	add r2, sp, #0x30
	mov r3, #0
	str r0, [sp, #8]
	ldrsh r0, [r2, r3]
	add r1, sp, #8
	strh r0, [r1, #4]
	mov r0, #4
	ldrsh r0, [r2, r0]
	mov r2, #0x4a
	lsl r2, r2, #2
	strh r0, [r1, #6]
	ldr r0, [r5, r2]
	sub r2, #0x14
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	strb r3, [r1, #0x10]
	strb r0, [r1, #0x11]
	strh r3, [r1, #0x12]
	mov r0, #1
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, sp, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r2, [r5, r2]
	add r5, #0xf0
	ldr r3, [r5]
	add r0, r4, #0
	bl sub_021EAB50
	ldr r0, [r4, #4]
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4]
	bl sub_0202B0F4
	ldr r0, [r4]
	mov r1, #0
	bl sub_0202B098
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ed3d0

	thumb_func_start ovy85_21ed44c
ovy85_21ed44c: ; 0x021ED44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	add r6, r1, #0
	add r7, r5, r0
	mov r0, #0x68
	mul r0, r6
	add r4, r7, r0
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x68
	blx MI_CpuFill8
	ldr r0, [sp, #0x14]
	strb r6, [r7, r0]
	mov r0, #0xff
	strb r0, [r4, #1]
	str r0, [sp, #0x18]
	ldrb r1, [r4, #2]
	mov r0, #6
	mov r7, #8
	bic r1, r0
	add r0, r5, #0
	strb r1, [r4, #2]
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #3
	str r0, [r4, #0x64]
	mov r0, #0x28
	mul r0, r6
	strh r7, [r4, #8]
	add r0, #0x30
	strh r0, [r4, #0xa]
	add r0, r6, #0
	blx sub_0208D65C
	ldrsh r0, [r4, r7]
	mov r2, #0xff
	mov r3, #0xff
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	add r2, #0x29
	add r3, #0x39
	str r0, [sp, #4]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r1, #0xff
	add r1, #0x31
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy85_21ed2d8
	str r0, [r4, #0xc]
	ldrsh r0, [r4, r7]
	mov r1, #0xff
	mov r2, #0xff
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r3, #0xff
	add r1, #0x31
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r2, #0x29
	add r3, #0x39
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy85_21ed2d8
	str r0, [r4, #0x10]
	ldrsh r0, [r4, r7]
	mov r1, #0xff
	mov r3, #0x15
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	add r1, #0x49
	lsl r3, r3, #4
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r2, [r5, r1]
	lsl r1, r6, #2
	ldr r1, [r2, r1]
	ldr r2, [sp, #0x18]
	ldr r3, [r5, r3]
	add r2, #0x29
	str r2, [sp, #0x18]
	ldr r2, [r5, r2]
	ldr r3, [r3]
	ldr r2, [r2]
	add r0, r5, #0
	bl ovy85_21ed2d8
	add r6, #9
	lsl r1, r6, #0x18
	str r0, [r4, #0x14]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	ldrsh r0, [r4, r7]
	add r1, r4, #0
	add r1, #0x18
	add r0, #0x30
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r2, #8
	mov r3, #2
	add r0, r0, #4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	bl ovy85_21ed3d0
	add r1, r5, #0
	add r1, #0xd0
	ldrh r1, [r1]
	mov r0, #8
	bl GFL_StrBufCreate
	str r0, [r4, #0x54]
	ldrsh r0, [r4, r7]
	add r1, r4, #0
	add r1, #0x2c
	add r0, #0x30
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r2, #0x18
	mov r3, #2
	add r0, #0x14
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	bl ovy85_21ed3d0
	add r1, r5, #0
	add r1, #0xd0
	ldrh r1, [r1]
	mov r0, #0x29
	bl GFL_StrBufCreate
	str r0, [r4, #0x58]
	ldrsh r0, [r4, r7]
	add r1, r4, #0
	add r1, #0x40
	add r0, #0x80
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r2, #0xc
	mov r3, #2
	add r0, r0, #4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	bl ovy85_21ed3d0
	add r5, #0xd0
	ldrh r1, [r5]
	mov r0, #0x18
	bl GFL_StrBufCreate
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy85_21ed44c

	thumb_func_start ovy85_21ed620
ovy85_21ed620: ; 0x021ED620
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x7b
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x68
	mul r0, r1
	add r5, r2, r0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x18
	mov r7, #0x14
_021ED636:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl GFL_StrBufFree
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_021EAB6C
	add r4, r4, #1
	cmp r4, #3
	blt _021ED636
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	bl sub_0204C108
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x10]
	bl sub_0204C108
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0xc]
	bl sub_0204C108
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x68
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed620

	thumb_func_start sub_021ED688
sub_021ED688: ; 0x021ED688
	ldr r1, _021ED690 ; =0x000004ED
	ldrb r0, [r0, r1]
	bx lr
	nop
_021ED690: .word 0x000004ED
	thumb_func_end sub_021ED688

	thumb_func_start sub_021ED694
sub_021ED694: ; 0x021ED694
	ldr r1, _021ED69C ; =0x000004EE
	ldrb r0, [r0, r1]
	bx lr
	nop
_021ED69C: .word 0x000004EE
	thumb_func_end sub_021ED694

	thumb_func_start sub_021ED6A0
sub_021ED6A0: ; 0x021ED6A0
	ldr r2, _021ED6A8 ; =0x000004EE
	strb r1, [r0, r2]
	bx lr
	nop
_021ED6A8: .word 0x000004EE
	thumb_func_end sub_021ED6A0

	thumb_func_start ovy85_21ed6ac
ovy85_21ed6ac: ; 0x021ED6AC
	push {r3, lr}
	mov r1, #0x5b
	str r1, [sp]
	ldr r3, _021ED6C0 ; =0x021EDA58
	mov r1, #0x2a
	mov r2, #1
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_021ED6C0: .word 0x021EDA58
	thumb_func_end ovy85_21ed6ac

	thumb_func_start ovy85_21ed6c4
ovy85_21ed6c4: ; 0x021ED6C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED6D4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED6D4:
	add r3, r5, #0
	mov r2, #0x15
_021ED6D8:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r1]
	add r1, r1, #2
	sub r2, r2, #1
	bne _021ED6D8
	ldr r4, _021ED708 ; =0x000004C2
	add r0, r5, #0
	add r0, #0x2a
	add r1, r5, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, r4
	bl sub_02014FF0
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r5, r0]
	add r4, #0x2b
	sub r0, r0, #1
	strb r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ED708: .word 0x000004C2
	thumb_func_end ovy85_21ed6c4

	thumb_func_start ovy85_21ed70c
ovy85_21ed70c: ; 0x021ED70C
	push {r3, lr}
	ldr r2, _021ED728 ; =0x000004EC
	cmp r1, #0
	ldrb r0, [r0, r2]
	bge _021ED71C
	add r0, r0, r1
	add r0, #0x1e
	b _021ED71E
_021ED71C:
	add r0, r0, r1
_021ED71E:
	mov r1, #0x1e
	blx sub_0208D65C
	add r0, r1, #0
	pop {r3, pc}
	.align 2, 0
_021ED728: .word 0x000004EC
	thumb_func_end ovy85_21ed70c

	thumb_func_start ovy85_21ed72c
ovy85_21ed72c: ; 0x021ED72C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	bl ovy85_21ed70c
	mov r1, #0x2a
	mul r1, r0
	add r3, r5, r1
	mov r2, #0x15
_021ED742:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _021ED742
	ldr r1, _021ED768 ; =0x000004EC
	strb r0, [r5, r1]
	add r0, r1, #1
	ldrb r0, [r5, r0]
	cmp r0, #0x1e
	bhs _021ED764
	add r0, r1, #1
	ldrb r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r5, r0]
_021ED764:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ED768: .word 0x000004EC
	thumb_func_end ovy85_21ed72c

	thumb_func_start ovy85_21ed76c
ovy85_21ed76c: ; 0x021ED76C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	bl ovy85_21ed70c
	mov r1, #0x2a
	mul r1, r0
	add r2, r5, r1
	add r0, r2, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED78C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED78C:
	mov r1, #0x15
_021ED78E:
	ldrh r0, [r2]
	add r2, r2, #2
	strh r0, [r4]
	add r4, r4, #2
	sub r1, r1, #1
	bne _021ED78E
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed76c

	thumb_func_start ovy85_21ed7a0
ovy85_21ed7a0: ; 0x021ED7A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x10]
	add r4, r2, #0
	cmp r0, #0x30
	beq _021ED7BE
	add r0, r1, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02048658
	ldrh r0, [r5, #0x12]
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021ED7BE:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _021ED7C8
	mov r0, #0x30
	pop {r3, r4, r5, pc}
_021ED7C8:
	add r0, r1, #0
	add r1, r5, #0
	add r1, #0x14
	mov r2, #8
	bl sub_02048658
	ldrh r0, [r5, #0x26]
	str r0, [r4]
	ldrh r0, [r5, #0x24]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy85_21ed7a0

	thumb_func_start ovy85_21ed7dc
ovy85_21ed7dc: ; 0x021ED7DC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021ED808
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021ED80C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x28
	add r1, #0x14
	mov r2, #0x14
	blx MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x28
	bl sub_02015178
	ldr r0, [r4, #0x3c]
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	pop {r4, pc}
_021ED808:
	bl sub_02015178
_021ED80C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy85_21ed7dc

	thumb_func_start sub_021ED810
sub_021ED810: ; 0x021ED810
	add r2, r0, #0
	add r2, #0x10
	add r0, r1, #0
	add r1, r2, #0
	ldr r3, _021ED820 ; =sub_02048658
	mov r2, #9
	bx r3
	nop
_021ED820: .word sub_02048658
	thumb_func_end sub_021ED810

	thumb_func_start sub_021ED824
sub_021ED824: ; 0x021ED824
	add r0, #0x24
	ldrb r0, [r0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _021ED834
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1a
	bx lr
_021ED834:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1a
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_021ED824

	thumb_func_start sub_021ED840
sub_021ED840: ; 0x021ED840
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_021ED840

	thumb_func_start sub_021ED84C
sub_021ED84C: ; 0x021ED84C
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_021ED84C

	thumb_func_start sub_021ED858
sub_021ED858: ; 0x021ED858
	add r0, #0x25
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021ED858

	thumb_func_start sub_021ED860
sub_021ED860: ; 0x021ED860
	ldrh r0, [r0, #0x26]
	bx lr
	thumb_func_end sub_021ED860

	thumb_func_start sub_021ED864
sub_021ED864: ; 0x021ED864
	ldrh r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_021ED864

	thumb_func_start ovy85_21ed868
ovy85_21ed868: ; 0x021ED868
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	bl sub_020249D4
	ldr r1, _021ED94C ; =0x00007FFF
	add r2, r6, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0xb
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	add r6, r0, #0
	beq _021ED946
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl sub_02015444
	cmp r0, #6
	bhi _021ED940
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED8AA: ; jump table
	.short _021ED940 - _021ED8AA - 2 ; case 0
	.short _021ED8B8 - _021ED8AA - 2 ; case 1
	.short _021ED8C4 - _021ED8AA - 2 ; case 2
	.short _021ED8D6 - _021ED8AA - 2 ; case 3
	.short _021ED8E2 - _021ED8AA - 2 ; case 4
	.short _021ED906 - _021ED8AA - 2 ; case 5
	.short _021ED936 - _021ED8AA - 2 ; case 6
_021ED8B8:
	ldrh r2, [r4, #0x26]
	add r0, r5, #0
	mov r1, #0
	bl sub_020244C0
	b _021ED940
_021ED8C4:
	ldrh r0, [r4, #0x26]
	bl sub_02018C80
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_02024700
	b _021ED940
_021ED8D6:
	ldrh r2, [r4, #0x26]
	add r0, r5, #0
	mov r1, #0
	bl sub_020244A4
	b _021ED940
_021ED8E2:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021ED810
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r4, #0x24
	ldrb r3, [r4]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0x1e
	add r2, r6, #0
	lsr r3, r3, #0x1f
	bl sub_0202437C
	b _021ED940
_021ED906:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02015018
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r3, r4, #0
	str r0, [sp, #4]
	add r3, #0x24
	ldrb r3, [r3]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0x1e
	add r2, r6, #0
	lsr r3, r3, #0x1f
	bl sub_0202437C
	ldrh r2, [r4, #0x26]
	add r0, r5, #0
	mov r1, #1
	bl sub_0202472C
	b _021ED940
_021ED936:
	ldrh r2, [r4, #0x26]
	add r0, r5, #0
	mov r1, #0
	bl sub_020243D0
_021ED940:
	add r0, r6, #0
	bl GFL_StrBufFree
_021ED946:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021ED94C: .word 0x00007FFF
	thumb_func_end ovy85_21ed868
_021ED950:
	.byte 0x60, 0x3C, 0xA0, 0x18, 0xD1, 0x00, 0x00, 0x00, 0xDA, 0x00, 0x00, 0x00, 0x44, 0x08, 0x4A, 0x08
	.byte 0x4B, 0x08, 0x4C, 0x08, 0x02, 0x03, 0x06, 0x05, 0x04, 0x05, 0x02, 0x00, 0x01, 0x03, 0x06, 0x05
	.byte 0x04, 0x07, 0x07, 0x00, 0xA4, 0xAC, 0x00, 0xC4, 0xAC, 0x00, 0xE4, 0xAC, 0x00, 0x10, 0xAC, 0x00
	.byte 0x58, 0xAC, 0x01, 0x70, 0xAC, 0x02, 0x00, 0x00, 0xA4, 0xAC, 0xC4, 0xAC, 0xE4, 0xAC, 0x10, 0xAC
	.byte 0x58, 0xAC, 0x70, 0xAC, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x31, 0x00, 0x01, 0x00, 0x41, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x73, 0x65
	.byte 0x74, 0x75, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x66, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E
	.byte 0x5F, 0x6C, 0x6F, 0x67, 0x5F, 0x61, 0x63, 0x63, 0x65, 0x73, 0x73, 0x6F, 0x72, 0x5F, 0x66, 0x76
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021ED950
