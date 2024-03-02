    .include "macros/function.inc"
	.include "overlay77.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy77_21e90c0
ovy77_21e90c0: ; 0x021E90C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	sub r0, r0, #4
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r7, #1
	ldr r0, _021E9118 ; =ovy77_21e9384
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E911C ; =0x00007FDF
	add r0, r5, #0
	mov r1, #8
	add r3, r6, #0
	bl sub_0219990C
	str r7, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02199A50
	ldr r1, _021E9120 ; =0x000006E3
	add r0, r5, #0
	bl sub_02199BE8
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9118: .word ovy77_21e9384
_021E911C: .word 0x00007FDF
_021E9120: .word 0x000006E3
	thumb_func_end ovy77_21e90c0

	thumb_func_start ovy77_21e9124
ovy77_21e9124: ; 0x021E9124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E9168
	sub r0, r0, #1
	str r0, [r4]
	bne _021E9184
	ldr r2, _021E9190 ; =0x00007F5E
	add r0, r5, #0
	mov r1, #8
	mov r3, #0x5a
	str r6, [sp]
	bl sub_02199958
	mov r0, #3
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199734
	b _021E9184
_021E9168:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E9184
	cmp r7, #0
	beq _021E9184
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0219978C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9184:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy77_21e9474
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9190: .word 0x00007F5E
	thumb_func_end ovy77_21e9124

	thumb_func_start ovy77_21e9194
