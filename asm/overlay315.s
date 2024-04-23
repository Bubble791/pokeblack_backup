    .include "macros/function.inc"
	.include "overlay315.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy315_219ce80
ovy315_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	mov r2, #3
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x83
	lsl r2, r2, #0x10
	mov r6, #0x83
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x58
	mov r2, #0x83
	bl GFL_ProcInitSubsystem
	add r7, r0, #0
	mov r1, #0
	mov r2, #0x58
	mov r4, #0
	blx MI_CpuFill8
	strh r6, [r7]
	str r5, [r7, #4]
	ldrh r1, [r7]
	mov r0, #1
	bl ovy315_219d7e0
	str r0, [r7, #8]
	ldrh r0, [r7]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r7, #0xc]
	ldrh r0, [r7]
	bl sub_02021998
	str r0, [r7, #0x10]
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	mov r5, #2
	bl sub_02044BD8
	ldr r0, _0219D004 ; =0x0219D1CD
	add r1, r7, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r7, #0x14]
	add r0, r7, #0
	bl ovy315_219d1d0
	add r0, r7, #0
	bl ovy315_219d234
	add r0, r7, #0
	bl ovy315_219d4ec
	add r0, r7, #0
	bl ovy315_219d5b4
	ldr r0, [r7, #4]
	ldr r0, [r0]
	bl sub_0201736C
	str r0, [sp, #0xc]
	ldr r0, _0219D008 ; =0x04001050
	ldr r1, _0219D00C ; =0xFFFF1FFF
	strh r4, [r0]
	sub r0, #0x50
	ldr r2, [r0]
	and r1, r2
	str r1, [r0]
	ldr r2, [r0]
	lsl r1, r5, #0xf
	orr r1, r2
	str r1, [r0]
	bl sub_02046D78
	add r0, r4, #0
	bl GXS_SetGraphicsMode
	bl sub_02046D58
_0219CF38:
	mov r0, #0x2c
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219D010 ; =0x0219DAC4
	add r6, r0, r1
	ldr r5, [r0, r1]
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
	cmp r4, #1
	blo _0219CF38
	mov r0, #0x10
	mov r1, #1
	mov r5, #1
	bl sub_02046D84
	ldr r0, [sp, #0xc]
	ldrh r4, [r7]
	ldrb r0, [r0, #0x1d]
	cmp r0, #1
	beq _0219CF86
	mov r5, #0
_0219CF86:
	ldr r0, _0219D014 ; =0x0000011F
	add r1, r4, #0
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	add r1, r5, #0
	mov r2, #4
	mov r3, #0
	add r6, r0, #0
	str r4, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #3
	mov r2, #4
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #4
	bl sub_02044F90
	add r0, r7, #0
	bl ovy315_219d654
	mov r0, #3
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldrh r1, [r7]
	mov r0, #0
	bl sub_02042BA8
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0219CFFC
	mov r0, #6
	bl sub_02005EA0
_0219CFFC:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D004: .word 0x0219D1CD
_0219D008: .word 0x04001050
_0219D00C: .word 0xFFFF1FFF
_0219D010: .word 0x0219DAC4
_0219D014: .word 0x0000011F
	thumb_func_end ovy315_219ce80

	thumb_func_start ovy315_219d018
ovy315_219d018: ; 0x0219D018
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219D088 ; =0x0219DAC4
	str r0, [sp]
	add r5, r3, #0
	mov r4, #0
	mov r7, #0x2c
_0219D024:
	add r0, r4, #0
	mul r0, r7
	ldr r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #1
	blo _0219D024
	ldr r2, _0219D08C ; =0x04001050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _0219D090 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r5, #0
	bl ovy315_219d634
	add r0, r5, #0
	bl ovy315_219d454
	add r0, r5, #0
	bl sub_0219D230
	ldr r0, [r5, #0x14]
	bl GFL_TCBRemove
	ldr r0, [r5, #0x10]
	bl sub_02021C44
	ldr r0, [r5, #0x10]
	bl sub_02021A18
	ldr r0, [r5, #0xc]
	bl sub_02022DA8
	ldr r0, [r5, #8]
	bl ovy315_219d888
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x83
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D088: .word 0x0219DAC4
_0219D08C: .word 0x04001050
_0219D090: .word 0xFFFF1FFF
	thumb_func_end ovy315_219d018

	thumb_func_start ovy315_219d094
ovy315_219d094: ; 0x0219D094
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #6
	bhi _0219D19C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D0AE: ; jump table
	.short _0219D0BC - _0219D0AE - 2 ; case 0
	.short _0219D10A - _0219D0AE - 2 ; case 1
	.short _0219D120 - _0219D0AE - 2 ; case 2
	.short _0219D12E - _0219D0AE - 2 ; case 3
	.short _0219D14A - _0219D0AE - 2 ; case 4
	.short _0219D18A - _0219D0AE - 2 ; case 5
	.short _0219D196 - _0219D0AE - 2 ; case 6
_0219D0BC:
	add r0, r5, #0
	mov r6, #1
	bl sub_0219D4CC
	cmp r0, #0
	bne _0219D0CA
	mov r6, #0
_0219D0CA:
	cmp r6, #0
	beq _0219D0F4
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0219D0F4
	bl sub_02005EC0
	cmp r0, #0
	beq _0219D0E2
	mov r6, #0
	b _0219D0F4
_0219D0E2:
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _0219D1C4 ; =0x00000524
	ldr r1, _0219D1C8 ; =0x0000FFFF
	bl sub_02005DF4
_0219D0F4:
	cmp r6, #0
	beq _0219D19C
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
_0219D106:
	str r0, [r4]
	b _0219D19C
_0219D10A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D19C
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219D11C
	b _0219D146
_0219D11C:
	mov r0, #2
	b _0219D106
_0219D120:
	add r0, r5, #0
	bl ovy315_219d714
	cmp r0, #0
	beq _0219D19C
	mov r0, #3
	b _0219D106
_0219D12E:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219D19C
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #6
	bl sub_02005E68
_0219D146:
	mov r0, #4
	b _0219D106
_0219D14A:
	mov r6, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219D160
	add r0, r6, #0
	bl sub_0203D564
	mov r6, #1
	b _0219D174
_0219D160:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219D174
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_0219D174:
	cmp r6, #0
	beq _0219D19C
	mov r0, #5
	str r0, [r4]
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	b _0219D19C
_0219D18A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D19C
	mov r0, #6
	b _0219D106
_0219D196:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D19C:
	ldr r0, [r5, #0x10]
	bl sub_02021A3C
	add r0, r5, #0
	bl ovy315_219d480
	ldr r0, [r4]
	cmp r0, #1
	blt _0219D1B8
	cmp r0, #5
	bgt _0219D1B8
	add r0, r5, #0
	bl ovy315_219d6a0
_0219D1B8:
	ldr r0, [r5, #8]
	bl ovy315_219d8e4
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D1C4: .word 0x00000524
_0219D1C8: .word 0x0000FFFF
	thumb_func_end ovy315_219d094
_0219D1CC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy315_219d1d0
ovy315_219d1d0: ; 0x0219D1D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xc7
	bl sub_0204AA30
	mov r1, #0x1e
	lsl r1, r1, #4
	str r1, [sp]
	ldrh r1, [r5]
	mov r6, #0
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #2
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #1
	bl sub_02044F90
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy315_219d1d0

	thumb_func_start sub_0219D230
sub_0219D230: ; 0x0219D230
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D230

	thumb_func_start ovy315_219d234
ovy315_219d234: ; 0x0219D234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_0201736C
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_02008DDC
	bl sub_02008A84
	mov r1, #0
	str r0, [sp, #0xc]
	str r1, [r5, #0x18]
	add r4, r1, #0
_0219D25C:
	lsl r0, r1, #2
	add r0, r5, r0
	str r4, [r0, #0x1c]
	str r4, [r0, #0x30]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #5
	blo _0219D25C
	mov r0, #1
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	mov r0, #0x1e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0x17
	add r3, r4, #0
	bl sub_0204B0F0
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x18]
	mov r6, #0
_0219D29E:
	lsl r0, r4, #3
	ldr r1, _0219D44C ; =0x0219DAF0
	add r0, r4, r0
	add r3, r1, r0
	lsl r1, r4, #2
	add r7, r5, r1
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #6]
	str r1, [sp, #8]
	ldr r1, _0219D44C ; =0x0219DAF0
	ldrb r0, [r1, r0]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	str r0, [r7, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r6, #0
	bl BmpWin_BitmapFill
	ldr r0, [r7, #0x1c]
	bl BmpWin_FlushChar
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0219D29E
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219D30A
_0219D2E6:
	ldr r0, _0219D450 ; =0x0219DAB0
	lsl r1, r6, #2
	ldr r2, _0219D450 ; =0x0219DAB0
	add r7, r0, r1
	add r4, r5, r1
	ldrb r1, [r2, r1]
	ldr r0, [r4, #0x1c]
	bl sub_020484FC
	ldrb r1, [r7, #1]
	ldr r0, [r4, #0x1c]
	bl sub_02048500
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _0219D2E6
_0219D30A:
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #4
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	mov r7, #0
	bl GFL_CopyVarForText
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_02022888
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x18]
	mov r1, #6
	bl sub_0204898C
	ldr r1, [r5, #0xc]
	mov r2, #0
	add r6, r0, #0
	bl sub_02022888
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x28]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	cmp r0, r4
	blo _0219D3B4
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bne _0219D3B4
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r7, r0, #0x10
_0219D3B4:
	ldr r0, [r5, #0x28]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x18]
	mov r1, #5
	bl sub_0204898C
	ldr r1, [r5, #0xc]
	mov r2, #0
	add r4, r0, #0
	bl sub_02022888
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r4, #1
_0219D41A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x1c]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0219D41A
	add r0, r5, #0
	bl ovy315_219d480
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D44C: .word 0x0219DAF0
_0219D450: .word 0x0219DAB0
	thumb_func_end ovy315_219d234

	thumb_func_start ovy315_219d454
ovy315_219d454: ; 0x0219D454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D45A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0219D468
	bl sub_02048210
_0219D468:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0219D45A
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0219D47C
	bl GFL_MsgDataFree
_0219D47C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy315_219d454

	thumb_func_start ovy315_219d480
ovy315_219d480: ; 0x0219D480
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
_0219D486:
	lsl r0, r4, #2
	add r5, r7, r0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0219D4BE
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D4BE
	ldr r6, [r5, #0x1c]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #1
	str r0, [r5, #0x30]
_0219D4BE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0219D486
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy315_219d480

	thumb_func_start sub_0219D4CC
sub_0219D4CC: ; 0x0219D4CC
	mov r2, #0
_0219D4CE:
	lsl r1, r2, #2
	add r1, r0, r1
	ldr r1, [r1, #0x30]
	cmp r1, #0
	bne _0219D4DC
	mov r0, #0
	bx lr
_0219D4DC:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #5
	blo _0219D4CE
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D4CC

	thumb_func_start ovy315_219d4ec
ovy315_219d4ec: ; 0x0219D4EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, _0219D5A4 ; =0x000003DB
	add r6, r0, #0
	str r4, [sp]
	ldrh r0, [r6]
	ldr r3, _0219D5A8 ; =0x0219DC40
	mov r1, #0x20
	mov r2, #1
	bl GFL_HeapAllocate
	add r7, r0, #0
	mov r5, #0
	mov r3, #0x1e
	ldr r0, _0219D5AC ; =0x00001D29
	strh r5, [r7]
	strh r0, [r7, #2]
	ldr r0, _0219D5B0 ; =0x00003210
	add r1, r7, #0
	strh r0, [r7, #4]
	mov r0, #2
	mov r2, #0x20
	lsl r3, r3, #4
	strh r5, [r7, #6]
	bl sub_02045320
	add r0, r7, #0
	bl GFL_HeapFree
	ldr r0, [r6, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #3
	mov r7, #3
	bl BmpWin_BitmapFill
	ldr r0, [r6, #0x20]
	bl BmpWin_FlushChar
	add r4, #0x11
	str r4, [sp]
	ldrh r0, [r6]
	ldr r3, _0219D5A8 ; =0x0219DC40
	lsl r1, r7, #9
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [r6, #0x20]
	bl sub_020484F0
	mov r1, #0x1e
	lsl r1, r1, #0xb
	orr r0, r1
	lsl r0, r0, #0x10
	mov r3, #0
	lsr r0, r0, #0x10
	add r1, r5, #0
_0219D560:
	add r2, r1, #0
_0219D562:
	add r2, r2, #1
	lsl r6, r5, #1
	add r5, r5, #1
	lsl r2, r2, #0x18
	lsl r5, r5, #0x10
	lsr r2, r2, #0x18
	lsr r5, r5, #0x10
	strh r0, [r4, r6]
	cmp r2, #0x20
	blo _0219D562
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #0x18
	blo _0219D560
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x18
	mov r0, #2
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl sub_020454AC
	mov r0, #2
	bl sub_02044F90
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D5A4: .word 0x000003DB
_0219D5A8: .word 0x0219DC40
_0219D5AC: .word 0x00001D29
_0219D5B0: .word 0x00003210
	thumb_func_end ovy315_219d4ec

	thumb_func_start ovy315_219d5b4
ovy315_219d5b4: ; 0x0219D5B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xc7
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #0
	add r4, r0, #0
	bl sub_0204BBB8
	str r0, [r5, #0x4c]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x48]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #8
	mov r2, #9
	bl sub_0204BDE0
	str r0, [r5, #0x50]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r0, [r5, #8]
	bl sub_0219D8F8
	ldr r1, _0219D630 ; =0x0219DAA8
	str r1, [sp]
	str r6, [sp, #4]
	ldrh r1, [r5]
	str r1, [sp, #8]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	ldr r3, [r5, #0x50]
	bl sub_0204C040
	str r0, [r5, #0x54]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl sub_0204C520
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D630: .word 0x0219DAA8
	thumb_func_end ovy315_219d5b4

	thumb_func_start ovy315_219d634
ovy315_219d634: ; 0x0219D634
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0204C108
	ldr r0, [r4, #0x50]
	bl sub_0204BE64
	ldr r0, [r4, #0x48]
	bl sub_0204B98C
	ldr r0, [r4, #0x4c]
	bl sub_0204BCD0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy315_219d634

	thumb_func_start ovy315_219d654
ovy315_219d654: ; 0x0219D654
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0219D696
	mov r0, #1
	mov r1, #3
	mov r2, #0x40
	bl sub_02044CFC
	mov r0, #2
	mov r1, #3
	mov r2, #0x40
	mov r4, #2
	bl sub_02044CFC
	ldr r2, _0219D69C ; =0x0219DAA8
	mov r6, #0
	ldrsh r1, [r2, r6]
	add r0, sp, #0
	strh r1, [r0]
	ldrsh r1, [r2, r4]
	mov r2, #0
	sub r1, #0x40
	strh r1, [r0, #2]
	ldr r0, [r5, #0x54]
	add r1, sp, #0
	bl sub_0204C140
	add r5, #0x44
	strb r6, [r5]
_0219D696:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219D69C: .word 0x0219DAA8
	thumb_func_end ovy315_219d654

	thumb_func_start ovy315_219d6a0
ovy315_219d6a0: ; 0x0219D6A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0219D710
	mov r0, #1
	bl sub_02044E74
	add r4, r0, #0
	beq _0219D710
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D704
	cmp r4, #2
	blt _0219D6C6
	mov r4, #2
_0219D6C6:
	mov r0, #1
	mov r1, #5
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #2
	mov r1, #5
	add r2, r4, #0
	mov r6, #2
	bl sub_02045E1C
	ldr r0, [r5, #0x54]
	add r1, sp, #0
	mov r2, #0
	mov r7, #0
	bl sub_0204C178
	add r1, sp, #0
	lsl r0, r4, #0x10
	ldrsh r2, [r1, r6]
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, [r5, #0x54]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add r5, #0x44
	strb r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219D704:
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	add r5, #0x44
	sub r0, r0, #1
	strb r0, [r5]
_0219D710:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy315_219d6a0

	thumb_func_start ovy315_219d714
ovy315_219d714: ; 0x0219D714
	push {r4, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219D722
	mov r0, #1
	pop {r4, pc}
_0219D722:
	mov r0, #1
	mov r4, #1
	bl sub_02044E74
	cmp r0, #0
	beq _0219D730
	mov r4, #0
_0219D730:
	mov r0, #0
	cmp r4, #0
	beq _0219D738
	mov r0, #1
_0219D738:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy315_219d714

	thumb_func_start ovy315_219d73c
ovy315_219d73c: ; 0x0219D73C
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _0219D7C8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219D7CC ; =0xFFFFCFFD
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
	ldr r2, _0219D7D0 ; =0x0000CFEF
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
	ldr r1, _0219D7D4 ; =0xBFFF0000
	ldr r0, _0219D7D8 ; =0x04000580
	str r1, [r0]
	ldr r5, _0219D7DC ; =0x0219DB7C
_0219D7AA:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219D7AA
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_0219D7C8: .word 0x04000008
_0219D7CC: .word 0xFFFFCFFD
_0219D7D0: .word 0x0000CFEF
_0219D7D4: .word 0xBFFF0000
_0219D7D8: .word 0x04000580
_0219D7DC: .word 0x0219DB7C
	thumb_func_end ovy315_219d73c

	thumb_func_start ovy315_219d7e0
ovy315_219d7e0: ; 0x0219D7E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x73
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _0219D870 ; =0x0219DC58
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219D874 ; =0x04000050
	ldr r0, _0219D878 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219D87C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219D880 ; =0x0219DB9C
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
	bl ovy315_219d918
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy315_219d9bc
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy315_219da2c
	ldr r0, _0219D884 ; =ovy315_219d904
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D870: .word 0x0219DC58
_0219D874: .word 0x04000050
_0219D878: .word 0x04001050
_0219D87C: .word 0xFFFF1FFF
_0219D880: .word 0x0219DB9C
_0219D884: .word ovy315_219d904
	thumb_func_end ovy315_219d7e0

	thumb_func_start ovy315_219d888
ovy315_219d888: ; 0x0219D888
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy315_219da98
	add r0, r4, #4
	bl ovy315_219d9fc
	add r0, r4, #0
	bl ovy315_219d978
	bl sub_020232D8
	ldr r5, _0219D8D8 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219D8DC ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219D8E0 ; =0xFFFF1FFF
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
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_0219D8D8: .word 0x04000050
_0219D8DC: .word 0x04001050
_0219D8E0: .word 0xFFFF1FFF
	thumb_func_end ovy315_219d888

	thumb_func_start ovy315_219d8e4
ovy315_219d8e4: ; 0x0219D8E4
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219DA18
	add r0, r4, #0
	bl sub_0219D9B0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy315_219d8e4

	thumb_func_start sub_0219D8F8
sub_0219D8F8: ; 0x0219D8F8
	ldr r3, _0219D900 ; =sub_0219DA28
	add r0, r0, #4
	bx r3
	nop
_0219D900: .word sub_0219DA28
	thumb_func_end sub_0219D8F8

	thumb_func_start ovy315_219d904
ovy315_219d904: ; 0x0219D904
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219D9B4
	add r0, r4, #4
	bl sub_0219DA20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy315_219d904

	thumb_func_start ovy315_219d918
ovy315_219d918: ; 0x0219D918
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
	ldr r0, _0219D970 ; =0x0219DB50
	bl sub_02044710
	ldr r7, _0219D974 ; =0x0219DBCC
_0219D93A:
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
	blo _0219D93A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D970: .word 0x0219DB50
_0219D974: .word 0x0219DBCC
	thumb_func_end ovy315_219d918

	thumb_func_start ovy315_219d978
ovy315_219d978: ; 0x0219D978
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219D9AC ; =0x0219DBCC
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219D982:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #2
	blo _0219D982
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D9AC: .word 0x0219DBCC
	thumb_func_end ovy315_219d978

	thumb_func_start sub_0219D9B0
sub_0219D9B0: ; 0x0219D9B0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D9B0

	thumb_func_start sub_0219D9B4
sub_0219D9B4: ; 0x0219D9B4
	ldr r3, _0219D9B8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219D9B8: .word sub_02045A5C
	thumb_func_end sub_0219D9B4

	thumb_func_start ovy315_219d9bc
ovy315_219d9bc: ; 0x0219D9BC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219D9F8 ; =0x0219DB60
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
_0219D9F8: .word 0x0219DB60
	thumb_func_end ovy315_219d9bc

	thumb_func_start ovy315_219d9fc
ovy315_219d9fc: ; 0x0219D9FC
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
	thumb_func_end ovy315_219d9fc

	thumb_func_start sub_0219DA18
sub_0219DA18: ; 0x0219DA18
	ldr r3, _0219DA1C ; =sub_0204B794
	bx r3
	.align 2, 0
_0219DA1C: .word sub_0204B794
	thumb_func_end sub_0219DA18

	thumb_func_start sub_0219DA20
sub_0219DA20: ; 0x0219DA20
	ldr r3, _0219DA24 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219DA24: .word sub_0204B7C8
	thumb_func_end sub_0219DA20

	thumb_func_start sub_0219DA28
sub_0219DA28: ; 0x0219DA28
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219DA28

	thumb_func_start ovy315_219da2c
ovy315_219da2c: ; 0x0219DA2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	ldr r0, _0219DA80 ; =ovy315_219d73c
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
	ldr r0, _0219DA84 ; =0x0219DB38
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219DA88 ; =0x0219DB2C
	ldr r3, _0219DA8C ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp, #0x14]
	ldr r0, _0219DA90 ; =0x0219DB44
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _0219DA94 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DA80: .word ovy315_219d73c
_0219DA84: .word 0x0219DB38
_0219DA88: .word 0x0219DB2C
_0219DA8C: .word 0x02094A3C
_0219DA90: .word 0x0219DB44
_0219DA94: .word 0x00001555
	thumb_func_end ovy315_219da2c

	thumb_func_start ovy315_219da98
ovy315_219da98: ; 0x0219DA98
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy315_219da98
_0219DAA8:
	.byte 0x12, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x07, 0x04, 0x00, 0x00, 0x06, 0x08, 0x00, 0x00
	.byte 0x06, 0x11, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x10, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x01, 0x01, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x18, 0x01, 0x01, 0x0F, 0x00
	.byte 0x00, 0x00, 0x02, 0x07, 0x04, 0x14, 0x03, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x07, 0x08, 0x14, 0x09
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x06, 0x11, 0x14, 0x05, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0x95, 0xD0, 0x19, 0x02, 0x19, 0xD0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00
	.byte 0xCD, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0x02, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x04, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7A, 0x65, 0x6E, 0x6B, 0x6F, 0x6B, 0x75, 0x5F, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x61, 0x77
	.byte 0x61, 0x72, 0x64, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x7A, 0x65, 0x6E, 0x6B, 0x6F, 0x6B, 0x75, 0x5F
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x61, 0x77, 0x61, 0x72, 0x64, 0x5F, 0x67, 0x72, 0x61, 0x70
	.byte 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219DAA8
