    .include "macros/function.inc"
	.include "overlay176.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy176_219ad20
ovy176_219ad20: ; 0x0219AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #1
	add r6, r2, #0
	mov r1, #0x3b
	lsl r2, r0, #0x12
	bl GFL_HeapCreateChild
	add r0, r4, #0
	ldr r4, _0219AED8 ; =0x000004A4
	mov r2, #0x3b
	add r1, r4, #0
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	sub r0, #0x18
	str r6, [r5, r0]
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0x3b
	bl ovy176_219b3e0
	add r0, r5, #0
	mov r1, #0x3b
	bl ovy176_219b020
	add r0, r5, #0
	add r0, #0x94
	mov r1, #0x3b
	bl ovy176_219b0c8
	sub r4, #0x18
	ldr r0, [r5, r4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AD78
	bl sub_02016B20
_0219AD78:
	add r0, r5, #0
	add r0, #0x9c
	str r0, [sp]
	add r0, r5, #0
	mov r7, #0x3b
	ldr r2, _0219AEDC ; =0x0219C294
	add r0, #0xc0
	mov r1, #2
	mov r3, #2
	str r7, [sp, #4]
	bl ovy176_219bc24
	mov r0, #0x1e
	str r0, [sp]
	mov r4, #5
	str r4, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xac
	mov r1, #5
	mov r2, #1
	mov r3, #0x12
	str r7, [sp, #0xc]
	mov r6, #1
	bl ovy176_219b488
	add r2, r5, #0
	add r2, #0x94
	add r0, r5, #0
	ldr r2, [r2]
	add r0, #0xac
	lsl r2, r2, #0x10
	ldr r0, [r0]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #6
	bl sub_02024E80
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #5
	mov r3, #0
	bl ovy176_219b5bc
	mov r0, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r4, _0219AEE0 ; =0x0000046C
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	add r0, r5, r4
	mov r1, #7
	mov r2, #6
	mov r3, #3
	str r7, [sp, #0x14]
	bl ovy176_219b4f8
	add r1, r5, #0
	add r0, r5, r4
	add r1, #0x9c
	mov r2, #0xa
	bl ovy176_219b620
	lsl r6, r6, #0xc
	mov r0, #7
	mov r1, #3
	add r2, r6, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #6
	add r2, r6, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	mov r0, #7
	mov r1, #0xc
	mov r2, #0x28
	bl sub_02045EA0
	add r0, r5, #0
	add r0, #0xfc
	add r1, r7, #0
	bl ovy176_219bf5c
	add r4, #0x20
	ldr r0, [r5, r4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AE4C
	bl sub_02016AD8
	bl sub_02017934
	b _0219AE50
_0219AE4C:
	bl sub_020072FC
_0219AE50:
	bl sub_0200AFBC
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r3, #0x3b
	mov r7, #0x3b
	bl ovy176_219c0f4
	add r0, r5, #0
	bl sub_0219B0B4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x9c
	bl sub_0219B47C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x9c
	bl sub_0219B480
	mov r2, #0
	str r2, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #2
	add r1, r6, #0
	mov r3, #0xe
	str r7, [sp, #0x10]
	bl sub_0219A89C
	ldr r1, _0219AEE4 ; =0x00000468
	str r0, [r5, r1]
	add r1, #0x24
	ldr r0, [r5, r1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219AEB0
	cmp r0, #1
	beq _0219AEB2
	cmp r0, #2
	beq _0219AEB8
	b _0219AEC0
_0219AEB0:
	b _0219AEB8
_0219AEB2:
	add r0, r5, #0
	ldr r1, _0219AEE8 ; =ovy176_219bae0
	b _0219AEBC
_0219AEB8:
	ldr r1, _0219AEEC ; =ovy176_219b970
	add r0, r5, #0
_0219AEBC:
	bl sub_0219B6C8
_0219AEC0:
	bl sub_02005D8C
	ldr r0, _0219AEF0 ; =0x0000048C
	mov r1, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199B8C
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AED8: .word 0x000004A4
_0219AEDC: .word 0x0219C294
_0219AEE0: .word 0x0000046C
_0219AEE4: .word 0x00000468
_0219AEE8: .word ovy176_219bae0
_0219AEEC: .word ovy176_219b970
_0219AEF0: .word 0x0000048C
	thumb_func_end ovy176_219ad20

	thumb_func_start ovy176_219aef4
ovy176_219aef4: ; 0x0219AEF4
	push {r4, r5, r6, lr}
	ldr r6, _0219AF54 ; =0x00000468
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl sub_0219A980
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy176_219c178
	add r0, r4, #0
	add r0, #0xfc
	bl sub_0219BF7C
	add r0, r4, #0
	add r0, #0xc0
	bl ovy176_219bdb4
	add r0, r6, #4
	add r0, r4, r0
	bl ovy176_219b568
	add r0, r4, #0
	add r0, #0xac
	bl ovy176_219b568
	add r0, r4, #0
	add r0, #0x94
	bl ovy176_219b220
	add r0, r4, #0
	bl ovy176_219b090
	add r4, #0x9c
	add r0, r4, #0
	bl ovy176_219b448
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x3b
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219AF54: .word 0x00000468
	thumb_func_end ovy176_219aef4

	thumb_func_start ovy176_219af58
ovy176_219af58: ; 0x0219AF58
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #6
	bhi _0219B008
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219AF70: ; jump table
	.short _0219AF7E - _0219AF70 - 2 ; case 0
	.short _0219AF84 - _0219AF70 - 2 ; case 1
	.short _0219AF94 - _0219AF70 - 2 ; case 2
	.short _0219AFBE - _0219AF70 - 2 ; case 3
	.short _0219AFE8 - _0219AF70 - 2 ; case 4
	.short _0219AFF8 - _0219AF70 - 2 ; case 5
	.short _0219B004 - _0219AF70 - 2 ; case 6
_0219AF7E:
	mov r0, #1
_0219AF80:
	str r0, [r4]
	b _0219B008
_0219AF84:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #2
	b _0219AF80
_0219AF94:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B008
	add r0, r5, #0
	mov r1, #0x1f
	bl sub_0219B0AC
	mov r1, #1
	bl sub_0204C520
	add r0, r5, #0
	add r0, #0xfc
	bl ovy176_219bfbc
	ldr r0, _0219B014 ; =0x0000052A
	ldr r1, _0219B018 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #3
	b _0219AF80
_0219AFBE:
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy176_219c1b0
	add r0, r5, #0
	add r0, #0xfc
	bl ovy176_219bf88
	ldr r6, _0219B01C ; =0x00000484
	add r0, r5, #0
	sub r2, r6, #4
	ldr r2, [r5, r2]
	add r1, r5, r6
	blx r2
	add r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219B008
	mov r0, #4
	b _0219AF80
_0219AFE8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #5
	b _0219AF80
_0219AFF8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B008
	mov r0, #6
	b _0219AF80
_0219B004:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219B008:
	add r0, r5, #0
	bl ovy176_219bbec
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0219B014: .word 0x0000052A
_0219B018: .word 0x0000FFFF
_0219B01C: .word 0x00000484
	thumb_func_end ovy176_219af58

	thumb_func_start ovy176_219b020
ovy176_219b020: ; 0x0219B020
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x94
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r1, _0219B07C ; =0x04000050
	ldr r0, _0219B080 ; =0x04001050
	strh r6, [r1]
	strh r6, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219B084 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	ldr r6, _0219B088 ; =0x0219C2EC
	add r0, r6, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy176_219b274
	ldr r0, _0219B08C ; =0x0219B0BD
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r5, #0x90
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B07C: .word 0x04000050
_0219B080: .word 0x04001050
_0219B084: .word 0xFFFF1FFF
_0219B088: .word 0x0219C2EC
_0219B08C: .word 0x0219B0BD
	thumb_func_end ovy176_219b020

	thumb_func_start ovy176_219b090
ovy176_219b090: ; 0x0219B090
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy176_219b380
	pop {r4, pc}
	thumb_func_end ovy176_219b090

	thumb_func_start sub_0219B0A4
sub_0219B0A4: ; 0x0219B0A4
	ldr r3, _0219B0A8 ; =sub_0219B3C4
	bx r3
	.align 2, 0
_0219B0A8: .word sub_0219B3C4
	thumb_func_end sub_0219B0A4

	thumb_func_start sub_0219B0AC
sub_0219B0AC: ; 0x0219B0AC
	ldr r3, _0219B0B0 ; =sub_0219B3D4
	bx r3
	.align 2, 0
_0219B0B0: .word sub_0219B3D4
	thumb_func_end sub_0219B0AC

	thumb_func_start sub_0219B0B4
sub_0219B0B4: ; 0x0219B0B4
	ldr r3, _0219B0B8 ; =sub_0219B3DC
	bx r3
	.align 2, 0
_0219B0B8: .word sub_0219B3DC
	thumb_func_end sub_0219B0B4
_0219B0BC:
	.byte 0x01, 0x4B, 0x08, 0x1C
	.byte 0x18, 0x47, 0xC0, 0x46, 0xCD, 0xB3, 0x19, 0x02

	thumb_func_start ovy176_219b0c8
ovy176_219b0c8: ; 0x0219B0C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl GFL_BGSysCreate
	add r0, r6, #0
	bl BmpWin_InitAllocator
	ldr r0, _0219B20C ; =0x0219C284
	bl GFL_BGSysSetLCDConfig
	ldr r7, _0219B210 ; =0x0219C2AC
	mov r4, #0
_0219B0E6:
	ldr r1, _0219B214 ; =0x0219C31C
	lsl r3, r4, #5
	add r1, r1, r3
	lsl r2, r4, #2
	ldr r5, [r7, r2]
	ldr r3, _0219B218 ; =0x0219C2CC
	lsl r0, r5, #0x18
	ldr r2, [r3, r2]
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
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
	blt _0219B0E6
	mov r0, #0x5d
	add r1, r6, #0
	bl GFL_ArcSysCreateFileHandle
	mov r5, #0
	str r5, [sp]
	str r6, [sp, #4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	mov r7, #4
	bl GFL_G2DIOLoadArcNCLRDefault
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x2c
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #2
	add r3, r5, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #5
	add r1, r5, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_02045118
	str r5, [sp]
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #5
	add r3, r5, #0
	str r6, [sp, #4]
	bl GFL_BGSysLoadArcNCGRDynamic
	ldr r1, [sp, #0xc]
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r0, _0219B21C ; =0x0219B26D
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	bl GFL_VBlankTCBAdd
	ldr r1, [sp, #0xc]
	str r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B20C: .word 0x0219C284
_0219B210: .word 0x0219C2AC
_0219B214: .word 0x0219C31C
_0219B218: .word 0x0219C2CC
_0219B21C: .word 0x0219B26D
	thumb_func_end ovy176_219b0c8

	thumb_func_start ovy176_219b220
ovy176_219b220: ; 0x0219B220
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_TCBRemove
	ldr r2, [r4]
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
	ldr r4, _0219B268 ; =0x0219C2AC
_0219B24A:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blt _0219B24A
	bl sub_020480A8
	bl sub_02044528
	pop {r3, r4, r5, pc}
	nop
_0219B268: .word 0x0219C2AC
	thumb_func_end ovy176_219b220
_0219B26C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x5D, 0x5A, 0x04, 0x02

	thumb_func_start ovy176_219b274
ovy176_219b274: ; 0x0219B274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x90
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _0219B37C ; =0x02093F08
	add r1, r4, #0
	add r2, r7, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r7, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0x5d
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	str r7, [sp]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	add r4, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #4]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #9
	add r3, r7, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
_0219B2F8:
	lsl r0, r6, #2
	add r4, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl Oam_CreateSprite
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_0204C468
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C520
	add r6, r6, #1
	cmp r6, #0x1e
	blt _0219B2F8
	mov r1, #0x81
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x68
	strh r1, [r0, #2]
	mov r1, #0xf
	strh r1, [r0, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl Oam_CreateSprite
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #2
	bl sub_0204C468
	add r5, #0x8c
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C520
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219B37C: .word 0x02093F08
	thumb_func_end ovy176_219b274

	thumb_func_start ovy176_219b380
ovy176_219b380: ; 0x0219B380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B386:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0219B394
	bl sub_0204C108
_0219B394:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219B386
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x90
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy176_219b380

	thumb_func_start sub_0219B3C4
sub_0219B3C4: ; 0x0219B3C4
	ldr r3, _0219B3C8 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B3C8: .word sub_0204B794
	thumb_func_end sub_0219B3C4
_0219B3CC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start sub_0219B3D4
sub_0219B3D4: ; 0x0219B3D4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219B3D4

	thumb_func_start sub_0219B3DC
sub_0219B3DC: ; 0x0219B3DC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B3DC

	thumb_func_start ovy176_219b3e0
ovy176_219b3e0: ; 0x0219B3E0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	bl sub_020232D0
	str r5, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4]
	add r0, r5, #0
	bl sub_02021998
	str r0, [r4, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3a
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #4]
	add r0, r5, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0xc]
	mov r4, #0x20
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy176_219b3e0

	thumb_func_start ovy176_219b448
ovy176_219b448: ; 0x0219B448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #4]
	bl GFL_MsgDataFree
	ldr r0, [r4, #8]
	bl sub_02021A18
	ldr r0, [r4]
	bl sub_02022DA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy176_219b448

	thumb_func_start sub_0219B470
sub_0219B470: ; 0x0219B470
	ldr r0, [r0, #8]
	ldr r3, _0219B478 ; =sub_02021A3C
	bx r3
	nop
_0219B478: .word sub_02021A3C
	thumb_func_end sub_0219B470

	thumb_func_start sub_0219B47C
sub_0219B47C: ; 0x0219B47C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B47C

	thumb_func_start sub_0219B480
sub_0219B480: ; 0x0219B480
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219B480

	thumb_func_start sub_0219B484
sub_0219B484: ; 0x0219B484
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219B484

	thumb_func_start ovy176_219b488
ovy176_219b488: ; 0x0219B488
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	mov r0, #0xf
	add r4, sp, #0x28
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	add r1, r7, #0
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl BmpWin_CreateDynamic
	str r0, [r5]
	ldrh r1, [r4, #0xc]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0
	str r0, [r5, #4]
	strb r1, [r5, #8]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy176_219b488

	thumb_func_start ovy176_219b4f8
ovy176_219b4f8: ; 0x0219B4F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	add r4, sp, #0x28
	ldrh r0, [r4, #0xc]
	add r1, r7, #0
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl BmpWin_CreateDynamic
	str r0, [r5]
	ldrh r1, [r4, #0x14]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0
	str r0, [r5, #4]
	strb r1, [r5, #8]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy176_219b4f8

	thumb_func_start ovy176_219b568
ovy176_219b568: ; 0x0219B568
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r4]
	bl BmpWin_Free
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy176_219b568

	thumb_func_start ovy176_219b584
ovy176_219b584: ; 0x0219B584
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #8]
	ldr r4, [r1, #8]
	cmp r0, #0
	beq _0219B5AC
	ldr r0, [r5, #4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B5AC
	ldr r0, [r5, #4]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #8]
_0219B5AC:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0219B5B6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219B5B6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy176_219b584

	thumb_func_start ovy176_219b5bc
ovy176_219b5bc: ; 0x0219B5BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0219B484
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0219B480
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0219B47C
	add r5, r0, #0
	ldr r0, [r4]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [sp, #8]
	ldr r2, [r4, #0xc]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	add r5, sp, #0x28
	mov r3, #0
	ldrsh r3, [r5, r3]
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy176_219b5bc

	thumb_func_start ovy176_219b620
ovy176_219b620: ; 0x0219B620
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0219B484
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0219B480
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219B47C
	add r7, r0, #0
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	bl sub_020484D8
	lsl r0, r0, #0x12
	lsr r6, r0, #0x10
	ldr r0, [r5]
	bl sub_020484DC
	lsl r0, r0, #0x12
	lsr r4, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x10]
	bl sub_02021C44
	ldr r0, [r5, #4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, _0219B6C4 ; =0x00003DC1
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219B6C4: .word 0x00003DC1
	thumb_func_end ovy176_219b620

	thumb_func_start sub_0219B6C8
sub_0219B6C8: ; 0x0219B6C8
	mov r2, #0x12
	lsl r2, r2, #6
	str r1, [r0, r2]
	mov r3, #0
	add r1, r2, #4
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B6C8

	thumb_func_start sub_0219B6D8
sub_0219B6D8: ; 0x0219B6D8
	ldr r1, _0219B6E0 ; =0x00000488
	mov r2, #1
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_0219B6E0: .word 0x00000488
	thumb_func_end sub_0219B6D8

	thumb_func_start ovy176_219b6e4
ovy176_219b6e4: ; 0x0219B6E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0xe
	bhs _0219B742
	ldr r6, _0219B94C ; =0x00000468
	ldr r0, [r4, r6]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219B742
	add r0, r6, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	ldr r1, _0219B950 ; =ovy176_219bae0
	add r0, r4, #0
	bl sub_0219B6C8
	ldr r0, [r4, r6]
	bl sub_0219AA24
	ldr r0, [r4, r6]
	mov r1, #0
	mov r5, #0
	bl sub_0219AA68
	mov r0, #0
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #5
	mov r3, #0
	str r5, [sp]
	bl ovy176_219b5bc
	add r4, #0xc0
	add r0, r4, #0
	bl ovy176_219bee4
	pop {r3, r4, r5, r6, r7, pc}
_0219B742:
	ldrh r0, [r5]
	cmp r0, #0xf
	bhi _0219B7F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B754: ; jump table
	.short _0219B774 - _0219B754 - 2 ; case 0
	.short _0219B784 - _0219B754 - 2 ; case 1
	.short _0219B7A6 - _0219B754 - 2 ; case 2
	.short _0219B7B8 - _0219B754 - 2 ; case 3
	.short _0219B7D0 - _0219B754 - 2 ; case 4
	.short _0219B7E2 - _0219B754 - 2 ; case 5
	.short _0219B82A - _0219B754 - 2 ; case 6
	.short _0219B916 - _0219B754 - 2 ; case 7
	.short _0219B83E - _0219B754 - 2 ; case 8
	.short _0219B864 - _0219B754 - 2 ; case 9
	.short _0219B876 - _0219B754 - 2 ; case 10
	.short _0219B888 - _0219B754 - 2 ; case 11
	.short _0219B89A - _0219B754 - 2 ; case 12
	.short _0219B8B6 - _0219B754 - 2 ; case 13
	.short _0219B8D4 - _0219B754 - 2 ; case 14
	.short _0219B8F8 - _0219B754 - 2 ; case 15
_0219B774:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	mov r0, #1
_0219B780:
	strh r0, [r5]
	b _0219B916
_0219B784:
	ldr r6, _0219B954 ; =0x0000048C
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199910
	cmp r0, #0
	beq _0219B7F2
	ldr r0, _0219B958 ; =0x00000654
	bl GFL_SndSEPlay
	sub r6, #0x24
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_0219AA60
	mov r0, #2
	b _0219B780
_0219B7A6:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199A14
	cmp r0, #0
	beq _0219B7F2
	mov r0, #3
	b _0219B780
_0219B7B8:
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #4
	str r3, [sp]
	mov r6, #4
	bl ovy176_219b5bc
	strh r6, [r5]
	b _0219B916
_0219B7D0:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199A6C
	cmp r0, #0
	beq _0219B7F2
	mov r0, #5
	b _0219B780
_0219B7E2:
	ldr r6, _0219B954 ; =0x0000048C
	ldr r1, [r4, r6]
	ldr r0, [r1, #4]
	ldr r1, [r1]
	bl sub_02199D28
	cmp r0, #0
	bne _0219B7F4
_0219B7F2:
	b _0219B916
_0219B7F4:
	ldr r1, [r4, r6]
	ldr r0, [r1, #4]
	ldr r1, [r1, #0x10]
	bl sub_02199D3C
	ldr r0, [r4, r6]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219B826
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200F6F4
	add r7, r0, #0
	ldr r0, [r4, r6]
	ldr r0, [r0, #0x10]
	add r0, #0xc
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
_0219B826:
	mov r0, #6
	b _0219B780
_0219B82A:
	ldr r0, _0219B954 ; =0x0000048C
	mov r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219B916
	mov r0, #8
	b _0219B780
_0219B83E:
	mov r2, #0x4a
	lsl r2, r2, #4
	mov r0, #1
	str r0, [r4, r2]
	add r0, r2, #0
	add r1, r2, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	sub r1, #8
	sub r2, #0xc
	ldr r0, [r0, #4]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_02199CD8
	cmp r0, #0
	beq _0219B916
	mov r0, #9
	b _0219B780
_0219B864:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199CEC
	cmp r0, #0
	beq _0219B916
	mov r0, #0xa
	b _0219B780
_0219B876:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199D00
	cmp r0, #0
	beq _0219B916
	mov r0, #0xb
	b _0219B780
_0219B888:
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199D14
	cmp r0, #0
	beq _0219B916
	mov r0, #0xc
	b _0219B780
_0219B89A:
	ldr r6, _0219B954 ; =0x0000048C
	mov r1, #1
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199B8C
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199BE4
	cmp r0, #0
	beq _0219B916
	mov r0, #0xd
	b _0219B780
_0219B8B6:
	ldr r6, _0219B954 ; =0x0000048C
	mov r1, #1
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219B916
	sub r6, #0x24
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_0219AA60
	mov r0, #0xe
	b _0219B780
_0219B8D4:
	ldr r0, _0219B95C ; =0x00000486
	ldrh r0, [r4, r0]
	cmp r0, #0x3c
	blo _0219B916
	ldr r0, _0219B960 ; =0x0000064B
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #2
	str r3, [sp]
	bl ovy176_219b5bc
	mov r0, #0xf
	b _0219B780
_0219B8F8:
	ldr r0, _0219B964 ; =0x0000049C
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x1e
	blo _0219B948
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, _0219B968 ; =ovy176_219ba9c
	add r0, r4, #0
	bl sub_0219B6C8
	pop {r3, r4, r5, r6, r7, pc}
_0219B916:
	ldrh r0, [r5]
	cmp r0, #3
	blo _0219B92C
	cmp r0, #0xe
	bhi _0219B92C
	ldr r0, _0219B95C ; =0x00000486
	ldrh r1, [r4, r0]
	cmp r1, #0x3c
	bhi _0219B92C
	add r1, r1, #1
	strh r1, [r4, r0]
_0219B92C:
	ldrh r0, [r5]
	cmp r0, #0xc
	bhs _0219B948
	ldr r0, _0219B954 ; =0x0000048C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219B948
	ldr r1, _0219B96C ; =ovy176_219bba0
	add r0, r4, #0
	bl sub_0219B6C8
_0219B948:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B94C: .word 0x00000468
_0219B950: .word ovy176_219bae0
_0219B954: .word 0x0000048C
_0219B958: .word 0x00000654
_0219B95C: .word 0x00000486
_0219B960: .word 0x0000064B
_0219B964: .word 0x0000049C
_0219B968: .word ovy176_219ba9c
_0219B96C: .word ovy176_219bba0
	thumb_func_end ovy176_219b6e4

	thumb_func_start ovy176_219b970
ovy176_219b970: ; 0x0219B970
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r5, r0, #0
	ldrh r0, [r6]
	cmp r0, #0
	beq _0219B98A
	cmp r0, #1
	beq _0219B9B0
	cmp r0, #2
	beq _0219BA52
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219B98A:
	ldr r4, _0219BA84 ; =0x00000494
	mov r0, #2
	str r0, [r5, r4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc
	str r1, [r5, r0]
	bl OS_GetTick
	ldr r1, _0219BA88 ; =0x000082EA
	lsl r0, r0, #6
	blx sub_0208D868
	sub r1, r4, #4
	str r0, [r5, r1]
	mov r0, #1
	add sp, #4
	strh r0, [r6]
	pop {r3, r4, r5, r6, pc}
_0219B9B0:
	add r0, r5, #0
	add r0, #0xc0
	bl ovy176_219bde4
	add r0, r5, #0
	add r0, #0xc0
	bl sub_0219BEBC
	cmp r0, #0
	beq _0219B9CE
	ldr r0, _0219BA8C ; =0x00000468
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0219AA60
_0219B9CE:
	ldr r4, _0219BA84 ; =0x00000494
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, r4
	bl sub_0219BECC
	cmp r0, #0
	beq _0219BA00
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219B9EA
	cmp r0, #1
	beq _0219B9F0
	b _0219BA00
_0219B9EA:
	mov r0, #2
	strh r0, [r6]
	b _0219BA00
_0219B9F0:
	sub r4, #8
	ldr r0, [r5, r4]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, _0219BA90 ; =ovy176_219ba9c
	add r0, r5, #0
	bl sub_0219B6C8
_0219BA00:
	bl OS_GetTick
	ldr r1, _0219BA88 ; =0x000082EA
	lsl r0, r0, #6
	blx sub_0208D868
	mov r1, #0x49
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	sub r2, r0, r2
	add r0, r1, #0
	add r0, #8
	sub r1, #0x28
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_0219AA14
	cmp r0, #0
	beq _0219BA30
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #0
	bl sub_0219BEB8
_0219BA30:
	ldr r4, _0219BA8C ; =0x00000468
	ldr r0, [r5, r4]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BA80
	add r4, #0x24
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	ldr r1, _0219BA94 ; =ovy176_219bb4c
	add r0, r5, #0
	bl sub_0219B6C8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219BA52:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #3
	mov r3, #0
	bl ovy176_219b5bc
	ldr r4, _0219BA8C ; =0x00000468
	mov r1, #1
	ldr r0, [r5, r4]
	bl sub_0219AA68
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0219AA60
	ldr r1, _0219BA98 ; =ovy176_219b6e4
	add r0, r5, #0
	bl sub_0219B6C8
_0219BA80:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219BA84: .word 0x00000494
_0219BA88: .word 0x000082EA
_0219BA8C: .word 0x00000468
_0219BA90: .word ovy176_219ba9c
_0219BA94: .word ovy176_219bb4c
_0219BA98: .word ovy176_219b6e4
	thumb_func_end ovy176_219b970

	thumb_func_start ovy176_219ba9c
ovy176_219ba9c: ; 0x0219BA9C
	push {r3, r4, r5, lr}
	ldrh r2, [r1]
	cmp r2, #0
	beq _0219BAAA
	cmp r2, #1
	beq _0219BAD4
	pop {r3, r4, r5, pc}
_0219BAAA:
	ldr r3, _0219BADC ; =0x0000048C
	ldr r2, [r0, r3]
	ldr r2, [r2, #0xc]
	cmp r2, #1
	bne _0219BACE
	sub r2, r3, #6
	ldrh r5, [r0, r2]
	add r2, r5, #0
	add r4, r2, #1
	sub r2, r3, #6
	strh r4, [r0, r2]
	cmp r5, #0xa
	bls _0219BAD8
	mov r4, #0
	strh r4, [r0, r2]
	mov r0, #1
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_0219BACE:
	mov r0, #1
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_0219BAD4:
	bl sub_0219B6D8
_0219BAD8:
	pop {r3, r4, r5, pc}
	nop
_0219BADC: .word 0x0000048C
	thumb_func_end ovy176_219ba9c

	thumb_func_start ovy176_219bae0
ovy176_219bae0: ; 0x0219BAE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _0219BAFA
	cmp r1, #1
	beq _0219BB24
	cmp r1, #2
	beq _0219BB3A
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219BAFA:
	add r1, r5, #0
	mov r3, #0
	add r0, #0xac
	add r1, #0x9c
	mov r2, #5
	str r3, [sp]
	bl ovy176_219b5bc
	ldr r6, _0219BB44 ; =0x0000048C
	ldr r0, [r5, r6]
	ldr r0, [r0, #4]
	bl sub_02199B84
	ldr r0, [r5, r6]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	mov r0, #1
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0219BB24:
	ldr r0, _0219BB44 ; =0x0000048C
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_021999A8
	cmp r0, #0
	beq _0219BB40
	mov r0, #2
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0219BB3A:
	ldr r1, _0219BB48 ; =ovy176_219b970
	bl sub_0219B6C8
_0219BB40:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219BB44: .word 0x0000048C
_0219BB48: .word ovy176_219b970
	thumb_func_end ovy176_219bae0

	thumb_func_start ovy176_219bb4c
ovy176_219bb4c: ; 0x0219BB4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _0219BB62
	cmp r1, #1
	beq _0219BB7A
	cmp r1, #2
	beq _0219BB8E
	pop {r3, r4, r5, pc}
_0219BB62:
	mov r0, #1
	strh r0, [r4]
	ldr r4, _0219BB9C ; =0x0000048C
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	bl sub_02199B84
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	pop {r3, r4, r5, pc}
_0219BB7A:
	ldr r0, _0219BB9C ; =0x0000048C
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_021999A8
	cmp r0, #0
	beq _0219BB9A
	mov r0, #2
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219BB8E:
	ldr r1, _0219BB9C ; =0x0000048C
	mov r2, #2
	ldr r1, [r5, r1]
	str r2, [r1, #0xc]
	bl sub_0219B6D8
_0219BB9A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219BB9C: .word 0x0000048C
	thumb_func_end ovy176_219bb4c

	thumb_func_start ovy176_219bba0
ovy176_219bba0: ; 0x0219BBA0
	push {r3, r4, r5, lr}
	ldr r5, _0219BBE0 ; =0x0000048C
	add r4, r0, #0
	ldr r0, [r4, r5]
	ldr r0, [r0, #4]
	bl sub_02199C40
	ldr r0, [r4, r5]
	ldr r0, [r0, #4]
	bl sub_02199ABC
	cmp r0, #0
	beq _0219BBD4
	ldr r0, [r4, r5]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_02199B8C
	ldr r0, [r4, r5]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, _0219BBE4 ; =ovy176_219ba9c
	add r0, r4, #0
	bl sub_0219B6C8
	pop {r3, r4, r5, pc}
_0219BBD4:
	ldr r1, _0219BBE8 ; =ovy176_219b970
	add r0, r4, #0
	bl sub_0219B6C8
	pop {r3, r4, r5, pc}
	nop
_0219BBE0: .word 0x0000048C
_0219BBE4: .word ovy176_219ba9c
_0219BBE8: .word ovy176_219b970
	thumb_func_end ovy176_219bba0

	thumb_func_start ovy176_219bbec
ovy176_219bbec: ; 0x0219BBEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x9c
	bl sub_0219B470
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xac
	add r1, #0x9c
	bl ovy176_219b584
	ldr r5, _0219BC20 ; =0x0000046C
	add r1, r4, #0
	add r0, r4, r5
	add r1, #0x9c
	bl ovy176_219b584
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0219A9A4
	add r0, r4, #0
	bl sub_0219B0A4
	pop {r3, r4, r5, pc}
	nop
_0219BC20: .word 0x0000046C
	thumb_func_end ovy176_219bbec

	thumb_func_start ovy176_219bc24
ovy176_219bc24: ; 0x0219BC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x40]
	str r2, [sp, #0x10]
	str r1, [sp, #0x40]
	mov r1, #0
	mov r2, #0x3c
	add r5, r0, #0
	add r6, r3, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x10]
	strh r6, [r5, #0x2c]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0xc]
	strh r0, [r5, #0x2e]
	mov r0, #1
	str r0, [r5, #0x38]
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	ble _0219BC8C
	mov r2, #0xc
_0219BC54:
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	mul r1, r2
	add r1, r0, r1
	ldrh r6, [r1, #4]
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r3, r6, #3
	add r3, r3, #1
	strb r3, [r0, #0x14]
	ldrh r3, [r1, #8]
	add r4, r4, #1
	add r3, r6, r3
	lsl r3, r3, #3
	sub r3, r3, #1
	strb r3, [r0, #0x15]
	ldrh r3, [r1, #2]
	ldrh r1, [r1, #6]
	lsl r6, r3, #3
	add r1, r3, r1
	add r6, r6, #1
	lsl r1, r1, #3
	strb r6, [r0, #0x16]
	sub r1, r1, #1
	strb r1, [r0, #0x17]
	ldrh r0, [r5, #0x2c]
	cmp r4, r0
	blt _0219BC54
_0219BC8C:
	lsl r0, r4, #2
	mov r1, #0xff
	add r0, r5, r0
	strb r1, [r0, #0x14]
	add r3, sp, #0x40
	add r0, r5, #0
	ldrh r3, [r3, #4]
	ldr r1, _0219BDB0 ; =0x0219BF55
	add r0, #0x14
	add r2, r5, #0
	bl ButtonSystem_Create
	str r0, [r5]
	mov r0, #0
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	ble _0219BDA8
_0219BCB0:
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	mul r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	add r4, r1, r0
	ldr r0, [sp, #0x14]
	ldrh r1, [r4, #2]
	lsl r0, r0, #2
	add r6, r5, r0
	ldrh r0, [r4, #8]
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r4, #0xa]
	add r1, r1, #4
	add r2, r2, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	sub r3, #8
	str r0, [sp, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BmpWin_CreateDynamic
	str r0, [r6, #4]
	bl BmpWin_GetBitmap
	mov r1, #4
	bl BmpWin_BitmapFill
	ldr r7, [r6, #4]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl BmpWin_FlushMap
	add r0, r7, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0x40]
	bl sub_0219B484
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldrh r1, [r2, r1]
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #4
	bl sub_020232E8
	ldr r0, [sp, #0x40]
	bl sub_0219B47C
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	bl sub_0219B47C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020229B0
	str r0, [sp, #0x20]
	ldr r0, [r6, #4]
	bl BmpWin_GetBitmap
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	bl sub_0219B47C
	ldrh r1, [r4, #6]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	sub r1, #8
	str r0, [sp]
	lsl r1, r1, #2
	lsr r2, r2, #1
	sub r1, r1, r2
	ldrh r2, [r4, #8]
	lsl r1, r1, #0x10
	lsr r3, r3, #1
	sub r2, r2, #2
	lsl r2, r2, #2
	sub r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r7, #0
	bl sub_02021CFC
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r6, #4]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x14]
	ldrh r1, [r5, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0219BCB0
_0219BDA8:
	bl sub_020232D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BDB0: .word 0x0219BF55
	thumb_func_end ovy176_219bc24

	thumb_func_start ovy176_219bdb4
ovy176_219bdb4: ; 0x0219BDB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x2c]
	mov r4, #0
	cmp r0, #0
	ble _0219BDD2
_0219BDC0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl BmpWin_Free
	ldrh r0, [r5, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	blt _0219BDC0
_0219BDD2:
	ldr r0, [r5]
	bl sub_020504DC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x3c
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy176_219bdb4

	thumb_func_start ovy176_219bde4
ovy176_219bde4: ; 0x0219BDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5, #0x34]
	cmp r0, #0
	beq _0219BDF8
	cmp r0, #1
	beq _0219BE1C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219BDF8:
	ldr r0, [r5]
	mov r4, #0
	strh r4, [r5, #0x32]
	bl sub_020504F0
	cmp r0, #0
	beq _0219BEAE
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219BEAE
	ldr r0, _0219BEB4 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #1
	add sp, #0x10
	strh r4, [r5, #0x36]
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0219BE1C:
	ldrh r0, [r5, #0x36]
	lsr r0, r0, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0x30]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_020484D4
	ldrh r2, [r5, #0x30]
	add r4, r0, #0
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, [r5, #0x28]
	add r0, r0, r1
	ldrh r3, [r0, #4]
	ldrh r1, [r0, #2]
	lsl r3, r3, #0x18
	lsr r7, r3, #0x18
	ldrh r3, [r0, #6]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	lsr r0, r0, #0x18
	cmp r2, #0
	beq _0219BE6E
	cmp r2, #1
	beq _0219BE76
	b _0219BE7C
_0219BE6E:
	mov r2, #0xc
	str r2, [sp, #8]
	mov r6, #0xb
	b _0219BE7C
_0219BE76:
	mov r2, #9
	str r2, [sp, #8]
	mov r6, #4
_0219BE7C:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	str r0, [sp]
	bne _0219BE88
	str r6, [sp, #4]
	b _0219BE8C
_0219BE88:
	ldr r0, [sp, #8]
	str r0, [sp, #4]
_0219BE8C:
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0204566C
	add r0, r4, #0
	bl GFL_BGSysLoadScr
	ldrh r0, [r5, #0x36]
	add r0, r0, #1
	strh r0, [r5, #0x36]
	ldrh r0, [r5, #0x36]
	cmp r0, #0x10
	blo _0219BEAE
	mov r0, #1
	strh r0, [r5, #0x32]
	mov r0, #0
	strh r0, [r5, #0x34]
_0219BEAE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BEB4: .word 0x00000548
	thumb_func_end ovy176_219bde4

	thumb_func_start sub_0219BEB8
sub_0219BEB8: ; 0x0219BEB8
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end sub_0219BEB8

	thumb_func_start sub_0219BEBC
sub_0219BEBC: ; 0x0219BEBC
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _0219BEC6
	mov r0, #1
	bx lr
_0219BEC6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BEBC

	thumb_func_start sub_0219BECC
sub_0219BECC: ; 0x0219BECC
	ldrh r2, [r0, #0x32]
	cmp r2, #0
	beq _0219BEDE
	cmp r1, #0
	beq _0219BEDA
	ldrh r0, [r0, #0x30]
	str r0, [r1]
_0219BEDA:
	mov r0, #1
	bx lr
_0219BEDE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BECC

	thumb_func_start ovy176_219bee4
ovy176_219bee4: ; 0x0219BEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #0x2c]
	mov r4, #0
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x32]
	cmp r0, #0
	ble _0219BF4E
_0219BEF6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_020484D4
	add r6, r0, #0
	mov r0, #0xc
	ldr r1, [r5, #0x28]
	mul r0, r4
	add r0, r1, r0
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov ip, r2
	ldrh r2, [r0, #6]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r3, r2, #0x18
	lsr r0, r0, #0x18
	cmp r4, #0
	beq _0219BF2E
	cmp r4, #1
	beq _0219BF32
	b _0219BF34
_0219BF2E:
	mov r7, #0xb
	b _0219BF34
_0219BF32:
	mov r7, #4
_0219BF34:
	str r0, [sp]
	add r0, r6, #0
	mov r2, ip
	str r7, [sp, #4]
	bl sub_0204566C
	add r0, r6, #0
	bl GFL_BGSysLoadScr
	ldrh r0, [r5, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	blt _0219BEF6
_0219BF4E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy176_219bee4
_0219BF54:
	.byte 0x00, 0x29, 0x00, 0xD1, 0x10, 0x86, 0x70, 0x47

	thumb_func_start ovy176_219bf5c
ovy176_219bf5c: ; 0x0219BF5C
	push {r3, lr}
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	mov r0, #4
	mov r1, #3
	mov r2, #0x58
	bl sub_02045E1C
	mov r0, #7
	mov r1, #3
	mov r2, #0x58
	bl sub_02045E1C
	pop {r3, pc}
	thumb_func_end ovy176_219bf5c

	thumb_func_start sub_0219BF7C
sub_0219BF7C: ; 0x0219BF7C
	ldr r3, _0219BF84 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x1c
	bx r3
	.align 2, 0
_0219BF84: .word MI_CpuFill8
	thumb_func_end sub_0219BF7C

	thumb_func_start ovy176_219bf88
ovy176_219bf88: ; 0x0219BF88
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0219BFB8
	bl sub_0219C250
	cmp r0, #0
	beq _0219BF9E
	mov r0, #0
	str r0, [r4, #0x18]
_0219BF9E:
	ldr r2, [r4]
	mov r5, #0x58
	mov r0, #4
	mov r1, #3
	sub r2, r5, r2
	bl sub_02045E1C
	ldr r2, [r4]
	mov r0, #7
	mov r1, #3
	sub r2, r5, r2
	bl sub_02045E1C
_0219BFB8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy176_219bf88

	thumb_func_start ovy176_219bfbc
ovy176_219bfbc: ; 0x0219BFBC
	push {r3, lr}
	mov r1, #1
	str r1, [r0, #0x18]
	mov r1, #0
	mov r2, #0x58
	mov r3, #0x78
	bl ovy176_219c200
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy176_219bfbc

	thumb_func_start ovy176_219bfd0
ovy176_219bfd0: ; 0x0219BFD0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	blx MI_CpuFill8
	mov r1, #0xd
	str r4, [r5, #0x18]
	cmp r6, #0
	bne _0219BFEC
	mov r1, #0xc
_0219BFEC:
	ldr r0, [r5, #0x18]
	bl Oam_SetOamAnimIndex
	add r0, r5, #0
	bl ovy176_219c0b8
	ldr r1, [r5, #8]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r5, #0xc]
	mov r2, #1
	strh r1, [r0, #2]
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	mov r4, #1
	bl Oam_SetSpritePosData
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0204C124
	lsl r0, r4, #0xd
	bl sub_02005784
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_0204C4D4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy176_219bfd0

	thumb_func_start sub_0219C028
sub_0219C028: ; 0x0219C028
	ldr r3, _0219C030 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x1c
	bx r3
	.align 2, 0
_0219C030: .word MI_CpuFill8
	thumb_func_end sub_0219C028

	thumb_func_start ovy176_219c034
ovy176_219c034: ; 0x0219C034
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, [r5, #8]
	ldr r0, [r5]
	sub r4, r0, r6
	bpl _0219C044
	neg r1, r4
	b _0219C046
_0219C044:
	add r1, r4, #0
_0219C046:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	cmp r4, #0
	bge _0219C056
	neg r4, r4
_0219C056:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	mul r0, r4
	blx sub_0208D868
	mul r0, r7
	add r1, r6, r0
	add r0, sp, #0
	strh r1, [r0]
	ldr r7, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r4, r0, r7
	bpl _0219C074
	neg r1, r4
	b _0219C076
_0219C074:
	add r1, r4, #0
_0219C076:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	cmp r4, #0
	bge _0219C086
	neg r4, r4
_0219C086:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	mul r0, r4
	blx sub_0208D868
	mul r0, r6
	add r1, r7, r0
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r1, [r5, #0x10]
	add r0, r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bls _0219C0B4
	add r0, r5, #0
	bl ovy176_219c0b8
_0219C0B4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy176_219c034

	thumb_func_start ovy176_219c0b8
ovy176_219c0b8: ; 0x0219C0B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	bl sub_02005784
	str r0, [r5, #8]
	mov r0, #0xd0
	str r0, [r5, #0xc]
	mov r0, #0xb8
	mov r4, #0xb8
	bl sub_02005784
	ldr r1, [r5, #8]
	add r4, #0xb0
	add r0, r1, r0
	sub r0, #0x5c
	str r0, [r5]
	mov r0, #0xb8
	sub r0, #0xc8
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_02005784
	add r0, #0xf0
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy176_219c0b8

	thumb_func_start ovy176_219c0f4
ovy176_219c0f4: ; 0x0219C0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x35
	lsl r4, r4, #4
	str r1, [sp]
	add r5, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r6, r0, #0
	str r3, [sp, #4]
	blx MI_CpuFill8
	cmp r5, #0
	bne _0219C118
	mov r1, #0x1e
	sub r0, r4, #2
	strh r1, [r6, r0]
	b _0219C122
_0219C118:
	add r0, r5, #0
	bl sub_0200AFC8
	sub r1, r4, #2
	strh r0, [r6, r1]
_0219C122:
	ldr r0, _0219C174 ; =0x0000034E
	mov r4, #0
	ldrh r1, [r6, r0]
	cmp r1, #0
	ble _0219C170
	add r0, r6, r0
	str r0, [sp, #8]
_0219C130:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0219B0AC
	add r7, r0, #0
	cmp r5, #0
	bne _0219C148
	mov r0, #2
	bl sub_02005784
	add r2, r0, #0
	b _0219C158
_0219C148:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B014
	mov r2, #1
	cmp r0, #1
	beq _0219C158
	mov r2, #0
_0219C158:
	mov r0, #0x1c
	mul r0, r4
	ldr r3, [sp, #4]
	add r0, r6, r0
	add r1, r7, #0
	bl ovy176_219bfd0
	ldr r0, [sp, #8]
	add r4, r4, #1
	ldrh r0, [r0]
	cmp r4, r0
	blt _0219C130
_0219C170:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C174: .word 0x0000034E
	thumb_func_end ovy176_219c0f4

	thumb_func_start ovy176_219c178
ovy176_219c178: ; 0x0219C178
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0219C1AC ; =0x0000034E
	mov r4, #0
	ldrh r1, [r5, r0]
	cmp r1, #0
	ble _0219C19C
	mov r7, #0x1c
	add r6, r5, r0
_0219C18A:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	bl sub_0219C028
	ldrh r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219C18A
_0219C19C:
	mov r2, #0x35
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C1AC: .word 0x0000034E
	thumb_func_end ovy176_219c178

	thumb_func_start ovy176_219c1b0
ovy176_219c1b0: ; 0x0219C1B0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xd3
	add r5, r0, #0
	lsl r6, r6, #2
	ldrh r0, [r5, r6]
	mov r4, #0
	cmp r0, #0
	ble _0219C1D4
	mov r7, #0x1c
_0219C1C2:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	bl ovy176_219c034
	ldrh r0, [r5, r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219C1C2
_0219C1D4:
	mov r1, #0xd2
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r0, r2, #1
	str r0, [r5, r1]
	cmp r2, #0x1e
	bls _0219C1FC
	mov r0, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldrh r2, [r5, r0]
	add r0, r1, #6
	ldrh r0, [r5, r0]
	cmp r2, r0
	bhs _0219C1FC
	add r0, r1, #4
	ldrh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #4
	strh r2, [r5, r0]
_0219C1FC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy176_219c1b0

	thumb_func_start ovy176_219c200
ovy176_219c200: ; 0x0219C200
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	str r1, [r5]
	str r1, [r5, #4]
	str r2, [r5, #8]
	str r4, [r5, #0x14]
	beq _0219C248
	sub r0, r2, r1
	cmp r0, #0
	ble _0219C228
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C236
_0219C228:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C236:
	blx sub_0208DA4C
	add r1, r4, #0
	blx sub_0208D65C
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0219C248:
	sub r0, r4, #2
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy176_219c200

	thumb_func_start sub_0219C250
sub_0219C250: ; 0x0219C250
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	sub r1, r1, #1
	cmp r2, r1
	bge _0219C26E
	ldr r1, [r0, #0xc]
	add r2, r2, #1
	str r2, [r0, #0x10]
	mul r2, r1
	ldr r3, [r0, #4]
	asr r1, r2, #0xc
	add r1, r3, r1
	str r1, [r0]
	mov r0, #0
	bx lr
_0219C26E:
	ldr r1, [r0, #8]
	str r1, [r0]
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C250
_0219C278:
	.byte 0x21, 0xAD, 0x19, 0x02, 0x59, 0xAF, 0x19, 0x02
	.byte 0xF5, 0xAE, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x03, 0x00, 0x02, 0x00, 0x1A, 0x00, 0x05, 0x00, 0x0B, 0x00
	.byte 0x07, 0x00, 0x03, 0x00, 0x0E, 0x00, 0x1A, 0x00, 0x05, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x06, 0x05
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219C278
