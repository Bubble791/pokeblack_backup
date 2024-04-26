    .include "macros/function.inc"
	.include "overlay308.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy308_219f960
ovy308_219f960: ; 0x0219F960
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0219F9EC ; =0x0000008B
	add r6, r2, #0
	bl GFL_OvlLoad
	ldr r0, _0219F9F0 ; =0x00000090
	bl GFL_OvlLoad
	mov r2, #3
	mov r0, #1
	mov r1, #0x77
	lsl r2, r2, #0x10
	mov r5, #0x77
	bl GFL_HeapCreateChild
	mov r7, #0x9b
	lsl r7, r7, #2
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x77
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	str r6, [r4, #0x14]
	ldr r0, _0219F9F4 ; =0x00008077
	strh r5, [r4]
	strh r0, [r4, #2]
	ldrh r1, [r4]
	mov r0, #0
	bl ovy308_21a055c
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl ovy308_219fbcc
	add r0, r4, #0
	bl ovy308_219fcec
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy308_219fe0c
	add r0, r4, #0
	bl ovy308_21a0300
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ovy308_21a007c
	add r0, r4, #0
	bl ovy308_21a0278
	add r0, r4, #0
	bl ovy308_21a0334
	ldr r0, [r4, #0x50]
	bl sub_021A0664
	ldrh r1, [r4]
	bl ovy308_219ffc0
	add r5, #0xad
	str r0, [r4, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F9EC: .word 0x0000008B
_0219F9F0: .word 0x00000090
_0219F9F4: .word 0x00008077
	thumb_func_end ovy308_219f960

	thumb_func_start ovy308_219f9f8
ovy308_219f9f8: ; 0x0219F9F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x49
	add r4, r3, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219FFFC
	add r0, r4, #0
	bl ovy308_21a04d4
	add r0, r4, #0
	bl ovy308_21a02dc
	add r0, r4, #0
	bl ovy308_21a0194
	add r0, r4, #0
	bl sub_021A0324
	add r0, r4, #0
	bl ovy308_219ffa0
	add r0, r4, #0
	bl ovy308_219fda0
	add r0, r4, #0
	bl ovy308_219fc9c
	ldr r0, [r4, #0x50]
	bl ovy308_21a05fc
	add r0, r5, #0
	bl GFL_ProcReleaseSubsystem
	mov r0, #0x77
	bl GFL_HeapDelete
	ldr r0, _0219FA54 ; =0x00000090
	bl GFL_OvlUnload
	ldr r0, _0219FA58 ; =0x0000008B
	bl GFL_OvlUnload
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FA54: .word 0x00000090
_0219FA58: .word 0x0000008B
	thumb_func_end ovy308_219f9f8

	thumb_func_start ovy308_219fa5c
ovy308_219fa5c: ; 0x0219FA5C
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _0219FA6C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219FA6C:
	ldr r0, [r4]
	cmp r0, #2
	blt _0219FA80
	cmp r0, #3
	bgt _0219FA80
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021A0004
_0219FA80:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0219FACC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FA92: ; jump table
	.short _0219FA9E - _0219FA92 - 2 ; case 0
	.short _0219FAA8 - _0219FA92 - 2 ; case 1
	.short _0219FAB0 - _0219FA92 - 2 ; case 2
	.short _0219FAB8 - _0219FA92 - 2 ; case 3
	.short _0219FAC0 - _0219FA92 - 2 ; case 4
	.short _0219FAC8 - _0219FA92 - 2 ; case 5
_0219FA9E:
	add r0, r5, #0
	bl ovy308_219fb08
_0219FAA4:
	str r0, [r4]
	b _0219FACC
_0219FAA8:
	add r0, r5, #0
	bl ovy308_219fb40
	b _0219FAA4
_0219FAB0:
	add r0, r5, #0
	bl sub_0219FAEC
	b _0219FAA4
_0219FAB8:
	add r0, r5, #0
	bl ovy308_219faf4
	b _0219FAA4
_0219FAC0:
	add r0, r5, #0
	bl ovy308_219fb78
	b _0219FAA4
_0219FAC8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219FACC:
	ldr r0, [r5, #0x18]
	bl sub_0203A7F4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021A3C
	add r0, r5, #0
	bl sub_021A054C
	ldr r0, [r5, #0x50]
	bl ovy308_21a0650
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy308_219fa5c

	thumb_func_start sub_0219FAEC
sub_0219FAEC: ; 0x0219FAEC
	ldr r3, _0219FAF0 ; =ovy308_21a083c
	bx r3
	.align 2, 0
_0219FAF0: .word ovy308_21a083c
	thumb_func_end sub_0219FAEC

	thumb_func_start ovy308_219faf4
ovy308_219faf4: ; 0x0219FAF4
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0219FB00
	mov r0, #3
	pop {r3, pc}
_0219FB00:
	bl sub_021A08E8
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ovy308_219faf4

	thumb_func_start ovy308_219fb08
ovy308_219fb08: ; 0x0219FB08
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0219FB18
	cmp r1, #1
	beq _0219FB24
	b _0219FB3A
_0219FB18:
	bl ovy308_21a07d0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0219FB3A
_0219FB24:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219FB3A
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_0219FB3A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy308_219fb08

	thumb_func_start ovy308_219fb40
ovy308_219fb40: ; 0x0219FB40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219FB50
	cmp r0, #1
	beq _0219FB64
	b _0219FB74
_0219FB50:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0219FB74
_0219FB64:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219FB74
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	pop {r4, pc}
_0219FB74:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy308_219fb40

	thumb_func_start ovy308_219fb78
ovy308_219fb78: ; 0x0219FB78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219FB88
	cmp r0, #1
	beq _0219FBB8
	b _0219FBC8
_0219FB88:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0219FBA4
	mov r5, #0x49
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_021A0004
	ldr r0, [r4, r5]
	bl sub_02199C08
	cmp r0, #1
	bne _0219FBC8
_0219FBA4:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0219FBC8
_0219FBB8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219FBC8
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	pop {r3, r4, r5, pc}
_0219FBC8:
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy308_219fb78

	thumb_func_start ovy308_219fbcc
ovy308_219fbcc: ; 0x0219FBCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	bl sub_02013B8C
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #4]
	bl sub_020174D4
	str r0, [r5, #0x20]
	bl sub_0202D7A8
	str r0, [r5, #0x24]
	bl sub_02013B80
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x30
	mov r4, #0
	strb r1, [r0]
	cmp r7, #0
	ble _0219FC54
	add r0, r5, #0
	add r6, r5, #0
	str r0, [sp]
	add r0, #0x2c
	add r6, #0x2f
	str r0, [sp]
_0219FC08:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [sp]
	add r3, r4, #0
	bl sub_02013B44
	ldr r0, [r5, #0x28]
	bl sub_02013BD4
	cmp r0, #0
	bne _0219FC4E
	ldr r0, [r5, #0x28]
	bl sub_02013C88
	cmp r0, #0
	bne _0219FC4E
	ldr r0, [r5, #0x14]
	ldrb r0, [r0, #8]
	cmp r0, r4
	bne _0219FC3C
	add r0, r5, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x30
	strb r1, [r0]
_0219FC3C:
	add r0, r5, #0
	add r0, #0x2f
	ldrb r1, [r0]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, r1
	add r0, #0x32
	strb r4, [r0]
_0219FC4E:
	add r4, r4, #1
	cmp r4, r7
	blt _0219FC08
_0219FC54:
	add r0, r5, #0
	add r0, #0x30
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0219FC68
	add r0, r5, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r1, r0
	blo _0219FC70
_0219FC68:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x30
	strb r1, [r0]
_0219FC70:
	add r0, r5, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219FC7E
	mov r0, #1
	str r0, [r5, #0x10]
_0219FC7E:
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r0, r5, r0
	add r0, #0x32
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x31
	strb r1, [r0]
	ldrh r0, [r5]
	bl sub_0219F718
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy308_219fbcc

	thumb_func_start ovy308_219fc9c
ovy308_219fc9c: ; 0x0219FC9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r0, r5, r0
	add r0, #0x32
	ldrb r4, [r0]
	ldr r0, [r5, #0x24]
	bl sub_02013B80
	ldr r1, [r5, #0x14]
	mov r3, #3
	ldrb r2, [r1, #9]
	add r1, r5, #0
	add r1, #0x31
	ldrb r1, [r1]
	sub r3, r3, r2
	add r3, r1, r3
	sub r1, r1, r2
	cmp r4, r1
	blt _0219FCCA
	cmp r4, r3
	ble _0219FCDC
_0219FCCA:
	sub r1, r0, r4
	cmp r1, #4
	bge _0219FCD2
	sub r4, r0, #4
_0219FCD2:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0x18
	bl sub_0202D7B8
_0219FCDC:
	ldr r0, [r5, #0x1c]
	bl sub_0219F728
	ldr r0, [r5, #0x28]
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy308_219fc9c

	thumb_func_start ovy308_219fcec
ovy308_219fcec: ; 0x0219FCEC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	mov r2, #0x40
	mov r3, #0x80
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #0x18]
	ldrh r1, [r5]
	mov r0, #0xab
	mov r4, #0xab
	bl GFL_ArcSysCreateFileHandle
	str r0, [r5, #0x54]
	mov r0, #7
	mov r1, #8
	mov r2, #0xf
	mov r6, #8
	bl sub_020232E8
	ldrh r1, [r5]
	lsl r0, r6, #8
	bl sub_020219A8
	mov r1, #0xab
	add r1, #0x81
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	mov r1, #0xab
	add r1, #0x7d
	str r0, [r5, r1]
	ldrh r2, [r5]
	mov r0, #8
	mov r1, #0x40
	bl sub_020241E4
	mov r1, #0xab
	add r1, #0x8d
	str r0, [r5, r1]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0xa
	bl GFL_MsgSysLoadData
	add r4, #0x85
	str r0, [r5, r4]
	ldr r4, _0219FD9C ; =0x000001B6
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	sub r4, #0x82
	str r0, [r5, r4]
	ldrh r1, [r5]
	mov r0, #0x91
	mov r4, #0x91
	bl GFL_StrBufCreate
	mov r1, #0x91
	add r1, #0xab
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x91
	bl GFL_StrBufCreate
	mov r1, #0x91
	add r1, #0xaf
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x91
	bl GFL_StrBufCreate
	add r4, #0xb3
	str r0, [r5, r4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219FD9C: .word 0x000001B6
	thumb_func_end ovy308_219fcec

	thumb_func_start ovy308_219fda0
ovy308_219fda0: ; 0x0219FDA0
	push {r3, r4, r5, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02021C44
	sub r4, #0x18
	ldr r0, [r5, r4]
	bl sub_02021A18
	bl sub_020232D8
	ldr r0, [r5, #0x18]
	bl GFL_TCBExMgrFree
	ldr r0, [r5, #0x54]
	bl GFL_ArcToolFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy308_219fda0

	thumb_func_start ovy308_219fe0c
ovy308_219fe0c: ; 0x0219FE0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x54
	add r4, r1, #0
	bl GFL_ArcSysCreateFileHandle
	mov r6, #2
	lsl r6, r6, #8
	str r6, [sp]
	str r4, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0xc]
	mov r7, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x54]
	mov r1, #0x1c
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	mov r6, #1
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x1e
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x1e
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x1e
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x20
	mov r2, #4
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x20
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x21
	mov r2, #7
	add r3, r7, #0
	bl sub_0204AF50
	mov r0, #0x18
	str r0, [sp]
	mov r0, #5
	add r1, r7, #0
	add r2, r7, #0
	mov r3, #0x20
	str r6, [sp, #4]
	bl sub_0204566C
	mov r0, #5
	bl GFL_BGSysLoadScr
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x54]
	mov r1, #0x1f
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0204ADA8
	mov r0, #0x20
	lsl r0, r0, #6
	str r0, [sp]
	str r6, [sp, #4]
	mov r1, #0x22
	str r1, [sp, #0x14]
	str r4, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x54]
	mov r1, #0x22
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0204AF50
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #5
	mov r2, #2
	add r3, r7, #0
	str r4, [sp, #8]
	mov r6, #2
	bl sub_0204ADA8
	ldr r0, [sp, #0x10]
	mov r1, #0x11
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	str r4, [sp, #8]
	mov r2, #2
	add r3, r7, #0
	bl sub_0204AF50
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #7
	mov r2, #3
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #3
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	ldrh r2, [r5]
	ldr r0, [r5, #0x54]
	mov r1, #0x1d
	mov r4, #0x1d
	bl sub_0204AB1C
	ldr r1, [sp, #0x14]
	add r1, #0xfe
	str r1, [sp, #0x14]
	str r0, [r5, r1]
	mov r1, #0x1d
	add r1, #0xfb
	add r1, r5, r1
	bl sub_020602D8
	mov r0, #0x1d
	add r0, #0xfb
	ldr r0, [r5, r0]
	add r4, #0xff
	ldr r0, [r0, #0xc]
	str r0, [r5, r4]
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	mov r0, #5
	str r0, [sp]
	ldr r0, _0219FF98 ; =0x04000050
	add r1, r6, #0
	mov r2, #0x1e
	mov r3, #0xb
	bl G2x_SetBlendAlpha_
	mov r0, #3
	str r0, [sp]
	ldr r0, _0219FF9C ; =0x04001050
	mov r1, #3
	mov r2, #0x1f
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FF98: .word 0x04000050
_0219FF9C: .word 0x04001050
	thumb_func_end ovy308_219fe0c

	thumb_func_start ovy308_219ffa0
ovy308_219ffa0: ; 0x0219FFA0
	push {r3, lr}
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl GFL_HeapFree
	ldr r0, _0219FFB8 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0219FFBC ; =0x04000050
	strh r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0219FFB8: .word 0x04001050
_0219FFBC: .word 0x04000050
	thumb_func_end ovy308_219ffa0

	thumb_func_start ovy308_219ffc0
ovy308_219ffc0: ; 0x0219FFC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x20
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _0219FFF8 ; =0x021A17E8
	add r1, r4, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x18]
	bl sub_02199AA0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FFF8: .word 0x021A17E8
	thumb_func_end ovy308_219ffc0

	thumb_func_start sub_0219FFFC
sub_0219FFFC: ; 0x0219FFFC
	ldr r3, _021A0000 ; =sub_02199B5C
	bx r3
	.align 2, 0
_021A0000: .word sub_02199B5C
	thumb_func_end sub_0219FFFC

	thumb_func_start sub_021A0004
sub_021A0004: ; 0x021A0004
	ldr r3, _021A0008 ; =sub_02199B90
	bx r3
	.align 2, 0
_021A0008: .word sub_02199B90
	thumb_func_end sub_021A0004

	thumb_func_start ovy308_21a000c
ovy308_21a000c: ; 0x021A000C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r4, #2]
	ldrb r3, [r4, #1]
	ldrh r1, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r6]
	lsl r3, r3, #0x15
	ldrb r2, [r4]
	str r0, [sp, #8]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl Oam_LoadNCLRFile
	str r0, [r5]
	ldrh r0, [r6]
	ldrh r1, [r4, #6]
	ldrb r3, [r4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #4]
	ldrh r1, [r4, #8]
	ldrh r3, [r6]
	add r0, r7, #0
	add r2, r1, #1
	bl Oam_LoadNCERFile
	str r0, [r5, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a000c

	thumb_func_start ovy308_21a0064
ovy308_21a0064: ; 0x021A0064
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4]
	bl sub_0204BCD0
	pop {r4, pc}
	thumb_func_end ovy308_21a0064

	thumb_func_start ovy308_21a007c
ovy308_21a007c: ; 0x021A007C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldrh r0, [r5]
	add r6, r1, #0
	bl sub_02034060
	str r0, [r5, #0x58]
	ldr r0, _021A018C ; =0x021A17C4
	add r4, sp, #8
	ldrh r1, [r0]
	add r2, sp, #0x10
	add r2, #2
	strh r1, [r4, #0xa]
	ldrh r1, [r0, #2]
	add r3, r6, #0
	strh r1, [r4, #0xc]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x10]
	ldrh r0, [r0, #8]
	add r1, r5, #0
	add r1, #0x5c
	strh r0, [r4, #0x12]
	add r0, r5, #0
	bl ovy308_21a000c
	ldr r0, _021A0190 ; =0x021A17D0
	add r6, sp, #8
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r1, [r0, #6]
	strh r1, [r4, #6]
	ldrh r0, [r0, #8]
	strh r0, [r4, #8]
	ldrh r1, [r5, #2]
	mov r0, #0x1f
	mov r4, #0x1f
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	add r2, r6, #0
	add r3, r7, #0
	bl ovy308_21a000c
	ldrh r2, [r5]
	add r0, r7, #0
	mov r1, #0
	mov r6, #0
	bl sub_0204AB1C
	mov r1, #0x1f
	add r1, #0xf5
	str r0, [r5, r1]
	mov r1, #0x1f
	add r1, #0xed
	add r1, r5, r1
	bl sub_020602D8
	mov r0, #0x1f
	add r0, #0xed
	ldr r0, [r5, r0]
	add r4, #0xf1
	ldr r0, [r0, #0xc]
	str r0, [r5, r4]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x8c
	str r0, [sp, #4]
_021A0116:
	ldrh r2, [r5]
	add r1, r6, #0
	lsl r4, r6, #3
	add r0, r7, #0
	add r1, #0x31
	bl sub_0204AB1C
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [sp, #4]
	ldr r0, [r0]
	add r1, r1, r4
	bl sub_02060278
	add r6, r6, #1
	cmp r6, #0x10
	blt _021A0116
	add r0, r7, #0
	bl GFL_ArcToolFree
	mov r4, #0
	mov r7, #1
_021A0148:
	mov r0, #0xc
	mul r0, r4
	add r6, r5, r0
	ldrh r3, [r5]
	ldr r0, [r5, #0x58]
	add r1, r4, #2
	add r2, r7, #0
	bl sub_020340A4
	str r0, [r6, #0x6c]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #8
	str r0, [sp]
	lsl r3, r3, #0x15
	ldr r0, [r5, #0x58]
	add r1, r4, #2
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_02034074
	str r0, [r6, #0x68]
	ldrh r3, [r5]
	add r0, r4, #2
	mov r1, #0
	add r2, r7, #0
	bl sub_020340C8
	add r4, r4, #1
	str r0, [r6, #0x70]
	cmp r4, #2
	blt _021A0148
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A018C: .word 0x021A17C4
_021A0190: .word 0x021A17D0
	thumb_func_end ovy308_21a007c

	thumb_func_start ovy308_21a0194
ovy308_21a0194: ; 0x021A0194
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x68
	mov r7, #0xc
_021A01A0:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, #0
	add r1, r6, r1
	bl ovy308_21a0064
	add r4, r4, #1
	cmp r4, #2
	blt _021A01A0
	mov r4, #0
_021A01B4:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0x90
	ldr r0, [r0]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #0x10
	blt _021A01B4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ovy308_21a0064
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x5c
	bl ovy308_21a0064
	ldr r0, [r5, #0x58]
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a0194

	thumb_func_start ovy308_21a01ec
ovy308_21a01ec: ; 0x021A01EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, sp, #0x18
	add r4, r0, #0
	ldrb r0, [r5, #8]
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	ldrb r2, [r5]
	ldrb r3, [r5, #4]
	bl BmpWin_CreateDynamic
	str r0, [r4]
	bl BmpWin_GetBitmap
	ldr r1, [r4]
	str r0, [r4, #4]
	str r1, [r4, #8]
	mov r1, #0
	strb r1, [r4, #0xc]
	mov r1, #3
	bl BmpWin_BitmapFill
	ldr r4, [r4]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy308_21a01ec

	thumb_func_start ovy308_21a023c
ovy308_21a023c: ; 0x021A023C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, sp, #0xc
	add r4, r2, #0
	strh r3, [r5]
	add r3, sp, #0x20
	mov r2, #0
	ldrsh r2, [r3, r2]
	strh r2, [r5, #2]
	ldrb r2, [r3, #4]
	strh r2, [r5, #4]
	ldrb r2, [r3, #0xc]
	strb r2, [r5, #7]
	ldrb r2, [r3, #8]
	strb r2, [r5, #6]
	add r2, sp, #0xc
	str r2, [sp]
	ldrh r2, [r3, #0x10]
	str r2, [sp, #4]
	ldrh r0, [r0]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [r4, #4]
	ldr r2, [r4]
	ldr r3, [r4, #8]
	bl Oam_CreateSprite
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy308_21a023c

	thumb_func_start ovy308_21a0278
ovy308_21a0278: ; 0x021A0278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	bl sub_021A0664
	add r4, r0, #0
	mov r7, #0x78
	add r2, r5, #0
	str r7, [sp]
	mov r6, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x80
	mov r3, #0x80
	str r6, [sp, #0x10]
	bl ovy308_21a023c
	mov r1, #0x99
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
	str r7, [sp]
	add r2, r5, #0
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x5c
	mov r3, #0x60
	str r6, [sp, #0x10]
	bl ovy308_21a023c
	mov r1, #0x99
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0278

	thumb_func_start ovy308_21a02dc
ovy308_21a02dc: ; 0x021A02DC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x99
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A02E6:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r7]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #2
	blt _021A02E6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a02dc

	thumb_func_start ovy308_21a0300
ovy308_21a0300: ; 0x021A0300
	push {lr}
	sub sp, #0xc
	mov r1, #0x16
	str r1, [sp]
	mov r1, #0x1c
	str r1, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r1, #0x52
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #1
	mov r2, #0xb
	mov r3, #2
	bl ovy308_21a01ec
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy308_21a0300

	thumb_func_start sub_021A0324
sub_021A0324: ; 0x021A0324
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A0330 ; =BmpWin_Free
	bx r3
	nop
_021A0330: .word BmpWin_Free
	thumb_func_end sub_021A0324

	thumb_func_start ovy308_21a0334
ovy308_21a0334: ; 0x021A0334
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x50]
	bl sub_021A0664
	mov r1, #0xa
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	mov r4, #0x4b
	ldrh r1, [r1]
	lsl r4, r4, #2
	ldr r2, [sp, #0x14]
	str r1, [sp, #8]
	ldr r3, [sp, #0x14]
	sub r5, r4, #4
	ldr r2, [r2, r4]
	ldr r3, [r3, r5]
	mov r1, #1
	str r0, [sp, #0x1c]
	bl sub_02034168
	add r2, r4, #0
	ldr r1, [sp, #0x14]
	add r2, #0x2c
	str r0, [r1, r2]
	mov r1, #4
	bl sub_020344B8
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x2c
	ldr r0, [r0, r1]
	ldr r1, _021A04CC ; =0x00003DC4
	bl sub_020344C0
	ldr r0, [sp, #0x14]
	add r4, #0x2c
	ldr r0, [r0, r4]
	mov r1, #1
	bl sub_020344C4
	mov r6, #0
_021A038E:
	add r0, r6, #4
	str r0, [sp, #0x18]
	mov r1, #0x57
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r1, r0, r1
	lsl r0, r6, #7
	add r5, r1, r0
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, #0x7e
	strb r0, [r1]
	mov r1, #4
	str r1, [sp]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #2
	mov r2, #0xf
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x70]
	ldr r0, [sp, #0x18]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
_021A03D2:
	lsl r0, r4, #1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A04D0 ; =0x021A17C0
	ldr r2, [sp, #0x20]
	ldrb r0, [r0, r4]
	add r1, r7, #0
	mov r3, #2
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r5, r0
	bl ovy308_21a01ec
	add r4, r4, #1
	cmp r4, #4
	blt _021A03D2
	mov r0, #9
	str r0, [sp]
	mov r4, #0x13
	ldr r1, [sp, #0x18]
	lsl r2, r6, #0x18
	lsl r1, r1, #0x18
	str r4, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x40
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl ovy308_21a01ec
	mov r0, #0xb
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	mov r7, #4
	add r0, #0x50
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #3
	str r7, [sp, #8]
	bl ovy308_21a01ec
	ldr r1, [sp, #0x18]
	lsl r2, r6, #0x18
	lsl r1, r1, #0x18
	str r4, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x60
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #4
	str r7, [sp, #8]
	bl ovy308_21a01ec
	mov r0, #0x2c
	str r0, [sp]
	mov r7, #0
	lsl r0, r6, #0x18
	mov r3, #0xc
	str r7, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	add r2, #0x68
	mul r3, r6
	add r2, r2, r3
	str r4, [sp, #0x10]
	mov r3, #0xdc
	bl ovy308_21a023c
	str r0, [r5, #0x78]
	mov r1, #0
	bl sub_0204C318
	ldr r0, [r5, #0x78]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x50
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	lsl r0, r6, #0x18
	str r7, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	add r2, #0x5c
	mov r3, #0xc8
	str r4, [sp, #0x10]
	bl ovy308_21a023c
	mov r1, #1
	str r0, [r5, #0x74]
	bl sub_0204C318
	ldr r0, [r5, #0x74]
	add r1, r7, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #2
	bge _021A04C6
	b _021A038E
_021A04C6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A04CC: .word 0x00003DC4
_021A04D0: .word 0x021A17C0
	thumb_func_end ovy308_21a0334

	thumb_func_start ovy308_21a04d4
ovy308_21a04d4: ; 0x021A04D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [sp]
	mov r6, #0
	add r0, r0, r1
	str r0, [sp, #4]
	add r7, r6, #0
_021A04E6:
	ldr r0, [sp, #4]
	lsl r1, r6, #7
	add r5, r0, r1
	ldr r0, [r5, #0x78]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x78]
	bl Oam_RemoveOam
	ldr r0, [r5, #0x74]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x74]
	bl Oam_RemoveOam
	ldr r0, [r5, #0x60]
	bl BmpWin_Free
	add r4, r7, #0
_021A0510:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #2
	blt _021A0510
	mov r4, #0
_021A0522:
	lsl r0, r4, #4
	ldr r0, [r5, r0]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #4
	blt _021A0522
	ldr r0, [r5, #0x70]
	bl BmpWin_Free
	add r6, r6, #1
	cmp r6, #2
	blt _021A04E6
	mov r1, #0x56
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02034264
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a04d4

	thumb_func_start sub_021A054C
sub_021A054C: ; 0x021A054C
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A0558 ; =sub_02034220
	bx r3
	nop
_021A0558: .word sub_02034220
	thumb_func_end sub_021A054C

	thumb_func_start ovy308_21a055c
ovy308_21a055c: ; 0x021A055C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021A05E0 ; =0x0000013D
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021A05E4 ; =0x021A1A60
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021A05E8 ; =0x04000050
	ldr r0, _021A05EC ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021A05F0 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A05F4 ; =0x021A1874
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
	bl ovy308_21a0684
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy308_21a0728
	ldr r0, _021A05F8 ; =ovy308_21a0670
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A05E0: .word 0x0000013D
_021A05E4: .word 0x021A1A60
_021A05E8: .word 0x04000050
_021A05EC: .word 0x04001050
_021A05F0: .word 0xFFFF1FFF
_021A05F4: .word 0x021A1874
_021A05F8: .word ovy308_21a0670
	thumb_func_end ovy308_21a055c

	thumb_func_start ovy308_21a05fc
ovy308_21a05fc: ; 0x021A05FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy308_21a079c
	add r0, r4, #0
	bl ovy308_21a06e4
	bl sub_020232D8
	ldr r5, _021A0644 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A0648 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A064C ; =0xFFFF1FFF
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
_021A0644: .word 0x04000050
_021A0648: .word 0x04001050
_021A064C: .word 0xFFFF1FFF
	thumb_func_end ovy308_21a05fc

	thumb_func_start ovy308_21a0650
ovy308_21a0650: ; 0x021A0650
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A07BC
	add r0, r4, #0
	bl sub_021A071C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0650

	thumb_func_start sub_021A0664
sub_021A0664: ; 0x021A0664
	ldr r3, _021A066C ; =sub_021A07CC
	add r0, r0, #4
	bx r3
	nop
_021A066C: .word sub_021A07CC
	thumb_func_end sub_021A0664

	thumb_func_start ovy308_21a0670
ovy308_21a0670: ; 0x021A0670
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A0720
	add r0, r4, #4
	bl sub_021A07C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0670

	thumb_func_start ovy308_21a0684
ovy308_21a0684: ; 0x021A0684
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
	ldr r0, _021A06DC ; =0x021A1848
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021A06E0 ; =0x021A18C4
_021A06A6:
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
	cmp r4, #8
	blo _021A06A6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A06DC: .word 0x021A1848
_021A06E0: .word 0x021A18C4
	thumb_func_end ovy308_21a0684

	thumb_func_start ovy308_21a06e4
ovy308_21a06e4: ; 0x021A06E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A0718 ; =0x021A18C4
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A06EE:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021A06EE
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0718: .word 0x021A18C4
	thumb_func_end ovy308_21a06e4

	thumb_func_start sub_021A071C
sub_021A071C: ; 0x021A071C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A071C

	thumb_func_start sub_021A0720
sub_021A0720: ; 0x021A0720
	ldr r3, _021A0724 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A0724: .word sub_02045A5C
	thumb_func_end sub_021A0720

	thumb_func_start ovy308_21a0728
ovy308_21a0728: ; 0x021A0728
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A0794 ; =0x021A1858
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	add r3, sp, #0
	ldr r6, _021A0798 ; =0x021A18A4
	str r0, [r5]
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_0204BE9C
	str r0, [r5, #4]
	mov r1, #1
	bl sub_0204BF14
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_0204C018
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0794: .word 0x021A1858
_021A0798: .word 0x021A18A4
	thumb_func_end ovy308_21a0728

	thumb_func_start ovy308_21a079c
ovy308_21a079c: ; 0x021A079C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0204BECC
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy308_21a079c

	thumb_func_start sub_021A07BC
sub_021A07BC: ; 0x021A07BC
	ldr r3, _021A07C0 ; =sub_0204B794
	bx r3
	.align 2, 0
_021A07C0: .word sub_0204B794
	thumb_func_end sub_021A07BC

	thumb_func_start sub_021A07C4
sub_021A07C4: ; 0x021A07C4
	ldr r3, _021A07C8 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A07C8: .word sub_0204B7C8
	thumb_func_end sub_021A07C4

	thumb_func_start sub_021A07CC
sub_021A07CC: ; 0x021A07CC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A07CC

	thumb_func_start ovy308_21a07d0
ovy308_21a07d0: ; 0x021A07D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy308_21a0b44
	add r3, r5, #0
	add r3, #0x30
	ldrb r3, [r3]
	add r2, r5, #0
	ldr r0, [r5, #0x24]
	add r3, r5, r3
	add r3, #0x32
	ldrb r3, [r3]
	ldr r1, [r5, #0x28]
	add r2, #0x2c
	bl sub_02013B44
	add r3, r5, #0
	add r3, #0x2e
	ldrh r2, [r5, #0x2c]
	ldrb r3, [r3]
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	bl ovy308_21a0db0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r4, #1
	bl ovy308_21a0d20
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #0
	eor r1, r4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy308_21a0d20
	add r0, r5, #0
	bl ovy308_21a1084
	add r0, r5, #0
	bl ovy308_21a098c
	ldrh r1, [r5, #2]
	mov r0, #0
	bl sub_02042BA8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy308_21a07d0

	thumb_func_start ovy308_21a083c
ovy308_21a083c: ; 0x021A083C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02199C30
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r0, [r0]
	bl sub_02016BEC
	cmp r0, #0
	beq _021A0868
	ldr r0, [r5, #0x14]
	mov r1, #1
	strb r1, [r0, #0xa]
	mov r0, #4
	pop {r4, r5, r6, pc}
_021A0868:
	cmp r4, #1
	bne _021A0876
	ldr r0, [r5, #0x14]
	mov r1, #0
	strb r1, [r0, #0xa]
	mov r0, #4
	pop {r4, r5, r6, pc}
_021A0876:
	cmp r4, #3
	bne _021A0890
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A0890
	add r0, r5, #0
	mov r1, #1
	bl sub_021A14E8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A0890:
	cmp r4, #2
	bne _021A08B2
	add r0, r5, #0
	add r0, #0x30
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _021A08B2
	add r0, r5, #0
	mov r1, #0
	bl sub_021A14E8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A08B2:
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021A08C0
	mov r0, #2
	pop {r4, r5, r6, pc}
_021A08C0:
	add r0, r5, #0
	bl ovy308_21a08f0
	cmp r0, #0
	bne _021A08D0
	mov r0, #1
	tst r0, r6
	beq _021A08E0
_021A08D0:
	ldr r0, _021A08E4 ; =0x0000054C
	bl sub_021A092C
	add r0, r5, #0
	bl sub_021A133C
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A08E0:
	mov r0, #2
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A08E4: .word 0x0000054C
	thumb_func_end ovy308_21a083c

	thumb_func_start sub_021A08E8
sub_021A08E8: ; 0x021A08E8
	ldr r3, _021A08EC ; =ovy308_21a098c
	bx r3
	.align 2, 0
_021A08EC: .word ovy308_21a098c
	thumb_func_end sub_021A08E8

	thumb_func_start ovy308_21a08f0
ovy308_21a08f0: ; 0x021A08F0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A0926
	mov r0, #0x97
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #4]
	sub r1, #0xc
	sub r1, r2, r1
	cmp r1, #0x18
	bhi _021A0926
	add r0, r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [sp]
	sub r0, #0x10
	sub r0, r1, r0
	cmp r0, #0x20
	bhi _021A0926
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021A0926:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy308_21a08f0

	thumb_func_start sub_021A092C
sub_021A092C: ; 0x021A092C
	ldr r3, _021A0930 ; =GFL_SndSEPlay
	bx r3
	.align 2, 0
_021A0930: .word GFL_SndSEPlay
	thumb_func_end sub_021A092C

	thumb_func_start ovy308_21a0934
ovy308_21a0934: ; 0x021A0934
	push {r3, r4, r5, r6, r7, lr}
	lsl r7, r3, #1
	add r6, r1, #0
	add r1, r7, #0
	add r5, r0, #0
	lsl r4, r2, #1
	blx DC_FlushRange
	cmp r6, #3
	bhi _021A098A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0954: ; jump table
	.short _021A095C - _021A0954 - 2 ; case 0
	.short _021A0968 - _021A0954 - 2 ; case 1
	.short _021A0974 - _021A0954 - 2 ; case 2
	.short _021A0980 - _021A0954 - 2 ; case 3
_021A095C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021A0968:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021A0974:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GX_LoadOBJPltt
	pop {r3, r4, r5, r6, r7, pc}
_021A0980:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GXS_LoadOBJPltt
_021A098A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a0934

	thumb_func_start ovy308_21a098c
ovy308_21a098c: ; 0x021A098C
	push {r4, r5, r6, lr}
	mov r4, #0x49
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	mov r6, #1
	bl sub_02199D08
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r5, r4]
	beq _021A09B2
	mov r1, #3
	add r2, r6, #0
	b _021A09B6
_021A09B2:
	mov r1, #3
	mov r2, #0
_021A09B6:
	bl sub_02199D08
	add r0, r5, #0
	add r0, #0x30
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _021A09DC
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #1
	bl sub_02199D08
	pop {r4, r5, r6, pc}
_021A09DC:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #0
	bl sub_02199D08
	pop {r4, r5, r6, pc}
	thumb_func_end ovy308_21a098c

	thumb_func_start ovy308_21a09ec
ovy308_21a09ec: ; 0x021A09EC
	push {r3, lr}
	bl sub_02013CC0
	cmp r0, #0x14
	beq _021A09FE
	cmp r0, #0x15
	bne _021A0A02
	mov r0, #0
	pop {r3, pc}
_021A09FE:
	mov r0, #1
	pop {r3, pc}
_021A0A02:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy308_21a09ec

	thumb_func_start ovy308_21a0a08
ovy308_21a0a08: ; 0x021A0A08
	push {r3, r4}
	ldr r2, _021A0A2C ; =0x021A1A42
	mov r4, #0
_021A0A0E:
	lsl r1, r4, #1
	add r3, r4, r1
	ldrb r1, [r2, r3]
	cmp r0, r1
	bne _021A0A1E
	add r0, r2, r3
	pop {r3, r4}
	bx lr
_021A0A1E:
	add r4, r4, #1
	cmp r4, #6
	blo _021A0A0E
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	nop
_021A0A2C: .word 0x021A1A42
	thumb_func_end ovy308_21a0a08

	thumb_func_start ovy308_21a0a30
ovy308_21a0a30: ; 0x021A0A30
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02013E34
	cmp r0, #4
	bhi _021A0A84
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0A4A: ; jump table
	.short _021A0A54 - _021A0A4A - 2 ; case 0
	.short _021A0A54 - _021A0A4A - 2 ; case 1
	.short _021A0A66 - _021A0A4A - 2 ; case 2
	.short _021A0AAC - _021A0A4A - 2 ; case 3
	.short _021A0AAC - _021A0A4A - 2 ; case 4
_021A0A54:
	add r0, r4, #0
	bl sub_02013E78
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020243D0
	pop {r4, r5, r6, pc}
_021A0A66:
	add r0, r4, #0
	bl sub_02013E44
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020246A4
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_020246D4
	pop {r4, r5, r6, pc}
_021A0A84:
	add r0, r4, #0
	bl sub_02013CC0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	bl sub_02013DA0
	ldr r1, _021A0AB0 ; =0x00000267
	cmp r0, r1
	blo _021A0A9C
	ldr r0, _021A0AB4 ; =0x0000013D
_021A0A9C:
	add r1, r6, #0
	bl sub_02018CA0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_02024700
_021A0AAC:
	pop {r4, r5, r6, pc}
	nop
_021A0AB0: .word 0x00000267
_021A0AB4: .word 0x0000013D
	thumb_func_end ovy308_21a0a30

	thumb_func_start ovy308_21a0ab8
ovy308_21a0ab8: ; 0x021A0AB8
	push {r4, lr}
	add r4, r0, #0
	bl Oam_SetOamAnimIndex
	add r0, r4, #0
	bl sub_0204C56C
	pop {r4, pc}
	thumb_func_end ovy308_21a0ab8

	thumb_func_start ovy308_21a0ac8
ovy308_21a0ac8: ; 0x021A0AC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strh r2, [r4, #2]
	add r1, sp, #0
	add r2, r3, #0
	bl Oam_SetSpritePosData
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0ac8

	thumb_func_start ovy308_21a0ae0
ovy308_21a0ae0: ; 0x021A0AE0
	push {r3, r4, r5, lr}
	mov r4, #0x13
	lsl r4, r4, #4
	add r2, r4, #0
	add r5, r0, #0
	add r2, #0xc
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	add r1, r4, #0
	add r0, #8
	add r1, #0x10
	add r4, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl GFL_WordSetFormatStrbuf
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0ae0

	thumb_func_start ovy308_21a0b0c
ovy308_21a0b0c: ; 0x021A0B0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r1, r4, #3
	add r1, r5, r1
	add r0, #0x84
	add r1, #0x8c
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_0204BA40
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _021A0B40 ; =0x021A1A32
	mov r2, #0xa0
	ldrb r0, [r0, r4]
	mov r3, #0x10
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x17
	add r0, r1, r0
	mov r1, #2
	bl ovy308_21a0934
	pop {r3, r4, r5, pc}
	nop
_021A0B40: .word 0x021A1A32
	thumb_func_end ovy308_21a0b0c

	thumb_func_start ovy308_21a0b44
ovy308_21a0b44: ; 0x021A0B44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x57
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #8]
_021A0B5A:
	mov r0, #0x13
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	ldr r0, [r5, r0]
	add r2, #0xc
	ldr r1, [sp, #0x18]
	ldr r2, [r5, r2]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x18]
	mov r4, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r1, _021A0CB0 ; =0x021A1A2A
	lsl r0, r0, #2
	add r1, r1, r0
	ldrb r1, [r1, #2]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsl r7, r1, #4
	ldr r1, _021A0CB0 ; =0x021A1A2A
	ldrh r0, [r1, r0]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r0, #0xc
	str r0, [sp, #0x28]
_021A0B98:
	ldr r0, [sp, #0x1c]
	lsl r1, r4, #7
	add r6, r0, r1
	add r0, r7, r6
	str r0, [sp, #0xc]
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x14]
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #8]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ovy308_21a16b4
	ldr r6, [r7, r6]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r4, r4, #1
	cmp r4, #2
	blt _021A0B98
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _021A0B5A
	mov r7, #0x13
	lsl r7, r7, #4
	add r2, r7, #0
	add r2, #0xc
	ldr r0, [r5, r7]
	ldr r2, [r5, r2]
	mov r1, #7
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r0, #0x2c
	add r0, r5, r0
	str r0, [sp, #0x20]
	mov r4, #0
	add r7, #0xc
_021A0C06:
	ldr r0, [sp, #8]
	lsl r1, r0, #7
	ldr r0, [sp, #0x20]
	add r6, r0, r1
	ldr r0, [r6, #0x44]
	mov r1, #3
	bl BmpWin_BitmapFill
	ldr r0, [r5, r7]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _021A0CB4 ; =0x00003DC3
	add r1, #0x40
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ovy308_21a16b4
	ldr r6, [r6, #0x40]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _021A0C06
	mov r7, #0x13
	lsl r7, r7, #4
	add r2, r7, #0
	add r2, #0xc
	ldr r0, [r5, r7]
	ldr r2, [r5, r2]
	mov r1, #9
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r0, #0x2c
	add r0, r5, r0
	str r0, [sp, #0x24]
	add r7, #0xc
_021A0C6A:
	ldr r0, [sp, #0x24]
	lsl r1, r4, #7
	add r6, r0, r1
	ldr r0, [r6, #0x64]
	mov r1, #3
	bl BmpWin_BitmapFill
	ldr r0, [r5, r7]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _021A0CB4 ; =0x00003DC3
	add r1, #0x60
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy308_21a16b4
	ldr r6, [r6, #0x60]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r4, r4, #1
	cmp r4, #2
	blt _021A0C6A
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0CB0: .word 0x021A1A2A
_021A0CB4: .word 0x00003DC3
	thumb_func_end ovy308_21a0b44

	thumb_func_start ovy308_21a0cb8
ovy308_21a0cb8: ; 0x021A0CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, sp, #0x20
	str r0, [sp, #8]
	ldrb r0, [r7, #0xc]
	add r5, r1, #0
	lsl r1, r3, #0x13
	lsl r4, r0, #2
	ldrb r0, [r7, #8]
	add r6, r2, #0
	asr r1, r1, #0x10
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, _021A0D18 ; =0x021A1A2C
	mov r2, #0
	ldrb r0, [r0, r4]
	str r0, [sp, #4]
	ldrb r3, [r7, #4]
	ldr r0, [r5, #4]
	lsl r3, r3, #0x13
	lsr r3, r3, #0x10
	bl sub_020470F8
	ldr r0, _021A0D1C ; =0x021A1A2A
	str r6, [sp]
	ldrh r0, [r0, r4]
	add r1, r5, #0
	mov r3, #0
	str r0, [sp, #4]
	ldrb r2, [r7]
	ldr r0, [sp, #8]
	bl ovy308_21a16b4
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0D18: .word 0x021A1A2C
_021A0D1C: .word 0x021A1A2A
	thumb_func_end ovy308_21a0cb8

	thumb_func_start ovy308_21a0d20
ovy308_21a0d20: ; 0x021A0D20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x57
	add r7, r1, #0
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r7, #7
	add r4, r1, r0
	add r6, r2, #0
	ldr r0, [r4, #0x78]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A0D4C
	ldr r0, [r4, #0x74]
	add r1, r6, #0
	bl sub_0204C124
_021A0D4C:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02034320
	cmp r0, #0
	beq _021A0D6A
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0203430C
_021A0D6A:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a0d20

	thumb_func_start ovy308_21a0d78
ovy308_21a0d78: ; 0x021A0D78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x7e
	add r4, r1, #0
	ldrb r0, [r0]
	mov r1, #3
	neg r2, r4
	bl sub_02044CFC
	add r2, r4, #0
	add r2, #0x2c
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x78]
	mov r1, #0xdc
	asr r2, r2, #0x10
	mov r3, #1
	bl ovy308_21a0ac8
	add r4, #0x50
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x74]
	mov r1, #0xc8
	asr r2, r2, #0x10
	mov r3, #1
	bl ovy308_21a0ac8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0d78

	thumb_func_start ovy308_21a0db0
ovy308_21a0db0: ; 0x021A0DB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r3, [sp, #0x10]
	add r5, r0, #0
	mov r6, #0x57
	ldr r0, [sp, #0x10]
	lsl r6, r6, #2
	add r2, r5, r6
	lsl r0, r0, #7
	add r4, r2, r0
	add r0, sp, #0x28
	add r7, r1, #0
	bl sub_02013D38
	mov r0, #0
	add r1, sp, #0x28
	str r0, [sp]
	add r0, sp, #0x28
	add r1, #2
	mov r2, #1
	mov r3, #3
	bl sub_0202780C
	ldr r0, [sp, #0x10]
	mov r1, #1
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x28
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #2
	bl ovy308_21a0934
	add r0, r7, #0
	bl ovy308_21a09ec
	add r1, r6, #0
	ldr r2, [sp, #0x18]
	sub r1, #0x40
	add r2, #0xa
	str r2, [sp, #0x18]
	lsl r2, r2, #0x10
	ldr r1, [r5, r1]
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #2
	bl ovy308_21a0934
	add r1, r6, #0
	sub r1, #0x20
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02013CAC
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	add r2, r6, #0
	str r0, [sp, #0xc]
	sub r2, #0x20
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl ovy308_21a0cb8
	add r0, r7, #0
	bl sub_02013CD8
	add r2, r0, #0
	cmp r2, #0xff
	bne _021A0E5A
	sub r6, #0x1c
	ldr r0, [r5, r6]
	bl sub_02048570
	b _021A0E6C
_021A0E5A:
	sub r6, #0x24
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_02024784
	add r0, r5, #0
	mov r1, #5
	bl ovy308_21a0ae0
_021A0E6C:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	mov r6, #5
	str r0, [sp, #0xc]
	lsl r6, r6, #6
	add r1, r4, #0
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, #0x10
	mov r3, #6
	bl ovy308_21a0cb8
	add r0, r7, #0
	bl sub_02013CF0
	add r2, r0, #0
	cmp r2, #0xff
	bne _021A0EA2
	ldr r0, [r5, r6]
	bl sub_02048570
	b _021A0EB4
_021A0EA2:
	sub r6, #8
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_02024754
	add r0, r5, #0
	mov r1, #4
	bl ovy308_21a0ae0
_021A0EB4:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #5
	str r0, [sp, #0xc]
	lsl r6, r6, #6
	add r1, r4, #0
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, #0x20
	mov r3, #6
	bl ovy308_21a0cb8
	add r1, sp, #0x1c
	add r0, r7, #0
	add r1, #2
	add r2, sp, #0x1c
	bl sub_02013D88
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, sp, #0x1c
	sub r0, #8
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	mov r1, #2
	mov r3, #3
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, sp, #0x1c
	sub r0, #8
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #2
	bl StringSetNumber
	add r0, r5, #0
	mov r1, #6
	bl ovy308_21a0ae0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r1, r4, #0
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, #0x30
	mov r3, #6
	bl ovy308_21a0cb8
	add r0, r7, #0
	bl sub_02013CD0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	mov r1, #0
	bl sub_020245E0
	add r0, r7, #0
	bl sub_02013CD4
	add r3, r0, #0
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	mov r1, #1
	bl sub_02024630
	add r0, r5, #0
	mov r1, #8
	bl ovy308_21a0ae0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, r4, #0
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, #0x50
	mov r3, #0
	bl ovy308_21a0cb8
	add r0, r7, #0
	bl sub_02013DB8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #5
	bl StringSetNumber
	add r0, r7, #0
	bl sub_02013DC0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #5
	bl StringSetNumber
	add r0, r5, #0
	mov r1, #0xa
	bl ovy308_21a0ae0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, r4, #0
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, #0x60
	mov r3, #0x15
	bl ovy308_21a0cb8
	add r0, r6, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl sub_02034320
	cmp r0, #0
	beq _021A100C
	add r6, #0x18
	ldr r0, [r5, r6]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl sub_020342F8
_021A100C:
	add r6, sp, #0x20
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02013D08
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x70]
	ldr r3, [sp, #0x10]
	add r2, r6, #0
	bl sub_020342A4
	add r0, r7, #0
	bl sub_02013D60
	add r1, r4, #0
	add r1, #0x7c
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x7c
	ldrb r0, [r0]
	mul r6, r1
	bl sub_0202B5E8
	add r1, r0, #0
	ldrh r0, [r5, #2]
	add r3, r5, r6
	str r0, [sp]
	ldr r2, [r3, #0x6c]
	ldr r0, [r5, #0x58]
	ldr r3, [r3, #0x68]
	bl sub_02034100
	add r0, r7, #0
	bl sub_02013D2C
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bne _021A106C
	mov r1, #0
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A106C:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy308_21a0ab8
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy308_21a0db0

	thumb_func_start ovy308_21a1084
ovy308_21a1084: ; 0x021A1084
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0x30
	ldrb r3, [r3]
	add r2, r4, #0
	ldr r0, [r4, #0x24]
	add r3, r4, r3
	add r3, #0x32
	ldrb r3, [r3]
	ldr r1, [r4, #0x28]
	add r2, #0x2c
	bl sub_02013B44
	ldr r0, [r4, #0x28]
	bl sub_02013E34
	bl ovy308_21a0a08
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02013D60
	add r1, r0, #0
	add r0, r4, #0
	bl ovy308_21a0b0c
	ldr r0, [r4, #0x28]
	bl sub_02013DA0
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	bl sub_02013DAC
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0219F73C
	add r7, r0, #0
	ldr r0, [r4, #0x28]
	bl ovy308_21a1788
	ldr r5, _021A12A8 ; =0x0000FFFF
	cmp r7, r5
	beq _021A10FA
	cmp r0, #0
	bne _021A10FA
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	mov r2, #0x10
	bl sub_0219F730
	cmp r0, r5
	bne _021A10FA
	ldr r5, _021A12AC ; =0x00000267
	ldr r0, [sp, #8]
	cmp r0, r5
	blo _021A1122
_021A10FA:
	mov r5, #0x26
	lsl r5, r5, #4
	mov r1, #0
	strb r1, [r4, r5]
	sub r0, r5, #2
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	sub r0, r5, #4
	strh r1, [r4, r0]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #8
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	b _021A11E6
_021A1122:
	mov r1, #1
	sub r0, r5, #7
	strb r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	mov r2, #2
	bl sub_0219F730
	add r1, r5, #0
	sub r1, #0xb
	strh r0, [r4, r1]
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	mov r2, #3
	bl sub_0219F730
	add r1, r5, #0
	sub r0, #0x10
	sub r1, #9
	strh r0, [r4, r1]
	add r0, r5, #0
	sub r0, #9
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	bge _021A115A
	sub r5, #9
	mov r0, #0x10
	b _021A1162
_021A115A:
	cmp r0, #0x98
	ble _021A1164
	mov r0, #0x98
	sub r5, #9
_021A1162:
	strh r0, [r4, r5]
_021A1164:
	mov r0, #0x97
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0x10
	bge _021A1172
	mov r1, #0x10
	b _021A1178
_021A1172:
	cmp r1, #0xf0
	ble _021A117A
	mov r1, #0xf0
_021A1178:
	strh r1, [r4, r0]
_021A117A:
	mov r5, #0x99
	lsl r5, r5, #2
	add r1, r5, #0
	sub r1, #8
	sub r2, r5, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r5]
	mov r3, #0
	bl ovy308_21a0ac8
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _021A11D2
	sub r5, #8
	ldrsh r0, [r4, r5]
	add r1, r0, #0
	sub r1, #0x18
	cmp r1, #0x10
	bge _021A11AE
	add r1, r0, #0
	add r1, #0x18
_021A11AE:
	mov r5, #0x9a
	lsl r5, r5, #2
	add r2, r5, #0
	sub r2, #0xa
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	ldr r0, [r4, r5]
	asr r1, r1, #0x10
	mov r3, #0
	bl ovy308_21a0ac8
	ldrb r1, [r6, #2]
	ldr r0, [r4, r5]
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy308_21a0ab8
_021A11D2:
	ldrb r0, [r6, #2]
	mov r1, #1
	cmp r0, #0
	bne _021A11DC
	mov r1, #0
_021A11DC:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0204C124
_021A11E6:
	mov r7, #0x53
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldrh r0, [r4, #0x2c]
	mov r1, #0
	mov r3, #2
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	add r2, r5, #0
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #0x2c]
	add r0, r7, #0
	sub r0, #0x14
	lsl r2, r2, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	lsr r2, r2, #0x18
	mov r3, #2
	bl StringSetNumber
	add r0, r5, #0
	mov r1, #0xc
	blx sub_0208D65C
	add r1, r0, #0
	add r1, #0xd
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy308_21a0ae0
	add r0, r7, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	sub r1, r7, #4
	str r0, [sp]
	ldr r5, _021A12B0 ; =0x00001D0F
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl ovy308_21a16b4
	add r1, r7, #0
	sub r1, #0x14
	ldr r0, [r4, #0x28]
	ldr r1, [r4, r1]
	bl ovy308_21a0a30
	ldrb r1, [r6, #1]
	add r0, r4, #0
	bl ovy308_21a0ae0
	add r0, r7, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	sub r1, r7, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x10
	str r5, [sp, #4]
	bl ovy308_21a16b4
	sub r0, r7, #4
	ldr r4, [r4, r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A12A8: .word 0x0000FFFF
_021A12AC: .word 0x00000267
_021A12B0: .word 0x00001D0F
	thumb_func_end ovy308_21a1084

	thumb_func_start ovy308_21a12b4
ovy308_21a12b4: ; 0x021A12B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [r0, #0x18]
	ldr r1, _021A1300 ; =ovy308_21a1308
	mov r2, #0xc
	mov r3, #0
	mov r7, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	strb r6, [r4]
	ldrb r0, [r4]
	cmp r0, #0
	bne _021A12E4
	strb r7, [r4, #3]
	mov r0, #8
	b _021A12EA
_021A12E4:
	mov r0, #0x40
	strb r0, [r4, #3]
	sub r0, #0x48
_021A12EA:
	strb r0, [r4, #4]
	mov r0, #8
	strb r0, [r4, #1]
	ldr r0, _021A1304 ; =0x0000054D
	bl sub_021A092C
	str r5, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1300: .word ovy308_21a1308
_021A1304: .word 0x0000054D
	thumb_func_end ovy308_21a12b4

	thumb_func_start ovy308_21a1308
ovy308_21a1308: ; 0x021A1308
	push {r3, lr}
	add r2, r1, #0
	ldrb r3, [r2, #2]
	add r1, r3, #1
	strb r1, [r2, #2]
	ldrb r1, [r2, #1]
	cmp r3, r1
	bhs _021A132E
	mov r1, #3
	mov r0, #4
	ldrsb r3, [r2, r1]
	ldrsb r0, [r2, r0]
	add r0, r3, r0
	strb r0, [r2, #3]
	ldrsb r2, [r2, r1]
	mov r0, #1
	bl sub_02044CFC
	pop {r3, pc}
_021A132E:
	ldr r2, [r2, #8]
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	bl sub_0203A870
	pop {r3, pc}
	thumb_func_end ovy308_21a1308

	thumb_func_start sub_021A133C
sub_021A133C: ; 0x021A133C
	add r1, r0, #0
	ldr r3, _021A1344 ; =ovy308_21a1348
	add r1, #0xc
	bx r3
	.align 2, 0
_021A1344: .word ovy308_21a1348
	thumb_func_end sub_021A133C

	thumb_func_start ovy308_21a1348
ovy308_21a1348: ; 0x021A1348
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021A1384 ; =ovy308_21a13b4
	mov r2, #0x10
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	str r5, [r6, #8]
	mov r0, #0x96
	strb r0, [r6, #1]
	add r0, #0x8e
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02199C68
	str r4, [r6, #0xc]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_021A1384: .word ovy308_21a13b4
	thumb_func_end ovy308_21a1348

	thumb_func_start ovy308_21a1388
ovy308_21a1388: ; 0x021A1388
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DA48
	cmp r0, #0
	bne _021A139E
	bl GCTX_HIDGetPressedKeys
	mov r2, #1
	tst r0, r2
	beq _021A13A4
_021A139E:
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_021A13A4:
	ldrb r1, [r4, #1]
	sub r0, r1, #1
	strb r0, [r4, #1]
	cmp r1, #0
	bne _021A13B0
	mov r2, #0
_021A13B0:
	add r0, r2, #0
	pop {r4, pc}
	thumb_func_end ovy308_21a1388

	thumb_func_start ovy308_21a13b4
ovy308_21a13b4: ; 0x021A13B4
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	cmp r1, #3
	bhi _021A1412
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A13CA: ; jump table
	.short _021A13D2 - _021A13CA - 2 ; case 0
	.short _021A13E4 - _021A13CA - 2 ; case 1
	.short _021A13F0 - _021A13CA - 2 ; case 2
	.short _021A140C - _021A13CA - 2 ; case 3
_021A13D2:
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r4, #4
	bl ovy308_21a12b4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021A13E4:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021A141E
	add r0, r1, #1
	strb r0, [r4]
	pop {r4, pc}
_021A13F0:
	add r0, r4, #0
	bl ovy308_21a1388
	cmp r0, #0
	bne _021A141E
	ldr r0, [r4, #8]
	mov r1, #1
	add r2, r4, #4
	bl ovy308_21a12b4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021A140C:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021A141E
_021A1412:
	ldr r2, [r4, #0xc]
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	bl sub_0203A870
_021A141E:
	pop {r4, pc}
	thumb_func_end ovy308_21a13b4

	thumb_func_start ovy308_21a1420
ovy308_21a1420: ; 0x021A1420
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021A149C ; =ovy308_21a14a0
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r6, #7
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #1
	sub r1, r0, r7
	sub r0, #0xc1
	strb r6, [r4]
	mul r0, r1
	strh r0, [r4, #4]
	ldr r0, [sp]
	cmp r0, #0
	bne _021A146A
	mov r0, #6
	ldrsh r0, [r4, r0]
	sub r0, #8
	b _021A1470
_021A146A:
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r0, #8
_021A1470:
	strh r0, [r4, #6]
	mov r0, #0x18
	strb r0, [r4, #1]
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0xc]
	bl ovy308_21a0d78
	cmp r7, #1
	beq _021A148E
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #1
	bl ovy308_21a0d20
_021A148E:
	ldr r1, [sp, #0x18]
	str r5, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A149C: .word ovy308_21a14a0
	thumb_func_end ovy308_21a1420

	thumb_func_start ovy308_21a14a0
ovy308_21a14a0: ; 0x021A14A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #1]
	add r5, r0, #0
	sub r0, r1, #1
	strb r0, [r4, #1]
	cmp r1, #0
	beq _021A14C6
	mov r1, #4
	mov r0, #6
	ldrsh r2, [r4, r1]
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r4, #4]
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0xc]
	bl ovy308_21a0d78
	pop {r3, r4, r5, pc}
_021A14C6:
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _021A14D8
	ldrb r1, [r4]
	ldr r0, [r4, #0x10]
	mov r2, #0
	bl ovy308_21a0d20
_021A14D8:
	ldr r1, [r4, #0x14]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r5, #0
	bl sub_0203A870
	pop {r3, r4, r5, pc}
	thumb_func_end ovy308_21a14a0

	thumb_func_start sub_021A14E8
sub_021A14E8: ; 0x021A14E8
	add r2, r0, #0
	ldr r3, _021A14F0 ; =ovy308_21a14f4
	add r2, #0xc
	bx r3
	.align 2, 0
_021A14F0: .word ovy308_21a14f4
	thumb_func_end sub_021A14E8

	thumb_func_start ovy308_21a14f4
ovy308_21a14f4: ; 0x021A14F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021A15A4 ; =ovy308_21a15a8
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	blx MI_CpuFill8
	strb r7, [r4, #4]
	cmp r7, #0
	bne _021A1530
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r1, #3
	add r0, r0, #1
	strb r0, [r4, #3]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	b _021A1542
_021A1530:
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r1, #2
	sub r0, r0, #1
	strb r0, [r4, #3]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
_021A1542:
	mov r2, #0
	bl sub_02199D08
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	mov r7, #1
	bl sub_02199D08
	ldrb r3, [r4, #3]
	add r2, r5, #0
	ldr r0, [r5, #0x24]
	add r3, r5, r3
	add r3, #0x32
	ldrb r3, [r3]
	ldr r1, [r5, #0x28]
	add r2, #0x2c
	bl sub_02013B44
	add r3, r5, #0
	add r3, #0x2e
	ldrb r3, [r3]
	ldrh r2, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	eor r3, r7
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl ovy308_21a0db0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #0
	eor r1, r7
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy308_21a0d20
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A15A4: .word ovy308_21a15a8
	thumb_func_end ovy308_21a14f4

	thumb_func_start ovy308_21a15a8
ovy308_21a15a8: ; 0x021A15A8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021A15CE
	mov r0, #0x49
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02199C08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A15CE
	mov r0, #1
	strb r0, [r4, #5]
_021A15CE:
	mov r5, #0x4b
	ldr r0, [r4, #0x10]
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _021A16AA
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021A169C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A15F0: ; jump table
	.short _021A15F8 - _021A15F0 - 2 ; case 0
	.short _021A1614 - _021A15F0 - 2 ; case 1
	.short _021A166E - _021A15F0 - 2 ; case 2
	.short _021A169C - _021A15F0 - 2 ; case 3
_021A15F8:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _021A16AA
	ldr r0, [r4, #0x10]
	sub r5, #8
	ldr r0, [r0, r5]
	mov r1, #0
	bl sub_02199C68
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021A1614:
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #8
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x2e
	ldrb r1, [r1]
	ldrb r3, [r4, #4]
	mov r2, #1
	mov r5, #1
	bl ovy308_21a1420
	add r1, r4, #0
	ldrb r3, [r4, #4]
	ldr r2, _021A16B0 ; =0x021A1A24
	ldr r0, [r4, #0x10]
	add r1, #8
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x2e
	ldrb r1, [r1]
	ldrb r2, [r2, r3]
	eor r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy308_21a1420
	mov r5, #0x99
	ldr r0, [r4, #0x10]
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r1, [r4, #0x10]
	add r0, r5, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C124
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021A166E:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021A16AA
	ldr r2, [r4, #0x10]
	add r0, r2, #0
	add r0, #0x2e
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x2e
	eor r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #3]
	add r0, #0x30
	strb r1, [r0]
	ldr r0, [r4, #0x10]
	bl ovy308_21a1084
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021A169C:
	ldr r1, [r4, #0x14]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r6, #0
	bl sub_0203A870
_021A16AA:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A16B0: .word 0x021A1A24
	thumb_func_end ovy308_21a15a8

	thumb_func_start ovy308_21a16b4
ovy308_21a16b4: ; 0x021A16B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4b
	add r4, r1, #0
	str r3, [sp, #0xc]
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	ldr r0, [r4, #8]
	add r7, r2, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0x4b
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r5, #0xc
	add r1, r4, #0
	add r2, r5, #0
	bl ovy308_21a1700
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy308_21a16b4

	thumb_func_start ovy308_21a1700
ovy308_21a1700: ; 0x021A1700
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	ldr r0, [r6, #0x18]
	ldr r1, _021A1734 ; =ovy308_21a1738
	mov r2, #0xc
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	str r6, [r4, #4]
	str r7, [r4]
	cmp r5, #0
	beq _021A1732
	str r5, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021A1732:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1734: .word ovy308_21a1738
	thumb_func_end ovy308_21a1700

	thumb_func_start ovy308_21a1738
ovy308_21a1738: ; 0x021A1738
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r4, [r5]
	add r7, r0, #0
	mov r0, #0x4b
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r4, #8
	ldr r6, [r1, r0]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021A176C
	ldr r0, [r4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A176C
	ldr r0, [r4]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r4, #4]
_021A176C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _021A1784
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021A177E
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021A177E:
	add r0, r7, #0
	bl sub_0203A870
_021A1784:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy308_21a1738

	thumb_func_start ovy308_21a1788
ovy308_21a1788: ; 0x021A1788
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013CC0
	sub r0, #0x14
	cmp r0, #1
	bhi _021A17B6
	add r0, r4, #0
	bl sub_02013DA0
	bl sub_02018C74
	ldr r2, _021A17BC ; =0x021A1A26
	mov r3, #0
_021A17A4:
	lsl r1, r3, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _021A17B0
	mov r0, #1
	pop {r4, pc}
_021A17B0:
	add r3, r3, #1
	cmp r3, #2
	blo _021A17A4
_021A17B6:
	mov r0, #0
	pop {r4, pc}
	nop
_021A17BC: .word 0x021A1A26
	thumb_func_end ovy308_21a1788
_021A17C0:
	.byte 0x13, 0x13, 0x13, 0x0B, 0x02, 0x00, 0x03, 0x00, 0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x00, 0x0A, 0x01, 0x00, 0x00, 0x00, 0x31, 0x00, 0x41, 0x00, 0x00, 0x00, 0x61, 0xF9, 0x19, 0x02
	.byte 0x5D, 0xFA, 0x19, 0x02, 0xF9, 0xF9, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xC8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x04, 0x08, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x06, 0x0C
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0xBF, 0x00, 0x08, 0x01, 0xC3, 0x3D, 0x03, 0x00, 0xC4, 0x3D
	.byte 0x04, 0x00, 0x02, 0x03, 0x06, 0x05, 0x04, 0x05, 0x02, 0x00, 0x01, 0x03, 0x06, 0x05, 0x04, 0x07
	.byte 0x07, 0x00, 0x00, 0x0F, 0x01, 0x01, 0x10, 0x01, 0x02, 0x11, 0x02, 0x03, 0x12, 0x02, 0x04, 0x13
	.byte 0x02, 0x05, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x65, 0x61, 0x63, 0x6F, 0x6E, 0x5F, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6C, 0x5F, 0x67, 0x72
	.byte 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A17C0
