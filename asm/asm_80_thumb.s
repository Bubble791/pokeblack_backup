	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207A290
sub_0207A290: ; 0x0207A290
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #0xc
	mov r2, #3
	bic r3, r2
	ldr r1, [sp, #0xc]
	add r2, r3, #4
	bl sub_0207A2AC
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_0207A290

	thumb_func_start sub_0207A2AC
sub_0207A2AC: ; 0x0207A2AC
	push {r4, lr}
	add r4, r1, #0
	add r3, r2, #0
	ldr r1, _0207A2BC ; =0x7FFFFFFF
	add r2, r4, #0
	bl sub_0207A2DC
	pop {r4, pc}
	.align 2, 0
_0207A2BC: .word 0x7FFFFFFF
	thumb_func_end sub_0207A2AC

	thumb_func_start sub_0207A2C0
sub_0207A2C0: ; 0x0207A2C0
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, sp, #0x10
	mov r3, #3
	bic r4, r3
	ldr r2, [sp, #0x10]
	add r3, r4, #4
	bl sub_0207A2DC
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_0207A2C0

	thumb_func_start sub_0207A2DC
sub_0207A2DC: ; 0x0207A2DC
	push {r3, lr}
	bl sub_02080124
	pop {r3, pc}
	thumb_func_end sub_0207A2DC

	thumb_func_start sub_0207A2E4
sub_0207A2E4: ; 0x0207A2E4
	ldr r1, _0207A2F0 ; =0x0214C210
	ldr r0, [r1, #0x18]
	add r0, r0, #1
	str r0, [r1, #0x18]
	bx lr
	nop
_0207A2F0: .word 0x0214C210
	thumb_func_end sub_0207A2E4

	thumb_func_start sub_0207A2F4
sub_0207A2F4: ; 0x0207A2F4
	push {r3, r4}
	ldr r4, [r0]
	b _0207A302
_0207A2FA:
	cmp r4, r1
	beq _0207A34A
	add r4, #0x80
	ldr r4, [r4]
_0207A302:
	cmp r4, #0
	beq _0207A30E
	ldr r3, [r4, #0x70]
	ldr r2, [r1, #0x70]
	cmp r3, r2
	bls _0207A2FA
_0207A30E:
	cmp r4, #0
	bne _0207A332
	ldr r3, [r0, #4]
	cmp r3, #0
	bne _0207A31C
	str r1, [r0]
	b _0207A322
_0207A31C:
	add r2, r3, #0
	add r2, #0x80
	str r1, [r2]
_0207A322:
	add r2, r1, #0
	str r3, [r1, #0x7c]
	mov r3, #0
	add r2, #0x80
	str r3, [r2]
	str r1, [r0, #4]
	pop {r3, r4}
	bx lr
_0207A332:
	ldr r2, [r4, #0x7c]
	cmp r2, #0
	bne _0207A33A
	b _0207A33E
_0207A33A:
	add r0, r2, #0
	add r0, #0x80
_0207A33E:
	str r1, [r0]
	add r0, r1, #0
	add r0, #0x80
	str r2, [r1, #0x7c]
	str r4, [r0]
	str r1, [r4, #0x7c]
_0207A34A:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0207A2F4

	thumb_func_start sub_0207A350
sub_0207A350: ; 0x0207A350
	ldr r2, [r0]
	cmp r2, #0
	beq _0207A36E
	add r1, r2, #0
	add r1, #0x80
	ldr r1, [r1]
	str r1, [r0]
	cmp r1, #0
	beq _0207A368
	mov r0, #0
	str r0, [r1, #0x7c]
	b _0207A36E
_0207A368:
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r2, #0x78]
_0207A36E:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0207A350

	thumb_func_start sub_0207A374
sub_0207A374: ; 0x0207A374
	push {r4, r5}
	ldr r5, [r0]
	add r3, r5, #0
	cmp r5, #0
	beq _0207A3AC
_0207A37E:
	add r2, r3, #0
	add r2, #0x80
	ldr r2, [r2]
	cmp r3, r1
	bne _0207A3A6
	ldr r4, [r3, #0x7c]
	cmp r5, r3
	bne _0207A392
	str r2, [r0]
	b _0207A398
_0207A392:
	add r1, r4, #0
	add r1, #0x80
	str r2, [r1]
_0207A398:
	ldr r1, [r0, #4]
	cmp r1, r3
	bne _0207A3A2
	str r4, [r0, #4]
	b _0207A3AC
_0207A3A2:
	str r4, [r2, #0x7c]
	b _0207A3AC
_0207A3A6:
	add r3, r2, #0
	cmp r2, #0
	bne _0207A37E
_0207A3AC:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_0207A374

	thumb_func_start sub_0207A3B4
sub_0207A3B4: ; 0x0207A3B4
	ldr r2, [r0]
	cmp r2, #0
	beq _0207A3CC
	ldr r1, [r2, #0x10]
	str r1, [r0]
	cmp r1, #0
	beq _0207A3C8
	mov r0, #0
	str r0, [r1, #0x14]
	b _0207A3CC
_0207A3C8:
	mov r1, #0
	str r1, [r0, #4]
_0207A3CC:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0207A3B4

	thumb_func_start sub_0207A3D0
sub_0207A3D0: ; 0x0207A3D0
	push {r4, r5}
	ldr r1, _0207A404 ; =0x0214C210
	mov r4, #0
	ldr r5, [r1, #0x24]
	add r3, r5, #0
	b _0207A3E0
_0207A3DC:
	add r4, r3, #0
	ldr r3, [r3, #0x68]
_0207A3E0:
	cmp r3, #0
	beq _0207A3EC
	ldr r2, [r3, #0x70]
	ldr r1, [r0, #0x70]
	cmp r2, r1
	blo _0207A3DC
_0207A3EC:
	cmp r4, #0
	bne _0207A3FA
	ldr r1, _0207A404 ; =0x0214C210
	str r5, [r0, #0x68]
	str r0, [r1, #0x24]
	pop {r4, r5}
	bx lr
_0207A3FA:
	ldr r1, [r4, #0x68]
	str r1, [r0, #0x68]
	str r0, [r4, #0x68]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0207A404: .word 0x0214C210
	thumb_func_end sub_0207A3D0

	thumb_func_start sub_0207A408
sub_0207A408: ; 0x0207A408
	ldr r1, _0207A430 ; =0x0214C210
	mov r2, #0
	ldr r1, [r1, #0x24]
	b _0207A414
_0207A410:
	add r2, r1, #0
	ldr r1, [r1, #0x68]
_0207A414:
	cmp r1, #0
	beq _0207A41C
	cmp r1, r0
	bne _0207A410
_0207A41C:
	cmp r2, #0
	bne _0207A428
	ldr r1, [r0, #0x68]
	ldr r0, _0207A430 ; =0x0214C210
	str r1, [r0, #0x24]
	bx lr
_0207A428:
	ldr r0, [r0, #0x68]
	str r0, [r2, #0x68]
	bx lr
	nop
_0207A430: .word 0x0214C210
	thumb_func_end sub_0207A408

	thumb_func_start sub_0207A434
sub_0207A434: ; 0x0207A434
	push {r4, r5, r6, lr}
	ldr r4, _0207A49C ; =0x0214C210
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0207A49A
	ldrh r0, [r4, #0x1e]
	ldr r6, _0207A4A0 ; =0x0214C22C
	cmp r0, #0
	bne _0207A44E
	blx OS_GetProcMode
	cmp r0, #0x12
	bne _0207A454
_0207A44E:
	mov r0, #1
	strh r0, [r6]
	pop {r4, r5, r6, pc}
_0207A454:
	ldr r0, [r4, #8]
	ldr r4, [r0]
	bl sub_0207A900
	add r5, r0, #0
	cmp r4, r5
	beq _0207A49A
	cmp r5, #0
	beq _0207A49A
	ldr r0, [r4, #0x64]
	cmp r0, #2
	beq _0207A476
	add r0, r4, #0
	blx sub_0207AB70
	cmp r0, #0
	bne _0207A49A
_0207A476:
	ldr r0, _0207A49C ; =0x0214C210
	ldr r2, [r0]
	cmp r2, #0
	beq _0207A484
	add r0, r4, #0
	add r1, r5, #0
	blx r2
_0207A484:
	ldr r2, [r6, #0xc]
	cmp r2, #0
	beq _0207A490
	add r0, r4, #0
	add r1, r5, #0
	blx r2
_0207A490:
	ldr r0, _0207A49C ; =0x0214C210
	str r5, [r0, #0x20]
	add r0, r5, #0
	blx sub_0207ABBC
_0207A49A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207A49C: .word 0x0214C210
_0207A4A0: .word 0x0214C22C
	thumb_func_end sub_0207A434

	thumb_func_start sub_0207A4A4
sub_0207A4A4: ; 0x0207A4A4
	push {r4, lr}
	sub sp, #8
	ldr r0, _0207A540 ; =0x0214C210
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0207A53A
	mov r3, #1
	ldr r1, _0207A544 ; =0x0214C230
	str r3, [r0, #0xc]
	str r1, [r0, #8]
	ldr r1, _0207A548 ; =0x0214C2FC
	mov r2, #0x10
	str r2, [r1, #0x70]
	mov r2, #0
	str r2, [r1, #0x6c]
	str r3, [r1, #0x64]
	str r2, [r1, #0x68]
	str r2, [r1, #0x74]
	ldr r2, _0207A54C ; =0x00001800
	str r1, [r0, #0x24]
	str r1, [r0, #0x20]
	cmp r2, #0
	bgt _0207A4D6
	ldr r0, _0207A550 ; =0x02FE00C0
	b _0207A4E2
_0207A4D6:
	mov r0, #0xfe
	ldr r1, _0207A554 ; =0x02FE0000
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, _0207A558 ; =0x00000800
	sub r0, r1, r0
_0207A4E2:
	sub r3, r0, r2
	mov r0, #0xfe
	ldr r1, _0207A554 ; =0x02FE0000
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, _0207A558 ; =0x00000800
	sub r2, r1, r0
	ldr r0, _0207A55C ; =0x0214C37C
	ldr r1, _0207A560 ; =0xFDDB597D
	str r2, [r0, #0x14]
	str r3, [r0, #0x10]
	mov r3, #0
	str r3, [r0, #0x18]
	sub r2, #8
	str r1, [r2]
	ldr r2, _0207A564 ; =0x7BF9DD5B
	ldr r1, [r0, #0x10]
	str r2, [r1]
	str r3, [r0, #0x20]
	str r3, [r0, #0x1c]
	ldr r0, _0207A540 ; =0x0214C210
	ldr r1, _0207A568 ; =0x0214C22C
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r0, _0207A56C ; =0x02FFFFA0
	str r1, [r0]
	mov r0, #0
	bl sub_0207AA8C
	mov r0, #0xc8
	str r0, [sp]
	mov r0, #0x1f
	ldr r4, _0207A570 ; =0x0214C23C
	str r0, [sp, #4]
	ldr r1, _0207A574 ; =0x0207AAA9
	ldr r3, _0207A578 ; =0x0214C484
	add r0, r4, #0
	mov r2, #0
	bl sub_0207A588
	mov r0, #0x20
	str r0, [r4, #0x70]
	mov r0, #1
	str r0, [r4, #0x64]
_0207A53A:
	add sp, #8
	pop {r4, pc}
	nop
_0207A540: .word 0x0214C210
_0207A544: .word 0x0214C230
_0207A548: .word 0x0214C2FC
_0207A54C: .word 0x00001800
_0207A550: .word 0x02FE00C0
_0207A554: .word 0x02FE0000
_0207A558: .word 0x00000800
_0207A55C: .word 0x0214C37C
_0207A560: .word 0xFDDB597D
_0207A564: .word 0x7BF9DD5B
_0207A568: .word 0x0214C22C
_0207A56C: .word 0x02FFFFA0
_0207A570: .word 0x0214C23C
_0207A574: .word 0x0207AAA9
_0207A578: .word 0x0214C484
	thumb_func_end sub_0207A4A4

	thumb_func_start sub_0207A57C
sub_0207A57C: ; 0x0207A57C
	ldr r0, _0207A584 ; =0x0214C21C
	ldr r0, [r0]
	bx lr
	nop
_0207A584: .word 0x0214C21C
	thumb_func_end sub_0207A57C

	thumb_func_start sub_0207A588
sub_0207A588: ; 0x0207A588
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	bl sub_0207A2E4
	mov r4, #0
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x6c]
	add r0, r5, #0
	str r1, [r5, #0x70]
	str r4, [r5, #0x64]
	str r4, [r5, #0x74]
	bl sub_0207A3D0
	add r0, r5, #0
	add r0, #0x94
	str r6, [r0]
	ldr r0, [sp, #0x20]
	ldr r1, _0207A644 ; =0xFDDB597D
	sub r7, r6, r0
	add r0, r5, #0
	add r0, #0x90
	str r7, [r0]
	add r0, r5, #0
	add r0, #0x98
	str r4, [r0]
	add r0, r6, #0
	sub r0, #8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	sub r6, #8
	ldr r1, _0207A648 ; =0x7BF9DD5B
	ldr r0, [r0]
	add r2, r6, #0
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x9c
	str r4, [r0]
	ldr r1, [sp]
	add r0, r5, #0
	blx sub_0207AB04
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x20]
	str r0, [r5, #4]
	ldr r0, _0207A64C ; =sub_0207A650
	add r1, r7, #4
	str r0, [r5, #0x3c]
	mov r0, #0
	sub r2, #0xc
	blx MIi_CpuClear32
	add r0, r5, #0
	add r0, #0x84
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x88
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x8c
	str r4, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_0207AAFC
	add r0, r5, #0
	add r0, #0x80
	add r1, r5, #0
	str r4, [r0]
	mov r0, #0
	add r1, #0xa4
	mov r2, #0xc
	str r4, [r5, #0x78]
	str r4, [r5, #0x7c]
	blx MIi_CpuClear32
	add r5, #0xb0
	ldr r0, [sp, #8]
	str r4, [r5]
	blx OS_RestoreInterrupts
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207A644: .word 0xFDDB597D
_0207A648: .word 0x7BF9DD5B
_0207A64C: .word sub_0207A650
	thumb_func_end sub_0207A588

	thumb_func_start sub_0207A650
sub_0207A650: ; 0x0207A650
	push {r3, lr}
	blx OS_DisableInterrupts
	ldr r0, _0207A664 ; =0x0214C210
	mov r1, #0
	ldr r0, [r0, #0x20]
	bl sub_0207A668
	pop {r3, pc}
	nop
_0207A664: .word 0x0214C210
	thumb_func_end sub_0207A650

	thumb_func_start sub_0207A668
sub_0207A668: ; 0x0207A668
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0207A69C ; =0x0214C210
	add r5, r0, #0
	ldr r2, [r1, #0x14]
	cmp r2, #0
	beq _0207A692
	ldr r1, _0207A6A0 ; =sub_0207A6A4
	blx sub_0207AB04
	ldr r1, [r5]
	mov r0, #0x80
	orr r0, r1
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #0x64]
	add r0, r5, #0
	str r4, [r5, #4]
	blx sub_0207ABBC
	pop {r3, r4, r5, pc}
_0207A692:
	add r0, r4, #0
	bl sub_0207A6A4
	pop {r3, r4, r5, pc}
	nop
_0207A69C: .word 0x0214C210
_0207A6A0: .word sub_0207A6A4
	thumb_func_end sub_0207A668

	thumb_func_start sub_0207A6A4
sub_0207A6A4: ; 0x0207A6A4
	push {r3, lr}
	ldr r1, _0207A6C8 ; =0x0214C210
	ldr r1, [r1, #8]
	ldr r3, [r1]
	add r1, r3, #0
	add r1, #0xb4
	ldr r2, [r1]
	cmp r2, #0
	beq _0207A6C2
	mov r1, #0
	add r3, #0xb4
	str r1, [r3]
	blx r2
	blx OS_DisableInterrupts
_0207A6C2:
	bl sub_0207A6CC
	pop {r3, pc}
	.align 2, 0
_0207A6C8: .word 0x0214C210
	thumb_func_end sub_0207A6A4

	thumb_func_start sub_0207A6CC
sub_0207A6CC: ; 0x0207A6CC
	push {r4, lr}
	ldr r0, _0207A70C ; =0x0214C210
	ldr r0, [r0, #8]
	ldr r4, [r0]
	bl sub_0207AAB4
	add r0, r4, #0
	bl sub_0207AEB0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0207A6EA
	add r1, r4, #0
	bl sub_0207A374
_0207A6EA:
	add r0, r4, #0
	bl sub_0207A408
	mov r0, #2
	str r0, [r4, #0x64]
	add r4, #0x9c
	add r0, r4, #0
	bl sub_0207A89C
	bl sub_0207AAD8
	bl sub_0207A918
	bl OS_Terminate
	pop {r4, pc}
	nop
_0207A70C: .word 0x0214C210
	thumb_func_end sub_0207A6CC

	thumb_func_start sub_0207A710
sub_0207A710: ; 0x0207A710
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0207A764 ; =0x0214C210
	ldr r0, [r0, #0x20]
	cmp r0, r5
	bne _0207A726
	bl sub_0207A6CC
_0207A726:
	bl sub_0207AAB4
	add r0, r5, #0
	bl sub_0207AEB0
	add r0, r5, #0
	bl sub_0207A7F0
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _0207A742
	add r1, r5, #0
	bl sub_0207A374
_0207A742:
	add r0, r5, #0
	bl sub_0207A408
	mov r0, #2
	str r0, [r5, #0x64]
	add r5, #0x9c
	add r0, r5, #0
	bl sub_0207A89C
	bl sub_0207AAD8
	add r0, r4, #0
	blx OS_RestoreInterrupts
	bl sub_0207A918
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207A764: .word 0x0214C210
	thumb_func_end sub_0207A710
_0207A768:
	.byte 0x38, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x00, 0xF0
	.byte 0x47, 0xF9, 0x02, 0x1C, 0x28, 0x1C, 0x21, 0x1C, 0x00, 0xF0, 0x02, 0xF8, 0x38, 0xBD, 0x00, 0x00
	.byte 0xF8, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x16, 0x1C, 0x01, 0xF0, 0xAC, 0xEC, 0x07, 0x1C, 0x16, 0x48
	.byte 0x00, 0x6A, 0x85, 0x42, 0x03, 0xD1, 0x28, 0x1C, 0x21, 0x1C, 0xFF, 0xF7, 0x65, 0xFF, 0x28, 0x1C
	.byte 0x00, 0xF0, 0x26, 0xF8, 0x10, 0x48, 0x42, 0x69, 0x00, 0x2A, 0x03, 0xD1, 0x28, 0x1C, 0x94, 0x30
	.byte 0x02, 0x68, 0x08, 0x3A, 0x0D, 0x49, 0x28, 0x1C, 0x00, 0xF0, 0xA4, 0xE9, 0x29, 0x68, 0x80, 0x20
	.byte 0x08, 0x43, 0x28, 0x60, 0x01, 0x20, 0x6C, 0x60, 0x68, 0x66, 0x00, 0xF0, 0x73, 0xF9, 0x28, 0x1C
	.byte 0x31, 0x1C, 0x00, 0xF0, 0xE1, 0xF8, 0x00, 0xF0, 0x7F, 0xF9, 0xFF, 0xF7, 0x2B, 0xFE, 0x38, 0x1C
	.byte 0x01, 0xF0, 0x8A, 0xEC, 0xF8, 0xBD, 0xC0, 0x46, 0x10, 0xC2, 0x14, 0x02, 0xA5, 0xA6, 0x07, 0x02

	thumb_func_start sub_0207A7F0
sub_0207A7F0: ; 0x0207A7F0
	push {r3, lr}
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _0207A7FE
	bl sub_0207BD3C
_0207A7FE:
	pop {r3, pc}
	thumb_func_end sub_0207A7F0

	thumb_func_start sub_0207A800
sub_0207A800: ; 0x0207A800
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, [r5, #0x64]
	cmp r0, #2
	beq _0207A820
	add r4, r5, #0
	add r4, #0x9c
_0207A814:
	add r0, r4, #0
	bl sub_0207A868
	ldr r0, [r5, #0x64]
	cmp r0, #2
	bne _0207A814
_0207A820:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207A800

	thumb_func_start sub_0207A828
sub_0207A828: ; 0x0207A828
	ldr r0, [r0, #0x64]
	cmp r0, #2
	bne _0207A832
	mov r0, #1
	bx lr
_0207A832:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0207A828

	thumb_func_start sub_0207A838
sub_0207A838: ; 0x0207A838
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, [r5, #0x64]
	cmp r0, #1
	bne _0207A860
	cmp r4, #0
	beq _0207A858
	add r0, r4, #0
	add r1, r5, #0
	str r4, [r5, #0x78]
	bl sub_0207A2F4
_0207A858:
	mov r0, #0
	str r0, [r5, #0x64]
	bl sub_0207A434
_0207A860:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207A838

	thumb_func_start sub_0207A868
sub_0207A868: ; 0x0207A868
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _0207A898 ; =0x0214C210
	cmp r5, #0
	ldr r0, [r0, #8]
	ldr r4, [r0]
	beq _0207A886
	add r0, r5, #0
	add r1, r4, #0
	str r5, [r4, #0x78]
	bl sub_0207A2F4
_0207A886:
	mov r0, #0
	str r0, [r4, #0x64]
	bl sub_0207A434
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
	nop
_0207A898: .word 0x0214C210
	thumb_func_end sub_0207A868

	thumb_func_start sub_0207A89C
sub_0207A89C: ; 0x0207A89C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0207A8DA
	beq _0207A8D0
	mov r4, #1
	mov r6, #0
_0207A8B2:
	add r0, r5, #0
	bl sub_0207A350
	str r4, [r0, #0x64]
	add r1, r0, #0
	str r6, [r0, #0x78]
	add r1, #0x80
	str r6, [r1]
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	str r1, [r0, #0x7c]
	ldr r0, [r5]
	cmp r0, #0
	bne _0207A8B2
_0207A8D0:
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	bl sub_0207A434
_0207A8DA:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207A89C

	thumb_func_start sub_0207A8E4
sub_0207A8E4: ; 0x0207A8E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	mov r0, #1
	str r0, [r5, #0x64]
	bl sub_0207A434
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207A8E4

	thumb_func_start sub_0207A900
sub_0207A900: ; 0x0207A900
	ldr r0, _0207A914 ; =0x0214C210
	ldr r0, [r0, #0x24]
	b _0207A908
_0207A906:
	ldr r0, [r0, #0x68]
_0207A908:
	cmp r0, #0
	beq _0207A912
	ldr r1, [r0, #0x64]
	cmp r1, #1
	bne _0207A906
_0207A912:
	bx lr
	.align 2, 0
_0207A914: .word 0x0214C210
	thumb_func_end sub_0207A900

	thumb_func_start sub_0207A918
sub_0207A918: ; 0x0207A918
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	bl sub_0207A434
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r4, pc}
	thumb_func_end sub_0207A918

	thumb_func_start sub_0207A92C
sub_0207A92C: ; 0x0207A92C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0207A994 ; =0x0214C210
	mov r7, #0
	ldr r5, [r0, #0x20]
	mov r6, #0
	mov r4, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0207A994 ; =0x0214C210
	mov r1, #0
	ldr r2, [r0, #0x24]
	cmp r2, #0
	beq _0207A962
	ldr r0, [r5, #0x70]
_0207A94A:
	cmp r2, r5
	bne _0207A950
	add r7, r1, #0
_0207A950:
	ldr r1, [r2, #0x70]
	cmp r0, r1
	bne _0207A95A
	add r6, r2, #0
	add r4, r4, #1
_0207A95A:
	add r1, r2, #0
	ldr r2, [r2, #0x68]
	cmp r2, #0
	bne _0207A94A
_0207A962:
	cmp r4, #1
	ble _0207A96A
	cmp r6, r5
	bne _0207A972
_0207A96A:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
_0207A972:
	cmp r7, #0
	bne _0207A97E
	ldr r1, [r5, #0x68]
	ldr r0, _0207A994 ; =0x0214C210
	str r1, [r0, #0x24]
	b _0207A982
_0207A97E:
	ldr r0, [r5, #0x68]
	str r0, [r7, #0x68]
_0207A982:
	ldr r0, [r6, #0x68]
	str r0, [r5, #0x68]
	str r5, [r6, #0x68]
	bl sub_0207A434
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207A994: .word 0x0214C210
	thumb_func_end sub_0207A92C

	thumb_func_start sub_0207A998
sub_0207A998: ; 0x0207A998
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0207A9F8 ; =0x0214C210
	add r7, r1, #0
	ldr r4, [r0, #0x24]
	mov r6, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	b _0207A9B0
_0207A9AC:
	add r6, r4, #0
	ldr r4, [r4, #0x68]
_0207A9B0:
	cmp r4, #0
	beq _0207A9B8
	cmp r4, r5
	bne _0207A9AC
_0207A9B8:
	cmp r4, #0
	beq _0207A9C2
	ldr r0, _0207A9FC ; =0x0214C23C
	cmp r4, r0
	bne _0207A9CC
_0207A9C2:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A9CC:
	ldr r0, [r4, #0x70]
	cmp r0, r7
	beq _0207A9EE
	cmp r6, #0
	bne _0207A9DE
	ldr r1, [r5, #0x68]
	ldr r0, _0207A9F8 ; =0x0214C210
	str r1, [r0, #0x24]
	b _0207A9E2
_0207A9DE:
	ldr r0, [r5, #0x68]
	str r0, [r6, #0x68]
_0207A9E2:
	add r0, r5, #0
	str r7, [r5, #0x70]
	bl sub_0207A3D0
	bl sub_0207A434
_0207A9EE:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207A9F8: .word 0x0214C210
_0207A9FC: .word 0x0214C23C
	thumb_func_end sub_0207A998

	thumb_func_start sub_0207AA00
sub_0207AA00: ; 0x0207AA00
	ldr r0, [r0, #0x70]
	bx lr
	thumb_func_end sub_0207AA00

	thumb_func_start sub_0207AA04
sub_0207AA04: ; 0x0207AA04
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r6, sp, #8
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0207BC24
	ldr r0, _0207AA68 ; =0x0214C210
	ldr r0, [r0, #8]
	ldr r0, [r0]
	str r0, [sp, #4]
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r2, _0207AA6C ; =0x000082EA
	add r0, #0xb0
	str r6, [r0]
	mov r1, #0
	add r0, r5, #0
	mov r3, #0
	blx sub_0208D60C
	add r3, r0, #0
	add r0, sp, #4
	str r0, [sp]
	lsl r2, r1, #0x1a
	lsr r3, r3, #6
	orr r3, r2
	lsr r2, r1, #6
	add r1, r3, #0
	ldr r3, _0207AA70 ; =0x0207AA75
	add r0, r6, #0
	bl sub_0207BCF4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0207AA5E
	mov r5, #0
_0207AA52:
	add r0, r5, #0
	bl sub_0207A868
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0207AA52
_0207AA5E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207AA68: .word 0x0214C210
_0207AA6C: .word 0x000082EA
_0207AA70: .word 0x0207AA75
	thumb_func_end sub_0207AA04
_0207AA74:
	.byte 0x02, 0x68, 0x00, 0x21, 0x01, 0x60, 0x10, 0x1C, 0xB0, 0x30, 0x01, 0x60
	.byte 0x01, 0x4B, 0x10, 0x1C, 0x18, 0x47, 0xC0, 0x46, 0xE5, 0xA8, 0x07, 0x02

	thumb_func_start sub_0207AA8C
sub_0207AA8C: ; 0x0207AA8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r1, _0207AAA4 ; =0x0214C210
	ldr r4, [r1, #0x28]
	str r5, [r1, #0x28]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0207AAA4: .word 0x0214C210
	thumb_func_end sub_0207AA8C
_0207AAA8:
	.byte 0x08, 0xB5, 0x01, 0xF0, 0x12, 0xEB, 0x01, 0xF0
	.byte 0x9C, 0xEE, 0xFC, 0xE7

	thumb_func_start sub_0207AAB4
sub_0207AAB4: ; 0x0207AAB4
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r2, _0207AAD4 ; =0x0214C210
	mov r1, #0
	ldr r3, [r2, #4]
	mvn r1, r1
	cmp r3, r1
	bhs _0207AACC
	add r1, r3, #1
	str r1, [r2, #4]
	add r4, r3, #0
_0207AACC:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0207AAD4: .word 0x0214C210
	thumb_func_end sub_0207AAB4

	thumb_func_start sub_0207AAD8
sub_0207AAD8: ; 0x0207AAD8
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _0207AAF8 ; =0x0214C210
	mov r4, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0207AAEE
	sub r2, r3, #1
	str r2, [r1, #4]
	add r4, r3, #0
_0207AAEE:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207AAF8: .word 0x0214C210
	thumb_func_end sub_0207AAD8

	thumb_func_start sub_0207AAFC
sub_0207AAFC: ; 0x0207AAFC
	add r0, #0xb4
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0207AAFC

