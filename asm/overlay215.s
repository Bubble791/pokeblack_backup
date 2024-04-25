    .include "macros/function.inc"
	.include "overlay215.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy215_21a75a0
ovy215_21a75a0: ; 0x021A75A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02009790
	str r0, [sp, #8]
	mov r0, #0x43
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r3, _021A761C ; =0x021AB780
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _021A7620 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1c
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1c
	blx MIi_CpuClearFast
	ldr r0, [sp, #4]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #8]
	strb r5, [r4, #0xe]
	str r0, [r4, #0x18]
	mov r0, #1
	strh r0, [r4]
	str r7, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02017934
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020096B8
	str r0, [r4, #0x14]
	bl sub_0200965C
	ldr r0, [r4, #0x14]
	mov r1, #0xff
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020096F8
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A761C: .word 0x021AB780
_021A7620: .word 0x00007FFF
	thumb_func_end ovy215_21a75a0

	thumb_func_start ovy215_21a7624
ovy215_21a7624: ; 0x021A7624
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x97
	str r0, [sp]
	lsl r0, r5, #0x10
	add r7, r1, #0
	lsr r1, r0, #0x10
	ldr r0, _021A767C ; =0x00007FFF
	ldr r3, _021A7680 ; =0x021AB780
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1c
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1c
	blx MIi_CpuClearFast
	mov r0, #0
	strh r0, [r4]
	add r0, r6, #0
	bl sub_02017934
	str r0, [r4, #0x10]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020096B8
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0xa7
	str r2, [r4, #0x14]
	bl sub_0201CCF8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A767C: .word 0x00007FFF
_021A7680: .word 0x021AB780
	thumb_func_end ovy215_21a7624

	thumb_func_start ovy215_21a7684
ovy215_21a7684: ; 0x021A7684
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0xb9
	str r0, [sp]
	lsl r0, r5, #0x10
	add r7, r1, #0
	lsr r1, r0, #0x10
	ldr r0, _021A76D8 ; =0x00007FFF
	ldr r3, _021A76DC ; =0x021AB780
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1c
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1c
	blx MIi_CpuClearFast
	mov r0, #0
	strh r0, [r4]
	add r0, r6, #0
	bl sub_02017934
	str r0, [r4, #0x10]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020096B8
	add r1, r7, #0
	str r0, [r4, #0x14]
	bl sub_02009754
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A76D8: .word 0x00007FFF
_021A76DC: .word 0x021AB780
	thumb_func_end ovy215_21a7684

	thumb_func_start sub_021A76E0
sub_021A76E0: ; 0x021A76E0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A76E0

	thumb_func_start ovy215_21a76e4
ovy215_21a76e4: ; 0x021A76E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A76E0
	cmp r0, #0
	bne _021A76F6
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A76F6:
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_0201CD1C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy215_21a76e4

	thumb_func_start ovy215_21a7704
ovy215_21a7704: ; 0x021A7704
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A7712
	bl GFL_HeapFree
_021A7712:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7704

	thumb_func_start ovy215_21a771c
ovy215_21a771c: ; 0x021A771C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #1
	add r5, r2, #0
	mov r1, #0x63
	lsl r2, r0, #0xc
	mov r6, #0x63
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #0x63
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x20
	blx MIi_CpuClearFast
	str r6, [r4]
	ldr r0, [r5, #0x14]
	mov r1, #0x63
	bl ovy215_21a797c
	str r0, [r4, #0x10]
	ldrh r0, [r5]
	cmp r0, #1
	bne _021A775C
	ldrb r1, [r5, #0xf]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xb]
_021A775C:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, #0xb]
	cmp r0, #0xc
	blo _021A7768
	mov r0, #0
	strb r0, [r1, #0xb]
_021A7768:
	ldrh r1, [r5]
	ldr r0, [r4, #0x10]
	strh r1, [r0]
	mov r0, #0x63
	bl CreateGameProcManager
	str r0, [r4, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy215_21a771c

	thumb_func_start ovy215_21a777c
ovy215_21a777c: ; 0x021A777C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x1c]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0203A978
	ldr r1, [r5]
	cmp r1, #4
	bhi _021A7862
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A779C: ; jump table
	.short _021A77A6 - _021A779C - 2 ; case 0
	.short _021A77BE - _021A779C - 2 ; case 1
	.short _021A77DA - _021A779C - 2 ; case 2
	.short _021A7806 - _021A779C - 2 ; case 3
	.short _021A7826 - _021A779C - 2 ; case 4
_021A77A6:
	ldrh r1, [r6]
	ldr r0, [r4, #0x10]
	ldr r2, _021A7868 ; =0x021AB004
	strh r1, [r0]
	mov r1, #0
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x10]
	mvn r1, r1
	bl Overlay_QueueGameProc
	mov r0, #1
	b _021A7860
_021A77BE:
	cmp r0, #1
	beq _021A7862
	ldr r0, [r4, #0x10]
	ldrh r1, [r0]
	cmp r1, #4
	beq _021A77D2
	ldr r0, _021A786C ; =0x0000FFFF
	cmp r1, r0
	bne _021A77D6
	b _021A77D2
_021A77D2:
	mov r0, #2
	b _021A7860
_021A77D6:
	mov r0, #3
	b _021A7860
_021A77DA:
	ldrh r0, [r6]
	cmp r0, #1
	bne _021A7802
	ldr r1, [r4, #0x10]
	ldrh r0, [r1]
	cmp r0, #4
	bne _021A77FE
	ldr r0, [r6, #0x14]
	bl ovy215_21a7a2c
	ldr r0, [r6, #0x10]
	bl sub_02009408
	mov r1, #0x1d
	bl sub_020095A0
	mov r0, #1
	b _021A7800
_021A77FE:
	mov r0, #0
_021A7800:
	str r0, [r6, #4]
_021A7802:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A7806:
	ldr r0, _021A7870 ; =0x000000B9
	bl sub_0203CE0C
	add r0, r4, #0
	add r1, r6, #0
	bl ovy215_21a78a8
	mov r1, #0
	ldr r0, [r4, #0x1c]
	ldr r2, _021A7874 ; =0x021AB010
	ldr r3, [r4, #8]
	mvn r1, r1
	bl Overlay_QueueGameProc
	mov r0, #4
	b _021A7860
_021A7826:
	cmp r0, #1
	beq _021A7862
	ldr r0, [r4, #8]
	bl sub_02029A40
	cmp r0, #0
	bne _021A7852
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #8]
	ldrb r1, [r2, #2]
	cmp r1, #3
	bhs _021A784A
	add r2, #0x16
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02029A58
	b _021A7852
_021A784A:
	bl sub_02029A48
	ldr r1, [r4, #0x10]
	strh r0, [r1, #0x32]
_021A7852:
	ldr r0, [r4, #8]
	bl sub_02029A20
	ldr r0, _021A7870 ; =0x000000B9
	bl sub_0203CDC8
	mov r0, #0
_021A7860:
	str r0, [r5]
_021A7862:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A7868: .word 0x021AB004
_021A786C: .word 0x0000FFFF
_021A7870: .word 0x000000B9
_021A7874: .word 0x021AB010
	thumb_func_end ovy215_21a777c

	thumb_func_start ovy215_21a7878
ovy215_21a7878: ; 0x021A7878
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	bl FreeGameProcManager
	ldr r0, [r5, #0x10]
	bl ovy215_21a7a14
	ldr r0, [r5]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl GFL_ProcReleaseSubsystem
	add r0, r5, #0
	bl sub_0203A2BC
	add r0, r5, #0
	bl GFL_HeapDelete
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7878

	thumb_func_start ovy215_21a78a8
ovy215_21a78a8: ; 0x021A78A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x10]
	ldrb r2, [r1, #2]
	cmp r2, #3
	bne _021A78EC
	add r0, #0x14
	bl sub_02029BB0
	mov r0, #6
	strh r0, [r5, #0x14]
	mov r0, #0
	ldr r1, [r5, #0x10]
	strh r0, [r5, #0x16]
	ldrh r1, [r1, #0x32]
	mov r2, #0
	mov r3, #1
	strh r1, [r5, #0x18]
	ldr r1, [r4, #0x10]
	str r1, [sp]
	ldr r1, [r5]
	str r1, [sp, #4]
	mov r1, #0
	bl sub_02029968
	ldr r1, [r5, #0x10]
	str r0, [r5, #8]
	ldrh r1, [r1, #0x32]
	bl sub_02029A28
	add sp, #8
	pop {r3, r4, r5, pc}
_021A78EC:
	add r0, r1, r2
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A7920
	add r0, r5, #0
	add r1, #0x16
	lsl r2, r2, #3
	add r0, #0x14
	add r1, r1, r2
	bl sub_02029E94
	ldr r0, [r4, #0x10]
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #2
	add r2, #0x14
	mov r3, #1
	bl sub_02029968
	add sp, #8
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
_021A7920:
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #2
	mov r3, #1
	mov r4, #0
	bl sub_02029968
	str r0, [r5, #8]
	ldr r0, [r5, #0x10]
	add r1, r0, #0
	ldrb r0, [r0, #2]
	add r1, #0x16
	lsl r0, r0, #3
	add r0, r1, r0
	bl sub_02029D74
	cmp r0, #0
	beq _021A7962
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	ldrb r1, [r1, #2]
	add r2, #0x16
	add r0, #0x14
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02029E94
	b _021A796C
_021A7962:
	add r0, r5, #0
	add r0, #0x14
	add r1, r4, #0
	bl sub_02029BC8
_021A796C:
	ldr r0, [r5, #8]
	add r5, #0x14
	add r1, r5, #0
	bl sub_02029A2C
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a78a8

	thumb_func_start ovy215_21a797c
ovy215_21a797c: ; 0x021A797C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A7A0C ; =0x00000147
	add r6, r1, #0
	str r0, [sp]
	lsl r0, r6, #0x10
	ldr r3, _021A7A10 ; =0x021AB78C
	lsr r0, r0, #0x10
	mov r1, #0x34
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	mov r2, #0x34
	blx MIi_CpuClearFast
	add r0, r5, #0
	strh r4, [r7]
	bl sub_02009730
	lsl r1, r6, #0x10
	str r0, [r7, #4]
	mov r0, #0x10
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	str r0, [r7, #0xc]
	add r0, r5, #0
	bl sub_02009734
	add r1, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_02048614
	add r0, r5, #0
	bl sub_02009750
	strb r0, [r7, #0xb]
	add r0, r5, #0
	bl sub_0200975C
	strb r0, [r7, #9]
	add r0, r5, #0
	bl sub_02009760
	strb r0, [r7, #0xa]
	add r0, r5, #0
	bl sub_02009764
	add r6, r7, #0
	strh r0, [r7, #0x32]
	add r6, #0x16
_021A79EA:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0200976C
	add r1, r0, #0
	lsl r0, r4, #3
	add r0, r6, r0
	bl sub_02029E94
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _021A79EA
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A7A0C: .word 0x00000147
_021A7A10: .word 0x021AB78C
	thumb_func_end ovy215_21a797c

	thumb_func_start ovy215_21a7a14
ovy215_21a7a14: ; 0x021A7A14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A7A22
	bl GFL_StrBufFree
_021A7A22:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7a14

	thumb_func_start ovy215_21a7a2c
ovy215_21a7a2c: ; 0x021A7A2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r7, #0
	add r5, r0, #0
	mov r4, #0
	add r6, #0x16
_021A7A38:
	lsl r1, r4, #3
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, r1
	lsr r2, r2, #0x18
	bl sub_0200977C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _021A7A38
	ldrh r1, [r7, #0x32]
	add r0, r5, #0
	bl sub_02009768
	ldrb r1, [r7, #0xb]
	add r0, r5, #0
	bl sub_02009754
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7a2c

	thumb_func_start ovy215_21a7a64
ovy215_21a7a64: ; 0x021A7A64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x16
_021A7A6E:
	lsl r7, r4, #3
	add r0, r6, r7
	bl sub_02029D74
	cmp r0, #0
	bne _021A7A92
	ldrb r1, [r5, #0xb]
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, _021A7ABC ; =0x021AB054
	add r0, r0, r1
	ldrb r2, [r4, r0]
	cmp r2, #0xff
	beq _021A7A92
	add r0, r6, r7
	mov r1, #5
	bl sub_02029BE4
_021A7A92:
	ldrb r1, [r5, #0xb]
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, _021A7ABC ; =0x021AB054
	add r0, r0, r1
	ldrb r0, [r4, r0]
	cmp r0, #0xff
	bne _021A7AAA
	add r1, r5, r4
	add r1, #0x2e
	mov r0, #0
	b _021A7AB0
_021A7AAA:
	add r1, r5, r4
	add r1, #0x2e
	mov r0, #1
_021A7AB0:
	add r4, r4, #1
	strb r0, [r1]
	cmp r4, #3
	blt _021A7A6E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A7ABC: .word 0x021AB054
	thumb_func_end ovy215_21a7a64

	thumb_func_start ovy215_21a7ac0
ovy215_21a7ac0: ; 0x021A7AC0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	add r4, r0, #0
	add r5, r2, #0
	mov r0, #1
	mov r1, #0x64
	lsl r2, r7, #0x11
	bl GFL_HeapCreateChild
	mov r6, #0x64
	add r6, #0xf8
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x64
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r6, #0
	blx MIi_CpuClearFast
	mov r0, #0x64
	str r0, [r4]
	str r5, [r4, #0x1c]
	ldrh r0, [r5]
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x1a]
	strb r0, [r4, #0x1b]
	ldr r0, _021A7B58 ; =0x0000FFFF
	strh r0, [r5]
	bl sub_02017BCC
	strb r0, [r4, #0x15]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ovy215_21a7a64
	ldr r0, [r4]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x17
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x24]
	ldr r0, [r4]
	mov r5, #0x20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r0, #0
	mov r2, #0x20
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	add r5, #0xe0
	str r0, [r4, r5]
	strb r7, [r4, #0xa]
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GFL_BGSysCreate
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A7B58: .word 0x0000FFFF
	thumb_func_end ovy215_21a7ac0

	thumb_func_start ovy215_21a7b5c
ovy215_21a7b5c: ; 0x021A7B5C
	push {r3, lr}
	add r0, r3, #0
	bl ovy215_21a7ba8
	cmp r0, #0
	beq _021A7B6C
	mov r0, #1
	pop {r3, pc}
_021A7B6C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy215_21a7b5c

	thumb_func_start ovy215_21a7b70
ovy215_21a7b70: ; 0x021A7B70
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r3, #0
	bl sub_02044528
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl GFL_TCBExMgrFree
	ldr r0, [r5, #0x24]
	bl sub_02022DA8
	ldr r5, [r5]
	add r0, r4, #0
	bl GFL_ProcReleaseSubsystem
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_0203A2BC
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl GFL_HeapDelete
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7b70

	thumb_func_start ovy215_21a7ba8
ovy215_21a7ba8: ; 0x021A7BA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r5, #0
	cmp r1, #5
	bls _021A7BB8
	b _021A7CEE
_021A7BB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A7BC4: ; jump table
	.short _021A7BD0 - _021A7BC4 - 2 ; case 0
	.short _021A7BF8 - _021A7BC4 - 2 ; case 1
	.short _021A7C48 - _021A7BC4 - 2 ; case 2
	.short _021A7C64 - _021A7BC4 - 2 ; case 3
	.short _021A7CB4 - _021A7BC4 - 2 ; case 4
	.short _021A7CE4 - _021A7BC4 - 2 ; case 5
_021A7BD0:
	bl ovy215_21a83e0
	add r0, r5, #0
	add r1, r5, #0
	bl sub_02027B64
	mov r0, #1
	add r1, r5, #0
	bl sub_02027B64
	add r0, r5, #0
	bl sub_02027B4C
	mov r0, #1
	bl sub_02027B4C
_021A7BF0:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021A7CEE
_021A7BF8:
	bl ovy215_21a84e4
	cmp r0, #0
	beq _021A7CEE
	ldr r0, _021A7D3C ; =ovy215_21a8444
	add r1, r4, #0
	mov r2, #0x10
	mov r6, #0x10
	bl GFL_VBlankTCBAdd
	mov r1, #0x10
	add r1, #0xf4
	str r0, [r4, r1]
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	add r0, r5, #0
	bl sub_02027B58
	mov r1, #4
	ldr r0, _021A7D40 ; =0x04000050
	str r1, [sp]
	mov r2, #8
	mov r3, #0x1c
	bl G2x_SetBlendAlpha_
	bl GFL_VBlankGetTCBMgr
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, #5
	ldr r0, [r4, #0x38]
	ldr r2, _021A7D44 ; =0x0000FFFF
	sub r3, r1, #6
	bl sub_02026FE4
	b _021A7BF0
_021A7C48:
	ldr r0, [r4, #0x38]
	bl sub_02027780
	cmp r0, #0
	bne _021A7C58
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021A7C58:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02034220
	b _021A7CEE
_021A7C64:
	ldrb r1, [r4, #0xb]
	lsl r2, r1, #2
	ldr r1, _021A7D48 ; =0x021AB028
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _021A7C92
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	bl GFL_VBlankGetTCBMgr
	str r5, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, #5
	ldr r0, [r4, #0x38]
	ldr r2, _021A7D44 ; =0x0000FFFF
	sub r3, r1, #6
	bl sub_02026FE4
_021A7C92:
	mov r6, #0x52
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02034220
	add r0, r6, #0
	sub r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A7CEE
	bl sub_0202E37C
	sub r6, #0x1c
	ldr r0, [r4, r6]
	bl sub_0202E37C
	b _021A7CEE
_021A7CB4:
	ldr r0, [r4, #0x38]
	bl sub_02027780
	cmp r0, #0
	bne _021A7CE2
	add r0, r5, #0
	add r1, r5, #0
	bl sub_02027B64
	mov r0, #1
	add r1, r5, #0
	bl sub_02027B64
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GFL_TCBRemove
	bl ovy215_21a83e0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021A7CE2:
	b _021A7C58
_021A7CE4:
	bl ovy215_21a85fc
	cmp r0, #0
	beq _021A7CEE
	mov r5, #1
_021A7CEE:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7CFC
	bl sub_0204B794
_021A7CFC:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7D0A
	bl sub_0203A5D0
_021A7D0A:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A7D18
	bl sub_0203A7F4
_021A7D18:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021A7D26
	bl sub_02021A3C
_021A7D26:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A7D34
	bl sub_02021A3C
_021A7D34:
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021A7D3C: .word ovy215_21a8444
_021A7D40: .word 0x04000050
_021A7D44: .word 0x0000FFFF
_021A7D48: .word 0x021AB028
	thumb_func_end ovy215_21a7ba8

	thumb_func_start ovy215_21a7d4c
ovy215_21a7d4c: ; 0x021A7D4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r2, [sp]
	mov r0, #1
	ldr r2, [r2, #0x1c]
	str r0, [sp, #4]
	ldrb r3, [r2, #0xb]
	ldr r0, _021A7DD8 ; =0x021AB054
	mov r4, #0
	lsl r2, r3, #1
	add r2, r3, r2
	mov r7, #0
	mov r6, #0
	mov r1, #0
	add r2, r0, r2
_021A7D6C:
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	beq _021A7D74
	add r4, r4, #1
_021A7D74:
	add r1, r1, #1
	cmp r1, #3
	blt _021A7D6C
	cmp r4, #3
	bne _021A7D82
	mov r0, #0
	str r0, [sp, #4]
_021A7D82:
	mov r5, #0
_021A7D84:
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldrb r2, [r0, #0xb]
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _021A7DD8 ; =0x021AB054
	add r1, r1, r2
	ldrb r1, [r5, r1]
	cmp r1, #0xff
	beq _021A7DAC
	add r0, #0x16
	lsl r1, r5, #3
	add r0, r0, r1
	mov r1, #0x64
	bl sub_02029D88
	cmp r0, #0
	beq _021A7DBC
	add r6, r6, #1
	b _021A7DBC
_021A7DAC:
	add r0, #0x16
	lsl r1, r5, #3
	add r0, r0, r1
	bl sub_02029D74
	cmp r0, #0
	beq _021A7DBC
	add r7, r7, #1
_021A7DBC:
	add r5, r5, #1
	cmp r5, #3
	blt _021A7D84
	ldr r0, [sp, #4]
	cmp r7, r0
	blt _021A7DCC
	cmp r6, r4
	bge _021A7DD2
_021A7DCC:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A7DD2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A7DD8: .word 0x021AB054
	thumb_func_end ovy215_21a7d4c

	thumb_func_start ovy215_21a7ddc
ovy215_21a7ddc: ; 0x021A7DDC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r4, #0
	ldr r0, _021A7E04 ; =0x00007FFF
	str r4, [sp]
	str r0, [sp, #4]
	ldrb r2, [r5, #0x1b]
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, #0x21
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_02027880
	strb r4, [r5, #0x19]
	strb r4, [r5, #0x18]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A7E04: .word 0x00007FFF
	thumb_func_end ovy215_21a7ddc

	thumb_func_start ovy215_21a7e08
ovy215_21a7e08: ; 0x021A7E08
	push {r3, lr}
	bl ovy215_21a7ddc
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7e08
_021A7E14:
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy215_21a7e18
ovy215_21a7e18: ; 0x021A7E18
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _021A7E46
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A7E2E
	mov r0, #0
	pop {r4, pc}
_021A7E2E:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A7E6A
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021A7E40
	add r0, r4, #0
	blx r1
_021A7E40:
	mov r0, #1
	strb r0, [r4, #0xa]
	pop {r4, pc}
_021A7E46:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A7E52
	mov r0, #0
	pop {r4, pc}
_021A7E52:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A7E6A
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _021A7E64
	add r0, r4, #0
	blx r1
_021A7E64:
	mov r0, #0
	strb r0, [r4, #0xa]
	pop {r4, pc}
_021A7E6A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a7e18

	thumb_func_start ovy215_21a7e70
ovy215_21a7e70: ; 0x021A7E70
	push {r4, lr}
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A7E82
	mov r0, #1
_021A7E7E:
	strb r0, [r4, #0xa]
	b _021A7E92
_021A7E82:
	bl sub_0203DA48
	cmp r0, #0
	beq _021A7E8E
	mov r0, #0
	b _021A7E7E
_021A7E8E:
	mov r0, #0
	pop {r4, pc}
_021A7E92:
	ldr r0, _021A7E9C ; =0x0000054E
	bl GFL_SndSEPlay
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_021A7E9C: .word 0x0000054E
	thumb_func_end ovy215_21a7e70

	thumb_func_start ovy215_21a7ea0
ovy215_21a7ea0: ; 0x021A7EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r4, #1
	tst r0, r4
	beq _021A7F1E
	ldrb r1, [r5, #0x16]
	cmp r1, #4
	bne _021A7EF2
	add r0, r5, #0
	bl ovy215_21a7d4c
	cmp r0, #0
	beq _021A7ECC
	ldr r0, _021A7FD8 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #2
	strb r0, [r5, #0xb]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7ECC:
	ldr r0, [r5, #0x1c]
	mov r1, #4
	strh r1, [r0]
	ldr r0, _021A7FDC ; =0x0000054E
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x1c]
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	strb r1, [r0, #3]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0202E430
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A7EF2:
	cmp r1, #5
	bne _021A7F04
	ldr r0, _021A7FD8 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #3
	strb r0, [r5, #0xb]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7F04:
	ldr r0, [r5, #0x1c]
	strb r1, [r0, #2]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r5, #0x17]
	ldr r0, [r5, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021A7FE0 ; =0x0000054D
	bl GFL_SndSEPlay
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A7F1E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A7F3E
	ldr r0, _021A7FD8 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #5
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x1a]
	mov r0, #3
	strb r0, [r5, #0xb]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7F3E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #8
	tst r0, r1
	beq _021A7F52
	mov r0, #4
	strb r0, [r5, #0x16]
	mov r0, #0
	strb r0, [r5, #0x17]
	b _021A7F7E
_021A7F52:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _021A7F6A
	ldrb r0, [r5, #0x16]
	add r0, r0, #1
_021A7F60:
	mov r1, #6
	blx sub_0208D65C
	strb r1, [r5, #0x16]
	b _021A7F7E
_021A7F6A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	beq _021A7F7A
	ldrb r0, [r5, #0x16]
	add r0, r0, #5
	b _021A7F60
_021A7F7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7F7E:
	cmp r4, #0
	bne _021A7F86
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7F86:
	ldr r0, _021A7FE4 ; =0x0000054C
	bl GFL_SndSEPlay
	ldrb r0, [r5, #0x16]
	cmp r0, #4
	bhs _021A7FAA
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
_021A7F9A:
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0202E41C
	b _021A7FD0
_021A7FAA:
	bne _021A7FB6
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	b _021A7F9A
_021A7FB6:
	cmp r0, #5
	bne _021A7FD0
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0202E41C
_021A7FD0:
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x1a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A7FD8: .word 0x00000551
_021A7FDC: .word 0x0000054E
_021A7FE0: .word 0x0000054D
_021A7FE4: .word 0x0000054C
	thumb_func_end ovy215_21a7ea0

	thumb_func_start ovy215_21a7fe8
ovy215_21a7fe8: ; 0x021A7FE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021A8074 ; =0x021AB038
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A7FFE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A7FFE:
	cmp r0, #4
	bne _021A8010
	ldr r0, _021A8078 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #3
	strb r0, [r4, #0xb]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A8010:
	bge _021A802C
	ldr r1, [r4, #0x1c]
	strb r0, [r1, #2]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r4, #0x17]
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021A807C ; =0x0000054D
	bl GFL_SndSEPlay
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A802C:
	add r0, r4, #0
	bl ovy215_21a7d4c
	cmp r0, #0
	beq _021A8044
	ldr r0, _021A8078 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #2
	strb r0, [r4, #0xb]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A8044:
	ldr r0, [r4, #0x1c]
	mov r1, #4
	strh r1, [r0]
	ldr r0, _021A8080 ; =0x0000054E
	bl GFL_SndSEPlay
	mov r5, #0x4a
	ldr r0, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #0x1c]
	lsl r5, r5, #2
	strb r1, [r0, #3]
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0202E430
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202E41C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A8074: .word 0x021AB038
_021A8078: .word 0x00000551
_021A807C: .word 0x0000054D
_021A8080: .word 0x0000054E
	thumb_func_end ovy215_21a7fe8

	thumb_func_start ovy215_21a8084
ovy215_21a8084: ; 0x021A8084
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a7e18
	cmp r0, #0
	beq _021A8094
	mov r0, #0
	pop {r4, pc}
_021A8094:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _021A80A2
	add r0, r4, #0
	bl ovy215_21a7ea0
	pop {r4, pc}
_021A80A2:
	add r0, r4, #0
	bl ovy215_21a7fe8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a8084

	thumb_func_start ovy215_21a80ac
ovy215_21a80ac: ; 0x021A80AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	mov r1, #2
	mov r2, #0xd
	mov r3, #4
	mov r6, #4
	bl sub_02024E80
	ldr r0, [r5, #0x5c]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x34]
	add r1, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x24]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x15
	ldrsb r1, [r5, r0]
	add r0, #0xeb
	str r1, [sp, #4]
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r3, [r5, #0x34]
	bl sub_02022268
	add r1, r5, #0
	add r1, #0x9c
	ldr r4, [r5, #0x5c]
	str r0, [r1]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21a80ac

	thumb_func_start ovy215_21a8124
ovy215_21a8124: ; 0x021A8124
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _021A81DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A813A: ; jump table
	.short _021A8142 - _021A813A - 2 ; case 0
	.short _021A815E - _021A813A - 2 ; case 1
	.short _021A8186 - _021A813A - 2 ; case 2
	.short _021A81B6 - _021A813A - 2 ; case 3
_021A8142:
	mov r6, #0x4a
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #1
	mov r5, #1
	bl sub_0202E430
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202E41C
_021A815A:
	strh r5, [r4, #8]
	b _021A81DE
_021A815E:
	mov r5, #0x4a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0202E438
	cmp r0, #0
	beq _021A81DE
	ldr r0, [r4, r5]
	bl sub_0202E4AC
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0202E41C
	add r0, r4, #0
	mov r1, #2
	mov r5, #2
	bl ovy215_21a80ac
	b _021A815A
_021A8186:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020223B4
	cmp r0, #2
	bne _021A81DE
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	bne _021A81A6
	bl sub_0203DA48
	cmp r0, #0
	beq _021A81DE
_021A81A6:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020223CC
	mov r0, #3
	strh r0, [r4, #8]
	b _021A81DE
_021A81B6:
	ldr r0, [r4, #0x5c]
	mov r1, #2
	bl sub_02024EEC
	ldr r5, [r4, #0x5c]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl ovy215_21a7ddc
	mov r0, #0
	strh r0, [r4, #8]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_021A81DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy215_21a8124

	thumb_func_start ovy215_21a81e4
ovy215_21a81e4: ; 0x021A81E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #4
	bl sub_0204898C
	mov r4, #0x11
	lsl r4, r4, #4
	str r0, [r5, r4]
	ldr r7, _021A827C ; =0x000039E3
	add r0, r4, #4
	strh r7, [r5, r0]
	add r0, r4, #0
	mov r6, #0
	add r0, #8
	str r6, [r5, r0]
	ldr r0, [r5, #0x20]
	mov r1, #5
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x10
	strh r7, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r6, [r5, r0]
	ldr r0, [r5]
	mov r1, #2
	str r0, [sp, #8]
	add r0, sp, #8
	strb r1, [r0, #4]
	add r1, r5, r4
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r4, #0x17
	strb r4, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	mov r1, #8
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	mov r1, #0x17
	add r1, #0xf1
	ldr r1, [r5, r1]
	add r0, sp, #8
	bl sub_0202D974
	add r4, #0xf5
	str r0, [r5, r4]
	mov r0, #0xa
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0x38]
	mov r1, #0
	mov r2, #0
	mov r3, #0x30
	mov r4, #0x30
	bl sub_02027880
	mov r0, #0x30
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0202E644
	add r4, #0xfc
	ldr r0, [r5, r4]
	bl sub_0202E644
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A827C: .word 0x000039E3
	thumb_func_end ovy215_21a81e4

	thumb_func_start ovy215_21a8280
ovy215_21a8280: ; 0x021A8280
	push {r4, r5, r6, lr}
	mov r4, #0x43
	add r5, r0, #0
	lsl r4, r4, #2
	mov r6, #0
	ldr r0, [r5, r4]
	mvn r6, r6
	bl TaskAppListMenu_ChoosenWait
	cmp r0, #0
	beq _021A82B4
	ldr r0, [r5, r4]
	bl TaskAppListMenu_GetChoosenIndex
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202DA54
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r4, #0x10
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
_021A82B4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21a8280

	thumb_func_start ovy215_21a82b8
ovy215_21a82b8: ; 0x021A82B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bls _021A82C6
	b _021A83D0
_021A82C6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A82D2: ; jump table
	.short _021A82DA - _021A82D2 - 2 ; case 0
	.short _021A82F2 - _021A82D2 - 2 ; case 1
	.short _021A832C - _021A82D2 - 2 ; case 2
	.short _021A8354 - _021A82D2 - 2 ; case 3
_021A82DA:
	mov r5, #0x4a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0202E41C
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0202E430
	b _021A83D0
_021A82F2:
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0202E438
	cmp r0, #0
	beq _021A8326
	ldr r0, [r4, r5]
	bl sub_0202E4AC
	ldr r0, [r4, r5]
	mov r1, #1
	mov r5, #1
	bl sub_0202E41C
	add r0, r4, #0
	mov r1, #3
	str r5, [r4, #0x10]
	bl ovy215_21a80ac
	add r0, r4, #0
	bl ovy215_21a7ddc
	ldrb r0, [r4, #0x1a]
	strb r0, [r4, #0x1b]
	b _021A83D0
_021A8326:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A832C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020223B4
	cmp r0, #2
	bne _021A834E
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020223CC
	add r0, r4, #0
	bl ovy215_21a81e4
	mov r0, #3
	strh r0, [r4, #8]
_021A834E:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A8354:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202DB70
	add r0, r4, #0
	bl ovy215_21a8280
	add r5, r0, #0
	bpl _021A836E
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A836E:
	ldr r0, [r4, #0x5c]
	mov r1, #2
	bl sub_02024EEC
	ldr r6, [r4, #0x5c]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	mov r6, #0
	strh r6, [r4, #8]
	cmp r5, #0
	bne _021A83A0
	ldr r1, _021A83DC ; =0x0000FFFF
	ldr r0, [r4, #0x1c]
	add sp, #8
	strh r1, [r0]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A83A0:
	ldrb r0, [r4, #0xc]
	str r6, [r4, #0x10]
	add r1, r6, #0
	strb r0, [r4, #0xb]
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #0x38]
	add r2, r6, #0
	mov r3, #0x30
	mov r5, #0x30
	bl sub_02027880
	mov r0, #0x30
	add r0, #0xf8
	ldr r0, [r4, r0]
	bl sub_0202E65C
	add r5, #0xfc
	ldr r0, [r4, r5]
	bl sub_0202E65C
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A83D0:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A83DC: .word 0x0000FFFF
	thumb_func_end ovy215_21a82b8

	thumb_func_start ovy215_21a83e0
ovy215_21a83e0: ; 0x021A83E0
	push {r3, lr}
	bl sub_02046CF0
	bl sub_02046D78
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #4
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #8
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #4
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #8
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0x10
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	pop {r3, pc}
	thumb_func_end ovy215_21a83e0

	thumb_func_start ovy215_21a8444
ovy215_21a8444: ; 0x021A8444
	push {r3, lr}
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _021A8450
	bl sub_020275F8
_021A8450:
	bl sub_0204B7C8
	bl sub_02045A5C
	ldr r3, _021A8468 ; =0x02FE0000
	ldr r1, _021A846C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021A8468: .word 0x02FE0000
_021A846C: .word 0x00003FF8
	thumb_func_end ovy215_21a8444

	thumb_func_start ovy215_21a8470
ovy215_21a8470: ; 0x021A8470
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021A84DC
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _021A84DC
	ldrb r1, [r5, #0x1b]
	ldrb r0, [r5, #0x1a]
	cmp r1, r0
	beq _021A8494
	add r0, r5, #0
	bl ovy215_21a7ddc
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
_021A8494:
	ldrb r0, [r5, #0x18]
	mov r1, #0
	mov r3, #1
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A84E0 ; =0x00007FFF
	mov r4, #1
	str r0, [sp, #4]
	ldrb r2, [r5, #0x1a]
	ldr r0, [r5, #0x38]
	add r2, #0x21
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_02027880
	ldrb r2, [r5, #0x19]
	ldrb r1, [r5, #0x18]
	cmp r2, #0
	beq _021A84CE
	sub r0, r1, #1
	strb r0, [r5, #0x18]
	cmp r1, #1
	bne _021A84DC
	add r0, r2, #0
	eor r0, r4
	add sp, #8
	strb r0, [r5, #0x19]
	pop {r3, r4, r5, pc}
_021A84CE:
	add r0, r1, #1
	strb r0, [r5, #0x18]
	cmp r1, #0x18
	bne _021A84DC
	add r0, r2, #0
	eor r0, r4
	strb r0, [r5, #0x19]
_021A84DC:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A84E0: .word 0x00007FFF
	thumb_func_end ovy215_21a8470

	thumb_func_start ovy215_21a84e4
ovy215_21a84e4: ; 0x021A84E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #3
	bhi _021A8578
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A84FA: ; jump table
	.short _021A8502 - _021A84FA - 2 ; case 0
	.short _021A852A - _021A84FA - 2 ; case 1
	.short _021A8530 - _021A84FA - 2 ; case 2
	.short _021A8536 - _021A84FA - 2 ; case 3
_021A8502:
	ldr r3, [r4]
	mov r0, #0
	lsl r3, r3, #0x10
	mov r1, #2
	mov r2, #0x47
	lsr r3, r3, #0x10
	bl GFL_MsgSysLoadData
	ldr r1, [r4]
	str r0, [r4, #0x20]
	lsl r1, r1, #0x10
	mov r0, #0x80
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl ovy215_21a86cc
	b _021A8578
_021A852A:
	bl ovy215_21a87d4
	b _021A8578
_021A8530:
	bl ovy215_21a8a44
	b _021A8578
_021A8536:
	bl ovy215_21a8d08
	ldr r0, [r4]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, #0x98
	ldr r2, [r4, #0x24]
	ldr r3, [r3]
	mov r0, #0
	mov r1, #8
	mov r5, #0
	bl TaskAppListMenu_Create
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	strh r5, [r4, #8]
	bl ovy215_21a863c
	add r0, r4, #0
	bl ovy215_21a8c48
	add r0, r4, #0
	bl ovy215_21a8b50
	add r0, r4, #0
	bl ovy215_21a8584
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8578:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a84e4

	thumb_func_start ovy215_21a8584
ovy215_21a8584: ; 0x021A8584
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	ldr r0, [r4, #0x38]
	mov r1, #0
	mov r2, #0
	mov r3, #0x70
	bl sub_02027880
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0202778C
	ldr r0, [r4, #0x38]
	bl sub_020275F8
	mov r0, #3
	strb r5, [r4, #0x18]
	strb r5, [r4, #0x19]
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A85F0 ; =0x000004FD
	ldr r3, _021A85F4 ; =0x021AB798
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GFL_HeapAllocate
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xf4
	str r1, [r0]
	mov r0, #3
	bl sub_0203A58C
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r1, _021A85F8 ; =ovy215_21a8470
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	add r4, #0xfc
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A85F0: .word 0x000004FD
_021A85F4: .word 0x021AB798
_021A85F8: .word ovy215_21a8470
	thumb_func_end ovy215_21a8584

	thumb_func_start ovy215_21a85fc
ovy215_21a85fc: ; 0x021A85FC
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a8690
	add r0, r4, #0
	bl ovy215_21a8d58
	add r0, r4, #0
	add r0, #0x28
	beq _021A8616
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
_021A8616:
	ldr r0, [r4, #0x34]
	bl GFL_StrBufFree
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202E1DC
	add r0, r4, #0
	bl ovy215_21a8be0
	add r0, r4, #0
	bl ovy215_21a89fc
	add r0, r4, #0
	bl ovy215_21a87ac
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy215_21a85fc

	thumb_func_start ovy215_21a863c
ovy215_21a863c: ; 0x021A863C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02021998
	mov r4, #0x56
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r2, [r5]
	mov r0, #8
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0204BF1C
	sub r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, r4]
	ldr r3, [r5, #0x24]
	mov r1, #0
	bl sub_02034168
	sub r4, #0x10
	mov r1, #0
	str r0, [r5, r4]
	bl sub_020344B8
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy215_21a863c

	thumb_func_start ovy215_21a8690
ovy215_21a8690: ; 0x021A8690
	push {r3, r4, r5, lr}
	mov r4, #0x52
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_02034264
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	mov r1, #0
	add r0, #0x10
	add r4, #0xc
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a8690

	thumb_func_start sub_021A86BC
sub_021A86BC: ; 0x021A86BC
	ldr r0, _021A86C4 ; =0x021AB078
	ldr r3, _021A86C8 ; =GFL_BGSysSetVRAMBanks
	bx r3
	nop
_021A86C4: .word 0x021AB078
_021A86C8: .word GFL_BGSysSetVRAMBanks
	thumb_func_end sub_021A86BC

	thumb_func_start ovy215_21a86cc
ovy215_21a86cc: ; 0x021A86CC
	push {r3, r4, r5, lr}
	sub sp, #0xb0
	add r4, r0, #0
	bl sub_021A86BC
	ldr r5, _021A87A4 ; =0x021AB0A8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	mov r0, #0
	bl sub_02046DF8
	ldr r5, _021A87A8 ; =0x021AB0B8
	add r3, sp, #0x10
	mov r2, #0x14
_021A86F6:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A86F6
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	add r1, sp, #0x30
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	add r1, sp, #0x50
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	add r1, sp, #0x70
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	add r1, sp, #0x90
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	mov r0, #1
	bl sub_02045738
	mov r0, #2
	bl sub_02045738
	mov r0, #3
	bl sub_02045738
	mov r0, #4
	bl sub_02045738
	ldr r3, [r4]
	mov r0, #0
	lsl r3, r3, #0x10
	mov r1, #0x20
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020450CC
	ldr r3, [r4]
	mov r0, #1
	lsl r3, r3, #0x10
	mov r1, #0x20
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020450CC
	ldr r3, [r4]
	mov r0, #2
	lsl r3, r3, #0x10
	mov r1, #0x20
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020450CC
	ldr r3, [r4]
	mov r0, #3
	lsl r3, r3, #0x10
	mov r1, #0x20
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020450CC
	ldr r3, [r4]
	mov r0, #4
	lsl r3, r3, #0x10
	mov r1, #0x20
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020450CC
	add sp, #0xb0
	pop {r3, r4, r5, pc}
	nop
_021A87A4: .word 0x021AB0A8
_021A87A8: .word 0x021AB0B8
	thumb_func_end ovy215_21a86cc

	thumb_func_start ovy215_21a87ac
ovy215_21a87ac: ; 0x021A87AC
	push {r3, lr}
	mov r0, #4
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	mov r0, #1
	bl sub_02046DF8
	pop {r3, pc}
	thumb_func_end ovy215_21a87ac

	thumb_func_start ovy215_21a87d4
ovy215_21a87d4: ; 0x021A87D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #0x1c]
	lsl r1, r1, #0x10
	ldrb r7, [r0, #0xb]
	mov r0, #0x99
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r2, #4
	mov r3, #0
	mov r6, #0
	bl sub_02024D00
	ldr r0, [r5]
	mov r1, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r2, #6
	mov r3, #0
	bl sub_02024D00
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	lsl r0, r0, #9
	str r0, [sp, #0x14]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	ldr r0, [r5]
	add r1, r7, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x17
	add r2, r6, #0
	mov r3, #0xa0
	bl GFL_BGSysLoadNCLRDefault
	ldr r0, [r5]
	bl sub_02026DC0
	ldr r3, [r5]
	str r0, [r5, #0x38]
	lsl r3, r3, #0x10
	add r1, r6, #0
	mov r2, #0xe0
	lsr r3, r3, #0x10
	bl sub_02026E04
	str r6, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x10
	add r1, r4, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_02026F5C
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x10
	mov r1, #0x17
	mov r2, #7
	lsr r3, r3, #0x10
	bl sub_02026EE8
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x10
	mov r1, #0x17
	mov r2, #5
	lsr r3, r3, #0x10
	bl sub_02026EE8
	add r0, r6, #0
	bl sub_02024C8C
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x10
	mov r1, #5
	lsr r3, r3, #0x10
	bl sub_02026EE8
	mov r0, #1
	bl sub_02024C8C
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x10
	mov r1, #5
	lsr r3, r3, #0x10
	bl sub_02026EE8
	bl sub_020232D8
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldr r1, _021A89F0 ; =0x00002001
	mov r0, #4
	add r2, r6, #0
	add r3, r6, #0
	bl sub_02045604
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #1
	mov r7, #2
	bl GFL_BGSysSetBGEnabledA
	mov r0, #8
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _021A89EA
	ldr r1, [r5]
	mov r0, #0x99
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [sp, #0x14]
	add r4, r0, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, [r5]
	add r2, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0x24
	add r3, r6, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r0, _021A89F4 ; =0x021A7E15
	mov r1, #1
	str r0, [r5, #0x3c]
	ldr r0, _021A89F8 ; =ovy215_21a7e08
	str r0, [r5, #0x40]
	mov r0, #4
	bl GFL_BGSysSetBGEnabledA
_021A89EA:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A89F0: .word 0x00002001
_021A89F4: .word 0x021A7E15
_021A89F8: .word ovy215_21a7e08
	thumb_func_end ovy215_21a87d4

	thumb_func_start ovy215_21a89fc
ovy215_21a89fc: ; 0x021A89FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	mov r4, #0
	bl sub_02026E48
	ldr r0, [r5, #0x38]
	bl sub_02026DE8
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	str r4, [r5, #0x38]
	bl GFL_TCBRemove
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_0203A610
	add r5, #0xf4
	ldr r0, [r5]
	bl GFL_HeapFree
	ldr r0, _021A8A40 ; =0x04000050
	mov r1, #0
	mov r2, #0
	mov r3, #0x1f
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, pc}
	nop
_021A8A40: .word 0x04000050
	thumb_func_end ovy215_21a89fc

	thumb_func_start ovy215_21a8a44
ovy215_21a8a44: ; 0x021A8A44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl BmpWin_InitAllocator
	mov r5, #1
	str r5, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x44]
	mov r7, #4
	str r7, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #3
	mov r2, #3
	mov r3, #0x1a
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x48]
	str r7, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #3
	mov r2, #8
	mov r3, #0x1a
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x4c]
	str r7, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #3
	mov r2, #0xd
	mov r3, #0x1a
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x50]
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #8
	mov r2, #0x13
	mov r3, #0xb
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x54]
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #0x15
	mov r2, #0x13
	mov r3, #8
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x58]
	str r7, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x1c
	str r5, [sp, #8]
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x5c]
	add r5, r4, #0
_021A8AF0:
	lsl r0, r4, #3
	add r1, r6, r0
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, #0x44]
	add r4, r4, #1
	str r0, [r1, #0x60]
	add r1, #0x64
	strb r5, [r1]
	cmp r4, #6
	blt _021A8AF0
	ldr r0, [r6]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02021998
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1]
	mov r7, #0
_021A8B18:
	lsl r0, r5, #2
	add r4, r6, r0
	ldr r0, [r4, #0x44]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	cmp r5, #5
	bge _021A8B44
	ldr r4, [r4, #0x44]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021A8B44:
	add r5, r5, #1
	cmp r5, #7
	blt _021A8B18
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a8a44

	thumb_func_start ovy215_21a8b50
ovy215_21a8b50: ; 0x021A8B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _021A8BD8
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r4, #0
	bl sub_0204898C
	mov r6, #0x13
	lsl r6, r6, #4
	str r0, [r5, r6]
	ldr r7, _021A8BDC ; =0x000039E3
	add r0, r6, #4
	strh r7, [r5, r0]
	add r0, r6, #0
	add r0, #8
	str r4, [r5, r0]
	ldr r0, [r5, #0x20]
	mov r1, #1
	mov r4, #1
	bl sub_0204898C
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r6, #0
	add r0, #0x10
	strh r7, [r5, r0]
	add r0, r6, #0
	add r0, #0x14
	str r4, [r5, r0]
	mov r7, #0xa
	str r7, [sp]
	ldr r0, [r5]
	add r1, r5, r6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xa
	add r0, #0xfe
	ldr r0, [r5, r0]
	mov r2, #0x15
	mov r3, #0x12
	mov r4, #0x12
	bl sub_0202E1F0
	add r1, r6, #0
	sub r1, #8
	str r0, [r5, r1]
	str r7, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, #0xc
	add r4, #0xf6
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	add r1, r5, r1
	mov r2, #0x15
	mov r3, #0x15
	bl sub_0202E1F0
	sub r1, r6, #4
	str r0, [r5, r1]
_021A8BD8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8BDC: .word 0x000039E3
	thumb_func_end ovy215_21a8b50

	thumb_func_start ovy215_21a8be0
ovy215_21a8be0: ; 0x021A8BE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _021A8C0E
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202E34C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0202E34C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r4, #0x14
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
_021A8C0E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r5, #0
	mov r4, #0
	add r0, #0x98
	str r4, [r0]
_021A8C20:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r7, [r6, #0x44]
	add r0, r7, #0
	bl sub_020484B4
	add r0, r7, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r6, #0x44]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #7
	blt _021A8C20
	bl sub_020480A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a8be0

	thumb_func_start ovy215_21a8c48
ovy215_21a8c48: ; 0x021A8C48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x52
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A8C54:
	ldr r0, [r5, #0x1c]
	lsl r6, r4, #3
	add r0, #0x16
	add r0, r0, r6
	bl sub_02029D74
	cmp r0, #0
	beq _021A8C7A
	lsl r1, r4, #2
	ldr r2, [r5, #0x1c]
	add r1, r5, r1
	add r2, #0x16
	lsl r3, r4, #0x18
	ldr r0, [r5, r7]
	ldr r1, [r1, #0x48]
	add r2, r2, r6
	lsr r3, r3, #0x18
	bl sub_020342A4
_021A8C7A:
	add r4, r4, #1
	cmp r4, #3
	blt _021A8C54
	ldr r0, [r5, #0x1c]
	ldr r1, _021A8D04 ; =0x0000FFFF
	ldrh r2, [r0, #0x32]
	cmp r2, r1
	beq _021A8CAC
	mov r2, #0x53
	mov r1, #6
	lsl r2, r2, #2
	strh r1, [r5, r2]
	mov r3, #0
	add r1, r2, #2
	strh r3, [r5, r1]
	ldrh r1, [r0, #0x32]
	add r0, r2, #4
	mov r3, #3
	strh r1, [r5, r0]
	sub r0, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x54]
	add r2, r5, r2
	bl sub_020342A4
_021A8CAC:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _021A8CFE
	add r0, r5, #0
	add r0, #0x98
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0
	ldr r0, [r0, #0xc]
	mov r3, #2
	str r0, [sp]
	ldr r0, [r5, #0x24]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02021C7C
	add r0, r5, #0
	ldr r4, [r5, #0x58]
	mov r1, #1
	add r0, #0x8c
	strb r1, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
_021A8CFE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A8D04: .word 0x0000FFFF
	thumb_func_end ovy215_21a8c48

	thumb_func_start ovy215_21a8d08
ovy215_21a8d08: ; 0x021A8D08
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4]
	ldr r0, _021A8D50 ; =0x02093F08
	lsl r2, r2, #0x10
	ldr r1, _021A8D54 ; =0x021AB078
	lsr r2, r2, #0x10
	bl Oam_CreateSystem
	ldr r2, [r4]
	mov r0, #4
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_0204BF1C
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	ldr r1, [r4]
	mov r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02042BA8
	pop {r4, pc}
	.align 2, 0
_021A8D50: .word 0x02093F08
_021A8D54: .word 0x021AB078
	thumb_func_end ovy215_21a8d08

	thumb_func_start ovy215_21a8d58
ovy215_21a8d58: ; 0x021A8D58
	push {r3, lr}
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, pc}
	thumb_func_end ovy215_21a8d58

	thumb_func_start ovy215_21a8d68
ovy215_21a8d68: ; 0x021A8D68
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x65
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x65
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x34
	mov r6, #0
	blx MIi_CpuClearFast
	str r5, [r4, #4]
	ldr r0, [r5]
	bl sub_02009790
	str r0, [r4]
	mov r0, #8
	str r0, [r4, #0x28]
	mov r0, #0x65
	str r6, [r4, #0x2c]
	bl CreateGameProcManager
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy215_21a8d68

	thumb_func_start ovy215_21a8db0
ovy215_21a8db0: ; 0x021A8DB0
	push {r3, lr}
	add r0, r3, #0
	bl ovy215_21aa188
	cmp r0, #0
	bne _021A8DC0
	mov r0, #1
	pop {r3, pc}
_021A8DC0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy215_21a8db0

	thumb_func_start ovy215_21a8dc4
ovy215_21a8dc4: ; 0x021A8DC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r3, #0x30]
	bl FreeGameProcManager
	add r0, r4, #0
	bl GFL_ProcReleaseSubsystem
	mov r0, #0x65
	bl sub_0203A2BC
	mov r0, #0x65
	bl GFL_HeapDelete
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy215_21a8dc4

	thumb_func_start ovy215_21a8de4
ovy215_21a8de4: ; 0x021A8DE4
	push {r3, lr}
	bl sub_02045A5C
	bl sub_0204B7C8
	pop {r3, pc}
	thumb_func_end ovy215_21a8de4

	thumb_func_start sub_021A8DF0
sub_021A8DF0: ; 0x021A8DF0
	ldr r0, _021A8DF8 ; =0x021AB194
	ldr r3, _021A8DFC ; =GFL_BGSysSetVRAMBanks
	bx r3
	nop
_021A8DF8: .word 0x021AB194
_021A8DFC: .word GFL_BGSysSetVRAMBanks
	thumb_func_end sub_021A8DF0

	thumb_func_start ovy215_21a8e00
ovy215_21a8e00: ; 0x021A8E00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x110
	mov r0, #0x66
	mov r5, #0x66
	bl GFL_BGSysCreate
	ldr r4, _021A8FD8 ; =0x021AB1C4
	add r3, sp, #0x100
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r4, _021A8FDC ; =0x021AB294
	add r3, sp, #0xe0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	mov r4, #4
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	mov r7, #0x20
	bl sub_020450CC
	ldr r6, _021A8FE0 ; =0x021AB254
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	bl sub_020450CC
	ldr r6, _021A8FE4 ; =0x021AB274
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	bl sub_020450CC
	ldr r6, _021A8FE8 ; =0x021AB234
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	ldr r6, _021A8FEC ; =0x021AB214
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	ldr r6, _021A8FF0 ; =0x021AB1F4
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	add r1, r7, #0
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	ldr r5, _021A8FF4 ; =0x021AB2B4
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	ldr r5, _021A8FF8 ; =0x021AB1D4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	add r0, r4, #0
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #8
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #2
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add r0, r4, #0
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #8
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8FD8: .word 0x021AB1C4
_021A8FDC: .word 0x021AB294
_021A8FE0: .word 0x021AB254
_021A8FE4: .word 0x021AB274
_021A8FE8: .word 0x021AB234
_021A8FEC: .word 0x021AB214
_021A8FF0: .word 0x021AB1F4
_021A8FF4: .word 0x021AB2B4
_021A8FF8: .word 0x021AB1D4
	thumb_func_end ovy215_21a8e00

	thumb_func_start ovy215_21a8ffc
ovy215_21a8ffc: ; 0x021A8FFC
	push {r3, lr}
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy215_21a8ffc

	thumb_func_start ovy215_21a9034
ovy215_21a9034: ; 0x021A9034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0x99
	mov r1, #0x66
	mov r5, #0x66
	bl GFL_ArcSysCreateFileHandle
	mov r6, #0
	str r6, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0x2a
	mov r2, #7
	mov r3, #0
	add r4, r0, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	mov r6, #0x27
	bl GFL_G2DIOLoadArcNCLRDefault
	str r5, [sp]
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	add r3, sp, #0x10
	bl sub_0204B28C
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r7, #8]
	ldr r5, [r0, #0x14]
	add r6, #0xd9
	add r0, r5, r6
	add r1, r1, #4
	mov r2, #0x20
	blx MIi_CpuCopyFast
	mov r0, #0x20
	ldr r1, [r7, #8]
	add r0, #0xe0
	add r0, r5, r0
	add r1, #0x24
	mov r2, #0x20
	blx MIi_CpuCopyFast
	ldr r0, [sp, #0xc]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9034

	thumb_func_start ovy215_21a9110
ovy215_21a9110: ; 0x021A9110
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _021A9160 ; =0x000003E2
	mov r5, #0x66
	mov r0, #0
	mov r2, #0xd
	mov r3, #0
	str r5, [sp]
	bl sub_02024D00
	mov r6, #0x20
	mov r4, #7
	str r6, [sp]
	lsl r4, r4, #6
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r4, #0
	bl GFL_BGSysLoadNCLRDefault
	str r6, [sp]
	add r4, #0x20
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r4, #0
	bl GFL_BGSysLoadNCLRDefault
	str r6, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r4, #0
	str r5, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A9160: .word 0x000003E2
	thumb_func_end ovy215_21a9110

	thumb_func_start ovy215_21a9164
ovy215_21a9164: ; 0x021A9164
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #2
	mov r1, #0xb
	mov r2, #0x66
	bl sub_020330C8
	ldr r1, [r5, #8]
	mov r4, #0
	str r0, [r1]
	mov r6, #4
	mov r7, #2
_021A917C:
	str r6, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #0
	ldr r0, [r0]
	add r2, r7, #0
	mov r3, #0xe
	bl sub_02033150
	add r4, r4, #1
	cmp r4, #0xa
	blo _021A917C
	str r6, [sp]
	ldr r0, [r5, #8]
	mov r1, #0xa
	ldr r0, [r0]
	mov r4, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_02033150
	str r4, [sp]
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x99
	mov r3, #0x28
	bl sub_020331F4
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0]
	bl sub_0203368C
	add r6, r0, #0
	mov r7, #0x70
_021A91C2:
	ldr r0, [r5, #8]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0203368C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	blx MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #0xa
	bls _021A91C2
	mov r4, #0
_021A91DE:
	lsl r2, r4, #0x1f
	ldr r0, [r5, #8]
	lsr r2, r2, #0x1b
	add r2, r2, #1
	lsr r3, r4, #1
	lsl r2, r2, #0x18
	lsl r3, r3, #0x1a
	ldr r0, [r0]
	add r1, r4, #0
	asr r2, r2, #0x18
	asr r3, r3, #0x18
	bl sub_02033254
	add r4, r4, #1
	cmp r4, #0xa
	blo _021A91DE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a9164

	thumb_func_start sub_021A9200
sub_021A9200: ; 0x021A9200
	ldr r0, [r0, #8]
	ldr r3, _021A9208 ; =sub_02033120
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021A9208: .word sub_02033120
	thumb_func_end sub_021A9200

	thumb_func_start ovy215_21a920c
ovy215_21a920c: ; 0x021A920C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r2, #0x46
	mov r3, #0x66
	mov r6, #2
	bl GFL_MsgSysLoadData
	mov r4, #0x1d
	lsl r4, r4, #4
	str r0, [r5, r4]
	mov r0, #0x66
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #4
	str r0, [r5, r1]
	lsl r0, r6, #9
	mov r1, #0x66
	bl GFL_StrBufCreate
	add r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21a920c

	thumb_func_start ovy215_21a923c
ovy215_21a923c: ; 0x021A923C
	push {r3, r4, r5, lr}
	mov r4, #0x76
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	sub r4, #8
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy215_21a923c

	thumb_func_start ovy215_21a925c
ovy215_21a925c: ; 0x021A925C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x66
	str r0, [sp]
	mov r5, #0xd1
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r1, [r4, #8]
	lsl r5, r5, #2
	add r2, r1, r5
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r2, #0x15
	strb r2, [r0, #0x10]
	mov r2, #8
	strb r2, [r0, #0x11]
	mov r2, #0xa
	strb r2, [r0, #0x12]
	mov r2, #3
	strb r2, [r0, #0x13]
	add r2, r5, #0
	sub r2, #0x38
	ldr r1, [r1, r2]
	add r0, sp, #0
	bl sub_0202D974
	ldr r1, [r4, #8]
	sub r5, #0x34
	str r0, [r1, r5]
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy215_21a925c

	thumb_func_start ovy215_21a92a0
ovy215_21a92a0: ; 0x021A92A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x66
	str r0, [sp]
	mov r3, #0x71
	lsl r3, r3, #2
	ldr r6, [r5, #8]
	str r3, [sp, #8]
	ldr r2, [r5, #0x18]
	ldr r3, [r6, r3]
	mov r0, #0
	mov r1, #5
	mov r4, #0
	bl TaskAppListMenu_Create
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r2, [r5, #8]
	str r1, [sp, #4]
	str r0, [r2, r1]
	ldr r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
	add r0, r1, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	add r0, r1, #0
	add r0, #0x10
	str r0, [sp, #4]
_021A92E6:
	ldr r0, _021A9384 ; =0x021AB174
	lsl r1, r4, #3
	add r7, r0, r1
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	ldr r2, [r5, #8]
	ldr r0, [sp, #8]
	ldr r0, [r2, r0]
	ldr r2, _021A9384 ; =0x021AB174
	ldr r1, [r2, r1]
	bl sub_0204898C
	ldr r1, [r5, #8]
	add r2, r1, r6
	ldr r1, [sp, #0x10]
	str r0, [r2, r1]
	ldr r0, [r5, #8]
	ldr r1, _021A9388 ; =0x000039E3
	add r2, r0, r6
	ldr r0, [sp, #0xc]
	strh r1, [r2, r0]
	ldr r0, [r5, #8]
	ldr r2, [r7, #4]
	add r1, r0, r6
	ldr r0, [sp, #4]
	str r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _021A92E6
	mov r0, #0xd1
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x18]
	mov r0, #0xd1
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #8
	mov r4, #0
	str r0, [sp, #0x14]
_021A933A:
	ldr r0, _021A938C ; =0x021AB164
	lsl r1, r4, #3
	add r7, r0, r1
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x1d
	ldr r2, [r5, #8]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	ldr r2, _021A938C ; =0x021AB164
	ldr r1, [r2, r1]
	bl sub_0204898C
	ldr r1, [r5, #8]
	add r2, r1, r6
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r5, #8]
	ldr r1, _021A9388 ; =0x000039E3
	add r2, r0, r6
	ldr r0, [sp, #0x18]
	strh r1, [r2, r0]
	ldr r0, [r5, #8]
	ldr r2, [r7, #4]
	add r1, r0, r6
	ldr r0, [sp, #0x14]
	str r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _021A933A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A9384: .word 0x021AB174
_021A9388: .word 0x000039E3
_021A938C: .word 0x021AB164
	thumb_func_end ovy215_21a92a0

	thumb_func_start ovy215_21a9390
ovy215_21a9390: ; 0x021A9390
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xc5
	add r5, r0, #0
	mov r4, #0
	mov r7, #0xc
	lsl r6, r6, #2
_021A939C:
	add r0, r4, #0
	ldr r1, [r5, #8]
	mul r0, r7
	add r0, r1, r0
	ldr r0, [r0, r6]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #4
	blt _021A939C
	mov r4, #0xd1
	ldr r0, [r5, #8]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl GFL_StrBufFree
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0xc
	ldr r0, [r1, r0]
	bl GFL_StrBufFree
	ldr r0, [r5, #8]
	sub r4, #0x38
	ldr r0, [r0, r4]
	bl sub_0202E1DC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a9390

	thumb_func_start ovy215_21a93d4
ovy215_21a93d4: ; 0x021A93D4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x66
	str r0, [sp]
	mov r5, #0xc5
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r1, [r4, #8]
	lsl r5, r5, #2
	add r2, r1, r5
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r2, #0x14
	strb r2, [r0, #0x10]
	mov r2, #0xc
	strb r2, [r0, #0x11]
	strb r2, [r0, #0x12]
	mov r2, #3
	strb r2, [r0, #0x13]
	add r2, r5, #0
	sub r2, #8
	ldr r1, [r1, r2]
	add r0, sp, #0
	bl sub_0202D974
	ldr r2, [r4, #8]
	sub r1, r5, #4
	str r0, [r2, r1]
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a93d4

	thumb_func_start sub_021A9418
sub_021A9418: ; 0x021A9418
	ldr r1, [r0, #8]
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021A9424 ; =sub_0202DA54
	bx r3
	.align 2, 0
_021A9424: .word sub_0202DA54
	thumb_func_end sub_021A9418

	thumb_func_start ovy215_21a9428
ovy215_21a9428: ; 0x021A9428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r7, #0xbf
	ldr r0, [r5, #8]
	mov r4, #0
	lsl r7, r7, #2
	strh r4, [r0, r7]
	add r0, r7, #0
	str r0, [sp, #0xc]
	sub r0, #0x14
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #8]
	sub r0, #0x14
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	sub r0, #0x64
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp]
	sub r0, #0x64
	str r0, [sp]
_021A9458:
	ldr r0, [r5, #8]
	mov r1, #0xff
	add r2, r0, r4
	ldr r0, [sp, #8]
	mov r3, #0x66
	strb r1, [r2, r0]
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	lsl r6, r4, #2
	bl sub_020097F4
	ldr r1, [r5, #8]
	add r2, r1, r6
	ldr r1, [sp, #4]
	str r0, [r2, r1]
	ldr r0, [r5, #8]
	add r1, r0, r6
	ldr r0, [sp]
	ldr r0, [r1, r0]
	bl sub_020096A8
	cmp r0, #1
	bne _021A949A
	ldr r1, [r5, #8]
	ldrh r0, [r1, r7]
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	strb r4, [r1, r0]
	ldr r1, [r5, #8]
	ldrh r0, [r1, r7]
	add r0, r0, #1
	strh r0, [r1, r7]
_021A949A:
	add r4, r4, #1
	cmp r4, #0x14
	blo _021A9458
	ldr r4, [r5, #8]
	mov r5, #0xbf
	lsl r5, r5, #2
	ldrh r0, [r4, r5]
	cmp r0, #0
	bne _021A94B6
	mov r1, #0
	add r0, r5, #2
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A94B6:
	sub r0, r0, #1
	mov r1, #0xa
	blx sub_0208D65C
	add r1, r5, #2
	strh r0, [r4, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9428

	thumb_func_start ovy215_21a94c8
ovy215_21a94c8: ; 0x021A94C8
	push {r4, r5, r6, lr}
	mov r6, #0xa6
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A94D2:
	ldr r1, [r5, #8]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, r6]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #0x14
	blo _021A94D2
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy215_21a94c8

	thumb_func_start ovy215_21a94e8
ovy215_21a94e8: ; 0x021A94E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x1c]
	mov r0, #0xa
	mov r4, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0xba
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, r2
	str r0, [sp]
	add r0, r2, #2
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r6, #0
_021A950C:
	ldr r0, [sp]
	ldrb r3, [r0, r6]
	cmp r3, #0xff
	bne _021A9520
	ldr r0, [r5, #8]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_02033378
	b _021A9534
_021A9520:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy215_21a9910
	ldr r0, [r5, #8]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_02033360
_021A9534:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xa
	blo _021A950C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a94e8

	thumb_func_start ovy215_21a954c
ovy215_21a954c: ; 0x021A954C
	push {r4, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0x1f]
	mov r1, #0xa
	mov r2, #0x16
	bl ovy215_21a9910
	ldr r0, [r4, #8]
	mov r1, #0xa
	ldr r0, [r0]
	mov r2, #4
	mov r3, #7
	bl sub_02033254
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a954c

	thumb_func_start ovy215_21a956c
ovy215_21a956c: ; 0x021A956C
	push {r4, lr}
	sub sp, #8
	mov r2, #3
	ldr r1, [r0, #8]
	lsl r2, r2, #8
	add r4, r1, r2
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _021A9588
	cmp r2, #1
	beq _021A95DA
	cmp r2, #2
	beq _021A9638
	b _021A964A
_021A9588:
	ldrb r0, [r4]
	lsl r2, r0, #0x1f
	lsr r2, r2, #0x1f
	bne _021A95AC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	mov r2, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0204C378
	b _021A95D2
_021A95AC:
	ldrb r0, [r4, #7]
	str r0, [sp]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	ldrb r0, [r4]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r4, #6]
	lsr r0, r0, #0x19
	bl sub_0204566C
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bl sub_02045B7C
_021A95D2:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021A964A
_021A95DA:
	ldrb r1, [r4, #3]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrb r1, [r4, #3]
	cmp r1, #4
	bne _021A964A
	ldrb r2, [r4]
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1f
	bne _021A960C
	ldr r1, [r0, #8]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x19
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_0204C378
	b _021A9632
_021A960C:
	ldrb r0, [r4, #7]
	str r0, [sp]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	ldrb r0, [r4]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r4, #6]
	lsr r0, r0, #0x19
	bl sub_0204566C
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bl sub_02045B7C
_021A9632:
	mov r0, #0
	strb r0, [r4, #3]
	b _021A95D2
_021A9638:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _021A964A
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021A964A:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy215_21a956c

	thumb_func_start ovy215_21a9650
ovy215_21a9650: ; 0x021A9650
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x99
	mov r1, #0x66
	mov r6, #0x66
	bl GFL_ArcSysCreateFileHandle
	add r5, r0, #0
	ldrb r0, [r4, #0x1f]
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02009750
	add r4, r0, #0
	mov r7, #0
	add r1, r4, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, #0xc
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0x40
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	add r4, #0x18
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a9650

	thumb_func_start ovy215_21a96c0
ovy215_21a96c0: ; 0x021A96C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x66
	mov r6, #0x66
	bl sub_02021998
	mov r4, #0xdb
	ldr r1, [r5, #8]
	lsl r4, r4, #2
	str r0, [r1, r4]
	mov r0, #8
	mov r1, #2
	mov r2, #0x66
	bl sub_0204BF1C
	ldr r2, [r5, #8]
	sub r1, r4, #4
	str r0, [r2, r1]
	ldr r2, [r5, #8]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, r1, #0
	ldr r0, [r2, r0]
	ldr r2, [r2, r4]
	ldr r3, [r5, #0x18]
	mov r1, #1
	bl sub_02034168
	add r1, r4, #0
	ldr r2, [r5, #8]
	sub r1, #0x10
	str r0, [r2, r1]
	ldr r0, [r5, #8]
	sub r4, #0x10
	ldr r0, [r0, r4]
	mov r1, #0
	bl sub_020344B8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy215_21a96c0

	thumb_func_start ovy215_21a9718
ovy215_21a9718: ; 0x021A9718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xd7
	ldr r0, [r5, #8]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_02034264
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x10
	ldr r0, [r1, r0]
	bl sub_02021A18
	ldr r0, [r5, #8]
	add r4, #0xc
	ldr r0, [r0, r4]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy215_21a9718

	thumb_func_start ovy215_21a9740
ovy215_21a9740: ; 0x021A9740
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0x66
	mov r0, #0x66
	bl BmpWin_InitAllocator
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	str r0, [r5, #0x18]
	mov r0, #0x66
	mov r1, #0x66
	mov r2, #0x20
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	mov r6, #0x73
	ldr r1, [r5, #8]
	lsl r6, r6, #2
	str r0, [r1, r6]
	mov r0, #0x66
	bl sub_02021998
	ldr r1, [r5, #8]
	sub r6, #8
	str r0, [r1, r6]
	add r6, r4, #0
_021A9782:
	mov r0, #0xc
	ldr r1, _021A9828 ; =0x021AB2D4
	mul r0, r4
	add r3, r1, r0
	ldrb r1, [r3, #7]
	ldrb r2, [r3, #5]
	lsl r7, r4, #2
	str r1, [sp]
	ldrh r1, [r3, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r1, _021A9828 ; =0x021AB2D4
	ldr r0, [r1, r0]
	ldrb r1, [r3, #4]
	lsl r0, r0, #0x18
	ldrb r3, [r3, #6]
	lsr r0, r0, #0x18
	bl BmpWin_CreateDynamic
	ldr r1, [r5, #8]
	add r1, r1, r7
	str r0, [r1, #0x44]
	ldr r3, [r5, #8]
	lsl r0, r4, #3
	add r1, r3, #0
	add r3, r3, r7
	add r1, #0xc4
	ldr r3, [r3, #0x44]
	add r2, r1, r0
	str r3, [r1, r0]
	add r4, r4, #1
	strb r6, [r2, #4]
	cmp r4, #0x20
	blo _021A9782
	mov r7, #4
_021A97CE:
	ldr r0, [r5, #8]
	lsl r4, r6, #2
	add r0, r0, r4
	ldr r0, [r0, #0x44]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #0x44]
	bl BmpWin_FlushChar
	add r6, r6, #1
	cmp r6, #0x16
	blo _021A97CE
	ldr r0, [r5, #8]
	ldr r4, [r0, #0x44]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, #8]
	ldr r4, [r0, #0x48]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A9828: .word 0x021AB2D4
	thumb_func_end ovy215_21a9740

	thumb_func_start ovy215_21a982c
ovy215_21a982c: ; 0x021A982C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0x71
	ldr r0, [r5, #8]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_02021A18
	ldr r0, [r5, #8]
	add r4, #8
	ldr r0, [r0, r4]
	bl GFL_TCBExMgrFree
	mov r4, #0
_021A9848:
	ldr r1, [r5, #8]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, #0x44]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #0x20
	blo _021A9848
	ldr r0, [r5, #0x18]
	bl sub_02022DA8
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a982c

	thumb_func_start ovy215_21a9868
ovy215_21a9868: ; 0x021A9868
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x30]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r0, #1
	bne _021A9886
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	b _021A9896
_021A9886:
	cmp r0, #2
	bne _021A9898
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsr r0, r0, #1
_021A9896:
	sub r4, r4, r0
_021A9898:
	ldr r0, [r6]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r3, [sp, #0x24]
	lsl r2, r4, #0x10
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x20
	ldrh r0, [r0, #0xc]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r6, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a9868

	thumb_func_start ovy215_21a98c4
ovy215_21a98c4: ; 0x021A98C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r3, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, #0xc4
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r2, r4, #3
	str r0, [sp, #8]
	add r0, sp, #0x28
	ldrh r0, [r0, #0xc]
	add r2, r3, r2
	mov r3, #0x71
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	lsl r3, r3, #2
	str r0, [sp, #0x10]
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	ldr r3, [r5, r3]
	add r1, r6, #0
	bl ovy215_21a9868
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy215_21a98c4

	thumb_func_start ovy215_21a9910
ovy215_21a9910: ; 0x021A9910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0x66
	str r4, [sp]
	str r0, [sp, #0x14]
	ldr r0, [r0, #8]
	str r1, [sp, #0x18]
	add r5, r2, #0
	add r6, r3, #0
	add r0, r0, #4
	mov r1, #1
	mov r2, #1
	mov r3, #0x20
	bl sub_02046E74
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r4, [sp]
	ldr r0, [r0, #8]
	mov r1, #1
	add r0, #0x24
	mov r2, #1
	mov r3, #0x20
	bl sub_02046E74
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r5, #2
	ldr r0, [r0, #8]
	str r0, [sp, #0x24]
	add r0, r0, r1
	ldr r4, [r0, #0x44]
	lsl r1, r6, #2
	ldr r0, [sp, #0x24]
	mov r6, #0xa6
	add r0, r0, r1
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	mov r1, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, #0xc4
	str r0, [sp, #0x24]
	lsl r0, r5, #3
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	bl BmpWin_BitmapFill
	add r0, r7, #0
	mov r1, #4
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x20]
	bl sub_02009734
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	sub r6, #0xc0
	ldr r0, [r0, #8]
	ldr r0, [r0, r6]
	bl sub_02048614
	mov r5, #0
_021A998E:
	lsl r6, r5, #3
	add r0, r4, #0
	bl BmpWin_GetBitmap
	str r6, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _021A9A4C ; =0x0000FFFF
	mov r2, #0
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	mov r3, #0
	bl sub_02047008
	add r0, r4, #0
	bl BmpWin_GetBitmap
	str r6, [sp]
	mov r1, #8
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _021A9A4C ; =0x0000FFFF
	mov r2, #0
	str r1, [sp, #0x10]
	add r1, r7, #0
	mov r3, #0
	bl sub_02047008
	add r5, r5, #1
	cmp r5, #8
	blo _021A998E
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #4
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x20]
	bl sub_0200974C
	cmp r0, #0
	bne _021A99FE
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	str r0, [sp, #8]
	ldr r0, _021A9A50 ; =0x000014C4
	b _021A9A10
_021A99FE:
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	str r0, [sp, #8]
	ldr r0, _021A9A54 ; =0x00001D04
_021A9A10:
	str r0, [sp, #0xc]
	mov r0, #0
	mov r6, #0x76
	str r0, [sp, #0x10]
	lsl r6, r6, #2
	ldr r1, [r3, r6]
	sub r6, #0x14
	ldr r5, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r3, [r3, r6]
	add r0, r4, #0
	add r2, r5, r2
	bl ovy215_21a9868
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #8]
	add r2, r4, #0
	ldr r0, [r0]
	bl sub_020335C4
	add r0, r7, #0
	bl GFL_BitmapFree
	ldr r0, [sp, #0x1c]
	bl GFL_BitmapFree
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A9A4C: .word 0x0000FFFF
_021A9A50: .word 0x000014C4
_021A9A54: .word 0x00001D04
	thumb_func_end ovy215_21a9910

	thumb_func_start ovy215_21a9a58
ovy215_21a9a58: ; 0x021A9A58
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r0, #0xac
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	mov r1, #0x34
	str r1, [sp]
	str r4, [sp, #4]
	ldr r1, [r5, #0x18]
	mov r2, #0x1a
	str r1, [sp, #8]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x1d
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r3, #0
	bl ovy215_21a98c4
	ldr r0, [r5, #8]
	add r0, #0xac
	ldr r4, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy215_21a9a58

	thumb_func_start sub_021A9AB4
sub_021A9AB4: ; 0x021A9AB4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9AB4

	thumb_func_start sub_021A9AB8
sub_021A9AB8: ; 0x021A9AB8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9AB8

	thumb_func_start ovy215_21a9abc
ovy215_21a9abc: ; 0x021A9ABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldrb r0, [r7, #0x1f]
	mov r4, #0xa6
	ldr r1, [r7, #8]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r4, r4, #2
	ldr r5, [r0, r4]
	mov r0, #0x10
	mov r1, #0x66
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02009734
	add r0, r5, #0
	bl sub_02009734
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02048614
	add r0, r5, #0
	bl sub_0200974C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	sub r4, #0xc4
	ldr r0, [r0, r4]
	mov r1, #0
	add r2, r6, #0
	bl sub_0202437C
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9abc

	thumb_func_start ovy215_21a9b18
ovy215_21a9b18: ; 0x021A9B18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r0, #0xa8
	ldr r4, [r0]
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r6, #0xf
	bl BmpWin_BitmapFill
	bl sub_02017BCC
	ldr r1, [r5, #0x18]
	mov r7, #0x73
	str r1, [sp]
	str r0, [sp, #4]
	lsl r7, r7, #2
	ldr r0, [r5, #8]
	add r3, r7, #0
	ldr r0, [r0, r7]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x66
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, r4, #0
	ldr r4, [r5, #8]
	add r3, #0xc
	ldr r3, [r4, r3]
	mov r2, #0
	bl sub_02022268
	ldr r2, [r5, #8]
	sub r1, r7, #4
	str r0, [r2, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9b18

	thumb_func_start ovy215_21a9b6c
ovy215_21a9b6c: ; 0x021A9B6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	bl ovy215_21a9abc
	mov r4, #0x1d
	ldr r0, [r5, #8]
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	mov r1, #9
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #4
	ldr r1, [r5, #8]
	add r4, #8
	ldr r0, [r1, r0]
	ldr r1, [r1, r4]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	bl ovy215_21a9b18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21a9b6c

	thumb_func_start ovy215_21a9ba4
ovy215_21a9ba4: ; 0x021A9BA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _021A9BD8 ; =0x000003E2
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #2
	mov r3, #0xd
	bl sub_02024E80
	ldr r0, [r4, #8]
	add r0, #0xa8
	ldr r4, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	nop
_021A9BD8: .word 0x000003E2
	thumb_func_end ovy215_21a9ba4

	thumb_func_start ovy215_21a9bdc
ovy215_21a9bdc: ; 0x021A9BDC
	push {r3, lr}
	ldr r0, [r0, #8]
	mov r1, #2
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_02024EEC
	mov r0, #0
	bl sub_02045B7C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9bdc

	thumb_func_start ovy215_21a9bf4
ovy215_21a9bf4: ; 0x021A9BF4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #4
	bhi _021A9C54
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A9C08: ; jump table
	.short _021A9C12 - _021A9C08 - 2 ; case 0
	.short _021A9C1E - _021A9C08 - 2 ; case 1
	.short _021A9C2A - _021A9C08 - 2 ; case 2
	.short _021A9C36 - _021A9C08 - 2 ; case 3
	.short _021A9C42 - _021A9C08 - 2 ; case 4
_021A9C12:
	mov r2, #0x1d
	ldr r3, [r4, #8]
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	mov r1, #0xa
	b _021A9C4C
_021A9C1E:
	mov r2, #0x1d
	ldr r3, [r4, #8]
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	mov r1, #0xb
	b _021A9C4C
_021A9C2A:
	mov r2, #0x1d
	ldr r3, [r4, #8]
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	mov r1, #0xc
	b _021A9C4C
_021A9C36:
	mov r2, #0x1d
	ldr r3, [r4, #8]
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	mov r1, #0xd
	b _021A9C4C
_021A9C42:
	mov r2, #0x1d
	ldr r3, [r4, #8]
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	mov r1, #0xe
_021A9C4C:
	add r2, #8
	ldr r2, [r3, r2]
	bl GFL_MsgDataLoadStrbuf
_021A9C54:
	add r0, r4, #0
	bl ovy215_21a9b18
	pop {r4, pc}
	thumb_func_end ovy215_21a9bf4

	thumb_func_start ovy215_21a9c5c
ovy215_21a9c5c: ; 0x021A9C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	sub r0, #0xc4
	mov r4, #0
	str r0, [sp, #0x14]
_021A9C6E:
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_0200976C
	add r7, r0, #0
	bl sub_02029D74
	cmp r0, #0
	beq _021A9CC4
	mov r0, #0xd7
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	lsl r6, r4, #2
	ldr r0, [r1, r0]
	add r1, r1, r6
	add r1, #0xb0
	lsl r3, r4, #0x18
	ldr r1, [r1]
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl sub_020342A4
	ldr r0, [r5, #8]
	add r0, r0, r6
	add r0, #0xb0
	ldr r6, [r0]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A9CC4:
	add r4, r4, #1
	cmp r4, #3
	blo _021A9C6E
	mov r4, #0x36
	ldr r0, [r5, #8]
	mov r1, #6
	lsl r4, r4, #4
	strh r1, [r0, r4]
	ldr r1, [r5, #8]
	mov r2, #0
	add r0, r4, #2
	strh r2, [r1, r0]
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	add r0, r4, #0
	sub r0, #0xc8
	ldr r0, [r1, r0]
	bl sub_02009764
	ldr r2, [r5, #8]
	add r1, r4, #4
	strh r0, [r2, r1]
	ldr r2, [r5, #8]
	add r0, r1, #0
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _021A9D10
	add r1, r2, #0
	sub r0, r4, #4
	add r1, #0xbc
	ldr r0, [r2, r0]
	ldr r1, [r1]
	add r2, r2, r4
	mov r3, #3
	bl sub_020342A4
_021A9D10:
	ldr r0, [r5, #8]
	add r0, #0xc0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	ldrb r0, [r5, #0x1f]
	mov r4, #0xa6
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_02009734
	add r1, r0, #0
	add r0, r4, #0
	ldr r2, [r5, #8]
	sub r0, #0xc0
	ldr r0, [r2, r0]
	bl sub_02048614
	ldr r3, [r5, #8]
	add r1, r4, #0
	add r2, r4, #0
	sub r2, #0xdc
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	sub r1, #0xc0
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	add r0, r3, #0
	str r6, [sp, #0x10]
	add r0, #0xc0
	sub r4, #0xd4
	ldr r0, [r0]
	ldr r1, [r3, r1]
	add r2, r3, r2
	ldr r3, [r3, r4]
	bl ovy215_21a9868
	ldr r0, [r5, #8]
	add r0, #0xc0
	ldr r4, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21a9c5c

	thumb_func_start ovy215_21a9d90
ovy215_21a9d90: ; 0x021A9D90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r7, #0x21
	lsl r7, r7, #4
	mov r1, #0
	add r2, r7, #0
	add r3, r7, #0
	add r4, r1, #0
	add r2, #0x20
	add r3, #0x40
_021A9DB4:
	ldr r6, [r5, #8]
	lsl r0, r1, #2
	add r6, r6, r0
	str r4, [r6, r7]
	ldr r6, [r5, #8]
	add r1, r1, #1
	add r6, r6, r0
	str r4, [r6, r2]
	ldr r6, [r5, #8]
	add r0, r6, r0
	str r4, [r0, r3]
	cmp r1, #8
	blo _021A9DB4
	ldr r0, [r5, #8]
	bl ovy215_21aa020
	ldr r0, [r5, #8]
	bl ovy215_21a9e90
	ldr r0, [r5, #8]
	bl ovy215_21aa0bc
	ldr r0, [r5, #8]
	bl ovy215_21aa044
	mov r7, #0x1f
	lsl r7, r7, #4
_021A9DEA:
	mov r1, #0x34
	add r2, r4, #0
	mul r2, r1
	ldr r1, _021A9E60 ; =0x021AB470
	ldr r0, [r5, #8]
	add r1, r1, r2
	lsl r6, r4, #2
	bl ovy215_21a9ef4
	ldr r1, [r5, #8]
	add r1, r1, r6
	str r0, [r1, r7]
	ldr r0, [r5, #8]
	mov r1, #1
	add r0, r0, r6
	ldr r0, [r0, r7]
	bl Oam_EnableOamAnim
	add r4, r4, #1
	cmp r4, #8
	blo _021A9DEA
	mov r1, #0xbf
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	ldrh r1, [r0, r1]
	cmp r1, #0xa
	bhi _021A9E2C
	mov r1, #0
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r5, #8]
	b _021A9E36
_021A9E2C:
	ldrh r1, [r5, #0x1c]
	cmp r1, #0
	bne _021A9E36
	mov r1, #0
	b _021A9E38
_021A9E36:
	mov r1, #1
_021A9E38:
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #0
	bl sub_021A9FA0
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end ovy215_21a9d90
_021A9E60: .word 0x021AB470

	thumb_func_start ovy215_21a9e64
ovy215_21a9e64: ; 0x021A9E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy215_21a9f70
	ldr r0, [r4, #8]
	bl ovy215_21a9ecc
	ldr r0, [r4, #8]
	bl sub_021AA034
	pop {r4, pc}
	thumb_func_end ovy215_21a9e64

	thumb_func_start ovy215_21a9e7c
ovy215_21a9e7c: ; 0x021A9E7C
	push {r3, lr}
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A9E8C
	bl sub_0204B794
_021A9E8C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9e7c

	thumb_func_start ovy215_21a9e90
ovy215_21a9e90: ; 0x021A9E90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A9EC4 ; =0x021AB454
	ldr r1, _021A9EC8 ; =0x021AB194
	mov r2, #0x66
	bl Oam_CreateSystem
	mov r0, #8
	mov r1, #0
	mov r2, #0x66
	bl sub_0204BF1C
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9e90
_021A9EC4: .word 0x021AB454
_021A9EC8: .word 0x021AB194

	thumb_func_start ovy215_21a9ecc
ovy215_21a9ecc: ; 0x021A9ECC
	push {r3, r4, r5, lr}
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	sub r4, #0x44
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9ecc

	thumb_func_start ovy215_21a9ef4
ovy215_21a9ef4: ; 0x021A9EF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r2, #0
	add r5, r0, #0
	ldrsh r0, [r4, r2]
	add r1, sp, #0xc
	mov r3, #0x7b
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r3, r3, #2
	strh r0, [r1, #2]
	ldrh r0, [r4, #6]
	strh r0, [r1, #4]
	ldr r0, [r4, #0x2c]
	strb r2, [r1, #6]
	strb r0, [r1, #7]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	str r0, [sp, #4]
	mov r0, #0x66
	add r2, r5, r1
	add r1, r3, #0
	str r0, [sp, #8]
	add r1, #0x24
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	ldr r4, [r4, #0x1c]
	lsl r2, r2, #2
	add r6, r5, r2
	add r2, r3, #0
	lsl r4, r4, #2
	ldr r0, [r5, r3]
	add r2, #0x44
	add r4, r5, r4
	add r3, #0x64
	ldr r2, [r6, r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy215_21a9ef4

	thumb_func_start ovy215_21a9f54
ovy215_21a9f54: ; 0x021A9F54
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0x1f
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A9F6C
	bl Oam_RemoveOam
	mov r0, #0
	str r0, [r4, r5]
_021A9F6C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9f54

	thumb_func_start ovy215_21a9f70
ovy215_21a9f70: ; 0x021A9F70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A9F76:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy215_21a9f54
	add r4, r4, #1
	cmp r4, #8
	blo _021A9F76
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9f70

	thumb_func_start sub_021A9F88
sub_021A9F88: ; 0x021A9F88
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r1, r2, #0x10
	ldr r3, _021A9F9C ; =Oam_SetOamAnimIndex
	lsr r1, r1, #0x10
	bx r3
	nop
_021A9F9C: .word Oam_SetOamAnimIndex
	thumb_func_end sub_021A9F88

	thumb_func_start sub_021A9FA0
sub_021A9FA0: ; 0x021A9FA0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021A9FB0 ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_021A9FB0: .word sub_0204C124
	thumb_func_end sub_021A9FA0

	thumb_func_start ovy215_21a9fb4
ovy215_21a9fb4: ; 0x021A9FB4
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r2, [r4]
	mov r2, #1
	lsl r2, r2, #8
	strh r3, [r4, #2]
	cmp r3, r2
	bge _021A9FD6
	add r2, #0xf0
	add r2, r0, r2
	lsl r0, r1, #2
	add r4, r2, r0
	ldr r0, [r2, r0]
	add r1, sp, #0
	mov r2, #0
	b _021A9FE4
_021A9FD6:
	add r2, #0xf0
	add r2, r0, r2
	lsl r0, r1, #2
	add r4, r2, r0
	ldr r0, [r2, r0]
	add r1, sp, #0
	mov r2, #1
_021A9FE4:
	bl Oam_SetSpritePosData
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C4D4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy215_21a9fb4

	thumb_func_start ovy215_21a9ff4
ovy215_21a9ff4: ; 0x021A9FF4
	push {r3, lr}
	cmp r2, #1
	bne _021AA00C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C318
	pop {r3, pc}
_021AA00C:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C318
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21a9ff4

	thumb_func_start ovy215_21aa020
ovy215_21aa020: ; 0x021AA020
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	mov r1, #0x66
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ovy215_21aa020

	thumb_func_start sub_021AA034
sub_021AA034: ; 0x021AA034
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021AA040 ; =GFL_ArcToolFree
	bx r3
	nop
_021AA040: .word GFL_ArcToolFree
	thumb_func_end sub_021AA034

	thumb_func_start ovy215_21aa044
ovy215_21aa044: ; 0x021AA044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl GetDefaultUINarcIdx
	mov r1, #0x66
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r4, #0
	mov r7, #0x66
_021AA05A:
	bl sub_0202D894
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #1
	str r7, [sp]
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x21
	lsl r1, r1, #4
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #2
	bls _021AA05A
	bl sub_02021114
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	mov r4, #0x23
	lsl r4, r4, #4
	str r0, [r5, r4]
	mov r0, #0
	bl sub_0202D898
	str r0, [sp, #4]
	mov r0, #0
	bl sub_0202D89C
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r3, r7, #0
	bl Oam_LoadNCERFile
	add r4, #0x20
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21aa044

	thumb_func_start ovy215_21aa0bc
ovy215_21aa0bc: ; 0x021AA0BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x99
	mov r1, #0x66
	mov r7, #0x66
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x2c
	mov r2, #1
	mov r3, #0
	add r6, r0, #0
	str r7, [sp]
	bl Oam_LoadNCGRFile
	mov r4, #0x87
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r6, #0
	mov r1, #0x2f
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x2d
	mov r2, #0x2e
	mov r3, #0x66
	bl Oam_LoadNCERFile
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	add r0, r6, #0
	bl GFL_ArcToolFree
	bl GetDefaultUINarcIdx
	mov r1, #0x66
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl Oam_LoadNCGRFile
	add r1, r4, #4
	str r0, [r5, r1]
	bl sub_0202D810
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #0x80
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	mov r0, #0
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #0
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0x66
	bl Oam_LoadNCERFile
	add r4, #0x3c
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa0bc

	thumb_func_start ovy215_21aa16c
ovy215_21aa16c: ; 0x021AA16C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #2
	mov r2, #0xe0
	mov r3, #0xb0
	bl ovy215_21a9fb4
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	bl sub_021A9F88
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa16c

	thumb_func_start ovy215_21aa188
ovy215_21aa188: ; 0x021AA188
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	lsl r2, r1, #2
	ldr r1, _021AA268 ; =0x021AB65C
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4]
	cmp r0, #0x1b
	bne _021AA1A2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AA1A2:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _021AA262
	ldr r0, [r0]
	bl sub_0203349C
	ldr r0, [r6, #8]
	bl ovy215_21a9e7c
	mov r0, #0x71
	ldr r1, [r6, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021AA1FC
	bl sub_02021A3C
	mov r4, #0
_021AA1C6:
	mov r0, #0x71
	ldr r1, [r6, #8]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	add r1, #0xc4
	lsl r0, r4, #3
	add r5, r1, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _021AA1F6
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021AA1F6
	ldr r0, [r5]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #4]
_021AA1F6:
	add r4, r4, #1
	cmp r4, #0x1b
	blt _021AA1C6
_021AA1FC:
	mov r0, #0x73
	ldr r1, [r6, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021AA20C
	bl sub_0203A7F4
_021AA20C:
	mov r4, #0xdb
	ldr r1, [r6, #8]
	lsl r4, r4, #2
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _021AA262
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r1, r0]
	bl sub_02034220
	ldr r0, [r6, #8]
	ldr r0, [r0, r4]
	bl sub_02021A3C
	mov r4, #0x1b
_021AA22C:
	mov r0, #0x71
	ldr r1, [r6, #8]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	add r1, #0xc4
	lsl r0, r4, #3
	add r5, r1, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _021AA25C
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021AA25C
	ldr r0, [r5]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #4]
_021AA25C:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021AA22C
_021AA262:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA268: .word 0x021AB65C
	thumb_func_end ovy215_21aa188

	thumb_func_start ovy215_21aa26c
ovy215_21aa26c: ; 0x021AA26C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021AA27E
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r5, #0x2c]
_021AA27E:
	mov r0, #0
	mov r4, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsB
	ldr r0, _021AA334 ; =0x04000050
	strh r4, [r0]
	ldr r0, _021AA338 ; =0x04001050
	strh r4, [r0]
	mov r0, #0
	bl sub_02046DF8
	mov r2, #6
	mov r0, #1
	mov r1, #0x66
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r0, #0x66
	mov r4, #0x37
	add r0, #0xa6
	lsl r4, r4, #4
	str r0, [sp]
	ldr r3, _021AA33C ; =0x021AB7A4
	mov r0, #0x66
	add r1, r4, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	mov r0, #0
	add r2, r4, #0
	str r1, [r5, #8]
	blx MIi_CpuClearFast
	add r0, r5, #0
	bl ovy215_21a9428
	bl sub_021A8DF0
	add r0, r5, #0
	bl ovy215_21a8e00
	add r0, r5, #0
	bl ovy215_21a9034
	add r0, r5, #0
	bl ovy215_21a9110
	add r0, r5, #0
	bl ovy215_21a9740
	add r0, r5, #0
	bl ovy215_21a9164
	add r0, r5, #0
	bl ovy215_21a9d90
	add r0, r5, #0
	bl ovy215_21a96c0
	add r0, r5, #0
	bl ovy215_21aaf0c
	ldr r0, [r5, #8]
	bl ovy215_21a920c
	add r0, r5, #0
	bl ovy215_21a9a58
	add r0, r5, #0
	bl ovy215_21a94e8
	add r0, r5, #0
	bl ovy215_21a92a0
	ldr r0, _021AA340 ; =ovy215_21a8de4
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x2c]
	mov r0, #0
	mov r1, #0x66
	bl sub_02042BA8
	ldr r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
	nop
_021AA334: .word 0x04000050
_021AA338: .word 0x04001050
_021AA33C: .word 0x021AB7A4
_021AA340: .word ovy215_21a8de4
	thumb_func_end ovy215_21aa26c

	thumb_func_start ovy215_21aa344
ovy215_21aa344: ; 0x021AA344
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021AA356
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r5, #0x2c]
_021AA356:
	add r0, r5, #0
	bl ovy215_21a9390
	ldr r0, [r5, #8]
	bl ovy215_21a923c
	add r0, r5, #0
	bl sub_021AAF5C
	add r0, r5, #0
	bl ovy215_21a9718
	add r0, r5, #0
	bl ovy215_21a9e64
	add r0, r5, #0
	bl sub_021A9200
	add r0, r5, #0
	bl ovy215_21a982c
	add r0, r5, #0
	bl ovy215_21a8ffc
	add r0, r5, #0
	bl ovy215_21a94c8
	ldr r0, _021AA3B4 ; =0x04000050
	mov r4, #0
	strh r4, [r0]
	ldr r0, _021AA3B8 ; =0x04001050
	strh r4, [r0]
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsB
	ldr r0, [r5, #8]
	bl GFL_HeapFree
	mov r0, #0x66
	str r4, [r5, #8]
	bl GFL_HeapDelete
	ldr r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AA3B4: .word 0x04000050
_021AA3B8: .word 0x04001050
	thumb_func_end ovy215_21aa344

	thumb_func_start ovy215_21aa3bc
ovy215_21aa3bc: ; 0x021AA3BC
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021AA3D2
	mov r0, #0xc2
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_021AA3D2:
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa3bc

	thumb_func_start ovy215_21aa3d8
ovy215_21aa3d8: ; 0x021AA3D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0x72
	ldr r0, [r5, #8]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_020223B4
	cmp r0, #2
	bne _021AA42A
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x15
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021AA402
	ldr r0, [r1, r4]
	bl sub_020223CC
	ldr r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
_021AA402:
	bl sub_0203DA48
	cmp r0, #1
	beq _021AA414
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021AA42A
_021AA414:
	mov r0, #0x72
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020223CC
	ldr r0, _021AA430 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
_021AA42A:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_021AA430: .word 0x00000548
	thumb_func_end ovy215_21aa3d8

	thumb_func_start ovy215_21aa434
ovy215_21aa434: ; 0x021AA434
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0x31
	ldr r0, [r4, #8]
	lsl r5, r5, #4
	ldr r0, [r0, r5]
	bl sub_0202DB70
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl TaskAppListMenu_ChoosenWait
	cmp r0, #0
	bne _021AA454
	mov r0, #4
	pop {r3, r4, r5, pc}
_021AA454:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl TaskAppListMenu_GetChoosenIndex
	cmp r0, #0
	beq _021AA466
	cmp r0, #1
	beq _021AA482
	b _021AA49E
_021AA466:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl sub_0202DA54
	mov r1, #0x1e
	ldr r2, [r4, #8]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r2, r1, #3
	ldr r1, _021AA4A4 ; =0x021AB61C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, r4, r5, pc}
_021AA482:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl sub_0202DA54
	mov r1, #0x1e
	ldr r2, [r4, #8]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r2, r1, #3
	ldr r1, _021AA4A8 ; =0x021AB620
	ldr r1, [r1, r2]
	blx r1
	pop {r3, r4, r5, pc}
_021AA49E:
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_021AA4A4: .word 0x021AB61C
_021AA4A8: .word 0x021AB620
	thumb_func_end ovy215_21aa434

	thumb_func_start ovy215_21aa4ac
ovy215_21aa4ac: ; 0x021AA4AC
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a956c
	cmp r0, #0
	bne _021AA4BC
	ldr r0, [r4, #0x28]
	pop {r4, pc}
_021AA4BC:
	mov r0, #5
	pop {r4, pc}
	thumb_func_end ovy215_21aa4ac

	thumb_func_start ovy215_21aa4c0
ovy215_21aa4c0: ; 0x021AA4C0
	push {r3, lr}
	ldr r2, [r0, #0x14]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021AA4D4 ; =0x021AB62C
	ldr r1, [r1, r3]
	blx r1
	mov r0, #7
	pop {r3, pc}
	.align 2, 0
_021AA4D4: .word 0x021AB62C
	thumb_func_end ovy215_21aa4c0

	thumb_func_start ovy215_21aa4d8
ovy215_21aa4d8: ; 0x021AA4D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0203A978
	cmp r0, #1
	bne _021AA4EA
	mov r0, #7
	pop {r3, r4, r5, pc}
_021AA4EA:
	ldr r1, [r4, #0x14]
	mov r5, #0xc
	add r2, r1, #0
	ldr r1, _021AA508 ; =0x021AB630
	mul r2, r5
	ldr r1, [r1, r2]
	add r0, r4, #0
	blx r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	add r1, r0, #0
	ldr r0, _021AA50C ; =0x021AB634
	mul r1, r5
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AA508: .word 0x021AB630
_021AA50C: .word 0x021AB634
	thumb_func_end ovy215_21aa4d8
_021AA510:
	.byte 0x01, 0x4B, 0x09, 0x21, 0x18, 0x47, 0xC0, 0x46, 0x35, 0xAA, 0x1A, 0x02

	thumb_func_start ovy215_21aa51c
ovy215_21aa51c: ; 0x021AA51C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x71
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021AA534
	mov r0, #9
	pop {r4, r5, r6, pc}
_021AA534:
	add r0, r4, #0
	bl sub_021AAEFC
	cmp r0, #3
	bhi _021AA5C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AA54A: ; jump table
	.short _021AA552 - _021AA54A - 2 ; case 0
	.short _021AA572 - _021AA54A - 2 ; case 1
	.short _021AA598 - _021AA54A - 2 ; case 2
	.short _021AA5B0 - _021AA54A - 2 ; case 3
_021AA552:
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021AA56E
	sub r0, r0, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021AA6EC ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb
	bl ovy215_21aab38
	pop {r4, r5, r6, pc}
_021AA56E:
	mov r0, #9
	pop {r4, r5, r6, pc}
_021AA572:
	ldr r1, [r4, #8]
	ldr r0, _021AA6F0 ; =0x000002FE
	ldrh r2, [r4, #0x1c]
	ldrh r0, [r1, r0]
	cmp r2, r0
	beq _021AA594
	add r0, r2, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021AA6EC ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl ovy215_21aab38
	pop {r4, r5, r6, pc}
_021AA594:
	mov r0, #9
	pop {r4, r5, r6, pc}
_021AA598:
	ldr r0, _021AA6F4 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #9
	bl sub_021A9F88
	mov r0, #0xa
	str r0, [r4, #0x28]
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_021AA5B0:
	ldr r0, _021AA6F8 ; =0x00000556
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	mov r1, #7
	mov r2, #8
	bl sub_021A9F88
	mov r0, #0xa
	str r0, [r4, #0x28]
	mov r0, #0x19
	pop {r4, r5, r6, pc}
_021AA5C8:
	mov r6, #0xa5
	ldr r0, [r4, #8]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	bl sub_0202B768
	mov r1, #4
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021AA60E
	bhs _021AA66E
	cmp r5, #9
	bhi _021AA604
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AA5F0: ; jump table
	.short _021AA626 - _021AA5F0 - 2 ; case 0
	.short _021AA626 - _021AA5F0 - 2 ; case 1
	.short _021AA626 - _021AA5F0 - 2 ; case 2
	.short _021AA626 - _021AA5F0 - 2 ; case 3
	.short _021AA626 - _021AA5F0 - 2 ; case 4
	.short _021AA626 - _021AA5F0 - 2 ; case 5
	.short _021AA626 - _021AA5F0 - 2 ; case 6
	.short _021AA626 - _021AA5F0 - 2 ; case 7
	.short _021AA626 - _021AA5F0 - 2 ; case 8
	.short _021AA626 - _021AA5F0 - 2 ; case 9
_021AA604:
	mov r0, #5
	mvn r0, r0
	cmp r5, r0
	beq _021AA698
	b _021AA6C8
_021AA60E:
	add r0, r1, #2
	cmp r5, r0
	bhi _021AA61E
	bhs _021AA6C0
	add r0, r1, #1
	cmp r5, r0
	beq _021AA6E8
	b _021AA6C8
_021AA61E:
	add r0, r1, #3
	cmp r5, r0
	beq _021AA656
	b _021AA6C8
_021AA626:
	ldr r0, [r4, #8]
	ldrh r1, [r4, #0x1c]
	add r2, r0, r5
	mov r0, #0xa
	mul r0, r1
	add r1, r2, r0
	add r0, r6, #0
	add r0, #0x54
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _021AA6E8
	strb r5, [r4, #0x1e]
	add r6, #0x54
	ldrb r0, [r1, r6]
	strb r0, [r4, #0x1f]
	ldr r0, _021AA6FC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ovy215_21aaab8
	pop {r4, r5, r6, pc}
_021AA656:
	ldr r0, _021AA6F4 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #9
	bl sub_021A9F88
	mov r0, #0xa
	str r0, [r4, #0x28]
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_021AA66E:
	ldr r0, [r4, #8]
	ldr r0, [r0, r6]
	bl sub_0202BA60
	ldr r0, [r4, #8]
	add r6, #0x6a
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r0, r6]
	cmp r1, r0
	beq _021AA6E8
	add r0, r1, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021AA6EC ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl ovy215_21aab38
	pop {r4, r5, r6, pc}
_021AA698:
	mov r0, #0xa5
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202BA60
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021AA6E8
	sub r0, r0, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021AA6EC ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb
	bl ovy215_21aab38
	pop {r4, r5, r6, pc}
_021AA6C0:
	ldr r0, _021AA6EC ; =0x00000548
	bl GFL_SndSEPlay
	b _021AA6E8
_021AA6C8:
	bl ovy215_21aafec
	cmp r0, #0
	beq _021AA6E8
	ldr r0, _021AA6F8 ; =0x00000556
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	mov r1, #7
	mov r2, #8
	bl sub_021A9F88
	mov r0, #0xa
	str r0, [r4, #0x28]
	mov r0, #0x19
	pop {r4, r5, r6, pc}
_021AA6E8:
	mov r0, #9
	pop {r4, r5, r6, pc}
	.align 2, 0
_021AA6EC: .word 0x00000548
_021AA6F0: .word 0x000002FE
_021AA6F4: .word 0x00000551
_021AA6F8: .word 0x00000556
_021AA6FC: .word 0x0000054C
	thumb_func_end ovy215_21aa51c
_021AA700:
	.byte 0x1B, 0x21, 0x81, 0x62, 0x01, 0x4B, 0x01, 0x21, 0x18, 0x47, 0xC0, 0x46, 0x61, 0xAA, 0x1A, 0x02

	thumb_func_start ovy215_21aa710
ovy215_21aa710: ; 0x021AA710
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _021AA730
	mov r1, #0
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #1
	bl sub_021A9FA0
	b _021AA742
_021AA730:
	mov r1, #0
	mov r2, #1
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_021A9FA0
_021AA742:
	add r0, r4, #0
	bl ovy215_21a94e8
	mov r0, #9
	pop {r4, pc}
	thumb_func_end ovy215_21aa710

	thumb_func_start ovy215_21aa74c
ovy215_21aa74c: ; 0x021AA74C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #1
	bl ovy215_21aab80
	add r0, r4, #0
	bl ovy215_21a954c
	add r0, r4, #0
	bl ovy215_21a9ba4
	add r0, r4, #0
	bl ovy215_21a9b6c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xd
	bl ovy215_21aaa90
	pop {r4, pc}
	thumb_func_end ovy215_21aa74c

	thumb_func_start ovy215_21aa780
ovy215_21aa780: ; 0x021AA780
	push {r3, lr}
	bl ovy215_21a93d4
	mov r0, #0xe
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa780

	thumb_func_start ovy215_21aa78c
ovy215_21aa78c: ; 0x021AA78C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0x31
	ldr r0, [r4, #8]
	lsl r5, r5, #4
	ldr r0, [r0, r5]
	bl sub_0202DB70
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl TaskAppListMenu_ChoosenWait
	cmp r0, #0
	bne _021AA7AC
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_021AA7AC:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl TaskAppListMenu_GetChoosenIndex
	add r0, r0, #2
	cmp r0, #5
	bhi _021AA88C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AA7C6: ; jump table
	.short _021AA860 - _021AA7C6 - 2 ; case 0
	.short _021AA88C - _021AA7C6 - 2 ; case 1
	.short _021AA7D2 - _021AA7C6 - 2 ; case 2
	.short _021AA80E - _021AA7C6 - 2 ; case 3
	.short _021AA828 - _021AA7C6 - 2 ; case 4
	.short _021AA860 - _021AA7C6 - 2 ; case 5
_021AA7D2:
	add r0, r4, #0
	bl sub_021A9418
	add r0, r4, #0
	bl ovy215_21a9bdc
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	bl sub_021A9AB4
	ldr r0, [r4, #8]
	bl ovy215_21aa16c
	add r0, r4, #0
	bl ovy215_21aac38
	ldr r0, [r4, #8]
	mov r1, #7
	mov r2, #0xe
	bl sub_021A9F88
	ldr r0, [r4, #8]
	bl ovy215_21aabf4
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_021AA80E:
	add r0, r4, #0
	bl sub_021A9418
	add r0, r4, #0
	mov r1, #0
	bl ovy215_21a9bf4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x11
	bl ovy215_21aaa90
	pop {r4, r5, r6, pc}
_021AA828:
	add r0, r4, #0
	bl sub_021A9418
	ldrb r6, [r4, #0x1f]
	ldr r1, [r4, #8]
	sub r5, #0x78
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r0, [r0, r5]
	bl sub_02009750
	bl sub_02026BE0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xe
	add r3, r6, #0
	bl ovy215_21aad18
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #6
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #1
	bl ovy215_21aaa60
	pop {r4, r5, r6, pc}
_021AA860:
	add r0, r4, #0
	bl sub_021A9418
	add r0, r4, #0
	bl ovy215_21a9bdc
	ldr r0, [r4, #8]
	mov r1, #0xa
	ldr r0, [r0]
	bl sub_02033378
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy215_21aab80
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #1
	bl sub_021A9FA0
	mov r0, #9
	pop {r4, r5, r6, pc}
_021AA88C:
	mov r0, #0xe
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21aa78c

	thumb_func_start ovy215_21aa890
ovy215_21aa890: ; 0x021AA890
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21aafc0
	cmp r0, #1
	bne _021AA8B4
	ldr r0, _021AA8B8 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #9
	bl sub_021A9F88
	mov r0, #0x10
	str r0, [r4, #0x28]
	mov r0, #0x18
	pop {r4, pc}
_021AA8B4:
	mov r0, #0xf
	pop {r4, pc}
	.align 2, 0
_021AA8B8: .word 0x00000551
	thumb_func_end ovy215_21aa890

	thumb_func_start ovy215_21aa8bc
ovy215_21aa8bc: ; 0x021AA8BC
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21aac48
	mov r0, #0xa5
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202BA60
	add r1, r0, #0
	add r0, r4, #0
	bl ovy215_21aaf84
	ldr r0, [r4, #8]
	bl sub_021A9AB8
	ldr r0, [r4, #8]
	mov r1, #0xa
	ldr r0, [r0]
	bl sub_02033378
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #1
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy215_21aab80
	mov r0, #9
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa8bc
_021AA900:
	.byte 0x01, 0x4B, 0x00, 0x21, 0x18, 0x47, 0xC0, 0x46, 0xA5, 0xAA, 0x1A, 0x02

	thumb_func_start ovy215_21aa90c
ovy215_21aa90c: ; 0x021AA90C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #2
	bl ovy215_21a9bf4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x13
	bl ovy215_21aaa90
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa90c
_021AA924:
	.byte 0x01, 0x4B, 0x01, 0x21, 0x18, 0x47, 0xC0, 0x46, 0xA5, 0xAA, 0x1A, 0x02
	.byte 0x01, 0x1C, 0x20, 0x31, 0x09, 0x78, 0x06, 0x29, 0x03, 0xD0, 0x15, 0x21, 0x81, 0x62, 0x00, 0x20
	.byte 0x70, 0x47, 0x02, 0x21, 0x41, 0x61, 0x06, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy215_21aa94c
ovy215_21aa94c: ; 0x021AA94C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #1
	bl ovy215_21aab80
	add r0, r4, #0
	mov r1, #0x16
	bl ovy215_21aaa34
	pop {r4, pc}
	thumb_func_end ovy215_21aa94c

	thumb_func_start ovy215_21aa96c
ovy215_21aa96c: ; 0x021AA96C
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a9ba4
	add r0, r4, #0
	bl ovy215_21aaed4
	pop {r4, pc}
	thumb_func_end ovy215_21aa96c

	thumb_func_start ovy215_21aa97c
ovy215_21aa97c: ; 0x021AA97C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	bne _021AA98E
	mov r0, #0x15
	str r0, [r4, #0x28]
	mov r0, #0
	pop {r4, pc}
_021AA98E:
	add r3, r4, #0
	add r3, #0x21
	ldrb r3, [r3]
	ldrh r2, [r4, #0x22]
	mov r1, #0xb
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	bl ovy215_21aad18
	mov r0, #3
	str r0, [r4, #0x14]
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ovy215_21aa97c

	thumb_func_start ovy215_21aa9a8
ovy215_21aa9a8: ; 0x021AA9A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7f
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021AA9CE
	ldr r0, [r4, #4]
	mov r2, #0
	str r2, [r0, #4]
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_021A9F88
	ldr r0, [r4, #0x28]
	pop {r4, pc}
_021AA9CE:
	mov r0, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa9a8

	thumb_func_start ovy215_21aa9d4
ovy215_21aa9d4: ; 0x021AA9D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x83
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021AA9F2
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r4, #0x28]
	pop {r4, pc}
_021AA9F2:
	mov r0, #0x19
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aa9d4

	thumb_func_start ovy215_21aa9f8
ovy215_21aa9f8: ; 0x021AA9F8
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a9bdc
	ldr r0, [r4, #8]
	mov r1, #0xa
	ldr r0, [r0]
	bl sub_02033378
	mov r0, #0xa5
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202BA60
	add r1, r0, #0
	add r0, r4, #0
	bl ovy215_21aaf84
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #1
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy215_21aab80
	mov r0, #9
	pop {r4, pc}
	thumb_func_end ovy215_21aa9f8

	thumb_func_start ovy215_21aaa34
ovy215_21aaa34: ; 0x021AAA34
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0xc2
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy215_21aaa34

	thumb_func_start ovy215_21aaa60
ovy215_21aaa60: ; 0x021AAA60
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0xc2
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21aaa60

	thumb_func_start ovy215_21aaa90
ovy215_21aaa90: ; 0x021AAA90
	push {r3, r4}
	ldr r4, [r0, #8]
	ldr r3, _021AAAA0 ; =0x000001DD
	strb r1, [r4, r3]
	str r2, [r0, #0x28]
	mov r0, #3
	pop {r3, r4}
	bx lr
	.align 2, 0
_021AAAA0: .word 0x000001DD
	thumb_func_end ovy215_21aaa90

	thumb_func_start ovy215_21aaaa4
ovy215_21aaaa4: ; 0x021AAAA4
	push {r3, lr}
	mov r2, #0x1e
	ldr r3, [r0, #8]
	lsl r2, r2, #4
	str r1, [r3, r2]
	bl ovy215_21a925c
	mov r0, #4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21aaaa4

	thumb_func_start ovy215_21aaab8
ovy215_21aaab8: ; 0x021AAAB8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r2, #0
	add r2, sp, #0
	ldr r0, [r0]
	add r2, #1
	add r3, sp, #0
	add r6, r1, #0
	bl sub_020336A0
	ldr r0, [r5, #8]
	add r3, sp, #0
	ldr r0, [r0]
	add r1, r6, #0
	add r2, sp, #4
	add r3, #2
	bl sub_020336C8
	mov r0, #3
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrb r2, [r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1]
	ldrb r3, [r1]
	mov r2, #0xfe
	bic r3, r2
	mov r2, #4
	orr r2, r3
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0xf
	bic r3, r2
	mov r2, #2
	orr r2, r3
	strb r2, [r1, #1]
	ldrb r3, [r1, #1]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0x10
	orr r2, r3
	strb r2, [r1, #1]
	mov r3, #0
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	add r2, sp, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #4]
	ldrsb r0, [r2, r3]
	strb r0, [r1, #5]
	ldrh r0, [r2, #4]
	strb r0, [r1, #6]
	ldrh r0, [r2, #2]
	strb r0, [r1, #7]
	str r4, [r5, #0x28]
	mov r0, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21aaab8

	thumb_func_start ovy215_21aab38
ovy215_21aab38: ; 0x021AAB38
	push {r4, r5}
	mov r3, #3
	ldr r4, [r0, #8]
	lsl r3, r3, #8
	add r4, r4, r3
	ldrb r5, [r4]
	mov r3, #1
	lsl r1, r1, #0x18
	bic r5, r3
	strb r5, [r4]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	ldrb r3, [r4]
	mov r5, #0xfe
	lsr r1, r1, #0x18
	bic r3, r5
	orr r1, r3
	strb r1, [r4]
	ldrb r3, [r4, #1]
	mov r1, #0xf
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r4, #1]
	ldrb r3, [r4, #1]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r4, #1]
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	str r2, [r0, #0x28]
	mov r0, #5
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy215_21aab38

	thumb_func_start ovy215_21aab80
ovy215_21aab80: ; 0x021AAB80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _021AABC0
	mov r1, #0
	mov r2, #1
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #7
	mov r2, #1
	bl ovy215_21a9ff4
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021AABF0 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #4
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, pc}
_021AABC0:
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy215_21a9ff4
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy215_21a9ff4
	ldr r0, _021AABF0 ; =0x04000050
	strh r4, [r0]
	pop {r3, r4, r5, pc}
	nop
_021AABF0: .word 0x04000050
	thumb_func_end ovy215_21aab80

	thumb_func_start ovy215_21aabf4
ovy215_21aabf4: ; 0x021AABF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0
	mov r2, #1
	bl ovy215_21a9ff4
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl ovy215_21a9ff4
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ovy215_21a9ff4
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl ovy215_21a9ff4
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021AAC34 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #4
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021AAC34: .word 0x04000050
	thumb_func_end ovy215_21aabf4

	thumb_func_start ovy215_21aac38
ovy215_21aac38: ; 0x021AAC38
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21a9650
	add r0, r4, #0
	bl ovy215_21a9c5c
	pop {r4, pc}
	thumb_func_end ovy215_21aac38

	thumb_func_start ovy215_21aac48
ovy215_21aac48: ; 0x021AAC48
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xd7
	mov r4, #0
	lsl r6, r6, #2
	add r5, r0, #0
	add r7, r4, #0
	sub r6, #0xc4
_021AAC56:
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r1, r4, #0x18
	ldr r0, [r0, r6]
	lsr r1, r1, #0x18
	bl sub_0200976C
	bl sub_02029D74
	cmp r0, #0
	beq _021AAC82
	mov r0, #0xd7
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl sub_020342F8
_021AAC82:
	add r4, r4, #1
	cmp r4, #3
	blt _021AAC56
	mov r0, #0xd9
	ldr r2, [r5, #8]
	lsl r0, r0, #2
	ldrh r1, [r2, r0]
	cmp r1, #0
	beq _021AACA2
	sub r0, #8
	ldr r0, [r2, r0]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_020342F8
_021AACA2:
	mov r0, #4
	bl sub_02045738
	mov r0, #5
	bl sub_02045738
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21aac48

	thumb_func_start ovy215_21aacb0
ovy215_21aacb0: ; 0x021AACB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_02017354
	add r4, r0, #0
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02009750
	bl sub_02026BE0
	strh r0, [r5, #0x22]
	ldrh r1, [r5, #0x22]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x66
	bl sub_02008268
	cmp r0, #1
	bne _021AACF6
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #0x80
	add r5, #0x21
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
_021AACF6:
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #0x80
	add r5, #0x21
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy215_21aacb0

	thumb_func_start sub_021AAD08
sub_021AAD08: ; 0x021AAD08
	add r2, r0, #0
	ldr r0, [r2]
	ldrb r2, [r2, #0x1f]
	ldr r3, _021AAD14 ; =sub_020097D0
	mov r1, #0
	bx r3
	.align 2, 0
_021AAD14: .word sub_020097D0
	thumb_func_end sub_021AAD08

	thumb_func_start ovy215_21aad18
ovy215_21aad18: ; 0x021AAD18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201735C
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	ldr r0, [r0]
	mov r3, #0x65
	bl sub_02034C54
	add r1, r0, #0
	add r1, #0x54
	strh r4, [r1]
	add r1, r0, #0
	add r1, #0x6c
	strh r6, [r1]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy215_21aad18

	thumb_func_start ovy215_21aad48
ovy215_21aad48: ; 0x021AAD48
	push {r3, lr}
	add r3, r0, #0
	add r0, #0x21
	ldrb r0, [r0]
	ldr r2, _021AAD68 ; =0x021A4CE0
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	ldr r0, [r3, #0x10]
	str r1, [r0, #0x4c]
	ldr r0, [r3, #0x30]
	ldr r1, _021AAD6C ; =0x000000A5
	ldr r3, [r3, #0x10]
	bl Overlay_QueueGameProc
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021AAD68: .word 0x021A4CE0
_021AAD6C: .word 0x000000A5
	thumb_func_end ovy215_21aad48

	thumb_func_start ovy215_21aad70
ovy215_21aad70: ; 0x021AAD70
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl GFL_HeapFree
	mov r0, #8
	pop {r3, pc}
	thumb_func_end ovy215_21aad70

	thumb_func_start ovy215_21aad7c
ovy215_21aad7c: ; 0x021AAD7C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r2, [r0, #0x10]
	mov r3, #0x7f
	bic r1, r3
	ldr r3, [r2, #0x4c]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	mov r3, #0x7f
	and r3, r4
	orr r3, r1
	add r1, r0, #0
	add r1, #0x21
	strb r3, [r1]
	ldr r1, [r2, #0x50]
	add r0, #0x20
	strb r1, [r0]
	add r0, r2, #0
	bl GFL_HeapFree
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy215_21aad7c

	thumb_func_start ovy215_21aadac
ovy215_21aadac: ; 0x021AADAC
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl GFL_HeapFree
	mov r0, #8
	pop {r3, pc}
	thumb_func_end ovy215_21aadac

	thumb_func_start ovy215_21aadb8
ovy215_21aadb8: ; 0x021AADB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x22]
	bl sub_02026BC0
	add r3, r0, #0
	mov r0, #0x65
	add r2, r5, #0
	str r0, [sp]
	add r2, #0x21
	ldrb r2, [r2]
	ldr r0, [r5, #4]
	mov r1, #2
	lsl r2, r2, #0x19
	ldr r0, [r0]
	lsr r2, r2, #0x19
	mov r4, #2
	bl ovy215_21a75a0
	add r3, r0, #0
	ldr r0, [r5, #0x30]
	ldr r2, _021AADF0 ; =0x021AB610
	sub r1, r4, #3
	str r3, [r5, #0x10]
	bl Overlay_QueueGameProc
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AADF0: .word 0x021AB610
	thumb_func_end ovy215_21aadb8

	thumb_func_start ovy215_21aadf4
ovy215_21aadf4: ; 0x021AADF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_021A76E0
	str r0, [r4, #0x24]
	cmp r0, #1
	bne _021AAE34
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0201735C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_0201FF08
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy215_21a76e4
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_02017354
	ldrh r1, [r4, #0x22]
	mov r2, #1
	mov r3, #0x65
	bl BagSave_SubItem
_021AAE34:
	ldr r0, [r4, #0x10]
	bl ovy215_21a7704
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aadf4

	thumb_func_start ovy215_21aae40
ovy215_21aae40: ; 0x021AAE40
	push {r4, lr}
	add r4, r0, #0
	bl ovy215_21aacb0
	add r0, r4, #0
	bl sub_021AAD08
	add r0, r4, #0
	bl ovy215_21a94c8
	add r0, r4, #0
	bl ovy215_21a9428
	mov r1, #0xbf
	ldr r0, [r4, #8]
	lsl r1, r1, #2
	ldrh r1, [r0, r1]
	cmp r1, #0xa
	bhi _021AAE78
	mov r1, #0
	mov r2, #0
	bl sub_021A9FA0
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_021A9FA0
_021AAE78:
	ldr r1, [r4, #8]
	ldr r0, _021AAEB0 ; =0x000002FE
	ldrh r1, [r1, r0]
	ldrh r0, [r4, #0x1c]
	cmp r0, r1
	bls _021AAE8A
	mov r0, #0
	strh r1, [r4, #0x1c]
	strb r0, [r4, #0x1e]
_021AAE8A:
	add r0, r4, #0
	bl ovy215_21a94e8
	ldr r0, [r4, #8]
	mov r1, #0xa
	ldr r0, [r0]
	bl sub_02033378
	add r0, r4, #0
	mov r1, #1
	bl ovy215_21a9bf4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ovy215_21aaa90
	pop {r4, pc}
	nop
_021AAEB0: .word 0x000002FE
	thumb_func_end ovy215_21aae40

	thumb_func_start ovy215_21aaeb4
ovy215_21aaeb4: ; 0x021AAEB4
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x22]
	mov r1, #9
	mov r3, #0
	bl ovy215_21aad18
	mov r0, #6
	mov r1, #1
	str r0, [r4, #0x28]
	add r0, r4, #0
	str r1, [r4, #0x14]
	bl ovy215_21aaa60
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aaeb4

	thumb_func_start ovy215_21aaed4
ovy215_21aaed4: ; 0x021AAED4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _021AAEE8
	mov r1, #3
	b _021AAEEA
_021AAEE8:
	mov r1, #4
_021AAEEA:
	bl ovy215_21a9bf4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ovy215_21aaa90
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy215_21aaed4

	thumb_func_start sub_021AAEFC
sub_021AAEFC: ; 0x021AAEFC
	ldr r0, _021AAF04 ; =0x021AB6E0
	ldr r3, _021AAF08 ; =sub_0203DA0C
	bx r3
	nop
_021AAF04: .word 0x021AB6E0
_021AAF08: .word sub_0203DA0C
	thumb_func_end sub_021AAEFC

	thumb_func_start ovy215_21aaf0c
ovy215_21aaf0c: ; 0x021AAF0C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #8]
	ldr r0, _021AAF50 ; =0x000002FE
	ldrh r1, [r1, r0]
	ldrh r0, [r5, #0x1c]
	cmp r0, r1
	bls _021AAF24
	strh r1, [r5, #0x1c]
	mov r4, #0
	b _021AAF26
_021AAF24:
	ldrb r4, [r5, #0x1e]
_021AAF26:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x66
	str r0, [sp, #4]
	ldr r0, _021AAF54 ; =0x021AB6F4
	ldr r1, _021AAF58 ; =0x021AB6D0
	add r2, r5, #0
	mov r3, #1
	bl sub_0202B650
	mov r1, #0xa5
	ldr r2, [r5, #8]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy215_21aaf84
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AAF50: .word 0x000002FE
_021AAF54: .word 0x021AB6F4
_021AAF58: .word 0x021AB6D0
	thumb_func_end ovy215_21aaf0c

	thumb_func_start sub_021AAF5C
sub_021AAF5C: ; 0x021AAF5C
	ldr r1, [r0, #8]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021AAF68 ; =sub_0202B694
	bx r3
	.align 2, 0
_021AAF68: .word sub_0202B694
	thumb_func_end sub_021AAF5C
_021AAF6C:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x4B, 0x18, 0x47, 0x85, 0xAF, 0x1A, 0x02, 0x00, 0x4B, 0x18, 0x47
	.byte 0x85, 0xAF, 0x1A, 0x02

	thumb_func_start ovy215_21aaf84
ovy215_21aaf84: ; 0x021AAF84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xa5
	ldr r2, [r5, #8]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r4, r1, #0
	bl sub_0202BAEC
	add r3, r0, #0
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r5, #8]
	mov r1, #2
	mov r6, #2
	bl ovy215_21a9fb4
	cmp r4, #0xa
	ldr r0, [r5, #8]
	bne _021AAFB6
	add r1, r6, #0
	mov r2, #4
	bl sub_021A9F88
	pop {r4, r5, r6, pc}
_021AAFB6:
	add r1, r6, #0
	mov r2, #5
	bl sub_021A9F88
	pop {r4, r5, r6, pc}
	thumb_func_end ovy215_21aaf84

	thumb_func_start ovy215_21aafc0
ovy215_21aafc0: ; 0x021AAFC0
	push {r3, lr}
	ldr r0, _021AAFE8 ; =0x021AB6C8
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021AAFD4
	mov r0, #1
	pop {r3, pc}
_021AAFD4:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021AAFE2
	mov r0, #1
	pop {r3, pc}
_021AAFE2:
	mov r0, #0
	pop {r3, pc}
	nop
_021AAFE8: .word 0x021AB6C8
	thumb_func_end ovy215_21aafc0

	thumb_func_start ovy215_21aafec
ovy215_21aafec: ; 0x021AAFEC
	push {r3, lr}
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _021AAFFE
	mov r0, #1
	pop {r3, pc}
_021AAFFE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy215_21aafec
_021AB004:
	.byte 0xC1, 0x7A, 0x1A, 0x02, 0x5D, 0x7B, 0x1A, 0x02, 0x71, 0x7B, 0x1A, 0x02
	.byte 0x65, 0x0D, 0x1A, 0x02, 0x15, 0x0E, 0x1A, 0x02, 0x81, 0x0E, 0x1A, 0x02, 0x1D, 0x77, 0x1A, 0x02
	.byte 0x7D, 0x77, 0x1A, 0x02, 0x79, 0x78, 0x1A, 0x02, 0x71, 0x7E, 0x1A, 0x02, 0x85, 0x80, 0x1A, 0x02
	.byte 0x25, 0x81, 0x1A, 0x02, 0xB9, 0x82, 0x1A, 0x02, 0x18, 0x38, 0x18, 0xE8, 0x40, 0x60, 0x18, 0xE8
	.byte 0x68, 0x88, 0x18, 0xE8, 0x98, 0xA8, 0x40, 0x98, 0xA8, 0xC0, 0xA8, 0xF8, 0x90, 0xA8, 0xA8, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x14
	.byte 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x8D, 0x1A, 0x02, 0xB1, 0x8D, 0x1A, 0x02
	.byte 0xC5, 0x8D, 0x1A, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x02, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x01, 0x01, 0x00, 0xF0, 0x03
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x01, 0x01, 0x00, 0xF0, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xF0, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02
	.byte 0x01, 0x00, 0xE0, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xD0, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xC0, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xB0, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02
	.byte 0x01, 0x00, 0xA0, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x90, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x80, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x70, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02
	.byte 0x01, 0x00, 0x60, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x50, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x40, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x30, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02
	.byte 0x01, 0x00, 0x20, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x10, 0x03
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xF0, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02
	.byte 0x01, 0x00, 0xE0, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xD0, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xC0, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x08, 0x02, 0x01, 0x00, 0xF0, 0x03, 0x01, 0x00, 0x00, 0x00, 0x19, 0x15, 0x06, 0x02
	.byte 0x0F, 0x00, 0xD8, 0x03, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x16, 0x05, 0x02, 0x0F, 0x00, 0xCE, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x1B, 0x04, 0x0E, 0x00, 0x01, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x0D, 0x02, 0x0F, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x03, 0x1A, 0x04
	.byte 0x01, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x08, 0x1A, 0x04, 0x01, 0x00, 0x69, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x0D, 0x1A, 0x04, 0x01, 0x00, 0xD1, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x08, 0x13, 0x0B, 0x02, 0x01, 0x00, 0x39, 0x01, 0x04, 0x00, 0x00, 0x00, 0x15, 0x13, 0x08, 0x02
	.byte 0x01, 0x00, 0x39, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x40, 0x04, 0x40
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x04, 0x00, 0x04, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x08, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x10, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1D, 0x77, 0x1A, 0x02, 0x7D, 0x77, 0x1A, 0x02, 0x79, 0x78, 0x1A, 0x02, 0x41, 0xAE, 0x1A, 0x02
	.byte 0xF9, 0xA9, 0x1A, 0x02, 0xB5, 0xAE, 0x1A, 0x02, 0xD5, 0xAE, 0x1A, 0x02, 0x49, 0xAD, 0x1A, 0x02
	.byte 0x71, 0xAD, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x49, 0xAD, 0x1A, 0x02, 0x7D, 0xAD, 0x1A, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0xB9, 0xAD, 0x1A, 0x02, 0xF5, 0xAD, 0x1A, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0x49, 0xAD, 0x1A, 0x02, 0xAD, 0xAD, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x6D, 0xA2, 0x1A, 0x02
	.byte 0x45, 0xA3, 0x1A, 0x02, 0xBD, 0xA3, 0x1A, 0x02, 0xD9, 0xA3, 0x1A, 0x02, 0x35, 0xA4, 0x1A, 0x02
	.byte 0xAD, 0xA4, 0x1A, 0x02, 0xC1, 0xA4, 0x1A, 0x02, 0xD9, 0xA4, 0x1A, 0x02, 0x11, 0xA5, 0x1A, 0x02
	.byte 0x1D, 0xA5, 0x1A, 0x02, 0x01, 0xA7, 0x1A, 0x02, 0x11, 0xA7, 0x1A, 0x02, 0x4D, 0xA7, 0x1A, 0x02
	.byte 0x81, 0xA7, 0x1A, 0x02, 0x8D, 0xA7, 0x1A, 0x02, 0x91, 0xA8, 0x1A, 0x02, 0xBD, 0xA8, 0x1A, 0x02
	.byte 0x01, 0xA9, 0x1A, 0x02, 0x0D, 0xA9, 0x1A, 0x02, 0x25, 0xA9, 0x1A, 0x02, 0x31, 0xA9, 0x1A, 0x02
	.byte 0x4D, 0xA9, 0x1A, 0x02, 0x6D, 0xA9, 0x1A, 0x02, 0x7D, 0xA9, 0x1A, 0x02, 0xA9, 0xA9, 0x1A, 0x02
	.byte 0xD5, 0xA9, 0x1A, 0x02, 0xF9, 0xA9, 0x1A, 0x02, 0xA0, 0xBF, 0xE6, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x6D, 0xAF, 0x1A, 0x02, 0x71, 0xAF, 0x1A, 0x02, 0x75, 0xAF, 0x1A, 0x02, 0x7D, 0xAF, 0x1A, 0x02
	.byte 0xA8, 0xBF, 0x08, 0x20, 0xA8, 0xBF, 0x20, 0x38, 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF, 0xC2, 0xE7
	.byte 0xFF, 0x00, 0x00, 0x00, 0x40, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x1F, 0x08, 0x77
	.byte 0xC0, 0x10, 0x00, 0x00, 0x01, 0x03, 0x00, 0x01, 0x00, 0x1F, 0x88, 0xF4, 0x40, 0x30, 0x00, 0x00
	.byte 0x00, 0x04, 0x02, 0x03, 0x20, 0x3F, 0x08, 0x77, 0xC0, 0x30, 0x00, 0x00, 0x01, 0x05, 0x02, 0x03
	.byte 0x20, 0x3F, 0x88, 0xF4, 0x40, 0x50, 0x00, 0x00, 0x02, 0x06, 0x04, 0x05, 0x40, 0x5F, 0x08, 0x77
	.byte 0xC0, 0x50, 0x00, 0x00, 0x03, 0x07, 0x04, 0x05, 0x40, 0x5F, 0x88, 0xF4, 0x40, 0x70, 0x00, 0x00
	.byte 0x04, 0x08, 0x06, 0x07, 0x60, 0x7F, 0x08, 0x77, 0xC0, 0x70, 0x00, 0x00, 0x05, 0x09, 0x06, 0x07
	.byte 0x60, 0x7F, 0x88, 0xF4, 0x40, 0x90, 0x00, 0x00, 0x06, 0x08, 0x08, 0x09, 0x80, 0x9F, 0x08, 0x77
	.byte 0xC0, 0x90, 0x00, 0x00, 0x07, 0x09, 0x08, 0x09, 0x80, 0x9F, 0x88, 0xF4, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x61, 0x69, 0x6C, 0x74, 0x6F, 0x6F, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x6D, 0x61, 0x69, 0x6C
	.byte 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6D, 0x61, 0x69, 0x6C, 0x76, 0x69, 0x65, 0x77
	.byte 0x2E, 0x63, 0x00, 0x00, 0x6D, 0x62, 0x5F, 0x73, 0x65, 0x71, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021AB004
