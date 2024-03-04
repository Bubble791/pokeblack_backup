	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207C33C
sub_0207C33C: ; 0x0207C33C
	add r1, r0, #0
	ldr r0, _0207C348 ; =0x02FFFCF4
	ldr r3, _0207C34C ; =sub_02078920
	mov r2, #6
	bx r3
	nop
_0207C348: .word 0x02FFFCF4
_0207C34C: .word sub_02078920
	thumb_func_end sub_0207C33C

	thumb_func_start sub_0207C350
sub_0207C350: ; 0x0207C350
	push {r3, r4, r5, lr}
	ldr r4, _0207C3A4 ; =0x02FFFC80
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x64
	ldrh r0, [r0]
	mov r2, #0x14
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r5]
	ldrb r0, [r4, #2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r5, #1]
	ldrb r0, [r4, #3]
	strb r0, [r5, #2]
	ldrb r0, [r4, #4]
	strb r0, [r5, #3]
	ldrb r0, [r4, #0x1a]
	strh r0, [r5, #0x1a]
	add r0, r4, #0
	add r0, #0x50
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #6
	add r1, r5, #4
	blx sub_0207863C
	add r4, #0x1c
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1c
	mov r2, #0x34
	blx sub_0207863C
	mov r0, #0
	strh r0, [r5, #0x18]
	add r5, #0x50
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207C3A4: .word 0x02FFFC80
	thumb_func_end sub_0207C350

	thumb_func_start sub_0207C3A8
sub_0207C3A8: ; 0x0207C3A8
	ldr r1, _0207C3B0 ; =0x02FFFC80
	ldr r0, [r1, #0x68]
	ldr r1, [r1, #0x6c]
	bx lr
	.align 2, 0
_0207C3B0: .word 0x02FFFC80
	thumb_func_end sub_0207C3A8

	thumb_func_start sub_0207C3B4
sub_0207C3B4: ; 0x0207C3B4
	ldr r0, _0207C3B8 ; =0x0209886C
	bx lr
	.align 2, 0
_0207C3B8: .word 0x0209886C
	thumb_func_end sub_0207C3B4

	thumb_func_start sub_0207C3BC
sub_0207C3BC: ; 0x0207C3BC
	push {r4, r5, r6, lr}
	ldr r4, _0207C430 ; =0x02FFFC80
	add r5, r0, #0
	ldrb r0, [r4, #2]
	mov r2, #0x14
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r5, #1]
	ldrb r0, [r4, #3]
	strb r0, [r5, #2]
	ldrb r0, [r4, #4]
	strb r0, [r5, #3]
	ldrb r0, [r4, #0x1a]
	strh r0, [r5, #0x1a]
	add r0, r4, #0
	add r0, #0x50
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #6
	add r1, r5, #4
	blx sub_0207863C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x1c
	mov r2, #0x34
	blx sub_0207863C
	add r0, r5, #0
	mov r6, #0
	add r0, #0x50
	strh r6, [r5, #0x18]
	strh r6, [r0]
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C41E
	ldr r0, _0207C434 ; =0x02FFFDFC
	ldr r2, [r0]
	add r0, r5, #0
	ldrb r1, [r2, #5]
	add r0, #0x54
	strb r1, [r0]
	ldrb r0, [r2, #6]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_0207C41E:
	add r0, r5, #0
	add r0, #0x54
	add r4, #0x64
	strb r6, [r0]
	ldrh r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207C430: .word 0x02FFFC80
_0207C434: .word 0x02FFFDFC
	thumb_func_end sub_0207C3BC

	thumb_func_start sub_0207C438
sub_0207C438: ; 0x0207C438
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C448
	bl sub_0207C44C
	pop {r3, pc}
_0207C448:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0207C438

	thumb_func_start sub_0207C44C
sub_0207C44C: ; 0x0207C44C
	bx pc
	nop
	thumb_func_end sub_0207C44C
_0207C450:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x19, 0x93, 0x76, 0x02

	thumb_func_start sub_0207C45C
sub_0207C45C: ; 0x0207C45C
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C478
	ldr r0, _0207C47C ; =0x02FFFDFC
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x18
	mov r0, #1
	tst r1, r0
	bne _0207C47A
	mov r0, #0
	pop {r3, pc}
_0207C478:
	mov r0, #0
_0207C47A:
	pop {r3, pc}
	.align 2, 0
_0207C47C: .word 0x02FFFDFC
	thumb_func_end sub_0207C45C

	thumb_func_start sub_0207C480
sub_0207C480: ; 0x0207C480
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C492
	ldr r0, _0207C498 ; =0x02FFFDFC
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	pop {r3, pc}
_0207C492:
	mov r0, #0
	pop {r3, pc}
	nop
_0207C498: .word 0x02FFFDFC
	thumb_func_end sub_0207C480

	thumb_func_start sub_0207C49C
sub_0207C49C: ; 0x0207C49C
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C4AC
	ldr r0, _0207C4B0 ; =0x02FFE20E
	ldrb r0, [r0]
	pop {r3, pc}
_0207C4AC:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0207C4B0: .word 0x02FFE20E
	thumb_func_end sub_0207C49C

	thumb_func_start sub_0207C4B4
sub_0207C4B4: ; 0x0207C4B4
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C4C6
	ldr r0, _0207C4CC ; =0x02FFFDFC
	ldr r0, [r0]
	add r0, #0x94
	pop {r3, pc}
_0207C4C6:
	mov r0, #0
	pop {r3, pc}
	nop
_0207C4CC: .word 0x02FFFDFC
	thumb_func_end sub_0207C4B4

	thumb_func_start sub_0207C4D0
sub_0207C4D0: ; 0x0207C4D0
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207C4E0
	bl sub_0207C4E4
	pop {r3, pc}
_0207C4E0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0207C4D0

	thumb_func_start sub_0207C4E4
sub_0207C4E4: ; 0x0207C4E4
	bx pc
	nop
	thumb_func_end sub_0207C4E4
_0207C4E8:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x35, 0x93, 0x76, 0x02

