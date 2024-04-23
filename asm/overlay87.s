    .include "macros/function.inc"
	.include "overlay87.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy87_21ea860
ovy87_21ea860: ; 0x021EA860
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x12
	lsl r5, r5, #4
	add r7, r1, #0
	add r1, r5, #0
	add r6, r0, #0
	ldr r3, _021EA8CC ; =0x021EB580
	add r0, r7, #0
	add r1, #0x18
	mov r2, #0
	str r5, [sp]
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	str r6, [r4]
	add r0, #0x14
	strh r7, [r4, r0]
	sub r1, #0x10
	mov r0, #0
	str r0, [r4, r1]
	add r1, r5, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x14
	ldrh r0, [r4, r0]
	bl ovy87_21eaab4
	add r0, r5, #0
	add r0, #0x14
	ldrh r0, [r4, r0]
	bl ovy87_21eabc8
	add r0, r4, #0
	bl ovy87_21eb144
	add r0, r4, #0
	bl ovy87_21eac24
	mov r0, #0
	add r1, r7, #0
	bl sub_02042BA8
	ldr r0, _021EA8D0 ; =ovy87_21eb418
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	sub r5, #0x14
	str r0, [r4, r5]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy87_21ea860
_021EA8CC: .word 0x021EB580
_021EA8D0: .word ovy87_21eb418

	thumb_func_start ovy87_21ea8d4
ovy87_21ea8d4: ; 0x021EA8D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy87_21eb120
	add r0, r4, #0
	bl ovy87_21eb350
	bl ovy87_21eab98
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy87_21ea8d4

	thumb_func_start ovy87_21ea8fc
