	.include "asm/macros.inc"
	.include "gx_vramcnt.inc"
	.include "global.inc"

	.public gGXState ; 0x0214C08C
	.public GXi_VRamLockId

	.text

	thumb_func_start GX_VRAMCNT_SetLCDC_
GX_VRAMCNT_SetLCDC_: ; 0x020764BC
	mov r1, #1
	tst r1, r0
	beq _020764C8
	ldr r1, _0207652C ; =0x04000240
	mov r2, #0x80
	strb r2, [r1]
_020764C8:
	mov r1, #2
	tst r1, r0
	beq _020764D4
	ldr r1, _02076530 ; =0x04000241
	mov r2, #0x80
	strb r2, [r1]
_020764D4:
	mov r1, #4
	tst r1, r0
	beq _020764E0
	ldr r1, _02076534 ; =0x04000242
	mov r2, #0x80
	strb r2, [r1]
_020764E0:
	mov r1, #8
	tst r1, r0
	beq _020764EC
	ldr r1, _02076538 ; =0x04000243
	mov r2, #0x80
	strb r2, [r1]
_020764EC:
	mov r1, #0x10
	tst r1, r0
	beq _020764F8
	ldr r1, _0207653C ; =0x04000244
	mov r2, #0x80
	strb r2, [r1]
_020764F8:
	mov r1, #0x20
	tst r1, r0
	beq _02076504
	ldr r1, _02076540 ; =0x04000245
	mov r2, #0x80
	strb r2, [r1]
_02076504:
	mov r1, #0x40
	tst r1, r0
	beq _02076510
	ldr r1, _02076544 ; =0x04000246
	mov r2, #0x80
	strb r2, [r1]
_02076510:
	mov r2, #0x80
	add r1, r0, #0
	tst r1, r2
	beq _0207651C
	ldr r1, _02076548 ; =0x04000248
	strb r2, [r1]
_0207651C:
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq _0207652A
	ldr r0, _0207654C ; =0x04000249
	mov r1, #0x80
	strb r1, [r0]
_0207652A:
	bx lr
	.align 2, 0
_0207652C: .word 0x04000240
_02076530: .word 0x04000241
_02076534: .word 0x04000242
_02076538: .word 0x04000243
_0207653C: .word 0x04000244
_02076540: .word 0x04000245
_02076544: .word 0x04000246
_02076548: .word 0x04000248
_0207654C: .word 0x04000249
	thumb_func_end GX_VRAMCNT_SetLCDC_

	thumb_func_start GX_SetBankForBG
GX_SetBankForBG: ; 0x02076550
	ldr r1, _0207667C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #2]
	cmp r0, #0x40
	bgt _020765C2
	blt _02076566
	b _0207666C
_02076566:
	cmp r0, #0x20
	bgt _020765BC
	cmp r0, #0
	blt _020765C0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207657A: ; jump table
	.short _02076672 - _0207657A - 2 ; case 0
	.short _0207660A - _0207657A - 2 ; case 1
	.short _020765F2 - _0207657A - 2 ; case 2
	.short _02076604 - _0207657A - 2 ; case 3
	.short _020765E0 - _0207657A - 2 ; case 4
	.short _02076626 - _0207657A - 2 ; case 5
	.short _020765EC - _0207657A - 2 ; case 6
	.short _020765FE - _0207657A - 2 ; case 7
	.short _020765D4 - _0207657A - 2 ; case 8
	.short _02076632 - _0207657A - 2 ; case 9
	.short _0207663C - _0207657A - 2 ; case 10
	.short _02076610 - _0207657A - 2 ; case 11
	.short _020765DA - _0207657A - 2 ; case 12
	.short _02076620 - _0207657A - 2 ; case 13
	.short _020765E6 - _0207657A - 2 ; case 14
	.short _020765F8 - _0207657A - 2 ; case 15
	.short _0207664E - _0207657A - 2 ; case 16
	.short _02076672 - _0207657A - 2 ; case 17
	.short _02076672 - _0207657A - 2 ; case 18
	.short _02076672 - _0207657A - 2 ; case 19
	.short _02076672 - _0207657A - 2 ; case 20
	.short _02076672 - _0207657A - 2 ; case 21
	.short _02076672 - _0207657A - 2 ; case 22
	.short _02076672 - _0207657A - 2 ; case 23
	.short _02076672 - _0207657A - 2 ; case 24
	.short _02076672 - _0207657A - 2 ; case 25
	.short _02076672 - _0207657A - 2 ; case 26
	.short _02076672 - _0207657A - 2 ; case 27
	.short _02076672 - _0207657A - 2 ; case 28
	.short _02076672 - _0207657A - 2 ; case 29
	.short _02076672 - _0207657A - 2 ; case 30
	.short _02076672 - _0207657A - 2 ; case 31
	.short _02076666 - _0207657A - 2 ; case 32
_020765BC:
	cmp r0, #0x30
	beq _02076648
_020765C0:
	b _02076672
_020765C2:
	cmp r0, #0x60
	bgt _020765CE
	bge _02076660
	cmp r0, #0x50
	beq _02076654
	b _02076672
_020765CE:
	cmp r0, #0x70
	beq _02076642
	b _02076672
_020765D4:
	mov r1, #0x81
	ldr r0, _02076680 ; =0x04000243
	b _02076670
_020765DA:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x89
	strb r1, [r0]
