    .include "macros/function.inc"
	.include "overlay327.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy327_21b5d80
ovy327_21b5d80: ; 0x021B5D80
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0xa2
	lsl r2, r2, #0x11
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0xa2
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0xe1
	mov r1, #0xe
	str r0, [sp]
	ldr r3, _021B5DD8 ; =0x021B7320
	mov r0, #0xa2
	lsl r1, r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #0x2c]
	ldr r1, _021B5DDC ; =0x021B70E0
	add r0, r4, #0
	add r2, r4, #0
	mov r3, #0xa2
	str r5, [r4, #0x28]
	bl ovy327_21b5e34
	bl sub_02005ED4
	add r0, r4, #0
	mov r1, #0
	bl sub_021B5F38
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B5DD8: .word 0x021B7320
_021B5DDC: .word 0x021B70E0
	thumb_func_end ovy327_21b5d80

	thumb_func_start ovy327_21b5de0
ovy327_21b5de0: ; 0x021B5DE0
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy327_21b5f08
	ldr r0, [r4, #0x2c]
	bl GFL_HeapFree
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0xa2
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy327_21b5de0

	thumb_func_start ovy327_21b5e04
ovy327_21b5e04: ; 0x021B5E04
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021B5E18
	cmp r0, #1
	beq _021B5E1E
	cmp r0, #2
	beq _021B5E2C
	b _021B5E30
_021B5E18:
	add r0, r0, #1
	str r0, [r4]
	b _021B5E30
_021B5E1E:
	add r0, r3, #0
	bl ovy327_21b5e58
	cmp r0, #0
	beq _021B5E30
	ldr r0, [r4]
	b _021B5E18
_021B5E2C:
	mov r0, #1
	pop {r4, pc}
_021B5E30:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy327_21b5e04

	thumb_func_start ovy327_21b5e34
ovy327_21b5e34: ; 0x021B5E34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A970
	str r0, [r5]
	str r7, [r5, #0x14]
	str r6, [r5, #0x18]
	strh r4, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy327_21b5e34

	thumb_func_start ovy327_21b5e58
ovy327_21b5e58: ; 0x021B5E58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _021B5F02
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B5E6E: ; jump table
	.short _021B5E78 - _021B5E6E - 2 ; case 0
	.short _021B5E86 - _021B5E6E - 2 ; case 1
	.short _021B5EBA - _021B5E6E - 2 ; case 2
	.short _021B5ED6 - _021B5E6E - 2 ; case 3
	.short _021B5EFE - _021B5E6E - 2 ; case 4
_021B5E78:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #1
_021B5E82:
	str r0, [r4, #4]
	b _021B5F02
_021B5E86:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x18]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _021B5E9E
	ldrh r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x1c]
	blx r3
	b _021B5EA0
_021B5E9E:
	mov r0, #0
_021B5EA0:
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x18]
	lsl r3, r0, #4
	ldr r1, [r2, r3]
	add r2, r2, r3
	ldr r0, [r4]
	ldr r2, [r2, #4]
	ldr r3, [r4, #8]
	bl sub_0203A988
	mov r0, #2
	b _021B5E82
_021B5EBA:
	ldr r0, [r4]
	bl sub_0203A978
	add r5, r0, #0
	beq _021B5EC8
	cmp r5, #2
	bne _021B5ECE
_021B5EC8:
	mov r0, #0
	bl sub_02011CFC
_021B5ECE:
	cmp r5, #0
	bne _021B5F02
	mov r0, #3
	b _021B5E82
_021B5ED6:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x18]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _021B5EEE
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	blx r2
	mov r0, #0
	str r0, [r4, #8]
_021B5EEE:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	beq _021B5EFA
	mov r0, #0
	b _021B5E82
_021B5EFA:
	mov r0, #4
	b _021B5E82
_021B5EFE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B5F02:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy327_21b5e58

	thumb_func_start ovy327_21b5f08
ovy327_21b5f08: ; 0x021B5F08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B5F1C
	ldr r0, _021B5F30 ; =0x021B7334
	ldr r2, _021B5F34 ; =0x021B7338
	mov r1, #0
	bl sub_0203CB80
_021B5F1C:
	ldr r0, [r4]
	bl sub_0203A980
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	pop {r4, pc}
	nop
_021B5F30: .word 0x021B7334
_021B5F34: .word 0x021B7338
	thumb_func_end ovy327_21b5f08

	thumb_func_start sub_021B5F38
sub_021B5F38: ; 0x021B5F38
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_021B5F38

	thumb_func_start ovy327_21b5f3c
ovy327_21b5f3c: ; 0x021B5F3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021B5F84 ; =0x000001EE
	add r6, r2, #0
	str r1, [sp]
	ldr r3, _021B5F88 ; =0x021B7320
	mov r1, #0x28
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	mov r5, #0
	ldr r0, [r0, #4]
	str r0, [r4]
	str r5, [r4, #4]
	str r7, [r4, #8]
	str r5, [r4, #0x10]
	mov r0, #0x36
	str r7, [r4, #0x18]
	str r0, [r4, #0xc]
	cmp r6, #2
	bne _021B5F70
	str r7, [r4, #0x14]
	b _021B5F80
_021B5F70:
	ldr r0, _021B5F8C ; =0x00000481
	ldr r1, _021B5F90 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #6
	bl sub_02005E68
	str r5, [r4, #0x14]
_021B5F80:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5F84: .word 0x000001EE
_021B5F88: .word 0x021B7320
_021B5F8C: .word 0x00000481
_021B5F90: .word 0x0000FFFF
	thumb_func_end ovy327_21b5f3c

	thumb_func_start ovy327_21b5f94
ovy327_21b5f94: ; 0x021B5F94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B5FA4
	cmp r0, #1
	beq _021B5FAE
	b _021B5FB2
_021B5FA4:
	add r0, r1, #0
	mov r1, #2
	bl sub_021B5F38
	b _021B5FB2
_021B5FAE:
	bl sub_02005F0C
_021B5FB2:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b5f94

	thumb_func_start ovy327_21b5fbc
ovy327_21b5fbc: ; 0x021B5FBC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _021B5FE4 ; =0x0000022F
	ldr r3, _021B5FE8 ; =0x021B7320
	str r1, [sp]
	mov r1, #0x1c
	mov r2, #1
	mov r4, #1
	bl GFL_HeapAllocate
	ldr r1, [r5, #0x28]
	ldr r1, [r1, #4]
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r1, [r0, #0x10]
	pop {r3, r4, r5, pc}
	nop
_021B5FE4: .word 0x0000022F
_021B5FE8: .word 0x021B7320
	thumb_func_end ovy327_21b5fbc

	thumb_func_start ovy327_21b5fec
ovy327_21b5fec: ; 0x021B5FEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021B5FFA
	cmp r0, #1
	b _021B6002
_021B5FFA:
	add r0, r1, #0
	mov r1, #3
	bl sub_021B5F38
_021B6002:
	mov r0, #6
	bl sub_02005EA0
	bl sub_02005F0C
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy327_21b5fec

	thumb_func_start ovy327_21b6014
ovy327_21b6014: ; 0x021B6014
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, _021B6038 ; =0x00000266
	ldr r3, _021B603C ; =0x021B7320
	str r1, [sp]
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, [r4, #0x2c]
	str r1, [r0, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021B6038: .word 0x00000266
_021B603C: .word 0x021B7320
	thumb_func_end ovy327_21b6014

	thumb_func_start ovy327_21b6040
ovy327_21b6040: ; 0x021B6040
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B6052
	cmp r0, #1
	beq _021B6060
	cmp r0, #2
	beq _021B6056
_021B6052:
	mov r0, #0
	b _021B6058
_021B6056:
	mov r0, #1
_021B6058:
	str r0, [r1, #0x30]
	add r0, r1, #0
	mov r1, #1
	b _021B6064
_021B6060:
	add r0, r1, #0
	mov r1, #0
_021B6064:
	bl sub_021B5F38
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy327_21b6040

	thumb_func_start ovy327_21b6070
ovy327_21b6070: ; 0x021B6070
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _021B6094 ; =0x000002A1
	ldr r3, _021B6098 ; =0x021B7320
	str r1, [sp]
	mov r1, #0x14
	mov r2, #1
	mov r4, #1
	bl GFL_HeapAllocate
	ldr r1, [r5, #0x28]
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r5, #0x2c]
	str r1, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, pc}
	nop
_021B6094: .word 0x000002A1
_021B6098: .word 0x021B7320
	thumb_func_end ovy327_21b6070
_021B609C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy327_21b60a4
ovy327_21b60a4: ; 0x021B60A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021B6128 ; =0x000001DD
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021B612C ; =0x021B7354
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021B6130 ; =0x04000050
	ldr r0, _021B6134 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021B6138 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021B613C ; =0x021B716C
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
	bl ovy327_21b61c0
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy327_21b6264
	ldr r0, _021B6140 ; =ovy327_21b61ac
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6128: .word 0x000001DD
_021B612C: .word 0x021B7354
_021B6130: .word 0x04000050
_021B6134: .word 0x04001050
_021B6138: .word 0xFFFF1FFF
_021B613C: .word 0x021B716C
_021B6140: .word ovy327_21b61ac
	thumb_func_end ovy327_21b60a4

	thumb_func_start ovy327_21b6144
ovy327_21b6144: ; 0x021B6144
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy327_21b62c0
	add r0, r4, #0
	bl ovy327_21b6220
	bl sub_020232D8
	ldr r5, _021B618C ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021B6190 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021B6194 ; =0xFFFF1FFF
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
_021B618C: .word 0x04000050
_021B6190: .word 0x04001050
_021B6194: .word 0xFFFF1FFF
	thumb_func_end ovy327_21b6144

	thumb_func_start ovy327_21b6198
ovy327_21b6198: ; 0x021B6198
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021B62E0
	add r0, r4, #0
	bl sub_021B6258
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b6198

	thumb_func_start ovy327_21b61ac
ovy327_21b61ac: ; 0x021B61AC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021B625C
	add r0, r4, #4
	bl sub_021B62E8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b61ac

	thumb_func_start ovy327_21b61c0
ovy327_21b61c0: ; 0x021B61C0
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
	ldr r0, _021B6218 ; =0x021B7120
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021B621C ; =0x021B719C
_021B61E2:
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
	blo _021B61E2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6218: .word 0x021B7120
_021B621C: .word 0x021B719C
	thumb_func_end ovy327_21b61c0

	thumb_func_start ovy327_21b6220
ovy327_21b6220: ; 0x021B6220
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021B6254 ; =0x021B719C
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021B622A:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021B622A
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6254: .word 0x021B719C
	thumb_func_end ovy327_21b6220

	thumb_func_start sub_021B6258
sub_021B6258: ; 0x021B6258
	bx lr
	.align 2, 0
	thumb_func_end sub_021B6258

	thumb_func_start sub_021B625C
sub_021B625C: ; 0x021B625C
	ldr r3, _021B6260 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021B6260: .word sub_02045A5C
	thumb_func_end sub_021B625C

	thumb_func_start ovy327_21b6264
ovy327_21b6264: ; 0x021B6264
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021B62B8 ; =0x021B7130
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x20
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	ldr r0, _021B62BC ; =0x021B714C
	mov r1, #2
	add r2, r4, #0
	bl sub_0204BE9C
	add r1, r0, #0
	ldr r0, [r5]
	str r1, [r5, #4]
	bl sub_0204C018
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204BF14
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B62B8: .word 0x021B7130
_021B62BC: .word 0x021B714C
	thumb_func_end ovy327_21b6264

	thumb_func_start ovy327_21b62c0
ovy327_21b62c0: ; 0x021B62C0
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
	thumb_func_end ovy327_21b62c0

	thumb_func_start sub_021B62E0
sub_021B62E0: ; 0x021B62E0
	ldr r3, _021B62E4 ; =sub_0204B794
	bx r3
	.align 2, 0
_021B62E4: .word sub_0204B794
	thumb_func_end sub_021B62E0

	thumb_func_start sub_021B62E8
sub_021B62E8: ; 0x021B62E8
	ldr r3, _021B62EC ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021B62EC: .word sub_0204B7C8
	thumb_func_end sub_021B62E8

	thumb_func_start ovy327_21b62f0
ovy327_21b62f0: ; 0x021B62F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r5, [sp, #0x34]
	add r6, r0, #0
	mov r0, #0x5e
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021B63A4 ; =0x021B7370
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x30]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02021998
	str r0, [r4, #0x28]
	mov r0, #4
	str r0, [r4, #0x2c]
	mov r0, #3
	lsl r0, r0, #8
	add r1, r5, #0
	strh r5, [r4, #0x1e]
	bl GFL_StrBufCreate
	add r1, sp, #0x28
	str r0, [r4, #0x18]
	ldrh r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #4]
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r0, r6, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x14]
	add r1, r4, #0
	str r0, [r4, #0x20]
	add r1, #0x24
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r2, [r4, #0x1c]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x14]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B63A4: .word 0x021B7370
	thumb_func_end ovy327_21b62f0

	thumb_func_start ovy327_21b63a8
ovy327_21b63a8: ; 0x021B63A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B63BA
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021B63BA:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021B63C8
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x10]
_021B63C8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B63D2
	bl sub_0202E818
_021B63D2:
	ldr r0, [r4, #0xc]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x14]
	bl sub_02048210
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x28]
	bl sub_02021A18
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b63a8

	thumb_func_start ovy327_21b63fc
ovy327_21b63fc: ; 0x021B63FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02021A3C
	ldr r0, [r4, #0x2c]
	cmp r0, #4
	bhi _021B64B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B6418: ; jump table
	.short _021B6450 - _021B6418 - 2 ; case 0
	.short _021B648E - _021B6418 - 2 ; case 1
	.short _021B6422 - _021B6418 - 2 ; case 2
	.short _021B648E - _021B6418 - 2 ; case 3
	.short _021B64B2 - _021B6418 - 2 ; case 4
_021B6422:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r5, [r4, #0x28]
	cmp r0, #0
	beq _021B64B2
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B64B2
	ldr r0, [r4, #0x20]
	bl BmpWin_FlushChar
	add r0, r4, #0
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
	b _021B64B2
_021B6450:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r5, [r4, #0x28]
	cmp r0, #0
	beq _021B647C
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B647C
	ldr r0, [r4, #0x20]
	bl BmpWin_FlushChar
	add r0, r4, #0
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
_021B647C:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B648A
	mov r0, #1
	b _021B648C
_021B648A:
	mov r0, #0
_021B648C:
	b _021B64B0
_021B648E:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021B64B2
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B64A0
	ldr r2, [r4, #0x14]
	bl sub_0202E8D8
_021B64A0:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x38
	bl sub_0202E68C
	cmp r0, #0
	beq _021B64B2
	mov r0, #1
_021B64B0:
	strh r0, [r4, #0x30]
_021B64B2:
	ldr r0, [r4, #0xc]
	bl sub_0203A7F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy327_21b63fc

	thumb_func_start ovy327_21b64bc
ovy327_21b64bc: ; 0x021B64BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r5, #0x18]
	add r4, r3, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r4, #0
	bl ovy327_21b64dc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy327_21b64bc

	thumb_func_start sub_021B64D8
sub_021B64D8: ; 0x021B64D8
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021B64D8

	thumb_func_start ovy327_21b64dc
ovy327_21b64dc: ; 0x021B64DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r5, r1, #0
	bl sub_02021C44
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r2, [r4, #0x1c]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B650C
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021B650C:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B651A
	bl sub_0202E818
	mov r0, #0
	str r0, [r4, #0x34]
_021B651A:
	add r0, r4, #0
	bl ovy327_21b6668
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	ldr r3, [r4, #0x18]
	add r1, #0x40
	bl ovy327_21b66a8
	cmp r5, #3
	bls _021B6542
	b _021B6650
_021B6542:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B654E: ; jump table
	.short _021B65A8 - _021B654E - 2 ; case 0
	.short _021B65E6 - _021B654E - 2 ; case 1
	.short _021B6556 - _021B654E - 2 ; case 2
	.short _021B65AA - _021B654E - 2 ; case 3
_021B6556:
	bl sub_02005718
	ldrh r1, [r4, #0x1e]
	mov r2, #0x1f
	str r1, [sp]
	ldrh r3, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	and r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl sub_02035604
	str r0, [r4, #0x10]
_021B6572:
	ldr r0, [r4, #0x20]
	ldr r5, [r4, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r5, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x2c]
	b _021B6650
_021B65A8:
	b _021B6572
_021B65AA:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B65BA
	ldr r0, _021B6658 ; =0x021B7388
	ldr r2, _021B665C ; =0x021B738C
	mov r1, #0
	bl sub_0203CB80
_021B65BA:
	add r0, r4, #0
	ldr r1, _021B6660 ; =0x00000402
	add r0, #0x38
	bl sub_0202E678
	ldrh r0, [r4, #0x1c]
	mov r7, #0x1f
	ldrh r3, [r4, #0x1e]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0
	mov r5, #1
	mov r6, #0
	bl sub_0202E7A4
	str r0, [r4, #0x34]
	mov r0, #1
	bl sub_02017C50
	b _021B661E
_021B65E6:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B65F6
	ldr r0, _021B6658 ; =0x021B7388
	ldr r2, _021B665C ; =0x021B738C
	mov r1, #0
	bl sub_0203CB80
_021B65F6:
	add r0, r4, #0
	add r0, #0x38
	mov r1, #2
	bl sub_0202E678
	ldrh r0, [r4, #0x1c]
	mov r7, #0x1f
	ldrh r3, [r4, #0x1e]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0
	mov r5, #1
	mov r6, #0
	bl sub_0202E7A4
	str r0, [r4, #0x34]
	bl sub_02017BCC
_021B661E:
	ldr r1, [r4, #4]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x1c]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02022268
	str r0, [r4, #8]
	str r5, [r4, #0x2c]
_021B6650:
	mov r0, #0
	strh r0, [r4, #0x30]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6658: .word 0x021B7388
_021B665C: .word 0x021B738C
_021B6660: .word 0x00000402
	thumb_func_end ovy327_21b64dc

	thumb_func_start sub_021B6664
sub_021B6664: ; 0x021B6664
	ldrh r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_021B6664

	thumb_func_start ovy327_21b6668
ovy327_21b6668: ; 0x021B6668
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	strh r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021B668E
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	ldr r0, [r4, #0x14]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021B668E:
	pop {r4, pc}
	thumb_func_end ovy327_21b6668

	thumb_func_start ovy327_21b6690
ovy327_21b6690: ; 0x021B6690
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r3, r2, #0
	ldr r0, [r4, #0x14]
	mov r1, #2
	add r2, r5, #0
	bl sub_02024E80
	mov r0, #1
	strh r0, [r4, #0x32]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy327_21b6690

	thumb_func_start ovy327_21b66a8
ovy327_21b66a8: ; 0x021B66A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r7, [sp, #0x20]
	ldr r4, [sp, #0x24]
	cmp r0, #3
	bhi _021B675E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B66C6: ; jump table
	.short _021B66CE - _021B66C6 - 2 ; case 0
	.short _021B66DA - _021B66C6 - 2 ; case 1
	.short _021B6718 - _021B66C6 - 2 ; case 2
	.short _021B673A - _021B66C6 - 2 ; case 3
_021B66CE:
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B66DA:
	add r0, r2, #0
	bl sub_02046EF8
	lsr r6, r0, #1
	ldr r0, [sp]
	bl sub_02046EFC
	lsr r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	add sp, #0xc
	sub r1, r0, r1
	ldr r0, [r5]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B6718:
	add r0, r2, #0
	bl sub_02046EFC
	lsr r6, r0, #1
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r6, r0
	ldr r0, [r5]
	add sp, #0xc
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B673A:
	add r0, r2, #0
	bl sub_02046EF8
	add r6, r0, #0
	add r1, r7, #0
	ldr r0, [sp, #4]
	mov r2, #0
	mov r7, #0
	bl GFL_FontGetBlockWidth
	sub r1, r6, r0
	bpl _021B6754
	add r1, r7, #0
_021B6754:
	ldr r0, [r5]
	add r0, r1, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
_021B675E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy327_21b66a8

	thumb_func_start ovy327_21b6764
ovy327_21b6764: ; 0x021B6764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r1, r5, #1
	mov r0, #0xc
	add r6, r1, #0
	mul r6, r0
	ldr r0, _021B67A4 ; =0x000004D4
	str r2, [sp, #4]
	str r0, [sp]
	add r0, r3, #0
	ldr r3, _021B67A8 ; =0x021B7370
	add r1, r6, #0
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r7, [r4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	str r5, [r4, #8]
	bl ovy327_21b67e8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B67A4: .word 0x000004D4
_021B67A8: .word 0x021B7370
	thumb_func_end ovy327_21b6764

	thumb_func_start sub_021B67AC
sub_021B67AC: ; 0x021B67AC
	ldr r3, _021B67B0 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021B67B0: .word GFL_HeapFree
	thumb_func_end sub_021B67AC

	thumb_func_start ovy327_21b67b4
ovy327_21b67b4: ; 0x021B67B4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	bl sub_021B68A8
	add r1, r0, #0
	ldr r3, [r1]
	cmp r3, #0
	beq _021B67CE
	ldr r2, [r4]
	add r0, r4, #0
	add r1, r1, #4
	blx r3
_021B67CE:
	pop {r4, pc}
	thumb_func_end ovy327_21b67b4

	thumb_func_start ovy327_21b67d0
ovy327_21b67d0: ; 0x021B67D0
	push {r4, lr}
	mov r1, #0
	mov r4, #0
	bl sub_021B68A8
	ldr r0, [r0]
	cmp r0, #0
	bne _021B67E2
	mov r4, #1
_021B67E2:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b67d0

	thumb_func_start ovy327_21b67e8
ovy327_21b67e8: ; 0x021B67E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #4]
	bl sub_021B68A8
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy327_21b67e8

	thumb_func_start sub_021B6800
sub_021B6800: ; 0x021B6800
	ldr r2, [r0, #4]
	ldr r3, _021B680C ; =ovy327_21b67e8
	add r2, r2, #1
	str r2, [r0, #4]
	bx r3
	nop
_021B680C: .word ovy327_21b67e8
	thumb_func_end sub_021B6800

	thumb_func_start ovy327_21b6810
ovy327_21b6810: ; 0x021B6810
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ovy327_21b67e8
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021B6824
	sub r0, r0, #1
	str r0, [r4, #4]
_021B6824:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b6810

	thumb_func_start ovy327_21b6828
ovy327_21b6828: ; 0x021B6828
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021B683C
	cmp r1, #1
	beq _021B6850
	cmp r1, #2
	beq _021B6860
	pop {r4, pc}
_021B683C:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6850:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B6864
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6860:
	bl ovy327_21b6810
_021B6864:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b6828

	thumb_func_start ovy327_21b6868
ovy327_21b6868: ; 0x021B6868
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021B687C
	cmp r1, #1
	beq _021B6890
	cmp r1, #2
	beq _021B68A0
	pop {r4, pc}
_021B687C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6890:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B68A4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B68A0:
	bl ovy327_21b6810
_021B68A4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy327_21b6868

	thumb_func_start sub_021B68A8
sub_021B68A8: ; 0x021B68A8
	mov r2, #0xc
	add r0, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021B68A8

	thumb_func_start ovy327_21b68b4
ovy327_21b68b4: ; 0x021B68B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, _021B69DC ; =0x000000C4
	add r6, r2, #0
	bl sub_0203CE0C
	ldr r0, _021B69E0 ; =0x000000BD
	bl sub_0203CE0C
	mov r2, #5
	mov r0, #1
	mov r1, #0xa3
	lsl r2, r2, #0x10
	mov r7, #0xa3
	bl GFL_HeapCreateChild
	ldr r5, _021B69E4 ; =0x0000099C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa3
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
	str r6, [r4]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r5, #0
	sub r1, #0x14
	str r0, [r4, r1]
	mov r0, #0xa3
	bl sub_02021998
	add r1, r5, #0
	sub r1, #0x10
	str r0, [r4, r1]
	mov r2, #0xa3
	mov r0, #0
	mov r1, #2
	add r2, #0xf1
	mov r3, #0xa3
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	sub r1, #0xc
	str r0, [r4, r1]
	mov r0, #0xa3
	bl GFL_WordSetSystemCreateDefault
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #0xa3
	bl ovy327_21b60a4
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0xa3
	bl ovy327_21b6d38
	add r6, sp, #0x10
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0x10
	strh r7, [r0, #0xc]
	add r0, r6, #0
	bl sub_021B5420
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #0xa3
	bl sub_02042BA8
	mov r0, #4
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r7, [sp, #0xc]
	bl ovy327_21b62f0
	sub r1, r5, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r1, _021B69E8 ; =0x0000044F
	bl sub_021B64D8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	bl sub_021B7060
	add r1, r0, #0
	sub r0, r5, #4
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	mov r2, #0xd
	bl ovy327_21b6690
	sub r0, r5, #4
	sub r5, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r5]
	mov r2, #0xd
	mov r3, #2
	bl ovy327_21b64bc
	ldr r2, _021B69EC ; =ovy327_21b6ad4
	mov r0, #5
	add r1, r4, #0
	mov r3, #0xa3
	bl ovy327_21b6764
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B69DC: .word 0x000000C4
_021B69E0: .word 0x000000BD
_021B69E4: .word 0x0000099C
_021B69E8: .word 0x0000044F
_021B69EC: .word ovy327_21b6ad4
	thumb_func_end ovy327_21b68b4

	thumb_func_start ovy327_21b69f0
ovy327_21b69f0: ; 0x021B69F0
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_021B67AC
	ldr r4, _021B6A58 ; =0x00000998
	ldr r0, [r5, r4]
	bl ovy327_21b63a8
	ldr r0, [r5, #0xc]
	bl sub_021B5458
	add r0, r5, #0
	add r0, #0x10
	bl sub_021B6D54
	ldr r0, [r5, #8]
	bl ovy327_21b6144
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02021A18
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl sub_02022DA8
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0xa3
	bl sub_0203A1D0
	ldr r0, _021B6A5C ; =0x000000BD
	bl sub_0203CDC8
	ldr r0, _021B6A60 ; =0x000000C4
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B6A58: .word 0x00000998
_021B6A5C: .word 0x000000BD
_021B6A60: .word 0x000000C4
	thumb_func_end ovy327_21b69f0

	thumb_func_start ovy327_21b6a64
ovy327_21b6a64: ; 0x021B6A64
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r0, [r5, #0xc]
	bl sub_021B554C
	cmp r0, #0
	beq _021B6A8E
	cmp r0, #1
	beq _021B6A7C
	cmp r0, #2
	beq _021B6A86
	b _021B6A8E
_021B6A7C:
	ldr r0, [r5, #0xc]
	bl sub_021B55B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B6A86:
	ldr r1, [r5]
	mov r0, #1
	str r0, [r1, #8]
	pop {r3, r4, r5, pc}
_021B6A8E:
	ldr r0, [r5, #0xc]
	bl sub_021B5460
	ldr r0, [r5, #4]
	bl ovy327_21b67b4
	ldr r0, [r5, #8]
	bl ovy327_21b6198
	add r0, r5, #0
	add r0, #0x10
	bl sub_021B6D5C
	ldr r4, _021B6AD0 ; =0x0000098C
	ldr r0, [r5, r4]
	bl sub_02021A3C
	add r4, #0xc
	ldr r0, [r5, r4]
	bl ovy327_21b63fc
	ldr r0, [r5, #0xc]
	bl sub_021B546C
	ldr r0, [r5, #4]
	bl ovy327_21b67d0
	cmp r0, #0
	beq _021B6ACC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6ACC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6AD0: .word 0x0000098C
	thumb_func_end ovy327_21b6a64

	thumb_func_start ovy327_21b6ad4
ovy327_21b6ad4: ; 0x021B6AD4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _021B6B20
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B6AEA: ; jump table
	.short _021B6AF2 - _021B6AEA - 2 ; case 0
	.short _021B6B00 - _021B6AEA - 2 ; case 1
	.short _021B6B0E - _021B6AEA - 2 ; case 2
	.short _021B6B1C - _021B6AEA - 2 ; case 3
_021B6AF2:
	ldr r1, _021B6B24 ; =ovy327_21b6828
	bl sub_021B6800
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6B00:
	ldr r1, _021B6B28 ; =ovy327_21b6b30
	bl sub_021B6800
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6B0E:
	ldr r1, _021B6B2C ; =ovy327_21b6868
	bl sub_021B6800
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B6B1C:
	bl ovy327_21b6810
_021B6B20:
	pop {r4, pc}
	nop
_021B6B24: .word ovy327_21b6828
_021B6B28: .word ovy327_21b6b30
_021B6B2C: .word ovy327_21b6868
	thumb_func_end ovy327_21b6ad4

	thumb_func_start ovy327_21b6b30
ovy327_21b6b30: ; 0x021B6B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp]
	ldr r1, [r1]
	str r2, [sp, #4]
	cmp r1, #4
	bhi _021B6BA0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B6B4A: ; jump table
	.short _021B6B54 - _021B6B4A - 2 ; case 0
	.short _021B6B94 - _021B6B4A - 2 ; case 1
	.short _021B6BD6 - _021B6B4A - 2 ; case 2
	.short _021B6CF6 - _021B6B4A - 2 ; case 3
	.short _021B6D12 - _021B6B4A - 2 ; case 4
_021B6B54:
	add r4, sp, #0x10
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021B6D1C ; =0x021B73A8
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r0, _021B6D20 ; =0x021B73B0
	add r2, r4, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _021B6D24 ; =ovy327_21b7088
	str r0, [sp, #0x20]
	ldr r0, _021B6D28 ; =0x0000D8F4
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_021B5494
	cmp r0, #0
	beq _021B6BA0
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0x28
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B6B94:
	add r0, r2, #0
	ldr r0, [r0, #0xc]
	bl sub_021B5504
	cmp r0, #0
	beq _021B6BA2
_021B6BA0:
	b _021B6D16
_021B6BA2:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_021B5548
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_021B5544
	cmp r0, #1
	bne _021B6BC8
	ldr r1, [sp, #4]
	mov r2, #0xe
	ldr r1, [r1]
	add r0, r4, #0
	ldr r1, [r1, #4]
	lsl r2, r2, #0xc
	blx MI_CpuCopy8
_021B6BC8:
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0x28
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B6BD6:
	add r0, r2, #0
	ldr r0, [r0, #0xc]
	bl sub_021B5548
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_021B5544
	cmp r0, #5
	bhi _021B6CC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B6BFC: ; jump table
	.short _021B6CC2 - _021B6BFC - 2 ; case 0
	.short _021B6C08 - _021B6BFC - 2 ; case 1
	.short _021B6CC2 - _021B6BFC - 2 ; case 2
	.short _021B6CB2 - _021B6BFC - 2 ; case 3
	.short _021B6CC2 - _021B6BFC - 2 ; case 4
	.short _021B6CC2 - _021B6BFC - 2 ; case 5
_021B6C08:
	ldr r4, _021B6D2C ; =0x0000D8F0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0204405C
	ldr r1, [r6, r4]
	cmp r1, r0
	bne _021B6C1C
	mov r0, #1
	b _021B6C1E
_021B6C1C:
	ldr r0, [sp, #8]
_021B6C1E:
	cmp r0, #0
	beq _021B6C8A
	ldr r0, _021B6D30 ; =0x00001210
	mov r7, #0
	add r0, r0, #4
	mov r4, #0
	str r0, [sp, #0xc]
_021B6C2C:
	ldr r0, [sp, #0xc]
	mul r0, r4
	add r5, r6, r0
	ldrh r1, [r5, #8]
	cmp r1, #0
	beq _021B6C7A
	ldr r1, [r5]
	cmp r1, #0
	beq _021B6C48
	cmp r1, #1
	beq _021B6C4A
	cmp r1, #2
	beq _021B6C4E
	b _021B6C50
_021B6C48:
	b _021B6C50
_021B6C4A:
	mov r1, #1
	b _021B6C52
_021B6C4E:
	b _021B6C4A
_021B6C50:
	mov r1, #0
_021B6C52:
	cmp r1, #0
	beq _021B6C7A
	ldrb r1, [r5, #7]
	cmp r1, #2
	bne _021B6C7A
	ldr r1, _021B6D30 ; =0x00001210
	add r0, r6, r0
	bl sub_0204405C
	ldr r1, _021B6D30 ; =0x00001210
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021B6C70
	mov r0, #1
	b _021B6C72
_021B6C70:
	mov r0, #0
_021B6C72:
	cmp r0, #0
	beq _021B6C7A
	mov r0, #1
	b _021B6C7C
_021B6C7A:
	mov r0, #0
_021B6C7C:
	cmp r0, #0
	beq _021B6C82
	add r7, r7, #1
_021B6C82:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B6C2C
	b _021B6C8C
_021B6C8A:
	mov r7, #0
_021B6C8C:
	cmp r7, #0
	ldr r2, _021B6D34 ; =0x00000998
	ble _021B6CA4
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, r2]
	sub r2, #8
	ldr r1, [r1, r2]
	mov r2, #0x16
	b _021B6CD0
_021B6CA4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, r2]
	sub r2, #8
	ldr r1, [r1, r2]
	mov r2, #0x24
	b _021B6CD0
_021B6CB2:
	ldr r2, _021B6D34 ; =0x00000998
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, r2]
	sub r2, #8
	ldr r1, [r1, r2]
	mov r2, #0x26
	b _021B6CD0
_021B6CC2:
	ldr r2, _021B6D34 ; =0x00000998
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, r2]
	sub r2, #8
	ldr r1, [r1, r2]
	mov r2, #0x25
_021B6CD0:
	mov r3, #1
	bl ovy327_21b64bc
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021B6CE0
	mov r1, #0
	b _021B6CE2
_021B6CE0:
	mov r1, #2
_021B6CE2:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r1, [r0, #8]
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0x28
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B6CF6:
	ldr r1, _021B6D34 ; =0x00000998
	add r0, r2, #0
	ldr r0, [r0, r1]
	bl sub_021B6664
	cmp r0, #0
	beq _021B6D16
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0x28
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B6D12:
	bl ovy327_21b6810
_021B6D16:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6D1C: .word 0x021B73A8
_021B6D20: .word 0x021B73B0
_021B6D24: .word ovy327_21b7088
_021B6D28: .word 0x0000D8F4
_021B6D2C: .word 0x0000D8F0
_021B6D30: .word 0x00001210
_021B6D34: .word 0x00000998
	thumb_func_end ovy327_21b6b30

	thumb_func_start ovy327_21b6d38
ovy327_21b6d38: ; 0x021B6D38
	push {r3, r4, r5, lr}
	ldr r2, _021B6D50 ; =0x00000978
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy327_21b6d60
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6D50: .word 0x00000978
	thumb_func_end ovy327_21b6d38

	thumb_func_start sub_021B6D54
sub_021B6D54: ; 0x021B6D54
	ldr r3, _021B6D58 ; =ovy327_21b7014
	bx r3
	.align 2, 0
_021B6D58: .word ovy327_21b7014
	thumb_func_end sub_021B6D54

	thumb_func_start sub_021B6D5C
sub_021B6D5C: ; 0x021B6D5C
	bx lr
	.align 2, 0
	thumb_func_end sub_021B6D5C

	thumb_func_start ovy327_21b6d60
ovy327_21b6d60: ; 0x021B6D60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x91
	str r1, [sp, #0x14]
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	mov r2, #4
	str r1, [sp, #4]
	mov r1, #3
	mov r3, #0
	str r0, [sp, #0x2c]
	bl GFL_G2DIOLoadArcNCLRDefault
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_G2DIOLoadNSCRSync
	ldr r0, [sp, #0x20]
	mov r1, #3
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_G2DIOLoadNSCRSync
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #7
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl GFL_G2DIOLoadNSCRSync
	mov r2, #0x97
	ldr r0, [sp, #0x10]
	mov r1, #0
	lsl r2, r2, #4
	blx MI_CpuFill8
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	lsl r3, r3, #0x10
	mov r1, #2
	add r2, sp, #0x38
	lsr r3, r3, #0x10
	bl sub_0204B37C
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r0, #0xc]
	add r1, #8
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	add r2, #8
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl GFL_HeapFree
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r4, #8
	add r0, r0, r4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
_021B6E84:
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	cmp r1, #0xf
	blt _021B6E8E
	sub r1, #0xf
_021B6E8E:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #5
	ldr r0, [sp, #0x34]
	add r7, r0, r1
_021B6EA4:
	ldr r0, [sp, #0x24]
	mov r4, #4
	asr r2, r0, #8
	ldr r0, [sp, #0x20]
	lsl r1, r0, #5
	ldr r0, [sp, #0x30]
	add r5, r0, r1
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_021B6EB6:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #1
	add r0, r0, r1
	ldrh r0, [r0, #8]
	mov r2, #1
	add r3, r6, #0
	str r0, [sp]
	add r0, r7, r1
	add r1, r5, r1
	bl sub_0202780C
	add r4, r4, #1
	cmp r4, #0xb
	blt _021B6EB6
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	beq _021B6EF8
	mov r0, #6
	ldr r1, [sp, #0x24]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _021B6EA4
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	b _021B6EA4
_021B6EF8:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0xf
	blt _021B6E84
	mov r5, #0x7a
	mov r1, #0x1e
	ldr r0, [sp, #0x10]
	lsl r5, r5, #2
	add r0, r0, r5
	lsl r1, r1, #6
	blx DC_FlushRange
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, _021B6F98 ; =ovy327_21b6fa4
	ldr r1, [sp, #0x10]
	mov r2, #0x14
	bl GFL_VBlankTCBAdd
	ldr r1, [sp, #0x10]
	mov r2, #8
	str r0, [r1]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B6F9C ; =0x04000050
	mov r1, #1
	mov r3, #8
	bl G2x_SetBlendAlpha_
	ldr r4, _021B6FA0 ; =0x0000096C
	ldr r0, [sp, #0x10]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r0, [sp, #0x2c]
	bl GFL_ArcToolFree
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r6, #0x20
	bl sub_02044564
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02044564
	ldr r3, [sp, #0x14]
	mov r0, #1
	mov r1, #0xd
	mov r2, #0
	bl LoadCursorImageEndOfHeap
	ldr r1, [sp, #0x10]
	add r2, r4, #4
	str r0, [r1, r2]
	ldr r3, [sp, #0x14]
	mov r0, #2
	mov r1, #0xd
	mov r2, #0
	bl LoadCursorImageEndOfHeap
	sub r5, #0x68
	ldr r1, [sp, #0x10]
	add r4, #8
	str r0, [r1, r4]
	str r6, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #0
	add r3, r5, #0
	bl GFL_BGSysLoadNCLRDefault
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021B6F98: .word ovy327_21b6fa4
_021B6F9C: .word 0x04000050
_021B6FA0: .word 0x0000096C
	thumb_func_end ovy327_21b6d60

	thumb_func_start ovy327_21b6fa4
ovy327_21b6fa4: ; 0x021B6FA4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021B7008
	ldr r4, _021B700C ; =0x0000096B
	mov r0, #1
	ldrb r1, [r5, r4]
	eor r1, r0
	strb r1, [r5, r4]
	ldrb r1, [r5, r4]
	tst r0, r1
	bne _021B7008
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	mov r6, #0x1f
	lsl r6, r6, #4
	add r1, r5, r6
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	mov r2, #0xe
	bl GX_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r5, r6
	mov r2, #0xe
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	bl GXS_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #3
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x3c
	blt _021B6FFC
	mov r1, #0
	sub r0, r4, #3
	strh r1, [r5, r0]
_021B6FFC:
	ldr r0, _021B7010 ; =0x0000096C
	mov r1, #2
	ldrb r0, [r5, r0]
	mov r2, #7
	bl sub_02044CFC
_021B7008:
	pop {r4, r5, r6, pc}
	nop
_021B700C: .word 0x0000096B
_021B7010: .word 0x0000096C
	thumb_func_end ovy327_21b6fa4

	thumb_func_start ovy327_21b7014
ovy327_21b7014: ; 0x021B7014
	push {r3, r4, r5, lr}
	mov r5, #0x97
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r2, [r4, r5]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r5, #4
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r0, [r4]
	cmp r0, #0
	beq _021B7052
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
_021B7052:
	ldr r0, _021B705C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	nop
_021B705C: .word 0x04000050
	thumb_func_end ovy327_21b7014

	thumb_func_start sub_021B7060
sub_021B7060: ; 0x021B7060
	cmp r1, #0
	beq _021B706A
	cmp r1, #1
	beq _021B7076
	b _021B7080
_021B706A:
	mov r1, #0x97
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_021B7076:
	ldr r1, _021B7084 ; =0x00000974
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_021B7080:
	mov r0, #0
	bx lr
	.align 2, 0
_021B7084: .word 0x00000974
	thumb_func_end sub_021B7060

	thumb_func_start ovy327_21b7088
ovy327_21b7088: ; 0x021B7088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb0
	add r6, r0, #0
	add r5, r1, #0
	add r4, sp, #0
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r7, #5
_021B709C:
	stmia r4!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	sub r7, r7, #1
	bne _021B709C
	stmia r4!, {r0, r1, r2, r3}
	mov r4, #0
	cmp r5, #0
	bls _021B70CC
	mov r7, #0xb0
_021B70AE:
	add r1, r4, #0
	mul r1, r7
	add r0, sp, #0
	add r1, r6, r1
	mov r2, #0xb0
	bl sub_02043E98
	cmp r0, #0
	beq _021B70C6
	add sp, #0xb0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B70C6:
	add r4, r4, #1
	cmp r4, r5
	blo _021B70AE
_021B70CC:
	mov r0, #0
	add sp, #0xb0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy327_21b7088
_021B70D4:
	.byte 0x81, 0x5D, 0x1B, 0x02, 0x05, 0x5E, 0x1B, 0x02, 0xE1, 0x5D, 0x1B, 0x02
	.byte 0xBE, 0x00, 0x00, 0x00, 0xA8, 0x50, 0x1B, 0x02, 0x3D, 0x5F, 0x1B, 0x02, 0x95, 0x5F, 0x1B, 0x02
	.byte 0xBE, 0x00, 0x00, 0x00, 0xBC, 0x52, 0x1B, 0x02, 0xBD, 0x5F, 0x1B, 0x02, 0xED, 0x5F, 0x1B, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0x72, 0x1B, 0x02, 0x15, 0x60, 0x1B, 0x02, 0x41, 0x60, 0x1B, 0x02
	.byte 0x46, 0x01, 0x00, 0x00, 0x6C, 0x31, 0x1A, 0x02, 0x71, 0x60, 0x1B, 0x02, 0x9D, 0x60, 0x1B, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB5, 0x68, 0x1B, 0x02
	.byte 0x65, 0x6A, 0x1B, 0x02, 0xF1, 0x69, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x5F, 0x73, 0x79, 0x73
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x5F
	.byte 0x70, 0x72, 0x6F, 0x63, 0x5F, 0x70, 0x61, 0x72, 0x61, 0x6D, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55
	.byte 0x4C, 0x4C, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64
	.byte 0x5F, 0x6E, 0x65, 0x74, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x5F, 0x6E, 0x65, 0x74
	.byte 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x70, 0x5F, 0x6B, 0x65, 0x79, 0x63, 0x75, 0x72, 0x73, 0x6F, 0x72, 0x20, 0x3D, 0x3D
	.byte 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x57, 0x42, 0x54, 0x5F, 0x45, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B70D4
