	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207C160
sub_0207C160: ; 0x0207C160
	push {r3, lr}
	ldr r1, _0207C180 ; =0x04004004
	mov r2, #1
	ldrh r1, [r1]
	and r1, r2
	cmp r1, #1
	bne _0207C170
	mov r2, #2
_0207C170:
	lsl r0, r2
	cmp r0, #0x10
	bls _0207C17C
	sub r0, #0x10
	blx sub_0207C154
_0207C17C:
	pop {r3, pc}
	nop
_0207C180: .word 0x04004004
	thumb_func_end sub_0207C160

	thumb_func_start sub_0207C184
sub_0207C184: ; 0x0207C184
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	blx sub_0207C0E4
	ldr r1, _0207C1DC ; =0x04000208
	str r0, [sp]
	mov r0, #1
	ldrh r7, [r1]
	cmp r4, #0
	strh r0, [r1]
	beq _0207C1A8
	ldr r3, _0207C1E0 ; =0x02FE0000
	ldr r0, _0207C1E4 ; =0x00003FF8
	mvn r1, r5
	ldr r2, [r3, r0]
	and r1, r2
	str r1, [r3, r0]
_0207C1A8:
	ldr r4, _0207C1E0 ; =0x02FE0000
	ldr r6, _0207C1E4 ; =0x00003FF8
	ldr r0, [r4, r6]
	tst r0, r5
	bne _0207C1C4
_0207C1B2:
	blx sub_0207C7E8
	blx sub_0207C0D0
	blx sub_0207C0E4
	ldr r0, [r4, r6]
	tst r0, r5
	beq _0207C1B2
_0207C1C4:
	ldr r1, [r4, r6]
	mvn r0, r5
	and r0, r1
	ldr r1, _0207C1DC ; =0x04000208
	str r0, [r4, r6]
	ldrh r0, [r1]
	ldr r0, [sp]
	strh r7, [r1]
	blx sub_0207C0F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C1DC: .word 0x04000208
_0207C1E0: .word 0x02FE0000
_0207C1E4: .word 0x00003FF8
	thumb_func_end sub_0207C184

	thumb_func_start sub_0207C1E8
sub_0207C1E8: ; 0x0207C1E8
	push {r3, lr}
	mov r0, #1
	bl sub_020044F6
	mov r0, #1
	mov r1, #1
	blx sub_02079BB0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207C1E8

	thumb_func_start sub_0207C1FC
sub_0207C1FC: ; 0x0207C1FC
	push {r3, lr}
	bl sub_0207C208
	ldrh r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207C1FC

	thumb_func_start sub_0207C208
sub_0207C208: ; 0x0207C208
	ldr r0, _0207C20C ; =0x02FFFC40
	bx lr
	.align 2, 0
_0207C20C: .word 0x02FFFC40
	thumb_func_end sub_0207C208

	thumb_func_start sub_0207C210
sub_0207C210: ; 0x0207C210
	push {r3, lr}
	ldr r0, _0207C240 ; =0x0214C5A0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207C234
	bl sub_0207AC8C
	cmp r0, #1
	bne _0207C22E
	ldr r0, _0207C244 ; =0x02FFE1BF
	mov r1, #1
	ldrb r0, [r0]
	and r0, r1
	cmp r0, #1
	beq _0207C230
_0207C22E:
	mov r1, #0
_0207C230:
	ldr r0, _0207C240 ; =0x0214C5A0
	str r1, [r0]
_0207C234:
	ldr r0, _0207C240 ; =0x0214C5A0
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0]
	pop {r3, pc}
	nop
_0207C240: .word 0x0214C5A0
_0207C244: .word 0x02FFE1BF
	thumb_func_end sub_0207C210

