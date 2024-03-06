	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start OS_GetLowEntropyData
OS_GetLowEntropyData: ; 0x0207C6D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0207C75C ; =0x04000006
	ldr r6, _0207C760 ; =0x02FFFC00
	ldrh r7, [r0]
	add r4, r6, #0
	str r4, [sp]
	add r4, #0x80
	str r4, [sp]
	add r4, #0x74
	bl OS_GetTickLo
	lsl r1, r7, #0x10
	orr r0, r1
	str r0, [r5]
	ldrh r0, [r4, #4]
	ldr r1, _0207C764 ; =0x0214C578
	lsl r3, r0, #0x10
	ldr r0, [r1]
	ldr r2, [r1, #4]
	eor r0, r3
	str r0, [r5, #4]
	ldr r2, [r1]
	ldr r0, [r6, #0x3c]
	ldr r2, [r1, #4]
	ldr r1, [sp]
	ldr r1, [r1, #0x74]
	eor r1, r2
	eor r1, r0
	ldr r0, _0207C768 ; =0x04000600
	str r1, [r5, #8]
	ldr r0, [r0]
	eor r0, r1
	str r0, [r5, #8]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r5, #0xc]
	ldr r0, [r6, r0]
	str r0, [r5, #0x10]
	mov r0, #0xe5
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	lsl r2, r1, #0x10
	sub r1, r0, #4
	ldr r1, [r6, r1]
	eor r1, r2
	str r1, [r5, #0x14]
	add r1, r0, #0
	add r1, #0x16
	ldrh r1, [r6, r1]
	lsl r2, r1, #0x10
	add r1, r0, #0
	add r1, #0x18
	ldrh r1, [r6, r1]
	add r0, r0, #4
	orr r1, r2
	str r1, [r5, #0x18]
	ldrh r0, [r6, r0]
	lsl r2, r0, #0x10
	ldr r0, _0207C76C ; =0x04000130
	ldrh r1, [r0]
	ldr r0, _0207C770 ; =0x02FFFFA8
	ldrh r0, [r0]
	orr r0, r1
	orr r0, r2
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C75C: .word 0x04000006
_0207C760: .word 0x02FFFC00
_0207C764: .word 0x0214C578
_0207C768: .word 0x04000600
_0207C76C: .word 0x04000130
_0207C770: .word 0x02FFFFA8
	thumb_func_end OS_GetLowEntropyData