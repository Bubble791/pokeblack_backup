    .include "macros/function.inc"
	.include "overlay83.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy83_021EA860
ovy83_021EA860: ; 0x021EA860
	ldr r3, _021EA864 ; =GFL_SndSEPlay
	bx r3
	.align 2, 0
_021EA864: .word GFL_SndSEPlay
	thumb_func_end ovy83_021EA860

	thumb_func_start ovy83_21ea868
ovy83_21ea868: ; 0x021EA868
	push {r3, lr}
	add r3, sp, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy83_21ea868

	thumb_func_start ovy83_21ea87c
ovy83_21ea87c: ; 0x021EA87C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204C488
	add r0, r4, #0
	bl sub_0204C56C
	pop {r4, pc}
	thumb_func_end ovy83_21ea87c

	thumb_func_start ovy83_21ea88c
ovy83_21ea88c: ; 0x021EA88C
	push {r3, lr}
	cmp r1, #0
	beq _021EA89E
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r2, #0
	bl sub_02021A34
	pop {r3, pc}
_021EA89E:
	mov r1, #0x7d
	lsl r1, r1, #2
	mov r2, #0
	bl sub_02021A34
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy83_21ea88c

	thumb_func_start ovy83_21ea8ac
ovy83_21ea8ac: ; 0x021EA8AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	add r4, r0, #0
	str r3, [sp, #8]
	mov r0, #0x96
	add r7, r1, #0
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _021EA920 ; =0x021EAE40
	add r0, r6, #0
	mov r1, #0x50
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	strh r6, [r5]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	str r6, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0202E168
	str r0, [r5, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0xc
	add r3, r6, #0
	mov r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #8]
_021EA8EE:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x10]
	cmp r4, #4
	blt _021EA8EE
	mov r3, #0
	ldr r0, _021EA924 ; =0x000039E3
	add r1, r3, #0
_021EA908:
	lsl r2, r3, #4
	add r2, r5, r2
	str r1, [r2, #0x24]
	strh r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	add r3, r3, #1
	str r1, [r2, #0x20]
	cmp r3, #3
	blt _021EA908
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA920: .word 0x021EAE40
_021EA924: .word 0x000039E3
	thumb_func_end ovy83_21ea8ac

	thumb_func_start ovy83_21ea928
ovy83_21ea928: ; 0x021EA928
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021EA92E:
	lsl r0, r5, #4
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021EA93C
	bl sub_0202E34C
_021EA93C:
	add r5, r5, #1
	cmp r5, #3
	blt _021EA92E
	mov r5, #0
_021EA944:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x10]
	bl GFL_StrBufFree
	add r5, r5, #1
	cmp r5, #4
	blt _021EA944
	ldr r0, [r4, #8]
	bl GFL_MsgDataFree
	ldr r0, [r4, #4]
	bl sub_0202E1DC
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy83_21ea928

	thumb_func_start ovy83_21ea968
ovy83_21ea968: ; 0x021EA968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0xc]
	mov r4, #0
	lsl r0, r1, #2
	add r1, r1, r0
	ldr r0, _021EA9E0 ; =0x021EAE24
	ldrb r0, [r0, r1]
	strb r0, [r5, #0xd]
	cmp r0, #0
	ble _021EA9DC
	add r7, r5, #0
	add r7, #0x24
_021EA986:
	ldrb r2, [r5, #0xc]
	lsl r1, r4, #4
	add r6, r5, r1
	lsl r0, r2, #2
	add r2, r2, r0
	ldr r0, _021EA9E0 ; =0x021EAE24
	add r1, r7, r1
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x24]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	ldrb r3, [r5, #0xc]
	ldr r0, [r5, #4]
	lsl r2, r3, #2
	add r3, r3, r2
	ldr r2, _021EA9E0 ; =0x021EAE24
	add r2, r2, r3
	ldrb r3, [r2, #1]
	lsl r2, r4, #3
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x15
	bl sub_0202E210
	str r0, [r6, #0x20]
	ldrb r0, [r5, #0xd]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA986
_021EA9DC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA9E0: .word 0x021EAE24
	thumb_func_end ovy83_21ea968
_021EA9E4:
	.byte 0x09, 0x01, 0x40, 0x18, 0x00, 0x6A, 0x70, 0x47

	thumb_func_start ovy83_21ea9ec
ovy83_21ea9ec: ; 0x021EA9EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	mov r4, #0
	cmp r0, #0
	ble _021EAA22
_021EA9FE:
	lsl r6, r4, #4
	add r0, r5, r6
	ldr r0, [r0, #0x20]
	bl sub_0202E674
	cmp r0, #1
	bne _021EAA1A
	add r0, r5, r6
	ldr r0, [r0, #0x20]
	bl sub_0202E37C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021EAA1A:
	ldrb r0, [r5, #0xd]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA9FE
_021EAA22:
	mov r4, #0
	cmp r0, #0
	ble _021EAA60
	ldr r7, _021EAA64 ; =0x0000054C
_021EAA2A:
	lsl r0, r4, #4
	add r6, r5, r0
	ldr r0, [r6, #0x20]
	bl sub_0202E454
	cmp r0, #0
	beq _021EAA52
	ldrb r0, [r5, #0xd]
	sub r0, r0, #1
	cmp r4, r0
	bge _021EAA42
	b _021EAA4A
_021EAA42:
	ldr r0, [r6, #0x20]
	mov r1, #1
	bl sub_0202E430
_021EAA4A:
	add r0, r7, #0
	bl ovy83_021EA860
	str r4, [sp]
_021EAA52:
	ldr r0, [r6, #0x20]
	bl sub_0202E37C
	ldrb r0, [r5, #0xd]
	add r4, r4, #1
	cmp r4, r0
	blt _021EAA2A
_021EAA60:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EAA64: .word 0x0000054C
	thumb_func_end ovy83_21ea9ec

	thumb_func_start ovy83_21eaa68
ovy83_21eaa68: ; 0x021EAA68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x20
	lsl r6, r1, #4
	ldr r0, [r4, r6]
	bl sub_0202E37C
	ldr r0, [r4, r6]
	bl sub_0202E438
	cmp r0, #0
	beq _021EAAA4
	ldrb r0, [r5, #0xd]
	mov r4, #0
	cmp r0, #0
	ble _021EAAA0
	add r7, r4, #0
_021EAA8C:
	lsl r0, r4, #4
	add r6, r5, r0
	ldr r0, [r6, #0x20]
	bl sub_0202E34C
	str r7, [r6, #0x20]
	ldrb r0, [r5, #0xd]
	add r4, r4, #1
	cmp r4, r0
	blt _021EAA8C
_021EAAA0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EAAA4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy83_21eaa68

	thumb_func_start ovy83_21eaaa8
ovy83_21eaaa8: ; 0x021EAAA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0xd]
	mov r4, #0
	cmp r0, #0
	ble _021EAAD2
	add r7, r4, #0
_021EAAB6:
	lsl r0, r4, #4
	add r5, r6, r0
	ldr r0, [r5, #0x20]
	bl sub_0202E644
	ldr r0, [r5, #0x20]
	bl sub_0202E34C
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
	ldrb r0, [r6, #0xd]
	add r4, r4, #1
	cmp r4, r0
	blt _021EAAB6
_021EAAD2:
	mov r0, #0
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy83_21eaaa8

	thumb_func_start ovy83_21eaadc
ovy83_21eaadc: ; 0x021EAADC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _021EAB34 ; =0x0000FFFE
	add r0, sp, #0
	strh r1, [r0]
	ldrb r1, [r5]
	sub r0, r1, #1
	strb r0, [r5]
	cmp r1, #0
	bne _021EAAFE
	mov r0, #0
	strb r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EAAFE:
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	beq _021EAB2E
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r2, #0x40
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #0
	bl sub_02045ECC
	cmp r0, #0
	beq _021EAB2E
	mov r0, #0
	strb r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EAB2E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021EAB34: .word 0x0000FFFE
	thumb_func_end ovy83_21eaadc

	thumb_func_start ovy83_21eab38
ovy83_21eab38: ; 0x021EAB38
	push {r3, lr}
	bl sub_02013EAC
	cmp r0, #0
	beq _021EAB46
	cmp r0, #0x3c
	blt _021EAB4A
_021EAB46:
	mov r0, #0x16
	pop {r3, pc}
_021EAB4A:
	add r0, #0x15
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy83_21eab38

	thumb_func_start ovy83_21eab50
ovy83_21eab50: ; 0x021EAB50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1]
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	str r3, [r4, #0xc]
	str r0, [r4, #8]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x10]
	add r0, r2, #0
	bl sub_0202AEC4
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy83_21eab50

	thumb_func_start ovy83_21eab6c
ovy83_21eab6c: ; 0x021EAB6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl sub_0202B098
	ldr r0, [r4]
	bl sub_0202B030
	ldr r0, [r4, #4]
	bl sub_02046EDC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy83_21eab6c

	thumb_func_start ovy83_21eab90
ovy83_21eab90: ; 0x021EAB90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021EABAC
	add r1, sp, #0x28
	ldrb r1, [r1]
	ldr r0, [r5, #4]
	bl BmpWin_BitmapFill
_021EABAC:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021EABE4
	ldr r0, [r5, #8]
	add r1, r6, #0
	str r0, [sp]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	add r2, r7, #0
	add r3, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02021D28
	ldr r4, [r5]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EABE4:
	ldr r0, [r5, #0xc]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #8]
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #0x18]
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl ovy83_21eac3c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy83_21eab90

	thumb_func_start ovy83_21eac18
ovy83_21eac18: ; 0x021EAC18
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, sp, #0x20
	ldrb r5, [r4]
	str r5, [sp]
	ldrh r4, [r4, #4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	mov r4, #1
	str r4, [sp, #0x10]
	bl ovy83_21eab90
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy83_21eac18

	thumb_func_start ovy83_21eac3c
ovy83_21eac3c: ; 0x021EAC3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, _021EAC6C ; =ovy83_21eac70
	mov r2, #0xc
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0xc
	add r6, r0, #0
	blx MI_CpuFill8
	str r5, [r6, #4]
	cmp r4, #0
	beq _021EAC6A
	str r4, [r6, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021EAC6A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EAC6C: .word ovy83_21eac70
	thumb_func_end ovy83_21eac3c

	thumb_func_start ovy83_21eac70
ovy83_21eac70: ; 0x021EAC70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r4, [r5, #4]
	add r7, r0, #0
	ldr r6, [r4, #0xc]
	add r4, #0x14
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021EAC9E
	ldr r0, [r4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021EAC9E
	ldr r0, [r4]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r4, #4]
_021EAC9E:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _021EACCA
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_0204826C
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_020484D4
	bl sub_02045B7C
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021EACC4
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EACC4:
	add r0, r7, #0
	bl sub_0203A870
_021EACCA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy83_21eac70

	thumb_func_start ovy83_21eaccc
ovy83_21eaccc: ; 0x021EACCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021EACE6
	ldr r0, [r5, #4]
	mov r1, #0
	bl BmpWin_BitmapFill
_021EACE6:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021EAD08
	ldr r0, [r5, #8]
	mov r1, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #0
	add r3, r6, #0
	bl sub_02021D28
	ldr r0, [r5]
	bl sub_0202B0F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EAD08:
	str r6, [sp]
	ldr r0, [r5, #8]
	mov r2, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #4]
	mov r3, #0
	bl sub_02021C7C
	add r0, r5, #0
	add r1, r7, #0
	bl ovy83_21ead3c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy83_21eaccc

	thumb_func_start ovy83_21ead28
ovy83_21ead28: ; 0x021EAD28
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl ovy83_21eaccc
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy83_21ead28

	thumb_func_start ovy83_21ead3c
ovy83_21ead3c: ; 0x021EAD3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, _021EAD6C ; =ovy83_21ead70
	mov r2, #0xc
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0xc
	add r6, r0, #0
	blx MI_CpuFill8
	str r5, [r6, #4]
	cmp r4, #0
	beq _021EAD6A
	str r4, [r6, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021EAD6A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EAD6C: .word ovy83_21ead70
	thumb_func_end ovy83_21ead3c

	thumb_func_start ovy83_21ead70
ovy83_21ead70: ; 0x021EAD70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #4]
	bl sub_02021C1C
	cmp r0, #0
	bne _021EAD9E
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0202B0F4
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021EAD98
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EAD98:
	add r0, r5, #0
	bl sub_0203A870
_021EAD9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy83_21ead70

	thumb_func_start ovy83_21eada0
ovy83_21eada0: ; 0x021EADA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	ldr r1, _021EADE8 ; =ovy83_21eadec
	mov r2, #0xc
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	strb r6, [r4, #1]
	strb r7, [r4]
	ldrb r0, [r4]
	cmp r0, #0
	bne _021EADD2
	mov r0, #0
	strb r0, [r4, #4]
	mov r0, #0x10
	b _021EADD8
_021EADD2:
	mov r0, #0x40
	strb r0, [r4, #4]
	sub r0, #0x50
_021EADD8:
	strb r0, [r4, #5]
	mov r0, #4
	strb r0, [r4, #2]
	str r5, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EADE8: .word ovy83_21eadec
	thumb_func_end ovy83_21eada0

	thumb_func_start ovy83_21eadec
ovy83_21eadec: ; 0x021EADEC
	push {r3, lr}
	add r2, r1, #0
	ldrb r3, [r2, #3]
	add r1, r3, #1
	strb r1, [r2, #3]
	ldrb r1, [r2, #2]
	cmp r3, r1
	bhs _021EAE14
	mov r3, #4
	mov r0, #5
	ldrsb r1, [r2, r3]
	ldrsb r0, [r2, r0]
	add r0, r1, r0
	strb r0, [r2, #4]
	ldrb r0, [r2, #1]
	ldrsb r2, [r2, r3]
	mov r1, #3
	bl sub_02044CFC
	pop {r3, pc}
_021EAE14:
	ldr r2, [r2, #8]
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	bl sub_0203A870
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy83_21eadec
_021EAE24:
	.byte 0x03, 0x08, 0x02, 0x00, 0x01, 0x02, 0x10, 0x00, 0x01, 0x00, 0x02, 0x10
	.byte 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x65, 0x61, 0x63, 0x6F, 0x6E, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x63, 0x6F, 0x6D, 0x6D
	.byte 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EAE24
