    .include "macros/function.inc"
	.include "overlay64.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy64_21e5800
ovy64_21e5800: ; 0x021E5800
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EED00
	add r1, r0, #0
	bne _021E582C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E582C:
	add r0, r4, #0
	bl sub_02153880
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5800

	thumb_func_start ovy64_21e5838
ovy64_21e5838: ; 0x021E5838
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02154910
	mov r2, #1
	cmp r0, #1
	bne _021E585E
	mov r2, #0
_021E585E:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021EED24
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5838

	thumb_func_start ovy64_21e586c
ovy64_21e586c: ; 0x021E586C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED64
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy64_21e586c

	thumb_func_start ovy64_21e588c
ovy64_21e588c: ; 0x021E588C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED88
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy64_21e588c

	thumb_func_start ovy64_21e58ac
ovy64_21e58ac: ; 0x021E58AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r1, r0, #0
	add r0, r7, #0
	bl ovy64_21e5984
	add r1, r0, #0
	bne _021E58DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E58DA:
	add r0, r6, #0
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy64_21e58ac

	thumb_func_start ovy64_21e58e4
ovy64_21e58e4: ; 0x021E58E4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_0201736C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021548E8
	add r5, r0, #0
	add r0, r4, #0
	bl ovy64_21e5ab4
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy64_21e58e4

	thumb_func_start ovy64_21e5910
ovy64_21e5910: ; 0x021E5910
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02154910
	mov r2, #1
	cmp r0, #0
	bne _021E5936
	mov r2, #0
_021E5936:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021EECD0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5910

	thumb_func_start ovy64_21e5944
ovy64_21e5944: ; 0x021E5944
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED10
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5944

	thumb_func_start ovy64_21e5964
ovy64_21e5964: ; 0x021E5964
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED34
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5964

	thumb_func_start ovy64_21e5984
ovy64_21e5984: ; 0x021E5984
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r2, _021E59EC ; =ovy64_21e59f0
	add r6, r1, #0
	mov r1, #0
	mov r3, #0x20
	add r5, r0, #0
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4, #0x10]
	str r6, [r4, #0x14]
	mov r0, #4
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02017934
	bl sub_0200C838
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201736C
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #0
	mov r3, #0
	bl sub_021659EC
	str r0, [r4, #0x18]
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E59EC: .word ovy64_21e59f0
	thumb_func_end ovy64_21e5984

	thumb_func_start ovy64_21e59f0
ovy64_21e59f0: ; 0x021E59F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021E5A0A
	cmp r0, #1
	beq _021E5A2A
	cmp r0, #2
	beq _021E5A3A
	b _021E5A40
_021E5A0A:
	ldr r0, [r4, #0x18]
	ldr r2, _021E5A48 ; =0x00000118
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r3, _021E5A4C ; =0x021DD940
	bl sub_020195C0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_021E5A22:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E5A40
_021E5A2A:
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ovy64_21e5a50
	ldr r0, [r4, #0x18]
	bl sub_02165AE8
	b _021E5A22
_021E5A3A:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E5A40:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E5A48: .word 0x00000118
_021E5A4C: .word 0x021DD940
	thumb_func_end ovy64_21e59f0

	thumb_func_start ovy64_21e5a50
ovy64_21e5a50: ; 0x021E5A50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #0
	beq _021E5AB2
	add r0, r4, #0
	bl sub_02165B0C
	cmp r0, #1
	bne _021E5A6E
	ldr r0, [r5, #0x14]
	mov r1, #0
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E5A6E:
	ldrh r3, [r5, #0x1c]
	mov r0, #0
	mov r1, #2
	mov r2, #0x30
	bl sub_0204875C
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy64_21e5ab4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_02024B68
	cmp r0, #1
	bne _021E5AA0
	ldr r0, [r5, #0x14]
	mov r1, #1
	strh r1, [r0]
	b _021E5AA6
_021E5AA0:
	ldr r1, [r5, #0x14]
	mov r0, #0
	strh r0, [r1]
_021E5AA6:
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_020487D4
_021E5AB2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy64_21e5a50

	thumb_func_start ovy64_21e5ab4
ovy64_21e5ab4: ; 0x021E5AB4
	push {r3, lr}
	bl sub_02008BD0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #5
	blx sub_0208D868
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy64_21e5ab4
_021E5ACC:
	.byte 0x01, 0x58, 0x1E, 0x02
	.byte 0x39, 0x58, 0x1E, 0x02, 0x6D, 0x58, 0x1E, 0x02, 0x8D, 0x58, 0x1E, 0x02, 0xAD, 0x58, 0x1E, 0x02
	.byte 0xE5, 0x58, 0x1E, 0x02, 0x11, 0x59, 0x1E, 0x02, 0x45, 0x59, 0x1E, 0x02, 0x65, 0x59, 0x1E, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5ACC
