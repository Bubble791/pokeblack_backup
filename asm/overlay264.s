    .include "macros/function.inc"
	.include "overlay264.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy264_21998c0
ovy264_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x7f
	lsl r2, r2, #0x13
	bl sub_0203A15C
	ldr r7, _021998F4 ; =0x0000605C
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x7f
	bl sub_0203AAEC
	mov r1, #0
	add r2, r7, #0
	add r4, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	str r5, [r4]
	sub r0, r7, #4
	str r6, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021998F4: .word 0x0000605C
	thumb_func_end ovy264_21998c0

	thumb_func_start ovy264_21998f8
ovy264_21998f8: ; 0x021998F8
	push {r3, lr}
	add r0, r3, #0
	bl ovy264_2199b40
	cmp r0, #0
	bne _02199908
	mov r0, #1
	pop {r3, pc}
_02199908:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy264_21998f8

	thumb_func_start ovy264_219990c
ovy264_219990c: ; 0x0219990C
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x7f
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy264_219990c

	thumb_func_start sub_0219991C
sub_0219991C: ; 0x0219991C
	ldr r0, _02199924 ; =0x0219A0B0
	ldr r3, _02199928 ; =sub_02046C40
	bx r3
	nop
_02199924: .word 0x0219A0B0
_02199928: .word sub_02046C40
	thumb_func_end sub_0219991C

	thumb_func_start ovy264_219992c
