	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

    .public MIi_CardDmaCopy32

	.text

	thumb_func_start CARDi_GetDmaInterface
CARDi_GetDmaInterface: ; 0x0206F25C
	push {r4, lr}
	mov r1, #0x10
	mov r4, #0
	tst r1, r0
	beq _0206F26A
	mov r2, #1
	b _0206F26C
_0206F26A:
	add r2, r4, #0
_0206F26C:
	mov r1, #0x10
	bic r0, r1
	cmp r0, #3
	bhi _0206F28C
	cmp r2, #0
	bne _0206F27C
	ldr r4, _0206F290 ; =CARDiDmaUsingFormer
	b _0206F28C
_0206F27C:
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0206F28A
	bl OS_Terminate
	b _0206F28C
_0206F28A:
	ldr r4, _0206F294 ; =0x027674A0
_0206F28C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0206F290: .word CARDiDmaUsingFormer
_0206F294: .word 0x027674A0
	thumb_func_end CARDi_GetDmaInterface

	thumb_func_start CARDi_ICInvalidateSmart
CARDi_ICInvalidateSmart: ; 0x0206F298
	push {r3, lr}
	cmp r1, r2
	blo _0206F2A4
	blx IC_InvalidateAll
	pop {r3, pc}
_0206F2A4:
	blx IC_InvalidateRange
	pop {r3, pc}
	.align 2, 0
	thumb_func_end CARDi_ICInvalidateSmart

	thumb_func_start CARDi_DCInvalidateSmart
CARDi_DCInvalidateSmart: ; 0x0206F2AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, r2
	blo _0206F2BC
	blx DC_FlushAll
	pop {r3, r4, r5, pc}
_0206F2BC:
	mov r0, #0x1f
	and r0, r5
	beq _0206F2D6
	sub r5, r5, r0
	add r0, r5, #0
	mov r1, #0x20
	blx DC_StoreRange
	add r0, r5, r4
	mov r1, #0x20
	blx DC_StoreRange
	add r4, #0x20
_0206F2D6:
	add r0, r5, #0
	add r1, r4, #0
	blx DC_InvalidateRange
	blx DC_WaitWriteBufferEmpty
	pop {r3, r4, r5, pc}
	thumb_func_end CARDi_DCInvalidateSmart

    .rodata
    .public CARDiDmaUsingFormer
CARDiDmaUsingFormer: ; 0x02094540
    .word MIi_CardDmaCopy32
    .word MI_StopDma
