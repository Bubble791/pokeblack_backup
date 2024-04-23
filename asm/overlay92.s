    .include "macros/function.inc"
	.include "overlay92.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy92_21eec80
ovy92_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_021804C0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0x20
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy92_21eeef8
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_021804BC
	bl sub_02016B1C
	bl sub_02031954
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ovy36_0218056c
	add r1, r6, #0
	bl ovy92_21ef060
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_021804A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02180494
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r2, _021EED28 ; =0x021F0048
	str r6, [sp, #4]
	add r0, r7, #0
	mov r3, #3
	bl ovy92_21ef470
	str r0, [r4]
	add r0, r5, #0
	bl sub_021804B8
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl ovy92_21ef614
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ovy92_21ef738
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ovy92_21ef8c0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_021804F0
	add r1, r0, #0
	ldr r0, [r4, #8]
	add r2, r6, #0
	bl ovy92_21ef954
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy92_21eef10
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED28: .word 0x021F0048
	thumb_func_end ovy92_21eec80

	thumb_func_start ovy92_21eed2c
ovy92_21eed2c: ; 0x021EED2C
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02032548
	ldr r0, [r4, #0x18]
	bl ovy92_21efa04
	ldr r0, [r4, #0x14]
	bl sub_021EF91C
	ldr r0, [r4, #0x10]
	bl sub_021EF798
	ldr r0, [r4, #4]
	bl sub_021EF668
	ldr r0, [r4]
	bl sub_021EF4FC
	ldr r0, [r4, #8]
	bl ovy92_21ef124
	add r0, r5, #0
	mov r1, #0
	bl ovy36_218102c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy92_21eed2c

	thumb_func_start ovy92_21eed6c
ovy92_21eed6c: ; 0x021EED6C
	push {r4, lr}
	mov r1, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	bl ovy92_21ef504
	ldr r0, [r4, #4]
	bl ovy92_21ef670
	ldr r0, [r4, #0x10]
	bl ovy92_21ef7a0
	ldr r0, [r4, #0x14]
	bl sub_021EF924
	ldr r0, [r4, #0x18]
	bl ovy92_21efa28
	ldr r0, [r4, #8]
	bl ovy92_21ef138
	pop {r4, pc}
	thumb_func_end ovy92_21eed6c

	thumb_func_start ovy92_21eed9c
ovy92_21eed9c: ; 0x021EED9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	mov r1, #0
	bl sub_0218105C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021804F0
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_021EFF6C
	cmp r5, #4
	bhi _021EEE16
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEDCE: ; jump table
	.short _021EEDD8 - _021EEDCE - 2 ; case 0
	.short _021EEDDC - _021EEDCE - 2 ; case 1
	.short _021EEDEE - _021EEDCE - 2 ; case 2
	.short _021EEE00 - _021EEDCE - 2 ; case 3
	.short _021EEE12 - _021EEDCE - 2 ; case 4
_021EEDD8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEDDC:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x18]
	add r0, r6, #0
	bl ovy92_21efe74
	pop {r3, r4, r5, r6, r7, pc}
_021EEDEE:
	mov r0, #1
	str r0, [sp]
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x18]
	add r0, r6, #0
	bl ovy92_21efe74
	pop {r3, r4, r5, r6, r7, pc}
_021EEE00:
	mov r0, #2
	str r0, [sp]
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x18]
	add r0, r6, #0
	bl ovy92_21efe74
	pop {r3, r4, r5, r6, r7, pc}
_021EEE12:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEE16:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy92_21eed9c

	thumb_func_start ovy92_21eee1c
ovy92_21eee1c: ; 0x021EEE1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0218105C
	add r4, r0, #0
	cmp r5, #0
	beq _021EEE44
	mov r0, #0x81
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy92_21ef68c
	pop {r3, r4, r5, r6, r7, pc}
_021EEE44:
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy92_21ef6b4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21eee1c

	thumb_func_start ovy92_21eee50
ovy92_21eee50: ; 0x021EEE50
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0218105C
	ldr r0, [r0, #0x18]
	add r1, r4, #0
	bl ovy92_21efa5c
	pop {r4, pc}
	thumb_func_end ovy92_21eee50

	thumb_func_start ovy92_21eee64
ovy92_21eee64: ; 0x021EEE64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r0, #0
	mov r7, #0
	bl sub_0218105C
	add r4, r0, #0
	cmp r5, #0
	beq _021EEE7E
	cmp r5, #1
	beq _021EEE88
	pop {r3, r4, r5, r6, r7, pc}
_021EEE7E:
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	bl ovy92_21ef928
	pop {r3, r4, r5, r6, r7, pc}
_021EEE88:
	add r0, r6, #0
	bl sub_021804F0
	bl sub_0219A6DC
	cmp r0, #0
	ldr r0, [r4, #0x14]
	bne _021EEEA0
	mov r1, #1
	bl ovy92_21ef928
	pop {r3, r4, r5, r6, r7, pc}
_021EEEA0:
	mov r1, #2
	bl ovy92_21ef928
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21eee64

	thumb_func_start ovy92_21eeea8
ovy92_21eeea8: ; 0x021EEEA8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0218105C
	cmp r4, #0
	beq _021EEEBC
	cmp r4, #1
	beq _021EEEC8
	pop {r4, pc}
_021EEEBC:
	ldr r0, [r0, #0x10]
	mov r1, #5
	mov r2, #0x3c
	bl ovy92_21ef7f4
	pop {r4, pc}
_021EEEC8:
	ldr r0, [r0, #0x10]
	mov r1, #5
	bl ovy92_21ef7dc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy92_21eeea8

	thumb_func_start ovy92_21eeed4
ovy92_21eeed4: ; 0x021EEED4
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl sub_0218105C
	ldr r1, [r0, #0x1c]
	add r2, r4, #0
	bl ovy92_21eef10
	pop {r4, pc}
	thumb_func_end ovy92_21eeed4
_021EEEE8:
	.byte 0x01, 0x48, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x6C, 0x00, 0x00, 0x04, 0x71, 0x49, 0x07, 0x02

	thumb_func_start ovy92_21eeef8
ovy92_21eeef8: ; 0x021EEEF8
	push {r3, lr}
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #2
	bl sub_0200BAC4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy92_21eeef8

	thumb_func_start ovy92_21eef10
ovy92_21eef10: ; 0x021EEF10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl sub_021EFF70
	cmp r0, #4
	bls _021EEF22
	b _021EF058
_021EEF22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEF2E: ; jump table
	.short _021EEF38 - _021EEF2E - 2 ; case 0
	.short _021EEF64 - _021EEF2E - 2 ; case 1
	.short _021EEF92 - _021EEF2E - 2 ; case 2
	.short _021EEFDE - _021EEF2E - 2 ; case 3
	.short _021EF018 - _021EEF2E - 2 ; case 4
_021EEF38:
	ldr r0, [r4]
	mov r1, #1
	bl sub_021EF608
	ldr r0, [r4]
	mov r1, #0
	bl sub_021EF600
	ldr r5, _021EF05C ; =0x00000448
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0
	add r3, r5, #0
	bl sub_02032540
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	add r3, r5, #0
	bl sub_02032540
	pop {r3, r4, r5, pc}
_021EEF64:
	ldr r0, [r4]
	mov r1, #1
	bl sub_021EF608
	ldr r0, [r4]
	mov r1, #1
	bl sub_021EF600
	ldr r0, [r4, #0xc]
	ldr r3, _021EF05C ; =0x00000448
	mov r1, #1
	mov r2, #1
	bl sub_02032540
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ovy92_21ef7dc
	pop {r3, r4, r5, pc}
_021EEF92:
	ldr r0, [r4]
	mov r1, #1
	bl sub_021EF608
	ldr r0, [r4]
	mov r1, #2
	bl sub_021EF600
	ldr r5, _021EF05C ; =0x00000448
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #1
	add r3, r5, #0
	bl sub_02032540
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #1
	add r3, r5, #0
	bl sub_02032540
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ovy92_21ef7dc
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ovy92_21ef7dc
	pop {r3, r4, r5, pc}
_021EEFDE:
	ldr r0, [r4]
	mov r1, #0
	bl sub_021EF608
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ovy92_21ef7dc
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ovy92_21ef7dc
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ovy92_21ef928
	pop {r3, r4, r5, pc}
_021EF018:
	ldr r0, [r4]
	mov r1, #0
	bl sub_021EF608
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ovy92_21ef7c4
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ovy92_21ef7dc
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ovy92_21ef7dc
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl ovy92_21ef7dc
	add r0, r5, #0
	mov r1, #1
	bl ovy92_21eee64
_021EF058:
	pop {r3, r4, r5, pc}
	nop
_021EF05C: .word 0x00000448
	thumb_func_end ovy92_21eef10

	thumb_func_start ovy92_21ef060
ovy92_21ef060: ; 0x021EF060
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021EF114 ; =0x000004DF
	mov r5, #0x72
	str r0, [sp]
	lsl r5, r5, #2
	add r0, r1, #0
	ldr r3, _021EF118 ; =0x021F0440
	add r1, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, _021EF11C ; =0x02FFFC3C
	str r6, [r4, #4]
	ldr r0, [r0]
	sub r5, #8
	str r0, [r4, r5]
	ldr r0, [r4, #4]
	ldr r1, _021EF120 ; =0x021EFFD8
	mov r2, #0
	mov r5, #0
	bl ovy36_21b80b4
	add r7, r5, #0
_021EF092:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021EF194
	str r7, [r0]
	str r5, [r0, #4]
	add r1, r7, #0
	str r6, [r0, #0xc]
	bl ovy92_21ef1a0
	add r5, r5, #1
	cmp r5, #0x16
	blt _021EF092
	add r0, r4, #0
	mov r1, #0x15
	bl sub_021EF194
	add r5, r0, #0
	bl sub_021EF458
	str r0, [r4]
	bl sub_02005E48
	mov r6, #0x2d
	lsl r6, r6, #8
	add r1, r6, #0
	blx sub_0208D868
	mov r0, #0x1e
	mul r0, r1
	add r1, r6, #0
	blx sub_0208D868
	cmp r0, #0
	beq _021EF0EA
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF0F8
_021EF0EA:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF0F8:
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r5, #0
	bl ovy92_21ef2d0
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy92_21ef250
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF114: .word 0x000004DF
_021EF118: .word 0x021F0440
_021EF11C: .word 0x02FFFC3C
_021EF120: .word 0x021EFFD8
	thumb_func_end ovy92_21ef060

	thumb_func_start ovy92_21ef124
ovy92_21ef124: ; 0x021EF124
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ovy36_21b81bc
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy92_21ef124

	thumb_func_start ovy92_21ef138
ovy92_21ef138: ; 0x021EF138
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EF190 ; =0x02FFFC3C
	mov r1, #0x71
	ldr r0, [r0]
	lsl r1, r1, #2
	str r0, [sp]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, [sp]
	ldr r3, [r5, r1]
	sub r0, r0, r2
	add r2, r3, r0
	mov r0, #1
	and r0, r2
	lsr r4, r2, #1
	str r0, [r5, r1]
	cmp r4, #0
	beq _021EF172
	mov r7, #1
	mov r6, #0
	lsl r7, r7, #0xc
_021EF164:
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02049A64
	sub r4, r4, #1
	bne _021EF164
_021EF172:
	mov r1, #7
	ldr r0, [sp]
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_021EF194
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r5, #4]
	bl ovy36_21b83b4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF190: .word 0x02FFFC3C
	thumb_func_end ovy92_21ef138

	thumb_func_start sub_021EF194
sub_021EF194: ; 0x021EF194
	mov r2, #0x14
	add r0, #8
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF194

	thumb_func_start ovy92_21ef1a0
ovy92_21ef1a0: ; 0x021EF1A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021EF1AC
	mov r3, #1
	b _021EF1AE
_021EF1AC:
	mov r3, #0
_021EF1AE:
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_021B8258
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy92_21ef1a0

	thumb_func_start ovy92_21ef1c4
ovy92_21ef1c4: ; 0x021EF1C4
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r1, [r2]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_021B8224
	add r2, r0, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	pop {r4, pc}
	thumb_func_end ovy92_21ef1c4

	thumb_func_start sub_021EF1E8
sub_021EF1E8: ; 0x021EF1E8
	ldr r3, _021EF1F0 ; =ovy92_21ef1f4
	mov r2, #0
	bx r3
	nop
_021EF1F0: .word ovy92_21ef1f4
	thumb_func_end sub_021EF1E8

	thumb_func_start ovy92_21ef1f4
ovy92_21ef1f4: ; 0x021EF1F4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	mov r1, #0
	bl sub_021B84E8
	str r6, [sp]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy92_21ef1f4

	thumb_func_start ovy92_21ef250
ovy92_21ef250: ; 0x021EF250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r3, r1, #0
	add r4, r2, #0
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_021B84E8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy92_21ef250

	thumb_func_start ovy92_21ef278
ovy92_21ef278: ; 0x021EF278
	push {r3, lr}
	add r2, r0, #0
	add r3, r1, #0
	ldr r1, [r2]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef278

	thumb_func_start ovy92_21ef29c
ovy92_21ef29c: ; 0x021EF29C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	lsl r1, r0, #4
	ldr r0, _021EF2C8 ; =0x021F0140
	ldrh r0, [r0, r1]
	cmp r0, #0
	ble _021EF2C6
	ldr r6, _021EF2CC ; =0x021F0134
_021EF2B0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021EF1E8
	ldr r0, [r5, #4]
	add r4, r4, #1
	lsl r0, r0, #4
	add r0, r6, r0
	ldrh r0, [r0, #0xc]
	cmp r4, r0
	blt _021EF2B0
_021EF2C6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EF2C8: .word 0x021F0140
_021EF2CC: .word 0x021F0134
	thumb_func_end ovy92_21ef29c

	thumb_func_start ovy92_21ef2d0
ovy92_21ef2d0: ; 0x021EF2D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	lsl r1, r0, #4
	ldr r0, _021EF300 ; =0x021F0140
	mov r4, #0
	ldrh r0, [r0, r1]
	cmp r0, #0
	ble _021EF2FE
	ldr r7, _021EF304 ; =0x021F0134
_021EF2E6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy92_21ef1f4
	ldr r0, [r5, #4]
	add r4, r4, #1
	lsl r0, r0, #4
	add r0, r7, r0
	ldrh r0, [r0, #0xc]
	cmp r4, r0
	blt _021EF2E6
_021EF2FE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF300: .word 0x021F0140
_021EF304: .word 0x021F0134
	thumb_func_end ovy92_21ef2d0

	thumb_func_start ovy92_21ef308
ovy92_21ef308: ; 0x021EF308
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #4]
	ldr r0, _021EF344 ; =0x021F0140
	lsl r1, r2, #4
	ldrh r0, [r0, r1]
	mov r4, #0
	cmp r0, #0
	ble _021EF342
	ldr r7, _021EF348 ; =0x021F0134
	add r6, r4, #0
_021EF31E:
	str r6, [sp]
	ldr r1, [r5]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r2, [r5, #4]
	add r4, r4, #1
	lsl r0, r2, #4
	add r0, r7, r0
	ldrh r0, [r0, #0xc]
	cmp r4, r0
	blt _021EF31E
_021EF342:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF344: .word 0x021F0140
_021EF348: .word 0x021F0134
	thumb_func_end ovy92_21ef308

	thumb_func_start ovy92_21ef34c
ovy92_21ef34c: ; 0x021EF34C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	lsl r1, r0, #4
	ldr r0, _021EF384 ; =0x021F0140
	ldrh r0, [r0, r1]
	cmp r0, #0
	ble _021EF37E
	ldr r6, _021EF388 ; =0x021F0134
_021EF360:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy92_21ef278
	cmp r0, #0
	bne _021EF370
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EF370:
	ldr r0, [r5, #4]
	add r4, r4, #1
	lsl r0, r0, #4
	add r0, r6, r0
	ldrh r0, [r0, #0xc]
	cmp r4, r0
	blt _021EF360
_021EF37E:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021EF384: .word 0x021F0140
_021EF388: .word 0x021F0134
	thumb_func_end ovy92_21ef34c

	thumb_func_start ovy92_21ef38c
ovy92_21ef38c: ; 0x021EF38C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #4]
	ldr r0, _021EF3D0 ; =0x021F0140
	lsl r3, r2, #4
	ldrh r0, [r0, r3]
	mov r4, #0
	cmp r0, #0
	ble _021EF3CC
	lsl r0, r1, #0x18
	ldr r7, _021EF3D4 ; =0x021F0134
	lsr r6, r0, #0x18
_021EF3A4:
	ldr r1, [r5]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r6, #0
	bl sub_021B84F0
	ldr r2, [r5, #4]
	add r4, r4, #1
	lsl r0, r2, #4
	add r0, r7, r0
	ldrh r0, [r0, #0xc]
	cmp r4, r0
	blt _021EF3A4
_021EF3CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF3D0: .word 0x021F0140
_021EF3D4: .word 0x021F0134
	thumb_func_end ovy92_21ef38c

	thumb_func_start ovy92_21ef3d8
ovy92_21ef3d8: ; 0x021EF3D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #4]
	ldr r0, _021EF450 ; =0x021F0140
	lsl r1, r2, #4
	ldrh r0, [r0, r1]
	mov r4, #0
	cmp r0, #0
	ble _021EF44E
	mov r7, #1
_021EF3EC:
	str r7, [sp]
	ldr r1, [r5]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r0, r6, #0
	bl ovy36_21b8580
	str r0, [sp]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	ldr r2, [r5, #4]
	ldr r0, _021EF454 ; =0x021F0134
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r0, [r0, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF3EC
_021EF44E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF450: .word 0x021F0140
_021EF454: .word 0x021F0134
	thumb_func_end ovy92_21ef3d8

	thumb_func_start sub_021EF458
sub_021EF458: ; 0x021EF458
	add r2, r0, #0
	ldr r1, [r2]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, _021EF46C ; =sub_021B8278
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bx r3
	.align 2, 0
_021EF46C: .word sub_021B8278
	thumb_func_end sub_021EF458

	thumb_func_start ovy92_21ef470
ovy92_21ef470: ; 0x021EF470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EF4F0 ; =0x00000695
	str r3, [sp, #4]
	str r0, [sp]
	add r0, sp, #0x20
	add r6, r1, #0
	add r7, r2, #0
	ldrh r0, [r0, #4]
	ldr r3, _021EF4F4 ; =0x021F0440
	mov r1, #0x58
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	add r1, r4, #0
	ldr r0, [sp, #4]
	str r7, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldr r0, _021EF4F8 ; =0x021F0008
	add r1, #0x10
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	bl sub_021975DC
	ldr r0, [r4]
	mov r1, #9
	bl sub_021975E4
	ldr r0, [r4]
	mov r1, #0
	bl sub_021975EC
	ldr r0, [r4]
	mov r1, #0
	bl sub_021975F4
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	bl sub_02197604
	ldr r0, [r4]
	mov r1, #1
	bl sub_021975D4
	mov r0, #1
	str r0, [r4, #8]
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	bl sub_021EF600
	add r0, r4, #0
	bl ovy92_21ef504
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF4F0: .word 0x00000695
_021EF4F4: .word 0x021F0440
_021EF4F8: .word 0x021F0008
	thumb_func_end ovy92_21ef470

	thumb_func_start sub_021EF4FC
sub_021EF4FC: ; 0x021EF4FC
	ldr r3, _021EF500 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021EF500: .word GFL_HeapFree
	thumb_func_end sub_021EF4FC

	thumb_func_start ovy92_21ef504
ovy92_21ef504: ; 0x021EF504
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021EF53E
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #4
	add r2, r5, #0
	add r3, r1, r0
	add r2, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r5, #0
	ldr r0, _021EF5DC ; =0x021F0008
	add r1, #0x10
	mov r2, #0x20
	blx MI_CpuCopy8
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0x10
	bl sub_02197604
	mov r0, #0
	str r0, [r5, #0x38]
_021EF53E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EF580
	ldr r0, [r5, #4]
	add r4, r5, #0
	add r1, sp, #0
	add r4, #0x3c
	bl sub_02186344
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x3c]
	asr r0, r0, #0xc
	sub r1, r2, r0
	ldr r6, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r0, r6, r0
	mul r0, r1
	ldr r1, [r4, #4]
	sub r1, r2, r1
	blx sub_0208D65C
	sub r1, r6, r0
	ldr r0, _021EF5E0 ; =0x00007FFF
	cmp r1, r0
	ble _021EF574
	add r1, r0, #0
	b _021EF57A
_021EF574:
	cmp r1, #0
	bge _021EF57A
	mov r1, #0
_021EF57A:
	ldr r0, [r5]
	bl sub_021975EC
_021EF580:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021EF5D6
	ldr r7, _021EF5DC ; =0x021F0008
	mov r4, #0
_021EF58A:
	mov r0, #0x34
	mov r1, #0x36
	ldrb r6, [r7, r4]
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mul r0, r6
	blx sub_0208D65C
	sub r0, r6, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	cmp r1, #0xff
	ble _021EF5A8
	mov r1, #0xff
	b _021EF5AE
_021EF5A8:
	cmp r1, #0
	bge _021EF5AE
	mov r1, #0
_021EF5AE:
	add r0, r5, r4
	add r4, r4, #1
	strb r1, [r0, #0x10]
	cmp r4, #0x20
	blt _021EF58A
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0x10
	bl sub_02197604
	mov r0, #0x34
	ldrsh r1, [r5, r0]
	add r0, r1, #1
	strh r0, [r5, #0x34]
	mov r0, #0x36
	ldrsh r0, [r5, r0]
	cmp r1, r0
	ble _021EF5D6
	mov r0, #0
	str r0, [r5, #0x30]
_021EF5D6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EF5DC: .word 0x021F0008
_021EF5E0: .word 0x00007FFF
	thumb_func_end ovy92_21ef504

	thumb_func_start sub_021EF5E4
sub_021EF5E4: ; 0x021EF5E4
	mov r2, #1
	str r2, [r0, #0x30]
	mov r2, #0
	strh r2, [r0, #0x34]
	strh r1, [r0, #0x36]
	bx lr
	thumb_func_end sub_021EF5E4

	thumb_func_start sub_021EF5F0
sub_021EF5F0: ; 0x021EF5F0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _021EF5FA
	mov r0, #1
	bx lr
_021EF5FA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF5F0

	thumb_func_start sub_021EF600
sub_021EF600: ; 0x021EF600
	mov r2, #1
	str r2, [r0, #0x38]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021EF600

	thumb_func_start sub_021EF608
sub_021EF608: ; 0x021EF608
	ldr r0, [r0]
	ldr r3, _021EF610 ; =sub_021975D4
	bx r3
	nop
_021EF610: .word sub_021975D4
	thumb_func_end sub_021EF608

	thumb_func_start ovy92_21ef614
ovy92_21ef614: ; 0x021EF614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021EF65C ; =0x0000079B
	add r6, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021EF660 ; =0x021F0440
	mov r1, #0x38
	mov r2, #1
	bl GFL_HeapAllocate
	str r4, [r0]
	add r4, r0, #0
	ldr r7, _021EF664 ; =0x021EFFC8
	str r0, [sp, #4]
	mov r5, #0
	add r4, #8
_021EF638:
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	add r0, r6, #0
	bl sub_021EF194
	add r1, r0, #0
	mov r0, #0xc
	mul r0, r5
	add r0, r4, r0
	bl ovy92_21ef6dc
	add r5, r5, #1
	cmp r5, #4
	blt _021EF638
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF65C: .word 0x0000079B
_021EF660: .word 0x021F0440
_021EF664: .word 0x021EFFC8
	thumb_func_end ovy92_21ef614

	thumb_func_start sub_021EF668
sub_021EF668: ; 0x021EF668
	ldr r3, _021EF66C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021EF66C: .word GFL_HeapFree
	thumb_func_end sub_021EF668

	thumb_func_start ovy92_21ef670
ovy92_21ef670: ; 0x021EF670
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0
	add r4, #8
	mov r6, #0xc
_021EF67A:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy92_21ef6f0
	add r5, r5, #1
	cmp r5, #4
	blt _021EF67A
	pop {r4, r5, r6, pc}
	thumb_func_end ovy92_21ef670

	thumb_func_start ovy92_21ef68c
ovy92_21ef68c: ; 0x021EF68C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	bl sub_021EF6D0
	add r6, r0, #0
	bl sub_021EF734
	cmp r0, #0
	bne _021EF6B2
	ldr r0, [r5]
	add r1, r4, #0
	bl ovy12_2167a14
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EF710
_021EF6B2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy92_21ef68c

	thumb_func_start ovy92_21ef6b4
ovy92_21ef6b4: ; 0x021EF6B4
	push {r4, lr}
	add r1, r2, #0
	bl sub_021EF6D0
	add r4, r0, #0
	bl sub_021EF734
	cmp r0, #0
	beq _021EF6CC
	add r0, r4, #0
	bl ovy92_21ef720
_021EF6CC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef6b4

	thumb_func_start sub_021EF6D0
sub_021EF6D0: ; 0x021EF6D0
	mov r2, #0xc
	add r0, #8
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF6D0

	thumb_func_start ovy92_21ef6dc
ovy92_21ef6dc: ; 0x021EF6DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	blx MI_CpuFill8
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef6dc

	thumb_func_start ovy92_21ef6f0
ovy92_21ef6f0: ; 0x021EF6F0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021EF70C
	add r4, sp, #0
	add r1, r4, #0
	bl sub_021672F8
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy92_21ef1c4
_021EF70C:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy92_21ef6f0

	thumb_func_start sub_021EF710
sub_021EF710: ; 0x021EF710
	str r1, [r0]
	mov r1, #1
	str r1, [r0, #8]
	ldr r0, [r0, #4]
	ldr r3, _021EF71C ; =ovy92_21ef1a0
	bx r3
	.align 2, 0
_021EF71C: .word ovy92_21ef1a0
	thumb_func_end sub_021EF710

	thumb_func_start ovy92_21ef720
ovy92_21ef720: ; 0x021EF720
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	mov r4, #0
	bl ovy92_21ef1a0
	str r4, [r5]
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy92_21ef720

	thumb_func_start sub_021EF734
sub_021EF734: ; 0x021EF734
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021EF734

	thumb_func_start ovy92_21ef738
ovy92_21ef738: ; 0x021EF738
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _021EF78C ; =0x000008DC
	ldr r3, _021EF790 ; =0x021F0440
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x3c
	mov r2, #1
	bl GFL_HeapAllocate
	add r6, r0, #0
	mov r5, #0
_021EF752:
	mov r0, #0x14
	mul r0, r5
	ldr r1, _021EF794 ; =0x021F00A8
	str r0, [sp, #8]
	add r7, r1, r0
	add r2, r1, #0
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r2, r1]
	lsl r4, r5, #2
	bl sub_021EF194
	ldr r2, _021EF794 ; =0x021F00A8
	ldr r1, [sp, #8]
	str r0, [r6, r4]
	add r1, r2, r1
	add r1, r1, #4
	bl ovy92_21ef1c4
	ldr r0, [r6, r4]
	ldr r1, [r7, #0x10]
	bl ovy92_21ef38c
	add r5, r5, #1
	cmp r5, #7
	blt _021EF752
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF78C: .word 0x000008DC
_021EF790: .word 0x021F0440
_021EF794: .word 0x021F00A8
	thumb_func_end ovy92_21ef738

	thumb_func_start sub_021EF798
sub_021EF798: ; 0x021EF798
	ldr r3, _021EF79C ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021EF79C: .word GFL_HeapFree
	thumb_func_end sub_021EF798

	thumb_func_start ovy92_21ef7a0
ovy92_21ef7a0: ; 0x021EF7A0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0
	add r4, #0x1c
_021EF7A8:
	lsl r6, r5, #4
	add r0, r4, r6
	bl sub_021EF8BC
	cmp r0, #0
	beq _021EF7BA
	add r0, r4, r6
	bl ovy92_21ef878
_021EF7BA:
	add r5, r5, #1
	cmp r5, #2
	blt _021EF7A8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef7a0

	thumb_func_start ovy92_21ef7c4
ovy92_21ef7c4: ; 0x021EF7C4
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r5, r4]
	bl ovy92_21ef3d8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef7c4

	thumb_func_start ovy92_21ef7dc
ovy92_21ef7dc: ; 0x021EF7DC
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r5, r4]
	bl ovy92_21ef29c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef7dc

	thumb_func_start ovy92_21ef7f4
ovy92_21ef7f4: ; 0x021EF7F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r4, r7, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r5, #0
	add r4, #0x1c
_021EF804:
	lsl r6, r5, #4
	add r0, r4, r6
	bl sub_021EF8BC
	cmp r0, #0
	bne _021EF824
	ldr r1, [sp]
	add r0, r7, #0
	lsl r1, r1, #2
	add r0, #0x1c
	ldr r1, [r7, r1]
	ldr r2, [sp, #4]
	add r0, r0, r6
	bl ovy92_21ef838
	b _021EF82A
_021EF824:
	add r5, r5, #1
	cmp r5, #2
	blt _021EF804
_021EF82A:
	ldr r1, [sp]
	add r0, r7, #0
	bl ovy92_21ef7dc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef7f4

	thumb_func_start ovy92_21ef838
ovy92_21ef838: ; 0x021EF838
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	strh r6, [r5, #0xa]
	add r0, r4, #0
	str r4, [r5, #4]
	bl sub_021EF458
	bl sub_02049964
	bl sub_02049808
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	bl sub_020683A0
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_020682F4
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef838

	thumb_func_start ovy92_21ef878
ovy92_21ef878: ; 0x021EF878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021EF8B8
	ldrh r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mul r0, r1
	ldrh r1, [r5, #0xa]
	blx sub_0208D65C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_021EF458
	bl sub_02049964
	bl sub_02049808
	ldr r0, [r0, #4]
	mov r1, #0
	add r2, r4, #0
	mov r6, #0
	bl sub_020682F4
	ldrh r1, [r5, #8]
	add r0, r1, #1
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	cmp r1, r0
	bls _021EF8B8
	str r6, [r5]
_021EF8B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy92_21ef878

	thumb_func_start sub_021EF8BC
sub_021EF8BC: ; 0x021EF8BC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF8BC

	thumb_func_start ovy92_21ef8c0
ovy92_21ef8c0: ; 0x021EF8C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _021EF910 ; =0x000009DD
	ldr r3, _021EF914 ; =0x021F0440
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	add r7, r0, #0
	mov r4, #0
_021EF8DA:
	ldr r1, _021EF918 ; =0x021F0078
	lsl r5, r4, #4
	ldr r0, [sp, #4]
	ldr r1, [r1, r5]
	lsl r6, r4, #2
	bl sub_021EF194
	ldr r1, _021EF918 ; =0x021F0078
	str r0, [r7, r6]
	add r1, r1, r5
	add r1, r1, #4
	bl ovy92_21ef1c4
	add r4, r4, #1
	cmp r4, #3
	blt _021EF8DA
	ldr r0, [r7]
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r7]
	bl ovy92_21ef308
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF910: .word 0x000009DD
_021EF914: .word 0x021F0440
_021EF918: .word 0x021F0078
	thumb_func_end ovy92_21ef8c0

	thumb_func_start sub_021EF91C
sub_021EF91C: ; 0x021EF91C
	ldr r3, _021EF920 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021EF920: .word GFL_HeapFree
	thumb_func_end sub_021EF91C

	thumb_func_start sub_021EF924
sub_021EF924: ; 0x021EF924
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF924

	thumb_func_start ovy92_21ef928
ovy92_21ef928: ; 0x021EF928
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r4, #0
_021EF932:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl ovy92_21ef1a0
	add r4, r4, #1
	cmp r4, #3
	blt _021EF932
	lsl r4, r7, #2
	ldr r0, [r5, r4]
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r5, r4]
	bl ovy92_21ef29c
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21ef928

	thumb_func_start ovy92_21ef954
ovy92_21ef954: ; 0x021EF954
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021EF9F8 ; =0x00000A9E
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021EF9FC ; =0x021F0440
	mov r1, #0x8c
	mov r2, #1
	bl GFL_HeapAllocate
	add r7, r0, #0
	str r4, [r7, #0x78]
	mov r4, #0
_021EF972:
	lsl r0, r4, #4
	str r0, [sp, #4]
	ldr r2, _021EFA00 ; =0x021F0028
	ldr r1, [sp, #4]
	add r0, r5, #0
	ldr r1, [r2, r1]
	lsl r6, r4, #2
	bl sub_021EF194
	ldr r2, _021EFA00 ; =0x021F0028
	ldr r1, [sp, #4]
	str r0, [r7, r6]
	add r1, r2, r1
	add r1, r1, #4
	bl ovy92_21ef1c4
	ldr r0, [r7, r6]
	mov r1, #1
	bl ovy92_21ef1a0
	add r4, r4, #1
	cmp r4, #2
	blt _021EF972
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #8
	mov r4, #0
	str r0, [sp, #0x10]
_021EF9AA:
	lsl r6, r4, #1
	add r1, r4, r6
	add r0, r5, #0
	add r1, #0xa
	bl sub_021EF194
	add r1, r4, r6
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0xb
	bl sub_021EF194
	add r1, r4, r6
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, #0xc
	bl sub_021EF194
	add r3, r0, #0
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	ldr r1, [sp, #8]
	bl ovy92_21efd34
	add r4, r4, #1
	cmp r4, #2
	blt _021EF9AA
	add r0, r7, #0
	mov r1, #0
	bl ovy92_21efa5c
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EF9F8: .word 0x00000A9E
_021EF9FC: .word 0x021F0440
_021EFA00: .word 0x021F0028
	thumb_func_end ovy92_21ef954

	thumb_func_start ovy92_21efa04
ovy92_21efa04: ; 0x021EFA04
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r7, #0
	mov r5, #0
	add r4, #8
	mov r6, #0x38
_021EFA10:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl sub_021EFD50
	add r5, r5, #1
	cmp r5, #2
	blt _021EFA10
	add r0, r7, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21efa04

	thumb_func_start ovy92_21efa28
ovy92_21efa28: ; 0x021EFA28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x84
	ldr r1, [r1]
	blx r1
	add r7, sp, #0
	ldr r0, [r5, #0x78]
	add r1, r7, #0
	bl sub_0219A664
	mov r4, #0
	add r5, #8
	mov r6, #0x38
_021EFA46:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	add r1, r7, #0
	bl ovy92_21efd5c
	add r4, r4, #1
	cmp r4, #2
	blt _021EFA46
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21efa28

	thumb_func_start ovy92_21efa5c
ovy92_21efa5c: ; 0x021EFA5C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x7c]
	cmp r1, #0
	beq _021EFA72
	cmp r1, #1
	beq _021EFA88
	cmp r1, #2
	beq _021EFA90
	pop {r4, pc}
_021EFA72:
	ldr r0, _021EFA98 ; =0x00000811
	bl sub_020062C4
	cmp r0, #0
	beq _021EFA80
	bl sub_02006280
_021EFA80:
	ldr r0, _021EFA9C ; =ovy92_21efc0c
	add r4, #0x84
	str r0, [r4]
	pop {r4, pc}
_021EFA88:
	ldr r0, _021EFAA0 ; =ovy92_21efc3c
	add r4, #0x84
	str r0, [r4]
	pop {r4, pc}
_021EFA90:
	ldr r0, _021EFAA4 ; =ovy92_21efcb8
	add r4, #0x84
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_021EFA98: .word 0x00000811
_021EFA9C: .word ovy92_21efc0c
_021EFAA0: .word ovy92_21efc3c
_021EFAA4: .word ovy92_21efcb8
	thumb_func_end ovy92_21efa5c

	thumb_func_start ovy92_21efaa8
ovy92_21efaa8: ; 0x021EFAA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r0, [sp]
	mov r5, #0
	add r4, #8
	mov r7, #0x38
_021EFAB6:
	add r6, r5, #0
	mul r6, r7
	add r0, r4, r6
	bl sub_021EFE70
	cmp r0, #0
	beq _021EFAC6
	b _021EFBEC
_021EFAC6:
	ldr r1, [sp]
	ldr r0, [sp]
	add r1, #0x88
	ldr r1, [r1]
	add r0, #0x88
	add r2, r1, #1
	ldr r1, [sp]
	ldr r0, [r0]
	add r1, #0x88
	str r1, [sp]
	str r2, [r1]
	mov r1, #9
	blx sub_0208D868
	ldr r0, _021EFBF8 ; =0x021EFFB0
	ldrsb r5, [r0, r1]
	mov r0, #1
	bl sub_02005784
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	cmp r5, #1
	beq _021EFAFE
	cmp r5, #2
	beq _021EFB26
	cmp r5, #3
	beq _021EFB70
	b _021EFB6E
_021EFAFE:
	ldr r0, _021EFBFC ; =0x021EFFF0
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	bl sub_02005784
	ldr r1, _021EFC00 ; =0x021EFFE8
	ldr r1, [r1, r7]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _021EFC04 ; =0x021EFFF4
	ldr r0, [r0, r7]
	bl sub_02005784
	ldr r1, _021EFC08 ; =0x021EFFEC
	ldr r1, [r1, r7]
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	b _021EFBDE
_021EFB26:
	mov r0, #0xa
	lsl r0, r0, #0xe
	bl sub_02005784
	mov r1, #7
	lsl r1, r1, #0x10
	sub r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0xc2
	lsl r0, r0, #0xc
	bl sub_02005784
	mov r1, #0x6d
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0xa
	mov r7, #0
	lsl r0, r0, #0xe
	str r7, [sp, #8]
	bl sub_02005784
	mov r1, #0x46
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #3
	lsl r0, r0, #0x12
	bl sub_02005784
	mov r1, #0x6d
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0x18]
	str r7, [sp, #0x14]
	b _021EFBDE
_021EFB6E:
	mov r5, #3
_021EFB70:
	mov r0, #0xa
	lsl r0, r0, #0xe
	bl sub_02005784
	mov r1, #7
	lsl r1, r1, #0x10
	sub r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0xc2
	lsl r0, r0, #0xc
	bl sub_02005784
	mov r1, #0x6d
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa
	lsl r0, r0, #0xe
	bl sub_02005784
	mov r1, #0x46
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #3
	lsl r0, r0, #0x12
	bl sub_02005784
	mov r1, #0x6d
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _021EFBFC ; =0x021EFFF0
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	bl sub_02005784
	ldr r1, _021EFC00 ; =0x021EFFE8
	ldr r1, [r1, r7]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, _021EFC04 ; =0x021EFFF4
	ldr r0, [r0, r7]
	bl sub_02005784
	ldr r1, _021EFC08 ; =0x021EFFEC
	ldr r1, [r1, r7]
	add r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x20]
_021EFBDE:
	add r0, r4, r6
	add r1, sp, #4
	add r2, r5, #0
	bl ovy92_21efe38
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021EFBEC:
	add r5, r5, #1
	cmp r5, #2
	bge _021EFBF4
	b _021EFAB6
_021EFBF4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EFBF8: .word 0x021EFFB0
_021EFBFC: .word 0x021EFFF0
_021EFC00: .word 0x021EFFE8
_021EFC04: .word 0x021EFFF4
_021EFC08: .word 0x021EFFEC
	thumb_func_end ovy92_21efaa8

	thumb_func_start ovy92_21efc0c
ovy92_21efc0c: ; 0x021EFC0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021EFC1A
	cmp r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EFC1A:
	mov r4, #0
	add r7, r4, #0
_021EFC1E:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	bl ovy92_21ef308
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_021EF1E8
	add r4, r4, #1
	cmp r4, #2
	blt _021EFC1E
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy92_21efc0c

	thumb_func_start ovy92_21efc3c
ovy92_21efc3c: ; 0x021EFC3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021EFC50
	cmp r0, #1
	beq _021EFC78
	cmp r0, #2
	beq _021EFC94
	pop {r3, r4, r5, r6, r7, pc}
_021EFC50:
	ldr r0, _021EFCB4 ; =0x0000080E
	bl GFL_SndSEPlay
	mov r4, #0
	mov r7, #1
_021EFC5A:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	bl ovy92_21ef308
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_021EF1E8
	add r4, r4, #1
	cmp r4, #2
	blt _021EFC5A
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_021EFC78:
	mov r0, #4
	bl sub_02005784
	add r1, r0, #5
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	add r0, r5, #0
	bl ovy92_21efaa8
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_021EFC94:
	add r0, r5, #0
	add r0, #0x80
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	cmp r2, #0
	bgt _021EFCB0
	mov r0, #1
	str r0, [r5, #0x7c]
_021EFCB0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFCB4: .word 0x0000080E
	thumb_func_end ovy92_21efc3c

	thumb_func_start ovy92_21efcb8
ovy92_21efcb8: ; 0x021EFCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021EFCCC
	cmp r0, #1
	beq _021EFCF4
	cmp r0, #2
	beq _021EFD10
	pop {r3, r4, r5, r6, r7, pc}
_021EFCCC:
	ldr r0, _021EFD30 ; =0x00000811
	bl GFL_SndSEPlay
	mov r4, #0
	mov r7, #2
_021EFCD6:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	bl ovy92_21ef308
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_021EF1E8
	add r4, r4, #1
	cmp r4, #2
	blt _021EFCD6
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_021EFCF4:
	mov r0, #4
	bl sub_02005784
	add r1, r0, #4
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	add r0, r5, #0
	bl ovy92_21efaa8
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_021EFD10:
	add r0, r5, #0
	add r0, #0x80
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	cmp r2, #0
	bgt _021EFD2C
	mov r0, #1
	str r0, [r5, #0x7c]
_021EFD2C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFD30: .word 0x00000811
	thumb_func_end ovy92_21efcb8

	thumb_func_start ovy92_21efd34
ovy92_21efd34: ; 0x021EFD34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	str r4, [r5]
	str r6, [r5, #4]
	str r7, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy92_21efd34

	thumb_func_start sub_021EFD50
sub_021EFD50: ; 0x021EFD50
	ldr r3, _021EFD58 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x38
	bx r3
	.align 2, 0
_021EFD58: .word MI_CpuFill8
	thumb_func_end sub_021EFD50

	thumb_func_start ovy92_21efd5c
ovy92_21efd5c: ; 0x021EFD5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	cmp r0, #0
	beq _021EFE2E
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _021EFD7E
	cmp r0, #1
	beq _021EFDEC
	cmp r0, #2
	beq _021EFE2A
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EFD7E:
	ldr r0, _021EFE34 ; =0x0000080F
	bl GFL_SndSEPlay
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _021EFDE0
	add r7, r5, #0
	add r7, #0x14
_021EFD92:
	mov r0, #0xc
	mul r0, r4
	ldr r1, [sp]
	add r0, r7, r0
	add r2, sp, #4
	bl VEC_Add
	mov r0, #0x55
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xe1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	cmp r1, r0
	ble _021EFDB2
	b _021EFDBA
_021EFDB2:
	mov r0, #0xa
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021EFDBC
_021EFDBA:
	add r1, r0, #0
_021EFDBC:
	str r1, [sp, #0xc]
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	add r1, sp, #4
	bl ovy92_21ef1c4
	ldr r0, [r5, r6]
	mov r1, #1
	bl ovy92_21ef1a0
	ldr r0, [r5, r6]
	bl ovy92_21ef29c
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EFD92
_021EFDE0:
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EFDEC:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	mov r7, #1
	mov r4, #0
	cmp r0, #0
	ble _021EFE1A
_021EFDF8:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	bl ovy92_21ef34c
	cmp r0, #0
	beq _021EFE0E
	ldr r0, [r5, r6]
	mov r1, #0
	bl ovy92_21ef1a0
	b _021EFE10
_021EFE0E:
	mov r7, #0
_021EFE10:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EFDF8
_021EFE1A:
	cmp r7, #0
	beq _021EFE2E
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EFE2A:
	mov r0, #0
	str r0, [r5, #0xc]
_021EFE2E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFE34: .word 0x0000080F
	thumb_func_end ovy92_21efd5c

	thumb_func_start ovy92_21efe38
ovy92_21efe38: ; 0x021EFE38
	push {r4, r5, r6, r7}
	add r5, r0, #0
	mov r0, #1
	mov r3, #0
	str r0, [r5, #0xc]
	strh r3, [r5, #0x10]
	strh r2, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r4, r1, #0
	cmp r0, #0
	ble _021EFE6C
	mov r2, #0x12
_021EFE52:
	mov r0, #0xc
	mul r0, r3
	add r7, r4, r0
	add r6, r5, r0
	ldmia r7!, {r0, r1}
	add r6, #0x14
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	add r3, r3, #1
	str r0, [r6]
	ldrsh r0, [r5, r2]
	cmp r3, r0
	blt _021EFE52
_021EFE6C:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy92_21efe38

	thumb_func_start sub_021EFE70
sub_021EFE70: ; 0x021EFE70
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021EFE70

	thumb_func_start ovy92_21efe74
ovy92_21efe74: ; 0x021EFE74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r6, r1, #0
	str r3, [sp]
	ldr r2, _021EFEB4 ; =ovy92_21efeb8
	mov r1, #0
	mov r3, #0x18
	add r5, r0, #0
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	str r6, [r4]
	add r0, r5, #0
	bl sub_02016B1C
	bl sub_02031954
	str r0, [r4, #4]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	str r5, [r4, #0x10]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFEB4: .word ovy92_21efeb8
	thumb_func_end ovy92_21efe74

	thumb_func_start ovy92_21efeb8
ovy92_21efeb8: ; 0x021EFEB8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _021EFF68
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EFED0: ; jump table
	.short _021EFED8 - _021EFED0 - 2 ; case 0
	.short _021EFF16 - _021EFED0 - 2 ; case 1
	.short _021EFF22 - _021EFED0 - 2 ; case 2
	.short _021EFF64 - _021EFED0 - 2 ; case 3
_021EFED8:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EFEE6
	cmp r0, #1
	beq _021EFEF4
	cmp r0, #2
	b _021EFF06
_021EFEE6:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_020324F8
	ldr r0, [r4, #8]
	mov r1, #3
	b _021EFF00
_021EFEF4:
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_020324F8
	ldr r0, [r4, #8]
	mov r1, #4
_021EFF00:
	mov r2, #0x3c
	bl ovy92_21ef7f4
_021EFF06:
	ldr r0, [r4]
	mov r1, #0x3c
	bl sub_021EF5E4
_021EFF0E:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EFF68
_021EFF16:
	ldr r0, [r4]
	bl sub_021EF5F0
	cmp r0, #0
	beq _021EFF68
	b _021EFF0E
_021EFF22:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EFF32
	cmp r0, #1
	beq _021EFF44
	cmp r0, #2
	beq _021EFF52
	b _021EFF62
_021EFF32:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy92_21ef7dc
	ldr r0, [r4]
	mov r1, #1
_021EFF3E:
	bl sub_021EF600
	b _021EFF62
_021EFF44:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ovy92_21ef7dc
	ldr r0, [r4]
	mov r1, #2
	b _021EFF3E
_021EFF52:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ovy92_21ef7dc
	ldr r0, [r4]
	mov r1, #0
	bl sub_021EF608
_021EFF62:
	b _021EFF0E
_021EFF64:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFF68:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy92_21efeb8

	thumb_func_start sub_021EFF6C
sub_021EFF6C: ; 0x021EFF6C
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021EFF6C

	thumb_func_start sub_021EFF70
sub_021EFF70: ; 0x021EFF70
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021EFF70
_021EFF74:
	.byte 0x00, 0x2D, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x01, 0x03, 0x02, 0x03, 0x01, 0x03, 0x02, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1E, 0x00
	.byte 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x94, 0x02, 0x1F, 0x02, 0x22, 0x00, 0x00, 0x00
	.byte 0x34, 0x01, 0x1F, 0x02, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFF, 0x00, 0x30, 0xF9, 0xFF
	.byte 0x00, 0x80, 0x02, 0x00, 0x00, 0x20, 0x0C, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x30, 0xF9, 0xFF
	.byte 0x00, 0x80, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x68, 0x68, 0x68, 0x68, 0x68, 0x68, 0x68
	.byte 0x68, 0x68, 0x68, 0x68, 0x68, 0x68, 0x68, 0x68, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0xC8, 0x03, 0x00, 0x00, 0x68, 0x03, 0x00, 0x00
	.byte 0x8A, 0x7F, 0x00, 0x00, 0x6F, 0x7F, 0x00, 0x00, 0x68, 0x03, 0x00, 0x00, 0x78, 0x02, 0x00, 0x00
	.byte 0xB4, 0x7F, 0x00, 0x00, 0x6F, 0x7F, 0x00, 0x00, 0x78, 0x02, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00
	.byte 0xAF, 0x7F, 0x00, 0x00, 0x6F, 0x7F, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x94, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x84, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x88, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0xA8, 0xFF, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x98, 0xFF, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xA0, 0xFF, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x80, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x8C, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x90, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0xBA, 0xFF, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0xBA, 0xFF, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x7C, 0xFF, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x79, 0x6D, 0x5F, 0x65, 0x6C, 0x65, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EFF74
