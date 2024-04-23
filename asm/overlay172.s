    .include "macros/function.inc"
	.include "overlay172.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy172_21998c0
ovy172_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x50
	str r0, [sp]
	add r0, sp, #0x18
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldrh r0, [r0, #0xc]
	ldr r3, _021998F8 ; =0x0219A620
	mov r1, #0x20
	mov r2, #0
	bl GFL_HeapAllocate
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #8]
	ldr r1, [sp, #0x18]
	str r7, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021998F8: .word 0x0219A620
	thumb_func_end ovy172_21998c0

	thumb_func_start sub_021998FC
sub_021998FC: ; 0x021998FC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021998FC

	thumb_func_start sub_02199900
sub_02199900: ; 0x02199900
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02199900

	thumb_func_start sub_02199904
sub_02199904: ; 0x02199904
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02199904

	thumb_func_start sub_02199908
sub_02199908: ; 0x02199908
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02199908

	thumb_func_start sub_0219990C
sub_0219990C: ; 0x0219990C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219990C

	thumb_func_start sub_02199910
sub_02199910: ; 0x02199910
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02199910

	thumb_func_start sub_02199914
sub_02199914: ; 0x02199914
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02199914
_02199918:
	.byte 0xC0, 0x69, 0x70, 0x47

	thumb_func_start ovy172_219991c
ovy172_219991c: ; 0x0219991C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _02199960 ; =0x000000A8
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x85
	lsl r2, r2, #0x12
	mov r6, #0x85
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x85
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xc
	blx MIi_CpuClearFast
	strh r6, [r4, #8]
	ldrh r1, [r4, #8]
	add r0, r5, #0
	bl ovy172_21999a8
	str r0, [r4]
	str r5, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02199960: .word 0x000000A8
	thumb_func_end ovy172_219991c

	thumb_func_start ovy172_2199964
ovy172_2199964: ; 0x02199964
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4]
	bl ovy172_2199ac8
	ldr r1, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0219997E
	mov r0, #1
	pop {r4, pc}
_0219997E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy172_2199964

	thumb_func_start ovy172_2199984
ovy172_2199984: ; 0x02199984
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r3]
	bl ovy172_2199aec
	add r0, r4, #0
	bl sub_0203AB10
	mov r0, #0x85
	bl sub_0203A1D0
	ldr r0, _021999A4 ; =0x000000A8
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_021999A4: .word 0x000000A8
	thumb_func_end ovy172_2199984

	thumb_func_start ovy172_21999a8
ovy172_21999a8: ; 0x021999A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x5e
	str r0, [sp]
	ldr r3, _02199ABC ; =0x0219A628
	add r0, r6, #0
	mov r1, #0x78
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, #0x6c
	strh r6, [r0]
	add r0, r4, #0
	str r5, [r4]
	add r0, #0x6c
	ldrh r0, [r0]
	bl ovy172_2199b2c
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r7, #0
	bl GFL_FontCreate
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #2
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0xc]
	ldr r1, _02199AC0 ; =0x0219A548
	str r7, [r4, #0x60]
	ldrh r2, [r1]
	add r0, sp, #0x10
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	add r0, r5, #0
	bl sub_02199904
	add r2, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	str r7, [sp, #8]
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0
	mov r3, #0
	str r0, [sp, #0xc]
	mov r0, #0
	bl sub_021DEC88
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r1, [r4, #0xc]
	add r7, r0, #0
	bl sub_021DEE04
	add r0, r7, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl sub_021998FC
	add r7, r0, #0
	bl sub_021E00B8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x74
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r3, [r4, #8]
	add r0, r7, #0
	bl sub_021EA2A8
	str r0, [r4, #0x10]
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #0x40
	mov r3, #0x80
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02199900
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02199910
	add r3, r4, #0
	add r3, #0x6c
	add r1, r0, #0
	ldrh r3, [r3]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	bl ovy172_2199f94
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	bl sub_02008860
	str r0, [r4, #0x70]
	ldr r1, _02199AC4 ; =ovy172_2199c0c
	add r0, r4, #0
	bl sub_02199B24
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02199ABC: .word 0x0219A628
_02199AC0: .word 0x0219A548
_02199AC4: .word ovy172_2199c0c
	thumb_func_end ovy172_21999a8

	thumb_func_start ovy172_2199ac8
ovy172_2199ac8: ; 0x02199AC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0203A7F4
	bl sub_021DF214
	ldr r0, [r4, #0x10]
	bl sub_021EA4F4
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _02199AE8
	add r0, r4, #0
	blx r1
	pop {r4, pc}
_02199AE8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy172_2199ac8

	thumb_func_start ovy172_2199aec
ovy172_2199aec: ; 0x02199AEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x14]
	bl ovy172_219a0a4
	bl sub_021DF138
	ldr r0, [r4, #0x10]
	bl sub_021EA4C0
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	bl ovy172_2199bf8
	ldr r0, [r4, #0x70]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy172_2199aec

	thumb_func_start sub_02199B24
sub_02199B24: ; 0x02199B24
	mov r2, #0
	str r2, [r0, #0x60]
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_02199B24

	thumb_func_start ovy172_2199b2c
ovy172_2199b2c: ; 0x02199B2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	bl sub_020232D0
	ldr r7, _02199BD8 ; =0x0219A5BC
	add r0, r7, #0
	bl sub_02046C40
	ldr r4, _02199BDC ; =0x04000050
	mov r6, #0
	ldr r0, _02199BE0 ; =0x04001050
	strh r6, [r4]
	ldr r2, _02199BE4 ; =0x04000304
	strh r6, [r0]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _02199BE8 ; =0x0219A578
	bl sub_02044710
	str r6, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	mov r6, #1
	bl sub_02048D28
	mov r0, #1
	mov r1, #0
	bl sub_02049214
	add r0, r4, #0
	add r0, #0x10
	ldrh r1, [r0]
	ldr r2, _02199BEC ; =0xFFFFCFFF
	add r3, r1, #0
	and r3, r2
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _02199BF0 ; =0x0000CFDF
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	sub r4, #0x48
	ldrh r1, [r4]
	mov r0, #3
	add r2, r5, #0
	bic r1, r0
	add r0, r1, #0
	orr r0, r6
	strh r0, [r4]
	ldr r0, _02199BF4 ; =0x0219A5A0
	add r1, r7, #0
	bl sub_0204B6A8
	mov r0, #1
	bl sub_02044BB8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02199BD8: .word 0x0219A5BC
_02199BDC: .word 0x04000050
_02199BE0: .word 0x04001050
_02199BE4: .word 0x04000304
_02199BE8: .word 0x0219A578
_02199BEC: .word 0xFFFFCFFF
_02199BF0: .word 0x0000CFDF
_02199BF4: .word 0x0219A5A0
	thumb_func_end ovy172_2199b2c

	thumb_func_start ovy172_2199bf8
ovy172_2199bf8: ; 0x02199BF8
	push {r3, lr}
	bl sub_020480A8
	bl sub_02044528
	bl sub_0204B758
	bl sub_02048F44
	pop {r3, pc}
	thumb_func_end ovy172_2199bf8

	thumb_func_start ovy172_2199c0c
ovy172_2199c0c: ; 0x02199C0C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #5
	bhi _02199CB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199C22: ; jump table
	.short _02199C2E - _02199C22 - 2 ; case 0
	.short _02199C3C - _02199C22 - 2 ; case 1
	.short _02199C5C - _02199C22 - 2 ; case 2
	.short _02199C6E - _02199C22 - 2 ; case 3
	.short _02199C92 - _02199C22 - 2 ; case 4
	.short _02199CA4 - _02199C22 - 2 ; case 5
_02199C2E:
	ldr r0, [r4, #0x14]
	bl sub_0219A324
_02199C34:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _02199CB4
_02199C3C:
	ldr r0, [r4, #0x14]
	bl sub_0219A330
	cmp r0, #0
	beq _02199CB4
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_021DF81C
	ldr r0, _02199CB8 ; =0x00000231
	bl sub_021DF2C8
	mov r0, #2
	bl ovy172_2199f64
	b _02199C34
_02199C5C:
	bl sub_021DF7E8
	cmp r0, #0
	bne _02199CB4
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	bl ovy172_219a0d8
	b _02199C34
_02199C6E:
	ldr r0, [r4, #0x14]
	bl ovy172_219a204
	cmp r0, #0
	beq _02199CB4
	ldr r0, [r4]
	bl sub_02199914
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_02199900
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_021DFA58
	b _02199C2E
_02199C92:
	ldr r0, [r4, #0x14]
	bl sub_0219A330
	cmp r0, #0
	beq _02199CB4
	ldr r0, _02199CBC ; =0x0000023E
	bl sub_021DF2C8
	b _02199C34
_02199CA4:
	bl sub_021DF7E8
	cmp r0, #0
	bne _02199CB4
	ldr r1, _02199CC0 ; =ovy172_2199cc4
	add r0, r4, #0
	bl sub_02199B24
_02199CB4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199CB8: .word 0x00000231
_02199CBC: .word 0x0000023E
_02199CC0: .word ovy172_2199cc4
	thumb_func_end ovy172_2199c0c

	thumb_func_start ovy172_2199cc4
ovy172_2199cc4: ; 0x02199CC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _02199CD8
	cmp r0, #1
	beq _02199CE8
	cmp r0, #2
	beq _02199CFE
	b _02199D22
_02199CD8:
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	bl ovy172_219a114
_02199CE0:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _02199D22
_02199CE8:
	ldr r0, [r4, #0x14]
	bl ovy172_219a204
	cmp r0, #0
	beq _02199D22
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	bl sub_021EAA3C
	b _02199CE0
_02199CFE:
	ldr r0, [r4, #0x10]
	ldr r1, _02199D28 ; =0x0219A560
	ldr r2, _02199D2C ; =0x0219A588
	bl sub_021EB1C4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02199D22
	cmp r0, #0
	beq _02199D1A
	add r0, r4, #0
	ldr r1, _02199D30 ; =ovy172_2199f10
	b _02199D1E
_02199D1A:
	ldr r1, _02199D34 ; =ovy172_2199d38
	add r0, r4, #0
_02199D1E:
	bl sub_02199B24
_02199D22:
	mov r0, #0
	pop {r4, pc}
	nop
_02199D28: .word 0x0219A560
_02199D2C: .word 0x0219A588
_02199D30: .word ovy172_2199f10
_02199D34: .word ovy172_2199d38
	thumb_func_end ovy172_2199cc4

	thumb_func_start ovy172_2199d38
ovy172_2199d38: ; 0x02199D38
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0xb
	bhi _02199DDC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199D4E: ; jump table
	.short _02199D66 - _02199D4E - 2 ; case 0
	.short _02199DB8 - _02199D4E - 2 ; case 1
	.short _02199DD2 - _02199D4E - 2 ; case 2
	.short _02199E12 - _02199D4E - 2 ; case 3
	.short _02199E26 - _02199D4E - 2 ; case 4
	.short _02199E3A - _02199D4E - 2 ; case 5
	.short _02199E56 - _02199D4E - 2 ; case 6
	.short _02199E68 - _02199D4E - 2 ; case 7
	.short _02199E86 - _02199D4E - 2 ; case 8
	.short _02199E9C - _02199D4E - 2 ; case 9
	.short _02199EAA - _02199D4E - 2 ; case 10
	.short _02199ED2 - _02199D4E - 2 ; case 11
_02199D66:
	ldr r0, [r4]
	bl sub_0219990C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x70]
	mov r1, #0
	str r0, [r4, #0x38]
	mov r0, #3
	str r0, [r4, #0x24]
	ldr r0, [r4, #8]
	strh r1, [r4, #0x32]
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	str r1, [r4, #0x3c]
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x30
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x31
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x74
	str r0, [r4, #0x48]
	mov r1, #1
	ldr r0, [r4, #0x10]
	str r1, [r4, #0x5c]
	bl sub_021EA908
	ldr r0, _02199EF8 ; =0x0000011D
	bl sub_0203CE0C
_02199DB0:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
_02199DB4:
	str r0, [r4, #0x60]
	b _02199EF4
_02199DB8:
	ldr r0, [r4, #0x10]
	bl sub_021EAA2C
	cmp r0, #0
	bne _02199DDC
	ldr r0, _02199EFC ; =0x0000011E
	bl sub_0203CE0C
	add r0, r4, #0
	add r0, #0x1c
	bl sub_021F5B64
	b _02199DB0
_02199DD2:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _02199DDE
_02199DDC:
	b _02199EF4
_02199DDE:
	ldr r0, _02199EF8 ; =0x0000011D
	bl sub_0203CDC8
	ldr r0, _02199EFC ; =0x0000011E
	bl sub_0203CDC8
	ldr r0, [r4, #0x10]
	bl sub_021EA99C
	ldrh r5, [r4, #0x32]
	cmp r5, #0
	bne _02199DFA
	mov r0, #3
_02199DF8:
	b _02199DB4
_02199DFA:
	ldr r0, [r4]
	bl sub_0219990C
	add r3, r4, #0
	add r3, #0x6c
	ldrh r3, [r3]
	add r1, r5, #0
	mov r2, #1
	bl BagSave_SubItem
	mov r0, #4
	b _02199DF8
_02199E12:
	ldr r0, [r4, #0x10]
	bl sub_021EAA2C
	cmp r0, #0
	bne _02199EF4
	ldr r1, _02199F00 ; =ovy172_2199cc4
	add r0, r4, #0
	bl sub_02199B24
	b _02199EF4
_02199E26:
	ldr r0, [r4, #0x10]
	bl sub_021EAA2C
	cmp r0, #0
	bne _02199EF4
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	bl ovy172_219a150
	b _02199DB0
_02199E3A:
	ldr r0, [r4, #0x14]
	bl ovy172_219a204
	cmp r0, #0
	beq _02199EF4
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r4, #0x32]
	mov r0, #1
	mov r2, #4
	mov r3, #1
	bl sub_021DF630
	b _02199DB0
_02199E56:
	bl sub_021DF7E8
	cmp r0, #0
	bne _02199EF4
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	bl ovy172_219a18c
	b _02199DB0
_02199E68:
	ldr r0, [r4, #0x14]
	bl sub_0219A33C
	cmp r0, #0
	beq _02199E7A
	ldr r0, _02199F04 ; =0x00000518
	ldr r1, _02199F08 ; =0x0000FFFF
	bl sub_02005DF4
_02199E7A:
	ldr r0, [r4, #0x14]
	bl ovy172_219a204
	cmp r0, #0
	beq _02199EF4
	b _02199DB0
_02199E86:
	bl sub_02005FA8
	cmp r0, #0
	bne _02199EF4
	bl sub_021DF540
	ldr r0, _02199F0C ; =0x0000047C
	ldr r1, _02199F08 ; =0x0000FFFF
	bl sub_02005DF4
	b _02199DB0
_02199E9C:
	bl sub_021DF7E8
	cmp r0, #0
	bne _02199EF4
	mov r0, #0x50
	str r0, [r4, #0x64]
	b _02199DB0
_02199EAA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _02199EC4
	bl sub_0203DA48
	cmp r0, #0
	bne _02199EC4
	ldr r0, [r4, #0x64]
	sub r0, r0, #1
	str r0, [r4, #0x64]
	bne _02199EF4
_02199EC4:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	b _02199DB0
_02199ED2:
	bl sub_0204E0E0
	cmp r0, #0
	bne _02199EF4
	ldrh r0, [r4, #0x32]
	bl sub_02026C60
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_02199900
	mov r1, #0x98
	add r2, r5, #0
	bl sub_0201CD1C
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199EF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199EF8: .word 0x0000011D
_02199EFC: .word 0x0000011E
_02199F00: .word ovy172_2199cc4
_02199F04: .word 0x00000518
_02199F08: .word 0x0000FFFF
_02199F0C: .word 0x0000047C
	thumb_func_end ovy172_2199d38

	thumb_func_start ovy172_2199f10
ovy172_2199f10: ; 0x02199F10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _02199F24
	cmp r0, #1
	beq _02199F34
	cmp r0, #2
	beq _02199F52
	b _02199F5E
_02199F24:
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	bl ovy172_219a1c8
_02199F2C:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _02199F5E
_02199F34:
	ldr r0, [r4, #0x14]
	bl ovy172_219a204
	cmp r0, #0
	beq _02199F5E
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #8
	bl sub_02005EA0
	b _02199F2C
_02199F52:
	bl sub_0204E0E0
	cmp r0, #0
	bne _02199F5E
	mov r0, #2
	pop {r4, pc}
_02199F5E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy172_2199f10

	thumb_func_start ovy172_2199f64
ovy172_2199f64: ; 0x02199F64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02199F90 ; =0x0400006C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	bgt _02199F80
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	add r3, r4, #0
	bl sub_0204E060
	pop {r4, pc}
_02199F80:
	mov r0, #0xc
	mov r1, #0x10
	mov r2, #0
	add r3, r4, #0
	bl sub_0204E060
	pop {r4, pc}
	nop
_02199F90: .word 0x0400006C
	thumb_func_end ovy172_2199f64

	thumb_func_start ovy172_2199f94
ovy172_2199f94: ; 0x02199F94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	add r5, r3, #0
	mov r0, #0x82
	str r1, [sp, #0x14]
	add r7, r2, #0
	str r0, [sp]
	ldr r3, _0219A09C ; =0x0219A634
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r1, _0219A0A0 ; =0x0219A5EC
	mov r0, #1
	mov r2, #0
	mov r6, #0
	bl sub_0204476C
	add r0, r4, #0
	add r0, #0x44
	strh r5, [r0]
	add r3, r4, #0
	str r7, [r4, #0x28]
	add r3, #0x44
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x6a
	mov r7, #0x6a
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	bl sub_02008A14
	bl sub_02017C50
	str r0, [r4, #0x34]
	mov r0, #0x6a
	add r0, #0x96
	add r1, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x30]
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	add r0, r4, #0
	mov r1, #0x6a
	str r6, [sp]
	add r0, #0x44
	ldrh r0, [r0]
	add r1, #0xfa
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0xb
	mov r3, #0
	bl sub_0204AE00
	add r5, r0, #0
	bl sub_021E00B8
	add r3, r4, #0
	add r7, #0xfb
	str r6, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r3, #0x44
	ldrh r3, [r3]
	mov r1, #0xb
	add r2, r7, #0
	bl sub_02026E94
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x1c]
	bl sub_0204826C
	lsl r1, r5, #0x10
	ldr r0, [r4, #0x1c]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_02048358
	mov r0, #1
	bl sub_02044F90
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	ldr r1, [r4, #0x1c]
	add r0, r4, #4
	bl ovy172_219a3fc
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219A09C: .word 0x0219A634
_0219A0A0: .word 0x0219A5EC
	thumb_func_end ovy172_2199f94

	thumb_func_start ovy172_219a0a4
ovy172_219a0a4: ; 0x0219A0A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x30]
	bl GFL_WordSetSystemFree
	ldr r0, [r4]
	cmp r0, #0
	beq _0219A0BE
	bl sub_020223CC
_0219A0BE:
	mov r0, #1
	bl sub_02044B84
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x1c]
	bl sub_02048210
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy172_219a0a4

	thumb_func_start ovy172_219a0d8
ovy172_219a0d8: ; 0x0219A0D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199900
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r1, #0x50
	bl ovy172_219a354
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy172_219a0d8

	thumb_func_start ovy172_219a114
ovy172_219a114: ; 0x0219A114
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #3
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199908
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl GFL_CopyVarForText
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r1, #0
	bl ovy172_219a354
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy172_219a114

	thumb_func_start ovy172_219a150
ovy172_219a150: ; 0x0219A150
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #1
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199900
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r1, #0x50
	bl ovy172_219a354
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy172_219a150

	thumb_func_start ovy172_219a18c
ovy172_219a18c: ; 0x0219A18C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #2
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199900
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r1, #0x50
	bl ovy172_219a354
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy172_219a18c

	thumb_func_start ovy172_219a1c8
ovy172_219a1c8: ; 0x0219A1C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #4
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199908
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl GFL_CopyVarForText
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r1, #0x50
	bl ovy172_219a354
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy172_219a1c8

	thumb_func_start ovy172_219a204
ovy172_219a204: ; 0x0219A204
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #6
	bls _0219A212
	b _0219A31E
_0219A212:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219A21E: ; jump table
	.short _0219A22C - _0219A21E - 2 ; case 0
	.short _0219A246 - _0219A21E - 2 ; case 1
	.short _0219A278 - _0219A21E - 2 ; case 2
	.short _0219A29E - _0219A21E - 2 ; case 3
	.short _0219A2D8 - _0219A21E - 2 ; case 4
	.short _0219A2E6 - _0219A21E - 2 ; case 5
	.short _0219A31A - _0219A21E - 2 ; case 6
_0219A22C:
	add r1, r4, #0
	add r1, #0x38
	ldrb r1, [r1]
	add r0, r4, #4
	bl ovy172_219a458
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_0219A246:
	add r0, r4, #4
	bl ovy172_219a4a4
	cmp r0, #0
	beq _0219A31E
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219A260
	mov r0, #6
	add r4, #0x39
_0219A25E:
	b _0219A2D4
_0219A260:
	ldr r0, [r4]
	cmp r0, #0
	beq _0219A26A
	bl sub_020223A4
_0219A26A:
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_0219A278:
	ldr r0, [r4]
	cmp r0, #0
	beq _0219A29A
	bl sub_020223B4
	str r0, [r4, #0x3c]
	cmp r0, #0
	beq _0219A31E
	add r1, r4, #0
	mov r2, #3
	add r1, #0x39
	strb r2, [r1]
	cmp r0, #2
	bne _0219A31E
	mov r0, #1
	add r4, #0x3a
	b _0219A25E
_0219A29A:
	mov r0, #1
	pop {r4, pc}
_0219A29E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _0219A2B0
	bl sub_0203DA48
	cmp r0, #0
	beq _0219A2B8
_0219A2B0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x40
	strh r1, [r0]
_0219A2B8:
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219A2D0
_0219A2C2:
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	sub r0, r0, #1
_0219A2CA:
	add r4, #0x40
	strh r0, [r4]
	b _0219A31E
_0219A2D0:
	mov r0, #5
	add r4, #0x39
_0219A2D4:
	strb r0, [r4]
	b _0219A31E
_0219A2D8:
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219A2E4
	b _0219A2C2
_0219A2E4:
	b _0219A2D0
_0219A2E6:
	ldr r0, [r4, #0x3c]
	cmp r0, #2
	bne _0219A304
	bl sub_020232D8
	ldr r0, [r4]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4]
	mov r0, #6
	add r4, #0x39
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0219A304:
	ldr r0, [r4]
	bl sub_020223BC
	add r0, r4, #0
	mov r1, #2
	add r0, #0x39
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	b _0219A2CA
_0219A31A:
	mov r0, #1
	pop {r4, pc}
_0219A31E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy172_219a204

	thumb_func_start sub_0219A324
sub_0219A324: ; 0x0219A324
	ldr r3, _0219A32C ; =sub_0219A428
	add r0, r0, #4
	bx r3
	nop
_0219A32C: .word sub_0219A428
	thumb_func_end sub_0219A324

	thumb_func_start sub_0219A330
sub_0219A330: ; 0x0219A330
	ldr r3, _0219A338 ; =ovy172_219a4a4
	add r0, r0, #4
	bx r3
	nop
_0219A338: .word ovy172_219a4a4
	thumb_func_end sub_0219A330

	thumb_func_start sub_0219A33C
sub_0219A33C: ; 0x0219A33C
	add r1, r0, #0
	add r1, #0x3a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0219A350
	mov r1, #0
	add r0, #0x3a
	strb r1, [r0]
	mov r0, #1
	bx lr
_0219A350:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219A33C

	thumb_func_start ovy172_219a354
ovy172_219a354: ; 0x0219A354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0xc
	mov r6, #0xc
	bl BmpWin_BitmapFill
	mov r0, #1
	mov r1, #9
	mov r2, #0xc
	mov r7, #1
	bl sub_020232E8
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	cmp r4, #0
	beq _0219A3B0
	ldr r0, [r5, #0x24]
	mov r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r7, [sp, #0xc]
	add r0, #0x44
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x2c]
	bl sub_02022268
	str r0, [r5]
	bl sub_02022390
	b _0219A3D6
_0219A3B0:
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x2c]
	mov r1, #0
	bl sub_02021CFC
	ldr r0, [r5, #0x1c]
	bl sub_0204826C
	add r0, r7, #0
	bl sub_02044F90
	ldr r0, [r5, #0x1c]
	bl BmpWin_FlushChar
_0219A3D6:
	add r0, r5, #0
	add r0, #0x38
	strb r7, [r0]
	add r0, r5, #0
	mov r2, #0
	add r0, #0x39
	strb r2, [r0]
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x42
	add r5, #0x3a
	strh r1, [r0]
	strb r2, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy172_219a354

	thumb_func_start ovy172_219a3fc
ovy172_219a3fc: ; 0x0219A3FC
	push {r3, lr}
	str r1, [r0]
	mov r1, #0
	strb r1, [r0, #0x14]
	mov r1, #0x1f
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #7
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	mov r0, #7
	str r0, [sp]
	ldr r0, _0219A424 ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_0219A424: .word 0x04000050
	thumb_func_end ovy172_219a3fc

	thumb_func_start sub_0219A428
sub_0219A428: ; 0x0219A428
	ldrb r1, [r0, #0x14]
	cmp r1, #0
	beq _0219A432
	cmp r1, #3
	bne _0219A450
_0219A432:
	mov r1, #0x1f
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #7
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	ldr r1, _0219A454 ; =0xFFFFAD56
	str r1, [r0, #0xc]
	mov r1, #6
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x15]
	mov r1, #1
	strb r1, [r0, #0x14]
_0219A450:
	bx lr
	nop
_0219A454: .word 0xFFFFAD56
	thumb_func_end sub_0219A428

	thumb_func_start ovy172_219a458
ovy172_219a458: ; 0x0219A458
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0219A498
	cmp r1, #0
	bne _0219A47E
	ldr r0, [r4]
	bl BmpWin_GetBitmap
	mov r1, #0xc
	bl BmpWin_BitmapFill
	ldr r0, [r4]
	bl BmpWin_FlushChar
_0219A47E:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #8]
	ldr r0, _0219A49C ; =0x000052AA
	str r0, [r4, #0xc]
	ldr r0, _0219A4A0 ; =0xFFFFE800
	str r0, [r4, #0x10]
	mov r0, #6
	strb r0, [r4, #0x15]
	mov r0, #4
	strb r0, [r4, #0x14]
_0219A498:
	pop {r4, pc}
	nop
_0219A49C: .word 0x000052AA
_0219A4A0: .word 0xFFFFE800
	thumb_func_end ovy172_219a458

	thumb_func_start ovy172_219a4a4
ovy172_219a4a4: ; 0x0219A4A4
	push {r3, lr}
	add r3, r0, #0
	ldrb r0, [r3, #0x14]
	cmp r0, #4
	bhi _0219A516
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219A4BA: ; jump table
	.short _0219A4C8 - _0219A4BA - 2 ; case 0
	.short _0219A500 - _0219A4BA - 2 ; case 1
	.short _0219A4C4 - _0219A4BA - 2 ; case 2
	.short _0219A4D4 - _0219A4BA - 2 ; case 3
	.short _0219A4CC - _0219A4BA - 2 ; case 4
_0219A4C4:
	mov r0, #1
	pop {r3, pc}
_0219A4C8:
	mov r0, #1
	pop {r3, pc}
_0219A4CC:
	mov r0, #3
	strb r0, [r3, #0x14]
	mov r0, #0
	pop {r3, pc}
_0219A4D4:
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	beq _0219A4F0
_0219A4DA:
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	sub r0, r0, #1
	add r1, r2, r1
	str r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r1, [r3, #0x10]
	strb r0, [r3, #0x15]
	add r1, r2, r1
	str r1, [r3, #8]
	b _0219A516
_0219A4F0:
	mov r0, #0x1f
	lsl r0, r0, #0xc
	str r0, [r3, #4]
	mov r0, #7
	lsl r0, r0, #0xc
	str r0, [r3, #8]
	mov r0, #0
	b _0219A514
_0219A500:
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	beq _0219A508
	b _0219A4DA
_0219A508:
	mov r0, #0
	str r0, [r3, #4]
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r3, #8]
	mov r0, #2
_0219A514:
	strb r0, [r3, #0x14]
_0219A516:
	ldr r0, [r3, #8]
	mov r1, #2
	asr r0, r0, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [r3, #4]
	ldr r0, _0219A538 ; =0x04000050
	asr r3, r3, #0xc
	lsl r3, r3, #0x18
	mov r2, #0x3d
	lsr r3, r3, #0x18
	bl G2x_SetBlendAlpha_
	mov r0, #0
	pop {r3, pc}
	nop
_0219A538: .word 0x04000050
	thumb_func_end ovy172_219a4a4
_0219A53C:
	.byte 0x1D, 0x99, 0x19, 0x02
	.byte 0x65, 0x99, 0x19, 0x02, 0x85, 0x99, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x6C, 0xA5, 0x19, 0x02, 0x50, 0xA5, 0x19, 0x02, 0x58, 0xA5, 0x19, 0x02, 0x90, 0xC0, 0x00, 0x50
	.byte 0x98, 0xC0, 0x58, 0xA8, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0x80
	.byte 0x80, 0x01, 0x00, 0x80, 0x01, 0x01, 0x01, 0x01, 0xFF, 0xFF, 0x80, 0x80, 0x00, 0x80, 0x01, 0x80
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x38, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 0x10, 0x00, 0x10, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x64, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x70, 0x64, 0x63, 0x5F, 0x6D, 0x61, 0x69, 0x6E
	.byte 0x2E, 0x63, 0x00, 0x00, 0x70, 0x64, 0x63, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00
	; 0x0219A53C
