	.include "asm/macros.inc"
	.include "mi_dma.inc"
	.include "global.inc"

	.text

	thumb_func_start MIi_DmaFill32
MIi_DmaFill32: ; 0x0207802C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, r2, #0
	cmp r3, #0
	beq _02078078
	lsl r2, r0, #1
	add r2, r0, r2
	add r2, r2, #2
	lsl r5, r2, #2
	mov r2, #2
	ldr r4, _0207807C ; =0x040000B0
	lsl r2, r2, #0x1e
_02078044:
	ldr r6, [r5, r4]
	tst r6, r2
	bne _02078044
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _0207805C
	mov r2, #0x12
	str r2, [sp]
	lsr r6, r3, #2
	add r2, r7, #0
	mov r3, #0x85
	b _02078066
_0207805C:
	mov r2, #0x16
	str r2, [sp]
	lsr r6, r3, #2
	add r2, r7, #0
	mov r3, #5
_02078066:
	lsl r3, r3, #0x18
	orr r3, r6
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_02078072:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _02078072
_02078078:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207807C: .word 0x040000B0
	thumb_func_end MIi_DmaFill32

	thumb_func_start MIi_DmaCopy32
MIi_DmaCopy32: ; 0x02078080
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	beq _020780E0
	add r2, r6, #0
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	lsl r0, r7, #1
	add r0, r7, r0
	add r0, r0, #2
	lsl r5, r0, #2
	mov r0, #2
	ldr r4, _020780E4 ; =0x040000B0
	lsl r0, r0, #0x1e
_020780A4:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _020780A4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020780C0
	mov r0, #2
	str r0, [sp]
	add r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	lsr r6, r6, #2
	mov r3, #0x21
	b _020780CE
_020780C0:
	mov r0, #6
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r6, r6, #2
	mov r3, #1
_020780CE:
	lsl r3, r3, #0x1a
	orr r3, r6
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_020780DA:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _020780DA
_020780E0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020780E4: .word 0x040000B0
	thumb_func_end MIi_DmaCopy32

	thumb_func_start MIi_DmaCopy16
MIi_DmaCopy16: ; 0x020780E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	beq _02078146
	add r2, r6, #0
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	lsl r0, r7, #1
	add r0, r7, r0
	add r0, r0, #2
	lsl r5, r0, #2
	mov r0, #2
	ldr r4, _0207814C ; =0x040000B0
	lsl r0, r0, #0x1e
_0207810C:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _0207810C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0207812C
	mov r3, #2
	mov r0, #2
	str r0, [sp]
	lsr r6, r6, #1
	lsl r3, r3, #0x1e
	add r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	orr r3, r6
	b _02078138
_0207812C:
	mov r0, #6
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r3, r6, #1
_02078138:
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_02078140:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _02078140
_02078146:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207814C: .word 0x040000B0
	thumb_func_end MIi_DmaCopy16

	thumb_func_start MIi_DmaFill32Async
