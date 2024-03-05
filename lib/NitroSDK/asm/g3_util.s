	.include "asm/macros.inc"
	.include "g3_util.inc"
	.include "global.inc"

	.text

	thumb_func_start G3i_PerspectiveW_
G3i_PerspectiveW_: ; 0x02074B14
	push {r4, r5, lr}
	sub sp, #0x4c
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _02074B20
	add r4, sp, #0xc
_02074B20:
	ldr r5, [sp, #0x58]
	str r5, [sp]
	ldr r5, [sp, #0x5c]
	str r5, [sp, #4]
	str r4, [sp, #8]
	blx MTX_PerspectiveW
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _02074B40
	ldr r0, _02074B44 ; =0x04000440
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C14
_02074B40:
	add sp, #0x4c
	pop {r4, r5, pc}
	.align 2, 0
_02074B44: .word 0x04000440
	thumb_func_end G3i_PerspectiveW_

	thumb_func_start G3i_OrthoW_
G3i_OrthoW_: ; 0x02074B48
	push {r3, r4, r5, lr}
	sub sp, #0x50
	ldr r4, [sp, #0x70]
	cmp r4, #0
	bne _02074B54
	add r4, sp, #0x10
_02074B54:
	ldr r5, [sp, #0x60]
	str r5, [sp]
	ldr r5, [sp, #0x64]
	str r5, [sp, #4]
	ldr r5, [sp, #0x68]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	blx MTX_OrthoW
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _02074B78
	ldr r0, _02074B7C ; =0x04000440
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C14
_02074B78:
	add sp, #0x50
	pop {r3, r4, r5, pc}
	.align 2, 0
_02074B7C: .word 0x04000440
	thumb_func_end G3i_OrthoW_

	thumb_func_start G3i_LookAt_
G3i_LookAt_: ; 0x02074B80
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r4, [sp, #0x40]
	add r5, r3, #0
	cmp r4, #0
	bne _02074B8E
	add r4, sp, #0
_02074B8E:
	add r3, r4, #0
	blx MTX_LookAt
	cmp r5, #0
	beq _02074BA4
	ldr r0, _02074BA8 ; =0x04000440
	mov r1, #2
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C28
_02074BA4:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
_02074BA8: .word 0x04000440
	thumb_func_end G3i_LookAt_

	thumb_func_start G3_RotX
G3_RotX: ; 0x02074BAC
	mov r2, #1
	ldr r3, _02074BCC ; =0x04000468
	lsl r2, r2, #0xc
	str r2, [r3]
	mov r2, #0
	str r2, [r3]
	str r2, [r3]
	str r2, [r3]
	str r1, [r3]
	str r0, [r3]
	str r2, [r3]
	neg r0, r0
	str r0, [r3]
	str r1, [r3]
	bx lr
	nop
_02074BCC: .word 0x04000468
	thumb_func_end G3_RotX

	thumb_func_start G3_RotY
G3_RotY: ; 0x02074BD0
	push {r3, r4}
	ldr r4, _02074BF0 ; =0x04000468
	mov r3, #0
	str r1, [r4]
	str r3, [r4]
	neg r2, r0
	str r2, [r4]
	str r3, [r4]
	lsr r2, r4, #0xe
	str r2, [r4]
	str r3, [r4]
	str r0, [r4]
	str r3, [r4]
	str r1, [r4]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02074BF0: .word 0x04000468
	thumb_func_end G3_RotY

	thumb_func_start G3_RotZ
G3_RotZ: ; 0x02074BF4
	ldr r3, _02074C10 ; =0x04000468
	mov r2, #0
	str r1, [r3]
	str r0, [r3]
	str r2, [r3]
	neg r0, r0
	str r0, [r3]
	str r1, [r3]
	str r2, [r3]
	str r2, [r3]
	str r2, [r3]
	lsr r0, r3, #0xe
	str r0, [r3]
	bx lr
	.align 2, 0
_02074C10: .word 0x04000468
	thumb_func_end G3_RotZ
