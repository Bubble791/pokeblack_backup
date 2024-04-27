    .include "macros/function.inc"
	.include "overlay299.inc"
	.include "global.inc"

	.public ovy299_219fc14
	.public ovy299_219fc60
	.public sub_0219FC78
	.public sub_0219FCEC
	.public sub_0219FCFC
	.public ovy299_219fd04
	.public ovy299_219fea8
	.public ovy299_219fef0
	.public ovy299_21a0040
	.public ovy299_21a0080
	.public ovy299_21a00ac
	.public ovy299_21a0134
	.public ovy299_21a01a0
	.public ovy299_21a01e4
	.public ovy299_21a0208
	.public sub_021A0220
	.public ovy299_21a0298
	.public ovy299_21a0230
	.public ovy299_21a0324
	.public ovy299_21a04e8
	.public ovy299_21a0564
	.public ovy299_21a0e1c
	.public ovy299_21a0e3c
	.public ovy299_21a0f70
	.public ovy299_21a0fb8
	.public ovy299_21a100c
	.public ovy299_21a1024
	.public ovy299_21a1158
	.public ovy299_21a1488
	.public sub_021A14B0
	.public ovy299_21a14c4
	.public sub_021A14E4
	.public ovy299_21a150c
	.public sub_021A1528
	.public ovy299_21a153c
	.public ovy299_21a1568
	.public ovy299_21a158c
	.text



	thumb_func_start ovy299_21a17d8
ovy299_21a17d8: ; 0x021A17D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x9d
	mov r1, #0x6b
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	ldr r2, _021A1810 ; =0x0000FFFE
	mov r0, #0x10
	mov r1, #0x10
	mov r3, #0x6b
	bl sub_02035024
	ldr r1, _021A1814 ; =0x00000C68
	mov r2, #0x35
	str r0, [r5, r1]
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r3, #0x10
	bl sub_02035104
	add r0, r4, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, pc}
	nop
_021A1810: .word 0x0000FFFE
_021A1814: .word 0x00000C68
	thumb_func_end ovy299_21a17d8

	thumb_func_start sub_021A1818
sub_021A1818: ; 0x021A1818
	ldr r1, _021A1820 ; =0x00000C68
	ldr r3, _021A1824 ; =sub_02035178
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021A1820: .word 0x00000C68
_021A1824: .word sub_02035178
	thumb_func_end sub_021A1818

	thumb_func_start sub_021A1828
sub_021A1828: ; 0x021A1828
	ldr r2, _021A1830 ; =0x00000C6C
	str r1, [r0, r2]
	bx lr
	nop
_021A1830: .word 0x00000C6C
	thumb_func_end sub_021A1828

	thumb_func_start ovy299_21a1834
ovy299_21a1834: ; 0x021A1834
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _021A188C ; =0x00000B88
	add r5, r0, #0
	sub r6, r4, #1
_021A183E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A184C
	bl sub_0204B98C
_021A184C:
	add r4, r4, #1
	cmp r4, #0x24
	blo _021A183E
	mov r4, #0
	ldr r7, _021A1890 ; =0x00000C18
	sub r6, r4, #1
_021A1858:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A1866
	bl sub_0204BCD0
_021A1866:
	add r4, r4, #1
	cmp r4, #6
	blo _021A1858
	mov r4, #0
	mov r7, #0xc3
	lsl r7, r7, #4
	sub r6, r4, #1
_021A1874:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A1882
	bl sub_0204BE64
_021A1882:
	add r4, r4, #1
	cmp r4, #6
	blo _021A1874
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A188C: .word 0x00000B88
_021A1890: .word 0x00000C18
	thumb_func_end ovy299_21a1834

	thumb_func_start ovy299_21a1894
