    .include "macros/function.inc"
	.include "overlay320.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy320_219ce80
ovy320_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219CF40 ; =0x0000008B
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x9d
	lsl r2, r2, #0x10
	mov r5, #0x9d
	bl sub_0203A15C
	mov r1, #0xfb
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x9d
	bl sub_0203AAEC
	mov r2, #0xfb
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	mov r7, #0
	blx MI_CpuFill8
	add r0, r4, #0
	strh r5, [r4]
	add r0, #0xb4
	str r6, [r0]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy320_219eb70
	str r0, [r4, #0x6c]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #0x70]
	add r5, #0xf9
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_0204875C
	str r0, [r4, #0x78]
	str r7, [r4, #0x7c]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x74]
	ldrh r0, [r4]
	mov r2, #0x20
	mov r3, #0x20
	add r1, r0, #0
	mov r5, #0x20
	bl sub_0203A78C
	mov r1, #0x20
	add r1, #0xf8
	str r0, [r4, r1]
	mov r0, #0x20
	add r0, #0xf4
	str r7, [r4, r0]
	add r5, #0xfc
	str r7, [r4, r5]
	ldrh r1, [r4]
	add r0, r4, #4
	bl ovy320_219d048
	add r0, r4, #0
	bl ovy320_219d218
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219CF40: .word 0x0000008B
	thumb_func_end ovy320_219ce80

	thumb_func_start ovy320_219cf44
ovy320_219cf44: ; 0x0219CF44
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy320_219d3d8
	add r0, r4, #0
	bl ovy320_219d1e8
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0219CF60
	bl sub_020487D4
_0219CF60:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0219CF6A
	bl sub_020487D4
_0219CF6A:
	ldr r0, [r4, #0x74]
	bl sub_02021A18
	ldr r0, [r4, #0x70]
	bl sub_02022DA8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A83C
	ldr r0, [r4, #0x6c]
	bl ovy320_219ec10
	ldrh r4, [r4]
	add r0, r5, #0
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219CFA0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0219CFA0: .word 0x0000008B
	thumb_func_end ovy320_219cf44

	thumb_func_start ovy320_219cfa4
ovy320_219cfa4: ; 0x0219CFA4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219D016
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CFBE: ; jump table
	.short _0219CFC6 - _0219CFBE - 2 ; case 0
	.short _0219CFD6 - _0219CFBE - 2 ; case 1
	.short _0219CFEE - _0219CFBE - 2 ; case 2
	.short _0219D008 - _0219CFBE - 2 ; case 3
_0219CFC6:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219D016
_0219CFCE:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219D016
_0219CFD6:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, _0219D044 ; =0x00002710
	cmp r1, r0
	bne _0219D016
	ldr r0, [r4, #0x74]
	bl sub_02021C0C
	cmp r0, #1
	bne _0219D016
	b _0219CFCE
_0219CFEE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	b _0219CFCE
_0219D008:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219D016
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219D016:
	add r0, r4, #0
	bl sub_0219D3D0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A7F4
	add r0, r4, #0
	bl ovy320_219d3f4
	ldr r0, [r4, #0x6c]
	bl ovy320_219ec64
	ldr r0, [r4, #0x6c]
	bl sub_0219EC78
	ldr r0, [r4, #0x6c]
	bl sub_0219EC7C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D044: .word 0x00002710
	thumb_func_end ovy320_219cfa4

	thumb_func_start ovy320_219d048
ovy320_219d048: ; 0x0219D048
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #0xf5
	add r5, r1, #0
	bl sub_0204AA30
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	mov r6, #0
	bl sub_0204B0D4
	mov r0, #0x60
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #2
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy320_219d048

	thumb_func_start ovy320_219d0f0
ovy320_219d0f0: ; 0x0219D0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r4, r1, #0
	bl sub_0219EC80
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x84
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x20]
	add r0, #0x80
	mov r6, #0
	str r0, [sp, #0x20]
_0219D112:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219D1E2
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	bl sub_0202D7E0
	str r0, [sp, #0x2c]
	bl sub_0202D8A0
	str r0, [sp, #0x30]
	bl sub_0202D8A4
	str r0, [sp, #0x34]
	mov r0, #2
	bl sub_0202D8A8
	str r0, [sp, #0x38]
	mov r0, #2
	bl sub_0202D8AC
	str r0, [sp, #0x3c]
	ldrb r1, [r4, #2]
	add r0, sp, #0x24
	ldr r2, [sp, #0x14]
	strb r1, [r0, #0x1c]
	mov r1, #0
	strb r1, [r0, #0x1d]
	mov r1, #1
	strb r1, [r0, #0x1e]
	ldrh r3, [r5]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x24
	bl sub_021999C8
	ldrb r0, [r4, #3]
	lsl r7, r0, #1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219E2CC
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, r7, #1
	bl sub_0219E2CC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r5]
	ldr r2, [sp, #0x1c]
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	lsl r7, r6, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	add r1, r5, r7
	add r1, #0x94
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r6
	add r3, r1, r0
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r2, #0xc
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	mov r1, #0x30
	str r0, [sp, #0x10]
	add r0, r5, r7
	add r0, #0x94
	ldrsh r2, [r3, r2]
	ldrb r3, [r3, #0xe]
	ldr r0, [r0]
	bl sub_020164E8
	ldr r0, [sp, #0x20]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	strb r1, [r0]
	add r0, r5, r7
	add r0, #0x94
	ldrb r1, [r4, #4]
	ldr r0, [r0]
	bl sub_0204C438
	add r6, r6, #1
	add r4, r4, #6
	cmp r6, #8
	blo _0219D112
_0219D1E2:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219d0f0

	thumb_func_start ovy320_219d1e8
ovy320_219d1e8: ; 0x0219D1E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _0219D20E
_0219D1F6:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r5, #0
	add r0, #0x80
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blo _0219D1F6
_0219D20E:
	add r5, #0x84
	add r0, r5, #0
	bl sub_02199A44
	pop {r3, r4, r5, pc}
	thumb_func_end ovy320_219d1e8

	thumb_func_start ovy320_219d218
ovy320_219d218: ; 0x0219D218
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0219EB6C
	ldrh r1, [r5]
	mov r0, #0xc8
	mov r4, #0xc8
	bl sub_02048530
	mov r1, #0xc8
	add r1, #0x54
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0x84
	ldr r1, [r0, #4]
	mov r0, #0xc8
	add r0, #0x64
	str r1, [r5, r0]
	mov r1, #0xc8
	mov r0, #0
	add r1, #0x68
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x6c
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x70
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x74
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x78
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x7c
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x80
	str r0, [r5, r1]
	mov r1, #0x15
	str r0, [r5, r4]
	sub r3, r0, #1
	lsl r1, r1, #4
_0219D276:
	lsl r2, r0, #2
	add r2, r5, r2
	add r0, r0, #1
	str r3, [r2, r1]
	cmp r0, #4
	blt _0219D276
	mov r2, #0
	mov r0, #0x16
	add r4, r2, #0
	lsl r0, r0, #4
_0219D28A:
	lsl r1, r2, #2
	add r1, r5, r1
	add r2, r2, #1
	str r4, [r1, r0]
	cmp r2, #4
	blt _0219D28A
	ldrh r2, [r5]
	mov r0, #0xf5
	mov r1, #0xc
	bl sub_0204A934
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy320_219d84c
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r1, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r2, #0x70
	str r0, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ovy320_219d88c
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #1
	add r0, #0x9c
	ldr r0, [r0]
	mov r2, #0x70
	str r0, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ovy320_219d88c
	add r0, r5, #0
	bl ovy320_219d910
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0x47
	lsl r0, r0, #2
	add r7, r5, r0
_0219D2F0:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204713C
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02048570
	add r1, r5, #0
	add r1, #0xb4
	mov r2, #0xc
	ldr r0, [sp, #8]
	ldr r1, [r1]
	mul r2, r4
	add r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1, #8]
	bl sub_02024BE4
	ldr r0, [r5, #0x70]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	ldr r3, [r7]
	mov r2, #0
	bl sub_02021D28
	add r0, r5, r6
	add r0, #0xdc
	ldr r0, [r0]
	bl sub_0202B0F4
	add r4, r4, #1
	cmp r4, #8
	blt _0219D2F0
	add r0, r5, #0
	bl ovy320_219e52c
	ldrh r1, [r5]
	mov r0, #0x17
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	mov r6, #0x12
	lsl r6, r6, #4
	str r1, [sp, #4]
	add r4, r0, #0
	mov r1, #6
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #8
	str r0, [sp]
	mov r0, #0
	mov r3, #0
	bl sub_02024D00
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #1
	mov r3, #8
	bl sub_02024E80
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, #0
	bl ovy320_219e2b0
	add r0, r6, #4
	add r0, r5, r0
	mov r1, #2
	bl sub_0202E678
	ldrh r3, [r5]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	bl sub_0202E7A4
	str r0, [r5, r6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219d218

	thumb_func_start sub_0219D3D0
sub_0219D3D0: ; 0x0219D3D0
	ldr r3, _0219D3D4 ; =sub_0219D440
	bx r3
	.align 2, 0
_0219D3D4: .word sub_0219D440
	thumb_func_end sub_0219D3D0

	thumb_func_start ovy320_219d3d8
ovy320_219d3d8: ; 0x0219D3D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A24C
	add r0, r4, #0
	bl ovy320_219d8d0
	add r0, r4, #0
	bl ovy320_219db9c
	pop {r4, pc}
	thumb_func_end ovy320_219d3d8

	thumb_func_start ovy320_219d3f4
ovy320_219d3f4: ; 0x0219D3F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x74]
	bl sub_02021A3C
	mov r4, #0
_0219D400:
	lsl r0, r4, #3
	add r5, r7, r0
	mov r0, #1
	lsl r0, r0, #8
	ldrb r0, [r5, r0]
	ldr r6, [r7, #0x74]
	cmp r0, #0
	beq _0219D438
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D438
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_02048244
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #8
	strb r1, [r5, r0]
_0219D438:
	add r4, r4, #1
	cmp r4, #3
	blt _0219D400
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy320_219d3f4

	thumb_func_start sub_0219D440
sub_0219D440: ; 0x0219D440
	ldr r3, _0219D444 ; =sub_0219D81C
	bx r3
	.align 2, 0
_0219D444: .word sub_0219D81C
	thumb_func_end sub_0219D440

	thumb_func_start ovy320_219d448
ovy320_219d448: ; 0x0219D448
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x13
	lsl r4, r4, #4
	add r5, r0, #0
	add r2, r4, #0
	ldr r1, [r5, r4]
	add r2, #0x10
	cmp r1, r2
	bgt _0219D49C
	add r2, r4, #0
	add r2, #0x10
	cmp r1, r2
	blt _0219D466
	b _0219D66C
_0219D466:
	cmp r1, #0x64
	bgt _0219D47E
	bge _0219D564
	cmp r1, #0
	bgt _0219D476
	beq _0219D4F2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D476:
	cmp r1, #0xa
	beq _0219D52A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D47E:
	sub r2, r4, #4
	cmp r1, r2
	bgt _0219D490
	blt _0219D488
	b _0219D5EA
_0219D488:
	cmp r1, #0xc8
	beq _0219D58A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D490:
	add r2, r4, #6
	cmp r1, r2
	bne _0219D498
	b _0219D644
_0219D498:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D49C:
	add r2, r4, #0
	add r2, #0xce
	cmp r1, r2
	bgt _0219D4D0
	add r2, r4, #0
	add r2, #0xce
	cmp r1, r2
	blt _0219D4AE
	b _0219D790
_0219D4AE:
	add r2, r4, #0
	add r2, #0x60
	cmp r1, r2
	bgt _0219D4C2
	add r4, #0x60
	cmp r1, r4
	bne _0219D4BE
	b _0219D67C
_0219D4BE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D4C2:
	add r2, r4, #0
	add r2, #0xc4
	cmp r1, r2
	bne _0219D4CC
	b _0219D728
_0219D4CC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D4D0:
	mov r6, #0xaf
	lsl r6, r6, #2
	cmp r1, r6
	bgt _0219D4EA
	blt _0219D4DC
	b _0219D7D6
_0219D4DC:
	add r2, r6, #0
	sub r2, #0x64
	cmp r1, r2
	bne _0219D4E6
	b _0219D7B2
_0219D4E6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D4EA:
	ldr r0, _0219D80C ; =0x00002710
	add sp, #8
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219D4F2:
	mov r6, #0x64
	mov r1, #0
	str r6, [r5, r4]
	bl ovy320_219de0c
	add r0, r5, #0
	bl ovy320_219e3d0
	add r6, #0xc8
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _0219D520
	mov r0, #0xa
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy320_219e218
	add r1, r0, #0
	add r0, r5, #0
	bl ovy320_219dfe8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D520:
	ldr r0, _0219D810 ; =0x00000834
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D52A:
	bl ovy320_219e170
	cmp r0, #0
	bne _0219D592
	add r0, r5, #0
	bl ovy320_219ea8c
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ovy320_219e9c8
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	bl ovy320_219de0c
	add r0, r5, #0
	bl ovy320_219e2b0
	ldr r0, _0219D810 ; =0x00000834
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D564:
	bl ovy320_219deec
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DDEC
	cmp r0, #0
	bne _0219D592
	mov r0, #0xc8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy320_219e218
	add r1, r0, #0
	add r0, r5, #0
	bl ovy320_219dfe8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D58A:
	bl ovy320_219e170
	cmp r0, #0
	beq _0219D594
_0219D592:
	b _0219D808
_0219D594:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219D5CE
	add r0, r5, #0
	bl ovy320_219ea8c
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ovy320_219e9c8
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #6
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy320_219de0c
	add r0, r5, #0
	bl ovy320_219e2b0
	ldr r0, _0219D814 ; =0x00000836
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D5CE:
	sub r0, r4, #4
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy320_219de0c
	add r0, r5, #0
	bl ovy320_219e2b0
	ldr r0, _0219D814 ; =0x00000836
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D5EA:
	bl ovy320_219deec
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl sub_0219DDEC
	cmp r0, #0
	bne _0219D694
	add r0, r5, #0
	bl ovy320_219ea8c
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	mov r6, #2
	bl ovy320_219e9c8
	add r4, #0xc
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r6, #3
	bl ovy320_219e9c8
	add r1, r0, #0
	mov r2, #0xd
	cmp r1, #4
	bge _0219D626
	mov r2, #0xc
_0219D626:
	add r0, r5, #0
	bl ovy320_219dbf0
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r1, #0
	sub r0, #0x60
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xa
	bl sub_0219D824
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D644:
	bl ovy320_219deec
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DDEC
	cmp r0, #0
	bne _0219D694
	add r0, r4, #0
	add r0, #0x10
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy320_219e218
	add r1, r0, #0
	add r0, r5, #0
	bl ovy320_219dfe8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D66C:
	bl ovy320_219e170
	cmp r0, #0
	bne _0219D694
	ldr r0, _0219D80C ; =0x00002710
	add sp, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D67C:
	mov r6, #0
	sub r4, r6, #1
	mov r1, #0
	add r2, r4, #0
	bl ovy320_219e9c8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy320_219dc1c
	cmp r0, #0
	beq _0219D696
_0219D694:
	b _0219D808
_0219D696:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy320_219e9c8
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #6
	add r3, r6, #0
	bl ovy320_219dc5c
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy320_219e9c8
	add r1, r0, #0
	mov r2, #5
	cmp r1, #4
	bge _0219D6C0
	mov r2, #1
_0219D6C0:
	add r0, r5, #0
	bl ovy320_219dbf0
	mov r1, #0x7d
	lsl r1, r1, #2
	add r0, r1, #0
	sub r0, #0xc4
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x3c
	bl sub_0219D824
	mov r1, #3
	sub r4, r1, #4
	add r0, r5, #0
	add r2, r4, #0
	bl ovy320_219e9c8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	bl ovy320_219e9c8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy320_219e2e0
	add r0, r5, #0
	bl ovy320_219e384
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy320_219e9c8
	add r1, r0, #0
	mov r2, #0x10
	cmp r1, #4
	bge _0219D718
	mov r2, #0xf
_0219D718:
	add r0, r5, #0
	bl ovy320_219dbf0
	ldr r0, _0219D818 ; =0x00000833
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D728:
	mov r1, #1
	bl sub_0219D830
	mov r1, #3
	sub r7, r1, #4
	add r0, r5, #0
	add r2, r7, #0
	bl ovy320_219e9c8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	add r2, r7, #0
	mov r6, #4
	bl ovy320_219e9c8
	str r0, [sp, #4]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0219E378
	cmp r0, #0
	bne _0219D808
	add r0, r4, #0
	add r0, #0xce
	str r0, [r5, r4]
	ldr r1, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	bl ovy320_219e2e0
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ovy320_219e9c8
	add r1, r0, #0
	cmp r1, #4
	bge _0219D77A
	mov r6, #0
_0219D77A:
	add r0, r5, #0
	add r2, r6, #0
	bl ovy320_219dbf0
	ldr r0, _0219D818 ; =0x00000833
	bl sub_020061B8
	bl sub_02006268
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D790:
	mov r1, #1
	bl sub_0219D830
	cmp r0, #0
	bgt _0219D808
	mov r0, #0x96
	lsl r0, r0, #2
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	bl ovy320_219de0c
	ldr r0, _0219D810 ; =0x00000834
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D7B2:
	bl ovy320_219deec
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DDEC
	cmp r0, #0
	bne _0219D808
	add r0, r5, #0
	str r6, [r5, r4]
	bl ovy320_219e218
	add r1, r0, #0
	add r0, r5, #0
	bl ovy320_219dfe8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D7D6:
	bl ovy320_219e170
	cmp r0, #0
	bne _0219D808
	sub r0, r4, #4
	str r0, [r5, r4]
	add r0, r5, #0
	bl sub_0219EACC
	cmp r0, #1
	bne _0219D7F4
	ldr r0, _0219D80C ; =0x00002710
	add sp, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D7F4:
	add r0, r5, #0
	mov r1, #1
	bl ovy320_219de0c
	add r0, r5, #0
	bl ovy320_219e2b0
	ldr r0, _0219D814 ; =0x00000836
	bl sub_02006254
_0219D808:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D80C: .word 0x00002710
_0219D810: .word 0x00000834
_0219D814: .word 0x00000836
_0219D818: .word 0x00000833
	thumb_func_end ovy320_219d448

	thumb_func_start sub_0219D81C
sub_0219D81C: ; 0x0219D81C
	ldr r3, _0219D820 ; =ovy320_219d448
	bx r3
	.align 2, 0
_0219D820: .word ovy320_219d448
	thumb_func_end sub_0219D81C

	thumb_func_start sub_0219D824
sub_0219D824: ; 0x0219D824
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x16
	lsl r0, r0, #4
	str r2, [r1, r0]
	bx lr
	thumb_func_end sub_0219D824

	thumb_func_start sub_0219D830
sub_0219D830: ; 0x0219D830
	mov r2, #0x16
	lsl r2, r2, #4
	add r2, r0, r2
	lsl r1, r1, #2
	ldr r0, [r2, r1]
	sub r0, r0, #1
	str r0, [r2, r1]
	cmp r0, #0
	bgt _0219D846
	mov r0, #0
	str r0, [r2, r1]
_0219D846:
	ldr r0, [r2, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D830

	thumb_func_start ovy320_219d84c
ovy320_219d84c: ; 0x0219D84C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0219D888 ; =0x0219EDD0
	add r6, r0, #0
	mov r4, #0
	mov r7, #1
_0219D858:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D882
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	ldrb r1, [r5, #1]
	str r7, [sp, #8]
	bl sub_020480C0
	lsl r1, r4, #3
	add r1, r6, r1
	add r1, #0xfc
	add r4, r4, #1
	add r5, r5, #6
	str r0, [r1]
	cmp r4, #3
	blt _0219D858
_0219D882:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D888: .word 0x0219EDD0
	thumb_func_end ovy320_219d84c

	thumb_func_start ovy320_219d88c
ovy320_219d88c: ; 0x0219D88C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r6, #0
	str r0, [sp]
	ldr r0, [r6, #0x70]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x10
	str r0, [sp, #0xc]
	lsl r4, r1, #3
	add r5, #0xfc
	ldr r1, [r6, #0x74]
	add r0, r5, r4
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy320_219d88c

	thumb_func_start ovy320_219d8d0
ovy320_219d8d0: ; 0x0219D8D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D8D6:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #3
	blt _0219D8D6
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D8F6
	bl sub_02048564
_0219D8F6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D904
	bl sub_020223CC
_0219D904:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202E818
	pop {r3, r4, r5, pc}
	thumb_func_end ovy320_219d8d0

	thumb_func_start ovy320_219d910
ovy320_219d910: ; 0x0219D910
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	bl sub_0219EC80
	ldr r6, _0219D96C ; =0x0219EDE8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy320_219d97c
	ldr r2, _0219D970 ; =0x0219EEF4
	add r0, r5, #0
	mov r1, #0
	add r3, r6, #0
	bl ovy320_219d9f8
	ldrh r0, [r5]
	add r1, r4, #0
	bl sub_0202AE5C
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r2, _0219D974 ; =0x0219EE4C
	add r0, r5, #0
	mov r1, #0
	add r3, r6, #0
	bl ovy320_219dae0
	ldr r1, _0219D978 ; =0x0219EE08
	add r0, r5, #0
	bl ovy320_219d0f0
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	mov r3, #0
	bl ovy320_219dc34
	ldrh r1, [r5]
	mov r0, #0
	bl sub_02042BA8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D96C: .word 0x0219EDE8
_0219D970: .word 0x0219EEF4
_0219D974: .word 0x0219EE4C
_0219D978: .word 0x0219EE08
	thumb_func_end ovy320_219d910

	thumb_func_start ovy320_219d97c
ovy320_219d97c: ; 0x0219D97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	mov r0, #0xf5
	add r4, r2, #0
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, [r5, #0x6c]
	bl sub_0219EC80
	mov r1, #0
	str r1, [sp]
	ldrh r0, [r4, #6]
	ldrsh r1, [r4, r1]
	ldrh r3, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	mov r1, #2
	ldrsh r1, [r4, r1]
	mov r2, #0
	add r3, r7, #0
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #8]
	ldrh r0, [r5]
	mov r1, #8
	ldrsh r1, [r4, r1]
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #8]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldrh r3, [r5]
	add r0, r6, #0
	bl sub_0204BDE0
	mov r1, #0x12
	ldrsh r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #8]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy320_219d97c

	thumb_func_start ovy320_219d9f8
ovy320_219d9f8: ; 0x0219D9F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_0219EC80
	mov r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
_0219DA20:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219DADA
	ldrb r0, [r4, #6]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219E2CC
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #1
	bl sub_0219E2CC
	ldr r2, [sp, #0x14]
	add r1, sp, #0x1c
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r4]
	add r0, sp, #0x1c
	mov r2, #2
	strh r1, [r0, #4]
	ldrb r1, [r4, #1]
	mov r3, #0x12
	ldrsh r2, [r7, r2]
	strb r1, [r0, #6]
	ldrb r1, [r4, #2]
	ldrsh r3, [r7, r3]
	lsl r2, r2, #2
	strb r1, [r0, #7]
	ldr r0, [sp, #0x10]
	mov r1, #0xa
	lsl r0, r0, #2
	add r6, r5, r0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldrsh r1, [r7, r1]
	str r0, [sp, #4]
	ldrh r0, [r5]
	lsl r1, r1, #2
	lsl r3, r3, #2
	str r0, [sp, #8]
	add r1, r5, r1
	add r2, r5, r2
	add r3, r5, r3
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #8]
	ldr r2, [r2, #8]
	ldr r3, [r3, #8]
	bl sub_0204C040
	str r0, [r6, #0x14]
	ldrb r0, [r4, #3]
	mov r1, #0
	cmp r0, #1
	bne _0219DA94
	mov r1, #1
_0219DA94:
	ldr r0, [r6, #0x14]
	bl sub_0204C124
	ldrb r2, [r4, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219DAA4
	mov r1, #1
_0219DAA4:
	ldr r0, [r6, #0x14]
	bl sub_0204C520
	ldrb r1, [r4, #5]
	mov r0, #2
	tst r0, r1
	beq _0219DABC
	ldr r0, [r6, #0x14]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219DABC:
	ldrb r1, [r4, #5]
	mov r0, #4
	tst r0, r1
	beq _0219DACE
	ldr r0, [r6, #0x14]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219DACE:
	ldr r0, [sp, #0x10]
	add r4, #8
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x16
	blt _0219DA20
_0219DADA:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219d9f8

	thumb_func_start ovy320_219dae0
ovy320_219dae0: ; 0x0219DAE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r0, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [sp]
	add r4, r2, #0
	str r3, [sp, #4]
	mov r7, #0
	str r0, [sp, #0x14]
_0219DAF6:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219DB96
	ldrb r1, [r4, #1]
	ldrh r3, [r5]
	lsl r6, r7, #2
	mov r2, #0x20
	bl sub_02046E28
	add r1, r5, r6
	add r1, #0xbc
	str r0, [r1]
	ldrb r0, [r4, #6]
	lsl r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_0219E2CC
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0219E2CC
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	strh r1, [r0, #4]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #6]
	ldr r1, [sp, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	ldrb r1, [r4, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	str r0, [sp, #0x20]
	add r0, sp, #0x18
	strb r1, [r0, #0x10]
	ldrb r1, [r4, #3]
	strb r1, [r0, #0x11]
	ldrb r0, [r4, #5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	strh r1, [r0, #0x12]
	ldr r0, [sp]
	add r1, sp, #0x18
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0202AEC4
	add r1, r5, r6
	add r1, #0xdc
	str r0, [r1]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0219DB90
	add r0, r5, r6
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #0
	bl sub_0202B098
_0219DB90:
	add r7, r7, #1
	cmp r7, #8
	blt _0219DAF6
_0219DB96:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219dae0

	thumb_func_start ovy320_219db9c
ovy320_219db9c: ; 0x0219DB9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
_0219DBA2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0219DBB0
	bl sub_0204C108
_0219DBB0:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219DBA2
	ldr r0, [r5, #8]
	bl sub_0204BCD0
	ldr r0, [r5, #0xc]
	bl sub_0204B98C
	ldr r0, [r5, #0x10]
	bl sub_0204BE64
	mov r4, #0
_0219DBCA:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xdc
	ldr r0, [r0]
	bl sub_0202B030
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #8
	blt _0219DBCA
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_0202AEAC
	pop {r4, r5, r6, pc}
	thumb_func_end ovy320_219db9c

	thumb_func_start ovy320_219dbf0
ovy320_219dbf0: ; 0x0219DBF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x14
	lsl r1, r2, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy320_219dbf0

	thumb_func_start sub_0219DC0C
sub_0219DC0C: ; 0x0219DC0C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	ldr r3, _0219DC18 ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219DC18: .word sub_0204C124
	thumb_func_end sub_0219DC0C

	thumb_func_start ovy320_219dc1c
ovy320_219dc1c: ; 0x0219DC1C
	push {r4, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	mov r4, #1
	bl sub_0204C560
	cmp r0, #0
	bne _0219DC30
	mov r4, #0
_0219DC30:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy320_219dc1c

	thumb_func_start ovy320_219dc34
ovy320_219dc34: ; 0x0219DC34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0219DC58 ; =0x05000200
	cmp r3, #1
	bne _0219DC46
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r1, r0
_0219DC46:
	lsl r0, r2, #5
	add r0, r1, r0
	mov r1, #0x7a
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r2, r4, #5
	blx MIi_CpuCopy16
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DC58: .word 0x05000200
	thumb_func_end ovy320_219dc34

	thumb_func_start ovy320_219dc5c
ovy320_219dc5c: ; 0x0219DC5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	mvn r0, r0
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp r7, r0
	bne _0219DC88
	add r1, r2, #0
	mov r3, #0x7a
	ldr r2, [sp]
	lsl r3, r3, #2
	add r2, r2, r3
	mov r0, #0xe
	lsl r1, r1, #5
	sub r3, #0xe8
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219DC88:
	ldr r0, [sp]
	lsl r1, r7, #5
	mov r4, #0
	add r6, r0, r1
_0219DC90:
	lsl r0, r4, #1
	add r5, r6, r0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #0x1f
	asr r2, r0, #0xa
	and r1, r2
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	asr r1, r0, #5
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r2, r0
	add r0, r3, r0
	mov r1, #3
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r0, #0xa
	lsl r1, r0, #5
	add r1, r2, r1
	add r1, r0, r1
	mov r0, #0xba
	lsl r0, r0, #2
	add r4, r4, #1
	strh r1, [r5, r0]
	cmp r4, #0x10
	blt _0219DC90
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0219DCFC
	ldr r1, [sp, #4]
	mov r3, #0xba
	add r1, r7, r1
	ldr r2, [sp]
	lsl r3, r3, #2
	add r3, r2, r3
	lsl r2, r7, #5
	add r2, r3, r2
	mov r0, #0xe
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219DCFC:
	ldr r1, [sp, #4]
	mov r3, #0x7a
	add r1, r7, r1
	ldr r2, [sp]
	lsl r3, r3, #2
	add r3, r2, r3
	lsl r2, r7, #5
	add r2, r3, r2
	mov r0, #0xe
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219dc5c

	thumb_func_start ovy320_219dd1c
ovy320_219dd1c: ; 0x0219DD1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #2
	bge _0219DD6C
	add r2, sp, #0x18
	mov r0, #0
	ldrsh r2, [r2, r0]
	cmp r2, #0
	beq _0219DD6C
	lsl r6, r1, #4
	mov r1, #0x17
	add r0, r5, r6
	lsl r1, r1, #4
	strh r4, [r0, r1]
	add r1, r1, #2
	strh r3, [r0, r1]
	sub r1, r3, r4
	add r0, r1, #0
	mov r7, #0x64
	mul r0, r7
	add r1, r2, #0
	blx sub_0208D65C
	mov r2, #0x17
	lsl r2, r2, #4
	add r1, r5, r6
	add r2, #8
	str r0, [r1, r2]
	mov r0, #0x17
	add r2, r4, #0
	lsl r0, r0, #4
	mul r2, r7
	add r0, #0xc
	str r2, [r1, r0]
	mov r0, #0x17
	lsl r0, r0, #4
	mov r2, #1
	add r0, r0, #4
	strh r2, [r1, r0]
_0219DD6C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219dd1c

	thumb_func_start ovy320_219dd70
ovy320_219dd70: ; 0x0219DD70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	lsl r4, r1, #4
	add r1, r5, r0
	add r6, r1, r4
	ldrsh r1, [r1, r4]
	mov r2, #1
	mov r7, #0
	tst r2, r1
	beq _0219DDE2
	mov r2, #2
	tst r1, r2
	bne _0219DDDC
	add r1, r0, #4
	add r1, r5, r1
	str r1, [sp]
	add r0, #8
	ldr r2, [sp]
	add r1, r5, r0
	ldr r0, [r1, r4]
	ldr r2, [r2, r4]
	add r0, r0, r2
	str r0, [r1, r4]
	mov r1, #0x64
	blx sub_0208D65C
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldr r1, [r1, r4]
	asr r0, r0, #0x10
	cmp r1, #0
	bge _0219DDB6
	mov r7, #1
_0219DDB6:
	cmp r7, #0
	ldr r1, _0219DDE8 ; =0x00000172
	bne _0219DDC6
	add r2, r5, r4
	ldrsh r1, [r2, r1]
	cmp r0, r1
	blt _0219DDD8
	b _0219DDCE
_0219DDC6:
	add r2, r5, r4
	ldrsh r1, [r2, r1]
	cmp r0, r1
	bgt _0219DDD8
_0219DDCE:
	mov r1, #0
	ldrsh r2, [r6, r1]
	mov r1, #2
	orr r1, r2
	strh r1, [r6]
_0219DDD8:
	add r7, r0, #0
	b _0219DDE2
_0219DDDC:
	add r1, r5, r4
	sub r0, r0, #2
	ldrsh r7, [r1, r0]
_0219DDE2:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DDE8: .word 0x00000172
	thumb_func_end ovy320_219dd70

	thumb_func_start sub_0219DDEC
sub_0219DDEC: ; 0x0219DDEC
	lsl r1, r1, #4
	add r1, r0, r1
	mov r0, #0x5d
	lsl r0, r0, #2
	ldrsh r3, [r1, r0]
	mov r1, #1
	mov r2, #0
	add r0, r3, #0
	tst r0, r1
	beq _0219DE08
	mov r0, #2
	tst r0, r3
	bne _0219DE08
	add r2, r1, #0
_0219DE08:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0219DDEC

	thumb_func_start ovy320_219de0c
ovy320_219de0c: ; 0x0219DE0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	cmp r1, #0
	bne _0219DE20
	mov r2, #0x47
	mvn r2, r2
	mov r3, #0
	mov r6, #0xdc
	mov r5, #0x94
	b _0219DE2A
_0219DE20:
	mov r3, #0
	mov r2, #0
	sub r3, #0x48
	mov r6, #0x94
	mov r5, #0xdc
_0219DE2A:
	mov r4, #9
	lsl r0, r4, #0x10
	asr r0, r0, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ovy320_219dd1c
	lsl r0, r4, #0x10
	asr r0, r0, #0x10
	lsl r2, r6, #0x10
	lsl r3, r5, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ovy320_219dd1c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219de0c

	thumb_func_start ovy320_219de5c
ovy320_219de5c: ; 0x0219DE5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0
	bne _0219DE7C
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x58
	mov r7, #0x94
	bl sub_0219E2CC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x59
	b _0219DE90
_0219DE7C:
	mov r1, #0x47
	mvn r1, r1
	str r1, [sp, #8]
	mov r1, #0x5a
	mov r7, #0xdc
	bl sub_0219E2CC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x5b
_0219DE90:
	bl sub_0219E2CC
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x34
	lsl r4, r6, #2
	str r0, [sp, #0xc]
	ldr r0, [r0, r4]
	add r1, sp, #0x10
	mov r2, #0
	bl sub_0204C178
	add r1, sp, #0x10
	strh r7, [r1]
	cmp r6, #4
	bge _0219DEB6
	ldr r0, [sp, #8]
	strh r0, [r1]
_0219DEB6:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	ldr r0, [r0, r4]
	mov r2, #0
	mov r6, #0
	bl sub_0204C140
	add r3, sp, #0x10
	ldrsh r2, [r3, r6]
	ldr r1, [sp, #4]
	add r0, r5, r4
	add r1, r2, r1
	mov r2, #2
	ldrsh r3, [r3, r2]
	ldr r2, [sp]
	add r0, #0xdc
	add r2, r3, r2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219de5c

	thumb_func_start ovy320_219deec
ovy320_219deec: ; 0x0219DEEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r1, #0
	mov r4, #0
	bl ovy320_219dd70
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0x58
	bl sub_0219E2CC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x59
	bl sub_0219E2CC
	str r0, [sp, #8]
	add r7, sp, #0x18
_0219DF12:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r4
	tst r0, r1
	beq _0219DF60
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x34]
	add r1, sp, #0x18
	mov r2, #0
	bl sub_0204C178
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	strh r0, [r7]
	ldr r0, [r6, #0x34]
	mov r2, #0
	bl sub_0204C140
	mov r1, #0
	ldrsh r2, [r7, r1]
	ldr r1, [sp, #4]
	lsl r0, r4, #2
	add r1, r2, r1
	mov r2, #2
	ldrsh r3, [r7, r2]
	ldr r2, [sp, #8]
	add r0, r5, r0
	add r0, #0xdc
	add r2, r3, r2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
_0219DF60:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #4
	blt _0219DF12
	add r0, r5, #0
	mov r1, #1
	bl ovy320_219dd70
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x5a
	bl sub_0219E2CC
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x5b
	bl sub_0219E2CC
	str r0, [sp, #0x10]
	mov r4, #0
	add r7, sp, #0x18
_0219DF8C:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r4, #4
	mov r0, #1
	lsl r0, r1
	tst r0, r2
	beq _0219DFD8
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x44]
	add r1, sp, #0x1c
	mov r2, #0
	bl sub_0204C178
	ldr r0, [sp]
	add r1, sp, #0x1c
	strh r0, [r7, #4]
	ldr r0, [r6, #0x44]
	mov r2, #0
	bl sub_0204C140
	mov r1, #4
	ldrsh r2, [r7, r1]
	ldr r1, [sp, #0xc]
	add r6, #0xec
	add r1, r2, r1
	mov r2, #6
	ldrsh r3, [r7, r2]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r6]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
_0219DFD8:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #4
	blt _0219DF8C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219deec

	thumb_func_start ovy320_219dfe8
ovy320_219dfe8: ; 0x0219DFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r2, [r5]
	str r1, [sp, #0x18]
	mov r0, #8
	mov r1, #0x28
	mov r7, #8
	bl sub_020241E4
	add r4, r0, #0
	mov r0, #0x28
	lsl r0, r0, #3
	ldr r0, [r5, r0]
	mov r1, #4
	mov r6, #0
	tst r1, r0
	bne _0219E012
	add r1, r0, #0
	tst r1, r7
	beq _0219E014
_0219E012:
	mov r6, #1
_0219E014:
	mov r1, #0x10
	tst r0, r1
	beq _0219E01C
	mov r6, #2
_0219E01C:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219E060
	cmp r6, #1
	bne _0219E060
_0219E02A:
	mov r6, #1
	add r2, r5, #0
	str r6, [sp]
	mov r7, #2
	str r7, [sp, #4]
	add r2, #0xb4
	ldr r2, [r2]
	add r0, r4, #0
	add r2, #0x98
	ldr r2, [r2]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	str r6, [sp]
	add r2, r5, #0
	str r7, [sp, #4]
	add r2, #0xb4
	ldr r2, [r2]
	add r0, r4, #0
	add r2, #0x9c
	ldr r2, [r2]
	mov r1, #1
	mov r3, #0
	bl sub_0202437C
	b _0219E0D8
_0219E060:
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ovy320_219e9c8
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy320_219e9c8
	add r7, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	beq _0219E090
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy320_219e9c8
	str r0, [sp, #0x1c]
_0219E090:
	cmp r6, #2
	bne _0219E096
	b _0219E02A
_0219E096:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r2, r5, #0
	add r2, #0xb4
	ldr r6, [sp, #0x1c]
	mov r3, #0xc
	ldr r2, [r2]
	mul r3, r6
	add r2, r2, r3
	ldr r2, [r2, #8]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r2, r5, #0
	str r0, [sp, #4]
	add r2, #0xb4
	mov r3, #0xc
	ldr r2, [r2]
	mul r3, r7
	add r2, r2, r3
	ldr r2, [r2, #8]
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl sub_0202437C
_0219E0D8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E0E6
	bl sub_020223CC
_0219E0E6:
	mov r6, #0x47
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0219E0FE
	bl sub_02048564
	ldrh r1, [r5]
	mov r0, #0xc8
	bl sub_02048530
	str r0, [r5, r6]
_0219E0FE:
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #0x18]
	bl sub_0204898C
	str r0, [sp, #0x20]
	mov r6, #0x47
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	bl sub_02024920
	bl sub_02017BCC
	ldr r1, [r5, #0x70]
	mov r7, #0xf
	str r1, [sp]
	str r0, [sp, #4]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	mov r2, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r7, [sp, #0x14]
	add r0, #0xfd
	ldr r0, [r5, r0]
	ldr r3, [r5, r6]
	bl sub_02022268
	sub r6, #8
	add r7, #0xfd
	str r0, [r5, r6]
	ldr r5, [r5, r7]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r4, #0
	bl sub_02024274
	ldr r0, [sp, #0x20]
	bl sub_02048564
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy320_219dfe8

	thumb_func_start ovy320_219e170
ovy320_219e170: ; 0x0219E170
	push {r4, r5, r6, lr}
	mov r4, #0x45
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0
	bne _0219E182
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219E182:
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc
	sub r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0202E8D8
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r4]
	add r0, r5, r0
	bl sub_0202E68C
	cmp r0, #1
	bne _0219E212
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #1
	tst r0, r1
	beq _0219E1B2
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219E1B2:
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	orr r1, r0
	add r0, r4, #0
	add r0, #0x2c
	str r1, [r5, r0]
	mov r0, #2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x2c
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy320_219e2b0
	add r0, r4, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x3c
	ldr r6, [r1, r0]
	add r0, r4, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x38
	str r1, [r5, r0]
	cmp r1, #3
	blt _0219E1F8
	mov r0, #3
	add r4, #0x38
	str r0, [r5, r4]
_0219E1F8:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy320_219e9c8
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	add r1, r1, r6
	bl ovy320_219dfe8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219E212:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy320_219e170

	thumb_func_start ovy320_219e218
ovy320_219e218: ; 0x0219E218
	push {r3, r4, r5, r6}
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	ldr r2, _0219E2A0 ; =0x0219EDC0
	lsl r3, r6, #2
	ldrb r4, [r2, r3]
	add r2, r1, #0
	mov r5, #0
	add r2, #0x14
	str r5, [r0, r2]
	cmp r6, #0
	bne _0219E266
	add r5, r1, #0
	mov r2, #1
	add r5, #0x14
	str r2, [r0, r5]
	add r5, r1, #0
	add r5, #8
	ldr r5, [r0, r5]
	cmp r5, #0
	bne _0219E24E
	ldr r4, _0219E2A4 ; =0x0219EDC2
	ldrb r4, [r4, r3]
	mov r3, #4
_0219E24A:
	orr r2, r3
	b _0219E294
_0219E24E:
	cmp r5, #1
	bne _0219E25A
	ldr r4, _0219E2A8 ; =0x0219EDC3
	ldrb r4, [r4, r3]
	mov r3, #8
	b _0219E24A
_0219E25A:
	cmp r5, #2
	bne _0219E298
	ldr r4, _0219E2AC ; =0x0219EDC1
	ldrb r4, [r4, r3]
	mov r3, #0x10
	b _0219E24A
_0219E266:
	cmp r6, #1
	bne _0219E276
	add r2, r1, #0
	add r2, #8
	ldr r2, [r0, r2]
	cmp r2, #4
	bne _0219E298
	b _0219E284
_0219E276:
	cmp r6, #2
	bne _0219E298
	add r2, r1, #0
	add r2, #8
	ldr r2, [r0, r2]
	cmp r2, #2
	bne _0219E298
_0219E284:
	add r2, r1, #0
	mov r5, #1
	add r2, #0x14
	str r5, [r0, r2]
	ldr r2, _0219E2AC ; =0x0219EDC1
	ldrb r4, [r2, r3]
	mov r2, #0x10
	orr r2, r5
_0219E294:
	add r1, #0x14
	str r2, [r0, r1]
_0219E298:
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0219E2A0: .word 0x0219EDC0
_0219E2A4: .word 0x0219EDC2
_0219E2A8: .word 0x0219EDC3
_0219E2AC: .word 0x0219EDC1
	thumb_func_end ovy320_219e218

	thumb_func_start ovy320_219e2b0
ovy320_219e2b0: ; 0x0219E2B0
	push {r3, r4, r5, lr}
	mov r4, #0x43
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, r4]
	bl sub_02048244
	pop {r3, r4, r5, pc}
	thumb_func_end ovy320_219e2b0

	thumb_func_start sub_0219E2CC
sub_0219E2CC: ; 0x0219E2CC
	cmp r1, #0x5c
	blo _0219E2D4
	mov r0, #0
	bx lr
_0219E2D4:
	mov r2, #0xfa
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219E2CC

	thumb_func_start ovy320_219e2e0
ovy320_219e2e0: ; 0x0219E2E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	lsl r4, r1, #3
	lsl r0, r3, #2
	ldr r5, [sp]
	add r6, r4, r0
	add r1, #0x10
	lsl r4, r1, #2
	add r1, r6, #2
	add r1, r2, r1
	add r5, #0x14
	ldr r7, _0219E370 ; =0x0219EE94
	lsl r1, r1, #1
	ldrh r1, [r7, r1]
	ldr r0, [r5, r4]
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	lsl r1, r6, #1
	ldr r0, _0219E374 ; =0x0219EE96
	ldrsh r7, [r7, r1]
	ldrsh r6, [r0, r1]
	mov r0, #2
	tst r0, r6
	ldr r0, [r5, r4]
	beq _0219E32A
	mov r1, #1
	mov r2, #1
	b _0219E32E
_0219E32A:
	mov r1, #1
	mov r2, #0
_0219E32E:
	bl sub_0204C2B0
	mov r0, #4
	tst r0, r6
	ldr r0, [r5, r4]
	beq _0219E340
	mov r1, #0
	mov r2, #1
	b _0219E344
_0219E340:
	mov r1, #0
	mov r2, #0
_0219E344:
	bl sub_0204C2B0
	lsl r6, r7, #1
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0219E2CC
	add r7, sp, #4
	strh r0, [r7]
	ldr r0, [sp]
	add r1, r6, #1
	bl sub_0219E2CC
	strh r0, [r7, #2]
	ldr r0, [r5, r4]
	add r1, sp, #4
	mov r2, #0
	bl sub_0204C140
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E370: .word 0x0219EE94
_0219E374: .word 0x0219EE96
	thumb_func_end ovy320_219e2e0

	thumb_func_start sub_0219E378
sub_0219E378: ; 0x0219E378
	ldr r3, _0219E380 ; =ovy320_219dc1c
	add r1, #0x10
	bx r3
	nop
_0219E380: .word ovy320_219dc1c
	thumb_func_end sub_0219E378

	thumb_func_start ovy320_219e384
ovy320_219e384: ; 0x0219E384
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4b
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #2
	bne _0219E3CC
	mov r4, #3
	sub r7, r4, #4
	mov r1, #3
	add r2, r7, #0
	bl ovy320_219e9c8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	add r2, r7, #0
	bl ovy320_219e9c8
	cmp r6, #4
	bne _0219E3BA
	cmp r0, #0
	bne _0219E3B6
	mov r4, #1
	b _0219E3C0
_0219E3B6:
	mov r4, #0
	b _0219E3C0
_0219E3BA:
	cmp r0, #0
	beq _0219E3C0
	mov r4, #2
_0219E3C0:
	add r4, #0x10
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xe
	bl ovy320_219dbf0
_0219E3CC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy320_219e384

	thumb_func_start ovy320_219e3d0
ovy320_219e3d0: ; 0x0219E3D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219E432
	mov r5, #0
	add r7, r5, #0
	mov r6, #4
_0219E3E4:
	add r2, r6, #0
	cmp r5, #4
	bge _0219E3EC
	add r2, r7, #0
_0219E3EC:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy320_219dbf0
	add r5, r5, #1
	cmp r5, #8
	blt _0219E3E4
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #6
	mov r3, #1
	bl ovy320_219dc5c
	mov r6, #0
	add r5, r6, #0
_0219E40C:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x10
	add r2, r5, #0
	bl sub_0219DC0C
	add r6, r6, #1
	cmp r6, #6
	blt _0219E40C
	mov r6, #1
_0219E420:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy320_219de5c
	add r5, r5, #1
	cmp r5, #8
	blt _0219E420
	pop {r3, r4, r5, r6, r7, pc}
_0219E432:
	cmp r0, #2
	bne _0219E4D4
	mov r5, #0
	add r7, r5, #0
	mov r6, #4
_0219E43C:
	add r2, r6, #0
	cmp r5, #4
	bge _0219E444
	add r2, r7, #0
_0219E444:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy320_219dbf0
	add r5, r5, #1
	cmp r5, #8
	blt _0219E43C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #6
	mov r3, #1
	bl ovy320_219dc5c
	mov r5, #0
	add r6, r5, #0
_0219E464:
	lsl r0, r5, #3
	add r1, r4, r0
	mov r0, #0x6a
	lsl r0, r0, #2
	mov r2, #5
	ldrb r7, [r1, r0]
	cmp r5, #2
	bge _0219E476
	mov r2, #1
_0219E476:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy320_219dbf0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #6
	add r3, r6, #0
	bl ovy320_219dc5c
	add r5, r5, #1
	cmp r5, #4
	blt _0219E464
	mov r5, #0
_0219E492:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x10
	add r2, r5, #0
	bl sub_0219DC0C
	add r6, r6, #1
	cmp r6, #6
	blt _0219E492
	ldr r7, _0219E528 ; =0x000001AB
	add r6, r7, #1
_0219E4A8:
	lsl r0, r5, #3
	add r3, r4, r0
	ldrb r1, [r3, r7]
	ldrb r3, [r3, r6]
	add r0, r4, #0
	mov r2, #1
	bl ovy320_219e2e0
	add r5, r5, #1
	cmp r5, #4
	blt _0219E4A8
	mov r5, #0
	mov r6, #1
_0219E4C2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy320_219de5c
	add r5, r5, #1
	cmp r5, #8
	blt _0219E4C2
	pop {r3, r4, r5, r6, r7, pc}
_0219E4D4:
	mov r5, #0
	add r7, r5, #0
	mov r6, #4
_0219E4DA:
	add r2, r6, #0
	cmp r5, #4
	bge _0219E4E2
	add r2, r7, #0
_0219E4E2:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy320_219dbf0
	add r5, r5, #1
	cmp r5, #8
	blt _0219E4DA
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #6
	mov r3, #1
	bl ovy320_219dc5c
	mov r6, #0
	add r5, r6, #0
_0219E502:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x10
	add r2, r5, #0
	bl sub_0219DC0C
	add r6, r6, #1
	cmp r6, #6
	blt _0219E502
	mov r6, #1
_0219E516:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy320_219de5c
	add r5, r5, #1
	cmp r5, #8
	blt _0219E516
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E528: .word 0x000001AB
	thumb_func_end ovy320_219e3d0

	thumb_func_start ovy320_219e52c
ovy320_219e52c: ; 0x0219E52C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
	mov r4, #0
_0219E534:
	cmp r4, #4
	bge _0219E552
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #2
	add r0, r0, r6
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0219E56A
	mov r2, #3
	b _0219E56A
_0219E552:
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #6
	add r0, r0, r6
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0219E56A
	mov r2, #7
_0219E56A:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ovy320_219dbf0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, r6
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0219E586
	mov r1, #1
_0219E586:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xdc
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_0202B378
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r0, r0, r6
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	bne _0219E5B0
	cmp r7, #0
	bne _0219E5B0
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r7, #1
	str r4, [r5, r0]
_0219E5B0:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #8
	blt _0219E534
	add r0, r5, #0
	bl ovy320_219e5d8
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ovy320_219e9c8
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy320_219eb04
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy320_219e52c

	thumb_func_start ovy320_219e5d8
ovy320_219e5d8: ; 0x0219E5D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r4, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r0, #2
	str r0, [sp, #8]
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r0, #3
	str r0, [sp, #0x8c]
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x88]
	mov r0, #0x19
	mov r1, #0x19
	lsl r0, r0, #4
	lsl r1, r1, #4
	add r7, r0, #5
	mov r3, #0
	add r0, r0, #6
	add r1, r1, #7
_0219E60E:
	lsl r2, r3, #3
	mov r5, #0x19
	add r2, r4, r2
	mov r6, #0
	lsl r5, r5, #4
	strb r6, [r2, r5]
	ldr r5, [sp, #0xc]
	add r3, r3, #1
	strb r6, [r2, r5]
	ldr r5, [sp, #8]
	mov r6, #0xff
	strb r6, [r2, r5]
	ldr r5, [sp, #0x8c]
	mov r6, #0
	strb r6, [r2, r5]
	ldr r5, [sp, #0x88]
	strb r6, [r2, r5]
	mov r5, #0
	strb r5, [r2, r7]
	strb r5, [r2, r0]
	strb r5, [r2, r1]
	cmp r3, #0xb
	blt _0219E60E
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	cmp r0, #0
	bne _0219E6D8
	add r1, r2, #0
	add r1, #0x66
	add r0, r6, #0
	strb r0, [r4, r1]
	add r0, r2, #0
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #0x1f
	lsr r5, r1, #0x1f
	lsl r3, r1, #0x1f
	sub r3, r3, r5
	ror r3, r0
	add r0, r5, r3
	bne _0219E69E
	add r0, r2, #0
	add r0, #0x7a
	add r3, r2, #0
	add r5, r2, #0
	strb r1, [r4, r0]
	mov r6, #1
	add r0, r1, #1
	add r3, #0x7b
	strb r0, [r4, r3]
	lsl r6, r1
	mvn r1, r6
	lsl r1, r1, #0x18
	add r5, #0x76
	mov r3, #0xff
	add r2, #0x66
	strb r3, [r4, r5]
	add r5, r4, r2
	mov r2, #1
	lsl r2, r0
	mvn r0, r2
	lsl r0, r0, #0x18
	ldrb r3, [r5, #0x10]
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	and r1, r3
	strb r1, [r5, #0x10]
	ldrb r1, [r5, #0x10]
	and r0, r1
	strb r0, [r5, #0x10]
	b _0219E6D8
_0219E69E:
	add r0, r2, #0
	sub r5, r1, #1
	add r0, #0x7a
	strb r5, [r4, r0]
	add r0, r2, #0
	add r3, r2, #0
	add r0, #0x7b
	mov r6, #1
	strb r1, [r4, r0]
	lsl r6, r5
	mvn r5, r6
	lsl r5, r5, #0x18
	add r3, #0x76
	mov r0, #0xff
	add r2, #0x66
	strb r0, [r4, r3]
	add r3, r4, r2
	mov r2, #1
	lsl r2, r1
	mvn r1, r2
	lsl r1, r1, #0x18
	ldrb r0, [r3, #0x10]
	lsr r5, r5, #0x18
	lsr r1, r1, #0x18
	and r0, r5
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x10]
	and r0, r1
	strb r0, [r3, #0x10]
_0219E6D8:
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, r0]
	sub r0, r0, #1
	cmp r0, #1
	bls _0219E6E8
	b _0219E832
_0219E6E8:
	ldr r0, [sp, #0x10]
	mov r3, #0
	str r0, [sp, #0x28]
	add r0, #0x7d
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x24]
	add r0, #0x7c
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	add r0, #0x80
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	add r0, #0x7d
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x7c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	add r0, #0x7e
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x38]
	add r0, #0x66
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x34]
	add r0, #0x7f
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x30]
	add r0, #0x81
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x2c]
	add r0, #0x82
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	add r0, #0x83
	str r0, [sp, #0x10]
_0219E748:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	lsl r1, r3, #3
	add r0, r0, r1
	ldr r0, [r0, #0x68]
	cmp r0, #1
	bne _0219E76C
	ldr r5, [sp, #0x1c]
	lsl r2, r3, #1
	add r0, r4, r1
	strb r2, [r0, r5]
	ldr r5, [sp, #0x18]
	add r6, r2, #1
	strb r6, [r0, r5]
	mov r6, #0
	ldr r5, [sp, #0x14]
	b _0219E77E
_0219E76C:
	lsl r2, r3, #1
	ldr r5, [sp, #0x28]
	add r0, r4, r1
	add r6, r2, #1
	strb r6, [r0, r5]
	ldr r5, [sp, #0x24]
	mov r6, #1
	strb r2, [r0, r5]
	ldr r5, [sp, #0x20]
_0219E77E:
	strb r6, [r0, r5]
	mov r6, #1
	lsl r6, r2
	ldr r5, [sp, #0x3c]
	add r0, r4, r1
	strb r6, [r0, r5]
	ldr r5, [sp, #0x38]
	add r7, r2, #1
	add r5, r0, r5
	str r5, [sp, #0x84]
	ldrb r5, [r5, #0x18]
	str r5, [sp]
	mov r5, #1
	lsl r5, r7
	lsl r5, r5, #0x18
	lsr r6, r5, #0x18
	ldr r5, [sp]
	orr r6, r5
	ldr r5, [sp, #0x84]
	strb r6, [r5, #0x18]
	ldr r5, [sp, #0x34]
	strb r3, [r0, r5]
	add r5, r4, #0
	add r5, #0xb4
	ldr r5, [r5]
	add r3, r3, #1
	add r1, r5, r1
	add r1, #0x6c
	ldrb r5, [r1]
	ldr r1, [sp, #0x30]
	cmp r3, #4
	strb r5, [r0, r1]
	ldr r1, [sp, #0x2c]
	strb r2, [r0, r1]
	ldr r1, [sp, #0x10]
	strb r7, [r0, r1]
	blt _0219E748
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #4
	bge _0219E7F2
	add r1, r0, #0
	add r1, #0x71
	ldrb r3, [r4, r1]
	mov r2, #1
	add r1, r0, #0
	add r6, r0, #0
	lsl r2, r3
	add r1, #0x92
	add r6, #0x5a
	strb r2, [r4, r1]
	add r1, r4, r6
	add r1, #0x38
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x79
	b _0219E810
_0219E7F2:
	add r1, r0, #0
	add r1, #0x81
	ldrb r3, [r4, r1]
	mov r2, #1
	add r1, r0, #0
	add r6, r0, #0
	lsl r2, r3
	add r1, #0x92
	add r6, #0x5a
	strb r2, [r4, r1]
	add r1, r4, r6
	add r1, #0x38
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x89
_0219E810:
	ldrb r1, [r4, r1]
	mov r5, #1
	lsl r5, r1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r2
	add r2, r4, r6
	add r2, #0x38
	strb r5, [r2]
	add r2, r0, #0
	add r2, #0x96
	strb r3, [r4, r2]
	add r0, #0x97
	strb r1, [r4, r0]
	ldr r0, _0219E9C0 ; =0x000001CD
	mov r1, #3
	strb r1, [r4, r0]
_0219E832:
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x40]
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0219E840
	b _0219E9BA
_0219E840:
	ldr r0, [sp, #0x40]
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x68]
	add r0, #0x85
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x40]
	mov r6, #0
	str r0, [sp, #0x64]
	add r0, #0xa5
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x40]
	add r7, #0x66
	str r0, [sp, #0x60]
	add r0, #0x7d
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x5c]
	add r0, #0xa4
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x58]
	add r0, #0xa8
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x54]
	add r0, #0x7d
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x50]
	add r0, #0xa5
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x4c]
	add r0, #0x85
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x48]
	add r0, #0xa4
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x44]
	add r0, #0xa8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, #0x7d
	mov ip, r0
	ldr r0, [sp, #0x40]
	add r0, #0xa6
	mov lr, r0
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x80]
	add r0, #0x85
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x7c]
	add r0, #0xa7
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x78]
	add r0, #0xa9
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x74]
	add r0, #0x7d
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x70]
	add r0, #0xaa
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x6c]
	add r0, #0x85
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x40]
	add r0, #0xab
	str r0, [sp, #0x40]
_0219E8D8:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	lsl r5, r6, #3
	add r0, r0, r5
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	bne _0219E906
	lsl r0, r6, #4
	ldr r2, [sp, #0x54]
	add r0, r4, r0
	ldrb r3, [r0, r2]
	ldr r2, [sp, #0x50]
	add r1, r4, r5
	strb r3, [r1, r2]
	ldr r2, [sp, #0x4c]
	ldrb r3, [r0, r2]
	ldr r2, [sp, #0x48]
	strb r3, [r1, r2]
	mov r3, #0
	ldr r2, [sp, #0x44]
	b _0219E920
_0219E906:
	lsl r0, r6, #4
	ldr r2, [sp, #0x68]
	add r0, r4, r0
	ldrb r3, [r0, r2]
	ldr r2, [sp, #0x64]
	add r1, r4, r5
	strb r3, [r1, r2]
	ldr r2, [sp, #0x60]
	ldrb r3, [r0, r2]
	ldr r2, [sp, #0x5c]
	strb r3, [r1, r2]
	ldr r2, [sp, #0x58]
	mov r3, #1
_0219E920:
	strb r3, [r1, r2]
	mov r1, ip
	ldrb r1, [r0, r1]
	mov r2, #1
	add r3, r4, r5
	lsl r2, r1
	mov r1, lr
	strb r2, [r3, r1]
	add r1, r3, r7
	add r1, #0x40
	ldrb r1, [r1]
	str r1, [sp, #4]
	ldr r1, [sp, #0x80]
	ldrb r2, [r0, r1]
	mov r1, #1
	lsl r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #4]
	orr r2, r1
	add r1, r3, r7
	add r1, #0x40
	strb r2, [r1]
	add r2, r6, #4
	ldr r1, [sp, #0x7c]
	add r6, r6, #1
	strb r2, [r3, r1]
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1]
	add r1, r1, r5
	add r1, #0x8c
	ldrb r2, [r1]
	ldr r1, [sp, #0x78]
	cmp r6, #2
	strb r2, [r3, r1]
	ldr r1, [sp, #0x74]
	ldrb r2, [r0, r1]
	ldr r1, [sp, #0x70]
	strb r2, [r3, r1]
	ldr r1, [sp, #0x6c]
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0x40]
	strb r1, [r3, r0]
	blt _0219E8D8
	ldr r0, _0219E9C4 ; =0x000001D1
	mov r2, #1
	ldrb r3, [r4, r0]
	add r1, r0, #0
	add r6, r0, #0
	lsl r2, r3
	add r1, #0x11
	sub r6, #0x3f
	strb r2, [r4, r1]
	add r1, r4, r6
	add r1, #0x50
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldrb r1, [r4, r1]
	mov r5, #1
	lsl r5, r1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r2
	add r2, r4, r6
	add r2, #0x50
	strb r5, [r2]
	add r2, r0, #0
	mov r5, #4
	add r2, #0x14
	strb r5, [r4, r2]
	add r2, r0, #0
	add r2, #0x15
	strb r3, [r4, r2]
	add r0, #0x16
	strb r1, [r4, r0]
_0219E9BA:
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E9C0: .word 0x000001CD
_0219E9C4: .word 0x000001D1
	thumb_func_end ovy320_219e5d8

	thumb_func_start ovy320_219e9c8
ovy320_219e9c8: ; 0x0219E9C8
	push {r4, r5}
	mov r4, #0x4b
	lsl r4, r4, #2
	ldr r5, [r0, r4]
	mov r3, #0
	cmp r5, #1
	bne _0219E9E6
	add r4, #8
	ldr r4, [r0, r4]
	add r4, r4, #3
	add r2, r2, r4
	cmp r2, #8
	blt _0219EA0A
	mov r2, #7
	b _0219EA0A
_0219E9E6:
	cmp r5, #2
	bne _0219E9FA
	add r4, #8
	ldr r4, [r0, r4]
	add r4, #8
	add r2, r2, r4
	cmp r2, #0xb
	blt _0219EA0A
	mov r2, #0xa
	b _0219EA0A
_0219E9FA:
	cmp r5, #0
	bne _0219EA0A
	add r4, #8
	ldr r4, [r0, r4]
	add r2, r2, r4
	cmp r2, #3
	blt _0219EA0A
	mov r2, #2
_0219EA0A:
	cmp r1, #0
	bne _0219EA18
	lsl r1, r2, #3
	add r1, r0, r1
	mov r0, #0x19
	lsl r0, r0, #4
	b _0219EA6C
_0219EA18:
	cmp r1, #1
	bne _0219EA24
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA74 ; =0x00000191
	b _0219EA6C
_0219EA24:
	cmp r1, #2
	bne _0219EA30
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA78 ; =0x00000192
	b _0219EA6C
_0219EA30:
	cmp r1, #3
	bne _0219EA3C
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA7C ; =0x00000193
	b _0219EA6C
_0219EA3C:
	cmp r1, #4
	bne _0219EA4A
	lsl r1, r2, #3
	add r1, r0, r1
	mov r0, #0x65
	lsl r0, r0, #2
	b _0219EA6C
_0219EA4A:
	cmp r1, #5
	bne _0219EA56
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA80 ; =0x00000195
	b _0219EA6C
_0219EA56:
	cmp r1, #6
	bne _0219EA62
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA84 ; =0x00000196
	b _0219EA6C
_0219EA62:
	cmp r1, #7
	bne _0219EA6E
	lsl r1, r2, #3
	add r1, r0, r1
	ldr r0, _0219EA88 ; =0x00000197
_0219EA6C:
	ldrb r3, [r1, r0]
_0219EA6E:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_0219EA74: .word 0x00000191
_0219EA78: .word 0x00000192
_0219EA7C: .word 0x00000193
_0219EA80: .word 0x00000195
_0219EA84: .word 0x00000196
_0219EA88: .word 0x00000197
	thumb_func_end ovy320_219e9c8

	thumb_func_start ovy320_219ea8c
ovy320_219ea8c: ; 0x0219EA8C
	push {r3, r4}
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r4, #0
	add r3, r2, #1
	add r2, r1, #0
	str r3, [r0, r1]
	sub r2, #8
	ldr r2, [r0, r2]
	cmp r2, #1
	bne _0219EAAC
	cmp r3, #4
	blt _0219EAC4
	mov r2, #4
	b _0219EAC0
_0219EAAC:
	cmp r2, #2
	bne _0219EAB6
	cmp r3, #2
	blt _0219EAC4
	b _0219EABE
_0219EAB6:
	cmp r2, #0
	bne _0219EAC4
	cmp r3, #2
	blt _0219EAC4
_0219EABE:
	mov r2, #2
_0219EAC0:
	str r2, [r0, r1]
	mov r4, #1
_0219EAC4:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy320_219ea8c

	thumb_func_start sub_0219EACC
sub_0219EACC: ; 0x0219EACC
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r3, #0
	cmp r2, #1
	bne _0219EAE2
	add r1, #8
	ldr r0, [r0, r1]
	cmp r0, #4
	blt _0219EAFE
	b _0219EAFC
_0219EAE2:
	cmp r2, #2
	bne _0219EAF0
	add r1, #8
	ldr r0, [r0, r1]
	cmp r0, #2
	blt _0219EAFE
	b _0219EAFC
_0219EAF0:
	cmp r2, #0
	bne _0219EAFE
	add r1, #8
	ldr r0, [r0, r1]
	cmp r0, #2
	blt _0219EAFE
_0219EAFC:
	mov r3, #1
_0219EAFE:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EACC

	thumb_func_start ovy320_219eb04
ovy320_219eb04: ; 0x0219EB04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0x15
	mov r6, #0
	str r0, [sp]
	lsl r4, r4, #4
_0219EB12:
	mov r0, #5
	mov r7, #0
	bl sub_02005748
	mov r1, #0
_0219EB1C:
	lsl r2, r1, #2
	add r2, r5, r2
	ldr r2, [r2, r4]
	cmp r0, r2
	bne _0219EB2A
	mov r7, #1
	b _0219EB30
_0219EB2A:
	add r1, r1, #1
	cmp r1, #4
	blt _0219EB1C
_0219EB30:
	cmp r7, #0
	bne _0219EB40
	lsl r1, r6, #2
	add r1, r5, r1
	add r6, r6, #1
	str r0, [r1, r4]
	cmp r6, #4
	bge _0219EB4A
_0219EB40:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x80
	blt _0219EB12
_0219EB4A:
	ldr r0, [sp]
	cmp r0, #0x80
	bne _0219EB62
	mov r0, #0x15
	mov r2, #0
	lsl r0, r0, #4
_0219EB56:
	lsl r1, r2, #2
	add r1, r5, r1
	str r2, [r1, r0]
	add r2, r2, #1
	cmp r2, #4
	blt _0219EB56
_0219EB62:
	mov r0, #0x53
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy320_219eb04

	thumb_func_start sub_0219EB6C
sub_0219EB6C: ; 0x0219EB6C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EB6C

	thumb_func_start ovy320_219eb70
ovy320_219eb70: ; 0x0219EB70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219EBF4 ; =0x000001C7
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219EBF8 ; =0x0219F140
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219EBFC ; =0x04000050
	ldr r0, _0219EC00 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219EC04 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219EC08 ; =0x0219EFD8
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
	bl ovy320_219eca0
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy320_219ed44
	ldr r0, _0219EC0C ; =ovy320_219ec8c
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EBF4: .word 0x000001C7
_0219EBF8: .word 0x0219F140
_0219EBFC: .word 0x04000050
_0219EC00: .word 0x04001050
_0219EC04: .word 0xFFFF1FFF
_0219EC08: .word 0x0219EFD8
_0219EC0C: .word ovy320_219ec8c
	thumb_func_end ovy320_219eb70

	thumb_func_start ovy320_219ec10
ovy320_219ec10: ; 0x0219EC10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A6A8
	add r0, r4, #4
	bl ovy320_219ed84
	add r0, r4, #0
	bl ovy320_219ed00
	bl sub_020232D8
	ldr r5, _0219EC58 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219EC5C ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219EC60 ; =0xFFFF1FFF
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
_0219EC58: .word 0x04000050
_0219EC5C: .word 0x04001050
_0219EC60: .word 0xFFFF1FFF
	thumb_func_end ovy320_219ec10

	thumb_func_start ovy320_219ec64
ovy320_219ec64: ; 0x0219EC64
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219EDA0
	add r0, r4, #0
	bl sub_0219ED38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy320_219ec64

	thumb_func_start sub_0219EC78
sub_0219EC78: ; 0x0219EC78
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EC78

	thumb_func_start sub_0219EC7C
sub_0219EC7C: ; 0x0219EC7C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EC7C

	thumb_func_start sub_0219EC80
sub_0219EC80: ; 0x0219EC80
	ldr r3, _0219EC88 ; =sub_0219EDB0
	add r0, r0, #4
	bx r3
	nop
_0219EC88: .word sub_0219EDB0
	thumb_func_end sub_0219EC80

	thumb_func_start ovy320_219ec8c
ovy320_219ec8c: ; 0x0219EC8C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219ED3C
	add r0, r4, #4
	bl sub_0219EDA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy320_219ec8c

	thumb_func_start ovy320_219eca0
ovy320_219eca0: ; 0x0219ECA0
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
	ldr r0, _0219ECF8 ; =0x0219EFAC
	bl sub_02044710
	ldr r7, _0219ECFC ; =0x0219F008
_0219ECC2:
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
	cmp r4, #7
	blo _0219ECC2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ECF8: .word 0x0219EFAC
_0219ECFC: .word 0x0219F008
	thumb_func_end ovy320_219eca0

	thumb_func_start ovy320_219ed00
ovy320_219ed00: ; 0x0219ED00
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219ED34 ; =0x0219F008
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219ED0A:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blo _0219ED0A
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219ED34: .word 0x0219F008
	thumb_func_end ovy320_219ed00

	thumb_func_start sub_0219ED38
sub_0219ED38: ; 0x0219ED38
	bx lr
	.align 2, 0
	thumb_func_end sub_0219ED38

	thumb_func_start sub_0219ED3C
sub_0219ED3C: ; 0x0219ED3C
	ldr r3, _0219ED40 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219ED40: .word sub_02045A5C
	thumb_func_end sub_0219ED3C

	thumb_func_start ovy320_219ed44
ovy320_219ed44: ; 0x0219ED44
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219ED80 ; =0x0219EFBC
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
_0219ED80: .word 0x0219EFBC
	thumb_func_end ovy320_219ed44

	thumb_func_start ovy320_219ed84
ovy320_219ed84: ; 0x0219ED84
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
	thumb_func_end ovy320_219ed84

	thumb_func_start sub_0219EDA0
sub_0219EDA0: ; 0x0219EDA0
	ldr r3, _0219EDA4 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219EDA4: .word sub_0204B794
	thumb_func_end sub_0219EDA0

	thumb_func_start sub_0219EDA8
sub_0219EDA8: ; 0x0219EDA8
	ldr r3, _0219EDAC ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219EDAC: .word sub_0204B7C8
	thumb_func_end sub_0219EDA8

	thumb_func_start sub_0219EDB0
sub_0219EDB0: ; 0x0219EDB0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219EDB0
_0219EDB4:
	.byte 0x70, 0x00, 0x70, 0x00, 0xB8, 0xFF, 0x00, 0x00, 0xDC, 0x00, 0x94, 0x00
	.byte 0x00, 0x02, 0x00, 0x01, 0x05, 0x03, 0x00, 0x00, 0x06, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x02, 0x04, 0x1C, 0x02, 0x02, 0x04, 0x02, 0x11, 0x1C, 0x02, 0x02, 0x00, 0x01, 0x13, 0x1E
	.byte 0x04, 0x09, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00
	.byte 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x07, 0x03, 0x06, 0x00, 0x40, 0x00, 0x0D, 0x03
	.byte 0x07, 0x01, 0x40, 0x00, 0x88, 0x03, 0x08, 0x02, 0x40, 0x00, 0x26, 0x02, 0x09, 0x03, 0x40, 0x00
	.byte 0x5E, 0x03, 0x0A, 0x04, 0x40, 0x00, 0x25, 0x02, 0x0B, 0x05, 0x40, 0x00, 0x24, 0x02, 0x0C, 0x06
	.byte 0x40, 0x00, 0x5D, 0x03, 0x0D, 0x07, 0x40, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0xA5, 0xCF, 0x19, 0x02, 0x45, 0xCF, 0x19, 0x02, 0x08, 0x02, 0x38, 0x01
	.byte 0x01, 0x00, 0x10, 0x00, 0x08, 0x02, 0x38, 0x01, 0x01, 0x00, 0x11, 0x00, 0x08, 0x02, 0x38, 0x01
	.byte 0x01, 0x00, 0x12, 0x00, 0x08, 0x02, 0x38, 0x01, 0x01, 0x00, 0x13, 0x00, 0x08, 0x02, 0x38, 0x01
	.byte 0x01, 0x00, 0x14, 0x00, 0x08, 0x02, 0x38, 0x01, 0x01, 0x00, 0x15, 0x00, 0x08, 0x02, 0x38, 0x01
	.byte 0x01, 0x00, 0x16, 0x00, 0x08, 0x02, 0x38, 0x01, 0x01, 0x00, 0x17, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0x08, 0x00, 0x09, 0x00, 0x21, 0x00, 0x05, 0x00
	.byte 0x08, 0x00, 0x09, 0x00, 0x22, 0x00, 0x01, 0x00, 0x08, 0x00, 0x09, 0x00, 0x23, 0x00, 0x05, 0x00
	.byte 0x08, 0x00, 0x09, 0x00, 0x24, 0x00, 0x03, 0x00, 0x08, 0x00, 0x09, 0x00, 0x25, 0x00, 0x07, 0x00
	.byte 0x08, 0x00, 0x09, 0x00, 0x26, 0x00, 0x03, 0x00, 0x08, 0x00, 0x09, 0x00, 0x27, 0x00, 0x07, 0x00
	.byte 0x08, 0x00, 0x09, 0x00, 0x28, 0x00, 0x01, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x29, 0x00, 0x05, 0x00
	.byte 0x0A, 0x00, 0x0B, 0x00, 0x2A, 0x00, 0x03, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x2B, 0x00, 0x07, 0x00
	.byte 0x0A, 0x00, 0x0B, 0x00, 0x00, 0x30, 0x01, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x30, 0x01, 0x01
	.byte 0x00, 0x00, 0x09, 0x00, 0x00, 0x30, 0x01, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x30, 0x01, 0x01
	.byte 0x00, 0x00, 0x0B, 0x00, 0x04, 0x30, 0x01, 0x01, 0x00, 0x00, 0x0C, 0x00, 0x04, 0x30, 0x01, 0x01
	.byte 0x00, 0x00, 0x0D, 0x00, 0x04, 0x30, 0x01, 0x01, 0x00, 0x00, 0x0E, 0x00, 0x04, 0x30, 0x01, 0x01
	.byte 0x00, 0x00, 0x0F, 0x00, 0x02, 0x40, 0x01, 0x01, 0x00, 0x00, 0x10, 0x00, 0x02, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x11, 0x00, 0x02, 0x40, 0x01, 0x01, 0x00, 0x00, 0x12, 0x00, 0x02, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x13, 0x00, 0x06, 0x40, 0x01, 0x01, 0x00, 0x00, 0x14, 0x00, 0x06, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x15, 0x00, 0x06, 0x40, 0x01, 0x01, 0x00, 0x00, 0x16, 0x00, 0x06, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x17, 0x00, 0x08, 0x50, 0x01, 0x00, 0x03, 0x01, 0x20, 0x00, 0x08, 0x50, 0x01, 0x00
	.byte 0x03, 0x05, 0x23, 0x00, 0x08, 0x50, 0x01, 0x00, 0x03, 0x03, 0x24, 0x00, 0x08, 0x50, 0x01, 0x00
	.byte 0x03, 0x07, 0x27, 0x00, 0x0A, 0x50, 0x01, 0x00, 0x03, 0x05, 0x29, 0x00, 0x0A, 0x50, 0x01, 0x00
	.byte 0x03, 0x07, 0x2B, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219EDB4
