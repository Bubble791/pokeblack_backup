	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.public sub_02769318
	.public sub_02769334

	.text

	thumb_func_start OS_GetOwnerInfoEx
OS_GetOwnerInfoEx: ; 0x0207C3BC
	push {r4, r5, r6, lr}
	ldr r4, _0207C430 ; =0x02FFFC80
	add r5, r0, #0
	ldrb r0, [r4, #2]
	mov r2, #0x14
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r5, #1]
	ldrb r0, [r4, #3]
	strb r0, [r5, #2]
	ldrb r0, [r4, #4]
	strb r0, [r5, #3]
	ldrb r0, [r4, #0x1a]
	strh r0, [r5, #0x1a]
	add r0, r4, #0
	add r0, #0x50
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #6
	add r1, r5, #4
	blx MIi_CpuCopy16
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x1c
	mov r2, #0x34
	blx MIi_CpuCopy16
	add r0, r5, #0
	mov r6, #0
	add r0, #0x50
	strh r6, [r5, #0x18]
	strh r6, [r0]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C41E
	ldr r0, _0207C434 ; =0x02FFFDFC
	ldr r2, [r0]
	add r0, r5, #0
	ldrb r1, [r2, #5]
	add r0, #0x54
	strb r1, [r0]
	ldrb r0, [r2, #6]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_0207C41E:
	add r0, r5, #0
	add r0, #0x54
	add r4, #0x64
	strb r6, [r0]
	ldrh r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207C430: .word 0x02FFFC80
_0207C434: .word 0x02FFFDFC
	thumb_func_end OS_GetOwnerInfoEx

	thumb_func_start OS_IsAvailableWireless
OS_IsAvailableWireless: ; 0x0207C438
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C448
	bl sub_0207C44C
	pop {r3, pc}
_0207C448:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end OS_IsAvailableWireless

	thumb_func_start sub_0207C44C
sub_0207C44C: ; 0x0207C44C
	bx pc
	nop
	thumb_func_end sub_0207C44C

	arm_func_start sub_0207C450
sub_0207C450: ; 0x0207C450
	ldr ip, _0207C458 ; =sub_02769318
	bx ip
	.align 2, 0
_0207C458: .word sub_02769318
	arm_func_end sub_0207C450

	thumb_func_start OS_IsAgreeEULA
OS_IsAgreeEULA: ; 0x0207C45C
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C478
	ldr r0, _0207C47C ; =0x02FFFDFC
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x18
	mov r0, #1
	tst r1, r0
	bne _0207C47A
	mov r0, #0
	pop {r3, pc}
_0207C478:
	mov r0, #0
_0207C47A:
	pop {r3, pc}
	.align 2, 0
_0207C47C: .word 0x02FFFDFC
	thumb_func_end OS_IsAgreeEULA

	thumb_func_start OS_GetAgreedEULAVersion
OS_GetAgreedEULAVersion: ; 0x0207C480
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C492
	ldr r0, _0207C498 ; =0x02FFFDFC
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	pop {r3, pc}
_0207C492:
	mov r0, #0
	pop {r3, pc}
	nop
_0207C498: .word 0x02FFFDFC
	thumb_func_end OS_GetAgreedEULAVersion

	thumb_func_start OS_GetROMHeaderEULAVersion
OS_GetROMHeaderEULAVersion: ; 0x0207C49C
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C4AC
	ldr r0, _0207C4B0 ; =0x02FFE20E
	ldrb r0, [r0]
	pop {r3, pc}
_0207C4AC:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0207C4B0: .word 0x02FFE20E
	thumb_func_end OS_GetROMHeaderEULAVersion

	thumb_func_start OS_GetParentalControlInfoPtr
OS_GetParentalControlInfoPtr: ; 0x0207C4B4
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C4C6
	ldr r0, _0207C4CC ; =0x02FFFDFC
	ldr r0, [r0]
	add r0, #0x94
	pop {r3, pc}
_0207C4C6:
	mov r0, #0
	pop {r3, pc}
	nop
_0207C4CC: .word 0x02FFFDFC
	thumb_func_end OS_GetParentalControlInfoPtr

	thumb_func_start OS_IsParentalControledApp
OS_IsParentalControledApp: ; 0x0207C4D0
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C4E0
	bl sub_0207C4E4
	pop {r3, pc}
_0207C4E0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end OS_IsParentalControledApp

	thumb_func_start sub_0207C4E4
sub_0207C4E4: ; 0x0207C4E4
	bx pc
	nop
	thumb_func_end sub_0207C4E4

	arm_func_start sub_0207C4E8
sub_0207C4E8: ; 0x0207C4E8
	ldr ip, _0207C4F0 ; =sub_02769334
	bx ip
	.align 2, 0
_0207C4F0: .word sub_02769334
	arm_func_end sub_0207C4E8

