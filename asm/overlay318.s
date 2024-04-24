    .include "macros/function.inc"
	.include "overlay318.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy318_219ce80
ovy318_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r4, r0, #0
	ldr r0, [r7]
	bl sub_02016AD8
	add r5, r0, #0
	mov r0, #1
	mov r2, #3
	str r0, [sp, #0xc]
	mov r0, #1
	mov r1, #0xa8
	lsl r2, r2, #0x10
	mov r6, #0xa8
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x58
	mov r2, #0xa8
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x58
	blx MI_CpuFill8
	strh r6, [r4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x48]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x50]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x4b
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x4c]
	ldrh r0, [r4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x54]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy318_219d324
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0201736C
	ldrb r0, [r0, #0x1d]
	ldrh r5, [r4]
	cmp r0, #1
	beq _0219CF04
	mov r0, #0
	str r0, [sp, #0xc]
_0219CF04:
	ldr r0, _0219CF94 ; =0x0000011F
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	ldr r1, [sp, #0xc]
	mov r2, #4
	mov r3, #0
	add r6, r0, #0
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #3
	mov r2, #4
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #4
	bl GFL_BGSysLoadScr
	ldrh r0, [r7, #4]
	ldrh r1, [r4]
	bl ovy318_219d0c0
	ldr r0, [r4, #0x54]
	str r0, [sp]
	ldrh r0, [r4]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	add r0, #8
	bl ovy318_219d16c
	add r0, r4, #0
	ldrh r1, [r4]
	add r0, #0x2c
	bl ovy318_219d210
	mov r0, #3
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF94: .word 0x0000011F
	thumb_func_end ovy318_219ce80

	thumb_func_start ovy318_219cf98
ovy318_219cf98: ; 0x0219CF98
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x2c
	bl ovy318_219d23c
	add r0, r5, #0
	add r0, #8
	bl ovy318_219d1f4
	ldr r0, [r5, #0x54]
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x4c]
	bl GFL_MsgDataFree
	ldr r0, [r5, #0x50]
	bl sub_02021C44
	ldr r0, [r5, #0x50]
	bl sub_02021A18
	ldr r0, [r5, #0x48]
	bl sub_02022DA8
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r0, [r5, #4]
	bl ovy318_219d3c4
	ldrh r5, [r5]
	add r0, r4, #0
	bl sub_0203AB10
	add r0, r5, #0
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy318_219cf98

	thumb_func_start ovy318_219cff0
ovy318_219cff0: ; 0x0219CFF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	mov r6, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219D010
	add r0, r6, #0
	bl sub_0203D564
	mov r6, #1
	b _0219D024
_0219D010:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219D024
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_0219D024:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0219D0AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D036: ; jump table
	.short _0219D042 - _0219D036 - 2 ; case 0
	.short _0219D054 - _0219D036 - 2 ; case 1
	.short _0219D070 - _0219D036 - 2 ; case 2
	.short _0219D084 - _0219D036 - 2 ; case 3
	.short _0219D09A - _0219D036 - 2 ; case 4
	.short _0219D0A6 - _0219D036 - 2 ; case 5
_0219D042:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
_0219D050:
	str r0, [r4]
	b _0219D0AC
_0219D054:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D0AC
	ldrh r2, [r7, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldrh r3, [r5]
	add r0, #0x2c
	add r1, #8
	bl ovy318_219d264
	mov r0, #2
	b _0219D050
_0219D070:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #8
	bl ovy318_219d2e4
	cmp r0, #1
	bne _0219D0AC
	mov r0, #3
	b _0219D050
_0219D084:
	cmp r6, #0
	beq _0219D0AC
	mov r0, #4
	str r0, [r4]
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	b _0219D0AC
_0219D09A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D0AC
	mov r0, #5
	b _0219D050
_0219D0A6:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D0AC:
	ldr r0, [r5, #0x50]
	bl sub_02021A3C
	ldr r0, [r5, #4]
	bl ovy318_219d418
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy318_219cff0

	thumb_func_start ovy318_219d0c0
ovy318_219d0c0: ; 0x0219D0C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0219D168 ; =0x00000129
	add r5, r1, #0
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	cmp r6, #0
	bne _0219D0DC
	mov r1, #0
	mov r7, #2
	mov r6, #4
	b _0219D0E2
_0219D0DC:
	mov r1, #1
	mov r7, #3
	mov r6, #5
_0219D0E2:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #1
	bl GFL_BGSysLoadScr
	mov r0, #0x17
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x20
	str r1, [sp]
	mov r3, #0x1e
	add r4, r0, #0
	mov r1, #5
	mov r2, #4
	lsl r3, r3, #4
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #5
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #5
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	str r5, [sp]
	bl sub_02024D00
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D168: .word 0x00000129
	thumb_func_end ovy318_219d0c0

	thumb_func_start ovy318_219d16c
ovy318_219d16c: ; 0x0219D16C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #0xf
	strh r0, [r5, #0x20]
	ldr r0, [sp, #0x20]
	str r4, [r5, #4]
	str r0, [r5, #0x18]
	mov r0, #2
	str r6, [r5]
	str r7, [r5, #0x10]
	add r1, sp, #0x20
	ldrh r1, [r1, #4]
	lsl r0, r0, #8
	bl GFL_StrBufCreate
	str r0, [r5, #0x1c]
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x14]
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r0, [r5, #8]
	strb r1, [r5, #0xc]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r4, [r5, #0x14]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy318_219d16c

	thumb_func_start ovy318_219d1f4
ovy318_219d1f4: ; 0x0219D1F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02048210
	ldr r0, [r4, #0x1c]
	bl GFL_StrBufFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy318_219d1f4

	thumb_func_start ovy318_219d210
ovy318_219d210: ; 0x0219D210
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	add r3, r4, #0
	bl sub_0202E7A4
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy318_219d210

	thumb_func_start ovy318_219d23c
ovy318_219d23c: ; 0x0219D23C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0219D24A
	bl sub_020223CC
_0219D24A:
	ldr r0, [r4, #0x18]
	bl sub_0202E818
	ldr r0, [r4, #4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy318_219d23c

	thumb_func_start ovy318_219d264
ovy318_219d264: ; 0x0219D264
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	add r6, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	cmp r0, #0
	beq _0219D282
	bl sub_020223CC
_0219D282:
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x14]
	bl BmpWin_FlushChar
	bl sub_02017BCC
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrh r0, [r4, #0x20]
	mov r6, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x1c]
	bl sub_02022268
	str r0, [r5]
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	ldr r0, [r4, #0x14]
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x10
	mov r1, #6
	bl sub_0202E678
	strh r6, [r5, #0xc]
	strh r6, [r5, #0xe]
	str r6, [r5, #8]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy318_219d264

	thumb_func_start ovy318_219d2e4
ovy318_219d2e4: ; 0x0219D2E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	bl sub_0203A7F4
	ldr r1, [r4]
	cmp r1, #0
	beq _0219D31E
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _0219D31E
	ldr r0, [r4, #0x18]
	bl sub_0202E8D8
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x10
	bl sub_0202E68C
	cmp r0, #1
	bne _0219D31E
	ldr r0, [r4]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D31E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy318_219d2e4

	thumb_func_start ovy318_219d324
ovy318_219d324: ; 0x0219D324
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219D3A8 ; =0x000001C5
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219D3AC ; =0x0219D640
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219D3B0 ; =0x04000050
	ldr r0, _0219D3B4 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219D3B8 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219D3BC ; =0x0219D588
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy318_219d440
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy318_219d4e4
	ldr r0, _0219D3C0 ; =ovy318_219d42c
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D3A8: .word 0x000001C5
_0219D3AC: .word 0x0219D640
_0219D3B0: .word 0x04000050
_0219D3B4: .word 0x04001050
_0219D3B8: .word 0xFFFF1FFF
_0219D3BC: .word 0x0219D588
_0219D3C0: .word ovy318_219d42c
	thumb_func_end ovy318_219d324

	thumb_func_start ovy318_219d3c4
ovy318_219d3c4: ; 0x0219D3C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy318_219d524
	add r0, r4, #0
	bl ovy318_219d4a0
	bl sub_020232D8
	ldr r5, _0219D40C ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219D410 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219D414 ; =0xFFFF1FFF
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
_0219D40C: .word 0x04000050
_0219D410: .word 0x04001050
_0219D414: .word 0xFFFF1FFF
	thumb_func_end ovy318_219d3c4

	thumb_func_start ovy318_219d418
ovy318_219d418: ; 0x0219D418
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219D540
	add r0, r4, #0
	bl sub_0219D4D8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy318_219d418

	thumb_func_start ovy318_219d42c
ovy318_219d42c: ; 0x0219D42C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219D4DC
	add r0, r4, #4
	bl sub_0219D548
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy318_219d42c

	thumb_func_start ovy318_219d440
ovy318_219d440: ; 0x0219D440
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl BmpWin_InitAllocator
	ldr r0, _0219D498 ; =0x0219D55C
	bl GFL_BGSysSetLCDConfig
	ldr r7, _0219D49C ; =0x0219D5B8
_0219D462:
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
	cmp r4, #3
	blo _0219D462
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D498: .word 0x0219D55C
_0219D49C: .word 0x0219D5B8
	thumb_func_end ovy318_219d440

	thumb_func_start ovy318_219d4a0
ovy318_219d4a0: ; 0x0219D4A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219D4D4 ; =0x0219D5B8
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219D4AA:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #3
	blo _0219D4AA
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D4D4: .word 0x0219D5B8
	thumb_func_end ovy318_219d4a0

	thumb_func_start sub_0219D4D8
sub_0219D4D8: ; 0x0219D4D8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D4D8

	thumb_func_start sub_0219D4DC
sub_0219D4DC: ; 0x0219D4DC
	ldr r3, _0219D4E0 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219D4E0: .word sub_02045A5C
	thumb_func_end sub_0219D4DC

	thumb_func_start ovy318_219d4e4
ovy318_219d4e4: ; 0x0219D4E4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219D520 ; =0x0219D56C
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D520: .word 0x0219D56C
	thumb_func_end ovy318_219d4e4

	thumb_func_start ovy318_219d524
ovy318_219d524: ; 0x0219D524
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
	thumb_func_end ovy318_219d524

	thumb_func_start sub_0219D540
sub_0219D540: ; 0x0219D540
	ldr r3, _0219D544 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219D544: .word sub_0204B794
	thumb_func_end sub_0219D540

	thumb_func_start sub_0219D548
sub_0219D548: ; 0x0219D548
	ldr r3, _0219D54C ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219D54C: .word sub_0204B7C8
	thumb_func_end sub_0219D548
_0219D550:
	.byte 0x81, 0xCE, 0x19, 0x02, 0xF1, 0xCF, 0x19, 0x02, 0x99, 0xCF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x02, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x61, 0x72, 0x69, 0x6E, 0x65, 0x5F, 0x74, 0x75, 0x62, 0x65, 0x5F, 0x62, 0x6F, 0x61, 0x72
	.byte 0x64, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219D550
