	.include "asm/macros.inc"
	.include "fx_atanidx.inc"
	.include "global.inc"
	.text

	thumb_func_start FX_Atan2Idx
FX_Atan2Idx: ; 0x02074568
	push {r4, lr}
	cmp r0, #0
	ble _020745BC
	cmp r1, #0
	ble _02074594
	cmp r1, r0
	ble _0207457E
	add r2, r0, #0
	mov r4, #0
_0207457A:
	mov r0, #1
	b _02074614
_0207457E:
	cmp r1, r0
	bge _0207458E
	add r2, r1, #0
	add r1, r0, #0
	mov r4, #1
_02074588:
	lsl r4, r4, #0xe
_0207458A:
	mov r0, #0
	b _02074614
_0207458E:
	mov r0, #2
	lsl r0, r0, #0xc
	pop {r4, pc}
_02074594:
	bge _020745B6
	neg r1, r1
	cmp r1, r0
	bge _020745A6
	mov r4, #1
	add r2, r1, #0
	add r1, r0, #0
	lsl r4, r4, #0xe
	b _0207457A
_020745A6:
	cmp r1, r0
	ble _020745B0
	add r2, r0, #0
	mov r4, #2
	b _02074588
_020745B0:
	mov r0, #6
	lsl r0, r0, #0xc
	pop {r4, pc}
_020745B6:
	mov r0, #1
	lsl r0, r0, #0xe
	pop {r4, pc}
_020745BC:
	bge _02074606
	neg r0, r0
	cmp r1, #0
	bge _020745E2
	neg r1, r1
	cmp r1, r0
	ble _020745D0
	add r2, r0, #0
	ldr r4, _0207464C ; =0xFFFF8000
	b _0207457A
_020745D0:
	cmp r1, r0
	bge _020745DC
	add r2, r1, #0
	add r1, r0, #0
	ldr r4, _02074650 ; =0xFFFFC000
	b _0207458A
_020745DC:
	mov r0, #0xa
	lsl r0, r0, #0xc
	pop {r4, pc}
_020745E2:
	ble _02074600
	cmp r1, r0
	bge _020745F0
	add r2, r1, #0
	add r1, r0, #0
	ldr r4, _02074650 ; =0xFFFFC000
	b _0207457A
_020745F0:
	cmp r1, r0
	ble _020745FA
	add r2, r0, #0
	mov r4, #0
	b _0207458A
_020745FA:
	mov r0, #0xe
	lsl r0, r0, #0xc
	pop {r4, pc}
_02074600:
	mov r0, #3
	lsl r0, r0, #0xe
	pop {r4, pc}
_02074606:
	cmp r1, #0
	blt _0207460E
	mov r0, #0
	pop {r4, pc}
_0207460E:
	mov r0, #2
	lsl r0, r0, #0xe
	pop {r4, pc}
_02074614:
	cmp r1, #0
	bne _0207461C
	mov r0, #0
	pop {r4, pc}
_0207461C:
	cmp r0, #0
	beq _02074636
	add r0, r2, #0
	bl FX_Div
	asr r0, r0, #5
	lsl r1, r0, #1
	ldr r0, _02074654 ; =0x020986BC
	ldrsh r0, [r0, r1]
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02074636:
	add r0, r2, #0
	bl FX_Div
	asr r0, r0, #5
	lsl r1, r0, #1
	ldr r0, _02074654 ; =0x020986BC
	ldrsh r0, [r0, r1]
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
_0207464C: .word 0xFFFF8000
_02074650: .word 0xFFFFC000
_02074654: .word FX_AtanIdxTable_
	thumb_func_end FX_Atan2Idx

	thumb_func_start sub_02074658
sub_02074658: ; 0x02074658
	bx lr
	.align 2, 0
	thumb_func_end sub_02074658

	.rodata

FX_AtanIdxTable_: ; 0x020986BC
	.short 0x0000
	.short 0x0051
	.short 0x00A3
	.short 0x00F4
	.short 0x0146
	.short 0x0197
	.short 0x01E9
	.short 0x023A
	.short 0x028B
	.short 0x02DC
	.short 0x032D
	.short 0x037E
	.short 0x03CF
	.short 0x0420
	.short 0x0470
	.short 0x04C1
	.short 0x0511
	.short 0x0561
	.short 0x05B1
	.short 0x0601
	.short 0x0651
	.short 0x06A0
	.short 0x06EF
	.short 0x073E
	.short 0x078D
	.short 0x07DC
	.short 0x082A
	.short 0x0878
	.short 0x08C6
	.short 0x0914
	.short 0x0961
	.short 0x09AE
	.short 0x09FB
	.short 0x0A48
	.short 0x0A94
	.short 0x0AE0
	.short 0x0B2C
	.short 0x0B77
	.short 0x0BC2
	.short 0x0C0D
	.short 0x0C57
	.short 0x0CA1
	.short 0x0CEB
	.short 0x0D34
	.short 0x0D7D
	.short 0x0DC6
	.short 0x0E0F
	.short 0x0E56
	.short 0x0E9E
	.short 0x0EE5
	.short 0x0F2C
	.short 0x0F73
	.short 0x0FB9
	.short 0x0FFF
	.short 0x1044
	.short 0x1089
	.short 0x10CE
	.short 0x1112
	.short 0x1156
	.short 0x1199
	.short 0x11DC
	.short 0x121F
	.short 0x1261
	.short 0x12A3
	.short 0x12E4
	.short 0x1325
	.short 0x1366
	.short 0x13A6
	.short 0x13E6
	.short 0x1425
	.short 0x1464
	.short 0x14A2
	.short 0x14E0
	.short 0x151E
	.short 0x155B
	.short 0x1598
	.short 0x15D5
	.short 0x1611
	.short 0x164C
	.short 0x1688
	.short 0x16C2
	.short 0x16FD
	.short 0x1737
	.short 0x1770
	.short 0x17AA
	.short 0x17E2
	.short 0x181B
	.short 0x1853
	.short 0x188A
	.short 0x18C1
	.short 0x18F8
	.short 0x192E
	.short 0x1964
	.short 0x199A
	.short 0x19CF
	.short 0x1A04
	.short 0x1A38
	.short 0x1A6C
	.short 0x1A9F
	.short 0x1AD3
	.short 0x1B05
	.short 0x1B38
	.short 0x1B6A
	.short 0x1B9C
	.short 0x1BCD
	.short 0x1BFE
	.short 0x1C2E
	.short 0x1C5E
	.short 0x1C8E
	.short 0x1CBE
	.short 0x1CED
	.short 0x1D1B
	.short 0x1D4A
	.short 0x1D78
	.short 0x1DA5
	.short 0x1DD3
	.short 0x1DFF
	.short 0x1E2C
	.short 0x1E58
	.short 0x1E84
	.short 0x1EB0
	.short 0x1EDB
	.short 0x1F06
	.short 0x1F30
	.short 0x1F5A
	.short 0x1F84
	.short 0x1FAE
	.short 0x1FD7
	.short 0x2000
