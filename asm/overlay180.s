    .include "macros/function.inc"
	.include "overlay180.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy180_219ad20
ovy180_219ad20: ; 0x0219AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x43
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	ldr r5, _0219AF44 ; =0x00000648
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x43
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r6]
	cmp r0, #0
	beq _0219AD58
	bl sub_02016AD8
	b _0219AD5E
_0219AD58:
	add r0, r7, #0
	bl sub_02016EE8
_0219AD5E:
	sub r5, #0x20
	str r0, [r4, r5]
	mov r0, #0x43
	mov r6, #0x43
	bl sub_02021998
	ldr r1, _0219AF48 ; =0x0000061C
	mov r2, #0
	str r0, [r4, r1]
	mov r0, #0x17
	mov r1, #0
	mov r3, #0
	str r6, [sp]
	mov r5, #0
	bl GFL_FontCreate
	ldr r1, _0219AF48 ; =0x0000061C
	mov r2, #0x3b
	sub r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #2
	mov r3, #0x43
	bl GFL_MsgSysLoadData
	ldr r1, _0219AF48 ; =0x0000061C
	add r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0219AF48 ; =0x0000061C
	mov r1, #0x43
	add r0, #0xc
	ldr r0, [r4, r0]
	bl ovy180_219c358
	ldr r1, _0219AF48 ; =0x0000061C
	mov r2, #0x43
	add r1, #0x20
	str r0, [r4, r1]
	ldr r1, _0219AF48 ; =0x0000061C
	add r0, r4, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	bl ovy180_219b7b4
	add r0, r4, #0
	bl sub_0219B86C
	add r1, r0, #0
	mov r0, #0x43
	bl sub_0202AE5C
	ldr r1, _0219AF48 ; =0x0000061C
	ldr r2, _0219AF4C ; =ovy180_219b09c
	add r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x28
	add r1, r4, #0
	bl ovy180_219b04c
	ldr r0, _0219AF48 ; =0x0000061C
	mov r1, #0x43
	sub r0, #0x48
	add r0, r4, r0
	bl sub_0219C54C
	ldr r0, _0219AF48 ; =0x0000061C
	sub r0, #0x1c
	add r0, r4, r0
	bl sub_0219C774
	add r0, r4, #0
	bl sub_0219B868
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219B86C
	mov r1, #6
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0219AF48 ; =0x0000061C
	mov r1, #1
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #2
	str r0, [sp, #0xc]
	ldr r0, _0219AF48 ; =0x0000061C
	mov r3, #5
	add r0, #0x20
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x38
	str r6, [sp, #0x14]
	bl ovy180_219b88c
	add r0, r4, #0
	bl sub_0219B86C
	add r1, r0, #0
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0219AF48 ; =0x0000061C
	mov r2, #4
	sub r0, r0, #4
	ldr r0, [r4, r0]
	mov r3, #0xd
	str r0, [sp, #8]
	ldr r0, _0219AF48 ; =0x0000061C
	ldr r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #2
	str r6, [sp, #0x10]
	bl sub_0219A89C
	ldr r1, _0219AF48 ; =0x0000061C
	sub r1, #8
	str r0, [r4, r1]
	mov r0, #0x17
	mov r1, #0x43
	bl sub_0204AA30
	mov r3, #7
	mov r1, #5
	mov r2, #0
	lsl r3, r3, #6
	add r7, r0, #0
	str r6, [sp]
	bl sub_0204BC48
	ldr r1, _0219AF48 ; =0x0000061C
	add r1, #0x28
	str r0, [r4, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, sp, #0x38
	mov r1, #0
	mov r2, #8
	mov r6, #8
	blx MI_CpuFill8
	add r7, sp, #0x38
	strh r6, [r7]
	mov r0, #0x29
	strh r0, [r7, #2]
	ldr r0, _0219AF48 ; =0x0000061C
	strb r5, [r7, #6]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldr r0, _0219AF48 ; =0x0000061C
	strb r5, [r7, #7]
	str r0, [sp, #0x30]
	add r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, _0219AF48 ; =0x0000061C
	str r0, [sp, #0x2c]
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, _0219AF48 ; =0x0000061C
	str r0, [sp, #0x28]
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, _0219AF48 ; =0x0000061C
	str r0, [sp, #0x24]
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, _0219AF48 ; =0x0000061C
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, _0219AF48 ; =0x0000061C
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _0219AF48 ; =0x0000061C
	sub r0, r0, #4
	str r0, [sp, #0x18]
_0219AEC8:
	ldr r0, _0219AF50 ; =0x0219CC90
	lsl r1, r5, #3
	add r2, r0, r1
	ldrsh r0, [r0, r1]
	ldrh r1, [r2, #4]
	ldr r3, [sp, #0x30]
	strh r0, [r7]
	mov r0, #2
	ldrsh r0, [r2, r0]
	ldrh r2, [r2, #6]
	lsl r1, r1, #0x18
	strh r0, [r7, #2]
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	lsl r2, r2, #0x18
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	str r0, [sp, #8]
	ldr r0, _0219AF48 ; =0x0000061C
	lsr r2, r2, #0x18
	ldr r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	ldr r3, [r4, r3]
	add r0, sp, #0x38
	bl ovy180_219ca90
	ldr r1, [sp, #0x2c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x28]
	mov r1, #0x11
	ldr r0, [r6, r0]
	lsl r1, r1, #6
	bl sub_0219CB94
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r0, [r6, r0]
	mov r2, #0
	mov r3, #1
	bl sub_0219CB98
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	ldr r0, [r6, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	add r2, r5, #1
	bl ovy180_219cb3c
	add r5, r5, #1
	cmp r5, #4
	blt _0219AEC8
	mov r0, #1
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AF44: .word 0x00000648
_0219AF48: .word 0x0000061C
_0219AF4C: .word ovy180_219b09c
_0219AF50: .word 0x0219CC90
	thumb_func_end ovy180_219ad20

	thumb_func_start ovy180_219af54
ovy180_219af54: ; 0x0219AF54
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219AFFC ; =0x0000062C
	str r0, [sp]
	add r7, r2, #0
	add r5, r3, #0
	mov r4, #0
_0219AF60:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy180_219cb1c
	add r4, r4, #1
	cmp r4, #4
	blt _0219AF60
	ldr r4, _0219B000 ; =0x00000644
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	add r0, r4, #0
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl sub_0219A980
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bac0
	add r0, r4, #0
	sub r0, #0x44
	add r0, r5, r0
	bl sub_0219C780
	add r0, r4, #0
	sub r0, #0x70
	add r0, r5, r0
	bl sub_0219C558
	add r0, r5, #0
	add r0, #0x28
	bl sub_0219B068
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_0202AEAC
	add r0, r5, #0
	bl ovy180_219b838
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl ovy180_219c518
	add r0, r4, #0
	sub r0, #0x24
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl sub_02021A18
	ldr r0, [r7]
	cmp r0, #0
	bne _0219AFEC
	sub r4, #0x1c
	ldr r0, [r5, r4]
	bl sub_02017144
_0219AFEC:
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x43
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AFFC: .word 0x0000062C
_0219B000: .word 0x00000644
	thumb_func_end ovy180_219af54

	thumb_func_start ovy180_219b004
ovy180_219b004: ; 0x0219B004
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r0, r5, #0
	add r0, #0x28
	bl ovy180_219b074
	add r0, r5, #0
	bl sub_0219B85C
	ldr r6, _0219B048 ; =0x0000061C
	ldr r0, [r5, r6]
	bl sub_02021A3C
	mov r4, #0
	add r6, #0x10
_0219B022:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy180_219cba0
	add r4, r4, #1
	cmp r4, #4
	blt _0219B022
	add r5, #0x28
	add r0, r5, #0
	bl sub_0219B088
	cmp r0, #0
	beq _0219B042
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219B042:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0219B048: .word 0x0000061C
	thumb_func_end ovy180_219b004

	thumb_func_start ovy180_219b04c
ovy180_219b04c: ; 0x0219B04C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_0219B08C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy180_219b04c

	thumb_func_start sub_0219B068
sub_0219B068: ; 0x0219B068
	ldr r3, _0219B070 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_0219B070: .word MI_CpuFill8
	thumb_func_end sub_0219B068

	thumb_func_start ovy180_219b074
ovy180_219b074: ; 0x0219B074
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0219B086
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_0219B086:
	pop {r3, pc}
	thumb_func_end ovy180_219b074

	thumb_func_start sub_0219B088
sub_0219B088: ; 0x0219B088
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219B088

	thumb_func_start sub_0219B08C
sub_0219B08C: ; 0x0219B08C
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219B08C

	thumb_func_start sub_0219B094
sub_0219B094: ; 0x0219B094
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B094

	thumb_func_start ovy180_219b09c
ovy180_219b09c: ; 0x0219B09C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _0219B0B4
	cmp r0, #1
	beq _0219B0C6
	cmp r0, #2
	beq _0219B0D4
	pop {r4, r5, r6, pc}
_0219B0B4:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219B0C6:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B0F6
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219B0D4:
	add r0, r4, #0
	add r0, #0x38
	bl ovy180_219bc8c
	ldr r1, _0219B0F8 ; =0x0000FFFF
	cmp r0, r1
	beq _0219B0EE
	add r4, #0x28
	ldr r1, _0219B0FC ; =ovy180_219b380
	add r0, r4, #0
	bl sub_0219B08C
	pop {r4, r5, r6, pc}
_0219B0EE:
	ldr r1, _0219B100 ; =ovy180_219b140
	add r0, r6, #0
	bl sub_0219B08C
_0219B0F6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B0F8: .word 0x0000FFFF
_0219B0FC: .word ovy180_219b380
_0219B100: .word ovy180_219b140
	thumb_func_end ovy180_219b09c

	thumb_func_start ovy180_219b104
ovy180_219b104: ; 0x0219B104
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219B118
	cmp r1, #1
	beq _0219B12A
	cmp r1, #2
	beq _0219B138
	pop {r4, pc}
_0219B118:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219B12A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B13C
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_0219B138:
	bl sub_0219B094
_0219B13C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy180_219b104

	thumb_func_start ovy180_219b140
ovy180_219b140: ; 0x0219B140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _0219B36C ; =0x00000614
	add r5, r2, #0
	add r7, r0, #0
	ldr r0, [r5, r4]
	bl sub_0219AA3C
	cmp r0, #0
	beq _0219B156
	b _0219B314
_0219B156:
	add r0, r4, #0
	sub r0, #0x40
	add r6, sp, #0x10
	add r0, r5, r0
	add r1, r6, #0
	bl sub_0219C764
	mov r1, #0x80
	tst r0, r1
	beq _0219B206
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0219B184
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B194
_0219B184:
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B194:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	cmp r0, r1
	ble _0219B1FA
	cmp r4, #0
	beq _0219B1B6
	add r0, r6, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B1C4
_0219B1B6:
	add r0, r6, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B1C4:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	sub r0, r0, r1
	lsl r1, r1, #1
	bl FX_Div
	mov r2, #0xf
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	mov r4, #0
	blx sub_0208D60C
	add r2, r0, #0
	mov r0, #6
	mov r3, #2
	lsl r0, r0, #8
	lsl r3, r3, #0xa
	add r0, r5, r0
	add r3, r2, r3
	adc r1, r4
	lsl r2, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r2
	b _0219B2B2
_0219B1FA:
	mov r0, #6
	lsl r0, r0, #8
	mov r1, #2
	add r0, r5, r0
	lsl r1, r1, #0xc
	b _0219B2B2
_0219B206:
	add r0, r4, #0
	sub r0, #0x40
	add r0, r5, r0
	add r1, r6, #0
	bl sub_0219C764
	mov r1, #0x40
	tst r0, r1
	beq _0219B2B6
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0219B232
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B242
_0219B232:
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B242:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	cmp r0, r1
	ble _0219B2AA
	cmp r4, #0
	beq _0219B264
	add r0, r6, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B272
_0219B264:
	add r0, r6, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B272:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	sub r0, r0, r1
	lsl r1, r1, #1
	bl FX_Div
	mov r2, #0xf
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	mov r4, #0
	blx sub_0208D60C
	add r2, r0, #0
	mov r0, #6
	mov r3, #2
	lsl r0, r0, #8
	lsl r3, r3, #0xa
	add r0, r5, r0
	add r2, r2, r3
	adc r1, r4
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	neg r1, r2
	b _0219B2B2
_0219B2AA:
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, _0219B370 ; =0xFFFFE000
	add r0, r5, r0
_0219B2B2:
	mov r2, #0xc
	b _0219B310
_0219B2B6:
	add r0, r4, #0
	sub r0, #0x40
	add r0, r5, r0
	mov r1, #0
	mov r2, #0
	add r3, sp, #8
	mov r6, #0
	bl ovy180_219c60c
	cmp r0, #0
	beq _0219B2E6
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	neg r1, r1
	lsl r1, r1, #0x10
	add r0, #0x38
	asr r1, r1, #0x10
	bl ovy180_219bbc4
	sub r4, #0x14
	add r0, r5, r4
	bl sub_0219C8F0
	b _0219B314
_0219B2E6:
	add r0, sp, #4
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x40
	add r1, r6, #0
	add r2, r6, #0
	add r6, sp, #0x14
	add r0, r5, r0
	add r3, r6, #0
	bl ovy180_219c64c
	cmp r0, #0
	beq _0219B314
	ldr r0, _0219B374 ; =0x0219CC58
	add r1, r6, #0
	blx VEC_DotProduct
	sub r4, #0x14
	add r1, r0, #0
	ldr r2, [sp, #4]
	add r0, r5, r4
_0219B310:
	bl ovy180_219c7c8
_0219B314:
	mov r4, #6
	lsl r4, r4, #8
	add r0, r5, r4
	bl sub_0219C954
	cmp r0, #0
	beq _0219B332
	add r0, r5, r4
	bl ovy180_219c8f8
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bbc4
_0219B332:
	ldr r0, _0219B36C ; =0x00000614
	ldr r0, [r5, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219B346
	ldr r1, _0219B378 ; =ovy180_219b104
	add r0, r7, #0
	bl sub_0219B08C
_0219B346:
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bb48
	ldr r4, _0219B37C ; =0x000005D4
	add r0, r5, r4
	bl ovy180_219c564
	add r0, r4, #0
	add r0, #0x2c
	add r0, r5, r0
	bl ovy180_219c78c
	add r4, #0x40
	ldr r0, [r5, r4]
	bl sub_0219A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B36C: .word 0x00000614
_0219B370: .word 0xFFFFE000
_0219B374: .word 0x0219CC58
_0219B378: .word ovy180_219b104
_0219B37C: .word 0x000005D4
	thumb_func_end ovy180_219b140

	thumb_func_start ovy180_219b380
ovy180_219b380: ; 0x0219B380
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bc8c
	sub r0, #0xc0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	bpl _0219B398
	mov r4, #0
_0219B398:
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219BC80
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219BCD4
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	cmp r1, r6
	ble _0219B462
	cmp r6, r0
	beq _0219B462
	mov r0, #0x19
	lsl r0, r0, #6
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r4, [r5, r0]
	cmp r4, #0
	ble _0219B3DA
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B3EA
_0219B3DA:
	lsl r6, r4, #0xc
	add r0, r6, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B3EA:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	cmp r0, r1
	ble _0219B456
	cmp r4, #0
	ble _0219B40C
	add r0, r6, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B41A
_0219B40C:
	add r0, r6, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B41A:
	blx sub_0208DA4C
	mov r1, #5
	lsl r1, r1, #0xe
	sub r0, r0, r1
	lsl r1, r1, #1
	bl FX_Div
	mov r2, #0xf
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	mov r4, #0
	blx sub_0208D60C
	add r2, r0, #0
	mov r0, #6
	mov r3, #2
	lsl r0, r0, #8
	lsl r3, r3, #0xa
	add r0, r5, r0
	add r3, r2, r3
	adc r1, r4
	lsl r2, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r2
_0219B44E:
	mov r2, #0xc
	bl ovy180_219c7c8
	b _0219B476
_0219B456:
	mov r0, #6
	lsl r0, r0, #8
	mov r1, #2
	add r0, r5, r0
	lsl r1, r1, #0xc
	b _0219B44E
_0219B462:
	mov r0, #6
	lsl r0, r0, #8
	add r0, r5, r0
	bl sub_0219C8F0
	add r0, r5, #0
	ldr r1, _0219B4C4 ; =ovy180_219b140
	add r0, #0x28
	bl sub_0219B08C
_0219B476:
	mov r4, #6
	lsl r4, r4, #8
	add r0, r5, r4
	bl sub_0219C954
	cmp r0, #0
	beq _0219B494
	add r0, r5, r4
	bl ovy180_219c8f8
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bbc4
_0219B494:
	ldr r0, _0219B4C8 ; =0x00000614
	ldr r0, [r5, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219B4A8
	ldr r1, _0219B4CC ; =ovy180_219b104
	add r0, r7, #0
	bl sub_0219B08C
_0219B4A8:
	add r0, r5, #0
	add r0, #0x38
	bl ovy180_219bb48
	mov r4, #6
	lsl r4, r4, #8
	add r0, r5, r4
	bl ovy180_219c78c
	add r4, #0x14
	ldr r0, [r5, r4]
	bl sub_0219A9A4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B4C4: .word ovy180_219b140
_0219B4C8: .word 0x00000614
_0219B4CC: .word ovy180_219b104
	thumb_func_end ovy180_219b380

	thumb_func_start ovy180_219b4d0
ovy180_219b4d0: ; 0x0219B4D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r6, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	add r0, r7, #0
	bl sub_020444A4
	add r0, r7, #0
	bl sub_02048080
	ldr r0, _0219B6B4 ; =0x0219CC64
	bl sub_02044710
_0219B4F6:
	mov r0, #0x28
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219B6B8 ; =0x0219CCE0
	add r2, r0, r1
	ldr r5, [r0, r1]
	add r1, r2, #4
	ldr r2, [r2, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blt _0219B4F6
	mov r0, #0x4c
	add r1, r7, #0
	bl sub_0204AA30
	str r0, [r6]
	mov r4, #0
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r6]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r6]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #3
	mov r2, #7
	mov r3, #0
	mov r5, #7
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	mov r1, #7
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #5
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r6]
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r6, #4]
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r6]
	mov r1, #2
	mov r2, #5
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r6, #8]
	mov r0, #0x20
	str r0, [sp]
	lsl r4, r5, #6
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r4, #0
	str r7, [sp, #4]
	bl sub_0204B0B8
	mov r0, #0x20
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r4, #0
	bl sub_0204B0B8
	ldr r0, [r6]
	bl sub_0204AB0C
	mov r0, #0
	mov r1, #2
	mov r2, #0x3b
	add r3, r7, #0
	bl GFL_MsgSysLoadData
	str r0, [sp, #0x10]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0x1a
	bl sub_020480C0
	str r0, [r6, #0xc]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r6, #0xc]
	add r1, r5, #0
	add r3, r4, #0
	bl ovy180_219c964
	add r0, r5, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_02022DA8
	ldr r0, [sp, #0x10]
	bl GFL_MsgDataFree
	ldr r0, [r6, #0xc]
	bl sub_02048244
	ldr r0, [r6, #0xc]
	bl sub_0204826C
	mov r0, #0
	bl sub_02044F90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219B6B4: .word 0x0219CC64
_0219B6B8: .word 0x0219CCE0
	thumb_func_end ovy180_219b4d0

	thumb_func_start ovy180_219b6bc
ovy180_219b6bc: ; 0x0219B6BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_02048210
	ldr r2, [r7, #4]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r7, #8]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #5
	mov r1, #1
	mov r2, #0
	mov r5, #0
	bl sub_02045264
	mov r0, #1
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r4, _0219B72C ; =0x0219CCE0
	mov r6, #0x28
_0219B704:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blt _0219B704
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B72C: .word 0x0219CCE0
	thumb_func_end ovy180_219b6bc

	thumb_func_start sub_0219B730
sub_0219B730: ; 0x0219B730
	ldr r3, _0219B734 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219B734: .word sub_02045A5C
	thumb_func_end sub_0219B730

	thumb_func_start sub_0219B738
sub_0219B738: ; 0x0219B738
	cmp r1, #0
	beq _0219B740
	ldr r0, [r0, #4]
	bx lr
_0219B740:
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219B738

	thumb_func_start ovy180_219b744
ovy180_219b744: ; 0x0219B744
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219B780 ; =0x0219CC74
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B780: .word 0x0219CC74
	thumb_func_end ovy180_219b744

	thumb_func_start ovy180_219b784
ovy180_219b784: ; 0x0219B784
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy180_219b784

	thumb_func_start sub_0219B7A0
sub_0219B7A0: ; 0x0219B7A0
	ldr r3, _0219B7A4 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B7A4: .word sub_0204B794
	thumb_func_end sub_0219B7A0

	thumb_func_start sub_0219B7A8
sub_0219B7A8: ; 0x0219B7A8
	ldr r3, _0219B7AC ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219B7AC: .word sub_0204B7C8
	thumb_func_end sub_0219B7A8

	thumb_func_start sub_0219B7B0
sub_0219B7B0: ; 0x0219B7B0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B7B0

	thumb_func_start ovy180_219b7b4
ovy180_219b7b4: ; 0x0219B7B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r1, _0219B824 ; =0x04000050
	ldr r0, _0219B828 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219B82C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219B830 ; =0x0219CCB0
	add r0, r7, #0
	bl sub_02046C40
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_020232D0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy180_219b4d0
	add r0, r5, #0
	add r0, #0x10
	add r1, r7, #0
	add r2, r4, #0
	bl ovy180_219b744
	ldr r0, _0219B834 ; =ovy180_219b878
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B824: .word 0x04000050
_0219B828: .word 0x04001050
_0219B82C: .word 0xFFFF1FFF
_0219B830: .word 0x0219CCB0
_0219B834: .word ovy180_219b878
	thumb_func_end ovy180_219b7b4

	thumb_func_start ovy180_219b838
ovy180_219b838: ; 0x0219B838
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0x10
	bl ovy180_219b784
	add r0, r4, #0
	bl ovy180_219b6bc
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy180_219b838

	thumb_func_start sub_0219B85C
sub_0219B85C: ; 0x0219B85C
	ldr r3, _0219B864 ; =sub_0219B7A0
	add r0, #0x10
	bx r3
	nop
_0219B864: .word sub_0219B7A0
	thumb_func_end sub_0219B85C

	thumb_func_start sub_0219B868
sub_0219B868: ; 0x0219B868
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B868

	thumb_func_start sub_0219B86C
sub_0219B86C: ; 0x0219B86C
	ldr r3, _0219B874 ; =sub_0219B7B0
	add r0, #0x10
	bx r3
	nop
_0219B874: .word sub_0219B7B0
	thumb_func_end sub_0219B86C

	thumb_func_start ovy180_219b878
ovy180_219b878: ; 0x0219B878
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219B730
	add r4, #0x10
	add r0, r4, #0
	bl sub_0219B7A8
	pop {r4, pc}
	thumb_func_end ovy180_219b878

	thumb_func_start ovy180_219b88c
ovy180_219b88c: ; 0x0219B88C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x60]
	ldr r6, _0219BAB0 ; =0x0000059C
	str r2, [sp, #0x24]
	str r1, [sp, #0x60]
	ldr r1, [sp, #0x68]
	str r3, [sp, #0x28]
	str r1, [sp, #0x68]
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	ldr r7, [sp, #0x6c]
	mov r4, #0
	blx MI_CpuFill8
	add r0, r6, #0
	ldr r1, [sp, #0x5c]
	sub r0, #0x50
	str r1, [r5, r0]
	add r1, r6, #0
	ldr r0, [sp, #0x20]
	sub r1, #0x54
	strb r0, [r5, r1]
	add r1, r6, #0
	ldr r0, [sp, #0x24]
	sub r1, #0x53
	strb r0, [r5, r1]
	add r1, r6, #0
	ldr r0, [sp, #0x28]
	sub r1, #0x52
	strb r0, [r5, r1]
	add r0, sp, #0x58
	ldrb r1, [r0]
	add r0, r6, #0
	sub r0, #0x51
	strb r1, [r5, r0]
	add r1, r6, #0
	ldr r0, [sp, #0x68]
	sub r1, #0x4c
	str r0, [r5, r1]
	bl sub_0219C548
	add r1, r6, #0
	sub r1, #0x48
	strh r0, [r5, r1]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #1
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r6, #0
	sub r1, #0x2c
	str r0, [r5, r1]
	add r0, r6, #0
	ldr r1, [sp, #0x64]
	sub r0, #0x28
	str r1, [r5, r0]
	add r0, r7, #0
	bl GFL_WordSetSystemCreateDefault
	add r1, r6, #0
	sub r1, #0x14
	str r0, [r5, r1]
	add r0, r5, #0
	ldr r1, [sp, #0x5c]
	add r0, #8
	add r2, r7, #0
	bl ovy180_219c28c
	mov r0, #7
	add r1, r7, #0
	bl sub_0204AA30
	str r0, [sp, #0x2c]
	bl sub_02021114
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	str r7, [sp]
	mov r2, #0
	mov r3, #0x20
	bl sub_0204BC48
	str r0, [r5]
	bl sub_02021114
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	str r7, [sp]
	mov r2, #1
	mov r3, #0x20
	bl sub_0204BC48
	str r0, [r5, #4]
	ldr r0, [sp, #0x2c]
	bl sub_0204AB0C
	ldr r0, [sp, #0x68]
	bl sub_0219C548
	cmp r0, #0
	bls _0219B9D8
	add r0, r5, #0
	str r0, [sp, #0x30]
	add r0, #8
	str r0, [sp, #0x30]
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x68]
	add r0, r0, #4
	str r0, [sp, #0x38]
	add r0, r6, #0
	str r0, [sp, #0x40]
	sub r0, #0x28
	str r0, [sp, #0x40]
	add r0, r6, #0
	str r0, [sp, #0x3c]
	sub r0, #0x2c
	str r0, [sp, #0x3c]
	sub r6, #0x14
_0219B988:
	ldr r1, [r5, #4]
	mov r0, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x40]
	mul r0, r4
	ldr r1, [r5, r1]
	lsl r2, r4, #4
	str r1, [sp, #4]
	ldr r1, [sp, #0x3c]
	ldr r1, [r5, r1]
	str r1, [sp, #8]
	ldr r1, [r5, r6]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x52
	lsl r1, r1, #0x10
	sub r0, #0x70
	asr r1, r1, #0x10
	lsl r0, r0, #0x10
	str r1, [sp, #0x14]
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	lsl r1, r4, #5
	add r0, r0, r1
	ldr r1, [sp, #0x38]
	ldr r3, [r5]
	add r1, r1, r2
	ldr r2, [sp, #0x60]
	bl ovy180_219bf6c
	ldr r0, [sp, #0x68]
	add r4, r4, #1
	bl sub_0219C548
	cmp r4, r0
	blo _0219B988
_0219B9D8:
	mov r7, #0x20
	str r7, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	mov r6, #0
	bl sub_020480C0
	ldr r4, _0219BAB4 ; =0x00000568
	mov r1, #0
	str r0, [r5, r4]
	str r7, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, sp, #0x58
	ldrb r0, [r0]
	mov r2, #0
	mov r3, #0x20
	bl sub_020480C0
	add r1, r4, #4
	str r0, [r5, r1]
	mov r1, #0
	sub r1, #0x28
	sub r0, r4, #4
	strh r1, [r5, r0]
	mov r7, #0x18
	sub r0, r4, #2
	strh r7, [r5, r0]
	add r0, r4, #0
	sub r0, #0x20
	sub r2, r4, #4
	ldrb r0, [r5, r0]
	ldrsh r2, [r5, r2]
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	sub r0, #0x1f
	sub r2, r4, #4
	ldrb r0, [r5, r0]
	ldrsh r2, [r5, r2]
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	sub r0, #0x1e
	sub r2, r4, #2
	ldrb r0, [r5, r0]
	ldrsh r2, [r5, r2]
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	sub r0, #0x1d
	sub r2, r4, #2
	ldrb r0, [r5, r0]
	ldrsh r2, [r5, r2]
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	sub r0, #0x12
	strh r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x10
	strh r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	ldrh r0, [r5, r0]
	add r1, r0, #0
	mov r0, #0x12
	mul r1, r7
	lsl r0, r0, #4
	sub r1, r1, r0
	add r0, r4, #0
	sub r0, #0xe
	sub r4, #0xe
	strh r1, [r5, r0]
	ldrsh r0, [r5, r4]
	cmp r0, #0
	ble _0219BA8C
	add r6, r0, #0
_0219BA8C:
	ldr r4, _0219BAB8 ; =0x0000055A
	add r0, r5, #0
	strh r6, [r5, r4]
	bl ovy180_219bce0
	add r0, r5, #0
	bl ovy180_219be04
	ldr r0, _0219BABC ; =ovy180_219be4c
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r4, #0x32
	str r0, [r5, r4]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0219BAB0: .word 0x0000059C
_0219BAB4: .word 0x00000568
_0219BAB8: .word 0x0000055A
_0219BABC: .word ovy180_219be4c
	thumb_func_end ovy180_219b88c

	thumb_func_start ovy180_219bac0
ovy180_219bac0: ; 0x0219BAC0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219BB40 ; =0x0000058C
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl GFL_TCBRemove
	mov r4, #0
	sub r6, #0x24
_0219BAD0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #2
	blt _0219BAD0
	mov r7, #0x55
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	mov r4, #0
	bl sub_0219C548
	cmp r0, #0
	bls _0219BB0A
	mov r0, #0x62
	lsl r0, r0, #2
	add r6, r5, r0
_0219BAF6:
	lsl r0, r4, #5
	add r0, r6, r0
	bl ovy180_219c1b0
	ldr r0, [r5, r7]
	add r4, r4, #1
	bl sub_0219C548
	cmp r4, r0
	blo _0219BAF6
_0219BB0A:
	ldr r0, [r5]
	bl sub_0204BCD0
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #8
	bl sub_0219C308
	ldr r4, _0219BB44 ; =0x00000588
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r4, #0x14
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BB40: .word 0x0000058C
_0219BB44: .word 0x00000588
	thumb_func_end ovy180_219bac0

	thumb_func_start ovy180_219bb48
ovy180_219bb48: ; 0x0219BB48
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219BBBC ; =0x00000594
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219BBBA
	mov r0, #0
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x3e
	ldrsh r6, [r5, r0]
	mov r1, #0x18
	mov r7, #0x18
	add r0, r6, #0
	blx sub_0208D65C
	cmp r1, #0
	bne _0219BBB4
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0208D65C
	add r1, r4, #0
	sub r1, #0x38
	ldrsh r1, [r5, r1]
	cmp r1, r0
	beq _0219BB86
	add r4, #0xb1
	add r0, r4, #0
	bl GFL_SndSEPlay
_0219BB86:
	ldr r4, _0219BBC0 ; =0x00000556
	mov r1, #0x18
	ldrsh r0, [r5, r4]
	mov r6, #0x18
	blx sub_0208D65C
	add r1, r4, #6
	strh r0, [r5, r1]
	mov r1, #0x18
	add r0, r4, #0
	sub r1, #0x40
	add r0, #0xe
	strh r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x10
	strh r6, [r5, r0]
	add r0, r5, #0
	bl ovy180_219bce0
	mov r0, #1
	add r4, #0x3a
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219BBB4:
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
_0219BBBA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BBBC: .word 0x00000594
_0219BBC0: .word 0x00000556
	thumb_func_end ovy180_219bb48

	thumb_func_start ovy180_219bbc4
ovy180_219bbc4: ; 0x0219BBC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0219BC74 ; =0x00000556
	add r5, r0, #0
	ldrsh r7, [r5, r1]
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	add r6, r7, r4
	cmp r0, r6
	ble _0219BBE4
_0219BBDA:
	strh r0, [r5, r1]
	mov r0, #0
	add r1, #8
	strh r0, [r5, r1]
	b _0219BC40
_0219BBE4:
	add r0, r1, #4
	ldrsh r0, [r5, r0]
	cmp r0, r6
	bge _0219BBEE
	b _0219BBDA
_0219BBEE:
	add r0, r7, #0
	mov r1, #0x18
	blx sub_0208D65C
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x18
	blx sub_0208D65C
	ldr r1, [sp]
	cmp r1, r0
	beq _0219BC34
	add r0, r7, #0
	mov r1, #0x18
	blx sub_0208D65C
	cmp r1, #0
	beq _0219BC34
	cmp r4, #0
	blt _0219BC22
	add r0, r6, #0
	mov r1, #0x18
	blx sub_0208D65C
	sub r0, r4, r1
	b _0219BC30
_0219BC22:
	add r0, r6, #0
	mov r1, #0x18
	blx sub_0208D65C
	mov r0, #0x18
	sub r0, r0, r1
	add r0, r4, r0
_0219BC30:
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0219BC34:
	ldr r0, _0219BC74 ; =0x00000556
	ldrsh r1, [r5, r0]
	add r1, r1, r4
	strh r1, [r5, r0]
	add r0, #8
	strh r4, [r5, r0]
_0219BC40:
	ldr r1, _0219BC78 ; =0x00000554
	mov r4, #0
	ldrh r0, [r5, r1]
	cmp r0, #0
	ble _0219BC6A
	mov r0, #0x62
	lsl r0, r0, #2
	add r6, r5, r0
	add r0, r1, #2
	str r0, [sp, #4]
	add r7, r5, r1
_0219BC56:
	ldr r1, [sp, #4]
	lsl r0, r4, #5
	ldrsh r1, [r5, r1]
	add r0, r6, r0
	bl ovy180_219c228
	ldrh r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0219BC56
_0219BC6A:
	ldr r0, _0219BC7C ; =0x00000594
	mov r1, #1
	str r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BC74: .word 0x00000556
_0219BC78: .word 0x00000554
_0219BC7C: .word 0x00000594
	thumb_func_end ovy180_219bbc4

	thumb_func_start sub_0219BC80
sub_0219BC80: ; 0x0219BC80
	ldr r1, _0219BC88 ; =0x00000556
	ldrsh r0, [r0, r1]
	bx lr
	nop
_0219BC88: .word 0x00000556
	thumb_func_end sub_0219BC80

	thumb_func_start ovy180_219bc8c
ovy180_219bc8c: ; 0x0219BC8C
	push {r4, r5}
	ldr r3, _0219BCD0 ; =0x00000554
	mov r2, #0
	ldrh r4, [r0, r3]
	mov r1, #0
	cmp r4, #0
	ble _0219BCB8
	mov r4, #0x62
	add r3, r0, r3
	lsl r4, r4, #2
_0219BCA0:
	lsl r5, r1, #5
	add r5, r0, r5
	ldr r5, [r5, r4]
	ldrb r5, [r5, #0xd]
	cmp r5, #0
	beq _0219BCB0
	mov r2, #1
	b _0219BCB8
_0219BCB0:
	ldrh r5, [r3]
	add r1, r1, #1
	cmp r1, r5
	blt _0219BCA0
_0219BCB8:
	cmp r2, #0
	beq _0219BCC8
	mov r0, #0x18
	mul r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, r5}
	bx lr
_0219BCC8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	.align 2, 0
_0219BCD0: .word 0x00000554
	thumb_func_end ovy180_219bc8c

	thumb_func_start sub_0219BCD4
sub_0219BCD4: ; 0x0219BCD4
	ldr r1, _0219BCDC ; =0x0000055A
	ldrsh r0, [r0, r1]
	bx lr
	nop
_0219BCDC: .word 0x0000055A
	thumb_func_end sub_0219BCD4

	thumb_func_start ovy180_219bce0
ovy180_219bce0: ; 0x0219BCE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0x20
	str r4, [sp]
	mov r6, #0x18
	add r5, r0, #0
	str r6, [sp, #4]
	mov r7, #0
	ldr r0, _0219BDFC ; =0x00000548
	str r7, [sp, #8]
	ldrb r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r4, [sp]
	ldr r0, _0219BDFC ; =0x00000548
	str r6, [sp, #4]
	str r7, [sp, #8]
	add r0, r0, #2
	ldrb r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	ldr r0, _0219BDFC ; =0x00000548
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, _0219BDFC ; =0x00000548
	add r0, #0x24
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, _0219BDFC ; =0x00000548
	add r0, #0x14
	ldrsh r0, [r5, r0]
	add r1, r0, #0
	sub r4, r0, #1
	add r1, #0xa
	cmp r4, r1
	bge _0219BD9A
	mov r1, #0x62
	lsl r1, r1, #2
	add r7, r5, r1
	ldr r1, _0219BDFC ; =0x00000548
	ldr r6, _0219BDFC ; =0x00000548
	str r1, [sp, #0xc]
	add r1, #0x20
	str r1, [sp, #0xc]
	ldr r1, _0219BDFC ; =0x00000548
	add r6, #0xc
	str r1, [sp, #0x10]
	add r1, #0x14
	str r1, [sp, #0x10]
_0219BD60:
	cmp r4, #0
	blt _0219BD8C
	ldrh r1, [r5, r6]
	cmp r4, r1
	bge _0219BD8C
	sub r1, r4, r0
	lsl r0, r1, #1
	add r0, r1, r0
	add r3, r0, #4
	bmi _0219BD8C
	cmp r3, #0x18
	bgt _0219BD8C
	ldr r2, _0219BDFC ; =0x00000548
	ldr r1, [sp, #0xc]
	ldrb r2, [r5, r2]
	lsl r0, r4, #5
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r7, r0
	lsr r3, r3, #0x10
	bl ovy180_219c1e4
_0219BD8C:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	ldrsh r0, [r5, r0]
	add r1, r0, #0
	add r1, #0xa
	cmp r4, r1
	blt _0219BD60
_0219BD9A:
	add r1, r0, #0
	add r4, r0, #4
	add r1, #0x11
	cmp r4, r1
	bge _0219BDF8
	mov r1, #0x62
	lsl r1, r1, #2
	add r7, r5, r1
	ldr r1, _0219BE00 ; =0x0000056C
	ldr r6, _0219BE00 ; =0x0000056C
	str r1, [sp, #0x14]
	sub r1, #0x22
	str r1, [sp, #0x14]
	ldr r1, _0219BE00 ; =0x0000056C
	sub r6, #0x18
	str r1, [sp, #0x18]
	sub r1, #0x10
	str r1, [sp, #0x18]
_0219BDBE:
	cmp r4, #0
	blt _0219BDEA
	ldrh r1, [r5, r6]
	cmp r4, r1
	bge _0219BDEA
	add r0, r0, #4
	sub r1, r4, r0
	lsl r0, r1, #1
	add r3, r1, r0
	bmi _0219BDEA
	cmp r3, #0x18
	bgt _0219BDEA
	ldr r2, [sp, #0x14]
	ldr r1, _0219BE00 ; =0x0000056C
	ldrb r2, [r5, r2]
	lsl r0, r4, #5
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r7, r0
	lsr r3, r3, #0x10
	bl ovy180_219c1e4
_0219BDEA:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	ldrsh r0, [r5, r0]
	add r1, r0, #0
	add r1, #0x11
	cmp r4, r1
	blt _0219BDBE
_0219BDF8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BDFC: .word 0x00000548
_0219BE00: .word 0x0000056C
	thumb_func_end ovy180_219bce0

	thumb_func_start ovy180_219be04
ovy180_219be04: ; 0x0219BE04
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219BE44 ; =0x00000568
	add r5, r0, #0
	mov r4, #0
_0219BE0C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	bl sub_02048244
	ldr r0, [r6, r7]
	bl sub_0204826C
	add r4, r4, #1
	cmp r4, #2
	blt _0219BE0C
	ldr r4, _0219BE48 ; =0x00000548
	ldrb r0, [r5, r4]
	bl sub_02044F90
	add r0, r4, #2
	ldrb r0, [r5, r0]
	bl sub_02044F90
	add r0, r4, #1
	ldrb r0, [r5, r0]
	bl sub_02044F90
	add r0, r4, #3
	ldrb r0, [r5, r0]
	bl sub_02044F90
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BE44: .word 0x00000568
_0219BE48: .word 0x00000548
	thumb_func_end ovy180_219be04

	thumb_func_start ovy180_219be4c
ovy180_219be4c: ; 0x0219BE4C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x59
	add r4, r1, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219BE6A
	add r0, r4, #0
	bl ovy180_219be04
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #1
	add r5, #8
	str r0, [r4, r5]
_0219BE6A:
	ldr r5, _0219BF60 ; =0x00000598
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219BF5E
	add r0, r5, #0
	sub r0, #0x42
	ldrsh r0, [r4, r0]
	mov r1, #0x18
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	bne _0219BEB0
	add r1, r5, #0
	sub r1, #0x34
	ldrsh r1, [r4, r1]
	add r1, r1, r0
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	add r1, r5, #0
	sub r1, #0x32
	ldrsh r1, [r4, r1]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	sub r0, #0x3a
	ldrsh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x38
	strh r1, [r4, r0]
	mov r0, #1
	sub r5, #0x36
	strh r0, [r4, r5]
	b _0219BF28
_0219BEB0:
	add r1, r5, #0
	sub r1, #0x3a
	ldrsh r2, [r4, r1]
	cmp r2, #0
	blt _0219BEC2
	sub r5, #0x38
	ldrsh r1, [r4, r5]
	cmp r1, #0
	bge _0219BED8
_0219BEC2:
	cmp r2, #0
	bge _0219BED0
	mov r1, #0x56
	lsl r1, r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, #0
	blt _0219BED8
_0219BED0:
	ldr r1, _0219BF64 ; =0x00000562
	ldrsh r2, [r4, r1]
	cmp r2, #0
	beq _0219BF00
_0219BED8:
	ldr r1, _0219BF64 ; =0x00000562
	mov r2, #0
	strh r2, [r4, r1]
	sub r2, r1, #4
	ldrsh r2, [r4, r2]
	cmp r2, #0
	blt _0219BEFE
_0219BEE6:
	add r2, r1, #2
	ldrsh r2, [r4, r2]
	add r2, r2, r0
	lsl r2, r2, #0x10
	asr r7, r2, #0x10
	add r2, r1, #4
	ldrsh r2, [r4, r2]
	add r0, r2, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r2, #1
	b _0219BF24
_0219BEFE:
	b _0219BF0A
_0219BF00:
	sub r2, r1, #2
	ldrsh r2, [r4, r2]
	cmp r2, #0
	blt _0219BF0A
	b _0219BEE6
_0219BF0A:
	add r3, r1, #2
	ldrsh r3, [r4, r3]
	mov r2, #0x17
	sub r0, r2, r0
	sub r3, r3, r0
	lsl r3, r3, #0x10
	asr r7, r3, #0x10
	add r3, r1, #4
	ldrsh r3, [r4, r3]
	sub r2, #0x18
	sub r0, r3, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_0219BF24:
	sub r0, r1, #2
	strh r2, [r4, r0]
_0219BF28:
	ldr r5, _0219BF68 ; =0x00000548
	mov r1, #3
	ldrb r0, [r4, r5]
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r5, #1
	ldrb r0, [r4, r0]
	mov r1, #3
	add r2, r7, #0
	bl sub_02044CFC
	add r0, r5, #2
	ldrb r0, [r4, r0]
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r5, #3
	ldrb r0, [r4, r0]
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #0
	add r5, #0x50
	str r0, [r4, r5]
_0219BF5E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BF60: .word 0x00000598
_0219BF64: .word 0x00000562
_0219BF68: .word 0x00000548
	thumb_func_end ovy180_219be4c

	thumb_func_start ovy180_219bf6c
ovy180_219bf6c: ; 0x0219BF6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r1, #0
	ldr r1, [sp, #0x50]
	str r2, [sp, #0xc]
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x5c]
	mov r2, #0x20
	str r1, [sp, #0x5c]
	ldr r1, [sp, #0x64]
	add r6, r0, #0
	str r1, [sp, #0x64]
	ldr r1, [sp, #0x68]
	str r3, [sp, #0x10]
	str r1, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	ldr r5, [sp, #0x58]
	str r1, [sp, #0x6c]
	mov r1, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x60]
	str r7, [r6]
	str r0, [r6, #0x1c]
	ldr r3, [sp, #0x6c]
	mov r0, #0x20
	mov r1, #3
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r6, #4]
	ldr r1, [sp, #0x6c]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x6c]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x6c]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x6c]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	ldr r2, [sp, #0x14]
	mov r1, #5
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x54]
	ldr r2, [sp, #0x18]
	mov r1, #7
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x54]
	ldr r2, [sp, #0x1c]
	mov r1, #8
	bl GFL_MsgDataLoadStrbuf
	ldr r2, [r7, #4]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x5c]
	mov r1, #0
	lsr r2, r2, #0x19
	mov r3, #2
	bl StringSetNumber
	ldr r2, [r7, #4]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r2, r2, #0x19
	ldr r0, [sp, #0x5c]
	mov r1, #2
	lsr r2, r2, #0x19
	mov r3, #3
	bl StringSetNumber
	ldr r2, [r7, #4]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r2, r2, #0xf
	ldr r0, [sp, #0x5c]
	mov r1, #3
	lsr r2, r2, #0x16
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02022888
	lsr r2, r0, #1
	mov r1, #0x26
	sub r1, r1, r2
	str r5, [sp]
	lsl r1, r1, #0x10
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x20]
	asr r1, r1, #0x10
	mov r2, #5
	bl sub_02021CFC
	str r5, [sp]
	ldr r0, [r6, #4]
	ldr r3, [r7]
	mov r1, #0x34
	mov r2, #5
	bl sub_02021CFC
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02022888
	lsr r2, r0, #1
	mov r1, #0x8e
	sub r1, r1, r2
	str r5, [sp]
	lsl r1, r1, #0x10
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x20]
	asr r1, r1, #0x10
	mov r2, #5
	bl sub_02021CFC
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02022888
	lsr r2, r0, #1
	mov r1, #0xc2
	sub r1, r1, r2
	str r5, [sp]
	lsl r1, r1, #0x10
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x20]
	asr r1, r1, #0x10
	mov r2, #5
	bl sub_02021CFC
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldrh r0, [r7, #8]
	ldrb r1, [r7, #0xa]
	ldrb r2, [r7, #0xb]
	ldrb r3, [r7, #0xc]
	bl sub_02020F94
	str r0, [sp, #0x24]
	bl sub_0202111C
	str r0, [sp, #0x28]
	bl sub_02021190
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x6c]
	mov r0, #7
	bl sub_0204AA30
	ldr r1, [sp, #0x6c]
	add r2, r4, #0
	str r1, [sp]
	ldr r1, [sp, #0x24]
	mov r3, #2
	add r5, r0, #0
	bl sub_0204B81C
	str r0, [r6, #0x14]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x6c]
	add r0, r5, #0
	bl sub_0204BDE0
	str r0, [r6, #0x18]
	add r0, r5, #0
	bl sub_0204AB0C
	add r0, sp, #0x30
	add r1, r4, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #1
	add r0, sp, #0x30
	strh r1, [r0, #4]
	strb r1, [r0, #7]
_0219C130:
	mov r1, #0xe8
	add r0, sp, #0x30
	strh r1, [r0]
	cmp r4, #0
	bne _0219C142
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x10]
	strh r1, [r0, #2]
	b _0219C148
_0219C142:
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x50]
	strh r1, [r0, #2]
_0219C148:
	add r1, sp, #0x30
	mov r0, #2
	ldrsh r1, [r1, r0]
	lsl r0, r4, #1
	add r0, r6, r0
	strh r1, [r0, #0x10]
	lsl r0, r4, #2
	add r5, r6, r0
	add r0, sp, #0x30
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r6, #0x14]
	ldr r3, [r6, #0x18]
	bl sub_0204C040
	str r0, [r5, #8]
	ldrh r0, [r7, #8]
	ldrb r1, [r7, #0xa]
	ldrb r2, [r7, #0xb]
	ldrb r3, [r7, #0xc]
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r5, #8]
	mov r2, #0
	bl sub_0204C378
	add r1, sp, #0x30
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x12
	cmp r1, r0
	ble _0219C19E
	cmp r1, #0xd0
	bge _0219C19E
	ldr r0, [r5, #8]
	mov r1, #1
	b _0219C1A2
_0219C19E:
	ldr r0, [r5, #8]
	mov r1, #0
_0219C1A2:
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _0219C130
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy180_219bf6c

	thumb_func_start ovy180_219c1b0
ovy180_219c1b0: ; 0x0219C1B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219C1B6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #2
	blt _0219C1B6
	ldr r0, [r5, #0x14]
	bl sub_0204B98C
	ldr r0, [r5, #0x18]
	bl sub_0204BE64
	ldr r0, [r5, #4]
	bl sub_02046EDC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy180_219c1b0

	thumb_func_start ovy180_219c1e4
ovy180_219c1e4: ; 0x0219C1E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_020484F4
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	str r4, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r3, #0
	bl ovy180_219ca54
	ldr r3, [r5]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #4]
	add r1, r6, #0
	lsl r3, r3, #7
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl ovy180_219c318
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy180_219c1e4

	thumb_func_start ovy180_219c228
ovy180_219c228: ; 0x0219C228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	neg r0, r1
	str r0, [sp]
	str r0, [sp, #4]
	mov r4, #0
_0219C236:
	lsl r7, r4, #2
	add r5, r6, r7
	lsl r2, r4, #0x10
	ldr r0, [r5, #8]
	add r1, sp, #8
	lsr r2, r2, #0x10
	bl sub_0204C178
	lsl r1, r4, #1
	add r2, r6, r1
	mov r1, #0x10
	add r0, sp, #0
	ldrsh r1, [r2, r1]
	ldr r0, [r0, r7]
	lsl r2, r4, #0x10
	add r1, r0, r1
	add r0, sp, #0
	strh r1, [r0, #0xa]
	ldr r0, [r5, #8]
	add r1, sp, #8
	lsr r2, r2, #0x10
	bl sub_0204C140
	add r1, sp, #0
	mov r0, #0xa
	ldrsh r1, [r1, r0]
	sub r0, #0x1a
	cmp r1, r0
	ble _0219C27A
	cmp r1, #0xd0
	bge _0219C27A
	ldr r0, [r5, #8]
	mov r1, #1
	b _0219C27E
_0219C27A:
	ldr r0, [r5, #8]
	mov r1, #0
_0219C27E:
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _0219C236
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy180_219c228

	thumb_func_start ovy180_219c28c
ovy180_219c28c: ; 0x0219C28C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	mov r2, #6
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #6
	str r0, [sp, #4]
	mov r7, #0
	blx MI_CpuFill8
	add r0, r4, #0
	mov r1, #1
	bl sub_0219B738
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #0
	bl sub_0219B738
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	str r5, [sp]
	mov r0, #0x4c
	mov r1, #5
	mov r2, #0
	add r3, sp, #0xc
	bl sub_0204B304
	mov ip, r0
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
_0219C2D2:
	ldr r0, [sp, #8]
	lsl r1, r7, #6
	add r3, r0, r1
	ldr r0, [sp, #4]
	mov r2, #0
	add r5, r0, r1
_0219C2DE:
	lsl r1, r2, #1
	ldrh r0, [r3, r1]
	add r2, r2, #1
	add r0, r6, r0
	strh r0, [r5, r1]
	ldrh r0, [r3, r1]
	add r1, r5, r1
	add r1, #0xc0
	add r0, r4, r0
	strh r0, [r1]
	cmp r2, #0x20
	blt _0219C2DE
	add r7, r7, #1
	cmp r7, #3
	blt _0219C2D2
	mov r0, ip
	bl sub_0203A24C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219c28c

	thumb_func_start sub_0219C308
sub_0219C308: ; 0x0219C308
	mov r2, #6
	ldr r3, _0219C314 ; =MI_CpuFill8
	mov r1, #0
	lsl r2, r2, #6
	bx r3
	nop
_0219C314: .word MI_CpuFill8
	thumb_func_end sub_0219C308

	thumb_func_start ovy180_219c318
ovy180_219c318: ; 0x0219C318
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #4
	blo _0219C32A
	add r6, #0xc0
_0219C32A:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #3
	lsl r3, r4, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_020454AC
	mov r0, #3
	str r0, [sp]
	lsl r2, r4, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x20
	str r7, [sp, #4]
	bl sub_0204566C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy180_219c318

	thumb_func_start ovy180_219c358
ovy180_219c358: ; 0x0219C358
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #8]
	bl sub_02017934
	bl sub_0200AFBC
	add r6, r0, #0
	bl sub_0200AFC8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0219C504 ; =0x00000AA4
	lsl r5, r4, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0x10]
	ldr r3, _0219C508 ; =0x0219CE40
	add r1, r5, #4
	mov r2, #0
	bl sub_0203A1FC
	str r0, [sp, #0x18]
	mov r1, #0
	add r2, r5, #4
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	cmp r4, #0
	str r4, [r0]
	beq _0219C3AE
	mov r0, #0x80
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200B04C
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	bhi _0219C3B0
_0219C3AE:
	b _0219C4FC
_0219C3B0:
	ldr r0, [sp, #0x18]
	add r7, r0, #4
	mov r0, #0x7f
	str r0, [sp, #0x20]
_0219C3B8:
	lsl r0, r5, #4
	ldr r1, [sp, #8]
	str r0, [sp, #0x1c]
	add r4, r7, r0
	mov r0, #8
	bl GFL_StrBufCreate
	ldr r1, [sp, #0x1c]
	str r0, [r7, r1]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200AFE4
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r0, [r7, r0]
	bl sub_02048614
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200AFEC
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x20]
	bic r1, r2
	mov r2, #0x7f
	and r0, r2
	orr r0, r1
	str r0, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200B000
	lsl r0, r0, #0x16
	ldr r2, [r4, #4]
	ldr r1, _0219C50C ; =0xFFFE007F
	lsr r0, r0, #0xf
	and r1, r2
	orr r0, r1
	str r0, [r4, #4]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _0219C41C
	ldr r1, [r4, #4]
	ldr r0, _0219C510 ; =0x01FFFFFF
	and r1, r0
	add r0, r5, #1
	b _0219C428
_0219C41C:
	cmp r1, r0
	bne _0219C42E
	ldr r1, [r4, #4]
	ldr r0, _0219C510 ; =0x01FFFFFF
	and r1, r0
	ldr r0, [sp, #0x10]
_0219C428:
	lsl r0, r0, #0x19
	orr r0, r1
	str r0, [r4, #4]
_0219C42E:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200B014
	lsl r0, r0, #0x18
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x18
	cmp r1, r5
	bne _0219C462
	mov r1, #1
	cmp r0, #0
	beq _0219C448
	mov r1, #0
_0219C448:
	ldr r2, [r4, #4]
	ldr r0, _0219C514 ; =0xFE01FFFF
	and r0, r2
	add r2, r1, #1
	lsl r1, r2, #2
	add r1, r2, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #7
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0xd]
	b _0219C4C0
_0219C462:
	ldr r1, [r4, #4]
	lsr r1, r1, #0x19
	cmp r1, #1
	bne _0219C47C
	mov r1, #0
	cmp r0, #0
	bne _0219C472
	mov r1, #5
_0219C472:
	ldr r2, [r4, #4]
	ldr r0, _0219C514 ; =0xFE01FFFF
	add r1, r1, #2
	and r0, r2
	b _0219C4B8
_0219C47C:
	cmp r1, #2
	bne _0219C492
	mov r1, #0
	cmp r0, #0
	bne _0219C488
	mov r1, #5
_0219C488:
	ldr r2, [r4, #4]
	ldr r0, _0219C514 ; =0xFE01FFFF
	add r1, r1, #3
	and r0, r2
	b _0219C4B8
_0219C492:
	cmp r1, #3
	bne _0219C4A8
	mov r1, #0
	cmp r0, #0
	bne _0219C49E
	mov r1, #5
_0219C49E:
	ldr r2, [r4, #4]
	ldr r0, _0219C514 ; =0xFE01FFFF
	add r1, r1, #4
	and r0, r2
	b _0219C4B8
_0219C4A8:
	mov r1, #0
	cmp r0, #0
	bne _0219C4B0
	mov r1, #5
_0219C4B0:
	ldr r2, [r4, #4]
	ldr r0, _0219C514 ; =0xFE01FFFF
	add r1, r1, #1
	and r0, r2
_0219C4B8:
	lsl r1, r1, #0x18
	lsr r1, r1, #7
	orr r0, r1
	str r0, [r4, #4]
_0219C4C0:
	add r0, r4, #0
	add r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, #8
	add r3, #0xa
	bl sub_0200B024
	ldr r1, [r4, #4]
	add r5, r5, #1
	lsl r0, r1, #0x19
	lsr r0, r0, #0x19
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	lsr r0, r1, #0x19
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r5, r0
	bhs _0219C4FC
	b _0219C3B8
_0219C4FC:
	ldr r0, [sp, #0x18]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219C504: .word 0x00000AA4
_0219C508: .word 0x0219CE40
_0219C50C: .word 0xFFFE007F
_0219C510: .word 0x01FFFFFF
_0219C514: .word 0xFE01FFFF
	thumb_func_end ovy180_219c358

	thumb_func_start ovy180_219c518
ovy180_219c518: ; 0x0219C518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0219C53E
	mov r4, #0
	cmp r0, #0
	bls _0219C53E
_0219C528:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219C536
	bl GFL_StrBufFree
_0219C536:
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _0219C528
_0219C53E:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy180_219c518

	thumb_func_start sub_0219C548
sub_0219C548: ; 0x0219C548
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219C548

	thumb_func_start sub_0219C54C
sub_0219C54C: ; 0x0219C54C
	ldr r3, _0219C554 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x2c
	bx r3
	.align 2, 0
_0219C554: .word MI_CpuFill8
	thumb_func_end sub_0219C54C

	thumb_func_start sub_0219C558
sub_0219C558: ; 0x0219C558
	ldr r3, _0219C560 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x2c
	bx r3
	.align 2, 0
_0219C560: .word MI_CpuFill8
	thumb_func_end sub_0219C558

	thumb_func_start ovy180_219c564
ovy180_219c564: ; 0x0219C564
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, sp, #0
	add r4, sp, #4
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219C59C
	ldr r0, [sp, #4]
	str r0, [r5]
	ldr r0, [sp]
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	ldr r0, [sp]
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, [sp]
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	b _0219C5E6
_0219C59C:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _0219C5E0
	ldr r1, [sp]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	bpl _0219C5B2
	neg r0, r0
_0219C5B2:
	cmp r0, #1
	blt _0219C5CE
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x10]
	sub r0, r1, r0
	str r0, [r5, #0x18]
	ldr r1, [sp]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, [sp]
	str r0, [r5, #0x14]
_0219C5CE:
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	ldr r0, [sp]
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x20]
	add r0, r0, #1
	str r0, [r5, #0x20]
	mov r0, #0
	b _0219C5E4
_0219C5E0:
	ldr r0, [r5, #0x24]
	add r0, r0, #1
_0219C5E4:
	str r0, [r5, #0x24]
_0219C5E6:
	bl GCTX_HIDGetPressedKeys
	mov r4, #0xc0
	tst r0, r4
	beq _0219C5F8
	mov r0, #0
	add sp, #8
	str r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
_0219C5F8:
	bl sub_0203DF20
	tst r0, r4
	beq _0219C606
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
_0219C606:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy180_219c564

	thumb_func_start ovy180_219c60c
ovy180_219c60c: ; 0x0219C60C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203DA2C
	cmp r0, #0
	beq _0219C646
	cmp r4, #0
	beq _0219C62A
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	str r0, [r4, #4]
_0219C62A:
	cmp r6, #0
	beq _0219C636
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	str r1, [r6]
	str r0, [r6, #4]
_0219C636:
	cmp r7, #0
	beq _0219C642
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	str r1, [r7]
	str r0, [r7, #4]
_0219C642:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219C646:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219c60c

	thumb_func_start ovy180_219c64c
ovy180_219c64c: ; 0x0219C64C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203DF20
	cmp r0, #0
	bne _0219C75C
	ldr r0, [r5, #0x24]
	cmp r0, #1
	bhs _0219C75C
	mov r0, #1
	str r0, [r5, #0x24]
	cmp r4, #0
	beq _0219C676
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	str r0, [r4, #4]
_0219C676:
	cmp r6, #0
	beq _0219C682
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	str r1, [r6]
	str r0, [r6, #4]
_0219C682:
	cmp r7, #0
	beq _0219C74C
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0219C69E
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C6AC
_0219C69E:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C6AC:
	blx sub_0208DA4C
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	ble _0219C6CA
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C6D8
_0219C6CA:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C6D8:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	mov r0, #0
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _0219C6FC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C70A
_0219C6FC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C70A:
	blx sub_0208DA4C
	add r4, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	ble _0219C728
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C736
_0219C728:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C736:
	blx sub_0208DA4C
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	add r2, r7, #0
	str r4, [sp, #4]
	bl VEC_Subtract
_0219C74C:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0219C756
	ldr r0, [r5, #0x20]
	str r0, [r1]
_0219C756:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219C75C:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219c64c

	thumb_func_start sub_0219C764
sub_0219C764: ; 0x0219C764
	cmp r1, #0
	beq _0219C76C
	ldr r0, [r0, #0x28]
	str r0, [r1]
_0219C76C:
	ldr r3, _0219C770 ; =sub_0203DF20
	bx r3
	.align 2, 0
_0219C770: .word sub_0203DF20
	thumb_func_end sub_0219C764

	thumb_func_start sub_0219C774
sub_0219C774: ; 0x0219C774
	ldr r3, _0219C77C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x14
	bx r3
	.align 2, 0
_0219C77C: .word MI_CpuFill8
	thumb_func_end sub_0219C774

	thumb_func_start sub_0219C780
sub_0219C780: ; 0x0219C780
	ldr r3, _0219C788 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x14
	bx r3
	.align 2, 0
_0219C788: .word MI_CpuFill8
	thumb_func_end sub_0219C780

	thumb_func_start ovy180_219c78c
ovy180_219c78c: ; 0x0219C78C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0219C7C4
	ldr r1, [r5, #4]
	mov r4, #0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	ldr r2, [r5]
	asr r0, r0, #1
	add r0, r2, r0
	mov r2, #0xa
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	str r4, [r5, #0xc]
	str r0, [r5, #8]
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #8]
_0219C7C4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy180_219c78c

	thumb_func_start ovy180_219c7c8
ovy180_219c7c8: ; 0x0219C7C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bge _0219C7D6
	neg r1, r5
_0219C7D6:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0219C7E0
	b _0219C8EC
_0219C7E0:
	neg r1, r5
	cmp r5, #0
	blt _0219C7E8
	add r1, r5, #0
_0219C7E8:
	add r0, r5, #0
	blx sub_0208D65C
	strb r0, [r6, #0x10]
	cmp r5, #0
	bge _0219C7F6
	neg r5, r5
_0219C7F6:
	mov r0, #0xf
	lsl r0, r0, #0xe
	cmp r5, r0
	ble _0219C800
	b _0219C808
_0219C800:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r5, r0
	bge _0219C80A
_0219C808:
	add r5, r0, #0
_0219C80A:
	cmp r4, #0
	beq _0219C822
	lsl r7, r4, #0xc
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C832
_0219C822:
	lsl r7, r4, #0xc
	add r0, r7, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C832:
	blx sub_0208DA4C
	mov r1, #0xd
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _0219C8EC
	cmp r4, #0
	beq _0219C854
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C862
_0219C854:
	add r0, r7, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C862:
	blx sub_0208DA4C
	mov r1, #0xd
	lsl r1, r1, #0xc
	str r1, [sp]
	cmp r0, r1
	bgt _0219C8CA
	cmp r4, #0
	beq _0219C886
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C894
_0219C886:
	add r0, r7, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C894:
	blx sub_0208DA4C
	cmp r0, #0
	bge _0219C8A0
	mov r0, #0
	b _0219C8C8
_0219C8A0:
	cmp r4, #0
	beq _0219C8B6
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C8C4
_0219C8B6:
	add r0, r7, #0
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C8C4:
	blx sub_0208DA4C
_0219C8C8:
	str r0, [sp]
_0219C8CA:
	mov r4, #1
	lsl r4, r4, #0xc
	mov r1, #0x3b
	sub r0, r5, r4
	lsl r1, r1, #0xc
	bl FX_Div
	str r0, [r6]
	mov r1, #0xd
	ldr r0, [sp]
	lsl r1, r1, #0xc
	bl FX_Div
	sub r0, r4, r0
	str r0, [r6, #4]
	mov r0, #1
	str r0, [r6, #0xc]
_0219C8EC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219c7c8

	thumb_func_start sub_0219C8F0
sub_0219C8F0: ; 0x0219C8F0
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C8F0

	thumb_func_start ovy180_219c8f8
ovy180_219c8f8: ; 0x0219C8F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0x10
	ldr r0, [r5, #8]
	ldrsb r2, [r5, r1]
	add r4, r0, #0
	mul r4, r2
	lsl r2, r1, #0xb
	cmp r4, r2
	ble _0219C910
	add r4, r2, #0
	b _0219C918
_0219C910:
	ldr r1, _0219C94C ; =0xFFFF8000
	cmp r4, r1
	bge _0219C918
	add r4, r1, #0
_0219C918:
	asr r1, r0, #0x1f
	mov r2, #0xcd
	mov r3, #0
	mov r6, #0
	blx sub_0208D60C
	mov r3, #2
	lsl r3, r3, #0xa
	add r7, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r7, #0xc
	orr r1, r0
	ldr r2, [r5, #8]
	ldr r0, _0219C950 ; =0xFFFFF000
	sub r1, r2, r1
	str r1, [r5, #8]
	cmp r1, r0
	ble _0219C946
	lsl r0, r3, #1
	cmp r1, r0
	bge _0219C946
	str r6, [r5, #8]
_0219C946:
	lsl r0, r4, #4
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C94C: .word 0xFFFF8000
_0219C950: .word 0xFFFFF000
	thumb_func_end ovy180_219c8f8

	thumb_func_start sub_0219C954
sub_0219C954: ; 0x0219C954
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219C95E
	mov r0, #1
	bx lr
_0219C95E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C954

	thumb_func_start ovy180_219c964
ovy180_219c964: ; 0x0219C964
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r3, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	cmp r4, #0
	bne _0219C9C6
	bl sub_020484D8
	lsl r0, r0, #0x12
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_020484DC
	lsl r0, r0, #0x12
	lsr r4, r0, #0x10
	ldr r0, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_020484F4
	lsl r1, r6, #0x10
	lsl r2, r4, #0x10
	ldr r3, [sp, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	str r5, [sp]
	bl sub_02021CFC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219C9C6:
	ldr r6, _0219CA50 ; =0x00008043
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0xc]
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r4, #0
	bl GFL_CopyVarForText
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #4]
	bl sub_020484D8
	lsl r0, r0, #0x12
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_020484DC
	lsl r0, r0, #0x12
	lsr r4, r0, #0x10
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_020484F4
	lsl r1, r6, #0x10
	lsl r2, r4, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r7, #0
	str r5, [sp]
	bl sub_02021CFC
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_WordSetSystemFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CA50: .word 0x00008043
	thumb_func_end ovy180_219c964

	thumb_func_start ovy180_219ca54
ovy180_219ca54: ; 0x0219CA54
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02046EF4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02046EF4
	add r2, sp, #0x18
	ldrh r3, [r2, #8]
	add r1, r0, #0
	add r0, r3, #0
	mul r0, r4
	add r0, r5, r0
	ldrh r4, [r2, #4]
	ldrh r5, [r2]
	ldrh r2, [r2, #0xc]
	mul r4, r3
	add r4, r5, r4
	lsl r0, r0, #5
	lsl r4, r4, #5
	mul r2, r3
	add r0, r6, r0
	add r1, r1, r4
	lsl r2, r2, #5
	blx MIi_CpuCopy32
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy180_219ca54

	thumb_func_start ovy180_219ca90
ovy180_219ca90: ; 0x0219CA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #4]
	add r5, r0, #0
	str r2, [sp, #8]
	ldr r0, _0219CB14 ; =0x00000D4A
	add r6, r3, #0
	add r7, sp, #0x38
	str r0, [sp]
	ldrh r0, [r7, #0x10]
	ldr r3, _0219CB18 ; =0x0219CE40
	mov r1, #0x24
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x44]
	str r0, [r4, #0x20]
	ldrh r1, [r7, #0x10]
	mov r0, #0x80
	bl GFL_StrBufCreate
	str r0, [r4, #0x18]
	ldrh r3, [r7, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r4]
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r4]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1, #4]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #6]
	ldrb r0, [r5, #6]
	str r6, [sp, #0x14]
	strb r0, [r1, #0x10]
	ldr r0, [sp, #0x3c]
	strh r0, [r1, #0x12]
	str r0, [sp, #0x20]
	ldrb r0, [r5, #7]
	strb r0, [r1, #0x11]
	ldrb r0, [r7]
	add r1, sp, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	bl sub_0202AEC4
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CB14: .word 0x00000D4A
_0219CB18: .word 0x0219CE40
	thumb_func_end ovy180_219ca90

	thumb_func_start ovy180_219cb1c
ovy180_219cb1c: ; 0x0219CB1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0202B030
	ldr r0, [r4]
	bl sub_02046EDC
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy180_219cb1c

	thumb_func_start ovy180_219cb3c
ovy180_219cb3c: ; 0x0219CB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r2, #0
	ldrh r2, [r5, #4]
	add r6, r1, #0
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	add r4, r3, #0
	bl sub_0204713C
	ldr r2, [r5, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ovy180_219cbd0
	ldr r0, [r5, #0x18]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x20]
	ldr r1, [r5]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	str r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219cb3c

	thumb_func_start sub_0219CB94
sub_0219CB94: ; 0x0219CB94
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219CB94

	thumb_func_start sub_0219CB98
sub_0219CB98: ; 0x0219CB98
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r3, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219CB98

	thumb_func_start ovy180_219cba0
ovy180_219cba0: ; 0x0219CBA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219CBC0
	ldr r0, [r4, #0x20]
	ldr r1, [r4]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219CBC0
	ldr r0, [r4, #0x1c]
	bl sub_0202B0F4
	mov r0, #0
	str r0, [r4, #8]
_0219CBC0:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219CBCA
	mov r0, #1
	pop {r4, pc}
_0219CBCA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy180_219cba0

	thumb_func_start ovy180_219cbd0
ovy180_219cbd0: ; 0x0219CBD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _0219CBE8
	cmp r0, #1
	beq _0219CBF2
	cmp r0, #2
	beq _0219CC2A
	pop {r3, r4, r5, r6, r7, pc}
_0219CBE8:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	str r1, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0219CBF2:
	ldr r0, [r5]
	bl sub_02046EF8
	lsr r6, r0, #1
	ldr r0, [r5]
	bl sub_02046EFC
	lsr r7, r0, #1
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r7, r0
	ldr r0, [r5, #0xc]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0219CC2A:
	ldr r0, [r5]
	bl sub_02046EFC
	lsr r6, r0, #1
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r6, r0
	ldr r0, [r5, #0xc]
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy180_219cbd0
_0219CC4C:
	.byte 0x21, 0xAD, 0x19, 0x02
	.byte 0x05, 0xB0, 0x19, 0x02, 0x55, 0xAF, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x08, 0x00, 0x27, 0x00, 0x06, 0x00, 0x02, 0x00, 0x40, 0x00, 0x27, 0x00, 0x05, 0x00, 0x02, 0x00
	.byte 0x70, 0x00, 0x27, 0x00, 0x06, 0x00, 0x02, 0x00, 0xA8, 0x00, 0x27, 0x00, 0x06, 0x00, 0x02, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x72, 0x63, 0x5F, 0x72, 0x61, 0x6E, 0x6B, 0x69, 0x6E, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219CC4C