ovy87_21ea8fc: ; 0x021EA8FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	bne _021EA952
	ldr r0, [r5, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021EA952
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_0201735C
	add r6, r0, #0
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	bls _021EA946
	mov r7, #1
_021EA92E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r6, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blo _021EA92E
_021EA946:
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_021EA952:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy87_21ea8fc

	thumb_func_start ovy87_21ea954
ovy87_21ea954: ; 0x021EA954
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	mov r0, #2
	tst r0, r1
	bne _021EA9AA
	ldr r0, [r6, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021EA9AA
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r4, #0
_021EA988:
	lsl r0, r4, #3
	add r0, r6, r0
	ldr r0, [r0, #0xc]
	bl sub_0204826C
	add r4, r4, #1
	cmp r4, #8
	blo _021EA988
	mov r0, #5
	bl sub_02045B7C
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r2, [r6, r1]
	mov r0, #2
	orr r0, r2
	str r0, [r6, r1]
_021EA9AA:
	ldr r0, [r6, #8]
	bl sub_02021A3C
	mov r5, #0
_021EA9B2:
	lsl r0, r5, #3
	add r4, r6, r0
	ldrb r0, [r4, #0x10]
	ldr r7, [r6, #8]
	cmp r0, #0
	beq _021EA9DA
	ldr r0, [r4, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021EA9DA
	ldr r0, [r4, #0xc]
	bl sub_02048244
	mov r0, #0
	strb r0, [r4, #0x10]
_021EA9DA:
	add r5, r5, #1
	cmp r5, #8
	blo _021EA9B2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy87_21ea954
_021EA9E4:
	.byte 0x13, 0x21, 0x09, 0x01, 0x40, 0x58, 0x03, 0x28, 0x01, 0xD1, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy87_21ea9f8
ovy87_21ea9f8: ; 0x021EA9F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_02017934
	mov r4, #0x45
	lsl r4, r4, #2
	add r2, r4, #4
	str r0, [r5, #4]
	add r1, r5, r4
	add r2, r5, r2
	bl sub_020074B8
	ldr r0, [r5, r4]
	mov r1, #0xa
	lsl r0, r0, #9
	blx sub_0208D868
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x10
	strh r1, [r5, r0]
	add r4, #0x12
	strh r1, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy87_21ea9f8

	thumb_func_start ovy87_21eaa3c
ovy87_21eaa3c: ; 0x021EAA3C
	push {r3, r4, r5, lr}
	mov r5, #0x46
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #3
	blx sub_0208D868
	sub r1, r5, #4
	ldr r1, [r4, r1]
	cmp r1, r0
	blo _021EAA58
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EAA58:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy87_21eaa3c

	thumb_func_start ovy87_21eaa5c
ovy87_21eaa5c: ; 0x021EAA5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x44]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r4, #6
	mov r6, #1
_021EAA76:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0xf
	bls _021EAA76
	mov r0, #0x11
	lsl r0, r0, #4
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy87_21eaa5c
_021EAA90:
	.byte 0x49, 0x21, 0x89, 0x00, 0x42, 0x5A, 0x0A, 0x2A, 0x04, 0xD1, 0x00, 0x22, 0x14, 0x39, 0x42, 0x50
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x11, 0x21, 0x00, 0x22, 0x09, 0x01, 0x42, 0x50
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy87_21eaab4
ovy87_21eaab4: ; 0x021EAAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	mov r0, #4
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	mov r7, #6
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r6, _021EAB8C ; =0x021EB548
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
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #4
	bl sub_02044F90
	ldr r6, _021EAB90 ; =0x021EB528
	add r3, sp, #0x20
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
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #5
	bl sub_02044F90
	ldr r6, _021EAB94 ; =0x021EB508
	add r3, sp, #0
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
	add r0, r7, #0
	bl sub_02045738
	add r0, r7, #0
	mov r1, #0x20
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020450CC
	add r0, r7, #0
	bl sub_02044F90
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end ovy87_21eaab4
_021EAB8C: .word 0x021EB548
_021EAB90: .word 0x021EB528
_021EAB94: .word 0x021EB508

	thumb_func_start ovy87_21eab98
ovy87_21eab98: ; 0x021EAB98
	push {r3, lr}
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy87_21eab98

	thumb_func_start ovy87_21eabc8
ovy87_21eabc8: ; 0x021EABC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xc1
	add r1, r5, #0
	bl sub_0204AA30
	mov r1, #0x60
	str r1, [sp]
	mov r1, #3
	mov r2, #4
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	mov r6, #0
	bl sub_0204B0D4
	mov r0, #4
	mov r1, #0
	bl sub_02045350
	str r6, [sp]
	mov r7, #1
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy87_21eabc8

	thumb_func_start ovy87_21eac24
ovy87_21eac24: ; 0x021EAC24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	bl sub_02021998
	ldr r7, _021EAF2C ; =0x021EB4D8
	str r0, [r5, #8]
	mov r4, #0
_021EAC3A:
	mov r0, #6
	mul r0, r4
	add r3, r7, r0
	lsl r1, r4, #3
	add r6, r5, r1
	ldrb r1, [r3, #4]
	ldrb r0, [r7, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl sub_020480C0
	str r0, [r6, #0xc]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r4, r4, #1
	cmp r4, #8
	blo _021EAC3A
	mov r6, #0x4d
	lsl r6, r6, #2
	ldrh r0, [r5, r6]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x4c]
	add r2, r6, #0
	ldrh r3, [r5, r6]
	mov r0, #0
	mov r1, #2
	add r2, #0x33
	bl GFL_MsgSysLoadData
	add r7, r0, #0
	ldrh r0, [r5, r6]
	bl GFL_WordSetSystemCreateDefault
	add r4, r0, #0
	mov r0, #2
	ldrh r1, [r5, r6]
	add r0, #0xfe
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_02016AD8
	str r0, [sp, #0x34]
	bl sub_02017934
	str r0, [sp, #0x30]
	add r0, r7, #0
	mov r1, #0
	bl sub_0204898C
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	bl sub_0201736C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl GFL_CopyVarForText
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0xc]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xd6
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	mov r3, #4
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #0x10]
	ldr r0, [sp, #0x38]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x3c]
	add r0, sp, #0x74
	bl RTC_GetDate
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x74]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x78]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x7c]
	add r0, r4, #0
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x3c]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x14]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r3, #0
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #0x18]
	ldr r0, [sp, #0x3c]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #2
	bl sub_0204898C
	str r0, [sp, #0x40]
	add r0, sp, #0x68
	bl RTC_GetTime
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x68]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x6c]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x40]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0x20
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x40]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #3
	bl sub_0204898C
	str r0, [sp, #0xc]
	ldr r0, [r5]
	bl sub_02016ADC
	bl sub_02017544
	str r0, [sp, #0x44]
	bl sub_02018BFC
	cmp r0, #0
	bne _021EAE22
	ldr r0, [sp, #0x44]
	bl sub_02018C10
	cmp r0, #0
	beq _021EAE72
_021EAE22:
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010044
	bl sub_0201006C
	mov r1, #0x40
	add r1, #0xf4
	str r0, [sp, #0x48]
	ldrh r1, [r5, r1]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	mov r1, #0
	mov r2, #0
	bl sub_02038F00
	add r1, r0, #0
	ldr r0, [sp, #0x4c]
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl sub_0202437C
	ldr r0, [sp, #0x4c]
	bl GFL_StrBufFree
	b _021EAE82
_021EAE72:
	ldr r0, [sp, #0x44]
	bl sub_02018C80
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_02024700
_021EAE82:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x24]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0x28
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r7, #0
	mov r1, #4
	bl sub_0204898C
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x34]
	bl PlayerSave_GetPlayerSaveOffset
	bl sub_0200C9A0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x50]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x2c]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x50]
	bl GFL_StrBufFree
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_02017394
	ldr r1, _021EAF30 ; =0x00000962
	b _021EAF34
	.align 2, 0
	thumb_func_end ovy87_21eac24
_021EAF2C: .word 0x021EB4D8
_021EAF30: .word 0x00000962
_021EAF34:
	bl sub_020191AC
	cmp r0, #1
	bne _021EAFA4
	add r0, r7, #0
	mov r1, #5
	bl sub_0204898C
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x34]
	bl sub_0200D190
	mov r1, #0x4d
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	bl sub_0200D83C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r2, [sp, #0x54]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x34]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0x38
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x54]
	bl GFL_StrBufFree
_021EAFA4:
	add r0, r7, #0
	mov r1, #6
	bl sub_0204898C
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x34]
	bl sub_02017A40
	str r0, [sp, #0x5c]
	bl sub_02008CEC
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x5c]
	bl sub_02008CF0
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x58]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0x40
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x58]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x30]
	bl sub_0200746C
	cmp r0, #0
	bne _021EB104
	ldr r0, [sp, #0x30]
	bl sub_02007468
	cmp r0, #1
	bne _021EB104
	ldr r0, [sp, #0x30]
	bl sub_02008DE8
	str r0, [sp, #0x60]
	add r0, r7, #0
	mov r1, #7
	bl sub_0204898C
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x60]
	bl sub_02008D68
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x60]
	bl sub_02008D70
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x60]
	bl sub_02008D78
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x60]
	bl sub_02008D80
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x60]
	bl sub_02008D88
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x64]
	add r0, r4, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x44]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xd6
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r3, #4
	bl sub_02021C7C
	add r5, #0x48
	mov r0, #1
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	bl GFL_StrBufFree
	b _021EB10A
