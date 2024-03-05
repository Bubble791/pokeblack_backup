	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207D064
sub_0207D064: ; 0x0207D064
	ldr r3, _0207D06C ; =sub_0207D094
	mov r0, #0x10
	bx r3
	nop
_0207D06C: .word sub_0207D094
	thumb_func_end sub_0207D064

	thumb_func_start sub_0207D070
sub_0207D070: ; 0x0207D070
	ldr r3, _0207D078 ; =sub_0207D094
	mov r0, #0x11
	bx r3
	nop
_0207D078: .word sub_0207D094
	thumb_func_end sub_0207D070

	thumb_func_start sub_0207D07C
sub_0207D07C: ; 0x0207D07C
	ldr r3, _0207D084 ; =sub_0207D094
	mov r0, #0x12
	bx r3
	nop
_0207D084: .word sub_0207D094
	thumb_func_end sub_0207D07C
_0207D088:
	.byte 0x01, 0x4B, 0x27, 0x20, 0x18, 0x47, 0xC0, 0x46
	.byte 0x95, 0xD0, 0x07, 0x02

	thumb_func_start sub_0207D094
sub_0207D094: ; 0x0207D094
	push {r4, lr}
	add r1, r0, #0
	lsl r2, r1, #8
	mov r1, #0x7f
	lsl r1, r1, #8
	and r1, r2
	mov r0, #5
	mov r2, #0
	mov r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207D0B0
	mov r4, #1
_0207D0B0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0207D094

	thumb_func_start sub_0207D0B4