MIi_DmaFill32Async: ; 0x02078150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	bne _0207816C
	cmp r4, #0
	beq _020781EC
	ldr r0, [sp, #0x24]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207816C:
	bl MI_WaitDma
	cmp r4, #0
	beq _020781B8
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02079DE4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0207819E
	mov r3, #0xc5
	mov r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207819E:
	mov r3, #0x45
	mov r0, #0x14
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020781B8:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020781D8
	mov r3, #0x85
	mov r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020781D8:
	mov r3, #0x14
	str r3, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x16
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
_020781EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end MIi_DmaFill32Async

	thumb_func_start MIi_DmaCopy32Async
MIi_DmaCopy32Async: ; 0x020781F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r3, #0
	str r2, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	add r6, r0, #0
	add r7, r1, #0
	ldr r4, [sp, #0x20]
	bl MIi_CheckDma0SourceAddress
	cmp r5, #0
	bne _02078216
	cmp r4, #0
	beq _02078298
	ldr r0, [sp, #0x24]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078216:
	add r0, r6, #0
	bl MI_WaitDma
	cmp r4, #0
	beq _02078264
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02079DE4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0207824A
	mov r3, #0x31
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207824A:
	mov r3, #0x11
	mov r0, #4
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078264:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02078284
	mov r3, #0x21
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078284:
	mov r3, #4
	str r3, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
_02078298:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end MIi_DmaCopy32Async

	thumb_func_start MI_WaitDma
MI_WaitDma: ; 0x0207829C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	mov r1, #0xc
	mov r2, #2
	ldr r3, _020782CC ; =0x040000B8
	mul r1, r4
	lsl r2, r2, #0x1e
_020782AE:
	ldr r5, [r1, r3]
	tst r5, r2
	bne _020782AE
	cmp r4, #0
	bne _020782C6
	ldr r2, _020782D0 ; =0x040000B0
	add r2, r1, r2
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	ldr r1, _020782D4 ; =0x81400001
	str r1, [r2, #8]
_020782C6:
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	.align 2, 0
_020782CC: .word 0x040000B8
_020782D0: .word 0x040000B0
_020782D4: .word 0x81400001
	thumb_func_end MI_WaitDma

	thumb_func_start MI_StopDma
MI_StopDma: ; 0x020782D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	mov r1, #0xc
	ldr r3, _02078318 ; =0x040000B8
	mul r1, r4
	ldr r5, [r1, r3]
	ldr r2, _0207831C ; =0xC5FFFFFF
	and r2, r5
	str r2, [r1, r3]
	ldr r5, [r1, r3]
	ldr r2, _02078320 ; =0x7FFFFFFF
	and r2, r5
	str r2, [r1, r3]
	ldr r2, [r1, r3]
	cmp r4, #0
	ldr r2, [r1, r3]
	bne _02078310
	add r2, r3, #0
	sub r2, #8
	add r4, r1, r2
	mov r2, #0
	sub r3, #8
	str r2, [r1, r3]
	ldr r1, _02078324 ; =0x81400001
	str r2, [r4, #4]
	str r1, [r4, #8]
_02078310:
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_02078318: .word 0x040000B8
_0207831C: .word 0xC5FFFFFF
_02078320: .word 0x7FFFFFFF
_02078324: .word 0x81400001
	thumb_func_end MI_StopDma

	thumb_func_start MI_StopAllDma
MI_StopAllDma: ; 0x02078328
	push {r3, lr}
	mov r0, #0
	bl MI_StopDma
	mov r0, #1
	bl MI_StopDma
	mov r0, #2
	bl MI_StopDma
	mov r0, #3
	bl MI_StopDma
	pop {r3, pc}
	thumb_func_end MI_StopAllDma

	thumb_func_start MIi_CheckAnotherAutoDMA
MIi_CheckAnotherAutoDMA: ; 0x02078344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #2
	lsl r6, r6, #0x1a
	str r0, [sp]
	lsl r0, r6, #1
	str r0, [sp, #8]
	lsl r0, r6, #2
	str r0, [sp, #0x10]
	mov r0, #3
	lsl r0, r0, #0x1c
	lsr r0, r0, #1
	str r0, [sp, #0xc]
	lsl r0, r6, #1
	str r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, #0xa
	add r5, r1, #0
	mov r4, #0
	lsl r7, r0, #0x1e
_0207836C:
	ldr r0, [sp]
	cmp r4, r0
	beq _020783D2
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020783DC ; =0x040000B8
	ldr r1, [r1, r0]
	add r0, r1, #0
	tst r0, r7
	beq _020783D2
	mov r0, #0xe
	lsl r0, r0, #0x1a
	and r0, r1
	cmp r0, r5
	beq _020783D2
	cmp r0, r6
	bne _02078396
	ldr r1, [sp, #4]
	cmp r5, r1
	beq _020783D2
_02078396:
	ldr r1, [sp, #8]
	cmp r0, r1
	bne _020783A0
	cmp r5, r6
	beq _020783D2
_020783A0:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _020783CE
	ldr r1, [sp, #0x10]
	cmp r0, r1
	beq _020783CE
	mov r1, #0xa
	lsl r1, r1, #0x1a
	cmp r0, r1
	beq _020783CE
	mov r1, #3
	lsl r1, r1, #0x1c
	cmp r0, r1
	beq _020783CE
	mov r1, #0xe
	lsl r1, r1, #0x1a
	cmp r0, r1
	beq _020783CE
	cmp r0, r6
	beq _020783CE
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _020783D2
_020783CE:
	bl sub_0207C774
_020783D2:
	add r4, r4, #1
	cmp r4, #3
	blt _0207836C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020783DC: .word 0x040000B8
	thumb_func_end MIi_CheckAnotherAutoDMA

	thumb_func_start MIi_CheckDma0SourceAddress
MIi_CheckDma0SourceAddress: ; 0x020783E0
	push {r4, lr}
	cmp r0, #0
	bne _02078424
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	cmp r3, #0
	beq _020783FA
	mov r4, #2
	lsl r4, r4, #0x16
	cmp r3, r4
	beq _020783FE
	b _02078400
_020783FA:
	add r1, r1, r2
	b _02078400
_020783FE:
	sub r1, r1, r2
_02078400:
	mov r2, #0xff
	lsl r2, r2, #0x18
	add r3, r1, #0
	and r3, r2
	mov r2, #1
	lsl r2, r2, #0x1a
	cmp r0, r2
	beq _02078420
	lsl r1, r2, #1
	cmp r0, r1
	bhs _02078420
	cmp r3, r2
	beq _02078420
	add r0, r1, #0
	cmp r3, r0
	blo _02078424
_02078420:
	bl sub_0207C774
_02078424:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end MIi_CheckDma0SourceAddress

