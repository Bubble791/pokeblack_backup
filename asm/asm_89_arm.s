	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207C248
sub_0207C248: ; 0x0207C248
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _0207C294 ; =0x0214C5A8
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	blx sub_0207C94C
	mov r5, #0xc
	mov r4, #1
_0207C270:
	mov r0, r5
	mov r1, r4
	blx sub_0207CA48
	cmp r0, #0
	beq _0207C270
	ldr r1, _0207C298 ; =0x02079F11
	mov r0, r5
	blx sub_0207C9FC
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0207C294: .word 0x0214C5A8
_0207C298: .word 0x02079F11
	arm_func_end sub_0207C248

	arm_func_start sub_0207C29C
sub_0207C29C: ; 0x0207C29C
	stmdb sp!, {r4, lr}
	ldr r1, _0207C330 ; =0x02FFFC40
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #2
	beq _0207C2D0
	blx sub_0207AC8C
	cmp r0, #1
	bne _0207C2D4
	ldr r0, _0207C334 ; =0x02FFE234
	ldr r0, [r0]
	tst r0, #4
	beq _0207C2D4
_0207C2D0:
	blx sub_0207C774
_0207C2D4:
	blx sub_0207AC8C
	cmp r0, #0
	beq _0207C2E4
	blx sub_02769578
_0207C2E4:
	bl sub_0207A208
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	blx sub_0206EEF0
	mov r0, #0x40000
	blx sub_02079E50
	mvn r0, #0
	blx sub_02079EB8
	blx sub_02078328
	blx sub_0207AC8C
	cmp r0, #0
	beq _0207C318
	blx sub_02768298
_0207C318:
	ldr r1, _0207C338 ; =0x02FFFC20
	mov r0, #0x10
	str r4, [r1]
	blx sub_02079F44
	bl sub_01FF8FAC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0207C330: .word 0x02FFFC40
_0207C334: .word 0x02FFE234
_0207C338: .word 0x02FFFC20
	arm_func_end sub_0207C29C