ovy299_21a1894: ; 0x021A1894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	str r0, [sp, #4]
	mov r0, #0x3f
	mov r1, #0
	mov r2, #0x6b
	mov r6, #0
	bl sub_0204BF1C
	ldr r1, _021A1A8C ; =0x00000A88
	add r4, r6, #0
	str r0, [r5, r1]
	add r0, r1, #4
_021A18C2:
	lsl r1, r6, #2
	add r1, r5, r1
	add r6, r6, #1
	str r4, [r1, r0]
	cmp r6, #0x3f
	blo _021A18C2
	ldr r0, _021A1A90 ; =0x00000B88
	str r0, [sp, #0x14]
	add r0, #0x90
	str r0, [sp, #0x14]
	ldr r0, _021A1A90 ; =0x00000B88
	str r0, [sp, #0x10]
	add r0, #0xa8
	str r0, [sp, #0x10]
	ldr r0, _021A1A8C ; =0x00000A88
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021A1A8C ; =0x00000A88
	add r7, r0, #4
_021A18E8:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021A1A94 ; =0x021A2834
	add r3, sp, #0x1c
	add r6, r0, r1
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x24]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021A1A90 ; =0x00000B88
	ldr r0, [r1, r0]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r1, r0]
	add r1, r2, #0
	str r0, [sp, #0x2c]
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021A1A8C ; =0x00000A88
	mov r2, #0x6b
	ldr r0, [r5, r0]
	bl ovy302_21ad7f0
	ldr r1, [sp, #0xc]
	str r0, [r6, r1]
	ldr r0, [r6, r7]
	mov r1, #0
	bl sub_0204C5C8
	add r4, r4, #1
	cmp r4, #0xc
	bls _021A18E8
	ldr r0, [r5]
	ldrh r0, [r0, #0xa]
	cmp r0, #7
	bhi _021A1964
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy299_21a150c
_021A1964:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #0
	bne _021A197A
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy299_21a150c
_021A197A:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A19B4
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	mov r4, #0
	bl ovy299_21a150c
	add r2, sp, #0x18
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0xc
	add r2, #2
	add r3, sp, #0x18
	bl ovy299_21a158c
	str r4, [sp]
	add r3, sp, #0x18
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r1, #0xc
	asr r2, r2, #0x10
	bl ovy299_21a1568
_021A19B4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A19E0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A19E0
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy299_21a150c
	b _021A1A32
_021A19E0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A19F8
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A19F8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	b _021A1A20
_021A19F8:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021A1A32
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A1A32
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	beq _021A1A20
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xe
	bl ovy299_21a1488
	add r0, r5, #0
	mov r1, #3
	b _021A1A2E
_021A1A20:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xe
	bl ovy299_21a1488
	add r0, r5, #0
	mov r1, #4
_021A1A2E:
	bl sub_021A14B0
_021A1A32:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A1A70
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy299_21a150c
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021A1A70:
	ldr r0, [r1]
	mov r1, #0x12
	bl GameData_IsPocketRegistered
	cmp r0, #1
	bne _021A1A86
	add r0, r5, #0
	mov r1, #8
	mov r2, #7
	bl ovy299_21a14c4
_021A1A86:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021A1A8C: .word 0x00000A88
_021A1A90: .word 0x00000B88
_021A1A94: .word 0x021A2834
	thumb_func_end ovy299_21a1894

	thumb_func_start ovy299_21a1a98
ovy299_21a1a98: ; 0x021A1A98
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	ldr r1, _021A1AB0 ; =0x00000A8C
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A1AAE
	bl Oam_RemoveOam
	mov r0, #0
	str r0, [r4, r5]
_021A1AAE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1AB0: .word 0x00000A8C
	thumb_func_end ovy299_21a1a98

	thumb_func_start ovy299_21a1ab4
ovy299_21a1ab4: ; 0x021A1AB4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021A1ABA:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a1a98
	add r5, r5, #1
	cmp r5, #0x3f
	blo _021A1ABA
	ldr r0, _021A1AD4 ; =0x00000A88
	ldr r0, [r4, r0]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	nop
_021A1AD4: .word 0x00000A88
	thumb_func_end ovy299_21a1ab4

	thumb_func_start ovy299_21a1ad8
ovy299_21a1ad8: ; 0x021A1AD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r3, _021A1D4C ; =0x021A2800
	add r2, sp, #0x38
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1D50 ; =0x00000C48
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A1B06
	mov r0, #0x3e
	mov r6, #0x16
	str r0, [sp, #0x1c]
	mov r1, #0x3d
	lsl r6, r6, #4
	b _021A1B18
_021A1B06:
	mov r0, #0x3d
	str r0, [sp, #0x1c]
	mov r0, #0x21
	str r0, [sp, #0x40]
	mov r0, #3
	mov r1, #0x3e
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	lsl r6, r0, #7
_021A1B18:
	ldr r7, _021A1D54 ; =0x00000A8C
	lsl r0, r1, #2
	add r2, r5, r7
	str r0, [sp, #0x20]
	ldr r0, [r2, r0]
	str r2, [sp, #0x24]
	cmp r0, #0
	beq _021A1B72
	add r0, r5, #0
	bl ovy299_21a1a98
	ldr r0, [sp, #0x40]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r7, #0xfc
	ldr r0, [r0, r7]
	mvn r1, r1
	cmp r0, r1
	beq _021A1B44
	bl sub_0204B98C
_021A1B44:
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021A1D58 ; =0x00000C18
	ldr r0, [r1, r0]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1B5A
	bl sub_0204BCD0
_021A1B5A:
	ldr r0, [sp, #0x48]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1B72
	bl sub_0204BE64
_021A1B72:
	cmp r4, #0
	bne _021A1BE2
	ldr r1, _021A1D5C ; =0x0000806B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x6b
	str r1, [sp]
	mov r1, #0x38
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0x28]
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x40]
	lsl r3, r6, #0x10
	lsl r1, r1, #2
	ldr r7, _021A1D60 ; =0x00000B88
	add r1, r5, r1
	str r0, [r1, r7]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x34
	mov r2, #0
	lsr r3, r3, #0x10
	bl Oam_LoadNCLRFile
	ldr r1, [sp, #0x44]
	mov r3, #0x6b
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r7, #0
	add r1, #0x90
	str r0, [r2, r1]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	mov r2, #0x48
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x48]
	add r7, #0xa8
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x28]
	bl GFL_ArcToolFree
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	b _021A1CA0
_021A1BE2:
	add r0, sp, #0x30
	ldr r7, _021A1D5C ; =0x0000806B
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x34
	add r3, sp, #0x2c
	bl sub_0200D3C8
	add r0, r7, #0
	bl sub_02033E24
	str r0, [sp, #0x18]
	ldr r0, _021A1D64 ; =0x00000147
	cmp r4, r0
	bne _021A1C12
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200DA18
	b _021A1C14
_021A1C12:
	mov r0, #0
_021A1C14:
	ldr r1, [sp, #0x2c]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x6b
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add r1, r4, #0
	bl sub_02033E78
	ldr r1, [sp, #0x40]
	ldr r7, _021A1D60 ; =0x00000B88
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x6b
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_02033E34
	ldr r1, [sp, #0x44]
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r7, #0
	add r1, #0x90
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x6b
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	bl sub_02033EF4
	ldr r1, [sp, #0x48]
	add r7, #0xa8
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x18]
	bl GFL_ArcToolFree
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
_021A1CA0:
	bl ovy299_21a150c
	ldr r0, [sp, #0x40]
	ldr r1, _021A1D60 ; =0x00000B88
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r1]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	add r2, r5, r0
	add r0, r1, #0
	add r0, #0x90
	ldr r0, [r2, r0]
	add r1, #0xa8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	mov r2, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r1]
	add r1, sp, #0x38
	str r0, [sp, #0x48]
	ldr r0, _021A1D68 ; =0x00000A88
	ldr r0, [r5, r0]
	bl ovy302_21ad7f0
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r2, r1]
	mov r1, #0
	bl sub_0204C5C8
	ldr r1, [sp, #0x30]
	ldr r2, _021A1D5C ; =0x0000806B
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02020274
	add r7, r0, #0
	cmp r4, #0
	beq _021A1D0E
	mov r1, #0x22
	bl sub_020202AC
	cmp r0, #0
	bne _021A1D0E
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C2B0
_021A1D0E:
	add r0, r7, #0
	bl sub_020202A4
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #0
	bl ovy299_21a150c
	lsr r2, r6, #5
	lsl r2, r2, #0x14
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	ldr r2, _021A1D50 ; =0x00000C48
	mov r1, #1
	ldrh r3, [r5, r2]
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1f
	lsr r3, r1, #0x1f
	mov r1, #1
	eor r3, r1
	and r1, r3
	orr r0, r1
	strh r0, [r5, r2]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1D4C: .word 0x021A2800
_021A1D50: .word 0x00000C48
_021A1D54: .word 0x00000A8C
_021A1D58: .word 0x00000C18
_021A1D5C: .word 0x0000806B
_021A1D60: .word 0x00000B88
_021A1D64: .word 0x00000147
_021A1D68: .word 0x00000A88
	thumb_func_end ovy299_21a1ad8

	thumb_func_start ovy299_21a1d6c
ovy299_21a1d6c: ; 0x021A1D6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r3, _021A1EF4 ; =0x021A27E8
	add r5, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021A1EF4 ; =0x021A27E8
	add r2, sp, #0x44
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1EF8 ; =0x00000C18
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, r0]
	add r6, r4, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #4]
	add r0, #0x18
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	ldr r0, [sp, #4]
	sub r0, #0x90
	str r0, [sp, #4]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0xc]
	add r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #8]
	add r0, #0x38
	str r0, [sp, #8]
_021A1DBE:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	add r1, #8
	add r0, sp, #0x2c
	strh r1, [r0, #0x1a]
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r7, r0]
	mov r2, #0x6b
	str r0, [sp, #0x4c]
	ldr r0, _021A1EFC ; =0x00000A88
	ldr r0, [r5, r0]
	bl ovy302_21ad7f0
	ldr r1, [sp, #0xc]
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	add r1, r6, #0
	ldr r0, [r7, r0]
	bl sub_0204C5C8
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1DBE
	ldr r2, [sp]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1F00 ; =0x00000C1C
	str r2, [sp]
	str r0, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x10]
	add r0, #0x18
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x10]
	sub r0, #0x54
	str r0, [sp, #0x10]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x28]
	add r0, #0x78
	str r0, [sp, #0x28]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x24]
	add r0, #0x78
	str r0, [sp, #0x24]
	ldr r0, _021A1EFC ; =0x00000A88
	add r0, r5, r0
	str r0, [sp, #0x20]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x1c]
	add r0, #0xb8
	str r0, [sp, #0x1c]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x18]
	add r0, #0xb8
	str r0, [sp, #0x18]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
_021A1E50:
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	add r1, #0x20
	add r0, sp, #0x2c
	strh r1, [r0, #0x1a]
	lsl r0, r6, #2
	add r4, r5, r0
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0x6b
	str r0, [sp, #0x4c]
	add r0, sp, #0x2c
	strh r1, [r0, #0x2e]
	ldr r0, _021A1EFC ; =0x00000A88
	add r1, sp, #0x44
	ldr r0, [r5, r0]
	bl ovy302_21ad7f0
	ldr r1, [sp, #0x28]
	str r0, [r4, r1]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x1d
	mov r2, #1
	bl ovy299_21a153c
	ldr r0, [sp, #0x20]
	add r1, sp, #0x44
	ldr r0, [r0]
	mov r2, #0x6b
	bl ovy302_21ad7f0
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_0204C318
	add r6, r6, #1
	cmp r6, #0x10
	blo _021A1E50
	mov r4, #0
_021A1EBE:
	add r1, r7, #0
	add r0, r5, #0
	add r1, #0xd
	add r2, r4, #0
	bl ovy299_21a150c
	add r7, r7, #1
	cmp r7, #0x10
	blo _021A1EBE
	mov r6, #0
_021A1ED2:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1d
	add r2, r6, #0
	bl ovy299_21a150c
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x2d
	add r2, r6, #0
	bl ovy299_21a150c
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1ED2
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1EF4: .word 0x021A27E8
_021A1EF8: .word 0x00000C18
_021A1EFC: .word 0x00000A88
_021A1F00: .word 0x00000C1C
	thumb_func_end ovy299_21a1d6c

	thumb_func_start ovy299_21a1f04
ovy299_21a1f04: ; 0x021A1F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _021A1FA0 ; =0x0000806B
	mov r0, #7
	add r6, r2, #0
	add r7, r3, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	ldrh r0, [r0]
	add r1, r7, #0
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl sub_02020F94
	add r1, r0, #0
	ldr r0, _021A1FA0 ; =0x0000806B
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r3, sp, #0x10
	bl sub_0204B2DC
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	ldr r0, _021A1FA4 ; =0x00000A8C
	bne _021A1F5E
	add r1, r5, r0
	lsl r0, r4, #2
	add r4, r1, r0
	ldr r0, [r1, r0]
	bl sub_0204C428
	mov r1, #0
	str r1, [sp]
	ldr r1, [sp, #0x10]
	mov r2, #1
	ldr r1, [r1, #0x14]
	b _021A1F72
_021A1F5E:
	add r1, r5, r0
	lsl r0, r4, #2
	add r4, r1, r0
	ldr r0, [r1, r0]
	bl sub_0204C428
	mov r2, #1
	str r2, [sp]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x14]
_021A1F72:
	lsl r2, r2, #0xa
	mov r3, #0
	bl sub_0204BAB8
	ldr r0, [sp, #8]
	bl GFL_HeapFree
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r4]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1FA0: .word 0x0000806B
_021A1FA4: .word 0x00000A8C
	thumb_func_end ovy299_21a1f04

	thumb_func_start ovy299_21a1fa8
ovy299_21a1fa8: ; 0x021A1FA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _021A1FCA
	mov r5, #0xd
_021A1FB2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A1FC2
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A1FC2:
	add r5, r5, #1
	cmp r5, #0x1d
	blo _021A1FB2
	b _021A1FE2
_021A1FCA:
	mov r5, #0x1d
_021A1FCC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A1FDC
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A1FDC:
	add r5, r5, #1
	cmp r5, #0x2d
	blo _021A1FCC
_021A1FE2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy299_21a1fa8

	thumb_func_start ovy299_21a1fe8
ovy299_21a1fe8: ; 0x021A1FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _021A2094 ; =0x0000806B
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r7, r3, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x14
	add r3, sp, #0xc
	bl sub_0200D3C8
	add r0, r5, #0
	add r1, r7, #0
	bl ovy299_21a1fa8
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	lsl r3, r3, #0x10
	add r0, r5, #0
	lsr r3, r3, #0x10
	bl ovy299_21a1f04
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy299_21a150c
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy299_21a14c4
	cmp r7, #1
	bne _021A205C
	add r4, #8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A205C:
	add r4, #8
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #1
	add r1, r6, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x10
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	add r6, #0x10
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy299_21a150c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2094: .word 0x0000806B
	thumb_func_end ovy299_21a1fe8

	thumb_func_start ovy299_21a2098
ovy299_21a2098: ; 0x021A2098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r5, #0xd
	add r7, sp, #4
_021A20A4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A20F8
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy299_21a158c
	mov r0, #0
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	ble _021A20EE
	cmp r1, #0xc8
	blt _021A20F8
_021A20EE:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy299_21a150c
_021A20F8:
	add r5, r5, #1
	cmp r5, #0x1d
	blo _021A20A4
	mov r5, #0x1d
	add r7, sp, #4
_021A2102:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A217E
	mov r0, #1
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy299_21a158c
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	add r1, r5, #0
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldrsh r2, [r7, r2]
	add r0, r4, #0
	add r1, #0x10
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	ble _021A2168
	cmp r1, #0xc8
	blt _021A217E
_021A2168:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy299_21a150c
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0
	bl ovy299_21a150c
_021A217E:
	add r5, r5, #1
	cmp r5, #0x2d
	blo _021A2102
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy299_21a2098

	thumb_func_start ovy299_21a2188
ovy299_21a2188: ; 0x021A2188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A21EC ; =0x00000C4C
	mov r2, #0
	strh r2, [r5, r0]
	add r1, r0, #2
	strh r2, [r5, r1]
	mov r4, #0xd
	add r6, r5, r0
	mov r7, #1
_021A219C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A21BA
	add r1, r4, #0
	sub r1, #0xd
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x10
	ldrh r0, [r6]
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r6]
_021A21BA:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A219C
	ldr r6, _021A21F0 ; =0x00000C4E
	mov r4, #0x1d
	mov r7, #1
_021A21C6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A21E4
	add r1, r4, #0
	sub r1, #0x1d
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x10
	ldrh r0, [r5, r6]
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r5, r6]
_021A21E4:
	add r4, r4, #1
	cmp r4, #0x2d
	blo _021A21C6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A21EC: .word 0x00000C4C
_021A21F0: .word 0x00000C4E
	thumb_func_end ovy299_21a2188

	thumb_func_start ovy299_21a21f4
ovy299_21a21f4: ; 0x021A21F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A2260 ; =0x00000C4C
	add r5, r0, #0
	mov r4, #0xd
	mov r6, #1
_021A21FE:
	add r0, r4, #0
	ldrh r2, [r5, r7]
	sub r0, #0xd
	add r1, r6, #0
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	beq _021A2218
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy299_21a150c
_021A2218:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A21FE
	mov r4, #0x1d
	mov r6, #0
	mov r7, #1
_021A2224:
	ldr r0, _021A2264 ; =0x00000C4E
	add r1, r7, #0
	ldrh r2, [r5, r0]
	add r0, r4, #0
	sub r0, #0x1d
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	beq _021A224C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy299_21a150c
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x10
	add r2, r6, #0
	bl ovy299_21a150c
_021A224C:
	add r4, r4, #1
	cmp r4, #0x2d
	blo _021A2224
	ldr r0, _021A2260 ; =0x00000C4C
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2260: .word 0x00000C4C
_021A2264: .word 0x00000C4E
	thumb_func_end ovy299_21a21f4

	thumb_func_start ovy299_21a2268
ovy299_21a2268: ; 0x021A2268
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x18
	mul r0, r6
	add r6, r0, #0
	add r6, #8
	mov r4, #0xd
	mov r7, #0
_021A227C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A2290
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	b _021A22C4
_021A2290:
	add r2, sp, #4
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #4
	str r7, [sp]
	bl ovy299_21a158c
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r6, r0
	bne _021A22BE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A14E4
	cmp r0, #1
	beq _021A22C8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	b _021A22C4
_021A22BE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
_021A22C4:
	bl ovy299_21a14c4
_021A22C8:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A227C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a2268

	thumb_func_start ovy299_21a22d4
ovy299_21a22d4: ; 0x021A22D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r4, #0
	mov r1, #0
	add r2, #2
	add r3, sp, #4
	add r5, r0, #0
	str r4, [sp]
	bl ovy299_21a158c
	mov r0, #0xc5
	add r1, sp, #4
	lsl r0, r0, #4
	ldrsh r1, [r1, r4]
	ldr r0, [r5, r0]
	bl sub_0219C324
	add r3, r0, #0
	cmp r3, #0xc
	bhs _021A2302
	mov r3, #0xc
	b _021A2308
_021A2302:
	cmp r3, #0x9c
	bls _021A2308
	mov r3, #0x9c
_021A2308:
	lsl r3, r3, #0x10
	mov r1, #0
	add r0, r5, #0
	mov r2, #0xfc
	asr r3, r3, #0x10
	str r1, [sp]
	bl ovy299_21a1568
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy299_21a22d4

	thumb_func_start ovy299_21a231c
ovy299_21a231c: ; 0x021A231C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, r1, #0
	bl sub_0219CC34
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_021A14E4
	cmp r0, #0xc
	bne _021A233E
	cmp r5, #0
	bne _021A2362
_021A233E:
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC3C
	cmp r0, #0
	bne _021A2358
	cmp r6, #0
	bne _021A2358
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x12
	b _021A235E
_021A2358:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #4
_021A235E:
	bl ovy299_21a14c4
_021A2362:
	add r0, r4, #0
	mov r1, #9
	bl sub_021A14E4
	cmp r0, #0xd
	bne _021A2372
	cmp r5, #0
	bne _021A23A0
_021A2372:
	mov r5, #0xc5
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0219CC44
	cmp r0, #0
	bne _021A2396
	add r5, #8
	ldr r0, [r4, r5]
	sub r0, r0, #1
	cmp r6, r0
	bne _021A2396
	add r0, r4, #0
	mov r1, #9
	mov r2, #0x13
	bl ovy299_21a14c4
	pop {r4, r5, r6, pc}
_021A2396:
	add r0, r4, #0
	mov r1, #9
	mov r2, #5
	bl ovy299_21a14c4
_021A23A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy299_21a231c

	thumb_func_start ovy299_21a23a4
ovy299_21a23a4: ; 0x021A23A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	bne _021A23B8
	ldr r0, _021A25C0 ; =0x021A296C
	b _021A23BA
_021A23B8:
	ldr r0, _021A25C4 ; =0x021A29B0
_021A23BA:
	bl sub_0203DA0C
	mov r6, #0
	add r4, r0, #0
	mvn r6, r6
	cmp r4, r6
	bne _021A23CA
	b _021A2508
_021A23CA:
	cmp r4, #8
	bne _021A23DE
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #0
	bne _021A23DE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A23DE:
	cmp r4, #9
	bne _021A2402
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A23F4
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A23F4:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2402
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2402:
	cmp r4, #0xa
	bne _021A242C
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2414
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2414:
	bl sub_0203D554
	cmp r0, #0
	bne _021A242C
	mov r0, #1
	bl sub_0203D564
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CCA0
_021A242C:
	cmp r4, #0xd
	bne _021A2472
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	bne _021A2448
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	beq _021A244E
_021A2448:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A244E:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A245C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A245C:
	ldr r0, [r1, #4]
	bl sub_0200D1F8
	cmp r0, #1
	beq _021A246C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A246C:
	mov r0, #1
	bl sub_0203D564
_021A2472:
	cmp r4, #0xe
	bne _021A24D4
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	bne _021A248E
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	beq _021A2494
_021A248E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2494:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A24A2
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24A2:
	ldr r0, [r1, #4]
	bl sub_0200D1AC
	cmp r0, #1
	ldr r0, [r5]
	bne _021A24BE
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A24CE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24BE:
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A24CE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24CE:
	mov r0, #1
	bl sub_0203D564
_021A24D4:
	cmp r4, #0xf
	bne _021A24FE
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A24EA
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24EA:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A24F8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24F8:
	mov r0, #1
	bl sub_0203D564
_021A24FE:
	mov r0, #1
	bl sub_0203D564
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A2508:
	bl GCTX_HIDGetPressedKeys
	mov r6, #2
	tst r0, r6
	beq _021A251C
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021A251C:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r6, #9
	tst r0, r1
	beq _021A2530
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021A2530:
	bl GCTX_HIDGetPressedKeys
	mov r6, #8
	tst r0, r6
	beq _021A2550
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #1
	bne _021A2550
	mov r0, #0
	bl sub_0203D564
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A2550:
	bl GCTX_HIDGetPressedKeys
	mov r6, #4
	tst r0, r6
	beq _021A2580
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A256A
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A256A:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2576
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A2576:
	mov r0, #0
	bl sub_0203D564
	mov r0, #9
	pop {r4, r5, r6, pc}
_021A2580:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r6, #9
	tst r0, r1
	beq _021A25BA
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2596
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A2596:
	bl sub_0203D554
	cmp r0, #1
	bne _021A25B0
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC90
	b _021A25B6
_021A25B0:
	mov r0, #0
	bl sub_0203D564
_021A25B6:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021A25BA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A25C0: .word 0x021A296C
_021A25C4: .word 0x021A29B0
	thumb_func_end ovy299_21a23a4
_021A25C8:
	.byte 0xC1, 0xFB, 0x19, 0x02, 0xF1, 0xFB, 0x19, 0x02
	.byte 0x05, 0xFC, 0x19, 0x02, 0x15, 0x05, 0x1A, 0x02, 0x65, 0x05, 0x1A, 0x02, 0xB1, 0x05, 0x1A, 0x02
	.byte 0x02, 0x06, 0x08, 0x00, 0x18, 0x03, 0x0B, 0x00, 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x03, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x07, 0x00, 0x00, 0x48, 0x27, 0x1A, 0x02
	.byte 0xD4, 0x25, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x30, 0x47, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x60, 0x77, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0x88, 0x9F, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xA0, 0xB7, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x19, 0x06, 0x1A, 0x02, 0xCD, 0x06, 0x1A, 0x02, 0x65, 0x07, 0x1A, 0x02, 0x7D, 0x07, 0x1A, 0x02
	.byte 0x1D, 0x08, 0x1A, 0x02, 0x6D, 0x0C, 0x1A, 0x02, 0xC1, 0x0C, 0x1A, 0x02, 0xE9, 0x0C, 0x1A, 0x02
	.byte 0x89, 0x0D, 0x1A, 0x02, 0x05, 0x01, 0x00, 0x11, 0x03, 0x04, 0x05, 0x02, 0x03, 0x0D, 0x03, 0x04
	.byte 0x05, 0x10, 0x03, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x0C, 0x07, 0x03, 0x0F, 0x00, 0x00, 0x0F, 0x07
	.byte 0x03, 0x0F, 0x00, 0x00, 0x12, 0x07, 0x03, 0x0F, 0x70, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x06, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0xFC, 0x00, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x54, 0x00
	.byte 0x03, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x30, 0x00, 0x06, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x6E, 0x00
	.byte 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x85, 0x00, 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x9C, 0x00
	.byte 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xAC, 0x00, 0x06, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0xA8, 0x00
	.byte 0x05, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0xA8, 0x00, 0x04, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0xB4, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x5F
	.byte 0x00, 0x17, 0x60, 0x7F, 0x18, 0x2F, 0x60, 0x7F, 0x30, 0x47, 0x60, 0x7F, 0x48, 0x5F, 0x60, 0x7F
	.byte 0x60, 0x77, 0x60, 0x7F, 0x78, 0x8F, 0x60, 0x7F, 0x90, 0xA7, 0x60, 0x7F, 0xA8, 0xBF, 0x48, 0x87
	.byte 0xA8, 0xBF, 0x00, 0x47, 0xA8, 0xBF, 0xB8, 0xCF, 0xA8, 0xBF, 0xD0, 0xE7, 0xA8, 0xBF, 0xE8, 0xFF
	.byte 0x62, 0x7A, 0x00, 0x40, 0x79, 0x91, 0x00, 0x40, 0x90, 0xA8, 0x00, 0x40, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x5F, 0x00, 0x5F, 0x00, 0x17, 0x60, 0x7F, 0x18, 0x2F, 0x60, 0x7F, 0x30, 0x47, 0x60, 0x7F
	.byte 0x48, 0x5F, 0x60, 0x7F, 0x60, 0x77, 0x60, 0x7F, 0x78, 0x8F, 0x60, 0x7F, 0x90, 0xA7, 0x60, 0x7F
	.byte 0xA8, 0xBF, 0x28, 0x67, 0xA8, 0xBF, 0x00, 0x47, 0xA8, 0xBF, 0xB8, 0xCF, 0xA8, 0xBF, 0xD0, 0xE7
	.byte 0xA8, 0xBF, 0xE8, 0xFF, 0x62, 0x7A, 0x00, 0x40, 0x79, 0x91, 0x00, 0x40, 0x90, 0xA8, 0x00, 0x40
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A25C8
