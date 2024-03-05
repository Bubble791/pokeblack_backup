    .include "macros/function.inc"
	.include "overlay332.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy332_21beee0
ovy332_21beee0: ; 0x021BEEE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #3
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x9b
	lsl r2, r2, #0x10
	mov r6, #1
	mov r7, #0x9b
	bl sub_0203A15C
	ldr r1, _021BEF94 ; =0x00000418
	add r0, r4, #0
	mov r2, #0x9b
	bl sub_0203AAEC
	ldr r2, _021BEF94 ; =0x00000418
	mov r1, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4, #0xc]
	cmp r5, #0
	bne _021BEF36
	mov r0, #0x98
	str r0, [sp]
	ldr r3, _021BEF98 ; =0x021C92C0
	add r0, r7, #0
	mov r1, #0xc
	add r2, r6, #0
	bl sub_0203A1FC
	str r0, [r4, #0xc]
	str r6, [r0]
	add r0, r7, #0
	bl sub_02016EE8
	ldr r1, [r4, #0xc]
	str r0, [r1, #4]
	add r0, r7, #0
	bl sub_020186E0
_021BEF36:
	ldr r0, [r4, #0xc]
	mov r1, #0x9b
	ldr r0, [r0, #4]
	str r0, [sp, #4]
	add r0, sp, #4
	bl ovy332_21c1dd0
	mov r1, #0x9b
	add r1, #0x71
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0x9b
	bl sub_021BF858
	mov r0, #0xc
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x9b
	bl ovy332_21c11a4
	str r0, [r4, #4]
	ldr r2, [r4, #0xc]
	ldr r0, [r2]
	lsl r1, r0, #2
	ldr r0, _021BEF9C ; =0x021C8B34
	ldr r5, [r0, r1]
	ldr r0, [r2, #4]
	bl sub_02017934
	bl sub_02007464
	mov r1, #2
	tst r0, r1
	beq _021BEF7E
	ldr r5, _021BEFA0 ; =ovy332_21bfd2c
_021BEF7E:
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ovy332_21c1228
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bf92c
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BEF94: .word 0x00000418
_021BEF98: .word 0x021C92C0
_021BEF9C: .word 0x021C8B34
_021BEFA0: .word ovy332_21bfd2c
	thumb_func_end ovy332_21beee0

	thumb_func_start ovy332_21befa4
ovy332_21befa4: ; 0x021BEFA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x29
	add r4, r3, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, r2, #0
	cmp r0, #0
	beq _021BEFBA
	bl sub_02048564
_021BEFBA:
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl ovy332_21bfa50
	ldr r0, [r4, #4]
	bl sub_021C11EC
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1e14
	cmp r5, #0
	bne _021BEFF0
	bl sub_02018778
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017144
	ldr r0, [r4, #0xc]
	bl sub_0203A24C
	add r0, r7, #0
	blx sub_0207C29C
_021BEFF0:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BEFFE
	bl sub_0203A24C
_021BEFFE:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x9b
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21befa4

	thumb_func_start ovy332_21bf010
ovy332_21bf010: ; 0x021BF010
	push {r3, r4, r5, lr}
	mov r0, #0x43
	add r4, r3, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BF09C
	bl ovy332_21c2044
	cmp r0, #0
	beq _021BF09C
	cmp r0, #1
	beq _021BF02C
	cmp r0, #2
_021BF02C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c2110
	bl sub_02006280
	mov r5, #0x2a
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BF04C
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r5]
_021BF04C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ovy332_21c1e54
	ldr r0, [r4, #4]
	ldr r1, _021BF134 ; =ovy332_21bfca8
	bl ovy332_21c12b4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021BF06C
	add r0, r4, #0
	bl ovy332_21bfc98
_021BF06C:
	ldr r0, [r4]
	bl ovy332_21c13bc
	ldr r0, [r4, #0x3c]
	mov r1, #9
	mov r2, #1
	bl sub_021BF5B0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BF088
	add r0, r4, #0
	bl sub_021BFB24
_021BF088:
	add r0, r4, #0
	add r0, #0xb4
	bl ovy332_21bf90c
	ldr r0, [r4, #4]
	ldr r1, _021BF138 ; =ovy332_21bfdc4
	bl ovy332_21c1240
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BF09C:
	ldr r0, [r4, #4]
	bl ovy332_21c11f4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021BF0B8
	bl ovy332_21c02b8
	ldr r0, [r4, #8]
	bl sub_021C02CC
	ldr r0, [r4, #8]
	bl sub_021C02D8
_021BF0B8:
	ldr r0, [r4]
	cmp r0, #0
	beq _021BF0C2
	bl ovy332_21c1314
_021BF0C2:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021BF0CC
	bl ovy332_21bf4c4
_021BF0CC:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021BF0D6
	bl sub_02021A3C
_021BF0D6:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021BF0E0
	bl ovy332_21c0654
_021BF0E0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BF0EA
	bl ovy332_21c0654
_021BF0EA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021BF0F4
	bl ovy332_21c0654
_021BF0F4:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021BF0FE
	bl ovy332_21c0bd4
_021BF0FE:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021BF108
	bl ovy332_21c10e0
_021BF108:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021BF112
	bl ovy332_21c0d9c
_021BF112:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BF120
	bl ovy332_21c1e30
_021BF120:
	ldr r0, [r4, #4]
	bl ovy332_21c1210
	cmp r0, #0
	beq _021BF12E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BF12E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BF134: .word ovy332_21bfca8
_021BF138: .word ovy332_21bfdc4
	thumb_func_end ovy332_21bf010

	thumb_func_start ovy332_21bf13c
ovy332_21bf13c: ; 0x021BF13C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BF150
	cmp r1, #1
	beq _021BF164
	cmp r1, #2
	beq _021BF174
	pop {r4, pc}
_021BF150:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF164:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021BF178
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF174:
	bl ovy332_21c1270
_021BF178:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf13c

	thumb_func_start ovy332_21bf17c
ovy332_21bf17c: ; 0x021BF17C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BF190
	cmp r1, #1
	beq _021BF1A4
	cmp r1, #2
	beq _021BF1B4
	pop {r4, pc}
_021BF190:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF1A4:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021BF1B8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF1B4:
	bl ovy332_21c1270
_021BF1B8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf17c

	thumb_func_start ovy332_21bf1bc
ovy332_21bf1bc: ; 0x021BF1BC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BF1D0
	cmp r1, #1
	beq _021BF1E4
	cmp r1, #2
	beq _021BF1F4
	pop {r4, pc}
_021BF1D0:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF1E4:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021BF1F8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF1F4:
	bl ovy332_21c1270
_021BF1F8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf1bc

	thumb_func_start ovy332_21bf1fc
ovy332_21bf1fc: ; 0x021BF1FC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BF210
	cmp r1, #1
	beq _021BF224
	cmp r1, #2
	beq _021BF234
	pop {r4, pc}
_021BF210:
	mov r0, #0xc
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF224:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021BF238
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF234:
	bl ovy332_21c1270
_021BF238:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf1fc

	thumb_func_start ovy332_21bf23c
ovy332_21bf23c: ; 0x021BF23C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BF250
	cmp r1, #1
	beq _021BF25E
	cmp r1, #2
	beq _021BF270
	pop {r4, pc}
_021BF250:
	ldr r0, [r2]
	bl sub_021C139C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF25E:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021BF274
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BF270:
	bl ovy332_21c1270
_021BF274:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf23c

	thumb_func_start ovy332_21bf278
ovy332_21bf278: ; 0x021BF278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _021BF28E
	cmp r1, #1
	beq _021BF2CE
	cmp r1, #2
	beq _021BF2EA
	pop {r3, r4, r5, r6, r7, pc}
_021BF28E:
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_021BFB18
	mov r0, #0
	mov r1, #3
	mov r2, #0xd0
	mov r3, #0x9b
	bl sub_0204875C
	mov r1, #0x16
	add r7, r0, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	mov r2, #1
	mov r4, #1
	bl ovy332_21c0758
	add r0, r6, #0
	bl sub_02048564
	add r0, r7, #0
	bl sub_020487D4
	mov r0, #0
	bl sub_02045B7C
	str r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021BF2CE:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021BF2EE
	add r0, r4, #0
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021BF2EA:
	bl ovy332_21c1270
_021BF2EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21bf278

	thumb_func_start ovy332_21bf2f0
ovy332_21bf2f0: ; 0x021BF2F0
	push {r3, lr}
	mov r1, #0xa9
	lsl r1, r1, #2
	str r1, [sp]
	ldr r3, _021BF304 ; =0x021C92C0
	mov r1, #0xf0
	mov r2, #1
	bl sub_0203A1FC
	pop {r3, pc}
	.align 2, 0
_021BF304: .word 0x021C92C0
	thumb_func_end ovy332_21bf2f0

	thumb_func_start sub_021BF308
sub_021BF308: ; 0x021BF308
	ldr r3, _021BF30C ; =sub_0203A24C
	bx r3
	.align 2, 0
_021BF30C: .word sub_0203A24C
	thumb_func_end sub_021BF308

	thumb_func_start ovy332_21bf310
ovy332_21bf310: ; 0x021BF310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	strh r5, [r6, #4]
	bl sub_020450CC
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #0x20
	add r0, #0xf5
	add r1, r5, #0
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x40
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0x20
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	mov r3, #0xa
	str r5, [sp, #8]
	bl sub_0204ADA8
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0x10
	add r3, r5, #0
	bl sub_0204B37C
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	ldr r7, [r0, #0xc]
	add r1, #0x50
	add r0, r7, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r6, #0
	add r0, #0x20
	add r1, #0x70
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r6, #0
	add r0, #0x40
	add r1, #0x90
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r6, #0
	add r0, #0x60
	add r1, #0xb0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r7, #0x80
	add r6, #0xd0
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0204AB0C
	mov r4, #0x9b
	mov r0, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	mov r0, #4
	mov r1, #1
	mov r2, #0xf
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	mov r0, #0x17
	add r1, r5, #0
	bl sub_0204AA30
	mov r3, #7
	mov r1, #0x20
	str r1, [sp]
	lsl r6, r3, #6
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	add r4, r0, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21bf310

	thumb_func_start ovy332_21bf4c4
ovy332_21bf4c4: ; 0x021BF4C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4]
	ldr r0, _021BF5A8 ; =0x00000333
	sub r2, r1, r0
	str r2, [r4]
	mov r0, #3
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	ldr r2, [r4]
	mov r0, #7
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	ldr r7, [r4, #8]
	cmp r7, #0
	beq _021BF5A2
	ldrh r1, [r4, #0xc]
	ldr r0, _021BF5AC ; =0x00007FFF
	mul r0, r1
	ldrh r1, [r4, #0xe]
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r7, #9
	bhi _021BF56E
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BF510: ; jump table
	.short _021BF56E - _021BF510 - 2 ; case 0
	.short _021BF524 - _021BF510 - 2 ; case 1
	.short _021BF52E - _021BF510 - 2 ; case 2
	.short _021BF534 - _021BF510 - 2 ; case 3
	.short _021BF53E - _021BF510 - 2 ; case 4
	.short _021BF548 - _021BF510 - 2 ; case 5
	.short _021BF552 - _021BF510 - 2 ; case 6
	.short _021BF558 - _021BF510 - 2 ; case 7
	.short _021BF562 - _021BF510 - 2 ; case 8
	.short _021BF568 - _021BF510 - 2 ; case 9
_021BF524:
	add r6, r4, #0
	add r6, #0x70
_021BF528:
	add r5, r4, #0
	add r5, #0x50
	b _021BF56E
_021BF52E:
	add r6, r4, #0
	add r6, #0x90
	b _021BF528
_021BF534:
	add r6, r4, #0
	add r5, r4, #0
	add r6, #0x50
	add r5, #0x70
	b _021BF56E
_021BF53E:
	add r6, r4, #0
	add r5, r4, #0
	add r6, #0x50
	add r5, #0x90
	b _021BF56E
_021BF548:
	add r6, r4, #0
	add r6, #0x50
_021BF54C:
	add r5, r4, #0
	add r5, #0xb0
	b _021BF56E
_021BF552:
	add r6, r4, #0
	add r6, #0xb0
	b _021BF528
_021BF558:
	add r6, r4, #0
	add r5, r4, #0
	add r6, #0xb0
	add r5, #0xd0
	b _021BF56E
_021BF562:
	add r6, r4, #0
	add r6, #0xd0
	b _021BF54C
_021BF568:
	add r6, r4, #0
	add r6, #0x50
	add r5, r6, #0
_021BF56E:
	str r5, [sp]
	str r6, [sp, #4]
	add r1, r4, #0
	ldr r2, [sp, #8]
	mov r0, #0xf
	add r1, #0x10
	mov r3, #0
	mov r7, #0
	bl ovy332_21c1cd4
	str r5, [sp]
	str r6, [sp, #4]
	add r1, r4, #0
	ldr r2, [sp, #8]
	mov r0, #0x1f
	add r1, #0x30
	mov r3, #0
	bl ovy332_21c1cd4
	ldrh r1, [r4, #0xc]
	add r0, r1, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	cmp r1, r0
	blo _021BF5A2
	str r7, [r4, #8]
_021BF5A2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BF5A8: .word 0x00000333
_021BF5AC: .word 0x00007FFF
	thumb_func_end ovy332_21bf4c4

	thumb_func_start sub_021BF5B0
sub_021BF5B0: ; 0x021BF5B0
	str r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BF5B0

	thumb_func_start ovy332_21bf5bc
ovy332_21bf5bc: ; 0x021BF5BC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	cmp r2, #4
	bhi _021BF606
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BF5D2: ; jump table
	.short _021BF5DC - _021BF5D2 - 2 ; case 0
	.short _021BF5E8 - _021BF5D2 - 2 ; case 1
	.short _021BF5EC - _021BF5D2 - 2 ; case 2
	.short _021BF5E0 - _021BF5D2 - 2 ; case 3
	.short _021BF5E4 - _021BF5D2 - 2 ; case 4
_021BF5DC:
	mov r1, #7
	b _021BF5F4
_021BF5E0:
	mov r1, #0xa
	b _021BF5F4
_021BF5E4:
	mov r1, #0xb
	b _021BF5F4
_021BF5E8:
	mov r1, #9
	b _021BF5F4
_021BF5EC:
	mov r1, #8
	b _021BF5F4
_021BF5F0:
	.byte 0x03, 0xB0, 0x18, 0xBD
_021BF5F4:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldrh r0, [r0, #4]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _021BF60C ; =0x00000115
	bl sub_0204AF18
_021BF606:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021BF60C: .word 0x00000115
	thumb_func_end ovy332_21bf5bc

	thumb_func_start ovy332_21bf610
ovy332_21bf610: ; 0x021BF610
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x74
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_021C02E4
	str r0, [r5, #0x70]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21bf610

	thumb_func_start ovy332_21bf628
ovy332_21bf628: ; 0x021BF628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021BF678 ; =0x00000115
	add r4, r1, #0
	bl sub_0204AA30
	str r4, [sp]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	mov r7, #0
	bl sub_0204B81C
	str r0, [r5, #4]
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl sub_0204BBB8
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #0xe
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BF678: .word 0x00000115
	thumb_func_end ovy332_21bf628

	thumb_func_start ovy332_21bf67c
ovy332_21bf67c: ; 0x021BF67C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BCD0
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4, #8]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy332_21bf67c

	thumb_func_start ovy332_21bf694
ovy332_21bf694: ; 0x021BF694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	add r0, r1, #0
	mov r1, #2
	add r3, sp, #0x14
	mov ip, r2
	mov r4, #1
	mov r7, #1
	str r1, [sp, #0x10]
	cmp r0, #0x18
	bls _021BF6AE
	b _021BF7DE
_021BF6AE:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BF6BA: ; jump table
	.short _021BF6EC - _021BF6BA - 2 ; case 0
	.short _021BF6FE - _021BF6BA - 2 ; case 1
	.short _021BF70C - _021BF6BA - 2 ; case 2
	.short _021BF722 - _021BF6BA - 2 ; case 3
	.short _021BF730 - _021BF6BA - 2 ; case 4
	.short _021BF730 - _021BF6BA - 2 ; case 5
	.short _021BF730 - _021BF6BA - 2 ; case 6
	.short _021BF742 - _021BF6BA - 2 ; case 7
	.short _021BF758 - _021BF6BA - 2 ; case 8
	.short _021BF76E - _021BF6BA - 2 ; case 9
	.short _021BF782 - _021BF6BA - 2 ; case 10
	.short _021BF7DE - _021BF6BA - 2 ; case 11
	.short _021BF79A - _021BF6BA - 2 ; case 12
	.short _021BF740 - _021BF6BA - 2 ; case 13
	.short _021BF740 - _021BF6BA - 2 ; case 14
	.short _021BF740 - _021BF6BA - 2 ; case 15
	.short _021BF740 - _021BF6BA - 2 ; case 16
	.short _021BF740 - _021BF6BA - 2 ; case 17
	.short _021BF740 - _021BF6BA - 2 ; case 18
	.short _021BF740 - _021BF6BA - 2 ; case 19
	.short _021BF740 - _021BF6BA - 2 ; case 20
	.short _021BF7DE - _021BF6BA - 2 ; case 21
	.short _021BF7AC - _021BF6BA - 2 ; case 22
	.short _021BF7C2 - _021BF6BA - 2 ; case 23
	.short _021BF7D0 - _021BF6BA - 2 ; case 24
_021BF6EC:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x71
	mov r1, #0
	strh r2, [r3, #2]
	strh r1, [r3, #4]
_021BF6F8:
	strb r1, [r3, #6]
	strb r4, [r3, #7]
	b _021BF7E4
_021BF6FE:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x4d
	strh r2, [r3, #2]
	mov r1, #0
	strh r4, [r3, #4]
	b _021BF6F8
_021BF70C:
	mov r2, #0x39
	strh r2, [r3]
	mov r2, #0x9a
	strh r2, [r3, #2]
	ldr r2, [sp, #0x10]
	mov r1, #0
_021BF718:
	strh r2, [r3, #4]
	strb r1, [r3, #6]
	strb r4, [r3, #7]
	str r4, [sp, #0x10]
	b _021BF7E4
_021BF722:
	mov r2, #0xc8
	strh r2, [r3]
	mov r2, #0x26
	strh r2, [r3, #2]
	mov r1, #0
	mov r2, #3
	b _021BF718
_021BF730:
	mov r1, #0
	strh r1, [r3]
	strh r1, [r3, #2]
	mov r2, #7
	strh r2, [r3, #4]
	strb r1, [r3, #6]
	strb r1, [r3, #7]
	b _021BF7E4
_021BF740:
	mov r7, #0
_021BF742:
	mov r2, #0xc8
	strh r2, [r3]
	mov r2, #0x26
	strh r2, [r3, #2]
	mov r2, #6
	strh r2, [r3, #4]
	mov r1, #0
	strb r1, [r3, #6]
	mov r2, #2
	strb r2, [r3, #7]
	b _021BF7E4
_021BF758:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x62
	strh r2, [r3, #2]
	mov r2, #8
	mov r1, #0
	strh r2, [r3, #4]
	strb r1, [r3, #6]
_021BF768:
	strb r4, [r3, #7]
	mov r4, #0
	b _021BF7BE
_021BF76E:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x62
	strh r2, [r3, #2]
	mov r2, #0xa
	strh r2, [r3, #4]
	ldr r2, [sp, #0x10]
	mov r1, #0
	strb r2, [r3, #6]
	b _021BF768
_021BF782:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x62
	strh r2, [r3, #2]
	mov r2, #0xb
	mov r1, #0
	strh r2, [r3, #4]
	strb r1, [r3, #6]
	strb r1, [r3, #7]
	mov r7, #0
	mov r4, #0
	b _021BF7E4
_021BF79A:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x62
	strh r2, [r3, #2]
	mov r2, #0xc
	strh r2, [r3, #4]
	mov r1, #0
	strb r4, [r3, #6]
	b _021BF768
_021BF7AC:
	mov r2, #0xf8
	strh r2, [r3]
	mov r2, #0x28
	strh r2, [r3, #2]
	mov r1, #0
	mov r2, #0xd
_021BF7B8:
	strh r2, [r3, #4]
	strb r1, [r3, #6]
	strb r1, [r3, #7]
_021BF7BE:
	mov r7, #0
	b _021BF7E4
_021BF7C2:
	mov r2, #0xf8
	strh r2, [r3]
	mov r2, #0xae
	strh r2, [r3, #2]
	mov r1, #0
	mov r2, #0xe
	b _021BF7B8
_021BF7D0:
	mov r2, #0x80
	strh r2, [r3]
	mov r2, #0x60
	strh r2, [r3, #2]
	mov r1, #0
	mov r2, #0xf
	b _021BF7B8
_021BF7DE:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021BF7E4:
	lsl r6, r0, #2
	add r0, sp, #0x14
	str r0, [sp]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, ip
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r5, [sp, #0xc]
	ldr r0, [r0, #0x70]
	ldr r1, [r1, #4]
	ldr r2, [r2]
	ldr r3, [r3, #8]
	add r5, #0xc
	bl sub_0204C040
	str r0, [r5, r6]
	add r1, r4, #0
	bl sub_0204C520
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, r6]
	ldr r1, [sp, #0x10]
	bl sub_0204C244
	ldr r0, [r5, r6]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf694

	thumb_func_start ovy332_21bf82c
ovy332_21bf82c: ; 0x021BF82C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0xc
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BF842
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021BF842:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21bf82c

	thumb_func_start sub_021BF844
sub_021BF844: ; 0x021BF844
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021BF844

	thumb_func_start sub_021BF84C
sub_021BF84C: ; 0x021BF84C
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BF84C

	thumb_func_start sub_021BF854
sub_021BF854: ; 0x021BF854
	ldr r0, [r0, #0x70]
	bx lr
	thumb_func_end sub_021BF854

	thumb_func_start sub_021BF858
sub_021BF858: ; 0x021BF858
	ldr r3, _021BF860 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x28
	bx r3
	.align 2, 0
_021BF860: .word MI_CpuFill8
	thumb_func_end sub_021BF858

	thumb_func_start ovy332_21bf864
ovy332_21bf864: ; 0x021BF864
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0
	mov r3, #4
_021BF86C:
	lsl r4, r2, #3
	add r4, r0, r4
	ldrsb r6, [r4, r3]
	cmp r6, #0
	bne _021BF884
	add r0, r1, #0
	add r1, r4, #4
	mov r2, #4
	blx MI_CpuCopy8
	str r5, [r4]
	pop {r4, r5, r6, pc}
_021BF884:
	add r2, r2, #1
	cmp r2, #5
	blt _021BF86C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21bf864

	thumb_func_start ovy332_21bf88c
ovy332_21bf88c: ; 0x021BF88C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021BF894:
	lsl r0, r4, #3
	add r7, r5, r0
	add r0, r7, #4
	add r1, r6, #0
	bl sub_02043ED4
	cmp r0, #0
	bne _021BF8B4
	add r0, r7, #4
	mov r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	str r4, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BF8B4:
	add r4, r4, #1
	cmp r4, #5
	blt _021BF894
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21bf88c

	thumb_func_start ovy332_21bf8bc
ovy332_21bf8bc: ; 0x021BF8BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021BF8C4:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, r0, #4
	add r1, r6, #0
	bl sub_02043ED4
	cmp r0, #0
	bne _021BF8D8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BF8D8:
	add r4, r4, #1
	cmp r4, #5
	blt _021BF8C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf8bc

	thumb_func_start ovy332_21bf8e4
ovy332_21bf8e4: ; 0x021BF8E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021BF8EC:
	lsl r0, r4, #3
	add r7, r5, r0
	add r0, r7, #4
	add r1, r6, #0
	bl sub_02043ED4
	cmp r0, #0
	bne _021BF900
	ldr r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BF900:
	add r4, r4, #1
	cmp r4, #5
	blt _021BF8EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21bf8e4

	thumb_func_start ovy332_21bf90c
ovy332_21bf90c: ; 0x021BF90C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021BF914:
	lsl r6, r4, #3
	add r0, r5, r6
	add r0, r0, #4
	add r1, r7, #0
	mov r2, #4
	blx MI_CpuFill8
	add r4, r4, #1
	str r7, [r5, r6]
	cmp r4, #5
	blt _021BF914
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21bf90c

	thumb_func_start ovy332_21bf92c
ovy332_21bf92c: ; 0x021BF92C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BFA3C ; =0x0000014B
	add r4, r1, #0
	bl sub_0203CE0C
	ldr r0, _021BFA40 ; =0x0000008B
	bl sub_0203CE0C
	add r0, r4, #0
	bl sub_021BEA20
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	bl sub_021BEE80
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02010470
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_02007468
	cmp r0, #0
	beq _021BF978
	add r0, r7, #0
	bl sub_020104A4
	b _021BF97E
_021BF978:
	add r0, r6, #0
	bl sub_0201046C
_021BF97E:
	mov r1, #0x41
	lsl r1, r1, #2
	sub r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	add r1, r4, #0
	bl ovy332_21c01c4
	str r0, [r5, #8]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0x2c]
	add r0, r4, #0
	bl sub_02021998
	str r0, [r5, #0x30]
	mov r0, #0
	mov r1, #2
	mov r2, #0x43
	add r3, r4, #0
	mov r7, #2
	bl sub_0204875C
	str r0, [r5, #0x34]
	add r0, r4, #0
	bl sub_020241D4
	str r0, [r5, #0x38]
	mov r0, #0x80
	add r1, r4, #0
	bl sub_02048530
	mov r6, #0x9f
	lsl r6, r6, #2
	str r0, [r5, r6]
	add r0, r4, #0
	bl ovy332_21bf2f0
	add r1, r4, #0
	str r0, [r5, #0x3c]
	bl ovy332_21bf310
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x40
	add r2, r4, #0
	bl ovy332_21bf610
	add r0, r5, #0
	add r0, #0x40
	add r1, r4, #0
	bl ovy332_21bf628
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c12e8
	str r0, [r5]
	add r0, r5, #0
	mov r1, #0x9b
	bl ovy332_21c2b18
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021C53DC
	add r0, r5, #0
	mov r1, #0x9b
	bl ovy332_21c7028
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BFB8C
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021BFA3A
	ldr r0, _021BFA44 ; =0x021C8B3C
	add r1, r7, #0
	bl sub_02005AF4
	sub r6, #0xc
	str r0, [r5, r6]
	ldr r0, _021BFA48 ; =0x000004C9
	ldr r1, _021BFA4C ; =0x0000FFFF
	bl sub_02005DF4
_021BFA3A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFA3C: .word 0x0000014B
_021BFA40: .word 0x0000008B
_021BFA44: .word 0x021C8B3C
_021BFA48: .word 0x000004C9
_021BFA4C: .word 0x0000FFFF
	thumb_func_end ovy332_21bf92c

	thumb_func_start ovy332_21bfa50
ovy332_21bfa50: ; 0x021BFA50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _021BFA6A
	bl sub_02005D8C
	mov r4, #0x27
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02005B60
	mov r0, #0
	str r0, [r5, r4]
_021BFA6A:
	add r0, r5, #0
	bl ovy332_21c704c
	add r0, r5, #0
	bl ovy332_21c2b5c
	ldr r0, [r5]
	bl ovy332_21c13bc
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021BFA88
	add r0, r5, #0
	bl ovy332_21bfb98
_021BFA88:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021BFA96
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r5, #0x14]
_021BFA96:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021BFAA4
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r5, #0x10]
_021BFAA4:
	ldr r0, [r5]
	bl sub_021C130C
	mov r4, #0
	ldr r0, [r5, #0x3c]
	str r4, [r5]
	bl sub_021BF308
	add r0, r5, #0
	add r0, #0x40
	str r4, [r5, #0x3c]
	bl ovy332_21bf67c
	ldr r0, [r5, #8]
	bl ovy332_21c0264
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	str r4, [r5, #8]
	bl sub_021BEC1C
	add r0, r5, #0
	mov r6, #0x9f
	add r0, #0xfc
	lsl r6, r6, #2
	str r4, [r0]
	ldr r0, [r5, r6]
	bl sub_02048564
	str r4, [r5, r6]
	ldr r0, [r5, #0x38]
	bl sub_02024274
	ldr r0, [r5, #0x34]
	str r4, [r5, #0x38]
	bl sub_020487D4
	ldr r0, [r5, #0x30]
	str r4, [r5, #0x34]
	bl sub_02021A18
	ldr r0, [r5, #0x2c]
	str r4, [r5, #0x30]
	bl sub_02022DA8
	ldr r0, _021BFB10 ; =0x0000008B
	str r4, [r5, #0x2c]
	bl sub_0203CDC8
	ldr r0, _021BFB14 ; =0x0000014B
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BFB10: .word 0x0000008B
_021BFB14: .word 0x0000014B
	thumb_func_end ovy332_21bfa50

	thumb_func_start sub_021BFB18
sub_021BFB18: ; 0x021BFB18
	ldr r3, _021BFB20 ; =ovy332_21bfb30
	add r2, r1, #0
	mov r1, #0
	bx r3
	.align 2, 0
_021BFB20: .word ovy332_21bfb30
	thumb_func_end sub_021BFB18

	thumb_func_start sub_021BFB24
sub_021BFB24: ; 0x021BFB24
	ldr r3, _021BFB2C ; =ovy332_21bfb70
	mov r1, #0
	bx r3
	nop
_021BFB2C: .word ovy332_21bfb70
	thumb_func_end sub_021BFB24

	thumb_func_start ovy332_21bfb30
ovy332_21bfb30: ; 0x021BFB30
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r3, #0x1e
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r1, #0
	mov r1, #1
	mov r2, #0x13
	bl ovy332_21c054c
	ldr r1, _021BFB6C ; =0x0000044F
	str r0, [r4, #0x10]
	bl sub_021C0770
	ldr r0, [r4, #0x10]
	bl ovy332_21c09a0
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021BFB6C: .word 0x0000044F
	thumb_func_end ovy332_21bfb30

	thumb_func_start ovy332_21bfb70
ovy332_21bfb70: ; 0x021BFB70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r5, #0x10]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21bfb70

	thumb_func_start sub_021BFB8C
sub_021BFB8C: ; 0x021BFB8C
	ldr r3, _021BFB94 ; =ovy332_21bfbb4
	add r2, r1, #0
	mov r1, #0xe
	bx r3
	.align 2, 0
_021BFB94: .word ovy332_21bfbb4
	thumb_func_end sub_021BFB8C

	thumb_func_start ovy332_21bfb98
ovy332_21bfb98: ; 0x021BFB98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy332_21c09a0
	ldr r0, [r4, #0x18]
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r4, #0x18]
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bfb98

	thumb_func_start ovy332_21bfbb4
ovy332_21bfbb4: ; 0x021BFBB4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r3, r1, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	mov r1, #0
	mov r2, #1
	bl ovy332_21c054c
	mov r1, #0x11
	str r0, [r4, #0x18]
	lsl r1, r1, #6
	bl sub_021C0770
	ldr r0, [r4, #0x18]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021C0774
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bfbb4

	thumb_func_start ovy332_21bfbf0
ovy332_21bfbf0: ; 0x021BFBF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r2, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	mov r1, #2
	mov r3, #0x1c
	bl ovy332_21c054c
	ldr r1, _021BFC28 ; =0x0000044F
	str r0, [r4, #0x14]
	bl sub_021C0770
	ldr r0, [r4, #0x14]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	add sp, #0x10
	pop {r4, pc}
	nop
_021BFC28: .word 0x0000044F
	thumb_func_end ovy332_21bfbf0

	thumb_func_start ovy332_21bfc2c
ovy332_21bfc2c: ; 0x021BFC2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21bfc2c

	thumb_func_start ovy332_21bfc44
ovy332_21bfc44: ; 0x021BFC44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x30
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x34]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	mov r2, #0x41
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	str r0, [sp, #8]
	strh r6, [r1, #0x20]
	mov r0, #0xe
	strh r0, [r1, #0x22]
	mov r0, #0xf
	strh r0, [r1, #0x24]
	mov r0, #1
	strh r0, [r1, #0x26]
	str r2, [sp, #0xc]
	mov r2, #0x42
	str r2, [sp, #0x10]
	mov r2, #2
	str r2, [sp, #0x1c]
	str r0, [sp, #0x28]
	strh r0, [r1, #0x2c]
	strh r6, [r1, #0x2e]
	add r0, r7, #0
	add r1, r4, #0
	bl ovy332_21c0c1c
	str r0, [r5, #0x20]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21bfc44

	thumb_func_start ovy332_21bfc98
ovy332_21bfc98: ; 0x021BFC98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d50
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	thumb_func_end ovy332_21bfc98

	thumb_func_start ovy332_21bfca8
ovy332_21bfca8: ; 0x021BFCA8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #5
	bhi _021BFD14
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BFCBE: ; jump table
	.short _021BFCCA - _021BFCBE - 2 ; case 0
	.short _021BFCD8 - _021BFCBE - 2 ; case 1
	.short _021BFCE6 - _021BFCBE - 2 ; case 2
	.short _021BFCF4 - _021BFCBE - 2 ; case 3
	.short _021BFD02 - _021BFCBE - 2 ; case 4
	.short _021BFD10 - _021BFCBE - 2 ; case 5
_021BFCCA:
	ldr r1, _021BFD18 ; =ovy332_21bfed8
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFCD8:
	ldr r1, _021BFD1C ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFCE6:
	ldr r1, _021BFD20 ; =ovy332_21bfdc4
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFCF4:
	ldr r1, _021BFD24 ; =ovy332_21bf1fc
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD02:
	ldr r1, _021BFD28 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD10:
	bl sub_021C1264
_021BFD14:
	pop {r4, pc}
	nop
_021BFD18: .word ovy332_21bfed8
_021BFD1C: .word ovy332_21bf13c
_021BFD20: .word ovy332_21bfdc4
_021BFD24: .word ovy332_21bf1fc
_021BFD28: .word ovy332_21bf23c
	thumb_func_end ovy332_21bfca8

	thumb_func_start ovy332_21bfd2c
ovy332_21bfd2c: ; 0x021BFD2C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #6
	bhi _021BFDB2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BFD42: ; jump table
	.short _021BFD50 - _021BFD42 - 2 ; case 0
	.short _021BFD5E - _021BFD42 - 2 ; case 1
	.short _021BFD6C - _021BFD42 - 2 ; case 2
	.short _021BFD80 - _021BFD42 - 2 ; case 3
	.short _021BFD92 - _021BFD42 - 2 ; case 4
	.short _021BFDA0 - _021BFD42 - 2 ; case 5
	.short _021BFDAE - _021BFD42 - 2 ; case 6
_021BFD50:
	ldr r1, _021BFDB4 ; =ovy332_21bff1c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD5E:
	ldr r1, _021BFDB8 ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD6C:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0xa1
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD80:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021BFDB2
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFD92:
	ldr r1, _021BFDBC ; =ovy332_21bf1fc
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFDA0:
	ldr r1, _021BFDC0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFDAE:
	bl sub_021C1264
_021BFDB2:
	pop {r4, pc}
	.align 2, 0
_021BFDB4: .word ovy332_21bff1c
_021BFDB8: .word ovy332_21bf13c
_021BFDBC: .word ovy332_21bf1fc
_021BFDC0: .word ovy332_21bf23c
	thumb_func_end ovy332_21bfd2c

	thumb_func_start ovy332_21bfdc4
ovy332_21bfdc4: ; 0x021BFDC4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #4
	bhi _021BFEBC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BFDDE: ; jump table
	.short _021BFDE8 - _021BFDDE - 2 ; case 0
	.short _021BFDF6 - _021BFDDE - 2 ; case 1
	.short _021BFE5E - _021BFDDE - 2 ; case 2
	.short _021BFE6C - _021BFDDE - 2 ; case 3
	.short _021BFEB8 - _021BFDDE - 2 ; case 4
_021BFDE8:
	ldr r1, _021BFEC0 ; =ovy332_21bfed8
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BFDF6:
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0f10
	ldr r0, [r4, #0x1c]
	bl sub_021C11A0
	cmp r0, #0
	beq _021BFE24
	ldr r0, [r4, #0x14]
	bl sub_021C095C
	cmp r0, #0
	beq _021BFE24
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, #0x48
	mov r3, #0
	bl ovy332_21c073c
_021BFE24:
	ldr r0, [r4, #0x1c]
	bl sub_021C1168
	cmp r0, #0
	beq _021BFEBC
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r0, #3
	bne _021BFE44
	mov r0, #4
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BFE44:
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r4, #0xb4
	add r2, r0, #0
	ldr r1, _021BFEC4 ; =0x021C92D4
	add r0, r4, #0
	bl ovy332_21bf864
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BFE5E:
	ldr r1, _021BFEC8 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BFE6C:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BFE80
	cmp r0, #1
	beq _021BFE90
	cmp r0, #2
	beq _021BFEA0
	b _021BFEB2
_021BFE80:
	ldr r0, [r4, #0x3c]
	mov r1, #3
	mov r2, #0x1e
	bl sub_021BF5B0
	add r0, r6, #0
	ldr r1, _021BFECC ; =ovy332_21c2cd4
	b _021BFEAE
_021BFE90:
	ldr r0, [r4, #0x3c]
	mov r1, #4
	mov r2, #0x1e
	bl sub_021BF5B0
	add r0, r6, #0
	ldr r1, _021BFED0 ; =ovy332_21c53e0
	b _021BFEAE
_021BFEA0:
	ldr r0, [r4, #0x3c]
	mov r1, #5
	mov r2, #0x1e
	bl sub_021BF5B0
	ldr r1, _021BFED4 ; =ovy332_21c7064
	add r0, r6, #0
_021BFEAE:
	bl ovy332_21c1240
_021BFEB2:
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BFEB8:
	bl ovy332_21c1270
_021BFEBC:
	pop {r4, r5, r6, pc}
	nop
_021BFEC0: .word ovy332_21bfed8
_021BFEC4: .word 0x021C92D4
_021BFEC8: .word ovy332_21bf23c
_021BFECC: .word ovy332_21c2cd4
_021BFED0: .word ovy332_21c53e0
_021BFED4: .word ovy332_21c7064
	thumb_func_end ovy332_21bfdc4

	thumb_func_start ovy332_21bfed8
ovy332_21bfed8: ; 0x021BFED8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BFEEC
	cmp r1, #1
	beq _021BFEFE
	cmp r1, #2
	beq _021BFF10
	pop {r4, pc}
_021BFEEC:
	ldr r0, [r2]
	ldr r1, _021BFF18 ; =0x021C8B44
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFEFE:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021BFF14
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFF10:
	bl ovy332_21c1270
_021BFF14:
	pop {r4, pc}
	nop
_021BFF18: .word 0x021C8B44
	thumb_func_end ovy332_21bfed8

	thumb_func_start ovy332_21bff1c
ovy332_21bff1c: ; 0x021BFF1C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BFF30
	cmp r1, #1
	beq _021BFF42
	cmp r1, #2
	beq _021BFF54
	pop {r4, pc}
_021BFF30:
	ldr r0, [r2]
	ldr r1, _021BFF5C ; =0x021C8B54
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFF42:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021BFF58
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BFF54:
	bl ovy332_21c1270
_021BFF58:
	pop {r4, pc}
	nop
_021BFF5C: .word 0x021C8B54
	thumb_func_end ovy332_21bff1c

	thumb_func_start ovy332_21bff60
ovy332_21bff60: ; 0x021BFF60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	str r1, [sp]
	ldr r2, [r4, #0x18]
	cmp r2, #0
	bne _021BFF72
	bl sub_021BFB8C
_021BFF72:
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x48
	mov r5, #0
	blx MI_CpuFill8
	mov r1, #1
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #0xa
	str r1, [sp, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	ldr r6, _021C0050 ; =0x021C92D4
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	add r1, r6, #0
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xb4
	bl ovy332_21bf8bc
	cmp r0, #0
	beq _021BFFC0
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf8e4
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf88c
	b _021BFFC2
_021BFFC0:
	str r5, [sp, #0x20]
_021BFFC2:
	ldr r0, [sp, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _021C0000
	add r5, sp, #4
	mov r2, #0x1a
	mov r1, #2
	mov r7, #3
_021BFFD2:
	lsl r3, r6, #3
	add r0, r5, r3
	add r0, #0x26
	strb r2, [r0]
	add r0, r5, r3
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, r3
	add r0, #0x24
	strb r7, [r0]
	add r0, r5, r3
	add r0, #0x27
	ldrb r0, [r0]
	add r3, r5, r3
	add r3, #0x25
	add r0, r0, #3
	mul r0, r6
	add r0, r0, #5
	strb r0, [r3]
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	cmp r6, r0
	blo _021BFFD2
_021C0000:
	mov r0, #0x45
	str r0, [sp, #0x24]
	mov r0, #0x46
	str r0, [sp, #0x2c]
	mov r0, #0xa2
	str r0, [sp, #0x34]
	mov r0, #0x47
	str r0, [sp, #0x3c]
	ldr r1, [sp]
	add r0, sp, #4
	bl ovy332_21c0dd4
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0x54
	mov r3, #0
	bl ovy332_21c073c
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy332_21bfbf0
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, #0x48
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0050: .word 0x021C92D4
	thumb_func_end ovy332_21bff60

	thumb_func_start ovy332_21c0054
ovy332_21c0054: ; 0x021C0054
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	bl ovy332_21c1140
	cmp r6, #0
	beq _021C0096
	cmp r0, #0
	beq _021C0096
	cmp r4, #0
	beq _021C0096
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021C0096:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0054

	thumb_func_start ovy332_21c009c
ovy332_21c009c: ; 0x021C009C
	push {r4, lr}
	add r4, r0, #0
	bl ovy332_21bfc2c
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0ee8
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	pop {r4, pc}
	thumb_func_end ovy332_21c009c

	thumb_func_start ovy332_21c00bc
ovy332_21c00bc: ; 0x021C00BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BFB18
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0x54
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	pop {r4, pc}
	thumb_func_end ovy332_21c00bc

	thumb_func_start ovy332_21c00e8
ovy332_21c00e8: ; 0x021C00E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C0112
	cmp r4, #0
	beq _021C0112
	mov r0, #2
	bl sub_02045B7C
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C0112:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c00e8
_021C0118:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x25, 0xFB, 0x1B, 0x02

	thumb_func_start ovy332_21c0120
ovy332_21c0120: ; 0x021C0120
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #0
	mov r4, #0
	bl sub_02046CFC
	ldr r0, _021C01AC ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _021C01B0 ; =0xFFFFCFFD
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _021C01B4 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r5, #2
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _021C01B8 ; =0xBFFF0000
	ldr r0, _021C01BC ; =0x04000580
	str r1, [r0]
	ldr r5, _021C01C0 ; =0x021C8BC0
_021C018E:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021C018E
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_021C01AC: .word 0x04000008
_021C01B0: .word 0xFFFFCFFD
_021C01B4: .word 0x0000CFEF
_021C01B8: .word 0xBFFF0000
_021C01BC: .word 0x04000580
_021C01C0: .word 0x021C8BC0
	thumb_func_end ovy332_21c0120

	thumb_func_start ovy332_21c01c4
ovy332_21c01c4: ; 0x021C01C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x75
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021C024C ; =0x021C92D8
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021C0250 ; =0x04000050
	strh r5, [r4, #0x18]
	strh r7, [r1]
	ldr r0, _021C0254 ; =0x04001050
	sub r1, #0x50
	strh r7, [r0]
	ldr r3, [r1]
	ldr r2, _021C0258 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021C025C ; =0x021C8C00
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy332_21c0350
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy332_21c03f4
	ldr r0, _021C0260 ; =ovy332_21c033c
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C024C: .word 0x021C92D8
_021C0250: .word 0x04000050
_021C0254: .word 0x04001050
_021C0258: .word 0xFFFF1FFF
_021C025C: .word 0x021C8C00
_021C0260: .word ovy332_21c033c
	thumb_func_end ovy332_21c01c4

	thumb_func_start ovy332_21c0264
ovy332_21c0264: ; 0x021C0264
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0203A6A8
	add r0, r4, #4
	bl ovy332_21c0450
	add r0, r4, #0
	bl ovy332_21c03b0
	bl sub_020232D8
	ldr r5, _021C02AC ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021C02B0 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021C02B4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_021C02AC: .word 0x04000050
_021C02B0: .word 0x04001050
_021C02B4: .word 0xFFFF1FFF
	thumb_func_end ovy332_21c0264

	thumb_func_start ovy332_21c02b8
ovy332_21c02b8: ; 0x021C02B8
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021C0470
	add r0, r4, #0
	bl sub_021C03E8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c02b8

	thumb_func_start sub_021C02CC
sub_021C02CC: ; 0x021C02CC
	ldr r3, _021C02D4 ; =ovy332_21c051c
	add r0, #0xc
	bx r3
	nop
_021C02D4: .word ovy332_21c051c
	thumb_func_end sub_021C02CC

	thumb_func_start sub_021C02D8
sub_021C02D8: ; 0x021C02D8
	ldr r3, _021C02E0 ; =ovy332_21c053c
	add r0, #0xc
	bx r3
	nop
_021C02E0: .word ovy332_21c053c
	thumb_func_end sub_021C02D8

	thumb_func_start sub_021C02E4
sub_021C02E4: ; 0x021C02E4
	ldr r3, _021C02EC ; =sub_021C0480
	add r0, r0, #4
	bx r3
	nop
_021C02EC: .word sub_021C0480
	thumb_func_end sub_021C02E4

	thumb_func_start ovy332_21c02f0
ovy332_21c02f0: ; 0x021C02F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0
	beq _021C0310
	cmp r1, #1
	bne _021C0332
	add r4, #0xc
	add r0, r4, #0
	bl ovy332_21c04fc
	ldr r0, _021C0338 ; =0x021C8B94
	bl sub_02044710
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021C0310:
	ldr r5, _021C0338 ; =0x021C8B94
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r2, #0
	bl sub_02044710
	add r0, r4, #0
	ldrh r1, [r4, #0x18]
	add r0, #0xc
	bl ovy332_21c0484
_021C0332:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021C0338: .word 0x021C8B94
	thumb_func_end ovy332_21c02f0

	thumb_func_start ovy332_21c033c
ovy332_21c033c: ; 0x021C033C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021C03EC
	add r0, r4, #4
	bl sub_021C0478
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c033c

	thumb_func_start ovy332_21c0350
ovy332_21c0350: ; 0x021C0350
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _021C03A8 ; =0x021C8B94
	bl sub_02044710
	ldr r7, _021C03AC ; =0x021C8C30
_021C0372:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	blo _021C0372
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C03A8: .word 0x021C8B94
_021C03AC: .word 0x021C8C30
	thumb_func_end ovy332_21c0350

	thumb_func_start ovy332_21c03b0
ovy332_21c03b0: ; 0x021C03B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021C03E4 ; =0x021C8C30
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021C03BA:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blo _021C03BA
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C03E4: .word 0x021C8C30
	thumb_func_end ovy332_21c03b0

	thumb_func_start sub_021C03E8
sub_021C03E8: ; 0x021C03E8
	bx lr
	.align 2, 0
	thumb_func_end sub_021C03E8

	thumb_func_start sub_021C03EC
sub_021C03EC: ; 0x021C03EC
	ldr r3, _021C03F0 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021C03F0: .word sub_02045A5C
	thumb_func_end sub_021C03EC

	thumb_func_start ovy332_21c03f4
ovy332_21c03f4: ; 0x021C03F4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021C0448 ; =0x021C8BA4
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x20
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	ldr r0, _021C044C ; =0x021C8BE0
	mov r1, #2
	add r2, r4, #0
	bl sub_0204BE9C
	add r1, r0, #0
	ldr r0, [r5]
	str r1, [r5, #4]
	bl sub_0204C018
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204BF14
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C0448: .word 0x021C8BA4
_021C044C: .word 0x021C8BE0
	thumb_func_end ovy332_21c03f4

	thumb_func_start ovy332_21c0450
ovy332_21c0450: ; 0x021C0450
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0204BECC
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy332_21c0450

	thumb_func_start sub_021C0470
sub_021C0470: ; 0x021C0470
	ldr r3, _021C0474 ; =sub_0204B794
	bx r3
	.align 2, 0
_021C0474: .word sub_0204B794
	thumb_func_end sub_021C0470

	thumb_func_start sub_021C0478
sub_021C0478: ; 0x021C0478
	ldr r3, _021C047C ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021C047C: .word sub_0204B7C8
	thumb_func_end sub_021C0478

	thumb_func_start sub_021C0480
sub_021C0480: ; 0x021C0480
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021C0480

	thumb_func_start ovy332_21c0484
ovy332_21c0484: ; 0x021C0484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	mov r7, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	blx MI_CpuFill8
	str r7, [sp]
	ldr r0, _021C04E4 ; =ovy332_21c0120
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #1
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	lsl r0, r6, #0x11
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	lsl r0, r6, #0x16
	str r0, [sp, #8]
	mov r1, #6
	ldr r0, _021C04E8 ; =0x021C8B70
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021C04EC ; =0x021C8B7C
	ldr r2, _021C04F0 ; =0xFFFE8000
	str r0, [sp, #0x14]
	ldr r0, _021C04F4 ; =0x021C8B88
	ldr r3, _021C04F8 ; =0xFFFE0000
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r0, #2
	lsl r1, r1, #0xe
	bl sub_0204A5C8
	str r0, [r5]
	add r0, r4, #0
	bl sub_0204F918
	str r6, [r5, #4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C04E4: .word ovy332_21c0120
_021C04E8: .word 0x021C8B70
_021C04EC: .word 0x021C8B7C
_021C04F0: .word 0xFFFE8000
_021C04F4: .word 0x021C8B88
_021C04F8: .word 0xFFFE0000
	thumb_func_end ovy332_21c0484

	thumb_func_start ovy332_21c04fc
ovy332_21c04fc: ; 0x021C04FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204FB4C
	ldr r0, [r4]
	bl sub_0204A630
	bl sub_02048F44
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c04fc

	thumb_func_start ovy332_21c051c
ovy332_21c051c: ; 0x021C051C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021C0538
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	bl sub_0204F954
_021C0538:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c051c

	thumb_func_start ovy332_21c053c
ovy332_21c053c: ; 0x021C053C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021C0548
	bl sub_02049AA0
_021C0548:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c053c

	thumb_func_start ovy332_21c054c
ovy332_21c054c: ; 0x021C054C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r5, [sp, #0x34]
	add r6, r0, #0
	mov r0, #0x62
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021C0600 ; =0x021C92F0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x30]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02021998
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	lsl r0, r0, #8
	add r1, r5, #0
	strh r5, [r4, #0x1e]
	bl sub_02048530
	add r1, sp, #0x28
	str r0, [r4, #0x18]
	ldrh r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #4]
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r0, r6, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020480C0
	str r0, [r4, #0x14]
	add r1, r4, #0
	str r0, [r4, #0x20]
	add r1, #0x24
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x14]
	bl sub_020484F4
	ldrh r2, [r4, #0x1c]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, #0x14]
	bl sub_02048244
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0203A78C
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0600: .word 0x021C92F0
	thumb_func_end ovy332_21c054c

	thumb_func_start ovy332_21c0604
ovy332_21c0604: ; 0x021C0604
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021C0616
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021C0616:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021C0624
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x10]
_021C0624:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C062E
	bl sub_0202E818
_021C062E:
	ldr r0, [r4, #0xc]
	bl sub_0203A83C
	add r0, r4, #0
	bl ovy332_21c09bc
	ldr r0, [r4, #0x14]
	bl sub_02048210
	ldr r0, [r4, #0x18]
	bl sub_02048564
	ldr r0, [r4, #0x28]
	bl sub_02021A18
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy332_21c0604

	thumb_func_start ovy332_21c0654
ovy332_21c0654: ; 0x021C0654
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02021A3C
	ldr r0, [r4, #0x2c]
	cmp r0, #5
	bhi _021C0732
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C0670: ; jump table
	.short _021C06AA - _021C0670 - 2 ; case 0
	.short _021C06E8 - _021C0670 - 2 ; case 1
	.short _021C067C - _021C0670 - 2 ; case 2
	.short _021C06E8 - _021C0670 - 2 ; case 3
	.short _021C070A - _021C0670 - 2 ; case 4
	.short _021C0732 - _021C0670 - 2 ; case 5
_021C067C:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r5, [r4, #0x28]
	cmp r0, #0
	beq _021C0732
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021C0732
	ldr r0, [r4, #0x20]
	bl sub_02048244
	add r0, r4, #0
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
	b _021C0732
_021C06AA:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r5, [r4, #0x28]
	cmp r0, #0
	beq _021C06D6
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021C06D6
	ldr r0, [r4, #0x20]
	bl sub_02048244
	add r0, r4, #0
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
_021C06D6:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _021C06E4
	mov r0, #1
	b _021C06E6
_021C06E4:
	mov r0, #0
_021C06E6:
	b _021C0730
_021C06E8:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021C0732
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C06FA
	ldr r2, [r4, #0x14]
	bl sub_0202E8D8
_021C06FA:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x38
	bl sub_0202E68C
	cmp r0, #0
	beq _021C0732
	b _021C072E
_021C070A:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021C0732
	ldr r0, [r4, #0x34]
	mov r2, #0
	cmp r0, #0
	beq _021C072A
	ldr r2, [r4, #0x14]
	bl sub_0202E8D8
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x38
	bl sub_0202E68C
	add r2, r0, #0
_021C072A:
	cmp r2, #0
	beq _021C0732
_021C072E:
	mov r0, #1
_021C0730:
	strh r0, [r4, #0x30]
_021C0732:
	ldr r0, [r4, #0xc]
	bl sub_0203A7F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0654

	thumb_func_start ovy332_21c073c
ovy332_21c073c: ; 0x021C073C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r5, #0x18]
	add r4, r3, #0
	bl sub_02048838
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c077c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c073c

	thumb_func_start ovy332_21c0758
ovy332_21c0758: ; 0x021C0758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r2, #0
	bl sub_02048580
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c077c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0758

	thumb_func_start sub_021C0770
sub_021C0770: ; 0x021C0770
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021C0770

	thumb_func_start sub_021C0774
sub_021C0774: ; 0x021C0774
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	str r3, [r0, #0x48]
	bx lr
	thumb_func_end sub_021C0774

	thumb_func_start ovy332_21c077c
ovy332_21c077c: ; 0x021C077C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r5, r1, #0
	bl sub_02021C44
	ldr r0, [r4, #0x14]
	bl sub_020484F4
	ldrh r2, [r4, #0x1c]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021C07AC
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021C07AC:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C07BA
	bl sub_0202E818
	mov r0, #0
	str r0, [r4, #0x34]
_021C07BA:
	add r0, r4, #0
	bl ovy332_21c0960
	ldr r0, [r4, #0x14]
	bl sub_020484F4
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	ldr r3, [r4, #0x18]
	add r1, #0x40
	bl ovy332_21c0a64
	cmp r5, #4
	bls _021C07E2
	b _021C0948
_021C07E2:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C07EE: ; jump table
	.short _021C0816 - _021C07EE - 2 ; case 0
	.short _021C08B8 - _021C07EE - 2 ; case 1
	.short _021C07F8 - _021C07EE - 2 ; case 2
	.short _021C084A - _021C07EE - 2 ; case 3
	.short _021C08F2 - _021C07EE - 2 ; case 4
_021C07F8:
	bl sub_02005718
	ldrh r1, [r4, #0x1e]
	mov r2, #0x1f
	str r1, [sp]
	ldrh r3, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	and r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl sub_02035604
	str r0, [r4, #0x10]
	b _021C0816
_021C0816:
	ldr r0, [r4, #0x20]
	ldr r5, [r4, #0x28]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r5, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	mov r0, #0
	b _021C0946
_021C084A:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C085A
	ldr r0, _021C0950 ; =0x021C9304
	ldr r2, _021C0954 ; =0x021C9308
	mov r1, #0
	bl sub_0203CB80
_021C085A:
	add r0, r4, #0
	ldr r1, _021C0958 ; =0x00000402
	add r0, #0x38
	bl sub_0202E678
	ldrh r0, [r4, #0x1c]
	mov r7, #0x1f
	ldrh r3, [r4, #0x1e]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0
	mov r5, #1
	mov r6, #0
	bl sub_0202E7A4
	str r0, [r4, #0x34]
	mov r0, #1
	bl sub_02017C50
_021C0884:
	ldr r1, [r4, #4]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x1c]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02022268
	str r0, [r4, #8]
	str r5, [r4, #0x2c]
	b _021C0948
_021C08B8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C08C8
	ldr r0, _021C0950 ; =0x021C9304
	ldr r2, _021C0954 ; =0x021C9308
	mov r1, #0
	bl sub_0203CB80
_021C08C8:
	add r0, r4, #0
	add r0, #0x38
	mov r1, #2
	bl sub_0202E678
	ldrh r0, [r4, #0x1c]
	mov r7, #0x1f
	ldrh r3, [r4, #0x1e]
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0
	mov r5, #1
	mov r6, #0
	bl sub_0202E7A4
	str r0, [r4, #0x34]
	bl sub_02017BCC
	b _021C0884
_021C08F2:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021C0902
	ldr r0, _021C0950 ; =0x021C9304
	ldr r2, _021C0954 ; =0x021C9308
	mov r1, #0
	bl sub_0203CB80
_021C0902:
	add r0, r4, #0
	add r0, #0x38
	mov r1, #2
	bl sub_0202E678
	bl sub_02017BCC
	ldr r1, [r4, #4]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #0x10]
	ldrh r1, [r4, #0x1c]
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02022268
	str r0, [r4, #8]
	mov r0, #4
_021C0946:
	str r0, [r4, #0x2c]
_021C0948:
	mov r0, #0
	strh r0, [r4, #0x30]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C0950: .word 0x021C9304
_021C0954: .word 0x021C9308
_021C0958: .word 0x00000402
	thumb_func_end ovy332_21c077c

	thumb_func_start sub_021C095C
sub_021C095C: ; 0x021C095C
	ldrh r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_021C095C

	thumb_func_start ovy332_21c0960
ovy332_21c0960: ; 0x021C0960
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	strh r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021C0986
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	ldr r0, [r4, #0x14]
	bl sub_020484D4
	bl sub_02044F90
_021C0986:
	pop {r4, pc}
	thumb_func_end ovy332_21c0960

	thumb_func_start ovy332_21c0988
ovy332_21c0988: ; 0x021C0988
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r3, r2, #0
	ldr r0, [r4, #0x14]
	mov r1, #2
	add r2, r5, #0
	bl sub_02024E80
	mov r0, #1
	strh r0, [r4, #0x32]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c0988

	thumb_func_start ovy332_21c09a0
ovy332_21c09a0: ; 0x021C09A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_020484F4
	ldrh r2, [r4, #0x1c]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c09a0

	thumb_func_start ovy332_21c09bc
ovy332_21c09bc: ; 0x021C09BC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x32]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	beq _021C09D4
	mov r1, #2
	bl sub_02024EEC
	mov r0, #0
	strh r0, [r4, #0x32]
	pop {r4, pc}
_021C09D4:
	bl sub_020484B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c09bc

	thumb_func_start ovy332_21c09dc
ovy332_21c09dc: ; 0x021C09DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #8]
	ldr r0, [r5, #0x14]
	bl sub_020484E8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	bl sub_020484EC
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_020484D8
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_020484DC
	add r4, r0, #0
	ldrh r0, [r5, #0x32]
	cmp r0, #0
	beq _021C0A26
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	sub r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #2
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021C0A26:
	ldr r0, [r5, #0x14]
	bl sub_020484D4
	str r4, [sp]
	ldr r1, [sp, #8]
	add r2, r7, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	add r3, r6, #0
	bl sub_0204566C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c09dc

	thumb_func_start ovy332_21c0a40
ovy332_21c0a40: ; 0x021C0A40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021C0A60
	ldrh r1, [r4, #0x1c]
	mov r0, #0x1f
	ldrh r3, [r4, #0x1e]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0
	bl sub_0202E7A4
	str r0, [r4, #0x34]
_021C0A60:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0a40

	thumb_func_start ovy332_21c0a64
ovy332_21c0a64: ; 0x021C0A64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r7, [sp, #0x20]
	ldr r4, [sp, #0x24]
	cmp r0, #3
	bhi _021C0B1A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C0A82: ; jump table
	.short _021C0A8A - _021C0A82 - 2 ; case 0
	.short _021C0A96 - _021C0A82 - 2 ; case 1
	.short _021C0AD4 - _021C0A82 - 2 ; case 2
	.short _021C0AF6 - _021C0A82 - 2 ; case 3
_021C0A8A:
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021C0A96:
	add r0, r2, #0
	bl sub_02046EF8
	lsr r6, r0, #1
	ldr r0, [sp]
	bl sub_02046EFC
	lsr r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	add sp, #0xc
	sub r1, r0, r1
	ldr r0, [r5]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021C0AD4:
	add r0, r2, #0
	bl sub_02046EFC
	lsr r6, r0, #1
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r6, r0
	ldr r0, [r5]
	add sp, #0xc
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021C0AF6:
	add r0, r2, #0
	bl sub_02046EF8
	add r6, r0, #0
	add r1, r7, #0
	ldr r0, [sp, #4]
	mov r2, #0
	mov r7, #0
	bl sub_02022888
	sub r1, r6, r0
	bpl _021C0B10
	add r1, r7, #0
_021C0B10:
	ldr r0, [r5]
	add r0, r1, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
_021C0B1A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0a64

	thumb_func_start ovy332_21c0b20
ovy332_21c0b20: ; 0x021C0B20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0x18]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r5, r1, #0
	str r0, [sp, #0x38]
	ldr r0, _021C0BA4 ; =0x0000025D
	lsl r1, r5, #2
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r3, _021C0BA8 ; =0x021C92F0
	add r1, r1, #4
	mov r2, #1
	bl sub_0203A1FC
	add r7, r0, #0
	mov r4, #0
	str r5, [r7]
	cmp r5, #0
	bls _021C0B9E
_021C0B54:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	add r5, r0, r1
	lsl r0, r4, #2
	add r6, r7, r0
	ldrh r0, [r5, #6]
	ldrh r1, [r2, r1]
	ldrh r2, [r5, #2]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldrh r3, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	bl ovy332_21c054c
	mov r1, #0x11
	str r0, [r6, #4]
	lsl r1, r1, #6
	bl sub_021C0770
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x34]
	ldr r2, [r5, #8]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0B54
_021C0B9E:
	add r0, r7, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0BA4: .word 0x0000025D
_021C0BA8: .word 0x021C92F0
	thumb_func_end ovy332_21c0b20

	thumb_func_start ovy332_21c0bac
ovy332_21c0bac: ; 0x021C0BAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	bls _021C0BCA
_021C0BB8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ovy332_21c0604
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0BB8
_021C0BCA:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0bac

	thumb_func_start ovy332_21c0bd4
ovy332_21c0bd4: ; 0x021C0BD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	bls _021C0BF2
_021C0BE0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ovy332_21c0654
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0BE0
_021C0BF2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c0bd4

	thumb_func_start ovy332_21c0bf4
ovy332_21c0bf4: ; 0x021C0BF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	bls _021C0C16
_021C0C02:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_021C095C
	orr r6, r0
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0C02
_021C0C16:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0bf4

	thumb_func_start ovy332_21c0c1c
ovy332_21c0c1c: ; 0x021C0C1C
	push {r3, lr}
	sub sp, #8
	ldr r2, [r0, #0x1c]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x18
	mov r2, #0x11
	sub r2, r2, r3
	str r3, [sp]
	lsl r2, r2, #0x18
	str r1, [sp, #4]
	mov r1, #0x15
	lsr r2, r2, #0x18
	mov r3, #0xa
	bl ovy332_21c0c40
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0c1c

	thumb_func_start ovy332_21c0c40
ovy332_21c0c40: ; 0x021C0C40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r7, [sp, #0x64]
	ldr r0, _021C0D44 ; =0x000002E5
	ldr r3, _021C0D48 ; =0x021C92F0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x1c
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x1c
	add r6, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #8]
	str r0, [r6, #4]
	ldrh r0, [r5, #0x2c]
	str r0, [r6, #0x18]
	add r0, sp, #0x60
	ldrb r0, [r0]
	str r0, [sp]
	ldrh r0, [r5, #0x22]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r0, [r5, #0x20]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x14]
	lsr r0, r0, #0x18
	bl sub_020480C0
	ldrh r3, [r5, #0x24]
	ldrh r2, [r5, #0x26]
	str r0, [r6]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02024E80
	ldr r0, [r6]
	bl sub_02048244
	ldr r0, [r6]
	bl sub_0204826C
	ldr r0, [r6]
	add r1, r7, #0
	str r0, [r6, #8]
	ldr r0, [r5, #0x1c]
	strb r4, [r6, #0xc]
	bl sub_02024F60
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bls _021C0CE0
_021C0CC6:
	lsl r2, r4, #2
	str r7, [sp]
	add r2, r5, r2
	ldr r0, [r6, #0x14]
	ldr r1, [r5]
	ldr r2, [r2, #0xc]
	add r3, r4, #0
	bl sub_02024FBC
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0CC6
_021C0CE0:
	ldr r3, _021C0D4C ; =0x021C8DA4
	add r2, sp, #0x18
	mov r4, #6
_021C0CE6:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _021C0CE6
	ldr r0, [r3]
	add r3, r7, #0
	str r0, [r2]
	ldr r0, [r6, #0x14]
	ldrh r2, [r5, #0x2e]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x18
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x38]
	add r0, r6, #0
	add r0, #8
	str r0, [sp, #0x3c]
	ldr r0, [r5, #8]
	str r0, [sp, #0x40]
	ldr r0, [r5, #4]
	str r0, [sp, #0x44]
	add r0, sp, #0x18
	bl sub_020256F0
	add r1, r7, #0
	str r0, [r6, #0x10]
	bl sub_02026510
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldr r0, [r6, #0x10]
	beq _021C0D36
	add r1, r4, #0
	b _021C0D38
_021C0D36:
	mov r1, #1
_021C0D38:
	bl sub_02026520
	add r0, r6, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021C0D44: .word 0x000002E5
_021C0D48: .word 0x021C92F0
_021C0D4C: .word 0x021C8DA4
	thumb_func_end ovy332_21c0c40

	thumb_func_start ovy332_21c0d50
ovy332_21c0d50: ; 0x021C0D50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	ldr r0, [r4, #0x14]
	bl sub_02024FAC
	ldr r0, [r4]
	mov r1, #0
	bl sub_02024EEC
	ldr r0, [r4]
	bl sub_020484B4
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy332_21c0d50

	thumb_func_start ovy332_21c0d80
ovy332_21c0d80: ; 0x021C0D80
	push {r4, lr}
	add r4, r0, #0
	bl ovy332_21c0d9c
	ldr r0, [r4, #0x10]
	bl sub_020258A4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _021C0D98
	ldr r0, [r4, #0x18]
_021C0D98:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0d80

	thumb_func_start ovy332_21c0d9c
ovy332_21c0d9c: ; 0x021C0D9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xc]
	ldr r4, [r5, #4]
	cmp r0, #0
	beq _021C0DC4
	ldr r0, [r5, #8]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021C0DC4
	ldr r0, [r5, #8]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #0xc]
_021C0DC4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _021C0DCE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C0DCE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0d9c

	thumb_func_start ovy332_21c0dd4
ovy332_21c0dd4: ; 0x021C0DD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0xe9
	str r1, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, _021C0EDC ; =0x021C92F0
	mov r1, #0xec
	mov r2, #1
	bl sub_0203A1FC
	str r0, [sp, #0x14]
	add r4, r5, #0
	add r3, r0, #0
	mov r2, #9
_021C0DF6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021C0DF6
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x18
	str r1, [r0, #0x64]
	ldr r0, _021C0EE0 ; =0x00000115
	ldr r3, [sp, #0x10]
	mov r1, #1
	bl sub_0204B354
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r4, [r0, #0xc]
	add r1, #0x68
	add r0, r4, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x20
	add r1, #0x88
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r1, [sp, #0x14]
	add r4, #0x40
	add r0, r4, #0
	add r1, #0xa8
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r6, #0
	bl sub_0203A24C
	ldr r0, [r5, #0x18]
	mov r7, #0
	cmp r0, #0
	bls _021C0EBE
_021C0E4C:
	lsl r0, r7, #3
	add r4, r5, r0
	ldr r0, [sp, #0x14]
	lsl r1, r7, #2
	add r6, r0, r1
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r1, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r2, #0x25
	str r0, [sp, #0xc]
	ldr r0, [r5]
	add r3, #0x26
	lsl r0, r0, #0x10
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldrb r3, [r3]
	lsr r0, r0, #0x10
	bl ovy332_21c054c
	ldr r1, _021C0EE4 ; =0x000039E1
	str r0, [r6, #0x48]
	bl sub_021C0770
	ldr r0, [r6, #0x48]
	bl ovy332_21c09a0
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	ldr r0, [r6, #0x48]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl ovy332_21c0988
	ldr r0, [r6, #0x48]
	ldr r1, [r5, #0x10]
	ldr r2, [r4, #0x20]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r5, #0x18]
	add r7, r7, #1
	cmp r7, r0
	blo _021C0E4C
_021C0EBE:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x64]
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #0x48]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy332_21c09dc
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C0EDC: .word 0x021C92F0
_021C0EE0: .word 0x00000115
_021C0EE4: .word 0x000039E1
	thumb_func_end ovy332_21c0dd4

	thumb_func_start ovy332_21c0ee8
ovy332_21c0ee8: ; 0x021C0EE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	bls _021C0F06
_021C0EF4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	bl ovy332_21c0604
	ldr r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _021C0EF4
_021C0F06:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c0ee8

	thumb_func_start ovy332_21c0f10
ovy332_21c0f10: ; 0x021C0F10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	mov r5, #0
	str r5, [r4, #0x60]
	cmp r0, #0
	beq _021C0F2C
	cmp r0, #1
	bne _021C0F24
	b _021C106C
_021C0F24:
	cmp r0, #2
	bne _021C0F2A
	b _021C10CA
_021C0F2A:
	pop {r3, r4, r5, r6, r7, pc}
_021C0F2C:
	bl sub_0203DF44
	add r7, r0, #0
	bl sub_0203DEFC
	mov r1, #0x40
	add r6, r5, #0
	tst r1, r7
	beq _021C0F56
	ldr r0, _021C10D0 ; =0x00000548
	bl sub_02006254
	ldr r0, [r4, #0x64]
	sub r0, r0, #1
	str r0, [r4, #0x64]
	bpl _021C0F50
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
_021C0F50:
	str r0, [r4, #0x64]
_021C0F52:
	mov r5, #1
	b _021C0FB0
_021C0F56:
	mov r1, #0x80
	tst r1, r7
	beq _021C0F72
	ldr r0, _021C10D0 ; =0x00000548
	bl sub_02006254
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x64]
	blx sub_0208D868
	str r1, [r4, #0x64]
	b _021C0F52
_021C0F72:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _021C0F9A
	add r6, r2, #0
	ldr r2, [r4, #0x40]
	cmp r2, #0
	beq _021C0F8E
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x44]
	blx r2
	cmp r0, #0
	bne _021C0F8E
	add r6, r5, #0
_021C0F8E:
	cmp r6, #0
	beq _021C0F96
	ldr r0, _021C10D4 ; =0x0000054C
	b _021C0FAC
_021C0F96:
	ldr r0, _021C10D8 ; =0x00000557
	b _021C0FAC
_021C0F9A:
	mov r1, #2
	tst r0, r1
	beq _021C0FB0
	ldr r0, [r4, #0x18]
	add r6, r2, #0
	sub r0, r0, #1
	str r0, [r4, #0x64]
	ldr r0, _021C10DC ; =0x00000551
	str r2, [r4, #0x60]
_021C0FAC:
	bl sub_02006254
_021C0FB0:
	add r0, r4, #0
	add r0, #0xe8
	ldrh r0, [r0]
	mov r1, #1
	lsl r1, r1, #0xa
	add r3, r0, r1
	lsl r2, r1, #6
	cmp r3, r2
	blt _021C0FCA
	mov r1, #0x3f
	lsl r1, r1, #0xa
	sub r1, r0, r1
	b _021C0FD2
_021C0FCA:
	add r0, r4, #0
	add r0, #0xe8
	ldrh r0, [r0]
	add r1, r0, r1
_021C0FD2:
	add r0, r4, #0
	add r0, #0xe8
	strh r1, [r0]
	cmp r5, #0
	beq _021C101C
	ldr r0, [r4, #0x18]
	mov r5, #0
	cmp r0, #0
	bls _021C1006
_021C0FE4:
	ldr r0, [r4, #0x64]
	cmp r5, r0
	ldr r0, [r4, #0xc]
	bne _021C0FF0
	add r0, r0, #1
	b _021C0FF0
_021C0FF0:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	bl ovy332_21c09dc
	ldr r0, [r4, #0x18]
	add r5, r5, #1
	cmp r5, r0
	blo _021C0FE4
_021C1006:
	mov r0, #1
	str r0, [r4, #0x60]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	strh r1, [r0]
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
_021C101C:
	cmp r6, #0
	beq _021C10CE
	ldr r0, [r4, #0x18]
	mov r5, #0
	cmp r0, #0
	bls _021C1040
_021C1028:
	lsl r0, r5, #2
	ldr r1, [r4, #0xc]
	add r0, r4, r0
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x48]
	lsr r1, r1, #0x18
	bl ovy332_21c09dc
	ldr r0, [r4, #0x18]
	add r5, r5, #1
	cmp r5, r0
	blo _021C1028
_021C1040:
	ldr r3, [r4, #0xc]
	ldr r0, [r4]
	add r3, r3, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsl r3, r3, #0x15
	lsr r0, r0, #0x18
	add r1, #0x88
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_02045320
	ldr r0, [r4, #0x58]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0x58]
	add r0, r4, #0
	add r0, #0xe8
	add r4, #0xea
	strh r1, [r0]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C106C:
	add r0, r4, #0
	add r0, #0xea
	ldrh r0, [r0]
	lsr r0, r0, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r0, [r4, #0xc]
	beq _021C1088
	add r0, r0, #1
	b _021C1088
_021C1088:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	bl ovy332_21c09dc
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xea
	ldrh r2, [r0]
	add r0, r4, #0
	add r0, #0xea
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xea
	strh r1, [r0]
	cmp r2, #0x10
	bls _021C10CE
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_021C10CA:
	mov r0, #1
	str r0, [r4, #0x5c]
_021C10CE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C10D0: .word 0x00000548
_021C10D4: .word 0x0000054C
_021C10D8: .word 0x00000557
_021C10DC: .word 0x00000551
	thumb_func_end ovy332_21c0f10

	thumb_func_start ovy332_21c10e0
ovy332_21c10e0: ; 0x021C10E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	bls _021C1100
_021C10EE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	bl ovy332_21c0654
	ldr r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _021C10EE
_021C1100:
	add r6, r5, #0
	mov r4, #0
	mov r7, #0xf
	add r6, #0xc8
_021C1108:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r4, #1
	str r0, [sp]
	add r0, r5, r1
	add r0, #0xa8
	ldrh r0, [r0]
	add r2, r5, #0
	add r2, #0xe8
	str r0, [sp, #4]
	add r0, r5, r1
	add r0, #0x88
	ldrh r0, [r0]
	add r1, r6, r1
	str r0, [sp, #8]
	ldr r3, [r5, #0xc]
	ldrh r2, [r2]
	add r3, r3, #1
	lsl r3, r3, #0x18
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl ovy332_21c1c28
	add r4, r4, #1
	cmp r4, #0x10
	blt _021C1108
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c10e0

	thumb_func_start ovy332_21c1140
ovy332_21c1140: ; 0x021C1140
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	bls _021C1162
_021C114E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	bl sub_021C095C
	orr r6, r0
	ldr r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _021C114E
_021C1162:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1140

	thumb_func_start sub_021C1168
sub_021C1168: ; 0x021C1168
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_021C1168

	thumb_func_start ovy332_21c116c
ovy332_21c116c: ; 0x021C116C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0xc]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x64]
	add r1, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x48]
	lsr r1, r1, #0x18
	bl ovy332_21c09dc
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c116c

	thumb_func_start sub_021C1198
sub_021C1198: ; 0x021C1198
	bx lr
	.align 2, 0
	thumb_func_end sub_021C1198

	thumb_func_start sub_021C119C
sub_021C119C: ; 0x021C119C
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end sub_021C119C

	thumb_func_start sub_021C11A0
sub_021C11A0: ; 0x021C11A0
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end sub_021C11A0

	thumb_func_start ovy332_21c11a4
ovy332_21c11a4: ; 0x021C11A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r1, r5, #1
	mov r0, #0xc
	add r6, r1, #0
	mul r6, r0
	ldr r0, _021C11E4 ; =0x0000050E
	str r2, [sp, #4]
	str r0, [sp]
	add r0, r3, #0
	ldr r3, _021C11E8 ; =0x021C92F0
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r7, [r4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	str r5, [r4, #8]
	bl ovy332_21c1228
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C11E4: .word 0x0000050E
_021C11E8: .word 0x021C92F0
	thumb_func_end ovy332_21c11a4

	thumb_func_start sub_021C11EC
sub_021C11EC: ; 0x021C11EC
	ldr r3, _021C11F0 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021C11F0: .word sub_0203A24C
	thumb_func_end sub_021C11EC

	thumb_func_start ovy332_21c11f4
ovy332_21c11f4: ; 0x021C11F4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	bl sub_021C12DC
	add r1, r0, #0
	ldr r3, [r1]
	cmp r3, #0
	beq _021C120E
	ldr r2, [r4]
	add r0, r4, #0
	add r1, r1, #4
	blx r3
_021C120E:
	pop {r4, pc}
	thumb_func_end ovy332_21c11f4

	thumb_func_start ovy332_21c1210
ovy332_21c1210: ; 0x021C1210
	push {r4, lr}
	mov r1, #0
	mov r4, #0
	bl sub_021C12DC
	ldr r0, [r0]
	cmp r0, #0
	bne _021C1222
	mov r4, #1
_021C1222:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1210

	thumb_func_start ovy332_21c1228
ovy332_21c1228: ; 0x021C1228
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #4]
	bl sub_021C12DC
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c1228

	thumb_func_start ovy332_21c1240
ovy332_21c1240: ; 0x021C1240
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	bl sub_021C12DC
	ldr r0, [r0]
	cmp r0, #0
	beq _021C1258
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021C1258:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c1228
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1240

	thumb_func_start sub_021C1264
sub_021C1264: ; 0x021C1264
	ldr r3, _021C126C ; =ovy332_21c1228
	mov r1, #0
	str r1, [r0, #4]
	bx r3
	.align 2, 0
_021C126C: .word ovy332_21c1228
	thumb_func_end sub_021C1264

	thumb_func_start ovy332_21c1270
ovy332_21c1270: ; 0x021C1270
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ovy332_21c1228
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021C1284
	sub r0, r0, #1
	str r0, [r4, #4]
_021C1284:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1270

	thumb_func_start ovy332_21c1288
ovy332_21c1288: ; 0x021C1288
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #4]
	bl sub_021C12DC
	ldr r0, [r0]
	cmp r0, r4
	bne _021C129C
	mov r0, #1
	pop {r4, pc}
_021C129C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy332_21c1288

	thumb_func_start ovy332_21c12a0
ovy332_21c12a0: ; 0x021C12A0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #4]
	bl sub_021C12DC
	ldr r1, [r0, #4]
	add r1, r1, r4
	str r1, [r0, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c12a0

	thumb_func_start ovy332_21c12b4
ovy332_21c12b4: ; 0x021C12B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	ble _021C12D8
_021C12C0:
	add r0, r5, #0
	bl sub_021C12DC
	ldr r0, [r0]
	cmp r0, r4
	beq _021C12D8
	add r0, r5, #0
	bl ovy332_21c1270
	ldr r1, [r5, #4]
	cmp r1, #0
	bgt _021C12C0
_021C12D8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c12b4

	thumb_func_start sub_021C12DC
sub_021C12DC: ; 0x021C12DC
	mov r2, #0xc
	add r0, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021C12DC

	thumb_func_start ovy332_21c12e8
ovy332_21c12e8: ; 0x021C12E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021C1304 ; =0x00000619
	ldr r3, _021C1308 ; =0x021C92F0
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x1c
	mov r2, #1
	bl sub_0203A1FC
	str r4, [r0]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021C1304: .word 0x00000619
_021C1308: .word 0x021C92F0
	thumb_func_end ovy332_21c12e8

	thumb_func_start sub_021C130C
sub_021C130C: ; 0x021C130C
	ldr r3, _021C1310 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021C1310: .word sub_0203A24C
	thumb_func_end sub_021C130C

	thumb_func_start ovy332_21c1314
ovy332_21c1314: ; 0x021C1314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _021C1376
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C132A: ; jump table
	.short _021C1376 - _021C132A - 2 ; case 0
	.short _021C1336 - _021C132A - 2 ; case 1
	.short _021C1346 - _021C132A - 2 ; case 2
	.short _021C1376 - _021C132A - 2 ; case 3
	.short _021C135A - _021C132A - 2 ; case 4
	.short _021C1368 - _021C132A - 2 ; case 5
_021C1336:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _021C1342
	ldrh r1, [r4, #0x18]
	ldr r0, [r4]
	blx r2
_021C1342:
	mov r0, #2
	str r0, [r4, #4]
_021C1346:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021C1354
	ldr r0, [r4]
	blx r1
	cmp r0, #0
	beq _021C1376
_021C1354:
	mov r0, #3
	str r0, [r4, #4]
	pop {r4, pc}
_021C135A:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021C1364
	ldr r0, [r4]
	blx r1
_021C1364:
	mov r0, #5
	str r0, [r4, #4]
_021C1368:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021C1372
	ldr r0, [r4]
	blx r1
_021C1372:
	mov r0, #0
	str r0, [r4, #4]
_021C1376:
	pop {r4, pc}
	thumb_func_end ovy332_21c1314

	thumb_func_start ovy332_21c1378
ovy332_21c1378: ; 0x021C1378
	push {r4, r5}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	bne _021C1396
	add r3, r5, #0
	add r3, #8
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	strh r2, [r5, #0x18]
	str r0, [r5, #4]
_021C1396:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c1378

	thumb_func_start sub_021C139C
sub_021C139C: ; 0x021C139C
	ldr r1, [r0, #4]
	cmp r1, #3
	bne _021C13A6
	mov r1, #4
	str r1, [r0, #4]
_021C13A6:
	bx lr
	thumb_func_end sub_021C139C

	thumb_func_start sub_021C13A8
sub_021C13A8: ; 0x021C13A8
	ldr r0, [r0, #4]
	mov r1, #1
	cmp r0, #0
	beq _021C13B6
	cmp r0, #3
	beq _021C13B6
	mov r1, #0
_021C13B6:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C13A8

	thumb_func_start ovy332_21c13bc
ovy332_21c13bc: ; 0x021C13BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _021C13D4
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021C13D0
	ldr r0, [r4]
	blx r1
_021C13D0:
	mov r0, #0
	str r0, [r4, #4]
_021C13D4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c13bc

	thumb_func_start ovy332_21c13d8
ovy332_21c13d8: ; 0x021C13D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r0, #0
	add r7, r3, #0
	ldr r6, [sp, #0x44]
	ldr r0, _021C1464 ; =0x000006CE
	ldr r3, _021C1468 ; =0x021C92F0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x24
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r6, #0
	bl sub_02021998
	str r0, [r4, #0x20]
	mov r0, #0x80
	add r1, r6, #0
	bl sub_02048530
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #0x20
	add r3, r6, #0
	bl sub_02046E28
	add r6, sp, #0xc
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r4]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1, #4]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #6]
	ldrb r0, [r5, #6]
	str r7, [sp, #0x14]
	strb r0, [r1, #0x10]
	ldr r0, [sp, #0x3c]
	strh r0, [r1, #0x12]
	str r0, [sp, #0x20]
	ldrb r0, [r5, #7]
	strb r0, [r1, #0x11]
	add r0, sp, #0x38
	ldrb r0, [r0]
	add r1, r6, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	bl sub_0202AEC4
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1464: .word 0x000006CE
_021C1468: .word 0x021C92F0
	thumb_func_end ovy332_21c13d8

	thumb_func_start ovy332_21c146c
ovy332_21c146c: ; 0x021C146C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0202B030
	ldr r0, [r4]
	bl sub_02046EDC
	ldr r0, [r4, #0x18]
	bl sub_02048564
	ldr r0, [r4, #0x20]
	bl sub_02021A18
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy332_21c146c

	thumb_func_start ovy332_21c1490
ovy332_21c1490: ; 0x021C1490
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r2, #0
	ldrh r2, [r5, #4]
	add r6, r1, #0
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	add r4, r3, #0
	bl sub_0204713C
	ldr r2, [r5, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02048838
	add r1, r5, #0
	str r4, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	ldr r2, [r5]
	ldr r3, [r5, #0x18]
	add r1, #0xc
	bl ovy332_21c0a64
	ldr r0, [r5, #0x18]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x20]
	ldr r1, [r5]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	str r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c1490

	thumb_func_start sub_021C14F0
sub_021C14F0: ; 0x021C14F0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_021C14F0

	thumb_func_start ovy332_21c14f4
ovy332_21c14f4: ; 0x021C14F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02021A3C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021C151A
	ldr r0, [r4, #0x20]
	ldr r1, [r4]
	bl sub_02021C1C
	cmp r0, #0
	bne _021C151A
	ldr r0, [r4, #0x1c]
	bl sub_0202B0F4
	mov r0, #0
	str r0, [r4, #8]
_021C151A:
	pop {r4, pc}
	thumb_func_end ovy332_21c14f4

	thumb_func_start sub_021C151C
sub_021C151C: ; 0x021C151C
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021C1526
	mov r0, #1
	bx lr
_021C1526:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C151C

	thumb_func_start sub_021C152C
sub_021C152C: ; 0x021C152C
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021C152C

	thumb_func_start ovy332_21c1530
ovy332_21c1530: ; 0x021C1530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldmia r1!, {r0, r1}
	add r4, r3, #0
	ldr r3, [r2]
	str r1, [r5, #4]
	str r1, [r5, #0xc]
	ldr r1, [r2, #4]
	str r0, [r5]
	str r0, [r5, #8]
	str r3, [r5, #0x10]
	str r1, [r5, #0x14]
	str r4, [r5, #0x24]
	beq _021C15BA
	sub r0, r3, r0
	cmp r0, #0
	ble _021C1564
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C1572
_021C1564:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C1572:
	blx sub_0208DA4C
	add r1, r4, #0
	blx sub_0208D65C
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	cmp r0, #0
	ble _021C159A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C15A8
_021C159A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C15A8:
	blx sub_0208DA4C
	add r1, r4, #0
	blx sub_0208D65C
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	pop {r3, r4, r5, pc}
_021C15BA:
	sub r0, r4, #2
	str r0, [r5, #0x20]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c1530

	thumb_func_start ovy332_21c15c0
ovy332_21c15c0: ; 0x021C15C0
	push {r3, r4}
	ldr r1, [r0, #0x24]
	ldr r2, [r0, #0x20]
	sub r1, r1, #1
	cmp r2, r1
	bge _021C15F0
	add r1, r2, #1
	ldr r2, [r0, #0x18]
	ldr r4, [r0, #8]
	add r3, r2, #0
	mul r3, r1
	asr r2, r3, #0xc
	add r2, r4, r2
	str r2, [r0]
	ldr r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	mul r1, r2
	ldr r3, [r0, #0xc]
	asr r1, r1, #0xc
	add r1, r3, r1
	str r1, [r0, #4]
	mov r0, #0
	pop {r3, r4}
	bx lr
_021C15F0:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	str r2, [r0]
	str r1, [r0, #4]
	mov r0, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c15c0

	thumb_func_start sub_021C1600
sub_021C1600: ; 0x021C1600
	ldr r2, [r0]
	ldr r0, [r0, #4]
	strh r2, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C1600

	thumb_func_start ovy332_21c160c
ovy332_21c160c: ; 0x021C160C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x20]
	cmp r0, #0
	ble _021C1632
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C1640
_021C1632:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C1640:
	blx sub_0208DA4C
	str r0, [sp, #8]
	ldr r0, [r4]
	cmp r0, #0
	ble _021C165E
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C166C
_021C165E:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C166C:
	blx sub_0208DA4C
	str r0, [r5]
	ldr r0, [sp, #8]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021C1692
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C16A0
_021C1692:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C16A0:
	blx sub_0208DA4C
	str r0, [sp, #4]
	ldr r0, [r4]
	cmp r0, #0
	ble _021C16BE
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C16CC
_021C16BE:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C16CC:
	blx sub_0208DA4C
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _021C16F2
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C1700
_021C16F2:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C1700:
	blx sub_0208DA4C
	add r4, r0, #0
	ldr r0, [r7]
	cmp r0, #0
	ble _021C171E
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C172C
_021C171E:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C172C:
	blx sub_0208DA4C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r1, r5, #0
	mov r7, #0
	add r0, #0x18
	add r1, #0xc
	str r4, [r5, #0x1c]
	str r7, [r5, #0x20]
	blx VEC_Distance
	add r4, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x18
	add r1, #0xc
	add r2, #0x24
	bl VEC_Subtract
	add r0, r5, #0
	add r0, #0x24
	add r1, r0, #0
	blx VEC_Normalize
	ldr r0, [sp]
	add r1, r0, #0
	mul r1, r6
	sub r0, r4, r1
	add r1, r6, #0
	mul r1, r6
	lsl r0, r0, #1
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [sp]
	str r0, [r5, #0x34]
	str r1, [r5, #0x30]
	str r7, [r5, #0x38]
	str r6, [r5, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c160c

	thumb_func_start ovy332_21c1784
ovy332_21c1784: ; 0x021C1784
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x38]
	sub r0, r0, #1
	cmp r1, r0
	bge _021C17EA
	add r6, r1, #1
	ldr r0, [r5, #0x30]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	str r6, [r5, #0x38]
	blx sub_0208D60C
	add r2, r6, #0
	add r7, r0, #0
	mul r2, r6
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r7, r2
	adc r4, r3
	lsl r4, r4, #0x14
	lsr r6, r6, #0xc
	orr r6, r4
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r1, r5, #0
	add r2, r5, #0
	add r0, r6, r0
	add r1, #0x24
	add r2, #0xc
	add r3, r5, #0
	blx VEC_MultAdd
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C17EA:
	add r2, r5, #0
	add r2, #0x18
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1784

	thumb_func_start sub_021C17FC
sub_021C17FC: ; 0x021C17FC
	ldr r2, [r0]
	ldr r0, [r0, #4]
	asr r2, r2, #0xc
	asr r0, r0, #0xc
	strh r2, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C17FC

	thumb_func_start ovy332_21c180c
ovy332_21c180c: ; 0x021C180C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	mov r0, #0x85
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021C1904 ; =0x021C92F0
	mov r1, #0xbc
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r1, [sp, #0xc]
	mov r0, #0x80
	bl sub_02048530
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	add r5, r6, #0
	add r3, r4, #4
	mov r2, #0x16
_021C183C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021C183C
	ldr r5, _021C1908 ; =0x021C8D7C
	add r3, sp, #0x10
	mov r2, #5
_021C184A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021C184A
	add r0, r6, #0
	add r0, #0xa4
	ldrh r0, [r0]
	add r1, sp, #0x10
	mov r5, #0
	strb r0, [r1]
	add r0, r6, #0
	add r0, #0xa6
	ldrh r0, [r0]
	strb r0, [r1, #0xa]
	add r0, r0, #1
	strb r0, [r1, #0x11]
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	strh r0, [r1, #0x14]
	add r0, r6, #0
	add r0, #0xaa
	ldrh r0, [r0]
	strb r0, [r1, #0x18]
	mov r0, #4
	strb r0, [r1, #0x19]
	strh r5, [r1, #0x1a]
	ldr r0, _021C190C ; =0x021C8D70
	str r4, [sp, #0x34]
	str r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	add r0, sp, #0x10
	bl sub_0219AF1C
	str r0, [r4]
	mov r7, #0xc1
	mov r1, #0xc1
	bl sub_0219CCC8
	add r7, #0x54
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa8
	ldrh r0, [r0]
	str r5, [sp]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa6
	ldrh r0, [r0]
	mov r2, #0xc
	mov r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl sub_0219B21C
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4]
	add r1, r7, #0
	mov r2, #1
	mov r3, #1
	bl sub_0219B27C
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	bls _021C18FE
	add r7, r5, #0
_021C18E8:
	ldr r0, [r4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0219B1B4
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blo _021C18E8
_021C18FE:
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1904: .word 0x021C92F0
_021C1908: .word 0x021C8D7C
_021C190C: .word 0x021C8D70
	thumb_func_end ovy332_21c180c

	thumb_func_start ovy332_21c1910
ovy332_21c1910: ; 0x021C1910
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0219B138
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	mov r1, #3
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044CFC
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1910

	thumb_func_start ovy332_21c1940
ovy332_21c1940: ; 0x021C1940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_0219B2E0
	add r4, r0, #0
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021C196C
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r4, [r0, #0x44]
	ldr r0, _021C1990 ; =0x00000551
	bl sub_02006254
	b _021C198A
_021C196C:
	add r0, r1, #0
	sub r0, #0x12
	cmp r4, r0
	blo _021C1978
	sub r4, r1, #3
	b _021C198A
_021C1978:
	ldr r0, _021C1994 ; =0x0000054C
	bl sub_02006254
	ldr r0, [r5]
	bl sub_0219CC28
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r4, [r0, #0x44]
_021C198A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021C1990: .word 0x00000551
_021C1994: .word 0x0000054C
	thumb_func_end ovy332_21c1940

	thumb_func_start ovy332_21c1998
ovy332_21c1998: ; 0x021C1998
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _021C19A8
	mov r0, #1
	pop {r4, pc}
_021C19A8:
	ldr r0, [r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021C19DC
	add r1, r4, #0
	add r1, #0xae
	ldrh r1, [r1]
	ldr r0, [r4]
	bl sub_0219CC58
	ldr r0, [r4]
	bl sub_0219CC44
	cmp r0, #0
	beq _021C19D4
	add r1, r4, #0
	add r1, #0xb0
	ldrh r1, [r1]
	ldr r0, [r4]
	bl sub_0219CCD0
_021C19D4:
	mov r0, #1
	add r4, #0xb8
	str r0, [r4]
	pop {r4, pc}
_021C19DC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy332_21c1998

	thumb_func_start ovy332_21c19e0
ovy332_21c19e0: ; 0x021C19E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _021C19F4
	ldr r0, [r5]
	bl sub_0219CC34
	str r0, [r4]
_021C19F4:
	cmp r6, #0
	beq _021C1A00
	ldr r0, [r5]
	bl sub_0219CC3C
	str r0, [r6]
_021C1A00:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c19e0

	thumb_func_start ovy332_21c1a04
ovy332_21c1a04: ; 0x021C1A04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219CC18
	lsl r4, r4, #2
	add r2, r5, #0
	add r1, r5, r4
	add r2, #0xb4
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x14]
	ldr r2, [r2]
	bl sub_02048838
	ldr r0, [r6]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, _021C1AB8 ; =0x000039E1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r6, #4]
	add r0, r5, r4
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _021C1A76
	add r6, r5, #0
	mov r1, #0xe0
	add r0, sp, #0x10
	strh r1, [r0]
	add r7, #0x10
	add r6, #0x74
	strh r7, [r0, #2]
	ldr r0, [r6, r4]
	add r1, sp, #0x10
	bl sub_0204C210
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0204C124
_021C1A76:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021C1A92
	ldr r0, [r5]
	bl sub_0219CC3C
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _021C1A8C
	mov r1, #1
	b _021C1A8E
_021C1A8C:
	mov r1, #0
_021C1A8E:
	bl sub_0204C124
_021C1A92:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021C1AB4
	ldr r0, [r5]
	bl sub_0219CC44
	cmp r0, #0
	ldr r0, [r5, #0xc]
	beq _021C1AAE
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021C1AAE:
	mov r1, #0
	bl sub_0204C124
_021C1AB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1AB8: .word 0x000039E1
	thumb_func_end ovy332_21c1a04
_021C1ABC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c1ac0
ovy332_21c1ac0: ; 0x021C1AC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r1, [sp, #0xc]
	add r0, #0xa4
	ldr r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021C1B26
	add r7, sp, #0x10
_021C1AD4:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _021C1B1A
	bl sub_0204C138
	cmp r0, #0
	beq _021C1B1A
	ldr r0, [r5, #0x74]
	add r1, sp, #0x10
	bl sub_0204C21C
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #0xc]
	sub r0, r1, r0
	strh r0, [r7, #2]
	ldr r0, [r5, #0x74]
	add r1, sp, #0x10
	bl sub_0204C210
	mov r0, #2
	ldrsh r1, [r7, r0]
	sub r0, #0xe
	cmp r1, r0
	ble _021C1B12
	mov r0, #0x43
	lsl r0, r0, #2
	cmp r1, r0
	blt _021C1B1A
_021C1B12:
	ldr r0, [r5, #0x74]
	mov r1, #0
	bl sub_0204C124
_021C1B1A:
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blo _021C1AD4
_021C1B26:
	ldr r0, [r6]
	bl sub_0219CC3C
	lsl r1, r0, #2
	add r4, r0, r1
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bge _021C1B5A
	mov r0, #0x20
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x10
	add r6, #0xa8
	str r0, [sp, #8]
	ldrh r0, [r6]
	lsl r3, r4, #0x18
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02045604
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021C1B5A:
	ble _021C1B8A
	cmp r0, #0
	beq _021C1B8A
	ldr r0, [r6]
	bl sub_0219CD0C
	cmp r0, #1
	bne _021C1B8A
	mov r0, #0x20
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x10
	add r6, #0xa8
	str r0, [sp, #8]
	ldrh r0, [r6]
	lsl r3, r4, #0x18
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02045604
_021C1B8A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1ac0

	thumb_func_start ovy332_21c1b90
ovy332_21c1b90: ; 0x021C1B90
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021C1BC0 ; =0x021C92F0
	ldr r6, _021C1BC4 ; =0x000009A6
	mov r1, #0xc
	mov r2, #1
	add r3, r7, #0
	add r5, r0, #0
	str r6, [sp]
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r6, #1
	mov r1, #0x12
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #0xa
	mov r2, #0
	add r3, r7, #0
	bl sub_0203A1FC
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1BC0: .word 0x021C92F0
_021C1BC4: .word 0x000009A6
	thumb_func_end ovy332_21c1b90

	thumb_func_start ovy332_21c1bc8
ovy332_21c1bc8: ; 0x021C1BC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1bc8

	thumb_func_start ovy332_21c1bdc
ovy332_21c1bdc: ; 0x021C1BDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _021C1BF0
	bl sub_0204FA84
_021C1BF0:
	mov r1, #0x12
	ldr r0, [r5, #8]
	lsl r1, r1, #0xa
	mov r2, #1
	add r3, r4, #0
	bl sub_0204F968
	str r0, [r5]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0204FDF8
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c1bdc

	thumb_func_start ovy332_21c1c18
ovy332_21c1c18: ; 0x021C1C18
	push {r3, lr}
	add r3, r0, #0
	ldr r0, [r3]
	mov r2, #0
	bl sub_0205007C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1c18

	thumb_func_start ovy332_21c1c28
ovy332_21c1c28: ; 0x021C1C28
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, sp, #0x18
	mov ip, r3
	mov r3, #0x3e
	asr r2, r2, #4
	lsl r2, r2, #1
	ldrh r1, [r1, #4]
	lsl r3, r3, #4
	add r2, r2, #1
	and r3, r1
	lsl r3, r3, #0x13
	lsr r6, r3, #0x18
	add r3, sp, #0x18
	ldrh r4, [r3, #8]
	lsl r3, r2, #1
	ldr r2, _021C1CD0 ; =FX_SinCosTable_ ; 0x020946BC
	mov r5, #0x1f
	ldrsh r3, [r2, r3]
	mov r2, #1
	lsl r2, r2, #0xc
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r1
	lsl r5, r5, #0xa
	and r1, r5
	mov r5, #0x1f
	lsl r5, r5, #0xa
	and r5, r4
	asr r1, r1, #0xa
	asr r5, r5, #0xa
	lsl r1, r1, #0x18
	lsl r5, r5, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r3
	asr r5, r5, #0xc
	add r1, r1, r5
	mov r5, #0x1f
	and r5, r4
	lsl r5, r5, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r2
	mul r5, r3
	asr r5, r5, #0xc
	add r2, r2, r5
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	mov r2, #0x3e
	lsl r2, r2, #4
	and r2, r4
	lsl r2, r2, #0x13
	lsr r2, r2, #0x18
	sub r2, r2, r6
	mul r2, r3
	asr r2, r2, #0xc
	add r2, r6, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x13
	lsl r1, r1, #0xa
	orr r2, r5
	orr r1, r2
	strh r1, [r7]
	mov r1, ip
	lsl r2, r1, #5
	add r1, sp, #0x18
	ldrb r1, [r1]
	mov r3, #2
	lsl r1, r1, #1
	add r1, r2, r1
	add r2, r7, #0
	bl sub_0205FA10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1CD0: .word FX_SinCosTable_
	thumb_func_end ovy332_21c1c28

	thumb_func_start ovy332_21c1cd4
ovy332_21c1cd4: ; 0x021C1CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #8]
	str r0, [sp, #0x2c]
	asr r0, r2, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021C1D98 ; =FX_SinCosTable_ ; 0x020946BC
	mov r6, #0
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
_021C1D10:
	ldr r0, [sp, #0x28]
	lsl r4, r6, #1
	ldrh r5, [r0, r4]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	ldrh r3, [r0, r4]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #0xc]
	asr r0, r0, #0xa
	and r5, r3
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r2
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r3
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r2
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r3
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r2
	asr r1, r1, #0xc
	add r1, r7, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r1, r0
	ldr r0, [sp, #4]
	cmp r6, #0x10
	strh r1, [r0, r4]
	blt _021C1D10
	ldr r1, [sp, #8]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1D98: .word FX_SinCosTable_
	thumb_func_end ovy332_21c1cd4

	thumb_func_start ovy332_21c1d9c
ovy332_21c1d9c: ; 0x021C1D9C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl sub_0204898C
	add r5, r0, #0
	bl sub_020485F8
	lsl r0, r0, #1
	add r1, r4, #0
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02024920
	add r0, r5, #0
	bl sub_02048564
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1d9c

	thumb_func_start ovy332_21c1dd0
ovy332_21c1dd0: ; 0x021C1DD0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #9
	add r7, r0, #0
	mov r0, #0xf0
	add r5, r1, #0
	lsl r6, r6, #6
	str r0, [sp]
	ldr r3, _021C1E0C ; =0x021C9394
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [r7]
	ldr r2, _021C1E10 ; =0x021C2181
	str r0, [r4, #8]
	add r0, r6, #0
	sub r0, #0x1c
	strh r5, [r4, r0]
	mov r0, #1
	add r1, r4, #0
	add r3, r5, #0
	bl ovy332_21c11a4
	sub r6, #0x30
	str r0, [r4, r6]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1E0C: .word 0x021C9394
_021C1E10: .word 0x021C2181
	thumb_func_end ovy332_21c1dd0

	thumb_func_start ovy332_21c1e14
ovy332_21c1e14: ; 0x021C1E14
	push {r4, lr}
	add r4, r0, #0
	bl ovy332_21c2a7c
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_021C11EC
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1e14

	thumb_func_start ovy332_21c1e30
ovy332_21c1e30: ; 0x021C1E30
	push {r3, r4, r5, lr}
	mov r5, #0x21
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl ovy332_21c11f4
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021C1E50
	add r5, #0x10
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C1E50
	bl sub_021A03F4
_021C1E50:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c1e30

	thumb_func_start ovy332_21c1e54
ovy332_21c1e54: ; 0x021C1E54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, r4
	beq _021C1E96
	bl ovy332_21c2a7c
	str r4, [r5, #4]
	cmp r4, #1
	beq _021C1E96
	cmp r4, #2
	beq _021C1E74
	cmp r4, #3
	beq _021C1E88
	pop {r3, r4, r5, pc}
_021C1E74:
	ldr r0, _021C1E98 ; =0x000000B5
	bl sub_0203CE0C
	mov r0, #1
	bl sub_021A039C
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_021C1E88:
	ldr r0, _021C1E9C ; =0x000000BD
	bl sub_0203CE0C
	ldr r0, _021C1EA0 ; =ovy332_21c2af0
	add r1, r5, #0
	bl sub_02152040
_021C1E96:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C1E98: .word 0x000000B5
_021C1E9C: .word 0x000000BD
_021C1EA0: .word ovy332_21c2af0
	thumb_func_end ovy332_21c1e54

	thumb_func_start ovy332_21c1ea4
ovy332_21c1ea4: ; 0x021C1EA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ovy332_21c2a44
	cmp r6, #0
	beq _021C1EC2
	mov r2, #0x43
	lsl r2, r2, #2
	add r1, r4, r2
	add r0, r6, #0
	sub r2, #0xc
	blx MI_CpuCopy8
_021C1EC2:
	cmp r5, #8
	bhi _021C1F1A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C1ED2: ; jump table
	.short _021C1EE4 - _021C1ED2 - 2 ; case 0
	.short _021C1EE8 - _021C1ED2 - 2 ; case 1
	.short _021C1EEC - _021C1ED2 - 2 ; case 2
	.short _021C1EF6 - _021C1ED2 - 2 ; case 3
	.short _021C1EFA - _021C1ED2 - 2 ; case 4
	.short _021C1EFE - _021C1ED2 - 2 ; case 5
	.short _021C1F02 - _021C1ED2 - 2 ; case 6
	.short _021C1F06 - _021C1ED2 - 2 ; case 7
	.short _021C1F0A - _021C1ED2 - 2 ; case 8
_021C1EE4:
	ldr r1, _021C1F1C ; =ovy332_21c2184
	b _021C1F10
_021C1EE8:
	ldr r1, _021C1F20 ; =ovy332_21c230c
	b _021C1F10
_021C1EEC:
	mov r0, #0x23
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021C1EF6:
	ldr r1, _021C1F24 ; =ovy332_21c23ac
	b _021C1F10
_021C1EFA:
	ldr r1, _021C1F28 ; =ovy332_21c24c4
	b _021C1F10
_021C1EFE:
	ldr r1, _021C1F2C ; =ovy332_21c2544
	b _021C1F10
_021C1F02:
	ldr r1, _021C1F30 ; =ovy332_21c25f4
	b _021C1F10
_021C1F06:
	ldr r1, _021C1F34 ; =ovy332_21c2668
	b _021C1F10
_021C1F0A:
	ldr r1, _021C1F38 ; =ovy332_21c284c
	b _021C1F10
_021C1F0E:
	.byte 0x70, 0xBD
_021C1F10:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy332_21c1228
_021C1F1A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C1F1C: .word ovy332_21c2184
_021C1F20: .word ovy332_21c230c
_021C1F24: .word ovy332_21c23ac
_021C1F28: .word ovy332_21c24c4
_021C1F2C: .word ovy332_21c2544
_021C1F30: .word ovy332_21c25f4
_021C1F34: .word ovy332_21c2668
_021C1F38: .word ovy332_21c284c
	thumb_func_end ovy332_21c1ea4

	thumb_func_start ovy332_21c1f3c
ovy332_21c1f3c: ; 0x021C1F3C
	push {r3, r4, r5, lr}
	mov r4, #0x21
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	ldr r1, _021C1FF8 ; =0x021C2181
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1F54
	mov r0, #0
	pop {r3, r4, r5, pc}
_021C1F54:
	ldr r0, [r5, r4]
	ldr r1, _021C1FFC ; =ovy332_21c2184
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1F64
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C1F64:
	ldr r0, [r5, r4]
	ldr r1, _021C2000 ; =ovy332_21c230c
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1F74
	mov r0, #2
	pop {r3, r4, r5, pc}
_021C1F74:
	ldr r0, [r5, r4]
	ldr r1, _021C2004 ; =0x021C23A9
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1F84
	mov r0, #3
	pop {r3, r4, r5, pc}
_021C1F84:
	ldr r0, [r5, r4]
	ldr r1, _021C2008 ; =ovy332_21c23ac
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1F94
	mov r0, #4
	pop {r3, r4, r5, pc}
_021C1F94:
	ldr r0, [r5, r4]
	ldr r1, _021C200C ; =ovy332_21c24c4
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FA4
	mov r0, #5
	pop {r3, r4, r5, pc}
_021C1FA4:
	ldr r0, [r5, r4]
	ldr r1, _021C2010 ; =ovy332_21c247c
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FB4
	mov r0, #6
	pop {r3, r4, r5, pc}
_021C1FB4:
	ldr r0, [r5, r4]
	ldr r1, _021C2014 ; =ovy332_21c2544
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FC4
	mov r0, #7
	pop {r3, r4, r5, pc}
_021C1FC4:
	ldr r0, [r5, r4]
	ldr r1, _021C2018 ; =ovy332_21c25f4
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FD4
	mov r0, #8
	pop {r3, r4, r5, pc}
_021C1FD4:
	ldr r0, [r5, r4]
	ldr r1, _021C201C ; =ovy332_21c2668
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FE4
	mov r0, #9
	pop {r3, r4, r5, pc}
_021C1FE4:
	ldr r0, [r5, r4]
	ldr r1, _021C2020 ; =ovy332_21c284c
	bl ovy332_21c1288
	cmp r0, #0
	beq _021C1FF4
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_021C1FF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C1FF8: .word 0x021C2181
_021C1FFC: .word ovy332_21c2184
_021C2000: .word ovy332_21c230c
_021C2004: .word 0x021C23A9
_021C2008: .word ovy332_21c23ac
_021C200C: .word ovy332_21c24c4
_021C2010: .word ovy332_21c247c
_021C2014: .word ovy332_21c2544
_021C2018: .word ovy332_21c25f4
_021C201C: .word ovy332_21c2668
_021C2020: .word ovy332_21c284c
	thumb_func_end ovy332_21c1f3c

	thumb_func_start ovy332_21c2024
ovy332_21c2024: ; 0x021C2024
	push {r3, lr}
	mov r3, #0x83
	lsl r3, r3, #2
	ldr r3, [r0, r3]
	cmp r3, #0
	beq _021C203E
	cmp r1, #0
	beq _021C203A
	add r0, #0xc
	blx MI_CpuCopy8
_021C203A:
	mov r0, #1
	pop {r3, pc}
_021C203E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c2024

	thumb_func_start ovy332_21c2044
ovy332_21c2044: ; 0x021C2044
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020178BC
	cmp r0, #0
	beq _021C2056
	mov r0, #0
	pop {r4, pc}
_021C2056:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021C2064
	mov r0, #0
	pop {r4, pc}
_021C2064:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021C2074
	cmp r0, #2
	beq _021C2074
	cmp r0, #3
	beq _021C20A8
	b _021C210C
_021C2074:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C2092
	mov r0, #0xe
	bl sub_020120F0
	add r0, r4, #0
	bl ovy332_21c2adc
	bl sub_02011DE0
	mov r0, #2
	pop {r4, pc}
_021C2092:
	bl sub_020120C8
	cmp r0, #0
	beq _021C210C
	add r0, r4, #0
	bl ovy332_21c2adc
	bl sub_02011DE0
	mov r0, #2
	pop {r4, pc}
_021C20A8:
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C20C8
	sub r1, #8
	ldr r0, [r4, r1]
	bl sub_020120F0
	add r0, r4, #0
	bl ovy332_21c2adc
	bl sub_02011DE0
	mov r0, #2
	pop {r4, pc}
_021C20C8:
	bl sub_020120C8
	cmp r0, #0
	beq _021C210C
	bl sub_02042540
	ldr r0, [r0, #4]
	cmp r0, #7
	bhi _021C210C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C20E6: ; jump table
	.short _021C210C - _021C20E6 - 2 ; case 0
	.short _021C20F6 - _021C20E6 - 2 ; case 1
	.short _021C20F6 - _021C20E6 - 2 ; case 2
	.short _021C20F6 - _021C20E6 - 2 ; case 3
	.short _021C20F6 - _021C20E6 - 2 ; case 4
	.short _021C20F6 - _021C20E6 - 2 ; case 5
	.short _021C20F6 - _021C20E6 - 2 ; case 6
	.short _021C2104 - _021C20E6 - 2 ; case 7
_021C20F6:
	add r0, r4, #0
	bl ovy332_21c2adc
	bl sub_02011DE0
	mov r0, #2
	pop {r4, pc}
_021C2104:
	bl sub_02012028
	mov r0, #2
	pop {r4, pc}
_021C210C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy332_21c2044

	thumb_func_start ovy332_21c2110
ovy332_21c2110: ; 0x021C2110
	push {r4, lr}
	add r4, r0, #0
	bl ovy332_21c2a7c
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021C2128
	cmp r0, #2
	beq _021C2128
	cmp r0, #3
	beq _021C2136
	b _021C2152
_021C2128:
	bl sub_020429F0
	bl sub_02012154
	bl sub_02012144
	b _021C2146
_021C2136:
	bl sub_02012154
	bl sub_02012144
	bl sub_020424E4
	blx sub_02058490
_021C2146:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, _021C2164 ; =0x021C2181
	bl ovy332_21c1228
_021C2152:
	mov r0, #0x8a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	str r1, [r4, #4]
	pop {r4, pc}
	nop
_021C2164: .word 0x021C2181
	thumb_func_end ovy332_21c2110

	thumb_func_start sub_021C2168
sub_021C2168: ; 0x021C2168
	str r1, [r0]
	bx lr
	thumb_func_end sub_021C2168

	thumb_func_start sub_021C216C
sub_021C216C: ; 0x021C216C
	mov r2, #0x8d
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021C216C

	thumb_func_start sub_021C2174
sub_021C2174: ; 0x021C2174
	mov r3, #0x8e
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_021C2174
_021C2180:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c2184
ovy332_21c2184: ; 0x021C2184
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl sub_021C2A3C
	ldr r0, [r5]
	cmp r0, #6
	bls _021C219A
	b _021C22EA
_021C219A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C21A6: ; jump table
	.short _021C21B4 - _021C21A6 - 2 ; case 0
	.short _021C21D8 - _021C21A6 - 2 ; case 1
	.short _021C220E - _021C21A6 - 2 ; case 2
	.short _021C2254 - _021C21A6 - 2 ; case 3
	.short _021C228A - _021C21A6 - 2 ; case 4
	.short _021C22D0 - _021C21A6 - 2 ; case 5
	.short _021C22DA - _021C21A6 - 2 ; case 6
_021C21B4:
	mov r7, #0x85
	lsl r7, r7, #2
	mov r6, #0
	add r0, r7, #0
	str r6, [r4, r7]
	add r0, #0x1c
	str r6, [r4, r0]
	ldr r0, _021C22EC ; =0x021C9324
	mov r1, #0
	add r2, r4, #0
	bl sub_020425EC
	add r0, r7, #4
	str r6, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C21D8:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C21EC
	ldr r1, _021C22F0 ; =ovy332_21c247c
	add r0, r6, #0
	bl ovy332_21c1228
	pop {r3, r4, r5, r6, r7, pc}
_021C21EC:
	bl sub_02042788
	cmp r0, #0
	beq _021C22EA
	mov r0, #1
	mov r1, #0x9b
	bl sub_02042BA8
	ldr r0, _021C22F4 ; =ovy332_21c29cc
	ldr r1, _021C22F8 ; =0x021C29E9
	ldr r2, _021C22FC ; =ovy332_21c29ec
	bl sub_020429A8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C220E:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021C2222
	ldr r1, _021C22F0 ; =ovy332_21c247c
	add r0, r6, #0
	bl ovy332_21c1228
	pop {r3, r4, r5, r6, r7, pc}
_021C2222:
	add r2, r0, #0
	sub r2, #0x18
	add r1, r0, #0
	ldr r2, [r4, r2]
	sub r1, #0x18
	add r3, r2, #1
	add r2, r0, #0
	ldr r1, [r4, r1]
	sub r2, #0x18
	str r3, [r4, r2]
	mov r2, #0xe1
	lsl r2, r2, #4
	cmp r1, r2
	blo _021C22EA
	mov r1, #0
	sub r0, #0x18
	str r1, [r4, r0]
	bl sub_020429F0
	mov r0, #0
	bl sub_02042860
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C2254:
	mov r0, #0x86
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x37
	ldr r1, _021C2300 ; =0x021C8DD8
	lsl r0, r0, #8
	mov r2, #1
	add r3, r4, #0
	bl sub_02040C20
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x37
	bl sub_02040624
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C228A:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r2, r1
	blo _021C22B8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x37
	lsl r0, r0, #8
	bl sub_02040C64
	bl sub_020429F0
	mov r0, #0
	bl sub_02042860
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C22B8:
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x37
	bl sub_02040664
	cmp r0, #0
	beq _021C22EA
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C22D0:
	ldr r1, _021C2304 ; =0x021C23A9
	add r0, r6, #0
	bl ovy332_21c1228
	pop {r3, r4, r5, r6, r7, pc}
_021C22DA:
	bl sub_020427A4
	cmp r0, #0
	beq _021C22EA
	ldr r1, _021C2308 ; =0x021C2181
	add r0, r6, #0
	bl ovy332_21c1228
_021C22EA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C22EC: .word 0x021C9324
_021C22F0: .word ovy332_21c247c
_021C22F4: .word ovy332_21c29cc
_021C22F8: .word 0x021C29E9
_021C22FC: .word ovy332_21c29ec
_021C2300: .word 0x021C8DD8
_021C2304: .word 0x021C23A9
_021C2308: .word 0x021C2181
	thumb_func_end ovy332_21c2184

	thumb_func_start ovy332_21c230c
ovy332_21c230c: ; 0x021C230C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #4
	bhi _021C23A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C2322: ; jump table
	.short _021C232C - _021C2322 - 2 ; case 0
	.short _021C234E - _021C2322 - 2 ; case 1
	.short _021C2372 - _021C2322 - 2 ; case 2
	.short _021C238C - _021C2322 - 2 ; case 3
	.short _021C239C - _021C2322 - 2 ; case 4
_021C232C:
	bl sub_02042A78
	cmp r0, #0
	ble _021C2348
	bl sub_02040440
	mov r1, #0xd
	mov r2, #0x37
	bl sub_02040624
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C2348:
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021C234E:
	bl sub_02040440
	mov r1, #0xd
	mov r2, #0x37
	bl sub_02040664
	cmp r0, #0
	beq _021C23A2
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C2372:
	mov r0, #0x37
	lsl r0, r0, #8
	bl sub_02040C64
	bl sub_020429F0
	mov r0, #0
	bl sub_02042860
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C238C:
	bl sub_020427A4
	cmp r0, #0
	beq _021C23A2
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C239C:
	ldr r1, _021C23A4 ; =0x021C2181
	bl ovy332_21c1228
_021C23A2:
	pop {r4, pc}
	.align 2, 0
_021C23A4: .word 0x021C2181
	thumb_func_end ovy332_21c230c
_021C23A8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c23ac
ovy332_21c23ac: ; 0x021C23AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	bl sub_021C2A3C
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #6
	bhi _021C2474
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C23CE: ; jump table
	.short _021C23DC - _021C23CE - 2 ; case 0
	.short _021C23F8 - _021C23CE - 2 ; case 1
	.short _021C2410 - _021C23CE - 2 ; case 2
	.short _021C2430 - _021C23CE - 2 ; case 3
	.short _021C2440 - _021C23CE - 2 ; case 4
	.short _021C2454 - _021C23CE - 2 ; case 5
	.short _021C246C - _021C23CE - 2 ; case 6
_021C23DC:
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	bl sub_02040440
	mov r1, #0xb
	mov r2, #0x37
	bl sub_02040624
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C23F8:
	bl sub_02040440
	mov r1, #0xb
	mov r2, #0x37
	bl sub_02040664
	cmp r0, #0
	beq _021C2474
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C2410:
	bl sub_02040440
	ldr r2, [r5, #4]
	mov r1, #0x37
	lsl r2, r2, #0x10
	ldr r3, [r5]
	lsl r1, r1, #8
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _021C2474
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C2430:
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _021C2474
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C2440:
	bl sub_02040440
	mov r1, #0xc
	mov r2, #0x37
	bl sub_02040624
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C2454:
	bl sub_02040440
	mov r1, #0xc
	mov r2, #0x37
	bl sub_02040664
	cmp r0, #0
	beq _021C2474
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C246C:
	ldr r1, _021C2478 ; =0x021C23A9
	add r0, r7, #0
	bl ovy332_21c1228
_021C2474:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C2478: .word 0x021C23A9
	thumb_func_end ovy332_21c23ac

	thumb_func_start ovy332_21c247c
ovy332_21c247c: ; 0x021C247C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C2490
	cmp r1, #1
	beq _021C24AA
	cmp r1, #2
	beq _021C24B8
	pop {r4, pc}
_021C2490:
	bl sub_02042788
	cmp r0, #0
	beq _021C24A4
	mov r0, #0
	bl sub_02042860
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C24A4:
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021C24AA:
	bl sub_020427A4
	cmp r0, #0
	beq _021C24BE
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021C24B8:
	ldr r1, _021C24C0 ; =0x021C2181
	bl ovy332_21c1228
_021C24BE:
	pop {r4, pc}
	.align 2, 0
_021C24C0: .word 0x021C2181
	thumb_func_end ovy332_21c247c

	thumb_func_start ovy332_21c24c4
ovy332_21c24c4: ; 0x021C24C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #3
	bhi _021C253C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C24DC: ; jump table
	.short _021C24E4 - _021C24DC - 2 ; case 0
	.short _021C2502 - _021C24DC - 2 ; case 1
	.short _021C2524 - _021C24DC - 2 ; case 2
	.short _021C2536 - _021C24DC - 2 ; case 3
_021C24E4:
	bl sub_02040440
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0x37
	add r1, #0x14
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040624
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C2502:
	bl sub_02040440
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0x37
	add r1, #0x14
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040664
	cmp r0, #0
	beq _021C253C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C2524:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C2536:
	ldr r1, _021C2540 ; =0x021C23A9
	bl ovy332_21c1228
_021C253C:
	pop {r3, r4, r5, pc}
	nop
_021C2540: .word 0x021C23A9
	thumb_func_end ovy332_21c24c4

	thumb_func_start ovy332_21c2544
ovy332_21c2544: ; 0x021C2544
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	add r0, r5, #0
	bl sub_021C2A3C
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021C25EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C2566: ; jump table
	.short _021C2570 - _021C2566 - 2 ; case 0
	.short _021C258A - _021C2566 - 2 ; case 1
	.short _021C259E - _021C2566 - 2 ; case 2
	.short _021C25CC - _021C2566 - 2 ; case 3
	.short _021C25E4 - _021C2566 - 2 ; case 4
_021C2570:
	mov r0, #0
	str r0, [r6, #8]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r6]
	ldr r2, [r6, #4]
	bl sub_021A0470
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C258A:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_021A0418
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C259E:
	mov r7, #0x22
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	bl sub_021A0460
	cmp r0, #0
	beq _021C25B6
	mov r0, #1
	str r0, [r6, #8]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C25B6:
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021C25EC
	ldr r0, [r5, r7]
	bl sub_021A0418
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C25CC:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_021A0460
	cmp r0, #0
	beq _021C25EC
	mov r0, #2
	str r0, [r6, #8]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C25E4:
	ldr r1, _021C25F0 ; =0x021C2181
	add r0, r7, #0
	bl ovy332_21c1228
_021C25EC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C25F0: .word 0x021C2181
	thumb_func_end ovy332_21c2544

	thumb_func_start ovy332_21c25f4
ovy332_21c25f4: ; 0x021C25F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r0, r6, #0
	bl sub_021C2A3C
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021C2614
	cmp r0, #1
	beq _021C262C
	cmp r0, #2
	beq _021C2642
	pop {r3, r4, r5, r6, r7, pc}
_021C2614:
	mov r0, #0
	str r0, [r4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #3
	bl sub_021A0418
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C262C:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_021A0460
	cmp r0, #0
	beq _021C2662
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C2642:
	mov r5, #0x22
	mov r0, #1
	lsl r5, r5, #4
	str r0, [r4]
	ldr r0, [r6, r5]
	bl sub_021A0484
	str r0, [r4, #4]
	ldr r0, [r6, r5]
	bl sub_021A0488
	str r0, [r4, #8]
	ldr r1, _021C2664 ; =0x021C2181
	add r0, r7, #0
	bl ovy332_21c1228
_021C2662:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2664: .word 0x021C2181
	thumb_func_end ovy332_21c25f4

	thumb_func_start ovy332_21c2668
ovy332_21c2668: ; 0x021C2668
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl sub_021C2A3C
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #3
	bls _021C2680
	b _021C283A
_021C2680:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C268C: ; jump table
	.short _021C2694 - _021C268C - 2 ; case 0
	.short _021C26E2 - _021C268C - 2 ; case 1
	.short _021C270A - _021C268C - 2 ; case 2
	.short _021C2814 - _021C268C - 2 ; case 3
_021C2694:
	mov r7, #0x83
	mov r0, #0
	lsl r7, r7, #2
	str r0, [r4, r7]
	str r0, [r6, #4]
	ldr r0, [r4, #8]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x18
	ldrh r0, [r4, r0]
	ldr r2, [r4]
	bl sub_0219D1B8
	add r1, r7, #0
	add r1, #0x10
	str r0, [r4, r1]
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	bl sub_0219D3BC
	add r7, #0x10
	ldr r1, [r6]
	ldr r2, [r4, r7]
	mov r0, #0xa
	bl sub_0219D05C
	cmp r0, #0
	beq _021C26D8
	mov r0, #1
	str r0, [r5]
_021C26D8:
	mov r0, #0x86
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021C26E2:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021C26F6
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C26F6:
	ldr r0, _021C283C ; =0x021C93A8
	ldr r2, _021C2840 ; =0x021C93AC
	mov r1, #0
	bl sub_0203CB80
	mov r0, #1
	str r0, [r6, #4]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C270A:
	mov r7, #0x87
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	bl sub_0219D3A8
	add r1, r7, #0
	sub r1, #0x26
	cmp r0, r1
	beq _021C273C
	add r1, r7, #0
	sub r1, #0x25
	cmp r0, r1
	bne _021C2754
	add r0, r7, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	mov r0, #0x3e
	add r7, #0x10
	str r0, [r4, r7]
	mov r0, #2
	str r0, [r6, #4]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C273C:
	add r0, r7, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	mov r0, #0x3f
	add r7, #0x10
	str r0, [r4, r7]
	mov r0, #2
	str r0, [r6, #4]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C2754:
	add r1, r7, #0
	sub r1, #0x8c
	cmp r0, r1
	blt _021C2774
	add r0, r7, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	mov r0, #0x3c
	add r7, #0x10
	str r0, [r4, r7]
	mov r0, #2
	str r0, [r6, #4]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C2774:
	ldr r0, [r4, r7]
	bl sub_0219D140
	cmp r0, #0
	bne _021C27E4
	ldr r0, [r4, r7]
	bl sub_0219D1A4
	ldr r1, [r0]
	cmp r1, #0
	bgt _021C278E
	beq _021C27A2
	b _021C27CC
_021C278E:
	cmp r1, #0xa
	bgt _021C27CC
	cmp r1, #5
	blt _021C27CC
	beq _021C27C4
	cmp r1, #8
	beq _021C27B2
	cmp r1, #0xa
	beq _021C27BC
	b _021C27CC
_021C27A2:
	mov r0, #3
	str r0, [r5]
	mov r0, #4
	str r0, [r6, #4]
	mov r0, #1
	sub r7, #0x10
	str r0, [r4, r7]
	b _021C27F0
_021C27B2:
	mov r0, #3
	str r0, [r5]
	mov r0, #6
_021C27B8:
	str r0, [r6, #4]
	b _021C27F0
_021C27BC:
	mov r0, #3
	str r0, [r5]
	mov r0, #5
	b _021C27B8
_021C27C4:
	mov r0, #3
	str r0, [r5]
	mov r0, #7
	b _021C27B8
_021C27CC:
	mov r7, #0x8a
	mov r1, #1
	lsl r7, r7, #2
	str r1, [r4, r7]
	ldr r0, [r0]
	bl sub_02011D2C
	add r1, r7, #4
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r6, #4]
	b _021C27EE
_021C27E4:
	cmp r0, #0xf
	beq _021C27F0
	mov r0, #1
	str r0, [r6, #4]
	mov r0, #3
_021C27EE:
	str r0, [r5]
_021C27F0:
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, #1
	str r0, [r4, r1]
	ldr r0, _021C2844 ; =0x00008CA0
	cmp r2, r0
	bls _021C283A
	add r0, r1, #0
	mov r2, #2
	add r0, #0x10
	str r2, [r4, r0]
	mov r0, #0xd
	add r1, #0x14
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C2814:
	mov r5, #0x87
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0219D3CC
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C2832
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021C2832:
	ldr r1, _021C2848 ; =0x021C2181
	add r0, r7, #0
	bl ovy332_21c1228
_021C283A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C283C: .word 0x021C93A8
_021C2840: .word 0x021C93AC
_021C2844: .word 0x00008CA0
_021C2848: .word 0x021C2181
	thumb_func_end ovy332_21c2668

	thumb_func_start ovy332_21c284c
ovy332_21c284c: ; 0x021C284C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	str r0, [sp]
	add r6, r1, #0
	add r0, r4, #0
	bl sub_021C2A3C
	add r7, r0, #0
	ldr r0, [r6]
	cmp r0, #3
	bls _021C2866
	b _021C29AA
_021C2866:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C2872: ; jump table
	.short _021C287A - _021C2872 - 2 ; case 0
	.short _021C28B4 - _021C2872 - 2 ; case 1
	.short _021C28D6 - _021C2872 - 2 ; case 2
	.short _021C298A - _021C2872 - 2 ; case 3
_021C287A:
	mov r5, #0x83
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	str r0, [r7, #4]
	ldr r0, [r4, #8]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x18
	ldrh r0, [r4, r0]
	ldr r2, [r4]
	bl sub_0219D1B8
	add r1, r0, #0
	add r5, #0x10
	mov r0, #0
	str r1, [r4, r5]
	bl sub_0219D010
	cmp r0, #0
	beq _021C29AA
	mov r0, #1
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C28B4:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021C28CA
	mov r0, #2
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C28CA:
	mov r0, #1
	str r0, [r7, #4]
	mov r0, #3
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C28D6:
	mov r5, #0x87
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0219D140
	cmp r0, #0
	bne _021C297A
	ldr r0, [r4, r5]
	bl sub_0219D1A4
	str r0, [sp, #4]
	ldr r0, [r4, r5]
	bl sub_0219D3A8
	add r1, r5, #0
	sub r1, #0x26
	cmp r0, r1
	beq _021C291C
	add r1, r5, #0
	sub r1, #0x25
	cmp r0, r1
	bne _021C2936
	add r0, r5, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	mov r0, #0x3e
	add r5, #0x10
	str r0, [r4, r5]
	mov r0, #2
	str r0, [r7, #4]
	mov r0, #3
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C291C:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	mov r0, #0x3f
	add r5, #0x10
	str r0, [r4, r5]
	mov r0, #2
	str r0, [r7, #4]
	mov r0, #3
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C2936:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	bne _021C295C
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	ldrh r0, [r0]
	add sp, #0x10
	str r0, [r7]
	mov r0, #3
	str r0, [r6]
	mov r0, #4
	str r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021C295C:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xc
	str r1, [r4, r0]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl sub_02011D2C
	add r5, #0x10
	str r0, [r4, r5]
	mov r0, #3
	str r0, [r7, #4]
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C297A:
	cmp r0, #0xf
	beq _021C29AA
	mov r0, #1
	str r0, [r7, #4]
	mov r0, #3
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C298A:
	mov r5, #0x87
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C29A2
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021C29A2:
	ldr r0, [sp]
	ldr r1, _021C29B0 ; =0x021C2181
	bl ovy332_21c1228
_021C29AA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C29B0: .word 0x021C2181
	thumb_func_end ovy332_21c284c
_021C29B4:
	.byte 0x00, 0x48, 0x70, 0x47, 0xA0, 0x94, 0x1C, 0x02, 0x04, 0x20, 0x70, 0x47
	.byte 0x88, 0x42, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy332_21c29cc
ovy332_21c29cc: ; 0x021C29CC
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #2
	mov r2, #0xe1
	ldr r3, [r0, r1]
	lsl r2, r2, #4
	cmp r3, r2
	bhs _021C29E6
	sub r1, #8
	ldr r0, [r0, r1]
	mov r1, #1
	bl ovy332_21c12a0
_021C29E6:
	pop {r3, pc}
	thumb_func_end ovy332_21c29cc
_021C29E8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c29ec
ovy332_21c29ec: ; 0x021C29EC
	push {r3, lr}
	bl sub_021C2A3C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021C29FC
	ldr r0, [r0]
	blx r1
_021C29FC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c29ec

	thumb_func_start ovy332_21c2a00
ovy332_21c2a00: ; 0x021C2A00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _021C2A38
	bl sub_0203FFC4
	cmp r6, r0
	beq _021C2A38
	mov r0, #1
	lsl r0, r0, #8
	cmp r5, r0
	bge _021C2A38
	mov r0, #0x83
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r4, #0xc
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	blx MI_CpuCopy8
_021C2A38:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c2a00

	thumb_func_start sub_021C2A3C
sub_021C2A3C: ; 0x021C2A3C
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end sub_021C2A3C

	thumb_func_start ovy332_21c2a44
ovy332_21c2a44: ; 0x021C2A44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy332_21c1f3c
	lsl r2, r0, #3
	add r2, r0, r2
	ldr r0, _021C2A74 ; =0x021C8E04
	mov r1, #0
	add r0, r0, r2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021C2A70
	ldr r2, [r5, #4]
	lsl r0, r2, #3
	add r2, r2, r0
	ldr r0, _021C2A78 ; =0x021C8DE0
	add r0, r0, r2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021C2A70
	mov r1, #1
_021C2A70:
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C2A74: .word 0x021C8E04
_021C2A78: .word 0x021C8DE0
	thumb_func_end ovy332_21c2a44

	thumb_func_start ovy332_21c2a7c
ovy332_21c2a7c: ; 0x021C2A7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl sub_021C2174
	ldr r0, [r5, #4]
	cmp r0, #2
	beq _021C2A96
	cmp r0, #3
	beq _021C2AAE
	pop {r4, r5, r6, pc}
_021C2A96:
	mov r4, #0x22
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C2AD2
	bl sub_021A03C8
	ldr r0, _021C2AD4 ; =0x000000B5
	str r6, [r5, r4]
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
_021C2AAE:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_02152040
	mov r4, #0x87
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021C2ACC
	bl sub_0219D124
	ldr r0, [r5, r4]
	bl sub_0219D1F0
	str r6, [r5, r4]
_021C2ACC:
	ldr r0, _021C2AD8 ; =0x000000BD
	bl sub_0203CDC8
_021C2AD2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C2AD4: .word 0x000000B5
_021C2AD8: .word 0x000000BD
	thumb_func_end ovy332_21c2a7c

	thumb_func_start ovy332_21c2adc
ovy332_21c2adc: ; 0x021C2ADC
	push {r3, lr}
	mov r1, #0x8e
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021C2AEE
	add r1, r1, #4
	ldr r0, [r0, r1]
	blx r2
_021C2AEE:
	pop {r3, pc}
	thumb_func_end ovy332_21c2adc

	thumb_func_start ovy332_21c2af0
ovy332_21c2af0: ; 0x021C2AF0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r2, #3
	beq _021C2AFC
	cmp r2, #6
	bne _021C2B14
_021C2AFC:
	mov r5, #0x87
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021C2B14
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021C2B14:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c2af0

	thumb_func_start ovy332_21c2b18
ovy332_21c2b18: ; 0x021C2B18
	push {r4, r5, r6, lr}
	mov r4, #0x11
	lsl r4, r4, #4
	add r6, r1, #0
	add r1, r4, #0
	add r5, r0, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, r4
	bl ovy332_21c45bc
	ldr r1, [r5, #0xc]
	add r4, #0x58
	ldr r1, [r1, #4]
	add r0, r5, r4
	bl ovy332_21c46b0
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _021C2B58
	bl sub_02005ED4
	ldr r0, [r5, #0x3c]
	mov r1, #3
	mov r2, #1
	bl sub_021BF5B0
	mov r0, #1
	add r1, r6, #0
	bl sub_02042BA8
_021C2B58:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c2b18

	thumb_func_start ovy332_21c2b5c
ovy332_21c2b5c: ; 0x021C2B5C
	push {r3, lr}
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	bne _021C2B7C
	ldr r0, [r1, #8]
	cmp r0, #1
	bhi _021C2B78
	ldr r0, [r1, #4]
	bl sub_02017974
	mov r1, #1
	bl sub_0200CA78
_021C2B78:
	bl sub_02005F0C
_021C2B7C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c2b5c

	thumb_func_start ovy332_21c2b80
ovy332_21c2b80: ; 0x021C2B80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #7
	bls _021C2B92
	b _021C2CB4
_021C2B92:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C2B9E: ; jump table
	.short _021C2BAE - _021C2B9E - 2 ; case 0
	.short _021C2BC8 - _021C2B9E - 2 ; case 1
	.short _021C2BD8 - _021C2B9E - 2 ; case 2
	.short _021C2C4C - _021C2B9E - 2 ; case 3
	.short _021C2C64 - _021C2B9E - 2 ; case 4
	.short _021C2C8A - _021C2B9E - 2 ; case 5
	.short _021C2C9A - _021C2B9E - 2 ; case 6
	.short _021C2CB0 - _021C2B9E - 2 ; case 7
_021C2BAE:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C2CB8 ; =ovy332_21c3d78
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2BC8:
	ldr r1, _021C2CBC ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2BD8:
	ldr r0, [r5, #0xc]
	ldr r2, _021C2CC0 ; =0x021C8F28
	ldr r0, [r0, #8]
	mov r6, #0
	lsl r1, r0, #1
	ldr r0, _021C2CC4 ; =0x021C8EF6
	ldrh r0, [r0, r1]
	ldrh r1, [r2, r1]
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r0, #8]
	cmp r1, #2
	bne _021C2BFE
	mov r6, #1
	b _021C2C26
_021C2BFE:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_020104F4
	cmp r0, #0
	beq _021C2C26
	add r0, r7, #0
	mov r6, #1
	bl sub_02048564
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #8]
	lsl r2, r1, #1
	ldr r1, _021C2CC8 ; =0x021C8F14
	ldrh r1, [r1, r2]
	bl sub_0204898C
	add r7, r0, #0
_021C2C26:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r1, #8]
	ldr r2, [r5, #0x34]
	ldr r3, [sp, #8]
	add r0, r5, r0
	bl ovy332_21c4eb8
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2C4C:
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r5, r0
	bl ovy332_21c4f18
	cmp r0, #0
	beq _021C2CB4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2C64:
	mov r6, #1
	ldr r1, [r5, #0xc]
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	ldr r1, [r1, #8]
	bl sub_020104B0
	ldr r0, [r5, #0xc]
	ldr r1, [r0, #8]
	cmp r1, #2
	beq _021C2C80
	ldr r0, [r5, r6]
	bl sub_020104E0
_021C2C80:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2C8A:
	ldr r1, _021C2CCC ; =ovy332_21bf17c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2C9A:
	ldr r1, _021C2CD0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	add r0, r5, #0
	bl sub_021BFB24
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C2CB0:
	bl ovy332_21c1270
_021C2CB4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C2CB8: .word ovy332_21c3d78
_021C2CBC: .word ovy332_21bf13c
_021C2CC0: .word 0x021C8F28
_021C2CC4: .word 0x021C8EF6
_021C2CC8: .word 0x021C8F14
_021C2CCC: .word ovy332_21bf17c
_021C2CD0: .word ovy332_21bf23c
	thumb_func_end ovy332_21c2b80

	thumb_func_start ovy332_21c2cd4
ovy332_21c2cd4: ; 0x021C2CD4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #4
	bhi _021C2DC8
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C2CEE: ; jump table
	.short _021C2CF8 - _021C2CEE - 2 ; case 0
	.short _021C2D06 - _021C2CEE - 2 ; case 1
	.short _021C2D68 - _021C2CEE - 2 ; case 2
	.short _021C2D76 - _021C2CEE - 2 ; case 3
	.short _021C2DB8 - _021C2CEE - 2 ; case 4
_021C2CF8:
	ldr r1, _021C2DCC ; =ovy332_21c3c24
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2D06:
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0f10
	ldr r0, [r4, #0x1c]
	bl sub_021C11A0
	cmp r0, #0
	beq _021C2D34
	ldr r0, [r4, #0x14]
	bl sub_021C095C
	cmp r0, #0
	beq _021C2D34
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, #0x12
	mov r3, #0
	bl ovy332_21c073c
_021C2D34:
	ldr r0, [r4, #0x1c]
	bl sub_021C1168
	cmp r0, #0
	beq _021C2DC8
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r0, #2
	beq _021C2D60
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r4, #0xb4
	add r2, r0, #0
	ldr r1, _021C2DD0 ; =0x021C9440
	add r0, r4, #0
	bl ovy332_21bf864
_021C2D60:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2D68:
	ldr r1, _021C2DD4 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2D76:
	mov r2, #0x9d
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	cmp r2, #0
	beq _021C2D8A
	cmp r2, #1
	beq _021C2DA6
	cmp r2, #2
	beq _021C2DB2
	pop {r4, r5, r6, pc}
_021C2D8A:
	bl sub_02035318
	cmp r0, #0
	beq _021C2D98
	add r0, r6, #0
	ldr r1, _021C2DD8 ; =ovy332_21c2de4
	b _021C2D9C
_021C2D98:
	ldr r1, _021C2DDC ; =ovy332_21bf278
	add r0, r6, #0
_021C2D9C:
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2DA6:
	ldr r1, _021C2DE0 ; =ovy332_21c3270
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2DB2:
	add r0, r1, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C2DB8:
	ldr r0, [r4, #0x3c]
	mov r1, #1
	mov r2, #0x1e
	bl sub_021BF5B0
	add r0, r6, #0
	bl ovy332_21c1270
_021C2DC8:
	pop {r4, r5, r6, pc}
	nop
_021C2DCC: .word ovy332_21c3c24
_021C2DD0: .word 0x021C9440
_021C2DD4: .word ovy332_21bf23c
_021C2DD8: .word ovy332_21c2de4
_021C2DDC: .word ovy332_21bf278
_021C2DE0: .word ovy332_21c3270
	thumb_func_end ovy332_21c2cd4

	thumb_func_start ovy332_21c2de4
ovy332_21c2de4: ; 0x021C2DE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r1, [r5]
	add r7, r0, #0
	add r4, r2, #0
	cmp r1, #0x19
	bhi _021C2EAA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C2E00: ; jump table
	.short _021C2E34 - _021C2E00 - 2 ; case 0
	.short _021C2E4E - _021C2E00 - 2 ; case 1
	.short _021C2E64 - _021C2E00 - 2 ; case 2
	.short _021C2E80 - _021C2E00 - 2 ; case 3
	.short _021C2E9A - _021C2E00 - 2 ; case 4
	.short _021C2EEE - _021C2E00 - 2 ; case 5
	.short _021C2EFE - _021C2E00 - 2 ; case 6
	.short _021C2F12 - _021C2E00 - 2 ; case 7
	.short _021C2F48 - _021C2E00 - 2 ; case 8
	.short _021C2F7A - _021C2E00 - 2 ; case 9
	.short _021C305A - _021C2E00 - 2 ; case 10
	.short _021C3070 - _021C2E00 - 2 ; case 11
	.short _021C307E - _021C2E00 - 2 ; case 12
	.short _021C308C - _021C2E00 - 2 ; case 13
	.short _021C30AE - _021C2E00 - 2 ; case 14
	.short _021C30D8 - _021C2E00 - 2 ; case 15
	.short _021C30FA - _021C2E00 - 2 ; case 16
	.short _021C3126 - _021C2E00 - 2 ; case 17
	.short _021C3148 - _021C2E00 - 2 ; case 18
	.short _021C3166 - _021C2E00 - 2 ; case 19
	.short _021C31A6 - _021C2E00 - 2 ; case 20
	.short _021C31BE - _021C2E00 - 2 ; case 21
	.short _021C31D6 - _021C2E00 - 2 ; case 22
	.short _021C3220 - _021C2E00 - 2 ; case 23
	.short _021C3236 - _021C2E00 - 2 ; case 24
	.short _021C324A - _021C2E00 - 2 ; case 25
_021C2E34:
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C3178 ; =ovy332_21c3e00
	add r0, r7, #0
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2E4E:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x43
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2E64:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C2EAA
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bfc44
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2E80:
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d9c
	cmp r0, #0
	beq _021C2EAA
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2E9A:
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d80
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021C2EAC
_021C2EAA:
	b _021C3268
_021C2EAC:
	ldr r1, _021C317C ; =ovy332_21bf23c
	add r0, r7, #0
	bl ovy332_21c1240
	add r0, r4, #0
	bl ovy332_21bfc98
	cmp r6, #0
	beq _021C2EC2
	cmp r6, #1
	b _021C2ECA
_021C2EC2:
	mov r0, #7
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2ECA:
	ldr r0, [r4, #0x24]
	bl ovy332_21c0bac
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #0x19
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2EEE:
	ldr r1, _021C3178 ; =ovy332_21c3e00
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2EFE:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x6f
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #2
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2F12:
	mov r1, #0x9d
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r1, _021C3180 ; =ovy332_21c3c68
	bl ovy332_21c1240
	mov r0, #1
	mov r6, #0x9b
	mov r1, #0x9b
	bl sub_02042BA8
	add r6, #0x71
	ldr r0, [r4, r6]
	mov r1, #1
	bl ovy332_21c1e54
	ldr r0, _021C3184 ; =0x000008A2
	bl sub_02006254
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2F48:
	add r7, sp, #0x1c
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _021C3188 ; =0x021C53CD
	str r4, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #0x9d
	lsl r0, r0, #2
	str r6, [r4, r0]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r7, #0
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C2F7A:
	mov r6, #0x9d
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021C2FF0
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0
	bl sub_021BF844
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x40
	mov r1, #1
	bl sub_021BF844
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x40
	mov r1, #2
	bl sub_021BF844
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x40
	mov r1, #3
	bl sub_021BF844
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #4]
	mov r1, #4
	bl sub_0204C488
	ldr r0, [sp, #8]
	mov r1, #5
	bl sub_0204C488
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x3c
	mov r3, #2
	bl ovy332_21c073c
	bl sub_02006280
	ldr r0, _021C318C ; =0x0000064B
	bl sub_02006254
	mov r0, #0
	str r0, [r4, r6]
	b _021C300E
_021C2FF0:
	add r6, #0xc
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021C300E
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021C300E
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	bl ovy332_21c1ea4
_021C300E:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #3
	bne _021C302E
	bl sub_02042BC4
	mov r1, #0xa1
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xd
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C302E:
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C3044
	bl sub_02006280
	mov r0, #0xb
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3044:
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #6
	bne _021C3108
	bl sub_02006280
	mov r0, #0xa
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C305A:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C3108
	mov r0, #0xc
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3070:
	ldr r1, _021C317C ; =ovy332_21bf23c
	bl ovy332_21c1240
	mov r0, #5
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C307E:
	ldr r1, _021C317C ; =ovy332_21bf23c
	bl ovy332_21c1240
	mov r0, #0x19
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C308C:
	mov r0, #0x24
	str r0, [sp, #0x18]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r1, r4, r0
	str r1, [sp, #0x14]
	sub r0, #0x5c
	ldr r0, [r4, r0]
	mov r1, #3
	add r2, sp, #0x14
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C30AE:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #3
	bne _021C3108
	ldr r0, [r4, r6]
	add r6, #0x80
	add r1, r4, r6
	mov r2, #0x24
	bl ovy332_21c2024
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C30D8:
	mov r0, #0x2c
	mov r1, #0x2c
	add r0, #0xe4
	str r1, [sp, #0x10]
	add r0, r4, r0
	add r1, #0xe0
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	mov r1, #3
	add r2, sp, #0xc
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C30FA:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #3
	beq _021C310A
_021C3108:
	b _021C3268
_021C310A:
	ldr r0, [r4, r6]
	add r6, #0x30
	add r1, r4, r6
	mov r2, #0x2c
	bl ovy332_21c2024
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3126:
	ldr r1, _021C317C ; =ovy332_21bf23c
	bl ovy332_21c1240
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C3140
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3140:
	mov r0, #0x14
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3148:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021C3156
	ldr r1, _021C3190 ; =ovy332_21c382c
	b _021C3158
_021C3156:
	ldr r1, _021C3194 ; =ovy332_21c39a4
_021C3158:
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3166:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021C3174
	ldr r1, _021C3190 ; =ovy332_21c382c
	b _021C3198
_021C3174:
	ldr r1, _021C3194 ; =ovy332_21c39a4
	b _021C3198
	.align 2, 0
_021C3178: .word ovy332_21c3e00
_021C317C: .word ovy332_21bf23c
_021C3180: .word ovy332_21c3c68
_021C3184: .word 0x000008A2
_021C3188: .word 0x021C53CD
_021C318C: .word 0x0000064B
_021C3190: .word ovy332_21c382c
_021C3194: .word ovy332_21c39a4
_021C3198:
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C31A6:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C31BE:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C3268
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C31D6:
	mov r1, #0x11
	mov r0, #0x11
	lsl r1, r1, #4
	lsl r0, r0, #4
	add r1, #0x2c
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #1
	mov r6, #1
	bl ovy332_21c4624
	cmp r0, #0
	beq _021C3218
	mov r1, #0x11
	mov r0, #0x11
	lsl r1, r1, #4
	lsl r0, r0, #4
	add r1, #0x2c
	add r0, r4, r0
	add r1, r4, r1
	bl ovy332_21c4680
	mov r0, #0x11
	add r6, #0xff
	lsl r0, r0, #4
	ldr r1, [r4, r6]
	add r0, r4, r0
	bl ovy332_21c45f4
	ldr r1, _021C326C ; =ovy332_21c3af4
	add r0, r7, #0
	bl ovy332_21c1240
_021C3218:
	mov r0, #0x17
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3220:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x39
	mov r3, #3
	bl ovy332_21c073c
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C3236:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3268
	ldr r0, [r5]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021C324A:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ovy332_21c1e54
	add r0, r4, #0
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	add r0, r7, #0
	bl ovy332_21c1270
_021C3268:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C326C: .word ovy332_21c3af4
	thumb_func_end ovy332_21c2de4

	thumb_func_start ovy332_21c3270
ovy332_21c3270: ; 0x021C3270
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #4
	bhi _021C336A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C3288: ; jump table
	.short _021C3292 - _021C3288 - 2 ; case 0
	.short _021C32A0 - _021C3288 - 2 ; case 1
	.short _021C3310 - _021C3288 - 2 ; case 2
	.short _021C331E - _021C3288 - 2 ; case 3
	.short _021C3366 - _021C3288 - 2 ; case 4
_021C3292:
	ldr r1, _021C336C ; =ovy332_21c3cac
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C32A0:
	ldr r0, [r5, #0x1c]
	bl ovy332_21c0f10
	ldr r0, [r5, #0x1c]
	bl sub_021C11A0
	cmp r0, #0
	beq _021C32DC
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	cmp r0, #0
	beq _021C32DC
	ldr r0, [r5, #0x1c]
	bl sub_021C119C
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl ovy332_21c4cc4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
_021C32DC:
	ldr r0, [r5, #0x1c]
	bl sub_021C1168
	cmp r0, #0
	beq _021C336A
	ldr r0, [r5, #0x1c]
	bl sub_021C119C
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r0, #3
	beq _021C3308
	ldr r0, [r5, #0x1c]
	bl sub_021C119C
	add r5, #0xb4
	add r2, r0, #0
	ldr r1, _021C3370 ; =0x021C9444
	add r0, r5, #0
	bl ovy332_21bf864
_021C3308:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C3310:
	ldr r1, _021C3374 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C331E:
	mov r1, #0x9d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #3
	bhi _021C336A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C3334: ; jump table
	.short _021C333C - _021C3334 - 2 ; case 0
	.short _021C3348 - _021C3334 - 2 ; case 1
	.short _021C3354 - _021C3334 - 2 ; case 2
	.short _021C3360 - _021C3334 - 2 ; case 3
_021C333C:
	ldr r1, _021C3378 ; =ovy332_21c3384
	bl ovy332_21c1240
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C3348:
	ldr r1, _021C337C ; =ovy332_21c350c
	bl ovy332_21c1240
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C3354:
	ldr r1, _021C3380 ; =ovy332_21c36a4
	bl ovy332_21c1240
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C3360:
	bl ovy332_21c1270
	pop {r3, r4, r5, pc}
_021C3366:
	mov r0, #0
	str r0, [r4]
_021C336A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C336C: .word ovy332_21c3cac
_021C3370: .word 0x021C9444
_021C3374: .word ovy332_21bf23c
_021C3378: .word ovy332_21c3384
_021C337C: .word ovy332_21c350c
_021C3380: .word ovy332_21c36a4
	thumb_func_end ovy332_21c3270

	thumb_func_start ovy332_21c3384
ovy332_21c3384: ; 0x021C3384
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0xb
	bls _021C3394
	b _021C34FC
_021C3394:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C33A0: ; jump table
	.short _021C33B8 - _021C33A0 - 2 ; case 0
	.short _021C33C6 - _021C33A0 - 2 ; case 1
	.short _021C3404 - _021C33A0 - 2 ; case 2
	.short _021C341C - _021C33A0 - 2 ; case 3
	.short _021C343A - _021C33A0 - 2 ; case 4
	.short _021C344C - _021C33A0 - 2 ; case 5
	.short _021C346C - _021C33A0 - 2 ; case 6
	.short _021C347C - _021C33A0 - 2 ; case 7
	.short _021C3496 - _021C33A0 - 2 ; case 8
	.short _021C34CC - _021C33A0 - 2 ; case 9
	.short _021C34EA - _021C33A0 - 2 ; case 10
	.short _021C34F8 - _021C33A0 - 2 ; case 11
_021C33B8:
	ldr r1, _021C3500 ; =ovy332_21c3cf0
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C33C6:
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4860
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4884
	cmp r0, #0
	beq _021C33F2
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4878
	cmp r0, #3
	bne _021C33EC
	mov r0, #0xa
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C33EC:
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C33F2:
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C48A4
	cmp r0, #2
	bne _021C34FC
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3404:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C3504 ; =ovy332_21c3af4
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C341C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl ovy332_21c4c94
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C343A:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C34FC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C344C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02010528
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	add r2, #0x70
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C346C:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C34FC
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C347C:
	add r0, r5, #0
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4890
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3496:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C48A8
	cmp r0, #0
	beq _021C34B0
	cmp r0, #2
	beq _021C34B8
	b _021C34C4
_021C34B0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x3d
	b _021C34BE
_021C34B8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x3e
_021C34BE:
	mov r3, #0
	bl ovy332_21c073c
_021C34C4:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C34CC:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C34FC
	mov r0, #0
	bl sub_02045B7C
	bl sub_0203DEFC
	cmp r0, #0
	beq _021C34FC
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C34EA:
	ldr r1, _021C3508 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C34F8:
	bl ovy332_21c1270
_021C34FC:
	pop {r4, r5, r6, pc}
	nop
_021C3500: .word ovy332_21c3cf0
_021C3504: .word ovy332_21c3af4
_021C3508: .word ovy332_21bf23c
	thumb_func_end ovy332_21c3384

	thumb_func_start ovy332_21c350c
ovy332_21c350c: ; 0x021C350C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0xb
	bhi _021C3590
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C3526: ; jump table
	.short _021C353E - _021C3526 - 2 ; case 0
	.short _021C354C - _021C3526 - 2 ; case 1
	.short _021C3598 - _021C3526 - 2 ; case 2
	.short _021C35B0 - _021C3526 - 2 ; case 3
	.short _021C35CE - _021C3526 - 2 ; case 4
	.short _021C35E0 - _021C3526 - 2 ; case 5
	.short _021C3600 - _021C3526 - 2 ; case 6
	.short _021C3610 - _021C3526 - 2 ; case 7
	.short _021C362A - _021C3526 - 2 ; case 8
	.short _021C3666 - _021C3526 - 2 ; case 9
	.short _021C3684 - _021C3526 - 2 ; case 10
	.short _021C3692 - _021C3526 - 2 ; case 11
_021C353E:
	ldr r1, _021C3698 ; =ovy332_21c3d34
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C354C:
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4860
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4884
	cmp r0, #0
	beq _021C3578
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4878
	cmp r0, #2
	bne _021C3572
	mov r0, #0xa
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3572:
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3578:
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C48A4
	cmp r0, #2
	beq _021C3592
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C48A4
	cmp r0, #4
	beq _021C3592
_021C3590:
	b _021C3696
_021C3592:
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3598:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C369C ; =ovy332_21c3af4
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C35B0:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl ovy332_21c4ca4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C35CE:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3696
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C35E0:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02010564
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	add r2, #0x73
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3600:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3696
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3610:
	add r0, r5, #0
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4890
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C362A:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C48A4
	cmp r0, #4
	bne _021C3646
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x44
	b _021C3658
_021C3646:
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C48A8
	cmp r0, #1
	bne _021C365E
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x3f
_021C3658:
	mov r3, #0
	bl ovy332_21c073c
_021C365E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3666:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3696
	mov r0, #0
	bl sub_02045B7C
	bl sub_0203DEFC
	cmp r0, #0
	beq _021C3696
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3684:
	ldr r1, _021C36A0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3692:
	bl ovy332_21c1270
_021C3696:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C3698: .word ovy332_21c3d34
_021C369C: .word ovy332_21c3af4
_021C36A0: .word ovy332_21bf23c
	thumb_func_end ovy332_21c350c

	thumb_func_start ovy332_21c36a4
ovy332_21c36a4: ; 0x021C36A4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0xb
	bls _021C36B4
	b _021C381C
_021C36B4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C36C0: ; jump table
	.short _021C36D8 - _021C36C0 - 2 ; case 0
	.short _021C36E6 - _021C36C0 - 2 ; case 1
	.short _021C3724 - _021C36C0 - 2 ; case 2
	.short _021C373C - _021C36C0 - 2 ; case 3
	.short _021C375A - _021C36C0 - 2 ; case 4
	.short _021C376C - _021C36C0 - 2 ; case 5
	.short _021C378C - _021C36C0 - 2 ; case 6
	.short _021C379C - _021C36C0 - 2 ; case 7
	.short _021C37B6 - _021C36C0 - 2 ; case 8
	.short _021C37EC - _021C36C0 - 2 ; case 9
	.short _021C380A - _021C36C0 - 2 ; case 10
	.short _021C3818 - _021C36C0 - 2 ; case 11
_021C36D8:
	ldr r1, _021C3820 ; =ovy332_21c3e44
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C36E6:
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4860
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C4884
	cmp r0, #0
	beq _021C3712
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4878
	cmp r0, #3
	bne _021C370C
	mov r0, #0xa
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C370C:
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3712:
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C48A4
	cmp r0, #2
	bne _021C381C
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3724:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C3824 ; =ovy332_21c3af4
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C373C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl ovy332_21c4cb4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C375A:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C381C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C376C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_020105A0
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	add r2, #0x75
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C378C:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C381C
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C379C:
	add r0, r5, #0
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	add r5, #0xdc
	add r0, r5, #0
	bl sub_021C4890
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C37B6:
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	add r0, r5, #0
	add r0, #0xdc
	bl sub_021C48A8
	cmp r0, #1
	beq _021C37D0
	cmp r0, #2
	beq _021C37D8
	b _021C37E4
_021C37D0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x61
	b _021C37DE
_021C37D8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x62
_021C37DE:
	mov r3, #0
	bl ovy332_21c073c
_021C37E4:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C37EC:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C381C
	mov r0, #0
	bl sub_02045B7C
	bl sub_0203DEFC
	cmp r0, #0
	beq _021C381C
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C380A:
	ldr r1, _021C3828 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3818:
	bl ovy332_21c1270
_021C381C:
	pop {r4, r5, r6, pc}
	nop
_021C3820: .word ovy332_21c3e44
_021C3824: .word ovy332_21c3af4
_021C3828: .word ovy332_21bf23c
	thumb_func_end ovy332_21c36a4

	thumb_func_start ovy332_21c382c
ovy332_21c382c: ; 0x021C382C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #9
	bls _021C383C
	b _021C3992
_021C383C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C3848: ; jump table
	.short _021C385C - _021C3848 - 2 ; case 0
	.short _021C3880 - _021C3848 - 2 ; case 1
	.short _021C3896 - _021C3848 - 2 ; case 2
	.short _021C38A8 - _021C3848 - 2 ; case 3
	.short _021C38C4 - _021C3848 - 2 ; case 4
	.short _021C38DC - _021C3848 - 2 ; case 5
	.short _021C38F4 - _021C3848 - 2 ; case 6
	.short _021C3954 - _021C3848 - 2 ; case 7
	.short _021C397E - _021C3848 - 2 ; case 8
	.short _021C398E - _021C3848 - 2 ; case 9
_021C385C:
	mov r1, #0x11
	lsl r1, r1, #4
	add r0, r4, r1
	add r1, #0x2c
	add r1, r4, r1
	mov r2, #1
	mov r4, #1
	bl ovy332_21c4624
	cmp r0, #0
	beq _021C387A
	mov r0, #3
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C387A:
	add sp, #8
	str r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3880:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x3b
	mov r3, #3
	bl ovy332_21c073c
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3896:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3992
	mov r0, #9
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C38A8:
	ldr r1, _021C3998 ; =ovy332_21c3d78
	bl ovy332_21c1240
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C38C4:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	mov r2, #0
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C38DC:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1f3c
	cmp r0, #3
	bne _021C3992
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C38F4:
	mov r6, #0x9d
	mov r7, #1
	lsl r6, r6, #2
_021C38FA:
	ldr r1, [r4, r6]
	cmp r1, #5
	blo _021C3908
	mov r0, #8
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3908:
	add r0, r4, #0
	add r2, r7, #0
	bl ovy332_21c4cf8
	cmp r0, #0
	beq _021C394C
	mov r2, #0x9d
	lsl r2, r2, #2
	add r0, r2, #0
	add r0, #8
	ldr r1, [r4, r2]
	ldr r0, [r4, r0]
	ldr r3, _021C399C ; =0x021C8F0A
	str r0, [sp]
	mov r0, #0
	lsl r6, r1, #1
	str r0, [sp, #4]
	sub r2, #0xc4
	add r0, r4, r2
	ldrh r3, [r3, r6]
	ldr r2, [r4, #0x34]
	bl ovy332_21c4eb8
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x2b
	mov r3, #3
	bl ovy332_21c073c
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C394C:
	ldr r0, [r4, r6]
	add r0, r0, #1
	str r0, [r4, r6]
	b _021C38FA
_021C3954:
	mov r6, #0x1b
	lsl r6, r6, #4
	add r0, r4, r6
	bl ovy332_21c4f18
	cmp r0, #0
	beq _021C3992
	add r0, r6, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r4, r0]
	add r6, #0xc4
	add r0, r0, #1
	str r0, [r4, r6]
	mov r0, #4
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C397E:
	ldr r1, _021C39A0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C398E:
	bl ovy332_21c1270
_021C3992:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3998: .word ovy332_21c3d78
_021C399C: .word 0x021C8F0A
_021C39A0: .word ovy332_21bf23c
	thumb_func_end ovy332_21c382c

	thumb_func_start ovy332_21c39a4
ovy332_21c39a4: ; 0x021C39A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0xa
	bls _021C39B2
	b _021C3AE8
_021C39B2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C39BE: ; jump table
	.short _021C39D4 - _021C39BE - 2 ; case 0
	.short _021C39F4 - _021C39BE - 2 ; case 1
	.short _021C3A08 - _021C39BE - 2 ; case 2
	.short _021C3A18 - _021C39BE - 2 ; case 3
	.short _021C3A32 - _021C39BE - 2 ; case 4
	.short _021C3A4C - _021C39BE - 2 ; case 5
	.short _021C3A62 - _021C39BE - 2 ; case 6
	.short _021C3A78 - _021C39BE - 2 ; case 7
	.short _021C3AB4 - _021C39BE - 2 ; case 8
	.short _021C3AD6 - _021C39BE - 2 ; case 9
	.short _021C3AE4 - _021C39BE - 2 ; case 10
_021C39D4:
	mov r1, #0x11
	lsl r1, r1, #4
	add r0, r4, r1
	add r1, #0x2c
	add r1, r4, r1
	mov r2, #0
	bl ovy332_21c4624
	cmp r0, #0
	beq _021C39EE
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C39EE:
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C39F4:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x3a
	mov r3, #3
	bl ovy332_21c073c
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A08:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3AE8
	mov r0, #0xa
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A18:
	ldr r1, _021C3AEC ; =ovy332_21c3dbc
	bl ovy332_21c1240
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A32:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3AE8
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A4C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	mov r2, #0
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A62:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1f3c
	cmp r0, #3
	bne _021C3AE8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A78:
	mov r6, #0x9d
	mov r7, #0
	lsl r6, r6, #2
_021C3A7E:
	ldr r1, [r4, r6]
	cmp r1, #5
	blo _021C3A8A
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3A8A:
	add r0, r4, #0
	add r2, r7, #0
	bl ovy332_21c4cf8
	cmp r0, #0
	beq _021C3AAC
	mov r1, #0x9f
	lsl r1, r1, #2
	ldr r0, [r4, #0x10]
	ldr r1, [r4, r1]
	mov r2, #3
	bl ovy332_21c0758
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3AAC:
	ldr r0, [r4, r6]
	add r0, r0, #1
	str r0, [r4, r6]
	b _021C3A7E
_021C3AB4:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3AE8
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3AD6:
	ldr r1, _021C3AF0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C3AE4:
	bl ovy332_21c1270
_021C3AE8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C3AEC: .word ovy332_21c3dbc
_021C3AF0: .word ovy332_21bf23c
	thumb_func_end ovy332_21c39a4

	thumb_func_start ovy332_21c3af4
ovy332_21c3af4: ; 0x021C3AF4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #7
	bls _021C3B02
	b _021C3C1E
_021C3B02:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C3B0E: ; jump table
	.short _021C3B1E - _021C3B0E - 2 ; case 0
	.short _021C3B32 - _021C3B0E - 2 ; case 1
	.short _021C3B76 - _021C3B0E - 2 ; case 2
	.short _021C3BB8 - _021C3B0E - 2 ; case 3
	.short _021C3BC4 - _021C3B0E - 2 ; case 4
	.short _021C3BCA - _021C3B0E - 2 ; case 5
	.short _021C3C00 - _021C3B0E - 2 ; case 6
	.short _021C3C1A - _021C3B0E - 2 ; case 7
_021C3B1E:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x1d
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3B32:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3C1E
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02007468
	cmp r0, #0
	beq _021C3B5C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_0201782C
	b _021C3B66
_021C3B5C:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_021BEC24
_021C3B66:
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3B76:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02007468
	cmp r0, #0
	beq _021C3BA4
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017850
	cmp r0, #2
	bne _021C3C1E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3BA4:
	add r5, #0xfc
	ldr r0, [r5]
	bl sub_021BEC98
	cmp r0, #0
	beq _021C3C1E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3BB8:
	ldr r0, _021C3C20 ; =0x00000558
	bl sub_02006254
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3BC4:
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3BCA:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #1
	str r1, [r5, r0]
	cmp r2, #0x3c
	bls _021C3C1E
	mov r6, #1
	bl sub_02042788
	cmp r0, #0
	beq _021C3BE4
	mov r6, #3
_021C3BE4:
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x38
	add r3, r6, #0
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3C00:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C3C1E
	bl sub_020062A8
	cmp r0, #0
	bne _021C3C1E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C3C1A:
	bl ovy332_21c1270
_021C3C1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C3C20: .word 0x00000558
	thumb_func_end ovy332_21c3af4

	thumb_func_start ovy332_21c3c24
ovy332_21c3c24: ; 0x021C3C24
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3C38
	cmp r1, #1
	beq _021C3C4A
	cmp r1, #2
	beq _021C3C5C
	pop {r4, pc}
_021C3C38:
	ldr r0, [r2]
	ldr r1, _021C3C64 ; =0x021C8F64
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3C4A:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3C60
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3C5C:
	bl ovy332_21c1270
_021C3C60:
	pop {r4, pc}
	nop
_021C3C64: .word 0x021C8F64
	thumb_func_end ovy332_21c3c24

	thumb_func_start ovy332_21c3c68
ovy332_21c3c68: ; 0x021C3C68
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3C7C
	cmp r1, #1
	beq _021C3C8E
	cmp r1, #2
	beq _021C3CA0
	pop {r4, pc}
_021C3C7C:
	ldr r0, [r2]
	ldr r1, _021C3CA8 ; =0x021C8F74
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3C8E:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3CA4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3CA0:
	bl ovy332_21c1270
_021C3CA4:
	pop {r4, pc}
	nop
_021C3CA8: .word 0x021C8F74
	thumb_func_end ovy332_21c3c68

	thumb_func_start ovy332_21c3cac
ovy332_21c3cac: ; 0x021C3CAC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3CC0
	cmp r1, #1
	beq _021C3CD2
	cmp r1, #2
	beq _021C3CE4
	pop {r4, pc}
_021C3CC0:
	ldr r0, [r2]
	ldr r1, _021C3CEC ; =0x021C8F84
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3CD2:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3CE8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3CE4:
	bl ovy332_21c1270
_021C3CE8:
	pop {r4, pc}
	nop
_021C3CEC: .word 0x021C8F84
	thumb_func_end ovy332_21c3cac

	thumb_func_start ovy332_21c3cf0
ovy332_21c3cf0: ; 0x021C3CF0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3D04
	cmp r1, #1
	beq _021C3D16
	cmp r1, #2
	beq _021C3D28
	pop {r4, pc}
_021C3D04:
	ldr r0, [r2]
	ldr r1, _021C3D30 ; =0x021C8F94
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3D16:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3D2C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3D28:
	bl ovy332_21c1270
_021C3D2C:
	pop {r4, pc}
	nop
_021C3D30: .word 0x021C8F94
	thumb_func_end ovy332_21c3cf0

	thumb_func_start ovy332_21c3d34
ovy332_21c3d34: ; 0x021C3D34
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3D48
	cmp r1, #1
	beq _021C3D5A
	cmp r1, #2
	beq _021C3D6C
	pop {r4, pc}
_021C3D48:
	ldr r0, [r2]
	ldr r1, _021C3D74 ; =0x021C8FA4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3D5A:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3D70
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3D6C:
	bl ovy332_21c1270
_021C3D70:
	pop {r4, pc}
	nop
_021C3D74: .word 0x021C8FA4
	thumb_func_end ovy332_21c3d34

	thumb_func_start ovy332_21c3d78
ovy332_21c3d78: ; 0x021C3D78
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3D8C
	cmp r1, #1
	beq _021C3D9E
	cmp r1, #2
	beq _021C3DB0
	pop {r4, pc}
_021C3D8C:
	ldr r0, [r2]
	ldr r1, _021C3DB8 ; =0x021C8FB4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3D9E:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3DB4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3DB0:
	bl ovy332_21c1270
_021C3DB4:
	pop {r4, pc}
	nop
_021C3DB8: .word 0x021C8FB4
	thumb_func_end ovy332_21c3d78

	thumb_func_start ovy332_21c3dbc
ovy332_21c3dbc: ; 0x021C3DBC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3DD0
	cmp r1, #1
	beq _021C3DE2
	cmp r1, #2
	beq _021C3DF4
	pop {r4, pc}
_021C3DD0:
	ldr r0, [r2]
	ldr r1, _021C3DFC ; =0x021C8FC4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3DE2:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3DF8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3DF4:
	bl ovy332_21c1270
_021C3DF8:
	pop {r4, pc}
	nop
_021C3DFC: .word 0x021C8FC4
	thumb_func_end ovy332_21c3dbc

	thumb_func_start ovy332_21c3e00
ovy332_21c3e00: ; 0x021C3E00
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3E14
	cmp r1, #1
	beq _021C3E26
	cmp r1, #2
	beq _021C3E38
	pop {r4, pc}
_021C3E14:
	ldr r0, [r2]
	ldr r1, _021C3E40 ; =0x021C8FD4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3E26:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3E3C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3E38:
	bl ovy332_21c1270
_021C3E3C:
	pop {r4, pc}
	nop
_021C3E40: .word 0x021C8FD4
	thumb_func_end ovy332_21c3e00

	thumb_func_start ovy332_21c3e44
ovy332_21c3e44: ; 0x021C3E44
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C3E58
	cmp r1, #1
	beq _021C3E6A
	cmp r1, #2
	beq _021C3E7C
	pop {r4, pc}
_021C3E58:
	ldr r0, [r2]
	ldr r1, _021C3E84 ; =0x021C8FE4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3E6A:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C3E80
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C3E7C:
	bl ovy332_21c1270
_021C3E80:
	pop {r4, pc}
	nop
_021C3E84: .word 0x021C8FE4
	thumb_func_end ovy332_21c3e44

	thumb_func_start ovy332_21c3e88
ovy332_21c3e88: ; 0x021C3E88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #1
	mov r3, #0
	mov r5, #1
	mov r6, #0
	bl ovy332_21c073c
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x48
	blx MI_CpuFill8
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #0xa
	str r5, [sp, #4]
	str r5, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	ldr r5, _021C3F5C ; =0x021C9440
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	add r1, r5, #0
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xb4
	bl ovy332_21bf8bc
	cmp r0, #0
	beq _021C3EEA
	add r0, r4, #0
	add r0, #0xb4
	add r1, r5, #0
	bl ovy332_21bf8e4
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0xb4
	add r1, r5, #0
	bl ovy332_21bf88c
	b _021C3EEC
_021C3EEA:
	str r6, [sp, #0x20]
_021C3EEC:
	ldr r0, [sp, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _021C3F2A
	add r5, sp, #4
	mov r2, #0x1a
	mov r1, #2
	mov r7, #3
_021C3EFC:
	lsl r3, r6, #3
	add r0, r5, r3
	add r0, #0x26
	strb r2, [r0]
	add r0, r5, r3
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, r3
	add r0, #0x24
	strb r7, [r0]
	add r0, r5, r3
	add r0, #0x27
	ldrb r0, [r0]
	add r3, r5, r3
	add r3, #0x25
	add r0, r0, #3
	mul r0, r6
	add r0, r0, #5
	strb r0, [r3]
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	cmp r6, r0
	blo _021C3EFC
_021C3F2A:
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #3
	str r0, [sp, #0x2c]
	mov r0, #7
	str r0, [sp, #0x34]
	ldr r1, [sp]
	add r0, sp, #4
	bl ovy332_21c0dd4
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy332_21bfbf0
	ldr r2, [sp, #0x20]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, #0x12
	mov r3, #0
	bl ovy332_21c073c
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021C3F5C: .word 0x021C9440
	thumb_func_end ovy332_21c3e88

	thumb_func_start ovy332_21c3f60
ovy332_21c3f60: ; 0x021C3F60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	bl ovy332_21c1140
	cmp r4, #0
	beq _021C3F9C
	cmp r6, #0
	beq _021C3F9C
	cmp r0, #0
	beq _021C3F9C
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021C3F9C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c3f60

	thumb_func_start ovy332_21c3fa0
ovy332_21c3fa0: ; 0x021C3FA0
	push {r4, lr}
	add r4, r0, #0
	bl ovy332_21bfc2c
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0ee8
	mov r0, #0
	str r0, [r4, #0x1c]
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c3fa0

	thumb_func_start ovy332_21c3fc0
ovy332_21c3fc0: ; 0x021C3FC0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x15
	mov r3, #2
	bl ovy332_21c073c
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0
	add r2, r4, #0
	bl ovy332_21bf694
	add r0, r5, #0
	add r0, #0x40
	mov r1, #1
	add r2, r4, #0
	bl ovy332_21bf694
	add r0, r5, #0
	add r0, #0x40
	mov r1, #2
	add r2, r4, #0
	bl ovy332_21bf694
	add r5, #0x40
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ovy332_21bf694
	mov r0, #6
	ldr r6, _021C405C ; =0x04000050
	str r0, [sp]
	add r0, r6, #0
	mov r5, #0x10
	mov r1, #0x10
	mov r2, #0xe
	mov r3, #0x10
	mov r4, #0xe
	bl G2x_SetBlendAlpha_
	lsl r2, r5, #0x16
	add r3, r6, #0
	ldr r1, [r2]
	ldr r0, _021C4060 ; =0xFFFF1FFF
	sub r3, #8
	and r1, r0
	lsl r0, r5, #9
	orr r0, r1
	str r0, [r2]
	add r0, r6, #0
	lsl r1, r4, #0xc
	sub r0, #0x10
	strh r1, [r0]
	add r1, r6, #0
	mov r0, #0x20
	sub r1, #0xc
	strh r0, [r1]
	ldrh r4, [r3]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r4, r1
	orr r4, r2
	strh r4, [r3]
	sub r3, r6, #6
	ldrh r4, [r3]
	bic r4, r1
	add r1, r4, #0
	orr r1, r2
	orr r0, r1
	strh r0, [r3]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021C405C: .word 0x04000050
_021C4060: .word 0xFFFF1FFF
	thumb_func_end ovy332_21c3fc0

	thumb_func_start ovy332_21c4064
ovy332_21c4064: ; 0x021C4064
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C407A
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C407A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4064

	thumb_func_start ovy332_21c4080
ovy332_21c4080: ; 0x021C4080
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021C409A
	mov r0, #6
	bl sub_02045738
	ldr r0, [r4, #0x24]
	bl ovy332_21c0bac
	mov r0, #0
	str r0, [r4, #0x24]
_021C409A:
	ldr r2, _021C40E8 ; =0x04000050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _021C40EC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0x40
	mov r1, #3
	bl ovy332_21bf82c
	add r0, r4, #0
	add r0, #0x40
	mov r1, #2
	bl ovy332_21bf82c
	add r0, r4, #0
	add r0, #0x40
	mov r1, #1
	bl ovy332_21bf82c
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0
	bl ovy332_21bf82c
	ldr r0, [r4, #0x10]
	bl ovy332_21c0960
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	pop {r4, pc}
	nop
_021C40E8: .word 0x04000050
_021C40EC: .word 0xFFFF1FFF
	thumb_func_end ovy332_21c4080

	thumb_func_start ovy332_21c40f0
ovy332_21c40f0: ; 0x021C40F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	str r1, [sp]
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x48
	mov r5, #0
	blx MI_CpuFill8
	mov r1, #1
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #0xa
	str r1, [sp, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	ldr r6, _021C41C8 ; =0x021C9444
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	add r1, r6, #0
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xb4
	bl ovy332_21bf8bc
	cmp r0, #0
	beq _021C4146
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf8e4
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf88c
	b _021C4148
_021C4146:
	str r5, [sp, #0x20]
_021C4148:
	ldr r0, [sp, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _021C4186
	add r5, sp, #4
	mov r2, #0x1a
	mov r1, #2
	mov r7, #3
_021C4158:
	lsl r3, r6, #3
	add r0, r5, r3
	add r0, #0x26
	strb r2, [r0]
	add r0, r5, r3
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, r3
	add r0, #0x24
	strb r7, [r0]
	add r0, r5, r3
	add r0, #0x27
	ldrb r0, [r0]
	add r3, r5, r3
	add r3, #0x25
	add r0, r0, #3
	mul r0, r6
	add r0, r0, #5
	strb r0, [r3]
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	cmp r6, r0
	blo _021C4158
_021C4186:
	mov r0, #5
	str r0, [sp, #0x24]
	mov r0, #6
	str r0, [sp, #0x2c]
	mov r0, #0x63
	mov r5, #7
	str r0, [sp, #0x34]
	str r5, [sp, #0x3c]
	ldr r1, [sp]
	add r0, sp, #4
	bl ovy332_21c0dd4
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy332_21bfbf0
	ldr r1, [sp, #0x20]
	add r5, #0xf9
	lsl r1, r1, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl ovy332_21c4cc4
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021C41C8: .word 0x021C9444
	thumb_func_end ovy332_21c40f0

	thumb_func_start ovy332_21c41cc
ovy332_21c41cc: ; 0x021C41CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	bl ovy332_21c1140
	cmp r4, #0
	beq _021C41FC
	cmp r0, #0
	beq _021C41FC
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C41FC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c41cc

	thumb_func_start ovy332_21c4200
ovy332_21c4200: ; 0x021C4200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0ee8
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ovy332_21bfc2c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4200

	thumb_func_start ovy332_21c4224
ovy332_21c4224: ; 0x021C4224
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ovy332_21bfbf0
	mov r6, #1
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	bl ovy332_21c4c94
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r5, #0x34]
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	add r2, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r5, #0x1c
	add r0, #0xdc
	add r3, r5, #0
	str r4, [sp, #0x10]
	bl ovy332_21c46e4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy332_21c4224

	thumb_func_start ovy332_21c4270
ovy332_21c4270: ; 0x021C4270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r5, #0xdc
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021C486C
	cmp r4, #0
	beq _021C429C
	cmp r0, #0
	beq _021C429C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C429C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c4270

	thumb_func_start ovy332_21c42a0
ovy332_21c42a0: ; 0x021C42A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdc
	bl ovy332_21c482c
	add r0, r4, #0
	bl ovy332_21bfc2c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c42a0

	thumb_func_start ovy332_21c42c0
ovy332_21c42c0: ; 0x021C42C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ovy332_21bfbf0
	mov r6, #1
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	bl ovy332_21c4ca4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r5, #0x34]
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	add r2, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r5, #0x1c
	add r0, #0xdc
	add r3, r5, #0
	str r4, [sp, #0x10]
	bl ovy332_21c46e4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy332_21c42c0

	thumb_func_start ovy332_21c430c
ovy332_21c430c: ; 0x021C430C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r5, #0xdc
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021C486C
	cmp r4, #0
	beq _021C4338
	cmp r0, #0
	beq _021C4338
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C4338:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c430c

	thumb_func_start ovy332_21c433c
ovy332_21c433c: ; 0x021C433C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdc
	bl ovy332_21c482c
	add r0, r4, #0
	bl ovy332_21bfc2c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c433c

	thumb_func_start ovy332_21c435c
ovy332_21c435c: ; 0x021C435C
	push {r3, lr}
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r1, r3, #0
	add r0, r3, r0
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x2c]
	add r1, #0x40
	bl ovy332_21c4dc4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c435c
_021C4378:
	.byte 0x01, 0x20, 0x70, 0x47, 0x1B, 0x21, 0x09, 0x01
	.byte 0x01, 0x4B, 0x40, 0x18, 0x18, 0x47, 0xC0, 0x46, 0x81, 0x4E, 0x1C, 0x02

	thumb_func_start ovy332_21c438c
ovy332_21c438c: ; 0x021C438C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov ip, r1
	mov r7, #0x11
	ldr r1, _021C4400 ; =0x021C8F32
	ldr r6, _021C4404 ; =0x021C93B0
	add r4, r0, #0
	mov r3, #0
	mov r2, #0
	lsl r7, r7, #4
_021C43A0:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _021C43BA
	lsl r0, r2, #1
	add r0, r1, r0
	mov r5, #0xc
	mul r5, r3
	ldrh r0, [r0, #0xa]
	add r5, r6, r5
	add r3, r3, #1
	str r0, [r5, #0x14]
_021C43BA:
	add r2, r2, #1
	cmp r2, #5
	blt _021C43A0
	add r0, r3, #1
	cmp r0, #5
	bls _021C43C8
	mov r3, #4
_021C43C8:
	ldr r0, [r4, #0x2c]
	add r1, r3, #1
	str r0, [sp]
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	mov r0, ip
	str r0, [sp, #8]
	ldr r0, _021C4404 ; =0x021C93B0
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #0xe
	bl ovy332_21c0b20
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #1
	bl ovy332_21bf5bc
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x1e
	mov r3, #3
	bl ovy332_21c073c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C4400: .word 0x021C8F32
_021C4404: .word 0x021C93B0
	thumb_func_end ovy332_21c438c

	thumb_func_start ovy332_21c4408
ovy332_21c4408: ; 0x021C4408
	push {r3, lr}
	ldr r0, [r0, #0x24]
	bl ovy332_21c0bf4
	cmp r0, #0
	beq _021C4424
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C4424:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy332_21c4408

	thumb_func_start ovy332_21c4428
ovy332_21c4428: ; 0x021C4428
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl ovy332_21c0bac
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021C444A
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	ldr r0, [r4, #0x10]
	bl ovy332_21c0960
_021C444A:
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4428

	thumb_func_start ovy332_21c4464
ovy332_21c4464: ; 0x021C4464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl ovy332_21c073c
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021C44C8
	mov r7, #0x11
	ldr r2, _021C44D8 ; =0x021C8F46
	ldr r0, _021C44DC ; =0x021C93EC
	add r3, r4, #0
	lsl r7, r7, #4
_021C448A:
	lsl r1, r3, #2
	add r1, r5, r1
	ldr r1, [r1, r7]
	cmp r1, #0
	beq _021C44A4
	lsl r1, r3, #1
	add r1, r2, r1
	mov r6, #0xc
	mul r6, r4
	ldrh r1, [r1, #0xa]
	add r6, r0, r6
	add r4, r4, #1
	str r1, [r6, #0x14]
_021C44A4:
	add r3, r3, #1
	cmp r3, #5
	blt _021C448A
	ldr r0, [r5, #0x2c]
	add r1, r4, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x10
	str r0, [sp, #8]
	ldr r0, _021C44DC ; =0x021C93EC
	mov r2, #4
	mov r3, #0xe
	bl ovy332_21c0b20
	str r0, [r5, #0x24]
_021C44C8:
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #2
	bl ovy332_21bf5bc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C44D8: .word 0x021C8F46
_021C44DC: .word 0x021C93EC
	thumb_func_end ovy332_21c4464

	thumb_func_start ovy332_21c44e0
ovy332_21c44e0: ; 0x021C44E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl ovy332_21c0bf4
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r4, #0
	beq _021C4510
	cmp r0, #0
	beq _021C4510
	mov r0, #0
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C4510:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c44e0
_021C4514:
	.byte 0x01, 0x4B, 0x00, 0x20, 0x18, 0x47, 0xC0, 0x46, 0x7D, 0x5B, 0x04, 0x02

	thumb_func_start ovy332_21c4520
ovy332_21c4520: ; 0x021C4520
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ovy332_21bfbf0
	mov r6, #1
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	bl ovy332_21c4cb4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x34]
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r5, #0x34]
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	add r2, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r5, #0x1c
	add r0, #0xdc
	add r3, r5, #0
	str r4, [sp, #0x10]
	bl ovy332_21c46e4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy332_21c4520

	thumb_func_start ovy332_21c456c
ovy332_21c456c: ; 0x021C456C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r5, #0xdc
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021C486C
	cmp r4, #0
	beq _021C4598
	cmp r0, #0
	beq _021C4598
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C4598:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c456c

	thumb_func_start ovy332_21c459c
ovy332_21c459c: ; 0x021C459C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdc
	bl ovy332_21c482c
	add r0, r4, #0
	bl ovy332_21bfc2c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c459c

	thumb_func_start ovy332_21c45bc
ovy332_21c45bc: ; 0x021C45BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	mov r0, #0x17
	str r0, [r5, #0x28]
_021C45D0:
	lsl r0, r4, #2
	str r0, [sp]
	add r7, r5, r0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020104C4
	ldr r1, [sp]
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020104F4
	add r4, r4, #1
	str r0, [r7, #0x14]
	cmp r4, #5
	blt _021C45D0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c45bc

	thumb_func_start ovy332_21c45f4
ovy332_21c45f4: ; 0x021C45F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_021C45FC:
	lsl r0, r4, #2
	add r6, r7, r0
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021C460E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020104B0
_021C460E:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021C461C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020104E0
_021C461C:
	add r4, r4, #1
	cmp r4, #5
	blt _021C45FC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c45f4

	thumb_func_start ovy332_21c4624
ovy332_21c4624: ; 0x021C4624
	push {r3, r4, r5, r6}
	mov r4, #0
	mov r3, #0
_021C462A:
	cmp r2, #0
	beq _021C464E
	lsl r6, r3, #2
	add r5, r0, r6
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _021C466E
	ldr r5, [r1, r6]
	cmp r5, #1
	bne _021C466E
	cmp r3, #2
	bne _021C464C
	ldr r6, [r0, #0x28]
	ldr r5, [r1, #0x28]
	cmp r6, r5
	beq _021C466E
	b _021C466C
_021C464C:
	b _021C466C
_021C464E:
	lsl r6, r3, #2
	ldr r5, [r0, r6]
	cmp r5, #1
	bne _021C466E
	add r5, r1, r6
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _021C466E
	cmp r3, #2
	bne _021C466C
	ldr r6, [r0, #0x28]
	ldr r5, [r1, #0x28]
	cmp r6, r5
	beq _021C466E
	b _021C466C
_021C466C:
	add r4, r4, #1
_021C466E:
	add r3, r3, #1
	cmp r3, #5
	blt _021C462A
	mov r0, #1
	cmp r4, #0
	bne _021C467C
	mov r0, #0
_021C467C:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy332_21c4624

	thumb_func_start ovy332_21c4680
ovy332_21c4680: ; 0x021C4680
	push {r4, r5, r6, r7}
	mov r3, #0
	mov r4, #1
	mov r5, #1
_021C4688:
	lsl r2, r3, #2
	ldr r6, [r1, r2]
	cmp r6, #0
	beq _021C46A6
	cmp r3, #2
	bne _021C46A2
	ldr r7, [r0, #0x28]
	ldr r6, [r1, #0x28]
	cmp r7, r6
	beq _021C46A6
	add r2, r0, r2
	str r5, [r2, #0x14]
	b _021C46A6
_021C46A2:
	add r2, r0, r2
	str r4, [r2, #0x14]
_021C46A6:
	add r3, r3, #1
	cmp r3, #5
	blt _021C4688
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy332_21c4680

	thumb_func_start ovy332_21c46b0
ovy332_21c46b0: ; 0x021C46B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_02007468
	str r0, [r5]
	cmp r0, #0
	beq _021C46E2
	add r0, r6, #0
	bl sub_0201736C
	add r1, r5, #4
	mov r2, #0x20
	blx MI_CpuCopy8
_021C46E2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c46b0

	thumb_func_start ovy332_21c46e4
ovy332_21c46e4: ; 0x021C46E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r1, #0
	ldr r1, [sp, #0x78]
	add r7, r2, #0
	str r1, [sp, #0x78]
	str r0, [sp]
	mov r1, #0
	mov r2, #0x20
	add r5, r3, #0
	blx MI_CpuFill8
	ldr r0, [sp]
	ldr r1, [sp, #0x70]
	str r7, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x74]
	str r5, [r0, #4]
	str r1, [r0]
	cmp r4, #0
	beq _021C4718
	cmp r4, #1
	beq _021C471C
	cmp r4, #2
	beq _021C4720
	b _021C4724
_021C4718:
	ldr r1, _021C481C ; =ovy332_21c48e0
	b _021C4722
_021C471C:
	ldr r1, _021C4820 ; =ovy332_21c4a14
	b _021C4722
_021C4720:
	ldr r1, _021C4824 ; =ovy332_21c4b60
_021C4722:
	str r1, [r0, #0x10]
_021C4724:
	mov r4, #4
	mov r5, #0
_021C4728:
	ldr r2, [sp, #0x78]
	add r0, r7, #0
	add r1, r4, #0
	bl ovy332_21bf694
	add r1, r5, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #6
	ble _021C4728
	ldr r2, [sp, #0x78]
	add r0, r7, #0
	mov r1, #7
	bl ovy332_21bf694
	add r1, r5, #0
	bl sub_0204C124
	add r6, sp, #8
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x48
	blx MI_CpuFill8
	mov r1, #1
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x68]
	str r1, [sp, #8]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x6c]
	str r1, [sp, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r5, [sp, #0x24]
	str r0, [sp, #0x4c]
	ldr r0, _021C4828 ; =ovy332_21c48ac
	str r0, [sp, #0x48]
_021C477A:
	lsl r4, r5, #3
	add r1, r6, r4
	add r1, #0x26
	mov r0, #0xf
	strb r0, [r1]
	add r1, r6, r4
	add r1, #0x27
	mov r0, #2
	strb r0, [r1]
	add r1, r6, r4
	add r1, #0x24
	mov r0, #0x10
	strb r0, [r1]
	add r0, sp, #0x28
	ldrb r0, [r0, #7]
	add r0, r0, #2
	mul r0, r5
	add r1, r0, #3
	add r0, r6, r4
	add r0, #0x25
	strb r1, [r0]
	add r1, r5, #4
	cmp r1, #6
	bgt _021C47DC
	add r0, r7, #0
	bl sub_021BF844
	add r1, r6, r4
	add r2, r6, r4
	add r1, #0x24
	add r2, #0x26
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r1, r1, r2
	sub r1, r1, #1
	lsl r2, r1, #3
	add r1, sp, #4
	strh r2, [r1]
	add r1, r6, r4
	add r1, #0x25
	ldrb r1, [r1]
	add r1, r1, #1
	lsl r2, r1, #3
	add r1, sp, #4
	strh r2, [r1, #2]
	add r1, sp, #4
	mov r2, #0
	bl sub_0204C140
_021C47DC:
	add r5, r5, #1
	cmp r5, #4
	blt _021C477A
	ldr r0, [sp]
	add r4, sp, #8
	add r2, r0, #0
	ldr r2, [r2, #0x10]
	add r1, r4, #0
	blx r2
	ldr r0, [sp, #0x20]
	add r2, sp, #0x24
	lsl r1, r0, #3
	ldrb r0, [r2, r1]
	add r0, r0, #3
	strb r0, [r2, r1]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x24
	add r2, #2
	lsl r1, r0, #3
	ldrb r0, [r2, r1]
	sub r0, r0, #3
	strb r0, [r2, r1]
	ldr r1, [sp, #0x78]
	add r0, r4, #0
	bl ovy332_21c0dd4
	ldr r1, [sp]
	ldr r1, [r1, #4]
	str r0, [r1]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C481C: .word ovy332_21c48e0
_021C4820: .word ovy332_21c4a14
_021C4824: .word ovy332_21c4b60
_021C4828: .word ovy332_21c48ac
	thumb_func_end ovy332_21c46e4

	thumb_func_start ovy332_21c482c
ovy332_21c482c: ; 0x021C482C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl ovy332_21c0ee8
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ovy332_21bf82c
	ldr r0, [r4, #8]
	mov r1, #5
	bl ovy332_21bf82c
	ldr r0, [r4, #8]
	mov r1, #4
	bl ovy332_21bf82c
	ldr r0, [r4, #8]
	mov r1, #7
	bl ovy332_21bf82c
	pop {r4, pc}
	thumb_func_end ovy332_21c482c

	thumb_func_start sub_021C4860
sub_021C4860: ; 0x021C4860
	ldr r0, [r0, #4]
	ldr r3, _021C4868 ; =ovy332_21c0f10
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021C4868: .word ovy332_21c0f10
	thumb_func_end sub_021C4860

	thumb_func_start sub_021C486C
sub_021C486C: ; 0x021C486C
	ldr r0, [r0, #4]
	ldr r3, _021C4874 ; =ovy332_21c1140
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021C4874: .word ovy332_21c1140
	thumb_func_end sub_021C486C

	thumb_func_start sub_021C4878
sub_021C4878: ; 0x021C4878
	ldr r0, [r0, #4]
	ldr r3, _021C4880 ; =sub_021C119C
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021C4880: .word sub_021C119C
	thumb_func_end sub_021C4878

	thumb_func_start sub_021C4884
sub_021C4884: ; 0x021C4884
	ldr r0, [r0, #4]
	ldr r3, _021C488C ; =sub_021C1168
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021C488C: .word sub_021C1168
	thumb_func_end sub_021C4884

	thumb_func_start sub_021C4890
sub_021C4890: ; 0x021C4890
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, [r0, #4]
	ldr r3, _021C48A0 ; =ovy332_21c116c
	ldr r0, [r0]
	bx r3
	nop
_021C48A0: .word ovy332_21c116c
	thumb_func_end sub_021C4890

	thumb_func_start sub_021C48A4
sub_021C48A4: ; 0x021C48A4
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021C48A4

	thumb_func_start sub_021C48A8
sub_021C48A8: ; 0x021C48A8
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021C48A8

	thumb_func_start ovy332_21c48ac
ovy332_21c48ac: ; 0x021C48AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	blx r2
	cmp r0, #4
	bhi _021C48DC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C48C6: ; jump table
	.short _021C48DC - _021C48C6 - 2 ; case 0
	.short _021C48D0 - _021C48C6 - 2 ; case 1
	.short _021C48D4 - _021C48C6 - 2 ; case 2
	.short _021C48DC - _021C48C6 - 2 ; case 3
	.short _021C48D4 - _021C48C6 - 2 ; case 4
_021C48D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021C48D4:
	str r0, [r4, #0x18]
	str r5, [r4, #0x1c]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021C48DC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c48ac

	thumb_func_start ovy332_21c48e0
ovy332_21c48e0: ; 0x021C48E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #8
	str r0, [r4, #0x20]
	mov r0, #9
	str r0, [r4, #0x28]
	mov r0, #0xa
	str r0, [r4, #0x30]
	mov r0, #7
	mov r6, #4
	str r0, [r4, #0x38]
	ldr r0, _021C4978 ; =ovy332_21c497c
	str r6, [r4, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_020104F4
	cmp r0, #0
	bne _021C491A
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_021BF844
	mov r1, #1
	bl sub_0204C124
_021C491A:
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r6, #1
	bl sub_020104F4
	cmp r0, #0
	bne _021C4936
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_021BF844
	add r1, r6, #0
	bl sub_0204C124
_021C4936:
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_021BF844
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02010528
	lsl r0, r0, #3
	add r1, r4, r0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r4, r0
	add r0, #0x25
	sub r1, r1, #2
	lsl r2, r1, #3
	add r1, sp, #0
	strh r2, [r1]
	ldrb r0, [r0]
	mov r2, #0
	add r0, r0, #1
	lsl r0, r0, #3
	strh r0, [r1, #2]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0204C140
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021C4978: .word ovy332_21c497c
	thumb_func_end ovy332_21c48e0

	thumb_func_start ovy332_21c497c
ovy332_21c497c: ; 0x021C497C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02010528
	cmp r5, r0
	bne _021C4994
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021C4994:
	cmp r5, #3
	bge _021C4A0E
	cmp r5, #0
	beq _021C49A2
	cmp r5, #2
	beq _021C49B4
	b _021C49C6
_021C49A2:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_020104F4
	cmp r0, #0
	bne _021C49C6
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021C49B4:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020104F4
	cmp r0, #0
	bne _021C49C6
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021C49C6:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_02010514
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_021C1198
	add r6, r0, #0
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_021BF844
	lsl r1, r5, #3
	add r2, r6, r1
	add r2, #0x24
	ldrb r2, [r2]
	add r1, r6, r1
	add r1, #0x25
	sub r2, r2, #2
	lsl r3, r2, #3
	add r2, sp, #0
	strh r3, [r2]
	ldrb r1, [r1]
	add r4, r0, #0
	add r1, r1, #1
	lsl r1, r1, #3
	strh r1, [r2, #2]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
_021C4A0E:
	mov r0, #3
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy332_21c497c

	thumb_func_start ovy332_21c4a14
ovy332_21c4a14: ; 0x021C4A14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #0xb
	str r0, [r4, #0x20]
	mov r0, #0xc
	str r0, [r4, #0x28]
	mov r0, #7
	str r0, [r4, #0x30]
	ldr r0, _021C4A8C ; =ovy332_21c4a90
	mov r1, #2
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_020104F4
	cmp r0, #0
	bne _021C4A4A
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_021BF844
	mov r1, #1
	bl sub_0204C124
_021C4A4A:
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_021BF844
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02010564
	lsl r0, r0, #3
	add r1, r4, r0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r4, r0
	add r0, #0x25
	sub r1, r1, #2
	lsl r2, r1, #3
	add r1, sp, #0
	strh r2, [r1]
	ldrb r0, [r0]
	mov r2, #0
	add r0, r0, #1
	lsl r0, r0, #3
	strh r0, [r1, #2]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0204C140
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021C4A8C: .word ovy332_21c4a90
	thumb_func_end ovy332_21c4a14

	thumb_func_start ovy332_21c4a90
ovy332_21c4a90: ; 0x021C4A90
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02010564
	cmp r0, r5
	bne _021C4AA8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021C4AA8:
	cmp r5, #2
	bge _021C4B54
	ldr r0, [r4]
	bl sub_02017934
	bl sub_02007468
	cmp r0, #0
	beq _021C4AF4
	ldr r0, [r4]
	bl sub_02017248
	add r6, r0, #0
	ldrh r0, [r6, #4]
	bl sub_02018C74
	bl sub_02018BEC
	cmp r0, #0
	bne _021C4AEE
	ldrh r0, [r6, #4]
	bl sub_02018AD4
	cmp r0, #0
	bne _021C4AEE
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, _021C4B5C ; =0x000001DE
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021C4AF4
_021C4AEE:
	add sp, #4
	mov r0, #4
	pop {r3, r4, r5, r6, pc}
_021C4AF4:
	cmp r5, #1
	bne _021C4B0C
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r6, #2
	bl sub_020104F4
	cmp r0, #0
	bne _021C4B0C
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021C4B0C:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_02010550
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_021C1198
	add r6, r0, #0
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_021BF844
	lsl r1, r5, #3
	add r2, r6, r1
	add r2, #0x24
	ldrb r2, [r2]
	add r1, r6, r1
	add r1, #0x25
	sub r2, r2, #2
	lsl r3, r2, #3
	add r2, sp, #0
	strh r3, [r2]
	ldrb r1, [r1]
	add r4, r0, #0
	add r1, r1, #1
	lsl r1, r1, #3
	strh r1, [r2, #2]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
_021C4B54:
	mov r0, #3
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021C4B5C: .word 0x000001DE
	thumb_func_end ovy332_21c4a90

	thumb_func_start ovy332_21c4b60
ovy332_21c4b60: ; 0x021C4B60
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	str r0, [r4, #0x18]
	mov r0, #0x64
	str r0, [r4, #0x20]
	mov r0, #0x65
	str r0, [r4, #0x28]
	mov r0, #0x66
	str r0, [r4, #0x30]
	mov r0, #7
	str r0, [r4, #0x38]
	ldr r0, _021C4BF8 ; =ovy332_21c4bfc
	mov r1, #3
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_020104F4
	cmp r0, #0
	bne _021C4B9A
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_021BF844
	mov r1, #1
	bl sub_0204C124
_021C4B9A:
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_020104F4
	cmp r0, #0
	bne _021C4BB4
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_021BF844
	mov r1, #1
	bl sub_0204C124
_021C4BB4:
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_021BF844
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020105A0
	lsl r0, r0, #3
	add r1, r4, r0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r4, r0
	add r0, #0x25
	sub r1, r1, #2
	lsl r2, r1, #3
	add r1, sp, #0
	strh r2, [r1]
	ldrb r0, [r0]
	mov r2, #0
	add r0, r0, #1
	lsl r0, r0, #3
	strh r0, [r1, #2]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0204C140
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021C4BF8: .word ovy332_21c4bfc
	thumb_func_end ovy332_21c4b60

	thumb_func_start ovy332_21c4bfc
ovy332_21c4bfc: ; 0x021C4BFC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020105A0
	cmp r5, r0
	bne _021C4C14
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021C4C14:
	cmp r5, #3
	bge _021C4C8E
	cmp r5, #1
	beq _021C4C22
	cmp r5, #2
	beq _021C4C34
	b _021C4C46
_021C4C22:
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_020104F4
	cmp r0, #0
	bne _021C4C46
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021C4C34:
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl sub_020104F4
	cmp r0, #0
	bne _021C4C46
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021C4C46:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0201058C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_021C1198
	add r6, r0, #0
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_021BF844
	lsl r1, r5, #3
	add r2, r6, r1
	add r2, #0x24
	ldrb r2, [r2]
	add r1, r6, r1
	add r1, #0x25
	sub r2, r2, #2
	lsl r3, r2, #3
	add r2, sp, #0
	strh r3, [r2]
	ldrb r1, [r1]
	add r4, r0, #0
	add r1, r1, #1
	lsl r1, r1, #3
	strh r1, [r2, #2]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
_021C4C8E:
	mov r0, #3
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy332_21c4bfc

	thumb_func_start ovy332_21c4c94
ovy332_21c4c94: ; 0x021C4C94
	push {r3, lr}
	bl sub_02010528
	add r0, #0x16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4c94

	thumb_func_start ovy332_21c4ca4
ovy332_21c4ca4: ; 0x021C4CA4
	push {r3, lr}
	bl sub_02010564
	add r0, #0x19
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4ca4

	thumb_func_start ovy332_21c4cb4
ovy332_21c4cb4: ; 0x021C4CB4
	push {r3, lr}
	bl sub_020105A0
	add r0, #0x5e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c4cb4

	thumb_func_start ovy332_21c4cc4
ovy332_21c4cc4: ; 0x021C4CC4
	push {r3, lr}
	cmp r1, #3
	bhi _021C4CF4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C4CD6: ; jump table
	.short _021C4CDE - _021C4CD6 - 2 ; case 0
	.short _021C4CE4 - _021C4CD6 - 2 ; case 1
	.short _021C4CEA - _021C4CD6 - 2 ; case 2
	.short _021C4CF0 - _021C4CD6 - 2 ; case 3
_021C4CDE:
	bl ovy332_21c4c94
	pop {r3, pc}
_021C4CE4:
	bl ovy332_21c4ca4
	pop {r3, pc}
_021C4CEA:
	bl ovy332_21c4cb4
	pop {r3, pc}
_021C4CF0:
	mov r0, #0x1b
	pop {r3, pc}
_021C4CF4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy332_21c4cc4

	thumb_func_start ovy332_21c4cf8
ovy332_21c4cf8: ; 0x021C4CF8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	cmp r2, #0
	beq _021C4D1A
	lsl r3, r1, #2
	add r6, r4, r3
	mov r3, #0x49
	lsl r3, r3, #2
	ldr r5, [r6, r3]
	mov r0, #0
	cmp r5, #0
	bne _021C4D34
	add r3, #0x18
	ldr r3, [r6, r3]
	cmp r3, #1
	bne _021C4D34
	b _021C4D32
_021C4D1A:
	lsl r3, r1, #2
	add r6, r4, r3
	mov r3, #0x11
	lsl r3, r3, #4
	ldr r5, [r6, r3]
	mov r0, #0
	cmp r5, #1
	bne _021C4D34
	add r3, #0x40
	ldr r3, [r6, r3]
	cmp r3, #0
	bne _021C4D34
_021C4D32:
	mov r0, #1
_021C4D34:
	cmp r1, #2
	bne _021C4D4A
	mov r3, #0x4e
	lsl r3, r3, #2
	ldr r5, [r4, r3]
	add r3, #0x2c
	ldr r3, [r4, r3]
	cmp r5, r3
	bne _021C4D4A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021C4D4A:
	cmp r0, #0
	beq _021C4DC0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C4D62
	mov r0, #0x2c
	cmp r2, #0
	bne _021C4D60
	mov r0, #0x1f
_021C4D60:
	b _021C4D6A
_021C4D62:
	mov r0, #0x32
	cmp r2, #0
	bne _021C4D6A
	mov r0, #0x25
_021C4D6A:
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r1, #2
	bne _021C4D7C
	mov r1, #2
	cmp r2, #0
	bne _021C4D80
	mov r1, #3
	b _021C4D80
_021C4D7C:
	ble _021C4D80
	add r1, r1, #1
_021C4D80:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #0x34]
	bl sub_0204898C
	mov r2, #0x63
	lsl r2, r2, #2
	add r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _021C4DA8
	add r2, r2, #4
	ldr r0, [r4, #0x38]
	mov r1, #0
	add r2, r4, r2
	bl sub_020245A8
_021C4DA8:
	mov r1, #0x9f
	lsl r1, r1, #2
	ldr r0, [r4, #0x38]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_02024920
	add r0, r5, #0
	bl sub_02048564
	mov r0, #1
	pop {r4, r5, r6, pc}
_021C4DC0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c4cf8

	thumb_func_start ovy332_21c4dc4
ovy332_21c4dc4: ; 0x021C4DC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	str r2, [sp, #0x10]
	mov r1, #0
	mov r2, #0xb0
	add r5, r0, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x38]
	mov r7, #0xb0
	blx MI_CpuFill8
	ldr r0, [sp, #0x10]
	str r6, [r5, #4]
	str r0, [r5]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x3c]
	add r0, r6, #0
	bl sub_021BF854
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202AE5C
	add r7, #0x69
	str r0, [r5, #0x1c]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02048530
	str r0, [r5, #0x2c]
	add r0, r6, #0
	mov r1, #8
	add r2, r4, #0
	bl ovy332_21bf694
	str r0, [r5, #8]
	add r0, r6, #0
	mov r1, #0xa
	add r2, r4, #0
	bl ovy332_21bf694
	str r0, [r5, #0xc]
	add r0, r6, #0
	mov r1, #0xc
	add r2, r4, #0
	bl ovy332_21bf694
	str r0, [r5, #0x14]
	add r0, r6, #0
	mov r1, #9
	add r2, r4, #0
	bl ovy332_21bf694
	str r0, [r5, #0x10]
	ldr r1, _021C4E7C ; =0x021C8F5C
	add r0, sp, #0x18
	ldrh r2, [r1]
	add r7, sp, #0x18
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	add r0, r6, #0
	mov r1, #0
	bl sub_021BF84C
	add r3, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	mov r1, #0x10
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r7, #0
	mov r2, #2
	bl ovy332_21c13d8
	str r0, [r5, #0x18]
	bl sub_021C152C
	mov r1, #0
	bl sub_0202B098
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C4E7C: .word 0x021C8F5C
	thumb_func_end ovy332_21c4dc4

	thumb_func_start ovy332_21c4e80
ovy332_21c4e80: ; 0x021C4E80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy332_21c146c
	ldr r0, [r4, #4]
	mov r1, #9
	bl ovy332_21bf82c
	ldr r0, [r4, #4]
	mov r1, #0xc
	bl ovy332_21bf82c
	ldr r0, [r4, #4]
	mov r1, #0xa
	bl ovy332_21bf82c
	ldr r0, [r4, #4]
	mov r1, #8
	bl ovy332_21bf82c
	ldr r0, [r4, #0x2c]
	bl sub_02048564
	ldr r0, [r4, #0x1c]
	bl sub_0202AEAC
	pop {r4, pc}
	thumb_func_end ovy332_21c4e80

	thumb_func_start ovy332_21c4eb8
ovy332_21c4eb8: ; 0x021C4EB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0]
	mov r6, #1
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #0x10]
	str r4, [r5, #0x30]
	strh r3, [r5, #0x28]
	str r6, [r5, #0x34]
	str r2, [r5, #0x38]
	bl sub_02048580
	ldr r0, _021C4F0C ; =0x021C8E84
	cmp r4, #2
	ldrb r1, [r0, r4]
	bne _021C4EEC
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	cmp r0, #0
	bne _021C4EEC
	mov r1, #2
_021C4EEC:
	ldr r0, [r5, #8]
	mov r2, #1
	bl sub_0204C378
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021C4F02
	ldr r0, _021C4F10 ; =ovy332_21c52a0
	add r5, #0xac
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C4F02:
	ldr r0, _021C4F14 ; =ovy332_21c4f24
	add r5, #0xac
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021C4F0C: .word 0x021C8E84
_021C4F10: .word ovy332_21c52a0
_021C4F14: .word ovy332_21c4f24
	thumb_func_end ovy332_21c4eb8

	thumb_func_start ovy332_21c4f18
ovy332_21c4f18: ; 0x021C4F18
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xac
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	thumb_func_end ovy332_21c4f18

	thumb_func_start ovy332_21c4f24
ovy332_21c4f24: ; 0x021C4F24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021C4F36
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C4F36:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #0x13
	bhi _021C4FAA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C4F56: ; jump table
	.short _021C4F7E - _021C4F56 - 2 ; case 0
	.short _021C4F9A - _021C4F56 - 2 ; case 1
	.short _021C4FB4 - _021C4F56 - 2 ; case 2
	.short _021C4FF0 - _021C4F56 - 2 ; case 3
	.short _021C5062 - _021C4F56 - 2 ; case 4
	.short _021C5072 - _021C4F56 - 2 ; case 5
	.short _021C50A4 - _021C4F56 - 2 ; case 6
	.short _021C50DE - _021C4F56 - 2 ; case 7
	.short _021C50EA - _021C4F56 - 2 ; case 8
	.short _021C5106 - _021C4F56 - 2 ; case 9
	.short _021C5138 - _021C4F56 - 2 ; case 10
	.short _021C514A - _021C4F56 - 2 ; case 11
	.short _021C515A - _021C4F56 - 2 ; case 12
	.short _021C5184 - _021C4F56 - 2 ; case 13
	.short _021C5198 - _021C4F56 - 2 ; case 14
	.short _021C51A4 - _021C4F56 - 2 ; case 15
	.short _021C51B6 - _021C4F56 - 2 ; case 16
	.short _021C51C2 - _021C4F56 - 2 ; case 17
	.short _021C51D6 - _021C4F56 - 2 ; case 18
	.short _021C525C - _021C4F56 - 2 ; case 19
_021C4F7E:
	mov r1, #0x11
	ldr r0, [r4, #0x18]
	lsl r1, r1, #6
	bl sub_021C14F0
	ldrh r2, [r4, #0x28]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	bl ovy332_21c1490
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C4F9A:
	ldr r0, [r4, #0x18]
	bl ovy332_21c14f4
	ldr r0, [r4, #0x18]
	bl sub_021C151C
	cmp r0, #0
	bne _021C4FAC
_021C4FAA:
	b _021C5266
_021C4FAC:
	ldr r0, [r4, #0x20]
_021C4FAE:
	add r0, r0, #1
	str r0, [r4, #0x20]
	b _021C5266
_021C4FB4:
	mov r0, #0x46
	str r0, [sp]
	add r0, r4, #0
	ldr r1, _021C526C ; =0x021C8EA4
	ldr r2, _021C5270 ; =0x021C8EB4
	ldr r3, _021C5274 ; =0xFFFFD000
	add r0, #0x68
	bl ovy332_21c160c
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl sub_0204C488
	ldr r0, [r4, #0x18]
	bl sub_021C152C
	mov r1, #1
	bl sub_0202B098
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C4FF0:
	add r0, r4, #0
	add r0, #0x68
	bl ovy332_21c1784
	cmp r0, #0
	beq _021C5002
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C5002:
	add r0, r4, #0
	add r0, #0x68
	add r1, sp, #0x18
	bl sub_021C17FC
	add r5, sp, #4
	ldrh r0, [r5, #0x14]
	add r7, sp, #0x14
	add r1, r7, #0
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x16]
	mov r2, #0
	strh r0, [r5, #0x12]
	ldr r0, [r4, #0x10]
	bl sub_0204C140
	ldrh r0, [r5, #0x14]
	mov r6, #0x10
	add r1, r7, #0
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x16]
	mov r2, #0
	strh r0, [r5, #0x12]
	ldrsh r0, [r5, r6]
	add r0, #0x38
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0204C140
	ldr r0, [r4, #0x18]
	bl sub_021C152C
	ldrh r1, [r5, #0x14]
	mov r2, #0x12
	strh r1, [r5, #0x10]
	ldrh r1, [r5, #0x16]
	strh r1, [r5, #0x12]
	ldrsh r1, [r5, r6]
	sub r1, #0x40
	strh r1, [r5, #0x10]
	ldrsh r1, [r5, r2]
	sub r1, #8
	strh r1, [r5, #0x12]
_021C5058:
	ldrsh r1, [r5, r6]
	ldrsh r2, [r5, r2]
	bl sub_0202B230
	b _021C5266
_021C5062:
	ldr r2, [r4, #0x24]
	add r1, r2, #1
	str r1, [r4, #0x24]
	cmp r2, #0x3c
	bls _021C5154
_021C506C:
	mov r1, #0
	str r1, [r4, #0x24]
	b _021C4FAE
_021C5072:
	add r0, r4, #0
	ldr r1, _021C5278 ; =0x021C8EBC
	ldr r2, _021C527C ; =0x021C8E94
	add r0, #0x40
	mov r3, #0x96
	bl ovy332_21c1530
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #8]
	mov r1, #8
	bl sub_0204C488
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021C5280 ; =0x000008A3
	bl sub_02006254
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C50A4:
	add r0, r4, #0
	add r0, #0x40
	bl ovy332_21c15c0
	cmp r0, #0
	beq _021C50C6
	ldr r0, [r4, #8]
	bl sub_0204C510
	cmp r0, #0
	bne _021C50C6
	ldr r0, [r4, #8]
	bl sub_0204C550
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C50C6:
	add r0, r4, #0
	add r0, #0x40
	add r5, sp, #0x10
_021C50CC:
	add r1, r5, #0
	bl sub_021C1600
	ldr r0, [r4, #8]
	add r1, r5, #0
	mov r2, #0
	bl sub_0204C140
	b _021C5266
_021C50DE:
	ldr r2, [r4, #0x24]
	add r1, r2, #1
	str r1, [r4, #0x24]
	cmp r2, #0x3c
	bls _021C5154
	b _021C506C
_021C50EA:
	add r0, r4, #0
	ldr r1, _021C5284 ; =0x021C8ED4
	ldr r2, _021C5288 ; =0x021C8EDC
	add r0, #0x40
	mov r3, #0x50
	bl ovy332_21c1530
	ldr r0, [r4, #8]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C5106:
	add r0, r4, #0
	add r0, #0x40
	bl ovy332_21c15c0
	cmp r0, #0
	beq _021C5130
	ldr r0, [r4, #8]
	bl sub_0204C560
	cmp r0, #0
	bne _021C5130
	ldr r0, _021C528C ; =0x000008A4
	bl sub_02006254
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C5130:
	add r0, r4, #0
	add r0, #0x40
	add r5, sp, #0xc
	b _021C50CC
_021C5138:
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl sub_0204C488
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0204C520
	b _021C4FAC
_021C514A:
	ldr r0, [r4, #0x14]
	bl sub_0204C560
	cmp r0, #0
	beq _021C5156
_021C5154:
	b _021C5266
_021C5156:
	ldr r0, [r4, #0x14]
	b _021C5190
_021C515A:
	ldr r0, [r4, #0xc]
	ldr r1, _021C5290 ; =0x021C8E74
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	bl sub_0204C488
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021C5294 ; =0x000008A5
	bl sub_02006254
	b _021C4FAC
_021C5184:
	ldr r0, [r4, #0xc]
	bl sub_0204C560
	cmp r0, #0
	bne _021C5266
	ldr r0, [r4, #0xc]
_021C5190:
	mov r1, #0
	bl sub_0204C124
	b _021C4FAC
_021C5198:
	ldr r2, [r4, #0x24]
	add r1, r2, #1
	str r1, [r4, #0x24]
	cmp r2, #0x78
	bls _021C5266
	b _021C506C
_021C51A4:
	ldr r0, [r4]
	ldr r1, [r4, #0x2c]
	mov r2, #3
	bl ovy332_21c0758
	mov r0, #0
	bl sub_02045B7C
	b _021C4FAC
_021C51B6:
	ldr r0, [r4]
	bl sub_021C095C
	cmp r0, #0
	beq _021C5266
	b _021C4FAC
_021C51C2:
	add r0, r4, #0
	ldr r1, _021C5298 ; =0x021C8E9C
	ldr r2, _021C529C ; =0x021C8E8C
	add r0, #0x40
	mov r3, #0x28
	bl ovy332_21c1530
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C51D6:
	add r0, r4, #0
	add r0, #0x40
	bl ovy332_21c15c0
	cmp r0, #0
	beq _021C5204
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x18]
	bl sub_021C152C
	mov r1, #0
	bl sub_0202B098
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C5204:
	add r0, r4, #0
	add r0, #0x40
	add r1, sp, #8
	bl sub_021C1600
	add r5, sp, #4
	ldrh r0, [r5, #4]
	add r7, sp, #4
	add r1, r7, #0
	strh r0, [r5]
	ldrh r0, [r5, #6]
	mov r2, #0
	mov r6, #0
	strh r0, [r5, #2]
	ldr r0, [r4, #0x10]
	bl sub_0204C140
	ldrh r0, [r5, #4]
	add r1, r7, #0
	mov r2, #0
	strh r0, [r5]
	ldrh r0, [r5, #6]
	strh r0, [r5, #2]
	ldrsh r0, [r5, r6]
	add r0, #0x38
	strh r0, [r5]
	ldr r0, [r4, #0x14]
	bl sub_0204C140
	ldr r0, [r4, #0x18]
	bl sub_021C152C
	ldrh r1, [r5, #4]
	mov r2, #2
	strh r1, [r5]
	ldrh r1, [r5, #6]
	strh r1, [r5, #2]
	ldrsh r1, [r5, r6]
	sub r1, #0x40
	strh r1, [r5]
	ldrsh r1, [r5, r2]
	sub r1, #8
	strh r1, [r5, #2]
	b _021C5058
_021C525C:
	mov r0, #0
	str r0, [r4, #0x34]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C5266:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C526C: .word 0x021C8EA4
_021C5270: .word 0x021C8EB4
_021C5274: .word 0xFFFFD000
_021C5278: .word 0x021C8EBC
_021C527C: .word 0x021C8E94
_021C5280: .word 0x000008A3
_021C5284: .word 0x021C8ED4
_021C5288: .word 0x021C8EDC
_021C528C: .word 0x000008A4
_021C5290: .word 0x021C8E74
_021C5294: .word 0x000008A5
_021C5298: .word 0x021C8E9C
_021C529C: .word 0x021C8E8C
	thumb_func_end ovy332_21c4f24

	thumb_func_start ovy332_21c52a0
ovy332_21c52a0: ; 0x021C52A0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021C52B2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C52B2:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #7
	bhi _021C53B2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C52D2: ; jump table
	.short _021C52E2 - _021C52D2 - 2 ; case 0
	.short _021C530C - _021C52D2 - 2 ; case 1
	.short _021C5346 - _021C52D2 - 2 ; case 2
	.short _021C5356 - _021C52D2 - 2 ; case 3
	.short _021C536E - _021C52D2 - 2 ; case 4
	.short _021C537A - _021C52D2 - 2 ; case 5
	.short _021C538E - _021C52D2 - 2 ; case 6
	.short _021C53A8 - _021C52D2 - 2 ; case 7
_021C52E2:
	add r0, r4, #0
	ldr r1, _021C53B8 ; =0x021C8EE4
	ldr r2, _021C53BC ; =0x021C8EAC
	add r0, #0x40
	mov r3, #0x96
	bl ovy332_21c1530
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021C53C0 ; =0x000008A3
	bl sub_02006254
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C530C:
	add r0, r4, #0
	add r0, #0x40
	bl ovy332_21c15c0
	cmp r0, #0
	beq _021C532E
	ldr r0, [r4, #8]
	bl sub_0204C510
	cmp r0, #0
	bne _021C532E
	ldr r0, [r4, #8]
	bl sub_0204C550
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C532E:
	add r0, r4, #0
	add r0, #0x40
	add r5, sp, #4
_021C5334:
	add r1, r5, #0
	bl sub_021C1600
	ldr r0, [r4, #8]
	add r1, r5, #0
	mov r2, #0
	bl sub_0204C140
	b _021C53B2
_021C5346:
	ldr r2, [r4, #0x24]
	add r1, r2, #1
	str r1, [r4, #0x24]
	cmp r2, #0x3c
	bls _021C53B2
	mov r1, #0
	str r1, [r4, #0x24]
	b _021C5368
_021C5356:
	ldr r0, [r4]
	ldr r1, [r4, #0x2c]
	mov r2, #3
	bl ovy332_21c0758
	mov r0, #0
	bl sub_02045B7C
_021C5366:
	ldr r0, [r4, #0x20]
_021C5368:
	add r0, r0, #1
	str r0, [r4, #0x20]
	b _021C53B2
_021C536E:
	ldr r0, [r4]
	bl sub_021C095C
	cmp r0, #0
	beq _021C53B2
	b _021C5366
_021C537A:
	add r0, r4, #0
	ldr r1, _021C53C4 ; =0x021C8EC4
	ldr r2, _021C53C8 ; =0x021C8ECC
	add r0, #0x40
	mov r3, #0x28
	bl ovy332_21c1530
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C538E:
	add r0, r4, #0
	add r0, #0x40
	bl ovy332_21c15c0
	cmp r0, #0
	beq _021C53A0
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_021C53A0:
	add r0, r4, #0
	add r0, #0x40
	add r5, sp, #0
	b _021C5334
_021C53A8:
	mov r0, #0
	str r0, [r4, #0x34]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C53B2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C53B8: .word 0x021C8EE4
_021C53BC: .word 0x021C8EAC
_021C53C0: .word 0x000008A3
_021C53C4: .word 0x021C8EC4
_021C53C8: .word 0x021C8ECC
	thumb_func_end ovy332_21c52a0
_021C53CC:
	.byte 0x9D, 0x21, 0x01, 0x22
	.byte 0x89, 0x00, 0x42, 0x50, 0x0C, 0x31, 0x42, 0x50, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021C53DC
sub_021C53DC: ; 0x021C53DC
	bx lr
	.align 2, 0
	thumb_func_end sub_021C53DC

	thumb_func_start ovy332_21c53e0
ovy332_21c53e0: ; 0x021C53E0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #4
	bls _021C53F0
	b _021C554A
_021C53F0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C53FC: ; jump table
	.short _021C5406 - _021C53FC - 2 ; case 0
	.short _021C5414 - _021C53FC - 2 ; case 1
	.short _021C549A - _021C53FC - 2 ; case 2
	.short _021C54A8 - _021C53FC - 2 ; case 3
	.short _021C553A - _021C53FC - 2 ; case 4
_021C5406:
	ldr r1, _021C554C ; =ovy332_21c63b4
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C5414:
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0f10
	ldr r0, [r4, #0x1c]
	bl sub_021C11A0
	cmp r0, #0
	beq _021C5454
	ldr r0, [r4, #0x14]
	bl sub_021C095C
	cmp r0, #0
	beq _021C5454
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r6, r0, #0
	add r0, r4, #0
	bl ovy332_21c6dc0
	cmp r0, #0
	bne _021C5446
	cmp r6, #2
	bne _021C5446
	mov r6, #3
_021C5446:
	add r6, #0x50
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, r6, #0
	mov r3, #0
	bl ovy332_21c073c
_021C5454:
	ldr r0, [r4, #0x1c]
	bl sub_021C1168
	cmp r0, #0
	beq _021C554A
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	mov r6, #0x9d
	lsl r6, r6, #2
	str r0, [r4, r6]
	add r0, r4, #0
	bl ovy332_21c6dc0
	cmp r0, #0
	ldr r0, [r4, r6]
	beq _021C547C
	cmp r0, #3
	bhs _021C5492
	b _021C5480
_021C547C:
	cmp r0, #2
	bhs _021C5492
_021C5480:
	ldr r0, [r4, #0x1c]
	bl sub_021C119C
	add r4, #0xb4
	add r2, r0, #0
	ldr r1, _021C5550 ; =0x021C9448
	add r0, r4, #0
	bl ovy332_21bf864
_021C5492:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C549A:
	ldr r1, _021C5554 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C54A8:
	add r0, r4, #0
	bl ovy332_21c6dc0
	cmp r0, #0
	beq _021C5502
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _021C554A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C54C8: ; jump table
	.short _021C54D0 - _021C54C8 - 2 ; case 0
	.short _021C54DE - _021C54C8 - 2 ; case 1
	.short _021C54EC - _021C54C8 - 2 ; case 2
	.short _021C54FA - _021C54C8 - 2 ; case 3
_021C54D0:
	ldr r1, _021C5558 ; =ovy332_21c5564
	add r0, r6, #0
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C54DE:
	ldr r1, _021C555C ; =ovy332_21c5a28
	add r0, r6, #0
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C54EC:
	ldr r1, _021C5560 ; =ovy332_21c6278
	add r0, r6, #0
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C54FA:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C5502:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C5516
	cmp r0, #1
	beq _021C5524
	cmp r0, #2
	beq _021C5532
	pop {r4, r5, r6, pc}
_021C5516:
	ldr r1, _021C5558 ; =ovy332_21c5564
	add r0, r6, #0
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C5524:
	ldr r1, _021C555C ; =ovy332_21c5a28
	add r0, r6, #0
	bl ovy332_21c1240
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C5532:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021C553A:
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0x1e
	bl sub_021BF5B0
	add r0, r6, #0
	bl ovy332_21c1270
_021C554A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C554C: .word ovy332_21c63b4
_021C5550: .word 0x021C9448
_021C5554: .word ovy332_21bf23c
_021C5558: .word ovy332_21c5564
_021C555C: .word ovy332_21c5a28
_021C5560: .word ovy332_21c6278
	thumb_func_end ovy332_21c53e0

	thumb_func_start ovy332_21c5564
ovy332_21c5564: ; 0x021C5564
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r1, #0
	ldr r1, [r5]
	add r7, r0, #0
	add r4, r2, #0
	cmp r1, #0x17
	bhi _021C563A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C5580: ; jump table
	.short _021C55B0 - _021C5580 - 2 ; case 0
	.short _021C55D0 - _021C5580 - 2 ; case 1
	.short _021C55F4 - _021C5580 - 2 ; case 2
	.short _021C5610 - _021C5580 - 2 ; case 3
	.short _021C562A - _021C5580 - 2 ; case 4
	.short _021C5662 - _021C5580 - 2 ; case 5
	.short _021C5726 - _021C5580 - 2 ; case 6
	.short _021C5754 - _021C5580 - 2 ; case 7
	.short _021C577E - _021C5580 - 2 ; case 8
	.short _021C5786 - _021C5580 - 2 ; case 9
	.short _021C57B2 - _021C5580 - 2 ; case 10
	.short _021C57CC - _021C5580 - 2 ; case 11
	.short _021C583C - _021C5580 - 2 ; case 12
	.short _021C5868 - _021C5580 - 2 ; case 13
	.short _021C58C4 - _021C5580 - 2 ; case 14
	.short _021C5932 - _021C5580 - 2 ; case 15
	.short _021C5966 - _021C5580 - 2 ; case 16
	.short _021C598E - _021C5580 - 2 ; case 17
	.short _021C599E - _021C5580 - 2 ; case 18
	.short _021C59C2 - _021C5580 - 2 ; case 19
	.short _021C59D6 - _021C5580 - 2 ; case 20
	.short _021C59E8 - _021C5580 - 2 ; case 21
	.short _021C59FA - _021C5580 - 2 ; case 22
	.short _021C5A16 - _021C5580 - 2 ; case 23
_021C55B0:
	bl sub_02035318
	cmp r0, #0
	beq _021C55C0
	mov r0, #1
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C55C0:
	ldr r1, _021C5890 ; =ovy332_21bf278
	add r0, r7, #0
	bl ovy332_21c1240
	mov r0, #0x17
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C55D0:
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_021BFB18
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x80
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C55F4:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C563A
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bfc44
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5610:
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d9c
	cmp r0, #0
	beq _021C563A
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C562A:
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d80
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021C563C
_021C563A:
	b _021C5A1A
_021C563C:
	add r0, r4, #0
	bl ovy332_21bfc98
	add r0, r4, #0
	bl sub_021BFB24
	cmp r6, #0
	beq _021C5650
	cmp r6, #1
	b _021C565A
_021C5650:
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C565A:
	mov r0, #0x17
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5662:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #2
	bl ovy332_21c1e54
	sub r1, r6, #4
	mov r0, #0
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02007468
	add r6, r0, #0
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C5698
	bl sub_02048564
	mov r0, #0xa5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021C5698:
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C56AE
	bl sub_02048564
	mov r0, #0xa6
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021C56AE:
	mov r0, #0x80
	mov r1, #0x9b
	bl sub_02048530
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x34]
	mov r1, #0x7a
	bl sub_0204898C
	mov r1, #0xa5
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r4, r1]
	cmp r6, #0
	beq _021C56F6
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_0201736C
	bl sub_02008BD4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x38]
	mov r1, #0
	mov r3, #5
	bl sub_0202451C
	ldr r0, [r4, #0x34]
	mov r1, #0x78
	b _021C56FA
_021C56F6:
	ldr r0, [r4, #0x34]
	mov r1, #0x79
_021C56FA:
	bl sub_0204898C
	mov r1, #0xa5
	lsl r1, r1, #2
	add r6, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_02024920
	add r0, r6, #0
	bl sub_02048564
	ldr r1, _021C5894 ; =ovy332_21c63f8
	add r0, r7, #0
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5726:
	add r2, sp, #0x4c
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [sp, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #5
	str r0, [sp, #0x50]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5754:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C57C0
	ldr r0, [r4, r6]
	bl sub_021C2A3C
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021C5776
	mov r0, #9
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5776:
	mov r0, #8
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C577E:
	mov r0, #0x16
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5786:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r6, #0x7e
	mov r2, #0x7e
	mov r3, #2
	bl ovy332_21c073c
	add r2, sp, #0x40
	mov r0, #0
	add r6, #0x8e
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldr r0, [r4, r6]
	mov r1, #6
	bl ovy332_21c1ea4
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C57B2:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy332_21c1f3c
	cmp r0, #0
	beq _021C57C2
_021C57C0:
	b _021C5A1A
_021C57C2:
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C57CC:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_021C2A3C
	ldr r1, [r0, #4]
	cmp r1, #4
	bhi _021C5828
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C57E8: ; jump table
	.short _021C57F2 - _021C57E8 - 2 ; case 0
	.short _021C5800 - _021C57E8 - 2 ; case 1
	.short _021C5828 - _021C57E8 - 2 ; case 2
	.short _021C5814 - _021C57E8 - 2 ; case 3
	.short _021C5828 - _021C57E8 - 2 ; case 4
_021C57F2:
	ldr r1, [r0, #8]
	sub r0, r6, #4
	str r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5800:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x7f
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x15
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5814:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x82
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x15
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5828:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x81
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x15
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C583C:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	mov r1, #0x41
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0201090C
	cmp r0, #0
	beq _021C5860
	mov r0, #0x10
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5860:
	mov r0, #0xd
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5868:
	ldr r0, [r4, #0x10]
	bl ovy332_21c0604
	mov r0, #0xc
	str r0, [sp]
	mov r6, #0xe
	str r6, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #0x9b
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #4
	mov r3, #0x1c
	bl ovy332_21c054c
	ldr r1, _021C5898 ; =0x0000044F
	b _021C589C
	nop
_021C5890: .word ovy332_21bf278
_021C5894: .word ovy332_21c63f8
_021C5898: .word 0x0000044F
_021C589C:
	str r0, [r4, #0x10]
	bl sub_021C0770
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x84
	mov r3, #1
	bl ovy332_21c073c
	add sp, #0x58
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C58C4:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	bne _021C58D0
	b _021C5A1A
_021C58D0:
	add r7, sp, #0x10
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x30
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x34]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x2c]
	mov r2, #0x41
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x30]
	mov r3, #0xa
	str r0, [sp, #0x18]
	strh r6, [r1, #0x20]
	mov r0, #0xe
	strh r0, [r1, #0x22]
	mov r0, #0xf
	strh r0, [r1, #0x24]
	mov r0, #1
	strh r0, [r1, #0x26]
	str r2, [sp, #0x1c]
	mov r2, #0x42
	str r2, [sp, #0x20]
	mov r2, #2
	str r2, [sp, #0x2c]
	str r0, [sp, #0x38]
	strh r0, [r1, #0x2c]
	strh r6, [r1, #0x2e]
	mov r0, #4
	str r0, [sp]
	mov r0, #0x9b
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x15
	mov r2, #0x13
	bl ovy332_21c0c40
	str r0, [r4, #0x20]
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5932:
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d80
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021C5A1A
	ldr r0, [r4, #0x20]
	bl ovy332_21c0d50
	mov r0, #0
	str r0, [r4, #0x20]
	cmp r6, #0
	beq _021C5954
	cmp r6, #1
	b _021C595E
_021C5954:
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C595E:
	mov r0, #0x13
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5966:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	mov r1, #0x41
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020108DC
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C598E:
	ldr r1, _021C5A20 ; =ovy332_21c60b4
	bl ovy332_21c1240
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C599E:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq _021C59B0
	ldr r1, [r4, #0x34]
	mov r2, #0x8a
	b _021C59B4
_021C59B0:
	ldr r1, [r4, #0x34]
	mov r2, #0x83
_021C59B4:
	mov r3, #3
	bl ovy332_21c073c
	mov r0, #0x14
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C59C2:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x85
	mov r3, #3
	bl ovy332_21c073c
	mov r0, #0x14
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C59D6:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C5A1A
	mov r0, #0x16
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C59E8:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C5A1A
	mov r0, #0x16
	add sp, #0x58
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C59FA:
	ldr r1, _021C5A24 ; =ovy332_21bf23c
	bl ovy332_21c1240
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ovy332_21c1e54
	ldr r0, [r5]
	add sp, #0x58
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C5A16:
	bl ovy332_21c1270
_021C5A1A:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C5A20: .word ovy332_21c60b4
_021C5A24: .word ovy332_21bf23c
	thumb_func_end ovy332_21c5564

	thumb_func_start ovy332_21c5a28
ovy332_21c5a28: ; 0x021C5A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x2a
	bls _021C5A3A
	b _021C6094
_021C5A3A:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C5A46: ; jump table
	.short _021C5A9C - _021C5A46 - 2 ; case 0
	.short _021C5AAC - _021C5A46 - 2 ; case 1
	.short _021C5AB4 - _021C5A46 - 2 ; case 2
	.short _021C5AC4 - _021C5A46 - 2 ; case 3
	.short _021C5B00 - _021C5A46 - 2 ; case 4
	.short _021C5B10 - _021C5A46 - 2 ; case 5
	.short _021C5B2A - _021C5A46 - 2 ; case 6
	.short _021C5B40 - _021C5A46 - 2 ; case 7
	.short _021C5B48 - _021C5A46 - 2 ; case 8
	.short _021C5B66 - _021C5A46 - 2 ; case 9
	.short _021C5BA8 - _021C5A46 - 2 ; case 10
	.short _021C5BBE - _021C5A46 - 2 ; case 11
	.short _021C5BE0 - _021C5A46 - 2 ; case 12
	.short _021C5BF0 - _021C5A46 - 2 ; case 13
	.short _021C5C00 - _021C5A46 - 2 ; case 14
	.short _021C5C10 - _021C5A46 - 2 ; case 15
	.short _021C5C20 - _021C5A46 - 2 ; case 16
	.short _021C5C30 - _021C5A46 - 2 ; case 17
	.short _021C5C6C - _021C5A46 - 2 ; case 18
	.short _021C5D16 - _021C5A46 - 2 ; case 19
	.short _021C5DCC - _021C5A46 - 2 ; case 20
	.short _021C5E02 - _021C5A46 - 2 ; case 21
	.short _021C5E2E - _021C5A46 - 2 ; case 22
	.short _021C5E7C - _021C5A46 - 2 ; case 23
	.short _021C5EE8 - _021C5A46 - 2 ; case 24
	.short _021C5F1E - _021C5A46 - 2 ; case 25
	.short _021C5F46 - _021C5A46 - 2 ; case 26
	.short _021C5F56 - _021C5A46 - 2 ; case 27
	.short _021C5F7A - _021C5A46 - 2 ; case 28
	.short _021C5F8E - _021C5A46 - 2 ; case 29
	.short _021C5FA0 - _021C5A46 - 2 ; case 30
	.short _021C5FB4 - _021C5A46 - 2 ; case 31
	.short _021C5FC8 - _021C5A46 - 2 ; case 32
	.short _021C5FDC - _021C5A46 - 2 ; case 33
	.short _021C5FEE - _021C5A46 - 2 ; case 34
	.short _021C6022 - _021C5A46 - 2 ; case 35
	.short _021C6032 - _021C5A46 - 2 ; case 36
	.short _021C6042 - _021C5A46 - 2 ; case 37
	.short _021C6052 - _021C5A46 - 2 ; case 38
	.short _021C6062 - _021C5A46 - 2 ; case 39
	.short _021C606A - _021C5A46 - 2 ; case 40
	.short _021C6072 - _021C5A46 - 2 ; case 41
	.short _021C6086 - _021C5A46 - 2 ; case 42
_021C5A9C:
	ldr r1, _021C5D50 ; =ovy332_21bf17c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5AAC:
	add r0, r1, #1
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5AB4:
	ldr r1, _021C5D54 ; =ovy332_21c6508
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5AC4:
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021C5AF0
	mov r7, #0x43
	add r0, r1, #4
	mov r2, #0
	add r1, #0x1c
	lsl r7, r7, #2
	str r2, [r5, r0]
	ldr r0, [r5, r7]
	add r1, r5, r1
	bl sub_021C2168
	ldr r0, [r5, r7]
	mov r1, #3
	bl ovy332_21c1e54
	add r0, r6, #0
	ldr r1, _021C5D58 ; =ovy332_21c643c
	b _021C5AF2
_021C5AF0:
	ldr r1, _021C5D5C ; =ovy332_21c63b4
_021C5AF2:
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B00:
	ldr r1, _021C5D60 ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B10:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C5B22
	mov r0, #0xa
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B22:
	mov r0, #0x28
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B2A:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x8d
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B40:
	add r0, r1, #1
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B48:
	add r2, sp, #0x24
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	bl ovy332_21c1ea4
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B66:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C5BC8
	ldr r0, [r5, r6]
	bl sub_021C2A3C
	ldr r1, [r0, #4]
	cmp r1, #2
	beq _021C5B84
	cmp r1, #3
	bne _021C5B90
_021C5B84:
	bl sub_02011DE0
	mov r0, #0x28
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B90:
	ldr r0, [r0]
	cmp r0, #4
	bne _021C5B9E
	mov r0, #0x29
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5B9E:
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5BA8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x86
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5BBE:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	bne _021C5BCA
_021C5BC8:
	b _021C6094
_021C5BCA:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_021C216C
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5BE0:
	ldr r1, _021C5D50 ; =ovy332_21bf17c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5BF0:
	ldr r1, _021C5D64 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C00:
	ldr r1, _021C5D68 ; =ovy332_21c66ac
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C10:
	ldr r1, _021C5D58 ; =ovy332_21c643c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C20:
	ldr r1, _021C5D60 ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C30:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_021C216C
	mov r6, #0x29
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _021C5C4E
	mov r0, #0x1e
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C4E:
	add r0, r6, #0
	add r0, #0xc1
	str r0, [sp]
	ldr r1, _021C5D6C ; =0x00080080
	ldr r3, _021C5D70 ; =0x021C944C
	mov r0, #1
	mov r2, #1
	bl sub_0203A1FC
	add r6, #0x10
	str r0, [r5, r6]
	mov r0, #0x12
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5C6C:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x89
	mov r3, #2
	bl ovy332_21c073c
	mov r0, #0
	add r1, sp, #0x5c
	str r0, [sp, #0x10]
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020486F0
	ldr r6, _021C5D74 ; =0x021C9044
	str r0, [sp, #0x18]
	mov r7, #0
_021C5C9A:
	ldr r1, [sp, #0x18]
	mov r0, #0
	lsl r2, r7, #1
	mvn r0, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	ldrh r1, [r1, r2]
	str r0, [sp, #0x20]
_021C5CAA:
	lsl r2, r0, #1
	ldrh r2, [r6, r2]
	cmp r1, r2
	bne _021C5CBA
	str r0, [sp, #0x1c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x20]
	b _021C5CC0
_021C5CBA:
	add r0, r0, #1
	cmp r0, #0x20
	blo _021C5CAA
_021C5CC0:
	lsl r2, r7, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r2, r7, r2
	blx sub_0208D62C
	ldr r2, [sp, #0x10]
	add r0, r2, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adc r0, r1
	add r7, r7, #1
	str r0, [sp, #0x14]
	cmp r7, #0xa
	blt _021C5C9A
	mov r0, #0
	sub r1, r0, #1
	ldr r0, [sp, #0x10]
	mov r6, #0x43
	and r0, r1
	str r0, [sp, #0x5c]
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r6, r6, #2
	str r0, [sp, #0x64]
	ldr r0, _021C5D6C ; =0x00080080
	mov r1, #7
	str r0, [sp, #0x68]
	ldr r0, [r5, r6]
	add r2, sp, #0x5c
	bl ovy332_21c1ea4
	ldr r0, [r5, r6]
	ldr r1, _021C5D78 ; =ovy332_21c6d64
	add r2, r5, #0
	bl sub_021C2174
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5D16:
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl ovy332_21c1f3c
	cmp r0, #0
	bne _021C5D30
	ldr r0, [r5, r6]
	bl sub_021C2A3C
	ldr r0, [r0, #4]
	cmp r0, #7
	bls _021C5D32
_021C5D30:
	b _021C6094
_021C5D32:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C5D3E: ; jump table
	.short _021C6094 - _021C5D3E - 2 ; case 0
	.short _021C6094 - _021C5D3E - 2 ; case 1
	.short _021C5D7C - _021C5D3E - 2 ; case 2
	.short _021C5D7C - _021C5D3E - 2 ; case 3
	.short _021C5D88 - _021C5D3E - 2 ; case 4
	.short _021C5D90 - _021C5D3E - 2 ; case 5
	.short _021C5DAA - _021C5D3E - 2 ; case 6
	.short _021C5DC4 - _021C5D3E - 2 ; case 7
_021C5D50: .word ovy332_21bf17c
_021C5D54: .word ovy332_21c6508
_021C5D58: .word ovy332_21c643c
_021C5D5C: .word ovy332_21c63b4
_021C5D60: .word ovy332_21bf13c
_021C5D64: .word ovy332_21bf23c
_021C5D68: .word ovy332_21c66ac
_021C5D6C: .word 0x00080080
_021C5D70: .word 0x021C944C
_021C5D74: .word 0x021C9044
_021C5D78: .word ovy332_21c6d64
_021C5D7C:
	bl sub_02011DE0
	mov r0, #0x28
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5D88:
	mov r0, #0x14
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5D90:
	mov r6, #0x2a
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021C5DA2
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r6]
_021C5DA2:
	mov r0, #0x1f
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5DAA:
	mov r6, #0x2a
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021C5DBC
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r6]
_021C5DBC:
	mov r0, #0x1c
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5DC4:
	mov r0, #0x20
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5DCC:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C5DDA
	bl sub_0203A24C
_021C5DDA:
	mov r7, #0x2a
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	mov r6, #0x9b
	add r0, #0x80
	mov r1, #0x9b
	bl ovy332_21c6e80
	add r6, #0x6d
	str r0, [r5, r6]
	ldr r0, [r5, r7]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r7]
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5E02:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	mov r1, #0x41
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0201090C
	cmp r0, #0
	beq _021C5E26
	mov r0, #0x19
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5E26:
	mov r0, #0x16
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5E2E:
	ldr r0, [r5, #0x10]
	bl ovy332_21c0604
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #0x9b
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #4
	mov r3, #0x1c
	bl ovy332_21c054c
	ldr r1, _021C6098 ; =0x0000044F
	str r0, [r5, #0x10]
	bl sub_021C0770
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x84
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x17
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5E7C:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C5EF8
	add r7, sp, #0x2c
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x30
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x34]
	add r1, sp, #0x24
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x2c]
	mov r2, #0x41
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x30]
	mov r3, #0xa
	str r0, [sp, #0x34]
	strh r6, [r1, #0x28]
	mov r0, #0xe
	strh r0, [r1, #0x2a]
	mov r0, #0xf
	strh r0, [r1, #0x2c]
	mov r0, #1
	strh r0, [r1, #0x2e]
	str r2, [sp, #0x38]
	mov r2, #0x42
	str r2, [sp, #0x3c]
	mov r2, #2
	str r2, [sp, #0x48]
	str r0, [sp, #0x54]
	strh r0, [r1, #0x34]
	strh r6, [r1, #0x36]
	mov r0, #4
	str r0, [sp]
	mov r0, #0x9b
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x15
	mov r2, #0x13
	bl ovy332_21c0c40
	str r0, [r5, #0x20]
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5EE8:
	ldr r0, [r5, #0x20]
	bl ovy332_21c0d80
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021C5EFA
_021C5EF8:
	b _021C6094
_021C5EFA:
	ldr r0, [r5, #0x20]
	bl ovy332_21c0d50
	mov r0, #0
	str r0, [r5, #0x20]
	cmp r6, #0
	beq _021C5F0C
	cmp r6, #1
	b _021C5F16
_021C5F0C:
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F16:
	mov r0, #0x1e
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F1E:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	mov r1, #0x41
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_020108DC
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F46:
	ldr r1, _021C609C ; =ovy332_21c60b4
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F56:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _021C5F68
	ldr r1, [r5, #0x34]
	mov r2, #0x8a
	b _021C5F6C
_021C5F68:
	ldr r1, [r5, #0x34]
	mov r2, #0x83
_021C5F6C:
	mov r3, #3
	bl ovy332_21c073c
	mov r0, #0x21
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F7A:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x87
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x1d
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5F8E:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6094
	mov r0, #0xa
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5FA0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x85
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x21
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5FB4:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x8f
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x1d
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5FC8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x8e
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x21
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5FDC:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6094
	mov r0, #0x22
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C5FEE:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r7, #0
	bl ovy332_21c1e54
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021C6010
	bl sub_0203A24C
	mov r0, #0x2a
	lsl r0, r0, #4
	str r7, [r5, r0]
_021C6010:
	ldr r1, _021C60A0 ; =ovy332_21bf17c
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6022:
	ldr r1, _021C60A4 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6032:
	ldr r1, _021C60A8 ; =ovy332_21c65fc
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6042:
	ldr r1, _021C60AC ; =ovy332_21c63b4
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6052:
	ldr r1, _021C60B0 ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #0x6c
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6062:
	add r0, r1, #1
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C606A:
	bl ovy332_21c1270
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
_021C6072:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0x8c
	mov r3, #1
	bl ovy332_21c073c
	mov r0, #0x29
	add sp, #0x6c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021C6086:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6094
	mov r0, #0x28
	str r0, [r4]
_021C6094:
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C6098: .word 0x0000044F
_021C609C: .word ovy332_21c60b4
_021C60A0: .word ovy332_21bf17c
_021C60A4: .word ovy332_21bf23c
_021C60A8: .word ovy332_21c65fc
_021C60AC: .word ovy332_21c63b4
_021C60B0: .word ovy332_21bf13c
	thumb_func_end ovy332_21c5a28

	thumb_func_start ovy332_21c60b4
ovy332_21c60b4: ; 0x021C60B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #7
	bhi _021C6162
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C60CC: ; jump table
	.short _021C60DC - _021C60CC - 2 ; case 0
	.short _021C60F0 - _021C60CC - 2 ; case 1
	.short _021C6102 - _021C60CC - 2 ; case 2
	.short _021C6122 - _021C60CC - 2 ; case 3
	.short _021C612E - _021C60CC - 2 ; case 4
	.short _021C6134 - _021C60CC - 2 ; case 5
	.short _021C6146 - _021C60CC - 2 ; case 6
	.short _021C615E - _021C60CC - 2 ; case 7
_021C60DC:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0x1d
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C60F0:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6162
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6102:
	add r0, r2, #0
	bl ovy332_21c6d74
	cmp r0, #0
	beq _021C6112
	add r0, r5, #0
	ldr r1, _021C6164 ; =ovy332_21c6238
	b _021C6116
_021C6112:
	ldr r1, _021C6168 ; =ovy332_21c6170
	add r0, r5, #0
_021C6116:
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6122:
	ldr r0, _021C616C ; =0x00000558
	bl sub_02006254
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C612E:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6134:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0x38
	mov r3, #3
	bl ovy332_21c073c
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6146:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6162
	bl sub_020062A8
	cmp r0, #0
	bne _021C6162
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C615E:
	bl ovy332_21c1270
_021C6162:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C6164: .word ovy332_21c6238
_021C6168: .word ovy332_21c6170
_021C616C: .word 0x00000558
	thumb_func_end ovy332_21c60b4

	thumb_func_start ovy332_21c6170
ovy332_21c6170: ; 0x021C6170
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #3
	bhi _021C61E6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C6188: ; jump table
	.short _021C6190 - _021C6188 - 2 ; case 0
	.short _021C61AA - _021C6188 - 2 ; case 1
	.short _021C61C8 - _021C6188 - 2 ; case 2
	.short _021C61E2 - _021C6188 - 2 ; case 3
_021C6190:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_021BEC24
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C61AA:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add r5, #0xfc
	ldr r0, [r5]
	bl sub_021BEC98
	cmp r0, #0
	beq _021C61E6
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C61C8:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #1
	str r1, [r5, r0]
	cmp r2, #0x3c
	bls _021C61E6
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C61E2:
	bl ovy332_21c1270
_021C61E6:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c6170

	thumb_func_start ovy332_21c61e8
ovy332_21c61e8: ; 0x021C61E8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _021C6234
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021C61FE: ; jump table
	.short _021C6206 - _021C61FE - 2 ; case 0
	.short _021C6216 - _021C61FE - 2 ; case 1
	.short _021C622A - _021C61FE - 2 ; case 2
	.short _021C6230 - _021C61FE - 2 ; case 3
_021C6206:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #4]
	bl sub_0201782C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6216:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017850
	cmp r0, #2
	bne _021C6234
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C622A:
	add r0, r1, #1
	str r0, [r4]
	pop {r4, pc}
_021C6230:
	bl ovy332_21c1270
_021C6234:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c61e8

	thumb_func_start ovy332_21c6238
ovy332_21c6238: ; 0x021C6238
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C624C
	cmp r1, #1
	beq _021C625A
	cmp r1, #2
	beq _021C6268
	pop {r4, pc}
_021C624C:
	ldr r1, _021C6270 ; =ovy332_21c61e8
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C625A:
	ldr r1, _021C6274 ; =ovy332_21c6170
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6268:
	bl ovy332_21c1270
	pop {r4, pc}
	nop
_021C6270: .word ovy332_21c61e8
_021C6274: .word ovy332_21c6170
	thumb_func_end ovy332_21c6238

	thumb_func_start ovy332_21c6278
ovy332_21c6278: ; 0x021C6278
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #4
	bhi _021C6324
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C6292: ; jump table
	.short _021C629C - _021C6292 - 2 ; case 0
	.short _021C62AC - _021C6292 - 2 ; case 1
	.short _021C62F0 - _021C6292 - 2 ; case 2
	.short _021C6300 - _021C6292 - 2 ; case 3
	.short _021C6320 - _021C6292 - 2 ; case 4
_021C629C:
	ldr r1, _021C6328 ; =ovy332_21c6480
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C62AC:
	ldr r0, [r5, #0x28]
	bl ovy332_21c1940
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021C6324
	cmp r0, #0xff
	beq _021C62E6
	ldr r0, [r5, #0x28]
	add r1, sp, #4
	add r2, sp, #0
	bl ovy332_21c19e0
	add r0, r5, #0
	ldr r1, _021C632C ; =0x021C9460
	ldr r2, [sp, #4]
	add r0, #0xb4
	bl ovy332_21bf864
	add r5, #0xb4
	ldr r1, _021C6330 ; =0x021C9464
	ldr r2, [sp]
	add r0, r5, #0
	bl ovy332_21bf864
_021C62E6:
	ldr r0, [r4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C62F0:
	ldr r1, _021C6334 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6300:
	mov r2, #0x9d
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	cmp r2, #0xff
	bne _021C6312
	add r0, r1, #1
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6312:
	ldr r1, _021C6338 ; =ovy332_21c633c
	bl ovy332_21c1240
	mov r0, #0
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C6320:
	bl ovy332_21c1270
_021C6324:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C6328: .word ovy332_21c6480
_021C632C: .word 0x021C9460
_021C6330: .word 0x021C9464
_021C6334: .word ovy332_21bf23c
_021C6338: .word ovy332_21c633c
	thumb_func_end ovy332_21c6278

	thumb_func_start ovy332_21c633c
ovy332_21c633c: ; 0x021C633C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #4
	bhi _021C63A8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C6352: ; jump table
	.short _021C635C - _021C6352 - 2 ; case 0
	.short _021C636A - _021C6352 - 2 ; case 1
	.short _021C6384 - _021C6352 - 2 ; case 2
	.short _021C6396 - _021C6352 - 2 ; case 3
	.short _021C63A4 - _021C6352 - 2 ; case 4
_021C635C:
	ldr r1, _021C63AC ; =ovy332_21c64c4
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C636A:
	mov r3, #0x9d
	lsl r3, r3, #2
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	ldr r2, [r2, r3]
	mov r3, #1
	add r2, #0x99
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6384:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C63A8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6396:
	ldr r1, _021C63B0 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C63A4:
	bl ovy332_21c1270
_021C63A8:
	pop {r4, pc}
	nop
_021C63AC: .word ovy332_21c64c4
_021C63B0: .word ovy332_21bf23c
	thumb_func_end ovy332_21c633c

	thumb_func_start ovy332_21c63b4
ovy332_21c63b4: ; 0x021C63B4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C63C8
	cmp r1, #1
	beq _021C63DA
	cmp r1, #2
	beq _021C63EC
	pop {r4, pc}
_021C63C8:
	ldr r0, [r2]
	ldr r1, _021C63F4 ; =0x021C9024
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C63DA:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C63F0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C63EC:
	bl ovy332_21c1270
_021C63F0:
	pop {r4, pc}
	nop
_021C63F4: .word 0x021C9024
	thumb_func_end ovy332_21c63b4

	thumb_func_start ovy332_21c63f8
ovy332_21c63f8: ; 0x021C63F8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C640C
	cmp r1, #1
	beq _021C641E
	cmp r1, #2
	beq _021C6430
	pop {r4, pc}
_021C640C:
	ldr r0, [r2]
	ldr r1, _021C6438 ; =0x021C9014
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C641E:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C6434
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6430:
	bl ovy332_21c1270
_021C6434:
	pop {r4, pc}
	nop
_021C6438: .word 0x021C9014
	thumb_func_end ovy332_21c63f8

	thumb_func_start ovy332_21c643c
ovy332_21c643c: ; 0x021C643C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C6450
	cmp r1, #1
	beq _021C6462
	cmp r1, #2
	beq _021C6474
	pop {r4, pc}
_021C6450:
	ldr r0, [r2]
	ldr r1, _021C647C ; =0x021C9034
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6462:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C6478
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C6474:
	bl ovy332_21c1270
_021C6478:
	pop {r4, pc}
	nop
_021C647C: .word 0x021C9034
	thumb_func_end ovy332_21c643c

	thumb_func_start ovy332_21c6480
ovy332_21c6480: ; 0x021C6480
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C6494
	cmp r1, #1
	beq _021C64A6
	cmp r1, #2
	beq _021C64B8
	pop {r4, pc}
_021C6494:
	ldr r0, [r2]
	ldr r1, _021C64C0 ; =0x021C8FF4
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C64A6:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C64BC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C64B8:
	bl ovy332_21c1270
_021C64BC:
	pop {r4, pc}
	nop
_021C64C0: .word 0x021C8FF4
	thumb_func_end ovy332_21c6480

	thumb_func_start ovy332_21c64c4
ovy332_21c64c4: ; 0x021C64C4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C64D8
	cmp r1, #1
	beq _021C64EA
	cmp r1, #2
	beq _021C64FC
	pop {r4, pc}
_021C64D8:
	ldr r0, [r2]
	ldr r1, _021C6504 ; =0x021C9004
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C64EA:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C6500
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C64FC:
	bl ovy332_21c1270
_021C6500:
	pop {r4, pc}
	nop
_021C6504: .word 0x021C9004
	thumb_func_end ovy332_21c64c4

	thumb_func_start ovy332_21c6508
ovy332_21c6508: ; 0x021C6508
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r6]
	add r4, r2, #0
	cmp r1, #3
	bhi _021C65E8
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C6520: ; jump table
	.short _021C6528 - _021C6520 - 2 ; case 0
	.short _021C658E - _021C6520 - 2 ; case 1
	.short _021C6594 - _021C6520 - 2 ; case 2
	.short _021C65E4 - _021C6520 - 2 ; case 3
_021C6528:
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl ovy332_21bfa50
	ldr r0, _021C65EC ; =0x000006A9
	ldr r3, _021C65F0 ; =0x021C944C
	str r0, [sp]
	mov r0, #0x9b
	mov r1, #0x28
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5]
	str r7, [r5, #4]
	mov r0, #1
	str r0, [r5, #8]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0x10]
	str r7, [r5, #0x18]
	mov r0, #0x38
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02007468
	cmp r0, #0
	beq _021C6572
	str r7, [r5, #0x14]
	b _021C6576
_021C6572:
	mov r0, #2
	str r0, [r5, #0x14]
_021C6576:
	mov r0, #0xa7
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r0, _021C65F4 ; =0x000000BE
	ldr r1, _021C65F8 ; =0x021B50A8
	add r2, r5, #0
	bl sub_0203A938
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C658E:
	add r0, r1, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C6594:
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	bne _021C65A4
	mov r1, #1
	b _021C65A6
_021C65A4:
	mov r1, #0
_021C65A6:
	mov r5, #0xa7
	sub r0, #0x14
	lsl r5, r5, #2
	str r1, [r4, r0]
	ldr r0, [r4, r5]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bf92c
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	ldr r0, [r4, #0x3c]
	mov r1, #4
	mov r2, #1
	bl sub_021BF5B0
	mov r0, #1
	mov r1, #0x9b
	bl sub_02042BA8
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021C65E4:
	bl ovy332_21c1270
_021C65E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C65EC: .word 0x000006A9
_021C65F0: .word 0x021C944C
_021C65F4: .word 0x000000BE
_021C65F8: .word 0x021B50A8
	thumb_func_end ovy332_21c6508

	thumb_func_start ovy332_21c65fc
ovy332_21c65fc: ; 0x021C65FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #3
	bhi _021C669A
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C6614: ; jump table
	.short _021C661C - _021C6614 - 2 ; case 0
	.short _021C665E - _021C6614 - 2 ; case 1
	.short _021C6664 - _021C6614 - 2 ; case 2
	.short _021C6696 - _021C6614 - 2 ; case 3
_021C661C:
	add r0, r4, #0
	mov r1, #0
	mov r6, #0
	bl ovy332_21bfa50
	ldr r0, _021C669C ; =0x000006FD
	ldr r3, _021C66A0 ; =0x021C944C
	str r0, [sp]
	mov r0, #0x9b
	mov r1, #0x1c
	mov r2, #1
	mov r7, #1
	bl sub_0203A1FC
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, _021C66A4 ; =0x021B52BC
	ldr r0, [r0, #4]
	str r0, [r2]
	str r6, [r2, #4]
	str r7, [r2, #8]
	str r6, [r2, #0xc]
	mov r0, #0xa7
	str r6, [r2, #0x10]
	lsl r0, r0, #2
	str r2, [r4, r0]
	ldr r0, _021C66A8 ; =0x000000BE
	bl sub_0203A938
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C665E:
	add r0, r1, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C6664:
	mov r6, #0xa7
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bf92c
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	ldr r0, [r4, #0x3c]
	mov r1, #4
	mov r2, #1
	bl sub_021BF5B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C6696:
	bl ovy332_21c1270
_021C669A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C669C: .word 0x000006FD
_021C66A0: .word 0x021C944C
_021C66A4: .word 0x021B52BC
_021C66A8: .word 0x000000BE
	thumb_func_end ovy332_21c65fc

	thumb_func_start ovy332_21c66ac
ovy332_21c66ac: ; 0x021C66AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #3
	bhi _021C67A2
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021C66C4: ; jump table
	.short _021C66CC - _021C66C4 - 2 ; case 0
	.short _021C6714 - _021C66C4 - 2 ; case 1
	.short _021C671A - _021C66C4 - 2 ; case 2
	.short _021C679E - _021C66C4 - 2 ; case 3
_021C66CC:
	add r0, r4, #0
	mov r1, #1
	bl ovy332_21bfa50
	ldr r0, _021C67A4 ; =0x00000738
	ldr r3, _021C67A8 ; =0x021C944C
	str r0, [sp]
	mov r0, #0x9b
	mov r1, #0x38
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	mov r0, #0xc
	str r0, [r6]
	mov r0, #0xa
	str r0, [r6, #0x18]
	mov r0, #3
	str r0, [r6, #0x2c]
	mov r0, #0xb
	mov r1, #0x9b
	bl sub_02048530
	str r0, [r6, #0x20]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r6, [r4, r0]
	ldr r0, _021C67AC ; =0x00000118
	ldr r1, _021C67B0 ; =0x021DD940
	add r2, r6, #0
	bl sub_0203A938
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C6714:
	add r0, r1, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C671A:
	mov r6, #0xa7
	lsl r6, r6, #2
	ldr r7, [r4, r6]
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	beq _021C673C
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C675E
	bl sub_02048564
	mov r0, #0
	sub r6, #0xc
	str r0, [r4, r6]
	b _021C675E
_021C673C:
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021C6752
	mov r0, #0xb
	mov r1, #0x9b
	bl sub_02048530
	sub r6, #0xc
	str r0, [r4, r6]
_021C6752:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r7, #0x20]
	bl sub_02048580
_021C675E:
	ldr r0, [r7, #0x20]
	bl sub_02048564
	add r0, r7, #0
	bl sub_0203A24C
	mov r0, #0xa7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x9b
	bl ovy332_21bf92c
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #0
	bl ovy332_21bf5bc
	ldr r0, [r4, #0x3c]
	mov r1, #4
	mov r2, #1
	bl sub_021BF5B0
	mov r0, #1
	mov r1, #0x9b
	bl sub_02042BA8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C679E:
	bl ovy332_21c1270
_021C67A2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C67A4: .word 0x00000738
_021C67A8: .word 0x021C944C
_021C67AC: .word 0x00000118
_021C67B0: .word 0x021DD940
	thumb_func_end ovy332_21c66ac

	thumb_func_start ovy332_21c67b4
ovy332_21c67b4: ; 0x021C67B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0x4c
	mov r3, #0
	mov r5, #0
	bl ovy332_21c073c
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x48
	blx MI_CpuFill8
	mov r1, #1
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #0xa
	str r1, [sp, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	ldr r6, _021C6898 ; =0x021C9448
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x2c]
	add r1, r6, #0
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xb4
	bl ovy332_21bf8bc
	cmp r0, #0
	beq _021C6816
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf8e4
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf88c
	b _021C6818
_021C6816:
	str r5, [sp, #0x20]
_021C6818:
	mov r6, #0
	add r5, sp, #4
	mov r2, #0x1a
	mov r1, #2
	mov r7, #3
_021C6822:
	lsl r3, r6, #3
	add r0, r5, r3
	add r0, #0x26
	strb r2, [r0]
	add r0, r5, r3
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, r3
	add r0, #0x24
	strb r7, [r0]
	add r0, r5, r3
	add r0, #0x27
	ldrb r0, [r0]
	add r3, r5, r3
	add r3, #0x25
	add r0, r0, #3
	mul r0, r6
	add r0, r0, #5
	add r6, r6, #1
	strb r0, [r3]
	cmp r6, #4
	blt _021C6822
	mov r0, #0x4d
	str r0, [sp, #0x24]
	mov r0, #0x4e
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl ovy332_21c6dc0
	cmp r0, #0
	beq _021C686E
	mov r0, #0x5d
	str r0, [sp, #0x34]
	mov r0, #0x4f
	str r0, [sp, #0x3c]
	mov r0, #4
	str r0, [sp, #0x1c]
	b _021C6872
_021C686E:
	mov r0, #0x4f
	str r0, [sp, #0x34]
_021C6872:
	ldr r1, [sp]
	add r0, sp, #4
	bl ovy332_21c0dd4
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy332_21bfbf0
	ldr r2, [sp, #0x20]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	add r2, #0x50
	mov r3, #0
	bl ovy332_21c073c
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021C6898: .word 0x021C9448
	thumb_func_end ovy332_21c67b4

	thumb_func_start ovy332_21c689c
ovy332_21c689c: ; 0x021C689C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	ldr r0, [r5, #0x14]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	bl ovy332_21c1140
	cmp r4, #0
	beq _021C68D2
	cmp r0, #0
	beq _021C68D2
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C68D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c689c

	thumb_func_start ovy332_21c68d8
ovy332_21c68d8: ; 0x021C68D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ovy332_21c0ee8
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl ovy332_21c09a0
	add r0, r4, #0
	bl ovy332_21bfc2c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	pop {r4, pc}
	thumb_func_end ovy332_21c68d8

	thumb_func_start ovy332_21c6900
ovy332_21c6900: ; 0x021C6900
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r5, r1, #0
	str r0, [sp, #8]
	mov r0, #0x9b
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0x1c
	bl ovy332_21c054c
	ldr r1, _021C6A40 ; =0x0000044F
	str r0, [r4, #0x10]
	bl sub_021C0770
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02007468
	cmp r0, #0
	bne _021C6954
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0x7d
	mov r3, #0
	bl ovy332_21c073c
	b _021C69B0
_021C6954:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl sub_0201736C
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x34]
	mov r6, #0x7c
	mov r1, #0x7c
	bl sub_0204898C
	add r6, #0xd5
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02048530
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02008BD4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x38]
	mov r1, #0
	mov r3, #5
	bl sub_0202451C
	ldr r0, [r4, #0x38]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02024920
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	mov r2, #0
	bl ovy332_21c0758
	add r0, r6, #0
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
_021C69B0:
	mov r6, #0x8b
	mov r0, #0x8b
	add r1, r5, #0
	bl sub_0204AA30
	add r6, #0x95
	str r6, [sp]
	mov r1, #0x60
	str r1, [sp, #4]
	mov r1, #2
	mov r2, #4
	add r3, r6, #0
	add r4, r0, #0
	str r5, [sp, #8]
	bl sub_0204B124
	mov r3, #0x1a
	lsl r3, r3, #4
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #4
	str r5, [sp, #8]
	mov r7, #3
	bl sub_0204B124
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #4
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	lsl r0, r7, #0xd
	str r0, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #4
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #6
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021C6A40: .word 0x0000044F
	thumb_func_end ovy332_21c6900

	thumb_func_start ovy332_21c6a44
ovy332_21c6a44: ; 0x021C6A44
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6A66
	mov r0, #0
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C6A66:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6a44

	thumb_func_start ovy332_21c6a6c
ovy332_21c6a6c: ; 0x021C6A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021C6AC8 ; =0x00000115
	mov r1, #0x9b
	mov r4, #0x9b
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r6, r0, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #4
	mov r1, #1
	mov r2, #0xf
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	add r0, r5, #0
	bl sub_021BFB24
	mov r0, #4
	bl sub_02045738
	mov r0, #6
	bl sub_02045738
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021C6AC8: .word 0x00000115
	thumb_func_end ovy332_21c6a6c

	thumb_func_start ovy332_21c6acc
ovy332_21c6acc: ; 0x021C6ACC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #0x9b
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #4
	mov r3, #0x1c
	bl ovy332_21c054c
	ldr r1, _021C6B1C ; =0x0000044F
	str r0, [r4, #0x10]
	bl sub_021C0770
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0xf
	bl ovy332_21c0988
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0x4c
	mov r3, #0
	bl ovy332_21c073c
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021C6B1C: .word 0x0000044F
	thumb_func_end ovy332_21c6acc

	thumb_func_start ovy332_21c6b20
ovy332_21c6b20: ; 0x021C6B20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	cmp r4, #0
	beq _021C6B44
	cmp r0, #0
	beq _021C6B44
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C6B44:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c6b20
_021C6B48:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c6b4c
ovy332_21c6b4c: ; 0x021C6B4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x34]
	mov r2, #0x8b
	mov r3, #0
	mov r4, #0
	bl ovy332_21c073c
	add r6, sp, #4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xb0
	blx MI_CpuFill8
	ldr r0, [r5, #0x34]
	mov r1, #0x16
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x40
	bl ovy332_21bf694
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0x17
	add r2, r7, #0
	bl ovy332_21bf694
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x40
	str r0, [sp]
_021C6B9A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c6d98
	cmp r0, #0
	beq _021C6BE0
	ldr r1, [sp, #0xa4]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x90
	add r1, r6, r1
	str r0, [r1, #0x10]
	ldr r0, [sp, #0xa4]
	add r1, r4, #0
	lsl r0, r0, #2
	add r0, r6, r0
	str r4, [r0, #0x40]
	add r0, r5, #0
	bl ovy332_21c6de0
	cmp r0, #0
	beq _021C6BDA
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xd
	add r2, r7, #0
	bl ovy332_21bf694
	ldr r1, [sp, #0xa4]
	lsl r1, r1, #2
	add r1, r6, r1
	str r0, [r1, #0x70]
_021C6BDA:
	ldr r0, [sp, #0xa4]
	add r0, r0, #1
	str r0, [sp, #0xa4]
_021C6BE0:
	add r4, r4, #1
	cmp r4, #8
	blt _021C6B9A
	ldr r0, [sp, #0xa4]
	mov r2, #0x98
	lsl r1, r0, #2
	add r0, sp, #0x14
	str r2, [r0, r1]
	ldr r0, [sp, #0xa4]
	mov r2, #0xff
	lsl r1, r0, #2
	add r0, sp, #0x44
	str r2, [r0, r1]
	ldr r0, [sp, #0xa4]
	mov r2, #0
	lsl r1, r0, #2
	add r0, sp, #0x74
	str r2, [r0, r1]
	ldr r0, [sp, #0xa4]
	ldr r6, _021C6C7C ; =0x021C9460
	add r0, r0, #1
	str r0, [sp, #0xa4]
	mov r0, #1
	add r4, sp, #0x84
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	mov r0, #0xa
	strh r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf8bc
	cmp r0, #0
	beq _021C6C52
	add r0, r5, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf8e4
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	ldr r1, _021C6C80 ; =0x021C9464
	add r0, #0xb4
	bl ovy332_21bf8e4
	strh r0, [r4, #0x2c]
	add r0, r5, #0
	add r0, #0xb4
	add r1, r6, #0
	bl ovy332_21bf88c
	add r0, r5, #0
	ldr r1, _021C6C80 ; =0x021C9464
	add r0, #0xb4
	bl ovy332_21bf88c
_021C6C52:
	add r0, sp, #4
	add r1, r7, #0
	bl ovy332_21c180c
	mov r2, #1
	str r0, [r5, #0x28]
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021C6C84 ; =0xFFFFE0FF
	and r1, r0
	mov r0, #0xd
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r2]
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	nop
_021C6C7C: .word 0x021C9460
_021C6C80: .word 0x021C9464
_021C6C84: .word 0xFFFFE0FF
	thumb_func_end ovy332_21c6b4c

	thumb_func_start ovy332_21c6c88
ovy332_21c6c88: ; 0x021C6C88
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ovy332_21c1998
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_021C095C
	cmp r5, #0
	beq _021C6CD2
	cmp r0, #0
	beq _021C6CD2
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #1
	bls _021C6CD2
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	bl sub_02045B7C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021C6CD8 ; =0xFFFFE0FF
	and r1, r0
	mov r0, #0x1f
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r2]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C6CD2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021C6CD8: .word 0xFFFFE0FF
	thumb_func_end ovy332_21c6c88

	thumb_func_start ovy332_21c6cdc
ovy332_21c6cdc: ; 0x021C6CDC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	bl ovy332_21c1910
	mov r0, #0
	add r4, r6, #0
	str r0, [r6, #0x28]
	mov r5, #0xd
	add r4, #0x40
_021C6CF0:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy332_21bf82c
	add r5, r5, #1
	cmp r5, #0x15
	blt _021C6CF0
	add r0, r6, #0
	add r0, #0x40
	mov r1, #0x16
	bl ovy332_21bf82c
	add r6, #0x40
	add r0, r6, #0
	mov r1, #0x17
	bl ovy332_21bf82c
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	bl sub_02045B7C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c6cdc

	thumb_func_start ovy332_21c6d20
ovy332_21c6d20: ; 0x021C6D20
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BFB18
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6d20

	thumb_func_start ovy332_21c6d38
ovy332_21c6d38: ; 0x021C6D38
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C6D4E
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C6D4E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6d38

	thumb_func_start ovy332_21c6d54
ovy332_21c6d54: ; 0x021C6D54
	push {r3, lr}
	bl sub_021BFB24
	mov r0, #0
	bl sub_02045B7C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6d54

	thumb_func_start ovy332_21c6d64
ovy332_21c6d64: ; 0x021C6D64
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl ovy332_21c09bc
	mov r0, #0
	bl sub_02044F90
	pop {r3, pc}
	thumb_func_end ovy332_21c6d64

	thumb_func_start ovy332_21c6d74
ovy332_21c6d74: ; 0x021C6D74
	push {r4, lr}
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	add r4, r0, #0
	bl sub_02007468
	cmp r0, #0
	beq _021C6D92
	add r0, r4, #0
	bl sub_02017A5C
	mov r0, #0
	pop {r4, pc}
_021C6D92:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6d74

	thumb_func_start ovy332_21c6d98
ovy332_21c6d98: ; 0x021C6D98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02010C54
	cmp r0, #0
	bne _021C6DB8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c6de0
	cmp r0, #0
	beq _021C6DBC
_021C6DB8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C6DBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c6d98

	thumb_func_start ovy332_21c6dc0
ovy332_21c6dc0: ; 0x021C6DC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021C6DC6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy332_21c6d98
	cmp r0, #0
	beq _021C6DD6
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C6DD6:
	add r4, r4, #1
	cmp r4, #8
	blt _021C6DC6
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c6dc0

	thumb_func_start ovy332_21c6de0
ovy332_21c6de0: ; 0x021C6DE0
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02017A5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02010C6C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02019294
	ldrh r0, [r0]
	cmp r0, #1
	bne _021C6E0E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C6E0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6de0

	thumb_func_start ovy332_21c6e14
ovy332_21c6e14: ; 0x021C6E14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	mov r5, #0
	cmp r6, #0
	ble _021C6E3E
_021C6E20:
	cmp r5, #0x45
	blo _021C6E2C
	add r0, r5, #0
	bl sub_021C6E64
	b _021C6E32
_021C6E2C:
	add r0, r5, #0
	bl sub_021C6E44
_021C6E32:
	add r4, r4, r0
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blt _021C6E20
_021C6E3E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6e14

	thumb_func_start sub_021C6E44
sub_021C6E44: ; 0x021C6E44
	lsl r1, r0, #2
	ldr r0, _021C6E60 ; =0x021C9084
	ldr r2, [r0, r1]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	bne _021C6E54
	mov r0, #0
	b _021C6E5A
_021C6E54:
	mov r0, #1
	lsl r0, r0, #8
	sub r0, r0, r1
_021C6E5A:
	add r0, r2, r0
	bx lr
	nop
_021C6E60: .word 0x021C9084
	thumb_func_end sub_021C6E44

	thumb_func_start sub_021C6E64
sub_021C6E64: ; 0x021C6E64
	lsl r1, r0, #2
	ldr r0, _021C6E6C ; =0x021C9084
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_021C6E6C: .word 0x021C9084
	thumb_func_end sub_021C6E64

	thumb_func_start ovy332_21c6e70
ovy332_21c6e70: ; 0x021C6E70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovy332_21c6e14
	add r0, r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6e70

	thumb_func_start ovy332_21c6e80
ovy332_21c6e80: ; 0x021C6E80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x5a
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x6b
	ldr r3, _021C6EB0 ; =0x021C9468
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy332_21c6eb4
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x18
	bl ovy332_21c6ee8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_021C6EB0: .word 0x021C9468
	thumb_func_end ovy332_21c6e80

	thumb_func_start ovy332_21c6eb4
ovy332_21c6eb4: ; 0x021C6EB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	add r0, r4, #0
	mov r1, #0x1b
	bl ovy332_21c6e70
	add r4, r0, #4
	ldr r0, [r4, #0x10]
	add r1, r5, #4
	str r0, [r5]
	add r0, r4, #0
	mov r2, #0x10
	blx MI_CpuCopy8
	ldrb r0, [r4, #0x1d]
	strb r0, [r5, #0x14]
	ldrb r0, [r4, #0x1b]
	strb r0, [r5, #0x15]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c6eb4

	thumb_func_start ovy332_21c6ee8
ovy332_21c6ee8: ; 0x021C6EE8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x65
	add r4, r1, #0
	lsl r6, r6, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	mov r5, #0
	blx MI_CpuFill8
	ldr r0, [sp]
	mov r1, #0x2d
	bl ovy332_21c6e70
	add r7, r0, #0
	add r6, #0xe8
_021C6F0A:
	mov r0, #0xc
	ldr r2, _021C701C ; =0x021C91F8
	mul r0, r5
	ldr r1, _021C701C ; =0x021C91F8
	ldr r3, [r2, r0]
	add r1, r1, r0
	lsr r0, r3, #3
	add r0, r7, r0
	mov r2, #7
	and r3, r2
	mov r2, #1
	ldrb r0, [r0, r6]
	lsl r2, r3
	tst r0, r2
	beq _021C6F2C
	mov r2, #1
	b _021C6F2E
_021C6F2C:
	mov r2, #0
_021C6F2E:
	ldr r0, [r1, #8]
	cmp r0, r2
	ldr r3, [r1, #4]
	bne _021C6F4A
	mov r2, #7
	lsr r1, r3, #3
	and r3, r2
	mov r2, #1
	lsl r2, r3
	lsl r2, r2, #0x18
	ldrb r0, [r4, r1]
	lsr r2, r2, #0x18
	orr r0, r2
	b _021C6F5E
_021C6F4A:
	mov r2, #7
	lsr r1, r3, #3
	and r3, r2
	mov r2, #1
	lsl r2, r3
	mvn r2, r2
	lsl r2, r2, #0x18
	ldrb r0, [r4, r1]
	lsr r2, r2, #0x18
	and r0, r2
_021C6F5E:
	add r5, r5, #1
	strb r0, [r4, r1]
	cmp r5, #8
	blo _021C6F0A
	ldr r0, [sp]
	mov r1, #0x34
	bl ovy332_21c6e70
	mov ip, r0
	mov r0, #0
	mov r6, #1
_021C6F74:
	ldr r3, _021C7020 ; =0x021C91B8
	lsl r5, r0, #3
	ldr r1, _021C7020 ; =0x021C91B8
	ldr r3, [r3, r5]
	add r2, r1, r5
	mov r1, ip
	add r5, r6, #0
	ldr r1, [r1, #4]
	lsl r5, r3
	tst r1, r5
	ldr r5, [r2, #4]
	beq _021C6FA0
	mov r3, #7
	lsr r2, r5, #3
	and r3, r5
	add r5, r6, #0
	lsl r5, r3
	lsl r3, r5, #0x18
	ldrb r1, [r4, r2]
	lsr r3, r3, #0x18
	orr r1, r3
	b _021C6FB4
_021C6FA0:
	mov r3, #7
	lsr r2, r5, #3
	and r3, r5
	add r5, r6, #0
	lsl r5, r3
	mvn r3, r5
	lsl r3, r3, #0x18
	ldrb r1, [r4, r2]
	lsr r3, r3, #0x18
	and r1, r3
_021C6FB4:
	add r0, r0, #1
	strb r1, [r4, r2]
	cmp r0, #8
	blo _021C6F74
	mov r5, #2
	ldr r1, _021C7024 ; =0x021C91A0
	mov r3, #0
	lsl r5, r5, #0xe
_021C6FC4:
	lsl r0, r3, #3
	add r2, r1, r0
	ldr r0, [r1, r0]
	ldr r2, [r2, #4]
	lsl r0, r0, #1
	add r0, r7, r0
	sub r0, r0, r5
	lsl r2, r2, #1
	ldrh r0, [r0]
	add r2, r4, r2
	add r3, r3, #1
	strh r0, [r2, #2]
	cmp r3, #3
	blo _021C6FC4
	ldr r0, [sp]
	mov r1, #0x2a
	bl ovy332_21c6e70
	mov r5, #0x96
	add r1, r4, #0
	add r6, r0, #0
	lsl r5, r5, #2
	add r0, r6, r5
	add r1, #8
	mov r2, #0x20
	blx MI_CpuCopy8
	sub r0, r5, #2
	ldrh r0, [r6, r0]
	mov r1, #0x42
	strh r0, [r4, #0x28]
	sub r0, r5, #6
	ldrh r0, [r6, r0]
	strh r0, [r4, #0x2a]
	ldr r0, [sp]
	bl ovy332_21c6e70
	add r4, #0x2c
	sub r5, #0xf0
	add r1, r4, #0
	add r2, r5, #0
	blx MI_CpuCopy8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C701C: .word 0x021C91F8
_021C7020: .word 0x021C91B8
_021C7024: .word 0x021C91A0
	thumb_func_end ovy332_21c6ee8

	thumb_func_start ovy332_21c7028
ovy332_21c7028: ; 0x021C7028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	ldr r0, [r0, #4]
	bl ovy332_21c7cd0
	mov r6, #0x9a
	add r1, r0, #0
	lsl r6, r6, #2
	str r1, [r5, r6]
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl ovy332_21c84fc
	add r1, r6, #4
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c7028

	thumb_func_start ovy332_21c704c
ovy332_21c704c: ; 0x021C704C
	push {r3, r4, r5, lr}
	mov r5, #0x9b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_021C8538
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl ovy332_21c7d04
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c704c

	thumb_func_start ovy332_21c7064
ovy332_21c7064: ; 0x021C7064
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #8
	bls _021C7074
	b _021C71A6
_021C7074:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C7080: ; jump table
	.short _021C7092 - _021C7080 - 2 ; case 0
	.short _021C70C6 - _021C7080 - 2 ; case 1
	.short _021C70DA - _021C7080 - 2 ; case 2
	.short _021C70F4 - _021C7080 - 2 ; case 3
	.short _021C710C - _021C7080 - 2 ; case 4
	.short _021C7136 - _021C7080 - 2 ; case 5
	.short _021C7144 - _021C7080 - 2 ; case 6
	.short _021C7174 - _021C7080 - 2 ; case 7
	.short _021C7182 - _021C7080 - 2 ; case 8
_021C7092:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x9b
	bl ovy332_21c7d18
	add r0, r5, #0
	bl ovy332_21bfb98
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0x9b
	bl ovy332_21bfbb4
	add r0, r5, #0
	mov r1, #0x9b
	bl sub_021BFB18
	ldr r1, _021C71A8 ; =ovy332_21c77c4
	add r0, r6, #0
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C70C6:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0xa3
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C70DA:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C71A6
	add r0, r5, #0
	mov r1, #0x9b
	bl ovy332_21bfc44
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C70F4:
	ldr r0, [r5, #0x20]
	bl ovy332_21c0d9c
	cmp r0, #0
	beq _021C71A6
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C710C:
	ldr r0, [r5, #0x20]
	bl ovy332_21c0d80
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021C71A6
	add r0, r5, #0
	bl ovy332_21bfc98
	cmp r6, #0
	beq _021C712A
	cmp r6, #1
	b _021C7130
_021C712A:
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C7130:
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C7136:
	ldr r1, _021C71AC ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C7144:
	add r0, r5, #0
	mov r1, #0
	bl ovy332_21c8a10
	cmp r0, #0
	beq _021C715E
	cmp r0, #1
	beq _021C7164
	cmp r0, #2
	bne _021C716C
	add r0, r6, #0
	ldr r1, _021C71B0 ; =ovy332_21c7328
	b _021C7168
_021C715E:
	add r0, r6, #0
	ldr r1, _021C71B4 ; =ovy332_21c71bc
	b _021C7168
_021C7164:
	ldr r1, _021C71B8 ; =ovy332_21c7238
	add r0, r6, #0
_021C7168:
	bl ovy332_21c1240
_021C716C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C7174:
	ldr r1, _021C71AC ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C7182:
	add r0, r5, #0
	bl sub_021BFB24
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021C7196
	bl ovy332_21c0604
	mov r0, #0
	str r0, [r5, #0x18]
_021C7196:
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #0x1e
	bl sub_021BF5B0
	add r0, r6, #0
	bl ovy332_21c1270
_021C71A6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C71A8: .word ovy332_21c77c4
_021C71AC: .word ovy332_21bf23c
_021C71B0: .word ovy332_21c7328
_021C71B4: .word ovy332_21c71bc
_021C71B8: .word ovy332_21c7238
	thumb_func_end ovy332_21c7064

	thumb_func_start ovy332_21c71bc
ovy332_21c71bc: ; 0x021C71BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #4
	bhi _021C722C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C71D4: ; jump table
	.short _021C71DE - _021C71D4 - 2 ; case 0
	.short _021C71EC - _021C71D4 - 2 ; case 1
	.short _021C7208 - _021C71D4 - 2 ; case 2
	.short _021C721A - _021C71D4 - 2 ; case 3
	.short _021C7228 - _021C71D4 - 2 ; case 4
_021C71DE:
	ldr r1, _021C7230 ; =ovy332_21c7808
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C71EC:
	add r0, r5, #0
	add r1, sp, #0
	bl ovy332_21c8a10
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	ldr r2, [sp]
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7208:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C722C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C721A:
	ldr r1, _021C7234 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7228:
	bl ovy332_21c1270
_021C722C:
	pop {r3, r4, r5, pc}
	nop
_021C7230: .word ovy332_21c7808
_021C7234: .word ovy332_21bf23c
	thumb_func_end ovy332_21c71bc

	thumb_func_start ovy332_21c7238
ovy332_21c7238: ; 0x021C7238
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0xa
	bhi _021C731E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C724E: ; jump table
	.short _021C7264 - _021C724E - 2 ; case 0
	.short _021C7272 - _021C724E - 2 ; case 1
	.short _021C7286 - _021C724E - 2 ; case 2
	.short _021C7298 - _021C724E - 2 ; case 3
	.short _021C72AC - _021C724E - 2 ; case 4
	.short _021C72BE - _021C724E - 2 ; case 5
	.short _021C72D0 - _021C724E - 2 ; case 6
	.short _021C72E6 - _021C724E - 2 ; case 7
	.short _021C72FA - _021C724E - 2 ; case 8
	.short _021C730C - _021C724E - 2 ; case 9
	.short _021C731A - _021C724E - 2 ; case 10
_021C7264:
	ldr r1, _021C7320 ; =ovy332_21c7808
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7272:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0xa8
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7286:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C731E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7298:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0xa9
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C72AC:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C731E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C72BE:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ovy332_21c7e3c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C72D0:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ovy332_21c7e84
	cmp r0, #0
	beq _021C731E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C72E6:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0xaa
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C72FA:
	ldr r0, [r2, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C731E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C730C:
	ldr r1, _021C7324 ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C731A:
	bl ovy332_21c1270
_021C731E:
	pop {r4, pc}
	.align 2, 0
_021C7320: .word ovy332_21c7808
_021C7324: .word ovy332_21bf23c
	thumb_func_end ovy332_21c7238

	thumb_func_start ovy332_21c7328
ovy332_21c7328: ; 0x021C7328
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021C73A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C7340: ; jump table
	.short _021C734A - _021C7340 - 2 ; case 0
	.short _021C7358 - _021C7340 - 2 ; case 1
	.short _021C7382 - _021C7340 - 2 ; case 2
	.short _021C7390 - _021C7340 - 2 ; case 3
	.short _021C739E - _021C7340 - 2 ; case 4
_021C734A:
	ldr r1, _021C73A4 ; =ovy332_21c73b8
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7358:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_021C7DC4
	cmp r0, #0
	beq _021C7374
	ldr r1, _021C73A8 ; =ovy332_21bf17c
	add r0, r5, #0
	bl ovy332_21c1240
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7374:
	ldr r1, _021C73AC ; =ovy332_21bf1fc
	add r0, r5, #0
	bl ovy332_21c1240
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7382:
	ldr r1, _021C73B0 ; =ovy332_21c7430
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C7390:
	ldr r1, _021C73B4 ; =ovy332_21c761c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021C739E:
	bl ovy332_21c1270
_021C73A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C73A4: .word ovy332_21c73b8
_021C73A8: .word ovy332_21bf17c
_021C73AC: .word ovy332_21bf1fc
_021C73B0: .word ovy332_21c7430
_021C73B4: .word ovy332_21c761c
	thumb_func_end ovy332_21c7328

	thumb_func_start ovy332_21c73b8
ovy332_21c73b8: ; 0x021C73B8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #4
	bhi _021C7426
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C73CE: ; jump table
	.short _021C73D8 - _021C73CE - 2 ; case 0
	.short _021C73E6 - _021C73CE - 2 ; case 1
	.short _021C73FA - _021C73CE - 2 ; case 2
	.short _021C7414 - _021C73CE - 2 ; case 3
	.short _021C7422 - _021C73CE - 2 ; case 4
_021C73D8:
	ldr r1, _021C7428 ; =ovy332_21c784c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C73E6:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x34]
	mov r2, #0xa4
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C73FA:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	add r1, r3, #1
	str r1, [r2, r0]
	cmp r3, #0xb4
	bls _021C7426
	mov r1, #0
	str r1, [r2, r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7414:
	ldr r1, _021C742C ; =ovy332_21bf23c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7422:
	bl ovy332_21c1270
_021C7426:
	pop {r4, pc}
	.align 2, 0
_021C7428: .word ovy332_21c784c
_021C742C: .word ovy332_21bf23c
	thumb_func_end ovy332_21c73b8

	thumb_func_start ovy332_21c7430
ovy332_21c7430: ; 0x021C7430
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #5
	bhi _021C74D8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C744A: ; jump table
	.short _021C7456 - _021C744A - 2 ; case 0
	.short _021C746E - _021C744A - 2 ; case 1
	.short _021C747C - _021C744A - 2 ; case 2
	.short _021C748A - _021C744A - 2 ; case 3
	.short _021C74B8 - _021C744A - 2 ; case 4
	.short _021C74C6 - _021C744A - 2 ; case 5
_021C7456:
	add r0, r5, #0
	mov r1, #0x9b
	bl ovy332_21c891c
	add r0, r5, #0
	mov r1, #0x9b
	bl ovy332_21c896c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C746E:
	ldr r1, _021C74DC ; =ovy332_21bf13c
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C747C:
	ldr r1, _021C74E0 ; =ovy332_21c74e8
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C748A:
	mov r6, #0x9e
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	add r1, r0, #1
	add r0, r6, #0
	str r1, [r5, r6]
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl ovy332_21c7df4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021C74AC
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C74AC:
	mov r0, #0
	str r0, [r5, r6]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C74B8:
	ldr r1, _021C74E4 ; =ovy332_21bf1fc
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021C74C6:
	add r0, r5, #0
	bl ovy332_21c8944
	add r0, r5, #0
	bl ovy332_21c89a4
	add r0, r6, #0
	bl ovy332_21c1270
_021C74D8:
	pop {r4, r5, r6, pc}
	nop
_021C74DC: .word ovy332_21bf13c
_021C74E0: .word ovy332_21c74e8
_021C74E4: .word ovy332_21bf1fc
	thumb_func_end ovy332_21c7430

	thumb_func_start ovy332_21c74e8
ovy332_21c74e8: ; 0x021C74E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #5
	bls _021C74FA
	b _021C7614
_021C74FA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C7506: ; jump table
	.short _021C7512 - _021C7506 - 2 ; case 0
	.short _021C754E - _021C7506 - 2 ; case 1
	.short _021C756C - _021C7506 - 2 ; case 2
	.short _021C75D4 - _021C7506 - 2 ; case 3
	.short _021C75E8 - _021C7506 - 2 ; case 4
	.short _021C75FC - _021C7506 - 2 ; case 5
_021C7512:
	mov r6, #0x9a
	lsl r6, r6, #2
	add r1, r6, #0
	add r1, #0x10
	ldr r0, [r4, r6]
	ldr r1, [r4, r1]
	bl ovy332_21c7df4
	add r1, r0, #0
	ldr r0, [r4, r6]
	mov r2, #0x9b
	bl ovy332_21c7eec
	add r7, r0, #0
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl ovy332_21c79f8
	add r0, r7, #0
	bl sub_0203A24C
	sub r6, #8
	ldr r0, [r4, r6]
	bl sub_021C79B8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021C754E:
	mov r6, #0x26
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	bl ovy332_21c79d8
	ldr r0, [r4, r6]
	bl sub_021C79F4
	cmp r0, #0
	beq _021C7614
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C756C:
	ldr r0, _021C7618 ; =0x00000671
	bl sub_02006254
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x9b
	bl ovy332_21bfb30
	mov r0, #2
	bl sub_02045B7C
	mov r6, #0x9a
	lsl r6, r6, #2
	add r1, r6, #0
	add r1, #0x10
	ldr r0, [r4, r6]
	ldr r1, [r4, r1]
	bl ovy332_21c7df4
	add r1, r0, #0
	ldr r0, [r4, r6]
	add r2, sp, #0
	add r3, sp, #4
	bl ovy332_21c7ec8
	ldr r2, [sp, #4]
	ldr r0, [r4, #0x38]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	mov r2, #0xa6
	mov r3, #0x9b
	bl ovy332_21c1d9c
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	mov r2, #4
	bl ovy332_21c0758
	add r0, r6, #0
	bl sub_02048564
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C75D4:
	bl sub_020062A8
	cmp r0, #0
	bne _021C75E8
	ldr r0, [r4, #0x10]
	bl ovy332_21c0a40
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021C75E8:
	ldr r0, [r4, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C7614
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021C75FC:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy332_21c7ad8
	add r0, r4, #0
	mov r1, #2
	bl ovy332_21bfb70
	add r0, r6, #0
	bl ovy332_21c1270
_021C7614:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C7618: .word 0x00000671
	thumb_func_end ovy332_21c74e8

	thumb_func_start ovy332_21c761c
ovy332_21c761c: ; 0x021C761C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0xd
	bls _021C762C
	b _021C77BA
_021C762C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021C7638: ; jump table
	.short _021C7654 - _021C7638 - 2 ; case 0
	.short _021C7672 - _021C7638 - 2 ; case 1
	.short _021C7680 - _021C7638 - 2 ; case 2
	.short _021C7694 - _021C7638 - 2 ; case 3
	.short _021C76A6 - _021C7638 - 2 ; case 4
	.short _021C76C0 - _021C7638 - 2 ; case 5
	.short _021C76F6 - _021C7638 - 2 ; case 6
	.short _021C7710 - _021C7638 - 2 ; case 7
	.short _021C7724 - _021C7638 - 2 ; case 8
	.short _021C7736 - _021C7638 - 2 ; case 9
	.short _021C775E - _021C7638 - 2 ; case 10
	.short _021C7770 - _021C7638 - 2 ; case 11
	.short _021C7798 - _021C7638 - 2 ; case 12
	.short _021C77AA - _021C7638 - 2 ; case 13
_021C7654:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x9b
	bl ovy332_21c8110
	ldr r0, [r5, #0x3c]
	mov r1, #2
	mov r2, #3
	bl ovy332_21bf5bc
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7672:
	ldr r1, _021C77BC ; =ovy332_21bf1bc
	bl ovy332_21c1240
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7680:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0xa5
	mov r3, #2
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7694:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy332_21c85f0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C76A6:
	mov r6, #0x9a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl ovy332_21c7e3c
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_021C85D0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C76C0:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy332_21c7e84
	add r6, r0, #0
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_021C85E8
	add r7, r0, #0
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl ovy332_21c8540
	cmp r6, #0
	beq _021C77BA
	cmp r7, #0
	beq _021C77BA
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C76F6:
	ldr r0, _021C77C0 ; =0x00000558
	bl sub_02006254
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0xa7
	mov r3, #4
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7710:
	bl sub_020062A8
	cmp r0, #0
	bne _021C7724
	ldr r0, [r5, #0x10]
	bl ovy332_21c0a40
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021C7724:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C77BA
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7736:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy332_21c80a0
	cmp r0, #0
	beq _021C7758
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0xb0
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7758:
	mov r0, #0xb
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C775E:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C77BA
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7770:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy332_21c80d4
	cmp r0, #0
	beq _021C7792
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	mov r2, #0xb1
	mov r3, #1
	bl ovy332_21c073c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7792:
	mov r0, #0xd
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C7798:
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C77BA
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021C77AA:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy332_21c8638
	add r0, r6, #0
	bl ovy332_21c1270
_021C77BA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C77BC: .word ovy332_21bf1bc
_021C77C0: .word 0x00000558
	thumb_func_end ovy332_21c761c

	thumb_func_start ovy332_21c77c4
ovy332_21c77c4: ; 0x021C77C4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C77D8
	cmp r1, #1
	beq _021C77EA
	cmp r1, #2
	beq _021C77FC
	pop {r4, pc}
_021C77D8:
	ldr r0, [r2]
	ldr r1, _021C7804 ; =0x021C9284
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C77EA:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C7800
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C77FC:
	bl ovy332_21c1270
_021C7800:
	pop {r4, pc}
	nop
_021C7804: .word 0x021C9284
	thumb_func_end ovy332_21c77c4

	thumb_func_start ovy332_21c7808
ovy332_21c7808: ; 0x021C7808
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C781C
	cmp r1, #1
	beq _021C782E
	cmp r1, #2
	beq _021C7840
	pop {r4, pc}
_021C781C:
	ldr r0, [r2]
	ldr r1, _021C7848 ; =0x021C9274
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C782E:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C7844
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7840:
	bl ovy332_21c1270
_021C7844:
	pop {r4, pc}
	nop
_021C7848: .word 0x021C9274
	thumb_func_end ovy332_21c7808

	thumb_func_start ovy332_21c784c
ovy332_21c784c: ; 0x021C784C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021C7860
	cmp r1, #1
	beq _021C7872
	cmp r1, #2
	beq _021C7884
	pop {r4, pc}
_021C7860:
	ldr r0, [r2]
	ldr r1, _021C788C ; =0x021C9264
	mov r2, #0x9b
	bl ovy332_21c1378
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7872:
	ldr r0, [r2]
	bl sub_021C13A8
	cmp r0, #0
	beq _021C7888
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021C7884:
	bl ovy332_21c1270
_021C7888:
	pop {r4, pc}
	nop
_021C788C: .word 0x021C9264
	thumb_func_end ovy332_21c784c

	thumb_func_start ovy332_21c7890
ovy332_21c7890: ; 0x021C7890
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #4
	bl ovy332_21bf5bc
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0xa2
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	pop {r4, pc}
	thumb_func_end ovy332_21c7890

	thumb_func_start ovy332_21c78b8
ovy332_21c78b8: ; 0x021C78B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_021C095C
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_021C095C
	cmp r4, #0
	beq _021C78E2
	cmp r0, #0
	beq _021C78E2
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C78E2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy332_21c78b8
_021C78E8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c78ec
ovy332_21c78ec: ; 0x021C78EC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c78ec

	thumb_func_start ovy332_21c7900
ovy332_21c7900: ; 0x021C7900
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C7916
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C7916:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7900
_021C791C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy332_21c7920
ovy332_21c7920: ; 0x021C7920
	push {r4, lr}
	add r4, r0, #0
	add r2, r1, #0
	add r0, #0x40
	mov r1, #0x18
	bl ovy332_21bf694
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7920

	thumb_func_start ovy332_21c7944
ovy332_21c7944: ; 0x021C7944
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_021C095C
	cmp r0, #0
	beq _021C795A
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	pop {r3, pc}
_021C795A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7944
_021C7960:
	.byte 0x01, 0x4B, 0x40, 0x30, 0x18, 0x21, 0x18, 0x47, 0x2D, 0xF8, 0x1B, 0x02

	thumb_func_start ovy332_21c796c
ovy332_21c796c: ; 0x021C796C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _021C79B0 ; =0x000004F1
	mov r5, #0x46
	add r6, r2, #0
	str r0, [sp]
	lsl r5, r5, #2
	str r1, [sp, #4]
	ldr r3, _021C79B4 ; =0x021C947C
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r5, #0
	sub r0, #8
	str r7, [r4, r0]
	add r0, r5, #0
	strh r6, [r4]
	mov r1, #0
	sub r0, #0xe
	strh r1, [r4, r0]
	sub r5, #0xc
	ldr r0, [sp, #4]
	strh r1, [r4, r5]
	bl sub_021C02E4
	str r0, [r4, #4]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C79B0: .word 0x000004F1
_021C79B4: .word 0x021C947C
	thumb_func_end ovy332_21c796c

	thumb_func_start sub_021C79B8
sub_021C79B8: ; 0x021C79B8
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	mov r1, #0x45
	ldr r2, _021C79CC ; =ovy332_21c7afc
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	nop
_021C79CC: .word ovy332_21c7afc
	thumb_func_end sub_021C79B8

	thumb_func_start sub_021C79D0
sub_021C79D0: ; 0x021C79D0
	ldr r3, _021C79D4 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021C79D4: .word sub_0203A24C
	thumb_func_end sub_021C79D0

	thumb_func_start ovy332_21c79d8
ovy332_21c79d8: ; 0x021C79D8
	push {r3, r4, r5, lr}
	mov r5, #0x45
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _021C79F2
	blx r1
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021C79F2
	mov r0, #0
	str r0, [r4, r5]
_021C79F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c79d8

	thumb_func_start sub_021C79F4
sub_021C79F4: ; 0x021C79F4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021C79F4

	thumb_func_start ovy332_21c79f8
ovy332_21c79f8: ; 0x021C79F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	bl sub_02033E24
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0201D624
	mov r7, #0x80
	str r7, [sp]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r6, #0
	bl sub_02033F2C
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_0201D624
	ldrh r1, [r5]
	mov r2, #2
	mov r3, #0
	str r1, [sp]
	mov r1, #0
	bl sub_02034000
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_0201D624
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	bl sub_02033F90
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_0201D624
	ldrh r1, [r5]
	bl ovy332_21c8aa4
	mov r1, #0x80
	sub r0, #0x30
	add r1, #0x8a
	add r7, #0x8a
	strh r0, [r5, r1]
	ldrsh r0, [r5, r7]
	cmp r0, #0x30
	ble _021C7A74
	mov r6, #0x30
	b _021C7A7A
_021C7A74:
	cmp r0, #0
	blt _021C7A7A
	add r6, r0, #0
_021C7A7A:
	ldr r0, _021C7AD0 ; =0x0000010A
	strh r6, [r5, r0]
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add r1, r5, #0
	ldr r0, _021C7AD4 ; =0x05000280
	add r1, #0xea
	mov r2, #0x20
	blx MI_CpuCopy8
	add r6, sp, #0x10
	add r0, r6, #0
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r0, sp, #0x10
	strh r4, [r0]
	strh r4, [r0, #2]
	strb r4, [r0, #7]
	str r6, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x18]
	bl sub_0204C040
	str r0, [r5, #8]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0204C318
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C7AD0: .word 0x0000010A
_021C7AD4: .word 0x05000280
	thumb_func_end ovy332_21c79f8

	thumb_func_start ovy332_21c7ad8
ovy332_21c7ad8: ; 0x021C7AD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021C7AE6
	bl sub_0204C108
_021C7AE6:
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	ldr r0, [r4, #0x14]
	bl sub_0204B98C
	ldr r0, [r4, #0x18]
	bl sub_0204BE64
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7ad8

	thumb_func_start ovy332_21c7afc
ovy332_21c7afc: ; 0x021C7AFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #9
	bhi _021C7BA8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C7B14: ; jump table
	.short _021C7B28 - _021C7B14 - 2 ; case 0
	.short _021C7B40 - _021C7B14 - 2 ; case 1
	.short _021C7BBC - _021C7B14 - 2 ; case 2
	.short _021C7BEA - _021C7B14 - 2 ; case 3
	.short _021C7B9E - _021C7B14 - 2 ; case 4
	.short _021C7C24 - _021C7B14 - 2 ; case 5
	.short _021C7C3E - _021C7B14 - 2 ; case 6
	.short _021C7C54 - _021C7B14 - 2 ; case 7
	.short _021C7C92 - _021C7B14 - 2 ; case 8
	.short _021C7CA8 - _021C7B14 - 2 ; case 9
_021C7B28:
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	ldrh r3, [r4]
	add r1, r1, #5
	mov r2, #0xf
	bl ovy332_21c1bdc
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7B40:
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #4
	str r0, [r4, #0x24]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021C7CB8 ; =0x04000050
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r6, _021C7CBC ; =0x05000280
	ldr r0, _021C7CC0 ; =0x00007FFF
	add r1, r6, #0
	mov r2, #0x20
	mov r5, #0x20
	blx MIi_CpuClear16
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0xca
	mov r2, #0x20
	blx MI_CpuCopy8
	mov r0, #0x20
	add r0, #0xf0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ovy332_21c1c18
	mov r0, #0x20
	add r0, #0xf0
	ldr r0, [r4, r0]
	mov r1, #1
	bl ovy332_21c1c18
	add r5, #0xf0
	ldr r0, [r4, r5]
	mov r1, #2
	bl ovy332_21c1c18
	ldr r0, _021C7CC4 ; =0x00000793
	bl sub_02006254
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021C7B9E:
	ldr r1, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0x78
	bhi _021C7BAA
_021C7BA8:
	b _021C7CB2
_021C7BAA:
	ldr r0, _021C7CC8 ; =0x00000794
	bl sub_02006254
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #2
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7BBC:
	mov r0, #0x80
	add r1, sp, #8
	strh r0, [r1]
	add r0, #0x8a
	ldrsh r2, [r4, r0]
	mov r0, #0x76
	mov r5, #0
	sub r0, r0, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #8]
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C124
	mov r0, #3
	add sp, #0xc
	str r5, [r4, #0x20]
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7BEA:
	ldr r0, [r4, #0x20]
	mov r1, #0xa
	lsl r0, r0, #4
	blx sub_0208D868
	lsl r1, r0, #0x10
	asr r2, r1, #0x10
	mov r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #8
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021C7CCC ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x20]
	cmp r1, #0xa
	bls _021C7CB2
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #5
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7C24:
	ldr r1, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0x5a
	bls _021C7CB2
	ldr r0, _021C7CB8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #6
	add sp, #0xc
	str r1, [r4, #0x1c]
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7C3E:
	ldr r1, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0xa
	bls _021C7CB2
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #7
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7C54:
	ldr r1, [r4, #0x1c]
	ldr r0, _021C7CC0 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x78
	blx sub_0208D868
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0xea
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x28]
	mov r0, #0xe
	add r1, #0xaa
	mov r3, #4
	bl ovy332_21c1cd4
	ldr r1, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0x78
	bls _021C7CB2
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #8
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7C92:
	ldr r1, [r4, #0x1c]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0x3c
	bls _021C7CB2
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #9
	add sp, #0xc
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, pc}
_021C7CA8:
	ldr r0, _021C7CB8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0xc]
_021C7CB2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021C7CB8: .word 0x04000050
_021C7CBC: .word 0x05000280
_021C7CC0: .word 0x00007FFF
_021C7CC4: .word 0x00000793
_021C7CC8: .word 0x00000794
_021C7CCC: .word 0x04000052
	thumb_func_end ovy332_21c7afc

	thumb_func_start ovy332_21c7cd0
ovy332_21c7cd0: ; 0x021C7CD0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021C7CFC ; =0x000006E8
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _021C7D00 ; =0x021C947C
	add r0, r6, #0
	mov r1, #0xb0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_02011510
	str r0, [r4]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021C7CFC: .word 0x000006E8
_021C7D00: .word 0x021C947C
	thumb_func_end ovy332_21c7cd0

	thumb_func_start ovy332_21c7d04
ovy332_21c7d04: ; 0x021C7D04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02011528
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7d04

	thumb_func_start ovy332_21c7d18
ovy332_21c7d18: ; 0x021C7D18
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_02011530
	ldr r0, [r5]
	bl sub_02011588
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	bl sub_02017934
	bl sub_02011350
	mov r1, #2
	str r0, [r5, #0xc]
	bl sub_02011314
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02011314
	add r1, r0, #0
	add r6, sp, #0
	ldr r0, [r5, #8]
	add r2, r6, #0
	bl sub_02011400
	str r0, [r5, #0x10]
	cmp r0, #2
	bne _021C7D70
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	bne _021C7D70
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy332_21c81d4
_021C7D70:
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c7d18

	thumb_func_start ovy332_21c7d74
ovy332_21c7d74: ; 0x021C7D74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	mov r4, #0
	bl sub_02011314
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	bne _021C7D8E
	mov r4, #1
_021C7D8E:
	ldr r1, [r5, #0x10]
	mov r2, #1
	cmp r1, #2
	beq _021C7D98
	mov r2, #0
_021C7D98:
	cmp r1, #0
	beq _021C7DA8
	cmp r1, #3
	beq _021C7DA8
	cmp r4, #0
	beq _021C7DAC
	cmp r2, #0
	beq _021C7DAC
_021C7DA8:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021C7DAC:
	cmp r4, #0
	bne _021C7DB8
	cmp r2, #0
	beq _021C7DB8
	mov r0, #2
	pop {r3, r4, r5, pc}
_021C7DB8:
	cmp r0, #0
	beq _021C7DC0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C7DC0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy332_21c7d74

	thumb_func_start sub_021C7DC4
sub_021C7DC4: ; 0x021C7DC4
	add r2, r0, #0
	add r2, #0xa8
	ldr r2, [r2]
	mov r1, #0
	cmp r2, #0
	bls _021C7DEE
	mov r3, #0xc
_021C7DD2:
	add r2, r1, #0
	mul r2, r3
	add r2, r0, r2
	ldrh r2, [r2, #0x22]
	cmp r2, #0
	beq _021C7DE2
	mov r0, #1
	bx lr
_021C7DE2:
	add r2, r0, #0
	add r2, #0xa8
	ldr r2, [r2]
	add r1, r1, #1
	cmp r1, r2
	blo _021C7DD2
_021C7DEE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C7DC4

	thumb_func_start ovy332_21c7df4
ovy332_21c7df4: ; 0x021C7DF4
	push {r3, r4, r5, r6}
	add r4, r0, #0
	add r4, #0xa8
	ldr r4, [r4]
	mov r3, #0
	mov r2, #0
	cmp r4, #0
	bls _021C7E32
	mov r5, #0xc
_021C7E06:
	add r4, r2, #0
	mul r4, r5
	add r6, r0, r4
	ldr r4, [r6, #0x18]
	cmp r4, #1
	bne _021C7E26
	ldrh r4, [r6, #0x22]
	cmp r4, #0
	beq _021C7E26
	add r4, r3, #0
	add r3, r3, #1
	cmp r4, r1
	bne _021C7E26
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
_021C7E26:
	add r4, r0, #0
	add r4, #0xa8
	ldr r4, [r4]
	add r2, r2, #1
	cmp r2, r4
	blo _021C7E06
_021C7E32:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c7df4

	thumb_func_start ovy332_21c7e3c
ovy332_21c7e3c: ; 0x021C7E3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0
	bl sub_02005748
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #1
	add r2, r6, #0
	bl sub_02011334
	ldr r0, [r5, #0xc]
	mov r1, #0
	mov r2, #1
	bl sub_02011334
	add r2, r5, #0
	add r2, #0xac
	ldr r0, [r5, #8]
	ldr r2, [r2]
	add r1, r6, #0
	bl sub_020113C4
	add r2, r5, #0
	add r2, #0xac
	ldr r0, [r5, #0xc]
	ldr r2, [r2]
	mov r1, #2
	bl sub_02011334
	mov r0, #8
	bl sub_0203D254
	str r4, [r5, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c7e3c

	thumb_func_start ovy332_21c7e84
ovy332_21c7e84: ; 0x021C7E84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021C7E98
	cmp r0, #1
	beq _021C7EA4
	cmp r0, #2
	beq _021C7EB8
	b _021C7EC2
_021C7E98:
	ldr r0, [r4, #4]
	bl sub_0201782C
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021C7EA4:
	ldr r0, [r4, #4]
	bl sub_02017850
	cmp r0, #2
	bne _021C7EC2
	bl sub_02011544
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021C7EB8:
	mov r0, #8
	bl sub_0203D27C
	mov r0, #1
	pop {r4, pc}
_021C7EC2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c7e84

	thumb_func_start ovy332_21c7ec8
ovy332_21c7ec8: ; 0x021C7EC8
	push {r3, r4}
	mov r4, #0xc
	mul r4, r1
	add r1, r0, #0
	add r1, #0x18
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _021C7EE6
	add r0, r0, r4
	ldrh r0, [r0, #0x1c]
	str r1, [r2]
	str r0, [r3]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021C7EE6:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy332_21c7ec8

	thumb_func_start ovy332_21c7eec
ovy332_21c7eec: ; 0x021C7EEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0xc
	mul r0, r1
	add r1, r5, r0
	ldr r0, [r1, #0x18]
	str r2, [sp, #0x10]
	cmp r0, #1
	beq _021C7F02
	b _021C802A
_021C7F02:
	ldrb r0, [r1, #0x1f]
	ldrh r6, [r1, #0x1c]
	ldrb r7, [r1, #0x1e]
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	bl sub_0201736C
	bl sub_02008BD0
	mov r1, #2
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp, #0x20]
	bl sub_0201D6F8
	str r0, [sp, #0x1c]
	ldr r0, [r5, #4]
	bl sub_02017974
	bl sub_0200C9A0
	cmp r0, #8
	bls _021C7F3C
	mov r4, #8
	b _021C7F42
_021C7F3C:
	cmp r0, #0
	blt _021C7F42
	add r4, r0, #0
_021C7F42:
	ldr r0, _021C8030 ; =0x021C9294
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	mov r3, #0
	str r0, [sp]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl sub_0201C2CC
	mov r1, #0
	sub r1, r1, #1
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp]
	ldr r2, [sp, #0x14]
	add r4, r0, #0
	add r1, r6, #0
	bl sub_0201C464
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0201C864
	add r0, r4, #0
	bl sub_0201CFD8
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02020274
	mov r1, #0x1c
	str r0, [sp, #0x18]
	bl sub_020202AC
	cmp r0, #0
	beq _021C7FA8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0201DA94
_021C7FA8:
	ldr r0, [sp, #0x18]
	bl sub_020202A4
	ldr r0, [r5, #4]
	bl sub_0201736C
	bl sub_02008B94
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x8e
	bl sub_0201CD1C
	ldr r0, [r5, #4]
	bl sub_0201736C
	bl sub_02008BF0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x9a
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #0x98
	mov r2, #0x19
	bl sub_0201CD1C
	ldr r2, _021C8034 ; =0x0208FF7C
	add r0, r4, #0
	ldrb r2, [r2]
	mov r1, #0x77
	bl sub_0201CD1C
	ldr r2, _021C8038 ; =0x0208FF80
	add r0, r4, #0
	ldrb r2, [r2]
	mov r1, #0xc
	bl sub_0201CD1C
	add r0, r4, #0
	bl sub_0201D620
	bl sub_02035AD4
	add r0, r4, #0
	bl sub_0201D5F4
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	mov r5, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021C8024
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x28
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8024:
	add sp, #0x28
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C802A:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C8030: .word 0x021C9294
_021C8034: .word 0x0208FF7C
_021C8038: .word 0x0208FF80
	thumb_func_end ovy332_21c7eec

	thumb_func_start ovy332_21c803c
ovy332_21c803c: ; 0x021C803C
	push {r3, r4}
	mov r4, #0xc
	mul r4, r1
	add r1, r0, r4
	ldr r0, [r1, #0x18]
	cmp r0, #2
	bne _021C8058
	ldrh r0, [r1, #0x1c]
	strh r0, [r2]
	ldrh r0, [r1, #0x20]
	strb r0, [r3]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021C8058:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c803c

	thumb_func_start ovy332_21c8060
ovy332_21c8060: ; 0x021C8060
	push {r4, r5}
	add r4, r0, #0
	add r4, #0xa8
	ldr r4, [r4]
	mov r3, #0
	mov r2, #0
	cmp r4, #0
	bls _021C8098
	mov r5, #0xc
_021C8072:
	add r4, r2, #0
	mul r4, r5
	add r4, r0, r4
	ldr r4, [r4, #0x18]
	cmp r4, #2
	bne _021C808C
	add r4, r3, #0
	add r3, r3, #1
	cmp r4, r1
	bne _021C808C
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_021C808C:
	add r4, r0, #0
	add r4, #0xa8
	ldr r4, [r4]
	add r2, r2, #1
	cmp r2, r4
	blo _021C8072
_021C8098:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c8060

	thumb_func_start ovy332_21c80a0
ovy332_21c80a0: ; 0x021C80A0
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldr r3, [r3]
	mov r2, #0
	mov r1, #0
	cmp r3, #0
	bls _021C80CC
	mov r4, #0xc
_021C80B2:
	add r3, r1, #0
	mul r3, r4
	add r3, r0, r3
	ldr r3, [r3, #0x18]
	cmp r3, #1
	bne _021C80C0
	add r2, r2, #1
_021C80C0:
	add r3, r0, #0
	add r3, #0xa8
	ldr r3, [r3]
	add r1, r1, #1
	cmp r1, r3
	blo _021C80B2
_021C80CC:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c80a0

	thumb_func_start ovy332_21c80d4
ovy332_21c80d4: ; 0x021C80D4
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldr r3, [r3]
	mov r2, #0
	mov r1, #0
	cmp r3, #0
	bls _021C8100
	mov r4, #0xc
_021C80E6:
	add r3, r1, #0
	mul r3, r4
	add r3, r0, r3
	ldr r3, [r3, #0x18]
	cmp r3, #2
	bne _021C80F4
	add r2, r2, #1
_021C80F4:
	add r3, r0, #0
	add r3, #0xa8
	ldr r3, [r3]
	add r1, r1, #1
	cmp r1, r3
	blo _021C80E6
_021C8100:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy332_21c80d4

	thumb_func_start sub_021C8108
sub_021C8108: ; 0x021C8108
	add r0, #0xa8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C8108

	thumb_func_start ovy332_21c8110
ovy332_21c8110: ; 0x021C8110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl sub_02017364
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_0200D190
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r6, #0
	cmp r0, #0
	bls _021C818E
_021C8134:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy332_21c7eec
	add r4, r0, #0
	beq _021C8182
	ldr r0, [r5, #4]
	bl sub_0201736C
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	bl sub_02035CF8
	cmp r0, #0
	beq _021C8166
	ldr r0, [r5, #4]
	bl sub_02017974
	ldr r2, [sp, #8]
	mov r1, #7
	bl sub_0216598C
_021C8166:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0200D568
	add r0, r4, #0
	bl sub_0201D620
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02007794
	add r0, r4, #0
	bl sub_0203A24C
_021C8182:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021C8134
_021C818E:
	ldr r0, [r5, #4]
	bl sub_02017354
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021C81D0
_021C81A2:
	add r2, sp, #0xc
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #0xc
	bl ovy332_21c803c
	cmp r0, #0
	beq _021C81C4
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrb r2, [r2]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_02008268
_021C81C4:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blo _021C81A2
_021C81D0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy332_21c8110

	thumb_func_start ovy332_21c81d4
ovy332_21c81d4: ; 0x021C81D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r0, #0x18
	mov r1, #0
	mov r2, #0x90
	mov r5, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0xa8
	str r5, [r0]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0xa8
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xac
	str r0, [sp, #0x14]
_021C8200:
	ldr r0, [sp]
	lsl r6, r5, #2
	ldr r0, [r0, r6]
	bl sub_020115FC
	cmp r0, #0
	beq _021C82A6
	ldr r0, [sp]
	ldr r0, [r0, r6]
	bl sub_0201167C
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	tst r0, r7
	bne _021C82A6
	ldr r0, [sp]
	add r1, sp, #0x20
	add r2, sp, #0x20
	ldr r0, [r0, r6]
	add r1, #2
	add r2, #1
	add r3, sp, #0x20
	bl sub_02011624
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	mov r0, #1
	str r0, [r1, #0x18]
	add r1, r4, #0
	add r1, #0xa8
	add r0, sp, #0x20
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	ldrh r0, [r0, #2]
	add r1, r4, r1
	strh r0, [r1, #0x1c]
	add r1, r4, #0
	add r1, #0xa8
	add r0, sp, #0x20
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	ldrb r0, [r0, #1]
	add r1, r4, r1
	strb r0, [r1, #0x1e]
	add r1, r4, #0
	add r1, #0xa8
	add r0, sp, #0x20
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	ldrb r0, [r0]
	add r1, r4, r1
	strb r0, [r1, #0x1f]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	bl sub_021C84DC
	add r1, r4, #0
	add r1, #0xa8
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	strh r0, [r1, #0x22]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [r0]
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	orr r1, r7
	str r1, [r0]
_021C82A6:
	add r5, r5, #1
	cmp r5, #7
	ble _021C8200
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	cmp r1, #0
	beq _021C8334
	mov r0, #0
	str r0, [sp, #8]
	sub r7, r1, #1
	beq _021C8334
_021C82BE:
	ldr r0, [sp, #8]
	cmp r7, r0
	ble _021C8320
_021C82C4:
	lsl r1, r7, #0x10
	sub r0, r7, #1
	asr r2, r1, #0x10
	mov r1, #0xc
	lsl r0, r0, #0x10
	mul r1, r2
	add r5, r4, r1
	asr r0, r0, #0x10
	mov r1, #0xc
	mul r1, r0
	add r6, r4, r1
	ldrh r1, [r6, #0x22]
	ldrh r0, [r5, #0x22]
	cmp r1, r0
	bhs _021C8318
	add r0, r6, #0
	str r0, [sp, #0x1c]
	add r0, #0x18
	add r3, sp, #0x24
	add r2, r0, #0
	str r0, [sp, #0x1c]
	ldmia r2!, {r0, r1}
	mov ip, r3
	str r2, [sp, #0x1c]
	mov r2, ip
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x1c]
	add r1, r2, #0
	add r2, r5, #0
	ldr r0, [r0]
	add r2, #0x18
	str r0, [r1]
	ldmia r2!, {r0, r1}
	add r6, #0x18
	stmia r6!, {r0, r1}
	ldr r0, [r2]
	add r5, #0x18
	str r0, [r6]
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r3]
	str r0, [r5]
_021C8318:
	ldr r0, [sp, #8]
	sub r7, r7, #1
	cmp r7, r0
	bgt _021C82C4
_021C8320:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	sub r7, r0, #1
	ldr r0, [sp, #8]
	cmp r0, r7
	blo _021C82BE
_021C8334:
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0xa8
	mov r5, #8
	str r0, [sp, #0x18]
_021C833E:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #6
	bhs _021C83CC
	ldr r0, [sp]
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsr r1, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl ovy332_21c8460
	cmp r0, #0
	beq _021C83C6
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	mov r0, #1
	str r0, [r1, #0x18]
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r4, r0
	strh r7, [r0, #0x1c]
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r4, r0
	strb r6, [r0, #0x1e]
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	ldr r0, [sp, #0xc]
	strb r0, [r1, #0x1f]
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	mov r0, #0
	strh r0, [r1, #0x22]
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
_021C83C6:
	add r5, r5, #1
	cmp r5, #0xd
	ble _021C833E
_021C83CC:
	add r0, r4, #0
	mov r5, #0xe
	mov r7, #0
	add r0, #0xa8
_021C83D4:
	add r1, r4, #0
	add r1, #0xa8
	ldr r3, [r1]
	cmp r3, #0xc
	bhs _021C8458
	ldr r1, [sp]
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	lsr r2, r1, #0x10
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r1, r1, #0x10
	cmp r2, #0
	beq _021C8452
	ldr r6, _021C845C ; =0x0000027E
	cmp r2, r6
	bhs _021C8452
	cmp r1, #0
	beq _021C8452
	mov r6, #0xc
	mul r6, r3
	add r6, r4, r6
	mov r3, #2
	str r3, [r6, #0x18]
	add r3, r4, #0
	add r3, #0xa8
	ldr r6, [r3]
	mov r3, #0xc
	mul r3, r6
	add r3, r4, r3
	strh r2, [r3, #0x1c]
	add r2, r4, #0
	add r2, #0xa8
	ldr r3, [r2]
	mov r2, #0xc
	mul r2, r3
	add r2, r4, r2
	strh r1, [r2, #0x20]
	add r1, r4, #0
	add r1, #0xa8
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	strb r7, [r1, #0x1e]
	add r1, r4, #0
	add r1, #0xa8
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	strb r7, [r1, #0x1f]
	add r1, r4, #0
	add r1, #0xa8
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	strh r7, [r1, #0x22]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
_021C8452:
	add r5, r5, #1
	cmp r5, #0x13
	ble _021C83D4
_021C8458:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C845C: .word 0x0000027E
	thumb_func_end ovy332_21c81d4

	thumb_func_start ovy332_21c8460
ovy332_21c8460: ; 0x021C8460
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _021C84D8 ; =0x00000289
	add r5, r2, #0
	cmp r0, r1
	bhi _021C8470
	cmp r0, #0
	bne _021C8474
_021C8470:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8474:
	mov r1, #0
	add r2, r3, #0
	bl sub_02020274
	add r7, r0, #0
	mov r1, #0x20
	bl sub_020202AC
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x14
	bl sub_020202AC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020202A4
	ldr r0, [sp]
	cmp r6, r0
	bls _021C84A0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C84A0:
	cmp r4, #0
	beq _021C84AE
	cmp r4, #0xfe
	beq _021C84BE
	cmp r4, #0xff
	beq _021C84B6
	b _021C84C6
_021C84AE:
	cmp r5, #0
	beq _021C84D2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C84B6:
	cmp r5, #2
	beq _021C84D2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C84BE:
	cmp r5, #1
	beq _021C84D2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C84C6:
	cmp r5, #0
	beq _021C84D2
	cmp r5, #1
	beq _021C84D2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C84D2:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C84D8: .word 0x00000289
	thumb_func_end ovy332_21c8460

	thumb_func_start sub_021C84DC
sub_021C84DC: ; 0x021C84DC
	ldr r2, _021C84F8 ; =0x021C9258
	mov r3, #0
_021C84E0:
	lsl r1, r3, #2
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _021C84EC
	mov r0, #1
	bx lr
_021C84EC:
	add r3, r3, #1
	cmp r3, #3
	blo _021C84E0
	mov r0, #0
	bx lr
	nop
_021C84F8: .word 0x021C9258
	thumb_func_end sub_021C84DC

	thumb_func_start ovy332_21c84fc
ovy332_21c84fc: ; 0x021C84FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021C8530 ; =0x00000A32
	add r6, r1, #0
	add r5, r2, #0
	mov r1, #0x67
	str r0, [sp]
	ldr r3, _021C8534 ; =0x021C947C
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	strh r5, [r4]
	add r0, r7, #0
	bl sub_021C02E4
	str r0, [r4, #4]
	mov r0, #0x67
	lsl r0, r0, #2
	sub r0, r0, #4
	str r6, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C8530: .word 0x00000A32
_021C8534: .word 0x021C947C
	thumb_func_end ovy332_21c84fc

	thumb_func_start sub_021C8538
sub_021C8538: ; 0x021C8538
	ldr r3, _021C853C ; =sub_0203A24C
	bx r3
	.align 2, 0
_021C853C: .word sub_0203A24C
	thumb_func_end sub_021C8538

	thumb_func_start ovy332_21c8540
ovy332_21c8540: ; 0x021C8540
	push {r3, r4, r5, lr}
	mov r5, #0x66
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_021C8108
	add r1, r5, #0
	sub r1, #8
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021C85CA
	add r1, r5, #0
	sub r1, #0x10
	ldr r2, [r4, r1]
	cmp r2, r0
	blo _021C856A
	mov r0, #1
	sub r5, #0xc
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021C856A:
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021C857C
	cmp r0, #1
	beq _021C8592
	cmp r0, #2
	beq _021C85C4
	pop {r3, r4, r5, pc}
_021C857C:
	add r1, r4, #0
	add r1, #8
	lsl r0, r2, #5
	add r0, r1, r0
	bl ovy332_21c8838
	sub r0, r5, #4
	ldr r0, [r4, r0]
	add r1, r0, #1
	sub r0, r5, #4
	str r1, [r4, r0]
_021C8592:
	mov r5, #0x62
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	add r1, r4, #0
	add r1, #8
	lsl r0, r0, #5
	add r0, r1, r0
	bl ovy332_21c887c
	cmp r0, #0
	beq _021C85CA
	ldr r0, _021C85CC ; =0x00000625
	bl sub_02006254
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc
	str r1, [r4, r0]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021C85C4:
	mov r1, #0
	sub r0, r5, #4
	str r1, [r4, r0]
_021C85CA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C85CC: .word 0x00000625
	thumb_func_end ovy332_21c8540

	thumb_func_start sub_021C85D0
sub_021C85D0: ; 0x021C85D0
	mov r2, #0x19
	mov r1, #1
	lsl r2, r2, #4
	str r1, [r0, r2]
	mov r3, #0
	sub r1, r2, #4
	str r3, [r0, r1]
	add r1, r2, #4
	str r3, [r0, r1]
	sub r2, #8
	str r3, [r0, r2]
	bx lr
	thumb_func_end sub_021C85D0

	thumb_func_start sub_021C85E8
sub_021C85E8: ; 0x021C85E8
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021C85E8

	thumb_func_start ovy332_21c85f0
ovy332_21c85f0: ; 0x021C85F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021C8108
	add r7, r0, #0
	ldr r4, _021C8634 ; =0x00000000
	beq _021C8626
	add r6, r5, #0
	add r6, #8
_021C8608:
	ldrh r0, [r5]
	mov r2, #0x66
	lsl r3, r4, #0x10
	str r0, [sp]
	lsl r2, r2, #2
	lsl r0, r4, #5
	ldr r1, [r5, #4]
	ldr r2, [r5, r2]
	add r0, r6, r0
	lsr r3, r3, #0x10
	bl ovy332_21c8664
	add r4, r4, #1
	cmp r4, r7
	blo _021C8608
_021C8626:
	mov r0, #0x19
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C8634: .word 0x00000000
	thumb_func_end ovy332_21c85f0

	thumb_func_start ovy332_21c8638
ovy332_21c8638: ; 0x021C8638
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021C8108
	add r6, r0, #0
	ldr r4, _021C8660 ; =0x00000000
	beq _021C865C
	add r5, #8
_021C864E:
	lsl r0, r4, #5
	add r0, r5, r0
	bl ovy332_21c8810
	add r4, r4, #1
	cmp r4, r6
	blo _021C864E
_021C865C:
	pop {r4, r5, r6, pc}
	nop
_021C8660: .word 0x00000000
	thumb_func_end ovy332_21c8638

	thumb_func_start ovy332_21c8664
ovy332_21c8664: ; 0x021C8664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r4, [sp, #0x58]
	str r1, [sp, #0xc]
	mov r1, #0
	str r2, [sp, #0x10]
	mov r2, #0x20
	add r5, r0, #0
	add r7, r3, #0
	mov r6, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x18]
	blx MI_CpuFill8
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, sp, #0x40
	add r3, sp, #0x3c
	bl ovy332_21c7ec8
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _021C8696
	cmp r0, #2
	beq _021C870C
_021C8696:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	bl ovy332_21c7eec
	str r0, [sp, #0x20]
	mov r0, #7
	add r1, r4, #0
	bl sub_0204AA30
	str r0, [sp, #0x24]
	bl sub_02021114
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	str r4, [sp]
	mov r2, #0
	mov r3, #0x80
	bl sub_0204BC48
	str r0, [r5]
	bl sub_0202111C
	str r0, [sp, #0x28]
	bl sub_02021190
	add r2, r0, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	ldr r0, [sp, #0x20]
	bl sub_0201D620
	bl sub_02020F40
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	str r4, [sp]
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #4]
	ldr r0, [sp, #0x20]
	bl sub_0201D620
	bl sub_020210C0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	bl sub_0204AB0C
	ldr r0, [sp, #0x20]
	bl sub_0203A24C
	b _021C8786
_021C870C:
	mov r0, #0x19
	add r1, r4, #0
	bl sub_0204AA30
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	bl ovy332_21c80a0
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	sub r1, r7, r1
	bl ovy332_21c8060
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	ldr r3, [sp, #0x30]
	add r1, r0, #0
	add r3, r3, #7
	lsl r3, r3, #0x15
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #8]
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_0204BBB8
	str r0, [r5]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	ldr r0, [sp, #0x3c]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	str r4, [sp]
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0204B81C
	str r0, [r5, #4]
	ldr r0, [sp, #0x2c]
	bl sub_0204AB0C
	mov r0, #8
	mov r6, #4
	str r0, [sp, #0x1c]
_021C8786:
	mov r1, #0
	str r1, [sp, #0x14]
	add r0, sp, #0x34
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, r7, #0
	mov r1, #6
	blx sub_0208D65C
	lsl r0, r1, #5
	add r0, #0x30
	add r0, r6, r0
	strh r0, [r5, #0x10]
	add r0, r7, #0
	mov r1, #6
	blx sub_0208D65C
	cmp r0, #0
	beq _021C87B4
	mov r1, #0x10
	str r1, [sp, #0x14]
_021C87B4:
	mov r1, #0x18
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r1, #0x38
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r5, #0x12]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r1, sp, #0x34
	strh r0, [r1]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	sub r0, #0x10
	strh r0, [r1, #2]
	strb r2, [r1, #7]
	add r0, sp, #0x34
	str r0, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl sub_0204C040
	ldr r1, [sp, #0x18]
	str r0, [r5, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0204C378
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0204C318
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy332_21c8664

	thumb_func_start ovy332_21c8810
ovy332_21c8810: ; 0x021C8810
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0204C108
	ldr r0, [r4]
	bl sub_0204BCD0
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4, #8]
	bl sub_0204BE64
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy332_21c8810

	thumb_func_start ovy332_21c8838
ovy332_21c8838: ; 0x021C8838
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021C8874 ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, #0xc]
	mov r5, #1
	mov r1, #1
	bl sub_0204C124
	str r5, [r4, #0x1c]
	bl sub_0207BB0C
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _021C8878 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	blx sub_0208D5C4
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	pop {r3, r4, r5, pc}
	nop
_021C8874: .word 0x04000050
_021C8878: .word 0x000082EA
	thumb_func_end ovy332_21c8838

	thumb_func_start ovy332_21c887c
ovy332_21c887c: ; 0x021C887C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021C890A
	bl sub_0207BB0C
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _021C8910 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	mov r6, #0
	blx sub_0208D5C4
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x18]
	sub r0, r0, r2
	sbc r1, r3
	mov r3, #0
	mov r2, #0xa0
	sub r2, r2, r0
	sbc r3, r1
	bhs _021C88CA
	add r1, r5, #0
	ldr r0, [r5, #0xc]
	add r1, #0x10
	add r2, r6, #0
	bl sub_0204C140
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_0204C318
	ldr r0, _021C8914 ; =0x04000050
	strh r6, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C88CA:
	mov r7, #0x10
	ldrsh r3, [r5, r7]
	add r2, sp, #0
	lsl r1, r1, #4
	strh r3, [r2]
	lsr r2, r0, #0x1c
	orr r1, r2
	lsl r0, r0, #4
	mov r2, #0xa0
	add r3, r6, #0
	blx sub_0208D5C4
	add r4, r0, #0
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r2, r6, #0
	sub r0, #0x10
	add r1, r0, r4
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl sub_0204C140
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	sub r0, r7, r4
	lsl r0, r0, #0x10
	asr r0, r0, #8
	orr r1, r0
	ldr r0, _021C8918 ; =0x04000052
	strh r1, [r0]
_021C890A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C8910: .word 0x000082EA
_021C8914: .word 0x04000050
_021C8918: .word 0x04000052
	thumb_func_end ovy332_21c887c

	thumb_func_start ovy332_21c891c
ovy332_21c891c: ; 0x021C891C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	mov r1, #0
	bl ovy332_21c02f0
	add r0, r4, #0
	bl ovy332_21c1b90
	mov r6, #0x99
	lsl r6, r6, #2
	str r0, [r5, r6]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl ovy332_21c796c
	sub r1, r6, #4
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c891c

	thumb_func_start ovy332_21c8944
ovy332_21c8944: ; 0x021C8944
	push {r4, r5, r6, lr}
	mov r4, #0x26
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_021C79D0
	mov r6, #0
	str r6, [r5, r4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl ovy332_21c1bc8
	add r0, r4, #4
	str r6, [r5, r0]
	ldr r0, [r5, #8]
	mov r1, #1
	bl ovy332_21c02f0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy332_21c8944

	thumb_func_start ovy332_21c896c
ovy332_21c896c: ; 0x021C896C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #2
	bl sub_02045738
	add r0, r4, #0
	bl ovy332_21bfb98
	add r0, r4, #0
	bl sub_021BFB24
	mov r0, #0x9b
	str r0, [sp]
	mov r0, #2
	mov r1, #1
	mov r2, #0xf
	mov r3, #0
	bl sub_02024D00
	ldr r0, [r4, #0x3c]
	mov r1, #7
	mov r2, #1
	bl sub_021BF5B0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy332_21c896c

	thumb_func_start ovy332_21c89a4
ovy332_21c89a4: ; 0x021C89A4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x9b
	str r0, [sp, #8]
	mov r0, #0x9b
	add r0, #0x7a
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_0204AD88
	ldr r0, [r4, #0x3c]
	mov r1, #2
	mov r2, #4
	bl ovy332_21bf5bc
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_021BFB18
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x9b
	bl ovy332_21bfbb4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x34]
	mov r2, #0xa2
	mov r3, #0
	bl ovy332_21c073c
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x34]
	mov r2, #0
	mov r3, #0
	bl ovy332_21c073c
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	ldr r0, [r4, #0x3c]
	mov r1, #8
	mov r2, #1
	bl sub_021BF5B0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy332_21c89a4

	thumb_func_start ovy332_21c8a10
ovy332_21c8a10: ; 0x021C8A10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021C8A1A
	add r4, sp, #0
_021C8A1A:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017934
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017394
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02007468
	cmp r0, #0
	beq _021C8A4C
	ldr r1, _021C8AA0 ; =0x00000961
	add r0, r7, #0
	bl sub_020191AC
	cmp r0, #0
	bne _021C8A54
	mov r0, #0xac
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8A4C:
	mov r0, #0xab
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8A54:
	mov r6, #0x9a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl ovy332_21c7d74
	cmp r0, #3
	bne _021C8A66
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C8A66:
	ldr r0, [r5, r6]
	bl ovy332_21c7d74
	cmp r0, #0
	bne _021C8A78
	mov r0, #0xad
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8A78:
	cmp r0, #1
	bne _021C8A84
	mov r0, #0xae
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8A84:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02017364
	bl sub_02007A38
	cmp r0, #6
	bhs _021C8A9C
	mov r0, #0xaf
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C8A9C:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C8AA0: .word 0x00000961
	thumb_func_end ovy332_21c8a10

	thumb_func_start ovy332_21c8aa4
ovy332_21c8aa4: ; 0x021C8AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r2, r0, #0
	ldr r0, _021C8B30 ; =0x00007FFF
	mov r4, #0x30
	and r1, r0
	add r5, r1, #0
	add r0, r0, #1
	orr r5, r0
	lsl r3, r5, #0x10
	add r1, r2, #0
	add r0, sp, #0x10
	mov r2, #0
	lsr r3, r3, #0x10
	mov r6, #0
	bl sub_02033D50
	str r0, [sp, #0xc]
	lsl r1, r5, #0x10
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x10
	bl sub_0203391C
	mov r0, #0xb
	mov ip, r0
	ldr r0, [sp, #0x10]
	mov r3, #1
	str r0, [sp, #8]
_021C8ADC:
	mov r1, ip
	mov r0, #0xc
	mul r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r7, #0
	ldr r0, [r0, #0x14]
	str r0, [sp]
	mov r0, ip
	lsl r2, r0, #3
_021C8AF0:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsl r1, r0, #5
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #7
_021C8AFC:
	lsl r5, r0, #2
	ldr r5, [r1, r5]
	cmp r5, #0
	beq _021C8B0E
	add r5, r0, r2
	cmp r4, r5
	bhs _021C8B0C
	add r4, r5, #0
_021C8B0C:
	add r6, r3, #0
_021C8B0E:
	sub r0, r0, #1
	bpl _021C8AFC
	add r7, r7, #1
	cmp r7, #0xc
	blt _021C8AF0
	cmp r6, #0
	bne _021C8B24
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bpl _021C8ADC
_021C8B24:
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C8B30: .word 0x00007FFF
	thumb_func_end ovy332_21c8aa4
_021C8B34:
	.byte 0x81, 0x2B, 0x1C, 0x02, 0xA9, 0xFC, 0x1B, 0x02, 0xC9, 0x04, 0x00, 0x00
	.byte 0x25, 0x06, 0x00, 0x00, 0x61, 0xFF, 0x1B, 0x02, 0x55, 0x00, 0x1C, 0x02, 0x9D, 0x00, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBD, 0x00, 0x1C, 0x02, 0xE9, 0x00, 0x1C, 0x02, 0x19, 0x01, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE1, 0xEE, 0x1B, 0x02, 0x11, 0xF0, 0x1B, 0x02, 0xA5, 0xEF, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x15, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x1A, 0x1C, 0x02, 0xBD, 0x1A, 0x1C, 0x02, 0xC1, 0x1A, 0x1C, 0x02, 0x00, 0xFF, 0x02, 0x04
	.byte 0x1C, 0x05, 0x01, 0x01, 0x1A, 0x02, 0x00, 0x14, 0x14, 0x0A, 0x08, 0x05, 0x04, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x8D, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x13, 0x2F, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x2A, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x96, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x72, 0x00, 0x28, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x02, 0x01, 0x01, 0x01, 0x02, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0xD0, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x72, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00
	.byte 0xE0, 0xFF, 0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x20, 0x01, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00
	.byte 0x7A, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0x08, 0x00, 0x0A, 0x00
	.byte 0x0B, 0x00, 0x65, 0x00, 0x66, 0x00, 0x08, 0x00, 0x0A, 0x00, 0x0C, 0x00, 0x65, 0x00, 0x66, 0x00
	.byte 0x08, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x65, 0x00, 0x66, 0x00, 0x08, 0x00, 0x0A, 0x00, 0x0C, 0x00
	.byte 0x65, 0x00, 0x66, 0x00, 0x6B, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x6E, 0x00, 0x59, 0x00
	.byte 0x5A, 0x00, 0x5B, 0x00, 0x67, 0x00, 0x68, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x5C, 0x00, 0x67, 0x00
	.byte 0x68, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x11, 0x00, 0x69, 0x00, 0x6A, 0x00, 0x0E, 0x00, 0x0F, 0x00
	.byte 0x10, 0x00, 0x69, 0x00, 0x6A, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x11, 0x00, 0x69, 0x00, 0x6A, 0x00
	.byte 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x69, 0x00, 0x6A, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x62, 0x00
	.byte 0x00, 0x00, 0x01, 0x01, 0x89, 0x3E, 0x1C, 0x02, 0x61, 0x3F, 0x1C, 0x02, 0xA1, 0x3F, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC1, 0x3F, 0x1C, 0x02, 0x65, 0x40, 0x1C, 0x02, 0x81, 0x40, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF1, 0x40, 0x1C, 0x02, 0xCD, 0x41, 0x1C, 0x02, 0x01, 0x42, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x25, 0x42, 0x1C, 0x02, 0x71, 0x42, 0x1C, 0x02, 0xA1, 0x42, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xC1, 0x42, 0x1C, 0x02, 0x0D, 0x43, 0x1C, 0x02, 0x3D, 0x43, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x5D, 0x43, 0x1C, 0x02, 0x79, 0x43, 0x1C, 0x02, 0x7D, 0x43, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x8D, 0x43, 0x1C, 0x02, 0x09, 0x44, 0x1C, 0x02, 0x29, 0x44, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x65, 0x44, 0x1C, 0x02, 0xE1, 0x44, 0x1C, 0x02, 0x15, 0x45, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x21, 0x45, 0x1C, 0x02, 0x6D, 0x45, 0x1C, 0x02, 0x9D, 0x45, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x4D, 0x6B, 0x1C, 0x02, 0x89, 0x6C, 0x1C, 0x02, 0xDD, 0x6C, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x21, 0x6D, 0x1C, 0x02, 0x39, 0x6D, 0x1C, 0x02, 0x55, 0x6D, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x69, 0x1C, 0x02, 0x45, 0x6A, 0x1C, 0x02, 0x6D, 0x6A, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB5, 0x67, 0x1C, 0x02, 0x9D, 0x68, 0x1C, 0x02, 0xD9, 0x68, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0x6A, 0x1C, 0x02, 0x21, 0x6B, 0x1C, 0x02, 0x49, 0x6B, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00
	.byte 0x47, 0x00, 0x48, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x50, 0x00
	.byte 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00, 0x58, 0x00
	.byte 0x59, 0x00, 0x5A, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00
	.byte 0x38, 0x00, 0x39, 0x00, 0xE4, 0x03, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0xC4, 0x09, 0x00, 0x00, 0x38, 0x05, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x3C, 0x13, 0x00, 0x00, 0xC8, 0x07, 0x00, 0x00
	.byte 0x58, 0x0D, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x5C, 0x06, 0x00, 0x00, 0x98, 0x0A, 0x00, 0x00
	.byte 0xB0, 0x01, 0x00, 0x00, 0xF0, 0x03, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0xE4, 0x01, 0x00, 0x00
	.byte 0xAC, 0x00, 0x00, 0x00, 0x64, 0x04, 0x00, 0x00, 0x04, 0x14, 0x00, 0x00, 0xA8, 0x02, 0x00, 0x00
	.byte 0xE0, 0x02, 0x00, 0x00, 0x50, 0x03, 0x00, 0x00, 0xF0, 0x03, 0x00, 0x00, 0xFC, 0x00, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x60, 0x03, 0x00, 0x00, 0xD0, 0x01, 0x00, 0x00
	.byte 0x6C, 0x01, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0xB4, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0xD8, 0x04, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0xB0, 0x01, 0x00, 0x00
	.byte 0x94, 0x0B, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x54, 0x08, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x88, 0x02, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x70, 0x01, 0x00, 0x00
	.byte 0x44, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x30, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8E, 0x40, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xBC, 0x40, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x61, 0x09, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x7B, 0x09, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xA9, 0x02, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x02, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xAB, 0x02, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAC, 0x02, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAD, 0x02, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x02, 0x00, 0x00, 0x81, 0x02, 0x00, 0x00
	.byte 0x85, 0x02, 0x00, 0x00, 0x21, 0x79, 0x1C, 0x02, 0x45, 0x79, 0x1C, 0x02, 0x61, 0x79, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xED, 0x78, 0x1C, 0x02, 0x01, 0x79, 0x1C, 0x02, 0x1D, 0x79, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x91, 0x78, 0x1C, 0x02, 0xB9, 0x78, 0x1C, 0x02, 0xE9, 0x78, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6B, 0x65, 0x79, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x4D, 0x41, 0x4E, 0x00, 0x6B, 0x65, 0x79, 0x5F, 0x73, 0x79, 0x73, 0x74
	.byte 0x65, 0x6D, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x6B, 0x65, 0x79, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x70, 0x5F
	.byte 0x6B, 0x65, 0x79, 0x63, 0x75, 0x72, 0x73, 0x6F, 0x72, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB5, 0x29, 0x1C, 0x02
	.byte 0xBD, 0x29, 0x1C, 0x02, 0xC1, 0x29, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x10, 0x00
	.byte 0xF0, 0x00, 0x00, 0x00, 0x02, 0x64, 0x10, 0x01, 0x00, 0x04, 0x01, 0x37, 0xFE, 0xFF, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6B, 0x65, 0x79, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x5F, 0x6E
	.byte 0x65, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x00, 0x12, 0x00, 0x02, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x07, 0x00
	.byte 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0A, 0x00, 0x12, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x10, 0x00, 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x12, 0x00, 0x02, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00, 0x12, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x07, 0x00, 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0A, 0x00, 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00
	.byte 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x10, 0x00, 0x12, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x13, 0x00, 0x12, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x4B, 0x45, 0x4D, 0x00, 0x4B, 0x4C, 0x4C, 0x00, 0x44, 0x4E, 0x4D, 0x00, 0x64, 0x61, 0x74, 0x61
	.byte 0x5F, 0x63, 0x6F, 0x6E, 0x76, 0x65, 0x72, 0x74, 0x5F, 0x66, 0x6C, 0x6F, 0x77, 0x2E, 0x63, 0x00
	.byte 0x44, 0x49, 0x31, 0x00, 0x44, 0x49, 0x32, 0x00, 0x77, 0x62, 0x5F, 0x73, 0x61, 0x76, 0x65, 0x5F
	.byte 0x63, 0x6F, 0x6E, 0x76, 0x65, 0x72, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x63, 0x79, 0x67, 0x6E
	.byte 0x75, 0x73, 0x5F, 0x66, 0x6C, 0x6F, 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021C8B34
