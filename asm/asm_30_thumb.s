	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0206FFCC
sub_0206FFCC: ; 0x0206FFCC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0206FFF8 ; =0x02FFFC00
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [sp]
	cmp r0, r1
	beq _0206FFF2
	blx sub_0207C0E4
	add r4, r0, #0
	mov r0, #0xe
	mov r1, #0x11
	mov r2, #0
	bl sub_0206FEFC
	add r0, r4, #0
	blx sub_0207C0F8
_0206FFF2:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0206FFF8: .word 0x02FFFC00
	thumb_func_end sub_0206FFCC

	thumb_func_start sub_0206FFFC
sub_0206FFFC: ; 0x0206FFFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xe
	add r1, r5, #0
	mov r2, #0
	bl sub_0207CA6C
	cmp r0, #0
	beq _02070028
	mov r6, #0xe
	mov r7, #0
_02070014:
	add r0, r4, #0
	bl sub_020044F6
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0207CA6C
	cmp r0, #0
	bne _02070014
_02070028:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206FFFC

