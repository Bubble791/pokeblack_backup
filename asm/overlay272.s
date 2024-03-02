    .include "macros/function.inc"
	.include "overlay272.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy272_21f7f80
ovy272_21f7f80: ; 0x021F7F80
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0x12
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x59
	lsl r2, r2, #0xc
	bl sub_0203A15C
	ldr r6, _021F7FCC ; =0x000017F4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x59
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx sub_020787A8
	sub r0, r6, #4
	str r5, [r4, r0]
	mov r0, #0x59
	bl sub_0200BB24
	ldr r1, _021F7FD0 ; =0x021F82C4
	add r0, r4, #0
	add r2, r4, #0
	mov r3, #0x59
	bl ovy272_21f8048
	add r0, r4, #0
	mov r1, #0
	bl sub_021F813C
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021F7FCC: .word 0x000017F4
_021F7FD0: .word 0x021F82C4
	thumb_func_end ovy272_21f7f80

	thumb_func_start ovy272_21f7fd4
ovy272_21f7fd4: ; 0x021F7FD4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021F8014 ; =0x000017C4
	add r6, r3, #0
	add r7, r0, #0
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021F7FFA
	mov r5, #0
	sub r4, #0x44
_021F7FE6:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021F7FF4
	bl sub_02048564
_021F7FF4:
	add r5, r5, #1
	cmp r5, #4
	blt _021F7FE6
_021F7FFA:
	add r0, r6, #0
	bl ovy272_21f810c
	bl sub_0200BB48
	add r0, r7, #0
	bl sub_0203AB10
	mov r0, #0x59
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F8014: .word 0x000017C4
	thumb_func_end ovy272_21f7fd4

	thumb_func_start ovy272_21f8018
ovy272_21f8018: ; 0x021F8018
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F802C
	cmp r0, #1
	beq _021F8032
	cmp r0, #2
	beq _021F8040
	b _021F8044
_021F802C:
	mov r0, #1
_021F802E:
	str r0, [r4]
	b _021F8044
_021F8032:
	add r0, r3, #0
	bl ovy272_21f806c
	cmp r0, #0
	beq _021F8044
	mov r0, #2
	b _021F802E
_021F8040:
	mov r0, #1
	pop {r4, pc}
_021F8044:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy272_21f8018

	thumb_func_start ovy272_21f8048
