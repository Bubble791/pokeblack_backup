    .include "macros/function.inc"
	.include "overlay261.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy261_2176b00
ovy261_2176b00: ; 0x02176B00
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r0, #0
	ldr r2, _02176B58 ; =0x00030200
	mov r0, #1
	mov r1, #0x4e
	mov r6, #0x4e
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x4e
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4, #0x28]
	ldr r0, _02176B5C ; =0x0000008B
	strh r6, [r4]
	bl sub_0203CE0C
	ldr r0, _02176B60 ; =0x00000106
	bl sub_0203CE0C
	add r0, r4, #0
	bl ovy261_2176bd4
	add r0, r4, #0
	bl ovy261_2176c0c
	add r0, r4, #0
	bl ovy261_2176c30
	ldr r1, _02176B64 ; =ovy261_2176cf4
	add r0, r4, #0
	mov r2, #0x4e
	bl sub_021C5C10
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02176B58: .word 0x00030200
_02176B5C: .word 0x0000008B
_02176B60: .word 0x00000106
_02176B64: .word ovy261_2176cf4
	thumb_func_end ovy261_2176b00

	thumb_func_start ovy261_2176b68
ovy261_2176b68: ; 0x02176B68
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_021C5C4C
	add r0, r4, #0
	bl ovy261_2176c7c
	add r0, r4, #0
	bl sub_02176C24
	add r0, r4, #0
	bl ovy261_2176be4
	ldr r0, _02176BA4 ; =0x00000106
	bl sub_0203CDC8
	ldr r0, _02176BA8 ; =0x0000008B
	bl sub_0203CDC8
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x4e
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02176BA4: .word 0x00000106
_02176BA8: .word 0x0000008B
	thumb_func_end ovy261_2176b68

	thumb_func_start ovy261_2176bac
