    .include "macros/function.inc"
	.include "overlay170.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy170_217f600
ovy170_217f600: ; 0x0217F600
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r3, [sp, #8]
	add r7, r1, #0
	str r2, [sp, #4]
	ldr r5, [sp, #0x20]
	ldr r0, _0217F6A4 ; =0x000001D9
	ldr r3, _0217F6A8 ; =0x02181EA0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xd8
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, #0xa0
	add r1, r4, #0
	strh r5, [r0]
	add r1, #0xc4
	mov r0, #1
	str r0, [r1]
	ldr r0, [sp, #8]
	add r1, r5, #0
	str r0, [r4, #0x40]
	mov r0, #0xa9
	bl sub_0204AA30
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r5, #0
	bl Item_ArcHandleCreate
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb0
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xb4
	str r7, [r0]
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xb8
	str r0, [r1]
	add r0, r6, #0
	bl sub_0219BD80
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r6, #0
	bl sub_0219BED4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	ldr r1, _0217F6AC ; =0x02181C80
	add r0, r5, #0
	bl sub_020158AC
	add r1, r4, #0
	add r6, r0, #0
	bl sub_02015900
	bl sub_02021960
	cmp r0, #0
	bne _0217F696
	mov r0, #0x30
	add r1, r5, #0
	bl sub_02021880
_0217F696:
	add r4, #0xa0
	ldrh r0, [r4]
	bl ovy170_2181b1c
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217F6A4: .word 0x000001D9
_0217F6A8: .word 0x02181EA0
_0217F6AC: .word 0x02181C80
	thumb_func_end ovy170_217f600

	thumb_func_start ovy170_217f6b0
ovy170_217f6b0: ; 0x0217F6B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	bl sub_020159DC
	add r5, r0, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _0217F6E0
	add r0, r5, #0
	add r0, #0x94
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_217f84c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0217F6E0:
	sub r0, r0, #1
	cmp r0, #1
	bhi _0217F6F2
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_217f984
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0217F6F2:
	add r0, r5, #0
	mov r6, #0
	add r0, #0x95
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	cmp r1, #6
	bhs _0217F74A
	add r4, r5, #0
	add r7, sp, #4
	add r4, #0x95
_0217F70A:
	add r0, r5, #0
	add r0, #0x94
	ldrb r3, [r0]
	cmp r1, r3
	beq _0217F73A
	mov r0, #1
	add r2, r1, #0
	and r2, r0
	and r0, r3
	cmp r2, r0
	beq _0217F73A
	add r0, r5, #0
	bl sub_021819FC
	bl sub_021BB368
	cmp r0, #1
	beq _0217F73A
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	lsl r0, r6, #2
	add r6, r6, #1
	str r1, [r7, r0]
_0217F73A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	cmp r1, #6
	blo _0217F70A
_0217F74A:
	bl sub_02043F2C
	mov r1, #0
	cmp r6, #0
	beq _0217F75E
	add r2, r6, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r1, #0
_0217F75E:
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_217f84c
	cmp r0, #0
	bne _0217F77C
	mov r1, #0
	add r5, #0x47
	strb r1, [r5]
_0217F77C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217f6b0

	thumb_func_start ovy170_217f780
ovy170_217f780: ; 0x0217F780
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020159DC
	add r4, r0, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl GFL_ArcToolFree
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl sub_020158F8
	bl sub_02021960
	cmp r0, #1
	bne _0217F7B4
	bl sub_02021918
_0217F7B4:
	bl ovy170_2181b58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy170_217f780

	thumb_func_start ovy170_217f7bc
ovy170_217f7bc: ; 0x0217F7BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020159DC
	add r4, r0, #0
	mov r5, #0
	strb r5, [r4]
	strh r5, [r4, #2]
	strb r5, [r4, #1]
	str r5, [r4, #0x38]
	add r0, #0x44
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x45
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x94
	strb r7, [r0]
	ldr r0, [r4, #0x40]
	mov r1, #4
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0]
	add r7, r5, #0
_0217F7F0:
	ldrb r0, [r6, r5]
	cmp r0, #0
	bne _0217F7FE
	lsl r0, r5, #2
	add r0, r4, r0
	str r7, [r0, #0x14]
	b _0217F806
_0217F7FE:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x64
	str r0, [r1, #0x14]
_0217F806:
	bl sub_02043F2C
	lsr r1, r0, #0x1c
	mov r0, #0
	lsl r2, r0, #4
	orr r2, r1
	mov r0, #0x64
	sub r1, r0, r2
	add r0, r4, r5
	add r0, #0x48
	add r5, r5, #1
	strb r1, [r0]
	cmp r5, #4
	blt _0217F7F0
	bl sub_02043F2C
	mov r1, #0
	lsr r0, r0, #0x18
	lsl r1, r1, #8
	orr r1, r0
	add r4, #0xcc
	str r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217f7bc

	thumb_func_start ovy170_217f834
ovy170_217f834: ; 0x0217F834
	push {r3, lr}
	bl sub_020159DC
	add r0, #0x46
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end ovy170_217f834

	thumb_func_start ovy170_217f840
ovy170_217f840: ; 0x0217F840
	push {r3, lr}
	bl sub_020159DC
	add r0, #0x47
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end ovy170_217f840

	thumb_func_start ovy170_217f84c
ovy170_217f84c: ; 0x0217F84C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r1, #0x94
	ldrb r1, [r1]
	str r0, [sp]
	add r0, r5, #0
	bl sub_021819FC
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021819FC
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	bne _0217F88E
	add r0, r5, #0
	bl sub_02181A10
	add r0, r5, #0
	bl ovy170_2181a24
_0217F88E:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _0217F8FC
	add r4, r5, #0
	add r6, r5, #0
	add r7, r5, #0
	add r4, #0x44
	add r6, #0x3c
	add r7, #0x45
_0217F8A0:
	mov r1, #1
	tst r0, r1
	beq _0217F8E8
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	bne _0217F8B6
	mov r0, #0
	strb r0, [r5]
_0217F8B6:
	ldrb r1, [r4]
	mov r0, #0xef
	and r0, r1
	strb r0, [r4]
	bl OS_GetTick
	add r2, r5, #0
	add r2, #0xd0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0]
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_217fcbc
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	beq _0217F8E8
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217F8E8:
	ldrb r1, [r7]
	ldr r0, [r6]
	add r1, r1, #1
	lsr r0, r0, #1
	strb r1, [r7]
	mov r1, #0
	str r0, [r6]
	strb r1, [r5, #1]
	cmp r0, #0
	bne _0217F8A0
_0217F8FC:
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0217F90C
	mov r1, #4
	b _0217F96C
_0217F90C:
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp, #8]
	add r0, sp, #4
	mov r6, #1
	strb r1, [r0]
	mov r4, #1
	add r7, sp, #8
_0217F91C:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC48
	cmp r4, r0
	bge _0217F94E
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _0217F940
	lsl r1, r6, #2
	str r0, [r7, r1]
	add r1, sp, #4
	strb r4, [r1, r6]
	add r6, r6, #1
_0217F940:
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _0217F94E
	str r0, [sp, #8]
	add r0, sp, #4
	mov r6, #1
	strb r4, [r0]
_0217F94E:
	add r4, r4, #1
	cmp r4, #4
	blt _0217F91C
	bl sub_02043F2C
	mov r1, #0
	cmp r6, #0
	beq _0217F968
	add r2, r6, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r1, #0
_0217F968:
	add r1, sp, #4
	ldrb r1, [r1, r0]
_0217F96C:
	add r0, r5, #0
	add r0, #0x46
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r5, #0x47
	strb r0, [r5]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_217f84c

	thumb_func_start ovy170_217f984
ovy170_217f984: ; 0x0217F984
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #1
	bne _0217F99A
	mov r0, #4
	b _0217F99C
_0217F99A:
	mov r0, #6
_0217F99C:
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	bne _0217F9B2
	add r0, r5, #0
	mov r1, #0
	add r0, #0x95
	strb r1, [r0]
_0217F9B2:
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _0217F9C0
	b _0217FBC8
_0217F9C0:
	add r1, r5, #0
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021819FC
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021819FC
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x44
	ldrb r2, [r1]
	mov r1, #0x10
	tst r2, r1
	bne _0217FA60
	cmp r0, #0
	bne _0217FA10
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	sub r1, #0x11
	add r0, r5, r0
	add r0, #0x30
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #0x24]
	b _0217FBAC
_0217FA10:
	add r1, r5, #0
	add r1, #0x95
	ldrb r2, [r1]
	add r1, r5, #0
	add r1, #0x94
	ldrb r1, [r1]
	cmp r2, r1
	beq _0217FA28
	bl sub_021BB368
	cmp r0, #1
	bne _0217FA46
_0217FA28:
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	mov r0, #0
	mvn r0, r0
	add r1, r5, r1
	add r1, #0x30
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x24]
	b _0217FBAC
_0217FA46:
	add r0, r5, #0
	bl sub_02181A10
	add r0, r5, #0
	bl ovy170_2181a24
	add r0, r5, #0
	mov r1, #0
	add r0, #0x45
	strb r1, [r0]
	ldr r0, [r5, #0x40]
	strb r1, [r5, #1]
	str r0, [r5, #0x3c]
_0217FA60:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _0217FACE
	add r4, r5, #0
	add r6, r5, #0
	add r7, r5, #0
	add r4, #0x44
	add r6, #0x3c
	add r7, #0x45
_0217FA72:
	mov r1, #1
	tst r0, r1
	beq _0217FABA
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	bne _0217FA88
	mov r0, #0
	strb r0, [r5]
_0217FA88:
	ldrb r1, [r4]
	mov r0, #0xef
	and r0, r1
	strb r0, [r4]
	bl OS_GetTick
	add r2, r5, #0
	add r2, #0xd0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0]
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_217fcbc
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #0x10
	tst r0, r1
	beq _0217FABA
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217FABA:
	ldrb r1, [r7]
	ldr r0, [r6]
	add r1, r1, #1
	lsr r0, r0, #1
	strb r1, [r7]
	mov r1, #0
	str r0, [r6]
	strb r1, [r5, #1]
	cmp r0, #0
	bne _0217FA72
_0217FACE:
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0217FAE4
	add r0, r5, #0
	mov r1, #4
	add r0, #0x46
	strb r1, [r0]
	b _0217FBAC
_0217FAE4:
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, sp, #8
	mov r6, #1
	strb r1, [r0, #6]
	mov r4, #1
	add r7, sp, #0x14
_0217FAF4:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC48
	cmp r4, r0
	bge _0217FB28
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _0217FB1A
	lsl r1, r6, #2
	str r0, [r7, r1]
	add r1, sp, #0xc
	add r1, #2
	strb r4, [r1, r6]
	add r6, r6, #1
_0217FB1A:
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bge _0217FB28
	str r0, [sp, #0x14]
	add r0, sp, #8
	mov r6, #1
	strb r4, [r0, #6]
_0217FB28:
	add r4, r4, #1
	cmp r4, #4
	blt _0217FAF4
	bl sub_02043F2C
	mov r1, #0
	cmp r6, #0
	beq _0217FB42
	add r2, r6, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r1, #0
_0217FB42:
	add r1, sp, #0xc
	add r1, #2
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r0, r5, r0
	add r0, #0x30
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #0x24]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x94
	add r0, #0xb0
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_0219C650
	add r1, r5, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, #0x95
	add r0, #0xb0
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_0219C650
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219C554
	cmp r0, #0
	bne _0217FBAC
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r2, r5, r0
	mov r0, #0x24
	ldrsh r1, [r2, r0]
	cmp r1, #0x64
	bge _0217FBAC
	sub r0, #0x25
	strh r0, [r2, #0x24]
_0217FBAC:
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _0217FBC8
	b _0217F9C0
_0217FBC8:
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #4]
	mov r0, #0
	add r3, sp, #8
	strb r0, [r3]
	mov r4, #1
	mov r0, #1
	cmp r2, #1
	ble _0217FC04
	add r6, sp, #8
	mov r7, #0x24
_0217FBE0:
	lsl r2, r0, #1
	add r2, r5, r2
	ldrsh r2, [r2, r7]
	cmp r1, r2
	bne _0217FBEE
	strb r0, [r6, r4]
	add r4, r4, #1
_0217FBEE:
	cmp r1, r2
	bge _0217FBF8
	add r1, r2, #0
	strb r0, [r3]
	mov r4, #1
_0217FBF8:
	add r0, r0, #1
	lsl r0, r0, #0x18
	ldr r2, [sp, #4]
	lsr r0, r0, #0x18
	cmp r0, r2
	blt _0217FBE0
_0217FC04:
	bl sub_02043F2C
	mov r1, #0
	cmp r4, #0
	beq _0217FC18
	add r2, r4, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r1, #0
_0217FC18:
	add r1, sp, #8
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0x47
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x47
	ldrb r0, [r0]
	add r1, r5, r0
	mov r0, #0x30
	ldrsb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0x46
	strb r1, [r0]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x46
	add r0, #0xbc
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_021BACC0
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x1b
	bl sub_02181A78
	cmp r0, #1
	bne _0217FC68
	add r0, r5, #0
	add r0, #0x47
	ldrb r1, [r0]
	lsl r1, r1, #0x1f
	bne _0217FC68
	add r0, r5, #0
	add r0, #0x94
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x47
	strb r1, [r0]
_0217FC68:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x46
	add r0, #0xbc
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_021BACC0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #2
	bne _0217FCB6
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x94
	add r1, #0x47
	ldrb r0, [r0]
	ldrb r1, [r1]
	bl sub_0219D348
	cmp r0, #0
	bne _0217FCB6
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_02181A84
	cmp r0, #0
	bne _0217FCB6
	add r0, r5, #0
	add r0, #0x47
	ldrb r1, [r0]
	mov r0, #1
	add r5, #0x47
	and r0, r1
	add r0, r0, #2
	strb r0, [r5]
_0217FCB6:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217f984

	thumb_func_start ovy170_217fcbc
ovy170_217fcbc: ; 0x0217FCBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r6, r0, #0
	mov r7, #0
	add r4, #0x44
	b _0217FE06
_0217FCCA:
	cmp r0, #0
	beq _0217FCD6
	cmp r0, #1
	beq _0217FD14
	cmp r0, #2
	b _0217FE02
_0217FCD6:
	add r0, r5, #0
	add r0, #0xbc
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	bl sub_021BAD84
	cmp r0, #0
	bne _0217FCEC
	mov r0, #0
	strh r0, [r5, #2]
	b _0217FD0E
_0217FCEC:
	add r0, r5, #0
	add r0, #0xbc
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	bl sub_021BACC0
	strh r0, [r5, #2]
	add r0, r5, #0
	bl ovy170_2181b94
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	add r0, r6, #0
	bl sub_02015910
_0217FD0E:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0217FD14:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #2
	bne _0217FD5A
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0217FD5A
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x94
	add r1, #0x95
	ldrb r0, [r0]
	ldrb r1, [r1]
	bl sub_0219D348
	cmp r0, #0
	bne _0217FD5A
	ldrh r1, [r5, #2]
	add r0, r5, #0
	mov r2, #0xb
	bl sub_02181A84
	cmp r0, #0
	bne _0217FD5A
	add r0, r6, #0
	strh r7, [r5, #2]
	bl sub_02015924
	add r0, r5, #0
	bl ovy170_2181c28
	add r0, r5, #0
	add r0, #0xac
	str r7, [r0]
_0217FD5A:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0217FDB2
	add r0, r6, #0
	bl sub_0201592C
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	lsl r1, r1, #0x1f
	beq _0217FD88
	ldrb r1, [r4]
	mov r0, #0xef
	and r0, r1
	strb r0, [r4]
	add r0, r5, #0
	bl ovy170_2181c28
	add r1, r5, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1]
	b _0217FDC4
_0217FD88:
	bl OS_GetTick
	add r2, r5, #0
	add r2, #0xd0
	ldr r3, [r2]
	add r2, r5, #0
	add r2, #0xd4
	ldr r2, [r2]
	sub r0, r0, r3
	sbc r1, r2
	mov r2, #0x7d
	mov r3, #0
	lsl r2, r2, #2
	sub r0, r2, r0
	sbc r3, r1
	bhs _0217FDC4
	ldrb r1, [r4]
	mov r0, #0x10
	orr r0, r1
_0217FDAE:
	strb r0, [r4]
	b _0217FE06
_0217FDB2:
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0
	str r0, [r1, #4]
	ldrb r1, [r4]
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
_0217FDC4:
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	lsl r1, r1, #0x1f
	beq _0217FE06
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC48
	ldrb r1, [r5, #1]
	cmp r1, r0
	bhs _0217FDF4
	add r0, r5, #0
	add r0, #0x44
	ldrb r1, [r0]
	mov r0, #8
	tst r0, r1
	bne _0217FDF4
	mov r0, #0
	b _0217FDF8
_0217FDF4:
	ldrb r0, [r5]
	add r0, r0, #1
_0217FDF8:
	strb r0, [r5]
	ldrb r1, [r4]
	mov r0, #0xfe
	and r0, r1
	b _0217FDAE
_0217FE02:
	mov r0, #2
	strb r0, [r5]
_0217FE06:
	ldrb r0, [r5]
	cmp r0, #2
	beq _0217FE1A
	add r1, r5, #0
	add r1, #0x44
	ldrb r2, [r1]
	mov r1, #0x10
	tst r1, r2
	bne _0217FE1A
	b _0217FCCA
_0217FE1A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217fcbc

	thumb_func_start ovy170_217fe1c
ovy170_217fe1c: ; 0x0217FE1C
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_217fe5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fe1c

	thumb_func_start ovy170_217fe2c
ovy170_217fe2c: ; 0x0217FE2C
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_217fe5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fe2c

	thumb_func_start ovy170_217fe3c
ovy170_217fe3c: ; 0x0217FE3C
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_217fe5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fe3c

	thumb_func_start ovy170_217fe4c
ovy170_217fe4c: ; 0x0217FE4C
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_217fe5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fe4c

	thumb_func_start ovy170_217fe5c
ovy170_217fe5c: ; 0x0217FE5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r4, r0, #0
	bl sub_02043F2C
	add r2, r0, #0
	str r4, [sp]
	mov r3, #0
	lsr r4, r2, #0x18
	lsl r2, r3, #8
	add r0, r5, #0
	add r1, r6, #0
	orr r2, r4
	add r3, r7, #0
	bl ovy170_21817f4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217fe5c

	thumb_func_start ovy170_217fe8c
ovy170_217fe8c: ; 0x0217FE8C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	ldrb r2, [r4, #1]
	add r1, r4, #4
	lsl r3, r2, #2
	ldr r2, [r1, r3]
	add r0, r2, r0
	str r0, [r1, r3]
	ldrb r0, [r4, #1]
	lsl r2, r0, #2
	ldr r0, [r1, r2]
	cmp r0, #0
	bge _0217FEAE
	mov r0, #0
	str r0, [r1, r2]
_0217FEAE:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fe8c

	thumb_func_start ovy170_217feb4
ovy170_217feb4: ; 0x0217FEB4
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_217fef4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217feb4

	thumb_func_start ovy170_217fec4
ovy170_217fec4: ; 0x0217FEC4
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_217fef4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fec4

	thumb_func_start ovy170_217fed4
ovy170_217fed4: ; 0x0217FED4
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_217fef4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fed4

	thumb_func_start ovy170_217fee4
ovy170_217fee4: ; 0x0217FEE4
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_217fef4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217fee4

	thumb_func_start ovy170_217fef4
ovy170_217fef4: ; 0x0217FEF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB444
	add r2, r0, #0
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	asr r2, r2, #0xc
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217fef4

	thumb_func_start ovy170_217ff3c
ovy170_217ff3c: ; 0x0217FF3C
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_217ff5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217ff3c

	thumb_func_start ovy170_217ff4c
ovy170_217ff4c: ; 0x0217FF4C
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_217ff5c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217ff4c

	thumb_func_start ovy170_217ff5c
ovy170_217ff5c: ; 0x0217FF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BBAA8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_217ff5c

	thumb_func_start ovy170_217ff9c
ovy170_217ff9c: ; 0x0217FF9C
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_217ffbc
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217ff9c

	thumb_func_start ovy170_217ffac
ovy170_217ffac: ; 0x0217FFAC
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_217ffbc
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_217ffac

	thumb_func_start ovy170_217ffbc
ovy170_217ffbc: ; 0x0217FFBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	ldr r1, [sp, #8]
	bl sub_021BBAC4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_217ffbc

	thumb_func_start ovy170_2180004
ovy170_2180004: ; 0x02180004
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2180024
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180004

	thumb_func_start ovy170_2180014
ovy170_2180014: ; 0x02180014
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2180024
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180014

	thumb_func_start ovy170_2180024
ovy170_2180024: ; 0x02180024
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021819FC
	mov r1, #5
	add r7, r0, #0
	mov r5, #0
	bl sub_021BBAC4
	cmp r0, #0
	beq _0218006C
	add r0, r7, #0
	mov r1, #5
	bl sub_021BBB14
	bl sub_021CE2B8
	cmp r0, #0
	beq _0218006C
	mov r5, #1
_0218006C:
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180024

	thumb_func_start ovy170_2180080
ovy170_2180080: ; 0x02180080
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21800a0
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180080

	thumb_func_start ovy170_2180090
ovy170_2180090: ; 0x02180090
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21800a0
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180090

	thumb_func_start ovy170_21800a0
ovy170_21800a0: ; 0x021800A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	ldr r1, [sp, #8]
	bl sub_021BB3DC
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21800a0

	thumb_func_start ovy170_21800e8
ovy170_21800e8: ; 0x021800E8
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2180108
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21800e8

	thumb_func_start ovy170_21800f8
ovy170_21800f8: ; 0x021800F8
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2180108
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21800f8

	thumb_func_start ovy170_2180108
ovy170_2180108: ; 0x02180108
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r4, #0xb4
	add r1, r0, #0
	ldr r0, [r4]
	ldr r2, [sp, #8]
	bl sub_021ABE10
	mov r2, #1
	cmp r0, #0
	bne _02180144
	mov r2, #0
_02180144:
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180108

	thumb_func_start ovy170_2180154
ovy170_2180154: ; 0x02180154
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180154

	thumb_func_start ovy170_2180164
ovy170_2180164: ; 0x02180164
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180164

	thumb_func_start ovy170_2180174
ovy170_2180174: ; 0x02180174
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180174

	thumb_func_start ovy170_2180184
ovy170_2180184: ; 0x02180184
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180184

	thumb_func_start ovy170_2180194
ovy170_2180194: ; 0x02180194
	push {r4, lr}
	mov r2, #4
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180194

	thumb_func_start ovy170_21801a4
ovy170_21801a4: ; 0x021801A4
	push {r4, lr}
	mov r2, #5
	add r4, r1, #0
	bl ovy170_21801b4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21801a4

	thumb_func_start ovy170_21801b4
ovy170_21801b4: ; 0x021801B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp]
	ldr r2, [r4, #0x38]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy170_21817f4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21801b4

	thumb_func_start ovy170_21801d8
ovy170_21801d8: ; 0x021801D8
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21801f8
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21801d8

	thumb_func_start ovy170_21801e8
ovy170_21801e8: ; 0x021801E8
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21801f8
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21801e8

	thumb_func_start ovy170_21801f8
ovy170_21801f8: ; 0x021801F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy170_21817f4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21801f8

	thumb_func_start ovy170_218021c
ovy170_218021c: ; 0x0218021C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	ldr r1, [r7, #0x20]
	add r4, r1, r0
	add r0, r7, #0
	bl sub_02015A04
	mov r2, #0
	ldr r3, [r6, #0x38]
	mov ip, r0
	sub r5, r2, #1
_02180238:
	lsl r0, r2, #1
	add r1, r4, r0
	ldrh r1, [r1, #2]
	ldrh r0, [r4, r0]
	lsl r1, r1, #0x10
	orr r0, r1
	cmp r3, r0
	bne _02180256
	ldr r2, [r7, #0x20]
	mov r1, ip
	add r0, r7, #0
	add r1, r2, r1
	bl sub_02015A68
	b _0218025C
_02180256:
	add r2, r2, #2
	cmp r0, r5
	bne _02180238
_0218025C:
	add r6, #0xc4
	ldr r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_218021c

	thumb_func_start ovy170_2180264
ovy170_2180264: ; 0x02180264
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	ldr r1, [r7, #0x20]
	add r4, r1, r0
	add r0, r7, #0
	bl sub_02015A04
	mov r2, #0
	ldr r3, [r6, #0x38]
	mov ip, r0
	sub r5, r2, #1
_02180280:
	lsl r0, r2, #1
	add r1, r4, r0
	ldrh r1, [r1, #2]
	ldrh r0, [r4, r0]
	lsl r1, r1, #0x10
	orr r0, r1
	cmp r3, r0
	bne _02180296
	add r6, #0xc4
	ldr r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02180296:
	add r2, r2, #2
	cmp r0, r5
	bne _02180280
	ldr r2, [r7, #0x20]
	mov r1, ip
	add r0, r7, #0
	add r1, r2, r1
	bl sub_02015A68
	add r6, #0xc4
	ldr r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180264

	thumb_func_start ovy170_21802b0
ovy170_21802b0: ; 0x021802B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _021802FA
	mov r6, #3
_021802CE:
	add r0, r5, #0
	add r0, #0xbc
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02181A78
	cmp r0, #0
	bne _021802FA
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _021802CE
_021802FA:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC48
	cmp r4, r0
	bge _02180314
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x20]
	add r1, r1, r7
	bl sub_02015A68
_02180314:
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_21802b0

	thumb_func_start ovy170_218031c
ovy170_218031c: ; 0x0218031C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _02180366
	mov r6, #3
_0218033A:
	add r0, r5, #0
	add r0, #0xbc
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02181A78
	cmp r0, #0
	bne _02180366
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _0218033A
_02180366:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC48
	cmp r4, r0
	bne _02180380
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x20]
	add r1, r1, r7
	bl sub_02015A68
_02180380:
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_218031c

	thumb_func_start ovy170_2180388
ovy170_2180388: ; 0x02180388
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_021ABC78
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180388

	thumb_func_start ovy170_21803a0
ovy170_21803a0: ; 0x021803A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAFFC
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAFFC
	cmp r5, #8
	bhi _02180442
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021803D0: ; jump table
	.short _021803EA - _021803D0 - 2 ; case 0
	.short _021803E2 - _021803D0 - 2 ; case 1
	.short _021803F0 - _021803D0 - 2 ; case 2
	.short _021803EC - _021803D0 - 2 ; case 3
	.short _021803F6 - _021803D0 - 2 ; case 4
	.short _0218041C - _021803D0 - 2 ; case 5
	.short _02180402 - _021803D0 - 2 ; case 6
	.short _02180428 - _021803D0 - 2 ; case 7
	.short _02180422 - _021803D0 - 2 ; case 8
_021803E2:
	add r0, r6, #0
_021803E4:
	bl sub_021CE53C
_021803E8:
	b _02180440
_021803EA:
	b _021803E4
_021803EC:
	add r0, r6, #0
	b _021803F0
_021803F0:
	bl sub_021CE544
	b _021803E8
_021803F6:
	ldrh r1, [r4, #2]
	add r0, r4, #0
	mov r2, #0
	bl sub_02181A78
	b _021803E8
_02180402:
	add r0, r4, #0
	mov r1, #3
_02180406:
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BAFFC
	bl sub_021CE53C
	b _02180440
_0218041C:
	add r0, r4, #0
	mov r1, #2
	b _02180406
_02180422:
	add r0, r4, #0
	mov r1, #3
	b _0218042C
_02180428:
	add r0, r4, #0
	mov r1, #2
_0218042C:
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BAFFC
	bl sub_021CE544
_02180440:
	str r0, [r4, #0x38]
_02180442:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy170_21803a0

	thumb_func_start ovy170_2180448
ovy170_2180448: ; 0x02180448
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #2]
	bl sub_02021730
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180448

	thumb_func_start ovy170_218045c
ovy170_218045c: ; 0x0218045C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC40
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	add r0, #0xb4
	ldrh r3, [r5, #2]
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl sub_021AB954
	add r7, r0, #0
	bne _021804A0
	mov r0, #0
_0218049C:
	str r0, [r5, #0x38]
	b _021804F6
_021804A0:
	mov r0, #2
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _021804F6
_021804B4:
	add r0, r5, #0
	add r0, #0xbc
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r3, r0, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	beq _021804E6
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl sub_021AB954
	cmp r0, r7
	bls _021804E6
	mov r0, #1
	b _0218049C
_021804E6:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _021804B4
_021804F6:
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_218045c

	thumb_func_start ovy170_2180500
ovy170_2180500: ; 0x02180500
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BBFA8
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180500

	thumb_func_start ovy170_2180524
ovy170_2180524: ; 0x02180524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb4
	add r1, #0xbc
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #1
	bl sub_021ABD08
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb4
	add r1, #0xc0
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #1
	bl sub_021ABD08
	add r3, r0, #0
	cmp r4, #0
	beq _02180570
	cmp r4, #1
	beq _02180574
	cmp r4, #2
	beq _02180578
	b _0218057A
_02180570:
	mov r4, #1
	b _0218057A
_02180574:
	mov r4, #0
	b _0218057A
_02180578:
	mov r4, #2
_0218057A:
	str r7, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy170_21817f4
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180524

	thumb_func_start ovy170_2180590
ovy170_2180590: ; 0x02180590
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r7, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0219C650
	add r4, r0, #0
	add r0, r7, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D3D4
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D294
	add r5, r0, #0
	mov r0, #0
	str r0, [r7, #0x38]
	add r0, r6, #0
	bl sub_0219D488
	cmp r5, r0
	bge _02180600
	add r4, r7, #0
	add r4, #0x38
_021805DC:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02181A08
	bl sub_021BB37C
	cmp r0, #0
	beq _021805F4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021805F4:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_0219D488
	cmp r5, r0
	blt _021805DC
_02180600:
	add r7, #0xc4
	ldr r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180590
_02180608:
	.byte 0x48, 0x88, 0x88, 0x63, 0xC4, 0x31, 0x08, 0x68
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2180614
ovy170_2180614: ; 0x02180614
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #2]
	add r0, r4, #0
	mov r2, #0x1c
	bl sub_02181A78
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180614

	thumb_func_start ovy170_218062c
ovy170_218062c: ; 0x0218062C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181860
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181920
	str r0, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy170_218062c
_02180650:
	.byte 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2180658
ovy170_2180658: ; 0x02180658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC40
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldrh r3, [r4, #2]
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_021AB8EC
	add r2, r0, #0
	ldr r3, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	str r6, [sp]
	bl ovy170_21817f4
	add r4, #0xc4
	ldr r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180658

	thumb_func_start ovy170_21806ac
ovy170_21806ac: ; 0x021806AC
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21806cc
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21806ac

	thumb_func_start ovy170_21806bc
ovy170_21806bc: ; 0x021806BC
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21806cc
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21806bc

	thumb_func_start ovy170_21806cc
ovy170_21806cc: ; 0x021806CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0219C650
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0219D3D4
	add r5, #0xb0
	add r4, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	bl sub_0219D294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219D488
	cmp r5, r0
	bge _02180758
_0218071E:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02181A08
	add r6, r0, #0
	bl sub_021BB368
	cmp r0, #0
	bne _0218074C
	add r0, r6, #0
	bl sub_021BBAA8
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl ovy170_21817f4
	cmp r0, #0
	bne _02180758
_0218074C:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_0219D488
	cmp r5, r0
	blt _0218071E
_02180758:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21806cc

	thumb_func_start ovy170_218075c
ovy170_218075c: ; 0x0218075C
	push {r4, lr}
	add r4, r1, #0
	bl sub_021D59B0
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_218075c

	thumb_func_start ovy170_218076c
ovy170_218076c: ; 0x0218076C
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_218078c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_218076c

	thumb_func_start ovy170_218077c
ovy170_218077c: ; 0x0218077C
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_218078c
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_218077c

	thumb_func_start ovy170_218078c
ovy170_218078c: ; 0x0218078C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r4, r0, #0
	ldrh r1, [r6, #2]
	add r0, r6, #0
	mov r2, #0x1c
	bl sub_02181A78
	add r2, r0, #0
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	str r4, [sp]
	bl ovy170_21817f4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_218078c

	thumb_func_start ovy170_21807c0
ovy170_21807c0: ; 0x021807C0
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_2180800
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21807c0

	thumb_func_start ovy170_21807d0
ovy170_21807d0: ; 0x021807D0
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_2180800
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21807d0

	thumb_func_start ovy170_21807e0
ovy170_21807e0: ; 0x021807E0
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2180800
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21807e0

	thumb_func_start ovy170_21807f0
ovy170_21807f0: ; 0x021807F0
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2180800
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21807f0

	thumb_func_start ovy170_2180800
ovy170_2180800: ; 0x02180800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	ldr r1, [sp, #8]
	bl sub_021BB1B4
	add r2, r0, #0
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180800

	thumb_func_start ovy170_2180850
ovy170_2180850: ; 0x02180850
	push {r4, lr}
	mov r2, #6
	add r4, r1, #0
	bl ovy170_2180870
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180850

	thumb_func_start ovy170_2180860
ovy170_2180860: ; 0x02180860
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_2180870
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180860

	thumb_func_start ovy170_2180870
ovy170_2180870: ; 0x02180870
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r1, #0xd
	bl sub_021BB1B4
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC40
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xb4
	ldrh r3, [r4, #2]
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	bl sub_021AB954
	add r3, r0, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180870

	thumb_func_start ovy170_21808d4
ovy170_21808d4: ; 0x021808D4
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21808f4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21808d4

	thumb_func_start ovy170_21808e4
ovy170_21808e4: ; 0x021808E4
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21808f4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21808e4

	thumb_func_start ovy170_21808f4
ovy170_21808f4: ; 0x021808F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r6, r1, #0
	str r2, [sp, #8]
	bl sub_02015A04
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_02015A04
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy170_2181860
	mov r7, #0
	cmp r5, #0
	beq _021809AA
	cmp r5, #1
	beq _0218092E
	cmp r5, #3
	beq _02180966
	b _021809C4
_0218092E:
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r5, r7, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _021809C4
_0218093E:
	add r0, r6, #0
	add r0, #0xbc
	lsl r1, r5, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	cmp r0, r4
	bne _02180954
_02180950:
	mov r7, #1
	b _021809C4
_02180954:
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r5, r5, #1
	bl sub_021BAC48
	cmp r5, r0
	blt _0218093E
	b _021809C4
_02180966:
	add r0, r6, #0
	mov r1, #3
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021819FC
	add r6, r0, #0
	bl sub_021BB368
	cmp r0, #0
	bne _021809C4
	add r0, r6, #0
	add r5, r7, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _021809C4
_0218098C:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_021BACC0
	cmp r0, r4
	bne _0218099C
	b _02180950
_0218099C:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_021BAC48
	cmp r5, r0
	blt _0218098C
	b _021809C4
_021809AA:
	lsl r0, r0, #3
	add r1, r7, #0
	add r2, r6, r0
_021809B0:
	lsl r0, r1, #1
	add r0, r2, r0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r4, r0
	bne _021809BE
	b _02180950
_021809BE:
	add r1, r1, #1
	cmp r1, #4
	blt _021809B0
_021809C4:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r7, #0
	mov r3, #1
	bl ovy170_21817f4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21808f4

	thumb_func_start ovy170_21809d8
ovy170_21809d8: ; 0x021809D8
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21809f8
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21809d8

	thumb_func_start ovy170_21809e8
ovy170_21809e8: ; 0x021809E8
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_21809f8
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21809e8

	thumb_func_start ovy170_21809f8
ovy170_21809f8: ; 0x021809F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	add r4, r1, #0
	str r2, [sp, #8]
	bl sub_02015A04
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy170_2181860
	mov r1, #0
	str r1, [sp, #0xc]
	cmp r5, #0
	beq _02180A72
	cmp r5, #1
	bne _02180A98
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r5, r1, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _02180A98
	mov r7, #0x1c
_02180A3E:
	add r0, r4, #0
	add r0, #0xbc
	lsl r1, r5, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02181A78
	cmp r0, r6
	bne _02180A60
_02180A5A:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02180A98
_02180A60:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r5, r5, #1
	bl sub_021BAC48
	cmp r5, r0
	blt _02180A3E
	b _02180A98
_02180A72:
	lsl r0, r0, #3
	add r5, r1, #0
	add r7, r4, r0
_02180A78:
	lsl r0, r5, #1
	add r0, r7, r0
	add r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0
	beq _02180A92
	add r0, r4, #0
	mov r2, #0x1c
	bl sub_02181A78
	cmp r0, r6
	bne _02180A92
	b _02180A5A
_02180A92:
	add r5, r5, #1
	cmp r5, #4
	blt _02180A78
_02180A98:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r3, #1
	bl ovy170_21817f4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21809f8
_02180AAC:
	.byte 0xC4, 0x31, 0x08, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x1C, 0x44, 0x30, 0x02, 0x78, 0x02, 0x20, 0x02, 0x43, 0x08, 0x1C
	.byte 0x44, 0x30, 0xC4, 0x31, 0x02, 0x70, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00, 0xC4, 0x31, 0x08, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2180adc
ovy170_2180adc: ; 0x02180ADC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB340
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180adc

	thumb_func_start ovy170_2180b00
ovy170_2180b00: ; 0x02180B00
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB340
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl ovy170_2181af4
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180b00

	thumb_func_start ovy170_2180b34
ovy170_2180b34: ; 0x02180B34
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	mov r1, #0x12
	bl sub_021BB1B4
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180b34

	thumb_func_start ovy170_2180b5c
ovy170_2180b5c: ; 0x02180B5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021819FC
	mov r1, #0
	mov r4, #0
	bl sub_021BB3DC
	cmp r0, #0
	bne _02180B82
	mov r4, #1
_02180B82:
	str r4, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy170_2180b5c

	thumb_func_start ovy170_2180b8c
ovy170_2180b8c: ; 0x02180B8C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	mov r1, #0
	bl sub_021BC1AC
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180b8c
_02180BB4:
	.byte 0x08, 0x1C, 0x98, 0x30, 0x00, 0x68, 0x88, 0x63, 0xC4, 0x31, 0x08, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x88, 0x63, 0xC4, 0x31, 0x08, 0x68
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2180bd4
ovy170_2180bd4: ; 0x02180BD4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BBF40
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180bd4
_02180BF8:
	.byte 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2180c00
ovy170_2180c00: ; 0x02180C00
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _02180C18
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #3
	bl sub_02181A78
	b _02180C1A
_02180C18:
	mov r0, #0
_02180C1A:
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2180c00

	thumb_func_start ovy170_2180c24
ovy170_2180c24: ; 0x02180C24
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _02180C3C
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0x1c
	bl sub_02181A78
	b _02180C40
_02180C3C:
	mov r0, #0
	mvn r0, r0
_02180C40:
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180c24

	thumb_func_start ovy170_2180c48
ovy170_2180c48: ; 0x02180C48
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	add r5, r0, #0
	bl sub_021BBFA8
	cmp r0, #0xb6
	beq _02180C82
	add r0, r5, #0
	bl sub_021BBFA8
	cmp r0, #0xc5
	beq _02180C82
	add r0, r5, #0
	bl sub_021BBFA8
	cmp r0, #0xcb
	beq _02180C82
	mov r0, #0
	b _02180C88
_02180C82:
	add r0, r5, #0
	bl sub_021BBF9C
_02180C88:
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy170_2180c48

	thumb_func_start ovy170_2180c90
ovy170_2180c90: ; 0x02180C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r2, r0, #0
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_02015A68
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy170_2180c90

	thumb_func_start ovy170_2180cac
ovy170_2180cac: ; 0x02180CAC
	push {r3, lr}
	add r2, r1, #0
	add r2, #0x44
	ldrb r3, [r2]
	mov r2, #1
	add r1, #0x44
	orr r2, r3
	strb r2, [r1]
	bl sub_02015924
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy170_2180cac

	thumb_func_start ovy170_2180cc4
ovy170_2180cc4: ; 0x02180CC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r2, sp, #0xc
	ldr r3, _02180D1C ; =0x02181C74
	add r7, r0, #0
	ldmia r3!, {r0, r1}
	str r2, [sp, #4]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0xf
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BB1B4
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r1, #0xf
	bl sub_021BB1B4
	add r3, r0, #0
	ldr r1, [sp, #4]
	str r7, [sp]
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #8]
	add r0, r5, #0
	bl ovy170_21817f4
	add r4, #0xc4
	ldr r0, [r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02180D1C: .word 0x02181C74
	thumb_func_end ovy170_2180cc4

	thumb_func_start ovy170_2180d20
ovy170_2180d20: ; 0x02180D20
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2180d40
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180d20

	thumb_func_start ovy170_2180d30
ovy170_2180d30: ; 0x02180D30
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2180d40
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2180d30

	thumb_func_start ovy170_2180d40
ovy170_2180d40: ; 0x02180D40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	bl sub_02015A04
	add r5, #0xc0
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0xb
	bl sub_021BBAC4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	str r4, [sp]
	bl ovy170_21817f4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180d40

	thumb_func_start ovy170_2180d68
ovy170_2180d68: ; 0x02180D68
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02015A04
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r2, #0x94
	add r3, #0x95
	add r0, r5, #0
	ldrb r2, [r2]
	mov r5, #1
	ldrb r3, [r3]
	mov r1, #2
	and r2, r5
	and r3, r5
	bl ovy170_21817f4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy170_2180d68

	thumb_func_start ovy170_2180d94
ovy170_2180d94: ; 0x02180D94
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021819FC
	bl sub_021BAFFC
	add r6, r0, #0
	bl sub_021CE53C
	cmp r4, r0
	beq _02180DD2
	add r0, r6, #0
	bl sub_021CE544
	cmp r4, r0
	bne _02180DD6
_02180DD2:
	mov r0, #1
	b _02180DD8
_02180DD6:
	mov r0, #0
_02180DD8:
	str r0, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy170_2180d94

	thumb_func_start ovy170_2180de0
ovy170_2180de0: ; 0x02180DE0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181860
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181920
	cmp r0, r6
	bne _02180E0E
	mov r0, #1
	b _02180E10
_02180E0E:
	mov r0, #0
_02180E10:
	str r0, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy170_2180de0

	thumb_func_start ovy170_2180e18
ovy170_2180e18: ; 0x02180E18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	mov r1, #0xd
	bl sub_021BB3DC
	cmp r0, #0
	beq _02180E50
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r6
	bl sub_02015A68
_02180E50:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180e18

	thumb_func_start ovy170_2180e58
ovy170_2180e58: ; 0x02180E58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB340
	cmp r6, r0
	bne _02180E96
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_02015A68
_02180E96:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180e58

	thumb_func_start ovy170_2180e9c
ovy170_2180e9c: ; 0x02180E9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r7, #0
	bl sub_021D5A74
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180e9c

	thumb_func_start ovy170_2180ecc
ovy170_2180ecc: ; 0x02180ECC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r2, r4, #0
	bl sub_021ABE10
	str r0, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy170_2180ecc

	thumb_func_start ovy170_2180f00
ovy170_2180f00: ; 0x02180F00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy170_2181860
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	ldr r1, [sp, #4]
	bl sub_0219C650
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0219D3D4
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_0219D294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219D488
	cmp r5, r0
	bge _02180F92
_02180F54:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02181A08
	bl sub_021BB368
	cmp r0, #0
	bne _02180F86
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_021819FC
	bl sub_021BB444
	add r2, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0x64
	bl ovy170_21817f4
	cmp r0, #0
	bne _02180F92
_02180F86:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_0219D488
	cmp r5, r0
	blt _02180F54
_02180F92:
	add r6, #0xc4
	ldr r0, [r6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2180f00

	thumb_func_start ovy170_2180f9c
ovy170_2180f9c: ; 0x02180F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181860
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0219C650
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D3D4
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D294
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl sub_0219D488
	ldr r1, [sp, #4]
	cmp r1, r0
	bge _02181070
_02180FF2:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02181A08
	bl sub_021BB368
	cmp r0, #0
	bne _0218105E
	add r0, r5, #0
	add r1, r6, #0
	mov r4, #0
	bl sub_021819FC
	bl sub_021BAC48
	cmp r0, #0
	ble _0218104E
_02181018:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021819FC
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_021BAD4C
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #3
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl ovy170_21817f4
	cmp r0, #0
	bne _0218104E
	add r0, r5, #0
	add r1, r6, #0
	add r4, r4, #1
	bl sub_021819FC
	bl sub_021BAC48
	cmp r4, r0
	blt _02181018
_0218104E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021819FC
	bl sub_021BAC48
	cmp r4, r0
	bne _02181070
_0218105E:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl sub_0219D488
	ldr r1, [sp, #4]
	cmp r1, r0
	blt _02180FF2
_02181070:
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2180f9c

	thumb_func_start ovy170_2181078
ovy170_2181078: ; 0x02181078
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy170_2181860
	add r4, r0, #0
	mov r0, #0
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021819FC
	mov r1, #0x13
	bl sub_021BBAC4
	cmp r0, #0
	bne _021810BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021819FC
	bl sub_021BB340
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0xa
	bl ovy170_2181af4
	str r0, [r5, #0x38]
_021810BC:
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy170_2181078

	thumb_func_start ovy170_21810c4
ovy170_21810c4: ; 0x021810C4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xbc
	ldrb r1, [r4, #1]
	ldr r0, [r0]
	bl sub_021BAD84
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_21810c4

	thumb_func_start ovy170_21810dc
ovy170_21810dc: ; 0x021810DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021819FC
	str r0, [sp]
	bl sub_021BAC78
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_021BAC48
	cmp r4, r0
	blo _02181126
	ldr r0, [sp]
	bl sub_021BAC48
	cmp r0, #1
	bls _02181126
	ldr r1, [r6, #0x20]
	add r0, r6, #0
	add r1, r1, r7
	bl sub_02015A68
_02181126:
	add r5, #0xc4
	ldr r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21810dc

	thumb_func_start ovy170_218112c
ovy170_218112c: ; 0x0218112C
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #2]
	add r0, r4, #0
	mov r2, #2
	bl sub_02181A78
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_218112c

	thumb_func_start ovy170_2181144
ovy170_2181144: ; 0x02181144
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BBFA8
	add r1, r0, #0
	beq _02181160
	add r0, r4, #0
	mov r2, #2
	bl sub_02181A78
	b _02181162
_02181160:
	mov r0, #0
_02181162:
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_2181144

	thumb_func_start ovy170_218116c
ovy170_218116c: ; 0x0218116C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #1
	bl sub_021ABD10
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_218116c

	thumb_func_start ovy170_218119c
ovy170_218119c: ; 0x0218119C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB3A4
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_218119c

	thumb_func_start ovy170_21811c0
ovy170_21811c0: ; 0x021811C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl sub_02015A04
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0x94
	add r0, #0xb0
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_0219C650
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D3D4
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D294
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xbc
	add r2, #0xc0
	add r4, r0, #0
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl ovy170_2181a90
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_0219D488
	cmp r4, r0
	bge _02181270
_02181224:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02181A08
	add r6, r0, #0
	bl sub_021BAC40
	add r0, r6, #0
	bl sub_021BB368
	cmp r0, #0
	bne _02181264
	add r2, r5, #0
	add r2, #0xc0
	ldr r2, [r2]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy170_2181a90
	ldr r1, [sp, #4]
	cmp r0, r1
	bls _02181264
	ldr r0, [sp]
	add r1, r0, #0
	ldr r2, [r1, #0x20]
	ldr r1, [sp, #8]
	add r1, r2, r1
	bl sub_02015A68
	b _02181270
_02181264:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_0219D488
	cmp r4, r0
	blt _02181224
_02181270:
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21811c0

	thumb_func_start ovy170_2181278
ovy170_2181278: ; 0x02181278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _021812F2
_02181296:
	add r0, r5, #0
	add r0, #0xbc
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC40
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_021AB8EC
	sub r0, r0, #4
	cmp r0, #1
	bhi _021812E2
	ldr r0, [sp]
	add r1, r0, #0
	ldr r2, [r1, #0x20]
	ldr r1, [sp, #4]
	add r1, r2, r1
	bl sub_02015A68
	b _021812F2
_021812E2:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _02181296
_021812F2:
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181278

	thumb_func_start ovy170_21812fc
ovy170_21812fc: ; 0x021812FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xbc
	add r2, #0xc0
	str r0, [sp, #0xc]
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r4, #0
	add r3, r6, #0
	bl ovy170_2181a90
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_021BBFA8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_021BAC40
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	add r0, #0xb4
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x14]
	bl sub_021AB954
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bhs _02181382
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_02015A68
_02181382:
	add r4, #0xc4
	ldr r0, [r4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_21812fc

	thumb_func_start ovy170_218138c
ovy170_218138c: ; 0x0218138C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy170_2181860
	add r2, sp, #4
	add r4, r6, #0
	ldr r3, _021813E8 ; =0x02181C98
	str r0, [sp]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r5, #0
	str r0, [r2]
	str r5, [r6, #0x38]
	add r4, #0x38
_021813BE:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_021819FC
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	bl sub_021BB1B4
	cmp r0, #6
	ble _021813DA
	ldr r1, [r4]
	sub r0, r0, #6
	add r0, r1, r0
	str r0, [r4]
_021813DA:
	add r5, r5, #1
	cmp r5, #7
	blo _021813BE
	add r6, #0xc4
	ldr r0, [r6]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021813E8: .word 0x02181C98
	thumb_func_end ovy170_218138c

	thumb_func_start ovy170_21813ec
ovy170_21813ec: ; 0x021813EC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021819FC
	add r1, r4, #0
	bl sub_021BB1B4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_021BB1B4
	sub r0, r6, r0
	str r0, [r5, #0x38]
	add r5, #0xc4
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy170_21813ec
_02181430:
	.byte 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00, 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00
	.byte 0xC4, 0x31, 0x08, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy170_2181448
ovy170_2181448: ; 0x02181448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	bl sub_02015A04
	add r1, r5, #0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, #0x94
	add r0, #0xb0
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_0219C650
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D3D4
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0219D294
	add r1, r5, #0
	add r1, #0xbc
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	bl sub_0219D58C
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_021BAC40
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_021BAC40
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xb4
	ldrh r3, [r5, #2]
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	bl sub_021AB954
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	blt _021814CE
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021814DA
_021814CE:
	mov r0, #0
	str r0, [r5, #0x38]
	add r5, #0xc4
	add sp, #0x24
	ldr r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021814DA:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02181566
_021814E4:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02181A08
	add r6, r0, #0
	bl sub_021BAC40
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021BB37C
	cmp r0, #0
	beq _0218155A
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _0218155A
	mov r0, #2
	str r0, [r5, #0x38]
	add r0, r6, #0
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _0218155A
_0218151A:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r3, r0, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	beq _0218154E
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	bl sub_021AB954
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bls _0218154E
	mov r0, #1
	str r0, [r5, #0x38]
	b _0218155A
_0218154E:
	add r0, r6, #0
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _0218151A
_0218155A:
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _021814E4
_02181566:
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181448

	thumb_func_start ovy170_2181570
ovy170_2181570: ; 0x02181570
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2181590
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181570

	thumb_func_start ovy170_2181580
ovy170_2181580: ; 0x02181580
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2181590
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181580

	thumb_func_start ovy170_2181590
ovy170_2181590: ; 0x02181590
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BB368
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181590

	thumb_func_start ovy170_21815d0
ovy170_21815d0: ; 0x021815D0
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	mov r1, #0x11
	bl sub_021BB1B4
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_21815d0

	thumb_func_start ovy170_21815f8
ovy170_21815f8: ; 0x021815F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BC57C
	cmp r0, #0
	beq _0218162E
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r6
	bl sub_02015A68
_0218162E:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21815f8

	thumb_func_start ovy170_2181634
ovy170_2181634: ; 0x02181634
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021819FC
	bl sub_021BAC44
	str r0, [r4, #0x38]
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181634

	thumb_func_start ovy170_2181658
ovy170_2181658: ; 0x02181658
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_2181698
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181658

	thumb_func_start ovy170_2181668
ovy170_2181668: ; 0x02181668
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_2181698
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181668

	thumb_func_start ovy170_2181678
ovy170_2181678: ; 0x02181678
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_2181698
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181678

	thumb_func_start ovy170_2181688
ovy170_2181688: ; 0x02181688
	push {r4, lr}
	mov r2, #3
	add r4, r1, #0
	bl ovy170_2181698
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181688

	thumb_func_start ovy170_2181698
ovy170_2181698: ; 0x02181698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp]
	add r4, #0xcc
	ldr r2, [r4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy170_21817f4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181698

	thumb_func_start ovy170_21816c0
ovy170_21816c0: ; 0x021816C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [sp]
	bl sub_02015A04
	ldr r1, [sp]
	mov r6, #0
	ldr r1, [r1, #0x20]
	add r4, r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02181704
	ldrh r1, [r5, #2]
	add r0, r5, #0
	mov r2, #0x1c
	bl sub_02181A78
	lsl r7, r0, #1
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r1, r0, #1
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _02181706
	b _02181704
_02181704:
	mov r6, #1
_02181706:
	cmp r6, #1
	bne _02181716
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy170_2180cac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02181716:
	add r2, r7, #1
	lsl r2, r2, #1
	lsl r1, r7, #1
	ldrh r2, [r4, r2]
	ldrh r1, [r4, r1]
	ldr r0, [sp]
	lsl r2, r2, #0x10
	orr r1, r2
	add r1, r4, r1
	bl sub_02015A68
	add r5, #0xc4
	ldr r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21816c0

	thumb_func_start ovy170_2181734
ovy170_2181734: ; 0x02181734
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy170_2181860
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #3
	bl sub_021ABE34
	cmp r0, #0
	beq _0218176C
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r6
	bl sub_02015A68
_0218176C:
	add r4, #0xc4
	ldr r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181734

	thumb_func_start ovy170_2181774
ovy170_2181774: ; 0x02181774
	push {r4, lr}
	mov r2, #0
	add r4, r1, #0
	bl ovy170_21817a4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181774

	thumb_func_start ovy170_2181784
ovy170_2181784: ; 0x02181784
	push {r4, lr}
	mov r2, #1
	add r4, r1, #0
	bl ovy170_21817a4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181784

	thumb_func_start ovy170_2181794
ovy170_2181794: ; 0x02181794
	push {r4, lr}
	mov r2, #2
	add r4, r1, #0
	bl ovy170_21817a4
	add r4, #0xc4
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy170_2181794

	thumb_func_start ovy170_21817a4
ovy170_21817a4: ; 0x021817A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy170_2181860
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021819FC
	mov r1, #8
	bl sub_021BB1B4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021819FC
	mov r1, #0xa
	bl sub_021BB1B4
	add r3, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ovy170_21817f4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_21817a4

	thumb_func_start ovy170_21817f4
ovy170_21817f4: ; 0x021817F4
	push {r4, lr}
	mov r4, #0
	cmp r1, #7
	bhi _0218184C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02181808: ; jump table
	.short _02181818 - _02181808 - 2 ; case 0
	.short _0218181E - _02181808 - 2 ; case 1
	.short _02181824 - _02181808 - 2 ; case 2
	.short _0218182A - _02181808 - 2 ; case 3
	.short _02181830 - _02181808 - 2 ; case 4
	.short _02181838 - _02181808 - 2 ; case 5
	.short _02181840 - _02181808 - 2 ; case 6
	.short _02181846 - _02181808 - 2 ; case 7
_02181818:
	cmp r2, r3
	bge _0218184C
	b _0218184A
_0218181E:
	cmp r2, r3
	ble _0218184C
	b _0218184A
_02181824:
	cmp r2, r3
	bne _0218184C
	b _0218184A
_0218182A:
	cmp r2, r3
	beq _0218184C
	b _0218184A
_02181830:
	add r1, r2, #0
	tst r1, r3
	beq _0218184C
	b _0218184A
_02181838:
	add r1, r2, #0
	tst r1, r3
	bne _0218184C
	b _0218184A
_02181840:
	cmp r2, r3
	bgt _0218184C
	b _0218184A
_02181846:
	cmp r2, r3
	blt _0218184C
_0218184A:
	mov r4, #1
_0218184C:
	cmp r4, #1
	bne _0218185A
	ldr r2, [r0, #0x20]
	ldr r1, [sp, #8]
	add r1, r2, r1
	bl sub_02015A68
_0218185A:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy170_21817f4

	thumb_func_start ovy170_2181860
ovy170_2181860: ; 0x02181860
	push {r3, lr}
	cmp r1, #3
	bhi _02181880
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02181872: ; jump table
	.short _02181880 - _02181872 - 2 ; case 0
	.short _0218187A - _02181872 - 2 ; case 1
	.short _021818D2 - _02181872 - 2 ; case 2
	.short _02181886 - _02181872 - 2 ; case 3
_0218187A:
	add r0, #0x94
	ldrb r0, [r0]
	pop {r3, pc}
_02181880:
	add r0, #0x95
	ldrb r0, [r0]
	pop {r3, pc}
_02181886:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #3
	bhi _0218191C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0218189C: ; jump table
	.short _021818A4 - _0218189C - 2 ; case 0
	.short _021818AA - _0218189C - 2 ; case 1
	.short _021818B8 - _0218189C - 2 ; case 2
	.short _021818A4 - _0218189C - 2 ; case 3
_021818A4:
	add r0, #0x94
	ldrb r0, [r0]
	pop {r3, pc}
_021818AA:
	add r0, #0x94
	ldrb r1, [r0]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_021818B8:
	add r0, #0x94
	ldrb r0, [r0]
	lsr r1, r0, #1
	cmp r1, #2
	beq _021818C6
	add r1, r1, #1
	b _021818C8
_021818C6:
	mov r1, #1
_021818C8:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0219C4A4
	pop {r3, pc}
_021818D2:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #3
	bhi _0218191C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021818E8: ; jump table
	.short _021818F0 - _021818E8 - 2 ; case 0
	.short _021818F6 - _021818E8 - 2 ; case 1
	.short _02181904 - _021818E8 - 2 ; case 2
	.short _021818F0 - _021818E8 - 2 ; case 3
_021818F0:
	add r0, #0x95
	ldrb r0, [r0]
	pop {r3, pc}
_021818F6:
	add r0, #0x95
	ldrb r1, [r0]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_02181904:
	add r0, #0x95
	ldrb r0, [r0]
	lsr r1, r0, #1
	cmp r1, #2
	beq _02181912
	add r1, r1, #1
	b _02181914
_02181912:
	mov r1, #1
_02181914:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0219C4A4
_0218191C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy170_2181860

	thumb_func_start ovy170_2181920
ovy170_2181920: ; 0x02181920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r4, r1, #0
	add r1, r7, #0
	add r5, r0, #0
	bl sub_021819FC
	mov r1, #0x10
	add r6, r0, #0
	bl sub_021BBAC4
	cmp r0, #0
	beq _02181942
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02181942:
	cmp r4, #0
	beq _0218194A
	cmp r4, #2
	bne _021819F0
_0218194A:
	add r5, #0x7c
	add r0, r7, #0
	bl sub_021E04EC
	strb r0, [r5, r7]
	ldrb r0, [r5, r7]
	cmp r0, #0
	bne _021819F8
	add r0, r6, #0
	mov r1, #0x10
	bl sub_021BB1B4
	cmp r0, #0x17
	beq _021819F8
	cmp r0, #0x2a
	beq _021819F8
	cmp r0, #0x47
	beq _021819F8
	add r0, r6, #0
	bl sub_021BAC44
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x13
	bl sub_021BB1B4
	add r6, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r6, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x1a
	mov r5, #0
	bl sub_0201EF1C
	str r0, [sp]
	lsl r0, r4, #0x10
	lsl r1, r6, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x1b
	bl sub_0201EF1C
	add r7, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r6, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x1c
	bl sub_0201EF1C
	ldr r1, [sp]
	cmp r1, #0
	beq _021819BA
	add r5, r5, #1
	str r1, [sp, #4]
_021819BA:
	cmp r7, #0
	beq _021819C6
	lsl r2, r5, #2
	add r1, sp, #4
	add r5, r5, #1
	str r7, [r1, r2]
_021819C6:
	cmp r0, #0
	beq _021819D2
	lsl r2, r5, #2
	add r1, sp, #4
	add r5, r5, #1
	str r0, [r1, r2]
_021819D2:
	bl sub_02043F2C
	mov r1, #0
	cmp r5, #0
	beq _021819E6
	add r2, r5, #0
	add r3, r1, #0
	blx sub_0208D60C
	add r0, r1, #0
_021819E6:
	lsl r1, r0, #2
	add r0, sp, #4
	add sp, #0x10
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021819F0:
	add r0, r6, #0
	mov r1, #0x10
	bl sub_021BB1B4
_021819F8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy170_2181920

	thumb_func_start sub_021819FC
sub_021819FC: ; 0x021819FC
	add r0, #0xb8
	ldr r0, [r0]
	ldr r3, _02181A04 ; =sub_0219D188
	bx r3
	.align 2, 0
_02181A04: .word sub_0219D188
	thumb_func_end sub_021819FC

	thumb_func_start sub_02181A08
sub_02181A08: ; 0x02181A08
	ldr r3, _02181A0C ; =sub_0219D4F4
	bx r3
	.align 2, 0
_02181A0C: .word sub_0219D4F4
	thumb_func_end sub_02181A08

	thumb_func_start sub_02181A10
sub_02181A10: ; 0x02181A10
	mov r3, #0
_02181A12:
	lsl r1, r3, #2
	add r2, r0, r1
	ldr r1, [r2, #0x14]
	add r3, r3, #1
	str r1, [r2, #4]
	cmp r3, #4
	blt _02181A12
	bx lr
	.align 2, 0
	thumb_func_end sub_02181A10

	thumb_func_start ovy170_2181a24
ovy170_2181a24: ; 0x02181A24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	bl sub_021819FC
	str r0, [sp]
	mov r4, #0
_02181A36:
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	lsl r6, r4, #1
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, r6, r0
	add r0, #0x4c
	ldrh r7, [r0]
	ldr r0, [sp]
	bl sub_021BBFA8
	cmp r7, r0
	beq _02181A74
	cmp r7, #0
	bne _02181A6E
	ldr r0, [sp]
	bl sub_021BBFA8
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	lsl r1, r1, #3
	add r1, r5, r1
	add r1, r1, r6
	add r1, #0x4c
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_02181A6E:
	add r4, r4, #1
	cmp r4, #4
	blt _02181A36
_02181A74:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181a24

	thumb_func_start sub_02181A78
sub_02181A78: ; 0x02181A78
	ldr r3, _02181A80 ; =sub_02021280
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	.align 2, 0
_02181A80: .word sub_02021280
	thumb_func_end sub_02181A78

	thumb_func_start sub_02181A84
sub_02181A84: ; 0x02181A84
	ldr r3, _02181A8C ; =sub_02021410
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	.align 2, 0
_02181A8C: .word sub_02021410
	thumb_func_end sub_02181A84

	thumb_func_start ovy170_2181a90
ovy170_2181a90: ; 0x02181A90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp, #8]
	add r4, r2, #0
	add r0, r5, #0
	add r7, r3, #0
	mov r6, #0
	bl sub_021BAC40
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021BAC40
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r4, #0
	bl sub_021BAC48
	cmp r0, #0
	ble _02181AEC
_02181ABA:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021BACC0
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r0, #0xb4
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	bl sub_021AB954
	cmp r0, r6
	bls _02181AE0
	add r6, r0, #0
_02181AE0:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_021BAC48
	cmp r4, r0
	blt _02181ABA
_02181AEC:
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy170_2181a90

	thumb_func_start ovy170_2181af4
ovy170_2181af4: ; 0x02181AF4
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r3, #0xa0
	add r5, r2, #0
	add r0, #0xa8
	ldrh r2, [r3]
	ldr r0, [r0]
	bl Item_ArcHandleReadFile
	add r4, r0, #0
	add r1, r5, #0
	bl Item_GetParam
	add r5, r0, #0
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy170_2181af4

	thumb_func_start ovy170_2181b1c
ovy170_2181b1c: ; 0x02181B1C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _02181B4C ; =0x02181ec0
	ldr r1, [r4]
	cmp r1, #0
	bne _02181B46
	ldr r1, _02181B50 ; =0x00000F9F
	ldr r3, _02181B54 ; =0x02181EA0
	str r1, [sp]
	mov r1, #0x18
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4]
	mov r2, #0
	mov r1, #0xff
_02181B3C:
	ldr r0, [r4]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _02181B3C
_02181B46:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02181B4C: .word 0x02181ec0
_02181B50: .word 0x00000F9F
_02181B54: .word 0x02181EA0
	thumb_func_end ovy170_2181b1c

	thumb_func_start ovy170_2181b58
ovy170_2181b58: ; 0x02181B58
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02181B90 ; =0x02181ec0
	ldr r0, [r6]
	cmp r0, #0
	beq _02181B8E
	mov r4, #0
	add r7, r4, #0
_02181B66:
	ldr r0, [r6]
	lsl r5, r4, #2
	add r0, r0, r5
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02181B7C
	bl GFL_HeapFree
	ldr r0, [r6]
	add r0, r0, r5
	str r7, [r0, #8]
_02181B7C:
	add r4, r4, #1
	cmp r4, #4
	blt _02181B66
	ldr r4, _02181B90 ; =0x02181ec0
	ldr r0, [r4]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4]
_02181B8E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02181B90: .word 0x02181ec0
	thumb_func_end ovy170_2181b58

	thumb_func_start ovy170_2181b94
ovy170_2181b94: ; 0x02181B94
	push {r3, r4, r5, lr}
	ldr r2, _02181C20 ; =0x02181ec0
	add r1, r0, #0
	ldr r3, [r2]
	add r2, r1, #0
	add r2, #0x45
	ldrb r4, [r2]
	mov r0, #0
_02181BA4:
	ldrb r2, [r3, r0]
	cmp r4, r2
	bne _02181BBE
	add r2, r3, #4
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	ldr r1, _02181C20 ; =0x02181ec0
	lsl r0, r0, #2
	ldr r1, [r1]
	add r0, r1, r0
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02181BBE:
	add r0, r0, #1
	cmp r0, #4
	blt _02181BA4
	mov r0, #0
_02181BC6:
	ldrb r2, [r3, r0]
	cmp r2, #0xff
	beq _02181BD2
	add r0, r0, #1
	cmp r0, #4
	blt _02181BC6
_02181BD2:
	cmp r4, #2
	bne _02181BEA
	add r2, r1, #0
	add r2, #0xa0
	ldrh r5, [r2]
	ldr r2, _02181C24 ; =0x00007FFF
	and r5, r2
	add r2, r2, #1
	orr r2, r5
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	b _02181BF0
_02181BEA:
	add r2, r1, #0
	add r2, #0xa0
	ldrh r2, [r2]
_02181BF0:
	strb r4, [r3, r0]
	ldr r4, _02181C20 ; =0x02181ec0
	lsl r2, r2, #0x10
	ldr r3, [r4]
	lsr r2, r2, #0x10
	add r5, r3, #4
	ldrb r3, [r5, r0]
	add r3, r3, #1
	strb r3, [r5, r0]
	lsl r5, r0, #2
	add r0, r1, #0
	add r1, #0x45
	add r0, #0xa4
	ldrb r1, [r1]
	ldr r0, [r0]
	bl sub_0204AB1C
	ldr r1, [r4]
	add r1, r1, r5
	str r0, [r1, #8]
	ldr r0, [r4]
	add r0, r0, r5
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02181C20: .word 0x02181ec0
_02181C24: .word 0x00007FFF
	thumb_func_end ovy170_2181b94

	thumb_func_start ovy170_2181c28
ovy170_2181c28: ; 0x02181C28
	push {r3, r4, r5, lr}
	ldr r2, _02181C70 ; =0x02181ec0
	add r0, #0x45
	ldr r3, [r2]
	ldrb r2, [r0]
	mov r1, #0
_02181C34:
	ldrb r0, [r3, r1]
	cmp r2, r0
	bne _02181C68
	add r2, r3, #4
	ldrb r0, [r2, r1]
	ldr r4, _02181C70 ; =0x02181ec0
	sub r0, r0, #1
	strb r0, [r2, r1]
	ldr r2, [r4]
	add r0, r2, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02181C6E
	mov r0, #0xff
	strb r0, [r2, r1]
	ldr r0, [r4]
	lsl r5, r1, #2
	add r0, r0, r5
	ldr r0, [r0, #8]
	bl GFL_HeapFree
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, r5
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02181C68:
	add r1, r1, #1
	cmp r1, #4
	blt _02181C34
_02181C6E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02181C70: .word 0x02181ec0
	thumb_func_end ovy170_2181c28
_02181C74:
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x08, 0x00, 0xB4, 0x1C, 0x18, 0x02, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x1D, 0xFE, 0x17, 0x02, 0x2D, 0xFE, 0x17, 0x02, 0x3D, 0xFE, 0x17, 0x02
	.byte 0x4D, 0xFE, 0x17, 0x02, 0x8D, 0xFE, 0x17, 0x02, 0xB5, 0xFE, 0x17, 0x02, 0xC5, 0xFE, 0x17, 0x02
	.byte 0xD5, 0xFE, 0x17, 0x02, 0xE5, 0xFE, 0x17, 0x02, 0x3D, 0xFF, 0x17, 0x02, 0x4D, 0xFF, 0x17, 0x02
	.byte 0x9D, 0xFF, 0x17, 0x02, 0xAD, 0xFF, 0x17, 0x02, 0x05, 0x00, 0x18, 0x02, 0x15, 0x00, 0x18, 0x02
	.byte 0x81, 0x00, 0x18, 0x02, 0x91, 0x00, 0x18, 0x02, 0xE9, 0x00, 0x18, 0x02, 0xF9, 0x00, 0x18, 0x02
	.byte 0x55, 0x01, 0x18, 0x02, 0x65, 0x01, 0x18, 0x02, 0x75, 0x01, 0x18, 0x02, 0x85, 0x01, 0x18, 0x02
	.byte 0x95, 0x01, 0x18, 0x02, 0xA5, 0x01, 0x18, 0x02, 0xD9, 0x01, 0x18, 0x02, 0xE9, 0x01, 0x18, 0x02
	.byte 0x1D, 0x02, 0x18, 0x02, 0x65, 0x02, 0x18, 0x02, 0xB1, 0x02, 0x18, 0x02, 0x1D, 0x03, 0x18, 0x02
	.byte 0x89, 0x03, 0x18, 0x02, 0xA1, 0x03, 0x18, 0x02, 0x49, 0x04, 0x18, 0x02, 0x5D, 0x04, 0x18, 0x02
	.byte 0x01, 0x05, 0x18, 0x02, 0x75, 0x01, 0x18, 0x02, 0x85, 0x01, 0x18, 0x02, 0x25, 0x05, 0x18, 0x02
	.byte 0x91, 0x05, 0x18, 0x02, 0x09, 0x06, 0x18, 0x02, 0x15, 0x06, 0x18, 0x02, 0x2D, 0x06, 0x18, 0x02
	.byte 0x51, 0x06, 0x18, 0x02, 0x59, 0x06, 0x18, 0x02, 0xAD, 0x06, 0x18, 0x02, 0xBD, 0x06, 0x18, 0x02
	.byte 0x5D, 0x07, 0x18, 0x02, 0x6D, 0x07, 0x18, 0x02, 0x7D, 0x07, 0x18, 0x02, 0xC1, 0x07, 0x18, 0x02
	.byte 0xD1, 0x07, 0x18, 0x02, 0xE1, 0x07, 0x18, 0x02, 0xF1, 0x07, 0x18, 0x02, 0x51, 0x08, 0x18, 0x02
	.byte 0x61, 0x08, 0x18, 0x02, 0xD5, 0x08, 0x18, 0x02, 0xE5, 0x08, 0x18, 0x02, 0xD9, 0x09, 0x18, 0x02
	.byte 0xE9, 0x09, 0x18, 0x02, 0xAD, 0x0A, 0x18, 0x02, 0xB5, 0x0A, 0x18, 0x02, 0xCD, 0x0A, 0x18, 0x02
	.byte 0xD5, 0x0A, 0x18, 0x02, 0xDD, 0x0A, 0x18, 0x02, 0x01, 0x0B, 0x18, 0x02, 0x35, 0x0B, 0x18, 0x02
	.byte 0x5D, 0x0B, 0x18, 0x02, 0x8D, 0x0B, 0x18, 0x02, 0xB5, 0x0B, 0x18, 0x02, 0xC5, 0x0B, 0x18, 0x02
	.byte 0xD5, 0x0B, 0x18, 0x02, 0xF9, 0x0B, 0x18, 0x02, 0x01, 0x0C, 0x18, 0x02, 0x25, 0x0C, 0x18, 0x02
	.byte 0x49, 0x0C, 0x18, 0x02, 0x91, 0x0C, 0x18, 0x02, 0xAD, 0x0C, 0x18, 0x02, 0xC5, 0x0C, 0x18, 0x02
	.byte 0x21, 0x0D, 0x18, 0x02, 0x31, 0x0D, 0x18, 0x02, 0x69, 0x0D, 0x18, 0x02, 0x95, 0x0D, 0x18, 0x02
	.byte 0xE1, 0x0D, 0x18, 0x02, 0x19, 0x0E, 0x18, 0x02, 0x59, 0x0E, 0x18, 0x02, 0x9D, 0x0E, 0x18, 0x02
	.byte 0xCD, 0x0E, 0x18, 0x02, 0x01, 0x0F, 0x18, 0x02, 0x9D, 0x0F, 0x18, 0x02, 0x79, 0x10, 0x18, 0x02
	.byte 0xC5, 0x10, 0x18, 0x02, 0xDD, 0x10, 0x18, 0x02, 0x2D, 0x11, 0x18, 0x02, 0x45, 0x11, 0x18, 0x02
	.byte 0x6D, 0x11, 0x18, 0x02, 0x9D, 0x11, 0x18, 0x02, 0xC1, 0x11, 0x18, 0x02, 0x79, 0x12, 0x18, 0x02
	.byte 0xFD, 0x12, 0x18, 0x02, 0x8D, 0x13, 0x18, 0x02, 0xED, 0x13, 0x18, 0x02, 0x31, 0x14, 0x18, 0x02
	.byte 0x39, 0x14, 0x18, 0x02, 0x41, 0x14, 0x18, 0x02, 0x49, 0x14, 0x18, 0x02, 0x71, 0x15, 0x18, 0x02
	.byte 0x81, 0x15, 0x18, 0x02, 0xD1, 0x15, 0x18, 0x02, 0xF9, 0x15, 0x18, 0x02, 0x35, 0x16, 0x18, 0x02
	.byte 0x59, 0x16, 0x18, 0x02, 0x69, 0x16, 0x18, 0x02, 0x79, 0x16, 0x18, 0x02, 0x89, 0x16, 0x18, 0x02
	.byte 0xC1, 0x16, 0x18, 0x02, 0x35, 0x17, 0x18, 0x02, 0x75, 0x17, 0x18, 0x02, 0x85, 0x17, 0x18, 0x02
	.byte 0x95, 0x17, 0x18, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x72, 0x5F, 0x61, 0x69, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x02181C74
