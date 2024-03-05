	.include "asm/macros.inc"
	.include "gx_load3d.inc"
	.include "global.inc"
	.public GXi_DmaId
	.public GX_ResetBankForClearImage

	.bss

sClrImg: ; 0x021E15F8
	.space 0x4

sTexLCDCBlk1: ; 0x021E15FC
	.space 0x4

sTexPlttLCDCBlk: ; 0x021E1600
	.space 0x4

sTexPltt: ; 0x021E1604
	.space 0x4

sClrImgLCDCBlk: ; 0x021E1608
	.space 0x4

sTex: ; 0x021E160C
	.space 0x4

sTexLCDCBlk2: ; 0x021E1610
	.space 0x4

sSzTexBlk1: ; 0x021E1614
	.space 0x4

	.text

	thumb_func_start GX_BeginLoadTex
GX_BeginLoadTex: ; 0x02076138
	push {r3, lr}
	bl GX_ResetBankForTex
	ldr r2, _02076160 ; =0x0214C06C
	mov r1, #6
	str r0, [r2, #0x14]
	mul r1, r0
	ldr r0, _02076164 ; =sTexStartAddrTable
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #4]
	ldr r0, _02076168 ; =sTexStartAddrTable + 2
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #0x18]
	ldr r0, _0207616C ; =sTexStartAddrTable + 4
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #0x1c]
	pop {r3, pc}
	.align 2, 0
_02076160: .word 0x0214C06C
_02076164: .word sTexStartAddrTable
_02076168: .word sTexStartAddrTable + 2
_0207616C: .word sTexStartAddrTable + 4
	thumb_func_end GX_BeginLoadTex

	thumb_func_start GX_LoadTex
GX_LoadTex: ; 0x02076170
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _02076270 ; =0x0214C06C
	add r5, r0, #0
	ldr r7, [r1, #0x18]
	add r6, r2, #0
	cmp r7, #0
	bne _02076188
_02076182:
	ldr r0, [r1, #4]
	add r2, r0, r3
	b _02076228
_02076188:
	ldr r0, [r1, #0x1c]
	add r2, r3, r6
	cmp r2, r0
	bhs _02076192
	b _02076182
_02076192:
	cmp r3, r0
	blo _0207619C
	add r1, r7, r3
	sub r2, r1, r0
	b _02076228
_0207619C:
	sub r4, r0, r3
	ldr r0, _02076274 ; =0x0209B528
	ldr r2, [r1, #4]
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020761D2
	cmp r4, #0x30
	bls _020761D2
	cmp r0, #3
	bls _020761C2
	add r2, r2, r3
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	b _020761DC
_020761C2:
	mov r1, #1
	str r1, [sp]
	add r2, r2, r3
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02078080
	b _020761DC
_020761D2:
	add r1, r2, r3
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
_020761DC:
	ldr r0, _02076274 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _0207621A
	cmp r0, #3
	bls _02076202
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, r4
	add r2, r7, #0
	sub r3, r6, r4
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076202:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r1, r5, r4
	add r2, r7, #0
	sub r3, r6, r4
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207621A:
	add r0, r5, r4
	add r1, r7, #0
	sub r2, r6, r4
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076228:
	ldr r0, _02076274 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076262
	cmp r0, #3
	bls _0207624C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207624C:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076262:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r6, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02076270: .word 0x0214C06C
_02076274: .word 0x0209B528
	thumb_func_end GX_LoadTex

	thumb_func_start GX_EndLoadTex
GX_EndLoadTex: ; 0x02076278
	push {r4, lr}
	ldr r0, _020762AC ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076296
	cmp r0, #3
	bls _02076292
	sub r0, r0, #4
	bl sub_02075F20
	b _02076296
_02076292:
	bl sub_0207829C
_02076296:
	ldr r4, _020762B0 ; =0x0214C06C
	ldr r0, [r4, #0x14]
	bl GX_SetBankForTex
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	str r0, [r4, #4]
	str r0, [r4, #0x14]
	pop {r4, pc}
	nop
_020762AC: .word 0x0209B528
_020762B0: .word 0x0214C06C
	thumb_func_end GX_EndLoadTex

	thumb_func_start GX_BeginLoadTexPltt
GX_BeginLoadTexPltt: ; 0x020762B4
	push {r3, lr}
	bl GX_ResetBankForTexPltt
	ldr r1, _020762CC ; =0x0214C06C
	str r0, [r1, #0xc]
	asr r0, r0, #4
	lsl r2, r0, #1
	ldr r0, _020762D0 ; =sTexPlttStartAddrTable
	ldrh r0, [r0, r2]
	lsl r0, r0, #0xc
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_020762CC: .word 0x0214C06C
_020762D0: .word sTexPlttStartAddrTable
	thumb_func_end GX_BeginLoadTexPltt

	thumb_func_start GX_LoadTexPltt
GX_LoadTexPltt: ; 0x020762D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _0207632C ; =0x0214C06C
	add r5, r0, #0
	ldr r3, [r1, #8]
	ldr r1, _02076330 ; =0x0209B528
	add r7, r2, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _02076322
	cmp r6, #3
	bls _02076308
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r3, r4
	sub r0, r6, #4
	add r1, r5, #0
	add r3, r7, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076308:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r3, r4
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076322:
	add r1, r3, r4
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0207632C: .word 0x0214C06C
_02076330: .word 0x0209B528
	thumb_func_end GX_LoadTexPltt

	thumb_func_start GX_EndLoadTexPltt
GX_EndLoadTexPltt: ; 0x02076334
	push {r4, lr}
	ldr r0, _02076364 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076352
	cmp r0, #3
	bls _0207634E
	sub r0, r0, #4
	bl sub_02075F20
	b _02076352
_0207634E:
	bl sub_0207829C
_02076352:
	ldr r4, _02076368 ; =0x0214C06C
	ldr r0, [r4, #0xc]
	bl GX_SetBankForTexPltt
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_02076364: .word 0x0209B528
_02076368: .word 0x0214C06C
	thumb_func_end GX_EndLoadTexPltt

	thumb_func_start GX_BeginLoadClearImage
GX_BeginLoadClearImage: ; 0x0207636C
	push {r3, lr}
	bl GX_ResetBankForClearImage
	ldr r1, _020763BC ; =0x0214C06C
	cmp r0, #0xc
	str r0, [r1]
	bhi _020763B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02076386: ; jump table
	.short _020763B8 - _02076386 - 2 ; case 0
	.short _020763AE - _02076386 - 2 ; case 1
	.short _020763A0 - _02076386 - 2 ; case 2
	.short _020763A0 - _02076386 - 2 ; case 3
	.short _020763B4 - _02076386 - 2 ; case 4
	.short _020763B8 - _02076386 - 2 ; case 5
	.short _020763B8 - _02076386 - 2 ; case 6
	.short _020763B8 - _02076386 - 2 ; case 7
	.short _020763A8 - _02076386 - 2 ; case 8
	.short _020763B8 - _02076386 - 2 ; case 9
	.short _020763B8 - _02076386 - 2 ; case 10
	.short _020763B8 - _02076386 - 2 ; case 11
	.short _020763A8 - _02076386 - 2 ; case 12
_020763A0:
	mov r0, #0x1a
	lsl r0, r0, #0x16
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763A8:
	ldr r0, _020763C0 ; =0x06840000
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763AE:
	ldr r0, _020763C4 ; =0x067E0000
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763B4:
	ldr r0, _020763C8 ; =0x06820000
	str r0, [r1, #0x10]
_020763B8:
	pop {r3, pc}
	nop
_020763BC: .word 0x0214C06C
_020763C0: .word 0x06840000
_020763C4: .word 0x067E0000
_020763C8: .word 0x06820000
	thumb_func_end GX_BeginLoadClearImage

	thumb_func_start GX_LoadClearImageColor
GX_LoadClearImageColor: ; 0x020763CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _0207641C ; =0x0214C06C
	mov r5, #0
	ldr r2, [r1, #0x10]
	ldr r1, _02076420 ; =0x0209B528
	mvn r5, r5
	ldr r1, [r1]
	add r4, r0, #0
	cmp r1, r5
	beq _02076410
	cmp r1, #3
	bls _020763FA
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r4, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, pc}
_020763FA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r4, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, pc}
_02076410:
	add r1, r2, #0
	add r2, r3, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0207641C: .word 0x0214C06C
_02076420: .word 0x0209B528
	thumb_func_end GX_LoadClearImageColor

	thumb_func_start GX_LoadClearImageDepth
GX_LoadClearImageDepth: ; 0x02076424
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _0207647C ; =0x0214C06C
	mov r6, #0
	ldr r2, [r1, #0x10]
	ldr r1, _02076480 ; =0x0209B528
	mov r5, #2
	ldr r1, [r1]
	mvn r6, r6
	add r4, r0, #0
	lsl r5, r5, #0x10
	cmp r1, r6
	beq _02076470
	cmp r1, #3
	bls _02076458
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r4, #0
	add r2, r2, r5
	bl sub_02075ED8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076458:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r4, #0
	add r2, r2, r5
	bl sub_020781F0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076470:
	add r1, r2, r5
	add r2, r3, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207647C: .word 0x0214C06C
_02076480: .word 0x0209B528
	thumb_func_end GX_LoadClearImageDepth

	thumb_func_start GX_EndLoadClearImage
GX_EndLoadClearImage: ; 0x02076484
	push {r4, lr}
	ldr r0, _020764B4 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020764A2
	cmp r0, #3
	bls _0207649E
	sub r0, r0, #4
	bl sub_02075F20
	b _020764A2
_0207649E:
	bl sub_0207829C
_020764A2:
	ldr r4, _020764B8 ; =0x0214C06C
	ldr r0, [r4]
	bl GX_SetBankForClearImage
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x10]
	pop {r4, pc}
	nop
_020764B4: .word 0x0209B528
_020764B8: .word 0x0214C06C
	thumb_func_end GX_EndLoadClearImage

	.rodata

sTexPlttStartAddrTable: ; 0x020987C0
	.short 0x0000
	.short 0x6880
	.short 0x6890
	.short 0x6880
	.short 0x6894
	.short 0x0000
	.short 0x6890
	.short 0x6880

sTexStartAddrTable: ; 0x020987D0
	.short 0x0000, 0x0000, 0x0000
	.short 0x6800, 0x0000, 0x0000
	.short 0x6820, 0x0000, 0x0000
	.short 0x6800, 0x0000, 0x0000
	.short 0x6840, 0x0000, 0x0000
	.short 0x6800, 0x6840, 0x0020
	.short 0x6820, 0x0000, 0x0000
	.short 0x6800, 0x0000, 0x0000
	.short 0x6860, 0x0000, 0x0000
	.short 0x6800, 0x6860, 0x0020
	.short 0x6820, 0x6860, 0x0020
	.short 0x6800, 0x6860, 0x0040
	.short 0x6840, 0x0000, 0x0000
	.short 0x6800, 0x6840, 0x0020
	.short 0x6820, 0x0000, 0x0000
	.short 0x6800, 0x0000, 0x0000
