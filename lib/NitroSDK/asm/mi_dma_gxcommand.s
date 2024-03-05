	.include "asm/macros.inc"
	.include "mi_dma.inc"
	.include "global.inc"

	.text

	thumb_func_start MI_SendGXCommandAsync
MI_SendGXCommandAsync: ; 0x02078428
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r1, r3, #0
	cmp r2, #0
	bne _0207843E
	cmp r1, #0
	beq _020784BC
	ldr r0, [sp, #0x18]
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
_0207843E:
	ldr r0, _020784C0 ; =0x0214C0AC
_02078440:
	ldr r3, [r0]
	cmp r3, #0
	bne _02078440
	mov r0, #7
	ldr r4, _020784C4 ; =0x04000600
	lsl r0, r0, #0x18
	mov r3, #2
_0207844E:
	ldr r6, [r4]
	and r6, r0
	lsr r6, r6, #0x18
	tst r6, r3
	beq _0207844E
	ldr r6, _020784C0 ; =0x0214C0AC
	mov r0, #1
	str r0, [r6]
	str r5, [r6, #4]
	str r7, [r6, #8]
	str r2, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	str r0, [r6, #0x14]
	add r0, r5, #0
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	add r0, r5, #0
	bl MI_WaitDma
	blx OS_DisableInterrupts
	add r7, r0, #0
	mov r0, #3
	ldr r1, [r4]
	lsl r0, r0, #0x1e
	and r0, r1
	lsr r0, r0, #0x1e
	str r0, [r6, #0x18]
	mov r0, #1
	lsl r5, r0, #0x15
	add r0, r5, #0
	bl sub_02079D88
	str r0, [r6, #0x1c]
	ldr r1, [r4]
	ldr r0, _020784C8 ; =0x3FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [r4]
	ldr r1, _020784CC ; =MIi_FIFOCallback
	add r0, r5, #0
	bl sub_02079D20
	add r0, r5, #0
	bl sub_02079E70
	bl MIi_FIFOCallback
	add r0, r7, #0
	blx OS_RestoreInterrupts
_020784BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020784C0: .word 0x0214C0AC
_020784C4: .word 0x04000600
_020784C8: .word 0x3FFFFFFF
_020784CC: .word MIi_FIFOCallback
	thumb_func_end MI_SendGXCommandAsync

	thumb_func_start MIi_FIFOCallback
MIi_FIFOCallback: ; 0x020784D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0207853C ; =0x0214C0AC
	ldr r5, [r0, #0xc]
	cmp r5, #0
	beq _0207853A
	mov r0, #0x76
	lsl r0, r0, #2
	cmp r5, r0
	blo _020784E4
	add r5, r0, #0
_020784E4:
	ldr r6, _0207853C ; =0x0214C0AC
	ldr r0, [r6, #0xc]
	ldr r4, [r6, #8]
	sub r1, r0, r5
	add r0, r4, r5
	str r1, [r6, #0xc]
	str r0, [r6, #8]
	cmp r1, #0
	bne _0207851E
	ldr r0, [r6, #4]
	ldr r1, _02078540 ; =0x02078551
	mov r7, #0
	mov r2, #0
	bl sub_02079DE4
	str r7, [sp]
	add r1, r4, #0
	ldr r4, _02078544 ; =0x04000400
	ldr r3, _02078548 ; =0xC4400000
	lsr r5, r5, #2
	ldr r0, [r6, #4]
	add r2, r4, #0
	orr r3, r5
	bl sub_01FF8BF0
	lsl r0, r4, #0xb
	bl sub_02079EB8
	pop {r3, r4, r5, r6, r7, pc}
_0207851E:
	mov r0, #0
	add r1, r4, #0
	ldr r4, _02078544 ; =0x04000400
	str r0, [sp]
	ldr r3, _0207854C ; =0x84400000
	lsr r5, r5, #2
	ldr r0, [r6, #4]
	add r2, r4, #0
	orr r3, r5
	bl sub_01FF8BF0
	lsl r0, r4, #0xb
	bl sub_02079EB8
_0207853A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207853C: .word 0x0214C0AC
_02078540: .word MIi_DMACallback
_02078544: .word 0x04000400
_02078548: .word 0xC4400000
_0207854C: .word 0x84400000
	thumb_func_end MIi_FIFOCallback

	thumb_func_start MIi_DMACallback
MIi_DMACallback: ; 0x02078550
	push {r3, r4, r5, lr}
	mov r5, #2
	lsl r5, r5, #0x14
	add r0, r5, #0
	bl sub_02079E94
	ldr r4, _02078588 ; =0x0214C0AC
	ldr r2, _0207858C ; =0x04000600
	ldr r3, [r4, #0x18]
	ldr r1, [r2]
	ldr r0, _02078590 ; =0x3FFFFFFF
	and r1, r0
	lsl r0, r3, #0x1e
	orr r0, r1
	str r0, [r2]
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl sub_02079D20
	mov r0, #0
	str r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	cmp r1, #0
	beq _02078584
	blx r1
_02078584:
	pop {r3, r4, r5, pc}
	nop
_02078588: .word 0x0214C0AC
_0207858C: .word 0x04000600
_02078590: .word 0x3FFFFFFF
	thumb_func_end MIi_DMACallback

	thumb_func_start MI_SendGXCommandAsyncFast
MI_SendGXCommandAsyncFast: ; 0x02078594
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bne _020785A8
	cmp r3, #0
	beq _020785F8
	ldr r0, [sp, #0x18]
	blx r3
	pop {r3, r4, r5, r6, r7, pc}
_020785A8:
	ldr r0, _020785FC ; =0x0214C0AC
_020785AA:
	ldr r1, [r0]
	cmp r1, #0
	bne _020785AA
	ldr r0, _020785FC ; =0x0214C0AC
	mov r1, #1
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, [sp, #0x18]
	str r3, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #0xe
	add r0, r5, #0
	lsl r1, r1, #0x1a
	bl MIi_CheckAnotherAutoDMA
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	mov r7, #0
	bl MIi_CheckDma0SourceAddress
	add r0, r5, #0
	bl MI_WaitDma
	ldr r1, _02078600 ; =0x0207860D
	add r0, r5, #0
	mov r2, #0
	bl sub_02079DE4
	ldr r3, _02078604 ; =0xFC400000
	lsr r4, r4, #2
	ldr r2, _02078608 ; =0x04000400
	add r0, r5, #0
	add r1, r6, #0
	orr r3, r4
	str r7, [sp]
	bl sub_01FF8BF0
_020785F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020785FC: .word 0x0214C0AC
_02078600: .word MIi_DMAFastCallback
_02078604: .word 0xFC400000
_02078608: .word 0x04000400
	thumb_func_end MI_SendGXCommandAsyncFast

	thumb_func_start MIi_DMAFastCallback
MIi_DMAFastCallback: ; 0x0207860C
	push {r3, lr}
	ldr r1, _02078620 ; =0x0214C0AC
	mov r0, #0
	str r0, [r1]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	cmp r1, #0
	beq _0207861E
	blx r1
_0207861E:
	pop {r3, pc}
	.align 2, 0
_02078620: .word 0x0214C0AC
	thumb_func_end MIi_DMAFastCallback
