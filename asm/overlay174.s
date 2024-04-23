    .include "macros/function.inc"
	.include "overlay174.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0219CE98
sub_0219CE98: ; 0x0219CE98
	mov r2, #0x92
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0219CE98

	thumb_func_start ovy174_219cea0
ovy174_219cea0: ; 0x0219CEA0
	push {r3, lr}
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0xc
	str r2, [r0, #0x1c]
	bl sub_020429F0
	mov r0, #0
	bl sub_02042860
	pop {r3, pc}
	thumb_func_end ovy174_219cea0

	thumb_func_start ovy174_219ceb8
ovy174_219ceb8: ; 0x0219CEB8
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219CECC
	add r0, r4, #0
	mov r1, #0
	bl sub_0219CE98
_0219CECC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy174_219ceb8

	thumb_func_start ovy174_219ced0
ovy174_219ced0: ; 0x0219CED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	add r5, r1, #0
	add r7, r2, #0
	bl sub_02026DC0
	mov r3, #0x9e
	lsl r3, r3, #2
	mov r2, #0x9e
	lsl r2, r2, #2
	ldrh r3, [r6, r3]
	add r1, r5, #0
	sub r2, #0x78
	add r4, r0, #0
	bl sub_02026E04
	lsl r6, r7, #5
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	lsl r3, r7, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_02027880
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02026FD8
	add r1, r6, #0
	add r7, r0, #0
	blx DC_FlushRange
	cmp r5, #1
	beq _0219CF40
	cmp r5, #3
	bne _0219CF4A
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	bl GXS_LoadOBJPltt
	b _0219CF4A
_0219CF40:
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	bl GXS_LoadBGPltt
_0219CF4A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02026E48
	add r0, r4, #0
	bl sub_02026DE8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219ced0

	thumb_func_start ovy174_219cf5c
ovy174_219cf5c: ; 0x0219CF5C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0219CF7E
	ldr r1, _0219CF90 ; =0x00000CB4
	mov r2, #2
	ldr r0, _0219CF94 ; =0x05000400
	ldr r1, [r4, r1]
	lsl r2, r2, #8
	blx MI_CpuCopy8
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	bl ovy174_219ced0
	pop {r4, pc}
_0219CF7E:
	ldr r0, _0219CF90 ; =0x00000CB4
	mov r2, #0x12
	ldr r0, [r4, r0]
	mov r1, #0
	lsl r2, r2, #4
	bl GXS_LoadBGPltt
	pop {r4, pc}
	nop
_0219CF90: .word 0x00000CB4
_0219CF94: .word 0x05000400
	thumb_func_end ovy174_219cf5c

	thumb_func_start ovy174_219cf98
ovy174_219cf98: ; 0x0219CF98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r1, _0219CFC8 ; =ovy174_219ceb8
	add r0, r4, #0
	bl sub_0219CE98
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0219CFC8: .word ovy174_219ceb8
	thumb_func_end ovy174_219cf98

	thumb_func_start ovy174_219cfcc
ovy174_219cfcc: ; 0x0219CFCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x9e
	add r5, r0, #0
	lsl r4, r4, #2
	ldrh r1, [r5, r4]
	mov r0, #0x1c
	bl sub_0204AA30
	ldrh r1, [r5, r4]
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	mov r1, #7
	add r6, r0, #0
	mov r7, #0
	bl Oam_LoadNCGRFile
	add r1, r4, #0
	add r1, #0x44
	str r0, [r5, r1]
	str r7, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldrh r0, [r5, r4]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_LoadNCLRFile
	add r1, r4, #0
	add r1, #0x40
	str r0, [r5, r1]
	ldrh r3, [r5, r4]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0xf
	bl Oam_LoadNCERFile
	add r4, #0x48
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy174_219cfcc

	thumb_func_start ovy174_219d02c
ovy174_219d02c: ; 0x0219D02C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r3, #0
	mov r3, #0xb2
	lsl r3, r3, #2
	add r7, r1, #0
	lsl r5, r0, #2
	add r4, r6, r3
	add r1, r2, #0
	ldr r2, [r4, r5]
	cmp r2, #0
	bne _0219D098
	add r2, sp, #0xc
	strh r7, [r2]
	strh r1, [r2, #2]
	ldr r1, [sp, #0x28]
	strh r1, [r2, #4]
	strb r0, [r2, #6]
	mov r0, #2
	strb r0, [r2, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r3, #0
	sub r0, #0x50
	ldrh r0, [r6, r0]
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #8]
	add r0, r3, #0
	sub r0, #0x14
	sub r1, #0xc
	sub r2, #0x10
	sub r3, #8
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	bl sub_0204C040
	str r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_0204C244
_0219D098:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219d02c

	thumb_func_start ovy174_219d09c
ovy174_219d09c: ; 0x0219D09C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xb2
	lsl r1, r1, #2
	lsl r5, r3, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	add r7, r2, #0
	cmp r0, #0
	beq _0219D0DC
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C178
	lsl r2, r6, #0x10
	add r0, sp, #0
	mov r1, #0
	ldrsh r1, [r0, r1]
	asr r2, r2, #0x10
	add r1, r1, r2
	strh r1, [r0]
	mov r1, #2
	ldrsh r2, [r0, r1]
	lsl r1, r7, #0x10
	asr r1, r1, #0x10
	add r1, r2, r1
	strh r1, [r0, #2]
	ldr r0, [r4, r5]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
_0219D0DC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy174_219d09c

	thumb_func_start ovy174_219d0e0
ovy174_219d0e0: ; 0x0219D0E0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xb2
	lsl r4, r4, #2
	add r4, r0, r4
	lsl r0, r3, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219D100
	add r3, sp, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
_0219D100:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy174_219d0e0

	thumb_func_start ovy174_219d104
ovy174_219d104: ; 0x0219D104
	push {r4, r5, r6, lr}
	mov r4, #0xba
	add r5, r0, #0
	lsl r4, r4, #2
	mov r0, #1
	ldr r2, [r5, r4]
	lsl r0, r1
	orr r0, r2
	mov r6, #1
	str r0, [r5, r4]
	bl MATH_CountPopulation
	cmp r0, #2
	blo _0219D124
	add r0, r4, #4
	str r6, [r5, r0]
_0219D124:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy174_219d104
_0219D128:
	.byte 0x93, 0x21, 0x89, 0x00, 0x41, 0x58, 0x05, 0x29
	.byte 0x08, 0xD0, 0x32, 0x22, 0x92, 0x01, 0x01, 0x23, 0x83, 0x50, 0x11, 0x1D, 0x43, 0x50, 0x20, 0x32
	.byte 0x83, 0x50, 0x70, 0x47, 0x07, 0x4A, 0x81, 0x58, 0x00, 0x29, 0x09, 0xD0, 0x11, 0x1C, 0x1C, 0x31
	.byte 0x41, 0x58, 0x00, 0x29, 0x04, 0xD0, 0x11, 0x1D, 0x01, 0x23, 0x43, 0x50, 0x08, 0x32, 0x83, 0x50
	.byte 0x70, 0x47, 0xC0, 0x46, 0x7C, 0x0C, 0x00, 0x00

	thumb_func_start ovy174_219d168
ovy174_219d168: ; 0x0219D168
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219D186
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0x25
	ldr r2, [r4]
	lsl r0, r0, #4
	str r2, [r1, r0]
_0219D186:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy174_219d168

	thumb_func_start ovy174_219d188
ovy174_219d188: ; 0x0219D188
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0219D1CE
	mov r7, #0x91
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_02017378
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02008B34
	ldr r0, [r5, r7]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200F6F4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0200F700
_0219D1CE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219d188
_0219D1D0:
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x28, 0x08, 0xDB, 0x04, 0x28, 0x06, 0xDA, 0x91, 0x22, 0x92, 0x00
	.byte 0x89, 0x58, 0x80, 0x00, 0x08, 0x18, 0x80, 0x68, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x28, 0x07, 0xDB, 0x04, 0x28, 0x05, 0xDA, 0xCF, 0x22, 0x12, 0x01, 0x89, 0x18, 0x00, 0x02
	.byte 0x08, 0x18, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy174_219d208
ovy174_219d208: ; 0x0219D208
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x91
	add r5, r3, #0
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	str r2, [sp]
	ldr r7, [r0]
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0219D246
	bl sub_0203FFC4
	cmp r6, r0
	beq _0219D246
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02017378
	add r4, #0x34
	add r1, r0, #0
	ldrh r3, [r5, r4]
	ldr r2, [sp]
	add r0, r7, #0
	bl sub_02011B30
	mov r1, #0xc9
	lsl r1, r1, #4
	str r0, [r5, r1]
_0219D246:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219d208

	thumb_func_start ovy174_219d248
ovy174_219d248: ; 0x0219D248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r6, r2, #0
	str r3, [sp, #4]
	bl sub_02040440
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bne _0219D29A
	bl sub_02042BC4
	cmp r0, #0
	beq _0219D29A
	mov r1, #0x26
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	mov r5, #0
	add r4, r0, r1
	mov r7, #6
_0219D270:
	add r0, r5, #0
	mul r0, r7
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _0219D294
	mov r1, #0x91
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, [sp]
	add sp, #8
	add r0, r1, r0
	strb r5, [r0, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0219D294:
	add r5, r5, #1
	cmp r5, #4
	blt _0219D270
_0219D29A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy174_219d248

	thumb_func_start ovy174_219d2a0
ovy174_219d2a0: ; 0x0219D2A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219D2CA
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219D2CA
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	blx MI_CpuCopy8
_0219D2CA:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy174_219d2a0

	thumb_func_start ovy174_219d2cc
ovy174_219d2cc: ; 0x0219D2CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r4, r2, #0
	ldr r6, [r0]
	add r0, r6, #0
	bl sub_02017934
	bl sub_02010044
	add r7, r0, #0
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0219D30E
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219D30E
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #4
	bl sub_020373EC
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02010078
_0219D30E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219d2cc

	thumb_func_start ovy174_219d310
ovy174_219d310: ; 0x0219D310
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x33
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219D330
	add r0, r4, #0
	bl ovy174_219cea0
	ldr r1, _0219D334 ; =ovy174_219cf98
	add r0, r4, #0
	bl sub_0219CE98
_0219D330:
	pop {r4, pc}
	nop
_0219D334: .word ovy174_219cf98
	thumb_func_end ovy174_219d310

	thumb_func_start ovy174_219d338
ovy174_219d338: ; 0x0219D338
	push {r3, r4, r5, lr}
	ldr r5, _0219D36C ; =0x00000CAC
	add r4, r0, #0
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	bl sub_020062A8
	cmp r0, #0
	bne _0219D368
	ldr r0, [r4, r5]
	cmp r0, #0x3c
	ble _0219D368
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	mov r0, #0
	bl sub_02042860
	ldr r1, _0219D370 ; =ovy174_219d310
	add r0, r4, #0
	bl sub_0219CE98
_0219D368:
	pop {r3, r4, r5, pc}
	nop
_0219D36C: .word 0x00000CAC
_0219D370: .word ovy174_219d310
	thumb_func_end ovy174_219d338

	thumb_func_start ovy174_219d374
ovy174_219d374: ; 0x0219D374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0x7f
	mov r2, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D3A2
	mov r0, #0
	mov r4, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	ldr r0, _0219D3A4 ; =0x00000CAC
	ldr r1, _0219D3A8 ; =ovy174_219d338
	str r4, [r5, r0]
	add r0, r5, #0
	bl sub_0219CE98
_0219D3A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D3A4: .word 0x00000CAC
_0219D3A8: .word ovy174_219d338
	thumb_func_end ovy174_219d374

	thumb_func_start ovy174_219d3ac
ovy174_219d3ac: ; 0x0219D3AC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xc9
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219D3C6
	ldr r1, _0219D3FC ; =0x0219F0BC
	add r0, sp, #4
	ldr r1, [r1]
	str r1, [sp, #4]
	b _0219D3CE
_0219D3C6:
	ldr r1, _0219D400 ; =0x0219F0D0
	add r0, sp, #0
	ldr r1, [r1]
	str r1, [sp]
_0219D3CE:
	add r1, r4, #0
	bl ovy174_219ddf0
	mov r0, #0x22
	add r1, r4, #0
	bl ovy174_219dea0
	ldr r0, _0219D404 ; =0x00000763
	bl GFL_SndSEPlay
	bl sub_02040440
	mov r1, #0x7f
	mov r2, #0xc
	bl sub_02040624
	ldr r1, _0219D408 ; =ovy174_219d374
	add r0, r4, #0
	bl sub_0219CE98
	add sp, #8
	pop {r4, pc}
	nop
_0219D3FC: .word 0x0219F0BC
_0219D400: .word 0x0219F0D0
_0219D404: .word 0x00000763
_0219D408: .word ovy174_219d374
	thumb_func_end ovy174_219d3ac

	thumb_func_start ovy174_219d40c
ovy174_219d40c: ; 0x0219D40C
	push {r4, r5, r6, lr}
	mov r6, #0x91
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r0, [r0, #8]
	bl sub_0201FE30
	add r4, r0, #0
	ldr r0, [r5, r6]
	ldr r0, [r0, #0xc]
	bl sub_0201FE30
	cmp r4, r0
	bgt _0219D42C
	add r0, r4, #0
_0219D42C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy174_219d40c

	thumb_func_start ovy174_219d430
ovy174_219d430: ; 0x0219D430
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x7a
	mov r2, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D4C8
	mov r5, #0x93
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #7
	bhi _0219D4C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D45A: ; jump table
	.short _0219D4C0 - _0219D45A - 2 ; case 0
	.short _0219D474 - _0219D45A - 2 ; case 1
	.short _0219D474 - _0219D45A - 2 ; case 2
	.short _0219D474 - _0219D45A - 2 ; case 3
	.short _0219D474 - _0219D45A - 2 ; case 4
	.short _0219D4C0 - _0219D45A - 2 ; case 5
	.short _0219D4C0 - _0219D45A - 2 ; case 6
	.short _0219D46A - _0219D45A - 2 ; case 7
_0219D46A:
	ldr r1, _0219D4CC ; =ovy174_219d3ac
	add r0, r4, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
_0219D474:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #8]
	bl sub_02020F0C
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_02020F0C
	add r0, r4, #0
	bl ovy174_219d40c
	cmp r0, #0
	beq _0219D4B8
	cmp r0, #1
	beq _0219D4A0
	cmp r0, #2
	beq _0219D4AA
	b _0219D4B8
_0219D4A0:
	sub r5, #8
	ldr r0, [r4, r5]
	mov r1, #1
	str r1, [r0, #0x1c]
	b _0219D4B8
_0219D4AA:
	sub r5, #8
	ldr r1, [r4, r5]
	ldr r0, [r1, #0x1c]
	cmp r0, #2
	ble _0219D4B8
	mov r0, #2
	str r0, [r1, #0x1c]
_0219D4B8:
	ldr r1, _0219D4D0 ; =ovy174_219cf98
	add r0, r4, #0
	bl sub_0219CE98
_0219D4C0:
	ldr r1, _0219D4D0 ; =ovy174_219cf98
	add r0, r4, #0
	bl sub_0219CE98
_0219D4C8:
	pop {r3, r4, r5, pc}
	nop
_0219D4CC: .word ovy174_219d3ac
_0219D4D0: .word ovy174_219cf98
	thumb_func_end ovy174_219d430

	thumb_func_start ovy174_219d4d4
ovy174_219d4d4: ; 0x0219D4D4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0x7e
	mov r2, #0xc
	mov r6, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D52E
	bl sub_02040440
	add r4, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _0219D534 ; =0x00000C02
	ldr r0, [r0, #4]
	mov r1, #0xff
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02042C18
	cmp r0, #0
	beq _0219D52E
	bl sub_02040440
	mov r1, #0x7a
	add r2, r6, #0
	bl sub_02040624
	ldr r1, _0219D538 ; =ovy174_219d430
	add r0, r5, #0
	bl sub_0219CE98
_0219D52E:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0219D534: .word 0x00000C02
_0219D538: .word ovy174_219d430
	thumb_func_end ovy174_219d4d4

	thumb_func_start ovy174_219d53c
ovy174_219d53c: ; 0x0219D53C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0x7d
	mov r2, #0xc
	mov r4, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D59C
	bl sub_02042BC4
	cmp r0, #0
	beq _0219D588
	bl sub_02040440
	mov r3, #0x91
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r1, _0219D5A0 ; =0x00000C05
	mov r2, #4
	add r3, #0x18
	bl sub_02042BE8
	cmp r0, #0
	beq _0219D59C
	bl sub_02040440
	mov r1, #0x7e
	add r2, r4, #0
	bl sub_02040624
	ldr r1, _0219D5A4 ; =ovy174_219d4d4
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
_0219D588:
	bl sub_02040440
	mov r1, #0x7e
	add r2, r4, #0
	bl sub_02040624
	ldr r1, _0219D5A4 ; =ovy174_219d4d4
	add r0, r5, #0
	bl sub_0219CE98
_0219D59C:
	pop {r3, r4, r5, pc}
	nop
_0219D5A0: .word 0x00000C05
_0219D5A4: .word ovy174_219d4d4
	thumb_func_end ovy174_219d53c

	thumb_func_start ovy174_219d5a8
ovy174_219d5a8: ; 0x0219D5A8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0x79
	mov r2, #0xc
	mov r4, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D60C
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #9
	beq _0219D5D2
	cmp r0, #0xa
	beq _0219D5D2
	cmp r0, #0xb
	bne _0219D5DE
_0219D5D2:
	ldr r1, _0219D610 ; =ovy174_219cf98
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #8
	pop {r4, r5, r6, pc}
_0219D5DE:
	add r6, sp, #0
	add r0, r6, #0
	bl OS_GetMacAddress
	bl sub_02040440
	ldr r1, _0219D614 ; =0x00000C04
	mov r2, #6
	add r3, r6, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _0219D60C
	bl sub_02040440
	mov r1, #0x7d
	add r2, r4, #0
	bl sub_02040624
	ldr r1, _0219D618 ; =ovy174_219d53c
	add r0, r5, #0
	bl sub_0219CE98
_0219D60C:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D610: .word ovy174_219cf98
_0219D614: .word 0x00000C04
_0219D618: .word ovy174_219d53c
	thumb_func_end ovy174_219d5a8

	thumb_func_start ovy174_219d61c
ovy174_219d61c: ; 0x0219D61C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #7
	bne _0219D680
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_02017238
	add r7, sp, #0
	add r1, r7, #0
	bl sub_0200A3C4
	bl sub_02040440
	ldr r4, _0219D6AC ; =0x00000C03
	mov r2, #0xc
	add r1, r4, #0
	add r3, r7, #0
	mov r6, #0xc
	bl sub_02042BE8
	cmp r0, #0
	beq _0219D6A6
	bl sub_02040440
	mov r1, #0x79
	add r2, r6, #0
	bl sub_02040624
	ldr r1, _0219D6B0 ; =ovy174_219d5a8
	add r0, r5, #0
	bl sub_0219CE98
	add r0, r4, #0
	add r0, #0xbd
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D6A6
	bl sub_0202DA54
	mov r0, #0
	add r4, #0xbd
	add sp, #0xc
	str r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_0219D680:
	bl sub_02040440
	mov r1, #0x79
	mov r2, #0xc
	bl sub_02040624
	mov r4, #0x33
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219D69E
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r4]
_0219D69E:
	ldr r1, _0219D6B0 ; =ovy174_219d5a8
	add r0, r5, #0
	bl sub_0219CE98
_0219D6A6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D6AC: .word 0x00000C03
_0219D6B0: .word ovy174_219d5a8
	thumb_func_end ovy174_219d61c

	thumb_func_start ovy174_219d6b4
ovy174_219d6b4: ; 0x0219D6B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02040440
	mov r1, #0x7b
	mov r2, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D72C
	bl sub_02042A78
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	sub r0, #9
	cmp r0, #1
	bhi _0219D6E2
	mov r0, #0
	str r0, [sp]
_0219D6E2:
	mov r5, #0
	cmp r7, #0
	ble _0219D714
_0219D6E8:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_02017378
	add r4, r0, #0
	bl sub_02008BFC
	cmp r0, #0x16
	beq _0219D70E
	add r0, r4, #0
	bl sub_02008BFC
	cmp r0, #0x17
	beq _0219D70E
	mov r0, #0
	str r0, [sp]
_0219D70E:
	add r5, r5, #1
	cmp r5, r7
	blt _0219D6E8
_0219D714:
	ldr r0, [sp]
	cmp r0, #0
	beq _0219D724
	ldr r1, _0219D730 ; =ovy174_219d8c4
	add r0, r6, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
_0219D724:
	ldr r1, _0219D734 ; =ovy174_219d61c
	add r0, r6, #0
	bl sub_0219CE98
_0219D72C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D730: .word ovy174_219d8c4
_0219D734: .word ovy174_219d61c
	thumb_func_end ovy174_219d6b4

	thumb_func_start ovy174_219d738
ovy174_219d738: ; 0x0219D738
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02040440
	add r6, r0, #0
	bl sub_02008B08
	add r4, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201736C
	lsl r2, r4, #0x10
	add r3, r0, #0
	ldr r1, _0219D77C ; =0x00000C01
	add r0, r6, #0
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _0219D77A
	bl sub_02040440
	mov r1, #0x7b
	mov r2, #0xc
	bl sub_02040624
	ldr r1, _0219D780 ; =ovy174_219d6b4
	add r0, r5, #0
	bl sub_0219CE98
_0219D77A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D77C: .word 0x00000C01
_0219D780: .word ovy174_219d6b4
	thumb_func_end ovy174_219d738

	thumb_func_start ovy174_219d784
ovy174_219d784: ; 0x0219D784
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x7c
	mov r2, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D7DA
	bl sub_0203FFC4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #4
	bhi _0219D7D2
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0219D7B2: ; jump table
	.short _0219D7D2 - _0219D7B2 - 2 ; case 0
	.short _0219D7BC - _0219D7B2 - 2 ; case 1
	.short _0219D7BC - _0219D7B2 - 2 ; case 2
	.short _0219D7BC - _0219D7B2 - 2 ; case 3
	.short _0219D7BC - _0219D7B2 - 2 ; case 4
_0219D7BC:
	mov r3, #1
	sub r0, r3, r0
	lsl r0, r0, #2
	add r3, r4, r0
	add r0, r1, #4
	ldr r3, [r3, r0]
	cmp r2, r3
	ble _0219D7D2
	sub r1, #8
	ldr r0, [r4, r1]
	str r3, [r0, #0x1c]
_0219D7D2:
	ldr r1, _0219D7DC ; =ovy174_219d738
	add r0, r4, #0
	bl sub_0219CE98
_0219D7DA:
	pop {r4, pc}
	.align 2, 0
_0219D7DC: .word ovy174_219d738
	thumb_func_end ovy174_219d784

	thumb_func_start ovy174_219d7e0
ovy174_219d7e0: ; 0x0219D7E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ovy174_219e040
	mov r0, #0xcb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0
	bl ovy174_219ddf0
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	ldr r1, _0219D810 ; =ovy174_219d944
	add r0, r4, #0
	bl sub_0219CE98
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219D810: .word ovy174_219d944
	thumb_func_end ovy174_219d7e0

	thumb_func_start ovy174_219d814
ovy174_219d814: ; 0x0219D814
	push {r4, r5, r6, lr}
	mov r6, #0x33
	add r5, r0, #0
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219D864
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r6]
	mov r0, #6
	bl sub_02045B7C
	cmp r4, #0
	bne _0219D854
	add r0, r5, #0
	bl ovy174_219e040
	add r0, r5, #0
	bl ovy174_219cea0
	add r0, r5, #0
	ldr r1, _0219D868 ; =ovy174_219cf98
	b _0219D858
_0219D854:
	ldr r1, _0219D86C ; =ovy174_219d7e0
	add r0, r5, #0
_0219D858:
	bl sub_0219CE98
	add r0, r5, #0
	mov r1, #0
	bl ovy174_219cf5c
_0219D864:
	pop {r4, r5, r6, pc}
	nop
_0219D868: .word ovy174_219cf98
_0219D86C: .word ovy174_219d7e0
	thumb_func_end ovy174_219d814

	thumb_func_start ovy174_219d870
ovy174_219d870: ; 0x0219D870
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219D8BC ; =0x0219F0B4
	mov r6, #0xcb
	ldr r0, [r0]
	lsl r6, r6, #4
	str r0, [sp, #8]
	mov r3, #0x9e
	ldr r4, [r5, r6]
	mov r0, #0x20
	lsl r3, r3, #2
	str r0, [sp]
	ldrh r0, [r5, r3]
	add r7, sp, #8
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	sub r3, #0xf8
	bl sub_0204B0B8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	str r4, [r5, r6]
	bl ovy174_219dc1c
	bl sub_020232D8
	ldr r1, _0219D8C0 ; =ovy174_219d814
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D8BC: .word 0x0219F0B4
_0219D8C0: .word ovy174_219d814
	thumb_func_end ovy174_219d870

	thumb_func_start ovy174_219d8c4
ovy174_219d8c4: ; 0x0219D8C4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x91
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r4, _0219D914 ; =0x000010F0
	ldr r1, [r1]
	add r0, r5, r4
	bl sub_02036DC0
	bl sub_02040440
	add r1, r5, r4
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0219D918 ; =0x00000C06
	mov r1, #0xff
	mov r3, #0xc4
	bl sub_02042C18
	cmp r0, #0
	beq _0219D90E
	bl sub_02040440
	mov r1, #0x80
	mov r2, #0xc
	bl sub_02040624
	ldr r1, _0219D91C ; =ovy174_219d920
	add r0, r5, #0
	bl sub_0219CE98
_0219D90E:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0219D914: .word 0x000010F0
_0219D918: .word 0x00000C06
_0219D91C: .word ovy174_219d920
	thumb_func_end ovy174_219d8c4

	thumb_func_start ovy174_219d920
ovy174_219d920: ; 0x0219D920
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #0x80
	mov r2, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D93C
	ldr r1, _0219D940 ; =ovy174_219d61c
	add r0, r4, #0
	bl sub_0219CE98
_0219D93C:
	pop {r4, pc}
	nop
_0219D940: .word ovy174_219d61c
	thumb_func_end ovy174_219d920

	thumb_func_start ovy174_219d944
ovy174_219d944: ; 0x0219D944
	push {r3, r4, r5, lr}
	mov r4, #0x33
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _0219D97C
	add r0, r1, #0
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219D984
	ldr r0, [r5, r4]
	bl sub_0202DC00
	ldr r0, [r5, r4]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r4]
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _0219D9C4 ; =ovy174_219d870
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
_0219D97C:
	mov r1, #0
	bl ovy174_219dcdc
	pop {r3, r4, r5, pc}
_0219D984:
	bl sub_02040440
	mov r1, #0x78
	mov r2, #0xc
	mov r4, #0xc
	bl sub_02040664
	cmp r0, #0
	beq _0219D9C0
	bl sub_02040440
	mov r3, #0x93
	lsl r3, r3, #2
	lsl r1, r4, #8
	mov r2, #4
	add r3, r5, r3
	bl sub_02042BE8
	cmp r0, #0
	beq _0219D9C0
	bl sub_02040440
	mov r1, #0x7c
	add r2, r4, #0
	bl sub_02040624
	ldr r1, _0219D9C8 ; =ovy174_219d784
	add r0, r5, #0
	bl sub_0219CE98
_0219D9C0:
	pop {r3, r4, r5, pc}
	nop
_0219D9C4: .word ovy174_219d870
_0219D9C8: .word ovy174_219d784
	thumb_func_end ovy174_219d944

	thumb_func_start ovy174_219d9cc
ovy174_219d9cc: ; 0x0219D9CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	ldr r1, _0219DA00 ; =0x0219F148
	lsl r0, r0, #0xa
	mov r2, #7
	add r3, r4, #0
	bl sub_02040C20
	bl sub_02040440
	mov r1, #0x78
	mov r2, #0xc
	bl sub_02040624
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	ldr r1, _0219DA04 ; =ovy174_219d944
	add r0, r4, #0
	bl sub_0219CE98
	pop {r4, pc}
	.align 2, 0
_0219DA00: .word 0x0219F148
_0219DA04: .word ovy174_219d944
	thumb_func_end ovy174_219d9cc

	thumb_func_start ovy174_219da08
ovy174_219da08: ; 0x0219DA08
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _0219DA30
	mov r0, #0x26
	lsl r0, r0, #4
	mov r5, #0
	add r4, r7, r0
	mov r6, #6
_0219DA1E:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	add r1, r5, #0
	bl sub_020429E0
	add r5, r5, #1
	cmp r5, #4
	blt _0219DA1E
_0219DA30:
	ldr r1, _0219DA3C ; =ovy174_219d9cc
	add r0, r7, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DA3C: .word ovy174_219d9cc
	thumb_func_end ovy174_219da08

	thumb_func_start ovy174_219da40
ovy174_219da40: ; 0x0219DA40
	push {r3, r4}
	ldr r3, _0219DA70 ; =0x00000C7C
	mov r2, #1
	add r4, r3, #0
	str r1, [r0, r3]
	add r4, #0x10
	str r2, [r0, r4]
	add r4, r3, #0
	add r4, #0x18
	str r2, [r0, r4]
	mov r4, #0x93
	lsl r4, r4, #2
	ldr r4, [r0, r4]
	cmp r4, #5
	bne _0219DA6A
	cmp r1, #0
	bne _0219DA6A
	add r1, r3, #4
	str r2, [r0, r1]
	add r3, #8
	str r2, [r0, r3]
_0219DA6A:
	pop {r3, r4}
	bx lr
	nop
_0219DA70: .word 0x00000C7C
	thumb_func_end ovy174_219da40

	thumb_func_start ovy174_219da74
ovy174_219da74: ; 0x0219DA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	ldr r0, _0219DBF4 ; =0x0219F118
	bl sub_02046C40
	ldr r0, _0219DBF8 ; =0x0219F108
	bl sub_02044710
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r4, _0219DBFC ; =0x0219F180
	add r3, sp, #0xac
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #0
	bl sub_02044F90
	ldr r6, _0219DC00 ; =0x0219F1A0
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	mov r7, #1
	bl sub_0204476C
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #1
	bl sub_02044F90
	ldr r6, _0219DC04 ; =0x0219F1C0
	add r3, sp, #0x6c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	mov r6, #4
	bl sub_0204476C
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	ldr r6, _0219DC08 ; =0x0219F1E0
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #5
	bl sub_02044F90
	ldr r6, _0219DC0C ; =0x0219F200
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r6, _0219DC10 ; =0x0219F220
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #7
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #7
	bl sub_02044F90
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DBF4: .word 0x0219F118
_0219DBF8: .word 0x0219F108
_0219DBFC: .word 0x0219F180
_0219DC00: .word 0x0219F1A0
_0219DC04: .word 0x0219F1C0
_0219DC08: .word 0x0219F1E0
_0219DC0C: .word 0x0219F200
_0219DC10: .word 0x0219F220
	thumb_func_end ovy174_219da74
_0219DC14:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy174_219dc1c
ovy174_219dc1c: ; 0x0219DC1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r6, #0x9e
	add r5, r0, #0
	lsl r6, r6, #2
	ldrh r1, [r5, r6]
	ldr r4, _0219DCD4 ; =0x00000CC8
	mov r0, #2
	str r1, [sp]
	add r2, sp, #0
	strb r0, [r2, #4]
	add r0, r5, r4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x20
	strb r0, [r2, #0x10]
	mov r0, #0xd
	strb r0, [r2, #0x11]
	strb r0, [r2, #0x12]
	mov r0, #3
	strb r0, [r2, #0x13]
	mov r0, #0x64
	bl GFL_StrBufCreate
	add r2, r0, #0
	add r0, r6, #0
	str r2, [r5, r4]
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl GFL_MsgDataLoadStrbuf
	ldr r7, _0219DCD8 ; =0x000039E3
	add r0, r4, #4
	strh r7, [r5, r0]
	ldrh r1, [r5, r6]
	mov r0, #0x64
	bl GFL_StrBufCreate
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x1b
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	add r0, #0x10
	strh r7, [r5, r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r1, [r5, r0]
	sub r1, r4, #4
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_0202D974
	sub r4, #8
	str r0, [r5, r4]
	sub r6, #0x2c
	ldr r1, [r5, r6]
	cmp r1, #9
	beq _0219DCB8
	cmp r1, #0xa
	beq _0219DCB8
	cmp r1, #0xb
	beq _0219DCB8
	mov r1, #1
	bl sub_0202DED4
_0219DCB8:
	ldr r4, _0219DCD4 ; =0x00000CC8
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r4, #0xc
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #1
	bl ovy174_219cf5c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DCD4: .word 0x00000CC8
_0219DCD8: .word 0x000039E3
	thumb_func_end ovy174_219dc1c

	thumb_func_start ovy174_219dcdc
ovy174_219dcdc: ; 0x0219DCDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r6, #0x9e
	add r4, r0, #0
	lsl r6, r6, #2
	ldrh r2, [r4, r6]
	mov r7, #1
	mov r3, #0x20
	str r2, [sp]
	str r7, [sp, #0xc]
	add r0, sp, #0
	strb r3, [r0, #0x10]
	mov r3, #0x18
	strb r3, [r0, #0x11]
	mov r3, #0xd
	strb r3, [r0, #0x12]
	mov r3, #3
	strb r3, [r0, #0x13]
	cmp r1, #0
	ldr r5, _0219DDE8 ; =0x00000CC8
	beq _0219DD84
	mov r1, #2
	strb r1, [r0, #4]
	add r0, r4, r5
	str r0, [sp, #8]
	mov r0, #0x64
	add r1, r2, #0
	bl GFL_StrBufCreate
	add r2, r0, #0
	add r0, r6, #0
	str r2, [r4, r5]
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x23
	bl GFL_MsgDataLoadStrbuf
	ldr r0, _0219DDEC ; =0x000039E3
	add r1, r5, #4
	strh r0, [r4, r1]
	add r1, r5, #0
	add r1, #8
	mov r0, #0
	str r0, [r4, r1]
	ldrh r1, [r4, r6]
	mov r0, #0x64
	bl GFL_StrBufCreate
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xc
	add r6, #0x10
	str r2, [r4, r0]
	ldr r0, [r4, r6]
	mov r1, #2
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	ldr r0, _0219DDEC ; =0x000039E3
	add r1, #0x10
	strh r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x14
	str r7, [r4, r0]
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, sp, #0
	bl sub_0202D974
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r5]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	sub r5, #0xc
	mov r0, #0
	str r0, [r4, r5]
	b _0219DDC6
_0219DD84:
	strb r7, [r0, #4]
	add r0, r4, r5
	str r0, [sp, #8]
	mov r0, #0x64
	add r1, r2, #0
	bl GFL_StrBufCreate
	add r2, r0, #0
	str r2, [r4, r5]
	add r6, #0x10
	ldr r0, [r4, r6]
	mov r1, #2
	bl GFL_MsgDataLoadStrbuf
	ldr r1, _0219DDEC ; =0x000039E3
	add r0, r5, #4
	strh r1, [r4, r0]
	add r0, r5, #0
	add r0, #8
	str r7, [r4, r0]
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, sp, #0
	bl sub_0202D974
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r5]
	bl GFL_StrBufFree
	sub r5, #0xc
	str r7, [r4, r5]
_0219DDC6:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #9
	beq _0219DDE4
	cmp r0, #0xa
	beq _0219DDE4
	cmp r0, #0xb
	beq _0219DDE4
	mov r0, #0x33
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0202DED4
_0219DDE4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DDE8: .word 0x00000CC8
_0219DDEC: .word 0x000039E3
	thumb_func_end ovy174_219dcdc

	thumb_func_start ovy174_219ddf0
ovy174_219ddf0: ; 0x0219DDF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x9e
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x20
	lsl r4, r4, #2
	str r0, [sp]
	ldrh r0, [r5, r4]
	add r3, r4, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	sub r3, #0xd8
	mov r7, #5
	bl sub_0204B0B8
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219DE4E
	str r7, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	add r1, r4, #4
	str r0, [r5, r1]
	bl sub_0204826C
	add r0, r4, #4
	add r4, #0x8c
	ldr r2, [r5, r4]
	ldr r0, [r5, r0]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
_0219DE4E:
	mov r4, #0x9f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #0xcb
	add r2, r4, #0
	ldr r1, [r6]
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	add r2, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r6]
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	add r1, #0x14
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x1c
	ldr r3, [r5, r3]
	mov r1, #4
	mov r2, #4
	bl sub_02021CFC
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy174_219ddf0

	thumb_func_start ovy174_219dea0
ovy174_219dea0: ; 0x0219DEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0xa
	add r5, r1, #0
	lsl r4, r4, #6
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219DEE2
	mov r0, #4
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #1
	mov r2, #8
	mov r3, #0x12
	bl BmpWin_CreateDynamic
	str r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	add r4, #0x84
	ldr r2, [r5, r4]
	mov r1, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
_0219DEE2:
	mov r7, #0xa
	lsl r7, r7, #6
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	add r0, r7, #0
	add r2, r7, #0
	add r0, #8
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	sub r0, #0x3c
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_02017238
	bl sub_0200A150
	mov r4, #1
	add r2, r0, #0
	str r4, [sp]
	add r0, r7, #0
	str r4, [sp, #4]
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	str r4, [sp]
	add r0, r7, #0
	str r4, [sp, #4]
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0x20
	mov r3, #2
	bl StringSetNumber
	add r0, r7, #0
	add r1, r7, #0
	add r2, r7, #0
	add r0, #0xc
	add r1, #0x18
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r3, r7, #0
	str r1, [sp]
	add r3, #0x18
	ldr r3, [r5, r3]
	mov r1, #0
	mov r2, #2
	bl sub_02021CFC
	ldr r0, [r5, r7]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy174_219dea0

	thumb_func_start ovy174_219df7c
ovy174_219df7c: ; 0x0219DF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0xa
	add r5, r1, #0
	lsl r4, r4, #6
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219DFA8
	mov r0, #4
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #1
	mov r2, #8
	mov r3, #0x17
	bl BmpWin_CreateDynamic
	str r0, [r5, r4]
_0219DFA8:
	mov r4, #0xa
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add r2, r4, #0
	add r2, #0x84
	ldr r2, [r5, r2]
	ldr r0, [r5, r4]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0xe
	mov r7, #0
	bl sub_02024E80
	add r0, r4, #0
	add r2, r4, #0
	add r0, #8
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	bl sub_02042A48
	add r2, r0, #0
	add r0, r4, #0
	str r7, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	bl StringSetNumber
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0xc
	add r1, #0x18
	add r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x18
	ldr r3, [r5, r3]
	mov r1, #0
	mov r2, #2
	bl sub_02021CFC
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy174_219df7c

	thumb_func_start ovy174_219e040
ovy174_219e040: ; 0x0219E040
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219E052
	bl sub_02048210
_0219E052:
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219E060
	bl sub_02048210
_0219E060:
	mov r0, #0x9f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy174_219e040

	thumb_func_start ovy174_219e070
ovy174_219e070: ; 0x0219E070
	push {r3, r4, r5, lr}
	mov r4, #0x9e
	add r5, r0, #0
	lsl r4, r4, #2
	ldrh r0, [r5, r4]
	bl sub_020444A4
	ldrh r0, [r5, r4]
	bl sub_02048080
	bl sub_020232D0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy174_219e070

	thumb_func_start ovy174_219e08c
ovy174_219e08c: ; 0x0219E08C
	push {r3, lr}
	bl sub_02044528
	bl sub_020480A8
	pop {r3, pc}
	thumb_func_end ovy174_219e08c

	thumb_func_start ovy174_219e098
ovy174_219e098: ; 0x0219E098
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0xb2
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219E0B0
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_0219E0B0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy174_219e098

	thumb_func_start ovy174_219e0b4
ovy174_219e0b4: ; 0x0219E0B4
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0xca
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219E0D6
	ldr r1, _0219E1A8 ; =0x0219F0EC
	add r0, sp, #0x20
	ldr r1, [r1]
	str r1, [sp, #0x20]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E0D6:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #7
	bne _0219E11E
	sub r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_02017238
	bl sub_0200A150
	cmp r0, #0x20
	bne _0219E104
	ldr r1, _0219E1AC ; =0x0219F0E8
	add r0, sp, #0x1c
	ldr r1, [r1]
	str r1, [sp, #0x1c]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E104:
	ldr r1, _0219E1B0 ; =0x0219F0D8
	add r0, sp, #0x18
	ldr r1, [r1]
	str r1, [sp, #0x18]
	add r1, r4, #0
	bl ovy174_219ddf0
	mov r0, #0x22
	add r1, r4, #0
	bl ovy174_219dea0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E11E:
	cmp r1, #6
	bne _0219E134
	ldr r1, _0219E1B4 ; =0x0219F0C4
	add r0, sp, #0x14
	ldr r1, [r1]
	str r1, [sp, #0x14]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E134:
	cmp r1, #5
	bne _0219E14A
	ldr r1, _0219E1B8 ; =0x0219F0DC
	add r0, sp, #0x10
	ldr r1, [r1]
	str r1, [sp, #0x10]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E14A:
	cmp r1, #9
	bne _0219E168
	ldr r1, _0219E1BC ; =0x0219F0D4
	add r0, sp, #0xc
	ldr r1, [r1]
	str r1, [sp, #0xc]
	add r1, r4, #0
	bl ovy174_219ddf0
	mov r0, #0x27
	add r1, r4, #0
	bl ovy174_219df7c
	add sp, #0x24
	pop {r3, r4, pc}
_0219E168:
	cmp r1, #0xa
	bne _0219E17E
	ldr r1, _0219E1C0 ; =0x0219F0C8
	add r0, sp, #8
	ldr r1, [r1]
	str r1, [sp, #8]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E17E:
	cmp r1, #0xb
	bne _0219E194
	ldr r1, _0219E1C4 ; =0x0219F0F8
	add r0, sp, #4
	ldr r1, [r1]
	str r1, [sp, #4]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
_0219E194:
	ldr r1, _0219E1C8 ; =0x0219F0F0
	add r0, sp, #0
	ldr r1, [r1]
	str r1, [sp]
	add r1, r4, #0
	bl ovy174_219ddf0
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_0219E1A8: .word 0x0219F0EC
_0219E1AC: .word 0x0219F0E8
_0219E1B0: .word 0x0219F0D8
_0219E1B4: .word 0x0219F0C4
_0219E1B8: .word 0x0219F0DC
_0219E1BC: .word 0x0219F0D4
_0219E1C0: .word 0x0219F0C8
_0219E1C4: .word 0x0219F0F8
_0219E1C8: .word 0x0219F0F0
	thumb_func_end ovy174_219e0b4

	thumb_func_start ovy174_219e1cc
ovy174_219e1cc: ; 0x0219E1CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_020232D8
	mov r4, #0x9e
	lsl r4, r4, #2
	ldrh r2, [r5, r4]
	mov r0, #0xb
	mov r1, #0xc8
	bl sub_020241E4
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy174_219e070
	add r0, r5, #0
	bl ovy174_219da74
	ldrh r1, [r5, r4]
	mov r0, #0xc8
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	ldrh r1, [r5, r4]
	mov r0, #0xc8
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	ldrh r0, [r5, r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r7, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r3, [r5, r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3e
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldrh r1, [r5, r4]
	mov r0, #0x1c
	bl sub_0204AA30
	str r7, [sp]
	ldrh r1, [r5, r4]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r6, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, r4]
	mov r1, #6
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AE3C
	add r1, r4, #0
	add r1, #0x84
	str r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0x2c
	ldr r1, [r5, r1]
	cmp r1, #5
	beq _0219E28C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r4]
	mov r1, #0xd
	str r0, [sp, #0xc]
	add r0, r6, #0
	b _0219E2BE
_0219E28C:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r4]
	mov r1, #0xd
	add r2, r7, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_0204AFB0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r5, r0]
	mov r1, #0xe
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r4]
	str r0, [sp, #0xc]
	add r0, r6, #0
_0219E2BE:
	mov r2, #1
	add r3, r7, #0
	bl sub_0204AFB0
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r4, #0x9e
	lsl r4, r4, #2
	ldrh r1, [r5, r4]
	mov r0, #0x1d
	bl sub_0204AA30
	mov r7, #0
	str r7, [sp]
	ldrh r1, [r5, r4]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r6, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, r4]
	mov r1, #4
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AE3C
	add r1, r4, #0
	add r1, #0x90
	str r0, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r4]
	mov r1, #9
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	add r0, r6, #0
	bl GFL_ArcToolFree
	ldrh r3, [r5, r4]
	mov r0, #5
	mov r1, #0xe
	mov r2, #0
	bl sub_02024D20
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r5, r1]
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204E060
	add r0, r5, #0
	bl ovy174_219e0b4
	ldrh r2, [r5, r4]
	ldr r0, _0219E4D4 ; =0x02093F08
	ldr r1, _0219E4D8 ; =0x0219F118
	bl sub_0204B6A8
	ldrh r2, [r5, r4]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	add r1, r4, #0
	add r1, #0x3c
	str r0, [r5, r1]
	ldr r0, _0219E4DC ; =0x0219DC15
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	ldrh r0, [r5, r4]
	bl sub_02021998
	ldr r6, _0219E4E0 ; =0x00000CB8
	add r2, r4, #0
	str r0, [r5, r6]
	ldrh r0, [r5, r4]
	add r2, #0x18
	mov r1, #9
	str r0, [sp]
	ldr r2, [r5, r2]
	ldr r3, [r5, r6]
	mov r0, #6
	bl sub_0202E168
	add r6, #0xc
	str r0, [r5, r6]
	add r0, r5, #0
	bl ovy174_219cfcc
	sub r4, #0x2c
	ldr r0, [r5, r4]
	cmp r0, #5
	beq _0219E3DE
	mov r0, #0xa
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x39
	mov r2, #0x9a
	mov r3, #2
	bl ovy174_219d02c
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #0x71
	mov r3, #4
	bl ovy174_219d02c
	mov r0, #0xb
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xc8
	mov r2, #0x26
	add r3, r7, #0
	bl ovy174_219d02c
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #0x4d
	b _0219E454
_0219E3DE:
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x39
	mov r2, #0x9a
	add r3, r7, #0
	bl ovy174_219d02c
	mov r0, #5
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xc6
	mov r2, #0x9a
	mov r3, #1
	bl ovy174_219d02c
	mov r0, #6
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xc8
	mov r2, #0x26
	mov r3, #2
	bl ovy174_219d02c
	mov r0, #7
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x37
	mov r2, #0x26
	mov r3, #3
	bl ovy174_219d02c
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0x92
	mov r3, #6
	str r7, [sp]
	bl ovy174_219d02c
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #0x92
	mov r3, #7
	bl ovy174_219d02c
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0x2e
	mov r3, #4
	str r7, [sp]
	bl ovy174_219d02c
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #0x2e
_0219E454:
	mov r3, #5
	bl ovy174_219d02c
	mov r0, #0x13
	bl sub_02046D38
	mov r0, #0x17
	bl sub_02046DC0
	mov r4, #0x9e
	lsl r4, r4, #2
	add r0, r4, #0
	ldrh r1, [r5, r4]
	sub r0, #0x36
	strh r1, [r5, r0]
	add r1, r4, #0
	sub r1, #0x36
	ldrh r1, [r5, r1]
	mov r0, #0x1c
	bl sub_0204AA30
	sub r4, #0x36
	ldrh r3, [r5, r4]
	mov r1, #2
	add r2, sp, #0x18
	str r0, [sp, #0x10]
	bl sub_0204B37C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r2, #0x12
	ldr r0, [r0, #0xc]
	add r1, r5, #0
	lsl r2, r2, #4
	blx MI_CpuCopy8
	mov r4, #0
	mov r7, #0x20
	mov r6, #8
_0219E4A2:
	add r1, r4, #0
	sub r0, r6, r4
	add r1, #9
	lsl r0, r0, #5
	lsl r1, r1, #5
	add r0, r5, r0
	add r1, r5, r1
	add r2, r7, #0
	blx MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #9
	blt _0219E4A2
	ldr r0, [sp, #0x14]
	bl GFL_HeapFree
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	ldr r1, _0219E4E4 ; =ovy174_219e4e8
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E4D4: .word 0x02093F08
_0219E4D8: .word 0x0219F118
_0219E4DC: .word 0x0219DC15
_0219E4E0: .word 0x00000CB8
_0219E4E4: .word ovy174_219e4e8
	thumb_func_end ovy174_219e1cc

	thumb_func_start ovy174_219e4e8
ovy174_219e4e8: ; 0x0219E4E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204E0E0
	cmp r0, #0
	beq _0219E528
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #7
	bne _0219E520
	sub r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_02017238
	bl sub_0200A150
	cmp r0, #0x20
	bne _0219E520
	ldr r1, _0219E52C ; =ovy174_219e9ec
	add r0, r4, #0
	bl sub_0219CE98
	ldr r0, _0219E530 ; =0x00000CAC
	mov r1, #0xb4
	str r1, [r4, r0]
	pop {r4, pc}
_0219E520:
	ldr r1, _0219E534 ; =ovy174_219e554
	add r0, r4, #0
	bl sub_0219CE98
_0219E528:
	pop {r4, pc}
	nop
_0219E52C: .word ovy174_219e9ec
_0219E530: .word 0x00000CAC
_0219E534: .word ovy174_219e554
	thumb_func_end ovy174_219e4e8
_0219E538:
	.byte 0x13, 0x28, 0x03, 0xD1, 0x12, 0x29, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x13, 0x29, 0x03, 0xD1, 0x12, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy174_219e554
ovy174_219e554: ; 0x0219E554
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0219E644 ; =0x0219F29C
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0xe
_0219E560:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219E560
	mov r0, #0x93
	mov r2, #4
	add r1, sp, #0x60
	strb r2, [r1, #5]
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	cmp r3, #0xb
	bhi _0219E5F0
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0219E584: ; jump table
	.short _0219E5F0 - _0219E584 - 2 ; case 0
	.short _0219E59C - _0219E584 - 2 ; case 1
	.short _0219E59C - _0219E584 - 2 ; case 2
	.short _0219E59C - _0219E584 - 2 ; case 3
	.short _0219E59C - _0219E584 - 2 ; case 4
	.short _0219E5A2 - _0219E584 - 2 ; case 5
	.short _0219E5AE - _0219E584 - 2 ; case 6
	.short _0219E5AA - _0219E584 - 2 ; case 7
	.short _0219E5F0 - _0219E584 - 2 ; case 8
	.short _0219E5B6 - _0219E584 - 2 ; case 9
	.short _0219E5C0 - _0219E584 - 2 ; case 10
	.short _0219E5B2 - _0219E584 - 2 ; case 11
_0219E59C:
	mov r0, #0xc
_0219E59E:
	strb r0, [r1, #7]
	b _0219E5F0
_0219E5A2:
	mov r0, #0x26
	strb r0, [r1, #7]
	strb r2, [r1]
	b _0219E5F0
_0219E5AA:
	mov r0, #0x1d
	b _0219E59E
_0219E5AE:
	mov r0, #0x1c
	b _0219E59E
_0219E5B2:
	mov r0, #0x2c
	b _0219E59E
_0219E5B6:
	mov r2, #0x11
	add r3, sp, #0x40
	strh r2, [r3, #0x2e]
	mov r2, #0x13
	b _0219E5C8
_0219E5C0:
	mov r2, #0x11
	add r3, sp, #0x40
	strh r2, [r3, #0x2e]
	mov r2, #0x12
_0219E5C8:
	strb r2, [r1, #7]
	mov r2, #1
	strb r2, [r1, #4]
	sub r0, #8
	ldr r0, [r4, r0]
	ldr r5, [r0, #0x20]
	add r5, #0x60
	ldrb r5, [r5]
	strb r5, [r1]
	ldr r5, [r0, #0x20]
	add r5, #0x61
	ldrb r5, [r5]
	strb r5, [r1, #1]
	ldr r0, [r0, #0x20]
	sub r1, r2, #2
	add r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r3, #0x2c]
	ldr r0, _0219E648 ; =0x00000CE8
	str r1, [r4, r0]
_0219E5F0:
	add r0, sp, #0
	mov r1, #0
	add r2, r4, #0
	mov r5, #0
	bl sub_020425EC
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #5
	beq _0219E628
	cmp r0, #9
	beq _0219E618
	cmp r0, #0xa
	bne _0219E62E
	ldr r0, _0219E64C ; =0x0219E539
	bl sub_020429E8
	mov r0, #1
	b _0219E620
_0219E618:
	ldr r0, _0219E64C ; =0x0219E539
	bl sub_020429E8
	add r0, r5, #0
_0219E620:
	bl sub_02042A40
	mov r0, #0x11
	b _0219E62A
_0219E628:
	mov r0, #0x25
_0219E62A:
	bl sub_020429D8
_0219E62E:
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	ldr r1, _0219E650 ; =ovy174_219e6cc
	add r0, r4, #0
	bl sub_0219CE98
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0219E644: .word 0x0219F29C
_0219E648: .word 0x00000CE8
_0219E64C: .word 0x0219E539
_0219E650: .word ovy174_219e6cc
	thumb_func_end ovy174_219e554

	thumb_func_start ovy174_219e654
ovy174_219e654: ; 0x0219E654
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy174_219e040
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r4, #0xc1
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #5
	bl sub_02044B84
	add r0, r4, #0
	sub r0, #0x7c
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0x74
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	sub r0, #0x70
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	sub r4, #0x6c
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	ldr r0, _0219E6C8 ; =0x00000CC4
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy174_219e08c
	pop {r3, r4, r5, pc}
	nop
_0219E6C8: .word 0x00000CC4
	thumb_func_end ovy174_219e654

	thumb_func_start ovy174_219e6cc
ovy174_219e6cc: ; 0x0219E6CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #1
	bne _0219E6FE
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #9
	beq _0219E6E6
	cmp r0, #0xa
	bne _0219E6EC
_0219E6E6:
	ldr r0, _0219E700 ; =0x0219E539
	bl sub_02175A04
_0219E6EC:
	ldr r0, _0219E704 ; =ovy174_219da08
	ldr r1, _0219E708 ; =ovy174_219da40
	ldr r2, _0219E70C ; =0x0219D129
	bl sub_020429A8
	ldr r1, _0219E710 ; =ovy174_219ecbc
	add r0, r4, #0
	bl sub_0219CE98
_0219E6FE:
	pop {r4, pc}
	.align 2, 0
_0219E700: .word 0x0219E539
_0219E704: .word ovy174_219da08
_0219E708: .word ovy174_219da40
_0219E70C: .word 0x0219D129
_0219E710: .word ovy174_219ecbc
	thumb_func_end ovy174_219e6cc

	thumb_func_start ovy174_219e714
ovy174_219e714: ; 0x0219E714
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy174_219e040
	mov r5, #0xcb
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0
	bl ovy174_219ddf0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #9
	bne _0219E750
	add r5, #0x38
	ldr r0, [r4, r5]
	cmp r0, #0
	ble _0219E750
	add r0, r4, #0
	mov r1, #1
	bl ovy174_219dcdc
	ldr r1, _0219E764 ; =ovy174_219ecbc
	add r0, r4, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
_0219E750:
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	ldr r1, _0219E764 ; =ovy174_219ecbc
	add r0, r4, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
	nop
_0219E764: .word ovy174_219ecbc
	thumb_func_end ovy174_219e714

	thumb_func_start ovy174_219e768
ovy174_219e768: ; 0x0219E768
	push {r4, r5, r6, lr}
	mov r6, #0x33
	add r5, r0, #0
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E7B8
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r6]
	mov r0, #6
	bl sub_02045B7C
	cmp r4, #0
	bne _0219E7A8
	add r0, r5, #0
	bl ovy174_219e040
	add r0, r5, #0
	bl ovy174_219cea0
	add r0, r5, #0
	ldr r1, _0219E7BC ; =ovy174_219cf98
	b _0219E7AC
_0219E7A8:
	ldr r1, _0219E7C0 ; =ovy174_219e714
	add r0, r5, #0
_0219E7AC:
	bl sub_0219CE98
	add r0, r5, #0
	mov r1, #0
	bl ovy174_219cf5c
_0219E7B8:
	pop {r4, r5, r6, pc}
	nop
_0219E7BC: .word ovy174_219cf98
_0219E7C0: .word ovy174_219e714
	thumb_func_end ovy174_219e768

	thumb_func_start ovy174_219e7c4
ovy174_219e7c4: ; 0x0219E7C4
	push {r3, r4, r5, lr}
	mov r5, #0x33
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E7F4
	ldr r0, [r4, r5]
	bl sub_0202DC00
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _0219E7F8 ; =ovy174_219eaa4
	add r0, r4, #0
	bl sub_0219CE98
_0219E7F4:
	pop {r3, r4, r5, pc}
	nop
_0219E7F8: .word ovy174_219eaa4
	thumb_func_end ovy174_219e7c4

	thumb_func_start ovy174_219e7fc
ovy174_219e7fc: ; 0x0219E7FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042A38
	cmp r0, #0
	beq _0219E812
	ldr r1, _0219E840 ; =ovy174_219e7c4
	add r0, r4, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
_0219E812:
	mov r5, #0x33
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E83E
	ldr r0, [r4, r5]
	bl sub_0202DC00
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _0219E844 ; =ovy174_219eaa4
	add r0, r4, #0
	bl sub_0219CE98
_0219E83E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E840: .word ovy174_219e7c4
_0219E844: .word ovy174_219eaa4
	thumb_func_end ovy174_219e7fc

	thumb_func_start ovy174_219e848
ovy174_219e848: ; 0x0219E848
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ovy174_219dcdc
	ldr r1, _0219E85C ; =ovy174_219e7fc
	add r0, r4, #0
	bl sub_0219CE98
	pop {r4, pc}
	.align 2, 0
_0219E85C: .word ovy174_219e7fc
	thumb_func_end ovy174_219e848

	thumb_func_start ovy174_219e860
ovy174_219e860: ; 0x0219E860
	push {r3, r4, r5, lr}
	mov r5, #0xcb
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0
	bl ovy174_219ddf0
	ldr r1, _0219E8A4 ; =ovy174_219ecbc
	add r0, r4, #0
	bl sub_0219CE98
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #9
	bne _0219E898
	add r5, #0x38
	ldr r0, [r4, r5]
	cmp r0, #0
	ble _0219E898
	add r0, r4, #0
	mov r1, #1
	bl ovy174_219dcdc
	pop {r3, r4, r5, pc}
_0219E898:
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	pop {r3, r4, r5, pc}
	nop
_0219E8A4: .word ovy174_219ecbc
	thumb_func_end ovy174_219e860

	thumb_func_start ovy174_219e8a8
ovy174_219e8a8: ; 0x0219E8A8
	push {r4, r5, r6, lr}
	mov r6, #0x33
	add r5, r0, #0
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E8F4
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r6]
	cmp r4, #0
	bne _0219E8E6
	add r0, r5, #0
	bl ovy174_219e040
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _0219E8F8 ; =ovy174_219e848
	add r0, r5, #0
	bl sub_0219CE98
	pop {r4, r5, r6, pc}
_0219E8E6:
	add r0, r5, #0
	bl ovy174_219e040
	ldr r1, _0219E8FC ; =ovy174_219e860
	add r0, r5, #0
	bl sub_0219CE98
_0219E8F4:
	pop {r4, r5, r6, pc}
	nop
_0219E8F8: .word ovy174_219e848
_0219E8FC: .word ovy174_219e860
	thumb_func_end ovy174_219e8a8

	thumb_func_start ovy174_219e900
ovy174_219e900: ; 0x0219E900
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DA48
	cmp r0, #0
	beq _0219E924
	add r0, r4, #0
	bl ovy174_219cea0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	str r1, [r0, #0x1c]
	ldr r1, _0219E928 ; =ovy174_219cf98
	add r0, r4, #0
	bl sub_0219CE98
_0219E924:
	pop {r4, pc}
	nop
_0219E928: .word ovy174_219cf98
	thumb_func_end ovy174_219e900

	thumb_func_start ovy174_219e92c
ovy174_219e92c: ; 0x0219E92C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219E98C ; =0x0219F0CC
	mov r4, #0xcb
	ldr r0, [r0]
	lsl r4, r4, #4
	str r0, [sp, #8]
	mov r3, #0x9e
	ldr r6, [r5, r4]
	mov r0, #0x20
	lsl r3, r3, #2
	str r0, [sp]
	ldrh r0, [r5, r3]
	add r7, sp, #8
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	sub r3, #0xf8
	bl sub_0204B0B8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	str r6, [r5, r4]
	bl ovy174_219dc1c
	bl sub_020232D8
	sub r4, #0xc
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219E978
	bl sub_020504DC
_0219E978:
	ldr r0, _0219E990 ; =0x00000CA4
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _0219E994 ; =ovy174_219e768
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E98C: .word 0x0219F0CC
_0219E990: .word 0x00000CA4
_0219E994: .word ovy174_219e768
	thumb_func_end ovy174_219e92c

	thumb_func_start ovy174_219e998
ovy174_219e998: ; 0x0219E998
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219E9E4 ; =0x0219F0E0
	mov r6, #0xcb
	ldr r0, [r0]
	lsl r6, r6, #4
	str r0, [sp, #8]
	mov r3, #0x9e
	ldr r4, [r5, r6]
	mov r0, #0x20
	lsl r3, r3, #2
	str r0, [sp]
	ldrh r0, [r5, r3]
	add r7, sp, #8
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	sub r3, #0xf8
	bl sub_0204B0B8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	str r4, [r5, r6]
	bl ovy174_219dc1c
	bl sub_020232D8
	ldr r1, _0219E9E8 ; =ovy174_219e8a8
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E9E4: .word 0x0219F0E0
_0219E9E8: .word ovy174_219e8a8
	thumb_func_end ovy174_219e998

	thumb_func_start ovy174_219e9ec
ovy174_219e9ec: ; 0x0219E9EC
	push {r4, lr}
	ldr r1, _0219EA10 ; =0x00000CAC
	add r4, r0, #0
	ldr r2, [r4, r1]
	sub r2, r2, #1
	str r2, [r4, r1]
	bne _0219EA0C
	bl ovy174_219e040
	add r0, r4, #0
	bl ovy174_219cea0
	ldr r1, _0219EA14 ; =ovy174_219cf98
	add r0, r4, #0
	bl sub_0219CE98
_0219EA0C:
	pop {r4, pc}
	nop
_0219EA10: .word 0x00000CAC
_0219EA14: .word ovy174_219cf98
	thumb_func_end ovy174_219e9ec

	thumb_func_start ovy174_219ea18
ovy174_219ea18: ; 0x0219EA18
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ovy174_219e040
	mov r0, #0xc
	str r0, [sp]
	add r0, sp, #0
	add r1, r4, #0
	bl ovy174_219ddf0
	add r0, r4, #0
	mov r1, #0
	bl ovy174_219dcdc
	ldr r1, _0219EA44 ; =ovy174_219e7c4
	add r0, r4, #0
	bl sub_0219CE98
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219EA44: .word ovy174_219e7c4
	thumb_func_end ovy174_219ea18

	thumb_func_start ovy174_219ea48
ovy174_219ea48: ; 0x0219EA48
	push {r4, r5, r6, lr}
	mov r6, #0x33
	add r5, r0, #0
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219EA98
	ldr r0, [r5, r6]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r6]
	mov r0, #6
	bl sub_02045B7C
	cmp r4, #0
	bne _0219EA88
	add r0, r5, #0
	bl ovy174_219e040
	add r0, r5, #0
	bl ovy174_219cea0
	add r0, r5, #0
	ldr r1, _0219EA9C ; =ovy174_219cf98
	b _0219EA8C
_0219EA88:
	ldr r1, _0219EAA0 ; =ovy174_219ea18
	add r0, r5, #0
_0219EA8C:
	bl sub_0219CE98
	add r0, r5, #0
	mov r1, #0
	bl ovy174_219cf5c
_0219EA98:
	pop {r4, r5, r6, pc}
	nop
_0219EA9C: .word ovy174_219cf98
_0219EAA0: .word ovy174_219ea18
	thumb_func_end ovy174_219ea48

	thumb_func_start ovy174_219eaa4
ovy174_219eaa4: ; 0x0219EAA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219EB04 ; =0x0219F0C0
	mov r4, #0xcb
	ldr r0, [r0]
	lsl r4, r4, #4
	str r0, [sp, #8]
	mov r3, #0x9e
	ldr r6, [r5, r4]
	mov r0, #0x20
	lsl r3, r3, #2
	str r0, [sp]
	ldrh r0, [r5, r3]
	add r7, sp, #8
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	sub r3, #0xf8
	bl sub_0204B0B8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	str r6, [r5, r4]
	bl ovy174_219dc1c
	bl sub_020232D8
	sub r4, #0xc
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219EAF0
	bl sub_020504DC
_0219EAF0:
	ldr r0, _0219EB08 ; =0x00000CA4
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, _0219EB0C ; =ovy174_219ea48
	add r0, r5, #0
	bl sub_0219CE98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219EB04: .word 0x0219F0C0
_0219EB08: .word 0x00000CA4
_0219EB0C: .word ovy174_219ea48
	thumb_func_end ovy174_219eaa4

	thumb_func_start ovy174_219eb10
ovy174_219eb10: ; 0x0219EB10
	push {r3, r4, r5, lr}
	mov r5, #0xb2
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204C4A0
	cmp r0, #8
	beq _0219EB28
	cmp r0, #0xb
	beq _0219EB56
	b _0219EB4E
_0219EB28:
	ldr r0, [r4, r5]
	mov r1, #0xb
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #0xc8
	mov r2, #0x26
	mov r3, #0
	bl ovy174_219d0e0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x71
	mov r3, #4
	bl ovy174_219d02c
	pop {r3, r4, r5, pc}
_0219EB4E:
	ldr r0, [r4, r5]
	mov r1, #8
	bl sub_0204C488
_0219EB56:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy174_219eb10

	thumb_func_start ovy174_219eb58
ovy174_219eb58: ; 0x0219EB58
	push {r3, r4, r5, lr}
	mov r5, #0x2d
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0204C4A0
	cmp r0, #9
	beq _0219EB70
	cmp r0, #0xa
	beq _0219EB9E
	b _0219EB96
_0219EB70:
	ldr r0, [r4, r5]
	mov r1, #0xa
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0x9a
	mov r3, #2
	bl ovy174_219d0e0
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x4d
	mov r3, #5
	bl ovy174_219d02c
	pop {r3, r4, r5, pc}
_0219EB96:
	ldr r0, [r4, r5]
	mov r1, #9
	bl sub_0204C488
_0219EB9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy174_219eb58

	thumb_func_start ovy174_219eba0
ovy174_219eba0: ; 0x0219EBA0
	push {r3, r4, r5, lr}
	ldr r1, _0219EBC4 ; =0x0219F0B8
	add r5, r0, #0
	ldr r1, [r1]
	add r4, sp, #0
	str r1, [sp]
	bl ovy174_219e040
	add r0, r4, #0
	add r1, r5, #0
	bl ovy174_219ddf0
	ldr r1, _0219EBC8 ; =ovy174_219e900
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, pc}
	nop
_0219EBC4: .word 0x0219F0B8
_0219EBC8: .word ovy174_219e900
	thumb_func_end ovy174_219eba0

	thumb_func_start ovy174_219ebcc
ovy174_219ebcc: ; 0x0219EBCC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ovy174_219e040
	ldr r0, _0219ECA0 ; =0x00000C8C
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _0219EC7A
	sub r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EBF6
	ldr r1, _0219ECA4 ; =0x0219F0F4
	add r0, sp, #4
	ldr r1, [r1]
	str r1, [sp, #4]
	add r1, r5, #0
	bl ovy174_219ddf0
	b _0219EC14
_0219EBF6:
	ldr r1, _0219ECA8 ; =0x0219F0E4
	add r0, sp, #0
	ldr r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	mov r1, #0
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #2
	bl ovy174_219e098
_0219EC14:
	add r0, r5, #0
	mov r1, #6
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #7
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #4
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #5
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #1
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #3
	bl ovy174_219e098
	ldr r0, _0219ECAC ; =0x00000C7C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EC74
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #8]
	ldr r0, _0219ECB0 ; =ovy174_219eb10
	mov r4, #0xb2
	add r6, sp, #8
	str r5, [sp, #0xc]
	lsl r4, r4, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C5B0
	ldr r0, _0219ECB4 ; =ovy174_219eb58
	add r4, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C5B0
_0219EC74:
	ldr r0, _0219ECA0 ; =0x00000C8C
	mov r1, #0
	str r1, [r5, r0]
_0219EC7A:
	ldr r2, _0219ECB8 ; =0x00000C98
	ldr r0, [r5, r2]
	add r0, r0, #1
	str r0, [r5, r2]
	cmp r0, #8
	ble _0219EC9C
	add r0, r2, #0
	add r0, #0x54
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EC9C
	mov r1, #0
	sub r0, r2, #4
	str r1, [r5, r0]
	mov r0, #1
	bl sub_02044C98
_0219EC9C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219ECA0: .word 0x00000C8C
_0219ECA4: .word 0x0219F0F4
_0219ECA8: .word 0x0219F0E4
_0219ECAC: .word 0x00000C7C
_0219ECB0: .word ovy174_219eb10
_0219ECB4: .word ovy174_219eb58
_0219ECB8: .word 0x00000C98
	thumb_func_end ovy174_219ebcc

	thumb_func_start ovy174_219ecbc
ovy174_219ecbc: ; 0x0219ECBC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0219EE40 ; =0x00000C94
	add r5, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219ECD8
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #5
	bne _0219ECD8
	bl ovy174_219ebcc
	b _0219ED7C
_0219ECD8:
	ldr r6, _0219EE44 ; =0x00000C84
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _0219ED7C
	mov r4, #0x93
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #9
	beq _0219ED7C
	sub r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219ED36
	add r0, r5, #0
	bl ovy174_219e040
	ldr r0, [r5, r4]
	ldr r1, _0219EE48 ; =0x0219F264
	lsl r0, r0, #2
	add r0, r1, r0
	add r1, r5, #0
	bl ovy174_219ddf0
	add r0, r5, #0
	mov r1, #4
	bl ovy174_219e098
	add r0, r5, #0
	mov r1, #5
	bl ovy174_219e098
	mov r7, #0
	sub r0, r6, #4
	str r7, [r5, r0]
	add r0, r4, #0
	add r0, #0x7c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219ED36
	add r1, r7, #0
	bl sub_0204C520
	add r4, #0x84
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204C520
_0219ED36:
	mov r6, #0
	add r0, r5, #0
	mov r1, #0
	sub r2, r6, #2
	mov r3, #0
	bl ovy174_219d09c
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #2
	bl ovy174_219d09c
	ldr r0, _0219EE4C ; =0x00000C88
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, #0x1e
	ble _0219ED7C
	mov r4, #0xb2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219ED76
	add r1, r6, #0
	bl sub_0204C124
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
_0219ED76:
	ldr r0, _0219EE44 ; =0x00000C84
	mov r1, #0
	str r1, [r5, r0]
_0219ED7C:
	bl sub_02042788
	cmp r0, #0
	beq _0219ED9A
	bl sub_02040440
	bl sub_02040464
	cmp r0, #7
	bne _0219ED9A
	ldr r1, _0219EE50 ; =ovy174_219eba0
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
_0219ED9A:
	mov r4, #0x33
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219EDEA
	ldr r0, [r5, r4]
	bl sub_0202DC00
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r4]
	mov r0, #6
	bl sub_02045B7C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EDD2
	ldr r1, _0219EE54 ; =ovy174_219e92c
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
_0219EDD2:
	cmp r6, #0
	bne _0219EDE0
	ldr r1, _0219EE58 ; =ovy174_219e998
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
_0219EDE0:
	ldr r1, _0219EE54 ; =ovy174_219e92c
	add r0, r5, #0
	bl sub_0219CE98
	pop {r3, r4, r5, r6, r7, pc}
_0219EDEA:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #9
	bne _0219EE3C
	bl sub_02042A48
	add r1, r4, #0
	add r1, #0x28
	ldr r1, [r5, r1]
	cmp r1, r0
	beq _0219EE12
	mov r0, #0x27
	add r1, r5, #0
	bl ovy174_219df7c
	bl sub_02042A48
	add r4, #0x28
	str r0, [r5, r4]
_0219EE12:
	ldr r4, _0219EE5C ; =0x00000CE8
	ldr r0, [r5, r4]
	cmp r0, #0
	ble _0219EE3C
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219EE3C
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl sub_0202DA54
	mov r0, #0
	sub r4, #0x28
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy174_219dcdc
_0219EE3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EE40: .word 0x00000C94
_0219EE44: .word 0x00000C84
_0219EE48: .word 0x0219F264
_0219EE4C: .word 0x00000C88
_0219EE50: .word ovy174_219eba0
_0219EE54: .word ovy174_219e92c
_0219EE58: .word ovy174_219e998
_0219EE5C: .word 0x00000CE8
	thumb_func_end ovy174_219ecbc

	thumb_func_start ovy174_219ee60
ovy174_219ee60: ; 0x0219EE60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1f
	lsl r2, r2, #0x11
	mov r6, #0x1f
	bl GFL_HeapCreateChild
	ldr r1, _0219EED8 ; =0x000011B4
	add r0, r4, #0
	mov r2, #0x1f
	bl GFL_ProcInitSubsystem
	ldr r2, _0219EED8 ; =0x000011B4
	mov r1, #0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r1, #0x91
	lsl r1, r1, #2
	str r5, [r4, r1]
	add r0, r1, #0
	str r7, [r5, #0x24]
	add r0, #0x34
	strh r6, [r4, r0]
	ldr r0, [r4, r1]
	ldr r3, _0219EEDC ; =0x0219F30C
	ldr r2, [r0, #0x1c]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	ldr r0, _0219EEE0 ; =0x00000B82
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x34
	ldrh r0, [r4, r0]
	sub r1, #0x44
	bl GFL_HeapAllocate
	ldr r1, _0219EEE4 ; =0x00000CB4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy174_219e1cc
	bl sub_020429F0
	mov r0, #0xe
	str r0, [sp]
	ldr r0, _0219EEE8 ; =0x04000050
	mov r1, #0x10
	mov r2, #3
	mov r3, #9
	bl G2x_SetBlendAlpha_
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EED8: .word 0x000011B4
_0219EEDC: .word 0x0219F30C
_0219EEE0: .word 0x00000B82
_0219EEE4: .word 0x00000CB4
_0219EEE8: .word 0x04000050
	thumb_func_end ovy174_219ee60

	thumb_func_start ovy174_219eeec
ovy174_219eeec: ; 0x0219EEEC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0219EFCC ; =0x02FFFC3C
	mov r5, #0x92
	ldr r1, [r0]
	mov r0, #7
	add r4, r3, #0
	lsl r5, r5, #2
	and r0, r1
	mov r6, #1
	ldr r7, [r4, r5]
	cmp r0, #1
	bne _0219EF3C
	add r0, r5, #0
	sub r0, #8
	ldrh r0, [r4, r0]
	mov r1, #0
	mov r2, #0x20
	lsl r0, r0, #5
	add r0, r4, r0
	bl GX_LoadBGPltt
	add r0, r5, #0
	sub r0, #8
	ldrh r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	sub r0, #8
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #8
	ldrh r0, [r4, r0]
	cmp r0, #9
	bne _0219EF32
	add r1, r6, #0
	b _0219EF3E
_0219EF32:
	cmp r0, #0x12
	blo _0219EF3C
	sub r5, #8
	mov r0, #0
	strh r0, [r4, r5]
_0219EF3C:
	mov r1, #0
_0219EF3E:
	ldr r0, _0219EFD0 ; =0x00000CEC
	cmp r7, #0
	str r1, [r4, r0]
	beq _0219EF56
	add r0, r4, #0
	blx r7
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219EF56
	mov r6, #0
_0219EF56:
	mov r0, #0x33
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219EF64
	bl sub_0202DB70
_0219EF64:
	mov r0, #0xce
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219EF72
	bl sub_0202E37C
_0219EF72:
	ldr r0, _0219EFD4 ; =0x00000CE4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219EF7E
	bl sub_0202E37C
_0219EF7E:
	ldr r5, _0219EFD8 ; =0x00000C9C
	mov r0, #4
	ldr r2, [r4, r5]
	mov r1, #3
	bl sub_02044CFC
	ldr r0, [r4, r5]
	sub r0, r0, #1
	str r0, [r4, r5]
	bl sub_0204B794
	add r5, #0x1c
	ldr r0, [r4, r5]
	bl sub_02021A3C
	bl sub_020120C8
	cmp r0, #0
	beq _0219EFC8
	bl sub_020120DC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0xc
	str r2, [r1, #0x1c]
	ldr r0, [r4, r0]
	mov r6, #1
	str r6, [r0, #0x24]
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
_0219EFC8:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EFCC: .word 0x02FFFC3C
_0219EFD0: .word 0x00000CEC
_0219EFD4: .word 0x00000CE4
_0219EFD8: .word 0x00000C9C
	thumb_func_end ovy174_219eeec

	thumb_func_start ovy174_219efdc
ovy174_219efdc: ; 0x0219EFDC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r3, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _0219EFEE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219EFEE:
	bl sub_02042788
	cmp r0, #0
	beq _0219EFFE
	mov r0, #3
	lsl r0, r0, #0xa
	bl sub_02040C64
_0219EFFE:
	mov r0, #0x33
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F00C
	bl sub_0202DA54
_0219F00C:
	mov r0, #0xce
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F01A
	bl sub_0202E34C
_0219F01A:
	ldr r0, _0219F0A8 ; =0x00000CE4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F026
	bl sub_0202E34C
_0219F026:
	ldr r0, _0219F0AC ; =0x00000CA4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F032
	bl sub_020504DC
_0219F032:
	ldr r0, _0219F0B0 ; =0x00000CB4
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	ldr r0, _0219F0B0 ; =0x00000CB4
	mov r4, #0xa3
	mov r7, #0
	sub r0, #0x10
	lsl r4, r4, #2
	str r7, [r5, r0]
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	bl ovy174_219e654
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	ldr r0, _0219F0B0 ; =0x00000CB4
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021C44
	ldr r0, _0219F0B0 ; =0x00000CB4
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F096
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0x80
	str r7, [r5, r0]
	add r4, #0x84
	str r7, [r5, r4]
_0219F096:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x1f
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F0A8: .word 0x00000CE4
_0219F0AC: .word 0x00000CA4
_0219F0B0: .word 0x00000CB4
	thumb_func_end ovy174_219efdc
_0219F0B4:
	.byte 0x0F, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x2B, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x61, 0xEE, 0x19, 0x02
	.byte 0xED, 0xEE, 0x19, 0x02, 0xDD, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x69, 0xD1, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x89, 0xD1, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD1, 0xD1, 0x19, 0x02, 0xD5, 0xD1, 0x19, 0x02
	.byte 0x09, 0xD2, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x49, 0xD2, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xA1, 0xD2, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xD2, 0x19, 0x02, 0xF1, 0xD1, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1A, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1B, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1D, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0xD1, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0x89, 0xCE, 0x19, 0x02, 0x8D, 0xCE, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x10, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x02, 0x64, 0x10, 0x01
	.byte 0x00, 0x03, 0x01, 0x0B, 0xFE, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x72, 0x63, 0x62
	.byte 0x61, 0x74, 0x74, 0x6C, 0x65, 0x6D, 0x61, 0x74, 0x63, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	; 0x0219F0B4