_021EB104:
	ldr r0, [r5, #0x44]
	bl sub_02048244
_021EB10A:
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_WordSetSystemFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}

	thumb_func_start ovy87_21eb120
ovy87_21eb120: ; 0x021EB120
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	bl sub_02022DA8
	mov r4, #0
_021EB12C:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #8
	blo _021EB12C
	ldr r0, [r5, #8]
	bl sub_02021A18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy87_21eb120

	thumb_func_start ovy87_21eb144
ovy87_21eb144: ; 0x021EB144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_0201735C
	str r0, [sp, #0xc]
	bl sub_0201FDF8
	mov r2, #0x4d
	lsl r2, r2, #2
	add r7, r0, #0
	ldrh r2, [r5, r2]
	mov r0, #0x10
	mov r1, #0
	mov r4, #0
	bl sub_0204BF1C
	mov r1, #0x4d
	str r0, [r5, #0x50]
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	mov r0, #7
	bl sub_0204AA30
	add r6, r0, #0
	cmp r7, #0
	bls _021EB1B2
_021EB180:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_0201FF08
	bl sub_0201D624
	bl sub_02020F40
	add r1, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0x94
	add r4, r4, #1
	str r0, [r1]
	cmp r4, r7
	blo _021EB180
_021EB1B2:
	bl sub_02021114
	add r1, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	mov r4, #0
	bl sub_0204BC48
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	bl sub_0202111C
	str r0, [sp, #0x10]
	bl sub_02021190
	mov r3, #0x4d
	lsl r3, r3, #2
	add r2, r0, #0
	ldrh r3, [r5, r3]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_0204BDE0
	mov r1, #0x4d
	lsl r1, r1, #2
	sub r1, #0x30
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0204AB0C
	mov r1, #0xc1
	add r1, #0x73
	ldrh r1, [r5, r1]
	mov r0, #0xc1
	bl sub_0204AA30
	mov r1, #0x4d
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	mov r2, #1
	mov r3, #1
	str r1, [sp]
	mov r1, #4
	str r0, [sp, #0x14]
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #5
	mov r2, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #0x60
	mov r6, #0x60
	bl sub_0204BBB8
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	mov r3, #0x60
	add r3, #0xd4
	ldrh r3, [r5, r3]
	ldr r0, [sp, #0x14]
	mov r1, #6
	mov r2, #7
	bl sub_0204BDE0
	add r6, #0xa8
	str r0, [r5, r6]
	ldr r0, [sp, #0x14]
	bl sub_0204AB0C
	ldr r1, _021EB34C ; =0x021EB4C8
	add r0, sp, #0x20
	ldrh r2, [r1]
	cmp r7, #0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bls _021EB2E0
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x30
	str r0, [sp, #0x1c]
_021EB27E:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_0201FF08
	str r0, [sp, #0x18]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	add r1, #0x94
	add r2, #0xd0
	ldr r0, [r5, #0x50]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #0
	str r0, [r6, #0x54]
	bl sub_0204C124
	add r1, sp, #0x20
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #0x20
	add r1, #0x20
	strh r1, [r0]
	ldr r0, [sp, #0x18]
	bl sub_0201D624
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [r6, #0x54]
	mov r2, #1
	bl sub_0204C378
	add r4, r4, #1
	cmp r4, r7
	blo _021EB27E
_021EB2E0:
	ldr r1, _021EB34C ; =0x021EB4C8
	mov r7, #0x4d
	ldrh r2, [r1, #8]
	add r0, sp, #0x20
	lsl r7, r7, #2
	strh r2, [r0]
	ldrh r2, [r1, #0xa]
	mov r4, #6
	sub r7, #0x2c
	strh r2, [r0, #2]
	ldrh r2, [r1, #0xc]
	strh r2, [r0, #4]
	ldrh r1, [r1, #0xe]
	strh r1, [r0, #6]
_021EB2FC:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	add r1, #0xac
	add r2, #0xd4
	ldr r0, [r5, #0x50]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r7]
	bl sub_0204C040
	mov r1, #0
	str r0, [r6, #0x54]
	bl sub_0204C124
	add r1, sp, #0x20
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #0x20
	add r4, r4, #1
	add r1, #0xc
	strh r1, [r0]
	cmp r4, #0xf
	bls _021EB2FC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end ovy87_21eb144
_021EB34C: .word 0x021EB4C8

	thumb_func_start ovy87_21eb350
ovy87_21eb350: ; 0x021EB350
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016AD8
	bl sub_0201735C
	add r7, r0, #0
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	bls _021EB388
_021EB36A:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x54]
	bl sub_0204C108
	add r6, #0x94
	ldr r0, [r6]
	bl sub_0204B98C
	add r0, r7, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blo _021EB36A
_021EB388:
	mov r4, #6
_021EB38A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #0xf
	bls _021EB38A
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_0204BCD0
	mov r4, #0x41
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204BE64
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BE64
	ldr r0, [r5, #0x50]
	bl sub_0204BF98
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy87_21eb350

	thumb_func_start ovy87_21eb3dc
ovy87_21eb3dc: ; 0x021EB3DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #6
	add r4, #0x54
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy87_21eb3dc

	thumb_func_start ovy87_21eb400
ovy87_21eb400: ; 0x021EB400
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021EB406:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy87_21eb3dc
	add r4, r4, #1
	cmp r4, #0xa
	blt _021EB406
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy87_21eb400

	thumb_func_start ovy87_21eb418
ovy87_21eb418: ; 0x021EB418
	push {r3, r4, r5, lr}
	mov r5, #0x11
	add r4, r1, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021EB4C6
	ldr r0, [r4, #4]
	bl sub_0200743C
	lsl r1, r0, #8
	add r0, r5, #0
	add r0, #0x16
	ldrh r0, [r4, r0]
	cmp r0, #8
	beq _021EB444
	add r0, r5, #0
	add r0, #0x16
	ldrh r0, [r4, r0]
	add r5, #0x16
	add r0, r0, #1
	strh r0, [r4, r5]
_021EB444:
	mov r5, #0x47
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r1, r0
	blo _021EB484
	add r1, r5, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	cmp r1, #8
	bne _021EB484
	add r1, r5, #0
	add r1, #8
	ldrh r1, [r4, r1]
	cmp r1, #0xa
	bhs _021EB484
	add r2, r5, #4
	ldr r2, [r4, r2]
	add r0, r0, r2
	str r0, [r4, r5]
	add r0, r5, #0
	mov r2, #0
	add r0, #0xa
	strh r2, [r4, r0]
	add r0, r4, #0
	bl ovy87_21eb3dc
	add r0, r5, #0
	add r0, #8
	ldrh r0, [r4, r0]
	add r5, #8
	add r0, r0, #1
	strh r0, [r4, r5]
_021EB484:
	mov r1, #0x49
	lsl r1, r1, #2
	add r0, r1, #4
	ldrh r2, [r4, r1]
	ldr r0, [r4, r0]
	cmp r2, r0
	bne _021EB49C
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r0, r0, #1
	b _021EB4A2
_021EB49C:
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0
_021EB4A2:
	mov r5, #0x4b
	add r1, #8
	lsl r5, r5, #2
	str r0, [r4, r1]
	ldr r1, [r4, r5]
	lsl r0, r5, #2
	cmp r1, r0
	blt _021EB4BE
	add r0, r4, #0
	bl ovy87_21eb400
	mov r0, #0xa
	sub r5, #8
	strh r0, [r4, r5]
_021EB4BE:
	bl sub_0204B794
	bl sub_0204B7C8
_021EB4C6:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy87_21eb418
_021EB4C8:
	.byte 0x28, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x4A, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x01, 0x00, 0x0F, 0x03, 0x02, 0x05, 0x03
	.byte 0x07, 0x0A, 0x02, 0x02, 0x05, 0x0E, 0x07, 0x05, 0x02, 0x02, 0x05, 0x03, 0x09, 0x0F, 0x02, 0x02
	.byte 0x05, 0x03, 0x10, 0x0C, 0x02, 0x02, 0x05, 0x10, 0x10, 0x0C, 0x02, 0x02, 0x05, 0x03, 0x12, 0x10
	.byte 0x02, 0x02, 0x05, 0x01, 0x15, 0x1E, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x05, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x07, 0x00, 0x00, 0x28, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EB4C8
