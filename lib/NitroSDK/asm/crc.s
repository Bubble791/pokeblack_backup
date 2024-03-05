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