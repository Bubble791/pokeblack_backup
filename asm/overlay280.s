    .include "macros/function.inc"
	.include "overlay280.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy280_21d96e0
ovy280_21d96e0: ; 0x021D96E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _021D9984 ; =0x00000119
	add r5, r2, #0
	bl sub_0203CE0C
	ldr r1, [r5]
	cmp r1, #0xc
	beq _021D972A
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D972A
	cmp r1, #0xd
	bne _021D9706
	mov r1, #0xa
	b _021D971C
_021D9706:
	cmp r1, #0xe
	bne _021D970E
	mov r1, #7
	b _021D971C
_021D970E:
	cmp r1, #0xf
	bne _021D9716
	mov r1, #6
	b _021D971C
_021D9716:
	cmp r1, #0x10
	bne _021D971C
	mov r1, #1
_021D971C:
	bl sub_0200C84C
	str r0, [sp, #0x18]
	cmp r0, #5
	blt _021D972A
	mov r0, #0
	str r0, [sp, #0x18]
_021D972A:
	mov r2, #7
	mov r0, #1
	mov r1, #0x1e
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r6, #0x2f
	lsl r6, r6, #4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1e
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	add r0, r6, #0
	sub r0, #0x18
	str r5, [r4, r0]
	ldr r0, [r5]
	cmp r0, #7
	beq _021D9760
	cmp r0, #0xe
	bne _021D976A
_021D9760:
	mov r0, #0xba
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021D976E
_021D976A:
	sub r6, #8
	str r7, [r4, r6]
_021D976E:
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r7, #1
	bl GFL_FontCreate
	mov r6, #0xb1
	lsl r6, r6, #2
	str r0, [r4, r6]
	lsl r0, r7, #0xc
	mov r1, #0x1e
	bl sub_020219A8
	add r1, r6, #4
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r2, #0x65
	mov r3, #0x1e
	bl GFL_MsgSysLoadData
	add r1, r6, #0
	add r1, #8
	str r0, [r4, r1]
	mov r0, #0x1e
	bl GFL_WordSetSystemCreateDefault
	add r1, r6, #0
	add r1, #0xc
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1e
	bl ovy280_21dd28c
	str r0, [r4]
	bl sub_021DD394
	add r1, r0, #0
	mov r0, #0x1e
	bl sub_0202AE5C
	add r1, r6, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0x1e
	bl ovy280_21d9a8c
	ldr r0, [r4]
	bl sub_021DD394
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r4, #4
	mov r2, #0x1e
	bl ovy280_21d9b94
	ldrh r7, [r5, #4]
	ldr r0, [r5]
	add r1, r7, #0
	bl sub_021DC834
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r4, r6]
	str r0, [sp, #4]
	add r0, r6, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	mov r0, #0x1e
	str r0, [sp, #0x14]
	add r0, r6, #0
	sub r0, #0x50
	ldrh r3, [r5, #6]
	add r0, r4, r0
	bl ovy280_21dc3c4
	mov r0, #0x1e
	bl ovy280_21dd4e4
	add r1, r6, #0
	sub r1, #0x88
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	mov r1, #0x1e
	bl sub_020485A4
	add r1, r6, #0
	add r1, #0x20
	str r0, [r4, r1]
	add r0, r6, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	bl sub_020485F8
	cmp r0, #0
	beq _021D9878
	add r0, r6, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	bl sub_020485F8
	ldr r1, [r5, #0x18]
	cmp r0, r1
	bhi _021D986E
	add r6, #0x20
	ldr r0, [r4, r6]
	bl sub_020486F0
	mov r1, #0x1e
	bl ovy280_21dd7ac
	cmp r0, #0
	bne _021D9878
_021D986E:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02048570
_021D9878:
	mov r6, #0xad
	lsl r6, r6, #2
	ldr r2, _021D9988 ; =ovy280_21dcce0
	add r0, r4, r6
	add r1, r4, #0
	bl ovy280_21dcc90
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	add r1, r6, #0
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	mov r7, #0x1e
	str r7, [sp, #8]
	ldr r2, [r5, #0x18]
	add r3, r6, #0
	add r1, #0x30
	add r3, #0x10
	add r0, r4, #0
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	add r0, #0x74
	lsr r2, r2, #0x18
	bl ovy280_21da184
	add r0, r6, #0
	add r2, r6, #0
	sub r0, #0x78
	ldr r0, [r4, r0]
	add r2, #0x10
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0x1e
	add r6, #0x14
	add r0, #0xea
	ldr r1, [sp, #0x18]
	ldr r2, [r4, r2]
	ldr r3, [r4, r6]
	add r0, r4, r0
	bl ovy280_21db3f4
	ldr r0, [r5]
	cmp r0, #0xc
	bne _021D98E4
	add r7, #0xea
	add r0, r4, r7
	mov r1, #1
	bl sub_021DB744
_021D98E4:
	mov r6, #0x2d
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	add r1, r6, #0
	str r0, [sp]
	mov r7, #0x1e
	add r3, r6, #0
	add r0, r6, #0
	sub r0, #0x90
	str r7, [sp, #4]
	sub r1, #0xc
	sub r2, r6, #4
	sub r3, #8
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r4, r0
	bl ovy280_21dc0d8
	add r0, r6, #0
	sub r0, #0x6c
	add r0, r4, r0
	mov r1, #0x1e
	bl ovy280_21dc2b8
	mov r0, #0x1e
	bl sub_021F59E0
	add r1, r6, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r1, r6, #0
	add r1, #0x18
	ldr r1, [r4, r1]
	add r0, r4, #4
	bl ovy280_21dc89c
	ldr r1, [r5]
	cmp r1, #1
	bne _021D9954
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _021D994A
	str r7, [sp]
	ldrh r2, [r5, #4]
	sub r6, #0x90
	ldrh r3, [r5, #6]
	add r0, r4, r6
	bl ovy280_21dc1e8
	b _021D995C
_021D994A:
	sub r6, #0x90
	add r0, r4, r6
	bl ovy280_21dc220
	b _021D995C
_021D9954:
	sub r6, #0x90
	add r0, r4, r6
	bl ovy280_21dc178
_021D995C:
	bl sub_02042788
	cmp r0, #0
	beq _021D996C
	mov r0, #1
	mov r1, #0x1e
	bl sub_02042BA8
_021D996C:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021D997C
	bl sub_021A1408
_021D997C:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D9984: .word 0x00000119
_021D9988: .word ovy280_21dcce0
	thumb_func_end ovy280_21d96e0

	thumb_func_start ovy280_21d998c
ovy280_21d998c: ; 0x021D998C
	push {r4, r5, r6, lr}
	mov r4, #0x2e
	add r5, r3, #0
	lsl r4, r4, #4
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_021F5A30
	add r0, r4, #0
	sub r0, #0x7c
	add r0, r5, r0
	bl ovy280_21dc2d8
	add r0, r4, #0
	sub r0, #0xa0
	add r0, r5, r0
	bl ovy280_21dc15c
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy280_21db5a4
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0xa4
	ldr r0, [r5, r0]
	bl ovy280_21dd520
	add r0, r5, #0
	add r0, #0x74
	bl ovy280_21da2ec
	add r0, r4, #0
	sub r0, #0x2c
	add r0, r5, r0
	bl sub_021DCCAC
	add r0, r4, #0
	sub r0, #0x6c
	add r0, r5, r0
	bl ovy280_21dc6d0
	add r0, r5, #4
	bl ovy280_21d9cc4
	add r0, r5, #0
	add r0, #0x70
	bl sub_021D9B84
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0202AEAC
	ldr r0, [r5]
	bl ovy280_21dd32c
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02021A18
	sub r4, #0x1c
	ldr r0, [r5, r4]
	bl sub_02022DA8
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x1e
	bl sub_0203A1D0
	ldr r0, _021D9A4C ; =0x00000119
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D9A4C: .word 0x00000119
	thumb_func_end ovy280_21d998c

	thumb_func_start ovy280_21d9a50
ovy280_21d9a50: ; 0x021D9A50
	push {r3, r4, r5, lr}
	mov r4, #0xad
	add r5, r3, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy280_21dccb8
	ldr r0, [r5]
	bl ovy280_21dd380
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_02021A3C
	add r0, r4, #0
	sub r0, #0x40
	add r0, r5, r0
	bl ovy280_21dc79c
	add r0, r5, r4
	bl sub_021DCCCC
	cmp r0, #0
	beq _021D9A86
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D9A86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21d9a50

	thumb_func_start ovy280_21d9a8c
ovy280_21d9a8c: ; 0x021D9A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x77
	add r5, r1, #0
	bl GFL_ArcSysCreateFileHandle
	mov r6, #0
	str r6, [sp]
	str r5, [sp, #4]
	mov r1, #2
	mov r2, #4
	mov r3, #0
	add r4, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0x60
	str r0, [sp]
	mov r7, #0x20
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x40
	str r5, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	mov r0, #0x80
	str r0, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x40
	bl GFL_G2DIOLoadArcNCLR
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #2
	add r3, r6, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #0x17
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0x1e
	str r7, [sp]
	add r4, r0, #0
	mov r1, #6
	mov r2, #4
	lsl r3, r3, #4
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #4
	add r1, r6, #0
	mov r2, #1
	add r3, r6, #0
	bl sub_02045118
	mov r0, #4
	mov r1, #1
	mov r2, #0xe
	add r3, r6, #0
	str r5, [sp]
	bl sub_02024D00
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21d9a8c

	thumb_func_start sub_021D9B84
sub_021D9B84: ; 0x021D9B84
	ldr r3, _021D9B90 ; =sub_02045264
	mov r0, #4
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021D9B90: .word sub_02045264
	thumb_func_end sub_021D9B84

	thumb_func_start ovy280_21d9b94
ovy280_21d9b94: ; 0x021D9B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r2, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x77
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	str r7, [sp]
	mov r1, #9
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_0204BBA0
	str r0, [r5]
	add r0, r6, #0
	mov r1, #7
	mov r2, #6
	add r3, r7, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #8]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, sp, #0x14
	strh r4, [r0, #4]
	add r6, r4, #0
_021D9BEC:
	add r0, sp, #0x14
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0xc]
	cmp r4, #0x10
	blt _021D9BEC
	mov r1, #1
	add r0, sp, #0x14
	strh r1, [r0, #4]
	add r0, sp, #0x14
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	add r1, r6, #0
	str r0, [r5, #0x50]
	bl sub_0204C124
	mov r4, #0x12
_021D9C30:
	mov r1, #0x1f
	mvn r1, r1
	add r0, sp, #0x14
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, r4, #0
	sub r1, #0xf
	strh r1, [r0, #4]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	str r0, [r6, #0xc]
	mov r1, #1
	bl Oam_EnableOamAnim
	ldr r0, [r6, #0xc]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x14
	blt _021D9C30
	mov r4, #0x15
	add r6, sp, #0x14
_021D9C74:
	add r2, r4, #0
	sub r2, #0x15
	lsl r0, r2, #4
	add r0, #0xc8
	strh r0, [r6]
	mov r0, #0
	ldrsh r1, [r6, r0]
	lsl r0, r2, #0x10
	asr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r6]
	mov r0, #0x14
	strh r0, [r6, #2]
	add r0, r4, #0
	sub r0, #0xf
	strh r0, [r6, #4]
	lsl r0, r4, #2
	add r0, r5, r0
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x10]
	str r0, [r1, #0xc]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x17
	ble _021D9C74
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy280_21d9b94

	thumb_func_start ovy280_21d9cc4
ovy280_21d9cc4: ; 0x021D9CC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D9CCA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D9CD8
	bl sub_0204C108
_021D9CD8:
	add r4, r4, #1
	cmp r4, #0x18
	blt _021D9CCA
	ldr r0, [r5]
	bl sub_0204BCD0
	ldr r0, [r5, #4]
	bl sub_0204B98C
	ldr r0, [r5, #8]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21d9cc4

	thumb_func_start sub_021D9CF4
sub_021D9CF4: ; 0x021D9CF4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021D9CF4

	thumb_func_start ovy280_21d9cfc
ovy280_21d9cfc: ; 0x021D9CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0xb4
	add r5, r0, #0
	str r3, [sp]
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r0, #0xa0
	str r7, [r0]
_021D9D18:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x12
	bl sub_021D9CF4
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xa4
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #2
	blt _021D9D18
	ldr r3, [sp]
	mov r0, #0x77
	mov r1, #2
	add r2, sp, #4
	bl sub_0204B354
	ldr r1, [sp, #4]
	mov r4, #0
	ldr r1, [r1, #0xc]
_021D9D42:
	lsl r3, r4, #1
	add r2, r1, r3
	ldrh r2, [r2, #0x20]
	add r4, r4, #1
	cmp r4, #0x10
	strh r2, [r5, r3]
	blt _021D9D42
	mov r2, #0
_021D9D52:
	lsl r6, r2, #1
	add r3, r1, r6
	add r3, #0x40
	ldrh r4, [r3]
	add r3, r5, r6
	add r2, r2, #1
	strh r4, [r3, #0x20]
	cmp r2, #0x10
	blt _021D9D52
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy280_21d9cfc

	thumb_func_start sub_021D9D6C
sub_021D9D6C: ; 0x021D9D6C
	ldr r3, _021D9D74 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xb4
	bx r3
	.align 2, 0
_021D9D74: .word MI_CpuFill8
	thumb_func_end sub_021D9D6C

	thumb_func_start ovy280_21d9d78
ovy280_21d9d78: ; 0x021D9D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	str r6, [r0]
	add r0, r5, #0
	add r7, r3, #0
	add r0, #0x9c
	str r7, [r0]
	add r0, r5, #0
	add r4, r2, #0
	ldr r1, [sp, #0x20]
	add r0, #0xa0
	str r1, [r0]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	cmp r7, #0
	beq _021D9DF6
	ldr r0, [sp, #0x20]
	cmp r0, #3
	bne _021D9DF6
	mov r7, #3
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #3
	mov r2, #0x10
	mov r3, #4
	bl sub_0204566C
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0x17
	mov r2, #0x10
	mov r3, #4
	bl sub_0204566C
_021D9DF6:
	ldr r0, [sp, #0x20]
	mov r2, #0x14
	add r1, r0, #1
	lsl r0, r1, #1
	add r7, r1, r0
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	lsl r1, r7, #0x18
	str r0, [sp, #4]
	mov r0, #1
	lsr r1, r1, #0x18
	mov r3, #3
	bl sub_0204566C
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	lsl r1, r7, #0x18
	str r0, [sp, #4]
	mov r0, #2
	lsr r1, r1, #0x18
	mov r2, #0x14
	mov r3, #3
	bl sub_0204566C
	cmp r4, #0
	beq _021D9F04
	cmp r6, #0
	beq _021D9F04
	add r2, r5, #0
	add r3, r4, #0
	add r2, #0x84
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r6, #2
	bne _021D9E9A
	ldr r2, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r7, [r4]
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r3, [r4, #8]
	str r0, [sp]
	add r0, r6, #1
	lsl r0, r0, #0x18
	sub r3, r3, r7
	lsr r0, r0, #0x18
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	mov r0, #2
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0204566C
	ldr r3, [r4, #8]
	lsl r1, r7, #0x18
	sub r3, r3, r7
	lsl r3, r3, #0x18
	ldr r2, [r4, #4]
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x18
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0204566C
_021D9E9A:
	bl sub_0203D554
	cmp r0, #0
	bne _021D9F04
	ldr r0, [r4]
	ldr r2, [r4, #4]
	lsl r0, r0, #3
	add r1, r0, #7
	add r0, r5, #0
	add r0, #0xac
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	lsl r1, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #2
	add r0, r1, r0
	sub r0, r0, #3
	lsl r0, r0, #0x10
	add r1, r5, #0
	asr r0, r0, #0x10
	add r1, #0xae
	strh r0, [r1]
	ldr r1, [r4, #8]
	lsl r1, r1, #3
	sub r2, r1, #7
	add r1, r5, #0
	add r1, #0xb0
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0xb2
	strh r0, [r1]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
_021D9F04:
	cmp r6, #0
	beq _021D9F10
	bl sub_0203D554
	cmp r0, #1
	bne _021D9F28
_021D9F10:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021D9F28:
	mov r0, #2
	bl GFL_BGSysLoadScr
	mov r0, #1
	mov r4, #1
	bl GFL_BGSysLoadScr
	cmp r6, #0
	beq _021D9F52
	add r0, r5, #0
	add r0, #0x60
	mov r1, #0
	mov r2, #0x20
	mov r6, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r0, #0x80
	add r5, #0x98
	strh r6, [r0]
	str r4, [r5]
_021D9F52:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21d9d78

	thumb_func_start ovy280_21d9f58
ovy280_21d9f58: ; 0x021D9F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x98
	ldr r0, [r0]
	add r4, r2, #0
	str r1, [sp, #0xc]
	cmp r0, #0
	beq _021DA006
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021D9FCC
	cmp r0, #1
	beq _021D9F7E
	cmp r0, #2
	beq _021D9F8A
	b _021D9FCC
_021D9F7E:
	ldr r0, _021DA0AC ; =0x021DDB80
	mov r7, #2
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _021D9FCC
_021D9F8A:
	add r1, r5, #0
	add r1, #0x80
	add r0, r5, #0
	ldrh r1, [r1]
	add r0, #0x80
	ldrh r0, [r0]
	add r2, r1, #1
	add r1, r5, #0
	add r1, #0x80
	mov r7, #3
	ldr r6, _021DA0B0 ; =0x00001999
	strh r2, [r1]
	cmp r0, #0xa
	bls _021D9FCC
	bl sub_0203D554
	cmp r0, #0
	bne _021D9FB8
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	b _021D9FC0
_021D9FB8:
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
_021D9FC0:
	add r3, r5, #0
	add r3, #0x9c
	ldr r3, [r3]
	add r2, r4, #0
	bl ovy280_21d9d78
_021D9FCC:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x40
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x60
	mov r4, #0
	str r0, [sp, #0x14]
_021D9FDE:
	lsl r2, r4, #0x18
	lsl r1, r4, #1
	lsr r2, r2, #0x18
	str r2, [sp]
	ldrh r2, [r5, r1]
	add r0, r5, r1
	add r3, r7, #0
	str r2, [sp, #4]
	ldrh r0, [r0, #0x20]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r1, r2, r1
	add r2, r6, #0
	bl ovy280_21da0b4
	add r4, r4, #1
	cmp r4, #0x10
	blt _021D9FDE
_021DA006:
	add r0, r5, #0
	add r0, #0xac
	ldrh r0, [r0]
	add r4, sp, #0x18
	mov r6, #2
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0xae
	ldrh r0, [r0]
	add r7, sp, #0x18
	strh r0, [r4, #2]
	mov r0, #2
	bl sub_02044E74
	lsl r0, r0, #0x13
	ldrsh r1, [r4, r6]
	asr r0, r0, #0x10
	mov r2, #0
	sub r0, r1, r0
	strh r0, [r4, #2]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	add r1, r7, #0
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0xb0
	ldrh r0, [r0]
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r4, #2]
	mov r0, #2
	bl sub_02044E74
	lsl r0, r0, #0x13
	ldrsh r1, [r4, r6]
	asr r0, r0, #0x10
	mov r2, #0
	sub r0, r1, r0
	strh r0, [r4, #2]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r7, #0
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _021DA0A8
	bl sub_0203D554
	cmp r0, #0
	bne _021DA094
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r5, #0x9c
	ldr r3, [r5]
	mov r1, #1
	add r2, #0x84
	bl ovy280_21d9d78
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021DA094:
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r5, #0x9c
	ldr r3, [r5]
	mov r1, #0
	add r2, #0x84
	bl ovy280_21d9d78
_021DA0A8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DA0AC: .word 0x021DDB80
_021DA0B0: .word 0x00001999
	thumb_func_end ovy280_21d9f58

	thumb_func_start ovy280_21da0b4
ovy280_21da0b4: ; 0x021DA0B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	ldrh r1, [r0]
	mov ip, r3
	add r2, r1, r2
	mov r1, #1
	lsl r1, r1, #0x10
	cmp r2, r1
	blt _021DA0CE
	sub r1, r2, r1
	strh r1, [r0]
	b _021DA0D0
_021DA0CE:
	strh r2, [r0]
_021DA0D0:
	add r1, sp, #0x18
	ldrh r5, [r1, #4]
	ldrh r0, [r0]
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r5
	asr r0, r0, #4
	lsl r1, r1, #0x13
	lsl r0, r0, #1
	lsr r4, r1, #0x18
	add r1, sp, #0x18
	add r0, r0, #1
	ldrh r3, [r1, #8]
	lsl r1, r0, #1
	ldr r0, _021DA180 ; =FX_SinCosTable_ ; 0x020946BC
	mov r7, #0x1f
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r2, r0, #0x10
	add r0, r5, #0
	and r0, r7
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r7, #0xa
	and r0, r5
	lsl r5, r7, #0xa
	and r5, r3
	asr r0, r0, #0xa
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r2
	asr r5, r5, #0xc
	add r0, r0, r5
	add r5, r3, #0
	and r5, r7
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r2
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	lsl r1, r7, #5
	and r1, r3
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r4
	mul r1, r2
	asr r1, r1, #0xc
	add r1, r4, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r0, r1
	mov r1, ip
	strh r0, [r6]
	lsl r2, r1, #5
	add r1, sp, #0x18
	ldrb r1, [r1]
	mov r0, #0xf
	mov r3, #2
	lsl r1, r1, #1
	add r1, r2, r1
	add r2, r6, #0
	bl sub_0205FA10
	add r0, sp, #0x18
	ldrh r1, [r6]
	ldrh r0, [r0, #8]
	cmp r1, r0
	bne _021DA17C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DA17C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DA180: .word FX_SinCosTable_
	thumb_func_end ovy280_21da0b4

	thumb_func_start ovy280_21da184
ovy280_21da184: ; 0x021DA184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #0x10]
	ldr r6, [sp, #0x38]
	str r1, [sp, #0xc]
	add r5, r0, #0
	add r4, r3, #0
	mov r1, #0
	mov r2, #0x94
	ldr r7, [sp, #0x34]
	blx MI_CpuFill8
	str r4, [r5, #0x34]
	ldr r0, [sp, #0x10]
	strh r0, [r5, #0x22]
	ldr r0, [sp, #0x30]
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x10]
	cmp r0, #8
	bls _021DA1B0
	mov r0, #0
	b _021DA1B2
_021DA1B0:
	mov r0, #1
_021DA1B2:
	strh r0, [r5, #0x24]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #8
	mov r2, #2
	mov r3, #0x18
	mov r4, #0
	bl BmpWin_CreateDynamic
	str r0, [sp, #0x14]
	str r0, [r5, #0x40]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x14]
	bl BmpWin_FlushMap
	ldr r0, [sp, #0x14]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x30
	strb r4, [r0]
	mov r0, #0xe
	bl GFL_StrBufCreate
	str r0, [r5, #0x3c]
_021DA1FA:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy280_21dd564
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0x84
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #3
	blt _021DA1FA
	add r0, r6, #0
	bl ovy280_21dd6f8
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	mov r4, #0
_021DA21E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021D9CF4
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x44]
	cmp r4, #0x10
	blt _021DA21E
	ldr r0, [sp, #0xc]
	bl sub_020485F8
	cmp r0, #0
	bne _021DA244
	bl sub_020486F4
	strh r0, [r5]
	b _021DA258
_021DA244:
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r2, #1
	bl sub_020486B8
	ldr r0, [sp, #0xc]
	bl sub_020485F8
	strh r0, [r5, #0x1e]
_021DA258:
	mov r1, #0x25
	add r0, sp, #0x18
	strh r1, [r0, #2]
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	beq _021DA27A
	ldrh r1, [r5, #0x22]
	mov r0, #0xe
	add r2, r1, #0
	mul r2, r0
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r1, r0, #1
	mov r0, #0x40
	sub r7, r0, r1
	bpl _021DA27C
	b _021DA27A
_021DA27A:
	mov r7, #0
_021DA27C:
	mov r4, #0
	add r7, #0x40
_021DA280:
	mov r0, #0xe
	mul r0, r4
	add r1, r7, r0
	add r0, sp, #0x18
	strh r1, [r0]
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x44]
	mov r1, #1
	bl Oam_SetOamAnimIndex
	ldr r0, [r6, #0x44]
	mov r1, #1
	bl Oam_EnableOamAnim
	ldr r0, [r6, #0x44]
	add r1, sp, #0x18
	mov r2, #0
	bl Oam_SetSpritePosData
	ldr r0, [r6, #0x44]
	mov r1, #1
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x10
	blt _021DA280
	ldrh r4, [r5, #0x22]
	cmp r4, #0x10
	bge _021DA2D0
	mov r6, #0
_021DA2BE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x10
	blt _021DA2BE
_021DA2D0:
	ldrh r0, [r5, #0x1e]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	bl sub_0204C540
	mov r0, #1
	str r0, [r5, #0x28]
	add r0, r5, #0
	bl ovy280_21da324
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21da184

	thumb_func_start ovy280_21da2ec
ovy280_21da2ec: ; 0x021DA2EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_021DD708
	mov r4, #0
_021DA2FA:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_021DD578
	add r4, r4, #1
	cmp r4, #3
	blt _021DA2FA
	ldr r0, [r5, #0x3c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x40]
	bl BmpWin_Free
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x94
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21da2ec

	thumb_func_start ovy280_21da324
ovy280_21da324: ; 0x021DA324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _021DA332
	b _021DA4DA
_021DA332:
	ldrh r2, [r5, #0x1e]
	cmp r2, #0
	beq _021DA340
	add r1, sp, #0x10
	add r2, r2, #1
	bl sub_02024AD4
_021DA340:
	ldrh r3, [r5, #0x20]
	cmp r3, #0
	beq _021DA358
	ldrh r1, [r5, #0x1e]
	add r0, r5, #0
	add r2, sp, #0x10
	lsl r1, r1, #1
	add r1, r2, r1
	add r0, #0x16
	add r2, r3, #1
	bl sub_02024AD4
_021DA358:
	ldrh r1, [r5, #0x1e]
	ldrh r0, [r5, #0x20]
	add r0, r1, r0
	cmp r0, #0
	ldr r0, [r5, #0x40]
	ble _021DA444
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	ldrh r1, [r5, #0x1e]
	ldrh r0, [r5, #0x20]
	add r0, r1, r0
	cmp r0, #0
	ble _021DA454
_021DA37A:
	lsl r1, r6, #1
	add r0, sp, #0x10
	ldrh r1, [r0, r1]
	add r0, sp, #0xc
	strh r1, [r0]
	bl sub_020486F4
	add r1, sp, #0xc
	strh r0, [r1, #2]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	mov r2, #2
	bl sub_02048658
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	beq _021DA3CA
	ldrh r2, [r5, #0x22]
	mov r0, #0xe
	add r1, r2, #0
	mul r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x40
	sub r4, r0, r1
	bpl _021DA3B2
	mov r4, #0
_021DA3B2:
	mov r0, #0xe
	mul r0, r6
	add r0, r0, #7
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsr r0, r0, #1
	sub r4, r4, r0
	b _021DA3E6
_021DA3CA:
	mov r0, #0xe
	add r1, r6, #0
	mul r1, r0
	mov r0, #0
	add r4, r0, r1
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsr r1, r0, #1
	mov r0, #7
	sub r0, r0, r1
	add r4, r4, r0
_021DA3E6:
	ldrh r0, [r5, #0x1e]
	cmp r6, r0
	ldr r7, [r5, #0x38]
	blt _021DA412
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r2, r4, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x34]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C7C
	b _021DA42E
_021DA412:
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r2, r4, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x34]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C54
_021DA42E:
	add r1, r5, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	ldrh r1, [r5, #0x1e]
	ldrh r0, [r5, #0x20]
	add r6, r6, #1
	add r0, r1, r0
	cmp r6, r0
	blt _021DA37A
	b _021DA454
_021DA444:
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x40]
	bl BmpWin_FlushChar
_021DA454:
	ldrh r0, [r5, #0x22]
	mov r4, #0
	cmp r0, #0
	ble _021DA482
	mov r7, #1
_021DA45E:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x44]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r6, #0x44]
	add r1, r7, #0
	bl Oam_SetOamAnimIndex
	ldr r0, [r6, #0x44]
	add r1, r7, #0
	bl sub_0204C124
	ldrh r0, [r5, #0x22]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA45E
_021DA482:
	cmp r4, #0x10
	bge _021DA4AA
	mov r7, #0
_021DA488:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x44]
	add r1, r7, #0
	bl sub_0204C4D4
	ldr r0, [r6, #0x44]
	mov r1, #1
	bl Oam_SetOamAnimIndex
	ldr r0, [r6, #0x44]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x10
	blt _021DA488
_021DA4AA:
	mov r4, #0
	mov r6, #1
	b _021DA4BE
_021DA4B0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
_021DA4BE:
	ldrh r1, [r5, #0x1e]
	cmp r4, r1
	bgt _021DA4CA
	ldrh r0, [r5, #0x22]
	cmp r4, r0
	blt _021DA4B0
_021DA4CA:
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, #0x44]
	mov r1, #0
	mov r4, #0
	bl Oam_SetOamAnimIndex
	str r4, [r5, #0x28]
_021DA4DA:
	add r0, r5, #0
	bl ovy280_21da67c
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy280_21da324

	thumb_func_start ovy280_21da4e4
ovy280_21da4e4: ; 0x021DA4E4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq _021DA504
	sub r0, r0, #1
	strh r0, [r4, #0x20]
	bl sub_020486F4
	ldrh r1, [r4, #0x20]
	lsl r1, r1, #1
	add r1, r4, r1
	strh r0, [r1, #0x16]
	mov r0, #1
	str r0, [r4, #0x28]
	pop {r4, pc}
_021DA504:
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DA51E
	sub r0, r0, #1
	strh r0, [r4, #0x1e]
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	lsl r1, r1, #1
	strh r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x28]
	pop {r4, pc}
_021DA51E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21da4e4

	thumb_func_start ovy280_21da524
ovy280_21da524: ; 0x021DA524
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x1e]
	ldrh r0, [r4, #0x22]
	cmp r2, r0
	bhs _021DA54A
	lsl r0, r2, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, #0x1e]
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	lsl r1, r1, #1
	strh r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x28]
	pop {r4, pc}
_021DA54A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21da524

	thumb_func_start ovy280_21da550
ovy280_21da550: ; 0x021DA550
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrh r2, [r5, #0x1e]
	ldrh r0, [r5, #0x22]
	cmp r2, r0
	bhs _021DA58A
	ldrh r0, [r5, #0x20]
	cmp r0, #3
	bhs _021DA58A
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #0x16]
	ldrh r0, [r5, #0x20]
	add r0, r0, #1
	strh r0, [r5, #0x20]
	bl sub_020486F4
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy280_21da790
	mov r0, #1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
_021DA58A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21da550

	thumb_func_start ovy280_21da590
ovy280_21da590: ; 0x021DA590
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	cmp r1, #0
	beq _021DA5A0
	cmp r1, #1
	beq _021DA5A6
	b _021DA5AA
_021DA5A0:
	add r0, #0x84
_021DA5A2:
	ldr r4, [r0]
	b _021DA5B0
_021DA5A6:
	add r0, #0x88
	b _021DA5A2
_021DA5AA:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DA5B0:
	ldrh r1, [r5, #0x1e]
	cmp r1, #0
	beq _021DA634
	sub r1, r1, #1
	lsl r1, r1, #1
	add r0, r4, #0
	add r1, r5, r1
	bl ovy280_21dd680
	add r6, r0, #0
	ldr r0, _021DA63C ; =0x0000FFFF
	cmp r6, r0
	beq _021DA634
	add r0, sp, #4
	add r0, #1
	add r2, sp, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, #2
	mov r3, #4
	mov r7, #4
	bl ovy280_21dd5c0
	cmp r0, #0
	beq _021DA634
	add r0, sp, #4
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, #2
	add r3, r7, #0
	bl ovy280_21dd584
	add r6, sp, #4
	ldrb r0, [r6]
	mov r4, #0
	cmp r0, #0
	ble _021DA60E
_021DA600:
	add r0, r5, #0
	bl ovy280_21da4e4
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA600
_021DA60E:
	add r7, sp, #4
	ldrb r0, [r7, #1]
	mov r4, #0
	cmp r0, #0
	ble _021DA62E
	add r6, sp, #0xc
	add r6, #2
_021DA61C:
	lsl r1, r4, #1
	ldrh r1, [r6, r1]
	add r0, r5, #0
	bl ovy280_21da524
	ldrb r0, [r7, #1]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA61C
_021DA62E:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DA634:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA63C: .word 0x0000FFFF
	thumb_func_end ovy280_21da590

	thumb_func_start ovy280_21da640
ovy280_21da640: ; 0x021DA640
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	beq _021DA676
	add r0, #0x90
	sub r1, r1, #1
	lsl r1, r1, #1
	ldr r0, [r0]
	add r1, r4, r1
	add r2, sp, #0
	bl ovy280_21dd724
	cmp r0, #0
	beq _021DA676
	add r0, r4, #0
	bl ovy280_21da4e4
	add r1, sp, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl ovy280_21da524
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021DA676:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy280_21da640

	thumb_func_start ovy280_21da67c
ovy280_21da67c: ; 0x021DA67C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x30
	ldrb r0, [r0]
	ldr r4, [r5, #0x38]
	cmp r0, #0
	beq _021DA6AA
	ldr r0, [r5, #0x2c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021DA6AA
	ldr r0, [r5, #0x2c]
	bl BmpWin_FlushChar
	add r0, r5, #0
	mov r1, #0
	add r0, #0x30
	strb r1, [r0]
_021DA6AA:
	add r5, #0x30
	ldrb r0, [r5]
	cmp r0, #0
	bne _021DA6B6
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DA6B6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21da67c

	thumb_func_start sub_021DA6BC
sub_021DA6BC: ; 0x021DA6BC
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldrh r2, [r2, #0x1e]
	ldr r3, _021DA6CC ; =sub_02048658
	add r2, r2, #1
	bx r3
	nop
_021DA6CC: .word sub_02048658
	thumb_func_end sub_021DA6BC

	thumb_func_start ovy280_21da6d0
ovy280_21da6d0: ; 0x021DA6D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq _021DA6EE
	mov r0, #0
	strh r0, [r4, #0x20]
	bl sub_020486F4
	ldrh r1, [r4, #0x20]
	lsl r1, r1, #1
	add r1, r4, r1
	strh r0, [r1, #0x16]
	mov r0, #1
	str r0, [r4, #0x28]
_021DA6EE:
	pop {r4, pc}
	thumb_func_end ovy280_21da6d0

	thumb_func_start ovy280_21da6f0
ovy280_21da6f0: ; 0x021DA6F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x20]
	mov r4, #0
	cmp r0, #0
	ble _021DA710
_021DA6FC:
	lsl r1, r4, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x16]
	add r0, r5, #0
	bl ovy280_21da524
	ldrh r0, [r5, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA6FC
_021DA710:
	mov r0, #0
	strh r0, [r5, #0x20]
	bl sub_020486F4
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x16]
	mov r0, #1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21da6f0

	thumb_func_start ovy280_21da728
ovy280_21da728: ; 0x021DA728
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DA744
	mov r0, #0
	strh r0, [r4, #0x1e]
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	lsl r1, r1, #1
	strh r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x28]
_021DA744:
	add r0, r4, #0
	bl ovy280_21da6d0
	pop {r4, pc}
	thumb_func_end ovy280_21da728

	thumb_func_start ovy280_21da74c
ovy280_21da74c: ; 0x021DA74C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrh r4, [r5]
	add r6, r0, #0
	bl sub_020486F4
	cmp r4, r0
	beq _021DA774
_021DA75C:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy280_21da524
	cmp r0, #0
	beq _021DA774
	add r5, r5, #2
	ldrh r4, [r5]
	bl sub_020486F4
	cmp r4, r0
	bne _021DA75C
_021DA774:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy280_21da74c

	thumb_func_start sub_021DA778
sub_021DA778: ; 0x021DA778
	ldrh r1, [r0, #0x1e]
	ldrh r0, [r0, #0x22]
	cmp r1, r0
	bne _021DA784
	mov r0, #1
	bx lr
_021DA784:
	mov r0, #0
	bx lr
	thumb_func_end sub_021DA778

	thumb_func_start sub_021DA788
sub_021DA788: ; 0x021DA788
	ldrh r0, [r0, #0x1e]
	bx lr
	thumb_func_end sub_021DA788

	thumb_func_start sub_021DA78C
sub_021DA78C: ; 0x021DA78C
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_021DA78C

	thumb_func_start ovy280_21da790
ovy280_21da790: ; 0x021DA790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	cmp r1, #0
	beq _021DA79E
	ldr r0, _021DA8C4 ; =ovy280_21dd600
	b _021DA7A0
_021DA79E:
	ldr r0, _021DA8C8 ; =ovy280_21dd5c0
_021DA7A0:
	str r0, [sp, #4]
	ldrh r0, [r5, #0x20]
	mov r4, #0
	cmp r0, #0
	bgt _021DA7AC
	b _021DA8BE
_021DA7AC:
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x16
	str r0, [sp, #8]
_021DA7B4:
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [sp, #8]
	lsl r2, r4, #1
	ldr r0, [r0]
	add r1, r1, r2
	bl ovy280_21dd680
	add r7, r0, #0
	ldr r0, _021DA8CC ; =0x0000FFFF
	cmp r7, r0
	beq _021DA8B4
	mov r6, #0
	cmp r4, #0
	ble _021DA7E4
_021DA7D2:
	lsl r1, r6, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x16]
	add r0, r5, #0
	bl ovy280_21da524
	add r6, r6, #1
	cmp r6, r4
	blt _021DA7D2
_021DA7E4:
	mov r6, #0
	cmp r4, #0
	ble _021DA7F6
_021DA7EA:
	add r0, r5, #0
	bl ovy280_21da4e4
	add r6, r6, #1
	cmp r6, r4
	blt _021DA7EA
_021DA7F6:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x8c
	add r2, sp, #0xc
	ldr r0, [r0]
	ldr r6, [sp, #4]
	add r1, r7, #0
	add r2, #2
	mov r3, #4
	blx r6
	cmp r0, #0
	beq _021DA8B4
	add r0, sp, #0xc
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021DA832
	add r6, sp, #0xc
	add r6, #2
_021DA81E:
	lsl r1, r4, #1
	ldrh r1, [r6, r1]
	add r0, r5, #0
	bl ovy280_21da524
	add r0, sp, #0xc
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA81E
_021DA832:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x8c
	add r2, sp, #0xc
	ldr r0, [r0]
	add r1, r7, #0
	add r2, #2
	mov r3, #4
	bl ovy280_21dd584
	add r6, sp, #0xc
	ldrb r0, [r6]
	mov r4, #0
	cmp r0, #0
	ble _021DA860
_021DA852:
	add r0, r5, #0
	bl ovy280_21da4e4
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA852
_021DA860:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x8c
	add r2, sp, #0xc
	ldr r0, [r0]
	add r1, r7, #0
	add r2, #2
	mov r3, #4
	bl ovy280_21dd640
	add r7, sp, #0xc
	ldrb r0, [r7]
	mov r4, #0
	cmp r0, #0
	ble _021DA8AE
	add r6, r5, #0
	add r6, #0x20
_021DA884:
	add r0, sp, #0xc
	lsl r1, r4, #1
	add r0, #2
	ldrh r0, [r0, r1]
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x16]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	bl sub_020486F4
	ldrh r1, [r5, #0x20]
	add r4, r4, #1
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x16]
	ldrb r0, [r7]
	cmp r4, r0
	blt _021DA884
_021DA8AE:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DA8B4:
	ldrh r0, [r5, #0x20]
	add r4, r4, #1
	cmp r4, r0
	bge _021DA8BE
	b _021DA7B4
_021DA8BE:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DA8C4: .word ovy280_21dd600
_021DA8C8: .word ovy280_21dd5c0
_021DA8CC: .word 0x0000FFFF
	thumb_func_end ovy280_21da790

	thumb_func_start sub_021DA8D0
sub_021DA8D0: ; 0x021DA8D0
	ldrh r1, [r0, #0x1e]
	cmp r1, #0
	bne _021DA8DA
	mov r0, #0
	bx lr
_021DA8DA:
	mov r3, #0
	mov r2, #0
	cmp r1, #0
	ble _021DA8F4
_021DA8E2:
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	cmp r1, #0x20
	bne _021DA8EC
	add r3, r3, #1
_021DA8EC:
	ldrh r1, [r0, #0x1e]
	add r2, r2, #1
	cmp r2, r1
	blt _021DA8E2
_021DA8F4:
	mov r0, #1
	cmp r2, r3
	bne _021DA8FC
	mov r0, #0
_021DA8FC:
	bx lr
	.align 2, 0
	thumb_func_end sub_021DA8D0

	thumb_func_start ovy280_21da900
ovy280_21da900: ; 0x021DA900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x1e]
	cmp r0, #0
	beq _021DA912
	cmp r0, #0xa
	beq _021DA912
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DA912:
	mov r4, #0
	cmp r0, #0
	ble _021DA930
_021DA918:
	lsl r0, r4, #1
	ldrh r0, [r5, r0]
	bl ovy280_21da934
	cmp r0, #0
	bne _021DA928
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DA928:
	ldrh r0, [r5, #0x1e]
	add r4, r4, #1
	cmp r4, r0
	blt _021DA918
_021DA930:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21da900

	thumb_func_start ovy280_21da934
ovy280_21da934: ; 0x021DA934
	push {r3, lr}
	bl sub_02024B34
	ldr r2, _021DA954 ; =0x021DD964
	mov r3, #0
_021DA93E:
	lsl r1, r3, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _021DA94A
	mov r0, #1
	pop {r3, pc}
_021DA94A:
	add r3, r3, #1
	cmp r3, #0x20
	blo _021DA93E
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021DA954: .word 0x021DD964
	thumb_func_end ovy280_21da934

	thumb_func_start ovy280_21da958
ovy280_21da958: ; 0x021DA958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r7, #0
	add r1, r6, #0
	bl sub_021DD53C
	str r0, [r4]
	cmp r5, #3
	bhi _021DA9B4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA984: ; jump table
	.short _021DA9A0 - _021DA984 - 2 ; case 0
	.short _021DA9A0 - _021DA984 - 2 ; case 1
	.short _021DA9A0 - _021DA984 - 2 ; case 2
	.short _021DA98C - _021DA984 - 2 ; case 3
_021DA98C:
	mov r0, #0xb
	strh r0, [r4, #0x20]
	mov r0, #4
	strh r0, [r4, #0x22]
	ldr r0, _021DA9C8 ; =ovy280_21dad88
	str r0, [r4, #0x14]
	ldr r0, _021DA9CC ; =ovy280_21dafb4
	str r0, [r4, #0x18]
	ldr r0, _021DA9D0 ; =ovy280_21db378
	b _021DA9B2
_021DA9A0:
	mov r0, #0xd
	strh r0, [r4, #0x20]
	mov r0, #6
	strh r0, [r4, #0x22]
	ldr r0, _021DA9D4 ; =ovy280_21dace8
	str r0, [r4, #0x14]
	ldr r0, _021DA9D8 ; =ovy280_21dae74
	str r0, [r4, #0x18]
	ldr r0, _021DA9DC ; =sub_021DB354
_021DA9B2:
	str r0, [r4, #0x1c]
_021DA9B4:
	ldr r2, _021DA9E0 ; =0x021DD91C
	mov r3, #0
_021DA9B8:
	ldrb r1, [r2, r3]
	add r0, r4, r3
	add r3, r3, #1
	strb r1, [r0, #4]
	cmp r3, #0xd
	blt _021DA9B8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA9C8: .word ovy280_21dad88
_021DA9CC: .word ovy280_21dafb4
_021DA9D0: .word ovy280_21db378
_021DA9D4: .word ovy280_21dace8
_021DA9D8: .word ovy280_21dae74
_021DA9DC: .word sub_021DB354
_021DA9E0: .word 0x021DD91C
	thumb_func_end ovy280_21da958

	thumb_func_start ovy280_21da9e4
ovy280_21da9e4: ; 0x021DA9E4
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021DD53C
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21da9e4

	thumb_func_start sub_021DA9F4
sub_021DA9F4: ; 0x021DA9F4
	ldr r3, _021DA9FC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x24
	bx r3
	.align 2, 0
_021DA9FC: .word MI_CpuFill8
	thumb_func_end sub_021DA9F4

	thumb_func_start ovy280_21daa00
ovy280_21daa00: ; 0x021DAA00
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	ldr r2, [r5, #0x1c]
	add r1, sp, #0
	blx r2
	add r6, r0, #0
	cmp r6, #1
	beq _021DAA1C
	sub r0, #0xa
	cmp r0, #1
	bhi _021DAA34
_021DAA1C:
	cmp r4, #0
	beq _021DAA40
	ldr r1, [sp]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ovy280_21dd54c
	b _021DAA3E
_021DAA34:
	cmp r6, #9
	bne _021DAA40
	cmp r4, #0
	beq _021DAA40
	mov r0, #0x20
_021DAA3E:
	strh r0, [r4]
_021DAA40:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy280_21daa00

	thumb_func_start ovy280_21daa48
ovy280_21daa48: ; 0x021DAA48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldrh r0, [r5, #0x22]
	add r4, r1, #0
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #8]
	cmp r1, r0
	bge _021DAAC4
	add r7, sp, #4
	add r6, sp, #0xc
_021DAA60:
	ldrh r1, [r5, #0x20]
	mov r0, #0
	str r0, [sp, #4]
	cmp r0, r1
	bge _021DAAB8
_021DAA6A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DAAAC
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	lsl r0, r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	add r0, r6, #0
	bl ovy280_21dc99c
	cmp r0, #0
	beq _021DAAAC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	add sp, #0x1c
	str r2, [r0]
	str r1, [r0, #4]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DAAAC:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldrh r0, [r5, #0x20]
	str r1, [sp, #4]
	cmp r1, r0
	blt _021DAA6A
_021DAAB8:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldrh r0, [r5, #0x22]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021DAA60
_021DAAC4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21daa48

	thumb_func_start ovy280_21daacc
ovy280_21daacc: ; 0x021DAACC
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #4
	ldr r3, [r3, #0x18]
	blx r3
	pop {r3, pc}
	thumb_func_end ovy280_21daacc

	thumb_func_start ovy280_21daadc
ovy280_21daadc: ; 0x021DAADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #8]
	add r1, sp, #0x48
	ldrh r1, [r1]
	add r5, r0, #0
	mov r0, #2
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl GFL_StrBufCreate
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl sub_021DD548
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _021DABF8
_021DAB04:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	bl sub_021DD544
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _021DABE6
_021DAB14:
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x24
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DABD4
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x14
	bl ovy280_21daa00
	cmp r0, #1
	beq _021DAB36
	sub r0, #0xa
	cmp r0, #1
	bhi _021DABD4
_021DAB36:
	add r0, sp, #0x14
	ldrh r1, [r0]
	strh r1, [r0, #2]
	bl sub_020486F4
	add r1, sp, #0x14
	strh r0, [r1, #4]
	add r1, sp, #0x14
	add r0, r4, #0
	add r1, #2
	mov r2, #2
	bl sub_02048658
	ldr r0, [sp, #0x24]
	lsl r2, r0, #3
	ldr r0, [sp, #0x28]
	str r2, [sp, #0x24]
	lsl r1, r0, #3
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	lsl r3, r0, #3
	ldr r0, [sp, #0x30]
	sub r6, r3, r2
	str r3, [sp, #0x2c]
	lsr r3, r6, #0x1f
	add r3, r6, r3
	asr r3, r3, #1
	add r2, r2, r3
	sub r2, #0x18
	lsl r0, r0, #3
	lsl r2, r2, #0x10
	lsr r7, r2, #0x10
	sub r2, r0, r1
	str r0, [sp, #0x30]
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	add r0, r1, r0
	sub r0, #0x28
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #8]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	sub r2, r7, #1
	lsl r2, r2, #0x10
	lsl r3, r6, #0x10
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C54
	ldr r0, [sp, #8]
	mov r1, #1
	strb r1, [r0, #4]
_021DABD4:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	bl sub_021DD544
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	blt _021DAB14
_021DABE6:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl sub_021DD548
	ldr r1, [sp, #0x20]
	cmp r1, r0
	blt _021DAB04
_021DABF8:
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21daadc

	thumb_func_start ovy280_21dac04
ovy280_21dac04: ; 0x021DAC04
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0x14]
	blx r2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy280_21dac04

	thumb_func_start ovy280_21dac14
ovy280_21dac14: ; 0x021DAC14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #0x22]
	add r4, r1, #0
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #8]
	cmp r1, r0
	bgt _021DAC6A
	add r6, sp, #4
	add r7, r1, #0
_021DAC2C:
	ldrh r1, [r5, #0x20]
	mov r0, #0
	str r0, [sp, #4]
	cmp r0, r1
	bgt _021DAC5E
_021DAC36:
	ldr r2, [r5, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	blx r2
	cmp r4, r0
	bne _021DAC52
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	add sp, #0xc
	str r2, [r0]
	str r1, [r0, #4]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DAC52:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldrh r0, [r5, #0x20]
	str r1, [sp, #4]
	cmp r1, r0
	ble _021DAC36
_021DAC5E:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldrh r0, [r5, #0x22]
	str r1, [sp, #8]
	cmp r1, r0
	ble _021DAC2C
_021DAC6A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy280_21dac14

	thumb_func_start ovy280_21dac70
ovy280_21dac70: ; 0x021DAC70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	cmp r1, #3
	bne _021DAC84
	ldr r2, _021DACE0 ; =ovy280_21db378
	ldr r4, _021DACE4 ; =sub_021DB34C
	mov r5, #0xd
	mov r0, #5
	b _021DAC90
_021DAC84:
	cmp r2, #3
	bne _021DAC92
	ldr r2, _021DACE4 ; =sub_021DB34C
	ldr r4, _021DACE0 ; =ovy280_21db378
	mov r5, #0xb
	mov r0, #4
_021DAC90:
	str r0, [sp, #4]
_021DAC92:
	ldr r0, [sp]
	mov r1, #0
	mov r7, #0
	blx r2
	add r6, r0, #0
	ldr r0, [sp, #4]
	str r7, [sp, #0xc]
	cmp r7, r0
	bgt _021DACDC
	add r7, sp, #8
_021DACA6:
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r5
	bgt _021DACD0
_021DACAE:
	add r0, r7, #0
	mov r1, #0
	blx r4
	cmp r6, r0
	bne _021DACC6
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add sp, #0x10
	str r2, [r0]
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021DACC6:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r5
	ble _021DACAE
_021DACD0:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	ble _021DACA6
_021DACDC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DACE0: .word ovy280_21db378
_021DACE4: .word sub_021DB34C
	thumb_func_end ovy280_21dac70

	thumb_func_start ovy280_21dace8
ovy280_21dace8: ; 0x021DACE8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_021DB34C
	cmp r0, #0xb
	bhi _021DAD6E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAD06: ; jump table
	.short _021DAD68 - _021DAD06 - 2 ; case 0
	.short _021DAD1E - _021DAD06 - 2 ; case 1
	.short _021DAD34 - _021DAD06 - 2 ; case 2
	.short _021DAD34 - _021DAD06 - 2 ; case 3
	.short _021DAD34 - _021DAD06 - 2 ; case 4
	.short _021DAD34 - _021DAD06 - 2 ; case 5
	.short _021DAD4C - _021DAD06 - 2 ; case 6
	.short _021DAD64 - _021DAD06 - 2 ; case 7
	.short _021DAD6E - _021DAD06 - 2 ; case 8
	.short _021DAD6E - _021DAD06 - 2 ; case 9
	.short _021DAD1E - _021DAD06 - 2 ; case 10
	.short _021DAD1E - _021DAD06 - 2 ; case 11
_021DAD1E:
	ldr r0, [sp]
	lsl r0, r0, #1
	add r2, r0, #3
	str r2, [r4]
	ldr r1, [sp, #4]
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r0, #5
	str r1, [r4, #4]
	add r0, r2, #2
_021DAD32:
	b _021DAD5C
_021DAD34:
	ldr r0, [r5]
	add r1, r0, #1
	lsl r0, r1, #1
	add r2, r1, r0
	ldr r1, [r5, #4]
	str r2, [r4]
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r0, #5
	str r1, [r4, #4]
	add r0, r2, #3
	b _021DAD32
_021DAD4C:
	mov r2, #0xf
_021DAD4E:
	ldr r1, [r5, #4]
	str r2, [r4]
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r0, #5
	str r1, [r4, #4]
	add r0, r2, #7
_021DAD5C:
	str r0, [r4, #8]
	add r0, r1, #3
	str r0, [r4, #0xc]
	b _021DAD6E
_021DAD64:
	mov r2, #0x16
	b _021DAD4E
_021DAD68:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAD6E:
	ldr r0, [r5, #4]
	cmp r0, #5
	bne _021DAD80
	ldr r0, [r5]
	cmp r0, #6
	ble _021DAD80
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAD80:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dace8

	thumb_func_start ovy280_21dad88
ovy280_21dad88: ; 0x021DAD88
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl ovy280_21db378
	cmp r0, #9
	bhi _021DAE30
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DADA6: ; jump table
	.short _021DAE2A - _021DADA6 - 2 ; case 0
	.short _021DADBA - _021DADA6 - 2 ; case 1
	.short _021DADDE - _021DADA6 - 2 ; case 2
	.short _021DADDE - _021DADA6 - 2 ; case 3
	.short _021DADDE - _021DADA6 - 2 ; case 4
	.short _021DADDE - _021DADA6 - 2 ; case 5
	.short _021DADF0 - _021DADA6 - 2 ; case 6
	.short _021DADF8 - _021DADA6 - 2 ; case 7
	.short _021DAE04 - _021DADA6 - 2 ; case 8
	.short _021DAE1A - _021DADA6 - 2 ; case 9
_021DADBA:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021DAE6C ; =0x021DD904
	ldr r1, [r0, r1]
	ldr r0, [sp]
	lsl r0, r0, #1
	add r2, r1, r0
	str r2, [r4]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021DAE70 ; =0x021DD910
	ldr r1, [r0, r1]
	add r0, r2, #2
	str r1, [r4, #4]
_021DADD6:
	str r0, [r4, #8]
	add r0, r1, #3
_021DADDA:
	str r0, [r4, #0xc]
	b _021DAE30
_021DADDE:
	ldr r0, [r5]
	add r1, r0, #1
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0x14
	str r0, [r4]
	str r1, [r4, #4]
	add r0, r0, #3
	b _021DADD6
_021DADF0:
	mov r0, #0x19
	str r0, [r4]
	mov r1, #8
	b _021DAE10
_021DADF8:
	mov r0, #0x18
	mov r1, #0xc
	str r0, [r4]
	str r1, [r4, #4]
	add r0, r0, #5
	b _021DADD6
_021DAE04:
	ldr r0, [r5]
	cmp r0, #0
	bne _021DAE16
	mov r0, #3
_021DAE0C:
	str r0, [r4]
	mov r1, #0x10
_021DAE10:
	str r1, [r4, #4]
	add r0, r0, #4
	b _021DADD6
_021DAE16:
	mov r0, #0x17
	b _021DAE0C
_021DAE1A:
	mov r1, #0xf
	str r1, [r4]
	mov r0, #0x14
	add r1, #0xc
	str r0, [r4, #4]
	str r1, [r4, #8]
	add r0, r0, #3
	b _021DADDA
_021DAE2A:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAE30:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _021DAE40
	cmp r0, #2
	beq _021DAE4C
	cmp r0, #3
	beq _021DAE58
	b _021DAE64
_021DAE40:
	ldr r0, [r5]
	cmp r0, #9
	ble _021DAE64
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAE4C:
	ldr r0, [r5]
	cmp r0, #9
	ble _021DAE64
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAE58:
	ldr r0, [r5]
	cmp r0, #4
	ble _021DAE64
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DAE64:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021DAE6C: .word 0x021DD904
_021DAE70: .word 0x021DD910
	thumb_func_end ovy280_21dad88

	thumb_func_start ovy280_21dae74
ovy280_21dae74: ; 0x021DAE74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #4]
	mov r0, #0
	mov r7, #0
	cmp r2, #0
	beq _021DAE8E
	cmp r2, #4
	beq _021DAEC2
	cmp r2, #5
	beq _021DAEF4
	b _021DAF28
_021DAE8E:
	ldr r3, [r5]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	bpl _021DAE9C
	mov r2, #0xc
	b _021DAEA2
_021DAE9C:
	cmp r2, #0xc
	ble _021DAEA2
	add r2, r0, #0
_021DAEA2:
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r5, #4]
	bpl _021DAEB2
	mov r1, #5
	b _021DAEB8
_021DAEB2:
	cmp r1, #5
	ble _021DAEB8
	mov r1, #0
_021DAEB8:
	str r1, [r5, #4]
	cmp r1, #5
	bne _021DAF54
_021DAEBE:
	mov r0, #1
	b _021DAF54
_021DAEC2:
	ldr r3, [r5]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	bpl _021DAED0
	mov r2, #0xc
	b _021DAED6
_021DAED0:
	cmp r2, #0xc
	ble _021DAED6
	add r2, r0, #0
_021DAED6:
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r5, #4]
	bpl _021DAEE6
	mov r1, #5
	b _021DAEEC
_021DAEE6:
	cmp r1, #5
	ble _021DAEEC
	mov r1, #0
_021DAEEC:
	str r1, [r5, #4]
	cmp r1, #5
	bne _021DAF54
	b _021DAEBE
_021DAEF4:
	ldr r3, [r5]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	bpl _021DAF02
	mov r2, #5
	b _021DAF08
_021DAF02:
	cmp r2, #5
	ble _021DAF08
	add r2, r0, #0
_021DAF08:
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r5, #4]
	bpl _021DAF18
	mov r1, #5
	b _021DAF1E
_021DAF18:
	cmp r1, #5
	ble _021DAF1E
	mov r1, #0
_021DAF1E:
	str r1, [r5, #4]
	cmp r1, #5
	beq _021DAF54
	mov r7, #1
	b _021DAF54
_021DAF28:
	ldr r3, [r5]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	bpl _021DAF36
	mov r2, #0xc
	b _021DAF3C
_021DAF36:
	cmp r2, #0xc
	ble _021DAF3C
	add r2, r0, #0
_021DAF3C:
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r5, #4]
	bpl _021DAF4C
	mov r1, #5
	b _021DAF52
_021DAF4C:
	cmp r1, #5
	ble _021DAF52
	mov r1, #0
_021DAF52:
	str r1, [r5, #4]
_021DAF54:
	cmp r0, #0
	beq _021DAF8A
	ldr r4, [r5]
	cmp r4, #6
	blt _021DAF68
	cmp r4, #9
	bgt _021DAF68
	strb r4, [r6, #4]
	mov r0, #4
	b _021DAF88
_021DAF68:
	cmp r4, #0xa
	blt _021DAF76
	cmp r4, #0xc
	bgt _021DAF76
	strb r4, [r6, #5]
	mov r0, #5
	b _021DAF88
_021DAF76:
	cmp r4, #0
	blt _021DAF8A
	cmp r4, #5
	bgt _021DAF8A
	lsl r0, r4, #1
	mov r1, #3
	blx sub_0208D65C
	strb r4, [r6, r0]
_021DAF88:
	str r0, [r5]
_021DAF8A:
	cmp r7, #0
	beq _021DAFB0
	ldr r0, [r5]
	cmp r0, #4
	bne _021DAF9A
	ldrb r0, [r6, #4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021DAF9A:
	cmp r0, #5
	bne _021DAFA4
	ldrb r0, [r6, #5]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021DAFA4:
	cmp r0, #0
	blt _021DAFB0
	cmp r0, #3
	bgt _021DAFB0
	ldrb r0, [r6, r0]
	str r0, [r5]
_021DAFB0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dae74

	thumb_func_start ovy280_21dafb4
ovy280_21dafb4: ; 0x021DAFB4
	push {r3, r4}
	ldr r3, [r0, #4]
	cmp r3, #3
	bhi _021DB06E
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021DAFC8: ; jump table
	.short _021DAFD0 - _021DAFC8 - 2 ; case 0
	.short _021DB0E6 - _021DAFC8 - 2 ; case 1
	.short _021DB198 - _021DAFC8 - 2 ; case 2
	.short _021DB2A0 - _021DAFC8 - 2 ; case 3
_021DAFD0:
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r0]
	bpl _021DAFDE
	mov r3, #0xa
	b _021DAFE4
_021DAFDE:
	cmp r3, #0xa
	ble _021DAFE4
	mov r3, #0
_021DAFE4:
	str r3, [r0]
	ldr r3, [r0, #4]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #4]
	bpl _021DAFF4
	mov r1, #3
	b _021DAFFA
_021DAFF4:
	cmp r1, #3
	ble _021DAFFA
	mov r1, #0
_021DAFFA:
	str r1, [r0, #4]
	cmp r1, #3
	bne _021DB06A
	ldr r3, [r0]
	cmp r3, #0xa
	bhi _021DB040
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB012: ; jump table
	.short _021DB040 - _021DB012 - 2 ; case 0
	.short _021DB040 - _021DB012 - 2 ; case 1
	.short _021DB040 - _021DB012 - 2 ; case 2
	.short _021DB040 - _021DB012 - 2 ; case 3
	.short _021DB032 - _021DB012 - 2 ; case 4
	.short _021DB032 - _021DB012 - 2 ; case 5
	.short _021DB032 - _021DB012 - 2 ; case 6
	.short _021DB032 - _021DB012 - 2 ; case 7
	.short _021DB028 - _021DB012 - 2 ; case 8
	.short _021DB028 - _021DB012 - 2 ; case 9
	.short _021DB038 - _021DB012 - 2 ; case 10
_021DB028:
	strb r3, [r2, #8]
	ldr r1, [r0]
	strb r1, [r2, #0xc]
	mov r1, #8
	b _021DB03E
_021DB032:
	strb r3, [r2, #0xc]
	ldr r1, [r0]
	b _021DB03E
_021DB038:
	mov r1, #0xa
	strb r1, [r2, #0xc]
	mov r1, #9
_021DB03E:
	strb r1, [r2, #0xb]
_021DB040:
	ldr r1, [r0]
	cmp r1, #0
	beq _021DB050
	cmp r1, #1
	beq _021DB058
	cmp r1, #2
	beq _021DB058
	b _021DB062
_021DB050:
	ldrb r1, [r2, #6]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB058:
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB062:
	mov r1, #4
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB06A:
	cmp r1, #1
	beq _021DB070
_021DB06E:
	b _021DB348
_021DB070:
	ldr r3, [r0]
	cmp r3, #0xa
	bhi _021DB0C4
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB082: ; jump table
	.short _021DB0C4 - _021DB082 - 2 ; case 0
	.short _021DB0C4 - _021DB082 - 2 ; case 1
	.short _021DB0C4 - _021DB082 - 2 ; case 2
	.short _021DB0C4 - _021DB082 - 2 ; case 3
	.short _021DB0B0 - _021DB082 - 2 ; case 4
	.short _021DB0B0 - _021DB082 - 2 ; case 5
	.short _021DB0B0 - _021DB082 - 2 ; case 6
	.short _021DB0B0 - _021DB082 - 2 ; case 7
	.short _021DB098 - _021DB082 - 2 ; case 8
	.short _021DB098 - _021DB082 - 2 ; case 9
	.short _021DB0B0 - _021DB082 - 2 ; case 10
_021DB098:
	strb r3, [r2, #8]
	ldr r1, [r0]
	strb r1, [r2, #0xc]
	ldr r1, [r0]
	cmp r1, #9
	ble _021DB0A8
	mov r1, #9
	b _021DB0AE
_021DB0A8:
	cmp r1, #4
	bge _021DB0AE
	mov r1, #4
_021DB0AE:
	b _021DB0C2
_021DB0B0:
	strb r3, [r2, #0xc]
	ldr r1, [r0]
	cmp r1, #9
	ble _021DB0BC
	mov r1, #9
	b _021DB0C2
_021DB0BC:
	cmp r1, #4
	bge _021DB0C2
	mov r1, #4
_021DB0C2:
	strb r1, [r2, #0xb]
_021DB0C4:
	ldr r1, [r0]
	cmp r1, #8
	beq _021DB0D6
	cmp r1, #9
	beq _021DB0D6
	cmp r1, #0xa
	beq _021DB0DE
	pop {r3, r4}
	bx lr
_021DB0D6:
	mov r1, #8
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB0DE:
	mov r1, #9
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB0E6:
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r0]
	bpl _021DB0F4
	mov r3, #9
	b _021DB0FA
_021DB0F4:
	cmp r3, #9
	ble _021DB0FA
	mov r3, #0
_021DB0FA:
	str r3, [r0]
	ldr r3, [r0, #4]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #4]
	bpl _021DB10A
	mov r1, #3
	b _021DB110
_021DB10A:
	cmp r1, #3
	ble _021DB110
	mov r1, #0
_021DB110:
	str r1, [r0, #4]
	cmp r1, #0
	bne _021DB140
	ldr r1, [r0]
	cmp r1, #7
	beq _021DB120
	cmp r1, #8
	bne _021DB122
_021DB120:
	strb r1, [r2, #9]
_021DB122:
	ldr r1, [r0]
	cmp r1, #8
	beq _021DB130
	cmp r1, #9
	beq _021DB138
	pop {r3, r4}
	bx lr
_021DB130:
	ldrb r1, [r2, #8]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB138:
	mov r1, #0xa
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB140:
	cmp r1, #2
	bne _021DB23C
	ldr r1, [r0]
	cmp r1, #7
	beq _021DB14E
	cmp r1, #8
	bne _021DB150
_021DB14E:
	strb r1, [r2, #9]
_021DB150:
	ldr r1, [r0]
	cmp r1, #9
	bhi _021DB18E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB162: ; jump table
	.short _021DB176 - _021DB162 - 2 ; case 0
	.short _021DB18E - _021DB162 - 2 ; case 1
	.short _021DB18E - _021DB162 - 2 ; case 2
	.short _021DB18E - _021DB162 - 2 ; case 3
	.short _021DB18E - _021DB162 - 2 ; case 4
	.short _021DB18E - _021DB162 - 2 ; case 5
	.short _021DB18E - _021DB162 - 2 ; case 6
	.short _021DB17E - _021DB162 - 2 ; case 7
	.short _021DB17E - _021DB162 - 2 ; case 8
	.short _021DB186 - _021DB162 - 2 ; case 9
_021DB176:
	ldrb r1, [r2, #7]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB17E:
	mov r1, #8
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB186:
	mov r1, #9
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB18E:
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB198:
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r0]
	bpl _021DB1A6
	mov r3, #9
	b _021DB1AC
_021DB1A6:
	cmp r3, #9
	ble _021DB1AC
	mov r3, #0
_021DB1AC:
	str r3, [r0]
	ldr r3, [r0, #4]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #4]
	bpl _021DB1BC
	mov r1, #3
	b _021DB1C2
_021DB1BC:
	cmp r1, #3
	ble _021DB1C2
	mov r1, #0
_021DB1C2:
	str r1, [r0, #4]
	cmp r1, #1
	bne _021DB238
	ldr r3, [r0]
	cmp r3, #9
	bhi _021DB1F8
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB1DA: ; jump table
	.short _021DB1EE - _021DB1DA - 2 ; case 0
	.short _021DB1EE - _021DB1DA - 2 ; case 1
	.short _021DB1F8 - _021DB1DA - 2 ; case 2
	.short _021DB1F8 - _021DB1DA - 2 ; case 3
	.short _021DB1F2 - _021DB1DA - 2 ; case 4
	.short _021DB1F2 - _021DB1DA - 2 ; case 5
	.short _021DB1F2 - _021DB1DA - 2 ; case 6
	.short _021DB1F2 - _021DB1DA - 2 ; case 7
	.short _021DB1F2 - _021DB1DA - 2 ; case 8
	.short _021DB1F2 - _021DB1DA - 2 ; case 9
_021DB1EE:
	strb r3, [r2, #7]
	b _021DB1F8
_021DB1F2:
	strb r3, [r2, #0xb]
	ldr r1, [r0]
	strb r1, [r2, #0xc]
_021DB1F8:
	ldr r1, [r0]
	cmp r1, #8
	bgt _021DB210
	bge _021DB21E
	cmp r1, #1
	bgt _021DB22E
	cmp r1, #0
	blt _021DB22E
	beq _021DB216
	cmp r1, #1
	beq _021DB216
	b _021DB22E
_021DB210:
	cmp r1, #9
	beq _021DB226
	b _021DB22E
_021DB216:
	mov r1, #0
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB21E:
	ldrb r1, [r2, #9]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB226:
	mov r1, #9
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB22E:
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB238:
	cmp r1, #3
	beq _021DB23E
_021DB23C:
	b _021DB348
_021DB23E:
	ldr r3, [r0]
	cmp r3, #9
	bhi _021DB276
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB250: ; jump table
	.short _021DB264 - _021DB250 - 2 ; case 0
	.short _021DB264 - _021DB250 - 2 ; case 1
	.short _021DB276 - _021DB250 - 2 ; case 2
	.short _021DB276 - _021DB250 - 2 ; case 3
	.short _021DB268 - _021DB250 - 2 ; case 4
	.short _021DB268 - _021DB250 - 2 ; case 5
	.short _021DB268 - _021DB250 - 2 ; case 6
	.short _021DB268 - _021DB250 - 2 ; case 7
	.short _021DB268 - _021DB250 - 2 ; case 8
	.short _021DB26E - _021DB250 - 2 ; case 9
_021DB264:
	strb r3, [r2, #7]
	b _021DB276
_021DB268:
	strb r3, [r2, #0xb]
	ldr r1, [r0]
	b _021DB274
_021DB26E:
	mov r1, #9
	strb r1, [r2, #0xb]
	mov r1, #0xa
_021DB274:
	strb r1, [r2, #0xc]
_021DB276:
	ldr r1, [r0]
	cmp r1, #3
	bhi _021DB298
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB288: ; jump table
	.short _021DB290 - _021DB288 - 2 ; case 0
	.short _021DB348 - _021DB288 - 2 ; case 1
	.short _021DB348 - _021DB288 - 2 ; case 2
	.short _021DB348 - _021DB288 - 2 ; case 3
_021DB290:
	ldrb r1, [r2, #0xa]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB298:
	mov r1, #4
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB2A0:
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r0]
	bpl _021DB2AE
	mov r3, #4
	b _021DB2B4
_021DB2AE:
	cmp r3, #4
	ble _021DB2B4
	mov r3, #0
_021DB2B4:
	str r3, [r0]
	ldr r3, [r0, #4]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #4]
	bpl _021DB2C4
	mov r1, #3
	b _021DB2CA
_021DB2C4:
	cmp r1, #3
	ble _021DB2CA
	mov r1, #0
_021DB2CA:
	str r1, [r0, #4]
	cmp r1, #2
	bne _021DB304
	ldr r1, [r0]
	cmp r1, #0
	beq _021DB2DA
	cmp r1, #1
	bne _021DB2E0
_021DB2DA:
	strb r1, [r2, #0xa]
	ldr r1, [r0]
	strb r1, [r2, #6]
_021DB2E0:
	ldr r1, [r0]
	cmp r1, #4
	bhi _021DB348
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB2F2: ; jump table
	.short _021DB348 - _021DB2F2 - 2 ; case 0
	.short _021DB348 - _021DB2F2 - 2 ; case 1
	.short _021DB348 - _021DB2F2 - 2 ; case 2
	.short _021DB348 - _021DB2F2 - 2 ; case 3
	.short _021DB2FC - _021DB2F2 - 2 ; case 4
_021DB2FC:
	ldrb r1, [r2, #0xb]
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB304:
	cmp r1, #0
	bne _021DB348
	ldr r1, [r0]
	cmp r1, #0
	beq _021DB312
	cmp r1, #1
	bne _021DB318
_021DB312:
	strb r1, [r2, #0xa]
	ldr r1, [r0]
	strb r1, [r2, #6]
_021DB318:
	ldr r3, [r0]
	cmp r3, #4
	bhi _021DB348
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB32A: ; jump table
	.short _021DB334 - _021DB32A - 2 ; case 0
	.short _021DB334 - _021DB32A - 2 ; case 1
	.short _021DB33C - _021DB32A - 2 ; case 2
	.short _021DB33C - _021DB32A - 2 ; case 3
	.short _021DB344 - _021DB32A - 2 ; case 4
_021DB334:
	mov r1, #0
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB33C:
	sub r1, r3, #1
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DB344:
	ldrb r1, [r2, #0xc]
	str r1, [r0]
_021DB348:
	pop {r3, r4}
	bx lr
	thumb_func_end ovy280_21dafb4

	thumb_func_start sub_021DB34C
sub_021DB34C: ; 0x021DB34C
	ldr r3, _021DB350 ; =sub_021DB354
	bx r3
	.align 2, 0
_021DB350: .word sub_021DB354
	thumb_func_end sub_021DB34C

	thumb_func_start sub_021DB354
sub_021DB354: ; 0x021DB354
	ldr r2, [r0, #4]
	cmp r2, #5
	bge _021DB368
	cmp r1, #0
	beq _021DB364
	ldr r0, [r0]
	str r2, [r1, #4]
	str r0, [r1]
_021DB364:
	mov r0, #1
	bx lr
_021DB368:
	ldr r0, [r0]
	cmp r0, #5
	bgt _021DB372
	add r0, r0, #2
	bx lr
_021DB372:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DB354

	thumb_func_start ovy280_21db378
ovy280_21db378: ; 0x021DB378
	push {r3, r4}
	sub sp, #8
	ldr r2, [r0, #4]
	mov r3, #0
	cmp r2, #3
	bhi _021DB3DA
	add r4, r2, r2
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021DB390: ; jump table
	.short _021DB398 - _021DB390 - 2 ; case 0
	.short _021DB3AE - _021DB390 - 2 ; case 1
	.short _021DB3BA - _021DB390 - 2 ; case 2
	.short _021DB3D0 - _021DB390 - 2 ; case 3
_021DB398:
	ldr r2, [r0]
	cmp r2, #0xa
	bne _021DB3A2
	mov r3, #6
	b _021DB3DA
_021DB3A2:
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
_021DB3AA:
	mov r3, #1
	b _021DB3DA
_021DB3AE:
	ldr r2, [r0]
	cmp r2, #9
	bne _021DB3B8
	mov r3, #7
	b _021DB3DA
_021DB3B8:
	b _021DB3A2
_021DB3BA:
	ldr r0, [r0]
	cmp r0, #0
	beq _021DB3C4
	cmp r0, #9
	bne _021DB3C8
_021DB3C4:
	mov r3, #8
	b _021DB3DA
_021DB3C8:
	sub r0, r0, #1
	str r0, [sp]
	str r2, [sp, #4]
	b _021DB3AA
_021DB3D0:
	ldr r0, [r0]
	mov r3, #9
	cmp r0, #4
	beq _021DB3DA
	add r3, r0, #2
_021DB3DA:
	cmp r3, #1
	bne _021DB3EA
	cmp r1, #0
	beq _021DB3EA
	ldr r2, [sp]
	ldr r0, [sp, #4]
	str r2, [r1]
	str r0, [r1, #4]
_021DB3EA:
	add r0, r3, #0
	add sp, #8
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy280_21db378

	thumb_func_start ovy280_21db3f4
ovy280_21db3f4: ; 0x021DB3F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r7, #0x4d
	lsl r7, r7, #2
	add r6, r1, #0
	str r2, [sp, #0xc]
	add r5, r0, #0
	mov r1, #0
	add r2, r7, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x40]
	blx MI_CpuFill8
	add r1, r5, #0
	add r1, #0xd8
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	add r1, r5, #0
	mov r3, #0x77
	add r3, #0xad
	ldr r0, [sp, #0xc]
	add r1, #0xf4
	str r0, [r1]
	add r1, r5, #0
	ldr r0, [sp, #0x10]
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xfe
	strh r4, [r0]
	add r0, r7, #0
	sub r0, #0x34
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x20
	str r6, [r5, r0]
	ldr r0, [sp, #0x38]
	sub r7, #8
	str r0, [r5, r7]
	mov r0, #0x77
	mov r1, #0xa
	mov r2, #0
	add r3, r5, r3
	str r4, [sp]
	mov r7, #0x77
	bl sub_0204B304
	mov r1, #0x77
	mov r3, #0x77
	add r1, #0xa5
	str r0, [r5, r1]
	add r3, #0xb1
	mov r0, #0x77
	mov r1, #5
	mov r2, #0
	add r3, r5, r3
	str r4, [sp]
	bl sub_0204B304
	mov r1, #0x77
	add r1, #0xa9
	str r0, [r5, r1]
	cmp r6, #3
	bne _021DB490
	add r7, #0xad
	ldr r1, [r5, r7]
	mov r2, #1
	mov r0, #1
	add r1, #0xc
	lsl r2, r2, #0xb
	bl sub_02045054
	mov r0, #2
	mov r1, #0
	b _021DB4A4
_021DB490:
	add r7, #0xb1
	ldr r1, [r5, r7]
	mov r2, #1
	mov r0, #1
	add r1, #0xc
	lsl r2, r2, #0xb
	bl sub_02045054
	mov r0, #2
	mov r1, #1
_021DB4A4:
	bl sub_02044C98
	mov r0, #1
	bl GFL_BGSysLoadScr
	add r0, r5, #0
	ldr r2, [sp, #0x3c]
	add r0, #0x24
	add r1, r6, #0
	add r3, r4, #0
	bl ovy280_21d9cfc
	mov r2, #0x41
	lsl r2, r2, #2
	mov r0, #1
	mov r1, #0x41
	add r2, r2, #4
	add r0, #0xff
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_021DB74C
	mov r3, #0x41
	lsl r3, r3, #2
	add r2, r0, #0
	str r4, [sp]
	add r3, #0x28
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy280_21da958
	mov r0, #0xf
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #3
	mov r2, #5
	mov r3, #0x1a
	mov r6, #0x1a
	bl BmpWin_CreateDynamic
	add r1, r5, #0
	add r7, r0, #0
	add r1, #0xe0
	str r7, [r1]
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl BmpWin_FlushMap
	add r0, r7, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r5, #0
	add r0, #0xe0
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0]
	add r0, r5, #0
	add r1, r5, #0
	mov r7, #0
	add r0, #0xf0
	strb r7, [r0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, #0xec
	str r4, [sp]
	bl ovy280_21daadc
	bl sub_0203D554
	cmp r0, #0
	add r4, sp, #0x14
	bne _021DB576
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xd8
	add r2, r4, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DB59E
	add r6, #0xe6
	ldr r0, [r5, r6]
	mov r3, #0x41
	str r0, [sp]
	lsl r3, r3, #2
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl ovy280_21d9d78
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021DB576:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xd8
	add r2, r4, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DB59E
	add r6, #0xe6
	ldr r0, [r5, r6]
	mov r3, #0x41
	str r0, [sp]
	lsl r3, r3, #2
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0x24
	add r1, r7, #0
	add r2, r4, #0
	bl ovy280_21d9d78
_021DB59E:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21db3f4

	thumb_func_start ovy280_21db5a4
ovy280_21db5a4: ; 0x021DB5A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl BmpWin_Free
	add r0, r5, #0
	bl sub_021DA9F4
	add r0, r5, #0
	add r0, #0x24
	bl sub_021D9D6C
	mov r4, #0x47
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_HeapFree
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r4, #0x18
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21db5a4

	thumb_func_start ovy280_21db5e0
ovy280_21db5e0: ; 0x021DB5E0
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r0, #0
	mov r2, #0
	add r0, #0xe8
	str r2, [r0]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	beq _021DB600
	cmp r0, #1
	beq _021DB676
	cmp r0, #2
	beq _021DB636
	b _021DB69C
_021DB600:
	add r5, sp, #0x20
	add r1, r2, #0
	add r0, r5, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbcc0
	cmp r0, #0
	bne _021DB628
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbadc
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbbe0
_021DB628:
	cmp r0, #0
	beq _021DB69C
	add r0, r4, #0
	add r1, sp, #0x20
	bl ovy280_21dbd10
	b _021DB69C
_021DB636:
	add r5, sp, #0x10
	add r1, r2, #0
	add r0, r5, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbfdc
	cmp r0, #0
	bne _021DB65E
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbe14
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dbf20
_021DB65E:
	cmp r0, #0
	beq _021DB66A
	add r0, r4, #0
	add r1, sp, #0x10
	bl ovy280_21dc048
_021DB66A:
	add r0, r4, #0
	bl ovy280_21db7b4
	cmp r0, #0
	beq _021DB69C
	b _021DB694
_021DB676:
	add r0, r1, #0
	bl sub_021DA778
	cmp r0, #0
	beq _021DB694
	add r2, r4, #0
	add r0, r4, #0
	mov r1, #7
	add r2, #0xd8
	bl ovy280_21dac14
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0xe8
	str r1, [r0]
_021DB694:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
_021DB69C:
	add r1, r4, #0
	add r5, sp, #0
	add r0, r4, #0
	add r1, #0xd8
	add r2, r5, #0
	bl ovy280_21dac04
	mov r1, #1
	lsl r1, r1, #8
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x24
	add r2, r5, #0
	bl ovy280_21d9f58
	add r0, r4, #0
	bl ovy280_21db6f0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21db5e0

	thumb_func_start sub_021DB6C4
sub_021DB6C4: ; 0x021DB6C4
	add r2, r0, #0
	add r2, #0xe8
	ldr r2, [r2]
	cmp r2, #1
	beq _021DB6D6
	cmp r2, #2
	beq _021DB6D6
	cmp r2, #9
	bne _021DB6E2
_021DB6D6:
	cmp r1, #0
	beq _021DB6E2
	add r2, r0, #0
	add r2, #0xfc
	ldrh r2, [r2]
	strh r2, [r1]
_021DB6E2:
	add r0, #0xe8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021DB6C4

	thumb_func_start sub_021DB6E8
sub_021DB6E8: ; 0x021DB6E8
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021DB6E8

	thumb_func_start ovy280_21db6f0
ovy280_21db6f0: ; 0x021DB6F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf8
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021DB72A
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021DB72A
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf0
	strb r1, [r0]
_021DB72A:
	add r5, #0xf0
	ldrb r0, [r5]
	cmp r0, #0
	bne _021DB736
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DB736:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21db6f0

	thumb_func_start sub_021DB73C
sub_021DB73C: ; 0x021DB73C
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021DB73C

	thumb_func_start sub_021DB744
sub_021DB744: ; 0x021DB744
	mov r2, #0x13
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021DB744

	thumb_func_start sub_021DB74C
sub_021DB74C: ; 0x021DB74C
	cmp r0, #3
	bne _021DB756
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r1, r0
_021DB756:
	bx lr
	thumb_func_end sub_021DB74C

	thumb_func_start ovy280_21db758
ovy280_21db758: ; 0x021DB758
	push {r3, r4, r5, lr}
	mov r4, #0x45
	lsl r4, r4, #2
	ldr r2, [r0, r4]
	cmp r2, r1
	beq _021DB7AC
	add r3, r4, #0
	str r1, [r0, r4]
	mov r2, #0
	sub r3, #0xa
	strh r2, [r0, r3]
	add r3, r4, #0
	sub r3, #8
	strh r2, [r0, r3]
	mov r5, #1
	sub r3, r4, #4
	str r5, [r0, r3]
	cmp r1, #3
	beq _021DB786
	add r5, #0xff
	ldr r1, [r0, r5]
	cmp r1, #3
	bne _021DB788
_021DB786:
	mov r2, #1
_021DB788:
	mov r1, #0x46
	lsl r1, r1, #2
	str r2, [r0, r1]
	cmp r2, #0
	ldr r0, _021DB7B0 ; =0x04000050
	beq _021DB79C
	mov r3, #0x10
	str r3, [sp]
	mov r1, #0xe
	b _021DB7A2
_021DB79C:
	mov r3, #0x10
	str r3, [sp]
	mov r1, #0xa
_021DB7A2:
	mov r2, #0x2f
	bl G2x_SetBlendAlpha_
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DB7AC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DB7B0: .word 0x04000050
	thumb_func_end ovy280_21db758

	thumb_func_start ovy280_21db7b4
ovy280_21db7b4: ; 0x021DB7B4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x11
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021DB848
	sub r0, r5, #4
	ldrh r0, [r4, r0]
	cmp r0, #4
	bhi _021DB848
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB7D6: ; jump table
	.short _021DB7E0 - _021DB7D6 - 2 ; case 0
	.short _021DB87C - _021DB7D6 - 2 ; case 1
	.short _021DB8BC - _021DB7D6 - 2 ; case 2
	.short _021DB8F6 - _021DB7D6 - 2 ; case 3
	.short _021DB95C - _021DB7D6 - 2 ; case 4
_021DB7E0:
	mov r0, #1
	mov r7, #1
	bl sub_02044E74
	sub r0, r5, #6
	ldrh r6, [r4, r0]
	mov r1, #7
	lsl r0, r6, #4
	neg r0, r0
	blx sub_0208D65C
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsl r0, r7, #0xc
	orr r1, r0
	ldr r0, _021DB990 ; =0x04000052
	strh r1, [r0]
	mov r0, #7
	sub r0, #0x37
	mul r0, r6
	mov r1, #7
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #1
	mov r1, #3
	add r2, r6, #0
	mov r7, #3
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r5, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021DB83C
	mov r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02044CFC
_021DB83C:
	ldr r0, _021DB994 ; =0x0000010A
	ldrh r2, [r4, r0]
	add r1, r2, #1
	strh r1, [r4, r0]
	cmp r2, #7
	bhi _021DB84A
_021DB848:
	b _021DB98C
_021DB84A:
	add r0, #0xe
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021DB85E
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	b _021DB860
_021DB85E:
	mov r0, #1
_021DB860:
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	ldr r0, _021DB994 ; =0x0000010A
	mov r1, #0
	strh r1, [r4, r0]
	mov r1, #1
_021DB876:
	add r0, r0, #2
	strh r1, [r4, r0]
	b _021DB98C
_021DB87C:
	mov r6, #3
	sub r6, #0x33
	mov r0, #1
	mov r1, #3
	add r2, r6, #0
	mov r7, #3
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r5, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021DB8A8
	mov r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02044CFC
_021DB8A8:
	mov r5, #0x45
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy280_21db99c
	mov r0, #2
	sub r5, #8
	strh r0, [r4, r5]
	b _021DB98C
_021DB8BC:
	mov r1, #7
	sub r0, r5, #6
	strh r1, [r4, r0]
	sub r0, r5, #4
	mov r1, #3
	strh r1, [r4, r0]
	mov r0, #1
	mov r1, #1
	mov r5, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	add r0, #0xff
	ldr r0, [r4, r0]
	cmp r0, #3
	beq _021DB8EC
	mov r0, #2
	add r1, r5, #0
	bl sub_02044C98
_021DB8EC:
	mov r1, #1
	ldr r0, _021DB990 ; =0x04000052
	lsl r1, r1, #0xc
	strh r1, [r0]
	b _021DB98C
_021DB8F6:
	sub r0, r5, #6
	ldrh r6, [r4, r0]
	mov r1, #7
	lsl r0, r6, #4
	neg r0, r0
	blx sub_0208D65C
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0xc
	orr r1, r0
	ldr r0, _021DB990 ; =0x04000052
	strh r1, [r0]
	mov r0, #7
	sub r0, #0x37
	mul r0, r6
	mov r1, #7
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #1
	mov r1, #3
	add r2, r6, #0
	mov r7, #3
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r5, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021DB94C
	mov r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02044CFC
_021DB94C:
	ldr r0, _021DB994 ; =0x0000010A
	ldrh r2, [r4, r0]
	sub r1, r2, #1
	strh r1, [r4, r0]
	cmp r2, #0
	bne _021DB98C
	mov r1, #4
	b _021DB876
_021DB95C:
	mov r0, #1
	mov r1, #3
	mov r2, #0
	mov r6, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #2
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	add r0, r5, #0
	add r0, #8
	str r6, [r4, r0]
	ldr r0, _021DB998 ; =0x04000050
	strh r6, [r0]
	str r6, [r4, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DB98C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB990: .word 0x04000052
_021DB994: .word 0x0000010A
_021DB998: .word 0x04000050
	thumb_func_end ovy280_21db7b4

	thumb_func_start ovy280_21db99c
ovy280_21db99c: ; 0x021DB99C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	add r5, r0, #0
	lsl r4, r4, #8
	add r6, r1, #0
	ldr r1, [r5, r4]
	cmp r1, r6
	beq _021DBA5C
	bl sub_021DA9F4
	add r2, r4, #0
	add r2, #8
	add r1, r4, #4
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	add r0, r6, #0
	bl sub_021DB74C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xfe
	ldrh r0, [r0]
	add r3, r4, #0
	add r3, #0x2c
	str r0, [sp]
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy280_21da958
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r7, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xfe
	ldrh r0, [r0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	add r2, #0xf8
	add r3, #0xf4
	add r1, r5, #0
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	add r1, #0xec
	bl ovy280_21daadc
	cmp r6, #3
	bne _021DBA24
	add r4, #0x24
	ldr r1, [r5, r4]
	mov r0, #1
	add r1, #0xc
	lsl r2, r0, #0xb
	bl sub_02045054
	mov r0, #2
	add r1, r7, #0
	bl sub_02044C98
	b _021DBA32
_021DBA24:
	add r4, #0x28
	ldr r1, [r5, r4]
	mov r0, #1
	add r1, #0xc
	lsl r2, r0, #0xb
	bl sub_02045054
_021DBA32:
	mov r0, #1
	mov r4, #1
	bl GFL_BGSysLoadScr
	cmp r6, #3
	beq _021DBA46
	add r4, #0xff
	ldr r0, [r5, r4]
	cmp r0, #3
	bne _021DBA56
_021DBA46:
	mov r1, #1
	lsl r1, r1, #8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xd8
	add r2, r6, #0
	bl ovy280_21dac70
_021DBA56:
	mov r0, #1
	lsl r0, r0, #8
	str r6, [r5, r0]
_021DBA5C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21db99c

	thumb_func_start ovy280_21dba60
ovy280_21dba60: ; 0x021DBA60
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #1
	add r5, r0, #0
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r6, r2, #0
	cmp r0, #3
	bne _021DBAD8
	add r0, r1, #0
	add r0, #8
	ldrb r0, [r5, r0]
	cmp r0, r6
	bne _021DBA84
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, r7
	beq _021DBAD8
_021DBA84:
	mov r4, #1
	lsl r4, r4, #8
	lsl r2, r6, #0x18
	ldr r0, [r5, r4]
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl sub_021DB74C
	add r2, r4, #0
	add r2, #0x2c
	add r1, r0, #0
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy280_21da9e4
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xfe
	ldrh r0, [r0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	add r2, #0xf8
	add r3, #0xf4
	add r1, r5, #0
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	add r1, #0xec
	bl ovy280_21daadc
	add r0, r4, #4
	str r7, [r5, r0]
	add r4, #8
	strb r6, [r5, r4]
_021DBAD8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dba60

	thumb_func_start ovy280_21dbadc
ovy280_21dbadc: ; 0x021DBADC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r5, #0
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021DBAF6
	sub r1, #0x41
	str r5, [sp, #4]
	str r1, [sp, #8]
	b _021DBB18
_021DBAF6:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _021DBB08
	str r5, [sp, #4]
	mov r5, #1
	str r5, [sp, #8]
	b _021DBB54
_021DBB08:
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021DBB1C
	sub r1, #0x21
	str r1, [sp, #4]
_021DBB16:
	str r5, [sp, #8]
_021DBB18:
	mov r5, #1
	b _021DBB54
_021DBB1C:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021DBB2C
	mov r0, #1
	str r0, [sp, #4]
	b _021DBB16
_021DBB2C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #8
	tst r0, r1
	beq _021DBB54
	add r2, r4, #0
	add r0, r4, #0
	mov r1, #7
	add r2, #0xd8
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r5, #1
	bl ovy280_21dac14
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xd8
	add r2, sp, #4
	bl ovy280_21daacc
_021DBB54:
	cmp r5, #0
	beq _021DBBD4
	bl sub_0203D554
	cmp r0, #1
	bne _021DBB98
	add r1, r4, #0
	add r5, sp, #0xc
	add r0, r4, #0
	add r1, #0xd8
	add r2, r5, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBBD4
	mov r0, #0
	bl sub_0203D564
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x24
	mov r1, #1
	add r2, r5, #0
	bl ovy280_21d9d78
	ldr r0, _021DBBDC ; =0x00000548
	bl GFL_SndSEPlay
	b _021DBBD4
_021DBB98:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xd8
	add r2, sp, #4
	bl ovy280_21daacc
	add r1, r4, #0
	add r5, sp, #0xc
	add r0, r4, #0
	add r1, #0xd8
	add r2, r5, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBBD4
	ldr r0, _021DBBDC ; =0x00000548
	bl GFL_SndSEPlay
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x24
	mov r1, #1
	add r2, r5, #0
	bl ovy280_21d9d78
_021DBBD4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021DBBDC: .word 0x00000548
	thumb_func_end ovy280_21dbadc

	thumb_func_start ovy280_21dbbe0
ovy280_21dbbe0: ; 0x021DBBE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	bne _021DBC06
	add r0, r5, #0
	add r0, #0xd8
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r6, #1
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	str r6, [r4, #4]
_021DBC06:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _021DBC20
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #6
	add r2, #8
	mov r6, #6
	bl ovy280_21dac14
	str r6, [r4]
	mov r6, #1
_021DBC20:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #4
	bne _021DBC58
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r0, r0, #3
	str r0, [r4]
	cmp r0, #5
	ble _021DBC3A
	mov r0, #2
	str r0, [r4]
_021DBC3A:
	add r2, r5, #0
	ldr r1, [r4]
	add r0, r5, #0
	add r2, #0xd8
	bl ovy280_21dac14
	add r0, r5, #0
	add r0, #0xd8
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r6, #1
	str r1, [r4, #8]
	str r0, [r4, #0xc]
_021DBC58:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _021DBC6E
	add r0, r5, #0
	mov r1, #0xa
	add r0, #0xe8
	str r1, [r0]
	mov r6, #0
_021DBC6E:
	cmp r6, #0
	beq _021DBCB6
	bl sub_0203D554
	cmp r0, #1
	bne _021DBCB6
	add r1, r5, #0
	add r4, sp, #4
	add r0, r5, #0
	add r1, #0xd8
	add r2, r4, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBCB6
	ldr r0, _021DBCBC ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r5, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl ovy280_21d9d78
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021DBCB6:
	add r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DBCBC: .word 0x00000548
	thumb_func_end ovy280_21dbbe0

	thumb_func_start ovy280_21dbcc0
ovy280_21dbcc0: ; 0x021DBCC0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021DBD0A
	ldr r0, [sp, #4]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #8
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, #0xd8
	bl ovy280_21daa48
	cmp r0, #0
	beq _021DBD0A
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r1, [r0]
	ldr r0, [r5]
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r1, [r4, #8]
	bl sub_0203D564
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DBD0A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21dbcc0

	thumb_func_start ovy280_21dbd10
ovy280_21dbd10: ; 0x021DBD10
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r4, r0, #0
	cmp r1, #0
	beq _021DBD2E
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xd8
	add r2, #0xfc
	bl ovy280_21daa00
	add r1, r0, #0
	b _021DBD30
_021DBD2E:
	ldr r1, [r5]
_021DBD30:
	cmp r1, #0xb
	bhi _021DBDDA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DBD40: ; jump table
	.short _021DBDDA - _021DBD40 - 2 ; case 0
	.short _021DBD58 - _021DBD40 - 2 ; case 1
	.short _021DBD72 - _021DBD40 - 2 ; case 2
	.short _021DBD72 - _021DBD40 - 2 ; case 3
	.short _021DBD72 - _021DBD40 - 2 ; case 4
	.short _021DBD72 - _021DBD40 - 2 ; case 5
	.short _021DBDA2 - _021DBD40 - 2 ; case 6
	.short _021DBDA6 - _021DBD40 - 2 ; case 7
	.short _021DBDAA - _021DBD40 - 2 ; case 8
	.short _021DBD66 - _021DBD40 - 2 ; case 9
	.short _021DBDCE - _021DBD40 - 2 ; case 10
	.short _021DBDD2 - _021DBD40 - 2 ; case 11
_021DBD58:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xe8
	str r1, [r0]
_021DBD60:
	add r0, r4, #0
	add r0, #0xe4
	b _021DBDD8
_021DBD66:
	add r0, r4, #0
	mov r1, #9
	add r0, #0xe8
	str r1, [r0]
	mov r1, #1
	b _021DBD60
_021DBD72:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021DBD84
	ldr r0, _021DBE08 ; =0x00000557
	bl GFL_SndSEPlay
	b _021DBDDA
_021DBD84:
	add r0, r4, #0
	sub r1, r1, #2
	bl ovy280_21db758
	cmp r0, #0
	beq _021DBDDA
	ldr r0, _021DBE0C ; =0x0000064B
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	add r0, #0xe4
	str r1, [r0]
	mov r1, #6
	b _021DBDD4
_021DBDA2:
	mov r1, #5
	b _021DBDD4
_021DBDA6:
	mov r1, #7
	b _021DBDD4
_021DBDAA:
	ldr r0, _021DBE10 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #8
	add r0, #0xe8
	str r1, [r0]
	add r1, #0xfc
	ldr r2, [r4, r1]
	mov r1, #1
	eor r1, r2
	mov r2, #0x42
	lsl r2, r2, #2
	ldrb r2, [r4, r2]
	add r0, r4, #0
	bl ovy280_21dba60
	b _021DBDDA
_021DBDCE:
	mov r1, #3
	b _021DBDD4
_021DBDD2:
	mov r1, #4
_021DBDD4:
	add r0, r4, #0
	add r0, #0xe8
_021DBDD8:
	str r1, [r0]
_021DBDDA:
	add r5, #8
	add r1, r5, #0
	add r5, sp, #4
	add r0, r4, #0
	add r2, r5, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBE04
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x24
	mov r1, #2
	add r2, r5, #0
	bl ovy280_21d9d78
_021DBE04:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021DBE08: .word 0x00000557
_021DBE0C: .word 0x0000064B
_021DBE10: .word 0x0000054C
	thumb_func_end ovy280_21dbd10

	thumb_func_start ovy280_21dbe14
ovy280_21dbe14: ; 0x021DBE14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	bne _021DBE6C
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	beq _021DBE38
	sub r1, #0x41
	str r5, [sp, #0xc]
	str r1, [sp, #0x10]
	b _021DBE6A
_021DBE38:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _021DBE4A
	str r5, [sp, #0xc]
	mov r5, #1
	str r5, [sp, #0x10]
	b _021DBE6C
_021DBE4A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _021DBE5A
	sub r1, #0x21
	str r1, [sp, #0xc]
	b _021DBE68
_021DBE5A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _021DBE6C
	mov r0, #1
	str r0, [sp, #0xc]
_021DBE68:
	str r5, [sp, #0x10]
_021DBE6A:
	mov r5, #1
_021DBE6C:
	cmp r5, #0
	beq _021DBF14
	add r0, r4, #0
	add r0, #0xd8
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r6, sp, #0xc
	str r0, [sp, #8]
	add r5, sp, #4
	str r1, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy280_21daacc
	add r1, r5, #0
	add r0, r4, #0
	mov r2, #0
	mov r5, #0
	bl ovy280_21daa00
	sub r0, r0, #2
	cmp r0, #3
	bhi _021DBF14
	bl sub_0203D554
	cmp r0, #1
	bne _021DBED8
	add r1, r4, #0
	add r6, sp, #0x14
	add r0, r4, #0
	add r1, #0xd8
	add r2, r6, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBF14
	ldr r0, _021DBF1C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0203D564
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x24
	add r2, r6, #0
	b _021DBF0C
_021DBED8:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xd8
	add r2, r6, #0
	bl ovy280_21daacc
	add r1, r4, #0
	add r5, sp, #0x14
	add r0, r4, #0
	add r1, #0xd8
	add r2, r5, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBF14
	ldr r0, _021DBF1C ; =0x00000548
	bl GFL_SndSEPlay
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x24
	add r2, r5, #0
_021DBF0C:
	add r3, r3, #4
	ldr r3, [r4, r3]
	bl ovy280_21d9d78
_021DBF14:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021DBF1C: .word 0x00000548
	thumb_func_end ovy280_21dbe14

	thumb_func_start ovy280_21dbf20
ovy280_21dbf20: ; 0x021DBF20
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	mov r6, #0
	cmp r0, #0
	bne _021DBFD2
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021DBF52
	add r0, r5, #0
	add r0, #0xd8
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r6, r1, #0
	str r2, [r4, #8]
	str r0, [r4, #0xc]
	str r1, [r4, #4]
_021DBF52:
	bl GCTX_HIDGetPressedKeys
	mov r1, #4
	tst r0, r1
	beq _021DBF8A
	add r1, #0xfc
	ldr r0, [r5, r1]
	add r0, r0, #3
	str r0, [r4]
	cmp r0, #5
	ble _021DBF6C
	mov r0, #2
	str r0, [r4]
_021DBF6C:
	add r2, r5, #0
	ldr r1, [r4]
	add r0, r5, #0
	add r2, #0xd8
	bl ovy280_21dac14
	add r0, r5, #0
	add r0, #0xd8
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r6, #1
	str r1, [r4, #8]
	str r0, [r4, #0xc]
_021DBF8A:
	cmp r6, #0
	beq _021DBFD2
	bl sub_0203D554
	cmp r0, #1
	bne _021DBFD2
	add r1, r5, #0
	add r4, sp, #4
	add r0, r5, #0
	add r1, #0xd8
	add r2, r4, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DBFD2
	ldr r0, _021DBFD8 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r5, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl ovy280_21d9d78
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021DBFD2:
	add r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DBFD8: .word 0x00000548
	thumb_func_end ovy280_21dbf20

	thumb_func_start ovy280_21dbfdc
ovy280_21dbfdc: ; 0x021DBFDC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	cmp r0, #0
	bne _021DC042
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021DC042
	ldr r0, [sp, #4]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #8
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, #0xd8
	bl ovy280_21daa48
	cmp r0, #0
	beq _021DC042
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xd8
	mov r2, #0
	bl ovy280_21daa00
	sub r0, r0, #2
	cmp r0, #3
	bhi _021DC042
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r1, [r0]
	ldr r0, [r5]
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r1, [r4, #8]
	bl sub_0203D564
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DC042:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21dbfdc

	thumb_func_start ovy280_21dc048
ovy280_21dc048: ; 0x021DC048
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r4, r0, #0
	cmp r1, #0
	beq _021DC066
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xd8
	add r2, #0xfc
	bl ovy280_21daa00
	add r1, r0, #0
	b _021DC068
_021DC066:
	ldr r1, [r5]
_021DC068:
	cmp r1, #5
	bhi _021DC0A6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC078: ; jump table
	.short _021DC0A6 - _021DC078 - 2 ; case 0
	.short _021DC0A6 - _021DC078 - 2 ; case 1
	.short _021DC084 - _021DC078 - 2 ; case 2
	.short _021DC084 - _021DC078 - 2 ; case 3
	.short _021DC084 - _021DC078 - 2 ; case 4
	.short _021DC084 - _021DC078 - 2 ; case 5
_021DC084:
	add r0, r4, #0
	sub r1, r1, #2
	bl ovy280_21db758
	cmp r0, #0
	beq _021DC0A6
	ldr r0, _021DC0D4 ; =0x0000064B
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0xe8
	str r1, [r0]
_021DC0A6:
	add r5, #8
	add r1, r5, #0
	add r5, sp, #4
	add r0, r4, #0
	add r2, r5, #0
	bl ovy280_21dac04
	cmp r0, #0
	beq _021DC0D0
	mov r3, #1
	lsl r3, r3, #8
	ldr r0, [r4, r3]
	add r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x24
	mov r1, #2
	add r2, r5, #0
	bl ovy280_21d9d78
_021DC0D0:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021DC0D4: .word 0x0000064B
	thumb_func_end ovy280_21dc048

	thumb_func_start ovy280_21dc0d8
ovy280_21dc0d8: ; 0x021DC0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #0xf
	strh r0, [r5, #0x20]
	ldr r0, [sp, #0x20]
	str r4, [r5, #4]
	str r0, [r5, #0x18]
	str r6, [r5]
	str r7, [r5, #0x10]
	add r1, sp, #0x20
	ldrh r1, [r1, #4]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r5, #0x1c]
	mov r0, #4
	str r0, [sp]
	mov r1, #0xf
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x14]
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r0, [r5, #8]
	strb r1, [r5, #0xc]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r4, [r5, #0x14]
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
	thumb_func_end ovy280_21dc0d8

	thumb_func_start ovy280_21dc15c
ovy280_21dc15c: ; 0x021DC15C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl BmpWin_Free
	ldr r0, [r4, #0x1c]
	bl GFL_StrBufFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy280_21dc15c

	thumb_func_start ovy280_21dc178
ovy280_21dc178: ; 0x021DC178
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	add r5, r1, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021C1C
	cmp r0, #0
	beq _021DC1AA
_021DC192:
	ldr r0, [r4, #0x10]
	bl sub_02021A3C
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021C1C
	cmp r0, #0
	bne _021DC192
_021DC1AA:
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	add r1, r5, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #8]
	ldr r5, [r4, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21dc178

	thumb_func_start ovy280_21dc1e8
ovy280_21dc1e8: ; 0x021DC1E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #0x18
	ldrh r0, [r0]
	add r6, r1, #0
	add r7, r3, #0
	str r0, [sp]
	add r0, r2, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl sub_0201C2CC
	add r4, r0, #0
	mov r1, #0x6f
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy280_21dc220
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc1e8

	thumb_func_start ovy280_21dc220
ovy280_21dc220: ; 0x021DC220
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	mov r1, #0
	bl sub_020243F4
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	ldr r4, [r5, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #0xc]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc220

	thumb_func_start ovy280_21dc280
ovy280_21dc280: ; 0x021DC280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xc]
	ldr r4, [r5, #0x10]
	cmp r0, #0
	beq _021DC2A8
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021DC2A8
	ldr r0, [r5, #8]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0xc]
_021DC2A8:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _021DC2B2
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DC2B2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc280

	thumb_func_start ovy280_21dc2b8
ovy280_21dc2b8: ; 0x021DC2B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc2b8

	thumb_func_start ovy280_21dc2d8
ovy280_21dc2d8: ; 0x021DC2D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DC2E6
	bl sub_020223CC
_021DC2E6:
	ldr r0, [r4, #4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy280_21dc2d8

	thumb_func_start ovy280_21dc2f8
ovy280_21dc2f8: ; 0x021DC2F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r2, #0
	add r0, r3, #0
	add r4, r1, #0
	str r3, [sp, #0x18]
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02165B0C
	cmp r0, #0
	beq _021DC322
	ldr r2, [r6, #8]
	add r0, r7, #0
	mov r1, #0
	bl sub_02024464
	b _021DC34C
_021DC322:
	ldr r0, [r6, #0x20]
	ldr r1, [sp, #0x18]
	bl sub_020485A4
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02165AFC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
_021DC34C:
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	add r0, r7, #0
	mov r1, #1
	bl sub_0202470C
	ldr r0, [r5]
	cmp r0, #0
	beq _021DC362
	bl sub_020223CC
_021DC362:
	ldr r0, [r4, #0x14]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x1c]
	bl sub_02048570
	ldr r1, [r4, #0x1c]
	ldr r2, [r6, #0xc]
	add r0, r7, #0
	bl GFL_WordSetFormatStrbuf
	bl sub_02017BCC
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r6, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x1c]
	bl sub_02022268
	str r0, [r5]
	ldr r0, _021DC3C0 ; =ovy280_21dcd58
	strh r6, [r5, #0xe]
	str r0, [r5, #8]
	mov r0, #0x3c
	strh r0, [r5, #0xc]
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DC3C0: .word ovy280_21dcd58
	thumb_func_end ovy280_21dc2f8

	thumb_func_start ovy280_21dc3c4
ovy280_21dc3c4: ; 0x021DC3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r1, #0
	mov r1, #0
	str r1, [sp, #0x44]
	mov r1, #0x22
	str r1, [sp, #0x24]
	mov r1, #0x14
	str r2, [sp, #0x14]
	str r1, [sp, #0x20]
	ldr r5, [sp, #0x94]
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	str r3, [sp, #0x18]
	mov r6, #0
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp, #0x2c]
	cmp r7, #7
	bhi _021DC4E4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC3FC: ; jump table
	.short _021DC40C - _021DC3FC - 2 ; case 0
	.short _021DC40C - _021DC3FC - 2 ; case 1
	.short _021DC432 - _021DC3FC - 2 ; case 2
	.short _021DC460 - _021DC3FC - 2 ; case 3
	.short _021DC4CC - _021DC3FC - 2 ; case 4
	.short _021DC4CC - _021DC3FC - 2 ; case 5
	.short _021DC4B2 - _021DC3FC - 2 ; case 6
	.short _021DC460 - _021DC3FC - 2 ; case 7
_021DC40C:
	bl GetDefaultUINarcIdx
	str r0, [sp, #0x40]
	bl sub_0202D8A0
	str r0, [sp, #0x3c]
	bl sub_0202D8A4
	str r0, [sp, #0x38]
	mov r0, #2
	bl sub_0202D8A8
	str r0, [sp, #0x34]
	mov r0, #2
	bl sub_0202D8AC
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	b _021DC458
_021DC432:
	mov r0, #0x1f
	str r0, [sp, #0x40]
	ldr r1, _021DC6CC ; =0x021DD929
	ldr r0, [sp, #0x14]
	str r6, [sp, #0x3c]
	ldrb r0, [r1, r0]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x38]
	add r0, #0x31
	str r0, [sp, #0x38]
	mov r0, #0x41
	str r0, [sp, #0x34]
	mov r0, #0x42
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	cmp r0, #8
	blo _021DC45C
	mov r0, #1
_021DC458:
	str r0, [sp, #0x1c]
	b _021DC4E4
_021DC45C:
	str r6, [sp, #0x1c]
	b _021DC4E4
_021DC460:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r1, #0xff
	ldr r0, [sp, #0x18]
	lsl r1, r1, #8
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x1c]
	cmp r0, #2
	bne _021DC476
	str r6, [sp, #0x44]
_021DC476:
	cmp r7, #7
	bne _021DC47E
	mov r0, #0
	str r0, [sp, #0x44]
_021DC47E:
	mov r0, #7
	str r0, [sp, #0x40]
	bl sub_02021114
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x3c]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	lsr r1, r1, #0x18
	mov r3, #0
	bl sub_02020F94
	str r0, [sp, #0x38]
	bl sub_0202111C
	str r0, [sp, #0x34]
	bl sub_02021190
	str r0, [sp, #0x30]
	mov r0, #0x1e
	str r0, [sp, #0x24]
	mov r0, #0x14
	str r0, [sp, #0x20]
	mov r6, #1
	b _021DC4E4
_021DC4B2:
	mov r0, #0x53
	str r0, [sp, #0x40]
	mov r0, #0xe
	str r0, [sp, #0x3c]
	mov r0, #0xd
	str r0, [sp, #0x38]
	mov r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0xb
	str r0, [sp, #0x30]
	mov r0, #0x1c
	str r0, [sp, #0x20]
	b _021DC4E4
_021DC4CC:
	mov r0, #0x77
	str r0, [sp, #0x40]
	mov r0, #9
	str r0, [sp, #0x3c]
	mov r0, #8
	str r0, [sp, #0x38]
	mov r0, #7
	str r0, [sp, #0x34]
	mov r0, #6
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x2c]
_021DC4E4:
	ldr r0, [sp, #0x40]
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x28]
	cmp r6, #0
	beq _021DC500
	ldr r1, [sp, #0x3c]
	mov r2, #0
	mov r3, #0x80
	str r5, [sp]
	bl sub_0204BC48
	b _021DC514
_021DC500:
	ldr r1, [sp, #0x2c]
	mov r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, [sp, #0x3c]
	mov r3, #0x80
	str r5, [sp, #8]
	bl Oam_LoadNCLRFile
_021DC514:
	str r0, [r4, #8]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x30]
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x38]
	str r5, [sp]
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl Oam_LoadNCGRFile
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x28]
	bl GFL_ArcToolFree
	ldr r0, [sp, #0x20]
	mov r1, #0
	str r0, [r4, #0x3c]
	add r0, sp, #0x48
	mov r2, #8
	blx MI_CpuFill8
	ldr r1, [sp, #0x24]
	add r0, sp, #0x48
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	strh r1, [r0, #2]
	add r0, sp, #0x48
	str r0, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x80]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r4]
	bl Oam_EnableOamAnim
	cmp r7, #7
	bhi _021DC61E
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC580: ; jump table
	.short _021DC590 - _021DC580 - 2 ; case 0
	.short _021DC5C4 - _021DC580 - 2 ; case 1
	.short _021DC5DA - _021DC580 - 2 ; case 2
	.short _021DC5DC - _021DC580 - 2 ; case 3
	.short _021DC60A - _021DC580 - 2 ; case 4
	.short _021DC604 - _021DC580 - 2 ; case 5
	.short _021DC614 - _021DC580 - 2 ; case 6
	.short _021DC5DC - _021DC580 - 2 ; case 7
_021DC590:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021DC5B0
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [r4]
	mov r1, #0x30
	mov r2, #0xd1
_021DC5A8:
	mov r3, #3
	bl sub_020164E8
	b _021DC61E
_021DC5B0:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [r4]
	mov r1, #0x30
	mov r2, #0xda
	b _021DC5A8
_021DC5C4:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r2, #0x30
	ldr r0, [r4]
	mov r1, #0x30
	add r2, #0xdd
	b _021DC5A8
_021DC5DA:
	b _021DC614
_021DC5DC:
	ldr r0, [r4]
	mov r1, #1
	bl Oam_SetOamAnimIndex
	ldr r1, [sp, #0x18]
	mov r3, #0xff
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x18]
	lsl r3, r3, #8
	and r2, r3
	ldr r0, [sp, #0x14]
	lsr r1, r1, #0x18
	lsr r2, r2, #8
	add r3, r6, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r4]
	add r2, r6, #0
	b _021DC61A
_021DC604:
	ldr r0, [r4]
	mov r1, #5
	b _021DC60E
_021DC60A:
	ldr r0, [r4]
	mov r1, #2
_021DC60E:
	bl Oam_SetOamAnimIndex
	b _021DC614
_021DC614:
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #1
_021DC61A:
	bl sub_0204C378
_021DC61E:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021DC6C6
	mov r0, #0x17
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r0, #2
	mov r1, #2
	mov r2, #0x20
	add r3, r5, #0
	bl sub_02046E28
	str r0, [r4, #0x30]
	str r5, [sp]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	mov r3, #0xe0
	mov r5, #0
	bl sub_0204BC48
	str r0, [r4, #0x24]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r6, sp, #0x50
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r4, #0x30]
	mov r1, #0x2e
	str r0, [sp, #0x50]
	add r0, sp, #0x48
	strh r1, [r0, #0xc]
	mov r1, #0x14
	strh r1, [r0, #0xe]
	ldr r1, [r4, #0x24]
	str r1, [sp, #0x58]
	strb r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	str r5, [sp, #0x64]
	strb r5, [r0, #0x19]
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x5c]
	add r1, r6, #0
	bl sub_0202AEC4
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _021DC692
	mov r1, #0x1b
	mov r5, #0x32
	b _021DC696
_021DC692:
	mov r1, #0x1a
	mov r5, #0x53
_021DC696:
	ldr r0, [sp, #0x8c]
	lsl r5, r5, #6
	bl sub_0204898C
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x28]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x84]
	mov r3, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x88]
	ldr r1, [r4, #0x30]
	bl sub_02021C7C
	ldr r0, [sp, #0x88]
	str r0, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x34]
_021DC6C6:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DC6CC: .word 0x021DD929
	thumb_func_end ovy280_21dc3c4

	thumb_func_start ovy280_21dc6d0
ovy280_21dc6d0: ; 0x021DC6D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021DC6F2
	ldr r0, [r4, #0x24]
	bl sub_0204BCD0
	ldr r0, [r4, #0x28]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x2c]
	bl sub_0202B030
	ldr r0, [r4, #0x30]
	bl GFL_BitmapFree
_021DC6F2:
	ldr r0, [r4, #8]
	bl sub_0204BCD0
	ldr r0, [r4, #0xc]
	bl sub_0204B98C
	ldr r0, [r4, #0x10]
	bl sub_0204BE64
	ldr r0, [r4]
	bl sub_0204C108
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc6d0

	thumb_func_start ovy280_21dc718
ovy280_21dc718: ; 0x021DC718
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _021DC72C
	cmp r1, #1
	beq _021DC786
	add sp, #0x24
	pop {r4, r5, pc}
_021DC72C:
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0
	mov r5, #0
	bl Oam_GetSpritePosData
	add r0, sp, #0x10
	add r1, sp, #0xc
	str r5, [r4, #0x14]
	bl sub_0203DAC8
	cmp r0, #0
	beq _021DC796
	add r1, sp, #0
	mov r0, #8
	ldrsh r2, [r1, r0]
	add r0, r2, #0
	sub r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0xa
	ldrsh r1, [r1, r0]
	add r2, #0x10
	add r0, r1, #0
	sub r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r1, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r1, sp, #0
	str r2, [sp, #0x1c]
	bl ovy280_21dc99c
	cmp r0, #0
	beq _021DC796
	add r0, r4, #0
	bl sub_021DC7C4
	mov r0, #1
	add sp, #0x24
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021DC786:
	bl ovy280_21dc7d0
	cmp r0, #0
	beq _021DC796
	mov r0, #1
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
_021DC796:
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc718

	thumb_func_start ovy280_21dc79c
ovy280_21dc79c: ; 0x021DC79C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021DC7BC
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl sub_02021C1C
	cmp r0, #0
	bne _021DC7BC
	ldr r0, [r4, #0x2c]
	bl sub_0202B0F4
	mov r0, #0
	str r0, [r4, #0x34]
_021DC7BC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc79c

	thumb_func_start sub_021DC7C0
sub_021DC7C0: ; 0x021DC7C0
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021DC7C0

	thumb_func_start sub_021DC7C4
sub_021DC7C4: ; 0x021DC7C4
	mov r1, #0
	strh r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DC7C4

	thumb_func_start ovy280_21dc7d0
ovy280_21dc7d0: ; 0x021DC7D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DC828
	ldrh r4, [r5, #0x20]
	add r7, sp, #0
	add r1, r7, #0
	add r0, r4, #1
	strh r0, [r5, #0x20]
	ldr r0, [r5]
	mov r2, #0
	mov r6, #0
	bl Oam_GetSpritePosData
	ldr r0, _021DC82C ; =0x00007FFF
	ldr r1, [r5, #0x3c]
	mul r0, r4
	asr r2, r0, #2
	lsr r2, r2, #0x1d
	add r2, r0, r2
	lsl r0, r2, #0xd
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _021DC830 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r2, [r0, r2]
	mov r0, #0xc
	mul r0, r2
	asr r0, r0, #0xc
	sub r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	ldrh r0, [r5, #0x20]
	cmp r0, #8
	bls _021DC824
	str r6, [r5, #0x1c]
_021DC824:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DC828:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DC82C: .word 0x00007FFF
_021DC830: .word FX_SinCosTable_
	thumb_func_end ovy280_21dc7d0

	thumb_func_start sub_021DC834
sub_021DC834: ; 0x021DC834
	cmp r0, #0x10
	bhi _021DC894
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC844: ; jump table
	.short _021DC866 - _021DC844 - 2 ; case 0
	.short _021DC86A - _021DC844 - 2 ; case 1
	.short _021DC872 - _021DC844 - 2 ; case 2
	.short _021DC876 - _021DC844 - 2 ; case 3
	.short _021DC87A - _021DC844 - 2 ; case 4
	.short _021DC866 - _021DC844 - 2 ; case 5
	.short _021DC866 - _021DC844 - 2 ; case 6
	.short _021DC866 - _021DC844 - 2 ; case 7
	.short _021DC888 - _021DC844 - 2 ; case 8
	.short _021DC866 - _021DC844 - 2 ; case 9
	.short _021DC866 - _021DC844 - 2 ; case 10
	.short _021DC890 - _021DC844 - 2 ; case 11
	.short _021DC88C - _021DC844 - 2 ; case 12
	.short _021DC866 - _021DC844 - 2 ; case 13
	.short _021DC866 - _021DC844 - 2 ; case 14
	.short _021DC866 - _021DC844 - 2 ; case 15
	.short _021DC86E - _021DC844 - 2 ; case 16
_021DC866:
	mov r0, #0
	bx lr
_021DC86A:
	mov r0, #3
	bx lr
_021DC86E:
	mov r0, #7
	bx lr
_021DC872:
	mov r0, #4
	bx lr
_021DC876:
	mov r0, #1
	bx lr
_021DC87A:
	ldr r0, _021DC898 ; =0x0000FFFF
	cmp r1, r0
	bne _021DC884
	mov r0, #5
	bx lr
_021DC884:
	mov r0, #2
	bx lr
_021DC888:
	mov r0, #6
	bx lr
_021DC88C:
	mov r0, #5
	bx lr
_021DC890:
	mov r0, #5
	bx lr
_021DC894:
	mov r0, #0
	bx lr
	.align 2, 0
_021DC898: .word 0x0000FFFF
	thumb_func_end sub_021DC834

	thumb_func_start ovy280_21dc89c
ovy280_21dc89c: ; 0x021DC89C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _021DC8BC
	mov r4, #0x15
	mov r6, #1
_021DC8A8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021D9CF4
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x17
	ble _021DC8A8
_021DC8BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc89c

	thumb_func_start ovy280_21dc8c0
ovy280_21dc8c0: ; 0x021DC8C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r4, #0x15
	add r6, sp, #0
	mov r7, #0xa
_021DC8CC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021D9CF4
	add r1, sp, #8
	mov r2, #0
	bl Oam_GetSpritePosData
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DAC8
	cmp r0, #0
	beq _021DC946
	mov r0, #8
	ldrsh r0, [r6, r0]
	add r1, r0, #0
	sub r1, #8
	str r1, [sp, #0x14]
	ldrsh r2, [r6, r7]
	add r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	sub r1, #0xc
	str r1, [sp, #0x18]
	add r2, #0xc
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r1, sp, #0
	str r2, [sp, #0x20]
	bl ovy280_21dc99c
	cmp r0, #0
	beq _021DC946
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021D9CF4
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021D9CF4
	mov r1, #0
	bl sub_0204C4D4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021D9CF4
	bl sub_0204C56C
	sub r4, #0x15
	add sp, #0x24
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021DC946:
	add r4, r4, #1
	cmp r4, #0x17
	ble _021DC8CC
	mov r0, #3
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc8c0

	thumb_func_start ovy280_21dc954
ovy280_21dc954: ; 0x021DC954
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #9
	add r1, r2, #0
	bl GFL_StrBufCreate
	add r6, r0, #0
	cmp r4, #0
	beq _021DC972
	cmp r4, #1
	beq _021DC982
	cmp r4, #2
	beq _021DC98A
	b _021DC992
_021DC972:
	ldr r0, [r5, #0x28]
	bl sub_0200C93C
_021DC978:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02048614
	b _021DC996
_021DC982:
	ldr r0, [r5, #0x28]
	bl sub_0200C954
	b _021DC978
_021DC98A:
	ldr r0, [r5, #0x30]
	bl sub_0201150C
	b _021DC978
_021DC992:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC996:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy280_21dc954

	thumb_func_start ovy280_21dc99c
ovy280_21dc99c: ; 0x021DC99C
	push {r4, r5}
	ldr r5, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	sub r4, r3, r5
	ldr r3, [r0, #8]
	sub r3, r3, r5
	cmp r4, r3
	bhi _021DC9B2
	mov r3, #1
	b _021DC9B4
_021DC9B2:
	mov r3, #0
_021DC9B4:
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	sub r1, r1, r2
	sub r0, r0, r2
	cmp r1, r0
	bhi _021DC9C4
	mov r0, #1
	b _021DC9C6
_021DC9C4:
	mov r0, #0
_021DC9C6:
	and r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end ovy280_21dc99c

	thumb_func_start ovy280_21dc9cc
ovy280_21dc9cc: ; 0x021DC9CC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0xf
	bhi _021DCA9E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC9E2: ; jump table
	.short _021DCA02 - _021DC9E2 - 2 ; case 0
	.short _021DCA06 - _021DC9E2 - 2 ; case 1
	.short _021DCA2E - _021DC9E2 - 2 ; case 2
	.short _021DCA3C - _021DC9E2 - 2 ; case 3
	.short _021DCA4A - _021DC9E2 - 2 ; case 4
	.short _021DCA58 - _021DC9E2 - 2 ; case 5
	.short _021DCA66 - _021DC9E2 - 2 ; case 6
	.short _021DCA82 - _021DC9E2 - 2 ; case 7
	.short _021DCA9E - _021DC9E2 - 2 ; case 8
	.short _021DCA9E - _021DC9E2 - 2 ; case 9
	.short _021DCA9E - _021DC9E2 - 2 ; case 10
	.short _021DCA90 - _021DC9E2 - 2 ; case 11
	.short _021DCA9E - _021DC9E2 - 2 ; case 12
	.short _021DCA9E - _021DC9E2 - 2 ; case 13
	.short _021DCA82 - _021DC9E2 - 2 ; case 14
	.short _021DCA74 - _021DC9E2 - 2 ; case 15
_021DCA02:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DCA06:
	mov r6, #0xb9
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_020485F8
	cmp r0, #0
	bne _021DCA24
	sub r6, #0xc
	ldr r1, [r4, r6]
	ldr r0, _021DCAA4 ; =0x0209A434
	ldrh r1, [r1, #4]
	ldr r0, [r0]
	bl sub_0204898C
	pop {r4, r5, r6, pc}
_021DCA24:
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA2E:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA3C:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA4A:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA58:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA66:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA74:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA82:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA90:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020485A4
	pop {r4, r5, r6, pc}
_021DCA9E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021DCAA4: .word 0x0209A434
	thumb_func_end ovy280_21dc9cc

	thumb_func_start ovy280_21dcaa8
ovy280_21dcaa8: ; 0x021DCAA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0xb6
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r5, r6]
	mov r1, #0x1e
	ldr r0, [r0, #0x20]
	bl sub_020485A4
	ldr r1, [r5, r6]
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r1, #0x20]
	add r0, #0x74
	bl sub_021DA6BC
	ldr r1, [r5, r6]
	ldr r0, [r1]
	cmp r0, #0xc
	bne _021DCADE
	ldr r0, [r1, #0x20]
	bl ovy280_21dcc4c
_021DCADE:
	mov r6, #0xb6
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, r4, #0
	ldr r1, [r1, #0x20]
	bl sub_020485BC
	cmp r0, #0
	beq _021DCAF6
	ldr r0, [r5, r6]
	mov r1, #1
	str r1, [r0, #0x1c]
_021DCAF6:
	add r0, r5, #0
	add r0, #0x74
	bl sub_021DA8D0
	cmp r0, #0
	bne _021DCB16
	mov r6, #0xb6
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	bl sub_02048580
	ldr r0, [r5, r6]
	mov r1, #1
	str r1, [r0, #0x1c]
_021DCB16:
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r7, #0xba
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _021DCBB2
	add r0, r7, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DCBB2
	mov r0, #9
	mov r1, #0x1e
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r7, #0
	str r0, [sp, #8]
	sub r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	sub r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp]
	sub r0, #0x10
	mov r4, #0
	str r0, [sp]
	sub r7, #0x10
_021DCB54:
	cmp r4, #0
	beq _021DCB62
	cmp r4, #1
	beq _021DCB6E
	cmp r4, #2
	beq _021DCB7A
	b _021DCB8C
_021DCB62:
	ldr r0, [sp]
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x28]
	bl sub_0200C93C
	b _021DCB84
_021DCB6E:
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x28]
	bl sub_0200C954
	b _021DCB84
_021DCB7A:
	ldr r0, [sp, #8]
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x30]
	bl sub_0201150C
_021DCB84:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02048614
_021DCB8C:
	ldr r1, [r5, r7]
	add r0, r6, #0
	ldr r1, [r1, #0x20]
	bl sub_020485BC
	cmp r0, #0
	beq _021DCBA6
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #1
	str r1, [r0, #0x34]
	b _021DCBAC
_021DCBA6:
	add r4, r4, #1
	cmp r4, #2
	ble _021DCB54
_021DCBAC:
	add r0, r6, #0
	bl GFL_StrBufFree
_021DCBB2:
	mov r4, #0xb6
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x20]
	bl sub_020485F8
	cmp r0, #0
	bne _021DCBD2
	ldr r1, [r5, r4]
	ldr r0, [r1]
	cmp r0, #0
	beq _021DCBD2
	cmp r0, #3
	beq _021DCBD2
	mov r0, #1
	str r0, [r1, #0x1c]
_021DCBD2:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1]
	cmp r0, #1
	bne _021DCBEA
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _021DCBEA
	mov r0, #0xc
	bl sub_02038BC8
_021DCBEA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dcaa8

	thumb_func_start ovy280_21dcbf0
ovy280_21dcbf0: ; 0x021DCBF0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _021DCC10
	cmp r0, #3
	beq _021DCC10
	cmp r0, #9
	beq _021DCC10
	cmp r0, #0xa
	beq _021DCC10
	cmp r0, #0xd
	bne _021DCC3C
_021DCC10:
	add r0, r4, #0
	add r0, #0x74
	bl sub_021DA788
	cmp r0, #0
	bne _021DCC2C
	add r0, r4, #0
	add r0, #0x74
	bl sub_021DA78C
	cmp r0, #0
	bne _021DCC2C
	mov r0, #0
	pop {r4, pc}
_021DCC2C:
	add r4, #0x74
	add r0, r4, #0
	bl sub_021DA8D0
	cmp r0, #0
	bne _021DCC3C
	mov r0, #0
	pop {r4, pc}
_021DCC3C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy280_21dcbf0

	thumb_func_start sub_021DCC40
sub_021DCC40: ; 0x021DCC40
	ldr r3, _021DCC48 ; =ovy280_21da900
	add r0, #0x74
	bx r3
	nop
_021DCC48: .word ovy280_21da900
	thumb_func_end sub_021DCC40

	thumb_func_start ovy280_21dcc4c
ovy280_21dcc4c: ; 0x021DCC4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, sp, #0
	add r1, r6, #0
	mov r2, #0xb
	add r7, r0, #0
	bl sub_020486B8
	mov r5, #0
	bl sub_020486F4
	add r1, sp, #0
	ldrh r1, [r1]
	cmp r1, r0
	beq _021DCC82
_021DCC6A:
	lsl r4, r5, #1
	ldrh r0, [r6, r4]
	bl sub_02024B34
	add r5, r5, #1
	strh r0, [r6, r4]
	bl sub_020486F4
	lsl r1, r5, #1
	ldrh r1, [r6, r1]
	cmp r1, r0
	bne _021DCC6A
_021DCC82:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02048614
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy280_21dcc4c

	thumb_func_start ovy280_21dcc90
ovy280_21dcc90: ; 0x021DCC90
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_021DCCD0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy280_21dcc90

	thumb_func_start sub_021DCCAC
sub_021DCCAC: ; 0x021DCCAC
	ldr r3, _021DCCB4 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_021DCCB4: .word MI_CpuFill8
	thumb_func_end sub_021DCCAC

	thumb_func_start ovy280_21dccb8
ovy280_21dccb8: ; 0x021DCCB8
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021DCCCA
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_021DCCCA:
	pop {r3, pc}
	thumb_func_end ovy280_21dccb8

	thumb_func_start sub_021DCCCC
sub_021DCCCC: ; 0x021DCCCC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021DCCCC

	thumb_func_start sub_021DCCD0
sub_021DCCD0: ; 0x021DCCD0
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021DCCD0

	thumb_func_start sub_021DCCD8
sub_021DCCD8: ; 0x021DCCD8
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DCCD8

	thumb_func_start ovy280_21dcce0
ovy280_21dcce0: ; 0x021DCCE0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x42
	add r4, r2, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy280_21db6f0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da67c
	orr r5, r0
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl ovy280_21dc280
	orr r0, r5
	beq _021DCD12
	ldr r1, _021DCD14 ; =ovy280_21dcd18
	add r0, r6, #0
	bl sub_021DCCD0
_021DCD12:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DCD14: .word ovy280_21dcd18
	thumb_func_end ovy280_21dcce0

	thumb_func_start ovy280_21dcd18
ovy280_21dcd18: ; 0x021DCD18
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021DCD2C
	cmp r1, #1
	beq _021DCD3E
	cmp r1, #2
	beq _021DCD4C
	pop {r4, pc}
_021DCD2C:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021DCD3E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021DCD52
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021DCD4C:
	ldr r1, _021DCD54 ; =ovy280_21dce58
	bl sub_021DCCD0
_021DCD52:
	pop {r4, pc}
	.align 2, 0
_021DCD54: .word ovy280_21dce58
	thumb_func_end ovy280_21dcd18

	thumb_func_start ovy280_21dcd58
ovy280_21dcd58: ; 0x021DCD58
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021DCD6C
	cmp r1, #1
	beq _021DCD7E
	cmp r1, #2
	beq _021DCD8C
	pop {r4, pc}
_021DCD6C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021DCD7E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021DCD92
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021DCD8C:
	ldr r1, _021DCD94 ; =ovy280_21dd1d8
	bl sub_021DCCD0
_021DCD92:
	pop {r4, pc}
	.align 2, 0
_021DCD94: .word ovy280_21dd1d8
	thumb_func_end ovy280_21dcd58

	thumb_func_start ovy280_21dcd98
ovy280_21dcd98: ; 0x021DCD98
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x99
	lsl r1, r1, #2
	add r4, r2, r1
	ldr r1, [r5]
	cmp r1, #0
	beq _021DCDB2
	cmp r1, #1
	beq _021DCE3A
	cmp r1, #2
	beq _021DCE4E
	pop {r3, r4, r5, pc}
_021DCDB2:
	ldr r0, [r4, #4]
	bl sub_0203A7F4
	ldr r0, [r4]
	bl sub_020223B4
	cmp r0, #0
	beq _021DCDCC
	cmp r0, #1
	beq _021DCE08
	cmp r0, #2
	beq _021DCE02
	pop {r3, r4, r5, pc}
_021DCDCC:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _021DCDDE
	bl sub_0203DA2C
	cmp r0, #0
	beq _021DCE54
_021DCDDE:
	ldr r0, [r4]
	mov r1, #0
	mov r4, #0
	bl sub_020223E0
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _021DCDFA
	add r0, r4, #0
	bl sub_0203D564
	pop {r3, r4, r5, pc}
_021DCDFA:
	mov r0, #1
	bl sub_0203D564
	pop {r3, r4, r5, pc}
_021DCE02:
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DCE08:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _021DCE1A
	bl sub_0203DA48
	cmp r0, #0
	beq _021DCE54
_021DCE1A:
	ldr r0, [r4]
	bl sub_020223BC
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021DCE32
	mov r0, #0
	bl sub_0203D564
	pop {r3, r4, r5, pc}
_021DCE32:
	mov r0, #1
	bl sub_0203D564
	pop {r3, r4, r5, pc}
_021DCE3A:
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	cmp r1, r0
	blo _021DCE48
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DCE48:
	add r0, r1, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_021DCE4E:
	ldr r1, [r4, #8]
	bl sub_021DCCD0
_021DCE54:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dcd98

	thumb_func_start ovy280_21dce58
ovy280_21dce58: ; 0x021DCE58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0x42
	add r4, r2, #0
	lsl r7, r7, #2
	add r6, r0, #0
	add r0, r4, r7
	add r1, sp, #4
	bl sub_021DB6C4
	add r5, r0, #0
	add r0, r4, r7
	bl sub_021DB6E8
	add r7, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021DCED8
	cmp r5, #0
	bne _021DCE9A
	sub r0, #0x68
	add r0, r4, r0
	bl sub_021DC7C0
	cmp r0, #0
	bne _021DCE9A
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	bic r0, r1
	beq _021DCED8
_021DCE9A:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	ldr r1, [r3]
	cmp r1, #1
	bne _021DCEC8
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _021DCEBE
	mov r2, #0x1e
	str r2, [sp]
	ldrh r2, [r3, #4]
	sub r0, #0x98
	ldrh r3, [r3, #6]
	add r0, r4, r0
	bl ovy280_21dc1e8
	b _021DCED0
_021DCEBE:
	sub r0, #0x98
	add r0, r4, r0
	bl ovy280_21dc220
	b _021DCED0
_021DCEC8:
	sub r0, #0x98
	add r0, r4, r0
	bl ovy280_21dc178
_021DCED0:
	mov r0, #0xb7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021DCED8:
	cmp r5, #0xb
	bls _021DCEDE
	b _021DD174
_021DCEDE:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DCEEA: ; jump table
	.short _021DD0C0 - _021DCEEA - 2 ; case 0
	.short _021DCF02 - _021DCEEA - 2 ; case 1
	.short _021DCF18 - _021DCEEA - 2 ; case 2
	.short _021DCF2E - _021DCEEA - 2 ; case 3
	.short _021DCF4A - _021DCEEA - 2 ; case 4
	.short _021DCF74 - _021DCEEA - 2 ; case 5
	.short _021DCF86 - _021DCEEA - 2 ; case 6
	.short _021DCF9A - _021DCEEA - 2 ; case 7
	.short _021DD174 - _021DCEEA - 2 ; case 8
	.short _021DD154 - _021DCEEA - 2 ; case 9
	.short _021DCF64 - _021DCEEA - 2 ; case 10
	.short _021DCF90 - _021DCEEA - 2 ; case 11
_021DCF02:
	add r1, sp, #4
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da524
	cmp r0, #0
	beq _021DCF16
_021DCF12:
	ldr r0, _021DD1C0 ; =0x0000054C
	b _021DD170
_021DCF16:
	b _021DD16E
_021DCF18:
	add r1, sp, #4
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, #0x74
	add r2, r7, #0
	bl ovy280_21da550
	cmp r0, #0
	beq _021DCF2C
	b _021DCF12
_021DCF2C:
	b _021DD16E
_021DCF2E:
	add r0, r4, #0
	add r0, #0x74
	mov r1, #0
	mov r6, #1
	mov r7, #0
	bl ovy280_21da590
	cmp r0, #0
	bne _021DCF42
	add r6, r7, #0
_021DCF42:
	cmp r6, #0
	beq _021DCF48
	b _021DCF12
_021DCF48:
	b _021DD16E
_021DCF4A:
	add r0, r4, #0
	add r0, #0x74
	mov r1, #1
	mov r6, #1
	bl ovy280_21da590
	cmp r0, #0
	bne _021DCF5C
	mov r6, #0
_021DCF5C:
	cmp r6, #0
	beq _021DCF62
	b _021DCF12
_021DCF62:
	b _021DD16E
_021DCF64:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da640
	cmp r0, #0
	beq _021DCF72
	b _021DCF12
_021DCF72:
	b _021DD16E
_021DCF74:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da4e4
	cmp r0, #0
	beq _021DCF84
	ldr r0, _021DD1C4 ; =0x00000553
_021DCF82:
	b _021DD170
_021DCF84:
	b _021DD16E
_021DCF86:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da6d0
	b _021DD174
_021DCF90:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da6f0
	b _021DD174
_021DCF9A:
	add r0, r4, #0
	add r0, #0x74
	bl sub_021DA78C
	cmp r0, #0
	beq _021DCFA8
	b _021DD0B4
_021DCFA8:
	add r0, r4, #0
	bl ovy280_21dcbf0
	cmp r0, #0
	bne _021DCFE6
	ldr r0, _021DD1C8 ; =0x00000557
	bl GFL_SndSEPlay
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r1, [r1]
	cmp r1, #0
	beq _021DCFC8
	cmp r1, #3
	bne _021DCFD2
_021DCFC8:
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0x11
	b _021DCFD8
_021DCFD2:
	sub r0, #0x98
	add r0, r4, r0
	mov r1, #0x1c
_021DCFD8:
	bl ovy280_21dc178
	mov r0, #0xb7
	mov r1, #1
	lsl r0, r0, #2
_021DCFE2:
	str r1, [r4, r0]
	b _021DD174
_021DCFE6:
	mov r7, #0xb6
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	ldr r0, [r0]
	cmp r0, #0xc
	bne _021DD014
	add r0, r4, #0
	bl sub_021DCC40
	cmp r0, #0
	bne _021DD014
	ldr r0, _021DD1C8 ; =0x00000557
	bl GFL_SndSEPlay
	add r0, r7, #0
	sub r0, #0x98
	add r0, r4, r0
	mov r1, #0x13
	bl ovy280_21dc178
	mov r1, #1
	add r0, r7, #4
	b _021DCFE2
_021DD014:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r2, [r1, #0x2c]
	mov r1, #2
	tst r1, r2
	bne _021DD036
	add r0, #8
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x74
	mov r2, #0x1e
	bl sub_021F5A4C
	cmp r0, #0
	beq _021DD036
	b _021DD16E
_021DD036:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r7, #1
	ldr r0, [r0, #0x2c]
	tst r0, r7
	bne _021DD076
	add r1, r4, #0
	add r1, #0x92
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, #0x74
	mov r2, #0x1e
	bl sub_021F5BA8
	cmp r0, #0
	beq _021DD076
	ldr r0, _021DD1C8 ; =0x00000557
	bl GFL_SndSEPlay
	mov r0, #0xb6
	lsl r0, r0, #2
	sub r0, #0x98
	add r0, r4, r0
	mov r1, #0x12
	bl ovy280_21dc178
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r0, #4
	str r7, [r4, r0]
	b _021DD174
_021DD076:
	ldr r0, _021DD1CC ; =0x0000054D
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy280_21dcaa8
	mov r1, #0xb6
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, [r2]
	cmp r0, #1
	bne _021DD0AE
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021DD0AE
	add r0, r1, #0
	sub r0, #0x74
	sub r1, #0x98
	add r0, r4, r0
	add r1, r4, r1
	mov r3, #0x1e
	bl ovy280_21dc2f8
	ldr r1, _021DD1D0 ; =ovy280_21dcd98
	add r0, r6, #0
_021DD0A8:
	bl sub_021DCCD0
	b _021DD174
_021DD0AE:
	add r0, r6, #0
	ldr r1, _021DD1D4 ; =ovy280_21dcd58
	b _021DD0A8
_021DD0B4:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da6f0
	ldr r0, _021DD1CC ; =0x0000054D
	b _021DCF82
_021DD0C0:
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_021DC7C0
	cmp r0, #0
	beq _021DD106
	add r6, #0x64
	ldr r1, [r4, r6]
	add r0, r4, #0
	ldr r1, [r1]
	mov r2, #0x1e
	bl ovy280_21dc9cc
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da728
	cmp r6, #0
	beq _021DD100
	add r0, r6, #0
	bl sub_020486F0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da74c
	add r0, r6, #0
	bl GFL_StrBufFree
_021DD100:
	ldr r0, _021DD1C0 ; =0x0000054C
	bl GFL_SndSEPlay
_021DD106:
	mov r7, #0xba
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	cmp r0, #1
	bne _021DD174
	add r0, r4, #4
	bl ovy280_21dc8c0
	add r1, r0, #0
	cmp r1, #3
	beq _021DD174
	add r0, r7, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r2, #0x1e
	bl ovy280_21dc954
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da728
	cmp r6, #0
	beq _021DD152
	mov r1, #1
	add r0, r7, #4
	str r1, [r4, r0]
	add r0, r6, #0
	bl sub_020486F0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da74c
	add r0, r6, #0
	bl GFL_StrBufFree
_021DD152:
	b _021DCF12
_021DD154:
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da6f0
	add r1, sp, #4
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #0x74
	bl ovy280_21da524
	cmp r0, #0
	beq _021DD16E
	b _021DCF12
_021DD16E:
	ldr r0, _021DD1C8 ; =0x00000557
_021DD170:
	bl GFL_SndSEPlay
_021DD174:
	mov r1, #0xba
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021DD194
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021DD194
	cmp r5, #0
	beq _021DD194
	cmp r5, #7
	beq _021DD194
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
_021DD194:
	mov r0, #0x42
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x74
	bl ovy280_21db5e0
	add r0, r4, #0
	add r0, #0x74
	bl ovy280_21da324
	mov r5, #0x9d
	lsl r5, r5, #2
	add r0, r4, r5
	bl ovy280_21dc718
	sub r5, #0x34
	add r0, r4, r5
	bl ovy280_21dc280
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD1C0: .word 0x0000054C
_021DD1C4: .word 0x00000553
_021DD1C8: .word 0x00000557
_021DD1CC: .word 0x0000054D
_021DD1D0: .word ovy280_21dcd98
_021DD1D4: .word ovy280_21dcd58
	thumb_func_end ovy280_21dce58

	thumb_func_start ovy280_21dd1d8
ovy280_21dd1d8: ; 0x021DD1D8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0xb6
	add r5, r2, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r4, [r0]
	cmp r4, #0xc
	beq _021DD22C
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021DD22C
	cmp r4, #0xd
	bne _021DD1F8
	mov r4, #0xa
	b _021DD20E
_021DD1F8:
	cmp r4, #0xe
	bne _021DD200
	mov r4, #7
	b _021DD20E
_021DD200:
	cmp r4, #0xf
	bne _021DD208
	mov r4, #6
	b _021DD20E
_021DD208:
	cmp r4, #0x10
	bne _021DD20E
	mov r4, #1
_021DD20E:
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_021DB73C
	add r2, r0, #0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x28]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_0200C844
_021DD22C:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021DD242
	ldr r1, _021DD24C ; =ovy280_21dd250
	add r0, r6, #0
	bl sub_021DCCD0
	pop {r4, r5, r6, pc}
_021DD242:
	add r0, r6, #0
	bl sub_021DCCD8
	pop {r4, r5, r6, pc}
	nop
_021DD24C: .word ovy280_21dd250
	thumb_func_end ovy280_21dd1d8

	thumb_func_start ovy280_21dd250
ovy280_21dd250: ; 0x021DD250
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DD262
	cmp r0, #1
	beq _021DD274
	pop {r3, r4, r5, pc}
_021DD262:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r0, [r0, #0x24]
	bl sub_021A13FC
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021DD274:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r0, [r0, #0x24]
	bl sub_021A1414
	cmp r0, #1
	bne _021DD28A
	add r0, r5, #0
	bl sub_021DCCD8
_021DD28A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21dd250

	thumb_func_start ovy280_21dd28c
ovy280_21dd28c: ; 0x021DD28C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021DD310 ; =0x000001BB
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021DD314 ; =0x021DDB84
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021DD318 ; =0x04000050
	ldr r0, _021DD31C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021DD320 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021DD324 ; =0x021DD9D0
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dd3b4
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy280_21dd458
	ldr r0, _021DD328 ; =ovy280_21dd3a0
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DD310: .word 0x000001BB
_021DD314: .word 0x021DDB84
_021DD318: .word 0x04000050
_021DD31C: .word 0x04001050
_021DD320: .word 0xFFFF1FFF
_021DD324: .word 0x021DD9D0
_021DD328: .word ovy280_21dd3a0
	thumb_func_end ovy280_21dd28c

	thumb_func_start ovy280_21dd32c
ovy280_21dd32c: ; 0x021DD32C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy280_21dd498
	add r0, r4, #0
	bl ovy280_21dd414
	bl sub_020232D8
	ldr r5, _021DD374 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021DD378 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021DD37C ; =0xFFFF1FFF
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
_021DD374: .word 0x04000050
_021DD378: .word 0x04001050
_021DD37C: .word 0xFFFF1FFF
	thumb_func_end ovy280_21dd32c

	thumb_func_start ovy280_21dd380
ovy280_21dd380: ; 0x021DD380
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021DD4B4
	add r0, r4, #0
	bl sub_021DD44C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21dd380

	thumb_func_start sub_021DD394
sub_021DD394: ; 0x021DD394
	ldr r3, _021DD39C ; =sub_021DD4C4
	add r0, r0, #4
	bx r3
	nop
_021DD39C: .word sub_021DD4C4
	thumb_func_end sub_021DD394

	thumb_func_start ovy280_21dd3a0
ovy280_21dd3a0: ; 0x021DD3A0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021DD450
	add r0, r4, #4
	bl sub_021DD4BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy280_21dd3a0

	thumb_func_start ovy280_21dd3b4
ovy280_21dd3b4: ; 0x021DD3B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl BmpWin_InitAllocator
	ldr r0, _021DD40C ; =0x021DD9A4
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021DD410 ; =0x021DDA00
_021DD3D6:
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
	blo _021DD3D6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD40C: .word 0x021DD9A4
_021DD410: .word 0x021DDA00
	thumb_func_end ovy280_21dd3b4

	thumb_func_start ovy280_21dd414
ovy280_21dd414: ; 0x021DD414
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021DD448 ; =0x021DDA00
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021DD41E:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021DD41E
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DD448: .word 0x021DDA00
	thumb_func_end ovy280_21dd414

	thumb_func_start sub_021DD44C
sub_021DD44C: ; 0x021DD44C
	bx lr
	.align 2, 0
	thumb_func_end sub_021DD44C

	thumb_func_start sub_021DD450
sub_021DD450: ; 0x021DD450
	ldr r3, _021DD454 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021DD454: .word sub_02045A5C
	thumb_func_end sub_021DD450

	thumb_func_start ovy280_21dd458
ovy280_21dd458: ; 0x021DD458
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021DD494 ; =0x021DD9B4
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DD494: .word 0x021DD9B4
	thumb_func_end ovy280_21dd458

	thumb_func_start ovy280_21dd498
ovy280_21dd498: ; 0x021DD498
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
	thumb_func_end ovy280_21dd498

	thumb_func_start sub_021DD4B4
sub_021DD4B4: ; 0x021DD4B4
	ldr r3, _021DD4B8 ; =sub_0204B794
	bx r3
	.align 2, 0
_021DD4B8: .word sub_0204B794
	thumb_func_end sub_021DD4B4

	thumb_func_start sub_021DD4BC
sub_021DD4BC: ; 0x021DD4BC
	ldr r3, _021DD4C0 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021DD4C0: .word sub_0204B7C8
	thumb_func_end sub_021DD4BC

	thumb_func_start sub_021DD4C4
sub_021DD4C4: ; 0x021DD4C4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021DD4C4

	thumb_func_start ovy280_21dd4c8
ovy280_21dd4c8: ; 0x021DD4C8
	push {r3, lr}
	add r2, r0, #0
	add r3, r1, #0
	add r1, r2, #0
	mov r0, #0x78
	mov r2, #0
	bl sub_0204B4E4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy280_21dd4c8

	thumb_func_start sub_021DD4DC
sub_021DD4DC: ; 0x021DD4DC
	ldr r3, _021DD4E0 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021DD4E0: .word GFL_HeapFree
	thumb_func_end sub_021DD4DC

	thumb_func_start ovy280_21dd4e4
ovy280_21dd4e4: ; 0x021DD4E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x93
	str r1, [sp]
	ldr r3, _021DD51C ; =0x021DDB98
	mov r1, #0x14
	mov r2, #0
	add r6, r0, #0
	mov r5, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
_021DD504:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy280_21dd4c8
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r4, r1]
	cmp r5, #5
	blt _021DD504
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DD51C: .word 0x021DDB98
	thumb_func_end ovy280_21dd4e4

	thumb_func_start ovy280_21dd520
ovy280_21dd520: ; 0x021DD520
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DD526:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_021DD4DC
	add r4, r4, #1
	cmp r4, #5
	blt _021DD526
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy280_21dd520

	thumb_func_start sub_021DD53C
sub_021DD53C: ; 0x021DD53C
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DD53C

	thumb_func_start sub_021DD544
sub_021DD544: ; 0x021DD544
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021DD544

	thumb_func_start sub_021DD548
sub_021DD548: ; 0x021DD548
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_021DD548

	thumb_func_start ovy280_21dd54c
ovy280_21dd54c: ; 0x021DD54C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021DD544
	mul r0, r6
	add r0, r4, r0
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r0, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy280_21dd54c

	thumb_func_start ovy280_21dd564
ovy280_21dd564: ; 0x021DD564
	push {r3, lr}
	add r2, r0, #0
	add r3, r1, #0
	add r1, r2, #5
	mov r0, #0x78
	mov r2, #0
	bl sub_0204B4E4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy280_21dd564

	thumb_func_start sub_021DD578
sub_021DD578: ; 0x021DD578
	ldr r3, _021DD57C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021DD57C: .word GFL_HeapFree
	thumb_func_end sub_021DD578

	thumb_func_start sub_021DD580
sub_021DD580: ; 0x021DD580
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021DD580

	thumb_func_start ovy280_21dd584
ovy280_21dd584: ; 0x021DD584
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r2, r0, #2
	mov r0, #0x18
	mul r0, r1
	add r0, r2, r0
	ldr r4, [sp, #0x10]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_02024AD4
	cmp r4, #0
	beq _021DD5BC
	mov r0, #0
	strb r0, [r4]
	mov r0, #3
	lsl r0, r0, #0xc
	b _021DD5AE
_021DD5A8:
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
_021DD5AE:
	ldrb r1, [r4]
	cmp r1, #3
	bhs _021DD5BC
	lsl r1, r1, #1
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _021DD5A8
_021DD5BC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy280_21dd584

	thumb_func_start ovy280_21dd5c0
ovy280_21dd5c0: ; 0x021DD5C0
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x18
	mul r2, r1
	add r0, #8
	add r0, r0, r2
	add r1, r4, #0
	add r2, r3, #0
	bl sub_02024AD4
	mov r0, #3
	mov r2, #0
	lsl r0, r0, #0xc
	b _021DD5E2
_021DD5DC:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
_021DD5E2:
	cmp r2, #3
	bhs _021DD5EE
	lsl r1, r2, #1
	ldrh r1, [r4, r1]
	cmp r1, r0
	bne _021DD5DC
_021DD5EE:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021DD5F6
	strb r2, [r0]
_021DD5F6:
	mov r0, #1
	cmp r2, #0
	bne _021DD5FE
	mov r0, #0
_021DD5FE:
	pop {r4, pc}
	thumb_func_end ovy280_21dd5c0

	thumb_func_start ovy280_21dd600
ovy280_21dd600: ; 0x021DD600
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x18
	mul r2, r1
	add r0, #0xe
	add r0, r0, r2
	add r1, r4, #0
	add r2, r3, #0
	bl sub_02024AD4
	mov r0, #3
	mov r2, #0
	lsl r0, r0, #0xc
	b _021DD622
_021DD61C:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
_021DD622:
	cmp r2, #3
	bhs _021DD62E
	lsl r1, r2, #1
	ldrh r1, [r4, r1]
	cmp r1, r0
	bne _021DD61C
_021DD62E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021DD636
	strb r2, [r0]
_021DD636:
	mov r0, #1
	cmp r2, #0
	bne _021DD63E
	mov r0, #0
_021DD63E:
	pop {r4, pc}
	thumb_func_end ovy280_21dd600

	thumb_func_start ovy280_21dd640
ovy280_21dd640: ; 0x021DD640
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x18
	mul r2, r1
	add r0, #0x14
	add r0, r0, r2
	add r1, r4, #0
	add r2, r3, #0
	bl sub_02024AD4
	mov r0, #3
	mov r2, #0
	lsl r0, r0, #0xc
	b _021DD662
_021DD65C:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
_021DD662:
	cmp r2, #3
	bhs _021DD66E
	lsl r1, r2, #1
	ldrh r1, [r4, r1]
	cmp r1, r0
	bne _021DD65C
_021DD66E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021DD676
	strb r2, [r0]
_021DD676:
	mov r0, #1
	cmp r2, #0
	bne _021DD67E
	mov r0, #0
_021DD67E:
	pop {r4, pc}
	thumb_func_end ovy280_21dd640

	thumb_func_start ovy280_21dd680
ovy280_21dd680: ; 0x021DD680
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	bl sub_021DD580
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021DD6B0
	add r4, r4, #2
_021DD694:
	mov r0, #0x18
	mul r0, r5
	add r0, r4, r0
	add r1, r7, #0
	bl ovy280_21dd6b8
	cmp r0, #0
	beq _021DD6AA
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DD6AA:
	add r5, r5, #1
	cmp r5, r6
	blt _021DD694
_021DD6B0:
	ldr r0, _021DD6B4 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD6B4: .word 0x0000FFFF
	thumb_func_end ovy280_21dd680

	thumb_func_start ovy280_21dd6b8
ovy280_21dd6b8: ; 0x021DD6B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020486F4
	mov r1, #3
	mov r3, #0
	lsl r1, r1, #0xc
_021DD6C8:
	ldrh r6, [r5]
	cmp r6, r1
	bne _021DD6D8
	ldrh r2, [r4]
	cmp r2, r0
	bne _021DD6D8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DD6D8:
	ldrh r2, [r4]
	cmp r6, r2
	beq _021DD6E2
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DD6E2:
	cmp r2, r0
	bne _021DD6EA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DD6EA:
	add r3, r3, #1
	add r5, r5, #2
	add r4, r4, #2
	cmp r3, #3
	blt _021DD6C8
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy280_21dd6b8

	thumb_func_start ovy280_21dd6f8
ovy280_21dd6f8: ; 0x021DD6F8
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x78
	mov r1, #8
	mov r2, #0
	bl sub_0204B4E4
	pop {r3, pc}
	thumb_func_end ovy280_21dd6f8

	thumb_func_start sub_021DD708
sub_021DD708: ; 0x021DD708
	ldr r3, _021DD70C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021DD70C: .word GFL_HeapFree
	thumb_func_end sub_021DD708

	thumb_func_start sub_021DD710
sub_021DD710: ; 0x021DD710
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021DD710

	thumb_func_start sub_021DD714
sub_021DD714: ; 0x021DD714
	mov r3, #6
	mul r3, r1
	add r1, r0, r3
	lsl r0, r2, #1
	add r0, r1, r0
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DD714

	thumb_func_start ovy280_21dd724
ovy280_21dd724: ; 0x021DD724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	str r2, [sp]
	mov r1, #3
	ldrh r2, [r7]
	lsl r1, r1, #0xc
	add r5, r0, #0
	cmp r2, r1
	bne _021DD73E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DD73E:
	mov r1, #0
	str r1, [sp, #4]
	bl sub_021DD710
	cmp r0, #0
	ble _021DD7A6
_021DD74A:
	ldr r0, [sp, #4]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021DD752:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_021DD714
	ldrh r1, [r7]
	cmp r1, r0
	bne _021DD78E
	ldr r0, [sp, #4]
	mov r1, #6
	mul r1, r0
	mov r7, #3
	add r5, r5, r1
	lsl r6, r7, #0xc
_021DD770:
	add r0, r4, #1
	add r1, r7, #0
	blx sub_0208D65C
	add r4, r1, #0
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r1, [r0, #2]
	ldr r0, [sp]
	strh r1, [r0]
	cmp r1, r6
	beq _021DD770
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DD78E:
	add r4, r4, #1
	cmp r4, #3
	blt _021DD752
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_021DD710
	ldr r1, [sp, #4]
	cmp r1, r0
	blt _021DD74A
_021DD7A6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy280_21dd724

	thumb_func_start ovy280_21dd7ac
ovy280_21dd7ac: ; 0x021DD7AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	ldr r0, _021DD8E0 ; =0x00007FFF
	mov r4, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r6, sp, #0x24
_021DD7C4:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy280_21dd4c8
	lsl r1, r4, #2
	add r4, r4, #1
	str r0, [r6, r1]
	cmp r4, #4
	blt _021DD7C4
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ovy280_21dd6f8
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_020486F4
	ldrh r1, [r7]
	cmp r1, r0
	beq _021DD8C2
_021DD7F4:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r6, #0
	lsl r0, r0, #1
	str r0, [sp, #0x1c]
_021DD800:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	add r0, sp, #0x24
	ldr r5, [r0, r1]
	b _021DD846
_021DD80E:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	b _021DD832
_021DD81A:
	lsl r1, r4, #0x10
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy280_21dd54c
	ldr r1, [sp, #0x1c]
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021DD830
	mov r6, #1
_021DD830:
	add r4, r4, #1
_021DD832:
	add r0, r5, #0
	bl sub_021DD544
	cmp r4, r0
	bge _021DD840
	cmp r6, #0
	beq _021DD81A
_021DD840:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_021DD846:
	add r0, r5, #0
	bl sub_021DD548
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bge _021DD856
	cmp r6, #0
	beq _021DD80E
_021DD856:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blo _021DD800
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	bl sub_021DD710
	cmp r0, #0
	ble _021DD8A4
_021DD86E:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_021DD876:
	lsl r2, r4, #0x10
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	lsr r2, r2, #0x10
	bl sub_021DD714
	ldr r1, [sp, #0x1c]
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021DD88C
	mov r6, #1
_021DD88C:
	add r4, r4, #1
	cmp r4, #3
	blt _021DD876
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x14]
	bl sub_021DD710
	ldr r1, [sp]
	cmp r1, r0
	blt _021DD86E
_021DD8A4:
	cmp r6, #0
	bne _021DD8AE
	mov r0, #0
	str r0, [sp, #0x18]
	b _021DD8C2
_021DD8AE:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	bl sub_020486F4
	ldr r1, [sp, #0xc]
	lsl r1, r1, #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021DD7F4
_021DD8C2:
	ldr r0, [sp, #0x14]
	bl sub_021DD708
	mov r4, #0
	add r5, sp, #0x24
_021DD8CC:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_021DD4DC
	add r4, r4, #1
	cmp r4, #4
	blt _021DD8CC
	ldr r0, [sp, #0x18]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DD8E0: .word 0x00007FFF
	thumb_func_end ovy280_21dd7ac
_021DD8E4:
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x02, 0x03, 0x05
	.byte 0x06, 0x0A, 0x00, 0x01, 0x09, 0x08, 0x00, 0x04, 0x04, 0x02, 0x03, 0x06, 0x05, 0x04, 0x05, 0x02
	.byte 0x00, 0x01, 0x03, 0x06, 0x05, 0x04, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0xE1, 0x96, 0x1D, 0x02, 0x51, 0x9A, 0x1D, 0x02, 0x8D, 0x99, 0x1D, 0x02, 0x48, 0x05, 0x00, 0x00
	.byte 0x53, 0x05, 0x00, 0x00, 0x4C, 0x05, 0x00, 0x00, 0x4B, 0x06, 0x00, 0x00, 0x4D, 0x05, 0x00, 0x00
	.byte 0x57, 0x05, 0x00, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00
	.byte 0x47, 0x00, 0x48, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x50, 0x00
	.byte 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00, 0x58, 0x00
	.byte 0x59, 0x00, 0x5A, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00
	.byte 0x38, 0x00, 0x39, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1E, 0x05, 0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x69, 0x6E, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68
	.byte 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x69, 0x6E, 0x5F, 0x64
	.byte 0x61, 0x74, 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021DD8E4