ovy77_21e9194: ; 0x021E9194
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_021997E4
	mov r7, #2
	str r7, [sp]
	sub r0, r7, #4
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _021E9200 ; =ovy77_21e9384
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #2
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E9204 ; =0x00007F5E
	add r0, r5, #0
	mov r1, #8
	add r3, r6, #0
	bl sub_0219990C
	str r7, [sp]
	ldr r1, _021E9200 ; =ovy77_21e9384
	add r0, r5, #0
	mov r2, #0x18
	mov r3, #2
	str r4, [sp, #4]
	bl sub_02199880
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0219978C
	mov r0, #3
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199740
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9200: .word ovy77_21e9384
_021E9204: .word 0x00007F5E
	thumb_func_end ovy77_21e9194

	thumb_func_start ovy77_21e9208
ovy77_21e9208: ; 0x021E9208
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r2, #0
	bl sub_021997E4
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02199874
	cmp r0, #0
	beq _021E9242
	ldr r0, [r5, #4]
	mov r1, #0x28
	mov r4, #0x28
	blx sub_0208D65C
	lsl r1, r0, #2
	ldr r0, _021E9250 ; =0x021E94C8
	sub r4, #0x2e
	ldr r0, [r0, r1]
	str r0, [r5, #0xc]
	cmp r0, r4
	bgt _021E9242
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl ovy77_21e9384
_021E9242:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy77_21e9474
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9250: .word 0x021E94C8
	thumb_func_end ovy77_21e9208

	thumb_func_start ovy77_21e9254
ovy77_21e9254: ; 0x021E9254
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_02199854
	mov r0, #0x1f
	str r0, [r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0219978C
	add r0, r5, #0
	bl sub_02199BF8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy77_21e9254

	thumb_func_start ovy77_21e9288
ovy77_21e9288: ; 0x021E9288
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E92BA
	sub r0, r0, #1
	str r0, [r4]
	bne _021E92DE
	ldr r1, _021E92EC ; =0x00007FDF
	add r0, r5, #0
	mov r2, #0x5a
	add r3, r6, #0
	bl sub_021999BC
	b _021E92DE
_021E92BA:
	cmp r6, #0
	beq _021E92C6
	add r0, r5, #0
	bl sub_021999DC
	b _021E92C8
_021E92C6:
	mov r0, #1
_021E92C8:
	cmp r0, #0
	beq _021E92DE
	cmp r7, #0
	beq _021E92DE
	add r0, r5, #0
	bl sub_021997E8
	cmp r0, #0
	bne _021E92DE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E92DE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy77_21e9474
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E92EC: .word 0x00007FDF
	thumb_func_end ovy77_21e9288

	thumb_func_start ovy77_21e92f0
ovy77_21e92f0: ; 0x021E92F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199948
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy77_21e92f0

	thumb_func_start ovy77_21e9310
ovy77_21e9310: ; 0x021E9310
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199C6C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021E937A
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, [r4]
	mov r1, #5
	blx sub_0208D65C
	cmp r1, #0
	bne _021E9360
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
_021E9360:
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021E9370
	mov r0, #1
	str r0, [r4, #0xc]
_021E9370:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199C80
	pop {r3, r4, r5, pc}
_021E937A:
	add r0, r5, #0
	bl sub_0219980C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy77_21e9310

	thumb_func_start ovy77_21e9384
ovy77_21e9384: ; 0x021E9384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_021997E4
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #5
	add r0, r0, #1
	lsl r1, r1, #6
	blx sub_0208D65C
	str r1, [r4, #4]
	add r0, r1, #0
	mov r1, #0x28
	blx sub_0208D65C
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _021E9468
	lsl r2, r0, #2
	ldr r0, _021E946C ; =0x021E94E8
	ldr r1, _021E9470 ; =0x021E94C8
	ldr r0, [r0, r2]
	ldr r6, [r1, r2]
	str r0, [sp, #0x14]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0xdf
	str r0, [sp, #0x18]
_021E93CA:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_021997F4
	add r5, r0, #0
	beq _021E9468
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [r4]
	mov r0, #0x14
	bl sub_02005748
	add r0, #0xf
	str r0, [r4, #4]
	sub r0, #0xf
	mov r1, #6
	blx sub_0208D65C
	mov r1, #3
	sub r7, r1, r0
	ldr r0, [sp, #0x14]
	add r1, r7, #1
	mul r0, r1
	str r0, [r4, #8]
	add r0, r1, #0
	mul r0, r6
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r6, [r4, #0x14]
	bl sub_02005748
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne _021E942E
	ldr r1, [r4, #8]
	mov r7, #4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r1, r0
	str r0, [r4, #8]
_021E942E:
	lsl r1, r7, #0x10
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x10
	bl sub_0204C504
	mov r0, #0x18
	bl sub_02005748
	mov r1, #5
	mvn r1, r1
	sub r1, r1, r0
	add r0, sp, #0x1c
	strh r1, [r0]
	mov r0, #0xc0
	bl sub_02005748
	sub r0, #0x40
	add r1, sp, #0x1c
	strh r0, [r1, #2]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_02199C80
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021E93CA
_021E9468:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E946C: .word 0x021E94E8
_021E9470: .word 0x021E94C8
	thumb_func_end ovy77_21e9384

	thumb_func_start ovy77_21e9474
ovy77_21e9474: ; 0x021E9474
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	add r5, r0, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	ldr r0, [r4, #8]
	add r0, r0, #6
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r1, r2, r1
	str r1, [r4, #8]
	neg r1, r1
	lsl r2, r1, #1
	ldr r1, [sp, #4]
	add r0, r5, #0
	sub r1, r2, r1
	mov r2, #0
	bl sub_021997BC
	ldr r1, [r4, #8]
	ldr r2, [sp]
	neg r1, r1
	lsl r1, r1, #1
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_021997CC
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy77_21e9474
_021E94C8:
	.byte 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x37, 0x00, 0x01, 0x00, 0x00, 0x00, 0x22, 0x00, 0x23, 0x00, 0x21, 0x00, 0x20, 0x00, 0x2B, 0x00
	.byte 0x03, 0x03, 0x03, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0xC1, 0x90, 0x1E, 0x02
	.byte 0x25, 0x91, 0x1E, 0x02, 0x95, 0x91, 0x1E, 0x02, 0x09, 0x92, 0x1E, 0x02, 0x55, 0x92, 0x1E, 0x02
	.byte 0x89, 0x92, 0x1E, 0x02, 0xF1, 0x92, 0x1E, 0x02, 0x11, 0x93, 0x1E, 0x02, 0x37, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x22, 0x00, 0x23, 0x00, 0x21, 0x00, 0x20, 0x00, 0x2B, 0x00, 0x03, 0x03, 0x03, 0x00
	.byte 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0xC1, 0x90, 0x1E, 0x02, 0x25, 0x91, 0x1E, 0x02
	.byte 0x95, 0x91, 0x1E, 0x02, 0x09, 0x92, 0x1E, 0x02, 0x55, 0x92, 0x1E, 0x02, 0x89, 0x92, 0x1E, 0x02
	.byte 0xF1, 0x92, 0x1E, 0x02, 0x11, 0x93, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E94C8
