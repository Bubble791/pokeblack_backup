	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02075214
sub_02075214: ; 0x02075214
	ldr r2, _02075274 ; =0x04001000
	mov r0, #7
	ldr r1, [r2]
	add r3, r1, #0
	and r3, r0
	mov r0, #0x1f
	ldrh r1, [r2, #0xc]
	lsl r0, r0, #8
	and r0, r1
	lsr r0, r0, #8
	cmp r3, #6
	bhi _0207526E
	add r2, r3, r3
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02075238: ; jump table
	.short _02075246 - _02075238 - 2 ; case 0
	.short _02075246 - _02075238 - 2 ; case 1
	.short _02075246 - _02075238 - 2 ; case 2
	.short _02075246 - _02075238 - 2 ; case 3
	.short _02075246 - _02075238 - 2 ; case 4
	.short _02075250 - _02075238 - 2 ; case 5
	.short _0207526A - _02075238 - 2 ; case 6
_02075246:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075250:
	mov r2, #0x80
	tst r1, r2
	beq _02075260
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075260:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_0207526A:
	mov r0, #0
	bx lr
_0207526E:
	mov r0, #0
	bx lr
	nop
_02075274: .word 0x04001000
	thumb_func_end sub_02075214

