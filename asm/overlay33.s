    .include "macros/function.inc"
	.include "overlay33.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy33_2176b00
ovy33_2176b00: ; 0x02176B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7]
	ldr r1, _02176B9C ; =0x0217C354
	lsr r0, r0, #0x1d
	lsl r0, r0, #2
	add r4, r1, r0
	str r2, [sp]
	ldr r0, [r5, #4]
	str r3, [sp, #4]
	bl sub_021804B8
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	bl sub_021804D8
	ldr r6, _02176BA0 ; =0x0217C374
	str r0, [sp, #8]
	add r3, sp, #0x10
	mov r2, #4
_02176B2C:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02176B2C
	ldr r0, [r6]
	add r6, sp, #0x10
	str r0, [r3]
	ldr r3, [r7]
	ldr r0, [sp]
	lsl r1, r3, #0x15
	lsl r2, r3, #9
	lsl r3, r3, #3
	lsr r1, r1, #0x15
	lsr r2, r2, #0x1e
	lsr r3, r3, #0x1a
	strh r0, [r6]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_02030438
	strh r0, [r6, #2]
	ldrh r0, [r4]
	ldr r1, [r5, #8]
	strh r0, [r6, #4]
	ldrb r0, [r4, #2]
	strh r0, [r6, #0x14]
	ldrb r0, [r4, #3]
	strh r0, [r6, #0x16]
	ldr r0, [sp]
	add r0, r1, r0
	strh r0, [r6, #0xe]
	ldr r0, [r7]
	add r1, sp, #0x2c
	strh r0, [r6, #0x10]
	lsr r0, r0, #0x10
	strh r0, [r6, #0x12]
	ldr r0, [sp, #4]
	strh r0, [r1]
	add r0, sp, #0x48
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r0, [sp, #0x4c]
	str r0, [r1, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r1, sp, #0x10
	bl ovy12_2166874
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02176B9C: .word 0x0217C354
_02176BA0: .word 0x0217C374
	thumb_func_end ovy33_2176b00

	thumb_func_start ovy33_2176ba4
ovy33_2176ba4: ; 0x02176BA4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_021670BC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_021670BC
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy33_2176ba4
_02176BC4:
	.byte 0x01, 0x4B, 0x00, 0x21, 0x18, 0x47, 0xC0, 0x46, 0xBD, 0x70, 0x16, 0x02

	thumb_func_start ovy33_2176bd0
ovy33_2176bd0: ; 0x02176BD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r0, #0xdf
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B4E4
	ldr r1, [r5]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	ldrb r6, [r0, r1]
	bl GFL_HeapFree
	add r0, r7, #0
	bl sub_0201736C
	bl sub_02008BD0
	mov r1, #0
	ldr r3, [r5]
	str r1, [sp]
	str r1, [sp, #4]
	lsl r1, r3, #0x15
	lsl r2, r3, #3
	lsr r1, r1, #0x15
	lsr r2, r2, #0x1a
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #9
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x1e
	str r0, [sp, #0x10]
	bl sub_0201D6F8
	add r7, r0, #0
	ldr r0, [r5]
	mov r2, #0
	sub r2, r2, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	str r2, [sp, #0x14]
	add r3, r2, #0
	str r4, [sp]
	bl sub_0201C2CC
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp]
	ldr r1, [r5]
	add r2, r6, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r4, r0, #0
	bl sub_0201C464
	ldr r2, [r5]
	add r0, r4, #0
	lsl r1, r2, #0x15
	lsl r2, r2, #3
	lsr r1, r1, #0x15
	lsr r2, r2, #0x1a
	bl sub_0201DA94
	ldr r1, [r5]
	add r0, r4, #0
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0201C864
	ldr r0, [r5]
	lsl r0, r0, #0xb
	lsr r1, r0, #0x16
	beq _02176CA2
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0201D0BC
	ldr r1, _02176CA8 ; =0x0000FFFF
	cmp r0, r1
	bne _02176CA2
	ldr r1, [r5]
	add r0, r4, #0
	lsl r1, r1, #0xb
	lsr r1, r1, #0x16
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0201D124
_02176CA2:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02176CA8: .word 0x0000FFFF
	thumb_func_end ovy33_2176bd0

	thumb_func_start ovy33_2176cac
ovy33_2176cac: ; 0x02176CAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02160974
	cmp r0, #0
	beq _02176CC4
	ldr r0, _02176D7C ; =0x0217C3C0
	b _02176CD4
_02176CC4:
	ldr r0, [sp, #0x38]
	bl sub_0216099C
	cmp r0, #0
	beq _02176CD2
	ldr r0, _02176D80 ; =0x0217C340
	b _02176CD4
_02176CD2:
	ldr r0, _02176D84 ; =0x0217C398
_02176CD4:
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021804C0
	bl sub_020303D8
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl sub_021804F0
	bl sub_0219A6A0
	add r4, r0, #0
	bl sub_021672A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_021672D8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r4, #0
_02176D0A:
	lsl r7, r4, #2
	ldr r0, [r6, r7]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	beq _02176D6C
	mov r0, #2
	bl sub_02005784
	sub r5, r0, #1
	mov r0, #2
	bl sub_02005784
	sub r1, r0, #1
	ldr r2, [sp, #0x10]
	lsl r3, r4, #1
	ldr r0, [sp, #0x10]
	ldrb r2, [r2, r3]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	add r3, r5, r2
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	cmp r2, r3
	bne _02176D52
	ldr r2, [sp, #8]
	cmp r2, r0
	bne _02176D52
	cmp r5, #0
	beq _02176D48
	sub r3, r3, r5
	b _02176D52
_02176D48:
	cmp r1, #0
	beq _02176D50
	sub r0, r0, r1
	b _02176D52
_02176D50:
	add r3, r3, #1
_02176D52:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	lsl r2, r4, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r1, r6, r7
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy33_2176b00
_02176D6C:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02176D0A
	ldr r0, [sp, #0x14]
	bl sub_02030420
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02176D7C: .word 0x0217C3C0
_02176D80: .word 0x0217C340
_02176D84: .word 0x0217C398
	thumb_func_end ovy33_2176cac

	thumb_func_start ovy33_2176d88
ovy33_2176d88: ; 0x02176D88
	push {r3, lr}
	ldr r2, _02176D98 ; =ovy33_2176d9c
	mov r1, #0
	mov r3, #4
	bl sub_02016CB4
	pop {r3, pc}
	nop
_02176D98: .word ovy33_2176d9c
	thumb_func_end ovy33_2176d88

	thumb_func_start ovy33_2176d9c
ovy33_2176d9c: ; 0x02176D9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02016ED8
	add r5, r0, #0
	bl sub_02016AF0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02016B20
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02016B08
	ldr r1, [r4]
	str r0, [sp, #8]
	cmp r1, #5
	bhi _02176EB4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02176DD4: ; jump table
	.short _02176DE0 - _02176DD4 - 2 ; case 0
	.short _02176E2C - _02176DD4 - 2 ; case 1
	.short _02176E64 - _02176DD4 - 2 ; case 2
	.short _02176E76 - _02176DD4 - 2 ; case 3
	.short _02176E8C - _02176DD4 - 2 ; case 4
	.short _02176E9E - _02176DD4 - 2 ; case 5
_02176DE0:
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_216740c
	add r6, sp, #0x18
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x34
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	bl sub_0201458C
	add r3, r0, #0
	mov r2, #5
_02176E00:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _02176E00
	ldr r0, [r3]
	ldr r1, _02176EBC ; =0x0000009D
	str r0, [r6]
	mov r0, #0
	str r0, [sp, #0x44]
	ldr r2, _02176EC0 ; =0x021F59E1
	add r0, r5, #0
	add r3, sp, #0x18
	bl sub_02016EA0
_02176E1C:
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02016D68
_02176E24:
	ldr r0, [r4]
	add r0, r0, #1
_02176E28:
	str r0, [r4]
	b _02176EB4
_02176E2C:
	add r0, r5, #0
	bl sub_021EED98
	ldr r0, [sp, #4]
	bl sub_0202BDD4
	cmp r0, #2
	beq _02176E62
	add r0, r5, #0
	bl sub_02016AD8
	add r7, sp, #0xc
	mov r5, #0
	add r6, r0, #0
	str r5, [r7]
	str r5, [r7, #4]
	str r5, [r7, #8]
_02176E4E:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020171E8
	add r1, r7, #0
	bl sub_0201750C
	add r5, r5, #1
	cmp r5, #3
	blt _02176E4E
_02176E62:
	b _02176E24
_02176E64:
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_02180424
	cmp r0, #1
	bne _02176EB4
	mov r0, #3
	b _02176E28
_02176E76:
	ldr r1, [r6]
	add r0, r1, #1
	str r0, [r6]
	cmp r1, #0x46
	blt _02176EB4
	add r0, r5, #0
	bl sub_021EEDB4
	mov r0, #0
	str r0, [r6]
	b _02176E62
_02176E8C:
	ldr r1, [r6]
	add r0, r1, #1
	str r0, [r6]
	cmp r1, #0x1e
	blt _02176EB4
	add r0, r5, #0
	bl sub_0217DFE0
	b _02176E1C
_02176E9E:
	mov r1, #0
	bl sub_02014774
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_2167450
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02176EB4:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02176EBC: .word 0x0000009D
_02176EC0: .word 0x021F59E1
	thumb_func_end ovy33_2176d9c

	thumb_func_start ovy33_2176ec4
ovy33_2176ec4: ; 0x02176EC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	str r1, [sp, #4]
	add r0, r1, #0
	add r5, r2, #0
	bl sub_02016ADC
	bl sub_02017544
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016B20
	bl sub_02153608
	add r0, r4, #0
	bl sub_02018B38
	cmp r0, #0
	bne _02176EF4
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02176EF4:
	add r0, r5, #0
	add r1, sp, #0x14
	bl sub_0219A664
	mov r1, #0xb2
	mov r2, #0x7e
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x1c]
	mov r0, #0
	lsl r1, r1, #0xe
	lsl r2, r2, #0xe
_02176F0A:
	lsl r3, r0, #0x16
	add r3, r3, r2
	cmp r4, r3
	blt _02176F32
	cmp r4, r3
	bgt _02176F32
	cmp r5, r1
	blt _02176F32
	bgt _02176F32
	add r0, r6, #0
	bl sub_021804C0
	add r3, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xe
	mov r2, #0
	bl ovy12_215366c
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02176F32:
	add r0, r0, #1
	cmp r0, #3
	blt _02176F0A
	mov r1, #2
	mov r3, #0x7e
	mov r7, #0x56
	lsl r1, r1, #0x10
	lsl r3, r3, #0xe
	mov r6, #0
	lsl r7, r7, #0xe
	lsl r0, r1, #5
_02176F48:
	cmp r4, r3
	blt _02176F7E
	add r2, r3, r1
	cmp r4, r2
	bge _02176F7E
	cmp r5, r7
	bne _02176F7E
	ldr r6, _02176F8C ; =0x0217C3E8
	add r5, sp, #8
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	sub r0, r4, r3
	ldr r1, [sp, #8]
	mov r3, #0
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	bl sub_02165154
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02176F7E:
	add r6, r6, #1
	add r3, r3, r0
	cmp r6, #3
	blt _02176F48
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02176F8C: .word 0x0217C3E8
	thumb_func_end ovy33_2176ec4

	thumb_func_start ovy33_2176f90
ovy33_2176f90: ; 0x02176F90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AF0
	bl sub_02180560
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02016B08
	add r7, r0, #0
	bl sub_02014580
	cmp r0, #0
	bne _02176FC2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02176FC2:
	add r0, r6, #0
	bl sub_021B6690
	add r0, r7, #0
	bl sub_020147C4
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02176FE6
	add r0, r4, #0
	bl sub_0202FC08
	add r1, r0, #0
	add r0, r5, #0
	bl ovy12_2153880
_02176FE6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2176f90

	thumb_func_start ovy33_2176fec
ovy33_2176fec: ; 0x02176FEC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0216063C
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2176fec

	thumb_func_start ovy33_2177020
ovy33_2177020: ; 0x02177020
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155160
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02153EE0
	bl sub_02167008
	sub r0, #0xec
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_02180560
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _02177064
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02177064:
	add r0, r4, #0
	bl sub_02180560
	add r1, r7, #0
	add r2, r5, #0
	bl sub_021B678C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2177020

	thumb_func_start ovy33_2177078
ovy33_2177078: ; 0x02177078
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _021770BE
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021770BE:
	add r0, r6, #0
	bl sub_02153EE0
	ldr r1, [sp]
	bl sub_021670BC
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177078

	thumb_func_start ovy33_21770d0
ovy33_21770d0: ; 0x021770D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _02177132
	mov r0, #0x11
	strh r0, [r4]
	ldrh r0, [r4]
	add sp, #0x14
	strh r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02177132:
	ldr r0, [sp, #8]
	bl sub_02153EE0
	add r1, r0, #0
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	str r4, [sp, #4]
	bl sub_021E8D08
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_21770d0

	thumb_func_start ovy33_2177150
ovy33_2177150: ; 0x02177150
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	str r0, [sp]
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _0217719A
	mov r0, #0x11
	strh r0, [r4]
	ldr r0, _021771B0 ; =0x0000270F
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217719A:
	ldr r0, [sp]
	bl sub_02153EE0
	add r1, r0, #0
	add r0, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_021E8D70
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021771B0: .word 0x0000270F
	thumb_func_end ovy33_2177150

	thumb_func_start ovy33_21771b4
ovy33_21771b4: ; 0x021771B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _02177208
	mov r0, #1
	strh r0, [r6]
	mov r1, #0
	strh r1, [r4]
	ldrh r1, [r4]
	strh r1, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_02177208:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_021E8DDC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_21771b4

	thumb_func_start ovy33_2177218
ovy33_2177218: ; 0x02177218
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _02177260
	mov r0, #0x7e
	lsl r0, r0, #2
	add r0, r4, r0
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02177260:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_021E8EE8
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177218

	thumb_func_start ovy33_2177270
ovy33_2177270: ; 0x02177270
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180560
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_021B66DC
	cmp r0, #0
	bne _021772B8
	mov r0, #0x7e
	lsl r0, r0, #2
	add r0, r4, r0
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021772B8:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_021E8EF4
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177270

	thumb_func_start ovy33_21772c8
ovy33_21772c8: ; 0x021772C8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_02016B08
	bl sub_0201458C
	bl sub_02014E64
	cmp r0, #0
	beq _021772EC
	mov r0, #2
	b _021772EE
_021772EC:
	mov r0, #0
_021772EE:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21772c8

	thumb_func_start ovy33_21772f4
ovy33_21772f4: ; 0x021772F4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200C62C
	mov r1, #0
	mov r5, #0
	bl sub_0200C678
	cmp r0, #0x30
	beq _02177322
	mov r0, #1
	strh r0, [r4]
	b _02177324
_02177322:
	strh r5, [r4]
_02177324:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21772f4

	thumb_func_start ovy33_2177328
ovy33_2177328: ; 0x02177328
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl ovy33_2176d88
	add r1, r0, #0
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2177328

	thumb_func_start ovy33_217734c
ovy33_217734c: ; 0x0217734C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_0217DFE0
	add r1, r0, #0
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_217734c

	thumb_func_start ovy33_2177370
ovy33_2177370: ; 0x02177370
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r2]
	add r7, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	bl sub_02016B20
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	ldr r0, [r5]
	cmp r0, #0
	beq _02177398
	cmp r0, #1
	beq _021773D0
	b _021773D4
_02177398:
	add r0, r6, #0
	bl sub_0202BDE0
	cmp r0, #0
	bne _021773D8
	add r0, r6, #0
	bl sub_0202BDD4
	cmp r0, #0
	beq _021773B4
	add r0, r6, #0
	bl sub_0202BD80
	b _021773D8
_021773B4:
	ldr r1, _021773DC ; =0x00000117
	ldr r2, _021773E0 ; =0x0217C3F4
	add r0, r4, #0
	mov r3, #0
	bl sub_0217DF58
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021773D8
_021773D0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021773D4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021773D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021773DC: .word 0x00000117
_021773E0: .word 0x0217C3F4
	thumb_func_end ovy33_2177370

	thumb_func_start ovy33_21773e4
ovy33_21773e4: ; 0x021773E4
	push {r4, r5, r6, lr}
	ldr r2, _02177404 ; =ovy33_2177370
	add r4, r1, #0
	mov r1, #0
	mov r3, #8
	add r5, r0, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02177404: .word ovy33_2177370
	thumb_func_end ovy33_21773e4

	thumb_func_start ovy33_2177408
ovy33_2177408: ; 0x02177408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r0, #0
	bl sub_02016AD8
	str r0, [sp, #0x14]
	bl sub_02017240
	add r5, r0, #0
	bl ovy12_0215D194
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ovy12_0215D198
	str r0, [sp]
	add r0, r4, #0
	bl sub_02016AF0
	str r0, [sp, #0xc]
	bl sub_021804B8
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_021804F0
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021804D8
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020189EC
	cmp r0, #0
	bne _02177458
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02177458:
	add r0, r7, #0
	bl sub_0219A6C4
	sub r0, r0, #2
	cmp r0, #1
	bhi _0217746A
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0217746A:
	ldr r0, [sp, #0xc]
	bl sub_02180538
	cmp r0, #0
	bne _021774A2
	add r0, r7, #0
	bl sub_0219A6A0
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_02017394
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r6, sp, #0x48
	add r1, r6, #0
	bl sub_021672F8
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0215D2F0
	cmp r0, #0
	beq _021774A2
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021774A2:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021774AE
	ldr r0, [sp]
	cmp r0, #0
	bne _021774C0
_021774AE:
	cmp r4, #0
	beq _021774C0
	mov r0, #0x6a
	lsl r0, r0, #2
	cmp r4, r0
	beq _021774C0
	add sp, #0x54
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021774C0:
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	ble _0217756C
	add r4, sp, #0x1c
_021774CA:
	mov r0, #0x24
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r1
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _02177528
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #4]
	add r2, sp, #0x28
	ldrh r1, [r5, #2]
	ldr r0, [sp, #8]
	add r2, #2
	bl sub_02167ED8
	add r2, sp, #0x1c
	add r0, r7, #0
	add r1, sp, #0x20
	add r2, #2
	add r3, sp, #0x1c
	bl sub_0219AC64
	mov r0, #4
	ldrsh r0, [r4, r0]
	ldrh r2, [r5, #0x1c]
	cmp r2, r0
	bgt _02177564
	ldrb r1, [r4, #0x19]
	add r1, r2, r1
	cmp r0, r1
	bge _02177564
	ldr r0, [sp, #4]
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldrh r0, [r0, #2]
	ldrb r1, [r4, #0x1a]
	sub r1, r0, r1
	cmp r1, r2
	bge _02177564
	cmp r2, r0
	bgt _02177564
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02177528:
	cmp r0, #1
	bne _02177564
	ldr r0, [sp, #0xc]
	add r5, #0x1c
	bl sub_02180538
	cmp r0, #1
	bne _02177564
	add r1, sp, #0x20
	add r0, r7, #0
	add r1, #2
	bl sub_0219AD24
	ldrh r1, [r5]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bne _02177564
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #0xc]
	cmp r1, r0
	bne _02177564
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bne _02177564
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02177564:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _021774CA
_0217756C:
	mov r0, #1
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2177408

	thumb_func_start ovy33_2177574
ovy33_2177574: ; 0x02177574
	push {r4, r5, r6, lr}
	ldr r2, _0217759C ; =ovy33_21775a0
	add r5, r0, #0
	mov r1, #0
	mov r3, #8
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4]
	bl sub_02180508
	str r0, [r4, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217759C: .word ovy33_21775a0
	thumb_func_end ovy33_2177574

	thumb_func_start ovy33_21775a0
ovy33_21775a0: ; 0x021775A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021775B6
	cmp r0, #1
	beq _021775C6
	cmp r0, #2
	beq _021775D8
	b _021775E4
_021775B6:
	ldr r0, [r4, #4]
	mov r1, #9
	bl sub_0219846C
_021775BE:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021775E4
_021775C6:
	ldr r0, [r4, #4]
	bl sub_021984D0
	cmp r0, #0xe
	bne _021775E4
	ldr r0, [r4, #4]
	bl sub_021984E4
	b _021775BE
_021775D8:
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0219846C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021775E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21775a0

	thumb_func_start ovy33_21775e8
ovy33_21775e8: ; 0x021775E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, r2, #0
	add r5, r3, #0
	ldr r2, _021776D0 ; =ovy33_21776d8
	mov r3, #0x60
	add r7, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	str r7, [r4]
	add r0, r7, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0x14]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	str r5, [r4, #0x5c]
	mov r1, #4
	add r0, #0x58
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl sub_02017934
	bl sub_0200C838
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_02017934
	bl sub_020114F0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_0201736C
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl sub_020174D4
	str r0, [r4, #0x18]
	str r5, [r4, #0x20]
	ldr r0, [r4, #0x10]
	bl MyStatus_GetTrainerGender
	strh r0, [r4, #0x24]
	ldr r0, [r4, #8]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x50]
	add r0, r5, #0
	sub r0, #0xe
	cmp r0, #1
	bhi _02177662
	mov r0, #8
	b _02177668
_02177662:
	ldr r0, _021776D4 ; =0x0217C400
	sub r1, r5, #5
	ldrb r0, [r0, r1]
_02177668:
	add r1, r4, #0
	str r0, [r4, #0x38]
	add r1, #0x58
	ldr r0, [r4, #0x38]
	ldrh r1, [r1]
	add r0, r0, #1
	bl GFL_StrBufCreate
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x4c]
	cmp r5, #0xf
	bhi _021776CC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217768E: ; jump table
	.short _021776CC - _0217768E - 2 ; case 0
	.short _021776CC - _0217768E - 2 ; case 1
	.short _021776CC - _0217768E - 2 ; case 2
	.short _021776CC - _0217768E - 2 ; case 3
	.short _021776CC - _0217768E - 2 ; case 4
	.short _021776AE - _0217768E - 2 ; case 5
	.short _021776B6 - _0217768E - 2 ; case 6
	.short _021776CC - _0217768E - 2 ; case 7
	.short _021776CC - _0217768E - 2 ; case 8
	.short _021776CC - _0217768E - 2 ; case 9
	.short _021776CC - _0217768E - 2 ; case 10
	.short _021776CC - _0217768E - 2 ; case 11
	.short _021776CC - _0217768E - 2 ; case 12
	.short _021776CC - _0217768E - 2 ; case 13
	.short _021776CC - _0217768E - 2 ; case 14
	.short _021776BE - _0217768E - 2 ; case 15
_021776AE:
	ldr r0, [r4, #8]
	bl sub_0200C93C
	b _021776C4
_021776B6:
	ldr r0, [r4, #8]
	bl sub_0200C954
	b _021776C4
_021776BE:
	ldr r0, [r4, #0xc]
	bl sub_0201150C
_021776C4:
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_02048614
_021776CC:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021776D0: .word ovy33_21776d8
_021776D4: .word 0x0217C400
	thumb_func_end ovy33_21775e8

	thumb_func_start ovy33_21776d8
ovy33_21776d8: ; 0x021776D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021776EE
	cmp r0, #1
	beq _02177710
	b _02177726
_021776EE:
	add r0, r4, #0
	add r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, _0217772C ; =0x00000118
	ldr r3, _02177730 ; =0x021DD940
	bl sub_020195C0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02177726
_02177710:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x20
	bl ovy33_2177734
	ldr r0, [r4, #0x40]
	bl GFL_StrBufFree
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02177726:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0217772C: .word 0x00000118
_02177730: .word 0x021DD940
	thumb_func_end ovy33_21776d8

	thumb_func_start ovy33_2177734
ovy33_2177734: ; 0x02177734
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0217774E
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0217774A
	mov r0, #1
	b _0217774C
_0217774A:
	mov r0, #0
_0217774C:
	strh r0, [r1]
_0217774E:
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	beq _021777DA
	ldr r0, [r4, #0x5c]
	cmp r0, #0xf
	bhi _021777DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02177766: ; jump table
	.short _021777DA - _02177766 - 2 ; case 0
	.short _021777DA - _02177766 - 2 ; case 1
	.short _021777DA - _02177766 - 2 ; case 2
	.short _021777DA - _02177766 - 2 ; case 3
	.short _021777DA - _02177766 - 2 ; case 4
	.short _02177786 - _02177766 - 2 ; case 5
	.short _02177794 - _02177766 - 2 ; case 6
	.short _021777A8 - _02177766 - 2 ; case 7
	.short _021777DA - _02177766 - 2 ; case 8
	.short _021777DA - _02177766 - 2 ; case 9
	.short _021777DA - _02177766 - 2 ; case 10
	.short _021777DA - _02177766 - 2 ; case 11
	.short _021777DA - _02177766 - 2 ; case 12
	.short _021777DA - _02177766 - 2 ; case 13
	.short _021777C2 - _02177766 - 2 ; case 14
	.short _0217779E - _02177766 - 2 ; case 15
_02177786:
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x20]
	bl sub_0200C940
	bl sub_0202D138
	pop {r3, r4, r5, pc}
_02177794:
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x20]
	bl sub_0200C958
	pop {r3, r4, r5, pc}
_0217779E:
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x20]
	bl sub_020114FC
	pop {r3, r4, r5, pc}
_021777A8:
	ldr r0, [r4, #0x18]
	bl sub_0202D7C4
	ldr r1, [r4, #0x40]
	bl sub_02048580
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021603EC
	pop {r3, r4, r5, pc}
_021777C2:
	ldr r0, [r4, #0x18]
	bl sub_0202D7C4
	ldr r1, [r4, #0x40]
	bl sub_02048580
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021603EC
_021777DA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_2177734

	thumb_func_start ovy33_21777dc
ovy33_21777dc: ; 0x021777DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r0, r4, #0
	bl sub_02155174
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020179E4
	add r5, r0, #0
	cmp r6, #0
	bne _02177840
	bl sub_020099F4
	cmp r0, #1
	bne _0217783C
	add r0, r5, #0
	bl sub_020099E0
	cmp r0, #1
	bne _0217783C
	mov r0, #1
	b _0217783E
_0217783C:
	mov r0, #0
_0217783E:
	strh r0, [r4]
_02177840:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_21777dc

	thumb_func_start ovy33_2177844
ovy33_2177844: ; 0x02177844
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r0, r4, #0
	bl sub_02155174
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020179E4
	add r6, r0, #0
	cmp r7, #4
	bhi _02177904
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217789C: ; jump table
	.short _021778A6 - _0217789C - 2 ; case 0
	.short _021778D8 - _0217789C - 2 ; case 1
	.short _021778EA - _0217789C - 2 ; case 2
	.short _021778F6 - _0217789C - 2 ; case 3
	.short _021778FE - _0217789C - 2 ; case 4
_021778A6:
	mov r0, #1
	mov r5, #0
	strh r0, [r4]
	add r7, r5, #0
_021778AE:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02009A98
	cmp r0, #0
	bne _021778BE
	strh r7, [r4]
	b _021778CC
_021778BE:
	ldrh r0, [r0]
	cmp r0, #0x7e
	beq _021778C8
	cmp r0, #0
	bne _021778CC
_021778C8:
	mov r0, #0
	strh r0, [r4]
_021778CC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _021778AE
	b _02177904
_021778D8:
	bl sub_02009AE0
	cmp r0, #0x7f
	bne _021778E6
_021778E0:
	mov r0, #0
_021778E2:
	strh r0, [r4]
	b _02177904
_021778E6:
	mov r0, #1
	b _021778E2
_021778EA:
	bl sub_02009B20
	cmp r0, #1
	bne _021778F4
	b _021778E6
_021778F4:
	b _021778E0
_021778F6:
	mov r1, #0
	bl sub_02009B30
	b _02177904
_021778FE:
	ldr r1, [sp]
	bl sub_02009AF8
_02177904:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177844

	thumb_func_start ovy33_2177908
ovy33_2177908: ; 0x02177908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r0, r4, #0
	bl sub_02155174
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02153EC4
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020179E4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02009A98
	add r5, r0, #0
	beq _02177990
	ldrh r0, [r5]
	cmp r0, #0x7e
	beq _02177990
	cmp r0, #0
	beq _02177990
	ldr r1, [sp, #8]
	mov r0, #0xe
	bl GFL_StrBufCreate
	add r1, r5, #2
	mov r2, #0xd
	add r4, r0, #0
	bl sub_02048658
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
_02177990:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2177908

	thumb_func_start ovy33_2177998
ovy33_2177998: ; 0x02177998
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #8]
	add r6, r2, #0
	bl sub_021804C0
	mov r1, #0x73
	str r1, [sp]
	ldr r3, _02177A24 ; =0x0217C600
	mov r1, #0x28
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	mov r2, #0x1e
	ldr r0, [sp, #8]
	str r7, [r4, #4]
	str r0, [r4, #0x24]
	str r6, [r4, #0x20]
	mov r0, #0
	mov r1, #3
	lsl r2, r2, #4
	add r3, r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #8]
	add r0, r5, #0
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x14]
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x18]
	mov r0, #0x80
	add r1, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x1c]
	add r0, r7, #0
	bl sub_02180490
	mov r1, #0x15
	str r1, [sp]
	mov r1, #0xe
	add r2, r6, #0
	mul r2, r1
	mov r1, #7
	add r2, r2, #7
	bic r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	lsl r1, r1, #0xd
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #1
	bl ovy36_2187bfc
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02177A24: .word 0x0217C600
	thumb_func_end ovy33_2177998

	thumb_func_start ovy33_2177a28
ovy33_2177a28: ; 0x02177A28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02187C7C
	ldr r0, [r4, #0xc]
	bl sub_02187C1C
	mov r0, #1
	bl GFL_BGSysLoadScr
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x14]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #8]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_2177a28

	thumb_func_start ovy33_2177a60
ovy33_2177a60: ; 0x02177A60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r3, [r5]
	ldr r6, _02177B04 ; =0x00007FFF
	mov r0, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	mov r1, #2
	mov r2, #0x40
	lsr r3, r3, #0x10
	mov r4, #0
	bl GFL_MsgSysLoadData
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ble _02177AEA
_02177A88:
	ldr r1, [r5, #0x24]
	lsl r7, r4, #2
	ldrh r1, [r1, r7]
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x18]
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0xe
	add r6, r4, #0
	mul r6, r0
	lsl r2, r6, #0x10
	ldr r0, [r5, #0xc]
	ldr r3, [r5, #0x18]
	mov r1, #0
	lsr r2, r2, #0x10
	bl ovy36_2187c4c
	ldr r0, [r5, #8]
	ldr r2, [r5, #0x18]
	mov r1, #5
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x24]
	ldr r0, [r5, #0x14]
	add r2, r2, r7
	ldrh r2, [r2, #2]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	bl GFL_WordSetFormatStrbuf
	lsl r2, r6, #0x10
	ldr r0, [r5, #0xc]
	ldr r3, [r5, #0x1c]
	mov r1, #0x6c
	lsr r2, r2, #0x10
	bl ovy36_2187c4c
	ldr r0, [r5, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _02177A88
_02177AEA:
	ldr r0, [sp, #8]
	bl GFL_MsgDataFree
	ldr r0, [r5, #0xc]
	bl ovy36_2187c9c
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02177B04: .word 0x00007FFF
	thumb_func_end ovy33_2177a60

	thumb_func_start ovy33_2177b08
ovy33_2177b08: ; 0x02177B08
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _02177BCA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02177B20: ; jump table
	.short _02177B2A - _02177B20 - 2 ; case 0
	.short _02177B5C - _02177B20 - 2 ; case 1
	.short _02177B6A - _02177B20 - 2 ; case 2
	.short _02177B9C - _02177B20 - 2 ; case 3
	.short _02177BB0 - _02177B20 - 2 ; case 4
_02177B2A:
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #7
	bls _02177B3A
	mov r2, #7
_02177B3A:
	ldr r3, [r4, #8]
	lsl r1, r1, #2
	ldr r0, [r4]
	add r1, r3, r1
	bl ovy33_2177998
	str r0, [r4, #4]
	bl ovy33_2177a60
	ldr r0, [r4]
	bl sub_02180490
	bl sub_02189CB0
	ldr r1, [r4, #4]
	str r0, [r1, #0x10]
	b _02177BAA
_02177B5C:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_02187C70
	cmp r0, #1
	bne _02177BCA
	b _02177BAA
_02177B6A:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ovy36_2187c9c
	add r6, r0, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #4]
	mov r2, #0xf
	ldr r0, [r0, #0x10]
	bl ovy36_2189de8
	add r0, r6, #0
	bl BmpWin_FlushChar
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _02177BCA
	ldr r0, _02177BD0 ; =0x00000547
	bl GFL_SndSEPlay
	b _02177BAA
_02177B9C:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ovy36_2189cd8
	ldr r0, [r4, #4]
	bl ovy33_2177a28
_02177BAA:
	ldr r0, [r5]
	add r0, r0, #1
	b _02177BC8
_02177BB0:
	ldrh r0, [r4, #0x10]
	add r1, r0, #7
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blo _02177BC4
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	mov r0, #1
	pop {r4, r5, r6, pc}
_02177BC4:
	strh r1, [r4, #0x10]
	mov r0, #0
_02177BC8:
	str r0, [r5]
_02177BCA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02177BD0: .word 0x00000547
	thumb_func_end ovy33_2177b08

	thumb_func_start ovy33_2177bd4
ovy33_2177bd4: ; 0x02177BD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02017354
	str r0, [sp, #0x10]
	ldr r0, _02177C40 ; =0x0000014D
	ldr r3, _02177C44 ; =0x0217C600
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x50
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [sp, #0x14]
	mov r5, #0
	mov r6, #0
_02177BFA:
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02009A18
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02009A38
	add r7, r0, #0
	cmp r4, #0
	beq _02177C2E
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #4]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02008238
	cmp r0, #1
	bne _02177C2E
	ldr r0, [sp, #0x14]
	lsl r1, r6, #2
	add r2, r0, r1
	strh r4, [r0, r1]
	strh r7, [r2, #2]
	add r6, r6, #1
_02177C2E:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02177BFA
	ldr r0, [sp, #0xc]
	str r6, [r0]
	ldr r0, [sp, #0x14]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02177C40: .word 0x0000014D
_02177C44: .word 0x0217C600
	thumb_func_end ovy33_2177bd4

	thumb_func_start ovy33_2177c48
ovy33_2177c48: ; 0x02177C48
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	bl sub_02017354
	str r0, [sp]
	mov r4, #0
_02177C56:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009A18
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009A38
	add r2, r0, #0
	cmp r6, #0
	beq _02177C84
	ldr r0, [sp]
	add r1, r6, #0
	add r3, r7, #0
	bl sub_02008268
	cmp r0, #1
	bne _02177C84
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009A6C
_02177C84:
	add r4, r4, #1
	cmp r4, #0x14
	blo _02177C56
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177c48

	thumb_func_start ovy33_2177c8c
ovy33_2177c8c: ; 0x02177C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r6, r2, #0
	bl sub_02017354
	str r0, [sp, #4]
	mov r5, #0
	mov r7, #0
_02177C9E:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02009A18
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02009A38
	add r2, r0, #0
	cmp r4, #0
	beq _02177CC6
	ldr r0, [sp, #4]
	ldr r3, [sp]
	add r1, r4, #0
	bl sub_02008238
	cmp r0, #0
	bne _02177CC6
	add r7, r7, #1
_02177CC6:
	add r5, r5, #1
	cmp r5, #0x14
	blo _02177C9E
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2177c8c

	thumb_func_start ovy33_2177cd4
ovy33_2177cd4: ; 0x02177CD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02017354
	str r0, [sp, #8]
	mov r4, #0
	mov r5, #0
_02177CE8:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02009A18
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02009A38
	add r2, r0, #0
	cmp r6, #0
	beq _02177D1C
	ldr r0, [sp, #8]
	ldr r3, [sp]
	add r1, r6, #0
	bl sub_02008238
	cmp r0, #0
	bne _02177D1C
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02177D1A
	add sp, #0xc
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02177D1A:
	add r5, r5, #1
_02177D1C:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02177CE8
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2177cd4

	thumb_func_start ovy33_2177d28
ovy33_2177d28: ; 0x02177D28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017934
	bl sub_02009B50
	add r7, r0, #0
	ldr r2, _02177D74 ; =ovy33_2177b08
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x14
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4]
	mov r1, #0
	strh r1, [r4, #0x10]
	bl sub_021804C0
	add r3, r4, #0
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	add r3, #0xc
	bl ovy33_2177bd4
	str r0, [r4, #8]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02177D74: .word ovy33_2177b08
	thumb_func_end ovy33_2177d28

	thumb_func_start ovy33_2177d78
ovy33_2177d78: ; 0x02177D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xe0
	add r4, r0, #0
	add r6, r1, #0
	bl ovy12_2154910
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155174
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0215515C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02017934
	mov r1, #0
	add r2, r4, #0
	bl sub_0200AA1C
	str r0, [sp, #4]
	add r1, sp, #0x10
	add r2, sp, #0x14
	bl ovy33_21783f8
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ovy33_2178428
	str r0, [sp]
	ldr r2, [sp]
	mov r1, #0x18
	mul r1, r2
	ldr r2, _02177ECC ; =0x0217C40C
	ldr r2, [r2, r1]
	ldr r1, [sp]
	cmp r1, r2
	beq _02177DDE
	ldr r0, [sp, #4]
	bl sub_0200AA54
	add sp, #0xe0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02177DDE:
	ldr r1, [sp, #8]
	cmp r1, #7
	bhi _02177EBE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02177DF0: ; jump table
	.short _02177E00 - _02177DF0 - 2 ; case 0
	.short _02177E0C - _02177DF0 - 2 ; case 1
	.short _02177E18 - _02177DF0 - 2 ; case 2
	.short _02177E22 - _02177DF0 - 2 ; case 3
	.short _02177E2C - _02177DF0 - 2 ; case 4
	.short _02177E90 - _02177DF0 - 2 ; case 5
	.short _02177EA2 - _02177DF0 - 2 ; case 6
	.short _02177EB2 - _02177DF0 - 2 ; case 7
_02177E00:
	ldr r0, [sp]
	cmp r0, #0
	beq _02177E0A
	mov r0, #1
	b _02177EBC
_02177E0A:
	b _02177E8C
_02177E0C:
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy33_2177ed0
	b _02177EBC
_02177E18:
	add r1, r4, #0
	add r2, r6, #0
	bl ovy33_2177ef4
	b _02177EBC
_02177E22:
	add r1, r4, #0
	add r2, r6, #0
	bl ovy33_2177f28
	b _02177EBC
_02177E2C:
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy33_2177f5c
	cmp r0, #1
	bne _02177E8C
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	bl sub_02178420
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02178074
	cmp r0, #1
	bne _02177E66
	add r0, r7, #0
	bl PlayerSave_GetPlayerSaveOffset
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_0216598C
_02177E66:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy33_21780a4
	cmp r0, #1
	bne _02177E8C
	add r0, r7, #0
	bl PlayerSave_GetPlayerSaveOffset
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0201736C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #7
	bl sub_0216598C
_02177E8C:
	mov r0, #0
	b _02177EBC
_02177E90:
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r1, r7, #0
	bl ovy33_2177fa8
	b _02177EBC
_02177EA2:
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl ovy33_2177fd0
	b _02177EBC
_02177EB2:
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy33_2177f84
_02177EBC:
	strh r0, [r5]
_02177EBE:
	ldr r0, [sp, #4]
	bl sub_0200AA54
	mov r0, #0
	add sp, #0xe0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02177ECC: .word 0x0217C40C
	thumb_func_end ovy33_2177d78

	thumb_func_start ovy33_2177ed0
ovy33_2177ed0: ; 0x02177ED0
	push {r4, lr}
	mov r4, #0x18
	mul r4, r0
	ldr r0, _02177EF0 ; =0x0217C410
	cmp r3, #0
	ldr r4, [r0, r4]
	beq _02177EEC
	cmp r4, #0
	beq _02177EEC
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	blx r4
	pop {r4, pc}
_02177EEC:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02177EF0: .word 0x0217C410
	thumb_func_end ovy33_2177ed0

	thumb_func_start ovy33_2177ef4
ovy33_2177ef4: ; 0x02177EF4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02155184
	bl sub_02153EC4
	mov r1, #0x18
	add r2, r5, #0
	mul r2, r1
	ldr r1, _02177F24 ; =0x0217C41C
	cmp r4, #0
	ldr r3, [r1, r2]
	beq _02177F20
	cmp r3, #0
	beq _02177F20
	add r1, r4, #0
	add r2, r6, #0
	blx r3
	pop {r4, r5, r6, pc}
_02177F20:
	mov r0, #7
	pop {r4, r5, r6, pc}
	.align 2, 0
_02177F24: .word 0x0217C41C
	thumb_func_end ovy33_2177ef4

	thumb_func_start ovy33_2177f28
ovy33_2177f28: ; 0x02177F28
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02155184
	bl sub_02153EC4
	mov r1, #0x18
	add r2, r5, #0
	mul r2, r1
	ldr r1, _02177F58 ; =0x0217C420
	cmp r4, #0
	ldr r3, [r1, r2]
	beq _02177F54
	cmp r3, #0
	beq _02177F54
	add r1, r4, #0
	add r2, r6, #0
	blx r3
	pop {r4, r5, r6, pc}
_02177F54:
	mov r0, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02177F58: .word 0x0217C420
	thumb_func_end ovy33_2177f28

	thumb_func_start ovy33_2177f5c
ovy33_2177f5c: ; 0x02177F5C
	push {r4, lr}
	mov r4, #0x18
	mul r4, r0
	ldr r0, _02177F80 ; =0x0217C414
	cmp r3, #0
	ldr r4, [r0, r4]
	beq _02177F7A
	cmp r4, #0
	beq _02177F7A
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	blx r4
	mov r0, #1
	pop {r4, pc}
_02177F7A:
	mov r0, #0
	pop {r4, pc}
	nop
_02177F80: .word 0x0217C414
	thumb_func_end ovy33_2177f5c

	thumb_func_start ovy33_2177f84
ovy33_2177f84: ; 0x02177F84
	push {r4, lr}
	mov r4, #0x18
	mul r4, r0
	ldr r0, _02177FA4 ; =0x0217C418
	cmp r3, #0
	ldr r4, [r0, r4]
	beq _02177FA0
	cmp r4, #0
	beq _02177FA0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	blx r4
	pop {r4, pc}
_02177FA0:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02177FA4: .word 0x0217C418
	thumb_func_end ovy33_2177f84

	thumb_func_start ovy33_2177fa8
ovy33_2177fa8: ; 0x02177FA8
	push {r4, lr}
	add r4, r1, #0
	bl ovy33_2177fe8
	cmp r0, #0
	beq _02177FBA
	bl sub_02167008
	pop {r4, pc}
_02177FBA:
	add r0, r4, #0
	bl ovy33_217802c
	cmp r0, #0
	blt _02177FCA
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02177FCA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_2177fa8

	thumb_func_start ovy33_2177fd0
ovy33_2177fd0: ; 0x02177FD0
	push {r3, lr}
	bl ovy33_2177fe8
	cmp r0, #0
	beq _02177FDE
	mov r0, #1
	b _02177FE0
_02177FDE:
	mov r0, #0
_02177FE0:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_2177fd0

	thumb_func_start ovy33_2177fe8
ovy33_2177fe8: ; 0x02177FE8
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp, #4]
	bl sub_021804B8
	add r4, sp, #0
	add r6, sp, #4
	add r1, r4, #0
	add r2, r6, #0
	add r5, r0, #0
	bl ovy12_2167870
	cmp r0, #1
	bne _02178024
_02178006:
	ldr r0, [sp]
	bl sub_02167018
	cmp r0, #0x46
	bne _02178016
	ldr r0, [sp]
	add sp, #8
	pop {r4, r5, r6, pc}
_02178016:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy12_2167870
	cmp r0, #1
	beq _02178006
_02178024:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2177fe8

	thumb_func_start ovy33_217802c
ovy33_217802c: ; 0x0217802C
	push {r3, r4, r5, lr}
	bl sub_02017240
	add r5, r0, #0
	bl ovy12_0215D194
	add r4, r0, #0
	add r0, r5, #0
	bl ovy12_0215D198
	cmp r4, #0
	beq _02178048
	cmp r0, #0
	bne _0217804E
_02178048:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0217804E:
	mov r5, #0
	cmp r0, #0
	ble _0217806C
	mov r1, #0x24
_02178056:
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r3
	ldrh r2, [r2, #2]
	cmp r2, #0x46
	bne _02178066
	ldrh r0, [r4, r3]
	pop {r3, r4, r5, pc}
_02178066:
	add r5, r5, #1
	cmp r5, r0
	blt _02178056
_0217806C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_217802c

	thumb_func_start sub_02178074
sub_02178074: ; 0x02178074
	cmp r1, #2
	beq _0217807C
	mov r0, #0
	bx lr
_0217807C:
	add r1, r0, #0
	add r1, #0xb0
	ldrh r2, [r1]
	ldr r1, _0217809C ; =0x000007FE
	cmp r2, r1
	beq _0217808C
	mov r0, #0
	bx lr
_0217808C:
	ldr r1, [r0]
	ldr r0, _021780A0 ; =0x0000023E
	cmp r1, r0
	bne _02178098
	mov r0, #1
	bx lr
_02178098:
	mov r0, #0
	bx lr
	.align 2, 0
_0217809C: .word 0x000007FE
_021780A0: .word 0x0000023E
	thumb_func_end sub_02178074

	thumb_func_start ovy33_21780a4
ovy33_21780a4: ; 0x021780A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r2, #1
	bne _021780D4
	bl ovy33_21780d8
	add r5, r0, #0
	beq _021780D4
	add r0, r4, #0
	bl sub_02155174
	bl sub_0201736C
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_02035CF8
	add r4, r0, #0
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021780D4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21780a4

	thumb_func_start ovy33_21780d8
ovy33_21780d8: ; 0x021780D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0215515C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02155174
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02153160
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_21780d8

	thumb_func_start ovy33_21780f8
ovy33_21780f8: ; 0x021780F8
	push {r3, lr}
	add r0, r1, #0
	bl sub_0201735C
	bl sub_0201FDF8
	cmp r0, #6
	bge _0217810C
	mov r0, #1
	pop {r3, pc}
_0217810C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy33_21780f8

	thumb_func_start ovy33_2178110
ovy33_2178110: ; 0x02178110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r7, r2, #0
	add r0, r5, #0
	bl sub_0201735C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy33_21780d8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201FDF8
	cmp r0, #6
	bge _02178152
	cmp r4, #0
	beq _02178152
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0201FD6C
	add r0, r5, #0
	bl sub_0200D190
	add r1, r4, #0
	bl sub_0200D568
	add r0, r4, #0
	bl GFL_HeapFree
_02178152:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2178110

	thumb_func_start ovy33_2178154
ovy33_2178154: ; 0x02178154
	push {r3, r4, r5, lr}
	add r1, r2, #0
	bl ovy33_21780d8
	add r5, r0, #0
	bne _02178164
	mov r0, #1
	pop {r3, r4, r5, pc}
_02178164:
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	add r4, r0, #0
	add r0, r5, #0
	bl GFL_HeapFree
	mov r0, #2
	cmp r4, #1
	beq _0217817C
	mov r0, #1
_0217817C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2178154

	thumb_func_start ovy33_2178180
ovy33_2178180: ; 0x02178180
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	bl sub_02155174
	bl sub_0201736C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy33_21780d8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r7, #0
	mov r6, #5
	bl GFL_CopyVarForText
	cmp r4, #0
	bne _021781BA
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_02024434
	b _021781DC
_021781BA:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021781CC
	mov r6, #0xb
	b _021781D6
_021781CC:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_02024444
_021781D6:
	add r0, r4, #0
	bl GFL_HeapFree
_021781DC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2178180
_021781E0:
	.byte 0x06, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy33_21781e8
ovy33_21781e8: ; 0x021781E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0215515C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017354
	ldr r1, [r4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	beq _02178210
	ldr r2, _02178214 ; =0x0000027E
	cmp r1, r2
	bhi _02178210
	mov r2, #1
	add r3, r6, #0
	bl sub_02008268
_02178210:
	pop {r4, r5, r6, pc}
	nop
_02178214: .word 0x0000027E
	thumb_func_end ovy33_21781e8

	thumb_func_start ovy33_2178218
ovy33_2178218: ; 0x02178218
	push {r3, lr}
	add r0, r2, #0
	add r2, #0xb3
	ldrb r1, [r2]
	bl sub_02178074
	cmp r0, #1
	bne _0217822C
	mov r0, #4
	pop {r3, pc}
_0217822C:
	mov r0, #3
	pop {r3, pc}
	thumb_func_end ovy33_2178218

	thumb_func_start ovy33_2178230
ovy33_2178230: ; 0x02178230
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	bl sub_02155174
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r5]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl GFL_CopyVarForText
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl LoadItemNameToStrbuf
	mov r0, #7
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2178230

	thumb_func_start ovy33_2178260
ovy33_2178260: ; 0x02178260
	push {r3, lr}
	add r2, r1, #0
	ldr r2, [r2]
	mov r1, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl LoadItemNameToStrbuf
	mov r0, #8
	pop {r3, pc}
	thumb_func_end ovy33_2178260
_02178274:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy33_2178278
ovy33_2178278: ; 0x02178278
	push {r4, lr}
	add r4, r2, #0
	add r0, r1, #0
	bl sub_02017934
	bl sub_0200C62C
	ldr r1, [r4]
	bl sub_0200C6A0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_2178278
_02178290:
	.byte 0x05, 0x20, 0x70, 0x47

	thumb_func_start ovy33_2178294
ovy33_2178294: ; 0x02178294
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02155174
	add r6, r0, #0
	bl sub_02017934
	bl sub_0200C62C
	add r0, r6, #0
	bl sub_0201736C
	add r2, r0, #0
	ldr r4, [r4]
	add r0, r5, #0
	mov r1, #0
	bl GFL_CopyVarForText
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0202472C
	mov r0, #9
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2178294
_021782CC:
	.byte 0x0A, 0x20, 0x70, 0x47

	thumb_func_start sub_021782D0
sub_021782D0: ; 0x021782D0
	add r1, r0, #0
	add r1, #0xb3
	ldrb r1, [r1]
	cmp r1, #4
	beq _021782DC
	b _021782E6
_021782DC:
	ldr r0, [r0]
	cmp r0, #0x33
	blt _021782E6
	cmp r0, #0x36
	ble _021782E8
_021782E6:
	mov r0, #0x7f
_021782E8:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_021782D0
_021782F0:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy33_21782f4
ovy33_21782f4: ; 0x021782F4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r5, r2, #0
	bl sub_0201736C
	add r6, r0, #0
	add r0, r4, #0
	bl PlayerSave_GetPlayerSaveOffset
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021782D0
	ldr r2, _02178330 ; =0x0217C404
	mov r3, #0
_02178314:
	ldrb r1, [r2, r3]
	cmp r1, r0
	bne _02178328
	add r1, r3, #1
	ldrb r1, [r2, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0216598C
	pop {r4, r5, r6, pc}
_02178328:
	add r3, r3, #2
	cmp r3, #8
	blo _02178314
	pop {r4, r5, r6, pc}
	.align 2, 0
_02178330: .word 0x0217C404
	thumb_func_end ovy33_21782f4
_02178334:
	.byte 0x06, 0x20, 0x70, 0x47

	thumb_func_start ovy33_2178338
ovy33_2178338: ; 0x02178338
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r4, r0, #0
	add r0, r7, #0
	add r5, r1, #0
	bl sub_02155174
	bl sub_0201736C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0215515C
	add r0, r5, #0
	bl sub_021782D0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl GFL_CopyVarForText
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	mov r3, #0
	bl sub_02024868
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2178338

	thumb_func_start ovy33_2178374
ovy33_2178374: ; 0x02178374
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	bl sub_02155174
	bl sub_0201736C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021782D0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl GFL_CopyVarForText
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_0202472C
	mov r0, #0xd
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2178374

	thumb_func_start ovy33_21783a8
ovy33_21783a8: ; 0x021783A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0200A800
	cmp r0, #0
	bne _021783BC
	mov r0, #0
	pop {r4, r5, r6, pc}
_021783BC:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200A820
	cmp r0, #1
	bne _021783CC
	mov r0, #0
	pop {r4, r5, r6, pc}
_021783CC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200A71C
	cmp r0, #0
	bne _021783DE
	mov r0, #0
	pop {r4, r5, r6, pc}
_021783DE:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021783EC
	mov r0, #0
	pop {r4, r5, r6, pc}
_021783EC:
	cmp r0, #5
	blo _021783F2
	mov r4, #0
_021783F2:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_21783a8

	thumb_func_start ovy33_21783f8
ovy33_21783f8: ; 0x021783F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
_02178402:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy33_21783a8
	cmp r0, #0
	beq _02178416
	str r4, [r7]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02178416:
	add r4, r4, #1
	cmp r4, #0xc
	blt _02178402
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_21783f8

	thumb_func_start sub_02178420
sub_02178420: ; 0x02178420
	ldr r3, _02178424 ; =sub_0200A858
	bx r3
	.align 2, 0
_02178424: .word sub_0200A858
	thumb_func_end sub_02178420

	thumb_func_start ovy33_2178428
ovy33_2178428: ; 0x02178428
	push {r3, lr}
	sub sp, #0xd0
	add r1, sp, #0
	add r2, sp, #4
	bl ovy33_21783f8
	cmp r0, #0
	bne _0217843E
	add sp, #0xd0
	mov r0, #0
	pop {r3, pc}
_0217843E:
	add r0, #0xb3
	ldrb r0, [r0]
	add sp, #0xd0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_2178428

	thumb_func_start ovy33_2178448
ovy33_2178448: ; 0x02178448
	push {r4, lr}
	add r0, r1, #0
	bl sub_021551DC
	add r4, r0, #0
	bl sub_021BAC0C
	cmp r0, #1
	bne _02178464
	add r0, r4, #0
	bl sub_021BAC18
	mov r0, #1
	pop {r4, pc}
_02178464:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy33_2178448

	thumb_func_start ovy33_2178468
ovy33_2178468: ; 0x02178468
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl sub_0215516C
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804F0
	add r5, r0, #0
	bl sub_0219A6A0
	bl sub_02167078
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804D4
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_0215515C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	bl sub_0219A990
	add r0, r6, #0
	add r1, sp, #8
	bl sub_021A29D0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_021BAB9C
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_021551D4
	ldr r0, [sp]
	ldr r1, _021784D0 ; =ovy33_2178448
	bl sub_02015A88
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021784D0: .word ovy33_2178448
	thumb_func_end ovy33_2178468

	thumb_func_start ovy33_21784d4
ovy33_21784d4: ; 0x021784D4
	push {r4, lr}
	add r0, r1, #0
	bl sub_021551DC
	add r4, r0, #0
	bl sub_021BAE38
	cmp r0, #1
	bne _021784F0
	add r0, r4, #0
	bl sub_021BAE44
	mov r0, #1
	pop {r4, pc}
_021784F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy33_21784d4

	thumb_func_start ovy33_21784f4
ovy33_21784f4: ; 0x021784F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804F0
	add r7, r0, #0
	bl sub_0219A67C
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_021BAD9C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021551D4
	ldr r1, _02178540 ; =ovy33_21784d4
	add r0, r5, #0
	bl sub_02015A88
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02178540: .word ovy33_21784d4
	thumb_func_end ovy33_21784f4

	thumb_func_start ovy33_2178544
ovy33_2178544: ; 0x02178544
	push {r3, r4, r5, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r5, r0, #0
	bl sub_021804F0
	bl sub_0219A6A0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218050C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021C2E70
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2178544

	thumb_func_start ovy33_2178570
ovy33_2178570: ; 0x02178570
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	bl sub_0215516C
	add r5, r0, #0
	bl sub_02016AF0
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02155184
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl ovy12_2154910
	cmp r0, #0
	bne _021785A2
	add r0, r5, #0
	add r1, r4, #0
	bl ovy33_217a0a4
	b _021785B8
_021785A2:
	cmp r0, #1
	bne _021785AE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	b _021785B4
_021785AE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
_021785B4:
	bl ovy33_217a0cc
_021785B8:
	add r1, r0, #0
	add r0, r6, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2178570
_021785C4:
	.byte 0x02, 0x1C, 0x08, 0x1C, 0x11, 0x1C, 0x01, 0x4B, 0xFF, 0x22, 0x18, 0x47
	.byte 0xD5, 0x85, 0x17, 0x02

	thumb_func_start ovy33_21785d4
ovy33_21785d4: ; 0x021785D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r1, #0
	ldr r2, _02178610 ; =ovy33_2178614
	mov r1, #0
	mov r3, #0x14
	add r5, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	strb r6, [r4]
	str r5, [r4, #4]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl sub_021804F0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #8]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02178610: .word ovy33_2178614
	thumb_func_end ovy33_21785d4

	thumb_func_start ovy33_2178614
ovy33_2178614: ; 0x02178614
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #9
	bhi _02178722
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02178630: ; jump table
	.short _02178644 - _02178630 - 2 ; case 0
	.short _0217865C - _02178630 - 2 ; case 1
	.short _02178674 - _02178630 - 2 ; case 2
	.short _021786A2 - _02178630 - 2 ; case 3
	.short _021786B0 - _02178630 - 2 ; case 4
	.short _021786BC - _02178630 - 2 ; case 5
	.short _021786D8 - _02178630 - 2 ; case 6
	.short _021786F6 - _02178630 - 2 ; case 7
	.short _0217870A - _02178630 - 2 ; case 8
	.short _02178712 - _02178630 - 2 ; case 9
_02178644:
	ldrb r0, [r5]
	cmp r0, #6
	blo _0217864E
_0217864A:
	mov r0, #5
_0217864C:
	b _02178706
_0217864E:
	ldr r0, [r5, #0x10]
	mov r1, #0x80
	bl sub_0219A574
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0217865C:
	ldr r0, [r5, #0x10]
	bl sub_0219A580
	cmp r0, #1
	bne _02178722
	ldr r0, [r5, #0x10]
	bl sub_0219A6A0
	mov r1, #0xa2
	bl ovy12_2166e88
	b _0217869C
_02178674:
	ldr r0, [r5, #0x10]
	bl sub_0219A6A0
	bl sub_02166EF8
	cmp r0, #1
	bne _02178722
	ldr r0, [r5, #0xc]
	bl sub_021812A0
	add r1, r0, #0
	ldrb r2, [r5]
	ldr r0, [r5, #4]
	bl sub_021BB8F8
	add r1, r0, #0
	beq _0217869C
	add r0, r6, #0
	bl sub_02016D68
_0217869C:
	ldr r0, [r4]
	add r0, r0, #1
	b _0217864C
_021786A2:
	ldr r0, [r5, #0x10]
	mov r1, #8
	bl sub_0219A574
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021786B0:
	ldr r0, [r5, #0x10]
	bl sub_0219A580
	cmp r0, #1
	bne _02178722
	b _0217864A
_021786BC:
	add r0, r5, #0
	bl ovy33_2178730
	cmp r0, #0
	bne _021786CA
	mov r0, #8
	b _0217864C
_021786CA:
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	bl ovy33_2178748
	mov r0, #6
	b _0217864C
_021786D8:
	ldr r0, [r5, #0xc]
	bl sub_02180524
	mov r1, #2
	bl sub_021A1750
	add r1, r0, #0
	bne _021786EC
	mov r0, #7
	b _0217864C
_021786EC:
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #9
	b _0217864C
_021786F6:
	mov r1, #0x15
	str r1, [sp]
	ldr r1, _02178728 ; =0x00002793
_021786FC:
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	mov r0, #9
_02178706:
	str r0, [r4]
	b _02178722
_0217870A:
	mov r1, #0x15
	str r1, [sp]
	ldr r1, _0217872C ; =0x00002794
	b _021786FC
_02178712:
	ldr r0, [r5, #0xc]
	bl sub_021804B8
	bl ovy12_2167450
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02178722:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02178728: .word 0x00002793
_0217872C: .word 0x00002794
	thumb_func_end ovy33_2178614

	thumb_func_start ovy33_2178730
ovy33_2178730: ; 0x02178730
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_021804A8
	bl sub_02199220
	cmp r0, #0
	bne _02178744
	mov r0, #1
	pop {r3, pc}
_02178744:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy33_2178730

	thumb_func_start ovy33_2178748
ovy33_2178748: ; 0x02178748
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	ldr r2, _02178784 ; =ovy33_2178788
	mov r1, #0
	mov r3, #8
	mov r7, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r0, #3
	strb r0, [r4]
	strb r7, [r4, #1]
	mov r0, #2
	strb r0, [r4, #2]
	add r0, r6, #0
	strb r7, [r4, #3]
	bl sub_02180670
	str r0, [r4, #4]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02016D68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02178784: .word ovy33_2178788
	thumb_func_end ovy33_2178748

	thumb_func_start ovy33_2178788
ovy33_2178788: ; 0x02178788
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _0217883A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021787A0: ; jump table
	.short _021787AA - _021787A0 - 2 ; case 0
	.short _021787BE - _021787A0 - 2 ; case 1
	.short _021787E8 - _021787A0 - 2 ; case 2
	.short _021787F4 - _021787A0 - 2 ; case 3
	.short _0217881E - _021787A0 - 2 ; case 4
_021787AA:
	add r0, r4, #0
	bl ovy33_217884c
	ldr r0, _02178848 ; =0x00000683
	bl GFL_SndSEPlay
_021787B6:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02178844
_021787BE:
	ldrb r1, [r4, #3]
	add r0, r1, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _021787E0
	ldrb r0, [r4, #1]
	mov r2, #0x10
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	sub r2, r2, r1
	bl sub_021C80D4
	mov r0, #0
	strb r0, [r4, #3]
_021787E0:
	ldrb r0, [r4, #1]
	cmp r0, #8
	blo _02178844
	b _021787B6
_021787E8:
	ldrb r1, [r4, #3]
	add r0, r1, #1
	strb r0, [r4, #3]
	cmp r1, #0x1e
	bhs _02178844
	b _021787B6
_021787F4:
	ldrb r1, [r4, #3]
	add r0, r1, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _02178816
	ldrb r0, [r4, #1]
	mov r2, #0x10
	sub r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	sub r2, r2, r1
	bl sub_021C80D4
	mov r0, #0
	strb r0, [r4, #3]
_02178816:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _02178844
	b _021787B6
_0217881E:
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021C80A8
	ldrb r1, [r4]
	ldr r0, [r4, #4]
	mov r2, #0
	bl sub_021C80A0
	b _021787B6
_0217883A:
	add r0, r4, #0
	bl ovy33_21788c4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02178844:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02178848: .word 0x00000683
	thumb_func_end ovy33_2178788

	thumb_func_start ovy33_217884c
ovy33_217884c: ; 0x0217884C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021788C0 ; =0x0217C484
	add r5, r0, #0
	ldrh r2, [r1]
	add r0, sp, #0xc
	add r4, sp, #0xc
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	ldrb r0, [r5]
	mov r1, #0
	bl sub_02044C98
	ldrb r0, [r5]
	add r1, r4, #0
	mov r2, #8
	mov r3, #0x20
	mov r6, #0x20
	bl sub_02045320
	mov r4, #1
	add r4, #0xff
	ldrb r0, [r5]
	mov r1, #1
	mov r2, #1
	add r3, r4, #0
	mov r7, #1
	bl sub_02045118
	str r6, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldrb r0, [r5]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	ldrb r0, [r5]
	bl GFL_BGSysLoadScr
	ldrb r3, [r5, #1]
	mov r0, #0x10
	mov r1, #8
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r2, #0x37
	bl sub_021C80A8
	ldrb r1, [r5]
	ldr r0, [r5, #4]
	mov r2, #1
	bl sub_021C80A0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021788C0: .word 0x0217C484
	thumb_func_end ovy33_217884c

	thumb_func_start ovy33_21788c4
ovy33_21788c4: ; 0x021788C4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r1, sp, #0xc
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldrb r0, [r4]
	mov r2, #8
	mov r5, #0x20
	mov r3, #0x20
	bl sub_02045320
	str r5, [sp]
	str r5, [sp, #4]
	mov r5, #1
	str r5, [sp, #8]
	ldrb r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	ldrb r0, [r4]
	bl GFL_BGSysLoadScr
	add r5, #0xff
	ldrb r0, [r4]
	mov r1, #1
	add r2, r5, #0
	bl sub_02045264
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21788c4

	thumb_func_start ovy33_2178908
ovy33_2178908: ; 0x02178908
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	ldr r2, _02178960 ; =ovy33_2178964
	mov r1, #0
	mov r3, #0x30
	add r6, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	str r6, [r4]
	add r0, r6, #0
	str r5, [r4, #8]
	bl sub_02016AD8
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _02178946
	mov r0, #0xb
	str r0, [r4, #0x28]
	mov r0, #0xc
	b _0217894C
_02178946:
	mov r0, #0x1f
	str r0, [r4, #0x28]
	mov r0, #0x20
_0217894C:
	str r0, [r4, #0x2c]
	add r4, #0xc
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_020190C8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02178960: .word ovy33_2178964
	thumb_func_end ovy33_2178908

	thumb_func_start ovy33_2178964
ovy33_2178964: ; 0x02178964
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	add r5, r2, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	bl sub_02180494
	add r6, r0, #0
	add r0, r7, #0
	bl sub_021812A0
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_02180498
	str r0, [sp, #8]
	ldr r0, [r4]
	cmp r0, #0xa
	bhi _021789E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217899E: ; jump table
	.short _021789B4 - _0217899E - 2 ; case 0
	.short _021789D2 - _0217899E - 2 ; case 1
	.short _02178A5A - _0217899E - 2 ; case 2
	.short _02178A88 - _0217899E - 2 ; case 3
	.short _02178AB6 - _0217899E - 2 ; case 4
	.short _02178AD6 - _0217899E - 2 ; case 5
	.short _02178AE2 - _0217899E - 2 ; case 6
	.short _02178B6A - _0217899E - 2 ; case 7
	.short _02178B9C - _0217899E - 2 ; case 8
	.short _02178BEA - _0217899E - 2 ; case 9
	.short _02178C20 - _0217899E - 2 ; case 10
_021789B4:
	add r0, r6, #0
	mov r1, #0
	bl sub_02186834
_021789BC:
	add r0, r6, #0
	bl sub_021862E4
	str r0, [r5, #4]
	add r0, r6, #0
	bl sub_02186730
_021789CA:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02178C58
_021789D2:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021789E4
	add r0, r6, #0
	bl sub_02186770
	cmp r0, #0
	beq _021789E4
_021789E2:
	b _02178C58
_021789E4:
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_021B3C18
	add r0, r6, #0
	bl sub_021862DC
	add r0, r6, #0
	bl sub_02186EA0
	add r0, r7, #0
	bl sub_021804F0
	add r1, sp, #0x38
	str r1, [sp, #0x10]
	bl sub_0219A664
	ldr r1, _02178C60 ; =0x000025D8
	add r0, sp, #0x8c
	strh r1, [r0, #0x24]
	mov r1, #0
	strh r1, [r0, #0x26]
	mov r0, #0xed
	lsl r0, r0, #0xc
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xa4]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0xa8]
	mov r0, #0
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xac]
	ldmia r2!, {r0, r1}
	add r3, sp, #0x98
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #0x10]
	str r0, [r3]
	ldr r1, _02178C64 ; =0x00000E38
	add r0, sp, #0x8c
	strh r1, [r0, #0x2c]
	mov r1, #1
	mov r0, #0
	str r0, [sp, #0xc4]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [sp, #0xc8]
	str r1, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, r6, #0
	add r1, sp, #0x8c
	mov r2, #0xa
	bl sub_02186F88
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_02178A5A:
	add r0, r6, #0
	bl sub_0218733C
	cmp r0, #0
	bne _02178AF2
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_216740c
	ldr r2, [r5, #0x28]
	ldr r0, [r5]
	lsl r2, r2, #0x18
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x18
	bl sub_021BB838
	add r1, r0, #0
	beq _02178A86
	ldr r0, [sp, #4]
	bl sub_02016D68
_02178A86:
	b _021789CA
_02178A88:
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_2167450
	add r0, r7, #0
	bl sub_021804F0
	bl sub_0219A6A0
	mov r1, #1
	bl ovy12_2167534
	add r0, r6, #0
	bl sub_02186F00
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8890
	b _02178ACC
_02178AB6:
	mov r0, #1
	str r0, [sp]
	ldr r2, [r5, #8]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	add r5, #0xc
	add r1, r7, #0
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl sub_0217E1F4
_02178ACC:
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016D68
	b _021789CA
_02178AD6:
	add r0, r7, #0
	bl sub_0218055C
	bl sub_021B5168
	b _021789BC
_02178AE2:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02178AF4
	add r0, r6, #0
	bl sub_02186770
	cmp r0, #0
	beq _02178AF4
_02178AF2:
	b _02178C58
_02178AF4:
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_021B3C18
	add r0, r6, #0
	bl sub_021862DC
	add r0, r6, #0
	bl sub_02186ED0
	add r0, r6, #0
	mov r1, #0
	bl sub_02186834
	add r0, r7, #0
	bl sub_021804F0
	add r5, sp, #0x2c
	add r1, r5, #0
	bl sub_0219A664
	ldr r0, _02178C60 ; =0x000025D8
	add r3, sp, #0x44
	strh r0, [r3, #0x24]
	mov r0, #0
	strh r0, [r3, #0x26]
	mov r0, #0xed
	lsl r0, r0, #0xc
	str r0, [sp, #0x6c]
	mov r0, #0
	str r0, [sp, #0x5c]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [sp, #0x64]
	ldmia r5!, {r0, r1}
	add r2, sp, #0x50
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r2]
	ldr r0, _02178C64 ; =0x00000E38
	str r1, [sp, #0x74]
	strh r0, [r3, #0x2c]
	mov r0, #0
	str r0, [sp, #0x7c]
	str r1, [sp, #0x78]
	str r1, [sp, #0x80]
	str r1, [sp, #0x84]
	str r1, [sp, #0x88]
	add r0, r6, #0
	add r1, r3, #0
	mov r2, #1
	bl sub_02186F88
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_02178B6A:
	add r0, r6, #0
	bl sub_0218733C
	cmp r0, #0
	bne _02178C58
	add r0, r7, #0
	bl sub_021804F0
	bl sub_0219A6A0
	mov r1, #1
	bl ovy12_2167534
	bl sub_02046E10
	add r5, r0, #0
	bl sub_021805E0
	add r0, r5, #0
	bl GFL_BGSysSetEnabledBGsA
	add r0, r7, #0
	bl ovy36_21805f0
	b _021789CA
_02178B9C:
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_216740c
	ldr r2, [r5, #0x2c]
	ldr r0, [r5]
	lsl r2, r2, #0x18
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x18
	bl sub_021BB838
	add r1, r0, #0
	beq _02178BBA
	b _02178BE2
_02178BBA:
	add r0, r7, #0
	bl sub_021804F0
	bl sub_0219A6A0
	add r6, r0, #0
	mov r1, #0
	bl ovy12_2167534
	add r0, r6, #0
	mov r1, #1
	bl ovy12_2167060
	ldr r0, [r5]
	ldr r1, [sp, #4]
	ldr r2, _02178C68 ; =ovy33_2178c6c
	mov r3, #0
	bl sub_02016CB4
	add r1, r0, #0
_02178BE2:
	ldr r0, [sp, #4]
	bl sub_02016D68
	b _021789CA
_02178BEA:
	add r0, r7, #0
	bl sub_021804B8
	bl ovy12_2167450
	add r0, r7, #0
	bl sub_0218055C
	ldr r1, [r5, #8]
	bl sub_021B50F4
	mov r1, #1
	mov r0, #0
	str r0, [sp, #0x1c]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, r6, #0
	add r1, sp, #0x14
	mov r2, #0xa
	bl sub_02186FB8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_02178C20:
	add r0, r6, #0
	bl sub_0218733C
	cmp r0, #0
	bne _02178C58
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02178C36
	add r0, r6, #0
	bl sub_021862B8
_02178C36:
	add r0, r6, #0
	bl sub_021866E4
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_021B3C18
	add r0, r6, #0
	bl sub_02186F00
	add r0, r6, #0
	mov r1, #1
	bl sub_02186834
	add sp, #0xd4
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02178C58:
	mov r0, #0
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	nop
_02178C60: .word 0x000025D8
_02178C64: .word 0x00000E38
_02178C68: .word ovy33_2178c6c
	thumb_func_end ovy33_2178964

	thumb_func_start ovy33_2178c6c
ovy33_2178c6c: ; 0x02178C6C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	ldr r0, [r4]
	cmp r0, #0
	beq _02178C84
	cmp r0, #1
	beq _02178C98
	b _02178CA4
_02178C84:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02178CA4
_02178C98:
	bl sub_0204E0E0
	cmp r0, #0
	bne _02178CA4
	mov r0, #1
	pop {r4, pc}
_02178CA4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy33_2178c6c

	thumb_func_start ovy33_2178ca8
ovy33_2178ca8: ; 0x02178CA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r1, #0
	ldr r2, _02178D0C ; =ovy33_2178d10
	mov r1, #0
	mov r3, #0x58
	add r6, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x58
	blx MI_CpuFill8
	str r6, [r4, #4]
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [r4, #8]
	bl sub_02017934
	bl sub_02007E64
	str r0, [r4]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl sub_021804F0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_0201735C
	add r1, r5, #0
	bl sub_0201FF08
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02180490
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x4e
	strb r5, [r0]
	mov r0, #0
	str r0, [r4, #0x54]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02178D0C: .word ovy33_2178d10
	thumb_func_end ovy33_2178ca8

	thumb_func_start ovy33_2178d10
ovy33_2178d10: ; 0x02178D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0xe
	bhi _02178DC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02178D2C: ; jump table
	.short _02178D4A - _02178D2C - 2 ; case 0
	.short _02178D56 - _02178D2C - 2 ; case 1
	.short _02178DA0 - _02178D2C - 2 ; case 2
	.short _02178DB8 - _02178D2C - 2 ; case 3
	.short _02178DEC - _02178D2C - 2 ; case 4
	.short _02178E24 - _02178D2C - 2 ; case 5
	.short _02178E60 - _02178D2C - 2 ; case 6
	.short _02178ED4 - _02178D2C - 2 ; case 7
	.short _02178F02 - _02178D2C - 2 ; case 8
	.short _02178F46 - _02178D2C - 2 ; case 9
	.short _02178F54 - _02178D2C - 2 ; case 10
	.short _02178F76 - _02178D2C - 2 ; case 11
	.short _02178F82 - _02178D2C - 2 ; case 12
	.short _02178F90 - _02178D2C - 2 ; case 13
	.short _02178FB2 - _02178D2C - 2 ; case 14
_02178D4A:
	add r0, r4, #0
	bl ovy33_2178fd4
	mov r0, #1
_02178D52:
	str r0, [r5]
	b _02178FBE
_02178D56:
	ldr r0, [r4, #0x1c]
	mov r1, #0x6c
	bl sub_021879A0
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	str r1, [r4, #0x18]
	bl sub_0218845C
	str r0, [r4, #0x20]
	mov r0, #0x15
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x28]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0x15
	bl GFL_StrBufCreate
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ovy33_2179140
	ldr r0, [r4]
	bl sub_02007E70
	cmp r0, #1
	ldr r0, [r4, #0x20]
	bne _02178D9E
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0218836C
	mov r0, #2
	b _02178D52
_02178D9E:
	b _02178DD6
_02178DA0:
	ldr r0, [r4, #0x20]
	bl sub_021883E8
	cmp r0, #1
	bne _02178DC6
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021880D4
	str r0, [r4, #0x24]
	mov r0, #3
	b _02178D52
_02178DB8:
	ldr r0, [r4, #0x24]
	bl sub_0218816C
	cmp r0, #0
	beq _02178DC8
	cmp r0, #1
	beq _02178DE4
_02178DC6:
	b _02178FBE
_02178DC8:
	ldr r0, [r4, #0x24]
	bl sub_02187EA0
	ldr r0, [r4, #0x20]
	bl sub_02188474
	ldr r0, [r4, #0x20]
_02178DD6:
	mov r1, #0
	mov r2, #0
	mov r3, #6
	bl sub_0218836C
	mov r0, #4
	b _02178D52
_02178DE4:
	ldr r0, [r4, #0x24]
	bl sub_02187EA0
	b _02178F8C
_02178DEC:
	ldr r0, [r4, #0x20]
	bl sub_021883E8
	cmp r0, #1
	bne _02178E6A
	mov r0, #8
	bl sub_0203D10C
	mov r0, #0x15
	mov r7, #0x15
	bl sub_02006D64
	bl GFL_VBlankGetTCBMgr
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02188494
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xf
	mov r3, #0x10
	str r7, [sp]
	bl sub_02035604
	str r0, [r4, #0x34]
	mov r0, #5
	b _02178D52
_02178E24:
	mov r0, #2
	bl sub_02006E0C
	bl sub_02006E3C
	cmp r0, #1
	bne _02178E6A
	ldr r0, [r4, #0x34]
	bl sub_0203580C
	ldr r0, [r4, #0x20]
	bl sub_02188474
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_0218836C
	ldr r0, [r4, #4]
	mov r1, #6
	mov r4, #6
	bl sub_0202F828
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	str r4, [r5]
	b _02178FBE
_02178E60:
	ldr r0, [r4, #0x20]
	bl sub_021883E8
	cmp r0, #1
	beq _02178E6C
_02178E6A:
	b _02178FBE
_02178E6C:
	add r1, r4, #0
	ldr r0, _02178FC4 ; =0x02178FCD
	add r1, #0x54
	bl sub_02006E80
	cmp r0, #0
	bne _02178E7E
	mov r0, #7
	b _02178D52
_02178E7E:
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x14]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r4, #0x20]
	bl sub_02188474
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0x2c]
	mov r1, #0
	mov r2, #0
	bl sub_021883B0
	bl sub_02006DEC
	mov r0, #8
	bl sub_0203D134
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x1e
	bl sub_0202F8A4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #0xc
	b _02178D52
_02178ED4:
	ldr r0, [r4, #0x54]
	cmp r0, #1
	bne _02178FBE
	ldr r0, [r4]
	bl sub_02006EC0
	bl sub_02006DEC
	mov r0, #8
	mov r7, #8
	bl sub_0203D134
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x1e
	bl sub_0202F8A4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	str r7, [r5]
	b _02178FBE
_02178F02:
	add r0, r4, #0
	bl ovy33_21790c4
	cmp r0, #0
	bne _02178FBE
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x14]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r4, #0x20]
	bl sub_02188474
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0x2c]
	mov r1, #0
	mov r2, #0
	bl sub_021883B0
	mov r0, #9
	b _02178D52
_02178F46:
	ldr r0, [r4, #0x20]
	bl sub_021883E8
	cmp r0, #1
	bne _02178FBE
	mov r0, #0xa
	b _02178D52
_02178F54:
	add r6, sp, #0x10
	add r0, r6, #0
	bl sub_02006D54
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, _02178FC8 ; =0x000001B9
	mov r2, #0x40
	mov r3, #0
	str r6, [sp, #0xc]
	bl sub_020069F4
	str r0, [r4, #0x50]
	mov r0, #0xb
	b _02178D52
_02178F76:
	ldr r0, [r4, #0x50]
	bl sub_02006C40
	cmp r0, #0
	bne _02178FBE
	b _02178F8C
_02178F82:
	ldr r0, [r4, #0x20]
	bl sub_021883E8
	cmp r0, #1
	bne _02178FBE
_02178F8C:
	mov r0, #0xd
	b _02178D52
_02178F90:
	add r0, r4, #0
	bl ovy33_21791a8
	ldr r0, [r4, #0x2c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x28]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x20]
	bl sub_02188338
	ldr r0, [r4, #0x18]
	bl sub_021879B8
	mov r0, #0xe
	b _02178D52
_02178FB2:
	add r0, r4, #0
	bl ovy33_2178fe8
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02178FBE:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02178FC4: .word 0x02178FCD
_02178FC8: .word 0x000001B9
	thumb_func_end ovy33_2178d10
_02178FCC:
	.byte 0x01, 0x20, 0x08, 0x60
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy33_2178fd4
ovy33_2178fd4: ; 0x02178FD4
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02016AF0
	bl sub_021804B8
	bl ovy12_216740c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_2178fd4

	thumb_func_start ovy33_2178fe8
ovy33_2178fe8: ; 0x02178FE8
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02016AF0
	bl sub_021804B8
	bl ovy12_2167450
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_2178fe8

	thumb_func_start ovy33_2178ffc
ovy33_2178ffc: ; 0x02178FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	mov r2, #0x15
	mov r6, #0x15
	bl sub_0204BF1C
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	bl sub_0201D620
	add r4, r0, #0
	mov r0, #0x15
	bl sub_02033E24
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0201CC98
	str r0, [sp, #0xc]
	str r6, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033F90
	str r0, [r5, #0x40]
	mov r0, #0xc0
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033F2C
	str r0, [r5, #0x44]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	str r6, [sp]
	bl sub_02034000
	str r0, [r5, #0x48]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_0201CCC0
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldr r2, _0217909C ; =0x0217C488
	add r1, sp, #0x10
	ldrh r3, [r2]
	add r0, sp, #0x10
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	strh r3, [r1, #4]
	ldrh r2, [r2, #6]
	strh r2, [r1, #6]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	ldr r3, [r5, #0x48]
	bl Oam_CreateSprite
	str r0, [r5, #0x3c]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217909C: .word 0x0217C488
	thumb_func_end ovy33_2178ffc

	thumb_func_start ovy33_21790a0
ovy33_21790a0: ; 0x021790A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl Oam_RemoveOam
	ldr r0, [r4, #0x40]
	bl sub_0204B98C
	ldr r0, [r4, #0x44]
	bl sub_0204BCD0
	ldr r0, [r4, #0x48]
	bl sub_0204BE64
	ldr r0, [r4, #0x38]
	bl sub_0204BF98
	pop {r4, pc}
	thumb_func_end ovy33_21790a0

	thumb_func_start ovy33_21790c4
ovy33_21790c4: ; 0x021790C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _021790DC
	mov r1, #3
	add r0, r5, #0
	mvn r1, r1
	add r0, #0x4d
	strb r1, [r0]
_021790DC:
	mov r0, #0x4d
	ldrsb r1, [r5, r0]
	sub r0, #0x51
	cmp r1, r0
	bne _0217910C
	add r0, r5, #0
	mov r1, #3
	add r0, #0x4d
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x4c
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #3
	bne _0217910C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0217910C:
	add r6, sp, #0
	ldr r0, [r5, #0x3c]
	add r1, r6, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	add r1, sp, #0
	mov r0, #2
	mov r4, #0x4d
	ldrsh r2, [r1, r0]
	ldrsb r0, [r5, r4]
	sub r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, [r5, #0x3c]
	add r1, r6, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	ldrsb r0, [r5, r4]
	add r5, #0x4d
	sub r0, r0, #1
	strb r0, [r5]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_21790c4

	thumb_func_start ovy33_2179140
ovy33_2179140: ; 0x02179140
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	mov r0, #0
	bl sub_02024C8C
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #5
	mov r2, #0
	mov r3, #0
	bl sub_0204B0F0
	mov r3, #0xc
	str r3, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0xa
	mov r2, #3
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x30]
	bl BmpWin_GetBitmap
	mov r1, #0x11
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x30]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x30]
	bl BmpWin_FlushMap
	ldr r0, [r5, #0x30]
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_02024E80
	add r0, r5, #0
	bl ovy33_2178ffc
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2179140

	thumb_func_start ovy33_21791a8
ovy33_21791a8: ; 0x021791A8
	push {r4, lr}
	add r4, r0, #0
	bl ovy33_21790a0
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r4, #0x30]
	bl BmpWin_Free
	pop {r4, pc}
	thumb_func_end ovy33_21791a8

	thumb_func_start ovy33_21791c0
ovy33_21791c0: ; 0x021791C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_021804D4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021804F0
	str r0, [sp, #4]
	bl sub_0219A6A0
	str r0, [sp]
	bl sub_02167078
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, sp, #0x24
	bl sub_0219A990
	add r0, r5, #0
	bl sub_02180538
	cmp r0, #1
	bne _02179200
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179200:
	add r5, sp, #0x14
	add r0, r6, #0
	add r1, sp, #0x24
	add r2, r5, #0
	bl sub_02185170
	cmp r0, #0
	bne _02179216
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179216:
	ldr r0, [sp, #0x1c]
	bl sub_021A29EC
	bl sub_021A2BE4
	cmp r0, #1
	bne _02179244
	mov r2, #1
	add r0, r7, #0
	add r1, sp, #0x24
	lsl r2, r2, #0x10
	bl sub_0215EC6C
	add r0, r6, #0
	add r1, sp, #0x24
	add r2, r5, #0
	bl sub_02185170
	cmp r0, #0
	bne _02179244
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179244:
	ldr r0, [sp, #0x1c]
	bl sub_021A29EC
	bl sub_021A2CB0
	cmp r0, #0
	bne _02179258
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179258:
	ldr r0, [sp]
	add r1, sp, #8
	bl sub_021672F8
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x20]
	sub r1, r1, r0
	bmi _02179270
	mov r0, #5
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _02179276
_02179270:
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179276:
	cmp r4, #0
	beq _02179286
	ldr r0, [sp, #0x24]
	str r0, [r4]
	ldr r0, [sp, #0x20]
	str r0, [r4, #4]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #8]
_02179286:
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_21791c0

	thumb_func_start ovy33_217928c
ovy33_217928c: ; 0x0217928C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r2, _021793B4 ; =ovy33_21793b8
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x68
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x68
	blx MI_CpuFill8
	str r5, [r4]
	str r6, [r4, #8]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_02180524
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02017994
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_021804B8
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_021804F0
	str r0, [r4, #0x18]
	bl sub_0219A6A0
	str r0, [r4, #0x1c]
	bl sub_02167078
	add r1, r4, #0
	add r1, #0x58
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x34
	bl sub_0219A664
	ldr r0, [r4, #0x18]
	bl sub_0219AB18
	str r0, [r4, #0x28]
	add r2, r4, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, #0x40
	bl ovy33_21791c0
	cmp r0, #0
	bne _02179316
	add r0, r4, #0
	mov r1, #1
	add r0, #0x5a
	strb r1, [r0]
_02179316:
	ldr r0, [r4, #0x40]
	add r3, r4, #0
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x44]
	add r2, sp, #4
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x22]
	ldr r0, [r4, #0x48]
	add r3, #0x34
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x24]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r5, #1
	str r0, [r2]
	mov r0, #1
	add r1, r7, #0
	lsl r2, r5, #0x10
	bl sub_0215EC6C
	add r0, r6, #0
	bl sub_021804D4
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_02185170
	cmp r0, #0
	bne _02179370
	b _0217937E
_02179370:
	ldr r0, [sp, #0x18]
	bl sub_021A29F4
	mov r1, #0x40
	tst r0, r1
	beq _0217937E
	mov r5, #0
_0217937E:
	add r0, r4, #0
	add r0, #0x5b
	strb r5, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x20
	bl sub_021A2188
	cmp r0, #0
	beq _02179396
	mov r1, #1
	b _02179398
_02179396:
	mov r1, #0
_02179398:
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	bl sub_021A19FC
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x14]
	bl ovy12_216740c
	ldr r0, [sp]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021793B4: .word ovy33_21793b8
	thumb_func_end ovy33_217928c

	thumb_func_start ovy33_21793b8
ovy33_21793b8: ; 0x021793B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0xa
	bhi _02179480
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021793D2: ; jump table
	.short _021793E8 - _021793D2 - 2 ; case 0
	.short _02179408 - _021793D2 - 2 ; case 1
	.short _02179430 - _021793D2 - 2 ; case 2
	.short _02179458 - _021793D2 - 2 ; case 3
	.short _02179474 - _021793D2 - 2 ; case 4
	.short _021794E0 - _021793D2 - 2 ; case 5
	.short _021794F2 - _021793D2 - 2 ; case 6
	.short _021794F2 - _021793D2 - 2 ; case 7
	.short _02179536 - _021793D2 - 2 ; case 8
	.short _02179542 - _021793D2 - 2 ; case 9
	.short _02179558 - _021793D2 - 2 ; case 10
_021793E8:
	add r0, r4, #0
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _021793F8
_021793F2:
	mov r0, #8
_021793F4:
	str r0, [r5]
	b _02179594
_021793F8:
	mov r1, #2
	ldr r0, [r4, #0x18]
	lsl r1, r1, #8
	bl sub_0219A574
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_02179408:
	ldr r0, [r4, #0x18]
	bl sub_0219A580
	cmp r0, #1
	bne _02179480
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_021670F4
	ldr r0, [r4, #0x1c]
	add r4, #0x5b
	ldrb r1, [r4]
	bl sub_02167564
	ldr r0, _02179598 ; =0x00000684
	bl GFL_SndSEPlay
_0217942A:
	ldr r0, [r5]
	add r0, r0, #1
_0217942E:
	b _021793F4
_02179430:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_021795A4
	cmp r0, #0
	beq _02179480
	add r0, r4, #0
	bl ovy33_2179628
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _0217944C
	mov r0, #5
	b _0217942E
_0217944C:
	mov r0, #0x5a
	bl sub_02005784
	add r0, #0x1e
	str r0, [r4, #0x5c]
	b _0217942A
_02179458:
	ldr r1, [r4, #0x5c]
	add r0, r4, #0
	bl ovy33_21795bc
	cmp r0, #1
	bne _02179468
_02179464:
	mov r0, #6
	b _021793F4
_02179468:
	cmp r0, #2
	bne _02179480
	add r0, r4, #0
	bl ovy33_21795e8
	b _0217942A
_02179474:
	add r0, r4, #0
	mov r1, #0x1e
	bl ovy33_21795bc
	add r6, r0, #0
	bne _02179482
_02179480:
	b _02179594
_02179482:
	add r0, r4, #0
	bl ovy33_2179614
	cmp r6, #1
	bne _021794D0
	add r0, r4, #0
	bl ovy33_2179650
	ldr r0, [r4, #0x1c]
	mov r1, #3
	bl sub_021670F4
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl sub_02017D10
	mov r1, #0
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #0x1c
	lsr r1, r1, #0x10
	bl sub_0216063C
	mov r0, #0x15
	str r0, [sp]
	ldr r1, _0217959C ; =0x00002796
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	mov r0, #0xa
	b _0217942E
_021794D0:
	cmp r6, #2
	bne _02179594
	ldr r0, [r4, #0x10]
	mov r1, #0x50
	bl sub_020095A0
	mov r0, #7
	b _0217942E
_021794E0:
	add r0, r4, #0
	mov r1, #0x78
	bl ovy33_21795bc
	cmp r0, #2
	beq _021794F2
	cmp r0, #1
	bne _02179594
	b _02179464
_021794F2:
	add r0, r4, #0
	bl ovy33_2179650
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _02179514
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _0217950E
	ldr r0, [r4, #0xc]
	bl sub_021A2174
_0217950E:
	ldr r0, [r4, #0x64]
	bl sub_02017C84
_02179514:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_021670F4
	mov r0, #0x15
	str r0, [sp]
	ldr r2, [r5]
	ldr r1, _021795A0 ; =0x00002792
	add r0, r7, #0
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_02153684
	b _021793F2
_02179536:
	ldr r0, [r4, #0x18]
	mov r1, #8
	bl sub_0219A574
	mov r0, #9
	str r0, [r5]
_02179542:
	ldr r0, [r4, #0x18]
	bl sub_0219A580
	cmp r0, #1
	bne _02179594
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02167564
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02179558:
	ldr r0, [r4, #0x10]
	mov r1, #8
	bl sub_020095A0
	mov r0, #0xd
	bl sub_02038BC8
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _02179574
	mov r0, #1
	b _02179576
_02179574:
	mov r0, #4
_02179576:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x64]
	mov r3, #0
	bl sub_021686B8
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02179594:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02179598: .word 0x00000684
_0217959C: .word 0x00002796
_021795A0: .word 0x00002792
	thumb_func_end ovy33_21793b8

	thumb_func_start sub_021795A4
sub_021795A4: ; 0x021795A4
	ldr r3, [r0, #0x60]
	add r2, r3, #1
	str r2, [r0, #0x60]
	cmp r3, r1
	bhs _021795B2
	mov r0, #0
	bx lr
_021795B2:
	mov r1, #0
	str r1, [r0, #0x60]
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021795A4

	thumb_func_start ovy33_21795bc
ovy33_21795bc: ; 0x021795BC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x60]
	add r0, r2, #1
	str r0, [r4, #0x60]
	cmp r2, r1
	bhs _021795DC
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021795E4
	mov r0, #0
	str r0, [r4, #0x60]
	add r0, r1, #0
	pop {r4, pc}
_021795DC:
	mov r0, #0
	str r0, [r4, #0x60]
	mov r0, #2
	pop {r4, pc}
_021795E4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy33_21795bc

	thumb_func_start ovy33_21795e8
ovy33_21795e8: ; 0x021795E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0218050C
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #2
	bl sub_021670F4
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B3F14
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_021A5968
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_21795e8

	thumb_func_start ovy33_2179614
ovy33_2179614: ; 0x02179614
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02179626
	bl sub_021A3A70
	mov r0, #0
	str r0, [r4, #0x2c]
_02179626:
	pop {r4, pc}
	thumb_func_end ovy33_2179614

	thumb_func_start ovy33_2179628
ovy33_2179628: ; 0x02179628
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0218050C
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x38]
	mov r3, #1
	cmp r2, r1
	beq _0217963E
	mov r3, #0
_0217963E:
	add r2, r4, #0
	add r2, #0x58
	ldrb r2, [r2]
	add r1, r4, #0
	add r1, #0x40
	bl sub_021A58E0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ovy33_2179628

	thumb_func_start ovy33_2179650
ovy33_2179650: ; 0x02179650
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02179662
	bl sub_021A3A70
	mov r0, #0
	str r0, [r4, #0x30]
_02179662:
	pop {r4, pc}
	thumb_func_end ovy33_2179650

	thumb_func_start ovy33_2179664
ovy33_2179664: ; 0x02179664
	push {r3, r4, r5, lr}
	ldr r2, _02179680 ; =ovy33_2179684
	add r5, r0, #0
	mov r3, #0x3c
	bl sub_02016CB4
	add r4, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	bl ovy33_2179700
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02179680: .word ovy33_2179684
	thumb_func_end ovy33_2179664

	thumb_func_start ovy33_2179684
ovy33_2179684: ; 0x02179684
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _021796F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217969C: ; jump table
	.short _021796A4 - _0217969C - 2 ; case 0
	.short _021796CA - _0217969C - 2 ; case 1
	.short _021796D8 - _0217969C - 2 ; case 2
	.short _021796EA - _0217969C - 2 ; case 3
_021796A4:
	ldrh r0, [r4, #0x16]
	mov r1, #0x14
	blx sub_0208D65C
	cmp r1, #0
	bne _021796F4
	add r0, r4, #0
	bl ovy33_21797ac
	ldrb r1, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	bhi _021796F4
_021796BE:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	strh r0, [r4, #0x16]
	b _021796F4
_021796CA:
	ldrh r0, [r4, #0x16]
	cmp r0, #0xa
	bls _021796F4
	add r0, r4, #0
	bl ovy33_217980c
	b _021796BE
_021796D8:
	add r0, r4, #0
	bl ovy33_2179844
	cmp r0, #0
	beq _021796F4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021796F4
_021796EA:
	add r0, r4, #0
	bl ovy33_217979c
	mov r0, #1
	pop {r3, r4, r5, pc}
_021796F4:
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_2179684

	thumb_func_start ovy33_2179700
ovy33_2179700: ; 0x02179700
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02016AF0
	add r4, r0, #0
	bl sub_021804D4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021804C0
	strh r0, [r5]
	add r0, r7, #0
	str r4, [r5, #4]
	bl ovy33_2179858
	strb r0, [r5, #0x14]
	mov r4, #0
	add r0, r6, #0
	strb r4, [r5, #0x15]
	bl sub_021852F0
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0x14]
	str r4, [r5, #0x34]
	cmp r0, #6
	bls _02179740
	mov r0, #6
	strb r0, [r5, #0x14]
_02179740:
	ldr r0, [r5, #4]
	bl sub_021804F0
	add r1, sp, #0x14
	bl sub_0219A664
	mov r0, #5
	ldr r2, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r1, r2, r0
	str r1, [sp, #4]
	add r1, r2, r0
	ldr r2, [sp, #0x14]
	str r1, [sp, #8]
	sub r1, r2, r0
	add r0, r2, r0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, sp, #4
	mov r2, #8
	add r3, sp, #0
	bl ovy36_2183e40
	add r4, r0, #0
	beq _02179782
	ldr r0, [r4]
	add r1, r5, #0
	str r0, [r5, #0x34]
	ldr r0, [r4]
	add r1, #8
	bl ovy36_2183f84
_02179782:
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02179796
	ldr r0, [r5, #0x18]
	bl sub_02183FA8
	str r0, [r5, #0x38]
_02179796:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_2179700

	thumb_func_start ovy33_217979c
ovy33_217979c: ; 0x0217979C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _021797AA
	ldr r0, [r0, #0x38]
	bl sub_021840E4
_021797AA:
	pop {r3, pc}
	thumb_func_end ovy33_217979c

	thumb_func_start ovy33_21797ac
ovy33_21797ac: ; 0x021797AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldrb r4, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	cmp r0, r4
	bls _02179800
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	add r3, sp, #0x18
	bl sub_020507D4
	mov r1, #0xc
	add r0, r5, #0
	ldr r2, _02179804 ; =0x0217C490
	mul r1, r4
	add r6, sp, #0
	add r1, r2, r1
	add r0, #8
	add r2, r6, #0
	bl VEC_Add
	ldr r0, [r5, #0x18]
	mov r1, #0x62
	add r2, r6, #0
	bl sub_02184074
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #0x1c]
	ldrb r0, [r5, #0x15]
	add r0, r0, #1
	strb r0, [r5, #0x15]
	ldr r0, _02179808 ; =0x00000568
	bl GFL_SndSEPlay
_02179800:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02179804: .word 0x0217C490
_02179808: .word 0x00000568
	thumb_func_end ovy33_21797ac

	thumb_func_start ovy33_217980c
ovy33_217980c: ; 0x0217980C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x15]
	mov r4, #0
	cmp r0, #0
	ble _02179832
	add r6, r4, #0
	mov r7, #2
_0217981C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02184110
	ldrb r0, [r5, #0x15]
	add r4, r4, #1
	cmp r4, r0
	blt _0217981C
_02179832:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _02179842
	ldr r0, [r5, #0x38]
	mov r1, #0
	mov r2, #0
	bl sub_02184110
_02179842:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217980c

	thumb_func_start ovy33_2179844
ovy33_2179844: ; 0x02179844
	push {r3, lr}
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _02179854
	ldr r0, [r0, #0x38]
	bl sub_02184134
	pop {r3, pc}
_02179854:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy33_2179844

	thumb_func_start ovy33_2179858
ovy33_2179858: ; 0x02179858
	push {r3, lr}
	bl sub_02016AD8
	bl sub_0201735C
	bl sub_0201FDFC
	pop {r3, pc}
	thumb_func_end ovy33_2179858

	thumb_func_start ovy33_2179868
ovy33_2179868: ; 0x02179868
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	ldr r2, _0217989C ; =ovy33_21798a0
	mov r1, #0
	mov r3, #0x14
	add r5, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4, #4]
	add r0, r5, #0
	str r7, [r4, #0x10]
	bl sub_02016AD8
	str r0, [r4, #8]
	ldr r0, [sp]
	strh r6, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217989C: .word ovy33_21798a0
	thumb_func_end ovy33_2179868

	thumb_func_start ovy33_21798a0
ovy33_21798a0: ; 0x021798A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021798B2
	cmp r0, #1
	beq _021798D4
	b _021798EE
_021798B2:
	add r0, r2, #0
	add r0, #8
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _021798F4 ; =0x00000100
	ldr r3, _021798F8 ; =0x021BD8E4
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021798EE
_021798D4:
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	beq _021798E0
	cmp r0, #1
	beq _021798E4
	b _021798EA
_021798E0:
	mov r1, #0
	b _021798E6
_021798E4:
	mov r1, #1
_021798E6:
	ldr r0, [r2, #0x10]
	strh r1, [r0]
_021798EA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021798EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021798F4: .word 0x00000100
_021798F8: .word 0x021BD8E4
	thumb_func_end ovy33_21798a0

	thumb_func_start ovy33_21798fc
ovy33_21798fc: ; 0x021798FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #3
	bhi _021799AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02179916: ; jump table
	.short _0217991E - _02179916 - 2 ; case 0
	.short _02179974 - _02179916 - 2 ; case 1
	.short _02179984 - _02179916 - 2 ; case 2
	.short _021799A6 - _02179916 - 2 ; case 3
_0217991E:
	ldr r0, _021799B4 ; =0x0000055B
	bl GFL_SndSEPlay
	ldr r0, [r5, #4]
	bl sub_021804F0
	add r1, sp, #0x10
	bl sub_0219A664
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r1, r2, r0
	str r1, [sp]
	add r1, r2, r0
	ldr r2, [sp, #0x10]
	str r1, [sp, #4]
	sub r1, r2, r0
	add r0, r2, r0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	bl sub_021804D4
	bl sub_021852F0
	mov r1, #4
	add r2, sp, #0
	add r6, r0, #0
	bl ovy36_2183eec
	add r1, r0, #0
	beq _0217996C
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r1, [r5, #8]
	bl ovy36_2183f50
_0217996C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021799AC
_02179974:
	ldr r0, _021799B4 ; =0x0000055B
	bl sub_020061B8
	bl sub_02006294
	cmp r0, #0
	bne _021799AC
	b _0217996C
_02179984:
	ldr r0, _021799B8 ; =0x0000055C
	bl GFL_SndSEPlay
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021799A4
	ldr r0, [r5, #4]
	bl sub_021804D4
	bl sub_021852F0
	ldr r1, [r5, #8]
	mov r2, #1
	mov r3, #2
	bl ovy36_2183f50
_021799A4:
	b _0217996C
_021799A6:
	add sp, #0x1c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021799AC:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021799B4: .word 0x0000055B
_021799B8: .word 0x0000055C
	thumb_func_end ovy33_21798fc

	thumb_func_start ovy33_21799bc
ovy33_21799bc: ; 0x021799BC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r3, r0, #0
	add r5, r1, #0
	add r1, r3, #0
	ldr r2, _021799E4 ; =ovy33_21798fc
	add r0, r5, #0
	mov r3, #0x14
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021799E4: .word ovy33_21798fc
	thumb_func_end ovy33_21799bc

	thumb_func_start ovy33_21799e8
ovy33_21799e8: ; 0x021799E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021799FC
	cmp r0, #1
	beq _02179A4C
	b _02179A52
_021799FC:
	ldr r0, [r4, #4]
	bl sub_021804F0
	add r1, sp, #0x10
	bl sub_0219A664
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r1, r2, r0
	str r1, [sp]
	add r1, r2, r0
	ldr r2, [sp, #0x10]
	str r1, [sp, #4]
	sub r1, r2, r0
	add r0, r2, r0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_021804D4
	bl sub_021852F0
	mov r1, #4
	add r2, sp, #0
	add r6, r0, #0
	bl ovy36_2183eec
	add r1, r0, #0
	beq _02179A44
	add r0, r6, #0
	mov r2, #1
	mov r3, #2
	str r1, [r4, #8]
	bl ovy36_2183f50
_02179A44:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02179A52
_02179A4C:
	add sp, #0x1c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02179A52:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy33_21799e8

	thumb_func_start ovy33_2179a58
ovy33_2179a58: ; 0x02179A58
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r3, r0, #0
	add r5, r1, #0
	add r1, r3, #0
	ldr r2, _02179A80 ; =ovy33_21799e8
	add r0, r5, #0
	mov r3, #0x14
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02179A80: .word ovy33_21799e8
	thumb_func_end ovy33_2179a58

	thumb_func_start ovy33_2179a84
ovy33_2179a84: ; 0x02179A84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _02179A9C
	cmp r1, #1
	beq _02179AF8
	cmp r1, #2
	beq _02179B12
	b _02179B18
_02179A9C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02179AA8
	ldr r0, _02179B20 ; =0x0000055D
	bl GFL_SndSEPlay
_02179AA8:
	ldr r0, [r4, #4]
	bl sub_021804F0
	add r1, sp, #0x10
	bl sub_0219A664
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r1, r2, r0
	str r1, [sp]
	add r1, r2, r0
	ldr r2, [sp, #0x10]
	str r1, [sp, #4]
	sub r1, r2, r0
	add r0, r2, r0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_021804D4
	bl sub_021852F0
	mov r1, #4
	add r2, sp, #0
	add r6, r0, #0
	bl ovy36_2183eec
	add r1, r0, #0
	beq _02179AF0
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	str r1, [r4, #8]
	bl ovy36_2183f50
_02179AF0:
	ldr r0, [r5]
	add r0, r0, #1
_02179AF4:
	str r0, [r5]
	b _02179B18
_02179AF8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02179B0E
	ldr r0, _02179B20 ; =0x0000055D
	bl sub_020061B8
	bl sub_02006294
	cmp r0, #0
	bne _02179B18
	b _02179AF0
_02179B0E:
	add r0, r1, #1
	b _02179AF4
_02179B12:
	add sp, #0x1c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02179B18:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02179B20: .word 0x0000055D
	thumb_func_end ovy33_2179a84

	thumb_func_start ovy33_2179b24
ovy33_2179b24: ; 0x02179B24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r3, #0
	add r7, r0, #0
	add r5, r1, #0
	ldr r2, _02179B50 ; =ovy33_2179a84
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0x14
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r6, [r0, #0x10]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02179B50: .word ovy33_2179a84
	thumb_func_end ovy33_2179b24

	thumb_func_start ovy33_2179b54
ovy33_2179b54: ; 0x02179B54
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldr r2, _02179B74 ; =ovy33_2179b78
	add r5, r0, #0
	mov r3, #0x38
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r2, r4, #0
	bl ovy33_2179c38
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02179B74: .word ovy33_2179b78
	thumb_func_end ovy33_2179b54

	thumb_func_start ovy33_2179b78
ovy33_2179b78: ; 0x02179B78
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _02179C2A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02179B92: ; jump table
	.short _02179B9C - _02179B92 - 2 ; case 0
	.short _02179BC2 - _02179B92 - 2 ; case 1
	.short _02179BEA - _02179B92 - 2 ; case 2
	.short _02179C02 - _02179B92 - 2 ; case 3
	.short _02179C20 - _02179B92 - 2 ; case 4
_02179B9C:
	ldrh r0, [r4, #0x16]
	mov r1, #0xf
	blx sub_0208D65C
	cmp r1, #0
	bne _02179C2A
	add r0, r4, #0
	bl ovy33_2179ce4
	ldrb r1, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	bhi _02179C2A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
_02179BBC:
	bl sub_02179CDC
	b _02179C2A
_02179BC2:
	ldrh r0, [r4, #0x16]
	cmp r0, #0xa
	bls _02179C2A
	add r0, r4, #0
	bl ovy33_2179d44
	ldr r0, [r4, #4]
	bl sub_021804BC
	ldr r1, _02179C34 ; =0x00000514
	bl sub_0202FAB4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	b _02179BBC
_02179BEA:
	add r0, r4, #0
	bl ovy33_2179da4
	cmp r0, #0
	beq _02179C2A
	add r0, r4, #0
	bl ovy33_2179d7c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	b _02179BBC
_02179C02:
	ldr r0, [r4, #4]
	bl sub_021804BC
	mov r1, #0
	mov r2, #6
	bl sub_0202F8A4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	b _02179BBC
_02179C20:
	add r0, r4, #0
	bl ovy33_2179cbc
	mov r0, #1
	pop {r4, r5, r6, pc}
_02179C2A:
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02179C34: .word 0x00000514
	thumb_func_end ovy33_2179b78

	thumb_func_start ovy33_2179c38
ovy33_2179c38: ; 0x02179C38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r1, #0
	add r7, r2, #0
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804C0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804D4
	strh r4, [r5]
	mov r4, #0
	strb r7, [r5, #0x14]
	str r6, [r5, #4]
	strb r4, [r5, #0x15]
	bl sub_021852F0
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0x14]
	str r4, [r5, #0x34]
	cmp r0, #6
	bls _02179C70
	mov r0, #6
	strb r0, [r5, #0x14]
_02179C70:
	ldr r0, [r5, #4]
	bl sub_021804F0
	add r1, sp, #0x14
	bl sub_0219A664
	mov r0, #5
	ldr r2, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r1, r2, r0
	str r1, [sp, #4]
	add r1, r2, r0
	ldr r2, [sp, #0x14]
	str r1, [sp, #8]
	sub r1, r2, r0
	add r0, r2, r0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, sp, #4
	mov r2, #3
	add r3, sp, #0
	bl ovy36_2183e40
	add r4, r0, #0
	beq _02179CB2
	ldr r0, [r4]
	str r0, [r5, #0x34]
	add r5, #8
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy36_2183f84
_02179CB2:
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2179c38

	thumb_func_start ovy33_2179cbc
ovy33_2179cbc: ; 0x02179CBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	mov r4, #0
	cmp r0, #0
	ble _02179CDA
_02179CC8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_021840E4
	ldrb r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _02179CC8
_02179CDA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_2179cbc

	thumb_func_start sub_02179CDC
sub_02179CDC: ; 0x02179CDC
	str r2, [r1]
	mov r1, #0
	strh r1, [r0, #0x16]
	bx lr
	thumb_func_end sub_02179CDC

	thumb_func_start ovy33_2179ce4
ovy33_2179ce4: ; 0x02179CE4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldrb r4, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	cmp r0, r4
	bls _02179D38
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	add r3, sp, #0x18
	bl sub_020507D4
	mov r1, #0xc
	add r0, r5, #0
	ldr r2, _02179D3C ; =0x0217C4D8
	mul r1, r4
	add r6, sp, #0
	add r1, r2, r1
	add r0, #8
	add r2, r6, #0
	bl VEC_Add
	ldr r0, [r5, #0x18]
	mov r1, #0x62
	add r2, r6, #0
	bl sub_02184074
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #0x1c]
	ldrb r0, [r5, #0x15]
	add r0, r0, #1
	strb r0, [r5, #0x15]
	ldr r0, _02179D40 ; =0x00000568
	bl GFL_SndSEPlay
_02179D38:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02179D3C: .word 0x0217C4D8
_02179D40: .word 0x00000568
	thumb_func_end ovy33_2179ce4

	thumb_func_start ovy33_2179d44
ovy33_2179d44: ; 0x02179D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x15]
	mov r4, #0
	cmp r0, #0
	ble _02179D68
	add r6, r4, #0
_02179D52:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02184110
	ldrb r0, [r5, #0x15]
	add r4, r4, #1
	cmp r4, r0
	blt _02179D52
_02179D68:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02179D78
	ldr r0, [r5, #0x18]
	mov r2, #0
	mov r3, #0
	bl ovy36_2183f50
_02179D78:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2179d44

	thumb_func_start ovy33_2179d7c
ovy33_2179d7c: ; 0x02179D7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x15]
	mov r4, #0
	cmp r0, #0
	ble _02179DA2
	add r6, r4, #0
	mov r7, #3
_02179D8C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02184110
	ldrb r0, [r5, #0x15]
	add r4, r4, #1
	cmp r4, r0
	blt _02179D8C
_02179DA2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_2179d7c

	thumb_func_start ovy33_2179da4
ovy33_2179da4: ; 0x02179DA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x15]
	mov r4, #0
	cmp r0, #0
	ble _02179DCE
	add r6, r4, #0
_02179DB2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r6, #0
	bl sub_02184158
	cmp r0, #1
	beq _02179DC6
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02179DC6:
	ldrb r0, [r5, #0x15]
	add r4, r4, #1
	cmp r4, r0
	blt _02179DB2
_02179DCE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_2179da4

	thumb_func_start ovy33_2179dd4
ovy33_2179dd4: ; 0x02179DD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [sp, #4]
	ldr r2, _02179E20 ; =ovy33_2179e28
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	str r0, [sp, #8]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r5, [r4]
	str r0, [r4, #4]
	str r6, [r4, #0xc]
	mov r0, #0x4a
	str r0, [sp]
	ldr r3, _02179E24 ; =0x0217C610
	mov r0, #4
	mov r1, #8
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r4, #8]
	str r7, [r0]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02179E20: .word ovy33_2179e28
_02179E24: .word 0x0217C610
	thumb_func_end ovy33_2179dd4

	thumb_func_start ovy33_2179e28
ovy33_2179e28: ; 0x02179E28
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _02179E3E
	cmp r0, #1
	beq _02179E5E
	b _02179E70
_02179E3E:
	ldr r0, [r4, #8]
	ldr r2, _02179E78 ; =0x0000013F
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, _02179E7C ; =0x0219F6F8
	bl sub_020195C0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02179E70
_02179E5E:
	add r0, r4, #0
	bl sub_02179E80
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02179E70:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02179E78: .word 0x0000013F
_02179E7C: .word 0x0219F6F8
	thumb_func_end ovy33_2179e28

	thumb_func_start sub_02179E80
sub_02179E80: ; 0x02179E80
	ldr r1, [r0, #8]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02179E90
	ldr r0, [r0, #0xc]
	mov r1, #0
	strh r1, [r0]
	bx lr
_02179E90:
	mov r1, #1
	ldr r0, [r0, #0xc]
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02179E80

	thumb_func_start ovy33_2179e98
ovy33_2179e98: ; 0x02179E98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02008F00
	bl sub_020090F4
	ldr r2, _02179EF8 ; =0x0217C520
	mov r3, #0
_02179EB2:
	lsl r4, r3, #2
	ldrh r1, [r2, r4]
	cmp r0, r1
	bne _02179ED0
	add r0, r6, #0
	bl sub_021804C0
	ldr r1, _02179EFC ; =0x0217C522
	add r3, r0, #0
	ldrh r1, [r1, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy12_215366c
	pop {r4, r5, r6, pc}
_02179ED0:
	add r3, r3, #1
	cmp r3, #5
	blo _02179EB2
	mov r1, #0x7d
	lsl r1, r1, #2
	cmp r0, r1
	bls _02179EF2
	add r0, r6, #0
	bl sub_021804C0
	add r3, r0, #0
	ldr r1, _02179F00 ; =0x000028EB
	add r0, r5, #0
	mov r2, #0
	bl ovy12_215366c
	pop {r4, r5, r6, pc}
_02179EF2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02179EF8: .word 0x0217C520
_02179EFC: .word 0x0217C522
_02179F00: .word 0x000028EB
	thumb_func_end ovy33_2179e98

	thumb_func_start ovy33_2179f04
ovy33_2179f04: ; 0x02179F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _02179FD6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02179F20: ; jump table
	.short _02179F2A - _02179F20 - 2 ; case 0
	.short _02179F5C - _02179F20 - 2 ; case 1
	.short _02179F6E - _02179F20 - 2 ; case 2
	.short _02179FAC - _02179F20 - 2 ; case 3
	.short _02179FBE - _02179F20 - 2 ; case 4
_02179F2A:
	ldr r0, [r4, #4]
	bl sub_02180578
	mov r1, #0
	add r6, r0, #0
	ldr r0, _02179FDC ; =0xFFFC0000
	str r1, [sp, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #0x28
	add r2, sp, #4
	bl sub_021C14A0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl sub_021C09E4
	mov r0, #8
	str r0, [r4, #0xc]
_02179F54:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02179FD6
_02179F5C:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	bgt _02179FD6
	ldr r0, _02179FE0 ; =0x0000063C
	bl GFL_SndSEPlay
	b _02179F54
_02179F6E:
	ldr r0, _02179FE0 ; =0x0000063C
	bl sub_020061B8
	bl sub_02006294
	cmp r0, #0
	bne _02179FD6
	ldr r0, [r4, #4]
	bl sub_021804F0
	add r6, r0, #0
	bl sub_0219A6A0
	add r0, r6, #0
	mov r1, #3
	bl sub_0219A6D0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl sub_021C3D50
	add r1, sp, #0
	ldrh r1, [r1]
	ldr r0, [r4]
	bl ovy35_217dde8
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	b _02179F54
_02179FAC:
	ldr r0, [r4, #4]
	bl sub_021804F0
	bl sub_0219A6A0
	mov r1, #8
	bl ovy12_2166e88
	b _02179F54
_02179FBE:
	ldr r0, [r4, #4]
	bl sub_021804F0
	bl sub_0219A6A0
	bl sub_02166ECC
	cmp r0, #0
	beq _02179FD6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02179FD6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02179FDC: .word 0xFFFC0000
_02179FE0: .word 0x0000063C
	thumb_func_end ovy33_2179f04

	thumb_func_start ovy33_2179fe4
ovy33_2179fe4: ; 0x02179FE4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	bl sub_02180578
	str r0, [sp]
	ldr r0, [r5]
	cmp r0, #3
	bhi _0217A098
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217A006: ; jump table
	.short _0217A00E - _0217A006 - 2 ; case 0
	.short _0217A06C - _0217A006 - 2 ; case 1
	.short _0217A07A - _0217A006 - 2 ; case 2
	.short _0217A094 - _0217A006 - 2 ; case 3
_0217A00E:
	ldr r0, _0217A09C ; =0x0000063C
	bl GFL_SndSEPlay
	mov r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0217A064
	ldr r0, [r4, #4]
	bl sub_021804A0
	add r6, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x14
	mov r2, #3
	bl sub_021C0E94
	add r7, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0xc
	mov r2, #3
	bl sub_021C0E08
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	mov r2, #0
	bl sub_021C09E4
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021C09E4
	add r0, r6, #0
	bl sub_02197620
	add r2, r0, #0
	ldr r1, _0217A0A0 ; =0x00007F0F
	add r0, r6, #0
	mov r3, #0x1a
	bl sub_02197648
_0217A064:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0217A098
_0217A06C:
	ldr r0, [r4, #4]
	bl sub_021804F0
	mov r1, #2
	bl sub_0219A6D0
	b _0217A064
_0217A07A:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	bgt _0217A098
	ldr r0, [r4]
	bl ovy35_217dd9c
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	b _0217A064
_0217A094:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217A098:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217A09C: .word 0x0000063C
_0217A0A0: .word 0x00007F0F
	thumb_func_end ovy33_2179fe4

	thumb_func_start ovy33_217a0a4
ovy33_217a0a4: ; 0x0217A0A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0217A0C8 ; =ovy33_2179f04
	add r4, r1, #0
	mov r1, #0
	mov r3, #0x10
	add r5, r0, #0
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	str r7, [r0, #8]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217A0C8: .word ovy33_2179f04
	thumb_func_end ovy33_217a0a4

	thumb_func_start ovy33_217a0cc
ovy33_217a0cc: ; 0x0217A0CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0217A0F0 ; =ovy33_2179fe4
	mov r1, #0
	mov r3, #0x10
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #8]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217A0F0: .word ovy33_2179fe4
	thumb_func_end ovy33_217a0cc

	thumb_func_start ovy33_217a0f4
ovy33_217a0f4: ; 0x0217A0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r1, #0
	ldr r2, _0217A140 ; =ovy33_217a184
	mov r1, #0
	mov r3, #4
	add r6, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, _0217A144 ; =0x00000083
	bl sub_0203CE0C
	add r0, r5, #0
	bl sub_021804F0
	str r0, [sp, #4]
	bl sub_0219A6A0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0219A688
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl sub_021EEC80
	str r0, [r4]
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217A140: .word ovy33_217a184
_0217A144: .word 0x00000083
	thumb_func_end ovy33_217a0f4

	thumb_func_start ovy33_217a148
ovy33_217a148: ; 0x0217A148
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	ldr r2, _0217A17C ; =ovy33_217a184
	mov r1, #0
	mov r3, #4
	add r5, r0, #0
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, _0217A180 ; =0x00000083
	bl sub_0203CE0C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_021EEC80
	str r0, [r4]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217A17C: .word ovy33_217a184
_0217A180: .word 0x00000083
	thumb_func_end ovy33_217a148

	thumb_func_start ovy33_217a184
ovy33_217a184: ; 0x0217A184
	push {r4, lr}
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021EED2C
	cmp r0, #0
	beq _0217A1A6
	ldr r0, [r4]
	bl sub_021EED18
	ldr r0, _0217A1AC ; =0x00000083
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, pc}
_0217A1A6:
	mov r0, #0
	pop {r4, pc}
	nop
_0217A1AC: .word 0x00000083
	thumb_func_end ovy33_217a184

	thumb_func_start ovy33_217a1b0
ovy33_217a1b0: ; 0x0217A1B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp]
	bl sub_02155184
	add r6, r0, #0
	bl sub_02153EA8
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_021804C0
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy12_2154910
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_021804F0
	add r1, sp, #4
	bl sub_0219A664
	ldr r0, [r5, #4]
	add r1, r4, #0
	add r2, sp, #4
	add r3, r7, #0
	bl ovy33_217a298
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02154044
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_217a1b0

	thumb_func_start ovy33_217a200
ovy33_217a200: ; 0x0217A200
	push {r4, lr}
	add r0, r1, #0
	bl sub_02155184
	add r4, r0, #0
	bl sub_0215404C
	bl sub_0217A2F0
	add r0, r4, #0
	mov r1, #0
	bl sub_02154044
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_217a200

	thumb_func_start ovy33_217a220
ovy33_217a220: ; 0x0217A220
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215404C
	add r1, r5, #0
	bl ovy33_217a300
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy33_217a220

	thumb_func_start ovy33_217a248
ovy33_217a248: ; 0x0217A248
	push {r3, lr}
	ldr r0, [r2]
	bl sub_0217A34C
	cmp r0, #1
	bne _0217A258
	mov r0, #1
	pop {r3, pc}
_0217A258:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy33_217a248

	thumb_func_start ovy33_217a25c
ovy33_217a25c: ; 0x0217A25C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	ldr r2, _0217A294 ; =ovy33_217a248
	mov r1, #0
	mov r3, #4
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215404C
	str r0, [r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217A294: .word ovy33_217a248
	thumb_func_end ovy33_217a25c

	thumb_func_start ovy33_217a298
ovy33_217a298: ; 0x0217A298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	bl sub_021804B8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02180564
	add r1, r0, #0
	mov r0, #0
	ldr r2, _0217A2EC ; =0x0217C54C
	mvn r0, r0
	bl sub_021B437C
	add r7, r0, #0
	bl sub_021B4458
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	add r1, r0, #0
	str r7, [r4, r0]
	add r1, #0x14
	add r0, r0, #4
	strh r6, [r4, r1]
	add r2, r4, r0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ovy12_2167a14
	str r0, [r4]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217A2EC: .word 0x0217C54C
	thumb_func_end ovy33_217a298

	thumb_func_start sub_0217A2F0
sub_0217A2F0: ; 0x0217A2F0
	mov r1, #0x62
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0217A2FC ; =sub_021B4408
	bx r3
	nop
_0217A2FC: .word sub_021B4408
	thumb_func_end sub_0217A2F0

	thumb_func_start ovy33_217a300
ovy33_217a300: ; 0x0217A300
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r5, #4
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r6, r1, #0
	add r0, #0x1c
	ldrh r0, [r5, r0]
	mov r1, #0xc8
	add r2, r6, #0
	mov r3, #0xa
	mov r4, #0xc8
	bl sub_02015B34
	mov r1, #0xc8
	add r1, #0xbc
	str r0, [r5, r1]
	mov r1, #0xc8
	add r4, #0xc4
	mov r7, #1
	add r1, #0xd2
	strb r7, [r5, r1]
	mov r1, #0xc8
	add r1, #0xd1
	strb r6, [r5, r1]
	ldr r1, [r5]
	add r2, r5, r4
	bl ovy33_217a3f4
	ldr r0, [r5]
	lsl r1, r7, #0xf
	bl sub_02166FE8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217a300

	thumb_func_start sub_0217A34C
sub_0217A34C: ; 0x0217A34C
	ldr r1, _0217A35C ; =0x0000019A
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0217A358
	mov r0, #1
	bx lr
_0217A358:
	mov r0, #0
	bx lr
	.align 2, 0
_0217A35C: .word 0x0000019A
	thumb_func_end sub_0217A34C

	thumb_func_start ovy33_217a360
ovy33_217a360: ; 0x0217A360
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0217A3E8 ; =0x0000019A
	add r5, r2, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _0217A3E2
	cmp r0, #1
	bne _0217A3E2
	add r0, r4, #0
	sub r0, #0x16
	mov r6, #1
	lsl r6, r6, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02015C48
	cmp r0, #0
	bne _0217A398
	add r0, r4, #0
	sub r0, #0x16
	sub r4, #0xe
	ldr r0, [r5, r0]
	ldr r1, [r5]
	add r2, r5, r4
	bl ovy33_217a3f4
	b _0217A3DC
_0217A398:
	add r0, r4, #0
	sub r0, #0x16
	ldr r0, [r5, r0]
	bl sub_02015C10
	add r0, r4, #0
	mov r1, #0
	sub r0, #0x16
	str r1, [r5, r0]
	strb r1, [r5, r4]
	add r7, sp, #0
	ldr r0, [r5]
	add r1, r7, #0
	bl sub_021672F8
	ldr r0, [r5]
	bl sub_02167078
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r7, #0
	bl ovy12_2167bcc
	sub r0, r4, #1
	ldrb r0, [r5, r0]
	lsl r1, r0, #2
	ldr r0, _0217A3EC ; =0x0217C534
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0217A3DC
	ldr r0, [r5]
	lsl r1, r6, #3
	bl sub_02166FF0
_0217A3DC:
	ldr r0, [r5]
	bl ovy12_21671c4
_0217A3E2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217A3E8: .word 0x0000019A
_0217A3EC: .word 0x0217C534
	thumb_func_end ovy33_217a360
_0217A3F0:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy33_217a3f4
ovy33_217a3f4: ; 0x0217A3F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r1, r7, #0
	add r6, r2, #0
	bl sub_02015CD0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02015CF8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r7, #0
	bl VEC_Add
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02167308
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0217A444
	bge _0217A462
	ldr r1, _0217A494 ; =0xFFF4C000
	cmp r0, r1
	bgt _0217A43A
	bge _0217A47A
	ldr r1, _0217A498 ; =0xFFEF2000
	cmp r0, r1
	beq _0217A46E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A43A:
	asr r1, r1, #1
	cmp r0, r1
	beq _0217A486
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A444:
	mov r1, #0x2d
	lsl r1, r1, #0xe
	cmp r0, r1
	bgt _0217A458
	bge _0217A47A
	lsr r1, r1, #1
	cmp r0, r1
	beq _0217A46E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A458:
	ldr r1, _0217A49C ; =0x0010E000
	cmp r0, r1
	beq _0217A486
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A462:
	add r0, r4, #0
	mov r1, #1
	bl ovy12_216708c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A46E:
	add r0, r4, #0
	mov r1, #3
	bl ovy12_216708c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A47A:
	add r0, r4, #0
	mov r1, #0
	bl ovy12_216708c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0217A486:
	add r0, r4, #0
	mov r1, #2
	bl ovy12_216708c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217A494: .word 0xFFF4C000
_0217A498: .word 0xFFEF2000
_0217A49C: .word 0x0010E000
	thumb_func_end ovy33_217a3f4

	thumb_func_start ovy33_217a4a0
ovy33_217a4a0: ; 0x0217A4A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x104
	add r5, r0, #0
	mov r0, #0x5f
	ldr r7, _0217A52C ; =0x0217C624
	str r0, [sp]
	lsl r0, r5, #0x10
	add r6, r1, #0
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	lsl r0, r5, #0x10
	lsr r2, r0, #0x10
	strh r2, [r4]
	str r6, [r4, #4]
	mov r0, #0x6c
	str r0, [sp]
	mov r0, #0xa3
	add r1, r6, #0
	mov r3, #0
	bl sub_0204A950
	str r0, [r4, #8]
	mov r0, #0x67
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xdc
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02008B0C
	str r0, [r4, #0x10]
	bl sub_02008B40
	ldr r1, [r4, #8]
	add r0, r5, #0
	ldr r1, [r1, #0x68]
	bl ovy33_217a568
	add r6, sp, #4
	add r5, r0, #0
	add r1, r6, #0
	mov r2, #0x80
	bl sub_020486B8
	add r0, r5, #0
	bl GFL_StrBufFree
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl sub_02008B74
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [r1, #0x50]
	bl sub_02008BEC
	add r0, r4, #0
	add sp, #0x104
	pop {r4, r5, r6, r7, pc}
	nop
_0217A52C: .word 0x0217C624
	thumb_func_end ovy33_217a4a0

	thumb_func_start ovy33_217a530
ovy33_217a530: ; 0x0217A530
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	ldr r0, [r4, #0xc]
	bl GFL_HeapFree
	ldr r0, [r4, #0x10]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_217a530
_0217A550:
	.byte 0x80, 0x68, 0x40, 0x68, 0x70, 0x47, 0x00, 0x00, 0x80, 0x68, 0xC0, 0x6D, 0x70, 0x47, 0x00, 0x00
	.byte 0x80, 0x68, 0x00, 0x6E, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy33_217a568
ovy33_217a568: ; 0x0217A568
	push {r3, r4, r5, lr}
	add r3, r0, #0
	lsl r3, r3, #0x10
	add r5, r1, #0
	mov r0, #0
	mov r1, #2
	mov r2, #0x25
	lsr r3, r3, #0x10
	bl GFL_MsgSysLoadData
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0204898C
	add r5, r0, #0
	add r0, r4, #0
	bl GFL_MsgDataFree
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy33_217a568

	thumb_func_start ovy33_217a590
ovy33_217a590: ; 0x0217A590
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r3, #0
	ldr r3, [r4, #0x30]
	str r0, [sp, #0x10]
	add r6, r1, #0
	add r5, r2, #0
	cmp r3, #0xff
	bne _0217A5A4
	mov r3, #2
_0217A5A4:
	ldr r0, [r4, #0x28]
	mov r7, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D6F8
	sub r1, r7, #1
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r4, #0x34]
	add r0, r5, #0
	str r7, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201C464
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x6f
	bl sub_0201CD1C
	add r0, r5, #0
	bl ovy33_217a714
	ldr r1, [r4, #0x64]
	add r0, r6, #0
	bl ovy33_217a568
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r2, [r4, #0x10]
	cmp r2, #0xff
	beq _0217A614
	add r0, r5, #0
	mov r1, #0x46
	bl sub_0201CD1C
_0217A614:
	ldr r2, [r4, #0x14]
	cmp r2, #0xff
	beq _0217A622
	add r0, r5, #0
	mov r1, #0x47
	bl sub_0201CD1C
_0217A622:
	ldr r2, [r4, #0x18]
	cmp r2, #0xff
	beq _0217A630
	add r0, r5, #0
	mov r1, #0x48
	bl sub_0201CD1C
_0217A630:
	ldr r2, [r4, #0x1c]
	cmp r2, #0xff
	beq _0217A63E
	add r0, r5, #0
	mov r1, #0x49
	bl sub_0201CD1C
_0217A63E:
	ldr r2, [r4, #0x20]
	cmp r2, #0xff
	beq _0217A64C
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_0201CD1C
_0217A64C:
	ldr r2, [r4, #0x24]
	cmp r2, #0xff
	beq _0217A65A
	add r0, r5, #0
	mov r1, #0x4b
	bl sub_0201CD1C
_0217A65A:
	ldr r0, [r4, #0x28]
	cmp r0, #2
	bne _0217A66A
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_0201DA94
_0217A66A:
	ldr r2, [r4, #0x2c]
	cmp r2, #0xff
	beq _0217A678
	add r0, r5, #0
	mov r1, #0x70
	bl sub_0201CD1C
_0217A678:
	ldr r2, [r4, #0x38]
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0201CD1C
	ldr r2, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #0x14
	bl sub_0201CD1C
	ldr r2, [r4, #0x40]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_0201CD1C
	ldr r2, [r4, #0x44]
	add r0, r5, #0
	mov r1, #0x16
	bl sub_0201CD1C
	ldr r2, [r4, #0x48]
	add r0, r5, #0
	mov r1, #0x17
	bl sub_0201CD1C
	ldr r2, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	ldr r1, [r4, #0x68]
	add r0, r6, #0
	bl ovy33_217a568
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r2, [r4, #0x50]
	add r0, r5, #0
	mov r1, #0x9a
	bl sub_0201CD1C
	ldr r2, [r4, #0x58]
	add r0, r5, #0
	mov r1, #0xc
	bl sub_0201CD1C
	ldr r0, [sp, #0x10]
	bl sub_0201736C
	add r2, r0, #0
	ldr r3, _0217A710 ; =0x00007532
	add r0, r5, #0
	mov r1, #1
	str r6, [sp]
	bl sub_02035964
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x46
	bl sub_0201CD1C
	add r0, r5, #0
	bl ovy33_217a714
	add r0, r5, #0
	bl sub_0201D5F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217A710: .word 0x00007532
	thumb_func_end ovy33_217a590

	thumb_func_start ovy33_217a714
ovy33_217a714: ; 0x0217A714
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl sub_0201CCF8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_217a714

	thumb_func_start sub_0217A864
sub_0217A864: ; 0x0217A864
	bx lr
	.align 2, 0
	thumb_func_end sub_0217A864

	thumb_func_start ovy33_217a868
ovy33_217a868: ; 0x0217A868
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	str r0, [sp, #0xc]
	ldr r0, [r4]
	add r5, r1, #0
	str r0, [sp, #0x10]
	ldr r6, [r4, #4]
	ldr r7, [r4, #8]
	bl sub_02016AF0
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0xd]
	add r0, r7, #0
	bl sub_0201FF08
	str r0, [sp, #0x18]
	ldr r0, [r5]
	cmp r0, #4
	bls _0217A892
	b _0217A9BA
_0217A892:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217A89E: ; jump table
	.short _0217A8A8 - _0217A89E - 2 ; case 0
	.short _0217A8D8 - _0217A89E - 2 ; case 1
	.short _0217A914 - _0217A89E - 2 ; case 2
	.short _0217A940 - _0217A89E - 2 ; case 3
	.short _0217A9A4 - _0217A89E - 2 ; case 4
_0217A8A8:
	ldrb r1, [r4, #0xc]
	mov r0, #4
	bl ovy33_217a4a0
	add r3, r0, #0
	ldrb r0, [r4, #0xc]
	str r3, [r4, #0x10]
	mov r1, #4
	str r0, [sp]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #8]
	add r0, r6, #0
	bl ovy33_217a590
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl ovy33_217a714
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #8]
	bl sub_0217A864
	mov r0, #1
_0217A8D6:
	b _0217A93C
_0217A8D8:
	ldr r0, [sp, #0x10]
	bl sub_02016AF0
	add r7, r0, #0
	add r0, r6, #0
	str r6, [r4, #0x44]
	bl sub_0201736C
	str r0, [r4, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #0x10]
	str r0, [r4, #0x48]
	ldr r0, [r1, #0x10]
	ldr r2, _0217A9C0 ; =0x000000C2
	str r0, [r4, #0x54]
	ldr r0, [r1, #0xc]
	ldr r3, _0217A9C4 ; =0x021C63AC
	str r0, [r4, #0x4c]
	add r4, #0x14
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	str r4, [sp]
	bl sub_020195C0
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02016D68
	mov r0, #2
	b _0217A8D6
_0217A914:
	ldr r2, [r4, #0x10]
	ldrb r1, [r4, #0xd]
	ldr r2, [r2, #0xc]
	add r0, r7, #0
	bl sub_0201FF14
	add r0, r6, #0
	bl sub_0200D190
	ldr r1, [r4, #0x10]
	add r6, r0, #0
	ldr r1, [r1, #0xc]
	bl sub_0200D72C
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	ldr r1, [r1, #0xc]
	bl sub_0200D568
_0217A93A:
	mov r0, #4
_0217A93C:
	str r0, [r5]
	b _0217A9BA
_0217A940:
	add r0, r6, #0
	bl sub_020173AC
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	mov r2, #1
	mov r3, #0
	bl sub_02020788
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _0217A9A2
	ldr r0, _0217A9C8 ; =0x000001FF
	ldr r3, _0217A9CC ; =0x0217C624
	str r0, [sp]
	mov r0, #4
	mov r1, #0x14
	mov r2, #0
	bl GFL_HeapAllocate
	str r6, [r0]
	ldr r1, [sp, #0x1c]
	str r7, [r0, #4]
	strh r1, [r0, #8]
	ldrb r1, [r4, #0xd]
	ldr r2, _0217A9D0 ; =0x0000011C
	ldr r3, _0217A9D4 ; =0x021E7D9C
	strb r1, [r0, #0xa]
	ldr r1, [sp, #0x20]
	strb r1, [r0, #0xb]
	mov r1, #1
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r0, [r4, #0x58]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_020195C0
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02016D68
_0217A9A2:
	b _0217A93A
_0217A9A4:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _0217A9AE
	bl GFL_HeapFree
_0217A9AE:
	ldr r0, [r4, #0x10]
	bl ovy33_217a530
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217A9BA:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217A9C0: .word 0x000000C2
_0217A9C4: .word 0x021C63AC
_0217A9C8: .word 0x000001FF
_0217A9CC: .word 0x0217C624
_0217A9D0: .word 0x0000011C
_0217A9D4: .word 0x021E7D9C
	thumb_func_end ovy33_217a868

	thumb_func_start ovy33_217a9d8
ovy33_217a9d8: ; 0x0217A9D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_0201735C
	str r0, [sp]
	ldr r2, _0217AA18 ; =ovy33_217a868
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x5c
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	str r5, [r0]
	ldr r1, [sp]
	str r7, [r0, #4]
	str r1, [r0, #8]
	strb r4, [r0, #0xc]
	strb r6, [r0, #0xd]
	mov r1, #0
	str r1, [r0, #0x58]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217AA18: .word ovy33_217a868
	thumb_func_end ovy33_217a9d8

	thumb_func_start ovy33_217aa1c
ovy33_217aa1c: ; 0x0217AA1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_020179A0
	add r7, r0, #0
	cmp r5, #0xe9
	bge _0217AA48
	add r0, r6, #0
	bl sub_02017934
	bl sub_02009B78
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy33_217aa50
	pop {r3, r4, r5, r6, r7, pc}
_0217AA48:
	bl sub_0200F12C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_217aa1c

	thumb_func_start ovy33_217aa50
ovy33_217aa50: ; 0x0217AA50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r4, #0
	add r7, r0, #0
	str r2, [sp]
	strb r2, [r5]
	strb r3, [r5, #2]
	strb r4, [r5, #1]
_0217AA60:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #6
	bl sub_02009D50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0217AABC
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02009E58
	add r6, r0, #0
	beq _0217AABC
	bl sub_02008C0C
	ldr r1, [sp]
	cmp r0, r1
	bne _0217AABC
	add r0, r6, #0
	bl sub_02008BF4
	cmp r0, #0xf
	bls _0217AAA0
	add r0, r6, #0
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	beq _0217AA9E
	mov r0, #0xf
	b _0217AAA0
_0217AA9E:
	mov r0, #0xb
_0217AAA0:
	ldrb r1, [r5, #1]
	add r1, r5, r1
	strb r4, [r1, #8]
	bl sub_0202B5D4
	ldrb r1, [r5, #1]
	add r1, r5, r1
	strb r0, [r1, #3]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #1]
	cmp r0, #5
	bhs _0217AAC2
_0217AABC:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0217AA60
_0217AAC2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217aa50
_0217AAC4:
	.byte 0xFF, 0x23, 0x05, 0x29, 0x04, 0xD2, 0x42, 0x78, 0x91, 0x42, 0x01, 0xD2
	.byte 0x40, 0x18, 0x03, 0x7A, 0x18, 0x1C, 0x70, 0x47

	thumb_func_start ovy33_217aad8
ovy33_217aad8: ; 0x0217AAD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r0, r1, #0
	add r6, r2, #0
	add r5, r3, #0
	mov r4, #0
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_02017934
	bl sub_02009B78
	str r0, [sp, #0xc]
	cmp r5, #5
	blt _0217AB00
	add sp, #0x10
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0217AB00:
	add r0, r6, r5
	ldrb r5, [r0, #8]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl ovy33_217ab8c
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_02009E58
	add r6, r0, #0
	bl MyStatus_GetTrainerGender
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl sub_02009D50
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02008BD0
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020179A0
	ldrb r0, [r0]
	bl sub_0202B488
	cmp r0, #0
	beq _0217AB44
	mov r4, #1
_0217AB44:
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x28]
	add r1, r6, #0
	add r2, r5, #0
	str r4, [sp]
	bl ovy33_217ab58
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_217aad8

	thumb_func_start ovy33_217ab58
ovy33_217ab58: ; 0x0217AB58
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0217AB64
	mov r4, #4
	b _0217AB66
_0217AB64:
	mov r4, #0x44
_0217AB66:
	cmp r2, #5
	bhs _0217AB70
	mov r5, #0xc
	mul r5, r2
	add r4, r4, r5
_0217AB70:
	cmp r0, #0
	beq _0217AB76
	add r4, r4, #6
_0217AB76:
	cmp r3, #0
	bne _0217AB86
	add r0, r1, #0
	mov r1, #5
	add r4, r4, #1
	blx sub_0208D868
	add r4, r4, r1
_0217AB86:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_217ab58

	thumb_func_start ovy33_217ab8c
ovy33_217ab8c: ; 0x0217AB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #8]
	add r0, r1, #0
	add r6, r2, #0
	bl sub_02017934
	bl sub_02009B78
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_020179A0
	ldrb r7, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02009E58
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_020245E0
	add r0, r7, #0
	bl sub_0202B488
	cmp r0, #0
	beq _0217ABDA
	ldr r0, [sp, #0xc]
	bl sub_02008C10
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02024630
_0217ABDA:
	ldr r0, [sp, #8]
	bl sub_0201736C
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl GFL_CopyVarForText
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02009D50
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r5, #0
	mov r1, #5
	lsr r2, r2, #0x10
	bl sub_020243D0
	add r0, r4, #0
	bl sub_02009D44
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl sub_02024754
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	bl GFL_CopyVarForText
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl sub_02009D50
	add r2, r0, #0
	bne _0217AC2C
	mov r2, #1
_0217AC2C:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #8
	mov r3, #3
	bl StringSetNumber
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_02009D50
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r5, #0
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_020243D0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_02009D50
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r5, #0
	mov r1, #0xa
	bl sub_02024754
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217ab8c

	thumb_func_start ovy33_217ac70
ovy33_217ac70: ; 0x0217AC70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0200EE20
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02016AD8
	bl sub_02017934
	mov r1, #0x5d
	mov r4, #0x5d
	ldr r3, _0217ACD0 ; =0x0217C630
	mov r0, #5
	add r1, #0xf7
	mov r2, #1
	str r4, [sp]
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r4, #0xc3
	mov r0, #5
	strh r0, [r5, r4]
	mov r4, #0x5f
	ldr r3, _0217ACD0 ; =0x0217C630
	mov r0, #5
	add r1, r7, #0
	mov r2, #1
	str r4, [sp]
	bl GFL_HeapAllocate
	mov r1, #0x5f
	add r1, #0xed
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy33_217acd4
	mov r0, #0x5f
	add r0, #0xc1
	ldrh r0, [r5, r0]
	bl sub_0201FD00
	add r4, #0xc9
	str r0, [r5, r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217ACD0: .word 0x0217C630
	thumb_func_end ovy33_217ac70

	thumb_func_start ovy33_217acd4
ovy33_217acd4: ; 0x0217ACD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	mov r0, #0x79
	str r0, [sp]
	ldr r0, _0217AD44 ; =0x00008004
	ldr r3, _0217AD48 ; =0x0217C630
	add r1, r0, #0
	lsr r5, r1, #4
	add r1, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r7, r0, #0
	ldr r2, _0217AD44 ; =0x00008004
	add r0, r4, #0
	mov r1, #5
	add r3, r7, #0
	str r5, [sp]
	bl sub_02007560
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	mov r5, #0
	bl sub_02007678
	str r0, [sp, #4]
	bl sub_0200EE38
	cmp r0, #0
	beq _0217AD2C
	ldr r0, [sp, #4]
	bl sub_0200EE64
	mov r5, #1
	cmp r0, #0
	bne _0217AD2C
	mov r5, #2
_0217AD2C:
	add r0, r4, #0
	mov r1, #5
	bl sub_020075E0
	add r0, r7, #0
	bl GFL_HeapFree
	mov r0, #0x15
	lsl r0, r0, #4
	str r5, [r6, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217AD44: .word 0x00008004
_0217AD48: .word 0x0217C630
	thumb_func_end ovy33_217acd4

	thumb_func_start ovy33_217ad4c
ovy33_217ad4c: ; 0x0217AD4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217AD74
	mov r5, #0x53
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	bl GFL_HeapFree
	ldr r0, [r4]
	sub r5, #0x24
	ldr r0, [r0, r5]
	bl GFL_HeapFree
	ldr r0, [r4]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4]
_0217AD74:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy33_217ad4c

	thumb_func_start ovy33_217ad78
ovy33_217ad78: ; 0x0217AD78
	push {r3, lr}
	add r2, r0, #0
	beq _0217ADBA
	cmp r1, #1
	bhi _0217AD9E
	cmp r1, #0
	bne _0217AD8C
	mov r3, #0
	mov r1, #3
	b _0217AD90
_0217AD8C:
	mov r3, #1
	mov r1, #4
_0217AD90:
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r3, [r2, r0]
	b _0217ADAC
_0217AD9E:
	mov r0, #0x4b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r1, #3
	sub r0, #8
	str r1, [r2, r0]
_0217ADAC:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	bl sub_0201FD34
_0217ADBA:
	pop {r3, pc}
	thumb_func_end ovy33_217ad78
_0217ADBC:
	.byte 0x13, 0x22, 0x12, 0x01
	.byte 0x81, 0x50, 0x70, 0x47

	thumb_func_start ovy33_217adc4
ovy33_217adc4: ; 0x0217ADC4
	push {r4, lr}
	mov r3, #0x13
	add r4, r1, #0
	lsl r3, r3, #4
	ldr r3, [r4, r3]
	cmp r3, #0
	beq _0217ADD8
	bl ovy33_217ae5c
	b _0217ADE0
_0217ADD8:
	add r0, r4, #0
	add r1, r2, #0
	bl ovy33_217ade8
_0217ADE0:
	add r0, r4, #0
	bl sub_0217AED0
	pop {r4, pc}
	thumb_func_end ovy33_217adc4

	thumb_func_start ovy33_217ade8
ovy33_217ade8: ; 0x0217ADE8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #4
	bhi _0217AE1E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217ADFE: ; jump table
	.short _0217AE08 - _0217ADFE - 2 ; case 0
	.short _0217AE0A - _0217ADFE - 2 ; case 1
	.short _0217AE10 - _0217ADFE - 2 ; case 2
	.short _0217AE14 - _0217ADFE - 2 ; case 3
	.short _0217AE1A - _0217ADFE - 2 ; case 4
_0217AE08:
	b _0217AE1E
_0217AE0A:
	mov r5, #0x6e
	mov r0, #0x32
	b _0217AE22
_0217AE10:
	mov r5, #0xa0
	b _0217AE20
_0217AE14:
	mov r5, #0xf0
_0217AE16:
	mov r0, #0x1e
	b _0217AE22
_0217AE1A:
	ldr r5, _0217AE54 ; =0x0000010E
	b _0217AE16
_0217AE1E:
	mov r5, #0x32
_0217AE20:
	mov r0, #0x14
_0217AE22:
	bl sub_02005748
	add r1, r5, r0
	mov r3, #0
	str r3, [sp]
	mov r2, #0x12
	str r3, [sp, #4]
	lsl r2, r2, #4
	ldrh r5, [r4, r2]
	ldr r0, _0217AE58 ; =0x00007FFF
	lsl r1, r1, #0x10
	and r5, r0
	add r0, r0, #1
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ovy11_2162864
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0217AE54: .word 0x0000010E
_0217AE58: .word 0x00007FFF
	thumb_func_end ovy33_217ade8

	thumb_func_start ovy33_217ae5c
ovy33_217ae5c: ; 0x0217AE5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0217AEC8 ; =0x00008004
	ldr r3, _0217AECC ; =0x0217C630
	add r1, r0, #0
	lsr r7, r1, #4
	add r1, r7, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r6, r0, #0
	str r7, [sp]
	ldr r2, _0217AEC8 ; =0x00008004
	add r0, r4, #0
	mov r1, #5
	add r3, r6, #0
	mov r7, #5
	bl sub_02007560
	cmp r0, #1
	bne _0217AEB6
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02007678
	ldr r1, [sp, #4]
	bl sub_0200EE90
	add r3, r0, #0
	mov r2, #0x24
_0217AEAE:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _0217AEAE
_0217AEB6:
	add r0, r4, #0
	mov r1, #5
	bl sub_020075E0
	add r0, r6, #0
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217AEC8: .word 0x00008004
_0217AECC: .word 0x0217C630
	thumb_func_end ovy33_217ae5c

	thumb_func_start sub_0217AED0
sub_0217AED0: ; 0x0217AED0
	ldrh r0, [r0, #4]
	ldr r3, _0217AED8 ; =ovy12_2162b38
	bx r3
	nop
_0217AED8: .word ovy12_2162b38
	thumb_func_end sub_0217AED0

	thumb_func_start ovy33_217aedc
ovy33_217aedc: ; 0x0217AEDC
	push {r3, lr}
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02161E6C
	pop {r3, pc}
	thumb_func_end ovy33_217aedc

	thumb_func_start ovy33_217aee8
ovy33_217aee8: ; 0x0217AEE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	add r5, r1, #0
	ldr r2, _0217AF50 ; =ovy33_217af5c
	mov r1, #0
	mov r3, #0x90
	add r7, r0, #0
	mov r6, #0x90
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	add r0, #0x80
	str r7, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	add r1, r4, #0
	str r5, [r0]
	add r1, #0x8c
	mov r0, #0
	str r0, [r1]
	mov r0, #0x2e
	str r0, [r4]
	bl sub_0200EE20
	add r6, #0xbc
	str r0, [r4, #8]
	ldr r0, [r5, r6]
	str r0, [r4, #0xc]
	ldr r0, _0217AF54 ; =0x0208FF80
	ldrb r0, [r0]
	str r0, [r4, #0x10]
	mov r0, #2
	lsl r0, r0, #0x16
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x78]
	mov r0, #0
	strb r0, [r4, #4]
	ldr r0, _0217AF58 ; =0x00008015
	strh r0, [r4, #6]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217AF50: .word ovy33_217af5c
_0217AF54: .word 0x0208FF80
_0217AF58: .word 0x00008015
	thumb_func_end ovy33_217aee8

	thumb_func_start ovy33_217af5c
ovy33_217af5c: ; 0x0217AF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r0, r4, #0
	add r0, #0x80
	add r5, r1, #0
	ldr r6, [r0]
	ldr r0, [r5]
	cmp r0, #6
	bls _0217AF72
	b _0217B0AA
_0217AF72:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217AF7E: ; jump table
	.short _0217AF8C - _0217AF7E - 2 ; case 0
	.short _0217AFAE - _0217AF7E - 2 ; case 1
	.short _0217AFD2 - _0217AF7E - 2 ; case 2
	.short _0217AFF2 - _0217AF7E - 2 ; case 3
	.short _0217B084 - _0217AF7E - 2 ; case 4
	.short _0217B08E - _0217AF7E - 2 ; case 5
	.short _0217B09A - _0217AF7E - 2 ; case 6
_0217AF8C:
	add r0, r4, #0
	bl ovy12_2152990
	str r0, [r4, #0x7c]
	bl ovy12_2152b64
	cmp r0, #0
	bne _0217AFAA
_0217AF9C:
	mov r1, #0
_0217AF9E:
	add r4, #0x88
	ldr r0, [r4]
	strh r1, [r0]
_0217AFA4:
	mov r0, #4
_0217AFA6:
	str r0, [r5]
	b _0217B0AA
_0217AFAA:
	mov r0, #1
	b _0217AFA6
_0217AFAE:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _0217AFB8
	b _0217AFFA
_0217AFB8:
	ldr r0, [r4, #0x7c]
	bl ovy12_2152bec
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r4, #0x8c
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #0x78
	ble _0217B0AA
	mov r0, #2
	b _0217AFA6
_0217AFD2:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _0217AFDC
	b _0217AFFA
_0217AFDC:
	ldr r0, [r4, #0x7c]
	bl ovy12_2152bec
	ldr r0, [r4, #0x7c]
	bl sub_02152BB4
	cmp r0, #0
	beq _0217AFF0
	mov r0, #3
	b _0217AFA6
_0217AFF0:
	b _0217AF9C
_0217AFF2:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _0217AFFE
_0217AFFA:
	mov r1, #3
	b _0217AF9E
_0217AFFE:
	ldr r0, [r4, #0x7c]
	bl ovy12_2152bec
	ldr r0, [r4, #0x7c]
	bl ovy12_2152bd4
	cmp r0, #0
	beq _0217B0AA
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [sp, #4]
	bl sub_02017934
	bl sub_0200F1B8
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldr r1, [r0]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	bl sub_0200EE7C
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_0200EE38
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0217B35C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0217B072
	cmp r0, #0
	beq _0217B052
	cmp r6, #0
	bne _0217B072
_0217B052:
	add r0, r7, #0
	add r1, r6, #0
	bl ovy33_217b384
	add r1, r4, #0
	add r1, #0x84
	ldr r2, [r1]
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r0, [sp, #4]
	ldr r2, _0217B0B0 ; =0x00008004
	bl sub_0200EEA0
	mov r1, #1
	b _0217B07C
_0217B072:
	cmp r0, #0
	beq _0217B07A
	mov r1, #2
	b _0217B07C
_0217B07A:
	mov r1, #0
_0217B07C:
	add r4, #0x88
	ldr r0, [r4]
	strh r1, [r0]
	b _0217AFA4
_0217B084:
	ldr r0, [r4, #0x7c]
	bl ovy12_2152bfc
	mov r0, #5
	b _0217AFA6
_0217B08E:
	bl sub_02042AB8
	cmp r0, #0
	beq _0217B0AA
	mov r0, #6
	b _0217AFA6
_0217B09A:
	add r4, #0x84
	ldr r1, [r4]
	add r0, r6, #0
	bl ovy33_217acd4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0217B0AA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217B0B0: .word 0x00008004
	thumb_func_end ovy33_217af5c

	thumb_func_start ovy33_217b0b4
ovy33_217b0b4: ; 0x0217B0B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0x4d
	lsl r2, r2, #2
	add r4, r3, #0
	add r3, r1, r2
	str r1, [sp, #8]
	mov r1, #0xfa
	ldrh r5, [r3, #0xe]
	lsl r1, r1, #2
	mov r2, #0
	mul r1, r5
	add r6, r2, r1
	ldrh r1, [r3, #0x10]
	mov r7, #0x50
	add r5, r1, #0
	mul r5, r7
	add r6, r6, r5
	ldrh r5, [r3, #2]
	lsl r1, r5, #2
	add r1, r5, r1
	add r5, r6, r1
	ldrh r1, [r3, #6]
	add r6, r5, r1
	ldrh r5, [r3, #0xa]
	lsl r1, r5, #2
	add r1, r5, r1
	ldrh r5, [r3, #0xc]
	add r1, r6, r1
	ldrh r6, [r3, #0x16]
	lsl r5, r5, #1
	add r1, r1, r5
	mov r5, #0xf
	mul r5, r6
	add r1, r1, r5
	ldrh r6, [r3]
	mov r5, #0xa
	mul r5, r6
	sub r1, r1, r5
	ldrh r6, [r3, #4]
	mov r5, #0xa
	mul r5, r6
	sub r1, r1, r5
	ldrh r5, [r3, #8]
	lsl r5, r5, #1
	sub r1, r1, r5
	ldrh r5, [r3, #0x12]
	add r6, r5, #0
	ldrh r5, [r3, #0x14]
	mov r3, #0xfa
	lsl r3, r3, #2
	mul r6, r7
	lsr r3, r3, #1
	sub r1, r1, r6
	sub r3, r3, r5
	sub r1, r1, r3
	str r1, [sp, #0x14]
	bpl _0217B12E
	b _0217B134
_0217B12E:
	ldr r2, _0217B2CC ; =0x0000270F
	cmp r1, r2
	ble _0217B136
_0217B134:
	str r2, [sp, #0x14]
_0217B136:
	ldr r2, _0217B2D0 ; =0x00001770
	ldr r1, [sp, #0x14]
	cmp r1, r2
	blo _0217B142
	mov r1, #6
	b _0217B17E
_0217B142:
	ldr r3, _0217B2D4 ; =0x00001388
	cmp r1, r3
	blo _0217B14C
	mov r1, #5
	b _0217B17E
_0217B14C:
	mov r1, #0xfa
	ldr r3, [sp, #0x14]
	lsl r1, r1, #4
	cmp r3, r1
	blo _0217B15A
	mov r1, #4
	b _0217B17E
_0217B15A:
	lsr r3, r2, #1
	ldr r2, [sp, #0x14]
	cmp r2, r3
	blo _0217B166
	mov r1, #3
	b _0217B17E
_0217B166:
	lsr r3, r1, #1
	cmp r2, r3
	blo _0217B170
	mov r1, #2
	b _0217B17E
_0217B170:
	lsr r2, r1, #2
	ldr r1, [sp, #0x14]
	cmp r1, r2
	blo _0217B17C
	mov r1, #1
	b _0217B17E
_0217B17C:
	mov r1, #0
_0217B17E:
	str r1, [sp, #0xc]
	ldr r1, [sp, #0xc]
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	strh r0, [r4]
	ldr r0, [sp, #4]
	bl sub_02016AD8
	bl sub_02017934
	str r0, [sp, #0x18]
	bl sub_0200F1B8
	str r0, [sp, #0x10]
	mov r1, #0x15
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0217B1AA
	mov r0, #1
	b _0217B1AC
_0217B1AA:
	mov r0, #0
_0217B1AC:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r3, r1, #0
	mov r0, #0x14
	mul r3, r0
	ldr r0, [sp, #0x10]
	mov r2, #1
	mov r1, #0x49
	add r5, r0, r3
	strb r2, [r0, r3]
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #3
	bne _0217B1CC
	b _0217B1D4
_0217B1CC:
	cmp r0, #4
	bne _0217B1D4
	strb r2, [r5, #1]
	b _0217B1D8
_0217B1D4:
	mov r0, #0
	strb r0, [r5, #1]
_0217B1D8:
	ldr r0, [sp, #0x14]
	mov r1, #0
	strh r0, [r5, #2]
	add r0, r5, #4
	mov r2, #0x10
	mov r4, #0
	blx MI_CpuFill8
	mov r1, #0x49
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0217B242
	add r0, r1, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	add r7, r5, #4
	add r0, r0, r1
	str r0, [sp, #0x20]
_0217B200:
	lsl r0, r4, #2
	str r0, [sp, #0x1c]
	add r5, r7, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x1c]
	mov r2, #0
	strh r0, [r7, r1]
	add r0, r6, #0
	mov r1, #0x6f
	bl sub_0201CCF8
	strb r0, [r5, #2]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	strb r0, [r5, #3]
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	ldr r0, [r0]
	cmp r4, r0
	blt _0217B200
_0217B242:
	mov r1, #0x15
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0217B2AE
	ldr r0, [sp, #4]
	bl sub_02016AD8
	bl sub_02017934
	ldr r7, _0217B2D8 ; =0x00008004
	add r4, r0, #0
	ldr r0, _0217B2DC ; =0x00000277
	lsr r6, r7, #4
	str r0, [sp]
	ldr r3, _0217B2E0 ; =0x0217C630
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	str r6, [sp]
	add r0, r4, #0
	mov r1, #5
	add r2, r7, #0
	add r3, r5, #0
	mov r6, #5
	bl sub_02007560
	cmp r0, #1
	bne _0217B2A0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02007678
	mov r1, #0x5a
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	mov r2, #0x22
	add r1, #0x38
	str r1, [sp, #0x10]
	blx MI_CpuCopy8
_0217B2A0:
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #5
	bl sub_020075E0
_0217B2AE:
	ldr r0, [sp, #0x18]
	bl sub_02009408
	ldr r1, [sp, #0x14]
	add r4, r0, #0
	bl sub_02009638
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02009618
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217B2CC: .word 0x0000270F
_0217B2D0: .word 0x00001770
_0217B2D4: .word 0x00001388
_0217B2D8: .word 0x00008004
_0217B2DC: .word 0x00000277
_0217B2E0: .word 0x0217C630
	thumb_func_end ovy33_217b0b4
_0217B2E4:
	.byte 0x15, 0x20, 0x00, 0x01, 0x08, 0x58, 0x70, 0x47

	thumb_func_start ovy33_217b2ec
ovy33_217b2ec: ; 0x0217B2EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _0217B324 ; =ovy33_217b3ac
	mov r1, #0
	mov r3, #0x10
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	str r6, [r4, #8]
	bl sub_02016AF0
	add r1, r0, #0
	ldr r0, _0217B328 ; =0x00008015
	bl ovy36_21c6cc8
	str r0, [r4, #0xc]
	bl ovy36_21c6d14
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217B324: .word ovy33_217b3ac
_0217B328: .word 0x00008015
	thumb_func_end ovy33_217b2ec

	thumb_func_start ovy33_217b32c
ovy33_217b32c: ; 0x0217B32C
	push {r3, lr}
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200F1B8
	ldrb r1, [r0]
	ldrb r0, [r0, #0x14]
	cmp r1, #0
	beq _0217B34E
	cmp r0, #0
	beq _0217B34A
	mov r0, #3
	pop {r3, pc}
_0217B34A:
	mov r0, #1
	pop {r3, pc}
_0217B34E:
	cmp r0, #0
	beq _0217B356
	mov r0, #2
	pop {r3, pc}
_0217B356:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_217b32c

	thumb_func_start sub_0217B35C
sub_0217B35C: ; 0x0217B35C
	cmp r1, #0x80
	bhs _0217B380
	lsl r2, r1, #0x15
	lsr r2, r2, #0x18
	add r0, r0, r2
	add r0, #0x28
	ldrb r2, [r0]
	mov r0, #7
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r2, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0217B380:
	mov r0, #1
	bx lr
	thumb_func_end sub_0217B35C

	thumb_func_start ovy33_217b384
ovy33_217b384: ; 0x0217B384
	push {r4, r5}
	cmp r1, #0x80
	bhs _0217B3A6
	mov r5, #7
	lsl r2, r1, #0x15
	and r1, r5
	lsl r1, r1, #0x18
	lsr r4, r2, #0x18
	add r0, #0x28
	mov r2, #1
	lsr r1, r1, #0x18
	lsl r2, r1
	lsl r1, r2, #0x18
	ldrb r3, [r0, r4]
	lsr r1, r1, #0x18
	orr r1, r3
	strb r1, [r0, r4]
_0217B3A6:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy33_217b384

	thumb_func_start ovy33_217b3ac
ovy33_217b3ac: ; 0x0217B3AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	ldr r0, [r4]
	add r5, r1, #0
	bl sub_02016AD8
	str r0, [sp, #4]
	bl sub_02017934
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0217B3CE
	cmp r0, #1
	beq _0217B42A
	b _0217B458
_0217B3CE:
	mov r0, #0xd3
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0217B460 ; =0x00008004
	ldr r3, _0217B464 ; =0x0217C630
	add r1, r0, #0
	lsr r7, r1, #4
	add r1, r7, #0
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r4, #4]
	str r7, [sp]
	ldr r2, _0217B460 ; =0x00008004
	ldr r3, [r4, #4]
	add r0, r6, #0
	mov r1, #5
	bl sub_02007560
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02007678
	ldr r1, [r4, #8]
	add r6, r0, #0
	cmp r1, #1
	bne _0217B40C
	bl sub_0200EF1C
	b _0217B41A
_0217B40C:
	bl sub_0200EE20
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx MI_CpuFill8
_0217B41A:
	ldr r0, [sp, #4]
	mov r1, #5
	bl sub_020178C4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0217B458
_0217B42A:
	ldr r0, [sp, #4]
	mov r1, #5
	mov r5, #5
	bl sub_020178F4
	cmp r0, #2
	bne _0217B458
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020075E0
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	ldr r0, [r4, #0xc]
	bl ovy36_21c6d3c
	ldr r0, [r4, #0xc]
	bl ovy36_21c6cf8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217B458:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217B460: .word 0x00008004
_0217B464: .word 0x0217C630
	thumb_func_end ovy33_217b3ac

	thumb_func_start ovy33_217b468
ovy33_217b468: ; 0x0217B468
	push {r3, lr}
	bl sub_02016AD8
	mov r1, #0
	bl sub_02017954
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_217b468

	thumb_func_start ovy33_217b478
ovy33_217b478: ; 0x0217B478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r2, [sp, #8]
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_0201736C
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_02017934
	add r5, r0, #0
	mov r0, #0x5f
	mov r1, #0x7f
	str r0, [sp]
	ldr r3, _0217B650 ; =0x0217C640
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #4
	str r0, [r4, #4]
	ldr r0, _0217B654 ; =0x12345678
	str r0, [r4]
	ldr r0, [sp, #0xc]
	str r7, [r4, #0x6c]
	bl MyStatus_GetTrainerGender
	strb r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0x38
	bl sub_02007448
	str r0, [r4, #0x70]
	add r0, r5, #0
	mov r1, #0x39
	bl sub_02007448
	str r0, [r4, #0x74]
	add r0, r5, #0
	mov r1, #0x3a
	bl sub_02007448
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x70]
	mov r1, #0
	mov r5, #0
	bl sub_0200E100
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02017954
	cmp r6, #0
	bne _0217B550
	ldr r0, [sp, #8]
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	bl sub_0217BDC0
	strb r0, [r4, #8]
	mov r1, #0xff
_0217B4FC:
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, #0x1e]
	cmp r5, #4
	blt _0217B4FC
	ldr r1, _0217B658 ; =0x0000FFFF
	mov r2, #0
_0217B50A:
	lsl r0, r2, #1
	add r0, r4, r0
	add r2, r2, #1
	strh r1, [r0, #0x32]
	cmp r2, #0xe
	blt _0217B50A
	ldr r0, [r4, #0x70]
	bl sub_0200E0F4
	ldr r0, [r4, #0x70]
	bl sub_0200E2AC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x74]
	bl sub_0200E3DC
	cmp r0, #1
	bne _0217B53E
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x74]
	bl sub_0200E35C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0217BD88
_0217B53E:
	ldrb r1, [r4, #9]
	add r0, sp, #0x10
	add r2, sp, #0x10
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0200E1AC
	b _0217B64A
_0217B550:
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	add r2, r5, #0
	bl sub_0200E11C
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	bl sub_0217BDC0
	strb r0, [r4, #8]
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	add r2, r5, #0
	bl sub_0200E11C
	cmp r0, #0
	beq _0217B578
	add r0, r4, #0
	bl ovy33_217bd34
_0217B578:
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x1e
	bl sub_0200E11C
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x32
	bl sub_0200E11C
	ldrb r0, [r4, #9]
	cmp r0, #2
	beq _0217B59A
	cmp r0, #7
	bne _0217B622
_0217B59A:
	ldr r0, [r4, #0x70]
	mov r1, #9
	mov r2, #0
	bl sub_0200E11C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	ldrh r1, [r4, #0xc]
	mov r2, #0xe0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strh r0, [r4, #0xc]
	ldrh r3, [r4, #0xc]
	ldr r2, _0217B65C ; =0x00000628
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x1d
	mov r3, #0x14
	add r2, r4, r2
	mul r3, r5
	mov r1, #6
	add r2, r2, r3
	bl sub_0200E11C
	add r0, r7, #0
	ldr r6, _0217B660 ; =0x0000012F
	bl sub_020171F4
	add r0, #0x20
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	beq _0217B5E2
	sub r6, r6, #3
_0217B5E2:
	ldrh r0, [r4, #0xc]
	mov r1, #7
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1d
	ldr r0, [r4, #0x70]
	bl sub_0200E11C
	add r3, r0, #0
	ldr r0, _0217B65C ; =0x00000628
	mov r2, #0x12
	add r1, r4, r0
	mov r0, #0x14
	mul r0, r5
	add r0, r1, r0
	mov r1, #0xb2
	str r0, [sp]
	ldr r0, [r4, #4]
	lsl r1, r1, #2
	lsl r2, r2, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r1, r4, r1
	mul r2, r5
	add r1, r1, r2
	add r2, r6, r5
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl ovy33_217c2c4
_0217B622:
	ldrb r5, [r4, #9]
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl sub_0200E3DC
	cmp r0, #1
	bne _0217B64A
	ldr r0, [r4, #0x70]
	bl sub_0200E2EC
	add r6, r0, #0
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl sub_0200E418
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0217BDA8
_0217B64A:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217B650: .word 0x0217C640
_0217B654: .word 0x12345678
_0217B658: .word 0x0000FFFF
_0217B65C: .word 0x00000628
_0217B660: .word 0x0000012F
	thumb_func_end ovy33_217b478

	thumb_func_start ovy33_217b664
ovy33_217b664: ; 0x0217B664
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0217B6A0
	ldr r6, _0217B6B0 ; =0x000007CC
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _0217B67C
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, r6]
_0217B67C:
	mov r6, #0x7d
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _0217B68E
	bl sub_02017C84
	mov r0, #0
	str r0, [r4, r6]
_0217B68E:
	mov r2, #0x7f
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
_0217B6A0:
	add r0, r5, #0
	bl sub_02016AD8
	mov r1, #0
	bl sub_02017954
	pop {r4, r5, r6, pc}
	nop
_0217B6B0: .word 0x000007CC
	thumb_func_end ovy33_217b664

	thumb_func_start ovy33_217b6b4
ovy33_217b6b4: ; 0x0217B6B4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #2
	bne _0217B6C4
	mov r1, #3
	b _0217B6CA
_0217B6C4:
	cmp r0, #7
	bne _0217B6CE
	mov r1, #8
_0217B6CA:
	add r0, sp, #0
	strb r1, [r0]
_0217B6CE:
	add r0, sp, #0
	ldrb r0, [r0]
	mov r1, #0
	add r2, sp, #0
	strb r0, [r4, #9]
	ldr r0, [r4, #0x70]
	bl sub_0200E1AC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x74]
	bl sub_0200E3DC
	cmp r0, #1
	bne _0217B6FE
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x74]
	bl sub_0200E35C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0217BD88
	add sp, #4
	pop {r3, r4, pc}
_0217B6FE:
	add r0, r4, #0
	bl sub_0217BDA0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy33_217b6b4

	thumb_func_start ovy33_217b708
ovy33_217b708: ; 0x0217B708
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #9]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0200E1AC
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x1e
	bl sub_0200E1AC
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x32
	bl sub_0200E1AC
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0200E100
	ldrb r0, [r4, #9]
	cmp r0, #2
	beq _0217B748
	cmp r0, #7
	bne _0217B788
_0217B748:
	ldrh r0, [r4, #0xc]
	add r2, sp, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1d
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #9
	bl sub_0200E1AC
	ldrh r3, [r4, #0xc]
	ldr r5, _0217B78C ; =0x00000628
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r6, r3, #0x1d
	mov r3, #0x14
	add r2, r4, r5
	mul r3, r6
	mov r1, #6
	add r2, r2, r3
	bl sub_0200E1AC
	ldrh r2, [r4, #0xc]
	add r5, #0x3c
	ldr r0, [r4, #0x70]
	lsl r2, r2, #0x18
	add r3, r4, r5
	lsr r2, r2, #0x1d
	mov r1, #7
	add r2, r3, r2
	bl sub_0200E1AC
_0217B788:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0217B78C: .word 0x00000628
	thumb_func_end ovy33_217b708

	thumb_func_start ovy33_217b790
ovy33_217b790: ; 0x0217B790
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0217BDC0
	strb r0, [r5, #8]
	add r2, r5, #0
	ldr r0, [r5, #0x70]
	mov r1, #5
	add r2, #0x1e
	bl sub_0200E11C
	add r0, r5, #0
	bl ovy33_217bd60
	str r0, [sp]
	ldrb r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _0217B7E6
_0217B7B8:
	add r1, r5, r4
	ldrb r1, [r1, #0x1e]
	ldr r0, [sp]
	bl sub_0201FF08
	lsl r1, r4, #1
	add r6, r5, r1
	add r7, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #0x22]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #0x2a]
	ldrb r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _0217B7B8
_0217B7E6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217b790

	thumb_func_start ovy33_217b7e8
ovy33_217b7e8: ; 0x0217B7E8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #9]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0200E1AC
	ldr r0, [r4, #0x70]
	bl sub_0200E2AC
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x1e
	bl sub_0200E1AC
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0200E100
	ldrb r0, [r4, #9]
	cmp r0, #2
	beq _0217B822
	cmp r0, #7
	bne _0217B862
_0217B822:
	ldrh r0, [r4, #0xc]
	add r2, sp, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1d
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #9
	bl sub_0200E1AC
	ldrh r3, [r4, #0xc]
	ldr r5, _0217B868 ; =0x00000628
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r6, r3, #0x1d
	mov r3, #0x14
	add r2, r4, r5
	mul r3, r6
	mov r1, #6
	add r2, r2, r3
	bl sub_0200E1AC
	ldrh r2, [r4, #0xc]
	add r5, #0x3c
	ldr r0, [r4, #0x70]
	lsl r2, r2, #0x18
	add r3, r4, r5
	lsr r2, r2, #0x1d
	mov r1, #7
	add r2, r3, r2
	bl sub_0200E1AC
_0217B862:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0217B868: .word 0x00000628
	thumb_func_end ovy33_217b7e8

	thumb_func_start ovy33_217b86c
ovy33_217b86c: ; 0x0217B86C
	push {r4, r5, r6, lr}
	bl sub_02016AD8
	bl sub_02017934
	add r5, r0, #0
	mov r1, #0x38
	bl sub_02007448
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x39
	bl sub_02007448
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_0200E11C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_0200E2AC
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200E3B4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_217b86c

	thumb_func_start ovy33_217b8ac
ovy33_217b8ac: ; 0x0217B8AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r6, [r5, #0xe]
	ldrb r4, [r5, #9]
	ldr r7, [r5, #0x74]
	add r2, r6, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200E3A0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200E384
	ldr r0, [r5, #0x6c]
	bl sub_02017934
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy33_217be2c
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0200E3B4
	ldr r0, [r5, #0x70]
	bl sub_0200E2AC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217b8ac

	thumb_func_start ovy33_217b8ec
ovy33_217b8ec: ; 0x0217B8EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #9]
	cmp r1, #4
	bne _0217B928
	ldr r0, [r4, #0x70]
	mov r1, #0xb
	mov r2, #0
	mov r5, #0
	bl sub_0200E11C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bne _0217B924
	ldr r0, [r4, #0x74]
	bl sub_0200E4A0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	bpl _0217B91A
	add r1, r5, #0
	b _0217B920
_0217B91A:
	cmp r1, #0xa
	blt _0217B920
	mov r1, #9
_0217B920:
	ldr r0, _0217B9D4 ; =0x0217C5AC
	b _0217B9AA
_0217B924:
	mov r5, #5
	b _0217B9AC
_0217B928:
	ldr r0, [r4, #0x74]
	mov r5, #0
	bl sub_0200E418
	ldrb r1, [r4, #9]
	cmp r1, #8
	bhi _0217B976
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0217B942: ; jump table
	.short _0217B954 - _0217B942 - 2 ; case 0
	.short _0217B95C - _0217B942 - 2 ; case 1
	.short _0217B964 - _0217B942 - 2 ; case 2
	.short _0217B968 - _0217B942 - 2 ; case 3
	.short _0217B972 - _0217B942 - 2 ; case 4
	.short _0217B958 - _0217B942 - 2 ; case 5
	.short _0217B960 - _0217B942 - 2 ; case 6
	.short _0217B96A - _0217B942 - 2 ; case 7
	.short _0217B970 - _0217B942 - 2 ; case 8
_0217B954:
	add r1, r5, #0
	b _0217B978
_0217B958:
	mov r1, #1
_0217B95A:
	b _0217B96C
_0217B95C:
	mov r1, #2
	b _0217B978
_0217B960:
	mov r1, #3
	b _0217B95A
_0217B964:
	mov r1, #4
	b _0217B978
_0217B968:
	b _0217B964
_0217B96A:
	mov r1, #5
_0217B96C:
	mov r5, #1
	b _0217B978
_0217B970:
	b _0217B96A
_0217B972:
	mov r1, #6
	b _0217B978
_0217B976:
	mov r1, #0
_0217B978:
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r0, #0x10
	asr r2, r2, #0x10
	bpl _0217B988
	mov r0, #0
	b _0217B98E
_0217B988:
	cmp r0, #0xa
	blo _0217B98E
	mov r0, #9
_0217B98E:
	ldrh r2, [r4, #0xc]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1e
	beq _0217B9A2
	cmp r5, #1
	bne _0217B99E
	mov r5, #0x1e
	b _0217B9AC
_0217B99E:
	mov r5, #0xa
	b _0217B9AC
_0217B9A2:
	mov r2, #0xa
	mul r2, r1
	ldr r1, _0217B9D8 ; =0x0217C570
	add r1, r1, r2
_0217B9AA:
	ldrb r5, [r0, r1]
_0217B9AC:
	cmp r5, #0
	bne _0217B9B2
	mov r5, #1
_0217B9B2:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl sub_0200E318
	cmp r5, #0
	beq _0217B9D0
	ldr r0, [r4, #0x6c]
	bl sub_02017934
	bl sub_02009408
	mov r1, #0x21
	add r2, r5, #0
	bl sub_0200955C
_0217B9D0:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217B9D4: .word 0x0217C5AC
_0217B9D8: .word 0x0217C570
	thumb_func_end ovy33_217b8ec

	thumb_func_start ovy33_217b9dc
ovy33_217b9dc: ; 0x0217B9DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r1, [r4, #9]
	str r1, [sp, #4]
	bl sub_0217BD84
	bl ovy33_217be1c
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0217BA04
	cmp r0, #3
	beq _0217BA04
	add r0, #0xf9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0217BA54
_0217BA04:
	ldrh r0, [r4, #0x18]
	cmp r6, r0
	bhs _0217BA0C
	add r6, r0, #0
_0217BA0C:
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x32
	mov r5, #0
	str r0, [sp, #8]
_0217BA16:
	mov r0, #1
	and r0, r5
	lsr r2, r5, #0x1f
	lsl r0, r0, #0x18
	add r2, r5, r2
	lsr r0, r0, #0x18
	lsl r2, r2, #0x17
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ovy33_217c11c
	add r7, r0, #0
	lsl r2, r5, #0x10
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ovy33_217bdf4
	cmp r0, #0
	bne _0217BA16
	lsl r0, r5, #1
	add r0, r4, r0
	add r5, r5, #1
	strh r7, [r0, #0x32]
	cmp r5, #0xe
	blt _0217BA16
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0217BA54:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x32
	mov r5, #0
	str r0, [sp, #0xc]
_0217BA5E:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [r4, #9]
	lsl r2, r5, #0x18
	add r0, r4, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ovy33_217c11c
	add r7, r0, #0
	lsl r2, r5, #0x10
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ovy33_217bdf4
	cmp r0, #0
	bne _0217BA5E
	lsl r0, r5, #1
	add r0, r4, r0
	add r5, r5, #1
	strh r7, [r0, #0x32]
	cmp r5, #7
	blt _0217BA5E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy33_217b9dc

	thumb_func_start ovy33_217ba94
ovy33_217ba94: ; 0x0217BA94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x84
	ldrh r1, [r1]
	cmp r1, #0
	bne _0217BAB4
	add r1, r5, #0
	add r1, #0x82
	ldrh r2, [r1]
	ldr r1, _0217BB1C ; =0x0000FFF9
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0217BAB8
_0217BAB4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0217BAB8:
	bl ovy33_217bd60
	str r0, [sp]
	ldrb r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _0217BB16
_0217BAC6:
	add r1, r5, r4
	add r0, r1, #0
	add r0, #0x7c
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r0, #6
	blt _0217BADC
	add r2, r1, #0
	add r2, #0x7c
	mov r0, #1
	strb r0, [r2]
_0217BADC:
	add r0, r1, #0
	add r0, #0x7c
	ldrb r0, [r0]
	sub r0, r0, #1
	strb r0, [r1, #0x1e]
	ldrb r1, [r1, #0x1e]
	ldr r0, [sp]
	bl sub_0201FF08
	lsl r1, r4, #1
	add r6, r5, r1
	add r7, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #0x22]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #0x2a]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrb r0, [r5, #8]
	cmp r4, r0
	blt _0217BAC6
_0217BB16:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217BB1C: .word 0x0000FFF9
	thumb_func_end ovy33_217ba94

	thumb_func_start ovy33_217bb20
ovy33_217bb20: ; 0x0217BB20
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _0217BB46
	ldr r0, [r4, #0x70]
	bl sub_0200E2EC
	cmp r0, #7
	bhs _0217BB3A
	mov r0, #0
	pop {r4, pc}
_0217BB3A:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #0xc]
_0217BB46:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy33_217bb20

	thumb_func_start ovy33_217bb4c
ovy33_217bb4c: ; 0x0217BB4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r4, [r5, #9]
	bl sub_0217BD84
	add r6, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200E3A0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0200E35C
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0200E384
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0200E3F8
	ldr r0, [r5, #0x6c]
	bl sub_02017934
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy33_217be2c
	ldr r0, [r5, #0x70]
	bl sub_0200E2AC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_217bb4c
_0217BB98:
	.byte 0x82, 0x89, 0x01, 0x21, 0x8A, 0x43, 0x82, 0x81
	.byte 0x82, 0x89, 0x06, 0x21, 0x8A, 0x43, 0x82, 0x81, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy33_217bbac
ovy33_217bbac: ; 0x0217BBAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	bl sub_0200E2EC
	add r2, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #8
	bhi _0217BC7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217BBCC: ; jump table
	.short _0217BC7A - _0217BBCC - 2 ; case 0
	.short _0217BC7A - _0217BBCC - 2 ; case 1
	.short _0217BBF6 - _0217BBCC - 2 ; case 2
	.short _0217BBF6 - _0217BBCC - 2 ; case 3
	.short _0217BBDE - _0217BBCC - 2 ; case 4
	.short _0217BC7A - _0217BBCC - 2 ; case 5
	.short _0217BC7A - _0217BBCC - 2 ; case 6
	.short _0217BBF6 - _0217BBCC - 2 ; case 7
	.short _0217BBF6 - _0217BBCC - 2 ; case 8
_0217BBDE:
	ldr r3, [r4, #4]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x10
	ldr r0, [r4, #0x78]
	add r1, #0x88
	lsr r2, r2, #0x18
	lsr r3, r3, #0x10
	bl sub_0200E740
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0217BBF6:
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	lsl r0, r2, #1
	str r0, [sp, #0x10]
	str r5, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	lsl r2, r2, #1
	add r2, r4, r2
	add r1, r4, #0
	ldrh r2, [r2, #0x32]
	ldrb r3, [r4, #8]
	add r0, r4, #0
	add r1, #0x88
	bl ovy33_217c264
	ldrb r3, [r4, #8]
	cmp r3, #0
	ble _0217BC4C
	add r1, sp, #0x18
	add r0, sp, #0x14
	mov r7, #0x3c
_0217BC2A:
	add r3, r5, #0
	mul r3, r7
	add r6, r4, r3
	add r6, #0xb8
	ldrh r6, [r6]
	lsl r2, r5, #1
	add r3, r4, r3
	lsl r6, r6, #0x15
	lsr r6, r6, #0x15
	strh r6, [r1, r2]
	add r3, #0xba
	ldrh r3, [r3]
	add r5, r5, #1
	strh r3, [r0, r2]
	ldrb r3, [r4, #8]
	cmp r5, r3
	blt _0217BC2A
_0217BC4C:
	add r0, sp, #0x18
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0x10
	add r2, r2, #1
	lsr r0, r0, #0x10
	lsl r2, r2, #1
	str r0, [sp, #0xc]
	add r2, r4, r2
	mov r1, #0x6a
	lsl r1, r1, #2
	ldrh r2, [r2, #0x32]
	add r0, r4, #0
	add r1, r4, r1
	bl ovy33_217c264
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0217BC7A:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	lsl r2, r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r2, r4, r2
	add r1, r4, #0
	ldrh r2, [r2, #0x32]
	ldrb r3, [r4, #8]
	add r0, r4, #0
	add r1, #0x88
	bl ovy33_217c264
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217bbac
_0217BCA0:
	.byte 0x12, 0x22, 0x12, 0x01, 0x4A, 0x43, 0x80, 0x18, 0x8C, 0x30, 0x00, 0x88, 0x00, 0x4B, 0x18, 0x47
	.byte 0x39, 0x2B, 0x16, 0x02

	thumb_func_start ovy33_217bcb4
ovy33_217bcb4: ; 0x0217BCB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl sub_0200E4A0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r6, #0
	beq _0217BCD0
	cmp r6, #3
	beq _0217BCD4
	cmp r6, #4
	beq _0217BCF2
	b _0217BD2C
_0217BCD0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0217BCD4:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r6, #0
	bl sub_0200E438
	cmp r4, #0xa
	bne _0217BCE8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0217BCE8:
	add r0, r5, #0
	bl sub_0200E488
	mov r0, #1
	pop {r4, r5, r6, pc}
_0217BCF2:
	add r0, r5, #0
	mov r1, #3
	bl sub_0200E4A4
	cmp r4, #1
	bne _0217BD02
	mov r0, #0
	pop {r4, r5, r6, pc}
_0217BD02:
	ldr r1, _0217BD30 ; =0x0217C564
	sub r2, r4, #1
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _0217BD28
	add r0, r5, #0
	bl sub_0200E494
	add r0, r5, #0
	mov r1, #2
	bl sub_0200E4A4
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl sub_0200E438
	mov r0, #1
	pop {r4, r5, r6, pc}
_0217BD28:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0217BD2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217BD30: .word 0x0217C564
	thumb_func_end ovy33_217bcb4

	thumb_func_start ovy33_217bd34
ovy33_217bd34: ; 0x0217BD34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0217BD5C ; =0x000007CC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0217BD44
	bl GFL_HeapFree
_0217BD44:
	ldr r0, [r4, #0x6c]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #4
	bl sub_0200C28C
	ldr r1, _0217BD5C ; =0x000007CC
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0217BD5C: .word 0x000007CC
	thumb_func_end ovy33_217bd34

	thumb_func_start ovy33_217bd60
ovy33_217bd60: ; 0x0217BD60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	mov r2, #0
	bl sub_0200E11C
	cmp r0, #0
	bne _0217BD7A
	ldr r0, [r4, #0x6c]
	bl sub_0201735C
	pop {r4, pc}
_0217BD7A:
	ldr r0, _0217BD80 ; =0x000007CC
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0217BD80: .word 0x000007CC
	thumb_func_end ovy33_217bd60

	thumb_func_start sub_0217BD84
sub_0217BD84: ; 0x0217BD84
	ldrh r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_0217BD84

	thumb_func_start sub_0217BD88
sub_0217BD88: ; 0x0217BD88
	strh r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0217BD88
_0217BD8C:
	.byte 0xC2, 0x89, 0x03, 0x49
	.byte 0x8A, 0x42, 0x01, 0xD2, 0x51, 0x1C, 0xC1, 0x81, 0x70, 0x47, 0xC0, 0x46, 0xFF, 0xFF, 0x00, 0x00

	thumb_func_start sub_0217BDA0
sub_0217BDA0: ; 0x0217BDA0
	mov r1, #0
	strh r1, [r0, #0xe]
	bx lr
	.align 2, 0
	thumb_func_end sub_0217BDA0

	thumb_func_start sub_0217BDA8
sub_0217BDA8: ; 0x0217BDA8
	mov r3, #7
	mul r3, r1
	ldr r1, _0217BDBC ; =0x0000FFFF
	add r2, r3, r2
	cmp r2, r1
	bls _0217BDB6
	add r2, r1, #0
_0217BDB6:
	strh r2, [r0, #0xe]
	bx lr
	nop
_0217BDBC: .word 0x0000FFFF
	thumb_func_end sub_0217BDA8

	thumb_func_start sub_0217BDC0
sub_0217BDC0: ; 0x0217BDC0
	cmp r0, #8
	bhi _0217BDEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217BDD0: ; jump table
	.short _0217BDE2 - _0217BDD0 - 2 ; case 0
	.short _0217BDE6 - _0217BDD0 - 2 ; case 1
	.short _0217BDEA - _0217BDD0 - 2 ; case 2
	.short _0217BDEA - _0217BDD0 - 2 ; case 3
	.short _0217BDE2 - _0217BDD0 - 2 ; case 4
	.short _0217BDE2 - _0217BDD0 - 2 ; case 5
	.short _0217BDE6 - _0217BDD0 - 2 ; case 6
	.short _0217BDEA - _0217BDD0 - 2 ; case 7
	.short _0217BDEA - _0217BDD0 - 2 ; case 8
_0217BDE2:
	mov r0, #3
	bx lr
_0217BDE6:
	mov r0, #4
	bx lr
_0217BDEA:
	mov r0, #2
	bx lr
_0217BDEE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0217BDC0

	thumb_func_start ovy33_217bdf4
ovy33_217bdf4: ; 0x0217BDF4
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _0217BE14
_0217BDFC:
	lsl r3, r4, #1
	ldrh r3, [r0, r3]
	cmp r1, r3
	bne _0217BE0A
	mov r0, #1
	pop {r3, r4}
	bx lr
_0217BE0A:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	cmp r4, r2
	blo _0217BDFC
_0217BE14:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy33_217bdf4

	thumb_func_start ovy33_217be1c
ovy33_217be1c: ; 0x0217BE1C
	push {r3, lr}
	mov r1, #7
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy33_217be1c

	thumb_func_start ovy33_217be2c
ovy33_217be2c: ; 0x0217BE2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrb r2, [r5, #9]
	cmp r2, #0
	beq _0217BE44
	cmp r2, #1
	beq _0217BE82
	cmp r2, #4
	beq _0217BE4E
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0217BE44:
	mov r2, #0
	bl ovy33_217c010
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0217BE4E:
	mov r2, #1
	bl ovy33_217c010
	add r6, sp, #0
	ldrb r0, [r5, #9]
	add r4, sp, #0
	mov r1, #0
	strb r0, [r4]
	ldr r0, [r5, #0x70]
	add r2, r6, #0
	bl sub_0200E1AC
	ldr r0, [r5, #0x70]
	bl sub_0200E2EC
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, [r5, #0x70]
	mov r1, #1
	add r2, r6, #0
	bl sub_0200E1AC
	ldr r0, [r5, #0x74]
	ldr r1, [r5, #0x70]
	bl sub_0200E52C
_0217BE82:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy33_217be2c

	thumb_func_start ovy33_217be88
ovy33_217be88: ; 0x0217BE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0x4b
	add r5, r0, #0
	lsl r6, r6, #2
	cmp r1, #0
	beq _0217BE98
	add r6, r6, #3
_0217BE98:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x22
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x2a
	ldr r7, _0217BF00 ; =0x00000628
	str r0, [sp, #0x14]
	add r0, r5, r7
	str r0, [sp, #0x18]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	mov r4, #0
	str r0, [sp, #0x1c]
	add r7, #0x3c
_0217BEBA:
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #0x12
	lsl r0, r0, #0x10
	lsl r1, r1, #4
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mul r2, r1
	ldr r1, [sp, #0x1c]
	ldrb r3, [r5, #8]
	add r1, r1, r2
	add r2, r6, r4
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ovy33_217c264
	add r1, r5, r4
	add r4, r4, #1
	strb r0, [r1, r7]
	cmp r4, #3
	blt _0217BEBA
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217BF00: .word 0x00000628
	thumb_func_end ovy33_217be88

	thumb_func_start ovy33_217bf04
ovy33_217bf04: ; 0x0217BF04
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	ldrh r1, [r6]
	ldr r2, _0217C008 ; =0xFFFFF800
	lsr r3, r0, #0x10
	lsr r0, r2, #0x15
	and r1, r2
	and r0, r3
	orr r0, r1
	strh r0, [r6]
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	ldrh r2, [r6]
	ldr r1, _0217C00C ; =0xFFFF07FF
	lsr r0, r0, #0x10
	and r1, r2
	orr r0, r1
	strh r0, [r6]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #2]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x1e
	add r5, r4, #0
	str r0, [sp]
_0217BF5A:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x36
	add r2, r5, #0
	bl sub_0201CCF8
	lsl r1, r4, #1
	add r1, r6, r1
	strh r0, [r1, #4]
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x3e
	add r2, r5, #0
	bl sub_0201CCF8
	lsl r2, r4, #1
	ldr r1, [sp]
	lsl r0, r2
	lsl r0, r0, #0x18
	ldrb r1, [r1]
	lsr r0, r0, #0x18
	add r4, r4, #1
	orr r1, r0
	ldr r0, [sp]
	cmp r4, #4
	strb r1, [r0]
	blt _0217BF5A
	add r0, r7, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_0201CCF8
	strb r0, [r6, #0x1f]
	add r0, r7, #0
	mov r1, #7
	add r2, r5, #0
	bl sub_0201CCF8
	str r0, [r6, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r5, #0
	bl sub_0201CCF8
	str r0, [r6, #0x10]
	add r0, r7, #0
	mov r1, #0xac
	add r2, r5, #0
	bl sub_0201CCF8
	str r0, [r6, #0x14]
	mov r4, #0
_0217BFC2:
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0xd
	add r2, r4, #0
	bl sub_0201CCF8
	add r1, r6, r5
	add r5, r5, #1
	strb r0, [r1, #0x18]
	cmp r5, #6
	blt _0217BFC2
	add r0, r7, #0
	mov r1, #0xa
	add r2, r4, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x20
	strb r0, [r1]
	add r0, r7, #0
	mov r1, #9
	add r2, r4, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x21
	strb r0, [r1]
	add r6, #0x22
	add r0, r7, #0
	mov r1, #0x74
	add r2, r6, #0
	bl sub_0201CCF8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217C008: .word 0xFFFFF800
_0217C00C: .word 0xFFFF07FF
	thumb_func_end ovy33_217bf04

	thumb_func_start ovy33_217c010
ovy33_217c010: ; 0x0217C010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0217C088 ; =0x000008A1
	str r2, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r3, _0217C08C ; =0x0217C640
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0217C090 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xb4
	mov r4, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0xb4
	add r6, r0, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl ovy33_217bd60
	add r7, r0, #0
_0217C04C:
	add r1, r5, r4
	ldrb r1, [r1, #0x1e]
	add r0, r7, #0
	bl sub_0201FF08
	add r1, r0, #0
	mov r0, #0x3c
	mul r0, r4
	add r0, r6, r0
	bl ovy33_217bf04
	add r4, r4, #1
	cmp r4, #3
	blt _0217C04C
	ldr r0, [r5, #0x74]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl sub_0200E4E8
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xb4
	blx MI_CpuFill8
	add r0, r6, #0
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217C088: .word 0x000008A1
_0217C08C: .word 0x0217C640
_0217C090: .word 0x00007FFF
	thumb_func_end ovy33_217c010

	thumb_func_start ovy33_217c094
ovy33_217c094: ; 0x0217C094
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0217C10C ; =0x00008004
	str r1, [sp, #8]
	bl sub_0201FD00
	add r6, r0, #0
	add r0, r5, #0
	bl ovy33_217bd60
	add r7, r0, #0
	ldrb r1, [r5, #8]
	add r0, r6, #0
	bl sub_0201FD34
	ldrb r1, [r5, #8]
	mov r4, #0
	cmp r1, #0
	ble _0217C0D6
_0217C0BC:
	add r1, r5, r4
	ldrb r1, [r1, #0x1e]
	add r0, r7, #0
	bl sub_0201FF08
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0201FD6C
	ldrb r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blt _0217C0BC
_0217C0D6:
	ldrh r2, [r5, #0xc]
	mov r0, #0xb2
	lsl r0, r0, #2
	lsl r2, r2, #0x18
	lsr r3, r2, #0x1d
	mov r2, #0x12
	lsl r2, r2, #4
	add r0, r5, r0
	mul r2, r3
	add r0, r0, r2
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #9]
	add r5, #0x88
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02161FC4
	add r4, r0, #0
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217C10C: .word 0x00008004
	thumb_func_end ovy33_217c094
_0217C110:
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0xC0, 0x46, 0x4C, 0x07, 0x00, 0x00

	thumb_func_start ovy33_217c11c
ovy33_217c11c: ; 0x0217C11C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r7, r0, #0
	add r0, r1, #0
	mov r3, #0
	add r6, r2, #0
	mov r1, #0
	sub r2, r3, #1
	cmp r4, #8
	bhi _0217C150
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0217C13C: ; jump table
	.short _0217C150 - _0217C13C - 2 ; case 0
	.short _0217C150 - _0217C13C - 2 ; case 1
	.short _0217C150 - _0217C13C - 2 ; case 2
	.short _0217C150 - _0217C13C - 2 ; case 3
	.short _0217C150 - _0217C13C - 2 ; case 4
	.short _0217C14E - _0217C13C - 2 ; case 5
	.short _0217C14E - _0217C13C - 2 ; case 6
	.short _0217C14E - _0217C13C - 2 ; case 7
	.short _0217C14E - _0217C13C - 2 ; case 8
_0217C14E:
	mov r1, #1
_0217C150:
	cmp r6, #6
	bne _0217C166
	cmp r1, #0
	bne _0217C160
	cmp r0, #2
	bne _0217C166
	mov r2, #0
	b _0217C166
_0217C160:
	cmp r0, #6
	bne _0217C166
	mov r2, #1
_0217C166:
	mov r5, #0
	mvn r5, r5
	cmp r2, r5
	beq _0217C1DA
	cmp r4, #8
	bhi _0217C236
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217C17E: ; jump table
	.short _0217C190 - _0217C17E - 2 ; case 0
	.short _0217C1A0 - _0217C17E - 2 ; case 1
	.short _0217C1B2 - _0217C17E - 2 ; case 2
	.short _0217C1B2 - _0217C17E - 2 ; case 3
	.short _0217C236 - _0217C17E - 2 ; case 4
	.short _0217C190 - _0217C17E - 2 ; case 5
	.short _0217C1A0 - _0217C17E - 2 ; case 6
	.short _0217C1B2 - _0217C17E - 2 ; case 7
	.short _0217C1B2 - _0217C17E - 2 ; case 8
_0217C190:
	cmp r2, #0
	bne _0217C198
	ldr r3, _0217C23C ; =0x00000132
	b _0217C236
_0217C198:
	cmp r2, #1
	bne _0217C236
	ldr r3, _0217C240 ; =0x00000133
	b _0217C236
_0217C1A0:
	cmp r2, #0
	bne _0217C1AA
	mov r3, #0x4d
_0217C1A6:
	lsl r3, r3, #2
	b _0217C236
_0217C1AA:
	cmp r2, #1
	bne _0217C236
	ldr r3, _0217C244 ; =0x00000135
	b _0217C236
_0217C1B2:
	cmp r2, #0
	bne _0217C1C6
	add r0, sp, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	bne _0217C1C2
	ldr r3, _0217C248 ; =0x00000137
	b _0217C236
_0217C1C2:
	ldr r3, _0217C24C ; =0x00000136
	b _0217C236
_0217C1C6:
	cmp r2, #1
	bne _0217C236
	add r0, sp, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	bne _0217C1D6
	ldr r3, _0217C250 ; =0x00000139
	b _0217C236
_0217C1D6:
	mov r3, #0x4e
	b _0217C1A6
_0217C1DA:
	cmp r1, #0
	bne _0217C1F2
	cmp r0, #3
	bhs _0217C236
	cmp r6, #6
	bhs _0217C1EA
	ldr r6, _0217C254 ; =0x0217C5C4
	b _0217C200
_0217C1EA:
	cmp r0, #2
	bhs _0217C236
	ldr r6, _0217C258 ; =0x0217C5BC
	b _0217C200
_0217C1F2:
	cmp r0, #4
	bhs _0217C224
	cmp r6, #6
	bhs _0217C1FE
	ldr r6, _0217C25C ; =0x0217C5D0
	b _0217C200
_0217C1FE:
	ldr r6, _0217C260 ; =0x0217C5E0
_0217C200:
	lsl r4, r0, #2
	add r0, r6, r4
	ldrh r1, [r0, #2]
	ldrh r0, [r6, r4]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	bl ovy33_217c328
	add r1, r5, #0
	blx sub_0208D65C
	ldrh r0, [r6, r4]
	add r0, r0, r1
	lsl r0, r0, #0x10
	b _0217C234
_0217C224:
	add r0, r7, #0
	bl ovy33_217c328
	mov r1, #0x64
	blx sub_0208D65C
	add r1, #0xc8
	lsl r0, r1, #0x10
_0217C234:
	lsr r3, r0, #0x10
_0217C236:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217C23C: .word 0x00000132
_0217C240: .word 0x00000133
_0217C244: .word 0x00000135
_0217C248: .word 0x00000137
_0217C24C: .word 0x00000136
_0217C250: .word 0x00000139
_0217C254: .word 0x0217C5C4
_0217C258: .word 0x0217C5BC
_0217C25C: .word 0x0217C5D0
_0217C260: .word 0x0217C5E0
	thumb_func_end ovy33_217c11c

	thumb_func_start ovy33_217c264
ovy33_217c264: ; 0x0217C264
	push {lr}
	sub sp, #0xc
	ldr r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	add r0, sp, #0x10
	ldrh r0, [r0, #0xc]
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ovy11_2162864
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy33_217c264

	thumb_func_start sub_0217C288
sub_0217C288: ; 0x0217C288
	cmp r0, #0x64
	bhs _0217C290
	mov r0, #3
	bx lr
_0217C290:
	cmp r0, #0x78
	bhs _0217C298
	mov r0, #6
	bx lr
_0217C298:
	cmp r0, #0x8c
	bhs _0217C2A0
	mov r0, #9
	bx lr
_0217C2A0:
	cmp r0, #0xa0
	bhs _0217C2A8
	mov r0, #0xc
	bx lr
_0217C2A8:
	cmp r0, #0xb4
	bhs _0217C2B0
	mov r0, #0xf
	bx lr
_0217C2B0:
	cmp r0, #0xc8
	bhs _0217C2B8
	mov r0, #0x12
	bx lr
_0217C2B8:
	cmp r0, #0xdc
	bhs _0217C2C0
	mov r0, #0x15
	bx lr
_0217C2C0:
	mov r0, #0x1f
	bx lr
	thumb_func_end sub_0217C288

	thumb_func_start ovy33_217c2c4
ovy33_217c2c4: ; 0x0217C2C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	ldr r7, [sp, #0x3c]
	str r3, [sp, #0x14]
	add r4, r2, #0
	add r0, r6, #0
	mov r1, #0xd4
	mov r3, #0xf
	ldr r5, [sp, #0x38]
	str r7, [sp]
	bl sub_021628C0
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0217C288
	str r0, [sp, #0x1c]
	mov r4, #0
	add r6, #0x30
_0217C2EC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	lsl r2, r4, #1
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r2, r5, r2
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0xd3
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, #0x3c
	mul r0, r4
	ldrh r2, [r2, #4]
	ldr r3, [r5]
	add r0, r6, r0
	bl sub_02162490
	add r4, r4, #1
	cmp r4, #2
	blt _0217C2EC
	ldr r0, [sp, #0x18]
	bl GFL_HeapFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy33_217c2c4

	thumb_func_start ovy33_217c328
ovy33_217c328: ; 0x0217C328
	push {r4, lr}
	mov r4, #0
	mvn r4, r4
	add r0, r4, #0
	bl sub_02005748
	lsr r1, r4, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	thumb_func_end ovy33_217c328
_0217C340:
	.byte 0x0D, 0x14, 0x12, 0x0D, 0x12, 0x15, 0x0D, 0x0C, 0x09, 0x13, 0x16, 0x0E, 0x16, 0x13, 0x09, 0x0E
	.byte 0x12, 0x12, 0x0D, 0x0F, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x01, 0x03, 0x00, 0x02, 0x02
	.byte 0x04, 0x00, 0x00, 0x02, 0x05, 0x00, 0x02, 0x00, 0x03, 0x00, 0x02, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0x28
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x12, 0x11, 0x0F, 0x11, 0x12, 0x0E, 0x0F
	.byte 0x0B, 0x15, 0x14, 0x0C, 0x14, 0x15, 0x0B, 0x0C, 0x0E, 0x15, 0x11, 0x0C, 0x11, 0x15, 0x0E, 0x0C
	.byte 0x0B, 0x12, 0x14, 0x0F, 0x14, 0x12, 0x0B, 0x0F, 0x08, 0x13, 0x17, 0x0E, 0x17, 0x13, 0x08, 0x0E
	.byte 0x0E, 0x12, 0x11, 0x0C, 0x11, 0x12, 0x0E, 0x0C, 0x0B, 0x12, 0x14, 0x0C, 0x14, 0x12, 0x0B, 0x0C
	.byte 0x08, 0x0E, 0x17, 0x0E, 0x0E, 0x15, 0x11, 0x0F, 0x11, 0x15, 0x0E, 0x0F, 0x0B, 0x15, 0x14, 0x0F
	.byte 0x14, 0x15, 0x0B, 0x0F, 0x08, 0x13, 0x17, 0x13, 0x00, 0x80, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x17, 0x00, 0x00, 0xF0, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x80, 0x24, 0x00
	.byte 0x08, 0x08, 0x08, 0x00, 0x33, 0x02, 0x34, 0x03, 0x35, 0x04, 0x36, 0x05, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF9, 0x80, 0x17, 0x02, 0x11, 0x81, 0x17, 0x02
	.byte 0x55, 0x81, 0x17, 0x02, 0x81, 0x81, 0x17, 0x02, 0xE1, 0x81, 0x17, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xE5, 0x81, 0x17, 0x02, 0xE9, 0x81, 0x17, 0x02, 0x19, 0x82, 0x17, 0x02, 0x31, 0x82, 0x17, 0x02
	.byte 0x61, 0x82, 0x17, 0x02, 0x03, 0x00, 0x00, 0x00, 0x75, 0x82, 0x17, 0x02, 0x79, 0x82, 0x17, 0x02
	.byte 0x91, 0x82, 0x17, 0x02, 0x95, 0x82, 0x17, 0x02, 0xCD, 0x82, 0x17, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xF1, 0x82, 0x17, 0x02, 0xF5, 0x82, 0x17, 0x02, 0x35, 0x83, 0x17, 0x02, 0x39, 0x83, 0x17, 0x02
	.byte 0x75, 0x83, 0x17, 0x02, 0x00, 0x00, 0x5F, 0x5D, 0x80, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xC0, 0xFF, 0xFF, 0x00, 0xE0, 0x00, 0x00, 0x00, 0xD0, 0xFF, 0xFF, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0xD0, 0xFF, 0xFF, 0x00, 0x90, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0xC0, 0xFF, 0xFF, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x70, 0xFF, 0xFF
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF, 0x00, 0xE0, 0x00, 0x00
	.byte 0x00, 0xD0, 0xFF, 0xFF, 0x00, 0x40, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0xD0, 0xFF, 0xFF
	.byte 0x00, 0x90, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF, 0x00, 0xE0, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x70, 0xFF, 0xFF, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0xE7, 0x28, 0x64, 0x00, 0xE8, 0x28, 0x2C, 0x01, 0xE9, 0x28, 0xC2, 0x01, 0xEA, 0x28
	.byte 0xF4, 0x01, 0xEB, 0x28, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x61, 0xA3, 0x17, 0x02
	.byte 0xF1, 0xA3, 0x17, 0x02, 0x00, 0x05, 0x04, 0x04, 0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00
	.byte 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x06
	.byte 0x07, 0x08, 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x00, 0x00, 0xC8, 0x00, 0x2B, 0x01, 0x32, 0x00, 0x45, 0x00
	.byte 0x46, 0x00, 0x59, 0x00, 0x00, 0x00, 0x31, 0x00, 0x1E, 0x00, 0x45, 0x00, 0x32, 0x00, 0x6D, 0x00
	.byte 0x6E, 0x00, 0x9F, 0x00, 0x8C, 0x00, 0xB3, 0x00, 0xA0, 0x00, 0xC7, 0x00, 0xB4, 0x00, 0xDB, 0x00
	.byte 0xA0, 0x00, 0xB3, 0x00, 0xB4, 0x00, 0xC7, 0x00, 0xC8, 0x00, 0xDB, 0x00, 0xDC, 0x00, 0xEF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x64, 0x77, 0x5F, 0x70, 0x6F, 0x73, 0x74, 0x6D, 0x61, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x65, 0x76, 0x65, 0x6E, 0x74, 0x5F, 0x67, 0x61, 0x6D, 0x65, 0x5F, 0x6D, 0x61, 0x6E, 0x75, 0x61
	.byte 0x6C, 0x2E, 0x63, 0x00, 0x66, 0x6C, 0x64, 0x5F, 0x74, 0x72, 0x61, 0x64, 0x65, 0x2E, 0x63, 0x00
	.byte 0x74, 0x72, 0x69, 0x61, 0x6C, 0x5F, 0x68, 0x6F, 0x75, 0x73, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x62, 0x73, 0x75, 0x62, 0x77, 0x61, 0x79, 0x5F, 0x73, 0x63, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0217C340
