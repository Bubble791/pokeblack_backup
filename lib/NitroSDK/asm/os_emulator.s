	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start OS_GetConsoleType
OS_GetConsoleType: ; 0x0207AC24
	push {r4, lr}
	ldr r4, _0207AC54 ; =0x0209B70C
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bne _0207AC4E
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207AC3E
	ldr r0, _0207AC58 ; =0x01800004
	b _0207AC40
_0207AC3E:
	ldr r0, _0207AC5C ; =0x80000001
_0207AC40:
	str r0, [r4, #4]
	bl OSi_DetectDeviceType
	ldr r1, _0207AC54 ; =0x0209B70C
	ldr r2, [r1, #4]
	orr r0, r2
	str r0, [r1, #4]
_0207AC4E:
	ldr r0, _0207AC54 ; =0x0209B70C
	ldr r0, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_0207AC54: .word 0x0209B70C
_0207AC58: .word 0x01800004
_0207AC5C: .word 0x80000001
	thumb_func_end OS_GetConsoleType

	thumb_func_start OSi_DetectDeviceType
OSi_DetectDeviceType: ; 0x0207AC60
	push {r3, lr}
	bl OS_GetBootType
	lsl r1, r0, #2
	ldr r0, _0207AC70 ; =0x02098858
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_0207AC70: .word 0x02098858
	thumb_func_end OSi_DetectDeviceType

	thumb_func_start OS_IsRunOnEmulator
OS_IsRunOnEmulator: ; 0x0207AC74
	push {r3, lr}
	bl OS_GetConsoleType
	mov r1, #1
	lsl r1, r1, #0x1c
	tst r0, r1
	beq _0207AC86
	mov r0, #1
	pop {r3, pc}
_0207AC86:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_IsRunOnEmulator

	thumb_func_start OS_IsRunOnTwl
OS_IsRunOnTwl: ; 0x0207AC8C
	ldr r0, _0207ACB4 ; =0x0214C484
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0207ACAC
	ldr r0, _0207ACB8 ; =0x04004000
	ldrb r1, [r0]
	mov r0, #3
	and r0, r1
	mov r1, #1
	cmp r0, #1
	beq _0207ACA4
	mov r1, #0
_0207ACA4:
	ldr r0, _0207ACB4 ; =0x0214C484
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0x1c]
_0207ACAC:
	ldr r0, _0207ACB4 ; =0x0214C484
	ldr r0, [r0, #4]
	bx lr
	nop
_0207ACB4: .word 0x0214C484
_0207ACB8: .word 0x04004000
	thumb_func_end OS_IsRunOnTwl

	thumb_func_start OSi_IsRunOnTwl
OSi_IsRunOnTwl: ; 0x0207ACBC
	ldr r3, _0207ACC0 ; =OS_IsRunOnTwl
	bx r3
	.align 2, 0
_0207ACC0: .word OS_IsRunOnTwl
	thumb_func_end OSi_IsRunOnTwl