	.include "asm/macros.inc"
	.include "mi_dma_card.inc"
	.include "global.inc"

	.public sub_01FF8BF0
	
	.text

	thumb_func_start MIi_CardDmaCopy32
MIi_CardDmaCopy32: ; 0x0207917C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl MIi_CheckAnotherAutoDMA
	mov r3, #1
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	lsl r3, r3, #0x18
	bl MIi_CheckDma0SourceAddress
	cmp r4, #0
	beq _020791C4
	lsl r0, r5, #1
	add r0, r5, r0
	add r0, r0, #2
	mov r1, #1
	ldr r2, _020791C8 ; =0x040000B0
	lsl r0, r0, #2
	lsl r1, r1, #0x1f
_020791AE:
	ldr r3, [r0, r2]
	tst r3, r1
	bne _020791AE
	mov r0, #0
	str r0, [sp]
	ldr r3, _020791CC ; =0xAF000001
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_01FF8BF0
_020791C4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020791C8: .word 0x040000B0
_020791CC: .word 0xAF000001
	thumb_func_end MIi_CardDmaCopy32
