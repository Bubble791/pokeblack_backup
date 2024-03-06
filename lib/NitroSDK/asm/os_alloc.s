	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start DLAddFront
DLAddFront: ; 0x0207B468
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r1]
	cmp r0, #0
	beq _0207B474
	str r1, [r0]
_0207B474:
	add r0, r1, #0
	bx lr
	thumb_func_end DLAddFront

	thumb_func_start DLExtract
DLExtract: ; 0x0207B478
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0207B482
	ldr r2, [r1]
	str r2, [r3]
_0207B482:
	ldr r2, [r1]
	cmp r2, #0
	bne _0207B48C
	ldr r0, [r1, #4]
	bx lr
_0207B48C:
	ldr r1, [r1, #4]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
	thumb_func_end DLExtract

	thumb_func_start DLInsert
DLInsert: ; 0x0207B494
	push {r4, r5}
	add r3, r0, #0
	mov r2, #0
	cmp r0, #0
	beq _0207B4AA
_0207B49E:
	cmp r1, r3
	bls _0207B4AA
	add r2, r3, #0
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _0207B49E
_0207B4AA:
	str r3, [r1, #4]
	str r2, [r1]
	cmp r3, #0
	beq _0207B4CC
	str r1, [r3]
	ldr r5, [r1, #8]
	add r4, r1, r5
	cmp r4, r3
	bne _0207B4CC
	ldr r4, [r3, #8]
	add r4, r5, r4
	str r4, [r1, #8]
	ldr r3, [r3, #4]
	str r3, [r1, #4]
	cmp r3, #0
	beq _0207B4CC
	str r1, [r3]
_0207B4CC:
	cmp r2, #0
	beq _0207B4EC
	str r1, [r2, #4]
	ldr r4, [r2, #8]
	add r5, r2, r4
	cmp r5, r1
	bne _0207B4EE
	ldr r1, [r1, #8]
	add r1, r4, r1
	str r1, [r2, #8]
	str r3, [r2, #4]
	cmp r3, #0
	beq _0207B4EE
	str r2, [r3]
	pop {r4, r5}
	bx lr
_0207B4EC:
	add r0, r1, #0
_0207B4EE:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end DLInsert

	thumb_func_start OS_AllocFromHeap
OS_AllocFromHeap: ; 0x0207B4F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	blx OS_DisableInterrupts
	ldr r1, _0207B594 ; =0x0214C4AC
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r7, r0, #0
	cmp r1, #0
	bne _0207B514
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B514:
	cmp r4, #0
	bge _0207B51A
	ldr r4, [r1]
_0207B51A:
	mov r0, #0xc
	add r5, #0x20
	ldr r1, [r1, #0x10]
	mul r0, r4
	add r6, r1, r0
	add r5, #0x1f
	mov r0, #0x1f
	bic r5, r0
	ldr r0, [r6, #4]
	add r4, r0, #0
	cmp r0, #0
	beq _0207B53E
_0207B532:
	ldr r1, [r4, #8]
	cmp r5, r1
	ble _0207B53E
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _0207B532
_0207B53E:
	cmp r4, #0
	bne _0207B54C
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B54C:
	ldr r1, [r4, #8]
	sub r1, r1, r5
	cmp r1, #0x40
	bhs _0207B55C
	add r1, r4, #0
	bl DLExtract
	b _0207B57A
_0207B55C:
	str r5, [r4, #8]
	add r0, r4, r5
	str r1, [r0, #8]
	ldr r1, [r4]
	str r1, [r4, r5]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	cmp r1, #0
	beq _0207B570
	str r0, [r1]
_0207B570:
	ldr r1, [r0]
	cmp r1, #0
	beq _0207B57A
	str r0, [r1, #4]
	b _0207B57C
_0207B57A:
	str r0, [r6, #4]
_0207B57C:
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl DLAddFront
	str r0, [r6, #8]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r4, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B594: .word 0x0214C4AC
	thumb_func_end OS_AllocFromHeap

	thumb_func_start OS_FreeToHeap
OS_FreeToHeap: ; 0x0207B598
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	lsl r1, r6, #2
	ldr r0, _0207B5D8 ; =0x0214C4AC
	cmp r5, #0
	ldr r0, [r0, r1]
	bge _0207B5B2
	ldr r5, [r0]
_0207B5B2:
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mul r0, r5
	add r5, r1, r0
	sub r4, #0x20
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl DLExtract
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl DLInsert
	str r0, [r5, #4]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207B5D8: .word 0x0214C4AC
	thumb_func_end OS_FreeToHeap

	thumb_func_start OS_InitAlloc
OS_InitAlloc: ; 0x0207B5DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r6, r3, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	lsl r1, r5, #2
	ldr r0, _0207B64C ; =0x0214C4AC
	mov r5, #0
	str r4, [r0, r1]
	mov r0, #0xc
	mul r0, r6
	mov ip, r0
	add r0, r4, #0
	add r0, #0x14
	str r0, [r4, #0x10]
	str r6, [r4, #4]
	cmp r6, #0
	ble _0207B624
	sub r0, r5, #1
	add r6, r5, #0
	mov r7, #0xc
_0207B60E:
	add r1, r5, #0
	ldr r2, [r4, #0x10]
	mul r1, r7
	add r3, r2, r1
	str r0, [r2, r1]
	str r6, [r3, #8]
	str r6, [r3, #4]
	ldr r1, [r4, #4]
	add r5, r5, #1
	cmp r5, r1
	blt _0207B60E
_0207B624:
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	ldr r1, [r4, #0x10]
	mov r0, ip
	add r0, r1, r0
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	str r0, [r4, #8]
	ldr r0, [sp]
	bic r0, r1
	str r0, [sp]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	ldr r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207B64C: .word 0x0214C4AC
	thumb_func_end OS_InitAlloc

	thumb_func_start OS_CreateHeap
OS_CreateHeap: ; 0x0207B650
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	blx OS_DisableInterrupts
	mov ip, r0
	lsl r1, r4, #2
	ldr r0, _0207B6B4 ; =0x0214C4AC
	add r6, #0x1f
	ldr r1, [r0, r1]
	mov r0, #0x1f
	ldr r2, [r1, #4]
	bic r6, r0
	bic r7, r0
	mov r4, #0
	cmp r2, #0
	ble _0207B6A6
	ldr r1, [r1, #0x10]
	mov r3, #0xc
_0207B678:
	add r5, r4, #0
	mul r5, r3
	add r0, r1, r5
	ldr r5, [r1, r5]
	cmp r5, #0
	bge _0207B6A0
	sub r1, r7, r6
	str r1, [r0]
	mov r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r1, [r0]
	str r1, [r6, #8]
	str r6, [r0, #4]
	str r2, [r0, #8]
	mov r0, ip
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B6A0:
	add r4, r4, #1
	cmp r4, r2
	blt _0207B678
_0207B6A6:
	mov r0, ip
	blx OS_RestoreInterrupts
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B6B4: .word 0x0214C4AC
	thumb_func_end OS_CreateHeap

	thumb_func_start OS_CreateExtraHeap
OS_CreateExtraHeap: ; 0x0207B6B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, _0207B728 ; =0x0214C4AC
	lsl r1, r6, #2
	ldr r4, [r0, r1]
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207B71A
	ldr r0, _0207B72C ; =0x0209B714
	ldr r0, [r0]
	cmp r0, #0
	bge _0207B71A
	ldr r2, [r4, #4]
	mov r5, #0
	cmp r2, #0
	ble _0207B71A
	ldr r1, [r4, #0x10]
	mov r3, #0xc
_0207B6E4:
	add r4, r5, #0
	mul r4, r3
	add r0, r1, r4
	ldr r4, [r1, r4]
	cmp r4, #0
	bge _0207B714
	mov r3, #1
	lsl r3, r3, #0xe
	str r3, [r0]
	mov r2, #0
	lsl r1, r3, #0xb
	str r2, [r1]
	str r2, [r1, #4]
	str r3, [r1, #8]
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, _0207B72C ; =0x0209B714
	str r6, [r0, #4]
	str r5, [r0]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B714:
	add r5, r5, #1
	cmp r5, r2
	blt _0207B6E4
_0207B71A:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B728: .word 0x0214C4AC
_0207B72C: .word 0x0209B714
	thumb_func_end OS_CreateExtraHeap

	thumb_func_start OS_ReferentSize
OS_ReferentSize: ; 0x0207B730
	push {r4, lr}
	add r4, r1, #0
	blx OS_DisableInterrupts
	blx OS_RestoreInterrupts
	sub r4, #0x18
	ldr r0, [r4]
	sub r0, #0x20
	pop {r4, pc}
	thumb_func_end OS_ReferentSize

	thumb_func_start OS_IsOnExtendedMainMemory
OS_IsOnExtendedMainMemory: ; 0x0207B744
	push {r4, lr}
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B768
	mov r0, #0xd
	lsl r0, r0, #0x18
	cmp r4, r0
	blo _0207B764
	mov r0, #0xe
	lsl r0, r0, #0x18
	cmp r4, r0
	bhs _0207B764
	mov r0, #1
	pop {r4, pc}
_0207B764:
	mov r0, #0
	pop {r4, pc}
_0207B768:
	mov r0, #9
	lsl r0, r0, #0x16
	cmp r4, r0
	blo _0207B77C
	mov r0, #0xa
	lsl r0, r0, #0x16
	cmp r4, r0
	bhs _0207B77C
	mov r0, #1
	pop {r4, pc}
_0207B77C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end OS_IsOnExtendedMainMemory

	thumb_func_start OS_IsOnVram
OS_IsOnVram: ; 0x0207B780
	mov r1, #5
	lsl r1, r1, #0x18
	cmp r0, r1
	blo _0207B792
	ldr r1, _0207B798 ; =0x07000800
	cmp r0, r1
	bhs _0207B792
	mov r0, #1
	bx lr
_0207B792:
	mov r0, #0
	bx lr
	nop
_0207B798: .word 0x07000800
	thumb_func_end OS_IsOnVram