_020765E0:
	mov r1, #0x81
	ldr r0, _02076684 ; =0x04000242
	b _02076670
_020765E6:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020765EC:
	ldr r0, _02076684 ; =0x04000242
	mov r1, #0x89
	strb r1, [r0]
_020765F2:
	mov r1, #0x81
	ldr r0, _02076688 ; =0x04000241
	b _02076670
_020765F8:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x99
	strb r1, [r0]
_020765FE:
	ldr r0, _02076684 ; =0x04000242
	mov r1, #0x91
	strb r1, [r0]
_02076604:
	ldr r0, _02076688 ; =0x04000241
	mov r1, #0x89
	strb r1, [r0]
_0207660A:
	mov r1, #0x81
	ldr r0, _0207668C ; =0x04000240
	b _02076670
_02076610:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #1]
	mov r0, #0x91
_0207661C:
	strb r0, [r1, #3]
	b _02076672
_02076620:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_02076626:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
_0207662A:
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _02076672
_02076632:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	b _0207661C
_0207663C:
	mov r0, #0x81
	ldr r1, _02076688 ; =0x04000241
	b _0207662A
_02076642:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_02076648:
	ldr r0, _02076694 ; =0x04000245
	mov r1, #0x91
	strb r1, [r0]
_0207664E:
	mov r1, #0x81
	ldr r0, _02076698 ; =0x04000244
	b _02076670
_02076654:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x91
	strb r1, [r0]
	mov r1, #0x81
	sub r0, r0, #2
	b _02076670
_02076660:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x89
	strb r1, [r0]
_02076666:
	mov r1, #0x81
	ldr r0, _02076694 ; =0x04000245
	b _02076670
_0207666C:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x81
_02076670:
	strb r1, [r0]
_02076672:
	ldr r0, _0207667C ; =gGXState
	ldr r3, _0207669C ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_0207667C: .word gGXState
_02076680: .word 0x04000243
_02076684: .word 0x04000242
_02076688: .word 0x04000241
_0207668C: .word 0x04000240
_02076690: .word 0x04000246
_02076694: .word 0x04000245
_02076698: .word 0x04000244
_0207669C: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForBG

	thumb_func_start GX_SetBankForOBJ
GX_SetBankForOBJ: ; 0x020766A0
	ldr r1, _0207673C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #4]
	cmp r0, #0x30
	bgt _020766D8
	bge _0207670A
	cmp r0, #0x10
	bgt _020766D2
	bge _02076710
	cmp r0, #3
	bhi _02076734
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020766CA: ; jump table
	.short _02076734 - _020766CA - 2 ; case 0
	.short _020766F8 - _020766CA - 2 ; case 1
	.short _020766FE - _020766CA - 2 ; case 2
	.short _020766F2 - _020766CA - 2 ; case 3
_020766D2:
	cmp r0, #0x20
	beq _02076728
	b _02076734
_020766D8:
	cmp r0, #0x50
	bgt _020766E4
	bge _02076716
	cmp r0, #0x40
	beq _0207672E
	b _02076734
_020766E4:
	cmp r0, #0x60
	bgt _020766EC
	beq _02076722
	b _02076734
_020766EC:
	cmp r0, #0x70
	beq _02076704
	b _02076734
_020766F2:
	ldr r0, _02076740 ; =0x04000241
	mov r1, #0x8a
	strb r1, [r0]
_020766F8:
	mov r1, #0x82
	ldr r0, _02076744 ; =0x04000240
	b _02076732
_020766FE:
	mov r1, #0x82
	ldr r0, _02076740 ; =0x04000241
	b _02076732
_02076704:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x9a
	strb r1, [r0]
_0207670A:
	ldr r0, _0207674C ; =0x04000245
	mov r1, #0x92
	strb r1, [r0]
_02076710:
	mov r1, #0x82
	ldr r0, _02076750 ; =0x04000244
	b _02076732
_02076716:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x92
	strb r1, [r0]
	mov r1, #0x82
	sub r0, r0, #2
	b _02076732
_02076722:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x8a
	strb r1, [r0]
_02076728:
	mov r1, #0x82
	ldr r0, _0207674C ; =0x04000245
	b _02076732
_0207672E:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x82
_02076732:
	strb r1, [r0]
_02076734:
	ldr r0, _0207673C ; =gGXState
	ldr r3, _02076754 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_0207673C: .word gGXState
_02076740: .word 0x04000241
_02076744: .word 0x04000240
_02076748: .word 0x04000246
_0207674C: .word 0x04000245
_02076750: .word 0x04000244
_02076754: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForOBJ

	thumb_func_start GX_SetBankForBGExtPltt
GX_SetBankForBGExtPltt: ; 0x02076758
	ldr r1, _020767DC ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0xe]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xe]
	cmp r0, #0x20
	bgt _0207677A
	bge _020767B4
	cmp r0, #0
	bgt _02076774
	beq _020767C6
	b _020767D2
_02076774:
	cmp r0, #0x10
	beq _02076788
	b _020767D2
_0207677A:
	cmp r0, #0x40
	bgt _02076782
	beq _0207679C
	b _020767D2
_02076782:
	cmp r0, #0x60
	beq _020767AE
	b _020767D2
_02076788:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	str r0, [r2]
	ldr r0, _020767E0 ; =0x04000244
	mov r1, #0x84