ovy272_21f8048: ; 0x021F8048
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	blx sub_020787A8
	add r0, r4, #0
	bl sub_0203A970
	str r0, [r5]
	str r7, [r5, #0x14]
	str r6, [r5, #0x18]
	strh r4, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy272_21f8048

	thumb_func_start ovy272_21f806c
ovy272_21f806c: ; 0x021F806C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _021F8108
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F8082: ; jump table
	.short _021F808C - _021F8082 - 2 ; case 0
	.short _021F809A - _021F8082 - 2 ; case 1
	.short _021F80CE - _021F8082 - 2 ; case 2
	.short _021F80DC - _021F8082 - 2 ; case 3
	.short _021F8104 - _021F8082 - 2 ; case 4
_021F808C:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #1
_021F8096:
	str r0, [r4, #4]
	b _021F8108
_021F809A:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x18]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _021F80B2
	ldrh r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x1c]
	blx r3
	b _021F80B4
_021F80B2:
	mov r0, #0
_021F80B4:
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x18]
	lsl r3, r0, #4
	ldr r1, [r2, r3]
	add r2, r2, r3
	ldr r0, [r4]
	ldr r2, [r2, #4]
	ldr r3, [r4, #8]
	bl sub_0203A988
	mov r0, #2
	b _021F8096
_021F80CE:
	ldr r0, [r4]
	bl sub_0203A978
	cmp r0, #0
	bne _021F8108
	mov r0, #3
	b _021F8096
_021F80DC:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x18]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _021F80F4
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	blx r2
	mov r0, #0
	str r0, [r4, #8]
_021F80F4:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	beq _021F8100
	mov r0, #0
	b _021F8096
_021F8100:
	mov r0, #4
	b _021F8096
_021F8104:
	mov r0, #1
	pop {r4, pc}
_021F8108:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy272_21f806c

	thumb_func_start ovy272_21f810c
ovy272_21f810c: ; 0x021F810C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F8120
	ldr r0, _021F8134 ; =0x021F8300
	ldr r2, _021F8138 ; =0x021F8304
	mov r1, #0
	bl sub_0203CB80
_021F8120:
	ldr r0, [r4]
	bl sub_0203A980
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	blx sub_020787A8
	pop {r4, pc}
	nop
_021F8134: .word 0x021F8300
_021F8138: .word 0x021F8304
	thumb_func_end ovy272_21f810c

	thumb_func_start sub_021F813C
sub_021F813C: ; 0x021F813C
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_021F813C

	thumb_func_start ovy272_21f8140
ovy272_21f8140: ; 0x021F8140
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021F817C ; =0x000001E7
	add r6, r2, #0
	str r1, [sp]
	ldr r3, _021F8180 ; =0x021F8320
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx sub_020787A8
	ldr r0, _021F8184 ; =0x000017F0
	ldr r0, [r5, r0]
	add r5, #0x28
	str r0, [r4, #0xc]
	str r5, [r4, #8]
	cmp r6, #1
	bne _021F8174
	mov r0, #1
	str r0, [r4, #4]
	b _021F8176
_021F8174:
	str r7, [r4, #4]
_021F8176:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F817C: .word 0x000001E7
_021F8180: .word 0x021F8320
_021F8184: .word 0x000017F0
	thumb_func_end ovy272_21f8140

	thumb_func_start ovy272_21f8188
ovy272_21f8188: ; 0x021F8188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F819E
	cmp r0, #1
	bne _021F819E
	add r0, r1, #0
	mov r1, #1
	bl sub_021F813C
_021F819E:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy272_21f8188

	thumb_func_start ovy272_21f81a8
ovy272_21f81a8: ; 0x021F81A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02017C60
	ldr r1, _021F81F4 ; =0x000017F0
	add r4, r0, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	ldr r1, [r1, #4]
	bl sub_02018540
	bl sub_0200C1F0
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_021E98A8
	bl sub_0200C200
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #0x1a
	bl ovy272_21f8264
	ldrh r0, [r4, #0x18]
	ldr r1, _021F81F8 ; =0x0000FFFF
	bl sub_02005DF4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F81F4: .word 0x000017F0
_021F81F8: .word 0x0000FFFF
	thumb_func_end ovy272_21f81a8

	thumb_func_start ovy272_21f81fc
ovy272_21f81fc: ; 0x021F81FC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021F825C ; =0x000017F0
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, r7]
	ldr r0, [r0, #4]
	bl sub_0201749C
	add r6, r0, #0
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x1e
	bl sub_02005E68
	ldr r0, [r4, r7]
	ldr r0, [r0]
	cmp r0, #0
	bne _021F8230
	add r0, r6, #0
	mov r1, #0x40
	mov r2, #0
	bl sub_0202ECDC
_021F8230:
	add r0, r5, #0
	add r0, #0xdd
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1f
	ldr r0, _021F8260 ; =0x000017E4
	str r1, [r4, r0]
	ldr r0, [r5, #0x34]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_020185B4
	add r0, r5, #0
	bl sub_02017C84
	add r0, r4, #0
	mov r1, #0
	bl sub_021F813C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F825C: .word 0x000017F0
_021F8260: .word 0x000017E4
	thumb_func_end ovy272_21f81fc

	thumb_func_start ovy272_21f8264
ovy272_21f8264: ; 0x021F8264
	push {r3, r4}
	ldrh r4, [r0]
	mov r3, #0x47
	lsl r3, r3, #4
	ldrh r2, [r1]
	cmp r4, r3
	bgt _021F827C
	bge _021F829C
	sub r3, r3, #5
	cmp r4, r3
	beq _021F829C
	b _021F8298
_021F827C:
	add r3, #0x19
	sub r3, r4, r3
	cmp r3, #3
	bhi _021F8298
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021F8290: ; jump table
	.short _021F8298 - _021F8290 - 2 ; case 0
	.short _021F8298 - _021F8290 - 2 ; case 1
	.short _021F829C - _021F8290 - 2 ; case 2
	.short _021F829C - _021F8290 - 2 ; case 3
_021F8298:
	ldr r3, _021F82B0 ; =0x0000048C
	strh r3, [r0]
_021F829C:
	ldr r3, _021F82B4 ; =0x0000047D
	cmp r2, r3
	beq _021F82AA
	add r0, r3, #3
	cmp r2, r0
	beq _021F82AA
	strh r3, [r1]
_021F82AA:
	pop {r3, r4}
	bx lr
	nop
_021F82B0: .word 0x0000048C
_021F82B4: .word 0x0000047D
	thumb_func_end ovy272_21f8264
_021F82B8:
	.byte 0x81, 0x7F, 0x1F, 0x02, 0x19, 0x80, 0x1F, 0x02
	.byte 0xD5, 0x7F, 0x1F, 0x02, 0x0F, 0x01, 0x00, 0x00, 0xA0, 0x70, 0x1F, 0x02, 0x41, 0x81, 0x1F, 0x02
	.byte 0x89, 0x81, 0x1F, 0x02, 0xA7, 0x00, 0x00, 0x00, 0xE0, 0x6C, 0x1D, 0x02, 0xA9, 0x81, 0x1F, 0x02
	.byte 0xFD, 0x81, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x5F, 0x70, 0x72, 0x6F, 0x63
	.byte 0x5F, 0x70, 0x61, 0x72, 0x61, 0x6D, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00
	.byte 0x62, 0x72, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F82B8
