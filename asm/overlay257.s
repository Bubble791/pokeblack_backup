    .include "macros/function.inc"
	.include "overlay257.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy257_21998c0
ovy257_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	mov r1, #0x74
	str r1, [sp]
	ldr r3, _02199A50 ; =0x021B25A0
	mov r1, #0x50
	mov r2, #0
	add r5, r0, #0
	mov r6, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, _02199A54 ; =0x021b3d60
	str r4, [r0]
	strh r5, [r4]
	str r6, [r4, #4]
	strb r6, [r4, #0x18]
	strb r6, [r4, #8]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	str r6, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #5
	str r0, [r4, #0x30]
	str r6, [r4, #0x1c]
	str r6, [r4, #0x20]
	str r6, [r4, #0x24]
	str r6, [r4, #0x3c]
	mov r0, #0x40
	str r6, [r4, #0x40]
	bl sub_0203D10C
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219991C
	blx sub_02199A68
	add r5, r0, #0
	bne _0219991E
	mov r0, #3
	blx sub_02199A70
	add r5, r0, #0
	b _0219991E
_0219991C:
	mov r5, #7
_0219991E:
	cmp r5, #7
	bne _02199926
	bl OS_Terminate
_02199926:
	cmp r5, #6
	bne _02199930
	add sp, #0x4c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02199930:
	ldr r5, [r4, #0x2c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199944
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	blx sub_02199A78
_02199944:
	ldr r5, [r4, #0x2c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199956
	add r0, r5, #0
	mov r1, #1
	blx sub_02199A80
_02199956:
	ldr r5, [r4, #0x2c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199968
	add r0, r5, #0
	mov r1, #1
	blx sub_02199A88
_02199968:
	ldr r5, [r4, #0x2c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219997C
	add r0, r5, #0
	blx sub_02199A90
	add r5, r0, #0
	b _0219997E
_0219997C:
	mov r5, #7
_0219997E:
	cmp r5, #7
	bne _02199986
	bl OS_Terminate
_02199986:
	cmp r5, #6
	bne _02199990
	add sp, #0x4c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02199990:
	mov r0, #0
	str r0, [r4, #0x28]
	mov r0, #2
	lsl r0, r0, #0x1c
	bl OS_EnableIrqMask
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021999AA
	ldr r0, _02199A58 ; =ovy257_2199f54
	blx sub_02199A98
_021999AA:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021999B8
	ldr r0, _02199A5C ; =ovy257_2199ef8
	blx sub_02199AA0
_021999B8:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021999C6
	ldr r0, _02199A60 ; =ovy257_2199f48
	blx sub_02199AA8
_021999C6:
	add r0, r4, #0
	bl ovy257_219a1f0
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021999DA
	mov r0, #1
	blx sub_02199AB0
_021999DA:
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x48]
	add r0, #0x44
	strb r1, [r0]
	mov r0, #1
	mov r1, #0
	bl sub_02199AB8
	mov r0, #1
	mov r1, #0
	bl sub_02199AC8
	mov r0, #1
	mov r1, #1
	bl sub_02199AD8
	mov r0, #2
	mov r1, #0
	bl sub_02199AE8
	mov r0, #2
	mov r1, #0
	bl sub_02199AF8
	mov r0, #2
	mov r1, #1
	bl sub_02199B08
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199A22
	add r0, sp, #4
	blx sub_02199B18
_02199A22:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199A36
	add r0, sp, #4
	mov r1, #0xff
	mov r2, #0xff
	blx sub_02199B20
	b _02199A38
_02199A36:
	mov r0, #0
_02199A38:
	cmp r0, #0
	bne _02199A40
	bl OS_Terminate
_02199A40:
	ldr r0, _02199A64 ; =ovy257_2199b28
	add r1, r4, #0
	bl sub_0203D2BC
	add r0, r4, #0
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_02199A50: .word 0x021B25A0
_02199A54: .word 0x021b3d60
_02199A58: .word ovy257_2199f54
_02199A5C: .word ovy257_2199ef8
_02199A60: .word ovy257_2199f48
_02199A64: .word ovy257_2199b28
	thumb_func_end ovy257_21998c0

	arm_func_start sub_02199A68
sub_02199A68: ; 0x02199A68
	ldr pc, _02199A6C ; =sub_02700938
	.align 2, 0
_02199A6C: .word sub_02700938
	arm_func_end sub_02199A68

	arm_func_start sub_02199A70
sub_02199A70: ; 0x02199A70
	ldr pc, _02199A74 ; =sub_02700CB4
	.align 2, 0
_02199A74: .word sub_02700CB4
	arm_func_end sub_02199A70

	arm_func_start sub_02199A78
sub_02199A78: ; 0x02199A78
	ldr pc, _02199A7C ; =sub_02701248
	.align 2, 0
_02199A7C: .word sub_02701248
	arm_func_end sub_02199A78

	arm_func_start sub_02199A80
sub_02199A80: ; 0x02199A80
	ldr pc, _02199A84 ; =sub_027017DC
	.align 2, 0
_02199A84: .word sub_027017DC
	arm_func_end sub_02199A80

	arm_func_start sub_02199A88
sub_02199A88: ; 0x02199A88
	ldr pc, _02199A8C ; =sub_02701908
	.align 2, 0
_02199A8C: .word sub_02701908
	arm_func_end sub_02199A88

	arm_func_start sub_02199A90
sub_02199A90: ; 0x02199A90
	ldr pc, _02199A94 ; =sub_02700DB8
	.align 2, 0
_02199A94: .word sub_02700DB8
	arm_func_end sub_02199A90

	arm_func_start sub_02199A98
sub_02199A98: ; 0x02199A98
	ldr pc, _02199A9C ; =sub_027000F8
	.align 2, 0
_02199A9C: .word sub_027000F8
	arm_func_end sub_02199A98

	arm_func_start sub_02199AA0
sub_02199AA0: ; 0x02199AA0
	ldr pc, _02199AA4 ; =sub_02700108
	.align 2, 0
_02199AA4: .word sub_02700108
	arm_func_end sub_02199AA0

	arm_func_start sub_02199AA8
sub_02199AA8: ; 0x02199AA8
	ldr pc, _02199AAC ; =sub_02700118
	.align 2, 0
_02199AAC: .word sub_02700118
	arm_func_end sub_02199AA8

	arm_func_start sub_02199AB0
sub_02199AB0: ; 0x02199AB0
	ldr pc, _02199AB4 ; =sub_0270218C
	.align 2, 0
_02199AB4: .word sub_0270218C
	arm_func_end sub_02199AB0

	thumb_func_start sub_02199AB8
sub_02199AB8: ; 0x02199AB8
	bx pc
	nop
	thumb_func_end sub_02199AB8
_02199ABC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xF9, 0x8C, 0x76, 0x02

	thumb_func_start sub_02199AC8
sub_02199AC8: ; 0x02199AC8
	bx pc
	nop
	thumb_func_end sub_02199AC8
_02199ACC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x81, 0x90, 0x76, 0x02

	thumb_func_start sub_02199AD8
sub_02199AD8: ; 0x02199AD8
	bx pc
	nop
	thumb_func_end sub_02199AD8
_02199ADC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x81, 0x90, 0x76, 0x02

	thumb_func_start sub_02199AE8
sub_02199AE8: ; 0x02199AE8
	bx pc
	nop
	thumb_func_end sub_02199AE8
_02199AEC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xF9, 0x8C, 0x76, 0x02

	thumb_func_start sub_02199AF8
sub_02199AF8: ; 0x02199AF8
	bx pc
	nop
	thumb_func_end sub_02199AF8
_02199AFC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x81, 0x90, 0x76, 0x02

	thumb_func_start sub_02199B08
sub_02199B08: ; 0x02199B08
	bx pc
	nop
	thumb_func_end sub_02199B08
_02199B0C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x81, 0x90, 0x76, 0x02

	arm_func_start sub_02199B18
sub_02199B18: ; 0x02199B18
	ldr pc, _02199B1C ; =sub_0270723C
	.align 2, 0
_02199B1C: .word sub_0270723C
	arm_func_end sub_02199B18

	arm_func_start sub_02199B20
sub_02199B20: ; 0x02199B20
	ldr pc, _02199B24 ; =sub_02707278
	.align 2, 0
_02199B24: .word sub_02707278
	arm_func_end sub_02199B20

	thumb_func_start ovy257_2199b28
ovy257_2199b28: ; 0x02199B28
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0xa
	mov r6, #0
	b _02199B38
_02199B32:
	add r0, r4, #0
	bl OS_Sleep
_02199B38:
	add r5, r6, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199B48
	blx sub_02199B80
	add r5, r0, #0
_02199B48:
	cmp r5, #1
	beq _02199B32
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199B58
	blx sub_02199B88
_02199B58:
	add r0, r7, #0
	bl ovy257_219a1b8
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199B6A
	blx sub_02199B90
_02199B6A:
	mov r0, #1
	bl sub_02199B98
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199B7C
	blx sub_02199BA8
_02199B7C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end ovy257_2199b28

	arm_func_start sub_02199B80
sub_02199B80: ; 0x02199B80
	ldr pc, _02199B84 ; =sub_02706324
	.align 2, 0
_02199B84: .word sub_02706324
	arm_func_end sub_02199B80

	arm_func_start sub_02199B88
sub_02199B88: ; 0x02199B88
	ldr pc, _02199B8C ; =sub_027072E0
	.align 2, 0
_02199B8C: .word sub_027072E0
	arm_func_end sub_02199B88

	arm_func_start sub_02199B90
sub_02199B90: ; 0x02199B90
	ldr pc, _02199B94 ; =sub_02700BD0
	.align 2, 0
_02199B94: .word sub_02700BD0
	arm_func_end sub_02199B90

	thumb_func_start sub_02199B98
sub_02199B98: ; 0x02199B98
	bx pc
	nop
	thumb_func_end sub_02199B98
_02199B9C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x71, 0x82, 0x76, 0x02

	arm_func_start sub_02199BA8
sub_02199BA8: ; 0x02199BA8
	ldr pc, _02199BAC ; =sub_02700B34
	.align 2, 0
_02199BAC: .word sub_02700B34
	arm_func_end sub_02199BA8

	thumb_func_start ovy257_2199bb0
ovy257_2199bb0: ; 0x02199BB0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	bl sub_0203D2BC
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199BC8
	blx sub_02199C1C
_02199BC8:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199BD4
	blx sub_02199C24
_02199BD4:
	add r0, r4, #0
	bl ovy257_219a1b8
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199BE6
	blx sub_02199C2C
_02199BE6:
	mov r0, #1
	bl sub_02199C34
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199BF8
	blx sub_02199C44
_02199BF8:
	add r0, r4, #0
	bl ovy257_2199eac
	add r0, r4, #0
	bl ovy257_219a0fc
	mov r0, #0x40
	bl sub_0203D134
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r0, _02199C18 ; =0x021b3d60
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_02199C18: .word 0x021b3d60
	thumb_func_end ovy257_2199bb0

	arm_func_start sub_02199C1C
sub_02199C1C: ; 0x02199C1C
	ldr pc, _02199C20 ; =sub_027062C8
	.align 2, 0
_02199C20: .word sub_027062C8
	arm_func_end sub_02199C1C

	arm_func_start sub_02199C24
sub_02199C24: ; 0x02199C24
	ldr pc, _02199C28 ; =sub_027072E0
	.align 2, 0
_02199C28: .word sub_027072E0
	arm_func_end sub_02199C24

	arm_func_start sub_02199C2C
sub_02199C2C: ; 0x02199C2C
	ldr pc, _02199C30 ; =sub_02700BD0
	.align 2, 0
_02199C30: .word sub_02700BD0
	arm_func_end sub_02199C2C

	thumb_func_start sub_02199C34
sub_02199C34: ; 0x02199C34
	bx pc
	nop
	thumb_func_end sub_02199C34
_02199C38:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x71, 0x82, 0x76, 0x02

	arm_func_start sub_02199C44
sub_02199C44: ; 0x02199C44
	ldr pc, _02199C48 ; =sub_02700B34
	.align 2, 0
_02199C48: .word sub_02700B34
	arm_func_end sub_02199C44

	thumb_func_start ovy257_2199c4c
ovy257_2199c4c: ; 0x02199C4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0219A288
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0219A294
	add r6, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199C72
	add r0, r4, #0
	blx sub_02199C9C
	add r2, r0, #0
	b _02199C74
_02199C72:
	mov r2, #0
_02199C74:
	mov r1, #0
	ldr r0, _02199C98 ; =ovy257_2199fd8
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrb r3, [r5, #0x18]
	ldr r1, [r5, #4]
	lsl r4, r4, #1
	lsl r3, r3, #2
	ldr r1, [r1, r3]
	add r3, r4, #0
	mov r0, #1
	lsr r2, r2, #2
	mul r3, r6
	bl sub_02199CA4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02199C98: .word ovy257_2199fd8
	thumb_func_end ovy257_2199c4c

	arm_func_start sub_02199C9C
sub_02199C9C: ; 0x02199C9C
	ldr pc, _02199CA0 ; =sub_0270234C
	.align 2, 0
_02199CA0: .word sub_0270234C
	arm_func_end sub_02199C9C

	thumb_func_start sub_02199CA4
sub_02199CA4: ; 0x02199CA4
	bx pc
	nop
	thumb_func_end sub_02199CA4
_02199CA8:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x79, 0x83, 0x76, 0x02

	thumb_func_start ovy257_2199cb4
ovy257_2199cb4: ; 0x02199CB4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #8
	bhi _02199DA8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02199CCE: ; jump table
	.short _02199DA8 - _02199CCE - 2 ; case 0
	.short _02199CE0 - _02199CCE - 2 ; case 1
	.short _02199D02 - _02199CCE - 2 ; case 2
	.short _02199DA8 - _02199CCE - 2 ; case 3
	.short _02199D24 - _02199CCE - 2 ; case 4
	.short _02199D46 - _02199CCE - 2 ; case 5
	.short _02199DA8 - _02199CCE - 2 ; case 6
	.short _02199D68 - _02199CCE - 2 ; case 7
	.short _02199D88 - _02199CCE - 2 ; case 8
_02199CE0:
	mov r1, #1
	bl ovy257_2199e64
	ldr r5, [r4, #0x4c]
	ldr r6, [r4, #0x48]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199CFA
	add r0, r6, #0
	add r1, r5, #0
	blx sub_02199DAC
_02199CFA:
	mov r0, #2
	add r4, #0x44
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02199D02:
	mov r5, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199D12
	blx sub_02199DB4
	add r5, r0, #0
_02199D12:
	cmp r5, #0
	bne _02199DA8
	add r0, r4, #0
	bl ovy257_2199eac
	mov r0, #3
	add r4, #0x44
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02199D24:
	mov r1, #0
	bl ovy257_2199e64
	ldr r5, [r4, #0x4c]
	ldr r6, [r4, #0x48]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199D3E
	add r0, r6, #0
	add r1, r5, #0
	blx sub_02199DBC
_02199D3E:
	mov r0, #5
	add r4, #0x44
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02199D46:
	mov r5, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199D56
	blx sub_02199DC4
	add r5, r0, #0
_02199D56:
	cmp r5, #0
	bne _02199DA8
	add r0, r4, #0
	bl ovy257_2199eac
	mov r0, #6
	add r4, #0x44
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02199D68:
	bl ovy257_2199ec0
	ldr r5, [r4, #0x4c]
	ldr r6, [r4, #0x48]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199D80
	add r0, r6, #0
	add r1, r5, #0
	blx sub_02199DCC
_02199D80:
	mov r0, #8
	add r4, #0x44
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02199D88:
	mov r5, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199D98
	blx sub_02199DD4
	add r5, r0, #0
_02199D98:
	cmp r5, #0
	bne _02199DA8
	add r0, r4, #0
	bl ovy257_2199eac
	mov r0, #3
	add r4, #0x44
	strb r0, [r4]
_02199DA8:
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end ovy257_2199cb4

	arm_func_start sub_02199DAC
sub_02199DAC: ; 0x02199DAC
	ldr pc, _02199DB0 ; =sub_02706174
	.align 2, 0
_02199DB0: .word sub_02706174
	arm_func_end sub_02199DAC

	arm_func_start sub_02199DB4
sub_02199DB4: ; 0x02199DB4
	ldr pc, _02199DB8 ; =sub_02706324
	.align 2, 0
_02199DB8: .word sub_02706324
	arm_func_end sub_02199DB4

	arm_func_start sub_02199DBC
sub_02199DBC: ; 0x02199DBC
	ldr pc, _02199DC0 ; =sub_02706174
	.align 2, 0
_02199DC0: .word sub_02706174
	arm_func_end sub_02199DBC

	arm_func_start sub_02199DC4
sub_02199DC4: ; 0x02199DC4
	ldr pc, _02199DC8 ; =sub_02706324
	.align 2, 0
_02199DC8: .word sub_02706324
	arm_func_end sub_02199DC4

	arm_func_start sub_02199DCC
sub_02199DCC: ; 0x02199DCC
	ldr pc, _02199DD0 ; =sub_02706174
	.align 2, 0
_02199DD0: .word sub_02706174
	arm_func_end sub_02199DCC

	arm_func_start sub_02199DD4
sub_02199DD4: ; 0x02199DD4
	ldr pc, _02199DD8 ; =sub_02706324
	.align 2, 0
_02199DD8: .word sub_02706324
	arm_func_end sub_02199DD4

	thumb_func_start ovy257_2199ddc
ovy257_2199ddc: ; 0x02199DDC
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199DF0
	add r0, sp, #0
	blx sub_02199E20
_02199DF0:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199E04
	add r0, sp, #0
	mov r1, #0xff
	mov r2, #0xff
	blx sub_02199E28
	b _02199E06
_02199E04:
	mov r0, #0
_02199E06:
	cmp r0, #0
	bne _02199E0E
	bl OS_Terminate
_02199E0E:
	ldr r0, _02199E1C ; =ovy257_2199b28
	add r1, r4, #0
	bl sub_0203D2BC
	add sp, #0x48
	pop {r4, pc}
	nop
_02199E1C: .word ovy257_2199b28
	thumb_func_end ovy257_2199ddc

	arm_func_start sub_02199E20
sub_02199E20: ; 0x02199E20
	ldr pc, _02199E24 ; =sub_0270723C
	.align 2, 0
_02199E24: .word sub_0270723C
	arm_func_end sub_02199E20

	arm_func_start sub_02199E28
sub_02199E28: ; 0x02199E28
	ldr pc, _02199E2C ; =sub_02707278
	.align 2, 0
_02199E2C: .word sub_02707278
	arm_func_end sub_02199E28

	thumb_func_start ovy257_2199e30
ovy257_2199e30: ; 0x02199E30
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_0203D2BC
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199E46
	blx sub_02199E54
_02199E46:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02199E52
	blx sub_02199E5C
_02199E52:
	pop {r3, pc}
	thumb_func_end ovy257_2199e30

	arm_func_start sub_02199E54
sub_02199E54: ; 0x02199E54
	ldr pc, _02199E58 ; =sub_027062C8
	.align 2, 0
_02199E58: .word sub_027062C8
	arm_func_end sub_02199E54

	arm_func_start sub_02199E5C
sub_02199E5C: ; 0x02199E5C
	ldr pc, _02199E60 ; =sub_027072E0
	.align 2, 0
_02199E60: .word sub_027072E0
	arm_func_end sub_02199E5C

	thumb_func_start ovy257_2199e64
ovy257_2199e64: ; 0x02199E64
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	cmp r1, #1
	beq _02199E70
	mov r5, #2
_02199E70:
	add r0, r4, #0
	bl ovy257_2199eac
	lsl r0, r5, #0x10
	lsr r5, r0, #0x10
	mov r0, #0xd1
	add r1, r5, #0
	bl sub_0204AA04
	add r1, r0, #0
	mov r3, #0xd1
	ldrh r0, [r4]
	ldr r2, _02199EA8 ; =0x021B25A0
	add r3, #0x96
	str r1, [r4, #0x4c]
	bl sub_02042EA4
	str r0, [r4, #0x48]
	mov r1, #0xd1
	add r2, r5, #0
	bl sub_0204A928
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	blx DC_FlushRange
	pop {r3, r4, r5, pc}
	nop
_02199EA8: .word 0x021B25A0
	thumb_func_end ovy257_2199e64

	thumb_func_start ovy257_2199eac
ovy257_2199eac: ; 0x02199EAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _02199EBE
	bl sub_02042ED0
	mov r0, #0
	str r0, [r4, #0x48]
_02199EBE:
	pop {r4, pc}
	thumb_func_end ovy257_2199eac

	thumb_func_start ovy257_2199ec0
ovy257_2199ec0: ; 0x02199EC0
	push {r4, lr}
	add r4, r0, #0
	bl ovy257_2199eac
	mov r0, #0xd1
	mov r1, #0
	bl sub_0204AA04
	add r1, r0, #0
	mov r3, #0xd1
	ldrh r0, [r4]
	ldr r2, _02199EF4 ; =0x021B25A0
	add r3, #0xac
	str r1, [r4, #0x4c]
	bl sub_02042EA4
	str r0, [r4, #0x48]
	mov r1, #0xd1
	mov r2, #0
	bl sub_0204A928
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	blx DC_FlushRange
	pop {r4, pc}
	.align 2, 0
_02199EF4: .word 0x021B25A0
	thumb_func_end ovy257_2199ec0

	thumb_func_start ovy257_2199ef8
ovy257_2199ef8: ; 0x02199EF8
	push {r4, lr}
	ldr r0, _02199F24 ; =0x021b3d60
	ldr r4, [r0]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199F0A
	blx sub_02199F28
_02199F0A:
	mov r0, #1
	bl sub_02199F30
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199F1C
	blx sub_02199F40
_02199F1C:
	mov r0, #1
	str r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
_02199F24: .word 0x021b3d60
	thumb_func_end ovy257_2199ef8

	arm_func_start sub_02199F28
sub_02199F28: ; 0x02199F28
	ldr pc, _02199F2C ; =sub_0270212C
	.align 2, 0
_02199F2C: .word sub_0270212C
	arm_func_end sub_02199F28

	thumb_func_start sub_02199F30
sub_02199F30: ; 0x02199F30
	bx pc
	nop
	thumb_func_end sub_02199F30
_02199F34:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x71, 0x82, 0x76, 0x02

	arm_func_start sub_02199F40
sub_02199F40: ; 0x02199F40
	ldr pc, _02199F44 ; =sub_027021E4
	.align 2, 0
_02199F44: .word sub_027021E4
	arm_func_end sub_02199F40

	thumb_func_start ovy257_2199f48
ovy257_2199f48: ; 0x02199F48
	push {r3, lr}
	cmp r0, #7
	beq _02199F52
	bl ovy257_2199ef8
_02199F52:
	pop {r3, pc}
	thumb_func_end ovy257_2199f48

	thumb_func_start ovy257_2199f54
ovy257_2199f54: ; 0x02199F54
	push {r3, r4, r5, lr}
	ldr r0, _02199FBC ; =0x021b3d60
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02199FBA
	ldr r0, [r4, #0x28]
	cmp r0, #0x1e
	bhi _02199F6A
	add r0, r0, #1
	str r0, [r4, #0x28]
_02199F6A:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02199F92
	ldr r5, [r4, #0x2c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199F82
	add r0, r5, #0
	blx sub_02199FC0
	b _02199F84
_02199F82:
	mov r0, #7
_02199F84:
	cmp r0, #7
	bne _02199F8C
	bl OS_Terminate
_02199F8C:
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x20]
_02199F92:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02199FBA
	add r0, r4, #0
	bl ovy257_2199c4c
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199FAA
	blx sub_02199FC8
_02199FAA:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199FB6
	blx sub_02199FD0
_02199FB6:
	mov r0, #0
	str r0, [r4, #0x1c]
_02199FBA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199FBC: .word 0x021b3d60
	thumb_func_end ovy257_2199f54

	arm_func_start sub_02199FC0
sub_02199FC0: ; 0x02199FC0
	ldr pc, _02199FC4 ; =sub_02700DB8
	.align 2, 0
_02199FC4: .word sub_02700DB8
	arm_func_end sub_02199FC0

	arm_func_start sub_02199FC8
sub_02199FC8: ; 0x02199FC8
	ldr pc, _02199FCC ; =sub_027021E4
	.align 2, 0
_02199FCC: .word sub_027021E4
	arm_func_end sub_02199FC8

	arm_func_start sub_02199FD0
sub_02199FD0: ; 0x02199FD0
	ldr pc, _02199FD4 ; =sub_02702108
	.align 2, 0
_02199FD4: .word sub_02702108
	arm_func_end sub_02199FD0

	thumb_func_start ovy257_2199fd8
ovy257_2199fd8: ; 0x02199FD8
	push {r3, r4, r5, lr}
	ldr r0, _0219A048 ; =0x021b3d60
	ldr r4, [r0]
	mov r0, #1
	bl sub_0219A04C
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02199FF2
	blx sub_0219A05C
	b _02199FF4
_02199FF2:
	mov r0, #0
_02199FF4:
	cmp r0, #1
	bne _0219A046
	mov r0, #1
	mov r5, #1
	bl sub_0219A064
	cmp r0, #0
	beq _0219A00A
	add r0, r5, #0
	bl sub_0219A074
_0219A00A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219A016
	mov r0, #0
	str r0, [r4, #0x24]
	b _0219A03A
_0219A016:
	ldr r0, [r4, #0x28]
	cmp r0, #4
	bls _0219A03A
	ldr r2, [r4, #0x3c]
	cmp r2, #0
	beq _0219A02E
	ldrb r0, [r4, #0x18]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x40]
	blx r2
_0219A02E:
	ldrb r0, [r4, #0x18]
	ldrb r1, [r4, #8]
	add r0, r0, #1
	blx sub_0208D65C
	strb r1, [r4, #0x18]
_0219A03A:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _0219A046
	add r0, r4, #0
	bl ovy257_2199c4c
_0219A046:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A048: .word 0x021b3d60
	thumb_func_end ovy257_2199fd8

	thumb_func_start sub_0219A04C
sub_0219A04C: ; 0x0219A04C
	bx pc
	nop
	thumb_func_end sub_0219A04C
_0219A050:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x71, 0x82, 0x76, 0x02

	arm_func_start sub_0219A05C
sub_0219A05C: ; 0x0219A05C
	ldr pc, _0219A060 ; =sub_027020F0
	.align 2, 0
_0219A060: .word sub_027020F0
	arm_func_end sub_0219A05C

	thumb_func_start sub_0219A064
sub_0219A064: ; 0x0219A064
	bx pc
	nop
	thumb_func_end sub_0219A064
_0219A068:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x35, 0x82, 0x76, 0x02

	thumb_func_start sub_0219A074
sub_0219A074: ; 0x0219A074
	bx pc
	nop
	thumb_func_end sub_0219A074
_0219A078:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x71, 0x82, 0x76, 0x02

	thumb_func_start sub_0219A084
sub_0219A084: ; 0x0219A084
	str r1, [r0, #0x3c]
	str r2, [r0, #0x40]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A084

	thumb_func_start ovy257_219a08c
ovy257_219a08c: ; 0x0219A08C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #4]
	bl sub_0219A288
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0219A294
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0219A0EE
	ldr r0, _0219A0F4 ; =0x00000211
	ldr r3, _0219A0F8 ; =0x021B25A0
	str r0, [sp]
	ldrh r0, [r5]
	lsl r1, r6, #2
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	str r0, [r5, #4]
	strb r6, [r5, #8]
	cmp r6, #0
	ble _0219A0EA
	ldr r0, [sp, #8]
	lsl r1, r7, #1
	add r7, r0, #0
	mul r7, r1
_0219A0CC:
	ldr r3, _0219A0F4 ; =0x00000211
	ldr r0, [sp, #4]
	ldr r2, _0219A0F8 ; =0x021B25A0
	add r1, r7, #0
	add r3, r3, #5
	bl sub_02042EA4
	ldr r2, [r5, #4]
	lsl r1, r4, #2
	str r0, [r2, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _0219A0CC
_0219A0EA:
	mov r0, #1
	str r0, [r5, #0xc]
_0219A0EE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219A0F4: .word 0x00000211
_0219A0F8: .word 0x021B25A0
	thumb_func_end ovy257_219a08c

	thumb_func_start ovy257_219a0fc
ovy257_219a0fc: ; 0x0219A0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0219A14A
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A114
	blx sub_0219A14C
	b _0219A116
_0219A114:
	mov r0, #0
_0219A116:
	cmp r0, #0
	bne _0219A14A
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0219A13E
	ldrb r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	bls _0219A13E
_0219A128:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	bl sub_02042ED0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, #8]
	cmp r4, r0
	blo _0219A128
_0219A13E:
	ldr r0, [r5, #4]
	bl GFL_HeapFree
	mov r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #4]
_0219A14A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219a0fc

	arm_func_start sub_0219A14C
sub_0219A14C: ; 0x0219A14C
	ldr pc, _0219A150 ; =sub_027020F0
	.align 2, 0
_0219A150: .word sub_027020F0
	arm_func_end sub_0219A14C

	thumb_func_start ovy257_219a154
ovy257_219a154: ; 0x0219A154
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0219A18E
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A16C
	blx sub_0219A190
	b _0219A16E
_0219A16C:
	mov r0, #0
_0219A16E:
	cmp r0, #0
	bne _0219A18E
	mov r0, #1
	mov r5, #1
	bl sub_0219A198
	cmp r0, #1
	bne _0219A184
	add r0, r5, #0
	bl sub_0219A1A8
_0219A184:
	mov r0, #1
	str r0, [r4, #0x10]
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x28]
_0219A18E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219a154

	arm_func_start sub_0219A190
sub_0219A190: ; 0x0219A190
	ldr pc, _0219A194 ; =sub_027020F0
	.align 2, 0
_0219A194: .word sub_027020F0
	arm_func_end sub_0219A190

	thumb_func_start sub_0219A198
sub_0219A198: ; 0x0219A198
	bx pc
	nop
	thumb_func_end sub_0219A198
_0219A19C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x35, 0x82, 0x76, 0x02

	thumb_func_start sub_0219A1A8
sub_0219A1A8: ; 0x0219A1A8
	bx pc
	nop
	thumb_func_end sub_0219A1A8
_0219A1AC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x71, 0x82, 0x76, 0x02

	thumb_func_start ovy257_219a1b8
ovy257_219a1b8: ; 0x0219A1B8
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #1
	bne _0219A1D2
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x1c]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A1D2
	blx sub_0219A1D4
_0219A1D2:
	pop {r3, pc}
	thumb_func_end ovy257_219a1b8

	arm_func_start sub_0219A1D4
sub_0219A1D4: ; 0x0219A1D4
	ldr pc, _0219A1D8 ; =sub_0270212C
	.align 2, 0
_0219A1D8: .word sub_0270212C
	arm_func_end sub_0219A1D4

	thumb_func_start sub_0219A1DC
sub_0219A1DC: ; 0x0219A1DC
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #6
	beq _0219A1E8
	cmp r0, #0
	bne _0219A1EC
_0219A1E8:
	mov r0, #1
	bx lr
_0219A1EC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219A1DC

	thumb_func_start ovy257_219a1f0
ovy257_219a1f0: ; 0x0219A1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0219A266
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A208
	blx sub_0219A268
	b _0219A20A
_0219A208:
	mov r0, #0
_0219A20A:
	cmp r0, #0
	bne _0219A266
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A21C
	mov r0, #0
	blx sub_0219A270
_0219A21C:
	mov r4, #0
	add r0, r5, #0
	strh r4, [r5, #0x34]
	bl ovy257_219a2cc
	strh r0, [r5, #0x36]
	add r0, r5, #0
	strh r4, [r5, #0x38]
	bl ovy257_219a2ec
	strh r0, [r5, #0x3a]
	add r0, r5, #0
	bl sub_0219A288
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0219A294
	add r7, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A254
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0219A278
	add r4, r0, #0
_0219A254:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A262
	add r0, r4, #0
	blx sub_0219A280
_0219A262:
	mov r0, #0
	str r0, [r5, #0x14]
_0219A266:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219a1f0

	arm_func_start sub_0219A268
sub_0219A268: ; 0x0219A268
	ldr pc, _0219A26C ; =sub_027020F0
	.align 2, 0
_0219A26C: .word sub_027020F0
	arm_func_end sub_0219A268

	arm_func_start sub_0219A270
sub_0219A270: ; 0x0219A270
	ldr pc, _0219A274 ; =sub_02702158
	.align 2, 0
_0219A274: .word sub_02702158
	arm_func_end sub_0219A270

	arm_func_start sub_0219A278
sub_0219A278: ; 0x0219A278
	ldr pc, _0219A27C ; =sub_027022F8
	.align 2, 0
_0219A27C: .word sub_027022F8
	arm_func_end sub_0219A278

	arm_func_start sub_0219A280
sub_0219A280: ; 0x0219A280
	ldr pc, _0219A284 ; =sub_0270229C
	.align 2, 0
_0219A284: .word sub_0270229C
	arm_func_end sub_0219A280

	thumb_func_start sub_0219A288
sub_0219A288: ; 0x0219A288
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x34]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0219A288

	thumb_func_start sub_0219A294
sub_0219A294: ; 0x0219A294
	ldrh r1, [r0, #0x3a]
	ldrh r0, [r0, #0x38]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0219A294

	thumb_func_start ovy257_219a2a0
ovy257_219a2a0: ; 0x0219A2A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A2B8
	mov r0, #3
	mov r1, #3
	add r2, r4, #0
	blx sub_0219A2C4
_0219A2B8:
	add r0, r5, #0
	str r4, [r5, #0x30]
	bl ovy257_219a1f0
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end ovy257_219a2a0

	arm_func_start sub_0219A2C4
sub_0219A2C4: ; 0x0219A2C4
	ldr pc, _0219A2C8 ; =sub_02700FE4
	.align 2, 0
_0219A2C8: .word sub_02700FE4
	arm_func_end sub_0219A2C4

	thumb_func_start ovy257_219a2cc
ovy257_219a2cc: ; 0x0219A2CC
	push {r4, lr}
	ldr r4, [r0, #0x30]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A2E0
	add r0, r4, #0
	blx sub_0219A2E4
	pop {r4, pc}
_0219A2E0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_219a2cc

	arm_func_start sub_0219A2E4
sub_0219A2E4: ; 0x0219A2E4
	ldr pc, _0219A2E8 ; =sub_02702364
	.align 2, 0
_0219A2E8: .word sub_02702364
	arm_func_end sub_0219A2E4

	thumb_func_start ovy257_219a2ec
ovy257_219a2ec: ; 0x0219A2EC
	push {r4, lr}
	ldr r4, [r0, #0x30]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219A300
	add r0, r4, #0
	blx sub_0219A304
	pop {r4, pc}
_0219A300:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_219a2ec

	arm_func_start sub_0219A304
sub_0219A304: ; 0x0219A304
	ldr pc, _0219A308 ; =sub_027023CC
	.align 2, 0
_0219A308: .word sub_027023CC
	arm_func_end sub_0219A304

	thumb_func_start sub_0219A30C
sub_0219A30C: ; 0x0219A30C
	ldr r2, [r0, #0x2c]
	cmp r2, r1
	beq _0219A31E
	ldr r2, [r0, #0x20]
	cmp r2, #0
	bne _0219A31E
	str r1, [r0, #0x2c]
	mov r1, #1
	str r1, [r0, #0x20]
_0219A31E:
	bx lr
	thumb_func_end sub_0219A30C

	thumb_func_start sub_0219A320
sub_0219A320: ; 0x0219A320
	mov r1, #1
	add r0, #0x44
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219A320

	thumb_func_start sub_0219A328
sub_0219A328: ; 0x0219A328
	mov r1, #4
	add r0, #0x44
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219A328

	thumb_func_start sub_0219A330
sub_0219A330: ; 0x0219A330
	mov r1, #7
	add r0, #0x44
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219A330

	thumb_func_start sub_0219A338
sub_0219A338: ; 0x0219A338
	add r0, #0x44
	ldrb r0, [r0]
	add r0, #0xf9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0219A34A
	mov r0, #1
	bx lr
_0219A34A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A338

	thumb_func_start sub_0219A350
sub_0219A350: ; 0x0219A350
	ldr r0, _0219A35C ; =0x021B3D64
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	bx lr
	nop
_0219A35C: .word 0x021B3D64
	thumb_func_end sub_0219A350

	thumb_func_start sub_0219A360
sub_0219A360: ; 0x0219A360
	ldr r0, _0219A36C ; =0x021B3D64
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #2]
	bx lr
	nop
_0219A36C: .word 0x021B3D64
	thumb_func_end sub_0219A360

	thumb_func_start ovy257_219a370
ovy257_219a370: ; 0x0219A370
	push {r4, lr}
	add r4, r1, #0
	add r1, r2, #0
	ldr r3, _0219A384 ; =0x021B3D68
	lsr r2, r4, #1
	bl ovy257_219a3a0
	add r0, r4, #3
	lsr r0, r0, #2
	pop {r4, pc}
	.align 2, 0
_0219A384: .word 0x021B3D68
	thumb_func_end ovy257_219a370

	thumb_func_start ovy257_219a388
ovy257_219a388: ; 0x0219A388
	push {r4, lr}
	add r4, r1, #0
	add r1, r2, #0
	ldr r3, _0219A39C ; =0x021B3D64
	lsl r2, r4, #1
	bl ovy257_219a3f8
	lsl r0, r4, #2
	pop {r4, pc}
	nop
_0219A39C: .word 0x021B3D64
	thumb_func_end ovy257_219a388

	thumb_func_start ovy257_219a3a0
ovy257_219a3a0: ; 0x0219A3A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r2, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r5, #0
	mov r7, #0
	mov r6, #0
	mov r4, #0
	cmp r0, #0
	ble _0219A3EC
_0219A3BA:
	ldr r0, [sp]
	lsl r1, r4, #1
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #0xc]
	bl ovy257_219a44c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, #0
	bne _0219A3D4
	add r7, r0, #0
	mov r6, #1
	b _0219A3E4
_0219A3D4:
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	add r1, r7, r0
	ldr r0, [sp, #4]
	mov r6, #0
	strb r1, [r0, r5]
	mov r7, #0
	add r5, r5, #1
_0219A3E4:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _0219A3BA
_0219A3EC:
	cmp r6, #1
	bne _0219A3F4
	ldr r0, [sp, #4]
	strb r7, [r0, r5]
_0219A3F4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219a3a0

	thumb_func_start ovy257_219a3f8
ovy257_219a3f8: ; 0x0219A3F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	add r6, r1, #0
	add r7, r3, #0
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0219A448
_0219A410:
	ldr r0, [sp]
	add r1, r7, #0
	ldrsb r5, [r0, r4]
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	add r0, r6, r0
	str r0, [sp, #4]
	mov r0, #0xf
	and r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ovy257_219a4d8
	ldr r1, [sp, #0xc]
	strh r0, [r6, r1]
	mov r0, #0xf0
	and r0, r5
	lsl r0, r0, #0x14
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl ovy257_219a4d8
	ldr r1, [sp, #4]
	add r4, r4, #1
	strh r0, [r1, #2]
	ldr r0, [sp, #8]
	cmp r4, r0
	blt _0219A410
_0219A448:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219a3f8

	thumb_func_start ovy257_219a44c
ovy257_219a44c: ; 0x0219A44C
	push {r4, r5, r6, r7}
	mov r3, #2
	ldrsb r6, [r1, r3]
	mov r2, #0
	ldrsh r5, [r1, r2]
	lsl r4, r6, #2
	ldr r3, _0219A4C8 ; =0x021AF750
	sub r0, r0, r5
	ldr r4, [r3, r4]
	bpl _0219A464
	mov r2, #8
	neg r0, r0
_0219A464:
	asr r3, r4, #3
	cmp r0, r4
	blt _0219A472
	mov r7, #4
	orr r2, r7
	sub r0, r0, r4
	add r3, r3, r4
_0219A472:
	asr r4, r4, #1
	cmp r0, r4
	blt _0219A480
	mov r7, #2
	orr r2, r7
	sub r0, r0, r4
	add r3, r3, r4
_0219A480:
	asr r4, r4, #1
	cmp r0, r4
	blt _0219A48C
	mov r0, #1
	orr r2, r0
	add r3, r3, r4
_0219A48C:
	mov r0, #8
	tst r0, r2
	beq _0219A496
	sub r5, r5, r3
	b _0219A498
_0219A496:
	add r5, r5, r3
_0219A498:
	ldr r0, _0219A4CC ; =0x00007FFF
	cmp r5, r0
	ble _0219A4A0
	b _0219A4A6
_0219A4A0:
	ldr r0, _0219A4D0 ; =0xFFFF8001
	cmp r5, r0
	bge _0219A4A8
_0219A4A6:
	add r5, r0, #0
_0219A4A8:
	ldr r0, _0219A4D4 ; =0x021AF740
	ldrsb r0, [r0, r2]
	add r6, r6, r0
	bpl _0219A4B2
	mov r6, #0
_0219A4B2:
	cmp r6, #0x58
	ble _0219A4B8
	mov r6, #0x58
_0219A4B8:
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #0x18
	strh r5, [r1]
	strb r6, [r1, #2]
	asr r0, r0, #0x18
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0219A4C8: .word 0x021AF750
_0219A4CC: .word 0x00007FFF
_0219A4D0: .word 0xFFFF8001
_0219A4D4: .word 0x021AF740
	thumb_func_end ovy257_219a44c

	thumb_func_start ovy257_219a4d8
ovy257_219a4d8: ; 0x0219A4D8
	push {r3, r4, r5, r6}
	mov r2, #0
	ldrsh r3, [r1, r2]
	mov r2, #2
	ldrsb r4, [r1, r2]
	ldr r2, _0219A540 ; =0x021AF750
	mov r6, #4
	lsl r5, r4, #2
	ldr r2, [r2, r5]
	asr r5, r2, #3
	tst r6, r0
	beq _0219A4F2
	add r5, r5, r2
_0219A4F2:
	mov r6, #2
	tst r6, r0
	beq _0219A4FC
	asr r6, r2, #1
	add r5, r5, r6
_0219A4FC:
	mov r6, #1
	tst r6, r0
	beq _0219A506
	asr r2, r2, #2
	add r5, r5, r2
_0219A506:
	mov r2, #8
	tst r2, r0
	beq _0219A516
	ldr r2, _0219A544 ; =0xFFFF8001
	sub r3, r3, r5
	cmp r3, r2
	bge _0219A520
	b _0219A51E
_0219A516:
	ldr r2, _0219A548 ; =0x00007FFF
	add r3, r3, r5
	cmp r3, r2
	ble _0219A520
_0219A51E:
	add r3, r2, #0
_0219A520:
	ldr r2, _0219A54C ; =0x021AF740
	ldrsb r0, [r2, r0]
	add r4, r4, r0
	bpl _0219A52C
	mov r4, #0
	b _0219A532
_0219A52C:
	cmp r4, #0x58
	ble _0219A532
	mov r4, #0x58
_0219A532:
	lsl r0, r3, #0x10
	asr r0, r0, #0x10
	strh r0, [r1]
	strb r4, [r1, #2]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0219A540: .word 0x021AF750
_0219A544: .word 0xFFFF8001
_0219A548: .word 0x00007FFF
_0219A54C: .word 0x021AF740
	thumb_func_end ovy257_219a4d8

	thumb_func_start ovy257_219a550
ovy257_219a550: ; 0x0219A550
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x40
	str r0, [sp]
	ldr r6, _0219A5A0 ; =0x021B25B0
	ldrh r0, [r5]
	mov r1, #0x14
	mov r2, #1
	add r3, r6, #0
	bl GFL_HeapAllocate
	ldrh r1, [r5, #4]
	add r4, r0, #0
	ldrh r0, [r5]
	lsl r1, r1, #3
	add r2, r6, #0
	mov r3, #0x41
	bl sub_02042EA4
	str r0, [r4, #0x10]
	ldrb r0, [r5, #2]
	strb r0, [r4]
	ldrh r0, [r5, #4]
	strh r0, [r4, #2]
	ldrh r0, [r5, #6]
	strh r0, [r4, #8]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219A5A0: .word 0x021B25B0
	thumb_func_end ovy257_219a550

	thumb_func_start ovy257_219a5a4
ovy257_219a5a4: ; 0x0219A5A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02042ED0
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_219a5a4

	thumb_func_start sub_0219A5B8
sub_0219A5B8: ; 0x0219A5B8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A5B8

	thumb_func_start ovy257_219a5bc
ovy257_219a5bc: ; 0x0219A5BC
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #4]
	cmp r1, r0
	beq _0219A5E6
_0219A5C8:
	add r0, r4, #0
	bl sub_0219A834
	add r1, r0, #0
	add r0, r4, #0
	bl ovy257_219a5e8
	add r0, r4, #0
	add r1, r4, #6
	bl sub_0219A83C
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bne _0219A5C8
_0219A5E6:
	pop {r4, pc}
	thumb_func_end ovy257_219a5bc

	thumb_func_start ovy257_219a5e8
ovy257_219a5e8: ; 0x0219A5E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0219A82C
	add r1, r0, #0
	ldrb r0, [r4, #1]
	ldrb r2, [r4]
	ldrb r3, [r4, #2]
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldrb r0, [r4, #6]
	str r0, [sp, #8]
	ldrh r0, [r4, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ovy257_219a614
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219a5e8

	thumb_func_start ovy257_219a614
ovy257_219a614: ; 0x0219A614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	ldr r0, [sp, #0x74]
	str r1, [sp, #8]
	str r0, [sp, #0x74]
	add r5, r2, #0
	ldr r1, [sp, #0x70]
	ldr r0, _0219A7C4 ; =0x00000402
	ldr r2, _0219A7C8 ; =0x021AF8B4
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x44]
	sub r1, r5, r3
	bpl _0219A634
	neg r1, r1
_0219A634:
	add r0, sp, #0x68
	ldrh r6, [r0, #4]
	ldrh r4, [r0]
	sub r0, r4, r6
	bpl _0219A640
	neg r0, r0
_0219A640:
	cmp r1, r0
	bgt _0219A646
	add r1, r0, #0
_0219A646:
	add r0, r1, #1
	str r0, [sp, #0x10]
	sub r0, r3, r5
	cmp r0, #0
	ble _0219A662
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219A670
_0219A662:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219A670:
	blx sub_0208DA4C
	ldr r1, [sp, #0x10]
	blx sub_0208D65C
	str r0, [sp, #0x40]
	sub r0, r6, r4
	cmp r0, #0
	ble _0219A694
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219A6A2
_0219A694:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219A6A2:
	blx sub_0208DA4C
	ldr r1, [sp, #0x10]
	blx sub_0208D65C
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	ldrb r0, [r0]
	ldrb r1, [r1, #1]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0xc]
	lsr r0, r0, #1
	lsr r1, r1, #1
	sub r0, r5, r0
	sub r1, r4, r1
	cmp r2, #0
	blt _0219A6D2
	mov r2, #2
	b _0219A6D4
_0219A6D2:
	mov r2, #8
_0219A6D4:
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	blt _0219A6E4
	mov r2, #4
	b _0219A6E6
_0219A6E4:
	mov r2, #1
_0219A6E6:
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x28]
	mov r2, #0
	str r2, [sp, #0x30]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0219A7BE
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
_0219A6FA:
	ldr r2, [sp, #0x38]
	asr r3, r2, #0xc
	ldr r2, [sp, #0x18]
	add r2, r2, r3
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x34]
	asr r3, r2, #0xc
	ldr r2, [sp, #0x14]
	add r2, r2, r3
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x30]
	cmp r2, #0
	ble _0219A734
	ldr r2, [sp, #0x20]
	mov r7, #0
	cmp r2, r0
	beq _0219A724
	ldr r0, [sp, #0x2c]
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0219A724:
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	beq _0219A736
	ldr r0, [sp, #0x28]
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _0219A736
_0219A734:
	mov r7, #0x1f
_0219A736:
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x44]
	ldrb r0, [r0, #1]
	str r0, [sp, #0x48]
	cmp r0, #0
	bls _0219A79E
	ldr r0, [sp, #0x44]
	ldrb r4, [r0]
_0219A748:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _0219A78E
	ldr r0, [sp, #0x24]
	lsl r1, r0, #5
	ldr r0, [sp, #0x44]
	add r6, r0, r1
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	str r4, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x4c]
_0219A766:
	add r0, r6, r5
	ldrb r0, [r0, #2]
	tst r0, r7
	beq _0219A784
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x74]
	add r2, r2, r5
	str r0, [sp]
	lsl r2, r2, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x4c]
	lsr r2, r2, #0x10
	bl ovy257_219a7cc
_0219A784:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r4
	blo _0219A766
_0219A78E:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x24]
	cmp r1, r0
	blo _0219A748
_0219A79E:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x30]
	add r0, r1, r0
	add r3, r2, #1
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	str r3, [sp, #0x30]
	cmp r3, r2
	blt _0219A6FA
_0219A7BE:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219A7C4: .word 0x00000402
_0219A7C8: .word 0x021AF8B4
	thumb_func_end ovy257_219a614

	thumb_func_start ovy257_219a7cc
ovy257_219a7cc: ; 0x0219A7CC
	push {r3, r4}
	ldrh r4, [r0, #8]
	cmp r2, r4
	blo _0219A7F2
	ldrh r4, [r0, #0xa]
	cmp r2, r4
	bhs _0219A7F2
	ldrh r4, [r0, #0xc]
	cmp r3, r4
	blo _0219A7F2
	ldrh r0, [r0, #0xe]
	cmp r3, r0
	bhs _0219A7F2
	add r0, sp, #8
	ldrh r4, [r0]
	lsl r0, r2, #1
	lsl r2, r3, #9
	add r0, r1, r0
	strh r4, [r2, r0]
_0219A7F2:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_219a7cc

	thumb_func_start ovy257_219a7f8
ovy257_219a7f8: ; 0x0219A7F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5, #4]
	bl sub_0219A834
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #8
	blx MI_CpuCopy8
	add r0, r5, #0
	add r1, r5, #4
	bl sub_0219A83C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219a7f8

	thumb_func_start sub_0219A818
sub_0219A818: ; 0x0219A818
	strh r1, [r0, #4]
	add r1, r1, #5
	strh r1, [r0, #6]
	ldrh r2, [r0, #2]
	ldrh r1, [r0, #6]
	cmp r1, r2
	blo _0219A82A
	sub r1, r1, r2
	strh r1, [r0, #6]
_0219A82A:
	bx lr
	thumb_func_end sub_0219A818

	thumb_func_start sub_0219A82C
sub_0219A82C: ; 0x0219A82C
	ldr r3, _0219A830 ; =G2_GetBG2ScrPtr
	bx r3
	.align 2, 0
_0219A830: .word G2_GetBG2ScrPtr
	thumb_func_end sub_0219A82C

	thumb_func_start sub_0219A834
sub_0219A834: ; 0x0219A834
	ldr r2, [r0, #0x10]
	lsl r0, r1, #3
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0219A834

	thumb_func_start sub_0219A83C
sub_0219A83C: ; 0x0219A83C
	ldrh r2, [r1]
	add r2, r2, #1
	strh r2, [r1]
	ldrh r2, [r1]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blo _0219A84E
	mov r0, #0
	strh r0, [r1]
_0219A84E:
	bx lr
	thumb_func_end sub_0219A83C

	thumb_func_start ovy257_219a850
ovy257_219a850: ; 0x0219A850
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r7, r1, #0
	mov r0, #0x67
	str r0, [sp]
	ldr r3, _0219AA0C ; =0x021B25C0
	add r0, r7, #0
	mov r1, #0xb4
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_021AAA58
	add r6, r0, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219A96A
	mov r0, #0x6e
	mov r2, #1
	strh r0, [r4]
	mov r0, #1
	mov r1, #0x6e
	lsl r2, r2, #0x13
	bl GFL_HeapCreateChild
	ldrh r0, [r4]
	bl ovy257_21998c0
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #5
	bl ovy257_219a2a0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0219A30C
	ldrh r2, [r4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r5, _0219AA10 ; =0x00007FFF
	add r3, r2, #0
	and r3, r5
	add r2, r5, #1
	orr r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r0]
	mov r1, #2
	lsr r2, r2, #0x10
	bl ovy257_219a08c
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r1, _0219AA14 ; =ovy257_219af24
	ldr r2, [sp, #4]
	bl sub_0219A084
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy257_219a154
	mov r0, #0x76
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _0219AA0C ; =0x021B25C0
	mov r2, #1
	add r1, r0, #0
	and r1, r5
	add r0, r5, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #3
	lsr r0, r0, #0x10
	lsl r1, r1, #0xe
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	mov r0, #0x77
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _0219AA0C ; =0x021B25C0
	mov r2, #1
	add r1, r0, #0
	and r1, r5
	add r0, r5, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #3
	lsr r0, r0, #0x10
	lsl r1, r1, #0xe
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	mov r0, #0x78
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _0219AA0C ; =0x021B25C0
	mov r2, #1
	add r1, r0, #0
	and r1, r5
	add r0, r5, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #3
	lsr r0, r0, #0x10
	lsl r1, r1, #0xe
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1]
	ldrh r3, [r4]
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_0204B600
	str r0, [r4, #8]
	ldrh r3, [r4]
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0
	bl sub_0204B600
	b _0219A984
_0219A96A:
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B600
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B600
_0219A984:
	str r0, [r4, #0xc]
	mov r6, #0
	add r0, r4, #0
	strb r6, [r4, #0x10]
	add r0, #0x2c
	strb r6, [r0]
	mov r2, #1
	add r0, r4, #0
	str r2, [r4, #0x14]
	mov r1, #0xc0
	add r0, #0x2d
	strb r1, [r0]
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	str r6, [r4, #0x20]
	str r6, [r4, #0x30]
	str r6, [r4, #0x24]
	str r6, [r4, #0x28]
	mov r0, #0x8c
	str r0, [sp]
	ldr r0, _0219AA10 ; =0x00007FFF
	add r3, r7, #0
	and r3, r0
	add r0, r0, #1
	orr r0, r3
	lsl r0, r0, #0x10
	ldr r3, _0219AA0C ; =0x021B25C0
	lsr r0, r0, #0x10
	lsl r1, r1, #9
	bl GFL_HeapAllocate
	add r7, r4, #0
	str r0, [r4, #4]
	add r7, #0x34
_0219A9C8:
	mov r0, #0x1c
	add r5, r6, #0
	mul r5, r0
	mov r0, #0
	str r0, [sp]
	add r0, r7, r5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219b204
	mov r0, #0
	str r0, [sp]
	add r0, r7, r5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219b21c
	add r1, r4, r5
	mov r0, #0
	str r0, [r1, #0x34]
	mov r0, #1
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _0219A9C8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AA0C: .word 0x021B25C0
_0219AA10: .word 0x00007FFF
_0219AA14: .word ovy257_219af24
	thumb_func_end ovy257_219a850

	thumb_func_start ovy257_219aa18
ovy257_219aa18: ; 0x0219AA18
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r5, #1
	lsl r5, r5, #0xc
	add r0, r5, #0
	add r4, r1, #0
	bl FX_Inv
	str r0, [sp, #8]
	add r0, r5, #0
	bl FX_Inv
	mov r2, #0
	str r0, [sp, #0x14]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp]
	ldr r0, _0219AA98 ; =0x04000030
	str r2, [sp, #4]
	add r1, sp, #8
	mov r3, #0
	blx G2x_SetBGyAffine_
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	ldr r0, [r4, #0xc]
	bl GFL_HeapFree
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219AA8E
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy257_2199bb0
	mov r0, #0x6e
	bl sub_0203A1D0
_0219AA8E:
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219AA98: .word 0x04000030
	thumb_func_end ovy257_219aa18

	thumb_func_start ovy257_219aa9c
ovy257_219aa9c: ; 0x0219AA9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0219AAD8
	add r6, r5, #0
	mov r4, #0
	add r6, #0x34
	mov r7, #0x1c
_0219AAAE:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, #0
	add r1, r6, r1
	bl ovy257_219b234
	cmp r0, #1
	bne _0219AACE
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #0x18
	ldrb r1, [r5, #0x10]
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #0x10]
	b _0219AAD8
_0219AACE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219AAAE
_0219AAD8:
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219AAEA
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy257_2199cb4
_0219AAEA:
	add r0, r5, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0xc0
	bhs _0219AB20
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0219AB20
	add r0, r5, #0
	add r0, #0x2d
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	add r1, #8
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r2, _0219AB24 ; =0x04000040
	mov r0, #0xff
	strh r0, [r2]
	add r5, #0x2d
	strh r1, [r2, #4]
	ldrb r1, [r5]
	lsl r0, r2, #9
	strh r0, [r2, #2]
	strh r1, [r2, #6]
_0219AB20:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AB24: .word 0x04000040
	thumb_func_end ovy257_219aa9c

	thumb_func_start ovy257_219ab28
ovy257_219ab28: ; 0x0219AB28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #8]
	add r4, r1, #0
	bl ovy257_21aaac0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	bl sub_021AAADC
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl sub_021AAA14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	bl sub_021AAA9C
	ldr r0, [sp, #8]
	bl sub_021AAAB8
	cmp r0, #2
	blo _0219AC16
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0219AB82
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0219AB64
	b _0219AEE2
_0219AB64:
	mov r6, #6
	lsl r6, r6, #0xe
	ldr r0, [r4, #4]
	add r1, r6, #0
	blx DC_FlushRange
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r6, #0
	mov r5, #0
	bl GX_LoadBG3Scr
	add sp, #0x48
	strb r5, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0219AB82:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0219AB8A
	b _0219ADAA
_0219AB8A:
	ldrb r2, [r4, #0x10]
	mov r5, #0
	mov r1, #0
	mov r0, #1
_0219AB92:
	add r3, r0, #0
	lsl r3, r1
	tst r3, r2
	beq _0219ABA0
	add r3, r5, #1
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
_0219ABA0:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _0219AB92
	ldr r0, [sp, #8]
	bl sub_021AAAB8
	cmp r5, r0
	bne _0219AC16
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bhs _0219AC0C
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	mov r5, #0
	strb r5, [r4, #0x10]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
	add r4, #0x10
	mov r6, #1
_0219ABD4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r2, r5, #0
	bl sub_0219CCB8
	cmp r0, #1
	bne _0219ABFE
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r2, r5, #0
	bl sub_0219CCD8
	cmp r0, #0
	bne _0219ABFE
	add r0, r6, #0
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r1, [r4]
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4]
_0219ABFE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219ABD4
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_0219AC0C:
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0xc0
	bhs _0219AC18
_0219AC16:
	b _0219AEE2
_0219AC18:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0219AC3A
	add r0, r4, #0
	mov r2, #0
	add r0, #0x2d
	strb r2, [r0]
	mov r0, #1
	str r0, [r4, #0x30]
	ldr r1, _0219AEE8 ; =0x04000040
	str r2, [r4, #0x18]
	mov r0, #0xff
	strh r0, [r1]
	strh r2, [r1, #4]
	lsl r0, r1, #9
	strh r0, [r1, #2]
	strh r2, [r1, #6]
_0219AC3A:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0219AC4A
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [sp, #8]
	bl ovy257_21aad48
_0219AC4A:
	blx G2_GetBG3ScrPtr
	mov r2, #6
	add r1, r0, #0
	mov r0, #0
	lsl r2, r2, #0xe
	mov r5, #0
	blx MIi_CpuClear32
	ldr r0, [sp, #8]
	str r5, [r4, #0x14]
	bl sub_021AAADC
	ldr r1, [r4, #0x20]
	cmp r1, r0
	bne _0219AC6C
	b _0219ADA6
_0219AC6C:
	ldr r0, [sp, #8]
	bl sub_021AAADC
	str r0, [r4, #0x20]
	cmp r0, #1
	bne _0219AC7C
	mov r5, #2
	b _0219AC7E
_0219AC7C:
	mov r5, #1
_0219AC7E:
	lsl r5, r5, #0xc
	add r0, r5, #0
	bl FX_Inv
	str r0, [sp, #0x38]
	add r0, r5, #0
	bl FX_Inv
	str r0, [sp, #0x44]
	mov r5, #0
	str r5, [sp, #0x3c]
	str r5, [sp, #0x40]
	str r5, [sp]
	ldr r0, _0219AEEC ; =0x04000030
	add r1, sp, #0x38
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x4e
	str r0, [sp, #0x28]
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x40
	str r0, [sp, #0x2c]
	add r0, r4, #0
	str r0, [sp, #0x30]
	add r0, #0x42
	str r0, [sp, #0x30]
	add r0, r4, #0
	str r0, [sp, #0x34]
	add r0, #0x44
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r1, r4, #0
	add r6, r4, #0
	add r7, r4, #0
	add r0, #0x46
	add r1, #0x48
	add r6, #0x4a
	add r7, #0x4c
	mov ip, r0
_0219ACD8:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0219AD28
	mov r0, #0x1c
	mul r0, r5
	ldrh r2, [r1, r0]
	lsr r2, r2, #1
	strh r2, [r1, r0]
	ldrh r2, [r6, r0]
	lsr r2, r2, #1
	strh r2, [r6, r0]
	ldrh r2, [r7, r0]
	lsr r2, r2, #1
	strh r2, [r7, r0]
	ldr r2, [sp, #0x28]
	ldrh r2, [r2, r0]
	lsr r3, r2, #1
	ldr r2, [sp, #0x28]
	strh r3, [r2, r0]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, r0]
	lsr r3, r2, #1
	ldr r2, [sp, #0x2c]
	strh r3, [r2, r0]
	ldr r2, [sp, #0x30]
	ldrh r2, [r2, r0]
	lsr r3, r2, #1
	ldr r2, [sp, #0x30]
	strh r3, [r2, r0]
	ldr r2, [sp, #0x34]
	ldrh r2, [r2, r0]
	lsr r3, r2, #1
	ldr r2, [sp, #0x34]
	strh r3, [r2, r0]
	mov r2, ip
	ldrh r2, [r2, r0]
	lsr r3, r2, #1
	mov r2, ip
	strh r3, [r2, r0]
	b _0219AD9C
_0219AD28:
	mov r0, #0x1c
	mul r0, r5
	add r2, r4, r0
	add r2, #0x48
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x48
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x4a
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x4a
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x4c
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x4c
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x4e
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x4e
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x40
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x40
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x42
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x42
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x44
	ldrh r2, [r2]
	lsl r3, r2, #1
	add r2, r4, r0
	add r2, #0x44
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x46
	ldrh r2, [r2]
	add r0, r4, r0
	add r0, #0x46
	lsl r2, r2, #1
	strh r2, [r0]
_0219AD9C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219ACD8
_0219ADA6:
	mov r0, #0
	str r0, [r4, #0x30]
_0219ADAA:
	mov r0, #0
	str r0, [sp, #0xc]
_0219ADAE:
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r1, r0
	str r1, [sp, #0x10]
	ldrb r1, [r4, #0x10]
	ldr r0, [sp, #0x10]
	mov r6, #1
	tst r0, r1
	bne _0219ADC2
	b _0219AED2
_0219ADC2:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	bl sub_0219CCB8
	cmp r0, #1
	bne _0219AEC6
	ldr r0, [sp, #0x24]
	ldr r5, [sp, #0xc]
	cmp r0, #1
	bne _0219ADDE
	add r0, r5, #0
	beq _0219ADDE
	add r5, r6, #0
_0219ADDE:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219ADF4
	ldr r0, [sp, #0x24]
	mov r7, #0x80
	cmp r0, #1
	bne _0219ADF0
	mov r0, #0xc0
	b _0219ADF2
_0219ADF0:
	mov r0, #0x60
_0219ADF2:
	b _0219AE02
_0219ADF4:
	ldr r0, [sp, #0x24]
	mov r7, #0x40
	cmp r0, #1
	bne _0219AE00
	mov r0, #0x60
	b _0219AE02
_0219AE00:
	mov r0, #0x30
_0219AE02:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	bl sub_0219CCD8
	cmp r0, #1
	bne _0219AE30
	bl sub_020352E8
	cmp r0, #0
	bne _0219AE30
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #4]
	mul r0, r7
	lsl r1, r0, #1
	add r0, r5, #0
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
_0219AE2E:
	b _0219AE66
_0219AE30:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219AE4C
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _0219AE46
	mov r1, #3
	str r0, [sp, #0x18]
	lsl r1, r1, #0xe
	b _0219AE2E
_0219AE46:
	mov r1, #3
	lsl r1, r1, #0xc
	b _0219AE60
_0219AE4C:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ldr r0, [r4, #0xc]
	bne _0219AE5C
	mov r1, #3
	str r0, [sp, #0x18]
	lsl r1, r1, #0xc
	b _0219AE2E
_0219AE5C:
	mov r1, #3
	lsl r1, r1, #0xa
_0219AE60:
	add r0, r0, r1
	str r0, [sp, #0x18]
	lsl r1, r1, #1
_0219AE66:
	blx DC_FlushRange
	ldr r0, [sp, #0xc]
	mov r1, #0x1c
	add r5, r0, #0
	mul r5, r1
	add r0, r4, r5
	add r0, #0x46
	ldrh r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _0219AEC6
_0219AE7E:
	add r1, r4, r5
	add r1, #0x46
	ldrh r2, [r1]
	ldr r1, [sp, #0x14]
	add r0, r4, r5
	add r0, #0x44
	sub r1, r1, r2
	ldrh r3, [r0]
	add r1, r6, r1
	add r2, r1, #0
	mul r2, r7
	sub r0, r7, r3
	ldr r1, [sp, #0x18]
	lsl r2, r2, #1
	add r1, r1, r2
	lsl r0, r0, #1
	add r2, r4, r5
	add r0, r0, r1
	add r1, r4, r5
	add r2, #0x42
	add r1, #0x40
	ldrh r2, [r2]
	ldrh r1, [r1]
	add r2, r6, r2
	lsl r1, r1, #1
	lsl r2, r2, #9
	add r1, r1, r2
	lsl r2, r3, #1
	bl GX_LoadBG3Scr
	add r0, r4, r5
	add r0, #0x46
	ldrh r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _0219AE7E
_0219AEC6:
	ldr r0, [sp, #0x10]
	ldrb r1, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r1, r0
	strb r0, [r4, #0x10]
_0219AED2:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #4
	bhs _0219AEE2
	b _0219ADAE
_0219AEE2:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AEE8: .word 0x04000040
_0219AEEC: .word 0x04000030
	thumb_func_end ovy257_219ab28

	thumb_func_start ovy257_219aef0
ovy257_219aef0: ; 0x0219AEF0
	push {r4, lr}
	add r4, r1, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219AF04
	add r4, #0xa4
	ldr r0, [r4]
	bl ovy257_219a1b8
_0219AF04:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_219aef0

	thumb_func_start ovy257_219af08
ovy257_219af08: ; 0x0219AF08
	push {r4, lr}
	add r4, r1, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219AF1E
	add r4, #0xa4
	ldr r0, [r4]
	bl sub_0219A1DC
	pop {r4, pc}
_0219AF1E:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_219af08

	thumb_func_start ovy257_219af24
ovy257_219af24: ; 0x0219AF24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	str r1, [sp]
	add r0, r1, #0
	bl sub_021AAA0C
	add r4, r0, #0
	ldr r0, [sp]
	bl ovy257_21aaac0
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl sub_021AAADC
	str r0, [sp, #0x20]
	ldr r0, [sp]
	bl sub_021AAB08
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl sub_021AAB10
	cmp r0, #1
	beq _0219AF70
	ldr r0, [sp]
	bl sub_021AAAB8
	cmp r0, #2
	blo _0219AF70
	ldr r0, [sp, #0x18]
	mov r1, #1
	lsl r1, r0
	str r1, [sp, #4]
	ldrb r1, [r4, #0x10]
	ldr r0, [sp, #4]
	tst r0, r1
	beq _0219AF72
_0219AF70:
	b _0219B082
_0219AF72:
	ldr r0, [sp]
	bl sub_021AAB18
	cmp r0, #0
	bne _0219AF9E
	mov r7, #1
	mov r5, #0
	lsl r7, r7, #8
_0219AF82:
	add r1, r4, #0
	add r1, #0xb0
	lsl r0, r5, #9
	ldr r2, [r1]
	add r0, r6, r0
	lsl r1, r5, #8
	add r1, r2, r1
	add r0, #0x80
	add r2, r7, #0
	blx MIi_CpuCopy32
	add r5, r5, #1
	cmp r5, #0xc0
	blt _0219AF82
_0219AF9E:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0219AFB2
	ldr r0, _0219B088 ; =0x021B25D0
	ldr r2, _0219B08C ; =0x021B25D4
	mov r1, #0
	bl sub_0203CB94
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0219AFB2:
	cmp r0, #1
	bne _0219AFC0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bls _0219AFC0
	mov r0, #1
	str r0, [sp, #0x18]
_0219AFC0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219AFEC
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _0219AFD4
	ldr r0, [sp, #0x1c]
	b _0219AFD6
_0219AFD4:
	mov r0, #0x30
_0219AFD6:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r7, #0x80
	cmp r0, #1
	bne _0219AFE8
	mov r0, #0xc0
	b _0219AFEA
_0219AFE8:
	mov r0, #0x60
_0219AFEA:
	b _0219B010
_0219AFEC:
	mov r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _0219AFFA
	mov r0, #0x30
	b _0219AFFC
_0219AFFA:
	mov r0, #0x50
_0219AFFC:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r7, #0x40
	cmp r0, #1
	bne _0219B00E
	mov r0, #0x60
	b _0219B010
_0219B00E:
	mov r0, #0x30
_0219B010:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp]
	bl sub_021AAB5C
	cmp r0, #0
	bne _0219B082
	ldr r0, [sp]
	mov r1, #1
	bl sub_021AAB60
	mov r5, #0
	cmp r6, #0
	ble _0219B06E
	lsl r0, r7, #1
	str r0, [sp, #0x14]
	add r0, r7, #0
	mul r0, r6
	lsl r1, r0, #1
	ldr r0, [sp, #0x18]
	mul r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	lsl r0, r0, #1
	str r0, [sp, #8]
_0219B042:
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	add r0, #0xb0
	add r1, r1, r5
	ldr r0, [r0]
	lsl r1, r1, #8
	add r1, r0, r1
	ldr r0, [sp, #8]
	ldr r2, [r4, #4]
	add r0, r0, r1
	add r1, r7, #0
	mul r1, r5
	lsl r3, r1, #1
	ldr r1, [sp, #0x10]
	add r1, r2, r1
	ldr r2, [sp, #0x14]
	add r1, r3, r1
	blx MIi_CpuCopy32
	add r5, r5, #1
	cmp r5, r6
	blt _0219B042
_0219B06E:
	ldr r0, [sp]
	mov r1, #0
	bl sub_021AAB60
	ldr r0, [sp, #4]
	ldrb r1, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #0x10]
_0219B082:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B088: .word 0x021B25D0
_0219B08C: .word 0x021B25D4
	thumb_func_end ovy257_219af24

	thumb_func_start sub_0219B090
sub_0219B090: ; 0x0219B090
	mov r0, #1
	lsl r0, r2
	lsl r0, r0, #0x18
	ldrb r3, [r1, #0x10]
	lsr r0, r0, #0x18
	orr r0, r3
	strb r0, [r1, #0x10]
	bx lr
	thumb_func_end sub_0219B090

	thumb_func_start sub_0219B0A0
sub_0219B0A0: ; 0x0219B0A0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _0219B0BA
	mov r3, #1
	lsl r3, r2
	ldrb r2, [r1, #0x10]
	add r0, r2, #0
	tst r0, r3
	beq _0219B0BA
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	sub r0, r2, r0
	strb r0, [r1, #0x10]
_0219B0BA:
	bx lr
	thumb_func_end sub_0219B0A0

	thumb_func_start ovy257_219b0bc
ovy257_219b0bc: ; 0x0219B0BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	str r3, [sp]
	bl sub_021AAA14
	add r7, r0, #0
	mov r0, #1
	str r0, [r6, #0x14]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0219B0D8
	str r4, [r6, #0x18]
_0219B0D8:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _0219B0E2
	ldr r0, [sp]
	str r0, [r6, #0x1c]
_0219B0E2:
	add r0, r6, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r6, #0x10]
	strb r1, [r0]
	bl ovy257_21aab64
	cmp r0, #0
	bne _0219B108
	add r0, r5, #0
	bl sub_021AAB08
	mov r2, #1
	lsl r2, r0
	lsl r0, r2, #0x18
	ldrb r1, [r6, #0x10]
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6, #0x10]
_0219B108:
	mov r4, #0
_0219B10A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0219CCD0
	cmp r0, #1
	bne _0219B122
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_219b2e8
_0219B122:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219B10A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219b0bc

	thumb_func_start sub_0219B130
sub_0219B130: ; 0x0219B130
	ldr r0, [r1, #0x14]
	bx lr
	thumb_func_end sub_0219B130

	thumb_func_start ovy257_219b134
ovy257_219b134: ; 0x0219B134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy257_21aaac0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021AAADC
	cmp r0, #0
	bne _0219B154
	ldr r0, _0219B160 ; =0x021B18CC
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0219B154:
	ldr r0, _0219B160 ; =0x021B18CC
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219B160: .word 0x021B18CC
	thumb_func_end ovy257_219b134

	thumb_func_start ovy257_219b164
ovy257_219b164: ; 0x0219B164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy257_21aaac0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021AAADC
	cmp r0, #0
	bne _0219B184
	ldr r0, _0219B190 ; =0x021B18D8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0219B184:
	ldr r0, _0219B190 ; =0x021B18D8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219B190: .word 0x021B18D8
	thumb_func_end ovy257_219b164

	thumb_func_start ovy257_219b194
ovy257_219b194: ; 0x0219B194
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAB08
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219b1ac
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_219b194

	thumb_func_start ovy257_219b1ac
ovy257_219b1ac: ; 0x0219B1AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy257_219b1d8
	add r6, r0, #0
	add r0, r7, #0
	bl ovy257_21aaac0
	cmp r0, #1
	bne _0219B1CE
	cmp r4, #0
	beq _0219B1CE
	ldr r0, [r5, #4]
	add r0, r0, r6
	pop {r3, r4, r5, r6, r7, pc}
_0219B1CE:
	add r0, r6, #0
	ldr r1, [r5, #4]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219b1ac

	thumb_func_start ovy257_219b1d8
ovy257_219b1d8: ; 0x0219B1D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy257_21aaac0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021AAADC
	cmp r0, #0
	bne _0219B1F4
	ldr r0, _0219B200 ; =0x021B18E4
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_0219B1F4:
	ldr r0, _0219B200 ; =0x021B18E4
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsr r0, r0, #2
	pop {r3, r4, r5, pc}
	nop
_0219B200: .word 0x021B18E4
	thumb_func_end ovy257_219b1d8

	thumb_func_start ovy257_219b204
ovy257_219b204: ; 0x0219B204
	push {r3, r4}
	mov r4, #1
	strh r1, [r0, #0xc]
	str r4, [r0]
	strh r2, [r0, #0xe]
	strh r3, [r0, #0x10]
	add r1, sp, #8
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_219b204

	thumb_func_start ovy257_219b21c
ovy257_219b21c: ; 0x0219B21C
	push {r3, r4}
	mov r4, #1
	strh r1, [r0, #0x14]
	str r4, [r0]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x18]
	add r1, sp, #8
	ldrh r1, [r1]
	strh r1, [r0, #0x1a]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_219b21c

	thumb_func_start ovy257_219b234
ovy257_219b234: ; 0x0219B234
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #1
	bne _0219B29E
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc
	add r2, #0x14
	mov r7, #0
	bl sub_0219B2A8
	mov r4, #0
	add r1, r5, #0
	add r2, r5, #0
	orr r4, r0
	add r0, r6, #0
	add r1, #0xe
	add r2, #0x16
	bl sub_0219B2A8
	add r1, r5, #0
	add r2, r5, #0
	orr r4, r0
	add r0, r6, #0
	add r1, #0x10
	add r2, #0x18
	bl sub_0219B2A8
	add r1, r5, #0
	add r2, r5, #0
	orr r4, r0
	add r0, r6, #0
	add r1, #0x12
	add r2, #0x1a
	bl sub_0219B2A8
	orr r0, r4
	bne _0219B286
	str r7, [r5]
_0219B286:
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0219B296
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, _0219B2A4 ; =0x0000066E
	bl GFL_SndSEPlay
_0219B296:
	mov r0, #0
	str r0, [r5, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B29E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B2A4: .word 0x0000066E
	thumb_func_end ovy257_219b234

	thumb_func_start sub_0219B2A8
sub_0219B2A8: ; 0x0219B2A8
	ldr r0, [r0, #0x20]
	cmp r0, #1
	bne _0219B2B2
	mov r0, #4
	b _0219B2B4
_0219B2B2:
	mov r0, #8
_0219B2B4:
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldrh r2, [r2]
	ldrh r0, [r1]
	cmp r0, r2
	bhs _0219B2D0
	add r0, r0, r3
	cmp r0, r2
	bge _0219B2CA
	strh r0, [r1]
	b _0219B2CC
_0219B2CA:
	strh r2, [r1]
_0219B2CC:
	mov r0, #1
	bx lr
_0219B2D0:
	cmp r0, r2
	bls _0219B2E4
	sub r0, r0, r3
	cmp r0, r2
	ble _0219B2DE
	strh r0, [r1]
	b _0219B2E0
_0219B2DE:
	strh r2, [r1]
_0219B2E0:
	mov r0, #1
	bx lr
_0219B2E4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219B2A8

	thumb_func_start ovy257_219b2e8
ovy257_219b2e8: ; 0x0219B2E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r2, #0
	bl ovy257_21aaac0
	add r7, r0, #0
	add r1, r6, #0
	cmp r7, #1
	bne _0219B302
	cmp r6, #0
	beq _0219B302
	mov r1, #1
_0219B302:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219B352
	cmp r1, #0
	beq _0219B310
	cmp r1, #2
	bne _0219B314
_0219B310:
	mov r0, #0
	b _0219B316
_0219B314:
	mov r0, #0x80
_0219B316:
	mov r2, #0x1c
	add r4, r6, #0
	mul r4, r2
	add r2, r5, #0
	add r2, #0x48
	add r3, r2, r4
	mov ip, r3
	strh r0, [r2, r4]
	cmp r1, #0
	beq _0219B32E
	cmp r1, #1
	bne _0219B332
_0219B32E:
	mov r2, #0
	b _0219B334
_0219B332:
	mov r2, #0x60
_0219B334:
	add r3, r5, #0
	add r3, #0x4a
	add r0, r3, r4
	strh r2, [r3, r4]
	add r2, r5, #0
	str r0, [sp, #4]
	add r2, #0x4c
	mov r0, #0x80
	add r6, r2, r4
	strh r0, [r2, r4]
	mov r2, #0xc0
	cmp r7, #1
	beq _0219B350
	mov r2, #0x60
_0219B350:
	b _0219B39A
_0219B352:
	cmp r1, #0
	beq _0219B35A
	cmp r1, #2
	bne _0219B35E
_0219B35A:
	mov r0, #0
	b _0219B360
_0219B35E:
	mov r0, #0x40
_0219B360:
	mov r2, #0x1c
	add r4, r6, #0
	mul r4, r2
	add r2, r5, #0
	add r2, #0x48
	add r3, r2, r4
	mov ip, r3
	strh r0, [r2, r4]
	cmp r1, #0
	beq _0219B378
	cmp r1, #1
	bne _0219B37C
_0219B378:
	mov r2, #0
	b _0219B37E
_0219B37C:
	mov r2, #0x30
_0219B37E:
	add r3, r5, #0
	add r3, #0x4a
	add r0, r3, r4
	strh r2, [r3, r4]
	add r2, r5, #0
	str r0, [sp, #4]
	add r2, #0x4c
	mov r0, #0x40
	add r6, r2, r4
	strh r0, [r2, r4]
	mov r2, #0x60
	cmp r7, #1
	beq _0219B39A
	mov r2, #0x30
_0219B39A:
	add r0, r5, #0
	add r0, #0x4e
	add r3, r0, r4
	strh r2, [r0, r4]
	add r2, r5, r4
	ldr r0, [r2, #0x38]
	cmp r0, #0
	bne _0219B3CE
	mov r0, ip
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x40
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x42
	strh r1, [r0]
	add r0, r2, #0
	ldrh r1, [r6]
	add r0, #0x44
	add r2, #0x46
	strh r1, [r0]
	ldrh r0, [r3]
	strh r0, [r2]
	b _0219B490
_0219B3CE:
	mov r0, #1
	str r0, [r2, #0x3c]
	cmp r1, #3
	bhi _0219B490
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B3E2: ; jump table
	.short _0219B3EA - _0219B3E2 - 2 ; case 0
	.short _0219B410 - _0219B3E2 - 2 ; case 1
	.short _0219B448 - _0219B3E2 - 2 ; case 2
	.short _0219B46A - _0219B3E2 - 2 ; case 3
_0219B3EA:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219B400
	add r0, r5, #0
	mov r1, #0
	add r0, #0x34
	str r1, [sp]
	add r0, r0, r4
	mov r2, #0
_0219B3FC:
	mov r3, #0x80
	b _0219B48C
_0219B400:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x34
	str r1, [sp]
	add r0, r0, r4
	mov r2, #0
_0219B40C:
	mov r3, #0x40
	b _0219B48C
_0219B410:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219B42E
	mov r0, #0xc0
	cmp r7, #1
	beq _0219B41E
	mov r0, #0x60
_0219B41E:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x34
	add r0, r0, r4
	mov r1, #0x80
	b _0219B444
_0219B42E:
	mov r0, #0x60
	cmp r7, #1
	beq _0219B436
	mov r0, #0x30
_0219B436:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x34
	add r0, r0, r4
	mov r1, #0x40
_0219B444:
	mov r2, #0
	b _0219B48A
_0219B448:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219B45C
	add r0, r5, #0
	mov r1, #0
	add r0, #0x34
	str r1, [sp]
	add r0, r0, r4
	mov r2, #0x60
	b _0219B3FC
_0219B45C:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x34
	str r1, [sp]
	add r0, r0, r4
	mov r2, #0x30
	b _0219B40C
_0219B46A:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219B47E
	add r0, r5, #0
	mov r2, #0x60
	add r0, #0x34
	str r2, [sp]
	add r0, r0, r4
	mov r1, #0x80
	b _0219B48A
_0219B47E:
	add r0, r5, #0
	mov r2, #0x30
	add r0, #0x34
	str r2, [sp]
	add r0, r0, r4
	mov r1, #0x40
_0219B48A:
	mov r3, #0
_0219B48C:
	bl ovy257_219b204
_0219B490:
	mov r1, #1
	add r0, r5, r4
	str r1, [r0, #0x34]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219b2e8

	thumb_func_start sub_0219B49C
sub_0219B49C: ; 0x0219B49C
	mov r0, #0x1c
	mul r0, r2
	mov r2, #1
	add r0, r1, r0
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B49C

	thumb_func_start sub_0219B4AC
sub_0219B4AC: ; 0x0219B4AC
	mov r0, #0x1c
	mul r0, r2
	add r0, r1, r0
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B4AC

	thumb_func_start ovy257_219b4b8
ovy257_219b4b8: ; 0x0219B4B8
	push {r4, lr}
	add r4, r2, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219B4D6
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219B4D6
	mov r0, #3
	mov r1, #3
	add r2, r4, #0
	blx sub_0219B4D8
_0219B4D6:
	pop {r4, pc}
	thumb_func_end ovy257_219b4b8

	arm_func_start sub_0219B4D8
sub_0219B4D8: ; 0x0219B4D8
	ldr pc, _0219B4DC ; =sub_02701248
	.align 2, 0
_0219B4DC: .word sub_02701248
	arm_func_end sub_0219B4D8

	thumb_func_start ovy257_219b4e0
ovy257_219b4e0: ; 0x0219B4E0
	push {r4, lr}
	add r4, r1, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219B4FA
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0219A320
	mov r0, #1
	str r0, [r4, #0x24]
_0219B4FA:
	pop {r4, pc}
	thumb_func_end ovy257_219b4e0

	thumb_func_start ovy257_219b4fc
ovy257_219b4fc: ; 0x0219B4FC
	push {r4, lr}
	add r4, r1, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219B522
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _0219B522
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0219B522
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0219A328
	mov r0, #1
	str r0, [r4, #0x28]
_0219B522:
	pop {r4, pc}
	thumb_func_end ovy257_219b4fc

	thumb_func_start sub_0219B524
sub_0219B524: ; 0x0219B524
	add r1, #0xa4
	ldr r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B524

	thumb_func_start ovy257_219b52c
ovy257_219b52c: ; 0x0219B52C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	bl ovy257_21aab64
	cmp r0, #1
	bne _0219B552
	add r0, r7, #0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r1, _0219B5B4 ; =ovy257_219af24
	add r2, r4, #0
	bl sub_0219A084
	add r0, r7, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy257_219a154
_0219B552:
	add r0, r7, #0
	mov r4, #0
	add r0, #0x2c
	strb r4, [r0]
	add r0, r7, #0
	add r6, r7, #0
	mov r1, #0xc0
	add r0, #0x2d
	strb r1, [r0]
	mov r0, #1
	strb r4, [r7, #0x10]
	str r4, [r7, #0x14]
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x30]
	add r6, #0x34
_0219B574:
	mov r0, #0x1c
	add r5, r4, #0
	mul r5, r0
	mov r0, #0
	str r0, [sp]
	add r0, r6, r5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219b204
	mov r0, #0
	str r0, [sp]
	add r0, r6, r5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219b21c
	add r1, r7, r5
	mov r0, #0
	str r0, [r1, #0x34]
	mov r0, #1
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219B574
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B5B4: .word ovy257_219af24
	thumb_func_end ovy257_219b52c

	thumb_func_start ovy257_219b5b8
ovy257_219b5b8: ; 0x0219B5B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _0219B7EC ; =0x00000133
	str r1, [sp, #4]
	mov r4, #0x41
	lsl r4, r4, #4
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r3, _0219B7F0 ; =0x021B25F8
	add r1, r4, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	sub r0, r4, #4
	str r6, [r5, r0]
	mov r4, #0
	str r4, [r5, #8]
	mov r0, #1
	strb r0, [r5, #4]
	add r0, r7, #0
	add r0, #0x50
	strb r4, [r5, r0]
	add r0, r7, #0
	add r0, #0x41
	str r4, [r5, r0]
	add r7, #0x45
	mov r0, #1
	str r4, [r5, r7]
	lsl r0, r0, #0xa
	add r7, r5, #0
	strh r4, [r5, r0]
	add r7, #0x64
_0219B5FC:
	lsl r2, r4, #6
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, r2
	bl sub_0219C10C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219B5FC
	ldr r7, _0219B7F4 ; =0x00000146
	mov r4, #0
	add r7, #0x1e
_0219B618:
	add r0, r6, #0
	bl sub_021AAB3C
	cmp r0, #0
	beq _0219B626
	cmp r4, #0
	bne _0219B63A
_0219B626:
	mov r1, #3
	ldr r0, [sp, #4]
	ldr r2, _0219B7F0 ; =0x021B25F8
	ldr r3, _0219B7F4 ; =0x00000146
	lsl r1, r1, #0xe
	bl sub_02042EA4
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
_0219B63A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219B618
	mov r0, #0x80
	mov r1, #0xc0
	mov r2, #1
	mov r3, #4
	mov r7, #0xc0
	bl ovy257_21ad6ec
	add r1, r0, #0
	mov r3, #0xc0
	ldr r0, [sp, #4]
	ldr r2, _0219B7F0 ; =0x021B25F8
	add r3, #0x8b
	bl sub_02042EA4
	mov r1, #0xc0
	add r1, #0xc8
	str r0, [r5, r1]
	lsl r4, r7, #8
	mov r3, #0xc0
	ldr r0, [sp, #4]
	ldr r2, _0219B7F0 ; =0x021B25F8
	add r1, r4, #0
	add r3, #0x8d
	bl sub_02042EA4
	mov r1, #0xc0
	add r1, #0xcc
	str r0, [r5, r1]
	mov r3, #0xc0
	ldr r0, [sp, #4]
	ldr r2, _0219B7F0 ; =0x021B25F8
	add r1, r4, #0
	add r3, #0x8e
	bl sub_02042EA4
	mov r1, #0xc0
	add r1, #0xd0
	str r0, [r5, r1]
	mov r0, #0xc0
	mov r4, #0
	add r0, #0xb0
	strb r4, [r5, r0]
	mov r0, #0xc0
	add r0, #0xc2
	strb r4, [r5, r0]
	mov r0, #0xc0
	add r0, #0xc4
	str r4, [r5, r0]
	mov r0, #0xc0
	add r0, #0xd4
	str r4, [r5, r0]
	mov r0, #0xc0
	add r0, #0xd8
	str r4, [r5, r0]
	add r7, #0x95
	str r7, [sp]
	mov r7, #0x82
	lsl r7, r7, #2
	ldr r0, [sp, #4]
	ldr r3, _0219B7F0 ; =0x021B25F8
	add r1, r7, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r7, #0
	sub r1, #0x64
	str r0, [r5, r1]
	add r0, r7, #0
	sub r0, #0xb2
	str r0, [sp]
	mov r1, #0x32
	ldr r0, [sp, #4]
	ldr r3, _0219B7F0 ; =0x021B25F8
	lsl r1, r1, #0xa
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r7, #0
	sub r1, #0x60
	str r0, [r5, r1]
	add r0, r7, #0
	sub r0, #0x5c
	strb r4, [r5, r0]
	ldr r0, _0219B7F8 ; =0x000003AE
	sub r7, #0x5b
	add r2, r0, #0
	add r3, r0, #0
	strb r4, [r5, r7]
	mov r1, #0xff
	strb r1, [r5, r0]
	add r2, #0x32
	str r4, [r5, r2]
	add r2, r0, #0
	add r2, #0x36
	str r4, [r5, r2]
	add r2, r0, #0
	add r2, #0x3a
	str r4, [r5, r2]
	add r2, r0, #0
	add r2, #0x3e
	str r4, [r5, r2]
	add r2, r0, #0
	add r2, #0x56
	str r4, [r5, r2]
	add r3, #0x42
	mov r2, #1
	str r2, [r5, r3]
	add r2, r0, #0
	add r2, #0x46
	add r3, r0, #0
	str r4, [r5, r2]
	add r3, #0x4a
	mov r2, #1
	str r2, [r5, r3]
	add r2, r0, #0
	add r2, #0x4e
	str r4, [r5, r2]
	add r2, r0, #0
	add r2, #0x5a
	strb r1, [r5, r2]
	add r1, r0, #0
	add r1, #0x22
	str r4, [r5, r1]
	add r1, r0, #0
	add r1, #0x26
	str r4, [r5, r1]
	add r0, #0x2a
	str r4, [r5, r0]
	add r0, r6, #0
	bl sub_021AAA4C
	ldr r0, [r0]
	bl sub_0201736C
	add r1, r5, #0
	add r1, #0xc
	bl sub_02008B34
	add r1, r5, #0
	add r1, #0x2c
	mov r0, #1
	strb r0, [r1]
	mov r1, #0xff
	mov r7, #6
_0219B764:
	add r0, r4, #0
	mul r0, r7
	mov r2, #0
	add r3, r5, r0
_0219B76C:
	add r0, r3, r2
	add r0, #0x2e
	strb r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #6
	blo _0219B76C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219B764
	bl ovy257_21aab64
	add r1, r5, #0
	add r1, #0x2d
	lsl r0, r0, #0x18
	ldrb r1, [r1]
	mov r2, #1
	lsr r0, r0, #0x18
	mov r4, #1
	bic r1, r2
	and r0, r4
	orr r1, r0
	add r0, r5, #0
	add r0, #0x2d
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r5, #0
	add r0, #0x2d
	strb r1, [r0]
	add r0, r6, #0
	bl sub_021AAA4C
	ldr r0, [r0]
	bl sub_0201736C
	add r1, r5, #0
	add r1, #0x40
	bl sub_02008B34
	bl ovy257_21aab64
	add r1, r5, #0
	add r1, #0x60
	strb r0, [r1]
	bl sub_020352E8
	add r1, r5, #0
	add r1, #0x61
	strb r0, [r1]
	str r4, [r5]
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_02043868
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B7EC: .word 0x00000133
_0219B7F0: .word 0x021B25F8
_0219B7F4: .word 0x00000146
_0219B7F8: .word 0x000003AE
	thumb_func_end ovy257_219b5b8

	thumb_func_start ovy257_219b7fc
ovy257_219b7fc: ; 0x0219B7FC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x6a
	add r5, r1, #0
	lsl r6, r6, #2
	add r7, r0, #0
	ldr r0, [r5, r6]
	bl GFL_HeapFree
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r6, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02042ED0
	add r0, r6, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02042ED0
	add r0, r6, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02042ED0
	mov r4, #0
	sub r6, #0x44
_0219B836:
	add r0, r7, #0
	bl sub_021AAB3C
	cmp r0, #0
	beq _0219B844
	cmp r4, #0
	bne _0219B84E
_0219B844:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02042ED0
_0219B84E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219B836
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219b7fc

	thumb_func_start ovy257_219b860
ovy257_219b860: ; 0x0219B860
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_021AAA54
	ldr r0, [r4, #8]
	cmp r0, #0xb
	bhi _0219B8CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B87C: ; jump table
	.short _0219B894 - _0219B87C - 2 ; case 0
	.short _0219B8B8 - _0219B87C - 2 ; case 1
	.short _0219B8C4 - _0219B87C - 2 ; case 2
	.short _0219B922 - _0219B87C - 2 ; case 3
	.short _0219B93E - _0219B87C - 2 ; case 4
	.short _0219B960 - _0219B87C - 2 ; case 5
	.short _0219B982 - _0219B87C - 2 ; case 6
	.short _0219B996 - _0219B87C - 2 ; case 7
	.short _0219B9D8 - _0219B87C - 2 ; case 8
	.short _0219B9F8 - _0219B87C - 2 ; case 9
	.short _0219BA08 - _0219B87C - 2 ; case 10
	.short _0219B9E2 - _0219B87C - 2 ; case 11
_0219B894:
	mov r5, #0x5e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219B8CC
	cmp r0, #5
	bne _0219B8B4
	mov r0, #0
	bl sub_02042D8C
	mov r0, #5
	str r0, [r4, #8]
	ldr r1, [r4, r5]
	sub r0, r5, #4
_0219B8B0:
	str r1, [r4, r0]
	b _0219BA38
_0219B8B4:
	mov r0, #1
_0219B8B6:
	b _0219BA36
_0219B8B8:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ba90
	mov r0, #2
	b _0219B8B6
_0219B8C4:
	bl sub_02042788
	cmp r0, #1
	beq _0219B8CE
_0219B8CC:
	b _0219BA38
_0219B8CE:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #2
	beq _0219B8E2
	cmp r1, #3
	beq _0219B8EA
	cmp r1, #4
	beq _0219B8F6
	b _0219B918
_0219B8E2:
	bl sub_02042968
	mov r0, #7
	b _0219B916
_0219B8EA:
	bl sub_02042970
	ldr r0, _0219BA88 ; =ovy257_219bb70
	bl sub_02175334
	b _0219B914
_0219B8F6:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _0219B90A
	add r2, r4, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x64
	bl sub_0219C10C
_0219B90A:
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_02042950
_0219B914:
	mov r0, #3
_0219B916:
	str r0, [r4, #8]
_0219B918:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, r0, #4
	b _0219B8B0
_0219B922:
	bl sub_02040504
	cmp r0, #1
	bne _0219B92E
	mov r0, #4
	str r0, [r4, #8]
_0219B92E:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	beq _0219BA38
	b _0219B95C
_0219B93E:
	bl sub_02040440
	bl sub_0204044C
	cmp r0, #1
	bne _0219B94E
	mov r0, #7
	str r0, [r4, #8]
_0219B94E:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	beq _0219BA38
_0219B95C:
	mov r0, #8
	b _0219B8B6
_0219B960:
	bl sub_02040440
	add r5, r0, #0
	mov r0, #2
	ldr r1, _0219BA8C ; =0x021B1904
	lsl r0, r0, #0xc
	mov r2, #7
	add r3, r4, #0
	bl sub_02040C20
	add r0, r5, #0
	mov r1, #8
	mov r2, #0x20
	bl sub_02040624
	mov r0, #6
	b _0219B8B6
_0219B982:
	bl sub_02040440
	mov r1, #8
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _0219BA38
	mov r0, #7
	b _0219B8B6
_0219B996:
	add r0, r5, #0
	bl sub_021AAA9C
	cmp r0, #4
	bne _0219B9AA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219c7b0
	b _0219B9B2
_0219B9AA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219bbe0
_0219B9B2:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	beq _0219B9C4
	mov r0, #8
	str r0, [r4, #8]
_0219B9C4:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _0219BA38
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219BF38
	b _0219BA38
_0219B9D8:
	mov r0, #0
	bl sub_02042860
	mov r0, #0xb
	b _0219B8B6
_0219B9E2:
	bl sub_020427A4
	cmp r0, #1
	bne _0219BA38
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219B9F6
	b _0219BA34
_0219B9F6:
	b _0219B8B4
_0219B9F8:
	bl sub_02040440
	mov r1, #9
	mov r2, #0x20
	bl sub_02040624
	mov r0, #0xa
	b _0219B8B6
_0219BA08:
	bl sub_02040440
	mov r1, #9
	mov r2, #0x20
	mov r5, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _0219BA24
	lsl r0, r5, #8
	bl sub_02040C64
	mov r0, #0xc
	str r0, [r4, #8]
_0219BA24:
	bl sub_020120C8
	cmp r0, #0
	beq _0219BA38
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_02040C64
_0219BA34:
	mov r0, #0xc
_0219BA36:
	str r0, [r4, #8]
_0219BA38:
	mov r0, #1
	lsl r0, r0, #0xa
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _0219BA84
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0219BA84
	mov r3, #0
	mov r1, #0xff
	add r2, r3, #0
	mov r0, #6
_0219BA54:
	add r6, r3, #0
	mul r6, r0
	add r5, r2, #0
	add r6, r4, r6
_0219BA5C:
	add r7, r6, r5
	add r5, r5, #1
	lsl r5, r5, #0x18
	add r7, #0x2e
	lsr r5, r5, #0x18
	strb r1, [r7]
	cmp r5, #6
	blo _0219BA5C
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _0219BA54
	add r0, r4, #0
	add r0, #0x2d
	ldrb r1, [r0]
	mov r0, #2
	add r4, #0x2d
	bic r1, r0
	strb r1, [r4]
_0219BA84:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BA88: .word ovy257_219bb70
_0219BA8C: .word 0x021B1904
	thumb_func_end ovy257_219b860

	thumb_func_start ovy257_219ba90
ovy257_219ba90: ; 0x0219BA90
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r5, _0219BAC0 ; =0x021B193C
	add r6, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #0xe
_0219BA9E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219BA9E
	add r0, r6, #0
	bl sub_021AAA54
	add r0, sp, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020425EC
	mov r0, #0
	bl sub_02042E9C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219BAC0: .word 0x021B193C
	thumb_func_end ovy257_219ba90

	thumb_func_start ovy257_219bac4
ovy257_219bac4: ; 0x0219BAC4
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bhi _0219BAF0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #5
	bne _0219BAE6
	mov r0, #0xc
	str r0, [r4, #8]
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_02040C64
	b _0219BB02
_0219BAE6:
	mov r0, #0
	bl sub_02042860
	mov r0, #0xb
	b _0219BB00
_0219BAF0:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #5
	bne _0219BAFE
	mov r0, #9
	b _0219BB00
_0219BAFE:
	mov r0, #8
_0219BB00:
	str r0, [r4, #8]
_0219BB02:
	mov r0, #0x5e
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy257_219bac4

	thumb_func_start sub_0219BB0C
sub_0219BB0C: ; 0x0219BB0C
	ldr r0, [r1, #8]
	cmp r0, #0xc
	bne _0219BB16
	mov r0, #1
	bx lr
_0219BB16:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BB0C

	thumb_func_start sub_0219BB1C
sub_0219BB1C: ; 0x0219BB1C
	mov r0, #0x5e
	lsl r0, r0, #2
	str r2, [r1, r0]
	bx lr
	thumb_func_end sub_0219BB1C

	thumb_func_start sub_0219BB24
sub_0219BB24: ; 0x0219BB24
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219BB24

	thumb_func_start ovy257_219bb2c
ovy257_219bb2c: ; 0x0219BB2C
	push {r4, r5}
	mov r0, #0x5f
	mov r5, #0
	lsl r0, r0, #2
_0219BB34:
	ldrb r4, [r2, r5]
	add r3, r1, r5
	strb r4, [r3, r0]
	add r3, r5, #1
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	cmp r5, #6
	blo _0219BB34
	pop {r4, r5}
	bx lr
	thumb_func_end ovy257_219bb2c

	thumb_func_start sub_0219BB48
sub_0219BB48: ; 0x0219BB48
	ldr r0, [r1, #8]
	cmp r0, #7
	bne _0219BB52
	mov r0, #1
	bx lr
_0219BB52:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BB48
_0219BB58:
	.byte 0x0C, 0x30, 0x70, 0x47, 0x34, 0x20, 0x70, 0x47
	.byte 0x20, 0x29, 0x01, 0xD0, 0x03, 0x29, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy257_219bb70
ovy257_219bb70: ; 0x0219BB70
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _0219BB84
	mov r0, #1
	pop {r3, pc}
_0219BB84:
	add r1, #0xc
	add r2, #0xa
	add r0, r1, #0
	add r1, r2, #0
	bl ovy257_219c0c8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_219bb70

	thumb_func_start ovy257_219bb94
ovy257_219bb94: ; 0x0219BB94
	push {r4, r5, r6, lr}
	ldr r6, _0219BBD8 ; =0x0000040C
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl sub_021AAA44
	add r1, r0, #0
	add r2, r4, #0
	ldr r0, [r5, r6]
	add r2, #0xa
	bl ovy257_21a166c
	cmp r0, #0
	beq _0219BBB6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219BBB6:
	add r0, r5, #0
	add r4, #0xa
	add r0, #0xc
	add r1, r4, #0
	bl ovy257_219c0c8
	add r4, r0, #0
	cmp r4, #1
	bne _0219BBD2
	ldr r0, [r5, r6]
	bl sub_021AAA1C
	bl sub_0219EF38
_0219BBD2:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0219BBD8: .word 0x0000040C
	thumb_func_end ovy257_219bb94
_0219BBDC:
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy257_219bbe0
ovy257_219bbe0: ; 0x0219BBE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x20]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _0219BC4E
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _0219BC98
	add r0, r6, #0
	bl sub_021AAA0C
	mov r3, #0
	add r1, r0, #0
	mov r0, #1
	add r5, r4, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	add r0, r4, #0
	str r3, [r4, #0x74]
	str r3, [r4, #0x7c]
	add r3, r4, #0
	mov r2, #0xff
	add r0, #0x78
	strb r2, [r0]
	add r5, #0x40
	add r3, #0x80
	mov r2, #0x22
_0219BC2C:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0219BC2C
	add r0, r4, #0
	mov r2, #1
	add r0, #0x2c
	strb r2, [r0]
	strb r2, [r4, #4]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219b0bc
	b _0219BC98
_0219BC4E:
	bl sub_02042A78
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, #4]
	cmp r0, r5
	beq _0219BC98
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219bf44
	add r0, r6, #0
	bl ovy257_21aad08
	ldrb r0, [r4, #4]
	cmp r0, r5
	bhs _0219BC88
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219BC88
	mov r7, #0xfa
	mov r0, #1
	lsl r7, r7, #2
	str r0, [r4, r7]
	add r0, r6, #0
	bl sub_021AAADC
	add r1, r7, #4
	str r0, [r4, r1]
_0219BC88:
	mov r0, #0xf9
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x2c
	strb r5, [r4, #4]
	strb r5, [r0]
_0219BC98:
	add r7, r4, #0
	mov r5, #0
	add r7, #0x64
_0219BC9E:
	lsl r2, r5, #6
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, r2
	add r3, r5, #0
	bl ovy257_219c12c
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219BC9E
	add r0, r6, #0
	bl sub_021AAA1C
	mov r1, #1
	str r0, [sp, #0x1c]
	str r1, [sp, #0x18]
	bl sub_0219EF28
	add r7, r4, #0
	str r0, [sp, #0x14]
	mov r5, #0
	add r7, #0x64
_0219BCCE:
	lsl r2, r5, #6
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, r2
	add r3, r5, #0
	bl ovy257_219c224
	cmp r0, #0
	beq _0219BCE4
	mov r0, #0
	str r0, [sp, #0x18]
_0219BCE4:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219BCCE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0219BCFA
	ldr r0, [sp, #0x1c]
	mov r1, #1
	b _0219BCFE
_0219BCFA:
	ldr r0, [sp, #0x1c]
	mov r1, #0
_0219BCFE:
	bl sub_0219EF20
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _0219BD1C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219BD1C
	add r0, r6, #0
	bl sub_021AAA1C
	mov r1, #1
	bl sub_0219EF30
_0219BD1C:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bhi _0219BD24
	b _0219BE6A
_0219BD24:
	mov r5, #0x61
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _0219BD3C
	bl sub_02043B10
	cmp r0, #1
	bne _0219BDF4
	mov r0, #0
	str r0, [r4, r5]
	b _0219BDF4
_0219BD3C:
	sub r0, r5, #2
	ldrb r1, [r4, r0]
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	and r0, r1
	cmp r1, r0
	bne _0219BDF4
	cmp r1, #0
	beq _0219BDF4
	add r0, r6, #0
	bl sub_021AAB5C
	cmp r0, #0
	bne _0219BDF4
	add r0, r6, #0
	mov r1, #1
	bl sub_021AAB60
	add r0, r6, #0
	bl sub_021AAB10
	cmp r0, #0
	bne _0219BDEC
	add r0, r6, #0
	bl sub_021AAA0C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy257_219b194
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy257_219b1d8
	str r0, [sp, #0x28]
	add r1, r5, #0
	add r1, #8
	ldr r0, [sp, #0x24]
	ldr r1, [r4, r1]
	ldr r2, [sp, #0x28]
	blx MIi_CpuCopy32
	add r0, r6, #0
	add r1, r7, #0
	bl ovy257_219b134
	str r0, [sp, #0x2c]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy257_219b164
	ldr r1, [sp, #0x2c]
	add r3, r5, #4
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [sp, #0x28]
	ldr r3, [r4, r3]
	bl ovy257_21ae288
	add r1, r0, #0
	beq _0219BDEC
	add r0, r5, #0
	sub r2, r5, #2
	add r0, #0xc
	ldrb r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0
	mov r7, #0
	bl sub_0204393C
	sub r0, r5, #1
	strb r7, [r4, r0]
	mov r0, #1
	str r0, [r4, r5]
_0219BDEC:
	add r0, r6, #0
	mov r1, #0
	bl sub_021AAB60
_0219BDF4:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0219BE14
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219BE14
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219c68c
_0219BE14:
	mov r7, #0xfd
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	cmp r0, #1
	bne _0219BE32
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0
	mov r5, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219BE32
	str r5, [r4, r7]
_0219BE32:
	mov r7, #0xff
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	cmp r0, #1
	bne _0219BE50
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	mov r5, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219BE50
	str r5, [r4, r7]
_0219BE50:
	mov r5, #0xf9
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _0219BE6A
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219c74c
	cmp r0, #1
	bne _0219BE6A
	mov r0, #0
	str r0, [r4, r5]
_0219BE6A:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219BF2C
	mov r5, #0xfa
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _0219BE90
	add r3, r5, #4
	ldr r3, [r4, r3]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ovy257_219c284
	cmp r0, #1
	bne _0219BE90
	mov r0, #0
	str r0, [r4, r5]
_0219BE90:
	mov r5, #0x3e
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _0219BEEC
	add r3, r5, #0
	mov r7, #0
	mov r0, #0
	add r3, #0x28
	add r5, #0x28
_0219BEA4:
	lsl r1, r0, #6
	add r1, r4, r1
	ldr r2, [r1, #0x74]
	cmp r2, #1
	bne _0219BEBC
	ldrb r2, [r4, r5]
	cmp r2, #0xff
	bne _0219BEB6
	strb r0, [r4, r3]
_0219BEB6:
	mov r2, #0
	mov r7, #1
	str r2, [r1, #0x74]
_0219BEBC:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _0219BEA4
	cmp r7, #0
	bne _0219BED0
	ldr r0, _0219BF30 ; =0x00000408
	mov r1, #0xff
	strb r1, [r4, r0]
_0219BED0:
	ldr r0, _0219BF30 ; =0x00000408
	add r1, r0, #0
	sub r1, #0x5a
	ldrb r2, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r2, r1
	beq _0219BEE4
	mov r1, #1
	sub r0, r0, #4
	str r1, [r4, r0]
_0219BEE4:
	mov r0, #0x3e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_0219BEEC:
	ldr r1, _0219BF30 ; =0x00000408
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _0219BF0E
	lsl r0, r0, #6
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	bne _0219BF0E
	mov r0, #0xff
	strb r0, [r4, r1]
	sub r0, r1, #4
	mov r2, #1
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0x28
	str r0, [r4, r1]
_0219BF0E:
	ldr r5, _0219BF34 ; =0x00000404
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _0219BF2C
	add r3, r5, #4
	ldrb r3, [r4, r3]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy257_219c284
	cmp r0, #1
	bne _0219BF2C
	mov r0, #0
	str r0, [r4, r5]
_0219BF2C:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BF30: .word 0x00000408
_0219BF34: .word 0x00000404
	thumb_func_end ovy257_219bbe0

	thumb_func_start sub_0219BF38
sub_0219BF38: ; 0x0219BF38
	ldr r3, _0219BF40 ; =sub_02175658
	mov r0, #5
	bx r3
	nop
_0219BF40: .word sub_02175658
	thumb_func_end sub_0219BF38

	thumb_func_start ovy257_219bf44
ovy257_219bf44: ; 0x0219BF44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0
	add r5, r1, #0
	str r0, [sp, #0x14]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl sub_021AAA54
	str r0, [sp, #0xc]
	mov r7, #0
_0219BF68:
	add r0, r7, #0
	bl sub_02042A80
	cmp r0, #1
	bne _0219C026
	lsl r0, r7, #6
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r0, #0x64]
	cmp r0, #0
	bne _0219C01A
	ldr r0, [sp]
	bl sub_021AAA0C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0x64]
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bne _0219BF98
	ldr r0, [sp, #4]
	str r1, [r0, #0x70]
	b _0219C00C
_0219BF98:
	mov r0, #0x17
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	mov r4, #0
	mov r0, #1
_0219BFA2:
	add r2, r0, #0
	lsl r2, r4
	str r2, [sp, #0x20]
	tst r2, r1
	bne _0219BFE2
	lsl r3, r4, #2
	add r6, r5, r3
	mov r3, #0x59
	lsl r3, r3, #2
	mov r0, #3
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, r3]
	lsl r0, r0, #0xe
	add r1, r7, #0
	bl sub_020439A4
	ldr r0, [sp, #0x1c]
	add r0, #0xc
	ldrb r1, [r5, r0]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	ldr r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	strb r1, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #0x78
	strb r4, [r0]
	b _0219BFEC
_0219BFE2:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #3
	blo _0219BFA2
_0219BFEC:
	ldr r3, _0219C0C0 ; =0x00000182
	mov r2, #1
	lsl r2, r7
	lsl r2, r2, #0x18
	ldrb r1, [r5, r3]
	lsr r2, r2, #0x18
	mov r0, #1
	orr r1, r2
	strb r1, [r5, r3]
	ldr r1, [sp, #4]
	str r0, [r1, #0x7c]
	ldr r0, [sp]
	bl sub_021AAA1C
	bl sub_0219EF44
_0219C00C:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl sub_0219B49C
	mov r0, #1
	str r0, [sp, #0x14]
_0219C01A:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	b _0219C088
_0219C026:
	lsl r6, r7, #6
	add r4, r5, r6
	ldr r0, [r4, #0x64]
	cmp r0, #1
	bne _0219C088
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x70]
	cmp r0, #0
	bne _0219C056
	add r0, r7, #0
	bl sub_02043A1C
	add r4, #0x78
	mov r0, #0x17
	lsl r0, r0, #4
	ldrb r3, [r4]
	mov r1, #1
	ldrb r2, [r5, r0]
	lsl r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	sub r1, r2, r1
	strb r1, [r5, r0]
_0219C056:
	ldr r0, _0219C0C4 ; =0x000003AE
	ldrb r0, [r5, r0]
	cmp r0, r7
	bne _0219C066
	mov r0, #0x65
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219C066:
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, _0219C0C0 ; =0x00000182
	lsl r1, r7
	lsl r1, r1, #0x18
	ldrb r0, [r5, r2]
	lsr r1, r1, #0x18
	sub r0, r0, r1
	strb r0, [r5, r2]
	add r2, r5, #0
	add r2, #0x64
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r2, r6
	bl sub_0219C10C
_0219C088:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	bhs _0219C094
	b _0219BF68
_0219C094:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0219C0AA
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl sub_021AAABC
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl sub_021AAB0C
_0219C0AA:
	ldr r0, [sp]
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0
	mov r3, #1
	bl ovy257_219b0bc
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C0C0: .word 0x00000182
_0219C0C4: .word 0x000003AE
	thumb_func_end ovy257_219bf44

	thumb_func_start ovy257_219c0c8
ovy257_219c0c8: ; 0x0219C0C8
	push {r4, r5, r6, r7}
	mov r2, #0
_0219C0CC:
	mov r5, #6
	mul r5, r2
	mov r4, #1
	mov r3, #0
	add r5, r0, r5
_0219C0D6:
	add r6, r5, r3
	add r6, #0x22
	ldrb r7, [r6]
	ldrb r6, [r1, r3]
	cmp r7, r6
	beq _0219C0E6
	mov r4, #0
	b _0219C0F0
_0219C0E6:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #6
	blo _0219C0D6
_0219C0F0:
	cmp r4, #1
	bne _0219C0FA
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0219C0FA:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #3
	blo _0219C0CC
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_219c0c8

	thumb_func_start sub_0219C10C
sub_0219C10C: ; 0x0219C10C
	mov r1, #0
	mov r0, #0xff
	str r1, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0x10]
	strb r0, [r2, #0x14]
	str r1, [r2, #0x18]
	add r2, #0x1c
	add r0, r2, #0
	ldr r3, _0219C128 ; =MI_CpuFill8
	mov r2, #0x22
	bx r3
	.align 2, 0
_0219C128: .word MI_CpuFill8
	thumb_func_end sub_0219C10C

	thumb_func_start ovy257_219c12c
ovy257_219c12c: ; 0x0219C12C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r5, r0, #0
	str r1, [sp, #8]
	add r6, r3, #0
	bl sub_021AAA0C
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0219C21E
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0219C21E
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219C16E
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0219C16E
	add r0, r5, #0
	bl sub_021AAB3C
	cmp r0, #0
	bne _0219C16A
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1c
	bl ovy257_21aae54
_0219C16A:
	mov r0, #1
	str r0, [r4, #8]
_0219C16E:
	ldr r0, [r4, #0x18]
	cmp r0, #4
	bhi _0219C21E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219C180: ; jump table
	.short _0219C21E - _0219C180 - 2 ; case 0
	.short _0219C18A - _0219C180 - 2 ; case 1
	.short _0219C1A2 - _0219C180 - 2 ; case 2
	.short _0219C1BE - _0219C180 - 2 ; case 3
	.short _0219C21E - _0219C180 - 2 ; case 4
_0219C18A:
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219C21E
	mov r0, #2
	add sp, #0x18
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0219C1A2:
	add r0, r6, #0
	bl sub_02043B24
	cmp r0, #0
	bne _0219C21E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0219B0A0
	mov r0, #3
	add sp, #0x18
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0219C1BE:
	add r0, r6, #0
	bl sub_02043B24
	cmp r0, #1
	bne _0219C21E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy257_219b1ac
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy257_219b134
	add r1, sp, #0x14
	strh r0, [r1, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy257_219b164
	add r1, sp, #0x14
	strh r0, [r1]
	add r0, r6, #0
	bl sub_02043A80
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02043AC8
	add r1, r0, #0
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r3, sp, #0x14
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r3, #2
	bl ovy257_21ac414
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0219B090
	mov r0, #1
	str r0, [r4, #0x18]
_0219C21E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219c12c

	thumb_func_start ovy257_219c224
ovy257_219c224: ; 0x0219C224
	push {r4, lr}
	add r4, r2, #0
	bl sub_021AAA0C
	ldr r0, [r4]
	cmp r0, #0
	bne _0219C236
	mov r0, #0
	pop {r4, pc}
_0219C236:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0219C240
	mov r0, #0
	pop {r4, pc}
_0219C240:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0219C24A
	mov r0, #0
	pop {r4, pc}
_0219C24A:
	add r4, #0x1c
	add r0, r4, #0
	bl sub_02008BFC
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls _0219C260
	mov r0, #1
	pop {r4, pc}
_0219C260:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_219c224

	thumb_func_start ovy257_219c264
ovy257_219c264: ; 0x0219C264
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #2
	add r3, r4, #0
	add r5, r1, #0
	bl ovy257_219c284
	cmp r0, #0
	bne _0219C282
	mov r0, #0xfa
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
_0219C282:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219c264

	thumb_func_start ovy257_219c284
ovy257_219c284: ; 0x0219C284
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	add r1, sp, #0x10
	strb r5, [r1, #4]
	str r4, [sp, #0x10]
	add r1, sp, #0x10
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xff
	lsl r2, r2, #0xd
	mov r3, #8
	bl sub_02042C18
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_219c284

	thumb_func_start ovy257_219c2b4
ovy257_219c2b4: ; 0x0219C2B4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	add r1, sp, #0x10
	strb r5, [r1, #4]
	str r4, [sp, #0x10]
	add r1, sp, #0x10
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #0xff
	lsl r2, r2, #0xd
	mov r3, #8
	bl sub_02042C18
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_219c2b4

	thumb_func_start ovy257_219c2e4
ovy257_219c2e4: ; 0x0219C2E4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	add r6, r0, #0
	add r0, sp, #0x10
	strb r5, [r0, #4]
	add r0, r4, #0
	add r4, sp, #0x10
	add r1, r4, #0
	mov r2, #4
	blx MI_CpuCopy8
	str r4, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xff
	lsl r2, r2, #0xd
	mov r3, #8
	bl sub_02042C18
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_219c2e4

	thumb_func_start ovy257_219c320
ovy257_219c320: ; 0x0219C320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r6, r0, #0
	add r4, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	add r5, r0, #0
	ldrb r0, [r7, #4]
	cmp r0, #0x11
	bhi _0219C42A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219C346: ; jump table
	.short _0219C36A - _0219C346 - 2 ; case 0
	.short _0219C382 - _0219C346 - 2 ; case 1
	.short _0219C3D8 - _0219C346 - 2 ; case 2
	.short _0219C3BA - _0219C346 - 2 ; case 3
	.short _0219C406 - _0219C346 - 2 ; case 4
	.short _0219C416 - _0219C346 - 2 ; case 5
	.short _0219C426 - _0219C346 - 2 ; case 6
	.short _0219C43E - _0219C346 - 2 ; case 7
	.short _0219C47E - _0219C346 - 2 ; case 8
	.short _0219C49E - _0219C346 - 2 ; case 9
	.short _0219C578 - _0219C346 - 2 ; case 10
	.short _0219C4B8 - _0219C346 - 2 ; case 11
	.short _0219C4DE - _0219C346 - 2 ; case 12
	.short _0219C4F6 - _0219C346 - 2 ; case 13
	.short _0219C50C - _0219C346 - 2 ; case 14
	.short _0219C534 - _0219C346 - 2 ; case 15
	.short _0219C54A - _0219C346 - 2 ; case 16
	.short _0219C562 - _0219C346 - 2 ; case 17
_0219C36A:
	cmp r6, r5
	beq _0219C42A
	ldr r1, _0219C588 ; =0x00000183
	mov r0, #1
	lsl r0, r6
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	add sp, #8
	orr r0, r2
	strb r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0219C382:
	ldr r2, [r7]
	ldr r5, _0219C58C ; =0x000003AE
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	strb r1, [r4, r5]
	cmp r2, #0xff
	beq _0219C39C
	add r5, #0x5e
	ldr r0, [r4, r5]
	bl ovy257_21aad74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C39C:
	add r0, r5, #0
	add r0, #0x5e
	ldr r0, [r4, r0]
	bl sub_021AAA24
	add r5, #0x5e
	add r6, r0, #0
	ldr r0, [r4, r5]
	bl sub_021AAE44
	add r0, r6, #0
	bl sub_0219F1E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C3BA:
	ldr r5, _0219C590 ; =0x0000040C
	ldr r0, [r4, r5]
	bl sub_021AAA34
	ldr r1, [r7]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0219A818
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_021AAB30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C3D8:
	ldr r6, _0219C590 ; =0x0000040C
	ldr r0, [r4, r6]
	bl sub_021AAA0C
	str r0, [sp, #4]
	ldr r0, [r4, r6]
	ldr r5, [r7]
	bl sub_021AAADC
	cmp r5, r0
	beq _0219C42A
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_021AAB04
	ldr r0, [r4, r6]
	ldr r1, [sp, #4]
	mov r2, #1
	mov r3, #0
	bl ovy257_219b0bc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C406:
	cmp r6, r5
	beq _0219C42A
	mov r0, #0x3f
	mov r1, #1
	lsl r0, r0, #4
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219C416:
	cmp r6, r5
	beq _0219C42A
	mov r0, #0xfe
	mov r1, #1
	lsl r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219C426:
	cmp r5, #0
	beq _0219C42C
_0219C42A:
	b _0219C582
_0219C42C:
	lsl r0, r6, #6
	mov r1, #1
	add r0, r4, r0
	str r1, [r0, #0x74]
	mov r0, #0x3e
	lsl r0, r0, #4
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219C43E:
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA24
	cmp r6, r5
	bne _0219C464
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	mov r3, #0
	str r1, [sp]
	add r1, r2, #4
	sub r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r1, [r4, r1]
	bl ovy257_219f19c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C464:
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	mov r3, #0x7f
	str r1, [sp]
	add r1, r2, #4
	sub r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r1, [r4, r1]
	bl ovy257_219f19c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C47E:
	cmp r5, #0
	bne _0219C492
	lsl r0, r6, #6
	mov r1, #0
	add r0, r4, r0
	str r1, [r0, #0x74]
	mov r0, #0x3e
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_0219C492:
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAE44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C49E:
	ldr r0, _0219C58C ; =0x000003AE
	ldrb r1, [r4, r0]
	cmp r6, r1
	bne _0219C4AC
	mov r1, #1
	add r0, #0x32
	str r1, [r4, r0]
_0219C4AC:
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAE44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C4B8:
	cmp r5, #0
	beq _0219C582
	ldr r6, _0219C590 ; =0x0000040C
	ldr r0, [r4, r6]
	bl sub_021AAA1C
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl sub_021AAA3C
	ldr r1, [r7]
	bl sub_021A26DC
	add r0, r5, #0
	mov r1, #1
	bl sub_0219EE38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C4DE:
	cmp r5, #0
	bne _0219C582
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_0219EE6C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C4F6:
	cmp r5, #0
	bne _0219C582
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	mov r1, #1
	bl sub_0219EE44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C50C:
	cmp r5, #0
	beq _0219C51E
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	mov r1, #1
	bl sub_0219EE5C
_0219C51E:
	cmp r6, #0
	bne _0219C582
	mov r1, #0xf7
	lsl r1, r1, #2
	add r0, r7, #0
	add r1, r4, r1
	mov r2, #4
	blx MI_CpuCopy8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C534:
	cmp r5, #0
	beq _0219C582
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	mov r1, #1
	bl sub_0219EE4C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C54A:
	cmp r5, #0
	bne _0219C582
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_0219EECC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C562:
	cmp r5, #0
	beq _0219C582
	ldr r0, _0219C590 ; =0x0000040C
	ldr r0, [r4, r0]
	bl sub_021AAA1C
	mov r1, #1
	bl sub_0219EE64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C578:
	ldr r0, _0219C590 ; =0x0000040C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_021AAB38
_0219C582:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C588: .word 0x00000183
_0219C58C: .word 0x000003AE
_0219C590: .word 0x0000040C
	thumb_func_end ovy257_219c320

	thumb_func_start ovy257_219c594
ovy257_219c594: ; 0x0219C594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl sub_02040440
	str r6, [sp]
	mov r7, #1
	str r7, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r3, [r6]
	ldr r2, _0219C5C8 ; =0x00002001
	mov r1, #0xff
	add r3, #8
	mov r4, #0xff
	bl sub_02042C18
	cmp r0, #0
	beq _0219C5C2
	add r4, #0x95
	str r7, [r5, r4]
_0219C5C2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C5C8: .word 0x00002001
	thumb_func_end ovy257_219c594

	thumb_func_start ovy257_219c5cc
ovy257_219c5cc: ; 0x0219C5CC
	push {r3, r4, r5, lr}
	mov r4, #0x65
	lsl r4, r4, #2
	add r5, r1, #0
	mov r0, #1
	add r1, r4, #0
	str r0, [r5, r4]
	add r1, #0x10
	add r2, r4, #0
	ldr r1, [r5, r1]
	mov r0, #0
	add r2, #0x74
	blx MIi_CpuClear32
	add r4, #0x10
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_219c5cc

	thumb_func_start ovy257_219c5f0
ovy257_219c5f0: ; 0x0219C5F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, _0219C684 ; =0x0000040C
	add r5, r3, #0
	ldr r0, [r5, r0]
	bl sub_021AAA24
	add r7, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r6, r4, #0
	add r6, #8
	bl sub_02040440
	bl sub_02042A6C
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0219C62E
	bl sub_0219A360
	mov r1, #0x69
	lsl r1, r1, #2
	add r1, r1, #4
	mov r2, #0x32
	ldr r1, [r5, r1]
	mov r0, #0
	lsl r2, r2, #0xa
	blx MIi_CpuClear32
_0219C62E:
	mov r2, #0x6a
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	add r1, r6, #0
	lsl r2, r2, #0xb
	add r2, r3, r2
	ldrh r3, [r4]
	bl ovy257_219f144
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0219C678
	ldr r3, _0219C688 ; =0x021B18F0
	add r2, sp, #0
	mov r1, #9
_0219C650:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0219C650
	ldrb r0, [r4, #6]
	mov r2, #1
	lsl r1, r0, #1
	add r0, sp, #0
	ldrh r1, [r0, r1]
	mov r0, #0x1a
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #8
	str r2, [r5, r1]
	ldrh r1, [r4, #2]
	sub r0, r0, #4
	strh r1, [r5, r0]
_0219C678:
	mov r0, #0x65
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C684: .word 0x0000040C
_0219C688: .word 0x021B18F0
	thumb_func_end ovy257_219c5f0

	thumb_func_start ovy257_219c68c
ovy257_219c68c: ; 0x0219C68C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	mov r1, #0x6b
	lsl r1, r1, #2
	ldrb r2, [r5, r1]
	add r1, r1, #1
	ldrb r1, [r5, r1]
	cmp r1, r2
	bls _0219C6A8
	mov r2, #0x40
	b _0219C6A8
_0219C6A8:
	sub r2, r2, r1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #8
	bls _0219C6B4
	mov r4, #8
_0219C6B4:
	cmp r4, #0
	beq _0219C700
	ldr r2, _0219C708 ; =0x000001AE
	lsl r1, r1, #3
	add r2, r5, r2
	add r1, r2, r1
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, _0219C70C ; =0x00002002
	mov r1, #0xff
	lsl r3, r4, #3
	mov r6, #0xff
	bl sub_02042C18
	cmp r0, #0
	beq _0219C702
	add r2, r6, #0
	add r2, #0xae
	ldrb r2, [r5, r2]
	add r1, r6, #0
	add r1, #0xae
	add r3, r2, r4
	add r2, r6, #0
	add r2, #0xae
	add r6, #0xae
	strb r3, [r5, r2]
	ldrb r2, [r5, r6]
	cmp r2, #0x40
	blo _0219C702
	ldrb r2, [r5, r1]
	add sp, #0x10
	sub r2, #0x40
	strb r2, [r5, r1]
	pop {r4, r5, r6, pc}
_0219C700:
	mov r0, #1
_0219C702:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0219C708: .word 0x000001AE
_0219C70C: .word 0x00002002
	thumb_func_end ovy257_219c68c

	thumb_func_start ovy257_219c710
ovy257_219c710: ; 0x0219C710
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0219C748 ; =0x0000040C
	add r4, r1, #0
	ldr r0, [r3, r0]
	add r6, r2, #0
	bl sub_021AAA34
	add r7, r0, #0
	lsl r0, r4, #0x15
	lsr r4, r0, #0x18
	bl sub_02040440
	bl sub_02042A6C
	mov r5, #0
	cmp r4, #0
	bls _0219C746
_0219C732:
	lsl r1, r5, #3
	add r0, r7, #0
	add r1, r6, r1
	bl ovy257_219a7f8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r4
	blo _0219C732
_0219C746:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C748: .word 0x0000040C
	thumb_func_end ovy257_219c710

	thumb_func_start ovy257_219c74c
ovy257_219c74c: ; 0x0219C74C
	push {r4, lr}
	sub sp, #0x10
	bl sub_0219CCC8
	add r4, r0, #0
	bl sub_02040440
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0219C774 ; =0x00002003
	mov r1, #0xff
	mov r3, #0x22
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_0219C774: .word 0x00002003
	thumb_func_end ovy257_219c74c

	thumb_func_start ovy257_219c778
ovy257_219c778: ; 0x0219C778
	push {r3, lr}
	add r2, r3, #0
	add r2, #0x68
	lsl r1, r0, #6
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _0219C792
	mov r0, #1
	str r0, [r2, r1]
	ldr r0, _0219C794 ; =0x0000040C
	ldr r0, [r3, r0]
	bl ovy257_21aad08
_0219C792:
	pop {r3, pc}
	.align 2, 0
_0219C794: .word 0x0000040C
	thumb_func_end ovy257_219c778
_0219C798:
	.byte 0x02, 0x1C, 0x03, 0x48, 0x12, 0x06, 0x08, 0x58
	.byte 0x02, 0x4B, 0x12, 0x0E, 0x18, 0x47, 0xC0, 0x46, 0x0C, 0x04, 0x00, 0x00, 0xC1, 0xCC, 0x19, 0x02

	thumb_func_start ovy257_219c7b0
ovy257_219c7b0: ; 0x0219C7B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA3C
	str r0, [sp]
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	mov r6, #0
	bl sub_02042A78
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #4]
	cmp r0, r1
	beq _0219C7DE
	add r0, r5, #0
	bl sub_021AAAAC
	pop {r3, r4, r5, r6, r7, pc}
_0219C7DE:
	cmp r7, #0
	bne _0219C7F6
	ldr r0, [sp]
	bl sub_021A26F0
	cmp r0, #1
	bne _0219C7F6
	ldr r0, [sp]
	bl sub_021A2A00
	ldr r1, _0219C87C ; =0x000003BE
	strh r0, [r4, r1]
_0219C7F6:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bls _0219C858
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219C81A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219c890
	cmp r0, #1
	bne _0219C81A
	mov r0, #0x3d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_0219C81A:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219C83A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219c9f0
	cmp r0, #1
	bne _0219C83A
	mov r0, #0xf5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r6, #1
_0219C83A:
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219C858
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219cbf8
	cmp r0, #1
	bne _0219C858
	mov r0, #0xf6
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0219C858:
	cmp r7, #0
	bne _0219C87A
	ldr r0, [sp]
	bl sub_021A26F0
	cmp r0, #1
	bne _0219C87A
	cmp r6, #0
	bne _0219C87A
	mov r0, #0xee
	mov r1, #2
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219c9f0
_0219C87A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C87C: .word 0x000003BE
	thumb_func_end ovy257_219c7b0

	thumb_func_start sub_0219C880
sub_0219C880: ; 0x0219C880
	mov r0, #0x3d
	mov r3, #1
	lsl r0, r0, #4
	str r3, [r1, r0]
	sub r0, #0x20
	strh r2, [r1, r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C880

	thumb_func_start ovy257_219c890
ovy257_219c890: ; 0x0219C890
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x3b
	lsl r1, r1, #4
	add r1, r4, r1
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0219C8BC ; =0x00002004
	mov r1, #0xff
	mov r3, #2
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_0219C8BC: .word 0x00002004
	thumb_func_end ovy257_219c890

	thumb_func_start ovy257_219c8c0
ovy257_219c8c0: ; 0x0219C8C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219C950 ; =0x0000040C
	add r6, r2, #0
	ldr r0, [r3, r0]
	bl sub_021AAA3C
	add r4, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	ldrh r1, [r6]
	cmp r1, #5
	bhi _0219C94C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219C8EA: ; jump table
	.short _0219C8F6 - _0219C8EA - 2 ; case 0
	.short _0219C906 - _0219C8EA - 2 ; case 1
	.short _0219C914 - _0219C8EA - 2 ; case 2
	.short _0219C922 - _0219C8EA - 2 ; case 3
	.short _0219C930 - _0219C8EA - 2 ; case 4
	.short _0219C940 - _0219C8EA - 2 ; case 5
_0219C8F6:
	cmp r0, #0
	bne _0219C94C
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy257_21a2728
	pop {r4, r5, r6, pc}
_0219C906:
	cmp r0, #0
	bne _0219C94C
	add r0, r4, #0
	mov r1, #1
	bl sub_021A26FC
	pop {r4, r5, r6, pc}
_0219C914:
	cmp r0, #0
	beq _0219C94C
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2714
	pop {r4, r5, r6, pc}
_0219C922:
	cmp r0, #0
	beq _0219C94C
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2708
	pop {r4, r5, r6, pc}
_0219C930:
	cmp r0, #0
	bne _0219C94C
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy257_21a2744
	pop {r4, r5, r6, pc}
_0219C940:
	cmp r0, #0
	beq _0219C94C
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2720
_0219C94C:
	pop {r4, r5, r6, pc}
	nop
_0219C950: .word 0x0000040C
	thumb_func_end ovy257_219c8c0

	thumb_func_start ovy257_219c954
ovy257_219c954: ; 0x0219C954
	push {r0, r1, r2, r3}
	thumb_func_end ovy257_219c954

	non_word_aligned_thumb_func_start ovy257_219c956
ovy257_219c956: ; 0x0219C956
	push {r4, r5, r6, r7}
	mov r1, #0xf5
	add r2, r0, #0
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, sp, #0x20
	ldrb r0, [r0]
	cmp r0, #7
	bne _0219C986
	add r0, sp, #0x1c
	add r0, #2
	ldrh r3, [r0]
	add r0, r1, #0
	sub r0, #0x16
	ldrh r0, [r2, r0]
	cmp r3, r0
	bne _0219C986
	add r0, sp, #0x1c
	sub r1, #0x18
	ldrb r3, [r0]
	ldrb r1, [r2, r1]
	orr r1, r3
	strb r1, [r0]
_0219C986:
	add r0, sp, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	bne _0219C9CE
	add r0, sp, #0x1c
	add r0, #2
	ldr r3, _0219C9EC ; =0x000003BE
	ldrh r1, [r0]
	ldrh r0, [r2, r3]
	cmp r1, r0
	bne _0219C9CE
	mov r1, #0
	add r5, sp, #0x14
	mov r0, #1
	sub r3, #0xa
	add r4, sp, #0x1c
_0219C9A6:
	add r6, r0, #0
	ldrb r7, [r4]
	lsl r6, r1
	tst r6, r7
	bne _0219C9B6
	add r6, r2, r1
	ldrb r6, [r6, r3]
	strb r6, [r5, r1]
_0219C9B6:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _0219C9A6
	mov r0, #0xef
	add r1, sp, #0x1c
	lsl r0, r0, #2
	ldrb r3, [r1]
	ldrb r0, [r2, r0]
	orr r0, r3
	strb r0, [r1]
_0219C9CE:
	add r5, sp, #0x14
	mov r3, #0xed
	lsl r3, r3, #2
	ldmia r5!, {r0, r1}
	add r4, r2, r3
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	add r0, sp, #0x20
	ldrb r1, [r0]
	add r0, r3, #4
	strb r1, [r2, r0]
	pop {r4, r5, r6, r7}
	add sp, #0x10
	bx lr
	.align 2, 0
_0219C9EC: .word 0x000003BE
	thumb_func_end ovy257_219c956

	thumb_func_start ovy257_219c9f0
ovy257_219c9f0: ; 0x0219C9F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	mov r6, #0xed
	lsl r6, r6, #2
	add r1, r5, r6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r7, #0
	ldr r2, _0219CA2C ; =0x00002005
	mov r1, #0xff
	mov r3, #0xc
	str r7, [sp, #0xc]
	bl sub_02042C18
	add r4, r0, #0
	beq _0219CA24
	add r0, r5, r6
	add r1, r7, #0
	mov r2, #0xc
	blx MI_CpuFill8
_0219CA24:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CA2C: .word 0x00002005
	thumb_func_end ovy257_219c9f0

	thumb_func_start ovy257_219ca30
ovy257_219ca30: ; 0x0219CA30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219CB10 ; =0x0000040C
	add r1, r3, #0
	ldr r0, [r1, r0]
	str r3, [sp]
	add r4, r2, #0
	bl sub_021AAA3C
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	ldr r1, [sp]
	ldr r0, _0219CB10 ; =0x0000040C
	ldr r0, [r1, r0]
	bl sub_021AAAB4
	cmp r0, #1
	beq _0219CB0E
	cmp r6, #0
	bne _0219CA72
	add r0, r5, #0
	bl sub_021A26F0
	cmp r0, #1
	bne _0219CA72
	ldrh r1, [r4, #0xa]
	add r0, r5, #0
	bl sub_021A29E4
_0219CA72:
	ldrb r0, [r4, #4]
	cmp r0, #7
	bhi _0219CB0E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CA84: ; jump table
	.short _0219CA94 - _0219CA84 - 2 ; case 0
	.short _0219CA9E - _0219CA84 - 2 ; case 1
	.short _0219CB0E - _0219CA84 - 2 ; case 2
	.short _0219CAAC - _0219CA84 - 2 ; case 3
	.short _0219CAC8 - _0219CA84 - 2 ; case 4
	.short _0219CAD4 - _0219CA84 - 2 ; case 5
	.short _0219CAE6 - _0219CA84 - 2 ; case 6
	.short _0219CAF8 - _0219CA84 - 2 ; case 7
_0219CA94:
	ldrb r1, [r4, #7]
	add r0, r5, #0
	bl ovy257_21a2898
	pop {r3, r4, r5, r6, r7, pc}
_0219CA9E:
	cmp r6, #0
	bne _0219CB0E
	ldr r1, [r4]
	add r0, r5, #0
	bl sub_021A29D8
	pop {r3, r4, r5, r6, r7, pc}
_0219CAAC:
	cmp r7, #0
	bne _0219CB0E
	add r0, r5, #0
	bl sub_021A26F0
	cmp r0, #1
	bne _0219CB0E
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy257_21a2a0c
	pop {r3, r4, r5, r6, r7, pc}
_0219CAC8:
	ldrb r2, [r4, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a2a6c
	pop {r3, r4, r5, r6, r7, pc}
_0219CAD4:
	cmp r7, #0
	bne _0219CB0E
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl ovy257_21a2be0
	pop {r3, r4, r5, r6, r7, pc}
_0219CAE6:
	cmp r7, #0
	bne _0219CB0E
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy257_21a2be0
	pop {r3, r4, r5, r6, r7, pc}
_0219CAF8:
	cmp r6, #0
	bne _0219CB0E
	add r0, r5, #0
	bl sub_021A26F0
	cmp r0, #1
	bne _0219CB0E
	ldrb r1, [r4, #8]
	add r0, r5, #0
	bl ovy257_21a2c88
_0219CB0E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CB10: .word 0x0000040C
	thumb_func_end ovy257_219ca30

	thumb_func_start ovy257_219cb14
ovy257_219cb14: ; 0x0219CB14
	push {r0, r1, r2, r3}
	mov r1, #0xf6
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	sub r1, #0x18
	add r3, sp, #4
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add sp, #0x10
	bx lr
	thumb_func_end ovy257_219cb14

	thumb_func_start sub_0219CB30
sub_0219CB30: ; 0x0219CB30
	ldr r0, _0219CB38 ; =ovy257_219bb94
	ldr r3, _0219CB3C ; =sub_02175334
	bx r3
	nop
_0219CB38: .word ovy257_219bb94
_0219CB3C: .word sub_02175334
	thumb_func_end sub_0219CB30

	thumb_func_start sub_0219CB40
sub_0219CB40: ; 0x0219CB40
	ldr r0, _0219CB48 ; =ovy257_219bb70
	ldr r3, _0219CB4C ; =sub_02175334
	bx r3
	nop
_0219CB48: .word ovy257_219bb70
_0219CB4C: .word sub_02175334
	thumb_func_end sub_0219CB40

	thumb_func_start sub_0219CB50
sub_0219CB50: ; 0x0219CB50
	ldr r0, _0219CB58 ; =0x0219BBDD
	ldr r3, _0219CB5C ; =sub_02175334
	bx r3
	nop
_0219CB58: .word 0x0219BBDD
_0219CB5C: .word sub_02175334
	thumb_func_end sub_0219CB50

	thumb_func_start ovy257_219cb60
ovy257_219cb60: ; 0x0219CB60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r5, #0
	add r7, r0, #0
	mov r4, #0
	add r6, #0x64
_0219CB6C:
	lsl r2, r4, #6
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl sub_0219C10C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219CB6C
	mov r0, #0x17
	mov r2, #1
	lsl r0, r0, #4
	add r3, r0, #0
	strb r2, [r5, #4]
	mov r1, #0
	strb r1, [r5, r0]
	add r3, #0x14
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x24
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x28
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x3c
	strb r1, [r5, r3]
	add r0, #0x3d
	strb r1, [r5, r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r3, r0, #4
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #8
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0xc
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x24
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x10
	str r2, [r5, r3]
	add r3, r0, #0
	add r3, #0x14
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x18
	str r2, [r5, r3]
	add r2, r0, #0
	add r2, #0x1c
	str r1, [r5, r2]
	mov r1, #0xff
	add r0, #0x28
	strb r1, [r5, r0]
	ldr r0, _0219CBF4 ; =ovy257_219bb70
	bl sub_02175334
	add r0, r7, #0
	add r1, r5, #0
	bl ovy257_219bf44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CBF4: .word ovy257_219bb70
	thumb_func_end ovy257_219cb60

	thumb_func_start ovy257_219cbf8
ovy257_219cbf8: ; 0x0219CBF8
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0xf
	lsl r1, r1, #6
	add r1, r4, r1
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, _0219CC24 ; =0x00002006
	mov r1, #0xff
	mov r3, #0x10
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_0219CC24: .word 0x00002006
	thumb_func_end ovy257_219cbf8

	thumb_func_start ovy257_219cc28
ovy257_219cc28: ; 0x0219CC28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219CC50 ; =0x0000040C
	add r4, r2, #0
	ldr r0, [r3, r0]
	bl sub_021AAA3C
	add r6, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, #0
	bne _0219CC4C
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a2bc0
_0219CC4C:
	pop {r4, r5, r6, pc}
	nop
_0219CC50: .word 0x0000040C
	thumb_func_end ovy257_219cc28

	thumb_func_start ovy257_219cc54
ovy257_219cc54: ; 0x0219CC54
	push {r4, lr}
	add r4, r2, #0
	bl sub_02040440
	add r1, r4, #0
	mov r2, #0x20
	bl sub_02040624
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_219cc54

	thumb_func_start ovy257_219cc68
ovy257_219cc68: ; 0x0219CC68
	push {r4, lr}
	add r4, r2, #0
	bl sub_02040440
	add r1, r4, #0
	mov r2, #0x20
	bl sub_02040664
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_219cc68

	thumb_func_start ovy257_219cc7c
ovy257_219cc7c: ; 0x0219CC7C
	push {r3, lr}
	bl sub_02040440
	bl sub_02042A6C
	pop {r3, pc}
	thumb_func_end ovy257_219cc7c

	thumb_func_start sub_0219CC88
sub_0219CC88: ; 0x0219CC88
	ldr r0, _0219CC90 ; =0x000003AE
	ldrb r0, [r1, r0]
	bx lr
	nop
_0219CC90: .word 0x000003AE
	thumb_func_end sub_0219CC88

	thumb_func_start sub_0219CC94
sub_0219CC94: ; 0x0219CC94
	mov r0, #0xf7
	add r1, r1, r2
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CC94

	thumb_func_start sub_0219CCA0
sub_0219CCA0: ; 0x0219CCA0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219CCA0

	thumb_func_start sub_0219CCA8
sub_0219CCA8: ; 0x0219CCA8
	add r1, #0xc
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CCA8

	thumb_func_start sub_0219CCB0
sub_0219CCB0: ; 0x0219CCB0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219CCB0

	thumb_func_start sub_0219CCB8
sub_0219CCB8: ; 0x0219CCB8
	lsl r0, r2, #6
	add r0, r1, r0
	ldr r0, [r0, #0x68]
	bx lr
	thumb_func_end sub_0219CCB8

	thumb_func_start sub_0219CCC0
sub_0219CCC0: ; 0x0219CCC0
	add r1, #0x80
	lsl r0, r2, #6
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0219CCC0

	thumb_func_start sub_0219CCC8
sub_0219CCC8: ; 0x0219CCC8
	add r1, #0x40
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CCC8

	thumb_func_start sub_0219CCD0
sub_0219CCD0: ; 0x0219CCD0
	lsl r0, r2, #6
	add r0, r1, r0
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end sub_0219CCD0

	thumb_func_start sub_0219CCD8
sub_0219CCD8: ; 0x0219CCD8
	lsl r0, r2, #6
	add r0, r1, r0
	add r0, #0xa0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CCD8

	thumb_func_start sub_0219CCE4
sub_0219CCE4: ; 0x0219CCE4
	lsl r0, r2, #6
	add r0, r1, r0
	add r0, #0xa1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CCE4

	thumb_func_start ovy257_219ccf0
ovy257_219ccf0: ; 0x0219CCF0
	push {r3, r4}
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x40
	blo _0219CD08
	sub r4, #0x40
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0219CD08:
	ldr r3, _0219CD30 ; =0x000001AD
	ldrb r0, [r1, r3]
	cmp r4, r0
	bne _0219CD1A
	mov r0, #1
	str r0, [r2]
	mov r0, #0
	pop {r3, r4}
	bx lr
_0219CD1A:
	mov r0, #0
	str r0, [r2]
	add r0, r3, #1
	add r2, r1, r0
	sub r0, r3, #1
	ldrb r0, [r1, r0]
	lsl r0, r0, #3
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	nop
_0219CD30: .word 0x000001AD
	thumb_func_end ovy257_219ccf0

	thumb_func_start sub_0219CD34
sub_0219CD34: ; 0x0219CD34
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	add r2, r2, #1
	strb r2, [r1, r0]
	ldrb r2, [r1, r0]
	cmp r2, #0x40
	blo _0219CD48
	sub r2, #0x40
	strb r2, [r1, r0]
_0219CD48:
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CD34

	thumb_func_start sub_0219CD4C
sub_0219CD4C: ; 0x0219CD4C
	mov r2, #0x4b
	lsl r2, r2, #4
	add r0, r2, #0
	sub r0, #0xb0
	strh r2, [r1, r0]
	bx lr
	thumb_func_end sub_0219CD4C

	thumb_func_start sub_0219CD58
sub_0219CD58: ; 0x0219CD58
	mov r0, #1
	lsl r0, r0, #0xa
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0219CD66
	mov r0, #1
	bx lr
_0219CD66:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CD58

	thumb_func_start sub_0219CD6C
sub_0219CD6C: ; 0x0219CD6C
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219CD6C

	thumb_func_start ovy257_219cd74
ovy257_219cd74: ; 0x0219CD74
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219CDD8 ; =0x00000126
	ldr r7, _0219CDDC ; =0x021B2604
	add r5, r1, #0
	add r1, r6, #0
	add r0, r5, #0
	sub r1, #0x26
	mov r2, #1
	add r3, r7, #0
	str r6, [sp]
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl ovy257_219ef4c
	str r0, [r4, #0x10]
	add r0, r6, #3
	str r0, [sp]
	ldr r1, _0219CDE0 ; =0x00000808
	add r0, r5, #0
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, #8
	str r0, [r4, #0x24]
	mov r0, #4
	strb r0, [r4, #0xd]
	add r1, r4, #0
	ldr r0, _0219CDE4 ; =0x05000420
	add r1, #0x5a
	mov r2, #0x20
	blx MIi_CpuCopy16
	ldr r1, _0219CDE8 ; =0x00007FFF
	mov r2, #0
_0219CDC2:
	lsl r0, r2, #1
	add r0, r4, r0
	strh r1, [r0, #0x3a]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x10
	blo _0219CDC2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CDD8: .word 0x00000126
_0219CDDC: .word 0x021B2604
_0219CDE0: .word 0x00000808
_0219CDE4: .word 0x05000420
_0219CDE8: .word 0x00007FFF
	thumb_func_end ovy257_219cd74

	thumb_func_start ovy257_219cdec
ovy257_219cdec: ; 0x0219CDEC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	bl GFL_HeapFree
	ldr r0, [r4, #0x10]
	bl ovy257_219efcc
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy257_219cdec

	thumb_func_start ovy257_219ce04
ovy257_219ce04: ; 0x0219CE04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA54
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0xc
	mov r2, #6
	mov r3, #0
	add r7, r0, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x11
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0xf
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	mov r7, #0xf
	bl sub_0204AF50
	ldr r0, _0219CEF4 ; =0x04001050
	mov r1, #2
	mov r2, #0x14
	mov r3, #5
	str r7, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #6
	bl GFL_BGSysLoadScr
	mov r0, #5
	bl GFL_BGSysLoadScr
	mov r0, #0x80
	add r7, sp, #0x60
	strh r0, [r7]
	mov r0, #0x60
	strh r0, [r7, #2]
	ldrb r0, [r4, #0xd]
	add r0, #0x19
	strh r0, [r7, #4]
	mov r0, #0
	strb r0, [r7, #6]
	mov r0, #2
	strb r0, [r7, #7]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	bl sub_021AAB18
	cmp r0, #1
	bne _0219CEF8
	mov r0, #0x15
	b _0219CEFA
	.align 2, 0
_0219CEF4: .word 0x04001050
_0219CEF8:
	mov r0, #0x16
_0219CEFA:
	strh r0, [r7, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #1
	mov r7, #1
	bl sub_021AAA60
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #0x14
	add r0, sp, #0x60
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #0x24
	add r0, sp, #0x60
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #0x25
	add r0, sp, #0x60
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x40]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x44]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #0x18
	add r0, sp, #0x60
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x48]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #0xe8
	add r0, sp, #0x60
	strh r1, [r0]
	mov r1, #0xa8
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #6
	bl sub_021AAA60
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #2
	bl sub_021AAA60
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	str r6, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_0204C520
	mov r0, #0
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	str r0, [r4]
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xb0
	str r1, [r0]
	mov r0, #8
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #8
	mov r2, #3
	mov r3, #0x10
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x2c]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	add r1, r7, #0
	add r2, r7, #0
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x2c]
	bl sub_0204826C
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
	add r1, r4, #0
	mov r0, #0
	add r1, #0x80
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	str r0, [r4, #0x28]
	mov r0, #4
	bl GFL_BGSysLoadScr
	mov r0, #0
	add r1, r4, #0
	add r1, #0x38
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	str r0, [r4, #0x34]
	strb r0, [r4, #0xc]
	mov r0, #6
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	add r1, r7, #0
	mov r2, #0xf
	mov r3, #0x1e
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	add r1, r7, #0
	mov r2, #8
	mov r3, #0x1e
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	mov r0, #0x6d
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	mov r0, #0x6d
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219CC88
	add r1, r0, #0
	cmp r1, #0xff
	beq _0219D1C6
	add r0, r5, #0
	bl ovy257_21aad74
	add r1, r4, #0
	add r1, #0xac
	mov r0, #2
	str r0, [r1]
_0219D1C6:
	ldr r0, [r4, #0x10]
	bl sub_0219F224
	cmp r0, #0
	bne _0219D1D8
	add r0, r4, #0
	mov r1, #2
	add r0, #0xac
	str r1, [r0]
_0219D1D8:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219D1F6
	add r0, r5, #0
	bl sub_021AAB3C
	cmp r0, #1
	beq _0219D1F6
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D20C
_0219D1F6:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C504
	add r4, #0xa8
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C504
_0219D20C:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219ce04

	thumb_func_start ovy257_219d210
ovy257_219d210: ; 0x0219D210
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_021AAA8C
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D22A
	bl sub_0202DA54
_0219D22A:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D240
	bl sub_0202DA54
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0]
_0219D240:
	ldr r5, [r4, #0x2c]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r5, [r4, #0x7c]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x2c]
	bl sub_02048210
	ldr r0, [r4, #0x7c]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0xb4
	ldr r5, [r0]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0xb8
	ldr r5, [r0]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204C108
	add r4, #0x90
	ldr r0, [r4]
	bl sub_0204C108
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl GFL_BGSysLoadScr
	ldr r0, _0219D31C ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D31C: .word 0x04001050
	thumb_func_end ovy257_219d210

	thumb_func_start ovy257_219d320
ovy257_219d320: ; 0x0219D320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r6, r0, #0
	bl sub_021AAA54
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0x22
	bhi _0219D3C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D340: ; jump table
	.short _0219D386 - _0219D340 - 2 ; case 0
	.short _0219D3BA - _0219D340 - 2 ; case 1
	.short _0219D3C8 - _0219D340 - 2 ; case 2
	.short _0219D3EE - _0219D340 - 2 ; case 3
	.short _0219D43C - _0219D340 - 2 ; case 4
	.short _0219D460 - _0219D340 - 2 ; case 5
	.short _0219D46A - _0219D340 - 2 ; case 6
	.short _0219D4AA - _0219D340 - 2 ; case 7
	.short _0219D502 - _0219D340 - 2 ; case 8
	.short _0219D50C - _0219D340 - 2 ; case 9
	.short _0219D516 - _0219D340 - 2 ; case 10
	.short _0219D520 - _0219D340 - 2 ; case 11
	.short _0219D532 - _0219D340 - 2 ; case 12
	.short _0219D584 - _0219D340 - 2 ; case 13
	.short _0219D702 - _0219D340 - 2 ; case 14
	.short _0219D736 - _0219D340 - 2 ; case 15
	.short _0219D79C - _0219D340 - 2 ; case 16
	.short _0219D812 - _0219D340 - 2 ; case 17
	.short _0219D860 - _0219D340 - 2 ; case 18
	.short _0219D8E0 - _0219D340 - 2 ; case 19
	.short _0219D970 - _0219D340 - 2 ; case 20
	.short _0219D9A2 - _0219D340 - 2 ; case 21
	.short _0219D9E6 - _0219D340 - 2 ; case 22
	.short _0219DA18 - _0219D340 - 2 ; case 23
	.short _0219DA32 - _0219D340 - 2 ; case 24
	.short _0219DA4C - _0219D340 - 2 ; case 25
	.short _0219DA84 - _0219D340 - 2 ; case 26
	.short _0219DAAC - _0219D340 - 2 ; case 27
	.short _0219DADA - _0219D340 - 2 ; case 28
	.short _0219DB0C - _0219D340 - 2 ; case 29
	.short _0219DB4A - _0219D340 - 2 ; case 30
	.short _0219DB7C - _0219D340 - 2 ; case 31
	.short _0219DB90 - _0219D340 - 2 ; case 32
	.short _0219DBB4 - _0219D340 - 2 ; case 33
	.short _0219DBD2 - _0219D340 - 2 ; case 34
_0219D386:
	add r0, r6, #0
	bl sub_021AAA74
	cmp r0, #1
	bne _0219D39E
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	b _0219D3AA
_0219D39E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
_0219D3AA:
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
_0219D3B4:
	str r0, [r4]
	bl _0219DC06
_0219D3BA:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	beq _0219D3C6
_0219D3C2:
	bl _0219DC06
_0219D3C6:
	b _0219D4FE
_0219D3C8:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #4
	bl GFL_FadeScreenSet
	add r0, r6, #0
	mov r1, #0
	bl sub_021AAA78
	str r5, [r4]
	bl _0219DC06
_0219D3EE:
	ldr r0, [r4, #4]
	cmp r0, #6
	bne _0219D402
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #1
	beq _0219D4EE
_0219D402:
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219D41A
	add r0, r6, #0
	bl ovy257_219af08
	cmp r0, #1
	bne _0219D4EE
_0219D41A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl GFL_FadeScreenSet
	add r0, r6, #0
	mov r1, #1
	bl sub_021AAA78
	mov r0, #4
	b _0219D3B4
_0219D43C:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219D4EE
	ldr r0, [r4, #4]
	cmp r0, #6
	bne _0219D450
	add sp, #0x20
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219D450:
	cmp r0, #7
	bne _0219D45A
	add sp, #0x20
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0219D45A:
	add sp, #0x20
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219D460:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219de38
	b _0219DC06
_0219D46A:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ea0c
	cmp r0, #0
	bne _0219D4EE
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy257_219eba0
	cmp r0, #1
	beq _0219D48E
	bl sub_0203DF20
	ldr r1, _0219D794 ; =0x00000101
	tst r0, r1
	beq _0219D4A8
_0219D48E:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #6
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219D4EE
	mov r0, #7
	b _0219D3B4
_0219D4A8:
	b _0219D4FE
_0219D4AA:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ea0c
	cmp r0, #0
	bne _0219D4EE
	add r0, r6, #0
	bl sub_021AAA14
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0219CC88
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy257_219cc7c
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy257_219eba0
	cmp r0, #1
	beq _0219D4EA
	bl sub_0203DF20
	ldr r1, _0219D794 ; =0x00000101
	tst r0, r1
	beq _0219D4FE
_0219D4EA:
	cmp r5, #0xff
	bne _0219D4F0
_0219D4EE:
	b _0219DC06
_0219D4F0:
	cmp r5, r7
	bne _0219D4FC
	mov r0, #8
	str r0, [r4]
	mov r0, #0
	b _0219D78E
_0219D4FC:
	b _0219D4FE
_0219D4FE:
	mov r0, #5
	b _0219D3B4
_0219D502:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219e1c4
	b _0219DC06
_0219D50C:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219e8b0
	b _0219DC06
_0219D516:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219e918
	b _0219DC06
_0219D520:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0219CB30
	mov r0, #0xc
	b _0219D3B4
_0219D532:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D5FA
	add r0, r6, #0
	bl sub_021AAA14
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021AAA3C
	bl sub_021A26E0
	add r3, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xb
	bl ovy257_219c284
	cmp r0, #1
	bne _0219D5FA
	mov r0, #0xd
	str r0, [r4]
	mov r3, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2d
	str r3, [sp]
	bl ovy257_219e790
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0xf
	bl ovy257_21aac98
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1]
	b _0219DC06
_0219D584:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D5FA
	add r0, r6, #0
	bl sub_021AAA14
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_021AAA3C
	bl sub_021A26E0
	add r3, r0, #0
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r2, #0xb
	bl ovy257_219c2b4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DB70
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DBE4
	cmp r0, #1
	bne _0219D5EC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219D5D8
	mov r0, #0x10
	str r0, [r4]
_0219D5D8:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DA54
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0]
	b _0219D5FC
_0219D5EC:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DC1C
	cmp r0, #1
	bne _0219D5FC
_0219D5FA:
	b _0219DC06
_0219D5FC:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ee84
	cmp r0, #0
	beq _0219D682
	mov r0, #0
	add r1, sp, #0x18
_0219D60C:
	strb r0, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _0219D60C
	mov r7, #0
_0219D61A:
	bl sub_02043F2C
	add r5, r0, #0
	bl sub_02043F2C
	mov r1, #0
	lsr r3, r0, #0x1e
	mov r0, #0
	lsl r0, r0, #2
	orr r0, r3
	lsr r2, r5, #0x1e
	lsl r1, r1, #2
	orr r1, r2
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r2, r1, #0x18
	add r1, sp, #0x18
	lsr r5, r0, #0x18
	add r0, sp, #0x18
	ldrb r1, [r1, r2]
	ldrb r3, [r0, r5]
	strb r3, [r0, r2]
	strb r1, [r0, r5]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #0xa
	blo _0219D61A
	mov r2, #0
	add r1, sp, #0x18
	add r5, sp, #0x1c
_0219D658:
	ldrb r0, [r1, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0219D658
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl sub_0219CB50
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r2, #0xe
	add r3, r5, #0
	mov r7, #0xe
	bl ovy257_219c2e4
	cmp r0, #1
	bne _0219D682
	str r7, [r4]
_0219D682:
	add r0, r4, #0
	add r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219D742
	ldr r0, _0219D798 ; =0x02FFFC3C
	add r2, r4, #0
	add r2, #0xd8
	ldr r1, [r0]
	add r0, r4, #0
	ldr r2, [r2]
	add r0, #0xd6
	sub r2, r1, r2
	lsl r2, r2, #0x18
	ldrb r0, [r0]
	lsr r2, r2, #0x18
	add r2, r0, r2
	add r0, r4, #0
	add r0, #0xd6
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xd6
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _0219D742
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd6
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _0219D6F4
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bne _0219D6F4
	add r0, r4, #0
	add r0, #0xd4
	ldrh r0, [r0]
	add r3, r4, #0
	add r3, #0xd4
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xd4
	strh r1, [r0]
	ldrh r3, [r3]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2b
	bl ovy257_219e6b4
_0219D6F4:
	add r0, r4, #0
	add r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219D742
	mov r0, #0x10
	b _0219D3B4
_0219D702:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D742
	add r0, r6, #0
	bl sub_021AAA14
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219eee4
	cmp r0, #0
	beq _0219D742
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x11
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219D742
	mov r0, #0xf
	b _0219D3B4
_0219D736:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	beq _0219D744
_0219D742:
	b _0219DC06
_0219D744:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0219CCA8
	add r7, r0, #0
	mov r2, #0
	mov r1, #0xff
_0219D758:
	mov r0, #6
	mul r0, r2
	mov r3, #0
	add r5, r7, r0
_0219D760:
	add r0, r5, r3
	add r0, #0x22
	strb r1, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _0219D760
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	blo _0219D758
	add r0, r7, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #2
	add r7, #0x21
	bic r1, r0
	strb r1, [r7]
_0219D788:
	mov r0, #3
	str r0, [r4]
	mov r0, #7
_0219D78E:
	str r0, [r4, #4]
	b _0219DC06
	nop
_0219D794: .word 0x00000101
_0219D798: .word 0x02FFFC3C
_0219D79C:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xf
	mov r3, #0
	mov r5, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219D7C8
	mov r0, #0x16
	str r0, [r4]
	mov r0, #0x78
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2e
	add r3, r5, #0
	bl ovy257_219e790
_0219D7C8:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #1
	bl sub_02024EEC
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_020484B4
	mov r0, #0
	mov r5, #0
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D884
	bl sub_0202DA54
	add r0, r4, #0
	add r0, #0xd0
	str r5, [r0]
	b _0219DC06
_0219D812:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D884
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r7, #0
	bl sub_0219CCC0
	add r1, r5, #0
	bl sub_02008BB0
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2f
	add r3, r5, #0
	str r7, [sp]
	bl ovy257_219e790
	add r0, r5, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0xf
	bl ovy257_21aac08
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #0x12
	b _0219D3B4
_0219D860:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D884
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DB70
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DBE4
	cmp r0, #1
	beq _0219D886
_0219D884:
	b _0219DC06
_0219D886:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219D8B8
	mov r0, #0x13
	str r0, [r4]
	mov r3, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2d
	str r3, [sp]
	bl ovy257_219e790
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0xf
	bl ovy257_21aac98
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1]
	b _0219D8CC
_0219D8B8:
	mov r0, #0x15
	str r0, [r4]
	mov r0, #0x78
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x30
	mov r3, #0
	bl ovy257_219e790
_0219D8CC:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DA54
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
_0219D8DC:
	str r1, [r0]
	b _0219DC06
_0219D8E0:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D9D0
	add r0, r6, #0
	bl sub_021AAA14
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DB70
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DBE4
	cmp r0, #1
	bne _0219D940
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219D92E
	mov r0, #0x15
	str r0, [r4]
	mov r0, #0x78
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0
	bl ovy257_219e790
_0219D92E:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DA54
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	b _0219D8DC
_0219D940:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0202DC1C
	cmp r0, #0
	bne _0219D9D0
	add r1, r5, #0
	add r0, r6, #0
	mov r2, #0xc
	mov r3, #0
	mov r5, #0
	bl ovy257_219c2b4
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D9D0
	add r0, r4, #0
	add r0, #0xe8
	str r5, [r0]
	mov r0, #0x14
	b _0219D3B4
_0219D970:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	bne _0219D9D0
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x10
	mov r3, #0
	mov r5, #0
	bl ovy257_219c2b4
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D9D0
	add r0, r4, #0
	add r0, #0xec
	str r5, [r0]
	b _0219D788
_0219D9A2:
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219D9BA
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xcc
	strh r1, [r0]
_0219D9BA:
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219D9D0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219ed88
	cmp r0, #0
	beq _0219D9D2
_0219D9D0:
	b _0219DC06
_0219D9D2:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xd
	mov r3, #0
	bl ovy257_219c2b4
	b _0219DC06
_0219D9E6:
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219D9FE
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xcc
	strh r1, [r0]
_0219D9FE:
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DAF0
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x20
	bl sub_02040624
	mov r0, #0x17
	b _0219D3B4
_0219DA18:
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _0219DAF0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219eca8
	b _0219DC06
_0219DA32:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219DA4C
	mov r0, #0x19
	str r0, [r4]
_0219DA4C:
	add r0, r6, #0
	bl sub_021AAAB8
	cmp r0, #1
	bhi _0219DAF0
	add r0, r6, #0
	bl sub_021AAA0C
	add r5, r0, #0
	mov r0, #8
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	add r0, r6, #0
	mov r1, #1
	mov r7, #1
	bl sub_021AAB14
	add r0, r6, #0
	add r1, r5, #0
	bl ovy257_219aef0
	add r0, r6, #0
	add r1, r5, #0
	bl ovy257_219b4fc
	str r7, [r4, #8]
	b _0219DC06
_0219DA84:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x24
	bl ovy257_219e634
	mov r0, #0x1b
	str r0, [r4]
	b _0219DB3A
_0219DAAC:
	bl sub_0203DA48
	cmp r0, #1
	beq _0219DABE
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DAF0
_0219DABE:
	mov r0, #8
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219aef0
	mov r0, #1
	str r0, [r4, #8]
	b _0219DC06
_0219DADA:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	beq _0219DAF2
_0219DAF0:
	b _0219DC06
_0219DAF2:
	add r0, r6, #0
	bl sub_021AAA0C
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_021AAB14
	add r0, r6, #0
	add r1, r5, #0
	bl ovy257_219b4fc
	b _0219DB78
_0219DB0C:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x25
	bl ovy257_219e634
	mov r0, #0x1e
	str r0, [r4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	strh r1, [r0]
_0219DB30:
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
_0219DB3A:
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219b4fc
	b _0219DC04
_0219DB4A:
	add r0, r4, #0
	add r0, #0x88
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x88
	strh r1, [r0]
	bl sub_0203DA48
	cmp r0, #1
	beq _0219DB78
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _0219DB78
	add r0, r4, #0
	add r0, #0x88
	ldrh r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	blo _0219DC06
_0219DB78:
	mov r0, #0x1f
	b _0219D3B4
_0219DB7C:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x2f
	bl ovy257_219cc54
	mov r0, #0x20
	b _0219D3B4
_0219DB90:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x2f
	bl ovy257_219cc68
	cmp r0, #1
	bne _0219DC06
	mov r0, #8
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	add r0, r6, #0
	bl ovy257_21aaeb0
	b _0219DBEC
_0219DBB4:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x26
	bl ovy257_219e634
	mov r0, #0x22
	str r0, [r4]
	b _0219DB30
_0219DBD2:
	bl sub_0203DA48
	cmp r0, #1
	beq _0219DBE4
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DC06
_0219DBE4:
	mov r0, #8
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
_0219DBEC:
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219aef0
_0219DC04:
	str r5, [r4, #8]
_0219DC06:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219e3cc
	ldr r0, [r4, #0x10]
	bl ovy257_219f000
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0219DC62
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x7c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DC62
	ldr r0, [r4, #0x7c]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x7c]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	ldr r0, [r0]
	str r1, [r4, #0x28]
	cmp r0, #1
	bne _0219DC62
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0]
	ldr r1, [r4, #0x7c]
	add r0, r6, #0
	bl ovy257_21aae7c
_0219DC62:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #1
	bne _0219DCBC
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DCBC
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #1
	ldr r0, [r0]
	lsl r2, r1, #9
	mov r3, #9
	bl sub_02024E80
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204826C
	mov r0, #0
	mov r5, #0
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0]
_0219DCBC:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #1
	bne _0219DD06
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DD06
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc0
	str r1, [r0]
_0219DD06:
	ldr r0, [r4, #0x34]
	cmp r0, #1
	bne _0219DD4C
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #6
	bls _0219DD2A
	mov r0, #0
	str r0, [r4, #0x34]
	b _0219DD3E
_0219DD2A:
	mov r1, #0xc
	blx sub_0208D65C
	cmp r1, #6
	bge _0219DD3E
	add r2, r4, #0
	mov r0, #0x1f
	mov r1, #0x20
	add r2, #0x3a
	b _0219DD46
_0219DD3E:
	add r2, r4, #0
	mov r0, #0x1f
	mov r1, #0x20
	add r2, #0x5a
_0219DD46:
	mov r3, #0x20
	bl sub_0205FA10
_0219DD4C:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _0219DD7A
	ldr r0, [r4]
	cmp r0, #8
	beq _0219DD7A
	cmp r0, #0x18
	bge _0219DD7A
	ldr r0, [r4, #0x10]
	bl sub_0219F1F8
	cmp r0, #1
	bne _0219DD7A
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219eaa4
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0]
_0219DD7A:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #1
	bne _0219DDFE
	ldr r0, [r4, #0x10]
	bl sub_0219F1F8
	cmp r0, #0
	bne _0219DDAA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
	b _0219DDFE
_0219DDAA:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0219CCB0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	bl sub_0219F200
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl ovy257_219f208
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0219F1FC
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, r5
	ble _0219DDDA
	str r5, [sp, #0xc]
_0219DDDA:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mul r0, r7
	blx sub_0208D868
	str r0, [sp]
	lsl r0, r7, #0x10
	mov r2, #2
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0xa
	add r2, r3, r2
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #3
	bl ovy257_219eac4
_0219DDFE:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DE24
	ldr r0, [r4]
	cmp r0, #0xa
	bne _0219DE1A
	add r4, #0x98
	ldr r0, [r4]
	mov r1, #0xf
	b _0219DE20
_0219DE1A:
	add r4, #0x98
	ldr r0, [r4]
	mov r1, #1
_0219DE20:
	bl sub_0204C488
_0219DE24:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219d320

	thumb_func_start sub_0219DE2C
sub_0219DE2C: ; 0x0219DE2C
	ldr r0, [r1, #0x10]
	ldr r3, _0219DE34 ; =sub_0219F044
	bx r3
	nop
_0219DE34: .word sub_0219F044
	thumb_func_end sub_0219DE2C

	thumb_func_start ovy257_219de38
ovy257_219de38: ; 0x0219DE38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA14
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAAB8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ea0c
	cmp r0, #1
	bne _0219DE5A
	b _0219E1A2
_0219DE5A:
	ldr r0, [r4]
	cmp r0, #8
	bgt _0219DEBC
	add r0, r5, #0
	bl sub_021AAB18
	cmp r0, #0
	bne _0219DEBC
	add r0, r5, #0
	bl sub_021AAA0C
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	beq _0219DE84
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	b _0219DEB8
_0219DE84:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219DE96
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	b _0219DEB8
_0219DE96:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _0219DEA8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	b _0219DEB8
_0219DEA8:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219DEBC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
_0219DEB8:
	bl ovy257_219b4b8
_0219DEBC:
	ldr r0, [sp]
	cmp r0, #1
	beq _0219DECC
	ldr r0, [r4, #0x10]
	bl sub_0219F224
	cmp r0, #0
	bne _0219DECE
_0219DECC:
	b _0219DF06
_0219DECE:
	add r0, r5, #0
	add r1, r7, #0
	bl ovy257_219cc7c
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219CC88
	cmp r0, #0xff
	beq _0219DF0A
	cmp r0, r6
	bne _0219DF06
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0219DEF2
	sub r0, r0, #1
	b _0219DF04
_0219DEF2:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #9
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219DF06
	mov r0, #8
_0219DF04:
	strb r0, [r4, #0xc]
_0219DF06:
	mov r1, #2
	b _0219DF3C
_0219DF0A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy257_219eba0
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	ldr r1, _0219E1A4 ; =0x00000101
	tst r0, r1
	bne _0219DF24
	cmp r6, #1
	bne _0219DF3A
_0219DF24:
	mov r0, #6
	str r0, [r4]
	ldr r0, _0219E1A8 ; =0x0000066C
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r4, #0x34]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
_0219DF3A:
	mov r1, #0
_0219DF3C:
	add r0, r4, #0
	add r0, #0xac
	str r1, [r0]
	ldr r0, [r4]
	cmp r0, #5
	bne _0219DF90
	bl GCTX_HIDGetPressedKeys
	mov r6, #1
	lsl r6, r6, #0xa
	tst r0, r6
	bne _0219DF6A
	bl GCTX_HIDGetPressedKeys
	tst r0, r6
	bne _0219DF6A
	ldr r0, _0219E1AC ; =0x021B19CB
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219DF90
_0219DF6A:
	mov r0, #3
	str r0, [r4]
	mov r0, #6
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0x14
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _0219E1A8 ; =0x0000066C
	bl GFL_SndSEPlay
_0219DF90:
	ldr r0, [r4]
	cmp r0, #5
	beq _0219DF98
	b _0219E0F0
_0219DF98:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219DFFA
	add r0, r5, #0
	bl sub_021AAB3C
	cmp r0, #0
	bne _0219DFFA
	ldr r0, _0219E1B0 ; =0x021B19D7
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219DFFA
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _0219DFFA
	add r0, r5, #0
	bl sub_021AAA3C
	mov r1, #0
	bl sub_021A26DC
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ebec
	mov r0, #0xb
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0x24
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _0219E1A8 ; =0x0000066C
	bl GFL_SndSEPlay
_0219DFFA:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219E05C
	add r0, r5, #0
	bl sub_021AAB3C
	cmp r0, #0
	bne _0219E05C
	ldr r0, _0219E1B4 ; =0x021B19E3
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219E05C
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _0219E05C
	add r0, r5, #0
	bl sub_021AAA3C
	mov r1, #1
	bl sub_021A26DC
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ebec
	mov r0, #0xb
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0x25
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _0219E1A8 ; =0x0000066C
	bl GFL_SndSEPlay
_0219E05C:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #1
	bne _0219E072
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ebec
	mov r0, #0x11
	str r0, [r4]
_0219E072:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #1
	bne _0219E0F0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204C510
	cmp r0, #0
	beq _0219E08E
	cmp r0, #2
	bne _0219E0AE
_0219E08E:
	add r1, r4, #0
	add r1, #0xf4
	ldr r1, [r1]
	cmp r1, #1
	bne _0219E0AE
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C504
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	b _0219E0D0
_0219E0AE:
	cmp r0, #1
	bne _0219E0E8
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _0219E0E8
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C504
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
_0219E0D0:
	bl sub_0204C504
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204C550
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204C550
_0219E0E8:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0]
_0219E0F0:
	ldr r0, [r4]
	cmp r0, #5
	bne _0219E166
	ldr r0, _0219E1B8 ; =0x021B19BF
	bl sub_0203DA0C
	add r6, r0, #0
	beq _0219E10A
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219E12C
_0219E10A:
	cmp r6, #0
	bne _0219E112
	mov r0, #1
	b _0219E114
_0219E112:
	mov r0, #0
_0219E114:
	bl sub_0203D564
	mov r0, #9
	str r0, [r4]
	ldr r0, _0219E1BC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #9
	b _0219E162
_0219E12C:
	cmp r6, #1
	beq _0219E13A
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xc
	tst r0, r1
	beq _0219E166
_0219E13A:
	add r0, r5, #0
	bl sub_021AAB1C
	ldr r0, _0219E1C0 ; =0x0000066F
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021AAB18
	cmp r0, #1
	bne _0219E15A
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x15
	b _0219E162
_0219E15A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x16
_0219E162:
	bl sub_0204C488
_0219E166:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219E19A
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0219E19A
	add r0, r5, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219B130
	cmp r0, #0
	bne _0219E19A
	add r0, r5, #0
	bl sub_021AAAF0
	ldr r0, _0219E1A8 ; =0x0000066C
	bl GFL_SndSEPlay
_0219E19A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219e40c
_0219E1A2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E1A4: .word 0x00000101
_0219E1A8: .word 0x0000066C
_0219E1AC: .word 0x021B19CB
_0219E1B0: .word 0x021B19D7
_0219E1B4: .word 0x021B19E3
_0219E1B8: .word 0x021B19BF
_0219E1BC: .word 0x00000551
_0219E1C0: .word 0x0000066F
	thumb_func_end ovy257_219de38

	thumb_func_start ovy257_219e1c4
ovy257_219e1c4: ; 0x0219E1C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r2, #1
	mov r7, #1
	bl ovy257_219eba0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219ea0c
	cmp r0, #1
	bne _0219E1E4
	b _0219E3C4
_0219E1E4:
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _0219E28C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E1F6: ; jump table
	.short _0219E202 - _0219E1F6 - 2 ; case 0
	.short _0219E22A - _0219E1F6 - 2 ; case 1
	.short _0219E278 - _0219E1F6 - 2 ; case 2
	.short _0219E334 - _0219E1F6 - 2 ; case 3
	.short _0219E374 - _0219E1F6 - 2 ; case 4
	.short _0219E39A - _0219E1F6 - 2 ; case 5
_0219E202:
	ldr r0, [r4, #0x10]
	bl ovy257_219f06c
	cmp r0, #1
	bne _0219E28C
	add r0, r4, #0
	add r0, #0xac
	str r7, [r0]
	mov r0, #0
	str r7, [r4, #4]
	strb r0, [r4, #0x18]
	str r0, [r4, #0x14]
	bl sub_0219A350
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_219eaa4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E22A:
	cmp r6, #1
	beq _0219E23E
	bl sub_0203DF20
	ldr r1, _0219E3C8 ; =0x00000101
	tst r0, r1
	bne _0219E23E
	ldr r0, [r4, #0x10]
	bl ovy257_219f0d0
_0219E23E:
	ldr r0, [r4, #0x10]
	bl sub_0219F108
	cmp r0, #0
	bne _0219E252
	add r0, r4, #0
	mov r1, #2
	add r0, #0xac
	str r1, [r4, #4]
	str r1, [r0]
_0219E252:
	ldr r0, [r4, #0x10]
	bl sub_0219F120
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0219F10C
	mov r2, #2
	str r0, [sp]
	mov r0, #3
	lsl r2, r2, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r2
	mov r3, #9
	bl ovy257_219eac4
_0219E278:
	add r0, r5, #0
	bl sub_021AAA14
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_0219CD6C
	cmp r0, #1
	beq _0219E28E
_0219E28C:
	b _0219E3C4
_0219E28E:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_0219CCA0
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0219F10C
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0219E306
	cmp r7, #0
	bne _0219E306
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0xb
	cmp r6, r0
	bhs _0219E2BA
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _0219E306
_0219E2BA:
	ldr r0, [r4, #0x10]
	bl sub_0219F120
	ldrb r1, [r4, #0x18]
	add r2, r0, #0
	mov r3, #2
	lsl r1, r1, #0xb
	add r1, r2, r1
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x24]
	lsl r3, r3, #0xa
	bl ovy257_219f124
	ldrb r2, [r4, #0x18]
	ldr r1, [r4, #0x20]
	strb r2, [r1, #5]
	ldr r1, [r4, #0x20]
	strh r0, [r1]
	ldr r0, [r4, #0x20]
	strh r6, [r0, #2]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #6]
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _0219E2FC
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0xb
	cmp r6, r0
	bhi _0219E2FC
	mov r1, #1
	b _0219E2FE
_0219E2FC:
	mov r1, #0
_0219E2FE:
	ldr r0, [r4, #0x20]
	strb r1, [r0, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_0219E306:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0219E3C4
	ldr r1, [sp, #8]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	bl ovy257_219c594
	cmp r0, #1
	bne _0219E3C4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x20]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0219E3C4
	mov r0, #3
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_0219E334:
	add r0, r5, #0
	bl sub_021AAA14
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219CCA0
	cmp r0, #0
	bne _0219E3C4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #7
	mov r3, #0
	mov r5, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219E3C4
	mov r0, #4
	str r0, [r4, #4]
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E374:
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #2]
	cmp r0, #0x20
	bls _0219E392
	add r0, r5, #0
	bl sub_021AAA24
	bl sub_0219F1F8
	cmp r0, #1
	bne _0219E3C4
	mov r0, #5
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_0219E392:
	mov r0, #5
	add sp, #0xc
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0219E39A:
	add r0, r5, #0
	bl sub_021AAA14
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA24
	bl sub_0219F1F8
	cmp r0, #0
	bne _0219E3C4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219E3C4
	mov r0, #5
	str r0, [r4]
_0219E3C4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E3C8: .word 0x00000101
	thumb_func_end ovy257_219e1c4

	thumb_func_start ovy257_219e3cc
ovy257_219e3cc: ; 0x0219E3CC
	push {r3, lr}
	add r0, r1, #0
	add r0, #0xac
	ldr r2, [r0]
	add r0, r1, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r2, r0
	beq _0219E408
	cmp r2, #1
	bne _0219E3EE
	add r1, #0xa0
	ldr r0, [r1]
	mov r1, #0x17
	bl sub_0204C488
	pop {r3, pc}
_0219E3EE:
	cmp r2, #2
	bne _0219E3FE
	add r1, #0xa0
	ldr r0, [r1]
	mov r1, #0x23
	bl sub_0204C488
	pop {r3, pc}
_0219E3FE:
	add r1, #0xa0
	ldr r0, [r1]
	mov r1, #0x18
	bl sub_0204C488
_0219E408:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_219e3cc

	thumb_func_start ovy257_219e40c
ovy257_219e40c: ; 0x0219E40C
	push {r4, r5, r6, lr}
	ldr r4, _0219E4C8 ; =0x021B19EF
	add r5, r1, #0
	add r0, r4, #0
	bl sub_0203DA0C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203D9C8
	mov r1, #0
	mvn r1, r1
	mov r4, #0
	cmp r6, r1
	beq _0219E43C
	strb r4, [r5, #0xf]
	cmp r6, #1
	bhi _0219E436
	strb r4, [r5, #0xe]
	add r1, r4, #0
	b _0219E472
_0219E436:
	mov r1, #1
	strb r1, [r5, #0xe]
	b _0219E472
_0219E43C:
	cmp r0, r1
	beq _0219E46E
	add r2, r4, #0
	cmp r0, #1
	ldrb r0, [r5, #0xe]
	bhi _0219E44E
	cmp r0, #0
	bne _0219E454
	b _0219E452
_0219E44E:
	cmp r0, #1
	bne _0219E454
_0219E452:
	mov r2, #1
_0219E454:
	cmp r2, #1
	bne _0219E46C
	ldrb r0, [r5, #0xf]
	add r0, r0, #1
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0xf]
	cmp r0, #0x19
	blo _0219E472
	mov r0, #0xa
	ldrb r1, [r5, #0xe]
	strb r0, [r5, #0xf]
	b _0219E472
_0219E46C:
	b _0219E46E
_0219E46E:
	mov r0, #0xff
	strb r0, [r5, #0xe]
_0219E472:
	cmp r1, #0
	bne _0219E482
	ldrb r0, [r5, #0xd]
	cmp r0, #8
	bhs _0219E4A4
	mov r4, #1
	add r0, r0, #1
	b _0219E490
_0219E482:
	cmp r1, #1
	bne _0219E4A4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0219E4A4
	mov r4, #1
	sub r0, r0, #1
_0219E490:
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	add r0, #0x90
	add r1, #0x19
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
_0219E4A4:
	cmp r4, #1
	bne _0219E4C4
	ldrb r0, [r5, #0xd]
	mov r4, #1
	mov r1, #1
	sub r0, r0, #4
	lsl r5, r0, #6
	ldr r0, _0219E4CC ; =0x0000066C
	bl sub_020061DC
	sub r1, r4, #2
	mov r0, #1
	add r2, r5, #0
	add r3, r1, #0
	bl sub_020062D8
_0219E4C4:
	pop {r4, r5, r6, pc}
	nop
_0219E4C8: .word 0x021B19EF
_0219E4CC: .word 0x0000066C
	thumb_func_end ovy257_219e40c

	thumb_func_start ovy257_219e4d0
ovy257_219e4d0: ; 0x0219E4D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r3, [sp, #4]
	ldr r0, [sp, #0x34]
	str r2, [sp]
	str r0, [sp, #0x34]
	add r0, sp, #0x28
	ldrb r1, [r0, #4]
	ldr r0, [sp, #4]
	sub r2, r0, r1
	bpl _0219E4E8
	neg r2, r2
_0219E4E8:
	add r0, sp, #0x28
	ldrb r4, [r0, #8]
	ldrb r5, [r0]
	sub r0, r5, r4
	bpl _0219E4F4
	neg r0, r0
_0219E4F4:
	cmp r2, r0
	bgt _0219E4FA
	add r2, r0, #0
_0219E4FA:
	ldr r0, [sp, #4]
	add r7, r2, #1
	sub r0, r1, r0
	cmp r0, #0
	ble _0219E516
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E524
_0219E516:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E524:
	blx sub_0208DA4C
	add r1, r7, #0
	blx sub_0208D65C
	str r0, [sp, #0x10]
	sub r0, r4, r5
	cmp r0, #0
	ble _0219E548
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E556
_0219E548:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E556:
	blx sub_0208DA4C
	add r1, r7, #0
	blx sub_0208D65C
	str r0, [sp, #0xc]
	mov r4, #0
	mov r5, #0
	mov r6, #0
	cmp r7, #0
	ble _0219E59C
	add r0, sp, #0x28
	ldrb r0, [r0]
	str r0, [sp, #8]
_0219E572:
	ldr r1, [sp, #4]
	asr r2, r4, #0xc
	add r1, r1, r2
	ldr r2, [sp, #8]
	asr r3, r5, #0xc
	add r2, r2, r3
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp]
	ldr r3, [sp, #0x34]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ovy257_219e5a0
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r5, r5, r0
	cmp r6, r7
	blt _0219E572
_0219E59C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219e4d0

	thumb_func_start ovy257_219e5a0
ovy257_219e5a0: ; 0x0219E5A0
	push {r4, r5, r6, r7}
	sub sp, #8
	add r4, r2, #0
	add r2, r3, #0
	add r5, r0, #0
	lsr r6, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r6
	mov r0, #0x1d
	ror r3, r0
	add r0, r6, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsr r7, r3, #0x1f
	lsl r6, r3, #0x1e
	sub r6, r6, r7
	mov r0, #0x1e
	ror r6, r0
	add r0, r7, r6
	lsr r6, r1, #3
	lsr r1, r4, #3
	lsl r1, r1, #4
	add r1, r6, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0xb
	add r6, r5, r1
	lsr r1, r4, #0x1f
	lsl r7, r4, #0x1d
	sub r7, r7, r1
	mov r4, #0x1d
	ror r7, r4
	add r1, r1, r7
	lsl r1, r1, #0x18
	lsr r3, r3, #2
	lsr r1, r1, #0x17
	add r1, r3, r1
	lsl r1, r1, #1
	add r3, r6, r1
	ldr r6, _0219E62C ; =0x021B1A00
	add r4, sp, #0
	ldrh r7, [r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r7, [r4]
	ldrh r7, [r6, #2]
	add r1, sp, #0
	strh r7, [r4, #2]
	ldrh r7, [r6, #4]
	strh r7, [r4, #4]
	ldrh r6, [r6, #6]
	strh r6, [r4, #6]
	mov r4, #1
	lsl r4, r4, #0xc
	add r4, r5, r4
	cmp r3, r4
	bhs _0219E626
	cmp r3, r5
	blo _0219E626
	lsl r5, r0, #1
	ldr r0, _0219E630 ; =0x021B19AE
	ldrh r4, [r3]
	ldrh r0, [r0, r5]
	and r4, r0
	ldrh r0, [r1, r5]
	mul r0, r2
	add r0, r4, r0
	strh r0, [r3]
_0219E626:
	add sp, #8
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0219E62C: .word 0x021B1A00
_0219E630: .word 0x021B19AE
	thumb_func_end ovy257_219e5a0

	thumb_func_start ovy257_219e634
ovy257_219e634: ; 0x0219E634
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl sub_021AAA7C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x10]
	bl sub_02021C44
	ldr r0, [r5, #0x7c]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x7c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x7c]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x7c]
	bl sub_0204826C
	mov r2, #5
	ldr r0, [r5, #0x7c]
	mov r1, #1
	lsl r2, r2, #6
	mov r3, #9
	mov r4, #1
	bl sub_02024E80
	str r4, [r5, #0x28]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219e634

	thumb_func_start ovy257_219e6b4
ovy257_219e6b4: ; 0x0219E6B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_021AAA54
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_021AAA3C
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_021AAA7C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021AAA84
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl GFL_WordSetSystemCreateDefault
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r2, r5, #0
	add r2, #0xc4
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x18]
	bl sub_021A26E0
	add r1, r0, #0
	add r1, #0x3e
	add r0, r7, #0
	bl sub_0204898C
	str r0, [sp, #0x20]
	mov r7, #1
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	str r7, [sp, #4]
	bl StringSetNumber
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc8
	add r2, #0xc4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_WordSetSystemFree
	add r5, #0xbc
	str r7, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219e6b4

	thumb_func_start ovy257_219e790
ovy257_219e790: ; 0x0219E790
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp, #0xc]
	add r7, r3, #0
	bl sub_021AAA54
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021AAA3C
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_021AAA7C
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r4, #0
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	bl sub_0204898C
	str r0, [sp, #0x10]
	cmp r7, #0
	beq _0219E806
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_0202437C
	add r4, r4, #1
_0219E806:
	ldr r0, [sp, #0x20]
	bl sub_021A26E0
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3e
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r7, #0
	bl GFL_StrBufFree
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0204826C
	add r0, r5, #0
	add r0, #0xb8
	mov r2, #5
	ldr r0, [r0]
	mov r1, #1
	lsl r2, r2, #6
	mov r3, #9
	bl sub_02024E80
	add r0, sp, #0x38
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0xcc
	strh r1, [r0]
	add r5, #0xc0
	mov r0, #1
	str r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_219e790

	thumb_func_start ovy257_219e8b0
ovy257_219e8b0: ; 0x0219E8B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219BB24
	cmp r0, #5
	bne _0219E8C8
	b _0219E8E4
_0219E8C8:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219E8E4
	add r0, r5, #0
	bl sub_021AAAB8
	cmp r0, #1
	bls _0219E8E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x21
	b _0219E8EA
_0219E8E4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x20
_0219E8EA:
	bl ovy257_219e634
	add r0, r5, #0
	bl ovy257_21aab80
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #0xa
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219E916
	add r4, #0x98
	ldr r0, [r4]
	mov r1, #0xf
	bl sub_0204C488
_0219E916:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219e8b0

	thumb_func_start ovy257_219e918
ovy257_219e918: ; 0x0219E918
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy257_219ea0c
	cmp r0, #1
	bne _0219E938
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DA54
	mov r0, #0
	add r4, #0x80
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E938:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DB70
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DBE4
	cmp r0, #1
	bne _0219EA0A
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219E9D0
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219BB24
	cmp r0, #5
	bne _0219E988
	mov r0, #0x1c
	str r0, [r4]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2a
	bl ovy257_219e634
	b _0219E9FA
_0219E988:
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219E9A2
	add r0, r5, #0
	bl sub_021AAAB8
	cmp r0, #1
	bls _0219E9A2
	mov r0, #0x18
	str r0, [r4]
	b _0219E9FA
_0219E9A2:
	mov r0, #8
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl sub_021AAB14
	add r0, r5, #0
	bl sub_021AAA0C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy257_219aef0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy257_219b4fc
	str r6, [r4, #8]
	b _0219E9FA
_0219E9D0:
	mov r0, #5
	str r0, [r4]
	ldr r0, [r4, #0x7c]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r4, #0x7c]
	bl sub_020484B4
	ldr r0, [r4, #0x2c]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C488
_0219E9FA:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0202DA54
	mov r0, #0
	add r4, #0x80
	str r0, [r4]
_0219EA0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219e918

	thumb_func_start ovy257_219ea0c
ovy257_219ea0c: ; 0x0219EA0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAB34
	cmp r0, #1
	bne _0219EA38
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219BB24
	cmp r0, #5
	bne _0219EA30
	mov r0, #0x1d
	b _0219EA32
_0219EA30:
	mov r0, #0x1a
_0219EA32:
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219EA38:
	add r0, r5, #0
	bl sub_021AAAB8
	cmp r0, #1
	bhi _0219EA4A
	mov r0, #0x21
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219EA4A:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	bne _0219EAA0
	add r0, r5, #0
	bl sub_021AAB08
	cmp r0, #0
	beq _0219EAA0
	ldr r0, [r4]
	cmp r0, #6
	beq _0219EA6C
	cmp r0, #7
	beq _0219EA6C
	cmp r0, #8
	bne _0219EA80
_0219EA6C:
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
	b _0219EA90
_0219EA80:
	mov r0, #0x78
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0
	bl ovy257_219e790
_0219EA90:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
	mov r0, #0x16
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219EAA0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219ea0c

	thumb_func_start ovy257_219eaa4
ovy257_219eaa4: ; 0x0219EAA4
	push {r3, lr}
	add r0, r1, #0
	mov r2, #3
	add r0, #0x30
	strb r2, [r0]
	add r0, r1, #0
	mov r2, #0x20
	add r0, #0x31
	strb r2, [r0]
	ldr r0, [r1, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	pop {r3, pc}
	thumb_func_end ovy257_219eaa4

	thumb_func_start ovy257_219eac4
ovy257_219eac4: ; 0x0219EAC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x10]
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, #0
	blt _0219EB98
	mov r0, #0x7b
	mul r0, r1
	add r1, sp, #0x28
	ldrh r1, [r1, #4]
	blx sub_0208D65C
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	bl sub_02046EF4
	mov ip, r0
	mov r0, #0
	b _0219EB84
_0219EAF4:
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	add r1, r3, #1
	mul r0, r1
	asr r2, r0, #6
	lsr r2, r2, #0x19
	add r2, r0, r2
	asr r2, r2, #7
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	lsl r0, r0, #1
	ldrsh r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r2, r0
	lsl r0, r0, #6
	asr r2, r0, #0xf
	lsr r2, r2, #0x10
	add r2, r0, r2
	asr r5, r2, #0x10
	cmp r3, #0xb
	bhs _0219EB32
	ldr r0, _0219EB9C ; =0x021B19B6
	sub r2, r3, #3
	ldrb r2, [r0, r2]
	mov r0, #0x20
	sub r0, r0, r2
	cmp r5, r0
	bhs _0219EB32
	add r5, r0, #0
_0219EB32:
	cmp r3, #0x72
	bls _0219EB4C
	mov r0, #0x7a
	sub r0, r0, r3
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _0219EB9C ; =0x021B19B6
	ldrb r2, [r0, r2]
	mov r0, #0x20
	sub r0, r0, r2
	cmp r5, r0
	bhs _0219EB4C
	add r5, r0, #0
_0219EB4C:
	add r0, r4, #0
	add r0, #0x31
	ldrb r0, [r0]
	mov r2, ip
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r7, [sp, #0xc]
	bl ovy257_219e4d0
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x30
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x31
	strb r5, [r0]
	mov r0, #1
	b _0219EB8E
_0219EB84:
	add r1, r4, #0
	add r1, #0x30
	ldrb r3, [r1]
	cmp r3, r6
	blo _0219EAF4
_0219EB8E:
	cmp r0, #1
	bne _0219EB98
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
_0219EB98:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EB9C: .word 0x021B19B6
	thumb_func_end ovy257_219eac4

	thumb_func_start ovy257_219eba0
ovy257_219eba0: ; 0x0219EBA0
	push {r3, lr}
	sub sp, #8
	cmp r2, #0
	add r0, sp, #4
	add r1, sp, #0
	bne _0219EBB2
	bl sub_0203DAC8
	b _0219EBB6
_0219EBB2:
	bl sub_0203DA84
_0219EBB6:
	ldr r2, [sp]
	cmp r2, #0x68
	blo _0219EBE4
	ldr r1, [sp, #4]
	mov r0, #0x80
	sub r1, r0, r1
	mov r0, #0x68
	sub r3, r0, r2
	add r2, r1, #0
	mul r2, r1
	add r1, r3, #0
	mul r1, r3
	add r1, r2, r1
	add r0, #0x98
	cmp r1, r0
	ble _0219EBE4
	mov r0, #0x51
	lsl r0, r0, #6
	cmp r1, r0
	bge _0219EBE4
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_0219EBE4:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_219eba0

	thumb_func_start ovy257_219ebec
ovy257_219ebec: ; 0x0219EBEC
	push {r4, lr}
	add r2, r1, #0
	mov r0, #0
	add r2, #0xbc
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xc0
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xcc
	strh r0, [r2]
	add r2, r1, #0
	add r2, #0xd0
	str r0, [r2]
	add r2, r1, #0
	mov r3, #0x1f
	add r2, #0xd4
	strh r3, [r2]
	add r2, r1, #0
	add r2, #0xd6
	strb r0, [r2]
	add r2, r1, #0
	add r2, #0xd8
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xdc
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xe0
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xe4
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xe8
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xec
	str r0, [r2]
	add r2, r1, #0
	add r2, #0xf0
	strb r0, [r2]
	add r2, r1, #0
	add r2, #0xf1
	add r1, #0xfc
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219ECA0 ; =0x04001050
	mov r2, #0x1c
	add r0, r4, #0
	mov r1, #0x1c
	sub r2, #0x24
	bl G2x_SetBlendBrightness_
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	sub r0, #0x10
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0x10
	sub r0, #0xc
	strh r3, [r0]
	sub r1, #8
	ldrh r2, [r1]
	mov r0, #0x3f
	bic r2, r0
	orr r2, r3
	strh r2, [r1]
	sub r2, r4, #6
	ldrh r1, [r2]
	sub r4, #0x50
	bic r1, r0
	mov r0, #0x1d
	orr r1, r0
	mov r0, #0x20
	orr r1, r0
	strh r1, [r2]
	ldr r2, [r4]
	ldr r1, _0219ECA4 ; =0xFFFF1FFF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0219ECA0: .word 0x04001050
_0219ECA4: .word 0xFFFF1FFF
	thumb_func_end ovy257_219ebec

	thumb_func_start ovy257_219eca8
ovy257_219eca8: ; 0x0219ECA8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #1
	bl sub_02024EEC
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #1
	bl sub_02024EEC
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_020484B4
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_020484B4
	mov r0, #0
	bl GFL_BGSysLoadScr
	mov r0, #4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x2c]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ED34
	bl sub_0202DA54
	add r0, r4, #0
	add r0, #0x80
	str r6, [r0]
_0219ED34:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ED48
	bl sub_0202DA54
	mov r0, #0
	add r4, #0xd0
	str r0, [r4]
_0219ED48:
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #0xf
	ldr r4, _0219ED80 ; =0x04001050
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x14
	mov r3, #5
	bl G2x_SetBlendAlpha_
	sub r4, #0x50
	ldr r1, [r4]
	ldr r0, _0219ED84 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r4]
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219CB40
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219ED80: .word 0x04001050
_0219ED84: .word 0xFFFF1FFF
	thumb_func_end ovy257_219eca8

	thumb_func_start ovy257_219ed88
ovy257_219ed88: ; 0x0219ED88
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r1, #0xe0
	ldr r1, [r1]
	add r6, r0, #0
	mov r4, #0
	cmp r1, #1
	bne _0219EDB4
	bl sub_021AAB08
	cmp r0, #0
	bne _0219EDB4
	add r0, r5, #0
	add r0, #0xdc
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xe0
	str r4, [r0]
	mov r0, #0x10
	str r0, [r5]
	mov r4, #1
_0219EDB4:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	bne _0219EDE4
	add r0, r6, #0
	bl sub_021AAB08
	cmp r0, #0
	beq _0219EDE4
	add r0, r5, #0
	mov r3, #0
	add r0, #0xe4
	str r3, [r0]
	mov r0, #0x16
	str r0, [r5]
	mov r0, #0x78
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x2e
	bl ovy257_219e790
	mov r4, #1
_0219EDE4:
	cmp r4, #1
	bne _0219EE14
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EDFE
	bl sub_0202DA54
	add r0, r5, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_0219EDFE:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EE14
	bl sub_0202DA54
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0]
_0219EE14:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy257_219ea0c
	cmp r0, #1
	bne _0219EE2E
	add r0, r6, #0
	add r1, r5, #0
	bl ovy257_219eca8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0219EE2E:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy257_219ed88

	thumb_func_start sub_0219EE34
sub_0219EE34: ; 0x0219EE34
	ldr r0, [r1, #0x10]
	bx lr
	thumb_func_end sub_0219EE34

	thumb_func_start sub_0219EE38
sub_0219EE38: ; 0x0219EE38
	ldr r2, [r0]
	cmp r2, #5
	bne _0219EE42
	add r0, #0xdc
	str r1, [r0]
_0219EE42:
	bx lr
	thumb_func_end sub_0219EE38

	thumb_func_start sub_0219EE44
sub_0219EE44: ; 0x0219EE44
	add r0, #0xe0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE44

	thumb_func_start sub_0219EE4C
sub_0219EE4C: ; 0x0219EE4C
	add r0, #0xe4
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE4C

	thumb_func_start sub_0219EE54
sub_0219EE54: ; 0x0219EE54
	add r0, #0xe4
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE54

	thumb_func_start sub_0219EE5C
sub_0219EE5C: ; 0x0219EE5C
	add r0, #0xe8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE5C

	thumb_func_start sub_0219EE64
sub_0219EE64: ; 0x0219EE64
	add r0, #0xec
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE64

	thumb_func_start sub_0219EE6C
sub_0219EE6C: ; 0x0219EE6C
	add r2, r0, #0
	add r2, #0xf0
	ldrb r3, [r2]
	mov r2, #1
	lsl r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0xf0
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EE6C

	thumb_func_start ovy257_219ee84
ovy257_219ee84: ; 0x0219EE84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_021AAAB8
	add r1, r4, #0
	add r1, #0xfc
	ldrb r1, [r1]
	add r4, #0xf0
	ldrb r4, [r4]
	add r0, r0, r1
	lsl r0, r0, #0x18
	mov r2, #1
	lsr r1, r0, #0x18
	mov r3, #0
	add r0, r2, #0
_0219EEA2:
	add r5, r0, #0
	lsl r5, r2
	tst r5, r4
	beq _0219EEB0
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
_0219EEB0:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #4
	blo _0219EEA2
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r1, r0
	bne _0219EEC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219EEC8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219ee84

	thumb_func_start sub_0219EECC
sub_0219EECC: ; 0x0219EECC
	add r2, r0, #0
	add r2, #0xf1
	ldrb r3, [r2]
	mov r2, #1
	lsl r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0xf1
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EECC

	thumb_func_start ovy257_219eee4
ovy257_219eee4: ; 0x0219EEE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_021AAAB8
	add r4, #0xf1
	mov r2, #1
	ldrb r4, [r4]
	mov r3, #0
	add r1, r2, #0
_0219EEF6:
	add r5, r1, #0
	lsl r5, r2
	tst r5, r4
	beq _0219EF04
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
_0219EF04:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #4
	blo _0219EEF6
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, r1
	bne _0219EF1C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219EF1C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_219eee4

	thumb_func_start sub_0219EF20
sub_0219EF20: ; 0x0219EF20
	add r0, #0xf4
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EF20

	thumb_func_start sub_0219EF28
sub_0219EF28: ; 0x0219EF28
	add r0, #0xf4
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EF28

	thumb_func_start sub_0219EF30
sub_0219EF30: ; 0x0219EF30
	add r0, #0xf8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EF30

	thumb_func_start sub_0219EF38
sub_0219EF38: ; 0x0219EF38
	mov r1, #0xfc
	ldrsb r1, [r0, r1]
	add r0, #0xfc
	add r1, r1, #1
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219EF38

	thumb_func_start sub_0219EF44
sub_0219EF44: ; 0x0219EF44
	mov r1, #0
	add r0, #0xfc
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219EF44

	thumb_func_start ovy257_219ef4c
ovy257_219ef4c: ; 0x0219EF4C
	push {r3, r4, r5, lr}
	mov r1, #0x57
	str r1, [sp]
	ldr r3, _0219EFB4 ; =0x021B261C
	mov r1, #0x24
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	bl sub_0207E75C
	bl PM_Init
	mov r0, #1
	bl sub_0207EFC4
	mov r0, #0x50
	bl sub_0207F008
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0219EF84
	ldr r1, _0219EFB8 ; =0x021B2610
	mov r0, #0
	blx sub_0219EFC4
_0219EF84:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy257_219f164
	mov r1, #0x32
	ldr r2, _0219EFB4 ; =0x021B261C
	add r0, r5, #0
	lsl r1, r1, #0xa
	mov r3, #0x86
	bl sub_02042EA4
	str r0, [r4, #4]
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #8]
	ldr r0, _0219EFBC ; =0x021B3D6C
	strb r1, [r4, #0x10]
	str r4, [r0]
	ldr r0, _0219EFC0 ; =0x0219F049
	bl sub_020056B0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0219EFB4: .word 0x021B261C
_0219EFB8: .word 0x021B2610
_0219EFBC: .word 0x021B3D6C
_0219EFC0: .word 0x0219F049
	thumb_func_end ovy257_219ef4c

	arm_func_start sub_0219EFC4
sub_0219EFC4: ; 0x0219EFC4
	ldr pc, _0219EFC8 ; =sub_027047C0
	.align 2, 0
_0219EFC8: .word sub_027047C0
	arm_func_end sub_0219EFC4

	thumb_func_start ovy257_219efcc
ovy257_219efcc: ; 0x0219EFCC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020056C8
	ldr r0, _0219EFFC ; =0x021B3D6C
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl ovy257_219f0d0
	add r0, r4, #0
	bl sub_0219F18C
	mov r0, #0
	bl sub_0207EFC4
	ldr r0, [r4, #4]
	bl sub_02042ED0
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	nop
_0219EFFC: .word 0x021B3D6C
	thumb_func_end ovy257_219efcc

	thumb_func_start ovy257_219f000
ovy257_219f000: ; 0x0219F000
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0219F028
	bl sub_0207E8F8
	cmp r0, #0
	bne _0219F016
	mov r0, #0
	b _0219F026
_0219F016:
	ldr r1, [r4, #4]
	sub r0, r0, r1
	add r1, r0, #4
	mov r0, #0x32
	lsl r0, r0, #0xa
	str r1, [r4]
	cmp r1, r0
	bls _0219F028
_0219F026:
	str r0, [r4]
_0219F028:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0219F03C
	ldr r0, [r4, #0x20]
	bl sub_0206BCAC
	cmp r0, #0
	bne _0219F03C
	mov r0, #0
	str r0, [r4, #0xc]
_0219F03C:
	add r0, r4, #0
	bl sub_0219F198
	pop {r4, pc}
	thumb_func_end ovy257_219f000

	thumb_func_start sub_0219F044
sub_0219F044: ; 0x0219F044
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F044
_0219F048:
	.byte 0x07, 0x48, 0x01, 0x68, 0xC8, 0x68, 0x01, 0x28
	.byte 0x02, 0xD1, 0x48, 0x69, 0x40, 0x1C, 0x48, 0x61, 0x03, 0x48, 0x01, 0x68, 0x08, 0x7C, 0xB4, 0x28
	.byte 0x01, 0xD2, 0x40, 0x1C, 0x08, 0x74, 0x70, 0x47, 0x6C, 0x3D, 0x1B, 0x02

	thumb_func_start ovy257_219f06c
ovy257_219f06c: ; 0x0219F06C
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r2, #0x32
	add r5, r0, #0
	mov r0, #3
	lsl r2, r2, #0xa
	str r0, [sp]
	str r2, [sp, #8]
	ldr r1, [r5, #4]
	mov r0, #0
	str r1, [sp, #4]
	blx MIi_CpuClear32
	ldr r1, [sp, #8]
	mov r0, #0x1f
	tst r0, r1
	beq _0219F094
	mov r0, #0x1f
	bic r1, r0
	str r1, [sp, #8]
_0219F094:
	ldr r0, _0219F0BC ; =0x0219F0C5
	mov r4, #0
	str r0, [sp, #0x14]
	ldr r0, _0219F0C0 ; =0x00001001
	str r4, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, sp, #0
	str r5, [sp, #0x18]
	bl sub_0207E934
	cmp r0, #0
	bne _0219F0B6
	mov r0, #1
	add sp, #0x1c
	str r0, [r5, #8]
	str r4, [r5]
	pop {r4, r5, pc}
_0219F0B6:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0219F0BC: .word 0x0219F0C5
_0219F0C0: .word 0x00001001
	thumb_func_end ovy257_219f06c
_0219F0C4:
	.byte 0x00, 0x20, 0x88, 0x60, 0x32, 0x20, 0x80, 0x02, 0x08, 0x60, 0x70, 0x47

	thumb_func_start ovy257_219f0d0
ovy257_219f0d0: ; 0x0219F0D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219F0DE
	mov r0, #1
	pop {r4, pc}
_0219F0DE:
	bl sub_0207E958
	cmp r0, #0
	bne _0219F104
	bl sub_0207E8F8
	ldr r1, [r4, #4]
	sub r0, r0, r1
	add r1, r0, #4
	mov r0, #0x32
	lsl r0, r0, #0xa
	str r1, [r4]
	cmp r1, r0
	bls _0219F0FC
	str r0, [r4]
_0219F0FC:
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_0219F104:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_219f0d0

	thumb_func_start sub_0219F108
sub_0219F108: ; 0x0219F108
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219F108

	thumb_func_start sub_0219F10C
sub_0219F10C: ; 0x0219F10C
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	bls _0219F11A
	sub r0, r1, r0
	bx lr
_0219F11A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F10C

	thumb_func_start sub_0219F120
sub_0219F120: ; 0x0219F120
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219F120

	thumb_func_start ovy257_219f124
ovy257_219f124: ; 0x0219F124
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r3, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_219a370
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_219f124

	thumb_func_start ovy257_219f144
ovy257_219f144: ; 0x0219F144
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r3, #0
	add r5, r1, #0
	mov r0, #0
	add r1, r4, #0
	lsl r2, r6, #2
	blx MIi_CpuClear32
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_219a388
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_219f144

	thumb_func_start ovy257_219f164
ovy257_219f164: ; 0x0219F164
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	bl sub_0206BB1C
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _0219F17E
	ldr r0, _0219F184 ; =0x021B2628
	ldr r2, _0219F188 ; =0x021B262C
	mov r1, #0
	bl sub_0203CB94
_0219F17E:
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_0219F184: .word 0x021B2628
_0219F188: .word 0x021B262C
	thumb_func_end ovy257_219f164

	thumb_func_start sub_0219F18C
sub_0219F18C: ; 0x0219F18C
	ldr r0, [r0, #0x20]
	ldr r3, _0219F194 ; =sub_0206BB48
	bx r3
	nop
_0219F194: .word sub_0206BB48
	thumb_func_end sub_0219F18C

	thumb_func_start sub_0219F198
sub_0219F198: ; 0x0219F198
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F198

	thumb_func_start ovy257_219f19c
ovy257_219f19c: ; 0x0219F19C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	add r4, r0, #0
	add r6, r1, #0
	cmp r5, #0x20
	bls _0219F1DC
	mov r7, #0
	str r7, [sp]
	lsr r0, r5, #1
	str r0, [sp, #4]
	ldr r0, _0219F1E4 ; =0x00001FF4
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsl r2, r1, #0xb
	str r0, [sp, #0x10]
	mov r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	add r2, r6, r2
	mov r3, #0
	bl sub_0206BB58
	ldr r1, [sp, #0x30]
	add sp, #0x18
	str r0, [r4, #0xc]
	str r7, [r4, #0x14]
	str r5, [r4, #0x18]
	str r1, [r4, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0219F1DC:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F1E4: .word 0x00001FF4
	thumb_func_end ovy257_219f19c

	thumb_func_start sub_0219F1E8
sub_0219F1E8: ; 0x0219F1E8
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #0x20]
	ldr r3, _0219F1F4 ; =sub_0206BC1C
	bx r3
	nop
_0219F1F4: .word sub_0206BC1C
	thumb_func_end sub_0219F1E8

	thumb_func_start sub_0219F1F8
sub_0219F1F8: ; 0x0219F1F8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219F1F8

	thumb_func_start sub_0219F1FC
sub_0219F1FC: ; 0x0219F1FC
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219F1FC

	thumb_func_start sub_0219F200
sub_0219F200: ; 0x0219F200
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0219F200

	thumb_func_start ovy257_219f208
ovy257_219f208: ; 0x0219F208
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x18]
	ldr r2, [r1, #0x1c]
	ldr r1, _0219F220 ; =0x0000010E
	lsl r0, r0, #0xf
	mul r1, r2
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
_0219F220: .word 0x0000010E
	thumb_func_end ovy257_219f208

	thumb_func_start sub_0219F224
sub_0219F224: ; 0x0219F224
	ldrb r0, [r0, #0x10]
	cmp r0, #0xb4
	blo _0219F22E
	mov r0, #1
	bx lr
_0219F22E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F224

	thumb_func_start ovy257_219f234
ovy257_219f234: ; 0x0219F234
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xdb
	str r0, [sp]
	add r0, r1, #0
	ldr r3, _0219F268 ; =0x021B264C
	mov r1, #0x9c
	mov r2, #1
	mov r4, #1
	bl GFL_HeapAllocate
	add r1, r0, #0
	mov r3, #0
	add r1, #0x36
	strb r3, [r1]
	add r1, r0, #0
	mov r2, #3
	add r1, #0x37
	strb r2, [r1]
	str r3, [r0, #0x28]
	str r3, [r0, #0x24]
	lsl r1, r4, #0xf
	strh r1, [r0, #0x34]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219F268: .word 0x021B264C
	thumb_func_end ovy257_219f234

	thumb_func_start sub_0219F26C
sub_0219F26C: ; 0x0219F26C
	ldr r3, _0219F274 ; =GFL_HeapFree
	add r0, r1, #0
	bx r3
	nop
_0219F274: .word GFL_HeapFree
	thumb_func_end sub_0219F26C

	thumb_func_start ovy257_219f278
ovy257_219f278: ; 0x0219F278
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA54
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAA58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF50
	mov r0, #7
	bl GFL_BGSysLoadScr
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	ldr r2, _0219F444 ; =0x04000304
	ldr r0, _0219F448 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bl GetDefaultUINarcIdx
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r0, #0
	bl sub_02045738
	bl sub_0202D828
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0x60
	str r7, [sp, #0xc]
	bl GFL_G2DIOLoadNSCRSync
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #0
	bl GFL_BGSysLoadScr
	mov r0, #0
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r6, sp, #0xc4
	mov r0, #0x10
	strh r0, [r6]
	mov r0, #0xcc
	strh r0, [r6, #2]
	mov r0, #1
	strh r0, [r6, #4]
	mov r0, #8
	strb r0, [r6, #6]
	mov r0, #0
	strb r0, [r6, #7]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x58]
	mov r0, #0x38
	strh r0, [r6]
	mov r0, #3
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x5c]
	mov r0, #0x60
	strh r0, [r6]
	mov r0, #5
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x60]
	mov r0, #0x88
	strh r0, [r6]
	mov r0, #7
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x64]
	mov r0, #0xc8
	strh r0, [r6]
	add r0, r5, #0
	bl sub_021AAB18
	cmp r0, #1
	bne _0219F44C
	mov r0, #0xc
	b _0219F44E
	nop
_0219F444: .word 0x04000304
_0219F448: .word 0xFFFF7FFF
_0219F44C:
	mov r0, #0xa
_0219F44E:
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x40]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x44]
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl sub_021AAA60
	str r0, [sp, #0x48]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x68]
	mov r1, #0xe0
	add r0, sp, #0xc4
	strh r1, [r0]
	mov r1, #0xc0
	strh r1, [r0, #2]
	mov r1, #1
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #7
	bl sub_021AAA60
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #3
	bl sub_021AAA60
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r4, #0x6c]
	bl sub_0204C520
_0219F4DA:
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, #0x58]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _0219F4DA
	mov r0, #0x38
	add r6, sp, #0xc4
	strh r0, [r6]
	mov r0, #0x48
	strh r0, [r6, #2]
	mov r0, #0xe
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x60]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x70]
	mov r0, #0x5c
	strh r0, [r6, #2]
	mov r0, #0xf
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x64]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x68]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x6c]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x74]
	mov r0, #0x70
	strh r0, [r6, #2]
	mov r0, #0x10
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x70]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x74]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x78]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x78]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x78]
	mov r0, #0x84
	strh r0, [r6, #2]
	mov r0, #0x11
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x7c]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x80]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x84]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x84]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x7c]
	mov r0, #0x2c
	strh r0, [r6]
	mov r0, #0x8c
	strh r0, [r6, #2]
	mov r0, #1
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl sub_021AAA60
	str r0, [sp, #0x88]
	add r0, r5, #0
	mov r1, #2
	bl sub_021AAA60
	str r0, [sp, #0x8c]
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x8c]
	add r0, r6, #0
	str r7, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	mov r6, #0
_0219F654:
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _0219F654
	add r6, sp, #0xc4
	mov r0, #0x10
	strh r0, [r6]
	mov r0, #0xa0
	strh r0, [r6, #2]
	mov r0, #0xf
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x90]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x94]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0x98]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x88
	strh r0, [r6]
	mov r0, #0xa0
	strh r0, [r6, #2]
	mov r0, #0x10
	strh r0, [r6, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x9c]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0xa0]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0xa4]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0xa4]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0
	strb r0, [r6, #6]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0xa8]
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0xac]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0xb0]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x19
	strh r0, [r6, #4]
	mov r0, #2
	strb r0, [r6, #6]
	add r0, r5, #0
	bl sub_021AAA6C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0xb4]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AAA60
	str r0, [sp, #0xb8]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0xc4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0xb4]
	ldr r2, [sp, #0xb8]
	add r0, r6, #0
	str r7, [sp, #8]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	mov r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
	add r0, r5, #0
	bl sub_021AAA7C
	str r0, [sp, #0xbc]
	add r0, r5, #0
	bl sub_021AAA84
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA8C
	str r0, [sp, #0xc0]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #3
	mov r2, #1
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x4c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r6, #0
	mov r1, #0xb
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x4c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xbc]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0x88
	lsl r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [sp, #0xc0]
	mov r2, #1
	mov r3, #0
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4]
	mov r0, #0x18
	add r1, r4, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	mov r0, #0
	add r1, #0x96
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	ldrh r1, [r4, #0x34]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, _0219F874 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	ldr r0, _0219F878 ; =0x0500021A
	strh r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0648
	mov r0, #1
	add r1, r7, #0
	bl sub_02042BA8
	add r0, r5, #0
	bl sub_021AAE44
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F874: .word 0x00007FFF
_0219F878: .word 0x0500021A
	thumb_func_end ovy257_219f278

	thumb_func_start ovy257_219f87c
ovy257_219f87c: ; 0x0219F87C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl sub_021AAA54
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0219F89C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0219F898
	mov r0, #0
	b _0219F89A
_0219F898:
	mov r0, #3
_0219F89A:
	str r0, [r4, #0x28]
_0219F89C:
	mov r0, #0
	mov r7, #0
	bl sub_02042BA8
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_02024EEC
	ldr r5, [r4, #0x48]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x48]
	bl sub_02048210
	ldr r5, [r4, #0x4c]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x4c]
	bl sub_02048210
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _0219F8FA
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x50]
	bl sub_02048210
	str r7, [r4, #0x50]
_0219F8FA:
	mov r5, #0
_0219F8FC:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	bl sub_0204C108
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _0219F8FC
	mov r5, #0
_0219F912:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x58]
	bl sub_0204C108
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0219F912
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0x84
	ldr r0, [r4]
	bl sub_0204C108
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	bl GFL_BGSysLoadScr
	mov r0, #0
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl GFL_BGSysLoadScr
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	ldr r2, _0219F9A0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r6, #0
	bl ovy257_21aad08
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F9A0: .word 0x04000304
	thumb_func_end ovy257_219f87c

	thumb_func_start ovy257_219f9a4
ovy257_219f9a4: ; 0x0219F9A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl sub_021AAA54
	add r5, r0, #0
	mov r7, #0
	ldr r0, [r4]
	str r7, [r4, #8]
	cmp r0, #0xe
	bhi _0219FAB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F9C8: ; jump table
	.short _0219F9E6 - _0219F9C8 - 2 ; case 0
	.short _0219FA18 - _0219F9C8 - 2 ; case 1
	.short _0219FA28 - _0219F9C8 - 2 ; case 2
	.short _0219FA60 - _0219F9C8 - 2 ; case 3
	.short _0219FA8E - _0219F9C8 - 2 ; case 4
	.short _0219FAAC - _0219F9C8 - 2 ; case 5
	.short _0219FACC - _0219F9C8 - 2 ; case 6
	.short _0219FB02 - _0219F9C8 - 2 ; case 7
	.short _0219FB16 - _0219F9C8 - 2 ; case 8
	.short _0219FB30 - _0219F9C8 - 2 ; case 9
	.short _0219FB5E - _0219F9C8 - 2 ; case 10
	.short _0219FB90 - _0219F9C8 - 2 ; case 11
	.short _0219FBA4 - _0219F9C8 - 2 ; case 12
	.short _0219FBBA - _0219F9C8 - 2 ; case 13
	.short _0219FBE0 - _0219F9C8 - 2 ; case 14
_0219F9E6:
	add r0, r6, #0
	bl sub_021AAA74
	cmp r0, #1
	bne _0219F9FE
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	add r0, r7, #0
	b _0219FA0A
_0219F9FE:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
_0219FA0A:
	mov r2, #1
	add r3, r7, #0
	bl GFL_FadeScreenSet
	mov r0, #1
_0219FA14:
	str r0, [r4]
	b _0219FC12
_0219FA18:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219FAB8
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #4
	b _0219FA14
_0219FA28:
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0219FA40
	add r0, r6, #0
	bl ovy257_219af08
	cmp r0, #1
	bne _0219FAB8
_0219FA40:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	bl GFL_FadeScreenSet
	mov r0, #3
	str r0, [r4]
	str r5, [r4, #0x18]
	b _0219FC12
_0219FA60:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219FAB8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0219FA88
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0219FA82
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a0a58
	b _0219FC12
_0219FA82:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219FA88:
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_0219FA8E:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a08e0
	cmp r0, #0
	bne _0219FAB8
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a0a58
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219fe2c
	b _0219FC12
_0219FAAC:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a08e0
	cmp r0, #0
	beq _0219FABA
_0219FAB8:
	b _0219FC12
_0219FABA:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a0a58
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_219feb4
	b _0219FC12
_0219FACC:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x24
	bl ovy257_21a0924
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
	mov r0, #7
_0219FAF0:
	str r0, [r4]
_0219FAF2:
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219b4fc
	b _0219FC10
_0219FB02:
	bl sub_0203DA48
	cmp r0, #1
	beq _0219FB14
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219FC12
_0219FB14:
	b _0219FBF2
_0219FB16:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xa
	add r3, r7, #0
	bl ovy257_219c284
	cmp r0, #1
	bne _0219FC12
	mov r0, #9
	b _0219FA14
_0219FB30:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x25
	bl ovy257_21a0924
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
	mov r0, #0xa
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x54
	strh r7, [r0]
	b _0219FAF2
_0219FB5E:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x54
	strh r1, [r0]
	bl sub_0203DA48
	cmp r0, #1
	beq _0219FB8C
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _0219FB8C
	add r0, r4, #0
	add r0, #0x54
	ldrh r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	blo _0219FC12
_0219FB8C:
	mov r0, #0xb
	b _0219FA14
_0219FB90:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x2f
	bl ovy257_219cc54
	mov r0, #0xc
	b _0219FA14
_0219FBA4:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0x2f
	bl ovy257_219cc68
	cmp r0, #1
	bne _0219FC12
	b _0219FBF2
_0219FBBA:
	add r0, r6, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219bac4
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x26
	bl ovy257_21a0924
	add r0, r6, #0
	mov r1, #1
	mov r5, #1
	bl sub_021AAB14
	mov r0, #0xe
	b _0219FAF0
_0219FBE0:
	bl sub_0203DA48
	cmp r0, #1
	beq _0219FBF2
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219FC12
_0219FBF2:
	mov r0, #2
	mov r5, #1
	str r0, [r4]
	add r0, r6, #0
	mov r1, #1
	str r5, [r4, #0x1c]
	bl sub_021AAB14
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy257_219aef0
_0219FC10:
	str r5, [r4, #0x20]
_0219FC12:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a04bc
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0219FC28
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a0274
_0219FC28:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _0219FCA4
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FCA4
	mov r2, #5
	ldr r0, [r4, #0x48]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #9
	bl sub_02024E80
	ldr r0, [r4, #0x48]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x48]
	bl sub_0204826C
	mov r0, #4
	bl sub_02045B7C
	mov r5, #0
	ldr r0, [r4, #0x3c]
	str r5, [r4, #0x38]
	cmp r0, #1
	bne _0219FC8C
	mov r7, #1
_0219FC74:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _0219FC74
	b _0219FCA4
_0219FC8C:
	add r7, r5, #0
_0219FC8E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _0219FC8E
_0219FCA4:
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0219FCDA
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FCDA
	ldr r0, [r4, #0x4c]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x4c]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	mov r0, #0
	str r0, [r4, #0x40]
_0219FCDA:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0219FD16
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0219FD16
	add r0, r6, #0
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x50]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FD16
	ldr r0, [r4, #0x50]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x50]
	bl sub_0204826C
	mov r0, #0
	mov r5, #0
	bl GFL_BGSysLoadScr
	str r5, [r4, #0x44]
_0219FD16:
	ldr r0, [r4]
	cmp r0, #5
	bgt _0219FD78
	add r0, r6, #0
	bl sub_021AAB18
	cmp r0, #0
	bne _0219FD78
	add r0, r6, #0
	bl sub_021AAA0C
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	beq _0219FD40
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	b _0219FD74
_0219FD40:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219FD52
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #5
	b _0219FD74
_0219FD52:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _0219FD64
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	b _0219FD74
_0219FD64:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219FD78
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
_0219FD74:
	bl ovy257_219b4b8
_0219FD78:
	add r0, r6, #0
	bl sub_021AAB08
	cmp r0, #0
	bne _0219FDAC
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0219FDAC
	add r0, r6, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0219B130
	cmp r0, #0
	bne _0219FDAC
	add r0, r6, #0
	bl sub_021AAAF0
	ldr r0, _0219FE24 ; =0x0000066C
	bl GFL_SndSEPlay
_0219FDAC:
	add r0, r4, #0
	add r0, #0x96
	ldrh r3, [r0]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, r1
	lsl r0, r1, #6
	cmp r2, r0
	blt _0219FDC6
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r1, r3, r0
	b _0219FDCE
_0219FDC6:
	add r0, r4, #0
	add r0, #0x96
	ldrh r0, [r0]
	add r1, r0, r1
_0219FDCE:
	add r0, r4, #0
	add r0, #0x96
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	ldrh r0, [r0]
	mov r3, #2
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0219FE28 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r1, r0, #0x10
	mov r0, #8
	mvn r0, r0
	mul r0, r1
	asr r0, r0, #0xc
	add r0, #0x1c
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	lsl r0, r2, #5
	lsl r1, r2, #0xa
	orr r0, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x94
	strh r1, [r0]
	add r4, #0x94
	mov r0, #0xe
	mov r1, #0xde
	add r2, r4, #0
	bl sub_0205FA10
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FE24: .word 0x0000066C
_0219FE28: .word FX_SinCosTable_
	thumb_func_end ovy257_219f9a4

	thumb_func_start ovy257_219fe2c
ovy257_219fe2c: ; 0x0219FE2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _0219FE76
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0219FE76
	ldr r0, [r4, #0x6c]
	bl sub_0204C560
	cmp r0, #0
	beq _0219FE58
	ldr r0, [r4, #0x6c]
	bl sub_0204C4A0
	cmp r0, #1
	bne _0219FE88
_0219FE58:
	mov r0, #5
	str r0, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy257_21a0648
	ldr r0, [r4, #0x6c]
	mov r1, #1
	bl sub_0204C488
	ldr r0, _0219FEA8 ; =0x0000066C
	b _0219FE84
_0219FE76:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219FE88
	ldr r0, _0219FEAC ; =0x00000551
	str r1, [r4]
_0219FE84:
	bl GFL_SndSEPlay
_0219FE88:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xc
	tst r0, r1
	beq _0219FEA6
	add r0, r5, #0
	bl sub_021AAB1C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	ldr r0, _0219FEB0 ; =0x0000066F
	bl GFL_SndSEPlay
_0219FEA6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FEA8: .word 0x0000066C
_0219FEAC: .word 0x00000551
_0219FEB0: .word 0x0000066F
	thumb_func_end ovy257_219fe2c

	thumb_func_start ovy257_219feb4
ovy257_219feb4: ; 0x0219FEB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021A01D8 ; =0x021B1A58
	add r4, r1, #0
	bl sub_0203DA0C
	add r6, r0, #0
	bne _0219FF06
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	bne _0219FF06
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	mov r0, #1
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021A01DC ; =0x0000066C
	bl GFL_SndSEPlay
_0219FF06:
	cmp r6, #1
	bne _0219FF1E
	mov r7, #1
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x28]
	bl ovy257_21a0538
	ldr r0, _021A01DC ; =0x0000066C
	str r7, [r4, #8]
	bl GFL_SndSEPlay
_0219FF1E:
	cmp r6, #2
	bne _0219FF38
	mov r0, #2
	str r0, [r4, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, _021A01DC ; =0x0000066C
	bl GFL_SndSEPlay
_0219FF38:
	cmp r6, #3
	bne _0219FF7C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	bne _0219FF7C
	mov r0, #3
	str r0, [r4, #0x28]
	mov r7, #1
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x24]
	bl ovy257_21a0538
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	str r7, [r4, #8]
	str r7, [r4, #0x14]
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021A01DC ; =0x0000066C
	bl GFL_SndSEPlay
_0219FF7C:
	cmp r6, #4
	bne _0219FF98
	add r0, r5, #0
	bl sub_021AAB1C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, _021A01E0 ; =0x0000066F
	bl GFL_SndSEPlay
_0219FF98:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A001C
	ldr r0, _021A01E4 ; =0x021B1A74
	bl sub_0203DA0C
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021A001C
	ldr r0, _021A01E8 ; =0x021B1A1C
	lsl r1, r7, #2
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, _021A01EC ; =0x021B1A90
	add r2, sp, #0
	ldrh r1, [r0]
	strh r1, [r2, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #1
	strh r0, [r2, #0x16]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x8c
	add r7, #0x11
	lsl r1, r7, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, sp, #0x14
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _021A01DC ; =0x0000066C
	bl GFL_SndSEPlay
_021A001C:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A00A0
	ldr r0, _021A01F0 ; =0x021B1A3C
	bl sub_0203DA0C
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021A00A0
	ldr r0, _021A01F4 ; =0x021B1A28
	lsl r1, r7, #2
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, _021A01DC ; =0x0000066C
	bl GFL_SndSEPlay
	ldr r0, _021A01F8 ; =0x021B1A94
	add r2, sp, #0
	ldrh r1, [r0]
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #2]
	mov r1, #1
	strh r0, [r2, #0x12]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x8c
	add r7, #0x14
	lsl r1, r7, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, sp, #0x10
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021A00A0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	bne _021A00BA
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	bne _021A00BA
	cmp r6, #5
	bne _021A0106
_021A00BA:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _021A0106
	mov r0, #4
	str r0, [r4]
	mov r0, #0x18
	mov r6, #1
	strb r0, [r4, #4]
	str r6, [r4, #8]
	bl sub_0203DA2C
	cmp r0, #1
	bne _021A00E6
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DA84
	str r6, [r4, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x30]
_021A00E6:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy257_21a0648
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a09d0
	ldr r0, _021A01FC ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x6c]
	mov r1, #9
	bl sub_0204C488
_021A0106:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xc
	tst r0, r1
	beq _021A0124
	add r0, r5, #0
	bl sub_021AAB1C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	ldr r0, _021A01E0 ; =0x0000066F
	bl GFL_SndSEPlay
_021A0124:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #1
	bne _021A0148
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A0148
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a09d0
_021A0148:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A01B2
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A01B2
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	bne _021A01B2
	ldr r0, _021A0200 ; =0x021B1A98
	add r1, sp, #0
	ldrh r2, [r0]
	strh r2, [r1, #4]
	ldrh r0, [r0, #2]
	strh r0, [r1, #6]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A0190
	cmp r0, #1
	beq _021A0188
	cmp r0, #2
	b _021A0198
_021A0188:
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r0, #0x10
	b _021A0196
_021A0190:
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r0, #0x20
_021A0196:
	strh r0, [r1, #4]
_021A0198:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, sp, #4
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
_021A01B2:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A0270
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A0270
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204C138
	cmp r0, #0
	bne _021A0270
	ldr r1, _021A0204 ; =0x021B1A9C
	b _021A0208
	.align 2, 0
_021A01D8: .word 0x021B1A58
_021A01DC: .word 0x0000066C
_021A01E0: .word 0x0000066F
_021A01E4: .word 0x021B1A74
_021A01E8: .word 0x021B1A1C
_021A01EC: .word 0x021B1A90
_021A01F0: .word 0x021B1A3C
_021A01F4: .word 0x021B1A28
_021A01F8: .word 0x021B1A94
_021A01FC: .word 0x00000551
_021A0200: .word 0x021B1A98
_021A0204: .word 0x021B1A9C
_021A0208:
	add r0, sp, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	add r1, r4, #0
	add r1, #0x37
	ldrb r1, [r1]
	cmp r1, #7
	bhi _021A0258
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A0228: ; jump table
	.short _021A0258 - _021A0228 - 2 ; case 0
	.short _021A0258 - _021A0228 - 2 ; case 1
	.short _021A0258 - _021A0228 - 2 ; case 2
	.short _021A0238 - _021A0228 - 2 ; case 3
	.short _021A0240 - _021A0228 - 2 ; case 4
	.short _021A0258 - _021A0228 - 2 ; case 5
	.short _021A0248 - _021A0228 - 2 ; case 6
	.short _021A0250 - _021A0228 - 2 ; case 7
_021A0238:
	mov r1, #0
	ldrsh r1, [r0, r1]
	sub r1, #0x20
	b _021A0256
_021A0240:
	mov r1, #0
	ldrsh r1, [r0, r1]
	sub r1, #0x10
	b _021A0256
_021A0248:
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r1, #0x10
	b _021A0256
_021A0250:
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r1, #0x20
_021A0256:
	strh r1, [r0]
_021A0258:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r4, #0x90
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C124
_021A0270:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_219feb4

	thumb_func_start ovy257_21a0274
ovy257_21a0274: ; 0x021A0274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_0203DAC8
	add r0, r5, #0
	bl sub_021AAB2C
	cmp r0, #1
	bne _021A0290
	b _021A04A8
_021A0290:
	bl sub_0203DA2C
	cmp r0, #0
	bne _021A029C
	mov r0, #0
	str r0, [r4, #0xc]
_021A029C:
	bl sub_0203DA48
	cmp r0, #1
	bne _021A02DE
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021A02DE
	ldr r0, [r4]
	cmp r0, #5
	bne _021A02DE
	ldr r0, [sp, #0x18]
	cmp r0, #0xa8
	blo _021A02DE
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021A02D2
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021A02C6
	mov r0, #0
	b _021A02C8
_021A02C6:
	mov r0, #3
_021A02C8:
	str r0, [r4, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
_021A02D2:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a09d0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A02DE:
	ldr r0, [r4]
	sub r0, r0, #4
	cmp r0, #1
	bhi _021A0354
	bl sub_0203DA48
	cmp r0, #1
	bne _021A0354
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021A0354
	ldr r0, [r4, #0x28]
	cmp r0, #3
	bne _021A0354
	add r0, r5, #0
	bl sub_021AAAB8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA14
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAA34
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x14
	bl ovy257_219ccf0
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021A0354
	ldr r0, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	strb r0, [r1, #1]
	ldr r0, [sp, #0x1c]
	strb r0, [r1, #2]
	ldr r0, [sp, #0x18]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r6, #1
	strb r0, [r1, #6]
	ldrh r0, [r4, #0x34]
	strh r0, [r1, #4]
	bne _021A034C
	ldr r0, [sp, #4]
	bl ovy257_219a7f8
	b _021A0354
_021A034C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219CD34
_021A0354:
	bl sub_0203DA48
	cmp r0, #1
	bne _021A0404
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021A0404
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021A03F2
	blx G2_GetBG2ScrPtr
	ldr r1, [sp, #0x18]
	lsl r6, r1, #9
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #1
	add r7, r1, r0
	blx G2_GetBG3ScrPtr
	add r0, r5, #0
	bl sub_021AAADC
	cmp r0, #1
	bne _021A039C
	blx G2_GetBG3ScrPtr
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsr r0, r0, #1
	lsl r2, r0, #9
	mov r0, #1
	bic r1, r0
	add r0, r1, r3
	add r0, r2, r0
	b _021A03AC
_021A039C:
	blx G2_GetBG3ScrPtr
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	lsl r2, r2, #1
	lsl r1, r1, #9
	add r0, r2, r0
	add r0, r1, r0
_021A03AC:
	ldrh r3, [r6, r7]
	mov r1, #2
	lsl r1, r1, #0xe
	add r2, r3, #0
	tst r2, r1
	beq _021A03BC
	strh r3, [r4, #0x34]
	b _021A03CA
_021A03BC:
	ldrh r2, [r0]
	add r0, r2, #0
	tst r0, r1
	beq _021A03C8
	strh r2, [r4, #0x34]
	b _021A03CA
_021A03C8:
	strh r1, [r4, #0x34]
_021A03CA:
	ldrh r1, [r4, #0x34]
	ldr r0, _021A04AC ; =0x00007FFF
	and r1, r0
	ldr r0, _021A04B0 ; =0x0500021A
	strh r1, [r0]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021A03DE
	mov r0, #0
	b _021A03E0
_021A03DE:
	mov r0, #3
_021A03E0:
	str r0, [r4, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a0538
	ldr r0, _021A04B4 ; =0x0000066D
	bl GFL_SndSEPlay
	b _021A0404
_021A03F2:
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, _021A04B8 ; =0x0000FFFF
	add r1, r4, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl ovy257_21a09d0
_021A0404:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A040E
	cmp r0, #2
	bne _021A04A8
_021A040E:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021A04A8
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DA84
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021A04A8
	ldr r1, [r4, #0x2c]
	ldr r0, _021A04B8 ; =0x0000FFFF
	cmp r1, r0
	beq _021A04A0
	ldr r1, [r4, #0x30]
	cmp r1, r0
	beq _021A04A0
	add r0, r5, #0
	bl sub_021AAAB8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAA14
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA34
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #8
	bl ovy257_219ccf0
	add r1, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A049C
	ldr r0, [r4, #0x2c]
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	strb r0, [r1, #1]
	ldr r0, [sp, #0x10]
	strb r0, [r1, #2]
	ldr r0, [sp, #0xc]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldr r0, [r4, #0x28]
	cmp r0, #2
	bne _021A0482
	mov r0, #0
	strh r0, [r1, #4]
	mov r0, #2
	strb r0, [r1, #6]
	b _021A0486
_021A0482:
	ldrh r0, [r4, #0x34]
	strh r0, [r1, #4]
_021A0486:
	cmp r7, #1
	bne _021A0492
	ldr r0, [sp]
	bl ovy257_219a7f8
	b _021A04A0
_021A0492:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219CD34
	b _021A04A0
_021A049C:
	mov r0, #0
	str r0, [r4, #0xc]
_021A04A0:
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x30]
_021A04A8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A04AC: .word 0x00007FFF
_021A04B0: .word 0x0500021A
_021A04B4: .word 0x0000066D
_021A04B8: .word 0x0000FFFF
	thumb_func_end ovy257_21a0274

	thumb_func_start ovy257_21a04bc
ovy257_21a04bc: ; 0x021A04BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x6c]
	mov r4, #0
	bl sub_0204C560
	cmp r0, #0
	beq _021A04D6
	ldr r0, [r5, #0x6c]
	bl sub_0204C4A0
	cmp r0, #1
	bne _021A04EC
_021A04D6:
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #4]
	cmp r0, r1
	bhs _021A04E2
	sub r1, #0x18
	b _021A04E8
_021A04E2:
	cmp r0, r1
	bls _021A04EC
	add r1, #0x18
_021A04E8:
	strb r1, [r5, #5]
	mov r4, #1
_021A04EC:
	cmp r4, #1
	bne _021A0536
	ldrb r3, [r5, #5]
	mov r2, #0x18
	mov r0, #0
	mov r1, #3
	sub r2, r2, r3
	mov r4, #0
	bl sub_02045E1C
	add r7, sp, #0
_021A0502:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x58]
	add r1, sp, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	ldrb r0, [r5, #5]
	add r0, #0xb4
	strh r0, [r7, #2]
	cmp r4, #5
	bne _021A0522
	mov r0, #2
	ldrsh r0, [r7, r0]
	sub r0, #0xc
	strh r0, [r7, #2]
_021A0522:
	ldr r0, [r6, #0x58]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A0502
_021A0536:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a04bc

	thumb_func_start ovy257_21a0538
ovy257_21a0538: ; 0x021A0538
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	mov r2, #1
	cmp r0, #0
	beq _021A0548
	mov r2, #0
_021A0548:
	ldr r1, _021A0638 ; =0x021B1A12
	ldr r0, [r4, #0x58]
	ldrb r1, [r1, r2]
	bl sub_0204C488
	ldr r0, [r4, #0x28]
	mov r2, #1
	cmp r0, #1
	beq _021A055C
	mov r2, #0
_021A055C:
	ldr r1, _021A063C ; =0x021B1A14
	ldr r0, [r4, #0x5c]
	ldrb r1, [r1, r2]
	bl sub_0204C488
	ldr r0, [r4, #0x28]
	mov r2, #1
	cmp r0, #2
	beq _021A0570
	mov r2, #0
_021A0570:
	ldr r1, _021A0640 ; =0x021B1A16
	ldr r0, [r4, #0x60]
	ldrb r1, [r1, r2]
	bl sub_0204C488
	ldr r0, [r4, #0x28]
	mov r2, #1
	cmp r0, #3
	beq _021A0584
	mov r2, #0
_021A0584:
	ldr r1, _021A0644 ; =0x021B1A18
	ldr r0, [r4, #0x64]
	ldrb r1, [r1, r2]
	bl sub_0204C488
	add r0, r5, #0
	bl sub_021AAB18
	cmp r0, #1
	ldr r0, [r4, #0x68]
	bne _021A059E
	mov r1, #0xc
	b _021A05A0
_021A059E:
	mov r1, #0xa
_021A05A0:
	bl sub_0204C488
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A05EE
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A05EE
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021A05EE:
	ldr r0, [r4, #0x28]
	cmp r0, #3
	beq _021A0636
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A0636
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C520
	add r4, #0x90
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
_021A0636:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0638: .word 0x021B1A12
_021A063C: .word 0x021B1A14
_021A0640: .word 0x021B1A16
_021A0644: .word 0x021B1A18
	thumb_func_end ovy257_21a0538

	thumb_func_start ovy257_21a0648
ovy257_21a0648: ; 0x021A0648
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp, #0xc]
	bl sub_021AAA7C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021AAA84
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021AAA8C
	ldr r1, [r5, #0x48]
	add r6, r0, #0
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _021A0682
	bl sub_02021C44
	ldr r0, [r5, #0x48]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r5, #0x48]
	bl sub_020484B4
_021A0682:
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x3c]
	cmp r0, #1
	beq _021A068C
	b _021A0792
_021A068C:
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #8
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x48]
	bl BmpWin_FlushChar
	add r0, r7, #0
	mov r1, #6
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0x40
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #4
	bl sub_02021C7C
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #7
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	mov r2, #0x40
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x18
	bl sub_02021C7C
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #8
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #0x40
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x2c
	bl sub_02021C7C
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #0xa
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r2, #0x40
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x40
	bl sub_02021C7C
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #9
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x40
	mov r3, #0x54
	b _021A08C4
_021A0792:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #0x10
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x48]
	bl BmpWin_FlushChar
	add r0, r7, #0
	mov r1, #0
	bl sub_0204898C
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #8
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	mov r2, #8
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x10
	bl sub_02021C7C
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #2
	bl sub_0204898C
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #8
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02021C7C
	ldr r0, [sp, #0x2c]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #3
	bl sub_0204898C
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	mov r2, #0x50
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x30]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #4
	bl sub_0204898C
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	mov r2, #0x50
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x10
	bl sub_02021C7C
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #5
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x50
	mov r3, #0x20
_021A08C4:
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021A08DC
	bl sub_02048210
_021A08DC:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a0648

	thumb_func_start ovy257_21a08e0
ovy257_21a08e0: ; 0x021A08E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAB34
	cmp r0, #1
	bne _021A090C
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219BB24
	cmp r0, #5
	bne _021A0904
	mov r0, #9
	b _021A0906
_021A0904:
	mov r0, #6
_021A0906:
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A090C:
	add r0, r5, #0
	bl sub_021AAAB8
	cmp r0, #1
	bhi _021A091E
	mov r0, #0xd
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A091E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a08e0

	thumb_func_start ovy257_21a0924
ovy257_21a0924: ; 0x021A0924
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp, #0xc]
	bl sub_021AAA7C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021AAA8C
	add r6, r0, #0
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021A094E
	bl sub_02048210
_021A094E:
	ldrb r0, [r5, #4]
	mov r2, #4
	cmp r0, #0
	beq _021A0958
	mov r2, #1
_021A0958:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x50]
	add r0, r6, #0
	bl sub_02021C44
	ldr r0, [r5, #0x50]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x50]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0x11
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x50]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x50]
	bl sub_0204826C
	mov r2, #1
	ldr r0, [r5, #0x50]
	mov r1, #1
	lsl r2, r2, #9
	mov r3, #9
	bl sub_02024E80
	mov r0, #1
	str r0, [r5, #0x44]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a0924

	thumb_func_start ovy257_21a09d0
ovy257_21a09d0: ; 0x021A09D0
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0x90
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	thumb_func_end ovy257_21a09d0

	thumb_func_start ovy257_21a0a58
ovy257_21a0a58: ; 0x021A0A58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_021AAA1C
	add r4, r0, #0
	bl sub_0219EE54
	cmp r0, #1
	bne _021A0A7C
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021A0A7C
	add r0, r5, #0
	mov r1, #1
	add r0, #0x98
	str r1, [r0]
_021A0A7C:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021A0AC2
	cmp r0, #1
	beq _021A0A90
	cmp r0, #2
	beq _021A0AA4
	pop {r3, r4, r5, pc}
_021A0A90:
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x20
	bl sub_02040624
	mov r0, #2
	add r5, #0x98
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A0AA4:
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A0AC2
	add r0, r4, #0
	mov r1, #0
	mov r4, #0
	bl sub_0219EE4C
	add r5, #0x98
	str r4, [r5]
_021A0AC2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a0a58

	thumb_func_start ovy257_21a0ac4
ovy257_21a0ac4: ; 0x021A0AC4
	push {r3, lr}
	mov r0, #0xdc
	str r0, [sp]
	add r0, r1, #0
	ldr r1, _021A0AD8 ; =0x0000040C
	ldr r3, _021A0ADC ; =0x021B2658
	mov r2, #1
	bl GFL_HeapAllocate
	pop {r3, pc}
	.align 2, 0
_021A0AD8: .word 0x0000040C
_021A0ADC: .word 0x021B2658
	thumb_func_end ovy257_21a0ac4

	thumb_func_start sub_021A0AE0
sub_021A0AE0: ; 0x021A0AE0
	ldr r3, _021A0AE8 ; =GFL_HeapFree
	add r0, r1, #0
	bx r3
	nop
_021A0AE8: .word GFL_HeapFree
	thumb_func_end sub_021A0AE0

	thumb_func_start ovy257_21a0aec
ovy257_21a0aec: ; 0x021A0AEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021AAA54
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAA58
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021AAA4C
	str r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	cmp r0, #2
	beq _021A0B50
	cmp r0, #3
	beq _021A0B50
	add r0, r5, #0
	bl sub_021AAB50
	cmp r0, #0
	bne _021A0B50
	mov r0, #0xa
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #4
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #4
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF50
	mov r0, #4
	bl GFL_BGSysLoadScr
_021A0B50:
	mov r1, #3
	add r0, sp, #0x78
	strb r1, [r0, #7]
	mov r0, #0
	str r0, [sp, #0x18]
_021A0B5A:
	mov r1, #0x80
	add r0, sp, #0x78
	strh r1, [r0]
	ldr r0, [sp, #0x18]
	lsl r1, r0, #5
	add r1, #0x10
	add r0, sp, #0x78
	strh r1, [r0, #2]
	mov r1, #8
	strh r1, [r0, #4]
	mov r1, #0x20
	strb r1, [r0, #6]
	ldr r1, [sp, #0x18]
	mov r0, #0x1c
	mul r0, r1
	add r4, r6, r0
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x78
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x48]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl sub_0204C520
	mov r1, #0x12
	add r0, sp, #0x78
	strh r1, [r0]
	mov r1, #9
	strh r1, [r0, #4]
	mov r1, #0x10
	strb r1, [r0, #6]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x78
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r4, #0x4c]
	bl sub_0204C124
	mov r1, #0xc8
	add r0, sp, #0x78
	strh r1, [r0]
	mov r1, #0x12
	strh r1, [r0, #4]
	mov r1, #0x10
	strb r1, [r0, #6]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x40]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x78
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	str r0, [r4, #0x50]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #0xf
	bhs _021A0C74
	b _021A0B5A
_021A0C74:
	mov r0, #0xe0
	add r4, sp, #0x78
	strh r0, [r4]
	mov r0, #0xa8
	strh r0, [r4, #2]
	add r0, r5, #0
	bl sub_021AAB50
	cmp r0, #0
	bne _021A0C8C
	mov r0, #1
	b _021A0C8E
_021A0C8C:
	mov r0, #0xf
_021A0C8E:
	strh r0, [r4, #4]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x78
	strb r1, [r0, #6]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #7]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x44]
	add r0, r5, #0
	mov r1, #6
	bl sub_021AAA60
	str r0, [sp, #0x48]
	add r0, r5, #0
	mov r1, #2
	bl sub_021AAA60
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x78
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	lsl r1, r4, #0xa
	str r0, [r6, r1]
	mov r1, #1
	bl sub_0204C124
	lsl r0, r4, #0xa
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C520
	mov r1, #0xf8
	add r0, sp, #0x78
	strh r1, [r0]
	mov r1, #0x18
	strh r1, [r0, #2]
	mov r1, #0xc
	strh r1, [r0, #4]
	add r0, r5, #0
	bl sub_021AAA6C
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #5
	bl sub_021AAA60
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #1
	bl sub_021AAA60
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #9
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x78
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	str r7, [sp, #8]
	bl Oam_CreateSprite
	ldr r1, _021A0EAC ; =0x00000404
	str r0, [r6, r1]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _021A0EB0 ; =0x0000014E
	mov r4, #0
	str r0, [sp, #0x74]
	add r0, #0x96
	str r0, [sp, #0x74]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x70]
	add r0, #0x9a
	str r0, [sp, #0x70]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x6c]
	add r0, #0x9e
	str r0, [sp, #0x6c]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x68]
	add r0, #0xa6
	str r0, [sp, #0x68]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x64]
	add r0, #0xb6
	str r0, [sp, #0x64]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x60]
	add r0, #0xaa
	str r0, [sp, #0x60]
	ldr r0, _021A0EB0 ; =0x0000014E
	str r0, [sp, #0x5c]
	add r0, #0xb5
	str r0, [sp, #0x5c]
_021A0D76:
	ldr r1, [sp, #0x14]
	mov r0, #0x24
	mul r0, r1
	add r1, r6, r0
	ldr r0, [sp, #0x74]
	mov r2, #0xff
	str r4, [r1, r0]
	ldr r0, [sp, #0x70]
	ldr r3, _021A0EB4 ; =0x021B2658
	str r4, [r1, r0]
	ldr r0, [sp, #0x6c]
	str r1, [sp, #0x10]
	str r4, [r1, r0]
	ldr r0, [sp, #0x68]
	str r4, [r1, r0]
	ldr r0, [sp, #0x64]
	strb r2, [r1, r0]
	mov r0, #0xff
	add r0, #0x4f
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x68
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x60]
	str r0, [r2, r1]
	ldr r0, [sp, #0x5c]
	add r1, r2, #0
	strb r4, [r1, r0]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #0xf
	blo _021A0D76
	mov r7, #0
_021A0DC4:
	mov r0, #0x1c
	mul r0, r4
	add r0, r6, r0
	str r7, [r0, #0x40]
	add r1, r0, #0
	lsl r2, r4, #2
	add r2, r2, #1
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	str r7, [r0, #0x44]
	add r1, #0x58
	mov r0, #0xff
	strb r0, [r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0x19
	bl BmpWin_CreateDynamic
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x54]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xf
	blo _021A0DC4
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x15
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x2c]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #9
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x30]
	str r7, [r6, #0x38]
	strh r7, [r6, #0x36]
	mov r1, #0xff
_021A0E3E:
	add r0, r7, #1
	lsl r0, r0, #0x18
	strb r1, [r6, r7]
	lsr r7, r0, #0x18
	cmp r7, #3
	blo _021A0E3E
	mov r0, #0
	ldr r4, _021A0EB8 ; =0x00000408
	strb r1, [r6, #3]
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	strb r0, [r6, #0x14]
	strb r1, [r6, #0x15]
	str r1, [r6, #0x18]
	str r0, [r6, #0xc]
	str r0, [r6, #0x10]
	str r0, [r6, #0x20]
	str r0, [r6, #0x24]
	str r0, [r6, #0x28]
	str r0, [r6, #0x1c]
	str r0, [r6, #8]
	strh r0, [r6, #0x34]
	str r0, [r6, r4]
	mov r0, #6
	mov r1, #3
	mov r2, #0
	mov r7, #3
	bl sub_02045E1C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A0EA6
	add r0, r5, #0
	bl sub_021AAB50
	cmp r0, #0
	bne _021A0EA6
	sub r4, #8
	ldr r0, [r6, r4]
	mov r1, #0xf
	bl sub_0204C488
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x18
	bl ovy257_21a2244
	mov r0, #1
	str r0, [r6, #0x38]
	str r7, [r6, #0x18]
_021A0EA6:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0EAC: .word 0x00000404
_021A0EB0: .word 0x0000014E
_021A0EB4: .word 0x021B2658
_021A0EB8: .word 0x00000408
	thumb_func_end ovy257_21a0aec

	thumb_func_start ovy257_21a0ebc
ovy257_21a0ebc: ; 0x021A0EBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A0ECE
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, #0x1c]
_021A0ECE:
	ldr r4, [r5, #0x2c]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, #0x2c]
	bl sub_02048210
	ldr r4, [r5, #0x30]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, #0x30]
	bl sub_02048210
	ldr r4, _021A0F88 ; =0x00000404
	ldr r0, [r5, r4]
	bl sub_0204C108
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	mov r6, #0
	mov r7, #0x1c
_021A0F12:
	add r0, r6, #0
	mul r0, r7
	add r4, r5, r0
	ldr r0, [r4, #0x54]
	bl sub_02048210
	ldr r0, [r4, #0x50]
	bl sub_0204C108
	ldr r0, [r4, #0x4c]
	bl sub_0204C108
	ldr r0, [r4, #0x48]
	bl sub_0204C108
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xf
	blo _021A0F12
	mov r6, #0x7e
	mov r4, #0
	mov r7, #0x24
	lsl r6, r6, #2
_021A0F42:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xf
	blo _021A0F42
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl GFL_BGSysLoadScr
	mov r0, #6
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl GFL_BGSysLoadScr
	mov r0, #4
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0F88: .word 0x00000404
	thumb_func_end ovy257_21a0ebc

	thumb_func_start ovy257_21a0f8c
ovy257_21a0f8c: ; 0x021A0F8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0xc]
	add r4, r1, #0
	bl sub_021AAA54
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAA4C
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	cmp r0, #0xc
	bls _021A0FAA
	b _021A146C
_021A0FAA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0FB6: ; jump table
	.short _021A0FD0 - _021A0FB6 - 2 ; case 0
	.short _021A1000 - _021A0FB6 - 2 ; case 1
	.short _021A1030 - _021A0FB6 - 2 ; case 2
	.short _021A1054 - _021A0FB6 - 2 ; case 3
	.short _021A1088 - _021A0FB6 - 2 ; case 4
	.short _021A10A6 - _021A0FB6 - 2 ; case 5
	.short _021A10B8 - _021A0FB6 - 2 ; case 6
	.short _021A11FA - _021A0FB6 - 2 ; case 7
	.short _021A11FA - _021A0FB6 - 2 ; case 8
	.short _021A11FA - _021A0FB6 - 2 ; case 9
	.short _021A12B0 - _021A0FB6 - 2 ; case 10
	.short _021A1310 - _021A0FB6 - 2 ; case 11
	.short _021A1348 - _021A0FB6 - 2 ; case 12
_021A0FD0:
	ldr r0, [sp, #0xc]
	bl sub_021AAA74
	cmp r0, #1
	bne _021A0FE8
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	b _021A0FF4
_021A0FE8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
_021A0FF4:
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
_021A0FFE:
	b _021A1028
_021A1000:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A10F0
	ldr r0, [sp, #0xc]
	bl sub_021AAA4C
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAB50
	cmp r0, #1
	bne _021A101E
	mov r0, #0xb
	b _021A0FFE
_021A101E:
	ldr r0, [r5, #4]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A102C
_021A1026:
	mov r0, #8
_021A1028:
	str r0, [r4, #8]
	b _021A146C
_021A102C:
	mov r0, #5
	b _021A0FFE
_021A1030:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #4
	bl GFL_FadeScreenSet
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_021AAA78
	str r5, [r4, #8]
	b _021A146C
_021A1054:
	ldr r0, [sp, #0xc]
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl ovy257_219af08
	cmp r0, #1
	bne _021A10F0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl GFL_FadeScreenSet
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_021AAA78
	mov r0, #4
	b _021A0FFE
_021A1088:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A10F0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A109A
	cmp r0, #5
	bne _021A10A0
_021A109A:
	add sp, #0x34
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021A10A0:
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A10A6:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ovy257_21a16e0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ovy257_21a2148
	b _021A146C
_021A10B8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A10C2
	cmp r0, #5
	bne _021A10E6
_021A10C2:
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A10F0
_021A10D0:
	ldr r0, [sp, #0xc]
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl ovy257_219aef0
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #3
	b _021A1028
_021A10E6:
	ldr r0, [r4, #0x1c]
	bl sub_0202E438
	cmp r0, #1
	beq _021A10F2
_021A10F0:
	b _021A146C
_021A10F2:
	ldr r0, [r4, #0x18]
	cmp r0, #2
	bne _021A1140
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl sub_0219BB1C
	ldr r2, _021A1408 ; =0x000001FD
	add r1, r5, #0
	add r5, r4, r2
	ldrb r3, [r4, #3]
	mov r2, #0x24
	ldr r0, [sp, #0xc]
	mul r2, r3
	add r2, r5, r2
	bl ovy257_219bb2c
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x18
	bl ovy257_21a2244
	mov r5, #0
	mov r0, #1
	str r0, [r4, #0x38]
	mov r0, #7
	str r0, [r4, #8]
	ldr r0, [r4, #0x1c]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	bl sub_0202E34C
	str r5, [r4, #0x1c]
	b _021A11EC
_021A1140:
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	str r0, [sp, #0x14]
	mov r0, #9
	str r0, [r4, #8]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x14
	bl ovy257_21a2244
	mov r0, #1
	str r0, [r4, #0x38]
	mov r5, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r2, #3
	strh r5, [r4, #0x36]
	bl sub_0219BB1C
	ldr r0, [r4, #0x1c]
	bl sub_0202E34C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	str r5, [r4, #0x1c]
	bl sub_0219CCA8
	mov ip, r0
	mov r6, #0xff
_021A117C:
	ldrb r0, [r4, r5]
	cmp r0, #0xff
	bne _021A11A0
	mov r1, #6
	add r2, r5, #0
	mul r2, r1
	mov r1, ip
	mov r0, #0
	add r1, r1, r2
_021A118E:
	add r2, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r2, #0x22
	lsr r0, r0, #0x18
	strb r6, [r2]
	cmp r0, #6
	blo _021A118E
	b _021A11CA
_021A11A0:
	mov r0, #6
	add r2, r5, #0
	mul r2, r0
	mov r0, ip
	ldr r7, _021A1408 ; =0x000001FD
	mov r1, #0
	add r0, r0, r2
_021A11AE:
	ldrb r3, [r4, r5]
	mov r2, #0x24
	mul r2, r3
	add r2, r4, r2
	add r2, r1, r2
	ldrb r3, [r2, r7]
	add r2, r0, r1
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r2, #0x22
	lsr r1, r1, #0x18
	strb r3, [r2]
	cmp r1, #6
	blo _021A11AE
_021A11CA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A117C
	mov r0, ip
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	mov r0, ip
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	bl sub_0219CD4C
_021A11EC:
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_0204C488
	b _021A146C
_021A11FA:
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	cmp r0, #2
	blo _021A122E
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A122A
	ldr r0, [sp, #0xc]
	bl sub_021AAA0C
	add r5, r0, #0
	bl sub_02006280
	ldr r0, _021A140C ; =0x0000073D
	bl GFL_SndSEPlay
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ovy257_219b4e0
_021A122A:
	mov r0, #2
	str r0, [r4, #8]
_021A122E:
	ldr r0, [r4, #8]
	cmp r0, #9
	bne _021A124C
	ldrh r0, [r4, #0x36]
	add r0, r0, #1
	strh r0, [r4, #0x36]
	ldrh r0, [r4, #0x36]
	cmp r0, #0x50
	blo _021A124C
	mov r0, #0
	strh r0, [r4, #0x36]
	ldr r0, _021A1410 ; =0x0000073C
	mov r1, #2
	bl sub_020061DC
_021A124C:
	ldr r0, [r4, #8]
	cmp r0, #9
	bne _021A1282
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_0219CD58
	cmp r0, #1
	bne _021A12B8
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r2, #2
	bl sub_0219BB1C
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x27
_021A127A:
	bl ovy257_21a2244
	mov r0, #0xa
	b _021A1028
_021A1282:
	sub r0, r0, #7
	cmp r0, #1
	bhi _021A12B8
	ldrh r0, [r4, #0x34]
	add r0, r0, #1
	strh r0, [r4, #0x34]
	ldrh r1, [r4, #0x34]
	mov r0, #0x4b
	lsl r0, r0, #4
	cmp r1, r0
	blo _021A12B8
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r2, #2
	bl sub_0219BB1C
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x28
	b _021A127A
_021A12B0:
	bl sub_0203DA48
	cmp r0, #1
	beq _021A12BA
_021A12B8:
	b _021A146C
_021A12BA:
	ldr r0, [sp, #0xc]
	bl sub_021AAA4C
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _021A12C8
	b _021A10D0
_021A12C8:
	mov r0, #0
	mov r1, #0xff
_021A12CC:
	strb r1, [r4, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	blo _021A12CC
	mov r0, #5
	str r0, [r4, #8]
	strb r1, [r4, #3]
	ldr r0, [r4, #0x30]
	mov r1, #1
	mov r6, #1
	bl sub_02024EEC
	ldr r5, [r4, #0x30]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0xc]
	bl ovy257_21aaeb0
	lsl r0, r6, #0xa
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C488
	mov r0, #4
	str r0, [r4, #0x18]
	b _021A146C
_021A1310:
	ldr r0, [r4, #0x2c]
	bl sub_02048210
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #5
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x29
	bl ovy257_21a21d4
	mov r0, #0xc
	str r0, [r4, #8]
	mov r1, #0x4b
	ldr r0, _021A1414 ; =0x00000408
	lsl r1, r1, #2
	str r1, [r4, r0]
	b _021A146C
_021A1348:
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	cmp r0, #2
	blo _021A1366
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A1366
	bl sub_02006280
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, _021A140C ; =0x0000073D
	bl GFL_SndSEPlay
_021A1366:
	ldr r0, _021A1414 ; =0x00000408
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _021A1372
	sub r1, r1, #1
	str r1, [r4, r0]
_021A1372:
	bl sub_0203DA48
	cmp r0, #1
	beq _021A138C
	ldr r0, [sp, #0xc]
	bl sub_021AAB34
	cmp r0, #1
	beq _021A138C
	ldr r0, _021A1414 ; =0x00000408
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _021A146C
_021A138C:
	ldr r0, _021A1418 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x2c]
	mov r1, #1
	mov r7, #1
	bl sub_02024EEC
	ldr r5, [r4, #0x2c]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x2c]
	bl sub_02048210
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x15
	mov r6, #4
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	bl sub_021AAB54
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #4]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A141C
	lsl r0, r6, #8
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_0204C488
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	cmp r0, #2
	bhs _021A13FC
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0x18
	bl ovy257_21a2244
_021A13FC:
	mov r0, #1
	str r0, [r4, #0x38]
	mov r0, #3
	str r0, [r4, #0x18]
	b _021A1026
	nop
_021A1408: .word 0x000001FD
_021A140C: .word 0x0000073D
_021A1410: .word 0x0000073C
_021A1414: .word 0x00000408
_021A1418: .word 0x0000054C
_021A141C:
	mov r0, #5
	str r0, [r4, #8]
	str r6, [r4, #0x18]
	lsl r0, r6, #8
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl sub_0204C488
	ldr r0, [sp, #0xc]
	bl sub_021AAA54
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAA58
	mov r1, #5
	lsl r1, r1, #0xb
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xc
	add r2, r6, #0
	mov r3, #0
	add r7, r0, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x12
	add r2, r6, #0
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_BGSysLoadScr
_021A146C:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #3
	beq _021A147E
	ldr r0, [sp, #0xc]
	bl sub_021AAB50
	cmp r0, #0
	beq _021A1480
_021A147E:
	b _021A15DA
_021A1480:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ovy257_21a18f4
	mov r6, #0
_021A148A:
	mov r0, #0x1c
	mul r0, r6
	add r5, r4, r0
	ldr r0, [r5, #0x44]
	cmp r0, #1
	bne _021A14CC
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	add r7, r0, #0
	ldr r0, [r5, #0x54]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A14CC
	ldr r7, [r5, #0x54]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r5, #0x44]
_021A14CC:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xf
	blo _021A148A
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021A15DA
	mov r0, #0
	add r6, r4, #0
	str r0, [sp, #0x10]
	mov r5, #0
	add r6, #0x40
	mov r7, #0x1c
_021A14E8:
	add r2, r5, #0
	mul r2, r7
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r2, r6, r2
	add r3, r5, #0
	bl ovy257_21a1f3c
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xf
	blo _021A14E8
	ldrh r2, [r4, #4]
	mov r0, #6
	mov r1, #3
	bl sub_02045E1C
	mov r1, #0
_021A150E:
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _021A151E
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
_021A151E:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	blo _021A150E
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x40
	str r0, [sp, #0x1c]
	ldr r0, _021A1668 ; =0x00000203
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #0x28]
	ldr r0, _021A1668 ; =0x00000203
	str r0, [sp, #0x24]
	sub r0, #0x17
	str r0, [sp, #0x24]
	ldr r0, _021A1668 ; =0x00000203
	str r0, [sp, #0x30]
	sub r0, #0xf
	str r0, [sp, #0x30]
	ldr r0, _021A1668 ; =0x00000203
	str r0, [sp, #0x2c]
	sub r0, #0xf
	str r0, [sp, #0x2c]
	ldr r0, _021A1668 ; =0x00000203
	str r0, [sp, #0x20]
	sub r0, #0x1f
	str r0, [sp, #0x20]
_021A1558:
	mov r0, #0x24
	mul r0, r7
	add r5, r4, r0
	ldr r0, [sp, #0x20]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A15CC
	ldr r0, [sp, #0x28]
	ldrb r1, [r5, r0]
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r6, r0, r2
	ldr r0, [sp, #0x24]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1594
	ldr r0, _021A1668 ; =0x00000203
	ldrb r0, [r5, r0]
	cmp r0, #4
	bhs _021A1594
	ldrb r0, [r4, #3]
	cmp r0, #0xff
	beq _021A158E
	cmp r0, r7
	bne _021A1594
_021A158E:
	ldr r0, [r6, #0xc]
	mov r1, #0xa
	b _021A15B2
_021A1594:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	beq _021A15A8
	ldrb r0, [r4, #3]
	cmp r0, #0xff
	bne _021A15A8
	ldr r0, _021A1668 ; =0x00000203
	ldrb r0, [r5, r0]
	cmp r0, #4
	bne _021A15AE
_021A15A8:
	ldr r0, [r6, #0xc]
	mov r1, #0xb
	b _021A15B2
_021A15AE:
	ldr r0, [r6, #0xc]
	mov r1, #9
_021A15B2:
	bl sub_0204C488
	ldr r0, [sp, #0x2c]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A15CC
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, [r6, #8]
	mov r1, #0x22
	bl sub_0204C488
_021A15CC:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #0xf
	blo _021A1558
	mov r0, #0
	str r0, [r4, #0xc]
_021A15DA:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021A1610
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1610
	ldr r0, [r4, #0x2c]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x2c]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	mov r0, #0
	str r0, [r4, #0x20]
_021A1610:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021A1656
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1656
	ldr r0, [r4, #0x30]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x30]
	bl sub_0204826C
	mov r0, #4
	bl GFL_BGSysLoadScr
	mov r1, #0
	ldr r0, [r4, #0x38]
	str r1, [r4, #0x24]
	cmp r0, #1
	bne _021A1656
	str r1, [r4, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x30]
	bl ovy257_21aae7c
_021A1656:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021A1660
	bl sub_0202E37C
_021A1660:
	mov r0, #2
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021A1668: .word 0x00000203
	thumb_func_end ovy257_21a0f8c

	thumb_func_start ovy257_21a166c
ovy257_21a166c: ; 0x021A166C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	mov ip, r0
	ldr r0, _021A16D8 ; =0x000001FD
	mov lr, r1
	add r5, r2, #0
	mov r6, #0
_021A167A:
	mov r1, #0x24
	add r2, r6, #0
	mul r2, r1
	mov r1, lr
	mov r7, #1
	mov r3, #0
	add r4, r1, r2
_021A1688:
	add r1, r4, r3
	ldrb r2, [r1, r0]
	ldrb r1, [r5, r3]
	cmp r2, r1
	beq _021A1696
	mov r7, #0
	b _021A16A0
_021A1696:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021A1688
_021A16A0:
	cmp r7, #1
	bne _021A16AA
	mov r0, #1
	mov ip, r0
	b _021A16B0
_021A16AA:
	add r6, r6, #1
	cmp r6, #0xf
	blt _021A167A
_021A16B0:
	mov r0, ip
	cmp r0, #1
	bne _021A16D2
	mov r0, #0x24
	add r1, r6, #0
	mul r1, r0
	mov r0, lr
	add r1, r0, r1
	ldr r0, _021A16DC ; =0x00000205
	ldrb r0, [r1, r0]
	add r0, #0xec
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021A16D2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A16D2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A16D8: .word 0x000001FD
_021A16DC: .word 0x00000205
	thumb_func_end ovy257_21a166c

	thumb_func_start ovy257_21a16e0
ovy257_21a16e0: ; 0x021A16E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DAC8
	add r5, r0, #0
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021AAA14
	cmp r5, #1
	bne _021A17FC
	ldr r1, [sp, #0x10]
	cmp r1, #8
	bls _021A17C4
	cmp r1, #0xe0
	bhs _021A17C4
	ldrh r0, [r4, #4]
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0xb
	asr r1, r0, #0x10
	bmi _021A17FC
	cmp r1, #0xf
	bge _021A17FC
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	add r0, #0x58
	ldrb r0, [r0]
	mov r1, #0x79
	lsl r1, r1, #2
	add r3, r4, r1
	mov r1, #0x24
	add r2, r0, #0
	mul r2, r1
	add r1, r3, r2
	ldr r2, [r3, r2]
	mov r5, #0
	cmp r2, #1
	bne _021A17B6
	ldrb r2, [r1, #0x1f]
	cmp r2, #4
	bhs _021A17B6
	ldrb r2, [r1, #0x18]
	cmp r2, #0x20
	bne _021A1768
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _021A1760
	strb r0, [r4, #3]
_021A1754:
	mov r5, #1
	str r5, [r1, #8]
	str r5, [r1, #0x10]
	str r5, [r4, #0xc]
	ldr r0, _021A18D4 ; =0x0000073A
	b _021A17B2
_021A1760:
	mov r0, #0xff
	strb r0, [r4, #3]
	str r5, [r1, #8]
	b _021A17AA
_021A1768:
	ldrb r2, [r4, #3]
	cmp r2, #0xff
	bne _021A17B6
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _021A1790
	add r3, r5, #0
_021A1776:
	ldrb r2, [r4, r3]
	cmp r2, #0xff
	bne _021A1780
	strb r0, [r4, r3]
	b _021A178A
_021A1780:
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #3
	blo _021A1776
_021A178A:
	cmp r3, #3
	bhs _021A17B6
	b _021A1754
_021A1790:
	ldrb r2, [r4, r5]
	cmp r0, r2
	bne _021A179C
	mov r0, #0xff
	strb r0, [r4, r5]
	b _021A17A6
_021A179C:
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #3
	blo _021A1790
_021A17A6:
	mov r0, #0
	str r0, [r1, #8]
_021A17AA:
	mov r5, #1
	str r5, [r1, #0x10]
	ldr r0, _021A18D8 ; =0x0000073B
	str r5, [r4, #0xc]
_021A17B2:
	bl GFL_SndSEPlay
_021A17B6:
	cmp r5, #1
	bne _021A17FC
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a2008
	b _021A17FC
_021A17C4:
	cmp r1, #0xec
	blo _021A17FC
	mov r0, #0x41
	lsl r0, r0, #2
	cmp r1, r0
	bhi _021A17FC
	ldrh r2, [r4, #6]
	ldr r1, [sp, #0xc]
	add r0, r2, #0
	add r0, #0xc
	cmp r1, r0
	blo _021A17FC
	add r2, #0x24
	cmp r1, r2
	bhi _021A17FC
	ldrb r0, [r4, #0x14]
	cmp r0, #5
	bls _021A17FC
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, _021A18DC ; =0x00000404
	mov r1, #0xd
	ldr r0, [r4, r0]
	bl sub_0204C488
	ldr r0, _021A18E0 ; =0x0000066C
	bl GFL_SndSEPlay
_021A17FC:
	cmp r7, #1
	bne _021A1864
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A1864
	ldrb r2, [r4, #0x14]
	cmp r2, #5
	bls _021A1864
	ldr r1, [sp, #8]
	cmp r1, #0xec
	blo _021A1872
	mov r0, #0x41
	lsl r0, r0, #2
	cmp r1, r0
	bhi _021A1872
	ldr r1, [sp, #4]
	cmp r1, #0xc
	blo _021A1872
	cmp r1, #0x9c
	bhi _021A1872
	sub r0, r2, #5
	lsl r5, r0, #5
	sub r1, #0x18
	bpl _021A1830
	mov r1, #0
	b _021A1836
_021A1830:
	cmp r1, #0x78
	ble _021A1836
	mov r1, #0x78
_021A1836:
	strh r1, [r4, #6]
	mov r1, #0xf8
	add r0, sp, #0
	strh r1, [r0]
	ldrh r1, [r4, #6]
	mov r2, #1
	mov r6, #1
	add r1, #0x18
	strh r1, [r0, #2]
	ldr r0, _021A18DC ; =0x00000404
	add r1, sp, #0
	ldr r0, [r4, r0]
	bl Oam_SetSpritePosData
	ldrh r1, [r4, #6]
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x78
	blx sub_0208D868
	strh r0, [r4, #4]
	str r6, [r4, #0xc]
	b _021A1872
_021A1864:
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, _021A18DC ; =0x00000404
	mov r1, #0xc
	ldr r0, [r4, r0]
	bl sub_0204C488
_021A1872:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021A18A0
	bl sub_0202E454
	cmp r0, #1
	bne _021A18A0
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0202E430
	mov r0, #6
	str r0, [r4, #8]
	ldr r0, _021A18E4 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021A18A0
	ldr r0, _021A18E8 ; =0x0000073C
	mov r1, #2
	bl sub_020061DC
_021A18A0:
	ldr r0, _021A18EC ; =0x021B1AA0
	bl sub_0203DA0C
	cmp r0, #0
	beq _021A18B4
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A18CE
_021A18B4:
	mov r0, #6
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r4, #0x18]
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_0204C488
	ldr r0, _021A18F0 ; =0x00000551
	bl GFL_SndSEPlay
_021A18CE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A18D4: .word 0x0000073A
_021A18D8: .word 0x0000073B
_021A18DC: .word 0x00000404
_021A18E0: .word 0x0000066C
_021A18E4: .word 0x0000054C
_021A18E8: .word 0x0000073C
_021A18EC: .word 0x021B1AA0
_021A18F0: .word 0x00000551
	thumb_func_end ovy257_21a16e0

	thumb_func_start ovy257_21a18f4
ovy257_21a18f4: ; 0x021A18F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	mov r1, #0
	str r1, [sp, #0x30]
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #0x2c]
	bl sub_021AAA14
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0219BB48
	cmp r0, #0
	bne _021A1916
	b _021A1C90
_021A1916:
	mov r7, #0x7a
	lsl r7, r7, #2
	ldr r6, [sp, #0x30]
	mov r2, #1
	mov r0, #0x24
	sub r1, r7, #4
_021A1922:
	add r3, r6, #0
	mul r3, r0
	add r5, r4, r3
	ldr r3, [r5, r1]
	cmp r3, #1
	bne _021A1930
	str r2, [r5, r7]
_021A1930:
	add r6, r6, #1
	cmp r6, #0xf
	blt _021A1922
	ldr r0, [r4, #8]
	cmp r0, #7
	beq _021A1948
	cmp r0, #9
	beq _021A1948
	cmp r0, #0xa
	beq _021A1948
	cmp r0, #5
	bge _021A194A
_021A1948:
	b _021A1BC2
_021A194A:
	mov r0, #0
	str r0, [sp, #8]
_021A194E:
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	bl sub_020428A8
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _021A1A18
	mov r0, #0xff
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	bl sub_020428C8
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02173B78
	str r0, [sp, #0x1c]
	cmp r0, #3
	bne _021A1986
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1b
	cmp r0, #2
	bne _021A1A18
_021A1986:
	ldr r0, [sp, #0x1c]
	mov r6, #0
	cmp r0, #0x20
	bne _021A19D0
	ldr r0, [sp, #0x20]
	bl sub_02008B94
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl MyStatus_GetTrainerGender
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_02008BD0
	str r0, [sp, #0x14]
	add r0, sp, #0x34
	bl OS_GetMacAddress
	ldr r0, [sp, #0x20]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021A19C4
	ldr r0, [sp, #0x20]
	add r1, sp, #0x34
	bl ovy257_219c0c8
	cmp r0, #1
	bne _021A1A14
_021A19C4:
	str r7, [sp]
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	b _021A1A0E
_021A19D0:
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0xc]
	lsl r0, r0, #5
	lsr r0, r0, #0x16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02018B38
	cmp r0, #0
	bne _021A1A14
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0xc]
	lsl r0, r0, #5
	lsr r0, r0, #0x16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02018B78
	cmp r0, #0
	bne _021A1A14
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x20]
	ldrb r0, [r0, #0xb]
	ldr r3, [sp, #0x20]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r3, #4]
	add r2, #0x1a
_021A1A0E:
	bl ovy257_21a21b4
	add r6, r0, #0
_021A1A14:
	cmp r6, #0
	bne _021A1A1A
_021A1A18:
	b _021A1BB6
_021A1A1A:
	ldr r7, _021A1C94 ; =0x000001FD
	mov r6, #0
	add r0, r7, #0
	sub r0, #0x19
	mov ip, r0
_021A1A24:
	mov r0, #0x24
	mul r0, r6
	add r2, r4, r0
	mov r0, ip
	ldr r0, [r2, r0]
	cmp r0, #1
	bne _021A1AC8
	mov r0, #1
	str r0, [sp, #0x10]
	mov r1, #0
_021A1A38:
	add r3, r2, r1
	ldrb r0, [r5, r1]
	ldrb r3, [r3, r7]
	cmp r0, r3
	beq _021A1A48
	mov r0, #0
	str r0, [sp, #0x10]
	b _021A1A52
_021A1A48:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #6
	blo _021A1A38
_021A1A52:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021A1AD0
	mov r0, #0x24
	mul r0, r6
	mov r1, #0x7a
	add r7, r4, r0
	mov r0, #1
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r7, r1]
	add r1, #0x14
	str r0, [sp, #0x28]
	ldrb r1, [r7, r1]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	beq _021A1AA2
	mov r0, #1
	str r0, [sp, #0x24]
	str r3, [sp, #0x28]
	str r6, [sp, #0xc]
	mov r0, #0xff
	mov r7, #1
_021A1A80:
	ldrb r1, [r4, r3]
	cmp r6, r1
	bne _021A1A8A
	strb r0, [r4, r3]
	str r7, [sp, #0x2c]
_021A1A8A:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #3
	blo _021A1A80
	ldrb r0, [r4, #3]
	cmp r0, r6
	bne _021A1AA2
	mov r0, #0xff
	strb r0, [r4, #3]
	mov r0, #1
	str r0, [sp, #0x2c]
_021A1AA2:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x20
	bne _021A1ADA
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r0, #0x20
	ldrb r1, [r0]
	ldr r0, [sp, #0x20]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r1, r0
	beq _021A1ADA
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp, #0x24]
	str r6, [sp, #0xc]
	b _021A1ADA
_021A1AC8:
	ldr r0, [sp, #0xc]
	cmp r0, #0xff
	bne _021A1AD0
	str r6, [sp, #0xc]
_021A1AD0:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xf
	blo _021A1A24
_021A1ADA:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021A1BB6
	ldr r0, [sp, #0xc]
	cmp r0, #0xff
	beq _021A1BB6
	mov r1, #0x24
	mul r1, r0
	add r6, r4, r1
	mov r1, #0x79
	lsl r1, r1, #2
	mov r0, #1
	str r0, [r6, r1]
	mov r0, #0
	add r2, r1, #4
	str r0, [r6, r2]
	add r2, r1, #0
	add r2, #8
	str r0, [r6, r2]
	add r1, #0x19
_021A1B02:
	ldrb r3, [r5, r0]
	add r2, r6, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strb r3, [r2, r1]
	cmp r0, #6
	blo _021A1B02
	ldr r0, [sp, #0x1c]
	cmp r0, #0x20
	bne _021A1B3E
	ldr r0, [sp, #0xc]
	mov r1, #0x24
	mul r1, r0
	mov r5, #0x7f
	add r7, r4, r1
	lsl r5, r5, #2
	mov r0, #0x20
	strb r0, [r7, r5]
	sub r1, r5, #4
	ldr r0, [sp, #0x20]
	ldr r1, [r7, r1]
	mov r2, #0x34
	blx MI_CpuCopy8
	sub r0, r5, #4
	ldr r0, [r7, r0]
	bl sub_02008BFC
	b _021A1B64
_021A1B3E:
	ldr r0, [sp, #0xc]
	mov r1, #0x24
	mul r1, r0
	mov r5, #0x7f
	add r7, r4, r1
	lsl r5, r5, #2
	mov r0, #3
	strb r0, [r7, r5]
	sub r1, r5, #4
	ldr r0, [sp, #0x20]
	ldr r1, [r7, r1]
	mov r2, #0x68
	blx MI_CpuCopy8
	sub r0, r5, #4
	ldr r0, [r7, r0]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
_021A1B64:
	add r5, #9
	strb r0, [r7, r5]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021A1BA2
	mov r1, #0
	mov r2, #0x1c
_021A1B72:
	add r0, r1, #0
	mul r0, r2
	add r0, r4, r0
	add r3, r0, #0
	add r3, #0x58
	ldrb r3, [r3]
	cmp r3, #0xff
	bne _021A1B96
	add r3, r0, #0
	ldr r2, [sp, #0xc]
	add r3, #0x58
	strb r2, [r3]
	mov r2, #0x81
	lsl r2, r2, #2
	strb r1, [r6, r2]
	mov r1, #1
	str r1, [r0, #0x40]
	b _021A1BB2
_021A1B96:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xf
	blo _021A1B72
	b _021A1BB2
_021A1BA2:
	mov r1, #0x81
	lsl r1, r1, #2
	ldrb r2, [r6, r1]
	mov r1, #0x1c
	mov r0, #1
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #0x40]
_021A1BB2:
	mov r0, #1
	str r0, [sp, #0x30]
_021A1BB6:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x10
	bge _021A1BC2
	b _021A194E
_021A1BC2:
	mov r2, #0
_021A1BC4:
	mov r0, #0x24
	mul r0, r2
	mov r5, #0x79
	add r7, r4, r0
	lsl r5, r5, #2
	ldr r0, [r7, r5]
	cmp r0, #1
	bne _021A1C62
	add r0, r5, #4
	ldr r0, [r7, r0]
	cmp r0, #1
	bne _021A1C62
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r7, r0]
	cmp r1, #0xe
	bhs _021A1C1A
	add r5, #0x20
_021A1BE8:
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	add r3, r0, #0
	add r3, #0x74
	ldrb r6, [r3]
	cmp r6, #0xff
	beq _021A1C1A
	add r3, r0, #0
	add r3, #0x58
	strb r6, [r3]
	add r3, r0, #0
	add r3, #0x58
	ldrb r6, [r3]
	mov r3, #0x24
	mul r3, r6
	add r3, r4, r3
	strb r1, [r3, r5]
	mov r3, #1
	str r3, [r0, #0x40]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xe
	blo _021A1BE8
_021A1C1A:
	mov r0, #0x1c
	mul r0, r1
	add r1, r4, r0
	add r0, r1, #0
	mov r3, #0xff
	add r0, #0x58
	strb r3, [r0]
	mov r0, #1
	str r0, [r1, #0x40]
	mov r1, #0x81
	lsl r1, r1, #2
	strb r3, [r7, r1]
	mov r0, #0
	sub r1, #0x20
	str r0, [r7, r1]
	mov r1, #1
_021A1C3A:
	ldrb r5, [r4, r0]
	cmp r2, r5
	bne _021A1C44
	strb r3, [r4, r0]
	str r1, [sp, #0x2c]
_021A1C44:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	blo _021A1C3A
	ldrb r0, [r4, #3]
	cmp r0, r2
	bne _021A1C5C
	mov r0, #0xff
	strb r0, [r4, #3]
	mov r0, #1
	str r0, [sp, #0x2c]
_021A1C5C:
	mov r0, #1
	sub r2, r2, #1
	str r0, [sp, #0x30]
_021A1C62:
	add r2, r2, #1
	cmp r2, #0xf
	blt _021A1BC4
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _021A1C7C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ovy257_21a1c98
	mov r0, #1
	str r0, [sp, #0x2c]
	str r0, [r4, #0xc]
_021A1C7C:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _021A1C90
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _021A1C90
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ovy257_21a2008
_021A1C90:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C94: .word 0x000001FD
	thumb_func_end ovy257_21a18f4

	thumb_func_start ovy257_21a1c98
ovy257_21a1c98: ; 0x021A1C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r5, #0
	str r0, [sp]
	mov r6, #0
	mov r4, #0
	add r7, #0x40
_021A1CA8:
	mov r2, #0x1c
	mul r2, r4
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, r2
	add r3, r4, #0
	bl ovy257_21a1d50
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xf
	blo _021A1CA8
	mov r0, #0
	mov r2, #0x1c
_021A1CC6:
	add r1, r0, #0
	mul r1, r2
	add r1, r5, r1
	add r1, #0x58
	ldrb r1, [r1]
	cmp r1, #0xff
	beq _021A1CDA
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
_021A1CDA:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xf
	blo _021A1CC6
	ldrb r0, [r5, #0x14]
	cmp r0, r6
	beq _021A1D46
	cmp r6, #5
	bls _021A1D32
	sub r0, r6, #5
	lsl r4, r0, #5
	ldr r0, _021A1D4C ; =0x00000404
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldrh r0, [r5, #4]
	cmp r0, r4
	bls _021A1D04
	strh r4, [r5, #4]
_021A1D04:
	ldrh r1, [r5, #4]
	mov r0, #0x78
	mul r0, r1
	add r1, r4, #0
	blx sub_0208D868
	strh r0, [r5, #6]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021A1D44
	mov r1, #0xf8
	add r0, sp, #4
	strh r1, [r0]
	ldrh r1, [r5, #6]
	mov r2, #1
	add r1, #0x18
	strh r1, [r0, #2]
	ldr r0, _021A1D4C ; =0x00000404
	add r1, sp, #4
	ldr r0, [r5, r0]
	bl Oam_SetSpritePosData
	b _021A1D44
_021A1D32:
	ldr r0, _021A1D4C ; =0x00000404
	mov r1, #0
	ldr r0, [r5, r0]
	mov r4, #0
	bl sub_0204C124
	mov r0, #1
	strh r4, [r5, #4]
	str r0, [r5, #0xc]
_021A1D44:
	strb r6, [r5, #0x14]
_021A1D46:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1D4C: .word 0x00000404
	thumb_func_end ovy257_21a1c98

	thumb_func_start ovy257_21a1d50
ovy257_21a1d50: ; 0x021A1D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r2, #0
	add r6, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #1
	beq _021A1D62
	b _021A1F38
_021A1D62:
	ldrb r1, [r5, #0x18]
	cmp r1, #0xff
	bne _021A1D6A
	b _021A1F22
_021A1D6A:
	bl sub_021AAA54
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021AAA7C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x20]
	mov r0, #0x79
	lsl r0, r0, #2
	add r2, r6, r0
	ldrb r1, [r5, #0x18]
	mov r0, #0x24
	mul r0, r1
	add r4, r2, r0
	ldr r0, [sp, #0x10]
	bl GFL_WordSetSystemCreateDefault
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r1, [sp, #0x10]
	mov r0, #0x20
	bl GFL_StrBufCreate
	ldrb r1, [r4, #0x18]
	str r0, [sp, #0x1c]
	cmp r1, #0x20
	bne _021A1DC6
	ldr r0, [r4, #0x14]
	bl sub_02035014
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	b _021A1DCA
_021A1DC6:
	ldr r1, [r4, #0x14]
	add r1, #0x1a
_021A1DCA:
	mov r2, #8
	bl sub_02048658
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #6
	str r0, [sp]
	mov r0, #0xf1
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x24]
	mov r1, #0xe
	bl sub_0204898C
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #0x20
	bne _021A1E24
	ldr r0, [r4, #0x14]
	bl sub_0203501C
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	b _021A1E34
_021A1E24:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x14]
	add r0, r6, #0
	ldrh r2, [r2, #0x18]
	mov r1, #0
_021A1E34:
	mov r3, #5
	bl StringSetNumber
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	mov r2, #0x50
	str r0, [sp]
	mov r0, #0xf1
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldrb r0, [r4, #0x18]
	cmp r0, #0x20
	bne _021A1EE2
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	str r0, [sp, #0x14]
	add r0, #0x20
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	ldr r0, [sp, #0x24]
	bl sub_0204898C
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x10]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x2c]
	mov r0, #0
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x20
	str r2, [sp, #0x14]
	ldrb r2, [r2]
	add r0, r6, #0
	mov r1, #0
	mov r3, #1
	bl StringSetNumber
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0x90
	str r0, [sp]
	mov r0, #0xf1
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x2c]
	bl GFL_StrBufFree
	b _021A1EE6
_021A1EE2:
	mov r0, #0
	strb r0, [r4, #0x1f]
_021A1EE6:
	ldrb r0, [r4, #0x18]
	cmp r0, #0x20
	ldr r0, [r4, #0x14]
	bne _021A1F00
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021A1EFE
_021A1EFA:
	mov r0, #1
	b _021A1F14
_021A1EFE:
	b _021A1F12
_021A1F00:
	ldrb r0, [r0, #2]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021A1F12
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _021A1F12
	b _021A1EFA
_021A1F12:
	mov r0, #0
_021A1F14:
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	mov r0, #1
	str r0, [r5, #4]
	b _021A1F34
_021A1F22:
	ldr r4, [r5, #0x14]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A1F34:
	mov r0, #0
	str r0, [r5]
_021A1F38:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a1d50

	thumb_func_start ovy257_21a1f3c
ovy257_21a1f3c: ; 0x021A1F3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldrb r0, [r4, #0x18]
	add r5, r1, #0
	add r6, r3, #0
	cmp r0, #0xff
	bne _021A1F64
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A1F64:
	ldrh r0, [r5, #4]
	lsl r1, r6, #5
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x1f
	mvn r0, r0
	cmp r1, r0
	blt _021A1FEE
	cmp r1, #0xa0
	bgt _021A1FEE
	mov r0, #0x80
	add r7, sp, #0
	strh r0, [r7]
	add r1, #0x10
	strh r1, [r7, #2]
	ldr r0, [r4, #8]
	add r1, sp, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0x12
	strh r0, [r7]
	ldr r0, [r4, #0xc]
	add r1, sp, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xc8
	strh r0, [r7]
	ldr r0, [r4, #0x10]
	add r1, sp, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	ldrb r1, [r4, #0x18]
	mov r0, #0x24
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021A1FE4
	mov r0, #0x1c
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	mov r1, #0x12
	bl sub_0204C488
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A1FE4:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A1FEE:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a1f3c

	thumb_func_start ovy257_21a2008
ovy257_21a2008: ; 0x021A2008
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
	bl sub_021AAA54
	add r6, r0, #0
	add r0, r7, #0
	bl sub_021AAA84
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_021AAA94
	str r0, [sp, #8]
	mov r0, #0
_021A202A:
	ldrb r1, [r5, r0]
	cmp r1, #0xff
	beq _021A2036
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_021A2036:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	blo _021A202A
	ldrb r0, [r5, #3]
	cmp r0, #0xff
	beq _021A20AE
	ldr r0, [r5, #0x18]
	cmp r0, #2
	beq _021A2140
	add r0, sp, #0x1c
	mov r7, #0
	str r7, [r0]
	str r7, [r0, #4]
	str r7, [r0, #8]
	ldr r4, [r5, #0x2c]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A207C
	bl sub_0202E34C
	str r7, [r5, #0x1c]
_021A207C:
	ldr r0, [sp, #0xc]
	mov r1, #0x13
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r1, _021A2144 ; =0x000039E3
	add r0, sp, #0x10
	strh r1, [r0, #0x10]
	mov r2, #0
	str r2, [sp, #0x24]
	mov r3, #0x15
	str r3, [sp]
	ldr r0, [sp, #8]
	str r6, [sp, #4]
	add r1, sp, #0x1c
	bl sub_0202E1F0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	mov r0, #2
	add sp, #0x28
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021A20AE:
	cmp r4, #0
	ldr r0, [r5, #0x18]
	beq _021A211A
	cmp r0, #1
	beq _021A2140
	add r0, sp, #0x10
	mov r7, #0
	str r7, [r0]
	str r7, [r0, #4]
	str r7, [r0, #8]
	ldr r4, [r5, #0x2c]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A20E8
	bl sub_0202E34C
	str r7, [r5, #0x1c]
_021A20E8:
	ldr r0, [sp, #0xc]
	mov r1, #0x12
	bl sub_0204898C
	str r0, [sp, #0x10]
	ldr r1, _021A2144 ; =0x000039E3
	add r0, sp, #0x10
	strh r1, [r0, #4]
	mov r2, #0
	str r2, [sp, #0x18]
	mov r3, #0x15
	str r3, [sp]
	ldr r0, [sp, #8]
	str r6, [sp, #4]
	add r1, sp, #0x10
	bl sub_0202E1F0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	mov r0, #1
	add sp, #0x28
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021A211A:
	cmp r0, #0
	beq _021A2140
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A212C
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, #0x1c]
_021A212C:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _021A213C
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x11
	bl ovy257_21a21d4
_021A213C:
	mov r0, #0
	str r0, [r5, #0x18]
_021A2140:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2144: .word 0x000039E3
	thumb_func_end ovy257_21a2008

	thumb_func_start ovy257_21a2148
ovy257_21a2148: ; 0x021A2148
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r3, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, r3
	beq _021A21B2
	cmp r2, #0
	bne _021A2180
	mov r2, #0x1c
	bl ovy257_21a2244
	mov r0, #1
	ldr r5, [r4, #0x2c]
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_02024EEC
	b _021A21AE
_021A2180:
	cmp r3, #0
	bne _021A21AE
	cmp r2, #0
	beq _021A21AE
	mov r2, #0x11
	bl ovy257_21a21d4
	add r0, r5, #0
	bl ovy257_21aaeb0
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02024EEC
	ldr r5, [r4, #0x30]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021A21AE:
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
_021A21B2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a2148

	thumb_func_start ovy257_21a21b4
ovy257_21a21b4: ; 0x021A21B4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021AAA4C
	ldr r0, [r0]
	bl sub_02017238
	mov r1, #0
	str r1, [sp]
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200A46C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a21b4

	thumb_func_start ovy257_21a21d4
ovy257_21a21d4: ; 0x021A21D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl sub_021AAA7C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r2, #5
	ldr r0, [r5, #0x2c]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #9
	bl sub_02024E80
	mov r0, #1
	str r0, [r5, #0x20]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a21d4

	thumb_func_start ovy257_21a2244
ovy257_21a2244: ; 0x021A2244
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021AAA7C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AAA84
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_021AAA8C
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r6, [sp]
	mov r0, #0x11
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r2, #0
	mov r3, #0
	mov r7, #0
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r2, #5
	ldr r0, [r4, #0x30]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #9
	bl sub_02024E80
	mov r0, #1
	str r0, [r4, #0x24]
	add r0, r5, #0
	str r7, [r4, #0x38]
	bl ovy257_21aaeb0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a2244

	thumb_func_start ovy257_21a22bc
ovy257_21a22bc: ; 0x021A22BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _021A22F0 ; =0x000002B9
	add r5, r1, #0
	mov r1, #0x5e
	str r0, [sp]
	ldr r3, _021A22F4 ; =0x021B2674
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	add r0, r6, #0
	bl sub_021AAA4C
	ldr r0, [r0]
	bl sub_02017994
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A22F0: .word 0x000002B9
_021A22F4: .word 0x021B2674
	thumb_func_end ovy257_21a22bc

	thumb_func_start sub_021A22F8
sub_021A22F8: ; 0x021A22F8
	ldr r3, _021A2300 ; =GFL_HeapFree
	add r0, r1, #0
	bx r3
	nop
_021A2300: .word GFL_HeapFree
	thumb_func_end sub_021A22F8

	thumb_func_start ovy257_21a2304
ovy257_21a2304: ; 0x021A2304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldrh r6, [r1]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	bl sub_021AAA14
	str r0, [sp, #0x18]
	bl sub_02042A78
	mov r0, #0
	ldr r5, [sp, #0xc]
	ldr r3, _021A2460 ; =0x021B1EA4
	str r0, [sp, #0x14]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	mov r4, #0
	add r5, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x18
_021A2340:
	add r0, r4, #0
	mul r0, r7
	ldr r1, [sp, #0x10]
	add r0, r5, r0
	mov r2, #0x18
	blx MI_CpuFill8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A2340
_021A2358:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _021A23F4
	ldr r0, [sp, #0x14]
	mov r1, #0x18
	mul r1, r0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r4, r0, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	bl sub_0219CCD8
	str r0, [r4, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	bl sub_0219CCE4
	str r0, [r4, #0x1c]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0x20
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021A23BC
	bl sub_020352E8
	cmp r0, #0
	bne _021A23BC
	mov r7, #2
	mov r5, #0
	lsl r7, r7, #0xc
_021A239E:
	ldr r2, _021A2464 ; =0x021B2674
	ldr r3, _021A2468 ; =0x00000305
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02042EA4
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A239E
	b _021A23EA
_021A23BC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	bl sub_0219CC94
	lsl r1, r0, #2
	add r0, sp, #0x20
	ldr r7, [r0, r1]
	mov r5, #0
_021A23CE:
	mov r0, #0xf2
	add r1, r5, r7
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B4E4
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A23CE
_021A23EA:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_021A23F4:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #4
	blo _021A2358
	bl ovy257_21aab64
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_021AAA0C
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_0219B524
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl sub_0219CC94
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021A26E0
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r0, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r3, r7, #0
	str r4, [sp, #4]
	bl ovy257_21a82cc
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x60]
	ldr r0, [sp, #0xc]
	mov r1, #4
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [sp, #8]
	bl sub_021AAE44
	mov r0, #1
	add r1, r6, #0
	bl sub_02042BA8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2460: .word 0x021B1EA4
_021A2464: .word 0x021B2674
_021A2468: .word 0x00000305
	thumb_func_end ovy257_21a2304

	thumb_func_start ovy257_21a246c
ovy257_21a246c: ; 0x021A246C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	bl sub_021AAA8C
	bl sub_02021C44
	ldr r0, [r7, #0x60]
	bl ovy257_21a83ac
	mov r6, #0
_021A2482:
	mov r0, #0x18
	mul r0, r6
	add r5, r7, r0
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _021A24AE
	bl sub_020352E8
	cmp r0, #0
	bne _021A24AE
	mov r4, #0
_021A2498:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl sub_02042ED0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A2498
	b _021A24C4
_021A24AE:
	mov r4, #0
_021A24B0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A24B0
_021A24C4:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021A2482
	ldr r0, [sp]
	bl sub_021AAAA4
	cmp r0, #6
	bne _021A24E0
	ldr r0, [sp]
	add r1, r7, #0
	bl ovy257_21a2ea4
_021A24E0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a246c

	thumb_func_start ovy257_21a24e4
ovy257_21a24e4: ; 0x021A24E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r2, [r4, #0xc]
	add r6, r0, #0
	ldrh r5, [r4]
	cmp r2, #9
	bhi _021A258A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A2500: ; jump table
	.short _021A2514 - _021A2500 - 2 ; case 0
	.short _021A2532 - _021A2500 - 2 ; case 1
	.short _021A2602 - _021A2500 - 2 ; case 2
	.short _021A25B2 - _021A2500 - 2 ; case 3
	.short _021A2540 - _021A2500 - 2 ; case 4
	.short _021A2564 - _021A2500 - 2 ; case 5
	.short _021A259C - _021A2500 - 2 ; case 6
	.short _021A25BE - _021A2500 - 2 ; case 7
	.short _021A25D2 - _021A2500 - 2 ; case 8
	.short _021A25F0 - _021A2500 - 2 ; case 9
_021A2514:
	bl sub_021AAA0C
	mov r0, #6
	str r0, [sp]
	mov r7, #1
	str r7, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl GFL_FadeScreenSet
	str r7, [r4, #0xc]
	b _021A2602
_021A2532:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A2602
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021A2540:
	ldr r0, [r4, #0x60]
	add r1, r5, #0
	bl ovy257_21a8090
	str r0, [r4, #0x64]
	mov r0, #5
	str r0, [r4, #0xc]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	mov r2, #1
_021A255C:
	mov r3, #0
	bl GFL_FadeScreenSet
	b _021A2602
_021A2564:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A2602
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a59e8
	cmp r0, #0
	bne _021A2596
	ldr r0, [r4, #0x64]
	bl ovy257_21a81d4
	cmp r0, #0
	beq _021A2602
	cmp r0, #1
	beq _021A258C
	cmp r0, #2
	beq _021A2590
_021A258A:
	b _021A2602
_021A258C:
	mov r0, #6
_021A258E:
	b _021A25BA
_021A2590:
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021A2596:
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021A259C:
	mov r0, #3
	str r0, [r4, #0xc]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	b _021A255C
_021A25B2:
	ldr r0, [r4, #0x64]
	bl ovy257_21a8228
_021A25B8:
	mov r0, #7
_021A25BA:
	str r0, [r4, #0xc]
	b _021A2602
_021A25BE:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A2602
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a2d14
	mov r0, #8
	b _021A258E
_021A25D2:
	bl ovy257_21a59e8
	cmp r0, #0
	bne _021A25EA
	add r0, r6, #0
	add r1, r4, #0
	bl ovy257_21a2ef8
	cmp r0, #1
	bne _021A2602
	mov r0, #9
	b _021A258E
_021A25EA:
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021A25F0:
	bl ovy257_21a2e78
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A25FC
	b _021A25B8
_021A25FC:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2602:
	mov r5, #0x4d
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A2642
	add r0, r6, #0
	bl sub_021AAA8C
	add r7, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A2642
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #2
	bl GFL_BGSysLoadScr
	mov r0, #0
	str r0, [r4, r5]
_021A2642:
	ldr r5, _021A26D4 ; =0x00000484
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A2680
	add r0, r6, #0
	bl sub_021AAA8C
	add r7, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A2680
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #3
	bl GFL_BGSysLoadScr
	mov r0, #0
	str r0, [r4, r5]
_021A2680:
	ldr r5, _021A26D8 ; =0x0000048C
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A26BE
	add r0, r6, #0
	bl sub_021AAA8C
	add r7, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A26BE
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #3
	bl GFL_BGSysLoadScr
	mov r0, #0
	str r0, [r4, r5]
_021A26BE:
	bl sub_0204B794
	add r0, r6, #0
	bl sub_021AAA8C
	bl sub_02021A3C
	mov r0, #4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A26D4: .word 0x00000484
_021A26D8: .word 0x0000048C
	thumb_func_end ovy257_21a24e4

	thumb_func_start sub_021A26DC
sub_021A26DC: ; 0x021A26DC
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021A26DC

	thumb_func_start sub_021A26E0
sub_021A26E0: ; 0x021A26E0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A26E0

	thumb_func_start sub_021A26E4
sub_021A26E4: ; 0x021A26E4
	ldr r1, _021A26EC ; =0x000005C8
	ldr r0, [r0, r1]
	bx lr
	nop
_021A26EC: .word 0x000005C8
	thumb_func_end sub_021A26E4

	thumb_func_start sub_021A26F0
sub_021A26F0: ; 0x021A26F0
	ldr r1, _021A26F8 ; =0x00000504
	ldr r0, [r0, r1]
	bx lr
	nop
_021A26F8: .word 0x00000504
	thumb_func_end sub_021A26F0

	thumb_func_start sub_021A26FC
sub_021A26FC: ; 0x021A26FC
	ldr r2, _021A2704 ; =0x000004E4
	str r1, [r0, r2]
	bx lr
	nop
_021A2704: .word 0x000004E4
	thumb_func_end sub_021A26FC

	thumb_func_start sub_021A2708
sub_021A2708: ; 0x021A2708
	ldr r2, _021A2710 ; =0x000004E8
	str r1, [r0, r2]
	bx lr
	nop
_021A2710: .word 0x000004E8
	thumb_func_end sub_021A2708

	thumb_func_start sub_021A2714
sub_021A2714: ; 0x021A2714
	ldr r2, _021A271C ; =0x000004EC
	str r1, [r0, r2]
	bx lr
	nop
_021A271C: .word 0x000004EC
	thumb_func_end sub_021A2714

	thumb_func_start sub_021A2720
sub_021A2720: ; 0x021A2720
	mov r2, #0x4f
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021A2720

	thumb_func_start ovy257_21a2728
ovy257_21a2728: ; 0x021A2728
	push {r3, r4}
	ldr r2, _021A2740 ; =0x000004F4
	mov r3, #1
	lsl r3, r1
	lsl r1, r3, #0x18
	ldrb r4, [r0, r2]
	lsr r1, r1, #0x18
	orr r1, r4
	strb r1, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_021A2740: .word 0x000004F4
	thumb_func_end ovy257_21a2728

	thumb_func_start ovy257_21a2744
ovy257_21a2744: ; 0x021A2744
	push {r3, r4}
	ldr r2, _021A275C ; =0x000004F5
	mov r3, #1
	lsl r3, r1
	lsl r1, r3, #0x18
	ldrb r4, [r0, r2]
	lsr r1, r1, #0x18
	orr r1, r4
	strb r1, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_021A275C: .word 0x000004F5
	thumb_func_end ovy257_21a2744

	thumb_func_start ovy257_21a2760
ovy257_21a2760: ; 0x021A2760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_021AAAB8
	ldr r1, _021A279C ; =0x000004F4
	mov r2, #1
	ldrb r4, [r4, r1]
	mov r3, #0
	add r1, r2, #0
_021A2772:
	add r5, r1, #0
	lsl r5, r2
	tst r5, r4
	beq _021A2780
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
_021A2780:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #4
	blo _021A2772
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, r1
	bne _021A2798
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2798:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A279C: .word 0x000004F4
	thumb_func_end ovy257_21a2760

	thumb_func_start ovy257_21a27a0
ovy257_21a27a0: ; 0x021A27A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_021AAAB8
	ldr r1, _021A27DC ; =0x000004F5
	mov r2, #1
	ldrb r4, [r4, r1]
	mov r3, #0
	add r1, r2, #0
_021A27B2:
	add r5, r1, #0
	lsl r5, r2
	tst r5, r4
	beq _021A27C0
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
_021A27C0:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #4
	blo _021A27B2
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, r1
	bne _021A27D8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A27D8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A27DC: .word 0x000004F5
	thumb_func_end ovy257_21a27a0

	thumb_func_start ovy257_21a27e0
ovy257_21a27e0: ; 0x021A27E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	mov r0, #0
	mov r1, #0
	cmp r6, #0
	bls _021A2810
_021A27FC:
	cmp r7, r1
	beq _021A2806
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021A2806:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r6
	blo _021A27FC
_021A2810:
	ldr r1, [sp]
	mov r4, #0
	lsl r1, r1, #1
	add r1, r5, r1
	str r1, [sp, #8]
	mov r1, #0x18
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #4]
	ldr r0, _021A2894 ; =0x000005C8
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, _021A2894 ; =0x000005C8
	add r0, r5, r0
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r0, r0, #0xc
	lsr r0, r0, #5
	str r0, [sp, #0xc]
_021A2836:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r0, _021A2894 ; =0x000005C8
	ldrh r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_0204A5A0
	add r1, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	mul r2, r1
	add r1, r4, r2
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204A5B8
	bl sub_020496D8
	lsl r0, r0, #0x10
	lsr r3, r0, #0xd
	cmp r7, r6
	bne _021A286E
	ldr r1, [r5, #0x60]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r2, [r0, #8]
	b _021A2876
_021A286E:
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, r1
	ldr r2, [r0, #0x24]
_021A2876:
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r3, r1
	mov r3, #2
	lsl r3, r3, #0xc
	bl sub_0205FA10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A2836
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2894: .word 0x000005C8
	thumb_func_end ovy257_21a27e0

	thumb_func_start ovy257_21a2898
ovy257_21a2898: ; 0x021A2898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0x7c
	add r7, r0, #0
	mul r7, r1
	add r0, r5, r7
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _021A28B2
	b _021A29C4
_021A28B2:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x70
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	add r6, r5, #0
	ldr r0, [r5, #0x68]
	ldr r1, _021A29CC ; =ovy257_21a6728
	add r2, r2, r7
	mov r3, #0
	add r6, #0x74
	mov r4, #0
	bl sub_0203A614
	str r0, [r6, r7]
	cmp r0, #0
	beq _021A29C4
	add r0, r5, #0
	bl ovy257_21a66bc
	mov r6, #0x45
	str r0, [sp, #0xc]
	lsl r6, r6, #4
_021A28E0:
	mov r0, #4
	bl ovy257_21a5a1c
	lsl r0, r0, #0x18
	ldrb r1, [r5, r6]
	lsr r0, r0, #0x18
	cmp r0, r1
	bne _021A28FA
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0xa
	blo _021A28E0
_021A28FA:
	mov r1, #0x45
	lsl r1, r1, #4
	strb r0, [r5, r1]
	mov r4, #0
	add r6, r1, #1
_021A2904:
	mov r0, #3
	bl ovy257_21a5a1c
	lsl r0, r0, #0x18
	ldrb r1, [r5, r6]
	lsr r0, r0, #0x18
	cmp r0, r1
	bne _021A291E
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0xa
	blo _021A2904
_021A291E:
	ldr r4, _021A29D0 ; =0x00000451
	strb r0, [r5, r4]
	add r0, r4, #1
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	mov r1, #3
	blx sub_0208D65C
	add r0, r4, #1
	strb r1, [r5, r0]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsl r2, r2, #1
	ldr r4, _021A29D4 ; =0x000005CC
	add r2, r5, r2
	ldrh r2, [r2, r4]
	add r0, r5, #0
	add r1, r1, r7
	bl ovy257_21a6598
	sub r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r5, r7
	str r0, [sp, #0x1c]
	str r1, [r0, #0x7c]
	mov r4, #0
	add r0, #0xc0
	str r4, [r0]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x88
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x84
	str r0, [sp, #0x18]
_021A296C:
	ldr r0, [sp, #8]
	cmp r4, r0
	beq _021A29B4
	mov r0, #0x7c
	add r6, r4, #0
	mul r6, r0
	add r1, r5, r6
	ldr r0, [sp, #0x1c]
	add r2, r1, #0
	add r0, #0xc4
	add r2, #0xc4
	ldr r0, [r0]
	ldr r2, [r2]
	cmp r0, r2
	bne _021A29B4
	ldr r0, [r1, #0x70]
	cmp r0, #1
	bne _021A29B4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x8c
	mul r0, r1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r0, r7
	add r1, r1, r7
	add r2, r2, r6
	add r3, r3, r6
	bl ovy257_21a68f8
_021A29B4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A296C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A29C4:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A29CC: .word ovy257_21a6728
_021A29D0: .word 0x00000451
_021A29D4: .word 0x000005CC
	thumb_func_end ovy257_21a2898

	thumb_func_start sub_021A29D8
sub_021A29D8: ; 0x021A29D8
	ldr r2, _021A29E0 ; =0x000004F8
	str r1, [r0, r2]
	bx lr
	nop
_021A29E0: .word 0x000004F8
	thumb_func_end sub_021A29D8

	thumb_func_start sub_021A29E4
sub_021A29E4: ; 0x021A29E4
	ldr r2, _021A29F0 ; =0x000004FC
	mov r3, #1
	strh r1, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	bx lr
	.align 2, 0
_021A29F0: .word 0x000004FC
	thumb_func_end sub_021A29E4

	thumb_func_start ovy257_021A29F4
ovy257_021A29F4: ; 0x021A29F4
	ldr r1, _021A29FC ; =0x000004FC
	ldrh r0, [r0, r1]
	bx lr
	nop
_021A29FC: .word 0x000004FC
	thumb_func_end ovy257_021A29F4

	thumb_func_start sub_021A2A00
sub_021A2A00: ; 0x021A2A00
	ldr r1, _021A2A08 ; =0x00000508
	ldrh r0, [r0, r1]
	bx lr
	nop
_021A2A08: .word 0x00000508
	thumb_func_end sub_021A2A00

	thumb_func_start ovy257_21a2a0c
ovy257_21a2a0c: ; 0x021A2A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	add r5, r1, #0
	add r4, r3, #0
	str r0, [sp, #4]
	add r0, sp, #8
	str r0, [sp]
	ldrh r1, [r6, #0xa]
	ldrb r2, [r6, #5]
	ldrb r3, [r6, #6]
	add r0, r5, #0
	bl ovy257_21a676c
	cmp r0, #1
	bne _021A2A62
	add r6, sp, #0xc
	mov r0, #0
	add r7, sp, #8
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldrh r0, [r7]
	strb r0, [r6, r4]
	mov r0, #1
	lsl r0, r4
	strb r0, [r7, #0xc]
	ldr r0, _021A2A68 ; =0x000004FC
	ldrh r0, [r5, r0]
	strh r0, [r7, #0xe]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	ldmia r6!, {r1, r2, r3}
	bl ovy257_219c954
	ldrh r1, [r7]
	mov r0, #0x7c
	mul r0, r1
	add r1, r5, r0
	add r1, #0xeb
	mov r0, #1
	strb r0, [r1]
_021A2A62:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2A68: .word 0x000004FC
	thumb_func_end ovy257_21a2a0c

	thumb_func_start ovy257_21a2a6c
ovy257_21a2a6c: ; 0x021A2A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #4]
	add r7, r0, #0
	str r1, [sp]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #8]
	ldr r0, _021A2BB8 ; =0x000003E7
	mov r4, #0
	str r0, [sp, #0xc]
	add r0, #0x8f
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	sub r0, #0x9a
	str r0, [sp, #0x10]
_021A2A94:
	mov r1, #1
	lsl r1, r4
	ldr r0, [sp, #4]
	tst r0, r1
	bne _021A2AA0
	b _021A2BA8
_021A2AA0:
	ldr r0, [sp]
	ldrb r1, [r0, r4]
	mov r0, #0x7c
	mul r0, r1
	add r6, r7, r0
	ldr r0, [r6, #0x74]
	cmp r0, #0
	beq _021A2BA8
	add r0, r6, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r4, r0
	bne _021A2B16
	ldr r0, [sp, #0xc]
	ldrh r0, [r7, r0]
	cmp r0, #0x14
	bhi _021A2ADC
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, #4
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r6, #0
	add r1, #0xd8
	mov r0, #1
	b _021A2AF4
_021A2ADC:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, #2
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r6, #0
	add r1, #0xd8
	mov r0, #0
_021A2AF4:
	str r0, [r1]
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _021A2BB8 ; =0x000003E7
	cmp r1, r0
	ble _021A2B0A
	add r1, r0, #0
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r5, r0]
_021A2B0A:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021A2B70
	ldr r0, _021A2BBC ; =0x00000821
	add r0, r0, #3
	b _021A2B6C
_021A2B16:
	ldr r0, [sp, #0x10]
	ldrh r0, [r7, r0]
	cmp r0, #0x14
	bhi _021A2B38
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	sub r1, r0, #2
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r6, #0
	add r1, #0xd8
	mov r0, #3
	b _021A2B50
_021A2B38:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	sub r1, r0, #1
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r6, #0
	add r1, #0xd8
	mov r0, #2
_021A2B50:
	str r0, [r1]
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bge _021A2B64
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021A2B64:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021A2B70
	ldr r0, _021A2BBC ; =0x00000821
_021A2B6C:
	bl GFL_SndSEPlay
_021A2B70:
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r7, #0
	lsl r2, r2, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ovy257_21a6ddc
	add r0, r6, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r4, r0
	bne _021A2B94
	add r1, r6, #0
	add r1, #0xc0
	mov r0, #1
	b _021A2B9A
_021A2B94:
	add r1, r6, #0
	add r1, #0xc0
	mov r0, #2
_021A2B9A:
	str r0, [r1]
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021A2BA8
	add r6, #0xd0
	mov r0, #1
	str r0, [r6]
_021A2BA8:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	bhs _021A2BB4
	b _021A2A94
_021A2BB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2BB8: .word 0x000003E7
_021A2BBC: .word 0x00000821
	thumb_func_end ovy257_21a2a6c

	thumb_func_start ovy257_21a2bc0
ovy257_21a2bc0: ; 0x021A2BC0
	push {r4, r5}
	mov r2, #0x51
	mov r5, #0
	lsl r2, r2, #4
_021A2BC8:
	lsl r3, r5, #2
	ldr r4, [r1, r3]
	add r3, r0, r3
	str r4, [r3, r2]
	add r3, r5, #1
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	cmp r5, #4
	blo _021A2BC8
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_21a2bc0

	thumb_func_start ovy257_21a2be0
ovy257_21a2be0: ; 0x021A2BE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	add r0, r1, #0
	add r4, r3, #0
	mov r7, #0
	mov r1, #1
	cmp r2, #1
	bne _021A2BF4
	mov r1, #2
_021A2BF4:
	ldr r2, _021A2C7C ; =0x00000476
	ldrh r2, [r0, r2]
	cmp r2, #0x14
	bhi _021A2C00
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
_021A2C00:
	ldr r2, _021A2C80 ; =0x00000468
	add r5, r0, r2
	ldrb r3, [r5, r4]
	add r1, r3, r1
	strb r1, [r5, r4]
	add r1, r2, #4
	add r6, r0, r1
	ldrb r1, [r6, r4]
	mov ip, r1
	cmp r1, #3
	ldrb r1, [r5, r4]
	bhs _021A2C38
	ldr r5, _021A2C84 ; =0x021B1AAD
	mov r3, ip
	ldrb r3, [r5, r3]
	cmp r1, r3
	blo _021A2C54
	lsl r1, r4, #2
	add r0, r0, r1
	sub r2, #0x10
	ldr r0, [r0, r2]
	bl sub_021A7E30
	cmp r0, #0
	bne _021A2C54
	ldrb r0, [r6, r4]
	add r0, r0, #1
	b _021A2C50
_021A2C38:
	cmp r1, #0x1e
	blo _021A2C54
	lsl r1, r4, #2
	add r0, r0, r1
	sub r2, #0x10
	ldr r0, [r0, r2]
	bl sub_021A7E30
	cmp r0, #0
	bne _021A2C54
	mov r0, #0
	strb r0, [r5, r4]
_021A2C50:
	strb r0, [r6, r4]
	mov r7, #1
_021A2C54:
	cmp r7, #1
	bne _021A2C76
	mov r1, #1
	add r5, sp, #8
	mov r0, #0
	lsl r1, r4
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	add r0, sp, #8
	strb r1, [r0, #8]
	mov r0, #7
	str r0, [sp]
	ldr r0, [sp, #4]
	ldmia r5!, {r1, r2, r3}
	bl ovy257_219c954
_021A2C76:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A2C7C: .word 0x00000476
_021A2C80: .word 0x00000468
_021A2C84: .word 0x021B1AAD
	thumb_func_end ovy257_21a2be0

	thumb_func_start ovy257_21a2c88
ovy257_21a2c88: ; 0x021A2C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r6, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #8]
	ldr r0, _021A2D0C ; =0x00000828
	mov r7, #0x51
	str r0, [sp, #0xc]
	sub r0, #8
	lsl r7, r7, #4
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x10]
	sub r0, #0xb8
	mov r4, #0
	str r0, [sp, #0x10]
_021A2CB0:
	mov r1, #1
	lsl r1, r4
	ldr r0, [sp]
	tst r0, r1
	beq _021A2CFE
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r5, r0]
	bl sub_021A7D88
	str r0, [sp, #4]
	cmp r0, #1
	bne _021A2CE8
	ldr r0, [r5, r7]
	add r1, r0, #5
	ldr r0, _021A2D10 ; =0x000003E7
	str r1, [r5, r7]
	cmp r1, r0
	ble _021A2CDA
	str r0, [r5, r7]
_021A2CDA:
	ldr r2, [r5, r7]
	add r0, r6, #0
	lsl r2, r2, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ovy257_21a6ddc
_021A2CE8:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021A2CFE
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A2CF8
	ldr r0, [sp, #0xc]
	b _021A2CFA
_021A2CF8:
	ldr r0, _021A2D0C ; =0x00000828
_021A2CFA:
	bl GFL_SndSEPlay
_021A2CFE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A2CB0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2D0C: .word 0x00000828
_021A2D10: .word 0x000003E7
	thumb_func_end ovy257_21a2c88

	thumb_func_start ovy257_21a2d14
ovy257_21a2d14: ; 0x021A2D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldrh r6, [r5]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy257_21a5a54
	mov r0, #0xe9
	add r1, r6, #0
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A26E0
	cmp r0, #0
	beq _021A2D3E
	cmp r0, #1
	beq _021A2D4A
	b _021A2D54
_021A2D3E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_21a5f14
	b _021A2D54
_021A2D4A:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_21a60e8
_021A2D54:
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r7, #0x20
	mov r3, #0x1e
	str r7, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r3, #4
	str r6, [sp, #4]
	mov r4, #0
	bl GFL_BGSysLoadNCLRDefault
	mov r3, #0x1e
	str r7, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	lsl r3, r3, #4
	str r6, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #2
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	str r6, [sp]
	bl sub_02024D00
	mov r0, #0x4b
	add r1, r4, #0
	lsl r0, r0, #4
_021A2D96:
	lsl r2, r4, #2
	add r2, r5, r2
	str r1, [r2, r0]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #4
	blo _021A2D96
	ldr r2, _021A2E64 ; =0x00000544
	mov r0, #0
_021A2DAA:
	lsl r3, r1, #2
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r3, r5, r3
	lsr r1, r1, #0x18
	str r0, [r3, r2]
	cmp r1, #3
	blo _021A2DAA
	mov r2, #0x55
	mov r1, #0
	lsl r2, r2, #4
_021A2DC0:
	lsl r3, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r3, r5, r3
	lsr r0, r0, #0x18
	str r1, [r3, r2]
	cmp r0, #2
	blo _021A2DC0
	ldr r3, _021A2E68 ; =0x00000558
	str r1, [r5, r3]
	add r0, r3, #4
	str r1, [r5, r0]
	add r0, r3, #0
	add r0, #8
	str r1, [r5, r0]
	add r0, r3, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r3, #0
	add r0, #0x10
	str r1, [r5, r0]
	add r0, r3, #0
	add r2, r3, #0
	add r0, #0x14
	str r1, [r5, r0]
	mov r0, #0
	add r2, #0x18
	add r3, #0x24
_021A2DF8:
	lsl r4, r1, #2
	add r1, r1, #1
	add r4, r5, r4
	lsl r1, r1, #0x18
	str r0, [r4, r2]
	lsr r1, r1, #0x18
	str r0, [r4, r3]
	cmp r1, #3
	blo _021A2DF8
	ldr r2, _021A2E6C ; =0x00000588
	str r0, [r5, r2]
	add r1, r2, #4
	str r0, [r5, r1]
	mov r1, #0
	add r2, #8
_021A2E16:
	lsl r3, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r3, r5, r3
	lsr r0, r0, #0x18
	str r1, [r3, r2]
	cmp r0, #6
	blo _021A2E16
	ldr r2, _021A2E70 ; =0x000005A8
	mov r0, #0
	add r3, r2, #0
	add r3, #8
_021A2E2E:
	lsl r4, r1, #2
	add r1, r1, #1
	add r4, r5, r4
	lsl r1, r1, #0x18
	str r0, [r4, r2]
	lsr r1, r1, #0x18
	str r0, [r4, r3]
	cmp r1, #2
	blo _021A2E2E
	ldr r2, _021A2E74 ; =0x000005B8
	str r0, [r5, r2]
	add r1, r2, #4
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #8
	str r0, [r5, r1]
	add r2, #0xc
	mov r1, #2
	str r0, [r5, r2]
	bl sub_02044BD8
	mov r0, #1
	add r1, r6, #0
	bl sub_02042BA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2E64: .word 0x00000544
_021A2E68: .word 0x00000558
_021A2E6C: .word 0x00000588
_021A2E70: .word 0x000005A8
_021A2E74: .word 0x000005B8
	thumb_func_end ovy257_21a2d14

	thumb_func_start ovy257_21a2e78
ovy257_21a2e78: ; 0x021A2E78
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A26E0
	cmp r0, #0
	beq _021A2E8C
	cmp r0, #1
	beq _021A2E94
	b _021A2E9A
_021A2E8C:
	add r0, r4, #0
	bl ovy257_21a606c
	b _021A2E9A
_021A2E94:
	add r0, r4, #0
	bl ovy257_21a61c8
_021A2E9A:
	add r0, r4, #0
	bl ovy257_21a5b14
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a2e78

	thumb_func_start ovy257_21a2ea4
ovy257_21a2ea4: ; 0x021A2EA4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	beq _021A2EBA
	cmp r0, #6
	beq _021A2EBA
	cmp r0, #8
	beq _021A2EC2
	pop {r4, r5, r6, pc}
_021A2EBA:
	ldr r0, [r4, #0x64]
	bl ovy257_21a8228
	pop {r4, r5, r6, pc}
_021A2EC2:
	add r0, r4, #0
	bl sub_021A26E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a56bc
	cmp r6, #0
	beq _021A2EDC
	cmp r6, #1
	beq _021A2EE6
	b _021A2EEE
_021A2EDC:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a5990
	b _021A2EEE
_021A2EE6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a59b0
_021A2EEE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a2e78
	pop {r4, r5, r6, pc}
	thumb_func_end ovy257_21a2ea4

	thumb_func_start ovy257_21a2ef8
ovy257_21a2ef8: ; 0x021A2EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021AAA0C
	add r0, r5, #0
	bl sub_021AAA14
	str r0, [sp, #0xc]
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0x21
	bls _021A2F20
	bl _021A3734
_021A2F20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2F2C: ; jump table
	.short _021A2F70 - _021A2F2C - 2 ; case 0
	.short _021A2FB6 - _021A2F2C - 2 ; case 1
	.short _021A2FC6 - _021A2F2C - 2 ; case 2
	.short _021A2FDA - _021A2F2C - 2 ; case 3
	.short _021A302A - _021A2F2C - 2 ; case 4
	.short _021A303E - _021A2F2C - 2 ; case 5
	.short _021A315A - _021A2F2C - 2 ; case 6
	.short _021A306A - _021A2F2C - 2 ; case 7
	.short _021A3130 - _021A2F2C - 2 ; case 8
	.short _021A31C4 - _021A2F2C - 2 ; case 9
	.short _021A31E2 - _021A2F2C - 2 ; case 10
	.short _021A3230 - _021A2F2C - 2 ; case 11
	.short _021A3246 - _021A2F2C - 2 ; case 12
	.short _021A325C - _021A2F2C - 2 ; case 13
	.short _021A3272 - _021A2F2C - 2 ; case 14
	.short _021A3286 - _021A2F2C - 2 ; case 15
	.short _021A32A2 - _021A2F2C - 2 ; case 16
	.short _021A32AE - _021A2F2C - 2 ; case 17
	.short _021A32BA - _021A2F2C - 2 ; case 18
	.short _021A32D4 - _021A2F2C - 2 ; case 19
	.short _021A32E8 - _021A2F2C - 2 ; case 20
	.short _021A3316 - _021A2F2C - 2 ; case 21
	.short _021A33CE - _021A2F2C - 2 ; case 22
	.short _021A33EA - _021A2F2C - 2 ; case 23
	.short _021A345E - _021A2F2C - 2 ; case 24
	.short _021A3504 - _021A2F2C - 2 ; case 25
	.short _021A357C - _021A2F2C - 2 ; case 26
	.short _021A35AE - _021A2F2C - 2 ; case 27
	.short _021A35F4 - _021A2F2C - 2 ; case 28
	.short _021A365C - _021A2F2C - 2 ; case 29
	.short _021A368A - _021A2F2C - 2 ; case 30
	.short _021A36D8 - _021A2F2C - 2 ; case 31
	.short _021A36EA - _021A2F2C - 2 ; case 32
	.short _021A36FE - _021A2F2C - 2 ; case 33
_021A2F70:
	cmp r7, #0
	bne _021A2FB0
	add r5, sp, #0x3c
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl sub_02044210
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	lsl r1, r1, #8
	add r2, r2, r1
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x14
	lsl r1, r1, #0x10
	add r1, r2, r1
	add r2, r0, r1
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	lsl r0, r0, #0x18
	add r0, r2, r0
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldmia r5!, {r1, r2, r3}
	bl ovy257_219c954
_021A2FB0:
	mov r0, #1
_021A2FB2:
	strb r0, [r4, #0x10]
	b _021A3734
_021A2FB6:
	bl sub_02040440
	mov r1, #0x16
	mov r2, #0x20
	bl sub_02040624
	mov r0, #2
	b _021A2FB2
_021A2FC6:
	bl sub_02040440
	mov r1, #0x16
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A3072
	mov r0, #3
	b _021A2FB2
_021A2FDA:
	add r0, r4, #0
	bl sub_021A26E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a3750
	cmp r6, #0
	beq _021A2FF4
	cmp r6, #1
	beq _021A2FFE
	b _021A3006
_021A2FF4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a39e8
	b _021A3006
_021A2FFE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a3da8
_021A3006:
	ldr r0, _021A331C ; =0x00000533
	ldr r1, _021A3320 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #4
	strb r0, [r4, #0x10]
	mov r0, #6
	str r0, [sp]
_021A3016:
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl GFL_FadeScreenSet
	b _021A3734
_021A302A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A3072
	mov r0, #5
	strb r0, [r4, #0x10]
	ldr r0, _021A3324 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	b _021A3734
_021A303E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a43b8
	cmp r0, #0
	beq _021A3072
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
	bl GFL_FadeScreenSet
	bl sub_02005D8C
	mov r0, #7
	b _021A2FB2
_021A306A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	beq _021A3074
_021A3072:
	b _021A3734
_021A3074:
	ldr r7, _021A3328 ; =0x00000558
	mov r1, #1
	ldr r0, [r4, r7]
	bl sub_0204C124
	mov r6, #0
	sub r7, #0xbc
_021A3082:
	lsl r1, r6, #2
	add r1, r4, r1
	ldr r1, [r1, r7]
	add r0, r5, #0
	bl ovy257_21a6cfc
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021A3082
	mov r6, #0x12
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r7, [r4, r6]
	add r0, r7, #0
	bl sub_020484B4
	add r0, r7, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02024EEC
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r6, #8
	ldr r6, [r4, r6]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	mov r0, #2
	bl GFL_BGSysLoadScr
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	add r0, r4, #0
	bl ovy257_21a63b0
	add r0, r4, #0
	bl sub_021A26E0
	cmp r0, #0
	beq _021A310E
	cmp r0, #1
	beq _021A3118
	b _021A3120
_021A310E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a4470
	b _021A3120
_021A3118:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a44f8
_021A3120:
	bl sub_02040440
	mov r1, #0x17
	mov r2, #0x20
	bl sub_02040624
	mov r0, #8
	b _021A2FB2
_021A3130:
	bl sub_02040440
	mov r1, #0x17
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A31D0
	ldr r0, _021A332C ; =0x000004C7
	mov r5, #6
	ldr r1, _021A3320 ; =0x0000FFFF
	strb r5, [r4, #0x10]
	bl sub_02005DF4
	mov r0, #4
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	str r5, [sp]
	b _021A3016
_021A315A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A31D0
	mov r2, #1
	ldr r0, _021A3324 ; =0x04001050
	mov r1, #1
	sub r2, #9
	mov r6, #1
	bl G2x_SetBlendBrightness_
	ldr r5, _021A3330 ; =0x00000504
	add r0, r4, #0
	str r6, [r4, r5]
	bl sub_021A26E0
	cmp r0, #0
	beq _021A3184
	cmp r0, #1
	beq _021A3190
	b _021A31B4
_021A3184:
	mov r0, #9
	strb r0, [r4, #0x10]
	ldr r0, _021A3334 ; =0x00000822
	bl GFL_SndSEPlay
	b _021A31B4
_021A3190:
	mov r0, #0xb
	strb r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x68
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x68
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0204C520
	add r5, #0x68
	ldr r0, [r4, r5]
	bl sub_0204C56C
_021A31B4:
	ldr r0, [r4, #8]
	mov r1, #0x81
	bl sub_020095A0
	mov r0, #0x19
	bl sub_02038BC8
	b _021A3734
_021A31C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a4588
	cmp r0, #0
	bne _021A31D2
_021A31D0:
	b _021A3734
_021A31D2:
	ldr r0, _021A3330 ; =0x00000504
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0xa
_021A31DA:
	strb r0, [r4, #0x10]
	bl sub_02005D8C
	b _021A3734
_021A31E2:
	ldr r5, _021A3338 ; =0x000004FC
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	add r0, r4, #0
	bl ovy257_21a5b48
	add r0, r4, #0
	bl sub_021A6698
	cmp r0, #1
	bne _021A32F4
	cmp r7, #0
	bne _021A322C
	mov r3, #0
	add r2, sp, #0x10
	add r5, #0x14
_021A3204:
	lsl r1, r3, #2
	add r0, r4, r1
	ldr r0, [r0, r5]
	str r0, [r2, r1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #4
	blo _021A3204
	mov r5, sp
	sub r5, #0xc
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0xc]
	ldmia r5!, {r1, r2, r3}
	bl ovy257_219cb14
_021A322C:
	mov r0, #0xd
	b _021A2FB2
_021A3230:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a4724
	cmp r0, #0
	beq _021A32F4
	ldr r0, _021A3334 ; =0x00000822
	bl GFL_SndSEPlay
	mov r0, #0xc
	b _021A2FB2
_021A3246:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a47b4
	cmp r0, #0
	beq _021A32F4
	ldr r0, _021A3330 ; =0x00000504
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0xd
	b _021A31DA
_021A325C:
	bl sub_02040440
	mov r1, #0x18
	mov r2, #0x20
	bl sub_02040624
	ldr r0, _021A333C ; =0x00000508
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #0xe
	b _021A2FB2
_021A3272:
	bl sub_02040440
	mov r1, #0x18
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A32F4
	mov r0, #0xf
	b _021A2FB2
_021A3286:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x10
	b _021A2FB2
_021A32A2:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A32F4
	mov r0, #0x11
	b _021A2FB2
_021A32AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a4c00
	mov r0, #0x12
	b _021A2FB2
_021A32BA:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #3
	bl GFL_FadeScreenSet
	mov r0, #0x13
	b _021A2FB2
_021A32D4:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A32F4
	ldr r0, _021A3340 ; =0x00000535
	ldr r1, _021A3320 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #0x14
	b _021A2FB2
_021A32E8:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a53f8
	cmp r0, #1
	beq _021A32F6
_021A32F4:
	b _021A3734
_021A32F6:
	bl sub_02040440
	bl sub_02042A6C
	add r2, r0, #0
	lsl r2, r2, #2
	add r3, r4, r2
	ldr r2, _021A3344 ; =0x0000049C
	ldr r0, [r4, #8]
	ldr r2, [r3, r2]
	mov r1, #0x32
	ldrh r2, [r2, #0xa]
	bl sub_0200955C
	mov r0, #0x15
	b _021A2FB2
_021A3316:
	mov r2, #0x1b
	ldr r0, _021A3348 ; =0x04000050
	b _021A334C
	.align 2, 0
_021A331C: .word 0x00000533
_021A3320: .word 0x0000FFFF
_021A3324: .word 0x04001050
_021A3328: .word 0x00000558
_021A332C: .word 0x000004C7
_021A3330: .word 0x00000504
_021A3334: .word 0x00000822
_021A3338: .word 0x000004FC
_021A333C: .word 0x00000508
_021A3340: .word 0x00000535
_021A3344: .word 0x0000049C
_021A3348: .word 0x04000050
_021A334C:
	mov r1, #0x1b
	sub r2, #0x23
	bl G2x_SetBlendBrightness_
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #0xe
	str r0, [sp]
	mov r0, #2
	mov r3, #0
	mov r7, #0
	bl sub_02024D00
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3d
	bl ovy257_21a62cc
	add r0, r5, #0
	bl sub_021AAA7C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAA8C
	add r3, r0, #0
	ldrh r0, [r4]
	mov r1, #0xc
	add r2, r6, #0
	str r0, [sp]
	mov r0, #2
	bl sub_0202E168
	ldr r6, _021A3690 ; =0x000004D8
	add r1, r4, #0
	str r0, [r4, r6]
	add r0, r5, #0
	bl ovy257_21a64a0
	add r1, r6, #4
	str r0, [r4, r1]
	str r7, [r4, #0x14]
	sub r0, r6, #4
	strh r7, [r4, r0]
	sub r0, r6, #2
	strh r7, [r4, r0]
	add r0, r6, #0
	add r0, #0xc
	str r7, [r4, r0]
	add r0, r6, #0
	add r0, #0x10
	str r7, [r4, r0]
	add r0, r6, #0
	add r0, #0x14
	str r7, [r4, r0]
	add r0, r6, #0
	add r0, #0x18
	str r7, [r4, r0]
	add r0, r6, #0
	add r0, #0x1c
	strb r7, [r4, r0]
	add r6, #0x1d
	strb r7, [r4, r6]
	mov r0, #0x18
	b _021A2FB2
_021A33CE:
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
	bl GFL_FadeScreenSet
	mov r0, #0x17
	b _021A2FB2
_021A33EA:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A34DC
	ldr r0, _021A3694 ; =0x000004DC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A33FE
	bl sub_0202DA54
_021A33FE:
	mov r5, #0x4e
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A3410
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_021A3410:
	ldr r5, _021A3690 ; =0x000004D8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A3420
	bl sub_0202E1DC
	mov r0, #0
	str r0, [r4, r5]
_021A3420:
	mov r5, #0x4d
	mov r0, #0
	lsl r5, r5, #4
	str r0, [r4, r5]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02024EEC
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	sub r0, r5, #4
	ldr r5, [r4, r0]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	mov r0, #2
	bl GFL_BGSysLoadScr
	mov r0, #0x1f
	b _021A2FB2
_021A345E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A34FC
	ldr r6, _021A3698 ; =0x000004D6
	ldrh r0, [r4, r6]
	add r0, r0, #1
	strh r0, [r4, r6]
	add r0, r6, #6
	ldr r0, [r4, r0]
	bl sub_0202DB70
	add r0, r6, #6
	ldr r0, [r4, r0]
	bl sub_0202DBE4
	cmp r0, #1
	bne _021A34D4
	add r0, r6, #6
	ldr r0, [r4, r0]
	bl sub_0202DC00
	cmp r0, #0
	bne _021A34B4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2d
	bl ovy257_21a62cc
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a652c
	add r6, #0xa
	str r0, [r4, r6]
	cmp r7, #0
	bne _021A34B0
	mov r0, #0x19
	b _021A34CE
_021A34B0:
	mov r0, #0x1c
	b _021A34CE
_021A34B4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	bl ovy257_21a62cc
	mov r1, #0x96
	sub r0, r6, #2
	strh r1, [r4, r0]
	cmp r7, #0
	bne _021A34CC
	mov r0, #0x1b
	b _021A34CE
_021A34CC:
	mov r0, #0x1e
_021A34CE:
	strb r0, [r4, #0x10]
_021A34D0:
	ldr r5, _021A3694 ; =0x000004DC
	b _021A3546
_021A34D4:
	ldrh r1, [r4, r6]
	ldr r0, _021A369C ; =0x00000708
	cmp r1, r0
	bhi _021A34DE
_021A34DC:
	b _021A3734
_021A34DE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	bl ovy257_21a62cc
	mov r1, #0x96
	sub r0, r6, #2
	strh r1, [r4, r0]
	cmp r7, #0
	bne _021A34F6
	mov r0, #0x1b
	b _021A34F8
_021A34F6:
	mov r0, #0x1e
_021A34F8:
	strb r0, [r4, #0x10]
	b _021A34D0
_021A34FC:
	cmp r7, #0
	bne _021A3502
	b _021A35AA
_021A3502:
	b _021A3686
_021A3504:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A357A
	mov r6, #0x4e
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	bl sub_0202DB70
	ldr r0, [r4, r6]
	bl sub_0202DBE4
	cmp r0, #1
	ldr r0, [r4, r6]
	bne _021A3552
	bl sub_0202DC00
	cmp r0, #0
	bne _021A3542
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	bl ovy257_21a62cc
	mov r0, #0x96
	sub r6, #0xc
	strh r0, [r4, r6]
	mov r0, #0x1b
	strb r0, [r4, #0x10]
_021A3542:
	mov r5, #0x4e
	lsl r5, r5, #4
_021A3546:
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
	b _021A3734
_021A3552:
	bl sub_0202DC1C
	cmp r0, #0
	bne _021A35E6
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a2760
	cmp r0, #0
	beq _021A35E6
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #2
	bl sub_0219C880
	mov r0, #0x1a
	b _021A2FB2
_021A357A:
	b _021A35AA
_021A357C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A35AA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a27a0
	cmp r0, #0
	beq _021A35E6
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #5
	bl sub_0219C880
	mov r0, #1
	str r0, [r4, #0x14]
	b _021A36D4
_021A35AA:
	mov r0, #0x1b
	b _021A2FB2
_021A35AE:
	add r0, r5, #0
	bl sub_021AAA14
	ldr r0, _021A36A0 ; =0x000004D4
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021A35C0
	sub r1, r1, #1
	strh r1, [r4, r0]
_021A35C0:
	ldr r6, _021A36A0 ; =0x000004D4
	ldrh r0, [r4, r6]
	cmp r0, #0
	bne _021A35E6
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl sub_0219C880
	mov r0, #0x16
	strb r0, [r4, #0x10]
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A35E8
_021A35E6:
	b _021A3734
_021A35E8:
	bl sub_0202DA54
	mov r0, #0
	add r6, #0xc
	str r0, [r4, r6]
	b _021A3734
_021A35F4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A365A
	mov r6, #0x4e
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	bl sub_0202DB70
	ldr r0, [r4, r6]
	bl sub_0202DBE4
	cmp r0, #1
	ldr r0, [r4, r6]
	bne _021A3634
	bl sub_0202DC00
	cmp r0, #0
	bne _021A3632
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	bl ovy257_21a62cc
	mov r0, #0x1e
	strb r0, [r4, #0x10]
	mov r0, #0x96
	sub r6, #0xc
	strh r0, [r4, r6]
_021A3632:
	b _021A3542
_021A3634:
	bl sub_0202DC1C
	cmp r0, #0
	bne _021A3734
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	mov r5, #0
	bl sub_0219C880
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021A3734
	add r6, #0xc
	str r5, [r4, r6]
	mov r0, #0x1d
	b _021A2FB2
_021A365A:
	b _021A3686
_021A365C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A3686
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #4
	bl sub_0219C880
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021A3734
	mov r1, #1
	str r1, [r4, #0x14]
	mov r1, #0
	str r1, [r4, r0]
	b _021A36D4
_021A3686:
	mov r0, #0x1e
	b _021A2FB2
_021A368A:
	ldr r0, _021A36A0 ; =0x000004D4
	b _021A36A4
	nop
_021A3690: .word 0x000004D8
_021A3694: .word 0x000004DC
_021A3698: .word 0x000004D6
_021A369C: .word 0x00000708
_021A36A0: .word 0x000004D4
_021A36A4:
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021A36AE
	sub r1, r1, #1
	strh r1, [r4, r0]
_021A36AE:
	ldr r0, _021A374C ; =0x000004D4
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A3734
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a6424
	cmp r0, #0
	bne _021A36D4
	add r0, r5, #0
	bl sub_021AAA14
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0219C880
	b _021A3734
_021A36D4:
	mov r0, #0x16
	b _021A2FB2
_021A36D8:
	bl sub_02040440
	mov r1, #0x19
	mov r2, #0x20
	mov r5, #0x20
	bl sub_02040624
	strb r5, [r4, #0x10]
	b _021A3734
_021A36EA:
	bl sub_02040440
	mov r1, #0x19
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A3734
	mov r0, #0x21
	b _021A2FB2
_021A36FE:
	add r0, r4, #0
	bl sub_021A26E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a56bc
	cmp r6, #0
	beq _021A3718
	cmp r6, #1
	beq _021A3722
	b _021A372A
_021A3718:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a5990
	b _021A372A
_021A3722:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy257_21a59b0
_021A372A:
	mov r0, #0
	strb r0, [r4, #0x10]
	add sp, #0x48
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3734:
	ldrb r0, [r4, #0x10]
	cmp r0, #0x14
	blo _021A3744
	cmp r0, #0x20
	bhi _021A3744
	add r0, r4, #0
	bl ovy257_21a69bc
_021A3744:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A374C: .word 0x000004D4
	thumb_func_end ovy257_21a2ef8

	thumb_func_start ovy257_21a3750
ovy257_21a3750: ; 0x021A3750
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldrh r4, [r5]
	bl sub_02040440
	bl sub_02042A6C
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	ldr r0, _021A39C4 ; =0x000004F8
	mov r7, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, r0]
	ldr r0, _021A39C8 ; =0x021B3D70
	ldr r1, [sp, #0x10]
	str r2, [r0]
	ldr r2, _021A39CC ; =0x6C078965
	str r7, [r0, #4]
	str r2, [r0, #8]
	ldr r3, _021A39D0 ; =0x5D588B65
	ldr r2, _021A39D4 ; =0x00269EC3
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	str r7, [r0, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	add r6, sp, #0x24
	mov r0, #0x80
	strh r0, [r6]
	mov r0, #0xa8
	strh r0, [r6, #2]
	strh r7, [r6, #4]
	mov r0, #1
	strb r0, [r6, #7]
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa8
	str r4, [sp, #8]
	lsl r0, r0, #3
	add r1, #0x30
	add r2, #0x38
	add r3, #0x40
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x10]
	add r1, #0x60
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x80
	strh r0, [r6]
	mov r0, #0x60
	strh r0, [r6, #2]
	mov r0, #2
	strh r0, [r6, #4]
	mov r0, #1
	strb r0, [r6, #7]
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	mov r0, #0xa8
	str r4, [sp, #8]
	lsl r0, r0, #3
	add r1, #0x30
	add r2, #0x38
	add r3, #0x40
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x10]
	add r1, #0x64
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #4
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A39D8 ; =0x00000AAD
	ldr r3, _021A39DC ; =0x021B2674
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	sub r0, #0x60
	str r1, [r5, r0]
	mov r0, #4
	bl sub_0203A58C
	ldr r1, [sp, #0x10]
	mov r4, #0
	sub r1, #0x64
	str r0, [r5, r1]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	sub r0, #0x5c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	sub r0, #0x5c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	sub r0, #0x64
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	sub r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	sub r0, #0x5c
	str r0, [sp, #0x10]
_021A385A:
	add r0, r4, #0
	bl sub_02042A80
	cmp r0, #1
	bne _021A3880
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ovy257_21a6a2c
	ldr r1, [sp, #0x14]
	str r0, [r6, r1]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _021A3892
_021A3880:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r4, #0
	bl ovy257_21a6bc4
	ldr r1, [sp, #0x18]
	str r0, [r6, r1]
_021A3892:
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r1, _021A39E0 ; =ovy257_21a71cc
	ldr r2, [r6, r2]
	mov r3, #1
	bl sub_0203A614
	ldr r1, [sp, #0x10]
	ldr r1, [r6, r1]
	str r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A385A
	ldr r6, _021A39E4 ; =0x000004AC
	mov r4, #0
	str r4, [r5, r6]
	mov r0, #3
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #7
	mov r2, #0x14
	mov r3, #0x17
	mov r7, #6
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x30
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #8
	mov r2, #0
	mov r3, #0x10
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x2c
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	str r7, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #1
	mov r2, #0x12
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x24
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	str r7, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #1
	mov r2, #8
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	add r1, #0x20
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r1, r4, #0
	add r6, #0x64
_021A395A:
	lsl r0, r4, #2
	add r0, r5, r0
	str r1, [r0, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A395A
	mov r0, #0x45
	mov r2, #5
	lsl r0, r0, #4
	strb r2, [r5, r0]
	mov r3, #4
	add r2, r0, #1
	strb r3, [r5, r2]
	add r2, r0, #2
	strb r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xbc
	strb r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xba
	strh r1, [r5, r2]
	add r2, r0, #3
	strb r1, [r5, r2]
	add r2, r0, #4
	strb r1, [r5, r2]
	add r2, r0, #0
	mov r3, #0x3c
	add r2, #0x26
	strh r3, [r5, r2]
	add r2, r0, #0
	add r2, #0x28
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xa8
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xac
	strh r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xb8
	strh r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xb4
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0xb0
	str r1, [r5, r2]
	add r0, #0x40
	strh r1, [r5, r0]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A39C4: .word 0x000004F8
_021A39C8: .word 0x021B3D70
_021A39CC: .word 0x6C078965
_021A39D0: .word 0x5D588B65
_021A39D4: .word 0x00269EC3
_021A39D8: .word 0x00000AAD
_021A39DC: .word 0x021B2674
_021A39E0: .word ovy257_21a71cc
_021A39E4: .word 0x000004AC
	thumb_func_end ovy257_21a3750

	thumb_func_start ovy257_21a39e8
ovy257_21a39e8: ; 0x021A39E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r1, #0
	ldrh r7, [r5]
	str r0, [sp, #0xc]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	mov r4, #0
_021A3A04:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	bl ovy257_21a27e0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A3A04
	mov r0, #0x60
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0xe9
	mov r1, #3
	mov r4, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0xe9
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xe9
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #0xe9
	mov r1, #0x13
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF18
	mov r0, #0xa0
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0xe9
	mov r1, #7
	mov r2, #4
	mov r3, #0
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xe9
	mov r1, #0x10
	mov r2, #4
	mov r3, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xe9
	mov r1, #0x17
	mov r2, #4
	mov r3, #0
	bl sub_0204AF18
	str r4, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0xe9
	mov r1, #0x11
	mov r2, #7
	mov r3, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #0xe9
	mov r1, #0x18
	mov r2, #7
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF18
	mov r0, #0x18
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #7
	add r1, r4, #0
	add r2, r4, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #7
	bl GFL_BGSysLoadScr
	mov r0, #0x20
	str r0, [sp]
	add r0, r6, #0
	add r6, #0xb7
	mov r1, #2
	mov r2, #4
	add r3, r6, #0
	str r7, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	mov r1, #0x80
	add r0, sp, #0x48
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	strb r4, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x40]
	sub r0, #0x18
	str r0, [sp, #0x40]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x3c]
	sub r0, #0x10
	str r0, [sp, #0x3c]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x38]
	sub r0, #8
	str r0, [sp, #0x38]
	mov r0, #0x15
	lsl r0, r0, #6
	add r0, r0, #4
	str r0, [sp, #0x34]
	mov r0, #0x15
	lsl r0, r0, #6
	add r0, r0, #4
	str r0, [sp, #0x30]
	mov r0, #0x15
	lsl r0, r0, #6
	add r0, r0, #4
	str r0, [sp, #0x2c]
_021A3B20:
	add r1, r4, #4
	add r0, sp, #0x48
	strh r1, [r0, #4]
	strb r4, [r0, #6]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x48
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x15
	ldr r1, [sp, #0x40]
	str r7, [sp, #8]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x38]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x34]
	str r0, [r6, r1]
	ldr r0, [sp, #0x30]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A3B20
	add r0, sp, #0x50
	mov r1, #0
	mov r2, #0x18
	mov r4, #0
	blx MI_CpuFill8
	mov r1, #0x3c
	add r0, sp, #0x48
	strh r1, [r0, #8]
	mov r1, #0x32
	strh r1, [r0, #0xa]
	mov r1, #0xd
	strh r1, [r0, #0xc]
	mov r6, #0x15
	lsl r6, r6, #6
	add r2, r6, #0
	strb r4, [r0, #0xe]
	mov r1, #3
	strb r1, [r0, #0xf]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	add r0, sp, #0x48
	strh r4, [r0, #0x1c]
	mov r1, #2
	strh r1, [r0, #0x1e]
	add r0, sp, #0x50
	str r0, [sp]
	str r4, [sp, #4]
	add r1, r6, #0
	str r7, [sp, #8]
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r6, #4
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	add r1, r6, #0
	add r1, #0x10
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	add r2, r6, #0
	mov r1, #0xc8
	add r0, sp, #0x48
	strh r1, [r0, #8]
	mov r1, #0x5a
	strh r1, [r0, #0xa]
	mov r1, #0xe
	strh r1, [r0, #0xc]
	mov r1, #3
	strb r1, [r0, #0xf]
	add r0, sp, #0x50
	str r0, [sp]
	str r4, [sp, #4]
	add r1, r6, #0
	str r7, [sp, #8]
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r6, #4
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	add r6, #0x14
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C520
	mov r0, #8
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A3DA0 ; =0x00000B81
	ldr r3, _021A3DA4 ; =0x021B2674
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	mov r0, #8
	str r1, [r5, #0x6c]
	bl sub_0203A58C
	add r6, r5, #0
	str r0, [r5, #0x68]
	add r6, #0x70
	mov r7, #0x7c
_021A3C4A:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy257_21a7620
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A3C4A
	ldr r0, [sp, #0xc]
	bl sub_021AAA7C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAA84
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r1, #0x40
	bl sub_0204898C
	add r1, r6, #0
	mov r2, #0
	add r7, r0, #0
	bl GFL_FontGetBlockWidth
	mov r4, #0x12
	lsl r0, r0, #0x18
	lsl r4, r4, #6
	str r0, [sp, #0x44]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x44]
	add r1, r0, #0
	str r7, [sp]
	add r0, r4, #0
	lsr r3, r2, #0x19
	mov r2, #0x40
	sub r2, r2, r3
	str r0, [sp, #0x1c]
	sub r0, #0x40
	str r6, [sp, #4]
	lsl r2, r2, #0x10
	str r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	asr r2, r2, #0x10
	mov r3, #0xc
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5, r4]
	bl sub_0204826C
	add r1, r4, #4
	mov r0, #1
	str r0, [r5, r1]
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x20]
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r7, r0, #0
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x14]
	mov r1, #0x3b
	bl sub_0204898C
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x24]
	add r1, #0x43
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x10]
	bl sub_0204898C
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x28]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r7, [sp]
	ldr r0, [sp, #0x1c]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	add r4, #0xc
	mov r0, #1
	str r0, [r5, r4]
	bl sub_02005CE4
	add r4, r0, #0
	bl sub_0206D120
	mov r0, #1
	add r1, r4, #0
	bl sub_0206D260
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3DA0: .word 0x00000B81
_021A3DA4: .word 0x021B2674
	thumb_func_end ovy257_21a39e8

	thumb_func_start ovy257_21a3da8
ovy257_21a3da8: ; 0x021A3DA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_021AAAB8
	mov r6, #0
	add r4, r6, #0
_021A3DC8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy257_21a27e0
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021A3DC8
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #4
	str r0, [sp, #4]
	mov r0, #0xe9
	add r2, r4, #0
	add r3, r4, #0
	mov r6, #4
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #1
	add r3, r4, #0
	mov r7, #0xd
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #1
	add r3, r4, #0
	bl sub_0204AF18
	mov r0, #0xa0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #7
	str r0, [sp, #4]
	mov r0, #0xe9
	mov r2, #4
	add r3, r4, #0
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #4
	add r3, r4, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #4
	add r3, r4, #0
	bl sub_0204AF18
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x11
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #7
	add r3, r4, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x18
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r2, #7
	add r3, r4, #0
	bl sub_0204AF18
	mov r0, #0x18
	str r0, [sp]
	mov r0, #7
	add r1, r4, #0
	add r2, r4, #0
	mov r3, #0x20
	str r6, [sp, #4]
	bl sub_0204566C
	mov r0, #7
	bl GFL_BGSysLoadScr
	ldr r0, _021A421C ; =0x000004C8
	mov r1, #7
	str r0, [sp, #0x24]
	strb r4, [r5, r0]
	ldr r2, [sp, #0x24]
	ldrh r3, [r5]
	sub r2, r2, #4
	mov r0, #0xe9
	add r2, r5, r2
	bl sub_0204B354
	ldr r1, [sp, #0x24]
	mov r2, #0x20
	sub r1, #8
	str r0, [r5, r1]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r3, r4, #0
	ldr r1, [r1, #0xc]
	add r1, #0x20
	bl sub_02045320
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r0, [sp, #4]
	mov r0, #0xe9
	add r2, r6, #0
	lsl r3, r7, #5
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x80
	add r7, sp, #0x74
	strh r0, [r7]
	mov r0, #0x60
	strh r0, [r7, #2]
	strb r6, [r7, #6]
	mov r0, #1
	strb r0, [r7, #7]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	add r0, #0x78
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x38]
	add r0, #0x60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x34]
	add r0, #0x68
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x30]
	add r0, #0x70
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x2c]
	add r0, #0x7c
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, #0x7c
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, #0x7c
	str r0, [sp, #0x24]
_021A3F22:
	add r0, r4, #7
	strh r0, [r7, #4]
	lsl r0, r4, #2
	add r6, r5, r0
	strb r4, [r7, #6]
	add r0, sp, #0x74
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x38]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x30]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x2c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x28]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A3F22
	mov r6, #0x80
	add r4, sp, #0x74
	strh r6, [r4]
	mov r0, #0x60
	strh r0, [r4, #2]
	mov r0, #4
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0x29
	strh r0, [r4, #4]
	add r0, sp, #0x74
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	str r0, [sp]
	mov r7, #0
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r1, #0x14
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x20
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	strh r6, [r4]
	mov r0, #0x60
	strh r0, [r4, #2]
	mov r0, #5
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0x26
	strh r0, [r4, #4]
	add r0, sp, #0x74
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r1, #0x14
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x24
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	strh r6, [r4]
	mov r0, #0x60
	strh r0, [r4, #2]
	mov r0, #6
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0x27
	strh r0, [r4, #4]
	add r0, sp, #0x74
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r1, #0x14
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x28
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x15
	lsl r0, r0, #6
	add r0, #0x28
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x41
	strh r0, [r4]
	mov r0, #0x7a
	strh r0, [r4, #2]
	mov r0, #3
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0x2f
	strh r0, [r4, #4]
	add r0, sp, #0x74
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x2c
	str r0, [r5, r1]
	add r1, r7, #0
	bl sub_0204C124
	mov r0, #0xea
	strh r0, [r4]
	mov r0, #0xaa
	strh r0, [r4, #2]
	strb r7, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0x32
	strh r0, [r4, #4]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x54]
	sub r0, #0x14
	str r0, [sp, #0x54]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x50]
	sub r0, #0xc
	str r0, [sp, #0x50]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #0x4c]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x48]
	add r0, #0x30
	str r0, [sp, #0x48]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x44]
	add r0, #0x30
	str r0, [sp, #0x44]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x40]
	add r0, #0x30
	add r4, r7, #0
	str r0, [sp, #0x40]
_021A4102:
	lsl r0, r7, #2
	add r6, r5, r0
	add r0, sp, #0x74
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x54]
	str r0, [sp, #8]
	mov r0, #0x15
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x48]
	str r0, [r6, r1]
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x40]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	blo _021A4102
	mov r1, #0x14
	add r0, sp, #0x74
	strh r1, [r0]
	mov r1, #0xaa
	strh r1, [r0, #2]
	mov r1, #0x31
	strh r1, [r0, #4]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x6c]
	sub r0, #0x14
	str r0, [sp, #0x6c]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x68]
	sub r0, #0xc
	str r0, [sp, #0x68]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #0x64]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x60]
	add r0, #0x3c
	str r0, [sp, #0x60]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x5c]
	add r0, #0x3c
	str r0, [sp, #0x5c]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x58]
	add r0, #0x3c
	mov r7, #0
	str r0, [sp, #0x58]
_021A4192:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x74
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x6c]
	str r0, [sp, #8]
	mov r0, #0x15
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x64]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x60]
	str r0, [r6, r1]
	ldr r0, [sp, #0x5c]
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x58]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A4192
	mov r0, #8
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A4220 ; =0x00000C8E
	ldr r3, _021A4224 ; =0x021B2674
	str r0, [sp]
	ldrh r0, [r5]
	add r2, r7, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	mov r0, #8
	str r1, [r5, #0x6c]
	bl sub_0203A58C
	str r0, [r5, #0x68]
	add r4, r7, #0
_021A41FC:
	ldr r0, [sp, #0x14]
	cmp r0, r4
	bne _021A422C
	lsl r0, r4, #2
	add r6, r5, r0
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	mov r3, #1
_021A4212:
	bl ovy257_21a78d0
	ldr r1, _021A4228 ; =0x00000458
	str r0, [r6, r1]
	b _021A4266
	.align 2, 0
_021A421C: .word 0x000004C8
_021A4220: .word 0x00000C8E
_021A4224: .word 0x021B2674
_021A4228: .word 0x00000458
_021A422C:
	add r0, r4, #0
	bl sub_02042A80
	cmp r0, #0
	bne _021A4248
	lsl r0, r4, #2
	add r6, r5, r0
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	b _021A4212
_021A4248:
	lsl r0, r4, #2
	add r6, r5, r0
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	mov r3, #1
	bl ovy257_21a78d0
	ldr r1, _021A43B0 ; =0x00000458
	str r0, [r6, r1]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021A4266:
	ldr r2, _021A43B0 ; =0x00000458
	ldr r0, [r5, #0x68]
	ldr r1, _021A43B4 ; =ovy257_21a6740
	ldr r2, [r6, r2]
	mov r3, #1
	bl sub_0203A614
	ldr r1, _021A43B0 ; =0x00000458
	ldr r1, [r6, r1]
	str r0, [r1, #4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A41FC
	ldr r0, [sp, #0xc]
	bl sub_021AAA7C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAA84
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	mov r1, #0x40
	bl sub_0204898C
	add r1, r6, #0
	mov r2, #0
	add r7, r0, #0
	bl GFL_FontGetBlockWidth
	mov r4, #0x12
	lsl r0, r0, #0x18
	lsl r4, r4, #6
	str r0, [sp, #0x70]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x70]
	add r1, r0, #0
	str r7, [sp]
	add r0, r4, #0
	lsr r3, r2, #0x19
	mov r2, #0x40
	sub r2, r2, r3
	str r0, [sp, #0x20]
	sub r0, #0x40
	str r6, [sp, #4]
	lsl r2, r2, #0x10
	str r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	asr r2, r2, #0x10
	mov r3, #0xc
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5, r4]
	bl sub_0204826C
	add r1, r4, #4
	mov r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x18]
	mov r1, #0x3c
	bl sub_0204898C
	add r7, r0, #0
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r7, [sp]
	ldr r0, [sp, #0x20]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	add r1, r4, #0
	add r1, #0xc
	mov r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x18
	add r0, r5, r0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	add r0, r4, #0
	sub r0, #0x14
	add r0, r5, r0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	add r1, r4, #0
	sub r1, #0x10
	mov r0, #0
	strb r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0xe
	strb r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0xf
	strb r0, [r5, r1]
	mov r0, #0x29
	sub r4, #0xc
	strh r0, [r5, r4]
	bl sub_02005CE4
	add r4, r0, #0
	bl sub_0206D120
	mov r0, #2
	add r1, r4, #0
	bl sub_0206D260
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_021A43B0: .word 0x00000458
_021A43B4: .word ovy257_21a6740
	thumb_func_end ovy257_21a3da8

	thumb_func_start ovy257_21a43b8
ovy257_21a43b8: ; 0x021A43B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x49
	add r5, r1, #0
	lsl r4, r4, #4
	ldrh r0, [r5, r4]
	add r0, r0, #1
	strh r0, [r5, r4]
	mov r0, #0x5a
	ldrh r1, [r5, r4]
	lsl r0, r0, #2
	cmp r1, r0
	bls _021A43D4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A43D4:
	add r0, r5, #0
	bl sub_021A26E0
	cmp r0, #0
	beq _021A43E4
	cmp r0, #1
	beq _021A4414
	b _021A446A
_021A43E4:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r5, r0]
	mov r1, #5
	blx sub_0208D65C
	cmp r1, #0
	bne _021A446A
	mov r0, #0
	add r4, #0x38
	strb r0, [r5, r4]
	mov r0, #4
	mov r1, #4
	mov r2, #1
	bl sub_02044CFC
	b _021A446A
_021A4414:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r5, r0]
	mov r1, #0x14
	blx sub_0208D65C
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r6, [r5, r0]
	mov r1, #0xa
	mov r7, #0xa
	add r0, r6, #0
	blx sub_0208D65C
	cmp r1, #0
	bne _021A446A
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0208D65C
	add r4, #0x34
	ldr r1, [r5, r4]
	add r3, r0, #0
	ldr r2, [r1, #0xc]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x13
	add r1, r2, r1
	mov r0, #4
	mov r2, #0x20
	mov r3, #0
	bl sub_02045320
_021A446A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a43b8

	thumb_func_start ovy257_21a4470
ovy257_21a4470: ; 0x021A4470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	ldr r7, _021A44F4 ; =0x00000544
	add r6, r1, #0
	add r5, r4, #0
_021A447C:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, r7]
	add r1, r5, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A447C
	mov r7, #0x55
	lsl r7, r7, #4
_021A4496:
	lsl r0, r5, #2
	add r4, r6, r0
	ldr r0, [r4, r7]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r7]
	bl sub_0204C56C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021A4496
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r6]
	mov r1, #5
	mov r4, #0
	str r0, [sp, #4]
	mov r0, #0xe9
	mov r2, #0
	mov r3, #0
	bl GFL_BGSysLoadNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r6]
	mov r1, #0xe
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r3, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r6]
	mov r1, #0x15
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r3, #0
	bl sub_0204AF18
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A44F4: .word 0x00000544
	thumb_func_end ovy257_21a4470

	thumb_func_start ovy257_21a44f8
ovy257_21a44f8: ; 0x021A44F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	ldr r6, _021A4584 ; =0x00000544
	add r5, r1, #0
	add r7, r4, #0
_021A4504:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A4504
	mov r4, #0x56
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #8
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xe0
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #6
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0xe9
	add r3, r7, #0
	bl GFL_BGSysLoadNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	add r3, r7, #0
	bl sub_0204AD88
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x16
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	add r3, r7, #0
	bl sub_0204AF18
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A4584: .word 0x00000544
	thumb_func_end ovy257_21a44f8

	thumb_func_start ovy257_21a4588
ovy257_21a4588: ; 0x021A4588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	bl sub_021AAA14
	add r7, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	add r4, r0, #0
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	cmp r0, #1
	bne _021A45D0
	add r6, sp, #0x1c
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r0, [sp, #0xc]
	add r1, sp, #4
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #8]
	strb r0, [r1, #0x1e]
	ldr r0, _021A4708 ; =0x000004FC
	ldrh r0, [r5, r0]
	strh r0, [r1, #0x22]
	mov r0, #3
	str r0, [sp]
	add r0, r7, #0
	ldmia r6!, {r1, r2, r3}
	bl ovy257_219c954
_021A45D0:
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021A45E0
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A45E0:
	mov r0, #0
	str r0, [r5, r1]
	cmp r4, #0
	bne _021A4646
	add r0, r1, #0
	add r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021A45F8
	mov r0, #1
	add r1, #0xc
	strb r0, [r5, r1]
_021A45F8:
	ldr r1, _021A470C ; =0x0000050C
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _021A463C
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	add r0, r5, #0
	add r1, sp, #4
	bl ovy257_21a66fc
	cmp r0, #1
	bne _021A462E
	add r6, sp, #0x10
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	add r0, sp, #4
	ldrb r1, [r0]
	strb r1, [r0, #0x13]
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	ldmia r6!, {r1, r2, r3}
	bl ovy257_219c954
_021A462E:
	ldr r0, _021A470C ; =0x0000050C
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #0xf
	sub r0, r0, #2
	strh r1, [r5, r0]
	b _021A4646
_021A463C:
	sub r0, r1, #2
	ldrsh r0, [r5, r0]
	sub r2, r0, #1
	sub r0, r1, #2
	strh r2, [r5, r0]
_021A4646:
	cmp r4, #0
	bne _021A4652
	ldr r0, _021A4710 ; =0x00000508
	ldrh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
_021A4652:
	ldr r1, _021A4714 ; =0x00000476
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _021A468E
	add r0, r1, #0
	add r0, #0x86
	ldrh r2, [r5, r0]
	add r0, r1, #2
	ldr r0, [r5, r0]
	sub r0, r2, r0
	cmp r0, #0x3c
	bls _021A467A
	add r0, r1, #2
	str r2, [r5, r0]
	ldrh r0, [r5, r1]
	sub r0, r0, #1
	strh r0, [r5, r1]
	add r0, r5, #0
	bl ovy257_21a63b0
_021A467A:
	ldr r0, _021A4714 ; =0x00000476
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021A468E
	ldr r0, _021A4718 ; =0x00000823
	bl GFL_SndSEPlay
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A468E:
	cmp r0, #0x28
	bne _021A46A6
	ldr r0, _021A471C ; =0x000004AC
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A46A6
	mov r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	bl ovy257_21a6e8c
_021A46A6:
	ldr r2, _021A4714 ; =0x00000476
	ldrh r0, [r5, r2]
	cmp r0, #0x14
	bne _021A46C4
	add r0, r2, #0
	add r0, #0x36
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A46C4
	mov r1, #1
	add r2, #0x36
	add r0, r5, #0
	str r1, [r5, r2]
	bl ovy257_21a6e8c
_021A46C4:
	ldr r1, _021A4714 ; =0x00000476
	ldrh r0, [r5, r1]
	cmp r0, #0x14
	bhs _021A46E0
	add r0, r1, #0
	add r0, #0x36
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A46E0
	add r1, #0xe6
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0204C124
_021A46E0:
	ldr r1, _021A4714 ; =0x00000476
	ldrh r0, [r5, r1]
	cmp r0, #0x14
	bne _021A46F6
	mov r3, #0x55
	ldr r0, _021A4720 ; =0x0000FFFF
	lsr r1, r1, #2
	mov r2, #0x55
	sub r3, #0x56
	bl sub_02005F50
_021A46F6:
	add r0, r5, #0
	bl ovy257_21a6c54
	add r0, r5, #0
	bl ovy257_21a5b48
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4708: .word 0x000004FC
_021A470C: .word 0x0000050C
_021A4710: .word 0x00000508
_021A4714: .word 0x00000476
_021A4718: .word 0x00000823
_021A471C: .word 0x000004AC
_021A4720: .word 0x0000FFFF
	thumb_func_end ovy257_21a4588

	thumb_func_start ovy257_21a4724
ovy257_21a4724: ; 0x021A4724
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _021A47B0 ; =0x0000056C
	add r5, r1, #0
	ldr r0, [r5, r4]
	bl sub_0204C4A0
	cmp r0, #0x2f
	ldr r0, [r5, r4]
	bne _021A4782
	bl sub_0204C560
	cmp r0, #0
	bne _021A47A2
	add r6, sp, #0
	ldr r0, [r5, r4]
	add r1, r6, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r0, #0x80
	strh r0, [r1]
	ldr r0, [r5, r4]
	mov r1, #0x30
	bl sub_0204C488
	ldr r0, [r5, r4]
	add r1, r6, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, r4]
	bl sub_0204C56C
	sub r4, #0xc
	ldr r0, [r5, r4]
	mov r1, #0x28
	bl sub_0204C488
	b _021A47A2
_021A4782:
	bl sub_0204C4A0
	cmp r0, #0x30
	bne _021A47A2
	ldr r0, [r5, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _021A47A2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021A47A2:
	add r0, r5, #0
	bl ovy257_21a6c54
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A47B0: .word 0x0000056C
	thumb_func_end ovy257_21a4724

	thumb_func_start ovy257_21a47b4
ovy257_21a47b4: ; 0x021A47B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r1, #0
	bl sub_021AAA14
	str r0, [sp, #0xc]
	bl sub_02040440
	bl sub_02042A6C
	mov r1, #5
	lsl r1, r1, #8
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021A47DA
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A47DA:
	mov r0, #0
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x8a
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021A4810
	sub r0, r1, #4
	ldrh r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	sub r0, r2, r0
	cmp r0, #0x3c
	bls _021A4810
	add r0, r1, #0
	sub r0, #0x88
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x8a
	ldrh r0, [r5, r0]
	sub r1, #0x8a
	sub r0, r0, #1
	strh r0, [r5, r1]
	add r0, r5, #0
	bl ovy257_21a63b0
_021A4810:
	ldr r4, _021A4AF8 ; =0x00000476
	ldrh r0, [r5, r4]
	cmp r0, #0x14
	bhs _021A4846
	mov r0, #0x2c
	mov r7, #0x2b
	str r0, [sp, #4]
	lsl r0, r7, #5
	ldr r0, [r5, r0]
	mov r6, #0x2d
	bl sub_0204C4A0
	cmp r0, #0x28
	bne _021A4830
	sub r0, r4, #2
	strh r7, [r5, r0]
_021A4830:
	mov r4, #0x56
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C4A0
	cmp r0, #0x29
	bne _021A484E
	mov r0, #0x2c
	sub r4, #0xec
	strh r0, [r5, r4]
	b _021A484E
_021A4846:
	mov r0, #0x29
	mov r7, #0x28
	str r0, [sp, #4]
	mov r6, #0x2a
_021A484E:
	ldr r4, _021A4AFC ; =0x00000458
	add r0, r5, r4
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r1, r0]
	bl sub_021A7DD8
	cmp r0, #1
	bne _021A486E
	add r4, #0x1e
	ldrh r0, [r5, r4]
	cmp r0, #0
	bne _021A4870
_021A486E:
	b _021A4AB6
_021A4870:
	ldr r0, _021A4B00 ; =0x021B1C58
	mov r4, #0
	bl sub_0203DA0C
	add r6, r0, #0
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0204C4A0
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021A4894
	cmp r6, #0
	blt _021A4894
	cmp r6, #3
	bgt _021A4894
	mov r4, #1
_021A4894:
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0204C4A0
	cmp r7, r0
	bne _021A48AC
	cmp r6, #4
	blt _021A48AC
	cmp r6, #7
	bgt _021A48AC
	mov r4, #1
_021A48AC:
	cmp r4, #1
	beq _021A48B2
	b _021A4A94
_021A48B2:
	mov r0, #0
	add r4, sp, #0x28
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	cmp r6, #0
	beq _021A48C4
	cmp r6, #4
	bne _021A48D6
_021A48C4:
	mov r0, #6
	str r0, [sp]
	add r4, sp, #0x28
	ldr r0, [sp, #0xc]
	ldmia r4!, {r1, r2, r3}
	bl ovy257_219c954
	ldr r0, _021A4B04 ; =0x00000829
	b _021A48E4
_021A48D6:
	mov r0, #5
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldmia r4!, {r1, r2, r3}
	bl ovy257_219c954
	ldr r0, _021A4B08 ; =0x0000082A
_021A48E4:
	bl GFL_SndSEPlay
	mov r0, #0x47
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _021A4900
	mov r1, #0x50
	strb r1, [r5, r0]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	bl sub_021A7DF8
_021A4900:
	ldr r4, _021A4B0C ; =0x00000568
	ldr r0, [r5, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _021A4928
	ldr r0, [r5, r4]
	bl sub_0204C56C
	ldr r4, _021A4B10 ; =0x00000825
	add r0, r4, #0
	bl sub_020061B8
	bl sub_02006294
	cmp r0, #0
	bne _021A4928
	add r0, r4, #0
	bl GFL_SndSEPlay
_021A4928:
	mov r4, #0x56
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C4A0
	cmp r7, r0
	bne _021A49DE
	add r1, r4, #0
	sub r1, #0xec
	ldr r0, [sp, #4]
	cmp r6, #4
	strh r0, [r5, r1]
	beq _021A4944
	b _021A4A82
_021A4944:
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r1, r0]
	bl sub_0204C56C
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	mov r6, #0
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #1
	blx sub_0208D65C
	lsl r0, r1, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #2
	blx sub_0208D65C
	lsl r0, r1, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xef
	strb r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xef
	ldrb r0, [r5, r0]
	cmp r0, #3
	blo _021A4A82
	sub r4, #0xef
	b _021A4A80
_021A49DE:
	add r0, r4, #0
	sub r0, #0xec
	strh r7, [r5, r0]
	cmp r6, #0
	bne _021A4A82
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r1, r0]
	bl sub_0204C56C
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	mov r6, #0
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #1
	blx sub_0208D65C
	lsl r0, r1, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #2
	blx sub_0208D65C
	lsl r0, r1, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_0204C438
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xee
	strb r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xee
	ldrb r0, [r5, r0]
	cmp r0, #3
	blo _021A4A82
	sub r4, #0xee
_021A4A80:
	strb r6, [r5, r4]
_021A4A82:
	mov r4, #0x56
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, r4]
	bl sub_0204C56C
_021A4A94:
	mov r4, #0x56
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _021A4AC2
	add r1, r4, #0
	sub r1, #0xec
	ldrh r1, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0204C488
	ldr r0, [r5, r4]
	bl sub_0204C550
	b _021A4AC2
_021A4AB6:
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C488
_021A4AC2:
	mov r0, #0x47
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021A4AD0
	sub r1, r1, #1
	strb r1, [r5, r0]
_021A4AD0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A4ADE
	ldr r0, _021A4B14 ; =0x00000508
	ldrh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
_021A4ADE:
	ldr r6, _021A4AF8 ; =0x00000476
	ldrh r0, [r5, r6]
	cmp r0, #0
	bne _021A4B78
	add r0, r6, #0
	add r0, #0x86
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0x86
	strh r1, [r5, r0]
	ldr r0, _021A4B18 ; =0x00000823
	b _021A4B1C
	.align 2, 0
_021A4AF8: .word 0x00000476
_021A4AFC: .word 0x00000458
_021A4B00: .word 0x021B1C58
_021A4B04: .word 0x00000829
_021A4B08: .word 0x0000082A
_021A4B0C: .word 0x00000568
_021A4B10: .word 0x00000825
_021A4B14: .word 0x00000508
_021A4B18: .word 0x00000823
_021A4B1C:
	bl GFL_SndSEPlay
	mov r1, #0
	add r4, r1, #0
	sub r6, #0x1e
_021A4B26:
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	str r4, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _021A4B26
	add r0, r5, #0
	bl ovy257_21a5c30
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A4B72
	mov r0, #0x51
	add r2, sp, #0x18
	lsl r0, r0, #4
_021A4B4A:
	lsl r3, r4, #2
	add r1, r5, r3
	ldr r1, [r1, r0]
	str r1, [r2, r3]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _021A4B4A
	mov r4, sp
	sub r4, #0xc
	add r3, r4, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0xc]
	ldmia r4!, {r1, r2, r3}
	bl ovy257_219cb14
_021A4B72:
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A4B78:
	cmp r0, #0x28
	bne _021A4B94
	add r0, r6, #0
	add r0, #0x36
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4B94
	mov r0, #1
	add r6, #0x36
	str r0, [r5, r6]
	add r0, r5, #0
	mov r1, #0
	bl ovy257_21a6e8c
_021A4B94:
	ldr r2, _021A4BF8 ; =0x00000476
	ldrh r0, [r5, r2]
	cmp r0, #0x14
	bne _021A4BB2
	add r0, r2, #0
	add r0, #0x36
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4BB2
	mov r1, #1
	add r2, #0x36
	add r0, r5, #0
	str r1, [r5, r2]
	bl ovy257_21a6e8c
_021A4BB2:
	ldr r1, _021A4BF8 ; =0x00000476
	ldrh r0, [r5, r1]
	cmp r0, #0x14
	bhs _021A4BCE
	add r0, r1, #0
	add r0, #0x36
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4BCE
	add r1, #0xe6
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0204C124
_021A4BCE:
	ldr r1, _021A4BF8 ; =0x00000476
	ldrh r0, [r5, r1]
	cmp r0, #0x14
	bne _021A4BE4
	mov r3, #0x55
	ldr r0, _021A4BFC ; =0x0000FFFF
	lsr r1, r1, #2
	mov r2, #0x55
	sub r3, #0x56
	bl sub_02005F50
_021A4BE4:
	add r0, r5, #0
	bl ovy257_21a6c54
	add r0, r5, #0
	bl ovy257_21a5c30
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021A4BF8: .word 0x00000476
_021A4BFC: .word 0x0000FFFF
	thumb_func_end ovy257_21a47b4

	thumb_func_start ovy257_21a4c00
ovy257_21a4c00: ; 0x021A4C00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl sub_021A26E0
	add r7, r0, #0
	bl sub_02005CE4
	add r4, r0, #0
	bl sub_0206D1E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206D154
	ldr r6, _021A4DF4 ; =0x00000558
	mov r1, #0
	ldr r0, [r5, r6]
	mov r4, #0
	bl sub_0204C124
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #0xdc
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	bl sub_020484B4
	ldr r0, [sp, #0x20]
	bl sub_020484D4
	bl sub_02045B7C
	cmp r7, #0
	bne _021A4C70
	sub r6, #8
_021A4C58:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A4C58
	b _021A4CC6
_021A4C70:
	cmp r7, #1
	bne _021A4CC6
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r6, #0
	str r0, [sp, #0x2c]
	add r0, #0x18
	str r0, [sp, #0x2c]
	add r6, #0x24
_021A4CA2:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x14]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	mov r1, #0
	ldr r0, [r0, r6]
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A4CA2
_021A4CC6:
	mov r1, #0x51
	lsl r1, r1, #4
	add r2, r1, #0
	mov r0, #0
	sub r2, #0x74
_021A4CD0:
	lsl r3, r0, #2
	add r3, r5, r3
	add r0, r0, #1
	ldr r4, [r3, r1]
	ldr r3, [r3, r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r4, [r3, #0xa]
	cmp r0, #4
	blo _021A4CD0
	mov r4, #0
_021A4CE6:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, _021A4DF8 ; =0x0000049C
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	bl ovy257_21a7334
	ldr r0, _021A4DF8 ; =0x0000049C
	ldr r1, _021A4DFC ; =ovy257_21a7558
	ldr r0, [r6, r0]
	ldr r0, [r0]
	bl sub_0203A6CC
	ldr r0, _021A4DF8 ; =0x0000049C
	ldr r1, [r6, r0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _021A4D0E
	mov r0, #0
	strb r0, [r1, #6]
_021A4D0E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A4CE6
	add r0, r5, #0
	bl sub_021A26E0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x80
	str r0, [sp]
	ldrh r0, [r5]
	add r1, #8
	mov r6, #0
	str r0, [sp, #4]
	mov r0, #0xe9
	mov r2, #0
	mov r3, #0
	bl GFL_BGSysLoadNCLRDefault
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x12
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r3, #0
	mov r4, #1
	bl sub_0204AD88
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x19
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0xe9
	mov r3, #0
	bl sub_0204AF18
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x80
	add r0, sp, #0x60
	strh r1, [r0, #4]
	mov r1, #0x60
	strh r1, [r0, #6]
	strb r6, [r0, #0xa]
	strb r4, [r0, #0xb]
	mov r1, #3
	strh r1, [r0, #8]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x18
	sub r2, #0x10
	sub r3, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x48
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C124
	add r0, sp, #0x60
	strb r4, [r0, #0xa]
	mov r1, #3
	strb r1, [r0, #0xb]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x40]
	sub r0, #0x14
	str r0, [sp, #0x40]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x3c]
	sub r0, #0xc
	str r0, [sp, #0x3c]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #0x38]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x34]
	add r0, #0x70
	str r0, [sp, #0x34]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x30]
	add r0, #0x70
	add r4, r6, #0
	str r0, [sp, #0x30]
_021A4DE8:
	cmp r7, #0
	bne _021A4E00
	add r1, r6, #0
	add r1, #0x18
	b _021A4E06
	nop
_021A4DF4: .word 0x00000558
_021A4DF8: .word 0x0000049C
_021A4DFC: .word ovy257_21a7558
_021A4E00:
	cmp r7, #1
	bne _021A4E0A
	mov r1, #0x20
_021A4E06:
	add r0, sp, #0x60
	strh r1, [r0, #8]
_021A4E0A:
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0x10]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0x15
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x38]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x34]
	str r0, [r2, r1]
	ldr r0, [sp, #0x30]
	add r1, r2, #0
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021A4DE8
	mov r1, #2
	add r0, sp, #0x60
	strb r1, [r0, #0xa]
	mov r1, #3
	strb r1, [r0, #0xb]
	add r1, r7, #0
	add r1, #0x1a
	strh r1, [r0, #8]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x78
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	add r0, sp, #0x60
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	strb r4, [r0, #0xa]
	mov r1, #3
	strb r1, [r0, #0xb]
	add r1, r7, #0
	add r1, #0x1c
	strh r1, [r0, #8]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x7c
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r6, #1
	add r0, sp, #0x60
	strb r6, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r1, #0x21
	strh r1, [r0, #8]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x80
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	add r0, sp, #0x60
	strb r6, [r0, #0xa]
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	strb r6, [r0, #0xb]
	mov r1, #0x25
	strh r1, [r0, #8]
	add r0, sp, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x84
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	add r0, sp, #0x6c
	add r1, r4, #0
	mov r2, #0x18
	blx MI_CpuFill8
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x80
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x60
	strh r1, [r0, #0xe]
	mov r1, #0xf
	strh r1, [r0, #0x10]
	strb r6, [r0, #0x12]
	strb r6, [r0, #0x13]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	mov r0, #0x80
	lsl r0, r0, #5
	str r0, [sp, #0x78]
	str r0, [sp, #0x7c]
	add r0, sp, #0x60
	strh r4, [r0, #0x20]
	mov r1, #2
	strh r1, [r0, #0x22]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x4c
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x3b
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x10
	strh r1, [r0, #0x10]
	mov r1, #2
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x50
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x5a
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x11
	strh r1, [r0, #0x10]
	mov r1, #3
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x54
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x78
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x12
	strh r1, [r0, #0x10]
	mov r1, #4
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x58
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0x96
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x13
	strh r1, [r0, #0x10]
	mov r1, #5
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x5c
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	mov r1, #0xb1
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x14
	strh r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x5a
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r1, #0xc8
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x50
	strh r1, [r0, #0xe]
	mov r1, #0x15
	strh r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x12]
	strb r6, [r0, #0x13]
	add r0, sp, #0x6c
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #0x15
	mov r2, #0x15
	mov r3, #0x15
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r1, r1, #6
	lsl r2, r2, #6
	lsl r3, r3, #6
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	mov r1, #0x15
	lsl r1, r1, #6
	add r1, #0x64
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	mov r1, #0x80
	add r0, sp, #0x60
	strh r1, [r0, #0xc]
	mov r1, #0x60
	strh r1, [r0, #0xe]
	mov r1, #3
	strb r1, [r0, #0x12]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x54]
	sub r0, #0x14
	str r0, [sp, #0x54]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x50]
	sub r0, #0xc
	str r0, [sp, #0x50]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #0x4c]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x48]
	add r0, #0x68
	str r0, [sp, #0x48]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x44]
	add r0, #0x68
	str r0, [sp, #0x44]
_021A51E2:
	cmp r7, #0
	bne _021A51EC
	add r1, r4, #0
	add r1, #0x16
	b _021A51F4
_021A51EC:
	cmp r7, #1
	bne _021A51F8
	add r1, r4, #0
	add r1, #0x1e
_021A51F4:
	add r0, sp, #0x60
	strh r1, [r0, #0x10]
_021A51F8:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x6c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x54]
	str r0, [sp, #8]
	mov r0, #0x15
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C0A4
	ldr r1, [sp, #0x48]
	str r0, [r6, r1]
	ldr r0, [sp, #0x44]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A51E2
	ldr r2, _021A53E0 ; =0x021B1E80
	add r1, sp, #0x60
	ldrb r3, [r2]
	add r0, sp, #0x60
	mov r4, #1
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	strb r3, [r1, #2]
	ldrb r2, [r2, #3]
	strb r2, [r1, #3]
_021A524E:
	mov r1, #0
	cmp r4, #0
	bls _021A5288
	lsl r2, r4, #2
	ldr r7, _021A53E4 ; =0x0000049C
	add r2, r5, r2
	ldr r2, [r2, r7]
	ldrh r2, [r2, #0xa]
_021A525E:
	lsl r3, r1, #2
	add r3, r5, r3
	ldr r6, [r3, r7]
	ldrh r6, [r6, #0xa]
	cmp r6, r2
	bhs _021A5270
	ldrb r6, [r0, r1]
	add r6, r6, #1
	strb r6, [r0, r1]
_021A5270:
	ldr r3, [r3, r7]
	ldrh r3, [r3, #0xa]
	cmp r3, r2
	bls _021A527E
	ldrb r3, [r0, r4]
	add r3, r3, #1
	strb r3, [r0, r4]
_021A527E:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	blo _021A525E
_021A5288:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _021A524E
	ldr r3, _021A53E4 ; =0x0000049C
	mov r2, #0
	add r1, sp, #0x60
_021A5298:
	lsl r4, r2, #2
	add r4, r5, r4
	ldrb r0, [r1, r2]
	ldr r4, [r4, r3]
	strb r0, [r4, #7]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _021A5298
	mov r7, #0x4b
	lsl r7, r7, #4
	mov r4, #0
	sub r7, #0x14
_021A52B4:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r2, [r6, r7]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021A52F6
	ldrb r3, [r2, #7]
	ldr r0, _021A53E8 ; =0x021B2664
	lsl r1, r3, #2
	add r0, r0, r1
	sub r0, r0, #4
	ldr r0, [r0]
	str r0, [sp]
	ldrh r0, [r5]
	str r0, [sp, #4]
	ldrb r1, [r2, #9]
	ldrb r2, [r2, #8]
	add r0, r5, #0
	bl ovy257_21a7e58
	add r2, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #4
	str r2, [r6, r0]
	ldr r0, [r5, #0x68]
	ldr r1, _021A53EC ; =ovy257_21a6758
	mov r3, #2
	bl sub_0203A614
	mov r1, #0x4b
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	str r0, [r1, #8]
_021A52F6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A52B4
	bl sub_02040440
	bl sub_02042A6C
	add r7, r0, #0
	ldr r0, _021A53F0 ; =0x000005C8
	mov r4, #0
	add r6, r0, #4
_021A5310:
	lsl r1, r4, #1
	ldr r0, _021A53F0 ; =0x000005C8
	add r1, r5, r1
	ldrh r1, [r1, r6]
	ldr r0, [r5, r0]
	bl sub_02049F4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A5310
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ovy257_21a6244
	mov r0, #0
	str r0, [sp, #0x24]
	mov r6, #0
_021A5336:
	lsl r0, r6, #1
	add r0, r5, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	mov r1, #0x18
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x18]
	ldr r0, _021A53F0 ; =0x000005C8
	mov r4, #0
	add r0, r0, #4
	str r0, [sp, #0x5c]
	mov r0, #2
	lsl r0, r0, #0xc
	lsr r0, r0, #5
	str r0, [sp, #0x58]
_021A5356:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x5c]
	ldr r0, _021A53F0 ; =0x000005C8
	ldrh r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_0204A5A0
	add r1, r0, #0
	add r2, r1, #0
	ldr r0, _021A53F0 ; =0x000005C8
	mul r2, r6
	add r1, r4, r2
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_0204A5B8
	bl sub_020496D8
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0xd
	cmp r4, #0
	beq _021A538C
	cmp r4, #1
	bne _021A538C
	mov r1, #2
_021A538C:
	cmp r7, r6
	bne _021A539A
	ldr r0, [r5, #0x60]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, [r0, #8]
	b _021A53A2
_021A539A:
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, [r0, #0x24]
_021A53A2:
	ldr r1, [sp, #0x58]
	mov r0, #0
	add r1, r3, r1
	mov r3, #2
	lsl r3, r3, #0xc
	bl sub_0205FA10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A5356
	cmp r7, r6
	beq _021A53C8
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
_021A53C8:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021A5336
	mov r1, #0
	ldr r0, _021A53F4 ; =0x000004CA
	strb r1, [r5, #0x11]
	strh r1, [r5, r0]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_021A53E0: .word 0x021B1E80
_021A53E4: .word 0x0000049C
_021A53E8: .word 0x021B2664
_021A53EC: .word ovy257_21a6758
_021A53F0: .word 0x000005C8
_021A53F4: .word 0x000004CA
	thumb_func_end ovy257_21a4c00

	thumb_func_start ovy257_21a53f8
ovy257_21a53f8: ; 0x021A53F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AAAB8
	ldrb r0, [r4, #0x11]
	cmp r0, #8
	bhi _021A5476
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A5422: ; jump table
	.short _021A5434 - _021A5422 - 2 ; case 0
	.short _021A547E - _021A5422 - 2 ; case 1
	.short _021A54B4 - _021A5422 - 2 ; case 2
	.short _021A5598 - _021A5422 - 2 ; case 3
	.short _021A55DC - _021A5422 - 2 ; case 4
	.short _021A55DE - _021A5422 - 2 ; case 5
	.short _021A5612 - _021A5422 - 2 ; case 6
	.short _021A567C - _021A5422 - 2 ; case 7
	.short _021A5692 - _021A5422 - 2 ; case 8
_021A5434:
	mov r7, #0x4b
	lsl r7, r7, #4
	add r0, r7, #0
	mov r6, #0
	mov r1, #1
	sub r0, #0x14
_021A5440:
	lsl r2, r6, #2
	add r5, r4, r2
	ldr r3, [r5, r0]
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _021A545C
	ldr r2, [r5, r7]
	ldr r2, [r2]
	cmp r2, #0
	bne _021A545C
	ldrb r2, [r3, #6]
	cmp r2, #0
	bne _021A545C
	strb r1, [r3, #6]
_021A545C:
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #4
	blo _021A5440
	ldr r0, _021A56A4 ; =0x000004CA
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, _021A56A8 ; =0x000001CE
	cmp r1, r0
	bhi _021A5478
_021A5476:
	b _021A5698
_021A5478:
	mov r0, #1
_021A547A:
	strb r0, [r4, #0x11]
	b _021A5698
_021A547E:
	ldr r2, _021A56AC ; =0x0000049C
	mov r1, #0
	mov r0, #1
_021A5484:
	lsl r3, r1, #2
	add r3, r4, r3
	add r1, r1, #1
	ldr r3, [r3, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	strb r0, [r3, #6]
	cmp r1, #4
	blo _021A5484
	lsl r0, r6, #2
	add r1, r4, r0
	ldr r0, _021A56AC ; =0x0000049C
	ldr r1, [r1, r0]
	ldrb r1, [r1, #7]
	cmp r1, #1
	ldr r1, _021A56B0 ; =0x0000FFFF
	bne _021A54AA
	add r0, #0x98
	b _021A54AC
_021A54AA:
	add r0, #0x9a
_021A54AC:
	bl sub_02005DF4
	mov r0, #2
	b _021A547A
_021A54B4:
	ldr r0, _021A56AC ; =0x0000049C
	lsl r7, r6, #2
	add r5, r4, r0
	ldr r0, [r5, r7]
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _021A556E
	ldr r6, _021A56B4 ; =0x000005B8
	mov r1, #1
	ldr r0, [r4, r6]
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_0204C56C
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl sub_0204C56C
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	sub r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	sub r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_0204C56C
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_0204C56C
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_0204C56C
	mov r0, #3
	b _021A5578
_021A556E:
	cmp r0, #2
	bne _021A5576
	mov r0, #4
	b _021A5578
_021A5576:
	mov r0, #5
_021A5578:
	strb r0, [r4, #0x11]
	ldr r1, [r5, r7]
	mov r6, #0x17
	ldrb r1, [r1, #7]
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	add r1, #0x20
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_0204C124
	b _021A5698
_021A5598:
	mov r5, #0x5b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _021A5698
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	sub r0, #0x24
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	sub r0, #0x24
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	sub r5, #0x24
	ldr r0, [r4, r5]
	bl sub_0204C56C
	mov r0, #6
	b _021A547A
_021A55DC:
	b _021A5658
_021A55DE:
	mov r5, #0x17
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	bl sub_0204C56C
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r5, #4
	ldr r0, [r4, r0]
	b _021A566E
_021A5612:
	ldr r6, _021A56B8 ; =0x0000058C
	ldr r0, [r4, r6]
	bl sub_0204C560
	cmp r0, #0
	bne _021A5698
	ldr r0, [r4, r6]
	mov r1, #0
	mov r5, #0
	bl sub_0204C124
	add r0, r6, #4
	str r0, [sp, #4]
	str r0, [sp]
	add r7, r0, #0
_021A5630:
	lsl r0, r5, #2
	add r6, r4, r0
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [r6, r7]
	bl sub_0204C56C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A5630
_021A5658:
	mov r5, #0x17
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
_021A566E:
	bl sub_0204C56C
	mov r0, #0
	sub r5, #0xf6
	strh r0, [r4, r5]
	mov r0, #7
	b _021A547A
_021A567C:
	ldr r0, _021A56A4 ; =0x000004CA
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	bls _021A5698
	mov r0, #8
	b _021A547A
_021A5692:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A5698:
	add r0, r4, #0
	bl ovy257_21a6c54
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A56A4: .word 0x000004CA
_021A56A8: .word 0x000001CE
_021A56AC: .word 0x0000049C
_021A56B0: .word 0x0000FFFF
_021A56B4: .word 0x000005B8
_021A56B8: .word 0x0000058C
	thumb_func_end ovy257_21a53f8

	thumb_func_start ovy257_21a56bc
ovy257_21a56bc: ; 0x021A56BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	bl sub_02005CE4
	add r4, r0, #0
	bl sub_0206D1E8
	add r1, r0, #0
	cmp r1, #1
	bne _021A56E0
	add r0, r4, #0
	bl sub_0206D154
_021A56E0:
	mov r6, #0
	add r4, r6, #0
_021A56E4:
	lsl r0, r6, #2
	add r7, r5, r0
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021A56F6
	bl ovy257_21a7f18
_021A56F6:
	mov r0, #0x4b
	lsl r0, r0, #4
	str r4, [r7, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021A56E4
	ldr r7, _021A5960 ; =0x0000049C
_021A5708:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021A571A
	bl ovy257_21a6bfc
	mov r0, #0
	str r0, [r6, r7]
_021A571A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A5708
	ldr r4, _021A5964 ; =0x00000494
	ldr r0, [r5, r4]
	bl sub_0203A610
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A573A
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_021A573A:
	ldr r4, _021A5968 ; =0x00000498
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A574A
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_021A574A:
	ldr r0, [r5, #0x68]
	bl sub_0203A610
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _021A575E
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, #0x68]
_021A575E:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021A576C
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, #0x6c]
_021A576C:
	mov r6, #0
	add r4, r6, #0
_021A5770:
	lsl r0, r6, #2
	add r7, r5, r0
	ldr r0, _021A596C ; =0x00000544
	ldr r0, [r7, r0]
	bl ovy257_21a5c98
	ldr r0, _021A596C ; =0x00000544
	str r4, [r7, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021A5770
	mov r6, #0
_021A578C:
	lsl r0, r4, #2
	add r7, r5, r0
	mov r0, #0x55
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl ovy257_21a5c98
	mov r0, #0x55
	lsl r0, r0, #4
	str r6, [r7, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A578C
	ldr r0, _021A5970 ; =0x00000558
	str r0, [sp, #4]
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	str r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r6, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #8
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	add r0, #8
	str r6, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #0xc
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	add r0, #0xc
	str r6, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #0x10
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	add r0, #0x10
	str r6, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #0x14
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	mov r4, #0
	add r0, #0x14
	str r6, [r5, r0]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x24
	str r0, [sp, #4]
_021A5826:
	lsl r0, r6, #2
	add r7, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r7, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #0xc]
	str r4, [r7, r0]
	ldr r0, [sp, #8]
	ldr r0, [r7, r0]
	bl ovy257_21a5c98
	ldr r0, [sp, #4]
	str r4, [r7, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021A5826
	ldr r7, _021A5974 ; =0x00000588
	ldr r0, [r5, r7]
	bl ovy257_21a5c98
	str r4, [r5, r7]
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	add r0, r7, #4
	str r4, [r5, r0]
	add r0, r7, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	add r0, r7, #0
	add r0, #0x30
	str r4, [r5, r0]
	add r0, r7, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	add r0, r7, #0
	add r0, #0x38
	str r4, [r5, r0]
	add r0, r7, #0
	add r0, #0x3c
	ldr r0, [r5, r0]
	bl ovy257_21a5c98
	add r0, r7, #0
	add r0, #0x3c
	str r4, [r5, r0]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #8
	mov r6, #0
	str r0, [sp, #0x14]
	add r7, #8
_021A589E:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	str r1, [sp]
	ldr r0, [r1, r0]
	bl ovy257_21a5c98
	ldr r0, [sp]
	str r6, [r0, r7]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A589E
	mov r4, #0x5b
	lsl r4, r4, #4
_021A58BE:
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl ovy257_21a5c98
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021A58BE
	ldr r6, _021A5978 ; =0x000005A8
	mov r4, #0
_021A58D6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy257_21a5c98
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A58D6
	ldr r4, _021A597C ; =0x0000047C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A58FA
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021A58FA:
	mov r4, #0x12
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A590C
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021A590C:
	ldr r4, _021A5980 ; =0x00000488
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A591C
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021A591C:
	ldr r4, _021A5984 ; =0x000004CC
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A592C
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021A592C:
	ldr r0, _021A5988 ; =0x000004DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A5938
	bl sub_0202DA54
_021A5938:
	mov r4, #0x4e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A594A
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r4]
_021A594A:
	ldr r4, _021A598C ; =0x000004D8
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A595A
	bl sub_0202E1DC
	mov r0, #0
	str r0, [r5, r4]
_021A595A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A5960: .word 0x0000049C
_021A5964: .word 0x00000494
_021A5968: .word 0x00000498
_021A596C: .word 0x00000544
_021A5970: .word 0x00000558
_021A5974: .word 0x00000588
_021A5978: .word 0x000005A8
_021A597C: .word 0x0000047C
_021A5980: .word 0x00000488
_021A5984: .word 0x000004CC
_021A5988: .word 0x000004DC
_021A598C: .word 0x000004D8
	thumb_func_end ovy257_21a56bc

	thumb_func_start ovy257_21a5990
ovy257_21a5990: ; 0x021A5990
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r5, #0
	add r4, #0x70
	mov r6, #0x7c
_021A599A:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy257_21a7670
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _021A599A
	pop {r4, r5, r6, pc}
	thumb_func_end ovy257_21a5990

	thumb_func_start ovy257_21a59b0
ovy257_21a59b0: ; 0x021A59B0
	push {r4, r5, r6, lr}
	ldr r6, _021A59E4 ; =0x00000458
	add r5, r1, #0
	mov r4, #0
_021A59B8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021A59C6
	bl ovy257_21a79d8
_021A59C6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A59B8
	mov r4, #0x13
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A59E2
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_021A59E2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A59E4: .word 0x00000458
	thumb_func_end ovy257_21a59b0

	thumb_func_start ovy257_21a59e8
ovy257_21a59e8: ; 0x021A59E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_021AAA14
	add r0, r4, #0
	bl sub_021AAAB4
	cmp r0, #1
	bne _021A5A04
	mov r0, #0xe
	bl sub_020120F0
	mov r0, #1
	pop {r4, pc}
_021A5A04:
	add r0, r4, #0
	bl sub_021AAAB8
	cmp r0, #1
	bhi _021A5A18
	mov r0, #0xe
	bl sub_020120F0
	mov r0, #1
	pop {r4, pc}
_021A5A18:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_21a59e8

	thumb_func_start ovy257_21a5a1c
ovy257_21a5a1c: ; 0x021A5A1C
	push {r3, r4, r5, lr}
	ldr r5, _021A5A50 ; =0x021B3D70
	add r4, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	blx sub_0208D60C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5]
	str r3, [r5, #4]
	cmp r4, #0
	beq _021A5A4C
	add r0, r3, #0
	mov r1, #0
	mov r3, #0
	add r2, r4, #0
	blx sub_0208D60C
	add r3, r1, #0
_021A5A4C:
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A5A50: .word 0x021B3D70
	thumb_func_end ovy257_21a5a1c

	thumb_func_start ovy257_21a5a54
ovy257_21a5a54: ; 0x021A5A54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	add r5, r1, #0
	ldr r1, [r2]
	ldr r0, _021A5B00 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2]
	ldr r2, _021A5B04 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A5B08 ; =0x021B1DF0
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	add r0, r4, #0
	add r1, r5, #0
	bl ovy257_21a5ca4
	add r0, r4, #0
	add r1, r5, #0
	bl ovy257_21a5e30
	ldr r6, _021A5B0C ; =0x02093F08
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
	add r0, r2, #0
	add r2, r5, #0
	bl Oam_CreateSystem
	mov r0, #0x10
	mov r1, #1
	mov r6, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0x40
	mov r1, #0
	add r2, r5, #0
	bl sub_0204BF1C
	mov r5, #0x15
	lsl r5, r5, #6
	str r0, [r4, r5]
	bl sub_0204C028
	ldr r0, _021A5B10 ; =ovy257_21a5c8c
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r4, r1]
	sub r5, #0x20
	str r6, [r4, r5]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A5B00: .word 0xFFFF1FFF
_021A5B04: .word 0x04001000
_021A5B08: .word 0x021B1DF0
_021A5B0C: .word 0x02093F08
_021A5B10: .word ovy257_21a5c8c
	thumb_func_end ovy257_21a5a54

	thumb_func_start ovy257_21a5b14
ovy257_21a5b14: ; 0x021A5B14
	push {r3, r4, r5, lr}
	ldr r4, _021A5B44 ; =0x000005DC
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl GFL_TCBRemove
	add r0, r4, #0
	sub r0, #0x9c
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	bl ovy257_21a5f00
	add r0, r5, #0
	bl ovy257_21a5dd0
	mov r0, #0
	sub r4, #0xbc
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	nop
_021A5B44: .word 0x000005DC
	thumb_func_end ovy257_21a5b14

	thumb_func_start ovy257_21a5b48
ovy257_21a5b48: ; 0x021A5B48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0x52
	lsl r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021A5C22
	bl sub_02049A98
	ldr r0, [sp, #8]
	add r0, #0xb8
	ldr r0, [r6, r0]
	bl sub_0204A638
	bl sub_02049AF0
	mov r0, #0
	mov r3, #1
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	lsl r3, r3, #0xc
	bl sub_020658EC
	ldr r4, _021A5C28 ; =0x00007FFF
	mov r0, #0
	add r1, r4, #0
	bl sub_0206591C
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0206592C
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0206594C
	ldr r0, [sp, #8]
	str r0, [sp, #0x10]
	add r0, #0xa8
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, #0xa8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0xac
	str r0, [sp, #8]
_021A5BB2:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #1
	add r2, r6, r1
	ldr r1, [sp, #8]
	ldr r0, [r6, r0]
	ldrh r1, [r2, r1]
	bl sub_0204A5A8
	add r7, r0, #0
	mov r5, #0
_021A5BC8:
	ldr r0, [sp, #0x10]
	add r1, r7, r5
	lsl r1, r1, #0x10
	ldr r0, [r6, r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xc
	add r4, r0, #0
	bl sub_02049A64
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	bl sub_02049A64
	add r5, r5, #1
	cmp r5, #3
	blt _021A5BC8
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #4
	blo _021A5BB2
	ldr r0, [r6, #0x68]
	bl sub_0203A5D0
	add r0, r6, #0
	bl ovy257_21a6868
	mov r0, #0
	str r0, [sp]
	ldr r0, _021A5C2C ; =0x00007FB2
	mov r1, #0
	add r2, r0, #0
	add r2, #0x4d
	mov r3, #0x3f
	bl G3X_SetClearColor
	bl sub_02049AA0
_021A5C22:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A5C28: .word 0x00007FFF
_021A5C2C: .word 0x00007FB2
	thumb_func_end ovy257_21a5b48

	thumb_func_start ovy257_21a5c30
ovy257_21a5c30: ; 0x021A5C30
	push {r3, r4, r5, lr}
	mov r5, #0x52
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A5C84
	bl sub_02049A98
	add r5, #0xb8
	ldr r0, [r4, r5]
	bl sub_0204A638
	bl sub_02049AF0
	mov r3, #1
	mov r0, #0
	mov r1, #0
	mov r2, #0
	lsl r3, r3, #0xc
	bl sub_020658EC
	ldr r5, _021A5C88 ; =0x00007FFF
	mov r0, #0
	add r1, r5, #0
	bl sub_0206591C
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0206592C
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0206594C
	ldr r0, [r4, #0x68]
	bl sub_0203A5D0
	bl sub_02049AA0
_021A5C84:
	pop {r3, r4, r5, pc}
	nop
_021A5C88: .word 0x00007FFF
	thumb_func_end ovy257_21a5c30

	thumb_func_start ovy257_21a5c8c
ovy257_21a5c8c: ; 0x021A5C8C
	push {r3, lr}
	bl sub_02045A5C
	bl sub_0204B7C8
	pop {r3, pc}
	thumb_func_end ovy257_21a5c8c

	thumb_func_start ovy257_21a5c98
ovy257_21a5c98: ; 0x021A5C98
	push {r3, lr}
	cmp r0, #0
	beq _021A5CA2
	bl sub_0204C108
_021A5CA2:
	pop {r3, pc}
	thumb_func_end ovy257_21a5c98

	thumb_func_start ovy257_21a5ca4
ovy257_21a5ca4: ; 0x021A5CA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl GFL_BGSysCreate
	add r0, r4, #0
	bl BmpWin_InitAllocator
	ldr r4, _021A5DAC ; =0x021B1E94
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r0, _021A5DB0 ; =0x021B1B58
	mov r1, #1
	mov r2, #0
	mov r5, #0
	bl ovy257_21a5e0c
	ldr r0, _021A5DB4 ; =0x021B1B78
	mov r1, #2
	mov r2, #0
	mov r4, #2
	bl ovy257_21a5e0c
	ldr r0, _021A5DB8 ; =0x021B1B98
	mov r1, #3
	mov r2, #0
	mov r6, #3
	bl ovy257_21a5e0c
	ldr r0, _021A5DBC ; =0x021B1BD8
	mov r1, #4
	mov r2, #0
	mov r7, #4
	bl ovy257_21a5e0c
	ldr r0, _021A5DC0 ; =0x021B1BB8
	mov r1, #5
	mov r2, #0
	bl ovy257_21a5e0c
	ldr r0, _021A5DC4 ; =0x021B1BF8
	mov r1, #6
	mov r2, #0
	bl ovy257_21a5e0c
	ldr r0, _021A5DC8 ; =0x021B1C18
	mov r1, #7
	mov r2, #0
	bl ovy257_21a5e0c
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021A5DCC ; =0x04000050
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #0
	mov r1, #2
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #3
	bl sub_02044BD8
	mov r0, #3
	mov r1, #0
	bl sub_02044BD8
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	mov r0, #5
	mov r1, #0
	bl sub_02044BD8
	mov r0, #6
	mov r1, #1
	bl sub_02044BD8
	mov r0, #7
	add r1, r4, #0
	bl sub_02044BD8
	add r0, r5, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	add r0, r6, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r7, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5DAC: .word 0x021B1E94
_021A5DB0: .word 0x021B1B58
_021A5DB4: .word 0x021B1B78
_021A5DB8: .word 0x021B1B98
_021A5DBC: .word 0x021B1BD8
_021A5DC0: .word 0x021B1BB8
_021A5DC4: .word 0x021B1BF8
_021A5DC8: .word 0x021B1C18
_021A5DCC: .word 0x04000050
	thumb_func_end ovy257_21a5ca4

	thumb_func_start ovy257_21a5dd0
ovy257_21a5dd0: ; 0x021A5DD0
	push {r3, lr}
	mov r0, #0
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy257_21a5dd0

	thumb_func_start ovy257_21a5e0c
ovy257_21a5e0c: ; 0x021A5E0C
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl GFL_BGSysLoadScr
	pop {r4, pc}
	thumb_func_end ovy257_21a5e0c

	thumb_func_start ovy257_21a5e30
ovy257_21a5e30: ; 0x021A5E30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r7, #0
	add r4, r1, #0
	str r7, [sp]
	add r5, r0, #0
	str r4, [sp, #4]
	mov r0, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	str r7, [sp, #8]
	bl sub_02048D28
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	ldr r0, _021A5ED8 ; =0x00007FFF
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	str r7, [sp]
	bl G3X_SetClearColor
	ldr r0, _021A5EDC ; =0x04000060
	ldr r2, _021A5EE0 ; =0xFFFFCFFF
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021A5EE4 ; =0x0000CFDF
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	ldr r6, _021A5EE8 ; =0x021B1E88
	add r3, sp, #0x20
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xc
	str r0, [r3]
	mov r0, #0x10
	ldr r3, _021A5EEC ; =0x02094A3C
	str r7, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #0x10
	lsl r0, r0, #0x12
	str r0, [sp, #8]
	ldr r0, _021A5EF0 ; =0x021B1AFC
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, #0xe
	ldr r0, _021A5EF4 ; =0x021B1B08
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _021A5EF8 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	ldr r1, _021A5EFC ; =0x000005D8
	str r0, [r5, r1]
	bl sub_0204A638
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5ED8: .word 0x00007FFF
_021A5EDC: .word 0x04000060
_021A5EE0: .word 0xFFFFCFFF
_021A5EE4: .word 0x0000CFDF
_021A5EE8: .word 0x021B1E88
_021A5EEC: .word 0x02094A3C
_021A5EF0: .word 0x021B1AFC
_021A5EF4: .word 0x021B1B08
_021A5EF8: .word 0x00001555
_021A5EFC: .word 0x000005D8
	thumb_func_end ovy257_21a5e30

	thumb_func_start ovy257_21a5f00
ovy257_21a5f00: ; 0x021A5F00
	push {r3, lr}
	ldr r1, _021A5F10 ; =0x000005D8
	ldr r0, [r0, r1]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
_021A5F10: .word 0x000005D8
	thumb_func_end ovy257_21a5f00

	thumb_func_start ovy257_21a5f14
ovy257_21a5f14: ; 0x021A5F14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r6, r0, #0
	str r2, [sp, #4]
	add r0, r2, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r7, [sp]
	mov r4, #0
	bl sub_0204BC48
	ldr r5, _021A6060 ; =0x00000528
	mov r1, #0xb
	str r0, [r6, r5]
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, #1
	str r7, [sp]
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #8
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0x1b
	mov r2, #0x1d
	add r3, r7, #0
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0x10
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BC48
	add r1, r5, #4
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0xa
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xc
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0x1a
	mov r2, #0x1c
	add r3, r7, #0
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0x14
	str r0, [r6, r1]
	mov r0, #0x24
	mov r1, #0x10
	add r2, r7, #0
	bl sub_02049D24
	add r1, r5, #0
	add r7, r5, #0
	add r1, #0xa0
	str r0, [r6, r1]
	add r7, #0xa0
	add r5, #0xa4
_021A5FA6:
	ldr r1, _021A6064 ; =0x021B2064
	lsl r2, r4, #4
	ldr r0, [r6, r7]
	add r1, r1, r2
	bl sub_02049E00
	lsl r1, r4, #1
	add r1, r6, r1
	strh r0, [r1, r5]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A5FA6
	mov r0, #0
	str r0, [sp, #8]
	add r7, r0, #0
	ldr r0, _021A6068 ; =0x000005C8
	add r0, r6, r0
	str r0, [sp, #0x14]
	ldr r0, _021A6068 ; =0x000005C8
	add r0, r0, #4
	str r0, [sp, #0x10]
_021A5FD4:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	add r2, r6, r1
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	ldrh r1, [r2, r1]
	bl sub_0204A5A8
	str r0, [sp, #0xc]
	mov r5, #0
_021A5FEA:
	ldr r1, [sp, #0xc]
	ldr r0, _021A6068 ; =0x000005C8
	add r1, r1, r5
	lsl r1, r1, #0x10
	ldr r0, [r6, r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r4, r0, #0
	add r1, r7, #0
	bl sub_02049974
	add r0, r4, #0
	mov r1, #1
	bl sub_02049974
	add r0, r4, #0
	mov r1, #2
	bl sub_02049974
	add r5, r5, #1
	cmp r5, #3
	blt _021A5FEA
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _021A5FD4
	ldr r0, _021A6068 ; =0x000005C8
	mov r1, #4
	ldr r0, [r6, r0]
	bl sub_0204A5A8
	add r5, r0, #0
_021A6032:
	ldr r0, _021A6068 ; =0x000005C8
	add r1, r5, r7
	lsl r1, r1, #0x10
	ldr r0, [r6, r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r4, r0, #0
	mov r1, #0
	bl sub_02049974
	add r0, r4, #0
	mov r1, #1
	bl sub_02049974
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021A6032
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6060: .word 0x00000528
_021A6064: .word 0x021B2064
_021A6068: .word 0x000005C8
	thumb_func_end ovy257_21a5f14

	thumb_func_start ovy257_21a606c
ovy257_21a606c: ; 0x021A606C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A60E0 ; =0x00000528
	add r5, r0, #0
	mov r4, #0
_021A6074:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BCD0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A6074
	ldr r6, _021A60E0 ; =0x00000528
	mov r4, #2
_021A608C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A608C
	ldr r6, _021A60E0 ; =0x00000528
	mov r4, #4
_021A60A4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A60A4
	ldr r7, _021A60E4 ; =0x000005C8
	mov r4, #0
	add r6, r7, #4
_021A60BE:
	lsl r1, r4, #1
	add r1, r5, r1
	ldrh r1, [r1, r6]
	ldr r0, [r5, r7]
	bl sub_02049F4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A60BE
	ldr r0, _021A60E4 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02049DDC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A60E0: .word 0x00000528
_021A60E4: .word 0x000005C8
	thumb_func_end ovy257_21a606c

	thumb_func_start ovy257_21a60e8
ovy257_21a60e8: ; 0x021A60E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	str r2, [sp, #4]
	add r0, r2, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r7, [sp]
	mov r4, #0
	bl sub_0204BC48
	ldr r6, _021A61BC ; =0x00000528
	mov r1, #0xb
	str r0, [r5, r6]
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, #1
	str r7, [sp]
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r1, #0x1b
	mov r2, #0x1d
	add r3, r7, #0
	bl Oam_LoadNCERFile
	add r1, r6, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BC48
	add r1, r6, #4
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r1, #0xa
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r1, #0x1a
	mov r2, #0x1c
	add r3, r7, #0
	bl Oam_LoadNCERFile
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	mov r0, #0x24
	mov r1, #0x10
	add r2, r7, #0
	bl sub_02049D24
	add r1, r6, #0
	add r7, r6, #0
	add r1, #0xa0
	str r0, [r5, r1]
	add r7, #0xa0
	add r6, #0xa4
_021A617A:
	ldr r1, _021A61C0 ; =0x021B20B4
	lsl r2, r4, #4
	ldr r0, [r5, r7]
	add r1, r1, r2
	bl sub_02049E00
	lsl r1, r4, #1
	add r1, r5, r1
	strh r0, [r1, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A617A
	ldr r4, _021A61C4 ; =0x000005C8
	mov r1, #4
	ldr r0, [r5, r4]
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, r4]
	bl sub_0204A5C0
	add r4, r0, #0
	mov r1, #0
	bl sub_02049974
	add r0, r4, #0
	mov r1, #1
	bl sub_02049974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A61BC: .word 0x00000528
_021A61C0: .word 0x021B20B4
_021A61C4: .word 0x000005C8
	thumb_func_end ovy257_21a60e8

	thumb_func_start ovy257_21a61c8
ovy257_21a61c8: ; 0x021A61C8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A623C ; =0x00000528
	add r5, r0, #0
	mov r4, #0
_021A61D0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BCD0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A61D0
	ldr r6, _021A623C ; =0x00000528
	mov r4, #2
_021A61E8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A61E8
	ldr r6, _021A623C ; =0x00000528
	mov r4, #4
_021A6200:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A6200
	ldr r7, _021A6240 ; =0x000005C8
	mov r4, #0
	add r6, r7, #4
_021A621A:
	lsl r1, r4, #1
	add r1, r5, r1
	ldrh r1, [r1, r6]
	ldr r0, [r5, r7]
	bl sub_02049F4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A621A
	ldr r0, _021A6240 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02049DDC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A623C: .word 0x00000528
_021A6240: .word 0x000005C8
	thumb_func_end ovy257_21a61c8

	thumb_func_start ovy257_21a6244
ovy257_21a6244: ; 0x021A6244
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A62C4 ; =0x000005C8
	ldr r7, _021A62C8 ; =0x021B2014
	mov r4, #0
	add r6, r0, #4
_021A6250:
	ldr r0, _021A62C4 ; =0x000005C8
	lsl r1, r4, #4
	ldr r0, [r5, r0]
	add r1, r7, r1
	bl sub_02049E00
	lsl r1, r4, #1
	add r1, r5, r1
	strh r0, [r1, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021A6250
	ldr r0, _021A62C4 ; =0x000005C8
	mov r4, #0
	add r0, r0, #4
	str r0, [sp]
	ldr r0, _021A62C4 ; =0x000005C8
	add r7, r5, r0
_021A6278:
	lsl r1, r4, #1
	add r2, r5, r1
	ldr r1, [sp]
	ldr r0, _021A62C4 ; =0x000005C8
	ldrh r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r7]
	bl sub_0204A5C0
	add r6, r0, #0
	mov r1, #0
	bl sub_02049974
	add r0, r6, #0
	mov r1, #1
	bl sub_02049974
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A6278
	ldr r4, _021A62C4 ; =0x000005C8
	mov r1, #4
	ldr r0, [r5, r4]
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, r4]
	bl sub_0204A5C0
	mov r1, #0
	bl sub_02049974
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A62C4: .word 0x000005C8
_021A62C8: .word 0x021B2014
	thumb_func_end ovy257_21a6244

	thumb_func_start ovy257_21a62cc
ovy257_21a62cc: ; 0x021A62CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp, #0xc]
	bl sub_021AAA54
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021AAA7C
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021AAA84
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_021AAA8C
	str r0, [sp, #0x18]
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_02021C44
	ldr r6, _021A63AC ; =0x000004CC
	ldr r0, [r5, r6]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_021A26E0
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r1, #0x3e
	bl sub_0204898C
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [r5, r6]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x8c
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	ldr r0, [r5, r6]
	bl BmpWin_FlushChar
	ldr r0, [r5, r6]
	bl sub_0204826C
	ldr r0, [r5, r6]
	mov r1, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	add r1, r6, #4
	mov r0, #1
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A63AC: .word 0x000004CC
	thumb_func_end ovy257_21a62cc

	thumb_func_start ovy257_21a63b0
ovy257_21a63b0: ; 0x021A63B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, _021A6420 ; =0x0000047C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r7, r0, #0
	sub r0, r4, #6
	ldrh r1, [r5, r0]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r1, #0x14
	bhs _021A63D4
	mov r4, #1
	b _021A63DC
_021A63D4:
	mov r4, #2
	cmp r1, #0x28
	blo _021A63DC
	mov r4, #3
_021A63DC:
	mov r0, #0xc
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xb1
	bl sub_020470F8
	mov r0, #0xc
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	str r4, [sp, #4]
	bl sub_020470F8
	ldr r0, _021A6420 ; =0x0000047C
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6420: .word 0x0000047C
	thumb_func_end ovy257_21a63b0

	thumb_func_start ovy257_21a6424
ovy257_21a6424: ; 0x021A6424
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021A6490 ; =0x000004E4
	add r6, r0, #0
	ldr r1, [r5, r1]
	mov r4, #0
	cmp r1, #1
	bne _021A643E
	bl sub_021AAB08
	cmp r0, #0
	bne _021A643E
	mov r4, #1
_021A643E:
	ldr r0, _021A6494 ; =0x000004E8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A6452
	add r0, r6, #0
	bl sub_021AAB08
	cmp r0, #0
	beq _021A6452
	mov r4, #1
_021A6452:
	cmp r4, #1
	bne _021A648C
	ldr r7, _021A6498 ; =0x000004DC
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A6466
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r7]
_021A6466:
	mov r7, #0x4e
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A6478
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r7]
_021A6478:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x2e
	bl ovy257_21a62cc
	ldr r0, _021A649C ; =0x000004D4
	mov r1, #0x5a
	strh r1, [r5, r0]
	mov r0, #0
	str r0, [r5, #0x14]
_021A648C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6490: .word 0x000004E4
_021A6494: .word 0x000004E8
_021A6498: .word 0x000004DC
_021A649C: .word 0x000004D4
	thumb_func_end ovy257_21a6424

	thumb_func_start ovy257_21a64a0
ovy257_21a64a0: ; 0x021A64A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r6, sp, #0x18
	mov r4, #0
	add r1, sp, #0
	str r4, [r6]
	str r4, [r6, #4]
	str r4, [r6, #8]
	str r4, [r6, #0xc]
	str r4, [r6, #0x10]
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	str r4, [r1, #0x10]
	str r4, [r1, #0x14]
	bl sub_021AAA84
	add r7, r0, #0
	mov r1, #0x22
	bl sub_0204898C
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x23
	bl sub_0204898C
	str r0, [sp, #0xc]
	ldr r1, _021A6524 ; =0x000039E3
	add r0, sp, #0
	strh r1, [r0, #4]
	strh r1, [r0, #0x10]
	str r4, [sp, #8]
	str r4, [sp, #0x14]
	ldrh r1, [r5]
	str r1, [sp, #0x18]
	mov r1, #2
	strb r1, [r0, #0x1c]
	add r0, sp, #0
	str r0, [sp, #0x20]
	mov r0, #0x18
	strb r0, [r6, #0x10]
	mov r0, #0xf
	strb r0, [r6, #0x11]
	mov r0, #8
	strb r0, [r6, #0x12]
	mov r0, #3
	strb r0, [r6, #0x13]
	ldr r1, _021A6528 ; =0x000004D8
	str r4, [sp, #0x24]
	ldr r1, [r5, r1]
	add r0, r6, #0
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp]
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A6524: .word 0x000039E3
_021A6528: .word 0x000004D8
	thumb_func_end ovy257_21a64a0

	thumb_func_start ovy257_21a652c
ovy257_21a652c: ; 0x021A652C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, sp, #0xc
	mov r4, #0
	add r6, sp, #0
	add r5, r1, #0
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r6]
	str r4, [r6, #4]
	str r4, [r6, #8]
	bl sub_021AAA84
	mov r1, #0x41
	bl sub_0204898C
	str r0, [sp]
	ldr r1, _021A6590 ; =0x000039E3
	add r0, sp, #0
	strh r1, [r0, #4]
	str r4, [sp, #8]
	ldrh r1, [r5]
	str r1, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r1, #0x18
	strb r1, [r0, #0x1c]
	mov r1, #0xf
	strb r1, [r0, #0x1d]
	mov r1, #8
	strb r1, [r0, #0x1e]
	mov r1, #3
	strb r1, [r0, #0x1f]
	ldr r1, _021A6594 ; =0x000004D8
	add r0, r7, #0
	ldr r1, [r5, r1]
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6590: .word 0x000039E3
_021A6594: .word 0x000004D8
	thumb_func_end ovy257_21a652c

	thumb_func_start ovy257_21a6598
ovy257_21a6598: ; 0x021A6598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _021A6688 ; =0x00000452
	str r5, [r4, #8]
	ldrb r0, [r5, r6]
	mov r1, #0x1f
	add r0, r0, #1
	str r0, [r4, #0x54]
	mov r0, #1
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	add r0, r6, #0
	strh r2, [r4, #0x10]
	add r0, #0xaa
	ldrh r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x78
	strh r1, [r0]
	mov r0, #0x40
	bl ovy257_21a5a1c
	sub r1, r6, #2
	ldrb r1, [r5, r1]
	ldr r2, [r4, #0x54]
	mov r7, #4
	lsl r1, r1, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	ldr r1, _021A668C ; =0xFFFB0000
	sub r3, r7, r2
	mul r1, r3
	str r1, [r4, #0x1c]
	lsr r0, r0, #4
	lsl r3, r7, #0x11
	sub r0, r0, r3
	str r0, [r4, #0x14]
	ldr r0, _021A6690 ; =0xFFF10000
	lsl r1, r2, #9
	str r0, [r4, #0x18]
	mov r0, #7
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, #2
	bl ovy257_21a5a1c
	add r1, r0, #1
	mov r0, #0xa
	add r7, r1, #0
	mov r1, #0
	lsl r0, r0, #8
	mul r7, r0
	mov r0, #2
	lsl r0, r0, #0xb
	str r0, [sp, #0x28]
	mov r0, #0x14
	str r1, [sp, #0x24]
	str r1, [sp, #0x2c]
	bl ovy257_21a5a1c
	sub r1, r6, #1
	ldrb r2, [r5, r1]
	mov r1, #0x14
	mul r1, r2
	add r0, r1, r0
	ldr r1, _021A6694 ; =0x0000014A
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, #0x1e
	blx sub_0208D65C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	mov r3, #0xb6
	mul r3, r2
	lsl r2, r3, #0x10
	mov r0, #0
	mov r1, #0
	lsr r2, r2, #0x10
	add r3, sp, #0
	bl sub_020507D4
	add r2, r4, #0
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, #0x6c
	blx MTX_MultVec33
	add r0, r4, #0
	add r0, #0x6c
	add r1, r0, #0
	blx VEC_Normalize
	add r6, #0x24
	ldrh r0, [r5, r6]
	cmp r0, #0x14
	bhi _021A666E
	mov r0, #2
	lsl r0, r0, #0xc
	add r7, r7, r0
_021A666E:
	add r0, r4, #0
	add r0, #0x6c
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02050784
	mov r0, #3
	ldr r1, [r4, #0x70]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r4, #0x70]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6688: .word 0x00000452
_021A668C: .word 0xFFFB0000
_021A6690: .word 0xFFF10000
_021A6694: .word 0x0000014A
	thumb_func_end ovy257_21a6598

	thumb_func_start sub_021A6698
sub_021A6698: ; 0x021A6698
	mov r3, #0
	mov r2, #0x7c
_021A669C:
	add r1, r3, #0
	mul r1, r2
	add r1, r0, r1
	ldr r1, [r1, #0x70]
	cmp r1, #1
	bne _021A66AC
	mov r0, #0
	bx lr
_021A66AC:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #8
	blo _021A669C
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6698

	thumb_func_start ovy257_21a66bc
ovy257_21a66bc: ; 0x021A66BC
	push {r4, r5, r6, lr}
	ldr r4, _021A66F4 ; =0x00000453
	add r5, r0, #0
	ldrb r0, [r5, r4]
	ldr r2, _021A66F8 ; =0x021B2104
	lsl r3, r0, #2
	add r0, r4, #1
	ldrb r1, [r5, r0]
	add r0, r2, r3
	ldrb r6, [r1, r0]
	add r0, r4, #1
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #4
	blo _021A66EE
	mov r1, #0
	add r0, r4, #1
	strb r1, [r5, r0]
	mov r0, #0x18
	bl ovy257_21a5a1c
	strb r0, [r5, r4]
_021A66EE:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021A66F4: .word 0x00000453
_021A66F8: .word 0x021B2104
	thumb_func_end ovy257_21a66bc

	thumb_func_start ovy257_21a66fc
ovy257_21a66fc: ; 0x021A66FC
	push {r3, r4}
	mov r4, #0
	mov r3, #0x7c
_021A6702:
	add r2, r4, #0
	mul r2, r3
	add r2, r0, r2
	ldr r2, [r2, #0x74]
	cmp r2, #0
	bne _021A6716
	strb r4, [r1]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021A6716:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #8
	blo _021A6702
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_21a66fc

	thumb_func_start ovy257_21a6728
ovy257_21a6728: ; 0x021A6728
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ovy257_21a768c
	ldr r0, [r4]
	cmp r0, #1
	bne _021A673E
	add r0, r4, #0
	bl ovy257_21a7748
_021A673E:
	pop {r4, pc}
	thumb_func_end ovy257_21a6728

	thumb_func_start ovy257_21a6740
ovy257_21a6740: ; 0x021A6740
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A6756
	add r0, r4, #0
	bl ovy257_21a79f8
	add r0, r4, #0
	bl ovy257_21a7cb4
_021A6756:
	pop {r4, pc}
	thumb_func_end ovy257_21a6740

	thumb_func_start ovy257_21a6758
ovy257_21a6758: ; 0x021A6758
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ovy257_21a7f38
	add r0, r4, #0
	bl ovy257_21a7fc8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a6758

	thumb_func_start ovy257_21a676c
ovy257_21a676c: ; 0x021A676C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x48]
	str r2, [sp, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r3, [sp, #8]
	str r0, [sp, #0x1c]
	add r0, #0x84
	mov r4, #0
	str r0, [sp, #0x1c]
_021A678C:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x7c
	ldr r1, [sp]
	mul r0, r4
	add r5, r1, r0
	ldr r1, [r5, #0x70]
	cmp r1, #0
	beq _021A6852
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	cmp r1, #0
	bne _021A6852
	add r1, r5, #0
	add r1, #0xeb
	ldrb r1, [r1]
	cmp r1, #1
	beq _021A6852
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	lsl r2, r1, #1
	ldr r1, _021A6864 ; =0x021B1AB4
	add r2, r1, r2
	sub r1, r2, #2
	ldrb r7, [r1]
	sub r1, r2, #1
	ldrb r6, [r1]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x28
	add r0, r1, r0
	add r1, sp, #0x2c
	bl sub_02067E1C
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #4]
	sub r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #8]
	sub r0, r0, r1
	blx sub_0208D374
	str r0, [sp, #0x20]
	add r0, r7, #0
	blx sub_0208D374
	str r0, [sp, #0x24]
	add r0, r6, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	blx sub_0208DD34
	blx sub_0208DA4C
	ldr r2, [sp, #0xc]
	add r1, r2, #0
	mul r1, r2
	add r2, r0, #0
	mul r2, r0
	add r0, r7, #0
	add r1, r1, r2
	mul r0, r6
	cmp r1, r0
	bgt _021A6820
	mov r0, #1
	str r0, [sp, #0x10]
_021A6820:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021A6852
	mov r0, #1
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0]
	cmp r1, #3
	bne _021A683E
	ldr r0, [sp, #0x48]
	add sp, #0x30
	strh r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A683E:
	ldr r0, [sp, #0x14]
	cmp r1, r0
	ble _021A6852
	ldr r0, [sp, #0x48]
	add r5, #0xc4
	strh r4, [r0]
	ldr r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_021A6852:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A678C
	ldr r0, [sp, #0x18]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6864: .word 0x021B1AB4
	thumb_func_end ovy257_21a676c

	thumb_func_start ovy257_21a6868
ovy257_21a6868: ; 0x021A6868
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #8]
_021A6872:
	ldr r0, [sp, #8]
	mov r1, #0x7c
	mul r1, r0
	add r6, r7, r1
	ldr r0, [r6, #0x70]
	str r1, [sp, #0xc]
	cmp r0, #0
	beq _021A68E6
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	bhs _021A68E6
	add r0, r7, #0
	add r4, r7, #0
	str r0, [sp, #0x10]
	add r0, #0x84
	add r4, #0x88
	str r0, [sp, #0x10]
_021A689A:
	mov r0, #0x7c
	add r3, r5, #0
	mul r3, r0
	add r1, r7, r3
	add r0, r6, #0
	add r2, r1, #0
	add r0, #0xc4
	add r2, #0xc4
	ldr r0, [r0]
	ldr r2, [r2]
	cmp r0, r2
	bne _021A68DC
	ldr r0, [r1, #0x70]
	cmp r0, #1
	bne _021A68DC
	add r0, r6, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x8c
	mul r0, r1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r2, r2, r3
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	add r3, r4, r3
	add r1, r4, r1
	bl ovy257_21a68f8
_021A68DC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _021A689A
_021A68E6:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #7
	blo _021A6872
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a6868

	thumb_func_start ovy257_21a68f8
ovy257_21a68f8: ; 0x021A68F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	ldr r1, [r0]
	ldr r0, [r5]
	add r4, r2, #0
	mov r2, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r1, [r3]
	ldr r0, [r4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x14
	add r1, sp, #8
	str r2, [sp, #0x10]
	blx VEC_Distance
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bge _021A69B6
	sub r6, r1, r0
	ldr r1, [r5]
	ldr r0, [r4]
	cmp r1, r0
	bge _021A6938
	add r7, r5, #0
	str r4, [sp, #4]
	b _021A693C
_021A6938:
	add r7, r4, #0
	str r5, [sp, #4]
_021A693C:
	add r0, sp, #0x38
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _021A6950
	cmp r0, #1
	beq _021A6978
	cmp r0, #2
	beq _021A699C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A6950:
	mov r4, #0x12
	lsl r4, r4, #0xa
	add r0, r6, #0
	add r1, r4, #0
	bl FX_Div
	ldr r1, [sp, #4]
	ldr r1, [r1]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0]
	add r0, r6, #0
	add r1, r4, #0
	bl FX_Div
	ldr r1, [r7]
	add sp, #0x20
	sub r0, r1, r0
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021A6978:
	ldr r0, [sp, #4]
	cmp r0, r5
	bne _021A6984
	ldr r0, [r5]
	add r0, r0, r6
	b _021A698C
_021A6984:
	cmp r7, r5
	bne _021A698E
	ldr r0, [r5]
	sub r0, r0, r6
_021A698C:
	str r0, [r5]
_021A698E:
	ldr r0, [sp]
	ldr r0, [r0]
	sub r1, r0, r6
	ldr r0, [sp]
	add sp, #0x20
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A699C:
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _021A69AC
	ldr r0, [r4]
	add sp, #0x20
	add r0, r0, r6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A69AC:
	cmp r7, r4
	bne _021A69B6
	ldr r0, [r4]
	sub r0, r0, r6
	str r0, [r4]
_021A69B6:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a68f8

	thumb_func_start ovy257_21a69bc
ovy257_21a69bc: ; 0x021A69BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02049A98
	ldr r7, _021A6A28 ; =0x000005D8
	ldr r0, [r5, r7]
	bl sub_0204A638
	bl sub_02049AF0
	add r0, r7, #0
	str r0, [sp, #4]
	sub r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp]
	sub r0, #0xc
	mov r4, #0
	str r0, [sp]
	sub r7, #0x10
_021A69E6:
	lsl r1, r4, #1
	add r2, r5, r1
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldrh r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, r7]
	bl sub_0204A5C0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xc
	add r6, r0, #0
	bl sub_02049A64
	mov r1, #1
	add r0, r6, #0
	lsl r2, r1, #0xc
	bl sub_02049A64
	add r4, r4, #1
	cmp r4, #4
	blt _021A69E6
	ldr r0, [r5, #0x68]
	bl sub_0203A5D0
	bl sub_02049AA0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6A28: .word 0x000005D8
	thumb_func_end ovy257_21a69bc

	thumb_func_start ovy257_21a6a2c
ovy257_21a6a2c: ; 0x021A6A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0xc]
	add r5, r1, #0
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x20]
	mov r2, #1
	str r2, [sp, #0x14]
	ldr r0, _021A6BB4 ; =0x021B1AD2
	lsl r1, r7, #1
	ldrb r0, [r0, r1]
	ldr r3, _021A6BB8 ; =0x021B2674
	mov r2, #1
	str r0, [sp, #0x1c]
	ldr r0, _021A6BBC ; =0x021B1AD3
	ldrb r6, [r0, r1]
	ldr r0, _021A6BC0 ; =0x00001B57
	mov r1, #0x64
	str r0, [sp]
	ldrh r0, [r5]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	strh r0, [r4, #4]
	strb r7, [r4, #8]
	add r0, r7, #1
	strb r0, [r4, #7]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #9]
	str r2, [r4, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	beq _021A6A80
	str r2, [sp, #0x14]
_021A6A80:
	ldr r0, [sp, #0x14]
	mov r7, #0x15
	str r0, [r4, #0x10]
	mov r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x24
	strh r1, [r0]
	strh r6, [r0, #2]
	mov r1, #1
	strh r1, [r0, #4]
	mov r1, #3
	strb r1, [r0, #6]
	lsl r7, r7, #6
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r0, [sp, #8]
	sub r1, #0x18
	sub r2, #0x10
	sub r3, #8
	ldr r0, [r5, r7]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	str r0, [r4, #0x50]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x50]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl sub_0204C378
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	add r1, #0x38
	add r0, sp, #0x24
	strh r1, [r0]
	strh r6, [r0, #2]
	mov r1, #0xa
	strh r1, [r0, #4]
	mov r1, #1
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	sub r1, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	sub r2, #0x10
	sub r7, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r7]
	bl Oam_CreateSprite
	str r0, [r4, #0x60]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #0x1c]
	mov r7, #4
	lsr r0, r0, #3
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	lsr r0, r6, #3
	sub r6, r0, #2
	sub r1, #8
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	str r7, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xe
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r1, [sp, #0x18]
	lsl r2, r6, #0x18
	add r1, r1, #4
	lsl r1, r1, #0x18
	str r7, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #6
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	bl sub_021AAA7C
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	bl sub_021AAA84
	str r0, [r4, #0x20]
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	str r0, [r4, #0x24]
	ldrh r1, [r5]
	mov r0, #0xb
	bl GFL_StrBufCreate
	str r0, [r4, #0x3c]
	ldrh r1, [r5]
	mov r0, #0xb
	bl GFL_StrBufCreate
	str r0, [r4, #0x40]
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [r4, #0x38]
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A6BB4: .word 0x021B1AD2
_021A6BB8: .word 0x021B2674
_021A6BBC: .word 0x021B1AD3
_021A6BC0: .word 0x00001B57
	thumb_func_end ovy257_21a6a2c

	thumb_func_start ovy257_21a6bc4
ovy257_21a6bc4: ; 0x021A6BC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _021A6BF4 ; =0x00001BB6
	add r5, r1, #0
	str r0, [sp]
	ldrh r0, [r5]
	add r4, r2, #0
	ldr r3, _021A6BF8 ; =0x021B2674
	mov r1, #0x64
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	ldrh r1, [r5]
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r4, [r0, #9]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r6, [r0, #0xc]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A6BF4: .word 0x00001BB6
_021A6BF8: .word 0x021B2674
	thumb_func_end ovy257_21a6bc4

	thumb_func_start ovy257_21a6bfc
ovy257_21a6bfc: ; 0x021A6BFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021A6C46
	ldr r0, [r5, #0x28]
	bl sub_02048210
	ldr r0, [r5, #0x2c]
	bl sub_02048210
	ldr r0, [r5, #0x40]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x3c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x38]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x50]
	bl ovy257_21a5c98
	ldr r0, [r5, #0x60]
	bl ovy257_21a5c98
	mov r4, #0
_021A6C32:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl ovy257_21a5c98
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A6C32
_021A6C46:
	cmp r5, #0
	beq _021A6C50
	add r0, r5, #0
	bl GFL_HeapFree
_021A6C50:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a6bfc

	thumb_func_start ovy257_21a6c54
ovy257_21a6c54: ; 0x021A6C54
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021A6CF0 ; =0x000004AC
	add r7, r0, #0
	ldr r0, [r7, r3]
	mov r1, #0
	mov r4, #0
	mov r6, #1
	cmp r0, #1
	bne _021A6CE4
	add r0, r1, #0
	sub r3, #0x10
_021A6C6A:
	lsl r2, r0, #2
	add r2, r7, r2
	ldr r2, [r2, r3]
	ldrb r5, [r2, #6]
	cmp r5, #2
	bne _021A6C7C
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021A6C7C:
	ldr r5, [r2, #0xc]
	cmp r5, #0
	bne _021A6C88
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
_021A6C88:
	ldr r2, [r2, #0x4c]
	cmp r2, #1
	bne _021A6C90
	mov r6, #0
_021A6C90:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _021A6C6A
	cmp r6, #1
	bne _021A6CA4
	ldr r0, _021A6CF0 ; =0x000004AC
	mov r2, #0
	str r2, [r7, r0]
_021A6CA4:
	cmp r1, r4
	bne _021A6CE4
	add r0, r7, #0
	bl ovy257_21a6f08
	mov r5, #0
_021A6CB0:
	lsl r0, r5, #2
	add r6, r7, r0
	ldr r0, _021A6CF4 ; =0x0000049C
	ldr r0, [r6, r0]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021A6CDA
	bl ovy257_21a7074
	ldr r0, _021A6CF4 ; =0x0000049C
	ldr r1, [r6, r0]
	mov r0, #3
	strb r0, [r1, #6]
	ldr r0, _021A6CF4 ; =0x0000049C
	ldr r0, [r6, r0]
	ldrb r1, [r0, #7]
	add r0, #0x44
	sub r2, r4, r1
	mov r1, #0x28
	mul r1, r2
	strb r1, [r0]
_021A6CDA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A6CB0
_021A6CE4:
	ldr r0, _021A6CF8 ; =0x00000494
	ldr r0, [r7, r0]
	bl sub_0203A5D0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6CF0: .word 0x000004AC
_021A6CF4: .word 0x0000049C
_021A6CF8: .word 0x00000494
	thumb_func_end ovy257_21a6c54

	thumb_func_start ovy257_21a6cfc
ovy257_21a6cfc: ; 0x021A6CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021A6DD6
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x60]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x20]
	ldr r4, [r5, #0x1c]
	str r0, [sp, #0x10]
	ldrb r0, [r5, #8]
	ldr r7, [r5, #0x24]
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, #8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r1, r0, #0
	ldrb r2, [r5, #9]
	ldr r0, [sp, #0xc]
	bl sub_0219CCC0
	ldr r1, [r5, #0x38]
	bl sub_02008BA0
	ldr r0, [r5, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02021C7C
	ldr r0, [r5, #0x28]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x28]
	bl sub_0204826C
	mov r0, #1
	str r0, [r5, #0x30]
	ldrh r0, [r5, #4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x3c]
	mov r1, #0x42
	bl GFL_MsgDataLoadStrbuf
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r5, #0xa]
	ldr r0, [sp, #0x14]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x14]
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x2c]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x2c]
	bl sub_0204826C
	mov r0, #1
	str r0, [r5, #0x34]
_021A6DD6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a6cfc

	thumb_func_start ovy257_21a6ddc
ovy257_21a6ddc: ; 0x021A6DDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _021A6E88 ; =0x0000049C
	str r2, [sp, #0xc]
	mov r4, #0
	mov r2, #0
_021A6DE8:
	lsl r5, r2, #2
	add r5, r0, r5
	ldr r6, [r5, r3]
	ldrb r5, [r6, #9]
	cmp r1, r5
	bne _021A6DF8
	add r4, r6, #0
	b _021A6E02
_021A6DF8:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #4
	blo _021A6DE8
_021A6E02:
	ldr r0, [sp, #0xc]
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021A6E82
	ldr r0, [r4, #0x24]
	ldr r5, [r4, #0x1c]
	str r0, [sp, #0x14]
	ldrb r0, [r4, #7]
	ldr r7, [r4, #0x20]
	lsl r0, r0, #1
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldrh r0, [r4, #4]
	bl GFL_WordSetSystemCreateDefault
	add r6, r0, #0
	ldr r2, [r4, #0x3c]
	add r0, r7, #0
	mov r1, #0x42
	bl GFL_MsgDataLoadStrbuf
	mov r0, #2
	str r0, [sp]
	mov r7, #1
	str r7, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x3c]
	add r0, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r5, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	str r7, [r4, #0x34]
_021A6E82:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6E88: .word 0x0000049C
	thumb_func_end ovy257_21a6ddc

	thumb_func_start ovy257_21a6e8c
ovy257_21a6e8c: ; 0x021A6E8C
	push {r4, r5, r6, r7}
	ldr r2, _021A6F00 ; =0x0000049C
	add r4, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0
_021A6E98:
	lsl r5, r0, #2
	add r5, r4, r5
	ldr r5, [r5, r2]
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _021A6EAA
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021A6EAA:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _021A6E98
	ldr r5, _021A6F04 ; =0x00000476
	mov r2, #0
	add r5, #0x26
_021A6EBA:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r0, [r0, r5]
	ldr r6, [r0, #0xc]
	cmp r6, #0
	bne _021A6EF2
	ldr r6, _021A6F04 ; =0x00000476
	ldrh r6, [r4, r6]
	cmp r6, #0x28
	bne _021A6ED2
	ldrb r6, [r0, #8]
	b _021A6ED6
_021A6ED2:
	ldrb r6, [r0, #7]
	sub r6, r1, r6
_021A6ED6:
	mov r7, #0x28
	mul r7, r6
	add r6, r0, #0
	add r6, #0x44
	strb r7, [r6]
	mov r6, #1
	str r6, [r0, #0x4c]
	mov r6, #0
	str r6, [r0, #0x48]
	cmp r3, #0
	bne _021A6EEE
	b _021A6EF0
_021A6EEE:
	mov r6, #1
_021A6EF0:
	strb r6, [r0, #6]
_021A6EF2:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _021A6EBA
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021A6F00: .word 0x0000049C
_021A6F04: .word 0x00000476
	thumb_func_end ovy257_21a6e8c

	thumb_func_start ovy257_21a6f08
ovy257_21a6f08: ; 0x021A6F08
	push {r4, r5, r6, r7}
	sub sp, #8
	ldr r2, _021A6FC0 ; =0x021B1E84
	add r1, sp, #0
	ldrb r4, [r2]
	add r3, sp, #4
	mov r5, #1
	strb r4, [r1, #4]
	ldrb r4, [r2, #1]
	strb r4, [r1, #5]
	ldrb r4, [r2, #2]
	strb r4, [r1, #6]
	ldrb r2, [r2, #3]
	mov r4, #0
	strb r2, [r1, #7]
	add r2, sp, #0
	ldr r1, _021A6FC4 ; =0x0000049C
	strb r4, [r2]
	strb r4, [r2, #1]
	strb r4, [r2, #2]
	strb r4, [r2, #3]
_021A6F32:
	lsl r6, r4, #2
	add r6, r0, r6
	ldr r7, [r6, r1]
	ldr r6, [r7, #0xc]
	cmp r6, #0
	bne _021A6F4C
	ldrh r6, [r7, #0xa]
	strb r6, [r2, r4]
	add r6, r5, #0
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r6, [r3, r4]
_021A6F4C:
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	cmp r4, #4
	blo _021A6F32
	ldr r5, _021A6FC4 ; =0x0000049C
	mov r4, #0
	add r1, sp, #4
	add r2, sp, #0
_021A6F5E:
	lsl r3, r4, #2
	add r3, r0, r3
	ldr r3, [r3, r5]
	ldr r3, [r3, #0xc]
	cmp r3, #1
	beq _021A6F8E
	add r3, r4, #0
	cmp r4, #4
	bhs _021A6F8E
_021A6F70:
	ldrb r7, [r2, r4]
	ldrb r6, [r2, r3]
	cmp r6, r7
	bls _021A6F84
	strb r6, [r2, r4]
	strb r7, [r2, r3]
	ldrb r7, [r1, r4]
	ldrb r6, [r1, r3]
	strb r6, [r1, r4]
	strb r7, [r1, r3]
_021A6F84:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #4
	blo _021A6F70
_021A6F8E:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, #3
	blo _021A6F5E
	ldr r2, _021A6FC4 ; =0x0000049C
	mov r1, #0
	add r4, sp, #4
_021A6F9E:
	lsl r3, r1, #2
	add r3, r0, r3
	ldr r5, [r3, r2]
	ldr r3, [r5, #0xc]
	cmp r3, #0
	bne _021A6FAE
	ldrb r3, [r4, r1]
	strb r3, [r5, #7]
_021A6FAE:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _021A6F9E
	add sp, #8
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021A6FC0: .word 0x021B1E84
_021A6FC4: .word 0x0000049C
	thumb_func_end ovy257_21a6f08

	thumb_func_start ovy257_21a6fc8
ovy257_21a6fc8: ; 0x021A6FC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	add r4, r1, #0
	add r1, sp, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	lsl r0, r4, #0x13
	add r6, sp, #0
	mov r7, #0
	ldrsh r1, [r6, r7]
	asr r0, r0, #0x10
	mov r2, #1
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #0x50]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrsh r4, [r6, r7]
	add r1, sp, #0
	mov r2, #1
	add r0, r4, #0
	add r0, #0x38
	strh r0, [r6]
	ldr r0, [r5, #0x60]
	bl Oam_SetSpritePosData
	ldr r0, [r5, #0x28]
	bl sub_020484B4
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r6, r0, #3
	add r1, r6, #0
	sub r1, #8
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x28]
	lsr r1, r1, #0x18
	bl sub_020484FC
	ldr r0, [r5, #0x28]
	bl sub_0204826C
	ldr r0, [r5, #0x2c]
	bl sub_020484B4
	add r1, r6, #4
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x2c]
	lsr r1, r1, #0x18
	bl sub_020484FC
	ldr r0, [r5, #0x2c]
	bl sub_0204826C
	mov r0, #5
	bl sub_02045B7C
	ldrb r0, [r5, #6]
	cmp r0, #1
	bhi _021A7052
	ldr r0, _021A706C ; =0xFFFFFE80
	cmp r4, r0
	bge _021A7068
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A7052:
	cmp r0, #3
	bne _021A7068
	ldrb r0, [r5, #7]
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A7070 ; =0x021B1AD2
	ldrb r0, [r0, r1]
	cmp r4, r0
	bgt _021A7068
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A7068:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A706C: .word 0xFFFFFE80
_021A7070: .word 0x021B1AD2
	thumb_func_end ovy257_21a6fc8

	thumb_func_start ovy257_21a7074
ovy257_21a7074: ; 0x021A7074
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r6, sp, #0x14
	strh r0, [r6]
	ldrb r0, [r5, #7]
	add r7, sp, #0x14
	mov r2, #1
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A71C8 ; =0x021B1AD3
	ldrb r0, [r0, r1]
	add r1, r7, #0
	strh r0, [r6, #2]
	ldr r0, [r5, #0x50]
	bl Oam_SetSpritePosData
	mov r0, #0
	ldrsh r4, [r6, r0]
	add r1, r7, #0
	mov r2, #1
	add r0, r4, #0
	add r0, #0x38
	strh r0, [r6]
	ldr r0, [r5, #0x60]
	bl Oam_SetSpritePosData
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r4, r0, #3
	add r1, r4, #0
	sub r1, #8
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x28]
	lsr r1, r1, #0x18
	bl sub_020484FC
	mov r1, #2
	ldrsh r2, [r6, r1]
	ldr r0, [r5, #0x28]
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	sub r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02048500
	add r1, r4, #4
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x2c]
	lsr r1, r1, #0x18
	bl sub_020484FC
	mov r1, #2
	ldrsh r2, [r6, r1]
	ldr r0, [r5, #0x2c]
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	sub r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02048500
	ldr r0, [r5, #0x20]
	ldr r4, [r5, #0x1c]
	str r0, [sp, #0xc]
	ldrb r0, [r5, #7]
	ldr r7, [r5, #0x24]
	lsl r0, r0, #1
	add r0, #8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r5, #0x28]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02021C7C
	ldr r0, [r5, #0x28]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x28]
	bl sub_0204826C
	mov r0, #1
	str r0, [r5, #0x30]
	ldrh r0, [r5, #4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0x3c]
	mov r1, #0x42
	bl GFL_MsgDataLoadStrbuf
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r5, #0xa]
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02021C7C
	ldr r0, [sp, #0x10]
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x2c]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x2c]
	bl sub_0204826C
	mov r0, #1
	str r0, [r5, #0x34]
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A71C8: .word 0x021B1AD3
	thumb_func_end ovy257_21a7074

	thumb_func_start ovy257_21a71cc
ovy257_21a71cc: ; 0x021A71CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _021A7204
	ldr r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A7204
	ldr r5, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A7204:
	ldr r0, [r4, #0x34]
	cmp r0, #1
	bne _021A7238
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A7238
	ldr r5, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021A7238:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021A72BA
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A7256
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	strb r1, [r0]
_021A7256:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A7332
	ldrb r0, [r4, #6]
	cmp r0, #3
	bhi _021A7332
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A7272: ; jump table
	.short _021A727A - _021A7272 - 2 ; case 0
	.short _021A728E - _021A7272 - 2 ; case 1
	.short _021A7332 - _021A7272 - 2 ; case 2
	.short _021A72A2 - _021A7272 - 2 ; case 3
_021A727A:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy257_21a6fc8
	cmp r0, #1
	bne _021A7332
	mov r0, #2
	strb r0, [r4, #6]
	pop {r3, r4, r5, pc}
_021A728E:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy257_21a6fc8
	cmp r0, #1
	bne _021A7332
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021A72A2:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy257_21a6fc8
	cmp r0, #1
	bne _021A7332
	mov r0, #0
	strb r0, [r4, #6]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_021A72BA:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A7332
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021A72DA
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0xb4
	blo _021A72DA
	mov r0, #1
	str r0, [r4, #0x14]
	mov r0, #0
	strb r0, [r4, #0x19]
_021A72DA:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A7332
	mov r1, #0x18
	ldrsb r0, [r4, r1]
	cmp r0, #0xe
	ble _021A72F0
	mov r0, #0
	strb r0, [r4, #0x18]
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_021A72F0:
	bhi _021A732A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A72FE: ; jump table
	.short _021A731C - _021A72FE - 2 ; case 0
	.short _021A732A - _021A72FE - 2 ; case 1
	.short _021A7322 - _021A72FE - 2 ; case 2
	.short _021A732A - _021A72FE - 2 ; case 3
	.short _021A7322 - _021A72FE - 2 ; case 4
	.short _021A732A - _021A72FE - 2 ; case 5
	.short _021A731C - _021A72FE - 2 ; case 6
	.short _021A732A - _021A72FE - 2 ; case 7
	.short _021A731C - _021A72FE - 2 ; case 8
	.short _021A732A - _021A72FE - 2 ; case 9
	.short _021A7322 - _021A72FE - 2 ; case 10
	.short _021A732A - _021A72FE - 2 ; case 11
	.short _021A7322 - _021A72FE - 2 ; case 12
	.short _021A732A - _021A72FE - 2 ; case 13
	.short _021A731C - _021A72FE - 2 ; case 14
_021A731C:
	add r0, r4, #0
	sub r1, #0x19
	b _021A7326
_021A7322:
	add r0, r4, #0
	mov r1, #1
_021A7326:
	bl ovy257_21a6fc8
_021A732A:
	mov r0, #0x18
	ldrsb r0, [r4, r0]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_021A7332:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a71cc

	thumb_func_start ovy257_21a7334
ovy257_21a7334: ; 0x021A7334
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r1, #0
	str r0, [sp, #0xc]
	bl sub_021AAA3C
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021A734A
	b _021A748C
_021A734A:
	ldrb r0, [r6, #8]
	lsl r1, r0, #1
	ldr r0, _021A7550 ; =0x021B1ACA
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	ldr r0, _021A7554 ; =0x021B1ACB
	ldrb r7, [r0, r1]
	ldr r0, [r6, #0x50]
	bl ovy257_21a5c98
	ldr r0, [r6, #0x60]
	bl ovy257_21a5c98
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	ldr r1, [sp, #0x10]
	add r0, sp, #0x2c
	strh r1, [r0, #8]
	strh r7, [r0, #0xa]
	mov r1, #0xc
	strh r1, [r0, #0xc]
	mov r1, #3
	strb r1, [r0, #0xe]
	mov r1, #1
	strb r1, [r0, #0xf]
	add r0, sp, #0x34
	mov r1, #0x15
	lsl r1, r1, #6
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	ldrh r0, [r5]
	sub r1, #0x14
	sub r2, #0xc
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #0x50]
	bl sub_0204C124
	ldrb r1, [r6, #9]
	ldr r0, [r6, #0x50]
	mov r2, #1
	bl sub_0204C378
	ldr r1, [sp, #0x10]
	mov r2, #0x15
	mov r3, #0x15
	lsl r2, r2, #6
	lsl r3, r3, #6
	add r1, #0xc
	add r0, sp, #0x2c
	strh r1, [r0, #8]
	add r1, r7, #0
	add r1, #8
	strh r1, [r0, #0xa]
	mov r1, #0xa
	strh r1, [r0, #0xc]
	mov r1, #1
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	add r0, sp, #0x34
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x15
	lsl r1, r1, #6
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r1, #0x14
	sub r2, #0xc
	sub r3, r3, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #0x60]
	bl sub_0204C124
	add r7, #8
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x28]
	sub r0, #0x14
	str r0, [sp, #0x28]
	mov r0, #0x15
	lsl r0, r0, #6
	str r0, [sp, #0x24]
	sub r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x15
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #0x20]
_021A7428:
	lsl r0, r4, #3
	add r1, r4, r0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r1, r0, r1
	sub r1, #0x10
	add r0, sp, #0x2c
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	strh r1, [r0, #2]
	mov r1, #0xb
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	lsl r0, r4, #2
	add r7, r6, r0
	add r0, sp, #0x2c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r7, #0x54]
	bl sub_0204C520
	lsl r1, r4, #1
	add r1, r4, r1
	lsl r1, r1, #0x10
	ldr r0, [r7, #0x54]
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A7428
_021A748C:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021A754C
	ldr r0, [sp, #0xc]
	bl sub_021AAA7C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021AAA84
	ldr r0, [sp, #0xc]
	bl sub_021AAA8C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	bl sub_021AAA14
	add r1, r0, #0
	ldrb r2, [r6, #9]
	ldr r0, [sp, #0xc]
	bl sub_0219CCC0
	ldrh r1, [r5]
	bl sub_02008BB0
	add r1, r7, #0
	mov r2, #0
	add r4, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r5, r0, #0x18
	ldr r0, [r6, #0x28]
	str r0, [sp, #0x14]
	bl sub_020484B4
	ldr r0, [sp, #0x14]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r6, #0x28]
	bl sub_02048210
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r1, [r6, #8]
	mov r0, #3
	mov r2, #0x14
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	mov r3, #0xe
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x28]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r6, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0x11
	lsr r3, r5, #0x19
	mov r2, #0x20
	sub r2, r2, r3
	lsl r2, r2, #0x10
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r6, #0x28]
	bl BmpWin_FlushChar
	ldr r0, [r6, #0x28]
	bl sub_0204826C
	mov r0, #1
	str r0, [r6, #0x30]
_021A754C:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A7550: .word 0x021B1ACA
_021A7554: .word 0x021B1ACB
	thumb_func_end ovy257_21a7334

	thumb_func_start ovy257_21a7558
ovy257_21a7558: ; 0x021A7558
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021A761E
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _021A7596
	ldr r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A7596
	ldr r5, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A7596:
	ldr r0, [r4, #0x34]
	cmp r0, #1
	bne _021A75CA
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A75CA
	ldr r5, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021A75CA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _021A761E
	cmp r0, #1
	beq _021A75D8
	cmp r0, #2
	pop {r3, r4, r5, pc}
_021A75D8:
	ldrh r0, [r4, #0xa]
	mov r1, #0x64
	blx sub_0208D65C
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x54]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldrh r0, [r4, #0xa]
	mov r1, #0x64
	blx sub_0208D65C
	add r0, r1, #0
	mov r1, #0xa
	blx sub_0208D65C
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x58]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldrh r0, [r4, #0xa]
	mov r1, #0xa
	blx sub_0208D65C
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x5c]
	lsr r1, r1, #0x10
	bl sub_0204C488
	mov r0, #2
	strb r0, [r4, #6]
_021A761E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a7558

	thumb_func_start ovy257_21a7620
ovy257_21a7620: ; 0x021A7620
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	blx MTX_Identity33_
	mov r2, #0
	mov r0, #2
	str r0, [r4, #0x54]
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x7a
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x7b
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x6c]
	str r2, [r4, #0x70]
	str r2, [r4, #0x74]
	str r2, [r4]
	strh r2, [r4, #0x10]
	str r2, [r4, #0x50]
	str r2, [r4, #0x5c]
	str r2, [r4, #0x60]
	str r2, [r4, #0x64]
	str r2, [r4, #0x68]
	strb r2, [r0]
	str r2, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a7620

	thumb_func_start ovy257_21a7670
ovy257_21a7670: ; 0x021A7670
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A7682
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, #4]
_021A7682:
	add r0, r4, #0
	bl ovy257_21a7620
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a7670

	thumb_func_start ovy257_21a768c
ovy257_21a768c: ; 0x021A768C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ovy257_021A29F4
	add r1, r5, #0
	add r1, #0x78
	ldrh r1, [r1]
	sub r7, r0, r1
	cmp r7, #0
	ble _021A7738
	add r1, r5, #0
	add r1, #0x78
	mov r6, #0
	strh r0, [r1]
	cmp r7, #0
	ble _021A770E
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x14
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x6c
	add r4, r5, #0
	str r0, [sp, #4]
	add r4, #0x58
_021A76C4:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021A76FA
	mov r0, #0x58
	ldrsb r0, [r5, r0]
	cmp r0, #0x1f
	bne _021A76E6
	add r0, r5, #0
	bl ovy257_21a77f4
	cmp r0, #1
	bne _021A7704
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	strb r0, [r4]
	b _021A7704
_021A76E6:
	add r0, r5, #0
	bl ovy257_21a787c
	cmp r0, #1
	bne _021A7704
	add r0, r5, #0
	bl ovy257_21a7670
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A76FA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r0, #0
	bl VEC_Add
_021A7704:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r7
	blt _021A76C4
_021A770E:
	ldr r0, [r5, #0x54]
	ldr r2, [r5, #0x18]
	sub r1, r0, #1
	mov r0, #0xc
	mul r0, r1
	ldr r1, _021A773C ; =0x021B21F4
	ldr r1, [r1, r0]
	cmp r2, r1
	bgt _021A7732
	ldr r1, _021A7740 ; =0x021B21FC
	ldr r2, [r5, #0x14]
	ldr r1, [r1, r0]
	cmp r2, r1
	bgt _021A7732
	ldr r1, _021A7744 ; =0x021B21F8
	ldr r0, [r1, r0]
	cmp r2, r0
	bge _021A7738
_021A7732:
	add r0, r5, #0
	bl ovy257_21a7670
_021A7738:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A773C: .word 0x021B21F4
_021A7740: .word 0x021B21FC
_021A7744: .word 0x021B21F8
	thumb_func_end ovy257_21a768c

	thumb_func_start ovy257_21a7748
ovy257_21a7748: ; 0x021A7748
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #1
	bne _021A77F0
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021A77BA
	ldr r0, [r5, #0x60]
	cmp r0, #1
	bne _021A77BA
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_0204A5A8
	ldr r1, [r5, #0x68]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #0xc]
	bl sub_0204A5C0
	add r2, r5, #0
	mov r1, #0
	add r2, #0x5c
	add r4, r0, #0
	mov r6, #0
	bl sub_020499E4
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #1
	add r2, #0x5c
	mov r7, #1
	bl sub_020499E4
	ldr r1, [r5, #0x5c]
	lsl r0, r7, #0xc
	add r0, r1, r0
	str r0, [r5, #0x5c]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0
	bl sub_02049A0C
	ldr r1, [r5, #0x5c]
	ldr r0, [sp]
	cmp r1, r0
	blt _021A77B0
	str r6, [r5, #0x60]
_021A77B0:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x14
	bl sub_02049B5C
_021A77BA:
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0204A5A8
	add r2, r0, #0
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0xc]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r4, r0, #0
	bl sub_02049964
	bl sub_02049808
	mov r1, #0x58
	ldrsb r1, [r5, r1]
	ldr r0, [r0, #4]
	bl sub_02068410
	add r5, #0x14
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02049B5C
_021A77F0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a7748

	thumb_func_start ovy257_21a77f4
ovy257_21a77f4: ; 0x021A77F4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #3
	bhi _021A7876
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A780C: ; jump table
	.short _021A7814 - _021A780C - 2 ; case 0
	.short _021A7814 - _021A780C - 2 ; case 1
	.short _021A783E - _021A780C - 2 ; case 2
	.short _021A783E - _021A780C - 2 ; case 3
_021A7814:
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl sub_0204A5A8
	add r2, r0, #0
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0xc]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	mov r1, #2
	lsl r2, r1, #0xb
	bl sub_02049A64
	cmp r0, #0
	bne _021A7876
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021A783E:
	mov r0, #0x31
	ldr r1, [r4, #0x64]
	lsl r0, r0, #4
	cmp r1, r0
	bge _021A7866
	add r1, #0x4a
	str r1, [r4, #0x64]
	cmp r1, r0
	ble _021A7852
	str r0, [r4, #0x64]
_021A7852:
	mov r0, #0x4a
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x20
	add r1, sp, #0
	add r2, r0, #0
	bl VEC_Add
_021A7866:
	mov r0, #0x31
	ldr r1, [r4, #0x64]
	lsl r0, r0, #4
	cmp r1, r0
	bne _021A7876
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021A7876:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy257_21a77f4

	thumb_func_start ovy257_21a787c
ovy257_21a787c: ; 0x021A787C
	push {r3, lr}
	mov r2, #0x58
	ldrsb r1, [r0, r2]
	sub r3, r1, #3
	add r1, r0, #0
	add r1, #0x58
	strb r3, [r1]
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bgt _021A78CC
	add r1, r0, #0
	mov r2, #0
	add r1, #0x58
	strb r2, [r1]
	ldr r1, [r0, #0x68]
	cmp r1, #1
	bhi _021A78A2
	mov r0, #1
	pop {r3, pc}
_021A78A2:
	ldr r1, [r0]
	cmp r1, #1
	bne _021A78B2
	str r2, [r0]
	mov r1, #0xa
	add r0, #0x7a
	strb r1, [r0]
	b _021A78CC
_021A78B2:
	mov r2, #0x7a
	ldrsb r1, [r0, r2]
	sub r3, r1, #1
	add r1, r0, #0
	add r1, #0x7a
	strb r3, [r1]
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bgt _021A78CC
	bl ovy257_21a7670
	mov r0, #1
	pop {r3, pc}
_021A78CC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy257_21a787c

	thumb_func_start ovy257_21a78d0
ovy257_21a78d0: ; 0x021A78D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0xc]
	bl sub_02042A78
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _021A79C0 ; =0x000001E2
	ldr r3, _021A79C4 ; =0x021B2680
	str r0, [sp]
	add r0, sp, #0x28
	ldrh r0, [r0]
	mov r1, #0x8c
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	str r4, [r5]
	mov r4, #0
	ldr r0, [sp, #4]
	str r4, [r5, #4]
	str r0, [r5, #8]
	bl sub_021A26E4
	str r0, [r5, #0xc]
	strh r7, [r5, #0x10]
	str r4, [r5, #0x68]
	str r4, [r5, #0x6c]
	add r0, r5, #0
	str r4, [r5, #0x50]
	add r0, #0x54
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x5c
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0x3c
	add r0, #0x5d
	strb r1, [r0]
	str r4, [r5, #0x70]
	str r4, [r5, #0x74]
	add r0, r5, #0
	str r4, [r5, #0x78]
	mov r1, #0x1f
	add r0, #0x7c
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x80
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x84
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x86
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x88
	str r4, [r0]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bne _021A7978
	add r0, r5, #0
	add r0, #0x2c
	blx MTX_Identity33_
	ldr r0, _021A79C8 ; =0xFFFC4000
	str r4, [r5, #0x14]
	str r0, [r5, #0x18]
	str r4, [r5, #0x1c]
	mov r0, #1
	str r0, [r5, #0x58]
	mov r0, #0x75
	str r0, [r5, #0x60]
	lsl r0, r0, #4
	b _021A79AE
_021A7978:
	ldr r0, [sp, #8]
	cmp r0, #3
	bne _021A7984
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021A7984:
	add r0, r5, #0
	add r0, #0x2c
	blx MTX_Identity33_
	mov r1, #0xc
	add r0, r6, #0
	ldr r2, _021A79CC ; =0x021B2218
	mul r0, r1
	ldr r2, [r2, r0]
	str r2, [r5, #0x14]
	ldr r2, _021A79D0 ; =0x021B221C
	ldr r2, [r2, r0]
	str r2, [r5, #0x18]
	ldr r2, _021A79D4 ; =0x021B2220
	ldr r0, [r2, r0]
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x58]
	mov r0, #0x27
	str r0, [r5, #0x60]
	lsl r0, r1, #5
_021A79AE:
	str r0, [r5, #0x64]
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A79C0: .word 0x000001E2
_021A79C4: .word 0x021B2680
_021A79C8: .word 0xFFFC4000
_021A79CC: .word 0x021B2218
_021A79D0: .word 0x021B221C
_021A79D4: .word 0x021B2220
	thumb_func_end ovy257_21a78d0

	thumb_func_start ovy257_21a79d8
ovy257_21a79d8: ; 0x021A79D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A79EA
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, #4]
_021A79EA:
	cmp r4, #0
	beq _021A79F4
	add r0, r4, #0
	bl GFL_HeapFree
_021A79F4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a79d8

	thumb_func_start ovy257_21a79f8
ovy257_21a79f8: ; 0x021A79F8
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A7AF0
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	beq _021A7A0C
	b _021A7B10
_021A7A0C:
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x64]
	cmp r2, r1
	bge _021A7A34
	ldr r0, [r4, #0x60]
	add r0, r2, r0
	str r0, [r4, #0x68]
	cmp r0, r1
	ble _021A7A20
	str r1, [r4, #0x68]
_021A7A20:
	ldr r0, [r4, #0x60]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0x20
	add r2, r0, #0
	bl VEC_Add
_021A7A34:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	bne _021A7ADE
	add r0, r4, #0
	add r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A7A52
	cmp r0, #1
	beq _021A7A76
	cmp r0, #2
	beq _021A7A92
	b _021A7AB8
_021A7A52:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	mov r0, #0x84
	add r0, #0x7c
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x84
	strh r2, [r0]
	mov r0, #3
	ldrsh r1, [r4, r1]
	lsl r0, r0, #0xa
	cmp r1, r0
	blt _021A7AB8
	mov r1, #1
_021A7A6E:
	add r0, r4, #0
	add r0, #0x86
	strb r1, [r0]
	b _021A7AB8
_021A7A76:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	mov r0, #0x84
	add r0, #0x7c
	sub r2, r2, r0
	add r0, r4, #0
	add r0, #0x84
	strh r2, [r0]
	ldrsh r1, [r4, r1]
	ldr r0, _021A7CA8 ; =0xFFFFF400
	cmp r1, r0
	bgt _021A7AB8
	mov r1, #2
	b _021A7A6E
_021A7A92:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	add r0, r4, #0
	add r0, #0x84
	add r2, #0x80
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _021A7AB8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x88
	str r1, [r0]
_021A7AB8:
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r5, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	blx MTX_Identity33_
	add r2, r5, #1
	add r0, r4, #0
	ldr r3, _021A7CAC ; =FX_SinCosTable_ ; 0x020946BC
	lsl r1, r5, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, #0x2c
	bl MTX_RotZ33_
_021A7ADE:
	ldr r1, [r4, #0x68]
	ldr r0, [r4, #0x64]
	cmp r1, r0
	bne _021A7AF0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7AF2
_021A7AF0:
	b _021A7C46
_021A7AF2:
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021A7B06
	cmp r0, #1
	beq _021A7B0C
	cmp r0, #2
	b _021A7C46
_021A7B06:
	mov r0, #1
_021A7B08:
	str r0, [r4, #0x50]
	b _021A7C46
_021A7B0C:
	mov r0, #2
	b _021A7B08
_021A7B10:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021A7BA4
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _021A7B24
	mov r0, #0xe6
	b _021A7B26
_021A7B24:
	mov r0, #0x80
_021A7B26:
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x20
	add r1, sp, #0xc
	add r2, r0, #0
	bl VEC_Add
	mov r1, #0x7c
	ldrsb r0, [r4, r1]
	sub r2, r0, #2
	add r0, r4, #0
	add r0, #0x7c
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _021A7C46
	add r0, r4, #0
	mov r1, #0x3c
	add r0, #0x5d
	strb r1, [r0]
	mov r0, #0
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	add r1, r4, #0
	mov r2, #0x1f
	add r1, #0x7c
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	str r0, [r4, #0x50]
	str r0, [r4, #0x20]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x5c
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r4, #0
	add r2, r3, r2
	add r1, #0x5c
	strb r2, [r1]
	ldrh r1, [r4, #0x10]
	add r2, r4, #0
	add r2, #0x5c
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	lsr r1, r1, #0x18
	bl ovy257_21a27e0
	b _021A7C46
_021A7BA4:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	bne _021A7C46
	add r0, r4, #0
	add r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A7BC2
	cmp r0, #1
	beq _021A7BE2
	cmp r0, #2
	beq _021A7BFA
	b _021A7C20
_021A7BC2:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	add r0, r4, #0
	add r0, #0x84
	add r2, #0xa0
	strh r2, [r0]
	ldrsh r1, [r4, r1]
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r1, r0
	blt _021A7C20
	mov r1, #1
_021A7BDA:
	add r0, r4, #0
	add r0, #0x86
	strb r1, [r0]
	b _021A7C20
_021A7BE2:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	add r0, r4, #0
	add r0, #0x84
	sub r2, #0x50
	strh r2, [r0]
	ldrsh r1, [r4, r1]
	ldr r0, _021A7CB0 ; =0xFFFFFC00
	cmp r1, r0
	bgt _021A7C20
	mov r1, #2
	b _021A7BDA
_021A7BFA:
	mov r1, #0x84
	ldrsh r2, [r4, r1]
	add r0, r4, #0
	add r0, #0x84
	add r2, #0x40
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _021A7C20
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x88
	str r1, [r0]
_021A7C20:
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r5, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	blx MTX_Identity33_
	add r2, r5, #1
	add r0, r4, #0
	ldr r3, _021A7CAC ; =FX_SinCosTable_ ; 0x020946BC
	lsl r1, r5, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, #0x2c
	bl MTX_RotZ33_
_021A7C46:
	add r0, r4, #0
	add r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A7CA4
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _021A7C5A
	mov r0, #0x26
	b _021A7C5C
_021A7C5A:
	mov r0, #0x15
_021A7C5C:
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x20
	add r1, sp, #0
	add r2, r0, #0
	bl VEC_Add
	add r0, r4, #0
	add r0, #0x5d
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x5d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A7CA4
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _021A7C9A
	mov r0, #9
	lsl r0, r0, #8
	add sp, #0x24
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	pop {r4, r5, pc}
_021A7C9A:
	mov r0, #5
	lsl r0, r0, #8
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_021A7CA4:
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_021A7CA8: .word 0xFFFFF400
_021A7CAC: .word FX_SinCosTable_
_021A7CB0: .word 0xFFFFFC00
	thumb_func_end ovy257_21a79f8

	thumb_func_start ovy257_21a7cb4
ovy257_21a7cb4: ; 0x021A7CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #1
	bne _021A7D80
	ldr r0, [r5, #0x70]
	cmp r0, #1
	bne _021A7D4A
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _021A7D4A
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0204A5C0
	ldr r1, [r5, #0x74]
	add r4, r0, #0
	cmp r1, #1
	bne _021A7D1C
	add r2, r5, #0
	mov r1, #0
	add r2, #0x78
	mov r6, #0
	bl sub_020499E4
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #1
	add r2, #0x78
	mov r7, #1
	bl sub_020499E4
	ldr r1, [r5, #0x78]
	lsl r0, r7, #0xc
	add r0, r1, r0
	str r0, [r5, #0x78]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0
	bl sub_02049A0C
	ldr r1, [r5, #0x78]
	ldr r0, [sp]
	cmp r1, r0
	blt _021A7D1C
	str r6, [r5, #0x74]
	str r6, [r5, #0x70]
_021A7D1C:
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _021A7D26
	ldr r0, _021A7D84 ; =0x000017A0
	b _021A7D2A
_021A7D26:
	mov r0, #2
	lsl r0, r0, #0xa
_021A7D2A:
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	blx MTX_Identity33_
	ldr r0, [r5, #0x14]
	add r1, sp, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02049B5C
_021A7D4A:
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0204A5A8
	add r2, r0, #0
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0xc]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r4, r0, #0
	bl sub_02049964
	bl sub_02049808
	mov r1, #0x7c
	ldrsb r1, [r5, r1]
	ldr r0, [r0, #4]
	bl sub_02068410
	add r5, #0x14
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02049B5C
_021A7D80:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A7D84: .word 0x000017A0
	thumb_func_end ovy257_21a7cb4

	thumb_func_start sub_021A7D88
sub_021A7D88: ; 0x021A7D88
	add r2, r0, #0
	add r2, #0x54
	ldrb r2, [r2]
	cmp r2, #3
	bhi _021A7DD4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A7D9E: ; jump table
	.short _021A7DA6 - _021A7D9E - 2 ; case 0
	.short _021A7DA6 - _021A7D9E - 2 ; case 1
	.short _021A7DA6 - _021A7D9E - 2 ; case 2
	.short _021A7DC0 - _021A7D9E - 2 ; case 3
_021A7DA6:
	add r1, r0, #0
	mov r2, #1
	add r1, #0x88
	str r2, [r1]
	add r1, r0, #0
	add r1, #0x54
	ldrb r1, [r1]
	str r2, [r0, #0x6c]
	add r0, #0x54
	add r1, r1, #1
	strb r1, [r0]
	mov r1, #0
	b _021A7DD4
_021A7DC0:
	add r2, r0, #0
	mov r1, #1
	add r2, #0x80
	str r1, [r2]
	mov r2, #0
	str r1, [r0, #0x70]
	str r2, [r0, #0x78]
	str r1, [r0, #0x74]
	add r0, #0x54
	strb r2, [r0]
_021A7DD4:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_021A7D88

	thumb_func_start sub_021A7DD8
sub_021A7DD8: ; 0x021A7DD8
	add r1, r0, #0
	add r1, #0x5d
	ldrb r1, [r1]
	cmp r1, #0
	bne _021A7DF0
	ldr r1, [r0, #0x70]
	cmp r1, #1
	beq _021A7DF0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021A7DF4
_021A7DF0:
	mov r0, #0
	bx lr
_021A7DF4:
	mov r0, #1
	bx lr
	thumb_func_end sub_021A7DD8

	thumb_func_start sub_021A7DF8
sub_021A7DF8: ; 0x021A7DF8
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	bne _021A7E2C
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	bne _021A7E2C
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _021A7E2C
	add r1, r0, #0
	add r1, #0x54
	ldrb r1, [r1]
	cmp r1, #3
	bhs _021A7E2C
	add r1, r0, #0
	add r1, #0x5d
	ldrb r1, [r1]
	cmp r1, #0
	bne _021A7E2C
	mov r1, #1
	add r0, #0x88
	str r1, [r0]
_021A7E2C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7DF8

	thumb_func_start sub_021A7E30
sub_021A7E30: ; 0x021A7E30
	ldr r1, [r0, #0x6c]
	cmp r1, #1
	beq _021A7E4E
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #1
	beq _021A7E4E
	ldr r1, [r0, #0x74]
	cmp r1, #1
	beq _021A7E4E
	add r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A7E52
_021A7E4E:
	mov r0, #1
	bx lr
_021A7E52:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7E30

	thumb_func_start ovy257_21a7e58
ovy257_21a7e58: ; 0x021A7E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _021A7F0C ; =0x000003DD
	add r7, r3, #0
	str r0, [sp]
	add r0, sp, #0x20
	add r6, r1, #0
	add r5, r2, #0
	ldrh r0, [r0, #4]
	ldr r3, _021A7F10 ; =0x021B2680
	mov r1, #0x78
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	bl sub_021A26E4
	str r0, [r4, #0x10]
	add r0, r4, #0
	strh r6, [r4, #0x14]
	mov r1, #0x1f
	add r0, #0x54
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	add r0, r4, #0
	add r0, #0x74
	strb r7, [r0]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x70]
	mov r0, #5
	lsl r0, r0, #8
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x30
	blx MTX_Identity33_
	mov r0, #0x3c
	add r1, r5, #0
	mul r1, r0
	cmp r1, #0
	ble _021A7ED8
	lsl r0, r0, #0xc
	mul r0, r5
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A7EE8
_021A7ED8:
	lsl r0, r0, #0xc
	mul r0, r5
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A7EE8:
	blx sub_0208DA4C
	mov r1, #0x5a
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _021A7F14 ; =0xFFF9C000
	mov r1, #0
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, #0x12
	str r1, [r4, #0x64]
	lsl r0, r0, #6
	str r0, [r4, #0x68]
	str r1, [r4, #0x6c]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A7F0C: .word 0x000003DD
_021A7F10: .word 0x021B2680
_021A7F14: .word 0xFFF9C000
	thumb_func_end ovy257_21a7e58

	thumb_func_start ovy257_21a7f18
ovy257_21a7f18: ; 0x021A7F18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A7F2A
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, #8]
_021A7F2A:
	cmp r4, #0
	beq _021A7F34
	add r0, r4, #0
	bl GFL_HeapFree
_021A7F34:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a7f18

	thumb_func_start ovy257_21a7f38
ovy257_21a7f38: ; 0x021A7F38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A7FC4
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021A7F96
	mov r0, #0x26
	ldr r1, [r4, #0x60]
	lsl r0, r0, #4
	cmp r1, r0
	bge _021A7F72
	add r1, #0x4a
	str r1, [r4, #0x60]
	cmp r1, r0
	ble _021A7F5E
	str r0, [r4, #0x60]
_021A7F5E:
	mov r0, #0x4a
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl VEC_Add
_021A7F72:
	mov r0, #0x26
	ldr r1, [r4, #0x60]
	lsl r0, r0, #4
	cmp r1, r0
	bne _021A7FC4
	mov r1, #0x54
	ldrsb r0, [r4, r1]
	sub r2, r0, #2
	add r0, r4, #0
	add r0, #0x54
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _021A7FC4
	mov r0, #0
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, pc}
_021A7F96:
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #0
	add r1, #0x64
	add r2, r0, #0
	bl VEC_Add
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x70]
	cmp r1, r0
	ble _021A7FC4
	mov r0, #1
	str r0, [r4, #4]
	str r0, [r4, #0x5c]
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A7FC4
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #0x5c]
_021A7FC4:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy257_21a7f38

	thumb_func_start ovy257_21a7fc8
ovy257_21a7fc8: ; 0x021A7FC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #1
	beq _021A7FDE
	add r0, r5, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A808C
_021A7FDE:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021A8052
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	bne _021A8052
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r6, #4
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0204A5C0
	add r2, r5, #0
	mov r1, #0
	add r2, #0x58
	add r4, r0, #0
	mov r7, #0
	bl sub_020499E4
	ldr r1, [r5, #0x58]
	lsl r0, r6, #0xa
	add r0, r1, r0
	str r0, [r5, #0x58]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0
	bl sub_02049A0C
	ldr r1, [r5, #0x58]
	ldr r0, [sp]
	cmp r1, r0
	blt _021A8026
	str r7, [r5, #0x5c]
_021A8026:
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	blx MTX_Identity33_
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	mov r0, #3
	ldr r1, [r5, #0x20]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, sp, #4
	bl sub_02049B5C
_021A8052:
	ldrh r1, [r5, #0x14]
	ldr r0, [r5, #0x10]
	bl sub_0204A5A8
	add r1, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021A8068
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_021A8068:
	ldr r0, [r5, #0x10]
	bl sub_0204A5C0
	add r4, r0, #0
	bl sub_02049964
	bl sub_02049808
	mov r1, #0x54
	ldrsb r1, [r5, r1]
	ldr r0, [r0, #4]
	bl sub_02068410
	add r5, #0x18
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02049B5C
_021A808C:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a7fc8

	thumb_func_start ovy257_21a8090
ovy257_21a8090: ; 0x021A8090
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021A81C0 ; =0x000001AA
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021A81C4 ; =0x021B2694
	add r0, r5, #0
	mov r1, #0xe4
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, #0xe0
	str r6, [r0]
	strh r5, [r4]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1]
	lsl r0, r7, #0xb
	add r1, r5, #0
	bl sub_020219A8
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1]
	mov r0, #0
	mov r1, #2
	mov r2, #0x1d
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1]
	add r0, r5, #0
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	mov r0, #1
	add r1, r5, #0
	bl ovy257_21a9704
	str r0, [r4, #8]
	add r0, r5, #0
	bl ovy257_21a83ec
	ldr r0, [r4, #8]
	bl sub_021A97D0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x1c
	add r2, r5, #0
	bl ovy257_21a84d4
	add r0, r4, #0
	ldr r2, _021A81C8 ; =ovy257_21a8e84
	add r0, #0xc
	add r1, r4, #0
	bl ovy257_21a8e2c
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [sp]
	add r2, r4, #0
	add r3, r4, #0
	add r0, r4, #0
	str r5, [sp, #4]
	add r1, #0xd0
	add r2, #0xd8
	add r3, #0xd4
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, #0x98
	bl ovy257_21a865c
	add r0, r4, #0
	add r0, #0xc0
	add r1, r5, #0
	bl ovy257_21a8748
	add r0, r4, #0
	ldr r1, [r6]
	add r0, #0x74
	add r2, r5, #0
	bl ovy257_21a8b8c
	add r0, r4, #0
	add r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _021A8192
	ldrh r2, [r4]
	add r0, r4, #0
	ldr r1, [r1, #0x5c]
	add r0, #0x48
	bl ovy257_21a88fc
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r2, r4, #0
	ldr r0, [r0, #0x5c]
	ldr r1, _021A81CC ; =ovy257_21a9304
	add r2, #0x48
	bl sub_0219A084
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x5c]
	bl ovy257_219a154
	b _021A819C
_021A8192:
	ldrh r1, [r4]
	add r0, r4, #0
	add r0, #0x58
	bl ovy257_21a8a50
_021A819C:
	ldr r0, _021A81D0 ; =ovy257_21a96d4
	add r1, r4, #0
	mov r2, #1
	mov r6, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	bl sub_02042788
	cmp r0, #0
	beq _021A81BA
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02042BA8
_021A81BA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A81C0: .word 0x000001AA
_021A81C4: .word 0x021B2694
_021A81C8: .word ovy257_21a8e84
_021A81CC: .word ovy257_21a9304
_021A81D0: .word ovy257_21a96d4
	thumb_func_end ovy257_21a8090

	thumb_func_start ovy257_21a81d4
ovy257_21a81d4: ; 0x021A81D4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x74
	bl ovy257_21a8e14
	cmp r0, #1
	bne _021A81E6
	mov r0, #2
	pop {r4, pc}
_021A81E6:
	add r0, r4, #0
	add r0, #0xc
	bl ovy257_21a8e54
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	add r0, r4, #0
	add r0, #0x74
	add r1, #0x14
	bl ovy257_21a8c98
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r4, #0
	add r0, #0xc
	bl sub_021A8E68
	cmp r0, #0
	beq _021A8224
	add r4, #0x74
	add r0, r4, #0
	bl sub_021A8E00
	cmp r0, #0
	beq _021A8224
	mov r0, #1
	pop {r4, pc}
_021A8224:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_21a81d4

	thumb_func_start ovy257_21a8228
ovy257_21a8228: ; 0x021A8228
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _021A824E
	ldr r0, [r1, #0x5c]
	bl ovy257_219a1b8
	add r0, r4, #0
	add r0, #0x48
	bl sub_021A8928
	b _021A8256
_021A824E:
	add r0, r4, #0
	add r0, #0x58
	bl ovy257_21a8aa8
_021A8256:
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x74
	bl ovy257_21a8c84
	add r0, r4, #0
	add r0, #0xc0
	bl ovy257_21a8768
	add r0, r4, #0
	add r0, #0x98
	bl ovy257_21a86ec
	add r0, r4, #0
	add r0, #0xc
	bl sub_021A8E48
	add r0, r4, #0
	add r0, #0x1c
	bl ovy257_21a8620
	bl sub_021A84C4
	ldr r0, [r4, #8]
	bl ovy257_21a9784
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8228

	thumb_func_start ovy257_21a82cc
ovy257_21a82cc: ; 0x021A82CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	str r3, [sp, #8]
	ldr r0, [sp, #0x38]
	str r2, [sp, #4]
	add r2, sp, #0x10
	ldr r3, _021A83A4 ; =0x021B2270
	mov r7, #0x96
	add r4, r1, #0
	str r0, [sp, #0x38]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r7, r7, #2
	ldr r3, _021A83A8 ; =0x021B2694
	add r0, r6, #0
	mov r1, #0x64
	mov r2, #1
	str r7, [sp]
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, [sp, #4]
	str r4, [r5]
	str r0, [r5, #0x60]
	ldr r0, [sp, #8]
	cmp r4, #1
	strb r0, [r5, #4]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x5c]
	bne _021A8334
	mov r4, #0
	add r7, #0xf
_021A8314:
	mov r1, #2
	ldr r2, _021A83A8 ; =0x021B2694
	add r0, r6, #0
	lsl r1, r1, #0xc
	add r3, r7, #0
	bl sub_02042EA4
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A8314
	b _021A835A
_021A8334:
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	ldr r7, [r0, r1]
_021A833E:
	mov r0, #0xf2
	add r1, r4, r7
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B4E4
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021A833E
_021A835A:
	mov r6, #0
_021A835C:
	mov r0, #0x18
	add r7, r6, #0
	mul r7, r0
	add r4, r5, r7
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	add r3, r0, r7
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x38]
	mov r2, #0
	add r3, r0, r7
_021A837E:
	lsl r1, r2, #2
	add r0, r3, r1
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	str r0, [r1, #0x20]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	blo _021A837E
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021A835C
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A83A4: .word 0x021B2270
_021A83A8: .word 0x021B2694
	thumb_func_end ovy257_21a82cc

	thumb_func_start ovy257_21a83ac
ovy257_21a83ac: ; 0x021A83AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A83CE
	mov r5, #0
_021A83B8:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl sub_02042ED0
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A83B8
	b _021A83E4
_021A83CE:
	mov r5, #0
_021A83D0:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl GFL_HeapFree
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A83D0
_021A83E4:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a83ac

	thumb_func_start ovy257_21a83ec
ovy257_21a83ec: ; 0x021A83EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xf2
	add r1, r5, #0
	mov r4, #0xf2
	bl GFL_ArcSysCreateFileHandle
	mov r7, #0
	str r7, [sp]
	str r5, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0x17
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x20
	str r1, [sp]
	add r4, #0xee
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	add r3, r4, #0
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #1
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	str r5, [sp]
	bl sub_02024D00
	ldr r1, _021A84B4 ; =0x0400100E
	mov r5, #0x43
	ldrh r0, [r1]
	add r2, r0, #0
	ldr r0, _021A84B8 ; =0x00004084
	and r2, r5
	orr r0, r2
	strh r0, [r1]
	bl G2S_GetBG3ScrPtr
	mov r2, #6
	lsl r4, r2, #0xe
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	ldr r1, _021A84BC ; =0x0400000E
	ldrh r0, [r1]
	add r2, r0, #0
	ldr r0, _021A84C0 ; =0x00004584
	and r2, r5
	orr r0, r2
	strh r0, [r1]
	blx G2_GetBG3ScrPtr
	add r1, r7, #0
	add r2, r4, #0
	blx MI_CpuFill8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A84B4: .word 0x0400100E
_021A84B8: .word 0x00004084
_021A84BC: .word 0x0400000E
_021A84C0: .word 0x00004584
	thumb_func_end ovy257_21a83ec

	thumb_func_start sub_021A84C4
sub_021A84C4: ; 0x021A84C4
	ldr r3, _021A84D0 ; =sub_02045264
	mov r0, #1
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021A84D0: .word sub_02045264
	thumb_func_end sub_021A84C4

	thumb_func_start ovy257_21a84d4
ovy257_21a84d4: ; 0x021A84D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r2, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0xf2
	add r1, r6, #0
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	str r6, [sp]
	mov r1, #1
	mov r2, #2
	mov r3, #0
	mov r7, #0
	bl sub_0204BC48
	str r0, [r5]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	mov r3, #2
	str r6, [sp]
	bl Oam_LoadNCGRFile
	mov r2, #8
	str r0, [r5, #4]
	str r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	add r3, r6, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #8]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r4, sp, #0x18
	strh r7, [r4, #4]
	mov r0, #0x80
	strh r0, [r4]
	mov r0, #0x60
	strh r0, [r4, #2]
	strb r7, [r4, #7]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r5, #0x10]
	bl sub_0204C124
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #0x80
	strh r0, [r4]
	mov r0, #0x34
	strh r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #7]
	add r0, sp, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_0204C124
	mov r0, #2
	strh r0, [r4, #4]
	mov r0, #0x80
	strh r0, [r4]
	mov r0, #0x60
	strh r0, [r4, #2]
	strb r7, [r4, #7]
	add r0, sp, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	str r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C520
	mov r0, #3
	strh r0, [r4, #4]
	ldr r2, _021A861C ; =0x021B2250
	strb r7, [r4, #7]
	add r1, sp, #0x20
_021A85BE:
	ldrh r0, [r2]
	add r2, r2, #2
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r1, #2
	sub r0, r0, #1
	str r0, [sp, #0x10]
	bne _021A85BE
	mov r4, #3
	add r0, r4, #0
	sub r0, #0xf
	add r0, r0, #2
	str r0, [sp, #0x14]
_021A85D8:
	lsl r1, r4, #2
	add r0, sp, #0x20
	mov r2, #0xb
	add r0, r0, r1
	mvn r2, r2
	ldrsh r3, [r0, r2]
	add r2, sp, #0x18
	add r7, r5, r1
	strh r3, [r2]
	ldr r2, [sp, #0x14]
	ldrsh r2, [r0, r2]
	add r0, sp, #0x18
	strh r2, [r0, #2]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r7, #0xc]
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #7
	blt _021A85D8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A861C: .word 0x021B2250
	thumb_func_end ovy257_21a84d4

	thumb_func_start ovy257_21a8620
ovy257_21a8620: ; 0x021A8620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A8626:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A8634
	bl sub_0204C108
_021A8634:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A8626
	ldr r0, [r5]
	bl sub_0204BCD0
	ldr r0, [r5, #4]
	bl sub_0204B98C
	ldr r0, [r5, #8]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8620

	thumb_func_start sub_021A8654
sub_021A8654: ; 0x021A8654
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A8654

	thumb_func_start ovy257_21a865c
ovy257_21a865c: ; 0x021A865C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #0xf
	strh r0, [r5, #0x24]
	ldr r0, [sp, #0x20]
	str r4, [r5, #4]
	str r0, [r5, #0x18]
	str r6, [r5]
	str r7, [r5, #0x10]
	add r4, sp, #0x20
	ldrh r1, [r4, #4]
	mov r0, #0x6d
	bl GFL_StrBufCreate
	str r0, [r5, #0x1c]
	ldrh r1, [r4, #4]
	mov r0, #0x6d
	bl GFL_StrBufCreate
	str r0, [r5, #0x20]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
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
	ldrh r1, [r5, #0x24]
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
	thumb_func_end ovy257_21a865c

	thumb_func_start ovy257_21a86ec
ovy257_21a86ec: ; 0x021A86EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02048210
	ldr r0, [r4, #0x20]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x1c]
	bl GFL_StrBufFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a86ec

	thumb_func_start ovy257_21a8710
ovy257_21a8710: ; 0x021A8710
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xc]
	ldr r4, [r5, #0x10]
	cmp r0, #0
	beq _021A8738
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A8738
	ldr r0, [r5, #8]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0xc]
_021A8738:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _021A8742
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8742:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8710

	thumb_func_start ovy257_21a8748
ovy257_21a8748: ; 0x021A8748
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8748

	thumb_func_start ovy257_21a8768
ovy257_21a8768: ; 0x021A8768
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A8776
	bl sub_020223CC
_021A8776:
	ldr r0, [r4, #4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy257_21a8768

	thumb_func_start ovy257_21a8788
ovy257_21a8788: ; 0x021A8788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	add r1, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	cmp r0, #0
	beq _021A87A6
	bl sub_020223CC
_021A87A6:
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x24]
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
	add r0, sp, #0x30
	ldrh r0, [r0]
	mov r7, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x24]
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
	ldr r0, [r5]
	mov r1, #0
	bl sub_02022410
	mov r0, #0x5a
	str r6, [r5, #8]
	strh r0, [r5, #0xc]
	strh r7, [r5, #0xe]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a8788

	thumb_func_start ovy257_21a880c
ovy257_21a880c: ; 0x021A880C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x30]
	ldr r2, [r4, #0x1c]
	add r7, r3, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r1, #0
	add r2, r7, #0
	mov r3, #1
	bl StringSetNumber
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5]
	cmp r0, #0
	beq _021A8848
	bl sub_020223CC
_021A8848:
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x24]
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
	add r0, sp, #0x30
	ldrh r0, [r0, #4]
	mov r7, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x20]
	bl sub_02022268
	str r0, [r5]
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	ldr r0, [r4, #0x14]
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5]
	mov r1, #0
	bl sub_02022410
	mov r0, #0x3c
	str r6, [r5, #8]
	strh r0, [r5, #0xc]
	strh r7, [r5, #0xe]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a880c

	thumb_func_start ovy257_21a88b0
ovy257_21a88b0: ; 0x021A88B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r3, #0
	add r1, r5, #0
	mul r1, r6
	lsl r1, r1, #1
	str r0, [sp, #0x20]
	blx DC_FlushRange
	mov r4, #0
	cmp r6, #0
	ble _021A88F8
	lsl r0, r5, #1
	str r0, [sp, #4]
	lsl r7, r7, #1
_021A88D6:
	add r0, r5, #0
	mul r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #4]
	add r0, r0, r1
	ldr r1, [sp]
	add r1, r4, r1
	lsl r1, r1, #9
	add r1, r7, r1
	bl GX_LoadBG3Scr
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _021A88D6
_021A88F8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a88b0

	thumb_func_start ovy257_21a88fc
ovy257_21a88fc: ; 0x021A88FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #6
	ldr r2, _021A8920 ; =0x021B2694
	ldr r3, _021A8924 ; =0x000004B3
	lsl r1, r1, #0xe
	bl sub_02042EA4
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #4]
	strb r0, [r5, #8]
	strh r0, [r5, #0xa]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_021A8920: .word 0x021B2694
_021A8924: .word 0x000004B3
	thumb_func_end ovy257_21a88fc

	thumb_func_start sub_021A8928
sub_021A8928: ; 0x021A8928
	ldr r0, [r0]
	ldr r3, _021A8930 ; =sub_02042ED0
	bx r3
	nop
_021A8930: .word sub_02042ED0
	thumb_func_end sub_021A8928

	thumb_func_start ovy257_21a8934
ovy257_21a8934: ; 0x021A8934
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	str r1, [sp, #0x24]
	add r0, r2, #0
	mov r1, #2
	ldr r2, _021A89F0 ; =0x021B2694
	ldr r3, _021A89F4 ; =0x000004D9
	lsl r1, r1, #0xe
	bl sub_02042EA4
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy257_2199e30
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021A8960
	add r0, sp, #0x28
	blx sub_021A8A00
_021A8960:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021A8974
	add r0, sp, #0x28
	mov r1, #0xff
	mov r2, #0xff
	blx sub_021A8A08
	b _021A8976
_021A8974:
	mov r0, #0
_021A8976:
	cmp r0, #0
	bne _021A897E
	bl OS_Terminate
_021A897E:
	mov r7, #1
	mov r4, #0
	lsl r7, r7, #8
_021A8984:
	add r0, r4, #0
	add r0, #0x20
	ldr r1, [r5]
	lsl r0, r0, #9
	add r0, r1, r0
	lsl r1, r4, #8
	add r0, #0x80
	add r1, r6, r1
	add r2, r7, #0
	blx MIi_CpuCopy32
	add r4, r4, #1
	cmp r4, #0x80
	blt _021A8984
	ldr r4, _021A89F8 ; =0x3F003AFB
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021A89D4
	ldr r0, _021A89FC ; =0x021B3D88
	ldr r0, [r0]
	cmp r0, #0
	bne _021A89D4
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r2, #0x80
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	mov r3, #0x80
	blx sub_021A8A10
_021A89D4:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021A89E0
	blx sub_021A8A18
_021A89E0:
	ldr r0, [r5, #0xc]
	bl ovy257_2199ddc
	add r0, r6, #0
	bl sub_02042ED0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A89F0: .word 0x021B2694
_021A89F4: .word 0x000004D9
_021A89F8: .word 0x3F003AFB
_021A89FC: .word 0x021B3D88
	thumb_func_end ovy257_21a8934

	arm_func_start sub_021A8A00
sub_021A8A00: ; 0x021A8A00
	ldr pc, _021A8A04 ; =sub_02707310
	.align 2, 0
_021A8A04: .word sub_02707310
	arm_func_end sub_021A8A00

	arm_func_start sub_021A8A08
sub_021A8A08: ; 0x021A8A08
	ldr pc, _021A8A0C ; =sub_027073B8
	.align 2, 0
_021A8A0C: .word sub_027073B8
	arm_func_end sub_021A8A08

	arm_func_start sub_021A8A10
sub_021A8A10: ; 0x021A8A10
	ldr pc, _021A8A14 ; =sub_02707494
	.align 2, 0
_021A8A14: .word sub_02707494
	arm_func_end sub_021A8A10

	arm_func_start sub_021A8A18
sub_021A8A18: ; 0x021A8A18
	ldr pc, _021A8A1C ; =sub_02707464
	.align 2, 0
_021A8A1C: .word sub_02707464
	arm_func_end sub_021A8A18

	thumb_func_start sub_021A8A20
sub_021A8A20: ; 0x021A8A20
	ldr r0, [r0, #0xc]
	ldr r3, _021A8A28 ; =ovy257_219a154
	bx r3
	nop
_021A8A28: .word ovy257_219a154
	thumb_func_end sub_021A8A20

	thumb_func_start sub_021A8A2C
sub_021A8A2C: ; 0x021A8A2C
	ldr r0, [r0, #0xc]
	ldr r3, _021A8A34 ; =ovy257_219a1b8
	bx r3
	nop
_021A8A34: .word ovy257_219a1b8
	thumb_func_end sub_021A8A2C

	thumb_func_start sub_021A8A38
sub_021A8A38: ; 0x021A8A38
	ldr r0, [r0, #0xc]
	ldr r3, _021A8A40 ; =sub_0219A330
	bx r3
	nop
_021A8A40: .word sub_0219A330
	thumb_func_end sub_021A8A38

	thumb_func_start sub_021A8A44
sub_021A8A44: ; 0x021A8A44
	ldr r0, [r0, #0xc]
	ldr r3, _021A8A4C ; =sub_0219A338
	bx r3
	nop
_021A8A4C: .word sub_0219A338
	thumb_func_end sub_021A8A44

	thumb_func_start ovy257_21a8a50
ovy257_21a8a50: ; 0x021A8A50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xf2
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r1, #9
	mov r2, #0
	add r3, r4, #0
	mov r7, #0
	bl sub_0204B600
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B600
	str r0, [r5, #4]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B600
	str r0, [r5, #8]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B600
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl GFL_ArcToolFree
	strb r7, [r5, #0x10]
	strh r7, [r5, #0x12]
	str r7, [r5, #0x14]
	strh r7, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8a50

	thumb_func_start ovy257_21a8aa8
ovy257_21a8aa8: ; 0x021A8AA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A8AAE:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A8AAE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8aa8

	thumb_func_start ovy257_21a8ac4
ovy257_21a8ac4: ; 0x021A8AC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #1
	bne _021A8B26
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq _021A8ADA
	sub r0, r0, #1
	strh r0, [r5, #0x12]
_021A8ADA:
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _021A8B26
	ldrb r1, [r5, #0x10]
	add r0, r4, #0
	add r1, r1, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021A8654
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl sub_0204C378
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x10]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x10]
	add r0, r4, #0
	add r1, r1, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021A8654
	mov r1, #1
	mov r2, #1
	bl sub_0204C378
	str r6, [r5, #0x14]
_021A8B26:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy257_21a8ac4

	thumb_func_start ovy257_21a8b28
ovy257_21a8b28: ; 0x021A8B28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r3, #0
	add r1, r5, #0
	mul r1, r6
	lsl r1, r1, #1
	str r0, [sp, #0x20]
	blx DC_FlushRange
	mov r4, #0
	cmp r6, #0
	ble _021A8B70
	lsl r0, r5, #1
	str r0, [sp, #4]
	lsl r7, r7, #1
_021A8B4E:
	add r0, r5, #0
	mul r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #4]
	add r0, r0, r1
	ldr r1, [sp]
	add r1, r4, r1
	lsl r1, r1, #9
	add r1, r7, r1
	bl GXS_LoadBG3Scr
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _021A8B4E
_021A8B70:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a8b28

	thumb_func_start sub_021A8B74
sub_021A8B74: ; 0x021A8B74
	strh r1, [r0, #0x12]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, _021A8B80 ; =0x0000054B
	ldr r3, _021A8B84 ; =GFL_SndSEPlay
	bx r3
	.align 2, 0
_021A8B80: .word 0x0000054B
_021A8B84: .word GFL_SndSEPlay
	thumb_func_end sub_021A8B74

	thumb_func_start sub_021A8B88
sub_021A8B88: ; 0x021A8B88
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021A8B88

	thumb_func_start ovy257_21a8b8c
ovy257_21a8b8c: ; 0x021A8B8C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	blx MI_CpuFill8
	strh r4, [r5]
	cmp r6, #1
	bne _021A8BB8
	ldr r0, _021A8BDC ; =0x00000619
	mov r1, #2
	str r0, [sp]
	ldr r3, _021A8BE0 ; =0x021B2694
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r5, #4]
_021A8BB8:
	mov r1, #0
	add r4, r1, #0
_021A8BBC:
	add r0, r5, r1
	strb r4, [r0, #0xa]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	blo _021A8BBC
	bl sub_02042A78
	str r0, [r5, #0x20]
	mov r0, #1
	strb r4, [r5, #0x14]
	str r0, [r5, #0x10]
	str r4, [r5, #0x1c]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A8BDC: .word 0x00000619
_021A8BE0: .word 0x021B2694
	thumb_func_end ovy257_21a8b8c

	thumb_func_start ovy257_21a8be4
ovy257_21a8be4: ; 0x021A8BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldrh r0, [r0]
	str r1, [sp, #4]
	mov r1, #0
	mov r5, #0
	bl sub_02043868
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r7, [sp]
	str r0, [sp, #0xc]
	add r0, #9
	mov r4, #0
	add r7, #8
	str r0, [sp, #0xc]
_021A8C0E:
	ldr r0, [sp, #8]
	cmp r0, r4
	beq _021A8C74
	add r0, r4, #0
	bl sub_02042A80
	cmp r0, #0
	bne _021A8C20
	b _021A8C6E
_021A8C20:
	mov r0, #0x18
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _021A8C56
	bl sub_020352E8
	cmp r0, #0
	bne _021A8C56
	ldr r2, [sp]
	mov r0, #2
	ldrh r2, [r2]
	ldr r3, [r6, #0xc]
	lsl r0, r0, #0xc
	add r1, r4, #0
	bl sub_020439A4
	mov r1, #1
	lsl r1, r4
	lsl r1, r1, #0x18
	ldrb r0, [r7]
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r7]
_021A8C56:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021A8C6E
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r1, r4
	lsl r1, r1, #0x18
	ldrb r0, [r0]
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, [sp, #0xc]
	strb r1, [r0]
_021A8C6E:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021A8C74:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A8C0E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8be4

	thumb_func_start ovy257_21a8c84
ovy257_21a8c84: ; 0x021A8C84
	push {r3, lr}
	cmp r1, #1
	bne _021A8C90
	ldr r0, [r0, #4]
	bl GFL_HeapFree
_021A8C90:
	bl sub_020438DC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8c84

	thumb_func_start ovy257_21a8c98
ovy257_21a8c98: ; 0x021A8C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #0x18]
	str r1, [sp]
	cmp r0, #1
	beq _021A8CAC
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _021A8CAE
_021A8CAC:
	b _021A8DBC
_021A8CAE:
	ldrb r0, [r6, #0x15]
	cmp r0, #3
	bls _021A8CB6
	b _021A8DBC
_021A8CB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A8CC2: ; jump table
	.short _021A8CCA - _021A8CC2 - 2 ; case 0
	.short _021A8D6C - _021A8CC2 - 2 ; case 1
	.short _021A8D8C - _021A8CC2 - 2 ; case 2
	.short _021A8DBC - _021A8CC2 - 2 ; case 3
_021A8CCA:
	mov r0, #0
	str r0, [sp, #8]
	mov r7, #0
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #4]
	bl sub_020352E8
	cmp r0, #0
	bne _021A8D58
	add r4, r7, #0
_021A8CE4:
	mov r0, #1
	ldrb r1, [r6, #8]
	lsl r0, r4
	tst r1, r0
	beq _021A8D42
	add r5, r6, r7
	ldrb r2, [r6, #0xd]
	ldrb r1, [r5, #0xa]
	cmp r2, r1
	beq _021A8D04
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #8]
	orr r0, r1
	str r0, [sp, #8]
	b _021A8D42
_021A8D04:
	add r0, r4, #0
	bl sub_02043B24
	cmp r0, #1
	bne _021A8D42
	add r0, r4, #0
	bl sub_02043A1C
	ldrb r0, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xa]
	ldrb r5, [r5, #0xa]
	cmp r5, #3
	bhs _021A8D42
	mov r3, #0x18
	mul r3, r7
	str r3, [sp, #0xc]
	lsl r3, r5, #2
	mov ip, r3
	ldr r5, [sp]
	ldr r3, [sp, #0xc]
	mov r0, #2
	add r5, r5, r3
	mov r3, ip
	add r3, r3, r5
	ldrh r2, [r6]
	ldr r3, [r3, #0xc]
	lsl r0, r0, #0xc
	add r1, r4, #0
	bl sub_020439A4
_021A8D42:
	ldr r0, [sp, #4]
	cmp r0, r4
	beq _021A8D4E
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021A8D4E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A8CE4
_021A8D58:
	ldrb r1, [r6, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _021A8DBC
	mov r0, #1
	strb r0, [r6, #0x15]
	bl sub_02043B10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021A8D6C:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _021A8DBC
	bl sub_02040440
	ldrb r1, [r6, #0xd]
	mov r2, #0x20
	add r1, #0x20
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040624
	mov r0, #2
	add sp, #0x10
	strb r0, [r6, #0x15]
	pop {r3, r4, r5, r6, r7, pc}
_021A8D8C:
	bl sub_02040440
	ldrb r1, [r6, #0xd]
	mov r2, #0x20
	add r1, #0x20
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040664
	cmp r0, #1
	bne _021A8DBC
	mov r0, #0
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0xd]
	mov r1, #1
	str r1, [r6, #0x10]
	add r0, r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	bne _021A8DBC
	mov r0, #3
	str r1, [r6, #0x18]
	strb r0, [r6, #0x15]
_021A8DBC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21a8c98

	thumb_func_start ovy257_21a8dc0
ovy257_21a8dc0: ; 0x021A8DC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r2, [r5, #9]
	mov r1, #2
	ldr r0, [r5, #4]
	lsl r1, r1, #0xc
	mov r3, #0
	mov r4, #0
	bl sub_0204393C
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a8dc0

	thumb_func_start ovy257_21a8dd8
ovy257_21a8dd8: ; 0x021A8DD8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02043B10
	cmp r0, #0
	bne _021A8DE8
	mov r0, #0
	pop {r4, pc}
_021A8DE8:
	ldrb r0, [r4, #0x14]
	cmp r0, #0x50
	bhs _021A8DF6
	add r0, r0, #1
	strb r0, [r4, #0x14]
	mov r0, #0
	pop {r4, pc}
_021A8DF6:
	ldr r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8dd8

	thumb_func_start sub_021A8DFC
sub_021A8DFC: ; 0x021A8DFC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A8DFC

	thumb_func_start sub_021A8E00
sub_021A8E00: ; 0x021A8E00
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A8E00

	thumb_func_start sub_021A8E04
sub_021A8E04: ; 0x021A8E04
	mov r2, #2
	ldr r0, [r0, #4]
	ldr r3, _021A8E10 ; =MIi_CpuCopy32
	lsl r2, r2, #0xc
	bx r3
	nop
_021A8E10: .word MIi_CpuCopy32
	thumb_func_end sub_021A8E04

	thumb_func_start ovy257_21a8e14
ovy257_21a8e14: ; 0x021A8E14
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042A78
	ldr r1, [r4, #0x20]
	cmp r1, r0
	beq _021A8E26
	mov r0, #1
	pop {r4, pc}
_021A8E26:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8e14

	thumb_func_start ovy257_21a8e2c
ovy257_21a8e2c: ; 0x021A8E2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_021A8E6C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy257_21a8e2c

	thumb_func_start sub_021A8E48
sub_021A8E48: ; 0x021A8E48
	ldr r3, _021A8E50 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_021A8E50: .word MI_CpuFill8
	thumb_func_end sub_021A8E48

	thumb_func_start ovy257_21a8e54
ovy257_21a8e54: ; 0x021A8E54
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021A8E66
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_021A8E66:
	pop {r3, pc}
	thumb_func_end ovy257_21a8e54

	thumb_func_start sub_021A8E68
sub_021A8E68: ; 0x021A8E68
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A8E68

	thumb_func_start sub_021A8E6C
sub_021A8E6C: ; 0x021A8E6C
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021A8E6C
_021A8E74:
	.byte 0x01, 0x21, 0x41, 0x60, 0x70, 0x47, 0x00, 0x00, 0x00, 0x4B, 0x18, 0x47
	.byte 0x75, 0x8E, 0x1A, 0x02

	thumb_func_start ovy257_21a8e84
ovy257_21a8e84: ; 0x021A8E84
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r6]
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #4
	bhi _021A8F60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A8E9E: ; jump table
	.short _021A8EA8 - _021A8E9E - 2 ; case 0
	.short _021A8EF0 - _021A8E9E - 2 ; case 1
	.short _021A8F02 - _021A8E9E - 2 ; case 2
	.short _021A8F18 - _021A8E9E - 2 ; case 3
	.short _021A8F36 - _021A8E9E - 2 ; case 4
_021A8EA8:
	bl sub_02040440
	bl sub_02042A6C
	add r5, r0, #0
	mov r7, #1
	bl sub_02043B10
	cmp r0, #0
	bne _021A8EBE
	mov r7, #0
_021A8EBE:
	mov r4, #0
_021A8EC0:
	cmp r5, r4
	beq _021A8EDC
	add r0, r4, #0
	bl sub_02042A80
	cmp r0, #0
	beq _021A8EDC
	add r0, r4, #0
	bl sub_02043B24
	cmp r0, #0
	bne _021A8EDC
	mov r7, #0
	b _021A8EE6
_021A8EDC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A8EC0
_021A8EE6:
	cmp r7, #1
	bne _021A8F60
	mov r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A8EF0:
	bl sub_02040440
	mov r1, #0x1e
	mov r2, #0x20
	bl sub_02040624
	mov r0, #2
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A8F02:
	bl sub_02040440
	mov r1, #0x1e
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A8F60
	mov r0, #3
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A8F18:
	bl sub_020438DC
	add r0, r4, #0
	add r0, #0xe0
	ldr r2, [r0]
	add r4, #0x74
	add r1, r2, #0
	ldr r2, [r2]
	add r0, r4, #0
	add r1, #0x14
	bl ovy257_21a8be4
	mov r0, #4
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A8F36:
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #0
	beq _021A8F54
	bl ovy257_21aab64
	cmp r0, #1
	bne _021A8F50
	add r0, r5, #0
	ldr r1, _021A8F64 ; =ovy257_21a9038
	b _021A8F56
_021A8F50:
	add r0, r5, #0
	b _021A8F54
_021A8F54:
	ldr r1, _021A8F68 ; =ovy257_21a9320
_021A8F56:
	bl sub_021A8E6C
	mov r0, #1
	add r4, #0x90
	str r0, [r4]
_021A8F60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8F64: .word ovy257_21a9038
_021A8F68: .word ovy257_21a9320
	thumb_func_end ovy257_21a8e84

	thumb_func_start ovy257_21a8f6c
ovy257_21a8f6c: ; 0x021A8F6C
	push {r3, r4, r5, lr}
	add r2, #0x74
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021A8E00
	cmp r0, #0
	beq _021A8FBE
	ldr r0, [r4]
	cmp r0, #0
	beq _021A8F8E
	cmp r0, #1
	beq _021A8FA0
	cmp r0, #2
	beq _021A8FB6
	pop {r3, r4, r5, pc}
_021A8F8E:
	bl sub_02040440
	mov r1, #0x1f
	mov r2, #0x20
	bl sub_02040624
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A8FA0:
	bl sub_02040440
	mov r1, #0x1f
	mov r2, #0x20
	bl sub_02040664
	cmp r0, #1
	bne _021A8FBE
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A8FB6:
	ldr r1, _021A8FC0 ; =0x021A8E7D
	add r0, r5, #0
	bl sub_021A8E6C
_021A8FBE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A8FC0: .word 0x021A8E7D
	thumb_func_end ovy257_21a8f6c

	thumb_func_start ovy257_21a8fc4
ovy257_21a8fc4: ; 0x021A8FC4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	ldr r0, [r5]
	add r4, #0xc0
	cmp r0, #0
	beq _021A8FDE
	cmp r0, #1
	beq _021A8FFE
	cmp r0, #2
	beq _021A9012
	pop {r4, r5, r6, pc}
_021A8FDE:
	ldr r0, [r4]
	bl sub_020223B4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_0203A7F4
	cmp r6, #0
	beq _021A9034
	cmp r6, #1
	beq _021A9034
	cmp r6, #2
	bne _021A9034
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A8FFE:
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	cmp r1, r0
	blo _021A900C
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A900C:
	add r0, r1, #1
	strh r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_021A9012:
	ldr r0, [r4]
	bl sub_02022458
	cmp r0, #1
	bne _021A9022
	ldr r0, [r4]
	bl sub_0202243C
_021A9022:
	ldr r0, [r4]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4]
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl sub_021A8E6C
_021A9034:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21a8fc4

	thumb_func_start ovy257_21a9038
ovy257_21a9038: ; 0x021A9038
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	bl sub_021A8654
	mov r1, #1
	bl sub_0204C124
	ldrh r0, [r4]
	ldr r2, _021A906C ; =ovy257_21a9074
	mov r3, #0x31
	str r0, [sp]
	add r0, r4, #0
	add r4, #0x98
	add r0, #0xc0
	add r1, r4, #0
	bl ovy257_21a8788
	ldr r1, _021A9070 ; =ovy257_21a8fc4
	add r0, r5, #0
	bl sub_021A8E6C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A906C: .word ovy257_21a9074
_021A9070: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a9038

	thumb_func_start ovy257_21a9074
ovy257_21a9074: ; 0x021A9074
	push {r4, lr}
	sub sp, #8
	add r3, r2, #0
	add r4, r0, #0
	mov r0, #0x32
	str r0, [sp]
	ldrh r0, [r3]
	add r1, r3, #0
	ldr r2, _021A90A8 ; =ovy257_21a90b0
	str r0, [sp, #4]
	add r0, r3, #0
	add r3, #0x50
	ldrb r3, [r3]
	add r0, #0xc0
	add r1, #0x98
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy257_21a880c
	ldr r1, _021A90AC ; =ovy257_21a8fc4
	add r0, r4, #0
	bl sub_021A8E6C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A90A8: .word ovy257_21a90b0
_021A90AC: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a9074

	thumb_func_start ovy257_21a90b0
ovy257_21a90b0: ; 0x021A90B0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r4, r0, #0
	ldrh r0, [r6]
	add r3, r6, #0
	add r3, #0xe0
	str r0, [sp]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r6, #0
	add r6, #0x50
	ldrb r6, [r6]
	ldr r3, [r3, #0x60]
	mov r5, #6
	mul r5, r3
	ldr r3, _021A90F0 ; =0x021B2244
	lsl r6, r6, #1
	add r3, r3, r5
	ldrh r3, [r6, r3]
	ldr r2, _021A90F4 ; =ovy257_21a90fc
	add r0, #0xc0
	add r1, #0x98
	bl ovy257_21a8788
	ldr r1, _021A90F8 ; =ovy257_21a8fc4
	add r0, r4, #0
	bl sub_021A8E6C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A90F0: .word 0x021B2244
_021A90F4: .word ovy257_21a90fc
_021A90F8: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a90b0

	thumb_func_start ovy257_21a90fc
ovy257_21a90fc: ; 0x021A90FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #7
	bhi _021A9190
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A9118: ; jump table
	.short _021A9128 - _021A9118 - 2 ; case 0
	.short _021A9152 - _021A9118 - 2 ; case 1
	.short _021A91D4 - _021A9118 - 2 ; case 2
	.short _021A9206 - _021A9118 - 2 ; case 3
	.short _021A9240 - _021A9118 - 2 ; case 4
	.short _021A92CA - _021A9118 - 2 ; case 5
	.short _021A927E - _021A9118 - 2 ; case 6
	.short _021A92AE - _021A9118 - 2 ; case 7
_021A9128:
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	bl sub_021A8654
	mov r1, #1
	mov r6, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	bl sub_021A8654
	bl sub_0204C56C
	ldr r0, _021A92E0 ; =0x0000054B
	str r6, [r5]
	bl GFL_SndSEPlay
	b _021A92CA
_021A9152:
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x52
	ldrh r6, [r0]
	mov r1, #0x3c
	add r0, r6, #0
	blx sub_0208D65C
	cmp r1, #0
	bne _021A917C
	cmp r6, #0xb4
	bhi _021A917C
	ldr r0, _021A92E0 ; =0x0000054B
	bl GFL_SndSEPlay
_021A917C:
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	mov r6, #2
	bl sub_021A8654
	bl sub_0204C560
	cmp r0, #0
	beq _021A9192
_021A9190:
	b _021A92CA
_021A9192:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x48
	bl sub_021A8A2C
	add r0, r4, #0
	add r0, #0x1c
	add r1, r6, #0
	bl sub_021A8654
	mov r1, #0
	bl sub_0204C124
	mov r0, #6
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _021A92E4 ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #0
	bl GFL_FadeScreenSet
	add r0, r4, #0
	add r0, #0x48
	bl sub_021A8A38
	str r6, [r5]
	b _021A92CA
_021A91D4:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A92CA
	add r0, r4, #0
	add r0, #0x48
	bl sub_021A8A44
	cmp r0, #0
	bne _021A92CA
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _021A92E4 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #1
	bl GFL_FadeScreenSet
	mov r0, #3
_021A9202:
	str r0, [r5]
	b _021A92CA
_021A9206:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A92CA
	add r0, r4, #0
	add r0, #0x74
	bl sub_021A8DFC
	add r1, r0, #0
	add r0, r4, #0
	ldrh r2, [r4]
	add r0, #0x48
	bl ovy257_21a8934
	add r1, r4, #0
	add r1, #0xe0
	ldr r2, [r1]
	add r1, r4, #0
	add r1, #0x50
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0x74
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #8]
	bl sub_021A8E04
	mov r0, #4
	b _021A9202
_021A9240:
	add r0, r4, #0
	add r0, #0x74
	bl ovy257_21a8dc0
	add r0, r4, #0
	add r0, #0x74
	bl sub_021A8DFC
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x50
	ldrb r1, [r0]
	mov r0, #0x48
	mov r2, #0x40
	mul r0, r1
	add r0, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r3, #0x40
	bl ovy257_21a88b0
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x50
	strb r1, [r0]
	mov r0, #6
	b _021A9202
_021A927E:
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #3
	bne _021A928C
	mov r0, #7
	b _021A9202
_021A928C:
	add r0, r4, #0
	add r0, #0x74
	bl ovy257_21a8dd8
	cmp r0, #1
	bne _021A92CA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x48
	bl sub_021A8A20
	add r0, r6, #0
	ldr r1, _021A92E8 ; =ovy257_21a9074
	b _021A92C6
_021A92AE:
	ldrh r0, [r4]
	add r1, r4, #0
	ldr r2, _021A92EC ; =0x021A92F5
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	add r1, #0x98
	mov r3, #0x3a
	bl ovy257_21a8788
	ldr r1, _021A92F0 ; =ovy257_21a8fc4
	add r0, r6, #0
_021A92C6:
	bl sub_021A8E6C
_021A92CA:
	add r0, r4, #0
	add r0, #0x98
	bl ovy257_21a8710
	add r4, #0xe0
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl ovy257_2199cb4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A92E0: .word 0x0000054B
_021A92E4: .word 0x00007FFF
_021A92E8: .word ovy257_21a9074
_021A92EC: .word 0x021A92F5
_021A92F0: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a90fc
_021A92F4:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x6D, 0x8F, 0x1A, 0x02
	.byte 0x6D, 0x8E, 0x1A, 0x02

	thumb_func_start ovy257_21a9304
ovy257_21a9304: ; 0x021A9304
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _021A931C
	mov r2, #6
	ldr r1, [r4]
	lsl r2, r2, #0xe
	blx MIi_CpuCopy32
	mov r0, #1
	str r0, [r4, #4]
_021A931C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy257_21a9304

	thumb_func_start ovy257_21a9320
ovy257_21a9320: ; 0x021A9320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r4, r6, #0
	str r0, [sp, #0xc]
	mov r5, #3
	add r4, #0x1c
	mov r7, #1
_021A9330:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A8654
	add r1, r7, #0
	bl sub_0204C124
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	blo _021A9330
	ldrh r1, [r6]
	mov r0, #0xf2
	bl GFL_ArcSysCreateFileHandle
	mov r5, #0
	str r5, [sp]
	ldrh r1, [r6]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #0
	add r4, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r5, [sp]
	str r5, [sp, #4]
	ldrh r0, [r6]
	mov r1, #2
	mov r2, #4
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	ldrh r0, [r6]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #4
	add r1, r7, #0
	bl sub_02044C98
	ldr r0, [sp, #0xc]
	ldr r1, _021A93A8 ; =ovy257_21a93ac
	bl sub_021A8E6C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A93A8: .word ovy257_21a93ac
	thumb_func_end ovy257_21a9320

	thumb_func_start ovy257_21a93ac
ovy257_21a93ac: ; 0x021A93AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x68
	ldrb r3, [r0]
	add r5, r1, #0
	mov r0, #0x1f
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	ror r1, r0
	add r1, r2, r1
	mov r0, #0x76
	mul r0, r1
	add r0, #0x2a
	lsl r0, r0, #0x10
	lsr r2, r3, #1
	mov r1, #0x5e
	mul r1, r2
	add r1, #0x12
	lsl r1, r1, #0x10
	ldr r2, [r5]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	cmp r2, #4
	bhi _021A9464
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A93F0: ; jump table
	.short _021A93FA - _021A93F0 - 2 ; case 0
	.short _021A940C - _021A93F0 - 2 ; case 1
	.short _021A941C - _021A93F0 - 2 ; case 2
	.short _021A942C - _021A93F0 - 2 ; case 3
	.short _021A943C - _021A93F0 - 2 ; case 4
_021A93FA:
	ldr r2, [r4, #0x58]
	mov r3, #0x40
	str r2, [sp]
	mov r2, #0x40
	bl ovy257_21a8b28
	mov r0, #1
_021A9408:
	str r0, [r5]
	b _021A9464
_021A940C:
	ldr r2, [r4, #0x5c]
	mov r3, #0x40
	str r2, [sp]
	mov r2, #0x40
	bl ovy257_21a8b28
	mov r0, #3
	b _021A9408
_021A941C:
	ldr r2, [r4, #0x60]
	mov r3, #0x40
	str r2, [sp]
	mov r2, #0x40
	bl ovy257_21a8b28
	mov r0, #4
	b _021A9408
_021A942C:
	ldr r2, [r4, #0x64]
	mov r3, #0x40
	str r2, [sp]
	mov r2, #0x40
	bl ovy257_21a8b28
	mov r0, #2
	b _021A9408
_021A943C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x68
	strb r1, [r0]
	ldrh r0, [r4]
	ldr r2, _021A9474 ; =ovy257_21a947c
	mov r3, #0x37
	str r0, [sp]
	add r0, r4, #0
	add r4, #0x98
	add r0, #0xc0
	add r1, r4, #0
	bl ovy257_21a8788
	ldr r1, _021A9478 ; =ovy257_21a8fc4
	add r0, r6, #0
	bl sub_021A8E6C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021A9464:
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	add r4, #0x68
	add r0, r0, #1
	strb r0, [r4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A9474: .word ovy257_21a947c
_021A9478: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a93ac

	thumb_func_start ovy257_21a947c
ovy257_21a947c: ; 0x021A947C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r2]
	mov r3, #0x38
	str r0, [sp]
	add r0, r2, #0
	add r2, #0x98
	add r1, r2, #0
	ldr r2, _021A94A4 ; =ovy257_21a94ac
	add r0, #0xc0
	bl ovy257_21a8788
	ldr r1, _021A94A8 ; =ovy257_21a8fc4
	add r0, r4, #0
	bl sub_021A8E6C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021A94A4: .word ovy257_21a94ac
_021A94A8: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a947c

	thumb_func_start ovy257_21a94ac
ovy257_21a94ac: ; 0x021A94AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _021A9554
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A94C8: ; jump table
	.short _021A94D2 - _021A94C8 - 2 ; case 0
	.short _021A950A - _021A94C8 - 2 ; case 1
	.short _021A955A - _021A94C8 - 2 ; case 2
	.short _021A95B8 - _021A94C8 - 2 ; case 3
	.short _021A9614 - _021A94C8 - 2 ; case 4
_021A94D2:
	add r0, r4, #0
	add r0, #0x58
	bl sub_021A8B88
	cmp r0, #0
	bne _021A94E8
	add r0, r4, #0
	add r0, #0x58
	mov r1, #5
	bl sub_021A8B74
_021A94E8:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	blo _021A9554
	mov r0, #1
_021A9506:
	str r0, [r5]
	b _021A967E
_021A950A:
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	sub r0, r1, r0
	mov r1, #0x19
	blx sub_0208D65C
	add r0, r0, #5
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	add r0, #0x58
	bl sub_021A8B88
	cmp r0, #0
	bne _021A9538
	add r0, r4, #0
	add r0, #0x58
	add r1, r6, #0
	bl sub_021A8B74
_021A9538:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	mov r0, #0x2d
	lsl r0, r0, #4
	cmp r1, r0
	bhs _021A9556
_021A9554:
	b _021A967E
_021A9556:
	mov r0, #2
	b _021A9506
_021A955A:
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	sub r0, r1, r0
	mov r1, #0x19
	blx sub_0208D65C
	add r0, r0, #5
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	add r0, #0x68
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r1, r0
	beq _021A959C
	add r0, r4, #0
	add r0, #0x58
	bl sub_021A8B88
	cmp r0, #0
	bne _021A967E
	add r0, r4, #0
	add r0, #0x58
	add r1, r6, #0
	bl sub_021A8B74
	b _021A967E
_021A959C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	strb r1, [r0]
	str r1, [r4, #0x6c]
	mov r0, #3
	str r0, [r5]
	ldr r0, _021A969C ; =0x0000054E
	bl GFL_SndSEPlay
	b _021A967E
_021A95B8:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	mov r1, #6
	blx sub_0208D65C
	cmp r1, #0
	bne _021A95F8
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0x72
	ldrb r2, [r0]
	mov r0, #1
	eor r2, r0
	add r0, r4, #0
	add r0, #0x72
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x1c
	bl sub_021A8654
	add r1, r4, #0
	add r1, #0x72
	ldrb r1, [r1]
	mov r2, #1
	bl sub_0204C378
_021A95F8:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0x50
	bls _021A967E
	mov r0, #4
	b _021A9506
_021A9614:
	ldr r3, _021A96A0 ; =0x021B2260
	add r2, sp, #8
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r5, #0
_021A9624:
	add r1, r4, #0
	add r1, #0x68
	ldrb r1, [r1]
	ldrh r3, [r4]
	mov r0, #0xf2
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	mov r2, #0
	add r1, r5, r1
	bl sub_0204B4E4
	add r6, r0, #0
	mov r0, #0x48
	mul r0, r5
	add r0, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #0x40
	mov r3, #0x40
	str r6, [sp]
	bl ovy257_21a88b0
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A9624
	ldrh r0, [r4]
	add r1, r4, #0
	ldr r2, _021A96A4 ; =ovy257_21a96ac
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	add r1, #0x98
	mov r3, #0x39
	bl ovy257_21a8788
	ldr r0, [sp, #4]
	ldr r1, _021A96A8 ; =ovy257_21a8fc4
	bl sub_021A8E6C
_021A967E:
	add r0, r4, #0
	add r0, #0x98
	bl ovy257_21a8710
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x58
	add r1, #0x1c
	bl ovy257_21a8ac4
	mov r0, #0
	add r4, #0x84
	str r0, [r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A969C: .word 0x0000054E
_021A96A0: .word 0x021B2260
_021A96A4: .word ovy257_21a96ac
_021A96A8: .word ovy257_21a8fc4
	thumb_func_end ovy257_21a94ac

	thumb_func_start ovy257_21a96ac
ovy257_21a96ac: ; 0x021A96AC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl sub_021A8E00
	cmp r0, #1
	bne _021A96C6
	ldr r1, _021A96D0 ; =ovy257_21a8f6c
	add r0, r5, #0
	bl sub_021A8E6C
_021A96C6:
	mov r0, #0
	add r4, #0x84
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_021A96D0: .word ovy257_21a8f6c
	thumb_func_end ovy257_21a96ac

	thumb_func_start ovy257_21a96d4
ovy257_21a96d4: ; 0x021A96D4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	bne _021A96FC
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021A96FC
	mov r6, #6
	lsl r6, r6, #0xe
	add r1, r6, #0
	blx DC_FlushRange
	ldr r0, [r5, #0x48]
	mov r1, #0
	add r2, r6, #0
	mov r4, #0
	bl GXS_LoadBG3Scr
	str r4, [r5, #0x4c]
_021A96FC:
	bl sub_0204B7C8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21a96d4

	thumb_func_start ovy257_21a9704
ovy257_21a9704: ; 0x021A9704
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x6d
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021A9774 ; =0x021B26A4
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	blx MI_CpuFill8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021A9778 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2]
	ldr r2, _021A977C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A9780 ; =0x021B22AC
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
	bl ovy257_21a97dc
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy257_21a9874
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9774: .word 0x021B26A4
_021A9778: .word 0xFFFF1FFF
_021A977C: .word 0x04001000
_021A9780: .word 0x021B22AC
	thumb_func_end ovy257_21a9704

	thumb_func_start ovy257_21a9784
ovy257_21a9784: ; 0x021A9784
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ovy257_21a98b4
	add r0, r4, #0
	bl ovy257_21a983c
	bl sub_020232D8
	ldr r5, _021A97C4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A97C8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A97CC ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0xc
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A97C4: .word 0x04000050
_021A97C8: .word 0x04001050
_021A97CC: .word 0xFFFF1FFF
	thumb_func_end ovy257_21a9784

	thumb_func_start sub_021A97D0
sub_021A97D0: ; 0x021A97D0
	ldr r3, _021A97D8 ; =sub_021A98D0
	add r0, r0, #4
	bx r3
	nop
_021A97D8: .word sub_021A98D0
	thumb_func_end sub_021A97D0

	thumb_func_start ovy257_21a97dc
ovy257_21a97dc: ; 0x021A97DC
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
	ldr r0, _021A9834 ; =0x021B2280
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021A9838 ; =0x021B22DC
_021A97FE:
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
	blo _021A97FE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9834: .word 0x021B2280
_021A9838: .word 0x021B22DC
	thumb_func_end ovy257_21a97dc

	thumb_func_start ovy257_21a983c
ovy257_21a983c: ; 0x021A983C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A9870 ; =0x021B22DC
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A9846:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021A9846
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9870: .word 0x021B22DC
	thumb_func_end ovy257_21a983c

	thumb_func_start ovy257_21a9874
ovy257_21a9874: ; 0x021A9874
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A98B0 ; =0x021B2290
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x10
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
_021A98B0: .word 0x021B2290
	thumb_func_end ovy257_21a9874

	thumb_func_start ovy257_21a98b4
ovy257_21a98b4: ; 0x021A98B4
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
	thumb_func_end ovy257_21a98b4

	thumb_func_start sub_021A98D0
sub_021A98D0: ; 0x021A98D0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A98D0

	thumb_func_start ovy257_21a98d4
ovy257_21a98d4: ; 0x021A98D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r6, #0
	mov r7, #1
	strb r7, [r4, #0x18]
	strb r6, [r4, #0x19]
	str r6, [r4, #0x1c]
	bl ovy257_21a9fb4
	add r0, r4, #0
	bl ovy257_21aa220
	add r0, r4, #0
	bl ovy257_21aa5a0
	ldrh r0, [r4]
	mov r5, #0x72
	lsl r5, r5, #2
	str r0, [sp]
	add r3, r5, #0
	add r3, #8
	ldr r2, [r4, r5]
	ldr r3, [r4, r3]
	mov r0, #4
	mov r1, #7
	bl sub_0202E168
	add r1, r5, #0
	add r1, #0xc
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_219a850
	add r1, r5, #0
	add r1, #0x18
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_219b5b8
	add r1, r5, #0
	add r1, #0x1c
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_219cd74
	add r1, r5, #0
	add r1, #0x20
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_219f234
	add r1, r5, #0
	add r1, #0x24
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_21a0ac4
	add r1, r5, #0
	add r1, #0x28
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, r4, #0
	bl ovy257_21a22bc
	add r1, r5, #0
	add r1, #0x2c
	str r0, [r4, r1]
	ldrh r1, [r4]
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #2
	strb r1, [r0, #2]
	mov r1, #0x64
	strh r1, [r0, #4]
	strh r6, [r0, #6]
	add r1, #0x9c
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	mov r1, #0xc0
	strh r1, [r0, #0xc]
	add r0, sp, #0xc
	bl ovy257_219a550
	add r1, r5, #0
	add r1, #0x34
	str r0, [r4, r1]
	ldr r0, _021A9AE8 ; =ovy257_21a9f84
	add r1, r4, #0
	mov r2, #8
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	str r6, [r4, #8]
	strh r6, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r7, [r4, #0x10]
	str r6, [r4, #0x20]
	str r6, [r4, #0x24]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	str r6, [r4, #0x30]
	str r6, [r4, #0x34]
	add r5, #0x30
	str r6, [r4, r5]
	bl sub_020352E8
	cmp r0, #1
	bne _021A99BA
	str r7, [r4, #0x30]
_021A99BA:
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r5, #2
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	ldr r0, [r0, #4]
	cmp r0, #3
	bhi _021A9A44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A99DA: ; jump table
	.short _021A99E2 - _021A99DA - 2 ; case 0
	.short _021A99F2 - _021A99DA - 2 ; case 1
	.short _021A9A04 - _021A99DA - 2 ; case 2
	.short _021A9A34 - _021A99DA - 2 ; case 3
_021A99E2:
	sub r5, #0x1c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #3
	bl sub_0219BB1C
	mov r0, #1
	b _021A9A42
_021A99F2:
	sub r5, #0x1c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #2
	mov r5, #2
	bl sub_0219BB1C
	str r5, [r4, #0xc]
	b _021A9A44
_021A9A04:
	add r1, r5, #0
	sub r1, #0x1c
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #4
	bl sub_0219BB1C
	add r1, r5, #0
	sub r1, #0x1c
	ldr r2, [r4, r5]
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, #8
	bl ovy257_219bb2c
	mov r0, #2
	str r0, [r4, #0xc]
	ldr r0, [r4, r5]
	ldr r0, [r0]
	bl sub_0201749C
	bl sub_0202ECF4
	b _021A9A44
_021A9A34:
	sub r5, #0x1c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #5
	bl sub_0219BB1C
	mov r0, #2
_021A9A42:
	str r0, [r4, #0xc]
_021A9A44:
	mov r6, #2
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0xa
	mov r3, #0xc
	mov r5, #0
	bl BmpWin_CreateDynamic
	mov r7, #0x6e
	lsl r7, r7, #2
	str r0, [r4, r7]
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x12
	mov r2, #0xa
	mov r3, #0xc
	bl BmpWin_CreateDynamic
	add r1, r7, #4
	str r0, [r4, r1]
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x16
	mov r3, #0xc
	bl BmpWin_CreateDynamic
	add r1, r7, #0
	add r1, #8
	str r0, [r4, r1]
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x12
	mov r2, #0x16
	mov r3, #0xc
	bl BmpWin_CreateDynamic
	add r1, r7, #0
	add r1, #0xc
	str r0, [r4, r1]
	add r6, r5, #0
_021A9AB8:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r7]
	bl BmpWin_GetBitmap
	add r1, r6, #0
	bl BmpWin_BitmapFill
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021A9AB8
	mov r0, #0x6d
	lsl r0, r0, #2
	strb r6, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	ldr r0, _021A9AEC ; =0x000003E9
	ldr r1, _021A9AF0 ; =0x0000FFFF
	bl sub_02005DF4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A9AE8: .word ovy257_21a9f84
_021A9AEC: .word 0x000003E9
_021A9AF0: .word 0x0000FFFF
	thumb_func_end ovy257_21a98d4

	thumb_func_start ovy257_21a9af4
ovy257_21a9af4: ; 0x021A9AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_021AAA54
	str r0, [sp, #0xc]
	mov r4, #0
	add r0, r5, #0
	str r4, [r5, #0x1c]
	bl ovy257_21a9fb4
	add r0, r5, #0
	bl ovy257_21aa220
	mov r6, #0x77
	lsl r6, r6, #2
	ldr r0, _021A9C70 ; =ovy257_21a9f84
	add r1, r5, #0
	mov r2, #8
	str r4, [r5, r6]
	bl GFL_VBlankTCBAdd
	mov r7, #1
	str r0, [r5, #4]
	strh r4, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r7, [r5, #0x10]
	str r4, [r5, #0x20]
	str r4, [r5, #0x24]
	str r4, [r5, #0x28]
	str r4, [r5, #0x2c]
	str r4, [r5, #0x34]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0xa
	mov r3, #0xc
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x24
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x12
	mov r2, #0xa
	mov r3, #0xc
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x20
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x16
	mov r3, #0xc
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x12
	mov r2, #0x16
	mov r3, #0xc
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r6, #0
	sub r1, #0x18
	str r0, [r5, r1]
	add r7, r4, #0
	sub r6, #0x24
_021A9BA8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A9BA8
	mov r4, #0x6d
	lsl r4, r4, #2
	strb r7, [r5, r4]
	add r0, r4, #1
	strb r7, [r5, r0]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r3, #5
	lsl r6, r3, #6
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r2, r7, #0
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	bl sub_020232D8
	ldrh r0, [r5]
	add r1, r6, #0
	mov r2, #9
	str r0, [sp]
	mov r0, #4
	add r3, r7, #0
	bl sub_02024D00
	ldrh r0, [r5]
	mov r1, #4
	lsl r1, r1, #7
	str r0, [sp]
	add r0, r7, #0
	mov r2, #9
	add r3, r7, #0
	bl sub_02024D00
	ldrh r0, [r5]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r2, #0x14
	add r3, #0x1c
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	mov r0, #4
	mov r1, #7
	bl sub_0202E168
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x2c
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219b52c
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_02043868
	add r4, #0x30
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy257_219cb60
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_02042BA8
	ldr r0, _021A9C74 ; =0x000003E9
	ldr r1, _021A9C78 ; =0x0000FFFF
	bl sub_02005DF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9C70: .word ovy257_21a9f84
_021A9C74: .word 0x000003E9
_021A9C78: .word 0x0000FFFF
	thumb_func_end ovy257_21a9af4

	thumb_func_start ovy257_21a9c7c
ovy257_21a9c7c: ; 0x021A9C7C
	push {r4, r5, r6, lr}
	mov r6, #0x6e
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A9C86:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A9C86
	ldr r0, [r5, #4]
	bl GFL_TCBRemove
	mov r4, #0x7f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy257_219a5a4
	add r1, r4, #0
	sub r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_021A0AE0
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F26C
	add r1, r4, #0
	sub r1, #0x14
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219cdec
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_021A22F8
	bl sub_020438DC
	add r1, r4, #0
	sub r1, #0x18
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219b7fc
	add r1, r4, #0
	sub r1, #0x1c
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219aa18
	sub r4, #0x28
	ldr r0, [r5, r4]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy257_21aa64c
	add r0, r5, #0
	bl ovy257_21aa538
	add r0, r5, #0
	bl ovy257_21aa1ac
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21a9c7c

	thumb_func_start ovy257_21a9d14
ovy257_21a9d14: ; 0x021A9D14
	push {r4, r5, r6, lr}
	mov r6, #0x6e
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A9D1E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021A9D1E
	ldr r0, [r5, #4]
	bl GFL_TCBRemove
	mov r4, #0x77
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A9D4A
	bl sub_0203580C
	mov r0, #0
	str r0, [r5, r4]
_021A9D4A:
	mov r4, #0x75
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy257_21aa538
	add r0, r5, #0
	bl ovy257_21aa1ac
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CB50
	add r4, #0xc
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy257_219aef0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy257_21a9d14

	thumb_func_start ovy257_21a9d78
ovy257_21a9d78: ; 0x021A9D78
	push {r3, r4, r5, lr}
	mov r4, #0x7f
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy257_219a5a4
	add r1, r4, #0
	sub r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_021A0AE0
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F26C
	add r1, r4, #0
	sub r1, #0x14
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219cdec
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_021A22F8
	add r1, r4, #0
	sub r1, #0x18
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy257_219b7fc
	sub r4, #0x1c
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy257_219aa18
	add r0, r5, #0
	bl ovy257_21aa64c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a9d78

	thumb_func_start ovy257_21a9dd4
ovy257_21a9dd4: ; 0x021A9DD4
	push {r3, r4, r5, lr}
	mov r5, #0x79
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	bl ovy257_219b860
	ldr r0, [r4, #8]
	cmp r0, #6
	bhi _021A9E7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A9DF4: ; jump table
	.short _021A9E7C - _021A9DF4 - 2 ; case 0
	.short _021A9E02 - _021A9DF4 - 2 ; case 1
	.short _021A9E10 - _021A9DF4 - 2 ; case 2
	.short _021A9E1C - _021A9DF4 - 2 ; case 3
	.short _021A9E28 - _021A9DF4 - 2 ; case 4
	.short _021A9E34 - _021A9DF4 - 2 ; case 5
	.short _021A9E56 - _021A9DF4 - 2 ; case 6
_021A9E02:
	add r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219d320
_021A9E0C:
	str r0, [r4, #0xc]
	b _021A9E7C
_021A9E10:
	add r5, #0xc
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy257_21a0f8c
	b _021A9E0C
_021A9E1C:
	add r5, #8
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy257_219f9a4
	b _021A9E0C
_021A9E28:
	add r5, #0x10
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy257_21a24e4
	b _021A9E0C
_021A9E34:
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl sub_0219BB0C
	cmp r0, #1
	bne _021A9E52
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219af08
	cmp r0, #1
	bne _021A9E52
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A9E52:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A9E56:
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl sub_0219BB0C
	cmp r0, #1
	bne _021A9E7C
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219af08
	cmp r0, #1
	bne _021A9E7C
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A9E7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A9E7C:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021A9E8E
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A9E8E
	mov r0, #6
	str r0, [r4, #0xc]
_021A9E8E:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq _021A9E9C
	add r0, r4, #0
	bl ovy257_21aa69c
_021A9E9C:
	ldr r1, [r4, #8]
	cmp r1, #4
	beq _021A9EAC
	mov r5, #0x7e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A9ED0
_021A9EAC:
	sub r0, r1, #5
	cmp r0, #1
	bhi _021A9ECC
	bl ovy257_21aab64
	cmp r0, #1
	bne _021A9ECC
	add r0, r4, #0
	bl sub_021AAA0C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0219B524
	bl ovy257_2199cb4
_021A9ECC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A9ED0:
	add r1, r5, #0
	sub r1, #0x18
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219aa9c
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0219A5B8
	bl sub_0204B794
	add r0, r5, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	bl sub_02021A3C
	add r0, r4, #0
	bl ovy257_21aa79c
	ldrh r0, [r4, #0x38]
	add r5, #8
	add r0, r0, r5
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x38]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021A9F7C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0xa
	mul r0, r1
	blx sub_0208D374
	ldr r1, _021A9F80 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA80
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	blo _021A9F32
	mov r2, #9
_021A9F32:
	ldrh r0, [r4, #0x3a]
	cmp r2, r0
	beq _021A9F4C
	add r3, r4, #0
	strh r2, [r4, #0x3a]
	add r3, #0x3c
	lsl r2, r2, #5
	add r2, r3, r2
	mov r0, #0x1f
	mov r1, #0x40
	mov r3, #0x20
	bl sub_0205FA10
_021A9F4C:
	mov r5, #0x76
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	sub r5, #0xd8
	add r0, r5, #0
	bl sub_02005784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_02044CFC
	add r0, r5, #0
	bl sub_02005784
	add r2, r0, #0
	mov r0, #1
	mov r1, #3
	bl sub_02044CFC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A9F7C: .word FX_SinCosTable_
_021A9F80: .word 0x45800000
	thumb_func_end ovy257_21a9dd4

	thumb_func_start ovy257_21a9f84
ovy257_21a9f84: ; 0x021A9F84
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #8]
	cmp r0, #4
	beq _021A9FB2
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy257_219ab28
	bl sub_0204B7C8
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl ovy257_219a5bc
	add r4, #8
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl sub_0219DE2C
_021A9FB2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21a9f84

	thumb_func_start ovy257_21a9fb4
ovy257_21a9fb4: ; 0x021A9FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _021AA16C ; =0xFFFFE0FF
	ldr r6, _021AA170 ; =0x04001000
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	and r0, r1
	str r0, [r6]
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r0, #0
	bl sub_02027B4C
	mov r0, #1
	bl sub_02027B4C
	add r1, r4, #0
	add r1, #0x50
	mov r0, #0
	strh r0, [r1]
	add r6, #0x50
	ldr r2, _021AA174 ; =0x04000304
	strh r0, [r6]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021AA178 ; =0x021B2514
	bl GFL_BGSysSetVRAMBanks
	ldrh r0, [r5]
	bl GFL_BGSysCreate
	ldrh r0, [r5]
	bl BmpWin_InitAllocator
	ldr r0, _021AA17C ; =0x021B2444
	bl GFL_BGSysSetLCDConfig
	ldr r0, _021AA180 ; =0x021B2494
	mov r1, #0
	mov r2, #0
	bl ovy257_21aa1fc
	ldr r0, _021AA184 ; =0x021B24F4
	mov r1, #1
	mov r2, #0
	bl ovy257_21aa1fc
	ldr r0, _021AA188 ; =0x021B24B4
	mov r1, #4
	mov r2, #0
	bl ovy257_21aa1fc
	ldr r0, _021AA18C ; =0x021B24D4
	mov r1, #5
	mov r2, #0
	bl ovy257_21aa1fc
	ldr r0, _021AA190 ; =0x021B2474
	mov r1, #6
	mov r2, #0
	bl ovy257_21aa1fc
	ldr r0, _021AA194 ; =0x021B2454
	mov r1, #7
	mov r2, #0
	bl ovy257_21aa1fc
	add r6, r4, #0
	add r6, #0xc
	ldrh r1, [r6]
	mov r0, #0x43
	add r2, r1, #0
	ldr r1, _021AA198 ; =0x00004484
	and r2, r0
	orr r1, r2
	strh r1, [r6]
	add r7, r4, #0
	add r7, #0xe
	ldrh r1, [r7]
	and r1, r0
	ldr r0, _021AA19C ; =0x00004A84
	orr r0, r1
	strh r0, [r7]
	blx G2_GetBG2ScrPtr
	mov r2, #6
	lsl r2, r2, #0xe
	mov r1, #0
	str r2, [sp]
	blx MI_CpuFill8
	blx G2_GetBG3ScrPtr
	ldr r2, [sp]
	mov r1, #0
	blx MI_CpuFill8
	ldrh r2, [r6]
	mov r1, #3
	mov r0, #1
	bic r2, r1
	orr r0, r2
	strh r0, [r6]
	ldrh r2, [r7]
	mov r0, #2
	bic r2, r1
	orr r0, r2
	strh r0, [r7]
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	mov r7, #3
	bl sub_02044C98
	ldr r6, _021AA1A0 ; =0x02093F08
	add r3, sp, #4
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021AA178 ; =0x021B2514
	str r0, [r3]
	add r0, r2, #0
	ldrh r2, [r5]
	bl Oam_CreateSystem
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	ldrh r2, [r5]
	mov r0, #0x40
	mov r1, #0
	bl sub_0204BF1C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0204C028
	ldr r1, [r4]
	ldr r0, _021AA1A4 ; =0xFFFF1FFF
	mov r5, #0x3f
	and r1, r0
	lsl r0, r7, #0xd
	orr r0, r1
	add r1, r4, #0
	add r1, #0x48
	str r0, [r4]
	ldrh r0, [r1]
	mov r2, #0x1f
	bic r0, r5
	add r3, r0, #0
	orr r3, r2
	mov r0, #0x20
	orr r3, r0
	strh r3, [r1]
	ldrh r6, [r1]
	ldr r3, _021AA1A8 ; =0xFFFFC0FF
	lsl r2, r2, #8
	and r3, r6
	orr r3, r2
	lsl r2, r0, #8
	orr r2, r3
	strh r2, [r1]
	add r2, r4, #0
	add r2, #0x4a
	ldrh r3, [r2]
	mov r1, #0x13
	bic r3, r5
	orr r1, r3
	orr r1, r0
	strh r1, [r2]
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	add r1, r4, #0
	mov r2, #0xc0
	add r1, #0x44
	strh r2, [r1]
	lsl r1, r0, #0xa
	add r0, r4, #0
	add r0, #0x42
	strh r1, [r0]
	add r4, #0x46
	strh r2, [r4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA16C: .word 0xFFFFE0FF
_021AA170: .word 0x04001000
_021AA174: .word 0x04000304
_021AA178: .word 0x021B2514
_021AA17C: .word 0x021B2444
_021AA180: .word 0x021B2494
_021AA184: .word 0x021B24F4
_021AA188: .word 0x021B24B4
_021AA18C: .word 0x021B24D4
_021AA190: .word 0x021B2474
_021AA194: .word 0x021B2454
_021AA198: .word 0x00004484
_021AA19C: .word 0x00004A84
_021AA1A0: .word 0x02093F08
_021AA1A4: .word 0xFFFF1FFF
_021AA1A8: .word 0xFFFFC0FF
	thumb_func_end ovy257_21a9fb4

	thumb_func_start ovy257_21aa1ac
ovy257_21aa1ac: ; 0x021AA1AC
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _021AA1F8 ; =0xFFFF1FFF
	and r1, r2
	str r1, [r3]
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	nop
_021AA1F8: .word 0xFFFF1FFF
	thumb_func_end ovy257_21aa1ac

	thumb_func_start ovy257_21aa1fc
ovy257_21aa1fc: ; 0x021AA1FC
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl GFL_BGSysLoadScr
	pop {r4, pc}
	thumb_func_end ovy257_21aa1fc

	thumb_func_start ovy257_21aa220
ovy257_21aa220: ; 0x021AA220
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201736C
	str r0, [sp, #0xc]
	ldrh r1, [r5]
	mov r4, #0xaa
	mov r0, #0xaa
	bl GFL_ArcSysCreateFileHandle
	add r4, #0xd2
	str r0, [r5, r4]
	ldr r0, [sp, #0xc]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _021AA25C
	mov r1, #0xc0
	str r1, [sp]
	ldrh r0, [r5]
	add r1, #0xbc
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	mov r1, #7
	b _021AA26A
_021AA25C:
	mov r1, #0xc0
	str r1, [sp]
	ldrh r0, [r5]
	add r1, #0xbc
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	mov r1, #6
_021AA26A:
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r6, #0x5f
	lsl r6, r6, #2
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	mov r1, #0xc
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xe
	mov r2, #7
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	mov r3, #0
	bl sub_0204AF50
	mov r0, #7
	bl GFL_BGSysLoadScr
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	mov r3, #0x20
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #1
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xd
	mov r2, #1
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	mov r3, #0
	mov r4, #0xd
	bl sub_0204AF50
	mov r0, #1
	bl GFL_BGSysLoadScr
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r3, #0
	bl sub_0204BC48
	mov r1, #3
	lsl r1, r1, #7
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #0x1b
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r3, [r5]
	ldr r0, [r5, r6]
	mov r1, #0x15
	mov r2, #0x18
	bl Oam_LoadNCERFile
	lsl r1, r4, #5
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #1
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r3, #0
	bl sub_0204BC48
	add r1, r6, #0
	add r1, #8
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #0x1a
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r3, [r5]
	ldr r0, [r5, r6]
	mov r1, #0x14
	mov r2, #0x17
	bl Oam_LoadNCERFile
	add r1, r6, #0
	add r1, #0x28
	str r0, [r5, r1]
	bl GetDefaultUINarcIdx
	ldrh r1, [r5]
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	bl sub_0202D824
	str r7, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #4
	mov r3, #0xc0
	str r0, [sp, #4]
	add r0, r4, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	bl sub_0202D824
	str r7, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #5
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D828
	str r7, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #5
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #5
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl GFL_BGSysLoadScr
	bl sub_0202D810
	add r1, r0, #0
	mov r3, #0xe0
	str r3, [sp, #0x10]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r7, #0
	mov r3, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	bl Oam_LoadNCLRFile
	mov r1, #0xe0
	add r1, #0xac
	str r0, [r5, r1]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r7, #0
	add r3, r7, #0
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	mov r1, #0xe0
	add r1, #0xbc
	str r0, [r5, r1]
	bl sub_0202D810
	add r1, r0, #0
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	bl Oam_LoadNCLRFile
	mov r1, #0xe0
	add r1, #0xa8
	str r0, [r5, r1]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r7, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	mov r1, #0xe0
	add r1, #0xb8
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl Oam_LoadNCERFile
	mov r1, #0xe0
	add r1, #0xc8
	str r0, [r5, r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r0, sp, #0x20
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	strb r7, [r0, #0xa]
	strb r7, [r0, #0xb]
	add r0, r5, #0
	bl sub_021AAA6C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_021AAA60
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_021AAA60
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #8
	bl sub_021AAA60
	add r3, r0, #0
	add r0, sp, #0x24
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	add r0, r4, #0
	bl Oam_CreateSprite
	mov r1, #0xe0
	add r1, #0xd0
	str r0, [r5, r1]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0xd0
	str r0, [sp, #0x10]
	ldr r0, [r5, r0]
	bl sub_0204C520
	ldr r0, [sp, #0xc]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	ldr r0, [r5, r6]
	add r2, sp, #0x20
	bne _021AA512
	mov r1, #7
	b _021AA514
_021AA512:
	mov r1, #6
_021AA514:
	ldrh r3, [r5]
	bl sub_0204B37C
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r5, #0x3c
	ldr r0, [r0, #0xc]
	mov r2, #5
	add r0, #0xc0
	add r1, r5, #0
	lsl r2, r2, #6
	blx MIi_CpuCopy32
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21aa220

	thumb_func_start ovy257_21aa538
ovy257_21aa538: ; 0x021AA538
	push {r4, r5, r6, lr}
	mov r6, #0x1b
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	bl sub_0204C108
	mov r4, #0
	sub r6, #0x30
_021AA54A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BCD0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA54A
	mov r6, #6
	mov r4, #4
	lsl r6, r6, #6
_021AA564:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021AA564
	mov r6, #6
	mov r4, #8
	lsl r6, r6, #6
_021AA57E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _021AA57E
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GFL_ArcToolFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21aa538

	thumb_func_start ovy257_21aa5a0
ovy257_21aa5a0: ; 0x021AA5A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r7, #0
	bl GFL_FontCreate
	mov r4, #0x72
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x1d
	mov r6, #2
	bl GFL_MsgSysLoadData
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r1, [r5]
	lsl r0, r6, #0xa
	bl sub_020219A8
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r3, #5
	lsl r6, r3, #6
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	bl sub_020232D8
	ldrh r0, [r5]
	add r1, r6, #0
	mov r2, #9
	str r0, [sp]
	mov r0, #4
	mov r3, #0
	bl sub_02024D00
	ldrh r0, [r5]
	mov r1, #4
	lsl r1, r1, #7
	str r0, [sp]
	mov r0, #0
	mov r2, #9
	mov r3, #0
	bl sub_02024D00
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	add r4, #0x14
	str r7, [r5, r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21aa5a0

	thumb_func_start ovy257_21aa64c
ovy257_21aa64c: ; 0x021AA64C
	push {r3, r4, r5, lr}
	mov r4, #0x77
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021AA662
	bl sub_0203580C
	mov r0, #0
	str r0, [r5, r4]
_021AA662:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0203A850
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21aa64c

	thumb_func_start ovy257_21aa69c
ovy257_21aa69c: ; 0x021AA69C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #4
	bhi _021AA704
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021AA6B2: ; jump table
	.short _021AA704 - _021AA6B2 - 2 ; case 0
	.short _021AA6BC - _021AA6B2 - 2 ; case 1
	.short _021AA6C8 - _021AA6B2 - 2 ; case 2
	.short _021AA6D4 - _021AA6B2 - 2 ; case 3
	.short _021AA6E0 - _021AA6B2 - 2 ; case 4
_021AA6BC:
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy257_219d210
	b _021AA704
_021AA6C8:
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl ovy257_21a0ebc
	b _021AA704
_021AA6D4:
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy257_219f87c
	b _021AA704
_021AA6E0:
	mov r5, #0x7d
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	bl ovy257_21a246c
	add r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021AA704
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021AA704
	add r0, r4, #0
	bl ovy257_21a9af4
	mov r1, #0
	add r0, r5, #4
	str r1, [r4, r0]
_021AA704:
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	cmp r0, #6
	bhi _021AA79A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AA718: ; jump table
	.short _021AA79A - _021AA718 - 2 ; case 0
	.short _021AA726 - _021AA718 - 2 ; case 1
	.short _021AA734 - _021AA718 - 2 ; case 2
	.short _021AA742 - _021AA718 - 2 ; case 3
	.short _021AA750 - _021AA718 - 2 ; case 4
	.short _021AA77A - _021AA718 - 2 ; case 5
	.short _021AA76A - _021AA718 - 2 ; case 6
_021AA726:
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219ce04
	pop {r3, r4, r5, pc}
_021AA734:
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_21a0aec
	pop {r3, r4, r5, pc}
_021AA742:
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219f278
	pop {r3, r4, r5, pc}
_021AA750:
	add r0, r4, #0
	bl ovy257_21a9d14
	mov r5, #0x7d
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy257_21a2304
	mov r1, #1
	add r0, r5, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021AA76A:
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
_021AA77A:
	mov r5, #0x79
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy257_219bac4
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219aef0
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy257_219b4fc
_021AA79A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21aa69c

	thumb_func_start ovy257_21aa79c
ovy257_21aa79c: ; 0x021AA79C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0
	add r5, r0, #0
	str r1, [sp, #8]
	ldr r1, [r5, #8]
	sub r1, r1, #3
	cmp r1, #1
	bhi _021AA7B0
	b _021AA918
_021AA7B0:
	bl ovy257_21aaac0
	str r0, [sp, #4]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r7, r0, #1
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x1c]
	mov r0, #0x6d
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0x2c
	str r0, [sp, #0x14]
	mov r0, #0x6d
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x30
	str r0, [sp, #0x10]
	mov r0, #0x6d
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #0x30
	ldr r4, [sp, #8]
	str r0, [sp, #0xc]
_021AA7EA:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0219CCD0
	cmp r0, #1
	bne _021AA87E
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0219CCB8
	cmp r0, #1
	bne _021AA87E
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0219B4AC
	cmp r0, #0
	bne _021AA87E
	mov r0, #1
	lsl r0, r4
	str r0, [sp]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	ldr r0, [sp]
	tst r0, r1
	bne _021AA87E
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0219CCC0
	add r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021AA84C
	cmp r4, #0
	bne _021AA848
	mov r6, #2
	b _021AA84E
_021AA848:
	mov r6, #3
	b _021AA84E
_021AA84C:
	add r6, r4, #0
_021AA84E:
	lsl r2, r6, #2
	add r3, r5, r2
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	ldr r2, [r3, r2]
	bl ovy257_21aa920
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r1, [sp]
	ldrb r0, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r0, r1
	mov r0, #0x6d
	lsl r0, r0, #2
	strb r1, [r5, r0]
	mov r1, #1
	lsl r1, r6
	lsl r1, r1, #0x18
	ldrb r0, [r5, r7]
	lsr r1, r1, #0x18
	add r0, r0, r1
	strb r0, [r5, r7]
_021AA87E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA7EA
	ldr r0, _021AA91C ; =0x000001B5
	mov r4, #0
	add r0, r0, #3
	str r0, [sp, #0x28]
	ldr r0, _021AA91C ; =0x000001B5
	add r0, r0, #3
	str r0, [sp, #0x24]
	ldr r0, _021AA91C ; =0x000001B5
	str r0, [sp, #0x20]
	add r0, #0x1b
	str r0, [sp, #0x20]
_021AA89E:
	ldr r0, _021AA91C ; =0x000001B5
	mov r6, #1
	ldrb r0, [r5, r0]
	lsl r6, r4
	tst r0, r6
	beq _021AA8F0
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [sp, #0x24]
	ldr r0, [r7, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	ldr r0, [r5, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021AA8F0
	ldr r0, [sp, #0x28]
	ldr r7, [r7, r0]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, _021AA91C ; =0x000001B5
	ldrb r1, [r5, r0]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	sub r1, r1, r0
	ldr r0, _021AA91C ; =0x000001B5
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #8]
_021AA8F0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AA89E
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021AA918
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CC88
	add r1, r0, #0
	cmp r1, #0xff
	beq _021AA918
	add r0, r5, #0
	bl ovy257_21aad74
_021AA918:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AA91C: .word 0x000001B5
	thumb_func_end ovy257_21aa79c

	thumb_func_start ovy257_21aa920
ovy257_21aa920: ; 0x021AA920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r5]
	str r2, [sp, #0xc]
	bl sub_02008BB0
	mov r4, #0x72
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r2, #0
	add r7, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x60
	sub r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	ldr r0, [sp, #0xc]
	bl BmpWin_GetBitmap
	add r2, r6, #1
	lsl r2, r2, #0x10
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	bl BmpWin_GetBitmap
	sub r2, r6, #1
	lsl r2, r2, #0x10
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	bl BmpWin_GetBitmap
	lsl r2, r6, #0x10
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	bl BmpWin_GetBitmap
	lsl r2, r6, #0x10
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	bl BmpWin_GetBitmap
	lsl r2, r6, #0x10
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, r4]
	add r4, #8
	str r0, [sp, #4]
	mov r0, #0xf
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21aa920

	thumb_func_start sub_021AAA0C
sub_021AAA0C: ; 0x021AAA0C
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA0C

	thumb_func_start sub_021AAA14
sub_021AAA14: ; 0x021AAA14
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA14

	thumb_func_start sub_021AAA1C
sub_021AAA1C: ; 0x021AAA1C
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA1C

	thumb_func_start sub_021AAA24
sub_021AAA24: ; 0x021AAA24
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r3, _021AAA30 ; =sub_0219EE34
	bx r3
	nop
_021AAA30: .word sub_0219EE34
	thumb_func_end sub_021AAA24

	thumb_func_start sub_021AAA34
sub_021AAA34: ; 0x021AAA34
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA34

	thumb_func_start sub_021AAA3C
sub_021AAA3C: ; 0x021AAA3C
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA3C

	thumb_func_start sub_021AAA44
sub_021AAA44: ; 0x021AAA44
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA44

	thumb_func_start sub_021AAA4C
sub_021AAA4C: ; 0x021AAA4C
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA4C

	thumb_func_start sub_021AAA54
sub_021AAA54: ; 0x021AAA54
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021AAA54

	thumb_func_start sub_021AAA58
sub_021AAA58: ; 0x021AAA58
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA58

	thumb_func_start sub_021AAA60
sub_021AAA60: ; 0x021AAA60
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021AAA60

	thumb_func_start sub_021AAA6C
sub_021AAA6C: ; 0x021AAA6C
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA6C

	thumb_func_start sub_021AAA74
sub_021AAA74: ; 0x021AAA74
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021AAA74

	thumb_func_start sub_021AAA78
sub_021AAA78: ; 0x021AAA78
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021AAA78

	thumb_func_start sub_021AAA7C
sub_021AAA7C: ; 0x021AAA7C
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA7C

	thumb_func_start sub_021AAA84
sub_021AAA84: ; 0x021AAA84
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA84

	thumb_func_start sub_021AAA8C
sub_021AAA8C: ; 0x021AAA8C
	mov r1, #0x1d
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA8C

	thumb_func_start sub_021AAA94
sub_021AAA94: ; 0x021AAA94
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021AAA94

	thumb_func_start sub_021AAA9C
sub_021AAA9C: ; 0x021AAA9C
	ldr r0, [r0, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_021AAA9C

	thumb_func_start sub_021AAAA4
sub_021AAAA4: ; 0x021AAAA4
	ldr r0, [r0, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_021AAAA4

	thumb_func_start sub_021AAAAC
sub_021AAAAC: ; 0x021AAAAC
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_021AAAAC

	thumb_func_start sub_021AAAB4
sub_021AAAB4: ; 0x021AAAB4
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021AAAB4

	thumb_func_start sub_021AAAB8
sub_021AAAB8: ; 0x021AAAB8
	ldrb r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021AAAB8

	thumb_func_start sub_021AAABC
sub_021AAABC: ; 0x021AAABC
	strb r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_021AAABC

	thumb_func_start ovy257_21aaac0
ovy257_21aaac0: ; 0x021AAAC0
	push {r3, lr}
	bl sub_021AAAB8
	cmp r0, #1
	bne _021AAACE
	mov r0, #1
	pop {r3, pc}
_021AAACE:
	cmp r0, #2
	bne _021AAAD6
	mov r0, #1
	pop {r3, pc}
_021AAAD6:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_21aaac0

	thumb_func_start sub_021AAADC
sub_021AAADC: ; 0x021AAADC
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021AAADC

	thumb_func_start sub_021AAAE0
sub_021AAAE0: ; 0x021AAAE0
	add r2, r1, #0
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r3, _021AAAEC ; =ovy257_219c264
	bx r3
	.align 2, 0
_021AAAEC: .word ovy257_219c264
	thumb_func_end sub_021AAAE0

	thumb_func_start sub_021AAAF0
sub_021AAAF0: ; 0x021AAAF0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021AAAFA
	mov r1, #1
	b _021AAAFC
_021AAAFA:
	mov r1, #0
_021AAAFC:
	ldr r3, _021AAB00 ; =sub_021AAAE0
	bx r3
	.align 2, 0
_021AAB00: .word sub_021AAAE0
	thumb_func_end sub_021AAAF0

	thumb_func_start sub_021AAB04
sub_021AAB04: ; 0x021AAB04
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021AAB04

	thumb_func_start sub_021AAB08
sub_021AAB08: ; 0x021AAB08
	ldrb r0, [r0, #0x19]
	bx lr
	thumb_func_end sub_021AAB08

	thumb_func_start sub_021AAB0C
sub_021AAB0C: ; 0x021AAB0C
	strb r1, [r0, #0x19]
	bx lr
	thumb_func_end sub_021AAB0C

	thumb_func_start sub_021AAB10
sub_021AAB10: ; 0x021AAB10
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_021AAB10

	thumb_func_start sub_021AAB14
sub_021AAB14: ; 0x021AAB14
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_021AAB14

	thumb_func_start sub_021AAB18
sub_021AAB18: ; 0x021AAB18
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_021AAB18

	thumb_func_start sub_021AAB1C
sub_021AAB1C: ; 0x021AAB1C
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _021AAB26
	mov r1, #1
	b _021AAB28
_021AAB26:
	mov r1, #0
_021AAB28:
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_021AAB1C

	thumb_func_start sub_021AAB2C
sub_021AAB2C: ; 0x021AAB2C
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_021AAB2C

	thumb_func_start sub_021AAB30
sub_021AAB30: ; 0x021AAB30
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_021AAB30

	thumb_func_start sub_021AAB34
sub_021AAB34: ; 0x021AAB34
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021AAB34

	thumb_func_start sub_021AAB38
sub_021AAB38: ; 0x021AAB38
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021AAB38

	thumb_func_start sub_021AAB3C
sub_021AAB3C: ; 0x021AAB3C
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r0, [r0, #4]
	cmp r0, #3
	bne _021AAB4C
	mov r0, #1
	bx lr
_021AAB4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_021AAB3C

	thumb_func_start sub_021AAB50
sub_021AAB50: ; 0x021AAB50
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_021AAB50

	thumb_func_start sub_021AAB54
sub_021AAB54: ; 0x021AAB54
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end sub_021AAB54

	thumb_func_start sub_021AAB5C
sub_021AAB5C: ; 0x021AAB5C
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_021AAB5C

	thumb_func_start sub_021AAB60
sub_021AAB60: ; 0x021AAB60
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_021AAB60

	thumb_func_start ovy257_21aab64
ovy257_21aab64: ; 0x021AAB64
	push {r3, lr}
	bl sub_020352E0
	cmp r0, #1
	bne _021AAB7A
	bl sub_020352E8
	cmp r0, #0
	bne _021AAB7A
	mov r0, #1
	pop {r3, pc}
_021AAB7A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_21aab64

	thumb_func_start ovy257_21aab80
ovy257_21aab80: ; 0x021AAB80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r6, #0x73
	add r5, r0, #0
	add r7, sp, #0x18
	mov r4, #0
	add r0, sp, #0
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	lsl r6, r6, #2
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	ldr r0, [r5, r6]
	mov r1, #0x22
	bl sub_0204898C
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r1, #0x23
	bl sub_0204898C
	str r0, [sp, #0xc]
	ldr r1, _021AAC04 ; =0x000039E3
	add r0, sp, #0
	strh r1, [r0, #4]
	strh r1, [r0, #0x10]
	str r4, [sp, #8]
	str r4, [sp, #0x14]
	ldrh r1, [r5]
	add r6, #8
	str r1, [sp, #0x18]
	mov r1, #2
	strb r1, [r0, #0x1c]
	add r0, sp, #0
	str r0, [sp, #0x20]
	mov r0, #0x18
	strb r0, [r7, #0x10]
	mov r0, #6
	strb r0, [r7, #0x11]
	mov r0, #8
	strb r0, [r7, #0x12]
	mov r0, #3
	strb r0, [r7, #0x13]
	str r4, [sp, #0x24]
	ldr r1, [r5, r6]
	add r0, r7, #0
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp]
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021AAC04: .word 0x000039E3
	thumb_func_end ovy257_21aab80

	thumb_func_start ovy257_21aac08
ovy257_21aac08: ; 0x021AAC08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	mov r6, #0x73
	add r7, r1, #0
	str r2, [sp]
	add r4, sp, #0x1c
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r1, #0
	add r0, sp, #4
	lsl r6, r6, #2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r0, [r5, r6]
	mov r1, #0x22
	bl sub_0204898C
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	mov r1, #0x23
	bl sub_0204898C
	str r0, [sp, #0x10]
	ldr r0, _021AAC94 ; =0x000039E3
	add r1, sp, #4
	strh r0, [r1, #4]
	strh r0, [r1, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	add r6, #8
	str r0, [sp, #0x1c]
	mov r0, #2
	strb r0, [r1, #0x1c]
	add r0, sp, #4
	str r0, [sp, #0x24]
	mov r0, #0
	strb r7, [r4, #0x10]
	str r0, [sp, #0x28]
	ldr r0, [sp]
	strb r0, [r4, #0x11]
	mov r0, #8
	strb r0, [r4, #0x12]
	mov r0, #3
	strb r0, [r4, #0x13]
	ldr r1, [r5, r6]
	add r0, r4, #0
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AAC94: .word 0x000039E3
	thumb_func_end ovy257_21aac08

	thumb_func_start ovy257_21aac98
ovy257_21aac98: ; 0x021AAC98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0x73
	mov r1, #0
	add r0, sp, #0xc
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	add r0, sp, #0
	lsl r4, r4, #2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r5, r4]
	mov r1, #0x41
	add r7, r2, #0
	bl sub_0204898C
	str r0, [sp]
	ldr r1, _021AAD04 ; =0x000039E3
	add r0, sp, #0
	strh r1, [r0, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldrh r1, [r5]
	add r4, #8
	str r1, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #0x10]
	add r1, sp, #0
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1d]
	mov r1, #8
	strb r1, [r0, #0x1e]
	mov r1, #3
	strb r1, [r0, #0x1f]
	ldr r1, [r5, r4]
	add r0, sp, #0xc
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAD04: .word 0x000039E3
	thumb_func_end ovy257_21aac98

	thumb_func_start ovy257_21aad08
ovy257_21aad08: ; 0x021AAD08
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x6d
	add r5, r0, #0
	lsl r1, r1, #2
	mov r4, #0
	strb r4, [r5, r1]
	add r0, r1, #1
	strb r4, [r5, r0]
	add r0, r1, #4
	str r0, [sp]
	add r7, r0, #0
_021AAD1E:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _021AAD3C
	ldr r0, [sp]
	ldr r0, [r6, r0]
	bl sub_020484B4
_021AAD3C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AAD1E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21aad08

	thumb_func_start ovy257_21aad48
ovy257_21aad48: ; 0x021AAD48
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x6e
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021AAD52:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r7]
	bl BmpWin_FlushChar
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021AAD52
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21aad48

	thumb_func_start ovy257_21aad74
ovy257_21aad74: ; 0x021AAD74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp]
	bl ovy257_21aaac0
	ldr r1, [r5, #8]
	ldr r7, [sp]
	cmp r1, #3
	beq _021AAE38
	cmp r0, #1
	bne _021AAD96
	add r0, r7, #0
	bne _021AAD94
	mov r7, #2
	b _021AAD96
_021AAD94:
	mov r7, #3
_021AAD96:
	mov r4, #0x79
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_0219CCD0
	cmp r0, #1
	bne _021AAE38
	ldr r1, [r5, r4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_0219CCB8
	cmp r0, #1
	bne _021AAE38
	ldr r0, _021AAE3C ; =0x021B2440
	add r6, sp, #0xc
	ldrb r1, [r0]
	strb r1, [r6, #8]
	ldrb r1, [r0, #1]
	strb r1, [r6, #9]
	ldrb r1, [r0, #2]
	strb r1, [r6, #0xa]
	ldrb r0, [r0, #3]
	strb r0, [r6, #0xb]
	ldr r0, _021AAE40 ; =0x021B243C
	ldrb r1, [r0]
	strb r1, [r6, #4]
	ldrb r1, [r0, #1]
	strb r1, [r6, #5]
	ldrb r1, [r0, #2]
	strb r1, [r6, #6]
	ldrb r0, [r0, #3]
	strb r0, [r6, #7]
	ldr r1, [r5, r4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_0219CCC0
	ldrh r1, [r5]
	bl sub_02008BB0
	add r1, r4, #0
	sub r1, #0x1c
	ldr r1, [r5, r1]
	mov r2, #0
	str r0, [sp, #4]
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	add r0, sp, #0x14
	ldrb r1, [r0, r7]
	ldr r0, [sp, #8]
	mov r2, #0
	lsr r0, r0, #0x19
	add r0, r1, r0
	strh r0, [r6]
	add r0, sp, #0x10
	ldrb r0, [r0, r7]
	add r1, sp, #0xc
	strh r0, [r6, #2]
	add r0, r4, #0
	sub r0, #0x34
	ldr r0, [r5, r0]
	bl Oam_SetSpritePosData
	add r0, r4, #0
	sub r0, #0x34
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	sub r4, #0x34
	ldr r0, [r5, r4]
	bl sub_0204C56C
_021AAE38:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAE3C: .word 0x021B2440
_021AAE40: .word 0x021B243C
	thumb_func_end ovy257_21aad74

	thumb_func_start sub_021AAE44
sub_021AAE44: ; 0x021AAE44
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021AAE50 ; =sub_0204C124
	mov r1, #0
	bx r3
	.align 2, 0
_021AAE50: .word sub_0204C124
	thumb_func_end sub_021AAE44

	thumb_func_start ovy257_21aae54
ovy257_21aae54: ; 0x021AAE54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200F6F4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0200F700
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy257_21aae54

	thumb_func_start ovy257_21aae7c
ovy257_21aae7c: ; 0x021AAE7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0x77
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021AAE92
	bl ovy257_21aaeb0
_021AAE92:
	ldrh r0, [r5]
	mov r6, #0x76
	lsl r6, r6, #2
	str r0, [sp]
	ldr r0, [r5, r6]
	add r1, r4, #0
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035660
	add r1, r6, #4
	str r0, [r5, r1]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21aae7c

	thumb_func_start ovy257_21aaeb0
ovy257_21aaeb0: ; 0x021AAEB0
	push {r3, r4, r5, lr}
	mov r5, #0x77
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021AAEC6
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021AAEC6:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21aaeb0

	thumb_func_start ovy257_21aaec8
ovy257_21aaec8: ; 0x021AAEC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r2, #0
	beq _021AAEDE
	ldr r0, [r5, #4]
	cmp r0, #3
	bne _021AAEDE
	mov r0, #1
	mov r1, #0x6d
	mov r2, #0xd
	b _021AAEE4
_021AAEDE:
	mov r0, #1
	mov r1, #0x6d
	mov r2, #0x13
_021AAEE4:
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r7, #0x81
	lsl r7, r7, #2
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x6d
	mov r6, #0x6d
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	strh r6, [r4]
	cmp r5, #0
	bne _021AAF56
	ldr r0, _021AAF68 ; =0x00000678
	ldr r3, _021AAF6C ; =0x021B26C8
	str r0, [sp]
	mov r0, #1
	mov r5, #0x10
	mov r1, #0x10
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	lsl r1, r5, #5
	str r0, [r4, r1]
	mov r0, #1
	bl sub_02016EE8
	lsl r1, r5, #5
	ldr r1, [r4, r1]
	str r0, [r1]
	lsl r0, r5, #5
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #4]
	bl sub_0203DF20
	mov r1, #0x10
	add r1, #0xf0
	tst r0, r1
	beq _021AAF40
	lsl r0, r5, #5
	ldr r0, [r4, r0]
	str r6, [r0, #4]
_021AAF40:
	bl sub_0203DF20
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _021AAF5A
	mov r1, #2
	lsl r0, r1, #8
	ldr r0, [r4, r0]
	str r1, [r0, #4]
	b _021AAF5A
_021AAF56:
	sub r0, r7, #4
	str r5, [r4, r0]
_021AAF5A:
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ovy257_21a98d4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAF68: .word 0x00000678
_021AAF6C: .word 0x021B26C8
	thumb_func_end ovy257_21aaec8

	thumb_func_start ovy257_21aaf70
ovy257_21aaf70: ; 0x021AAF70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x7e
	add r4, r3, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r2, #0
	cmp r0, #0
	bne _021AAF8A
	add r0, r4, #0
	bl ovy257_21a9c7c
	b _021AAF90
_021AAF8A:
	add r0, r4, #0
	bl ovy257_21a9d78
_021AAF90:
	cmp r5, #0
	bne _021AAF9E
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl GFL_HeapFree
_021AAF9E:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x6d
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy257_21aaf70

	thumb_func_start ovy257_21aafb0
ovy257_21aafb0: ; 0x021AAFB0
	push {r4, lr}
	add r4, r3, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021AAFCA
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021AAFCA
	bl sub_020120DC
	mov r0, #1
	str r0, [r4, #0x14]
_021AAFCA:
	add r0, r4, #0
	bl ovy257_21a9dd4
	cmp r0, #1
	bne _021AAFD8
	mov r0, #1
	pop {r4, pc}
_021AAFD8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy257_21aafb0

	thumb_func_start ovy257_21aafdc
ovy257_21aafdc: ; 0x021AAFDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021AB090 ; =0x021B3D8C
	mov r6, #0
	str r6, [r0, #0xc]
	str r6, [r0, #0x10]
	ldr r0, _021AB094 ; =0x021B41B8
	add r4, r1, #0
	strh r6, [r0]
	ldrsh r1, [r0, r6]
	ldr r0, _021AB098 ; =0x021B4138
	add r7, r2, #0
	strh r1, [r0]
	ldrsh r1, [r0, r6]
	ldr r0, _021AB09C ; =0x021B3FB8
	mov r2, #1
	strh r1, [r0]
	ldr r1, _021AB0A0 ; =0x021B4A38
	mov r0, #0
	lsl r2, r2, #0xc
	blx MIi_CpuClearFast
	ldr r0, _021AB090 ; =0x021B3D8C
	cmp r4, #2
	str r4, [r0, #8]
	bhi _021AB014
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB014:
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _021AB020
	ldrb r0, [r5, #1]
	cmp r0, #0xd8
	beq _021AB024
_021AB020:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB024:
	mov r0, #2
	str r0, [sp]
	cmp r4, #3
	bls _021AB07C
_021AB02C:
	add r1, r0, #0
	add r0, r0, #1
	str r0, [sp]
	ldrb r1, [r5, r1]
	cmp r1, #0xff
	bne _021AB076
	add r3, r0, #1
	str r3, [sp]
	ldrb r2, [r5, r0]
	cmp r2, #0xd9
	beq _021AB07C
	add r0, r3, #1
	cmp r0, r4
	blo _021AB04C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB04C:
	add r1, r5, r3
	ldrb r0, [r5, r3]
	ldrb r1, [r1, #1]
	lsl r0, r0, #8
	orr r0, r1
	cmp r2, #0xe1
	bne _021AB072
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	add r3, r7, #0
	bl ovy257_21acc20
	cmp r0, #0
	beq _021AB07C
	cmp r0, #1
	beq _021AB07C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB072:
	add r0, r3, r0
	str r0, [sp]
_021AB076:
	add r1, r0, #1
	cmp r1, r4
	blo _021AB02C
_021AB07C:
	ldr r0, _021AB090 ; =0x021B3D8C
	ldr r1, [sp]
	ldr r0, [r0, #8]
	cmp r1, r0
	bhi _021AB08A
	mov r0, #1
	b _021AB08C
_021AB08A:
	mov r0, #0
_021AB08C:
	neg r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB090: .word 0x021B3D8C
_021AB094: .word 0x021B41B8
_021AB098: .word 0x021B4138
_021AB09C: .word 0x021B3FB8
_021AB0A0: .word 0x021B4A38
	thumb_func_end ovy257_21aafdc

	thumb_func_start ovy257_21ab0a4
ovy257_21ab0a4: ; 0x021AB0A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x17c
	str r0, [sp, #4]
	ldr r0, [sp, #0x390]
	str r1, [sp, #8]
	str r0, [sp, #0x390]
	ldr r0, [sp, #0x394]
	add r5, r2, #0
	str r0, [sp, #0x394]
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r4, _021AB3BC ; =0x021B3D8C
	ldr r0, [sp, #0x40]
	ldr r1, _021AB3C0 ; =0x021B41B8
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strh r0, [r1]
	ldrsh r0, [r1, r0]
	ldr r1, _021AB3C4 ; =0x021B4138
	mov r2, #1
	strh r0, [r1]
	ldr r0, [sp, #0x40]
	lsl r2, r2, #0xc
	ldrsh r1, [r1, r0]
	ldr r0, _021AB3C8 ; =0x021B3FB8
	str r3, [sp, #0xc]
	strh r1, [r0]
	mov r0, #0
	ldr r1, _021AB3CC ; =0x021B4A38
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	blx MIi_CpuClearFast
	str r5, [r4, #8]
	cmp r5, #2
	bhi _021AB0FA
	ldr r0, [sp, #0x40]
	add sp, #0x1fc
	add sp, #0x17c
	pop {r3, r4, r5, r6, r7, pc}
_021AB0FA:
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _021AB10A
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r0, #0xd8
	beq _021AB112
_021AB10A:
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB112:
	mov r0, #2
	str r0, [sp, #0x70]
	cmp r5, #3
	bls _021AB134
_021AB11A:
	ldr r2, [sp, #0x70]
	ldr r0, [sp, #8]
	add r1, r2, #1
	str r1, [sp, #0x70]
	ldrb r0, [r0, r2]
	cmp r0, #0xff
	bne _021AB216
	add r3, r1, #1
	ldr r0, [sp, #8]
	str r3, [sp, #0x70]
	ldrb r2, [r0, r1]
	cmp r2, #0xd9
	bne _021AB136
_021AB134:
	b _021AB73E
_021AB136:
	ldr r0, _021AB3BC ; =0x021B3D8C
	add r1, r3, #1
	ldr r0, [r0, #8]
	str r0, [sp, #0x20]
	cmp r1, r0
	blo _021AB14A
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB14A:
	ldr r0, [sp, #8]
	add r1, r0, r3
	ldrb r0, [r0, r3]
	lsl r4, r0, #8
	ldrb r0, [r1, #1]
	orr r0, r4
	cmp r2, #0xe1
	bne _021AB176
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x394]
	add r2, sp, #0x70
	bl ovy257_21acc20
	cmp r0, #0
	beq _021AB216
	cmp r0, #1
	beq _021AB216
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB176:
	add r4, r2, #0
	add r4, #0x40
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	cmp r4, #1
	bhi _021AB1F4
	add r4, r3, #0
	ldr r2, [sp, #0x20]
	add r4, #9
	cmp r4, r2
	blo _021AB194
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB194:
	ldrb r2, [r1, #3]
	add r0, r3, r0
	lsl r4, r2, #8
	ldrb r2, [r1, #4]
	orr r2, r4
	str r2, [sp, #0x3c]
	ldrb r2, [r1, #5]
	lsl r4, r2, #8
	ldrb r2, [r1, #6]
	ldrb r1, [r1, #9]
	orr r2, r4
	str r2, [sp, #0x40]
	str r0, [sp, #0x70]
	cmp r1, #0x11
	beq _021AB1C6
	cmp r1, #0x21
	beq _021AB1C6
	cmp r1, #0x12
	beq _021AB1C6
	cmp r1, #0x22
	beq _021AB1C6
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB1C6:
	ldr r2, _021AB3BC ; =0x021B3D8C
	asr r3, r1, #4
	mov r0, #0xf
	str r3, [r2, #0x14]
	and r0, r1
	str r0, [r2, #4]
	lsl r0, r3, #3
	str r0, [r2, #0x24]
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x19
	str r0, [r2, #0x28]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bgt _021AB1EC
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x390]
	cmp r1, r0
	ble _021AB216
_021AB1EC:
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB1F4:
	cmp r2, #0xc4
	beq _021AB1FA
	b _021AB4F0
_021AB1FA:
	ldr r1, [sp, #0x20]
	add r2, r3, #2
	str r2, [sp, #0x30]
	cmp r2, r1
	blo _021AB20C
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB20C:
	add r1, r3, r0
	add r0, r2, #0
	str r1, [sp, #0x70]
	cmp r0, r1
	blt _021AB218
_021AB216:
	b _021AB730
_021AB218:
	mov r0, #0
	mvn r0, r0
	lsr r0, r0, #0xc
	str r0, [sp, #0x44]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x5c]
	sub r0, #0x38
	str r0, [sp, #0x5c]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x64]
	sub r0, #0x37
	str r0, [sp, #0x64]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x68]
	sub r0, #0x37
	str r0, [sp, #0x68]
	mov r0, #0x4e
	lsl r0, r0, #2
	sub r0, #0x37
	mov ip, r0
	ldr r0, _021AB3D0 ; =0x0000031E
	str r0, [sp, #0x54]
	sub r0, #0x6e
	str r0, [sp, #0x54]
	ldr r0, _021AB3D0 ; =0x0000031E
	str r0, [sp, #0x58]
	sub r0, #0xae
	str r0, [sp, #0x58]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x60]
	sub r0, #0x37
	str r0, [sp, #0x60]
_021AB260:
	ldr r0, _021AB3BC ; =0x021B3D8C
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #8]
	add r1, #0x11
	cmp r1, r0
	blo _021AB274
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB274:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x30]
	mov r0, #0
	ldrb r1, [r2, r1]
	ldr r2, [sp, #0x30]
	mov r7, #0
	add r2, r2, #1
	str r2, [sp, #0x30]
	mov r2, #1
	tst r2, r1
	beq _021AB298
	add r2, r0, #0
	mov r0, #0x56
	lsl r0, r0, #4
	add r7, r2, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r2, r0
_021AB298:
	mov r2, #0x10
	tst r1, r2
	beq _021AB2A4
	ldr r1, [sp, #0x54]
	add r0, #0x24
	add r7, r7, r1
_021AB2A4:
	ldr r1, [sp, #0x58]
	mov r3, #0
	add r2, r7, r1
	ldr r1, _021AB3CC ; =0x021B4A38
	add r2, r1, r2
	ldr r1, _021AB3BC ; =0x021B3D8C
	str r2, [r1, #0x18]
	str r2, [r1, #0x20]
	ldr r1, _021AB3CC ; =0x021B4A38
	add r2, r1, r0
	strb r3, [r1, r0]
	mov r0, #1
	mov r1, #0
_021AB2BE:
	ldr r4, [sp, #8]
	ldr r3, [sp, #0x30]
	ldrb r3, [r4, r3]
	strb r3, [r2, r0]
	add r1, r1, r3
	ldr r3, [sp, #0x30]
	add r0, r0, #1
	add r3, r3, #1
	str r3, [sp, #0x30]
	cmp r0, #0x10
	ble _021AB2BE
	add r0, r3, #0
	add r3, r0, r1
	ldr r0, _021AB3BC ; =0x021B3D8C
	ldr r0, [r0, #8]
	cmp r3, r0
	blo _021AB2E8
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB2E8:
	mov r0, #0
	cmp r1, #0
	ble _021AB304
_021AB2EE:
	ldr r4, [sp, #8]
	ldr r3, [sp, #0x30]
	ldrb r4, [r4, r3]
	add r3, r2, r0
	add r0, r0, #1
	strb r4, [r3, #0x14]
	ldr r3, [sp, #0x30]
	add r3, r3, #1
	str r3, [sp, #0x30]
	cmp r0, r1
	blt _021AB2EE
_021AB304:
	mov r1, #0
	mov r6, #1
_021AB308:
	lsl r0, r6, #0x18
	mov r4, #1
	ldrb r3, [r2, r6]
	asr r0, r0, #0x18
	b _021AB31A
_021AB312:
	add r5, sp, #0x74
	strb r0, [r5, r1]
	add r4, r4, #1
	add r1, r1, #1
_021AB31A:
	cmp r4, r3
	bgt _021AB324
	ldr r5, [sp, #0x5c]
	cmp r1, r5
	ble _021AB312
_021AB324:
	add r6, r6, #1
	cmp r6, #0x10
	ble _021AB308
	ldr r0, [sp, #0x60]
	cmp r1, r0
	blt _021AB33E
	ldr r0, _021AB3BC ; =0x021B3D8C
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB33E:
	mov r3, #0
	add r0, sp, #0x74
	strb r3, [r0, r1]
	add r1, sp, #0x70
	mov r0, #4
	mov r4, #0
	ldrsb r5, [r1, r0]
	b _021AB37E
_021AB34E:
	cmp r0, r5
	bne _021AB37A
_021AB352:
	add r0, sp, #0x174
	lsl r1, r3, #1
	add r0, #2
	strh r4, [r0, r1]
	ldr r0, [sp, #0x64]
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, r0
	blt _021AB372
	ldr r0, _021AB3BC ; =0x021B3D8C
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB372:
	add r0, sp, #0x74
	ldrsb r0, [r0, r3]
	cmp r0, r5
	beq _021AB352
_021AB37A:
	lsl r4, r4, #1
	add r5, r5, #1
_021AB37E:
	add r0, sp, #0x74
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bne _021AB34E
	mov r4, #0
	mov r3, #1
_021AB38A:
	ldrb r0, [r2, r3]
	cmp r0, #0
	beq _021AB3F4
	ldr r0, _021AB3BC ; =0x021B3D8C
	lsl r5, r4, #1
	ldr r1, [r0, #0x18]
	lsl r0, r3, #1
	add r0, r1, r0
	add r0, #0x8c
	strh r4, [r0]
	add r0, sp, #0x174
	add r0, #2
	ldrh r0, [r0, r5]
	ldr r5, _021AB3BC ; =0x021B3D8C
	lsl r1, r3, #2
	ldr r5, [r5, #0x20]
	str r0, [r5, r1]
	ldrb r0, [r2, r3]
	add r4, r4, r0
	ldr r0, [sp, #0x68]
	cmp r4, r0
	blt _021AB3E0
	ldr r0, _021AB3BC ; =0x021B3D8C
	b _021AB3D4
	nop
_021AB3BC: .word 0x021B3D8C
_021AB3C0: .word 0x021B41B8
_021AB3C4: .word 0x021B4138
_021AB3C8: .word 0x021B3FB8
_021AB3CC: .word 0x021B4A38
_021AB3D0: .word 0x0000031E
_021AB3D4:
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB3E0:
	add r0, sp, #0x174
	lsl r5, r4, #1
	add r0, #2
	add r0, r0, r5
	ldr r5, _021AB6F0 ; =0x021B3D8C
	sub r0, r0, #2
	ldr r5, [r5, #0x20]
	ldrh r0, [r0]
	add r1, r5, r1
	b _021AB400
_021AB3F4:
	ldr r0, _021AB6F0 ; =0x021B3D8C
	ldr r1, [r0, #0x20]
	lsl r0, r3, #2
	add r1, r1, r0
	mov r0, #0
	mvn r0, r0
_021AB400:
	str r0, [r1, #0x44]
	add r3, r3, #1
	cmp r3, #0x10
	ble _021AB38A
	ldr r0, _021AB6F0 ; =0x021B3D8C
	mov r3, #0
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x44]
	add r1, #0x88
	str r0, [r1]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, _021AB6F4 ; =0x021B4A38
	add r0, r0, r7
	str r0, [sp, #0x2c]
	ldr r0, _021AB6F8 ; =0x0000041E
	add r0, r7, r0
	str r0, [sp, #0x4c]
	ldr r0, _021AB6FC ; =0x0000031E
	add r0, r7, r0
	str r0, [sp, #0x48]
_021AB42A:
	ldr r0, [sp, #0x18]
	mov r6, #1
	ldrb r0, [r2, r0]
	cmp r0, #1
	blt _021AB4DA
	ldr r0, [sp, #0x18]
	mov r1, #8
	sub r1, r1, r0
	add r0, r6, #0
	lsl r0, r1
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
_021AB44A:
	mov r0, ip
	cmp r3, r0
	blt _021AB45E
	ldr r0, _021AB6F0 ; =0x021B3D8C
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB45E:
	add r0, sp, #0x174
	lsl r1, r3, #1
	add r0, #2
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x28]
	lsl r0, r1
	ldr r1, _021AB700 ; =0xFFFFF3D2
	cmp r0, r1
	blt _021AB47A
	ldr r1, [sp, #0x6c]
	add r4, r0, r1
	ldr r1, _021AB704 ; =0x00000BD3
	cmp r4, r1
	blt _021AB488
_021AB47A:
	ldr r0, _021AB6F0 ; =0x021B3D8C
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB488:
	ldr r1, [sp, #0x6c]
	add r4, r1, #0
	cmp r4, #0
	ble _021AB4CE
	add r4, r2, r3
	str r4, [sp, #0x24]
_021AB494:
	ldr r4, [sp, #0x48]
	add r4, r4, r0
	bmi _021AB4A6
	ldr r4, [sp, #0x4c]
	add r5, r4, r0
	mov r4, #6
	lsl r4, r4, #0xa
	cmp r5, r4
	blt _021AB4B4
_021AB4A6:
	ldr r0, _021AB6F0 ; =0x021B3D8C
	mov r1, #1
	add sp, #0x1fc
	str r1, [r0, #0x1c]
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB4B4:
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x50]
	add r7, r4, r0
	ldr r4, _021AB6FC ; =0x0000031E
	sub r1, r1, #1
	strb r5, [r7, r4]
	ldr r4, [sp, #0x24]
	add r0, r0, #1
	ldrb r5, [r4, #0x14]
	ldr r4, _021AB6F8 ; =0x0000041E
	cmp r1, #0
	strb r5, [r7, r4]
	bgt _021AB494
_021AB4CE:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	ldrb r0, [r2, r0]
	add r3, r3, #1
	cmp r6, r0
	ble _021AB44A
_021AB4DA:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #8
	ble _021AB42A
	ldr r1, [sp, #0x70]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _021AB4EE
	b _021AB260
_021AB4EE:
	b _021AB730
_021AB4F0:
	cmp r2, #0xd8
	bne _021AB4F6
	b _021AB730
_021AB4F6:
	cmp r2, #0xda
	bne _021AB5F4
	ldr r0, [sp, #0x20]
	add r3, #0xc
	ldr r6, _021AB6F0 ; =0x021B3D8C
	cmp r3, r0
	blo _021AB50C
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB50C:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r3, [sp, #0x70]
	cmp r0, #0
	ble _021AB5F2
_021AB518:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	ble _021AB5E2
	add r7, sp, #0x70
	mov r4, #0
_021AB526:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021AB56C
	ldr r0, [sp, #0x34]
	sub r0, r0, #1
	str r0, [sp, #0x34]
	bne _021AB56C
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x34]
	ldr r0, [r6, #0x10]
	cmp r0, #7
	ble _021AB548
	ldr r1, [sp, #0x70]
	ldr r0, [r6, #0xc]
	sub r0, r1, r0
	sub r0, r0, #1
	str r0, [sp, #0x70]
_021AB548:
	ldr r0, [sp, #0x70]
	mov r1, #0
	add r0, r0, #2
	str r0, [sp, #0x70]
	mov r0, #0
	str r0, [r6, #0x10]
	ldr r0, _021AB708 ; =0x021B41B8
	strh r1, [r0]
	add r1, r0, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, _021AB70C ; =0x021B4138
	strh r1, [r0]
	add r1, r0, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, _021AB710 ; =0x021B3FB8
	strh r1, [r0]
_021AB56C:
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #4]
	mov r5, #0
	mul r0, r1
	cmp r0, #0
	ble _021AB59C
_021AB578:
	ldr r0, [sp, #8]
	ldr r1, _021AB710 ; =0x021B3FB8
	add r2, r7, #0
	add r3, r4, #0
	bl ovy257_21ab764
	ldr r0, _021AB714 ; =0x021B4238
	lsl r1, r5, #7
	add r0, r0, r1
	add r1, r4, #0
	bl ovy257_21ab884
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #4]
	add r5, r5, #1
	mul r0, r1
	cmp r5, r0
	blt _021AB578
_021AB59C:
	ldr r0, [sp, #8]
	ldr r1, _021AB70C ; =0x021B4138
	add r2, r7, #0
	mov r3, #2
	bl ovy257_21ab764
	ldr r0, _021AB718 ; =0x021B3E38
	mov r1, #3
	bl ovy257_21ab884
	ldr r0, [sp, #8]
	ldr r1, _021AB708 ; =0x021B41B8
	add r2, r7, #0
	mov r3, #2
	bl ovy257_21ab764
	ldr r0, _021AB71C ; =0x021B3DB8
	mov r1, #4
	bl ovy257_21ab884
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x40]
	bl ovy257_21ac018
	ldr r1, [r6, #0x24]
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _021AB526
_021AB5E2:
	ldr r0, _021AB6F0 ; =0x021B3D8C
	ldr r1, [r0, #0x28]
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021AB518
_021AB5F2:
	b _021AB73E
_021AB5F4:
	cmp r2, #0xdb
	bne _021AB6C4
	add r0, r3, r0
	add r4, r3, #2
	str r0, [sp, #0x1c]
	str r0, [sp, #0x70]
	cmp r4, r0
	bge _021AB6C2
_021AB604:
	ldr r0, [sp, #8]
	ldrb r2, [r0, r4]
	mov r0, #0xf0
	tst r0, r2
	beq _021AB66C
	add r1, r4, #0
	ldr r0, [sp, #0x20]
	add r1, #0x82
	cmp r1, r0
	blo _021AB620
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB620:
	lsl r0, r2, #0x1c
	lsr r5, r0, #0x16
	ldr r0, _021AB720 ; =0x021B3EB8
	lsl r1, r5, #1
	add r4, r4, #1
	mov r3, #0
	add r7, r0, r1
_021AB62E:
	ldr r0, _021AB724 ; =0x021B26E8
	ldrb r2, [r0, r3]
	add r0, r5, r2
	cmp r0, #0x7f
	ble _021AB640
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB640:
	ldr r1, _021AB728 ; =0x021B2728
	lsl r6, r3, #1
	ldr r0, [sp, #8]
	ldrsh r1, [r1, r6]
	ldr r6, [sp, #8]
	add r0, r0, r4
	ldrb r6, [r6, r4]
	ldrb r0, [r0, #1]
	add r3, r3, #1
	lsl r6, r6, #8
	add r0, r0, r6
	mul r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
	asr r1, r0, #0xc
	lsl r0, r2, #1
	add r4, r4, #2
	strh r1, [r7, r0]
	cmp r3, #0x40
	blt _021AB62E
	b _021AB6BC
_021AB66C:
	add r1, r4, #0
	ldr r0, [sp, #0x20]
	add r1, #0x41
	cmp r1, r0
	blo _021AB67E
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB67E:
	lsl r6, r2, #6
	ldr r0, _021AB720 ; =0x021B3EB8
	lsl r1, r6, #1
	add r4, r4, #1
	mov r5, #0
	add r7, r0, r1
_021AB68A:
	ldr r0, _021AB724 ; =0x021B26E8
	ldrb r3, [r0, r5]
	add r0, r6, r3
	cmp r0, #0x7f
	ble _021AB69C
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB69C:
	ldr r0, [sp, #8]
	lsl r1, r5, #1
	ldrb r2, [r0, r4]
	ldr r0, _021AB728 ; =0x021B2728
	add r5, r5, #1
	ldrsh r0, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0xa
	mul r0, r2
	add r0, r0, r1
	asr r1, r0, #0xc
	lsl r0, r3, #1
	add r4, r4, #1
	strh r1, [r7, r0]
	cmp r5, #0x40
	blt _021AB68A
_021AB6BC:
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	blt _021AB604
_021AB6C2:
	b _021AB730
_021AB6C4:
	cmp r2, #0xdd
	bne _021AB72C
	ldr r2, [sp, #0x20]
	add r4, r3, #3
	cmp r4, r2
	blo _021AB6D8
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB6D8:
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	add r0, r3, r0
	lsl r2, r2, #8
	orr r1, r2
	str r0, [sp, #0x70]
	add r0, r1, #0
	add r0, r0, #1
	str r1, [sp, #0x38]
	str r0, [sp, #0x34]
	b _021AB730
	nop
_021AB6F0: .word 0x021B3D8C
_021AB6F4: .word 0x021B4A38
_021AB6F8: .word 0x0000041E
_021AB6FC: .word 0x0000031E
_021AB700: .word 0xFFFFF3D2
_021AB704: .word 0x00000BD3
_021AB708: .word 0x021B41B8
_021AB70C: .word 0x021B4138
_021AB710: .word 0x021B3FB8
_021AB714: .word 0x021B4238
_021AB718: .word 0x021B3E38
_021AB71C: .word 0x021B3DB8
_021AB720: .word 0x021B3EB8
_021AB724: .word 0x021B26E8
_021AB728: .word 0x021B2728
_021AB72C:
	add r0, r3, r0
	str r0, [sp, #0x70]
_021AB730:
	ldr r0, [sp, #0x70]
	add r1, r0, #1
	ldr r0, _021AB760 ; =0x021B3D8C
	ldr r0, [r0, #8]
	cmp r1, r0
	bhs _021AB73E
	b _021AB11A
_021AB73E:
	ldr r0, _021AB760 ; =0x021B3D8C
	ldr r1, [sp, #0x70]
	ldr r0, [r0, #8]
	cmp r1, r0
	bls _021AB750
	add sp, #0x1fc
	add sp, #0x17c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB750:
	ldr r0, [sp, #0x3c]
	lsl r1, r0, #0x10
	ldr r0, [sp, #0x40]
	orr r0, r1
	add sp, #0x1fc
	add sp, #0x17c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AB760: .word 0x021B3D8C
	thumb_func_end ovy257_21ab0a4

	thumb_func_start ovy257_21ab764
ovy257_21ab764: ; 0x021AB764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	str r3, [sp, #8]
	bl ovy257_21abd84
	add r3, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r4, #0
	mov r2, #0
	bl ovy257_21ab808
	ldrsh r1, [r5, r4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r5]
	mov r0, #0x3f
	str r0, [sp, #0xc]
	mov r4, #1
	mov r7, #0
_021AB798:
	ldr r2, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r2, #1
	bl ovy257_21abd84
	mov ip, r0
	cmp r0, #0
	bne _021AB7BE
	cmp r4, #0x40
	bge _021AB802
	mov r1, #0
_021AB7B0:
	lsl r0, r4, #1
	add r4, r4, #1
	strh r1, [r5, r0]
	cmp r4, #0x40
	blt _021AB7B0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021AB7BE:
	mov r0, ip
	ldr r1, [sp, #0xc]
	asr r0, r0, #4
	sub r1, r1, r0
	str r1, [sp, #0xc]
	add r1, r4, r0
	cmp r1, #0x3f
	bgt _021AB802
	mov r2, #0
	cmp r0, #0
	ble _021AB7E2
	ble _021AB7E2
_021AB7D6:
	lsl r1, r4, #1
	add r2, r2, #1
	strh r7, [r5, r1]
	add r4, r4, #1
	cmp r2, r0
	blt _021AB7D6
_021AB7E2:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r3, #0xf
	mov r6, ip
	mov r2, #0
	and r3, r6
	bl ovy257_21ab808
	lsl r1, r4, #1
	strh r0, [r5, r1]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	sub r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _021AB798
_021AB802:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21ab764

	thumb_func_start ovy257_21ab808
ovy257_21ab808: ; 0x021AB808
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	beq _021AB878
	mov r2, #0
	ldr r3, _021AB880 ; =0x021B3D8C
	str r2, [sp, #4]
	ldr r2, [r5]
	ldr r3, [r3, #8]
	add r2, r2, #1
	cmp r2, r3
	blo _021AB82C
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021AB82C:
	bl ovy257_21abd3c
	cmp r0, #0
	bne _021AB83E
	mov r0, #1
	lsl r0, r6
	sub r0, r0, #1
	str r0, [sp, #4]
	b _021AB846
_021AB83E:
	lsl r1, r4, #1
	mov r0, #1
	add r4, r1, #0
	orr r4, r0
_021AB846:
	sub r6, r6, #1
	mov r7, #0
	cmp r6, #0
	ble _021AB874
_021AB84E:
	ldr r0, [r5]
	add r1, r0, #1
	ldr r0, _021AB880 ; =0x021B3D8C
	ldr r0, [r0, #8]
	cmp r1, r0
	blo _021AB860
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AB860:
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy257_21abd3c
	lsl r1, r4, #1
	add r4, r1, #0
	add r7, r7, #1
	orr r4, r0
	cmp r7, r6
	blt _021AB84E
_021AB874:
	ldr r0, [sp, #4]
	sub r4, r4, r0
_021AB878:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AB880: .word 0x021B3D8C
	thumb_func_end ovy257_21ab808

	thumb_func_start ovy257_21ab884
ovy257_21ab884: ; 0x021AB884
	push {r3, r4, r5, r6, r7, lr}
	mov ip, r1
	str r0, [sp]
	mov r0, ip
	ldr r6, _021AB8D0 ; =0x021B3FB8
	lsl r0, r0, #7
	ldr r7, _021AB8D4 ; =0x021B26E8
	mov r3, #0
	mov r2, #0
	mov r1, #0
	add r4, r6, r0
_021AB89A:
	ldrb r5, [r7, r3]
	lsl r0, r2, #1
	ldrsh r0, [r4, r0]
	lsl r5, r5, #1
	add r5, r6, r5
	add r5, #0x80
	add r1, r1, #1
	strh r0, [r5]
	add r2, r2, #1
	add r3, r3, #1
	cmp r1, #0x40
	blt _021AB89A
	mov r0, ip
	cmp r0, #0
	bne _021AB8C4
	ldr r0, _021AB8D8 ; =0x021B4038
	ldr r1, [sp]
	mov r2, #0
	bl ovy257_21ab8dc
	pop {r3, r4, r5, r6, r7, pc}
_021AB8C4:
	ldr r0, _021AB8D8 ; =0x021B4038
	ldr r1, [sp]
	mov r2, #0x40
	bl ovy257_21ab8dc
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB8D0: .word 0x021B3FB8
_021AB8D4: .word 0x021B26E8
_021AB8D8: .word 0x021B4038
	thumb_func_end ovy257_21ab884

	thumb_func_start ovy257_21ab8dc
ovy257_21ab8dc: ; 0x021AB8DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xe4
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, _021ABC6C ; =0x021B3EB8
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0xb4]
	add r0, #0x6f
	str r0, [sp, #0xb4]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0xb0]
	sub r0, #0x55
	str r0, [sp, #0xb0]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0xac]
	sub r0, #0x6a
	str r0, [sp, #0xac]
	ldr r0, _021ABC70 ; =0x0000016A
	add r0, r0, #6
	str r0, [sp, #0xa8]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0xa4]
	sub r0, #0x5a
	str r0, [sp, #0xa4]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0xa0]
	sub r0, #0xa
	str r0, [sp, #0xa0]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x9c]
	sub r0, #0x4a
	str r0, [sp, #0x9c]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x98]
	sub r0, #0x1a
	str r0, [sp, #0x98]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x94]
	sub r0, #0x2a
	str r0, [sp, #0x94]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x90]
	sub r0, #0x3a
	str r0, [sp, #0x90]
	ldr r0, _021ABC70 ; =0x0000016A
	add r0, r0, #6
	str r0, [sp, #0x8c]
	ldr r0, _021ABC70 ; =0x0000016A
	add r0, r0, #6
	str r0, [sp, #0x88]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x84]
	sub r0, #0xa
	str r0, [sp, #0x84]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x80]
	sub r0, #0xa
	str r0, [sp, #0x80]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x7c]
	sub r0, #0x1a
	str r0, [sp, #0x7c]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x78]
	sub r0, #0x1a
	str r0, [sp, #0x78]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x74]
	sub r0, #0x2a
	str r0, [sp, #0x74]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x70]
	sub r0, #0x2a
	str r0, [sp, #0x70]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x6c]
	sub r0, #0x3a
	str r0, [sp, #0x6c]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x68]
	sub r0, #0x3a
	str r0, [sp, #0x68]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x64]
	sub r0, #0x4a
	str r0, [sp, #0x64]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x60]
	sub r0, #0x4a
	str r0, [sp, #0x60]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x5c]
	sub r0, #0x5a
	str r0, [sp, #0x5c]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x58]
	sub r0, #0x5a
	str r0, [sp, #0x58]
	ldr r0, _021ABC70 ; =0x0000016A
	str r0, [sp, #0x54]
	sub r0, #0x6a
	str r0, [sp, #0x54]
_021AB9B2:
	ldr r0, [sp, #0x10]
	lsl r4, r0, #1
	ldr r0, [sp]
	add r1, r0, r4
	mov r0, #0x20
	ldrsh r2, [r1, r0]
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x14]
	mov r0, #0x30
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x18]
	mov r0, #0x40
	ldrsh r6, [r1, r0]
	mov r0, #0x50
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xdc]
	mov r0, #0x60
	ldrsh r5, [r1, r0]
	mov r0, #0x70
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	orr r3, r2
	orr r0, r3
	add r3, r6, #0
	orr r3, r0
	ldr r0, [sp, #0xdc]
	orr r0, r3
	add r3, r5, #0
	orr r3, r0
	ldr r0, [sp, #0x1c]
	orr r0, r3
	bne _021ABA48
	mov r2, #0
	ldrsh r2, [r1, r2]
	ldr r1, [sp, #0xc]
	ldr r0, _021ABC74 ; =0x021B3FB8
	ldrsh r1, [r1, r4]
	add r3, r2, #0
	add r0, r0, r4
	mul r3, r1
	ldr r1, [sp, #0x8c]
	strh r3, [r0, r1]
	ldr r1, [sp, #0x88]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x84]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x80]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x7c]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x78]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x74]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x70]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x6c]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x68]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x64]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x60]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x5c]
	strh r2, [r0, r1]
	ldr r1, [sp, #0x58]
	ldrsh r2, [r0, r1]
	ldr r1, [sp, #0x54]
	strh r2, [r0, r1]
	b _021ABB24
_021ABA48:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0xc]
	add r1, r0, r4
	ldr r0, [sp]
	ldrsh r3, [r3, r4]
	ldrsh r0, [r0, r4]
	mul r3, r0
	mov r0, #0x20
	ldrsh r0, [r1, r0]
	mul r0, r2
	mov r2, #0x40
	ldrsh r2, [r1, r2]
	mul r2, r6
	mov r6, #0x60
	ldrsh r6, [r1, r6]
	mul r6, r5
	add r5, r3, r2
	sub r3, r3, r2
	add r2, r0, r6
	sub r6, r0, r6
	ldr r0, _021ABC70 ; =0x0000016A
	mul r0, r6
	asr r0, r0, #8
	sub r0, r0, r2
	add r6, r5, r2
	sub r2, r5, r2
	str r2, [sp, #0xe0]
	add r2, r3, r0
	sub r7, r3, r0
	mov r0, #0x10
	str r2, [sp, #0x24]
	ldrsh r0, [r1, r0]
	ldr r2, [sp, #0x14]
	str r6, [sp, #0x20]
	mul r0, r2
	mov r2, #0x30
	ldrsh r3, [r1, r2]
	ldr r2, [sp, #0x18]
	add r5, r2, #0
	mov r2, #0x50
	mul r5, r3
	ldrsh r2, [r1, r2]
	ldr r3, [sp, #0xdc]
	mul r2, r3
	mov r3, #0x70
	ldrsh r3, [r1, r3]
	ldr r1, [sp, #0x1c]
	mul r3, r1
	add r1, r2, r5
	sub r2, r2, r5
	add r5, r0, r3
	sub r0, r0, r3
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r3, r0, r1
	ldr r0, [sp, #0x2c]
	str r5, [sp, #0x28]
	add r5, r2, r0
	ldr r0, [sp, #0xb4]
	ldr r6, [sp, #0x2c]
	mul r0, r5
	ldr r5, _021ABC78 ; =0xFFFFFD63
	asr r0, r0, #8
	mul r5, r2
	asr r2, r5, #8
	ldr r5, [sp, #0x28]
	add r2, r0, r2
	sub r5, r5, r1
	ldr r1, _021ABC70 ; =0x0000016A
	sub r2, r2, r3
	mul r1, r5
	ldr r5, [sp, #0xb0]
	asr r1, r1, #8
	mul r5, r6
	asr r5, r5, #8
	sub r0, r5, r0
	ldr r5, _021ABC74 ; =0x021B3FB8
	sub r1, r1, r2
	add r6, r5, r4
	ldr r4, [sp, #0x20]
	add r0, r1, r0
	add r5, r4, r3
	ldr r4, [sp, #0xac]
	strh r5, [r6, r4]
	ldr r4, [sp, #0x20]
	sub r4, r4, r3
	ldr r3, [sp, #0xa8]
	strh r4, [r6, r3]
	ldr r3, [sp, #0x24]
	add r4, r3, r2
	ldr r3, [sp, #0xa4]
	strh r4, [r6, r3]
	ldr r3, [sp, #0x24]
	sub r3, r3, r2
	ldr r2, [sp, #0xa0]
	strh r3, [r6, r2]
	ldr r2, [sp, #0x9c]
	add r3, r7, r1
	strh r3, [r6, r2]
	sub r2, r7, r1
	ldr r1, [sp, #0x98]
	strh r2, [r6, r1]
	ldr r1, [sp, #0xe0]
	add r2, r1, r0
	ldr r1, [sp, #0x94]
	strh r2, [r6, r1]
	ldr r1, [sp, #0xe0]
	sub r1, r1, r0
	ldr r0, [sp, #0x90]
	strh r1, [r6, r0]
_021ABB24:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	bge _021ABB30
	b _021AB9B2
_021ABB30:
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #8
	add r0, #0x6a
	mov ip, r0
	mov r0, #1
	lsl r0, r0, #8
	add r0, #0xd9
	mov lr, r0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xd8]
	add r0, #0x6a
	str r0, [sp, #0xd8]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xd4]
	add r0, #0x15
	str r0, [sp, #0xd4]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xd0]
	add r0, #0xe
	str r0, [sp, #0xd0]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xcc]
	add r0, #0xc
	str r0, [sp, #0xcc]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xc8]
	add r0, #0xa
	str r0, [sp, #0xc8]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xc4]
	add r0, #8
	str r0, [sp, #0xc4]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r0, #6
	str r0, [sp, #0xc0]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r0, #2
	str r0, [sp, #0xbc]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #0xb8]
_021ABB98:
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc4]
	lsl r7, r0, #4
	ldr r0, _021ABC74 ; =0x021B3FB8
	add r2, r0, r7
	ldrsh r5, [r2, r3]
	ldr r3, [sp, #0xc0]
	ldr r0, [sp, #0xd0]
	ldrsh r3, [r2, r3]
	ldrsh r6, [r2, r0]
	ldr r0, [sp, #0xcc]
	str r3, [sp, #0x30]
	ldr r3, [sp, #0xbc]
	ldrsh r1, [r2, r0]
	ldrsh r3, [r2, r3]
	ldr r0, [sp, #0xc8]
	str r3, [sp, #0x34]
	ldr r3, [sp, #0xb8]
	ldr r4, [sp, #0x34]
	ldrsh r3, [r2, r3]
	ldrsh r0, [r2, r0]
	str r3, [sp, #0x38]
	orr r4, r3
	ldr r3, [sp, #0x30]
	orr r3, r4
	orr r3, r5
	orr r3, r0
	orr r3, r1
	orr r3, r6
	bne _021ABC18
	mov r1, #1
	lsl r1, r1, #8
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #4]
	asr r2, r1, #5
	ldr r1, _021ABC7C ; =0x000003FF
	add r0, r0, r7
	and r2, r1
	ldr r1, _021ABC80 ; =0x021B3528
	ldrb r1, [r1, r2]
	strh r1, [r0, #0xe]
	mov r1, #0xe
	ldrsh r1, [r0, r1]
	strh r1, [r0, #0xc]
	mov r1, #0xc
	ldrsh r1, [r0, r1]
	strh r1, [r0, #0xa]
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	strh r1, [r0, #8]
	mov r1, #8
	ldrsh r1, [r0, r1]
	strh r1, [r0, #6]
	mov r1, #6
	ldrsh r1, [r0, r1]
	strh r1, [r0, #4]
	mov r1, #4
	ldrsh r1, [r0, r1]
	strh r1, [r0, #2]
	mov r1, #2
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #4]
	strh r1, [r0, r7]
	b _021ABD24
_021ABC18:
	mov r3, #1
	lsl r3, r3, #8
	ldrsh r2, [r2, r3]
	ldr r4, [sp, #0x38]
	add r3, r2, r5
	sub r2, r2, r5
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	sub r4, r4, r1
	add r2, r2, r1
	mov r1, ip
	mul r1, r4
	asr r1, r1, #8
	sub r4, r1, r2
	add r1, r3, r2
	str r1, [sp, #0x40]
	sub r1, r3, r2
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x30]
	add r1, r1, r4
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x3c]
	sub r2, r0, r2
	sub r1, r1, r4
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x30]
	add r1, r0, r1
	ldr r0, [sp, #0x34]
	add r3, r0, r6
	sub r0, r0, r6
	add r5, r3, r1
	sub r3, r3, r1
	ldr r1, [sp, #0xd8]
	str r0, [sp, #0x50]
	mul r1, r3
	add r4, r2, r0
	mov r0, lr
	mul r0, r4
	ldr r4, _021ABC78 ; =0xFFFFFD63
	b _021ABC84
	nop
_021ABC6C: .word 0x021B3EB8
_021ABC70: .word 0x0000016A
_021ABC74: .word 0x021B3FB8
_021ABC78: .word 0xFFFFFD63
_021ABC7C: .word 0x000003FF
_021ABC80: .word 0x021B3528
_021ABC84:
	ldr r3, [sp, #0xd4]
	mul r4, r2
	asr r2, r4, #8
	ldr r4, [sp, #0x50]
	asr r0, r0, #8
	mul r3, r4
	add r2, r0, r2
	asr r3, r3, #8
	sub r0, r3, r0
	ldr r3, [sp, #0x40]
	sub r2, r2, r5
	add r3, r3, r5
	asr r4, r3, #5
	ldr r3, _021ABD34 ; =0x000003FF
	asr r1, r1, #8
	and r4, r3
	ldr r3, _021ABD38 ; =0x021B3528
	sub r1, r1, r2
	ldrb r4, [r3, r4]
	ldr r3, [sp, #4]
	add r6, r1, r0
	strh r4, [r3, r7]
	ldr r3, [sp, #0x40]
	ldr r0, [sp, #4]
	sub r3, r3, r5
	asr r4, r3, #5
	ldr r3, _021ABD34 ; =0x000003FF
	add r0, r0, r7
	and r4, r3
	ldr r3, _021ABD38 ; =0x021B3528
	ldrb r3, [r3, r4]
	strh r3, [r0, #0xe]
	ldr r3, [sp, #0x48]
	add r3, r3, r2
	asr r4, r3, #5
	ldr r3, _021ABD34 ; =0x000003FF
	and r4, r3
	ldr r3, _021ABD38 ; =0x021B3528
	ldrb r3, [r3, r4]
	strh r3, [r0, #2]
	ldr r3, [sp, #0x48]
	sub r2, r3, r2
	asr r3, r2, #5
	ldr r2, _021ABD34 ; =0x000003FF
	and r3, r2
	ldr r2, _021ABD38 ; =0x021B3528
	ldrb r2, [r2, r3]
	strh r2, [r0, #0xc]
	ldr r2, [sp, #0x4c]
	add r2, r2, r1
	asr r3, r2, #5
	ldr r2, _021ABD34 ; =0x000003FF
	and r3, r2
	ldr r2, _021ABD38 ; =0x021B3528
	ldrb r2, [r2, r3]
	strh r2, [r0, #4]
	ldr r2, [sp, #0x4c]
	sub r1, r2, r1
	asr r2, r1, #5
	ldr r1, _021ABD34 ; =0x000003FF
	and r2, r1
	ldr r1, _021ABD38 ; =0x021B3528
	ldrb r1, [r1, r2]
	strh r1, [r0, #0xa]
	ldr r1, [sp, #0x44]
	add r1, r1, r6
	asr r2, r1, #5
	ldr r1, _021ABD34 ; =0x000003FF
	and r2, r1
	ldr r1, _021ABD38 ; =0x021B3528
	ldrb r1, [r1, r2]
	strh r1, [r0, #8]
	ldr r1, [sp, #0x44]
	sub r1, r1, r6
	asr r2, r1, #5
	ldr r1, _021ABD34 ; =0x000003FF
	and r2, r1
	ldr r1, _021ABD38 ; =0x021B3528
	ldrb r1, [r1, r2]
	strh r1, [r0, #6]
_021ABD24:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #8
	bge _021ABD30
	b _021ABB98
_021ABD30:
	add sp, #0xe4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ABD34: .word 0x000003FF
_021ABD38: .word 0x021B3528
	thumb_func_end ovy257_21ab8dc

	thumb_func_start ovy257_21abd3c
ovy257_21abd3c: ; 0x021ABD3C
	push {r3, r4}
	ldr r2, _021ABD80 ; =0x021B3D8C
	ldr r3, [r2, #0x10]
	cmp r3, #0
	bne _021ABD6A
	ldr r3, [r1]
	add r4, r3, #1
	str r4, [r1]
	ldrb r3, [r0, r3]
	mov r0, #0
	str r3, [r2]
	str r0, [r2, #0xc]
	cmp r3, #0xff
	bne _021ABD64
	add r0, r4, #1
	str r0, [r1]
	mov r0, #0xff
	str r0, [r2]
	mov r0, #1
	str r0, [r2, #0xc]
_021ABD64:
	ldr r0, _021ABD80 ; =0x021B3D8C
	mov r1, #8
	str r1, [r0, #0x10]
_021ABD6A:
	ldr r0, _021ABD80 ; =0x021B3D8C
	ldr r1, [r0, #0x10]
	sub r2, r1, #1
	str r2, [r0, #0x10]
	ldr r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, r4}
	bx lr
	.align 2, 0
_021ABD80: .word 0x021B3D8C
	thumb_func_end ovy257_21abd3c

	thumb_func_start ovy257_21abd84
ovy257_21abd84: ; 0x021ABD84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r3, r1, #0
	ldr r0, _021AC004 ; =0x021B26D8
	lsl r1, r2, #2
	ldr r0, [r0, r1]
	ldr r1, _021AC008 ; =0x021B4A38
	mov lr, r0
	add r1, r1, r0
	ldr r0, _021AC00C ; =0x021B3D8C
	str r2, [sp, #4]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x10]
	cmp r1, #8
	bge _021ABDE0
	ldr r1, [r0]
	lsl r1, r1, #8
	str r1, [r0]
	ldr r2, [r3]
	ldr r4, [r0, #8]
	add r1, r2, #1
	cmp r1, r4
	blo _021ABDBC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABDBC:
	ldr r4, [sp]
	str r1, [r3]
	ldrb r2, [r4, r2]
	mov r4, #0
	str r4, [r0, #0xc]
	cmp r2, #0xff
	bne _021ABDD4
	add r1, r1, #1
	str r1, [r3]
	mov r1, #1
	mov r2, #0xff
	str r1, [r0, #0xc]
_021ABDD4:
	ldr r1, [r0, #0x10]
	add r1, #8
	str r1, [r0, #0x10]
	ldr r1, [r0]
	orr r1, r2
	str r1, [r0]
_021ABDE0:
	ldr r4, [r0, #0x10]
	ldr r5, [r0]
	add r1, r4, #0
	sub r1, #8
	add r2, r5, #0
	asr r2, r1
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	mov r1, lr
	add r1, #0xae
	add r1, r1, r2
	bmi _021ABE00
	mov r7, #6
	lsl r7, r7, #0xa
	cmp r1, r7
	blt _021ABE0A
_021ABE00:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABE0A:
	ldr r6, _021AC008 ; =0x021B4A38
	ldrb r1, [r6, r1]
	cmp r1, #0
	beq _021ABE36
	sub r1, r4, r1
	str r1, [r0, #0x10]
	ldr r1, _021AC010 ; =0x000001AE
	mov r0, lr
	add r0, r0, r1
	ldr r3, _021AC00C ; =0x021B3D8C
	add r0, r0, r2
	bmi _021ABE26
	cmp r0, r7
	blt _021ABE30
_021ABE26:
	mov r0, #1
	str r0, [r3, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABE30:
	add sp, #8
	ldrb r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ABE36:
	ldr r7, _021AC00C ; =0x021B3D8C
	cmp r4, #9
	bge _021ABE7A
	mov r6, #0
_021ABE3E:
	lsl r1, r5, #8
	str r1, [r0]
	ldr r2, [r3]
	ldr r4, [r0, #8]
	add r1, r2, #1
	cmp r1, r4
	blo _021ABE52
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABE52:
	ldr r4, [sp]
	str r1, [r3]
	ldrb r2, [r4, r2]
	str r6, [r0, #0xc]
	cmp r2, #0xff
	bne _021ABE68
	add r1, r1, #1
	str r1, [r3]
	mov r1, #1
	mov r2, #0xff
	str r1, [r0, #0xc]
_021ABE68:
	ldr r4, [r0, #0x10]
	add r4, #8
	str r4, [r0, #0x10]
	ldr r1, [r0]
	add r5, r1, #0
	orr r5, r2
	str r5, [r0]
	cmp r4, #9
	blt _021ABE3E
_021ABE7A:
	ldr r6, [r7]
	mov r2, lr
	sub r4, #9
	add r0, r6, #0
	asr r0, r4
	ldr r4, [r7, #0x10]
	add r5, r0, #0
	ldr r1, _021AC014 ; =0x000001FF
	mov r0, #6
	sub r4, #9
	and r5, r1
	add r2, #0x1a
	lsl r0, r0, #0xa
	mov r1, #9
	str r4, [r7, #0x10]
	cmp r2, r0
	blt _021ABEA6
	mov r0, #1
	str r0, [r7, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABEA6:
	ldr r2, [r7, #0x20]
	ldr r0, [r2, #0x68]
	cmp r5, r0
	ble _021ABF20
	mov r0, lr
	add r0, #0x11
	mov ip, r0
_021ABEB4:
	cmp r4, #0
	bne _021ABEE8
	ldr r4, [r3]
	ldr r2, [r7, #8]
	add r0, r4, #1
	cmp r0, r2
	blo _021ABEC8
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABEC8:
	ldr r2, [sp]
	str r0, [r3]
	ldrb r6, [r2, r4]
	mov r2, #0
	str r6, [r7]
	str r2, [r7, #0xc]
	cmp r6, #0xff
	bne _021ABEE6
	add r0, r0, #1
	str r0, [r3]
	mov r0, #0xff
	str r0, [r7]
	mov r0, #1
	mov r6, #0xff
	str r0, [r7, #0xc]
_021ABEE6:
	mov r4, #8
_021ABEE8:
	sub r2, r4, #1
	add r0, r6, #0
	asr r0, r2
	mov r2, #1
	lsl r5, r5, #1
	and r0, r2
	orr r5, r0
	sub r4, r4, #1
	add r1, r1, #1
	mov r0, ip
	add r2, r0, r1
	mov r0, #6
	lsl r0, r0, #0xa
	str r4, [r7, #0x10]
	cmp r2, r0
	blt _021ABF14
	ldr r0, _021AC00C ; =0x021B3D8C
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABF14:
	ldr r2, [r7, #0x20]
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, #0x44]
	cmp r5, r0
	bgt _021ABEB4
_021ABF20:
	ldr r6, _021AC008 ; =0x021B4A38
	ldr r0, _021AC00C ; =0x021B3D8C
	cmp r1, #0x10
	bgt _021ABF38
	mov r3, lr
	add r3, r3, r1
	bmi _021ABF38
	mov r4, #6
	add r3, #0x46
	lsl r4, r4, #0xa
	cmp r3, r4
	blt _021ABF42
_021ABF38:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABF42:
	ldr r3, [sp, #4]
	cmp r3, #3
	bhi _021ABFFC
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021ABF54: ; jump table
	.short _021ABF5C - _021ABF54 - 2 ; case 0
	.short _021ABF82 - _021ABF54 - 2 ; case 1
	.short _021ABFA8 - _021ABF54 - 2 ; case 2
	.short _021ABFD2 - _021ABF54 - 2 ; case 3
_021ABF5C:
	add r7, r1, #0
	add r7, #0x46
	ldr r3, [r0, #0x18]
	lsl r7, r7, #1
	ldrsh r3, [r3, r7]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r3, r5, r3
	sub r1, r3, r1
	add r1, #0x14
	bmi _021ABF76
	cmp r1, r4
	blt _021ABF80
_021ABF76:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABF80:
	b _021ABFFA
_021ABF82:
	add r7, r1, #0
	add r7, #0x46
	ldr r3, [r0, #0x18]
	lsl r7, r7, #1
	ldrsh r3, [r3, r7]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r3, r5, r3
	sub r1, r3, r1
	add r1, #0x38
	bmi _021ABF9C
	cmp r1, r4
	blt _021ABFA6
_021ABF9C:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABFA6:
	b _021ABFFA
_021ABFA8:
	add r7, r1, #0
	add r7, #0x46
	ldr r3, [r0, #0x18]
	lsl r7, r7, #1
	ldrsh r3, [r3, r7]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r3, r5, r3
	sub r2, r3, r1
	mov r1, #0x53
	lsl r1, r1, #2
	add r1, r2, r1
	bmi _021ABFC6
	cmp r1, r4
	blt _021ABFD0
_021ABFC6:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABFD0:
	b _021ABFFA
_021ABFD2:
	add r7, r1, #0
	add r7, #0x46
	ldr r3, [r0, #0x18]
	lsl r7, r7, #1
	ldrsh r3, [r3, r7]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r3, r5, r3
	sub r2, r3, r1
	mov r1, #0x17
	lsl r1, r1, #4
	add r1, r2, r1
	bmi _021ABFF0
	cmp r1, r4
	blt _021ABFFA
_021ABFF0:
	mov r1, #1
	str r1, [r0, #0x1c]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABFFA:
	ldrb r5, [r6, r1]
_021ABFFC:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AC004: .word 0x021B26D8
_021AC008: .word 0x021B4A38
_021AC00C: .word 0x021B3D8C
_021AC010: .word 0x000001AE
_021AC014: .word 0x000001FF
	thumb_func_end ovy257_21abd84

	thumb_func_start ovy257_21ac018
ovy257_21ac018: ; 0x021AC018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, _021AC368 ; =0x021B3D8C
	str r0, [sp, #0x90]
	ldr r0, [r1, #4]
	str r2, [sp, #8]
	ldr r1, [r1, #0x14]
	lsl r2, r0, #1
	add r2, r1, r2
	str r3, [sp, #0xc]
	cmp r2, #6
	bhi _021AC102
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021AC042: ; jump table
	.short _021AC404 - _021AC042 - 2 ; case 0
	.short _021AC404 - _021AC042 - 2 ; case 1
	.short _021AC404 - _021AC042 - 2 ; case 2
	.short _021AC050 - _021AC042 - 2 ; case 3
	.short _021AC0F6 - _021AC042 - 2 ; case 4
	.short _021AC1E2 - _021AC042 - 2 ; case 5
	.short _021AC2C6 - _021AC042 - 2 ; case 6
_021AC050:
	mov r0, #0
	mov r6, #0
	str r0, [sp, #0x60]
_021AC056:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x60]
	add r1, r1, r0
	ldr r0, [sp, #0x90]
	cmp r1, r0
	bge _021AC102
	ldr r0, [sp, #0xc]
	mov r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r4, r0, #1
_021AC06E:
	ldr r0, [sp, #4]
	add r1, r0, r5
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _021AC0E8
	ldr r0, _021AC36C ; =0x021B4238
	lsl r1, r6, #1
	ldrsh r2, [r0, r1]
	ldr r0, _021AC370 ; =0x021B34A8
	add r5, r5, #1
	add r3, r0, r2
	ldr r0, _021AC374 ; =0x021B3DB8
	add r6, r6, #1
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x70]
	lsl r2, r0, #1
	ldr r0, _021AC378 ; =0x021B29A8
	ldrsh r0, [r0, r2]
	ldrb r2, [r3, r0]
	mov r0, #0xf8
	and r0, r2
	ldr r2, _021AC37C ; =0x021B3E38
	ldrsh r7, [r2, r1]
	ldr r1, _021AC380 ; =0x021B27A8
	lsl r2, r7, #1
	ldrsh r1, [r1, r2]
	ldrb r2, [r3, r1]
	mov r1, #0xf8
	and r1, r2
	lsl r1, r1, #7
	asr r2, r0, #3
	str r1, [sp, #0x64]
	ldr r0, _021AC384 ; =0x021B2BA8
	lsl r1, r7, #2
	ldr r7, [r0, r1]
	ldr r0, [sp, #0x70]
	lsl r1, r0, #2
	ldr r0, _021AC388 ; =0x021B2FA8
	ldr r0, [r0, r1]
	add r0, r7, r0
	asr r0, r0, #0x10
	ldrb r1, [r3, r0]
	mov r0, #0xf8
	and r0, r1
	lsl r0, r0, #2
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #0x64]
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	add r2, r1, #0
	orr r2, r0
	ldr r0, [sp]
	add r1, r0, r4
	strb r2, [r0, r4]
	asr r0, r2, #8
	add r4, r4, #2
	strb r0, [r1, #1]
	cmp r5, #8
	blt _021AC06E
_021AC0E8:
	ldr r0, [sp, #0x60]
	add r0, r0, #1
	str r0, [sp, #0x60]
	cmp r0, #8
	blt _021AC056
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021AC0F6:
	mov r0, #0
	str r0, [sp, #0x68]
	mov r0, #0
	str r0, [sp, #0x5c]
	cmp r1, #0
	bgt _021AC104
_021AC102:
	b _021AC404
_021AC104:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x5c]
	lsl r0, r0, #2
	str r0, [sp, #0x28]
_021AC11A:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	ldr r0, [sp, #0x90]
	cmp r1, r0
	bge _021AC1CE
	ldr r0, [sp, #0xc]
	mov r3, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #0x30]
	add r0, r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x18]
	lsl r0, r0, #3
	str r0, [sp, #0x24]
_021AC13C:
	ldr r0, [sp, #0x2c]
	add r1, r3, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _021AC1C4
	ldr r0, [sp, #0x28]
	asr r1, r3, #1
	add r1, r1, r0
	ldr r0, [sp, #0x24]
	add r3, r3, #1
	add r0, r1, r0
	lsl r4, r0, #1
	ldr r0, [sp, #0x68]
	lsl r1, r0, #1
	ldr r0, _021AC36C ; =0x021B4238
	ldrsh r1, [r0, r1]
	ldr r0, _021AC370 ; =0x021B34A8
	add r1, r0, r1
	ldr r0, _021AC374 ; =0x021B3DB8
	ldrsh r0, [r0, r4]
	mov lr, r0
	lsl r5, r0, #1
	ldr r0, _021AC378 ; =0x021B29A8
	ldrsh r0, [r0, r5]
	ldrb r5, [r1, r0]
	mov r0, #0xf8
	and r0, r5
	ldr r5, _021AC37C ; =0x021B3E38
	ldrsh r6, [r5, r4]
	ldr r4, _021AC380 ; =0x021B27A8
	lsl r5, r6, #1
	ldrsh r4, [r4, r5]
	ldrb r5, [r1, r4]
	mov r4, #0xf8
	and r4, r5
	lsl r7, r4, #7
	asr r4, r0, #3
	ldr r0, _021AC384 ; =0x021B2BA8
	lsl r5, r6, #2
	ldr r0, [r0, r5]
	mov r5, lr
	lsl r6, r5, #2
	ldr r5, _021AC388 ; =0x021B2FA8
	ldr r5, [r5, r6]
	add r0, r0, r5
	asr r0, r0, #0x10
	ldrb r1, [r1, r0]
	mov r0, #0xf8
	and r0, r1
	lsl r0, r0, #2
	orr r0, r4
	add r1, r7, #0
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	add r4, r1, #0
	orr r4, r0
	ldr r0, [sp]
	add r1, r0, r2
	strb r4, [r0, r2]
	asr r0, r4, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #0x68]
	add r2, r2, #2
	add r0, r0, #1
	str r0, [sp, #0x68]
	cmp r3, #8
	blt _021AC13C
_021AC1C4:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #8
	blt _021AC11A
_021AC1CE:
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r0, _021AC368 ; =0x021B3D8C
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x5c]
	cmp r0, r1
	blt _021AC104
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021AC1E2:
	mov r1, #0
	str r1, [sp, #0x6c]
	mov r1, #0
	str r1, [sp, #0x58]
	cmp r0, #0
	ble _021AC2D0
_021AC1EE:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	lsl r1, r0, #3
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	lsl r0, r0, #5
	str r0, [sp, #0x38]
_021AC202:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	add r1, r1, r0
	ldr r0, [sp, #0x90]
	cmp r1, r0
	bge _021AC2B2
	ldr r0, [sp, #0xc]
	mov r3, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x1c]
	asr r0, r0, #1
	lsl r0, r0, #3
	str r0, [sp, #0x34]
_021AC222:
	ldr r0, [sp, #4]
	add r1, r0, r3
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _021AC2A8
	ldr r0, [sp, #0x34]
	add r1, r3, r0
	ldr r0, [sp, #0x38]
	add r3, r3, #1
	add r0, r1, r0
	lsl r4, r0, #1
	ldr r0, [sp, #0x6c]
	lsl r1, r0, #1
	ldr r0, _021AC36C ; =0x021B4238
	ldrsh r1, [r0, r1]
	ldr r0, _021AC370 ; =0x021B34A8
	add r1, r0, r1
	ldr r0, _021AC374 ; =0x021B3DB8
	ldrsh r0, [r0, r4]
	mov ip, r0
	lsl r5, r0, #1
	ldr r0, _021AC378 ; =0x021B29A8
	ldrsh r0, [r0, r5]
	ldrb r5, [r1, r0]
	mov r0, #0xf8
	and r0, r5
	ldr r5, _021AC37C ; =0x021B3E38
	ldrsh r6, [r5, r4]
	ldr r4, _021AC380 ; =0x021B27A8
	lsl r5, r6, #1
	ldrsh r4, [r4, r5]
	ldrb r5, [r1, r4]
	mov r4, #0xf8
	and r4, r5
	lsl r7, r4, #7
	asr r4, r0, #3
	ldr r0, _021AC384 ; =0x021B2BA8
	lsl r5, r6, #2
	ldr r0, [r0, r5]
	mov r5, ip
	lsl r6, r5, #2
	ldr r5, _021AC388 ; =0x021B2FA8
	ldr r5, [r5, r6]
	add r0, r0, r5
	asr r0, r0, #0x10
	ldrb r1, [r1, r0]
	mov r0, #0xf8
	and r0, r1
	lsl r0, r0, #2
	orr r0, r4
	add r1, r7, #0
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	add r4, r1, #0
	orr r4, r0
	ldr r0, [sp]
	add r1, r0, r2
	strb r4, [r0, r2]
	asr r0, r4, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #0x6c]
	add r2, r2, #2
	add r0, r0, #1
	str r0, [sp, #0x6c]
	cmp r3, #8
	blt _021AC222
_021AC2A8:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _021AC202
_021AC2B2:
	ldr r0, [sp, #0x58]
	add r0, r0, #1
	str r0, [sp, #0x58]
	ldr r0, _021AC368 ; =0x021B3D8C
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x58]
	cmp r0, r1
	blt _021AC1EE
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021AC2C6:
	mov r2, #0
	mov r4, #0
	str r2, [sp, #0x10]
	cmp r0, #0
	bgt _021AC2D2
_021AC2D0:
	b _021AC404
_021AC2D2:
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r1, #0
	bgt _021AC2DC
	b _021AC3F2
_021AC2DC:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #5
	str r0, [sp, #0x50]
_021AC2EC:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x4c]
	add r0, r1, r0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	str r0, [sp, #0x44]
_021AC302:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x54]
	add r1, r1, r0
	ldr r0, [sp, #0x90]
	cmp r1, r0
	bge _021AC3E0
	ldr r0, [sp, #0xc]
	mov r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #0x4c]
	add r0, r0, r1
	lsl r5, r0, #1
	ldr r0, [sp, #0x20]
	asr r0, r0, #1
	lsl r0, r0, #3
	str r0, [sp, #0x40]
_021AC326:
	ldr r0, [sp, #0x48]
	add r1, r6, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _021AC3D6
	ldr r0, [sp, #0x44]
	asr r1, r6, #1
	add r1, r1, r0
	ldr r0, [sp, #0x40]
	lsl r2, r4, #1
	add r1, r1, r0
	ldr r0, [sp, #0x50]
	add r6, r6, #1
	add r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _021AC36C ; =0x021B4238
	add r4, r4, #1
	ldrsh r2, [r0, r2]
	ldr r0, _021AC370 ; =0x021B34A8
	add r3, r0, r2
	ldr r0, _021AC374 ; =0x021B3DB8
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x74]
	lsl r2, r0, #1
	ldr r0, _021AC378 ; =0x021B29A8
	ldrsh r0, [r0, r2]
	ldrb r2, [r3, r0]
	mov r0, #0xf8
	and r0, r2
	ldr r2, _021AC37C ; =0x021B3E38
	ldrsh r7, [r2, r1]
	ldr r1, _021AC380 ; =0x021B27A8
	b _021AC38C
	.align 2, 0
_021AC368: .word 0x021B3D8C
_021AC36C: .word 0x021B4238
_021AC370: .word 0x021B34A8
_021AC374: .word 0x021B3DB8
_021AC378: .word 0x021B29A8
_021AC37C: .word 0x021B3E38
_021AC380: .word 0x021B27A8
_021AC384: .word 0x021B2BA8
_021AC388: .word 0x021B2FA8
_021AC38C:
	lsl r2, r7, #1
	ldrsh r1, [r1, r2]
	ldrb r2, [r3, r1]
	mov r1, #0xf8
	and r1, r2
	lsl r1, r1, #7
	asr r2, r0, #3
	str r1, [sp, #0x78]
	ldr r0, _021AC408 ; =0x021B2BA8
	lsl r1, r7, #2
	ldr r7, [r0, r1]
	ldr r0, [sp, #0x74]
	lsl r1, r0, #2
	ldr r0, _021AC40C ; =0x021B2FA8
	ldr r0, [r0, r1]
	add r0, r7, r0
	asr r0, r0, #0x10
	ldrb r1, [r3, r0]
	mov r0, #0xf8
	and r0, r1
	lsl r0, r0, #2
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #0x78]
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	add r2, r1, #0
	orr r2, r0
	ldr r0, [sp]
	add r1, r0, r5
	strb r2, [r0, r5]
	asr r0, r2, #8
	add r5, r5, #2
	strb r0, [r1, #1]
	cmp r6, #8
	blt _021AC326
_021AC3D6:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #8
	blt _021AC302
_021AC3E0:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021AC410 ; =0x021B3D8C
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bge _021AC3F2
	b _021AC2EC
_021AC3F2:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021AC410 ; =0x021B3D8C
	ldr r2, [r0, #4]
	ldr r0, [sp, #0x10]
	cmp r0, r2
	bge _021AC404
	b _021AC2D2
_021AC404:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AC408: .word 0x021B2BA8
_021AC40C: .word 0x021B2FA8
_021AC410: .word 0x021B3D8C
	thumb_func_end ovy257_21ac018

	thumb_func_start ovy257_21ac414
ovy257_21ac414: ; 0x021AC414
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [sp, #0x40]
	add r7, r1, #0
	str r0, [sp, #0x40]
	ldr r0, _021AC640 ; =0x021B6240
	str r2, [sp, #8]
	ldr r0, [r0]
	str r3, [sp, #0xc]
	cmp r0, #1
	bne _021AC434
	bl OS_IsRunOnTwl
	cmp r0, #1
	beq _021AC436
_021AC434:
	b _021AC5BA
_021AC436:
	cmp r7, #0x17
	bhs _021AC440
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC440:
	ldrb r3, [r4, #0x13]
	add r3, #0xc
	add r2, r3, #2
	cmp r2, r7
	bls _021AC450
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC450:
	add r0, r4, r3
	ldrb r1, [r0, #1]
	ldrb r0, [r4, r3]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0xc
	mul r0, r3
	add r0, r2, r0
	cmp r0, r7
	bls _021AC46E
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC46E:
	mov r6, #0
	mov r5, #0
	cmp r3, #0
	bls _021AC4AA
_021AC476:
	add r1, r4, r2
	ldrb r6, [r4, r2]
	ldrb r0, [r1, #1]
	lsl r6, r6, #8
	add r0, r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _021AC644 ; =0x00008769
	cmp r6, r0
	bne _021AC4A2
	ldrb r0, [r1, #0xa]
	ldrb r3, [r1, #0xb]
	lsl r2, r0, #8
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #9]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	add r0, r0, r1
	add r0, r2, r0
	add r2, r3, r0
	add r2, #0xc
	b _021AC4AA
_021AC4A2:
	add r5, r5, #1
	add r2, #0xc
	cmp r5, r3
	blo _021AC476
_021AC4AA:
	ldr r0, _021AC644 ; =0x00008769
	cmp r6, r0
	beq _021AC4B6
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC4B6:
	add r0, r2, #2
	cmp r0, r7
	bls _021AC4C2
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC4C2:
	add r1, r4, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r4, r2]
	add r2, r0, #0
	lsl r1, r1, #8
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	mov r1, #0xc
	mul r1, r3
	add r0, r0, r1
	cmp r0, r7
	bls _021AC4E2
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC4E2:
	mov r6, #0
	mov r5, #0
	cmp r3, #0
	bls _021AC51E
_021AC4EA:
	add r1, r4, r2
	ldrb r6, [r4, r2]
	ldrb r0, [r1, #1]
	lsl r6, r6, #8
	add r0, r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _021AC648 ; =0x0000927C
	cmp r6, r0
	bne _021AC516
	ldrb r0, [r1, #0xa]
	ldrb r3, [r1, #0xb]
	lsl r2, r0, #8
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #9]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	add r0, r0, r1
	add r0, r2, r0
	add r2, r3, r0
	add r2, #0xc
	b _021AC51E
_021AC516:
	add r5, r5, #1
	add r2, #0xc
	cmp r5, r3
	blo _021AC4EA
_021AC51E:
	ldr r0, _021AC648 ; =0x0000927C
	cmp r6, r0
	beq _021AC52A
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC52A:
	add r0, r2, #4
	cmp r0, r7
	bls _021AC536
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC536:
	add r3, r4, r2
	ldrb r0, [r3, #2]
	cmp r0, #0x10
	bne _021AC544
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _021AC54A
_021AC544:
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC54A:
	add r2, #0xe
	cmp r2, r7
	bls _021AC556
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC556:
	ldrb r0, [r3, #0xc]
	ldrb r2, [r3, #0xd]
	lsl r1, r0, #8
	ldrb r0, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x10
	add r0, r0, r3
	add r0, r1, r0
	add r5, r2, r0
	add r5, #0xc
	add r0, r5, #0
	add r0, #0x1c
	cmp r0, r7
	bls _021AC57A
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC57A:
	add r0, r4, r5
	add r1, sp, #0x10
	mov r2, #0x1c
	blx MI_CpuCopy8
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021AC59A
	blx sub_021AC654
_021AC59A:
	add r0, sp, #0x10
	add r1, r4, #0
	add r2, r7, #0
	blx sub_021AC65C
	add r6, r0, #0
	add r0, sp, #0x10
	add r1, r4, r5
	mov r2, #0x1c
	blx MI_CpuCopy8
	cmp r6, #1
	beq _021AC5BA
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC5BA:
	ldr r1, _021AC64C ; =0x021B3D8C
	mov r0, #0
	str r0, [r1, #0x1c]
	ldr r2, [sp, #0x44]
	mov r1, #4
	tst r2, r1
	beq _021AC5CA
	add r0, r1, #0
_021AC5CA:
	ldr r2, [sp, #0x44]
	mov r1, #1
	tst r2, r1
	bne _021AC5D4
	mov r1, #0
_021AC5D4:
	ldr r3, [sp, #0x44]
	mov r2, #0x10
	add r5, r3, #0
	and r5, r2
	bne _021AC5E0
	mov r2, #0
_021AC5E0:
	orr r0, r1
	orr r2, r0
	cmp r5, #0
	beq _021AC5F2
	add r0, r4, #0
	add r1, r7, #0
	bl ovy257_21aafdc
	b _021AC60A
_021AC5F2:
	ldr r0, [sp, #0x40]
	mov r3, #0
	ldrsh r0, [r0, r3]
	add r1, r4, #0
	ldr r4, [sp, #0xc]
	str r0, [sp]
	str r2, [sp, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #8]
	add r2, r7, #0
	bl ovy257_21ab0a4
_021AC60A:
	ldr r1, _021AC64C ; =0x021B3D8C
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _021AC618
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AC618:
	ldr r1, _021AC650 ; =0xFFFF0000
	tst r1, r0
	beq _021AC638
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	beq _021AC638
	cmp r5, #0
	bne _021AC632
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	asr r1, r0, #0x10
	ldr r0, [sp, #0x40]
	strh r1, [r0]
_021AC632:
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AC638:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021AC640: .word 0x021B6240
_021AC644: .word 0x00008769
_021AC648: .word 0x0000927C
_021AC64C: .word 0x021B3D8C
_021AC650: .word 0xFFFF0000
	thumb_func_end ovy257_21ac414

	arm_func_start sub_021AC654
sub_021AC654: ; 0x021AC654
	ldr pc, _021AC658 ; =sub_027076C4
	.align 2, 0
_021AC658: .word sub_027076C4
	arm_func_end sub_021AC654

	arm_func_start sub_021AC65C
sub_021AC65C: ; 0x021AC65C
	ldr pc, _021AC660 ; =sub_02707BA4
	.align 2, 0
_021AC660: .word sub_02707BA4
	arm_func_end sub_021AC65C

	thumb_func_start sub_021AC664
sub_021AC664: ; 0x021AC664
	cmp r2, #0
	ldrb r2, [r0, r1]
	bne _021AC67E
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	bx lr
_021AC67E:
	lsl r3, r2, #8
	mov r2, #0xff
	lsl r2, r2, #8
	add r0, r0, r1
	and r2, r3
	lsl r2, r2, #0x10
	ldrb r0, [r0, #1]
	lsr r2, r2, #0x10
	orr r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC664

	thumb_func_start ovy257_21ac694
ovy257_21ac694: ; 0x021AC694
	push {r3, r4}
	cmp r2, #0
	ldrb r2, [r0, r1]
	bne _021AC6C6
	add r3, r0, r1
	ldrb r0, [r3, #1]
	add r4, r2, #0
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	orr r4, r1
	ldrb r1, [r3, #2]
	lsl r2, r1, #0x10
	lsl r1, r0, #8
	and r1, r2
	add r2, r4, #0
	orr r2, r1
	ldrb r1, [r3, #3]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	and r0, r1
	orr r0, r2
	pop {r3, r4}
	bx lr
_021AC6C6:
	add r0, r0, r1
	ldrb r1, [r0, #1]
	mov r3, #0xff
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsl r4, r1, #0x10
	lsr r1, r3, #8
	and r2, r3
	and r1, r4
	add r4, r2, #0
	orr r4, r1
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsl r2, r1, #8
	lsr r1, r3, #0x10
	and r1, r2
	orr r1, r4
	orr r0, r1
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy257_21ac694

	thumb_func_start ovy257_21ac6f0
ovy257_21ac6f0: ; 0x021AC6F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	ldr r4, _021AC930 ; =0x0000FFFF
	str r2, [sp, #4]
	add r2, #0x12
	add r5, r0, #0
	str r1, [sp]
	str r3, [sp, #8]
	str r4, [sp, #0x30]
	add r7, r4, #0
	cmp r2, r1
	blo _021AC70E
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC70E:
	ldr r1, [sp, #4]
	mov r2, #1
	mov r6, #1
	bl sub_021AC664
	str r0, [sp, #0x40]
	ldr r0, [sp, #4]
	add r0, r5, r0
	ldrb r1, [r0, #2]
	cmp r1, #0x45
	beq _021AC72A
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC72A:
	ldrb r1, [r0, #3]
	cmp r1, #0x78
	beq _021AC736
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC736:
	ldrb r1, [r0, #4]
	cmp r1, #0x69
	beq _021AC742
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC742:
	ldrb r1, [r0, #5]
	cmp r1, #0x66
	beq _021AC74E
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC74E:
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _021AC75A
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC75A:
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _021AC766
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC766:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, _021AC934 ; =0x00004949
	cmp r0, r1
	bne _021AC77C
	mov r6, #0
	b _021AC788
_021AC77C:
	ldr r1, _021AC938 ; =0x00004D4D
	cmp r0, r1
	beq _021AC788
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC788:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x10
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	mov r1, #0xc
	add r0, #0x12
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mul r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	add r1, r0, #4
	ldr r0, [sp]
	cmp r1, r0
	blo _021AC7B4
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC7B4:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _021AC872
	ldr r0, _021AC93C ; =0x00000132
	sub r0, r0, #1
	str r0, [sp, #0x60]
_021AC7C0:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #4]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r1, #2
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r1, [sp, #4]
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl ovy257_21ac694
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, _021AC940 ; =0x00008769
	cmp r1, r0
	bne _021AC806
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x30]
_021AC806:
	ldr r1, [sp, #0x20]
	ldr r0, _021AC93C ; =0x00000132
	cmp r1, r0
	bne _021AC82C
	ldr r1, [sp, #0x34]
	ldr r0, [sp]
	add r1, #0x20
	cmp r1, r0
	blo _021AC81E
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC81E:
	ldr r0, [sp, #0x34]
	ldr r1, _021AC944 ; =0x021B624C
	add r0, #0xc
	add r0, r5, r0
	mov r2, #0x14
	blx MI_CpuCopy
_021AC82C:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x60]
	cmp r1, r0
	bne _021AC866
	ldr r0, [sp, #0x38]
	cmp r0, #0x1e
	bls _021AC83E
	mov r0, #0x1e
	str r0, [sp, #0x38]
_021AC83E:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r1, #0xc
	str r1, [sp, #0x34]
	add r1, r1, r0
	ldr r0, [sp]
	cmp r1, r0
	blo _021AC854
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC854:
	ldr r0, [sp, #0x34]
	ldr r1, _021AC948 ; =0x021B6260
	ldr r2, [sp, #0x38]
	add r0, r5, r0
	blx MI_CpuCopy
	ldr r1, [sp, #0x38]
	ldr r0, _021AC94C ; =0x021B6238
	strh r1, [r0, #4]
_021AC866:
	ldr r0, [sp, #0x3c]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x3c]
	bne _021AC7C0
_021AC872:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ovy257_21ac694
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _021AC886
	ldr r0, _021AC930 ; =0x0000FFFF
	str r0, [sp, #0x28]
_021AC886:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	add r1, r0, #2
	ldr r0, [sp]
	cmp r1, r0
	blo _021AC8A2
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC8A2:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0xc
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mul r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp]
	cmp r1, r0
	blo _021AC8CA
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC8CA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021AC92E
_021AC8D0:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r1, #2
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r1, [sp, #4]
	str r0, [sp, #0x44]
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x24]
	add r1, #0xc
	str r1, [sp, #4]
	ldr r1, _021AC950 ; =0x0000927C
	cmp r2, r1
	bne _021AC918
	ldr r1, [sp, #0x44]
	cmp r1, #4
	bls _021AC918
	add r4, r0, #0
_021AC918:
	ldr r2, [sp, #0x24]
	ldr r1, _021AC954 ; =0x0000A005
	cmp r2, r1
	bne _021AC922
	add r7, r0, #0
_021AC922:
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	bne _021AC8D0
_021AC92E:
	b _021ACBCA
	.align 2, 0
_021AC930: .word 0x0000FFFF
_021AC934: .word 0x00004949
_021AC938: .word 0x00004D4D
_021AC93C: .word 0x00000132
_021AC940: .word 0x00008769
_021AC944: .word 0x021B624C
_021AC948: .word 0x021B6260
_021AC94C: .word 0x021B6238
_021AC950: .word 0x0000927C
_021AC954: .word 0x0000A005
_021AC958:
	cmp r4, r7
	bhs _021AC962
	ldr r0, [sp, #0x28]
	cmp r4, r0
	blo _021AC964
_021AC962:
	b _021ACAA8
_021AC964:
	add r4, #0xc
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xe
	cmp r1, r0
	blo _021AC976
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC976:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r1, r4, #4
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x50]
	add r0, r5, #0
	add r1, r4, #6
	add r2, r6, #0
	bl ovy257_21ac694
	add r1, r4, #0
	str r0, [sp, #0x54]
	add r0, r5, #0
	add r1, #0xa
	add r2, r6, #0
	bl ovy257_21ac694
	mov r0, #1
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0xc
	add r4, #0xe
	cmp r1, r0
	bne _021ACAA4
	ldr r1, [sp, #0x50]
	cmp r1, #7
	bne _021ACAA4
	ldr r1, [sp, #0x54]
	cmp r1, #0x1c
	bne _021ACAA4
	ldr r1, [sp, #0x48]
	mov r2, #0xc
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x14]
	mul r2, r1
	ldr r1, [sp]
	add r2, r4, r2
	cmp r2, r1
	blo _021AC9E8
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021AC9E8:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _021ACAA4
	add r1, r0, #2
	add r0, r0, #1
	str r1, [sp, #0x68]
	str r0, [sp, #0x64]
_021AC9F6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x58]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r6, #0
	bl sub_021AC664
	add r0, r5, #0
	add r1, r4, #4
	add r2, r6, #0
	bl ovy257_21ac694
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #0x64]
	add r4, #0xc
	cmp r2, r1
	bne _021ACA60
	ldr r1, [sp, #0xc]
	cmp r1, #4
	bls _021ACA36
	b _021ACA3A
_021ACA36:
	add r0, r1, #0
	sub r0, r4, r0
_021ACA3A:
	lsl r0, r0, #0x10
	ldr r1, _021ACC14 ; =0x021B6238
	lsr r0, r0, #0x10
	str r0, [r1, #0x10]
	ldr r2, [sp, #0xc]
	ldr r1, _021ACC14 ; =0x021B6238
	strh r2, [r1]
	ldrh r1, [r1]
	add r1, r0, r1
	ldr r0, [sp]
	cmp r1, r0
	blo _021ACA98
	ldr r0, _021ACC14 ; =0x021B6238
	mov r1, #0
	str r1, [r0, #0x10]
	strh r1, [r0]
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACA60:
	ldr r1, [sp, #0x68]
	cmp r2, r1
	bne _021ACA98
	ldr r1, [sp, #0xc]
	cmp r1, #4
	bls _021ACA6E
	b _021ACA72
_021ACA6E:
	add r0, r1, #0
	sub r0, r4, r0
_021ACA72:
	lsl r0, r0, #0x10
	ldr r1, _021ACC14 ; =0x021B6238
	lsr r0, r0, #0x10
	str r0, [r1, #0xc]
	ldr r2, [sp, #0xc]
	ldr r1, _021ACC14 ; =0x021B6238
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	add r1, r0, r1
	ldr r0, [sp]
	cmp r1, r0
	blo _021ACA98
	ldr r0, _021ACC14 ; =0x021B6238
	mov r1, #0
	str r1, [r0, #0xc]
	strh r1, [r0, #2]
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACA98:
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	bne _021AC9F6
_021ACAA4:
	ldr r4, _021ACC18 ; =0x0000FFFF
	b _021ACBCA
_021ACAA8:
	cmp r7, r4
	bhs _021ACB26
	ldr r0, [sp, #0x28]
	cmp r7, r0
	bhs _021ACB26
	add r7, #0xc
	ldr r0, [sp]
	add r1, r7, #2
	cmp r1, r0
	blo _021ACAC2
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACAC2:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	mov r1, #0xc
	mul r1, r0
	add r7, r7, #2
	ldr r0, [sp]
	add r1, r7, r1
	cmp r1, r0
	blo _021ACAE4
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACAE4:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021ACB22
_021ACAEA:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_021AC664
	add r0, r5, #0
	add r1, r7, #2
	add r2, r6, #0
	bl sub_021AC664
	add r0, r5, #0
	add r1, r7, #4
	add r2, r6, #0
	bl ovy257_21ac694
	add r1, r7, #0
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r0, [sp, #0x18]
	add r7, #0xc
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	bne _021ACAEA
_021ACB22:
	ldr r7, _021ACC18 ; =0x0000FFFF
	b _021ACBCA
_021ACB26:
	ldr r0, [sp, #0x28]
	cmp r0, r4
	bhs _021ACBC4
	cmp r0, r7
	bhs _021ACBC4
	add r0, #0xc
	str r0, [sp, #0x28]
	add r1, r0, #2
	ldr r0, [sp]
	cmp r1, r0
	blo _021ACB42
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACB42:
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021AC664
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r1, #0xc
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	ldr r0, [sp]
	cmp r1, r0
	blo _021ACB6A
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACB6A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021ACBBE
_021ACB70:
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x5c]
	add r0, r5, #0
	add r1, r1, #2
	add r2, r6, #0
	bl sub_021AC664
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r1, #8
	add r2, r6, #0
	bl ovy257_21ac694
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x5c]
	add r1, #0xc
	str r1, [sp, #0x28]
	ldr r1, _021ACC1C ; =0x00000201
	cmp r2, r1
	bne _021ACBB2
	str r0, [sp, #0x2c]
	b _021ACBBE
_021ACBB2:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	bne _021ACB70
_021ACBBE:
	ldr r0, _021ACC18 ; =0x0000FFFF
	str r0, [sp, #0x28]
	b _021ACBCA
_021ACBC4:
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACBCA:
	ldr r1, _021ACC18 ; =0x0000FFFF
	cmp r4, r1
	beq _021ACBD2
	b _021AC958
_021ACBD2:
	cmp r7, r1
	beq _021ACBD8
	b _021AC958
_021ACBD8:
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _021ACBE0
	b _021AC958
_021ACBE0:
	ldr r1, [sp, #0x80]
	mov r0, #1
	tst r1, r0
	beq _021ACC06
	sub r1, r0, #2
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bne _021ACBF6
	add sp, #0x6c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021ACBF6:
	add r1, r0, #0
	add r1, #0xc
	ldr r0, [sp, #8]
	str r1, [sp, #0x2c]
	str r1, [r0]
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ACC06:
	ldr r0, [sp, #0x40]
	add r1, r0, #4
	ldr r0, [sp, #8]
	str r1, [r0]
	mov r0, #1
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ACC14: .word 0x021B6238
_021ACC18: .word 0x0000FFFF
_021ACC1C: .word 0x00000201
	thumb_func_end ovy257_21ac6f0

	thumb_func_start ovy257_21acc20
ovy257_21acc20: ; 0x021ACC20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r3, #0
	ldr r3, [r4]
	ldr r7, _021ACC60 ; =0x021B6238
	mov r2, #0
	str r2, [r7, #0x10]
	strh r2, [r7]
	str r2, [r7, #0xc]
	strh r2, [r7, #2]
	strh r2, [r7, #4]
	add r2, r3, #0
	str r6, [sp]
	add r3, r4, #0
	add r5, r0, #0
	bl ovy257_21ac6f0
	ldr r2, [r7, #0x10]
	cmp r2, #0
	beq _021ACC50
	add r1, r5, #0
	add r1, #0xc
	add r1, r2, r1
	str r1, [r7, #0x10]
_021ACC50:
	ldr r1, _021ACC60 ; =0x021B6238
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _021ACC5E
	add r5, #0xc
	add r2, r2, r5
	str r2, [r1, #0xc]
_021ACC5E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ACC60: .word 0x021B6238
	thumb_func_end ovy257_21acc20

	thumb_func_start sub_021ACC64
sub_021ACC64: ; 0x021ACC64
	ldr r0, _021ACC70 ; =0x021B6280
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #8
	str r1, [r0]
	bx lr
	.align 2, 0
_021ACC70: .word 0x021B6280
	thumb_func_end sub_021ACC64

	thumb_func_start ovy257_21acc74
ovy257_21acc74: ; 0x021ACC74
	push {r4, r5, r6, r7}
	add r7, r0, #0
	add r4, r1, #0
	mov ip, r2
	cmp r3, #0
	beq _021ACCEA
	ldr r0, _021ACCF0 ; =0x021B6280
	ldr r2, [r0, #4]
	ldr r1, [r0]
_021ACC86:
	ldr r5, _021ACCF4 ; =0x021B2544
	lsl r6, r3, #2
	ldr r6, [r5, r6]
	mov r5, ip
	tst r5, r6
	beq _021ACC9C
	ldr r5, _021ACCF4 ; =0x021B2544
	lsl r6, r1, #2
	ldr r5, [r5, r6]
	orr r2, r5
	str r2, [r0, #4]
_021ACC9C:
	sub r1, r1, #1
	str r1, [r0]
	bne _021ACCE6
	ldr r1, [r4]
	strb r2, [r7, r1]
	ldr r1, [r0, #4]
	cmp r1, #0xff
	bne _021ACCCA
	ldr r5, [r4]
	ldr r1, [r0, #8]
	add r2, r5, #2
	cmp r2, r1
	blo _021ACCBC
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_021ACCBC:
	add r2, r7, r5
	mov r1, #0
	strb r1, [r2, #1]
	ldr r1, [r4]
	add r1, r1, #2
	str r1, [r4]
	b _021ACCDC
_021ACCCA:
	ldr r1, [r4]
	add r2, r1, #1
	str r2, [r4]
	ldr r1, [r0, #8]
	cmp r2, r1
	blo _021ACCDC
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_021ACCDC:
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #8
	mov r2, #0
	str r1, [r0]
_021ACCE6:
	sub r3, r3, #1
	bne _021ACC86
_021ACCEA:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021ACCF0: .word 0x021B6280
_021ACCF4: .word 0x021B2544
	thumb_func_end ovy257_21acc74

	thumb_func_start ovy257_21accf8
ovy257_21accf8: ; 0x021ACCF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x198
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x88]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x74]
	add r0, #0x4e
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x74]
_021ACD10:
	ldr r1, [sp]
	ldr r0, [sp, #0x88]
	mov r3, #1
	add r1, r1, r0
	add r0, r1, #0
	add r0, #0x38
	ldrb r0, [r0]
	ldr r2, [sp]
	ldrb r7, [r1, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x88]
	lsl r3, r3, #8
	ldrb r2, [r2, r0]
	ldr r0, [sp, #0x14]
	str r2, [sp, #0x18]
	add r2, r2, r0
	mov r0, #1
	lsl r0, r0, #8
	sub r5, r2, r0
	add r0, r1, #0
	add r0, #0x30
	ldrb r6, [r0]
	mov r0, #1
	lsl r0, r0, #8
	add r2, r7, r6
	sub r0, r2, r0
	str r0, [sp, #0x1c]
	add r0, r1, #0
	add r0, #0x28
	ldrb r2, [r0]
	ldrb r0, [r1, #0x10]
	sub r7, r7, r6
	ldr r6, [sp, #0x1c]
	add r4, r0, r2
	sub r3, r4, r3
	str r3, [sp, #0x20]
	add r3, r1, #0
	add r3, #0x20
	ldrb r1, [r1, #0x18]
	ldrb r4, [r3]
	str r1, [sp, #0x24]
	add r3, r1, r4
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r3, r1
	sub r3, r0, r2
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r2, r0
	add r2, r5, r1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x20]
	add r2, r6, r2
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	sub r2, r6, r2
	ldr r6, [sp, #0x24]
	add r2, r5, r2
	sub r2, r2, r1
	sub r1, r5, r1
	str r1, [sp, #0x30]
	add r5, r7, r0
	lsl r0, r0, #8
	str r0, [sp, #0x40]
	sub r4, r6, r4
	add r1, r3, r7
	add r3, r4, r3
	add r6, r5, r3
	add r4, r2, #0
	mov r3, #0xb5
	mul r4, r3
	add r3, r1, #0
	mov r1, #0x62
	mul r1, r6
	str r1, [sp, #0x34]
	mov r1, #0xed
	mul r1, r6
	mov r2, #0xb5
	mul r3, r2
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x88]
	mov r1, #0x8b
	add r2, r5, #0
	mul r2, r1
	ldr r1, [sp, #0x74]
	lsl r7, r0, #2
	mul r1, r5
	ldr r5, [sp, #0x30]
	add r0, sp, #0x98
	lsl r5, r5, #8
	str r5, [sp, #0x3c]
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	add r0, r0, r7
	add r5, r6, r5
	lsl r6, r5, #8
	add r5, sp, #0x98
	str r6, [r5, r7]
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	sub r5, r6, r5
	lsl r6, r5, #8
	add r5, r0, #0
	add r5, #0x80
	str r6, [r5]
	ldr r5, [sp, #0x3c]
	add r5, r4, r5
	str r5, [r0, #0x40]
	ldr r5, [sp, #0x3c]
	sub r5, r5, r4
	add r4, r0, #0
	add r4, #0xc0
	str r5, [r4]
	ldr r4, [sp, #0x40]
	ldr r5, [sp, #0x34]
	add r4, r4, r3
	add r5, r5, r4
	add r5, r2, r5
	str r5, [r0, #0x20]
	ldr r5, [sp, #0x40]
	sub r3, r5, r3
	ldr r5, [sp, #0x38]
	add r5, r5, r3
	sub r6, r5, r1
	add r5, r0, #0
	add r5, #0xa0
	str r6, [r5]
	ldr r5, [sp, #0x38]
	sub r3, r3, r5
	add r1, r1, r3
	str r1, [r0, #0x60]
	ldr r1, [sp, #0x34]
	add r0, #0xe0
	sub r1, r4, r1
	sub r1, r1, r2
	str r1, [r0]
	ldr r0, [sp, #0x88]
	add r0, r0, #1
	str r0, [sp, #0x88]
	cmp r0, #8
	bge _021ACE2C
	b _021ACD10
_021ACE2C:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #0xe
	mov ip, r0
	mov r0, #2
	lsl r0, r0, #0xe
	mov lr, r0
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x84]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x80]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x7c]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x78]
_021ACE58:
	ldr r0, [sp, #0x10]
	lsl r2, r0, #2
	add r0, sp, #0x98
	add r1, r0, r2
	ldr r7, [r0, r2]
	ldr r0, [r1, #4]
	ldr r4, [r1, #8]
	ldr r5, [r1, #0x18]
	str r0, [sp, #0x8c]
	add r0, r0, r5
	str r0, [sp, #0x44]
	ldr r3, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	str r4, [sp, #0x48]
	add r4, r4, r0
	str r4, [sp, #0x4c]
	ldr r4, [sp, #0x48]
	ldr r6, [r1, #0x10]
	ldr r1, [r1, #0xc]
	sub r0, r4, r0
	ldr r4, [sp, #0x8c]
	str r1, [sp, #0x50]
	sub r4, r4, r5
	str r4, [sp, #0x90]
	add r2, r7, r3
	add r1, r1, r6
	sub r5, r7, r3
	add r3, r2, r1
	str r3, [sp, #0x54]
	ldr r4, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	add r3, r4, r3
	str r3, [sp, #0x58]
	ldr r3, [sp, #0x4c]
	sub r3, r4, r3
	add r3, r2, r3
	sub r7, r3, r1
	sub r2, r2, r1
	ldr r3, [sp, #0x50]
	ldr r1, [sp, #0x90]
	lsl r2, r2, #8
	add r4, r0, r1
	sub r3, r3, r6
	add r1, r1, r5
	add r0, r3, r0
	str r2, [sp, #0x60]
	mov r3, #0xb5
	mul r3, r7
	str r3, [sp, #0x5c]
	add r0, r1, r0
	mov r2, #0x62
	mul r2, r0
	str r2, [sp, #0x64]
	mov r2, #0xed
	mul r2, r0
	mov r0, #0x8b
	add r7, r1, #0
	mul r7, r0
	add r0, #0xc3
	mul r0, r1
	str r0, [sp, #0x94]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x68]
	lsl r2, r0, #5
	ldr r0, [sp, #4]
	add r6, r4, #0
	add r4, r0, r2
	ldr r0, [sp, #0x10]
	mov r3, #0xb5
	lsl r0, r0, #1
	ldr r1, [sp, #8]
	mul r6, r3
	add r3, r1, r0
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
	lsl r5, r5, #8
	add r0, r1, r0
	add r0, #0x80
	asr r1, r0, #8
	ldr r0, [sp, #4]
	ldr r0, [r0, r2]
	mul r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
	asr r2, r0, #0xc
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x6c]
	strh r2, [r1, r0]
	add r0, r5, r6
	ldr r1, [sp, #0x64]
	str r0, [sp, #0x70]
	add r0, r1, r0
	add r1, r7, r0
	mov r0, ip
	add r0, r1, r0
	ldr r1, [r4, #4]
	asr r0, r0, #0x10
	mul r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r3, #2]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	add r1, r1, r0
	mov r0, lr
	add r0, r1, r0
	ldr r1, [r4, #8]
	asr r0, r0, #0x10
	mul r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r3, #4]
	ldr r1, [sp, #0x68]
	sub r0, r5, r6
	sub r2, r0, r1
	ldr r1, [sp, #0x94]
	add r2, r1, r2
	ldr r1, [sp, #0x84]
	add r1, r2, r1
	ldr r2, [r4, #0xc]
	asr r1, r1, #0x10
	mul r2, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r2, r1
	asr r1, r1, #0xc
	strh r1, [r3, #6]
	ldr r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	sub r1, r2, r1
	add r1, #0x80
	ldr r2, [r4, #0x10]
	asr r1, r1, #8
	mul r2, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r2, r1
	asr r1, r1, #0xc
	strh r1, [r3, #8]
	ldr r1, [sp, #0x68]
	add r1, r1, r0
	ldr r0, [sp, #0x94]
	sub r1, r1, r0
	ldr r0, [sp, #0x80]
	add r0, r1, r0
	ldr r1, [r4, #0x14]
	asr r0, r0, #0x10
	mul r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r3, #0xa]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	sub r1, r1, r0
	ldr r0, [sp, #0x7c]
	add r0, r1, r0
	ldr r1, [r4, #0x18]
	asr r0, r0, #0x10
	mul r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r3, #0xc]
	ldr r1, [sp, #0x70]
	ldr r0, [sp, #0x64]
	sub r0, r1, r0
	sub r1, r0, r7
	ldr r0, [sp, #0x78]
	add r0, r1, r0
	asr r1, r0, #0x10
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	asr r0, r0, #0xc
	strh r0, [r3, #0xe]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #8
	bge _021ACFE2
	b _021ACE58
_021ACFE2:
	add sp, #0x198
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21accf8

	thumb_func_start ovy257_21acfe8
ovy257_21acfe8: ; 0x021ACFE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _021AD12C ; =0x00000404
	add r5, r2, #0
	add r2, r7, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	add r1, r1, r7
	add r2, #0x24
	mov r6, #0
	blx MIi_CpuClearFast
	cmp r5, #3
	bhi _021AD032
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AD012: ; jump table
	.short _021AD01A - _021AD012 - 2 ; case 0
	.short _021AD01E - _021AD012 - 2 ; case 1
	.short _021AD022 - _021AD012 - 2 ; case 2
	.short _021AD026 - _021AD012 - 2 ; case 3
_021AD01A:
	ldr r0, _021AD130 ; =0x021B3980
	b _021AD028
_021AD01E:
	ldr r0, _021AD134 ; =0x021B39A0
	b _021AD028
_021AD022:
	ldr r0, _021AD138 ; =0x021B3B40
	b _021AD028
_021AD026:
	ldr r0, _021AD13C ; =0x021B3A80
_021AD028:
	ldr r1, [sp]
	mov r2, #0x10
	add r1, r1, r7
	blx MIi_CpuCopyFast
_021AD032:
	cmp r5, #3
	bhi _021AD070
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AD042: ; jump table
	.short _021AD04A - _021AD042 - 2 ; case 0
	.short _021AD05A - _021AD042 - 2 ; case 1
	.short _021AD05E - _021AD042 - 2 ; case 2
	.short _021AD062 - _021AD042 - 2 ; case 3
_021AD04A:
	ldr r0, _021AD140 ; =0x021B3990
_021AD04C:
	ldr r2, _021AD144 ; =0x00000424
	ldr r1, [sp]
	add r1, r1, r2
	mov r2, #0xc
	blx MIi_CpuCopyFast
	b _021AD070
_021AD05A:
	ldr r0, _021AD148 ; =0x021B39B0
	b _021AD04C
_021AD05E:
	ldr r0, _021AD14C ; =0x021B3B50
	b _021AD064
_021AD062:
	ldr r0, _021AD150 ; =0x021B3A90
_021AD064:
	ldr r2, _021AD144 ; =0x00000424
	ldr r1, [sp]
	add r1, r1, r2
	mov r2, #0xa2
	blx MI_CpuCopy
_021AD070:
	mov r7, #1
	mov r0, #0
	lsl r7, r7, #0xa
	str r0, [sp, #4]
	mov r0, #0
	add r1, r4, #0
	add r2, r7, #0
	blx MIi_CpuClearFast
	mov r5, #0
	add r7, r7, #4
	b _021AD0B0
_021AD088:
	ldr r0, [sp, #4]
	ldr r3, [sp]
	ldr r2, [sp, #4]
	mov r1, #0
	add r0, r0, #1
	add r3, r3, r2
	b _021AD09E
_021AD096:
	lsl r2, r5, #2
	str r0, [r4, r2]
	add r5, r5, #1
	add r1, r1, #1
_021AD09E:
	ldrb r2, [r3, r7]
	cmp r1, r2
	blo _021AD096
	lsl r1, r5, #2
	mov r0, #0
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_021AD0B0:
	ldr r0, [sp, #4]
	cmp r0, #0x10
	blo _021AD088
	mov r7, #1
	lsl r7, r7, #0xa
	mov r0, #0
	add r1, r4, r7
	add r2, r7, #0
	mov r5, #0
	blx MIi_CpuClearFast
	ldr r0, [r4]
	b _021AD0E6
_021AD0CA:
	lsl r1, r5, #2
	add r1, r4, r1
	str r6, [r1, r7]
	add r1, r6, #1
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	add r5, r5, #1
_021AD0D8:
	lsl r1, r5, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _021AD0CA
	lsl r1, r6, #0x11
	add r0, r0, #1
	lsr r6, r1, #0x10
_021AD0E6:
	lsl r1, r5, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021AD0D8
	ldr r7, _021AD144 ; =0x00000424
	mov r5, #0
	sub r7, #0x24
	b _021AD120
_021AD0F6:
	lsl r2, r5, #2
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _021AD11E
	ldr r0, [sp]
	ldr r3, [sp]
	add r1, r0, r5
	ldr r0, _021AD144 ; =0x00000424
	ldrb r1, [r1, r0]
	add r0, r4, r2
	ldr r0, [r0, r7]
	lsl r6, r1, #1
	add r6, r3, r6
	ldr r3, _021AD154 ; =0x00000524
	strh r0, [r6, r3]
	ldr r0, [r4, r2]
	ldr r2, [sp]
	add r2, r2, r1
	ldr r1, _021AD158 ; =0x00000728
	strb r0, [r2, r1]
_021AD11E:
	add r5, r5, #1
_021AD120:
	mov r0, #1
	lsl r0, r0, #8
	cmp r5, r0
	blo _021AD0F6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AD12C: .word 0x00000404
_021AD130: .word 0x021B3980
_021AD134: .word 0x021B39A0
_021AD138: .word 0x021B3B40
_021AD13C: .word 0x021B3A80
_021AD140: .word 0x021B3990
_021AD144: .word 0x00000424
_021AD148: .word 0x021B39B0
_021AD14C: .word 0x021B3B50
_021AD150: .word 0x021B3A90
_021AD154: .word 0x00000524
_021AD158: .word 0x00000728
	thumb_func_end ovy257_21acfe8

	thumb_func_start ovy257_21ad15c
ovy257_21ad15c: ; 0x021AD15C
	push {r4, r5, r6, r7}
	ldr r3, _021AD1C0 ; =0x021B6280
	ldr r5, [r2]
	ldr r3, [r3, #8]
	add r5, #0x10
	mov r4, #0
	cmp r5, r3
	blo _021AD172
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
_021AD172:
	ldr r5, _021AD1C4 ; =0x00000404
	add r3, r4, #0
_021AD176:
	add r6, r0, r3
	ldrb r7, [r6, r5]
	ldr r6, [r2]
	add r3, r3, #1
	strb r7, [r1, r6]
	ldr r6, [r2]
	add r4, r4, r7
	add r6, r6, #1
	str r6, [r2]
	cmp r3, #0x10
	blo _021AD176
	ldr r3, _021AD1C0 ; =0x021B6280
	add r5, r6, r4
	ldr r3, [r3, #8]
	cmp r5, r3
	blo _021AD19C
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_021AD19C:
	mov r3, #0
	cmp r4, #0
	bls _021AD1B8
	ldr r5, _021AD1C8 ; =0x00000424
_021AD1A4:
	add r6, r0, r3
	ldrb r7, [r6, r5]
	ldr r6, [r2]
	add r3, r3, #1
	strb r7, [r1, r6]
	ldr r6, [r2]
	add r6, r6, #1
	str r6, [r2]
	cmp r3, r4
	blo _021AD1A4
_021AD1B8:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021AD1C0: .word 0x021B6280
_021AD1C4: .word 0x00000404
_021AD1C8: .word 0x00000424
	thumb_func_end ovy257_21ad15c

	thumb_func_start ovy257_21ad1cc
ovy257_21ad1cc: ; 0x021AD1CC
	push {r3, r4}
	ldr r1, _021AD1E8 ; =0x00000404
	mov r4, #0
	mov r3, #0
_021AD1D4:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	add r3, r3, #1
	add r4, r4, r2
	cmp r3, #0x10
	blo _021AD1D4
	add r4, #0x11
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_021AD1E8: .word 0x00000404
	thumb_func_end ovy257_21ad1cc

	thumb_func_start ovy257_21ad1ec
ovy257_21ad1ec: ; 0x021AD1EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r1, r2, #0
	str r3, [sp]
	ldr r3, [sp, #0x30]
	ldr r2, [r1, #4]
	mov ip, r0
	ldr r5, [sp, #0x2c]
	mul r2, r3
	add r2, r5, r2
	ldr r0, [r1]
	lsl r3, r2, #7
	add r2, r0, r3
	str r2, [sp, #8]
	ldrsh r2, [r0, r3]
	ldr r0, [r1, #0xc]
	ldr r7, [sp, #0x28]
	sub r0, r2, r0
	str r2, [r1, #0xc]
	bmi _021AD21A
	str r0, [sp, #0xc]
	b _021AD220
_021AD21A:
	neg r0, r0
	mvn r1, r0
	str r1, [sp, #0xc]
_021AD220:
	mov r6, #0
	cmp r0, #0
	beq _021AD22C
_021AD226:
	add r6, r6, #1
	asr r0, r0, #1
	bne _021AD226
_021AD22C:
	lsl r3, r6, #1
	mov r2, ip
	add r3, r2, r3
	ldr r2, _021AD340 ; =0x00000524
	ldr r0, [sp]
	ldrh r2, [r3, r2]
	mov r3, ip
	add r5, r3, r6
	ldr r3, _021AD344 ; =0x00000728
	add r1, r7, #0
	ldrb r3, [r5, r3]
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD250
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD250:
	cmp r6, #0
	beq _021AD26A
	ldr r0, [sp]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	add r3, r6, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD26A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD26A:
	mov r0, #1
	mov r5, #0
	str r0, [sp, #0x10]
_021AD270:
	ldr r1, _021AD348 ; =0x021B3A3C
	ldr r0, [sp, #0x10]
	ldrb r0, [r1, r0]
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _021AD310
	cmp r5, #0x10
	blo _021AD2A4
	ldr r6, _021AD34C ; =0x00000818
_021AD286:
	ldr r2, _021AD350 ; =0x00000704
	ldrb r3, [r4, r6]
	ldrh r2, [r4, r2]
	ldr r0, [sp]
	add r1, r7, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD29E
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD29E:
	sub r5, #0x10
	cmp r5, #0x10
	bhs _021AD286
_021AD2A4:
	ldr r1, _021AD348 ; =0x021B3A3C
	ldr r0, [sp, #0x10]
	ldrb r0, [r1, r0]
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrsh r1, [r0, r1]
	cmp r1, #0
	blt _021AD2B8
	str r1, [sp, #4]
	b _021AD2BE
_021AD2B8:
	neg r1, r1
	mvn r0, r1
	str r0, [sp, #4]
_021AD2BE:
	mov r6, #0
	cmp r1, #0
	beq _021AD2CC
_021AD2C4:
	asr r1, r1, #1
	add r6, r6, #1
	cmp r1, #0
	bne _021AD2C4
_021AD2CC:
	lsl r0, r5, #4
	add r5, r0, #0
	orr r5, r6
	lsl r2, r5, #1
	add r3, r4, r2
	ldr r2, _021AD340 ; =0x00000524
	add r5, r4, r5
	ldrh r2, [r3, r2]
	ldr r3, _021AD344 ; =0x00000728
	ldr r0, [sp]
	ldrb r3, [r5, r3]
	add r1, r7, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD2F2
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD2F2:
	cmp r6, #0
	beq _021AD30C
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r7, #0
	add r3, r6, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD30C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD30C:
	mov r5, #0
	b _021AD312
_021AD310:
	add r5, r5, #1
_021AD312:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x40
	blo _021AD270
	cmp r5, #0
	beq _021AD33A
	ldr r2, _021AD340 ; =0x00000524
	ldr r3, _021AD344 ; =0x00000728
	ldrh r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [sp]
	add r1, r7, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AD33A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AD33A:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AD340: .word 0x00000524
_021AD344: .word 0x00000728
_021AD348: .word 0x021B3A3C
_021AD34C: .word 0x00000818
_021AD350: .word 0x00000704
	thumb_func_end ovy257_21ad1ec

	thumb_func_start ovy257_21ad354
ovy257_21ad354: ; 0x021AD354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r0, [sp]
	ldr r0, [r2]
	str r1, [sp, #4]
	str r0, [sp, #0x20]
	ldr r0, [r2, #4]
	str r3, [sp, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r2, #8]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bhi _021AD37A
	b _021AD490
_021AD37A:
	ldr r1, [sp]
	add r0, r3, #0
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r3, #0
	lsl r0, r0, #1
	str r0, [sp, #0x10]
_021AD388:
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021AD482
	ldr r0, [sp, #0x24]
	lsl r1, r0, #4
	ldr r0, [sp, #8]
	mul r0, r1
	str r0, [sp, #0xc]
_021AD39C:
	ldr r0, [sp, #0x28]
	mov r7, #0
	lsl r1, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	mov ip, r0
_021AD3A8:
	ldr r1, [sp]
	mov r0, ip
	add r5, r1, r0
	ldr r1, [sp, #0x14]
	mov r0, ip
	add r4, r1, r0
	add r2, r1, #0
	mov r1, ip
	ldrb r6, [r2, r1]
	add r0, sp, #0x30
	add r3, r0, r7
	ldr r2, [sp]
	mov r1, ip
	ldrb r2, [r2, r1]
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #1]
	add r1, r2, r1
	add r1, r6, r1
	add r0, r0, r1
	asr r1, r0, #2
	add r0, sp, #0x30
	strb r1, [r0, r7]
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	ldrb r6, [r4, #2]
	ldrb r2, [r4, #3]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #1]
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	ldrb r6, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #2]
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #7]
	ldrb r6, [r4, #6]
	ldrb r2, [r4, #7]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #3]
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	ldrb r6, [r4, #8]
	ldrb r2, [r4, #9]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #4]
	ldrb r1, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	ldrb r6, [r4, #0xa]
	ldrb r2, [r4, #0xb]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #5]
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0xd]
	ldrb r6, [r4, #0xc]
	ldrb r2, [r4, #0xd]
	add r0, r1, r0
	add r0, r6, r0
	add r0, r2, r0
	asr r0, r0, #2
	strb r0, [r3, #6]
	ldrb r0, [r4, #0xf]
	ldrb r2, [r4, #0xe]
	ldrb r1, [r5, #0xe]
	ldrb r4, [r5, #0xf]
	add r7, #8
	add r1, r1, r4
	add r1, r2, r1
	add r0, r0, r1
	asr r0, r0, #2
	strb r0, [r3, #7]
	ldr r0, [sp, #0x10]
	mov r1, ip
	add r0, r1, r0
	mov ip, r0
	cmp r7, #0x40
	blo _021AD3A8
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #4]
	lsl r3, r2, #7
	ldr r2, [sp, #0x20]
	add r0, sp, #0x30
	add r2, r2, r3
	bl ovy257_21accf8
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	cmp r1, r0
	blo _021AD39C
_021AD482:
	ldr r0, [sp, #0x24]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x24]
	cmp r1, r0
	bhs _021AD490
	b _021AD388
_021AD490:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21ad354

	thumb_func_start ovy257_21ad494
ovy257_21ad494: ; 0x021AD494
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp]
	ldr r0, [r2]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [r2, #4]
	add r7, r3, #0
	str r0, [sp, #0x10]
	ldr r0, [r2, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bls _021AD566
_021AD4B8:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bls _021AD55A
	ldr r0, [sp, #0x18]
	add r4, sp, #0x24
	lsl r1, r0, #3
	add r0, r1, #0
	mul r0, r7
	str r0, [sp, #8]
_021AD4CE:
	ldr r0, [sp, #0x1c]
	mov r3, #0
	lsl r1, r0, #4
	ldr r0, [sp, #8]
	add r2, r1, r0
_021AD4D8:
	ldr r0, [sp]
	ldr r5, [sp]
	add r1, r0, r2
	ldrb r6, [r5, r2]
	ldrb r5, [r1, #1]
	add r0, r4, r3
	add r2, r2, r7
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r4, r3]
	ldrb r6, [r1, #2]
	ldrb r5, [r1, #3]
	add r3, #8
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #1]
	ldrb r6, [r1, #4]
	ldrb r5, [r1, #5]
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #2]
	ldrb r6, [r1, #6]
	ldrb r5, [r1, #7]
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #3]
	ldrb r6, [r1, #8]
	ldrb r5, [r1, #9]
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #4]
	ldrb r6, [r1, #0xa]
	ldrb r5, [r1, #0xb]
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #5]
	ldrb r6, [r1, #0xc]
	ldrb r5, [r1, #0xd]
	add r5, r6, r5
	asr r5, r5, #1
	strb r5, [r0, #6]
	ldrb r5, [r1, #0xe]
	ldrb r1, [r1, #0xf]
	add r1, r5, r1
	asr r1, r1, #1
	strb r1, [r0, #7]
	cmp r3, #0x40
	blo _021AD4D8
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #4]
	lsl r3, r2, #7
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r2, r2, r3
	bl ovy257_21accf8
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blo _021AD4CE
_021AD55A:
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x18]
	cmp r1, r0
	blo _021AD4B8
_021AD566:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21ad494

	thumb_func_start ovy257_21ad56c
ovy257_21ad56c: ; 0x021AD56C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [r2]
	str r1, [sp]
	str r0, [sp, #0x20]
	ldr r0, [r2, #4]
	str r3, [sp, #4]
	str r0, [sp, #0x1c]
	ldr r0, [r2, #8]
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	add r0, r3, #0
	lsl r1, r0, #1
	add r0, r5, r1
	str r0, [sp, #0x10]
	add r0, r3, #0
	add r0, r0, r1
	add r0, r5, r0
	str r0, [sp, #0xc]
	add r0, r3, #0
	lsl r1, r0, #2
	add r0, r5, r1
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, r0, r1
	add r7, r5, r0
	mov r1, #6
	add r0, r3, #0
	mul r1, r0
	add r6, r5, r1
	mov r1, #7
	mul r1, r0
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	add r4, r5, r1
	cmp r0, #0
	bls _021AD678
_021AD5C2:
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021AD652
_021AD5CC:
	mov r1, #0
_021AD5CE:
	ldrb r3, [r5]
	add r2, sp, #0x30
	add r0, sp, #0x30
	strb r3, [r2, r1]
	ldr r2, [sp, #0x14]
	add r0, r0, r1
	ldrb r2, [r2]
	add r1, r1, #1
	add r5, r5, #1
	strb r2, [r0, #8]
	ldr r2, [sp, #0x14]
	add r2, r2, #1
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldrb r2, [r2]
	strb r2, [r0, #0x10]
	ldr r2, [sp, #0x10]
	add r2, r2, #1
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldrb r2, [r2]
	strb r2, [r0, #0x18]
	ldr r2, [sp, #0xc]
	add r2, r2, #1
	str r2, [sp, #0xc]
	ldr r2, [sp, #8]
	ldrb r3, [r2]
	add r2, r0, #0
	add r2, #0x20
	strb r3, [r2]
	ldr r2, [sp, #8]
	ldrb r3, [r7]
	add r2, r2, #1
	str r2, [sp, #8]
	add r2, r0, #0
	add r2, #0x28
	strb r3, [r2]
	add r2, r0, #0
	ldrb r3, [r6]
	add r2, #0x30
	add r0, #0x38
	strb r3, [r2]
	ldrb r2, [r4]
	add r7, r7, #1
	add r6, r6, #1
	add r4, r4, #1
	strb r2, [r0]
	cmp r1, #8
	blo _021AD5CE
	ldr r2, [sp, #0x2c]
	ldr r1, [sp]
	lsl r3, r2, #7
	ldr r2, [sp, #0x20]
	add r0, sp, #0x30
	add r2, r2, r3
	bl ovy257_21accf8
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	cmp r1, r0
	blo _021AD5CC
_021AD652:
	ldr r0, [sp, #4]
	add r5, r4, #0
	add r1, r4, r0
	str r1, [sp, #0x14]
	add r1, r1, r0
	str r1, [sp, #0x10]
	add r1, r1, r0
	str r1, [sp, #0xc]
	add r1, r1, r0
	add r7, r1, r0
	add r6, r7, r0
	add r4, r6, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x24]
	cmp r1, r0
	blo _021AD5C2
_021AD678:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy257_21ad56c

	thumb_func_start ovy257_21ad67c
ovy257_21ad67c: ; 0x021AD67C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r3, #1
	mov r5, #1
	cmp r2, #1
	beq _021AD698
	cmp r2, #2
	beq _021AD692
	cmp r2, #3
	beq _021AD696
	b _021AD698
_021AD692:
	mov r5, #2
	b _021AD696
_021AD696:
	mov r3, #2
_021AD698:
	lsl r2, r3, #3
	sub r4, r2, #1
	mvn r2, r4
	add r0, r0, r4
	add r6, r2, #0
	and r6, r0
	lsl r0, r5, #3
	sub r0, r0, #1
	mvn r2, r0
	add r0, r1, r0
	add r4, r2, #0
	and r4, r0
	lsr r0, r6, #3
	lsr r7, r4, #3
	add r1, r3, #0
	str r0, [sp]
	blx sub_0208D868
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	blx sub_0208D868
	add r2, r6, #0
	mul r2, r4
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [sp]
	add r3, r2, #0
	ldr r2, [sp, #4]
	mul r3, r7
	mul r0, r2
	lsl r0, r0, #1
	add r0, r3, r0
	lsl r0, r0, #7
	add r1, r1, r0
	mov r0, #0xad
	lsl r0, r0, #6
	add r0, r1, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21ad67c

	thumb_func_start ovy257_21ad6ec
ovy257_21ad6ec: ; 0x021AD6EC
	push {r3, r4, r5, lr}
	mov r4, #1
	and r4, r3
	beq _021AD700
	cmp r0, #0xa0
	bhs _021AD6FA
	mov r0, #0xa0
_021AD6FA:
	cmp r1, #0x78
	bhs _021AD700
	mov r1, #0x78
_021AD700:
	bl ovy257_21ad67c
	add r5, r0, #0
	mov r0, #0xa0
	mov r1, #0x78
	mov r2, #1
	bl ovy257_21ad67c
	cmp r5, r0
	bls _021AD724
	cmp r4, #0
	beq _021AD71E
	mov r0, #0x4b
	lsl r0, r0, #0xa
	b _021AD720
_021AD71E:
	mov r0, #0
_021AD720:
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_021AD724:
	cmp r4, #0
	beq _021AD72E
	mov r1, #0x4b
	lsl r1, r1, #0xa
	b _021AD730
_021AD72E:
	mov r1, #0
_021AD730:
	add r0, r0, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy257_21ad6ec

	thumb_func_start ovy257_21ad734
ovy257_21ad734: ; 0x021AD734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, _021AD8C0 ; =0x021B6280
	str r1, [sp]
	ldr r7, [r0, #8]
	cmp r7, #0x17
	bhs _021AD74A
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD74A:
	ldrb r3, [r4, #0x13]
	add r3, #0xc
	add r2, r3, #2
	cmp r2, r7
	bls _021AD75A
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD75A:
	add r0, r4, r3
	ldrb r1, [r0, #1]
	ldrb r0, [r4, r3]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0xc
	mul r0, r3
	add r0, r2, r0
	cmp r0, r7
	bls _021AD778
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD778:
	mov r6, #0
	mov r5, #0
	cmp r3, #0
	bls _021AD7B4
_021AD780:
	add r1, r4, r2
	ldrb r6, [r4, r2]
	ldrb r0, [r1, #1]
	lsl r6, r6, #8
	add r0, r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _021AD8C4 ; =0x00008769
	cmp r6, r0
	bne _021AD7AC
	ldrb r0, [r1, #0xa]
	ldrb r3, [r1, #0xb]
	lsl r2, r0, #8
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #9]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	add r0, r0, r1
	add r0, r2, r0
	add r2, r3, r0
	add r2, #0xc
	b _021AD7B4
_021AD7AC:
	add r5, r5, #1
	add r2, #0xc
	cmp r5, r3
	blo _021AD780
_021AD7B4:
	ldr r0, _021AD8C4 ; =0x00008769
	cmp r6, r0
	beq _021AD7C0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD7C0:
	add r0, r2, #2
	cmp r0, r7
	bls _021AD7CC
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD7CC:
	add r1, r4, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r4, r2]
	add r2, r0, #0
	lsl r1, r1, #8
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	mov r1, #0xc
	mul r1, r3
	add r0, r0, r1
	cmp r0, r7
	bls _021AD7EC
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD7EC:
	mov r6, #0
	mov r5, #0
	cmp r3, #0
	bls _021AD828
_021AD7F4:
	add r1, r4, r2
	ldrb r6, [r4, r2]
	ldrb r0, [r1, #1]
	lsl r6, r6, #8
	add r0, r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _021AD8C8 ; =0x0000927C
	cmp r6, r0
	bne _021AD820
	ldrb r0, [r1, #0xa]
	ldrb r3, [r1, #0xb]
	lsl r2, r0, #8
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #9]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	add r0, r0, r1
	add r0, r2, r0
	add r2, r3, r0
	add r2, #0xc
	b _021AD828
_021AD820:
	add r5, r5, #1
	add r2, #0xc
	cmp r5, r3
	blo _021AD7F4
_021AD828:
	ldr r0, _021AD8C8 ; =0x0000927C
	cmp r6, r0
	beq _021AD834
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD834:
	add r0, r2, #4
	cmp r0, r7
	bls _021AD840
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD840:
	add r3, r4, r2
	ldrb r0, [r3, #2]
	cmp r0, #0x10
	bne _021AD84E
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _021AD854
_021AD84E:
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD854:
	add r2, #0xe
	cmp r2, r7
	bls _021AD860
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD860:
	ldrb r0, [r3, #0xc]
	ldrb r2, [r3, #0xd]
	lsl r1, r0, #8
	ldrb r0, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x10
	add r0, r0, r3
	add r0, r1, r0
	add r5, r2, r0
	add r5, #0xc
	add r0, r5, #0
	add r0, #0x1c
	cmp r0, r7
	bls _021AD884
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD884:
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021AD89A
	blx sub_021AD8CC
_021AD89A:
	add r6, sp, #4
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r4, #0
	blx sub_021AD8D4
	cmp r0, #1
	beq _021AD8B0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AD8B0:
	add r0, r6, #0
	add r1, r4, r5
	mov r2, #0x1c
	blx MI_CpuCopy8
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AD8C0: .word 0x021B6280
_021AD8C4: .word 0x00008769
_021AD8C8: .word 0x0000927C
	thumb_func_end ovy257_21ad734

	arm_func_start sub_021AD8CC
sub_021AD8CC: ; 0x021AD8CC
	ldr pc, _021AD8D0 ; =sub_027076C4
	.align 2, 0
_021AD8D0: .word sub_027076C4
	arm_func_end sub_021AD8CC

	arm_func_start sub_021AD8D4
sub_021AD8D4: ; 0x021AD8D4
	ldr pc, _021AD8D8 ; =sub_02707A8C
	.align 2, 0
_021AD8D8: .word sub_02707A8C
	arm_func_end sub_021AD8D4

	thumb_func_start ovy257_21ad8dc
ovy257_21ad8dc: ; 0x021AD8DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	ldr r0, [sp, #0x50]
	str r1, [sp, #4]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x54]
	mov r0, #0x41
	lsl r0, r0, #2
	and r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x50]
	lsl r0, r0, #4
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r7, #0
	str r0, [sp, #0x10]
	blx sub_0208D868
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x54]
	sub r0, r0, #1
	str r0, [sp, #0x28]
	bmi _021AD9F0
	ldr r0, [sp, #0x50]
	sub r0, r0, #1
	str r0, [sp, #0x24]
_021AD918:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x28]
	mul r0, r1
	ldr r1, [sp, #0x54]
	lsl r0, r0, #4
	blx sub_0208D868
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x10]
	add r1, r3, #0
	bmi _021AD9E8
	lsr r1, r0, #4
	ldr r0, [sp, #4]
	mul r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x50]
	mul r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, #1
	mov ip, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	str r0, [sp, #0x30]
_021AD95C:
	ldr r0, [sp, #0x2c]
	sub r2, r2, r0
	ldr r0, [sp, #0x34]
	cmp r0, #4
	beq _021AD9D6
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _021AD9D6
	lsr r6, r2, #4
	add r0, r6, #0
	mov r1, ip
	bic r0, r1
	ldr r1, [sp, #0x20]
	add r0, r0, r1
	lsr r0, r0, #1
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r1, [r0, r1]
	mov r0, #0xff
	lsl r0, r0, #8
	add r4, r1, #0
	and r4, r0
	ldr r0, [sp, #0x30]
	add r5, r1, #0
	and r5, r0
	mov r0, #1
	tst r0, r6
	beq _021AD9A0
	lsr r0, r1, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	and r0, r1
	b _021AD9A4
_021AD9A0:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
_021AD9A4:
	mov r1, #1
	tst r1, r3
	beq _021AD9B2
	orr r0, r4
	add r7, r5, #0
	orr r7, r0
	b _021AD9E4
_021AD9B2:
	lsr r1, r7, #1
	lsr r4, r4, #1
	lsr r5, r5, #1
	add r1, r1, r4
	add r5, r5, r1
	lsl r1, r7, #0x18
	lsr r4, r1, #8
	ldr r1, _021AD9F4 ; =0xFF00FF00
	and r1, r5
	orr r1, r4
	orr r0, r1
	ldr r1, [sp, #0x1c]
	add r1, r3, r1
	lsr r1, r1, #1
	lsl r4, r1, #2
	ldr r1, [sp, #0xc]
	str r0, [r1, r4]
	b _021AD9E4
_021AD9D6:
	lsr r0, r2, #4
	lsl r1, r0, #1
	ldr r0, [sp, #0x18]
	ldrh r4, [r0, r1]
	ldr r0, [sp, #0x14]
	lsl r1, r3, #1
	strh r4, [r0, r1]
_021AD9E4:
	sub r3, r3, #1
	bpl _021AD95C
_021AD9E8:
	ldr r0, [sp, #0x28]
	sub r0, r0, #1
	str r0, [sp, #0x28]
	bpl _021AD918
_021AD9F0:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AD9F4: .word 0xFF00FF00
	thumb_func_end ovy257_21ad8dc

	thumb_func_start ovy257_21ad9f8
ovy257_21ad9f8: ; 0x021AD9F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #7
	add r0, r0, #7
	str r0, [sp, #0xc]
	bic r0, r1
	add r2, r2, #7
	bic r2, r1
	add r1, r0, #0
	str r0, [sp, #0xc]
	mul r1, r2
	add r0, r3, #0
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, r1, r0
	str r3, [sp, #4]
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r4, #0
	add r0, r1, #0
	beq _021ADADE
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x20]
	mov r0, #0x3e
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, #0xe9
	str r0, [sp, #0x1c]
	ldr r0, _021ADAE4 ; =0x000001D3
	str r0, [sp, #0x18]
	add r0, #0xe0
	str r0, [sp, #0x18]
	ldr r0, _021ADAE4 ; =0x000001D3
	str r0, [sp, #0x24]
	sub r0, #0x86
	str r0, [sp, #0x24]
_021ADA48:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	blx sub_0208D868
	ldr r0, [sp]
	mov ip, r1
	cmp r1, r0
	bhs _021ADA5C
	ldrh r0, [r7]
	b _021ADA5E
_021ADA5C:
	mov r0, #0
_021ADA5E:
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x18
	mov r2, #0x3e
	lsl r2, r2, #4
	and r2, r0
	ldr r3, [sp, #0x20]
	ldr r5, [sp, #0x1c]
	add r6, r1, #0
	and r0, r3
	mul r6, r5
	lsr r3, r0, #7
	ldr r0, _021ADAE4 ; =0x000001D3
	ldr r5, _021ADAE8 ; =0x00000964
	lsr r2, r2, #2
	mul r5, r2
	add r5, r6, r5
	mul r0, r3
	add r5, r0, r5
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r5, r0
	lsr r5, r0, #0xc
	ldr r0, [sp, #4]
	lsl r6, r3, #0xb
	strb r5, [r0, r4]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	mul r5, r0
	ldr r0, _021ADAEC ; =0x00080800
	sub r0, r0, r5
	ldr r5, _021ADAF0 ; =0x0000054D
	mul r5, r2
	sub r0, r0, r5
	add r0, r6, r0
	lsr r5, r0, #0xc
	cmp r5, #0xff
	bls _021ADAAA
	mov r5, #0xff
_021ADAAA:
	ldr r0, [sp, #8]
	lsl r1, r1, #0xb
	strb r5, [r0, r4]
	ldr r0, _021ADAEC ; =0x00080800
	add r0, r1, r0
	ldr r1, _021ADAF4 ; =0x000006B3
	mul r1, r2
	sub r1, r0, r1
	ldr r0, [sp, #0x24]
	mul r0, r3
	sub r0, r1, r0
	lsr r1, r0, #0xc
	cmp r1, #0xff
	bls _021ADAC8
	mov r1, #0xff
_021ADAC8:
	ldr r0, [sp, #0x10]
	strb r1, [r0, r4]
	ldr r0, [sp]
	mov r1, ip
	cmp r1, r0
	bhs _021ADAD6
	add r7, r7, #2
_021ADAD6:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blo _021ADA48
_021ADADE:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ADAE4: .word 0x000001D3
_021ADAE8: .word 0x00000964
_021ADAEC: .word 0x00080800
_021ADAF0: .word 0x0000054D
_021ADAF4: .word 0x000006B3
	thumb_func_end ovy257_21ad9f8

	thumb_func_start ovy257_21adaf8
ovy257_21adaf8: ; 0x021ADAF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mul r0, r2
	lsr r6, r0, #1
	lsl r1, r6, #1
	add r0, r3, #0
	add r7, r0, r1
	add r0, r1, r7
	str r3, [sp]
	mov r3, #0
	str r0, [sp, #4]
	cmp r6, #0
	bls _021ADB5E
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsr r0, r0, #8
	mov ip, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	mov lr, r0
_021ADB24:
	ldr r2, [r5]
	mov r4, #0xff
	lsl r4, r4, #0x10
	lsl r0, r2, #0x18
	and r4, r2
	lsl r1, r3, #1
	lsr r0, r0, #0x18
	lsr r4, r4, #8
	orr r4, r0
	ldr r0, [sp]
	add r3, r3, #1
	strh r4, [r0, r1]
	mov r0, ip
	add r4, r2, #0
	and r4, r0
	lsr r0, r4, #8
	orr r0, r4
	strh r0, [r7, r1]
	mov r0, lr
	and r0, r2
	lsr r4, r2, #0x18
	lsr r0, r0, #0x10
	add r2, r4, #0
	orr r2, r0
	ldr r0, [sp, #4]
	add r5, r5, #4
	strh r2, [r0, r1]
	cmp r3, r6
	blo _021ADB24
_021ADB5E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy257_21adaf8

	thumb_func_start ovy257_21adb64
ovy257_21adb64: ; 0x021ADB64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb0]
	add r5, r1, #0
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0xb4]
	add r4, r3, #0
	str r0, [sp, #0xb4]
	ldr r0, [sp, #0xb8]
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0xbc]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xbc]
	cmp r0, #1
	beq _021ADBA0
	cmp r0, #2
	beq _021ADB96
	cmp r0, #3
	beq _021ADB9C
	b _021ADBA0
_021ADB96:
	mov r0, #2
	str r0, [sp, #0x38]
	b _021ADB9C
_021ADB9C:
	mov r0, #2
	str r0, [sp, #0x3c]
_021ADBA0:
	ldr r0, _021ADEDC ; =0x021B6280
	str r2, [r0, #8]
	ldr r0, [sp, #0x3c]
	lsl r1, r0, #3
	ldr r0, [sp, #0xb0]
	blx sub_0208D868
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x38]
	lsl r1, r0, #3
	ldr r0, [sp, #0xb4]
	blx sub_0208D868
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xb0]
	mov r6, #2
	lsr r0, r0, #3
	str r0, [sp, #0x48]
	ldr r0, [sp, #0xb4]
	lsl r6, r6, #8
	lsr r7, r0, #3
	add r0, r4, r6
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x3c]
	add r6, #0x80
	blx sub_0208D868
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x38]
	add r0, r7, #0
	blx sub_0208D868
	ldr r1, [sp, #0x48]
	mov r2, #0xad
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x4c]
	lsl r2, r2, #6
	str r1, [sp, #0x90]
	str r1, [sp, #0x80]
	add r1, r4, r2
	str r1, [sp, #0x6c]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x94]
	add r3, r1, #0
	mul r3, r7
	lsl r1, r3, #7
	add r1, r1, r2
	ldr r2, [sp, #0x4c]
	str r0, [sp, #0x84]
	mul r0, r2
	add r2, r4, r1
	lsl r0, r0, #7
	str r2, [sp, #0x7c]
	add r2, r1, r0
	lsl r0, r0, #1
	add r0, r1, r0
	str r0, [sp, #0x50]
	mov r0, #0
	add r2, r4, r2
	ldr r1, [sp, #0xb0]
	str r2, [sp, #0x8c]
	str r0, [sp, #0x98]
	str r0, [sp, #0x88]
	str r0, [sp, #0x78]
	ldr r0, [sp, #0xb4]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x50]
	lsl r1, r2, #1
	add r0, r0, r2
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r7, [sp, #0x74]
	add r0, r1, r0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0xb8]
	str r2, [sp, #0x68]
	cmp r0, #0x32
	bhs _021ADC4C
	ldr r0, _021ADEE0 ; =0x000012E0
	ldr r1, [sp, #0xb8]
	add r0, #0xa8
	blx sub_0208D868
	b _021ADC52
_021ADC4C:
	lsl r1, r0, #1
	mov r0, #0xc8
	sub r0, r0, r1
_021ADC52:
	str r0, [sp, #0xb8]
	mov r7, #0
_021ADC56:
	ldr r0, _021ADEE4 ; =0x021B39BC
	ldrb r1, [r0, r7]
	ldr r0, [sp, #0xb8]
	mul r0, r1
	add r0, #0x32
	mov r1, #0x64
	blx sub_0208D868
	add r1, r0, #0
	bne _021ADC6C
	mov r1, #1
_021ADC6C:
	cmp r1, #0xff
	bls _021ADC72
	mov r1, #0xff
_021ADC72:
	ldr r0, [sp, #0x34]
	ldr r2, _021ADEE8 ; =0x021B3BF4
	add r0, r0, r7
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	strb r1, [r0, r7]
	lsl r0, r7, #2
	str r0, [sp, #0x5c]
	add r0, r4, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	ldr r0, [r2, r0]
	blx sub_0208D65C
	ldr r1, [sp, #0x5c]
	str r0, [r4, r1]
	ldr r0, _021ADEEC ; =0x021B39FC
	ldrb r1, [r0, r7]
	ldr r0, [sp, #0xb8]
	mul r0, r1
	add r0, #0x32
	mov r1, #0x64
	blx sub_0208D868
	add r1, r0, #0
	bne _021ADCA8
	mov r1, #1
_021ADCA8:
	cmp r1, #0xff
	bls _021ADCAE
	mov r1, #0xff
_021ADCAE:
	ldr r0, [sp, #0x28]
	ldr r2, _021ADEE8 ; =0x021B3BF4
	add r0, #0x40
	str r0, [sp, #0x28]
	strb r1, [r0]
	ldr r0, [sp, #0x5c]
	ldr r0, [r2, r0]
	blx sub_0208D65C
	mov r1, #1
	ldr r2, [sp, #0x24]
	lsl r1, r1, #8
	add r7, r7, #1
	str r0, [r2, r1]
	cmp r7, #0x40
	blo _021ADC56
	ldr r7, [sp, #0xcc]
	cmp r7, #0
	beq _021ADCE0
	ldr r3, [sp, #0x50]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xb0]
	ldr r2, [sp, #0xb4]
	add r3, r4, r3
	blx r7
_021ADCE0:
	ldr r0, [sp, #0x50]
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, #0
	add r2, sp, #0x6c
	bl ovy257_21ad56c
	ldr r0, [sp, #0xbc]
	add r2, sp, #0x7c
	cmp r0, #1
	bne _021ADD08
	ldr r0, [sp, #0x54]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad56c
	b _021ADD2E
_021ADD08:
	cmp r0, #2
	bne _021ADD1E
	ldr r0, [sp, #0x54]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad354
	b _021ADD2E
_021ADD1E:
	ldr r0, [sp, #0x54]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad494
_021ADD2E:
	ldr r0, [sp, #0xbc]
	add r2, sp, #0x8c
	cmp r0, #1
	bne _021ADD48
	ldr r0, [sp, #0x58]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad56c
	b _021ADD6E
_021ADD48:
	cmp r0, #2
	bne _021ADD5E
	ldr r0, [sp, #0x58]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad354
	b _021ADD6E
_021ADD5E:
	ldr r0, [sp, #0x58]
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, [sp, #0xb0]
	add r0, r4, r0
	add r1, r4, r1
	bl ovy257_21ad494
_021ADD6E:
	ldr r0, [sp, #0xc0]
	cmp r0, #0
	beq _021ADDA8
	ldr r0, _021ADEDC ; =0x021B6280
	ldr r0, [r0, #8]
	cmp r0, #0x19
	bhi _021ADD82
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ADD82:
	ldr r0, _021ADEF0 ; =0x021B3965
	add r1, r5, #0
	mov r2, #0x19
	mov r7, #0x19
	blx MI_CpuCopy8
	mov r1, #0
	mov r0, #0x78
	strb r0, [r5, #8]
	mov r0, #0xa0
	strb r0, [r5, #0xa]
	ldr r0, [sp, #0x3c]
	strb r1, [r5, #7]
	strb r1, [r5, #9]
	lsl r1, r0, #4
	ldr r0, [sp, #0x38]
	orr r0, r1
	strb r0, [r5, #0xd]
	b _021ADE0E
_021ADDA8:
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xb0]
	str r0, [sp]
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xc4]
	add r0, r5, #0
	bl ovy257_21af65c
	add r1, r0, #0
	ldr r0, _021ADEDC ; =0x021B6280
	add r2, r1, #0
	ldr r0, [r0, #8]
	add r2, #0x17
	str r1, [sp, #0x68]
	cmp r2, r0
	blo _021ADDCE
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ADDCE:
	ldr r0, _021ADEF4 ; =0x021B394E
	add r1, r5, r1
	mov r2, #0x17
	blx MI_CpuCopy8
	ldr r0, [sp, #0xb4]
	lsr r1, r0, #8
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	strb r1, [r0, #5]
	ldr r0, [sp, #0x68]
	add r1, r5, r0
	ldr r0, [sp, #0xb4]
	strb r0, [r1, #6]
	ldr r0, [sp, #0xb0]
	lsr r1, r0, #8
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	strb r1, [r0, #7]
	ldr r0, [sp, #0x68]
	add r1, r5, r0
	ldr r0, [sp, #0xb0]
	strb r0, [r1, #8]
	ldr r0, [sp, #0x3c]
	lsl r1, r0, #4
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	strb r1, [r0, #0xb]
	ldr r7, [sp, #0x68]
	add r7, #0x17
_021ADE0E:
	ldr r2, _021ADEDC ; =0x021B6280
	add r0, r7, #0
	ldr r2, [r2, #8]
	add r0, #0x82
	add r1, r7, #0
	cmp r0, r2
	blo _021ADE22
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ADE22:
	add r7, r7, #1
	str r7, [sp, #0x68]
	mov r3, #0
	strb r3, [r5, r1]
	ldr r7, _021ADEF8 ; =0x021B3A3C
	ldr r1, [sp, #0x68]
_021ADE2E:
	ldrb r2, [r7, r3]
	ldr r0, [sp, #0x34]
	add r3, r3, #1
	ldrb r0, [r0, r2]
	strb r0, [r5, r1]
	ldr r0, [sp, #0x68]
	add r1, r0, #1
	str r1, [sp, #0x68]
	cmp r3, #0x40
	blo _021ADE2E
	add r7, r1, #1
	str r7, [sp, #0x68]
	mov r0, #1
	strb r0, [r5, r1]
	ldr r7, _021ADEF8 ; =0x021B3A3C
	ldr r1, [sp, #0x68]
	mov r3, #0
_021ADE50:
	ldrb r2, [r7, r3]
	ldr r0, [sp, #0x34]
	add r3, r3, #1
	add r0, r0, r2
	add r0, #0x40
	ldrb r0, [r0]
	strb r0, [r5, r1]
	ldr r0, [sp, #0x68]
	add r1, r0, #1
	str r1, [sp, #0x68]
	cmp r3, #0x40
	blo _021ADE50
	mov r0, #0x8d
	lsl r0, r0, #6
	mov r2, #0
	str r2, [sp, #0x10]
	add r0, r4, r0
	add r1, r4, r6
	mov r2, #0
	bl ovy257_21acfe8
	mov r0, #0x8d
	ldr r1, _021ADEE0 ; =0x000012E0
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #2
	bl ovy257_21acfe8
	mov r0, #0x8d
	mov r1, #0xab
	lsl r0, r0, #6
	lsl r1, r1, #4
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #1
	bl ovy257_21acfe8
	mov r0, #0x8d
	ldr r1, _021ADEFC ; =0x00001B10
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #3
	bl ovy257_21acfe8
	ldr r0, _021ADEFC ; =0x00001B10
	add r0, r4, r0
	bl ovy257_21ad1cc
	str r0, [sp, #0x60]
	ldr r0, _021ADEE0 ; =0x000012E0
	add r0, r4, r0
	bl ovy257_21ad1cc
	str r0, [sp, #0x64]
	add r0, r4, r6
	bl ovy257_21ad1cc
	add r7, r0, #0
	mov r0, #0xab
	lsl r0, r0, #4
	add r0, r4, r0
	bl ovy257_21ad1cc
	add r1, r7, #2
	add r1, r1, r0
	ldr r0, [sp, #0x64]
	ldr r3, _021ADEDC ; =0x021B6280
	b _021ADF00
	.align 2, 0
_021ADEDC: .word 0x021B6280
_021ADEE0: .word 0x000012E0
_021ADEE4: .word 0x021B39BC
_021ADEE8: .word 0x021B3BF4
_021ADEEC: .word 0x021B39FC
_021ADEF0: .word 0x021B3965
_021ADEF4: .word 0x021B394E
_021ADEF8: .word 0x021B3A3C
_021ADEFC: .word 0x00001B10
_021ADF00:
	add r1, r0, r1
	ldr r0, [sp, #0x60]
	ldr r3, [r3, #8]
	add r2, r0, r1
	ldr r1, [sp, #0x68]
	add r0, r1, #4
	cmp r0, r3
	blo _021ADF16
	ldr r0, [sp, #0x10]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021ADF16:
	mov r0, #0xff
	strb r0, [r5, r1]
	ldr r0, [sp, #0x68]
	mov r1, #0xc4
	add r0, r5, r0
	strb r1, [r0, #1]
	ldr r0, [sp, #0x68]
	lsr r1, r2, #8
	add r0, r5, r0
	strb r1, [r0, #2]
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	strb r2, [r0, #3]
	ldr r0, [sp, #0x68]
	add r2, sp, #0x68
	add r1, r0, #4
	add r7, r1, #1
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x68]
	strb r0, [r5, r1]
	add r0, r4, r6
	add r1, r5, #0
	bl ovy257_21ad15c
	cmp r0, #0
	bne _021ADF50
	ldr r0, [sp, #0x10]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021ADF50:
	ldr r1, [sp, #0x68]
	mov r0, #1
	add r7, r1, #1
	str r7, [sp, #0x68]
	strb r0, [r5, r1]
	mov r0, #0xab
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	add r2, sp, #0x68
	bl ovy257_21ad15c
	cmp r0, #0
	bne _021ADF72
	ldr r0, [sp, #0x10]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021ADF72:
	ldr r1, [sp, #0x68]
	mov r0, #0x10
	add r7, r1, #1
	str r7, [sp, #0x68]
	strb r0, [r5, r1]
	ldr r0, _021AE214 ; =0x000012E0
	add r1, r5, #0
	add r0, r4, r0
	add r2, sp, #0x68
	bl ovy257_21ad15c
	cmp r0, #0
	bne _021ADF92
	ldr r0, [sp, #0x10]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021ADF92:
	ldr r1, [sp, #0x68]
	mov r0, #0x11
	add r7, r1, #1
	str r7, [sp, #0x68]
	strb r0, [r5, r1]
	ldr r0, _021AE218 ; =0x00001B10
	add r1, r5, #0
	add r0, r4, r0
	add r2, sp, #0x68
	bl ovy257_21ad15c
	cmp r0, #0
	bne _021ADFB2
	ldr r0, [sp, #0x10]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021ADFB2:
	mov r7, #0
	add r0, sp, #0x6c
_021ADFB6:
	ldr r1, [sp, #0x10]
	lsl r1, r1, #4
	add r1, r0, r1
	str r7, [r1, #0xc]
	ldr r1, [sp, #0x10]
	add r1, r1, #1
	str r1, [sp, #0x10]
	cmp r1, #3
	blo _021ADFB6
	bl sub_021ACC64
	ldr r1, [sp, #0x68]
	ldr r2, _021AE21C ; =0x021B6280
	add r0, r1, #0
	ldr r2, [r2, #8]
	add r0, #0xe
	cmp r0, r2
	bls _021ADFE0
	add sp, #0x9c
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021ADFE0:
	ldr r0, _021AE220 ; =0x021B3940
_021ADFE2:
	ldrb r2, [r0, r7]
	add r7, r7, #1
	strb r2, [r5, r1]
	ldr r1, [sp, #0x68]
	add r1, r1, #1
	str r1, [sp, #0x68]
	cmp r7, #0xe
	blo _021ADFE2
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bhi _021ADFFE
	b _021AE186
_021ADFFE:
	ldr r0, [sp, #0x44]
	mov r7, #0
	cmp r0, #0
	bhi _021AE008
	b _021AE178
_021AE008:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #1
	str r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x2c]
_021AE012:
	ldr r0, [sp, #0xbc]
	ldr r1, _021AE214 ; =0x000012E0
	cmp r0, #1
	bne _021AE03A
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, r6
	add r1, r4, r1
	add r2, sp, #0x6c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE122
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE03A:
	cmp r0, #2
	bne _021AE0D6
	lsl r0, r7, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r4, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, sp, #0x6c
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE064
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE064:
	ldr r0, [sp, #0x20]
	ldr r1, _021AE214 ; =0x000012E0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r4, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, sp, #0x6c
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE08E
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE08E:
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, _021AE214 ; =0x000012E0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r4, r1
	str r0, [sp, #8]
	add r0, r4, r6
	add r2, sp, #0x6c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE0B2
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE0B2:
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, _021AE214 ; =0x000012E0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r4, r1
	str r0, [sp, #8]
	add r0, r4, r6
	add r2, sp, #0x6c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE122
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE0D6:
	lsl r0, r7, #1
	str r0, [sp, #0x18]
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r1, r4, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x6c
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE0FC
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE0FC:
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r1, _021AE214 ; =0x000012E0
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, r4, r1
	str r0, [sp, #8]
	add r0, r4, r6
	add r2, sp, #0x6c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE122
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE122:
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xab
	ldr r1, _021AE218 ; =0x00001B10
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, r1
	add r2, sp, #0x7c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE148
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE148:
	add r0, sp, #0x68
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xab
	ldr r1, _021AE218 ; =0x00001B10
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, r1
	add r2, sp, #0x8c
	add r3, r5, #0
	bl ovy257_21ad1ec
	cmp r0, #0
	bne _021AE16E
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE16E:
	ldr r0, [sp, #0x44]
	add r7, r7, #1
	cmp r7, r0
	bhs _021AE178
	b _021AE012
_021AE178:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x14]
	cmp r1, r0
	bhs _021AE186
	b _021ADFFE
_021AE186:
	ldr r4, _021AE21C ; =0x021B6280
	ldr r0, [r4]
	cmp r0, #8
	beq _021AE1A6
	add r0, r5, #0
	add r1, sp, #0x68
	mov r2, #0
	mov r3, #7
	mov r6, #0
	bl ovy257_21acc74
	cmp r0, #0
	bne _021AE1A6
	add sp, #0x9c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_021AE1A6:
	ldr r2, [sp, #0x68]
	ldr r0, [r4, #8]
	add r1, r2, #2
	cmp r1, r0
	blo _021AE1B6
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE1B6:
	mov r0, #0xff
	strb r0, [r5, r2]
	ldr r0, [sp, #0x68]
	mov r1, #0xd9
	add r0, r5, r0
	strb r1, [r0, #1]
	ldr r0, [sp, #0x68]
	add r7, r0, #2
	ldr r0, [sp, #0xc0]
	str r7, [sp, #0x68]
	cmp r0, #0
	beq _021AE1E4
	mov r0, #1
	and r0, r7
	cmp r0, #1
	bne _021AE1DE
	mov r0, #0
	strb r0, [r5, r7]
	ldr r0, [sp, #0x68]
	add r7, r0, #1
_021AE1DE:
	add sp, #0x9c
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021AE1E4:
	ldr r0, _021AE224 ; =0x021B6294
	ldr r0, [r0]
	cmp r0, #1
	bne _021AE20C
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021AE20C
	ldr r1, [sp, #0x68]
	add r0, r5, #0
	bl ovy257_21ad734
	cmp r0, #0
	beq _021AE206
	ldr r0, [sp, #0x68]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
_021AE206:
	add sp, #0x9c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE20C:
	ldr r0, [sp, #0x68]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_021AE214: .word 0x000012E0
_021AE218: .word 0x00001B10
_021AE21C: .word 0x021B6280
_021AE220: .word 0x021B3940
_021AE224: .word 0x021B6294
	thumb_func_end ovy257_21adb64

	thumb_func_start sub_021AE228
sub_021AE228: ; 0x021AE228
	cmp r0, #0
	beq _021AE23A
	ldr r3, _021AE284 ; =0x0000FFFF
	cmp r0, r3
	bhi _021AE23A
	cmp r1, #0
	beq _021AE23A
	cmp r1, r3
	bls _021AE23E
_021AE23A:
	mov r0, #0
	bx lr
_021AE23E:
	cmp r2, #1
	beq _021AE24C
	cmp r2, #2
	beq _021AE25C
	cmp r2, #3
	beq _021AE26C
	b _021AE27C
_021AE24C:
	mov r2, #7
	tst r0, r2
	bne _021AE258
	add r0, r1, #0
	tst r0, r2
	beq _021AE280
_021AE258:
	mov r0, #0
	bx lr
_021AE25C:
	mov r2, #0xf
	tst r0, r2
	bne _021AE268
	add r0, r1, #0
	tst r0, r2
	beq _021AE280
_021AE268:
	mov r0, #0
	bx lr
_021AE26C:
	mov r2, #0xf
	tst r0, r2
	bne _021AE278
	mov r0, #7
	tst r0, r1
	beq _021AE280
_021AE278:
	mov r0, #0
	bx lr
_021AE27C:
	mov r0, #0
	bx lr
_021AE280:
	mov r0, #1
	bx lr
	.align 2, 0
_021AE284: .word 0x0000FFFF
	thumb_func_end sub_021AE228

	thumb_func_start ovy257_21ae288
ovy257_21ae288: ; 0x021AE288
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x30]
	add r7, r1, #0
	mov r0, #1
	str r2, [sp, #0x28]
	and r7, r0
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x54]
	add r4, r3, #0
	mov r5, #0
	bl sub_021AE228
	cmp r0, #0
	bne _021AE2B6
	add sp, #0x34
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_021AE2B6:
	mov r0, #0x41
	ldr r1, [sp, #0x58]
	lsl r0, r0, #2
	and r1, r0
	cmp r1, #4
	beq _021AE2CC
	sub r0, r0, #4
	cmp r1, r0
	bne _021AE2CC
	ldr r6, _021AE370 ; =ovy257_21adaf8
	b _021AE2CE
_021AE2CC:
	ldr r6, _021AE374 ; =ovy257_21ad9f8
_021AE2CE:
	cmp r7, #0
	beq _021AE33E
	ldr r0, [sp, #0x50]
	mov r3, #0x96
	str r0, [sp, #0x2c]
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0x78
	lsl r3, r3, #8
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	add r3, r4, r3
	mov ip, r3
	mov r3, #0x96
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	lsl r3, r3, #9
	add r5, r4, #0
	add r4, r4, r3
	mov r3, ip
	bl ovy257_21ad8dc
	ldr r0, [sp, #0x50]
	cmp r0, #0x46
	bls _021AE308
	mov r0, #0x46
	str r0, [sp, #0x2c]
_021AE308:
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #0x96
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r2, r2, #8
	add r0, r5, r2
	add r1, r5, #0
	add r3, r4, #0
	str r6, [sp, #0x1c]
	bl ovy257_21adb64
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _021AE33E
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AE33E:
	cmp r7, #0
	bne _021AE344
	mov r5, #0
_021AE344:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	add r3, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r6, [sp, #0x1c]
	bl ovy257_21adb64
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AE370: .word ovy257_21adaf8
_021AE374: .word ovy257_21ad9f8
	thumb_func_end ovy257_21ae288

	thumb_func_start ovy257_21ae378
ovy257_21ae378: ; 0x021AE378
	push {r3, lr}
	ldr r1, _021AE390 ; =0x021B62B0
	mov r2, #0x13
	blx MI_CpuCopy
	ldr r0, _021AE394 ; =0x021B62AC
	mov r1, #0
	strb r1, [r0, #0x17]
	ldr r0, _021AE398 ; =0x021B628C
	mov r1, #1
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_021AE390: .word 0x021B62B0
_021AE394: .word 0x021B62AC
_021AE398: .word 0x021B628C
	thumb_func_end ovy257_21ae378

	thumb_func_start ovy257_21ae39c
ovy257_21ae39c: ; 0x021AE39C
	push {r3, lr}
	bl RTC_GetDateTime
	cmp r0, #0
	bne _021AE3AA
	mov r0, #1
	pop {r3, pc}
_021AE3AA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy257_21ae39c

	thumb_func_start ovy257_21ae3b0
ovy257_21ae3b0: ; 0x021AE3B0
	push {r4, lr}
	sub sp, #0x40
	add r0, sp, #0x30
	add r1, sp, #0x24
	bl ovy257_21ae39c
	cmp r0, #1
	bne _021AE3F0
	ldr r0, [sp, #0x38]
	mov r2, #0x7d
	str r0, [sp]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r4, sp, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, _021AE3F8 ; =0x021B3CF4
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x30]
	add r0, r4, #0
	add r2, r3, r2
	ldr r3, [sp, #0x34]
	bl sub_020800E8
	add r0, r4, #0
	bl ovy257_21ae378
	add sp, #0x40
	mov r0, #1
	pop {r4, pc}
_021AE3F0:
	mov r0, #0
	add sp, #0x40
	pop {r4, pc}
	nop
_021AE3F8: .word 0x021B3CF4
	thumb_func_end ovy257_21ae3b0

	thumb_func_start ovy257_21ae3fc
ovy257_21ae3fc: ; 0x021AE3FC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _021AE410 ; =0x021B62C4
	mov r2, #0x1e
	bl sub_0207F7CC
	add r1, r0, #1
	ldr r0, _021AE414 ; =0x021B628C
	str r1, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
_021AE410: .word 0x021B62C4
_021AE414: .word 0x021B628C
	thumb_func_end ovy257_21ae3fc

	thumb_func_start ovy257_21ae418
ovy257_21ae418: ; 0x021AE418
	push {r4}
	sub sp, #0xc
	ldr r4, _021AE440 ; =0x021B2590
	add r3, sp, #0
	mov r2, #0xb
_021AE422:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021AE422
	ldrh r2, [r0, #2]
	add r1, sp, #0
	ldr r0, [r0, #4]
	ldrsb r1, [r1, r2]
	mul r0, r1
	add sp, #0xc
	pop {r4}
	bx lr
	nop
_021AE440: .word 0x021B2590
	thumb_func_end ovy257_21ae418

	thumb_func_start ovy257_21ae444
ovy257_21ae444: ; 0x021AE444
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #2]
	ldr r4, _021AE61C ; =0x021B628C
	cmp r1, #0xa
	bls _021AE452
	b _021AE618
_021AE452:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021AE45E: ; jump table
	.short _021AE618 - _021AE45E - 2 ; case 0
	.short _021AE474 - _021AE45E - 2 ; case 1
	.short _021AE5E2 - _021AE45E - 2 ; case 2
	.short _021AE4A4 - _021AE45E - 2 ; case 3
	.short _021AE4DE - _021AE45E - 2 ; case 4
	.short _021AE524 - _021AE45E - 2 ; case 5
	.short _021AE618 - _021AE45E - 2 ; case 6
	.short _021AE5AA - _021AE45E - 2 ; case 7
	.short _021AE618 - _021AE45E - 2 ; case 8
	.short _021AE4DE - _021AE45E - 2 ; case 9
	.short _021AE524 - _021AE45E - 2 ; case 10
_021AE474:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	mov r0, #8
	ldrsb r1, [r5, r0]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x14]
	mov r0, #0
	strb r0, [r1, r2]
	ldr r2, [r4, #4]
	add r1, r2, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0x14]
	strb r0, [r1, r2]
	ldr r2, [r4, #4]
	add r1, r2, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0x14]
	strb r0, [r1, r2]
	pop {r3, r4, r5, r6, r7, pc}
_021AE4A4:
	ldr r0, [r4, #4]
	mov r2, #0xa
	add r1, r0, #1
	str r1, [r4, #4]
	ldrsh r3, [r5, r2]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r3
	asr r3, r1, #8
	ldr r1, [r4, #0x14]
	strb r3, [r1, r0]
	ldr r3, [r4, #4]
	add r0, r3, #1
	str r0, [r4, #4]
	ldrsh r1, [r5, r2]
	ldr r0, [r4, #0x14]
	mov r2, #0
	strb r1, [r0, r3]
	ldr r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r2, [r0, r1]
	ldr r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021AE4DE:
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	mov r1, #0xff
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x18
	and r2, r1
	lsr r3, r2, #0x18
	ldr r2, [r4, #0x14]
	strb r3, [r2, r0]
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	lsr r2, r1, #8
	ldr r3, [r5, #0xc]
	lsr r1, r1, #0x10
	and r2, r3
	asr r3, r2, #0x10
	ldr r2, [r4, #0x14]
	strb r3, [r2, r0]
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	ldr r2, [r5, #0xc]
	and r1, r2
	asr r2, r1, #8
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6, r7, pc}
_021AE524:
	ldr r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #4]
	mov r0, #0xff
	ldr r2, [r5, #0x10]
	lsl r0, r0, #0x18
	and r2, r0
	lsr r3, r2, #0x18
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r3, [r5, #0x10]
	lsr r2, r0, #8
	and r2, r3
	asr r3, r2, #0x10
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r3, [r5, #0x10]
	lsr r2, r0, #0x10
	and r2, r3
	asr r3, r2, #8
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r3, [r4, #4]
	add r1, r3, #1
	str r1, [r4, #4]
	ldr r2, [r5, #0x10]
	ldr r1, [r4, #0x14]
	strb r2, [r1, r3]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r2, [r5, #0x14]
	and r2, r0
	lsr r3, r2, #0x18
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	lsr r2, r0, #8
	ldr r3, [r5, #0x14]
	lsr r0, r0, #0x10
	and r2, r3
	asr r3, r2, #0x10
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r2, [r5, #0x14]
	and r0, r2
	asr r2, r0, #8
	ldr r0, [r4, #0x14]
	strb r2, [r0, r1]
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r1, [r5, #0x14]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6, r7, pc}
_021AE5AA:
	bl ovy257_21ae418
	mov r2, #0
	cmp r0, #0
	bls _021AE5CA
	mov r3, #0x18
_021AE5B6:
	ldr r1, [r4, #4]
	add r6, r1, #1
	str r6, [r4, #4]
	add r6, r5, r2
	ldrsb r7, [r6, r3]
	ldr r6, [r4, #0x14]
	add r2, r2, #1
	strb r7, [r6, r1]
	cmp r2, r0
	blo _021AE5B6
_021AE5CA:
	cmp r2, #4
	bhs _021AE618
	mov r1, #0
_021AE5D0:
	ldr r3, [r4, #4]
	add r2, r2, #1
	add r0, r3, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r2, #4
	strb r1, [r0, r3]
	blo _021AE5D0
	pop {r3, r4, r5, r6, r7, pc}
_021AE5E2:
	bl ovy257_21ae418
	mov r2, #0
	cmp r0, #0
	bls _021AE602
	mov r3, #0x36
_021AE5EE:
	ldr r1, [r4, #4]
	add r6, r1, #1
	str r6, [r4, #4]
	add r6, r5, r2
	ldrsb r7, [r6, r3]
	ldr r6, [r4, #0x14]
	add r2, r2, #1
	strb r7, [r6, r1]
	cmp r2, r0
	blo _021AE5EE
_021AE602:
	cmp r2, #4
	bhs _021AE618
	mov r1, #0
_021AE608:
	ldr r3, [r4, #4]
	add r2, r2, #1
	add r0, r3, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r2, #4
	strb r1, [r0, r3]
	blo _021AE608
_021AE618:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AE61C: .word 0x021B628C
	thumb_func_end ovy257_21ae444

	thumb_func_start ovy257_21ae620
ovy257_21ae620: ; 0x021AE620
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _021AE8D0 ; =0x021B628C
	str r2, [sp, #4]
	str r1, [sp]
	ldr r1, [r6, #4]
	ldr r2, [sp]
	add r0, r1, #1
	str r0, [r6, #4]
	mov r0, #4
	ldrsh r3, [r2, r0]
	mov r2, #0xff
	lsl r2, r2, #8
	and r2, r3
	asr r3, r2, #8
	ldr r2, [r6, #0x14]
	mov r5, #0
	strb r3, [r2, r1]
	ldr r3, [r6, #4]
	add r1, r3, #1
	str r1, [r6, #4]
	ldr r1, [sp]
	ldrsh r2, [r1, r0]
	ldr r1, [r6, #0x14]
	strb r2, [r1, r3]
	ldr r1, [sp]
	ldr r1, [r1, #8]
	str r1, [sp, #8]
	ldr r1, [sp]
	ldrsh r0, [r1, r0]
	ldr r4, [r1]
	cmp r0, #0
	bgt _021AE664
	b _021AE7B0
_021AE664:
	ldr r0, [r6, #4]
	mov r7, #0xff
	add r1, r0, #1
	str r1, [r6, #4]
	ldrh r1, [r4]
	lsl r7, r7, #8
	and r1, r7
	asr r2, r1, #8
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldrh r2, [r4]
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldrh r1, [r4, #2]
	and r1, r7
	asr r2, r1, #8
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldrh r2, [r4, #2]
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r2, [r4, #4]
	lsl r1, r7, #0x10
	and r1, r2
	lsr r2, r1, #0x18
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r2, [r4, #4]
	lsl r1, r7, #8
	and r1, r2
	lsr r2, r1, #0x10
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r1, [r4, #4]
	and r1, r7
	lsr r2, r1, #8
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r2, [r4, #4]
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	add r0, r4, #0
	bl ovy257_21ae418
	cmp r0, #4
	bhi _021AE75C
	ldr r1, _021AE8D0 ; =0x021B628C
	cmp r0, #2
	bne _021AE706
	ldr r0, [r6, #4]
	add r2, r0, #1
	str r2, [r6, #4]
	ldr r3, [r6, #0x14]
	mov r2, #0
	strb r2, [r3, r0]
	ldr r0, [r6, #4]
	add r3, r0, #1
	str r3, [r6, #4]
	ldr r3, [r6, #0x14]
	strb r2, [r3, r0]
_021AE706:
	ldrh r2, [r4]
	ldr r0, _021AE8D4 ; =0x00001001
	cmp r2, r0
	bne _021AE732
	ldr r0, [r1, #0x18]
	mov r5, #0
	cmp r0, #0
	bls _021AE79C
_021AE716:
	ldr r0, [r1, #4]
	add r2, r0, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0x1c]
	ldrb r3, [r2, r5]
	ldr r2, [r1, #0x14]
	strb r3, [r2, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [r1, #0x18]
	cmp r5, r0
	blo _021AE716
	b _021AE79C
_021AE732:
	add r0, r0, #1
	cmp r2, r0
	bne _021AE79C
	ldr r0, [r1, #0x10]
	mov r5, #0
	cmp r0, #0
	bls _021AE79C
_021AE740:
	ldr r0, [r1, #4]
	add r2, r0, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0x20]
	ldrb r3, [r2, r5]
	ldr r2, [r1, #0x14]
	strb r3, [r2, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [r1, #0x10]
	cmp r5, r0
	blo _021AE740
	b _021AE79C
_021AE75C:
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r2, [r4, #0x54]
	lsl r1, r7, #0x10
	and r1, r2
	lsr r2, r1, #0x18
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r2, [r4, #0x54]
	lsl r1, r7, #8
	and r1, r2
	lsr r2, r1, #0x10
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r6, #4]
	add r1, r0, #1
	str r1, [r6, #4]
	ldr r1, [r4, #0x54]
	and r1, r7
	lsr r2, r1, #8
	ldr r1, [r6, #0x14]
	strb r2, [r1, r0]
	ldr r2, [r6, #4]
	add r0, r2, #1
	str r0, [r6, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r6, #0x14]
	strb r1, [r0, r2]
_021AE79C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [sp]
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r4, #0x58
	cmp r5, r0
	bge _021AE7B0
	b _021AE664
_021AE7B0:
	ldr r0, [sp, #4]
	ldr r4, _021AE8D0 ; =0x021B628C
	cmp r0, #0
	bne _021AE806
	ldr r0, [r4, #4]
	mov r2, #0xff
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x18
	and r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r3, r1, #0x18
	ldr r1, [r4, #0x14]
	strb r3, [r1, r0]
	ldr r0, [r4, #4]
	lsr r3, r2, #8
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r1, [sp, #8]
	lsr r2, r2, #0x10
	and r1, r3
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r3, r1, #0x10
	ldr r1, [r4, #0x14]
	strb r3, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r1, [sp, #8]
	and r1, r2
	lsl r1, r1, #0x10
	asr r2, r1, #0x18
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #8]
	b _021AE82E
_021AE806:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x14]
	mov r0, #0
	strb r0, [r1, r2]
	ldr r2, [r4, #4]
	add r1, r2, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0x14]
	strb r0, [r1, r2]
	ldr r2, [r4, #4]
	add r1, r2, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0x14]
	strb r0, [r1, r2]
	ldr r2, [r4, #4]
	add r1, r2, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0x14]
_021AE82E:
	strb r0, [r1, r2]
	ldr r0, [sp]
	mov r1, #4
	ldr r5, [r0]
	ldrsh r0, [r0, r1]
	mov r6, #0
	cmp r0, #0
	ble _021AE8CA
_021AE83E:
	add r0, r5, #0
	bl ovy257_21ae418
	add r7, r0, #0
	cmp r7, #4
	bls _021AE8B8
	ldrh r0, [r5]
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r0, r2
	bne _021AE86E
	add r0, r5, #0
	bl ovy257_21ae444
	mov r0, #1
	tst r0, r7
	beq _021AE8B8
	ldr r2, [r4, #4]
	mov r1, #0
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	b _021AE8B8
_021AE86E:
	add r1, r2, #1
	cmp r0, r1
	bne _021AE894
	ldr r0, [r4, #0x18]
	mov r1, #0
	cmp r0, #0
	bls _021AE8B8
_021AE87C:
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x14]
	add r1, r1, #1
	strb r3, [r2, r0]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blo _021AE87C
	b _021AE8B8
_021AE894:
	add r1, r2, #2
	cmp r0, r1
	bne _021AE8B8
	ldr r0, [r4, #0x10]
	mov r1, #0
	cmp r0, #0
	bls _021AE8B8
_021AE8A2:
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	ldr r2, [r4, #0x20]
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x14]
	add r1, r1, #1
	strb r3, [r2, r0]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blo _021AE8A2
_021AE8B8:
	add r0, r6, #1
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	ldr r0, [sp]
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r5, #0x58
	cmp r6, r0
	blt _021AE83E
_021AE8CA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AE8D0: .word 0x021B628C
_021AE8D4: .word 0x00001001
	thumb_func_end ovy257_21ae620

	thumb_func_start ovy257_21ae8d8
ovy257_21ae8d8: ; 0x021AE8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _021AEB50 ; =0x021B628C
	str r2, [sp]
	add r7, r1, #0
	ldr r1, [r4, #4]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #4]
	mov r0, #4
	mov r2, #0xff
	ldrsh r3, [r7, r0]
	lsl r2, r2, #8
	and r2, r3
	asr r3, r2, #8
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldrsh r3, [r7, r0]
	ldr r2, [r4, #0x14]
	strb r3, [r2, r1]
	ldr r1, [r7, #8]
	ldr r5, [r7]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldrsh r0, [r7, r0]
	cmp r0, #0
	bgt _021AE918
	b _021AEA86
_021AE918:
	ldr r0, _021AEB54 ; =0x00000201
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021AEB54 ; =0x00000201
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xff
	lsl r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0xff
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0xff
	lsl r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r0, #0xff
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
_021AE93C:
	ldrh r0, [r5]
	ldr r1, _021AEB58 ; =0x00008769
	cmp r0, r1
	bgt _021AE95C
	bge _021AE982
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bgt _021AE994
	ldr r1, _021AEB54 ; =0x00000201
	cmp r0, r1
	blt _021AE994
	beq _021AE96E
	ldr r1, [sp, #0x10]
	cmp r0, r1
	beq _021AE97E
	b _021AE994
_021AE95C:
	ldr r1, _021AEB5C ; =0x0000927C
	cmp r0, r1
	bgt _021AE966
	beq _021AE986
	b _021AE994
_021AE966:
	ldr r1, _021AEB60 ; =0x0000A005
	cmp r0, r1
	beq _021AE98C
	b _021AE994
_021AE96E:
	ldr r1, [r6, #0x3c]
	str r1, [r5, #0xc]
	ldr r0, [r6, #0x44]
	sub r0, r1, r0
	sub r0, r0, #2
	sub r0, r0, #6
_021AE97A:
	str r0, [r5, #0xc]
	b _021AE994
_021AE97E:
	ldr r0, [r6, #0x44]
	b _021AE97A
_021AE982:
	ldr r0, [r6, #8]
	b _021AE98E
_021AE986:
	ldr r0, [r6, #0x14]
	str r0, [r5, #0x54]
	b _021AE990
_021AE98C:
	ldr r0, [r6, #0x20]
_021AE98E:
	str r0, [r5, #0xc]
_021AE990:
	ldr r0, [r6, #0x2c]
	str r0, [sp, #4]
_021AE994:
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldrh r2, [r5]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	asr r2, r1, #8
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldrh r2, [r5]
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	mov r1, #0xff
	ldrh r2, [r5, #2]
	lsl r1, r1, #8
	and r1, r2
	asr r2, r1, #8
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldrh r2, [r5, #2]
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #4]
	ldr r1, [sp, #0x18]
	and r1, r2
	lsr r2, r1, #0x18
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #4]
	ldr r1, [sp, #0x14]
	and r1, r2
	lsr r2, r1, #0x10
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	mov r1, #0xff
	ldr r2, [r5, #4]
	lsl r1, r1, #8
	and r1, r2
	lsr r2, r1, #8
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #4]
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	add r0, r5, #0
	bl ovy257_21ae418
	cmp r0, #4
	bhi _021AEA2A
	add r0, r5, #0
	bl ovy257_21ae444
	b _021AEA6E
_021AEA2A:
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #0x54]
	ldr r1, [sp, #0x20]
	and r1, r2
	lsr r2, r1, #0x18
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #0x54]
	ldr r1, [sp, #0x1c]
	and r1, r2
	lsr r2, r1, #0x10
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	mov r1, #0xff
	ldr r2, [r5, #0x54]
	lsl r1, r1, #8
	and r1, r2
	lsr r2, r1, #8
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r2, [r5, #0x54]
	ldr r1, [r4, #0x14]
	strb r2, [r1, r0]
_021AEA6E:
	ldr r0, [sp, #8]
	add r5, #0x58
	add r0, r0, #1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _021AEA86
	b _021AE93C
_021AEA86:
	ldr r0, [sp]
	cmp r0, #0
	bne _021AEAD4
	ldr r1, _021AEB50 ; =0x021B628C
	ldr r3, [sp, #4]
	ldr r2, [r1, #4]
	add r0, r2, #1
	str r0, [r1, #4]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r3, r0
	lsr r4, r3, #0x18
	ldr r3, [r1, #0x14]
	strb r4, [r3, r2]
	ldr r2, [r1, #4]
	lsr r4, r0, #8
	add r3, r2, #1
	str r3, [r1, #4]
	ldr r3, [sp, #4]
	and r3, r4
	asr r4, r3, #0x10
	ldr r3, [r1, #0x14]
	strb r4, [r3, r2]
	ldr r2, [r1, #4]
	add r3, r2, #1
	str r3, [r1, #4]
	lsr r3, r0, #0x10
	ldr r0, [sp, #4]
	and r0, r3
	asr r3, r0, #8
	ldr r0, [r1, #0x14]
	strb r3, [r0, r2]
	ldr r2, [r1, #4]
	add r0, r2, #1
	str r0, [r1, #4]
	ldr r1, [r1, #0x14]
	ldr r0, [sp, #4]
	strb r0, [r1, r2]
	b _021AEB00
_021AEAD4:
	ldr r1, _021AEB50 ; =0x021B628C
	ldr r3, [r1, #4]
	add r0, r3, #1
	str r0, [r1, #4]
	ldr r2, [r1, #0x14]
	mov r0, #0
	strb r0, [r2, r3]
	ldr r3, [r1, #4]
	add r2, r3, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0x14]
	strb r0, [r2, r3]
	ldr r3, [r1, #4]
	add r2, r3, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0x14]
	strb r0, [r2, r3]
	ldr r3, [r1, #4]
	add r2, r3, #1
	str r2, [r1, #4]
	ldr r1, [r1, #0x14]
	strb r0, [r1, r3]
_021AEB00:
	mov r0, #4
	ldrsh r0, [r7, r0]
	mov r5, #0
	ldr r4, [r7]
	cmp r0, #0
	ble _021AEB4C
_021AEB0C:
	add r0, r4, #0
	bl ovy257_21ae418
	add r6, r0, #0
	cmp r6, #4
	bls _021AEB3C
	ldrh r1, [r4]
	ldr r0, _021AEB5C ; =0x0000927C
	cmp r1, r0
	beq _021AEB3C
	add r0, r4, #0
	bl ovy257_21ae444
	mov r0, #1
	tst r0, r6
	beq _021AEB3C
	ldr r0, _021AEB50 ; =0x021B628C
	ldr r1, _021AEB50 ; =0x021B628C
	ldr r0, [r0, #4]
	add r2, r0, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0x14]
	mov r1, #0
	strb r1, [r2, r0]
_021AEB3C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	mov r0, #4
	ldrsh r0, [r7, r0]
	add r4, #0x58
	cmp r5, r0
	blt _021AEB0C
_021AEB4C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AEB50: .word 0x021B628C
_021AEB54: .word 0x00000201
_021AEB58: .word 0x00008769
_021AEB5C: .word 0x0000927C
_021AEB60: .word 0x0000A005
	thumb_func_end ovy257_21ae8d8

	thumb_func_start ovy257_21aeb64
ovy257_21aeb64: ; 0x021AEB64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	ldr r1, _021AEDA8 ; =0x021B2588
	str r2, [sp, #4]
	ldrb r2, [r1]
	add r7, r0, #0
	add r0, sp, #0x14
	strb r2, [r0]
	ldrb r2, [r1, #1]
	str r3, [sp, #8]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r1, [r1, #4]
	mov r2, #0xff
	strb r1, [r0, #4]
	ldr r0, _021AEDAC ; =0x021B628C
	ldr r3, [r0, #4]
	add r1, r3, #1
	str r1, [r0, #4]
	ldr r1, [r0, #0x14]
	strb r2, [r1, r3]
	ldr r2, [r0, #4]
	add r1, r2, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0x14]
	mov r1, #0xe1
	strb r1, [r0, r2]
	mov r0, #2
	add r0, r0, #6
	add r0, #8
	str r0, [r7, #0x3c]
	mov r0, #0
	str r0, [sp, #0xc]
_021AEBAE:
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	mul r1, r0
	add r0, r7, r1
	mov r1, #4
	str r0, [sp, #0x10]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _021AEC48
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	beq _021AEC48
	ldr r0, [sp]
	cmp r0, #0
	beq _021AEBD4
	ldr r0, [sp, #0xc]
	cmp r0, #4
	beq _021AEBEA
_021AEBD4:
	ldr r0, [r7, #0x3c]
	mov r1, #4
	add r0, r0, #2
	add r2, r0, #4
	ldr r0, [sp, #0x10]
	str r2, [r7, #0x3c]
	ldrsh r1, [r0, r1]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	str r0, [r7, #0x3c]
_021AEBEA:
	ldr r0, [sp, #0x10]
	mov r1, #4
	ldr r4, [r0]
	ldrsh r0, [r0, r1]
	mov r5, #0
	cmp r0, #0
	ble _021AEC40
	add r6, r7, #0
	add r6, #0x3c
_021AEBFC:
	mov r0, #0
	str r0, [r4, #0x54]
	add r0, r4, #0
	bl ovy257_21ae418
	cmp r0, #4
	bls _021AEC32
	ldrh r2, [r4]
	ldr r1, _021AEDB0 ; =0x0000927C
	cmp r2, r1
	beq _021AEC32
	ldr r1, [r7, #0x3c]
	sub r1, #8
	str r1, [r4, #0x54]
	mov r1, #1
	tst r1, r0
	beq _021AEC20
	add r0, r0, #1
_021AEC20:
	ldr r1, [sp]
	cmp r1, #0
	beq _021AEC2C
	ldr r1, [sp, #0xc]
	cmp r1, #4
	beq _021AEC32
_021AEC2C:
	ldr r1, [r6]
	add r0, r1, r0
	str r0, [r6]
_021AEC32:
	ldr r1, [sp, #0x10]
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r5, r5, #1
	add r4, #0x58
	cmp r5, r0
	blt _021AEBFC
_021AEC40:
	ldr r1, [r7, #0x3c]
	ldr r0, [sp, #0x10]
	sub r1, #8
	str r1, [r0, #8]
_021AEC48:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _021AEBAE
	ldr r0, [sp]
	cmp r0, #0
	bne _021AEC7A
	ldr r1, [r7, #0x44]
	mov r0, #1
	tst r0, r1
	beq _021AEC64
	add r0, r1, #1
	str r0, [r7, #0x44]
_021AEC64:
	ldr r1, [r7, #0x3c]
	ldr r0, [r7, #0x44]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	str r1, [r7, #0x3c]
	cmp r1, r0
	blo _021AEC7A
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AEC7A:
	ldr r5, _021AEDAC ; =0x021B628C
	add r6, sp, #0x14
	ldr r0, [r5, #4]
	mov r4, #0
	add r1, r0, #1
	str r1, [r5, #4]
	mov r1, #0xff
	ldr r2, [r7, #0x3c]
	lsl r1, r1, #8
	and r1, r2
	lsl r1, r1, #0x10
	asr r2, r1, #0x18
	ldr r1, [r5, #0x14]
	strb r2, [r1, r0]
	ldr r2, [r5, #4]
	add r0, r2, #1
	str r0, [r5, #4]
	ldr r1, [r7, #0x3c]
	ldr r0, [r5, #0x14]
	strb r1, [r0, r2]
	add r0, r6, #0
	bl STD_GetStringLength
	cmp r0, #0
	ble _021AECC4
_021AECAC:
	ldr r0, [r5, #4]
	ldrsb r2, [r6, r4]
	add r1, r0, #1
	str r1, [r5, #4]
	ldr r1, [r5, #0x14]
	add r4, r4, #1
	strb r2, [r1, r0]
	add r0, r6, #0
	bl STD_GetStringLength
	cmp r4, r0
	blt _021AECAC
_021AECC4:
	ldr r2, _021AEDAC ; =0x021B628C
	mov r1, #0
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r4, [r2, #4]
	add r0, r4, #1
	str r0, [r2, #4]
	ldr r3, [r2, #0x14]
	mov r0, #0x4d
	strb r0, [r3, r4]
	ldr r4, [r2, #4]
	add r3, r4, #1
	str r3, [r2, #4]
	ldr r3, [r2, #0x14]
	strb r0, [r3, r4]
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r4, [r2, #4]
	mov r3, #0x2a
	add r0, r4, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r3, [r0, r4]
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r3, [r2, #4]
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r3, [r2, #4]
	mov r1, #8
	add r0, r3, #1
	str r0, [r2, #4]
	ldr r0, [r2, #0x14]
	strb r1, [r0, r3]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r7, #0
	bl ovy257_21ae8d8
	mov r0, #0x10
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021AED50
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0xc
	mov r2, #1
	bl ovy257_21ae8d8
_021AED50:
	mov r0, #0x1c
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021AED64
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x18
	mov r2, #1
	bl ovy257_21ae620
_021AED64:
	mov r0, #0x28
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021AED78
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x24
	mov r2, #1
	bl ovy257_21ae8d8
_021AED78:
	ldr r0, [sp]
	cmp r0, #0
	bne _021AEDA2
	add r0, r7, #0
	add r7, #0x30
	add r1, r7, #0
	mov r2, #1
	bl ovy257_21ae8d8
	ldr r4, _021AEDAC ; =0x021B628C
	ldr r0, [sp, #4]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	add r1, r2, r1
	ldr r2, [sp, #8]
	blx MI_CpuCopy
	ldr r1, [r4, #4]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r4, #4]
_021AEDA2:
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AEDA8: .word 0x021B2588
_021AEDAC: .word 0x021B628C
_021AEDB0: .word 0x0000927C
	thumb_func_end ovy257_21aeb64

	thumb_func_start ovy257_21aedb4
ovy257_21aedb4: ; 0x021AEDB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r5, _021AF0E4 ; =0x021B62E4
	ldr r0, _021AF0E8 ; =0x021B6BC4
	ldr r1, _021AF0EC ; =0x021B750C
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	strh r0, [r5, #0x10]
	ldr r1, _021AF0F0 ; =0x021B6384
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	strh r0, [r5, #0x1c]
	ldr r1, _021AF0F4 ; =0x021B67A4
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	strh r0, [r5, #0x28]
	ldr r1, _021AF0F8 ; =0x021B703C
	str r0, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r0, [r5, #0x34]
	mov r1, #1
	str r3, [sp, #8]
	str r0, [r5, #0x38]
	tst r2, r1
	beq _021AEDF2
	add r0, r1, #0
_021AEDF2:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r4, #0
	strh r4, [r5, #4]
	mov r6, #4
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	ldr r1, [r5]
	mul r0, r2
	mov r2, #0x58
	add r2, #0xb7
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #9
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF0FC ; =0x021B3D14
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #9
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5]
	add r0, r0, #1
	strh r0, [r5, #4]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	mov r2, #0x58
	add r2, #0xb8
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #0xb
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF100 ; =0x021B3D20
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #0xb
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	mov r3, #0x58
	ldr r1, [r5]
	add r0, r0, #1
	strh r0, [r5, #4]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	add r3, #0xc2
	mul r0, r2
	add r2, r1, r0
	strh r3, [r1, r0]
	mov r0, #5
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	mov r0, #0x48
	str r0, [r2, #0x10]
	mov r1, #1
	str r1, [r2, #0x14]
	str r4, [r2, #0x54]
	ldrsh r1, [r5, r6]
	mov r2, #0x58
	ldr r7, [r5]
	add r1, r1, #1
	strh r1, [r5, #4]
	ldrsh r1, [r5, r6]
	mul r2, r1
	mov r1, #0x48
	add r1, #0xd3
	strh r1, [r7, r2]
	add r3, r7, r2
	mov r1, #5
	strh r1, [r3, #2]
	mov r1, #1
	str r1, [r3, #4]
	strb r4, [r3, #8]
	strh r4, [r3, #0xa]
	str r4, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	str r4, [r3, #0x54]
	ldrsh r1, [r5, r6]
	mov r2, #0x58
	ldr r7, [r5]
	add r1, r1, #1
	strh r1, [r5, #4]
	ldrsh r1, [r5, r6]
	mul r2, r1
	mov r1, #0x48
	add r1, #0xe0
	strh r1, [r7, r2]
	add r3, r7, r2
	mov r1, #3
	strh r1, [r3, #2]
	mov r1, #1
	str r1, [r3, #4]
	strb r4, [r3, #8]
	mov r1, #2
	strh r1, [r3, #0xa]
	str r4, [r3, #0xc]
	str r4, [r3, #0x10]
	str r4, [r3, #0x14]
	str r4, [r3, #0x54]
	ldrsh r1, [r5, r6]
	add r1, r1, #1
	strh r1, [r5, #4]
	ldr r1, _021AF104 ; =0x021B628C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021AEF2A
	ldrsh r3, [r5, r6]
	mov r1, #0x58
	ldr r2, [r5]
	mul r1, r3
	add r0, #0xe9
	strh r0, [r2, r1]
	add r7, r2, r1
	mov r0, #2
	strh r0, [r7, #2]
	ldr r0, _021AF104 ; =0x021B628C
	ldr r1, _021AF108 ; =0x021B62C4
	ldr r2, [r0, #0xc]
	add r0, r7, #0
	str r2, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r7, #0x14]
	add r0, #0x36
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5, #4]
_021AEF2A:
	mov r1, #4
	ldrsh r2, [r5, r1]
	mov r1, #0x58
	ldr r0, [r5]
	add r3, r2, #0
	mul r3, r1
	mov r1, #0x58
	add r1, #0xda
	strh r1, [r0, r3]
	add r6, r0, r3
	mov r0, #2
	strh r0, [r6, #2]
	mov r0, #0x14
	str r0, [r6, #4]
	mov r4, #0
	strb r4, [r6, #8]
	strh r4, [r6, #0xa]
	str r4, [r6, #0xc]
	str r4, [r6, #0x10]
	add r0, r6, #0
	ldr r1, _021AF10C ; =0x021B62B0
	str r4, [r6, #0x14]
	add r0, #0x36
	mov r2, #0x14
	bl sub_0207F7CC
	str r4, [r6, #0x54]
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r1, #4
	mov r6, #0x10
	add r0, r0, #1
	strh r0, [r5, #4]
	ldrsh r2, [r5, r1]
	ldr r0, [r5]
	mov r1, #0x58
	add r3, r2, #0
	mul r3, r1
	ldr r2, _021AF110 ; =0x00000213
	add r1, r0, r3
	strh r2, [r0, r3]
	mov r0, #3
	strh r0, [r1, #2]
	mov r0, #1
	str r0, [r1, #4]
	strb r4, [r1, #8]
	mov r0, #2
	strh r0, [r1, #0xa]
	str r4, [r1, #0xc]
	str r4, [r1, #0x10]
	str r4, [r1, #0x14]
	str r4, [r1, #0x54]
	mov r0, #4
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0xc]
	add r0, r0, #1
	strh r0, [r5, #4]
	strh r4, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	mov r2, #9
	lsl r2, r2, #0xc
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #7
	strh r0, [r7, #2]
	mov r0, #4
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r1, r7, #0
	ldr r0, _021AF114 ; =0x021B3D2C
	str r4, [r7, #0x14]
	add r1, #0x18
	mov r2, #4
	blx MI_CpuCopy
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	mov r2, #9
	lsl r2, r2, #0xc
	add r2, r2, #3
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #0x14
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF10C ; =0x021B62B0
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #0x14
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	mov r2, #9
	lsl r2, r2, #0xc
	add r2, r2, #4
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #0x14
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF10C ; =0x021B62B0
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #0x14
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	ldr r3, _021AF118 ; =0x00009101
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	strh r3, [r1, r0]
	add r2, r1, r0
	mov r0, #7
	strh r0, [r2, #2]
	mov r0, #4
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r0, #1
	strb r0, [r2, #0x18]
	mov r0, #2
	strb r0, [r2, #0x19]
	mov r0, #3
	strb r0, [r2, #0x1a]
	strb r4, [r2, #0x1b]
	str r4, [r2, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	ldr r3, _021AF11C ; =0x0000927C
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	add r2, r1, r0
	strh r3, [r1, r0]
	mov r0, #7
	strh r0, [r2, #2]
	str r4, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r0, #1
	strb r0, [r2, #0x18]
	mov r0, #2
	strb r0, [r2, #0x19]
	mov r0, #3
	strb r0, [r2, #0x1a]
	strb r4, [r2, #0x1b]
	str r4, [r2, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	mov r2, #0x14
	lsl r2, r2, #0xb
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #7
	strh r0, [r7, #2]
	mov r0, #4
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r1, r7, #0
	ldr r0, _021AF120 ; =0x021B3D34
	str r4, [r7, #0x14]
	add r1, #0x18
	mov r2, #4
	blx MI_CpuCopy
	str r4, [r7, #0x54]
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0xc]
	ldr r7, _021AF124 ; =0x0000A001
	b _021AF128
	.align 2, 0
_021AF0E4: .word 0x021B62E4
_021AF0E8: .word 0x021B6BC4
_021AF0EC: .word 0x021B750C
_021AF0F0: .word 0x021B6384
_021AF0F4: .word 0x021B67A4
_021AF0F8: .word 0x021B703C
_021AF0FC: .word 0x021B3D14
_021AF100: .word 0x021B3D20
_021AF104: .word 0x021B628C
_021AF108: .word 0x021B62C4
_021AF10C: .word 0x021B62B0
_021AF110: .word 0x00000213
_021AF114: .word 0x021B3D2C
_021AF118: .word 0x00009101
_021AF11C: .word 0x0000927C
_021AF120: .word 0x021B3D34
_021AF124: .word 0x0000A001
_021AF128:
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r2, [r5, r6]
	mov r0, #0x58
	mul r0, r2
	add r2, r1, r0
	strh r7, [r1, r0]
	mov r0, #3
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r0, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	str r4, [r2, #0x54]
	ldrsh r0, [r5, r6]
	ldr r2, [r5, #0xc]
	mov r1, #0x58
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r0, [r5, r6]
	mul r1, r0
	add r0, r7, #1
	strh r0, [r2, r1]
	add r3, r2, r1
	mov r0, #4
	strh r0, [r3, #2]
	mov r0, #1
	str r0, [r3, #4]
	strb r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [sp]
	mov r1, #0x58
	str r0, [r3, #0xc]
	str r4, [r3, #0x10]
	str r4, [r3, #0x14]
	str r4, [r3, #0x54]
	ldrsh r0, [r5, r6]
	add r3, r7, #2
	ldr r2, [r5, #0xc]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrsh r0, [r5, r6]
	mov r7, #0x1c
	mul r1, r0
	add r0, r2, r1
	strh r3, [r2, r1]
	mov r1, #4
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #4]
	strb r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r1, [sp, #4]
	str r1, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x54]
	ldrsh r0, [r5, r6]
	ldr r3, [r5, #0x18]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	strh r4, [r5, #0x1c]
	ldrsh r1, [r5, r7]
	mov r0, #0x58
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021AF508 ; =0x021B632C
	add r6, r3, r2
	ldrh r1, [r0]
	strh r1, [r3, r2]
	ldrh r1, [r0, #2]
	strh r1, [r6, #2]
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	mov r1, #8
	ldrsb r1, [r0, r1]
	strb r1, [r6, #8]
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	strh r1, [r6, #0xa]
	ldr r1, [r0, #0xc]
	str r1, [r6, #0xc]
	ldr r1, [r0, #0x10]
	str r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, _021AF50C ; =0x021B6362
	str r0, [r6, #0x14]
	add r0, r6, #0
	ldr r2, [r6, #4]
	add r0, #0x36
	bl sub_0207F7CC
	str r4, [r6, #0x54]
	ldrsh r0, [r5, r7]
	add r3, r5, #0
	add r3, #0x1c
	add r0, r0, #1
	strh r0, [r5, #0x1c]
	ldr r0, _021AF510 ; =0x021B628C
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021AF224
	ldrsh r2, [r5, r7]
	mov r0, #0x58
	ldr r1, [r5, #0x18]
	mul r0, r2
	ldr r6, _021AF514 ; =0x00001001
	add r2, r1, r0
	strh r6, [r1, r0]
	mov r0, #7
	strh r0, [r2, #2]
	ldr r0, _021AF510 ; =0x021B628C
	ldr r0, [r0, #0x18]
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	str r4, [r2, #0x54]
	ldrsh r0, [r3, r4]
	add r0, r0, #1
	strh r0, [r3]
_021AF224:
	ldr r4, _021AF510 ; =0x021B628C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021AF258
	mov r3, #0x1c
	ldrsh r2, [r5, r3]
	mov r0, #0x58
	ldr r1, [r5, #0x18]
	mul r0, r2
	ldr r6, _021AF518 ; =0x00001002
	add r2, r1, r0
	strh r6, [r1, r0]
	mov r0, #7
	strh r0, [r2, #2]
	ldr r0, [r4, #0x10]
	str r0, [r2, #4]
	mov r0, #0
	strb r0, [r2, #8]
	strh r0, [r2, #0xa]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	str r0, [r2, #0x54]
	ldrsh r0, [r5, r3]
	add r0, r0, #1
	strh r0, [r5, #0x1c]
_021AF258:
	mov r4, #0
	strh r4, [r5, #0x28]
	mov r0, #0x28
	ldrsh r2, [r5, r0]
	ldr r1, [r5, #0x24]
	mov r6, #0x58
	add r0, r2, #0
	mul r0, r6
	mov r2, #1
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #4
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF51C ; =0x021B3D3C
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #4
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x24]
	add r0, r0, #1
	strh r0, [r5, #0x28]
	mov r0, #0x28
	ldrsh r2, [r5, r0]
	add r0, r2, #0
	mul r0, r6
	mov r2, #2
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #7
	strh r0, [r7, #2]
	mov r0, #4
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r1, r7, #0
	ldr r0, _021AF520 ; =0x021B3D34
	str r4, [r7, #0x14]
	add r1, #0x18
	mov r2, #4
	blx MI_CpuCopy
	str r4, [r7, #0x54]
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x24]
	add r0, r0, #1
	strh r0, [r5, #0x28]
	mov r0, #0x28
	ldrsh r2, [r5, r0]
	add r0, r2, #0
	mov r2, #4
	mul r0, r6
	lsl r2, r2, #0xa
	strh r2, [r1, r0]
	add r7, r1, r0
	mov r0, #2
	strh r0, [r7, #2]
	mov r0, #0x12
	str r0, [r7, #4]
	strb r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	add r0, r7, #0
	ldr r1, _021AF524 ; =0x021B3D40
	str r4, [r7, #0x14]
	add r0, #0x36
	mov r2, #0x12
	bl sub_0207F7CC
	str r4, [r7, #0x54]
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	mov r3, #0x34
	ldr r1, [r5, #0x30]
	add r0, r0, #1
	strh r0, [r5, #0x28]
	strh r4, [r5, #0x34]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	add r3, #0xcf
	add r0, r2, #0
	mul r0, r6
	strh r3, [r1, r0]
	add r2, r1, r0
	mov r0, #3
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	mov r3, #0x34
	strb r4, [r2, #8]
	mov r0, #6
	strh r0, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	str r4, [r2, #0x54]
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x30]
	add r3, #0xe6
	add r0, r0, #1
	strh r0, [r5, #0x34]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	add r0, r2, #0
	mul r0, r6
	strh r3, [r1, r0]
	add r2, r1, r0
	mov r0, #5
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	mov r3, #0x48
	str r3, [r2, #0x10]
	str r0, [r2, #0x14]
	str r4, [r2, #0x54]
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	ldr r7, [r5, #0x30]
	add r0, r0, #1
	strh r0, [r5, #0x34]
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	add r1, r0, #0
	mov r0, #0x48
	mul r1, r6
	add r0, #0xd3
	strh r0, [r7, r1]
	add r2, r7, r1
	mov r0, #5
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	str r3, [r2, #0x10]
	str r0, [r2, #0x14]
	str r4, [r2, #0x54]
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x30]
	add r3, #0xe0
	add r0, r0, #1
	strh r0, [r5, #0x34]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	add r0, r2, #0
	mul r0, r6
	add r2, r1, r0
	strh r3, [r1, r0]
	mov r0, #3
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [r2, #4]
	strb r4, [r2, #8]
	mov r0, #2
	strh r0, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	str r4, [r2, #0x54]
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #0x34]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021AF4BE
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _021AF3DA
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AF3DA:
	add r2, r0, #0
	ldr r3, [r5]
	mul r2, r6
	ldr r1, _021AF528 ; =0x00008769
	add r0, r3, r2
	strh r1, [r3, r2]
	mov r1, #4
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #4]
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _021AF45A
	ldr r2, _021AF510 ; =0x021B628C
	ldr r0, _021AF508 ; =0x021B632C
	ldr r1, [r2, #0x10]
	ldr r3, [r0, #4]
	ldr r2, [r2, #0x18]
	add r2, r3, r2
	add r1, r1, r2
	beq _021AF45A
	ldr r1, [r5, #0xc]
	lsl r2, r6, #2
	ldr r4, _021AF52C ; =0x0000927C
	lsl r3, r6, #2
	add r2, r1, r2
	strh r4, [r1, r3]
	mov r1, #7
	strh r1, [r2, #2]
	mov r1, #6
	str r1, [r2, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021AF42E
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF42E:
	ldr r4, _021AF510 ; =0x021B628C
	ldr r3, _021AF508 ; =0x021B632C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021AF43E
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF43E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021AF44A
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF44A:
	ldr r6, [r3, #4]
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r3, r6, r3
	ldr r1, [r2, #4]
	add r0, r0, r3
	add r0, r1, r0
	str r0, [r2, #4]
_021AF45A:
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _021AF482
	mov r2, #0x10
	ldrsh r3, [r5, r2]
	ldr r0, [r5, #0xc]
	mov r1, #0x58
	add r4, r3, #0
	mul r4, r1
	ldr r3, _021AF530 ; =0x0000A005
	add r1, r0, r4
	strh r3, [r0, r4]
	mov r0, #4
	strh r0, [r1, #2]
	mov r0, #1
	str r0, [r1, #4]
	ldrsh r0, [r5, r2]
	add r0, r0, #1
	strh r0, [r5, #0x10]
_021AF482:
	mov r4, #0x34
	ldrsh r0, [r5, r4]
	ldr r6, [r5, #0x30]
	mov r3, #0x58
	add r1, r0, #0
	mul r1, r3
	ldr r2, _021AF534 ; =0x00000201
	add r0, r6, r1
	strh r2, [r6, r1]
	mov r1, #4
	strh r1, [r0, #2]
	mov r6, #1
	str r6, [r0, #4]
	ldrsh r0, [r5, r4]
	add r2, r2, #1
	add r0, r0, #1
	strh r0, [r5, #0x34]
	ldrsh r6, [r5, r4]
	ldr r0, [r5, #0x30]
	mul r3, r6
	add r6, r0, r3
	strh r2, [r0, r3]
	strh r1, [r6, #2]
	mov r0, #1
	str r0, [r6, #4]
	ldrsh r0, [r5, r4]
	add r0, r0, #1
	strh r0, [r5, #0x34]
	ldr r0, [sp, #0x28]
	b _021AF5E0
_021AF4BE:
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _021AF4CC
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AF4CC:
	add r2, r0, #0
	ldr r3, [r5]
	mul r2, r6
	ldr r1, _021AF528 ; =0x00008769
	add r0, r3, r2
	strh r1, [r3, r2]
	mov r1, #4
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #4]
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _021AF57E
	ldr r2, _021AF510 ; =0x021B628C
	ldr r0, _021AF508 ; =0x021B632C
	ldr r1, [r2, #0x10]
	ldr r3, [r0, #4]
	ldr r2, [r2, #0x18]
	add r2, r3, r2
	add r1, r1, r2
	beq _021AF57E
	ldr r1, [r5, #0xc]
	lsl r2, r6, #2
	ldr r4, _021AF52C ; =0x0000927C
	b _021AF538
	.align 2, 0
_021AF508: .word 0x021B632C
_021AF50C: .word 0x021B6362
_021AF510: .word 0x021B628C
_021AF514: .word 0x00001001
_021AF518: .word 0x00001002
_021AF51C: .word 0x021B3D3C
_021AF520: .word 0x021B3D34
_021AF524: .word 0x021B3D40
_021AF528: .word 0x00008769
_021AF52C: .word 0x0000927C
_021AF530: .word 0x0000A005
_021AF534: .word 0x00000201
_021AF538:
	lsl r3, r6, #2
	add r2, r1, r2
	strh r4, [r1, r3]
	mov r1, #7
	strh r1, [r2, #2]
	mov r1, #6
	str r1, [r2, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021AF552
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF552:
	ldr r4, _021AF64C ; =0x021B628C
	ldr r3, _021AF650 ; =0x021B632C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021AF562
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF562:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021AF56E
	ldr r0, [r2, #4]
	add r0, #0xc
	str r0, [r2, #4]
_021AF56E:
	ldr r6, [r3, #4]
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r3, r6, r3
	ldr r1, [r2, #4]
	add r0, r0, r3
	add r0, r1, r0
	str r0, [r2, #4]
_021AF57E:
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _021AF5A6
	mov r2, #0x10
	ldrsh r3, [r5, r2]
	ldr r0, [r5, #0xc]
	mov r1, #0x58
	add r4, r3, #0
	mul r4, r1
	ldr r3, _021AF654 ; =0x0000A005
	add r1, r0, r4
	strh r3, [r0, r4]
	mov r0, #4
	strh r0, [r1, #2]
	mov r0, #1
	str r0, [r1, #4]
	ldrsh r0, [r5, r2]
	add r0, r0, #1
	strh r0, [r5, #0x10]
_021AF5A6:
	mov r4, #0x34
	ldrsh r0, [r5, r4]
	ldr r6, [r5, #0x30]
	mov r3, #0x58
	add r1, r0, #0
	mul r1, r3
	ldr r2, _021AF658 ; =0x00000201
	add r0, r6, r1
	strh r2, [r6, r1]
	mov r1, #4
	strh r1, [r0, #2]
	mov r6, #1
	str r6, [r0, #4]
	ldrsh r0, [r5, r4]
	add r2, r2, #1
	add r0, r0, #1
	strh r0, [r5, #0x34]
	ldrsh r6, [r5, r4]
	ldr r0, [r5, #0x30]
	mul r3, r6
	add r6, r0, r3
	strh r2, [r0, r3]
	strh r1, [r6, #2]
	mov r0, #1
	str r0, [r6, #4]
	ldrsh r0, [r5, r4]
	add r0, r0, #1
	strh r0, [r5, #0x34]
	mov r0, #0
_021AF5E0:
	str r0, [r5, #0x44]
	ldr r4, _021AF64C ; =0x021B628C
	mov r1, #0xff
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	ldr r2, [r4, #4]
	mov r1, #0xd8
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, r2]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021AF61A
	ldr r2, [sp, #8]
	add r0, r5, #0
	ldr r3, [sp, #0x28]
	mov r1, #0
	mov r5, #0
	bl ovy257_21aeb64
	cmp r0, #0
	bne _021AF630
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AF61A:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x28]
	add r0, r5, #0
	mov r1, #1
	bl ovy257_21aeb64
	cmp r0, #0
	bne _021AF630
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AF630:
	ldr r2, [r4, #4]
	mov r0, #1
	and r0, r2
	cmp r0, #1
	bne _021AF644
	add r0, r2, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	mov r1, #0
	strb r1, [r0, r2]
_021AF644:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AF64C: .word 0x021B628C
_021AF650: .word 0x021B632C
_021AF654: .word 0x0000A005
_021AF658: .word 0x00000201
	thumb_func_end ovy257_21aedb4

	thumb_func_start ovy257_21af65c
ovy257_21af65c: ; 0x021AF65C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, _021AF730 ; =0x021B628C
	add r6, r2, #0
	str r0, [r1, #0x14]
	mov r1, #1
	ldr r0, _021AF734 ; =0x021B632C
	lsl r1, r1, #0xc
	strh r1, [r0]
	mov r1, #7
	strh r1, [r0, #2]
	mov r1, #0x1c
	add r7, r3, #0
	str r1, [r0, #4]
	cmp r1, #0x1e
	bls _021AF682
	mov r1, #0x1e
	str r1, [r0, #4]
_021AF682:
	ldr r2, _021AF734 ; =0x021B632C
	mov r4, #0
	strb r4, [r2, #8]
	strh r4, [r2, #0xa]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	ldr r0, _021AF738 ; =0x021B6362
	ldr r2, [r2, #4]
	mov r1, #0
	blx MI_CpuFill8
	str r4, [sp, #4]
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _021AF6AA
	ldr r0, _021AF73C ; =0x02FFE230
	ldr r0, [r0]
	str r0, [sp, #4]
_021AF6AA:
	add r4, sp, #8
	add r0, sp, #4
	add r1, r4, #0
	mov r2, #4
	blx MI_CpuCopy8
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0, #8]
	add r0, r4, #0
	bl ovy257_21ae3fc
	ldr r0, _021AF730 ; =0x021B628C
	ldr r0, [r0]
	cmp r0, #0
	bne _021AF6E2
	bl ovy257_21ae3b0
	cmp r0, #0
	bne _021AF6E2
	mov r4, #5
_021AF6D4:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	bl ovy257_21ae3b0
	cmp r0, #0
	beq _021AF6D4
_021AF6E2:
	ldr r0, _021AF730 ; =0x021B628C
	mov r2, #0
	str r2, [r0, #4]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	str r0, [sp]
	bne _021AF704
	lsl r0, r5, #0x10
	lsl r1, r6, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r3, r7, #0
	bl ovy257_21aedb4
	cmp r0, #1
	beq _021AF71C
	b _021AF718
_021AF704:
	lsl r0, r5, #0x10
	lsl r1, r6, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	mov r2, #1
	add r3, r7, #0
	bl ovy257_21aedb4
	cmp r0, #1
	beq _021AF71C
_021AF718:
	bl OS_Terminate
_021AF71C:
	ldr r0, _021AF730 ; =0x021B628C
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x10]
	str r1, [r0]
	ldr r0, [r0, #4]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AF730: .word 0x021B628C
_021AF734: .word 0x021B632C
_021AF738: .word 0x021B6362
_021AF73C: .word 0x02FFE230
	thumb_func_end ovy257_21af65c
_021AF740:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x04, 0x06, 0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x04, 0x06, 0x08
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00
	.byte 0x49, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x8F, 0x00, 0x00, 0x00
	.byte 0x9D, 0x00, 0x00, 0x00, 0xAD, 0x00, 0x00, 0x00, 0xBE, 0x00, 0x00, 0x00, 0xD1, 0x00, 0x00, 0x00
	.byte 0xE6, 0x00, 0x00, 0x00, 0xFD, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00
	.byte 0x51, 0x01, 0x00, 0x00, 0x73, 0x01, 0x00, 0x00, 0x98, 0x01, 0x00, 0x00, 0xC1, 0x01, 0x00, 0x00
	.byte 0xEE, 0x01, 0x00, 0x00, 0x20, 0x02, 0x00, 0x00, 0x56, 0x02, 0x00, 0x00, 0x92, 0x02, 0x00, 0x00
	.byte 0xD4, 0x02, 0x00, 0x00, 0x1C, 0x03, 0x00, 0x00, 0x6C, 0x03, 0x00, 0x00, 0xC3, 0x03, 0x00, 0x00
	.byte 0x24, 0x04, 0x00, 0x00, 0x8E, 0x04, 0x00, 0x00, 0x02, 0x05, 0x00, 0x00, 0x83, 0x05, 0x00, 0x00
	.byte 0x10, 0x06, 0x00, 0x00, 0xAB, 0x06, 0x00, 0x00, 0x56, 0x07, 0x00, 0x00, 0x12, 0x08, 0x00, 0x00
	.byte 0xE0, 0x08, 0x00, 0x00, 0xC3, 0x09, 0x00, 0x00, 0xBD, 0x0A, 0x00, 0x00, 0xD0, 0x0B, 0x00, 0x00
	.byte 0xFF, 0x0C, 0x00, 0x00, 0x4C, 0x0E, 0x00, 0x00, 0xBA, 0x0F, 0x00, 0x00, 0x4C, 0x11, 0x00, 0x00
	.byte 0x07, 0x13, 0x00, 0x00, 0xEE, 0x14, 0x00, 0x00, 0x06, 0x17, 0x00, 0x00, 0x54, 0x19, 0x00, 0x00
	.byte 0xDC, 0x1B, 0x00, 0x00, 0xA5, 0x1E, 0x00, 0x00, 0xB6, 0x21, 0x00, 0x00, 0x15, 0x25, 0x00, 0x00
	.byte 0xCA, 0x28, 0x00, 0x00, 0xDF, 0x2C, 0x00, 0x00, 0x5B, 0x31, 0x00, 0x00, 0x4B, 0x36, 0x00, 0x00
	.byte 0xB9, 0x3B, 0x00, 0x00, 0xB2, 0x41, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0x7E, 0x4F, 0x00, 0x00
	.byte 0x71, 0x57, 0x00, 0x00, 0x2F, 0x60, 0x00, 0x00, 0xCE, 0x69, 0x00, 0x00, 0x62, 0x74, 0x00, 0x00
	.byte 0xFF, 0x7F, 0x00, 0x00, 0x01, 0x01, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x00, 0x09, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x09, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x06, 0x06, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x09, 0x01, 0x01, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x09, 0x10, 0x10, 0x03
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x09, 0x10, 0x10, 0x10, 0x10
	.byte 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x10, 0x10, 0x10, 0x10
	.byte 0x06, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x10, 0x10, 0x06
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x04, 0x04, 0x06
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x14, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x12, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x15
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x10, 0x00, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x15, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x10, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0B, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x50, 0x00, 0x60, 0x00, 0x70, 0x00, 0x80, 0x00, 0x90, 0x00, 0xA0, 0x00, 0xB0
	.byte 0x00, 0xC0, 0x00, 0x00, 0x21, 0xC3, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xC5, 0x19, 0x02
	.byte 0xCD, 0xC5, 0x19, 0x02, 0x11, 0xC7, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x79, 0xC7, 0x19, 0x02
	.byte 0x99, 0xC7, 0x19, 0x02, 0xC1, 0xC8, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x31, 0xCA, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x29, 0xCC, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x19, 0x1B, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x59, 0xBB, 0x19, 0x02, 0x5D, 0xBB, 0x19, 0x02, 0x61, 0xBB, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0D, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x04, 0x6E, 0x10, 0x01
	.byte 0x00, 0x00, 0x01, 0x20, 0x2C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x01, 0xF0, 0xFF
	.byte 0x0F, 0xFF, 0xFF, 0xF0, 0xFF, 0x0F, 0x03, 0x07, 0x0B, 0x0E, 0x11, 0x15, 0x18, 0x20, 0x20, 0xA8
	.byte 0xC0, 0xE8, 0x00, 0x68, 0xA0, 0xD8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x08, 0x18, 0xB8, 0xE8, 0x18
	.byte 0x28, 0xB8, 0xF0, 0xFF, 0x00, 0x00, 0x00, 0x28, 0x40, 0xC0, 0xFF, 0x40, 0x48, 0xC8, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x48, 0x58, 0xC8, 0xFF, 0x58, 0x68, 0xD0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x08
	.byte 0x28, 0x10, 0x48, 0x20, 0x4D, 0x00, 0x40, 0x4D, 0xA0, 0x00, 0x30, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x10, 0x00, 0x00, 0x01, 0x00, 0x10, 0x13, 0x1C, 0x13, 0x13, 0x1C, 0x1C, 0x73, 0x4E
	.byte 0x9C, 0x73, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x98, 0xA8, 0x60, 0x70
	.byte 0x98, 0xA8, 0x70, 0x80, 0x98, 0xA8, 0x80, 0x90, 0x98, 0xA8, 0x90, 0xA0, 0x98, 0xA8, 0xA0, 0xB0
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x04, 0x1C, 0xA8, 0xC0, 0x2C, 0x44
	.byte 0xA8, 0xC0, 0x54, 0x6C, 0xA8, 0xC0, 0x7C, 0x94, 0xA8, 0xC0, 0xBC, 0xD4, 0xA8, 0xC0, 0xE0, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0x98, 0xA8, 0x08, 0x18, 0x98, 0xA8, 0x18, 0x28, 0x98, 0xA8, 0x28, 0x38
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0xA0, 0x00, 0x88, 0x00, 0xA0, 0x00, 0x10, 0x00, 0xA0, 0x00, 0x88, 0x00, 0xA0, 0x00
	.byte 0xA8, 0xC0, 0xE0, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0xB1, 0x1E, 0x0C, 0x01, 0x00, 0x0A, 0x14, 0x1E
	.byte 0x01, 0x00, 0x00, 0x00, 0x0F, 0x17, 0x12, 0x1C, 0x1A, 0x27, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x20, 0xB0, 0x60, 0xB0, 0xA0, 0xB0
	.byte 0xE0, 0xB0, 0x70, 0x19, 0x78, 0x3B, 0x80, 0x5D, 0x88, 0x7F, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00
	.byte 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x1A, 0x1B, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x1A, 0x1B, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x05, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF2, 0x1A, 0x1B, 0x02, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xF2, 0x1A, 0x1B, 0x02, 0x02, 0x00, 0x00, 0x00, 0xA8, 0xAC, 0x10, 0x14, 0x8E, 0xC0, 0x00, 0x2F
	.byte 0x81, 0x8D, 0x00, 0x25, 0x9B, 0xC0, 0x30, 0x40, 0xA8, 0xAC, 0xE8, 0xEC, 0x8E, 0xC0, 0xD0, 0xFF
	.byte 0x9B, 0xC0, 0xC0, 0xCF, 0x81, 0x90, 0xD9, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x1B, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x1B, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x1B, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x1A, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xBA, 0x1A, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xE2, 0x1A, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0xDA, 0x1A, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x3A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x1D, 0x1B, 0x02, 0x04, 0x00, 0x00, 0x00, 0x38, 0x1C, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x60, 0x1D, 0x1B, 0x02, 0x04, 0x00, 0x00, 0x00, 0x38, 0x1C, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xC0, 0x1D, 0x1B, 0x02, 0x04, 0x00, 0x00, 0x00, 0x38, 0x1C, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x20, 0x1E, 0x1B, 0x02, 0x04, 0x00, 0x00, 0x00, 0x38, 0x1C, 0x1B, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x40, 0x1B, 0x1B, 0x02, 0x02, 0x00, 0x00, 0x00, 0x20, 0x1B, 0x1B, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF4, 0x1E, 0x1B, 0x02, 0x06, 0x00, 0x00, 0x00, 0x90, 0x1D, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x3C, 0x1F, 0x1B, 0x02, 0x06, 0x00, 0x00, 0x00, 0x90, 0x1D, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x84, 0x1F, 0x1B, 0x02, 0x06, 0x00, 0x00, 0x00, 0x90, 0x1D, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xCC, 0x1F, 0x1B, 0x02, 0x06, 0x00, 0x00, 0x00, 0x90, 0x1D, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x64, 0x21, 0x1B, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xB4, 0x1E, 0x1B, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x7C, 0x1C, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00, 0x50, 0x1E, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xA0, 0x1C, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00, 0x50, 0x1E, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xC4, 0x1C, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00, 0x50, 0x1E, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xE8, 0x1C, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00, 0x50, 0x1E, 0x1B, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x0C, 0x1D, 0x1B, 0x02, 0x03, 0x00, 0x00, 0x00, 0x30, 0x1B, 0x1B, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x00, 0x01, 0x03, 0x02, 0x00, 0x02, 0x01, 0x03
	.byte 0x00, 0x02, 0x03, 0x01, 0x00, 0x03, 0x01, 0x02, 0x00, 0x03, 0x02, 0x01, 0x01, 0x00, 0x02, 0x03
	.byte 0x01, 0x00, 0x03, 0x02, 0x01, 0x02, 0x00, 0x03, 0x01, 0x02, 0x03, 0x00, 0x01, 0x03, 0x00, 0x02
	.byte 0x01, 0x03, 0x02, 0x00, 0x02, 0x00, 0x01, 0x03, 0x02, 0x00, 0x03, 0x01, 0x02, 0x01, 0x00, 0x03
	.byte 0x02, 0x01, 0x03, 0x00, 0x02, 0x03, 0x00, 0x01, 0x02, 0x03, 0x01, 0x00, 0x03, 0x00, 0x01, 0x02
	.byte 0x03, 0x00, 0x02, 0x01, 0x03, 0x01, 0x00, 0x02, 0x03, 0x01, 0x02, 0x00, 0x03, 0x02, 0x01, 0x00
	.byte 0x03, 0x02, 0x00, 0x01, 0xE9, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00
	.byte 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x10, 0x00, 0x00, 0x20, 0xF0, 0xFF, 0x00, 0xE0, 0x0F, 0x00
	.byte 0x00, 0x40, 0x10, 0x00, 0x00, 0x70, 0xF1, 0xFF, 0x00, 0x90, 0x0E, 0x00, 0x00, 0xA0, 0x0F, 0x00
	.byte 0x00, 0x80, 0xF3, 0xFF, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0xC0, 0xFE, 0xFF, 0x00, 0x90, 0xFA, 0xFF, 0x00, 0xB0, 0xFF, 0xFF, 0x00, 0x80, 0xFD, 0xFF
	.byte 0x00, 0xD0, 0x05, 0x00, 0x00, 0xB0, 0xFF, 0xFF, 0x00, 0x40, 0xFC, 0xFF, 0x20, 0x00, 0x40, 0x00
	.byte 0x80, 0x00, 0x80, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x33, 0x00, 0x34, 0x00, 0x36, 0x00
	.byte 0x4A, 0x00, 0x32, 0x00, 0xC0, 0x00, 0x32, 0x00, 0xC0, 0x00, 0x90, 0x00, 0x4A, 0x00, 0x90, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x03, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x58, 0x58, 0xB8, 0xB8
	.byte 0x48, 0xC8, 0x48, 0xC8, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x02, 0x00, 0x80, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x0D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x70, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0A, 0x06, 0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x50, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x02, 0x00, 0x80, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x45, 0x78, 0x69, 0x66, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x02, 0x04, 0x08, 0x00, 0x01, 0x00, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x61, 0x6D, 0x65, 0x72, 0x61, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x2E, 0x63, 0x00
	.byte 0x64, 0x72, 0x61, 0x77, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x63, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x61, 0x6D, 0x65, 0x72, 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x6F, 0x64, 0x65, 0x20, 0x43, 0x54, 0x44, 0x4D, 0x5F, 0x53, 0x49
	.byte 0x4E, 0x47, 0x4C, 0x45, 0x20, 0x69, 0x73, 0x20, 0x6E, 0x6F, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6F
	.byte 0x72, 0x74, 0x21, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x6F, 0x6D
	.byte 0x6D, 0x2E, 0x63, 0x00, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x74, 0x61, 0x6C, 0x6B, 0x2E, 0x63, 0x00
	.byte 0x46, 0x7E, 0xBA, 0x81, 0x46, 0x7E, 0x43, 0x7E, 0x6E, 0x83, 0x00, 0x00, 0x63, 0x74, 0x76, 0x74
	.byte 0x5F, 0x6D, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x57, 0x61, 0x76, 0x65
	.byte 0x83, 0x6E, 0x83, 0x93, 0x83, 0x68, 0x83, 0x8B, 0x82, 0xCC, 0x8A, 0x6D, 0x95, 0xDB, 0x82, 0xC9
	.byte 0x8E, 0xB8, 0x94, 0x73, 0x81, 0x49, 0x81, 0x49, 0x0A, 0x00, 0x00, 0x00, 0x63, 0x74, 0x76, 0x74
	.byte 0x5F, 0x64, 0x72, 0x61, 0x77, 0x2E, 0x63, 0x00, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x61, 0x6C
	.byte 0x6C, 0x2E, 0x63, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0xFE, 0xFF, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x67, 0x61, 0x6D, 0x65, 0x2E, 0x63, 0x00
	.byte 0x63, 0x74, 0x76, 0x74, 0x5F, 0x67, 0x61, 0x6D, 0x65, 0x5F, 0x62, 0x61, 0x6C, 0x6C, 0x6F, 0x6F
	.byte 0x6E, 0x2E, 0x63, 0x00, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x67, 0x61, 0x6D, 0x65, 0x5F, 0x63, 0x61
	.byte 0x6D, 0x2E, 0x63, 0x00, 0x63, 0x74, 0x76, 0x74, 0x5F, 0x67, 0x61, 0x6D, 0x65, 0x5F, 0x63, 0x61
	.byte 0x6D, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0xC9, 0xAE, 0x1A, 0x02
	.byte 0xB1, 0xAF, 0x1A, 0x02, 0x71, 0xAF, 0x1A, 0x02, 0x63, 0x6F, 0x6D, 0x6D, 0x5F, 0x74, 0x76, 0x74
	.byte 0x5F, 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x70, 0x02, 0x00, 0x00, 0x20, 0x05, 0x00, 0x00
	.byte 0xD0, 0x07, 0x00, 0x00, 0x80, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x08, 0x10, 0x09, 0x02, 0x03, 0x0A
	.byte 0x11, 0x18, 0x20, 0x19, 0x12, 0x0B, 0x04, 0x05, 0x0C, 0x13, 0x1A, 0x21, 0x28, 0x30, 0x29, 0x22
	.byte 0x1B, 0x14, 0x0D, 0x06, 0x07, 0x0E, 0x15, 0x1C, 0x23, 0x2A, 0x31, 0x38, 0x39, 0x32, 0x2B, 0x24
	.byte 0x1D, 0x16, 0x0F, 0x17, 0x1E, 0x25, 0x2C, 0x33, 0x3A, 0x3B, 0x34, 0x2D, 0x26, 0x1F, 0x27, 0x2E
	.byte 0x35, 0x3C, 0x3D, 0x36, 0x2F, 0x37, 0x3E, 0x3F, 0x00, 0x40, 0xC5, 0x58, 0xC5, 0x58, 0x9F, 0x53
	.byte 0x21, 0x7B, 0x9F, 0x53, 0x42, 0x4B, 0xFC, 0x73, 0xFC, 0x73, 0x42, 0x4B, 0x00, 0x40, 0x62, 0x68
	.byte 0x41, 0x6D, 0x62, 0x68, 0x00, 0x40, 0x49, 0x32, 0xC5, 0x58, 0x54, 0x62, 0x54, 0x62, 0xC5, 0x58
	.byte 0x49, 0x32, 0xA3, 0x22, 0xBF, 0x45, 0x9F, 0x53, 0x7E, 0x58, 0x9F, 0x53, 0xBF, 0x45, 0xA3, 0x22
	.byte 0xA8, 0x11, 0x0B, 0x30, 0xB3, 0x41, 0x42, 0x4B, 0x42, 0x4B, 0xB3, 0x41, 0x0B, 0x30, 0xA8, 0x11
	.byte 0x7E, 0x18, 0x41, 0x2D, 0x21, 0x3B, 0x00, 0x40, 0x21, 0x3B, 0x41, 0x2D, 0x7E, 0x18, 0x12, 0x17
	.byte 0xBA, 0x28, 0x49, 0x32, 0x49, 0x32, 0xBA, 0x28, 0x12, 0x17, 0xC3, 0x14, 0xA3, 0x22, 0x82, 0x27
	.byte 0xA3, 0x22, 0xC3, 0x14, 0xA8, 0x11, 0x37, 0x1B, 0x37, 0x1B, 0xA8, 0x11, 0xE0, 0x0D, 0xBF, 0x12
	.byte 0xE0, 0x0D, 0x8E, 0x09, 0x8E, 0x09, 0xDF, 0x04, 0x1D, 0xFF, 0x1F, 0xFF, 0x21, 0xFF, 0x22, 0xFF
	.byte 0x24, 0xFF, 0x26, 0xFF, 0x28, 0xFF, 0x2A, 0xFF, 0x2B, 0xFF, 0x2D, 0xFF, 0x2F, 0xFF, 0x31, 0xFF
	.byte 0x32, 0xFF, 0x34, 0xFF, 0x36, 0xFF, 0x38, 0xFF, 0x3A, 0xFF, 0x3B, 0xFF, 0x3D, 0xFF, 0x3F, 0xFF
	.byte 0x41, 0xFF, 0x42, 0xFF, 0x44, 0xFF, 0x46, 0xFF, 0x48, 0xFF, 0x49, 0xFF, 0x4B, 0xFF, 0x4D, 0xFF
	.byte 0x4F, 0xFF, 0x51, 0xFF, 0x52, 0xFF, 0x54, 0xFF, 0x56, 0xFF, 0x58, 0xFF, 0x59, 0xFF, 0x5B, 0xFF
	.byte 0x5D, 0xFF, 0x5F, 0xFF, 0x61, 0xFF, 0x62, 0xFF, 0x64, 0xFF, 0x66, 0xFF, 0x68, 0xFF, 0x69, 0xFF
	.byte 0x6B, 0xFF, 0x6D, 0xFF, 0x6F, 0xFF, 0x70, 0xFF, 0x72, 0xFF, 0x74, 0xFF, 0x76, 0xFF, 0x78, 0xFF
	.byte 0x79, 0xFF, 0x7B, 0xFF, 0x7D, 0xFF, 0x7F, 0xFF, 0x80, 0xFF, 0x82, 0xFF, 0x84, 0xFF, 0x86, 0xFF
	.byte 0x88, 0xFF, 0x89, 0xFF, 0x8B, 0xFF, 0x8D, 0xFF, 0x8F, 0xFF, 0x90, 0xFF, 0x92, 0xFF, 0x94, 0xFF
	.byte 0x96, 0xFF, 0x97, 0xFF, 0x99, 0xFF, 0x9B, 0xFF, 0x9D, 0xFF, 0x9F, 0xFF, 0xA0, 0xFF, 0xA2, 0xFF
	.byte 0xA4, 0xFF, 0xA6, 0xFF, 0xA7, 0xFF, 0xA9, 0xFF, 0xAB, 0xFF, 0xAD, 0xFF, 0xAE, 0xFF, 0xB0, 0xFF
	.byte 0xB2, 0xFF, 0xB4, 0xFF, 0xB6, 0xFF, 0xB7, 0xFF, 0xB9, 0xFF, 0xBB, 0xFF, 0xBD, 0xFF, 0xBE, 0xFF
	.byte 0xC0, 0xFF, 0xC2, 0xFF, 0xC4, 0xFF, 0xC6, 0xFF, 0xC7, 0xFF, 0xC9, 0xFF, 0xCB, 0xFF, 0xCD, 0xFF
	.byte 0xCE, 0xFF, 0xD0, 0xFF, 0xD2, 0xFF, 0xD4, 0xFF, 0xD5, 0xFF, 0xD7, 0xFF, 0xD9, 0xFF, 0xDB, 0xFF
	.byte 0xDD, 0xFF, 0xDE, 0xFF, 0xE0, 0xFF, 0xE2, 0xFF, 0xE4, 0xFF, 0xE5, 0xFF, 0xE7, 0xFF, 0xE9, 0xFF
	.byte 0xEB, 0xFF, 0xED, 0xFF, 0xEE, 0xFF, 0xF0, 0xFF, 0xF2, 0xFF, 0xF4, 0xFF, 0xF5, 0xFF, 0xF7, 0xFF
	.byte 0xF9, 0xFF, 0xFB, 0xFF, 0xFC, 0xFF, 0xFE, 0xFF, 0x00, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0x00
	.byte 0x07, 0x00, 0x09, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0E, 0x00, 0x10, 0x00, 0x12, 0x00, 0x13, 0x00
	.byte 0x15, 0x00, 0x17, 0x00, 0x19, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x1E, 0x00, 0x20, 0x00, 0x22, 0x00
	.byte 0x23, 0x00, 0x25, 0x00, 0x27, 0x00, 0x29, 0x00, 0x2B, 0x00, 0x2C, 0x00, 0x2E, 0x00, 0x30, 0x00
	.byte 0x32, 0x00, 0x33, 0x00, 0x35, 0x00, 0x37, 0x00, 0x39, 0x00, 0x3A, 0x00, 0x3C, 0x00, 0x3E, 0x00
	.byte 0x40, 0x00, 0x42, 0x00, 0x43, 0x00, 0x45, 0x00, 0x47, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4C, 0x00
	.byte 0x4E, 0x00, 0x50, 0x00, 0x52, 0x00, 0x53, 0x00, 0x55, 0x00, 0x57, 0x00, 0x59, 0x00, 0x5A, 0x00
	.byte 0x5C, 0x00, 0x5E, 0x00, 0x60, 0x00, 0x61, 0x00, 0x63, 0x00, 0x65, 0x00, 0x67, 0x00, 0x69, 0x00
	.byte 0x6A, 0x00, 0x6C, 0x00, 0x6E, 0x00, 0x70, 0x00, 0x71, 0x00, 0x73, 0x00, 0x75, 0x00, 0x77, 0x00
	.byte 0x78, 0x00, 0x7A, 0x00, 0x7C, 0x00, 0x7E, 0x00, 0x80, 0x00, 0x81, 0x00, 0x83, 0x00, 0x85, 0x00
	.byte 0x87, 0x00, 0x88, 0x00, 0x8A, 0x00, 0x8C, 0x00, 0x8E, 0x00, 0x90, 0x00, 0x91, 0x00, 0x93, 0x00
	.byte 0x95, 0x00, 0x97, 0x00, 0x98, 0x00, 0x9A, 0x00, 0x9C, 0x00, 0x9E, 0x00, 0x9F, 0x00, 0xA1, 0x00
	.byte 0xA3, 0x00, 0xA5, 0x00, 0xA7, 0x00, 0xA8, 0x00, 0xAA, 0x00, 0xAC, 0x00, 0xAE, 0x00, 0xAF, 0x00
	.byte 0xB1, 0x00, 0xB3, 0x00, 0xB5, 0x00, 0xB7, 0x00, 0xB8, 0x00, 0xBA, 0x00, 0xBC, 0x00, 0xBE, 0x00
	.byte 0xBF, 0x00, 0xC1, 0x00, 0xC3, 0x00, 0xC5, 0x00, 0xC6, 0x00, 0xC8, 0x00, 0xCA, 0x00, 0xCC, 0x00
	.byte 0xCE, 0x00, 0xCF, 0x00, 0xD1, 0x00, 0xD3, 0x00, 0xD5, 0x00, 0xD6, 0x00, 0xD8, 0x00, 0xDA, 0x00
	.byte 0xDC, 0x00, 0xDE, 0x00, 0xDF, 0x00, 0xE1, 0x00, 0x4D, 0xFF, 0x4E, 0xFF, 0x4F, 0xFF, 0x51, 0xFF
	.byte 0x52, 0xFF, 0x54, 0xFF, 0x55, 0xFF, 0x56, 0xFF, 0x58, 0xFF, 0x59, 0xFF, 0x5B, 0xFF, 0x5C, 0xFF
	.byte 0x5D, 0xFF, 0x5F, 0xFF, 0x60, 0xFF, 0x62, 0xFF, 0x63, 0xFF, 0x64, 0xFF, 0x66, 0xFF, 0x67, 0xFF
	.byte 0x69, 0xFF, 0x6A, 0xFF, 0x6B, 0xFF, 0x6D, 0xFF, 0x6E, 0xFF, 0x70, 0xFF, 0x71, 0xFF, 0x72, 0xFF
	.byte 0x74, 0xFF, 0x75, 0xFF, 0x77, 0xFF, 0x78, 0xFF, 0x79, 0xFF, 0x7B, 0xFF, 0x7C, 0xFF, 0x7E, 0xFF
	.byte 0x7F, 0xFF, 0x80, 0xFF, 0x82, 0xFF, 0x83, 0xFF, 0x85, 0xFF, 0x86, 0xFF, 0x87, 0xFF, 0x89, 0xFF
	.byte 0x8A, 0xFF, 0x8C, 0xFF, 0x8D, 0xFF, 0x8E, 0xFF, 0x90, 0xFF, 0x91, 0xFF, 0x93, 0xFF, 0x94, 0xFF
	.byte 0x95, 0xFF, 0x97, 0xFF, 0x98, 0xFF, 0x9A, 0xFF, 0x9B, 0xFF, 0x9C, 0xFF, 0x9E, 0xFF, 0x9F, 0xFF
	.byte 0xA1, 0xFF, 0xA2, 0xFF, 0xA3, 0xFF, 0xA5, 0xFF, 0xA6, 0xFF, 0xA8, 0xFF, 0xA9, 0xFF, 0xAA, 0xFF
	.byte 0xAC, 0xFF, 0xAD, 0xFF, 0xAF, 0xFF, 0xB0, 0xFF, 0xB1, 0xFF, 0xB3, 0xFF, 0xB4, 0xFF, 0xB6, 0xFF
	.byte 0xB7, 0xFF, 0xB8, 0xFF, 0xBA, 0xFF, 0xBB, 0xFF, 0xBD, 0xFF, 0xBE, 0xFF, 0xC0, 0xFF, 0xC1, 0xFF
	.byte 0xC2, 0xFF, 0xC4, 0xFF, 0xC5, 0xFF, 0xC7, 0xFF, 0xC8, 0xFF, 0xC9, 0xFF, 0xCB, 0xFF, 0xCC, 0xFF
	.byte 0xCE, 0xFF, 0xCF, 0xFF, 0xD0, 0xFF, 0xD2, 0xFF, 0xD3, 0xFF, 0xD5, 0xFF, 0xD6, 0xFF, 0xD7, 0xFF
	.byte 0xD9, 0xFF, 0xDA, 0xFF, 0xDC, 0xFF, 0xDD, 0xFF, 0xDE, 0xFF, 0xE0, 0xFF, 0xE1, 0xFF, 0xE3, 0xFF
	.byte 0xE4, 0xFF, 0xE5, 0xFF, 0xE7, 0xFF, 0xE8, 0xFF, 0xEA, 0xFF, 0xEB, 0xFF, 0xEC, 0xFF, 0xEE, 0xFF
	.byte 0xEF, 0xFF, 0xF1, 0xFF, 0xF2, 0xFF, 0xF3, 0xFF, 0xF5, 0xFF, 0xF6, 0xFF, 0xF8, 0xFF, 0xF9, 0xFF
	.byte 0xFA, 0xFF, 0xFC, 0xFF, 0xFD, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00, 0x04, 0x00
	.byte 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00
	.byte 0x11, 0x00, 0x12, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x18, 0x00, 0x19, 0x00, 0x1B, 0x00
	.byte 0x1C, 0x00, 0x1D, 0x00, 0x1F, 0x00, 0x20, 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x00, 0x26, 0x00
	.byte 0x27, 0x00, 0x29, 0x00, 0x2A, 0x00, 0x2B, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0x30, 0x00, 0x31, 0x00
	.byte 0x32, 0x00, 0x34, 0x00, 0x35, 0x00, 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x3B, 0x00, 0x3C, 0x00
	.byte 0x3E, 0x00, 0x3F, 0x00, 0x40, 0x00, 0x42, 0x00, 0x43, 0x00, 0x45, 0x00, 0x46, 0x00, 0x48, 0x00
	.byte 0x49, 0x00, 0x4A, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4F, 0x00, 0x50, 0x00, 0x51, 0x00, 0x53, 0x00
	.byte 0x54, 0x00, 0x56, 0x00, 0x57, 0x00, 0x58, 0x00, 0x5A, 0x00, 0x5B, 0x00, 0x5D, 0x00, 0x5E, 0x00
	.byte 0x5F, 0x00, 0x61, 0x00, 0x62, 0x00, 0x64, 0x00, 0x65, 0x00, 0x66, 0x00, 0x68, 0x00, 0x69, 0x00
	.byte 0x6B, 0x00, 0x6C, 0x00, 0x6D, 0x00, 0x6F, 0x00, 0x70, 0x00, 0x72, 0x00, 0x73, 0x00, 0x74, 0x00
	.byte 0x76, 0x00, 0x77, 0x00, 0x79, 0x00, 0x7A, 0x00, 0x7B, 0x00, 0x7D, 0x00, 0x7E, 0x00, 0x80, 0x00
	.byte 0x81, 0x00, 0x82, 0x00, 0x84, 0x00, 0x85, 0x00, 0x87, 0x00, 0x88, 0x00, 0x89, 0x00, 0x8B, 0x00
	.byte 0x8C, 0x00, 0x8E, 0x00, 0x8F, 0x00, 0x90, 0x00, 0x92, 0x00, 0x93, 0x00, 0x95, 0x00, 0x96, 0x00
	.byte 0x97, 0x00, 0x99, 0x00, 0x9A, 0x00, 0x9C, 0x00, 0x9D, 0x00, 0x9E, 0x00, 0xA0, 0x00, 0xA1, 0x00
	.byte 0xA3, 0x00, 0xA4, 0x00, 0xA5, 0x00, 0xA7, 0x00, 0xA8, 0x00, 0xAA, 0x00, 0xAB, 0x00, 0xAC, 0x00
	.byte 0xAE, 0x00, 0xAF, 0x00, 0xB1, 0x00, 0xB2, 0x00, 0x00, 0x8D, 0x2C, 0x00, 0xE6, 0x34, 0x2C, 0x00
	.byte 0xCC, 0xDC, 0x2B, 0x00, 0xB2, 0x84, 0x2B, 0x00, 0x98, 0x2C, 0x2B, 0x00, 0x7E, 0xD4, 0x2A, 0x00
	.byte 0x64, 0x7C, 0x2A, 0x00, 0x4A, 0x24, 0x2A, 0x00, 0x30, 0xCC, 0x29, 0x00, 0x16, 0x74, 0x29, 0x00
	.byte 0xFC, 0x1B, 0x29, 0x00, 0xE2, 0xC3, 0x28, 0x00, 0xC8, 0x6B, 0x28, 0x00, 0xAE, 0x13, 0x28, 0x00
	.byte 0x94, 0xBB, 0x27, 0x00, 0x7A, 0x63, 0x27, 0x00, 0x60, 0x0B, 0x27, 0x00, 0x46, 0xB3, 0x26, 0x00
	.byte 0x2C, 0x5B, 0x26, 0x00, 0x12, 0x03, 0x26, 0x00, 0xF8, 0xAA, 0x25, 0x00, 0xDE, 0x52, 0x25, 0x00
	.byte 0xC4, 0xFA, 0x24, 0x00, 0xAA, 0xA2, 0x24, 0x00, 0x90, 0x4A, 0x24, 0x00, 0x76, 0xF2, 0x23, 0x00
	.byte 0x5C, 0x9A, 0x23, 0x00, 0x42, 0x42, 0x23, 0x00, 0x28, 0xEA, 0x22, 0x00, 0x0E, 0x92, 0x22, 0x00
	.byte 0xF4, 0x39, 0x22, 0x00, 0xDA, 0xE1, 0x21, 0x00, 0xC0, 0x89, 0x21, 0x00, 0xA6, 0x31, 0x21, 0x00
	.byte 0x8C, 0xD9, 0x20, 0x00, 0x72, 0x81, 0x20, 0x00, 0x58, 0x29, 0x20, 0x00, 0x3E, 0xD1, 0x1F, 0x00
	.byte 0x24, 0x79, 0x1F, 0x00, 0x0A, 0x21, 0x1F, 0x00, 0xF0, 0xC8, 0x1E, 0x00, 0xD6, 0x70, 0x1E, 0x00
	.byte 0xBC, 0x18, 0x1E, 0x00, 0xA2, 0xC0, 0x1D, 0x00, 0x88, 0x68, 0x1D, 0x00, 0x6E, 0x10, 0x1D, 0x00
	.byte 0x54, 0xB8, 0x1C, 0x00, 0x3A, 0x60, 0x1C, 0x00, 0x20, 0x08, 0x1C, 0x00, 0x06, 0xB0, 0x1B, 0x00
	.byte 0xEC, 0x57, 0x1B, 0x00, 0xD2, 0xFF, 0x1A, 0x00, 0xB8, 0xA7, 0x1A, 0x00, 0x9E, 0x4F, 0x1A, 0x00
	.byte 0x84, 0xF7, 0x19, 0x00, 0x6A, 0x9F, 0x19, 0x00, 0x50, 0x47, 0x19, 0x00, 0x36, 0xEF, 0x18, 0x00
	.byte 0x1C, 0x97, 0x18, 0x00, 0x02, 0x3F, 0x18, 0x00, 0xE8, 0xE6, 0x17, 0x00, 0xCE, 0x8E, 0x17, 0x00
	.byte 0xB4, 0x36, 0x17, 0x00, 0x9A, 0xDE, 0x16, 0x00, 0x80, 0x86, 0x16, 0x00, 0x66, 0x2E, 0x16, 0x00
	.byte 0x4C, 0xD6, 0x15, 0x00, 0x32, 0x7E, 0x15, 0x00, 0x18, 0x26, 0x15, 0x00, 0xFE, 0xCD, 0x14, 0x00
	.byte 0xE4, 0x75, 0x14, 0x00, 0xCA, 0x1D, 0x14, 0x00, 0xB0, 0xC5, 0x13, 0x00, 0x96, 0x6D, 0x13, 0x00
	.byte 0x7C, 0x15, 0x13, 0x00, 0x62, 0xBD, 0x12, 0x00, 0x48, 0x65, 0x12, 0x00, 0x2E, 0x0D, 0x12, 0x00
	.byte 0x14, 0xB5, 0x11, 0x00, 0xFA, 0x5C, 0x11, 0x00, 0xE0, 0x04, 0x11, 0x00, 0xC6, 0xAC, 0x10, 0x00
	.byte 0xAC, 0x54, 0x10, 0x00, 0x92, 0xFC, 0x0F, 0x00, 0x78, 0xA4, 0x0F, 0x00, 0x5E, 0x4C, 0x0F, 0x00
	.byte 0x44, 0xF4, 0x0E, 0x00, 0x2A, 0x9C, 0x0E, 0x00, 0x10, 0x44, 0x0E, 0x00, 0xF6, 0xEB, 0x0D, 0x00
	.byte 0xDC, 0x93, 0x0D, 0x00, 0xC2, 0x3B, 0x0D, 0x00, 0xA8, 0xE3, 0x0C, 0x00, 0x8E, 0x8B, 0x0C, 0x00
	.byte 0x74, 0x33, 0x0C, 0x00, 0x5A, 0xDB, 0x0B, 0x00, 0x40, 0x83, 0x0B, 0x00, 0x26, 0x2B, 0x0B, 0x00
	.byte 0x0C, 0xD3, 0x0A, 0x00, 0xF2, 0x7A, 0x0A, 0x00, 0xD8, 0x22, 0x0A, 0x00, 0xBE, 0xCA, 0x09, 0x00
	.byte 0xA4, 0x72, 0x09, 0x00, 0x8A, 0x1A, 0x09, 0x00, 0x70, 0xC2, 0x08, 0x00, 0x56, 0x6A, 0x08, 0x00
	.byte 0x3C, 0x12, 0x08, 0x00, 0x22, 0xBA, 0x07, 0x00, 0x08, 0x62, 0x07, 0x00, 0xEE, 0x09, 0x07, 0x00
	.byte 0xD4, 0xB1, 0x06, 0x00, 0xBA, 0x59, 0x06, 0x00, 0xA0, 0x01, 0x06, 0x00, 0x86, 0xA9, 0x05, 0x00
	.byte 0x6C, 0x51, 0x05, 0x00, 0x52, 0xF9, 0x04, 0x00, 0x38, 0xA1, 0x04, 0x00, 0x1E, 0x49, 0x04, 0x00
	.byte 0x04, 0xF1, 0x03, 0x00, 0xEA, 0x98, 0x03, 0x00, 0xD0, 0x40, 0x03, 0x00, 0xB6, 0xE8, 0x02, 0x00
	.byte 0x9C, 0x90, 0x02, 0x00, 0x82, 0x38, 0x02, 0x00, 0x68, 0xE0, 0x01, 0x00, 0x4E, 0x88, 0x01, 0x00
	.byte 0x34, 0x30, 0x01, 0x00, 0x1A, 0xD8, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0xE6, 0x27, 0x00, 0x00
	.byte 0xCC, 0xCF, 0xFF, 0xFF, 0xB2, 0x77, 0xFF, 0xFF, 0x98, 0x1F, 0xFF, 0xFF, 0x7E, 0xC7, 0xFE, 0xFF
	.byte 0x64, 0x6F, 0xFE, 0xFF, 0x4A, 0x17, 0xFE, 0xFF, 0x30, 0xBF, 0xFD, 0xFF, 0x16, 0x67, 0xFD, 0xFF
	.byte 0xFC, 0x0E, 0xFD, 0xFF, 0xE2, 0xB6, 0xFC, 0xFF, 0xC8, 0x5E, 0xFC, 0xFF, 0xAE, 0x06, 0xFC, 0xFF
	.byte 0x94, 0xAE, 0xFB, 0xFF, 0x7A, 0x56, 0xFB, 0xFF, 0x60, 0xFE, 0xFA, 0xFF, 0x46, 0xA6, 0xFA, 0xFF
	.byte 0x2C, 0x4E, 0xFA, 0xFF, 0x12, 0xF6, 0xF9, 0xFF, 0xF8, 0x9D, 0xF9, 0xFF, 0xDE, 0x45, 0xF9, 0xFF
	.byte 0xC4, 0xED, 0xF8, 0xFF, 0xAA, 0x95, 0xF8, 0xFF, 0x90, 0x3D, 0xF8, 0xFF, 0x76, 0xE5, 0xF7, 0xFF
	.byte 0x5C, 0x8D, 0xF7, 0xFF, 0x42, 0x35, 0xF7, 0xFF, 0x28, 0xDD, 0xF6, 0xFF, 0x0E, 0x85, 0xF6, 0xFF
	.byte 0xF4, 0x2C, 0xF6, 0xFF, 0xDA, 0xD4, 0xF5, 0xFF, 0xC0, 0x7C, 0xF5, 0xFF, 0xA6, 0x24, 0xF5, 0xFF
	.byte 0x8C, 0xCC, 0xF4, 0xFF, 0x72, 0x74, 0xF4, 0xFF, 0x58, 0x1C, 0xF4, 0xFF, 0x3E, 0xC4, 0xF3, 0xFF
	.byte 0x24, 0x6C, 0xF3, 0xFF, 0x0A, 0x14, 0xF3, 0xFF, 0xF0, 0xBB, 0xF2, 0xFF, 0xD6, 0x63, 0xF2, 0xFF
	.byte 0xBC, 0x0B, 0xF2, 0xFF, 0xA2, 0xB3, 0xF1, 0xFF, 0x88, 0x5B, 0xF1, 0xFF, 0x6E, 0x03, 0xF1, 0xFF
	.byte 0x54, 0xAB, 0xF0, 0xFF, 0x3A, 0x53, 0xF0, 0xFF, 0x20, 0xFB, 0xEF, 0xFF, 0x06, 0xA3, 0xEF, 0xFF
	.byte 0xEC, 0x4A, 0xEF, 0xFF, 0xD2, 0xF2, 0xEE, 0xFF, 0xB8, 0x9A, 0xEE, 0xFF, 0x9E, 0x42, 0xEE, 0xFF
	.byte 0x84, 0xEA, 0xED, 0xFF, 0x6A, 0x92, 0xED, 0xFF, 0x50, 0x3A, 0xED, 0xFF, 0x36, 0xE2, 0xEC, 0xFF
	.byte 0x1C, 0x8A, 0xEC, 0xFF, 0x02, 0x32, 0xEC, 0xFF, 0xE8, 0xD9, 0xEB, 0xFF, 0xCE, 0x81, 0xEB, 0xFF
	.byte 0xB4, 0x29, 0xEB, 0xFF, 0x9A, 0xD1, 0xEA, 0xFF, 0x80, 0x79, 0xEA, 0xFF, 0x66, 0x21, 0xEA, 0xFF
	.byte 0x4C, 0xC9, 0xE9, 0xFF, 0x32, 0x71, 0xE9, 0xFF, 0x18, 0x19, 0xE9, 0xFF, 0xFE, 0xC0, 0xE8, 0xFF
	.byte 0xE4, 0x68, 0xE8, 0xFF, 0xCA, 0x10, 0xE8, 0xFF, 0xB0, 0xB8, 0xE7, 0xFF, 0x96, 0x60, 0xE7, 0xFF
	.byte 0x7C, 0x08, 0xE7, 0xFF, 0x62, 0xB0, 0xE6, 0xFF, 0x48, 0x58, 0xE6, 0xFF, 0x2E, 0x00, 0xE6, 0xFF
	.byte 0x14, 0xA8, 0xE5, 0xFF, 0xFA, 0x4F, 0xE5, 0xFF, 0xE0, 0xF7, 0xE4, 0xFF, 0xC6, 0x9F, 0xE4, 0xFF
	.byte 0xAC, 0x47, 0xE4, 0xFF, 0x92, 0xEF, 0xE3, 0xFF, 0x78, 0x97, 0xE3, 0xFF, 0x5E, 0x3F, 0xE3, 0xFF
	.byte 0x44, 0xE7, 0xE2, 0xFF, 0x2A, 0x8F, 0xE2, 0xFF, 0x10, 0x37, 0xE2, 0xFF, 0xF6, 0xDE, 0xE1, 0xFF
	.byte 0xDC, 0x86, 0xE1, 0xFF, 0xC2, 0x2E, 0xE1, 0xFF, 0xA8, 0xD6, 0xE0, 0xFF, 0x8E, 0x7E, 0xE0, 0xFF
	.byte 0x74, 0x26, 0xE0, 0xFF, 0x5A, 0xCE, 0xDF, 0xFF, 0x40, 0x76, 0xDF, 0xFF, 0x26, 0x1E, 0xDF, 0xFF
	.byte 0x0C, 0xC6, 0xDE, 0xFF, 0xF2, 0x6D, 0xDE, 0xFF, 0xD8, 0x15, 0xDE, 0xFF, 0xBE, 0xBD, 0xDD, 0xFF
	.byte 0xA4, 0x65, 0xDD, 0xFF, 0x8A, 0x0D, 0xDD, 0xFF, 0x70, 0xB5, 0xDC, 0xFF, 0x56, 0x5D, 0xDC, 0xFF
	.byte 0x3C, 0x05, 0xDC, 0xFF, 0x22, 0xAD, 0xDB, 0xFF, 0x08, 0x55, 0xDB, 0xFF, 0xEE, 0xFC, 0xDA, 0xFF
	.byte 0xD4, 0xA4, 0xDA, 0xFF, 0xBA, 0x4C, 0xDA, 0xFF, 0xA0, 0xF4, 0xD9, 0xFF, 0x86, 0x9C, 0xD9, 0xFF
	.byte 0x6C, 0x44, 0xD9, 0xFF, 0x52, 0xEC, 0xD8, 0xFF, 0x38, 0x94, 0xD8, 0xFF, 0x1E, 0x3C, 0xD8, 0xFF
	.byte 0x04, 0xE4, 0xD7, 0xFF, 0xEA, 0x8B, 0xD7, 0xFF, 0xD0, 0x33, 0xD7, 0xFF, 0xB6, 0xDB, 0xD6, 0xFF
	.byte 0x9C, 0x83, 0xD6, 0xFF, 0x82, 0x2B, 0xD6, 0xFF, 0x68, 0xD3, 0xD5, 0xFF, 0x4E, 0x7B, 0xD5, 0xFF
	.byte 0x34, 0x23, 0xD5, 0xFF, 0x1A, 0xCB, 0xD4, 0xFF, 0x00, 0x69, 0x5B, 0x00, 0x2E, 0xB2, 0x5A, 0x00
	.byte 0x5C, 0xFB, 0x59, 0x00, 0x8A, 0x44, 0x59, 0x00, 0xB8, 0x8D, 0x58, 0x00, 0xE6, 0xD6, 0x57, 0x00
	.byte 0x14, 0x20, 0x57, 0x00, 0x42, 0x69, 0x56, 0x00, 0x70, 0xB2, 0x55, 0x00, 0x9E, 0xFB, 0x54, 0x00
	.byte 0xCC, 0x44, 0x54, 0x00, 0xFA, 0x8D, 0x53, 0x00, 0x28, 0xD7, 0x52, 0x00, 0x56, 0x20, 0x52, 0x00
	.byte 0x84, 0x69, 0x51, 0x00, 0xB2, 0xB2, 0x50, 0x00, 0xE0, 0xFB, 0x4F, 0x00, 0x0E, 0x45, 0x4F, 0x00
	.byte 0x3C, 0x8E, 0x4E, 0x00, 0x6A, 0xD7, 0x4D, 0x00, 0x98, 0x20, 0x4D, 0x00, 0xC6, 0x69, 0x4C, 0x00
	.byte 0xF4, 0xB2, 0x4B, 0x00, 0x22, 0xFC, 0x4A, 0x00, 0x50, 0x45, 0x4A, 0x00, 0x7E, 0x8E, 0x49, 0x00
	.byte 0xAC, 0xD7, 0x48, 0x00, 0xDA, 0x20, 0x48, 0x00, 0x08, 0x6A, 0x47, 0x00, 0x36, 0xB3, 0x46, 0x00
	.byte 0x64, 0xFC, 0x45, 0x00, 0x92, 0x45, 0x45, 0x00, 0xC0, 0x8E, 0x44, 0x00, 0xEE, 0xD7, 0x43, 0x00
	.byte 0x1C, 0x21, 0x43, 0x00, 0x4A, 0x6A, 0x42, 0x00, 0x78, 0xB3, 0x41, 0x00, 0xA6, 0xFC, 0x40, 0x00
	.byte 0xD4, 0x45, 0x40, 0x00, 0x02, 0x8F, 0x3F, 0x00, 0x30, 0xD8, 0x3E, 0x00, 0x5E, 0x21, 0x3E, 0x00
	.byte 0x8C, 0x6A, 0x3D, 0x00, 0xBA, 0xB3, 0x3C, 0x00, 0xE8, 0xFC, 0x3B, 0x00, 0x16, 0x46, 0x3B, 0x00
	.byte 0x44, 0x8F, 0x3A, 0x00, 0x72, 0xD8, 0x39, 0x00, 0xA0, 0x21, 0x39, 0x00, 0xCE, 0x6A, 0x38, 0x00
	.byte 0xFC, 0xB3, 0x37, 0x00, 0x2A, 0xFD, 0x36, 0x00, 0x58, 0x46, 0x36, 0x00, 0x86, 0x8F, 0x35, 0x00
	.byte 0xB4, 0xD8, 0x34, 0x00, 0xE2, 0x21, 0x34, 0x00, 0x10, 0x6B, 0x33, 0x00, 0x3E, 0xB4, 0x32, 0x00
	.byte 0x6C, 0xFD, 0x31, 0x00, 0x9A, 0x46, 0x31, 0x00, 0xC8, 0x8F, 0x30, 0x00, 0xF6, 0xD8, 0x2F, 0x00
	.byte 0x24, 0x22, 0x2F, 0x00, 0x52, 0x6B, 0x2E, 0x00, 0x80, 0xB4, 0x2D, 0x00, 0xAE, 0xFD, 0x2C, 0x00
	.byte 0xDC, 0x46, 0x2C, 0x00, 0x0A, 0x90, 0x2B, 0x00, 0x38, 0xD9, 0x2A, 0x00, 0x66, 0x22, 0x2A, 0x00
	.byte 0x94, 0x6B, 0x29, 0x00, 0xC2, 0xB4, 0x28, 0x00, 0xF0, 0xFD, 0x27, 0x00, 0x1E, 0x47, 0x27, 0x00
	.byte 0x4C, 0x90, 0x26, 0x00, 0x7A, 0xD9, 0x25, 0x00, 0xA8, 0x22, 0x25, 0x00, 0xD6, 0x6B, 0x24, 0x00
	.byte 0x04, 0xB5, 0x23, 0x00, 0x32, 0xFE, 0x22, 0x00, 0x60, 0x47, 0x22, 0x00, 0x8E, 0x90, 0x21, 0x00
	.byte 0xBC, 0xD9, 0x20, 0x00, 0xEA, 0x22, 0x20, 0x00, 0x18, 0x6C, 0x1F, 0x00, 0x46, 0xB5, 0x1E, 0x00
	.byte 0x74, 0xFE, 0x1D, 0x00, 0xA2, 0x47, 0x1D, 0x00, 0xD0, 0x90, 0x1C, 0x00, 0xFE, 0xD9, 0x1B, 0x00
	.byte 0x2C, 0x23, 0x1B, 0x00, 0x5A, 0x6C, 0x1A, 0x00, 0x88, 0xB5, 0x19, 0x00, 0xB6, 0xFE, 0x18, 0x00
	.byte 0xE4, 0x47, 0x18, 0x00, 0x12, 0x91, 0x17, 0x00, 0x40, 0xDA, 0x16, 0x00, 0x6E, 0x23, 0x16, 0x00
	.byte 0x9C, 0x6C, 0x15, 0x00, 0xCA, 0xB5, 0x14, 0x00, 0xF8, 0xFE, 0x13, 0x00, 0x26, 0x48, 0x13, 0x00
	.byte 0x54, 0x91, 0x12, 0x00, 0x82, 0xDA, 0x11, 0x00, 0xB0, 0x23, 0x11, 0x00, 0xDE, 0x6C, 0x10, 0x00
	.byte 0x0C, 0xB6, 0x0F, 0x00, 0x3A, 0xFF, 0x0E, 0x00, 0x68, 0x48, 0x0E, 0x00, 0x96, 0x91, 0x0D, 0x00
	.byte 0xC4, 0xDA, 0x0C, 0x00, 0xF2, 0x23, 0x0C, 0x00, 0x20, 0x6D, 0x0B, 0x00, 0x4E, 0xB6, 0x0A, 0x00
	.byte 0x7C, 0xFF, 0x09, 0x00, 0xAA, 0x48, 0x09, 0x00, 0xD8, 0x91, 0x08, 0x00, 0x06, 0xDB, 0x07, 0x00
	.byte 0x34, 0x24, 0x07, 0x00, 0x62, 0x6D, 0x06, 0x00, 0x90, 0xB6, 0x05, 0x00, 0xBE, 0xFF, 0x04, 0x00
	.byte 0xEC, 0x48, 0x04, 0x00, 0x1A, 0x92, 0x03, 0x00, 0x48, 0xDB, 0x02, 0x00, 0x76, 0x24, 0x02, 0x00
	.byte 0xA4, 0x6D, 0x01, 0x00, 0xD2, 0xB6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2E, 0x49, 0xFF, 0xFF
	.byte 0x5C, 0x92, 0xFE, 0xFF, 0x8A, 0xDB, 0xFD, 0xFF, 0xB8, 0x24, 0xFD, 0xFF, 0xE6, 0x6D, 0xFC, 0xFF
	.byte 0x14, 0xB7, 0xFB, 0xFF, 0x42, 0x00, 0xFB, 0xFF, 0x70, 0x49, 0xFA, 0xFF, 0x9E, 0x92, 0xF9, 0xFF
	.byte 0xCC, 0xDB, 0xF8, 0xFF, 0xFA, 0x24, 0xF8, 0xFF, 0x28, 0x6E, 0xF7, 0xFF, 0x56, 0xB7, 0xF6, 0xFF
	.byte 0x84, 0x00, 0xF6, 0xFF, 0xB2, 0x49, 0xF5, 0xFF, 0xE0, 0x92, 0xF4, 0xFF, 0x0E, 0xDC, 0xF3, 0xFF
	.byte 0x3C, 0x25, 0xF3, 0xFF, 0x6A, 0x6E, 0xF2, 0xFF, 0x98, 0xB7, 0xF1, 0xFF, 0xC6, 0x00, 0xF1, 0xFF
	.byte 0xF4, 0x49, 0xF0, 0xFF, 0x22, 0x93, 0xEF, 0xFF, 0x50, 0xDC, 0xEE, 0xFF, 0x7E, 0x25, 0xEE, 0xFF
	.byte 0xAC, 0x6E, 0xED, 0xFF, 0xDA, 0xB7, 0xEC, 0xFF, 0x08, 0x01, 0xEC, 0xFF, 0x36, 0x4A, 0xEB, 0xFF
	.byte 0x64, 0x93, 0xEA, 0xFF, 0x92, 0xDC, 0xE9, 0xFF, 0xC0, 0x25, 0xE9, 0xFF, 0xEE, 0x6E, 0xE8, 0xFF
	.byte 0x1C, 0xB8, 0xE7, 0xFF, 0x4A, 0x01, 0xE7, 0xFF, 0x78, 0x4A, 0xE6, 0xFF, 0xA6, 0x93, 0xE5, 0xFF
	.byte 0xD4, 0xDC, 0xE4, 0xFF, 0x02, 0x26, 0xE4, 0xFF, 0x30, 0x6F, 0xE3, 0xFF, 0x5E, 0xB8, 0xE2, 0xFF
	.byte 0x8C, 0x01, 0xE2, 0xFF, 0xBA, 0x4A, 0xE1, 0xFF, 0xE8, 0x93, 0xE0, 0xFF, 0x16, 0xDD, 0xDF, 0xFF
	.byte 0x44, 0x26, 0xDF, 0xFF, 0x72, 0x6F, 0xDE, 0xFF, 0xA0, 0xB8, 0xDD, 0xFF, 0xCE, 0x01, 0xDD, 0xFF
	.byte 0xFC, 0x4A, 0xDC, 0xFF, 0x2A, 0x94, 0xDB, 0xFF, 0x58, 0xDD, 0xDA, 0xFF, 0x86, 0x26, 0xDA, 0xFF
	.byte 0xB4, 0x6F, 0xD9, 0xFF, 0xE2, 0xB8, 0xD8, 0xFF, 0x10, 0x02, 0xD8, 0xFF, 0x3E, 0x4B, 0xD7, 0xFF
	.byte 0x6C, 0x94, 0xD6, 0xFF, 0x9A, 0xDD, 0xD5, 0xFF, 0xC8, 0x26, 0xD5, 0xFF, 0xF6, 0x6F, 0xD4, 0xFF
	.byte 0x24, 0xB9, 0xD3, 0xFF, 0x52, 0x02, 0xD3, 0xFF, 0x80, 0x4B, 0xD2, 0xFF, 0xAE, 0x94, 0xD1, 0xFF
	.byte 0xDC, 0xDD, 0xD0, 0xFF, 0x0A, 0x27, 0xD0, 0xFF, 0x38, 0x70, 0xCF, 0xFF, 0x66, 0xB9, 0xCE, 0xFF
	.byte 0x94, 0x02, 0xCE, 0xFF, 0xC2, 0x4B, 0xCD, 0xFF, 0xF0, 0x94, 0xCC, 0xFF, 0x1E, 0xDE, 0xCB, 0xFF
	.byte 0x4C, 0x27, 0xCB, 0xFF, 0x7A, 0x70, 0xCA, 0xFF, 0xA8, 0xB9, 0xC9, 0xFF, 0xD6, 0x02, 0xC9, 0xFF
	.byte 0x04, 0x4C, 0xC8, 0xFF, 0x32, 0x95, 0xC7, 0xFF, 0x60, 0xDE, 0xC6, 0xFF, 0x8E, 0x27, 0xC6, 0xFF
	.byte 0xBC, 0x70, 0xC5, 0xFF, 0xEA, 0xB9, 0xC4, 0xFF, 0x18, 0x03, 0xC4, 0xFF, 0x46, 0x4C, 0xC3, 0xFF
	.byte 0x74, 0x95, 0xC2, 0xFF, 0xA2, 0xDE, 0xC1, 0xFF, 0xD0, 0x27, 0xC1, 0xFF, 0xFE, 0x70, 0xC0, 0xFF
	.byte 0x2C, 0xBA, 0xBF, 0xFF, 0x5A, 0x03, 0xBF, 0xFF, 0x88, 0x4C, 0xBE, 0xFF, 0xB6, 0x95, 0xBD, 0xFF
	.byte 0xE4, 0xDE, 0xBC, 0xFF, 0x12, 0x28, 0xBC, 0xFF, 0x40, 0x71, 0xBB, 0xFF, 0x6E, 0xBA, 0xBA, 0xFF
	.byte 0x9C, 0x03, 0xBA, 0xFF, 0xCA, 0x4C, 0xB9, 0xFF, 0xF8, 0x95, 0xB8, 0xFF, 0x26, 0xDF, 0xB7, 0xFF
	.byte 0x54, 0x28, 0xB7, 0xFF, 0x82, 0x71, 0xB6, 0xFF, 0xB0, 0xBA, 0xB5, 0xFF, 0xDE, 0x03, 0xB5, 0xFF
	.byte 0x0C, 0x4D, 0xB4, 0xFF, 0x3A, 0x96, 0xB3, 0xFF, 0x68, 0xDF, 0xB2, 0xFF, 0x96, 0x28, 0xB2, 0xFF
	.byte 0xC4, 0x71, 0xB1, 0xFF, 0xF2, 0xBA, 0xB0, 0xFF, 0x20, 0x04, 0xB0, 0xFF, 0x4E, 0x4D, 0xAF, 0xFF
	.byte 0x7C, 0x96, 0xAE, 0xFF, 0xAA, 0xDF, 0xAD, 0xFF, 0xD8, 0x28, 0xAD, 0xFF, 0x06, 0x72, 0xAC, 0xFF
	.byte 0x34, 0xBB, 0xAB, 0xFF, 0x62, 0x04, 0xAB, 0xFF, 0x90, 0x4D, 0xAA, 0xFF, 0xBE, 0x96, 0xA9, 0xFF
	.byte 0xEC, 0xDF, 0xA8, 0xFF, 0x1A, 0x29, 0xA8, 0xFF, 0x48, 0x72, 0xA7, 0xFF, 0x76, 0xBB, 0xA6, 0xFF
	.byte 0xA4, 0x04, 0xA6, 0xFF, 0xD2, 0x4D, 0xA5, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
	.byte 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
	.byte 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27
	.byte 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
	.byte 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47
	.byte 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57
	.byte 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67
	.byte 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77
	.byte 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87
	.byte 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97
	.byte 0x98, 0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F, 0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7
	.byte 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7
	.byte 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7
	.byte 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7
	.byte 0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	.byte 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF, 0xF0, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7
	.byte 0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
	.byte 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
	.byte 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27
	.byte 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
	.byte 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47
	.byte 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57
	.byte 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67
	.byte 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77
	.byte 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xDA, 0x00, 0x0C, 0x03, 0x01, 0x00, 0x02, 0x11, 0x03, 0x11, 0x00, 0x3F, 0x00, 0xFF, 0xC0
	.byte 0x00, 0x11, 0x08, 0x01, 0xE0, 0x02, 0x80, 0x03, 0x01, 0x11, 0x00, 0x02, 0x11, 0x01, 0x03, 0x11
	.byte 0x01, 0xFF, 0xDB, 0x00, 0x84, 0xFF, 0xD8, 0xFF, 0xC0, 0x00, 0x11, 0x08, 0x01, 0xE0, 0x02, 0x80
	.byte 0x03, 0x01, 0x11, 0x00, 0x02, 0x11, 0x01, 0x03, 0x11, 0x01, 0xFF, 0xDB, 0x00, 0x84, 0x00, 0x00
	.byte 0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x10, 0x0B, 0x0A, 0x10
	.byte 0x18, 0x28, 0x33, 0x3D, 0x0C, 0x0C, 0x0E, 0x13, 0x1A, 0x3A, 0x3C, 0x37, 0x0E, 0x0D, 0x10, 0x18
	.byte 0x28, 0x39, 0x45, 0x38, 0x0E, 0x11, 0x16, 0x1D, 0x33, 0x57, 0x50, 0x3E, 0x12, 0x16, 0x25, 0x38
	.byte 0x44, 0x6D, 0x67, 0x4D, 0x18, 0x23, 0x37, 0x40, 0x51, 0x68, 0x71, 0x5C, 0x31, 0x40, 0x4E, 0x57
	.byte 0x67, 0x79, 0x78, 0x65, 0x48, 0x5C, 0x5F, 0x62, 0x70, 0x64, 0x67, 0x63, 0x11, 0x12, 0x18, 0x2F
	.byte 0x63, 0x63, 0x63, 0x63, 0x12, 0x15, 0x1A, 0x42, 0x63, 0x63, 0x63, 0x63, 0x18, 0x1A, 0x38, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x2F, 0x42, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x00, 0x01, 0x08, 0x10
	.byte 0x09, 0x02, 0x03, 0x0A, 0x11, 0x18, 0x20, 0x19, 0x12, 0x0B, 0x04, 0x05, 0x0C, 0x13, 0x1A, 0x21
	.byte 0x28, 0x30, 0x29, 0x22, 0x1B, 0x14, 0x0D, 0x06, 0x07, 0x0E, 0x15, 0x1C, 0x23, 0x2A, 0x31, 0x38
	.byte 0x39, 0x32, 0x2B, 0x24, 0x1D, 0x16, 0x0F, 0x17, 0x1E, 0x25, 0x2C, 0x33, 0x3A, 0x3B, 0x34, 0x2D
	.byte 0x26, 0x1F, 0x27, 0x2E, 0x35, 0x3C, 0x3D, 0x36, 0x2F, 0x37, 0x3E, 0x3F, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04, 0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77
	.byte 0x00, 0x01, 0x02, 0x03, 0x11, 0x04, 0x05, 0x21, 0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71
	.byte 0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91, 0xA1, 0xB1, 0xC1, 0x09, 0x23, 0x33, 0x52, 0xF0
	.byte 0x15, 0x62, 0x72, 0xD1, 0x0A, 0x16, 0x24, 0x34, 0xE1, 0x25, 0xF1, 0x17, 0x18, 0x19, 0x1A, 0x26
	.byte 0x27, 0x28, 0x29, 0x2A, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48
	.byte 0x49, 0x4A, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68
	.byte 0x69, 0x6A, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87
	.byte 0x88, 0x89, 0x8A, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0xA2, 0xA3, 0xA4, 0xA5
	.byte 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xC2, 0xC3
	.byte 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA
	.byte 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8
	.byte 0xF9, 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7D
	.byte 0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12, 0x21, 0x31, 0x41, 0x06, 0x13, 0x51, 0x61, 0x07
	.byte 0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xA1, 0x08, 0x23, 0x42, 0xB1, 0xC1, 0x15, 0x52, 0xD1, 0xF0
	.byte 0x24, 0x33, 0x62, 0x72, 0x82, 0x09, 0x0A, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x25, 0x26, 0x27, 0x28
	.byte 0x29, 0x2A, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49
	.byte 0x4A, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69
	.byte 0x6A, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89
	.byte 0x8A, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7
	.byte 0xA8, 0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xC2, 0xC3, 0xC4, 0xC5
	.byte 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xE1, 0xE2
	.byte 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8
	.byte 0xF9, 0xFA, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00
	.byte 0xB3, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x00, 0xB2, 0x03, 0x00, 0x00
	.byte 0x40, 0x07, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0x1B, 0x01, 0x00, 0x00
	.byte 0x3A, 0x01, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0xD6, 0x01, 0x00, 0x00, 0xAA, 0x02, 0x00, 0x00
	.byte 0x3A, 0x05, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00, 0x1B, 0x01, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0x4D, 0x01, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00, 0xD4, 0x02, 0x00, 0x00
	.byte 0x8C, 0x05, 0x00, 0x00, 0xB3, 0x01, 0x00, 0x00, 0x3A, 0x01, 0x00, 0x00, 0x4D, 0x01, 0x00, 0x00
	.byte 0x72, 0x01, 0x00, 0x00, 0xB3, 0x01, 0x00, 0x00, 0x2A, 0x02, 0x00, 0x00, 0x25, 0x03, 0x00, 0x00
	.byte 0x2A, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00
	.byte 0xB3, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x00, 0xB2, 0x03, 0x00, 0x00
	.byte 0x40, 0x07, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x00, 0xD6, 0x01, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00
	.byte 0x2A, 0x02, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x00, 0x3D, 0x03, 0x00, 0x00, 0xB4, 0x04, 0x00, 0x00
	.byte 0x3A, 0x09, 0x00, 0x00, 0xB2, 0x03, 0x00, 0x00, 0xAA, 0x02, 0x00, 0x00, 0xD4, 0x02, 0x00, 0x00
	.byte 0x25, 0x03, 0x00, 0x00, 0xB2, 0x03, 0x00, 0x00, 0xB4, 0x04, 0x00, 0x00, 0xD4, 0x06, 0x00, 0x00
	.byte 0x65, 0x0D, 0x00, 0x00, 0x40, 0x07, 0x00, 0x00, 0x3A, 0x05, 0x00, 0x00, 0x8C, 0x05, 0x00, 0x00
	.byte 0x2A, 0x06, 0x00, 0x00, 0x40, 0x07, 0x00, 0x00, 0x3A, 0x09, 0x00, 0x00, 0x65, 0x0D, 0x00, 0x00
	.byte 0x46, 0x1A, 0x00, 0x00, 0x25, 0x30, 0x34, 0x64, 0x3A, 0x25, 0x30, 0x32, 0x64, 0x3A, 0x25, 0x30
	.byte 0x32, 0x64, 0x20, 0x25, 0x30, 0x32, 0x64, 0x3A, 0x25, 0x30, 0x32, 0x64, 0x3A, 0x25, 0x30, 0x32
	.byte 0x64, 0x00, 0x00, 0x00, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x00, 0x00, 0x00, 0x00
	.byte 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x44, 0x53, 0x00, 0x00, 0x30, 0x32, 0x32, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x31, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x52, 0x39, 0x38, 0x00
	.byte 0x4A, 0x50, 0x45, 0x47, 0x20, 0x45, 0x78, 0x69, 0x66, 0x20, 0x56, 0x65, 0x72, 0x20, 0x32, 0x2E
	.byte 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021AF740