_02076798:
	strb r1, [r0]
	b _020767D2
_0207679C:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	str r0, [r2]
	mov r1, #0x8c
	ldr r0, _020767E4 ; =0x04000246
	b _02076798
_020767AE:
	ldr r0, _020767E4 ; =0x04000246
	mov r1, #0x8c
	strb r1, [r0]
_020767B4:
	mov r2, #1
	ldr r0, _020767E8 ; =0x04000245
	mov r1, #0x84
	lsl r2, r2, #0x1a
	strb r1, [r0]
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	b _020767D0
_020767C6:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _020767EC ; =0xBFFFFFFF
	and r0, r1
_020767D0:
	str r0, [r2]
_020767D2:
	ldr r0, _020767DC ; =gGXState
	ldr r3, _020767F0 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_020767DC: .word gGXState
_020767E0: .word 0x04000244
_020767E4: .word 0x04000246
_020767E8: .word 0x04000245
_020767EC: .word 0xBFFFFFFF
_020767F0: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForBGExtPltt

	thumb_func_start GX_SetBankForOBJExtPltt
GX_SetBankForOBJExtPltt: ; 0x020767F4
	ldr r1, _0207684C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0x10]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x10]
	cmp r0, #0
	beq _02076836
	cmp r0, #0x20
	beq _02076810
	cmp r0, #0x40
	beq _02076824
	b _02076842
_02076810:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #5
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076850 ; =0x04000245
	mov r1, #0x85
_02076820:
	strb r1, [r0]
	b _02076842
_02076824:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #5
	orr r0, r1
	str r0, [r2]
	mov r1, #0x85
	ldr r0, _02076854 ; =0x04000246
	b _02076820
_02076836:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076858 ; =0x7FFFFFFF
	and r0, r1
	str r0, [r2]
_02076842:
	ldr r0, _0207684C ; =gGXState
	ldr r3, _0207685C ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_0207684C: .word gGXState
_02076850: .word 0x04000245
_02076854: .word 0x04000246
_02076858: .word 0x7FFFFFFF
_0207685C: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForOBJExtPltt

	thumb_func_start GX_SetBankForTex
GX_SetBankForTex: ; 0x02076860
	ldr r1, _02076938 ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #8]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #8]
	cmp r0, #0
	bne _0207687E
	ldr r2, _0207693C ; =0x04000060
	ldr r0, _02076940 ; =0x0000CFFE
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	b _02076930
_0207687E:
	ldr r3, _0207693C ; =0x04000060
	ldr r1, _02076944 ; =0xFFFFCFFF
	ldrh r2, [r3]
	and r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r3]
	cmp r0, #0xf
	bhi _02076930
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207689C: ; jump table
	.short _02076930 - _0207689C - 2 ; case 0
	.short _0207692A - _0207689C - 2 ; case 1
	.short _02076912 - _0207689C - 2 ; case 2
	.short _02076924 - _0207689C - 2 ; case 3
	.short _02076900 - _0207689C - 2 ; case 4
	.short _020768BC - _0207689C - 2 ; case 5
	.short _0207690C - _0207689C - 2 ; case 6
	.short _0207691E - _0207689C - 2 ; case 7
	.short _020768F4 - _0207689C - 2 ; case 8
	.short _020768C8 - _0207689C - 2 ; case 9
	.short _020768D2 - _0207689C - 2 ; case 10
	.short _020768D8 - _0207689C - 2 ; case 11
	.short _020768FA - _0207689C - 2 ; case 12
	.short _020768E8 - _0207689C - 2 ; case 13
	.short _02076906 - _0207689C - 2 ; case 14
	.short _02076918 - _0207689C - 2 ; case 15
_020768BC:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
_020768C0:
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _02076930
_020768C8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	b _020768E4
_020768D2:
	mov r0, #0x83
	ldr r1, _0207694C ; =0x04000241
	b _020768C0
_020768D8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #1]
_020768E2:
	mov r0, #0x93
_020768E4:
	strb r0, [r1, #3]
	b _02076930
_020768E8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _020768E2
_020768F4:
	mov r1, #0x83
	ldr r0, _02076950 ; =0x04000243
	b _0207692E
_020768FA:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x8b
	strb r1, [r0]
_02076900:
	mov r1, #0x83
	ldr r0, _02076954 ; =0x04000242
	b _0207692E
_02076906:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x93
	strb r1, [r0]
_0207690C:
	ldr r0, _02076954 ; =0x04000242
	mov r1, #0x8b
	strb r1, [r0]
_02076912:
	mov r1, #0x83
	ldr r0, _0207694C ; =0x04000241
	b _0207692E
_02076918:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x9b
	strb r1, [r0]
_0207691E:
	ldr r0, _02076954 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_02076924:
	ldr r0, _0207694C ; =0x04000241
	mov r1, #0x8b
	strb r1, [r0]
_0207692A:
	ldr r0, _02076948 ; =0x04000240
	mov r1, #0x83
_0207692E:
	strb r1, [r0]
_02076930:
	ldr r0, _02076938 ; =gGXState
	ldr r3, _02076958 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076938: .word gGXState
_0207693C: .word 0x04000060
_02076940: .word 0x0000CFFE
_02076944: .word 0xFFFFCFFF
_02076948: .word 0x04000240
_0207694C: .word 0x04000241
_02076950: .word 0x04000243
_02076954: .word 0x04000242
_02076958: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForTex

	thumb_func_start GX_SetBankForTexPltt
GX_SetBankForTexPltt: ; 0x0207695C
	ldr r1, _020769C0 ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0xa]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xa]
	cmp r0, #0x30
	bgt _02076980
	bge _020769AA
	cmp r0, #0x10
	bgt _0207697A
	bge _020769B0
	cmp r0, #0
	b _020769B6