ovy264_219992c: ; 0x0219992C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r0, #1
	mov r1, #5
	mov r2, #0
	mov r5, #0
	bl GX_SetGraphicsMode
	ldr r4, _021999CC ; =0x0400000C
	mov r1, #0x43
	ldrh r0, [r4]
	add r6, sp, #8
	add r2, r0, #0
	ldr r0, _021999D0 ; =0x00004084
	and r2, r1
	orr r0, r2
	strh r0, [r4]
	ldrh r0, [r4, #2]
	lsr r2, r4, #0xe
	add r3, r2, #0
	and r1, r0
	ldr r0, _021999D4 ; =0x00004884
	orr r0, r1
	strh r0, [r4, #2]
	add r0, r6, #0
	mov r1, #0
	str r5, [sp]
	bl sub_02050610
	add r0, r4, #0
	str r5, [sp]
	add r0, #0x14
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	add r0, r4, #0
	str r5, [sp]
	add r0, #0x24
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	mov r0, #0x5a
	str r0, [sp]
	lsl r5, r4, #0xd
	ldr r0, _021999D8 ; =0x0000807F
	ldr r3, _021999DC ; =0x0219A2C0
	add r1, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl GX_LoadBG2Scr
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl GX_LoadBG3Scr
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x13
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0xc
	mov r1, #1
	bl sub_02046CFC
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021999CC: .word 0x0400000C
_021999D0: .word 0x00004084
_021999D4: .word 0x00004884
_021999D8: .word 0x0000807F
_021999DC: .word 0x0219A2C0
	thumb_func_end ovy264_219992c

	thumb_func_start sub_021999E0
sub_021999E0: ; 0x021999E0
	ldr r3, _021999E8 ; =sub_02046CFC
	mov r0, #0xc
	mov r1, #0
	bx r3
	.align 2, 0
_021999E8: .word sub_02046CFC
	thumb_func_end sub_021999E0

	thumb_func_start sub_021999EC
sub_021999EC: ; 0x021999EC
	ldr r1, [r0]
	ldrh r1, [r1]
	lsl r2, r1, #2
	ldr r1, _02199A00 ; =0x0219A0A4
	ldr r2, [r1, r2]
	ldr r1, _02199A04 ; =0x00006018
	str r2, [r0, r1]
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_02199A00: .word 0x0219A0A4
_02199A04: .word 0x00006018
	thumb_func_end sub_021999EC

	thumb_func_start sub_02199A08
sub_02199A08: ; 0x02199A08
	bx lr
	.align 2, 0
	thumb_func_end sub_02199A08

	thumb_func_start ovy264_2199a0c
ovy264_2199a0c: ; 0x02199A0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02199A20 ; =0x02199A39
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	ldr r1, _02199A24 ; =0x00006014
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_02199A20: .word 0x02199A39
_02199A24: .word 0x00006014
	thumb_func_end ovy264_2199a0c

	thumb_func_start sub_02199A28
sub_02199A28: ; 0x02199A28
	ldr r1, _02199A30 ; =0x00006014
	ldr r3, _02199A34 ; =sub_0203A6A8
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_02199A30: .word 0x00006014
_02199A34: .word sub_0203A6A8
	thumb_func_end sub_02199A28
_02199A38:
	.byte 0x03, 0x4B, 0x04, 0x49, 0x01, 0x20, 0x5A, 0x58
	.byte 0x10, 0x43, 0x58, 0x50, 0x70, 0x47, 0xC0, 0x46, 0x00, 0x00, 0xFE, 0x02, 0xF8, 0x3F, 0x00, 0x00

	thumb_func_start ovy264_2199a50
ovy264_2199a50: ; 0x02199A50
	push {r4, r5, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	mov r0, #0x7f
	add r4, r3, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_020279B4
	ldr r0, _02199A74 ; =0x00006054
	str r4, [r5, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02199A74: .word 0x00006054
	thumb_func_end ovy264_2199a50

	thumb_func_start ovy264_2199a78
ovy264_2199a78: ; 0x02199A78
	push {r4, r5, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	mov r0, #0x7f
	add r4, r3, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_020279B4
	ldr r0, _02199A9C ; =0x00006054
	str r4, [r5, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02199A9C: .word 0x00006054
	thumb_func_end ovy264_2199a78

	thumb_func_start ovy264_2199aa0
ovy264_2199aa0: ; 0x02199AA0
	push {r4, r5, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	add r4, r3, #0
	str r2, [sp, #4]
	mov r0, #0x7f
	str r0, [sp, #8]
	ldr r3, _02199AC4 ; =0x00007FFF
	mov r0, #0
	mov r1, #1
	mov r2, #1
	bl sub_020279B4
	ldr r0, _02199AC8 ; =0x00006054
	str r4, [r5, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02199AC4: .word 0x00007FFF
_02199AC8: .word 0x00006054
	thumb_func_end ovy264_2199aa0

	thumb_func_start ovy264_2199acc
ovy264_2199acc: ; 0x02199ACC
	push {r4, r5, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	add r4, r3, #0
	str r2, [sp, #4]
	mov r0, #0x7f
	str r0, [sp, #8]
	ldr r3, _02199AF0 ; =0x00007FFF
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020279B4
	ldr r0, _02199AF4 ; =0x00006054
	str r4, [r5, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02199AF0: .word 0x00007FFF
_02199AF4: .word 0x00006054
	thumb_func_end ovy264_2199acc

	thumb_func_start ovy264_2199af8
ovy264_2199af8: ; 0x02199AF8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r1, r2, #0
	ldr r3, _02199B38 ; =0x0000807F
	add r2, sp, #0
	bl sub_0204B37C
	add r6, r0, #0
	ldr r2, _02199B3C ; =0x00002004
	add r0, r4, #0
	add r5, #8
	mul r0, r2
	add r1, r5, r0
	ldr r0, [sp]
	ldr r3, [r0, #8]
	sub r0, r2, #4
	str r3, [r1, r0]
	ldr r0, [sp]
	sub r2, r2, #4
	ldr r0, [r0, #0xc]
	ldr r2, [r1, r2]
	blx MIi_CpuCopy32
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02199B38: .word 0x0000807F
_02199B3C: .word 0x00002004
	thumb_func_end ovy264_2199af8

	thumb_func_start ovy264_2199b40
ovy264_2199b40: ; 0x02199B40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _02199B6E
	bl sub_0203DEFC
	mov r1, #0xb
	tst r0, r1
	beq _02199B6E
	bl sub_02005FA8
	cmp r0, #1
	bne _02199B64
	mov r0, #8
	bl sub_02005EA0
_02199B64:
	ldr r0, _02199B8C ; =0x00006050
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, [r4]
	strb r1, [r0, #3]
_02199B6E:
	ldr r5, _02199B8C ; =0x00006050
	add r0, r4, #0
	ldr r1, [r4, r5]
	lsl r2, r1, #2
	ldr r1, _02199B90 ; =0x0219A1C4
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, r5]
	cmp r0, #6
	beq _02199B86
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199B86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02199B8C: .word 0x00006050
_02199B90: .word 0x0219A1C4
	thumb_func_end ovy264_2199b40

	thumb_func_start ovy264_2199b94
ovy264_2199b94: ; 0x02199B94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	mov r5, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _02199BF8 ; =0x04000050
	strh r5, [r0]
	ldr r0, _02199BFC ; =0x04001050
	strh r5, [r0]
	mov r0, #1
	mov r5, #1
	bl sub_02046DF8
	bl sub_0219991C
	add r0, r4, #0
	bl ovy264_219992c
	ldr r0, [r4]
	ldrh r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02199C00 ; =0x0219A1DC
	mov r1, #0x7f
	ldrh r0, [r0, r2]
	bl sub_0204AA30
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_021999EC
	add r0, r4, #0
	bl ovy264_2199a0c
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	mov r3, #5
	bl ovy264_2199a50
	ldr r0, _02199C04 ; =0x00006058
	str r5, [r4, r0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	nop
_02199BF8: .word 0x04000050
_02199BFC: .word 0x04001050
_02199C00: .word 0x0219A1DC
_02199C04: .word 0x00006058
	thumb_func_end ovy264_2199b94

	thumb_func_start ovy264_2199c08
ovy264_2199c08: ; 0x02199C08
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	bne _02199C18
	mov r0, #1
	pop {r4, pc}
_02199C18:
	bl sub_02005EC0
	cmp r0, #1
	bne _02199C24
	mov r0, #1
	pop {r4, pc}
_02199C24:
	bl sub_02005D8C
	ldr r0, _02199C4C ; =0x00006058
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02199C46
	add r0, r4, #0
	bl sub_02199A28
	ldr r0, [r4, #4]
	bl sub_0204AB0C
	add r0, r4, #0
	bl sub_02199A08
	bl sub_021999E0
_02199C46:
	mov r0, #6
	pop {r4, pc}
	nop
_02199C4C: .word 0x00006058
	thumb_func_end ovy264_2199c08

	thumb_func_start ovy264_2199c50
ovy264_2199c50: ; 0x02199C50
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #1
	bne _02199C62
	ldr r0, _02199C68 ; =0x00006054
	ldr r0, [r4, r0]
	pop {r4, pc}
_02199C62:
	mov r0, #2
	pop {r4, pc}
	nop
_02199C68: .word 0x00006054
	thumb_func_end ovy264_2199c50
_02199C6C:
	.byte 0x03, 0x20, 0x70, 0x47

	thumb_func_start ovy264_2199c70
ovy264_2199c70: ; 0x02199C70
	push {r3, r4, r5, lr}
	ldr r5, _02199C98 ; =0x0000601C
	add r4, r0, #0
_02199C76:
	ldr r0, [r4, r5]
	ldr r0, [r0]
	cmp r0, #0x14
	bne _02199C88
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #3]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02199C88:
	add r0, r4, #0
	bl ovy264_2199e9c
	cmp r0, #1
	beq _02199C76
	ldr r0, _02199C9C ; =0x00006050
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199C98: .word 0x0000601C
_02199C9C: .word 0x00006050
	thumb_func_end ovy264_2199c70

	thumb_func_start ovy264_2199ca0
ovy264_2199ca0: ; 0x02199CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4]
	ldr r0, _02199E44 ; =0x0219A1DC
	ldrh r2, [r1]
	mov r1, #0xc
	ldr r5, _02199E48 ; =0x00006040
	mul r1, r2
	add r6, r0, r1
	add r0, r5, #4
	ldr r1, [r4, r0]
	mov r0, #0
	ldr r2, [r4, r5]
	eor r0, r1
	mov r3, #0
	add r1, r2, #0
	eor r1, r3
	orr r0, r1
	bne _02199CD4
	bl sub_0207BB0C
	str r0, [r4, r5]
	add r0, r5, #4
	str r1, [r4, r0]
	b _02199D4C
_02199CD4:
	bl sub_0207BB0C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #8
	add r7, r4, r0
	add r0, r5, #4
	str r1, [sp, #8]
	ldr r1, [r4, r0]
	ldr r2, [r4, r5]
	ldr r0, [sp, #0xc]
	sub r0, r0, r2
	ldr r2, [sp, #8]
	sbc r2, r1
	add r1, r2, #0
	mov r2, #0xfa
	lsl r2, r2, #8
	mov r3, #0
	blx sub_0208D60C
	ldr r2, _02199E4C ; =0x000082EA
	mov r3, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	ldr r3, [r7, #4]
	add r2, r0, r2
	adc r3, r1
	add r0, r5, #0
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #0xc]
	str r3, [r7, #4]
	str r0, [r4, r5]
	ldr r0, [sp, #8]
	add r1, r5, #4
	str r0, [r4, r1]
	mov r1, #0
	ldr r0, _02199E50 ; =0x0001046B
	sub r0, r2, r0
	mov ip, r3
	mov r0, ip
	sbc r0, r1
	bhs _02199D38
	add sp, #0x10
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02199D38:
	add r0, r5, #0
	add r0, #8
	ldr r1, _02199E50 ; =0x0001046B
	add r0, r4, r0
	sub r2, r2, r1
	ldr r1, _02199E54 ; =0x00000000
	sbc r3, r1
	add r5, #8
	str r2, [r4, r5]
	str r3, [r0, #4]
_02199D4C:
	ldr r5, _02199E58 ; =0x0000603F
	ldrb r0, [r4, r5]
	cmp r0, #3
	bhi _02199E3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199D60: ; jump table
	.short _02199D68 - _02199D60 - 2 ; case 0
	.short _02199DB4 - _02199D60 - 2 ; case 1
	.short _02199E12 - _02199D60 - 2 ; case 2
	.short _02199E38 - _02199D60 - 2 ; case 3
_02199D68:
	mov r0, #0
	str r0, [sp]
	sub r1, r5, #3
	ldrh r1, [r4, r1]
	ldr r0, [r4, #4]
	ldr r2, [r6, #8]
	ldr r3, [r6, #4]
	bl ovy264_2199e5c
	sub r0, r5, #3
	ldrh r0, [r4, r0]
	mov r7, #1
	ldr r2, [r6, #8]
	add r1, r0, #1
	sub r0, r5, #3
	strh r1, [r4, r0]
	str r7, [sp]
	sub r1, r5, #3
	ldrh r1, [r4, r1]
	ldr r0, [r4, #4]
	ldr r3, [r6, #4]
	bl ovy264_2199e5c
	sub r0, r5, #3
	ldrh r0, [r4, r0]
	add r1, r0, #1
	sub r0, r5, #3
	strh r1, [r4, r0]
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	mov r0, #3
	mov r1, #1
	bl sub_02044BD8
	strb r7, [r4, r5]
	b _02199E3E
_02199DB4:
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	mov r7, #1
	mov r1, #0
	eor r0, r7
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044BD8
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	mov r1, #1
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044BD8
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	sub r1, r5, #3
	ldr r2, [r6, #8]
	str r0, [sp]
	ldrh r1, [r4, r1]
	ldr r0, [r4, #4]
	ldr r3, [r6, #4]
	bl ovy264_2199e5c
	sub r0, r5, #3
	ldrh r0, [r4, r0]
	add r1, r0, #1
	sub r0, r5, #3
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	ldrh r0, [r6, #2]
	cmp r1, r0
	blo _02199E04
	mov r0, #2
_02199E00:
	strb r0, [r4, r5]
	b _02199E3E
_02199E04:
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	add r1, r0, #0
	eor r1, r7
	sub r0, r5, #1
	strb r1, [r4, r0]
	b _02199E3E
_02199E12:
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044BD8
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	mov r1, #1
	eor r0, r1
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044BD8
	mov r0, #3
	b _02199E00
_02199E38:
	add sp, #0x10
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_02199E3E:
	mov r0, #4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02199E44: .word 0x0219A1DC
_02199E48: .word 0x00006040
_02199E4C: .word 0x000082EA
_02199E50: .word 0x0001046B
_02199E54: .word 0x00000000
_02199E58: .word 0x0000603F
	thumb_func_end ovy264_2199ca0

	thumb_func_start ovy264_2199e5c
ovy264_2199e5c: ; 0x02199E5C
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r6, r2, #0
	ldr r3, _02199E98 ; =0x0000807F
	mov r2, #1
	bl sub_0204B600
	add r1, r5, #0
	add r4, r0, #0
	blx sub_0207B0AC
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02199E84
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl GX_LoadBG2Scr
	b _02199E8E
_02199E84:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl GX_LoadBG3Scr
_02199E8E:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	nop
_02199E98: .word 0x0000807F
	thumb_func_end ovy264_2199e5c

	thumb_func_start ovy264_2199e9c
ovy264_2199e9c: ; 0x02199E9C
	push {r3, r4, r5, lr}
	ldr r5, _02199EC4 ; =0x0000601C
	add r4, r0, #0
	ldr r1, [r4, r5]
	ldr r2, [r1]
	lsl r3, r2, #2
	ldr r2, _02199EC8 ; =0x0219A200
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02199EC2
	ldr r1, [r4, r5]
	ldr r2, [r1]
	lsl r3, r2, #2
	ldr r2, _02199ECC ; =0x0219A250
	ldr r2, [r2, r3]
	lsl r2, r2, #2
	add r1, r1, r2
	str r1, [r4, r5]
_02199EC2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199EC4: .word 0x0000601C
_02199EC8: .word 0x0219A200
_02199ECC: .word 0x0219A250
	thumb_func_end ovy264_2199e9c
_02199ED0:
	.byte 0x06, 0x4A, 0x49, 0x68, 0x83, 0x58, 0x8B, 0x42, 0x03, 0xD1, 0x00, 0x21, 0x81, 0x50, 0x02, 0x20
	.byte 0x70, 0x47, 0x59, 0x1C, 0x81, 0x50, 0x00, 0x20, 0x70, 0x47, 0xC0, 0x46, 0x20, 0x60, 0x00, 0x00

	thumb_func_start ovy264_2199ef0
ovy264_2199ef0: ; 0x02199EF0
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	mov r3, #5
	bl ovy264_2199a50
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199ef0

	thumb_func_start ovy264_2199f04
ovy264_2199f04: ; 0x02199F04
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	mov r3, #5
	bl ovy264_2199a78
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199f04

	thumb_func_start ovy264_2199f18
ovy264_2199f18: ; 0x02199F18
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	mov r3, #5
	bl ovy264_2199aa0
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199f18

	thumb_func_start ovy264_2199f2c
ovy264_2199f2c: ; 0x02199F2C
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	mov r3, #5
	bl ovy264_2199acc
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199f2c
_02199F40:
	.byte 0x03, 0x49, 0x02, 0x22, 0x42, 0x50, 0x05, 0x22, 0x09, 0x1D, 0x42, 0x50, 0x02, 0x20, 0x70, 0x47
	.byte 0x50, 0x60, 0x00, 0x00

	thumb_func_start ovy264_2199f54
ovy264_2199f54: ; 0x02199F54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r5, r0, #0
	str r6, [sp]
	add r4, r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r7, #0x7f
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov r3, #0
	bl sub_0204ADA8
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _02199F8A
	str r6, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	ldr r2, [r4, #4]
	add r3, r6, #0
	bl sub_0204AF50
_02199F8A:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy264_2199af8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy264_2199f54

	thumb_func_start ovy264_2199f9c
ovy264_2199f9c: ; 0x02199F9C
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199f9c

	thumb_func_start ovy264_2199fb4
ovy264_2199fb4: ; 0x02199FB4
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044BD8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_2199fb4
_02199FCC:
	.byte 0x4A, 0x68, 0x8B, 0x68
	.byte 0x00, 0x2A, 0x01, 0xD1, 0x04, 0x4A, 0x00, 0xE0, 0x04, 0x4A, 0x83, 0x50, 0xCB, 0x68, 0x11, 0x1D
	.byte 0x43, 0x50, 0x01, 0x20, 0x70, 0x47, 0xC0, 0x46, 0x24, 0x60, 0x00, 0x00, 0x2C, 0x60, 0x00, 0x00
	.byte 0x4B, 0x68, 0x07, 0x4A, 0x83, 0x50, 0x8B, 0x68, 0x11, 0x1D, 0x43, 0x50, 0x11, 0x1C, 0x03, 0x23
	.byte 0x1C, 0x31, 0x43, 0x50, 0x05, 0x21, 0x20, 0x32, 0x81, 0x50, 0x02, 0x20, 0x70, 0x47, 0xC0, 0x46
	.byte 0x34, 0x60, 0x00, 0x00, 0x06, 0x49, 0x00, 0x23, 0x06, 0x4A, 0x0B, 0x80, 0x83, 0x50, 0x11, 0x1D
	.byte 0x43, 0x50, 0x11, 0x1C, 0x08, 0x31, 0x43, 0x50, 0x0C, 0x32, 0x83, 0x50, 0x01, 0x20, 0x70, 0x47
	.byte 0x50, 0x00, 0x00, 0x04, 0x24, 0x60, 0x00, 0x00, 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy264_219a03c
ovy264_219a03c: ; 0x0219A03C
	push {r3, lr}
	bl sub_02005D8C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy264_219a03c

	thumb_func_start ovy264_219a048
ovy264_219a048: ; 0x0219A048
	push {r3, lr}
	ldr r0, [r1, #4]
	bl sub_02005E10
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy264_219a048
_0219A054:
	.byte 0x01, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47
	.byte 0x0B, 0x49, 0x00, 0x22, 0x42, 0x52, 0x8B, 0x1C, 0xC2, 0x54, 0xCB, 0x1C, 0xC2, 0x54, 0x0B, 0x1D
	.byte 0xC2, 0x50, 0x0B, 0x1C, 0x08, 0x33, 0xC2, 0x50, 0x0B, 0x1C, 0x0C, 0x33, 0xC2, 0x50, 0x0B, 0x1C
	.byte 0x10, 0x33, 0xC2, 0x50, 0x04, 0x22, 0x14, 0x31, 0x42, 0x50, 0x02, 0x20, 0x70, 0x47, 0xC0, 0x46
	.byte 0x3C, 0x60, 0x00, 0x00, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x98, 0x19, 0x02, 0xF9, 0x98, 0x19, 0x02
	.byte 0x0D, 0x99, 0x19, 0x02, 0x24, 0xA1, 0x19, 0x02, 0x70, 0xA1, 0x19, 0x02, 0xE0, 0xA0, 0x19, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0xEC, 0x03, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x93, 0x04, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0xEB, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x95, 0x9B, 0x19, 0x02, 0x09, 0x9C, 0x19, 0x02, 0x51, 0x9C, 0x19, 0x02
	.byte 0x6D, 0x9C, 0x19, 0x02, 0xA1, 0x9C, 0x19, 0x02, 0x71, 0x9C, 0x19, 0x02, 0xDC, 0x00, 0x97, 0x00
	.byte 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDE, 0x00, 0x72, 0x02, 0x00, 0x80, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xDE, 0x00, 0x72, 0x02, 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD1, 0x9E, 0x19, 0x02, 0xF1, 0x9E, 0x19, 0x02, 0x05, 0x9F, 0x19, 0x02, 0x19, 0x9F, 0x19, 0x02
	.byte 0x2D, 0x9F, 0x19, 0x02, 0x41, 0x9F, 0x19, 0x02, 0x55, 0x9F, 0x19, 0x02, 0x9D, 0x9F, 0x19, 0x02
	.byte 0xB5, 0x9F, 0x19, 0x02, 0xCD, 0x9F, 0x19, 0x02, 0xF1, 0x9F, 0x19, 0x02, 0x15, 0xA0, 0x19, 0x02
	.byte 0x39, 0xA0, 0x19, 0x02, 0x3D, 0xA0, 0x19, 0x02, 0x49, 0xA0, 0x19, 0x02, 0x55, 0xA0, 0x19, 0x02
	.byte 0x59, 0xA0, 0x19, 0x02, 0x5D, 0xA0, 0x19, 0x02, 0x61, 0xA0, 0x19, 0x02, 0x95, 0xA0, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x64, 0x65, 0x6D, 0x6F, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219A054
