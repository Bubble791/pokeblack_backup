    .include "macros/function.inc"
	.include "overlay35.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy35_217c940
ovy35_217c940: ; 0x0217C940
	push {r3, lr}
	ldr r2, [r1]
	cmp r2, #0
	beq _0217C952
	cmp r2, #1
	beq _0217C958
	cmp r2, #2
	beq _0217C95E
	pop {r3, pc}
_0217C952:
	bl ovy35_217ca08
	pop {r3, pc}
_0217C958:
	bl ovy35_217cd98
	pop {r3, pc}
_0217C95E:
	bl ovy35_217cb4c
	pop {r3, pc}
	thumb_func_end ovy35_217c940

	thumb_func_start ovy35_217c964
ovy35_217c964: ; 0x0217C964
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	ldr r6, [r7]
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [sp, #4]
	ldr r0, [r4]
	cmp r0, #3
	bhi _0217C9FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217C98A: ; jump table
	.short _0217C992 - _0217C98A - 2 ; case 0
	.short _0217C9AC - _0217C98A - 2 ; case 1
	.short _0217C9DC - _0217C98A - 2 ; case 2
	.short _0217C9EE - _0217C98A - 2 ; case 3
_0217C992:
	ldr r0, _0217CA04 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	blx MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	b _0217C9D4
_0217C9AC:
	bl sub_02034F6C
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	bl sub_02034FB0
	ldr r0, [sp, #4]
	bl sub_020173AC
	add r1, r0, #0
	add r0, r6, #0
	add r2, r1, #0
	bl ovy35_217ef90
_0217C9CC:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
_0217C9D4:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217C9FE
_0217C9DC:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #5
	mov r3, #0
	bl sub_0215CB48
	b _0217C9CC
_0217C9EE:
	ldr r1, [r7, #4]
	add r0, r6, #0
	bl ovy35_217cb4c
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D50
_0217C9FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217CA04: .word 0x000001FF
	thumb_func_end ovy35_217c964

	thumb_func_start ovy35_217ca08
ovy35_217ca08: ; 0x0217CA08
	push {r4, r5, r6, lr}
	ldr r2, _0217CA28 ; =ovy35_217c964
	add r4, r1, #0
	mov r1, #0
	mov r3, #8
	add r5, r0, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0217CA28: .word ovy35_217c964
	thumb_func_end ovy35_217ca08

	thumb_func_start ovy35_217ca2c
ovy35_217ca2c: ; 0x0217CA2C
	push {r4, r5, r6, lr}
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_02017214
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201736C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017934
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl ovy35_217ed20
	add r0, r5, #0
	bl sub_02017214
	bl ovy11_215cd58
	pop {r4, r5, r6, pc}
	thumb_func_end ovy35_217ca2c

	thumb_func_start ovy35_217ca60
ovy35_217ca60: ; 0x0217CA60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r5, [r6]
	add r7, r0, #0
	add r4, r1, #0
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [sp, #0xc]
	bl sub_02017394
	ldr r0, [r4]
	cmp r0, #6
	bhi _0217CB44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217CA8A: ; jump table
	.short _0217CA98 - _0217CA8A - 2 ; case 0
	.short _0217CABC - _0217CA8A - 2 ; case 1
	.short _0217CAE4 - _0217CA8A - 2 ; case 2
	.short _0217CAEC - _0217CA8A - 2 ; case 3
	.short _0217CB18 - _0217CA8A - 2 ; case 4
	.short _0217CB34 - _0217CA8A - 2 ; case 5
	.short _0217CB3E - _0217CA8A - 2 ; case 6
_0217CA98:
	add r0, r5, #0
	mov r1, #1
	bl sub_02153914
	ldrh r1, [r6, #0xc]
	add r0, r5, #0
	bl ovy35_217e788
	add r1, r6, #0
	add r0, r5, #0
	add r1, #8
	bl ovy35_217e4ac
	ldrh r0, [r6, #0xc]
	ldr r1, [sp, #0xc]
	bl sub_0202D3F0
	b _0217CB10
_0217CABC:
	ldr r0, [sp, #0xc]
	bl sub_020173AC
	mov r1, #0xc
	add r2, r0, #0
	ldrsh r1, [r6, r1]
	ldr r0, [sp, #0xc]
	bl sub_02030078
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	mov r3, #0x3c
	bl sub_0202FB24
_0217CADA:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	b _0217CB10
_0217CAE4:
	add r0, r5, #0
	bl sub_020194C4
	b _0217CADA
_0217CAEC:
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021804F0
	bl sub_0219A6A0
	mov r1, #4
	bl sub_02166FC8
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x1d
_0217CB08:
	mov r2, #0
	mov r3, #0
	bl sub_02153684
_0217CB10:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217CB44
_0217CB18:
	add r0, r5, #0
	bl sub_02016AF0
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	b _0217CADA
_0217CB34:
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x1e
	b _0217CB08
_0217CB3E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217CB44:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217ca60

	thumb_func_start ovy35_217cb4c
ovy35_217cb4c: ; 0x0217CB4C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0217CBE0 ; =ovy35_217ca60
	add r6, r1, #0
	mov r1, #0
	mov r3, #0x24
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #8
	bl sub_02019128
	ldr r0, _0217CBE4 ; =0x00000117
	bl GFL_OvlLoad
	add r0, r5, #0
	bl sub_02016AD8
	mov r1, #1
	bl sub_021E8C6C
	ldr r0, _0217CBE4 ; =0x00000117
	bl GFL_OvlUnload
	ldr r0, [r6]
	cmp r0, #0
	bne _0217CBAC
	ldr r0, _0217CBE4 ; =0x00000117
	bl GFL_OvlLoad
	add r0, r5, #0
	bl sub_02016AD8
	mov r1, #1
	bl sub_021E8C64
	ldr r0, _0217CBE4 ; =0x00000117
	bl GFL_OvlUnload
_0217CBAC:
	add r0, r5, #0
	bl ovy35_217ca2c
	ldr r0, [r4, #4]
	bl sub_02017934
	bl sub_020092E4
	bl sub_020092FC
	bl sub_02026CEC
	ldr r0, _0217CBE8 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	blx MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217CBE0: .word ovy35_217ca60
_0217CBE4: .word 0x00000117
_0217CBE8: .word 0x000001FF
	thumb_func_end ovy35_217cb4c

	thumb_func_start ovy35_217cbec
ovy35_217cbec: ; 0x0217CBEC
	push {r4, r5, r6, lr}
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_02017214
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201736C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017934
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl ovy35_217ed20
	add r0, r5, #0
	bl sub_02017214
	bl ovy11_215cd58
	pop {r4, r5, r6, pc}
	thumb_func_end ovy35_217cbec

	thumb_func_start ovy35_217cc20
ovy35_217cc20: ; 0x0217CC20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r7, [r4]
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r0, r7, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017394
	ldr r1, [r5]
	cmp r1, #4
	bls _0217CC40
	b _0217CD88
_0217CC40:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217CC4C: ; jump table
	.short _0217CC56 - _0217CC4C - 2 ; case 0
	.short _0217CCE8 - _0217CC4C - 2 ; case 1
	.short _0217CD06 - _0217CC4C - 2 ; case 2
	.short _0217CD16 - _0217CC4C - 2 ; case 3
	.short _0217CD66 - _0217CC4C - 2 ; case 4
_0217CC56:
	add r0, r6, #0
	bl sub_020175B4
	mov r1, #1
	bl sub_02019324
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0217CC9E
	add r0, r6, #0
	bl sub_02017290
	mov r1, #4
	str r0, [sp, #0x10]
	ldrsh r0, [r0, r1]
	strh r0, [r4, #8]
	add r0, r7, #0
	bl ovy35_217e8e8
	ldrh r1, [r4, #8]
	add r0, r7, #0
	bl ovy35_217e788
	add r0, r6, #0
	bl ovy35_217ec9c
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl ovy35_217e4ac
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	ldrh r0, [r0, #4]
	bl sub_0202D3F0
	b _0217CCE0
_0217CC9E:
	ldrh r1, [r4, #8]
	add r0, r7, #0
	bl ovy35_217e788
	add r0, r6, #0
	bl ovy35_217ec9c
	add r0, r6, #0
	bl sub_02162F44
	ldrh r1, [r4, #8]
	add r0, r6, #0
	bl sub_0215EF24
	ldrh r1, [r4, #8]
	add r0, r6, #0
	bl sub_02032F60
	ldrh r0, [r4, #8]
	bl sub_02018EC0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201738C
	cmp r4, #0x18
	bge _0217CCDC
	add r1, r4, #0
	bl sub_02167E8C
	b _0217CCE0
_0217CCDC:
	bl sub_021666DC
_0217CCE0:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0217CD88
_0217CCE8:
	add r0, r6, #0
	bl sub_020173AC
	add r2, r0, #0
	ldrh r1, [r4, #8]
	add r0, r6, #0
	bl sub_02030078
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x3c
	bl sub_0202FB24
	b _0217CD0C
_0217CD06:
	add r0, r7, #0
	bl sub_020194C4
_0217CD0C:
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02016D68
	b _0217CCE0
_0217CD16:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0217CD3A
	ldr r1, _0217CD90 ; =0x00004041
	bl sub_02019294
	ldrh r0, [r0]
	cmp r0, #0
	beq _0217CD3A
	mov r0, #0x15
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, _0217CD94 ; =0x0000083B
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	b _0217CD64
_0217CD3A:
	add r0, r6, #0
	bl sub_020173AC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02016AF0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r7, #0
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_021B878C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02016D68
_0217CD64:
	b _0217CCE0
_0217CD66:
	add r0, r7, #0
	bl sub_02016AF0
	add r5, r0, #0
	bl sub_0218055C
	cmp r0, #0
	beq _0217CD82
	add r0, r5, #0
	bl sub_0218055C
	ldrh r1, [r4, #8]
	bl sub_021B5120
_0217CD82:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217CD88:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0217CD90: .word 0x00004041
_0217CD94: .word 0x0000083B
	thumb_func_end ovy35_217cc20

	thumb_func_start ovy35_217cd98
ovy35_217cd98: ; 0x0217CD98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r2, _0217CE60 ; =ovy35_217cc20
	add r5, r1, #0
	str r0, [sp]
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, [sp]
	str r0, [r4]
	bl sub_02016AD8
	str r0, [r4, #4]
	ldrh r1, [r5, #0x10]
	strh r1, [r4, #8]
	bl sub_02017394
	ldr r6, _0217CE64 ; =0x00000965
	add r5, r0, #0
	add r1, r6, #0
	bl sub_020191AC
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02019200
	ldr r0, [r4, #4]
	bl sub_02017934
	add r7, r0, #0
	bl sub_020092E4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0202018C
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl PlayerSave_GetPlayerSaveOffset
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02009328
	cmp r0, #0
	bne _0217CE22
	add r0, r7, #0
	bl sub_020092F0
	bl sub_020093B0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02164428
	bl sub_02044284
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [sp, #8]
	add r1, r3, #0
	bl sub_0200CAD4
_0217CE22:
	add r0, r6, #0
	bl sub_020092FC
	ldr r0, [r4, #4]
	bl sub_020173AC
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_021649EC
	ldr r0, [sp]
	bl ovy35_217cbec
	bl sub_02026CEC
	ldr r0, _0217CE68 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	blx MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217CE60: .word ovy35_217cc20
_0217CE64: .word 0x00000965
_0217CE68: .word 0x000001FF
	thumb_func_end ovy35_217cd98

	thumb_func_start ovy35_217ce6c
ovy35_217ce6c: ; 0x0217CE6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, sp, #0
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	bl sub_02034F2C
	ldr r0, [r5, #8]
	bl sub_021804C0
	add r4, r0, #0
	ldrh r0, [r5, #0x14]
	bl sub_02018894
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r4, #0
	bl sub_02018EE4
	add r6, r0, #0
	bl sub_02018F38
	cmp r0, #0
	beq _0217CEA4
	mov r4, #1
_0217CEA4:
	add r0, r6, #0
	bl sub_02018F10
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	cmp r0, r2
	beq _0217CEC8
	cmp r4, #0
	beq _0217CEC8
	mov r0, #1
	str r0, [r5, #0x44]
	add r0, r5, #0
	add r0, #0x48
	strh r2, [r0]
	ldrh r0, [r1]
	add r5, #0x4a
	strh r0, [r5]
_0217CEC8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy35_217ce6c

	thumb_func_start ovy35_217cecc
ovy35_217cecc: ; 0x0217CECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x4c
	ldr r0, [r5]
	add r3, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	add r2, r4, #0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	add r3, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x2c]
	str r1, [r5, #0x4c]
	str r0, [r4, #0x10]
	ldrh r0, [r5, #0xc]
	add r2, #0x1c
	strh r0, [r4, #0x18]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	bl sub_021B86D4
	str r0, [r4, #0x38]
	ldrh r0, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	bl sub_021B86F0
	str r0, [r4, #0x3c]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0217CF26
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0217CF26
	mov r0, #1
	b _0217CF28
_0217CF26:
	mov r0, #0
_0217CF28:
	str r0, [r4, #0x40]
	add r0, r5, #0
	add r0, #0x48
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02034F88
	add r1, r4, #0
	add r1, #0x44
	strb r0, [r1]
	add r5, #0x4a
	add r0, r4, #0
	ldrh r1, [r5]
	add r0, #0x45
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217cecc

	thumb_func_start ovy35_217cf50
ovy35_217cf50: ; 0x0217CF50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x4c
	ldr r0, [r5]
	add r3, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	add r2, r4, #0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	add r3, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x2c]
	str r1, [r5, #0x4c]
	str r0, [r4, #0x10]
	ldrh r0, [r5, #0xc]
	add r2, #0x1c
	strh r0, [r4, #0x18]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	bl sub_021B86D4
	str r0, [r4, #0x38]
	ldrh r0, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	bl sub_021B86F0
	str r0, [r4, #0x3c]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0217CFAA
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0217CFAA
	mov r0, #1
	b _0217CFAC
_0217CFAA:
	mov r0, #0
_0217CFAC:
	str r0, [r4, #0x40]
	add r0, r5, #0
	add r0, #0x48
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02034F88
	add r1, r4, #0
	add r1, #0x44
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x4a
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x45
	strb r1, [r0]
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _0217CFDA
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_0217CFDA:
	ldr r0, [r5, #4]
	bl sub_02017240
	ldrh r1, [r5, #0x16]
	bl sub_0215D020
	bl sub_0215D13C
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217cf50

	thumb_func_start ovy35_217cff0
ovy35_217cff0: ; 0x0217CFF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [r2]
	add r6, r0, #0
	ldr r0, [r4]
	add r7, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r5, [r4, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl sub_02016B20
	ldr r1, [r7]
	str r0, [sp]
	cmp r1, #6
	bhi _0217D0AC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217D01E: ; jump table
	.short _0217D02C - _0217D01E - 2 ; case 0
	.short _0217D074 - _0217D01E - 2 ; case 1
	.short _0217D0A4 - _0217D01E - 2 ; case 2
	.short _0217D0B2 - _0217D01E - 2 ; case 3
	.short _0217D230 - _0217D01E - 2 ; case 4
	.short _0217D238 - _0217D01E - 2 ; case 5
	.short _0217D27C - _0217D01E - 2 ; case 6
_0217D02C:
	ldr r0, [sp, #4]
	bl sub_020175B4
	mov r1, #2
	bl sub_02019344
	add r0, r5, #0
	bl sub_02181318
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_02181378
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_021804D8
	add r2, r0, #0
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_021C861C
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_0201941C
_0217D064:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r7]
	add r0, r0, #1
_0217D070:
	str r0, [r7]
	b _0217D282
_0217D074:
	ldr r0, _0217D288 ; =0x00000151
	bl GFL_OvlLoad
	blx sub_02180BDC
	ldrh r0, [r4, #0x14]
	bl sub_02018B10
	cmp r0, #1
	bne _0217D0A2
	ldr r0, [sp]
	bl sub_0202BDD4
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0217D0A2
	ldr r0, [sp]
	bl sub_0202BD80
	mov r0, #2
_0217D0A0:
	b _0217D070
_0217D0A2:
	b _0217D0AE
_0217D0A4:
	bl sub_0202BDD4
	cmp r0, #0
	beq _0217D0AE
_0217D0AC:
	b _0217D282
_0217D0AE:
	mov r0, #3
	b _0217D0A0
_0217D0B2:
	ldr r0, _0217D28C ; =0x02FFFC3C
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _0217D290 ; =0x02182440
	and r0, r2
	str r0, [r1]
	lsl r3, r0, #2
	eor r0, r2
	lsl r0, r0, #2
	ldr r5, _0217D294 ; =0x0217ED1D
	ldr r1, _0217D298 ; =0x02182444
	ldr r2, _0217D29C ; =ovy35_217eccc
	str r5, [r1, r3]
	str r2, [r1, r0]
	ldr r5, _0217D2A0 ; =sub_02180A84
	str r0, [sp, #0x14]
	mov r2, #0x25
	mov r3, #0
_0217D0D6:
	ldr r1, [r5]
	mov r6, #0x20
	add r0, r1, #0
	sub r6, r6, r2
	lsr r0, r2
	lsl r1, r6
	orr r0, r1
	eor r3, r0
	add r5, r5, #4
	sub r2, r2, #1
	bne _0217D0D6
	ldr r0, _0217D2A4 ; =0x9F75A8D6
	cmp r3, r0
	bne _0217D0FC
	ldr r1, [sp, #8]
	add r0, r4, #0
	blx sub_02180A84
	b _0217D108
_0217D0FC:
	ldr r3, _0217D298 ; =0x02182444
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r2, [r3, r2]
	add r0, r4, #0
	blx r2
_0217D108:
	ldr r0, [sp, #8]
	bl ovy35_217e8e8
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0217D15A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0217D15A
	add r1, r4, #0
	add r1, #0x4a
	ldrh r1, [r1]
	ldr r0, [sp, #4]
	bl sub_02034FB0
	ldr r0, [sp, #4]
	bl sub_02017934
	bl sub_020092F0
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_020173AC
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_0201735C
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	bl sub_021649EC
	add r5, #0x14
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021643F0
_0217D15A:
	ldr r0, _0217D28C ; =0x02FFFC3C
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _0217D290 ; =0x02182440
	and r0, r2
	str r0, [r1]
	lsl r3, r0, #2
	eor r0, r2
	lsl r0, r0, #2
	ldr r5, _0217D294 ; =0x0217ED1D
	ldr r1, _0217D298 ; =0x02182444
	ldr r2, _0217D2A8 ; =ovy35_217ecf4
	str r5, [r1, r3]
	str r2, [r1, r0]
	ldr r3, _0217D2AC ; =sub_02180B30
	mov ip, r0
	mov r1, #0x25
	mov r2, #0
_0217D17E:
	ldr r0, [r3]
	mov r5, #0x20
	add r6, r0, #0
	sub r5, r5, r1
	lsr r6, r1
	lsl r0, r5
	orr r0, r6
	eor r2, r0
	add r3, r3, #4
	sub r1, r1, #1
	bne _0217D17E
	ldr r0, _0217D2A4 ; =0x9F75A8D6
	cmp r2, r0
	bne _0217D1A4
	ldr r1, [sp, #8]
	add r0, r4, #0
	blx sub_02180B30
	b _0217D1B0
_0217D1A4:
	ldr r3, _0217D298 ; =0x02182444
	mov r2, ip
	ldr r1, [sp, #8]
	ldr r2, [r3, r2]
	add r0, r4, #0
	blx r2
_0217D1B0:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #8]
	bl ovy35_217e788
	ldrh r1, [r4, #0x14]
	ldrh r2, [r4, #0xc]
	ldr r0, [sp, #4]
	bl ovy35_217e73c
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0x10
	bl ovy35_217e4ac
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #4
	beq _0217D1DE
	ldrh r0, [r4, #0x14]
	ldr r1, [sp, #4]
	bl sub_0202D3F0
_0217D1DE:
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _0217D1F2
	cmp r0, #2
	beq _0217D1FC
	cmp r0, #3
	beq _0217D206
	b _0217D20E
_0217D1F2:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	bl sub_0215EE94
	b _0217D20E
_0217D1FC:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	bl sub_0215EEDC
	b _0217D20E
_0217D206:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	bl sub_0215EEB8
_0217D20E:
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0217D21E
	ldr r0, [r4, #4]
	bl sub_0216A318
_0217D21E:
	ldr r0, _0217D288 ; =0x00000151
	bl GFL_OvlUnload
	ldr r0, [sp]
	bl sub_02153668
	ldr r0, [r7]
	add r0, r0, #1
	b _0217D0A0
_0217D230:
	ldr r0, [sp, #8]
	bl sub_020194C4
	b _0217D064
_0217D238:
	ldr r0, [sp, #8]
	bl sub_02016AF0
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_02017B24
	cmp r0, #0
	beq _0217D25A
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa0
	str r1, [r0]
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_02017B2C
_0217D25A:
	add r4, #0xa0
	ldr r0, [r4]
	cmp r0, #0
	bne _0217D26C
	add r0, r5, #0
	bl sub_02181318
	bl sub_021C85D8
_0217D26C:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_021591C0
	ldr r0, [sp, #8]
	bl sub_0202FEE8
	b _0217D064
_0217D27C:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D282:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217D288: .word 0x00000151
_0217D28C: .word 0x02FFFC3C
_0217D290: .word 0x02182440
_0217D294: .word 0x0217ED1D
_0217D298: .word 0x02182444
_0217D29C: .word ovy35_217eccc
_0217D2A0: .word sub_02180A84
_0217D2A4: .word 0x9F75A8D6
_0217D2A8: .word ovy35_217ecf4
_0217D2AC: .word sub_02180B30
	thumb_func_end ovy35_217cff0

	thumb_func_start ovy35_217d2b0
ovy35_217d2b0: ; 0x0217D2B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r2, _0217D2D4 ; =ovy35_217cff0
	mov r1, #0
	mov r3, #4
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	add r5, #0x30
	strb r4, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0217D2D4: .word ovy35_217cff0
	thumb_func_end ovy35_217d2b0

	thumb_func_start ovy35_217d2d8
ovy35_217d2d8: ; 0x0217D2D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	ldr r0, [r4]
	ldr r7, [r5, #8]
	cmp r0, #3
	bhi _0217D35C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217D2F4: ; jump table
	.short _0217D2FC - _0217D2F4 - 2 ; case 0
	.short _0217D32E - _0217D2F4 - 2 ; case 1
	.short _0217D346 - _0217D2F4 - 2 ; case 2
	.short _0217D358 - _0217D2F4 - 2 ; case 3
_0217D2FC:
	add r0, r5, #0
	bl ovy35_217ce6c
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_216740c
	add r0, r5, #0
	add r1, r6, #0
	bl ovy35_217cecc
	add r5, #0x4c
	add r0, r5, #0
	bl sub_021B733C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0x21
	pop {r3, r4, r5, r6, r7, pc}
_0217D32E:
	add r0, r5, #0
	mov r1, #0
	bl ovy35_217d2b0
_0217D336:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D35C
_0217D346:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy35_217cf50
	add r5, #0x4c
	add r0, r5, #0
	bl sub_021B774C
	b _0217D336
_0217D358:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217D35C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d2d8

	thumb_func_start ovy35_217d360
ovy35_217d360: ; 0x0217D360
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r7, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r4, r1, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0201749C
	ldr r1, [r4]
	str r0, [sp, #8]
	cmp r1, #3
	bhi _0217D3DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217D38E: ; jump table
	.short _0217D396 - _0217D38E - 2 ; case 0
	.short _0217D3AE - _0217D38E - 2 ; case 1
	.short _0217D3C8 - _0217D38E - 2 ; case 2
	.short _0217D3D4 - _0217D38E - 2 ; case 3
_0217D396:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl sub_0215C6B0
_0217D39E:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217D3A6:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D3DA
_0217D3AE:
	ldrh r2, [r5, #0x14]
	add r5, #0x4a
	ldrh r3, [r5]
	add r1, r7, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl sub_02030000
	b _0217D3A6
_0217D3C8:
	add r0, r5, #0
	add r5, #0x30
	ldrb r1, [r5]
	bl ovy35_217d2b0
	b _0217D39E
_0217D3D4:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D3DA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d360

	thumb_func_start ovy35_217d3e0
ovy35_217d3e0: ; 0x0217D3E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r3, [r4]
	add r5, r0, #0
	ldr r0, [r2]
	ldr r1, [r2, #8]
	cmp r3, #0
	beq _0217D3FA
	cmp r3, #1
	beq _0217D40E
	cmp r3, #2
	beq _0217D41A
	b _0217D41E
_0217D3FA:
	bl sub_0215C6B0
_0217D3FE:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D41E
_0217D40E:
	add r0, r2, #0
	add r2, #0x30
	ldrb r1, [r2]
	bl ovy35_217d2b0
	b _0217D3FE
_0217D41A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217D41E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217d3e0

	thumb_func_start ovy35_217d424
ovy35_217d424: ; 0x0217D424
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r7, [r2]
	ldr r6, [r2, #8]
	cmp r0, #4
	bhi _0217D504
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217D442: ; jump table
	.short _0217D44C - _0217D442 - 2 ; case 0
	.short _0217D46A - _0217D442 - 2 ; case 1
	.short _0217D49C - _0217D442 - 2 ; case 2
	.short _0217D4A8 - _0217D442 - 2 ; case 3
	.short _0217D4FE - _0217D442 - 2 ; case 4
_0217D44C:
	add r0, r2, #0
	bl ovy35_217ce6c
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0215C6B0
_0217D45A:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
_0217D462:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D504
_0217D46A:
	ldr r0, [r2, #0x40]
	cmp r0, #0
	beq _0217D47E
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _0217D47E
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0
	b _0217D48C
_0217D47E:
	ldrh r0, [r2, #0xc]
	ldrh r1, [r2, #0x14]
	bl sub_021B86D4
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
_0217D48C:
	mov r3, #0
	bl ovy36_21b870c
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	b _0217D462
_0217D49C:
	add r0, r2, #0
	add r2, #0x30
	ldrb r1, [r2]
	bl ovy35_217d2b0
	b _0217D45A
_0217D4A8:
	ldr r0, [r2, #0x40]
	cmp r0, #0
	beq _0217D4D6
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _0217D4D6
	mov r0, #0
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x48
	ldrh r0, [r0]
	add r2, #0x4a
	add r1, r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2]
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	b _0217D4EE
_0217D4D6:
	ldrh r0, [r2, #0xc]
	ldrh r1, [r2, #0x14]
	bl sub_021B86F0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
_0217D4EE:
	mov r3, #0
	bl sub_021B878C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	b _0217D462
_0217D4FE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D504:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217d424

	thumb_func_start ovy35_217d50c
ovy35_217d50c: ; 0x0217D50C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp]
	bl sub_0201749C
	ldr r1, [r4]
	str r0, [sp, #8]
	cmp r1, #5
	bhi _0217D5A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217D538: ; jump table
	.short _0217D544 - _0217D538 - 2 ; case 0
	.short _0217D55C - _0217D538 - 2 ; case 1
	.short _0217D56C - _0217D538 - 2 ; case 2
	.short _0217D586 - _0217D538 - 2 ; case 3
	.short _0217D590 - _0217D538 - 2 ; case 4
	.short _0217D59C - _0217D538 - 2 ; case 5
_0217D544:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0215C6B0
_0217D54C:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217D554:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D5A2
_0217D55C:
	add r5, #0x34
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_021B9D2C
	b _0217D54C
_0217D56C:
	ldrh r2, [r5, #0x14]
	add r5, #0x4a
	ldrh r3, [r5]
	ldr r1, [sp]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_02030000
	b _0217D554
_0217D586:
	add r0, r5, #0
	mov r1, #0
	bl ovy35_217d2b0
	b _0217D54C
_0217D590:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B9584
	b _0217D54C
_0217D59C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D5A2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d50c

	thumb_func_start ovy35_217d5a8
ovy35_217d5a8: ; 0x0217D5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp, #8]
	bl sub_0201749C
	str r0, [sp, #0x10]
	ldr r0, [r4]
	cmp r0, #5
	bhi _0217D66A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217D5D4: ; jump table
	.short _0217D5E0 - _0217D5D4 - 2 ; case 0
	.short _0217D5FE - _0217D5D4 - 2 ; case 1
	.short _0217D60C - _0217D5D4 - 2 ; case 2
	.short _0217D62E - _0217D5D4 - 2 ; case 3
	.short _0217D638 - _0217D5D4 - 2 ; case 4
	.short _0217D656 - _0217D5D4 - 2 ; case 5
_0217D5E0:
	add r0, r5, #0
	bl ovy35_217ce6c
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0215C6B0
_0217D5EE:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217D5F6:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D66A
_0217D5FE:
	ldr r1, [sp, #0xc]
	ldr r3, [r5, #0x44]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B9D68
	b _0217D5EE
_0217D60C:
	ldr r0, [sp, #8]
	bl ovy35_217ec78
	ldrh r2, [r5, #0x14]
	add r5, #0x4a
	ldrh r3, [r5]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	bl sub_02030000
	b _0217D5F6
_0217D62E:
	add r0, r5, #0
	mov r1, #2
	bl ovy35_217d2b0
	b _0217D5EE
_0217D638:
	add r0, r5, #0
	add r0, #0x48
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x4a
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r5, #0x44]
	add r0, r6, #0
	bl sub_021B95AC
	b _0217D5EE
_0217D656:
	add r0, r7, #0
	bl sub_0218055C
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	bl sub_021B50C8
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D66A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d5a8

	thumb_func_start ovy35_217d670
ovy35_217d670: ; 0x0217D670
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp, #8]
	bl sub_0201749C
	str r0, [sp, #0x10]
	ldr r0, [r4]
	cmp r0, #5
	bhi _0217D732
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217D69C: ; jump table
	.short _0217D6A8 - _0217D69C - 2 ; case 0
	.short _0217D6C6 - _0217D69C - 2 ; case 1
	.short _0217D6D4 - _0217D69C - 2 ; case 2
	.short _0217D6F6 - _0217D69C - 2 ; case 3
	.short _0217D700 - _0217D69C - 2 ; case 4
	.short _0217D71E - _0217D69C - 2 ; case 5
_0217D6A8:
	add r0, r5, #0
	bl ovy35_217ce6c
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0215C6B0
_0217D6B6:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217D6BE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D732
_0217D6C6:
	ldr r1, [sp, #0xc]
	ldr r3, [r5, #0x44]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B9D98
	b _0217D6B6
_0217D6D4:
	ldr r0, [sp, #8]
	bl ovy35_217ec78
	ldrh r2, [r5, #0x14]
	add r5, #0x4a
	ldrh r3, [r5]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	bl sub_02030000
	b _0217D6BE
_0217D6F6:
	add r0, r5, #0
	mov r1, #2
	bl ovy35_217d2b0
	b _0217D6B6
_0217D700:
	add r0, r5, #0
	add r0, #0x48
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x4a
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r5, #0x44]
	add r0, r6, #0
	bl sub_021B95E0
	b _0217D6B6
_0217D71E:
	add r0, r7, #0
	bl sub_0218055C
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	bl sub_021B50C8
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D732:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d670

	thumb_func_start ovy35_217d738
ovy35_217d738: ; 0x0217D738
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp]
	bl sub_0201749C
	str r0, [sp, #8]
	ldr r0, [r4]
	cmp r0, #5
	bhi _0217D7E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217D764: ; jump table
	.short _0217D770 - _0217D764 - 2 ; case 0
	.short _0217D788 - _0217D764 - 2 ; case 1
	.short _0217D796 - _0217D764 - 2 ; case 2
	.short _0217D7BE - _0217D764 - 2 ; case 3
	.short _0217D7C8 - _0217D764 - 2 ; case 4
	.short _0217D7D4 - _0217D764 - 2 ; case 5
_0217D770:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0215C6B0
_0217D778:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217D780:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D7E8
_0217D788:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_021B9DC8
	b _0217D778
_0217D796:
	ldr r0, [sp]
	bl sub_020171F4
	mov r1, #0
	bl sub_020175A8
	ldrh r2, [r5, #0x14]
	add r5, #0x4a
	ldrh r3, [r5]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_02030000
	b _0217D780
_0217D7BE:
	add r0, r5, #0
	mov r1, #3
	bl ovy35_217d2b0
	b _0217D778
_0217D7C8:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B9614
	b _0217D778
_0217D7D4:
	add r0, r7, #0
	bl sub_0218055C
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	bl sub_021B50C8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D7E8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217d738

	thumb_func_start ovy35_217d7f0
ovy35_217d7f0: ; 0x0217D7F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r2, #0
	ldr r6, [r0, #8]
	add r4, r1, #0
	add r0, r6, #0
	str r2, [sp, #0xc]
	ldr r7, [r2]
	bl sub_02180578
	ldr r1, [r4]
	cmp r1, #4
	bhi _0217D888
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217D818: ; jump table
	.short _0217D822 - _0217D818 - 2 ; case 0
	.short _0217D83E - _0217D818 - 2 ; case 1
	.short _0217D850 - _0217D818 - 2 ; case 2
	.short _0217D85A - _0217D818 - 2 ; case 3
	.short _0217D872 - _0217D818 - 2 ; case 4
_0217D822:
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl ovy36_21b870c
_0217D82E:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D888
_0217D83E:
	bl sub_021C0A4C
	cmp r0, #0
	beq _0217D888
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0215C6B0
	b _0217D82E
_0217D850:
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ovy35_217d2b0
	b _0217D82E
_0217D85A:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B878C
	b _0217D82E
_0217D872:
	add r0, r6, #0
	bl sub_0218055C
	ldr r1, [sp, #0xc]
	mov r2, #0x14
	ldrsh r1, [r1, r2]
	bl sub_021B50C8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217D888:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217d7f0

	thumb_func_start ovy35_217d890
ovy35_217d890: ; 0x0217D890
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r2, #0
	ldr r2, [r4]
	add r6, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	cmp r2, #4
	bhi _0217D924
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0217D8B0: ; jump table
	.short _0217D8BA - _0217D8B0 - 2 ; case 0
	.short _0217D8CE - _0217D8B0 - 2 ; case 1
	.short _0217D8D8 - _0217D8B0 - 2 ; case 2
	.short _0217D8FE - _0217D8B0 - 2 ; case 3
	.short _0217D910 - _0217D8B0 - 2 ; case 4
_0217D8BA:
	bl sub_0215C6B0
_0217D8BE:
	add r1, r0, #0
	add r0, r6, #0
_0217D8C2:
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D924
_0217D8CE:
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
	b _0217D8BE
_0217D8D8:
	ldr r2, _0217D92C ; =ovy35_217d360
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r3, r0, #0
	mov r2, #0x14
_0217D8EC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0217D8EC
	ldr r0, [r5]
	add r1, r7, #0
	str r0, [r3]
	add r0, r6, #0
	b _0217D8C2
_0217D8FE:
	mov r2, #1
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	b _0217D8BE
_0217D910:
	add r0, r1, #0
	bl sub_0218055C
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	bl sub_021B50C8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D924:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217D92C: .word ovy35_217d360
	thumb_func_end ovy35_217d890

	thumb_func_start ovy35_217d930
ovy35_217d930: ; 0x0217D930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp]
	bl sub_0201749C
	ldr r1, [r4]
	str r0, [sp, #8]
	cmp r1, #4
	bhi _0217D9CE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217D95C: ; jump table
	.short _0217D966 - _0217D95C - 2 ; case 0
	.short _0217D97E - _0217D95C - 2 ; case 1
	.short _0217D98A - _0217D95C - 2 ; case 2
	.short _0217D9AE - _0217D95C - 2 ; case 3
	.short _0217D9BA - _0217D95C - 2 ; case 4
_0217D966:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0215C6B0
_0217D96E:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217D9CE
_0217D97E:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B9DF8
	b _0217D96E
_0217D98A:
	add r3, r5, #0
	add r3, #0x4a
	ldrh r3, [r3]
	ldrh r2, [r5, #0x14]
	ldr r1, [sp]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0202FFC8
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_02030000
	add r0, r5, #0
	mov r1, #0
	bl ovy35_217d2b0
	b _0217D96E
_0217D9AE:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021B963C
	b _0217D96E
_0217D9BA:
	add r0, r7, #0
	bl sub_0218055C
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	bl sub_021B50C8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217D9CE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217d930

	thumb_func_start ovy35_217d9d4
ovy35_217d9d4: ; 0x0217D9D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r3, r2, #0
	ldr r2, [r4]
	add r5, r0, #0
	ldr r1, [r3]
	ldr r6, [r3, #8]
	ldr r7, [r3, #4]
	cmp r2, #3
	bhi _0217DA52
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0217D9F4: ; jump table
	.short _0217D9FC - _0217D9F4 - 2 ; case 0
	.short _0217DA14 - _0217D9F4 - 2 ; case 1
	.short _0217DA1E - _0217D9F4 - 2 ; case 2
	.short _0217DA4E - _0217D9F4 - 2 ; case 3
_0217D9FC:
	add r2, r6, #0
	mov r3, #0
	bl sub_021B9DC8
_0217DA04:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
_0217DA0C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217DA52
_0217DA14:
	add r0, r3, #0
	mov r1, #0
	bl ovy35_217d2b0
	b _0217DA04
_0217DA1E:
	ldr r0, _0217DA58 ; =0x0000001C
	bl GFL_OvlUnload
	ldr r0, _0217DA5C ; =0x0000001B
	bl GFL_OvlLoad
	add r0, r7, #0
	bl sub_02017424
	add r0, r6, #0
	bl sub_02180508
	mov r1, #0
	bl sub_0219847C
	mov r0, #0x15
	str r0, [sp]
	ldr r1, _0217DA60 ; =0x0000083A
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	b _0217DA0C
_0217DA4E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217DA52:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DA58: .word 0x0000001C
_0217DA5C: .word 0x0000001B
_0217DA60: .word 0x0000083A
	thumb_func_end ovy35_217d9d4

	thumb_func_start ovy35_217da64
ovy35_217da64: ; 0x0217DA64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, r2, #0
	str r2, [sp]
	ldr r6, [r2]
	ldr r5, [r1, #8]
	ldr r2, [r1, #4]
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #4
	bhi _0217DAE6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217DA86: ; jump table
	.short _0217DA90 - _0217DA86 - 2 ; case 0
	.short _0217DABA - _0217DA86 - 2 ; case 1
	.short _0217DAD0 - _0217DA86 - 2 ; case 2
	.short _0217DAD8 - _0217DA86 - 2 ; case 3
	.short _0217DAE2 - _0217DA86 - 2 ; case 4
_0217DA90:
	add r0, r2, #0
	bl sub_02017414
	add r0, r5, #0
	bl sub_02180508
	mov r1, #0
	bl sub_0219847C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0215C6B0
_0217DAAA:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0217DAB2:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217DAE6
_0217DABA:
	ldr r0, _0217DAEC ; =0x0000001B
	bl GFL_OvlUnload
	ldr r0, _0217DAF0 ; =0x0000001C
	bl GFL_OvlLoad
	ldr r0, [sp]
	mov r1, #4
	bl ovy35_217d2b0
	b _0217DAAA
_0217DAD0:
	add r0, r6, #0
	bl sub_02170EC8
	b _0217DAB2
_0217DAD8:
	add r1, r6, #0
	add r2, r5, #0
	bl sub_021B9664
	b _0217DAAA
_0217DAE2:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217DAE6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DAEC: .word 0x0000001B
_0217DAF0: .word 0x0000001C
	thumb_func_end ovy35_217da64

	thumb_func_start ovy35_217daf4
ovy35_217daf4: ; 0x0217DAF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02016AF0
	str r0, [sp]
	add r0, r6, #0
	bl sub_020173AC
	add r4, r0, #0
	ldr r0, [sp]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #8]
	bl sub_021804D8
	strh r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	add r0, r5, #0
	add r0, #0x48
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x4a
	strh r4, [r0]
	ldr r0, [r5, #8]
	bl sub_02180524
	mov r1, #1
	bl sub_021A2398
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217daf4

	thumb_func_start ovy35_217db40
ovy35_217db40: ; 0x0217DB40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217DB98 ; =ovy35_217d2d8
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	add r1, r7, #0
	bl sub_02019048
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x40]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217DB98: .word ovy35_217d2d8
	thumb_func_end ovy35_217db40

	thumb_func_start ovy35_217db9c
ovy35_217db9c: ; 0x0217DB9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217DBF8 ; =ovy35_217d2d8
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldrh r0, [r5, #6]
	mov r2, #0
	ldrh r3, [r5]
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	bl sub_0201906C
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x40]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217DBF8: .word ovy35_217d2d8
	thumb_func_end ovy35_217db9c

	thumb_func_start ovy35_217dbfc
ovy35_217dbfc: ; 0x0217DBFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217DC50 ; =ovy35_217d360
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldrh r0, [r5, #6]
	mov r2, #0
	ldrh r3, [r5]
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	bl sub_0201906C
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x40]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217DC50: .word ovy35_217d360
	thumb_func_end ovy35_217dbfc

	thumb_func_start ovy35_217dc54
ovy35_217dc54: ; 0x0217DC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	str r3, [sp, #8]
	ldr r2, _0217DCA4 ; =ovy35_217d50c
	add r7, r0, #0
	ldr r5, [sp, #0x28]
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #0xc]
	bl sub_02016EDC
	add r1, r7, #0
	add r4, r0, #0
	bl ovy35_217daf4
	ldr r0, [r5, #4]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r3, [r5]
	add r0, #0x10
	bl sub_02019048
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r4, #0x34]
	ldr r2, [r6, #8]
	str r1, [r4, #0x38]
	str r2, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217DCA4: .word ovy35_217d50c
	thumb_func_end ovy35_217dc54

	thumb_func_start ovy35_217dca8
ovy35_217dca8: ; 0x0217DCA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r2, _0217DCFC ; =ovy35_217d5a8
	add r0, r6, #0
	mov r1, #0
	mov r3, #0xa4
	mov r7, #0
	bl sub_02016CB4
	add r5, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r1, r6, #0
	bl ovy35_217daf4
	ldr r0, [r4, #4]
	bl sub_020172B4
	add r6, r0, #0
	add r3, r4, #0
	add r3, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #4]
	bl ovy35_217ec48
	mov r0, #1
	str r0, [r4, #0x10]
	str r7, [r4, #0x2c]
	str r0, [r4, #0x40]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DCFC: .word ovy35_217d5a8
	thumb_func_end ovy35_217dca8

	thumb_func_start ovy35_217dd00
ovy35_217dd00: ; 0x0217DD00
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0217DD50 ; =ovy35_217d670
	add r5, r0, #0
	mov r1, #0
	mov r3, #0xa4
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r1, r5, #0
	bl ovy35_217daf4
	ldr r0, [r4, #4]
	bl sub_020172B4
	add r5, r0, #0
	add r3, r4, #0
	add r3, #0x10
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #4]
	bl ovy35_217ec48
	mov r0, #1
	str r0, [r4, #0x10]
	str r7, [r4, #0x2c]
	str r0, [r4, #0x40]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217DD50: .word ovy35_217d670
	thumb_func_end ovy35_217dd00

	thumb_func_start ovy35_217dd54
ovy35_217dd54: ; 0x0217DD54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02016AD8
	bl sub_02017310
	add r6, r0, #0
	ldr r2, _0217DD98 ; =ovy35_217d738
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r0, r6, #0
	bl sub_02154EB0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x10
	bl sub_020190C8
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217DD98: .word ovy35_217d738
	thumb_func_end ovy35_217dd54

	thumb_func_start ovy35_217dd9c
ovy35_217dd9c: ; 0x0217DD9C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0217DDE4 ; =ovy35_217d7f0
	add r5, r0, #0
	mov r1, #0
	mov r3, #0xa4
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r1, r5, #0
	bl ovy35_217daf4
	ldr r0, [r4, #4]
	bl sub_02017290
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #2
	strh r0, [r4, #0x18]
	str r7, [r4, #0x2c]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217DDE4: .word ovy35_217d7f0
	thumb_func_end ovy35_217dd9c

	thumb_func_start ovy35_217dde8
ovy35_217dde8: ; 0x0217DDE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _0217DE60 ; =ovy35_217d890
	add r6, r1, #0
	add r4, r0, #0
	mov r1, #0
	mov r3, #0xa4
	mov r7, #0
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r5, r0, #0
	add r1, r4, #0
	bl ovy35_217daf4
	add r0, r5, #0
	add r0, #0x10
	add r1, r6, #0
	bl sub_020190C8
	str r7, [r5, #0x2c]
	mov r0, #1
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	bl sub_020171F4
	add r6, r0, #0
	bl sub_0201751C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02017544
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02017560
	add r2, r0, #0
	ldr r0, [r4, #4]
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r0, [r4, #8]
	add r6, sp, #0xc
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r6, #0
	add r1, r7, #0
	asr r2, r2, #0x10
	bl sub_02019048
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_02017298
	ldr r0, [sp, #8]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DE60: .word ovy35_217d890
	thumb_func_end ovy35_217dde8

	thumb_func_start ovy35_217de64
ovy35_217de64: ; 0x0217DE64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217DEBC ; =ovy35_217d930
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	add r1, r7, #0
	bl sub_02019048
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x40]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217DEBC: .word ovy35_217d930
	thumb_func_end ovy35_217de64

	thumb_func_start ovy35_217dec0
ovy35_217dec0: ; 0x0217DEC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r2, _0217DF0C ; =ovy35_217da64
	add r5, r0, #0
	mov r1, #0
	mov r3, #0xa4
	mov r6, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r4, r0, #0
	bl ovy35_217daf4
	mov r0, #0
	bl sub_02019168
	add r2, r0, #0
	mov r0, #0x3e
	lsl r2, r2, #0x10
	mov r3, #0x2e
	str r6, [sp]
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, _0217DF10 ; =0x000001A6
	add r0, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0xe
	bl sub_02019048
	str r6, [r4, #0x2c]
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DF0C: .word ovy35_217da64
_0217DF10: .word 0x000001A6
	thumb_func_end ovy35_217dec0

	thumb_func_start ovy35_217df14
ovy35_217df14: ; 0x0217DF14
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02016AD8
	bl sub_02017290
	add r5, r0, #0
	ldr r2, _0217DF54 ; =ovy35_217d9d4
	add r0, r6, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	ldmia r5!, {r0, r1}
	add r4, #0x10
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217DF54: .word ovy35_217d9d4
	thumb_func_end ovy35_217df14

	thumb_func_start ovy35_217df58
ovy35_217df58: ; 0x0217DF58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r6, r0, #0
	str r1, [sp, #8]
	add r5, r2, #0
	str r3, [sp, #0xc]
	bl sub_02016AF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02016AD8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	add r5, sp, #0x2c
	str r0, [r2]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy35_217e058
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020172E0
	add r0, r4, #0
	bl sub_02017934
	bl sub_0200C62C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02017A40
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	mov r4, #0
	bl sub_0200C6F0
	mov r0, #0
	bl sub_02019168
	add r2, r0, #0
	ldr r0, [sp, #0x4c]
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x50]
	add r5, sp, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x48]
	add r0, r5, #0
	asr r2, r2, #0x10
	bl sub_02019048
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	str r4, [sp]
	bl ovy35_217e974
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217df58

	thumb_func_start ovy35_217dfe0
ovy35_217dfe0: ; 0x0217DFE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02016AD8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02016AF0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020172D8
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r7, #0
	str r0, [r3]
	add r0, r4, #0
	bl ovy35_217e9c4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02016B20
	add r4, r0, #0
	bl sub_0202BDD4
	cmp r0, #0
	bne _0217E030
	add r0, r4, #0
	bl sub_0202BE00
_0217E030:
	add r0, r5, #0
	mov r1, #0
	bl sub_020175F0
	add r0, r5, #0
	mov r1, #0
	bl sub_020175D8
	add r0, r5, #0
	mov r1, #0
	bl sub_02017608
	add r0, r5, #0
	mov r1, #1
	bl sub_020175C4
	add r0, r6, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217dfe0

	thumb_func_start ovy35_217e058
ovy35_217e058: ; 0x0217E058
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804F0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02180538
	cmp r0, #0
	bne _0217E09C
	add r0, r5, #0
	bl sub_0219A6A0
	bl sub_021672F4
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021804D8
	add r1, r0, #0
	ldr r0, [r5, #4]
	mov r2, #2
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	ldr r3, [r5]
	add r0, r4, #0
	bl sub_02019048
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0217E09C:
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0219AD24
	add r0, r6, #0
	bl sub_021804D8
	add r3, sp, #8
	add r1, r0, #0
	ldrh r0, [r3, #6]
	mov r2, #2
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	ldrh r3, [r3]
	add r0, r4, #0
	bl sub_0201906C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy35_217e058

	thumb_func_start ovy35_217e0c8
ovy35_217e0c8: ; 0x0217E0C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02016AD8
	add r5, r0, #0
	ldr r2, _0217E174 ; =ovy35_217d2d8
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r1, r7, #0
	add r4, r0, #0
	bl ovy35_217daf4
	mov r0, #1
	str r0, [r4, #0x40]
	add r0, r6, #0
	bl sub_0215D03C
	cmp r0, #0
	beq _0217E11E
	add r0, r5, #0
	bl sub_02017290
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _0217E12A
_0217E11E:
	add r1, r4, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, #0x10
	bl sub_0215D0E8
_0217E12A:
	add r0, r6, #0
	bl sub_0215D13C
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_0201726C
	add r6, r0, #0
	ldrh r0, [r6, #4]
	bl sub_02018CFC
	cmp r0, #1
	bne _0217E156
	ldrh r0, [r4, #0x14]
	bl sub_02018CFC
	cmp r0, #0
	bne _0217E156
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020172BC
_0217E156:
	add r4, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl ovy35_217ebc8
	add r0, r5, #0
	bl sub_020175B4
	mov r1, #2
	bl sub_02019344
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217E174: .word ovy35_217d2d8
	thumb_func_end ovy35_217e0c8

	thumb_func_start ovy35_217e178
ovy35_217e178: ; 0x0217E178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	str r3, [sp, #8]
	ldr r2, _0217E1D4 ; =ovy35_217d360
	add r7, r0, #0
	mov r1, #0
	mov r3, #0xa4
	ldr r5, [sp, #0x28]
	bl sub_02016CB4
	str r0, [sp, #0xc]
	bl sub_02016EDC
	add r1, r7, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r7, sp, #0x28
	ldrh r0, [r7, #4]
	bl sub_02019168
	strh r0, [r7, #4]
	ldr r0, [r5, #4]
	mov r2, #4
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r7, r2]
	ldr r1, [sp, #8]
	ldr r3, [r5]
	add r0, #0x10
	bl sub_02019048
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x30
	strb r6, [r0]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217E1D4: .word ovy35_217d360
	thumb_func_end ovy35_217e178

	thumb_func_start ovy35_217e1d8
ovy35_217e1d8: ; 0x0217E1D8
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #0x10
	ldrh r2, [r2]
	add r3, r4, #0
	str r2, [sp, #4]
	mov r2, #0
	bl ovy35_217e178
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy35_217e1d8

	thumb_func_start ovy35_217e1f4
ovy35_217e1f4: ; 0x0217E1F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r3, #0
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_020171F4
	mov r1, #0
	bl sub_020175A8
	ldr r2, _0217E258 ; =ovy35_217d360
	add r0, r6, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	add r1, r6, #0
	bl ovy35_217daf4
	add r3, r4, #0
	add r3, #0x10
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	add r0, sp, #0x18
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #1
	add r4, #0x30
	strb r0, [r4]
	add r0, r7, #0
	bl ovy35_217ebc8
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217E258: .word ovy35_217d360
	thumb_func_end ovy35_217e1f4

	thumb_func_start ovy35_217e25c
ovy35_217e25c: ; 0x0217E25C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217E2B0 ; =ovy35_217d424
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	add r1, r7, #0
	bl sub_02019048
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217E2B0: .word ovy35_217d424
	thumb_func_end ovy35_217e25c

	thumb_func_start ovy35_217e2b4
ovy35_217e2b4: ; 0x0217E2B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r3, #0
	ldr r2, _0217E310 ; =ovy35_217d3e0
	add r6, r0, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r1, r6, #0
	add r4, r0, #0
	bl ovy35_217daf4
	add r6, sp, #0x20
	ldrh r0, [r6]
	bl sub_02019168
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	str r0, [sp, #4]
	add r0, r4, #0
	ldrsh r2, [r6, r2]
	add r0, #0x10
	add r1, r7, #0
	bl sub_02019048
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0x30
	strb r0, [r1]
	mov r0, #1
	add r4, #0xa0
	str r0, [r4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217E310: .word ovy35_217d3e0
	thumb_func_end ovy35_217e2b4

	thumb_func_start ovy35_217e314
ovy35_217e314: ; 0x0217E314
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	bl sub_02016AD8
	add r4, r0, #0
	bl sub_02017310
	add r7, sp, #0x1c
	add r1, r7, #0
	bl sub_02154EC4
	add r0, r4, #0
	bl sub_02017310
	bl sub_02154EB0
	add r6, sp, #0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020190C8
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020172BC
	add r0, r5, #0
	bl ovy35_217e8e8
	add r6, sp, #0
	ldrh r1, [r6, #0x20]
	add r0, r5, #0
	bl ovy35_217e788
	add r0, r5, #0
	add r1, r7, #0
	bl ovy35_217e4ac
	ldrh r0, [r6, #0x20]
	add r1, r4, #0
	bl sub_0202D3F0
	add r0, r4, #0
	bl sub_02162F44
	ldrh r1, [r6, #0x20]
	add r0, r4, #0
	bl sub_0215EF00
	add r0, r4, #0
	bl sub_0216A318
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217e314

	thumb_func_start ovy35_217e380
ovy35_217e380: ; 0x0217E380
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #3
	bhi _0217E402
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217E39A: ; jump table
	.short _0217E3A2 - _0217E39A - 2 ; case 0
	.short _0217E3AA - _0217E39A - 2 ; case 1
	.short _0217E3F6 - _0217E39A - 2 ; case 2
	.short _0217E3FE - _0217E39A - 2 ; case 3
_0217E3A2:
	ldr r0, [r5]
	bl ovy35_217e314
	b _0217E3EE
_0217E3AA:
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_020171F4
	mov r1, #0
	bl sub_020175A8
	ldr r0, [r5]
	bl sub_02016B1C
	bl sub_02031954
	bl sub_02032538
	ldr r0, [r5, #4]
	bl sub_020173AC
	mov r1, #0xc
	add r2, r0, #0
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #4]
	bl sub_02030078
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #0
	mov r3, #0x3c
	bl sub_0202FB24
_0217E3E6:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0217E3EE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217E402
_0217E3F6:
	ldr r0, [r5]
	bl sub_020194C4
	b _0217E3E6
_0217E3FE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0217E402:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy35_217e380

	thumb_func_start ovy35_217e408
ovy35_217e408: ; 0x0217E408
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02016AD8
	ldr r2, _0217E440 ; =ovy35_217e380
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x24
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	bl sub_02017310
	add r4, #8
	add r1, r4, #0
	bl sub_02154EC4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0217E440: .word ovy35_217e380
	thumb_func_end ovy35_217e408

	thumb_func_start sub_0217E444
sub_0217E444: ; 0x0217E444
	cmp r0, #4
	bhi _0217E45E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217E454: ; jump table
	.short _0217E45E - _0217E454 - 2 ; case 0
	.short _0217E45E - _0217E454 - 2 ; case 1
	.short _0217E468 - _0217E454 - 2 ; case 2
	.short _0217E462 - _0217E454 - 2 ; case 3
	.short _0217E46E - _0217E454 - 2 ; case 4
_0217E45E:
	mov r0, #0
	bx lr
_0217E462:
	mov r0, #1
	lsl r0, r0, #0xe
	bx lr
_0217E468:
	mov r0, #2
	lsl r0, r0, #0xe
	bx lr
_0217E46E:
	mov r0, #3
	lsl r0, r0, #0xe
	bx lr
	thumb_func_end sub_0217E444

	thumb_func_start ovy35_217e474
ovy35_217e474: ; 0x0217E474
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #1
	bne _0217E492
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0217E492:
	ldrh r2, [r5, #6]
	ldrh r3, [r5, #0xa]
	add r1, r4, #0
	bl sub_0215D050
	cmp r0, #0
	bne _0217E4A8
	ldrh r1, [r5, #4]
	add r0, r4, #0
	bl sub_020190C8
_0217E4A8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217e474

	thumb_func_start ovy35_217e4ac
ovy35_217e4ac: ; 0x0217E4AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r7, r1, #0
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_020171F4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02017240
	str r0, [sp]
	add r0, r5, #0
	bl sub_020175B4
	mov r1, #1
	bl sub_0201931C
	ldr r0, [sp]
	add r1, r7, #0
	add r2, sp, #4
	bl ovy35_217e474
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0217E4F2
	add r0, r5, #0
	bl sub_0201726C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02017298
_0217E4F2:
	add r1, sp, #4
	ldrh r1, [r1, #4]
	add r0, r4, #0
	bl sub_02017540
	mov r1, #8
	add r0, sp, #4
	ldrsh r0, [r0, r1]
	bl sub_0217E444
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02017548
	add r0, sp, #4
	bl sub_020190A0
	cmp r0, #0
	add r1, sp, #0x14
	bne _0217E526
	add r0, r4, #0
	bl sub_0201750C
	add r0, r4, #0
	mov r1, #0
	b _0217E530
_0217E526:
	add r0, r4, #0
	bl sub_02017520
	add r0, r4, #0
	mov r1, #1
_0217E530:
	bl sub_02017538
	add r0, r6, #0
	bl sub_02016B1C
	add r4, sp, #4
	ldrh r1, [r4, #4]
	bl sub_02031920
	add r0, r5, #0
	add r1, sp, #4
	bl sub_02017250
	mov r0, #4
	ldrsh r0, [r4, r0]
	bl sub_02154EFC
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _0217E55E
	add r0, r5, #0
	bl sub_020172FC
_0217E55E:
	add r4, sp, #4
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ovy35_217e914
	add r0, r5, #0
	bl sub_02162F44
	ldrh r1, [r4, #4]
	add r0, r5, #0
	bl sub_0215EE40
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02154F30
	add r0, r6, #0
	mov r1, #4
	bl sub_02153A00
	add r0, r5, #0
	bl sub_02017394
	bl sub_02155074
	add r0, r5, #0
	add r1, r7, #0
	bl ovy35_217e5dc
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl sub_021683F4
	ldrh r1, [r4, #4]
	add r0, r5, #0
	bl ovy35_217e754
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r6, #0
	bl sub_02032F3C
	ldrh r0, [r4, #4]
	bl sub_02018EC0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201738C
	cmp r4, #0x18
	bge _0217E5D2
	add r1, r4, #0
	bl sub_02167E8C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0217E5D2:
	bl sub_021666DC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217e4ac

	thumb_func_start ovy35_217e5dc
ovy35_217e5dc: ; 0x0217E5DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02017240
	add r7, r0, #0
	bl ovy12_0215D198
	str r0, [sp, #4]
	cmp r0, #0
	beq _0217E61A
	add r0, r5, #0
	bl sub_02017394
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201738C
	add r5, r0, #0
	add r0, r7, #0
	bl ovy12_0215D194
	mov r2, #4
	add r1, r0, #0
	ldrsh r2, [r4, r2]
	ldr r3, [sp, #4]
	add r0, r5, #0
	str r6, [sp]
	bl sub_021668C0
_0217E61A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217e5dc

	thumb_func_start ovy35_217e620
ovy35_217e620: ; 0x0217E620
	push {r3, lr}
	bl sub_0201738C
	bl sub_021669A8
	pop {r3, pc}
	thumb_func_end ovy35_217e620

	thumb_func_start ovy35_217e62c
ovy35_217e62c: ; 0x0217E62C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02017B84
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02018BFC
	cmp r0, #0
	bne _0217E64E
	add r0, r4, #0
	bl sub_02018C10
	cmp r0, #0
	beq _0217E666
_0217E64E:
	add r0, r5, #0
	bl sub_02017B7C
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	bne _0217E67C
	mov r0, #4
	mov r1, #8
	bl sub_02037FC4
	b _0217E67A
_0217E666:
	add r0, r5, #0
	bl sub_02017B7C
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _0217E67C
	bl sub_02037FF4
	mov r0, #0
_0217E67A:
	str r0, [r6]
_0217E67C:
	add r0, r4, #0
	bl sub_02018BFC
	cmp r0, #0
	beq _0217E6B0
	add r0, r5, #0
	bl sub_02017934
	bl sub_02010044
	bl sub_0201006C
	mov r1, #5
	mov r2, #0
	bl sub_02038F00
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02017B64
	mov r0, #0x18
	bl sub_02038BC8
_0217E6B0:
	add r0, r7, #0
	mov r1, #8
	mov r2, #0
	mov r6, #0
	bl sub_02039980
	add r0, r5, #0
	bl sub_02017934
	bl sub_02010044
	add r4, r0, #0
	add r0, sp, #4
	str r6, [r0]
	str r6, [r0, #4]
	add r0, r5, #0
	bl sub_02017B7C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02010050
	str r0, [sp, #4]
	ldr r0, [r5]
	cmp r0, #0
	beq _0217E6E6
	str r0, [sp, #8]
_0217E6E6:
	mov r0, #0
	str r0, [sp]
	mov r7, #0x26
_0217E6EC:
	ldr r0, [sp]
	lsl r4, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0217E72E
	mov r5, #0
	bl sub_0203802C
	cmp r0, #0
	bls _0217E72E
	add r0, sp, #4
	ldr r4, [r0, r4]
_0217E706:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02038060
	add r6, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _0217E722
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_020373EC
_0217E722:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_0203802C
	cmp r5, r0
	blo _0217E706
_0217E72E:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #2
	blt _0217E6EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy35_217e62c

	thumb_func_start ovy35_217e73c
ovy35_217e73c: ; 0x0217E73C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02017B84
	cmp r5, r4
	beq _0217E752
	mov r1, #8
	mov r2, #1
	bl sub_02039980
_0217E752:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217e73c

	thumb_func_start ovy35_217e754
ovy35_217e754: ; 0x0217E754
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020175B4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02018DD0
	add r5, r0, #0
	mov r0, #1
	tst r0, r5
	beq _0217E77E
	add r0, r4, #0
	bl sub_02019330
	cmp r0, #0
	beq _0217E77E
	mov r0, #1
	bic r5, r0
	mov r0, #2
	orr r5, r0
_0217E77E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02019334
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217e754

	thumb_func_start ovy35_217e788
ovy35_217e788: ; 0x0217E788
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AD8
	add r4, r0, #0
	bl sub_02017240
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02016AF0
	add r0, r4, #0
	bl sub_020175E4
	cmp r0, #1
	bne _0217E7BE
	add r0, r5, #0
	bl sub_02018B38
	cmp r0, #0
	bne _0217E7BE
	add r0, r4, #0
	bl sub_020175B4
	mov r1, #1
	b _0217E7C6
_0217E7BE:
	add r0, r4, #0
	bl sub_020175B4
	mov r1, #0
_0217E7C6:
	bl sub_02019318
	add r0, r5, #0
	bl sub_02018A54
	cmp r0, #0
	beq _0217E7DA
	add r0, r4, #0
	mov r1, #2
	b _0217E85E
_0217E7DA:
	add r0, r5, #0
	bl sub_02018A6C
	cmp r0, #0
	bne _0217E7F8
	add r0, r5, #0
	bl sub_02018C24
	cmp r0, #0
	bne _0217E7F8
	add r0, r5, #0
	bl sub_02018AC0
	cmp r0, #0
	beq _0217E7FE
_0217E7F8:
	add r0, r4, #0
	mov r1, #5
	b _0217E85E
_0217E7FE:
	add r0, r5, #0
	bl sub_02018AAC
	cmp r0, #0
	beq _0217E80E
	add r0, r4, #0
	mov r1, #0xb
	b _0217E85E
_0217E80E:
	add r0, r4, #0
	bl sub_020175E4
	cmp r0, #1
	bne _0217E828
	add r0, r4, #0
	bl sub_020173D4
	cmp r0, #3
	beq _0217E828
	add r0, r4, #0
	mov r1, #3
	b _0217E840
_0217E828:
	add r0, r4, #0
	bl sub_020175E4
	cmp r0, #0
	bne _0217E844
	add r0, r4, #0
	bl sub_020173D4
	cmp r0, #3
	bne _0217E844
	add r0, r4, #0
	mov r1, #0
_0217E840:
	bl sub_020173E0
_0217E844:
	add r0, r4, #0
	bl sub_020173D4
	cmp r0, #3
	beq _0217E862
	cmp r0, #4
	beq _0217E862
	cmp r0, #0xa
	beq _0217E862
	cmp r0, #6
	beq _0217E862
	add r0, r4, #0
	mov r1, #0
_0217E85E:
	bl sub_020173E0
_0217E862:
	add r0, r4, #0
	bl sub_020173AC
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0215CE30
	add r0, r4, #0
	bl sub_0201739C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020188D0
	add r1, r0, #0
	ldr r3, _0217E8E4 ; =0x00008001
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02154AB0
	ldr r2, _0217E8E4 ; =0x00008001
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02154BC0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy35_217e754
	add r0, r4, #0
	add r1, r5, #0
	bl ovy35_217e62c
	mov r0, #0
	mov r1, #0
	mov r5, #0
	bl sub_020187C4
	mov r0, #1
	mov r1, #0
	mov r6, #1
	bl sub_020187C4
	mov r0, #2
	mov r1, #0
	mov r7, #2
	bl sub_020187C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02154E70
	cmp r0, #0
	beq _0217E8E0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020187C4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020187C4
_0217E8E0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217E8E4: .word 0x00008001
	thumb_func_end ovy35_217e788

	thumb_func_start ovy35_217e8e8
ovy35_217e8e8: ; 0x0217E8E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02016AD8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	add r0, r4, #0
	bl ovy35_217e620
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217e8e8

	thumb_func_start ovy35_217e900
ovy35_217e900: ; 0x0217E900
	push {r4, lr}
	add r4, r1, #0
	bl sub_021804F0
	bl sub_0219A6A0
	add r1, r4, #0
	bl ovy12_2167534
	pop {r4, pc}
	thumb_func_end ovy35_217e900

	thumb_func_start ovy35_217e914
ovy35_217e914: ; 0x0217E914
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	bl sub_0201793C
	str r0, [sp]
	bl sub_0200BA9C
	ldr r5, _0217E970 ; =0x00008001
	mov r0, #0x66
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	mov r1, #0
	add r2, r5, #0
	mov r4, #0
	bl sub_0204AB1C
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0204AC0C
	lsr r2, r0, #3
	beq _0217E960
_0217E946:
	lsl r1, r4, #3
	ldr r0, [r5, r1]
	cmp r6, r0
	bne _0217E95A
	add r1, r5, r1
	ldrh r1, [r1, #4]
	ldr r0, [sp]
	bl sub_0200BAB4
	b _0217E960
_0217E95A:
	add r4, r4, #1
	cmp r4, r2
	blo _0217E946
_0217E960:
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r7, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217E970: .word 0x00008001
	thumb_func_end ovy35_217e914

	thumb_func_start ovy35_217e974
ovy35_217e974: ; 0x0217E974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	ldr r2, _0217E9C0 ; =ovy35_217eb10
	mov r1, #0
	mov r3, #0x34
	str r0, [sp]
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	ldr r0, [sp]
	str r0, [r4, #0x1c]
	bl sub_02016AD8
	str r0, [r4, #0x20]
	str r6, [r4, #0x24]
	str r7, [r4, #0x28]
	ldr r0, [sp, #0x20]
	add r4, #0x2c
	strb r0, [r4]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217E9C0: .word ovy35_217eb10
	thumb_func_end ovy35_217e974

	thumb_func_start ovy35_217e9c4
ovy35_217e9c4: ; 0x0217E9C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r1, #0
	ldr r2, _0217EA0C ; =ovy35_217ea10
	mov r1, #0
	mov r3, #0x34
	add r6, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [r4, #0x20]
	add r0, r6, #0
	str r7, [r4, #0x24]
	bl sub_02016B08
	bl sub_02014580
	str r0, [r4, #0x30]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217EA0C: .word ovy35_217ea10
	thumb_func_end ovy35_217e9c4

	thumb_func_start ovy35_217ea10
ovy35_217ea10: ; 0x0217EA10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #4]
	add r4, r2, #0
	ldr r0, [r5]
	ldr r7, [r4, #0x1c]
	ldr r6, [r4, #0x24]
	cmp r0, #3
	bhi _0217EB00
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217EA30: ; jump table
	.short _0217EA38 - _0217EA30 - 2 ; case 0
	.short _0217EA82 - _0217EA30 - 2 ; case 1
	.short _0217EAC0 - _0217EA30 - 2 ; case 2
	.short _0217EAEC - _0217EA30 - 2 ; case 3
_0217EA38:
	add r0, r6, #0
	bl sub_0218055C
	bl sub_021B5168
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldr r0, _0217EB08 ; =0x00000772
	beq _0217EA68
	bl GFL_SndSEPlay
	mov r0, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B8720
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016D68
	b _0217EA7A
_0217EA68:
	bl GFL_SndSEPlay
	add r0, r6, #0
	bl sub_021812A8
	ldr r1, [sp, #4]
	mov r2, #0x25
	bl sub_021C5DB8
_0217EA7A:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0217EB00
_0217EA82:
	ldr r2, _0217EB0C ; =ovy35_217d360
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xa4
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r6, r0, #0
	add r1, r7, #0
	bl ovy35_217daf4
	add r2, r6, #0
	ldmia r4!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	ldr r1, [sp, #8]
	str r0, [r2]
	mov r0, #0
	str r0, [r6, #0x2c]
	str r0, [r6, #0x40]
	ldr r0, [sp, #4]
	bl sub_02016D68
	b _0217EA7A
_0217EAC0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0217EAD2
	mov r0, #2
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	b _0217EADC
_0217EAD2:
	mov r0, #2
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0
_0217EADC:
	mov r3, #0
	bl sub_021B8850
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016D68
	b _0217EA7A
_0217EAEC:
	add r0, r6, #0
	bl sub_0218055C
	mov r1, #4
	ldrsh r1, [r4, r1]
	bl sub_021B514C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217EB00:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217EB08: .word 0x00000772
_0217EB0C: .word ovy35_217d360
	thumb_func_end ovy35_217ea10

	thumb_func_start ovy35_217eb10
ovy35_217eb10: ; 0x0217EB10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r7, r0, #0
	ldr r0, [r4, #0x1c]
	add r5, r1, #0
	bl sub_02016B20
	ldr r1, [r5]
	str r0, [sp, #4]
	cmp r1, #0
	beq _0217EB32
	cmp r1, #1
	beq _0217EB74
	cmp r1, #2
	beq _0217EBAE
	b _0217EBB4
_0217EB32:
	ldr r0, [r4, #0x1c]
	bl sub_02177408
	cmp r0, #0
	bne _0217EB40
	ldr r6, _0217EBBC ; =0x0000279C
	b _0217EB4C
_0217EB40:
	ldr r0, [r4, #0x20]
	bl sub_0216A274
	cmp r0, #0
	beq _0217EB50
	ldr r6, _0217EBC0 ; =0x000027A1
_0217EB4C:
	mov r0, #2
	b _0217EB5A
_0217EB50:
	ldr r0, [sp, #4]
	ldr r6, _0217EBC4 ; =0x0000279A
	bl sub_0202BD80
	mov r0, #1
_0217EB5A:
	str r0, [r5]
	ldr r0, [r4, #0x24]
	bl sub_021804C0
	lsl r1, r6, #0x10
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	b _0217EBB4
_0217EB74:
	bl sub_0202BDD4
	cmp r0, #0
	bne _0217EBB4
	ldr r0, [sp, #4]
	bl sub_0202BE00
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_020175F0
	bl sub_0203FFC4
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020175D8
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	add r2, r4, #0
	bl ovy35_217e9c4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	mov r0, #2
	str r0, [r5]
	b _0217EBB4
_0217EBAE:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217EBB4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217EBBC: .word 0x0000279C
_0217EBC0: .word 0x000027A1
_0217EBC4: .word 0x0000279A
	thumb_func_end ovy35_217eb10

	thumb_func_start ovy35_217ebc8
ovy35_217ebc8: ; 0x0217EBC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0201726C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02017248
	add r4, r0, #0
	ldrh r0, [r5, #4]
	bl sub_02018ECC
	cmp r0, #0
	beq _0217EC0A
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0x88
	bne _0217EBF6
	add r0, r6, #0
	add r1, r7, #0
	b _0217EC06
_0217EBF6:
	ldr r1, _0217EC40 ; =0x0000023D
	cmp r0, r1
	bne _0217EC0A
	add r0, sp, #0
	bl sub_020190C8
	add r0, r6, #0
	add r1, sp, #0
_0217EC06:
	bl sub_020172BC
_0217EC0A:
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0x9e
	bne _0217EC24
	ldrh r0, [r5, #4]
	bl sub_020189DC
	cmp r0, #0
	beq _0217EC24
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020172BC
_0217EC24:
	mov r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0x28
	bne _0217EC3C
	ldrsh r1, [r5, r0]
	ldr r0, _0217EC44 ; =0x000001EF
	cmp r1, r0
	bne _0217EC3C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020172BC
_0217EC3C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217EC40: .word 0x0000023D
_0217EC44: .word 0x000001EF
	thumb_func_end ovy35_217ebc8

	thumb_func_start ovy35_217ec48
ovy35_217ec48: ; 0x0217EC48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02017248
	ldrh r0, [r0, #4]
	bl sub_02018E50
	cmp r0, #0
	beq _0217EC74
	add r0, r5, #0
	bl sub_02017290
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_0217EC74:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217ec48

	thumb_func_start ovy35_217ec78
ovy35_217ec78: ; 0x0217EC78
	push {r4, lr}
	bl sub_020171F4
	add r4, r0, #0
	bl sub_020175A4
	cmp r0, #3
	beq _0217EC92
	add r0, r4, #0
	mov r1, #0
	bl sub_020175A8
	pop {r4, pc}
_0217EC92:
	add r0, r4, #0
	mov r1, #2
	bl sub_020175A8
	pop {r4, pc}
	thumb_func_end ovy35_217ec78

	thumb_func_start ovy35_217ec9c
ovy35_217ec9c: ; 0x0217EC9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02017934
	add r4, r0, #0
	bl sub_0202018C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020173AC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020092F0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x14
	add r3, r7, #0
	bl sub_021643F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217ec9c

	thumb_func_start ovy35_217eccc
ovy35_217eccc: ; 0x0217ECCC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0217ECE8 ; =0x00000F5B
	ldr r3, _0217ECEC ; =0x0217F5C0
	str r0, [sp]
	ldr r0, _0217ECF0 ; =0x00008004
	mov r2, #0
	lsr r1, r0, #3
	bl GFL_HeapAllocate
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0217ECE8: .word 0x00000F5B
_0217ECEC: .word 0x0217F5C0
_0217ECF0: .word 0x00008004
	thumb_func_end ovy35_217eccc

	thumb_func_start ovy35_217ecf4
ovy35_217ecf4: ; 0x0217ECF4
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _0217ED10 ; =0x00000F61
	ldr r3, _0217ED14 ; =0x0217F5C0
	str r0, [sp]
	ldr r0, _0217ED18 ; =0x00008004
	add r4, r1, #0
	lsr r1, r0, #3
	mov r2, #0
	bl GFL_HeapAllocate
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0217ED10: .word 0x00000F61
_0217ED14: .word 0x0217F5C0
_0217ED18: .word 0x00008004
	thumb_func_end ovy35_217ecf4
_0217ED1C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy35_217ed20
ovy35_217ed20: ; 0x0217ED20
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_020104A4
	bl sub_02010564
	mov r1, #1
	strh r1, [r4]
	cmp r0, #0
	bne _0217ED3C
	mov r0, #0
	strh r0, [r4, #2]
	pop {r4, pc}
_0217ED3C:
	strh r1, [r4, #2]
	pop {r4, pc}
	thumb_func_end ovy35_217ed20

	thumb_func_start sub_0217ED40
sub_0217ED40: ; 0x0217ED40
	ldrh r1, [r0]
	cmp r1, #1
	bne _0217ED50
	ldrh r0, [r0, #2]
	cmp r0, #2
	blo _0217ED50
	mov r0, #0
	bx lr
_0217ED50:
	mov r0, #1
	bx lr
	thumb_func_end sub_0217ED40

	thumb_func_start ovy35_217ed54
ovy35_217ed54: ; 0x0217ED54
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	bne _0217ED60
	mov r0, #0
	pop {r3, pc}
_0217ED60:
	bl sub_0217ED40
	cmp r0, #0
	beq _0217ED6C
	mov r0, #1
	pop {r3, pc}
_0217ED6C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy35_217ed54

	thumb_func_start ovy35_217ed70
ovy35_217ed70: ; 0x0217ED70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	add r5, r3, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r6, sp, #0x48
	str r0, [sp]
	ldrh r0, [r6, #8]
	ldr r3, _0217EDFC ; =0x0217F5E4
	mov r1, #0x1c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	bl sub_02169FB0
	sub r0, r0, #1
	strh r0, [r4, #4]
	bl sub_02169FB0
	sub r0, r0, #1
	strh r0, [r4, #6]
	mov r0, #0
	sub r0, r0, #1
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r5, [sp]
	ldrh r0, [r6]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r6, #4]
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0x31
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	ldrh r0, [r6, #8]
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl sub_02169E18
	cmp r0, #0
	beq _0217EDF4
	ldr r0, [sp, #0x24]
	str r0, [r4, #8]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x10]
	add r0, sp, #0x20
	ldrh r1, [r0]
	strh r1, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
_0217EDF4:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0217EDFC: .word 0x0217F5E4
	thumb_func_end ovy35_217ed70
_0217EE00:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy35_217ee08
ovy35_217ee08: ; 0x0217EE08
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x18]
	mov r2, #0
	add r1, r1, #1
	ldr r3, [r0, #0x14]
	mvn r2, r2
	str r1, [r0, #0x18]
	cmp r3, r2
	beq _0217EE28
	ldr r0, [r0, #0xc]
	str r0, [sp]
	add r0, sp, #0
	str r3, [sp, #4]
	bl ovy35_217ee2c
_0217EE28:
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy35_217ee08

	thumb_func_start ovy35_217ee2c
ovy35_217ee2c: ; 0x0217EE2C
	push {r4, lr}
	add r4, r0, #0
	add r2, r1, #0
	ldr r1, [r4]
	ldr r3, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0xd
	add r1, r3, r1
	mov r3, #0x1f
	and r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	asr r2, r2, #3
	lsl r3, r2, #2
	ldr r2, _0217EE58 ; =0x0217F5D4
	mov r0, #1
	ldr r2, [r2, r3]
	mov r3, #8
	bl sub_0205FA10
	pop {r4, pc}
	.align 2, 0
_0217EE58: .word 0x0217F5D4
	thumb_func_end ovy35_217ee2c

	thumb_func_start ovy35_217ee5c
ovy35_217ee5c: ; 0x0217EE5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #5
	bhi _0217EE9C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217EE74: ; jump table
	.short _0217EE80 - _0217EE74 - 2 ; case 0
	.short _0217EE9C - _0217EE74 - 2 ; case 1
	.short _0217EE88 - _0217EE74 - 2 ; case 2
	.short _0217EE9C - _0217EE74 - 2 ; case 3
	.short _0217EE90 - _0217EE74 - 2 ; case 4
	.short _0217EE92 - _0217EE74 - 2 ; case 5
_0217EE80:
	add r0, r4, #0
	bl ovy35_217f474
	b _0217EE9C
_0217EE88:
	add r0, r4, #0
	bl ovy35_217f198
	b _0217EE9C
_0217EE90:
	b _0217EE88
_0217EE92:
	add r0, r4, #0
	bl ovy35_217f484
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217EE9C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0217EEB6
	add r0, r4, #0
	bl sub_0217F4A8
	cmp r0, #0
	bne _0217EEB6
	add r0, r4, #0
	bl sub_0217F4B0
_0217EEB6:
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	add r0, r0, #1
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ovy35_217f454
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217ee5c

	thumb_func_start ovy35_217eec8
ovy35_217eec8: ; 0x0217EEC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	str r1, [sp]
	add r6, r3, #0
	ldr r2, _0217EF2C ; =ovy35_217ee5c
	mov r1, #0
	mov r3, #0x28
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02016EE0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r5, [r4]
	str r0, [r4, #4]
	bl sub_021804C0
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r6, [r4, #0x14]
	ldr r0, [sp, #4]
	bl sub_02034F9C
	strb r0, [r4, #0x15]
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	bl sub_02181318
	bl sub_021C85FC
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	bl ovy35_217f3a8
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217EF2C: .word ovy35_217ee5c
	thumb_func_end ovy35_217eec8

	thumb_func_start ovy35_217ef30
ovy35_217ef30: ; 0x0217EF30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	str r1, [sp]
	add r6, r3, #0
	ldr r2, _0217EF8C ; =ovy35_217ee5c
	mov r1, #0
	mov r3, #0x28
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02016EE0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r5, [r4]
	str r0, [r4, #4]
	bl sub_021804C0
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r6, [r4, #0x14]
	ldr r0, [sp, #4]
	bl sub_02034F9C
	strb r0, [r4, #0x15]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl ovy35_217f3a8
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217EF8C: .word ovy35_217ee5c
	thumb_func_end ovy35_217ef30

	thumb_func_start ovy35_217ef90
ovy35_217ef90: ; 0x0217EF90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	str r1, [sp]
	ldr r2, _0217EFE4 ; =ovy35_217ee5c
	mov r1, #0
	mov r3, #0x28
	add r5, r0, #0
	mov r7, #0
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016EE0
	str r5, [r4]
	str r0, [sp, #8]
	str r7, [r4, #4]
	mov r0, #4
	strh r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	strb r6, [r4, #0x14]
	ldr r0, [sp]
	bl sub_02034F9C
	strb r0, [r4, #0x15]
	str r7, [r4, #0x20]
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	str r7, [r4, #0x24]
	bl ovy35_217f3a8
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217EFE4: .word ovy35_217ee5c
	thumb_func_end ovy35_217ef90

	thumb_func_start ovy35_217efe8
ovy35_217efe8: ; 0x0217EFE8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0217F4A8
	cmp r0, #0
	beq _0217EFFA
	cmp r0, #1
	beq _0217F002
	pop {r4, pc}
_0217EFFA:
	add r0, r4, #0
	bl ovy35_217f00c
	pop {r4, pc}
_0217F002:
	add r0, r4, #0
	bl ovy35_217f048
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy35_217efe8

	thumb_func_start ovy35_217f00c
ovy35_217f00c: ; 0x0217F00C
	push {r4, lr}
	bl sub_02046E10
	add r4, r0, #0
	bl sub_021805E0
	add r0, r4, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	mov r1, #1
	bl sub_02044BD8
	mov r0, #3
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #3
	bl sub_02044BD8
	mov r0, #2
	mov r1, #3
	bl sub_02044BD8
	mov r0, #3
	bl sub_02045708
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy35_217f00c

	thumb_func_start ovy35_217f048
ovy35_217f048: ; 0x0217F048
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0217F090 ; =0x0217F57C
	bl GFL_BGSysSetVRAMBanks
	ldrh r0, [r4, #8]
	bl GFL_BGSysCreate
	ldr r0, _0217F094 ; =0x0217F54C
	bl GFL_BGSysSetLCDConfig
	ldr r1, _0217F098 ; =0x0217F55C
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	mov r1, #1
	bl sub_02044BD8
	mov r0, #3
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #3
	bl sub_02044BD8
	mov r0, #2
	mov r1, #3
	bl sub_02044BD8
	mov r0, #3
	bl sub_02045708
	pop {r4, pc}
	.align 2, 0
_0217F090: .word 0x0217F57C
_0217F094: .word 0x0217F54C
_0217F098: .word 0x0217F55C
	thumb_func_end ovy35_217f048

	thumb_func_start ovy35_217f09c
ovy35_217f09c: ; 0x0217F09C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0217F4A8
	cmp r0, #0
	beq _0217F0AE
	cmp r0, #1
	beq _0217F0B6
	pop {r4, pc}
_0217F0AE:
	add r0, r4, #0
	bl sub_0217F0C0
	pop {r4, pc}
_0217F0B6:
	add r0, r4, #0
	bl ovy35_217f0c4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy35_217f09c

	thumb_func_start sub_0217F0C0
sub_0217F0C0: ; 0x0217F0C0
	bx lr
	.align 2, 0
	thumb_func_end sub_0217F0C0

	thumb_func_start ovy35_217f0c4
ovy35_217f0c4: ; 0x0217F0C4
	push {r3, lr}
	mov r0, #3
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy35_217f0c4

	thumb_func_start ovy35_217f0d4
ovy35_217f0d4: ; 0x0217F0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	cmp r0, #3
	bhi _0217F0F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217F0EA: ; jump table
	.short _0217F0F2 - _0217F0EA - 2 ; case 0
	.short _0217F0FA - _0217F0EA - 2 ; case 1
	.short _0217F102 - _0217F0EA - 2 ; case 2
	.short _0217F10A - _0217F0EA - 2 ; case 3
_0217F0F2:
	mov r6, #0
	mov r4, #1
	mov r5, #2
	b _0217F110
_0217F0FA:
	mov r6, #3
	mov r4, #4
	mov r5, #5
	b _0217F110
_0217F102:
	mov r6, #6
	mov r4, #7
	mov r5, #8
	b _0217F110
_0217F10A:
	mov r6, #9
	mov r4, #0xa
	mov r5, #0xb
_0217F110:
	mov r0, #0x96
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp]
	bl sub_0204AB1C
	add r1, sp, #0xc
	add r6, r0, #0
	bl sub_020602D8
	ldr r1, [sp, #0xc]
	mov r0, #3
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0
	bl sub_02045320
	add r0, r6, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_020602A8
	ldr r2, [sp, #8]
	mov r0, #3
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0204AB1C
	add r1, sp, #4
	add r4, r0, #0
	bl sub_02060338
	ldr r2, [sp, #4]
	mov r0, #3
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	mov r3, #0
	bl sub_02044FB0
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy35_217f0d4

	thumb_func_start ovy35_217f198
ovy35_217f198: ; 0x0217F198
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0217F4A8
	cmp r0, #0
	beq _0217F1AC
	cmp r0, #1
	beq _0217F1B6
	pop {r3, r4, r5, pc}
_0217F1AC:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy35_217f1c0
	pop {r3, r4, r5, pc}
_0217F1B6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy35_217f2c0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy35_217f198

	thumb_func_start ovy35_217f1c0
ovy35_217f1c0: ; 0x0217F1C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	cmp r1, #2
	bne _0217F202
	ldr r0, [r5, #0x18]
	blx sub_0208D3BC
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0217F2B0 ; =0x41800000
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0217F2B4 ; =0xC1800000
	blx sub_0208DF14
	blx sub_0208DA4C
	add r2, r0, #0
	ldr r0, _0217F2B8 ; =0x04000050
	mov r1, #8
	bl G2x_SetBlendBrightness_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0217F202:
	cmp r1, #4
	bne _0217F2AC
	ldrb r1, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	ldr r0, [r5, #0x18]
	bne _0217F27A
	blx sub_0208D3BC
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	ldr r6, _0217F2B0 ; =0x41800000
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DD34
	blx sub_0208DA4C
	add r4, r0, #0
	mov r3, #0x10
	ldr r0, _0217F2B8 ; =0x04000050
	mov r1, #8
	mov r2, #0x11
	sub r3, r3, r4
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, [r5, #0x18]
	blx sub_0208D3BC
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0217F2B4 ; =0xC1800000
	blx sub_0208DF14
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, _0217F2BC ; =0x0400106C
	bl GXx_SetMasterBrightness_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0217F27A:
	blx sub_0208D3BC
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0217F2B0 ; =0x41800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0
	blx sub_0208E144
	blx sub_0208DA4C
	add r2, r0, #0
	ldr r0, _0217F2B8 ; =0x04000050
	mov r1, #8
	bl G2x_SetBlendBrightness_
_0217F2AC:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0217F2B0: .word 0x41800000
_0217F2B4: .word 0xC1800000
_0217F2B8: .word 0x04000050
_0217F2BC: .word 0x0400106C
	thumb_func_end ovy35_217f1c0

	thumb_func_start ovy35_217f2c0
ovy35_217f2c0: ; 0x0217F2C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #2
	bne _0217F2FE
	ldr r0, [r4, #0x18]
	blx sub_0208D3BC
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0217F338 ; =0x41800000
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0217F33C ; =0xC1800000
	blx sub_0208DF14
	blx sub_0208DA4C
	add r2, r0, #0
	ldr r0, _0217F340 ; =0x04000050
	mov r1, #8
	bl G2x_SetBlendBrightness_
	pop {r3, r4, r5, pc}
_0217F2FE:
	cmp r1, #4
	bne _0217F336
	ldr r0, [r4, #0x18]
	blx sub_0208D3BC
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0217F338 ; =0x41800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0
	blx sub_0208E144
	blx sub_0208DA4C
	add r2, r0, #0
	ldr r0, _0217F340 ; =0x04000050
	mov r1, #8
	bl G2x_SetBlendBrightness_
_0217F336:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217F338: .word 0x41800000
_0217F33C: .word 0xC1800000
_0217F340: .word 0x04000050
	thumb_func_end ovy35_217f2c0

	thumb_func_start ovy35_217f344
ovy35_217f344: ; 0x0217F344
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #5
	bhi _0217F3A2
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217F35A: ; jump table
	.short _0217F366 - _0217F35A - 2 ; case 0
	.short _0217F368 - _0217F35A - 2 ; case 1
	.short _0217F36C - _0217F35A - 2 ; case 2
	.short _0217F378 - _0217F35A - 2 ; case 3
	.short _0217F38E - _0217F35A - 2 ; case 4
	.short _0217F3A2 - _0217F35A - 2 ; case 5
_0217F366:
	b _0217F3A0
_0217F368:
	mov r4, #2
	b _0217F3A2
_0217F36C:
	bl sub_0217F4B8
	cmp r0, #1
	bne _0217F3A2
	mov r4, #3
	b _0217F3A2
_0217F378:
	bl sub_0217F4B8
	cmp r0, #1
	beq _0217F38A
	add r0, r5, #0
	bl sub_0217F4AC
	cmp r0, #1
	bne _0217F3A2
_0217F38A:
	mov r4, #4
	b _0217F3A2
_0217F38E:
	bl sub_0217F4B8
	cmp r0, #1
	bne _0217F3A2
	ldrb r1, [r5, #0x14]
	ldrb r0, [r5, #0x15]
	mov r4, #5
	cmp r1, r0
	beq _0217F3A2
_0217F3A0:
	mov r4, #1
_0217F3A2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217f344

	thumb_func_start ovy35_217f3a8
ovy35_217f3a8: ; 0x0217F3A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r0, #0
	add r7, r1, #0
	cmp r5, #5
	bhi _0217F448
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217F3C0: ; jump table
	.short _0217F3CC - _0217F3C0 - 2 ; case 0
	.short _0217F3D2 - _0217F3C0 - 2 ; case 1
	.short _0217F3E4 - _0217F3C0 - 2 ; case 2
	.short _0217F416 - _0217F3C0 - 2 ; case 3
	.short _0217F41C - _0217F3C0 - 2 ; case 4
	.short _0217F448 - _0217F3C0 - 2 ; case 5
_0217F3CC:
	bl ovy35_217efe8
	b _0217F448
_0217F3D2:
	ldrb r0, [r4, #0x15]
	bl sub_02034F88
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	ldrh r1, [r4, #8]
	bl ovy35_217f0d4
	b _0217F448
_0217F3E4:
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	ldr r6, _0217F450 ; =0x0400006C
	mov r1, #0
	add r0, r6, #0
	bl GXx_SetMasterBrightness_
	sub r6, #0x1c
	mov r2, #8
	add r0, r6, #0
	mov r1, #8
	sub r2, #0x18
	bl G2x_SetBlendBrightness_
	add r0, r4, #0
	bl ovy35_217f4c8
_0217F412:
	str r0, [r4, #0x1c]
	b _0217F448
_0217F416:
	bl ovy35_217f4fc
	b _0217F412
_0217F41C:
	bl ovy35_217f4dc
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl sub_0217F4A8
	cmp r0, #0
	bne _0217F448
	ldrb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	bne _0217F448
	ldr r0, [r4, #4]
	bl ovy36_21805f0
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl ovy35_217f51c
_0217F448:
	str r5, [r7]
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217F450: .word 0x0400006C
	thumb_func_end ovy35_217f3a8

	thumb_func_start ovy35_217f454
ovy35_217f454: ; 0x0217F454
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	bl ovy35_217f344
	add r2, r0, #0
	ldr r0, [r4]
	cmp r0, r2
	beq _0217F470
	add r0, r5, #0
	add r1, r4, #0
	bl ovy35_217f3a8
_0217F470:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217f454

	thumb_func_start ovy35_217f474
ovy35_217f474: ; 0x0217F474
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0217F482
	mov r1, #1
	bl sub_021812F0
_0217F482:
	pop {r3, pc}
	thumb_func_end ovy35_217f474

	thumb_func_start ovy35_217f484
ovy35_217f484: ; 0x0217F484
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #3
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0217F49E
	add r1, r4, #0
	bl sub_021812F0
_0217F49E:
	add r0, r5, #0
	bl ovy35_217f09c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy35_217f484

	thumb_func_start sub_0217F4A8
sub_0217F4A8: ; 0x0217F4A8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0217F4A8

	thumb_func_start sub_0217F4AC
sub_0217F4AC: ; 0x0217F4AC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0217F4AC

	thumb_func_start sub_0217F4B0
sub_0217F4B0: ; 0x0217F4B0
	mov r1, #1
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0217F4B0

	thumb_func_start sub_0217F4B8
sub_0217F4B8: ; 0x0217F4B8
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	cmp r1, r0
	bhs _0217F4C4
	mov r0, #1
	bx lr
_0217F4C4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0217F4B8

	thumb_func_start ovy35_217f4c8
ovy35_217f4c8: ; 0x0217F4C8
	push {r3, lr}
	bl sub_0217F4A8
	cmp r0, #1
	bne _0217F4D6
	mov r0, #0x1e
	pop {r3, pc}
_0217F4D6:
	mov r0, #0xa
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy35_217f4c8

	thumb_func_start ovy35_217f4dc
ovy35_217f4dc: ; 0x0217F4DC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0217F4A8
	cmp r0, #1
	bne _0217F4EC
	mov r0, #0x3c
	pop {r4, pc}
_0217F4EC:
	ldrb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	bne _0217F4F8
	mov r0, #0x14
	pop {r4, pc}
_0217F4F8:
	mov r0, #0xa
	pop {r4, pc}
	thumb_func_end ovy35_217f4dc

	thumb_func_start ovy35_217f4fc
ovy35_217f4fc: ; 0x0217F4FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0217F4A8
	cmp r0, #1
	bne _0217F50C
	mov r0, #0x78
	pop {r4, pc}
_0217F50C:
	ldrb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	bne _0217F518
	mov r0, #0x3c
	pop {r4, pc}
_0217F518:
	mov r0, #0x1e
	pop {r4, pc}
	thumb_func_end ovy35_217f4fc

	thumb_func_start ovy35_217f51c
ovy35_217f51c: ; 0x0217F51C
	push {r3, lr}
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0217F528
	ldr r0, [r0, #0x24]
	blx r1
_0217F528:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy35_217f51c
_0217F52C:
	.byte 0x00, 0x00, 0x08, 0x21
	.byte 0xF3, 0x0D, 0x1F, 0x03, 0x00, 0x00, 0xC6, 0x18, 0xF3, 0x0D, 0x1F, 0x03, 0x00, 0x00, 0x08, 0x21
	.byte 0x73, 0x0D, 0x1F, 0x02, 0x00, 0x00, 0xC6, 0x18, 0x73, 0x0D, 0x1F, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x76, 0x65, 0x6E, 0x74, 0x5F, 0x6D, 0x61, 0x70, 0x63, 0x68, 0x61, 0x6E, 0x67, 0x65, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x44, 0xF5, 0x17, 0x02, 0x3C, 0xF5, 0x17, 0x02, 0x34, 0xF5, 0x17, 0x02
	.byte 0x2C, 0xF5, 0x17, 0x02, 0x65, 0x6C, 0x5F, 0x73, 0x63, 0x6F, 0x72, 0x65, 0x62, 0x6F, 0x61, 0x72
	.byte 0x64, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0217F52C
