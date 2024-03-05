	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OS_GetBootType
OS_GetBootType: ; 0x0207C1FC
	push {r3, lr}
	bl OS_GetBootInfo
	ldrh r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_GetBootType

	thumb_func_start OS_GetBootInfo
OS_GetBootInfo: ; 0x0207C208
	ldr r0, _0207C20C ; =0x02FFFC40
	bx lr
	.align 2, 0
_0207C20C: .word 0x02FFFC40
	thumb_func_end OS_GetBootInfo

	thumb_func_start OSi_IsCodecTwlMode
OSi_IsCodecTwlMode: ; 0x0207C210
	push {r3, lr}
	ldr r0, _0207C240 ; =0x0214C5A0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207C234
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207C22E
	ldr r0, _0207C244 ; =0x02FFE1BF
	mov r1, #1
	ldrb r0, [r0]
	and r0, r1
	cmp r0, #1
	beq _0207C230
_0207C22E:
	mov r1, #0
_0207C230:
	ldr r0, _0207C240 ; =0x0214C5A0
	str r1, [r0]
_0207C234:
	ldr r0, _0207C240 ; =0x0214C5A0
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0]
	pop {r3, pc}
	nop
_0207C240: .word 0x0214C5A0
_0207C244: .word 0x02FFE1BF
	thumb_func_end OSi_IsCodecTwlMode

