	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02076FB0
sub_02076FB0: ; 0x02076FB0
	ldr r1, _02076FDC ; =0x55555555
	lsr r2, r0, #1
	and r1, r2
	sub r1, r0, r1
	add r2, r1, #0
	ldr r0, _02076FE0 ; =0x33333333
	lsr r1, r1, #2
	and r2, r0
	and r0, r1
	add r1, r2, r0
	lsr r0, r1, #4
	add r1, r1, r0
	ldr r0, _02076FE4 ; =0x0F0F0F0F
	and r1, r0
	lsr r0, r1, #8
	add r1, r1, r0
	lsr r0, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	nop
_02076FDC: .word 0x55555555
_02076FE0: .word 0x33333333
_02076FE4: .word 0x0F0F0F0F
	thumb_func_end sub_02076FB0

	thumb_func_start sub_02076FE8
sub_02076FE8: ; 0x02076FE8
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
	thumb_func_end sub_02076FE8

	thumb_func_start sub_02077320
sub_02077320: ; 0x02077320
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
	thumb_func_end sub_02077320

	thumb_func_start sub_02077348
sub_02077348: ; 0x02077348
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
	bl sub_02076FE8
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
	bl sub_02076FE8
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
	thumb_func_end sub_02077348

	thumb_func_start sub_020773DC
sub_020773DC: ; 0x020773DC
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
	bl sub_02077348
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
	bl sub_02076FE8
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
	bl sub_02076FE8
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
	thumb_func_end sub_020773DC

	thumb_func_start sub_02077454
