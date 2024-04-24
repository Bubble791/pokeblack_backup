    .include "macros/function.inc"
	.include "overlay81.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy81_021EA860
ovy81_021EA860: ; 0x021EA860
	str r1, [r0]
	bx lr
	thumb_func_end ovy81_021EA860

	thumb_func_start ovy81_21ea864
ovy81_21ea864: ; 0x021EA864
	push {r4, lr}
	add r4, r0, #0
	bl ovy81_21ea954
	add r0, r4, #0
	bl ovy81_21ea9c4
	add r0, r4, #0
	bl ovy81_21eaa64
	add r0, r4, #0
	bl ovy81_21eab1c
	add r0, r4, #0
	bl ovy81_21eab94
	ldr r1, _021EA890 ; =0x021EA8E5
	add r0, r4, #0
	bl ovy81_021EA860
	pop {r4, pc}
	nop
_021EA890: .word 0x021EA8E5
	thumb_func_end ovy81_21ea864

	thumb_func_start ovy81_21ea894
ovy81_21ea894: ; 0x021EA894
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x14]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	add r0, r4, #0
	bl ovy81_21eaafc
	pop {r4, pc}
	thumb_func_end ovy81_21ea894
_021EA8E4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy81_21ea8e8
ovy81_21ea8e8: ; 0x021EA8E8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _021EA910 ; =0x000001AA
	ldr r3, _021EA914 ; =0x021EAC80
	add r5, r2, #0
	str r0, [sp]
	mov r0, #0x15
	mov r1, #0x34
	mov r2, #1
	mov r6, #0x15
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r6, [r4, #8]
	str r5, [r4, #0x18]
	bl ovy81_21ea864
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EA910: .word 0x000001AA
_021EA914: .word 0x021EAC80
	thumb_func_end ovy81_21ea8e8

	thumb_func_start ovy81_21ea918
ovy81_21ea918: ; 0x021EA918
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EA924
	blx r1
_021EA924:
	ldr r0, [r4, #0x18]
	bl sub_02016AD8
	bl sub_02017238
	bl sub_02012BE4
	pop {r4, pc}
	thumb_func_end ovy81_21ea918
_021EA934:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy81_21ea938
ovy81_21ea938: ; 0x021EA938
	push {r4, lr}
	add r4, r0, #0
	bl ovy81_21ea894
	ldr r0, _021EA950 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	nop
_021EA950: .word 0x04001050
	thumb_func_end ovy81_21ea938

	thumb_func_start ovy81_21ea954
ovy81_21ea954: ; 0x021EA954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	mov r4, #4
	mov r5, #0
_021EA95E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	ble _021EA95E
	ldr r7, _021EA9C0 ; =0x021EABDC
_021EA970:
	mov r0, #0x2c
	mul r0, r5
	add r6, r7, r0
	ldr r4, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r4, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r5, r5, #1
	cmp r5, #3
	blo _021EA970
	ldr r0, [sp, #4]
	mov r1, #0
	ldrh r0, [r0, #8]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	mov r0, #0x17
	bl GFL_FontCreate
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA9C0: .word 0x021EABDC
	thumb_func_end ovy81_21ea954

	thumb_func_start ovy81_21ea9c4
ovy81_21ea9c4: ; 0x021EA9C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldrh r1, [r7, #8]
	mov r0, #0xf5
	ldr r4, _021EAA58 ; =0x021EABAC
	ldr r6, _021EAA5C ; =0x021EABB4
	ldr r5, _021EAA60 ; =0x021EABBC
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
_021EA9DE:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _021EAA06
	ldrb r0, [r4, #3]
	lsl r0, r0, #5
	str r0, [sp]
	ldrh r0, [r7, #8]
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #5
	bl GFL_G2DIOLoadArcNCLRDefault
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021EA9DE
_021EAA06:
	mov r4, #0
_021EAA08:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _021EAA2A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r7, #8]
	str r0, [sp, #8]
	ldrb r1, [r6, #1]
	ldrb r3, [r6, #2]
	ldr r0, [sp, #0xc]
	bl sub_0204ADA8
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _021EAA08
_021EAA2A:
	mov r4, #0
	add r6, r4, #0
_021EAA2E:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _021EAA4E
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r7, #8]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204AF50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021EAA2E
_021EAA4E:
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EAA58: .word 0x021EABAC
_021EAA5C: .word 0x021EABB4
_021EAA60: .word 0x021EABBC
	thumb_func_end ovy81_21ea9c4

	thumb_func_start ovy81_21eaa64
ovy81_21eaa64: ; 0x021EAA64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _021EAA9C ; =0x021EABC8
	add r6, r0, #0
	mov r4, #0
	mov r7, #1
_021EAA70:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021EAA98
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	ldrb r1, [r5, #1]
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r1, r6, r1
	add r4, r4, #1
	add r5, r5, #6
	str r0, [r1, #0x20]
	cmp r4, #2
	blt _021EAA70
_021EAA98:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EAA9C: .word 0x021EABC8
	thumb_func_end ovy81_21eaa64

	thumb_func_start ovy81_21eaaa0
ovy81_21eaaa0: ; 0x021EAAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r1, [r6, #0x1c]
	mov r2, #0
	str r3, [sp, #0xc]
	bl GFL_FontGetBlockWidth
	add r5, r6, #0
	add r5, #0x20
	lsl r4, r4, #3
	lsr r7, r0, #1
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	ldr r1, [r6, #0x1c]
	ldr r2, [sp, #0xc]
	str r1, [sp]
	mov r1, #0xf7
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	sub r1, r1, r7
	lsl r1, r1, #0x10
	ldr r3, [sp, #0x28]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy81_21eaaa0

	thumb_func_start ovy81_21eaafc
ovy81_21eaafc: ; 0x021EAAFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021EAB02:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #2
	blt _021EAB02
	ldr r0, [r5, #0x1c]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy81_21eaafc

	thumb_func_start ovy81_21eab1c
ovy81_21eab1c: ; 0x021EAB1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_02016AD8
	bl sub_020179F0
	add r4, r0, #0
	beq _021EAB8E
	ldr r0, [r4]
	cmp r0, #0
	beq _021EAB8E
	ldrh r1, [r5, #8]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r4]
	bl sub_021E5CA4
	add r1, r0, #0
	ldr r0, [r4]
	add r2, r6, #0
	bl sub_021E5D44
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x70
	mov r3, #0
	str r6, [sp]
	bl ovy81_21eaaa0
	add r0, r6, #0
	bl GFL_StrBufFree
	ldrh r1, [r5, #8]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r4]
	bl sub_021E5CAC
	add r1, r6, #0
	bl sub_021E6488
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x70
	mov r3, #0
	str r6, [sp]
	bl ovy81_21eaaa0
	add r0, r6, #0
	bl GFL_StrBufFree
_021EAB8E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy81_21eab1c

	thumb_func_start ovy81_21eab94
ovy81_21eab94: ; 0x021EAB94
	push {r3, lr}
	add r1, r0, #0
	ldrh r1, [r1, #8]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy81_21eab94
_021EABAC:
	.byte 0x04, 0x00, 0x00, 0x03
	.byte 0xFF, 0x00, 0x00, 0x00, 0x06, 0x03, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x05, 0x08, 0x00, 0x00
	.byte 0x06, 0x07, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x02, 0x04, 0x1C, 0x02, 0x02, 0x04, 0x02
	.byte 0x11, 0x1C, 0x02, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x01, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x73, 0x75, 0x62, 0x73, 0x63, 0x72, 0x65, 0x65, 0x6E, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EABAC