ovy261_2176bac: ; 0x02176BAC
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy261_2176bf4
	add r0, r4, #0
	bl ovy261_2176c9c
	ldr r0, [r4, #4]
	bl sub_021C5C54
	ldr r0, [r4, #4]
	bl sub_021C5C64
	cmp r0, #0
	beq _02176BD0
	mov r0, #1
	pop {r4, pc}
_02176BD0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy261_2176bac

	thumb_func_start ovy261_2176bd4
ovy261_2176bd4: ; 0x02176BD4
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	mov r0, #1
	bl sub_021C2560
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ovy261_2176bd4

	thumb_func_start ovy261_2176be4
ovy261_2176be4: ; 0x02176BE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_021C2600
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ovy261_2176be4

	thumb_func_start ovy261_2176bf4
ovy261_2176bf4: ; 0x02176BF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02176C08
	bl sub_021C2654
	ldr r0, [r4, #0x20]
	bl sub_021C2AA0
_02176C08:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2176bf4

	thumb_func_start ovy261_2176c0c
ovy261_2176c0c: ; 0x02176C0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_021C2668
	ldrh r2, [r4]
	mov r1, #1
	bl sub_021C279C
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2176c0c

	thumb_func_start sub_02176C24
sub_02176C24: ; 0x02176C24
	ldr r0, [r0, #0x20]
	ldr r3, _02176C2C ; =sub_021C2988
	bx r3
	nop
_02176C2C: .word sub_021C2988
	thumb_func_end sub_02176C24

	thumb_func_start ovy261_2176c30
ovy261_2176c30: ; 0x02176C30
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0xc]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #7
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x10]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r2, #0xe
	mov r3, #0xa
	str r0, [sp, #8]
	mov r0, #0
	bl sub_021C568C
	str r0, [r4, #8]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2176c30

	thumb_func_start ovy261_2176c7c
ovy261_2176c7c: ; 0x02176C7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021C5750
	ldr r0, [r4, #0x14]
	bl sub_02021A18
	ldr r0, [r4, #0x10]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2176c7c

	thumb_func_start ovy261_2176c9c
ovy261_2176c9c: ; 0x02176C9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy262_21c57a4
	ldr r0, [r4, #0x14]
	bl sub_02021A3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2176c9c

	thumb_func_start ovy261_2176cb0
ovy261_2176cb0: ; 0x02176CB0
	push {r3, lr}
	ldr r1, [r2, #0x28]
	ldr r1, [r1, #4]
	cmp r1, #6
	bhi _02176CE2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02176CC6: ; jump table
	.short _02176CD4 - _02176CC6 - 2 ; case 0
	.short _02176CD4 - _02176CC6 - 2 ; case 1
	.short _02176CD4 - _02176CC6 - 2 ; case 2
	.short _02176CDC - _02176CC6 - 2 ; case 3
	.short _02176CDC - _02176CC6 - 2 ; case 4
	.short _02176CDC - _02176CC6 - 2 ; case 5
	.short _02176CDC - _02176CC6 - 2 ; case 6
_02176CD4:
	ldr r1, _02176CE4 ; =ovy261_2176db0
	bl sub_021C5C74
	pop {r3, pc}
_02176CDC:
	ldr r1, _02176CE8 ; =ovy261_2176ea4
	bl sub_021C5C74
_02176CE2:
	pop {r3, pc}
	.align 2, 0
_02176CE4: .word ovy261_2176db0
_02176CE8: .word ovy261_2176ea4
	thumb_func_end ovy261_2176cb0
_02176CEC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x7D, 0x5C, 0x1C, 0x02

	thumb_func_start ovy261_2176cf4
ovy261_2176cf4: ; 0x02176CF4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _02176D08
	cmp r1, #1
	beq _02176D1A
	cmp r1, #2
	beq _02176D28
	b _02176D30
_02176D08:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_02176D1A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _02176D3A
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_02176D28:
	ldr r1, _02176D3C ; =ovy261_2176cb0
	bl sub_021C5C74
	pop {r4, pc}
_02176D30:
	ldr r0, _02176D40 ; =0x0217A860
	ldr r2, _02176D44 ; =0x0217A864
	mov r1, #0
	bl sub_0203CB80
_02176D3A:
	pop {r4, pc}
	.align 2, 0
_02176D3C: .word ovy261_2176cb0
_02176D40: .word 0x0217A860
_02176D44: .word 0x0217A864
	thumb_func_end ovy261_2176cf4

	thumb_func_start ovy261_2176d48
ovy261_2176d48: ; 0x02176D48
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _02176D5C
	cmp r1, #1
	beq _02176D80
	cmp r1, #2
	beq _02176D8E
	b _02176D96
_02176D5C:
	ldr r0, [r2, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02176D6E
	mov r0, #6
	bl sub_02005EA0
	mov r0, #0xc
	b _02176D70
_02176D6E:
	mov r0, #3
_02176D70:
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_02176D80:
	bl sub_0204E0E0
	cmp r0, #0
	bne _02176DA0
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_02176D8E:
	ldr r1, _02176DA4 ; =0x02176CED
	bl sub_021C5C74
	pop {r4, pc}
_02176D96:
	ldr r0, _02176DA8 ; =0x0217A860
	ldr r2, _02176DAC ; =0x0217A864
	mov r1, #0
	bl sub_0203CB80
_02176DA0:
	pop {r4, pc}
	nop
_02176DA4: .word 0x02176CED
_02176DA8: .word 0x0217A860
_02176DAC: .word 0x0217A864
	thumb_func_end ovy261_2176d48

	thumb_func_start ovy261_2176db0
ovy261_2176db0: ; 0x02176DB0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _02176E96
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02176DCC: ; jump table
	.short _02176DD4 - _02176DCC - 2 ; case 0
	.short _02176E32 - _02176DCC - 2 ; case 1
	.short _02176E76 - _02176DCC - 2 ; case 2
	.short _02176E88 - _02176DCC - 2 ; case 3
_02176DD4:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x18]
	ldr r1, [r4, #0x28]
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02176E0A
	str r6, [r4, #0x30]
	mov r0, #2
	b _02176E1C
_02176E0A:
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02176E16
	cmp r0, #1
	beq _02176E1A
	b _02176E1E
_02176E16:
	str r6, [sp]
	b _02176E1E
_02176E1A:
	mov r0, #1
_02176E1C:
	str r0, [sp]
_02176E1E:
	add r0, sp, #0
	mov r1, #0x4e
	bl ovy261_2176fcc
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176E32:
	ldr r0, [r4, #0x2c]
	bl sub_02177064
	ldr r0, [r4, #0x2c]
	bl ovy261_2177070
	cmp r0, #1
	beq _02176E4E
	cmp r0, #2
	beq _02176E5C
	cmp r0, #3
	beq _02176E6A
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02176E4E:
	ldr r0, [r4, #0x28]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #2
	add sp, #0x20
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176E5C:
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r1, [r0, #8]
	mov r0, #2
	add sp, #0x20
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176E6A:
	ldr r0, [r4, #0x28]
	mov r1, #3
	str r1, [r0, #4]
	add sp, #0x20
	str r1, [r5]
	pop {r4, r5, r6, pc}
_02176E76:
	ldr r0, [r4, #0x2c]
	bl ovy261_2177040
	ldr r1, _02176E9C ; =ovy261_2176d48
	add r0, r6, #0
	bl sub_021C5C74
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02176E88:
	ldr r0, [r4, #0x2c]
	bl ovy261_2177040
	ldr r1, _02176EA0 ; =ovy261_2176ea4
	add r0, r6, #0
	bl sub_021C5C74
_02176E96:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_02176E9C: .word ovy261_2176d48
_02176EA0: .word ovy261_2176ea4
	thumb_func_end ovy261_2176db0

	thumb_func_start ovy261_2176ea4
ovy261_2176ea4: ; 0x02176EA4
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bls _02176EB6
	b _02176FBE
_02176EB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02176EC2: ; jump table
	.short _02176ECA - _02176EC2 - 2 ; case 0
	.short _02176F44 - _02176EC2 - 2 ; case 1
	.short _02176F9A - _02176EC2 - 2 ; case 2
	.short _02176FAC - _02176EC2 - 2 ; case 3
_02176ECA:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x28
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x28]
	ldr r1, [r0]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r0, #4]
	cmp r0, #6
	bhi _02176F2C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02176F0E: ; jump table
	.short _02176F2C - _02176F0E - 2 ; case 0
	.short _02176F2C - _02176F0E - 2 ; case 1
	.short _02176F2C - _02176F0E - 2 ; case 2
	.short _02176F1C - _02176F0E - 2 ; case 3
	.short _02176F20 - _02176F0E - 2 ; case 4
	.short _02176F24 - _02176F0E - 2 ; case 5
	.short _02176F28 - _02176F0E - 2 ; case 6
_02176F1C:
	str r6, [sp]
	b _02176F30
_02176F20:
	mov r0, #2
	b _02176F2E
_02176F24:
	mov r0, #3
	b _02176F2E
_02176F28:
	mov r0, #1
	b _02176F2E
_02176F2C:
	mov r0, #0
_02176F2E:
	str r0, [sp]
_02176F30:
	add r0, sp, #0
	mov r1, #0x4e
	bl ovy261_2177954
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176F44:
	ldr r0, [r4, #0x2c]
	bl ovy261_2177ac8
	ldr r0, [r4, #0x2c]
	bl ovy261_2177b10
	cmp r0, #4
	bhi _02176FBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02176F60: ; jump table
	.short _02176FBE - _02176F60 - 2 ; case 0
	.short _02176F6A - _02176F60 - 2 ; case 1
	.short _02176F72 - _02176F60 - 2 ; case 2
	.short _02176F7E - _02176F60 - 2 ; case 3
	.short _02176F8C - _02176F60 - 2 ; case 4
_02176F6A:
	mov r0, #3
	add sp, #0x28
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176F72:
	ldr r0, [r4, #0x28]
	mov r1, #2
	str r1, [r0, #8]
	add sp, #0x28
	str r1, [r5]
	pop {r4, r5, r6, pc}
_02176F7E:
	ldr r0, [r4, #0x28]
	mov r1, #3
	str r1, [r0, #8]
	mov r0, #2
	add sp, #0x28
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176F8C:
	ldr r0, [r4, #0x28]
	mov r1, #4
	str r1, [r0, #8]
	mov r0, #2
	add sp, #0x28
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02176F9A:
	ldr r0, [r4, #0x2c]
	bl ovy261_2177a70
	ldr r1, _02176FC4 ; =ovy261_2176d48
	add r0, r6, #0
	bl sub_021C5C74
	add sp, #0x28
	pop {r4, r5, r6, pc}
_02176FAC:
	mov r0, #1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl ovy261_2177a70
	ldr r1, _02176FC8 ; =ovy261_2176db0
	add r0, r6, #0
	bl sub_021C5C74
_02176FBE:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_02176FC4: .word ovy261_2176d48
_02176FC8: .word ovy261_2176db0
	thumb_func_end ovy261_2176ea4

	thumb_func_start ovy261_2176fcc
ovy261_2176fcc: ; 0x02176FCC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb9
	str r0, [sp]
	ldr r3, _02177038 ; =0x0217A868
	add r0, r6, #0
	mov r1, #0x44
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	add r2, r4, #0
	add r2, #0x14
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	strh r6, [r4, #0x34]
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x38]
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x3c]
	mov r0, #0
	mov r1, #3
	mov r2, #0xd0
	add r3, r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0xc]
	ldr r1, _0217703C ; =ovy261_2177088
	add r0, r4, #0
	add r2, r6, #0
	bl sub_021C5C10
	str r0, [r4]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02177038: .word 0x0217A868
_0217703C: .word ovy261_2177088
	thumb_func_end ovy261_2176fcc

	thumb_func_start ovy261_2177040
ovy261_2177040: ; 0x02177040
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021C5C4C
	ldr r0, [r4, #0xc]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x38]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x3c]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy261_2177040

	thumb_func_start sub_02177064
sub_02177064: ; 0x02177064
	ldr r0, [r0]
	ldr r3, _0217706C ; =sub_021C5C54
	bx r3
	nop
_0217706C: .word sub_021C5C54
	thumb_func_end sub_02177064

	thumb_func_start ovy261_2177070
ovy261_2177070: ; 0x02177070
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021C5C64
	cmp r0, #0
	beq _02177082
	ldr r0, [r4, #0x10]
	pop {r4, pc}
_02177082:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2177070

	thumb_func_start ovy261_2177088
ovy261_2177088: ; 0x02177088
	push {r3, lr}
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0217709A
	cmp r1, #1
	beq _021770A2
	cmp r1, #2
	beq _021770AA
	pop {r3, pc}
_0217709A:
	ldr r1, _021770B4 ; =ovy261_21770c8
	bl sub_021C5C74
	pop {r3, pc}
_021770A2:
	ldr r1, _021770B8 ; =ovy261_2177610
	bl sub_021C5C74
	pop {r3, pc}
_021770AA:
	ldr r1, _021770BC ; =ovy261_21773b0
	bl sub_021C5C74
	pop {r3, pc}
	nop
_021770B4: .word ovy261_21770c8
_021770B8: .word ovy261_2177610
_021770BC: .word ovy261_21773b0
	thumb_func_end ovy261_2177088
_021770C0:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x7D, 0x5C, 0x1C, 0x02

	thumb_func_start ovy261_21770c8
ovy261_21770c8: ; 0x021770C8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #3
	bhi _02177160
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021770E2: ; jump table
	.short _021770EA - _021770E2 - 2 ; case 0
	.short _021770F8 - _021770E2 - 2 ; case 1
	.short _02177108 - _021770E2 - 2 ; case 2
	.short _02177116 - _021770E2 - 2 ; case 3
_021770EA:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217790c
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021770F8:
	add r0, r5, #0
	bl sub_02177934
	cmp r0, #1
	bne _02177160
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02177108:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_21777a8
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02177116:
	add r0, r5, #0
	bl sub_02177900
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02177160
	cmp r0, #3
	bhi _0217715A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02177134: ; jump table
	.short _0217713C - _02177134 - 2 ; case 0
	.short _02177146 - _02177134 - 2 ; case 1
	.short _0217714C - _02177134 - 2 ; case 2
	.short _02177152 - _02177134 - 2 ; case 3
_0217713C:
	ldr r1, _02177164 ; =ovy261_21771a8
	add r0, r6, #0
_02177140:
	bl sub_021C5C74
	b _0217715A
_02177146:
	add r0, r6, #0
	ldr r1, _02177168 ; =ovy261_21773b0
	b _02177140
_0217714C:
	add r0, r6, #0
	ldr r1, _0217716C ; =ovy261_2177170
	b _02177140
_02177152:
	add r0, r5, #0
	mov r1, #1
	bl sub_02177940
_0217715A:
	add r0, r5, #0
	bl sub_021778F4
_02177160:
	pop {r4, r5, r6, pc}
	nop
_02177164: .word ovy261_21771a8
_02177168: .word ovy261_21773b0
_0217716C: .word ovy261_2177170
	thumb_func_end ovy261_21770c8

	thumb_func_start ovy261_2177170
ovy261_2177170: ; 0x02177170
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02177182
	cmp r0, #1
	beq _02177190
	pop {r3, r4, r5, pc}
_02177182:
	add r0, r2, #0
	mov r5, #1
	mov r1, #1
	bl ovy261_217790c
	str r5, [r4]
	pop {r3, r4, r5, pc}
_02177190:
	add r0, r2, #0
	bl sub_02177934
	cmp r0, #1
	bne _021771A2
	ldr r1, _021771A4 ; =ovy261_21770c8
	add r0, r5, #0
	bl sub_021C5C74
_021771A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021771A4: .word ovy261_21770c8
	thumb_func_end ovy261_2177170

	thumb_func_start ovy261_21771a8
ovy261_21771a8: ; 0x021771A8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	cmp r0, #3
	bhi _0217724A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021771C2: ; jump table
	.short _021771CA - _021771C2 - 2 ; case 0
	.short _021771D8 - _021771C2 - 2 ; case 1
	.short _021771E8 - _021771C2 - 2 ; case 2
	.short _021771F6 - _021771C2 - 2 ; case 3
_021771CA:
	add r0, r6, #0
	mov r1, #9
	bl ovy261_217790c
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021771D8:
	add r0, r6, #0
	bl sub_02177934
	cmp r0, #1
	bne _0217724A
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021771E8:
	add r0, r6, #0
	mov r1, #1
	bl ovy261_21777a8
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021771F6:
	add r0, r6, #0
	bl sub_02177900
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0217724A
	cmp r0, #3
	bhi _02177244
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02177214: ; jump table
	.short _0217721C - _02177214 - 2 ; case 0
	.short _02177230 - _02177214 - 2 ; case 1
	.short _02177236 - _02177214 - 2 ; case 2
	.short _0217723C - _02177214 - 2 ; case 3
_0217721C:
	bl sub_02035318
	cmp r0, #0
	bne _0217722A
	add r0, r5, #0
	ldr r1, _0217724C ; =ovy261_21774a4
	b _02177240
_0217722A:
	add r0, r5, #0
	ldr r1, _02177250 ; =ovy261_21774dc
	b _02177240
_02177230:
	add r0, r5, #0
	ldr r1, _02177254 ; =ovy261_2177260
	b _02177240
_02177236:
	add r0, r5, #0
	ldr r1, _02177258 ; =ovy261_2177298
	b _02177240
_0217723C:
	ldr r1, _0217725C ; =ovy261_21770c8
	add r0, r5, #0
_02177240:
	bl sub_021C5C74
_02177244:
	add r0, r6, #0
	bl sub_021778F4
_0217724A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217724C: .word ovy261_21774a4
_02177250: .word ovy261_21774dc
_02177254: .word ovy261_2177260
_02177258: .word ovy261_2177298
_0217725C: .word ovy261_21770c8
	thumb_func_end ovy261_21771a8

	thumb_func_start ovy261_2177260
ovy261_2177260: ; 0x02177260
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02177272
	cmp r0, #1
	beq _02177280
	pop {r3, r4, r5, pc}
_02177272:
	add r0, r2, #0
	mov r1, #8
	bl ovy261_217790c
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02177280:
	add r0, r2, #0
	bl sub_02177934
	cmp r0, #1
	bne _02177292
	ldr r1, _02177294 ; =ovy261_21771a8
	add r0, r5, #0
	bl sub_021C5C74
_02177292:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02177294: .word ovy261_21771a8
	thumb_func_end ovy261_2177260

	thumb_func_start ovy261_2177298
ovy261_2177298: ; 0x02177298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021772B4
	cmp r0, #1
	beq _021772F4
	cmp r0, #2
	beq _0217730E
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021772B4:
	add r7, sp, #0
	add r0, r7, #0
	mov r6, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	str r6, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x28]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x1c]
	ldrh r1, [r4, #0x34]
	add r0, r7, #0
	bl ovy261_21795c8
	str r0, [r4, #0x40]
	ldr r0, [r5]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021772F4:
	ldr r0, [r4, #0x40]
	bl ovy261_2179668
	ldr r0, [r4, #0x40]
	bl sub_02179680
	cmp r0, #0
	beq _0217731C
	ldr r0, [r5]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217730E:
	ldr r0, [r4, #0x40]
	bl ovy261_2179644
	ldr r1, _02177320 ; =ovy261_21771a8
	add r0, r6, #0
	bl sub_021C5C74
_0217731C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02177320: .word ovy261_21771a8
	thumb_func_end ovy261_2177298

	thumb_func_start ovy261_2177324
ovy261_2177324: ; 0x02177324
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _02177340
	cmp r0, #1
	beq _02177380
	cmp r0, #2
	beq _0217739A
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02177340:
	add r6, sp, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x28]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x1c]
	ldrh r1, [r4, #0x34]
	add r0, r6, #0
	bl ovy261_21795c8
	str r0, [r4, #0x40]
	ldr r0, [r5]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02177380:
	ldr r0, [r4, #0x40]
	bl ovy261_2179668
	ldr r0, [r4, #0x40]
	bl sub_02179680
	cmp r0, #0
	beq _021773A8
	ldr r0, [r5]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0217739A:
	ldr r0, [r4, #0x40]
	bl ovy261_2179644
	ldr r1, _021773AC ; =ovy261_21773b0
	add r0, r6, #0
	bl sub_021C5C74
_021773A8:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021773AC: .word ovy261_21773b0
	thumb_func_end ovy261_2177324

	thumb_func_start ovy261_21773b0
ovy261_21773b0: ; 0x021773B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #3
	bhi _0217745A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021773CA: ; jump table
	.short _021773D2 - _021773CA - 2 ; case 0
	.short _021773E0 - _021773CA - 2 ; case 1
	.short _021773F0 - _021773CA - 2 ; case 2
	.short _021773FE - _021773CA - 2 ; case 3
_021773D2:
	add r0, r5, #0
	mov r1, #0xe
	bl ovy261_217790c
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021773E0:
	add r0, r5, #0
	bl sub_02177934
	cmp r0, #1
	bne _0217745A
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021773F0:
	add r0, r5, #0
	mov r1, #2
	bl ovy261_21777a8
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021773FE:
	add r0, r5, #0
	bl sub_02177900
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0217745A
	cmp r0, #3
	bhi _02177454
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217741C: ; jump table
	.short _02177424 - _0217741C - 2 ; case 0
	.short _02177440 - _0217741C - 2 ; case 1
	.short _02177446 - _0217741C - 2 ; case 2
	.short _0217744C - _0217741C - 2 ; case 3
_02177424:
	bl sub_02035318
	cmp r0, #0
	bne _02177432
	add r0, r6, #0
	ldr r1, _0217745C ; =ovy261_21774a4
	b _02177450
_02177432:
	bl sub_0200BBA4
	add r0, r5, #0
	mov r1, #3
	bl sub_02177940
	b _02177454
_02177440:
	add r0, r6, #0
	ldr r1, _02177460 ; =ovy261_217746c
	b _02177450
_02177446:
	add r0, r6, #0
	ldr r1, _02177464 ; =ovy261_2177324
	b _02177450
_0217744C:
	ldr r1, _02177468 ; =ovy261_21770c8
	add r0, r6, #0
_02177450:
	bl sub_021C5C74
_02177454:
	add r0, r5, #0
	bl sub_021778F4
_0217745A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217745C: .word ovy261_21774a4
_02177460: .word ovy261_217746c
_02177464: .word ovy261_2177324
_02177468: .word ovy261_21770c8
	thumb_func_end ovy261_21773b0

	thumb_func_start ovy261_217746c
ovy261_217746c: ; 0x0217746C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217747E
	cmp r0, #1
	beq _0217748C
	pop {r3, r4, r5, pc}
_0217747E:
	add r0, r2, #0
	mov r1, #0xf
	bl ovy261_217790c
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0217748C:
	add r0, r2, #0
	bl sub_02177934
	cmp r0, #1
	bne _0217749E
	ldr r1, _021774A0 ; =ovy261_21773b0
	add r0, r5, #0
	bl sub_021C5C74
_0217749E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021774A0: .word ovy261_21773b0
	thumb_func_end ovy261_217746c

	thumb_func_start ovy261_21774a4
ovy261_21774a4: ; 0x021774A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021774B6
	cmp r0, #1
	beq _021774C4
	pop {r3, r4, r5, pc}
_021774B6:
	add r0, r2, #0
	mov r1, #0x16
	bl ovy261_2177920
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021774C4:
	add r0, r2, #0
	bl sub_02177934
	cmp r0, #1
	bne _021774D6
	ldr r1, _021774D8 ; =ovy261_21770c8
	add r0, r5, #0
	bl sub_021C5C74
_021774D6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021774D8: .word ovy261_21770c8
	thumb_func_end ovy261_21774a4

	thumb_func_start ovy261_21774dc
ovy261_21774dc: ; 0x021774DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl sub_02017934
	str r0, [sp]
	bl sub_0200F2C4
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0xa
	bls _021774FA
	b _02177608
_021774FA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177506: ; jump table
	.short _0217751C - _02177506 - 2 ; case 0
	.short _02177562 - _02177506 - 2 ; case 1
	.short _02177574 - _02177506 - 2 ; case 2
	.short _02177582 - _02177506 - 2 ; case 3
	.short _0217759A - _02177506 - 2 ; case 4
	.short _021775A8 - _02177506 - 2 ; case 5
	.short _021775B8 - _02177506 - 2 ; case 6
	.short _021775CA - _02177506 - 2 ; case 7
	.short _021775DC - _02177506 - 2 ; case 8
	.short _021775F2 - _02177506 - 2 ; case 9
	.short _02177600 - _02177506 - 2 ; case 10
_0217751C:
	bl sub_0200F300
	cmp r0, #0
	beq _0217755C
	add r0, r7, #0
	bl sub_0200F308
	cmp r0, #0
	beq _02177550
	add r0, r7, #0
	bl sub_0200F334
	cmp r0, #0
	beq _0217754A
	ldr r0, [sp]
	bl sub_02009408
	mov r1, #0x35
	bl sub_020095A0
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217754A:
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177550:
	add r0, r7, #0
	bl sub_0200F2DC
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217755C:
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177562:
	bl sub_0200F2DC
	add r0, r6, #0
	mov r1, #9
	bl sub_021C5C88
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177574:
	add r0, r5, #0
	mov r1, #0x10
	bl ovy261_217790c
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177582:
	add r0, r5, #0
	bl sub_02177934
	cmp r0, #1
	bne _02177608
	add r0, r6, #0
	mov r1, #0xa
	bl sub_021C5C88
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217759A:
	add r0, r5, #0
	mov r1, #0x10
	bl ovy261_217790c
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021775A8:
	add r0, r5, #0
	bl sub_02177934
	cmp r0, #1
	bne _02177608
	mov r0, #0xa
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021775B8:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x20]
	mov r2, #0x11
	mov r3, #2
	bl sub_021C5888
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021775CA:
	mov r0, #0x40
	bl sub_0203D254
	ldr r0, [r5, #0x30]
	bl sub_0201782C
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021775DC:
	ldr r0, [r5, #0x30]
	bl sub_02017850
	cmp r0, #2
	beq _021775EA
	cmp r0, #3
	bne _02177608
_021775EA:
	add r0, r6, #0
	bl sub_021C5C8C
	pop {r3, r4, r5, r6, r7, pc}
_021775F2:
	bl sub_0200BBA4
	add r0, r5, #0
	mov r1, #2
	bl sub_02177940
	pop {r3, r4, r5, r6, r7, pc}
_02177600:
	ldr r1, _0217760C ; =ovy261_21770c8
	add r0, r6, #0
	bl sub_021C5C74
_02177608:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217760C: .word ovy261_21770c8
	thumb_func_end ovy261_21774dc

	thumb_func_start ovy261_2177610
ovy261_2177610: ; 0x02177610
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #0x30]
	add r5, r1, #0
	bl sub_02017934
	bl sub_0200F2C4
	ldr r1, [r5]
	cmp r1, #9
	bhi _02177686
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177636: ; jump table
	.short _0217764A - _02177636 - 2 ; case 0
	.short _02177668 - _02177636 - 2 ; case 1
	.short _0217767C - _02177636 - 2 ; case 2
	.short _02177690 - _02177636 - 2 ; case 3
	.short _021776F0 - _02177636 - 2 ; case 4
	.short _0217770A - _02177636 - 2 ; case 5
	.short _02177750 - _02177636 - 2 ; case 6
	.short _02177764 - _02177636 - 2 ; case 7
	.short _02177772 - _02177636 - 2 ; case 8
	.short _0217778E - _02177636 - 2 ; case 9
_0217764A:
	bl sub_0200F2F8
	ldr r0, [r4, #0x30]
	bl sub_02017B8C
	cmp r0, #0
	bne _02177660
	mov r0, #6
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177660:
	mov r0, #1
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177668:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x20]
	mov r2, #0x12
	mov r3, #1
	bl sub_021C5888
	mov r0, #2
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217767C:
	add r0, r4, #0
	bl sub_02177934
	cmp r0, #1
	beq _02177688
_02177686:
	b _02177796
_02177688:
	mov r0, #3
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177690:
	bl sub_02005ED4
	ldr r0, _0217779C ; =0x00000526
	ldr r1, _021777A0 ; =0x0000FFFF
	bl sub_02005DF4
	ldr r0, [r4, #0x20]
	mov r1, #0x13
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r4, #0x38]
	mov r1, #0
	mov r7, #0
	bl GFL_CopyVarForText
	ldr r0, [r4, #0x30]
	bl sub_02017B8C
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, r0, #0
	ldr r0, [r4, #0x38]
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x3c]
	mov r2, #3
	bl sub_021C58A4
	mov r0, #4
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021776F0:
	bl sub_02005FA8
	cmp r0, #0
	bne _02177796
	bl sub_02005F0C
	ldr r0, [r4, #0x18]
	bl sub_021C58BC
	mov r0, #5
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217770A:
	add r0, r4, #0
	bl sub_02177934
	cmp r0, #1
	bne _02177796
	ldr r0, [r4, #0x30]
	bl sub_0201795C
	add r7, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_02017B8C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200E318
	ldr r0, [r4, #0x30]
	bl sub_02017BB4
	cmp r6, #0
	beq _02177748
	ldr r0, [r4, #0x30]
	bl sub_02017934
	bl sub_02009408
	mov r1, #0x21
	add r2, r6, #0
	bl sub_0200955C
_02177748:
	mov r0, #6
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177750:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x20]
	mov r2, #0x11
	mov r3, #2
	bl sub_021C5888
	mov r0, #7
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177764:
	ldr r0, [r4, #0x30]
	bl sub_0201782C
	mov r0, #8
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02177772:
	ldr r0, [r4, #0x30]
	bl sub_02017850
	cmp r0, #2
	beq _02177780
	cmp r0, #3
	bne _02177796
_02177780:
	mov r0, #0x40
	bl sub_0203D27C
	mov r0, #9
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217778E:
	ldr r1, _021777A4 ; =ovy261_21771a8
	add r0, r6, #0
	bl sub_021C5C74
_02177796:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217779C: .word 0x00000526
_021777A0: .word 0x0000FFFF
_021777A4: .word ovy261_21771a8
	thumb_func_end ovy261_2177610

	thumb_func_start ovy261_21777a8
ovy261_21777a8: ; 0x021777A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r7, r1, #0
	bl sub_02017934
	bl sub_0200BA78
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	ldr r0, [r4, #0x20]
	cmp r7, #3
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x20]
	bhi _0217788A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021777E2: ; jump table
	.short _021777EA - _021777E2 - 2 ; case 0
	.short _02177808 - _021777E2 - 2 ; case 1
	.short _02177848 - _021777E2 - 2 ; case 2
	.short _02177876 - _021777E2 - 2 ; case 3
_021777EA:
	mov r1, #5
	str r1, [sp, #0x2c]
	mov r1, #6
	mov r0, #2
	str r1, [sp, #0x30]
	mov r1, #4
	str r0, [sp, #0x24]
	mov r0, #3
	str r1, [sp, #0x34]
	mov r1, #1
	str r1, [sp, #0x40]
	str r0, [sp, #0x28]
	add r1, sp, #0x18
	strh r0, [r1, #0x2c]
	b _02177844
_02177808:
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r6, sp, #0x18
	bl sub_0200B8F4
	mov r1, #7
	str r1, [sp, #0x24]
	mov r1, #5
	str r1, [sp, #0x28]
	ldr r1, _021778F0 ; =0x0000015B
	ldrsb r0, [r0, r1]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02177830
	mov r0, #0xd
	b _02177832
_02177830:
	mov r0, #4
_02177832:
	str r0, [sp, #0x2c]
_02177834:
	mov r0, #6
	str r0, [sp, #0x30]
	mov r0, #4
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x40]
	mov r0, #3
	strh r0, [r6, #0x2c]
_02177844:
	mov r6, #0
	b _0217788A
_02177848:
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r6, sp, #0x18
	bl sub_0200B8F4
	mov r1, #7
	str r1, [sp, #0x24]
	mov r1, #5
	str r1, [sp, #0x28]
	ldr r1, _021778F0 ; =0x0000015B
	ldrsb r0, [r0, r1]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02177870
	mov r0, #0xd
	b _02177872
_02177870:
	mov r0, #4
_02177872:
	str r0, [sp, #0x2c]
	b _02177834
_02177876:
	mov r0, #0xb
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	mov r0, #2
	mov r6, #1
	str r0, [sp, #0x34]
	str r6, [sp, #0x40]
	add r0, sp, #0x18
	strh r6, [r0, #0x2c]
_0217788A:
	mov r1, #0
	add r0, sp, #0x18
	strh r1, [r0, #0x20]
	mov r1, #0xf
	strh r1, [r0, #0x22]
	mov r1, #0xd
	strh r1, [r0, #0x24]
	mov r1, #1
	strh r1, [r0, #0x26]
	cmp r6, #0
	beq _021778A6
	cmp r6, #1
	beq _021778BC
	b _021778D4
_021778A6:
	mov r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x18
	mov r0, #2
	str r0, [sp, #0x10]
	lsr r1, r5, #1
	mov r0, #9
	sub r0, r0, r1
	b _021778CE
_021778BC:
	mov r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x18
	mov r0, #0x13
	str r0, [sp, #0x10]
	mov r0, #0x11
	sub r0, r0, r5
_021778CE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_021778D4:
	str r5, [sp]
	ldrh r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, sp, #0x18
	bl sub_021C5A88
	str r0, [r4, #4]
	str r7, [r4, #8]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021778F0: .word 0x0000015B
	thumb_func_end ovy261_21777a8

	thumb_func_start sub_021778F4
sub_021778F4: ; 0x021778F4
	ldr r0, [r0, #4]
	ldr r3, _021778FC ; =sub_021C5BA4
	bx r3
	nop
_021778FC: .word sub_021C5BA4
	thumb_func_end sub_021778F4

	thumb_func_start sub_02177900
sub_02177900: ; 0x02177900
	ldr r0, [r0, #4]
	ldr r3, _02177908 ; =sub_021C5BD4
	bx r3
	nop
_02177908: .word sub_021C5BD4
	thumb_func_end sub_02177900

	thumb_func_start ovy261_217790c
ovy261_217790c: ; 0x0217790C
	push {r3, lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x20]
	mov r3, #1
	bl sub_021C5888
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy261_217790c

	thumb_func_start ovy261_2177920
ovy261_2177920: ; 0x02177920
	push {r3, lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0xc]
	mov r3, #1
	bl sub_021C5888
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy261_2177920

	thumb_func_start sub_02177934
sub_02177934: ; 0x02177934
	ldr r0, [r0, #0x18]
	ldr r3, _0217793C ; =sub_021C5A1C
	bx r3
	nop
_0217793C: .word sub_021C5A1C
	thumb_func_end sub_02177934

	thumb_func_start sub_02177940
sub_02177940: ; 0x02177940
	str r1, [r0, #0x10]
	ldr r0, [r0]
	ldr r1, _0217794C ; =0x021770C1
	ldr r3, _02177950 ; =sub_021C5C74
	bx r3
	nop
_0217794C: .word 0x021770C1
_02177950: .word sub_021C5C74
	thumb_func_end sub_02177940

	thumb_func_start ovy261_2177954
ovy261_2177954: ; 0x02177954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _02177A64 ; =0x0000010E
	add r5, r1, #0
	add r1, r7, #0
	str r1, [sp, #4]
	add r1, #0xd6
	add r6, r0, #0
	ldr r3, _02177A68 ; =0x0217A884
	add r0, r5, #0
	str r1, [sp, #4]
	mov r2, #0
	str r7, [sp]
	bl GFL_HeapAllocate
	ldr r2, [sp, #4]
	mov r1, #0
	add r4, r0, #0
	blx MI_CpuFill8
	add r7, #0x92
	add r3, r4, r7
	mov r2, #5
_02177982:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02177982
	mov r6, #0x72
	lsl r6, r6, #2
	strh r5, [r4, r6]
	bl sub_0200BB80
	add r1, r6, #0
	add r1, #8
	str r0, [r4, r1]
	add r0, r6, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	add r2, r5, #0
	bl sub_021C29C4
	mov r0, #8
	mov r1, #0x40
	add r2, r5, #0
	mov r7, #8
	bl sub_020241E4
	str r0, [r4, #0x2c]
	mov r0, #0
	mov r1, #2
	mov r2, #0x45
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	add r2, r6, #0
	str r0, [r4, #0x20]
	mov r0, #0
	mov r1, #2
	sub r2, #0x27
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x24]
	mov r0, #0x17
	mov r1, #3
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl GFL_FontCreate
	str r0, [r4, #0x28]
	ldr r1, _02177A6C ; =ovy261_2177b2c
	add r0, r4, #0
	add r2, r5, #0
	bl sub_021C5C10
	str r0, [r4]
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ovy261_217a27c
	str r0, [r4, #0xc]
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl sub_021C2668
	add r1, r6, #0
	sub r1, #0x18
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_021C4E44
	mov r1, #0
	str r0, [r4, #0x1c]
	bl sub_021C4F30
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02017934
	bl sub_0200BA78
	mov r1, #1
	bl sub_0200B8F4
	str r0, [r4, #0x38]
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02017934
	bl sub_0200F2C4
	bl sub_0200F2D8
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl sub_0201FD00
	sub r6, #0x28
	str r0, [r4, #0x30]
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _02177A5C
	add r0, r7, #0
	bl sub_0203D254
_02177A5C:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02177A64: .word 0x0000010E
_02177A68: .word 0x0217A884
_02177A6C: .word ovy261_2177b2c
	thumb_func_end ovy261_2177954

	thumb_func_start ovy261_2177a70
ovy261_2177a70: ; 0x02177A70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl GFL_HeapFree
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02177A8A
	mov r0, #8
	bl sub_0203D27C
_02177A8A:
	add r0, r4, #0
	bl ovy261_21792b8
	add r0, r4, #0
	bl ovy261_2179368
	ldr r0, [r4, #0x1c]
	bl sub_021C4F14
	ldr r0, [r4, #0xc]
	bl ovy261_217a2c8
	ldr r0, [r4]
	bl sub_021C5C4C
	ldr r0, [r4, #0x28]
	bl sub_02022DA8
	ldr r0, [r4, #0x24]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x2c]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy261_2177a70

	thumb_func_start ovy261_2177ac8
ovy261_2177ac8: ; 0x02177AC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021C5C54
	ldr r0, [r4, #0xc]
	bl sub_0217A2E4
	ldr r0, [r4, #0x1c]
	bl sub_021C4F2C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02177AEE
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_021C35E4
_02177AEE:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02177AFE
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_021C4898
_02177AFE:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02177B0E
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_021C561C
_02177B0E:
	pop {r4, pc}
	thumb_func_end ovy261_2177ac8

	thumb_func_start ovy261_2177b10
ovy261_2177b10: ; 0x02177B10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021C5C64
	cmp r0, #0
	beq _02177B26
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
_02177B26:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_2177b10

	thumb_func_start ovy261_2177b2c
ovy261_2177b2c: ; 0x02177B2C
	push {r4, lr}
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r4, r0, #0
	cmp r1, #3
	bhi _02177B86
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177B46: ; jump table
	.short _02177B4E - _02177B46 - 2 ; case 0
	.short _02177B56 - _02177B46 - 2 ; case 1
	.short _02177B76 - _02177B46 - 2 ; case 2
	.short _02177B7E - _02177B46 - 2 ; case 3
_02177B4E:
	ldr r1, _02177B94 ; =ovy261_2177bb4
	bl sub_021C5C74
	pop {r4, pc}
_02177B56:
	ldr r0, [r2, #0x38]
	mov r1, #0xa
	bl sub_0200B798
	cmp r0, #3
	bne _02177B6C
	ldr r1, _02177B98 ; =ovy261_2178d7c
	add r0, r4, #0
	bl sub_021C5C74
	pop {r4, pc}
_02177B6C:
	ldr r1, _02177B9C ; =ovy261_21783c0
	add r0, r4, #0
	bl sub_021C5C74
	pop {r4, pc}
_02177B76:
	ldr r1, _02177BA0 ; =ovy261_2178be8
	bl sub_021C5C74
	pop {r4, pc}
_02177B7E:
	ldr r1, _02177B98 ; =ovy261_2178d7c
	bl sub_021C5C74
	pop {r4, pc}
_02177B86:
	ldr r0, _02177BA4 ; =0x0217A89C
	ldr r2, _02177BA8 ; =0x0217A8A0
	mov r1, #0
	bl sub_0203CB80
	pop {r4, pc}
	nop
_02177B94: .word ovy261_2177bb4
_02177B98: .word ovy261_2178d7c
_02177B9C: .word ovy261_21783c0
_02177BA0: .word ovy261_2178be8
_02177BA4: .word 0x0217A89C
_02177BA8: .word 0x0217A8A0
	thumb_func_end ovy261_2177b2c
_02177BAC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x7D, 0x5C, 0x1C, 0x02

	thumb_func_start ovy261_2177bb4
ovy261_2177bb4: ; 0x02177BB4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x1f
	bhi _02177C1A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177BCE: ; jump table
	.short _02177C0E - _02177BCE - 2 ; case 0
	.short _02177C60 - _02177BCE - 2 ; case 1
	.short _02177C74 - _02177BCE - 2 ; case 2
	.short _02177C84 - _02177BCE - 2 ; case 3
	.short _02177CA8 - _02177BCE - 2 ; case 4
	.short _02177CC0 - _02177BCE - 2 ; case 5
	.short _02177CD8 - _02177BCE - 2 ; case 6
	.short _02177CE6 - _02177BCE - 2 ; case 7
	.short _02177D12 - _02177BCE - 2 ; case 8
	.short _02177D22 - _02177BCE - 2 ; case 9
	.short _02177D2E - _02177BCE - 2 ; case 10
	.short _02177D40 - _02177BCE - 2 ; case 11
	.short _02177D50 - _02177BCE - 2 ; case 12
	.short _02177D68 - _02177BCE - 2 ; case 13
	.short _02177D88 - _02177BCE - 2 ; case 14
	.short _02177D98 - _02177BCE - 2 ; case 15
	.short _02177DF2 - _02177BCE - 2 ; case 16
	.short _02177DFE - _02177BCE - 2 ; case 17
	.short _02177E0E - _02177BCE - 2 ; case 18
	.short _02177E2E - _02177BCE - 2 ; case 19
	.short _02177E3C - _02177BCE - 2 ; case 20
	.short _02177E6A - _02177BCE - 2 ; case 21
	.short _02177ED4 - _02177BCE - 2 ; case 22
	.short _02177EF0 - _02177BCE - 2 ; case 23
	.short _02177F3C - _02177BCE - 2 ; case 24
	.short _02177F50 - _02177BCE - 2 ; case 25
	.short _02177F68 - _02177BCE - 2 ; case 26
	.short _02177F80 - _02177BCE - 2 ; case 27
	.short _02177F98 - _02177BCE - 2 ; case 28
	.short _02177FB0 - _02177BCE - 2 ; case 29
	.short _02177FB8 - _02177BCE - 2 ; case 30
	.short _02177FC2 - _02177BCE - 2 ; case 31
_02177C0E:
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	bl sub_0200B798
	cmp r0, #5
	bls _02177C1C
_02177C1A:
	b _02177FD2
_02177C1C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02177C28: ; jump table
	.short _02177C34 - _02177C28 - 2 ; case 0
	.short _02177C4C - _02177C28 - 2 ; case 1
	.short _02177C56 - _02177C28 - 2 ; case 2
	.short _02177C34 - _02177C28 - 2 ; case 3
	.short _02177C34 - _02177C28 - 2 ; case 4
	.short _02177C34 - _02177C28 - 2 ; case 5
_02177C34:
	ldr r0, [r5, #0x38]
	mov r1, #2
	bl sub_0200B798
	cmp r0, #0
	bne _02177C46
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177C46:
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177C4C:
	ldr r1, _02177DDC ; =ovy261_2177fd8
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02177C56:
	ldr r1, _02177DE0 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02177C60:
	add r0, r5, #0
	bl ovy261_217916c
	add r0, r5, #0
	mov r1, #1
	bl ovy261_21792e4
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177C74:
	add r0, r5, #0
	bl sub_021792CC
	cmp r0, #0
	beq _02177D38
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177C84:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #2
	bl sub_0200C394
	cmp r0, #0
	beq _02177CA2
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177CA2:
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177CA8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177CC0:
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177CD8:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_2178fe8
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177CE6:
	add r0, r5, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02177D38
	add r0, r5, #0
	bl sub_02179114
	cmp r6, #0
	beq _02177D06
	cmp r6, #1
	beq _02177D0C
	pop {r3, r4, r5, r6, r7, pc}
_02177D06:
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D0C:
	mov r0, #0xa
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D12:
	add r0, r5, #0
	bl sub_021792D8
	cmp r0, #0
	beq _02177D38
	mov r0, #9
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D22:
	add r0, r5, #0
	bl ovy261_21792b8
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D2E:
	add r0, r5, #0
	bl sub_021792D8
	cmp r0, #0
	bne _02177D3A
_02177D38:
	b _02177FD2
_02177D3A:
	mov r0, #0xb
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D40:
	add r0, r5, #0
	bl ovy261_21792b8
	add r0, r5, #0
	mov r1, #1
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_02177D50:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xd
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177D68:
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_021C4F30
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #0
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xe
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177D88:
	ldr r0, [r5, #0xc]
	add r5, #0x3c
	add r1, r5, #0
	bl ovy261_217a58c
	mov r0, #0xf
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177D98:
	ldr r0, [r5, #0xc]
	bl ovy261_217a5f8
	add r6, r0, #0
	beq _02177DB6
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	cmp r6, #1
	bne _02177DB2
	mov r0, #0x15
	b _02177DB4
_02177DB2:
	mov r0, #0x1a
_02177DB4:
	str r0, [r4]
_02177DB6:
	ldr r0, [r5, #0xc]
	bl ovy261_217a2e8
	cmp r0, #1
	bne _02177DCE
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177DCE:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _02177E4C
	ldr r0, _02177DE4 ; =0x00000547
	b _02177DE8
	.align 2, 0
_02177DDC: .word ovy261_2177fd8
_02177DE0: .word ovy261_21783c0
_02177DE4: .word 0x00000547
_02177DE8:
	bl GFL_SndSEPlay
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177DF2:
	ldr r0, [r5, #0xc]
	bl sub_0217A684
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177DFE:
	ldr r0, [r5, #0xc]
	bl ovy261_217a68c
	cmp r0, #0
	beq _02177E4C
	mov r0, #0x12
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177E0E:
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x13
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177E2E:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_2178fe8
	mov r0, #0x14
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177E3C:
	add r0, r5, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02177E4E
_02177E4C:
	b _02177FD2
_02177E4E:
	add r0, r5, #0
	bl sub_02179114
	cmp r6, #0
	beq _02177E5E
	cmp r6, #1
	beq _02177E64
	pop {r3, r4, r5, r6, r7, pc}
_02177E5E:
	mov r0, #0x1e
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177E64:
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177E6A:
	add r0, r5, #0
	add r0, #0x3c
	bl sub_0200B8C8
	cmp r0, #0
	beq _02177ECE
	add r0, r5, #0
	add r0, #0x3c
	mov r6, #1
	mov r1, #1
	bl sub_0200B798
	lsl r1, r6, #0x17
	tst r0, r1
	beq _02177EC8
	ldr r0, [r5, #0x38]
	mov r1, #2
	bl sub_0200B798
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #2
	bl sub_0200B798
	cmp r6, r0
	bne _02177EC2
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	bl sub_0200B798
	cmp r0, #3
	beq _02177EB6
	cmp r0, #4
	bne _02177EBC
	mov r0, #0x1b
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177EB6:
	mov r0, #0x1c
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177EBC:
	mov r0, #0x16
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177EC2:
	mov r0, #0x16
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177EC8:
	mov r0, #0x1a
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177ECE:
	mov r0, #0x19
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177ED4:
	bl sub_0200BBA4
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177EF0:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02017934
	bl sub_0200BA78
	mov r1, #1
	add r6, r0, #0
	bl sub_0200B924
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0xa
	mov r2, #1
	bl sub_0200B830
	ldr r0, [r5, #0x34]
	bl sub_0200F1C4
	add r0, r7, #0
	bl sub_0200B918
	add r2, r5, #0
	add r0, r6, #0
	mov r1, #1
	add r2, #0x3c
	bl sub_0200B900
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201782C
	mov r0, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177F3C:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02017850
	cmp r0, #2
	bne _02177FD2
	mov r0, #0x1d
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02177F50:
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x1e
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177F68:
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x1e
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177F80:
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x1e
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177F98:
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x1f
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x1e
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02177FB0:
	ldr r1, _02177FD4 ; =ovy261_2177fd8
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02177FB8:
	add r0, r5, #0
	mov r1, #1
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_02177FC2:
	add r0, r5, #0
	bl sub_02179144
	cmp r0, #0
	beq _02177FD2
	add r0, r6, #0
	bl sub_021C5C8C
_02177FD2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02177FD4: .word ovy261_2177fd8
	thumb_func_end ovy261_2177bb4

	thumb_func_start ovy261_2177fd8
ovy261_2177fd8: ; 0x02177FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6]
	add r4, r2, #0
	str r0, [sp]
	cmp r1, #0x17
	bls _02177FEA
	b _021783B4
_02177FEA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177FF6: ; jump table
	.short _02178026 - _02177FF6 - 2 ; case 0
	.short _02178042 - _02177FF6 - 2 ; case 1
	.short _0217805E - _02177FF6 - 2 ; case 2
	.short _02178078 - _02177FF6 - 2 ; case 3
	.short _02178088 - _02177FF6 - 2 ; case 4
	.short _021780BA - _02177FF6 - 2 ; case 5
	.short _021780D4 - _02177FF6 - 2 ; case 6
	.short _021780E4 - _02177FF6 - 2 ; case 7
	.short _02178116 - _02177FF6 - 2 ; case 8
	.short _02178130 - _02177FF6 - 2 ; case 9
	.short _021781C0 - _02177FF6 - 2 ; case 10
	.short _0217827C - _02177FF6 - 2 ; case 11
	.short _02178296 - _02177FF6 - 2 ; case 12
	.short _021782B0 - _02177FF6 - 2 ; case 13
	.short _02178302 - _02177FF6 - 2 ; case 14
	.short _0217831C - _02177FF6 - 2 ; case 15
	.short _0217832E - _02177FF6 - 2 ; case 16
	.short _02178344 - _02177FF6 - 2 ; case 17
	.short _02178366 - _02177FF6 - 2 ; case 18
	.short _02178370 - _02177FF6 - 2 ; case 19
	.short _02178398 - _02177FF6 - 2 ; case 20
	.short _021783A4 - _02177FF6 - 2 ; case 21
	.short _02178218 - _02177FF6 - 2 ; case 22
	.short _02178262 - _02177FF6 - 2 ; case 23
_02178026:
	add r0, r4, #0
	bl ovy261_217916c
	add r0, r4, #0
	mov r1, #2
	bl ovy261_21792e4
	add r0, r4, #0
	bl ovy261_2179388
	mov r0, #1
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178042:
	mov r5, #1
	add r0, r4, #0
	bl sub_021792CC
	and r5, r0
	add r0, r4, #0
	bl sub_021793E8
	tst r0, r5
	beq _02178120
	mov r0, #2
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0217805E:
	add r0, r4, #0
	mov r1, #5
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #3
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178078:
	add r0, r4, #0
	mov r1, #0
	bl ovy261_2178fe8
	mov r0, #4
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178088:
	add r0, r4, #0
	bl sub_02179120
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02178120
	add r0, r4, #0
	bl sub_02179114
	cmp r5, #0
	beq _021780AA
	cmp r5, #1
	beq _021780B2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021780AA:
	mov r0, #8
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021780B2:
	mov r0, #5
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021780BA:
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #6
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021780D4:
	add r0, r4, #0
	mov r1, #0
	bl ovy261_2178fe8
	mov r0, #7
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021780E4:
	add r0, r4, #0
	bl sub_02179120
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02178120
	add r0, r4, #0
	bl sub_02179114
	cmp r5, #0
	beq _02178106
	cmp r5, #1
	beq _0217810E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178106:
	mov r0, #0x13
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0217810E:
	mov r0, #2
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178116:
	add r0, r4, #0
	bl sub_021793F4
	cmp r0, #0
	bne _02178122
_02178120:
	b _021783B4
_02178122:
	add r0, r4, #0
	bl ovy261_21793d4
	mov r0, #9
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178130:
	ldr r0, [r4, #0x38]
	bl sub_0200B530
	add r7, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy261_2179400
	ldr r0, [r4, #0x30]
	bl sub_0201FE30
	cmp r0, #0
	bne _02178152
	mov r0, #0xb
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178152:
	mov r2, #0x77
	lsl r2, r2, #2
	ldr r1, [r4, #0x30]
	add r0, r7, #0
	add r2, r4, r2
	bl sub_0201F424
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r7, #0
	bl sub_0201F6E8
	cmp r0, #0
	beq _02178180
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x20
	orr r1, r0
	mov r0, #0x77
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #5
_02178180:
	cmp r5, #1
	bne _02178192
	mov r1, #0x77
	lsl r1, r1, #2
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0xdc
	orr r0, r2
	str r0, [r4, r1]
_02178192:
	mov r0, #0x1e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	cmp r5, #0
	bne _021781A6
	mov r0, #0xd
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021781A6:
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0xa
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021781C0:
	mov r3, #0x1e
	lsl r3, r3, #4
	ldr r7, [r4, r3]
	mov r0, #1
	mov r1, #1
	lsl r0, r7
	add r1, #0xff
	cmp r0, r1
	bgt _021781EC
	add r1, r3, #0
	sub r1, #0xe0
	sub r2, r3, #4
_021781D8:
	ldr r5, [r4, r2]
	tst r5, r0
	bne _021781EC
	ldr r0, [r4, r3]
	add r7, r0, #1
	mov r0, #1
	lsl r0, r7
	str r7, [r4, r3]
	cmp r0, r1
	ble _021781D8
_021781EC:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bgt _02178210
	add r7, #0x2a
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0x16
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178210:
	mov r0, #0x16
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178218:
	mov r3, #0x1e
	lsl r3, r3, #4
	ldr r0, [r4, r3]
	mov r1, #1
	add r2, r0, #1
	mov r0, #1
	lsl r0, r2
	add r1, #0xff
	str r2, [r4, r3]
	cmp r0, r1
	bgt _0217824A
	add r1, r3, #0
	mov r5, #1
	sub r1, #0xe0
	sub r2, r3, #4
_02178236:
	ldr r7, [r4, r2]
	tst r7, r0
	bne _0217824A
	ldr r0, [r4, r3]
	add r7, r0, #1
	add r0, r5, #0
	lsl r0, r7
	str r7, [r4, r3]
	cmp r0, r1
	ble _02178236
_0217824A:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bgt _0217825A
	mov r0, #0xa
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0217825A:
	mov r0, #0x17
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178262:
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0217827C:
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178296:
	add r0, r4, #0
	bl sub_021792D8
	cmp r0, #0
	bne _021782A2
	b _021783B4
_021782A2:
	add r0, r4, #0
	bl ovy261_21792b8
	mov r0, #0x14
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021782B0:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02017934
	add r7, r0, #0
	bl sub_0200C260
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0200BA78
	mov r1, #1
	bl sub_0200B924
	str r0, [sp, #4]
	ldr r1, _021783B8 ; =0x00008056
	add r0, r5, #0
	bl sub_0200C28C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0200C360
	ldr r0, [r4, #0x38]
	mov r1, #0xa
	mov r2, #2
	bl sub_0200B830
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0200B9C4
	add r0, r7, #0
	bl GFL_HeapFree
	mov r0, #0xe
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178302:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0xf
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0217831C:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201782C
	mov r0, #0x10
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0217832E:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02017850
	cmp r0, #2
	bne _021783B4
	mov r0, #0x11
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178344:
	add r0, r4, #0
	mov r1, #0
	bl ovy261_21792e4
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x15
	str r0, [r6]
	ldr r0, [sp]
	mov r1, #0x12
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178366:
	ldr r1, _021783BC ; =ovy261_21783c0
	bl sub_021C5C74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02178370:
	mov r5, #1
	add r0, r4, #0
	bl sub_021792D8
	and r5, r0
	add r0, r4, #0
	bl sub_021793F4
	tst r0, r5
	beq _021783B4
	add r0, r4, #0
	bl ovy261_21792b8
	add r0, r4, #0
	bl ovy261_21793d4
	mov r0, #0x14
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02178398:
	add r0, r4, #0
	mov r1, #1
	bl sub_02179154
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021783A4:
	add r0, r4, #0
	bl sub_02179144
	cmp r0, #0
	beq _021783B4
	ldr r0, [sp]
	bl sub_021C5C8C
_021783B4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021783B8: .word 0x00008056
_021783BC: .word ovy261_21783c0
	thumb_func_end ovy261_2177fd8

	thumb_func_start ovy261_21783c0
ovy261_21783c0: ; 0x021783C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x1a
	bhi _02178446
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021783DA: ; jump table
	.short _02178410 - _021783DA - 2 ; case 0
	.short _0217843C - _021783DA - 2 ; case 1
	.short _0217844E - _021783DA - 2 ; case 2
	.short _02178466 - _021783DA - 2 ; case 3
	.short _0217847E - _021783DA - 2 ; case 4
	.short _021784AC - _021783DA - 2 ; case 5
	.short _021784C4 - _021783DA - 2 ; case 6
	.short _021784D2 - _021783DA - 2 ; case 7
	.short _02178542 - _021783DA - 2 ; case 8
	.short _0217855A - _021783DA - 2 ; case 9
	.short _02178568 - _021783DA - 2 ; case 10
	.short _02178594 - _021783DA - 2 ; case 11
	.short _021785AC - _021783DA - 2 ; case 12
	.short _021785BA - _021783DA - 2 ; case 13
	.short _021785E8 - _021783DA - 2 ; case 14
	.short _02178600 - _021783DA - 2 ; case 15
	.short _0217862A - _021783DA - 2 ; case 16
	.short _02178652 - _021783DA - 2 ; case 17
	.short _02178672 - _021783DA - 2 ; case 18
	.short _02178688 - _021783DA - 2 ; case 19
	.short _021786A8 - _021783DA - 2 ; case 20
	.short _021786C0 - _021783DA - 2 ; case 21
	.short _021786D8 - _021783DA - 2 ; case 22
	.short _021786E2 - _021783DA - 2 ; case 23
	.short _021786EA - _021783DA - 2 ; case 24
	.short _021786F4 - _021783DA - 2 ; case 25
	.short _02178706 - _021783DA - 2 ; case 26
_02178410:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, #0
	bl ovy261_2179434
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02178428
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178428:
	add r0, r5, #0
	bl ovy261_217916c
	add r0, r5, #0
	mov r1, #0
	bl ovy261_21792e4
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217843C:
	add r0, r5, #0
	bl sub_021792CC
	cmp r0, #0
	bne _02178448
_02178446:
	b _02178718
_02178448:
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217844E:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02178460
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178460:
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178466:
	add r0, r5, #0
	mov r1, #0x27
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #4
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_0217847E:
	ldr r0, [r5, #0x38]
	bl sub_0200B530
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200F1D8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0x16
	bl sub_0200B574
	cmp r5, r0
	blo _021784A6
	ldr r1, _0217871C ; =ovy261_2178d7c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021784A6:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021784AC:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021784C4:
	add r0, r5, #0
	mov r1, #1
	bl ovy261_2178fe8
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021784D2:
	add r0, r5, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021785CA
	add r0, r5, #0
	bl sub_02179114
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0217852C
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0217852C
	cmp r6, #3
	bhi _021785CA
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217850C: ; jump table
	.short _02178514 - _0217850C - 2 ; case 0
	.short _0217851A - _0217850C - 2 ; case 1
	.short _02178520 - _0217850C - 2 ; case 2
	.short _02178526 - _0217850C - 2 ; case 3
_02178514:
	mov r0, #0x17
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217851A:
	mov r0, #0x13
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178520:
	mov r0, #0x1a
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178526:
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217852C:
	cmp r6, #0
	beq _02178536
	cmp r6, #1
	beq _0217853C
	pop {r3, r4, r5, r6, r7, pc}
_02178536:
	mov r0, #0x17
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217853C:
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178542:
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #9
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_0217855A:
	add r0, r5, #0
	mov r1, #3
	bl ovy261_2178fe8
	mov r0, #0xa
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178568:
	add r0, r5, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021785CA
	add r0, r5, #0
	bl sub_02179114
	cmp r6, #0
	beq _02178588
	cmp r6, #1
	beq _0217858E
	pop {r3, r4, r5, r6, r7, pc}
_02178588:
	mov r0, #0xb
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217858E:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178594:
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xc
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021785AC:
	add r0, r5, #0
	mov r1, #3
	bl ovy261_2178fe8
	mov r0, #0xd
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021785BA:
	add r0, r5, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021785CC
_021785CA:
	b _02178718
_021785CC:
	add r0, r5, #0
	bl sub_02179114
	cmp r6, #0
	beq _021785DC
	cmp r6, #1
	beq _021785E2
	pop {r3, r4, r5, r6, r7, pc}
_021785DC:
	mov r0, #0xe
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021785E2:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021785E8:
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178600:
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	mov r2, #4
	bl sub_0200B830
	mov r6, #0x6e
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #2
	bl sub_0200C370
	ldr r0, [r5, r6]
	bl sub_0201782C
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217862A:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02017850
	cmp r0, #3
	bhi _02178718
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02178644: ; jump table
	.short _02178718 - _02178644 - 2 ; case 0
	.short _02178718 - _02178644 - 2 ; case 1
	.short _0217864C - _02178644 - 2 ; case 2
	.short _0217864C - _02178644 - 2 ; case 3
_0217864C:
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178652:
	add r0, r5, #0
	mov r1, #1
	bl ovy261_21792e4
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x12
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178672:
	add r0, r5, #0
	bl sub_021792D8
	cmp r0, #0
	beq _02178718
	add r0, r5, #0
	bl ovy261_21792b8
	mov r0, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02178688:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0200C1D0
	cmp r0, #0
	beq _021786A2
	mov r0, #0x14
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021786A2:
	mov r0, #0x15
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021786A8:
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x16
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021786C0:
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #5
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021786D8:
	add r0, r5, #0
	mov r1, #4
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_021786E2:
	ldr r1, _02178720 ; =ovy261_2178724
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021786EA:
	add r0, r5, #0
	mov r1, #1
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_021786F4:
	add r0, r5, #0
	bl sub_02179144
	cmp r0, #0
	beq _02178718
	add r0, r6, #0
	bl sub_021C5C8C
	pop {r3, r4, r5, r6, r7, pc}
_02178706:
	add r0, r5, #0
	bl ovy261_2179528
	mov r0, #0x19
	str r0, [r4]
	add r0, r6, #0
	mov r1, #5
	bl sub_021C5C88
_02178718:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217871C: .word ovy261_2178d7c
_02178720: .word ovy261_2178724
	thumb_func_end ovy261_21783c0

	thumb_func_start ovy261_2178724
ovy261_2178724: ; 0x02178724
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl ovy261_217a2e8
	cmp r0, #1
	bne _02178748
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, _02178A14 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
_02178748:
	ldr r0, [r5]
	cmp r0, #0x28
	bls _02178750
	b _02178BE2
_02178750:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217875C: ; jump table
	.short _021787AE - _0217875C - 2 ; case 0
	.short _021787C6 - _0217875C - 2 ; case 1
	.short _021787F8 - _0217875C - 2 ; case 2
	.short _02178808 - _0217875C - 2 ; case 3
	.short _02178836 - _0217875C - 2 ; case 4
	.short _02178842 - _0217875C - 2 ; case 5
	.short _02178852 - _0217875C - 2 ; case 6
	.short _02178872 - _0217875C - 2 ; case 7
	.short _02178880 - _0217875C - 2 ; case 8
	.short _021788BA - _0217875C - 2 ; case 9
	.short _021788CE - _0217875C - 2 ; case 10
	.short _021788DE - _0217875C - 2 ; case 11
	.short _021788F6 - _0217875C - 2 ; case 12
	.short _02178900 - _0217875C - 2 ; case 13
	.short _0217891E - _0217875C - 2 ; case 14
	.short _02178944 - _0217875C - 2 ; case 15
	.short _0217899A - _0217875C - 2 ; case 16
	.short _021789AC - _0217875C - 2 ; case 17
	.short _021789C4 - _0217875C - 2 ; case 18
	.short _021789DA - _0217875C - 2 ; case 19
	.short _021789F0 - _0217875C - 2 ; case 20
	.short _02178A34 - _0217875C - 2 ; case 21
	.short _02178A44 - _0217875C - 2 ; case 22
	.short _02178A54 - _0217875C - 2 ; case 23
	.short _02178A6C - _0217875C - 2 ; case 24
	.short _02178A7C - _0217875C - 2 ; case 25
	.short _02178A8C - _0217875C - 2 ; case 26
	.short _02178AA4 - _0217875C - 2 ; case 27
	.short _02178ABC - _0217875C - 2 ; case 28
	.short _02178ADC - _0217875C - 2 ; case 29
	.short _02178AEE - _0217875C - 2 ; case 30
	.short _02178AFE - _0217875C - 2 ; case 31
	.short _02178B1A - _0217875C - 2 ; case 32
	.short _02178B3A - _0217875C - 2 ; case 33
	.short _02178B52 - _0217875C - 2 ; case 34
	.short _02178B64 - _0217875C - 2 ; case 35
	.short _02178B7A - _0217875C - 2 ; case 36
	.short _02178B9A - _0217875C - 2 ; case 37
	.short _02178BBE - _0217875C - 2 ; case 38
	.short _02178BC8 - _0217875C - 2 ; case 39
	.short _02178BD2 - _0217875C - 2 ; case 40
_021787AE:
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021787C6:
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0
	mov r7, #0
	bl ovy261_217912c
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_021C4F30
	ldr r0, _02178A18 ; =0x0000080C
	bl GFL_SndSEPlay
	mov r0, #0x75
	lsl r0, r0, #2
	str r7, [r4, r0]
	add r0, r0, #4
	str r7, [r4, r0]
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #2
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021787F8:
	ldr r0, [r4, #0xc]
	bl sub_0217A31C
	cmp r0, #0
	beq _02178890
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178808:
	ldr r0, [r4, #0xc]
	bl ovy261_217a324
	cmp r0, #1
	beq _02178818
	cmp r0, #2
	beq _0217881C
	b _02178820
_02178818:
	mov r0, #0xd
	b _0217881E
_0217881C:
	mov r0, #9
_0217881E:
	str r0, [r5]
_02178820:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _02178890
	ldr r0, _02178A1C ; =0x00000547
	bl GFL_SndSEPlay
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178836:
	ldr r0, [r4, #0xc]
	bl ovy261_217a3cc
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178842:
	ldr r0, [r4, #0xc]
	bl ovy261_217a3ec
	cmp r0, #0
	beq _02178890
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178852:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #7
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178872:
	add r0, r4, #0
	mov r1, #0
	bl ovy261_2178fe8
	mov r0, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178880:
	add r0, r4, #0
	bl sub_02179120
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _02178892
_02178890:
	b _02178BE2
_02178892:
	add r0, r4, #0
	bl sub_02179114
	cmp r7, #0
	beq _021788A2
	cmp r7, #1
	beq _021788B4
	pop {r3, r4, r5, r6, r7, pc}
_021788A2:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	ldr r1, _02178A14 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021788B4:
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021788BA:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [r4, #0xc]
	bl ovy261_217a3cc
	mov r0, #0xa
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021788CE:
	ldr r0, [r4, #0xc]
	bl ovy261_217a3ec
	cmp r0, #0
	beq _021789BC
	mov r0, #0xb
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021788DE:
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xc
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021788F6:
	ldr r1, _02178A14 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02178900:
	mov r6, #0x6f
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	add r1, r4, #0
	bl ovy261_21794cc
	ldr r0, [r4, #0xc]
	ldr r1, [r4, r6]
	bl ovy261_217a470
	cmp r0, #0
	beq _021789BC
	mov r0, #0xe
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217891E:
	ldr r0, [r4, #0xc]
	add r1, sp, #0
	bl ovy261_217a4b0
	cmp r0, #0
	beq _021789BC
	bl sub_0201FCF8
	add r2, r0, #0
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, [sp]
	ldr r1, [r4, r1]
	add r2, #0xd4
	blx MI_CpuCopy8
	mov r0, #0xf
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178944:
	mov r7, #0x6f
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	ldr r1, [r0, #0x40]
	add r0, r7, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bne _02178988
	ldr r0, [r4, #0x38]
	mov r1, #0xc
	bl sub_0200B798
	add r1, r7, #4
	ldr r1, [r4, r1]
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	add r1, #0x20
	bl sub_0200F254
	cmp r6, #0
	bne _02178976
	bne _0217897A
	cmp r0, #0
	bne _0217897A
_02178976:
	mov r1, #1
	b _0217897C
_0217897A:
	mov r1, #0
_0217897C:
	mov r0, #0x75
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178988:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	bl sub_02006280
	mov r0, #0x15
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0217899A:
	bl sub_02040440
	mov r1, #0x48
	mov r2, #0x1f
	bl sub_02040624
	mov r0, #0x11
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021789AC:
	bl sub_02040440
	mov r1, #0x48
	mov r2, #0x1f
	bl sub_02040664
	cmp r0, #0
	bne _021789BE
_021789BC:
	b _02178BE2
_021789BE:
	mov r0, #0x12
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021789C4:
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r0, [r4, #0xc]
	add r1, r4, r1
	bl ovy261_217a534
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x13
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021789DA:
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r4, #0xc]
	add r1, r4, r1
	bl ovy261_217a56c
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x14
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021789F0:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021C4F30
	bl sub_02006280
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02178A2E
	sub r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02178A2E
	ldr r0, _02178A20 ; =0x0000063A
	b _02178A24
	nop
_02178A14: .word ovy261_21783c0
_02178A18: .word 0x0000080C
_02178A1C: .word 0x00000547
_02178A20: .word 0x0000063A
_02178A24:
	bl GFL_SndSEPlay
	mov r0, #0x1b
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A2E:
	mov r0, #0x18
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A34:
	ldr r0, [r4, #0xc]
	bl sub_0217A42C
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x16
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A44:
	ldr r0, [r4, #0xc]
	bl ovy261_217a434
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x17
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A54:
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x27
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178A6C:
	ldr r0, [r4, #0xc]
	bl sub_0217A42C
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x19
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A7C:
	ldr r0, [r4, #0xc]
	bl ovy261_217a434
	cmp r0, #0
	beq _02178ACA
	mov r0, #0x1a
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178A8C:
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x27
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178AA4:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178ABC:
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, #1
	str r0, [r4, r1]
	cmp r2, #0x78
	bhi _02178ACC
_02178ACA:
	b _02178BE2
_02178ACC:
	mov r0, #0
	str r0, [r4, r1]
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x1d
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178ADC:
	mov r1, #7
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy261_217930c
	mov r0, #0x1e
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178AEE:
	add r0, r4, #0
	bl sub_0217937C
	cmp r0, #0
	beq _02178BE2
	mov r0, #0x1f
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178AFE:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0xa0
	cmp r2, r1
	bls _02178BE2
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x20
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178B1A:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x21
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178B3A:
	add r0, r4, #0
	mov r1, #0x23
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x22
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178B52:
	bl sub_02040440
	mov r1, #0x47
	mov r2, #0x1f
	bl sub_02040624
	mov r0, #0x23
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178B64:
	bl sub_02040440
	mov r1, #0x47
	mov r2, #0x1f
	bl sub_02040664
	cmp r0, #0
	beq _02178BE2
	mov r0, #0x24
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178B7A:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x28
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x25
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178B9A:
	mov r6, #0x73
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r1, #1
	str r0, [r4, r6]
	cmp r1, #0x3c
	bls _02178BE2
	ldr r0, [r4, #0x38]
	bl sub_0200B530
	mov r1, #0
	str r1, [r4, r6]
	mov r1, #0x13
	bl sub_0200B574
	mov r0, #0x26
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178BBE:
	add r0, r4, #0
	mov r1, #2
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_02178BC8:
	ldr r1, _02178BE4 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02178BD2:
	add r0, r4, #0
	bl sub_02179144
	cmp r0, #0
	beq _02178BE2
	add r0, r6, #0
	bl sub_021C5C8C
_02178BE2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02178BE4: .word ovy261_21783c0
	thumb_func_end ovy261_2178724

	thumb_func_start ovy261_2178be8
ovy261_2178be8: ; 0x02178BE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl ovy261_217a2e8
	cmp r0, #1
	bne _02178C0C
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, _02178D70 ; =ovy261_21783c0
	add r0, r6, #0
	bl sub_021C5C74
_02178C0C:
	ldr r0, [r5]
	cmp r0, #8
	bhi _02178C60
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02178C1E: ; jump table
	.short _02178C30 - _02178C1E - 2 ; case 0
	.short _02178C56 - _02178C1E - 2 ; case 1
	.short _02178C68 - _02178C1E - 2 ; case 2
	.short _02178C78 - _02178C1E - 2 ; case 3
	.short _02178D18 - _02178C1E - 2 ; case 4
	.short _02178D30 - _02178C1E - 2 ; case 5
	.short _02178D40 - _02178C1E - 2 ; case 6
	.short _02178D54 - _02178C1E - 2 ; case 7
	.short _02178D5E - _02178C1E - 2 ; case 8
_02178C30:
	mov r6, #0x6e
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02017934
	bl sub_0200F6F4
	add r6, #8
	add r7, r0, #0
	ldr r0, [r4, r6]
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178C56:
	ldr r0, [r4, #0xc]
	bl sub_0217A42C
	cmp r0, #0
	bne _02178C62
_02178C60:
	b _02178D6E
_02178C62:
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178C68:
	ldr r0, [r4, #0xc]
	bl ovy261_217a434
	cmp r0, #0
	beq _02178D6E
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178C78:
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [sp]
	mov r1, #0
	bl sub_0200F1D8
	mov r7, #7
	lsl r7, r7, #6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r2, [r4, r7]
	ldr r0, [r4, #0x34]
	add r1, r6, #0
	add r2, #0x20
	bl sub_0200F218
	add r3, r7, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x34]
	ldrb r3, [r3, #8]
	add r1, r6, #0
	mov r2, #0
	bl sub_0200F238
	add r3, r7, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x34]
	ldrb r3, [r3, #9]
	add r1, r6, #0
	mov r2, #1
	bl sub_0200F238
	add r0, r7, #4
	ldr r0, [r4, r0]
	mov r6, #0
	ldr r3, [r0]
	cmp r3, #4
	bhi _02178CE4
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02178CD0: ; jump table
	.short _02178CE0 - _02178CD0 - 2 ; case 0
	.short _02178CDA - _02178CD0 - 2 ; case 1
	.short _02178CEE - _02178CD0 - 2 ; case 2
	.short _02178CE0 - _02178CD0 - 2 ; case 3
	.short _02178CDA - _02178CD0 - 2 ; case 4
_02178CDA:
	mov r0, #1
	str r0, [sp]
	b _02178CEE
_02178CE0:
	mov r6, #1
	b _02178CEE
_02178CE4:
	ldr r0, _02178D74 ; =0x0217A89C
	ldr r2, _02178D78 ; =0x0217A8A4
	mov r1, #0
	bl sub_0203CB94
_02178CEE:
	ldr r0, [r4, #0x34]
	ldr r2, [sp]
	mov r1, #1
	bl sub_0200F1E0
	ldr r0, [r4, #0x34]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200F1E0
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	bl sub_0200F1E0
	add r0, r4, #0
	bl ovy261_21792a4
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178D18:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #2
	bl ovy261_217912c
	mov r0, #8
	str r0, [r5]
	add r0, r6, #0
	mov r1, #5
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02178D30:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201782C
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178D40:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02017850
	cmp r0, #2
	bne _02178D6E
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02178D54:
	add r0, r4, #0
	mov r1, #3
	bl sub_02179154
	pop {r3, r4, r5, r6, r7, pc}
_02178D5E:
	add r0, r4, #0
	bl sub_02179144
	cmp r0, #0
	beq _02178D6E
	add r0, r6, #0
	bl sub_021C5C8C
_02178D6E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02178D70: .word ovy261_21783c0
_02178D74: .word 0x0217A89C
_02178D78: .word 0x0217A8A4
	thumb_func_end ovy261_2178be8

	thumb_func_start ovy261_2178d7c
ovy261_2178d7c: ; 0x02178D7C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #0x12
	bls _02178D8C
	b _02178FE2
_02178D8C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02178D98: ; jump table
	.short _02178DBE - _02178D98 - 2 ; case 0
	.short _02178DF4 - _02178D98 - 2 ; case 1
	.short _02178E1E - _02178D98 - 2 ; case 2
	.short _02178E36 - _02178D98 - 2 ; case 3
	.short _02178E60 - _02178D98 - 2 ; case 4
	.short _02178E88 - _02178D98 - 2 ; case 5
	.short _02178EA8 - _02178D98 - 2 ; case 6
	.short _02178EC0 - _02178D98 - 2 ; case 7
	.short _02178ECE - _02178D98 - 2 ; case 8
	.short _02178F24 - _02178D98 - 2 ; case 9
	.short _02178F3C - _02178D98 - 2 ; case 10
	.short _02178F52 - _02178D98 - 2 ; case 11
	.short _02178F72 - _02178D98 - 2 ; case 12
	.short _02178F8A - _02178D98 - 2 ; case 13
	.short _02178FA2 - _02178D98 - 2 ; case 14
	.short _02178FAC - _02178D98 - 2 ; case 15
	.short _02178FB6 - _02178D98 - 2 ; case 16
	.short _02178FBE - _02178D98 - 2 ; case 17
	.short _02178FD0 - _02178D98 - 2 ; case 18
_02178DBE:
	ldr r0, [r4, #0x38]
	mov r1, #0xa
	bl sub_0200B798
	cmp r0, #3
	bne _02178DE8
	add r0, r4, #0
	bl ovy261_217916c
	add r0, r4, #0
	mov r1, #1
	bl ovy261_21792e4
_02178DD8:
	add r0, r4, #0
	bl sub_021792CC
	cmp r0, #0
	beq _02178DD8
	mov r0, #6
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178DE8:
	add r0, r4, #0
	bl ovy261_21792a4
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178DF4:
	ldr r0, [r4, #0x38]
	bl sub_0200B530
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0200F1D8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x16
	bl sub_0200B574
	cmp r4, r0
	blo _02178E18
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178E18:
	mov r0, #0x10
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178E1E:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #2
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #3
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178E36:
	ldr r0, [r4, #0x38]
	mov r1, #0xa
	mov r2, #3
	bl sub_0200B830
	mov r6, #0x6e
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #2
	bl sub_0200C370
	ldr r0, [r4, r6]
	bl sub_0201782C
	mov r0, #4
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178E60:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02017850
	cmp r0, #3
	bhi _02178EDE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02178E7A: ; jump table
	.short _02178FE2 - _02178E7A - 2 ; case 0
	.short _02178FE2 - _02178E7A - 2 ; case 1
	.short _02178E82 - _02178E7A - 2 ; case 2
	.short _02178E82 - _02178E7A - 2 ; case 3
_02178E82:
	mov r0, #5
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178E88:
	add r0, r4, #0
	mov r1, #1
	bl ovy261_21792e4
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178EA8:
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #7
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178EC0:
	add r0, r4, #0
	mov r1, #2
	bl ovy261_2178fe8
	mov r0, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178ECE:
	add r0, r4, #0
	bl sub_02179120
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02178EE0
_02178EDE:
	b _02178FE2
_02178EE0:
	add r0, r4, #0
	bl sub_02179114
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02178F1A
	sub r0, #0xc
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02178F1A
	cmp r6, #0
	beq _02178F08
	cmp r6, #1
	beq _02178F0E
	cmp r6, #2
	beq _02178F14
	pop {r4, r5, r6, pc}
_02178F08:
	mov r0, #0xb
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F0E:
	mov r0, #0x12
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F14:
	mov r0, #9
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F1A:
	cmp r6, #0
	bne _02178FE2
	mov r0, #9
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F24:
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xa
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178F3C:
	add r0, r4, #0
	bl sub_021792D8
	cmp r0, #0
	beq _02178FE2
	add r0, r4, #0
	bl ovy261_21792b8
	mov r0, #0xf
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F52:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0200C1D0
	cmp r0, #0
	beq _02178F6C
	mov r0, #0xc
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F6C:
	mov r0, #0xd
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02178F72:
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xe
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178F8A:
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #1
	bl ovy261_217912c
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_02178FA2:
	add r0, r4, #0
	mov r1, #4
	bl sub_02179154
	pop {r4, r5, r6, pc}
_02178FAC:
	add r0, r4, #0
	mov r1, #1
	bl sub_02179154
	pop {r4, r5, r6, pc}
_02178FB6:
	ldr r1, _02178FE4 ; =ovy261_21783c0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_02178FBE:
	add r0, r4, #0
	bl sub_02179144
	cmp r0, #0
	beq _02178FE2
	add r0, r6, #0
	bl sub_021C5C8C
	pop {r4, r5, r6, pc}
_02178FD0:
	add r0, r4, #0
	bl ovy261_2179528
	mov r0, #0x11
	str r0, [r5]
	add r0, r6, #0
	mov r1, #6
	bl sub_021C5C88
_02178FE2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02178FE4: .word ovy261_21783c0
	thumb_func_end ovy261_2178d7c

	thumb_func_start ovy261_2178fe8
ovy261_2178fe8: ; 0x02178FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	add r7, r1, #0
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [sp, #0x18]
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r7, #3
	str r1, [sp, #0x1c]
	bhi _021790AC
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217901C: ; jump table
	.short _0217902A - _0217901C - 2 ; case 0
	.short _02179040 - _0217901C - 2 ; case 1
	.short _0217907A - _0217901C - 2 ; case 2
	.short _02179024 - _0217901C - 2 ; case 3
_02179024:
	mov r1, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x2e]
_0217902A:
	mov r0, #6
	str r0, [sp, #0x20]
	mov r0, #7
	str r0, [sp, #0x24]
	mov r0, #2
	mov r6, #1
	str r0, [sp, #0x30]
	str r6, [sp, #0x3c]
	add r0, sp, #0x14
	strh r6, [r0, #0x2c]
	b _021790AC
_02179040:
	mov r1, #0
	str r1, [sp, #0x3c]
	add r1, r0, #0
	add r1, #0x28
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0217906C
	add r0, #0x1c
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0217906C
	mov r0, #0xd
	str r0, [sp, #0x20]
	mov r0, #0xe
	str r0, [sp, #0x24]
	mov r0, #0x28
	str r0, [sp, #0x28]
	mov r0, #0xf
	str r0, [sp, #0x2c]
	mov r0, #4
	b _02179076
_0217906C:
	mov r0, #0xd
	str r0, [sp, #0x20]
	mov r0, #0xf
	str r0, [sp, #0x24]
	mov r0, #2
_02179076:
	str r0, [sp, #0x30]
	b _021790AA
_0217907A:
	mov r1, #0
	str r1, [sp, #0x3c]
	add r1, r0, #0
	add r1, #0x28
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021790A2
	add r0, #0x1c
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021790A2
	mov r0, #0xe
	str r0, [sp, #0x20]
	mov r0, #0x28
	str r0, [sp, #0x24]
	mov r0, #0x1e
	str r0, [sp, #0x28]
	mov r0, #3
	b _021790A8
_021790A2:
	mov r0, #0x1e
	str r0, [sp, #0x20]
	mov r0, #1
_021790A8:
	str r0, [sp, #0x30]
_021790AA:
	mov r6, #0
_021790AC:
	mov r1, #0
	add r0, sp, #0x14
	strh r1, [r0, #0x20]
	mov r1, #0xf
	strh r1, [r0, #0x22]
	mov r1, #0xd
	strh r1, [r0, #0x24]
	mov r1, #1
	strh r1, [r0, #0x26]
	cmp r6, #0
	beq _021790C8
	cmp r6, #1
	beq _021790DE
	b _021790F6
_021790C8:
	mov r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x18
	mov r0, #2
	str r0, [sp, #0x10]
	lsr r1, r5, #1
	mov r0, #9
	sub r0, r0, r1
	b _021790F0
_021790DE:
	mov r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x18
	mov r0, #0x13
	str r0, [sp, #0x10]
	mov r0, #0x11
	sub r0, r0, r5
_021790F0:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_021790F6:
	mov r0, #0x72
	str r5, [sp]
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, sp, #0x14
	bl sub_021C5A88
	str r0, [r4, #4]
	str r7, [r4, #8]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy261_2178fe8

	thumb_func_start sub_02179114
sub_02179114: ; 0x02179114
	ldr r0, [r0, #4]
	ldr r3, _0217911C ; =sub_021C5BA4
	bx r3
	nop
_0217911C: .word sub_021C5BA4
	thumb_func_end sub_02179114

	thumb_func_start sub_02179120
sub_02179120: ; 0x02179120
	ldr r0, [r0, #4]
	ldr r3, _02179128 ; =sub_021C5BD4
	bx r3
	nop
_02179128: .word sub_021C5BD4
	thumb_func_end sub_02179120

	thumb_func_start ovy261_217912c
ovy261_217912c: ; 0x0217912C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_021C5888
	pop {r3, r4, r5, pc}
	thumb_func_end ovy261_217912c

	thumb_func_start sub_02179144
sub_02179144: ; 0x02179144
	mov r1, #0x69
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _02179150 ; =sub_021C5A1C
	bx r3
	nop
_02179150: .word sub_021C5A1C
	thumb_func_end sub_02179144

	thumb_func_start sub_02179154
sub_02179154: ; 0x02179154
	mov r2, #0x67
	lsl r2, r2, #2
	str r1, [r0, r2]
	ldr r0, [r0]
	ldr r1, _02179164 ; =0x02177BAD
	ldr r3, _02179168 ; =sub_021C5C74
	bx r3
	nop
_02179164: .word 0x02177BAD
_02179168: .word sub_021C5C74
	thumb_func_end sub_02179154

	thumb_func_start ovy261_217916c
ovy261_217916c: ; 0x0217916C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xe8
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0217917A
	b _0217929E
_0217917A:
	mov r4, #0x6e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_02017934
	add r6, r0, #0
	bl sub_0200C260
	ldr r0, [r5, #0x38]
	bl sub_0200B530
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_0200BA78
	mov r1, #1
	bl sub_0200B924
	str r0, [sp, #0x20]
	ldr r0, [r5, r4]
	bl sub_0201736C
	str r0, [sp, #0x24]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_021C2668
	str r0, [sp, #0x28]
	add r0, sp, #0x3c
	mov r1, #0
	mov r2, #0xac
	mov r6, #0xac
	blx MI_CpuFill8
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0200F1D8
	add r7, sp, #0xbc
	strh r0, [r7, #0x20]
	ldr r0, [r5, #0x34]
	mov r1, #2
	bl sub_0200F1D8
	strh r0, [r7, #0x22]
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0200F1D8
	strh r0, [r7, #0x24]
	ldr r0, [sp, #0x1c]
	mov r1, #0x16
	bl sub_0200B574
	strh r0, [r7, #0x26]
	ldr r0, [sp, #0x24]
	bl sub_02008BF4
	str r0, [sp, #0xd8]
	ldr r0, [r5, #0x38]
	bl sub_0200B794
	add r1, sp, #0x3c
	mov r2, #0x92
	blx MI_CpuCopy8
	ldr r0, [r5, #0x38]
	mov r1, #6
	bl sub_0200B798
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x38]
	mov r1, #5
	bl sub_0200B798
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x38]
	mov r1, #4
	bl sub_0200B798
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xd0]
	ldr r0, [r5, #0x38]
	mov r1, #9
	bl sub_0200B798
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x38]
	mov r1, #8
	bl sub_0200B798
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x38]
	mov r1, #7
	bl sub_0200B798
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x34]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xd4]
	ldr r0, [r5, #0x38]
	mov r1, #0xb
	bl sub_0200B798
	add r6, #0xfc
	strh r0, [r7, #0x28]
	ldr r0, [r5, r6]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x10
	ldrh r0, [r5, r0]
	sub r4, #8
	str r0, [sp, #0x18]
	ldr r3, [r5, r4]
	add r0, sp, #0x3c
	bl sub_021C323C
	str r0, [r5, #0x10]
_0217929E:
	add sp, #0xe8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy261_217916c

	thumb_func_start ovy261_21792a4
ovy261_21792a4: ; 0x021792A4
	push {r4, lr}
	add r4, r0, #0
	bl ovy261_217916c
_021792AC:
	add r0, r4, #0
	bl sub_021792CC
	cmp r0, #0
	beq _021792AC
	pop {r4, pc}
	thumb_func_end ovy261_21792a4

	thumb_func_start ovy261_21792b8
ovy261_21792b8: ; 0x021792B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021792CA
	bl sub_021C33C4
	mov r0, #0
	str r0, [r4, #0x10]
_021792CA:
	pop {r4, pc}
	thumb_func_end ovy261_21792b8

	thumb_func_start sub_021792CC
sub_021792CC: ; 0x021792CC
	ldr r0, [r0, #0x10]
	ldr r3, _021792D4 ; =sub_021C35EC
	bx r3
	nop
_021792D4: .word sub_021C35EC
	thumb_func_end sub_021792CC

	thumb_func_start sub_021792D8
sub_021792D8: ; 0x021792D8
	ldr r0, [r0, #0x10]
	ldr r3, _021792E0 ; =sub_021C3720
	bx r3
	nop
_021792E0: .word sub_021C3720
	thumb_func_end sub_021792D8

	thumb_func_start ovy261_21792e4
ovy261_21792e4: ; 0x021792E4
	push {r4, lr}
	sub sp, #8
	mov r4, #0x6a
	add r3, r0, #0
	lsl r4, r4, #2
	ldr r0, [r3, r4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x20
	ldrh r0, [r3, r0]
	add r4, r4, #4
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	ldr r2, [r3, #0x24]
	ldr r3, [r3, r4]
	bl sub_021C33F0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_21792e4

	thumb_func_start ovy261_217930c
ovy261_217930c: ; 0x0217930C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r6, r1, #0
	cmp r0, #0
	bne _02179362
	mov r4, #0x6d
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_021C2668
	add r7, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0xb
	bl sub_0200B798
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	sub r2, r4, #4
	str r1, [sp]
	ldr r1, [r5, #0x24]
	str r1, [sp, #4]
	ldr r1, [r5, #0x2c]
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x14
	ldrh r0, [r5, r0]
	sub r4, #0xc
	add r1, r7, #0
	str r0, [sp, #0x18]
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	add r0, r6, #0
	bl sub_021C4644
	str r0, [r5, #0x14]
_02179362:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy261_217930c

	thumb_func_start ovy261_2179368
ovy261_2179368: ; 0x02179368
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0217937A
	bl sub_021C4834
	mov r0, #0
	str r0, [r4, #0x14]
_0217937A:
	pop {r4, pc}
	thumb_func_end ovy261_2179368

	thumb_func_start sub_0217937C
sub_0217937C: ; 0x0217937C
	ldr r0, [r0, #0x14]
	ldr r3, _02179384 ; =sub_021C48A0
	bx r3
	nop
_02179384: .word sub_021C48A0
	thumb_func_end sub_0217937C

	thumb_func_start ovy261_2179388
ovy261_2179388: ; 0x02179388
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021793CE
	mov r6, #0x6d
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_021C2668
	add r4, r0, #0
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02017934
	bl sub_0200C260
	add r1, r6, #0
	sub r1, #8
	ldr r1, [r5, r1]
	sub r2, r6, #4
	str r1, [sp]
	ldr r1, [r5, #0x24]
	str r1, [sp, #4]
	add r1, r6, #0
	add r1, #0x14
	ldrh r1, [r5, r1]
	str r1, [sp, #8]
	ldr r2, [r5, r2]
	ldr r3, [r5, #0x28]
	add r1, r4, #0
	bl sub_021C4F60
	str r0, [r5, #0x18]
_021793CE:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy261_2179388

	thumb_func_start ovy261_21793d4
ovy261_21793d4: ; 0x021793D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021793E6
	bl sub_021C53E0
	mov r0, #0
	str r0, [r4, #0x18]
_021793E6:
	pop {r4, pc}
	thumb_func_end ovy261_21793d4

	thumb_func_start sub_021793E8
sub_021793E8: ; 0x021793E8
	ldr r0, [r0, #0x18]
	ldr r3, _021793F0 ; =sub_021C545C
	bx r3
	nop
_021793F0: .word sub_021C545C
	thumb_func_end sub_021793E8

	thumb_func_start sub_021793F4
sub_021793F4: ; 0x021793F4
	ldr r0, [r0, #0x18]
	ldr r3, _021793FC ; =sub_021C5544
	bx r3
	nop
_021793FC: .word sub_021C5544
	thumb_func_end sub_021793F4

	thumb_func_start ovy261_2179400
ovy261_2179400: ; 0x02179400
	push {r4, r5, r6, lr}
	mov r4, #0x6e
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl sub_02017934
	bl sub_0200C260
	add r4, #0x10
	ldrh r1, [r5, r4]
	bl sub_0200C28C
	add r4, r0, #0
	bl sub_0201FCF8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	thumb_func_end ovy261_2179400

	thumb_func_start ovy261_2179434
ovy261_2179434: ; 0x02179434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x6e
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	mov r0, #0x64
	str r0, [r5, #0x44]
	add r0, r6, #0
	bl sub_0201736C
	add r7, r0, #0
	bl sub_02008B08
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	add r0, #0x20
	bl OS_GetMacAddress
	add r0, r6, #0
	bl sub_02017934
	bl sub_0200EF7C
	add r2, r5, #0
	mov r1, #0
	add r2, #0x38
	bl sub_0200EF90
	add r0, r6, #0
	bl sub_02017934
	bl sub_0200C260
	ldr r1, _021794C8 ; =0x00008056
	bl sub_0200C28C
	add r6, r0, #0
	bl sub_0201FCF8
	add r1, r5, #0
	add r2, r0, #0
	add r0, r6, #0
	add r1, #0xd4
	blx MI_CpuCopy8
	add r0, r6, #0
	bl GFL_HeapFree
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0200F1D8
	str r0, [r5, #0x28]
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl sub_0200F1D8
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0200F1D8
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl sub_0200B798
	str r0, [r5, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021794C8: .word 0x00008056
	thumb_func_end ovy261_2179434

	thumb_func_start ovy261_21794cc
ovy261_21794cc: ; 0x021794CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x38]
	mov r1, #2
	bl sub_0200B798
	str r0, [r4, #0x40]
	pop {r4, pc}
	thumb_func_end ovy261_21794cc

	thumb_func_start ovy261_21794dc
ovy261_21794dc: ; 0x021794DC
	push {r3, lr}
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, [r0]
	cmp r3, #4
	bhi _02179510
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021794F6: ; jump table
	.short _0217950C - _021794F6 - 2 ; case 0
	.short _02179504 - _021794F6 - 2 ; case 1
	.short _0217951A - _021794F6 - 2 ; case 2
	.short _02179508 - _021794F6 - 2 ; case 3
	.short _02179500 - _021794F6 - 2 ; case 4
_02179500:
	mov r0, #0x38
	pop {r3, pc}
_02179504:
	mov r0, #0x34
	pop {r3, pc}
_02179508:
	mov r0, #0x37
	pop {r3, pc}
_0217950C:
	mov r0, #0x35
	pop {r3, pc}
_02179510:
	ldr r0, _02179520 ; =0x0217A89C
	ldr r2, _02179524 ; =0x0217A8A4
	mov r1, #0
	bl sub_0203CB94
_0217951A:
	mov r0, #0x36
	pop {r3, pc}
	nop
_02179520: .word 0x0217A89C
_02179524: .word 0x0217A8A4
	thumb_func_end ovy261_21794dc

	thumb_func_start ovy261_2179528
ovy261_2179528: ; 0x02179528
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ovy261_21794dc
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_0204898C
	str r0, [sp, #0xc]
	bl sub_020485F8
	mov r4, #0x72
	lsl r4, r4, #2
	ldrh r1, [r5, r4]
	add r0, #0x40
	bl GFL_StrBufCreate
	add r7, r0, #0
	sub r0, r4, #4
	ldr r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0201736C
	add r2, r0, #0
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	bl GFL_CopyVarForText
	ldr r0, [r5, #0x2c]
	ldr r2, [sp, #8]
	mov r1, #1
	bl GFL_CopyVarForText
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r6, #0xa]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	mov r3, #1
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r6, #8]
	ldr r0, [r5, #0x2c]
	mov r1, #3
	mov r3, #1
	bl StringSetNumber
	ldr r0, [r5, #0x2c]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	sub r4, #0x24
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #1
	bl sub_021C58A4
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy261_2179528

	thumb_func_start ovy261_21795c8
ovy261_21795c8: ; 0x021795C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x9b
	str r0, [sp]
	ldr r3, _02179638 ; =0x0217A8BC
	add r0, r6, #0
	mov r1, #0x38
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	blx MI_CpuFill8
	add r2, r4, #0
	add r2, #0x14
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	strh r6, [r4, #0x34]
	ldr r0, [r4, #0x28]
	mov r1, #3
	add r2, r6, #0
	bl sub_021C29C4
	ldr r2, _0217963C ; =0x000001A1
	mov r0, #0
	mov r1, #2
	add r3, r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r4]
	mov r0, #8
	mov r1, #0x40
	add r2, r6, #0
	bl sub_020241E4
	str r0, [r4, #4]
	ldr r1, _02179640 ; =ovy261_217968c
	add r0, r4, #0
	add r2, r6, #0
	bl sub_021C5C10
	str r0, [r4, #0x10]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02179638: .word 0x0217A8BC
_0217963C: .word 0x000001A1
_02179640: .word ovy261_217968c
	thumb_func_end ovy261_21795c8

	thumb_func_start ovy261_2179644
ovy261_2179644: ; 0x02179644
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_021C5C4C
	add r0, r4, #0
	bl ovy261_217a0d0
	ldr r0, [r4, #4]
	bl GFL_WordSetSystemFree
	ldr r0, [r4]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy261_2179644

	thumb_func_start ovy261_2179668
ovy261_2179668: ; 0x02179668
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_021C5C54
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0217967E
	ldr r1, [r4, #0x24]
	bl sub_021C35E4
_0217967E:
	pop {r4, pc}
	thumb_func_end ovy261_2179668

	thumb_func_start sub_02179680
sub_02179680: ; 0x02179680
	ldr r0, [r0, #0x10]
	ldr r3, _02179688 ; =sub_021C5C64
	bx r3
	nop
_02179688: .word sub_021C5C64
	thumb_func_end sub_02179680

	thumb_func_start ovy261_217968c
ovy261_217968c: ; 0x0217968C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_02017934
	bl sub_0200BA78
	ldr r1, [r4, #0x14]
	bl sub_0200B8F4
	add r6, r0, #0
	mov r1, #2
	bl sub_0200B798
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xa
	bl sub_0200B798
	cmp r4, #0
	beq _021796C6
	cmp r0, #1
	bne _021796C6
	ldr r1, _02179718 ; =ovy261_2179730
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021796C6:
	cmp r4, #0
	beq _021796D8
	cmp r0, #2
	bne _021796D8
	ldr r1, _0217971C ; =ovy261_2179970
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021796D8:
	cmp r4, #0
	beq _021796EA
	cmp r0, #3
	bne _021796EA
	ldr r1, _02179720 ; =ovy261_2179bb0
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021796EA:
	cmp r4, #0
	beq _021796FC
	cmp r0, #4
	bne _021796FC
	ldr r1, _02179724 ; =ovy261_2179c90
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021796FC:
	cmp r4, #0
	beq _0217970E
	cmp r0, #5
	bne _0217970E
	ldr r1, _02179728 ; =ovy261_2179d70
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_0217970E:
	ldr r1, _0217972C ; =ovy261_2179e50
	add r0, r5, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
	.align 2, 0
_02179718: .word ovy261_2179730
_0217971C: .word ovy261_2179970
_02179720: .word ovy261_2179bb0
_02179724: .word ovy261_2179c90
_02179728: .word ovy261_2179d70
_0217972C: .word ovy261_2179e50
	thumb_func_end ovy261_217968c

	thumb_func_start ovy261_2179730
ovy261_2179730: ; 0x02179730
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x13
	bls _02179740
	b _02179964
_02179740:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217974C: ; jump table
	.short _02179774 - _0217974C - 2 ; case 0
	.short _02179788 - _0217974C - 2 ; case 1
	.short _02179798 - _0217974C - 2 ; case 2
	.short _021797AC - _0217974C - 2 ; case 3
	.short _021797D2 - _0217974C - 2 ; case 4
	.short _021797E0 - _0217974C - 2 ; case 5
	.short _0217980A - _0217974C - 2 ; case 6
	.short _02179822 - _0217974C - 2 ; case 7
	.short _02179830 - _0217974C - 2 ; case 8
	.short _0217985C - _0217974C - 2 ; case 9
	.short _02179874 - _0217974C - 2 ; case 10
	.short _02179882 - _0217974C - 2 ; case 11
	.short _021798AC - _0217974C - 2 ; case 12
	.short _021798C4 - _0217974C - 2 ; case 13
	.short _021798FE - _0217974C - 2 ; case 14
	.short _0217990A - _0217974C - 2 ; case 15
	.short _02179924 - _0217974C - 2 ; case 16
	.short _0217993C - _0217974C - 2 ; case 17
	.short _0217994C - _0217974C - 2 ; case 18
	.short _02179954 - _0217974C - 2 ; case 19
_02179774:
	add r0, r5, #0
	bl ovy261_2179e98
	add r0, r5, #0
	mov r5, #1
	mov r1, #1
	bl ovy261_217a114
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179788:
	add r0, r5, #0
	bl sub_0217A0FC
	cmp r0, #0
	beq _02179854
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179798:
	bl GCTX_HIDGetPressedKeys
	mov r5, #3
	tst r0, r5
	beq _02179854
	ldr r0, _02179968 ; =0x00000547
	bl GFL_SndSEPlay
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021797AC:
	add r0, r5, #0
	bl sub_0217A270
	add r0, r5, #0
	mov r1, #1
	bl sub_0217A260
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #4
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021797D2:
	add r0, r5, #0
	mov r1, #2
	bl ovy261_217a14c
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021797E0:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179854
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179800
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179800:
	cmp r6, #1
	bne _02179854
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217980A:
	add r0, r5, #0
	mov r1, #0x71
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179822:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217a14c
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179830:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179854
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179850
	mov r0, #9
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179850:
	cmp r6, #1
	beq _02179856
_02179854:
	b _02179964
_02179856:
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217985C:
	add r0, r5, #0
	mov r1, #0x72
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xa
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179874:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217a14c
	mov r0, #0xb
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179882:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179964
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _021798A2
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021798A2:
	cmp r6, #1
	bne _02179964
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021798AC:
	add r0, r5, #0
	mov r1, #0x6b
	mov r2, #2
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xd
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021798C4:
	ldr r0, [r5, #0x30]
	bl sub_02017934
	add r7, r0, #0
	bl sub_0200BA78
	ldr r1, [r5, #0x14]
	bl sub_0200B8F4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200C260
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _021798E8
	mov r1, #1
	b _021798EA
_021798E8:
	mov r1, #2
_021798EA:
	bl sub_0200C370
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #4
	bl sub_0200B830
	mov r0, #0xe
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021798FE:
	ldr r0, [r5, #0x30]
	bl sub_0201782C
	mov r0, #0xf
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217990A:
	ldr r0, [r5, #0x30]
	bl sub_02017850
	cmp r0, #2
	bne _0217991A
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217991A:
	cmp r0, #3
	bne _02179964
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179924:
	add r0, r5, #0
	mov r1, #0x73
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x11
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_0217993C:
	add r0, r5, #0
	bl sub_0217A108
	cmp r0, #0
	beq _02179964
	mov r0, #0x12
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0217994C:
	ldr r1, _0217996C ; =0x02179E91
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02179954:
	add r0, r5, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179964
	add r0, r6, #0
	bl sub_021C5C8C
_02179964:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02179968: .word 0x00000547
_0217996C: .word 0x02179E91
	thumb_func_end ovy261_2179730

	thumb_func_start ovy261_2179970
ovy261_2179970: ; 0x02179970
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x13
	bls _02179980
	b _02179BA4
_02179980:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217998C: ; jump table
	.short _021799B4 - _0217998C - 2 ; case 0
	.short _021799C8 - _0217998C - 2 ; case 1
	.short _021799D8 - _0217998C - 2 ; case 2
	.short _021799EC - _0217998C - 2 ; case 3
	.short _02179A12 - _0217998C - 2 ; case 4
	.short _02179A20 - _0217998C - 2 ; case 5
	.short _02179A4A - _0217998C - 2 ; case 6
	.short _02179A62 - _0217998C - 2 ; case 7
	.short _02179A70 - _0217998C - 2 ; case 8
	.short _02179A9C - _0217998C - 2 ; case 9
	.short _02179AB4 - _0217998C - 2 ; case 10
	.short _02179AC2 - _0217998C - 2 ; case 11
	.short _02179AEC - _0217998C - 2 ; case 12
	.short _02179B04 - _0217998C - 2 ; case 13
	.short _02179B3E - _0217998C - 2 ; case 14
	.short _02179B4A - _0217998C - 2 ; case 15
	.short _02179B64 - _0217998C - 2 ; case 16
	.short _02179B7C - _0217998C - 2 ; case 17
	.short _02179B8C - _0217998C - 2 ; case 18
	.short _02179B94 - _0217998C - 2 ; case 19
_021799B4:
	add r0, r5, #0
	bl ovy261_2179e98
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217a114
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021799C8:
	add r0, r5, #0
	bl sub_0217A0FC
	cmp r0, #0
	beq _02179A94
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021799D8:
	bl GCTX_HIDGetPressedKeys
	mov r5, #3
	tst r0, r5
	beq _02179A94
	ldr r0, _02179BA8 ; =0x00000547
	bl GFL_SndSEPlay
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021799EC:
	add r0, r5, #0
	bl sub_0217A270
	add r0, r5, #0
	mov r1, #1
	bl sub_0217A260
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #4
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179A12:
	add r0, r5, #0
	mov r1, #2
	bl ovy261_217a14c
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A20:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179A94
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179A40
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A40:
	cmp r6, #1
	bne _02179A94
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A4A:
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179A62:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217a14c
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A70:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179A94
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179A90
	mov r0, #9
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A90:
	cmp r6, #1
	beq _02179A96
_02179A94:
	b _02179BA4
_02179A96:
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179A9C:
	add r0, r5, #0
	mov r1, #0x72
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xa
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179AB4:
	add r0, r5, #0
	mov r1, #0
	bl ovy261_217a14c
	mov r0, #0xb
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179AC2:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179BA4
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179AE2
	mov r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179AE2:
	cmp r6, #1
	bne _02179BA4
	mov r0, #0x11
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179AEC:
	add r0, r5, #0
	mov r1, #0x6b
	mov r2, #2
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xd
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179B04:
	ldr r0, [r5, #0x30]
	bl sub_02017934
	add r7, r0, #0
	bl sub_0200BA78
	ldr r1, [r5, #0x14]
	bl sub_0200B8F4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200C260
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _02179B28
	mov r1, #1
	b _02179B2A
_02179B28:
	mov r1, #2
_02179B2A:
	bl sub_0200C370
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #4
	bl sub_0200B830
	mov r0, #0xe
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179B3E:
	ldr r0, [r5, #0x30]
	bl sub_0201782C
	mov r0, #0xf
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179B4A:
	ldr r0, [r5, #0x30]
	bl sub_02017850
	cmp r0, #2
	bne _02179B5A
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179B5A:
	cmp r0, #3
	bne _02179BA4
	mov r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179B64:
	add r0, r5, #0
	mov r1, #0x6c
	mov r2, #1
	bl ovy261_217a240
	mov r0, #0x13
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x11
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_02179B7C:
	add r0, r5, #0
	bl sub_0217A108
	cmp r0, #0
	beq _02179BA4
	mov r0, #0x12
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02179B8C:
	ldr r1, _02179BAC ; =0x02179E91
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_02179B94:
	add r0, r5, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179BA4
	add r0, r6, #0
	bl sub_021C5C8C
_02179BA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02179BA8: .word 0x00000547
_02179BAC: .word 0x02179E91
	thumb_func_end ovy261_2179970

	thumb_func_start ovy261_2179bb0
ovy261_2179bb0: ; 0x02179BB0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #8
	bhi _02179C84
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02179BC8: ; jump table
	.short _02179BDA - _02179BC8 - 2 ; case 0
	.short _02179BEE - _02179BC8 - 2 ; case 1
	.short _02179BFE - _02179BC8 - 2 ; case 2
	.short _02179C12 - _02179BC8 - 2 ; case 3
	.short _02179C30 - _02179BC8 - 2 ; case 4
	.short _02179C40 - _02179BC8 - 2 ; case 5
	.short _02179C4E - _02179BC8 - 2 ; case 6
	.short _02179C6E - _02179BC8 - 2 ; case 7
	.short _02179C7E - _02179BC8 - 2 ; case 8
_02179BDA:
	add r0, r5, #0
	bl ovy261_2179e98
	add r0, r5, #0
	mov r5, #1
	mov r1, #1
	bl ovy261_217a114
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179BEE:
	add r0, r5, #0
	bl sub_0217A0FC
	cmp r0, #0
	beq _02179C84
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179BFE:
	bl GCTX_HIDGetPressedKeys
	mov r5, #3
	tst r0, r5
	beq _02179C84
	ldr r0, _02179C88 ; =0x00000547
	bl GFL_SndSEPlay
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179C12:
	add r0, r5, #0
	bl sub_0217A270
	add r0, r5, #0
	mov r1, #1
	bl sub_0217A260
	add r0, r5, #0
	mov r1, #0x6d
	mov r2, #1
	bl ovy261_217a240
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179C30:
	add r0, r5, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179C84
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179C40:
	add r0, r5, #0
	mov r1, #1
	bl ovy261_217a14c
	mov r0, #6
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179C4E:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179C84
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179C84
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179C6E:
	add r0, r5, #0
	bl sub_0217A108
	cmp r0, #0
	beq _02179C84
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179C7E:
	ldr r1, _02179C8C ; =0x02179E91
	bl sub_021C5C74
_02179C84:
	pop {r4, r5, r6, pc}
	nop
_02179C88: .word 0x00000547
_02179C8C: .word 0x02179E91
	thumb_func_end ovy261_2179bb0

	thumb_func_start ovy261_2179c90
ovy261_2179c90: ; 0x02179C90
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #8
	bhi _02179D64
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02179CA8: ; jump table
	.short _02179CBA - _02179CA8 - 2 ; case 0
	.short _02179CCE - _02179CA8 - 2 ; case 1
	.short _02179CDE - _02179CA8 - 2 ; case 2
	.short _02179CF2 - _02179CA8 - 2 ; case 3
	.short _02179D10 - _02179CA8 - 2 ; case 4
	.short _02179D20 - _02179CA8 - 2 ; case 5
	.short _02179D2E - _02179CA8 - 2 ; case 6
	.short _02179D4E - _02179CA8 - 2 ; case 7
	.short _02179D5E - _02179CA8 - 2 ; case 8
_02179CBA:
	add r0, r5, #0
	bl ovy261_2179e98
	add r0, r5, #0
	mov r5, #1
	mov r1, #1
	bl ovy261_217a114
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179CCE:
	add r0, r5, #0
	bl sub_0217A0FC
	cmp r0, #0
	beq _02179D64
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179CDE:
	bl GCTX_HIDGetPressedKeys
	mov r5, #3
	tst r0, r5
	beq _02179D64
	ldr r0, _02179D68 ; =0x00000547
	bl GFL_SndSEPlay
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179CF2:
	add r0, r5, #0
	bl sub_0217A270
	add r0, r5, #0
	mov r1, #1
	bl sub_0217A260
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #1
	bl ovy261_217a240
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179D10:
	add r0, r5, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179D64
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179D20:
	add r0, r5, #0
	mov r1, #1
	bl ovy261_217a14c
	mov r0, #6
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179D2E:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179D64
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179D64
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179D4E:
	add r0, r5, #0
	bl sub_0217A108
	cmp r0, #0
	beq _02179D64
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179D5E:
	ldr r1, _02179D6C ; =0x02179E91
	bl sub_021C5C74
_02179D64:
	pop {r4, r5, r6, pc}
	nop
_02179D68: .word 0x00000547
_02179D6C: .word 0x02179E91
	thumb_func_end ovy261_2179c90

	thumb_func_start ovy261_2179d70
ovy261_2179d70: ; 0x02179D70
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #8
	bhi _02179E44
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02179D88: ; jump table
	.short _02179D9A - _02179D88 - 2 ; case 0
	.short _02179DAE - _02179D88 - 2 ; case 1
	.short _02179DBE - _02179D88 - 2 ; case 2
	.short _02179DD2 - _02179D88 - 2 ; case 3
	.short _02179DF0 - _02179D88 - 2 ; case 4
	.short _02179E00 - _02179D88 - 2 ; case 5
	.short _02179E0E - _02179D88 - 2 ; case 6
	.short _02179E2E - _02179D88 - 2 ; case 7
	.short _02179E3E - _02179D88 - 2 ; case 8
_02179D9A:
	add r0, r5, #0
	bl ovy261_2179e98
	add r0, r5, #0
	mov r5, #1
	mov r1, #1
	bl ovy261_217a114
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179DAE:
	add r0, r5, #0
	bl sub_0217A0FC
	cmp r0, #0
	beq _02179E44
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179DBE:
	bl GCTX_HIDGetPressedKeys
	mov r5, #3
	tst r0, r5
	beq _02179E44
	ldr r0, _02179E48 ; =0x00000547
	bl GFL_SndSEPlay
	str r5, [r4]
	pop {r4, r5, r6, pc}
_02179DD2:
	add r0, r5, #0
	bl sub_0217A270
	add r0, r5, #0
	mov r1, #1
	bl sub_0217A260
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #1
	bl ovy261_217a240
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179DF0:
	add r0, r5, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179E44
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179E00:
	add r0, r5, #0
	mov r1, #1
	bl ovy261_217a14c
	mov r0, #6
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179E0E:
	add r0, r5, #0
	bl ovy261_217a22c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02179E44
	add r0, r5, #0
	bl ovy261_217a218
	cmp r6, #0
	bne _02179E44
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179E2E:
	add r0, r5, #0
	bl sub_0217A108
	cmp r0, #0
	beq _02179E44
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02179E3E:
	ldr r1, _02179E4C ; =0x02179E91
	bl sub_021C5C74
_02179E44:
	pop {r4, r5, r6, pc}
	nop
_02179E48: .word 0x00000547
_02179E4C: .word 0x02179E91
	thumb_func_end ovy261_2179d70

	thumb_func_start ovy261_2179e50
ovy261_2179e50: ; 0x02179E50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _02179E64
	cmp r1, #1
	beq _02179E74
	cmp r1, #2
	beq _02179E84
	pop {r3, r4, r5, pc}
_02179E64:
	add r0, r2, #0
	mov r1, #0x6f
	mov r5, #1
	mov r2, #1
	bl ovy261_217a240
	str r5, [r4]
	pop {r3, r4, r5, pc}
_02179E74:
	add r0, r2, #0
	bl sub_0217A254
	cmp r0, #0
	beq _02179E8A
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02179E84:
	ldr r1, _02179E8C ; =0x02179E91
	bl sub_021C5C74
_02179E8A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02179E8C: .word 0x02179E91
	thumb_func_end ovy261_2179e50
_02179E90:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x7D, 0x5C, 0x1C, 0x02

	thumb_func_start ovy261_2179e98
ovy261_2179e98: ; 0x02179E98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1b0
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02179EA6
	b _0217A0CC
_02179EA6:
	ldr r0, [r5, #0x30]
	bl sub_02017934
	add r7, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_02017934
	bl sub_0200BA78
	ldr r1, [r5, #0x14]
	add r6, r0, #0
	bl sub_0200B8F4
	add r4, r0, #0
	ldr r1, [r5, #0x14]
	add r0, r6, #0
	bl sub_0200B924
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200B530
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_0200F2C4
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x30]
	bl sub_0201736C
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_021C2668
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02179FDA
	add r0, sp, #0x104
	mov r1, #0
	mov r2, #0xac
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0200B794
	add r1, sp, #0x104
	mov r2, #0x92
	blx MI_CpuCopy8
	ldr r0, [sp, #0x24]
	bl sub_0200F2D0
	mov r1, #0xa
	mov r2, #0
	str r0, [sp, #0x2c]
	bl sub_0200E870
	add r1, sp, #0x184
	strh r0, [r1, #0x20]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	mov r2, #1
	bl sub_0200E870
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	mov r2, #2
	bl sub_0200E870
	ldr r1, [sp, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x1a8]
	add r0, r7, #0
	bl sub_02008BF4
	str r0, [sp, #0x1a0]
	add r0, r4, #0
	mov r1, #6
	bl sub_0200B798
	str r0, [sp, #0x34]
	add r0, r4, #0
	mov r1, #5
	bl sub_0200B798
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #4
	bl sub_0200B798
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x34]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0x198]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200B798
	str r0, [sp, #0x3c]
	add r0, r4, #0
	mov r1, #8
	bl sub_0200B798
	str r0, [sp, #0x40]
	add r0, r4, #0
	mov r1, #7
	bl sub_0200B798
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0x19c]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0200B798
	add r1, sp, #0x184
	strh r0, [r1, #0x2a]
	ldr r0, [r5, #0x28]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldrh r0, [r5, #0x34]
	str r0, [sp, #0x1c]
	add r0, sp, #0x104
	bl sub_021C2E8C
	b _0217A0C2
_02179FDA:
	add r0, sp, #0x58
	mov r1, #0
	mov r2, #0xac
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0200B794
	add r1, sp, #0x58
	mov r2, #0x92
	blx MI_CpuCopy8
	ldr r0, [sp, #0x24]
	bl sub_0200F2D8
	mov r1, #1
	str r0, [sp, #0x44]
	bl sub_0200F1D8
	add r1, sp, #0xd8
	strh r0, [r1, #0x20]
	ldr r0, [sp, #0x44]
	mov r1, #2
	bl sub_0200F1D8
	add r1, sp, #0xd8
	strh r0, [r1, #0x22]
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl sub_0200F1D8
	add r1, sp, #0xd8
	strh r0, [r1, #0x24]
	ldr r0, [sp, #0x20]
	mov r1, #0x16
	bl sub_0200B574
	add r1, sp, #0xd8
	strh r0, [r1, #0x26]
	add r0, r7, #0
	bl sub_02008BF4
	str r0, [sp, #0xf4]
	add r0, r4, #0
	mov r1, #6
	bl sub_0200B798
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #5
	bl sub_0200B798
	str r0, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #4
	bl sub_0200B798
	ldr r2, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xec]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200B798
	str r0, [sp, #0x50]
	add r0, r4, #0
	mov r1, #8
	bl sub_0200B798
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #7
	bl sub_0200B798
	ldr r2, [sp, #0x54]
	ldr r1, [sp, #0x50]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xf0]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0200B798
	add r1, sp, #0xd8
	strh r0, [r1, #0x28]
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0x34]
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x28]
	add r0, sp, #0x58
	bl sub_021C323C
_0217A0C2:
	str r0, [r5, #8]
	add r0, r5, #0
	mov r1, #0
	bl sub_0217A260
_0217A0CC:
	add sp, #0x1b0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy261_2179e98

	thumb_func_start ovy261_217a0d0
ovy261_217a0d0: ; 0x0217A0D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0217A0EE
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0217A0E6
	bl sub_021C301C
	b _0217A0EA
_0217A0E6:
	bl sub_021C33C4
_0217A0EA:
	mov r0, #0
	str r0, [r4, #8]
_0217A0EE:
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	bl GFL_BGSysLoadScr
	pop {r4, pc}
	thumb_func_end ovy261_217a0d0

	thumb_func_start sub_0217A0FC
sub_0217A0FC: ; 0x0217A0FC
	ldr r0, [r0, #8]
	ldr r3, _0217A104 ; =sub_021C35EC
	bx r3
	nop
_0217A104: .word sub_021C35EC
	thumb_func_end sub_0217A0FC

	thumb_func_start sub_0217A108
sub_0217A108: ; 0x0217A108
	ldr r0, [r0, #8]
	ldr r3, _0217A110 ; =sub_021C3720
	bx r3
	nop
_0217A110: .word sub_021C3720
	thumb_func_end sub_0217A108

	thumb_func_start ovy261_217a114
ovy261_217a114: ; 0x0217A114
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r3, #0x14]
	cmp r0, #0
	ldr r0, [r3, #0x1c]
	bne _0217A136
	str r0, [sp]
	ldrh r0, [r3, #0x34]
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	ldr r2, [r3]
	ldr r3, [r3, #0x24]
	bl sub_021C3048
	add sp, #8
	pop {r3, pc}
_0217A136:
	str r0, [sp]
	ldrh r0, [r3, #0x34]
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	ldr r2, [r3]
	ldr r3, [r3, #0x24]
	bl sub_021C33F0
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy261_217a114

	thumb_func_start ovy261_217a14c
ovy261_217a14c: ; 0x0217A14C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	cmp r0, #0
	bne _0217A214
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x1c]
	add r0, sp, #0x14
	strh r1, [r0, #0x20]
	mov r1, #0xf
	strh r1, [r0, #0x22]
	mov r1, #0xd
	strh r1, [r0, #0x24]
	mov r1, #1
	strh r1, [r0, #0x26]
	cmp r6, #0
	beq _0217A190
	cmp r6, #1
	beq _0217A1A6
	cmp r6, #2
	beq _0217A1B8
	b _0217A1CC
_0217A190:
	mov r2, #0x76
	str r2, [sp, #0x20]
	mov r2, #0x77
	str r2, [sp, #0x24]
	mov r2, #2
	str r2, [sp, #0x30]
	str r1, [sp, #0x3c]
	mov r2, #0
	strh r1, [r0, #0x2c]
	str r2, [sp, #0x10]
	b _0217A1CA
_0217A1A6:
	mov r2, #0x74
	str r2, [sp, #0x20]
	str r1, [sp, #0x30]
	str r1, [sp, #0x3c]
	mov r1, #0
	strh r1, [r0, #0x2c]
	mov r0, #0
	str r0, [sp, #0x10]
	b _0217A1CC
_0217A1B8:
	mov r2, #0x75
	str r2, [sp, #0x20]
	mov r2, #0x74
	str r2, [sp, #0x24]
	mov r2, #2
	str r2, [sp, #0x30]
	str r1, [sp, #0x3c]
	strh r1, [r0, #0x2c]
	str r1, [sp, #0x10]
_0217A1CA:
	strh r1, [r0, #0x2e]
_0217A1CC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0217A1D8
	cmp r0, #1
	beq _0217A1E2
	b _0217A1F2
_0217A1D8:
	ldr r0, [sp, #0x30]
	mov r7, #0xc
	lsl r4, r0, #1
	mov r0, #0x13
	b _0217A1EA
_0217A1E2:
	ldr r0, [sp, #0x30]
	mov r7, #0xf
	lsl r4, r0, #1
	mov r0, #0x10
_0217A1EA:
	str r0, [sp, #0xc]
	mov r0, #0x11
	sub r0, r0, r4
	str r0, [sp, #8]
_0217A1F2:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #0x34]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r7, #0x18
	str r0, [sp, #4]
	add r0, sp, #0x14
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_021C5A88
	str r0, [r5, #0xc]
_0217A214:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy261_217a14c

	thumb_func_start ovy261_217a218
ovy261_217a218: ; 0x0217A218
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0217A22A
	bl sub_021C5BA4
	mov r0, #0
	str r0, [r4, #0xc]
_0217A22A:
	pop {r4, pc}
	thumb_func_end ovy261_217a218

	thumb_func_start ovy261_217a22c
ovy261_217a22c: ; 0x0217A22C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0217A23A
	bl sub_021C5BD4
	pop {r3, pc}
_0217A23A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end ovy261_217a22c

	thumb_func_start ovy261_217a240
ovy261_217a240: ; 0x0217A240
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5]
	add r2, r4, #0
	bl sub_021C5888
	pop {r3, r4, r5, pc}
	thumb_func_end ovy261_217a240

	thumb_func_start sub_0217A254
sub_0217A254: ; 0x0217A254
	ldr r0, [r0, #0x18]
	ldr r3, _0217A25C ; =sub_021C5A1C
	bx r3
	nop
_0217A25C: .word sub_021C5A1C
	thumb_func_end sub_0217A254

	thumb_func_start sub_0217A260
sub_0217A260: ; 0x0217A260
	lsl r1, r1, #0x18
	ldr r3, _0217A26C ; =sub_02044C98
	mov r0, #0
	lsr r1, r1, #0x18
	bx r3
	nop
_0217A26C: .word sub_02044C98
	thumb_func_end sub_0217A260

	thumb_func_start sub_0217A270
sub_0217A270: ; 0x0217A270
	ldr r0, [r0, #0x18]
	ldr r3, _0217A278 ; =sub_021C5A48
	bx r3
	nop
_0217A278: .word sub_021C5A48
	thumb_func_end sub_0217A270

	thumb_func_start ovy261_217a27c
ovy261_217a27c: ; 0x0217A27C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0217A2BC ; =0x00001020
	add r5, r1, #0
	mov r0, #0x8e
	str r0, [sp]
	ldr r3, _0217A2C0 ; =0x0217A8D4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	strh r5, [r4, #4]
	bl sub_02042788
	cmp r0, #0
	beq _0217A2B6
	mov r0, #0x1f
	ldr r1, _0217A2C4 ; =0x0217A7C0
	lsl r0, r0, #8
	mov r2, #4
	add r3, r4, #0
	bl sub_02040C20
_0217A2B6:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0217A2BC: .word 0x00001020
_0217A2C0: .word 0x0217A8D4
_0217A2C4: .word 0x0217A7C0
	thumb_func_end ovy261_217a27c

	thumb_func_start ovy261_217a2c8
ovy261_217a2c8: ; 0x0217A2C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _0217A2DC
	mov r0, #0x1f
	lsl r0, r0, #8
	bl sub_02040C64
_0217A2DC:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy261_217a2c8

	thumb_func_start sub_0217A2E4
sub_0217A2E4: ; 0x0217A2E4
	bx lr
	.align 2, 0
	thumb_func_end sub_0217A2E4

	thumb_func_start ovy261_217a2e8
ovy261_217a2e8: ; 0x0217A2E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_020120C8
	cmp r0, #0
	beq _0217A314
	ldr r5, _0217A318 ; =0x00001018
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0217A304
	bl sub_02153150
	mov r0, #0
	str r0, [r4, r5]
_0217A304:
	bl sub_02012154
	bl sub_02011DE0
	bl sub_02012144
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217A314:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A318: .word 0x00001018
	thumb_func_end ovy261_217a2e8

	thumb_func_start sub_0217A31C
sub_0217A31C: ; 0x0217A31C
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0217A31C

	thumb_func_start ovy261_217a324
ovy261_217a324: ; 0x0217A324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #6
	bhi _0217A3B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217A33A: ; jump table
	.short _0217A348 - _0217A33A - 2 ; case 0
	.short _0217A35C - _0217A33A - 2 ; case 1
	.short _0217A36A - _0217A33A - 2 ; case 2
	.short _0217A382 - _0217A33A - 2 ; case 3
	.short _0217A38C - _0217A33A - 2 ; case 4
	.short _0217A3A4 - _0217A33A - 2 ; case 5
	.short _0217A3AE - _0217A33A - 2 ; case 6
_0217A348:
	ldr r0, _0217A3BC ; =0x0217A7E0
	mov r1, #0
	mov r2, #0
	bl sub_020425EC
	ldr r0, _0217A3C0 ; =0x0217A8D0
	mov r1, #1
	str r1, [r0]
	str r1, [r4]
	b _0217A3B8
_0217A35C:
	bl sub_02042788
	cmp r0, #0
	beq _0217A3B8
	mov r0, #2
_0217A366:
	str r0, [r4]
	b _0217A3B8
_0217A36A:
	mov r0, #0x1f
	ldr r1, _0217A3C4 ; =0x0217A7C0
	lsl r0, r0, #8
	mov r2, #4
	add r3, r4, #0
	bl sub_02040C20
	ldr r0, _0217A3C8 ; =0x0217A7A1
	bl sub_02175A04
	mov r0, #3
	b _0217A366
_0217A382:
	mov r0, #0
	bl sub_020429F8
	mov r0, #4
	b _0217A366
_0217A38C:
	bl sub_02042A78
	cmp r0, #1
	ble _0217A398
	mov r0, #5
	str r0, [r4]
_0217A398:
	ldr r0, _0217A3C0 ; =0x0217A8D0
	ldr r0, [r0]
	cmp r0, #0
	bne _0217A3B8
	mov r0, #6
	b _0217A366
_0217A3A4:
	mov r0, #0
	bl sub_02175A04
	mov r0, #1
	pop {r4, pc}
_0217A3AE:
	mov r0, #0
	bl sub_02175A04
	mov r0, #2
	pop {r4, pc}
_0217A3B8:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0217A3BC: .word 0x0217A7E0
_0217A3C0: .word 0x0217A8D0
_0217A3C4: .word 0x0217A7C0
_0217A3C8: .word 0x0217A7A1
	thumb_func_end ovy261_217a324

	thumb_func_start ovy261_217a3cc
ovy261_217a3cc: ; 0x0217A3CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #2
	blo _0217A3DE
	mov r0, #0x1f
	lsl r0, r0, #8
	bl sub_02040C64
_0217A3DE:
	mov r0, #0
	mov r5, #0
	bl sub_02175A04
	str r5, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy261_217a3cc

	thumb_func_start ovy261_217a3ec
ovy261_217a3ec: ; 0x0217A3EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217A400
	cmp r0, #1
	beq _0217A418
	cmp r0, #2
	beq _0217A422
	b _0217A426
_0217A400:
	bl sub_02042788
	cmp r0, #0
	beq _0217A412
	mov r0, #0
	bl sub_02042860
	mov r0, #1
	b _0217A414
_0217A412:
	mov r0, #2
_0217A414:
	str r0, [r4]
	b _0217A426
_0217A418:
	bl sub_020427A4
	cmp r0, #0
	beq _0217A426
	b _0217A412
_0217A422:
	mov r0, #1
	pop {r4, pc}
_0217A426:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy261_217a3ec

	thumb_func_start sub_0217A42C
sub_0217A42C: ; 0x0217A42C
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0217A42C

	thumb_func_start ovy261_217a434
ovy261_217a434: ; 0x0217A434
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217A448
	cmp r0, #1
	beq _0217A45C
	cmp r0, #2
	beq _0217A468
	b _0217A46C
_0217A448:
	mov r0, #0x1f
	lsl r0, r0, #8
	bl sub_02040C64
	mov r0, #0
	bl sub_02042860
	mov r0, #1
_0217A458:
	str r0, [r4]
	b _0217A46C
_0217A45C:
	bl sub_020427A4
	cmp r0, #0
	beq _0217A46C
	mov r0, #2
	b _0217A458
_0217A468:
	mov r0, #1
	pop {r4, pc}
_0217A46C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy261_217a434

	thumb_func_start ovy261_217a470
ovy261_217a470: ; 0x0217A470
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _0217A486
	mov r4, #0
_0217A486:
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	lsl r1, r4, #0x18
	mov r2, #0x1f
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsl r2, r2, #8
	add r3, #0xd4
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ovy261_217a470

	thumb_func_start ovy261_217a4b0
ovy261_217a4b0: ; 0x0217A4B0
	push {r3, r4}
	ldr r2, _0217A4C8 ; =0x00001008
	ldr r4, [r0, r2]
	cmp r4, #0
	beq _0217A4C2
	mov r3, #0
	str r3, [r0, r2]
	add r0, r0, #6
	str r0, [r1]
_0217A4C2:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_0217A4C8: .word 0x00001008
	thumb_func_end ovy261_217a4b0

	thumb_func_start ovy261_217a4cc
ovy261_217a4cc: ; 0x0217A4CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _0217A4E2
	mov r4, #0
_0217A4E2:
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	lsl r1, r4, #0x18
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _0217A508 ; =0x00001F01
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217A508: .word 0x00001F01
	thumb_func_end ovy261_217a4cc

	thumb_func_start ovy261_217a50c
ovy261_217a50c: ; 0x0217A50C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0217A530 ; =0x0000100C
	add r6, r1, #0
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _0217A52C
	mov r1, #0
	str r1, [r5, r0]
	bl sub_0201FCF8
	add r2, r0, #0
	add r0, r5, #6
	add r1, r6, #0
	blx MI_CpuCopy8
_0217A52C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217A530: .word 0x0000100C
	thumb_func_end ovy261_217a50c

	thumb_func_start ovy261_217a534
ovy261_217a534: ; 0x0217A534
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _0217A54A
	mov r4, #0
_0217A54A:
	bl sub_02040440
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _0217A568 ; =0x00001F03
	lsr r1, r1, #0x18
	mov r3, #4
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A568: .word 0x00001F03
	thumb_func_end ovy261_217a534

	thumb_func_start ovy261_217a56c
ovy261_217a56c: ; 0x0217A56C
	push {r4, lr}
	ldr r2, _0217A588 ; =0x00001014
	ldr r4, [r0, r2]
	cmp r4, #0
	beq _0217A582
	mov r3, #0
	str r3, [r0, r2]
	add r0, r0, #6
	mov r2, #4
	blx MI_CpuCopy8
_0217A582:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0217A588: .word 0x00001014
	thumb_func_end ovy261_217a56c

	thumb_func_start ovy261_217a58c
ovy261_217a58c: ; 0x0217A58C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	add r6, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r4, #0x7c
	mov r2, #0x7c
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #0x30
	add r4, #0xe4
	str r0, [sp]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0
	strh r7, [r0, #4]
	ldrh r1, [r5, #4]
	strh r1, [r0, #6]
	ldr r0, _0217A5E8 ; =0x0208FF80
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r0, r0, #0x16
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x78]
	ldr r0, _0217A5EC ; =0x00001018
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0217A5D6
	ldr r0, _0217A5F0 ; =0x0217A8EC
	ldr r2, _0217A5F4 ; =0x0217A8F0
	add r1, r7, #0
	bl sub_0203CB80
_0217A5D6:
	add r0, sp, #0
	bl ovy12_215309c
	ldr r1, _0217A5EC ; =0x00001018
	str r0, [r5, r1]
	mov r0, #0
	str r0, [r5]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217A5E8: .word 0x0208FF80
_0217A5EC: .word 0x00001018
_0217A5F0: .word 0x0217A8EC
_0217A5F4: .word 0x0217A8F0
	thumb_func_end ovy261_217a58c

	thumb_func_start ovy261_217a5f8
ovy261_217a5f8: ; 0x0217A5F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0217A67C ; =0x00001018
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0217A608
	bl sub_0215313C
_0217A608:
	ldr r0, [r4]
	cmp r0, #3
	bhi _0217A678
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217A61A: ; jump table
	.short _0217A622 - _0217A61A - 2 ; case 0
	.short _0217A632 - _0217A61A - 2 ; case 1
	.short _0217A644 - _0217A61A - 2 ; case 2
	.short _0217A652 - _0217A61A - 2 ; case 3
_0217A622:
	ldr r0, _0217A67C ; =0x00001018
	ldr r0, [r4, r0]
	bl ovy12_21530f8
_0217A62A:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217A678
_0217A632:
	ldr r5, _0217A67C ; =0x00001018
	ldr r0, [r4, r5]
	bl sub_02153130
	add r1, r5, #4
	str r0, [r4, r1]
	cmp r0, #0
	beq _0217A678
	b _0217A62A
_0217A644:
	ldr r5, _0217A67C ; =0x00001018
	ldr r0, [r4, r5]
	bl sub_02153150
	mov r0, #0
	str r0, [r4, r5]
	b _0217A62A
_0217A652:
	bl sub_02042AB8
	cmp r0, #0
	beq _0217A678
	ldr r0, _0217A680 ; =0x0000101C
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0217A66C
	cmp r0, #2
	beq _0217A674
	cmp r0, #3
	beq _0217A670
	b _0217A674
_0217A66C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217A670:
	mov r0, #3
	pop {r3, r4, r5, pc}
_0217A674:
	mov r0, #2
	pop {r3, r4, r5, pc}
_0217A678:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A67C: .word 0x00001018
_0217A680: .word 0x0000101C
	thumb_func_end ovy261_217a5f8

	thumb_func_start sub_0217A684
sub_0217A684: ; 0x0217A684
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0217A684

	thumb_func_start ovy261_217a68c
ovy261_217a68c: ; 0x0217A68C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0217A6D0 ; =0x00001018
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0217A69C
	bl sub_0215313C
_0217A69C:
	ldr r0, [r4]
	cmp r0, #0
	beq _0217A6A8
	cmp r0, #1
	beq _0217A6C0
	b _0217A6CC
_0217A6A8:
	ldr r5, _0217A6D0 ; =0x00001018
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0217A6B8
	bl sub_02153150
	mov r0, #0
	str r0, [r4, r5]
_0217A6B8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0217A6CC
_0217A6C0:
	bl sub_02042AB8
	cmp r0, #0
	beq _0217A6CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217A6CC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A6D0: .word 0x00001018
	thumb_func_end ovy261_217a68c

	thumb_func_start ovy261_217a6d4
ovy261_217a6d4: ; 0x0217A6D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0217A6F6
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217A6F6
	ldr r0, _0217A6F8 ; =0x00001008
	mov r1, #1
	str r1, [r4, r0]
_0217A6F6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A6F8: .word 0x00001008
	thumb_func_end ovy261_217a6d4

	thumb_func_start ovy261_217a6fc
ovy261_217a6fc: ; 0x0217A6FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0217A71E
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217A71E
	ldr r0, _0217A720 ; =0x0000100C
	mov r1, #1
	str r1, [r4, r0]
_0217A71E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A720: .word 0x0000100C
	thumb_func_end ovy261_217a6fc

	thumb_func_start ovy261_217a724
ovy261_217a724: ; 0x0217A724
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0217A746
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217A746
	ldr r0, _0217A748 ; =0x00001010
	mov r1, #1
	str r1, [r4, r0]
_0217A746:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A748: .word 0x00001010
	thumb_func_end ovy261_217a724

	thumb_func_start ovy261_217a74c
ovy261_217a74c: ; 0x0217A74C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0217A76E
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217A76E
	ldr r0, _0217A770 ; =0x00001014
	mov r1, #1
	str r1, [r4, r0]
_0217A76E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A770: .word 0x00001014
	thumb_func_end ovy261_217a74c

	thumb_func_start ovy261_217a774
ovy261_217a774: ; 0x0217A774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	bne _0217A794
	ldr r0, _0217A798 ; =0x0217A8EC
	ldr r2, _0217A79C ; =0x0217A90C
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, pc}
_0217A794:
	add r0, r4, #6
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217A798: .word 0x0217A8EC
_0217A79C: .word 0x0217A90C
	thumb_func_end ovy261_217a774
_0217A7A0:
	.byte 0x88, 0x42, 0x01, 0xD1, 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x01, 0x49, 0x08, 0x60, 0x70, 0x47
	.byte 0xD0, 0xA8, 0x17, 0x02, 0x01, 0x6B, 0x17, 0x02, 0xAD, 0x6B, 0x17, 0x02, 0x69, 0x6B, 0x17, 0x02
	.byte 0xD5, 0xA6, 0x17, 0x02, 0x75, 0xA7, 0x17, 0x02, 0xFD, 0xA6, 0x17, 0x02, 0x75, 0xA7, 0x17, 0x02
	.byte 0x25, 0xA7, 0x17, 0x02, 0x75, 0xA7, 0x17, 0x02, 0x4D, 0xA7, 0x17, 0x02, 0x75, 0xA7, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x80, 0x13, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x10, 0x00, 0xF0, 0x00, 0x00, 0x00
	.byte 0x02, 0x64, 0x10, 0x01, 0x00, 0x03, 0x01, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x5F, 0x63
	.byte 0x68, 0x61, 0x6D, 0x70, 0x69, 0x6F, 0x6E, 0x73, 0x68, 0x69, 0x70, 0x5F, 0x66, 0x6C, 0x6F, 0x77
	.byte 0x2E, 0x63, 0x00, 0x00, 0x6C, 0x69, 0x76, 0x65, 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x6D, 0x61
	.byte 0x74, 0x63, 0x68, 0x5F, 0x66, 0x6C, 0x6F, 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x83, 0x6F, 0x83, 0x67, 0x83, 0x8B, 0x8C, 0x8B, 0x89, 0xCA, 0x95, 0x73
	.byte 0x90, 0xB3, 0x92, 0x6C, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x64, 0x69, 0x67, 0x69
	.byte 0x74, 0x61, 0x6C, 0x63, 0x61, 0x72, 0x64, 0x63, 0x68, 0x65, 0x63, 0x6B, 0x2E, 0x63, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x6C, 0x69, 0x76, 0x65, 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x6D, 0x61
	.byte 0x74, 0x63, 0x68, 0x5F, 0x69, 0x72, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x5F, 0x64, 0x65, 0x6C, 0x69, 0x76, 0x65, 0x72, 0x79
	.byte 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0217A7A0
