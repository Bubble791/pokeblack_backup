    .include "macros/function.inc"
	.include "overlay142.inc"
	.include "global.inc"

	.public ovy142_219a0dc
	.public BagMenu_UseRepel
	.public BagMenu_WaitPrintKeyPad
	.public ovy142_219a250
	.public ovy142_219a2ac
	.public ovy142_219a2c4
	.public ovy142_219a314
	.public ovy142_219a354
	.public ovy142_219a404
	.public ovy142_219a440
	.public ovy142_219a4a0
	.public BagMenu_HandlePressAButton
	.public ovy142_219a724
	.public BagMenu_HandleKeyPad
	.public ovy142_219ab38
	.public ovy142_219abb8
	.public BagMenu_PrintPokeLearnHmTm
	.public ovy142_219ac4c
	.public BagMenu_TmHmUseStart
	.public ovy142_219acb8
	.public ovy142_219ad14
	.public ovy142_219ad30
	.public ovy142_219ae10
	.public BagMenu_SelectAmountItemToss
	.public BagMenu_TrySellItem
	.public ovy142_219b0a0
	.public BagMenu_PrintSellItemYesNo
	.public ovy142_219b2f0
	.public ovy142_219b3b0
	.public ovy142_219b490
	.public ovy142_219b46c
	.public BagMenu_MoveItemToFreeSpace
	.public BagMenu_ButtonManCallBack
	.public ovy142_219c0e8
	.public BagMenu_LoadBagBackDefaultText
	.public ovy142_219d22c
	.public ovy142_219f06c
	.public BagMenu_PrintBagMessage
	.public ovy142_219f8ec
	.public ovy142_219fa6c
	.public data_21A1138
	.public gBagItemText
	.text

	thumb_func_start ovy142_21a0748
ovy142_21a0748: ; 0x021A0748
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _021A07E0 ; =0x0000020D
	ldr r1, _021A07E4 ; =0x00001DE8
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, _021A07E8 ; =0x021A1694
	ldrh r0, [r0, #8]
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #5
	ldr r0, [r0, #4]
	bl sub_020084F8
	str r0, [sp, #4]
	cmp r0, #0
	ble _021A07A0
_021A0774:
	ldr r0, [sp, #8]
	lsl r1, r4, #3
	add r6, r0, r1
	ldrh r3, [r6, #0xc]
	add r7, r4, #0
	mov r0, #0xc
	mul r7, r0
	ldr r0, _021A07EC ; =data_21A1138
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	add r2, r5, r7
	add r4, r4, #1
	lsl r0, r0, #0x10
	add r0, r3, r0
	str r0, [r2, #8]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	str r1, [r5, r7]
	str r0, [r2, #4]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _021A0774
_021A07A0:
	ldr r1, [sp, #4]
	mov r4, #0
	ldr r3, _021A07F0 ; =0x021A03D5
	add r0, r5, #0
	mov r2, #0xc
	str r4, [sp]
	blx MATH_QSort
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021A07D4
	mov r1, #0xc
_021A07B8:
	add r3, r4, #0
	lsl r2, r4, #3
	ldr r0, [sp, #8]
	mul r3, r1
	add r0, r0, r2
	add r2, r5, r3
	ldr r3, [r5, r3]
	ldr r2, [r2, #4]
	add r4, r4, #1
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _021A07B8
_021A07D4:
	add r0, r5, #0
	bl GFL_HeapFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A07E0: .word 0x0000020D
_021A07E4: .word 0x00001DE8
_021A07E8: .word 0x021A1694
_021A07EC: .word data_21A1138
_021A07F0: .word 0x021A03D5
	thumb_func_end ovy142_21a0748

	thumb_func_start ovy142_21a07f4
ovy142_21a07f4: ; 0x021A07F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	ldr r0, _021A08D0 ; =0x00000236
	ldr r1, _021A08D4 ; =0x00001DE8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _021A08D8 ; =0x021A1694
	ldrh r0, [r0, #8]
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r1, #5
	ldr r0, [r0, #4]
	bl sub_020084F8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldrh r0, [r0, #8]
	bl Item_ArcHandleCreate
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021A088C
	ldr r4, [sp, #4]
	add r4, #0xc
_021A0830:
	lsl r0, r5, #3
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldrh r1, [r4, r1]
	ldrh r2, [r2, #8]
	ldr r0, [sp, #8]
	bl Item_ArcHandleReadFile
	mov r1, #0xc
	mul r1, r5
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r7, r6, r1
	mov r1, #0xf
	bl Item_GetParam
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0x11
	bl Item_GetParam
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	ldrh r2, [r4, r1]
	ldr r1, [sp, #0x20]
	lsl r1, r1, #0x1c
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r7, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r4, r0]
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x1c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x18]
	str r2, [r7, #4]
	bl GFL_HeapFree
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021A0830
_021A088C:
	ldr r0, [sp, #8]
	bl GFL_ArcToolFree
	mov r4, #0
	ldr r1, [sp, #0x10]
	ldr r3, _021A08DC ; =0x021A03D5
	add r0, r6, #0
	mov r2, #0xc
	str r4, [sp]
	blx MATH_QSort
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021A08C6
	mov r1, #0xc
_021A08AA:
	add r3, r4, #0
	lsl r2, r4, #3
	ldr r0, [sp, #4]
	mul r3, r1
	add r0, r0, r2
	add r2, r6, r3
	ldr r3, [r6, r3]
	ldr r2, [r2, #4]
	add r4, r4, #1
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blt _021A08AA
_021A08C6:
	add r0, r6, #0
	bl GFL_HeapFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A08D0: .word 0x00000236
_021A08D4: .word 0x00001DE8
_021A08D8: .word gBagItemText
_021A08DC: .word 0x021A03D5
	thumb_func_end ovy142_21a07f4

	.rodata
gBagItemText:
	.byte "bag_item.c"
