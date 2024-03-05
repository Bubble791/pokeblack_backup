    .include "macros/function.inc"
	.include "overlay267.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy267_219ce80
ovy267_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0219CF24 ; =0x0219D46C
	add r5, r2, #0
	ldrh r1, [r0]
	add r0, sp, #4
	mov r2, #3
	strh r1, [r0]
	mov r0, #1
	mov r1, #0x88
	lsl r2, r2, #0x10
	add r7, sp, #4
	mov r6, #0x88
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x88
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	strh r6, [r4]
	str r5, [r4, #0x10]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy267_219d1b4
	str r0, [r4, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #8]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	mov r5, #2
	bl sub_02044BD8
	ldr r0, _0219CF28 ; =0x0219D055
	add r1, r4, #0
	mov r2, #1
	bl sub_020056FC
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ovy267_219d058
	bl sub_02015878
	cmp r0, #0x16
	bne _0219CF12
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl GXS_LoadBGPltt
_0219CF12:
	mov r0, #0x10
	mov r1, #0
	mov r2, #0
	bl ovy267_219d0e4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CF24: .word 0x0219D46C
_0219CF28: .word 0x0219D055
	thumb_func_end ovy267_219ce80

	thumb_func_start ovy267_219cf2c
ovy267_219cf2c: ; 0x0219CF2C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219CF90 ; =0x0219D47C
	str r0, [sp]
	add r5, r3, #0
	mov r4, #0
	mov r7, #0x2c
_0219CF38:
	add r0, r4, #0
	mul r0, r7
	ldr r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #1
	blo _0219CF38
	ldr r2, _0219CF94 ; =0x04001050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _0219CF98 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r5, #0
	bl sub_0219D0E0
	ldr r0, [r5, #0x14]
	bl sub_0203A6A8
	ldr r0, [r5, #0xc]
	bl sub_02021C44
	ldr r0, [r5, #0xc]
	bl sub_02021A18
	ldr r0, [r5, #8]
	bl sub_02022DA8
	ldr r0, [r5, #4]
	bl ovy267_219d25c
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x88
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF90: .word 0x0219D47C
_0219CF94: .word 0x04001050
_0219CF98: .word 0xFFFF1FFF
	thumb_func_end ovy267_219cf2c

	thumb_func_start ovy267_219cf9c
ovy267_219cf9c: ; 0x0219CF9C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #7
	bhi _0219D044
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CFB4: ; jump table
	.short _0219CFC4 - _0219CFB4 - 2 ; case 0
	.short _0219CFCA - _0219CFB4 - 2 ; case 1
	.short _0219CFD6 - _0219CFB4 - 2 ; case 2
	.short _0219CFFC - _0219CFB4 - 2 ; case 3
	.short _0219D016 - _0219CFB4 - 2 ; case 4
	.short _0219D026 - _0219CFB4 - 2 ; case 5
	.short _0219D034 - _0219CFB4 - 2 ; case 6
	.short _0219D040 - _0219CFB4 - 2 ; case 7
_0219CFC4:
	mov r0, #4
_0219CFC6:
	str r0, [r4]
	b _0219D044
_0219CFCA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D044
	mov r0, #2
	b _0219CFC6
_0219CFD6:
	ldr r0, [r5, #0x18]
	mov r2, #0
	add r1, r0, #1
	mov r0, #0xe1
	lsl r0, r0, #2
	str r1, [r5, #0x18]
	cmp r1, r0
	ble _0219CFE8
	mov r2, #1
_0219CFE8:
	cmp r2, #0
	beq _0219D044
	mov r0, #3
_0219CFEE:
	str r0, [r4]
	mov r0, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy267_219d0e4
	b _0219D044
_0219CFFC:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D044
	add r0, r5, #0
	bl ovy267_219d058
	mov r0, #0x10
	mov r1, #0
	mov r2, #0
	bl ovy267_219d0e4
	b _0219CFC4
_0219D016:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D044
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #5
	b _0219CFC6
_0219D026:
	bl sub_0203DEFC
	mov r1, #0xb
	tst r0, r1
	beq _0219D044
	mov r0, #6
	b _0219CFEE
_0219D034:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D044
	mov r0, #7
	b _0219CFC6
_0219D040:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D044:
	ldr r0, [r5, #0xc]
	bl sub_02021A3C
	ldr r0, [r5, #4]
	bl ovy267_219d2b8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy267_219cf9c
_0219D054:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy267_219d058
ovy267_219d058: ; 0x0219D058
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xd7
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #2
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	mov r7, #1
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	bl sub_02015878
	cmp r0, #0x16
	bne _0219D0BE
	mov r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #0x20
	str r7, [sp, #4]
	bl sub_0204566C
_0219D0BE:
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #1
	bl sub_02044F90
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy267_219d058

	thumb_func_start sub_0219D0E0
sub_0219D0E0: ; 0x0219D0E0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D0E0

	thumb_func_start ovy267_219d0e4
ovy267_219d0e4: ; 0x0219D0E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02015878
	cmp r0, #0x17
	bne _0219D102
	mov r0, #3
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0204E060
	pop {r4, r5, r6, pc}
_0219D102:
	mov r0, #0xc
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0204E060
	pop {r4, r5, r6, pc}
	thumb_func_end ovy267_219d0e4

	thumb_func_start ovy267_219d110
ovy267_219d110: ; 0x0219D110
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _0219D19C ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219D1A0 ; =0xFFFFCFFD
	mov r4, #0
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _0219D1A4 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r5, #2
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _0219D1A8 ; =0xBFFF0000
	ldr r0, _0219D1AC ; =0x04000580
	str r1, [r0]
	ldr r5, _0219D1B0 ; =0x0219D4F8
_0219D17E:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219D17E
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_0219D19C: .word 0x04000008
_0219D1A0: .word 0xFFFFCFFD
_0219D1A4: .word 0x0000CFEF
_0219D1A8: .word 0xBFFF0000
_0219D1AC: .word 0x04000580
_0219D1B0: .word 0x0219D4F8
	thumb_func_end ovy267_219d110

	thumb_func_start ovy267_219d1b4
ovy267_219d1b4: ; 0x0219D1B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x73
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _0219D244 ; =0x0219D5C0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219D248 ; =0x04000050
	ldr r0, _0219D24C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219D250 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219D254 ; =0x0219D518
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy267_219d2e0
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy267_219d384
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy267_219d3f0
	ldr r0, _0219D258 ; =ovy267_219d2cc
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D244: .word 0x0219D5C0
_0219D248: .word 0x04000050
_0219D24C: .word 0x04001050
_0219D250: .word 0xFFFF1FFF
_0219D254: .word 0x0219D518
_0219D258: .word ovy267_219d2cc
	thumb_func_end ovy267_219d1b4

	thumb_func_start ovy267_219d25c
ovy267_219d25c: ; 0x0219D25C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A6A8
	add r0, r4, #0
	add r0, #8
	bl ovy267_219d45c
	add r0, r4, #4
	bl ovy267_219d3c4
	add r0, r4, #0
	bl ovy267_219d340
	bl sub_020232D8
	ldr r5, _0219D2AC ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219D2B0 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219D2B4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_0219D2AC: .word 0x04000050
_0219D2B0: .word 0x04001050
_0219D2B4: .word 0xFFFF1FFF
	thumb_func_end ovy267_219d25c

	thumb_func_start ovy267_219d2b8
ovy267_219d2b8: ; 0x0219D2B8
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219D3E0
	add r0, r4, #0
	bl sub_0219D378
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy267_219d2b8

	thumb_func_start ovy267_219d2cc
ovy267_219d2cc: ; 0x0219D2CC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219D37C
	add r0, r4, #4
	bl sub_0219D3E8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy267_219d2cc

	thumb_func_start ovy267_219d2e0
ovy267_219d2e0: ; 0x0219D2E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _0219D338 ; =0x0219D4CC
	bl sub_02044710
	ldr r7, _0219D33C ; =0x0219D548
_0219D302:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #2
	blo _0219D302
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D338: .word 0x0219D4CC
_0219D33C: .word 0x0219D548
	thumb_func_end ovy267_219d2e0

	thumb_func_start ovy267_219d340
ovy267_219d340: ; 0x0219D340
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219D374 ; =0x0219D548
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219D34A:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #2
	blo _0219D34A
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D374: .word 0x0219D548
	thumb_func_end ovy267_219d340

	thumb_func_start sub_0219D378
sub_0219D378: ; 0x0219D378
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D378

	thumb_func_start sub_0219D37C
sub_0219D37C: ; 0x0219D37C
	ldr r3, _0219D380 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219D380: .word sub_02045A5C
	thumb_func_end sub_0219D37C

	thumb_func_start ovy267_219d384
ovy267_219d384: ; 0x0219D384
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219D3C0 ; =0x0219D4DC
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
_0219D3C0: .word 0x0219D4DC
	thumb_func_end ovy267_219d384

	thumb_func_start ovy267_219d3c4
ovy267_219d3c4: ; 0x0219D3C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy267_219d3c4

	thumb_func_start sub_0219D3E0
sub_0219D3E0: ; 0x0219D3E0
	ldr r3, _0219D3E4 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219D3E4: .word sub_0204B794
	thumb_func_end sub_0219D3E0

	thumb_func_start sub_0219D3E8
sub_0219D3E8: ; 0x0219D3E8
	ldr r3, _0219D3EC ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219D3EC: .word sub_0204B7C8
	thumb_func_end sub_0219D3E8

	thumb_func_start ovy267_219d3f0
ovy267_219d3f0: ; 0x0219D3F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	ldr r0, _0219D444 ; =ovy267_219d110
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r7, #1
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	str r6, [sp]
	lsl r0, r7, #0xc
	str r0, [sp, #4]
	lsl r0, r7, #0x16
	str r0, [sp, #8]
	ldr r0, _0219D448 ; =0x0219D4B4
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219D44C ; =0x0219D4A8
	ldr r3, _0219D450 ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp, #0x14]
	ldr r0, _0219D454 ; =0x0219D4C0
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _0219D458 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D444: .word ovy267_219d110
_0219D448: .word 0x0219D4B4
_0219D44C: .word 0x0219D4A8
_0219D450: .word 0x02094A3C
_0219D454: .word 0x0219D4C0
_0219D458: .word 0x00001555
	thumb_func_end ovy267_219d3f0

	thumb_func_start ovy267_219d45c
ovy267_219d45c: ; 0x0219D45C
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy267_219d45c
_0219D46C:
	.byte 0xFF, 0xFF, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0x9D, 0xCF, 0x19, 0x02, 0x2D, 0xCF, 0x19, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x10, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0xCD, 0x14, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x68, 0x65, 0x5F, 0x65, 0x6E, 0x64, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219D46C