_0207697A:
	cmp r0, #0x20
	beq _02076998
	b _020769B6
_02076980:
	cmp r0, #0x60
	bgt _0207698C
	bge _02076992
	cmp r0, #0x40
	beq _0207699E
	b _020769B6
_0207698C:
	cmp r0, #0x70
	beq _020769A4
	b _020769B6
_02076992:
	ldr r0, _020769C4 ; =0x04000246
	mov r1, #0x8b
	strb r1, [r0]
_02076998:
	mov r1, #0x83
	ldr r0, _020769C8 ; =0x04000245
	b _020769B4
_0207699E:
	mov r1, #0x83
	ldr r0, _020769C4 ; =0x04000246
	b _020769B4
_020769A4:
	ldr r0, _020769C4 ; =0x04000246
	mov r1, #0x9b
	strb r1, [r0]
_020769AA:
	ldr r0, _020769C8 ; =0x04000245
	mov r1, #0x93
	strb r1, [r0]
_020769B0:
	ldr r0, _020769CC ; =0x04000244
	mov r1, #0x83
_020769B4:
	strb r1, [r0]
_020769B6:
	ldr r0, _020769C0 ; =gGXState
	ldr r3, _020769D0 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_020769C0: .word gGXState
_020769C4: .word 0x04000246
_020769C8: .word 0x04000245
_020769CC: .word 0x04000244
_020769D0: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForTexPltt

	thumb_func_start GX_SetBankForClearImage
GX_SetBankForClearImage: ; 0x020769D4
	ldr r1, _02076A4C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0xc]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xc]
	cmp r0, #0xc
	bhi _02076A44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020769F2: ; jump table
	.short _02076A24 - _020769F2 - 2 ; case 0
	.short _02076A2E - _020769F2 - 2 ; case 1
	.short _02076A12 - _020769F2 - 2 ; case 2
	.short _02076A0C - _020769F2 - 2 ; case 3
	.short _02076A34 - _020769F2 - 2 ; case 4
	.short _02076A44 - _020769F2 - 2 ; case 5
	.short _02076A44 - _020769F2 - 2 ; case 6
	.short _02076A44 - _020769F2 - 2 ; case 7
	.short _02076A1E - _020769F2 - 2 ; case 8
	.short _02076A44 - _020769F2 - 2 ; case 9
	.short _02076A44 - _020769F2 - 2 ; case 10
	.short _02076A44 - _020769F2 - 2 ; case 11
	.short _02076A18 - _020769F2 - 2 ; case 12
_02076A0C:
	ldr r0, _02076A50 ; =0x04000240
	mov r1, #0x93
	strb r1, [r0]
_02076A12:
	mov r1, #0x9b
	ldr r0, _02076A54 ; =0x04000241
	b _02076A38
_02076A18:
	ldr r0, _02076A58 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_02076A1E:
	mov r1, #0x9b
	ldr r0, _02076A5C ; =0x04000243
	b _02076A38
_02076A24:
	ldr r2, _02076A60 ; =0x04000060
	ldr r0, _02076A64 ; =0x0000BFFF
	ldrh r1, [r2]
	and r0, r1
	b _02076A42
_02076A2E:
	mov r1, #0x9b
	ldr r0, _02076A50 ; =0x04000240
	b _02076A38
_02076A34:
	ldr r0, _02076A58 ; =0x04000242
	mov r1, #0x9b
_02076A38:
	ldr r2, _02076A60 ; =0x04000060
	strb r1, [r0]
	ldrh r1, [r2]
	lsr r0, r2, #0xc
	orr r0, r1
_02076A42:
	strh r0, [r2]
_02076A44:
	ldr r0, _02076A4C ; =gGXState
	ldr r3, _02076A68 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076A4C: .word gGXState
_02076A50: .word 0x04000240
_02076A54: .word 0x04000241
_02076A58: .word 0x04000242
_02076A5C: .word 0x04000243
_02076A60: .word 0x04000060
_02076A64: .word 0x0000BFFF
_02076A68: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForClearImage

	thumb_func_start GX_SetBankForARM7
GX_SetBankForARM7: ; 0x02076A6C
	ldr r1, _02076AB4 ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #6]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #6]
	cmp r0, #8
	bgt _02076A90
	bge _02076AA6
	cmp r0, #4
	bgt _02076AAC
	cmp r0, #0
	blt _02076AAC
	beq _02076AAC
	cmp r0, #4
	beq _02076AA0
	b _02076AAC
_02076A90:
	cmp r0, #0xc
	bne _02076AAC
	ldr r0, _02076AB8 ; =0x04000243
	mov r1, #0x8a
	strb r1, [r0]
	mov r1, #0x82
	sub r0, r0, #1
	b _02076AAA
_02076AA0:
	mov r1, #0x82
	ldr r0, _02076ABC ; =0x04000242
	b _02076AAA
_02076AA6:
	ldr r0, _02076AB8 ; =0x04000243
	mov r1, #0x82
