	.include "asm/macros.inc"
	.include "math.inc"
	.include "global.inc"

	.text

	thumb_func_start ProcessBlock
ProcessBlock: ; 0x02076FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb0
	str r0, [sp]
	ldr r1, [sp]
	ldr r2, [sp]
	ldr r3, [sp]
	ldr r4, [sp]
	mov r5, #0
	str r4, [sp, #0x14]
	add r4, #0x18
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #8]
	ldr r3, [r3, #0xc]
	ldr r7, _02077318 ; =0x0209B5F0
	str r4, [sp, #0x14]
	str r5, [sp, #0x10]
_0207700A:
	ldr r5, [r7]
	str r5, [sp, #0x70]
	ldr r5, [r4]
	str r5, [sp, #0x18]
	add r5, r1, #0
	and r5, r2
	str r5, [sp, #0x1c]
	mvn r5, r1
	add r6, r5, #0
	ldr r5, [sp, #0x1c]
	and r6, r3
	orr r5, r6
	add r5, r0, r5
	ldr r0, [sp, #0x18]
	add r5, r0, r5
	ldr r0, [sp, #0x70]
	add r0, r0, r5
	lsl r5, r0, #7
	lsr r0, r0, #0x19
	orr r0, r5
	ldr r5, [r7, #4]
	add r0, r1, r0
	str r5, [sp, #0x74]
	ldr r5, [r4, #4]
	str r5, [sp, #0x20]
	add r5, r0, #0
	and r5, r1
	str r5, [sp, #0x24]
	mvn r5, r0
	add r6, r5, #0
	ldr r5, [sp, #0x24]
	and r6, r2
	orr r5, r6
	add r5, r3, r5
	ldr r3, [sp, #0x20]
	add r5, r3, r5
	ldr r3, [sp, #0x74]
	add r3, r3, r5
	lsl r5, r3, #0xc
	lsr r3, r3, #0x14
	orr r3, r5
	ldr r5, [r7, #8]
	add r3, r0, r3
	str r5, [sp, #0x78]
	ldr r5, [r4, #8]
	str r5, [sp, #0x28]
	add r5, r3, #0
	and r5, r0
	str r5, [sp, #0x2c]
	mvn r5, r3
	add r6, r5, #0
	ldr r5, [sp, #0x2c]
	and r6, r1
	orr r5, r6
	add r5, r2, r5
	ldr r2, [sp, #0x28]
	add r6, r4, #0
	add r5, r2, r5
	ldr r2, [sp, #0x78]
	add r4, #0x10
	add r2, r2, r5
	lsl r5, r2, #0x11
	lsr r2, r2, #0xf
	orr r2, r5
	add r5, r7, #0
	ldr r5, [r5, #0xc]
	add r2, r3, r2
	str r5, [sp, #0x7c]
	ldr r5, [r6, #0xc]
	add r7, #0x10
	str r5, [sp, #0x30]
	add r5, r2, #0
	and r5, r3
	str r5, [sp, #0x34]
	mvn r5, r2
	add r6, r5, #0
	ldr r5, [sp, #0x34]
	and r6, r0
	orr r5, r6
	add r5, r1, r5
	ldr r1, [sp, #0x30]
	add r5, r1, r5
	ldr r1, [sp, #0x7c]
	add r1, r1, r5
	lsl r5, r1, #0x16
	lsr r1, r1, #0xa
	orr r1, r5
	ldr r5, [sp, #0x10]
	add r1, r2, r1
	add r5, r5, #1
	str r5, [sp, #0x10]
	cmp r5, #4
	blt _0207700A
	mov r4, #0
	ldr r6, _0207731C ; =0x0209B530
	str r4, [sp, #4]
_020770CA:
	ldr r4, [r7]
	str r4, [sp, #0x80]
	ldr r4, [r6]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r2, #0
	str r4, [sp, #0x38]
	add r4, r1, #0
	and r4, r3
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x3c]
	bic r5, r3
	orr r4, r5
	add r4, r0, r4
	ldr r0, [sp, #0x38]
	add r4, r0, r4
	ldr r0, [sp, #0x80]
	add r0, r0, r4
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	ldr r4, [r7, #4]
	add r0, r1, r0
	str r4, [sp, #0x84]
	ldr r4, [r6, #4]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r1, #0
	str r4, [sp, #0x40]
	add r4, r0, #0
	and r4, r2
	str r4, [sp, #0x44]
	ldr r4, [sp, #0x44]
	bic r5, r2
	orr r4, r5
	add r4, r3, r4
	ldr r3, [sp, #0x40]
	add r4, r3, r4
	ldr r3, [sp, #0x84]
	add r3, r3, r4
	lsl r4, r3, #9
	lsr r3, r3, #0x17
	orr r3, r4
	ldr r4, [r7, #8]
	add r3, r0, r3
	str r4, [sp, #0x88]
	ldr r4, [r6, #8]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r0, #0
	str r4, [sp, #0x48]
	add r4, r3, #0
	and r4, r1
	str r4, [sp, #0x4c]
	ldr r4, [sp, #0x4c]
	bic r5, r1
	orr r4, r5
	add r4, r2, r4
	ldr r2, [sp, #0x48]
	add r5, r6, #0
	add r4, r2, r4
	ldr r2, [sp, #0x88]
	add r6, #0x10
	add r2, r2, r4
	lsl r4, r2, #0xe
	lsr r2, r2, #0x12
	orr r2, r4
	add r4, r7, #0
	ldr r4, [r4, #0xc]
	add r2, r3, r2
	str r4, [sp, #0x8c]
	ldr r4, [r5, #0xc]
	add r7, #0x10
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r3, #0
	str r4, [sp, #0x50]
	add r4, r2, #0
	and r4, r0
	str r4, [sp, #0x54]
	ldr r4, [sp, #0x54]
	bic r5, r0
	orr r4, r5
	add r4, r1, r4
	ldr r1, [sp, #0x50]
	add r4, r1, r4
	ldr r1, [sp, #0x8c]
	add r1, r1, r4
	lsl r4, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r4
	ldr r4, [sp, #4]
	add r1, r2, r1
	add r4, r4, #1
	str r4, [sp, #4]
	cmp r4, #4
	blt _020770CA
	mov r4, #0
	str r4, [sp, #8]
_02077198:
	ldr r4, [r7]
	str r4, [sp, #0x90]
	ldr r4, [r6]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	str r4, [sp, #0x58]
	add r4, r1, #0
	eor r4, r2
	eor r4, r3
	add r4, r0, r4
	ldr r0, [sp, #0x58]
	add r4, r0, r4
	ldr r0, [sp, #0x90]
	add r0, r0, r4
	lsl r4, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r4
	ldr r4, [r7, #4]
	add r0, r1, r0
	str r4, [sp, #0x94]
	ldr r4, [r6, #4]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	str r4, [sp, #0x5c]
	add r4, r0, #0
	eor r4, r1
	eor r4, r2
	add r4, r3, r4
	ldr r3, [sp, #0x5c]
	add r4, r3, r4
	ldr r3, [sp, #0x94]
	add r3, r3, r4
	lsl r4, r3, #0xb
	lsr r3, r3, #0x15
	orr r3, r4
	ldr r4, [r7, #8]
	add r3, r0, r3
	str r4, [sp, #0x98]
	ldr r4, [r6, #8]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r6, #0
	str r4, [sp, #0x60]
	add r4, r3, #0
	eor r4, r0
	eor r4, r1
	add r4, r2, r4
	ldr r2, [sp, #0x60]
	add r6, #0x10
	add r4, r2, r4
	ldr r2, [sp, #0x98]
	add r2, r2, r4
	lsl r4, r2, #0x10
	lsr r2, r2, #0x10
	orr r2, r4
	add r4, r7, #0
	ldr r4, [r4, #0xc]
	add r2, r3, r2
	str r4, [sp, #0x9c]
	ldr r4, [r5, #0xc]
	add r7, #0x10
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	str r4, [sp, #0x64]
	add r4, r2, #0
	eor r4, r3
	eor r4, r0
	add r4, r1, r4
	ldr r1, [sp, #0x64]
	add r4, r1, r4
	ldr r1, [sp, #0x9c]
	add r1, r1, r4
	lsl r4, r1, #0x17
	lsr r1, r1, #9
	orr r1, r4
	ldr r4, [sp, #8]
	add r1, r2, r1
	add r4, r4, #1
	str r4, [sp, #8]
	cmp r4, #4
	blt _02077198
	mov r4, #0
	str r4, [sp, #0xc]
_02077246:
	ldr r4, [r7]
	str r4, [sp, #0xa0]
	ldr r4, [r6]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	str r4, [sp, #0x68]
	mvn r4, r3
	orr r4, r1
	eor r4, r2
	add r4, r0, r4
	ldr r0, [sp, #0x68]
	add r4, r0, r4
	ldr r0, [sp, #0xa0]
	add r0, r0, r4
	lsl r4, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r4
	ldr r4, [r7, #4]
	add r0, r1, r0
	str r4, [sp, #0xa4]
	ldr r4, [r6, #4]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	str r4, [sp, #0x6c]
	mvn r4, r2
	orr r4, r0
	eor r4, r1
	add r4, r3, r4
	ldr r3, [sp, #0x6c]
	add r4, r3, r4
	ldr r3, [sp, #0xa4]
	add r3, r3, r4
	lsl r4, r3, #0xa
	lsr r3, r3, #0x16
	orr r3, r4
	ldr r4, [r7, #8]
	add r3, r0, r3
	str r4, [sp, #0xa8]
	ldr r4, [r6, #8]
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	add r5, r6, #0
	mov lr, r4
	mvn r4, r1
	orr r4, r3
	eor r4, r0
	add r2, r2, r4
	mov r4, lr
	add r4, r4, r2
	ldr r2, [sp, #0xa8]
	add r6, #0x10
	add r2, r2, r4
	lsl r4, r2, #0xf
	lsr r2, r2, #0x11
	orr r2, r4
	add r4, r7, #0
	ldr r4, [r4, #0xc]
	add r2, r3, r2
	str r4, [sp, #0xac]
	ldr r4, [r5, #0xc]
	add r7, #0x10
	lsl r5, r4, #2
	ldr r4, [sp, #0x14]
	ldr r4, [r4, r5]
	mov ip, r4
	mvn r4, r0
	orr r4, r2
	eor r4, r3
	add r1, r1, r4
	mov r4, ip
	add r4, r4, r1
	ldr r1, [sp, #0xac]
	add r1, r1, r4
	lsl r4, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r4
	ldr r4, [sp, #0xc]
	add r1, r2, r1
	add r4, r4, #1
	str r4, [sp, #0xc]
	cmp r4, #4
	blt _02077246
	ldr r4, [sp]
	ldr r4, [r4]
	add r4, r4, r0
	ldr r0, [sp]
	str r4, [r0]
	ldr r0, [r0, #4]
	add r1, r0, r1
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	add r1, r0, r2
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r0, r3
	ldr r0, [sp]
	str r1, [r0, #0xc]
	add sp, #0xb0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077318: .word 0x0209B5F0
_0207731C: .word 0x0209B530
	thumb_func_end ProcessBlock

	thumb_func_start MATH_MD5Init
MATH_MD5Init: ; 0x02077320
	ldr r1, _02077338 ; =0x67452301
	mov r2, #0
	str r1, [r0]
	ldr r1, _0207733C ; =0xEFCDAB89
	str r2, [r0, #0x10]
	str r1, [r0, #4]
	ldr r1, _02077340 ; =0x98BADCFE
	str r2, [r0, #0x14]
	str r1, [r0, #8]
	ldr r1, _02077344 ; =0x10325476
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_02077338: .word 0x67452301
_0207733C: .word 0xEFCDAB89
_02077340: .word 0x98BADCFE
_02077344: .word 0x10325476
	thumb_func_end MATH_MD5Init

	thumb_func_start MATH_MD5Update
MATH_MD5Update: ; 0x02077348
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r7, r1, #0
	mov r0, #0x3f
	add r1, r4, #0
	and r1, r0
	add r0, r5, #0
	add r0, #0x10
	add r3, r2, #0
	add r4, r4, r3
	ldr r6, [r0, #4]
	ldr r3, _020773D8 ; =0x00000000
	str r2, [sp]
	adc r6, r3
	str r6, [r0, #4]
	mov r0, #0x40
	sub r6, r0, r1
	add r0, r2, #0
	str r4, [r5, #0x10]
	cmp r6, r0
	bls _02077384
	cmp r0, #0
	beq _020773D6
	add r5, #0x18
	add r0, r7, #0
	add r1, r5, r1
	blx MI_CpuCopy8
	pop {r3, r4, r5, r6, r7, pc}
_02077384:
	add r2, r5, #0
	add r2, #0x18
	add r1, r2, r1
	add r0, r7, #0
	add r2, r6, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl ProcessBlock
	ldr r0, [sp]
	add r4, r7, r6
	sub r0, r0, r6
	lsr r6, r0, #6
	str r0, [sp]
	cmp r6, #0
	ble _020773C2
	add r7, r5, #0
	add r7, #0x18
_020773AA:
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x40
	blx MI_CpuCopy8
	add r0, r5, #0
	add r4, #0x40
	bl ProcessBlock
	sub r6, r6, #1
	cmp r6, #0
	bgt _020773AA
_020773C2:
	ldr r0, [sp]
	mov r1, #0x3f
	add r2, r0, #0
	and r2, r1
	beq _020773D6
	add r5, #0x18
	add r0, r4, #0
	add r1, r5, #0
	blx MI_CpuCopy8
_020773D6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020773D8: .word 0x00000000
	thumb_func_end MATH_MD5Update

	thumb_func_start MATH_MD5GetHash
MATH_MD5GetHash: ; 0x020773DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r1, [sp]
	lsr r1, r2, #0x1d
	lsl r6, r3, #3
	orr r6, r1
	lsl r7, r2, #3
	ldr r1, _02077450 ; =0x0209B52C
	mov r2, #1
	bl MATH_MD5Update
	ldr r2, [r5, #0x10]
	mov r0, #0x3f
	add r4, r2, #0
	and r4, r0
	mov r0, #0x40
	sub r2, r0, r4
	mov r1, #0
	cmp r2, #8
	bhs _0207741C
	add r0, r5, #0
	add r0, #0x18
	add r0, r0, r4
	add r4, r1, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl ProcessBlock
	mov r2, #0x40
_0207741C:
	cmp r2, #8
	bls _0207742E
	add r0, r5, #0
	add r0, #0x18
	add r0, r0, r4
	mov r1, #0
	sub r2, #8
	blx MI_CpuFill8
_0207742E:
	add r0, r5, #0
	str r7, [r5, #0x50]
	str r6, [r5, #0x54]
	bl ProcessBlock
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0x10
	blx MI_CpuCopy8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x58
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077450: .word 0x0209B52C
	thumb_func_end MATH_MD5GetHash