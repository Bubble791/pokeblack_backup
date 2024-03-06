	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start OS_InitIrqTable
OS_InitIrqTable: ; 0x02079D10
	ldr r0, _02079D1C ; =0x02FE00A0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	nop
_02079D1C: .word 0x02FE00A0
	thumb_func_end OS_InitIrqTable

	thumb_func_start OS_SetIrqFunction
OS_SetIrqFunction: ; 0x02079D20
	push {r4, r5, r6, r7}
	add r5, r1, #0
	mov r3, #0
	add r6, r0, #0
	ldr r1, _02079D80 ; =0x02FE0020
	ldr r2, _02079D84 ; =0x0214C178
	add r0, r3, #0
_02079D2E:
	mov r4, #1
	tst r4, r6
	beq _02079D74
	mov r4, #0
	cmp r3, #8
	blt _02079D4A
	cmp r3, #0xb
	bgt _02079D4A
	add r7, r3, #0
	sub r7, #8
_02079D42:
	mov r4, #0xc
	mul r4, r7
	add r4, r2, r4
	b _02079D68
_02079D4A:
	cmp r3, #0x1c
	blt _02079D58
	cmp r3, #0x1f
	bgt _02079D58
	add r7, r3, #0
	sub r7, #0x18
	b _02079D42
_02079D58:
	cmp r3, #3
	blt _02079D64
	cmp r3, #6
	bgt _02079D64
	add r7, r3, #5
	b _02079D42
_02079D64:
	lsl r7, r3, #2
	str r5, [r1, r7]
_02079D68:
	cmp r4, #0
	beq _02079D74
	str r5, [r4]
	str r0, [r4, #8]
	mov r7, #1
	str r7, [r4, #4]
_02079D74:
	add r3, r3, #1
	lsr r6, r6, #1
	cmp r3, #0x20
	blt _02079D2E
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02079D80: .word 0x02FE0020
_02079D84: .word 0x0214C178
	thumb_func_end OS_SetIrqFunction

	thumb_func_start OS_GetIrqFunction
OS_GetIrqFunction: ; 0x02079D88
	push {r3, r4}
	ldr r4, _02079DDC ; =0x02FE0020
	mov r3, #0
	mov r1, #1
_02079D90:
	add r2, r0, #0
	tst r2, r1
	beq _02079DCC
	cmp r3, #8
	blt _02079DAE
	cmp r3, #0xb
	bgt _02079DAE
	sub r3, #8
	mov r0, #0xc
	add r1, r3, #0
	mul r1, r0
	ldr r0, _02079DE0 ; =0x0214C178
	ldr r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02079DAE:
	cmp r3, #3
	blt _02079DC6
	cmp r3, #6
	bgt _02079DC6
	add r1, r3, #5
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02079DE0 ; =0x0214C178
	ldr r0, [r0, r2]
	pop {r3, r4}
	bx lr
_02079DC6:
	ldr r0, [r4]
	pop {r3, r4}
	bx lr
_02079DCC:
	add r3, r3, #1
	lsr r0, r0, #1
	add r4, r4, #4
	cmp r3, #0x20
	blt _02079D90
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079DDC: .word 0x02FE0020
_02079DE0: .word 0x0214C178
	thumb_func_end OS_GetIrqFunction

	thumb_func_start OSi_EnterDmaCallback
OSi_EnterDmaCallback: ; 0x02079DE4
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r4, #1
	add r3, #8
	lsl r4, r3
	add r5, r0, #0
	mov r3, #0xc
	ldr r0, _02079E0C ; =0x0214C178
	mul r5, r3
	str r1, [r0, r5]
	ldr r0, _02079E10 ; =0x0214C180
	str r2, [r0, r5]
	add r0, r4, #0
	bl OS_EnableIrqMask
	add r1, r4, #0
	and r1, r0
	ldr r0, _02079E14 ; =0x0214C17C
	str r1, [r0, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02079E0C: .word 0x0214C178
_02079E10: .word 0x0214C180
_02079E14: .word 0x0214C17C
	thumb_func_end OSi_EnterDmaCallback

	thumb_func_start OSi_EnterNDmaCallback
OSi_EnterNDmaCallback: ; 0x02079E18
	ldr r3, _02079E1C ; =sub_027692B8
	bx r3
	.align 2, 0
_02079E1C: .word sub_027692B8
	thumb_func_end OSi_EnterNDmaCallback

	thumb_func_start OSi_EnterTimerCallback
OSi_EnterTimerCallback: ; 0x02079E20
	push {r3, r4, r5, lr}
	mov r3, #0xc
	add r5, r0, #0
	mul r5, r3
	ldr r3, _02079E44 ; =0x0214C1D8
	mov r4, #1
	str r1, [r3, r5]
	ldr r1, _02079E48 ; =0x0214C1E0
	str r2, [r1, r5]
	add r1, r0, #3
	mov r0, #1
	lsl r0, r1
	bl OS_EnableIrqMask
	ldr r0, _02079E4C ; =0x0214C1DC
	str r4, [r0, r5]
	pop {r3, r4, r5, pc}
	nop
_02079E44: .word 0x0214C1D8
_02079E48: .word 0x0214C1E0
_02079E4C: .word 0x0214C1DC
	thumb_func_end OSi_EnterTimerCallback

	thumb_func_start OS_SetIrqMask
OS_SetIrqMask: ; 0x02079E50
	push {r3, r4}
	ldr r4, _02079E6C ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #8
	strh r1, [r4]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079E6C: .word 0x04000208
	thumb_func_end OS_SetIrqMask

	thumb_func_start OS_EnableIrqMask
OS_EnableIrqMask: ; 0x02079E70
	push {r3, r4}
	ldr r4, _02079E90 ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #8
	strh r1, [r4]
	ldr r1, [r2]
	orr r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	nop
_02079E90: .word 0x04000208
	thumb_func_end OS_EnableIrqMask

	thumb_func_start OS_DisableIrqMask
OS_DisableIrqMask: ; 0x02079E94
	push {r3, r4}
	ldr r2, _02079EB4 ; =0x04000208
	mov r3, #0
	ldrh r1, [r2]
	add r4, r2, #0
	add r4, #8
	strh r3, [r2]
	ldr r3, [r4]
	mvn r0, r0
	and r0, r3
	str r0, [r4]
	ldrh r0, [r2]
	strh r1, [r2]
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079EB4: .word 0x04000208
	thumb_func_end OS_DisableIrqMask

	thumb_func_start OS_ResetRequestIrqMask
OS_ResetRequestIrqMask: ; 0x02079EB8
	push {r3, r4}
	ldr r4, _02079ED4 ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #0xc
	strh r1, [r4]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079ED4: .word 0x04000208
	thumb_func_end OS_ResetRequestIrqMask

	thumb_func_start OS_SetIrqStackChecker
OS_SetIrqStackChecker: ; 0x02079ED8
	ldr r3, _02079EF0 ; =0x02FE0000
	ldr r1, _02079EF4 ; =0xFDDB597D
	ldr r0, _02079EF8 ; =0x00003F7C
	ldr r2, _02079EFC ; =0x7BF9DD5B
	str r1, [r3, r0]
	add r0, r0, #4
	add r1, r3, r0
	ldr r0, _02079F00 ; =0x00000800
	sub r0, r1, r0
	str r2, [r0]
	bx lr
	nop
_02079EF0: .word 0x02FE0000
_02079EF4: .word 0xFDDB597D
_02079EF8: .word 0x00003F7C
_02079EFC: .word 0x7BF9DD5B
_02079F00: .word 0x00000800
	thumb_func_end OS_SetIrqStackChecker