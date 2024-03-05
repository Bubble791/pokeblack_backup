	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207C7F4
sub_0207C7F4: ; 0x0207C7F4
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0207C7F4

	thumb_func_start sub_0207C800
sub_0207C800: ; 0x0207C800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r6, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	cmp r7, #0
	beq _0207C81E
	cmp r7, #1
	beq _0207C836
	b _0207C84A
_0207C81E:
	ldr r0, [r5]
	and r0, r4
	cmp r4, r0
	beq _0207C834
_0207C826:
	add r0, r5, #4
	bl sub_0207A868
	ldr r0, [r5]
	and r0, r4
	cmp r4, r0
	bne _0207C826
_0207C834:
	b _0207C848
_0207C836:
	ldr r0, [r5]
	tst r0, r4
	bne _0207C848
_0207C83C:
	add r0, r5, #4
	bl sub_0207A868
	ldr r0, [r5]
	tst r0, r4
	beq _0207C83C
_0207C848:
	ldr r6, [r5]
_0207C84A:
	cmp r6, #0
	beq _0207C858
	ldr r0, [sp]
	ldr r1, [r5]
	mvn r0, r0
	and r0, r1
	str r0, [r5]
_0207C858:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207C800

	thumb_func_start sub_0207C864
sub_0207C864: ; 0x0207C864
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	cmp r4, #0
	beq _0207C880
	ldr r0, [r5]
	orr r0, r4
	str r0, [r5]
	add r0, r5, #4
	bl sub_0207A89C
_0207C880:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207C864

