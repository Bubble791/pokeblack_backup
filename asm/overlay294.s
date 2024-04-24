    .include "macros/function.inc"
	.include "overlay294.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy294_21a1b20
ovy294_21a1b20: ; 0x021A1B20
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021A1BC0 ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #1
	mov r0, #1
	mov r1, #0x6f
	lsl r2, r2, #0x14
	mov r6, #0x6f
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #0x6f
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	strh r6, [r4]
	str r5, [r4, #4]
	ldrh r2, [r4]
	ldr r1, [r5, #8]
	mov r0, #1
	bl ovy294_21a1cf8
	str r0, [r4, #8]
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
	mov r2, #0x55
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	ldrh r0, [r4]
	ldr r1, [r1, #8]
	bl ovy294_21a355c
	str r0, [r4, #0x18]
	ldr r1, [r4, #4]
	ldrh r2, [r4]
	ldr r0, [r4, #8]
	ldr r1, [r1, #8]
	bl ovy294_21a38a8
	str r0, [r4, #0x1c]
	ldrh r1, [r4]
	ldr r0, [r4, #8]
	bl ovy294_21a3bf8
	str r0, [r4, #0x20]
	ldr r0, [r4, #8]
	str r0, [sp]
	ldrh r0, [r4]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #4]
	bl ovy294_21a2ee8
	str r0, [r4, #0x14]
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1BC0: .word 0x0000008B
	thumb_func_end ovy294_21a1b20

	thumb_func_start ovy294_21a1bc4
ovy294_21a1bc4: ; 0x021A1BC4
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	bl ovy294_21a3ca4
	ldr r0, [r5, #0x18]
	bl ovy294_21a35ac
	ldr r0, [r5, #0x1c]
	bl ovy294_21a39a4
	ldr r0, [r5, #0x10]
	bl GFL_MsgDataFree
	ldr r0, [r5, #0xc]
	bl sub_02022DA8
	ldr r0, [r5, #0x14]
	bl ovy294_21a2f3c
	ldr r0, [r5, #8]
	bl ovy294_21a1dd4
	ldrh r5, [r5]
	add r0, r4, #0
	bl sub_0203AB10
	add r0, r5, #0
	bl sub_0203A1D0
	ldr r0, _021A1C0C ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1C0C: .word 0x0000008B
	thumb_func_end ovy294_21a1bc4

	thumb_func_start ovy294_21a1c10
ovy294_21a1c10: ; 0x021A1C10
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x14]
	bl ovy294_21a2f50
	cmp r0, #0
	bne _021A1C22
	mov r0, #1
	pop {r4, pc}
_021A1C22:
	ldr r0, [r4, #8]
	bl ovy294_21a1e30
	ldr r0, [r4, #8]
	bl sub_021A1E44
	ldr r0, [r4, #0x18]
	bl ovy294_21a3864
	ldr r0, [r4, #0x18]
	bl ovy294_21a35dc
	ldr r0, [r4, #0x20]
	bl sub_021A3CB4
	ldr r0, [r4, #0x1c]
	bl ovy294_21a39d0
	ldr r0, [r4, #8]
	bl sub_021A1E50
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy294_21a1c10

	thumb_func_start ovy294_21a1c50
ovy294_21a1c50: ; 0x021A1C50
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	mov r4, #1
	bl GFL_BGSysSetBGEnabledA
	ldr r0, _021A1CE0 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _021A1CE4 ; =0xFFFFCFFD
	bic r2, r1
	add r1, r2, #0
	orr r1, r4
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	mov r4, #0
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _021A1CE8 ; =0x0000CFEF
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
	ldr r1, _021A1CEC ; =0xBFFF0000
	ldr r0, _021A1CF0 ; =0x04000580
	str r1, [r0]
	ldr r5, _021A1CF4 ; =0x021A3D80
_021A1CC4:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021A1CC4
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1CE0: .word 0x04000008
_021A1CE4: .word 0xFFFFCFFD
_021A1CE8: .word 0x0000CFEF
_021A1CEC: .word 0xBFFF0000
_021A1CF0: .word 0x04000580
_021A1CF4: .word 0x021A3D80
	thumb_func_end ovy294_21a1c50

	thumb_func_start ovy294_21a1cf8
ovy294_21a1cf8: ; 0x021A1CF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021A1DB4 ; =0x00000196
	add r5, r2, #0
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _021A1DB8 ; =0x021A4BA0
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021A1DBC ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	ldr r0, _021A1DC0 ; =0x04001050
	mov r2, #0
	strh r2, [r0]
	sub r1, #0x50
	ldr r2, [r1]
	ldr r3, _021A1DC4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r3
	str r2, [r1]
	ldr r1, [r0]
	and r1, r3
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	add r0, r7, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	cmp r6, #7
	beq _021A1D58
	cmp r6, #0xa
	bne _021A1D7C
_021A1D58:
	ldr r0, _021A1DC8 ; =0x021A3E20
	bl GFL_BGSysSetVRAMBanks
	add r0, r4, #0
	add r1, r5, #0
	bl ovy294_21a1f14
	ldr r1, _021A1DCC ; =0x021A3DF0
	add r0, r4, #4
	add r2, r5, #0
	bl ovy294_21a2018
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy294_21a2120
	b _021A1DA0
_021A1D7C:
	ldr r6, _021A1DCC ; =0x021A3DF0
	add r0, r6, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r4, #0
	add r1, r5, #0
	bl ovy294_21a1e7c
	add r0, r4, #4
	add r1, r6, #0
	add r2, r5, #0
	bl ovy294_21a2018
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy294_21a2088
_021A1DA0:
	bl sub_020232D0
	ldr r0, _021A1DD0 ; =ovy294_21a1e68
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1DB4: .word 0x00000196
_021A1DB8: .word 0x021A4BA0
_021A1DBC: .word 0x04000050
_021A1DC0: .word 0x04001050
_021A1DC4: .word 0xFFFF1FFF
_021A1DC8: .word 0x021A3E20
_021A1DCC: .word 0x021A3DF0
_021A1DD0: .word ovy294_21a1e68
	thumb_func_end ovy294_21a1cf8

	thumb_func_start ovy294_21a1dd4
ovy294_21a1dd4: ; 0x021A1DD4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy294_21a21b8
	add r0, r4, #4
	bl ovy294_21a2058
	add r0, r4, #0
	bl ovy294_21a1edc
	bl sub_020232D8
	ldr r5, _021A1E24 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A1E28 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A1E2C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_021A1E24: .word 0x04000050
_021A1E28: .word 0x04001050
_021A1E2C: .word 0xFFFF1FFF
	thumb_func_end ovy294_21a1dd4

	thumb_func_start ovy294_21a1e30
ovy294_21a1e30: ; 0x021A1E30
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A2074
	add r0, r4, #0
	bl ovy294_21a1ef4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a1e30

	thumb_func_start sub_021A1E44
sub_021A1E44: ; 0x021A1E44
	ldr r3, _021A1E4C ; =ovy294_21a21d0
	add r0, #8
	bx r3
	nop
_021A1E4C: .word ovy294_21a21d0
	thumb_func_end sub_021A1E44

	thumb_func_start sub_021A1E50
sub_021A1E50: ; 0x021A1E50
	ldr r3, _021A1E58 ; =sub_021A21E4
	add r0, #8
	bx r3
	nop
_021A1E58: .word sub_021A21E4
	thumb_func_end sub_021A1E50

	thumb_func_start sub_021A1E5C
sub_021A1E5C: ; 0x021A1E5C
	ldr r3, _021A1E64 ; =sub_021A2084
	add r0, r0, #4
	bx r3
	nop
_021A1E64: .word sub_021A2084
	thumb_func_end sub_021A1E5C

	thumb_func_start ovy294_21a1e68
ovy294_21a1e68: ; 0x021A1E68
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A1F0C
	add r0, r4, #4
	bl sub_021A207C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a1e68

	thumb_func_start ovy294_21a1e7c
ovy294_21a1e7c: ; 0x021A1E7C
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
	ldr r0, _021A1ED4 ; =0x021A3D54
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021A1ED8 ; =0x021A3EF0
_021A1E9E:
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
	cmp r4, #4
	blo _021A1E9E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1ED4: .word 0x021A3D54
_021A1ED8: .word 0x021A3EF0
	thumb_func_end ovy294_21a1e7c

	thumb_func_start ovy294_21a1edc
ovy294_21a1edc: ; 0x021A1EDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020480A8
	bl sub_02044528
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy294_21a1edc

	thumb_func_start ovy294_21a1ef4
ovy294_21a1ef4: ; 0x021A1EF4
	push {r3, lr}
	bl sub_02046E10
	mov r1, #4
	tst r0, r1
	beq _021A1F0A
	mov r0, #2
	mov r1, #1
	mov r2, #1
	bl sub_02045E1C
_021A1F0A:
	pop {r3, pc}
	thumb_func_end ovy294_21a1ef4

	thumb_func_start sub_021A1F0C
sub_021A1F0C: ; 0x021A1F0C
	ldr r3, _021A1F10 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A1F10: .word sub_02045A5C
	thumb_func_end sub_021A1F0C

	thumb_func_start ovy294_21a1f14
ovy294_21a1f14: ; 0x021A1F14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r4, r1, #0
	mov r1, #0
	mov r2, #4
	mov r5, #4
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_BGSysCreate
	add r0, r4, #0
	bl BmpWin_InitAllocator
	ldr r0, _021A2000 ; =0x021A3D54
	bl GFL_BGSysSetLCDConfig
	ldr r4, _021A2004 ; =0x021A3ED0
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	mov r7, #1
	bl sub_0204476C
	ldr r4, _021A2008 ; =0x021A3EB0
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r4, _021A200C ; =0x021A3E50
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	mov r4, #3
	bl sub_0204476C
	ldr r6, _021A2010 ; =0x021A3E70
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r6, _021A2014 ; =0x021A3E90
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	mov r6, #6
	bl sub_0204476C
	add r0, r7, #0
	add r1, r7, #0
	bl sub_02044C98
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02044C98
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02044C98
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02044C98
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2000: .word 0x021A3D54
_021A2004: .word 0x021A3ED0
_021A2008: .word 0x021A3EB0
_021A200C: .word 0x021A3E50
_021A2010: .word 0x021A3E70
_021A2014: .word 0x021A3E90
	thumb_func_end ovy294_21a1f14

	thumb_func_start ovy294_21a2018
ovy294_21a2018: ; 0x021A2018
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A2054 ; =0x021A3D64
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
_021A2054: .word 0x021A3D64
	thumb_func_end ovy294_21a2018

	thumb_func_start ovy294_21a2058
ovy294_21a2058: ; 0x021A2058
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
	thumb_func_end ovy294_21a2058

	thumb_func_start sub_021A2074
sub_021A2074: ; 0x021A2074
	ldr r3, _021A2078 ; =sub_0204B794
	bx r3
	.align 2, 0
_021A2078: .word sub_0204B794
	thumb_func_end sub_021A2074

	thumb_func_start sub_021A207C
sub_021A207C: ; 0x021A207C
	ldr r3, _021A2080 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A2080: .word sub_0204B7C8
	thumb_func_end sub_021A207C

	thumb_func_start sub_021A2084
sub_021A2084: ; 0x021A2084
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A2084

	thumb_func_start ovy294_21a2088
ovy294_21a2088: ; 0x021A2088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r7, #0
	add r5, r0, #0
	add r4, r1, #0
	str r7, [sp]
	ldr r0, _021A2100 ; =ovy294_21a1c50
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #4
	mov r2, #0
	mov r6, #2
	mov r3, #2
	bl sub_02048D28
	str r7, [sp]
	lsl r0, r6, #0xb
	str r0, [sp, #4]
	lsl r0, r6, #0x15
	str r0, [sp, #8]
	ldr r0, _021A2104 ; =0x021A3D3C
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021A2108 ; =0x021A3D30
	ldr r2, _021A210C ; =0x02094A3C
	str r0, [sp, #0x14]
	ldr r0, _021A2110 ; =0x021A3D48
	mov r1, #0xc
	str r0, [sp, #0x18]
	mov r3, #0xe
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r3, _021A2114 ; =0x00001555
	str r4, [sp, #0x1c]
	mov r0, #0
	bl sub_0204A5C8
	str r0, [r5]
	lsl r1, r6, #0x16
	str r1, [sp, #0x24]
	ldr r1, _021A2118 ; =0x0000019A
	str r1, [sp, #0x20]
	add r1, sp, #0x24
	bl sub_0204A6BC
	ldr r0, [r5]
	add r1, sp, #0x20
	bl sub_0204A6B4
	ldr r0, _021A211C ; =0x021A3D20
	add r1, r4, #0
	bl sub_0204A6F0
	str r0, [r5, #4]
	bl sub_0204A744
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2100: .word ovy294_21a1c50
_021A2104: .word 0x021A3D3C
_021A2108: .word 0x021A3D30
_021A210C: .word 0x02094A3C
_021A2110: .word 0x021A3D48
_021A2114: .word 0x00001555
_021A2118: .word 0x0000019A
_021A211C: .word 0x021A3D20
	thumb_func_end ovy294_21a2088

	thumb_func_start ovy294_21a2120
ovy294_21a2120: ; 0x021A2120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r7, #0
	add r5, r0, #0
	add r4, r1, #0
	str r7, [sp]
	ldr r0, _021A2198 ; =ovy294_21a1c50
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #2
	mov r1, #2
	mov r2, #0
	mov r3, #2
	bl sub_02048D28
	str r7, [sp]
	lsl r0, r6, #0xb
	str r0, [sp, #4]
	lsl r0, r6, #0x15
	str r0, [sp, #8]
	ldr r0, _021A219C ; =0x021A3D3C
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021A21A0 ; =0x021A3D30
	ldr r2, _021A21A4 ; =0x02094A3C
	str r0, [sp, #0x14]
	ldr r0, _021A21A8 ; =0x021A3D48
	mov r1, #0xc
	str r0, [sp, #0x18]
	mov r3, #0xe
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r3, _021A21AC ; =0x00001555
	str r4, [sp, #0x1c]
	mov r0, #0
	bl sub_0204A5C8
	str r0, [r5]
	lsl r1, r6, #0x16
	str r1, [sp, #0x24]
	ldr r1, _021A21B0 ; =0x0000019A
	str r1, [sp, #0x20]
	add r1, sp, #0x24
	bl sub_0204A6BC
	ldr r0, [r5]
	add r1, sp, #0x20
	bl sub_0204A6B4
	ldr r0, _021A21B4 ; =0x021A3D28
	add r1, r4, #0
	bl sub_0204A6F0
	str r0, [r5, #4]
	bl sub_0204A744
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2198: .word ovy294_21a1c50
_021A219C: .word 0x021A3D3C
_021A21A0: .word 0x021A3D30
_021A21A4: .word 0x02094A3C
_021A21A8: .word 0x021A3D48
_021A21AC: .word 0x00001555
_021A21B0: .word 0x0000019A
_021A21B4: .word 0x021A3D28
	thumb_func_end ovy294_21a2120

	thumb_func_start ovy294_21a21b8
ovy294_21a21b8: ; 0x021A21B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0204A73C
	ldr r0, [r4]
	bl sub_0204A630
	bl sub_02048F44
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a21b8

	thumb_func_start ovy294_21a21d0
ovy294_21a21d0: ; 0x021A21D0
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A638
	bl sub_02049A98
	bl sub_02049AF0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a21d0

	thumb_func_start sub_021A21E4
sub_021A21E4: ; 0x021A21E4
	ldr r3, _021A21E8 ; =sub_02049AA0
	bx r3
	.align 2, 0
_021A21E8: .word sub_02049AA0
	thumb_func_end sub_021A21E4
_021A21EC:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start sub_021A21F0
sub_021A21F0: ; 0x021A21F0
	ldr r1, [r2]
	str r1, [r0, #0x1c]
	mov r1, #0
	add r0, #0xa0
	str r1, [r0]
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A21F0

	thumb_func_start ovy294_21a2200
ovy294_21a2200: ; 0x021A2200
	push {r3, lr}
	ldr r1, [r0, #4]
	ldr r1, [r1, #8]
	str r1, [sp]
	cmp r1, #0
	bne _021A2210
	add r1, r1, #1
	str r1, [sp]
_021A2210:
	mov r1, #0
	add r2, sp, #0
	bl sub_021A21F0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a2200

	thumb_func_start ovy294_21a221c
ovy294_21a221c: ; 0x021A221C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	bl sub_021A305C
	add r1, r5, #0
	add r1, #0xa0
	ldr r2, [r1]
	mov r1, #0x18
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r5, #0x18]
	bl ovy294_21a34b0
	cmp r6, #0
	bne _021A2244
	cmp r4, #0
	beq _021A2250
	b _021A2248
_021A2244:
	add r4, #0x18
	beq _021A2250
_021A2248:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy294_21a2fd4
_021A2250:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r5, #0xa0
	add r0, r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a221c

	thumb_func_start ovy294_21a2260
ovy294_21a2260: ; 0x021A2260
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r3, r2, #0
	cmp r0, #0
	beq _021A2276
	cmp r0, #1
	beq _021A229A
	b _021A22CC
_021A2276:
	ldr r0, [r3]
	add r1, sp, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r3, #4]
	mov r2, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	ldr r3, [r3, #8]
	bl ovy294_21a334c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A22CC
_021A229A:
	ldr r0, [r5, #0x18]
	bl ovy294_21a34f0
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	bl sub_021A3500
	cmp r0, #1
	bne _021A22BA
	ldr r1, [sp]
	add r0, r5, #0
	bl ovy294_21a221c
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_021A22BA:
	cmp r0, #2
	bne _021A22CC
	add r0, r5, #0
	mov r1, #1
	bl ovy294_21a221c
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_021A22CC:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2260

	thumb_func_start ovy294_21a22d4
ovy294_21a22d4: ; 0x021A22D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r2, #0
	bl sub_021A305C
	add r1, r5, #0
	add r1, #0xa0
	ldr r2, [r1]
	mov r1, #0x18
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r6]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _021A231C ; =0x021A4BB0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021A22FE
	add r4, #0x18
_021A22FE:
	cmp r4, #0
	beq _021A230A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy294_21a2fd4
_021A230A:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r5, #0xa0
	add r0, r0, #2
	str r0, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021A231C: .word 0x021A4BB0
	thumb_func_end ovy294_21a22d4

	thumb_func_start ovy294_21a2320
ovy294_21a2320: ; 0x021A2320
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrh r4, [r6]
	mov r0, #0xa8
	str r2, [sp, #0xc]
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	str r4, [sp, #4]
	mov r7, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	bne _021A23E0
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #2
	add r3, r7, #0
	bl sub_0204ADA8
	str r4, [sp]
	add r0, r5, #0
	mov r1, #7
	add r2, r7, #0
	add r3, sp, #0x10
	bl sub_0204B32C
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	add r6, #0xa8
	mov r2, #4
	add r0, #0xc
	add r1, r6, #0
	lsl r2, r2, #0xa
	blx MIi_CpuCopy16
	add r0, r4, #0
	bl GFL_HeapFree
_021A23E0:
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy294_21a2320
_021A23EC:
	.byte 0x11, 0x68, 0x40, 0x68
	.byte 0x81, 0x61, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x4B, 0x68, 0x10, 0x68, 0x83, 0x42, 0x01, 0xDD
	.byte 0x01, 0x20, 0x70, 0x47, 0x58, 0x1C, 0x48, 0x60, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy294_21a240c
ovy294_21a240c: ; 0x021A240C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r3, r2, #0
	cmp r0, #0
	beq _021A241E
	cmp r0, #1
	beq _021A2432
	b _021A243E
_021A241E:
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A243E
_021A2432:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A243E
	mov r0, #1
	pop {r4, pc}
_021A243E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a240c

	thumb_func_start ovy294_21a2444
ovy294_21a2444: ; 0x021A2444
	push {r3, lr}
	ldr r0, [r2]
	mov r1, #0x1d
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r2, #1
	bl sub_02029884
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a2444

	thumb_func_start ovy294_21a2458
ovy294_21a2458: ; 0x021A2458
	push {r3, lr}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0x1d
	bl sub_02029818
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2458

	thumb_func_start ovy294_21a247c
ovy294_21a247c: ; 0x021A247C
	push {r3, lr}
	mov r0, #1
	bl sub_02029928
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a247c

	thumb_func_start ovy294_21a2488
ovy294_21a2488: ; 0x021A2488
	push {r3, lr}
	ldr r0, [r2]
	ldr r1, _021A2498 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #1
	pop {r3, pc}
	nop
_021A2498: .word 0x0000FFFF
	thumb_func_end ovy294_21a2488

	thumb_func_start ovy294_21a249c
ovy294_21a249c: ; 0x021A249C
	push {r3, lr}
	bl sub_02005FA8
	cmp r0, #0
	beq _021A24AA
	mov r0, #1
	pop {r3, pc}
_021A24AA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a249c

	thumb_func_start ovy294_21a24b0
ovy294_21a24b0: ; 0x021A24B0
	push {r3, lr}
	ldr r0, [r2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005EA0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a24b0

	thumb_func_start ovy294_21a24c0
ovy294_21a24c0: ; 0x021A24C0
	push {r3, lr}
	ldr r0, [r2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005E68
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a24c0

	thumb_func_start ovy294_21a24d0
ovy294_21a24d0: ; 0x021A24D0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r0, [r5]
	bl GFL_SndSEPlay
	ldr r0, [r5]
	bl sub_020061B8
	ldr r1, [r5, #4]
	add r4, r0, #0
	cmp r1, #0
	beq _021A24EC
	bl sub_0200632C
_021A24EC:
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _021A24FE
	mov r1, #0
	mvn r1, r1
	add r0, r4, #0
	add r2, r1, #0
	bl sub_020062D8
_021A24FE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy294_21a24d0

	thumb_func_start ovy294_21a2504
ovy294_21a2504: ; 0x021A2504
	push {r3, lr}
	ldr r0, [r2]
	bl sub_020061B8
	bl sub_02006268
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a2504

	thumb_func_start ovy294_21a2514
ovy294_21a2514: ; 0x021A2514
	push {r3, lr}
	bl sub_0203DA48
	cmp r0, #0
	bne _021A2526
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A252A
_021A2526:
	mov r0, #1
	pop {r3, pc}
_021A252A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2514

	thumb_func_start ovy294_21a2530
ovy294_21a2530: ; 0x021A2530
	push {r3, lr}
	ldmia r2!, {r1, r2}
	lsl r2, r2, #0x10
	ldr r0, [r0, #0x18]
	lsr r2, r2, #0x10
	bl ovy294_21a31cc
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2530

	thumb_func_start ovy294_21a2544
ovy294_21a2544: ; 0x021A2544
	push {r3, lr}
	ldr r1, [r2, #4]
	ldr r2, [r2]
	lsl r3, r2, #2
	ldr r2, _021A2558 ; =0x021A4BB4
	ldr r2, [r2, r3]
	blx r2
	mov r0, #1
	pop {r3, pc}
	nop
_021A2558: .word 0x021A4BB4
	thumb_func_end ovy294_21a2544

	thumb_func_start ovy294_21a255c
ovy294_21a255c: ; 0x021A255C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021A256C
	cmp r1, #1
	beq _021A257C
	b _021A258A
_021A256C:
	ldr r0, [r0, #0x18]
	ldmia r2!, {r1, r2}
	bl ovy294_21a3204
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A258A
_021A257C:
	ldr r0, [r0, #0x18]
	bl ovy294_21a32bc
	cmp r0, #0
	beq _021A258A
	mov r0, #1
	pop {r4, pc}
_021A258A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a255c

	thumb_func_start ovy294_21a2590
ovy294_21a2590: ; 0x021A2590
	push {r3, lr}
	ldr r0, [r0, #0x18]
	bl sub_021A329C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a2590

	thumb_func_start ovy294_21a259c
ovy294_21a259c: ; 0x021A259C
	push {r3, lr}
	sub sp, #8
	ldr r1, [r2, #4]
	cmp r1, #0
	bne _021A25C0
	ldr r1, _021A25E0 ; =0x021A3FA8
	mov r3, #0
	str r1, [sp]
	ldr r1, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	ldr r2, [r2, #0xc]
	bl ovy294_21a35f0
	b _021A25D8
_021A25C0:
	str r1, [sp]
	ldr r1, [r2]
	mov r3, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	ldr r2, [r2, #0xc]
	lsl r3, r3, #0xc
	bl ovy294_21a3648
_021A25D8:
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	nop
_021A25E0: .word 0x021A3FA8
	thumb_func_end ovy294_21a259c

	thumb_func_start ovy294_21a25e4
ovy294_21a25e4: ; 0x021A25E4
	push {r3, lr}
	ldr r1, [r2, #4]
	ldr r2, [r2]
	ldr r0, [r0, #8]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ovy294_21a36ec
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a25e4

	thumb_func_start ovy294_21a25f8
ovy294_21a25f8: ; 0x021A25F8
	push {r3, lr}
	add r3, r2, #0
	ldr r1, [r3]
	ldr r2, [r3, #4]
	lsl r1, r1, #0x18
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	lsr r1, r1, #0x18
	bl ovy294_21a3710
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy294_21a25f8
_021A2610:
	.byte 0x11, 0x68, 0x80, 0x68, 0x09, 0x06, 0x01, 0x4B, 0x09, 0x0E, 0x18, 0x47, 0x49, 0x37, 0x1A, 0x02

	thumb_func_start ovy294_21a2620
ovy294_21a2620: ; 0x021A2620
	push {r3, lr}
	ldr r1, [r2]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021A3754
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2620

	thumb_func_start ovy294_21a2634
ovy294_21a2634: ; 0x021A2634
	push {r3, lr}
	add r3, r2, #0
	ldr r1, [r3]
	ldr r2, [r3, #4]
	lsl r1, r1, #0x18
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	lsr r1, r1, #0x18
	bl ovy294_21a37d0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2634

	thumb_func_start ovy294_21a264c
ovy294_21a264c: ; 0x021A264C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6]
	add r4, r2, #0
	cmp r0, #0
	beq _021A2660
	cmp r0, #1
	beq _021A2698
	b _021A26EA
_021A2660:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _021A2672
	ldr r1, [r4]
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021A267A
_021A2672:
	ldr r1, [r4]
	mov r2, #0x1f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021A267A:
	bl ovy294_21a3760
	ldr r2, [r4]
	ldr r0, [r5, #8]
	lsl r2, r2, #0x18
	mov r1, #1
	lsr r2, r2, #0x18
	bl ovy294_21a36ec
	mov r0, #0x1f
	str r0, [r6, #4]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021A26EA
_021A2698:
	ldr r0, [r6, #4]
	sub r2, r0, #2
	str r2, [r6, #4]
	cmp r2, #0
	bgt _021A26C2
	ldr r1, [r4]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x1f
	bl ovy294_21a3760
	ldr r2, [r4]
	ldr r0, [r5, #8]
	lsl r2, r2, #0x18
	ldr r1, [r4, #4]
	lsr r2, r2, #0x18
	bl ovy294_21a36ec
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A26C2:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021A26D6
	ldr r1, [r4]
	mov r3, #0x1f
	lsl r1, r1, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	sub r2, r3, r2
	b _021A26E2
_021A26D6:
	cmp r0, #0
	bne _021A26EA
	ldr r1, [r4]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021A26E2:
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ovy294_21a3760
_021A26EA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a264c

	thumb_func_start ovy294_21a26f0
ovy294_21a26f0: ; 0x021A26F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r2]
	ldr r6, [r2, #4]
	cmp r0, #0
	beq _021A2706
	cmp r0, #1
	beq _021A2716
	b _021A2772
_021A2706:
	ldr r0, [r5, #0x18]
	ldr r2, [r2, #8]
	bl ovy294_21a3204
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A2772
_021A2716:
	ldr r0, [r5, #0x18]
	bl ovy294_21a32bc
	cmp r0, #0
	beq _021A2730
	lsl r1, r6, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy294_21a3798
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A2730:
	ldr r0, [r5, #0x18]
	bl ovy294_21a32a8
	cmp r0, #0
	beq _021A2752
	cmp r0, #1
	beq _021A2742
	cmp r0, #2
	b _021A2772
_021A2742:
	lsl r1, r6, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy294_21a3798
	mov r0, #0
	b _021A2770
_021A2752:
	ldr r0, [r4, #4]
	mov r1, #0xc
	blx sub_0208D65C
	mov r2, #1
	cmp r1, #6
	blt _021A2762
	mov r2, #0
_021A2762:
	lsl r1, r6, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	bl ovy294_21a3798
	ldr r0, [r4, #4]
	add r0, r0, #1
_021A2770:
	str r0, [r4, #4]
_021A2772:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a26f0

	thumb_func_start ovy294_21a2778
ovy294_21a2778: ; 0x021A2778
	push {r3, lr}
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1314
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2778

	thumb_func_start ovy294_21a2788
ovy294_21a2788: ; 0x021A2788
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021A2798
	cmp r1, #1
	beq _021A27A8
	b _021A27B8
_021A2798:
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A13FC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A27B8
_021A27A8:
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1414
	cmp r0, #1
	bne _021A27B8
	mov r0, #1
	pop {r4, pc}
_021A27B8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy294_21a2788

	thumb_func_start ovy294_21a27bc
ovy294_21a27bc: ; 0x021A27BC
	push {r3, lr}
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1408
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a27bc

	thumb_func_start ovy294_21a27cc
ovy294_21a27cc: ; 0x021A27CC
	push {r3, lr}
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1430
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a27cc

	thumb_func_start ovy294_21a27dc
ovy294_21a27dc: ; 0x021A27DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A27F2
	cmp r0, #1
	beq _021A2816
	cmp r0, #2
	beq _021A2828
	b _021A2840
_021A27F2:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1434
	cmp r0, #1
	bne _021A2804
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2804:
	ldr r0, [r5, #0x18]
	mov r1, #5
	mov r2, #0
	bl ovy294_21a3204
_021A280E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A2840
_021A2816:
	ldr r0, [r5, #0x18]
	bl ovy294_21a32bc
	cmp r0, #1
	bne _021A2840
	ldr r0, [r5, #0x18]
	bl ovy294_21a3528
	b _021A280E
_021A2828:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_021A1434
	cmp r0, #1
	bne _021A2840
	ldr r0, [r5, #0x18]
	bl ovy294_21a3548
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2840:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy294_21a27dc

	thumb_func_start ovy294_21a2844
ovy294_21a2844: ; 0x021A2844
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r1, [r2]
	ldr r0, [r0, #4]
	cmp r1, #0
	bne _021A2854
	mov r1, #0
	b _021A2856
_021A2854:
	mov r1, #1
_021A2856:
	bl sub_02008A8C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2844

	thumb_func_start ovy294_21a2860
ovy294_21a2860: ; 0x021A2860
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, #0
	bne _021A2870
	mov r1, #0
	b _021A2872
_021A2870:
	mov r1, #1
_021A2872:
	bl sub_02008BEC
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2860

	thumb_func_start ovy294_21a287c
ovy294_21a287c: ; 0x021A287C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021A28FE
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A2894: ; jump table
	.short _021A289C - _021A2894 - 2 ; case 0
	.short _021A28AE - _021A2894 - 2 ; case 1
	.short _021A28CC - _021A2894 - 2 ; case 2
	.short _021A28EA - _021A2894 - 2 ; case 3
_021A289C:
	ldr r1, [r4, #4]
	cmp r1, #3
	bne _021A28A8
	mov r1, #0
	str r1, [r4, #4]
	b _021A28C6
_021A28A8:
	add r0, r1, #1
	str r0, [r4, #4]
	b _021A28FE
_021A28AE:
	mov r1, #1
	ldr r0, [r5, #8]
	ldr r2, _021A2904 ; =0xFFFF4800
	lsl r1, r1, #0xc
	bl ovy294_21a3830
	cmp r0, #1
	bne _021A28FE
	ldr r0, _021A2908 ; =0x000007F4
	bl GFL_SndSEPlay
_021A28C4:
	ldr r0, [r4]
_021A28C6:
	add r0, r0, #1
	str r0, [r4]
	b _021A28FE
_021A28CC:
	bl GFL_SndPlayerIsActiveAny
	cmp r0, #0
	bne _021A28FE
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy294_21a3710
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	bl sub_02006AD4
	b _021A28C4
_021A28EA:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	bl sub_02006C40
	cmp r0, #0
	bne _021A28FE
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A28FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021A2904: .word 0xFFFF4800
_021A2908: .word 0x000007F4
	thumb_func_end ovy294_21a287c

	thumb_func_start ovy294_21a290c
ovy294_21a290c: ; 0x021A290C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r2, #0
	ldr r0, _021A2934 ; =0x04000050
	mov r1, #1
	mov r2, #9
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	mov r3, #0
	bl ovy294_21a3cbc
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021A2934: .word 0x04000050
	thumb_func_end ovy294_21a290c

	thumb_func_start ovy294_21a2938
ovy294_21a2938: ; 0x021A2938
	push {r3, lr}
	ldr r0, [r0, #0xc]
	ldr r1, [r2]
	bl sub_021A3AB8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2938

	thumb_func_start ovy294_21a2948
ovy294_21a2948: ; 0x021A2948
	push {r3, lr}
	ldr r0, [r0, #0xc]
	ldr r1, [r2]
	bl ovy294_21a3b9c
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2948

	thumb_func_start ovy294_21a2958
ovy294_21a2958: ; 0x021A2958
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl ovy294_21a3a14
	cmp r0, #0
	beq _021A2968
	mov r0, #1
	pop {r3, pc}
_021A2968:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy294_21a2958

	thumb_func_start ovy294_21a296c
ovy294_21a296c: ; 0x021A296C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021A2A38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2984: ; jump table
	.short _021A298E - _021A2984 - 2 ; case 0
	.short _021A2998 - _021A2984 - 2 ; case 1
	.short _021A29F2 - _021A2984 - 2 ; case 2
	.short _021A2A1C - _021A2984 - 2 ; case 3
	.short _021A2A2A - _021A2984 - 2 ; case 4
_021A298E:
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_021A3ABC
	b _021A29DC
_021A2998:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _021A29BA
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021A2A38
	ldr r0, _021A2A3C ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_021A3ABC
	mov r0, #1
	b _021A29DA
_021A29BA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _021A29E0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A2A38
	ldr r0, _021A2A3C ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_021A3ABC
	mov r0, #0
_021A29DA:
	str r0, [r4, #4]
_021A29DC:
	mov r0, #4
	b _021A2A36
_021A29E0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021A2A38
	ldr r0, _021A2A40 ; =0x0000054D
	bl GFL_SndSEPlay
	b _021A2A16
_021A29F2:
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r1, #0
	bne _021A2A08
	mov r1, #0
	bl sub_02008BEC
	ldr r0, [r5, #0xc]
	mov r1, #3
	b _021A2A12
_021A2A08:
	mov r1, #1
	bl sub_02008BEC
	ldr r0, [r5, #0xc]
	mov r1, #4
_021A2A12:
	bl sub_021A3ABC
_021A2A16:
	ldr r0, [r4]
	add r0, r0, #1
	b _021A2A36
_021A2A1C:
	ldr r0, [r5, #0xc]
	bl ovy294_21a3b00
	cmp r0, #0
	beq _021A2A38
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2A2A:
	ldr r0, [r5, #0xc]
	bl ovy294_21a3b00
	cmp r0, #0
	beq _021A2A38
	mov r0, #1
_021A2A36:
	str r0, [r4]
_021A2A38:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2A3C: .word 0x00000548
_021A2A40: .word 0x0000054D
	thumb_func_end ovy294_21a296c

	thumb_func_start ovy294_21a2a44
ovy294_21a2a44: ; 0x021A2A44
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl ovy294_21a3b74
	cmp r0, #0
	beq _021A2A54
	mov r0, #1
	pop {r3, pc}
_021A2A54:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy294_21a2a44

	thumb_func_start ovy294_21a2a58
ovy294_21a2a58: ; 0x021A2A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bls _021A2A68
	b _021A2BCE
_021A2A68:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2A74: ; jump table
	.short _021A2A7E - _021A2A74 - 2 ; case 0
	.short _021A2AA2 - _021A2A74 - 2 ; case 1
	.short _021A2AF6 - _021A2A74 - 2 ; case 2
	.short _021A2B38 - _021A2A74 - 2 ; case 3
	.short _021A2B7A - _021A2A74 - 2 ; case 4
_021A2A7E:
	mov r6, #2
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	str r6, [sp]
	add r4, #0xa8
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #8
	str r2, [sp, #0xc]
	mov r3, #0x40
	str r3, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	b _021A2AE4
_021A2AA2:
	mov r6, #1
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xa8
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #7
	mov r3, #0x40
	bl sub_0204556C
	str r6, [sp]
	add r4, #0xa8
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0xa
_021A2AE2:
	mov r3, #0x40
_021A2AE4:
	bl sub_0204556C
	mov r0, #2
	bl sub_02045B7C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021A2BCE
_021A2AF6:
	mov r6, #1
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xa8
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #6
	mov r3, #0x40
	bl sub_0204556C
	str r6, [sp]
	add r4, #0xa8
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0xb
	b _021A2AE2
_021A2B38:
	mov r6, #1
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xa8
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #5
	mov r3, #0x40
	bl sub_0204556C
	str r6, [sp]
	add r4, #0xa8
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0xc
	b _021A2AE2
_021A2B7A:
	mov r7, #1
	add r0, r4, #0
	str r7, [sp]
	add r0, #0xa8
	str r0, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #4
	mov r3, #0x40
	bl sub_0204556C
	str r7, [sp]
	add r4, #0xa8
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0xd
	mov r3, #0x40
	bl sub_0204556C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x18
	str r6, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2BCE:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy294_21a2a58

	thumb_func_start ovy294_21a2bd4
ovy294_21a2bd4: ; 0x021A2BD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021A2CB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2BEC: ; jump table
	.short _021A2BF6 - _021A2BEC - 2 ; case 0
	.short _021A2C2E - _021A2BEC - 2 ; case 1
	.short _021A2C56 - _021A2BEC - 2 ; case 2
	.short _021A2C7E - _021A2BEC - 2 ; case 3
	.short _021A2CA6 - _021A2BEC - 2 ; case 4
_021A2BF6:
	mov r5, #0x40
	str r5, [sp]
	mov r6, #1
	str r6, [sp, #4]
	mov r7, #0
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #7
	str r7, [sp, #8]
	bl sub_02045604
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x10
_021A2C1C:
	bl sub_02045604
	mov r0, #2
	bl sub_02045B7C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A2CB8
_021A2C2E:
	mov r5, #0x40
	str r5, [sp]
	mov r6, #1
	str r6, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #8
	bl sub_02045604
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0xf
	b _021A2C1C
_021A2C56:
	mov r5, #0x40
	str r5, [sp]
	mov r6, #1
	str r6, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #6
	bl sub_02045604
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0xe
	b _021A2C1C
_021A2C7E:
	mov r5, #0x40
	str r5, [sp]
	mov r6, #1
	str r6, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #5
	bl sub_02045604
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0xd
	b _021A2C1C
_021A2CA6:
	mov r0, #2
	mov r1, #0
	mov r5, #0
	bl sub_02044C98
	add sp, #0xc
	str r5, [r4]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2CB8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2bd4

	thumb_func_start ovy294_21a2cc0
ovy294_21a2cc0: ; 0x021A2CC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xa8
	bl GFL_ArcSysCreateFileHandle
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	mov r1, #0xa
	add r4, r0, #0
	mov r7, #0
	bl Oam_LoadNCGRFile
	ldr r6, _021A2D54 ; =0x000010AC
	mov r1, #0xb
	str r0, [r5, r6]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0x20
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	add r1, r6, #4
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #9
	mov r2, #8
	bl Oam_LoadNCERFile
	add r1, r6, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r1, _021A2D58 ; =0x021A3FA0
	add r0, sp, #0xc
	ldrh r2, [r1]
	add r4, sp, #0xc
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	ldr r0, [r5, #0x14]
	bl sub_021A1E5C
	str r4, [sp]
	str r7, [sp, #4]
	ldrh r1, [r5]
	add r3, r6, #0
	add r2, r6, #4
	str r1, [sp, #8]
	add r3, #8
	ldr r1, [r5, r6]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	sub r1, r6, #4
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2D54: .word 0x000010AC
_021A2D58: .word 0x021A3FA0
	thumb_func_end ovy294_21a2cc0

	thumb_func_start ovy294_21a2d5c
ovy294_21a2d5c: ; 0x021A2D5C
	push {r3, r4, r5, lr}
	ldr r5, _021A2D88 ; =0x000010AC
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0204B98C
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0204BE64
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204C108
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021A2D88: .word 0x000010AC
	thumb_func_end ovy294_21a2d5c

	thumb_func_start ovy294_21a2d8c
ovy294_21a2d8c: ; 0x021A2D8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _021A2D9E
	cmp r0, #0x10
	beq _021A2DC8
	b _021A2DF0
_021A2D9E:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021A2E04 ; =0x04000050
	mov r1, #0
	mov r2, #0xc
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r4, _021A2E08 ; =0x000010A8
	mov r1, #1
	ldr r0, [r5, r4]
	bl sub_0204C318
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021A2E00
_021A2DC8:
	ldr r0, _021A2E08 ; =0x000010A8
	mov r4, #0
	add r6, r5, r0
_021A2DCE:
	ldr r0, [r6]
	bl sub_0204C370
	cmp r0, #1
	bne _021A2DE2
	ldr r0, _021A2E08 ; =0x000010A8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C318
_021A2DE2:
	add r4, r4, #1
	cmp r4, #3
	blo _021A2DCE
	mov r0, #0
	str r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2DF0:
	add r1, r0, #1
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	str r1, [r7]
	orr r1, r0
	ldr r0, _021A2E0C ; =0x04000052
	strh r1, [r0]
_021A2E00:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2E04: .word 0x04000050
_021A2E08: .word 0x000010A8
_021A2E0C: .word 0x04000052
	thumb_func_end ovy294_21a2d8c

	thumb_func_start ovy294_21a2e10
ovy294_21a2e10: ; 0x021A2E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r1]
	str r1, [sp, #4]
	cmp r0, #0
	beq _021A2E24
	cmp r0, #0x10
	beq _021A2E52
	b _021A2E7C
_021A2E24:
	ldr r0, _021A2E94 ; =0x04000050
	mov r4, #0
	mov r1, #0
	mov r2, #0xc
	mov r3, #0x10
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r6, _021A2E98 ; =0x000010A8
	mov r7, #1
_021A2E38:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_0204C318
	add r4, r4, #1
	cmp r4, #3
	blo _021A2E38
	ldr r0, [sp, #4]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021A2E8E
_021A2E52:
	ldr r0, _021A2E98 ; =0x000010A8
	mov r4, #0
	add r7, r4, #0
	add r6, r5, r0
_021A2E5A:
	ldr r0, _021A2E98 ; =0x000010A8
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl sub_0204C318
	ldr r0, [r6]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	blo _021A2E5A
	ldr r0, [sp, #4]
	add sp, #8
	str r7, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2E7C:
	add r2, r0, #1
	add r0, r1, #0
	str r2, [r0]
	mov r0, #0x10
	sub r1, r0, r2
	lsl r0, r2, #8
	orr r1, r0
	ldr r0, _021A2E9C ; =0x04000052
	strh r1, [r0]
_021A2E8E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2E94: .word 0x04000050
_021A2E98: .word 0x000010A8
_021A2E9C: .word 0x04000052
	thumb_func_end ovy294_21a2e10

	thumb_func_start ovy294_21a2ea0
ovy294_21a2ea0: ; 0x021A2EA0
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _021A2EB2
	mov r0, #1
	pop {r3, pc}
_021A2EB2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2ea0

	thumb_func_start ovy294_21a2eb8
ovy294_21a2eb8: ; 0x021A2EB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	bl sub_021A3524
	ldr r2, [r5, #4]
	add r1, r4, #0
	ldr r2, [r2]
	bl GFL_CopyVarForText
	pop {r3, r4, r5, pc}
	thumb_func_end ovy294_21a2eb8

	thumb_func_start ovy294_21a2ed0
ovy294_21a2ed0: ; 0x021A2ED0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	bl sub_021A3524
	ldr r2, [r5, #4]
	add r1, r4, #0
	ldr r2, [r2, #0x14]
	bl sub_020245C4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy294_21a2ed0

	thumb_func_start ovy294_21a2ee8
ovy294_21a2ee8: ; 0x021A2EE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021A2F30 ; =0x0000070C
	add r7, r1, #0
	str r0, [sp]
	add r0, sp, #0x20
	add r5, r3, #0
	str r2, [sp, #4]
	ldrh r0, [r0, #4]
	ldr r1, _021A2F34 ; =0x000010B8
	ldr r3, _021A2F38 ; =0x021A4C90
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	ldr r1, [sp, #4]
	strh r0, [r4]
	str r5, [r4, #4]
	str r1, [r4, #8]
	str r6, [r4, #0xc]
	ldr r1, [sp, #0x20]
	str r7, [r4, #0x10]
	str r1, [r4, #0x14]
	add r1, r4, #0
	ldr r2, [r5, #0xc]
	add r1, #0xa4
	str r2, [r1]
	bl ovy294_21a3068
	str r0, [r4, #0x18]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2F30: .word 0x0000070C
_021A2F34: .word 0x000010B8
_021A2F38: .word 0x021A4C90
	thumb_func_end ovy294_21a2ee8

	thumb_func_start ovy294_21a2f3c
ovy294_21a2f3c: ; 0x021A2F3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy294_21a316c
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a2f3c

	thumb_func_start ovy294_21a2f50
ovy294_21a2f50: ; 0x021A2F50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl ovy294_21a31f0
	add r0, r5, #0
	bl ovy294_21a2ff8
	cmp r0, #0
	bne _021A2FCA
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x40
	add r7, r5, #0
	mov r4, #0
	str r0, [sp]
	add r7, #0xa0
_021A2F72:
	ldr r0, [r5, #0x1c]
	bl sub_021A305C
	add r1, r5, #0
	add r1, #0xa0
	ldr r2, [r1]
	mov r1, #0x18
	mul r1, r2
	ldr r3, [r0, r1]
	add r2, r0, r1
	cmp r3, #1
	bne _021A2FA8
	mov r1, #0xc
	add r6, r4, #0
	mul r6, r1
	ldr r1, [sp]
	add r0, r5, #0
	add r1, r1, r6
	lsl r6, r3, #2
	ldr r3, _021A2FD0 ; =0x021A4BBC
	add r2, r2, #4
	ldr r3, [r3, r6]
	blx r3
	ldr r0, [r5, #0x1c]
	bl sub_021A305C
	add r2, r0, #0
_021A2FA8:
	ldr r0, [r2]
	cmp r0, #0x34
	bne _021A2FB2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2FB2:
	ldr r0, [r7]
	add r1, r2, #0
	add r0, r0, #1
	str r0, [r7]
	add r0, r5, #0
	bl ovy294_21a2fd4
	cmp r0, #0
	beq _021A2FCA
	add r4, r4, #1
	cmp r4, #9
	blt _021A2F72
_021A2FCA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2FD0: .word 0x021A4BBC
	thumb_func_end ovy294_21a2f50

	thumb_func_start ovy294_21a2fd4
ovy294_21a2fd4: ; 0x021A2FD4
	push {r3, r4}
	mov r4, #0
_021A2FD8:
	lsl r2, r4, #2
	add r3, r0, r2
	ldr r2, [r3, #0x20]
	cmp r2, #0
	bne _021A2FE6
	str r1, [r3, #0x20]
	b _021A2FEC
_021A2FE6:
	add r4, r4, #1
	cmp r4, #8
	blt _021A2FD8
_021A2FEC:
	ldrb r0, [r1, #0x14]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy294_21a2fd4

	thumb_func_start ovy294_21a2ff8
ovy294_21a2ff8: ; 0x021A2FF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r7, r5, #0
	str r0, [sp]
	mov r4, #0
	add r7, #0x40
_021A3006:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _021A3038
	add r2, r3, #4
	ldr r3, [r3]
	mov r1, #0xc
	lsl r6, r3, #2
	ldr r3, _021A3044 ; =0x021A4BBC
	mul r1, r4
	ldr r3, [r3, r6]
	add r0, r5, #0
	add r1, r7, r1
	blx r3
	cmp r0, #0
	bne _021A302E
	mov r0, #1
	str r0, [sp]
	b _021A3038
_021A302E:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021A3048
_021A3038:
	add r4, r4, #1
	cmp r4, #8
	blt _021A3006
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3044: .word 0x021A4BBC
	thumb_func_end ovy294_21a2ff8

	thumb_func_start sub_021A3048
sub_021A3048: ; 0x021A3048
	lsl r2, r1, #2
	mov r3, #0
	add r2, r0, r2
	str r3, [r2, #0x20]
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	str r3, [r0, #0x40]
	str r3, [r0, #0x44]
	bx lr
	thumb_func_end sub_021A3048

	thumb_func_start sub_021A305C
sub_021A305C: ; 0x021A305C
	lsl r1, r0, #2
	ldr r0, _021A3064 ; =0x021A4C9C
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_021A3064: .word 0x021A4C9C
	thumb_func_end sub_021A305C

	thumb_func_start ovy294_21a3068
ovy294_21a3068: ; 0x021A3068
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x81
	str r1, [sp]
	ldr r3, _021A3168 ; =0x021A4CD4
	mov r1, #0x48
	mov r2, #1
	add r5, r0, #0
	mov r6, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	add r0, r5, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02021998
	str r0, [r4, #4]
	ldrh r0, [r4]
	mov r2, #2
	mov r3, #0
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0x18]
	mov r0, #0x20
	str r0, [sp]
	mov r3, #5
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r3, #6
	bl GFL_BGSysLoadNCLRDefault
	str r5, [sp]
	mov r0, #1
	mov r1, #7
	mov r2, #9
	mov r3, #0
	bl sub_02024D00
	str r5, [sp]
	mov r0, #1
	mov r1, #0x10
	mov r2, #8
	mov r3, #1
	bl sub_02024D00
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x10]
	mov r5, #0x19
	lsl r5, r5, #6
	ldrh r1, [r4]
	add r0, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x3c]
	ldrh r1, [r4]
	add r0, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x40]
	mov r7, #4
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	mov r1, #0x16
	mov r2, #0xd
	mov r3, #9
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x38]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r5, [r4, #0x38]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl BmpWin_FlushMap
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	str r7, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x1c]
	ldrh r3, [r4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	bl sub_0202E7A4
	str r0, [r4, #0x20]
	ldrh r0, [r4]
	bl sub_02035734
	str r0, [r4, #0x44]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A3168: .word 0x021A4CD4
	thumb_func_end ovy294_21a3068

	thumb_func_start ovy294_21a316c
ovy294_21a316c: ; 0x021A316C
	push {r4, lr}
	add r4, r0, #0
	bl ovy294_21a3548
	ldr r0, [r4, #0x20]
	bl sub_0202E818
	ldr r0, [r4, #0x3c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x40]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x10]
	bl sub_02022DA8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A3196
	bl sub_020223CC
_021A3196:
	ldr r0, [r4, #0x1c]
	bl BmpWin_Free
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021A31A6
	bl BmpWin_Free
_021A31A6:
	ldr r0, [r4, #0x18]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #4]
	bl sub_02021A18
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A31BC
	bl GFL_MsgDataFree
_021A31BC:
	ldr r0, [r4, #8]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a316c

	thumb_func_start ovy294_21a31cc
ovy294_21a31cc: ; 0x021A31CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021A31DE
	bl GFL_MsgDataFree
_021A31DE:
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a31cc

	thumb_func_start ovy294_21a31f0
ovy294_21a31f0: ; 0x021A31F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0203A7F4
	ldr r0, [r4, #4]
	bl sub_02021A3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a31f0

	thumb_func_start ovy294_21a3204
ovy294_21a3204: ; 0x021A3204
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x18]
	add r6, r2, #0
	bl sub_02017BCC
	ldr r4, [r5, #0x1c]
	add r7, r0, #0
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0x3c]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x10]
	mov r1, #4
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, _021A3298 ; =0x0000FFFF
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r3, [r5, #0x40]
	add r0, r4, #0
	bl sub_02022268
	str r0, [r5, #0x14]
	cmp r6, #0
	bne _021A3272
	add r0, r4, #0
	mov r1, #1
	mov r2, #7
	mov r3, #9
	b _021A327A
_021A3272:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	mov r3, #8
_021A327A:
	bl sub_02024E80
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3298: .word 0x0000FFFF
	thumb_func_end ovy294_21a3204

	thumb_func_start sub_021A329C
sub_021A329C: ; 0x021A329C
	ldr r0, [r0, #0x1c]
	ldr r3, _021A32A4 ; =sub_02024EEC
	mov r1, #0
	bx r3
	.align 2, 0
_021A32A4: .word sub_02024EEC
	thumb_func_end sub_021A329C

	thumb_func_start ovy294_21a32a8
ovy294_21a32a8: ; 0x021A32A8
	push {r3, lr}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021A32B4
	mov r0, #2
	pop {r3, pc}
_021A32B4:
	bl sub_020223B4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a32a8

	thumb_func_start ovy294_21a32bc
ovy294_21a32bc: ; 0x021A32BC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A3332
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	bl sub_0202E8D8
	ldr r0, [r4, #0x14]
	bl sub_020223B4
	cmp r0, #0
	beq _021A3314
	cmp r0, #1
	beq _021A32EE
	cmp r0, #2
	bne _021A332E
	ldr r0, [r4, #0x14]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #1
	pop {r4, pc}
_021A32EE:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021A3306
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	beq _021A3306
	bl sub_0203DA48
	cmp r0, #0
	beq _021A332E
_021A3306:
	ldr r0, [r4, #0x14]
	bl sub_020223BC
	ldr r0, _021A3338 ; =0x00000547
	bl GFL_SndSEPlay
	b _021A332E
_021A3314:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _021A3326
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A332E
_021A3326:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_020223E0
_021A332E:
	mov r0, #0
	pop {r4, pc}
_021A3332:
	mov r0, #0
	pop {r4, pc}
	nop
_021A3338: .word 0x00000547
	thumb_func_end ovy294_21a32bc

	thumb_func_start sub_021A333C
sub_021A333C: ; 0x021A333C
	str r1, [r0, #0x30]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x34
	strb r2, [r1]
	add r0, #0x30
	bx lr
	.align 2, 0
	thumb_func_end sub_021A333C

	thumb_func_start ovy294_21a334c
ovy294_21a334c: ; 0x021A334C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	str r0, [sp, #0x14]
	add r0, #0x24
	str r0, [sp, #0x14]
	ldrh r0, [r5]
	add r7, r1, #0
	str r2, [sp]
	str r0, [sp, #8]
	ldr r0, [r5, #0x38]
	mov r1, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r2, #0xc
	str r3, [sp, #4]
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_02024F60
	ldr r1, [sp, #0x14]
	str r0, [r1, #4]
	ldr r0, [sp]
	cmp r0, #0
	bls _021A33AE
_021A3384:
	lsl r6, r4, #3
	add r0, r7, r6
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r1, [r7, r6]
	ldr r2, [r5, #0x3c]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #4]
	ldr r1, [r5, #0x3c]
	ldr r2, [r2, #4]
	ldr r3, [sp, #8]
	add r0, r0, r6
	bl sub_02024FDC
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blo _021A3384
_021A33AE:
	add r7, sp, #0x18
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x34
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x14]
	add r2, sp, #0x18
	ldr r0, [r0, #4]
	mov r6, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp]
	mov r1, #2
	strh r0, [r2, #0xc]
	mov r0, #5
	strh r0, [r2, #0xe]
	strb r4, [r2, #0x10]
	strb r6, [r2, #0x11]
	strb r4, [r2, #0x12]
	ldrb r3, [r2, #0x13]
	mov r0, #0xf
	bic r3, r0
	orr r1, r3
	strb r1, [r2, #0x13]
	ldrb r3, [r2, #0x13]
	mov r1, #0xf0
	bic r3, r1
	orr r3, r6
	strb r3, [r2, #0x13]
	ldrb r3, [r2, #0x14]
	bic r3, r0
	mov r0, #0xf
	orr r0, r3
	strb r0, [r2, #0x14]
	ldrb r0, [r2, #0x14]
	bic r0, r1
	mov r1, #0x20
	orr r0, r1
	strb r0, [r2, #0x14]
	ldrh r1, [r2, #0x16]
	mov r0, #7
	bic r1, r0
	strh r1, [r2, #0x16]
	ldrh r1, [r2, #0x16]
	mov r0, #0x78
	bic r1, r0
	strh r1, [r2, #0x16]
	ldrh r1, [r2, #0x16]
	ldr r0, _021A34A4 ; =0xFFFFFE7F
	and r1, r0
	mov r0, #0x80
	orr r0, r1
	strh r0, [r2, #0x16]
	ldrh r1, [r2, #0x16]
	ldr r0, _021A34A8 ; =0xFFFF81FF
	and r0, r1
	strh r0, [r2, #0x16]
	ldrh r1, [r2, #0x16]
	ldr r0, _021A34AC ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, #0x16]
	str r4, [sp, #0x30]
	strh r6, [r2, #0x1c]
	strh r6, [r2, #0x1e]
	ldr r1, [sp, #0x10]
	str r4, [sp, #0x38]
	add r0, r5, #0
	bl sub_021A333C
	str r0, [sp, #0x3c]
	ldr r0, [r5, #4]
	ldr r3, [sp, #8]
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r0, [sp, #0x44]
	mov r0, #0x14
	str r0, [sp, #0x48]
	add r0, r7, #0
	mov r2, #0
	bl sub_020256F0
	ldr r1, [sp, #0x14]
	str r0, [r1]
	ldr r1, [sp, #8]
	bl sub_02026510
	ldr r0, [sp, #0x10]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x10]
	bl BmpWin_FlushMap
	ldr r0, [sp, #0x10]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r2, #7
	mov r3, #9
	mov r5, #1
	bl sub_02024E80
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A3496
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_02026520
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021A3496:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_02026520
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A34A4: .word 0xFFFFFE7F
_021A34A8: .word 0xFFFF81FF
_021A34AC: .word 0xFFFF7FFF
	thumb_func_end ovy294_21a334c

	thumb_func_start ovy294_21a34b0
ovy294_21a34b0: ; 0x021A34B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r5, #0
	mov r1, #0
	add r4, #0x24
	bl sub_02024EEC
	ldr r0, [r5, #0x38]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x38]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x24]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	ldr r0, [r4, #4]
	bl sub_02024FAC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy294_21a34b0

	thumb_func_start ovy294_21a34f0
ovy294_21a34f0: ; 0x021A34F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r0, #0x24]
	add r4, #0x24
	bl sub_020258A4
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ovy294_21a34f0

	thumb_func_start sub_021A3500
sub_021A3500: ; 0x021A3500
	ldr r2, [r0, #0x2c]
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _021A3514
	add r0, r0, #1
	cmp r2, r0
	bne _021A3518
	mov r0, #0
	bx lr
_021A3514:
	mov r0, #2
	bx lr
_021A3518:
	cmp r1, #0
	beq _021A351E
	str r2, [r1]
_021A351E:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3500

	thumb_func_start sub_021A3524
sub_021A3524: ; 0x021A3524
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021A3524

	thumb_func_start ovy294_21a3528
ovy294_21a3528: ; 0x021A3528
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02005718
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0x1c]
	mov r3, #0xf
	bl sub_0203576C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a3528

	thumb_func_start ovy294_21a3548
ovy294_21a3548: ; 0x021A3548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021A355A
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x44]
_021A355A:
	pop {r4, pc}
	thumb_func_end ovy294_21a3548

	thumb_func_start ovy294_21a355c
ovy294_21a355c: ; 0x021A355C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	mov r1, #0x62
	str r1, [sp]
	ldr r3, _021A35A8 ; =0x021A4CE0
	add r6, r0, #0
	mov r1, #0x6c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #8
	add r1, r6, #0
	bl sub_020199E8
	str r0, [r4, #4]
	strh r6, [r4]
	cmp r5, #7
	beq _021A3592
	cmp r5, #0xa
	beq _021A3592
	mov r1, #7
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	bl sub_0201AEFC
_021A3592:
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl sub_0201AF00
	ldr r0, [r4, #4]
	bl sub_0201AACC
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A35A8: .word 0x021A4CE0
	thumb_func_end ovy294_21a355c

	thumb_func_start ovy294_21a35ac
ovy294_21a35ac: ; 0x021A35AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xc
_021A35B4:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021A35C6
	ldr r0, [r5, #4]
	bl sub_0201AA80
_021A35C6:
	add r4, r4, #1
	cmp r4, #8
	blt _021A35B4
	ldr r0, [r5, #4]
	bl sub_02019A88
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a35ac

	thumb_func_start ovy294_21a35dc
ovy294_21a35dc: ; 0x021A35DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02019AE8
	ldr r0, [r4, #4]
	bl sub_02019C0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a35dc

	thumb_func_start ovy294_21a35f0
ovy294_21a35f0: ; 0x021A35F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _021A3640 ; =0x021A4ADC
	add r4, sp, #8
	add r5, r0, #0
	add r7, r1, #0
	ldmia r6!, {r0, r1}
	str r4, [sp, #4]
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	add r6, r5, #0
	str r0, [r4]
	add r0, sp, #0x28
	ldrb r1, [r0, #4]
	mov r0, #0xc
	add r6, #8
	add r4, r1, #0
	mul r4, r0
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	bl sub_0201A8A8
	ldr r1, [sp, #4]
	str r0, [r6, r4]
	bl sub_0201AB88
	mov r3, #0
	add r1, r5, r4
	str r3, [r1, #0xc]
	mov r0, #1
	str r0, [r1, #0x10]
	ldr r0, [r6, r4]
	ldr r2, _021A3644 ; =ovy294_21a37bc
	add r1, r6, r4
	bl sub_0201AE08
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3640: .word 0x021A4ADC
_021A3644: .word ovy294_21a37bc
	thumb_func_end ovy294_21a35f0

	thumb_func_start ovy294_21a3648
ovy294_21a3648: ; 0x021A3648
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r3, [sp, #8]
	ldr r3, _021A36E4 ; =0x021A4AE8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [sp, #0x58]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201C2CC
	add r4, r0, #0
	add r1, sp, #0x1c
	mov r2, #0
	bl sub_0201BFDC
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, sp, #0x58
	ldrb r1, [r0, #4]
	add r6, r5, #0
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r6, #8
	bl sub_0201A8A8
	ldr r1, [sp, #0xc]
	str r0, [r6, r4]
	bl sub_0201AB88
	ldr r0, [r6, r4]
	bl sub_0201ACE0
	add r1, r5, r4
	mov r0, #0
	str r0, [r1, #0xc]
	mov r0, #1
	str r0, [r1, #0x10]
	bl sub_02043F2C
	mov r1, #0
	mov r2, #5
	mov r3, #0
	blx sub_0208D60C
	mov r0, #0x14
	mul r0, r1
	add r0, #0xc8
	str r0, [r5, #0x68]
	ldr r0, [r6, r4]
	ldr r2, _021A36E8 ; =ovy294_21a37bc
	add r1, r6, r4
	mov r3, #0
	bl sub_0201AE08
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A36E4: .word 0x021A4AE8
_021A36E8: .word ovy294_21a37bc
	thumb_func_end ovy294_21a3648

	thumb_func_start ovy294_21a36ec
ovy294_21a36ec: ; 0x021A36EC
	push {r3, lr}
	cmp r1, #1
	bne _021A3700
	mov r1, #0xc
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bl sub_0201AD8C
	pop {r3, pc}
_021A3700:
	mov r1, #0xc
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bl sub_0201AD7C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a36ec

	thumb_func_start ovy294_21a3710
ovy294_21a3710: ; 0x021A3710
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xc
	add r4, r6, #0
	mul r5, r0
	add r4, #8
	ldr r0, [r4, r5]
	add r1, r2, #0
	add r7, r3, #0
	bl sub_0201AF04
	ldr r0, [r4, r5]
	bl sub_0201AD28
	mov r1, #0
	add r0, r6, r5
	str r1, [r0, #0xc]
	str r7, [r0, #0x10]
	ldr r0, [r4, r5]
	ldr r2, _021A3744 ; =ovy294_21a37bc
	add r1, r4, r5
	mov r3, #0
	bl sub_0201AE08
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3744: .word ovy294_21a37bc
	thumb_func_end ovy294_21a3710
_021A3748:
	.byte 0x0C, 0x22, 0x4A, 0x43, 0x80, 0x18, 0xC0, 0x68
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021A3754
sub_021A3754: ; 0x021A3754
	mov r2, #0xc
	mul r2, r1
	mov r3, #0
	add r0, r0, r2
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A3754

	thumb_func_start ovy294_21a3760
ovy294_21a3760: ; 0x021A3760
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	mov r3, #0
	ldr r0, _021A3794 ; =0x04000050
	mov r1, #1
	mov r2, #9
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	cmp r4, #0x1f
	bls _021A377E
	mov r4, #0x1f
_021A377E:
	mov r0, #0xc
	mul r0, r6
	add r0, r5, r0
	lsl r1, r4, #0x18
	ldr r0, [r0, #8]
	lsr r1, r1, #0x18
	bl sub_0201AE98
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A3794: .word 0x04000050
	thumb_func_end ovy294_21a3760

	thumb_func_start ovy294_21a3798
ovy294_21a3798: ; 0x021A3798
	push {r3, lr}
	cmp r2, #0
	beq _021A37AC
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0201AC8C
	pop {r3, pc}
_021A37AC:
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0201AC9C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy294_21a3798

	thumb_func_start ovy294_21a37bc
ovy294_21a37bc: ; 0x021A37BC
	push {r3, lr}
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	cmp r1, #1
	bne _021A37CE
	ldr r0, [r0]
	bl sub_0201B250
_021A37CE:
	pop {r3, pc}
	thumb_func_end ovy294_21a37bc

	thumb_func_start ovy294_21a37d0
ovy294_21a37d0: ; 0x021A37D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r7, [sp]
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	add r1, sp, #8
	add r6, r2, #0
	add r5, r3, #0
	bl sub_0201AB0C
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, r6
	str r0, [sp, #8]
	cmp r0, r5
	beq _021A3812
	cmp r6, #0
	ble _021A3802
	cmp r0, r5
	bgt _021A380A
_021A3802:
	cmp r6, #0
	bge _021A380E
	cmp r0, r5
	bge _021A380E
_021A380A:
	str r5, [sp, #8]
	b _021A3812
_021A380E:
	mov r0, #0
	str r0, [sp, #4]
_021A3812:
	ldr r0, [r7, r4]
	add r1, sp, #8
	bl sub_0201AB24
	ldr r0, [sp]
	add r0, r0, r4
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021A382A
	ldr r0, [r7, r4]
	bl sub_0201ACE0
_021A382A:
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy294_21a37d0

	thumb_func_start ovy294_21a3830
ovy294_21a3830: ; 0x021A3830
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r6, r1, #0
	add r1, sp, #0
	add r4, r2, #0
	bl sub_0201AB0C
	ldr r0, [sp, #4]
	sub r0, r0, r6
	str r0, [sp, #4]
	cmp r0, r4
	bgt _021A3852
	str r4, [sp, #4]
	mov r4, #1
	b _021A3854
_021A3852:
	mov r4, #0
_021A3854:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	bl sub_0201AB24
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy294_21a3830

	thumb_func_start ovy294_21a3864
ovy294_21a3864: ; 0x021A3864
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A38A4
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _021A3898
	bl sub_02043F2C
	mov r1, #0
	mov r2, #5
	mov r3, #0
	blx sub_0208D60C
	mov r0, #0x14
	mul r0, r1
	add r0, #0xc8
	str r0, [r4, #0x68]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy294_21a3710
	pop {r4, pc}
_021A3898:
	ldr r0, [r4, #0x14]
	bl sub_0201ACE0
	ldr r0, [r4, #0x68]
	sub r0, r0, #1
	str r0, [r4, #0x68]
_021A38A4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a3864

	thumb_func_start ovy294_21a38a8
ovy294_21a38a8: ; 0x021A38A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0xb0
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _021A3984 ; =0x021A4CF0
	add r0, r5, #0
	mov r1, #0x30
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4, #4]
	mov r0, #0xa
	mov r1, #0x10
	add r2, r5, #0
	str r7, [r4]
	bl sub_02049D24
	add r2, sp, #0x3c
	ldr r3, _021A3988 ; =0x021A4B00
	str r0, [r4, #8]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021A398C ; =0x021A4B0C
	str r0, [r2]
	add r2, sp, #0x30
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021A3990 ; =0x021A4AF4
	str r0, [r2]
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x10
	str r0, [r2]
	mov r0, #0x10
	lsl r0, r0, #0xb
	str r0, [sp]
	mov r0, #0x10
	lsl r0, r0, #8
	str r0, [sp, #4]
	lsl r1, r1, #0x12
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #0x30
	str r0, [sp, #0x10]
	mov r0, ip
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r2, _021A3994 ; =0xFFFFA000
	ldr r3, _021A3998 ; =0xFFFF8000
	mov r0, #2
	lsl r1, r1, #9
	str r5, [sp, #0x1c]
	mov r7, #2
	bl sub_0204A5C8
	str r0, [r4, #0xc]
	cmp r6, #7
	beq _021A3974
	cmp r6, #0xa
	beq _021A3974
	ldr r0, [r4, #8]
	ldr r1, _021A399C ; =0x021A4B28
	bl sub_02049E00
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_0204A5C0
	add r5, r0, #0
	mov r1, #3
	bl sub_02049974
	add r0, r5, #0
	mov r1, #4
	bl sub_02049974
	add r0, r5, #0
	mov r1, #0
	bl sub_02049994
	add r0, r5, #0
	mov r1, #1
	bl sub_02049994
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02049994
	b _021A3978
_021A3974:
	ldr r0, _021A39A0 ; =0x0000FFFF
	strh r0, [r4, #0x10]
_021A3978:
	mov r0, #1
	str r0, [r4, #0x18]
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3984: .word 0x021A4CF0
_021A3988: .word 0x021A4B00
_021A398C: .word 0x021A4B0C
_021A3990: .word 0x021A4AF4
_021A3994: .word 0xFFFFA000
_021A3998: .word 0xFFFF8000
_021A399C: .word 0x021A4B28
_021A39A0: .word 0x0000FFFF
	thumb_func_end ovy294_21a38a8

	thumb_func_start ovy294_21a39a4
ovy294_21a39a4: ; 0x021A39A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0204A630
	ldrh r1, [r4, #0x10]
	ldr r0, _021A39CC ; =0x0000FFFF
	cmp r1, r0
	beq _021A39BC
	ldr r0, [r4, #8]
	bl sub_02049F4C
_021A39BC:
	ldr r0, [r4, #8]
	bl sub_02049DDC
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	nop
_021A39CC: .word 0x0000FFFF
	thumb_func_end ovy294_21a39a4

	thumb_func_start ovy294_21a39d0
ovy294_21a39d0: ; 0x021A39D0
	push {r3, r4, lr}
	sub sp, #0x3c
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0204A638
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A3A0E
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A3A0E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	blx MTX_Identity33_
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_0204A5C0
	add r1, sp, #0
	bl sub_02049B5C
_021A3A0E:
	add sp, #0x3c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a39d0

	thumb_func_start ovy294_21a3a14
ovy294_21a3a14: ; 0x021A3A14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021A3A28
	cmp r0, #1
	beq _021A3A42
	cmp r0, #2
	beq _021A3AA6
	b _021A3AAA
_021A3A28:
	ldr r0, _021A3AB0 ; =0x04000050
	mov r3, #0
	mov r1, #1
	mov r2, #9
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _021A3AB4 ; =0x00000555
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
_021A3A42:
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #8]
	bl sub_0204A5C0
	mov r2, #1
	mov r1, #3
	lsl r2, r2, #0xc
	add r4, r0, #0
	mov r7, #3
	bl sub_02049A28
	mov r2, #1
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #4
	lsl r2, r2, #0xc
	bl sub_02049A28
	cmp r6, #0
	bne _021A3AAA
	cmp r0, #0
	bne _021A3AAA
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02049994
	add r0, r4, #0
	mov r1, #4
	bl sub_02049994
	add r0, r4, #0
	mov r1, #0
	bl sub_02049974
	add r0, r4, #0
	mov r1, #1
	bl sub_02049974
	add r0, r4, #0
	mov r1, #2
	bl sub_02049974
	add r0, r5, #0
	mov r1, #0x3c
	bl ovy294_21a3b9c
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	b _021A3AAA
_021A3AA6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3AAA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3AB0: .word 0x04000050
_021A3AB4: .word 0x00000555
	thumb_func_end ovy294_21a3a14

	thumb_func_start sub_021A3AB8
sub_021A3AB8: ; 0x021A3AB8
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_021A3AB8

	thumb_func_start sub_021A3ABC
sub_021A3ABC: ; 0x021A3ABC
	mov r2, #0
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	cmp r1, #4
	bhi _021A3AFC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A3AD2: ; jump table
	.short _021A3ADC - _021A3AD2 - 2 ; case 0
	.short _021A3AE6 - _021A3AD2 - 2 ; case 1
	.short _021A3AEC - _021A3AD2 - 2 ; case 2
	.short _021A3AF2 - _021A3AD2 - 2 ; case 3
	.short _021A3AF8 - _021A3AD2 - 2 ; case 4
_021A3ADC:
	mov r1, #0x3c
	str r1, [r0, #0x28]
	mov r1, #1
	str r1, [r0, #0x1c]
	bx lr
_021A3AE6:
	mov r1, #0x46
	str r1, [r0, #0x28]
	bx lr
_021A3AEC:
	mov r1, #0x32
	str r1, [r0, #0x28]
	bx lr
_021A3AF2:
	mov r1, #0x32
	str r1, [r0, #0x28]
	bx lr
_021A3AF8:
	mov r1, #0x46
	str r1, [r0, #0x28]
_021A3AFC:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3ABC

	thumb_func_start ovy294_21a3b00
ovy294_21a3b00: ; 0x021A3B00
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #4
	bhi _021A3B70
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A3B16: ; jump table
	.short _021A3B70 - _021A3B16 - 2 ; case 0
	.short _021A3B20 - _021A3B16 - 2 ; case 1
	.short _021A3B34 - _021A3B16 - 2 ; case 2
	.short _021A3B48 - _021A3B16 - 2 ; case 3
	.short _021A3B5C - _021A3B16 - 2 ; case 4
_021A3B20:
	ldr r1, [r4, #0x28]
	sub r1, r1, #1
	str r1, [r4, #0x28]
	bl ovy294_21a3b9c
	ldr r0, [r4, #0x28]
	cmp r0, #0x32
	bne _021A3B70
	mov r0, #1
	pop {r4, pc}
_021A3B34:
	ldr r1, [r4, #0x28]
	add r1, r1, #1
	str r1, [r4, #0x28]
	bl ovy294_21a3b9c
	ldr r0, [r4, #0x28]
	cmp r0, #0x46
	bne _021A3B70
	mov r0, #1
	pop {r4, pc}
_021A3B48:
	ldr r1, [r4, #0x28]
	sub r1, r1, #1
	str r1, [r4, #0x28]
	bl ovy294_21a3b9c
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A3B70
	mov r0, #1
	pop {r4, pc}
_021A3B5C:
	ldr r1, [r4, #0x28]
	add r1, r1, #1
	str r1, [r4, #0x28]
	bl ovy294_21a3b9c
	ldr r0, [r4, #0x28]
	cmp r0, #0x78
	bne _021A3B70
	mov r0, #1
	pop {r4, pc}
_021A3B70:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy294_21a3b00

	thumb_func_start ovy294_21a3b74
ovy294_21a3b74: ; 0x021A3B74
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #3
	ldr r1, [r4, #0x28]
	bne _021A3B84
	add r1, r1, #1
	b _021A3B86
_021A3B84:
	sub r1, r1, #1
_021A3B86:
	str r1, [r4, #0x28]
	bl ovy294_21a3b9c
	ldr r0, [r4, #0x28]
	cmp r0, #0x3c
	bne _021A3B96
	mov r0, #1
	pop {r4, pc}
_021A3B96:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy294_21a3b74

	thumb_func_start ovy294_21a3b9c
ovy294_21a3b9c: ; 0x021A3B9C
	push {r3, r4, r5, lr}
	add r2, r0, #0
	add r4, r1, #0
	ldrh r1, [r2, #0x10]
	ldr r0, [r2, #8]
	bl sub_0204A5C0
	add r5, r0, #0
	cmp r4, #0
	beq _021A3BC2
	lsl r0, r4, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A3BD0
_021A3BC2:
	lsl r0, r4, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A3BD0:
	blx sub_0208DA4C
	add r4, sp, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020499E4
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_020499E4
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020499E4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy294_21a3b9c

	thumb_func_start ovy294_21a3bf8
ovy294_21a3bf8: ; 0x021A3BF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0204F918
	ldr r7, _021A3C88 ; =0x0000480C
	mov r0, #0x56
	str r0, [sp]
	ldr r3, _021A3C8C ; =0x021A4D20
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl GFL_HeapAllocate
	sub r7, #0xc
	add r4, r0, #0
	add r0, #0xc
	add r1, r7, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_0204F968
	str r0, [r4, #8]
	str r6, [r4, #4]
	strh r5, [r4]
	mov r5, #2
	lsl r1, r5, #0xb
	lsl r0, r5, #0xd
	str r0, [sp, #0x10]
	ldr r0, _021A3C90 ; =0xFFFFC000
	str r5, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, _021A3C94 ; =0xFFFFD000
	str r1, [sp, #0x20]
	str r0, [sp, #0x18]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	lsl r0, r5, #0x15
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	bl sub_02050178
	ldr r0, _021A3C98 ; =0x021A4CFC
	ldr r3, _021A3C9C ; =0x021A4D08
	str r0, [sp]
	ldr r0, _021A3CA0 ; =0x021A4D14
	add r1, sp, #0xc
	str r0, [sp, #4]
	ldrh r0, [r4]
	lsl r2, r5, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	bl sub_020500CC
	ldrh r2, [r4]
	mov r0, #6
	mov r1, #6
	bl sub_0204FDF8
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3C88: .word 0x0000480C
_021A3C8C: .word 0x021A4D20
_021A3C90: .word 0xFFFFC000
_021A3C94: .word 0xFFFFD000
_021A3C98: .word 0x021A4CFC
_021A3C9C: .word 0x021A4D08
_021A3CA0: .word 0x021A4D14
	thumb_func_end ovy294_21a3bf8

	thumb_func_start ovy294_21a3ca4
ovy294_21a3ca4: ; 0x021A3CA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204FB4C
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy294_21a3ca4

	thumb_func_start sub_021A3CB4
sub_021A3CB4: ; 0x021A3CB4
	ldr r3, _021A3CB8 ; =sub_0204F954
	bx r3
	.align 2, 0
_021A3CB8: .word sub_0204F954
	thumb_func_end sub_021A3CB4

	thumb_func_start ovy294_21a3cbc
ovy294_21a3cbc: ; 0x021A3CBC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, sp, #0
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #8]
	mov r1, #0
	add r2, r4, #0
	bl sub_0205006C
	ldr r0, [r5, #8]
	mov r1, #1
	add r2, r4, #0
	bl sub_0205006C
	ldr r0, [r5, #8]
	mov r1, #2
	add r2, r4, #0
	bl sub_0205006C
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy294_21a3cbc
_021A3CF4:
	.byte 0x07, 0x00, 0x00, 0x00, 0x21, 0x1B, 0x1A, 0x02, 0x11, 0x1C, 0x1A, 0x02
	.byte 0xC5, 0x1B, 0x1A, 0x02, 0x66, 0x05, 0x00, 0x00, 0x67, 0x05, 0x00, 0x00, 0x55, 0x05, 0x00, 0x00
	.byte 0x6B, 0x05, 0x00, 0x00, 0xF4, 0x07, 0x00, 0x00, 0xF0, 0x03, 0x00, 0x00, 0xF1, 0x03, 0x00, 0x00
	.byte 0xC8, 0x3D, 0x1A, 0x02, 0x04, 0x00, 0x00, 0x00, 0xA0, 0x3D, 0x1A, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB0, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x01, 0x00, 0xFF, 0x0F, 0x01, 0xF0
	.byte 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x03, 0x00
	.byte 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x00, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0
	.byte 0xFF, 0x7F, 0x01, 0x00, 0xFF, 0x0F, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0
	.byte 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x03, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA8, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0xFC, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x5A, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x02, 0x00, 0x00
	.byte 0x00, 0xB0, 0xFF, 0xFF, 0x00, 0xF8, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0xF1, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x5A, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x5A, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x03, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x66, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x6B, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x67, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x9A, 0xF9, 0xFF, 0xFF, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x3D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x38, 0x4B, 0x1A, 0x02, 0x05, 0x00, 0x00, 0x00, 0x4C, 0x4B, 0x1A, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x18, 0x4B, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00
	.byte 0xA1, 0x2E, 0x1A, 0x02, 0xB9, 0x2E, 0x1A, 0x02, 0xD1, 0x2E, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xF1, 0x21, 0x1A, 0x02, 0x01, 0x22, 0x1A, 0x02, 0x61, 0x22, 0x1A, 0x02, 0xD5, 0x22, 0x1A, 0x02
	.byte 0x21, 0x23, 0x1A, 0x02, 0xED, 0x23, 0x1A, 0x02, 0xF9, 0x23, 0x1A, 0x02, 0x0D, 0x24, 0x1A, 0x02
	.byte 0x45, 0x24, 0x1A, 0x02, 0x59, 0x24, 0x1A, 0x02, 0x7D, 0x24, 0x1A, 0x02, 0x89, 0x24, 0x1A, 0x02
	.byte 0xB1, 0x24, 0x1A, 0x02, 0xC1, 0x24, 0x1A, 0x02, 0x9D, 0x24, 0x1A, 0x02, 0xD1, 0x24, 0x1A, 0x02
	.byte 0x05, 0x25, 0x1A, 0x02, 0x15, 0x25, 0x1A, 0x02, 0x31, 0x25, 0x1A, 0x02, 0x45, 0x25, 0x1A, 0x02
	.byte 0x5D, 0x25, 0x1A, 0x02, 0x91, 0x25, 0x1A, 0x02, 0x9D, 0x25, 0x1A, 0x02, 0xE5, 0x25, 0x1A, 0x02
	.byte 0xF9, 0x25, 0x1A, 0x02, 0x11, 0x26, 0x1A, 0x02, 0x21, 0x26, 0x1A, 0x02, 0x35, 0x26, 0x1A, 0x02
	.byte 0x4D, 0x26, 0x1A, 0x02, 0xF1, 0x26, 0x1A, 0x02, 0x45, 0x28, 0x1A, 0x02, 0x61, 0x28, 0x1A, 0x02
	.byte 0x7D, 0x28, 0x1A, 0x02, 0x0D, 0x29, 0x1A, 0x02, 0x39, 0x29, 0x1A, 0x02, 0x49, 0x29, 0x1A, 0x02
	.byte 0x59, 0x29, 0x1A, 0x02, 0x6D, 0x29, 0x1A, 0x02, 0x45, 0x2A, 0x1A, 0x02, 0x79, 0x27, 0x1A, 0x02
	.byte 0x89, 0x27, 0x1A, 0x02, 0xBD, 0x27, 0x1A, 0x02, 0xCD, 0x27, 0x1A, 0x02, 0xDD, 0x27, 0x1A, 0x02
	.byte 0x59, 0x2A, 0x1A, 0x02, 0xD5, 0x2B, 0x1A, 0x02, 0xC1, 0x2C, 0x1A, 0x02, 0x5D, 0x2D, 0x1A, 0x02
	.byte 0x8D, 0x2D, 0x1A, 0x02, 0x11, 0x2E, 0x1A, 0x02, 0xED, 0x21, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x63, 0x6D, 0x64, 0x2E, 0x63, 0x00, 0xE4, 0x3F, 0x1A, 0x02
	.byte 0xCC, 0x3F, 0x1A, 0x02, 0x6C, 0x45, 0x1A, 0x02, 0x14, 0x49, 0x1A, 0x02, 0xC4, 0x41, 0x1A, 0x02
	.byte 0x64, 0x44, 0x1A, 0x02, 0x4C, 0x41, 0x1A, 0x02, 0x8C, 0x46, 0x1A, 0x02, 0x2C, 0x40, 0x1A, 0x02
	.byte 0x6C, 0x42, 0x1A, 0x02, 0xC4, 0x47, 0x1A, 0x02, 0xEC, 0x40, 0x1A, 0x02, 0x5C, 0x43, 0x1A, 0x02
	.byte 0x8C, 0x40, 0x1A, 0x02, 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x63, 0x00
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x6D, 0x63, 0x73, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x67, 0x33, 0x64, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x5F, 0x70, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6C, 0x65, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A3CF4
