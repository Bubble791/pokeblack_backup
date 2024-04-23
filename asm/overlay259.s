    .include "macros/function.inc"
	.include "overlay259.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy259_21998c0
ovy259_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r7, #1
	add r4, r0, #0
	add r5, r2, #0
	mov r0, #1
	mov r1, #0x55
	lsl r2, r7, #0x12
	mov r6, #0x55
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x2c
	mov r2, #0x55
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	cmp r5, #0
	bne _02199918
	add r0, r7, #0
	bl sub_020186E0
	mov r0, #0x68
	str r0, [sp]
	add r0, r6, #0
	ldr r3, _021999A0 ; =0x021A0940
	mov r1, #0x14
	mov r2, #0
	mov r6, #0x14
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02016EE8
	str r0, [r5, #0xc]
	strh r7, [r5, #8]
	bl sub_0203DF20
	add r6, #0xec
	tst r0, r6
	beq _02199918
	mov r0, #5
	strh r0, [r5, #8]
_02199918:
	mov r0, #0x55
	strh r0, [r4]
	str r5, [r4, #0xc]
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_02199A18
	ldrh r1, [r4]
	mov r0, #1
	bl ovy259_219b3f4
	str r0, [r4, #0x10]
	ldrh r0, [r4]
	bl ovy259_219b630
	str r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	ldr r1, [r1, #0xc]
	bl ovy259_219baec
	add r6, sp, #4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	ldr r0, [r4, #0x10]
	bl sub_0219B4FC
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_0201736C
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_02017934
	bl sub_0200F6F4
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl ovy259_219be0c
	str r0, [sp, #0x14]
	ldrh r1, [r4]
	add r0, r6, #0
	bl ovy259_2199b3c
	str r0, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldrh r1, [r4]
	ldr r0, [r5, #0xc]
	ldr r2, [r2, #4]
	bl ovy259_219be60
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	blx r1
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021999A0: .word 0x021A0940
	thumb_func_end ovy259_21998c0

	thumb_func_start ovy259_21999a4
ovy259_21999a4: ; 0x021999A4
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r1, [r4, #0x28]
	add r6, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	blx r1
	ldr r0, [r4, #0x1c]
	bl ovy259_219bf60
	ldr r0, [r4, #0x14]
	bl ovy259_2199bd0
	ldr r0, [r4, #0x18]
	bl ovy259_219b780
	ldr r0, [r4, #0x10]
	bl ovy259_219b494
	cmp r5, #0
	bne _021999E0
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02017144
	ldr r0, [r4, #0xc]
	bl GFL_HeapFree
	bl sub_02018778
_021999E0:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x55
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy259_21999a4

	thumb_func_start ovy259_21999f0
ovy259_21999f0: ; 0x021999F0
	push {r3, r4, r5, lr}
	add r4, r3, #0
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	blx r1
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy259_219b7ec
	ldr r0, [r4, #0x14]
	bl ovy259_2199c18
	ldr r0, [r4, #0x10]
	bl ovy259_219b4e8
	mov r0, #1
	cmp r5, #1
	beq _02199A16
	mov r0, #0
_02199A16:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_21999f0

	thumb_func_start sub_02199A18
sub_02199A18: ; 0x02199A18
	cmp r1, #0
	beq _02199A26
	cmp r1, #1
	beq _02199A34
	cmp r1, #2
	beq _02199A42
	bx lr
_02199A26:
	ldr r1, _02199A50 ; =ovy259_2199a6c
	str r1, [r0, #0x20]
	ldr r1, _02199A54 ; =0x02199A8D
	str r1, [r0, #0x24]
	ldr r1, _02199A58 ; =0x02199A99
	str r1, [r0, #0x28]
	bx lr
_02199A34:
	ldr r1, _02199A5C ; =ovy259_2199aa4
	str r1, [r0, #0x20]
	ldr r1, _02199A60 ; =0x02199B25
	str r1, [r0, #0x24]
	ldr r1, _02199A64 ; =0x02199B31
	str r1, [r0, #0x28]
	bx lr
_02199A42:
	ldr r1, _02199A68 ; =ovy259_2199ae4
	str r1, [r0, #0x20]
	ldr r1, _02199A60 ; =0x02199B25
	str r1, [r0, #0x24]
	ldr r1, _02199A64 ; =0x02199B31
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
_02199A50: .word ovy259_2199a6c
_02199A54: .word 0x02199A8D
_02199A58: .word 0x02199A99
_02199A5C: .word ovy259_2199aa4
_02199A60: .word 0x02199B25
_02199A64: .word 0x02199B31
_02199A68: .word ovy259_2199ae4
	thumb_func_end sub_02199A18

	thumb_func_start ovy259_2199a6c
ovy259_2199a6c: ; 0x02199A6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldrh r0, [r4]
	ldr r1, [r3, #0x10]
	ldr r2, [r3, #0xc]
	ldrh r3, [r3, #8]
	bl ovy259_219a8a4
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy259_2199a6c
_02199A8C:
	.byte 0x40, 0x68, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xA9, 0x19, 0x02, 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xBD, 0xA9, 0x19, 0x02

	thumb_func_start ovy259_2199aa4
ovy259_2199aa4: ; 0x02199AA4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, sp, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x18
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	bl sub_0219B4FC
	str r4, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [sp]
	ldrh r1, [r5]
	add r0, r6, #0
	bl ovy259_219ac00
	str r0, [r5, #8]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy259_2199aa4

	thumb_func_start ovy259_2199ae4
ovy259_2199ae4: ; 0x02199AE4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	bl sub_0219B4FC
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [sp]
	ldrh r1, [r5]
	add r0, r4, #0
	bl ovy259_219ac00
	str r0, [r5, #8]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_2199ae4
_02199B24:
	.byte 0x80, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x71, 0xAC, 0x19, 0x02
	.byte 0x80, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x59, 0xAC, 0x19, 0x02

	thumb_func_start ovy259_2199b3c
ovy259_2199b3c: ; 0x02199B3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r6, _02199BC4 ; =0x00000135
	add r5, r0, #0
	ldr r3, _02199BC8 ; =0x021A0950
	add r0, r7, #0
	mov r1, #0x84
	mov r2, #1
	str r6, [sp]
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r2]
	str r1, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x34]
	add r0, r4, #0
	str r1, [r4, #0x3c]
	add r0, #0x70
	add r1, r4, #0
	strh r7, [r0]
	add r1, #0x70
	ldrh r1, [r1]
	mov r0, #0x84
	bl sub_0204AA30
	add r3, r4, #0
	str r0, [r4, #0x5c]
	add r3, #0x70
	add r6, #0x54
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x54]
	add r0, r4, #0
	bl ovy259_219a760
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r0, _02199BCC ; =ovy259_219a870
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x7c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02199BC4: .word 0x00000135
_02199BC8: .word 0x021A0950
_02199BCC: .word ovy259_219a870
	thumb_func_end ovy259_2199b3c

	thumb_func_start ovy259_2199bd0
ovy259_2199bd0: ; 0x02199BD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	bl GFL_TCBRemove
	add r0, r5, #0
	bl ovy259_219a7f8
	ldr r0, [r5, #0x54]
	bl GFL_MsgDataFree
	ldr r0, [r5, #0x5c]
	bl GFL_ArcToolFree
	ldr r0, [r5, #0x58]
	mov r4, #0
	cmp r0, #0
	ble _02199C10
	add r7, r4, #0
_02199BF6:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, [r6, #0x40]
	cmp r1, #0
	beq _02199C08
	add r0, r5, #0
	bl ovy259_2199f64
	str r7, [r6, #0x40]
_02199C08:
	ldr r0, [r5, #0x58]
	add r4, r4, #1
	cmp r4, r0
	blt _02199BF6
_02199C10:
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_2199bd0

	thumb_func_start ovy259_2199c18
ovy259_2199c18: ; 0x02199C18
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0x14
	bge _02199C26
	add r0, r0, #1
	str r0, [r4, #0x38]
_02199C26:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _02199C8A
	ldr r0, [r4, #0x3c]
	cmp r0, #9
	bne _02199C8A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _02199C3E
	mov r0, #4
	mov r5, #0xa
	b _02199C42
_02199C3E:
	mov r0, #7
	mov r5, #0xd
_02199C42:
	ldr r1, _02199D54 ; =0x0400000C
	lsl r3, r0, #2
	ldrh r0, [r1]
	mov r6, #0x43
	add r2, r0, #0
	and r2, r6
	lsr r0, r1, #0xc
	orr r0, r2
	add r2, r3, #0
	orr r2, r0
	mov r0, #0x2d
	lsl r0, r0, #8
	orr r0, r2
	strh r0, [r1]
	ldrh r2, [r1, #2]
	lsl r0, r5, #2
	add r3, r2, #0
	and r3, r6
	lsr r2, r1, #0xc
	orr r2, r3
	orr r2, r0
	mov r0, #0x2e
	lsl r0, r0, #8
	orr r0, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _02199C7E
	mov r0, #1
	b _02199C80
_02199C7E:
	mov r0, #0
_02199C80:
	str r0, [r4, #0x34]
	mov r0, #5
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x38]
_02199C8A:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _02199CAA
	bl sub_0219A194
	cmp r0, #1
	bne _02199CAA
	mov r0, #0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x3c]
	cmp r0, #8
	blt _02199CAA
	add r0, r4, #0
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
_02199CAA:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _02199D32
	ldr r1, [r4, #0x3c]
	cmp r1, #8
	bhi _02199D32
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199CC2: ; jump table
	.short _02199D32 - _02199CC2 - 2 ; case 0
	.short _02199CD4 - _02199CC2 - 2 ; case 1
	.short _02199CD4 - _02199CC2 - 2 ; case 2
	.short _02199CD4 - _02199CC2 - 2 ; case 3
	.short _02199CD4 - _02199CC2 - 2 ; case 4
	.short _02199CFA - _02199CC2 - 2 ; case 5
	.short _02199CFA - _02199CC2 - 2 ; case 6
	.short _02199CFA - _02199CC2 - 2 ; case 7
	.short _02199CFA - _02199CC2 - 2 ; case 8
_02199CD4:
	sub r0, r1, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r5, #3
	ldrh r0, [r4, r1]
	cmp r0, #0xff
	beq _02199CF8
	add r3, r4, #0
	add r3, #0x70
	ldrh r3, [r3]
	add r0, r4, #0
	add r1, r4, r1
	add r2, r5, #0
	bl ovy259_2199eb4
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x40]
_02199CF8:
	b _02199D28
_02199CFA:
	sub r0, r1, #5
	lsl r0, r0, #0x18
	add r6, r4, #0
	lsr r5, r0, #0x16
	add r6, #0x40
	ldr r0, [r6, r5]
	cmp r0, #0
	beq _02199D2E
	ldr r1, [r4, #0x34]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0219A18C
	ldr r0, [r6, r5]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _02199D28
	ldr r0, [r4, #0x3c]
	cmp r0, #6
	bne _02199D28
	mov r0, #9
	b _02199D30
_02199D28:
	ldr r0, [r4, #0x3c]
	add r0, r0, #1
	b _02199D30
_02199D2E:
	add r0, r1, #1
_02199D30:
	str r0, [r4, #0x3c]
_02199D32:
	ldr r0, [r4, #0x58]
	mov r5, #0
	cmp r0, #0
	ble _02199D50
_02199D3A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _02199D48
	bl ovy259_2199fac
_02199D48:
	ldr r0, [r4, #0x58]
	add r5, r5, #1
	cmp r5, r0
	blt _02199D3A
_02199D50:
	pop {r4, r5, r6, pc}
	nop
_02199D54: .word 0x0400000C
	thumb_func_end ovy259_2199c18

	thumb_func_start ovy259_2199d58
ovy259_2199d58: ; 0x02199D58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
	mov r0, #1
	mov r4, #0x2a
	str r2, [r5, #0x58]
	str r1, [r5, #0x38]
	str r0, [r5, #0x34]
	str r0, [r5, #0x3c]
	str r1, [r5, #0x50]
	cmp r2, #2
	beq _02199D7A
	mov r4, #0x2b
_02199D7A:
	mov r7, #0
	str r7, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #2
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #3
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r3, #0
	bl sub_0204AF50
	mov r4, #0
_02199DAE:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, [r6, #0x40]
	cmp r1, #0
	beq _02199DC4
	add r0, r5, #0
	bl ovy259_2199f64
	mov r0, #0
	str r0, [r6, #0x40]
	mov r7, #1
_02199DC4:
	add r4, r4, #1
	cmp r4, #4
	blt _02199DAE
	cmp r7, #0
	beq _02199DD4
	mov r0, #0
	bl sub_02044F90
_02199DD4:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_2199d58

	thumb_func_start sub_02199DE4
sub_02199DE4: ; 0x02199DE4
	add r0, #0x80
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02199DE4

	thumb_func_start ovy259_2199dec
ovy259_2199dec: ; 0x02199DEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x58]
	mov r4, #0
	str r1, [r5, #0x74]
	cmp r0, #0
	ble _02199E16
_02199DFE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _02199E0E
	ldr r1, [r5, #0x74]
	bl ovy259_219a73c
_02199E0E:
	ldr r0, [r5, #0x58]
	add r4, r4, #1
	cmp r4, r0
	blt _02199DFE
_02199E16:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _02199E22
	add r0, r5, #0
	bl sub_0219A864
_02199E22:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_2199dec

	thumb_func_start sub_02199E24
sub_02199E24: ; 0x02199E24
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_02199E24

	thumb_func_start ovy259_2199e2c
ovy259_2199e2c: ; 0x02199E2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #1
	cmp r0, #2
	blo _02199E40
	mov r1, #0
_02199E40:
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, #0x2c]
	bl ovy259_219bb94
	ldrb r1, [r5]
	ldr r0, [r5, #0x3c]
	bl ovy259_219a818
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	ldr r0, [r0, #0x2c]
	add r2, r6, #0
	add r3, r7, #0
	bl ovy259_219bc0c
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_2199e2c

	thumb_func_start ovy259_2199e60
ovy259_2199e60: ; 0x02199E60
	push {r3, lr}
	mov r3, #0
	bl ovy259_2199e2c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_2199e60

	thumb_func_start ovy259_2199e6c
ovy259_2199e6c: ; 0x02199E6C
	push {r3, lr}
	mov r3, #1
	bl ovy259_2199e2c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_2199e6c

	thumb_func_start ovy259_2199e78
ovy259_2199e78: ; 0x02199E78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0x2c]
	bl sub_0219BCB4
	cmp r0, #0
	ldr r0, [r4, #0x3c]
	beq _02199E98
	bl sub_0219A864
	add r0, r4, #0
	bl sub_0219A600
	mov r0, #1
	pop {r4, pc}
_02199E98:
	ldr r0, [r0, #0x2c]
	bl ovy259_219bcc4
	cmp r0, #0
	beq _02199EA8
	add r0, r4, #0
	mov r1, #0
	b _02199EAC
_02199EA8:
	add r0, r4, #0
	mov r1, #1
_02199EAC:
	bl sub_0219A5EC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy259_2199e78

	thumb_func_start ovy259_2199eb4
ovy259_2199eb4: ; 0x02199EB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02199F5C ; =0x0000031A
	add r7, r3, #0
	add r6, r1, #0
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _02199F60 ; =0x021A0950
	add r0, r7, #0
	mov r1, #0x54
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4, #0x3c]
	add r0, #0x40
	strh r7, [r0]
	ldr r0, [sp, #4]
	strb r0, [r4]
	ldrh r0, [r6]
	strb r0, [r4, #2]
	ldrh r0, [r6, #2]
	strb r0, [r4, #3]
	ldrh r0, [r6, #4]
	strh r0, [r4, #0xa]
	ldrh r0, [r6, #6]
	strh r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	str r0, [r4, #0x18]
	str r0, [r4, #0x38]
	mov r0, #0x4b
	bl sub_02005784
	strh r0, [r4, #0x36]
	mov r0, #0xff
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02199F1A
	ldr r0, [r5, #0x24]
	bl MyStatus_GetTrainerGender
	cmp r0, #1
	bne _02199F1A
	mov r0, #0xd
	strb r0, [r4, #2]
_02199F1A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy259_219a278
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy259_219a1a4
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy259_219a42c
	str r7, [sp]
	ldrh r2, [r6, #4]
	ldr r3, [r5, #0x58]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy259_219a608
	mov r5, #0
	str r5, [r4, #0xc]
	mov r0, #0x28
	str r5, [r4, #0x14]
	bl sub_02005784
	strb r0, [r4, #6]
	strh r5, [r4, #0x34]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02199F5C: .word 0x0000031A
_02199F60: .word 0x021A0950
	thumb_func_end ovy259_2199eb4

	thumb_func_start ovy259_2199f64
ovy259_2199f64: ; 0x02199F64
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ovy259_219a6fc
	ldr r0, [r4, #0x2c]
	bl sub_0204C108
	ldr r0, [r4, #0x30]
	bl sub_0204C108
	ldr r0, [r4, #0x20]
	bl sub_0204BCD0
	ldr r0, [r4, #0x24]
	bl sub_0204B98C
	ldr r0, [r4, #0x28]
	bl sub_0204BE64
	ldr r0, [r4, #0x1c]
	bl sub_020484B4
	ldr r0, [r4, #0x1c]
	bl sub_02048210
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02199FA2
	bl GFL_HeapFree
_02199FA2:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_2199f64

	thumb_func_start ovy259_2199fac
ovy259_2199fac: ; 0x02199FAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0, #0x58]
	cmp r1, #2
	bne _02199FBC
	mov r5, #6
	b _02199FBE
_02199FBC:
	mov r5, #3
_02199FBE:
	ldr r0, [r0, #0x34]
	lsl r5, r5, #0xc
	cmp r0, #0
	bne _02199FCA
	mov r2, #0
	b _02199FCE
_02199FCA:
	mov r2, #3
	lsl r2, r2, #0xe
_02199FCE:
	cmp r1, #2
	bne _02199FD6
	mov r1, #0
	b _02199FDA
_02199FD6:
	mov r1, #7
	lsl r1, r1, #0xa
_02199FDA:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _0219A0C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02199FEC: ; jump table
	.short _0219A0C6 - _02199FEC - 2 ; case 0
	.short _02199FF6 - _02199FEC - 2 ; case 1
	.short _0219A01E - _02199FEC - 2 ; case 2
	.short _0219A058 - _02199FEC - 2 ; case 3
	.short _0219A082 - _02199FEC - 2 ; case 4
_02199FF6:
	ldrb r5, [r4, #2]
	mov r0, #0
	strb r0, [r4, #1]
	lsl r3, r5, #1
	add r5, r5, r3
	ldr r3, _0219A184 ; =0x021A03D9
	ldrb r2, [r4, #4]
	ldrb r3, [r3, r5]
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	add r2, r2, r3
	add r3, r4, #0
	add r3, #0x40
	ldrh r3, [r3]
	ldr r1, [r1, #0x5c]
	bl ovy259_219a3f8
	mov r0, #2
_0219A01A:
	str r0, [r4, #0xc]
	b _0219A0C6
_0219A01E:
	ldrb r3, [r4, #1]
	add r6, r5, #0
	lsl r0, r3, #1
	add r0, r3, r0
	ldrb r3, [r4]
	lsl r7, r0, #0xc
	add r0, r4, #0
	mul r6, r3
	mov r3, #1
	lsl r3, r3, #0x10
	add r3, r6, r3
	add r3, r7, r3
	add r2, r2, r3
	mov r3, #3
	add r1, r1, r7
	lsl r3, r3, #0xc
	bl sub_0219A414
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0xc
	cmp r0, r5
	blo _0219A0C6
	mov r0, #3
	b _0219A0BA
_0219A058:
	ldrb r6, [r4, #3]
	mov r0, #0
	strb r0, [r4, #1]
	ldr r5, [r4, #0x3c]
	mov r2, #0xc
	add r3, r6, #0
	mul r3, r2
	ldr r2, _0219A188 ; =0x021A0406
	ldr r1, [r5, #0x5c]
	ldr r5, [r5, #0x30]
	add r2, r2, r3
	add r3, r4, #0
	lsl r5, r5, #2
	add r3, #0x40
	ldrh r2, [r5, r2]
	ldrh r3, [r3]
	add r0, r4, #0
	bl ovy259_219a3f8
	mov r0, #4
	b _0219A01A
_0219A082:
	ldrb r3, [r4, #1]
	add r6, r5, #0
	lsl r0, r3, #1
	add r0, r3, r0
	ldrb r3, [r4]
	lsl r7, r0, #0xc
	add r0, r4, #0
	mul r6, r3
	mov r3, #0xa
	lsl r3, r3, #0xe
	add r3, r6, r3
	add r3, r7, r3
	add r2, r2, r3
	mov r3, #3
	add r1, r1, r7
	lsl r3, r3, #0xc
	bl sub_0219A414
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0xc
	cmp r0, r5
	blo _0219A0C6
	mov r0, #5
_0219A0BA:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, #0x14]
_0219A0C6:
	ldrb r0, [r4, #6]
	cmp r0, #0x28
	bhs _0219A0D2
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0219A0F8
_0219A0D2:
	ldr r0, [r4, #0xc]
	cmp r0, #5
	beq _0219A0DC
	cmp r0, #0
	bne _0219A0F8
_0219A0DC:
	ldrb r0, [r4, #4]
	mov r1, #0
	strb r1, [r4, #6]
	cmp r0, #0
	bne _0219A0E8
	mov r1, #1
_0219A0E8:
	ldrb r0, [r4, #5]
	strb r1, [r4, #4]
	cmp r0, #0
	bne _0219A0F4
	mov r0, #1
	b _0219A0F6
_0219A0F4:
	mov r0, #0
_0219A0F6:
	strb r0, [r4, #5]
_0219A0F8:
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0x2c]
	bl sub_0219B850
	ldr r1, [r4, #0x18]
	cmp r1, #1
	bne _0219A118
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219A118
	ldr r0, [r4, #0x1c]
	bl BmpWin_FlushChar
	mov r0, #0
	str r0, [r4, #0x18]
_0219A118:
	mov r0, #2
	bl sub_02005748
	add r0, r0, #1
	lsl r0, r0, #0x10
	ldrh r1, [r4, #0x36]
	lsr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r4, #0x36]
	ldrh r0, [r4, #0x36]
	cmp r0, #0x96
	blo _0219A140
	ldr r0, [r4, #0x2c]
	bl sub_0204C540
	ldr r0, [r4, #0x2c]
	bl sub_0204C56C
	mov r0, #0
	strh r0, [r4, #0x36]
_0219A140:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	beq _0219A14C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _0219A15E
_0219A14C:
	ldr r0, [r4, #0x30]
	bl sub_0204C560
	cmp r0, #0
	bne _0219A178
	ldr r0, [r4, #0x30]
	bl sub_0204C540
	b _0219A178
_0219A15E:
	ldr r0, [r4, #0x30]
	bl sub_0204C560
	cmp r0, #1
	bne _0219A178
	ldr r0, [r4, #0x30]
	bl sub_0204C510
	cmp r0, #0
	bne _0219A178
	ldr r0, [r4, #0x30]
	bl sub_0204C550
_0219A178:
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _0219A182
	sub r0, r0, #1
	strh r0, [r4, #0x34]
_0219A182:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A184: .word 0x021A03D9
_0219A188: .word 0x021A0406
	thumb_func_end ovy259_2199fac

	thumb_func_start sub_0219A18C
sub_0219A18C: ; 0x0219A18C
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A18C

	thumb_func_start sub_0219A194
sub_0219A194: ; 0x0219A194
	ldr r0, [r0, #0xc]
	cmp r0, #5
	bne _0219A19E
	mov r0, #1
	bx lr
_0219A19E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A194

	thumb_func_start ovy259_219a1a4
ovy259_219a1a4: ; 0x0219A1A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0x58]
	add r7, r2, #0
	mov r4, #0x18
	cmp r0, #2
	beq _0219A1B8
	mov r4, #0xc
_0219A1B8:
	ldrb r0, [r5]
	mov r3, #0
	lsl r1, r0, #9
	mov r0, #1
	lsl r0, r0, #0xe
	add r1, r1, r0
	lsr r0, r0, #5
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrb r2, [r5, #2]
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x5c]
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _0219A270 ; =0x021A03D8
	ldrb r1, [r1, r2]
	mov r2, #2
	bl sub_0204B124
	ldrb r0, [r5]
	lsl r1, r0, #9
	mov r0, #6
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrb r3, [r5, #3]
	ldr r0, [r6, #0x5c]
	add r2, r3, #0
	ldr r3, [r5, #0x3c]
	mul r2, r1
	ldr r1, _0219A274 ; =0x021A0404
	ldr r3, [r3, #0x30]
	add r1, r1, r2
	lsl r3, r3, #2
	ldrh r1, [r3, r1]
	mov r2, #2
	mov r3, #0
	bl sub_0204B124
	ldrb r2, [r5]
	mov r6, #0x1f
	mov r0, #2
	str r4, [sp]
	lsr r3, r2, #0x1f
	lsl r1, r2, #0x1f
	sub r1, r1, r3
	str r2, [sp, #4]
	ror r1, r6
	add r1, r3, r1
	lsr r2, r2, #1
	add r3, r2, #0
	mul r3, r4
	lsl r2, r3, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl sub_0204566C
	ldrb r2, [r5]
	mov r0, #3
	str r4, [sp]
	lsr r3, r2, #0x1f
	lsl r1, r2, #0x1f
	sub r1, r1, r3
	str r2, [sp, #4]
	ror r1, r6
	add r1, r3, r1
	lsr r2, r2, #1
	add r3, r2, #0
	mul r3, r4
	lsl r2, r3, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl sub_0204566C
	mov r0, #3
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219A270: .word 0x021A03D8
_0219A274: .word 0x021A0404
	thumb_func_end ovy259_219a1a4

	thumb_func_start ovy259_219a278
ovy259_219a278: ; 0x0219A278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0x58]
	add r6, r2, #0
	cmp r0, #2
	bne _0219A290
	mov r7, #6
	lsl r7, r7, #0xc
	mov r0, #0
	b _0219A298
_0219A290:
	mov r7, #3
	mov r0, #7
	lsl r7, r7, #0xc
	lsl r0, r0, #0xa
_0219A298:
	str r0, [sp, #0xc]
	ldrb r3, [r4, #2]
	ldr r1, [r5, #0x5c]
	add r0, r4, #0
	lsl r2, r3, #1
	add r3, r3, r2
	ldr r2, _0219A3EC ; =0x021A03D9
	ldrb r2, [r2, r3]
	add r3, r6, #0
	bl ovy259_219a3f8
	ldrb r2, [r4]
	add r3, r7, #0
	ldr r1, [sp, #0xc]
	mul r3, r2
	mov r2, #1
	lsl r2, r2, #0x10
	add r2, r3, r2
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0219A414
	ldr r0, [r4, #0x14]
	bl GFL_HeapFree
	ldrb r2, [r4, #3]
	mov r3, #0xc
	ldr r1, [r5, #0x5c]
	mul r3, r2
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	lsl r2, r2, #2
	str r2, [sp, #0x10]
	ldr r2, _0219A3F0 ; =0x021A0406
	add r3, r2, r3
	ldr r2, [sp, #0x10]
	ldrh r2, [r2, r3]
	add r3, r6, #0
	bl ovy259_219a3f8
	ldrb r2, [r4]
	add r3, r7, #0
	ldr r1, [sp, #0xc]
	mul r3, r2
	mov r2, #0xa
	lsl r2, r2, #0xe
	add r2, r3, r2
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0219A414
	ldr r0, [r4, #0x14]
	bl GFL_HeapFree
	str r6, [sp]
	ldrb r2, [r4, #2]
	ldrb r3, [r4]
	ldr r7, _0219A3F4 ; =0x021A03DA
	lsl r1, r2, #1
	add r1, r2, r1
	lsl r3, r3, #1
	add r3, r3, #3
	lsl r3, r3, #0x15
	ldrb r1, [r7, r1]
	ldr r0, [r5, #0x5c]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BC48
	str r0, [r4, #0x20]
	str r6, [sp]
	ldrb r2, [r4, #2]
	ldr r0, [r5, #0x5c]
	mov r3, #0
	lsl r1, r2, #1
	add r1, r2, r1
	ldrb r1, [r7, r1]
	mov r2, #0
	add r1, r1, #1
	bl Oam_LoadNCGRFile
	ldrb r1, [r4, #2]
	str r0, [r4, #0x24]
	add r3, r6, #0
	lsl r0, r1, #1
	add r0, r1, r0
	ldrb r2, [r7, r0]
	ldr r0, [r5, #0x5c]
	add r1, r2, #2
	add r2, r2, #3
	bl sub_0204BDE0
	str r0, [r4, #0x28]
	mov r0, #0xa
	add r2, sp, #0x14
	strb r0, [r2, #6]
	mov r0, #1
	strb r0, [r2, #7]
	ldrb r3, [r4]
	mov r0, #0x1f
	lsr r1, r3, #0x1f
	lsl r7, r3, #0x1f
	sub r7, r7, r1
	ror r7, r0
	add r0, r1, r7
	lsl r0, r0, #7
	add r0, #0x40
	strh r0, [r2]
	lsr r1, r3, #1
	mov r0, #0x60
	mul r0, r1
	add r0, #0x30
	strh r0, [r2, #2]
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _0219A388
	mov r0, #2
	ldrsh r0, [r2, r0]
	add r0, #0x38
	strh r0, [r2, #2]
_0219A388:
	mov r7, #0
	add r0, sp, #0x14
	strh r7, [r0, #4]
	add r0, sp, #0x14
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x28]
	bl sub_0204C040
	str r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x2c]
	bl sub_0204C550
	mov r1, #1
	add r0, sp, #0x14
	strh r1, [r0, #4]
	add r0, sp, #0x14
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x28]
	bl sub_0204C040
	str r0, [r4, #0x30]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x30]
	bl sub_0204C550
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A3EC: .word 0x021A03D9
_0219A3F0: .word 0x021A0406
_0219A3F4: .word 0x021A03DA
	thumb_func_end ovy259_219a278

	thumb_func_start ovy259_219a3f8
ovy259_219a3f8: ; 0x0219A3F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r3, [sp]
	add r3, r4, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, #0x10
	bl sub_0204B28C
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy259_219a3f8

	thumb_func_start sub_0219A414
sub_0219A414: ; 0x0219A414
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x14]
	add r0, r0, r1
	mov r1, #6
	lsl r1, r1, #0x18
	add r1, r2, r1
	add r2, r3, #0
	ldr r3, _0219A428 ; =MIi_CpuCopy32
	bx r3
	nop
_0219A428: .word MIi_CpuCopy32
	thumb_func_end sub_0219A414

	thumb_func_start ovy259_219a42c
ovy259_219a42c: ; 0x0219A42C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r2, [sp, #0xc]
	ldrb r0, [r5]
	add r7, r1, #0
	ldr r1, _0219A5E0 ; =0x021A03A8
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _0219A5E4 ; =0x021A03A9
	mov r0, #2
	ldrb r2, [r3, r2]
	str r0, [sp]
	mov r0, #0xc
	add r1, r1, #2
	add r2, r2, #1
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xc
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x1c]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x1c]
	bl sub_0204826C
	mov r0, #0
	bl sub_02044F90
	ldrb r0, [r5, #2]
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x2c]
	bl sub_0219B84C
	add r6, r0, #0
	ldr r0, [r7, #0x2c]
	bl sub_0219B850
	str r0, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #0xff
	beq _0219A49C
	str r0, [sp, #0x1c]
_0219A49C:
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x1c]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0219A4B4
	cmp r0, #0xd
	beq _0219A4B4
	cmp r0, #1
	bne _0219A4FE
_0219A4B4:
	ldr r1, [sp, #0xc]
	mov r0, #0x80
	bl GFL_StrBufCreate
	str r0, [sp, #0x20]
	ldr r0, [r7, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x28]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl GFL_WordSetSystemCreateDefault
	ldr r2, [sp, #0x14]
	mov r1, #0
	add r7, r0, #0
	bl GFL_CopyVarForText
	ldr r0, [sp, #0x10]
	bl sub_0200F7D4
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_020245C4
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	ldr r4, [sp, #0x20]
_0219A4FE:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02022888
	strb r0, [r5, #7]
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0xf
	str r6, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldrb r2, [r5, #7]
	mov r7, #0x60
	ldr r0, [sp, #0x18]
	sub r3, r7, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0xf
	str r6, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldrb r2, [r5, #7]
	ldr r0, [sp, #0x18]
	sub r3, r7, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0xf
	str r6, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldrb r2, [r5, #7]
	ldr r0, [sp, #0x18]
	sub r3, r7, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	mov r3, #2
	bl sub_02021C7C
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0xf
	str r6, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldrb r2, [r5, #7]
	ldr r0, [sp, #0x18]
	sub r3, r7, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C7C
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	str r4, [sp]
	mov r0, #2
	str r6, [sp, #4]
	lsl r0, r0, #9
	str r0, [sp, #8]
	ldrb r2, [r5, #7]
	ldr r0, [sp, #0x18]
	sub r3, r7, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	mov r3, #1
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r5, #0x18]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A5E0: .word 0x021A03A8
_0219A5E4: .word 0x021A03A9
	thumb_func_end ovy259_219a42c

	thumb_func_start sub_0219A5E8
sub_0219A5E8: ; 0x0219A5E8
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_0219A5E8

	thumb_func_start sub_0219A5EC
sub_0219A5EC: ; 0x0219A5EC
	ldr r2, [r0, #0x38]
	cmp r2, #1
	bne _0219A5FA
	cmp r1, #0
	bne _0219A5FA
	mov r2, #0x46
	strh r2, [r0, #0x34]
_0219A5FA:
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A5EC

	thumb_func_start sub_0219A600
sub_0219A600: ; 0x0219A600
	mov r1, #0
	strh r1, [r0, #0x34]
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end sub_0219A600

	thumb_func_start ovy259_219a608
ovy259_219a608: ; 0x0219A608
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, [sp, #0x30]
	cmp r2, #3
	beq _0219A6D0
	cmp r3, #2
	bne _0219A630
	lsl r0, r2, #3
	ldr r2, _0219A6D4 ; =0x021A03C1
	ldr r1, _0219A6D8 ; =0x021A03C0
	ldrb r2, [r2, r0]
	ldrb r1, [r1, r0]
	str r2, [sp, #0x10]
	ldr r2, _0219A6DC ; =0x021A03C2
	ldrb r2, [r2, r0]
	str r2, [sp, #0xc]
	ldr r2, _0219A6E0 ; =0x021A03C3
	b _0219A644
_0219A630:
	lsl r0, r2, #3
	ldr r2, _0219A6E4 ; =0x021A03C5
	ldr r1, _0219A6E8 ; =0x021A03C4
	ldrb r2, [r2, r0]
	ldrb r1, [r1, r0]
	str r2, [sp, #0x10]
	ldr r2, _0219A6EC ; =0x021A03C6
	ldrb r2, [r2, r0]
	str r2, [sp, #0xc]
	ldr r2, _0219A6F0 ; =0x021A03C7
_0219A644:
	str r6, [sp]
	ldrb r3, [r5]
	ldrb r7, [r2, r0]
	ldr r0, [r4, #0x5c]
	add r3, #0xc
	lsl r3, r3, #0x15
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BC48
	str r0, [r5, #0x48]
	str r6, [sp]
	ldr r0, [r4, #0x5c]
	ldr r1, [sp, #0x10]
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x4c]
	ldr r0, [r4, #0x5c]
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0204BDE0
	str r0, [r5, #0x50]
	mov r1, #0xa
	add r0, sp, #0x14
	strb r1, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldrb r1, [r5]
	ldr r2, _0219A6F4 ; =0x021A03B0
	lsl r1, r1, #2
	ldrsh r2, [r2, r1]
	strh r2, [r0]
	ldr r2, _0219A6F8 ; =0x021A03B2
	ldrsh r1, [r2, r1]
	strh r1, [r0, #2]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0x20]
	ldr r1, [r5, #0x4c]
	ldr r2, [r5, #0x48]
	ldr r3, [r5, #0x50]
	bl sub_0204C040
	str r0, [r5, #0x44]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x44]
	mov r4, #1
	mov r1, #1
	bl sub_0204C520
	lsl r0, r4, #0xe
	bl sub_02005784
	add r1, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_0204C4D4
_0219A6D0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A6D4: .word 0x021A03C1
_0219A6D8: .word 0x021A03C0
_0219A6DC: .word 0x021A03C2
_0219A6E0: .word 0x021A03C3
_0219A6E4: .word 0x021A03C5
_0219A6E8: .word 0x021A03C4
_0219A6EC: .word 0x021A03C6
_0219A6F0: .word 0x021A03C7
_0219A6F4: .word 0x021A03B0
_0219A6F8: .word 0x021A03B2
	thumb_func_end ovy259_219a608

	thumb_func_start ovy259_219a6fc
ovy259_219a6fc: ; 0x0219A6FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0219A70E
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, #0x44]
_0219A70E:
	ldr r0, [r4, #0x48]
	cmp r0, #0xff
	beq _0219A71C
	bl sub_0204BCD0
	mov r0, #0xff
	str r0, [r4, #0x48]
_0219A71C:
	ldr r0, [r4, #0x4c]
	cmp r0, #0xff
	beq _0219A72A
	bl sub_0204B98C
	mov r0, #0xff
	str r0, [r4, #0x4c]
_0219A72A:
	ldr r0, [r4, #0x50]
	cmp r0, #0xff
	beq _0219A738
	bl sub_0204BE64
	mov r0, #0xff
	str r0, [r4, #0x50]
_0219A738:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219a6fc

	thumb_func_start ovy259_219a73c
ovy259_219a73c: ; 0x0219A73C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	add r4, r1, #0
	cmp r0, #0
	beq _0219A74C
	bl sub_0204C124
_0219A74C:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0204C124
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy259_219a73c

	thumb_func_start ovy259_219a760
ovy259_219a760: ; 0x0219A760
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x70
	ldrh r1, [r1]
	mov r0, #0xaa
	bl sub_0204AA30
	add r1, r5, #0
	add r1, #0x70
	ldrh r1, [r1]
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	mov r1, #3
	add r4, r0, #0
	mov r6, #0
	bl sub_0204BC48
	str r0, [r5, #0x60]
	add r0, r5, #0
	add r0, #0x70
	ldrh r0, [r0]
	mov r1, #0x1b
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r3, r5, #0
	add r3, #0x70
	str r0, [r5, #0x64]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x18
	bl sub_0204BDE0
	str r0, [r5, #0x68]
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r1, #0xa
	add r0, sp, #0xc
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	add r0, #0x70
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x60]
	ldr r3, [r5, #0x68]
	bl sub_0204C040
	str r0, [r5, #0x6c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x6c]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy259_219a760

	thumb_func_start ovy259_219a7f8
ovy259_219a7f8: ; 0x0219A7F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	bl sub_0204C108
	ldr r0, [r4, #0x60]
	bl sub_0204BCD0
	ldr r0, [r4, #0x64]
	bl sub_0204B98C
	ldr r0, [r4, #0x68]
	bl sub_0204BE64
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219a7f8

	thumb_func_start ovy259_219a818
ovy259_219a818: ; 0x0219A818
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02199E24
	bl sub_0219A5E8
	lsr r2, r0, #1
	ldr r0, _0219A85C ; =0x021A03A8
	lsl r1, r5, #1
	ldrb r0, [r0, r1]
	lsl r0, r0, #3
	add r0, #0x50
	add r2, r2, r0
	add r0, sp, #0
	strh r2, [r0]
	ldr r2, _0219A860 ; =0x021A03A9
	ldrb r1, [r2, r1]
	mov r2, #0
	lsl r1, r1, #3
	add r1, #0x10
	strh r1, [r0, #2]
	ldr r0, [r4, #0x6c]
	add r1, sp, #0
	bl sub_0204C140
	ldr r0, [r4, #0x6c]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x6c]
	bl sub_0204C56C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A85C: .word 0x021A03A8
_0219A860: .word 0x021A03A9
	thumb_func_end ovy259_219a818

	thumb_func_start sub_0219A864
sub_0219A864: ; 0x0219A864
	ldr r0, [r0, #0x6c]
	ldr r3, _0219A86C ; =sub_0204C124
	mov r1, #0
	bx r3
	.align 2, 0
_0219A86C: .word sub_0204C124
	thumb_func_end sub_0219A864

	thumb_func_start ovy259_219a870
ovy259_219a870: ; 0x0219A870
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0219A8A0
	ldr r1, [r4, #0x74]
	mov r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r0, [r4, #0x78]
	bl sub_02044C98
	ldr r1, [r4, #0x74]
	mov r0, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	ldr r1, [r4, #0x74]
	mov r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
_0219A8A0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219a870

	thumb_func_start ovy259_219a8a4
ovy259_219a8a4: ; 0x0219A8A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r1, [sp, #8]
	add r4, r3, #0
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	mov r1, #0x89
	str r1, [sp]
	ldr r3, _0219A9B8 ; =0x021A0964
	mov r1, #0x30
	mov r2, #1
	bl GFL_HeapAllocate
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	strh r4, [r6, #0x10]
	str r1, [r6, #0xc]
	ldr r1, [sp, #4]
	strh r1, [r6]
	ldr r1, [sp, #0x50]
	str r1, [r6, #8]
	bl ovy259_219aa94
	ldrh r1, [r6]
	mov r0, #0xea
	mov r7, #0xea
	bl sub_0204AA30
	str r0, [r6, #0x14]
	add r0, r6, #0
	bl ovy259_219aab0
	add r7, #0x96
	add r2, r4, r7
	lsl r2, r2, #0x10
	ldrh r3, [r6]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	mov r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r6, #0x28]
	ldr r0, [sp, #0xc]
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	bl ovy259_219e3f0
	add r7, r0, #0
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
_0219A91C:
	ldr r1, [r6, #0x20]
	lsl r0, r5, #1
	add r0, r1, r0
	ldrh r0, [r0, #4]
	lsl r1, r5, #3
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	add r4, r0, r1
	mov r0, #0xff
	strh r0, [r4, #6]
	ldr r0, [r6, #0x20]
	ldrb r0, [r0, r5]
	cmp r0, #6
	beq _0219A942
	cmp r0, #8
	beq _0219A95E
	cmp r0, #9
	beq _0219A950
	b _0219A96A
_0219A942:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0219A94C
	mov r0, #6
	b _0219A96A
_0219A94C:
	mov r0, #7
	b _0219A96A
_0219A950:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0219A95A
	mov r0, #9
	b _0219A96A
_0219A95A:
	mov r0, #0xa
	b _0219A96A
_0219A95E:
	strh r0, [r4]
	add r0, r7, #0
	bl ovy259_219fda0
	strh r0, [r4, #6]
	b _0219A96C
_0219A96A:
	strh r0, [r4]
_0219A96C:
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r4, r0, r1
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl ovy259_219e584
	strh r0, [r4, #2]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl ovy259_219e5e0
	add r5, r5, #1
	strh r0, [r4, #4]
	cmp r5, #4
	blt _0219A91C
	add r0, r7, #0
	bl ovy259_219e430
	ldr r0, [r6, #8]
	ldr r2, [r6, #4]
	add r1, sp, #0x18
	bl ovy259_2199d58
	mov r0, #0
	strb r0, [r6, #0x12]
	mov r1, #1
	str r1, [r6, #0x18]
	add r1, r6, #0
	add r1, #0x2d
	strb r0, [r1]
	ldrh r1, [r6]
	bl sub_02042BA8
	add r0, r6, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219A9B8: .word 0x021A0964
	thumb_func_end ovy259_219a8a4

	thumb_func_start ovy259_219a9bc
ovy259_219a9bc: ; 0x0219A9BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x14]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl sub_0219AAAC
	ldr r0, [r4, #0x1c]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy259_219a9bc

	thumb_func_start ovy259_219a9e0
ovy259_219a9e0: ; 0x0219A9E0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #0x12]
	cmp r1, #6
	bhi _0219AA88
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219A9F8: ; jump table
	.short _0219AA06 - _0219A9F8 - 2 ; case 0
	.short _0219AA1E - _0219A9F8 - 2 ; case 1
	.short _0219AA3A - _0219A9F8 - 2 ; case 2
	.short _0219AA46 - _0219A9F8 - 2 ; case 3
	.short _0219AA5A - _0219A9F8 - 2 ; case 4
	.short _0219AA76 - _0219A9F8 - 2 ; case 5
	.short _0219AA84 - _0219A9F8 - 2 ; case 6
_0219AA06:
	ldr r0, [r4, #8]
	bl sub_02199DE4
	cmp r0, #0
	beq _0219AA88
	ldr r0, [r4, #8]
	mov r1, #1
	mov r5, #1
	bl ovy259_2199dec
	strb r5, [r4, #0x12]
	b _0219AA88
_0219AA1E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl GFL_FadeScreenSet
	mov r0, #2
_0219AA36:
	strb r0, [r4, #0x12]
	b _0219AA88
_0219AA3A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219AA88
	mov r0, #6
	b _0219AA36
_0219AA46:
	ldrb r1, [r4, #0x13]
	add r0, r1, #1
	strb r0, [r4, #0x13]
	cmp r1, #0x1e
	bls _0219AA88
	ldr r0, _0219AA90 ; =0x0000073D
	bl GFL_SndSEPlay
	mov r0, #4
	b _0219AA36
_0219AA5A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #5
	b _0219AA36
_0219AA76:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219AA88
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219AA84:
	bl ovy259_219aae4
_0219AA88:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219AA90: .word 0x0000073D
	thumb_func_end ovy259_219a9e0

	thumb_func_start ovy259_219aa94
ovy259_219aa94: ; 0x0219AA94
	push {r3, lr}
	mov r0, #4
	str r0, [sp]
	ldr r0, _0219AAA8 ; =0x04000050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	.align 2, 0
_0219AAA8: .word 0x04000050
	thumb_func_end ovy259_219aa94

	thumb_func_start sub_0219AAAC
sub_0219AAAC: ; 0x0219AAAC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219AAAC

	thumb_func_start ovy259_219aab0
ovy259_219aab0: ; 0x0219AAB0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x10]
	ldrh r3, [r4]
	ldr r0, [r4, #0x14]
	sub r1, r1, #1
	mov r2, #0
	bl sub_0204B600
	add r1, r0, #0
	add r1, #0xc
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	ldrb r1, [r0, #2]
	cmp r1, #0xff
	bne _0219AADE
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _0219AADE
	mov r0, #2
	str r0, [r4, #4]
	pop {r4, pc}
_0219AADE:
	mov r0, #4
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ovy259_219aab0

	thumb_func_start ovy259_219aae4
ovy259_219aae4: ; 0x0219AAE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x2d
	ldrb r1, [r1]
	ldr r2, [r5, #0x24]
	lsl r1, r1, #2
	ldrb r4, [r2, r1]
	ldr r1, [r5, #0x18]
	cmp r1, #1
	bne _0219AB06
	mov r1, #0
	str r1, [r5, #0x18]
	ldr r1, _0219AB48 ; =0x021A0458
	lsl r2, r4, #3
	ldr r1, [r1, r2]
	blx r1
_0219AB06:
	ldr r1, _0219AB4C ; =0x021A045C
	lsl r2, r4, #3
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	cmp r0, #1
	bne _0219AB46
	add r0, r5, #0
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x2d
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	ldrb r0, [r0]
	ldr r1, [r5, #0x24]
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq _0219AB3E
	lsl r2, r1, #3
	ldr r1, _0219AB48 ; =0x021A0458
	add r0, r5, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r3, r4, r5, pc}
_0219AB3E:
	mov r0, #0
	strb r0, [r5, #0x13]
	mov r0, #3
	strb r0, [r5, #0x12]
_0219AB46:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219AB48: .word 0x021A0458
_0219AB4C: .word 0x021A045C
	thumb_func_end ovy259_219aae4

	thumb_func_start ovy259_219ab50
ovy259_219ab50: ; 0x0219AB50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, [r5, #0x24]
	add r0, r0, r1
	ldrb r4, [r0, #1]
	ldrh r0, [r0, #2]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r5, #8]
	bl sub_02199E24
	add r1, r5, #0
	add r1, #0x2c
	strb r4, [r1]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl ovy259_2199e60
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy259_219ab50

	thumb_func_start ovy259_219ab80
ovy259_219ab80: ; 0x0219AB80
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x2c
	ldrb r1, [r1]
	ldr r0, [r4, #8]
	bl sub_02199E24
	ldr r1, [r4, #8]
	bl ovy259_2199e78
	pop {r4, pc}
	thumb_func_end ovy259_219ab80
_0219AB98:
	.byte 0x00, 0x21, 0xC1, 0x85, 0x70, 0x47, 0x00, 0x00
	.byte 0x01, 0x1C, 0x2D, 0x31, 0x09, 0x78, 0x42, 0x6A, 0x89, 0x00, 0x51, 0x18, 0x49, 0x88, 0x09, 0x06
	.byte 0x0A, 0x0E, 0xC1, 0x8D, 0x49, 0x1C, 0xC1, 0x85, 0xC0, 0x8D, 0x90, 0x42, 0x01, 0xDD, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy259_219abcc
ovy259_219abcc: ; 0x0219ABCC
	push {r3, lr}
	ldr r1, [r0, #0x24]
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl GFL_SndSEPlay
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219abcc
_0219ABE8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy259_219abec
ovy259_219abec: ; 0x0219ABEC
	push {r3, lr}
	bl sub_020062A8
	cmp r0, #0
	bne _0219ABFA
	mov r0, #1
	pop {r3, pc}
_0219ABFA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219abec

	thumb_func_start ovy259_219ac00
ovy259_219ac00: ; 0x0219AC00
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x7f
	str r0, [sp]
	ldr r3, _0219AC54 ; =0x021A097C
	add r0, r6, #0
	mov r1, #0x58
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r4, #4
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	strh r6, [r4]
	mov r0, #2
	str r0, [r4, #0x54]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl ovy259_219e3f0
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy259_219c164
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ovy259_219ac8c
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219AC54: .word 0x021A097C
	thumb_func_end ovy259_219ac00

	thumb_func_start ovy259_219ac58
ovy259_219ac58: ; 0x0219AC58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0219C194
	ldr r0, [r4, #0x28]
	bl ovy259_219e430
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy259_219ac58

	thumb_func_start ovy259_219ac70
ovy259_219ac70: ; 0x0219AC70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ovy259_219c19c
	ldr r0, [r4, #0x20]
	bl sub_0219C1AC
	cmp r0, #0
	beq _0219AC88
	mov r0, #1
	pop {r4, pc}
_0219AC88:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy259_219ac70

	thumb_func_start ovy259_219ac8c
ovy259_219ac8c: ; 0x0219AC8C
	push {r3, lr}
	cmp r1, #0
	beq _0219AC96
	cmp r1, #1
	beq _0219ACA0
_0219AC96:
	ldr r0, [r0, #0x20]
	ldr r1, _0219ACB8 ; =ovy259_219af38
	bl sub_0219C1BC
	pop {r3, pc}
_0219ACA0:
	add r1, r0, #0
	mov r2, #5
	add r1, #0x40
	strh r2, [r1]
	mov r1, #0
	str r1, [r0, #0x4c]
	ldr r0, [r0, #0x20]
	ldr r1, _0219ACBC ; =ovy259_219afa4
	bl sub_0219C1BC
	pop {r3, pc}
	nop
_0219ACB8: .word ovy259_219af38
_0219ACBC: .word ovy259_219afa4
	thumb_func_end ovy259_219ac8c

	thumb_func_start ovy259_219acc0
ovy259_219acc0: ; 0x0219ACC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #0
	mov r2, #0x44
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [r5, #8]
	bl sub_02017934
	bl sub_0200F6F4
	ldr r1, [sp]
	str r0, [r1]
	ldr r1, [r5, #0x10]
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r1, [r5, #0x14]
	str r1, [r0, #8]
	ldr r0, [r5, #0x10]
	bl sub_0219B854
	ldr r1, [sp]
	str r0, [r1, #0xc]
	ldr r0, [r5, #8]
	bl sub_020171F4
	bl sub_02017544
	bl sub_02018C74
	mov r1, #0x8a
	lsl r1, r1, #2
	cmp r0, r1
	beq _0219AD74
	add r6, r4, #0
	b _0219AD68
_0219AD10:
	ldr r0, _0219AD78 ; =0x021A0480
	lsl r1, r6, #2
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, _0219AD78 ; =0x021A0480
	ldrh r7, [r0, r1]
	ldr r0, [r5, #0x28]
	add r1, r7, #0
	bl ovy259_219e4d4
	cmp r0, #0
	beq _0219AD66
	ldr r0, [r5, #0x28]
	add r1, r7, #0
	bl ovy259_219e570
	cmp r0, #0
	beq _0219AD66
	cmp r6, #5
	bne _0219AD4C
	ldr r0, [r5, #0x28]
	bl ovy259_219e638
	mov r7, #5
	cmp r0, #0
	bne _0219AD48
	mov r0, #6
	b _0219AD50
_0219AD48:
	mov r0, #7
	b _0219AD50
_0219AD4C:
	ldr r0, [sp, #4]
	ldrh r0, [r0, #2]
_0219AD50:
	lsl r1, r4, #1
	add r1, r5, r1
	add r1, #0x40
	strh r7, [r1]
	lsl r2, r4, #2
	ldr r1, [sp]
	add r4, r4, #1
	add r1, r1, r2
	str r0, [r1, #0x10]
	mov r0, #1
	str r0, [r1, #0x28]
_0219AD66:
	add r6, r6, #1
_0219AD68:
	cmp r6, #6
	bhs _0219AD70
	cmp r4, #6
	blt _0219AD10
_0219AD70:
	ldr r0, [sp]
	str r4, [r0, #0x40]
_0219AD74:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AD78: .word 0x021A0480
	thumb_func_end ovy259_219acc0

	thumb_func_start ovy259_219ad7c
ovy259_219ad7c: ; 0x0219AD7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r6, r1, #0
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0x20
	mov r5, #0
	blx MI_CpuFill8
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x38
	blx MI_CpuFill8
	mov r7, #0xff
_0219AD9C:
	lsl r1, r5, #3
	add r0, sp, #0x10
	add r0, r0, r1
	add r5, r5, #1
	strh r7, [r0, #6]
	cmp r5, #4
	blt _0219AD9C
	ldr r0, [r4, #8]
	bl sub_020171F4
	bl sub_02017544
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #0xc]
	bl ovy259_219e584
	add r5, sp, #0x10
	strh r0, [r5, #0xa]
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #0xc]
	bl ovy259_219e5e0
	strh r0, [r5, #0xc]
	mov r0, #0
	strh r0, [r5, #8]
	strh r7, [r5, #0x10]
	strh r7, [r5, #0x18]
	str r0, [sp, #8]
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #1
	add r0, r4, r0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #5
	bls _0219ADE6
	b _0219AF16
_0219ADE6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219ADF2: ; jump table
	.short _0219ADFE - _0219ADF2 - 2 ; case 0
	.short _0219AE2A - _0219ADF2 - 2 ; case 1
	.short _0219AE56 - _0219ADF2 - 2 ; case 2
	.short _0219AE82 - _0219ADF2 - 2 ; case 3
	.short _0219AE9C - _0219ADF2 - 2 ; case 4
	.short _0219AECC - _0219ADF2 - 2 ; case 5
_0219ADFE:
	mov r0, #4
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #8]
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #8]
	bl ovy259_219e474
	strh r0, [r5, #4]
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r1, r0, #0
	ldrh r3, [r4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ovy259_219f04c
	b _0219AF28
_0219AE2A:
	mov r0, #1
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ovy259_219e474
	strh r0, [r5, #4]
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r1, r0, #0
	ldrh r3, [r4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ovy259_219faac
	b _0219AF28
_0219AE56:
	mov r0, #2
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ovy259_219e474
	strh r0, [r5, #4]
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r1, r0, #0
	ldrh r3, [r4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ovy259_219f63c
	b _0219AF28
_0219AE82:
	mov r0, #3
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl ovy259_219e474
	strh r0, [r5, #4]
	b _0219AF16
_0219AE9C:
	mov r0, #5
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl ovy259_219e474
	strh r0, [r5, #4]
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r2, r0, #0
	ldrh r0, [r4]
	str r0, [sp]
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl ovy259_219ee18
	b _0219AF28
_0219AECC:
	ldr r0, [r4, #0x28]
	bl ovy259_219fd4c
	strh r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl ovy259_219e444
	strh r0, [r5, #2]
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl ovy259_219e474
	strh r0, [r5, #4]
	ldr r0, [r4, #0x28]
	bl ovy259_219fda0
	strh r0, [r5, #6]
	ldr r0, [r4, #0x18]
	cmp r0, #2
	bne _0219AEFA
	mov r0, #1
	str r0, [sp, #8]
_0219AEFA:
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r1, r0, #0
	ldr r0, [sp, #8]
	str r0, [sp]
	ldrh r0, [r4]
	str r0, [sp, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x28]
	add r0, r6, #0
	bl ovy259_219fcac
	b _0219AF28
_0219AF16:
	ldr r0, [r4, #0x10]
	bl sub_0219B858
	add r1, r0, #0
	ldrh r3, [r4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ovy259_219e908
_0219AF28:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	mov r2, #2
	bl ovy259_2199d58
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219ad7c

	thumb_func_start ovy259_219af38
ovy259_219af38: ; 0x0219AF38
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _0219AF52
	cmp r1, #1
	beq _0219AF84
	cmp r1, #2
	beq _0219AF96
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
_0219AF52:
	add r6, sp, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy259_219acc0
	ldrh r1, [r4]
	add r0, r6, #0
	bl ovy259_219d558
	str r0, [r4, #0x1c]
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r5]
	add sp, #0x44
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219AF84:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219AF9C
	ldr r0, [r5]
	add sp, #0x44
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219AF96:
	ldr r1, _0219AFA0 ; =ovy259_219b058
	bl sub_0219C1BC
_0219AF9C:
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219AFA0: .word ovy259_219b058
	thumb_func_end ovy259_219af38

	thumb_func_start ovy259_219afa4
ovy259_219afa4: ; 0x0219AFA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #4
	bhi _0219B04E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219AFBE: ; jump table
	.short _0219AFC8 - _0219AFBE - 2 ; case 0
	.short _0219B004 - _0219AFBE - 2 ; case 1
	.short _0219B020 - _0219AFBE - 2 ; case 2
	.short _0219B036 - _0219AFBE - 2 ; case 3
	.short _0219B048 - _0219AFBE - 2 ; case 4
_0219AFC8:
	add r6, sp, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ovy259_219ad7c
	add r7, sp, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	ldrh r2, [r5]
	add r0, r6, #0
	bl ovy259_219e70c
	str r0, [r5, #0x24]
	ldr r0, [r4]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219B004:
	ldr r0, [r5, #0xc]
	bl sub_02199DE4
	cmp r0, #0
	beq _0219B04E
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy259_2199dec
	ldr r0, [r4]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219B020:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219B036:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B04E
	ldr r0, [r4]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219B048:
	ldr r1, _0219B054 ; =ovy259_219b188
	bl sub_0219C1BC
_0219B04E:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B054: .word ovy259_219b188
	thumb_func_end ovy259_219afa4

	thumb_func_start ovy259_219b058
ovy259_219b058: ; 0x0219B058
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _0219B102
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B074: ; jump table
	.short _0219B07C - _0219B074 - 2 ; case 0
	.short _0219B0A8 - _0219B074 - 2 ; case 1
	.short _0219B0D2 - _0219B074 - 2 ; case 2
	.short _0219B0F0 - _0219B074 - 2 ; case 3
_0219B07C:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0219B09E
	add r6, sp, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy259_219acc0
	ldrh r1, [r4]
	add r0, r6, #0
	bl ovy259_219d558
	str r0, [r4, #0x1c]
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
_0219B09E:
	ldr r0, [r5]
	add sp, #0x44
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219B0A8:
	ldr r0, [r4, #0x1c]
	bl ovy259_219d610
	ldr r0, [r4, #0x1c]
	bl sub_0219D6B0
	cmp r0, #1
	bne _0219B0C0
	mov r0, #2
	add sp, #0x44
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219B0C0:
	ldr r0, [r4, #0x1c]
	bl sub_0219D6B0
	cmp r0, #2
	bne _0219B102
	mov r0, #3
	add sp, #0x44
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219B0D2:
	ldr r0, [r4, #0x1c]
	bl sub_0219D6B4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	bl ovy259_219d5e4
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r1, _0219B108 ; =ovy259_219b110
	add r0, r6, #0
	bl sub_0219C1BC
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
_0219B0F0:
	ldr r0, [r4, #0x1c]
	bl ovy259_219d5e4
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r1, _0219B10C ; =ovy259_219b28c
	add r0, r6, #0
	bl sub_0219C1BC
_0219B102:
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_0219B108: .word ovy259_219b110
_0219B10C: .word ovy259_219b28c
	thumb_func_end ovy259_219b058

	thumb_func_start ovy259_219b110
ovy259_219b110: ; 0x0219B110
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _0219B128
	cmp r0, #1
	beq _0219B154
	cmp r0, #2
	beq _0219B170
	pop {r4, r5, r6, pc}
_0219B128:
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #1
	add r0, r4, r0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #5
	bne _0219B13E
	ldr r0, [r4, #0x28]
	bl ovy259_21a02f8
	str r0, [r4, #0x54]
_0219B13E:
	ldrh r3, [r4]
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x54]
	add r0, #0x2c
	bl ovy259_219b2cc
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219B154:
	add r0, r4, #0
	add r0, #0x2c
	bl ovy259_219b3b0
	add r4, #0x2c
	add r0, r4, #0
	bl sub_0219B3F0
	cmp r0, #0
	beq _0219B180
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219B170:
	add r4, #0x2c
	add r0, r4, #0
	bl ovy259_219b378
	ldr r1, _0219B184 ; =ovy259_219b188
	add r0, r6, #0
	bl sub_0219C1BC
_0219B180:
	pop {r4, r5, r6, pc}
	nop
_0219B184: .word ovy259_219b188
	thumb_func_end ovy259_219b110

	thumb_func_start ovy259_219b188
ovy259_219b188: ; 0x0219B188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _0219B27C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B1A4: ; jump table
	.short _0219B1AE - _0219B1A4 - 2 ; case 0
	.short _0219B1F8 - _0219B1A4 - 2 ; case 1
	.short _0219B21A - _0219B1A4 - 2 ; case 2
	.short _0219B234 - _0219B1A4 - 2 ; case 3
	.short _0219B24A - _0219B1A4 - 2 ; case 4
_0219B1AE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0219B1F0
	add r6, sp, #0x10
	add r0, r4, #0
	add r1, r6, #0
	bl ovy259_219ad7c
	add r7, sp, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	str r0, [sp, #0xc]
	ldrh r2, [r4]
	add r0, r6, #0
	bl ovy259_219e70c
	str r0, [r4, #0x24]
	ldr r0, [r5]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B1F0:
	mov r0, #2
	add sp, #0x48
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B1F8:
	ldr r0, [r4, #0xc]
	bl sub_02199DE4
	cmp r0, #0
	beq _0219B27C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ovy259_2199dec
	ldr r0, _0219B280 ; =0x0000073D
	bl GFL_SndSEPlay
	ldr r0, [r5]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B21A:
	ldr r0, [r4, #0x24]
	bl sub_0219E77C
	ldr r0, [r4, #0x24]
	bl sub_0219E788
	cmp r0, #0
	beq _0219B27C
	ldr r0, [r5]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B234:
	ldr r0, [r4, #0x24]
	bl ovy259_219e758
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x50]
	ldr r0, [r5]
	add sp, #0x48
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B24A:
	ldr r1, [r4, #0x50]
	add r0, r1, #1
	str r0, [r4, #0x50]
	cmp r1, #0x1e
	bls _0219B27C
	ldr r0, _0219B280 ; =0x0000073D
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0219B274
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ovy259_2199dec
	ldr r1, _0219B284 ; =ovy259_219b058
	add r0, r6, #0
	bl sub_0219C1BC
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_0219B274:
	ldr r1, _0219B288 ; =ovy259_219b28c
	add r0, r6, #0
	bl sub_0219C1BC
_0219B27C:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B280: .word 0x0000073D
_0219B284: .word ovy259_219b058
_0219B288: .word ovy259_219b28c
	thumb_func_end ovy259_219b188

	thumb_func_start ovy259_219b28c
ovy259_219b28c: ; 0x0219B28C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219B2A0
	cmp r1, #1
	beq _0219B2B4
	cmp r1, #2
	beq _0219B2C4
	pop {r4, pc}
_0219B2A0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219B2B4:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B2C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219B2C4:
	bl sub_0219C1C4
_0219B2C8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219b28c

	thumb_func_start ovy259_219b2cc
ovy259_219b2cc: ; 0x0219B2CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x14
	add r4, r3, #0
	blx MI_CpuFill8
	str r6, [r5, #8]
	strh r7, [r5, #0xe]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #9
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	add r6, r0, #0
	str r6, [r5]
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #8]
	ldr r1, _0219B370 ; =0x0000044F
	bl sub_0219B85C
	mov r1, #0x14
	str r4, [sp]
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #9
	mov r3, #0
	bl sub_02024D00
	ldr r7, [r5, #8]
	ldr r6, [r5]
	add r0, r7, #0
	bl sub_0219B858
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #2
	bl ovy259_219b87c
	ldr r0, [r5, #8]
	ldr r1, [r5]
	bl ovy259_219bab4
	bl sub_02005718
	str r4, [sp]
	ldr r1, [r5]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035604
	str r0, [r5, #4]
	mov r0, #4
	bl sub_02044F90
	ldr r0, _0219B374 ; =0x0000073C
	mov r1, #2
	bl sub_020061DC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219B370: .word 0x0000044F
_0219B374: .word 0x0000073C
	thumb_func_end ovy259_219b2cc

	thumb_func_start ovy259_219b378
ovy259_219b378: ; 0x0219B378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0203580C
	ldr r0, [r5, #8]
	ldr r1, [r5]
	bl sub_0219BAE0
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r5]
	bl sub_02048210
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy259_219b378

	thumb_func_start ovy259_219b3b0
ovy259_219b3b0: ; 0x0219B3B0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	bne _0219B3E8
	ldrh r1, [r4, #0x12]
	add r0, r1, #1
	strh r0, [r4, #0x12]
	cmp r1, #0x50
	blo _0219B3E8
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	cmp r1, r0
	blo _0219B3E0
	bl sub_02006280
	mov r0, #1
	strh r0, [r4, #0x10]
	pop {r4, pc}
_0219B3E0:
	ldr r0, _0219B3EC ; =0x0000073C
	mov r1, #2
	bl sub_020061DC
_0219B3E8:
	pop {r4, pc}
	nop
_0219B3EC: .word 0x0000073C
	thumb_func_end ovy259_219b3b0

	thumb_func_start sub_0219B3F0
sub_0219B3F0: ; 0x0219B3F0
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219B3F0

	thumb_func_start ovy259_219b3f4
ovy259_219b3f4: ; 0x0219B3F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219B478 ; =0x000001BB
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219B47C ; =0x021A0994
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219B480 ; =0x04000050
	ldr r0, _0219B484 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219B488 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219B48C ; =0x021A04C4
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy259_219b51c
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy259_219b5c0
	ldr r0, _0219B490 ; =ovy259_219b508
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B478: .word 0x000001BB
_0219B47C: .word 0x021A0994
_0219B480: .word 0x04000050
_0219B484: .word 0x04001050
_0219B488: .word 0xFFFF1FFF
_0219B48C: .word 0x021A04C4
	thumb_func_end ovy259_219b3f4
_0219B490: .word ovy259_219b508

	thumb_func_start ovy259_219b494
ovy259_219b494: ; 0x0219B494
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy259_219b600
	add r0, r4, #0
	bl ovy259_219b57c
	bl sub_020232D8
	ldr r5, _0219B4DC ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219B4E0 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219B4E4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_0219B4DC: .word 0x04000050
_0219B4E0: .word 0x04001050
_0219B4E4: .word 0xFFFF1FFF
	thumb_func_end ovy259_219b494

	thumb_func_start ovy259_219b4e8
ovy259_219b4e8: ; 0x0219B4E8
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219B61C
	add r0, r4, #0
	bl sub_0219B5B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219b4e8

	thumb_func_start sub_0219B4FC
sub_0219B4FC: ; 0x0219B4FC
	ldr r3, _0219B504 ; =sub_0219B62C
	add r0, r0, #4
	bx r3
	nop
_0219B504: .word sub_0219B62C
	thumb_func_end sub_0219B4FC

	thumb_func_start ovy259_219b508
ovy259_219b508: ; 0x0219B508
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219B5B8
	add r0, r4, #4
	bl sub_0219B624
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219b508

	thumb_func_start ovy259_219b51c
ovy259_219b51c: ; 0x0219B51C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _0219B574 ; =0x021A0498
	bl sub_02044710
	ldr r7, _0219B578 ; =0x021A04F4
_0219B53E:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blo _0219B53E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B574: .word 0x021A0498
_0219B578: .word 0x021A04F4
	thumb_func_end ovy259_219b51c

	thumb_func_start ovy259_219b57c
ovy259_219b57c: ; 0x0219B57C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219B5B0 ; =0x021A04F4
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219B586:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219B586
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B5B0: .word 0x021A04F4
	thumb_func_end ovy259_219b57c

	thumb_func_start sub_0219B5B4
sub_0219B5B4: ; 0x0219B5B4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B5B4

	thumb_func_start sub_0219B5B8
sub_0219B5B8: ; 0x0219B5B8
	ldr r3, _0219B5BC ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219B5BC: .word sub_02045A5C
	thumb_func_end sub_0219B5B8

	thumb_func_start ovy259_219b5c0
ovy259_219b5c0: ; 0x0219B5C0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219B5FC ; =0x021A04A8
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x20
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B5FC: .word 0x021A04A8
	thumb_func_end ovy259_219b5c0

	thumb_func_start ovy259_219b600
ovy259_219b600: ; 0x0219B600
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219b600

	thumb_func_start sub_0219B61C
sub_0219B61C: ; 0x0219B61C
	ldr r3, _0219B620 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B620: .word sub_0204B794
	thumb_func_end sub_0219B61C

	thumb_func_start sub_0219B624
sub_0219B624: ; 0x0219B624
	ldr r3, _0219B628 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219B628: .word sub_0204B7C8
	thumb_func_end sub_0219B624

	thumb_func_start sub_0219B62C
sub_0219B62C: ; 0x0219B62C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B62C

	thumb_func_start ovy259_219b630
ovy259_219b630: ; 0x0219B630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x6c
	str r1, [sp]
	ldr r3, _0219B770 ; =0x021A09A8
	add r1, #0xe4
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r7, _0219B774 ; =0x00000189
	mov r0, #0
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	strh r5, [r4, #0x10]
	bl GFL_MsgSysLoadData
	add r2, r7, #0
	str r0, [r4, #0x30]
	str r2, [sp, #0xc]
	sub r2, #9
	mov r0, #0
	mov r1, #2
	add r3, r5, #0
	str r2, [sp, #0xc]
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x34]
	mov r0, #0
	mov r1, #2
	mov r2, #0xb2
	add r3, r5, #0
	mov r6, #0xb2
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x28]
	ldrh r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0xd
	str r0, [sp]
	mov r0, #0
	mov r3, #0
	mov r5, #0xd
	bl sub_02024D00
	ldrh r0, [r4, #0x10]
	add r6, #0x8e
	add r1, r6, #0
	str r0, [sp]
	mov r0, #4
	mov r2, #9
	mov r3, #0
	bl sub_02024D00
	mov r0, #0
	bl sub_02024C8C
	add r1, r0, #0
	lsl r0, r5, #5
	str r0, [sp]
	mov r6, #0x20
	str r6, [sp, #4]
	ldrh r0, [r4, #0x10]
	mov r2, #0
	mov r3, #0x20
	str r0, [sp, #8]
	mov r0, #5
	bl sub_0204B0F0
	str r6, [sp]
	ldrh r0, [r4, #0x10]
	ldr r3, [sp, #0xc]
	mov r1, #7
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #0
	mov r5, #7
	bl sub_0204B0B8
	str r6, [sp]
	ldrh r0, [r4, #0x10]
	add r7, #0x57
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	add r3, r7, #0
	bl sub_0204B0B8
	bl sub_020232D8
	ldrh r0, [r4, #0x10]
	add r5, #0xf9
	mov r2, #3
	add r1, r0, #0
	add r3, r5, #0
	bl GFL_TCBExMgrCreate
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x20]
	ldrh r1, [r4, #0x10]
	lsl r0, r6, #5
	bl GFL_StrBufCreate
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0x10]
	bl sub_02021998
	str r0, [r4, #0x1c]
	ldr r0, _0219B778 ; =0x021A0654
	mov r1, #1
	str r0, [sp]
	ldrh r3, [r4, #0x10]
	mov r0, #0xf
	mov r2, #1
	bl sub_0202E7B8
	str r0, [r4, #4]
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	mov r0, #4
	str r0, [sp]
	ldr r0, _0219B77C ; =0x04000050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B770: .word 0x021A09A8
_0219B774: .word 0x00000189
_0219B778: .word 0x021A0654
_0219B77C: .word 0x04000050
	thumb_func_end ovy259_219b630

	thumb_func_start ovy259_219b780
ovy259_219b780: ; 0x0219B780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219B7E8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0219B794
	bl sub_020223CC
_0219B794:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0219B79E
	bl sub_02048210
_0219B79E:
	ldr r0, [r4, #4]
	bl sub_0202E818
	ldr r0, [r4, #0x1c]
	bl sub_02021A18
	ldr r0, [r4, #0x18]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x14]
	bl GFL_StrBufFree
	ldr r0, [r4]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x28]
	bl sub_02022DA8
	ldr r0, [r4, #0x24]
	bl sub_02022DA8
	ldr r0, [r4, #0x38]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x34]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x30]
	bl GFL_MsgDataFree
	bl sub_020232D8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	nop
_0219B7E8: .word 0x04000050
	thumb_func_end ovy259_219b780

	thumb_func_start ovy259_219b7ec
ovy259_219b7ec: ; 0x0219B7EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl sub_0203A7F4
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _0219B80C
	ldr r0, [r6, #0x20]
	cmp r0, #0
	beq _0219B80C
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r6, #0
	blx r1
_0219B80C:
	ldr r0, [r6, #0x1c]
	bl sub_02021A3C
	mov r4, #0
_0219B814:
	lsl r0, r4, #3
	add r5, r6, r0
	add r0, r5, #0
	add r0, #0x40
	ldrb r0, [r0]
	ldr r7, [r6, #0x1c]
	cmp r0, #0
	beq _0219B842
	ldr r0, [r5, #0x3c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B842
	ldr r0, [r5, #0x3c]
	bl BmpWin_FlushChar
	add r5, #0x40
	mov r0, #0
	strb r0, [r5]
_0219B842:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219B814
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219b7ec

	thumb_func_start sub_0219B84C
sub_0219B84C: ; 0x0219B84C
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0219B84C

	thumb_func_start sub_0219B850
sub_0219B850: ; 0x0219B850
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219B850

	thumb_func_start sub_0219B854
sub_0219B854: ; 0x0219B854
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_0219B854

	thumb_func_start sub_0219B858
sub_0219B858: ; 0x0219B858
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0219B858

	thumb_func_start sub_0219B85C
sub_0219B85C: ; 0x0219B85C
	mov r2, #0x4f
	lsl r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end sub_0219B85C

	thumb_func_start ovy259_219b864
ovy259_219b864: ; 0x0219B864
	push {r3, r4}
	ldr r4, _0219B878 ; =0x0000013E
	strh r1, [r0, r4]
	add r1, r4, #2
	strh r2, [r0, r1]
	add r1, r4, #6
	str r3, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0219B878: .word 0x0000013E
	thumb_func_end ovy259_219b864

	thumb_func_start ovy259_219b87c
ovy259_219b87c: ; 0x0219B87C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy259_219b8a0
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy259_219b87c

	thumb_func_start ovy259_219b8a0
ovy259_219b8a0: ; 0x0219B8A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r3, r5, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	mov r1, #0
	add r3, #0x3c
_0219B8B2:
	lsl r0, r1, #3
	add r2, r5, r0
	add r2, #0x40
	ldrb r2, [r2]
	cmp r2, #0
	bne _0219B8C0
	add r4, r3, r0
_0219B8C0:
	add r1, r1, #1
	cmp r1, #0x20
	blt _0219B8B2
	str r6, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl BmpWin_GetBitmap
	mov r7, #0x4f
	lsl r7, r7, #2
	ldrh r2, [r5, r7]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	add r0, sp, #0xc
	str r0, [sp]
	add r3, sp, #0xc
	ldr r2, [r5, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	add r3, #2
	bl ovy259_219bcf4
	ldr r0, [r4]
	ldr r6, [r5, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	add r3, sp, #0xc
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r2, #2
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	str r0, [sp, #8]
	add r0, r6, #0
	mov r6, #0
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy259_219b864
	mov r1, #0xf1
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_0219B85C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219b8a0

	thumb_func_start ovy259_219b944
ovy259_219b944: ; 0x0219B944
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r5, #0
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0
	add r6, #0x3c
_0219B956:
	lsl r0, r2, #3
	add r3, r5, r0
	add r3, #0x40
	ldrb r3, [r3]
	cmp r3, #0
	bne _0219B964
	add r1, r6, r0
_0219B964:
	add r2, r2, #1
	cmp r2, #0x20
	blt _0219B956
	str r4, [r1]
	mov r0, #1
	strb r0, [r1, #4]
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #0x4f
	lsl r1, r1, #2
	ldrh r2, [r5, r1]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x38]
	mov r1, #3
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0
	add r2, r7, #0
	bl sub_02024464
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #8
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219BA32
	ldr r0, [r5, #0x38]
	mov r1, #2
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r3, #0x18
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
_0219BA32:
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219BAB0
	add r0, r7, #0
	mov r1, #0x6e
	add r2, r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219BA58
	cmp r0, #1
	beq _0219BA86
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BA58:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x14]
	mov r1, #7
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0x60
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #8
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	bl sub_02021C7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BA86:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x14]
	mov r1, #8
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0x60
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #8
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	bl sub_02021C7C
_0219BAB0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219b944

	thumb_func_start ovy259_219bab4
ovy259_219bab4: ; 0x0219BAB4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_020484D4
	cmp r0, #4
	bhs _0219BAD0
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0xd
	bl sub_02024E80
	pop {r4, pc}
_0219BAD0:
	mov r2, #5
	add r0, r4, #0
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #9
	bl sub_02024E80
	pop {r4, pc}
	thumb_func_end ovy259_219bab4

	thumb_func_start sub_0219BAE0
sub_0219BAE0: ; 0x0219BAE0
	ldr r3, _0219BAE8 ; =sub_02024EEC
	add r0, r1, #0
	mov r1, #2
	bx r3
	.align 2, 0
_0219BAE8: .word sub_02024EEC
	thumb_func_end sub_0219BAE0

	thumb_func_start ovy259_219baec
ovy259_219baec: ; 0x0219BAEC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl GFL_CopyVarForText
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219baec

	thumb_func_start sub_0219BB04
sub_0219BB04: ; 0x0219BB04
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x18]
	ldr r3, _0219BB10 ; =sub_0202476C
	lsr r2, r2, #0x18
	bx r3
	nop
_0219BB10: .word sub_0202476C
	thumb_func_end sub_0219BB04

	thumb_func_start sub_0219BB14
sub_0219BB14: ; 0x0219BB14
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0, #0x18]
	ldr r3, _0219BB20 ; =sub_02024464
	bx r3
	.align 2, 0
_0219BB20: .word sub_02024464
	thumb_func_end sub_0219BB14

	thumb_func_start ovy259_219bb24
ovy259_219bb24: ; 0x0219BB24
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy259_219bb24

	thumb_func_start ovy259_219bb54
ovy259_219bb54: ; 0x0219BB54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_020171F4
	bl sub_02017544
	bl sub_02018C80
	add r2, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02024700
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219bb54

	thumb_func_start ovy259_219bb74
ovy259_219bb74: ; 0x0219BB74
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r4, r2, #0
	add r1, r3, #0
	ldr r0, [r0, #0x18]
	add r2, r5, #0
	add r3, r4, #0
	bl StringSetNumber
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219bb74

	thumb_func_start ovy259_219bb94
ovy259_219bb94: ; 0x0219BB94
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0219BBFC
	cmp r1, #0
	bne _0219BBB6
	mov r0, #4
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	mov r2, #1
	b _0219BBCA
_0219BBB6:
	cmp r1, #1
	bne _0219BBD2
	mov r0, #4
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	mov r2, #0x13
_0219BBCA:
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x20]
_0219BBD2:
	ldr r0, [r4, #0x20]
	mov r1, #1
	mov r2, #1
	mov r3, #0xd
	bl sub_02024E80
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x20]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x20]
	bl sub_0204826C
	mov r0, #0
	bl sub_02045B7C
_0219BBFC:
	add r4, #8
	add r0, r4, #0
	mov r1, #6
	bl sub_0202E678
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219bb94

	thumb_func_start ovy259_219bc0c
ovy259_219bc0c: ; 0x0219BC0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0219BC26
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #0x2c]
_0219BC26:
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0219BC5C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
_0219BC5C:
	bl sub_02017BCC
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0x10]
	mov r6, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	ldr r3, [r5, #0x14]
	bl sub_02022268
	str r0, [r5, #0x2c]
	cmp r4, #0
	beq _0219BC8E
	cmp r4, #1
	beq _0219BC9A
_0219BC8E:
	mov r0, #0x52
	ldr r1, _0219BCAC ; =ovy259_219bd80
	lsl r0, r0, #2
	add sp, #0x18
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219BC9A:
	mov r0, #0x52
	ldr r1, _0219BCB0 ; =ovy259_219bda8
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BCAC: .word ovy259_219bd80
_0219BCB0: .word ovy259_219bda8
	thumb_func_end ovy259_219bc0c

	thumb_func_start sub_0219BCB4
sub_0219BCB4: ; 0x0219BCB4
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _0219BCBE
	mov r0, #1
	bx lr
_0219BCBE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BCB4

	thumb_func_start ovy259_219bcc4
ovy259_219bcc4: ; 0x0219BCC4
	push {r3, lr}
	ldr r0, [r0, #0x2c]
	bl sub_020223B4
	cmp r0, #0
	beq _0219BCD4
	mov r0, #1
	pop {r3, pc}
_0219BCD4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy259_219bcc4

	thumb_func_start ovy259_219bcd8
ovy259_219bcd8: ; 0x0219BCD8
	push {r3, lr}
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _0219BCF0
	bl sub_020223B4
	cmp r0, #2
	bne _0219BCEC
	mov r0, #1
	pop {r3, pc}
_0219BCEC:
	mov r0, #0
	pop {r3, pc}
_0219BCF0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy259_219bcd8

	thumb_func_start ovy259_219bcf4
ovy259_219bcf4: ; 0x0219BCF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r7, r3, #0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r6, [sp, #0x20]
	cmp r0, #0
	beq _0219BD14
	cmp r0, #1
	beq _0219BD2C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BD14:
	mov r0, #0x51
	lsl r0, r0, #2
	sub r0, r0, #6
	ldrsh r0, [r5, r0]
	add sp, #0xc
	strh r0, [r7]
	mov r0, #0x51
	lsl r0, r0, #2
	sub r0, r0, #4
	ldrsh r0, [r5, r0]
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219BD2C:
	add r0, r1, #0
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	lsr r4, r0, #1
	ldr r0, [sp]
	bl BmpWin_GetBitmap
	bl sub_02046EFC
	lsr r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x24]
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r4, r4, r0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x24]
	bl sub_020229B0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	sub r0, r0, r1
	mov r1, #0x51
	lsl r1, r1, #2
	sub r1, r1, #6
	ldrsh r1, [r5, r1]
	add r1, r4, r1
	strh r1, [r7]
	mov r1, #0x51
	lsl r1, r1, #2
	sub r1, r1, #4
	ldrsh r1, [r5, r1]
	add r0, r0, r1
	strh r0, [r6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219bcf4

	thumb_func_start ovy259_219bd80
ovy259_219bd80: ; 0x0219BD80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x20]
	bl sub_0202E8D8
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #8
	bl sub_0202E68C
	cmp r0, #1
	bne _0219BDA6
	ldr r0, [r4, #0x2c]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x2c]
_0219BDA6:
	pop {r4, pc}
	thumb_func_end ovy259_219bd80

	thumb_func_start ovy259_219bda8
ovy259_219bda8: ; 0x0219BDA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x20]
	bl sub_0202E8D8
	add r0, r4, #0
	bl ovy259_219bcd8
	cmp r0, #0
	beq _0219BDDA
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219BDF2
	mov r0, #6
	bl sub_0202E6FC
	cmp r0, #0
	beq _0219BDF2
	ldr r0, _0219BDF4 ; =0x00000547
	bl GFL_SndSEPlay
_0219BDDA:
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #8
	bl sub_0202E68C
	cmp r0, #1
	bne _0219BDF2
	ldr r0, [r4, #0x2c]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x2c]
_0219BDF2:
	pop {r4, pc}
	.align 2, 0
_0219BDF4: .word 0x00000547
	thumb_func_end ovy259_219bda8

	thumb_func_start ovy259_219bdf8
ovy259_219bdf8: ; 0x0219BDF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202E9C8
	mov r0, #0x53
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy259_219bdf8

	thumb_func_start ovy259_219be0c
ovy259_219be0c: ; 0x0219BE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_020173AC
	add r4, r0, #0
	mov r1, #0
	mov r7, #0
	bl sub_02015AB8
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_02015AB8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_02015AB8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02044238
	ldr r0, [sp]
	cmp r0, r6
	blo _0219BE4A
	cmp r0, r5
	bhs _0219BE4A
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0219BE4A:
	cmp r0, r5
	blo _0219BE58
	cmp r0, r4
	bhs _0219BE58
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219BE58:
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219be0c

	thumb_func_start ovy259_219be60
ovy259_219be60: ; 0x0219BE60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0x7e
	str r2, [sp, #0xc]
	str r0, [sp]
	ldr r3, _0219BF58 ; =0x021A09BC
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0201736C
	str r0, [sp, #0x10]
	mov r0, #0xaa
	add r1, r5, #0
	bl sub_0204AA30
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	beq _0219BE9C
	mov r6, #0
_0219BE9C:
	ldr r0, [sp, #0xc]
	eor r0, r6
	beq _0219BEAE
	mov r0, #0x60
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	b _0219BEB8
_0219BEAE:
	mov r0, #0x60
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #6
_0219BEB8:
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r0, #7
	bl sub_02044F90
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x16
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	lsl r3, r3, #4
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #1
	bl sub_02044F90
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r0, _0219BF5C ; =ovy259_219bf74
	add r1, r7, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r7]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219BF58: .word 0x021A09BC
_0219BF5C: .word ovy259_219bf74
	thumb_func_end ovy259_219be60

	thumb_func_start ovy259_219bf60
ovy259_219bf60: ; 0x0219BF60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219bf60

	thumb_func_start ovy259_219bf74
ovy259_219bf74: ; 0x0219BF74
	push {r4, lr}
	mov r4, #1
	lsl r4, r4, #8
	add r0, r4, #0
	bl sub_02005784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_02044CFC
	add r0, r4, #0
	bl sub_02005784
	add r2, r0, #0
	mov r0, #1
	mov r1, #3
	bl sub_02044CFC
	pop {r4, pc}
	thumb_func_end ovy259_219bf74

	thumb_func_start ovy259_219bf9c
ovy259_219bf9c: ; 0x0219BF9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xe2
	str r0, [sp]
	ldr r3, _0219C080 ; =0x021A09BC
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r5, #0
	add r2, r6, #0
	add r4, r0, #0
	bl ovy259_219d364
	bl sub_0202D7E0
	add r1, r6, #0
	bl sub_0204AA30
	add r7, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r0, r7, #0
	mov r2, #4
	mov r3, #0xc0
	str r6, [sp, #4]
	bl sub_0204B0D4
	bl sub_0202D824
	mov r5, #0
	str r5, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	add r0, r7, #0
	mov r2, #5
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r4, #0x18]
	bl sub_0202D828
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	add r3, sp, #0x1c
	str r6, [sp]
	bl sub_0204B32C
	mov r6, #3
	str r0, [sp, #0x18]
	lsl r6, r6, #8
_0219C010:
	ldr r2, [sp, #0x1c]
	lsl r1, r5, #1
	add r2, #0xc
	ldr r3, [r4, #0x18]
	ldrh r0, [r2, r1]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	add r0, r0, r3
	add r5, r5, #1
	strh r0, [r2, r1]
	cmp r5, r6
	blt _0219C010
	mov r5, #3
	str r5, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	add r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #5
	mov r2, #0x15
	mov r3, #0x20
	bl sub_020454D4
	ldr r0, [sp, #0x18]
	bl GFL_HeapFree
	str r5, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl sub_02044F90
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r4, #0
	mov r1, #1
	bl ovy259_219c144
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C080: .word 0x021A09BC
	thumb_func_end ovy259_219bf9c

	thumb_func_start ovy259_219c084
ovy259_219c084: ; 0x0219C084
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x18]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #0
	bl ovy259_219d414
	mov r0, #5
	bl sub_02045708
	mov r0, #5
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy259_219c084

	thumb_func_start ovy259_219c0b4
ovy259_219c0b4: ; 0x0219C0B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0219C100
	ldr r0, _0219C104 ; =0x021A06D4
	bl sub_0203DA0C
	mov r4, #0
	cmp r0, #0
	bne _0219C0D4
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
	b _0219C0E6
_0219C0D4:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219C0E6
	add r0, r4, #0
	bl sub_0203D564
	mov r4, #1
_0219C0E6:
	cmp r4, #0
	beq _0219C100
	add r0, r5, #0
	bl sub_0219D43C
	mov r1, #9
	bl sub_0204C488
	ldr r0, _0219C108 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r5, #0x14]
_0219C100:
	pop {r3, r4, r5, pc}
	nop
_0219C104: .word 0x021A06D4
_0219C108: .word 0x00000551
	thumb_func_end ovy259_219c0b4

	thumb_func_start ovy259_219c10c
ovy259_219c10c: ; 0x0219C10C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0219D43C
	add r1, r4, #0
	bl sub_0204C124
	lsl r1, r4, #0x18
	mov r0, #5
	lsr r1, r1, #0x18
	bl sub_02044C98
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219c10c

	thumb_func_start sub_0219C128
sub_0219C128: ; 0x0219C128
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219C128

	thumb_func_start ovy259_219c12c
ovy259_219c12c: ; 0x0219C12C
	push {r3, lr}
	bl sub_0219D43C
	bl sub_0204C560
	cmp r0, #0
	bne _0219C13E
	mov r0, #1
	pop {r3, pc}
_0219C13E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219c12c

	thumb_func_start ovy259_219c144
ovy259_219c144: ; 0x0219C144
	push {r3, lr}
	str r1, [r0, #0x10]
	cmp r1, #0
	beq _0219C158
	bl sub_0219D43C
	mov r1, #1
	bl sub_0204C488
	pop {r3, pc}
_0219C158:
	bl sub_0219D43C
	mov r1, #0xf
	bl sub_0204C488
	pop {r3, pc}
	thumb_func_end ovy259_219c144

	thumb_func_start ovy259_219c164
ovy259_219c164: ; 0x0219C164
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _0219C190 ; =0x021A09BC
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	add r6, r0, #0
	add r1, r4, #0
	str r5, [r6, #8]
	bl sub_0219C1BC
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219C190: .word 0x021A09BC
	thumb_func_end ovy259_219c164

	thumb_func_start sub_0219C194
sub_0219C194: ; 0x0219C194
	ldr r3, _0219C198 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219C198: .word GFL_HeapFree
	thumb_func_end sub_0219C194

	thumb_func_start ovy259_219c19c
ovy259_219c19c: ; 0x0219C19C
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0219C1AA
	ldr r2, [r0, #8]
	add r1, r0, #4
	blx r3
_0219C1AA:
	pop {r3, pc}
	thumb_func_end ovy259_219c19c

	thumb_func_start sub_0219C1AC
sub_0219C1AC: ; 0x0219C1AC
	ldr r0, [r0]
	cmp r0, #0
	bne _0219C1B6
	mov r0, #1
	bx lr
_0219C1B6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C1AC

	thumb_func_start sub_0219C1BC
sub_0219C1BC: ; 0x0219C1BC
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219C1BC

	thumb_func_start sub_0219C1C4
sub_0219C1C4: ; 0x0219C1C4
	ldr r3, _0219C1CC ; =sub_0219C1BC
	mov r1, #0
	bx r3
	nop
_0219C1CC: .word sub_0219C1BC
	thumb_func_end sub_0219C1C4

	thumb_func_start ovy259_219c1d0
ovy259_219c1d0: ; 0x0219C1D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldr r0, _0219C36C ; =0x00000221
	ldr r3, _0219C370 ; =0x021A09BC
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0xb8
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r6, r5, #0
	add r3, r4, #0
	mov r2, #4
_0219C1F0:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219C1F0
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5, #0x20]
	mov r5, #0x84
	str r0, [r4, #0x34]
	ldr r1, [sp, #0xc]
	mov r0, #0x84
	bl sub_0204AA30
	add r7, r0, #0
	ldr r3, [sp, #0xc]
	mov r0, #4
	mov r1, #0x20
	mov r6, #0
	mov r2, #0
	bl sub_020450CC
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0x7a
	str r0, [sp, #8]
	add r0, r7, #0
	mov r2, #4
	mov r3, #1
	bl sub_0204ADA8
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0x79
	add r2, sp, #0x1c
	bl sub_0204B37C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	add r1, #0x40
	str r0, [sp, #0x10]
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r0, #0x20
	add r1, #0x60
	mov r2, #0x20
	str r0, [sp, #0x10]
	blx MI_CpuCopy8
	add r1, r4, #0
	add r5, #0xfc
	mov r0, #4
	add r1, #0x40
	mov r2, #0x20
	add r3, r5, #0
	bl sub_02045320
	add r1, r4, #0
	mov r3, #0x1a
	mov r0, #4
	add r1, #0x60
	mov r2, #0x20
	lsl r3, r3, #4
	bl sub_02045320
	ldr r0, [sp, #0x14]
	bl GFL_HeapFree
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r4, #0
	ldr r1, [r4, #4]
	ldr r2, [sp, #0xc]
	add r0, #0xa4
	bl ovy259_219d364
	mov r0, #0xb8
	add r1, sp, #0x18
	strh r0, [r1]
	ldr r0, [r4, #0x1c]
	sub r2, r0, #1
	mov r0, #0x28
	mul r0, r2
	add r0, #0x14
	strh r0, [r1, #2]
	add r0, r4, #0
	add r0, #0xa4
	bl sub_0219D43C
	add r1, sp, #0x18
	mov r2, #1
	bl sub_0204C140
	add r0, r4, #0
	add r0, #0xa4
	bl sub_0219D43C
	mov r1, #1
	bl sub_0204C488
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bls _0219C33E
_0219C2CA:
	lsl r2, r6, #2
	add r5, r4, r2
	mov r0, #2
	add r2, r6, r2
	str r0, [sp]
	mov r0, #0xc
	add r2, r2, #3
	str r0, [sp, #4]
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #5
	lsr r2, r2, #0x18
	mov r3, #0x15
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x24]
	ldr r0, [r4]
	ldr r1, _0219C374 ; =0x00003DC3
	bl sub_0219B85C
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy259_219b864
	ldr r3, [r5, #0xc]
	ldr r0, [r4]
	lsl r3, r3, #0x10
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #8]
	lsr r3, r3, #0x10
	bl ovy259_219b87c
	ldr r7, [r5, #0x24]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x24]
	mov r1, #1
	mov r2, #1
	mov r3, #0xc
	bl sub_02024E80
	ldr r0, [r4, #0x1c]
	add r6, r6, #1
	cmp r6, r0
	blo _0219C2CA
_0219C33E:
	add r5, sp, #0x20
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	ldr r0, _0219C378 ; =ovy259_219c560
	str r4, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, _0219C37C ; =ovy259_219c594
	str r0, [sp, #0x28]
	ldr r0, _0219C380 ; =ovy259_219c6ac
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ovy259_219d440
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C36C: .word 0x00000221
_0219C370: .word 0x021A09BC
_0219C374: .word 0x00003DC3
_0219C378: .word ovy259_219c560
_0219C37C: .word ovy259_219c594
_0219C380: .word ovy259_219c6ac
	thumb_func_end ovy259_219c1d0

	thumb_func_start ovy259_219c384
ovy259_219c384: ; 0x0219C384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0219D47C
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	bls _0219C3AA
_0219C398:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl sub_02048210
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blo _0219C398
_0219C3AA:
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0xa4
	bl ovy259_219d414
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy259_219c384

	thumb_func_start ovy259_219c3c8
ovy259_219c3c8: ; 0x0219C3C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219C3E2
	cmp r0, #1
	beq _0219C4C4
	cmp r0, #2
	bne _0219C3DE
	b _0219C550
_0219C3DE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219C3E2:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy259_219d484
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0219D500
	cmp r0, #0
	beq _0219C47C
	add r0, r5, #0
	mov r6, #0
	add r0, #0xa0
	strh r6, [r0]
	add r0, r5, #0
	add r0, #0xa2
	strh r6, [r0]
	mov r0, #1
	add r1, r5, #0
	mov r3, #0x1a
	str r0, [r5, #0x38]
	mov r0, #4
	add r1, #0x60
	mov r2, #0x20
	lsl r3, r3, #4
	bl sub_02045320
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bhi _0219C424
	b _0219C554
_0219C424:
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r4, [r0, #0x24]
	add r0, r4, #0
	bl sub_020484E8
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_020484EC
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_020484D8
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	bl sub_020484DC
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, #4
	add r3, r7, #0
	bl sub_0204566C
	ldr r0, [r5, #0x1c]
	add r6, r6, #1
	cmp r6, r0
	blo _0219C424
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219C47C:
	add r0, r5, #0
	add r0, #0xa2
	ldrh r3, [r0]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, r1
	lsl r0, r1, #6
	cmp r2, r0
	blt _0219C496
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r1, r3, r0
	b _0219C49E
_0219C496:
	add r0, r5, #0
	add r0, #0xa2
	ldrh r0, [r0]
	add r1, r0, r1
_0219C49E:
	add r0, r5, #0
	add r0, #0xa2
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x40
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x60
	str r0, [sp, #4]
	add r5, #0xa2
	ldrh r2, [r5]
	mov r0, #0x1f
	add r1, #0x80
	mov r3, #0xd
	bl ovy259_219d29c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219C4C4:
	ldr r0, [r5, #0x34]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r4, [r0, #0x24]
	add r0, r4, #0
	bl sub_020484E8
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020484EC
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	bl sub_020484D8
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	bl sub_020484DC
	add r1, r5, #0
	add r1, #0xa0
	ldrh r1, [r1]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r1, r1, #2
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	lsr r0, r0, #0x18
	add r1, r3, r2
	beq _0219C518
	mov r1, #0xd
	b _0219C51A
_0219C518:
	mov r1, #0xc
_0219C51A:
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #4
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0204566C
	mov r0, #4
	bl sub_02044F90
	add r0, r5, #0
	add r0, #0xa0
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strh r1, [r0]
	cmp r2, #0x10
	bls _0219C554
	mov r0, #2
	add sp, #0x14
	str r0, [r5, #0x38]
	pop {r4, r5, r6, r7, pc}
_0219C550:
	mov r0, #1
	str r0, [r5, #0x3c]
_0219C554:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219c3c8

	thumb_func_start sub_0219C558
sub_0219C558: ; 0x0219C558
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0219C558

	thumb_func_start sub_0219C55C
sub_0219C55C: ; 0x0219C55C
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0219C55C

	thumb_func_start ovy259_219c560
ovy259_219c560: ; 0x0219C560
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219C58C ; =0x021A06DC
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219C586
	ldr r0, [r5, #0x1c]
	cmp r4, r0
	bhs _0219C586
	ldr r0, _0219C590 ; =0x0000054C
	bl GFL_SndSEPlay
	str r4, [r5, #0x34]
	mov r0, #2
	pop {r3, r4, r5, pc}
_0219C586:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219C58C: .word 0x021A06DC
_0219C590: .word 0x0000054C
	thumb_func_end ovy259_219c560

	thumb_func_start ovy259_219c594
ovy259_219c594: ; 0x0219C594
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219C5BC
	ldr r0, [r5, #0x34]
	sub r0, r0, #1
	str r0, [r5, #0x34]
	bpl _0219C5BA
	ldr r0, [r5, #0x1c]
	sub r0, r0, #1
	str r0, [r5, #0x34]
_0219C5BA:
	b _0219C5D4
_0219C5BC:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _0219C5DE
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r5, #0x34]
	blx sub_0208D868
	str r1, [r5, #0x34]
_0219C5D4:
	ldr r0, _0219C6A0 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [sp, #0x18]
_0219C5DE:
	bl GCTX_HIDGetPressedKeys
	mov r4, #1
	tst r0, r4
	beq _0219C5F2
	ldr r0, _0219C6A4 ; =0x0000054C
	bl GFL_SndSEPlay
	str r4, [sp, #0x14]
	b _0219C60A
_0219C5F2:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219C60A
	ldr r0, _0219C6A8 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x1c]
	str r4, [sp, #0x14]
	sub r0, r0, #1
	str r0, [r5, #0x34]
_0219C60A:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0219C682
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	bls _0219C676
_0219C618:
	ldr r0, [r5, #0x34]
	mov r7, #0xd
	cmp r4, r0
	beq _0219C622
	mov r7, #0xc
_0219C622:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl sub_020484E8
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_020484EC
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_020484D8
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_020484DC
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, #4
	bl sub_0204566C
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blo _0219C618
_0219C676:
	mov r0, #0
	add r5, #0xa2
	strh r0, [r5]
	mov r0, #4
	bl sub_02045B7C
_0219C682:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0219C68E
	add sp, #0x1c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0219C68E:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0219C69A
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219C69A:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C6A0: .word 0x00000548
_0219C6A4: .word 0x0000054C
_0219C6A8: .word 0x00000551
	thumb_func_end ovy259_219c594

	thumb_func_start ovy259_219c6ac
ovy259_219c6ac: ; 0x0219C6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	cmp r1, #1
	bne _0219C71C
	ldr r0, [r6, #0x1c]
	mov r4, #0
	cmp r0, #0
	bls _0219C712
_0219C6BE:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r5, [r0, #0x24]
	add r0, r5, #0
	bl sub_020484E8
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_020484EC
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020484D8
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r5, #0
	bl sub_020484DC
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	mov r0, #4
	add r3, r7, #0
	bl sub_0204566C
	ldr r0, [r6, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blo _0219C6BE
_0219C712:
	mov r0, #4
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219C71C:
	ldr r0, [r6, #0x34]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r4, [r0, #0x24]
	add r0, r4, #0
	bl sub_020484E8
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	bl sub_020484EC
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	bl sub_020484D8
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_020484DC
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0204566C
	mov r0, #4
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219c6ac

	thumb_func_start ovy259_219c770
ovy259_219c770: ; 0x0219C770
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _0219CABC ; =0x00000434
	add r7, r1, #0
	mov r1, #0xfc
	str r0, [sp]
	str r1, [sp, #0x18]
	ldr r3, _0219CAC0 ; =0x021A09BC
	add r0, r7, #0
	mov r1, #0xfc
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [r2]
	add r0, r4, #0
	mov r5, #0
	add r0, #0x9c
	str r5, [r0]
	add r1, #0xa4
	mov r0, #1
	str r0, [r1]
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x84
	str r0, [sp, #0x1c]
	mov r0, #0x84
	add r1, r7, #0
	bl sub_0204AA30
	mov r1, #0x7b
	add r2, sp, #0x3c
	add r3, r7, #0
	add r6, r0, #0
	bl sub_0204B37C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x3c]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	add r1, #0x18
	str r0, [sp, #0x14]
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	add r0, #0x20
	add r1, #0x38
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	add r0, #0x40
	add r1, #0x58
	mov r2, #0x20
	str r0, [sp, #0x14]
	blx MI_CpuCopy8
	ldr r3, [sp, #0x1c]
	add r1, r4, #0
	add r3, #0xfc
	mov r0, #5
	add r1, #0x18
	mov r2, #0x20
	str r3, [sp, #0x1c]
	bl sub_02045320
	add r1, r4, #0
	mov r3, #0xfc
	mov r0, #5
	add r1, #0x38
	mov r2, #0x20
	add r3, #0xa4
	bl sub_02045320
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	add r3, #0xc4
	mov r0, #5
	add r1, #0x58
	mov r2, #0x20
	str r3, [sp, #0x18]
	bl sub_02045320
	ldr r0, [sp, #0x20]
	bl GFL_HeapFree
	str r5, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #0x7c
	mov r2, #5
	add r3, r5, #0
	bl sub_0204AE3C
	str r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x7d
	mov r2, #5
	add r3, r5, #0
	str r7, [sp, #0xc]
	bl sub_0204AFB0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy259_219ce38
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x7e
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #0x7e
	mov r2, #4
	add r3, #0xe2
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #0x7f
	mov r2, #6
	add r3, r5, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0x80
	mov r2, #6
	add r3, r5, #0
	str r7, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #6
	add r1, r5, #0
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #6
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_ArcToolFree
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ovy259_219bf9c
	add r1, r5, #0
	str r0, [r4, #0x10]
	bl ovy259_219c10c
	add r6, sp, #0x40
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x10
	blx MI_CpuFill8
	ldr r0, _0219CAC4 ; =ovy259_219cfd4
	add r1, r7, #0
	str r0, [sp, #0x44]
	ldr r0, _0219CAC8 ; =ovy259_219d058
	str r4, [sp, #0x40]
	str r0, [sp, #0x48]
	ldr r0, _0219CACC ; =ovy259_219d1a0
	str r0, [sp, #0x4c]
	add r0, r6, #0
	bl ovy259_219d440
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	mov r0, #7
	add r1, r7, #0
	mov r6, #7
	bl sub_0204AA30
	str r0, [sp, #0x10]
	bl sub_02021114
	add r1, r0, #0
	add r6, #0xf9
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r3, r6, #0
	str r7, [sp]
	bl sub_0204BC48
	add r1, r4, #0
	add r1, #0xe2
	strh r0, [r1]
	bl sub_02021154
	add r6, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r4, #0
	add r1, #0xe0
	strh r0, [r1]
	ldr r0, [r4, #8]
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219CA02
_0219C950:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl sub_0201FF08
	add r6, r0, #0
	bl sub_0201D624
	bl sub_02020F40
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl sub_0201D624
	bl sub_020210C0
	str r0, [sp, #0x28]
	add r0, sp, #0x34
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #1
	add r0, sp, #0x34
	strh r1, [r0, #4]
	ldr r0, _0219CAD0 ; =0x021A06F0
	lsl r6, r5, #2
	add r0, r0, r6
	ldrb r1, [r0, #2]
	add r0, sp, #0x34
	mov r2, #0
	add r1, #0x18
	strh r1, [r0]
	ldr r0, _0219CAD0 ; =0x021A06F0
	mov r3, #1
	ldrb r1, [r0, r6]
	add r0, sp, #0x34
	add r1, #0x10
	strh r1, [r0, #2]
	lsl r0, r5, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	str r7, [sp]
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x2c]
	add r2, r4, #0
	add r1, r4, r1
	add r1, #0xe4
	strh r0, [r1]
	add r0, sp, #0x34
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r1, r4, r1
	add r3, r4, #0
	str r7, [sp, #8]
	add r1, #0xe4
	add r2, #0xe2
	add r3, #0xe0
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldrh r3, [r3]
	ldr r0, [r4, #4]
	bl sub_0204C040
	add r1, r4, r6
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, r6
	add r0, #0xc8
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	mov r2, #1
	bl sub_0204C378
	add r0, r4, r6
	add r0, #0xc8
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #8]
	add r5, r5, #1
	bl sub_0201FDF8
	cmp r5, r0
	blt _0219C950
_0219CA02:
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	ldr r0, [r4, #8]
	mov r6, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219CA98
_0219CA14:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_0201FF08
	str r0, [sp, #0x30]
	ldr r0, _0219CAD0 ; =0x021A06F0
	lsl r5, r6, #2
	add r3, r0, r5
	ldrb r0, [r0, r5]
	lsr r2, r0, #3
	ldrb r0, [r3, #2]
	lsr r7, r0, #3
	ldrb r0, [r3, #1]
	ldrb r3, [r3, #3]
	add r1, r7, #1
	lsr r0, r0, #3
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r3, r3, #3
	str r0, [sp]
	mov r0, #0xf
	add r2, r2, #1
	sub r3, r3, r7
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r0, #4
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BmpWin_CreateDynamic
	add r1, r4, r5
	add r1, #0xb0
	str r0, [r1]
	add r0, r4, r5
	add r0, #0xb0
	ldr r7, [r0]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r1, r4, r5
	add r1, #0xb0
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [sp, #0x30]
	bl ovy259_219b944
	ldr r0, [r4, #8]
	add r6, r6, #1
	bl sub_0201FDF8
	cmp r6, r0
	blt _0219CA14
_0219CA98:
	mov r0, #4
	bl sub_02045B7C
	ldr r0, _0219CAD4 ; =ovy259_219d1c8
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r4, #0
	add r1, #0xf4
	str r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf8
	str r1, [r0]
	add r0, r4, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CABC: .word 0x00000434
_0219CAC0: .word 0x021A09BC
_0219CAC4: .word ovy259_219cfd4
_0219CAC8: .word ovy259_219d058
_0219CACC: .word ovy259_219d1a0
_0219CAD0: .word 0x021A06F0
_0219CAD4: .word ovy259_219d1c8
	thumb_func_end ovy259_219c770

	thumb_func_start ovy259_219cad8
ovy259_219cad8: ; 0x0219CAD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl GFL_TCBRemove
	ldr r2, _0219CB90 ; =0x04001000
	ldr r0, _0219CB94 ; =0xFFFF1FFF
	ldr r1, [r2]
	mov r5, #0
	and r0, r1
	str r0, [r2]
	add r2, #0x50
	strh r5, [r2]
_0219CAF4:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219CB04
	bl sub_02048210
_0219CB04:
	add r5, r5, #1
	cmp r5, #6
	blt _0219CAF4
	mov r5, #0
_0219CB0C:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #0
	beq _0219CB28
	bl sub_0204C108
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_0204B98C
_0219CB28:
	add r5, r5, #1
	cmp r5, #6
	blt _0219CB0C
	add r0, r4, #0
	add r0, #0xe2
	ldrh r0, [r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0xe0
	ldrh r0, [r0]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0219D47C
	ldr r0, [r4, #0x10]
	bl ovy259_219c084
	ldr r2, [r4, #0x14]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #6
	bl sub_02045708
	mov r0, #6
	bl sub_02045B7C
	mov r0, #5
	bl sub_02045708
	mov r0, #5
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045708
	mov r0, #4
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CB90: .word 0x04001000
_0219CB94: .word 0xFFFF1FFF
	thumb_func_end ovy259_219cad8

	thumb_func_start ovy259_219cb98
ovy259_219cb98: ; 0x0219CB98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	bne _0219CBA8
	b _0219CD6C
_0219CBA8:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #3
	bls _0219CBB4
	b _0219CD6C
_0219CBB4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CBC0: ; jump table
	.short _0219CBC8 - _0219CBC0 - 2 ; case 0
	.short _0219CCBC - _0219CBC0 - 2 ; case 1
	.short _0219CD58 - _0219CBC0 - 2 ; case 2
	.short _0219CD6C - _0219CBC0 - 2 ; case 3
_0219CBC8:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl ovy259_219d484
	ldr r0, [r4, #0x10]
	bl ovy259_219c0b4
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0219D500
	cmp r0, #0
	beq _0219CC18
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa2
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xa0
	strh r1, [r0]
	add r0, r4, #0
	mov r3, #0x1a
	mov r1, #1
	add r0, #0x98
	str r1, [r0]
	add r1, r4, #0
	mov r0, #5
	add r1, #0x38
	mov r2, #0x20
	lsl r3, r3, #4
	bl sub_02045320
	add r0, r4, #0
	mov r1, #0
	bl ovy259_219ce38
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219CC18:
	ldr r0, [r4, #0x10]
	bl sub_0219C128
	cmp r0, #0
	beq _0219CC2A
	add r0, r4, #0
	mov r1, #2
	add r0, #0x98
	str r1, [r0]
_0219CC2A:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _0219CC56
	add r0, r4, #0
	add r0, #0xa0
	ldrh r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r1, r0
	lsl r0, r0, #5
	cmp r1, r0
	blt _0219CC56
	add r0, r4, #0
	mov r1, #0
	mov r5, #0
	bl ovy259_219ce38
	add r0, r4, #0
	add r0, #0xa8
	str r5, [r0]
_0219CC56:
	add r0, r4, #0
	add r0, #0xa0
	ldrh r3, [r0]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, r1
	lsl r0, r1, #6
	cmp r2, r0
	blt _0219CC70
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r1, r3, r0
	b _0219CC78
_0219CC70:
	add r0, r4, #0
	add r0, #0xa0
	ldrh r0, [r0]
	add r1, r0, r1
_0219CC78:
	add r0, r4, #0
	add r0, #0xa0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x9c
	ldr r0, [r4, #8]
	ldr r1, [r1]
	bl sub_0201FF08
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219CC9C
	add r0, r4, #0
	add r0, #0x58
	b _0219CCA0
_0219CC9C:
	add r0, r4, #0
	add r0, #0x18
_0219CCA0:
	str r0, [sp]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x38
	str r0, [sp, #4]
	add r4, #0xa0
	ldrh r2, [r4]
	mov r0, #0x1f
	add r1, #0x78
	mov r3, #0xd
	bl ovy259_219d29c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219CCBC:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r1, _0219CD70 ; =0x021A06F2
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	lsr r7, r1, #3
	ldr r1, _0219CD74 ; =0x021A06F0
	ldrb r1, [r1, r0]
	lsr r6, r1, #3
	ldr r1, _0219CD78 ; =0x021A06F3
	ldrb r1, [r1, r0]
	lsr r1, r1, #3
	sub r1, r1, r7
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	ldr r1, _0219CD7C ; =0x021A06F1
	ldrb r0, [r1, r0]
	lsr r0, r0, #3
	sub r0, r0, r6
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0xa2
	ldrh r0, [r0]
	lsr r0, r0, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0219CD08
	mov r0, #0xd
	b _0219CD0A
_0219CD08:
	mov r0, #0xc
_0219CD0A:
	str r5, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, #5
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0204566C
	add r1, r4, #0
	add r1, #0xa2
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #0xa2
	ldrh r0, [r0]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0xa2
	strh r2, [r1]
	cmp r0, #0x10
	bls _0219CD4E
	str r5, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, #5
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0204566C
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #3
	add r4, #0x98
	str r0, [r4]
_0219CD4E:
	mov r0, #5
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219CD58:
	ldr r0, [r4, #0x10]
	bl ovy259_219c12c
	cmp r0, #0
	beq _0219CD6C
	mov r0, #2
	str r0, [r4, #0xc]
	mov r0, #3
	add r4, #0x98
	str r0, [r4]
_0219CD6C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CD70: .word 0x021A06F2
_0219CD74: .word 0x021A06F0
_0219CD78: .word 0x021A06F3
_0219CD7C: .word 0x021A06F1
	thumb_func_end ovy259_219cb98

	thumb_func_start ovy259_219cd80
ovy259_219cd80: ; 0x0219CD80
	push {r3, r4, lr}
	sub sp, #4
	add r0, #0xa4
	str r1, [r0]
	cmp r1, #0
	beq _0219CDCA
	ldr r4, _0219CE00 ; =0x04001050
	mov r1, #0x1f
	add r0, r4, #0
	mov r2, #0
	bl G2x_SetBlendBrightness_
	add r0, r4, #0
	mov r1, #0xff
	sub r0, #0x10
	strh r1, [r0]
	add r0, r4, #0
	ldr r2, _0219CE04 ; =0x0000A8C0
	sub r0, #0xc
	strh r2, [r0]
	add r0, r4, #0
	add r1, r1, #1
	sub r0, #0xe
	strh r1, [r0]
	add r0, r4, #0
	sub r0, #0xa
	strh r2, [r0]
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_0219CDCA:
	bl sub_02042788
	cmp r0, #0
	beq _0219CDE4
	mov r2, #0xf
	ldr r1, _0219CE08 ; =0x04001040
	lsl r2, r2, #0xc
	strh r2, [r1]
	mov r0, #0x10
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	strh r0, [r1, #6]
	b _0219CDF0
_0219CDE4:
	ldr r0, _0219CE08 ; =0x04001040
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
_0219CDF0:
	ldr r0, _0219CE00 ; =0x04001050
	mov r1, #0x1f
	mov r2, #8
	bl G2x_SetBlendBrightness_
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219CE00: .word 0x04001050
_0219CE04: .word 0x0000A8C0
_0219CE08: .word 0x04001040
	thumb_func_end ovy259_219cd80

	thumb_func_start sub_0219CE0C
sub_0219CE0C: ; 0x0219CE0C
	mov r2, #0
	add r1, r0, #0
	str r2, [r0, #0xc]
	add r0, #0xac
	add r1, #0x98
	ldr r0, [r0]
	ldr r3, _0219CE20 ; =ovy259_219d504
	str r2, [r1]
	bx r3
	nop
_0219CE20: .word ovy259_219d504
	thumb_func_end sub_0219CE0C

	thumb_func_start sub_0219CE24
sub_0219CE24: ; 0x0219CE24
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219CE24

	thumb_func_start sub_0219CE28
sub_0219CE28: ; 0x0219CE28
	add r1, r0, #0
	ldr r0, [r1, #8]
	add r1, #0x9c
	ldr r1, [r1]
	ldr r3, _0219CE34 ; =sub_0201FF08
	bx r3
	.align 2, 0
_0219CE34: .word sub_0201FF08
	thumb_func_end sub_0219CE28

	thumb_func_start ovy259_219ce38
ovy259_219ce38: ; 0x0219CE38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r1, [sp, #0x10]
	mov r5, #0
	bl sub_0201FDF4
	cmp r0, #0
	ble _0219CF10
_0219CE4C:
	ldr r0, _0219CF1C ; =0x021A06F0
	lsl r2, r5, #2
	add r0, r0, r2
	ldrb r1, [r0, #2]
	lsr r6, r1, #3
	ldr r1, _0219CF1C ; =0x021A06F0
	ldrb r1, [r1, r2]
	lsr r4, r1, #3
	ldrb r1, [r0, #3]
	ldrb r0, [r0, #1]
	lsr r1, r1, #3
	lsr r0, r0, #3
	sub r0, r0, r4
	sub r1, r1, r6
	add r0, r0, #1
	add r1, r1, #1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r7, r0, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x18]
	ldr r0, [r0, #8]
	bl sub_0201FDF8
	cmp r5, r0
	bge _0219CE92
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl sub_0201FF08
	str r0, [sp, #0x14]
_0219CE92:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0219CEA4
	mov r1, #0xa9
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219CEBC
_0219CEA4:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #5
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02045604
	b _0219CEE0
_0219CEBC:
	ldr r0, [sp, #0x14]
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	str r7, [sp]
	beq _0219CED0
	mov r0, #0xe
	b _0219CED2
_0219CED0:
	mov r0, #0xc
_0219CED2:
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	mov r0, #5
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204566C
_0219CEE0:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0219CF02
	ldr r0, [sp, #0xc]
	add r0, #0x9c
	ldr r0, [r0]
	cmp r5, r0
	bne _0219CF02
	str r7, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	mov r0, #5
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204566C
_0219CF02:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	ldr r0, [r0, #8]
	bl sub_0201FDF4
	cmp r5, r0
	blt _0219CE4C
_0219CF10:
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219CF1C: .word 0x021A06F0
	thumb_func_end ovy259_219ce38

	thumb_func_start ovy259_219cf20
ovy259_219cf20: ; 0x0219CF20
	push {r4, r5, r6, r7}
	mov r3, #0
	strh r3, [r1]
	ldrsh r3, [r1, r3]
	cmp r3, #3
	bge _0219CF60
	mov r6, #0
	mov r3, #0
	mov r4, #0
	mov r5, #0
_0219CF34:
	strh r6, [r2]
	ldrsh r7, [r2, r5]
	cmp r7, #2
	bge _0219CF50
_0219CF3C:
	add r7, r0, #0
	sub r0, r0, #1
	cmp r7, #0
	beq _0219CF60
	ldrsh r7, [r2, r3]
	add r7, r7, #1
	strh r7, [r2]
	ldrsh r7, [r2, r4]
	cmp r7, #2
	blt _0219CF3C
_0219CF50:
	mov r7, #0
	ldrsh r7, [r1, r7]
	add r7, r7, #1
	strh r7, [r1]
	mov r7, #0
	ldrsh r7, [r1, r7]
	cmp r7, #3
	blt _0219CF34
_0219CF60:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy259_219cf20

	thumb_func_start ovy259_219cf64
ovy259_219cf64: ; 0x0219CF64
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, sp, #0
	add r5, r2, #0
	add r1, #2
	add r2, sp, #0
	add r4, r3, #0
	bl ovy259_219cf20
	mov r0, #0
	strh r0, [r5]
	ldrsh r2, [r5, r0]
	cmp r2, #3
	bge _0219CFA2
	ldr r3, _0219CFD0 ; =0x021A0708
	add r1, sp, #0
_0219CF84:
	lsl r7, r2, #3
	ldrsh r2, [r1, r0]
	add r7, r3, r7
	lsl r2, r2, #2
	ldr r2, [r2, r7]
	cmp r2, r6
	bhs _0219CFA2
	mov r2, #0
	ldrsh r2, [r5, r2]
	add r2, r2, #1
	strh r2, [r5]
	mov r2, #0
	ldrsh r2, [r5, r2]
	cmp r2, #3
	blt _0219CF84
_0219CFA2:
	mov r0, #0
	strh r0, [r4]
	ldrsh r3, [r4, r0]
	cmp r3, #2
	bge _0219CFCE
	ldr r5, _0219CFD0 ; =0x021A0708
	add r2, sp, #0
	mov r1, #2
_0219CFB2:
	ldrsh r7, [r2, r1]
	lsl r3, r3, #2
	lsl r7, r7, #3
	add r7, r5, r7
	ldr r3, [r3, r7]
	cmp r3, r6
	bhs _0219CFCE
	mov r3, #0
	ldrsh r3, [r4, r3]
	add r3, r3, #1
	strh r3, [r4]
	ldrsh r3, [r4, r0]
	cmp r3, #2
	blt _0219CFB2
_0219CFCE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CFD0: .word 0x021A0708
	thumb_func_end ovy259_219cf64

	thumb_func_start ovy259_219cfd4
ovy259_219cfd4: ; 0x0219CFD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0219D04C ; =0x021A06F0
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219D048
	ldr r0, [r5, #8]
	bl sub_0201FDF8
	cmp r4, r0
	bge _0219D048
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0201FF08
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy259_219ce38
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219D03A
	ldr r0, _0219D050 ; =0x00000557
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0x9c
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xa0
	strh r7, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xa8
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	bl ovy259_219ce38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D03A:
	ldr r0, _0219D054 ; =0x0000054C
	bl GFL_SndSEPlay
	add r5, #0x9c
	str r4, [r5]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219D048:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D04C: .word 0x021A06F0
_0219D050: .word 0x00000557
_0219D054: .word 0x0000054C
	thumb_func_end ovy259_219cfd4

	thumb_func_start ovy259_219d058
ovy259_219d058: ; 0x0219D058
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r6, [r0]
	ldr r0, [r5, #8]
	mov r4, #0
	bl sub_0201FDF8
	add r1, sp, #8
	add r7, r0, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #8
	bl ovy259_219cf20
	add r2, sp, #4
	add r0, r6, #0
	add r1, r7, #0
	add r2, #2
	add r3, sp, #4
	bl ovy259_219cf64
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219D0B0
	add r1, sp, #4
	mov r0, #6
	ldrsh r2, [r1, r0]
	sub r2, r2, #1
	strh r2, [r1, #6]
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _0219D0AE
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, r0, #1
	strh r0, [r1, #6]
_0219D0AE:
	b _0219D100
_0219D0B0:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _0219D0D2
	add r4, sp, #4
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	mov r1, #2
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	blx sub_0208D65C
	strh r1, [r4, #6]
	b _0219D0AE
_0219D0D2:
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _0219D0E4
	sub r0, r6, #1
	bpl _0219D0E2
	sub r0, r7, #1
_0219D0E2:
	b _0219D0F6
_0219D0E4:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _0219D108
	add r0, r6, #1
	cmp r0, r7
	blt _0219D0F6
	add r0, r4, #0
_0219D0F6:
	add r1, sp, #8
	add r1, #2
	add r2, sp, #8
	bl ovy259_219cf20
_0219D100:
	ldr r0, _0219D190 ; =0x00000548
	bl GFL_SndSEPlay
	mov r4, #1
_0219D108:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219D114
	str r1, [sp]
_0219D114:
	cmp r4, #0
	beq _0219D148
	add r3, sp, #4
	mov r0, #6
	ldrsh r0, [r3, r0]
	mov r2, #4
	ldrsh r2, [r3, r2]
	lsl r1, r0, #3
	ldr r0, _0219D194 ; =0x021A0708
	lsl r2, r2, #2
	add r0, r0, r1
	ldr r1, [r2, r0]
	add r0, r5, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	bl ovy259_219ce38
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strh r1, [r0]
	mov r0, #5
	bl sub_02045B7C
_0219D148:
	ldr r0, [sp]
	cmp r0, #0
	beq _0219D184
	add r1, r5, #0
	add r1, #0x9c
	ldr r0, [r5, #8]
	ldr r1, [r1]
	bl sub_0201FF08
	mov r1, #0x4c
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219D178
	ldr r0, _0219D198 ; =0x00000557
	bl GFL_SndSEPlay
	add r5, #0xa0
	add sp, #0xc
	strh r4, [r5]
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0219D178:
	ldr r0, _0219D19C ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0219D184:
	mov r0, #1
	cmp r4, #0
	bne _0219D18C
	mov r0, #0
_0219D18C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D190: .word 0x00000548
_0219D194: .word 0x021A0708
_0219D198: .word 0x00000557
_0219D19C: .word 0x0000054C
	thumb_func_end ovy259_219d058

	thumb_func_start ovy259_219d1a0
ovy259_219d1a0: ; 0x0219D1A0
	push {r3, lr}
	cmp r1, #1
	bne _0219D1B8
	add r1, r0, #0
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	bne _0219D1C6
	mov r1, #0
	bl ovy259_219ce38
	pop {r3, pc}
_0219D1B8:
	add r1, r0, #0
	mov r2, #0
	add r1, #0xa8
	str r2, [r1]
	mov r1, #1
	bl ovy259_219ce38
_0219D1C6:
	pop {r3, pc}
	thumb_func_end ovy259_219d1a0

	thumb_func_start ovy259_219d1c8
ovy259_219d1c8: ; 0x0219D1C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D288
	mov r4, #0
	mov r6, #1
_0219D1DC:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D1EE
	add r1, r6, #0
	bl sub_0204C124
_0219D1EE:
	add r4, r4, #1
	cmp r4, #6
	blt _0219D1DC
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0]
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl ovy259_219c10c
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	ldr r4, _0219D28C ; =0x04001050
	mov r5, #3
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0xd
	str r5, [sp]
	bl G2x_SetBlendAlpha_
	add r2, r4, #0
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _0219D290 ; =0xFFFF1FFF
	mov r3, #0x3f
	and r1, r0
	lsl r0, r5, #0xd
	orr r0, r1
	str r0, [r2]
	add r0, r4, #0
	mov r1, #0xff
	sub r0, #0x10
	strh r1, [r0]
	add r0, r4, #0
	ldr r2, _0219D294 ; =0x0000A8C0
	sub r0, #0xc
	strh r2, [r0]
	add r0, r4, #0
	add r1, r1, #1
	sub r0, #0xe
	strh r1, [r0]
	add r0, r4, #0
	sub r0, #0xa
	strh r2, [r0]
	add r0, r4, #0
	sub r0, #8
	ldrh r2, [r0]
	mov r1, #0x16
	bic r2, r3
	orr r2, r1
	strh r2, [r0]
	ldrh r5, [r0]
	ldr r2, _0219D298 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r5
	orr r1, r2
	strh r1, [r0]
	sub r1, r4, #6
	ldrh r2, [r1]
	mov r0, #0x1f
	bic r2, r3
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
_0219D288:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D28C: .word 0x04001050
_0219D290: .word 0xFFFF1FFF
_0219D294: .word 0x0000A8C0
_0219D298: .word 0xFFFFC0FF
	thumb_func_end ovy259_219d1c8

	thumb_func_start ovy259_219d29c
ovy259_219d29c: ; 0x0219D29C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #8]
	str r0, [sp, #0x2c]
	asr r0, r2, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0219D360 ; =FX_SinCosTable_ ; 0x020946BC
	mov r6, #0
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
_0219D2D8:
	ldr r0, [sp, #0x28]
	lsl r4, r6, #1
	ldrh r5, [r0, r4]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	ldrh r3, [r0, r4]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #0xc]
	asr r0, r0, #0xa
	and r5, r3
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r2
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r3
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r2
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r3
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r2
	asr r1, r1, #0xc
	add r1, r7, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r1, r0
	ldr r0, [sp, #4]
	cmp r6, #0x10
	strh r1, [r0, r4]
	blt _0219D2D8
	ldr r1, [sp, #8]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D360: .word FX_SinCosTable_
	thumb_func_end ovy259_219d29c

	thumb_func_start ovy259_219d364
ovy259_219d364: ; 0x0219D364
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0xc]
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	bl sub_0202D7E0
	add r1, r4, #0
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D810
	add r1, r0, #0
	mov r3, #0x16
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r2, #1
	lsl r3, r3, #4
	bl Oam_LoadNCLRFile
	str r0, [r5, #4]
	bl sub_0202D814
	add r1, r0, #0
	str r4, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #8]
	mov r0, #2
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r6, sp, #0x10
	add r0, r6, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0xe0
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0xa8
	strh r1, [r0, #2]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_0204C040
	mov r1, #1
	str r0, [r5]
	bl sub_0204C124
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219d364

	thumb_func_start ovy259_219d414
ovy259_219d414: ; 0x0219D414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204C108
	ldr r0, [r4, #4]
	bl sub_0204BCD0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BE64
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy259_219d414

	thumb_func_start sub_0219D43C
sub_0219D43C: ; 0x0219D43C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219D43C

	thumb_func_start ovy259_219d440
ovy259_219d440: ; 0x0219D440
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219D474 ; =0x000007C7
	ldr r3, _0219D478 ; =0x021A09BC
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x1c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0203D554
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy259_219d544
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0219D474: .word 0x000007C7
_0219D478: .word 0x021A09BC
	thumb_func_end ovy259_219d440

	thumb_func_start sub_0219D47C
sub_0219D47C: ; 0x0219D47C
	ldr r3, _0219D480 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219D480: .word GFL_HeapFree
	thumb_func_end sub_0219D47C

	thumb_func_start ovy259_219d484
ovy259_219d484: ; 0x0219D484
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _0219D4BE
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219D4A8
	ldr r0, _0219D4FC ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy259_219d544
	pop {r3, r4, r5, pc}
_0219D4A8:
	add r0, r4, #0
	bl ovy259_219d51c
	cmp r0, #2
	bne _0219D4FA
	mov r5, #1
	mov r0, #1
	bl sub_0203D564
	str r5, [r4, #8]
	pop {r3, r4, r5, pc}
_0219D4BE:
	bl ovy259_219d51c
	cmp r0, #0
	beq _0219D4E6
	cmp r0, #1
	beq _0219D4DA
	cmp r0, #2
	bne _0219D4FA
	mov r5, #1
	mov r0, #1
	bl sub_0203D564
	str r5, [r4, #8]
	pop {r3, r4, r5, pc}
_0219D4DA:
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy259_219d544
	pop {r3, r4, r5, pc}
_0219D4E6:
	add r0, r4, #0
	bl ovy259_219d530
	cmp r0, #2
	bne _0219D4FA
	mov r0, #0
	bl sub_0203D564
	mov r0, #1
	str r0, [r4, #8]
_0219D4FA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D4FC: .word 0x00000548
	thumb_func_end ovy259_219d484

	thumb_func_start sub_0219D500
sub_0219D500: ; 0x0219D500
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219D500

	thumb_func_start ovy259_219d504
ovy259_219d504: ; 0x0219D504
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #8]
	bl sub_0203D554
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy259_219d544
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219d504

	thumb_func_start ovy259_219d51c
ovy259_219d51c: ; 0x0219D51C
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0219D52A
	ldr r0, [r0, #0xc]
	blx r1
	pop {r3, pc}
_0219D52A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219d51c

	thumb_func_start ovy259_219d530
ovy259_219d530: ; 0x0219D530
	push {r3, lr}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0219D53E
	ldr r0, [r0, #0xc]
	blx r1
	pop {r3, pc}
_0219D53E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219d530

	thumb_func_start ovy259_219d544
ovy259_219d544: ; 0x0219D544
	push {r3, lr}
	add r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	beq _0219D554
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #4]
	blx r2
_0219D554:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219d544

	thumb_func_start ovy259_219d558
ovy259_219d558: ; 0x0219D558
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0xf1
	add r5, r0, #0
	str r1, [sp]
	ldr r3, _0219D5D4 ; =0x021A09D0
	add r0, r6, #0
	add r1, #0x97
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x14
	mov r3, #8
_0219D578:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _0219D578
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r2]
	add r0, r4, #0
	bl ovy259_219d6c0
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl ovy259_219bf9c
	mov r5, #6
	lsl r5, r5, #6
	str r0, [r4, r5]
	add r0, r4, #0
	add r0, #0x58
	add r1, r4, #0
	add r2, r6, #0
	bl ovy259_219d7c4
	add r7, sp, #4
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	ldr r0, _0219D5D8 ; =ovy259_219d770
	add r1, r6, #0
	str r0, [sp, #8]
	ldr r0, _0219D5DC ; =ovy259_219d794
	str r4, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, _0219D5E0 ; =0x0219D7B9
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ovy259_219d440
	add r1, r5, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D5D4: .word 0x021A09D0
_0219D5D8: .word ovy259_219d770
_0219D5DC: .word ovy259_219d794
_0219D5E0: .word 0x0219D7B9
	thumb_func_end ovy259_219d558

	thumb_func_start ovy259_219d5e4
ovy259_219d5e4: ; 0x0219D5E4
	push {r3, r4, r5, lr}
	mov r5, #0x61
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0219D47C
	add r0, r4, #0
	add r0, #0x58
	bl ovy259_219d89c
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl ovy259_219c084
	add r0, r4, #0
	bl ovy259_219d74c
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219d5e4

	thumb_func_start ovy259_219d610
ovy259_219d610: ; 0x0219D610
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _0219D6A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D626: ; jump table
	.short _0219D62E - _0219D626 - 2 ; case 0
	.short _0219D680 - _0219D626 - 2 ; case 1
	.short _0219D690 - _0219D626 - 2 ; case 2
	.short _0219D6A6 - _0219D626 - 2 ; case 3
_0219D62E:
	add r0, r4, #0
	add r0, #0x58
	bl ovy259_219d8f8
	add r0, r4, #0
	add r0, #0x58
	bl sub_0219DDB0
	cmp r0, #0
	bne _0219D65C
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0219D652
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy259_219d484
_0219D652:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ovy259_219c0b4
_0219D65C:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219D500
	cmp r0, #0
	beq _0219D66E
	mov r0, #1
	str r0, [r4, #0xc]
_0219D66E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0219C128
	cmp r0, #0
	beq _0219D6A6
	mov r0, #2
	b _0219D6A4
_0219D680:
	add r0, r4, #0
	add r0, #0x58
	bl sub_0219DDA0
	cmp r0, #0
	beq _0219D6A6
	mov r0, #1
	b _0219D6A0
_0219D690:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ovy259_219c12c
	cmp r0, #0
	beq _0219D6A6
	mov r0, #2
_0219D6A0:
	str r0, [r4, #0x10]
	mov r0, #3
_0219D6A4:
	str r0, [r4, #0xc]
_0219D6A6:
	add r4, #0x58
	add r0, r4, #0
	bl sub_0219D9D4
	pop {r4, pc}
	thumb_func_end ovy259_219d610

	thumb_func_start sub_0219D6B0
sub_0219D6B0: ; 0x0219D6B0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219D6B0

	thumb_func_start sub_0219D6B4
sub_0219D6B4: ; 0x0219D6B4
	ldr r3, _0219D6BC ; =ovy259_219dc8c
	add r0, #0x58
	bx r3
	nop
_0219D6BC: .word ovy259_219dc8c
	thumb_func_end sub_0219D6B4

	thumb_func_start ovy259_219d6c0
ovy259_219d6c0: ; 0x0219D6C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0xaa
	mov r0, #0xaa
	add r4, r1, #0
	bl sub_0204AA30
	add r7, #0x96
	add r6, r0, #0
	add r1, r7, #0
	str r4, [sp]
	mov r0, #4
	mov r2, #9
	mov r3, #0
	mov r7, #0
	bl sub_02024D00
	str r4, [sp]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl sub_0204BC48
	str r0, [r5]
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x19
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #4]
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0x16
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	mov r0, #0xa
	lsl r0, r0, #0xa
	str r0, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #4
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #4
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219d6c0

	thumb_func_start ovy259_219d74c
ovy259_219d74c: ; 0x0219D74C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl sub_02044F90
	ldr r0, [r4, #8]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4]
	bl sub_0204BCD0
	pop {r4, pc}
	thumb_func_end ovy259_219d74c

	thumb_func_start ovy259_219d770
ovy259_219d770: ; 0x0219D770
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x58
	mov r4, #0
	bl ovy259_219d9e4
	cmp r0, #0
	beq _0219D782
	mov r4, #1
_0219D782:
	add r5, #0x58
	add r0, r5, #0
	bl sub_0219DD90
	cmp r0, #0
	beq _0219D790
	mov r4, #2
_0219D790:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219d770

	thumb_func_start ovy259_219d794
ovy259_219d794: ; 0x0219D794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x58
	mov r4, #0
	bl ovy259_219daa0
	cmp r0, #0
	beq _0219D7A6
	mov r4, #1
_0219D7A6:
	add r5, #0x58
	add r0, r5, #0
	bl sub_0219DD90
	cmp r0, #0
	beq _0219D7B4
	mov r4, #2
_0219D7B4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219d794
_0219D7B8:
	.byte 0x01, 0x4B, 0x58, 0x30, 0x18, 0x47, 0xC0, 0x46
	.byte 0xED, 0xDC, 0x19, 0x02

	thumb_func_start ovy259_219d7c4
ovy259_219d7c4: ; 0x0219D7C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #0x4a
	lsl r6, r6, #2
	add r5, r1, #0
	str r2, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r1, #0
	add r2, r6, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #2]
	ldr r2, [sp, #0x14]
	add r0, #0xe4
	add r1, r5, #0
	bl ovy259_219dfcc
	ldr r0, [sp, #0x10]
	sub r6, #0x28
	ldr r2, [sp, #0x14]
	add r0, r0, r6
	add r1, r5, #0
	bl ovy259_219e190
	ldr r0, [sp, #0x14]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x14]
	bl sub_0200F7D4
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #1
	bl sub_020245C4
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #2]
	cmp r0, #0
	ble _0219D884
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
_0219D822:
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [r5, #0x20]
	ldr r1, [r7, #0x24]
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r7, #0x3c]
	mov r1, #1
	cmp r0, #0
	beq _0219D84E
	mov r1, #0
_0219D84E:
	ldr r0, [r5, #0x18]
	str r6, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x24
	mul r1, r0
	ldr r0, [sp, #0x20]
	ldr r2, [r5, #0x1c]
	add r0, r0, r1
	add r1, r5, #0
	add r3, r4, #0
	bl ovy259_219ddbc
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _0219D822
_0219D884:
	ldr r0, [sp, #0x1c]
	bl GFL_WordSetSystemFree
	ldr r2, [sp, #0x10]
	mov r0, #6
	ldrh r2, [r2]
	mov r1, #3
	bl sub_02045E1C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219d7c4

	thumb_func_start ovy259_219d89c
ovy259_219d89c: ; 0x0219D89C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02044F90
	mov r0, #6
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl sub_02045E1C
	ldrh r0, [r5, #2]
	cmp r0, #0
	ble _0219D8D6
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219D8C4:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy259_219deac
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D8C4
_0219D8D6:
	mov r4, #1
	lsl r4, r4, #8
	add r0, r5, r4
	bl ovy259_219e238
	add r0, r5, #0
	add r0, #0xe4
	bl ovy259_219e030
	add r4, #0x28
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219d89c

	thumb_func_start ovy259_219d8f8
ovy259_219d8f8: ; 0x0219D8F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r5, #0
	bl ovy259_219e2bc
	add r0, r5, #0
	add r0, #0xe4
	bl sub_0219E16C
	cmp r0, #0
	beq _0219D930
	ldrh r0, [r5, #2]
	sub r0, r0, #5
	lsl r4, r0, #5
	add r0, r5, #0
	add r0, #0xe4
	bl sub_0219E170
	mul r0, r4
	asr r0, r0, #0xc
	strh r0, [r5]
	mov r0, #1
	str r0, [sp]
_0219D930:
	add r0, r5, #0
	add r0, #0xe4
	bl ovy259_219e048
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219D9A0
	mov r4, #0
	add r0, r5, #0
	str r4, [r5, #8]
	bl ovy259_219dcbc
	cmp r0, #0
	ldrh r0, [r5, #2]
	bne _0219D978
	cmp r0, #0
	ble _0219D9A0
	add r6, r5, #0
	add r6, #0xc
_0219D956:
	mov r0, #0x24
	add r7, r4, #0
	mul r7, r0
	add r0, r6, r7
	bl sub_0219DFA4
	cmp r0, #0
	bne _0219D96E
	add r0, r6, r7
	mov r1, #1
	bl ovy259_219df74
_0219D96E:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D956
	b _0219D9A0
_0219D978:
	cmp r0, #0
	ble _0219D9A0
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219D982:
	add r0, r5, #0
	bl ovy259_219dc8c
	cmp r4, r0
	beq _0219D998
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #0
	bl ovy259_219df74
_0219D998:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D982
_0219D9A0:
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219D9C2
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219D9AE:
	add r0, r4, #0
	mul r0, r7
	ldrh r1, [r5]
	add r0, r6, r0
	bl ovy259_219ded0
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D9AE
_0219D9C2:
	ldr r0, [sp]
	cmp r0, #0
	beq _0219D9D2
	ldrh r2, [r5]
	mov r0, #6
	mov r1, #3
	bl sub_02045E1C
_0219D9D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219d8f8

	thumb_func_start sub_0219D9D4
sub_0219D9D4: ; 0x0219D9D4
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, _0219D9E0 ; =ovy259_219e284
	add r0, r0, r1
	bx r3
	nop
_0219D9E0: .word ovy259_219e284
	thumb_func_end sub_0219D9D4

	thumb_func_start ovy259_219d9e4
ovy259_219d9e4: ; 0x0219D9E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219DA80
	add r0, r5, #0
	add r1, r5, #4
	bl ovy259_219dc4c
	cmp r0, #0
	beq _0219DA80
	ldr r1, [r5, #4]
	add r2, r5, #0
	mov r0, #0x24
	add r2, #0xc
	mul r0, r1
	add r0, r2, r0
	bl sub_0219DF70
	mov r1, #1
	str r0, [sp]
	cmp r0, #0
	beq _0219DA1C
	mov r1, #0
_0219DA1C:
	ldr r2, [r5, #4]
	add r3, r5, #0
	mov r0, #0x24
	add r3, #0xc
	mul r0, r2
	add r0, r3, r0
	bl ovy259_219df50
	cmp r0, #0
	beq _0219DA80
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DA58
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DA3E:
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _0219DA50
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #0
	bl ovy259_219df50
_0219DA50:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DA3E
_0219DA58:
	ldr r0, [sp]
	cmp r0, #0
	bne _0219DA62
	ldr r0, _0219DA98 ; =0x0000073A
	b _0219DA64
_0219DA62:
	ldr r0, _0219DA9C ; =0x0000073B
_0219DA64:
	bl GFL_SndSEPlay
	ldr r1, [r5, #4]
	add r2, r5, #0
	mov r0, #0x24
	add r2, #0xc
	mul r0, r1
	add r0, r2, r0
	bl sub_0219DF44
	mov r0, #1
	add sp, #0xc
	str r0, [r5, #8]
	pop {r4, r5, r6, r7, pc}
_0219DA80:
	add r5, #0xe4
	add r0, r5, #0
	bl ovy259_219e0b4
	cmp r0, #0
	beq _0219DA92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219DA92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DA98: .word 0x0000073A
_0219DA9C: .word 0x0000073B
	thumb_func_end ovy259_219d9e4

	thumb_func_start ovy259_219daa0
ovy259_219daa0: ; 0x0219DAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ovy259_219dcbc
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r4, #0
	ldrh r6, [r5, #2]
	bl sub_0219E3B8
	cmp r0, #0
	beq _0219DAC4
	add r6, r6, #1
_0219DAC4:
	cmp r7, #0
	beq _0219DACE
	add r0, r5, #0
	bl ovy259_219dc8c
_0219DACE:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0219DAE2
	mov r1, #0
	str r1, [r5, r0]
	ldrh r0, [r5, #2]
	mov r4, #1
	str r0, [r5, #4]
_0219DAE2:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219DB02
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bpl _0219DAF8
	sub r0, r6, #1
	str r0, [r5, #4]
_0219DAF8:
	ldr r0, _0219DC40 ; =0x00000548
	bl GFL_SndSEPlay
	mov r4, #1
	b _0219DBC4
_0219DB02:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _0219DB1C
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r0, r0, #1
	str r0, [r5, #4]
	blx sub_0208D868
	str r1, [r5, #4]
	b _0219DAF8
_0219DB1C:
	bl GCTX_HIDGetPressedKeys
	mov r6, #1
	tst r0, r6
	beq _0219DBC4
	ldrh r1, [r5, #2]
	ldr r0, [r5, #4]
	cmp r0, r1
	bne _0219DB40
	add r0, r6, #0
	add r0, #0xff
	add r0, r5, r0
	bl ovy259_219e2d8
	add r4, r6, #0
	str r6, [sp, #4]
	str r6, [r5, #8]
	b _0219DBC4
_0219DB40:
	add r2, r5, #0
	mov r1, #0x24
	add r2, #0xc
	mul r1, r0
	add r0, r2, r1
	bl sub_0219DF70
	str r0, [sp]
	cmp r0, #0
	beq _0219DB56
	mov r6, #0
_0219DB56:
	ldr r1, [r5, #4]
	add r2, r5, #0
	mov r0, #0x24
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	add r1, r6, #0
	bl ovy259_219df50
	cmp r0, #0
	beq _0219DBC4
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DB94
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DB7A:
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _0219DB8C
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #0
	bl ovy259_219df50
_0219DB8C:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DB7A
_0219DB94:
	ldr r1, [r5, #4]
	add r2, r5, #0
	mov r0, #0x24
	add r2, #0xc
	mul r0, r1
	add r0, r2, r0
	bl sub_0219DF44
	ldr r0, [sp]
	cmp r0, #0
	bne _0219DBB6
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0219DC44 ; =0x0000073A
	b _0219DBB8
_0219DBB6:
	ldr r0, _0219DC48 ; =0x0000073B
_0219DBB8:
	bl GFL_SndSEPlay
	mov r4, #1
	mov r0, #1
	str r0, [sp, #4]
	str r4, [r5, #8]
_0219DBC4:
	cmp r4, #0
	beq _0219DC3A
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DBFA
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DBD6:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _0219DBE6
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #1
	b _0219DBEE
_0219DBE6:
	mov r0, #0x24
	mul r0, r4
	add r0, r6, r0
	mov r1, #0
_0219DBEE:
	bl ovy259_219dfa8
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DBD6
_0219DBFA:
	cmp r0, #6
	blo _0219DC1C
	ldr r0, [r5, #4]
	cmp r0, #0
	bgt _0219DC0C
	add r0, r5, #0
	add r0, #0xe4
	mov r1, #0
	b _0219DC18
_0219DC0C:
	cmp r0, #5
	blt _0219DC1C
	add r0, r5, #0
	mov r1, #1
	add r0, #0xe4
	lsl r1, r1, #0xc
_0219DC18:
	bl sub_0219E180
_0219DC1C:
	ldrh r0, [r5, #2]
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _0219DC2E
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #1
	b _0219DC36
_0219DC2E:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
_0219DC36:
	bl ovy259_219e39c
_0219DC3A:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DC40: .word 0x00000548
_0219DC44: .word 0x0000073A
_0219DC48: .word 0x0000073B
	thumb_func_end ovy259_219daa0

	thumb_func_start ovy259_219dc4c
ovy259_219dc4c: ; 0x0219DC4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219DC86
	ldr r0, [sp, #4]
	cmp r0, #8
	bls _0219DC86
	cmp r0, #0xe0
	bhs _0219DC86
	ldr r1, [sp]
	cmp r1, #0xa8
	bhs _0219DC86
	ldrh r0, [r5]
	add r0, r1, r0
	lsr r1, r0, #5
	bmi _0219DC86
	ldrh r0, [r5, #2]
	cmp r1, r0
	bge _0219DC86
	add sp, #8
	str r1, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219DC86:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219dc4c

	thumb_func_start ovy259_219dc8c
ovy259_219dc8c: ; 0x0219DC8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DCB8
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DC9E:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_0219DF70
	cmp r0, #0
	beq _0219DCB0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DCB0:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DC9E
_0219DCB8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219dc8c

	thumb_func_start ovy259_219dcbc
ovy259_219dcbc: ; 0x0219DCBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DCE8
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DCCE:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_0219DF70
	cmp r0, #0
	beq _0219DCE0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219DCE0:
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DCCE
_0219DCE8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219dcbc

	thumb_func_start ovy259_219dcec
ovy259_219dcec: ; 0x0219DCEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _0219DD18
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0219DD8E
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DD02:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #0
	bl ovy259_219dfa8
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DD02
	pop {r3, r4, r5, r6, r7, pc}
_0219DD18:
	ldrh r1, [r5, #2]
	mov r4, #0
	cmp r1, #0
	ble _0219DD4A
	add r6, r5, #0
	add r6, #0xc
	mov r7, #0x24
_0219DD26:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _0219DD36
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	mov r1, #1
	b _0219DD3E
_0219DD36:
	mov r0, #0x24
	mul r0, r4
	add r0, r6, r0
	mov r1, #0
_0219DD3E:
	bl ovy259_219dfa8
	ldrh r1, [r5, #2]
	add r4, r4, #1
	cmp r4, r1
	blt _0219DD26
_0219DD4A:
	ldr r0, [r5, #4]
	cmp r0, r1
	bne _0219DD5A
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #1
	b _0219DD62
_0219DD5A:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
_0219DD62:
	bl ovy259_219e39c
	ldrh r0, [r5, #2]
	cmp r0, #6
	blo _0219DD8E
	ldr r0, [r5, #4]
	cmp r0, #0
	bgt _0219DD7E
	add r5, #0xe4
	add r0, r5, #0
	mov r1, #0
	bl sub_0219E180
	pop {r3, r4, r5, r6, r7, pc}
_0219DD7E:
	cmp r0, #5
	blt _0219DD8E
	add r5, #0xe4
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0219E180
_0219DD8E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219dcec

	thumb_func_start sub_0219DD90
sub_0219DD90: ; 0x0219DD90
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, _0219DD9C ; =ovy259_219e3c8
	add r0, r0, r1
	bx r3
	nop
_0219DD9C: .word ovy259_219e3c8
	thumb_func_end sub_0219DD90

	thumb_func_start sub_0219DDA0
sub_0219DDA0: ; 0x0219DDA0
	mov r1, #1
	lsl r1, r1, #8
	ldr r3, _0219DDAC ; =ovy259_219e3dc
	add r0, r0, r1
	bx r3
	nop
_0219DDAC: .word ovy259_219e3dc
	thumb_func_end sub_0219DDA0

	thumb_func_start sub_0219DDB0
sub_0219DDB0: ; 0x0219DDB0
	ldr r3, _0219DDB8 ; =sub_0219E168
	add r0, #0xe4
	bx r3
	nop
_0219DDB8: .word sub_0219E168
	thumb_func_end sub_0219DDB0

	thumb_func_start ovy259_219ddbc
ovy259_219ddbc: ; 0x0219DDBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	str r2, [sp, #0xc]
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	add r4, r3, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x38]
	str r4, [r5, #0x20]
	str r0, [r5, #0xc]
	mov r0, #3
	add r6, sp, #0x10
	strb r0, [r6, #7]
	mov r0, #0x80
	strh r0, [r6]
	lsl r0, r4, #5
	add r0, #0x10
	strh r0, [r6, #2]
	mov r0, #0
	strh r0, [r6, #4]
	mov r0, #0x20
	strb r0, [r6, #6]
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	ldr r1, [r7, #4]
	ldr r2, [r7]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r3, [r7, #8]
	bl sub_0204C040
	str r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x12
	strh r0, [r6]
	mov r0, #1
	strh r0, [r6, #4]
	mov r0, #0x10
	strb r0, [r6, #6]
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	ldr r1, [r7, #4]
	ldr r2, [r7]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r3, [r7, #8]
	bl sub_0204C040
	mov r1, #1
	str r0, [r5, #0x14]
	bl sub_0204C124
	mov r0, #2
	lsl r2, r4, #2
	str r0, [sp]
	mov r0, #0xf
	add r2, r2, #1
	str r0, [sp, #4]
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0x19
	mov r6, #6
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x1c]
	mov r1, #0xf1
	ldr r0, [sp, #0x34]
	lsl r1, r1, #6
	bl sub_0219B85C
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy259_219b864
	ldr r0, [sp, #0x34]
	ldr r1, [r5, #0x1c]
	ldr r2, [sp, #0x30]
	bl ovy259_219b8a0
	ldr r4, [r5, #0x1c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r5, #0
	mov r1, #1
	bl ovy259_219df74
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219ddbc

	thumb_func_start ovy259_219deac
ovy259_219deac: ; 0x0219DEAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02048210
	ldr r0, [r4, #0x14]
	bl sub_0204C108
	ldr r0, [r4, #0x10]
	bl sub_0204C108
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219deac

	thumb_func_start ovy259_219ded0
ovy259_219ded0: ; 0x0219DED0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEEE
	ldr r2, [r5, #4]
	ldr r1, _0219DF40 ; =0x021A0720
	ldr r0, [r5, #0x10]
	ldrb r1, [r1, r2]
	bl sub_0204C488
_0219DEEE:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #5
	sub r0, r0, r4
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x1f
	mvn r0, r0
	cmp r1, r0
	blt _0219DF3C
	cmp r1, #0xa0
	bgt _0219DF3C
	mov r0, #0x80
	add r4, sp, #0
	strh r0, [r4]
	add r1, #0x10
	strh r1, [r4, #2]
	add r6, sp, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	mov r2, #1
	bl sub_0204C140
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0x12
	strh r0, [r4]
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	mov r2, #1
	bl sub_0204C140
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xc8
	strh r0, [r4]
_0219DF3C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219DF40: .word 0x021A0720
	thumb_func_end ovy259_219ded0

	thumb_func_start sub_0219DF44
sub_0219DF44: ; 0x0219DF44
	ldr r0, [r0, #0x10]
	ldr r3, _0219DF4C ; =sub_0204C488
	mov r1, #6
	bx r3
	.align 2, 0
_0219DF4C: .word sub_0204C488
	thumb_func_end sub_0219DF44

	thumb_func_start ovy259_219df50
ovy259_219df50: ; 0x0219DF50
	push {r3, lr}
	ldr r2, [r0, #0xc]
	cmp r2, #1
	beq _0219DF5E
	ldr r2, [r0]
	cmp r2, r1
	bne _0219DF62
_0219DF5E:
	mov r0, #0
	pop {r3, pc}
_0219DF62:
	str r1, [r0]
	mov r1, #1
	bl ovy259_219df74
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219df50

	thumb_func_start sub_0219DF70
sub_0219DF70: ; 0x0219DF70
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219DF70

	thumb_func_start ovy259_219df74
ovy259_219df74: ; 0x0219DF74
	push {r3, lr}
	str r1, [r0, #8]
	cmp r1, #0
	beq _0219DF9A
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0219DF9A
	ldr r1, [r0]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	beq _0219DF92
	mov r1, #2
	bl sub_0204C488
	pop {r3, pc}
_0219DF92:
	mov r1, #1
	bl sub_0204C488
	pop {r3, pc}
_0219DF9A:
	ldr r0, [r0, #0x14]
	mov r1, #3
	bl sub_0204C488
	pop {r3, pc}
	thumb_func_end ovy259_219df74

	thumb_func_start sub_0219DFA4
sub_0219DFA4: ; 0x0219DFA4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219DFA4

	thumb_func_start ovy259_219dfa8
ovy259_219dfa8: ; 0x0219DFA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	str r1, [r4, #4]
	bl sub_0204C4A0
	cmp r0, #6
	beq _0219DFC4
	ldr r2, [r4, #4]
	ldr r1, _0219DFC8 ; =0x021A0722
	ldr r0, [r4, #0x10]
	ldrb r1, [r1, r2]
	bl sub_0204C488
_0219DFC4:
	pop {r4, pc}
	nop
_0219DFC8: .word 0x021A0722
	thumb_func_end ovy259_219dfa8

	thumb_func_start ovy259_219dfcc
ovy259_219dfcc: ; 0x0219DFCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x54]
	cmp r0, #5
	ble _0219DFE8
	mov r0, #1
	str r0, [r5]
_0219DFE8:
	mov r7, #0
	add r0, sp, #0xc
	strb r7, [r0, #6]
	strb r7, [r0, #7]
	mov r1, #0xf8
	strh r1, [r0]
	mov r1, #0x18
	strh r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	ldr r2, [r4]
	ldr r3, [r4, #8]
	str r6, [sp, #8]
	bl sub_0204C040
	ldr r1, [r5]
	str r0, [r5, #0x10]
	cmp r1, #0
	beq _0219E024
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219E024:
	add r1, r7, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219dfcc

	thumb_func_start ovy259_219e030
ovy259_219e030: ; 0x0219E030
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0204C108
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219e030

	thumb_func_start ovy259_219e048
ovy259_219e048: ; 0x0219E048
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0219E0B0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219E074
	mov r0, #0
	str r0, [r4, #8]
	mov r1, #0xf8
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	mov r2, #1
	add r1, #0x18
	strh r1, [r0, #2]
	ldr r0, [r4, #0x10]
	add r1, sp, #0
	bl sub_0204C140
_0219E074:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219E0B0
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x14]
	cmp r1, r2
	ble _0219E090
	sub r0, r1, r2
	cmp r0, #8
	bge _0219E08C
_0219E088:
	str r2, [r4, #0x14]
	b _0219E0A0
_0219E08C:
	sub r1, #8
	b _0219E09E
_0219E090:
	cmp r1, r2
	bge _0219E0A0
	sub r0, r2, r1
	cmp r0, #8
	bge _0219E09C
	b _0219E088
_0219E09C:
	add r1, #8
_0219E09E:
	str r1, [r4, #0x14]
_0219E0A0:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _0219E0AC
	mov r0, #0
	str r0, [r4, #0xc]
_0219E0AC:
	mov r0, #1
	str r0, [r4, #8]
_0219E0B0:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy259_219e048

	thumb_func_start ovy259_219e0b4
ovy259_219e0b4: ; 0x0219E0B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0219E0C6
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219E0C6:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	add r5, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r5, #0
	beq _0219E114
	ldr r2, [sp, #0xc]
	cmp r2, #0xec
	blo _0219E114
	mov r1, #0x41
	lsl r1, r1, #2
	cmp r2, r1
	bhi _0219E114
	ldr r3, [r4, #0x14]
	ldr r2, [sp, #8]
	add r1, r3, #0
	add r1, #0xc
	cmp r2, r1
	blo _0219E114
	add r3, #0x24
	cmp r2, r3
	bhi _0219E114
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_0204C488
	ldr r0, _0219E164 ; =0x0000066C
	bl GFL_SndSEPlay
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219E114:
	cmp r0, #0
	beq _0219E150
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219E150
	ldr r1, [sp, #4]
	cmp r1, #0xec
	blo _0219E15C
	mov r0, #0x41
	lsl r0, r0, #2
	cmp r1, r0
	bhi _0219E15C
	ldr r0, [sp]
	cmp r0, #0xc
	blo _0219E15C
	cmp r0, #0x9c
	bhi _0219E15C
	sub r0, #0x18
	cmp r0, #0x78
	ble _0219E140
	mov r0, #0x78
	b _0219E146
_0219E140:
	cmp r0, #0
	bge _0219E146
	mov r0, #0
_0219E146:
	str r0, [r4, #0x14]
	mov r0, #1
	add sp, #0x10
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0219E150:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl sub_0204C488
_0219E15C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0219E164: .word 0x0000066C
	thumb_func_end ovy259_219e0b4

	thumb_func_start sub_0219E168
sub_0219E168: ; 0x0219E168
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219E168

	thumb_func_start sub_0219E16C
sub_0219E16C: ; 0x0219E16C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219E16C

	thumb_func_start sub_0219E170
sub_0219E170: ; 0x0219E170
	ldr r0, [r0, #0x14]
	ldr r3, _0219E17C ; =sub_0208D65C
	lsl r0, r0, #0xc
	mov r1, #0x78
	bx r3
	nop
_0219E17C: .word sub_0208D65C
	thumb_func_end sub_0219E170

	thumb_func_start sub_0219E180
sub_0219E180: ; 0x0219E180
	mov r2, #0x78
	mul r2, r1
	asr r1, r2, #0xc
	str r1, [r0, #0x18]
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E180

	thumb_func_start ovy259_219e190
ovy259_219e190: ; 0x0219E190
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, [r6, #0x18]
	strh r4, [r5, #0x18]
	str r0, [r5, #0xc]
	bl sub_0219B84C
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0219B850
	add r3, r0, #0
	str r4, [sp]
	mov r0, #4
	mov r1, #7
	add r2, r6, #0
	bl sub_0202E168
	str r0, [r5, #8]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x15
	bl BmpWin_CreateDynamic
	str r0, [r5]
	ldr r0, [r5, #0xc]
	bl sub_0219B858
	add r4, r0, #0
	mov r1, #1
	bl sub_0204898C
	str r0, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0
	bl sub_0204898C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	ldr r1, _0219E234 ; =0x0000044F
	bl sub_0219B85C
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #0x14]
	bl ovy259_219b8a0
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	bl ovy259_219bab4
	mov r0, #4
	bl sub_02044F90
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219E234: .word 0x0000044F
	thumb_func_end ovy259_219e190

	thumb_func_start ovy259_219e238
ovy259_219e238: ; 0x0219E238
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219E24A
	bl sub_0202E34C
	mov r0, #0
	str r0, [r4, #4]
_0219E24A:
	ldr r0, [r4, #0x14]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x10]
	bl GFL_StrBufFree
	ldr r0, [r4]
	bl sub_02048210
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl sub_02044F90
	mov r0, #4
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	ldr r0, [r4, #8]
	bl sub_0202E1DC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy259_219e238

	thumb_func_start ovy259_219e284
ovy259_219e284: ; 0x0219E284
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219E2B4
	bl sub_0202E434
	cmp r0, #0
	bne _0219E2AE
	ldr r0, [r4, #4]
	bl sub_0202E454
	cmp r0, #1
	bne _0219E2AE
	ldr r0, _0219E2B8 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0202E430
_0219E2AE:
	ldr r0, [r4, #4]
	bl sub_0202E37C
_0219E2B4:
	pop {r4, pc}
	nop
_0219E2B8: .word 0x0000054C
	thumb_func_end ovy259_219e284

	thumb_func_start ovy259_219e2bc
ovy259_219e2bc: ; 0x0219E2BC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovy259_219dcbc
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, r1
	beq _0219E2D6
	add r0, r4, #0
	str r1, [r4, #0x1c]
	bl ovy259_219e2f0
_0219E2D6:
	pop {r4, pc}
	thumb_func_end ovy259_219e2bc

	thumb_func_start ovy259_219e2d8
ovy259_219e2d8: ; 0x0219E2D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219E2EC ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0202E430
	pop {r4, pc}
	.align 2, 0
_0219E2EC: .word 0x0000054C
	thumb_func_end ovy259_219e2d8

	thumb_func_start ovy259_219e2f0
ovy259_219e2f0: ; 0x0219E2F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	cmp r1, #0
	beq _0219E34A
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	bl sub_0219BAE0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0219E38A
	add r6, sp, #8
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xc
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	ldr r1, _0219E394 ; =0x000039E3
	str r0, [sp, #8]
	add r0, sp, #8
	strh r1, [r0, #4]
	str r4, [sp, #0x10]
	mov r3, #0x15
	str r3, [sp]
	ldrh r0, [r5, #0x18]
	add r1, r6, #0
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	bl sub_0202E1F0
	str r0, [r5, #4]
	b _0219E38A
_0219E34A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0219E358
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, #4]
_0219E358:
	ldr r0, [r5, #0xc]
	ldr r1, _0219E398 ; =0x0000044F
	bl sub_0219B85C
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	ldr r2, [r5, #0x14]
	bl ovy259_219b8a0
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	bl ovy259_219bab4
_0219E38A:
	mov r0, #4
	bl sub_02044F90
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219E394: .word 0x000039E3
_0219E398: .word 0x0000044F
	thumb_func_end ovy259_219e2f0

	thumb_func_start ovy259_219e39c
ovy259_219e39c: ; 0x0219E39C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0219E3B8
	cmp r0, #0
	beq _0219E3B4
	ldr r0, [r5, #4]
	add r1, r4, #0
	str r4, [r5, #0x20]
	bl sub_0202E41C
_0219E3B4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy259_219e39c

	thumb_func_start sub_0219E3B8
sub_0219E3B8: ; 0x0219E3B8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219E3C2
	mov r0, #1
	bx lr
_0219E3C2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E3B8

	thumb_func_start ovy259_219e3c8
ovy259_219e3c8: ; 0x0219E3C8
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219E3D6
	bl sub_0202E434
	pop {r3, pc}
_0219E3D6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e3c8

	thumb_func_start ovy259_219e3dc
ovy259_219e3dc: ; 0x0219E3DC
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219E3EA
	bl sub_0202E438
	pop {r3, pc}
_0219E3EA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e3dc

	thumb_func_start ovy259_219e3f0
ovy259_219e3f0: ; 0x0219E3F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r2, #0
	mov r0, #0x67
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219E42C ; =0x021A09E8
	add r0, r7, #0
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #8]
	add r0, r5, #0
	bl sub_02017934
	bl sub_0200FF40
	str r0, [r4, #0xc]
	mov r0, #0xf0
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B4E4
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E42C: .word 0x021A09E8
	thumb_func_end ovy259_219e3f0

	thumb_func_start ovy259_219e430
ovy259_219e430: ; 0x0219E430
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219e430

	thumb_func_start ovy259_219e444
ovy259_219e444: ; 0x0219E444
	push {r4, lr}
	add r4, r0, #0
	bl ovy259_219e680
	add r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0219E466
	cmp r0, #1
	beq _0219E45E
	cmp r0, #2
	beq _0219E462
	b _0219E470
_0219E45E:
	mov r0, #0
	pop {r4, pc}
_0219E462:
	mov r0, #1
	pop {r4, pc}
_0219E466:
	ldrh r1, [r1, #6]
	add r0, r4, #0
	bl ovy259_219e584
	pop {r4, pc}
_0219E470:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy259_219e444

	thumb_func_start ovy259_219e474
ovy259_219e474: ; 0x0219E474
	push {r4, lr}
	add r4, r0, #0
	bl ovy259_219e680
	ldrh r0, [r0, #6]
	bl sub_02018810
	add r1, r0, #0
	add r0, r4, #0
	bl ovy259_219e5e0
	pop {r4, pc}
	thumb_func_end ovy259_219e474

	thumb_func_start ovy259_219e48c
ovy259_219e48c: ; 0x0219E48C
	push {r3, lr}
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C838
	bl sub_0200C9A0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e48c

	thumb_func_start sub_0219E4A0
sub_0219E4A0: ; 0x0219E4A0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219E4A0

	thumb_func_start ovy259_219e4a4
ovy259_219e4a4: ; 0x0219E4A4
	push {r3, lr}
	bl ovy259_219e680
	ldrh r0, [r0, #0xa]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e4a4

	thumb_func_start ovy259_219e4b0
ovy259_219e4b0: ; 0x0219E4B0
	push {r3, lr}
	bl ovy259_219e680
	ldrh r0, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e4b0

	thumb_func_start ovy259_219e4bc
ovy259_219e4bc: ; 0x0219E4BC
	push {r3, lr}
	bl ovy259_219e680
	ldrh r0, [r0, #0xe]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e4bc

	thumb_func_start ovy259_219e4c8
ovy259_219e4c8: ; 0x0219E4C8
	push {r3, lr}
	bl ovy259_219e680
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e4c8

	thumb_func_start ovy259_219e4d4
ovy259_219e4d4: ; 0x0219E4D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	cmp r1, #5
	ldr r0, [r5, #0xc]
	bne _0219E562
	bl sub_0200FF74
	mov r6, #1
	cmp r0, #0
	beq _0219E4EC
	mov r6, #0
_0219E4EC:
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_0200FF60
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	bl sub_0219E62C
	str r0, [sp, #4]
	bl ovy259_21a030c
	str r0, [sp, #8]
	bl sub_021A0378
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_020171F4
	bl sub_02017544
	add r4, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_02017AF0
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_021A0398
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _0219E544
	ldr r2, _0219E56C ; =0x021A0724
	mov r0, #0
_0219E532:
	lsl r1, r0, #2
	ldr r1, [r2, r1]
	cmp r4, r1
	bne _0219E53E
	mov r5, #1
	b _0219E544
_0219E53E:
	add r0, r0, #1
	cmp r0, #0xf
	blo _0219E532
_0219E544:
	cmp r6, #0
	beq _0219E55C
	ldr r0, [sp]
	cmp r0, #0
	beq _0219E55C
	cmp r5, #0
	beq _0219E55C
	cmp r7, #0
	beq _0219E55C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219E55C:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219E562:
	bl sub_0200FF60
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E56C: .word 0x021A0724
	thumb_func_end ovy259_219e4d4

	thumb_func_start ovy259_219e570
ovy259_219e570: ; 0x0219E570
	push {r3, lr}
	bl ovy259_219e680
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0219E580
	mov r0, #1
	pop {r3, pc}
_0219E580:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy259_219e570

	thumb_func_start ovy259_219e584
ovy259_219e584: ; 0x0219E584
	push {r3, lr}
	add r0, r1, #0
	bl sub_02018D3C
	cmp r0, #0x11
	bhi _0219E5DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E59C: ; jump table
	.short _0219E5C0 - _0219E59C - 2 ; case 0
	.short _0219E5C0 - _0219E59C - 2 ; case 1
	.short _0219E5C4 - _0219E59C - 2 ; case 2
	.short _0219E5C4 - _0219E59C - 2 ; case 3
	.short _0219E5C8 - _0219E59C - 2 ; case 4
	.short _0219E5C8 - _0219E59C - 2 ; case 5
	.short _0219E5C0 - _0219E59C - 2 ; case 6
	.short _0219E5CC - _0219E59C - 2 ; case 7
	.short _0219E5D0 - _0219E59C - 2 ; case 8
	.short _0219E5D4 - _0219E59C - 2 ; case 9
	.short _0219E5D8 - _0219E59C - 2 ; case 10
	.short _0219E5D4 - _0219E59C - 2 ; case 11
	.short _0219E5D4 - _0219E59C - 2 ; case 12
	.short _0219E5D4 - _0219E59C - 2 ; case 13
	.short _0219E5D4 - _0219E59C - 2 ; case 14
	.short _0219E5D4 - _0219E59C - 2 ; case 15
	.short _0219E5D4 - _0219E59C - 2 ; case 16
	.short _0219E5D4 - _0219E59C - 2 ; case 17
_0219E5C0:
	mov r0, #3
	pop {r3, pc}
_0219E5C4:
	mov r0, #2
	pop {r3, pc}
_0219E5C8:
	mov r0, #1
	pop {r3, pc}
_0219E5CC:
	mov r0, #4
	pop {r3, pc}
_0219E5D0:
	mov r0, #5
	pop {r3, pc}
_0219E5D4:
	mov r0, #0
	pop {r3, pc}
_0219E5D8:
	mov r0, #6
	pop {r3, pc}
_0219E5DC:
	mov r0, #3
	pop {r3, pc}
	thumb_func_end ovy259_219e584

	thumb_func_start ovy259_219e5e0
ovy259_219e5e0: ; 0x0219E5E0
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_02032E94
	cmp r0, #0xe
	bhi _0219E626
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E5F8: ; jump table
	.short _0219E616 - _0219E5F8 - 2 ; case 0
	.short _0219E61A - _0219E5F8 - 2 ; case 1
	.short _0219E61E - _0219E5F8 - 2 ; case 2
	.short _0219E622 - _0219E5F8 - 2 ; case 3
	.short _0219E61A - _0219E5F8 - 2 ; case 4
	.short _0219E61A - _0219E5F8 - 2 ; case 5
	.short _0219E61E - _0219E5F8 - 2 ; case 6
	.short _0219E61E - _0219E5F8 - 2 ; case 7
	.short _0219E61A - _0219E5F8 - 2 ; case 8
	.short _0219E616 - _0219E5F8 - 2 ; case 9
	.short _0219E616 - _0219E5F8 - 2 ; case 10
	.short _0219E616 - _0219E5F8 - 2 ; case 11
	.short _0219E622 - _0219E5F8 - 2 ; case 12
	.short _0219E616 - _0219E5F8 - 2 ; case 13
	.short _0219E616 - _0219E5F8 - 2 ; case 14
_0219E616:
	mov r0, #3
	pop {r3, pc}
_0219E61A:
	mov r0, #2
	pop {r3, pc}
_0219E61E:
	mov r0, #0
	pop {r3, pc}
_0219E622:
	mov r0, #1
	pop {r3, pc}
_0219E626:
	mov r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e5e0

	thumb_func_start sub_0219E62C
sub_0219E62C: ; 0x0219E62C
	ldr r0, [r0, #0xc]
	ldr r3, _0219E634 ; =sub_0200FF54
	bx r3
	nop
_0219E634: .word sub_0200FF54
	thumb_func_end sub_0219E62C

	thumb_func_start ovy259_219e638
ovy259_219e638: ; 0x0219E638
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _0219E64C
	mov r0, #1
	pop {r3, pc}
_0219E64C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy259_219e638

	thumb_func_start ovy259_219e650
ovy259_219e650: ; 0x0219E650
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0200FF54
	add r2, r0, #0
	cmp r2, r4
	bhs _0219E672
	add r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_0200FF50
_0219E672:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy259_219e650

	thumb_func_start sub_0219E674
sub_0219E674: ; 0x0219E674
	ldr r0, [r0, #0xc]
	ldr r3, _0219E67C ; =sub_0200FF68
	bx r3
	nop
_0219E67C: .word sub_0200FF68
	thumb_func_end sub_0219E674

	thumb_func_start ovy259_219e680
ovy259_219e680: ; 0x0219E680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0200FF54
	ldr r3, [r5, #4]
	mov r2, #0
	mov r5, #0x14
_0219E692:
	add r6, r2, #0
	mul r6, r5
	add r1, r3, r6
	ldrh r6, [r3, r6]
	cmp r6, r4
	bne _0219E6A8
	ldrh r6, [r1, #2]
	cmp r6, r0
	bne _0219E6A8
	add r0, r1, #0
	pop {r4, r5, r6, pc}
_0219E6A8:
	add r2, r2, #1
	cmp r2, #0x8e
	blt _0219E692
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy259_219e680

	thumb_func_start sub_0219E6B4
sub_0219E6B4: ; 0x0219E6B4
	ldr r0, [r0, #0xc]
	ldr r3, _0219E6BC ; =sub_0200FF78
	mov r1, #1
	bx r3
	.align 2, 0
_0219E6BC: .word sub_0200FF78
	thumb_func_end sub_0219E6B4

	thumb_func_start sub_0219E6C0
sub_0219E6C0: ; 0x0219E6C0
	ldr r0, [r0, #0xc]
	ldr r3, _0219E6C8 ; =sub_0200FF8C
	bx r3
	nop
_0219E6C8: .word sub_0200FF8C
	thumb_func_end sub_0219E6C0

	thumb_func_start ovy259_219e6cc
ovy259_219e6cc: ; 0x0219E6CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200FFCC
	cmp r0, #0
	beq _0219E6F2
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200FF68
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200FF94
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200FFB8
_0219E6F2:
	pop {r4, pc}
	thumb_func_end ovy259_219e6cc

	thumb_func_start ovy259_219e6f4
ovy259_219e6f4: ; 0x0219E6F4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	mov r1, #5
	bl sub_0200FF60
	cmp r0, #0
	bne _0219E706
	mov r0, #1
	pop {r3, pc}
_0219E706:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219e6f4

	thumb_func_start ovy259_219e70c
ovy259_219e70c: ; 0x0219E70C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r2, #0
	mov r0, #0x4f
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219E750 ; =0x021A0A00
	add r0, r6, #0
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r6, [r4]
	add r3, r4, #4
	mov r2, #7
_0219E72C:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219E72C
	add r2, r4, #0
	add r2, #0x3c
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _0219E754 ; =ovy259_219e7a0
	add r0, r4, #0
	add r2, r6, #0
	bl ovy259_219c164
	str r0, [r4, #0x4c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E750: .word 0x021A0A00
_0219E754: .word ovy259_219e7a0
	thumb_func_end ovy259_219e70c

	thumb_func_start ovy259_219e758
ovy259_219e758: ; 0x0219E758
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_0219C194
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _0219E772
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0x3c
	blx r3
_0219E772:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219e758

	thumb_func_start sub_0219E77C
sub_0219E77C: ; 0x0219E77C
	ldr r0, [r0, #0x4c]
	ldr r3, _0219E784 ; =ovy259_219c19c
	bx r3
	nop
_0219E784: .word ovy259_219c19c
	thumb_func_end sub_0219E77C

	thumb_func_start sub_0219E788
sub_0219E788: ; 0x0219E788
	ldr r0, [r0, #0x4c]
	ldr r3, _0219E790 ; =sub_0219C1AC
	bx r3
	nop
_0219E790: .word sub_0219C1AC
	thumb_func_end sub_0219E788

	thumb_func_start sub_0219E794
sub_0219E794: ; 0x0219E794
	ldr r0, [r0, #0x4c]
	ldr r3, _0219E79C ; =sub_0219C1C4
	bx r3
	nop
_0219E79C: .word sub_0219C1C4
	thumb_func_end sub_0219E794

	thumb_func_start ovy259_219e7a0
ovy259_219e7a0: ; 0x0219E7A0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r3, r2, #0
	cmp r1, #0
	beq _0219E7B2
	cmp r1, #1
	beq _0219E7CA
	pop {r4, pc}
_0219E7B2:
	add r1, r3, #0
	add r0, r3, #0
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	add r1, #0x3c
	blx r3
	cmp r0, #0
	beq _0219E7D0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219E7CA:
	ldr r1, _0219E7D4 ; =ovy259_219e7d8
	bl sub_0219C1BC
_0219E7D0:
	pop {r4, pc}
	nop
_0219E7D4: .word ovy259_219e7d8
	thumb_func_end ovy259_219e7a0

	thumb_func_start ovy259_219e7d8
ovy259_219e7d8: ; 0x0219E7D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [r4, #0x40]
	mov r1, #0
	mov r5, #0
	bl sub_02199E24
	ldr r1, [r6]
	cmp r1, #5
	bhi _0219E8C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219E7FE: ; jump table
	.short _0219E80A - _0219E7FE - 2 ; case 0
	.short _0219E820 - _0219E7FE - 2 ; case 1
	.short _0219E836 - _0219E7FE - 2 ; case 2
	.short _0219E84A - _0219E7FE - 2 ; case 3
	.short _0219E894 - _0219E7FE - 2 ; case 4
	.short _0219E8B6 - _0219E7FE - 2 ; case 5
_0219E80A:
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x38]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ovy259_2199e60
	ldr r0, [r6]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219E820:
	ldr r1, [r4, #0x40]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219E8C4
	str r5, [r4, #0x58]
	ldr r0, [r6]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219E836:
	ldr r1, [r4, #0x58]
	add r0, r1, #1
	str r0, [r4, #0x58]
	cmp r1, #0xf
	bls _0219E8C4
	ldr r0, [r6]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219E84A:
	add r7, sp, #0
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x24
	blx MI_CpuFill8
	ldr r0, [r4, #0x3c]
	str r0, [sp]
	ldr r0, [r4, #0x44]
	str r0, [sp, #4]
	ldr r0, [r4, #0x38]
	str r0, [sp, #8]
	ldr r1, [r4, #0x30]
	str r1, [sp, #0x1c]
	ldr r0, [r4, #0x54]
	cmp r1, #0
	str r0, [sp, #0x20]
	bls _0219E880
_0219E86E:
	lsl r2, r5, #2
	add r0, r4, r2
	ldr r1, [r0, #0x20]
	add r0, r7, r2
	str r1, [r0, #0xc]
	ldr r0, [r4, #0x30]
	add r5, r5, #1
	cmp r5, r0
	blo _0219E86E
_0219E880:
	ldrh r1, [r4]
	add r0, sp, #0
	bl ovy259_219c1d0
	str r0, [r4, #0x50]
	ldr r0, [r6]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219E894:
	ldr r0, [r4, #0x50]
	bl ovy259_219c3c8
	ldr r0, [r4, #0x50]
	bl sub_0219C558
	cmp r0, #0
	beq _0219E8C4
	ldr r0, [r4, #0x50]
	bl sub_0219C55C
	str r0, [r4, #0x54]
	ldr r0, [r6]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219E8B6:
	ldr r0, [r4, #0x50]
	bl ovy259_219c384
	ldr r1, _0219E8C8 ; =ovy259_219e8cc
	add r0, r7, #0
	bl sub_0219C1BC
_0219E8C4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E8C8: .word ovy259_219e8cc
	thumb_func_end ovy259_219e7d8

	thumb_func_start ovy259_219e8cc
ovy259_219e8cc: ; 0x0219E8CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r3, r2, #0
	cmp r1, #0
	beq _0219E8DE
	cmp r1, #1
	beq _0219E8FC
	pop {r3, r4, r5, pc}
_0219E8DE:
	ldr r5, [r3, #0x54]
	add r1, r3, #0
	lsl r5, r5, #2
	add r0, r3, #0
	ldr r2, [r3, #4]
	add r3, r3, r5
	ldr r3, [r3, #0xc]
	add r1, #0x3c
	blx r3
	cmp r0, #0
	beq _0219E902
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0219E8FC:
	ldr r1, _0219E904 ; =ovy259_219e7d8
	bl sub_0219C1BC
_0219E902:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E904: .word ovy259_219e7d8
	thumb_func_end ovy259_219e8cc

	thumb_func_start ovy259_219e908
ovy259_219e908: ; 0x0219E908
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_219e990
	str r0, [r5]
	ldr r0, _0219E978 ; =0x0219E9B1
	str r0, [r5, #0x18]
	ldr r0, _0219E97C ; =ovy259_219e9bc
	str r0, [r5, #4]
	ldr r0, _0219E980 ; =ovy259_219ea18
	str r0, [r5, #8]
	mov r0, #0x1a
	str r0, [r5, #0x1c]
	ldr r0, _0219E984 ; =ovy259_219ea74
	str r0, [r5, #0xc]
	mov r0, #0x1b
	str r0, [r5, #0x20]
	add r0, r6, #0
	bl sub_02017394
	mov r1, #0x96
	lsl r1, r1, #4
	bl sub_020191AC
	cmp r0, #0
	beq _0219E962
	ldr r0, _0219E988 ; =ovy259_219ebe0
	str r0, [r5, #0x10]
	mov r0, #0x1c
	str r0, [r5, #0x24]
	ldr r0, _0219E98C ; =ovy259_219edb4
	str r0, [r5, #0x14]
	mov r0, #0x1d
	str r0, [r5, #0x28]
	mov r0, #4
	b _0219E96C
_0219E962:
	ldr r0, _0219E98C ; =ovy259_219edb4
	str r0, [r5, #0x10]
	mov r0, #0x1d
	str r0, [r5, #0x24]
	mov r0, #3
_0219E96C:
	str r0, [r5, #0x2c]
	mov r0, #0x33
	str r0, [r5, #0x30]
	str r4, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E978: .word 0x0219E9B1
_0219E97C: .word ovy259_219e9bc
_0219E980: .word ovy259_219ea18
_0219E984: .word ovy259_219ea74
_0219E988: .word ovy259_219ebe0
_0219E98C: .word ovy259_219edb4
	thumb_func_end ovy259_219e908

	thumb_func_start ovy259_219e990
ovy259_219e990: ; 0x0219E990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x82
	str r0, [sp]
	ldr r3, _0219E9AC ; =0x021A0A14
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	strh r4, [r0, #0x10]
	str r5, [r0, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E9AC: .word 0x021A0A14
	thumb_func_end ovy259_219e990
_0219E9B0:
	.byte 0x01, 0x4B, 0x10, 0x1C, 0x18, 0x47, 0xC0, 0x46, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy259_219e9bc
ovy259_219e9bc: ; 0x0219E9BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219E9DE
	cmp r1, #1
	beq _0219EA00
	cmp r1, #2
	beq _0219EA0C
	b _0219EA12
_0219E9DE:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl ovy259_219e4a4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219E9F8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EA12
_0219EA00:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EA12
	b _0219E9F8
_0219EA0C:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EA12:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219e9bc

	thumb_func_start ovy259_219ea18
ovy259_219ea18: ; 0x0219EA18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219EA3A
	cmp r1, #1
	beq _0219EA5C
	cmp r1, #2
	beq _0219EA68
	b _0219EA6E
_0219EA3A:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl ovy259_219e4b0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219EA54:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EA6E
_0219EA5C:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EA6E
	b _0219EA54
_0219EA68:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EA6E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219ea18

	thumb_func_start ovy259_219ea74
ovy259_219ea74: ; 0x0219EA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r6, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #7
	bhi _0219EB32
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219EA9A: ; jump table
	.short _0219EAAA - _0219EA9A - 2 ; case 0
	.short _0219EAC2 - _0219EA9A - 2 ; case 1
	.short _0219EAD4 - _0219EA9A - 2 ; case 2
	.short _0219EAE2 - _0219EA9A - 2 ; case 3
	.short _0219EB1E - _0219EA9A - 2 ; case 4
	.short _0219EB44 - _0219EA9A - 2 ; case 5
	.short _0219EB54 - _0219EA9A - 2 ; case 6
	.short _0219EBCC - _0219EA9A - 2 ; case 7
_0219EAAA:
	ldr r0, [r5]
	bl sub_0219B858
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x1e
_0219EAB6:
	bl ovy259_2199e60
	ldr r0, [r4]
	add r0, r0, #1
_0219EABE:
	str r0, [r4]
	b _0219EBD8
_0219EAC2:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EB32
	str r6, [r4, #4]
_0219EACE:
	ldr r0, [r4]
	add r0, r0, #1
_0219EAD2:
	b _0219EABE
_0219EAD4:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	cmp r2, #0xf
	bls _0219EBD8
	add r0, r1, #1
	b _0219EAD2
_0219EAE2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219EAF6
	mov r1, #1
	bl ovy259_219cd80
	ldr r0, [r4, #8]
	bl sub_0219CE0C
	b _0219EB1C
_0219EAF6:
	add r7, sp, #8
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_0201735C
	str r0, [sp, #0x10]
	ldrh r1, [r4, #0x10]
	add r0, r7, #0
	bl ovy259_219c770
	str r0, [r4, #8]
_0219EB1C:
	b _0219EACE
_0219EB1E:
	ldr r0, [r4, #8]
	bl ovy259_219cb98
	ldr r0, [r4, #8]
	bl sub_0219CE24
	cmp r0, #1
	beq _0219EB34
	cmp r0, #2
	beq _0219EB40
_0219EB32:
	b _0219EBD8
_0219EB34:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ovy259_219cd80
	mov r0, #6
	b _0219EAD2
_0219EB40:
	mov r0, #5
	b _0219EAD2
_0219EB44:
	ldr r0, [r4, #8]
	bl ovy259_219cad8
	add sp, #0x14
	str r6, [r4, #8]
	str r6, [r4]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219EB54:
	ldr r0, [r5]
	bl sub_0219B858
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl sub_0219CE28
	mov r1, #9
	add r2, r6, #0
	str r0, [sp]
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219EB74
	mov r6, #0x1f
	b _0219EBB2
_0219EB74:
	cmp r0, #1
	blo _0219EB80
	cmp r0, #0x31
	bhi _0219EB80
	mov r6, #0x20
	b _0219EBB2
_0219EB80:
	cmp r0, #0x32
	blo _0219EB8C
	cmp r0, #0x63
	bhi _0219EB8C
	mov r6, #0x21
	b _0219EBB2
_0219EB8C:
	cmp r0, #0x64
	blo _0219EB98
	cmp r0, #0x95
	bhi _0219EB98
	mov r6, #0x22
	b _0219EBB2
_0219EB98:
	cmp r0, #0x96
	blo _0219EBA4
	cmp r0, #0xc7
	bhi _0219EBA4
	mov r6, #0x23
	b _0219EBB2
_0219EBA4:
	cmp r0, #0xc8
	blo _0219EBB0
	cmp r0, #0xfe
	bhi _0219EBB0
	mov r6, #0x24
	b _0219EBB2
_0219EBB0:
	mov r6, #0x25
_0219EBB2:
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ovy259_219baec
	ldr r0, [r5]
	ldr r1, [sp]
	mov r2, #1
	bl sub_0219BB14
	add r0, r7, #0
	ldr r1, [sp, #4]
	add r2, r6, #0
	b _0219EAB6
_0219EBCC:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EBD8
	str r6, [r4]
_0219EBD8:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219ea74

	thumb_func_start ovy259_219ebe0
ovy259_219ebe0: ; 0x0219EBE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r0, [r7, #4]
	add r5, r2, #0
	mov r1, #0
	mov r4, #0
	bl sub_02199E24
	ldr r1, [r5]
	str r0, [sp, #0x14]
	cmp r1, #9
	bhi _0219EC9C
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219EC06: ; jump table
	.short _0219EC1A - _0219EC06 - 2 ; case 0
	.short _0219EC30 - _0219EC06 - 2 ; case 1
	.short _0219EC3E - _0219EC06 - 2 ; case 2
	.short _0219EC4C - _0219EC06 - 2 ; case 3
	.short _0219EC88 - _0219EC06 - 2 ; case 4
	.short _0219ECAE - _0219EC06 - 2 ; case 5
	.short _0219ECBE - _0219EC06 - 2 ; case 6
	.short _0219ED16 - _0219EC06 - 2 ; case 7
	.short _0219ED24 - _0219EC06 - 2 ; case 8
	.short _0219ED9E - _0219EC06 - 2 ; case 9
_0219EC1A:
	ldr r0, [r7]
	bl sub_0219B858
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0x26
	bl ovy259_2199e60
_0219EC2A:
	ldr r0, [r5]
	add r0, r0, #1
_0219EC2E:
	b _0219ED12
_0219EC30:
	ldr r1, [r7, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EC9C
	str r4, [r5, #4]
	b _0219EC2A
_0219EC3E:
	ldr r2, [r5, #4]
	add r0, r2, #1
	str r0, [r5, #4]
	cmp r2, #0xf
	bls _0219EC9C
	add r0, r1, #1
	b _0219EC2E
_0219EC4C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219EC60
	mov r1, #1
	bl ovy259_219cd80
	ldr r0, [r5, #8]
	bl sub_0219CE0C
	b _0219EC86
_0219EC60:
	add r6, sp, #0x18
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r0, [r7]
	str r0, [sp, #0x18]
	ldr r0, [r7, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0201735C
	str r0, [sp, #0x20]
	ldrh r1, [r5, #0x10]
	add r0, r6, #0
	bl ovy259_219c770
	str r0, [r5, #8]
_0219EC86:
	b _0219EC2A
_0219EC88:
	ldr r0, [r5, #8]
	bl ovy259_219cb98
	ldr r0, [r5, #8]
	bl sub_0219CE24
	cmp r0, #1
	beq _0219EC9E
	cmp r0, #2
	beq _0219ECAA
_0219EC9C:
	b _0219EDAA
_0219EC9E:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ovy259_219cd80
	mov r0, #6
	b _0219EC2E
_0219ECAA:
	mov r0, #5
	b _0219EC2E
_0219ECAE:
	ldr r0, [r5, #8]
	bl ovy259_219cad8
	add sp, #0x24
	str r4, [r5, #8]
	str r4, [r5]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219ECBE:
	ldr r0, [r7]
	bl sub_0219B858
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	bl sub_0219CE28
	str r0, [sp, #0xc]
	add r6, r4, #0
_0219ECD0:
	add r1, r6, #0
	ldr r0, [sp, #0xc]
	add r1, #0xd
	mov r2, #0
	bl sub_0201CCF8
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, #6
	blt _0219ECD0
	ldr r0, _0219EDB0 ; =0x000001FE
	cmp r4, r0
	bne _0219ECEE
	mov r4, #0x28
	b _0219ECF0
_0219ECEE:
	mov r4, #0x27
_0219ECF0:
	ldr r0, [r7]
	ldr r1, [r5, #0xc]
	bl ovy259_219baec
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	mov r2, #1
	bl sub_0219BB14
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	lsl r2, r4, #0x10
_0219ED08:
	lsr r2, r2, #0x10
	bl ovy259_2199e60
	ldr r0, [r5]
	add r0, r0, #1
_0219ED12:
	str r0, [r5]
	b _0219EDAA
_0219ED16:
	ldr r1, [r7, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EDAA
	mov r0, #8
	b _0219EC2E
_0219ED24:
	ldr r0, [r7]
	bl sub_0219B858
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	bl sub_0219CE28
	str r0, [sp, #4]
	str r4, [sp]
	add r6, r4, #0
_0219ED38:
	add r1, r6, #0
	ldr r0, [sp, #4]
	add r1, #0xd
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp]
	add r2, r6, #0
	add r1, r1, r0
	add r2, #0x2b
	str r1, [sp]
	cmp r0, #0xfc
	blo _0219ED64
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r7]
	ldr r1, [sp, #8]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy259_219bb24
	add r4, r4, #1
_0219ED64:
	add r6, r6, #1
	cmp r6, #6
	blt _0219ED38
	cmp r4, #1
	bne _0219ED7E
	ldr r1, _0219EDB0 ; =0x000001FE
	ldr r0, [sp]
	cmp r0, r1
	bne _0219ED7A
	mov r2, #0x29
	b _0219ED96
_0219ED7A:
	mov r2, #0x31
	b _0219ED96
_0219ED7E:
	cmp r4, #2
	bne _0219ED92
	ldr r1, _0219EDB0 ; =0x000001FE
	ldr r0, [sp]
	cmp r0, r1
	bne _0219ED8E
	mov r2, #0x2a
	b _0219ED96
_0219ED8E:
	mov r2, #0x32
	b _0219ED96
_0219ED92:
	mov r0, #0
	b _0219EC2E
_0219ED96:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	b _0219ED08
_0219ED9E:
	ldr r1, [r7, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EDAA
	str r4, [r5]
_0219EDAA:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EDB0: .word 0x000001FE
	thumb_func_end ovy259_219ebe0

	thumb_func_start ovy259_219edb4
ovy259_219edb4: ; 0x0219EDB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219EDD6
	cmp r1, #1
	beq _0219EDF8
	cmp r1, #2
	beq _0219EE04
	b _0219EE12
_0219EDD6:
	ldr r0, [r5]
	bl sub_0219B858
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl ovy259_219e4bc
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ovy259_2199e60
_0219EDF0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EE12
_0219EDF8:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EE12
	b _0219EDF0
_0219EE04:
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EE12:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219edb4

	thumb_func_start ovy259_219ee18
ovy259_219ee18: ; 0x0219EE18
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	add r6, r3, #0
	blx MI_CpuFill8
	add r1, sp, #0x18
	ldrh r1, [r1]
	add r0, r6, #0
	bl ovy259_219ee80
	str r0, [r5]
	ldr r0, _0219EE6C ; =ovy259_219eebc
	add r1, r6, #0
	str r0, [r5, #0x18]
	ldr r0, _0219EE70 ; =ovy259_219eed0
	mov r2, #0
	str r0, [r5, #4]
	ldr r0, _0219EE74 ; =ovy259_219ef2c
	str r4, [r5, #0x34]
	str r0, [r5, #8]
	mov r0, #0x34
	str r0, [r5, #0x1c]
	ldr r0, _0219EE78 ; =ovy259_219ef88
	str r0, [r5, #0xc]
	mov r0, #0x35
	str r0, [r5, #0x20]
	ldr r0, _0219EE7C ; =ovy259_219efe8
	str r0, [r5, #0x10]
	mov r0, #0x36
	str r0, [r5, #0x24]
	mov r0, #3
	str r0, [r5, #0x2c]
	mov r0, #0x37
	str r0, [r5, #0x30]
	add r0, r7, #0
	bl ovy259_219bb54
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EE6C: .word ovy259_219eebc
_0219EE70: .word ovy259_219eed0
_0219EE74: .word ovy259_219ef2c
_0219EE78: .word ovy259_219ef88
_0219EE7C: .word ovy259_219efe8
	thumb_func_end ovy259_219ee18

	thumb_func_start ovy259_219ee80
ovy259_219ee80: ; 0x0219EE80
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x7a
	str r0, [sp]
	ldr r3, _0219EEB4 ; =0x021A0A30
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4, #0x10]
	ldr r2, _0219EEB8 ; =0x0000018A
	mov r0, #0
	mov r1, #2
	add r3, r5, #0
	str r6, [r4, #8]
	bl GFL_MsgSysLoadData
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219EEB4: .word 0x021A0A30
_0219EEB8: .word 0x0000018A
	thumb_func_end ovy259_219ee80

	thumb_func_start ovy259_219eebc
ovy259_219eebc: ; 0x0219EEBC
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219eebc

	thumb_func_start ovy259_219eed0
ovy259_219eed0: ; 0x0219EED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219EEF2
	cmp r1, #1
	beq _0219EF14
	cmp r1, #2
	beq _0219EF20
	b _0219EF26
_0219EEF2:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl ovy259_219e4a4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219EF0C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EF26
_0219EF14:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EF26
	b _0219EF0C
_0219EF20:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EF26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219eed0

	thumb_func_start ovy259_219ef2c
ovy259_219ef2c: ; 0x0219EF2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219EF4E
	cmp r1, #1
	beq _0219EF70
	cmp r1, #2
	beq _0219EF7C
	b _0219EF82
_0219EF4E:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl ovy259_219e4b0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219EF68:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EF82
_0219EF70:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EF82
	b _0219EF68
_0219EF7C:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EF82:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219ef2c

	thumb_func_start ovy259_219ef88
ovy259_219ef88: ; 0x0219EF88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219EFAA
	cmp r1, #1
	beq _0219EFD0
	cmp r1, #2
	beq _0219EFDC
	b _0219EFE2
_0219EFAA:
	ldr r0, [r5]
	bl sub_0219B858
	ldr r0, [r4, #8]
	bl sub_020171F4
	bl sub_02017544
	bl sub_02018C80
	add r2, r0, #0
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ovy259_2199e60
_0219EFC8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219EFE2
_0219EFD0:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219EFE2
	b _0219EFC8
_0219EFDC:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EFE2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219ef88

	thumb_func_start ovy259_219efe8
ovy259_219efe8: ; 0x0219EFE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219F00A
	cmp r1, #1
	beq _0219F02C
	cmp r1, #2
	beq _0219F038
	b _0219F046
_0219F00A:
	ldr r0, [r5]
	bl sub_0219B858
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl ovy259_219e4bc
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ovy259_2199e60
_0219F024:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F046
_0219F02C:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F046
	b _0219F024
_0219F038:
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F046:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219efe8

	thumb_func_start ovy259_219f04c
ovy259_219f04c: ; 0x0219F04C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_219f0b4
	str r0, [r5]
	ldr r0, _0219F09C ; =ovy259_219f104
	str r4, [r5, #0x34]
	str r0, [r5, #0x18]
	ldr r0, _0219F0A0 ; =ovy259_219f124
	str r0, [r5, #4]
	ldr r0, _0219F0A4 ; =ovy259_219f180
	str r0, [r5, #8]
	mov r0, #9
	str r0, [r5, #0x1c]
	ldr r0, _0219F0A8 ; =ovy259_219f1dc
	str r0, [r5, #0xc]
	mov r0, #0xa
	str r0, [r5, #0x20]
	ldr r0, _0219F0AC ; =ovy259_219f308
	str r0, [r5, #0x10]
	mov r0, #0xb
	str r0, [r5, #0x24]
	ldr r0, _0219F0B0 ; =ovy259_219f430
	str r0, [r5, #0x14]
	mov r0, #0xc
	str r0, [r5, #0x28]
	mov r0, #4
	str r0, [r5, #0x2c]
	mov r0, #0xe
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F09C: .word ovy259_219f104
_0219F0A0: .word ovy259_219f124
_0219F0A4: .word ovy259_219f180
_0219F0A8: .word ovy259_219f1dc
_0219F0AC: .word ovy259_219f308
_0219F0B0: .word ovy259_219f430
	thumb_func_end ovy259_219f04c

	thumb_func_start ovy259_219f0b4
ovy259_219f0b4: ; 0x0219F0B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r6, #0x56
	add r7, r0, #0
	lsl r6, r6, #2
	ldr r3, _0219F100 ; =0x021A0A4C
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #1
	str r6, [sp]
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r6, #0
	strh r5, [r4, #0x1c]
	mov r0, #0
	mov r1, #2
	add r2, #0x33
	add r3, r5, #0
	str r7, [r4, #0xc]
	bl GFL_MsgSysLoadData
	add r6, #0x5a
	str r0, [r4, #0x10]
	mov r0, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02020BE4
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F100: .word 0x021A0A4C
	thumb_func_end ovy259_219f0b4

	thumb_func_start ovy259_219f104
ovy259_219f104: ; 0x0219F104
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x18]
	bl GFL_ArcToolFree
	ldr r0, [r4, #0x14]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x10]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219f104

	thumb_func_start ovy259_219f124
ovy259_219f124: ; 0x0219F124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219F144
	cmp r1, #1
	beq _0219F166
	cmp r1, #2
	beq _0219F172
	b _0219F17A
_0219F144:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl ovy259_219e4a4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219F15E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F17A
_0219F166:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F17A
	b _0219F15E
_0219F172:
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F17A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f124

	thumb_func_start ovy259_219f180
ovy259_219f180: ; 0x0219F180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219F1A0
	cmp r1, #1
	beq _0219F1C2
	cmp r1, #2
	beq _0219F1CE
	b _0219F1D6
_0219F1A0:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl ovy259_219e4b0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219F1BA:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F1D6
_0219F1C2:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F1D6
	b _0219F1BA
_0219F1CE:
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F1D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f180

	thumb_func_start ovy259_219f1dc
ovy259_219f1dc: ; 0x0219F1DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r6, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #7
	bhi _0219F29A
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219F202: ; jump table
	.short _0219F212 - _0219F202 - 2 ; case 0
	.short _0219F22A - _0219F202 - 2 ; case 1
	.short _0219F23C - _0219F202 - 2 ; case 2
	.short _0219F24A - _0219F202 - 2 ; case 3
	.short _0219F286 - _0219F202 - 2 ; case 4
	.short _0219F2AC - _0219F202 - 2 ; case 5
	.short _0219F2BC - _0219F202 - 2 ; case 6
	.short _0219F2F4 - _0219F202 - 2 ; case 7
_0219F212:
	ldr r0, [r5]
	bl sub_0219B858
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0xd
_0219F21E:
	bl ovy259_2199e60
	ldr r0, [r4]
	add r0, r0, #1
_0219F226:
	str r0, [r4]
	b _0219F300
_0219F22A:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F300
	str r6, [r4, #4]
_0219F236:
	ldr r0, [r4]
	add r0, r0, #1
_0219F23A:
	b _0219F226
_0219F23C:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	cmp r2, #0xf
	bls _0219F300
	add r0, r1, #1
	b _0219F23A
_0219F24A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219F25E
	mov r1, #1
	bl ovy259_219cd80
	ldr r0, [r4, #8]
	bl sub_0219CE0C
	b _0219F284
_0219F25E:
	add r7, sp, #4
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r0, [r5]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0201735C
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x1c]
	add r0, r7, #0
	bl ovy259_219c770
	str r0, [r4, #8]
_0219F284:
	b _0219F236
_0219F286:
	ldr r0, [r4, #8]
	bl ovy259_219cb98
	ldr r0, [r4, #8]
	bl sub_0219CE24
	cmp r0, #1
	beq _0219F29C
	cmp r0, #2
	beq _0219F2A8
_0219F29A:
	b _0219F300
_0219F29C:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ovy259_219cd80
	mov r0, #6
	b _0219F23A
_0219F2A8:
	mov r0, #5
	b _0219F23A
_0219F2AC:
	ldr r0, [r4, #8]
	bl ovy259_219cad8
	add sp, #0x10
	str r6, [r4, #8]
	str r6, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F2BC:
	ldr r0, [r4, #8]
	bl sub_0219CE28
	mov r1, #5
	add r2, r6, #0
	str r0, [sp]
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x18]
	lsr r1, r1, #0x10
	bl ovy259_219f494
	add r6, r0, #0
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ovy259_219baec
	ldr r0, [r5]
	ldr r1, [sp]
	mov r2, #1
	bl sub_0219BB14
	add r0, r7, #0
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	b _0219F21E
_0219F2F4:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F300
	str r6, [r4]
_0219F300:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f1dc

	thumb_func_start ovy259_219f308
ovy259_219f308: ; 0x0219F308
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #9
	bls _0219F322
	b _0219F426
_0219F322:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219F32E: ; jump table
	.short _0219F342 - _0219F32E - 2 ; case 0
	.short _0219F398 - _0219F32E - 2 ; case 1
	.short _0219F3AA - _0219F32E - 2 ; case 2
	.short _0219F3B8 - _0219F32E - 2 ; case 3
	.short _0219F3CC - _0219F32E - 2 ; case 4
	.short _0219F3D8 - _0219F32E - 2 ; case 5
	.short _0219F3E2 - _0219F32E - 2 ; case 6
	.short _0219F3F8 - _0219F32E - 2 ; case 7
	.short _0219F3FE - _0219F32E - 2 ; case 8
	.short _0219F41C - _0219F32E - 2 ; case 9
_0219F342:
	ldr r0, [r4, #0xc]
	bl sub_0200D190
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02017934
	bl sub_02017A5C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x22
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x24
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0x1c]
	add r0, r7, #0
	add r3, sp, #0x10
	bl ovy259_219f558
	ldrh r1, [r4, #0x20]
	ldr r0, [r5]
	mov r2, #3
	mov r3, #0
	bl ovy259_219bb74
	add r2, sp, #0x10
	ldrh r2, [r2]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
_0219F38C:
	bl ovy259_2199e6c
_0219F390:
	ldr r0, [r4]
	add r0, r0, #1
_0219F394:
	str r0, [r4]
	b _0219F426
_0219F398:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	ldr r0, [r5]
	bl ovy259_219bcd8
	cmp r0, #0
	beq _0219F426
	b _0219F390
_0219F3AA:
	bl sub_02005ED4
	ldrh r0, [r4, #0x22]
	ldr r1, _0219F42C ; =0x0000FFFF
	bl sub_02005DF4
	b _0219F390
_0219F3B8:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219F426
	ldr r0, [r5]
	bl ovy259_219bdf8
	bl sub_02005F0C
	b _0219F390
_0219F3CC:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F426
	b _0219F390
_0219F3D8:
	ldrh r2, [r4, #0x1e]
	ldr r1, [r4, #0x14]
	bl ovy259_2199e60
	b _0219F390
_0219F3E2:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F426
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219F3F4
	b _0219F390
_0219F3F4:
	mov r0, #9
	b _0219F394
_0219F3F8:
	ldr r1, [r4, #0x14]
	mov r2, #0x22
	b _0219F38C
_0219F3FE:
	ldr r0, [r5]
	bl ovy259_219bcd8
	cmp r0, #0
	beq _0219F40E
	ldr r0, [r5]
	bl ovy259_219bdf8
_0219F40E:
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F426
	b _0219F390
_0219F41C:
	mov r0, #0
	str r0, [r4]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219F426:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F42C: .word 0x0000FFFF
	thumb_func_end ovy259_219f308

	thumb_func_start ovy259_219f430
ovy259_219f430: ; 0x0219F430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219F452
	cmp r1, #1
	beq _0219F474
	cmp r1, #2
	beq _0219F480
	b _0219F48E
_0219F452:
	ldr r0, [r5]
	bl sub_0219B858
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl ovy259_219e4bc
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ovy259_2199e60
_0219F46C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F48E
_0219F474:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F48E
	b _0219F46C
_0219F480:
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F48E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f430

	thumb_func_start ovy259_219f494
ovy259_219f494: ; 0x0219F494
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, sp, #0
	mov r0, #0
	strh r0, [r4]
	ldr r0, _0219F518 ; =0x021A07C4
	mov r1, #0xb
	add r2, r5, #0
	add r3, sp, #0
	mov r7, #0xb
	bl ovy259_219f52c
	cmp r0, #0
	beq _0219F4B6
	ldrh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219F4B6:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_02020BF0
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #1
	bl sub_02020BF0
	add r2, r0, #0
	cmp r4, #0x14
	bgt _0219F4E8
	bge _0219F500
	cmp r4, #8
	bgt _0219F50C
	cmp r4, #6
	blt _0219F50C
	beq _0219F4EE
	cmp r4, #8
	beq _0219F4FA
	b _0219F50C
_0219F4E8:
	cmp r4, #0x15
	beq _0219F506
	b _0219F50C
_0219F4EE:
	ldr r0, _0219F51C ; =0x021A0798
	add r1, r7, #0
_0219F4F2:
	add r3, sp, #0
	bl ovy259_219f52c
	b _0219F510
_0219F4FA:
	ldr r0, _0219F520 ; =0x021A0778
	mov r1, #8
	b _0219F4F2
_0219F500:
	ldr r0, _0219F524 ; =0x021A0760
	mov r1, #2
	b _0219F4F2
_0219F506:
	ldr r0, _0219F528 ; =0x021A0768
	mov r1, #4
	b _0219F4F2
_0219F50C:
	add r0, sp, #0
	strh r4, [r0]
_0219F510:
	add r0, sp, #0
	ldrh r0, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F518: .word 0x021A07C4
_0219F51C: .word 0x021A0798
_0219F520: .word 0x021A0778
_0219F524: .word 0x021A0760
_0219F528: .word 0x021A0768
	thumb_func_end ovy259_219f494

	thumb_func_start ovy259_219f52c
ovy259_219f52c: ; 0x0219F52C
	push {r3, r4, r5, r6}
	mov r6, #0
	cmp r1, #0
	bls _0219F54E
_0219F534:
	lsl r4, r6, #2
	add r5, r0, r4
	ldrh r4, [r0, r4]
	cmp r4, r2
	bne _0219F548
	ldrh r0, [r5, #2]
	strh r0, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0219F548:
	add r6, r6, #1
	cmp r6, r1
	blo _0219F534
_0219F54E:
	mov r0, #0
	strh r0, [r3]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ovy259_219f52c

	thumb_func_start ovy259_219f558
ovy259_219f558: ; 0x0219F558
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x8d
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_020191AC
	cmp r0, #0
	add r3, sp, #0x10
	beq _0219F594
	ldr r0, [sp, #8]
	mov r1, #2
	strh r1, [r0]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r7, #0
	bl sub_0200DBDC
	b _0219F5C2
_0219F594:
	ldr r0, [sp, #8]
	mov r1, #1
	strh r1, [r0]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl sub_0200DBDC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200DA5C
	cmp r0, #0
	beq _0219F5C2
	add r0, r6, #0
	mov r1, #0x8d
	bl sub_020191D8
_0219F5C2:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200DA5C
	cmp r0, #0
	beq _0219F5DE
	add r0, r6, #0
	mov r1, #0x88
	bl sub_020191AC
	cmp r0, #0
	bne _0219F5DE
	mov r0, #1
	str r0, [r4]
_0219F5DE:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200DA44
	cmp r0, #0
	beq _0219F5FA
	add r0, r6, #0
	mov r1, #0x89
	bl sub_020191AC
	cmp r0, #0
	bne _0219F5FA
	mov r0, #1
	str r0, [r4]
_0219F5FA:
	add r0, r5, #0
	bl sub_0200DA2C
	cmp r0, #0
	beq _0219F614
	add r0, r6, #0
	mov r1, #0x8a
	bl sub_020191AC
	cmp r0, #0
	bne _0219F614
	mov r0, #1
	str r0, [r4]
_0219F614:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _0219F620
	add r0, sp, #0xc
	ldrh r0, [r0, #4]
	strh r0, [r1]
_0219F620:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _0219F62C
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r1]
_0219F62C:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0219F638
	add r0, sp, #0xc
	ldrh r0, [r0]
	strh r0, [r1]
_0219F638:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219f558

	thumb_func_start ovy259_219f63c
ovy259_219f63c: ; 0x0219F63C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_219f6a4
	str r0, [r5]
	ldr r0, _0219F68C ; =ovy259_219f6f0
	str r4, [r5, #0x34]
	str r0, [r5, #0x18]
	ldr r0, _0219F690 ; =ovy259_219f708
	str r0, [r5, #4]
	ldr r0, _0219F694 ; =ovy259_219f764
	str r0, [r5, #8]
	mov r0, #0x13
	str r0, [r5, #0x1c]
	ldr r0, _0219F698 ; =ovy259_219f7c0
	str r0, [r5, #0xc]
	mov r0, #0x14
	str r0, [r5, #0x20]
	ldr r0, _0219F69C ; =ovy259_219f8f8
	str r0, [r5, #0x10]
	mov r0, #0x15
	str r0, [r5, #0x24]
	ldr r0, _0219F6A0 ; =ovy259_219fa18
	str r0, [r5, #0x14]
	mov r0, #0x16
	str r0, [r5, #0x28]
	mov r0, #4
	str r0, [r5, #0x2c]
	mov r0, #0x19
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F68C: .word ovy259_219f6f0
_0219F690: .word ovy259_219f708
_0219F694: .word ovy259_219f764
_0219F698: .word ovy259_219f7c0
_0219F69C: .word ovy259_219f8f8
_0219F6A0: .word ovy259_219fa18
	thumb_func_end ovy259_219f63c

	thumb_func_start ovy259_219f6a4
ovy259_219f6a4: ; 0x0219F6A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x78
	str r0, [sp]
	ldr r3, _0219F6E8 ; =0x021A0A68
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4, #0x10]
	str r6, [r4, #0xc]
	ldr r6, _0219F6EC ; =0x0000018D
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x14]
	mov r0, #0
	mov r1, #2
	sub r2, r6, #1
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x18]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219F6E8: .word 0x021A0A68
_0219F6EC: .word 0x0000018D
	thumb_func_end ovy259_219f6a4

	thumb_func_start ovy259_219f6f0
ovy259_219f6f0: ; 0x0219F6F0
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x18]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x14]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy259_219f6f0

	thumb_func_start ovy259_219f708
ovy259_219f708: ; 0x0219F708
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219F72A
	cmp r1, #1
	beq _0219F74C
	cmp r1, #2
	beq _0219F758
	b _0219F75E
_0219F72A:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ovy259_219e4a4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219F744:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F75E
_0219F74C:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F75E
	b _0219F744
_0219F758:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F75E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f708

	thumb_func_start ovy259_219f764
ovy259_219f764: ; 0x0219F764
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219F786
	cmp r1, #1
	beq _0219F7A8
	cmp r1, #2
	beq _0219F7B4
	b _0219F7BA
_0219F786:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ovy259_219e4b0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219F7A0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F7BA
_0219F7A8:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F7BA
	b _0219F7A0
_0219F7B4:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F7BA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f764

	thumb_func_start ovy259_219f7c0
ovy259_219f7c0: ; 0x0219F7C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	str r0, [sp]
	cmp r1, #7
	bhi _0219F870
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219F7E4: ; jump table
	.short _0219F7F4 - _0219F7E4 - 2 ; case 0
	.short _0219F802 - _0219F7E4 - 2 ; case 1
	.short _0219F812 - _0219F7E4 - 2 ; case 2
	.short _0219F820 - _0219F7E4 - 2 ; case 3
	.short _0219F85C - _0219F7E4 - 2 ; case 4
	.short _0219F882 - _0219F7E4 - 2 ; case 5
	.short _0219F894 - _0219F7E4 - 2 ; case 6
	.short _0219F8E2 - _0219F7E4 - 2 ; case 7
_0219F7F4:
	ldr r0, [r5]
	bl sub_0219B858
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0x17
	b _0219F8D8
_0219F802:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F8F0
	mov r0, #0
	str r0, [r4, #4]
	b _0219F85A
_0219F812:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	cmp r2, #0xf
	bls _0219F8F0
	add r0, r1, #1
	b _0219F8EE
_0219F820:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219F834
	mov r1, #1
	bl ovy259_219cd80
	ldr r0, [r4, #8]
	bl sub_0219CE0C
	b _0219F85A
_0219F834:
	add r6, sp, #4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r0, [r5]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0201735C
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x10]
	add r0, r6, #0
	bl ovy259_219c770
	str r0, [r4, #8]
_0219F85A:
	b _0219F8DC
_0219F85C:
	ldr r0, [r4, #8]
	bl ovy259_219cb98
	ldr r0, [r4, #8]
	bl sub_0219CE24
	cmp r0, #1
	beq _0219F872
	cmp r0, #2
	beq _0219F87E
_0219F870:
	b _0219F8F0
_0219F872:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy259_219cd80
	mov r0, #6
	b _0219F8EE
_0219F87E:
	mov r0, #5
	b _0219F8EE
_0219F882:
	ldr r0, [r4, #8]
	bl ovy259_219cad8
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #8]
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F894:
	ldr r0, [r4, #8]
	bl sub_0219CE28
	add r6, r0, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xaf
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ovy259_219fa7c
	add r7, r0, #0
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ovy259_219baec
	ldr r0, [r5]
	add r1, r6, #0
	mov r2, #1
	bl sub_0219BB14
	ldr r0, [sp]
	ldr r1, [r4, #0x14]
	add r2, r7, #0
_0219F8D8:
	bl ovy259_2199e60
_0219F8DC:
	ldr r0, [r4]
	add r0, r0, #1
	b _0219F8EE
_0219F8E2:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219F8F0
	mov r0, #0
_0219F8EE:
	str r0, [r4]
_0219F8F0:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219f7c0

	thumb_func_start ovy259_219f8f8
ovy259_219f8f8: ; 0x0219F8F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r6, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #7
	bhi _0219FA12
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219F91E: ; jump table
	.short _0219F92E - _0219F91E - 2 ; case 0
	.short _0219F946 - _0219F91E - 2 ; case 1
	.short _0219F958 - _0219F91E - 2 ; case 2
	.short _0219F966 - _0219F91E - 2 ; case 3
	.short _0219F9A2 - _0219F91E - 2 ; case 4
	.short _0219F9C8 - _0219F91E - 2 ; case 5
	.short _0219F9D8 - _0219F91E - 2 ; case 6
	.short _0219FA06 - _0219F91E - 2 ; case 7
_0219F92E:
	ldr r0, [r5]
	bl sub_0219B858
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x18
_0219F93A:
	bl ovy259_2199e60
	ldr r0, [r4]
	add r0, r0, #1
_0219F942:
	str r0, [r4]
	b _0219FA12
_0219F946:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FA12
	str r6, [r4, #4]
_0219F952:
	ldr r0, [r4]
	add r0, r0, #1
_0219F956:
	b _0219F942
_0219F958:
	ldr r2, [r4, #4]
	add r0, r2, #1
	str r0, [r4, #4]
	cmp r2, #0xf
	bls _0219FA12
	add r0, r1, #1
	b _0219F956
_0219F966:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219F97A
	mov r1, #1
	bl ovy259_219cd80
	ldr r0, [r4, #8]
	bl sub_0219CE0C
	b _0219F9A0
_0219F97A:
	add r7, sp, #4
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0xc
	blx MI_CpuFill8
	ldr r0, [r5]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0201735C
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x10]
	add r0, r7, #0
	bl ovy259_219c770
	str r0, [r4, #8]
_0219F9A0:
	b _0219F952
_0219F9A2:
	ldr r0, [r4, #8]
	bl ovy259_219cb98
	ldr r0, [r4, #8]
	bl sub_0219CE24
	cmp r0, #1
	beq _0219F9B8
	cmp r0, #2
	beq _0219F9C4
	b _0219FA12
_0219F9B8:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ovy259_219cd80
	mov r0, #6
	b _0219F956
_0219F9C4:
	mov r0, #5
	b _0219F956
_0219F9C8:
	ldr r0, [r4, #8]
	bl ovy259_219cad8
	add sp, #0x10
	str r6, [r4, #8]
	str r6, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F9D8:
	ldr r0, [r4, #8]
	bl sub_0219CE28
	mov r1, #0xa
	add r2, r6, #0
	str r0, [sp]
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ovy259_219baec
	ldr r0, [r5]
	ldr r1, [sp]
	mov r2, #1
	bl sub_0219BB14
	add r0, r7, #0
	ldr r1, [r4, #0x18]
	add r2, r6, #0
	b _0219F93A
_0219FA06:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FA12
	str r6, [r4]
_0219FA12:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219f8f8

	thumb_func_start ovy259_219fa18
ovy259_219fa18: ; 0x0219FA18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219FA3A
	cmp r1, #1
	beq _0219FA5C
	cmp r1, #2
	beq _0219FA68
	b _0219FA76
_0219FA3A:
	ldr r0, [r5]
	bl sub_0219B858
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ovy259_219e4bc
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ovy259_2199e60
_0219FA54:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FA76
_0219FA5C:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FA76
	b _0219FA54
_0219FA68:
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FA76:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219fa18

	thumb_func_start ovy259_219fa7c
ovy259_219fa7c: ; 0x0219FA7C
	push {r4, r5}
	mov r5, #0
	cmp r0, r1
	bls _0219FA8C
	add r2, r0, #0
	add r0, r1, #0
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
_0219FA8C:
	mov r4, #0
	cmp r0, #0
	ble _0219FA9E
	mov r2, #0x11
_0219FA94:
	sub r3, r2, r4
	add r4, r4, #1
	add r5, r5, r3
	cmp r4, r0
	blt _0219FA94
_0219FA9E:
	sub r0, r1, r4
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy259_219fa7c

	thumb_func_start ovy259_219faac
ovy259_219faac: ; 0x0219FAAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_219fb08
	str r0, [r5]
	ldr r0, _0219FAF4 ; =0x0219FB29
	str r4, [r5, #0x34]
	str r0, [r5, #0x18]
	ldr r0, _0219FAF8 ; =ovy259_219fb34
	str r0, [r5, #4]
	ldr r0, _0219FAFC ; =ovy259_219fb90
	str r0, [r5, #8]
	mov r0, #0xf
	str r0, [r5, #0x1c]
	ldr r0, _0219FB00 ; =ovy259_219fbec
	str r0, [r5, #0xc]
	mov r0, #0x10
	str r0, [r5, #0x20]
	ldr r0, _0219FB04 ; =ovy259_219fc48
	str r0, [r5, #0x10]
	mov r0, #0x11
	str r0, [r5, #0x24]
	mov r0, #3
	str r0, [r5, #0x2c]
	mov r0, #0x12
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FAF4: .word 0x0219FB29
_0219FAF8: .word ovy259_219fb34
_0219FAFC: .word ovy259_219fb90
_0219FB00: .word ovy259_219fbec
_0219FB04: .word ovy259_219fc48
	thumb_func_end ovy259_219faac

	thumb_func_start ovy259_219fb08
ovy259_219fb08: ; 0x0219FB08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x6c
	str r0, [sp]
	ldr r3, _0219FB24 ; =0x021A0A84
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	strh r4, [r0, #0xc]
	str r5, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FB24: .word 0x021A0A84
	thumb_func_end ovy259_219fb08
_0219FB28:
	.byte 0x01, 0x4B, 0x10, 0x1C, 0x18, 0x47, 0xC0, 0x46
	.byte 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy259_219fb34
ovy259_219fb34: ; 0x0219FB34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219FB56
	cmp r1, #1
	beq _0219FB78
	cmp r1, #2
	beq _0219FB84
	b _0219FB8A
_0219FB56:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy259_219e4a4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219FB70:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FB8A
_0219FB78:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FB8A
	b _0219FB70
_0219FB84:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FB8A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219fb34

	thumb_func_start ovy259_219fb90
ovy259_219fb90: ; 0x0219FB90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219FBB2
	cmp r1, #1
	beq _0219FBD4
	cmp r1, #2
	beq _0219FBE0
	b _0219FBE6
_0219FBB2:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy259_219e4b0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219FBCC:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FBE6
_0219FBD4:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FBE6
	b _0219FBCC
_0219FBE0:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FBE6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219fb90

	thumb_func_start ovy259_219fbec
ovy259_219fbec: ; 0x0219FBEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r6, r0, #0
	cmp r1, #0
	beq _0219FC0E
	cmp r1, #1
	beq _0219FC30
	cmp r1, #2
	beq _0219FC3C
	b _0219FC42
_0219FC0E:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy259_219e4c8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy259_2199e60
_0219FC28:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FC42
_0219FC30:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FC42
	b _0219FC28
_0219FC3C:
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FC42:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219fbec

	thumb_func_start ovy259_219fc48
ovy259_219fc48: ; 0x0219FC48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	bl sub_02199E24
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219FC6A
	cmp r1, #1
	beq _0219FC8C
	cmp r1, #2
	beq _0219FC98
	b _0219FCA6
_0219FC6A:
	ldr r0, [r5]
	bl sub_0219B858
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy259_219e4bc
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ovy259_2199e60
_0219FC84:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FCA6
_0219FC8C:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FCA6
	b _0219FC84
_0219FC98:
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FCA6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_219fc48

	thumb_func_start ovy259_219fcac
ovy259_219fcac: ; 0x0219FCAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	add r6, r3, #0
	blx MI_CpuFill8
	add r2, sp, #0x18
	ldrh r2, [r2, #4]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ovy259_219fdc4
	str r0, [r5]
	ldr r0, _0219FD34 ; =0x0219FDFD
	mov r1, #5
	str r0, [r5, #0x18]
	add r0, r6, #0
	bl sub_0219E62C
	bl ovy259_21a030c
	bl sub_021A0348
	add r4, r0, #0
	add r0, r6, #0
	bl ovy259_219e638
	str r0, [sp]
	cmp r4, #2
	bne _0219FCF4
	ldr r0, _0219FD38 ; =ovy259_21a003c
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FCF4:
	cmp r4, #4
	beq _0219FCFC
	cmp r4, #1
	bne _0219FD02
_0219FCFC:
	ldr r0, _0219FD3C ; =ovy259_21a00bc
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FD02:
	ldr r0, _0219FD40 ; =ovy259_219fe08
	mov r1, #5
	str r0, [r5, #4]
	ldr r0, _0219FD44 ; =ovy259_219fe14
	str r0, [r5, #8]
	mov r0, #0x38
	str r0, [r5, #0x1c]
	ldr r0, _0219FD48 ; =ovy259_219fe54
	str r0, [r5, #0xc]
	mov r0, #0x39
	str r0, [r5, #0x20]
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r6, #0
	bl ovy259_219e4c8
	ldr r1, [sp]
	str r0, [r5, #0x30]
	cmp r1, #1
	bne _0219FD2E
	add r0, #0x4e
	str r0, [r5, #0x30]
_0219FD2E:
	str r7, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FD34: .word 0x0219FDFD
_0219FD38: .word ovy259_21a003c
_0219FD3C: .word ovy259_21a00bc
_0219FD40: .word ovy259_219fe08
_0219FD44: .word ovy259_219fe14
_0219FD48: .word ovy259_219fe54
	thumb_func_end ovy259_219fcac

	thumb_func_start ovy259_219fd4c
ovy259_219fd4c: ; 0x0219FD4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy259_219e638
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_0219E62C
	bl ovy259_21a030c
	bl sub_021A0358
	cmp r0, #3
	bhi _0219FD7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FD76: ; jump table
	.short _0219FD7E - _0219FD76 - 2 ; case 0
	.short _0219FD82 - _0219FD76 - 2 ; case 1
	.short _0219FD8C - _0219FD76 - 2 ; case 2
	.short _0219FD96 - _0219FD76 - 2 ; case 3
_0219FD7E:
	mov r0, #8
	pop {r3, r4, r5, pc}
_0219FD82:
	mov r0, #9
	cmp r4, #0
	beq _0219FD9E
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0219FD8C:
	mov r0, #6
	cmp r4, #0
	beq _0219FD9E
	mov r0, #7
	pop {r3, r4, r5, pc}
_0219FD96:
	mov r0, #0xb
	cmp r4, #0
	beq _0219FD9E
	mov r0, #0xc
_0219FD9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_219fd4c

	thumb_func_start ovy259_219fda0
ovy259_219fda0: ; 0x0219FDA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy259_219e638
	add r4, r0, #0
	add r0, r5, #0
	bl ovy259_219e6f4
	cmp r0, #0
	beq _0219FDB8
	mov r0, #8
	pop {r3, r4, r5, pc}
_0219FDB8:
	mov r0, #9
	cmp r4, #0
	beq _0219FDC0
	mov r0, #0xa
_0219FDC0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy259_219fda0

	thumb_func_start ovy259_219fdc4
ovy259_219fdc4: ; 0x0219FDC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0xf8
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _0219FDF8 ; =0x021A0AA0
	add r0, r5, #0
	mov r1, #0x24
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4, #0x1c]
	add r0, r7, #0
	str r7, [r4, #0x14]
	bl sub_02017934
	bl sub_0200EC2C
	bl sub_0200EC38
	str r0, [r4, #0x20]
	str r6, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FDF8: .word 0x021A0AA0
	thumb_func_end ovy259_219fdc4
_0219FDFC:
	.byte 0x01, 0x4B, 0x10, 0x1C
	.byte 0x18, 0x47, 0xC0, 0x46, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy259_219fe08
ovy259_219fe08: ; 0x0219FE08
	push {r3, lr}
	add r3, r2, #0
	bl ovy259_219fe60
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219fe08

	thumb_func_start ovy259_219fe14
ovy259_219fe14: ; 0x0219FE14
	push {r4, lr}
	add r4, r2, #0
	ldr r3, [r4]
	cmp r3, #0
	beq _0219FE28
	cmp r3, #1
	beq _0219FE3A
	cmp r3, #2
	beq _0219FE46
	b _0219FE4E
_0219FE28:
	add r3, r4, #4
	bl ovy259_219fee0
	cmp r0, #0
	beq _0219FE4E
_0219FE32:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FE4E
_0219FE3A:
	add r3, r4, #4
	bl ovy259_219ff68
	cmp r0, #0
	beq _0219FE4E
	b _0219FE32
_0219FE46:
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0219FE4E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_219fe14

	thumb_func_start ovy259_219fe54
ovy259_219fe54: ; 0x0219FE54
	push {r3, lr}
	add r3, r2, #0
	bl ovy259_219ff68
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_219fe54

	thumb_func_start ovy259_219fe60
ovy259_219fe60: ; 0x0219FE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r3, #0
	mov r1, #0
	mov r6, #0
	bl sub_02199E24
	ldr r1, [r4]
	str r0, [sp, #4]
	cmp r1, #0
	beq _0219FE84
	cmp r1, #1
	beq _0219FEC6
	cmp r1, #2
	beq _0219FED2
	b _0219FEDA
_0219FE84:
	ldr r0, [r5]
	bl sub_0219B858
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl ovy259_219e638
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl ovy259_219e4a4
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0219E4A0
	add r1, r0, #0
	ldr r0, [r5]
	bl ovy259_219baec
	cmp r7, #1
	bne _0219FEB2
	add r6, #0x4e
_0219FEB2:
	lsl r2, r6, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsr r2, r2, #0x10
	bl ovy259_2199e60
_0219FEBE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FEDA
_0219FEC6:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FEDA
	b _0219FEBE
_0219FED2:
	add sp, #8
	str r6, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FEDA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219fe60

	thumb_func_start ovy259_219fee0
ovy259_219fee0: ; 0x0219FEE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r3, #0
	mov r1, #0
	add r6, r2, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	str r0, [sp, #4]
	cmp r1, #0
	beq _0219FF06
	cmp r1, #1
	beq _0219FF4E
	cmp r1, #2
	beq _0219FF5A
	b _0219FF62
_0219FF06:
	ldr r0, [r5]
	bl sub_0219B858
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl ovy259_219e638
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy259_219e6cc
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0219FF2E
	ldr r0, [r6, #0x20]
	ldr r1, [r5, #0xc]
	ldr r2, [r5]
	bl ovy259_21a0134
	str r0, [r6, #0xc]
_0219FF2E:
	ldr r2, [r6, #0xc]
	cmp r7, #1
	bne _0219FF36
	add r2, #0x4e
_0219FF36:
	lsl r2, r2, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsr r2, r2, #0x10
	bl ovy259_2199e60
	mov r0, #1
	str r0, [r6, #8]
_0219FF46:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219FF62
_0219FF4E:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _0219FF62
	b _0219FF46
_0219FF5A:
	add sp, #8
	str r7, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FF62:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219fee0

	thumb_func_start ovy259_219ff68
ovy259_219ff68: ; 0x0219FF68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r4, r3, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_02199E24
	ldr r1, [r4]
	str r0, [sp, #8]
	cmp r1, #0
	beq _0219FF8E
	cmp r1, #1
	beq _0219FFDA
	cmp r1, #2
	beq _0219FFE6
	b _021A0036
_0219FF8E:
	ldr r0, [r5]
	bl sub_0219B858
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ovy259_219e638
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl ovy259_219e4bc
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy259_21a0110
	sub r0, r0, #1
	cmp r0, #1
	bhi _0219FFBC
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0219FFBC
	mov r7, #0xf5
_0219FFBC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0219FFC8
	add r7, #0x4e
	lsl r0, r7, #0x10
	lsr r7, r0, #0x10
_0219FFC8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ovy259_2199e60
_0219FFD2:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A0036
_0219FFDA:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _021A0036
	b _0219FFD2
_0219FFE6:
	mov r0, #0
	str r0, [r4]
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _021A0024
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_0219E62C
	bl ovy259_21a030c
	ldr r0, [r5, #0xc]
	bl ovy259_21a0110
	add r4, r0, #0
	beq _021A001A
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0219E674
	sub r0, r4, #1
	cmp r0, #1
	bhi _021A001A
	ldr r0, [r5, #0xc]
	bl sub_0219E6B4
_021A001A:
	ldr r0, [r5, #0xc]
	mov r1, #5
	mov r2, #0x33
	bl ovy259_219e650
_021A0024:
	ldr r0, [r6, #0x14]
	bl sub_02017A78
	add r0, r7, #0
	bl sub_0219E794
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A0036:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy259_219ff68

	thumb_func_start ovy259_21a003c
ovy259_21a003c: ; 0x021A003C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	mov r1, #0
	mov r7, #0
	bl sub_02199E24
	ldr r1, [r4]
	str r0, [sp]
	cmp r1, #0
	beq _021A0060
	cmp r1, #1
	beq _021A0094
	cmp r1, #2
	beq _021A00A0
	b _021A00B6
_021A0060:
	ldr r0, [r5]
	bl sub_0219B858
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy259_219e638
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl ovy259_219e4b0
	add r2, r0, #0
	cmp r6, #1
	bne _021A0080
	add r2, #0x4e
_021A0080:
	lsl r2, r2, #0x10
	ldr r0, [sp]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ovy259_2199e60
_021A008C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A00B6
_021A0094:
	ldr r1, [r5, #4]
	bl ovy259_2199e78
	cmp r0, #0
	beq _021A00B6
	b _021A008C
_021A00A0:
	ldr r0, [r5, #0xc]
	mov r1, #5
	mov r2, #0x33
	str r7, [r4]
	bl ovy259_219e650
	add r0, r6, #0
	bl sub_0219E794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A00B6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_21a003c

	thumb_func_start ovy259_21a00bc
ovy259_21a00bc: ; 0x021A00BC
	push {r4, lr}
	add r4, r2, #0
	ldr r3, [r4]
	cmp r3, #3
	bhi _021A010C
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021A00D2: ; jump table
	.short _021A00DA - _021A00D2 - 2 ; case 0
	.short _021A00EC - _021A00D2 - 2 ; case 1
	.short _021A00F8 - _021A00D2 - 2 ; case 2
	.short _021A0104 - _021A00D2 - 2 ; case 3
_021A00DA:
	add r3, r4, #4
	bl ovy259_219fe60
	cmp r0, #0
	beq _021A010C
_021A00E4:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A010C
_021A00EC:
	add r3, r4, #4
	bl ovy259_219fee0
	cmp r0, #0
	beq _021A010C
	b _021A00E4
_021A00F8:
	add r3, r4, #4
	bl ovy259_219ff68
	cmp r0, #0
	beq _021A010C
	b _021A00E4
_021A0104:
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021A010C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy259_21a00bc

	thumb_func_start ovy259_21a0110
ovy259_21a0110: ; 0x021A0110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	bl sub_0219E62C
	bl ovy259_21a030c
	bl sub_021A0368
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0219E6C0
	cmp r0, #0
	beq _021A0130
	mov r4, #0
_021A0130:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy259_21a0110

	thumb_func_start ovy259_21a0134
ovy259_21a0134: ; 0x021A0134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	str r2, [sp, #8]
	bl ovy259_219e638
	add r0, r4, #0
	mov r1, #5
	bl sub_0219E62C
	add r5, r0, #0
	bl ovy259_21a030c
	bl sub_021A0348
	add r6, r0, #0
	add r0, r4, #0
	bl ovy259_21a0110
	add r7, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	add r3, sp, #0x14
	bl ovy259_21a02b0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy259_21a01e0
	cmp r7, #2
	bne _021A018C
	add sp, #0x18
	mov r0, #0xf4
	pop {r3, r4, r5, r6, r7, pc}
_021A018C:
	cmp r6, #4
	bhi _021A01A6
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A019C: ; jump table
	.short _021A01A6 - _021A019C - 2 ; case 0
	.short _021A01B2 - _021A019C - 2 ; case 1
	.short _021A01A6 - _021A019C - 2 ; case 2
	.short _021A01D2 - _021A019C - 2 ; case 3
	.short _021A01A6 - _021A019C - 2 ; case 4
_021A01A6:
	add r0, r4, #0
	mov r1, #5
	bl ovy259_219e4b0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A01B2:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021A01C6
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	mov r1, #5
	bl ovy259_21a0278
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A01C6:
	add r0, r4, #0
	mov r1, #5
	bl ovy259_219e4b0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A01D2:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy259_21a0290
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy259_21a0134

	thumb_func_start ovy259_21a01e0
ovy259_21a01e0: ; 0x021A01E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0219E4A0
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	bl ovy259_219baec
	cmp r4, #8
	bne _021A0210
	add r0, r7, #0
	bl ovy259_219e48c
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	mov r3, #1
	bl ovy259_219bb74
	pop {r3, r4, r5, r6, r7, pc}
_021A0210:
	cmp r4, #0x15
	bne _021A024E
	ldr r0, [sp]
	bl sub_02017394
	ldr r1, _021A0268 ; =0x00004030
	bl sub_02019294
	add r4, r0, #0
	ldr r2, _021A026C ; =0x0000018E
	ldr r3, _021A0270 ; =0x00008055
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	ldrh r2, [r4]
	add r0, r5, #0
	add r1, r6, #0
	lsl r3, r2, #2
	ldr r2, _021A0274 ; =0x021A07F0
	ldr r2, [r2, r3]
	mov r3, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ovy259_219bb24
	add r0, r6, #0
	bl GFL_MsgDataFree
	pop {r3, r4, r5, r6, r7, pc}
_021A024E:
	cmp r4, #8
	bhs _021A0264
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021A0264
	lsl r2, r6, #0x10
	add r0, r5, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0219BB04
_021A0264:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0268: .word 0x00004030
_021A026C: .word 0x0000018E
_021A0270: .word 0x00008055
_021A0274: .word 0x021A07F0
	thumb_func_end ovy259_21a01e0

	thumb_func_start ovy259_21a0278
ovy259_21a0278: ; 0x021A0278
	push {r4, lr}
	mov r1, #5
	add r4, r2, #0
	bl ovy259_219e4b0
	cmp r4, #0
	bne _021A028C
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_021A028C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy259_21a0278

	thumb_func_start ovy259_21a0290
ovy259_21a0290: ; 0x021A0290
	push {r3, lr}
	mov r0, #2
	bl sub_02005748
	cmp r0, #0
	beq _021A02A6
	mov r0, #9
	bl sub_02005748
	add r0, #0xdf
	pop {r3, pc}
_021A02A6:
	mov r0, #9
	bl sub_02005748
	add r0, #0xe9
	pop {r3, pc}
	thumb_func_end ovy259_21a0290

	thumb_func_start ovy259_21a02b0
ovy259_21a02b0: ; 0x021A02B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x18]
	cmp r1, #8
	blo _021A02C2
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A02C2:
	lsl r2, r1, #2
	ldr r1, _021A02F0 ; =0x021A07FC
	ldr r7, [r1, r2]
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	bl sub_0200EC3C
	add r1, r0, #0
	ldr r0, _021A02F4 ; =0x00000001
	str r0, [r4]
	bne _021A02E0
	mov r0, #0
	str r0, [r5]
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021A02E0:
	add r0, r7, #0
	sub r1, r1, #1
	bl sub_0201142C
	str r0, [r5]
	mov r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A02F0: .word 0x021A07FC
_021A02F4: .word 0x00000001
	thumb_func_end ovy259_21a02b0

	thumb_func_start ovy259_21a02f8
ovy259_21a02f8: ; 0x021A02F8
	push {r3, lr}
	mov r1, #5
	bl sub_0219E62C
	bl ovy259_21a030c
	bl sub_021A0388
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy259_21a02f8

	thumb_func_start ovy259_21a030c
ovy259_21a030c: ; 0x021A030C
	push {r4, r5}
	cmp r0, #0x33
	blt _021A0318
	mov r0, #9
	pop {r4, r5}
	bx lr
_021A0318:
	ldr r3, _021A0344 ; =0x021A081C
	mov r5, #0
	mov r1, #0x1c
_021A031E:
	add r2, r5, #0
	mul r2, r1
	add r4, r3, r2
	ldr r2, [r3, r2]
	cmp r2, r0
	bgt _021A0336
	ldr r2, [r4, #4]
	cmp r0, r2
	bgt _021A0336
	add r0, r5, #0
	pop {r4, r5}
	bx lr
_021A0336:
	add r5, r5, #1
	cmp r5, #0xa
	blo _021A031E
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_021A0344: .word 0x021A081C
	thumb_func_end ovy259_21a030c

	thumb_func_start sub_021A0348
sub_021A0348: ; 0x021A0348
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _021A0354 ; =0x021A0824
	ldr r0, [r0, r1]
	bx lr
	nop
_021A0354: .word 0x021A0824
	thumb_func_end sub_021A0348

	thumb_func_start sub_021A0358
sub_021A0358: ; 0x021A0358
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _021A0364 ; =0x021A0828
	ldr r0, [r0, r1]
	bx lr
	nop
_021A0364: .word 0x021A0828
	thumb_func_end sub_021A0358

	thumb_func_start sub_021A0368
sub_021A0368: ; 0x021A0368
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _021A0374 ; =0x021A082C
	ldr r0, [r0, r1]
	bx lr
	nop
_021A0374: .word 0x021A082C
	thumb_func_end sub_021A0368

	thumb_func_start sub_021A0378
sub_021A0378: ; 0x021A0378
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _021A0384 ; =0x021A0830
	ldr r0, [r0, r1]
	bx lr
	nop
_021A0384: .word 0x021A0830
	thumb_func_end sub_021A0378

	thumb_func_start sub_021A0388
sub_021A0388: ; 0x021A0388
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _021A0394 ; =0x021A0834
	ldr r0, [r0, r1]
	bx lr
	nop
_021A0394: .word 0x021A0834
	thumb_func_end sub_021A0388

	thumb_func_start sub_021A0398
sub_021A0398: ; 0x021A0398
	mov r0, #0xa
	bx lr
	thumb_func_end sub_021A0398
_021A039C:
	.byte 0xC1, 0x98, 0x19, 0x02
	.byte 0xF1, 0x99, 0x19, 0x02, 0xA5, 0x99, 0x19, 0x02, 0x00, 0x00, 0x10, 0x00, 0x00, 0x0C, 0x10, 0x0C
	.byte 0x80, 0x00, 0x60, 0x00, 0x00, 0x01, 0x60, 0x00, 0x80, 0x00, 0xC0, 0x00, 0x00, 0x01, 0xC0, 0x00
	.byte 0x64, 0x65, 0x66, 0x67, 0x64, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6B, 0x6F, 0x70, 0x71
	.byte 0x72, 0x73, 0x74, 0x75, 0x72, 0x76, 0x77, 0x78, 0x02, 0x12, 0x38, 0x03, 0x14, 0x3C, 0x04, 0x16
	.byte 0x40, 0x05, 0x18, 0x44, 0x00, 0x0E, 0x2C, 0x06, 0x1A, 0x30, 0x08, 0x1E, 0x4C, 0x09, 0x20, 0x50
	.byte 0x07, 0x1C, 0x48, 0x0A, 0x22, 0x54, 0x0B, 0x24, 0x58, 0x0C, 0x26, 0x5C, 0x0D, 0x28, 0x60, 0x01
	.byte 0x10, 0x34, 0x00, 0x00, 0x81, 0x00, 0x82, 0x00, 0x81, 0x00, 0x82, 0x00, 0x81, 0x00, 0x82, 0x00
	.byte 0x83, 0x00, 0x84, 0x00, 0x83, 0x00, 0x84, 0x00, 0x83, 0x00, 0x84, 0x00, 0x85, 0x00, 0x86, 0x00
	.byte 0x87, 0x00, 0x88, 0x00, 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x8C, 0x00, 0x8D, 0x00, 0x8E, 0x00
	.byte 0x8F, 0x00, 0x90, 0x00, 0x91, 0x00, 0x92, 0x00, 0x93, 0x00, 0x94, 0x00, 0x95, 0x00, 0x96, 0x00
	.byte 0x97, 0x00, 0x98, 0x00, 0x99, 0x00, 0x9A, 0x00, 0x9B, 0x00, 0x9C, 0x00, 0x9D, 0x00, 0x9E, 0x00
	.byte 0x9F, 0x00, 0xA0, 0x00, 0xA1, 0x00, 0xA2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x51, 0xAB, 0x19, 0x02, 0x81, 0xAB, 0x19, 0x02, 0x99, 0xAB, 0x19, 0x02, 0xA1, 0xAB, 0x19, 0x02
	.byte 0xC9, 0xAB, 0x19, 0x02, 0xCD, 0xAB, 0x19, 0x02, 0xE9, 0xAB, 0x19, 0x02, 0xED, 0xAB, 0x19, 0x02
	.byte 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00
	.byte 0x04, 0x00, 0x05, 0x00, 0x05, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x09, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x0D, 0x04, 0x00, 0xC0, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x0E, 0x0A
	.byte 0x00, 0xC0, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0A, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x50, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x0D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x12, 0x11, 0x11, 0x11, 0x20, 0x11, 0x11, 0x21, 0x00, 0x12, 0x11, 0x22
	.byte 0x00, 0x20, 0x21, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xE0, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0x10, 0x30, 0x20, 0xD8
	.byte 0x38, 0x58, 0x20, 0xD8, 0x60, 0x80, 0x20, 0xD8, 0x88, 0xA8, 0x20, 0xD8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x08, 0x30, 0x00, 0x78, 0x18, 0x40, 0x80, 0xF8, 0x38, 0x60, 0x00, 0x78, 0x48, 0x70, 0x80, 0xF8
	.byte 0x68, 0x90, 0x00, 0x78, 0x78, 0xA0, 0x80, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x07, 0x00, 0x07, 0x3E, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x96, 0x01, 0x00, 0x00, 0x9C, 0x01, 0x00, 0x00, 0xCA, 0x01, 0x00, 0x00, 0x49, 0x01, 0x00, 0x00
	.byte 0x4B, 0x01, 0x00, 0x00, 0x51, 0x01, 0x00, 0x00, 0x5C, 0x01, 0x00, 0x00, 0x6D, 0x01, 0x00, 0x00
	.byte 0x70, 0x01, 0x00, 0x00, 0x72, 0x01, 0x00, 0x00, 0x76, 0x01, 0x00, 0x00, 0x7F, 0x01, 0x00, 0x00
	.byte 0x47, 0x01, 0x28, 0x00, 0x46, 0x01, 0x29, 0x00, 0x66, 0x00, 0x32, 0x00, 0xCA, 0x01, 0x33, 0x00
	.byte 0xCD, 0x00, 0x34, 0x00, 0xF6, 0x00, 0x35, 0x00, 0x53, 0x00, 0x2A, 0x00, 0x50, 0x00, 0x2B, 0x00
	.byte 0x51, 0x00, 0x2C, 0x00, 0x52, 0x00, 0x2D, 0x00, 0x54, 0x00, 0x2E, 0x00, 0x55, 0x00, 0x2F, 0x00
	.byte 0x6B, 0x00, 0x30, 0x00, 0x6C, 0x00, 0x31, 0x00, 0xFC, 0x00, 0x1D, 0x00, 0xDD, 0x00, 0x1E, 0x00
	.byte 0xE2, 0x00, 0x1F, 0x00, 0xE3, 0x00, 0x20, 0x00, 0xE9, 0x00, 0x21, 0x00, 0xEB, 0x00, 0x22, 0x00
	.byte 0x41, 0x01, 0x23, 0x00, 0x42, 0x01, 0x24, 0x00, 0x43, 0x01, 0x25, 0x00, 0x44, 0x01, 0x26, 0x00
	.byte 0x45, 0x01, 0x27, 0x00, 0x2C, 0x00, 0x36, 0x00, 0x3D, 0x00, 0x37, 0x00, 0x4F, 0x00, 0x38, 0x00
	.byte 0x85, 0x00, 0x39, 0x00, 0xEC, 0x00, 0x3A, 0x00, 0x09, 0x01, 0x3B, 0x00, 0x19, 0x01, 0x3C, 0x00
	.byte 0x22, 0x01, 0x3D, 0x00, 0x69, 0x01, 0x3E, 0x00, 0x6E, 0x01, 0x3F, 0x00, 0x9C, 0x01, 0x40, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x68, 0x61, 0x72, 0x61, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x73, 0x63
	.byte 0x72, 0x69, 0x70, 0x74, 0x6D, 0x6F, 0x64, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61
	.byte 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x61, 0x6C, 0x6C, 0x6D, 0x6F, 0x64, 0x65, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x67, 0x72
	.byte 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76
	.byte 0x74, 0x5F, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x6C, 0x6F, 0x63, 0x61
	.byte 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x63, 0x61, 0x6C, 0x6C, 0x73, 0x65
	.byte 0x6C, 0x65, 0x63, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76
	.byte 0x74, 0x5F, 0x63, 0x61, 0x6C, 0x6C, 0x64, 0x61, 0x74, 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65, 0x72, 0x73, 0x6F, 0x6E
	.byte 0x2E, 0x63, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65
	.byte 0x72, 0x73, 0x6F, 0x6E, 0x5F, 0x73, 0x75, 0x70, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x63, 0x00, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65, 0x72, 0x73, 0x6F, 0x6E
	.byte 0x5F, 0x6D, 0x6F, 0x74, 0x68, 0x65, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61
	.byte 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65, 0x72, 0x73, 0x6F, 0x6E, 0x5F, 0x64, 0x6F, 0x63
	.byte 0x74, 0x6F, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76
	.byte 0x74, 0x5F, 0x70, 0x65, 0x72, 0x73, 0x6F, 0x6E, 0x5F, 0x63, 0x68, 0x65, 0x6C, 0x65, 0x6E, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65
	.byte 0x72, 0x73, 0x6F, 0x6E, 0x5F, 0x72, 0x69, 0x76, 0x61, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x5F, 0x74, 0x76, 0x74, 0x5F, 0x70, 0x65, 0x72, 0x73, 0x6F, 0x6E
	.byte 0x5F, 0x73, 0x65, 0x63, 0x72, 0x65, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A039C
