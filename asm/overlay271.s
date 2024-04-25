    .include "macros/function.inc"
	.include "overlay271.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy271_21efe40
ovy271_21efe40: ; 0x021EFE40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #9
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x5a
	lsl r2, r2, #0x10
	mov r6, #1
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x5a
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	mov r7, #0
	blx MI_CpuFill8
	str r5, [r4, #0x18]
	ldr r0, [r5, #0xc]
	str r7, [r0, #0xc]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #2
	beq _021EFE7E
	add r6, r7, #0
_021EFE7E:
	add r0, r6, #0
	mov r1, #1
	mov r2, #0x5a
	mov r5, #1
	bl ovy271_21f31b8
	str r0, [r4]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl PlayerSave_GetPlayerSaveOffset
	bl sub_0200CB30
	ldr r1, [r4, #0x18]
	ldr r1, [r1, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	beq _021EFEA6
	mov r5, #0
_021EFEA6:
	add r1, r5, #0
	mov r2, #0x5a
	mov r5, #0x5a
	bl ovy271_21f266c
	str r0, [r4, #4]
	mov r1, #0
	mov r2, #0x5a
	bl ovy271_21f274c
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0x5a
	bl ovy271_21f274c
	ldr r0, [r4, #0x18]
	mov r2, #0xd
	ldr r1, [r0, #8]
	ldr r0, _021EFFC0 ; =0x00001728
	add r3, r4, #0
	add r0, r1, r0
	str r0, [sp]
	ldr r1, _021EFFC4 ; =0x021F70AC
	str r5, [sp, #4]
	mov r0, #0
	bl ovy271_21f0770
	str r0, [r4, #8]
	mov r0, #0x5a
	bl ovy271_21f54d8
	str r0, [r4, #0xc]
	bl ovy271_21f55cc
	ldr r0, [r4, #4]
	bl sub_021F3010
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021F560C
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021EFF08
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ovy271_21f5610
_021EFF08:
	ldr r0, [r4]
	bl sub_021F32D8
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	mov r3, #0x5a
	mov r5, #0x5a
	bl ovy271_21f5b68
	str r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	ldr r0, _021EFFC8 ; =0x00001748
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r1, r0
	ldr r2, [r2, #4]
	mov r1, #1
	mov r3, #0x5a
	bl ovy271_21f069c
	ldr r0, [r4, #0x18]
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	beq _021EFF48
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	add r2, r5, #0
	bl ovy271_21f6224
	str r0, [r4, #0x14]
	b _021EFF4E
_021EFF48:
	ldr r0, _021EFFCC ; =0x000000C9
	bl sub_0203CE0C
_021EFF4E:
	bl sub_02042788
	cmp r0, #0
	beq _021EFF5E
	mov r0, #0
	mov r1, #0x5a
	bl sub_02042BA8
_021EFF5E:
	ldr r2, [r4, #0x18]
	ldr r1, [r2, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	bne _021EFF7E
	ldr r0, [r2, #4]
	cmp r0, #1
	beq _021EFF86
	ldr r0, [r1, #4]
	bl sub_0201749C
	mov r1, #0x40
	mov r2, #0
	bl sub_0202ECDC
	b _021EFF86
_021EFF7E:
	ldr r0, _021EFFD0 ; =0x00000484
	ldr r1, _021EFFD4 ; =0x0000FFFF
	bl sub_02005DF4
_021EFF86:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021EFFA4
	ldr r0, [r4, #0x10]
	bl ovy271_21f5cb4
	ldr r0, [r4, #0x10]
	bl ovy271_21f5c64
	ldr r0, [r4, #0xc]
	mov r1, #3
	mov r2, #0
	bl ovy271_21f5658
_021EFFA4:
	ldr r1, [r4, #0x18]
	ldr r0, [r1, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	bne _021EFFBA
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _021EFFBA
	mov r0, #0x13
	bl sub_02038BC8
_021EFFBA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EFFC0: .word 0x00001728
_021EFFC4: .word 0x021F70AC
_021EFFC8: .word 0x00001748
_021EFFCC: .word 0x000000C9
_021EFFD0: .word 0x00000484
_021EFFD4: .word 0x0000FFFF
	thumb_func_end ovy271_21efe40

	thumb_func_start ovy271_21effd8
ovy271_21effd8: ; 0x021EFFD8
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	bne _021EFFF6
	ldr r0, [r1, #4]
	bl sub_0201749C
	mov r1, #0x7f
	mov r2, #0
	bl sub_0202ECDC
_021EFFF6:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F0018
	bl sub_021F66F8
	cmp r0, #0
	beq _021F000C
	ldr r0, [r4, #0x18]
	mov r1, #2
	ldr r0, [r0, #0xc]
	str r1, [r0, #0xc]
_021F000C:
	ldr r0, [r4, #0x14]
	bl ovy271_21f6300
	mov r0, #0
	str r0, [r4, #0x14]
	b _021F001E
_021F0018:
	ldr r0, _021F0084 ; =0x000000C9
	bl sub_0203CDC8
_021F001E:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #4]
	bl ovy271_21f5bdc
	ldr r0, [r4, #0xc]
	bl ovy271_21f554c
	ldr r0, [r4, #8]
	bl ovy271_21f0810
	ldr r0, [r4, #0x18]
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	bne _021F0056
	ldr r0, [r1, #4]
	bl PlayerSave_GetPlayerSaveOffset
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_021F3024
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_0200CB3C
_021F0056:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ovy271_21f2b8c
	ldr r0, [r4, #4]
	mov r1, #1
	bl ovy271_21f2b8c
	ldr r0, [r4, #4]
	bl ovy271_21f2714
	ldr r0, [r4]
	bl ovy271_21f3270
	add r0, r5, #0
	bl GFL_ProcReleaseSubsystem
	mov r0, #0x5a
	bl GFL_HeapDelete
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021F0084: .word 0x000000C9
	thumb_func_end ovy271_21effd8

	thumb_func_start ovy271_21f0088
ovy271_21f0088: ; 0x021F0088
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #6
	bhi _021F0120
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F00A0: ; jump table
	.short _021F00AE - _021F00A0 - 2 ; case 0
	.short _021F00B4 - _021F00A0 - 2 ; case 1
	.short _021F00C4 - _021F00A0 - 2 ; case 2
	.short _021F00D0 - _021F00A0 - 2 ; case 3
	.short _021F0100 - _021F00A0 - 2 ; case 4
	.short _021F0110 - _021F00A0 - 2 ; case 5
	.short _021F011C - _021F00A0 - 2 ; case 6
_021F00AE:
	mov r0, #1
_021F00B0:
	str r0, [r4]
	b _021F0120
_021F00B4:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #2
	b _021F00B0
_021F00C4:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F0120
	mov r0, #3
	b _021F00B0
_021F00D0:
	ldr r0, [r5, #0xc]
	bl ovy271_21f5580
	ldr r0, [r5, #0x10]
	bl ovy271_21f5c18
	ldr r0, [r5, #8]
	bl ovy271_21f0824
	ldr r0, [r5]
	bl ovy271_21f32c4
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021F00F2
	bl ovy271_21f6348
_021F00F2:
	ldr r0, [r5, #8]
	bl sub_021F0944
	cmp r0, #0
	beq _021F0120
	mov r0, #4
	b _021F00B0
_021F0100:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #5
	b _021F00B0
_021F0110:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F0120
	mov r0, #6
	b _021F00B0
_021F011C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F0120:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f0088

	thumb_func_start ovy271_21f0124
ovy271_21f0124: ; 0x021F0124
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r3, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #4]
	ldr r0, [r4, #0x10]
	cmp r6, #1
	str r0, [r5, #0x14]
	bne _021F014E
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021F014E:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021F015C
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021F015C:
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f0124
_021F0164:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f0168
ovy271_21f0168: ; 0x021F0168
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r6, #2
	add r5, r1, #0
	str r6, [r4, #0xc]
	add r1, r2, #0
	ldr r2, [r5, #0x18]
	add r0, r3, #0
	ldr r2, [r2, #0xc]
	add r2, #0xc
	str r2, [r4, #0x28]
	ldr r2, [r5, #0x18]
	ldr r3, [r2, #8]
	ldr r2, _021F0258 ; =0x000017A0
	add r2, r3, r2
	str r2, [r4, #0x24]
	ldr r3, [r5, #0x18]
	ldr r2, [r3, #4]
	cmp r2, #1
	bne _021F01AA
	ldr r0, [r3, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F01A2
	cmp r0, #1
	beq _021F01A6
	cmp r0, #2
	beq _021F01A8
	b _021F0238
_021F01A2:
	mov r0, #1
_021F01A4:
	b _021F0236
_021F01A6:
	b _021F0206
_021F01A8:
	b _021F0234
_021F01AA:
	cmp r0, #0xc
	bhi _021F021A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F01BA: ; jump table
	.short _021F021A - _021F01BA - 2 ; case 0
	.short _021F021A - _021F01BA - 2 ; case 1
	.short _021F01D4 - _021F01BA - 2 ; case 2
	.short _021F021A - _021F01BA - 2 ; case 3
	.short _021F021A - _021F01BA - 2 ; case 4
	.short _021F0206 - _021F01BA - 2 ; case 5
	.short _021F020A - _021F01BA - 2 ; case 6
	.short _021F020A - _021F01BA - 2 ; case 7
	.short _021F021A - _021F01BA - 2 ; case 8
	.short _021F021A - _021F01BA - 2 ; case 9
	.short _021F021A - _021F01BA - 2 ; case 10
	.short _021F021A - _021F01BA - 2 ; case 11
	.short _021F020E - _021F01BA - 2 ; case 12
_021F01D4:
	ldr r0, [r1, #8]
	cmp r0, #5
	bhi _021F0238
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F01E6: ; jump table
	.short _021F01F2 - _021F01E6 - 2 ; case 0
	.short _021F01F4 - _021F01E6 - 2 ; case 1
	.short _021F01F4 - _021F01E6 - 2 ; case 2
	.short _021F01F4 - _021F01E6 - 2 ; case 3
	.short _021F01F8 - _021F01E6 - 2 ; case 4
	.short _021F0204 - _021F01E6 - 2 ; case 5
_021F01F2:
	b _021F01A2
_021F01F4:
	str r6, [r4]
	b _021F0238
_021F01F8:
	ldr r0, _021F025C ; =0x021F7B60
	ldr r2, _021F0260 ; =0x021F7B64
	mov r1, #0
	bl sub_0203CB80
	b _021F0206
_021F0204:
	b _021F01F8
_021F0206:
	mov r0, #7
	b _021F01A4
_021F020A:
	mov r0, #6
	b _021F01A4
_021F020E:
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _021F0218
	mov r0, #4
	str r0, [r4, #0xc]
_021F0218:
	b _021F0234
_021F021A:
	ldr r0, [r3, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F022C
	cmp r0, #1
	beq _021F0230
	cmp r0, #2
	beq _021F0234
	b _021F0238
_021F022C:
	mov r0, #0
	b _021F01A4
_021F0230:
	mov r0, #5
	b _021F01A4
_021F0234:
	mov r0, #0xa
_021F0236:
	str r0, [r4]
_021F0238:
	ldr r0, [r5, #4]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	bl sub_021F32D8
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #8]
	ldr r0, _021F0264 ; =0x00001748
	add r0, r1, r0
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F0258: .word 0x000017A0
_021F025C: .word 0x021F7B60
_021F0260: .word 0x021F7B64
_021F0264: .word 0x00001748
	thumb_func_end ovy271_21f0168
_021F0268:
	.byte 0x42, 0x6A, 0x90, 0x69, 0x41, 0x1E, 0x08, 0x04
	.byte 0x80, 0x0B, 0x10, 0x5A, 0x08, 0x28, 0x00, 0xD1, 0x91, 0x61, 0x70, 0x47

	thumb_func_start ovy271_21f027c
ovy271_21f027c: ; 0x021F027C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r6, r2, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	add r7, r3, #0
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	ldr r0, [r5]
	bl sub_021F32D8
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #8]
	ldr r0, _021F03A8 ; =0x00001720
	add r1, r1, r0
	str r1, [r4, #0x2c]
	mov r1, #0
	str r1, [r4, #0x34]
	ldr r1, [r5, #0x18]
	ldr r2, [r1, #8]
	add r1, r0, #0
	add r1, #0x28
	add r1, r2, r1
	str r1, [r4, #0x38]
	ldr r1, [r5, #0x18]
	ldr r2, [r1, #8]
	add r1, r0, #0
	add r1, #0x9c
	add r1, r2, r1
	str r1, [r4, #0x3c]
	cmp r7, #0xa
	bhi _021F02F2
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F02DC: ; jump table
	.short _021F03A6 - _021F02DC - 2 ; case 0
	.short _021F02FC - _021F02DC - 2 ; case 1
	.short _021F03A6 - _021F02DC - 2 ; case 2
	.short _021F03A6 - _021F02DC - 2 ; case 3
	.short _021F03A6 - _021F02DC - 2 ; case 4
	.short _021F0346 - _021F02DC - 2 ; case 5
	.short _021F03A6 - _021F02DC - 2 ; case 6
	.short _021F035A - _021F02DC - 2 ; case 7
	.short _021F03A6 - _021F02DC - 2 ; case 8
	.short _021F03A6 - _021F02DC - 2 ; case 9
	.short _021F0374 - _021F02DC - 2 ; case 10
_021F02F2:
	mov r0, #1
	mvn r0, r0
	cmp r7, r0
	beq _021F0392
	pop {r3, r4, r5, r6, r7, pc}
_021F02FC:
	ldr r2, [r6, #8]
	mov r1, #0
	str r2, [r4, #8]
	str r1, [r4, #0x30]
	ldr r1, [r5, #0x18]
	add r0, #0x24
	ldr r1, [r1, #8]
	str r2, [r1, r0]
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	ldr r5, [r0, #4]
	add r0, r5, #0
	bl sub_02017934
	ldr r3, [r4, #8]
	mov r1, #0x59
	add r2, sp, #0
	bl sub_0200BC9C
	ldr r0, [sp]
	cmp r0, #1
	bne _021F033A
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F03A6
	bl sub_0200C0A8
	add r1, r5, #0
	bl sub_0200DE68
	pop {r3, r4, r5, r6, r7, pc}
_021F033A:
	ldr r0, _021F03AC ; =0x021F7B60
	ldr r2, _021F03B0 ; =0x021F7B64
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_021F0346:
	mov r2, #4
	str r2, [r4, #8]
	ldr r1, [r5, #0x18]
	add r0, #0x24
	ldr r1, [r1, #8]
	str r1, [r4, #0x30]
	ldr r1, [r5, #0x18]
	ldr r1, [r1, #8]
	str r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F035A:
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	mov r1, #5
	str r2, [r4, #0x1c]
	mov r2, #0
	str r1, [r4, #8]
	str r3, [r4, #0x20]
	str r2, [r4, #0x30]
	ldr r2, [r5, #0x18]
	add r0, #0x24
	ldr r2, [r2, #8]
	str r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F0374:
	ldr r1, [r5, #0x18]
	add r0, #0x24
	ldr r1, [r1, #8]
	ldr r0, [r1, r0]
	ldr r1, [r6, #0x20]
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #8]
	str r0, [r4, #0x30]
	ldr r0, [r6, #0x1c]
	str r1, [r4, #0x20]
	str r0, [r4, #0x1c]
	mov r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_021F0392:
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #8]
	ldr r0, _021F03B4 ; =0x00001744
	ldr r0, [r1, r0]
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #8]
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0x34]
_021F03A6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F03A8: .word 0x00001720
_021F03AC: .word 0x021F7B60
_021F03B0: .word 0x021F7B64
_021F03B4: .word 0x00001744
	thumb_func_end ovy271_21f027c
_021F03B8:
	.byte 0x00, 0x68, 0x01, 0x28, 0x02, 0xD1, 0x88, 0x69
	.byte 0x01, 0x22, 0x02, 0x60, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f03c8
ovy271_21f03c8: ; 0x021F03C8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	add r6, r0, #0
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #4]
	add r0, r6, #0
	mov r1, #0x39
	bl sub_02007448
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f03c8
_021F0404:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f0408
ovy271_21f0408: ; 0x021F0408
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	add r6, r0, #0
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_0200F2C4
	bl sub_0200F2D4
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy271_21f0408
_021F0444:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f0448
ovy271_21f0448: ; 0x021F0448
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0x5f
	ldr r0, [r0, #8]
	lsl r1, r1, #6
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #8]
	add r0, r0, r1
	str r0, [r5, #0x28]
	cmp r3, #1
	bne _021F047C
	ldr r3, [r2, #8]
	str r3, [r5]
	ldr r0, [r4, #0x18]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r3, [r2, r0]
_021F0470:
	ldr r0, [r5, #0x28]
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	b _021F04A8
_021F047C:
	cmp r3, #6
	bne _021F0496
	ldr r3, [r2, #0x14]
	mov r0, #3
	ldr r2, [r2, #0x18]
	str r0, [r5]
	str r3, [r5, #0x20]
	str r2, [r5, #0x24]
	ldr r2, [r4, #0x18]
	add r1, r1, #4
	ldr r2, [r2, #8]
	str r0, [r2, r1]
	b _021F0470
_021F0496:
	cmp r3, #2
	bne _021F04A8
	ldr r0, [r4, #0x18]
	ldr r2, [r0, #8]
	add r0, r1, #4
	ldr r0, [r2, r0]
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #4]
_021F04A8:
	ldr r0, [r4, #4]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	str r0, [r5, #0x14]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f0448
_021F04C4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f04c8
ovy271_21f04c8: ; 0x021F04C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #4]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f04c8
_021F04EC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f04f0
ovy271_21f04f0: ; 0x021F04F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	str r0, [r4, #8]
	ldr r0, [r1, #0xc]
	str r0, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #0xc]
	ldr r0, [r1]
	bl sub_021F32D8
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f04f0
_021F050C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f0510
ovy271_21f0510: ; 0x021F0510
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #4]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f0510
_021F0538:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f053c
ovy271_21f053c: ; 0x021F053C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, #1
	bne _021F0572
	ldr r0, [r2, #8]
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	ldr r0, [r4]
	bl sub_021F32D8
	str r0, [r5, #8]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, [r0, #8]
	ldr r0, _021F0580 ; =0x00001748
	add r0, r1, r0
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_021F0572:
	ldr r0, _021F0584 ; =0x021F7B60
	ldr r2, _021F0588 ; =0x021F7B64
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
	nop
_021F0580: .word 0x00001748
_021F0584: .word 0x021F7B60
_021F0588: .word 0x021F7B64
	thumb_func_end ovy271_21f053c

	thumb_func_start ovy271_21f058c
ovy271_21f058c: ; 0x021F058C
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021F05A8
	ldr r2, [r1, #0x18]
	ldr r0, _021F05AC ; =0x00001748
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r1, r0
	ldr r2, [r2, #4]
	mov r1, #0
	mov r3, #0x5a
	bl ovy271_21f069c
_021F05A8:
	pop {r3, pc}
	nop
_021F05AC: .word 0x00001748
	thumb_func_end ovy271_21f058c

	thumb_func_start ovy271_21f05b0
ovy271_21f05b0: ; 0x021F05B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #2
	beq _021F05C6
	ldr r0, _021F0600 ; =0x021F7B60
	ldr r2, _021F0604 ; =0x021F7B68
	mov r1, #0
	bl sub_0203CB80
_021F05C6:
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	str r0, [r5]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	ldr r0, [r4]
	bl sub_021F32D8
	ldr r1, [r6, #0x20]
	str r0, [r5, #4]
	ldr r0, [r6, #0x1c]
	str r1, [r5, #0x20]
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, [r0, #8]
	ldr r0, _021F0608 ; =0x00001748
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r0, [r6, #4]
	str r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	nop
_021F0600: .word 0x021F7B60
_021F0604: .word 0x021F7B68
_021F0608: .word 0x00001748
	thumb_func_end ovy271_21f05b0

	thumb_func_start ovy271_21f060c
ovy271_21f060c: ; 0x021F060C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	cmp r0, #0
	beq _021F0640
	ldr r2, [r4, #0x18]
	ldr r0, _021F0644 ; =0x00001748
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r1, r0
	ldr r2, [r2, #4]
	mov r1, #0
	mov r3, #0x5a
	bl ovy271_21f069c
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	ldr r1, _021F0648 ; =0x0000805A
	ldr r3, [r5, #0x2c]
	add r2, sp, #0
	bl sub_0200BC9C
_021F0640:
	pop {r3, r4, r5, pc}
	nop
_021F0644: .word 0x00001748
_021F0648: .word 0x0000805A
	thumb_func_end ovy271_21f060c
_021F064C:
	.byte 0x4A, 0x68, 0xC2, 0x60
	.byte 0xCA, 0x68, 0x02, 0x60, 0x8A, 0x68, 0x02, 0x61, 0x0A, 0x68, 0x82, 0x60, 0x4A, 0x69, 0x42, 0x61
	.byte 0x0A, 0x69, 0x42, 0x60, 0x89, 0x69, 0xC9, 0x68, 0x49, 0x68, 0x81, 0x61, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x4A, 0x68, 0xC2, 0x60, 0xCA, 0x68, 0x02, 0x60, 0x8A, 0x68, 0x02, 0x61
	.byte 0x0A, 0x68, 0x82, 0x60, 0x4A, 0x69, 0x42, 0x61, 0x0A, 0x69, 0x42, 0x60, 0x89, 0x69, 0xC9, 0x68
	.byte 0x49, 0x68, 0x81, 0x61, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f069c
ovy271_21f069c: ; 0x021F069C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp]
	add r5, r0, #0
	mov r2, #1
	str r3, [sp, #4]
	cmp r1, #0
	beq _021F06B4
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021F06B4
	mov r2, #0
_021F06B4:
	cmp r2, #0
	beq _021F0768
	ldr r0, [sp]
	bl sub_02017934
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021F06E0
	mov r4, #0
	add r7, r4, #0
_021F06CA:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021F06DA
	bl GFL_StrBufFree
	str r7, [r6, #0x10]
_021F06DA:
	add r4, r4, #1
	cmp r4, #4
	blt _021F06CA
_021F06E0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x58
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #4]
	ldr r1, _021F076C ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
_021F06FE:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, sp, #0x10
	add r3, r4, #0
	bl sub_0200BC9C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021F074E
	bl sub_0200C0A8
	add r7, r0, #0
	cmp r4, #0
	bne _021F0720
	ldr r1, [sp]
	bl sub_0200DE68
_021F0720:
	lsl r1, r4, #2
	mov r0, #1
	str r0, [r5, r1]
	add r6, r5, r1
	add r0, r7, #0
	mov r1, #0x59
	bl sub_0200DF68
	str r0, [r6, #0x10]
	add r0, r7, #0
	bl sub_0200DF84
	str r0, [r6, #0x20]
	bl sub_0200C0C0
	mov r1, #4
	mov r2, #0
	bl sub_0200C124
	lsl r2, r4, #3
	add r2, r5, r2
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
_021F074E:
	add r4, r4, #1
	cmp r4, #4
	blt _021F06FE
	ldr r0, [sp]
	bl sub_02017934
	bl sub_0200AD14
	bl sub_0200AD4C
	str r0, [r5, #0x50]
	mov r0, #1
	str r0, [r5, #0x54]
_021F0768:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F076C: .word 0x00007FFF
	thumb_func_end ovy271_21f069c

	thumb_func_start ovy271_21f0770
ovy271_21f0770: ; 0x021F0770
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp]
	add r0, sp, #0x20
	str r3, [sp, #8]
	add r6, r1, #0
	add r7, r2, #0
	ldrh r0, [r0, #4]
	ldr r3, _021F080C ; =0x021F7B84
	mov r1, #0x70
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x70
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	ldr r1, [sp, #8]
	strh r0, [r4, #0x10]
	strh r7, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, [sp, #0x20]
	str r6, [r4, #4]
	str r1, [r4, #0x68]
	bl CreateGameProcManager
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x2c
	bl ovy271_21f0a58
	add r0, r4, #0
	add r0, #0x3c
	bl ovy271_21f0a58
	add r0, r4, #0
	add r0, #0x1c
	bl ovy271_21f0a58
	ldr r2, [r4, #0x68]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	beq _021F07FC
	bls _021F07EC
_021F07D4:
	lsl r1, r5, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy271_21f09a0
	ldr r2, [r4, #0x68]
	add r5, r5, #1
	ldr r0, [r2, #0x18]
	cmp r5, r0
	blo _021F07D4
_021F07EC:
	add r0, r2, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	mov r0, #1
	str r0, [r4, #0x6c]
	b _021F0804
_021F07FC:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy271_21f09a0
_021F0804:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F080C: .word 0x021F7B84
	thumb_func_end ovy271_21f0770

	thumb_func_start ovy271_21f0810
ovy271_21f0810: ; 0x021F0810
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl FreeGameProcManager
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f0810

	thumb_func_start ovy271_21f0824
ovy271_21f0824: ; 0x021F0824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r5, #0
	add r7, r5, #0
	add r2, r5, #0
	add r4, #0x2c
	add r7, #0x1c
	add r2, #0x3c
	cmp r0, #4
	bhi _021F0930
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0846: ; jump table
	.short _021F0850 - _021F0846 - 2 ; case 0
	.short _021F0868 - _021F0846 - 2 ; case 1
	.short _021F08E2 - _021F0846 - 2 ; case 2
	.short _021F08F2 - _021F0846 - 2 ; case 3
	.short _021F092C - _021F0846 - 2 ; case 4
_021F0850:
	add r3, r4, #0
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	mov r0, #1
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021F0868:
	ldr r0, [r4]
	cmp r0, #0
	bne _021F0878
	ldr r0, _021F0934 ; =0x021F7B94
	ldr r2, _021F0938 ; =0x021F7B98
	mov r1, #0
	bl sub_0203CB80
_021F0878:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021F088A
	ldr r0, _021F0934 ; =0x021F7B94
	ldr r2, _021F093C ; =0x021F7BA8
	mov r1, #0
	bl sub_0203CB80
_021F088A:
	mov r0, #0xd2
	str r0, [sp]
	ldr r1, [r4, #8]
	ldrh r0, [r5, #0x10]
	ldr r1, [r1, #4]
	ldr r3, _021F0940 ; =0x021F7B84
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	ldr r2, [r4, #8]
	str r0, [r4, #4]
	ldr r2, [r2, #4]
	mov r1, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x6c]
	sub r3, r6, #2
	cmp r0, #0
	bne _021F08B4
	ldr r3, [r7, #0xc]
_021F08B4:
	ldr r6, [r4, #8]
	ldr r0, [r4, #4]
	ldr r1, [r5, #0xc]
	ldr r2, [r7, #4]
	ldr r6, [r6, #0xc]
	blx r6
	mov r0, #0
	str r0, [r5, #0x6c]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _021F08CE
	bl GFL_HeapFree
_021F08CE:
	ldr r2, [r4, #8]
	ldr r0, [r5]
	ldr r1, [r2, #8]
	ldr r2, [r2]
	ldr r3, [r4, #4]
	bl Overlay_QueueGameProc
	mov r0, #2
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021F08E2:
	ldr r0, [r5]
	bl sub_0203A978
	cmp r0, #0
	bne _021F0930
	mov r0, #3
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021F08F2:
	ldr r0, [r4]
	cmp r0, #0
	bne _021F0902
	ldr r0, _021F0934 ; =0x021F7B94
	ldr r2, _021F0938 ; =0x021F7B98
	mov r1, #0
	bl sub_0203CB80
_021F0902:
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _021F0910
	ldr r0, [r4, #4]
	ldr r1, [r5, #0xc]
	blx r2
_021F0910:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021F091C
	mov r0, #0
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021F091C:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0926
	bl GFL_HeapFree
_021F0926:
	mov r0, #4
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021F092C:
	mov r0, #1
	str r0, [r5, #0x14]
_021F0930:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0934: .word 0x021F7B94
_021F0938: .word 0x021F7B98
_021F093C: .word 0x021F7BA8
_021F0940: .word 0x021F7B84
	thumb_func_end ovy271_21f0824

	thumb_func_start sub_021F0944
sub_021F0944: ; 0x021F0944
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021F0944
_021F0948:
	.byte 0x00, 0x8A, 0x70, 0x47

	thumb_func_start ovy271_21f094c
ovy271_21f094c: ; 0x021F094C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021F0992
	sub r0, r0, #1
	str r0, [r5, #0x64]
	beq _021F0986
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	ldr r3, [r5, #4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r2, #0x14
	add r4, sp, #0
	mul r2, r1
	add r0, r4, #0
	add r2, r3, r2
	bl ovy271_21f0a38
	add r5, #0x3c
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021F0986:
	add r5, #0x3c
	add r0, r5, #0
	bl ovy271_21f0a58
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021F0992:
	add r5, #0x3c
	add r0, r5, #0
	bl ovy271_21f0a58
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f094c

	thumb_func_start ovy271_21f09a0
ovy271_21f09a0: ; 0x021F09A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	ldr r6, [r5, #4]
	cmp r4, r0
	blo _021F09C0
	ldr r0, _021F09F8 ; =0x021F7B94
	ldr r2, _021F09FC ; =0x021F7BC4
	mov r1, #0
	bl sub_0203CB80
_021F09C0:
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, r7
	bl ovy271_21f0a38
	ldr r0, [r5, #0x64]
	cmp r0, #6
	blo _021F09DA
	ldr r0, _021F09F8 ; =0x021F7B94
	ldr r2, _021F0A00 ; =0x021F7BDC
	mov r1, #0
	bl sub_0203CB80
_021F09DA:
	ldr r0, [r5, #0x64]
	add r2, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	str r4, [r0, #0x4c]
	ldr r0, [r5, #0x64]
	add r0, r0, #1
	str r0, [r5, #0x64]
	add r5, #0x3c
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F09F8: .word 0x021F7B94
_021F09FC: .word 0x021F7BC4
_021F0A00: .word 0x021F7BDC
	thumb_func_end ovy271_21f09a0

	thumb_func_start ovy271_21f0a04
ovy271_21f0a04: ; 0x021F0A04
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x68]
	add r0, #0x4c
	mov r2, #0x18
	blx MI_CpuCopy8
	ldr r1, [r4, #0x64]
	ldr r0, [r4, #0x68]
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl ovy271_21f0a20
	pop {r4, pc}
	thumb_func_end ovy271_21f0a04

	thumb_func_start ovy271_21f0a20
ovy271_21f0a20: ; 0x021F0A20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _021F0A36
_021F0A2A:
	add r0, r4, #0
	bl ovy271_21f094c
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021F0A2A
_021F0A36:
	pop {r4, pc}
	thumb_func_end ovy271_21f0a20

	thumb_func_start ovy271_21f0a38
ovy271_21f0a38: ; 0x021F0A38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	str r7, [r5, #4]
	str r4, [r5, #0xc]
	str r6, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f0a38

	thumb_func_start ovy271_21f0a58
ovy271_21f0a58: ; 0x021F0A58
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r4, #0x10
	blx MI_CpuFill8
	sub r4, #0x11
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f0a58

	thumb_func_start ovy271_21f0a6c
ovy271_21f0a6c: ; 0x021F0A6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r3, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r6, [sp, #0xa0]
	cmp r0, #0xc
	blt _021F0A88
	ldr r0, _021F0CDC ; =0x021F7C04
	ldr r2, _021F0CE0 ; =0x021F7C08
	mov r1, #0
	bl sub_0203CB80
_021F0A88:
	ldr r0, _021F0CE4 ; =0x0000013E
	ldr r3, _021F0CE8 ; =0x021F7C20
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x60
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x60
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	str r0, [r4, #4]
	ldr r0, [sp, #0x14]
	str r0, [r4, #8]
	ldr r0, [sp, #0x98]
	strh r6, [r4]
	str r0, [r4, #0x5c]
	add r0, r6, #0
	bl sub_0202AE5C
	str r0, [r4, #0x48]
	add r0, r6, #0
	bl sub_02021998
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x9c]
	mov r1, #0
	str r0, [r4, #0x58]
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, sp, #0x38
	mov r2, #4
	blx MI_CpuFill8
	str r5, [sp, #0x38]
	add r0, sp, #0x38
	add r1, r6, #0
	bl ovy271_21f23b8
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x10]
	cmp r0, #0xa
	blt _021F0AEE
	mov r0, #2
	str r0, [r4, #0x10]
	b _021F0AF0
_021F0AEE:
	str r7, [r4, #0x10]
_021F0AF0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	bl ovy271_21f2c3c
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	add r1, r1, #1
	add r2, r6, #0
	bl ovy271_21f2c3c
	ldr r0, [r4, #0x44]
	bl ovy271_21f256c
	add r1, r4, #0
	add r1, #0x38
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x38
	ldrb r1, [r0]
	mov r0, #0x44
	ldr r7, _021F0CEC ; =0x00000166
	mul r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	ldr r3, _021F0CE8 ; =0x021F7C20
	add r0, r6, #0
	mov r2, #0
	str r7, [sp]
	mov r5, #0
	bl GFL_HeapAllocate
	ldr r2, [sp, #0x24]
	mov r1, #0
	str r0, [r4, #0x40]
	blx MI_CpuFill8
	add r0, r4, #0
	mov r1, #6
	add r0, #0x3a
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0xa
	add r7, #0x32
	str r0, [sp]
	ldr r3, _021F0CE8 ; =0x021F7C20
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #0x3c]
	blx MI_CpuFill8
	ldr r1, _021F0CF0 ; =0x021F1035
	add r0, r4, #0
	add r2, r6, #0
	bl ovy271_21f44ec
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021F0C2C
	ldr r0, [sp, #0x18]
	bl sub_021F3000
	ldr r1, [r4, #0x5c]
	str r0, [sp, #0x20]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bls _021F0BF0
	ldr r0, _021F0CF4 ; =0x00007FFF
	add r2, r6, #0
	and r2, r0
	add r0, r0, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
_021F0B94:
	lsl r3, r5, #2
	add r2, r1, r3
	ldrh r1, [r1, r3]
	ldrh r2, [r2, #2]
	ldr r0, [r4, #0x44]
	bl ovy271_21f24dc
	add r7, r0, #0
	ldr r0, [r4, #0x44]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x28]
	add r1, r7, #0
	bl ovy271_21f25b8
	str r0, [sp, #0x2c]
	add r0, sp, #0x3c
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r4, #0x48]
	add r0, sp, #0x3c
	bl ovy271_21f19e4
	add r0, r4, #0
	add r1, sp, #0x3c
	mov r2, #0
	bl ovy271_21f0dd8
	ldr r0, [sp, #0x2c]
	bl GFL_StrBufFree
	ldr r1, [r4, #0x5c]
	add r5, r5, #1
	ldr r0, [r1, #0x18]
	cmp r5, r0
	blo _021F0B94
_021F0BF0:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #0
	ble _021F0C1E
	mov r6, #0x44
_021F0BFE:
	sub r0, r0, r5
	sub r0, r0, #1
	add r1, r0, #0
	ldr r2, [r4, #0x3c]
	mul r1, r6
	add r0, r2, r1
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ovy271_21f1c90
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F0BFE
_021F0C1E:
	ldr r0, [r4, #0xc]
	ldr r1, _021F0CF8 ; =ovy271_21f16e4
	bl sub_021F4550
	mov r0, #2
	str r0, [r4, #0x1c]
	b _021F0CD6
_021F0C2C:
	ldr r0, [sp, #0x18]
	bl sub_021F3000
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x44]
	ldr r1, [sp, #0x10]
	bl ovy271_21f2540
	add r1, r4, #0
	add r1, #0x39
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	ble _021F0CAA
	ldr r0, _021F0CF4 ; =0x00007FFF
	add r1, r6, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x30]
_021F0C5C:
	lsl r2, r5, #0x10
	ldr r0, [r4, #0x44]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	bl ovy271_21f24dc
	add r7, r0, #0
	ldr r0, [r4, #0x44]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x30]
	add r1, r7, #0
	bl ovy271_21f25b8
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #0x44
	ldr r1, [r4, #0x40]
	mul r0, r5
	add r0, r1, r0
	ldr r3, [r4, #0x48]
	add r1, r7, #0
	bl ovy271_21f19e4
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F0C5C
_021F0CAA:
	mov r5, #0
	cmp r0, #0
	ble _021F0CCE
	mov r7, #0xe0
	mov r6, #0x44
_021F0CB4:
	add r0, r5, #0
	ldr r1, [r4, #0x40]
	mul r0, r6
	add r0, r1, r0
	add r1, r7, #0
	bl ovy271_21f1cd8
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F0CB4
_021F0CCE:
	ldr r0, [r4, #0xc]
	ldr r1, _021F0CFC ; =ovy271_21f1894
	bl sub_021F4550
_021F0CD6:
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0CDC: .word 0x021F7C04
_021F0CE0: .word 0x021F7C08
_021F0CE4: .word 0x0000013E
_021F0CE8: .word 0x021F7C20
_021F0CEC: .word 0x00000166
_021F0CF0: .word 0x021F1035
_021F0CF4: .word 0x00007FFF
_021F0CF8: .word ovy271_21f16e4
_021F0CFC: .word ovy271_21f1894
	thumb_func_end ovy271_21f0a6c

	thumb_func_start ovy271_21f0d00
ovy271_21f0d00: ; 0x021F0D00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_021F4528
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021F0D1A
	ldr r1, [r5, #4]
	bl ovy271_21f3f70
	mov r0, #0
	str r0, [r5, #0x50]
_021F0D1A:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F0D40
	mov r6, #0x44
_021F0D28:
	add r0, r4, #0
	ldr r1, [r5, #0x3c]
	mul r0, r6
	add r0, r1, r0
	bl ovy271_21f1aa8
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F0D28
_021F0D40:
	ldr r0, [r5, #0x3c]
	bl GFL_HeapFree
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F0D6C
	mov r6, #0x44
_021F0D54:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r6
	add r0, r1, r0
	bl ovy271_21f1aa8
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F0D54
_021F0D6C:
	ldr r0, [r5, #0x40]
	bl GFL_HeapFree
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	bl ovy271_21f2eb4
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	add r1, r1, #1
	bl ovy271_21f2eb4
	ldr r0, [r5, #0x44]
	bl sub_021F2410
	ldr r0, [r5, #0x48]
	bl sub_0202AEAC
	ldr r0, [r5, #0x4c]
	bl sub_02021A18
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f0d00

	thumb_func_start ovy271_21f0da0
ovy271_21f0da0: ; 0x021F0DA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ovy271_21f4530
	ldr r0, [r4, #0x4c]
	bl sub_02021A3C
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021F0DBA
	bl sub_021F3FD0
_021F0DBA:
	pop {r4, pc}
	thumb_func_end ovy271_21f0da0
_021F0DBC:
	.byte 0x00, 0x29, 0x01, 0xD0
	.byte 0x43, 0x6A, 0x0B, 0x60, 0x00, 0x2A, 0x01, 0xD0, 0x81, 0x6A, 0x11, 0x60, 0x80, 0x69, 0x70, 0x47
	.byte 0x40, 0x69, 0x70, 0x47, 0x40, 0x6D, 0x70, 0x47

	thumb_func_start ovy271_21f0dd8
ovy271_21f0dd8: ; 0x021F0DD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x3b
	add r4, r1, #0
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r6, r2, #0
	cmp r1, r0
	blo _021F0DF8
	ldr r0, _021F0E5C ; =0x021F7C04
	ldr r2, _021F0E60 ; =0x021F7C2C
	mov r1, #0
	bl sub_0203CB80
_021F0DF8:
	add r2, r5, #0
	add r2, #0x3b
	ldrb r3, [r2]
	mov r2, #0x44
	ldr r1, [r5, #0x3c]
	mul r2, r3
	add r1, r1, r2
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy271_21f1c38
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r4, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r1, [r0]
	cmp r1, #0
	ble _021F0E58
	mov r7, #0x44
_021F0E2C:
	sub r1, r1, r4
	lsl r1, r1, #1
	add r6, r4, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x3c]
	mul r6, r7
	add r0, r0, r6
	lsr r1, r1, #0x10
	bl sub_021F1D74
	ldr r0, [r5, #0x3c]
	mov r1, #1
	add r0, r0, r6
	bl sub_021F1D84
	add r0, r5, #0
	add r0, #0x3b
	ldrb r1, [r0]
	add r4, r4, #1
	cmp r4, r1
	blt _021F0E2C
_021F0E58:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0E5C: .word 0x021F7C04
_021F0E60: .word 0x021F7C2C
	thumb_func_end ovy271_21f0dd8

	thumb_func_start ovy271_21f0e64
ovy271_21f0e64: ; 0x021F0E64
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r2, r1, #0
	cmp r0, #0
	beq _021F0EB4
	add r0, r3, #0
	add r0, #0x3b
	ldrb r0, [r0]
	ldr r4, [r3, #0x3c]
	sub r1, r0, #1
	add r0, r3, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r3, #0
	add r0, #0x3b
	ldrb r1, [r0]
	mov r0, #0x44
	mul r0, r1
	add r5, r4, r0
	mov r4, #8
_021F0E90:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _021F0E90
	ldr r0, [r5]
	str r0, [r2]
	ldr r4, [r3, #0x3c]
	add r3, #0x3b
	ldrb r0, [r3]
	mov r2, #0x44
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	mov r1, #0
	blx MI_CpuFill8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F0EB4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f0e64

	thumb_func_start ovy271_21f0eb8
ovy271_21f0eb8: ; 0x021F0EB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, #0x38
	ldrb r0, [r0]
	str r1, [sp, #0x10]
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0
	ble _021F0EE6
	mov r6, #0x44
_021F0ECE:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r6
	add r0, r1, r0
	bl ovy271_21f1aa8
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F0ECE
_021F0EE6:
	ldr r0, [r5, #4]
	bl sub_021F3000
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x44]
	ldr r1, [sp, #0x10]
	bl ovy271_21f2540
	add r1, r5, #0
	add r1, #0x39
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F0F90
	ldr r0, _021F0F94 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x20]
_021F0F0E:
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x44]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	bl ovy271_21f24dc
	str r0, [sp, #0x18]
	ldrh r6, [r5]
	ldr r3, _021F0F94 ; =0x00007FFF
	ldr r0, [r5, #0x44]
	and r6, r3
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x18]
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x14]
	lsr r3, r3, #0x10
	bl ovy271_21f25b8
	str r0, [sp, #0x1c]
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp, #8]
	ldrh r0, [r5]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x48]
	add r0, r0, r6
	bl ovy271_21f19e4
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x40]
	mov r1, #3
	add r0, r0, r6
	bl sub_021F1D74
	cmp r7, #0
	beq _021F0F84
	ldr r0, [r5, #0x40]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	add r0, r0, r6
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ovy271_21f22e8
_021F0F84:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F0F0E
_021F0F90:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0F94: .word 0x00007FFF
	thumb_func_end ovy271_21f0eb8

	thumb_func_start ovy271_21f0f98
ovy271_21f0f98: ; 0x021F0F98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #6
	blo _021F0FB0
	ldr r0, _021F0FC8 ; =0x021F7C04
	ldr r2, _021F0FCC ; =0x021F7C58
	mov r1, #0
	bl sub_0203CB80
_021F0FB0:
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	strh r4, [r5, r0]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	add r0, r5, r0
	strh r6, [r0, #2]
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	pop {r4, r5, r6, pc}
	nop
_021F0FC8: .word 0x021F7C04
_021F0FCC: .word 0x021F7C58
	thumb_func_end ovy271_21f0f98

	thumb_func_start sub_021F0FD0
sub_021F0FD0: ; 0x021F0FD0
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021F0FDA
	sub r1, r1, #1
	str r1, [r0, #0x18]
_021F0FDA:
	bx lr
	thumb_func_end sub_021F0FD0

	thumb_func_start ovy271_21f0fdc
ovy271_21f0fdc: ; 0x021F0FDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _021F1032
_021F0FEC:
	cmp r7, #0
	beq _021F0FF6
	cmp r7, #1
	beq _021F1000
	b _021F100A
_021F0FF6:
	sub r0, r0, #1
	mov r6, #1
	cmp r4, r0
	beq _021F100A
	b _021F1008
_021F1000:
	sub r0, r0, #2
	mov r6, #1
	cmp r4, r0
	bge _021F100A
_021F1008:
	mov r6, #0
_021F100A:
	cmp r6, #0
	ldr r1, [r5, #0x3c]
	beq _021F101A
	mov r0, #0x44
	mul r0, r4
	add r0, r1, r0
	mov r1, #0
	b _021F1022
_021F101A:
	mov r0, #0x44
	mul r0, r4
	add r0, r1, r0
	mov r1, #1
_021F1022:
	bl sub_021F1D94
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F0FEC
_021F1032:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f0fdc
_021F1034:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x45, 0x10, 0x1F, 0x02
	.byte 0x51, 0x45, 0x1F, 0x02

	thumb_func_start ovy271_21f1044
ovy271_21f1044: ; 0x021F1044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	add r4, r2, #0
	str r0, [sp, #4]
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	cmp r0, #0
	beq _021F1110
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	ldr r5, [sp, #4]
	cmp r0, #0
	ble _021F1110
	mov r7, #0x44
_021F106E:
	add r6, r5, #0
	ldr r0, [r4, #0x40]
	mul r6, r7
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r0, r6
	bl ovy271_21f1acc
	cmp r0, #0
	beq _021F1104
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r0, r0, r6
	bl ovy271_21f1cf4
	cmp r0, #0
	beq _021F10D8
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021F10A0
	ldr r1, [r4, #4]
	bl ovy271_21f3f70
	mov r0, #0
	str r0, [r4, #0x50]
_021F10A0:
	ldr r0, _021F11E8 ; =0x00000703
	bl GFL_SndSEPlay
	mov r0, #1
	add r2, r4, #0
	str r5, [r4, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #7
	str r0, [r4, #0x30]
	ldr r0, [sp, #8]
	add r2, #0x30
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x58]
	bl ovy271_21f4678
	ldr r1, [r4, #0x2c]
	mov r0, #0x44
	mul r0, r1
	ldr r2, [r4, #0x40]
	add r1, r4, #0
	add r0, r2, r0
	add r1, #0x30
	bl sub_021F1DA0
	mov r0, #0
	str r0, [r4, #0x54]
	b _021F1110
_021F10D8:
	ldr r0, [r4, #0x40]
	mov r1, #5
	add r0, r0, r6
	bl ovy271_21f1cf4
	add r7, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #6
	add r0, r0, r6
	bl ovy271_21f1cf4
	ldr r0, _021F11EC ; =0x00000704
	bl GFL_SndSEPlay
	cmp r7, #1
	bne _021F1110
	ldr r0, [sp]
	ldr r1, _021F11F0 ; =ovy271_21f1838
	str r5, [r4, #0x2c]
	bl sub_021F4550
	b _021F1110
_021F1104:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F106E
_021F1110:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F11E4
	mov r0, #1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x40]
	mov r6, #0x44
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r1, #0
	mov r5, #0
	bl ovy271_21f1cf4
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x40]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r1, #3
	bl ovy271_21f1cf4
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x40]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r1, #1
	bl ovy271_21f1cf4
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x40]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r1, #2
	bl ovy271_21f1cf4
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	ble _021F119C
	add r7, r6, #0
_021F1172:
	ldr r0, [r4, #0x2c]
	cmp r5, r0
	ldr r1, [r4, #0x40]
	bne _021F1184
	add r0, r5, #0
	mul r0, r6
	add r0, r1, r0
	mov r1, #1
	b _021F118C
_021F1184:
	add r0, r5, #0
	mul r0, r7
	add r0, r1, r0
	mov r1, #3
_021F118C:
	bl sub_021F1D74
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F1172
_021F119C:
	ldr r0, [r4, #0x1c]
	cmp r0, #4
	bhi _021F11DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F11AE: ; jump table
	.short _021F11C4 - _021F11AE - 2 ; case 0
	.short _021F11C4 - _021F11AE - 2 ; case 1
	.short _021F11B8 - _021F11AE - 2 ; case 2
	.short _021F11D0 - _021F11AE - 2 ; case 3
	.short _021F11C4 - _021F11AE - 2 ; case 4
_021F11B8:
	ldr r0, [sp]
	ldr r1, _021F11F4 ; =ovy271_21f151c
	bl sub_021F4550
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F11C4:
	ldr r0, [sp]
	ldr r1, _021F11F8 ; =ovy271_21f1204
	bl sub_021F4550
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F11D0:
	ldr r0, [sp]
	ldr r1, _021F11FC ; =ovy271_21f1940
	bl sub_021F4550
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F11DC:
	ldr r0, [sp]
	ldr r1, _021F1200 ; =ovy271_21f17f8
	bl sub_021F4550
_021F11E4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F11E8: .word 0x00000703
_021F11EC: .word 0x00000704
_021F11F0: .word ovy271_21f1838
_021F11F4: .word ovy271_21f151c
_021F11F8: .word ovy271_21f1204
_021F11FC: .word ovy271_21f1940
_021F1200: .word ovy271_21f17f8
	thumb_func_end ovy271_21f1044

	thumb_func_start ovy271_21f1204
ovy271_21f1204: ; 0x021F1204
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F121E
	cmp r1, #1
	beq _021F1268
	cmp r1, #2
	beq _021F12A0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F121E:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F125E
	add r6, sp, #4
	mov r7, #0x44
_021F122E:
	ldr r1, [r5, #0x2c]
	cmp r1, r4
	beq _021F1252
	mov r2, #0x44
	mul r2, r1
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	add r0, r0, r2
	bl ovy271_21f1cb4
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	mov r1, #0
	add r2, r6, #0
	bl sub_021F1AE0
_021F1252:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F122E
_021F125E:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F1268:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F1292
	mov r7, #0x44
_021F1278:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1278
_021F1292:
	cmp r6, #0
	beq _021F12B6
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F12A0:
	ldr r1, [r5, #0x1c]
	cmp r1, #4
	bne _021F12B0
	ldr r1, _021F12BC ; =ovy271_21f12c0
	bl sub_021F4550
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F12B0:
	ldr r1, _021F12BC ; =ovy271_21f12c0
	bl sub_021F4550
_021F12B6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F12BC: .word ovy271_21f12c0
	thumb_func_end ovy271_21f1204

	thumb_func_start ovy271_21f12c0
ovy271_21f12c0: ; 0x021F12C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bhi _021F1342
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x40]
	mov r6, #0x44
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	add r1, sp, #0xc
	ldr r7, [r5, #0x24]
	bl ovy271_21f1cb4
	ldr r1, [r5, #0x2c]
	ldr r3, [r5, #0x40]
	add r2, r1, #0
	mul r2, r6
	add r1, r3, r2
	add r0, r5, #0
	mov r2, #1
	bl ovy271_21f0dd8
	ldr r4, [r5, #0x2c]
	ldr r1, [r5, #0x40]
	add r0, r4, #0
	mul r0, r6
	add r0, r1, r0
	mov r1, #4
	bl ovy271_21f1cf4
	add r1, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x5c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ovy271_21f0f98
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x40]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r4, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	sub r4, #0x20
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0xc
	str r4, [sp, #0x10]
	bl ovy271_21f0eb8
	ldr r0, [sp]
	ldr r1, _021F145C ; =ovy271_21f15c0
	bl sub_021F4550
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021F1342:
	cmp r0, #2
	bne _021F13E6
	ldr r0, [r5, #0x5c]
	bl sub_021F0FD0
	add r4, sp, #0x14
	add r0, r5, #0
	add r1, r4, #0
	bl ovy271_21f0e64
	cmp r0, #0
	beq _021F1458
	add r0, r4, #0
	mov r1, #4
	bl ovy271_21f1cf4
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F1374
	ldr r0, _021F1460 ; =0x021F7C04
	ldr r2, _021F1464 ; =0x021F7C80
	mov r1, #0
	bl sub_0203CB80
_021F1374:
	ldr r0, [sp, #0x20]
	mov r1, #0
	mov r4, #0
	bl ovy271_21f2594
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r1, #1
	bl ovy271_21f2594
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #4
	bl ovy271_21f0eb8
	ldr r0, [sp, #0x20]
	mov r1, #1
	bl ovy271_21f2594
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	ble _021F13D4
_021F13A8:
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #0x40]
	mov r1, #1
	add r0, r0, r6
	ldr r0, [r0, #0xc]
	bl ovy271_21f2594
	cmp r7, r0
	bne _021F13C8
	ldr r0, [r5, #0x40]
	mov r1, #1
	add r0, r0, r6
	bl sub_021F1D74
_021F13C8:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F13A8
_021F13D4:
	add r0, sp, #0x14
	bl ovy271_21f1aa8
	ldr r0, [sp]
	ldr r1, _021F1468 ; =ovy271_21f146c
	bl sub_021F4550
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021F13E6:
	ldr r1, [r5, #0x2c]
	ldr r3, [r5, #0x40]
	mov r6, #0x44
	add r2, r1, #0
	mul r2, r6
	add r1, r3, r2
	add r0, r5, #0
	mov r2, #1
	bl ovy271_21f0dd8
	ldr r4, [r5, #0x2c]
	ldr r1, [r5, #0x40]
	add r0, r4, #0
	mul r0, r6
	add r0, r1, r0
	mov r1, #4
	bl ovy271_21f1cf4
	add r1, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x5c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ovy271_21f0f98
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x40]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	mov r1, #0
	mov r2, #0x44
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	ble _021F1450
_021F1438:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r6
	add r0, r1, r0
	bl ovy271_21f1aa8
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1438
_021F1450:
	ldr r0, [sp]
	ldr r1, _021F145C ; =ovy271_21f15c0
	bl sub_021F4550
_021F1458:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F145C: .word ovy271_21f15c0
_021F1460: .word 0x021F7C04
_021F1464: .word 0x021F7C80
_021F1468: .word ovy271_21f146c
	thumb_func_end ovy271_21f12c0

	thumb_func_start ovy271_21f146c
ovy271_21f146c: ; 0x021F146C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F1482
	cmp r1, #1
	beq _021F14B6
	cmp r1, #2
	beq _021F14EC
	pop {r3, r4, r5, r6, r7, pc}
_021F1482:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F14AE
	mov r7, #1
	mov r6, #0x44
_021F1492:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r6
	add r0, r1, r0
	add r1, r7, #0
	mov r2, #0
	bl sub_021F1AE0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1492
_021F14AE:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F14B6:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F14E0
	mov r7, #0x44
_021F14C6:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F14C6
_021F14E0:
	cmp r6, #0
	beq _021F1512
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F14EC:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021F14FC
	cmp r1, #1
	beq _021F14FC
	cmp r1, #4
	beq _021F1504
	b _021F150C
_021F14FC:
	ldr r1, _021F1514 ; =ovy271_21f17f8
	bl sub_021F4550
	pop {r3, r4, r5, r6, r7, pc}
_021F1504:
	ldr r1, _021F1518 ; =ovy271_21f15c0
	bl sub_021F4550
	pop {r3, r4, r5, r6, r7, pc}
_021F150C:
	ldr r1, _021F1514 ; =ovy271_21f17f8
	bl sub_021F4550
_021F1512:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F1514: .word ovy271_21f17f8
_021F1518: .word ovy271_21f15c0
	thumb_func_end ovy271_21f146c

	thumb_func_start ovy271_21f151c
ovy271_21f151c: ; 0x021F151C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F1536
	cmp r1, #1
	beq _021F157A
	cmp r1, #2
	beq _021F15B2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F1536:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F1570
	add r7, sp, #4
_021F1544:
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #0x40]
	add r1, r7, #0
	add r0, r0, r6
	bl ovy271_21f1cb4
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r5, #0x40]
	mov r1, #4
	add r0, r0, r6
	add r2, r7, #0
	bl sub_021F1AE0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1544
_021F1570:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F157A:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F15A4
	mov r7, #0x44
_021F158A:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F158A
_021F15A4:
	cmp r6, #0
	beq _021F15B8
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F15B2:
	ldr r1, _021F15BC ; =ovy271_21f16e4
	bl sub_021F4550
_021F15B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F15BC: .word ovy271_21f16e4
	thumb_func_end ovy271_21f151c

	thumb_func_start ovy271_21f15c0
ovy271_21f15c0: ; 0x021F15C0
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	ldr r1, [r1]
	add r4, r2, #0
	cmp r1, #3
	bls _021F15CE
	b _021F16D4
_021F15CE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F15DA: ; jump table
	.short _021F15E2 - _021F15DA - 2 ; case 0
	.short _021F1630 - _021F15DA - 2 ; case 1
	.short _021F166E - _021F15DA - 2 ; case 2
	.short _021F16BC - _021F15DA - 2 ; case 3
_021F15E2:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r2, [r0]
	mov r5, #0
	cmp r2, #0
	ble _021F1628
	ldr r6, _021F16D8 ; =0x021F71B0
	mov r7, #0x44
_021F15F2:
	sub r0, r2, #1
	cmp r5, r0
	bne _021F1606
	add r0, r5, #0
	ldr r1, [r4, #0x3c]
	mul r0, r7
	add r0, r1, r0
	mov r1, #2
	add r2, r6, #0
	b _021F1618
_021F1606:
	sub r2, r2, r5
	mov r1, #0x44
	sub r2, r2, #1
	lsl r2, r2, #3
	ldr r0, [r4, #0x3c]
	mul r1, r5
	add r0, r0, r1
	mov r1, #4
	add r2, r6, r2
_021F1618:
	bl sub_021F1AE0
	add r0, r4, #0
	add r0, #0x3b
	ldrb r2, [r0]
	add r5, r5, #1
	cmp r5, r2
	blt _021F15F2
_021F1628:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F1630:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r6, #1
	mov r5, #0
	cmp r0, #0
	ble _021F165A
	mov r7, #0x44
_021F1640:
	add r0, r5, #0
	ldr r1, [r4, #0x3c]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021F1640
_021F165A:
	cmp r6, #0
	beq _021F16D4
	add r0, r4, #0
	mov r1, #0
	bl ovy271_21f0fdc
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F166E:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	ldr r5, [r4, #0x3c]
	sub r1, r0, #1
	add r6, r1, #0
	mov r0, #0x44
	mul r6, r0
	add r0, r5, r6
	mov r1, #0
	bl ovy271_21f1cf4
	add r7, r0, #0
	add r0, r5, r6
	mov r1, #2
	bl ovy271_21f1cf4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r7, #1
	bne _021F16B4
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _021F16AA
	ldrh r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x4c]
	bl ovy271_21f3f40
	str r0, [r4, #0x50]
_021F16AA:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #4]
	add r2, r5, #0
	bl ovy271_21f3f84
_021F16B4:
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F16BC:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _021F16C6
	cmp r1, #1
	bne _021F16CE
_021F16C6:
	ldr r1, _021F16DC ; =ovy271_21f146c
	bl sub_021F4550
	pop {r3, r4, r5, r6, r7, pc}
_021F16CE:
	ldr r1, _021F16E0 ; =ovy271_21f17f8
	bl sub_021F4550
_021F16D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F16D8: .word 0x021F71B0
_021F16DC: .word ovy271_21f146c
_021F16E0: .word ovy271_21f17f8
	thumb_func_end ovy271_21f15c0

	thumb_func_start ovy271_21f16e4
ovy271_21f16e4: ; 0x021F16E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F16FE
	cmp r1, #1
	beq _021F17A4
	cmp r1, #2
	beq _021F17E4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F16FE:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r2, [r0]
	mov r4, #0
	cmp r2, #0
	ble _021F1770
	mov r7, #1
_021F170C:
	sub r0, r2, #1
	cmp r4, r0
	bne _021F174C
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #0x3c]
	mov r1, #0
	add r0, r0, r6
	ldr r0, [r0, #0xc]
	bl ovy271_21f2594
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	add r0, r0, r6
	ldr r0, [r0, #0xc]
	bl ovy271_21f2594
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	mov r1, #3
	add r0, r0, r6
	add r2, sp, #4
	bl sub_021F1AE0
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	add r0, r0, r6
	bl sub_021F1D74
	b _021F1764
_021F174C:
	sub r2, r2, r4
	sub r2, r2, #2
	mov r0, #0x44
	lsl r3, r2, #3
	ldr r2, _021F17F0 ; =0x021F71B0
	ldr r1, [r5, #0x3c]
	mul r0, r4
	add r0, r1, r0
	mov r1, #4
	add r2, r2, r3
	bl sub_021F1AE0
_021F1764:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r2, [r0]
	add r4, r4, #1
	cmp r4, r2
	blt _021F170C
_021F1770:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F179A
	mov r7, #3
	mov r6, #0x44
_021F1780:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r6
	add r0, r1, r0
	add r1, r7, #0
	bl sub_021F1D74
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1780
_021F179A:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F17A4:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F17CE
	mov r7, #0x44
_021F17B4:
	add r0, r4, #0
	ldr r1, [r5, #0x3c]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F17B4
_021F17CE:
	cmp r6, #0
	beq _021F17EA
	add r0, r5, #0
	mov r1, #1
	bl ovy271_21f0fdc
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F17E4:
	ldr r1, _021F17F4 ; =ovy271_21f12c0
	bl sub_021F4550
_021F17EA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F17F0: .word 0x021F71B0
_021F17F4: .word ovy271_21f12c0
	thumb_func_end ovy271_21f16e4

	thumb_func_start ovy271_21f17f8
ovy271_21f17f8: ; 0x021F17F8
	push {r3, lr}
	ldr r1, [r1]
	cmp r1, #0
	bne _021F1830
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _021F182A
	ldr r1, [r2, #0x1c]
	cmp r1, #4
	bhi _021F182A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1818: ; jump table
	.short _021F182A - _021F1818 - 2 ; case 0
	.short _021F182A - _021F1818 - 2 ; case 1
	.short _021F182A - _021F1818 - 2 ; case 2
	.short _021F1822 - _021F1818 - 2 ; case 3
	.short _021F1826 - _021F1818 - 2 ; case 4
_021F1822:
	mov r1, #2
	b _021F1828
_021F1826:
	mov r1, #1
_021F1828:
	str r1, [r2, #0x18]
_021F182A:
	ldr r1, _021F1834 ; =ovy271_21f1044
	bl sub_021F4550
_021F1830:
	pop {r3, pc}
	nop
_021F1834: .word ovy271_21f1044
	thumb_func_end ovy271_21f17f8

	thumb_func_start ovy271_21f1838
ovy271_21f1838: ; 0x021F1838
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _021F184E
	cmp r1, #1
	beq _021F1882
	cmp r1, #2
	beq _021F1888
	pop {r4, r5, r6, pc}
_021F184E:
	ldr r1, [r4, #0x2c]
	mov r0, #0x44
	mul r0, r1
	ldr r2, [r4, #0x40]
	mov r1, #6
	add r0, r2, r0
	bl ovy271_21f1cf4
	add r6, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _021F1872
	ldrh r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x4c]
	bl ovy271_21f3f40
	str r0, [r4, #0x50]
_021F1872:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl ovy271_21f3f84
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021F1882:
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021F1888:
	ldr r1, _021F1890 ; =ovy271_21f1044
	bl sub_021F4550
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F1890: .word ovy271_21f1044
	thumb_func_end ovy271_21f1838

	thumb_func_start ovy271_21f1894
ovy271_21f1894: ; 0x021F1894
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F18AE
	cmp r1, #1
	beq _021F18FA
	cmp r1, #2
	beq _021F1932
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F18AE:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F18F0
	mov r7, #0x44
_021F18BC:
	add r6, r4, #0
	ldr r0, [r5, #0x40]
	mul r6, r7
	add r0, r0, r6
	mov r1, #8
	bl ovy271_21f1cf4
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	mov r1, #9
	add r0, r0, r6
	bl ovy271_21f1cf4
	str r0, [sp, #8]
	ldr r0, [r5, #0x40]
	mov r1, #4
	add r0, r0, r6
	add r2, sp, #4
	bl sub_021F1AE0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F18BC
_021F18F0:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F18FA:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F1924
	mov r7, #0x44
_021F190A:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F190A
_021F1924:
	cmp r6, #0
	beq _021F1938
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F1932:
	ldr r1, _021F193C ; =0x021F1035
	bl sub_021F4550
_021F1938:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F193C: .word 0x021F1035
	thumb_func_end ovy271_21f1894

	thumb_func_start ovy271_21f1940
ovy271_21f1940: ; 0x021F1940
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F195A
	cmp r1, #1
	beq _021F199E
	cmp r1, #2
	beq _021F19D6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F195A:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021F1994
	add r7, sp, #4
_021F1968:
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #0x40]
	add r1, r7, #0
	add r0, r0, r6
	bl ovy271_21f1cb4
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r5, #0x40]
	mov r1, #4
	add r0, r0, r6
	add r2, r7, #0
	bl sub_021F1AE0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F1968
_021F1994:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F199E:
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F19C8
	mov r7, #0x44
_021F19AE:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	mul r0, r7
	add r0, r1, r0
	bl ovy271_21f1b3c
	and r6, r0
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021F19AE
_021F19C8:
	cmp r6, #0
	beq _021F19DC
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F19D6:
	ldr r1, _021F19E0 ; =ovy271_21f17f8
	bl sub_021F4550
_021F19DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F19E0: .word ovy271_21f17f8
	thumb_func_end ovy271_21f1940

	thumb_func_start ovy271_21f19e4
ovy271_21f19e4: ; 0x021F19E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _021F1A00
	ldr r0, _021F1A9C ; =0x021F7C04
	ldr r2, _021F1AA0 ; =0x021F7C8C
	mov r1, #0
	bl sub_0203CB80
_021F1A00:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	str r0, [r5, #4]
	ldr r0, [sp, #0x48]
	str r7, [r5, #0xc]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x40]
	str r0, [r5, #0x30]
	add r0, sp, #0x40
	ldrh r1, [r0, #0xc]
	ldr r0, [sp, #0x44]
	strh r1, [r5, #0x34]
	str r4, [r5, #0x38]
	str r6, [r5, #0x3c]
	bl sub_020485A4
	str r0, [r5, #0x40]
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl ovy271_21f2594
	add r7, sp, #0x14
	strh r0, [r7]
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ovy271_21f2594
	strh r0, [r7, #2]
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl ovy271_21f2594
	strh r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #6]
	ldr r1, [r5, #0x28]
	add r7, sp, #0x1c
	ldr r0, [sp, #0x40]
	add r1, r1, #1
	add r2, r7, #0
	bl ovy271_21f2f10
	ldr r0, [sp, #0x40]
	bl sub_021F2FF8
	str r4, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x40
	ldrh r1, [r0, #0xc]
	ldr r0, _021F1AA4 ; =0x00007FFF
	mov r2, #0xa0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #4]
	add r0, sp, #0x14
	bl ovy271_21f2190
	str r0, [r5, #8]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1A9C: .word 0x021F7C04
_021F1AA0: .word 0x021F7C8C
_021F1AA4: .word 0x00007FFF
	thumb_func_end ovy271_21f19e4

	thumb_func_start ovy271_21f1aa8
ovy271_21f1aa8: ; 0x021F1AA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1AC8
	ldr r0, [r4, #0x40]
	bl GFL_StrBufFree
	ldr r0, [r4, #8]
	bl ovy271_21f2268
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
_021F1AC8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f1aa8

	thumb_func_start ovy271_21f1acc
ovy271_21f1acc: ; 0x021F1ACC
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _021F1ADC
	ldr r0, [r0, #8]
	bl ovy271_21f22a0
	pop {r3, pc}
_021F1ADC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy271_21f1acc

	thumb_func_start sub_021F1AE0
sub_021F1AE0: ; 0x021F1AE0
	mov r3, #0
	str r3, [r0, #0x1c]
	cmp r2, #0
	beq _021F1AF0
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
_021F1AF0:
	cmp r1, #4
	bhi _021F1B26
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1B00: ; jump table
	.short _021F1B0A - _021F1B00 - 2 ; case 0
	.short _021F1B10 - _021F1B00 - 2 ; case 1
	.short _021F1B16 - _021F1B00 - 2 ; case 2
	.short _021F1B1C - _021F1B00 - 2 ; case 3
	.short _021F1B22 - _021F1B00 - 2 ; case 4
_021F1B0A:
	ldr r1, _021F1B28 ; =ovy271_21f1da4
	str r1, [r0, #0x10]
	bx lr
_021F1B10:
	ldr r1, _021F1B2C ; =ovy271_21f1e2c
	str r1, [r0, #0x10]
	bx lr
_021F1B16:
	ldr r1, _021F1B30 ; =ovy271_21f1ebc
	str r1, [r0, #0x10]
	bx lr
_021F1B1C:
	ldr r1, _021F1B34 ; =ovy271_21f1fc0
	str r1, [r0, #0x10]
	bx lr
_021F1B22:
	ldr r1, _021F1B38 ; =ovy271_21f20c4
	str r1, [r0, #0x10]
_021F1B26:
	bx lr
	.align 2, 0
_021F1B28: .word ovy271_21f1da4
_021F1B2C: .word ovy271_21f1e2c
_021F1B30: .word ovy271_21f1ebc
_021F1B34: .word ovy271_21f1fc0
_021F1B38: .word ovy271_21f20c4
	thumb_func_end sub_021F1AE0

	thumb_func_start ovy271_21f1b3c
ovy271_21f1b3c: ; 0x021F1B3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021F1B7A
	blx r1
	add r4, r0, #0
	beq _021F1B50
	mov r0, #0
	str r0, [r5, #0x10]
_021F1B50:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021F1B76
	add r1, sp, #0
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #0
	bl ovy271_21f231c
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r5, #0x2c]
	add r2, #0x50
	str r2, [r0]
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r5, #0x2c]
	str r1, [r0, #4]
_021F1B76:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F1B7A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f1b3c

	thumb_func_start ovy271_21f1b80
ovy271_21f1b80: ; 0x021F1B80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, r4
	beq _021F1C30
	add r1, sp, #0x1c
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #0x1c
	str r4, [r5, #4]
	bl ovy271_21f231c
	ldr r0, [r5, #8]
	bl sub_021F2368
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	bl sub_021F238C
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	bl ovy271_21f2268
	mov r0, #0
	str r0, [r5, #0x2c]
	cmp r4, #0
	bne _021F1BC0
	mov r7, #2
	lsl r7, r7, #8
	b _021F1BC2
_021F1BC0:
	ldr r7, _021F1C34 ; =0xFFFFFE00
_021F1BC2:
	add r0, sp, #0x20
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r6, sp, #0x1c
	mov r0, #2
	ldrsh r0, [r6, r0]
	mov r1, #4
	strh r0, [r6, #4]
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r0, r0, r7
	strh r0, [r6, #6]
	ldr r0, [r5, #0xc]
	bl ovy271_21f2594
	strh r0, [r6, #8]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x28
	strb r0, [r6, #0xa]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	strb r0, [r6, #0xb]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x30]
	add r1, r1, r4
	bl ovy271_21f2f10
	ldr r0, [r5, #0x30]
	bl sub_021F2FF8
	add r6, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_021F3000
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl ovy271_21f2594
	ldr r0, [r5, #0x38]
	mov r2, #0xa0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	add r3, r4, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r0, [r5, #0x34]
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x40]
	add r0, sp, #0x20
	bl ovy271_21f2190
	str r0, [r5, #8]
_021F1C30:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F1C34: .word 0xFFFFFE00
	thumb_func_end ovy271_21f1b80

	thumb_func_start ovy271_21f1c38
ovy271_21f1c38: ; 0x021F1C38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021F1C50
	ldr r0, _021F1C84 ; =0x021F7C04
	ldr r2, _021F1C88 ; =0x021F7CA4
	mov r1, #0
	bl sub_0203CB80
_021F1C50:
	ldr r0, [r4]
	cmp r0, #1
	beq _021F1C60
	ldr r0, _021F1C84 ; =0x021F7C04
	ldr r2, _021F1C8C ; =0x021F7CBC
	mov r1, #0
	bl sub_0203CB80
_021F1C60:
	add r6, r4, #0
	add r3, r5, #0
	mov r2, #8
_021F1C66:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1C66
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #4]
	cmp r0, r7
	beq _021F1C80
	add r0, r5, #0
	add r1, r7, #0
	bl ovy271_21f1b80
_021F1C80:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1C84: .word 0x021F7C04
_021F1C88: .word 0x021F7CA4
_021F1C8C: .word 0x021F7CBC
	thumb_func_end ovy271_21f1c38

	thumb_func_start ovy271_21f1c90
ovy271_21f1c90: ; 0x021F1C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	mov r1, #0
	bl ovy271_21f2594
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsl r3, r4, #4
	mov r2, #0xa9
	sub r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	asr r2, r2, #0x10
	bl ovy271_21f22e8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f1c90

	thumb_func_start ovy271_21f1cb4
ovy271_21f1cb4: ; 0x021F1CB4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, sp, #0
	ldr r0, [r0, #8]
	add r1, #2
	add r2, sp, #0
	bl ovy271_21f231c
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [r4]
	mov r0, #0
	ldrsh r0, [r1, r0]
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy271_21f1cb4

	thumb_func_start ovy271_21f1cd8
ovy271_21f1cd8: ; 0x021F1CD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	mov r1, #0
	bl ovy271_21f2594
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl ovy271_21f22e8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f1cd8

	thumb_func_start ovy271_21f1cf4
ovy271_21f1cf4: ; 0x021F1CF4
	push {r4, lr}
	cmp r1, #9
	bhi _021F1D5C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1D06: ; jump table
	.short _021F1D1A - _021F1D06 - 2 ; case 0
	.short _021F1D26 - _021F1D06 - 2 ; case 1
	.short _021F1D2C - _021F1D06 - 2 ; case 2
	.short _021F1D3E - _021F1D06 - 2 ; case 3
	.short _021F1D44 - _021F1D06 - 2 ; case 4
	.short _021F1D32 - _021F1D06 - 2 ; case 5
	.short _021F1D38 - _021F1D06 - 2 ; case 6
	.short _021F1D4A - _021F1D06 - 2 ; case 7
	.short _021F1D50 - _021F1D06 - 2 ; case 8
	.short _021F1D56 - _021F1D06 - 2 ; case 9
_021F1D1A:
	ldr r0, [r0, #0xc]
	mov r1, #5
_021F1D1E:
	bl ovy271_21f2594
	add r4, r0, #0
	b _021F1D68
_021F1D26:
	ldr r0, [r0, #0xc]
	mov r1, #6
	b _021F1D1E
_021F1D2C:
	ldr r0, [r0, #0xc]
	mov r1, #7
	b _021F1D1E
_021F1D32:
	ldr r0, [r0, #0xc]
	mov r1, #9
	b _021F1D1E
_021F1D38:
	ldr r0, [r0, #0xc]
	mov r1, #0xa
	b _021F1D1E
_021F1D3E:
	ldr r0, [r0, #0xc]
	mov r1, #8
	b _021F1D1E
_021F1D44:
	ldr r0, [r0, #0xc]
	mov r1, #2
	b _021F1D1E
_021F1D4A:
	ldr r0, [r0, #0xc]
	mov r1, #0xb
	b _021F1D1E
_021F1D50:
	ldr r0, [r0, #0xc]
	mov r1, #0
	b _021F1D1E
_021F1D56:
	ldr r0, [r0, #0xc]
	mov r1, #1
	b _021F1D1E
_021F1D5C:
	ldr r0, _021F1D6C ; =0x021F7C04
	ldr r2, _021F1D70 ; =0x021F7CD4
	mov r1, #0
	mov r4, #0
	bl sub_0203CB80
_021F1D68:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021F1D6C: .word 0x021F7C04
_021F1D70: .word 0x021F7CD4
	thumb_func_end ovy271_21f1cf4

	thumb_func_start sub_021F1D74
sub_021F1D74: ; 0x021F1D74
	lsl r1, r1, #0x18
	ldr r0, [r0, #8]
	ldr r3, _021F1D80 ; =ovy271_21f234c
	lsr r1, r1, #0x18
	bx r3
	nop
_021F1D80: .word ovy271_21f234c
	thumb_func_end sub_021F1D74

	thumb_func_start sub_021F1D84
sub_021F1D84: ; 0x021F1D84
	lsl r1, r1, #0x18
	ldr r0, [r0, #8]
	ldr r3, _021F1D90 ; =ovy271_21f2374
	lsr r1, r1, #0x18
	bx r3
	nop
_021F1D90: .word ovy271_21f2374
	thumb_func_end sub_021F1D84

	thumb_func_start sub_021F1D94
sub_021F1D94: ; 0x021F1D94
	ldr r0, [r0, #8]
	ldr r3, _021F1D9C ; =ovy271_21f2398
	bx r3
	nop
_021F1D9C: .word ovy271_21f2398
	thumb_func_end sub_021F1D94

	thumb_func_start sub_021F1DA0
sub_021F1DA0: ; 0x021F1DA0
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021F1DA0

	thumb_func_start ovy271_21f1da4
ovy271_21f1da4: ; 0x021F1DA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021F1DBA
	cmp r1, #1
	beq _021F1DD6
	cmp r1, #2
	beq _021F1E1E
	b _021F1E24
_021F1DBA:
	add r1, sp, #4
	bl ovy271_21f1cb4
	ldr r0, [sp, #8]
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	strh r0, [r5, #0x22]
	mov r0, #0
	strh r0, [r5, #0x24]
	mov r0, #0xa
	strh r0, [r5, #0x26]
	mov r0, #1
_021F1DD2:
	str r0, [r5, #0x1c]
	b _021F1E24
_021F1DD6:
	mov r0, #0x20
	ldrsh r4, [r5, r0]
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	mov r7, #0x26
	sub r0, r0, r4
	mul r0, r1
	ldrsh r1, [r5, r7]
	blx sub_0208D65C
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl ovy271_21f231c
	add r1, sp, #0
	ldrsh r1, [r1, r6]
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	add r0, r1, #1
	strh r0, [r5, #0x24]
	ldrsh r0, [r5, r7]
	cmp r1, r0
	blt _021F1E24
	mov r0, #2
	b _021F1DD2
_021F1E1E:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F1E24:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f1da4

	thumb_func_start ovy271_21f1e2c
ovy271_21f1e2c: ; 0x021F1E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021F1E42
	cmp r1, #1
	beq _021F1E64
	cmp r1, #2
	beq _021F1EAE
	b _021F1EB4
_021F1E42:
	add r1, sp, #4
	bl ovy271_21f1cb4
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r4, #1
	bl ovy271_21f2594
	ldr r1, [sp, #8]
	strh r0, [r5, #0x22]
	mov r0, #0
	strh r0, [r5, #0x24]
	mov r0, #0x10
	strh r1, [r5, #0x20]
	strh r0, [r5, #0x26]
	str r4, [r5, #0x1c]
	b _021F1EB4
_021F1E64:
	mov r0, #0x20
	ldrsh r4, [r5, r0]
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	mov r7, #0x26
	sub r0, r0, r4
	mul r0, r1
	ldrsh r1, [r5, r7]
	blx sub_0208D65C
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl ovy271_21f231c
	add r1, sp, #0
	ldrsh r1, [r1, r6]
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	add r0, r1, #1
	strh r0, [r5, #0x24]
	ldrsh r0, [r5, r7]
	cmp r1, r0
	blt _021F1EB4
	mov r0, #2
	str r0, [r5, #0x1c]
	b _021F1EB4
_021F1EAE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F1EB4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f1e2c

	thumb_func_start ovy271_21f1ebc
ovy271_21f1ebc: ; 0x021F1EBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #5
	bhi _021F1FBA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1ED4: ; jump table
	.short _021F1EE0 - _021F1ED4 - 2 ; case 0
	.short _021F1EFE - _021F1ED4 - 2 ; case 1
	.short _021F1F48 - _021F1ED4 - 2 ; case 2
	.short _021F1F52 - _021F1ED4 - 2 ; case 3
	.short _021F1F6C - _021F1ED4 - 2 ; case 4
	.short _021F1FB4 - _021F1ED4 - 2 ; case 5
_021F1EE0:
	add r1, sp, #0xc
	bl ovy271_21f1cb4
	ldr r0, [sp, #0x10]
	strh r0, [r4, #0x20]
	mov r0, #0x1f
	mvn r0, r0
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x24]
	mov r0, #0xe
	strh r0, [r4, #0x26]
	mov r0, #1
_021F1EFA:
	str r0, [r4, #0x1c]
	b _021F1FBA
_021F1EFE:
	mov r0, #0x20
	ldrsh r5, [r4, r0]
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r7, #0x26
	sub r0, r0, r5
	mul r0, r1
	ldrsh r1, [r4, r7]
	blx sub_0208D65C
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r1, sp, #0
	ldr r0, [r4, #8]
	add r1, #2
	mov r2, #0
	bl ovy271_21f231c
	add r1, sp, #0
	mov r6, #2
	ldrsh r1, [r1, r6]
	ldr r0, [r4, #8]
	add r2, r5, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, r7]
	cmp r1, r0
	blt _021F1FBA
	str r6, [r4, #0x1c]
	b _021F1FBA
_021F1F48:
	mov r1, #0
	bl ovy271_21f1b80
	mov r0, #3
	b _021F1EFA
_021F1F52:
	add r1, sp, #4
	bl ovy271_21f1cb4
	ldr r0, [sp, #8]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x24]
	mov r0, #0xe
	strh r0, [r4, #0x26]
	mov r0, #4
	b _021F1EFA
_021F1F6C:
	mov r0, #0x20
	ldrsh r5, [r4, r0]
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r7, #0x26
	sub r0, r0, r5
	mul r0, r1
	ldrsh r1, [r4, r7]
	blx sub_0208D65C
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #8]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl ovy271_21f231c
	add r1, sp, #0
	ldrsh r1, [r1, r6]
	ldr r0, [r4, #8]
	add r2, r5, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, r7]
	cmp r1, r0
	blt _021F1FBA
	mov r0, #5
	b _021F1EFA
_021F1FB4:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F1FBA:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f1ebc

	thumb_func_start ovy271_21f1fc0
ovy271_21f1fc0: ; 0x021F1FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #5
	bhi _021F20BC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1FD8: ; jump table
	.short _021F1FE4 - _021F1FD8 - 2 ; case 0
	.short _021F2000 - _021F1FD8 - 2 ; case 1
	.short _021F204A - _021F1FD8 - 2 ; case 2
	.short _021F2054 - _021F1FD8 - 2 ; case 3
	.short _021F206E - _021F1FD8 - 2 ; case 4
	.short _021F20B6 - _021F1FD8 - 2 ; case 5
_021F1FE4:
	add r1, sp, #0xc
	bl ovy271_21f1cb4
	ldr r0, [sp, #0x10]
	strh r0, [r4, #0x20]
	mov r0, #0xe0
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x24]
	mov r0, #0xe
	strh r0, [r4, #0x26]
	mov r0, #1
_021F1FFC:
	str r0, [r4, #0x1c]
	b _021F20BC
_021F2000:
	mov r0, #0x20
	ldrsh r5, [r4, r0]
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r7, #0x26
	sub r0, r0, r5
	mul r0, r1
	ldrsh r1, [r4, r7]
	blx sub_0208D65C
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r1, sp, #0
	ldr r0, [r4, #8]
	add r1, #2
	mov r2, #0
	bl ovy271_21f231c
	add r1, sp, #0
	mov r6, #2
	ldrsh r1, [r1, r6]
	ldr r0, [r4, #8]
	add r2, r5, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, r7]
	cmp r1, r0
	blt _021F20BC
	str r6, [r4, #0x1c]
	b _021F20BC
_021F204A:
	mov r1, #1
	bl ovy271_21f1b80
	mov r0, #3
	b _021F1FFC
_021F2054:
	add r1, sp, #4
	bl ovy271_21f1cb4
	ldr r0, [sp, #8]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x24]
	mov r0, #0xe
	strh r0, [r4, #0x26]
	mov r0, #4
	b _021F1FFC
_021F206E:
	mov r0, #0x20
	ldrsh r5, [r4, r0]
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r7, #0x26
	sub r0, r0, r5
	mul r0, r1
	ldrsh r1, [r4, r7]
	blx sub_0208D65C
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #8]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl ovy271_21f231c
	add r1, sp, #0
	ldrsh r1, [r1, r6]
	ldr r0, [r4, #8]
	add r2, r5, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, r7]
	cmp r1, r0
	blt _021F20BC
	mov r0, #5
	b _021F1FFC
_021F20B6:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F20BC:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f1fc0

	thumb_func_start ovy271_21f20c4
ovy271_21f20c4: ; 0x021F20C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021F20DA
	cmp r1, #1
	beq _021F20F6
	cmp r1, #2
	beq _021F213E
	b _021F2144
_021F20DA:
	add r1, sp, #4
	bl ovy271_21f1cb4
	ldr r0, [sp, #8]
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	strh r0, [r5, #0x22]
	mov r0, #0
	strh r0, [r5, #0x24]
	mov r0, #0x1a
	strh r0, [r5, #0x26]
	mov r0, #1
_021F20F2:
	str r0, [r5, #0x1c]
	b _021F2144
_021F20F6:
	mov r0, #0x20
	ldrsh r4, [r5, r0]
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	mov r7, #0x26
	sub r0, r0, r4
	mul r0, r1
	ldrsh r1, [r5, r7]
	blx sub_0208D65C
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl ovy271_21f231c
	add r1, sp, #0
	ldrsh r1, [r1, r6]
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl ovy271_21f22e8
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	add r0, r1, #1
	strh r0, [r5, #0x24]
	ldrsh r0, [r5, r7]
	cmp r1, r0
	blt _021F2144
	mov r0, #2
	b _021F20F2
_021F213E:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F2144:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f20c4

	thumb_func_start ovy271_21f214c
ovy271_21f214c: ; 0x021F214C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ovy271_21f2190
	add r5, r0, #0
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f214c

	thumb_func_start ovy271_21f2190
ovy271_21f2190: ; 0x021F2190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	str r2, [sp, #0x10]
	ldr r0, _021F225C ; =0x00000A3A
	add r7, r3, #0
	str r0, [sp]
	add r0, sp, #0x40
	str r1, [sp, #0xc]
	ldrh r0, [r0, #0x10]
	ldr r3, _021F2260 ; =0x021F7C20
	mov r1, #0x18
	mov r2, #0
	ldr r6, [sp, #0x4c]
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x14]
	str r7, [r4, #0x10]
	lsl r0, r7, #0x10
	str r5, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x40
	ldrh r0, [r0, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	ldr r1, [r6, #4]
	ldr r2, [r6, #8]
	ldr r3, [r6]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r4]
	bl sub_0204C318
	add r3, sp, #0x40
	ldr r0, [r4, #0x14]
	ldrh r3, [r3, #0x10]
	lsr r0, r0, #3
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r4, #8]
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	ldr r0, _021F2264 ; =0x00003DA0
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r2, #0
	bl sub_02021D28
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r4, #8]
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r0, #0x20
	strh r0, [r1, #4]
	mov r0, #2
	ldrsh r0, [r5, r0]
	sub r0, #8
	strh r0, [r1, #6]
	ldr r0, [r6, #8]
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #6]
	sub r0, r0, #1
	strb r0, [r1, #0x10]
	strh r7, [r1, #0x12]
	ldrb r0, [r5, #7]
	str r7, [sp, #0x28]
	strb r0, [r1, #0x11]
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	add r1, sp, #0x14
	bl sub_0202AEC4
	str r0, [r4, #4]
	bl sub_0202B0F4
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0202B2A0
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F225C: .word 0x00000A3A
_021F2260: .word 0x021F7C20
_021F2264: .word 0x00003DA0
	thumb_func_end ovy271_21f2190

	thumb_func_start ovy271_21f2268
ovy271_21f2268: ; 0x021F2268
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202B030
	ldr r0, [r4, #8]
	bl GFL_BitmapFree
	ldr r0, [r4]
	bl Oam_RemoveOam
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f2268

	thumb_func_start ovy271_21f2288
ovy271_21f2288: ; 0x021F2288
	push {r4, lr}
	bl ovy271_21f22a0
	add r4, r0, #0
	beq _021F2298
	ldr r0, _021F229C ; =0x00000703
	bl GFL_SndSEPlay
_021F2298:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021F229C: .word 0x00000703
	thumb_func_end ovy271_21f2288

	thumb_func_start ovy271_21f22a0
ovy271_21f22a0: ; 0x021F22A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #0x10]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r1, sp, #0
	lsr r2, r2, #0x10
	bl Oam_GetSpritePosData
	add r2, sp, #0
	mov r7, #0
	mov r0, #2
	ldrsh r1, [r2, r7]
	ldrsh r3, [r2, r0]
	sub r0, r4, r1
	ldr r4, [r5, #0x14]
	add r2, r3, #0
	add r4, r1, r4
	sub r1, r4, r1
	sub r2, #0x10
	cmp r0, r1
	bhi _021F22D2
	mov r7, #1
_021F22D2:
	add r3, #0x10
	sub r1, r6, r2
	sub r0, r3, r2
	cmp r1, r0
	bhi _021F22E0
	mov r0, #1
	b _021F22E2
_021F22E0:
	mov r0, #0
_021F22E2:
	and r0, r7
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f22a0

	thumb_func_start ovy271_21f22e8
ovy271_21f22e8: ; 0x021F22E8
	push {r3, r4, r5, lr}
	add r4, sp, #0
	strh r1, [r4]
	add r5, r0, #0
	strh r2, [r4, #2]
	ldr r2, [r5, #0x10]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	add r1, sp, #0
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #4]
	add r1, #0x20
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f22e8

	thumb_func_start ovy271_21f231c
ovy271_21f231c: ; 0x021F231C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r4, r2, #0
	ldr r2, [r3, #0x10]
	ldr r0, [r3]
	lsl r2, r2, #0x10
	add r5, r1, #0
	add r1, sp, #0
	lsr r2, r2, #0x10
	bl Oam_GetSpritePosData
	cmp r5, #0
	beq _021F233E
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5]
_021F233E:
	cmp r4, #0
	beq _021F234A
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r4]
_021F234A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f231c

	thumb_func_start ovy271_21f234c
ovy271_21f234c: ; 0x021F234C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_0204C438
	sub r1, r4, #1
	lsl r1, r1, #0x18
	ldr r0, [r5, #4]
	lsr r1, r1, #0x18
	bl sub_0202B2E8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f234c

	thumb_func_start sub_021F2368
sub_021F2368: ; 0x021F2368
	ldr r0, [r0]
	ldr r3, _021F2370 ; =sub_0204C45C
	bx r3
	nop
_021F2370: .word sub_0204C45C
	thumb_func_end sub_021F2368

	thumb_func_start ovy271_21f2374
ovy271_21f2374: ; 0x021F2374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_0204C468
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0202B330
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f2374

	thumb_func_start sub_021F238C
sub_021F238C: ; 0x021F238C
	ldr r0, [r0]
	ldr r3, _021F2394 ; =sub_0204C47C
	bx r3
	nop
_021F2394: .word sub_0204C47C
	thumb_func_end sub_021F238C

	thumb_func_start ovy271_21f2398
ovy271_21f2398: ; 0x021F2398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	lsl r1, r4, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0204C378
	add r1, r4, #1
	lsl r1, r1, #0x18
	ldr r0, [r5, #4]
	lsr r1, r1, #0x18
	bl sub_0202B378
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f2398

	thumb_func_start ovy271_21f23b8
ovy271_21f23b8: ; 0x021F23B8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _021F2404 ; =0x021F7648
	add r6, r0, #0
	mov r0, #0
	mov r2, #0
	mov r3, #0xc
_021F23C6:
	add r4, r2, #0
	mul r4, r3
	ldrh r4, [r5, r4]
	add r2, r2, #1
	add r0, r0, r4
	cmp r2, #0xc
	blt _021F23C6
	add r5, r0, #0
	mov r2, #0x18
	ldr r0, _021F2408 ; =0x00000429
	mul r5, r2
	str r0, [sp]
	add r0, r1, #0
	ldr r3, _021F240C ; =0x021F7CD8
	add r1, r5, #4
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r5, #4
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r6]
	str r0, [r4]
	add r0, r4, #0
	bl ovy271_21f2418
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F2404: .word 0x021F7648
_021F2408: .word 0x00000429
_021F240C: .word 0x021F7CD8
	thumb_func_end ovy271_21f23b8

	thumb_func_start sub_021F2410
sub_021F2410: ; 0x021F2410
	ldr r3, _021F2414 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021F2414: .word GFL_HeapFree
	thumb_func_end sub_021F2410

	thumb_func_start ovy271_21f2418
ovy271_21f2418: ; 0x021F2418
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r5, [r0]
	mov r0, #0
	mov r7, #0
	str r0, [sp, #0x10]
_021F2426:
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	ldr r2, _021F24D0 ; =0x021F7648
	mul r1, r0
	ldrh r0, [r2, r1]
	add r3, r2, r1
	mov r6, #0
	str r0, [sp, #0xc]
	ldr r0, [r3, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bls _021F24C0
_021F2440:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r2, r0, r1
	add r1, r4, #4
	mov r0, #0xc
_021F2458:
	ldrh r3, [r2]
	add r2, r2, #2
	strh r3, [r1]
	add r1, r1, #2
	sub r0, r0, #1
	bne _021F2458
	ldrh r0, [r4, #0x1a]
	cmp r0, #5
	bhi _021F24B2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F2476: ; jump table
	.short _021F24B2 - _021F2476 - 2 ; case 0
	.short _021F2482 - _021F2476 - 2 ; case 1
	.short _021F2486 - _021F2476 - 2 ; case 2
	.short _021F2486 - _021F2476 - 2 ; case 3
	.short _021F2486 - _021F2476 - 2 ; case 4
	.short _021F24AE - _021F2476 - 2 ; case 5
_021F2482:
	ldr r0, [r5]
	b _021F24B4
_021F2486:
	sub r0, r0, #2
	str r0, [sp, #4]
	cmp r0, #4
	blo _021F2498
	ldr r0, _021F24D4 ; =0x021F7CE8
	ldr r2, _021F24D8 ; =0x021F7CEC
	mov r1, #0
	bl sub_0203CB80
_021F2498:
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021F24B6
	mov r0, #0x1a
	strh r0, [r4, #0xa]
	b _021F24B6
_021F24AE:
	ldr r0, [r5, #0x50]
	b _021F24B4
_021F24B2:
	mov r0, #1
_021F24B4:
	strh r0, [r4, #0x14]
_021F24B6:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r7, r7, #1
	cmp r6, r0
	blo _021F2440
_021F24C0:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0xc
	blt _021F2426
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F24D0: .word 0x021F7648
_021F24D4: .word 0x021F7CE8
_021F24D8: .word 0x021F7CEC
	thumb_func_end ovy271_21f2418

	thumb_func_start ovy271_21f24dc
ovy271_21f24dc: ; 0x021F24DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0xc
	blt _021F24F2
	ldr r0, _021F2530 ; =0x021F7CE8
	ldr r2, _021F2534 ; =0x021F7CF4
	mov r1, #0
	bl sub_0203CB80
_021F24F2:
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021F2538 ; =0x021F7648
	ldrh r0, [r0, r1]
	cmp r4, r0
	blo _021F250A
	ldr r0, _021F2530 ; =0x021F7CE8
	ldr r2, _021F253C ; =0x021F7D0C
	mov r1, #0
	bl sub_0203CB80
_021F250A:
	mov r1, #0
	mov r0, #0
	cmp r5, #0
	ble _021F2524
	ldr r7, _021F2538 ; =0x021F7648
	mov r2, #0xc
_021F2516:
	add r3, r0, #0
	mul r3, r2
	ldrh r3, [r7, r3]
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, r5
	blt _021F2516
_021F2524:
	add r1, r1, r4
	mov r0, #0x18
	add r2, r6, #4
	mul r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F2530: .word 0x021F7CE8
_021F2534: .word 0x021F7CF4
_021F2538: .word 0x021F7648
_021F253C: .word 0x021F7D0C
	thumb_func_end ovy271_21f24dc

	thumb_func_start ovy271_21f2540
ovy271_21f2540: ; 0x021F2540
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0xc
	blt _021F2552
	ldr r0, _021F2560 ; =0x021F7CE8
	ldr r2, _021F2564 ; =0x021F7CF4
	mov r1, #0
	bl sub_0203CB80
_021F2552:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021F2568 ; =0x021F7648
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_021F2560: .word 0x021F7CE8
_021F2564: .word 0x021F7CF4
_021F2568: .word 0x021F7648
	thumb_func_end ovy271_21f2540

	thumb_func_start ovy271_21f256c
ovy271_21f256c: ; 0x021F256C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	mov r4, #0
_021F2574:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy271_21f2540
	cmp r6, r0
	bhs _021F258A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy271_21f2540
	add r6, r0, #0
_021F258A:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F2574
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy271_21f256c

	thumb_func_start ovy271_21f2594
ovy271_21f2594: ; 0x021F2594
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xc
	blt _021F25A8
	ldr r0, _021F25B0 ; =0x021F7CE8
	ldr r2, _021F25B4 ; =0x021F7D30
	mov r1, #0
	bl sub_0203CB80
_021F25A8:
	lsl r0, r5, #1
	ldrh r0, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_021F25B0: .word 0x021F7CE8
_021F25B4: .word 0x021F7D30
	thumb_func_end ovy271_21f2594

	thumb_func_start ovy271_21f25b8
ovy271_21f25b8: ; 0x021F25B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xb
	add r7, r2, #0
	str r3, [sp, #8]
	bl ovy271_21f2594
	mov r1, #0
	cmp r0, #1
	blt _021F25DA
	cmp r0, #4
	bgt _021F25DA
	sub r6, r0, #1
	mov r1, #1
_021F25DA:
	cmp r1, #0
	beq _021F264E
	ldr r0, [r5]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021F264C
	ldr r0, [sp, #8]
	ldr r1, _021F2668 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GFL_WordSetSystemCreateDefault
	ldr r2, [r5]
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r3, r2, r6
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x20]
	mov r1, #0
	str r0, [sp, #0xc]
	bl sub_0202437C
	add r0, r4, #0
	mov r1, #3
	bl ovy271_21f2594
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0204898C
	add r4, r0, #0
	bl sub_020485F8
	ldr r1, [sp, #8]
	add r0, r0, #7
	bl GFL_StrBufCreate
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0xc]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	bl GFL_StrBufFree
	b _021F2660
_021F264C:
	b _021F264E
_021F264E:
	add r0, r4, #0
	mov r1, #3
	bl ovy271_21f2594
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0204898C
	add r5, r0, #0
_021F2660:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2668: .word 0x00007FFF
	thumb_func_end ovy271_21f25b8

	thumb_func_start ovy271_21f266c
ovy271_21f266c: ; 0x021F266C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x60
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021F2710 ; =0x021F7D50
	add r0, r5, #0
	mov r1, #0xfc
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xfc
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0xf4
	str r7, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021F26B8
	add r0, r4, #0
	add r0, #0xf8
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #1
	bne _021F26C0
	add r1, r4, #0
	add r1, #0xf8
	mov r0, #0
	str r0, [r1]
	b _021F26C0
_021F26B8:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf8
	str r1, [r0]
_021F26C0:
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #0
	mov r1, #2
	mov r2, #8
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	mov r0, #8
	mov r1, #0x40
	add r2, r5, #0
	bl sub_020241E4
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy271_21f2f34
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ovy271_21f2f34
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2710: .word 0x021F7D50
	thumb_func_end ovy271_21f266c

	thumb_func_start ovy271_21f2714
ovy271_21f2714: ; 0x021F2714
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ovy271_21f2fe4
	add r0, r4, #0
	mov r1, #1
	bl ovy271_21f2fe4
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy271_21f2714

	thumb_func_start ovy271_21f274c
ovy271_21f274c: ; 0x021F274C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r6, r1, #0
	mov r0, #0x89
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r5, r0, #0
	cmp r6, #0x1e
	bls _021F2764
	b _021F2B82
_021F2764:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F2770: ; jump table
	.short _021F27AE - _021F2770 - 2 ; case 0
	.short _021F27CE - _021F2770 - 2 ; case 1
	.short _021F27EE - _021F2770 - 2 ; case 2
	.short _021F280E - _021F2770 - 2 ; case 3
	.short _021F282E - _021F2770 - 2 ; case 4
	.short _021F284C - _021F2770 - 2 ; case 5
	.short _021F286A - _021F2770 - 2 ; case 6
	.short _021F2888 - _021F2770 - 2 ; case 7
	.short _021F28A6 - _021F2770 - 2 ; case 8
	.short _021F28C4 - _021F2770 - 2 ; case 9
	.short _021F28E2 - _021F2770 - 2 ; case 10
	.short _021F2900 - _021F2770 - 2 ; case 11
	.short _021F291E - _021F2770 - 2 ; case 12
	.short _021F293C - _021F2770 - 2 ; case 13
	.short _021F2978 - _021F2770 - 2 ; case 14
	.short _021F2996 - _021F2770 - 2 ; case 15
	.short _021F29F0 - _021F2770 - 2 ; case 16
	.short _021F29D2 - _021F2770 - 2 ; case 17
	.short _021F29B4 - _021F2770 - 2 ; case 18
	.short _021F295A - _021F2770 - 2 ; case 19
	.short _021F2A0E - _021F2770 - 2 ; case 20
	.short _021F2A2C - _021F2770 - 2 ; case 21
	.short _021F2A4A - _021F2770 - 2 ; case 22
	.short _021F2A68 - _021F2770 - 2 ; case 23
	.short _021F2A86 - _021F2770 - 2 ; case 24
	.short _021F2AC8 - _021F2770 - 2 ; case 25
	.short _021F2AE6 - _021F2770 - 2 ; case 26
	.short _021F2B22 - _021F2770 - 2 ; case 27
	.short _021F2B04 - _021F2770 - 2 ; case 28
	.short _021F2B40 - _021F2770 - 2 ; case 29
	.short _021F2B5E - _021F2770 - 2 ; case 30
_021F27AE:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r1, #0x26
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #3
_021F27CC:
	b _021F2B7C
_021F27CE:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x26
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #6
	b _021F27CC
_021F27EE:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x6b
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	b _021F27CC
_021F280E:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r1, #0x26
	mov r2, #2
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x27
_021F282A:
	mov r2, #2
	b _021F2B7C
_021F282E:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x26
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1a
	b _021F282A
_021F284C:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	b _021F2B7A
_021F286A:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x2d
	b _021F282A
_021F2888:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x2c
	b _021F282A
_021F28A6:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x2b
	b _021F282A
_021F28C4:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x61
	b _021F2B7A
_021F28E2:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x63
	b _021F282A
_021F2900:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x64
	b _021F282A
_021F291E:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x65
	b _021F282A
_021F293C:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x66
	b _021F282A
_021F295A:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x6b
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	b _021F282A
_021F2978:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x62
	b _021F282A
_021F2996:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x67
	b _021F2B7A
_021F29B4:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x68
	b _021F282A
_021F29D2:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x69
	b _021F282A
_021F29F0:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6a
	b _021F282A
_021F2A0E:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1f
	b _021F2B7A
_021F2A2C:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1d
	b _021F2B7A
_021F2A4A:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	b _021F2B7A
_021F2A68:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0xe
	b _021F2B7A
_021F2A86:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #6
	b _021F2B7A
_021F2AC8:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1b
	b _021F282A
_021F2AE6:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1e
	b _021F2B7A
_021F2B04:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1c
	b _021F2B7A
_021F2B22:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x20
	b _021F2B7A
_021F2B40:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #0x26
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x12
	b _021F2B7A
_021F2B5E:
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r1, #0x21
	mov r2, #5
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x2f
_021F2B7A:
	mov r2, #5
_021F2B7C:
	mov r3, #0
	bl sub_0204AF50
_021F2B82:
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy271_21f274c

	thumb_func_start ovy271_21f2b8c
ovy271_21f2b8c: ; 0x021F2B8C
	push {r3, lr}
	cmp r1, #0x1e
	bhi _021F2C3A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2B9E: ; jump table
	.short _021F2BF6 - _021F2B9E - 2 ; case 0
	.short _021F2C04 - _021F2B9E - 2 ; case 1
	.short _021F2C12 - _021F2B9E - 2 ; case 2
	.short _021F2C2E - _021F2B9E - 2 ; case 3
	.short _021F2C2E - _021F2B9E - 2 ; case 4
	.short _021F2C20 - _021F2B9E - 2 ; case 5
	.short _021F2C2E - _021F2B9E - 2 ; case 6
	.short _021F2C2E - _021F2B9E - 2 ; case 7
	.short _021F2C2E - _021F2B9E - 2 ; case 8
	.short _021F2C20 - _021F2B9E - 2 ; case 9
	.short _021F2C2E - _021F2B9E - 2 ; case 10
	.short _021F2C2E - _021F2B9E - 2 ; case 11
	.short _021F2C2E - _021F2B9E - 2 ; case 12
	.short _021F2C2E - _021F2B9E - 2 ; case 13
	.short _021F2C3A - _021F2B9E - 2 ; case 14
	.short _021F2C20 - _021F2B9E - 2 ; case 15
	.short _021F2C2E - _021F2B9E - 2 ; case 16
	.short _021F2C2E - _021F2B9E - 2 ; case 17
	.short _021F2C2E - _021F2B9E - 2 ; case 18
	.short _021F2C2E - _021F2B9E - 2 ; case 19
	.short _021F2C20 - _021F2B9E - 2 ; case 20
	.short _021F2C20 - _021F2B9E - 2 ; case 21
	.short _021F2C20 - _021F2B9E - 2 ; case 22
	.short _021F2C20 - _021F2B9E - 2 ; case 23
	.short _021F2BDC - _021F2B9E - 2 ; case 24
	.short _021F2C2E - _021F2B9E - 2 ; case 25
	.short _021F2C20 - _021F2B9E - 2 ; case 26
	.short _021F2C20 - _021F2B9E - 2 ; case 27
	.short _021F2C20 - _021F2B9E - 2 ; case 28
	.short _021F2C20 - _021F2B9E - 2 ; case 29
	.short _021F2C20 - _021F2B9E - 2 ; case 30
_021F2BDC:
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	bl GFL_BGSysLoadScr
	mov r0, #5
	bl sub_02045738
	mov r0, #5
	bl GFL_BGSysLoadScr
	pop {r3, pc}
_021F2BF6:
	mov r0, #3
	bl sub_02045738
	mov r0, #3
	bl GFL_BGSysLoadScr
	pop {r3, pc}
_021F2C04:
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl GFL_BGSysLoadScr
	pop {r3, pc}
_021F2C12:
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	bl GFL_BGSysLoadScr
	pop {r3, pc}
_021F2C20:
	mov r0, #5
	bl sub_02045738
	mov r0, #5
	bl GFL_BGSysLoadScr
	pop {r3, pc}
_021F2C2E:
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	bl GFL_BGSysLoadScr
_021F2C3A:
	pop {r3, pc}
	thumb_func_end ovy271_21f2b8c

	thumb_func_start ovy271_21f2c3c
ovy271_21f2c3c: ; 0x021F2C3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	add r1, r6, #0
	mov r0, #0xc
	add r1, #8
	mul r0, r7
	add r4, r1, r0
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0xb0
	str r0, [sp, #0xc]
	lsl r0, r7, #2
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	add r5, r2, #0
	cmp r0, #0
	beq _021F2C6E
	ldr r0, _021F2EAC ; =0x021F7D5C
	ldr r2, _021F2EB0 ; =0x021F7D60
	mov r1, #0
	bl sub_0203CB80
_021F2C6E:
	cmp r7, #0xd
	bls _021F2C74
	b _021F2E9E
_021F2C74:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2C80: ; jump table
	.short _021F2CE0 - _021F2C80 - 2 ; case 0
	.short _021F2CF8 - _021F2C80 - 2 ; case 1
	.short _021F2D1C - _021F2C80 - 2 ; case 2
	.short _021F2D34 - _021F2C80 - 2 ; case 3
	.short _021F2C9C - _021F2C80 - 2 ; case 4
	.short _021F2CB4 - _021F2C80 - 2 ; case 5
	.short _021F2D58 - _021F2C80 - 2 ; case 6
	.short _021F2DA0 - _021F2C80 - 2 ; case 7
	.short _021F2D7C - _021F2C80 - 2 ; case 8
	.short _021F2E32 - _021F2C80 - 2 ; case 9
	.short _021F2E4A - _021F2C80 - 2 ; case 10
	.short _021F2DB8 - _021F2C80 - 2 ; case 11
	.short _021F2DFA - _021F2C80 - 2 ; case 12
	.short _021F2E6E - _021F2C80 - 2 ; case 13
_021F2C9C:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x24
	mov r2, #0
	mov r3, #0
	b _021F2CCA
_021F2CB4:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x24
	mov r2, #0
	mov r3, #1
_021F2CCA:
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0x15
	mov r2, #0x14
_021F2CD6:
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4]
	b _021F2E98
_021F2CE0:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x22
	mov r2, #0
	mov r3, #0
	b _021F2D0E
_021F2CF8:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x22
	mov r2, #0
	mov r3, #1
_021F2D0E:
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #9
	mov r2, #0xa
	b _021F2CD6
_021F2D1C:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x3f
	mov r2, #0
	mov r3, #0
	b _021F2D4A
_021F2D34:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x3f
	mov r2, #0
	mov r3, #1
_021F2D4A:
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0x3d
	mov r2, #0x3e
	b _021F2CD6
_021F2D58:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	mov r2, #0
	str r1, [r4, #8]
	mov r1, #0x23
	mov r3, #1
	add r7, r0, #0
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #7
	mov r2, #8
	b _021F2E6C
_021F2D7C:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x56
	mov r2, #0
	mov r3, #1
_021F2D92:
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0x55
	mov r2, #0x54
	b _021F2E6C
_021F2DA0:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x56
	mov r2, #0
	mov r3, #0
	b _021F2D92
_021F2DB8:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r6, r0, #0
	str r5, [sp, #8]
	mov r1, #0x13
	mov r2, #1
	mov r3, #0x80
	bl Oam_LoadNCLRFile
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	mov r3, #1
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0x11
_021F2DEE:
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4]
	add r0, r6, #0
	b _021F2E9A
_021F2DFA:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r6, r0, #0
	str r5, [sp, #8]
	mov r1, #0x33
	mov r2, #1
	mov r3, #0xa0
	bl Oam_LoadNCLRFile
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #0x32
	mov r2, #0
	mov r3, #1
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0x30
	mov r2, #0x31
	b _021F2DEE
_021F2E32:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x36
	mov r2, #0
	mov r3, #0
	b _021F2E60
_021F2E4A:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6, #4]
	add r7, r0, #0
	str r1, [r4, #8]
	str r5, [sp]
	mov r1, #0x36
	mov r2, #0
	mov r3, #1
_021F2E60:
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0x34
	mov r2, #0x35
_021F2E6C:
	b _021F2CD6
_021F2E6E:
	mov r0, #0x89
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	ldr r1, [r6]
	add r7, r0, #0
	str r1, [r4, #8]
	mov r1, #0x29
	mov r2, #0x2a
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0x25
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #4]
_021F2E98:
	add r0, r7, #0
_021F2E9A:
	bl GFL_ArcToolFree
_021F2E9E:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r2, #1
	str r2, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F2EAC: .word 0x021F7D5C
_021F2EB0: .word 0x021F7D60
	thumb_func_end ovy271_21f2c3c

	thumb_func_start ovy271_21f2eb4
ovy271_21f2eb4: ; 0x021F2EB4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r1, r6, #0
	mov r0, #0xc
	add r1, #8
	mul r0, r5
	add r4, r1, r0
	cmp r5, #0xd
	bhi _021F2F04
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2ED4: ; jump table
	.short _021F2EF8 - _021F2ED4 - 2 ; case 0
	.short _021F2EF8 - _021F2ED4 - 2 ; case 1
	.short _021F2EF8 - _021F2ED4 - 2 ; case 2
	.short _021F2EF8 - _021F2ED4 - 2 ; case 3
	.short _021F2F04 - _021F2ED4 - 2 ; case 4
	.short _021F2F04 - _021F2ED4 - 2 ; case 5
	.short _021F2EF8 - _021F2ED4 - 2 ; case 6
	.short _021F2EF8 - _021F2ED4 - 2 ; case 7
	.short _021F2EF8 - _021F2ED4 - 2 ; case 8
	.short _021F2EF8 - _021F2ED4 - 2 ; case 9
	.short _021F2EF8 - _021F2ED4 - 2 ; case 10
	.short _021F2EF0 - _021F2ED4 - 2 ; case 11
	.short _021F2EF0 - _021F2ED4 - 2 ; case 12
	.short _021F2EF8 - _021F2ED4 - 2 ; case 13
_021F2EF0:
	ldr r0, [r4, #8]
	bl sub_0204BCD0
	b _021F2EF8
_021F2EF8:
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4]
	bl sub_0204BE64
_021F2F04:
	lsl r0, r5, #2
	add r0, r6, r0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy271_21f2eb4

	thumb_func_start ovy271_21f2f10
ovy271_21f2f10: ; 0x021F2F10
	push {r4, r5}
	add r4, r0, #0
	add r4, #0xb0
	lsl r3, r1, #2
	ldr r5, [r4, r3]
	cmp r5, #0
	beq _021F2F2E
	mov r5, #0xc
	mul r5, r1
	add r5, r0, r5
	add r5, #8
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
_021F2F2E:
	ldr r0, [r4, r3]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy271_21f2f10

	thumb_func_start ovy271_21f2f34
ovy271_21f2f34: ; 0x021F2F34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x89
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3108
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	lsl r1, r7, #2
	str r0, [r5, r1]
	cmp r7, #0
	bne _021F2FA2
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3134
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r5, #0xf8
	ldr r0, [r5]
	bl ovy271_21f3160
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r2, #0
	b _021F2FD2
_021F2FA2:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3134
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r2, #4
	mov r3, #0
	str r4, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r5, #0xf8
	ldr r0, [r5]
	bl ovy271_21f3160
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r2, #4
_021F2FD2:
	mov r3, #7
	lsl r3, r3, #6
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f2f34

	thumb_func_start ovy271_21f2fe4
ovy271_21f2fe4: ; 0x021F2FE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	mov r0, #0
	mvn r0, r0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f2fe4

	thumb_func_start sub_021F2FF8
sub_021F2FF8: ; 0x021F2FF8
	add r0, #0xe8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021F2FF8

	thumb_func_start sub_021F3000
sub_021F3000: ; 0x021F3000
	add r0, #0xec
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021F3000

	thumb_func_start sub_021F3008
sub_021F3008: ; 0x021F3008
	add r0, #0xf0
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021F3008

	thumb_func_start sub_021F3010
sub_021F3010: ; 0x021F3010
	add r0, #0xf8
	ldr r0, [r0]
	ldr r3, _021F3018 ; =ovy271_21f318c
	bx r3
	.align 2, 0
_021F3018: .word ovy271_21f318c
	thumb_func_end sub_021F3010
_021F301C:
	.byte 0xF8, 0x30, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021F3024
sub_021F3024: ; 0x021F3024
	add r0, #0xf8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021F3024

	thumb_func_start ovy271_21f302c
ovy271_21f302c: ; 0x021F302C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x89
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3108
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #2
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3108
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #3
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3134
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3134
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #1
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ovy271_21f3160
	add r2, r0, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r5, #0xf8
	ldr r0, [r5]
	bl ovy271_21f3160
	add r2, r0, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #1
	str r4, [sp, #8]
	bl ovy271_21f5700
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f302c

	thumb_func_start ovy271_21f3108
ovy271_21f3108: ; 0x021F3108
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #8
	blo _021F311A
	ldr r0, _021F3128 ; =0x021F7D5C
	ldr r2, _021F312C ; =0x021F7D84
	mov r1, #0
	bl sub_0203CB80
_021F311A:
	ldr r0, _021F3130 ; =0x021F7718
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_021F3128: .word 0x021F7D5C
_021F312C: .word 0x021F7D84
_021F3130: .word 0x021F7718
	thumb_func_end ovy271_21f3108

	thumb_func_start ovy271_21f3134
ovy271_21f3134: ; 0x021F3134
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #8
	blo _021F3146
	ldr r0, _021F3154 ; =0x021F7D5C
	ldr r2, _021F3158 ; =0x021F7DA8
	mov r1, #0
	bl sub_0203CB80
_021F3146:
	ldr r0, _021F315C ; =0x021F76F8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_021F3154: .word 0x021F7D5C
_021F3158: .word 0x021F7DA8
_021F315C: .word 0x021F76F8
	thumb_func_end ovy271_21f3134

	thumb_func_start ovy271_21f3160
ovy271_21f3160: ; 0x021F3160
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #8
	blo _021F3172
	ldr r0, _021F3180 ; =0x021F7D5C
	ldr r2, _021F3184 ; =0x021F7DCC
	mov r1, #0
	bl sub_0203CB80
_021F3172:
	ldr r0, _021F3188 ; =0x021F76D8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_021F3180: .word 0x021F7D5C
_021F3184: .word 0x021F7DCC
_021F3188: .word 0x021F76D8
	thumb_func_end ovy271_21f3160

	thumb_func_start ovy271_21f318c
ovy271_21f318c: ; 0x021F318C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #8
	blo _021F319E
	ldr r0, _021F31AC ; =0x021F7D5C
	ldr r2, _021F31B0 ; =0x021F7DF0
	mov r1, #0
	bl sub_0203CB80
_021F319E:
	ldr r0, _021F31B4 ; =0x021F7738
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_021F31AC: .word 0x021F7D5C
_021F31B0: .word 0x021F7DF0
_021F31B4: .word 0x021F7738
	thumb_func_end ovy271_21f318c

	thumb_func_start ovy271_21f31b8
ovy271_21f31b8: ; 0x021F31B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F3250 ; =0x000001D5
	add r7, r2, #0
	str r1, [sp, #4]
	str r0, [sp]
	ldr r3, _021F3254 ; =0x021F7E10
	add r0, r7, #0
	mov r1, #0x10
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	cmp r5, #0
	beq _021F31E6
	cmp r5, #1
	beq _021F31EA
	b _021F31EC
_021F31E6:
	ldr r6, _021F3258 ; =0x021F7794
	b _021F31EC
_021F31EA:
	ldr r6, _021F325C ; =0x021F77C4
_021F31EC:
	ldr r1, _021F3260 ; =0x04000050
	mov r2, #0
	strh r2, [r1]
	ldr r0, _021F3264 ; =0x04001050
	sub r1, #0x50
	strh r2, [r0]
	ldr r3, [r1]
	ldr r2, _021F3268 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	add r0, r6, #0
	bl GFL_BGSysSetVRAMBanks
	ldr r0, [sp, #4]
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy271_21f32f8
	add r0, r4, #4
	add r1, r6, #0
	add r2, r7, #0
	bl ovy271_21f339c
	ldr r0, _021F326C ; =ovy271_21f32e4
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3250: .word 0x000001D5
_021F3254: .word 0x021F7E10
_021F3258: .word 0x021F7794
_021F325C: .word 0x021F77C4
_021F3260: .word 0x04000050
_021F3264: .word 0x04001050
_021F3268: .word 0xFFFF1FFF
_021F326C: .word ovy271_21f32e4
	thumb_func_end ovy271_21f31b8

	thumb_func_start ovy271_21f3270
ovy271_21f3270: ; 0x021F3270
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy271_21f33dc
	add r0, r4, #0
	bl ovy271_21f3358
	bl sub_020232D8
	ldr r5, _021F32B8 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021F32BC ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021F32C0 ; =0xFFFF1FFF
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
_021F32B8: .word 0x04000050
_021F32BC: .word 0x04001050
_021F32C0: .word 0xFFFF1FFF
	thumb_func_end ovy271_21f3270

	thumb_func_start ovy271_21f32c4
ovy271_21f32c4: ; 0x021F32C4
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021F33F8
	add r0, r4, #0
	bl sub_021F3390
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f32c4

	thumb_func_start sub_021F32D8
sub_021F32D8: ; 0x021F32D8
	ldr r3, _021F32E0 ; =sub_021F3408
	add r0, r0, #4
	bx r3
	nop
_021F32E0: .word sub_021F3408
	thumb_func_end sub_021F32D8

	thumb_func_start ovy271_21f32e4
ovy271_21f32e4: ; 0x021F32E4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021F3394
	add r0, r4, #4
	bl sub_021F3400
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f32e4

	thumb_func_start ovy271_21f32f8
ovy271_21f32f8: ; 0x021F32F8
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
	ldr r0, _021F3350 ; =0x021F7758
	bl GFL_BGSysSetLCDConfig
	ldr r7, _021F3354 ; =0x021F77F4
_021F331A:
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
	cmp r4, #7
	blo _021F331A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F3350: .word 0x021F7758
_021F3354: .word 0x021F77F4
	thumb_func_end ovy271_21f32f8

	thumb_func_start ovy271_21f3358
ovy271_21f3358: ; 0x021F3358
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021F338C ; =0x021F77F4
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021F3362:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blo _021F3362
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F338C: .word 0x021F77F4
	thumb_func_end ovy271_21f3358

	thumb_func_start sub_021F3390
sub_021F3390: ; 0x021F3390
	bx lr
	.align 2, 0
	thumb_func_end sub_021F3390

	thumb_func_start sub_021F3394
sub_021F3394: ; 0x021F3394
	ldr r3, _021F3398 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021F3398: .word sub_02045A5C
	thumb_func_end sub_021F3394

	thumb_func_start ovy271_21f339c
ovy271_21f339c: ; 0x021F339C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021F33D8 ; =0x021F7778
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
_021F33D8: .word 0x021F7778
	thumb_func_end ovy271_21f339c

	thumb_func_start ovy271_21f33dc
ovy271_21f33dc: ; 0x021F33DC
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
	thumb_func_end ovy271_21f33dc

	thumb_func_start sub_021F33F8
sub_021F33F8: ; 0x021F33F8
	ldr r3, _021F33FC ; =sub_0204B794
	bx r3
	.align 2, 0
_021F33FC: .word sub_0204B794
	thumb_func_end sub_021F33F8

	thumb_func_start sub_021F3400
sub_021F3400: ; 0x021F3400
	ldr r3, _021F3404 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021F3404: .word sub_0204B7C8
	thumb_func_end sub_021F3400

	thumb_func_start sub_021F3408
sub_021F3408: ; 0x021F3408
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F3408

	thumb_func_start ovy271_21f340c
ovy271_21f340c: ; 0x021F340C
	push {r4, r5, r6, lr}
	ldr r4, _021F3438 ; =0x021F77F4
	mov r5, #0
	mov r6, #0x2c
_021F3414:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	cmp r0, #4
	bhs _021F3426
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
_021F3426:
	add r5, r5, #1
	cmp r5, #7
	blo _021F3414
	mov r0, #1
	mov r1, #0
	mov r2, #1
	bl GX_SetGraphicsMode
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F3438: .word 0x021F77F4
	thumb_func_end ovy271_21f340c

	thumb_func_start ovy271_21f343c
ovy271_21f343c: ; 0x021F343C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021F3494 ; =0x04000050
	mov r4, #0
	strh r4, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _021F3498 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl GX_SetGraphicsMode
	ldr r7, _021F349C ; =0x021F77F4
_021F345A:
	mov r0, #0x2c
	mul r0, r4
	ldr r5, [r7, r0]
	add r6, r7, r0
	cmp r5, #4
	bhs _021F347E
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
_021F347E:
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	blo _021F345A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F3494: .word 0x04000050
_021F3498: .word 0xFFFF1FFF
_021F349C: .word 0x021F77F4
	thumb_func_end ovy271_21f343c

	thumb_func_start ovy271_21f34a0
ovy271_21f34a0: ; 0x021F34A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #0xc]
	add r5, r0, #0
	str r3, [sp, #0x10]
	mov r0, #0x5f
	add r7, r1, #0
	add r6, sp, #0x28
	str r0, [sp]
	ldrh r0, [r6, #0xc]
	ldr r3, _021F352C ; =0x021F7E20
	mov r1, #0x24
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [r4, #8]
	strh r5, [r4, #0x16]
	ldrh r1, [r6, #0xc]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r4, #0x10]
	ldrb r0, [r6]
	add r1, r7, #0
	str r0, [sp]
	ldrb r0, [r6, #4]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsr r0, r0, #0x18
	bl BmpWin_CreateDynamic
	str r0, [r4, #0xc]
	str r0, [r4]
	mov r1, #0
	strb r1, [r4, #4]
	bl BmpWin_GetBitmap
	ldrh r1, [r4, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r5, [r4, #0xc]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl BmpWin_FlushMap
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F352C: .word 0x021F7E20
	thumb_func_end ovy271_21f34a0

	thumb_func_start ovy271_21f3530
ovy271_21f3530: ; 0x021F3530
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020484B4
	ldr r0, [r4, #0xc]
	bl BmpWin_Free
	ldr r0, [r4, #0x10]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f3530

	thumb_func_start ovy271_21f3550
ovy271_21f3550: ; 0x021F3550
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r2, r0, #0
	add r1, r5, #0
	str r4, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	add r1, #0x1c
	bl ovy271_21f366c
	ldr r0, [r5]
	ldr r6, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r6, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f3550

	thumb_func_start ovy271_21f35c0
ovy271_21f35c0: ; 0x021F35C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	ldrh r1, [r5, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_02048580
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r2, r0, #0
	add r1, r5, #0
	str r4, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	add r1, #0x1c
	bl ovy271_21f366c
	ldr r0, [r5]
	ldr r7, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r7, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f35c0

	thumb_func_start ovy271_21f362c
ovy271_21f362c: ; 0x021F362C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _021F3654
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021F3654
	ldr r0, [r5]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #4]
_021F3654:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _021F365E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F365E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f362c

	thumb_func_start sub_021F3664
sub_021F3664: ; 0x021F3664
	str r3, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	thumb_func_end sub_021F3664

	thumb_func_start ovy271_21f366c
ovy271_21f366c: ; 0x021F366C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r4, [sp, #0x1c]
	cmp r0, #0
	beq _021F3680
	cmp r0, #1
	beq _021F368A
	pop {r3, r4, r5, r6, r7, pc}
_021F3680:
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F368A:
	add r0, r7, #0
	bl sub_02046EF8
	lsr r6, r0, #1
	add r0, r7, #0
	bl sub_02046EFC
	lsr r7, r0, #1
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r7, r0
	ldr r0, [r5]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f366c

	thumb_func_start ovy271_21f36c4
ovy271_21f36c4: ; 0x021F36C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r0, #0
	ldr r0, [r7, #4]
	str r1, [sp, #0xc]
	lsl r5, r0, #2
	ldr r0, _021F39E4 ; =0x000001A1
	add r5, #0x8c
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021F39E8 ; =0x021F7E20
	add r1, r5, #0
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	add r5, r7, #0
	add r3, r4, #0
	mov r2, #5
_021F36F2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F36F2
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, [r7, #4]
	ldrb r1, [r7, #0xe]
	strh r0, [r4, #0x3e]
	ldrb r0, [r7, #0xb]
	blx sub_0208D65C
	add r1, r4, #0
	add r1, #0x44
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x44
	ldrh r2, [r0]
	ldr r1, [r7, #4]
	cmp r2, r1
	ble _021F371E
	add r2, r1, #0
_021F371E:
	add r0, r4, #0
	add r0, #0x44
	strh r2, [r0]
	ldr r2, [r7, #0x24]
	cmp r2, #0
	beq _021F373A
	ldrh r1, [r2]
	add r0, r4, #0
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r2, #2]
	add r0, #0x40
	strh r1, [r0]
_021F373A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021F37DA
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	mov r5, #0
	cmp r0, #0
	ble _021F37A2
	add r6, r5, #0
_021F374E:
	cmp r5, #0xa
	blt _021F375C
	ldr r0, _021F39EC ; =0x021F7E2C
	ldr r2, _021F39F0 ; =0x021F7E30
	add r1, r6, #0
	bl sub_0203CB80
_021F375C:
	ldrb r0, [r4, #8]
	lsl r1, r5, #2
	lsl r2, r0, #3
	add r0, r4, r1
	add r0, #0x5e
	strb r2, [r0]
	ldrb r2, [r4, #0xe]
	ldrb r0, [r4, #9]
	mul r2, r5
	add r0, r0, r2
	lsl r2, r0, #3
	add r0, r4, r1
	add r0, #0x5c
	strb r2, [r0]
	ldrb r2, [r4, #8]
	ldrb r0, [r4, #0xa]
	add r5, r5, #1
	add r0, r2, r0
	lsl r2, r0, #3
	add r0, r4, r1
	add r0, #0x5f
	strb r2, [r0]
	ldrb r2, [r4, #0xe]
	ldrb r0, [r4, #9]
	mul r2, r5
	add r0, r0, r2
	lsl r2, r0, #3
	add r0, r4, r1
	add r0, #0x5d
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r5, r0
	blt _021F374E
_021F37A2:
	cmp r5, #0xa
	blt _021F37B0
	ldr r0, _021F39EC ; =0x021F7E2C
	ldr r2, _021F39F0 ; =0x021F7E30
	mov r1, #0
	bl sub_0203CB80
_021F37B0:
	lsl r2, r5, #2
	add r0, r4, r2
	mov r1, #0xff
	add r0, #0x5e
	strb r1, [r0]
	add r0, r4, r2
	add r0, #0x5c
	strb r1, [r0]
	add r0, r4, r2
	add r0, #0x5f
	strb r1, [r0]
	add r0, r4, r2
	add r0, #0x5d
	strb r1, [r0]
	ldr r0, _021F39F4 ; =0x021F3DA5
	str r0, [r4, #0x50]
	ldr r0, _021F39F8 ; =0x021F3EA9
	str r0, [r4, #0x54]
	ldr r0, _021F39FC ; =ovy271_21f3ecc
	str r0, [r4, #0x58]
	b _021F3802
_021F37DA:
	cmp r0, #1
	bne _021F3802
	ldr r0, _021F3A00 ; =ovy271_21f3df4
	str r0, [r4, #0x50]
	ldr r0, _021F3A04 ; =0x021F3EBD
	str r0, [r4, #0x54]
	ldr r0, _021F3A08 ; =0x021F3F25
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F3802
	add r3, r4, #0
	add r3, #0x40
	ldrh r3, [r3]
	ldr r2, _021F3A0C ; =0x021F7964
	mov r1, #5
	lsl r3, r3, #3
	add r2, r2, r3
	bl ovy271_21f4678
_021F3802:
	ldrb r0, [r7, #0xb]
	ldrb r1, [r7, #8]
	ldrb r2, [r7, #9]
	str r0, [sp]
	ldrb r0, [r7, #0xc]
	ldrb r3, [r7, #0xa]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r7, #0xd]
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x38]
	bl BmpWin_FlushMap
	ldr r0, [r4, #0x38]
	bl sub_020484D4
	bl sub_02045B7C
	add r0, sp, #0x24
	mov r1, #0
	mov r2, #8
	mov r5, #0
	mov r6, #8
	blx MI_CpuFill8
	ldrb r0, [r7, #0xd]
	cmp r0, #4
	ldr r0, [r4, #0x14]
	bhs _021F3864
	ldr r2, [sp, #0xc]
	mov r1, #7
	bl ovy271_21f2c3c
	ldr r0, [r4, #0x14]
	mov r1, #7
	add r2, sp, #0x38
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F3860
	ldr r0, _021F39EC ; =0x021F7E2C
	ldr r2, _021F3A10 ; =0x021F7E48
	add r1, r5, #0
	bl sub_0203CB80
_021F3860:
	mov r2, #0
	b _021F3886
_021F3864:
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl ovy271_21f2c3c
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	add r2, sp, #0x38
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F3884
	ldr r0, _021F39EC ; =0x021F7E2C
	ldr r2, _021F3A10 ; =0x021F7E48
	add r1, r5, #0
	bl sub_0203CB80
_021F3884:
	mov r2, #1
_021F3886:
	mov r1, #0x80
	add r0, sp, #0x1c
	strh r1, [r0, #8]
	mov r5, #0
	strb r5, [r0, #0xe]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
_021F3896:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _021F38A6
	mov r1, #0x10
	cmp r5, #0
	beq _021F38A4
	mov r1, #0x80
_021F38A4:
	b _021F38AE
_021F38A6:
	mov r1, #0x40
	cmp r5, #0
	beq _021F38AE
	mov r1, #0xb8
_021F38AE:
	add r0, sp, #0x1c
	strh r1, [r0, #0xa]
	add r0, sp, #0x1c
	strh r5, [r0, #0xc]
	lsl r0, r5, #2
	add r6, r4, r0
	add r0, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r7, #0x18]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x38]
	bl Oam_CreateSprite
	str r0, [r6, #0x28]
	mov r1, #1
	bl Oam_EnableOamAnim
	ldr r0, [r6, #0x28]
	mov r1, #1
	bl sub_0204C318
	add r5, r5, #1
	cmp r5, #2
	blt _021F3896
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r5, #0
	bl sub_0204C124
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0x48
	add r0, sp, #0x1c
	strh r1, [r0, #2]
	mov r1, #5
	strh r1, [r0, #4]
	strb r5, [r0, #6]
	ldr r0, [r4, #0x14]
	mov r1, #6
	add r2, sp, #0x2c
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F3920
	ldr r0, _021F39EC ; =0x021F7E2C
	ldr r2, _021F3A10 ; =0x021F7E48
	add r1, r5, #0
	bl sub_0203CB80
_021F3920:
	mov r5, #2
_021F3922:
	mov r1, #0x18
	cmp r5, #2
	beq _021F392A
	mov r1, #0xe8
_021F392A:
	add r0, sp, #0x1c
	strh r1, [r0]
	lsl r0, r5, #2
	add r6, r4, r0
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x2c]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #0x28]
	bl sub_0204C318
	add r5, r5, #1
	cmp r5, #4
	blt _021F3922
	ldr r0, [r4, #0x14]
	bl sub_021F2FF8
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	bls _021F39B4
_021F3968:
	ldr r1, [r4]
	lsl r0, r5, #3
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021F39AC
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xe]
	ldr r3, [sp, #0xc]
	lsl r6, r5, #2
	mov r2, #0x20
	bl sub_02046E28
	add r1, r4, r6
	add r1, #0x8c
	str r0, [r1]
	add r0, r4, r6
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, _021F3A14 ; =0x00003DA0
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, r6
	add r0, #0x8c
	ldr r0, [r0]
	mov r2, #0
	bl sub_02021D28
_021F39AC:
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blo _021F3968
_021F39B4:
	add r1, r4, #0
	add r1, #0x42
	ldrh r1, [r1]
	add r0, r4, #0
	bl ovy271_21f3c74
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	ldr r1, [r7, #4]
	cmp r1, r0
	bhs _021F3A18
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4d
	strb r1, [r0]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x2c]
	mov r1, #0
	b _021F3A5A
	nop
_021F39E4: .word 0x000001A1
_021F39E8: .word 0x021F7E20
_021F39EC: .word 0x021F7E2C
_021F39F0: .word 0x021F7E30
_021F39F4: .word 0x021F3DA5
_021F39F8: .word 0x021F3EA9
_021F39FC: .word ovy271_21f3ecc
_021F3A00: .word ovy271_21f3df4
_021F3A04: .word 0x021F3EBD
_021F3A08: .word 0x021F3F25
_021F3A0C: .word 0x021F7964
_021F3A10: .word 0x021F7E48
_021F3A14: .word 0x00003DA0
_021F3A18:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x4d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F3A5E
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x28]
	bne _021F3A3A
	mov r1, #0
	b _021F3A3A
_021F3A3A:
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x42
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	ldr r2, [r4, #4]
	add r0, r1, r0
	cmp r2, r0
	ldr r0, [r4, #0x2c]
	bne _021F3A58
	mov r1, #0
	b _021F3A5A
_021F3A58:
	mov r1, #1
_021F3A5A:
	bl sub_0204C124
_021F3A5E:
	add r0, r4, #0
	bl ovy271_21f3ba4
	cmp r0, #0
	beq _021F3A7E
	mov r5, #2
	mov r6, #1
_021F3A6C:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x28]
	add r1, r6, #0
	bl Oam_EnableOamAnim
	add r5, r5, #1
	cmp r5, #4
	blt _021F3A6C
_021F3A7E:
	add r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f36c4

	thumb_func_start ovy271_21f3a84
ovy271_21f3a84: ; 0x021F3A84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F3A96
	mov r1, #0
	mov r2, #0
	bl ovy271_21f4678
_021F3A96:
	mov r5, #0
_021F3A98:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x28]
	bl Oam_RemoveOam
	add r5, r5, #1
	cmp r5, #4
	blt _021F3A98
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	bls _021F3AD2
_021F3AB0:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _021F3ACA
	ldr r2, [r4]
	lsl r1, r5, #3
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021F3ACA
	bl GFL_BitmapFree
_021F3ACA:
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blo _021F3AB0
_021F3AD2:
	ldr r0, [r4, #0x38]
	bl sub_020484B4
	ldr r0, [r4, #0x38]
	bl BmpWin_Free
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	ldr r0, [r4, #0x14]
	bhs _021F3AEA
	mov r1, #7
	b _021F3AEC
_021F3AEA:
	mov r1, #8
_021F3AEC:
	bl ovy271_21f2eb4
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _021F3B08
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x40
	ldrh r1, [r0]
	ldr r0, [r4, #0x24]
	strh r1, [r0, #2]
_021F3B08:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f3a84

	thumb_func_start ovy271_21f3b10
ovy271_21f3b10: ; 0x021F3B10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy271_21f3ba4
	cmp r0, #0
	beq _021F3B98
	add r0, r4, #0
	bl ovy271_21f3cf0
	add r1, r4, #0
	add r1, #0x4c
	strb r0, [r1]
	mov r0, #0x4c
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _021F3B98
	ldr r2, [r4, #0x50]
	add r0, r4, #0
	blx r2
	cmp r0, #0
	beq _021F3B58
	ldr r5, _021F3BA0 ; =0x000006FE
	add r0, r5, #0
	bl sub_020062C4
	cmp r0, #0
	bne _021F3B4C
	add r0, r5, #0
	bl GFL_SndSEPlay
_021F3B4C:
	add r1, r4, #0
	add r1, #0x42
	ldrh r1, [r1]
	add r0, r4, #0
	bl ovy271_21f3c74
_021F3B58:
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F3B98
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x28]
	bne _021F3B72
	mov r1, #0
	b _021F3B74
_021F3B72:
	mov r1, #1
_021F3B74:
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x42
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	ldr r2, [r4, #4]
	add r0, r1, r0
	cmp r2, r0
	ldr r0, [r4, #0x2c]
	bne _021F3B92
	mov r1, #0
	b _021F3B94
_021F3B92:
	mov r1, #1
_021F3B94:
	bl sub_0204C124
_021F3B98:
	ldr r1, [r4, #0x58]
	add r0, r4, #0
	blx r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F3BA0: .word 0x000006FE
	thumb_func_end ovy271_21f3b10

	thumb_func_start ovy271_21f3ba4
ovy271_21f3ba4: ; 0x021F3BA4
	push {r3, lr}
	ldr r1, [r0, #0x54]
	blx r1
	pop {r3, pc}
	thumb_func_end ovy271_21f3ba4

	thumb_func_start sub_021F3BAC
sub_021F3BAC: ; 0x021F3BAC
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_021F3BAC

	thumb_func_start ovy271_21f3bb0
ovy271_21f3bb0: ; 0x021F3BB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	cmp r4, r0
	blo _021F3BC8
	ldr r0, _021F3BE8 ; =0x021F7E2C
	ldr r2, _021F3BEC ; =0x021F7E4C
	mov r1, #0
	bl sub_0203CB80
_021F3BC8:
	ldr r1, [r5]
	lsl r0, r4, #3
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F3BDC
	ldr r0, _021F3BE8 ; =0x021F7E2C
	ldr r2, _021F3BF0 ; =0x021F7E68
	mov r1, #0
	bl sub_0203CB80
_021F3BDC:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x8c
	str r6, [r0]
	pop {r4, r5, r6, pc}
	nop
_021F3BE8: .word 0x021F7E2C
_021F3BEC: .word 0x021F7E4C
_021F3BF0: .word 0x021F7E68
	thumb_func_end ovy271_21f3bb0

	thumb_func_start ovy271_21f3bf4
ovy271_21f3bf4: ; 0x021F3BF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r4, r0
	blo _021F3C0A
	ldr r0, _021F3C14 ; =0x021F7E2C
	ldr r2, _021F3C18 ; =0x021F7E90
	mov r1, #0
	bl sub_0203CB80
_021F3C0A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x8c
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F3C14: .word 0x021F7E2C
_021F3C18: .word 0x021F7E90
	thumb_func_end ovy271_21f3bf4

	thumb_func_start ovy271_21f3c1c
ovy271_21f3c1c: ; 0x021F3C1C
	push {r3, lr}
	cmp r1, #3
	bhi _021F3C4C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F3C2E: ; jump table
	.short _021F3C36 - _021F3C2E - 2 ; case 0
	.short _021F3C3C - _021F3C2E - 2 ; case 1
	.short _021F3C42 - _021F3C2E - 2 ; case 2
	.short _021F3C48 - _021F3C2E - 2 ; case 3
_021F3C36:
	add r0, #0x40
	ldrh r0, [r0]
	pop {r3, pc}
_021F3C3C:
	add r0, #0x42
	ldrh r0, [r0]
	pop {r3, pc}
_021F3C42:
	mov r1, #0x4c
	ldrsb r0, [r0, r1]
	pop {r3, pc}
_021F3C48:
	ldr r0, [r0, #4]
	pop {r3, pc}
_021F3C4C:
	ldr r0, _021F3C5C ; =0x021F7E2C
	ldr r2, _021F3C60 ; =0x021F7EAC
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	nop
_021F3C5C: .word 0x021F7E2C
_021F3C60: .word 0x021F7EAC
	thumb_func_end ovy271_21f3c1c
_021F3C64:
	.byte 0x01, 0x1C, 0x42, 0x31, 0x09, 0x88, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x75, 0x3C, 0x1F, 0x02

	thumb_func_start ovy271_21f3c74
ovy271_21f3c74: ; 0x021F3C74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r7, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r4, r7, #0
	add r0, r7, r0
	cmp r7, r0
	bge _021F3CE6
_021F3C96:
	ldr r0, [r5, #4]
	cmp r4, r0
	bhs _021F3CD8
	lsl r0, r4, #2
	str r0, [sp, #0x10]
	add r0, r5, r0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _021F3CD8
	ldrb r6, [r5, #0xe]
	ldr r0, [r5, #0x38]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	sub r0, r4, r7
	mul r0, r6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r5, #0xa]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r6, [sp, #0xc]
	add r0, r5, r0
	add r0, #0x8c
	ldr r0, [r0]
	bl ovy271_21f3d68
_021F3CD8:
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r4, r4, #1
	add r0, r7, r0
	cmp r4, r0
	blt _021F3C96
_021F3CE6:
	ldr r0, [r5, #0x38]
	bl BmpWin_FlushChar
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f3c74

	thumb_func_start ovy271_21f3cf0
ovy271_21f3cf0: ; 0x021F3CF0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F3D64 ; =0x021F7948
	mov r4, #0
	bl sub_0203D9C8
	sub r1, r4, #1
	cmp r0, r1
	beq _021F3D4E
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021F3D26
	add r0, r5, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0]
	ldr r0, [sp]
	add r5, #0x88
	strh r0, [r5]
	b _021F3D5C
_021F3D26:
	add r0, r5, #0
	add r0, #0x88
	ldrh r0, [r0]
	ldr r1, [sp]
	sub r0, r1, r0
	bpl _021F3D36
	neg r2, r0
	b _021F3D38
_021F3D36:
	add r2, r0, #0
_021F3D38:
	cmp r2, #8
	ble _021F3D5C
	cmp r0, #0
	bge _021F3D46
	mov r4, #0
	mvn r4, r4
	b _021F3D48
_021F3D46:
	mov r4, #1
_021F3D48:
	add r5, #0x88
	strh r1, [r5]
	b _021F3D5C
_021F3D4E:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021F3D5C
	add r5, #0x84
	str r4, [r5]
_021F3D5C:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F3D64: .word 0x021F7948
	thumb_func_end ovy271_21f3cf0

	thumb_func_start ovy271_21f3d68
ovy271_21f3d68: ; 0x021F3D68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02046EF4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02046EF4
	add r2, sp, #0x18
	ldrh r3, [r2, #8]
	add r1, r0, #0
	add r0, r3, #0
	mul r0, r4
	add r0, r5, r0
	ldrh r4, [r2, #4]
	ldrh r5, [r2]
	ldrh r2, [r2, #0xc]
	mul r4, r3
	add r4, r5, r4
	lsl r0, r0, #5
	lsl r4, r4, #5
	mul r2, r3
	add r0, r6, r0
	add r1, r1, r4
	lsl r2, r2, #5
	blx MIi_CpuCopy32
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f3d68
_021F3DA4:
	.byte 0x02, 0x1C, 0x42, 0x32, 0x13, 0x88, 0x00, 0x2B, 0x0D, 0xD0, 0x00, 0x22
	.byte 0xD2, 0x43, 0x91, 0x42, 0x09, 0xD1, 0x02, 0x1C, 0x42, 0x32, 0x12, 0x88, 0x09, 0x04, 0x09, 0x0C
	.byte 0x51, 0x18, 0x42, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x02, 0x1C, 0x44, 0x32, 0x12, 0x88
	.byte 0x9B, 0x18, 0x42, 0x68, 0x93, 0x42, 0x0B, 0xD2, 0x01, 0x29, 0x09, 0xD1, 0x02, 0x1C, 0x42, 0x32
	.byte 0x12, 0x88, 0x09, 0x04, 0x09, 0x0C, 0x51, 0x18, 0x42, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy271_21f3df4
ovy271_21f3df4: ; 0x021F3DF4
	push {r3, r4, r5, r6, r7, lr}
	add r2, r0, #0
	add r0, #0x44
	ldrh r5, [r0]
	add r6, r1, #0
	mov r4, #0
	sub r0, r5, #1
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	lsr r1, r0, #0x1f
	lsl r7, r0, #0x1f
	sub r7, r7, r1
	mov r0, #0x1f
	ror r7, r0
	add r0, r1, r7
	add r0, r3, r0
	cmp r6, #0
	ble _021F3E56
	add r1, r2, #0
	add r1, #0x40
	ldrh r1, [r1]
	cmp r0, r1
	bne _021F3E44
	add r0, r2, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r3, r0, r5
	ldr r0, [r2, #4]
	cmp r3, r0
	bhs _021F3E44
_021F3E32:
	add r0, r2, #0
	add r0, #0x42
	ldrh r1, [r0]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	add r0, r2, #0
	add r0, #0x42
	b _021F3E82
_021F3E44:
	add r0, r2, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r1, r0, r1
	ldr r0, [r2, #4]
	sub r0, r0, #1
	cmp r1, r0
	bhs _021F3E86
	b _021F3E72
_021F3E56:
	bge _021F3E86
	add r1, r2, #0
	add r1, #0x40
	ldrh r1, [r1]
	cmp r0, r1
	bne _021F3E6E
	add r0, r2, #0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F3E6E
	b _021F3E32
_021F3E6E:
	cmp r1, #0
	beq _021F3E86
_021F3E72:
	add r0, r2, #0
	add r0, #0x40
	ldrh r1, [r0]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	add r0, r2, #0
	add r0, #0x40
_021F3E82:
	strh r1, [r0]
	mov r4, #1
_021F3E86:
	cmp r4, #0
	beq _021F3EA0
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	beq _021F3EA0
	add r2, #0x40
	ldrh r2, [r2]
	ldr r3, _021F3EA4 ; =0x021F7964
	mov r1, #5
	lsl r2, r2, #3
	add r2, r3, r2
	bl ovy271_21f4678
_021F3EA0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F3EA4: .word 0x021F7964
	thumb_func_end ovy271_21f3df4
_021F3EA8:
	.byte 0x41, 0x68, 0x44, 0x30, 0x00, 0x88, 0x81, 0x42
	.byte 0x01, 0xD3, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x40, 0x68, 0x01, 0x28
	.byte 0x01, 0xD9, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f3ecc
ovy271_21f3ecc: ; 0x021F3ECC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r6, #0
	add r5, r0, #0
	mvn r6, r6
	add r0, #0x5c
	str r6, [r5, #0x48]
	bl sub_0203DA0C
	add r4, r0, #0
	cmp r4, r6
	beq _021F3F1C
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021F3F04
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	bl ovy271_21f4678
_021F3F04:
	ldr r0, _021F3F20 ; =0x00000703
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	ldr r1, [r5]
	add r0, r4, r0
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	str r0, [r5, #0x48]
_021F3F1C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F3F20: .word 0x00000703
	thumb_func_end ovy271_21f3ecc
_021F3F24:
	.byte 0x01, 0x1C, 0x40, 0x31, 0x0A, 0x88, 0x01, 0x1C, 0x42, 0x31, 0x09, 0x88
	.byte 0x03, 0x68, 0x51, 0x18, 0xC9, 0x00, 0x59, 0x18, 0x49, 0x68, 0x81, 0x64, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f3f40
ovy271_21f3f40: ; 0x021F3F40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	mov r6, #2
	bl ovy271_21f274c
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r4, [sp, #0xc]
	bl ovy271_21f34a0
	mov r1, #0xc
	strh r1, [r0, #0x14]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f3f40

	thumb_func_start ovy271_21f3f70
ovy271_21f3f70: ; 0x021F3F70
	push {r4, lr}
	add r4, r1, #0
	bl ovy271_21f3530
	add r0, r4, #0
	mov r1, #2
	bl ovy271_21f2b8c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f3f70

	thumb_func_start ovy271_21f3f84
ovy271_21f3f84: ; 0x021F3F84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_021F2FF8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021F3000
	add r1, r0, #0
	ldr r0, _021F3FAC ; =0x00003DAC
	add r2, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r7, #0
	bl ovy271_21f3550
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F3FAC: .word 0x00003DAC
	thumb_func_end ovy271_21f3f84

	thumb_func_start ovy271_21f3fb0
ovy271_21f3fb0: ; 0x021F3FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_021F2FF8
	add r2, r0, #0
	ldr r3, _021F3FCC ; =0x00003DAC
	add r0, r5, #0
	add r1, r4, #0
	bl ovy271_21f35c0
	pop {r3, r4, r5, pc}
	nop
_021F3FCC: .word 0x00003DAC
	thumb_func_end ovy271_21f3fb0

	thumb_func_start sub_021F3FD0
sub_021F3FD0: ; 0x021F3FD0
	ldr r3, _021F3FD4 ; =ovy271_21f362c
	bx r3
	.align 2, 0
_021F3FD4: .word ovy271_21f362c
	thumb_func_end sub_021F3FD0

	thumb_func_start ovy271_21f3fd8
ovy271_21f3fd8: ; 0x021F3FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r2, #0
	add r6, r1, #0
	str r2, [sp, #0x30]
	ldr r5, [sp, #0xb4]
	ldr r0, _021F4344 ; =0x00000541
	ldr r3, _021F4348 ; =0x021F7E20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x44
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	str r6, [r4, #0x1c]
	bl sub_021F2FF8
	str r0, [sp, #0x34]
	mov r0, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r5, [sp, #8]
	mov r1, #0
	bl sub_02034168
	str r0, [r4, #0x20]
	mov r1, #0
	mov r2, #1
	bl sub_02034358
	ldr r0, [r4, #0x1c]
	mov r1, #8
	add r2, r5, #0
	bl ovy271_21f274c
	add r0, r6, #0
	bl sub_021F3000
	str r0, [sp, #0x2c]
	add r0, r6, #0
	bl sub_021F3008
	ldr r1, _021F434C ; =0x021F79C4
	str r0, [sp, #0x28]
	ldr r0, [r1]
	str r0, [sp, #0x38]
	ldr r0, [r1, #4]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x74]
_021F405A:
	ldr r0, [sp, #0x30]
	ldr r1, _021F4350 ; =0x021F798C
	lsl r2, r0, #3
	ldr r0, _021F4350 ; =0x021F798C
	ldrb r1, [r1, r2]
	add r6, r0, r2
	ldr r0, [sp, #0x30]
	ldrb r2, [r6, #1]
	lsl r0, r0, #2
	str r0, [sp, #0x40]
	ldrb r0, [r6, #3]
	ldrb r3, [r6, #2]
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #1
	str r5, [sp, #0xc]
	bl ovy271_21f34a0
	ldr r1, [sp, #0x40]
	mov r2, #1
	str r0, [r4, r1]
	mov r1, #0
	mov r3, #0
	bl sub_021F3664
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x30]
	cmp r0, #6
	bls _021F409E
	b _021F41FC
_021F409E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F40AA: ; jump table
	.short _021F40B8 - _021F40AA - 2 ; case 0
	.short _021F4108 - _021F40AA - 2 ; case 1
	.short _021F41FC - _021F40AA - 2 ; case 2
	.short _021F413A - _021F40AA - 2 ; case 3
	.short _021F4180 - _021F40AA - 2 ; case 4
	.short _021F41FC - _021F40AA - 2 ; case 5
	.short _021F41B2 - _021F40AA - 2 ; case 6
_021F40B8:
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_0200DF68
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	ldr r1, [r6, #4]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_0200DF84
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x44]
	mov r1, #0
	bl sub_0202437C
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x44]
	bl GFL_StrBufFree
_021F4100:
	add r0, r6, #0
	bl GFL_StrBufFree
	b _021F4206
_021F4108:
	ldr r0, [sp, #0x10]
	bl sub_0200E0A8
	str r0, [sp, #0x48]
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [r6, #4]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x48]
	mov r1, #0
	bl sub_02024900
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	b _021F4100
_021F413A:
	ldr r0, [sp, #0x10]
	bl sub_0200DFE4
	str r0, [sp, #0x4c]
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [r6, #4]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x4c]
	mov r1, #0
	bl sub_020245E0
_021F4160:
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
_021F416A:
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x40]
	mov r1, #8
	ldr r0, [r4, r0]
	mov r2, #1
	mov r3, #0
	bl sub_021F3664
	b _021F4206
_021F4180:
	ldr r0, [sp, #0x10]
	bl sub_0200DFE4
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x10]
	bl sub_0200DFF8
	str r0, [sp, #0x54]
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [r6, #4]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	mov r1, #0
	bl sub_02024630
	b _021F4160
_021F41B2:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x90
	add r2, r5, #0
	bl sub_0200E00C
	add r6, r0, #0
	beq _021F41CA
	add r1, r5, #0
	bl sub_020485A4
	add r7, r0, #0
	b _021F416A
_021F41CA:
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp, #0x88]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x8c]
	ldr r0, [r4, #0x20]
	bl sub_020344B8
	ldr r0, [r4, #0x20]
	ldr r1, _021F4354 ; =0x00003DA0
	bl sub_020344C0
	add r0, sp, #0x88
	str r0, [sp]
	ldr r1, [sp, #0x40]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, r1]
	add r2, sp, #0x90
	ldr r1, [r1, #0xc]
	mov r3, #0
	bl sub_020342BC
	mov r0, #0
	str r0, [sp, #0x24]
	b _021F4206
_021F41FC:
	ldr r0, [sp, #0x2c]
	ldr r1, [r6, #4]
	bl sub_0204898C
	add r7, r0, #0
_021F4206:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021F4220
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x34]
	ldr r0, [r4, r0]
	ldr r3, _021F4354 ; =0x00003DA0
	add r1, r7, #0
	bl ovy271_21f35c0
	add r0, r7, #0
	bl GFL_StrBufFree
_021F4220:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #7
	bge _021F422C
	b _021F405A
_021F422C:
	ldr r0, [sp, #0x10]
	bl sub_0200DFD4
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x10]
	bl sub_0200DF94
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x10]
	bl sub_0200DFA4
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x10]
	bl sub_0200DFC4
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021F4310
	ldr r0, _021F4358 ; =0x00007FFF
	add r1, r5, #0
	and r1, r0
	add r0, r0, #1
	add r6, r1, #0
	orr r6, r0
	lsl r1, r6, #0x10
	mov r0, #7
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	bl sub_02021114
	add r1, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x80
	bl sub_0204BC48
	str r0, [r4, #0x2c]
	bl sub_0202111C
	str r0, [sp, #0x68]
	bl sub_02021190
	lsl r3, r6, #0x10
	add r2, r0, #0
	ldr r1, [sp, #0x68]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl Oam_LoadNCERFile
	str r0, [r4, #0x34]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x58]
	bl sub_02020F94
	add r1, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r6, sp, #0x80
	add r0, r6, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0x4b
	add r0, sp, #0x70
	strh r1, [r0, #0x10]
	mov r1, #0x40
	strh r1, [r0, #0x12]
	mov r1, #1
	strh r1, [r0, #0x14]
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	ldr r3, [r4, #0x34]
	bl Oam_CreateSprite
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x58]
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	mov r2, #0
	bl sub_0204C378
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0204C318
_021F4310:
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	beq _021F431C
	cmp r0, #1
	beq _021F43AA
	b _021F4408
_021F431C:
	ldr r0, [sp, #0x10]
	bl sub_0200DF84
	cmp r0, #0
	bne _021F4334
	mov r0, #0x14
	str r0, [sp, #0x1c]
	mov r0, #0x12
	mov r7, #4
	str r0, [sp, #0x20]
	mov r6, #0x13
	b _021F4340
_021F4334:
	mov r0, #0x17
	str r0, [sp, #0x1c]
	mov r0, #0x15
	mov r7, #6
	str r0, [sp, #0x20]
	mov r6, #0x16
_021F4340:
	ldr r2, _021F4358 ; =0x00007FFF
	b _021F435C
	.align 2, 0
_021F4344: .word 0x00000541
_021F4348: .word 0x021F7E20
_021F434C: .word 0x021F79C4
_021F4350: .word 0x021F798C
_021F4354: .word 0x00003DA0
_021F4358: .word 0x00007FFF
_021F435C:
	add r1, r5, #0
	and r1, r2
	add r2, r2, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0x1e
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r3, #0x1a
	str r0, [sp, #0x6c]
	str r5, [sp, #8]
	add r1, r7, #0
	mov r2, #0
	lsl r3, r3, #4
	bl Oam_LoadNCLRFile
	str r0, [r4, #0x38]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x20]
	add r2, r6, #0
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4, #0x40]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x6c]
	b _021F4404
_021F43AA:
	ldr r0, [sp, #0x10]
	bl sub_0200E0B8
	ldr r1, _021F444C ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	add r6, r0, #0
	mov r0, #0x1f
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	ldr r1, _021F4450 ; =0x021F7954
	mov r3, #0x1a
	ldrb r1, [r1, r6]
	add r7, r0, #0
	mov r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	lsl r3, r3, #4
	bl Oam_LoadNCLRFile
	str r0, [r4, #0x38]
	add r0, r7, #0
	mov r1, #0x41
	mov r2, #0x42
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4, #0x40]
	add r6, #0x31
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r4, #0x3c]
	add r0, r7, #0
_021F4404:
	bl GFL_ArcToolFree
_021F4408:
	add r7, sp, #0x78
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	mov r1, #0x30
	add r0, sp, #0x70
	strh r1, [r0, #8]
	mov r1, #0x40
	strh r1, [r0, #0xa]
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x40]
	bl Oam_CreateSprite
	str r0, [r4, #0x28]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F444C: .word 0x00007FFF
_021F4450: .word 0x021F7954
	thumb_func_end ovy271_21f3fd8

	thumb_func_start ovy271_21f4454
ovy271_21f4454: ; 0x021F4454
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021F4474
	bl Oam_RemoveOam
	ldr r0, [r5, #0x38]
	bl sub_0204BCD0
	ldr r0, [r5, #0x3c]
	bl sub_0204B98C
	ldr r0, [r5, #0x40]
	bl sub_0204BE64
_021F4474:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021F4490
	bl Oam_RemoveOam
	ldr r0, [r5, #0x2c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x30]
	bl sub_0204B98C
	ldr r0, [r5, #0x34]
	bl sub_0204BE64
_021F4490:
	mov r4, #0
	add r7, r4, #0
_021F4494:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F44A2
	bl ovy271_21f3530
	str r7, [r5, r6]
_021F44A2:
	add r4, r4, #1
	cmp r4, #7
	blt _021F4494
	ldr r0, [r5, #0x20]
	bl sub_02034264
	ldr r0, [r5, #0x1c]
	mov r1, #8
	bl ovy271_21f2b8c
	add r0, r5, #0
	bl GFL_HeapFree
	mov r0, #1
	bl GFL_BGSysLoadScr
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f4454

	thumb_func_start ovy271_21f44c4
ovy271_21f44c4: ; 0x021F44C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #1
	mov r5, #0
_021F44CC:
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021F44DA
	bl ovy271_21f362c
	and r4, r0
_021F44DA:
	add r5, r5, #1
	cmp r5, #7
	blt _021F44CC
	ldr r0, [r6, #0x20]
	bl sub_02034220
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f44c4

	thumb_func_start ovy271_21f44ec
ovy271_21f44ec: ; 0x021F44EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021F4520 ; =0x000006A2
	add r6, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021F4524 ; =0x021F7E20
	mov r1, #0x10
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r6, #0
	str r5, [r4, #8]
	bl sub_021F4550
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F4520: .word 0x000006A2
_021F4524: .word 0x021F7E20
	thumb_func_end ovy271_21f44ec

	thumb_func_start sub_021F4528
sub_021F4528: ; 0x021F4528
	ldr r3, _021F452C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021F452C: .word GFL_HeapFree
	thumb_func_end sub_021F4528

	thumb_func_start ovy271_21f4530
ovy271_21f4530: ; 0x021F4530
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _021F453E
	ldr r2, [r0, #8]
	add r1, r0, #4
	blx r3
_021F453E:
	pop {r3, pc}
	thumb_func_end ovy271_21f4530
_021F4540:
	.byte 0x00, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021F4550
sub_021F4550: ; 0x021F4550
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021F4550
_021F4558:
	.byte 0x01, 0x4B, 0x00, 0x21, 0x18, 0x47, 0xC0, 0x46
	.byte 0x51, 0x45, 0x1F, 0x02

	thumb_func_start sub_021F4564
sub_021F4564: ; 0x021F4564
	ldr r0, [r0]
	cmp r0, r1
	bne _021F456E
	mov r0, #1
	bx lr
_021F456E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F4564

	thumb_func_start ovy271_21f4574
ovy271_21f4574: ; 0x021F4574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0xc]
	ldr r0, _021F4624 ; =0x000007CA
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x99
	add r5, r2, #0
	str r0, [sp]
	ldr r3, _021F4628 ; =0x021F7E20
	add r0, r7, #0
	lsl r1, r1, #2
	mov r2, #0
	bl GFL_HeapAllocate
	mov r2, #0x99
	add r6, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	blx MI_CpuFill8
	str r4, [r6, #0x14]
	ldr r1, _021F462C ; =ovy271_21f477c
	str r5, [r6, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl ovy271_21f44ec
	str r0, [r6, #0x10]
	add r1, r5, #0
	ldr r0, [r6, #0x14]
	add r1, #9
	add r2, r7, #0
	bl ovy271_21f2c3c
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r1, r5, #0
	ldr r0, [r6, #0x14]
	add r1, #9
	add r2, sp, #0x1c
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F45DE
	ldr r0, _021F4630 ; =0x021F7E2C
	ldr r2, _021F4634 ; =0x021F7E48
	mov r1, #0
	bl sub_0203CB80
_021F45DE:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r4, #0
	str r0, [sp, #0x10]
_021F45E6:
	lsl r0, r4, #2
	add r5, r6, r0
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x1c]
	bl Oam_CreateSprite
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C318
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F45E6
	add r0, r6, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F4624: .word 0x000007CA
_021F4628: .word 0x021F7E20
_021F462C: .word ovy271_21f477c
_021F4630: .word 0x021F7E2C
_021F4634: .word 0x021F7E48
	thumb_func_end ovy271_21f4574

	thumb_func_start ovy271_21f4638
ovy271_21f4638: ; 0x021F4638
	push {r4, r5, r6, lr}
	mov r6, #0x7e
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021F4642:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F4642
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, #9
	bl ovy271_21f2eb4
	ldr r0, [r5, #0x10]
	bl sub_021F4528
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f4638
_021F466C:
	.byte 0x00, 0x69, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x31, 0x45, 0x1F, 0x02

	thumb_func_start ovy271_21f4678
ovy271_21f4678: ; 0x021F4678
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #0
	beq _021F468C
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r1, [r4]
	str r0, [r4, #4]
	str r2, [r4, #8]
_021F468C:
	mov r0, #0x8b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	cmp r5, #0
	bne _021F46AA
	ldr r0, [r4, #0x10]
	ldr r1, _021F4728 ; =ovy271_21f4ca0
	bl sub_021F4564
	cmp r0, #0
	beq _021F46AA
	ldr r0, _021F472C ; =0x00000701
	bl GFL_SndSEPlay
_021F46AA:
	cmp r5, #8
	bhi _021F4724
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F46BA: ; jump table
	.short _021F46CC - _021F46BA - 2 ; case 0
	.short _021F46D6 - _021F46BA - 2 ; case 1
	.short _021F46E0 - _021F46BA - 2 ; case 2
	.short _021F46EA - _021F46BA - 2 ; case 3
	.short _021F46F4 - _021F46BA - 2 ; case 4
	.short _021F46FE - _021F46BA - 2 ; case 5
	.short _021F4708 - _021F46BA - 2 ; case 6
	.short _021F4712 - _021F46BA - 2 ; case 7
	.short _021F471C - _021F46BA - 2 ; case 8
_021F46CC:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4730 ; =ovy271_21f477c
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F46D6:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4734 ; =ovy271_21f47b8
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F46E0:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4738 ; =ovy271_21f4894
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F46EA:
	ldr r0, [r4, #0x10]
	ldr r1, _021F473C ; =ovy271_21f4a0c
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F46F4:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4728 ; =ovy271_21f4ca0
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F46FE:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4740 ; =ovy271_21f4d58
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F4708:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4744 ; =0x021F4E09
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F4712:
	ldr r0, [r4, #0x10]
	ldr r1, _021F4748 ; =ovy271_21f4e0c
	bl sub_021F4550
	pop {r3, r4, r5, pc}
_021F471C:
	ldr r0, [r4, #0x10]
	ldr r1, _021F474C ; =ovy271_21f4fdc
	bl sub_021F4550
_021F4724:
	pop {r3, r4, r5, pc}
	nop
_021F4728: .word ovy271_21f4ca0
_021F472C: .word 0x00000701
_021F4730: .word ovy271_21f477c
_021F4734: .word ovy271_21f47b8
_021F4738: .word ovy271_21f4894
_021F473C: .word ovy271_21f4a0c
_021F4740: .word ovy271_21f4d58
_021F4744: .word 0x021F4E09
_021F4748: .word ovy271_21f4e0c
_021F474C: .word ovy271_21f4fdc
	thumb_func_end ovy271_21f4678

	thumb_func_start sub_021F4750
sub_021F4750: ; 0x021F4750
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021F4750

	thumb_func_start ovy271_21f4758
ovy271_21f4758: ; 0x021F4758
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	mov r7, #0x7e
	mov r4, #0
	lsr r6, r0, #0x10
	lsl r7, r7, #2
_021F4766:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	add r1, r6, #0
	bl Oam_SetOamAnimIndex
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F4766
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f4758

	thumb_func_start ovy271_21f477c
ovy271_21f477c: ; 0x021F477C
	push {r3, r4, r5, r6, r7, lr}
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _021F478E
	cmp r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F478E:
	mov r4, #0
	mov r6, #0x7e
	add r7, r4, #0
	lsl r6, r6, #2
_021F4796:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F4796
	mov r0, #0x8b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f477c

	thumb_func_start ovy271_21f47b8
ovy271_21f47b8: ; 0x021F47B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp, #0xc]
	cmp r0, #0
	beq _021F47D4
	cmp r0, #1
	beq _021F4826
	cmp r0, #2
	beq _021F487C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F47D4:
	mov r6, #0x8a
	add r7, r5, #0
	mov r4, #0
	lsl r6, r6, #2
	str r4, [r5, r6]
	add r7, #0x18
	sub r6, #0x30
_021F47E2:
	ldr r0, _021F4888 ; =0x0000FFFF
	mov r1, #6
	mul r0, r4
	blx sub_0208D65C
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	ldr r1, _021F488C ; =0x00003333
	mov r2, #8
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	lsl r0, r4, #5
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x14
	bl ovy271_21f50d4
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #6
	blt _021F47E2
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0]
_021F4826:
	mov r6, #0x8a
	add r7, r5, #0
	lsl r6, r6, #2
	mov r4, #0
	add r7, #0x18
	sub r6, #0x30
_021F4832:
	mov r2, #0x8a
	lsl r2, r2, #2
	lsl r0, r4, #5
	ldr r2, [r5, r2]
	add r0, r7, r0
	add r1, sp, #0x14
	bl ovy271_21f5110
	ldr r1, [sp, #0x14]
	add r0, sp, #0x10
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #2]
	lsl r0, r4, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #0x10
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #6
	blt _021F4832
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #1
	str r1, [r5, r0]
	cmp r2, #0xf
	ble _021F4884
	ldr r0, [sp, #0xc]
	mov r1, #2
	str r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F487C:
	ldr r0, [r5, #0x10]
	ldr r1, _021F4890 ; =ovy271_21f477c
	bl sub_021F4550
_021F4884:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4888: .word 0x0000FFFF
_021F488C: .word 0x00003333
_021F4890: .word ovy271_21f477c
	thumb_func_end ovy271_21f47b8

	thumb_func_start ovy271_21f4894
ovy271_21f4894: ; 0x021F4894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp, #4]
	cmp r0, #0
	beq _021F48B2
	cmp r0, #1
	beq _021F4952
	cmp r0, #2
	bne _021F48AE
	b _021F49EE
_021F48AE:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_021F48B2:
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r6, #0
	str r0, [sp, #0x14]
	str r6, [r5, r0]
	ldr r0, _021F49FC ; =0x021F7928
	mov r4, #1
	ldr r7, [r0]
	ldr r0, [r0, #4]
	str r7, [sp, #0x24]
	str r0, [sp, #8]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	sub r0, #0x90
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	sub r0, #0x8c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x30
	str r0, [sp, #0x14]
_021F48E0:
	lsl r0, r6, #3
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r7, [r0, r1]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
	lsl r0, r6, #2
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #0xc
	blt _021F48E0
	mov r0, #0x32
	mov r6, #0x66
	str r0, [sp]
	add r0, r5, #0
	lsl r6, r6, #2
	ldr r2, _021F4A00 ; =0x021F7940
	add r0, #0x18
	add r1, r5, r6
	mov r3, #0
	bl ovy271_21f525c
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	add r7, r5, r6
_021F4922:
	ldr r3, _021F4A04 ; =0x00000666
	lsl r2, r4, #3
	mul r3, r4
	lsr r6, r3, #0x1f
	add r6, r3, r6
	mov r3, #1
	ldr r0, [sp, #0xc]
	lsl r1, r4, #5
	add r0, r0, r1
	sub r1, r4, #1
	lsl r1, r1, #3
	asr r6, r6, #1
	lsl r3, r3, #0xe
	add r1, r7, r1
	add r2, r7, r2
	sub r3, r3, r6
	bl ovy271_21f52f0
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F4922
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0]
_021F4952:
	mov r2, #0x66
	lsl r2, r2, #2
	mov r1, #0x66
	add r2, #0x90
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r2, [r5, r2]
	add r0, #0x18
	add r1, r5, r1
	mov r4, #1
	bl ovy271_21f5290
	mov r1, #0x66
	lsl r1, r1, #2
	add r1, #0x94
	mov r6, #1
	add r7, r5, #0
	str r0, [r5, r1]
	and r6, r0
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r5, r0
	add r7, #0x18
	str r0, [sp, #0x10]
_021F4982:
	ldr r1, [sp, #0x10]
	lsl r0, r4, #5
	lsl r2, r4, #3
	add r0, r7, r0
	add r1, r1, r2
	bl ovy271_21f5364
	add r4, r4, #1
	and r6, r0
	cmp r4, #0xc
	blt _021F4982
	mov r0, #0x66
	lsl r0, r0, #2
	mov r7, #0x66
	add r0, r0, #4
	lsl r7, r7, #2
	mov r4, #0
	str r0, [sp, #0x20]
	add r7, #0x60
_021F49A8:
	lsl r0, r4, #3
	mov r1, #0x66
	add r0, r5, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, sp, #0x24
	strh r2, [r1, #8]
	ldr r1, [sp, #0x20]
	ldr r1, [r0, r1]
	add r0, sp, #0x24
	strh r1, [r0, #0xa]
	lsl r0, r4, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r7]
	add r1, sp, #0x2c
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F49A8
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r6, #0
	beq _021F49F6
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_021F49EE:
	ldr r0, [r5, #0x10]
	ldr r1, _021F4A08 ; =ovy271_21f477c
	bl sub_021F4550
_021F49F6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F49FC: .word 0x021F7928
_021F4A00: .word 0x021F7940
_021F4A04: .word 0x00000666
_021F4A08: .word ovy271_21f477c
	thumb_func_end ovy271_21f4894

	thumb_func_start ovy271_21f4a0c
ovy271_21f4a0c: ; 0x021F4A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r0, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	str r1, [sp, #4]
	cmp r0, #3
	bls _021F4A1E
	b _021F4C86
_021F4A1E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F4A2A: ; jump table
	.short _021F4A32 - _021F4A2A - 2 ; case 0
	.short _021F4AD2 - _021F4A2A - 2 ; case 1
	.short _021F4B74 - _021F4A2A - 2 ; case 2
	.short _021F4BC2 - _021F4A2A - 2 ; case 3
_021F4A32:
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r6, #0
	str r0, [sp, #0x1c]
	str r6, [r4, r0]
	ldr r0, _021F4C8C ; =0x021F7928
	mov r5, #1
	ldr r7, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r7, [sp, #0x34]
	str r0, [sp, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	sub r0, #0x90
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	sub r0, #0x8c
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	sub r0, #0x30
	str r0, [sp, #0x1c]
_021F4A60:
	lsl r0, r6, #3
	ldr r1, [sp, #0x24]
	add r0, r4, r0
	str r7, [r0, r1]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x20]
	str r2, [r0, r1]
	lsl r0, r6, #2
	add r1, r4, r0
	ldr r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #6
	blt _021F4A60
	mov r0, #0x24
	mov r6, #0x66
	str r0, [sp]
	add r0, r4, #0
	lsl r6, r6, #2
	ldr r2, _021F4C90 ; =0x021F7930
	add r0, #0x18
	add r1, r4, r6
	mov r3, #0
	bl ovy271_21f525c
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	add r7, r4, r6
_021F4AA2:
	ldr r3, _021F4C94 ; =0x00000B33
	lsl r2, r5, #3
	mul r3, r5
	lsr r6, r3, #0x1f
	add r6, r3, r6
	mov r3, #0xe
	ldr r0, [sp, #0xc]
	lsl r1, r5, #5
	add r0, r0, r1
	sub r1, r5, #1
	lsl r1, r1, #3
	asr r6, r6, #1
	lsl r3, r3, #0xa
	add r1, r7, r1
	add r2, r7, r2
	sub r3, r3, r6
	bl ovy271_21f52f0
	add r5, r5, #1
	cmp r5, #6
	blt _021F4AA2
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0]
_021F4AD2:
	mov r6, #0x66
	lsl r6, r6, #2
	add r2, r6, #0
	add r2, #0x90
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x18
	add r1, r4, r6
	bl ovy271_21f5290
	add r1, r6, #0
	add r1, #0x9c
	str r0, [r4, r1]
	add r0, r4, r6
	add r7, r4, #0
	mov r5, #1
	add r7, #0x18
	str r0, [sp, #0x10]
	add r6, #0x9c
_021F4AF8:
	ldr r1, [sp, #0x10]
	lsl r0, r5, #5
	lsl r2, r5, #3
	add r0, r7, r0
	add r1, r1, r2
	bl ovy271_21f5364
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, r6]
	cmp r5, #6
	blt _021F4AF8
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r0, #0
	mov r5, #0
	add r7, r0, #4
	add r6, #0x60
_021F4B1E:
	lsl r0, r5, #3
	mov r1, #0x66
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, sp, #0x34
	strh r2, [r1, #0xc]
	ldr r1, [r0, r7]
	add r0, sp, #0x34
	strh r1, [r0, #0xe]
	lsl r0, r5, #2
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #0x40
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r5, r5, #1
	cmp r5, #6
	blt _021F4B1E
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021F4B60
	b _021F4C86
_021F4B60:
	sub r0, #0x30
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021F4B74:
	mov r6, #0x8a
	add r7, r4, #0
	mov r0, #0
	lsl r6, r6, #2
	str r0, [r4, r6]
	mov r5, #6
	add r7, #0x18
	sub r6, #0x30
_021F4B84:
	ldr r0, _021F4C98 ; =0x0000FFFF
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021F4C9C ; =0x0005FFFA
	sub r0, r1, r0
	mov r1, #6
	blx sub_0208D65C
	add r3, r0, #0
	mov r0, #0x5a
	str r0, [sp]
	lsl r0, r5, #5
	lsl r3, r3, #0x10
	ldr r1, _021F4C90 ; =0x021F7930
	add r0, r7, r0
	mov r2, #0xf
	lsr r3, r3, #0x10
	bl ovy271_21f51cc
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C124
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F4B84
	ldr r0, [sp, #4]
	mov r1, #3
	str r1, [r0]
_021F4BC2:
	mov r6, #0x66
	lsl r6, r6, #2
	add r0, r4, r6
	add r7, r4, #0
	mov r5, #6
	add r7, #0x18
	str r0, [sp, #0x14]
	add r6, #0x90
_021F4BD2:
	ldr r1, [sp, #0x14]
	lsl r2, r5, #3
	lsl r0, r5, #5
	add r1, r1, r2
	ldr r2, [r4, r6]
	add r0, r7, r0
	bl ovy271_21f51fc
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F4BD2
	mov r0, #0x66
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	add r7, r4, #0
	str r0, [sp, #0x30]
	add r0, #0x60
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	mov r5, #1
	str r0, [sp, #0x2c]
	add r0, #0x9c
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r7, #0x18
	add r0, #0x9c
	str r0, [sp, #0x28]
_021F4C0E:
	lsl r0, r5, #2
	add r6, r4, r0
	lsl r0, r5, #5
	ldr r1, [sp, #0x18]
	lsl r2, r5, #3
	add r0, r7, r0
	add r1, r1, r2
	bl ovy271_21f5364
	ldr r1, [sp, #0x2c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x28]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021F4C36
	ldr r0, [sp, #0x30]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
_021F4C36:
	add r5, r5, #1
	cmp r5, #6
	blt _021F4C0E
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r0, #0
	mov r5, #0
	add r7, r0, #4
	add r6, #0x60
_021F4C48:
	lsl r0, r5, #3
	mov r1, #0x66
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, sp, #0x34
	strh r2, [r1, #8]
	ldr r1, [r0, r7]
	add r0, sp, #0x34
	strh r1, [r0, #0xa]
	lsl r0, r5, #2
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #0x3c
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F4C48
	mov r0, #0x8b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
_021F4C86:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021F4C8C: .word 0x021F7928
_021F4C90: .word 0x021F7930
_021F4C94: .word 0x00000B33
_021F4C98: .word 0x0000FFFF
_021F4C9C: .word 0x0005FFFA
	thumb_func_end ovy271_21f4a0c

	thumb_func_start ovy271_21f4ca0
ovy271_21f4ca0: ; 0x021F4CA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp, #4]
	cmp r0, #0
	beq _021F4CB8
	cmp r0, #1
	beq _021F4D04
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F4CB8:
	mov r6, #0x8a
	add r7, r5, #0
	mov r4, #0
	lsl r6, r6, #2
	str r4, [r5, r6]
	add r7, #0x18
	sub r6, #0x30
_021F4CC6:
	ldr r0, _021F4D50 ; =0x0000FFFF
	mov r1, #6
	mul r0, r4
	blx sub_0208D65C
	add r3, r0, #0
	mov r0, #0x5a
	str r0, [sp]
	lsl r0, r4, #5
	lsl r3, r3, #0x10
	add r0, r7, r0
	add r1, r5, #0
	mov r2, #0xf
	lsr r3, r3, #0x10
	bl ovy271_21f51cc
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #6
	blt _021F4CC6
	ldr r0, _021F4D54 ; =0x00000705
	bl GFL_SndSEPlay
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0]
_021F4D04:
	mov r6, #0x8a
	add r7, r5, #0
	lsl r6, r6, #2
	mov r4, #0
	add r7, #0x18
	sub r6, #0x30
_021F4D10:
	mov r2, #0x8a
	lsl r2, r2, #2
	lsl r0, r4, #5
	ldr r2, [r5, r2]
	add r0, r7, r0
	add r1, sp, #0xc
	bl ovy271_21f51fc
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #2]
	lsl r0, r4, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #8
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #6
	blt _021F4D10
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4D50: .word 0x0000FFFF
_021F4D54: .word 0x00000705
	thumb_func_end ovy271_21f4ca0

	thumb_func_start ovy271_21f4d58
ovy271_21f4d58: ; 0x021F4D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp, #4]
	cmp r0, #0
	beq _021F4D70
	cmp r0, #1
	beq _021F4DB6
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F4D70:
	mov r6, #0x8a
	add r7, r5, #0
	mov r4, #0
	lsl r6, r6, #2
	str r4, [r5, r6]
	add r7, #0x18
	sub r6, #0x30
_021F4D7E:
	ldr r0, _021F4E04 ; =0x0000FFFF
	mov r1, #6
	mul r0, r4
	blx sub_0208D65C
	add r3, r0, #0
	mov r0, #0x5a
	str r0, [sp]
	lsl r0, r4, #5
	lsl r3, r3, #0x10
	add r0, r7, r0
	add r1, r5, #0
	mov r2, #0xa
	lsr r3, r3, #0x10
	bl ovy271_21f51cc
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #6
	blt _021F4D7E
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0]
_021F4DB6:
	mov r6, #0x8a
	add r7, r5, #0
	lsl r6, r6, #2
	mov r4, #0
	add r7, #0x18
	sub r6, #0x30
_021F4DC2:
	mov r2, #0x8a
	lsl r2, r2, #2
	lsl r0, r4, #5
	ldr r2, [r5, r2]
	add r0, r7, r0
	add r1, sp, #0xc
	bl ovy271_21f51fc
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #2]
	lsl r0, r4, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #8
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #6
	blt _021F4DC2
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F4E04: .word 0x0000FFFF
	thumb_func_end ovy271_21f4d58
_021F4E08:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f4e0c
ovy271_21f4e0c: ; 0x021F4E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0xc]
	ldr r1, [r1]
	add r4, r2, #0
	cmp r1, #5
	bls _021F4E1C
	b _021F4FC8
_021F4E1C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F4E28: ; jump table
	.short _021F4E34 - _021F4E28 - 2 ; case 0
	.short _021F4E86 - _021F4E28 - 2 ; case 1
	.short _021F4F08 - _021F4E28 - 2 ; case 2
	.short _021F4F12 - _021F4E28 - 2 ; case 3
	.short _021F4F4E - _021F4E28 - 2 ; case 4
	.short _021F4FC2 - _021F4E28 - 2 ; case 5
_021F4E34:
	mov r6, #0x8a
	add r7, r4, #0
	mov r5, #0
	lsl r6, r6, #2
	str r5, [r4, r6]
	add r7, #0x18
	sub r6, #0x30
_021F4E42:
	ldr r0, _021F4FCC ; =0x0000FFFF
	mov r1, #6
	mul r0, r5
	blx sub_0208D65C
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	ldr r1, _021F4FD0 ; =0x00003333
	mov r2, #8
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	lsl r0, r5, #5
	add r0, r7, r0
	add r1, r4, #0
	mov r3, #0x14
	bl ovy271_21f50d4
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	mov r1, #1
	bl sub_0204C124
	add r5, r5, #1
	cmp r5, #6
	blt _021F4E42
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0]
_021F4E86:
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x10]
	mov r0, #0x66
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, #0x90
	str r0, [sp, #0x28]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x66
	lsl r0, r0, #2
	add r7, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x60
	mov r5, #0
	add r7, #0x18
	str r0, [sp, #0x20]
_021F4EB0:
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x10]
	lsl r6, r5, #3
	lsl r0, r5, #5
	ldr r2, [r4, r2]
	add r0, r7, r0
	add r1, r1, r6
	bl ovy271_21f5110
	mov r1, #0x66
	add r0, r4, r6
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, sp, #0x34
	strh r2, [r1, #4]
	ldr r1, [sp, #0x24]
	ldr r1, [r0, r1]
	add r0, sp, #0x34
	strh r1, [r0, #6]
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, [sp, #0x20]
	ldr r2, [r4, #0xc]
	ldr r0, [r1, r0]
	lsl r2, r2, #0x10
	add r1, sp, #0x38
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r5, r5, #1
	cmp r5, #6
	blt _021F4EB0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x10
	ble _021F4FC8
	ldr r0, [sp, #0xc]
	mov r1, #2
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F4F08:
	ldr r0, [sp, #0xc]
	mov r1, #3
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F4F12:
	mov r0, #0x66
	lsl r0, r0, #2
	add r7, r4, #0
	add r0, r4, r0
	mov r5, #0
	add r7, #0x18
	str r0, [sp, #0x14]
_021F4F20:
	ldr r2, [sp, #0x14]
	lsl r3, r5, #3
	add r2, r2, r3
	ldr r3, _021F4FD4 ; =0x0000099A
	add r6, r5, #0
	mul r6, r3
	lsr r3, r6, #0x1f
	add r3, r6, r3
	asr r6, r3, #1
	mov r3, #1
	lsl r0, r5, #5
	lsl r3, r3, #0xe
	ldr r1, [r4, #8]
	add r0, r7, r0
	sub r3, r3, r6
	bl ovy271_21f52f0
	add r5, r5, #1
	cmp r5, #6
	blt _021F4F20
	ldr r0, [sp, #0xc]
	mov r1, #4
	str r1, [r0]
_021F4F4E:
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x1c]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x30]
	mov r0, #0x66
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	add r0, #0x60
	mov r7, #1
	mov r5, #0
	str r0, [sp, #0x2c]
_021F4F74:
	ldr r0, [sp, #0x18]
	lsl r1, r5, #5
	add r0, r0, r1
	ldr r1, [sp, #0x1c]
	lsl r6, r5, #3
	add r1, r1, r6
	bl ovy271_21f5364
	mov r1, #0x66
	and r7, r0
	add r0, r4, r6
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, sp, #0x34
	strh r2, [r1]
	ldr r1, [sp, #0x30]
	ldr r1, [r0, r1]
	add r0, sp, #0x34
	strh r1, [r0, #2]
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, [sp, #0x2c]
	ldr r2, [r4, #0xc]
	ldr r0, [r1, r0]
	lsl r2, r2, #0x10
	add r1, sp, #0x34
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r5, r5, #1
	cmp r5, #6
	blt _021F4F74
	cmp r7, #0
	beq _021F4FC8
	ldr r0, [sp, #0xc]
	mov r1, #5
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F4FC2:
	ldr r1, _021F4FD8 ; =ovy271_21f477c
	bl sub_021F4550
_021F4FC8:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4FCC: .word 0x0000FFFF
_021F4FD0: .word 0x00003333
_021F4FD4: .word 0x0000099A
_021F4FD8: .word ovy271_21f477c
	thumb_func_end ovy271_21f4e0c

	thumb_func_start ovy271_21f4fdc
ovy271_21f4fdc: ; 0x021F4FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0xc]
	ldr r1, [r1]
	add r5, r2, #0
	cmp r1, #0
	beq _021F4FF6
	cmp r1, #1
	beq _021F506C
	cmp r1, #2
	beq _021F50C2
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F4FF6:
	add r0, r5, #0
	mov r1, #0
	bl ovy271_21f4758
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x8a
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	sub r0, #0x30
	mov r4, #6
	str r0, [sp, #0x14]
_021F5012:
	lsl r7, r4, #5
	mov r0, #0x8a
	add r6, r5, r7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r6, #0x2c]
	blx sub_0208D65C
	ldrh r1, [r6, #0x2a]
	mov r2, #0xf
	mov r3, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xf
	lsl r0, r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x10
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, _021F50CC ; =0x021F7930
	add r0, r0, r7
	bl ovy271_21f50d4
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C318
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5012
	mov r1, #0x8a
	lsl r1, r1, #2
	mov r0, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0]
_021F506C:
	mov r6, #0x8a
	add r7, r5, #0
	lsl r6, r6, #2
	mov r4, #6
	add r7, #0x18
	sub r6, #0x30
_021F5078:
	mov r2, #0x8a
	lsl r2, r2, #2
	lsl r0, r4, #5
	ldr r2, [r5, r2]
	add r0, r7, r0
	add r1, sp, #0x1c
	bl ovy271_21f5110
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x18
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	strh r1, [r0, #2]
	lsl r0, r4, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	lsl r2, r2, #0x10
	ldr r0, [r0, r6]
	add r1, sp, #0x18
	lsr r2, r2, #0x10
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5078
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #1
	str r1, [r5, r0]
	cmp r2, #0x3c
	ble _021F50C8
	ldr r0, [sp, #0xc]
	mov r1, #2
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F50C2:
	ldr r1, _021F50D0 ; =ovy271_21f477c
	bl sub_021F4550
_021F50C8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F50CC: .word 0x021F7930
_021F50D0: .word ovy271_21f477c
	thumb_func_end ovy271_21f4fdc

	thumb_func_start ovy271_21f50d4
ovy271_21f50d4: ; 0x021F50D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	strh r6, [r5, #0x10]
	strh r7, [r5, #0x12]
	add r0, sp, #0x18
	ldrh r1, [r0]
	mov r2, #0
	strh r1, [r5, #0x14]
	ldrh r0, [r0, #4]
	ldr r1, [r4]
	strh r0, [r5, #0x16]
	ldr r0, [sp, #0x20]
	str r1, [r5]
	str r0, [r5, #0x18]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	add r0, r5, #0
	add r5, #8
	add r1, r5, #0
	bl ovy271_21f5110
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f50d4

	thumb_func_start ovy271_21f5110
ovy271_21f5110: ; 0x021F5110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	ldrh r0, [r5, #0x14]
	ldrh r1, [r5, #0x16]
	add r7, r2, #0
	str r0, [sp, #8]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0x10]
	str r0, [sp]
	mov r0, #0x12
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	bpl _021F5142
	neg r1, r4
	b _021F5144
_021F5142:
	add r1, r4, #0
_021F5144:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, [sp, #4]
	mul r0, r7
	blx sub_0208D65C
	ldr r1, [sp, #8]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r4, #0
	bge _021F5170
	neg r4, r4
_021F5170:
	add r0, r7, #0
	ldr r1, [sp, #4]
	mul r0, r4
	blx sub_0208D65C
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r3, r0, r2
	bpl _021F5188
	mov r3, #0
_021F5188:
	ldr r0, [sp, #0xc]
	asr r0, r0, #4
	lsl r2, r0, #1
	add r0, r2, #1
	lsl r1, r0, #1
	ldr r0, _021F51C8 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r2, r2, #1
	ldrsh r1, [r0, r1]
	ldrsh r0, [r0, r2]
	mul r1, r3
	mul r0, r3
	asr r2, r0, #0xc
	ldr r0, [r5]
	asr r1, r1, #0xc
	add r1, r1, r0
	ldr r0, [r5, #4]
	str r1, [r5, #8]
	add r0, r2, r0
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _021F51B6
	str r1, [r6]
	str r0, [r6, #4]
_021F51B6:
	ldr r0, [r5, #0x18]
	cmp r7, r0
	bne _021F51C2
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F51C2:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F51C8: .word FX_SinCosTable_
	thumb_func_end ovy271_21f5110

	thumb_func_start ovy271_21f51cc
ovy271_21f51cc: ; 0x021F51CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x18
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	ldr r0, [r4, #4]
	ldr r1, [r4]
	str r0, [r5, #4]
	ldr r0, [sp, #0x18]
	str r1, [r5]
	str r0, [r5, #0x14]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	strh r6, [r5, #0x10]
	strh r7, [r5, #0x12]
	bl ovy271_21f51fc
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f51cc

	thumb_func_start ovy271_21f51fc
ovy271_21f51fc: ; 0x021F51FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021F5254 ; =0x0000FFFF
	add r6, r2, #0
	ldr r1, [r5, #0x14]
	mul r0, r6
	blx sub_0208D65C
	ldrh r1, [r5, #0x12]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r3, r0, #1
	add r0, r3, #1
	lsl r2, r0, #1
	ldr r0, _021F5258 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r3, r3, #1
	ldrsh r2, [r0, r2]
	ldrh r1, [r5, #0x10]
	ldrsh r0, [r0, r3]
	mul r2, r1
	mul r0, r1
	asr r3, r0, #0xc
	ldr r0, [r5]
	asr r2, r2, #0xc
	add r1, r2, r0
	ldr r0, [r5, #4]
	str r1, [r5, #8]
	add r0, r3, r0
	str r0, [r5, #0xc]
	cmp r4, #0
	beq _021F5244
	str r1, [r4]
	str r0, [r4, #4]
_021F5244:
	ldr r0, [r5, #0x14]
	cmp r6, r0
	bne _021F524E
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F524E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021F5254: .word 0x0000FFFF
_021F5258: .word FX_SinCosTable_
	thumb_func_end ovy271_21f51fc

	thumb_func_start ovy271_21f525c
ovy271_21f525c: ; 0x021F525C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	ldr r0, [r4, #4]
	ldr r1, [r4]
	str r0, [r5, #4]
	ldr r0, [r6, #4]
	str r1, [r5]
	ldr r1, [r6]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r1, [r5, #8]
	str r0, [r5, #0x1c]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	str r7, [r5, #0x18]
	bl ovy271_21f5290
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f525c

	thumb_func_start ovy271_21f5290
ovy271_21f5290: ; 0x021F5290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r1, #0
	mov r7, #0
	sub r4, r2, r0
	bpl _021F52A2
	add r4, r7, #0
_021F52A2:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	sub r0, r1, r0
	ldr r1, [r5, #0x1c]
	mul r0, r4
	blx sub_0208D65C
	ldr r1, [sp, #4]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	str r0, [sp]
	sub r0, r1, r0
	ldr r1, [r5, #0x1c]
	mul r0, r4
	blx sub_0208D65C
	ldr r1, [sp]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	cmp r4, r0
	blt _021F52DE
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	str r1, [r5, #0x10]
	str r0, [r5, #0x14]
	mov r7, #1
_021F52DE:
	cmp r6, #0
	beq _021F52EA
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	str r1, [r6]
	str r0, [r6, #4]
_021F52EA:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f5290

	thumb_func_start ovy271_21f52f0
ovy271_21f52f0: ; 0x021F52F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	ldr r0, [r4]
	str r6, [r5]
	cmp r0, #0
	ble _021F531C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F532A
_021F531C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F532A:
	blx sub_0208DA4C
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021F5348
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5356
_021F5348:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5356:
	blx sub_0208DA4C
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	str r7, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f52f0

	thumb_func_start ovy271_21f5364
ovy271_21f5364: ; 0x021F5364
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	ble _021F5386
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5394
_021F5386:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5394:
	blx sub_0208DA4C
	ldr r1, [r5, #4]
	sub r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _021F53B8
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F53C6
_021F53B8:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F53C6:
	blx sub_0208DA4C
	ldr r1, [r5, #8]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #8]
	add r0, sp, #4
	str r4, [sp, #0xc]
	blx VEC_Mag
	str r0, [sp]
	cmp r0, #0
	beq _021F54B4
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r4
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp]
	bl FX_Div
	add r6, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r4
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp]
	bl FX_Div
	add r4, r0, #0
	neg r0, r6
	cmp r6, #0
	blt _021F542C
	add r0, r6, #0
_021F542C:
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _021F5434
	neg r1, r1
_021F5434:
	cmp r1, r0
	ble _021F543E
	ldr r0, [r5, #4]
	add r0, r0, r6
	b _021F546A
_021F543E:
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	ble _021F5458
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5466
_021F5458:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5466:
	blx sub_0208DA4C
_021F546A:
	str r0, [r5, #4]
	neg r0, r4
	cmp r4, #0
	blt _021F5474
	add r0, r4, #0
_021F5474:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _021F547C
	neg r1, r1
_021F547C:
	cmp r1, r0
	ble _021F5486
	ldr r0, [r5, #8]
	add r0, r0, r4
	b _021F54B2
_021F5486:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _021F54A0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F54AE
_021F54A0:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F54AE:
	blx sub_0208DA4C
_021F54B2:
	str r0, [r5, #8]
_021F54B4:
	cmp r7, #0
	beq _021F54C4
	ldr r0, [r5, #4]
	asr r0, r0, #0xc
	str r0, [r7]
	ldr r0, [r5, #8]
	asr r0, r0, #0xc
	str r0, [r7, #4]
_021F54C4:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F54D0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F54D0:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5364

	thumb_func_start ovy271_21f54d8
ovy271_21f54d8: ; 0x021F54D8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x62
	str r1, [sp]
	ldr r3, _021F5544 ; =0x021F7EB0
	mov r1, #0x40
	mov r2, #0
	add r5, r0, #0
	mov r6, #0x40
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, _021F5548 ; =0x0000FFFF
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl sub_02026DC0
	lsl r6, r6, #3
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
	str r0, [r4, #0x20]
	bl sub_02026E04
	mov r7, #7
	lsl r7, r7, #6
	ldr r0, [r4, #0x20]
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	bl sub_02026E04
	ldr r0, [r4, #0x20]
	mov r1, #1
	add r2, r6, #0
	add r3, r5, #0
	bl sub_02026E04
	ldr r0, [r4, #0x20]
	mov r1, #3
	add r2, r7, #0
	add r3, r5, #0
	bl sub_02026E04
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_0202778C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5544: .word 0x021F7EB0
_021F5548: .word 0x0000FFFF
	thumb_func_end ovy271_21f54d8

	thumb_func_start ovy271_21f554c
ovy271_21f554c: ; 0x021F554C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r4, #0x20]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4, #0x20]
	bl sub_02026DE8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f554c

	thumb_func_start ovy271_21f5580
ovy271_21f5580: ; 0x021F5580
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _021F559A
	add r1, r4, #0
	add r1, #0xc
	blx r2
	str r0, [r4]
	cmp r0, #0
	beq _021F559A
	mov r0, #0
	str r0, [r4, #0x1c]
_021F559A:
	pop {r4, pc}
	thumb_func_end ovy271_21f5580

	thumb_func_start ovy271_21f559c
ovy271_21f559c: ; 0x021F559C
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ovy271_21f55ac
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy271_21f559c

	thumb_func_start ovy271_21f55ac
ovy271_21f55ac: ; 0x021F55AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [sp, #8]
	str r2, [r4, #4]
	str r0, [r4, #0x18]
	add r0, r1, #0
	str r3, [r4, #8]
	bl sub_021F5B20
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy271_21f55ac

	thumb_func_start sub_021F55C8
sub_021F55C8: ; 0x021F55C8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F55C8

	thumb_func_start ovy271_21f55cc
ovy271_21f55cc: ; 0x021F55CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #2
	lsl r6, r6, #8
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	add r4, r6, #0
	sub r4, #0x40
	ldr r0, [r5, #0x20]
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0x20]
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	ldr r0, [r5, #0x20]
	mov r1, #3
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f55cc

	thumb_func_start sub_021F560C
sub_021F560C: ; 0x021F560C
	strh r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_021F560C

	thumb_func_start ovy271_21f5610
ovy271_21f5610: ; 0x021F5610
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	tst r0, r4
	beq _021F562C
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5654 ; =0x0000BFFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x20]
	mov r3, #0x10
	bl sub_020278AC
_021F562C:
	mov r0, #2
	tst r0, r4
	beq _021F5642
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5654 ; =0x0000BFFF
	mov r1, #1
	str r0, [sp]
	ldr r0, [r5, #0x20]
	mov r3, #0x10
	bl sub_020278AC
_021F5642:
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_020277B0
	ldr r0, [r5, #0x20]
	bl sub_020275F8
	pop {r3, r4, r5, pc}
	nop
_021F5654: .word 0x0000BFFF
	thumb_func_end ovy271_21f5610

	thumb_func_start ovy271_21f5658
ovy271_21f5658: ; 0x021F5658
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	mov r6, #1
	add r0, r5, #0
	add r4, r2, #0
	tst r0, r6
	beq _021F56B0
	mov r0, #0x10
	sub r0, r0, r4
	str r0, [sp]
	ldr r0, _021F56F8 ; =0x04000050
	mov r1, #7
	mov r2, #0x1f
	add r3, r4, #0
	bl G2x_SetBlendAlpha_
	cmp r4, #0
	bne _021F5698
	add r0, r6, #0
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #4
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	b _021F56B0
_021F5698:
	add r0, r6, #0
	add r1, r6, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	add r1, r6, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #4
	add r1, r6, #0
	bl GFL_BGSysSetBGEnabledA
_021F56B0:
	mov r6, #2
	add r0, r5, #0
	tst r0, r6
	beq _021F56F2
	mov r0, #0x10
	sub r0, r0, r4
	str r0, [sp]
	ldr r0, _021F56FC ; =0x04001050
	mov r1, #3
	mov r2, #7
	add r3, r4, #0
	bl G2x_SetBlendAlpha_
	cmp r4, #0
	bne _021F56E2
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	add r0, r6, #0
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021F56E2:
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add r0, r6, #0
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
_021F56F2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F56F8: .word 0x04000050
_021F56FC: .word 0x04001050
	thumb_func_end ovy271_21f5658

	thumb_func_start ovy271_21f5700
ovy271_21f5700: ; 0x021F5700
	push {r3, lr}
	sub sp, #0x10
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	add r3, sp, #0x18
	ldrh r3, [r3, #8]
	ldr r0, [r0, #0x20]
	bl sub_02026F08
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ovy271_21f5700

	thumb_func_start ovy271_21f5724
ovy271_21f5724: ; 0x021F5724
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F573A
	cmp r0, #1
	beq _021F5774
	cmp r0, #2
	beq _021F5780
	b _021F5784
_021F573A:
	ldr r6, [r3, #4]
	mov r7, #1
	add r0, r6, #0
	mov r1, #0
	tst r0, r7
	beq _021F5748
	orr r1, r7
_021F5748:
	mov r0, #2
	tst r6, r0
	beq _021F5750
	orr r1, r0
_021F5750:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _021F575C
	mov r5, #0x10
	mov r2, #0
	b _021F5764
_021F575C:
	cmp r0, #1
	bne _021F5764
	mov r5, #0
	mov r2, #0x10
_021F5764:
	ldr r3, [r3, #0x18]
	add r0, r1, #0
	add r1, r5, #0
	bl sub_0204E060
	mov r0, #1
_021F5770:
	str r0, [r4]
	b _021F5784
_021F5774:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F5784
	mov r0, #2
	b _021F5770
_021F5780:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5784:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f5724

	thumb_func_start ovy271_21f5788
ovy271_21f5788: ; 0x021F5788
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F579E
	cmp r0, #1
	beq _021F57D6
	cmp r0, #2
	beq _021F57E2
	b _021F57E6
_021F579E:
	ldr r3, [r5, #4]
	mov r6, #1
	mov r0, #0
	tst r6, r3
	beq _021F57AC
	mov r6, #4
	orr r0, r6
_021F57AC:
	mov r6, #2
	tst r3, r6
	beq _021F57B6
	mov r3, #8
	orr r0, r3
_021F57B6:
	ldr r3, [r5, #8]
	cmp r3, #0
	bne _021F57C2
	mov r1, #0x10
	mov r2, #0
	b _021F57CA
_021F57C2:
	cmp r3, #1
	bne _021F57CA
	mov r1, #0
	mov r2, #0x10
_021F57CA:
	ldr r3, [r5, #0x18]
	bl sub_0204E060
	mov r0, #1
_021F57D2:
	str r0, [r4]
	b _021F57E6
_021F57D6:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F57E6
	mov r0, #2
	b _021F57D2
_021F57E2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F57E6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5788

	thumb_func_start ovy271_21f57ec
ovy271_21f57ec: ; 0x021F57EC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _021F5804
	cmp r0, #1
	beq _021F5860
	cmp r0, #2
	bne _021F5802
	b _021F591A
_021F5802:
	b _021F591E
_021F5804:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F5810
	mov r6, #0
	mov r4, #0x10
	b _021F5818
_021F5810:
	cmp r0, #1
	bne _021F5818
	mov r6, #0x10
	mov r4, #0
_021F5818:
	ldr r1, [r5, #4]
	lsl r1, r1, #0x1f
	beq _021F582C
	ldr r0, _021F5924 ; =0x04000050
	mov r1, #7
	mov r2, #0x1f
	add r3, r6, #0
	str r4, [sp]
	bl G2x_SetBlendAlpha_
_021F582C:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _021F5842
	ldr r0, _021F5928 ; =0x04001050
	mov r1, #3
	mov r2, #7
	add r3, r6, #0
	str r4, [sp]
	bl G2x_SetBlendAlpha_
_021F5842:
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021F5858
	bl sub_0204E038
	add r1, r0, #0
	mov r0, #0x10
	blx sub_0208D65C
_021F5858:
	str r0, [r5, #0x14]
	mov r0, #1
_021F585C:
	str r0, [r7]
	b _021F591E
_021F5860:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F5878
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
	add r4, r0, #0
	mov r0, #0x10
	sub r6, r0, r4
	b _021F588C
_021F5878:
	cmp r0, #1
	bne _021F588C
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
	add r6, r0, #0
	mov r0, #0x10
	sub r4, r0, r6
_021F588C:
	ldr r1, [r5, #4]
	lsl r1, r1, #0x1f
	beq _021F58D2
	lsl r0, r6, #8
	add r1, r4, #0
	orr r1, r0
	ldr r0, _021F592C ; =0x04000052
	cmp r4, #0
	strh r1, [r0]
	bne _021F58BA
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #4
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	b _021F58D2
_021F58BA:
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #4
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
_021F58D2:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _021F590A
	lsl r0, r6, #8
	add r1, r4, #0
	orr r1, r0
	ldr r0, _021F5930 ; =0x04001052
	cmp r4, #0
	strh r1, [r0]
	bne _021F58FA
	mov r0, #1
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	b _021F590A
_021F58FA:
	mov r0, #1
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #2
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
_021F590A:
	ldr r1, [r5, #0x10]
	add r0, r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blo _021F591E
	mov r0, #2
	b _021F585C
_021F591A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F591E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5924: .word 0x04000050
_021F5928: .word 0x04001050
_021F592C: .word 0x04000052
_021F5930: .word 0x04001052
	thumb_func_end ovy271_21f57ec

	thumb_func_start ovy271_21f5934
ovy271_21f5934: ; 0x021F5934
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021F594C
	cmp r0, #1
	beq _021F5972
	cmp r0, #2
	beq _021F5A14
	b _021F5A1A
_021F594C:
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021F5962
	bl sub_0204E038
	add r1, r0, #0
	mov r0, #0x10
	blx sub_0208D65C
_021F5962:
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x20]
	mov r1, #1
	mov r4, #1
	bl sub_020277B0
	str r4, [r6]
	b _021F5A1A
_021F5972:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F5988
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
	mov r1, #0x10
	sub r0, r1, r0
	b _021F5996
_021F5988:
	cmp r0, #1
	bne _021F599A
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
_021F5996:
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F599A:
	ldr r1, [r5, #4]
	cmp r1, #0xf
	bne _021F59AE
	ldr r0, _021F5A20 ; =0x0000FFFF
	mov r2, #3
	str r0, [sp]
	ldr r0, [r5, #0x20]
	mov r1, #1
	lsl r2, r2, #0xc
	b _021F59F6
_021F59AE:
	mov r0, #1
	tst r0, r1
	beq _021F59D4
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5A24 ; =0x00003FFF
	mov r1, #2
	str r0, [sp]
	ldr r0, [r5, #0x20]
	add r3, r4, #0
	bl sub_020278AC
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5A28 ; =0x0000BFFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x20]
	add r3, r4, #0
	bl sub_020278AC
_021F59D4:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _021F59FC
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5A24 ; =0x00003FFF
	mov r1, #3
	str r0, [sp]
	ldr r0, [r5, #0x20]
	add r3, r4, #0
	bl sub_020278AC
	ldrh r0, [r5, #0x24]
	ldr r2, _021F5A28 ; =0x0000BFFF
	mov r1, #1
	str r0, [sp]
	ldr r0, [r5, #0x20]
_021F59F6:
	add r3, r4, #0
	bl sub_020278AC
_021F59FC:
	ldr r0, [r5, #0x20]
	bl sub_020275F8
	ldr r1, [r5, #0x10]
	add r0, r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blo _021F5A1A
	mov r0, #2
	str r0, [r6]
	b _021F5A1A
_021F5A14:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021F5A1A:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F5A20: .word 0x0000FFFF
_021F5A24: .word 0x00003FFF
_021F5A28: .word 0x0000BFFF
	thumb_func_end ovy271_21f5934

	thumb_func_start ovy271_21f5a2c
ovy271_21f5a2c: ; 0x021F5A2C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r6]
	add r4, r0, #0
	cmp r1, #0
	beq _021F5A42
	cmp r1, #1
	beq _021F5A9E
	cmp r1, #2
	beq _021F5B10
	b _021F5B14
_021F5A42:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F5A4E
	mov r3, #0x10
	mov r2, #0
	b _021F5A56
_021F5A4E:
	cmp r0, #1
	bne _021F5A56
	mov r3, #0
	mov r2, #0x10
_021F5A56:
	cmp r0, #0
	bne _021F5A60
	mov r7, #0
	mov r5, #0x10
	b _021F5A68
_021F5A60:
	cmp r0, #1
	bne _021F5A68
	mov r7, #0x10
	mov r5, #0
_021F5A68:
	add r1, r3, #0
	ldr r3, [r4, #0x18]
	mov r0, #4
	bl sub_0204E060
	ldr r0, _021F5B18 ; =0x04001050
	mov r1, #3
	mov r2, #7
	add r3, r7, #0
	str r5, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F5A96
	bl sub_0204E038
	add r1, r0, #0
	mov r0, #0x10
	blx sub_0208D65C
_021F5A96:
	str r0, [r4, #0x14]
	mov r0, #1
_021F5A9A:
	str r0, [r6]
	b _021F5B14
_021F5A9E:
	ldr r1, [r4, #8]
	mov r5, #1
	cmp r1, #0
	bne _021F5AB6
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
	mov r1, #0x10
	sub r2, r1, r0
	b _021F5ACA
_021F5AB6:
	cmp r1, #1
	bne _021F5ACA
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #4
	blx sub_0208D868
	add r2, r0, #0
	mov r0, #0x10
	sub r0, r0, r2
_021F5ACA:
	lsl r1, r2, #8
	add r2, r0, #0
	orr r2, r1
	ldr r1, _021F5B1C ; =0x04001052
	cmp r0, #0
	strh r2, [r1]
	bne _021F5ADE
	mov r0, #3
	mov r1, #0
	b _021F5AE2
_021F5ADE:
	mov r0, #3
	mov r1, #1
_021F5AE2:
	bl GFL_BGSysSetBGEnabledB
	ldr r1, [r4, #0x10]
	add r0, r1, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	blo _021F5AF6
	mov r0, #1
	b _021F5AF8
_021F5AF6:
	mov r0, #0
_021F5AF8:
	and r5, r0
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F5B06
	mov r0, #1
	b _021F5B08
_021F5B06:
	mov r0, #0
_021F5B08:
	tst r0, r5
	beq _021F5B14
	mov r0, #2
	b _021F5A9A
_021F5B10:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5B14:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5B18: .word 0x04001050
_021F5B1C: .word 0x04001052
	thumb_func_end ovy271_21f5a2c

	thumb_func_start sub_021F5B20
sub_021F5B20: ; 0x021F5B20
	cmp r0, #4
	bhi _021F5B4E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5B30: ; jump table
	.short _021F5B3A - _021F5B30 - 2 ; case 0
	.short _021F5B3E - _021F5B30 - 2 ; case 1
	.short _021F5B42 - _021F5B30 - 2 ; case 2
	.short _021F5B46 - _021F5B30 - 2 ; case 3
	.short _021F5B4A - _021F5B30 - 2 ; case 4
_021F5B3A:
	ldr r0, _021F5B54 ; =ovy271_21f5724
	bx lr
_021F5B3E:
	ldr r0, _021F5B58 ; =ovy271_21f5788
	bx lr
_021F5B42:
	ldr r0, _021F5B5C ; =ovy271_21f57ec
	bx lr
_021F5B46:
	ldr r0, _021F5B60 ; =ovy271_21f5934
	bx lr
_021F5B4A:
	ldr r0, _021F5B64 ; =ovy271_21f5a2c
	bx lr
_021F5B4E:
	mov r0, #0
	bx lr
	nop
_021F5B54: .word ovy271_21f5724
_021F5B58: .word ovy271_21f5788
_021F5B5C: .word ovy271_21f57ec
_021F5B60: .word ovy271_21f5934
_021F5B64: .word ovy271_21f5a2c
	thumb_func_end sub_021F5B20

	thumb_func_start ovy271_21f5b68
ovy271_21f5b68: ; 0x021F5B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _021F5BD0 ; =0x00000132
	add r5, r3, #0
	mov r1, #0x39
	add r7, r2, #0
	str r0, [sp]
	ldr r3, _021F5BD4 ; =0x021F7EBC
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	mov r2, #0x39
	mov r1, #0
	lsl r2, r2, #4
	str r0, [sp, #8]
	blx MI_CpuFill8
	add r0, r7, #0
	mov r1, #4
	add r2, r5, #0
	bl ovy271_21f2c3c
	add r0, r7, #0
	mov r1, #5
	add r2, r5, #0
	bl ovy271_21f2c3c
_021F5BA6:
	mov r0, #0x4c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	mov r3, #0x18
	add r6, r4, #0
	mul r6, r3
	ldr r3, _021F5BD8 ; =0x021F79CC
	add r0, r0, r1
	ldr r1, [sp, #4]
	add r2, r7, #0
	add r3, r3, r6
	str r5, [sp]
	bl ovy271_21f5d0c
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5BA6
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F5BD0: .word 0x00000132
_021F5BD4: .word 0x021F7EBC
_021F5BD8: .word 0x021F79CC
	thumb_func_end ovy271_21f5b68

	thumb_func_start ovy271_21f5bdc
ovy271_21f5bdc: ; 0x021F5BDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r4, #0
	mov r7, #0x4c
_021F5BE6:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5BFA
	add r0, r5, r6
	bl ovy271_21f5e20
_021F5BFA:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5BE6
	ldr r0, [sp]
	mov r1, #4
	bl ovy271_21f2eb4
	ldr r0, [sp]
	mov r1, #5
	bl ovy271_21f2eb4
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f5bdc

	thumb_func_start ovy271_21f5c18
ovy271_21f5c18: ; 0x021F5C18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x4c
_021F5C20:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5C34
	add r0, r5, r6
	bl ovy271_21f5e38
_021F5C34:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5C20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f5c18

	thumb_func_start ovy271_21f5c3c
ovy271_21f5c3c: ; 0x021F5C3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x4c
_021F5C44:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5C5A
	add r0, r5, r6
	mov r1, #1
	bl sub_021F5E54
_021F5C5A:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5C44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5c3c

	thumb_func_start ovy271_21f5c64
ovy271_21f5c64: ; 0x021F5C64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x4c
_021F5C6C:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5C82
	add r0, r5, r6
	mov r1, #2
	bl sub_021F5E54
_021F5C82:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5C6C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5c64

	thumb_func_start ovy271_21f5c8c
ovy271_21f5c8c: ; 0x021F5C8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x4c
_021F5C94:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5CAA
	add r0, r5, r6
	mov r1, #3
	bl sub_021F5E54
_021F5CAA:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5C94
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5c8c

	thumb_func_start ovy271_21f5cb4
ovy271_21f5cb4: ; 0x021F5CB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x4c
_021F5CBC:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_021F5E44
	cmp r0, #0
	beq _021F5CD0
	add r0, r5, r6
	bl ovy271_21f5e90
_021F5CD0:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5CBC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f5cb4

	thumb_func_start ovy271_21f5cd8
ovy271_21f5cd8: ; 0x021F5CD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_021F5CE2:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021F5D08 ; =0x021F79CC
	add r0, r0, r1
	ldr r0, [r0, #0x10]
	cmp r6, r0
	bne _021F5CFE
	mov r0, #0x4c
	mul r0, r4
	add r0, r5, r0
	add r1, r7, #0
	bl sub_021F5E48
_021F5CFE:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F5CE2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5D08: .word 0x021F79CC
	thumb_func_end ovy271_21f5cd8

	thumb_func_start ovy271_21f5d0c
ovy271_21f5d0c: ; 0x021F5D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x4c
	add r4, r3, #0
	blx MI_CpuFill8
	add r2, r5, #0
	add r3, r4, #0
	add r2, #0x34
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x10]
	mov r1, #4
	cmp r0, #0
	beq _021F5D3C
	mov r1, #5
_021F5D3C:
	add r0, r6, #0
	add r2, sp, #0x14
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F5D52
	ldr r0, _021F5E18 ; =0x021F7ECC
	ldr r2, _021F5E1C ; =0x021F7ED0
	mov r1, #0
	bl sub_0203CB80
_021F5D52:
	add r0, sp, #0xc
	mov r6, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldrsh r0, [r4, r6]
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r1, #2]
	mov r0, #1
	strb r0, [r1, #7]
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _021F5D86
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5D94
_021F5D86:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5D94:
	blx sub_0208DA4C
	str r0, [r5, #8]
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021F5DB6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5DC4
_021F5DB6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5DC4:
	blx sub_0208DA4C
	str r0, [r5, #0xc]
	mov r0, #4
	ldrsh r0, [r4, r0]
	str r0, [r5, #0x14]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [r5, #0x44]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl Oam_CreateSprite
	str r0, [r5, #4]
	mov r1, #2
	bl sub_0204C244
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	mov r2, #0
	bl sub_0204C288
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0204C318
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #1
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5E18: .word 0x021F7ECC
_021F5E1C: .word 0x021F7ED0
	thumb_func_end ovy271_21f5d0c

	thumb_func_start ovy271_21f5e20
ovy271_21f5e20: ; 0x021F5E20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl Oam_RemoveOam
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x4c
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy271_21f5e20

	thumb_func_start ovy271_21f5e38
ovy271_21f5e38: ; 0x021F5E38
	push {r3, lr}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021F5E42
	blx r1
_021F5E42:
	pop {r3, pc}
	thumb_func_end ovy271_21f5e38

	thumb_func_start sub_021F5E44
sub_021F5E44: ; 0x021F5E44
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F5E44

	thumb_func_start sub_021F5E48
sub_021F5E48: ; 0x021F5E48
	ldr r0, [r0, #4]
	ldr r3, _021F5E50 ; =sub_0204C124
	bx r3
	nop
_021F5E50: .word sub_0204C124
	thumb_func_end sub_021F5E48

	thumb_func_start sub_021F5E54
sub_021F5E54: ; 0x021F5E54
	cmp r1, #3
	bhi _021F5E7C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F5E64: ; jump table
	.short _021F5E6C - _021F5E64 - 2 ; case 0
	.short _021F5E70 - _021F5E64 - 2 ; case 1
	.short _021F5E74 - _021F5E64 - 2 ; case 2
	.short _021F5E78 - _021F5E64 - 2 ; case 3
_021F5E6C:
	mov r1, #0
	b _021F5E7A
_021F5E70:
	ldr r1, _021F5E84 ; =ovy271_21f5ebc
	b _021F5E7A
_021F5E74:
	ldr r1, _021F5E88 ; =ovy271_21f6064
	b _021F5E7A
_021F5E78:
	ldr r1, _021F5E8C ; =ovy271_21f6150
_021F5E7A:
	str r1, [r0, #0x18]
_021F5E7C:
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
	nop
_021F5E84: .word ovy271_21f5ebc
_021F5E88: .word ovy271_21f6064
_021F5E8C: .word ovy271_21f6150
	thumb_func_end sub_021F5E54

	thumb_func_start ovy271_21f5e90
ovy271_21f5e90: ; 0x021F5E90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F5EB8 ; =0x0000019A
	ldr r2, [r4, #0x44]
	str r0, [r4, #0x14]
	mov r1, #0x3c
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	mov r2, #0
	bl sub_0204C288
	pop {r4, pc}
	nop
_021F5EB8: .word 0x0000019A
	thumb_func_end ovy271_21f5e90

	thumb_func_start ovy271_21f5ebc
ovy271_21f5ebc: ; 0x021F5EBC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r2, r3, r2
	str r2, [r4, #0x28]
	beq _021F5ED6
	b _021F6058
_021F5ED6:
	ldr r2, [r4, #0x1c]
	cmp r2, #4
	bls _021F5EDE
	b _021F603E
_021F5EDE:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021F5EEA: ; jump table
	.short _021F5EF4 - _021F5EEA - 2 ; case 0
	.short _021F5F0C - _021F5EEA - 2 ; case 1
	.short _021F5F74 - _021F5EEA - 2 ; case 2
	.short _021F5FD6 - _021F5EEA - 2 ; case 3
	.short _021F6038 - _021F5EEA - 2 ; case 4
_021F5EF4:
	ldr r0, [r4, #4]
	mov r1, #1
	mov r5, #1
	bl sub_0204C124
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0x38
	ldrsh r0, [r4, r0]
	str r0, [r4, #0x14]
	str r5, [r4, #0x1c]
	b _021F603E
_021F5F0C:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	bne _021F5F6E
	ldr r1, [r4, #0x44]
	mov r0, #2
	str r0, [r4, #0x1c]
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	mov r2, #0
	mov r5, #0
	bl sub_0204C1DC
	cmp r0, #0
	ldr r0, [r4, #4]
	ble _021F5F4A
	ldr r1, [r4, #0x44]
	add r2, r5, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C1DC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F5F64
_021F5F4A:
	ldr r1, [r4, #0x44]
	add r2, r5, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C1DC
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F5F64:
	blx sub_0208DA4C
	str r0, [r4, #0x10]
_021F5F6A:
	mov r0, #0
	b _021F5F70
_021F5F6E:
	add r0, r0, #1
_021F5F70:
	str r0, [r4, #0x24]
	b _021F603E
_021F5F74:
	ldr r0, [r4, #0x48]
	sub r1, #0x20
	cmp r0, #0
	beq _021F5F7E
	mov r1, #1
_021F5F7E:
	lsl r0, r1, #0x18
	asr r5, r0, #0x18
	ldr r0, [r4, #0x24]
	cmp r0, #4
	bne _021F5F8E
	mov r0, #3
	str r0, [r4, #0x1c]
	b _021F5F6A
_021F5F8E:
	mov r6, #0x5a
	ldr r1, [r4, #0x20]
	ldr r0, _021F605C ; =0x0000FFFF
	lsl r6, r6, #2
	mul r0, r1
	add r1, r6, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02044360
	neg r1, r5
	mul r0, r1
	ldr r2, [r4, #0x10]
	add r1, r6, #0
	add r0, r2, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	add r0, #0x20
	str r0, [r4, #0x20]
	blx sub_0208D65C
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x44]
	lsl r1, r1, #4
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
	ldr r0, [r4, #0x24]
	b _021F5F6E
_021F5FD6:
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0204C1DC
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021F6002
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	mov r1, #0x3a
	sub r0, r0, r5
	str r0, [r4, #0x2c]
	ldrsh r1, [r4, r1]
	blx sub_0208D65C
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	b _021F6022
_021F6002:
	mov r1, #0x3a
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	cmp r0, r1
	bne _021F6016
	mov r0, #0x3c
	ldrsh r5, [r4, r0]
	mov r0, #4
	str r0, [r4, #0x1c]
	b _021F6026
_021F6016:
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r1, r5, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
_021F6022:
	add r0, r0, #1
	str r0, [r4, #0x24]
_021F6026:
	ldr r2, [r4, #0x44]
	ldr r0, [r4, #4]
	lsl r2, r2, #0x10
	add r1, r5, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
	b _021F603E
_021F6038:
	mov r1, #2
	bl sub_021F5E54
_021F603E:
	ldr r0, [r4, #0x1c]
	cmp r0, #3
	bne _021F6058
	ldr r1, [r4, #0x14]
	ldr r0, _021F6060 ; =0x0000019A
	cmp r1, r0
	ble _021F6058
	sub r1, r1, r0
	ldr r0, [r4, #4]
	mov r2, #0
	str r1, [r4, #0x14]
	bl sub_0204C288
_021F6058:
	pop {r4, r5, r6, pc}
	nop
_021F605C: .word 0x0000FFFF
_021F6060: .word 0x0000019A
	thumb_func_end ovy271_21f5ebc

	thumb_func_start ovy271_21f6064
ovy271_21f6064: ; 0x021F6064
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r5, #0x1f
	add r0, r0, #1
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	ror r0, r5
	add r0, r1, r0
	str r0, [r4, #0x28]
	bne _021F6144
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F6088
	cmp r0, #1
	beq _021F60DA
	b _021F6130
_021F6088:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0204C124
	mov r5, #0x3c
	ldr r2, [r4, #0x44]
	ldrsh r1, [r4, r5]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _021F60BA
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F60C8
_021F60BA:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F60C8:
	blx sub_0208DA4C
	str r0, [r4, #0x10]
	mov r0, #0x40
	ldrsh r0, [r4, r0]
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x1c]
	b _021F6130
_021F60DA:
	ldr r0, [r4, #0x48]
	sub r5, #0x20
	cmp r0, #0
	beq _021F60E4
	mov r5, #1
_021F60E4:
	mov r6, #0x5a
	ldr r1, [r4, #0x20]
	ldr r0, _021F6148 ; =0x0000FFFF
	lsl r6, r6, #2
	mul r0, r1
	add r1, r6, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02044360
	lsl r2, r5, #0x18
	asr r2, r2, #0x18
	neg r3, r2
	lsl r2, r0, #1
	add r0, r0, r2
	ldr r1, [r4, #0x10]
	mul r0, r3
	add r5, r1, r0
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x20]
	add r0, r1, r0
	add r1, r6, #0
	str r0, [r4, #0x20]
	blx sub_0208D65C
	ldr r2, [r4, #0x44]
	str r1, [r4, #0x20]
	lsl r1, r5, #4
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
_021F6130:
	ldr r1, [r4, #0x14]
	ldr r0, _021F614C ; =0x0000019A
	cmp r1, r0
	ble _021F6144
	sub r1, r1, r0
	ldr r0, [r4, #4]
	mov r2, #0
	str r1, [r4, #0x14]
	bl sub_0204C288
_021F6144:
	pop {r4, r5, r6, pc}
	nop
_021F6148: .word 0x0000FFFF
_021F614C: .word 0x0000019A
	thumb_func_end ovy271_21f6064

	thumb_func_start ovy271_21f6150
ovy271_21f6150: ; 0x021F6150
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x28]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	str r1, [r5, #0x28]
	bne _021F6222
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021F6178
	cmp r1, #1
	beq _021F618A
	cmp r1, #2
	beq _021F621C
	pop {r3, r4, r5, r6, r7, pc}
_021F6178:
	ldr r0, [r5, #4]
	mov r1, #1
	mov r4, #1
	bl sub_0204C124
	mov r0, #0
	str r0, [r5, #0x24]
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_021F618A:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0204C1DC
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0204C294
	add r4, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021F61D4
	mov r0, #0x34
	ldrsh r0, [r5, r0]
	mov r7, #0x3a
	sub r0, r0, r6
	str r0, [r5, #0x2c]
	ldrsh r1, [r5, r7]
	blx sub_0208D65C
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	mov r0, #0x38
	ldrsh r0, [r5, r0]
	sub r0, r0, r4
	str r0, [r5, #0x30]
	ldrsh r1, [r5, r7]
	blx sub_0208D65C
	str r0, [r5, #0x30]
	b _021F6200
_021F61D4:
	mov r1, #0x3a
	ldrsh r1, [r5, r1]
	add r1, r1, #1
	cmp r0, r1
	bne _021F61EC
	mov r0, #0x34
	ldrsh r6, [r5, r0]
	mov r0, #0x38
	ldrsh r4, [r5, r0]
	mov r0, #2
	str r0, [r5, #0x1c]
	b _021F6200
_021F61EC:
	ldr r1, [r5, #0x2c]
	add r0, r0, #1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r1, r6, r1
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	ldr r1, [r5, #0x30]
	str r0, [r5, #0x24]
	add r4, r4, r1
_021F6200:
	ldr r2, [r5, #0x44]
	ldr r0, [r5, #4]
	lsl r2, r2, #0x10
	add r1, r6, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0204C1A8
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #0
	bl sub_0204C288
	pop {r3, r4, r5, r6, r7, pc}
_021F621C:
	mov r1, #0
	bl sub_021F5E54
_021F6222:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy271_21f6150

	thumb_func_start ovy271_21f6224
ovy271_21f6224: ; 0x021F6224
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	ldr r0, _021F62D4 ; =0x000000C9
	str r1, [sp, #4]
	add r7, r2, #0
	bl sub_0203CE0C
	ldr r5, _021F62D8 ; =0x000005E4
	mov r0, #0x97
	str r0, [sp]
	ldr r3, _021F62DC ; =0x021F7ED4
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	sub r0, r5, #4
	str r6, [r4, r0]
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x2c
	blx MI_CpuFill8
	add r0, r6, #0
	str r6, [sp, #0x10]
	bl sub_0201736C
	bl sub_02008BDC
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, sp, #8
	str r0, [sp, #0x14]
	ldr r0, _021F62E0 ; =0x021F6915
	str r4, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _021F62E4 ; =0x021F6921
	str r0, [sp, #0x20]
	ldr r0, _021F62E8 ; =0x021F692D
	str r0, [sp, #0x24]
	ldr r0, _021F62EC ; =0x021F6939
	str r0, [sp, #0x28]
	ldr r0, _021F62F0 ; =0x021F6945
	str r0, [sp, #0x2c]
	ldr r0, _021F62F4 ; =0x021F6951
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl sub_021B5420
	add r0, r5, #0
	mov r1, #1
	sub r0, #0x40
	str r1, [r4, r0]
	add r0, r6, #0
	bl sub_02017934
	add r0, r7, #0
	bl sub_0200DE34
	add r1, r5, #0
	sub r1, #0x3c
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x3c
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200DE68
	ldr r1, _021F62F8 ; =0x021F6705
	add r0, r4, #0
	add r2, r7, #0
	bl ovy271_21f695c
	sub r5, #0x38
	str r0, [r4, r5]
	ldr r0, _021F62FC ; =ovy271_21f69c8
	add r1, r4, #0
	bl ovy11_215205c
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F62D4: .word 0x000000C9
_021F62D8: .word 0x000005E4
_021F62DC: .word 0x021F7ED4
_021F62E0: .word 0x021F6915
_021F62E4: .word 0x021F6921
_021F62E8: .word 0x021F692D
_021F62EC: .word 0x021F6939
_021F62F0: .word 0x021F6945
_021F62F4: .word 0x021F6951
_021F62F8: .word 0x021F6705
_021F62FC: .word ovy271_21f69c8
	thumb_func_end ovy271_21f6224

	thumb_func_start ovy271_21f6300
ovy271_21f6300: ; 0x021F6300
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mov r1, #0
	mov r6, #0
	bl ovy11_215205c
	ldr r4, _021F6340 ; =0x000005AC
	ldr r0, [r5, r4]
	bl sub_021F6998
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0200DE60
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F6332
	add r0, r5, #0
	bl sub_021B5534
	sub r4, #8
	str r6, [r5, r4]
_021F6332:
	add r0, r5, #0
	bl GFL_HeapFree
	ldr r0, _021F6344 ; =0x000000C9
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F6340: .word 0x000005AC
_021F6344: .word 0x000000C9
	thumb_func_end ovy271_21f6300

	thumb_func_start ovy271_21f6348
ovy271_21f6348: ; 0x021F6348
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F6364 ; =0x000005A4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021F6362
	add r0, #8
	ldr r0, [r4, r0]
	bl ovy271_21f69a0
	add r0, r4, #0
	bl sub_021B57FC
_021F6362:
	pop {r4, pc}
	.align 2, 0
_021F6364: .word 0x000005A4
	thumb_func_end ovy271_21f6348

	thumb_func_start ovy271_21f6368
ovy271_21f6368: ; 0x021F6368
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r6, #9
	blt _021F637E
	ldr r0, _021F6438 ; =0x021F7EE0
	ldr r2, _021F643C ; =0x021F7EE4
	mov r1, #0
	bl sub_0203CB80
_021F637E:
	cmp r4, #0
	beq _021F6390
	mov r0, #0x5b
	ldr r2, [r4]
	lsl r0, r0, #4
	str r2, [r5, r0]
	ldr r1, [r4, #4]
	add r0, r0, #4
	str r1, [r5, r0]
_021F6390:
	ldr r4, _021F6440 ; =0x000005B8
	mov r1, #0
	add r0, r5, r4
	mov r2, #0x24
	blx MI_CpuFill8
	cmp r6, #8
	bhi _021F642A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F63AC: ; jump table
	.short _021F63BE - _021F63AC - 2 ; case 0
	.short _021F63CA - _021F63AC - 2 ; case 1
	.short _021F63D6 - _021F63AC - 2 ; case 2
	.short _021F63E2 - _021F63AC - 2 ; case 3
	.short _021F63EE - _021F63AC - 2 ; case 4
	.short _021F63FA - _021F63AC - 2 ; case 5
	.short _021F6406 - _021F63AC - 2 ; case 6
	.short _021F6412 - _021F63AC - 2 ; case 7
	.short _021F641E - _021F63AC - 2 ; case 8
_021F63BE:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6444 ; =ovy271_21f6724
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F63CA:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6448 ; =ovy271_21f6760
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F63D6:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F644C ; =ovy271_21f6794
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F63E2:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6450 ; =ovy271_21f67cc
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F63EE:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6454 ; =ovy271_21f6804
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F63FA:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6458 ; =ovy271_21f684c
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F6406:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F645C ; =ovy271_21f687c
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F6412:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6460 ; =ovy271_21f68ac
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F641E:
	sub r4, #0xc
	ldr r0, [r5, r4]
	ldr r1, _021F6464 ; =ovy271_21f68dc
	bl sub_021F69B0
	pop {r4, r5, r6, pc}
_021F642A:
	ldr r0, _021F6438 ; =0x021F7EE0
	ldr r2, _021F6468 ; =0x021F7F00
	mov r1, #0
	bl sub_0203CB80
	pop {r4, r5, r6, pc}
	nop
_021F6438: .word 0x021F7EE0
_021F643C: .word 0x021F7EE4
_021F6440: .word 0x000005B8
_021F6444: .word ovy271_21f6724
_021F6448: .word ovy271_21f6760
_021F644C: .word ovy271_21f6794
_021F6450: .word ovy271_21f67cc
_021F6454: .word ovy271_21f6804
_021F6458: .word ovy271_21f684c
_021F645C: .word ovy271_21f687c
_021F6460: .word ovy271_21f68ac
_021F6464: .word ovy271_21f68dc
_021F6468: .word 0x021F7F00
	thumb_func_end ovy271_21f6368
_021F646C:
	.byte 0x02, 0x49, 0x03, 0x4B
	.byte 0x40, 0x58, 0x03, 0x49, 0x18, 0x47, 0xC0, 0x46, 0xAC, 0x05, 0x00, 0x00, 0xB9, 0x69, 0x1F, 0x02
	.byte 0x05, 0x67, 0x1F, 0x02

	thumb_func_start ovy271_21f6484
ovy271_21f6484: ; 0x021F6484
	push {r3, r4, r5, lr}
	add r4, r3, #0
	ldr r3, _021F649C ; =0x000005BC
	ldr r5, [r0, r3]
	cmp r5, #0
	beq _021F6496
	bl sub_021B614C
	str r0, [r4]
_021F6496:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_021F649C: .word 0x000005BC
	thumb_func_end ovy271_21f6484

	thumb_func_start ovy271_21f64a0
ovy271_21f64a0: ; 0x021F64A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x17
	lsl r1, r1, #6
	ldr r5, [r0, r1]
	cmp r5, #0
	beq _021F64B6
	bl sub_021B61B8
	str r0, [r4]
	str r1, [r4, #4]
_021F64B6:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy271_21f64a0

	thumb_func_start ovy271_21f64bc
ovy271_21f64bc: ; 0x021F64BC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _021F64D4 ; =0x000005C4
	ldr r5, [r0, r2]
	cmp r5, #0
	beq _021F64CE
	bl sub_021B62B4
	str r0, [r4]
_021F64CE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_021F64D4: .word 0x000005C4
	thumb_func_end ovy271_21f64bc

	thumb_func_start ovy271_21f64d8
ovy271_21f64d8: ; 0x021F64D8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, _021F64FC ; =0x000005C8
	ldr r4, [r0, r3]
	cmp r4, #0
	beq _021F64EA
	bl sub_021B61EC
	str r0, [r5]
_021F64EA:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F64F8
	cmp r4, #0
	beq _021F64F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F64F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F64FC: .word 0x000005C8
	thumb_func_end ovy271_21f64d8

	thumb_func_start ovy271_21f6500
ovy271_21f6500: ; 0x021F6500
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, _021F6524 ; =0x000005C8
	ldr r4, [r0, r3]
	cmp r4, #0
	beq _021F6512
	bl sub_021B61EC
	str r0, [r5]
_021F6512:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F6520
	cmp r4, #0
	beq _021F6520
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6520:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F6524: .word 0x000005C8
	thumb_func_end ovy271_21f6500

	thumb_func_start ovy271_21f6528
ovy271_21f6528: ; 0x021F6528
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, _021F654C ; =0x000005C8
	ldr r4, [r0, r3]
	cmp r4, #0
	beq _021F653A
	bl sub_021B61EC
	str r0, [r5]
_021F653A:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F6548
	cmp r4, #0
	beq _021F6548
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6548:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F654C: .word 0x000005C8
	thumb_func_end ovy271_21f6528

	thumb_func_start ovy271_21f6550
ovy271_21f6550: ; 0x021F6550
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, sp, #0
	add r6, r0, #0
	bl sub_021B60C4
	cmp r0, #0
	bne _021F6564
	b _021F6688
_021F6564:
	ldr r1, [sp]
	mov r5, #1
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _021F6580
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021F6672
	cmp r4, #0
	beq _021F657E
	ldr r0, _021F6690 ; =0x0000011B
	add r0, r1, r0
	str r0, [r4]
_021F657E:
	b _021F6594
_021F6580:
	cmp r0, #1
	bne _021F6598
	ldr r1, [r1, #0xc]
	cmp r1, #7
	bne _021F6672
	cmp r4, #0
	beq _021F6594
	ldr r0, _021F6694 ; =0x0000012A
	add r0, r1, r0
	str r0, [r4]
_021F6594:
	mov r5, #1
	b _021F6672
_021F6598:
	cmp r0, #2
	bne _021F6672
	ldr r0, [r1, #8]
	ldr r2, _021F6698 ; =0x000055F0
	cmp r0, r2
	bgt _021F65BA
	bge _021F65F8
	ldr r2, _021F669C ; =0x00005209
	cmp r0, r2
	bgt _021F6672
	sub r3, r2, #1
	cmp r0, r3
	blt _021F6672
	beq _021F65D6
	cmp r0, r2
	beq _021F65E8
	b _021F6672
_021F65BA:
	add r3, r2, #3
	cmp r0, r3
	bgt _021F6672
	add r3, r2, #1
	cmp r0, r3
	blt _021F6672
	beq _021F664C
	add r3, r2, #2
	cmp r0, r3
	beq _021F665E
	add r1, r2, #3
	cmp r0, r1
	beq _021F6670
	b _021F6672
_021F65D6:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021F6672
	cmp r4, #0
	beq _021F65E4
	add r0, #0xe6
	str r0, [r4]
_021F65E4:
	mov r5, #2
	b _021F6672
_021F65E8:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021F6672
	cmp r4, #0
	beq _021F65F6
	add r0, #0xed
	str r0, [r4]
_021F65F6:
	b _021F65E4
_021F65F8:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021F6672
	add r1, r0, #0
	sub r1, #0x96
	cmp r1, #3
	bhi _021F6640
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F6612: ; jump table
	.short _021F661A - _021F6612 - 2 ; case 0
	.short _021F6628 - _021F6612 - 2 ; case 1
	.short _021F6630 - _021F6612 - 2 ; case 2
	.short _021F6638 - _021F6612 - 2 ; case 3
_021F661A:
	bl sub_02006280
	mov r0, #0x41
_021F6620:
	bl sub_020120F0
	mov r5, #3
	b _021F6672
_021F6628:
	bl sub_02006280
	mov r0, #0x42
	b _021F6620
_021F6630:
	bl sub_02006280
	mov r0, #0x44
	b _021F6620
_021F6638:
	bl sub_02006280
	mov r0, #0x43
	b _021F6620
_021F6640:
	cmp r4, #0
	beq _021F664A
	ldr r1, _021F66A0 ; =0x00000105
	add r0, r0, r1
	str r0, [r4]
_021F664A:
	b _021F65E4
_021F664C:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021F6672
	cmp r4, #0
	beq _021F665C
	ldr r0, _021F66A4 ; =0x0000010D
	add r0, r1, r0
	str r0, [r4]
_021F665C:
	b _021F65E4
_021F665E:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021F6672
	cmp r4, #0
	beq _021F666E
	ldr r0, _021F66A8 ; =0x00000112
	add r0, r1, r0
	str r0, [r4]
_021F666E:
	b _021F6594
_021F6670:
	mov r5, #0
_021F6672:
	add r0, r6, #0
	bl sub_021B60D0
	cmp r5, #3
	bne _021F6682
	ldr r0, _021F66AC ; =0x000005DC
	mov r1, #1
	str r1, [r6, r0]
_021F6682:
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_021F6688:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F6690: .word 0x0000011B
_021F6694: .word 0x0000012A
_021F6698: .word 0x000055F0
_021F669C: .word 0x00005209
_021F66A0: .word 0x00000105
_021F66A4: .word 0x0000010D
_021F66A8: .word 0x00000112
_021F66AC: .word 0x000005DC
	thumb_func_end ovy271_21f6550

	thumb_func_start ovy271_21f66b0
ovy271_21f66b0: ; 0x021F66B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _021F66BA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F66BA:
	mov r0, #1
	mov r1, #0
	mov r4, #1
	bl sub_02152404
	cmp r0, #1
	beq _021F66D2
	cmp r0, #2
	beq _021F66DA
	cmp r0, #3
	beq _021F66E6
	b _021F66EE
_021F66D2:
	bl sub_02006280
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F66DA:
	bl sub_02006280
	ldr r0, _021F66F4 ; =0x000005DC
	str r4, [r5, r0]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F66E6:
	bl sub_02006280
	bl sub_02011D20
_021F66EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021F66F4: .word 0x000005DC
	thumb_func_end ovy271_21f66b0

	thumb_func_start sub_021F66F8
sub_021F66F8: ; 0x021F66F8
	ldr r1, _021F6700 ; =0x000005DC
	ldr r0, [r0, r1]
	bx lr
	nop
_021F6700: .word 0x000005DC
	thumb_func_end sub_021F66F8
_021F6704:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f6708
ovy271_21f6708: ; 0x021F6708
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021B60E4
	cmp r0, #0
	beq _021F671E
	ldr r1, _021F6720 ; =0x021F6705
	add r0, r4, #0
	bl sub_021F69B0
_021F671E:
	pop {r4, pc}
	.align 2, 0
_021F6720: .word 0x021F6705
	thumb_func_end ovy271_21f6708

	thumb_func_start ovy271_21f6724
ovy271_21f6724: ; 0x021F6724
	push {r4, lr}
	ldr r3, _021F6750 ; =0x000005A8
	add r4, r0, #0
	ldr r1, [r2, r3]
	add r3, #8
	add r0, r2, #0
	ldr r2, [r2, r3]
	bl sub_021B558C
	cmp r0, #0
	bne _021F6744
	ldr r0, _021F6754 ; =0x021F7EE0
	ldr r2, _021F6758 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F6744:
	ldr r1, _021F675C ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	nop
_021F6750: .word 0x000005A8
_021F6754: .word 0x021F7EE0
_021F6758: .word 0x021F7F04
_021F675C: .word ovy271_21f6708
	thumb_func_end ovy271_21f6724

	thumb_func_start ovy271_21f6760
ovy271_21f6760: ; 0x021F6760
	push {r4, lr}
	mov r1, #0x5b
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021B55D8
	cmp r0, #0
	bne _021F677E
	ldr r0, _021F6788 ; =0x021F7EE0
	ldr r2, _021F678C ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F677E:
	ldr r1, _021F6790 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	.align 2, 0
_021F6788: .word 0x021F7EE0
_021F678C: .word 0x021F7F04
_021F6790: .word ovy271_21f6708
	thumb_func_end ovy271_21f6760

	thumb_func_start ovy271_21f6794
ovy271_21f6794: ; 0x021F6794
	push {r4, lr}
	ldr r1, _021F67BC ; =0x000005A8
	add r4, r0, #0
	ldr r1, [r2, r1]
	add r0, r2, #0
	bl sub_021B5600
	cmp r0, #0
	bne _021F67B0
	ldr r0, _021F67C0 ; =0x021F7EE0
	ldr r2, _021F67C4 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F67B0:
	ldr r1, _021F67C8 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	nop
_021F67BC: .word 0x000005A8
_021F67C0: .word 0x021F7EE0
_021F67C4: .word 0x021F7F04
_021F67C8: .word ovy271_21f6708
	thumb_func_end ovy271_21f6794

	thumb_func_start ovy271_21f67cc
ovy271_21f67cc: ; 0x021F67CC
	push {r4, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	ldr r1, [r2, r3]
	add r4, r0, #0
	add r3, r3, #4
	add r0, r2, #0
	ldr r2, [r2, r3]
	bl sub_021B57A4
	cmp r0, #0
	bne _021F67EE
	ldr r0, _021F67F8 ; =0x021F7EE0
	ldr r2, _021F67FC ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F67EE:
	ldr r1, _021F6800 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	.align 2, 0
_021F67F8: .word 0x021F7EE0
_021F67FC: .word 0x021F7F04
_021F6800: .word ovy271_21f6708
	thumb_func_end ovy271_21f67cc

	thumb_func_start ovy271_21f6804
ovy271_21f6804: ; 0x021F6804
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _021F683C ; =0x000005B3
	add r4, r0, #0
	add r0, r2, #0
	ldrb r1, [r0, r3]
	add r2, r3, #1
	str r1, [sp]
	sub r1, r3, #3
	sub r3, r3, #1
	ldrh r1, [r0, r1]
	ldrb r3, [r0, r3]
	ldr r2, [r0, r2]
	bl sub_021B56B0
	cmp r0, #0
	bne _021F6830
	ldr r0, _021F6840 ; =0x021F7EE0
	ldr r2, _021F6844 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F6830:
	ldr r1, _021F6848 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021F683C: .word 0x000005B3
_021F6840: .word 0x021F7EE0
_021F6844: .word 0x021F7F04
_021F6848: .word ovy271_21f6708
	thumb_func_end ovy271_21f6804

	thumb_func_start ovy271_21f684c
ovy271_21f684c: ; 0x021F684C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021B5730
	cmp r0, #0
	bne _021F6864
	ldr r0, _021F6870 ; =0x021F7EE0
	ldr r2, _021F6874 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F6864:
	ldr r1, _021F6878 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	nop
_021F6870: .word 0x021F7EE0
_021F6874: .word 0x021F7F04
_021F6878: .word ovy271_21f6708
	thumb_func_end ovy271_21f684c

	thumb_func_start ovy271_21f687c
ovy271_21f687c: ; 0x021F687C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021B577C
	cmp r0, #0
	bne _021F6894
	ldr r0, _021F68A0 ; =0x021F7EE0
	ldr r2, _021F68A4 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F6894:
	ldr r1, _021F68A8 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	nop
_021F68A0: .word 0x021F7EE0
_021F68A4: .word 0x021F7F04
_021F68A8: .word ovy271_21f6708
	thumb_func_end ovy271_21f687c

	thumb_func_start ovy271_21f68ac
ovy271_21f68ac: ; 0x021F68AC
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_021B5754
	cmp r0, #0
	bne _021F68C4
	ldr r0, _021F68D0 ; =0x021F7EE0
	ldr r2, _021F68D4 ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F68C4:
	ldr r1, _021F68D8 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	nop
_021F68D0: .word 0x021F7EE0
_021F68D4: .word 0x021F7F04
_021F68D8: .word ovy271_21f6708
	thumb_func_end ovy271_21f68ac

	thumb_func_start ovy271_21f68dc
ovy271_21f68dc: ; 0x021F68DC
	push {r4, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	ldr r1, [r2, r3]
	add r4, r0, #0
	add r3, r3, #4
	add r0, r2, #0
	ldr r2, [r2, r3]
	bl sub_021B57D0
	cmp r0, #0
	bne _021F68FE
	ldr r0, _021F6908 ; =0x021F7EE0
	ldr r2, _021F690C ; =0x021F7F04
	mov r1, #0
	bl sub_0203CB80
_021F68FE:
	ldr r1, _021F6910 ; =ovy271_21f6708
	add r0, r4, #0
	bl sub_021F69B0
	pop {r4, pc}
	.align 2, 0
_021F6908: .word 0x021F7EE0
_021F690C: .word 0x021F7F04
_021F6910: .word ovy271_21f6708
	thumb_func_end ovy271_21f68dc
_021F6914:
	.byte 0x01, 0x49, 0x01, 0x22, 0x42, 0x50, 0x70, 0x47, 0xB8, 0x05, 0x00, 0x00
	.byte 0x01, 0x49, 0x01, 0x22, 0x42, 0x50, 0x70, 0x47, 0xBC, 0x05, 0x00, 0x00, 0x17, 0x21, 0x01, 0x22
	.byte 0x89, 0x01, 0x42, 0x50, 0x70, 0x47, 0x00, 0x00, 0x01, 0x49, 0x01, 0x22, 0x42, 0x50, 0x70, 0x47
	.byte 0xC8, 0x05, 0x00, 0x00, 0x01, 0x49, 0x01, 0x22, 0x42, 0x50, 0x70, 0x47, 0xC4, 0x05, 0x00, 0x00
	.byte 0x01, 0x49, 0x01, 0x22, 0x42, 0x50, 0x70, 0x47, 0xD8, 0x05, 0x00, 0x00

	thumb_func_start ovy271_21f695c
ovy271_21f695c: ; 0x021F695C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021F6990 ; =0x0000044F
	add r6, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021F6994 ; =0x021F7ED4
	mov r1, #0x10
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r6, #0
	str r5, [r4, #8]
	bl sub_021F69B0
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F6990: .word 0x0000044F
_021F6994: .word 0x021F7ED4
	thumb_func_end ovy271_21f695c

	thumb_func_start sub_021F6998
sub_021F6998: ; 0x021F6998
	ldr r3, _021F699C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021F699C: .word GFL_HeapFree
	thumb_func_end sub_021F6998

	thumb_func_start ovy271_21f69a0
ovy271_21f69a0: ; 0x021F69A0
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _021F69AE
	ldr r2, [r0, #8]
	add r1, r0, #4
	blx r3
_021F69AE:
	pop {r3, pc}
	thumb_func_end ovy271_21f69a0

	thumb_func_start sub_021F69B0
sub_021F69B0: ; 0x021F69B0
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021F69B0
_021F69B8:
	.byte 0x00, 0x68, 0x88, 0x42, 0x01, 0xD1, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy271_21f69c8
ovy271_21f69c8: ; 0x021F69C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x5e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_020178BC
	cmp r0, #0
	beq _021F69E4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F69E4:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_021B5EF8
	cmp r4, #3
	beq _021F69F8
	cmp r4, #6
	bne _021F6A12
_021F69F8:
	ldr r4, _021F6A18 ; =0x000005A4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021F6A0A
	add r0, r5, #0
	bl sub_021B5534
	mov r0, #0
	str r0, [r5, r4]
_021F6A0A:
	mov r0, #0
	mov r1, #0
	bl ovy11_215205c
_021F6A12:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6A18: .word 0x000005A4
	thumb_func_end ovy271_21f69c8

	thumb_func_start ovy271_21f6a1c
ovy271_21f6a1c: ; 0x021F6A1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _021F6AA8 ; =0x0000012A
	str r3, [sp, #8]
	str r0, [sp]
	add r0, sp, #0x20
	add r7, r1, #0
	str r2, [sp, #4]
	ldrh r0, [r0, #0xc]
	ldr r3, _021F6AAC ; =0x021F7F08
	mov r1, #0x90
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x90
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, sp, #0x20
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x24]
	str r6, [r4, #0x7c]
	ldr r0, [sp, #0x20]
	str r7, [r4, #0x28]
	str r0, [r4, #0x30]
	ldr r0, [sp, #4]
	str r0, [r4, #0x34]
	ldr r0, [sp, #8]
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x24]
	bl sub_02021998
	str r0, [r4, #0x3c]
	add r0, sp, #0x20
	ldrh r1, [r0, #0xc]
	ldr r0, _021F6AB0 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r1, r4, #0
	lsr r0, r0, #0x10
	add r1, #0x84
	bl ovy271_21f7080
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x74]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x78]
_021F6A8A:
	add r2, r4, #0
	add r2, #0x80
	ldr r0, [r4, #0x7c]
	ldr r2, [r2]
	add r1, r5, #0
	bl ovy271_21f6fa4
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x14]
	cmp r5, #9
	blt _021F6A8A
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F6AA8: .word 0x0000012A
_021F6AAC: .word 0x021F7F08
_021F6AB0: .word 0x00007FFF
	thumb_func_end ovy271_21f6a1c

	thumb_func_start ovy271_21f6ab4
ovy271_21f6ab4: ; 0x021F6AB4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _021F6ACC
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
_021F6ACC:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GFL_HeapFree
	ldr r0, [r4, #0x3c]
	bl sub_02021A18
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy271_21f6ab4

	thumb_func_start ovy271_21f6ae4
ovy271_21f6ae4: ; 0x021F6AE4
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _021F6B62
	ldr r1, [r4]
	cmp r1, #0xa
	bhi _021F6B62
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021F6B02: ; jump table
	.short _021F6B18 - _021F6B02 - 2 ; case 0
	.short _021F6B1E - _021F6B02 - 2 ; case 1
	.short _021F6B22 - _021F6B02 - 2 ; case 2
	.short _021F6B6E - _021F6B02 - 2 ; case 3
	.short _021F6BC2 - _021F6B02 - 2 ; case 4
	.short _021F6BD6 - _021F6B02 - 2 ; case 5
	.short _021F6BE2 - _021F6B02 - 2 ; case 6
	.short _021F6C56 - _021F6B02 - 2 ; case 7
	.short _021F6C64 - _021F6B02 - 2 ; case 8
	.short _021F6C66 - _021F6B02 - 2 ; case 9
	.short _021F6C68 - _021F6B02 - 2 ; case 10
_021F6B18:
	add r0, r1, #1
_021F6B1A:
	str r0, [r4]
	b _021F6C6C
_021F6B1E:
	mov r0, #2
_021F6B20:
	b _021F6B1A
_021F6B22:
	bl ovy271_21f6f48
	str r0, [r4, #0xc]
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl sub_0203DAC8
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	bl ovy271_21f2288
	tst r0, r5
	beq _021F6B5C
	ldr r0, [sp, #0x20]
	mov r1, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x14
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x78]
	mov r5, #1
	bl ovy271_21f4678
	mov r0, #8
	str r0, [r4]
	str r5, [r4, #8]
	b _021F6C6C
_021F6B5C:
	ldr r0, [r4, #0xc]
	cmp r0, #9
	bne _021F6B64
_021F6B62:
	b _021F6C6C
_021F6B64:
	mov r0, #4
	str r0, [r4]
	mov r0, #3
_021F6B6A:
	str r0, [r4, #4]
	b _021F6C6C
_021F6B6E:
	ldr r0, [r4, #0x68]
	bl ovy271_21f3b10
	ldr r0, [r4, #0x68]
	bl sub_021F3BAC
	str r0, [r4, #0x10]
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DAC8
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ovy271_21f2288
	tst r0, r5
	beq _021F6BAE
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, sp, #4
	str r0, [sp, #8]
	ldr r0, [r4, #0x78]
	bl ovy271_21f4678
	mov r0, #4
	str r0, [r4]
	mov r0, #2
	b _021F6B6A
_021F6BAE:
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _021F6C6C
	mov r0, #8
	str r0, [r4]
	mov r0, #2
	str r0, [r4, #8]
	b _021F6C6C
_021F6BC2:
	ldr r0, [r4, #0x78]
	bl sub_021F4750
	cmp r0, #0
	beq _021F6C6C
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #2
	mov r3, #1
	b _021F6C4C
_021F6BD6:
	ldr r0, [r4, #0x30]
	bl sub_021F55C8
	cmp r0, #0
	beq _021F6C6C
	b _021F6C50
_021F6BE2:
	ldr r1, [r4, #4]
	cmp r1, #3
	bne _021F6C24
	bl ovy271_21f6e1c
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _021F6C00
	ldr r0, _021F6C78 ; =0x021F7F18
	ldr r2, _021F6C7C ; =0x021F7F1C
	mov r1, #0
	bl sub_0203CB80
_021F6C00:
	ldrh r0, [r4, #0x24]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r2, #0x80
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0xc]
	ldr r2, [r2]
	add r3, #0x8c
	bl ovy271_21f6fe0
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	bl ovy271_21f6e48
	b _021F6C44
_021F6C24:
	bl ovy271_21f6f28
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _021F6C3E
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
_021F6C3E:
	add r0, r4, #0
	bl ovy271_21f6d78
_021F6C44:
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #2
	mov r3, #0
_021F6C4C:
	bl ovy271_21f559c
_021F6C50:
	ldr r0, [r4]
	add r0, r0, #1
	b _021F6B20
_021F6C56:
	ldr r0, [r4, #0x30]
	bl sub_021F55C8
	cmp r0, #0
	beq _021F6C6C
	ldr r0, [r4, #4]
	b _021F6B20
_021F6C64:
	b _021F6B18
_021F6C66:
	b _021F6B18
_021F6C68:
	mov r0, #1
	str r0, [r4, #0x20]
_021F6C6C:
	add r0, r4, #0
	bl ovy271_21f6c80
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021F6C78: .word 0x021F7F18
_021F6C7C: .word 0x021F7F1C
	thumb_func_end ovy271_21f6ae4

	thumb_func_start ovy271_21f6c80
ovy271_21f6c80: ; 0x021F6C80
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #1
	mov r5, #0
_021F6C88:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021F6C98
	bl ovy271_21f362c
	and r4, r0
_021F6C98:
	add r5, r5, #1
	cmp r5, #9
	blt _021F6C88
	ldr r0, [r6, #0x3c]
	bl sub_02021A3C
	and r0, r4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy271_21f6c80

	thumb_func_start ovy271_21f6ca8
ovy271_21f6ca8: ; 0x021F6CA8
	push {r4, lr}
	add r4, r0, #0
	bl ovy271_21f6cf4
	add r0, r4, #0
	bl ovy271_21f6d78
	mov r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
	thumb_func_end ovy271_21f6ca8

	thumb_func_start ovy271_21f6cbc
ovy271_21f6cbc: ; 0x021F6CBC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	cmp r1, #1
	bne _021F6CD0
	bl ovy271_21f6f28
	b _021F6CD4
_021F6CD0:
	bl ovy271_21f6e1c
_021F6CD4:
	add r0, r4, #0
	bl sub_021F6D6C
	pop {r4, pc}
	thumb_func_end ovy271_21f6cbc
_021F6CDC:
	.byte 0x02, 0x6A, 0x00, 0x2A
	.byte 0x06, 0xD0, 0x82, 0x68, 0x02, 0x2A, 0x01, 0xD1, 0x02, 0x69, 0x0A, 0x80, 0x80, 0x68, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy271_21f6cf4
ovy271_21f6cf4: ; 0x021F6CF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_021F2FF8
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_021F3000
	add r4, r0, #0
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #8
	mov r7, #0
	blx MI_CpuFill8
	mov r1, #0x50
	add r0, sp, #0x18
	strh r1, [r0]
	mov r1, #0xa8
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r1, #1
	strb r1, [r0, #6]
	ldr r0, [r5, #0x28]
	mov r1, #6
	add r2, sp, #0x20
	bl ovy271_21f2f10
	cmp r0, #0
	bne _021F6D3E
	ldr r0, _021F6D64 ; =0x021F7F18
	ldr r2, _021F6D68 ; =0x021F7F38
	add r1, r7, #0
	bl sub_0203CB80
_021F6D3E:
	ldr r0, [r5, #0x34]
	mov r1, #4
	str r0, [sp]
	ldr r0, [r5, #0x38]
	mov r2, #0x60
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	add r0, sp, #0x20
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x24]
	mov r3, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	bl ovy271_21f214c
	str r0, [r5, #0x2c]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F6D64: .word 0x021F7F18
_021F6D68: .word 0x021F7F38
	thumb_func_end ovy271_21f6cf4

	thumb_func_start sub_021F6D6C
sub_021F6D6C: ; 0x021F6D6C
	ldr r0, [r0, #0x2c]
	ldr r3, _021F6D74 ; =ovy271_21f2268
	bx r3
	nop
_021F6D74: .word ovy271_21f2268
	thumb_func_end sub_021F6D6C

	thumb_func_start ovy271_21f6d78
ovy271_21f6d78: ; 0x021F6D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r2, [r5, #0x24]
	ldr r0, [r5, #0x28]
	mov r4, #0
	mov r1, #0x14
	str r4, [r5, #0x70]
	bl ovy271_21f274c
	ldr r0, [r5, #0x28]
	bl sub_021F2FF8
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	bl sub_021F3000
	str r0, [sp, #0x10]
_021F6D9C:
	add r0, r4, #0
	mov r1, #5
	blx sub_0208D65C
	mov r0, #6
	mul r0, r1
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r2, #6
	cmp r4, #5
	bge _021F6DB6
	mov r2, #0
_021F6DB6:
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	add r2, r2, #4
	str r0, [sp, #8]
	ldrh r0, [r5, #0x24]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	mov r3, #4
	bl ovy271_21f34a0
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #0x40]
	add r0, r5, r4
	ldrb r0, [r0, #0x14]
	ldr r6, _021F6E14 ; =0x00003DA0
	cmp r0, #0
	bne _021F6DE6
	ldr r6, _021F6E18 ; =0x00002DA0
_021F6DE6:
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [r7, #0x40]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021F3664
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r2, r4, #0
	ldr r0, [r7, #0x40]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r2, #0x3a
	bl ovy271_21f3550
	add r4, r4, #1
	cmp r4, #9
	blt _021F6D9C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6E14: .word 0x00003DA0
_021F6E18: .word 0x00002DA0
	thumb_func_end ovy271_21f6d78

	thumb_func_start ovy271_21f6e1c
ovy271_21f6e1c: ; 0x021F6E1C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021F6E24:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x40]
	bl ovy271_21f3530
	add r4, r4, #1
	str r7, [r5, #0x40]
	cmp r4, #9
	blt _021F6E24
	mov r0, #4
	bl GFL_BGSysLoadScr
	ldr r0, [r6, #0x28]
	mov r1, #0x14
	bl ovy271_21f2b8c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy271_21f6e1c

	thumb_func_start ovy271_21f6e48
ovy271_21f6e48: ; 0x021F6E48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #1
	str r0, [r5, #0x70]
	ldrh r2, [r5, #0x24]
	ldr r0, [r5, #0x28]
	mov r1, #0x15
	bl ovy271_21f274c
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021F6E6C
	ldr r0, _021F6F14 ; =0x021F7F18
	ldr r2, _021F6F18 ; =0x021F7F3C
	mov r1, #0
	bl sub_0203CB80
_021F6E6C:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _021F6E7C
	ldr r0, _021F6F14 ; =0x021F7F18
	ldr r2, _021F6F1C ; =0x021F7F58
	mov r1, #0
	bl sub_0203CB80
_021F6E7C:
	add r0, r5, #0
	add r0, #0x8c
	ldrh r1, [r5, #0x24]
	ldr r0, [r0]
	bl sub_02024F60
	str r0, [r5, #0x64]
	ldrh r1, [r5, #0x24]
	mov r0, #0xb
	bl GFL_StrBufCreate
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021F6ED6
_021F6EA0:
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	lsl r6, r4, #1
	ldr r0, _021F6F20 ; =0x0209A434
	ldrh r1, [r1, r6]
	ldr r0, [r0]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r2, r5, #0
	add r2, #0x88
	ldr r2, [r2]
	ldr r1, [r5, #0x64]
	lsl r0, r4, #3
	add r0, r1, r0
	ldrh r2, [r2, r6]
	ldrh r3, [r5, #0x24]
	add r1, r7, #0
	bl sub_02024FDC
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blo _021F6EA0
_021F6ED6:
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r4, _021F6F24 ; =0x021F7B00
	add r3, sp, #0
	mov r2, #5
_021F6EE2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F6EE2
	ldr r0, [r5, #0x64]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x74]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x78]
	str r0, [sp, #0x20]
	ldrh r1, [r5, #0x24]
	add r0, sp, #0
	bl ovy271_21f36c4
	str r0, [r5, #0x68]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6F14: .word 0x021F7F18
_021F6F18: .word 0x021F7F3C
_021F6F1C: .word 0x021F7F58
_021F6F20: .word 0x0209A434
_021F6F24: .word 0x021F7B00
	thumb_func_end ovy271_21f6e48

	thumb_func_start ovy271_21f6f28
ovy271_21f6f28: ; 0x021F6F28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	bl ovy271_21f3a84
	mov r4, #0
	ldr r0, [r5, #0x64]
	str r4, [r5, #0x68]
	bl sub_02024FAC
	ldr r0, [r5, #0x28]
	mov r1, #0x15
	str r4, [r5, #0x64]
	bl ovy271_21f2b8c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy271_21f6f28

	thumb_func_start ovy271_21f6f48
ovy271_21f6f48: ; 0x021F6F48
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021F6F98 ; =0x021F7B28
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021F6F92
	add r0, r5, r4
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _021F6F8C
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x78]
	bl ovy271_21f4678
	ldr r0, _021F6F9C ; =0x00000703
	bl GFL_SndSEPlay
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F6F8C:
	ldr r0, _021F6FA0 ; =0x00000704
	bl GFL_SndSEPlay
_021F6F92:
	mov r0, #9
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F6F98: .word 0x021F7B28
_021F6F9C: .word 0x00000703
_021F6FA0: .word 0x00000704
	thumb_func_end ovy271_21f6f48

	thumb_func_start ovy271_21f6fa4
ovy271_21f6fa4: ; 0x021F6FA4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r2, #0
	add r0, r1, #1
	ldr r2, _021F6FDC ; =0x021F7AEC
	lsl r0, r0, #1
	ldrh r5, [r2, r0]
	mov r0, #0
	str r0, [sp]
	lsl r0, r1, #1
	ldrh r4, [r2, r0]
	cmp r4, r5
	bhs _021F6FD6
_021F6FBE:
	lsl r1, r4, #1
	ldrh r1, [r6, r1]
	add r0, r7, #0
	bl sub_0200D7F4
	cmp r0, #0
	beq _021F6FD0
	mov r0, #1
	str r0, [sp]
_021F6FD0:
	add r4, r4, #1
	cmp r4, r5
	blo _021F6FBE
_021F6FD6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6FDC: .word 0x021F7AEC
	thumb_func_end ovy271_21f6fa4

	thumb_func_start ovy271_21f6fe0
ovy271_21f6fe0: ; 0x021F6FE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r4, r2, #0
	add r0, r1, #1
	ldr r2, _021F7078 ; =0x021F7AEC
	lsl r0, r0, #1
	ldrh r7, [r2, r0]
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	str r3, [sp, #8]
	add r5, r6, #0
	cmp r6, r7
	bhs _021F701A
_021F7000:
	lsl r1, r5, #1
	ldrh r1, [r4, r1]
	ldr r0, [sp, #4]
	bl sub_0200D7F4
	cmp r0, #0
	beq _021F7014
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_021F7014:
	add r5, r5, #1
	cmp r5, r7
	blo _021F7000
_021F701A:
	ldr r0, [sp, #0x10]
	ldr r3, _021F707C ; =0x021F7F08
	lsl r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xf6
	lsl r0, r0, #2
	str r0, [sp]
	add r0, sp, #0x30
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	ldr r2, [sp, #0xc]
	mov r1, #0
	str r0, [sp, #0x14]
	blx MI_CpuFill8
	cmp r6, r7
	bhs _021F7068
_021F7044:
	lsl r0, r6, #1
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #4]
	ldrh r1, [r4, r1]
	bl sub_0200D7F4
	cmp r0, #0
	beq _021F7062
	ldr r0, [sp, #0x18]
	lsl r1, r5, #1
	ldrh r2, [r4, r0]
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	strh r2, [r0, r1]
_021F7062:
	add r6, r6, #1
	cmp r6, r7
	blo _021F7044
_021F7068:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F7070
	str r5, [r0]
_021F7070:
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F7078: .word 0x021F7AEC
_021F707C: .word 0x021F7F08
	thumb_func_end ovy271_21f6fe0

	thumb_func_start ovy271_21f7080
ovy271_21f7080: ; 0x021F7080
	push {r4, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x61
	mov r1, #5
	mov r2, #0
	bl sub_0204B570
	ldr r1, [sp, #4]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy271_21f7080
_021F70A0:
	.byte 0x41, 0xFE, 0x1E, 0x02, 0x89, 0x00, 0x1F, 0x02, 0xD9, 0xFF, 0x1E, 0x02, 0xE8, 0x20, 0x1C, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x25, 0x01, 0x1F, 0x02, 0x65, 0x01, 0x1F, 0x02
	.byte 0xF4, 0x20, 0x1C, 0x02, 0x2C, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x69, 0x01, 0x1F, 0x02
	.byte 0x69, 0x02, 0x1F, 0x02, 0x1C, 0x21, 0x1C, 0x02, 0x40, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00
	.byte 0x7D, 0x02, 0x1F, 0x02, 0xB9, 0x03, 0x1F, 0x02, 0x34, 0x22, 0x1C, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0x0C, 0x01, 0x00, 0x00, 0xC9, 0x03, 0x1F, 0x02, 0x05, 0x04, 0x1F, 0x02, 0x90, 0x23, 0x1C, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x09, 0x04, 0x1F, 0x02, 0x45, 0x04, 0x1F, 0x02
	.byte 0x74, 0x25, 0x1C, 0x02, 0x2C, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x49, 0x04, 0x1F, 0x02
	.byte 0xC5, 0x04, 0x1F, 0x02, 0xB8, 0x26, 0x1C, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00
	.byte 0xC9, 0x04, 0x1F, 0x02, 0xED, 0x04, 0x1F, 0x02, 0xC4, 0x26, 0x1C, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0x0C, 0x01, 0x00, 0x00, 0xF1, 0x04, 0x1F, 0x02, 0x0D, 0x05, 0x1F, 0x02, 0x68, 0x27, 0x1C, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x11, 0x05, 0x1F, 0x02, 0x39, 0x05, 0x1F, 0x02
	.byte 0x74, 0x27, 0x1C, 0x02, 0x20, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0x3D, 0x05, 0x1F, 0x02
	.byte 0x8D, 0x05, 0x1F, 0x02, 0xB8, 0x27, 0x1C, 0x02, 0x30, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00
	.byte 0xB1, 0x05, 0x1F, 0x02, 0x0D, 0x06, 0x1F, 0x02, 0x00, 0xFE, 0x1E, 0x02, 0x1C, 0x00, 0x00, 0x00
	.byte 0x0E, 0x01, 0x00, 0x00, 0x4D, 0x06, 0x1F, 0x02, 0x71, 0x06, 0x1F, 0x02, 0x7C, 0xF7, 0x1E, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x0D, 0x01, 0x00, 0x00, 0x75, 0x06, 0x1F, 0x02, 0x99, 0x06, 0x1F, 0x02
	.byte 0x2A, 0x00, 0x00, 0x00, 0xA9, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x89, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x2A, 0x00, 0x49, 0x00, 0x08, 0x00, 0xA1, 0x00, 0x02, 0x00, 0x04, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x6D, 0x00, 0x08, 0x00, 0xA2, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x49, 0x00, 0x0B, 0x00, 0xA1, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x6D, 0x00, 0x0B, 0x00, 0xA2, 0x00
	.byte 0x04, 0x00, 0x02, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x49, 0x00, 0x09, 0x00, 0xA1, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x6D, 0x00, 0x09, 0x00, 0xA2, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x39, 0x00, 0x05, 0x00, 0x5F, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x5D, 0x00, 0x05, 0x00, 0x60, 0x00
	.byte 0x08, 0x00, 0x01, 0x00, 0x08, 0x00, 0x54, 0x01, 0x00, 0x00, 0x01, 0x00, 0x79, 0x00, 0x01, 0x00
	.byte 0x2A, 0x00, 0x81, 0x00, 0x05, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x00, 0xE5, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x39, 0x00, 0x0A, 0x00, 0x2A, 0x00
	.byte 0x00, 0x00, 0x04, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x5D, 0x00, 0x0A, 0x00, 0x29, 0x00, 0x01, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x49, 0x01, 0x05, 0x00, 0x2A, 0x00, 0x81, 0x00, 0x0A, 0x00, 0x03, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0x0B, 0x00, 0xE5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x39, 0x00, 0x03, 0x00, 0x1B, 0x00, 0x0A, 0x00, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x01, 0x00, 0x2A, 0x00, 0x5D, 0x00, 0x03, 0x00, 0x1C, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x81, 0x00, 0x03, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x07, 0x00, 0x21, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x07, 0x00, 0x27, 0x00, 0x0E, 0x00, 0x04, 0x00, 0x05, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x07, 0x00, 0x28, 0x00
	.byte 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x07, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x09, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x01, 0x00, 0x05, 0x00
	.byte 0x0A, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x01, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x01, 0x00, 0x06, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x01, 0x00, 0x07, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x01, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x02, 0x00, 0x09, 0x00
	.byte 0x0B, 0x00, 0x04, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x02, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x02, 0x00, 0x09, 0x00, 0x0B, 0x00, 0x04, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x03, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x02, 0x00, 0x09, 0x00
	.byte 0x0B, 0x00, 0x04, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x04, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x02, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x06, 0x00, 0x1F, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x06, 0x00, 0x22, 0x00, 0x05, 0x00, 0x04, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x06, 0x00, 0x23, 0x00
	.byte 0x06, 0x00, 0x04, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x06, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x04, 0x00, 0x09, 0x00
	.byte 0x0B, 0x00, 0x04, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x02, 0x00
	.byte 0x2A, 0x00, 0x4D, 0x00, 0x04, 0x00, 0x09, 0x00, 0x0B, 0x00, 0x04, 0x00, 0x09, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x03, 0x00, 0x2A, 0x00, 0x71, 0x00, 0x04, 0x00, 0x09, 0x00
	.byte 0x0B, 0x00, 0x04, 0x00, 0x09, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x34, 0x01, 0x04, 0x00
	.byte 0x2A, 0x00, 0x95, 0x00, 0x04, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x68, 0x74, 0x1F, 0x02
	.byte 0xD0, 0x71, 0x1F, 0x02, 0x04, 0x00, 0x00, 0x00, 0xC8, 0x74, 0x1F, 0x02, 0x18, 0x72, 0x1F, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x28, 0x75, 0x1F, 0x02, 0x50, 0x72, 0x1F, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC0, 0x73, 0x1F, 0x02, 0x68, 0x72, 0x1F, 0x02, 0x04, 0x00, 0x00, 0x00, 0xE8, 0x75, 0x1F, 0x02
	.byte 0x80, 0x72, 0x1F, 0x02, 0x03, 0x00, 0x00, 0x00, 0x30, 0x73, 0x1F, 0x02, 0xD8, 0x71, 0x1F, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x88, 0x75, 0x1F, 0x02, 0xE8, 0x71, 0x1F, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x08, 0x74, 0x1F, 0x02, 0x38, 0x72, 0x1F, 0x02, 0x02, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x1F, 0x02
	.byte 0xF8, 0x71, 0x1F, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x73, 0x1F, 0x02, 0x08, 0x72, 0x1F, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x78, 0x73, 0x1F, 0x02, 0xE0, 0x71, 0x1F, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xD0, 0x72, 0x1F, 0x02, 0x28, 0x72, 0x1F, 0x02, 0x40, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x41, 0x00, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x4B, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x42, 0x16, 0x00, 0x00, 0x05, 0x7E, 0x00, 0x00
	.byte 0x7F, 0x35, 0x00, 0x00, 0xEF, 0x3D, 0x00, 0x00, 0x1F, 0x03, 0x00, 0x00, 0xBC, 0x00, 0x00, 0x00
	.byte 0x31, 0x01, 0x00, 0x00, 0x3F, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x20, 0x00, 0x40, 0x00, 0x40, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0xFF
	.byte 0x80, 0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x08, 0x80, 0x08, 0x20, 0x08, 0x80, 0xE0, 0xF8
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x03, 0x06, 0x05, 0x04, 0x05, 0x02, 0x00, 0x01, 0x03, 0x06, 0x05
	.byte 0x04, 0x07, 0x07, 0x00, 0x18, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x94, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xAC, 0x00, 0x00, 0x00, 0x07, 0x04, 0x12, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x11, 0x08, 0x0B, 0x04, 0x10, 0x00, 0x00, 0x00, 0x04, 0x0B, 0x0C, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x03, 0x0D, 0x19, 0x02, 0x17, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x19, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x04, 0x11, 0x0B, 0x02, 0x12, 0x00, 0x00, 0x00, 0x03, 0x13, 0x1A, 0x04
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x52, 0x00, 0x60, 0x00
	.byte 0x66, 0x16, 0x06, 0x00, 0x06, 0x00, 0x60, 0x00, 0x5A, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x60, 0x00, 0xCD, 0x1C, 0x04, 0x00, 0x05, 0x00, 0x60, 0x00
	.byte 0x87, 0x00, 0xFC, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x00, 0x60, 0x00
	.byte 0x00, 0x20, 0x0E, 0x00, 0x0A, 0x00, 0x60, 0x00, 0x0E, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x60, 0x00, 0x9A, 0x19, 0x08, 0x00, 0xF6, 0x00, 0x60, 0x00
	.byte 0x5A, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x96, 0x00, 0x60, 0x00
	.byte 0x66, 0x16, 0x04, 0x00, 0xF4, 0x00, 0x60, 0x00, 0x87, 0x00, 0xFC, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xD2, 0x00, 0x60, 0x00, 0x9A, 0x19, 0x0E, 0x00, 0xF9, 0x00, 0x60, 0x00
	.byte 0x0E, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x52, 0x00, 0x60, 0x00
	.byte 0x66, 0x16, 0x06, 0x00, 0x06, 0x00, 0x60, 0x00, 0x5A, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x60, 0x00, 0xCD, 0x1C, 0x04, 0x00, 0x05, 0x00, 0x60, 0x00
	.byte 0x87, 0x00, 0xFC, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x00, 0x60, 0x00
	.byte 0x00, 0x20, 0x0E, 0x00, 0x0A, 0x00, 0x60, 0x00, 0x0E, 0x01, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x60, 0x00, 0x9A, 0x19, 0x08, 0x00, 0xF6, 0x00, 0x60, 0x00
	.byte 0x5A, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x96, 0x00, 0x60, 0x00
	.byte 0x66, 0x16, 0x04, 0x00, 0xF4, 0x00, 0x60, 0x00, 0x87, 0x00, 0xFC, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xD2, 0x00, 0x60, 0x00, 0x9A, 0x19, 0x0E, 0x00, 0xF9, 0x00, 0x60, 0x00
	.byte 0x0E, 0x01, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00
	.byte 0xB8, 0x00, 0xFD, 0x00, 0x3B, 0x01, 0x88, 0x01, 0xCF, 0x01, 0x53, 0x02, 0x7D, 0x02, 0x89, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x03, 0x10, 0x0C, 0x0E, 0x04, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x38, 0x10, 0x30, 0x18, 0x38, 0x40, 0x60
	.byte 0x18, 0x38, 0x70, 0x90, 0x18, 0x38, 0xA0, 0xC0, 0x18, 0x38, 0xD0, 0xF0, 0x48, 0x68, 0x10, 0x30
	.byte 0x48, 0x68, 0x40, 0x60, 0x48, 0x68, 0x70, 0x90, 0x48, 0x68, 0xA0, 0xC0, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x70, 0x72, 0x65, 0x49, 0x44, 0x20, 0x3D, 0x3D
	.byte 0x20, 0x42, 0x52, 0x5F, 0x50, 0x52, 0x4F, 0x43, 0x49, 0x44, 0x5F, 0x52, 0x45, 0x43, 0x4F, 0x52
	.byte 0x44, 0x00, 0x00, 0x00, 0x62, 0x72, 0x5F, 0x70, 0x72, 0x6F, 0x63, 0x5F, 0x73, 0x79, 0x73, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x6E, 0x6F, 0x77, 0x2D, 0x3E, 0x69
	.byte 0x73, 0x5F, 0x75, 0x73, 0x65, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x6E, 0x6F, 0x77, 0x2D, 0x3E, 0x63
	.byte 0x70, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x2D, 0x3E, 0x62, 0x65, 0x66, 0x6F, 0x72, 0x65, 0x5F, 0x66
	.byte 0x75, 0x6E, 0x63, 0x00, 0x70, 0x72, 0x6F, 0x63, 0x49, 0x44, 0x20, 0x3C, 0x20, 0x70, 0x5F, 0x77
	.byte 0x6B, 0x2D, 0x3E, 0x74, 0x62, 0x6C, 0x5F, 0x6D, 0x61, 0x78, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x73, 0x74, 0x61, 0x63, 0x6B, 0x5F, 0x6E, 0x75, 0x6D, 0x20, 0x3C, 0x20, 0x42, 0x52
	.byte 0x5F, 0x50, 0x52, 0x4F, 0x43, 0x5F, 0x53, 0x59, 0x53, 0x5F, 0x53, 0x54, 0x41, 0x43, 0x4B, 0x5F
	.byte 0x4D, 0x41, 0x58, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x65, 0x6E, 0x75, 0x49, 0x44, 0x20, 0x3C
	.byte 0x20, 0x42, 0x52, 0x5F, 0x4D, 0x45, 0x4E, 0x55, 0x49, 0x44, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00
	.byte 0x62, 0x72, 0x5F, 0x62, 0x74, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x62, 0x74, 0x6E, 0x5F, 0x73, 0x74, 0x61, 0x63, 0x6B, 0x5F, 0x6E, 0x75, 0x6D, 0x20
	.byte 0x3C, 0x20, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x62, 0x74, 0x6E, 0x5F, 0x73, 0x74, 0x61, 0x63
	.byte 0x6B, 0x5F, 0x6D, 0x61, 0x78, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x73, 0x74
	.byte 0x61, 0x63, 0x6B, 0x5F, 0x6E, 0x75, 0x6D, 0x20, 0x3C, 0x20, 0x42, 0x52, 0x5F, 0x42, 0x54, 0x4E
	.byte 0x5F, 0x53, 0x59, 0x53, 0x5F, 0x53, 0x54, 0x41, 0x43, 0x4B, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00
	.byte 0x62, 0x74, 0x6E, 0x2E, 0x69, 0x73, 0x5F, 0x75, 0x73, 0x65, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x69, 0x73, 0x5F, 0x75, 0x73, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x46, 0x41, 0x4C, 0x53
	.byte 0x45, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x64, 0x73, 0x74, 0x2D, 0x3E, 0x69, 0x73, 0x5F, 0x75, 0x73
	.byte 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x46, 0x41, 0x4C, 0x53, 0x45, 0x00, 0x00, 0x63, 0x70, 0x5F, 0x73
	.byte 0x72, 0x63, 0x2D, 0x3E, 0x69, 0x73, 0x5F, 0x75, 0x73, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x54, 0x52
	.byte 0x55, 0x45, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x62, 0x72, 0x5F, 0x62, 0x74, 0x6E, 0x5F, 0x64
	.byte 0x61, 0x74, 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x64, 0x20, 0x3C
	.byte 0x20, 0x34, 0x00, 0x00, 0x6D, 0x65, 0x6E, 0x75, 0x49, 0x44, 0x20, 0x3C, 0x20, 0x42, 0x52, 0x5F
	.byte 0x4D, 0x45, 0x4E, 0x55, 0x49, 0x44, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00, 0x62, 0x74, 0x6E, 0x49
	.byte 0x44, 0x20, 0x3C, 0x20, 0x73, 0x63, 0x5F, 0x62, 0x74, 0x6E, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x5F
	.byte 0x74, 0x62, 0x6C, 0x5B, 0x6D, 0x65, 0x6E, 0x75, 0x49, 0x44, 0x5D, 0x2E, 0x6D, 0x61, 0x78, 0x00
	.byte 0x70, 0x61, 0x72, 0x61, 0x6D, 0x49, 0x44, 0x20, 0x3C, 0x20, 0x42, 0x52, 0x5F, 0x42, 0x54, 0x4E
	.byte 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x50, 0x41, 0x52, 0x41, 0x4D, 0x5F, 0x4D, 0x41, 0x58, 0x00
	.byte 0x62, 0x72, 0x5F, 0x72, 0x65, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x6F, 0x62, 0x6A, 0x5F, 0x66, 0x6C, 0x61, 0x67, 0x5B, 0x20
	.byte 0x6F, 0x62, 0x6A, 0x49, 0x44, 0x20, 0x5D, 0x20, 0x3D, 0x3D, 0x20, 0x46, 0x41, 0x4C, 0x53, 0x45
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x6F, 0x6C, 0x6F, 0x72, 0x20, 0x3C, 0x20, 0x4E, 0x45, 0x4C, 0x45
	.byte 0x4D, 0x53, 0x28, 0x73, 0x63, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x6F, 0x6E, 0x5F, 0x6F, 0x62, 0x6A
	.byte 0x5F, 0x70, 0x6C, 0x74, 0x29, 0x00, 0x00, 0x00, 0x63, 0x6F, 0x6C, 0x6F, 0x72, 0x20, 0x3C, 0x20
	.byte 0x4E, 0x45, 0x4C, 0x45, 0x4D, 0x53, 0x28, 0x73, 0x63, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x6F, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x5F, 0x70, 0x6C, 0x74, 0x29, 0x00, 0x00, 0x00, 0x00, 0x63, 0x6F, 0x6C, 0x6F
	.byte 0x72, 0x20, 0x3C, 0x20, 0x4E, 0x45, 0x4C, 0x45, 0x4D, 0x53, 0x28, 0x73, 0x63, 0x5F, 0x63, 0x6F
	.byte 0x6D, 0x6D, 0x6F, 0x6E, 0x5F, 0x66, 0x6F, 0x6E, 0x74, 0x5F, 0x70, 0x6C, 0x74, 0x29, 0x00, 0x00
	.byte 0x63, 0x6F, 0x6C, 0x6F, 0x72, 0x20, 0x3C, 0x20, 0x4E, 0x45, 0x4C, 0x45, 0x4D, 0x53, 0x28, 0x73
	.byte 0x63, 0x5F, 0x66, 0x61, 0x64, 0x65, 0x5F, 0x63, 0x6F, 0x6C, 0x6F, 0x72, 0x29, 0x00, 0x00, 0x00
	.byte 0x62, 0x72, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x72, 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x20, 0x3C, 0x20, 0x42, 0x52, 0x5F, 0x4C, 0x49, 0x53, 0x54, 0x5F, 0x48, 0x49, 0x54, 0x54
	.byte 0x42, 0x4C, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00, 0x72, 0x65, 0x74, 0x00, 0x69, 0x64, 0x78, 0x20
	.byte 0x3C, 0x20, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x61, 0x72, 0x61, 0x6D, 0x2E, 0x6C, 0x69
	.byte 0x73, 0x74, 0x5F, 0x6D, 0x61, 0x78, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x61
	.byte 0x72, 0x61, 0x6D, 0x2E, 0x63, 0x70, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x5B, 0x69, 0x64, 0x78, 0x5D
	.byte 0x2E, 0x73, 0x74, 0x72, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x64, 0x78, 0x20, 0x3C, 0x20, 0x63, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x61, 0x72
	.byte 0x61, 0x6D, 0x2E, 0x6C, 0x69, 0x73, 0x74, 0x5F, 0x6D, 0x61, 0x78, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x62, 0x72, 0x5F, 0x66, 0x61, 0x64, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x62, 0x72, 0x5F, 0x73
	.byte 0x69, 0x64, 0x65, 0x62, 0x61, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x74, 0x00, 0x62, 0x72, 0x5F, 0x6E, 0x65, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x79, 0x70, 0x65, 0x20, 0x3C, 0x20, 0x42, 0x52, 0x5F, 0x4E, 0x45
	.byte 0x54, 0x5F, 0x52, 0x45, 0x51, 0x55, 0x45, 0x53, 0x54, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x72, 0x65, 0x74, 0x00, 0x62, 0x72, 0x5F, 0x70, 0x6F, 0x6B, 0x65, 0x73
	.byte 0x65, 0x61, 0x72, 0x63, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x70, 0x5F, 0x6D, 0x6F, 0x6E, 0x73, 0x6E, 0x6F, 0x5F, 0x62, 0x75, 0x66, 0x66, 0x20
	.byte 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x72, 0x65, 0x74, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x70, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x20, 0x3D, 0x3D
	.byte 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x5F
	.byte 0x6C, 0x69, 0x73, 0x74, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F70A0
