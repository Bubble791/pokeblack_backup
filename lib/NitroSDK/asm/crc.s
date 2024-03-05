	.include "asm/macros.inc"
	.include "math.inc"
	.include "global.inc"

	.text

	thumb_func_start MATHi_CalcHMAC
MATHi_CalcHMAC: ; 0x0207779C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	str r0, [sp]
	add r7, r1, #0
	add r6, r3, #0
	str r2, [sp, #4]
	ldr r5, [sp, #0xe0]
	ldr r4, [sp, #0xe4]
	cmp r0, #0
	beq _0207787E
	cmp r7, #0
	beq _0207787E
	add r0, r2, #0
	beq _0207787E
	cmp r6, #0
	beq _0207787E
	cmp r5, #0
	beq _0207787E
	cmp r4, #0
	beq _0207787E
	ldr r0, [r4, #4]
	cmp r5, r0
	bls _020777E6
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r3, [r4, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	add r6, sp, #0x88
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	add r1, r6, #0
	blx r2
	ldr r5, [r4]
_020777E6:
	mov r0, #0
	cmp r5, #0
	bls _020777FC
	add r2, sp, #0x48
	mov r1, #0x36
_020777F0:
	ldrb r3, [r6, r0]
	eor r3, r1
	strb r3, [r2, r0]
	add r0, r0, #1
	cmp r0, r5
	blo _020777F0
_020777FC:
	ldr r1, [r4, #4]
	cmp r0, r1
	bhs _02077810
	mov r3, #0x36
	add r2, sp, #0x48
_02077806:
	strb r3, [r2, r0]
	ldr r1, [r4, #4]
	add r0, r0, #1
	cmp r0, r1
	blo _02077806
_02077810:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #0x48
	blx r3
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x14]
	add r1, r7, #0
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x18]
	blx r2
	mov r0, #0
	cmp r5, #0
	bls _02077848
	add r2, sp, #8
	mov r1, #0x5c
_0207783C:
	ldrb r3, [r6, r0]
	eor r3, r1
	strb r3, [r2, r0]
	add r0, r0, #1
	cmp r0, r5
	blo _0207783C
_02077848:
	ldr r1, [r4, #4]
	cmp r0, r1
	bhs _0207785C
	mov r3, #0x5c
	add r2, sp, #8
_02077852:
	strb r3, [r2, r0]
	ldr r1, [r4, #4]
	add r0, r0, #1
	cmp r0, r1
	blo _02077852
_0207785C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #8
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #0x14]
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [sp]
	ldr r2, [r4, #0x18]
	blx r2
_0207787E:
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end MATHi_CalcHMAC

	thumb_func_start MATHi_CRC8InitTable
MATHi_CRC8InitTable: ; 0x02077884
	push {r4, r5, r6, r7}
	mov r4, #0x80
	mov r2, #0
	mov r5, #0x80
	add r4, #0x80
_0207788E:
	add r7, r2, #0
	mov r3, #0
_02077892:
	add r6, r7, #0
	tst r6, r5
	beq _020778A0
	lsl r6, r7, #1
	add r7, r6, #0
	eor r7, r1
	b _020778A2
_020778A0:
	lsl r7, r7, #1
_020778A2:
	add r3, r3, #1
	cmp r3, #8
	blo _02077892
	strb r7, [r0, r2]
	add r2, r2, #1
	cmp r2, r4
	blo _0207788E
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC8InitTable

	thumb_func_start MATHi_CRC8Update
MATHi_CRC8Update: ; 0x020778B4
	push {r3, r4, r5, r6}
	mov r4, #0
	ldrb r6, [r1]
	cmp r3, #0
	bls _020778D0
_020778BE:
	ldrb r5, [r2]
	add r4, r4, #1
	add r2, r2, #1
	eor r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	ldrb r6, [r0, r5]
	cmp r4, r3
	blo _020778BE
_020778D0:
	strb r6, [r1]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end MATHi_CRC8Update

	thumb_func_start MATHi_CRC16InitTable
MATHi_CRC16InitTable: ; 0x020778D8
	push {r4, r5, r6, r7}
	mov r6, #2
	lsl r6, r6, #0xe
	mov r3, #0
	lsr r5, r6, #7
_020778E2:
	lsl r2, r3, #8
	mov r4, #0
_020778E6:
	add r7, r2, #0
	tst r7, r6
	beq _020778F2
	lsl r2, r2, #1
	eor r2, r1
	b _020778F4
_020778F2:
	lsl r2, r2, #1
_020778F4:
	add r4, r4, #1
	cmp r4, #8
	blo _020778E6
	lsl r4, r3, #1
	add r3, r3, #1
	strh r2, [r0, r4]
	cmp r3, r5
	blo _020778E2
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC16InitTable

	thumb_func_start MATHi_CRC16InitTableRev
MATHi_CRC16InitTableRev: ; 0x02077908
	push {r4, r5, r6, r7}
	mov r5, #1
	mov r3, #0
	mov r6, #1
	add r5, #0xff
_02077912:
	add r2, r3, #0
	mov r4, #0
_02077916:
	add r7, r2, #0
	tst r7, r6
	beq _02077922
	lsr r2, r2, #1
	eor r2, r1
	b _02077924
_02077922:
	lsr r2, r2, #1
_02077924:
	add r4, r4, #1
	cmp r4, #8
	blo _02077916
	lsl r4, r3, #1
	add r3, r3, #1
	strh r2, [r0, r4]
	cmp r3, r5
	blo _02077912
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC16InitTableRev

	thumb_func_start MATHi_CRC16Update
MATHi_CRC16Update: ; 0x02077938
	push {r4, r5, r6, r7}
	mov r5, #0
	ldrh r6, [r1]
	cmp r3, #0
	bls _0207795A
_02077942:
	lsl r4, r6, #8
	lsr r7, r6, #8
	ldrb r6, [r2]
	add r5, r5, #1
	add r2, r2, #1
	eor r6, r7
	lsl r6, r6, #0x18
	lsr r6, r6, #0x17
	ldrh r6, [r0, r6]
	eor r6, r4
	cmp r5, r3
	blo _02077942
_0207795A:
	strh r6, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC16Update

	thumb_func_start MATHi_CRC16UpdateRev
MATHi_CRC16UpdateRev: ; 0x02077960
	push {r4, r5, r6, r7}
	mov r5, #0
	ldrh r7, [r1]
	cmp r3, #0
	bls _02077982
_0207796A:
	ldrb r6, [r2]
	lsr r4, r7, #8
	add r5, r5, #1
	eor r6, r7
	lsl r6, r6, #0x18
	lsr r6, r6, #0x17
	ldrh r6, [r0, r6]
	add r7, r4, #0
	add r2, r2, #1
	eor r7, r6
	cmp r5, r3
	blo _0207796A
_02077982:
	strh r7, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC16UpdateRev

	thumb_func_start MATHi_CRC32InitTableRev
MATHi_CRC32InitTableRev: ; 0x02077988
	push {r4, r5, r6, r7}
	mov r5, #1
	mov r3, #0
	mov r6, #1
	add r5, #0xff
_02077992:
	add r2, r3, #0
	mov r4, #0
_02077996:
	add r7, r2, #0
	tst r7, r6
	beq _020779A2
	lsr r2, r2, #1
	eor r2, r1
	b _020779A4
_020779A2:
	lsr r2, r2, #1
_020779A4:
	add r4, r4, #1
	cmp r4, #8
	blo _02077996
	lsl r4, r3, #2
	add r3, r3, #1
	str r2, [r0, r4]
	cmp r3, r5
	blo _02077992
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC32InitTableRev

	thumb_func_start MATHi_CRC32UpdateRev
MATHi_CRC32UpdateRev: ; 0x020779B8
	push {r4, r5, r6, r7}
	mov r5, #0
	ldr r7, [r1]
	cmp r3, #0
	bls _020779DA
_020779C2:
	ldrb r6, [r2]
	lsr r4, r7, #8
	add r5, r5, #1
	eor r6, r7
	lsl r6, r6, #0x18
	lsr r6, r6, #0x16
	ldr r6, [r0, r6]
	add r7, r4, #0
	eor r7, r6
	add r2, r2, #1
	cmp r5, r3
	blo _020779C2
_020779DA:
	str r7, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end MATHi_CRC32UpdateRev

	thumb_func_start MATH_CalcCRC8
MATH_CalcCRC8: ; 0x020779E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r3, r2, #0
	mov r1, #0
	add r4, sp, #0
	strb r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl MATHi_CRC8Update
	ldrb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end MATH_CalcCRC8

	thumb_func_start MATH_CalcCRC16
MATH_CalcCRC16: ; 0x020779F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r3, r2, #0
	mov r1, #0
	add r4, sp, #0
	strh r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl MATHi_CRC16UpdateRev
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end MATH_CalcCRC16

	thumb_func_start MATH_CalcCRC16CCITT
MATH_CalcCRC16CCITT: ; 0x02077A10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02077A28 ; =0x0000FFFF
	add r4, sp, #0
	add r3, r2, #0
	strh r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl MATHi_CRC16Update
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02077A28: .word 0x0000FFFF
	thumb_func_end MATH_CalcCRC16CCITT

	thumb_func_start MATH_CalcCRC32
MATH_CalcCRC32: ; 0x02077A2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	str r1, [sp]
	add r1, sp, #0
	add r2, r4, #0
	bl MATHi_CRC32UpdateRev
	ldr r0, [sp]
	mvn r0, r0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end MATH_CalcCRC32

	arm_func_start MATH_QSort
MATH_QSort: ; 0x02077A4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	cmp r1, #1
	ble _02077CCC
	ldr r4, [sp, #0x24]
	mov fp, r3
	mov r8, r2
	cmp r4, #0
	bne _02077A84
	clz r2, r1
	rsb r2, r2, #0x20
	mov r2, r2, lsl #3
	sub sp, sp, r2
	mov r4, sp
	str r2, [sp, #-4]!
_02077A84:
	sub r1, r1, #1
	mla r1, r1, r8, r0
	mov r5, r4
	str r0, [r4], #4
	str r1, [r4], #4
	clz r2, r8
	rsb r2, r2, #0x20
	str r2, [sp, #-4]!
_02077AA4:
	cmp r4, r5
	beq _02077CB4
	ldr r7, [r4, #-4]
	ldr r6, [r4, #-8]!
	sub r2, r7, r6
	cmp r2, r8
	bne _02077B18
	mov r0, r6
	mov r1, r7
	blx fp
	cmp r0, #0
	ble _02077AA4
	mov r0, r8
	tst r0, #3
	beq _02077AFC
_02077AE0:
	ldrb r1, [r6]
	subs r0, r0, #1
	swpb r1, r1, [r7]
	add r7, r7, #1
	strb r1, [r6], #1
	bne _02077AE0
	b _02077AA4
_02077AFC:
	ldr r1, [r6]
	subs r0, r0, #4
	swp r1, r1, [r7]
	add r7, r7, #4
	str r1, [r6], #4
	bne _02077AFC
	b _02077AA4
_02077B18:
	ldr r3, [sp]
	sub r2, r7, r6
	mov r2, r2, lsr r3
	mla r2, r2, r8, r6
	mov r3, r6
	mov r0, r8
	mov r2, r2
	tst r0, #3
	beq _02077B58
_02077B3C:
	ldrb r1, [r2]
	subs r0, r0, #1
	swpb r1, r1, [r3]
	add r3, r3, #1
	strb r1, [r2], #1
	bne _02077B3C
	b _02077B70
_02077B58:
	ldr r1, [r2]
	subs r0, r0, #4
	swp r1, r1, [r3]
	add r3, r3, #4
	str r1, [r2], #4
	bne _02077B58
_02077B70:
	mov sb, r6
	mov sl, r7
	add sb, sb, r8
_02077B7C:
	cmp sb, r7
	bge _02077B9C
	mov r1, r6
	mov r0, sb
	blx fp
	cmp r0, #0
	addlt sb, sb, r8
	blt _02077B7C
_02077B9C:
	mov r1, r6
	mov r0, sl
	blx fp
	cmp r0, #0
	subgt sl, sl, r8
	bgt _02077B9C
	cmp sb, sl
	bge _02077C14
	mov r2, sb
	mov r3, sl
	mov r0, r8
	tst r0, #3
	beq _02077BEC
_02077BD0:
	ldrb r1, [r2]
	subs r0, r0, #1
	swpb r1, r1, [r3]
	add r3, r3, #1
	strb r1, [r2], #1
	bne _02077BD0
	b _02077C04
_02077BEC:
	ldr r1, [r2]
	subs r0, r0, #4
	swp r1, r1, [r3]
	add r3, r3, #4
	str r1, [r2], #4
	bne _02077BEC
_02077C04:
	add sb, sb, r8
	sub sl, sl, r8
	cmp sb, sl
	ble _02077B7C
_02077C14:
	mov r2, r6
	mov r3, sl
	mov r0, r8
	tst r0, #3
	beq _02077C44
_02077C28:
	ldrb r1, [r2]
	subs r0, r0, #1
	swpb r1, r1, [r3]
	add r3, r3, #1
	strb r1, [r2], #1
	bne _02077C28
	b _02077C5C
_02077C44:
	ldr r1, [r2]
	subs r0, r0, #4
	swp r1, r1, [r3]
	add r3, r3, #4
	str r1, [r2], #4
	bne _02077C44
_02077C5C:
	sub r2, sl, r6
	sub r3, r7, sl
	cmp r2, r3
	ble _02077C90
	sub r2, sl, r8
	cmp r6, r2
	strlt r6, [r4], #4
	strlt r2, [r4], #4
	add r2, sl, r8
	cmp r2, r7
	strlt r2, [r4], #4
	strlt r7, [r4], #4
	b _02077AA4
_02077C90:
	add r2, sl, r8
	cmp r2, r7
	strlt r2, [r4], #4
	strlt r7, [r4], #4
	sub r2, sl, r8
	cmp r6, r2
	strlt r6, [r4], #4
	strlt r2, [r4], #4
	b _02077AA4
_02077CB4:
	add sp, sp, #4
	sub r4, r4, #4
	cmp r4, sp
	ldreq r0, [sp]
	addeq r0, r0, #4
	addeq sp, sp, r0
_02077CCC:
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end MATH_QSort

_02077CD4: .word 0x5A827999
_02077CD8: .word 0x6ED9EBA1
_02077CDC: .word 0x8F1BBCDC
_02077CE0: .word 0xCA62C1D6

	arm_func_start MATHi_SHA1ProcessBlock
MATHi_SHA1ProcessBlock: ; 0x02077CE4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov fp, r0
	sub sp, sp, #0x40
	mov ip, sp
	mvn r3, #0xff00
	add r8, fp, #0x14
	mov r1, ip
	ldmia r8!, {r4, r5, r6, r7}
	mov sb, #0x10
_02077D08:
	eor r2, r4, r4, ror #16
	and r2, r3, r2, lsr #8
	eor r4, r2, r4, ror #8
	eor r2, r5, r5, ror #16
	and r2, r3, r2, lsr #8
	eor r5, r2, r5, ror #8
	eor r2, r6, r6, ror #16
	and r2, r3, r2, lsr #8
	eor r6, r2, r6, ror #8
	eor r2, r7, r7, ror #16
	and r2, r3, r2, lsr #8
	eor r7, r2, r7, ror #8
	stmia r1!, {r4, r5, r6, r7}
	subs sb, sb, #4
	ldmneia r8!, {r4, r5, r6, r7}
	bne _02077D08
	ldmia fp, {r4, r5, r6, r7, r8}
	ldr ip, _02077CD4 ; =0x5A827999
	mov sb, #0
_02077D54:
	and sl, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr sl, sl, lr
	add sl, sl, ip
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x10
	bne _02077D54
_02077D9C:
	and sl, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr sl, sl, lr
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x14
	bne _02077D9C
	ldr ip, _02077CD8 ; =0x6ED9EBA1
_02077E30:
	eor sl, r5, r6
	eor sl, sl, r7
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x28
	bne _02077E30
	ldr ip, _02077CDC ; =0x8F1BBCDC
_02077EBC:
	and sl, r5, r6
	and lr, r5, r7
	orr sl, sl, lr
	and lr, r6, r7
	orr sl, sl, lr
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x3c
	bne _02077EBC
	ldr ip, _02077CE0 ; =0xCA62C1D6
_02077F54:
	eor sl, r5, r6
	eor sl, sl, r7
	add sl, sl, ip
	sub r2, sb, #0x10
	and r2, r2, #0xf
	sub lr, sb, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, sb, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, sb, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, sb, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, sb, #0xf
	ldr lr, [sp, lr, lsl #2]
	add sl, sl, r8
	add sl, sl, lr
	add sl, sl, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, sl
	add sb, sb, #1
	cmp sb, #0x50
	bne _02077F54
	ldmia fp, {r1, r2, r3, sb, sl}
	add r1, r1, r4
	add r2, r2, r5
	add r3, r3, r6
	add sb, sb, r7
	add sl, sl, r8
	stmia fp, {r1, r2, r3, sb, sl}
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	arm_func_end MATHi_SHA1ProcessBlock
