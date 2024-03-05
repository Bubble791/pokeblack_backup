    .include "macros/function.inc"
	.include "overlay175.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy175_21998c0
ovy175_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _02199900 ; =0x00000113
	add r5, r2, #0
	str r3, [sp, #4]
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _02199904 ; =0x0219ACE4
	add r0, r5, #0
	mov r1, #0x8c
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x8c
	blx MI_CpuFill8
	add r0, r4, #0
	str r6, [r4, #0x40]
	add r0, #0x88
	strh r5, [r0]
	mov r0, #0
	str r0, [r4, #0x74]
	ldr r0, [sp, #4]
	str r0, [r4, #0x78]
	str r7, [r4]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199900: .word 0x00000113
_02199904: .word 0x0219ACE4
	thumb_func_end ovy175_21998c0

	thumb_func_start sub_02199908
sub_02199908: ; 0x02199908
	ldr r3, _0219990C ; =sub_0203A24C
	bx r3
	.align 2, 0
_0219990C: .word sub_0203A24C
	thumb_func_end sub_02199908

	thumb_func_start ovy175_2199910
ovy175_2199910: ; 0x02199910
	push {r3, r4, r5, lr}
	sub sp, #0x70
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02199922
	add sp, #0x70
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199922:
	ldr r0, [r4, #0x44]
	cmp r0, #3
	bhi _02199998
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199934: ; jump table
	.short _0219993C - _02199934 - 2 ; case 0
	.short _0219996C - _02199934 - 2 ; case 1
	.short _02199978 - _02199934 - 2 ; case 2
	.short _0219998E - _02199934 - 2 ; case 3
_0219993C:
	bl sub_02042788
	cmp r0, #0
	beq _0219994A
	mov r0, #2
	str r0, [r4, #0x44]
	b _02199966
_0219994A:
	ldr r5, _021999A0 ; =0x0219ABFC
	add r3, sp, #0
	mov r2, #0xe
_02199950:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02199950
	ldr r0, [r4, #0x40]
	ldr r1, _021999A4 ; =0x02199E31
	str r0, [sp, #0x68]
	add r0, sp, #0
	add r2, r4, #0
	bl sub_020425EC
_02199966:
	mov r0, #1
_02199968:
	str r0, [r4, #0x44]
	b _02199998
_0219996C:
	bl sub_02042788
	cmp r0, #0
	beq _02199998
	mov r0, #2
	b _02199968
_02199978:
	add r2, r4, #0
	add r2, #0x88
	ldrh r2, [r2]
	add r0, r4, #4
	add r1, r4, #0
	bl ovy175_2199ea0
	mov r0, #1
	str r0, [r4, #0x74]
	mov r0, #3
	b _02199968
_0219998E:
	mov r0, #0
	str r0, [r4, #0x44]
	add sp, #0x70
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199998:
	mov r0, #0
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_021999A0: .word 0x0219ABFC
_021999A4: .word 0x02199E31
	thumb_func_end ovy175_2199910

	thumb_func_start ovy175_21999a8
ovy175_21999a8: ; 0x021999A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _021999B6
	mov r0, #1
	pop {r4, pc}
_021999B6:
	ldr r0, [r4, #0x44]
	cmp r0, #3
	bhi _02199A0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021999C8: ; jump table
	.short _021999D0 - _021999C8 - 2 ; case 0
	.short _021999E8 - _021999C8 - 2 ; case 1
	.short _021999FC - _021999C8 - 2 ; case 2
	.short _02199A04 - _021999C8 - 2 ; case 3
_021999D0:
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021999E0
	add r0, r4, #4
	bl ovy175_2199f20
	mov r0, #0
	str r0, [r4, #0x74]
_021999E0:
	mov r0, #0
	str r0, [r4, #0x54]
	mov r0, #1
_021999E6:
	b _021999F8
_021999E8:
	ldr r0, _02199A10 ; =0x02199E35
	bl sub_02042860
	cmp r0, #0
	beq _021999F6
	mov r0, #2
	b _021999E6
_021999F6:
	mov r0, #3
_021999F8:
	str r0, [r4, #0x44]
	b _02199A0C
_021999FC:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _02199A0C
	b _021999F6
_02199A04:
	mov r0, #0
	str r0, [r4, #0x44]
	mov r0, #1
	pop {r4, pc}
_02199A0C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02199A10: .word 0x02199E35
	thumb_func_end ovy175_21999a8

	thumb_func_start ovy175_2199a14
ovy175_2199a14: ; 0x02199A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _02199A22
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199A22:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _02199A32
	cmp r0, #1
	beq _02199A4A
	cmp r0, #2
	beq _02199A5E
	b _02199A66
_02199A32:
	mov r0, #0
	mov r4, #0
	bl sub_020429F8
	add r0, r5, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r5, #0x44]
	str r1, [r0]
	str r4, [r5, #0x50]
	str r4, [r5, #0x4c]
	b _02199A66
_02199A4A:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _02199A66
	add r0, r5, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0]
	mov r0, #2
	str r0, [r5, #0x44]
	b _02199A66
_02199A5E:
	mov r0, #0
	str r0, [r5, #0x44]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199A66:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy175_2199a14

	thumb_func_start ovy175_2199a6c
ovy175_2199a6c: ; 0x02199A6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02199A7A
	mov r0, #1
	pop {r4, pc}
_02199A7A:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _02199A8A
	cmp r0, #1
	beq _02199A9C
	cmp r0, #2
	beq _02199AB0
	b _02199AB8
_02199A8A:
	bl sub_02040440
	mov r1, #0xe
	mov r2, #0xd
	bl sub_02040624
	mov r0, #1
_02199A98:
	str r0, [r4, #0x44]
	b _02199AB8
_02199A9C:
	bl sub_02040440
	mov r1, #0xe
	mov r2, #0xd
	bl sub_02040664
	cmp r0, #0
	beq _02199AB8
	mov r0, #2
	b _02199A98
_02199AB0:
	mov r0, #0
	str r0, [r4, #0x44]
	mov r0, #1
	pop {r4, pc}
_02199AB8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy175_2199a6c
_02199ABC:
	.byte 0x81, 0x6F, 0x00, 0x29
	.byte 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x6D, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy175_2199acc
ovy175_2199acc: ; 0x02199ACC
	push {r0, r1, r2, r3}
	thumb_func_end ovy175_2199acc

	non_word_aligned_thumb_func_start ovy175_2199ace
ovy175_2199ace: ; 0x02199ACE
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x78]
	cmp r1, #0
	beq _02199AE2
	mov r0, #1
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_02199AE2:
	ldr r1, [r4, #0x44]
	cmp r1, #4
	bhi _02199B6C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02199AF4: ; jump table
	.short _02199AFE - _02199AF4 - 2 ; case 0
	.short _02199B18 - _02199AF4 - 2 ; case 1
	.short _02199B40 - _02199AF4 - 2 ; case 2
	.short _02199B54 - _02199AF4 - 2 ; case 3
	.short _02199B5E - _02199AF4 - 2 ; case 4
_02199AFE:
	mov r1, #0
	str r1, [r4, #0x70]
	mov r1, #0xd
	lsl r1, r1, #8
	mov r2, #4
	add r3, sp, #0x14
	bl ovy175_2199c54
	cmp r0, #0
	beq _02199B6C
	mov r0, #1
_02199B14:
	str r0, [r4, #0x44]
	b _02199B6C
_02199B18:
	bl sub_02042BC4
	cmp r0, #0
	beq _02199B3C
	ldr r2, [sp, #0x14]
	mov r1, #0
_02199B24:
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x68]
	cmp r2, r0
	bne _02199B34
	add r1, r1, #1
	cmp r1, #2
	blt _02199B24
_02199B34:
	cmp r1, #2
	bne _02199B6C
	mov r0, #2
	b _02199B14
_02199B3C:
	mov r0, #3
	b _02199B14
_02199B40:
	ldr r1, _02199B78 ; =0x00000D01
	mov r2, #4
	add r3, sp, #0x14
	mov r5, #4
	bl ovy175_2199c54
	cmp r0, #0
	beq _02199B6C
	str r5, [r4, #0x44]
	b _02199B6C
_02199B54:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _02199B6C
	mov r0, #4
	b _02199B14
_02199B5E:
	mov r0, #0
	str r0, [r4, #0x44]
	mov r0, #1
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_02199B6C:
	mov r0, #0
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02199B78: .word 0x00000D01
	thumb_func_end ovy175_2199ace
_02199B7C:
	.byte 0x00, 0x21, 0x41, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x21, 0xC1, 0x63, 0x81, 0x63, 0x70, 0x47, 0x81, 0x63, 0x70, 0x47

	thumb_func_start ovy175_2199b90
ovy175_2199b90: ; 0x02199B90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02199B9E
	mov r0, #1
	pop {r4, pc}
_02199B9E:
	add r0, r4, #0
	add r0, #0x82
	ldrh r2, [r0]
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x82
	strh r1, [r0]
	cmp r2, #0xb4
	bls _02199BDA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x82
	strh r1, [r0]
	bl sub_02040440
	bl sub_02042A6C
	add r1, r0, #0
	ldr r0, _02199BE0 ; =0x00000D02
	bl sub_020400B8
	cmp r0, #0
	bne _02199BDA
	add r0, r4, #0
	bl ovy175_2199be4
	pop {r4, pc}
_02199BDA:
	mov r0, #0
	pop {r4, pc}
	nop
_02199BE0: .word 0x00000D02
	thumb_func_end ovy175_2199b90

	thumb_func_start ovy175_2199be4
ovy175_2199be4: ; 0x02199BE4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _02199BF6
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02199BF6:
	bl sub_02040440
	bl sub_02042A6C
	add r1, r0, #0
	bne _02199C06
	mov r0, #1
	b _02199C08
_02199C06:
	mov r0, #0
_02199C08:
	ldr r6, _02199C3C ; =0x00000D02
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	bl sub_020400B8
	cmp r0, #0
	bne _02199C36
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r5, #0x38
	add r1, r6, #0
	mov r2, #4
	add r3, r5, #0
	bl ovy175_2199c78
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02199C36:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02199C3C: .word 0x00000D02
	thumb_func_end ovy175_2199be4
_02199C40:
	.byte 0x81, 0x6F, 0x00, 0x29, 0x01, 0xD0, 0x00, 0x20, 0x70, 0x47, 0x81, 0x6B, 0xC0, 0x6B, 0x08, 0x1A
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy175_2199c54
ovy175_2199c54: ; 0x02199C54
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x78]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02199C66
	mov r0, #1
	pop {r4, r5, r6, pc}
_02199C66:
	bl sub_02040440
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02042BE8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy175_2199c54

	thumb_func_start ovy175_2199c78
ovy175_2199c78: ; 0x02199C78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x78]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _02199C8E
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02199C8E:
	bl sub_02040440
	ldr r1, [sp, #0x24]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x28]
	add r2, r5, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	add r3, r6, #0
	str r1, [sp, #0xc]
	add r1, sp, #0x20
	ldrb r1, [r1]
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ovy175_2199c78

	thumb_func_start ovy175_2199cb0
ovy175_2199cb0: ; 0x02199CB0
	push {r3, lr}
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bne _02199CC4
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl sub_02040C20
_02199CC4:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy175_2199cb0

	thumb_func_start ovy175_2199cc8
ovy175_2199cc8: ; 0x02199CC8
	push {r3, lr}
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bne _02199CD6
	add r0, r1, #0
	bl sub_02040C64
_02199CD6:
	pop {r3, pc}
	thumb_func_end ovy175_2199cc8

	thumb_func_start ovy175_2199cd8
ovy175_2199cd8: ; 0x02199CD8
	push {r3, lr}
	ldr r3, [r0, #0x78]
	cmp r3, #0
	beq _02199CE4
	mov r0, #1
	pop {r3, pc}
_02199CE4:
	add r0, r0, #4
	bl ovy175_2199f4c
	pop {r3, pc}
	thumb_func_end ovy175_2199cd8

	thumb_func_start ovy175_2199cec
ovy175_2199cec: ; 0x02199CEC
	push {r3, lr}
	ldr r1, [r0, #0x78]
	cmp r1, #0
	beq _02199CF8
	mov r0, #1
	pop {r3, pc}
_02199CF8:
	add r0, r0, #4
	bl sub_02199F70
	pop {r3, pc}
	thumb_func_end ovy175_2199cec

	thumb_func_start ovy175_2199d00
ovy175_2199d00: ; 0x02199D00
	push {r3, lr}
	ldr r1, [r0, #0x78]
	cmp r1, #0
	beq _02199D0C
	mov r0, #1
	pop {r3, pc}
_02199D0C:
	add r0, r0, #4
	bl ovy175_2199f84
	pop {r3, pc}
	thumb_func_end ovy175_2199d00

	thumb_func_start ovy175_2199d14
ovy175_2199d14: ; 0x02199D14
	push {r3, lr}
	ldr r1, [r0, #0x78]
	cmp r1, #0
	beq _02199D20
	mov r0, #1
	pop {r3, pc}
_02199D20:
	add r0, r0, #4
	bl sub_02199FA4
	pop {r3, pc}
	thumb_func_end ovy175_2199d14

	thumb_func_start ovy175_2199d28
ovy175_2199d28: ; 0x02199D28
	push {r3, lr}
	ldr r2, [r0, #0x78]
	cmp r2, #0
	beq _02199D34
	mov r0, #1
	pop {r3, pc}
_02199D34:
	add r0, r0, #4
	bl ovy175_2199fb8
	pop {r3, pc}
	thumb_func_end ovy175_2199d28

	thumb_func_start ovy175_2199d3c
ovy175_2199d3c: ; 0x02199D3C
	push {r3, lr}
	ldr r2, [r0, #0x78]
	cmp r2, #0
	bne _02199D4A
	add r0, r0, #4
	bl ovy175_219a01c
_02199D4A:
	pop {r3, pc}
	thumb_func_end ovy175_2199d3c

	thumb_func_start ovy175_2199d4c
ovy175_2199d4c: ; 0x02199D4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x64
	add r4, r0, #0
	add r0, sp, #0x10
	add r5, r1, #0
	bl sub_0207C350
	add r0, r4, #0
	bl sub_02016AD8
	add r4, r0, #0
	bl sub_0201736C
	add r1, sp, #0
	ldrb r2, [r1, #0x12]
	strb r2, [r5, #4]
	ldrb r1, [r1, #0x13]
	strb r1, [r5, #5]
	add r1, r5, #0
	add r1, #0xc
	bl sub_02008B34
	add r0, r4, #0
	bl sub_0201735C
	mov r1, #0
	mov r4, #0
	bl sub_0201FF08
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r5, #6]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	strb r0, [r5, #8]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	strb r0, [r5, #9]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	strb r0, [r5, #0xa]
	add r0, sp, #0
	bl sub_0204424C
	ldr r0, [sp, #8]
	cmp r0, #0xe
	bne _02199DC4
	mov r4, #1
_02199DC4:
	ldrb r0, [r5, #0xb]
	mov r1, #0xf
	bic r0, r1
	lsl r1, r4, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r5, #0xb]
	ldr r2, [sp]
	ldr r0, [sp, #8]
	lsl r3, r2, #0x18
	ldr r2, [sp, #4]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #8
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x10
	orr r2, r3
	orr r0, r2
	orr r0, r1
	str r0, [r5]
	add sp, #0x64
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy175_2199d4c

	thumb_func_start ovy175_2199df4
ovy175_2199df4: ; 0x02199DF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	ldr r2, [r4, #0x4c]
	lsl r0, r1
	orr r0, r2
	mov r5, #1
	str r0, [r4, #0x4c]
	bl MATH_CountPopulation
	cmp r0, #2
	blo _02199E0E
	str r5, [r4, #0x50]
_02199E0E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy175_2199df4
_02199E10:
	.byte 0x00, 0x48, 0x70, 0x47, 0xE0, 0xAC, 0x19, 0x02, 0x04, 0x20, 0x70, 0x47, 0x88, 0x42, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x21, 0x01, 0x65, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x01, 0x21, 0x41, 0x65, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy175_2199e3c
ovy175_2199e3c: ; 0x02199E3C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _02199E60
	add r0, r6, #0
	add r1, sp, #0
	mov r2, #4
	blx MI_CpuCopy8
	lsl r0, r5, #2
	ldr r1, [sp]
	add r0, r4, r0
	str r1, [r0, #0x68]
_02199E60:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy175_2199e3c

	thumb_func_start ovy175_2199e64
ovy175_2199e64: ; 0x02199E64
	push {r4, lr}
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _02199E76
	mov r0, #1
	str r0, [r4, #0x70]
_02199E76:
	pop {r4, pc}
	thumb_func_end ovy175_2199e64

	thumb_func_start ovy175_2199e78
ovy175_2199e78: ; 0x02199E78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02199E9E
	bl sub_0203FFC4
	cmp r5, r0
	beq _02199E9E
	add r4, #0x3c
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	blx MI_CpuCopy8
_02199E9E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy175_2199e78

	thumb_func_start ovy175_2199ea0
ovy175_2199ea0: ; 0x02199EA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x34
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r7, _02199F14 ; =0x0000057B
	str r4, [r5]
	ldr r3, _02199F18 ; =0x0219ACE4
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	str r7, [sp]
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x2c
	str r0, [r5, #0x28]
	blx MI_CpuFill8
	add r0, r7, #2
	str r0, [sp]
	ldr r3, _02199F18 ; =0x0219ACE4
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x2c
	str r0, [r5, #0x2c]
	blx MI_CpuFill8
	add r0, r7, #4
	str r0, [sp]
	ldr r3, _02199F18 ; =0x0219ACE4
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x2c
	str r0, [r5, #0x30]
	blx MI_CpuFill8
	mov r1, #1
	ldr r2, _02199F1C ; =0x0219ABDC
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r3, #4
	str r5, [sp]
	bl ovy175_2199cb0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199F14: .word 0x0000057B
_02199F18: .word 0x0219ACE4
_02199F1C: .word 0x0219ABDC
	thumb_func_end ovy175_2199ea0

	thumb_func_start ovy175_2199f20
ovy175_2199f20: ; 0x02199F20
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4]
	lsl r1, r1, #0xc
	bl ovy175_2199cc8
	ldr r0, [r4, #0x28]
	bl sub_0203A24C
	ldr r0, [r4, #0x2c]
	bl sub_0203A24C
	ldr r0, [r4, #0x30]
	bl sub_0203A24C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy175_2199f20

	thumb_func_start ovy175_2199f4c
ovy175_2199f4c: ; 0x02199F4C
	push {r3, lr}
	add r3, r0, #0
	str r1, [r3, #0x14]
	mov r1, #1
	str r2, [r3, #0x10]
	ldr r0, [r3]
	lsl r1, r1, #0xc
	mov r2, #8
	add r3, #0x10
	bl ovy175_2199c54
	cmp r0, #0
	beq _02199F6A
	mov r0, #1
	pop {r3, pc}
_02199F6A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy175_2199f4c

	thumb_func_start sub_02199F70
sub_02199F70: ; 0x02199F70
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _02199F7E
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	bx lr
_02199F7E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02199F70

	thumb_func_start ovy175_2199f84
ovy175_2199f84: ; 0x02199F84
	push {r3, lr}
	ldr r0, [r0]
	ldr r1, _02199FA0 ; =0x00001001
	mov r2, #4
	add r3, sp, #0
	bl ovy175_2199c54
	cmp r0, #0
	beq _02199F9A
	mov r0, #1
	pop {r3, pc}
_02199F9A:
	mov r0, #0
	pop {r3, pc}
	nop
_02199FA0: .word 0x00001001
	thumb_func_end ovy175_2199f84

	thumb_func_start sub_02199FA4
sub_02199FA4: ; 0x02199FA4
	ldr r1, [r0, #0x1c]
	cmp r1, #1
	bne _02199FB2
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r0, #1
	bx lr
_02199FB2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02199FA4

	thumb_func_start ovy175_2199fb8
ovy175_2199fb8: ; 0x02199FB8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02199FCA
	cmp r0, #1
	beq _0219A000
	b _0219A012
_02199FCA:
	cmp r1, #0
	beq _02199FD8
	add r0, r1, #0
	ldr r1, [r4, #0x28]
	bl ovy175_2199d4c
	b _02199FDE
_02199FD8:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199FDE:
	mov r0, #0xff
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r5, #1
	str r5, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, _0219A018 ; =0x00001003
	ldr r3, [r4, #0x28]
	mov r2, #0x2c
	bl ovy175_2199c78
	cmp r0, #0
	beq _0219A012
	str r5, [r4, #4]
	b _0219A012
_0219A000:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219A012
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x24]
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219A012:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A018: .word 0x00001003
	thumb_func_end ovy175_2199fb8

	thumb_func_start ovy175_219a01c
ovy175_219a01c: ; 0x0219A01C
	push {r3, r4}
	ldr r3, [r0, #0x30]
	add r4, r1, #0
	mov r2, #5
_0219A024:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0219A024
	ldr r0, [r3]
	str r0, [r4]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy175_219a01c

	thumb_func_start ovy175_219a034
ovy175_219a034: ; 0x0219A034
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219A05E
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219A05E
	add r1, r4, #0
	add r0, r6, #0
	add r1, #8
	mov r2, #8
	blx MI_CpuCopy8
	mov r0, #1
	str r0, [r4, #0x18]
_0219A05E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy175_219a034

	thumb_func_start ovy175_219a060
ovy175_219a060: ; 0x0219A060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219A07C
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219A07C
	mov r0, #1
	str r0, [r4, #0x1c]
_0219A07C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy175_219a060

	thumb_func_start ovy175_219a080
ovy175_219a080: ; 0x0219A080
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219A09C
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219A09C
	mov r0, #1
	str r0, [r4, #0x20]
_0219A09C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy175_219a080

	thumb_func_start ovy175_219a0a0
ovy175_219a0a0: ; 0x0219A0A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r0, #0
	ldr r0, [r6]
	add r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219A0C8
	add r1, r5, #0
	bl sub_02017378
	add r7, r0, #0
	bl sub_02008B08
	add r4, #0xc
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	blx MI_CpuCopy8
_0219A0C8:
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0219A0DE
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219A0DE
	mov r0, #1
	str r0, [r6, #0x24]
_0219A0DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy175_219a0a0

	thumb_func_start ovy175_219a0e0
ovy175_219a0e0: ; 0x0219A0E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r5, r0
	bne _0219A0F2
	ldr r0, [r4, #0x2c]
	pop {r3, r4, r5, pc}
_0219A0F2:
	ldr r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy175_219a0e0

	thumb_func_start ovy175_219a0f8
ovy175_219a0f8: ; 0x0219A0F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #1
	add r6, r2, #0
	mov r1, #0x3a
	lsl r2, r0, #0xf
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x40
	mov r2, #0x3a
	mov r4, #0x40
	bl sub_0203AAEC
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r3, _0219A17C ; =0x0219ACFC
	str r6, [r5, #0x10]
	add r4, #0xd9
	mov r0, #0x3a
	mov r1, #0x2c
	mov r2, #0
	str r4, [sp]
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x2c
	str r0, [r5, #0x3c]
	blx MI_CpuFill8
	add r0, r5, #4
	mov r1, #0x3a
	bl ovy175_219a3a4
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219A152
	bl sub_02016AD8
	add r7, r0, #0
_0219A152:
	mov r0, #0
	mvn r0, r0
	add r1, r7, #0
	mov r2, #0x3a
	mov r3, #0
	bl ovy175_21998c0
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #0x34]
	ldr r1, _0219A180 ; =ovy175_219a20c
	add r0, r5, #0
	bl sub_0219A1FC
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A17C: .word 0x0219ACFC
_0219A180: .word ovy175_219a20c
	thumb_func_end ovy175_219a0f8

	thumb_func_start ovy175_219a184
ovy175_219a184: ; 0x0219A184
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	ldr r0, [r4]
	bl sub_02199908
	add r0, r4, #4
	bl ovy175_219a3c8
	ldr r0, [r4, #0x3c]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x3a
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy175_219a184

	thumb_func_start ovy175_219a1b8
ovy175_219a1b8: ; 0x0219A1B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #0
	beq _0219A1CA
	cmp r0, #1
	beq _0219A1DA
	b _0219A1F8
_0219A1CA:
	bl sub_02005EC0
	cmp r0, #0
	bne _0219A1F8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219A1F8
_0219A1DA:
	add r0, r4, #4
	bl sub_0219A3BC
	cmp r0, #0
	bne _0219A1EE
	add r1, r4, #0
	ldr r2, [r4, #0x14]
	add r0, r4, #0
	add r1, #0x18
	blx r2
_0219A1EE:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0219A1F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219A1F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy175_219a1b8

	thumb_func_start sub_0219A1FC
sub_0219A1FC: ; 0x0219A1FC
	str r1, [r0, #0x14]
	mov r1, #0
	strh r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219A1FC

	thumb_func_start sub_0219A204
sub_0219A204: ; 0x0219A204
	mov r1, #1
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A204

	thumb_func_start ovy175_219a20c
ovy175_219a20c: ; 0x0219A20C
	push {r3, lr}
	ldrh r1, [r1]
	cmp r1, #0
	bne _0219A21A
	ldr r1, _0219A21C ; =ovy175_219a23c
	bl sub_0219A1FC
_0219A21A:
	pop {r3, pc}
	.align 2, 0
_0219A21C: .word ovy175_219a23c
	thumb_func_end ovy175_219a20c

	thumb_func_start ovy175_219a220
ovy175_219a220: ; 0x0219A220
	push {r3, lr}
	ldrh r2, [r1]
	cmp r2, #0
	beq _0219A22E
	cmp r2, #1
	beq _0219A234
	pop {r3, pc}
_0219A22E:
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
_0219A234:
	bl sub_0219A204
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy175_219a220

	thumb_func_start ovy175_219a23c
ovy175_219a23c: ; 0x0219A23C
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r3, r0, #0
	cmp r1, #0
	beq _0219A24E
	cmp r1, #1
	beq _0219A262
	pop {r4, pc}
_0219A24E:
	add r0, r3, #4
	mov r1, #0
	mov r2, #0x3a
	bl ovy175_219a3e0
	cmp r0, #0
	beq _0219A288
	mov r0, #1
	strh r0, [r4]
	pop {r4, pc}
_0219A262:
	ldr r1, [r3, #0x20]
	cmp r1, #0
	beq _0219A272
	cmp r1, #1
	beq _0219A27A
	cmp r1, #2
	beq _0219A282
	pop {r4, pc}
_0219A272:
	ldr r1, _0219A28C ; =ovy175_219a298
	bl sub_0219A1FC
	pop {r4, pc}
_0219A27A:
	ldr r1, _0219A290 ; =ovy175_219a368
	bl sub_0219A1FC
	pop {r4, pc}
_0219A282:
	ldr r1, _0219A294 ; =ovy175_219a220
	bl sub_0219A1FC
_0219A288:
	pop {r4, pc}
	nop
_0219A28C: .word ovy175_219a298
_0219A290: .word ovy175_219a368
_0219A294: .word ovy175_219a220
	thumb_func_end ovy175_219a23c

	thumb_func_start ovy175_219a298
ovy175_219a298: ; 0x0219A298
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r3, r0, #0
	cmp r1, #6
	bhi _0219A360
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219A2B0: ; jump table
	.short _0219A2BE - _0219A2B0 - 2 ; case 0
	.short _0219A2CE - _0219A2B0 - 2 ; case 1
	.short _0219A2E2 - _0219A2B0 - 2 ; case 2
	.short _0219A30A - _0219A2B0 - 2 ; case 3
	.short _0219A31E - _0219A2B0 - 2 ; case 4
	.short _0219A346 - _0219A2B0 - 2 ; case 5
	.short _0219A35A - _0219A2B0 - 2 ; case 6
_0219A2BE:
	mov r1, #0
	add r0, #0x2e
	add r3, #0x2c
	strb r1, [r0]
	strb r1, [r3]
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A2CE:
	add r0, r3, #4
	mov r1, #2
	mov r2, #0x3a
	mov r5, #2
	bl ovy175_219a3e0
	cmp r0, #0
	beq _0219A360
	strh r5, [r4]
	pop {r3, r4, r5, pc}
_0219A2E2:
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0219A2EE
	mov r0, #3
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A2EE:
	cmp r0, #2
	bne _0219A304
	add r0, r3, #0
	mov r1, #0
	add r0, #0x2e
	add r3, #0x2c
	strb r1, [r0]
	strb r1, [r3]
	mov r0, #5
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A304:
	mov r0, #6
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A30A:
	add r0, r3, #4
	mov r1, #1
	mov r2, #0x3a
	bl ovy175_219a3e0
	cmp r0, #0
	beq _0219A360
	mov r0, #4
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A31E:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0219A32A
	mov r0, #5
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A32A:
	cmp r0, #2
	bne _0219A340
	add r0, r3, #0
	mov r1, #0
	add r0, #0x2e
	add r3, #0x2c
	strb r1, [r0]
	strb r1, [r3]
	mov r0, #5
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A340:
	mov r0, #6
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A346:
	add r0, r3, #4
	mov r1, #3
	mov r2, #0x3a
	bl ovy175_219a3e0
	cmp r0, #0
	beq _0219A360
	mov r0, #6
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_0219A35A:
	ldr r1, _0219A364 ; =ovy175_219a23c
	bl sub_0219A1FC
_0219A360:
	pop {r3, r4, r5, pc}
	nop
_0219A364: .word ovy175_219a23c
	thumb_func_end ovy175_219a298

	thumb_func_start ovy175_219a368
ovy175_219a368: ; 0x0219A368
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r3, r0, #0
	cmp r1, #0
	beq _0219A37E
	cmp r1, #1
	beq _0219A384
	cmp r1, #2
	beq _0219A398
	pop {r4, pc}
_0219A37E:
	mov r0, #1
	strh r0, [r4]
	pop {r4, pc}
_0219A384:
	add r0, r3, #4
	mov r1, #4
	mov r2, #0x3a
	bl ovy175_219a3e0
	cmp r0, #0
	beq _0219A39E
	mov r0, #2
	strh r0, [r4]
	pop {r4, pc}
_0219A398:
	ldr r1, _0219A3A0 ; =ovy175_219a23c
	bl sub_0219A1FC
_0219A39E:
	pop {r4, pc}
	.align 2, 0
_0219A3A0: .word ovy175_219a23c
	thumb_func_end ovy175_219a368

	thumb_func_start ovy175_219a3a4
ovy175_219a3a4: ; 0x0219A3A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A970
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy175_219a3a4

	thumb_func_start sub_0219A3BC
sub_0219A3BC: ; 0x0219A3BC
	ldr r0, [r0]
	ldr r3, _0219A3C4 ; =sub_0203A978
	bx r3
	nop
_0219A3C4: .word sub_0203A978
	thumb_func_end sub_0219A3BC

	thumb_func_start ovy175_219a3c8
ovy175_219a3c8: ; 0x0219A3C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0203A980
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy175_219a3c8

	thumb_func_start ovy175_219a3e0
ovy175_219a3e0: ; 0x0219A3E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _0219A44C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219A3F6: ; jump table
	.short _0219A3FE - _0219A3F6 - 2 ; case 0
	.short _0219A41A - _0219A3F6 - 2 ; case 1
	.short _0219A430 - _0219A3F6 - 2 ; case 2
	.short _0219A444 - _0219A3F6 - 2 ; case 3
_0219A3FE:
	ldr r0, _0219A450 ; =0x0219AC80
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	cmp r5, #0
	beq _0219A410
	add r0, r2, #0
	add r1, r3, #0
	blx r5
	b _0219A412
_0219A410:
	mov r0, #0
_0219A412:
	str r0, [r4, #8]
	mov r0, #1
_0219A416:
	str r0, [r4, #4]
	b _0219A44C
_0219A41A:
	lsl r3, r1, #4
	ldr r1, _0219A454 ; =0x0219AC78
	ldr r2, _0219A458 ; =0x0219AC7C
	ldr r0, [r4]
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r4, #8]
	bl sub_0203A988
	mov r0, #2
	b _0219A416
_0219A430:
	ldr r0, _0219A45C ; =0x0219AC84
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0219A440
	ldr r0, [r4, #8]
	add r1, r3, #0
	blx r2
_0219A440:
	mov r0, #3
	b _0219A416
_0219A444:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219A44C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A450: .word 0x0219AC80
_0219A454: .word 0x0219AC78
_0219A458: .word 0x0219AC7C
_0219A45C: .word 0x0219AC84
	thumb_func_end ovy175_219a3e0

	thumb_func_start ovy175_219a460
ovy175_219a460: ; 0x0219A460
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, _0219A4B0 ; =0x0000036E
	ldr r3, _0219A4B4 ; =0x0219ACFC
	str r1, [sp]
	mov r1, #0x14
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x34]
	cmp r0, #1
	bne _0219A49A
	str r6, [r4, #8]
	str r6, [r5, #0x34]
	b _0219A4AA
_0219A49A:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219A4A6
	str r6, [r5, #0x38]
	mov r0, #2
	b _0219A4A8
_0219A4A6:
	mov r0, #1
_0219A4A8:
	str r0, [r4, #8]
_0219A4AA:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219A4B0: .word 0x0000036E
_0219A4B4: .word 0x0219ACFC
	thumb_func_end ovy175_219a460
_0219A4B8:
	.byte 0xC2, 0x68, 0x01, 0x4B, 0x0A, 0x62, 0x18, 0x47
	.byte 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy175_219a4c4
ovy175_219a4c4: ; 0x0219A4C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0219A4F4 ; =0x000003AF
	ldr r3, _0219A4F8 ; =0x0219ACFC
	str r1, [sp]
	mov r1, #0x14
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0219A4F4: .word 0x000003AF
_0219A4F8: .word 0x0219ACFC
	thumb_func_end ovy175_219a4c4
_0219A4FC:
	.byte 0xC2, 0x68, 0x4A, 0x62
	.byte 0x03, 0x7C, 0x0A, 0x1C, 0x2E, 0x32, 0x13, 0x70, 0x0A, 0x1C, 0x43, 0x7C, 0x2F, 0x32, 0x13, 0x70
	.byte 0x82, 0x7C, 0x01, 0x4B, 0x0A, 0x63, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy175_219a51c
ovy175_219a51c: ; 0x0219A51C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xf9
	lsl r1, r1, #2
	str r1, [sp]
	ldr r3, _0219A54C ; =0x0219ACFC
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A54C: .word 0x0219ACFC
	thumb_func_end ovy175_219a51c
_0219A550:
	.byte 0xC2, 0x68, 0x8A, 0x62, 0x03, 0x7C, 0x0A, 0x1C, 0x2C, 0x32, 0x13, 0x70, 0x42, 0x69, 0x2D, 0x31
	.byte 0x01, 0x4B, 0x0A, 0x70, 0x18, 0x47, 0xC0, 0x46, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy175_219a56c
ovy175_219a56c: ; 0x0219A56C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r1, #0
	ldr r1, _0219A63C ; =0x00000418
	ldr r3, _0219A640 ; =0x0219ACFC
	str r1, [sp]
	mov r1, #0x10
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219A634
	add r0, r5, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219A634
	ldr r0, [r5, #0x10]
	ldr r7, [r5, #0x3c]
	ldr r0, [r0]
	add r7, #0xc
	bl sub_02016AD8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200AFBC
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl sub_02008BD0
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0200B0F0
	cmp r0, #0
	bne _0219A5E0
	mov r6, #1
_0219A5E0:
	ldr r0, [r5, #0x30]
	mov r7, #0
	cmp r0, #0
	beq _0219A5EE
	cmp r6, #0
	beq _0219A5EE
	mov r7, #1
_0219A5EE:
	ldr r0, [r5, #0x10]
	add r1, sp, #0x18
	ldr r0, [r0]
	bl ovy175_2199d4c
	bl sub_02042BC4
	cmp r0, #0
	beq _0219A604
	ldr r1, [sp, #0x18]
	b _0219A608
_0219A604:
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
_0219A608:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	add r2, r5, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x3a
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x2e
	add r2, #0x2d
	add r5, #0x2f
	ldrb r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldrb r3, [r5]
	bl ovy175_219a68c
	strb r0, [r4, #0xc]
_0219A634:
	add r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0219A63C: .word 0x00000418
_0219A640: .word 0x0219ACFC
	thumb_func_end ovy175_219a56c
_0219A644:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy175_219a64c
ovy175_219a64c: ; 0x0219A64C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0219A674 ; =0x0000049B
	ldr r3, _0219A678 ; =0x0219ACFC
	str r1, [sp]
	mov r1, #4
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0219A674: .word 0x0000049B
_0219A678: .word 0x0219ACFC
	thumb_func_end ovy175_219a64c

	thumb_func_start ovy175_219a67c
ovy175_219a67c: ; 0x0219A67C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A24C
	mov r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy175_219a67c

	thumb_func_start ovy175_219a68c
ovy175_219a68c: ; 0x0219A68C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp]
	bl ovy175_219a868
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	bl ovy175_219a868
	add r0, r4, r0
	lsr r1, r0, #1
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x64
	blx sub_0208D868
	add r4, r0, #0
	mov r0, #0x32
	mul r0, r5
	mov r1, #0x64
	blx sub_0208D868
	add r5, r0, #0
	mov r0, #0x28
	mul r0, r6
	mov r1, #0x64
	blx sub_0208D868
	add r0, r5, r0
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r0, #0xc
	bl sub_02008B94
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r0, #0xc
	bl sub_02008B94
	add r1, r0, #0
	add r0, r5, #0
	bl ovy175_219a75c
	cmp r0, #0
	beq _0219A702
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219A710
_0219A702:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219A710:
	blx sub_0208DA4C
	mov r1, #0x96
	blx sub_0208D65C
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _0219A724
	ldr r0, _0219A758 ; =0x00000CCD
	b _0219A738
_0219A724:
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r0, r2
	ble _0219A730
	add r0, r2, #0
	b _0219A738
_0219A730:
	lsr r1, r2, #1
	cmp r0, r1
	bge _0219A738
	add r0, r1, #0
_0219A738:
	mov r1, #0x64
	sub r2, r1, r4
	mul r0, r2
	asr r0, r0, #0xc
	add r2, r4, r0
	ldr r0, [sp]
	add r0, r0, r7
	sub r0, r2, r0
	cmp r0, #0x64
	ble _0219A750
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219A750:
	cmp r0, #0
	bge _0219A756
	mov r0, #0
_0219A756:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A758: .word 0x00000CCD
	thumb_func_end ovy175_219a68c

	thumb_func_start ovy175_219a75c
ovy175_219a75c: ; 0x0219A75C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldrh r4, [r0]
	add r0, r1, #0
	ldrh r5, [r0]
	ldr r0, _0219A848 ; =0x000030A1
	str r1, [sp, #4]
	cmp r4, r0
	blo _0219A778
	add r0, #0x53
	cmp r4, r0
	bhi _0219A778
	sub r4, #0x60
_0219A778:
	ldr r0, _0219A848 ; =0x000030A1
	cmp r5, r0
	blo _0219A786
	add r0, #0x53
	cmp r5, r0
	bhi _0219A786
	sub r5, #0x60
_0219A786:
	add r0, r4, #0
	mov r1, #8
	bl sub_0219A850
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_0219A850
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0219A84C ; =0x000030F4
	str r0, [sp, #0x10]
	sub r0, #0x53
	str r0, [sp, #0x10]
	ldr r0, _0219A84C ; =0x000030F4
	str r0, [sp, #0x14]
	sub r0, #0x53
	str r0, [sp, #0x14]
_0219A7B2:
	cmp r7, #0
	bne _0219A7DE
	ldr r0, [sp]
	add r0, r0, #2
	ldrh r4, [r0]
	str r0, [sp]
	bl sub_020486F4
	cmp r4, r0
	beq _0219A838
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blo _0219A7D4
	ldr r0, _0219A84C ; =0x000030F4
	cmp r4, r0
	bhi _0219A7D4
	sub r4, #0x60
_0219A7D4:
	add r0, r4, #0
	mov r1, #8
	bl sub_0219A850
	add r7, r0, #0
_0219A7DE:
	cmp r6, #0
	bne _0219A80A
	ldr r0, [sp, #4]
	add r0, r0, #2
	ldrh r5, [r0]
	str r0, [sp, #4]
	bl sub_020486F4
	cmp r5, r0
	beq _0219A838
	ldr r0, [sp, #0x14]
	cmp r5, r0
	blo _0219A800
	ldr r0, _0219A84C ; =0x000030F4
	cmp r5, r0
	bhi _0219A800
	sub r5, #0x60
_0219A800:
	add r0, r5, #0
	mov r1, #8
	bl sub_0219A850
	add r6, r0, #0
_0219A80A:
	cmp r7, #0
	beq _0219A7B2
	cmp r6, #0
	beq _0219A7B2
	add r1, r4, #0
	add r2, r5, #0
	lsr r1, r7
	mov r0, #1
	and r0, r1
	lsr r2, r6
	mov r1, #1
	and r1, r2
	cmp r0, r1
	bne _0219A82C
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0219A82C:
	ldr r0, [sp, #8]
	sub r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #8]
	sub r6, r6, #1
	b _0219A7B2
_0219A838:
	ldr r1, [sp, #0xc]
	mov r0, #0x64
	mul r0, r1
	ldr r1, [sp, #8]
	blx sub_0208D868
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A848: .word 0x000030A1
_0219A84C: .word 0x000030F4
	thumb_func_end ovy175_219a75c

	thumb_func_start sub_0219A850
sub_0219A850: ; 0x0219A850
	sub r3, r1, #1
	beq _0219A862
	mov r1, #1
_0219A856:
	add r2, r0, #0
	lsr r2, r3
	tst r2, r1
	bne _0219A862
	sub r3, r3, #1
	bne _0219A856
_0219A862:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A850

	thumb_func_start ovy175_219a868
ovy175_219a868: ; 0x0219A868
	push {r3, lr}
	sub sp, #0x10
	add r2, r0, #0
	lsr r0, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	add r2, sp, #0
	bl sub_0200B11C
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy175_219a868

	thumb_func_start ovy175_219a89c
ovy175_219a89c: ; 0x0219A89C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x48]
	str r0, [sp, #0xc]
	mov r0, #0x7d
	str r1, [sp, #0x10]
	add r6, r2, #0
	str r0, [sp]
	ldr r3, _0219A978 ; =0x0219AD10
	add r0, r5, #0
	mov r1, #0x60
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
	str r6, [r4, #0x3c]
	sub r0, r7, #1
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	add r0, r4, #0
	str r7, [r4, #0x54]
	add r0, #0x58
	mov r1, #1
	strh r5, [r0]
	str r1, [r4, #0x5c]
	cmp r6, #4
	blo _0219A8E4
	add r7, r1, #0
	mov r2, #4
	b _0219A8E8
_0219A8E4:
	add r1, r7, #0
	add r2, r7, #0
_0219A8E8:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x3c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	bl ovy175_219aaec
	str r5, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r6, #0
	bl sub_0202E168
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_0204588C
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r3, r7, #0
	str r5, [sp, #4]
	bl ovy175_219ab5c
	mov r0, #0
	mov r1, #2
	mov r2, #0x3a
	add r3, r5, #0
	bl sub_0204875C
	add r7, sp, #0x18
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r1, _0219A97C ; =0x000039E3
	add r0, sp, #0x18
	strh r1, [r0, #4]
	add r0, r6, #0
	mov r1, #8
	bl sub_0204898C
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #4]
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r4]
	ldr r0, [sp, #0x18]
	bl sub_02048564
	add r0, r6, #0
	bl sub_020487D4
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219A978: .word 0x0219AD10
_0219A97C: .word 0x000039E3
	thumb_func_end ovy175_219a89c

	thumb_func_start ovy175_219a980
ovy175_219a980: ; 0x0219A980
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0202E34C
	add r0, r4, #0
	bl ovy175_219aba8
	ldr r0, [r4, #4]
	bl sub_0202E1DC
	add r0, r4, #0
	bl ovy175_219ab44
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy175_219a980

	thumb_func_start ovy175_219a9a4
ovy175_219a9a4: ; 0x0219A9A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0219AA0A
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0219A9BE
	cmp r0, #1
	beq _0219A9E2
	cmp r0, #2
	beq _0219AA00
	b _0219AA04
_0219A9BE:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x44]
	ldr r0, [r4]
	bl sub_0202E454
	cmp r0, #0
	beq _0219AA04
	ldr r0, _0219AA0C ; =0x00000551
	bl sub_02006254
	ldr r0, [r4]
	mov r1, #1
	mov r5, #1
	bl sub_0202E430
	str r5, [r4, #0x50]
	b _0219AA04
_0219A9E2:
	ldr r0, [r4]
	bl sub_0202E438
	cmp r0, #0
	beq _0219AA04
	ldr r0, [r4]
	bl sub_0202E4AC
	ldr r0, [r4]
	mov r1, #0
	bl sub_0202E41C
	mov r0, #2
	str r0, [r4, #0x50]
	b _0219AA04
_0219AA00:
	mov r0, #1
	str r0, [r4, #0x44]
_0219AA04:
	ldr r0, [r4]
	bl sub_0202E37C
_0219AA0A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219AA0C: .word 0x00000551
	thumb_func_end ovy175_219a9a4
_0219AA10:
	.byte 0x40, 0x6C, 0x70, 0x47, 0x00, 0x6D, 0x00, 0x28, 0x01, 0xDD, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy175_219aa24
ovy175_219aa24: ; 0x0219AA24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_0202E4AC
	ldr r0, [r5]
	mov r1, #0
	mov r4, #0
	bl sub_0202E41C
	str r4, [r5, #0x50]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy175_219aa24
_0219AA3C:
	.byte 0x00, 0x6D, 0x00, 0x28
	.byte 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0xC1, 0x65, 0xC0, 0x6B
	.byte 0x09, 0x06, 0x00, 0x06, 0x01, 0x4B, 0x00, 0x0E, 0x09, 0x0E, 0x18, 0x47, 0x99, 0x4C, 0x04, 0x02
	.byte 0xC1, 0x65, 0x00, 0x21, 0x01, 0x65, 0x70, 0x47

	thumb_func_start ovy175_219aa68
ovy175_219aa68: ; 0x0219AA68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r6, r1, #0
	cmp r6, r0
	beq _0219AAE2
	ldr r0, [r5]
	bl sub_0202E34C
	add r3, r5, #0
	add r3, #0x58
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3a
	bl sub_0204875C
	add r4, sp, #8
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r1, _0219AAE8 ; =0x000039E3
	add r0, sp, #8
	strh r1, [r0, #4]
	add r1, r6, #0
	add r0, r7, #0
	add r1, #8
	bl sub_0204898C
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x58
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #0x13
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r3, #0x15
	mov r4, #0x15
	bl sub_0202E1F0
	str r0, [r5]
	ldr r0, [sp, #8]
	bl sub_02048564
	add r0, r7, #0
	bl sub_020487D4
	mov r0, #0
	sub r4, #0x16
	str r6, [r5, #0x54]
	str r0, [r5, #0x50]
	str r4, [r5, #0x44]
_0219AAE2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219AAE8: .word 0x000039E3
	thumb_func_end ovy175_219aa68

	thumb_func_start ovy175_219aaec
ovy175_219aaec: ; 0x0219AAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x28]
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x5d
	add r1, r4, #0
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r4, [sp, #8]
	add r3, sp, #0x20
	ldrb r3, [r3, #4]
	mov r1, #0x29
	add r2, r7, #0
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	add r6, r0, #0
	bl sub_0204BBB8
	str r0, [r5, #0x30]
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x28
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B81C
	str r0, [r5, #0x34]
	add r0, r6, #0
	mov r1, #0x27
	mov r2, #0x26
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0x38]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy175_219aaec

	thumb_func_start ovy175_219ab44
ovy175_219ab44: ; 0x0219AB44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0204BE64
	ldr r0, [r4, #0x34]
	bl sub_0204B98C
	ldr r0, [r4, #0x30]
	bl sub_0204BCD0
	pop {r4, pc}
	thumb_func_end ovy175_219ab44

	thumb_func_start ovy175_219ab5c
ovy175_219ab5c: ; 0x0219AB5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	add r4, r3, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	add r1, sp, #0x28
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r1, #4]
	str r0, [sp, #8]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x38]
	add r0, r6, #0
	bl sub_0204C040
	str r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy175_219ab5c

	thumb_func_start ovy175_219aba8
ovy175_219aba8: ; 0x0219ABA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219ABAE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219ABBC
	bl sub_0204C108
_0219ABBC:
	add r4, r4, #1
	cmp r4, #7
	blt _0219ABAE
	pop {r3, r4, r5, pc}
	thumb_func_end ovy175_219aba8
_0219ABC4:
	.byte 0x3D, 0x9E, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x65, 0x9E, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x79, 0x9E, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x35, 0xA0, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x61, 0xA0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x81, 0xA0, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA1, 0xA0, 0x19, 0x02, 0xE1, 0xA0, 0x19, 0x02, 0xC4, 0xAB, 0x19, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5, 0x9D, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x11, 0x9E, 0x19, 0x02, 0x19, 0x9E, 0x19, 0x02, 0x1D, 0x9E, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0xF3, 0x19, 0x02, 0x29, 0x9E, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x05, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x10, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x02, 0x20, 0x10, 0x01
	.byte 0x00, 0x03, 0x01, 0x0D, 0x2C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xA0, 0x19, 0x02
	.byte 0xB9, 0xA1, 0x19, 0x02, 0x85, 0xA1, 0x19, 0x02, 0xB0, 0x00, 0x00, 0x00, 0x78, 0xC2, 0x19, 0x02
	.byte 0x61, 0xA4, 0x19, 0x02, 0xB9, 0xA4, 0x19, 0x02, 0xB1, 0x00, 0x00, 0x00, 0xC4, 0xCA, 0x19, 0x02
	.byte 0xC5, 0xA4, 0x19, 0x02, 0xFD, 0xA4, 0x19, 0x02, 0xB2, 0x00, 0x00, 0x00, 0x68, 0xC7, 0x19, 0x02
	.byte 0x1D, 0xA5, 0x19, 0x02, 0x51, 0xA5, 0x19, 0x02, 0xB3, 0x00, 0x00, 0x00, 0x44, 0xC1, 0x19, 0x02
	.byte 0x6D, 0xA5, 0x19, 0x02, 0x45, 0xA6, 0x19, 0x02, 0xB4, 0x00, 0x00, 0x00, 0x4C, 0xCC, 0x19, 0x02
	.byte 0x4D, 0xA6, 0x19, 0x02, 0x7D, 0xA6, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x63, 0x6F, 0x6D, 0x70, 0x61, 0x74, 0x69, 0x62, 0x6C, 0x65, 0x5F, 0x69
	.byte 0x72, 0x63, 0x5F, 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x69, 0x72, 0x63, 0x5F
	.byte 0x63, 0x6F, 0x6D, 0x70, 0x61, 0x74, 0x69, 0x62, 0x6C, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x72, 0x63, 0x5F, 0x61, 0x70, 0x70, 0x62, 0x61, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	; 0x0219ABC4
