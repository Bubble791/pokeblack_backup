	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02079F04
sub_02079F04: ; 0x02079F04
	ldr r0, _02079F0C ; =0x0214C208
	ldrh r0, [r0]
	bx lr
	nop
_02079F0C: .word 0x0214C208
	thumb_func_end sub_02079F04

	thumb_func_start OSi_CommonCallback
OSi_CommonCallback: ; 0x02079F10
	push {r3, lr}
	mov r0, #0x7f
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	cmp r0, #0x10
	bne _02079F28
	ldr r0, _02079F40 ; =0x0214C208
	mov r1, #1
	strh r1, [r0]
	pop {r3, pc}
_02079F28:
	cmp r0, #0x20
	bne _02079F38
	ldr r0, _02079F40 ; =0x0214C208
	mov r1, #1
	strh r1, [r0, #2]
	bl OS_Terminate
	pop {r3, pc}
_02079F38:
	bl OS_Terminate
	pop {r3, pc}
	nop
_02079F40: .word 0x0214C208
	thumb_func_end OSi_CommonCallback

	thumb_func_start OSi_SendToPxi
OSi_SendToPxi: ; 0x02079F44
	push {r4, r5, r6, lr}
	lsl r5, r0, #8
	mov r4, #0xc
	mov r6, #0
_02079F4C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _02079F4C
	pop {r4, r5, r6, pc}
	thumb_func_end OSi_SendToPxi