_02076AAA:
	strb r1, [r0]
_02076AAC:
	ldr r0, _02076AB4 ; =gGXState
	ldr r3, _02076AC0 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076AB4: .word gGXState
_02076AB8: .word 0x04000243
_02076ABC: .word 0x04000242
_02076AC0: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForARM7

	thumb_func_start GX_SetBankForLCDC
GX_SetBankForLCDC: ; 0x02076AC4
	ldr r2, _02076AD4 ; =gGXState
	lsl r1, r0, #0x10
	ldrh r3, [r2]
	lsr r1, r1, #0x10
	orr r1, r3
	ldr r3, _02076AD8 ; =GX_VRAMCNT_SetLCDC_
	strh r1, [r2]
	bx r3
	.align 2, 0
_02076AD4: .word gGXState
_02076AD8: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForLCDC

	thumb_func_start GX_SetBankForSubBG
GX_SetBankForSubBG: ; 0x02076ADC
	ldr r1, _02076B24 ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0x12]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x12]
	cmp r0, #0x80
	bgt _02076B00
	bge _02076B16
	cmp r0, #4
	bgt _02076B1C
	cmp r0, #0
	blt _02076B1C
	beq _02076B1C
	cmp r0, #4
	beq _02076B0A
	b _02076B1C
_02076B00:
	mov r1, #6
	lsl r1, r1, #6
	cmp r0, r1
	beq _02076B10
	b _02076B1C
_02076B0A:
	mov r1, #0x84
	ldr r0, _02076B28 ; =0x04000242
	b _02076B1A
_02076B10:
	ldr r0, _02076B2C ; =0x04000249
	mov r1, #0x81
	strb r1, [r0]
_02076B16:
	ldr r0, _02076B30 ; =0x04000248
	mov r1, #0x81
_02076B1A:
	strb r1, [r0]
_02076B1C:
	ldr r0, _02076B24 ; =gGXState
	ldr r3, _02076B34 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076B24: .word gGXState
_02076B28: .word 0x04000242
_02076B2C: .word 0x04000249
_02076B30: .word 0x04000248
_02076B34: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForSubBG

	thumb_func_start GX_SetBankForSubOBJ
GX_SetBankForSubOBJ: ; 0x02076B38
	ldr r1, _02076B6C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0x14]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x14]
	cmp r0, #0
	beq _02076B64
	cmp r0, #8
	beq _02076B58
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _02076B5E
	b _02076B64
_02076B58:
	mov r1, #0x84
	ldr r0, _02076B70 ; =0x04000243
	b _02076B62
_02076B5E:
	ldr r0, _02076B74 ; =0x04000249
	mov r1, #0x82
_02076B62:
	strb r1, [r0]
_02076B64:
	ldr r0, _02076B6C ; =gGXState
	ldr r3, _02076B78 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076B6C: .word gGXState
_02076B70: .word 0x04000243
_02076B74: .word 0x04000249
_02076B78: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForSubOBJ

	thumb_func_start GX_SetBankForSubBGExtPltt
GX_SetBankForSubBGExtPltt: ; 0x02076B7C
	ldr r1, _02076BB8 ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0x16]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x16]
	cmp r0, #0
	beq _02076BA4
	cmp r0, #0x80
	bne _02076BAE
	ldr r2, _02076BBC ; =0x04001000
	ldr r1, [r2]
	lsl r0, r2, #0x12
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076BC0 ; =0x04000248
	mov r1, #0x82
	strb r1, [r0]
	b _02076BAE
_02076BA4:
	ldr r2, _02076BBC ; =0x04001000
	ldr r0, _02076BC4 ; =0xBFFFFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_02076BAE:
	ldr r0, _02076BB8 ; =gGXState
	ldr r3, _02076BC8 ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_02076BB8: .word gGXState
_02076BBC: .word 0x04001000
_02076BC0: .word 0x04000248
_02076BC4: .word 0xBFFFFFFF
_02076BC8: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForSubBGExtPltt

	thumb_func_start GX_SetBankForSubOBJExtPltt
