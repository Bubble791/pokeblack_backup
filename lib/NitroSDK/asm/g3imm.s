	.include "asm/macros.inc"
	.include "g3imm.inc"
	.include "global.inc"

	.public sub_02076F58
	.public sub_02076F34
	.public MI_Copy36B

	.text

	thumb_func_start G3_LoadMtx44
G3_LoadMtx44: ; 0x02074C14
	ldr r1, _02074C20 ; =0x04000400
	mov r2, #0x16
	ldr r3, _02074C24 ; =sub_02076F58
	str r2, [r1]
	bx r3
	nop
_02074C20: .word 0x04000400
_02074C24: .word sub_02076F58
	thumb_func_end G3_LoadMtx44

	thumb_func_start G3_LoadMtx43
G3_LoadMtx43: ; 0x02074C28
	ldr r1, _02074C34 ; =0x04000400
	mov r2, #0x17
	ldr r3, _02074C38 ; =sub_02076F34
	str r2, [r1]
	bx r3
	nop
_02074C34: .word 0x04000400
_02074C38: .word sub_02076F34
	thumb_func_end G3_LoadMtx43

	thumb_func_start G3_MultMtx44
G3_MultMtx44: ; 0x02074C3C
	ldr r1, _02074C48 ; =0x04000400
	mov r2, #0x18
	ldr r3, _02074C4C ; =sub_02076F58
	str r2, [r1]
	bx r3
	nop
_02074C48: .word 0x04000400
_02074C4C: .word sub_02076F58
	thumb_func_end G3_MultMtx44

	thumb_func_start G3_MultMtx43
G3_MultMtx43: ; 0x02074C50
	ldr r1, _02074C5C ; =0x04000400
	mov r2, #0x19
	ldr r3, _02074C60 ; =sub_02076F34
	str r2, [r1]
	bx r3
	nop
_02074C5C: .word 0x04000400
_02074C60: .word sub_02076F34
	thumb_func_end G3_MultMtx43

	thumb_func_start G3_MultMtx33
G3_MultMtx33: ; 0x02074C64
	ldr r1, _02074C70 ; =0x04000400
	mov r2, #0x1a
	ldr r3, _02074C74 ; =MI_Copy36B
	str r2, [r1]
	bx r3
	nop
_02074C70: .word 0x04000400
_02074C74: .word MI_Copy36B
	thumb_func_end G3_MultMtx33

	thumb_func_start G3_MultTransMtx33
G3_MultTransMtx33: ; 0x02074C78
	push {r3, r4, r5, lr}
	ldr r4, _02074C98 ; =0x04000400
	add r5, r1, #0
	mov r1, #0x19
	str r1, [r4]
	add r1, r4, #0
	blx MI_Copy36B
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02074C98: .word 0x04000400
	thumb_func_end G3_MultTransMtx33