sub_0207D0B4: ; 0x0207D0B4
	push {r3, r4}
	ldr r2, [r0]
	cmp r2, #0x64
	bhs _0207D0DE
	ldr r1, [r0, #4]
	cmp r1, #1
	blo _0207D0DE
	cmp r1, #0xc
	bhi _0207D0DE
	ldr r3, [r0, #8]
	cmp r3, #1
	blo _0207D0DE
	cmp r3, #0x1f
	bhi _0207D0DE
	ldr r0, [r0, #0xc]
	cmp r0, #7
	bge _0207D0DE
	cmp r1, #1
	blo _0207D0DE
	cmp r1, #0xc
	bls _0207D0E6
_0207D0DE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_0207D0E6:
	ldr r0, _0207D10C ; =0x0209B758
	sub r4, r3, #1
	lsl r3, r1, #2
	ldr r0, [r0, r3]
	add r3, r4, r0
	cmp r1, #3
	blo _0207D0FC
	mov r0, #3
	tst r0, r2
	bne _0207D0FC
	add r3, r3, #1
_0207D0FC:
	ldr r0, _0207D110 ; =0x0000016D
	mul r0, r2
	add r1, r3, r0
	add r0, r2, #3
	lsr r0, r0, #2
	add r0, r1, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
_0207D10C: .word 0x0209B758
_0207D110: .word 0x0000016D
	thumb_func_end sub_0207D0B4

	thumb_func_start sub_0207D114
sub_0207D114: ; 0x0207D114
	push {r3, r4}
	ldr r1, [r0]
	ldr r4, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, #0x3c
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207D114

	thumb_func_start sub_0207D12C
sub_0207D12C: ; 0x0207D12C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_0207D0B4
	mov r5, #0
	add r6, r0, #0
	mvn r5, r5
	cmp r6, r5
	bne _0207D144
	add r0, r5, #0
	add r1, r5, #0
	pop {r4, r5, r6, pc}
_0207D144:
	add r0, r4, #0
	bl sub_0207D114
	add r4, r0, #0
	cmp r4, r5
	bne _0207D154
	add r2, r5, #0
	b _0207D166
_0207D154:
	ldr r2, _0207D16C ; =0x00015180
	asr r1, r6, #0x1f
	add r0, r6, #0
	mov r3, #0
	blx sub_0208D60C
	asr r2, r4, #0x1f
	add r5, r4, r0
	adc r2, r1
_0207D166:
	add r0, r5, #0
	add r1, r2, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D16C: .word 0x00015180
	thumb_func_end sub_0207D12C

	thumb_func_start sub_0207D170
sub_0207D170: ; 0x0207D170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207D17A
	mov r4, #0
_0207D17A:
	ldr r0, _0207D1F8 ; =0x00008EAC
	cmp r4, r0
	ble _0207D182
	add r4, r0, #0
_0207D182:
	add r0, r4, #6
	mov r1, #7
	blx sub_0208D65C
	str r1, [r5, #0xc]
	ldr r1, _0207D1FC ; =0x0000016D
	mov r3, #0
	mov r0, #3
_0207D192:
	add r2, r3, #0
	add r6, r4, #0
	tst r2, r0
	bne _0207D19E
	add r2, r1, #1
	b _0207D1A0
_0207D19E:
	add r2, r1, #0
_0207D1A0:
	sub r4, r4, r2
	bpl _0207D1A8
	add r4, r6, #0
	b _0207D1AE
_0207D1A8:
	add r3, r3, #1
	cmp r3, #0x63
	blo _0207D192
_0207D1AE:
	ldr r0, _0207D1FC ; =0x0000016D
	cmp r4, r0
	ble _0207D1B6
	add r4, r0, #0
_0207D1B6:
	mov r0, #3
	str r3, [r5]
	tst r0, r3
	bne _0207D1D8
	cmp r4, #0x3c
	bge _0207D1D6
	cmp r4, #0x1f
	bge _0207D1CA
	mov r0, #1
	b _0207D1CE
_0207D1CA:
	mov r0, #2
	sub r4, #0x1f
_0207D1CE:
	str r0, [r5, #4]
	add r0, r4, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_0207D1D6:
	sub r4, r4, #1
_0207D1D8:
	ldr r1, _0207D200 ; =0x0209B75C
	mov r3, #0xb
_0207D1DC:
	lsl r2, r3, #2
	ldr r0, [r1, r2]
	cmp r4, r0
	blt _0207D1F2
	add r0, r3, #1
	str r0, [r5, #4]
	ldr r0, [r1, r2]
	sub r0, r4, r0
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_0207D1F2:
	sub r3, r3, #1
	bpl _0207D1DC
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D1F8: .word 0x00008EAC
_0207D1FC: .word 0x0000016D
_0207D200: .word 0x0209B75C
	thumb_func_end sub_0207D170

	thumb_func_start sub_0207D204
sub_0207D204: ; 0x0207D204
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207D20E
	mov r4, #0
_0207D20E:
	ldr r0, _0207D240 ; =0x0001517F
	cmp r4, r0
	ble _0207D216
	add r4, r0, #0
_0207D216:
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [r5, #8]
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	add r4, r0, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [r5, #4]
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_0207D240: .word 0x0001517F
	thumb_func_end sub_0207D204

	thumb_func_start sub_0207D244
sub_0207D244: ; 0x0207D244
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	mov r1, #0
	add r5, r3, #0
	mov r0, #0
	sub r1, r4, r1
	mov ip, r5
	mov r1, ip
	sbc r1, r0
	bge _0207D260
	mov r4, #0
	b _0207D26C
_0207D260:
	mov r1, #0
	ldr r0, _0207D298 ; =0xBC19137F
	sub r0, r0, r4
	sbc r1, r5
	bge _0207D26E
	ldr r4, _0207D298 ; =0xBC19137F
_0207D26C:
	mov r5, #0
_0207D26E:
	ldr r2, _0207D29C ; =0x00015180
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	blx sub_0208D404
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0207D204
	ldr r2, _0207D29C ; =0x00015180
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	blx sub_0208D414
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0207D170
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207D298: .word 0xBC19137F
_0207D29C: .word 0x00015180
	thumb_func_end sub_0207D244
_0207D2A0:
	.byte 0xF8, 0xB5, 0x7D, 0x21, 0x02, 0x68, 0x09, 0x01, 0x55, 0x18, 0x41, 0x68, 0x87, 0x68, 0x8C, 0x1E
	.byte 0x01, 0x2C, 0x01, 0xDA, 0x0C, 0x34, 0x6D, 0x1E, 0x28, 0x1C, 0x64, 0x21, 0x10, 0xF0, 0xCE, 0xE9
	.byte 0x06, 0x1C, 0x28, 0x1C, 0x64, 0x21, 0x10, 0xF0, 0xCA, 0xE9, 0x1A, 0x20, 0x60, 0x43, 0x0D, 0x1C
	.byte 0x80, 0x1E, 0x0A, 0x21, 0x10, 0xF0, 0xC2, 0xE9, 0x71, 0x10, 0x89, 0x0F, 0x71, 0x18, 0x8A, 0x10
	.byte 0x69, 0x10, 0x89, 0x0F, 0x69, 0x18, 0x38, 0x18, 0x89, 0x10, 0x28, 0x18, 0x08, 0x18, 0x11, 0x18
	.byte 0xB0, 0x00, 0x30, 0x18, 0x08, 0x18, 0x07, 0x21, 0x10, 0xF0, 0xB0, 0xE9, 0x08, 0x1C, 0xF8, 0xBD

	thumb_func_start sub_0207D300
sub_0207D300: ; 0x0207D300
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0
	mov r0, #1
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D300

	thumb_func_start sub_0207D314
sub_0207D314: ; 0x0207D314
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #2
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D314

	thumb_func_start sub_0207D330
sub_0207D330: ; 0x0207D330
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0
	mov r0, #3
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D330

	thumb_func_start sub_0207D344
sub_0207D344: ; 0x0207D344
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #4
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D344

	thumb_func_start sub_0207D35C
sub_0207D35C: ; 0x0207D35C
	push {r3, lr}
	add r2, r1, #0
	mov r1, #0x1a
	mov r3, #2
	bl sub_0207D60C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D35C

	thumb_func_start sub_0207D36C
sub_0207D36C: ; 0x0207D36C
	push {r3, lr}
	add r2, r1, #0
	mov r1, #6
	mov r3, #2
	bl sub_0207D60C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D36C

	thumb_func_start sub_0207D37C
sub_0207D37C: ; 0x0207D37C
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	mov r3, #1
	bl sub_0207D60C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D37C

	thumb_func_start sub_0207D38C
sub_0207D38C: ; 0x0207D38C
	push {r3, lr}
	add r3, r2, #0
	mov r2, #2
	str r2, [sp]
	mov r2, #0xa
	bl sub_0207D628
	pop {r3, pc}
	thumb_func_end sub_0207D38C

	thumb_func_start sub_0207D39C
sub_0207D39C: ; 0x0207D39C
	push {r3, lr}
	add r3, r2, #0
	mov r2, #2
	str r2, [sp]
	mov r2, #0xc
	bl sub_0207D628
	pop {r3, pc}
	thumb_func_end sub_0207D39C

	thumb_func_start sub_0207D3AC
sub_0207D3AC: ; 0x0207D3AC
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r2, #9
	bl sub_0207D628
	pop {r3, pc}
	thumb_func_end sub_0207D3AC

	thumb_func_start sub_0207D3BC
sub_0207D3BC: ; 0x0207D3BC
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r2, #0x1a
	bl sub_0207D628
	pop {r3, pc}
	thumb_func_end sub_0207D3BC

	thumb_func_start sub_0207D3CC
sub_0207D3CC: ; 0x0207D3CC
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r2, #0x19
	bl sub_0207D628
	pop {r3, pc}
	thumb_func_end sub_0207D3CC

	thumb_func_start sub_0207D3DC
sub_0207D3DC: ; 0x0207D3DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r3, r2, #0
	str r0, [sp]
	mov r0, #9
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0207D648
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207D3DC

	thumb_func_start sub_0207D3F4
sub_0207D3F4: ; 0x0207D3F4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #0xc
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D3F4

	thumb_func_start sub_0207D410
sub_0207D410: ; 0x0207D410
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	add r5, r7, #0
	mov r4, #0
	mov r6, #1
	b _0207D434
_0207D424:
	add r0, r5, #0
	tst r0, r6
	beq _0207D430
	add r0, r4, #0
	bl sub_0207DB58
_0207D430:
	add r4, r4, #1
	lsr r5, r5, #1
_0207D434:
	cmp r4, #8
	bge _0207D43C
	cmp r5, #0
	bne _0207D424
_0207D43C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r2, [sp, #8]
	mov r0, #0xd
	add r3, r7, #0
	bl sub_0207D648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207D410

	thumb_func_start sub_0207D450
sub_0207D450: ; 0x0207D450
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, [sp, #0x18]
	add r5, r0, #0
	add r1, r3, #0
	bl sub_0207DB6C
	str r0, [sp]
	mov r0, #0x12
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D450

	thumb_func_start sub_0207D474
sub_0207D474: ; 0x0207D474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #3
	cmp r2, #0
	bne _0207D482
	mov r3, #0
_0207D482:
	mov r0, #0
	str r0, [sp]
	mov r0, #8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0207D648
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207D474

	thumb_func_start sub_0207D494
sub_0207D494: ; 0x0207D494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r3, r2, #0
	str r0, [sp]
	mov r0, #8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0207D648
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207D494

	thumb_func_start sub_0207D4AC
sub_0207D4AC: ; 0x0207D4AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x1a
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D4AC

	thumb_func_start sub_0207D4C4
sub_0207D4C4: ; 0x0207D4C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x1b
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D4C4

	thumb_func_start sub_0207D4DC
sub_0207D4DC: ; 0x0207D4DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x13
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D4DC

	thumb_func_start sub_0207D4F4
sub_0207D4F4: ; 0x0207D4F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r3, r2, #0
	str r0, [sp]
	mov r0, #0x14
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0207D648
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207D4F4

	thumb_func_start sub_0207D50C
sub_0207D50C: ; 0x0207D50C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x15
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D50C

	thumb_func_start sub_0207D524
sub_0207D524: ; 0x0207D524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	lsl r3, r3, #0x1a
	lsl r1, r1, #0x18
	orr r1, r3
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x20]
	orr r0, r4
	lsl r1, r1, #0x10
	str r0, [sp]
	ldr r4, [sp, #0x18]
	orr r1, r5
	lsl r5, r4, #0x18
	ldr r4, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	lsl r4, r4, #0x16
	orr r4, r5
	mov r0, #0xe
	orr r3, r4
	bl sub_0207D648
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207D524

	thumb_func_start sub_0207D558
sub_0207D558: ; 0x0207D558
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x1e
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D558

	thumb_func_start sub_0207D570
sub_0207D570: ; 0x0207D570
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x1f
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D570

	thumb_func_start sub_0207D588
sub_0207D588: ; 0x0207D588
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	mov r0, #0x20
	add r1, r4, #0
	str r3, [sp]
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207D588

	thumb_func_start sub_0207D5A0
sub_0207D5A0: ; 0x0207D5A0
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0
	mov r0, #0x17
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D5A0

	thumb_func_start sub_0207D5B4
sub_0207D5B4: ; 0x0207D5B4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #0x19
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D5B4

	thumb_func_start sub_0207D5D0
sub_0207D5D0: ; 0x0207D5D0
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0
	mov r0, #0x18
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D5D0

	thumb_func_start sub_0207D5E4
sub_0207D5E4: ; 0x0207D5E4
	push {r3, lr}
	mov r1, #0x18
	mov r2, #0
	mov r0, #0x18
	sub r1, #0x19
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	thumb_func_end sub_0207D5E4

	thumb_func_start sub_0207D5F8
sub_0207D5F8: ; 0x0207D5F8
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0
	mov r0, #0x21
	mov r3, #0
	str r2, [sp]
	bl sub_0207D648
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207D5F8

	thumb_func_start sub_0207D60C
sub_0207D60C: ; 0x0207D60C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #6
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D60C

	thumb_func_start sub_0207D628
sub_0207D628: ; 0x0207D628
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	add r6, r0, #0
	add r4, r2, #0
	lsl r1, r1, #0x18
	str r3, [sp]
	mov r0, #7
	orr r1, r6
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D648
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0207D628

	thumb_func_start sub_0207D648
sub_0207D648: ; 0x0207D648
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0207D7DC
	cmp r0, #0
	beq _0207D66C
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r6, [r0, #0xc]
	ldr r1, [sp, #0x18]
	str r7, [r0, #0x10]
	str r1, [r0, #0x14]
	bl sub_0207D83C
_0207D66C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207D648

	thumb_func_start sub_0207D670
sub_0207D670: ; 0x0207D670
	push {r3, lr}
	ldr r0, _0207D690 ; =0x0214C690
	ldr r1, [r0]
	cmp r1, #0
	bne _0207D68C
	mov r1, #1
	str r1, [r0]
	ldr r0, _0207D694 ; =0x0214C694
	bl sub_0207AE4C
	bl sub_0207D6B8
	bl sub_0207DB34
_0207D68C:
	pop {r3, pc}
	nop
_0207D690: .word 0x0214C690
_0207D694: .word 0x0214C694
	thumb_func_end sub_0207D670

	thumb_func_start sub_0207D698
sub_0207D698: ; 0x0207D698
	ldr r0, _0207D6A0 ; =0x0214C694
	ldr r3, _0207D6A4 ; =sub_0207AE68
	bx r3
	nop
_0207D6A0: .word 0x0214C694
_0207D6A4: .word sub_0207AE68
	thumb_func_end sub_0207D698

	thumb_func_start sub_0207D6A8
sub_0207D6A8: ; 0x0207D6A8
	ldr r0, _0207D6B0 ; =0x0214C694
	ldr r3, _0207D6B4 ; =sub_0207AEA4
	bx r3
	nop
_0207D6B0: .word 0x0214C694
_0207D6B4: .word sub_0207AEA4
	thumb_func_end sub_0207D6A8

	thumb_func_start sub_0207D6B8
sub_0207D6B8: ; 0x0207D6B8
	push {r4, r5, r6, lr}
	bl sub_0207DA84
	ldr r0, _0207D724 ; =0x0214C980
	ldr r1, _0207D728 ; =0x0214C6AC
	mov r2, #0x18
	str r0, [r1]
	mov r1, #0
	mov r3, #0x18
	b _0207D6DC
_0207D6CC:
	add r5, r1, #1
	add r4, r5, #0
	mul r4, r2
	add r6, r0, r4
	add r4, r1, #0
	mul r4, r3
	str r6, [r0, r4]
	add r1, r5, #0
_0207D6DC:
	cmp r1, #0xff
	blt _0207D6CC
	ldr r0, _0207D72C ; =0x0214E100
	mov r2, #0
	str r2, [r0, #0x68]
	ldr r1, _0207D730 ; =0x0214E168
	ldr r0, _0207D728 ; =0x0214C6AC
	mov r4, #1
	str r1, [r0, #0x10]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r4, [r0, #0x20]
	str r2, [r0, #4]
	ldr r0, _0207D734 ; =0x0214C700
	ldr r5, _0207D738 ; =0x0214E1E0
	str r0, [r5]
	bl sub_0207DCDC
	mov r0, #1
	bl sub_0207D7DC
	cmp r0, #0
	beq _0207D722
	mov r1, #0x1d
	str r1, [r0, #4]
	ldr r1, [r5]
	str r1, [r0, #8]
	bl sub_0207D83C
	add r0, r4, #0
	bl sub_0207D864
_0207D722:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D724: .word 0x0214C980
_0207D728: .word 0x0214C6AC
_0207D72C: .word 0x0214E100
_0207D730: .word 0x0214E168
_0207D734: .word 0x0214C700
_0207D738: .word 0x0214E1E0
	thumb_func_end sub_0207D6B8

	thumb_func_start sub_0207D73C
sub_0207D73C: ; 0x0207D73C
	push {r4, r5, r6, lr}
	ldr r4, _0207D7D4 ; =0x0214C6AC
	add r6, r0, #0
	blx OS_DisableInterrupts
	add r5, r0, #0
	mov r0, #1
	tst r0, r6
	beq _0207D778
	bl sub_0207DCC4
	ldr r1, [r4, #4]
	cmp r1, r0
	bne _0207D78C
	mov r6, #0x32
_0207D75A:
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	blx OS_DisableInterrupts
	add r5, r0, #0
	bl sub_0207DCC4
	ldr r1, [r4, #4]
	cmp r1, r0
	beq _0207D75A
	b _0207D78C
_0207D778:
	bl sub_0207DCC4
	ldr r1, [r4, #4]
	cmp r1, r0
	bne _0207D78C
	add r0, r5, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207D78C:
	ldr r1, [r4, #0x14]
	ldr r0, _0207D7D8 ; =0x0214C6D0
	lsl r2, r1, #2
	ldr r6, [r0, r2]
	add r0, r1, #1
	str r0, [r4, #0x14]
	cmp r0, #8
	ble _0207D7A0
	mov r0, #0
	str r0, [r4, #0x14]
_0207D7A0:
	ldr r0, [r6]
	add r1, r6, #0
	cmp r0, #0
	beq _0207D7B0
_0207D7A8:
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _0207D7A8
_0207D7B0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0207D7BA
	str r6, [r0]
	b _0207D7BC
_0207D7BA:
	str r6, [r4]
_0207D7BC:
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D7D4: .word 0x0214C6AC
_0207D7D8: .word 0x0214C6D0
	thumb_func_end sub_0207D73C

	thumb_func_start sub_0207D7DC
sub_0207D7DC: ; 0x0207D7DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0207DB08
	cmp r0, #0
	bne _0207D7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207D7EC:
	bl sub_0207DAD8
	cmp r0, #0
	bne _0207D838
	mov r4, #1
	add r0, r5, #0
	tst r0, r4
	bne _0207D800
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207D800:
	bl sub_0207DA54
	cmp r0, #0
	ble _0207D81E
	mov r4, #0
_0207D80A:
	add r0, r4, #0
	bl sub_0207D73C
	cmp r0, #0
	bne _0207D80A
	bl sub_0207DAD8
	cmp r0, #0
	beq _0207D824
	pop {r3, r4, r5, pc}
_0207D81E:
	add r0, r4, #0
	bl sub_0207D864
_0207D824:
	bl sub_0207DAC0
	mov r4, #1
_0207D82A:
	add r0, r4, #0
	bl sub_0207D73C
	bl sub_0207DAD8
	cmp r0, #0
	beq _0207D82A
_0207D838:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207D7DC

	thumb_func_start sub_0207D83C
sub_0207D83C: ; 0x0207D83C
	push {r4, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, _0207D860 ; =0x0214C6AC
	ldr r2, [r1, #0xc]
	cmp r2, #0
	bne _0207D850
	str r4, [r1, #8]
	b _0207D852
_0207D850:
	str r4, [r2]
_0207D852:
	str r4, [r1, #0xc]
	mov r1, #0
	str r1, [r4]
	blx OS_RestoreInterrupts
	pop {r4, pc}
	nop
_0207D860: .word 0x0214C6AC
	thumb_func_end sub_0207D83C

	thumb_func_start sub_0207D864
sub_0207D864: ; 0x0207D864
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	blx OS_DisableInterrupts
	ldr r4, _0207D960 ; =0x0214C6AC
	add r5, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _0207D87E
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207D87E:
	ldr r1, [r4, #0x1c]
	cmp r1, #8
	blt _0207D8B2
	ldr r1, [sp]
	mov r2, #1
	tst r1, r2
	bne _0207D894
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207D894:
	add r6, r2, #0
_0207D896:
	add r0, r6, #0
	bl sub_0207D73C
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _0207D896
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0207D8B2
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207D8B2:
	mov r1, #6
	ldr r0, _0207D964 ; =0x0214C980
	lsl r1, r1, #0xa
	blx sub_0207B0AC
	ldr r1, [r4, #8]
	mov r0, #7
	mov r2, #0
	mov r6, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207D922
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	bne _0207D8DE
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207D8DE:
	mov r7, #7
	b _0207D90E
_0207D8E2:
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	bl sub_0207D73C
	blx OS_DisableInterrupts
	add r5, r0, #0
	mov r1, #6
	ldr r0, _0207D964 ; =0x0214C980
	lsl r1, r1, #0xa
	blx sub_0207B0AC
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0207D90E
	add r0, r5, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207D90E:
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _0207D8E2
	ldr r1, [r4, #8]
	add r0, r7, #0
	mov r2, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207D8E2
_0207D922:
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #8]
	ldr r0, _0207D968 ; =0x0214C6D0
	lsl r2, r1, #2
	str r3, [r0, r2]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r0, #8
	ble _0207D938
	mov r0, #0
	str r0, [r4, #0x18]
_0207D938:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	blx OS_RestoreInterrupts
	ldr r0, [sp]
	mov r1, #2
	tst r0, r1
	beq _0207D95C
	bl sub_0207DAC0
_0207D95C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207D960: .word 0x0214C6AC
_0207D964: .word 0x0214C980
_0207D968: .word 0x0214C6D0
	thumb_func_end sub_0207D864

	thumb_func_start sub_0207D96C
sub_0207D96C: ; 0x0207D96C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0207D9D0
	cmp r0, #0
	bne _0207D9AE
	mov r5, #0
_0207D97A:
	add r0, r5, #0
	bl sub_0207D73C
	cmp r0, #0
	bne _0207D97A
	add r0, r4, #0
	bl sub_0207D9D0
	cmp r0, #0
	bne _0207D9AE
	bl sub_0207DAC0
	add r0, r4, #0
	bl sub_0207D9D0
	cmp r0, #0
	bne _0207D9AE
	mov r5, #1
_0207D99E:
	add r0, r5, #0
	bl sub_0207D73C
	add r0, r4, #0
	bl sub_0207D9D0
	cmp r0, #0
	beq _0207D99E
_0207D9AE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207D96C

	thumb_func_start sub_0207D9B0
sub_0207D9B0: ; 0x0207D9B0
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _0207D9CC ; =0x0214C6AC
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _0207D9C2
	ldr r4, [r1, #4]
	b _0207D9C4
_0207D9C2:
	ldr r4, [r1, #0x20]
_0207D9C4:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0207D9CC: .word 0x0214C6AC
	thumb_func_end sub_0207D9B0

	thumb_func_start sub_0207D9D0
sub_0207D9D0: ; 0x0207D9D0
	push {r4, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, _0207DA08 ; =0x0214C6AC
	ldr r1, [r1, #4]
	cmp r4, r1
	bls _0207D9F0
	sub r2, r4, r1
	mov r1, #2
	lsl r1, r1, #0x1e
	cmp r2, r1
	bhs _0207D9EC
	b _0207D9FC
_0207D9EC:
	mov r4, #1
	b _0207D9FE
_0207D9F0:
	sub r2, r1, r4
	mov r1, #2
	lsl r1, r1, #0x1e
	mov r4, #1
	cmp r2, r1
	blo _0207D9FE
_0207D9FC:
	mov r4, #0
_0207D9FE:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207DA08: .word 0x0214C6AC
	thumb_func_end sub_0207D9D0

	thumb_func_start sub_0207DA0C
sub_0207DA0C: ; 0x0207DA0C
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _0207DA2C ; =0x0214C6AC
	mov r4, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _0207DA24
_0207DA1C:
	ldr r1, [r1]
	add r4, r4, #1
	cmp r1, #0
	bne _0207DA1C
_0207DA24:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0207DA2C: .word 0x0214C6AC
	thumb_func_end sub_0207DA0C

	thumb_func_start sub_0207DA30
sub_0207DA30: ; 0x0207DA30
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _0207DA50 ; =0x0214C6AC
	mov r4, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0207DA48
_0207DA40:
	ldr r1, [r1]
	add r4, r4, #1
	cmp r1, #0
	bne _0207DA40
_0207DA48:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0207DA50: .word 0x0214C6AC
	thumb_func_end sub_0207DA30

	thumb_func_start sub_0207DA54
sub_0207DA54: ; 0x0207DA54
	push {r4, lr}
	bl sub_0207DA0C
	add r4, r0, #0
	bl sub_0207DA30
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r1, r4
	sub r0, r1, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0207DA54
_0207DA6C:
	.byte 0x38, 0xB5, 0x0D, 0x1C
	.byte 0xFE, 0xF7, 0x38, 0xEB, 0x04, 0x1C, 0x28, 0x1C, 0x00, 0xF0, 0x88, 0xF8, 0x20, 0x1C, 0xFE, 0xF7
	.byte 0x3C, 0xEB, 0x38, 0xBD

	thumb_func_start sub_0207DA84
sub_0207DA84: ; 0x0207DA84
	push {r4, r5, r6, lr}
	ldr r1, _0207DABC ; =0x0207DA6D
	mov r0, #7
	mov r4, #7
	bl PXI_SetFifoRecvCallback
	bl sub_0207DB08
	cmp r0, #0
	beq _0207DABA
	add r0, r4, #0
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _0207DABA
	mov r5, #0x32
	mov r6, #1
_0207DAA8:
	add r0, r5, #0
	bl OS_SpinWaitSysCycles
	add r0, r4, #0
	add r1, r6, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0207DAA8
_0207DABA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207DABC: .word 0x0207DA6D
	thumb_func_end sub_0207DA84

	thumb_func_start sub_0207DAC0
sub_0207DAC0: ; 0x0207DAC0
	push {r3, r4, r5, lr}
	mov r5, #7
	mov r4, #0
_0207DAC6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207DAC6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207DAC0

	thumb_func_start sub_0207DAD8
sub_0207DAD8: ; 0x0207DAD8
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _0207DB04 ; =0x0214C6AC
	ldr r4, [r1]
	cmp r4, #0
	bne _0207DAEE
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_0207DAEE:
	ldr r2, [r4]
	str r2, [r1]
	cmp r2, #0
	bne _0207DAFA
	mov r2, #0
	str r2, [r1, #0x10]
_0207DAFA:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207DB04: .word 0x0214C6AC
	thumb_func_end sub_0207DAD8

	thumb_func_start sub_0207DB08
sub_0207DB08: ; 0x0207DB08
	push {r4, lr}
	bl sub_0207AC74
	cmp r0, #0
	bne _0207DB16
	mov r0, #1
	pop {r4, pc}
_0207DB16:
	blx OS_DisableInterrupts
	ldr r1, _0207DB30 ; =0x04FFF200
	mov r2, #0x10
	str r2, [r1]
	ldr r4, [r1]
	blx OS_RestoreInterrupts
	mov r0, #1
	cmp r4, #0
	bne _0207DB2E
	mov r0, #0
_0207DB2E:
	pop {r4, pc}
	.align 2, 0
_0207DB30: .word 0x04FFF200
	thumb_func_end sub_0207DB08

	thumb_func_start sub_0207DB34
sub_0207DB34: ; 0x0207DB34
	push {r4, r5}
	mov r5, #0
	ldr r3, _0207DB54 ; =0x0214E180
	add r1, r5, #0
	mov r0, #0xc
_0207DB3E:
	add r2, r5, #0
	mul r2, r0
	add r4, r3, r2
	str r1, [r3, r2]
	str r1, [r4, #4]
	add r5, r5, #1
	strb r1, [r4, #8]
	cmp r5, #8
	blt _0207DB3E
	pop {r4, r5}
	bx lr
	.align 2, 0
_0207DB54: .word 0x0214E180
	thumb_func_end sub_0207DB34

	thumb_func_start sub_0207DB58
sub_0207DB58: ; 0x0207DB58
	mov r1, #0xc
	ldr r2, _0207DB68 ; =0x0214E180
	mul r1, r0
	add r1, r2, r1
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	bx lr
	.align 2, 0
_0207DB68: .word 0x0214E180
	thumb_func_end sub_0207DB58

	thumb_func_start sub_0207DB6C
sub_0207DB6C: ; 0x0207DB6C
	push {r4, r5}
	mov r3, #0xc
	ldr r4, _0207DB88 ; =0x0214E180
	mul r3, r0
	add r5, r4, r3
	str r1, [r4, r3]
	str r2, [r5, #4]
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	pop {r4, r5}
	bx lr
	nop
_0207DB88: .word 0x0214E180
	thumb_func_end sub_0207DB6C
_0207DB8C:
	.byte 0x08, 0xB5, 0x01, 0x06
	.byte 0x0A, 0x0E, 0x0C, 0x21, 0x00, 0x12, 0x07, 0x4B, 0x51, 0x43, 0x5A, 0x18, 0x00, 0x06, 0x01, 0x0E
	.byte 0x10, 0x7A, 0x81, 0x42, 0x04, 0xD1, 0x11, 0x68, 0x00, 0x29, 0x01, 0xD0, 0x50, 0x68, 0x88, 0x47
	.byte 0x08, 0xBD, 0xC0, 0x46, 0x80, 0xE1, 0x14, 0x02

	thumb_func_start sub_0207DBB8
sub_0207DBB8: ; 0x0207DBB8
	push {r4, lr}
	ldr r4, _0207DBCC ; =0x0214E1E0
	mov r1, #4
	ldr r0, [r4]
	add r0, r0, #4
	blx sub_0207B074
	ldr r0, [r4]
	ldr r0, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_0207DBCC: .word 0x0214E1E0
	thumb_func_end sub_0207DBB8

	thumb_func_start sub_0207DBD0
sub_0207DBD0: ; 0x0207DBD0
	push {r4, lr}
	ldr r4, _0207DBE4 ; =0x0214E1E0
	mov r1, #2
	ldr r0, [r4]
	add r0, #8
	blx sub_0207B074
	ldr r0, [r4]
	ldrh r0, [r0, #8]
	pop {r4, pc}
	.align 2, 0
_0207DBE4: .word 0x0214E1E0
	thumb_func_end sub_0207DBD0

	thumb_func_start sub_0207DBE8
sub_0207DBE8: ; 0x0207DBE8
	push {r3, r4, r5, lr}
	ldr r5, _0207DC08 ; =0x0214E1E0
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0x24
	mul r4, r1
	add r0, #0x40
	add r0, r0, r4
	mov r1, #4
	blx sub_0207B074
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #0x40]
	pop {r3, r4, r5, pc}
	nop
_0207DC08: .word 0x0214E1E0
	thumb_func_end sub_0207DBE8

	thumb_func_start sub_0207DC0C
sub_0207DC0C: ; 0x0207DC0C
	push {r4, r5, r6, r7}
	add r4, r3, #0
	cmp r1, #0
	blt _0207DC18
	cmp r1, #0xf
	ble _0207DC1E
_0207DC18:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207DC1E:
	cmp r2, #0
	blt _0207DC26
	cmp r2, #0xf
	ble _0207DC2C
_0207DC26:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207DC2C:
	mov r3, #0x24
	mul r3, r1
	add r1, r0, r3
	add r2, r1, r2
	ldr r1, _0207DCC0 ; =0x00000548
	ldrb r3, [r2, r1]
	cmp r3, #0xff
	bne _0207DC42
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207DC42:
	mov r1, #0x1e
	lsl r1, r1, #6
	add r2, r0, r1
	lsl r1, r3, #6
	add r1, r2, r1
	ldrh r2, [r1, #2]
	strh r2, [r4]
	ldrb r2, [r1, #4]
	strb r2, [r4, #2]
	ldrb r2, [r1, #5]
	strb r2, [r4, #3]
	mov r2, #6
	ldrsb r2, [r1, r2]
	strb r2, [r4, #4]
	ldrb r2, [r1, #7]
	strb r2, [r4, #5]
	mov r2, #8
	ldrsb r2, [r1, r2]
	add r2, #0x40
	strb r2, [r4, #6]
	mov r2, #0x13
	ldrsb r2, [r1, r2]
	strb r2, [r4, #7]
	mov r2, #0x47
	lsl r2, r2, #6
	ldr r1, [r1, #0x3c]
	ldr r2, [r0, r2]
	cmp r1, #0
	bne _0207DC80
	mov r3, #0
	b _0207DC84
_0207DC80:
	sub r1, r1, r2
	add r3, r0, r1
_0207DC84:
	mov r1, #0
	strb r1, [r4, #9]
	cmp r3, #0
	beq _0207DCB8
	add r6, r1, #0
	add r1, r4, #0
	mov r5, #0x47
	add r1, #9
	lsl r5, r5, #6
_0207DC96:
	ldrb r7, [r4, #9]
	ldrb r2, [r3]
	add r7, r4, r7
	strb r2, [r7, #0xa]
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
	ldr r2, [r3, #0x50]
	ldr r7, [r0, r5]
	cmp r2, #0
	bne _0207DCB0
	add r3, r6, #0
	b _0207DCB4
_0207DCB0:
	sub r2, r2, r7
	add r3, r0, r2
_0207DCB4:
	cmp r3, #0
	bne _0207DC96
_0207DCB8:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0207DCC0: .word 0x00000548
	thumb_func_end sub_0207DC0C

	thumb_func_start sub_0207DCC4
sub_0207DCC4: ; 0x0207DCC4
	push {r4, lr}
	ldr r4, _0207DCD8 ; =0x0214E1E0
	mov r1, #4
	ldr r0, [r4]
	blx sub_0207B074
	ldr r0, [r4]
	ldr r0, [r0]
	pop {r4, pc}
	nop
_0207DCD8: .word 0x0214E1E0
	thumb_func_end sub_0207DCC4

	thumb_func_start sub_0207DCDC
sub_0207DCDC: ; 0x0207DCDC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #4]
	strh r1, [r4, #8]
	strh r1, [r4, #0xa]
	str r1, [r4]
	sub r0, r1, #1
	add r7, r1, #0
	mov r5, #0x24
_0207DCF0:
	add r2, r1, #0
	mul r2, r5
	add r3, r4, r2
	str r7, [r3, #0x40]
	add r2, r7, #0
_0207DCFA:
	lsl r6, r2, #1
	add r6, r3, r6
	add r2, r2, #1
	strh r0, [r6, #0x20]
	cmp r2, #0x10
	blt _0207DCFA
	add r1, r1, #1
	cmp r1, #0x10
	blt _0207DCF0
	mov r3, #0
	mov r0, #0x26
	sub r2, r3, #1
	lsl r0, r0, #4
_0207DD14:
	lsl r1, r3, #1
	add r1, r4, r1
	add r3, r3, #1
	strh r2, [r1, r0]
	cmp r3, #0x10
	blt _0207DD14
	mov r1, #0xa
	add r0, r4, #0
	lsl r1, r1, #6
	blx sub_0207B0AC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207DCDC

	thumb_func_start sub_0207DD2C
sub_0207DD2C: ; 0x0207DD2C
	ldr r1, _0207DD74 ; =0xFFFFFD2D
	cmp r0, r1
	bge _0207DD36
	add r0, r1, #0
	b _0207DD3C
_0207DD36:
	cmp r0, #0
	ble _0207DD3C
	mov r0, #0
_0207DD3C:
	ldr r1, _0207DD78 ; =0x000002D3
	add r2, r0, r1
	ldr r1, _0207DD7C ; =0x0209898C
	ldrb r3, [r1, r2]
	mov r2, #0xef
	mvn r2, r2
	cmp r0, r2
	bge _0207DD50
	mov r0, #3
	b _0207DD68
_0207DD50:
	add r1, r2, #0
	add r1, #0x78
	cmp r0, r1
	bge _0207DD5C
	mov r0, #2
	b _0207DD68
_0207DD5C:
	add r2, #0xb4
	cmp r0, r2
	bge _0207DD66
	mov r0, #1
	b _0207DD68
_0207DD66:
	mov r0, #0
_0207DD68:
	lsl r0, r0, #8
	orr r0, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0207DD74: .word 0xFFFFFD2D
_0207DD78: .word 0x000002D3
_0207DD7C: .word 0x0209898C
	thumb_func_end sub_0207DD2C

	thumb_func_start sub_0207DD80
sub_0207DD80: ; 0x0207DD80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0207D698
	lsl r0, r7, #3
	add r3, r5, r0
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _0207DDD4
	cmp r4, r2
	bne _0207DDA0
	bl sub_0207D6A8
	pop {r3, r4, r5, r6, r7, pc}
_0207DDA0:
	add r1, r5, #0
	add r1, #0x18
	ldr r6, [r2, #0x18]
	add r1, r1, r0
	cmp r1, r6
	bne _0207DDB6
	ldr r0, [r3, #0x1c]
	mov r1, #0x3c
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x18]
	b _0207DDD0
_0207DDB6:
	cmp r6, #0
	beq _0207DDC6
_0207DDBA:
	ldr r2, [r6, #4]
	cmp r1, r2
	beq _0207DDC6
	add r6, r2, #0
	cmp r2, #0
	bne _0207DDBA
_0207DDC6:
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #8
	str r0, [r6, #4]
	add r0, r6, #0
_0207DDD0:
	blx sub_0207B090
_0207DDD4:
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	lsl r3, r7, #3
	add r2, #0x18
	add r1, r2, r3
	str r1, [r4, #0x18]
	add r1, r5, r3
	str r0, [r1, #0x1c]
	str r4, [r2, r3]
	bl sub_0207D6A8
	add r0, r5, #0
	mov r1, #0x3c
	blx sub_0207B090
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0207B090
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207DD80

	thumb_func_start sub_0207DDFC
sub_0207DDFC: ; 0x0207DDFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0207D698
	add r6, r5, #0
	mov r4, #0
	add r6, #0x18
	mov r7, #0x3c
_0207DE0C:
	lsl r1, r4, #3
	add r2, r5, r1
	ldr r3, [r2, #0x18]
	cmp r3, #0
	beq _0207DE42
	ldr r0, [r3, #0x18]
	add r1, r6, r1
	cmp r1, r0
	bne _0207DE28
	ldr r0, [r2, #0x1c]
	add r1, r7, #0
	str r0, [r3, #0x18]
	add r0, r3, #0
	b _0207DE3E
_0207DE28:
	cmp r0, #0
	beq _0207DE38
_0207DE2C:
	ldr r3, [r0, #4]
	cmp r1, r3
	beq _0207DE38
	add r0, r3, #0
	cmp r3, #0
	bne _0207DE2C
_0207DE38:
	ldr r1, [r2, #0x1c]
	str r1, [r0, #4]
	mov r1, #8
_0207DE3E:
	blx sub_0207B090
_0207DE42:
	add r4, r4, #1
	cmp r4, #4
	blt _0207DE0C
	bl sub_0207D6A8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207DDFC

	thumb_func_start sub_0207DE50
sub_0207DE50: ; 0x0207DE50
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0207D698
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0207DE74
	mov r4, #0
	mov r6, #8
_0207DE62:
	ldr r5, [r0, #4]
	add r1, r6, #0
	str r4, [r0]
	str r4, [r0, #4]
	blx sub_0207B090
	add r0, r5, #0
	cmp r5, #0
	bne _0207DE62
_0207DE74:
	bl sub_0207D6A8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0207DE50

	thumb_func_start sub_0207DE7C
sub_0207DE7C: ; 0x0207DE7C
	sub sp, #8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [r0]
	str r1, [r0, #4]
	add sp, #8
	bx lr
	thumb_func_end sub_0207DE7C

	thumb_func_start sub_0207DE8C
sub_0207DE8C: ; 0x0207DE8C
	push {r4, r5, r6, r7}
	add r3, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	ldr r2, [r6]
	ldr r1, [r3, #0x38]
	cmp r2, r1
	bhs _0207DF7A
	mov r7, #0
_0207DE9E:
	lsl r1, r2, #2
	add r1, r3, r1
	ldr r1, [r1, #0x3c]
	strb r1, [r0]
	lsr r2, r1, #8
	ldrb r1, [r0]
	cmp r1, #0x10
	bgt _0207DECC
	bge _0207DEF4
	cmp r1, #5
	bhi _0207DF6C
	add r4, r1, r1
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0207DEC0: ; jump table
	.short _0207DF6C - _0207DEC0 - 2 ; case 0
	.short _0207DED2 - _0207DEC0 - 2 ; case 1
	.short _0207DED2 - _0207DEC0 - 2 ; case 2
	.short _0207DED2 - _0207DEC0 - 2 ; case 3
	.short _0207DED2 - _0207DEC0 - 2 ; case 4
	.short _0207DED2 - _0207DEC0 - 2 ; case 5
_0207DECC:
	cmp r1, #0x11
	beq _0207DF32
	b _0207DF6C
_0207DED2:
	add r1, r3, r2
	ldrh r2, [r3, r2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #2]
	strh r2, [r0, #4]
	ldrh r2, [r1, #4]
	strh r2, [r0, #6]
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #8]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0207DEF4:
	add r5, r3, r2
	b _0207DF22
_0207DEF8:
	mov r1, #0xc
	mul r1, r4
	add r2, r5, r1
	ldrh r1, [r2, #2]
	strh r1, [r0]
	ldrh r1, [r2, #4]
	strh r1, [r0, #2]
	ldrh r1, [r2, #6]
	strh r1, [r0, #4]
	ldrh r1, [r2, #8]
	strh r1, [r0, #6]
	ldrh r1, [r2, #0xa]
	strh r1, [r0, #8]
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xa]
	ldr r0, [r6, #4]
	add r0, r0, #1
	str r0, [r6, #4]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0207DF22:
	ldrb r2, [r5, #1]
	ldrb r1, [r5]
	ldr r4, [r6, #4]
	sub r1, r2, r1
	add r1, r1, #1
	cmp r4, r1
	blo _0207DEF8
	b _0207DF6C
_0207DF32:
	add r1, r3, r2
	b _0207DF66
_0207DF36:
	ldrb r2, [r1, r4]
	cmp r2, #0
	beq _0207DF6C
	mov r2, #0xc
	mul r2, r4
	add r2, r1, r2
	ldrh r1, [r2, #8]
	strh r1, [r0]
	ldrh r1, [r2, #0xa]
	strh r1, [r0, #2]
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #4]
	ldrh r1, [r2, #0xe]
	strh r1, [r0, #6]
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #8]
	ldrh r1, [r2, #0x12]
	strh r1, [r0, #0xa]
	ldr r0, [r6, #4]
	add r0, r0, #1
	str r0, [r6, #4]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0207DF66:
	ldr r4, [r6, #4]
	cmp r4, #8
	blo _0207DF36
_0207DF6C:
	ldr r1, [r6]
	str r7, [r6, #4]
	add r2, r1, #1
	ldr r1, [r3, #0x38]
	str r2, [r6]
	cmp r2, r1
	blo _0207DE9E
_0207DF7A:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0207DE8C

	thumb_func_start sub_0207DF80
sub_0207DF80: ; 0x0207DF80
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_0207DF80

	thumb_func_start sub_0207DF84
sub_0207DF84: ; 0x0207DF84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207D698
	add r5, #0x3c
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r0, r5, r0
	mov r1, #4
	blx sub_0207B090
	bl sub_0207D6A8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207DF84

	thumb_func_start sub_0207DFA4
sub_0207DFA4: ; 0x0207DFA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0207D698
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r4, [r0, #0x3c]
	cmp r4, #0
	beq _0207DFC4
	mov r0, #2
	lsl r0, r0, #0x18
	cmp r4, r0
	bhs _0207DFC6
	add r4, r5, r4
	b _0207DFC6
_0207DFC4:
	mov r4, #0
_0207DFC6:
	bl sub_0207D6A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207DFA4
_0207DFD0:
	.byte 0xF8, 0xB5, 0x82, 0xB0, 0x08, 0x04, 0x04, 0x0C, 0x7F, 0x20, 0x00, 0x02, 0x20, 0x40, 0x00, 0x02
	.byte 0x00, 0x0C, 0x54, 0x4B, 0x00, 0x2A, 0x0F, 0xD0, 0x01, 0x21, 0x81, 0x40, 0x09, 0x04, 0x1A, 0x8F
	.byte 0x09, 0x0C, 0x11, 0x43, 0x19, 0x87, 0x5B, 0x68, 0x00, 0x2B, 0x00, 0xD1, 0x97, 0xE0, 0x04, 0x21
	.byte 0x00, 0x22, 0x98, 0x47, 0x02, 0xB0, 0xF8, 0xBD, 0x10, 0x28, 0x2D, 0xD1, 0x19, 0x8A, 0x49, 0x1C
	.byte 0x19, 0x82, 0x1A, 0x8A, 0x19, 0x8B, 0x8A, 0x42, 0x01, 0xD3, 0x00, 0x21, 0x19, 0x82, 0x19, 0x8A
	.byte 0x45, 0x4A, 0x5D, 0x69, 0xCC, 0x00, 0x11, 0x88, 0x00, 0xAF, 0x2E, 0x19, 0xB9, 0x80, 0x51, 0x88
	.byte 0xF9, 0x80, 0x01, 0x99, 0x0A, 0x05, 0x12, 0x0D, 0x2A, 0x53, 0x0A, 0x02, 0x12, 0x0D, 0x72, 0x80
	.byte 0xCA, 0x01, 0xD2, 0x0F, 0x49, 0x01, 0x12, 0x06, 0x89, 0x0F, 0x12, 0x0E, 0x09, 0x06, 0xB2, 0x80
	.byte 0x09, 0x0E, 0xF1, 0x80, 0x5C, 0x68, 0x00, 0x2C, 0x69, 0xD0, 0x1A, 0x8A, 0x00, 0x21, 0x12, 0x06
	.byte 0x12, 0x0E, 0xA0, 0x47, 0x02, 0xB0, 0xF8, 0xBD, 0x01, 0x22, 0x12, 0x06, 0x11, 0x42, 0x5E, 0xD0
	.byte 0x21, 0x06, 0x09, 0x0E, 0x04, 0x29, 0x58, 0xD8, 0x49, 0x18, 0x79, 0x44, 0xC9, 0x88, 0x09, 0x04
	.byte 0x09, 0x14, 0x8F, 0x44, 0x08, 0x00, 0xA4, 0x00, 0x72, 0x00, 0x76, 0x00, 0x6E, 0x00, 0x00, 0x28
	.byte 0x04, 0xD0, 0x01, 0x28, 0x1A, 0xD0, 0x02, 0x28, 0x1A, 0xD0, 0x1B, 0xE0, 0x26, 0x4C, 0x00, 0xA9
	.byte 0x22, 0x88, 0x0A, 0x80, 0x62, 0x88, 0x4A, 0x80, 0x00, 0x99, 0x0A, 0x05, 0x12, 0x0D, 0x1A, 0x81
	.byte 0x0A, 0x02, 0x12, 0x0D, 0x5A, 0x81, 0xCA, 0x01, 0xD2, 0x0F, 0x49, 0x01, 0x12, 0x06, 0x89, 0x0F
	.byte 0x12, 0x0E, 0x09, 0x06, 0x9A, 0x81, 0x09, 0x0E, 0xD9, 0x81, 0x01, 0xE0, 0x02, 0x21, 0x00, 0xE0
	.byte 0x00, 0x21, 0xD9, 0x86, 0x01, 0x22, 0x82, 0x40, 0xD2, 0x43, 0x12, 0x04, 0x59, 0x8F, 0x12, 0x0C
	.byte 0x11, 0x40, 0x59, 0x87, 0x5B, 0x68, 0x00, 0x2B, 0x21, 0xD0, 0x00, 0x21, 0x00, 0x22, 0x98, 0x47
	.byte 0x02, 0xB0, 0xF8, 0xBD, 0x03, 0x24, 0x02, 0xE0, 0x01, 0x24, 0x00, 0xE0, 0x02, 0x24, 0x01, 0x22
	.byte 0x82, 0x40, 0x11, 0x04, 0x1D, 0x8F, 0x09, 0x0C, 0xD2, 0x43, 0x29, 0x43, 0x19, 0x87, 0x12, 0x04
	.byte 0x59, 0x8F, 0x12, 0x0C, 0x11, 0x40, 0x59, 0x87, 0x5B, 0x68, 0x00, 0x2B, 0x07, 0xD0, 0x21, 0x06
	.byte 0x09, 0x0E, 0x00, 0x22, 0x98, 0x47, 0x02, 0xB0, 0xF8, 0xBD, 0xFE, 0xF7, 0x23, 0xFB, 0x02, 0xB0
	.byte 0xF8, 0xBD, 0xC0, 0x46, 0xE4, 0xE1, 0x14, 0x02, 0xAA, 0xFF, 0xFF, 0x02

	thumb_func_start sub_0207E13C
sub_0207E13C: ; 0x0207E13C
	push {r3, r4, r5, lr}
	ldr r4, _0207E178 ; =0x0214E1E4
	ldrh r0, [r4]
	cmp r0, #0
	bne _0207E176
	mov r0, #1
	strh r0, [r4]
	bl PXI_Init
	mov r0, #0
	strh r0, [r4, #0x10]
	str r0, [r4, #4]
	str r0, [r4, #0x14]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x3a]
	strh r0, [r4, #0x38]
	mov r5, #6
	mov r4, #1
_0207E162:
	add r0, r5, #0
	add r1, r4, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0207E162
	ldr r1, _0207E17C ; =0x0207DFD1
	add r0, r5, #0
	bl PXI_SetFifoRecvCallback
_0207E176:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207E178: .word 0x0214E1E4
_0207E17C: .word 0x0207DFD1
	thumb_func_end sub_0207E13C

	thumb_func_start sub_0207E180
sub_0207E180: ; 0x0207E180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _0207E1F8 ; =0x02FFFC80
	add r7, r0, #0
	add r0, r1, #0
	add r0, #0x58
	ldrh r2, [r0]
	add r0, r1, #0
	add r0, #0x5a
	ldrh r3, [r0]
	add r0, r1, #0
	add r0, #0x5c
	ldrb r0, [r0]
	mov ip, r0
	add r0, r1, #0
	add r0, #0x5d
	ldrb r6, [r0]
	add r0, r1, #0
	add r0, #0x5e
	ldrh r4, [r0]
	add r0, r1, #0
	add r0, #0x60
	ldrh r5, [r0]
	add r0, r1, #0
	add r0, #0x62
	add r1, #0x63
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r2, #0
	bne _0207E1C8
	cmp r4, #0
	bne _0207E1C8
	cmp r3, #0
	bne _0207E1C8
	cmp r5, #0
	beq _0207E1E2
_0207E1C8:
	str r6, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, r2, #0
	add r2, r3, #0
	add r0, r7, #0
	mov r3, ip
	bl sub_0207E510
	cmp r0, #0
	beq _0207E1F2
_0207E1E2:
	mov r0, #0
	add sp, #0x14
	strh r0, [r7]
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E1F2:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0207E1F8: .word 0x02FFFC80
	thumb_func_end sub_0207E180

	thumb_func_start sub_0207E1FC
sub_0207E1FC: ; 0x0207E1FC
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0207E290 ; =0x0214E1E4
	add r4, r0, #0
	bne _0207E20A
	mov r0, #0
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0207E20A:
	blx OS_DisableInterrupts
	add r6, r0, #0
	mov r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0
	beq _0207E240
	ldr r1, _0207E294 ; =0x04000280
	mov r3, #0
	mov r7, #1
	add r0, r1, #0
	strh r3, [r1]
	lsl r7, r7, #0x1c
	str r7, [r1, #0x10]
	add r0, #0x18
	str r2, [r0]
	str r3, [r0, #4]
	ldrsh r0, [r4, r3]
	str r0, [r5, #0x1c]
	str r2, [r5, #0x20]
	lsr r0, r7, #0xd
_0207E234:
	ldrh r2, [r1]
	tst r2, r0
	bne _0207E234
	ldr r0, _0207E298 ; =0x040002A0
	ldr r0, [r0]
	b _0207E246
_0207E240:
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
_0207E246:
	str r0, [r5, #0x24]
	mov r0, #6
	ldrsh r2, [r4, r0]
	cmp r2, #0
	beq _0207E27A
	ldr r1, _0207E294 ; =0x04000280
	mov r3, #0
	mov r7, #1
	add r0, r1, #0
	strh r3, [r1]
	lsl r7, r7, #0x1c
	str r7, [r1, #0x10]
	add r0, #0x18
	str r2, [r0]
	str r3, [r0, #4]
	mov r0, #2
	ldrsh r0, [r4, r0]
	str r0, [r5, #0x28]
	str r2, [r5, #0x2c]
	lsr r0, r7, #0xd
_0207E26E:
	ldrh r2, [r1]
	tst r2, r0
	bne _0207E26E
	ldr r0, _0207E298 ; =0x040002A0
	ldr r0, [r0]
	b _0207E280
_0207E27A:
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
_0207E280:
	str r0, [r5, #0x30]
	add r0, r6, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E290: .word 0x0214E1E4
_0207E294: .word 0x04000280
_0207E298: .word 0x040002A0
	thumb_func_end sub_0207E1FC

	thumb_func_start sub_0207E29C
sub_0207E29C: ; 0x0207E29C
	push {r3, r4, r5, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	mov r0, #6
	lsl r1, r0, #0x17
	mov r2, #0
	mov r5, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207E2B6
	mov r5, #1
_0207E2B6:
	cmp r5, #0
	bne _0207E2DA
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r1, _0207E2F4 ; =0x0214E1E4
	mov r0, #1
	ldrh r2, [r1, #0x38]
	orr r0, r2
	strh r0, [r1, #0x38]
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0207E2F2
	mov r0, #0
	mov r1, #4
	mov r2, #0
	blx r3
	pop {r3, r4, r5, pc}
_0207E2DA:
	ldr r1, _0207E2F4 ; =0x0214E1E4
	mov r0, #1
	ldrh r2, [r1, #0x3a]
	orr r0, r2
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	ldr r0, _0207E2F8 ; =0x0000FFFE
	and r0, r2
	strh r0, [r1, #0x38]
	add r0, r4, #0
	blx OS_RestoreInterrupts
_0207E2F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207E2F4: .word 0x0214E1E4
_0207E2F8: .word 0x0000FFFE
	thumb_func_end sub_0207E29C

	thumb_func_start sub_0207E2FC
sub_0207E2FC: ; 0x0207E2FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r4, #1
	bl sub_0207E740
	ldr r0, _0207E328 ; =0x0214E1E4
	ldrh r1, [r0, #0x38]
	tst r1, r4
	beq _0207E314
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0207E314:
	ldrh r1, [r0, #8]
	strh r1, [r5]
	ldrh r1, [r0, #0xa]
	strh r1, [r5, #2]
	ldrh r1, [r0, #0xc]
	strh r1, [r5, #4]
	ldrh r0, [r0, #0xe]
	strh r0, [r5, #6]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207E328: .word 0x0214E1E4
	thumb_func_end sub_0207E2FC

	thumb_func_start sub_0207E32C
sub_0207E32C: ; 0x0207E32C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _0207E3C4 ; =0x0214E1E4
	ldr r6, _0207E3C8 ; =0x00000000
	str r2, [r1, #0x14]
	strh r6, [r1, #0x10]
	add r7, r0, #0
	add r0, r3, #0
	strh r4, [r1, #0x12]
	strh r0, [r1, #0x18]
	beq _0207E352
	add r5, r6, #0
_0207E344:
	ldr r3, [r1, #0x14]
	lsl r2, r6, #3
	add r2, r3, r2
	add r6, r6, #1
	strh r5, [r2, #4]
	cmp r6, r0
	blo _0207E344
_0207E352:
	blx OS_DisableInterrupts
	lsl r1, r4, #0x18
	lsr r2, r1, #0x18
	ldr r1, _0207E3CC ; =0x02000100
	add r5, r0, #0
	orr r1, r2
	mov r0, #6
	mov r2, #0
	mov r6, #6
	mov r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207E382
	ldr r1, _0207E3D0 ; =0x01010000
	add r0, r6, #0
	orr r1, r7
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207E382
	mov r4, #1
_0207E382:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bne _0207E3A8
	add r0, r5, #0
	blx OS_RestoreInterrupts
	ldr r1, _0207E3C4 ; =0x0214E1E4
	mov r0, #2
	ldrh r2, [r1, #0x38]
	orr r0, r2
	strh r0, [r1, #0x38]
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0207E3C0
	mov r0, #1
	mov r1, #4
	mov r2, #0
	blx r3
	pop {r3, r4, r5, r6, r7, pc}
_0207E3A8:
	ldr r1, _0207E3C4 ; =0x0214E1E4
	mov r0, #2
	ldrh r2, [r1, #0x3a]
	orr r0, r2
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	ldr r0, _0207E3D4 ; =0x0000FFFD
	and r0, r2
	strh r0, [r1, #0x38]
	add r0, r5, #0
	blx OS_RestoreInterrupts
_0207E3C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E3C4: .word 0x0214E1E4
_0207E3C8: .word 0x00000000
_0207E3CC: .word 0x02000100
_0207E3D0: .word 0x01010000
_0207E3D4: .word 0x0000FFFD
	thumb_func_end sub_0207E32C

	thumb_func_start sub_0207E3D8
sub_0207E3D8: ; 0x0207E3D8
	push {r3, r4, r5, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r1, _0207E430 ; =0x03000200
	mov r0, #6
	mov r2, #0
	mov r5, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207E3F2
	mov r5, #1
_0207E3F2:
	cmp r5, #0
	bne _0207E414
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r0, _0207E434 ; =0x0214E1E4
	mov r1, #4
	ldrh r2, [r0, #0x38]
	orr r2, r1
	strh r2, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _0207E42C
	mov r0, #2
	mov r2, #0
	blx r3
	pop {r3, r4, r5, pc}
_0207E414:
	ldr r1, _0207E434 ; =0x0214E1E4
	mov r0, #4
	ldrh r2, [r1, #0x3a]
	orr r0, r2
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	ldr r0, _0207E438 ; =0x0000FFFB
	and r0, r2
	strh r0, [r1, #0x38]
	add r0, r4, #0
	blx OS_RestoreInterrupts
_0207E42C:
	pop {r3, r4, r5, pc}
	nop
_0207E430: .word 0x03000200
_0207E434: .word 0x0214E1E4
_0207E438: .word 0x0000FFFB
	thumb_func_end sub_0207E3D8

	thumb_func_start sub_0207E43C
sub_0207E43C: ; 0x0207E43C
	push {r4, r5, r6, r7}
	ldr r2, _0207E4FC ; =0x0214E1E4
	mov r1, #3
	strh r1, [r0, #6]
	ldrh r1, [r2, #0x12]
	ldrh r4, [r2, #0x10]
	cmp r1, #1
	beq _0207E452
	ldrh r1, [r2, #0x18]
	cmp r1, #1
	bne _0207E46E
_0207E452:
	ldr r1, _0207E4FC ; =0x0214E1E4
	ldr r3, [r1, #0x14]
	lsl r1, r4, #3
	add r2, r3, r1
	ldrh r1, [r3, r1]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	ldrh r1, [r2, #6]
	strh r1, [r0, #6]
	pop {r4, r5, r6, r7}
	bx lr
_0207E46E:
	ldr r1, _0207E500 ; =0x0000FFFE
	mov r3, #0
	sub r1, r1, #1
	b _0207E4E6
_0207E476:
	sub r5, r4, r3
	bpl _0207E47C
	add r5, r5, r6
_0207E47C:
	ldr r6, [r2, #0x14]
	lsl r5, r5, #3
	add r5, r6, r5
	ldrh r6, [r5, #4]
	cmp r6, #0
	bne _0207E49C
	ldrh r1, [r5]
	strh r1, [r0]
	ldrh r1, [r5, #2]
	strh r1, [r0, #2]
	ldrh r1, [r5, #4]
	strh r1, [r0, #4]
	ldrh r1, [r5, #6]
	strh r1, [r0, #6]
	pop {r4, r5, r6, r7}
	bx lr
_0207E49C:
	ldrh r7, [r0, #6]
	lsl r7, r7, #0x1f
	beq _0207E4B8
	ldrh r7, [r5, #6]
	lsl r7, r7, #0x1f
	bne _0207E4B8
	ldrh r6, [r5]
	cmp r3, #0
	strh r6, [r0]
	beq _0207E4B8
	ldrh r7, [r0, #6]
	ldr r6, _0207E500 ; =0x0000FFFE
	and r6, r7
	strh r6, [r0, #6]
_0207E4B8:
	ldrh r7, [r0, #6]
	mov r6, #2
	tst r6, r7
	beq _0207E4D6
	ldrh r7, [r5, #6]
	mov r6, #2
	tst r6, r7
	bne _0207E4D6
	ldrh r5, [r5, #2]
	cmp r3, #0
	strh r5, [r0, #2]
	beq _0207E4D6
	ldrh r5, [r0, #6]
	and r5, r1
	strh r5, [r0, #6]
_0207E4D6:
	ldrh r5, [r0, #6]
	cmp r5, #0
	bne _0207E4E4
	mov r1, #1
	strh r1, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0207E4E4:
	add r3, r3, #1
_0207E4E6:
	ldrh r5, [r2, #0x12]
	cmp r3, r5
	bge _0207E4F4
	ldrh r6, [r2, #0x18]
	sub r5, r6, #1
	cmp r3, r5
	blt _0207E476
_0207E4F4:
	mov r1, #1
	strh r1, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0207E4FC: .word 0x0214E1E4
_0207E500: .word 0x0000FFFE
	thumb_func_end sub_0207E43C

	thumb_func_start sub_0207E504
sub_0207E504: ; 0x0207E504
	ldr r0, _0207E50C ; =0x0214E1E4
	ldrh r0, [r0, #0x10]
	bx lr
	nop
_0207E50C: .word 0x0214E1E4
	thumb_func_end sub_0207E504

	thumb_func_start sub_0207E510
sub_0207E510: ; 0x0207E510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r5, r1
	bhs _0207E538
	cmp r7, r1
	bhs _0207E538
	add r0, sp, #0x30
	ldrh r3, [r0, #4]
	cmp r3, r1
	bhs _0207E538
	ldrh r0, [r0, #8]
	mov ip, r0
	cmp r0, r1
	blo _0207E53E
_0207E538:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E53E:
	lsr r0, r1, #4
	cmp r6, r0
	bhs _0207E55C
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	lsr r1, r1, #4
	cmp r0, r1
	bhs _0207E55C
	add r1, sp, #0x30
	ldrh r2, [r1]
	cmp r2, #0xc0
	bhs _0207E55C
	ldrh r1, [r1, #0x10]
	cmp r1, #0xc0
	blo _0207E562
_0207E55C:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E562:
	cmp r6, r0
	beq _0207E574
	cmp r2, r1
	beq _0207E574
	cmp r5, r3
	beq _0207E574
	mov r0, ip
	cmp r7, r0
	bne _0207E57A
_0207E574:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E57A:
	blx OS_DisableInterrupts
	str r0, [sp, #0x14]
	ldr r0, _0207E688 ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	add r1, sp, #0x30
	ldrh r1, [r1, #4]
	str r1, [sp, #0xc]
	sub r1, r5, r1
	lsl r1, r1, #8
	str r1, [r0, #0x10]
	add r1, sp, #0x30
	ldrh r1, [r1, #0xc]
	str r1, [sp, #0x10]
	sub r2, r6, r1
	add r1, r0, #0
	add r1, #0x18
	str r2, [r1]
	str r3, [r1, #4]
	add r1, sp, #0x30
	ldrh r1, [r1, #8]
	str r1, [sp]
	sub r3, r7, r1
	add r1, sp, #0x30
	ldrh r1, [r1, #0x10]
	str r1, [sp, #8]
	add r1, sp, #0x30
	ldrh r2, [r1]
	ldr r1, [sp, #8]
	sub r1, r2, r1
	str r1, [sp, #0x18]
	str r2, [sp, #4]
	lsr r1, r0, #0xb
_0207E5BE:
	ldrh r2, [r0]
	tst r2, r1
	bne _0207E5BE
	ldr r1, _0207E68C ; =0x040002A0
	ldr r2, [r1]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0207E68C ; =0x040002A0
	lsl r1, r3, #8
	sub r0, #0x10
	str r1, [r0]
	ldr r0, _0207E68C ; =0x040002A0
	ldr r1, [sp, #0x18]
	sub r0, #8
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _0207E68C ; =0x040002A0
	lsr r0, r0, #0xb
	cmp r2, r0
	bge _0207E5EE
	ldr r1, _0207E690 ; =0xFFFF8000
	cmp r2, r1
	bge _0207E5FA
_0207E5EE:
	ldr r0, [sp, #0x14]
	blx OS_RestoreInterrupts
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E5FA:
	ldr r0, [sp, #0xc]
	strh r2, [r4, #4]
	add r0, r5, r0
	mov r5, #4
	lsl r3, r0, #8
	ldr r0, [sp, #0x10]
	ldrsh r2, [r4, r5]
	add r0, r6, r0
	mul r0, r2
	sub r0, r3, r0
	lsl r0, r0, #9
	asr r2, r0, #0x10
	lsl r0, r5, #0xd
	cmp r2, r0
	bge _0207E61C
	cmp r2, r1
	bge _0207E628
_0207E61C:
	ldr r0, [sp, #0x14]
	blx OS_RestoreInterrupts
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E628:
	strh r2, [r4]
	ldr r2, _0207E68C ; =0x040002A0
	ldr r0, _0207E68C ; =0x040002A0
	sub r2, #0x20
	lsr r0, r0, #0xb
_0207E632:
	ldrh r1, [r2]
	tst r1, r0
	bne _0207E632
	ldr r6, _0207E68C ; =0x040002A0
	ldr r0, [sp, #0x14]
	ldr r5, [r6]
	blx OS_RestoreInterrupts
	lsr r0, r6, #0xb
	cmp r5, r0
	bge _0207E64E
	ldr r0, _0207E690 ; =0xFFFF8000
	cmp r5, r0
	bge _0207E654
_0207E64E:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E654:
	ldr r1, [sp]
	strh r5, [r4, #6]
	add r1, r7, r1
	lsl r2, r1, #8
	mov r1, #6
	ldrsh r1, [r4, r1]
	ldr r5, [sp, #4]
	ldr r3, [sp, #8]
	add r3, r5, r3
	mul r3, r1
	sub r1, r2, r3
	lsl r1, r1, #9
	asr r2, r1, #0x10
	lsr r1, r6, #0xb
	cmp r2, r1
	bge _0207E678
	cmp r2, r0
	bge _0207E67E
_0207E678:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207E67E:
	strh r2, [r4, #2]
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0207E688: .word 0x04000280
_0207E68C: .word 0x040002A0
_0207E690: .word 0xFFFF8000
	thumb_func_end sub_0207E510

	thumb_func_start sub_0207E694
sub_0207E694: ; 0x0207E694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0207E738 ; =0x0214E1E4
	add r4, r1, #0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	bne _0207E6B4
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrh r0, [r4, #6]
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
_0207E6B4:
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	strh r1, [r5, #4]
	strh r0, [r5, #6]
	cmp r1, #0
	bne _0207E6C8
	mov r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
_0207E6C8:
	ldrh r2, [r4]
	ldr r0, _0207E73C ; =0x0214E200
	lsl r6, r2, #2
	ldr r2, _0207E73C ; =0x0214E200
	ldr r0, [r0, #8]
	ldr r2, [r2]
	asr r3, r6, #0x1f
	asr r7, r2, #0x1f
	asr r1, r0, #0x1f
	sub r2, r6, r2
	sbc r3, r7
	blx sub_0208D60C
	lsl r1, r1, #0xa
	lsr r0, r0, #0x16
	orr r0, r1
	strh r0, [r5]
	mov r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0207E6F4
	b _0207E6FA
_0207E6F4:
	cmp r1, #0xff
	ble _0207E6FC
	mov r0, #0xff
_0207E6FA:
	strh r0, [r5]
_0207E6FC:
	ldrh r2, [r4, #2]
	ldr r4, _0207E73C ; =0x0214E200
	ldr r0, _0207E73C ; =0x0214E200
	ldr r6, [r4, #0xc]
	ldr r0, [r0, #0x14]
	lsl r2, r2, #2
	asr r3, r2, #0x1f
	asr r4, r6, #0x1f
	asr r1, r0, #0x1f
	sub r2, r2, r6
	sbc r3, r4
	blx sub_0208D60C
	lsl r1, r1, #0xa
	lsr r0, r0, #0x16
	orr r0, r1
	strh r0, [r5, #2]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0207E72C
	mov r0, #0
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
_0207E72C:
	cmp r0, #0xbf
	ble _0207E734
	mov r0, #0xbf
	strh r0, [r5, #2]
_0207E734:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E738: .word 0x0214E1E4
_0207E73C: .word 0x0214E200
	thumb_func_end sub_0207E694

	thumb_func_start sub_0207E740
sub_0207E740: ; 0x0207E740
	ldr r1, _0207E74C ; =0x0214E1E4
_0207E742:
	ldrh r2, [r1, #0x3a]
	tst r2, r0
	bne _0207E742
	bx lr
	nop
_0207E74C: .word 0x0214E1E4
	thumb_func_end sub_0207E740

	thumb_func_start sub_0207E750
sub_0207E750: ; 0x0207E750
	ldr r1, _0207E758 ; =0x0214E1E4
	ldrh r1, [r1, #0x38]
	and r0, r1
	bx lr
	.align 2, 0
_0207E758: .word 0x0214E1E4
	thumb_func_end sub_0207E750

	thumb_func_start sub_0207E75C
sub_0207E75C: ; 0x0207E75C
	push {r3, r4, r5, lr}
	ldr r0, _0207E794 ; =0x0214E220
	ldrh r1, [r0]
	cmp r1, #0
	bne _0207E792
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	bl PXI_Init
	mov r4, #9
	mov r5, #1
_0207E778:
	add r0, r4, #0
	add r1, r5, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0207E778
	ldr r0, _0207E798 ; =0x02FFFF90
	mov r1, #0
	str r1, [r0]
	ldr r1, _0207E79C ; =0x0207E979
	add r0, r4, #0
	bl PXI_SetFifoRecvCallback
_0207E792:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207E794: .word 0x0214E220
_0207E798: .word 0x02FFFF90
_0207E79C: .word 0x0207E979
	thumb_func_end sub_0207E75C

	thumb_func_start sub_0207E7A0
sub_0207E7A0: ; 0x0207E7A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [r4, #4]
	mov r0, #0x1f
	str r2, [sp]
	tst r1, r0
	beq _0207E7B4
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207E7B4:
	ldr r1, [r4, #8]
	tst r0, r1
	beq _0207E7BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207E7BE:
	cmp r1, #0
	bne _0207E7C6
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207E7C6:
	mov r0, #1
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xa
	cmp r1, r0
	bhs _0207E7D4
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207E7D4:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0207E80A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207E7E6: ; jump table
	.short _0207E7F2 - _0207E7E6 - 2 ; case 0
	.short _0207E7F6 - _0207E7E6 - 2 ; case 1
	.short _0207E7FA - _0207E7E6 - 2 ; case 2
	.short _0207E7FE - _0207E7E6 - 2 ; case 3
	.short _0207E802 - _0207E7E6 - 2 ; case 4
	.short _0207E806 - _0207E7E6 - 2 ; case 5
_0207E7F2:
	mov r1, #0
	b _0207E80E
_0207E7F6:
	mov r1, #1
	b _0207E80E
_0207E7FA:
	mov r1, #2
	b _0207E80E
_0207E7FE:
	mov r1, #3
	b _0207E80E
_0207E802:
	mov r1, #5
	b _0207E80E
_0207E806:
	mov r1, #7
	b _0207E80E
_0207E80A:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207E80E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0207E81C
	mov r0, #0x10
	orr r0, r1
	lsl r0, r0, #0x18
	b _0207E81E
_0207E81C:
	lsl r0, r1, #0x18
_0207E81E:
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	blx OS_DisableInterrupts
	ldr r5, _0207E86C ; =0x0214E220
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _0207E838
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207E838:
	mov r1, #1
	str r1, [r5, #4]
	blx OS_RestoreInterrupts
	ldr r0, [sp]
	str r7, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [r4, #4]
	add r3, r6, #0
	bl sub_0207EA20
	cmp r0, #0
	beq _0207E862
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207E862:
	mov r0, #0
	str r0, [r5, #4]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E86C: .word 0x0214E220
	thumb_func_end sub_0207E7A0

	thumb_func_start sub_0207E870
sub_0207E870: ; 0x0207E870
	push {r3, lr}
	ldr r1, _0207E88C ; =0x0207EAF9
	mov r2, #0
	bl sub_0207E7A0
	ldr r1, _0207E890 ; =0x0214E220
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _0207E886
	blx sub_0207EB04
_0207E886:
	ldr r0, _0207E890 ; =0x0214E220
	ldr r0, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
_0207E88C: .word 0x0207EAF9
_0207E890: .word 0x0214E220
	thumb_func_end sub_0207E870

	thumb_func_start sub_0207E894
sub_0207E894: ; 0x0207E894
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	ldr r4, _0207E8D0 ; =0x0214E220
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0207E8AE
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, r5, r6, pc}
_0207E8AE:
	mov r1, #1
	str r1, [r4, #4]
	blx OS_RestoreInterrupts
	str r5, [r4, #8]
	str r6, [r4, #0xc]
	bl sub_0207EADC
	cmp r0, #0
	beq _0207E8C6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207E8C6:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #3
	pop {r4, r5, r6, pc}
	nop
_0207E8D0: .word 0x0214E220
	thumb_func_end sub_0207E894

	thumb_func_start sub_0207E8D4
sub_0207E8D4: ; 0x0207E8D4
	push {r3, lr}
	ldr r0, _0207E8F0 ; =0x0207EAF9
	mov r1, #0
	bl sub_0207E894
	ldr r1, _0207E8F4 ; =0x0214E220
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _0207E8EA
	blx sub_0207EB04
_0207E8EA:
	ldr r0, _0207E8F4 ; =0x0214E220
	ldr r0, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
_0207E8F0: .word 0x0207EAF9
_0207E8F4: .word 0x0214E220
	thumb_func_end sub_0207E8D4

	thumb_func_start sub_0207E8F8
sub_0207E8F8: ; 0x0207E8F8
	ldr r0, _0207E900 ; =0x02FFFF90
	ldr r0, [r0]
	bx lr
	nop
_0207E900: .word 0x02FFFF90
	thumb_func_end sub_0207E8F8
_0207E904:
	.byte 0x70, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x16, 0x1C, 0xFD, 0xF7, 0x80, 0xFC
	.byte 0x01, 0x28, 0x05, 0xD1, 0x28, 0x1C, 0x21, 0x1C, 0x32, 0x1C, 0x00, 0xF0, 0x08, 0xE8, 0x70, 0xBD
	.byte 0x28, 0x1C, 0x21, 0x1C, 0x32, 0x1C, 0xFF, 0xF7, 0x3B, 0xFF, 0x70, 0xBD, 0x04, 0xF0, 0x1F, 0xE5
	.byte 0xDC, 0x3C, 0x70, 0x02

	thumb_func_start sub_0207E934
sub_0207E934: ; 0x0207E934
	push {r4, lr}
	add r4, r0, #0
	bl OSi_IsCodecTwlMode
	cmp r0, #1
	bne _0207E948
	add r0, r4, #0
	blx sub_0207E950
	pop {r4, pc}
_0207E948:
	add r0, r4, #0
	bl sub_0207E870
	pop {r4, pc}
	thumb_func_end sub_0207E934