GX_SetBankForSubOBJExtPltt: ; 0x02076BCC
	ldr r1, _02076C0C ; =gGXState
	ldrh r3, [r1]
	ldrh r2, [r1, #0x18]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x18]
	cmp r0, #0
	beq _02076BF8
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02076C02
	ldr r2, _02076C10 ; =0x04001000
	ldr r1, [r2]
	lsl r0, r2, #0x13
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076C14 ; =0x04000249
	mov r1, #0x83
	strb r1, [r0]
	b _02076C02
_02076BF8:
	ldr r2, _02076C10 ; =0x04001000
	ldr r0, _02076C18 ; =0x7FFFFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_02076C02:
	ldr r0, _02076C0C ; =gGXState
	ldr r3, _02076C1C ; =GX_VRAMCNT_SetLCDC_
	ldrh r0, [r0]
	bx r3
	nop
_02076C0C: .word gGXState
_02076C10: .word 0x04001000
_02076C14: .word 0x04000249
_02076C18: .word 0x7FFFFFFF
_02076C1C: .word GX_VRAMCNT_SetLCDC_
	thumb_func_end GX_SetBankForSubOBJExtPltt

	thumb_func_start resetBankForX_
resetBankForX_: ; 0x02076C20
	push {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _02076C3C ; =gGXState
	ldrh r1, [r0]
	orr r1, r4
	strh r1, [r0]
	add r0, r4, #0
	bl GX_VRAMCNT_SetLCDC_
	add r0, r4, #0
	pop {r4, pc}
	nop
_02076C3C: .word gGXState
	thumb_func_end resetBankForX_

	thumb_func_start GX_ResetBankForBG
GX_ResetBankForBG: ; 0x02076C40
	ldr r0, _02076C48 ; =gGXState + 0x02
	ldr r3, _02076C4C ; =resetBankForX_
	bx r3
	nop
_02076C48: .word gGXState + 0x02
_02076C4C: .word resetBankForX_
	thumb_func_end GX_ResetBankForBG

	thumb_func_start GX_ResetBankForOBJ
GX_ResetBankForOBJ: ; 0x02076C50
	ldr r0, _02076C58 ; =gGXState + 0x04
	ldr r3, _02076C5C ; =resetBankForX_
	bx r3
	nop
_02076C58: .word gGXState + 0x04
_02076C5C: .word resetBankForX_
	thumb_func_end GX_ResetBankForOBJ

	thumb_func_start GX_ResetBankForBGExtPltt
GX_ResetBankForBGExtPltt: ; 0x02076C60
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076C74 ; =0xBFFFFFFF
	ldr r3, _02076C78 ; =resetBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076C7C ; =gGXState + 0x0E
	bx r3
	nop
_02076C74: .word 0xBFFFFFFF
_02076C78: .word resetBankForX_
_02076C7C: .word gGXState + 0x0E
	thumb_func_end GX_ResetBankForBGExtPltt

	thumb_func_start GX_ResetBankForOBJExtPltt
GX_ResetBankForOBJExtPltt: ; 0x02076C80
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076C94 ; =0x7FFFFFFF
	ldr r3, _02076C98 ; =resetBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076C9C ; =gGXState + 0x10
	bx r3
	nop
_02076C94: .word 0x7FFFFFFF
_02076C98: .word resetBankForX_
_02076C9C: .word gGXState + 0x10
	thumb_func_end GX_ResetBankForOBJExtPltt

	thumb_func_start GX_ResetBankForTex
GX_ResetBankForTex: ; 0x02076CA0
	ldr r0, _02076CA8 ; =gGXState + 0x08
	ldr r3, _02076CAC ; =resetBankForX_
	bx r3
	nop
_02076CA8: .word gGXState + 0x08
_02076CAC: .word resetBankForX_
	thumb_func_end GX_ResetBankForTex

	thumb_func_start GX_ResetBankForTexPltt
GX_ResetBankForTexPltt: ; 0x02076CB0
	ldr r0, _02076CB8 ; =gGXState + 0x0A
	ldr r3, _02076CBC ; =resetBankForX_
	bx r3
	nop
_02076CB8: .word gGXState + 0x0A
_02076CBC: .word resetBankForX_
	thumb_func_end GX_ResetBankForTexPltt

	thumb_func_start GX_ResetBankForClearImage
GX_ResetBankForClearImage: ; 0x02076CC0
	ldr r0, _02076CC8 ; =gGXState + 0x0C
	ldr r3, _02076CCC ; =resetBankForX_
	bx r3
	nop
_02076CC8: .word gGXState + 0x0C
_02076CCC: .word resetBankForX_
	thumb_func_end GX_ResetBankForClearImage

	thumb_func_start GX_ResetBankForSubBG
GX_ResetBankForSubBG: ; 0x02076CD0
	ldr r0, _02076CD8 ; =gGXState + 0x12
	ldr r3, _02076CDC ; =resetBankForX_
	bx r3
	nop
_02076CD8: .word gGXState + 0x12
_02076CDC: .word resetBankForX_
	thumb_func_end GX_ResetBankForSubBG

	thumb_func_start GX_ResetBankForSubOBJ
GX_ResetBankForSubOBJ: ; 0x02076CE0
	ldr r0, _02076CE8 ; =gGXState + 0x14
	ldr r3, _02076CEC ; =resetBankForX_
	bx r3
	nop
_02076CE8: .word gGXState + 0x14
_02076CEC: .word resetBankForX_
	thumb_func_end GX_ResetBankForSubOBJ

	thumb_func_start GX_ResetBankForSubBGExtPltt
GX_ResetBankForSubBGExtPltt: ; 0x02076CF0
	ldr r2, _02076D00 ; =0x04001000
	ldr r0, _02076D04 ; =0xBFFFFFFF
	ldr r1, [r2]
	ldr r3, _02076D08 ; =resetBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076D0C ; =gGXState + 0x16
	bx r3
	.align 2, 0
_02076D00: .word 0x04001000
_02076D04: .word 0xBFFFFFFF
_02076D08: .word resetBankForX_
_02076D0C: .word gGXState + 0x16
	thumb_func_end GX_ResetBankForSubBGExtPltt

	thumb_func_start GX_ResetBankForSubOBJExtPltt
GX_ResetBankForSubOBJExtPltt: ; 0x02076D10
	ldr r2, _02076D20 ; =0x04001000
	ldr r0, _02076D24 ; =0x7FFFFFFF
	ldr r1, [r2]
	ldr r3, _02076D28 ; =resetBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076D2C ; =gGXState + 0x18
	bx r3
	.align 2, 0
_02076D20: .word 0x04001000
_02076D24: .word 0x7FFFFFFF
_02076D28: .word resetBankForX_
_02076D2C: .word gGXState + 0x18
	thumb_func_end GX_ResetBankForSubOBJExtPltt

	thumb_func_start disableBankForX_
disableBankForX_: ; 0x02076D30
	push {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	tst r0, r4
	beq _02076D42
	ldr r0, _02076DB4 ; =0x04000240
	strb r1, [r0]
_02076D42:
	mov r0, #2
	tst r0, r4
	beq _02076D4E
	ldr r0, _02076DB8 ; =0x04000241
	mov r1, #0
	strb r1, [r0]
_02076D4E:
	mov r0, #4
	tst r0, r4
	beq _02076D5A
	ldr r0, _02076DBC ; =0x04000242
	mov r1, #0
	strb r1, [r0]
_02076D5A:
	mov r0, #8
	tst r0, r4
	beq _02076D66
	ldr r0, _02076DC0 ; =0x04000243
	mov r1, #0
	strb r1, [r0]
_02076D66:
	mov r0, #0x10
	tst r0, r4
	beq _02076D72
	ldr r0, _02076DC4 ; =0x04000244
	mov r1, #0
	strb r1, [r0]
_02076D72:
	mov r0, #0x20
	tst r0, r4
	beq _02076D7E
	ldr r0, _02076DC8 ; =0x04000245
	mov r1, #0
	strb r1, [r0]
_02076D7E:
	mov r0, #0x40
	tst r0, r4
	beq _02076D8A
	ldr r0, _02076DCC ; =0x04000246
	mov r1, #0
	strb r1, [r0]
_02076D8A:
	mov r0, #0x80
	tst r0, r4
	beq _02076D96
	ldr r0, _02076DD0 ; =0x04000248
	mov r1, #0
	strb r1, [r0]
_02076D96:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _02076DA4
	ldr r0, _02076DD4 ; =0x04000249
	mov r1, #0
	strb r1, [r0]
_02076DA4:
	ldr r1, _02076DD8 ; =0x0214C04E
	lsl r0, r4, #0x10
	ldrh r1, [r1]
	lsr r0, r0, #0x10
	bl OSi_UnlockVram
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02076DB4: .word 0x04000240
_02076DB8: .word 0x04000241
_02076DBC: .word 0x04000242
_02076DC0: .word 0x04000243
_02076DC4: .word 0x04000244
_02076DC8: .word 0x04000245
_02076DCC: .word 0x04000246
_02076DD0: .word 0x04000248
_02076DD4: .word 0x04000249
_02076DD8: .word 0x0214C04E
	thumb_func_end disableBankForX_

	thumb_func_start GX_DisableBankForBG
GX_DisableBankForBG: ; 0x02076DDC
	ldr r0, _02076DE4 ; =gGXState + 0x02
	ldr r3, _02076DE8 ; =disableBankForX_
	bx r3
	nop
_02076DE4: .word gGXState + 0x02
_02076DE8: .word disableBankForX_
	thumb_func_end GX_DisableBankForBG

	thumb_func_start GX_DisableBankForOBJ
GX_DisableBankForOBJ: ; 0x02076DEC
	ldr r0, _02076DF4 ; =gGXState + 0x04
	ldr r3, _02076DF8 ; =disableBankForX_
	bx r3
	nop
_02076DF4: .word gGXState + 0x04
_02076DF8: .word disableBankForX_
	thumb_func_end GX_DisableBankForOBJ

	thumb_func_start GX_DisableBankForBGExtPltt
GX_DisableBankForBGExtPltt: ; 0x02076DFC
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076E10 ; =0xBFFFFFFF
	ldr r3, _02076E14 ; =disableBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076E18 ; =gGXState + 0x0E
	bx r3
	nop
_02076E10: .word 0xBFFFFFFF
_02076E14: .word disableBankForX_
_02076E18: .word gGXState + 0x0E
	thumb_func_end GX_DisableBankForBGExtPltt

	thumb_func_start GX_DisableBankForOBJExtPltt
GX_DisableBankForOBJExtPltt: ; 0x02076E1C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076E30 ; =0x7FFFFFFF
	ldr r3, _02076E34 ; =disableBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076E38 ; =gGXState + 0x10
	bx r3
	nop
_02076E30: .word 0x7FFFFFFF
_02076E34: .word disableBankForX_
_02076E38: .word gGXState + 0x10
	thumb_func_end GX_DisableBankForOBJExtPltt

	thumb_func_start GX_DisableBankForTex
GX_DisableBankForTex: ; 0x02076E3C
	ldr r0, _02076E44 ; =gGXState + 0x08
	ldr r3, _02076E48 ; =disableBankForX_
	bx r3
	nop
_02076E44: .word gGXState + 0x08
_02076E48: .word disableBankForX_
	thumb_func_end GX_DisableBankForTex

	thumb_func_start GX_DisableBankForTexPltt
GX_DisableBankForTexPltt: ; 0x02076E4C
	ldr r0, _02076E54 ; =gGXState + 0x0A
	ldr r3, _02076E58 ; =disableBankForX_
	bx r3
	nop
_02076E54: .word gGXState + 0x0A
_02076E58: .word disableBankForX_
	thumb_func_end GX_DisableBankForTexPltt

	thumb_func_start GX_DisableBankForClearImage
GX_DisableBankForClearImage: ; 0x02076E5C
	ldr r0, _02076E64 ; =gGXState + 0x0C
	ldr r3, _02076E68 ; =disableBankForX_
	bx r3
	nop
_02076E64: .word gGXState + 0x0C
_02076E68: .word disableBankForX_
	thumb_func_end GX_DisableBankForClearImage

	thumb_func_start GX_DisableBankForARM7
GX_DisableBankForARM7: ; 0x02076E6C
	ldr r0, _02076E74 ; =gGXState + 0x06
	ldr r3, _02076E78 ; =disableBankForX_
	bx r3
	nop
_02076E74: .word gGXState + 0x06
_02076E78: .word disableBankForX_
	thumb_func_end GX_DisableBankForARM7

	thumb_func_start GX_DisableBankForLCDC
GX_DisableBankForLCDC: ; 0x02076E7C
	ldr r0, _02076E84 ; =gGXState
	ldr r3, _02076E88 ; =disableBankForX_
	bx r3
	nop
_02076E84: .word gGXState
_02076E88: .word disableBankForX_
	thumb_func_end GX_DisableBankForLCDC

	thumb_func_start GX_DisableBankForSubBG
GX_DisableBankForSubBG: ; 0x02076E8C
	ldr r0, _02076E94 ; =gGXState + 0x12
	ldr r3, _02076E98 ; =disableBankForX_
	bx r3
	nop
_02076E94: .word gGXState + 0x12
_02076E98: .word disableBankForX_
	thumb_func_end GX_DisableBankForSubBG

	thumb_func_start GX_DisableBankForSubOBJ
GX_DisableBankForSubOBJ: ; 0x02076E9C
	ldr r0, _02076EA4 ; =gGXState + 0x14
	ldr r3, _02076EA8 ; =disableBankForX_
	bx r3
	nop
_02076EA4: .word gGXState + 0x14
_02076EA8: .word disableBankForX_
	thumb_func_end GX_DisableBankForSubOBJ

	thumb_func_start GX_DisableBankForSubBGExtPltt
GX_DisableBankForSubBGExtPltt: ; 0x02076EAC
	ldr r2, _02076EBC ; =0x04001000
	ldr r0, _02076EC0 ; =0xBFFFFFFF
	ldr r1, [r2]
	ldr r3, _02076EC4 ; =disableBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076EC8 ; =gGXState + 0x16
	bx r3
	.align 2, 0
_02076EBC: .word 0x04001000
_02076EC0: .word 0xBFFFFFFF
_02076EC4: .word disableBankForX_
_02076EC8: .word gGXState + 0x16
	thumb_func_end GX_DisableBankForSubBGExtPltt

	thumb_func_start GX_DisableBankForSubOBJExtPltt
GX_DisableBankForSubOBJExtPltt: ; 0x02076ECC
	ldr r2, _02076EDC ; =0x04001000
	ldr r0, _02076EE0 ; =0x7FFFFFFF
	ldr r1, [r2]
	ldr r3, _02076EE4 ; =disableBankForX_
	and r0, r1
	str r0, [r2]
	ldr r0, _02076EE8 ; =gGXState + 0x18
	bx r3
	.align 2, 0
_02076EDC: .word 0x04001000
_02076EE0: .word 0x7FFFFFFF
_02076EE4: .word disableBankForX_
_02076EE8: .word gGXState + 0x18
	thumb_func_end GX_DisableBankForSubOBJExtPltt

	thumb_func_start GX_GetBankForOBJ
GX_GetBankForOBJ: ; 0x02076EEC
	ldr r0, _02076EF4 ; =gGXState
	ldrh r0, [r0, #4]
	bx lr
	nop
_02076EF4: .word gGXState
	thumb_func_end GX_GetBankForOBJ

	thumb_func_start GX_GetBankForOBJExtPltt
GX_GetBankForOBJExtPltt: ; 0x02076EF8
	ldr r0, _02076F00 ; =gGXState
	ldrh r0, [r0, #0x10]
	bx lr
	nop
_02076F00: .word gGXState
	thumb_func_end GX_GetBankForOBJExtPltt

	thumb_func_start GX_GetBankForTex
GX_GetBankForTex: ; 0x02076F04
	ldr r0, _02076F0C ; =gGXState
	ldrh r0, [r0, #8]
	bx lr
	nop
_02076F0C: .word gGXState
	thumb_func_end GX_GetBankForTex

	thumb_func_start GX_GetBankForLCDC
GX_GetBankForLCDC: ; 0x02076F10
	ldr r0, _02076F18 ; =gGXState
	ldrh r0, [r0]
	bx lr
	nop
_02076F18: .word gGXState
	thumb_func_end GX_GetBankForLCDC

	thumb_func_start GX_GetBankForSubOBJ
GX_GetBankForSubOBJ: ; 0x02076F1C
	ldr r0, _02076F24 ; =gGXState
	ldrh r0, [r0, #0x14]
	bx lr
	nop
_02076F24: .word gGXState
	thumb_func_end GX_GetBankForSubOBJ

	thumb_func_start GX_GetBankForSubOBJExtPltt
GX_GetBankForSubOBJExtPltt: ; 0x02076F28
	ldr r0, _02076F30 ; =gGXState
	ldrh r0, [r0, #0x18]
	bx lr
	nop
_02076F30: .word gGXState
	thumb_func_end GX_GetBankForSubOBJExtPltt