sub_02077454: ; 0x02077454
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r5, #0x14
	ldr r6, [r5, #0x18]
	mov r1, #0
	ldr r4, [r5, #0x38]
	str r1, [r5, #0x18]
	str r1, [r5, #0x38]
	blx sub_02077CE4
	str r6, [r5, #0x18]
	str r4, [r5, #0x38]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02077454

	thumb_func_start sub_02077470
sub_02077470: ; 0x02077470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r5, r2, #0
	beq _020774E0
	str r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0x14
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #0x54
_02077496:
	ldr r1, [r6, #0x54]
	mov r0, #0x40
	sub r4, r0, r1
	cmp r4, r5
	bls _020774A2
	add r4, r5, #0
_020774A2:
	ldr r0, [sp, #4]
	add r2, r4, #0
	add r0, r0, r1
	ldr r1, [sp]
	blx MI_CpuFill8
	ldr r0, [r7]
	sub r5, r5, r4
	add r0, r0, r4
	str r0, [r7]
	cmp r0, #0x40
	blo _020774DC
	ldr r1, _020774E4 ; =0x0209B6F0
	add r0, r6, #0
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0]
	bne _020774DC
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [r0]
_020774DC:
	cmp r5, #0
	bne _02077496
_020774E0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020774E4: .word 0x0209B6F0
	thumb_func_end sub_02077470

	thumb_func_start sub_020774E8
sub_020774E8: ; 0x020774E8
	ldr r1, _02077500 ; =0x0214C0A8
	cmp r0, #0
	ldr r2, [r1]
	str r0, [r1]
	beq _020774F6
	ldr r1, _02077504 ; =sub_02077454
	b _020774F8
_020774F6:
	ldr r1, _02077508 ; =sub_02077CE4
_020774F8:
	ldr r0, _0207750C ; =0x0209B6F0
	str r1, [r0]
	add r0, r2, #0
	bx lr
	.align 2, 0
_02077500: .word 0x0214C0A8
_02077504: .word sub_02077454
_02077508: .word sub_02077CE4
_0207750C: .word 0x0209B6F0
	thumb_func_end sub_020774E8

	thumb_func_start sub_02077510
sub_02077510: ; 0x02077510
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x54]
	ldr r1, _02077530 ; =0x67452301
	str r1, [r0]
	ldr r1, _02077534 ; =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _02077538 ; =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _0207753C ; =0x10325476
	str r1, [r0, #0xc]
	ldr r1, _02077540 ; =0xC3D2E1F0
	str r1, [r0, #0x10]
	bx lr
	nop
_02077530: .word 0x67452301
_02077534: .word 0xEFCDAB89
_02077538: .word 0x98BADCFE
_0207753C: .word 0x10325476
_02077540: .word 0xC3D2E1F0
	thumb_func_end sub_02077510

	thumb_func_start sub_02077544
sub_02077544: ; 0x02077544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	beq _020775BE
	str r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x14
	str r0, [sp]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0x54
	str r0, [sp, #4]
_0207756E:
	ldr r1, [r6, #0x54]
	mov r0, #0x40
	sub r4, r0, r1
	cmp r4, r5
	bls _0207757A
	add r4, r5, #0
_0207757A:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r2, r1
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	add r7, r7, r4
	ldr r0, [r0]
	sub r5, r5, r4
	add r1, r0, r4
	ldr r0, [sp, #4]
	cmp r1, #0x40
	str r1, [r0]
	blo _020775BA
	ldr r1, _020775C4 ; =0x0209B6F0
	add r0, r6, #0
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0]
	bne _020775BA
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [r0]
_020775BA:
	cmp r5, #0
	bne _0207756E
_020775BE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020775C4: .word 0x0209B6F0
	thumb_func_end sub_02077544

	thumb_func_start sub_020775C8
sub_020775C8: ; 0x020775C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r1, [sp]
	ldr r7, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsl r2, r7, #9
	lsl r1, r1, #3
	add r1, r2, r1
	mov r2, #0xff
	lsl r3, r1, #0x18
	lsl r2, r2, #0x18
	and r3, r2
	mov ip, r3
	lsl r5, r1, #8
	lsr r3, r2, #8
	and r5, r3
	lsr r3, r1, #0x18
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	lsr r3, r1, #8
	lsr r1, r2, #0x10
	and r1, r3
	orr r1, r6
	add r3, r5, #0
	orr r3, r1
	mov r1, ip
	orr r1, r3
	str r1, [sp, #8]
	ldr r1, [r4, #0x5c]
	lsl r3, r1, #9
	lsr r1, r7, #0x17
	add r1, r3, r1
	lsl r3, r1, #0x18
	add r6, r3, #0
	lsl r5, r1, #8
	lsr r3, r2, #8
	and r5, r3
	lsr r3, r1, #0x18
	and r6, r2
	lsl r3, r3, #0x18
	lsr r1, r1, #8
	lsr r2, r2, #0x10
	and r1, r2
	lsr r3, r3, #0x18
	orr r1, r3
	orr r1, r5
	orr r1, r6
	str r1, [sp, #4]
	ldr r1, _02077718 ; =0x02098830
	mov r2, #1
	bl sub_02077544
	ldr r1, [r4, #0x54]
	mov r0, #0x40
	sub r2, r0, r1
	cmp r2, #8
	bhs _02077644
	ldr r1, _0207771C ; =0x02098831
	add r0, r4, #0
	bl sub_02077544
_02077644:
	ldr r3, [r4, #0x54]
	mov r2, #0x38
	add r0, r4, #0
	mov r1, #0
	sub r2, r2, r3
	bl sub_02077470
	add r0, r4, #0
	add r1, sp, #4
	mov r2, #8
	bl sub_02077544
	ldr r5, [r4]
	mov r0, #0xff
	lsl r1, r5, #0x18
	lsl r0, r0, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #4]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #8]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4, #4]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #0xc]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4, #8]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	ldr r5, [r4, #0x10]
	orr r1, r3
	str r1, [r4, #0xc]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	and r3, r0
	lsl r1, r1, #0x18
	lsr r5, r5, #8
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	and r0, r5
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r4, #0x10]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x14
	blx MI_CpuCopy8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02077718: .word 0x02098830
_0207771C: .word 0x02098831
	thumb_func_end sub_020775C8

	thumb_func_start sub_02077720
sub_02077720: ; 0x02077720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r7, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, r7, #0
	bl sub_02077510
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02077544
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020775C8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077720

	thumb_func_start sub_02077748
sub_02077748: ; 0x02077748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	ldr r5, _0207778C ; =0x0209883C
	add r4, sp, #8
	add r7, r0, #0
	mov ip, r1
	ldmia r5!, {r0, r1}
	add r6, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r1, ip
	str r0, [r4]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	add r0, sp, #0x24
	str r0, [sp, #0x14]
	ldr r0, _02077790 ; =sub_02077510
	str r0, [sp, #0x18]
	ldr r0, _02077794 ; =sub_02077544
	str r0, [sp, #0x1c]
	ldr r0, _02077798 ; =sub_020775C8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xb0]
	str r0, [sp]
	add r0, r7, #0
	str r6, [sp, #4]
	bl sub_0207779C
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207778C: .word 0x0209883C
_02077790: .word sub_02077510
_02077794: .word sub_02077544
_02077798: .word sub_020775C8
	thumb_func_end sub_02077748

	thumb_func_start sub_0207779C
sub_0207779C: ; 0x0207779C
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
	thumb_func_end sub_0207779C

	thumb_func_start sub_02077884
sub_02077884: ; 0x02077884
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
	thumb_func_end sub_02077884

	thumb_func_start sub_020778B4
sub_020778B4: ; 0x020778B4
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
	thumb_func_end sub_020778B4

	thumb_func_start sub_020778D8
sub_020778D8: ; 0x020778D8
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
	thumb_func_end sub_020778D8

	thumb_func_start sub_02077908
sub_02077908: ; 0x02077908
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
	thumb_func_end sub_02077908

	thumb_func_start sub_02077938
sub_02077938: ; 0x02077938
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
	thumb_func_end sub_02077938

	thumb_func_start sub_02077960
sub_02077960: ; 0x02077960
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
	thumb_func_end sub_02077960

	thumb_func_start sub_02077988
sub_02077988: ; 0x02077988
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
	thumb_func_end sub_02077988

	thumb_func_start sub_020779B8
sub_020779B8: ; 0x020779B8
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
	thumb_func_end sub_020779B8

	thumb_func_start sub_020779E0
sub_020779E0: ; 0x020779E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r3, r2, #0
	mov r1, #0
	add r4, sp, #0
	strb r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl sub_020778B4
	ldrb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020779E0

	thumb_func_start sub_020779F8
sub_020779F8: ; 0x020779F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r3, r2, #0
	mov r1, #0
	add r4, sp, #0
	strh r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl sub_02077960
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020779F8

	thumb_func_start sub_02077A10
sub_02077A10: ; 0x02077A10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02077A28 ; =0x0000FFFF
	add r4, sp, #0
	add r3, r2, #0
	strh r1, [r4]
	add r1, sp, #0
	add r2, r5, #0
	bl sub_02077938
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02077A28: .word 0x0000FFFF
	thumb_func_end sub_02077A10

	thumb_func_start sub_02077A2C
sub_02077A2C: ; 0x02077A2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	str r1, [sp]
	add r1, sp, #0
	add r2, r4, #0
	bl sub_020779B8
	ldr r0, [sp]
	mvn r0, r0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02077A4C:
	.byte 0xF0, 0x4F, 0x2D, 0xE9
	.byte 0x01, 0x00, 0x51, 0xE3, 0x9C, 0x00, 0x00, 0xDA, 0x24, 0x40, 0x9D, 0xE5, 0x03, 0xB0, 0xA0, 0xE1
	.byte 0x02, 0x80, 0xA0, 0xE1, 0x00, 0x00, 0x54, 0xE3, 0x05, 0x00, 0x00, 0x1A, 0x11, 0x2F, 0x6F, 0xE1
	.byte 0x20, 0x20, 0x62, 0xE2, 0x82, 0x21, 0xA0, 0xE1, 0x02, 0xD0, 0x4D, 0xE0, 0x0D, 0x40, 0xA0, 0xE1
	.byte 0x04, 0x20, 0x2D, 0xE5, 0x01, 0x10, 0x41, 0xE2, 0x91, 0x08, 0x21, 0xE0, 0x04, 0x50, 0xA0, 0xE1
	.byte 0x04, 0x00, 0x84, 0xE4, 0x04, 0x10, 0x84, 0xE4, 0x18, 0x2F, 0x6F, 0xE1, 0x20, 0x20, 0x62, 0xE2
	.byte 0x04, 0x20, 0x2D, 0xE5, 0x05, 0x00, 0x54, 0xE1, 0x81, 0x00, 0x00, 0x0A, 0x04, 0x70, 0x14, 0xE5
	.byte 0x08, 0x60, 0x34, 0xE5, 0x06, 0x20, 0x47, 0xE0, 0x08, 0x00, 0x52, 0xE1, 0x15, 0x00, 0x00, 0x1A
	.byte 0x06, 0x00, 0xA0, 0xE1, 0x07, 0x10, 0xA0, 0xE1, 0x3B, 0xFF, 0x2F, 0xE1, 0x00, 0x00, 0x50, 0xE3
	.byte 0xF3, 0xFF, 0xFF, 0xDA, 0x08, 0x00, 0xA0, 0xE1, 0x03, 0x00, 0x10, 0xE3, 0x06, 0x00, 0x00, 0x0A
	.byte 0x00, 0x10, 0xD6, 0xE5, 0x01, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x47, 0xE1, 0x01, 0x70, 0x87, 0xE2
	.byte 0x01, 0x10, 0xC6, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A, 0xE9, 0xFF, 0xFF, 0xEA, 0x00, 0x10, 0x96, 0xE5
	.byte 0x04, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x07, 0xE1, 0x04, 0x70, 0x87, 0xE2, 0x04, 0x10, 0x86, 0xE4
	.byte 0xF9, 0xFF, 0xFF, 0x1A, 0xE2, 0xFF, 0xFF, 0xEA, 0x00, 0x30, 0x9D, 0xE5, 0x06, 0x20, 0x47, 0xE0
	.byte 0x32, 0x23, 0xA0, 0xE1, 0x92, 0x68, 0x22, 0xE0, 0x06, 0x30, 0xA0, 0xE1, 0x08, 0x00, 0xA0, 0xE1
	.byte 0x02, 0x20, 0xA0, 0xE1, 0x03, 0x00, 0x10, 0xE3, 0x06, 0x00, 0x00, 0x0A, 0x00, 0x10, 0xD2, 0xE5
	.byte 0x01, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x43, 0xE1, 0x01, 0x30, 0x83, 0xE2, 0x01, 0x10, 0xC2, 0xE4
	.byte 0xF9, 0xFF, 0xFF, 0x1A, 0x05, 0x00, 0x00, 0xEA, 0x00, 0x10, 0x92, 0xE5, 0x04, 0x00, 0x50, 0xE2
	.byte 0x91, 0x10, 0x03, 0xE1, 0x04, 0x30, 0x83, 0xE2, 0x04, 0x10, 0x82, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A
	.byte 0x06, 0x90, 0xA0, 0xE1, 0x07, 0xA0, 0xA0, 0xE1, 0x08, 0x90, 0x89, 0xE0, 0x07, 0x00, 0x59, 0xE1
	.byte 0x05, 0x00, 0x00, 0xAA, 0x06, 0x10, 0xA0, 0xE1, 0x09, 0x00, 0xA0, 0xE1, 0x3B, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x00, 0x50, 0xE3, 0x08, 0x90, 0x89, 0xB0, 0xF7, 0xFF, 0xFF, 0xBA, 0x06, 0x10, 0xA0, 0xE1
	.byte 0x0A, 0x00, 0xA0, 0xE1, 0x3B, 0xFF, 0x2F, 0xE1, 0x00, 0x00, 0x50, 0xE3, 0x08, 0xA0, 0x4A, 0xC0
	.byte 0xF9, 0xFF, 0xFF, 0xCA, 0x0A, 0x00, 0x59, 0xE1, 0x15, 0x00, 0x00, 0xAA, 0x09, 0x20, 0xA0, 0xE1
	.byte 0x0A, 0x30, 0xA0, 0xE1, 0x08, 0x00, 0xA0, 0xE1, 0x03, 0x00, 0x10, 0xE3, 0x06, 0x00, 0x00, 0x0A
	.byte 0x00, 0x10, 0xD2, 0xE5, 0x01, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x43, 0xE1, 0x01, 0x30, 0x83, 0xE2
	.byte 0x01, 0x10, 0xC2, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A, 0x05, 0x00, 0x00, 0xEA, 0x00, 0x10, 0x92, 0xE5
	.byte 0x04, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x03, 0xE1, 0x04, 0x30, 0x83, 0xE2, 0x04, 0x10, 0x82, 0xE4
	.byte 0xF9, 0xFF, 0xFF, 0x1A, 0x08, 0x90, 0x89, 0xE0, 0x08, 0xA0, 0x4A, 0xE0, 0x0A, 0x00, 0x59, 0xE1
	.byte 0xD9, 0xFF, 0xFF, 0xDA, 0x06, 0x20, 0xA0, 0xE1, 0x0A, 0x30, 0xA0, 0xE1, 0x08, 0x00, 0xA0, 0xE1
	.byte 0x03, 0x00, 0x10, 0xE3, 0x06, 0x00, 0x00, 0x0A, 0x00, 0x10, 0xD2, 0xE5, 0x01, 0x00, 0x50, 0xE2
	.byte 0x91, 0x10, 0x43, 0xE1, 0x01, 0x30, 0x83, 0xE2, 0x01, 0x10, 0xC2, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A
	.byte 0x05, 0x00, 0x00, 0xEA, 0x00, 0x10, 0x92, 0xE5, 0x04, 0x00, 0x50, 0xE2, 0x91, 0x10, 0x03, 0xE1
	.byte 0x04, 0x30, 0x83, 0xE2, 0x04, 0x10, 0x82, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A, 0x06, 0x20, 0x4A, 0xE0
	.byte 0x0A, 0x30, 0x47, 0xE0, 0x03, 0x00, 0x52, 0xE1, 0x08, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x4A, 0xE0
	.byte 0x02, 0x00, 0x56, 0xE1, 0x04, 0x60, 0x84, 0xB4, 0x04, 0x20, 0x84, 0xB4, 0x08, 0x20, 0x8A, 0xE0
	.byte 0x07, 0x00, 0x52, 0xE1, 0x04, 0x20, 0x84, 0xB4, 0x04, 0x70, 0x84, 0xB4, 0x84, 0xFF, 0xFF, 0xEA
	.byte 0x08, 0x20, 0x8A, 0xE0, 0x07, 0x00, 0x52, 0xE1, 0x04, 0x20, 0x84, 0xB4, 0x04, 0x70, 0x84, 0xB4
	.byte 0x08, 0x20, 0x4A, 0xE0, 0x02, 0x00, 0x56, 0xE1, 0x04, 0x60, 0x84, 0xB4, 0x04, 0x20, 0x84, 0xB4
	.byte 0x7B, 0xFF, 0xFF, 0xEA, 0x04, 0xD0, 0x8D, 0xE2, 0x04, 0x40, 0x44, 0xE2, 0x0D, 0x00, 0x54, 0xE1
	.byte 0x00, 0x00, 0x9D, 0x05, 0x04, 0x00, 0x80, 0x02, 0x00, 0xD0, 0x8D, 0x00, 0xF0, 0x4F, 0xBD, 0xE8
	.byte 0x1E, 0xFF, 0x2F, 0xE1
	thumb_func_end sub_02077A2C

