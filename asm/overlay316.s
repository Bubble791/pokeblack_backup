    .include "macros/function.inc"
	.include "overlay316.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0219CE80
sub_0219CE80: ; 0x0219CE80
	lsr r2, r1, #0x1f
	add r2, r1, r2
	ldr r3, _0219CE8C ; =sub_02015CAC
	asr r1, r2, #1
	bx r3
	nop
_0219CE8C: .word sub_02015CAC
	thumb_func_end sub_0219CE80

	thumb_func_start ovy316_219ce90
ovy316_219ce90: ; 0x0219CE90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x9b
	lsl r1, r1, #2
	str r1, [sp]
	mov r1, #0x44
	ldr r3, _0219CEDC ; =0x0219FE00
	mul r1, r5
	mov r2, #1
	bl GFL_HeapAllocate
	add r6, r0, #0
	mov r4, #0
	cmp r5, #0
	bls _0219CED6
	add r7, r4, #0
_0219CEB0:
	mov r0, #0x44
	mul r0, r4
	add r0, r6, r0
	str r7, [r0, #4]
	str r7, [r0, #8]
	mov r1, #1
	str r7, [r0, #0xc]
	lsl r1, r1, #0xc
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	add r0, #0x1c
	blx MTX_Identity33_
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _0219CEB0
_0219CED6:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CEDC: .word 0x0219FE00
	thumb_func_end ovy316_219ce90

	thumb_func_start sub_0219CEE0
sub_0219CEE0: ; 0x0219CEE0
	ldr r3, _0219CEE4 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219CEE4: .word GFL_HeapFree
	thumb_func_end sub_0219CEE0

	thumb_func_start ovy316_219cee8
ovy316_219cee8: ; 0x0219CEE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r2, #0
	mov r0, #3
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	mov r6, #0
	bl sub_0204E060
	mov r2, #1
	mov r0, #1
	mov r1, #0x87
	lsl r2, r2, #0x14
	mov r7, #0x87
	bl GFL_HeapCreateChild
	ldr r1, _0219CF50 ; =0x00000874
	add r0, r4, #0
	mov r2, #0x87
	bl GFL_ProcInitSubsystem
	ldr r2, _0219CF50 ; =0x00000874
	add r4, r0, #0
	mov r1, #0
	blx MI_CpuFill8
	strh r7, [r4]
	str r5, [r4, #4]
	bl sub_0204E038
	ldr r1, _0219CF50 ; =0x00000874
	sub r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	bl sub_0204E044
	bl sub_0203D554
	mov r1, #0x89
	str r0, [r4, #8]
	lsl r1, r1, #2
	mov r2, #4
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #8
	str r6, [r4, r1]
	str r6, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CF50: .word 0x00000874
	thumb_func_end ovy316_219cee8

	thumb_func_start ovy316_219cf54
ovy316_219cf54: ; 0x0219CF54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #0xc
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	mov r6, #0
	bl sub_0204E060
	ldr r0, [r4, #8]
	bl sub_0203D564
	mov r0, #0x87
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204E044
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219CF8C
	cmp r0, #1
	beq _0219CF8E
	cmp r0, #2
	beq _0219CF98
	b _0219CF9C
_0219CF8C:
	b _0219CF9C
_0219CF8E:
	mov r1, #1
_0219CF90:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	strh r1, [r0]
	b _0219CFA2
_0219CF98:
	mov r1, #2
	b _0219CF90
_0219CF9C:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	strh r6, [r0]
_0219CFA2:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, [r4, #4]
	str r1, [r0, #4]
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x87
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy316_219cf54

	thumb_func_start ovy316_219cfbc
ovy316_219cfbc: ; 0x0219CFBC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r6, [r5]
	ldr r2, _0219D018 ; =0x0219FB54
	add r4, r3, #0
	lsl r3, r6, #2
	add r1, r4, #0
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, #0xc
	blx r2
	str r0, [r5]
	cmp r0, #8
	beq _0219CFE2
	cmp r0, r6
	beq _0219CFE6
	mov r0, #0
	str r0, [r4, #0xc]
	b _0219CFE6
_0219CFE2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219CFE6:
	ldr r0, [r5]
	cmp r0, #2
	blt _0219D014
	cmp r0, #6
	bgt _0219D014
	ldr r0, [r4, #0x1c]
	bl sub_02021A3C
	add r0, r4, #0
	bl ovy316_219e5c8
	ldr r0, [r4, #0x14]
	bl ovy316_219f87c
	ldr r0, [r4, #0x14]
	bl sub_0219F890
	add r0, r4, #0
	bl ovy316_219d0b8
	ldr r0, [r4, #0x14]
	bl sub_0219F89C
_0219D014:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D018: .word 0x0219FB54
	thumb_func_end ovy316_219cfbc

	thumb_func_start ovy316_219d01c
ovy316_219d01c: ; 0x0219D01C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x24]
	mov r0, #4
	tst r0, r1
	beq _0219D038
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
_0219D038:
	ldr r1, [r4, #0x24]
	mov r0, #8
	tst r0, r1
	beq _0219D050
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
_0219D050:
	ldr r1, [r4, #0x24]
	mov r0, #0x10
	tst r0, r1
	beq _0219D070
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
_0219D070:
	ldr r1, [r4, #0x24]
	mov r0, #0x20
	tst r0, r1
	beq _0219D090
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
_0219D090:
	ldr r1, [r4, #0x24]
	mov r0, #0x40
	tst r0, r1
	beq _0219D0A0
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
_0219D0A0:
	ldr r1, [r4, #0x24]
	mov r0, #0x80
	tst r0, r1
	beq _0219D0B0
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
_0219D0B0:
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219d01c

	thumb_func_start ovy316_219d0b8
ovy316_219d0b8: ; 0x0219D0B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x36]
	mov r4, #0
	cmp r0, #0
	bls _0219D0EE
	mov r7, #0x44
_0219D0C6:
	add r0, r4, #0
	ldr r1, [r5, #0x38]
	mul r0, r7
	add r6, r1, r0
	ldr r0, [r6, #0x40]
	cmp r0, #0
	beq _0219D0E2
	ldrh r1, [r6]
	ldr r0, [r5, #0x28]
	bl sub_0204A5C0
	add r1, r6, #4
	bl sub_02049B5C
_0219D0E2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5, #0x36]
	cmp r4, r0
	blo _0219D0C6
_0219D0EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy316_219d0b8

	thumb_func_start ovy316_219d0f0
ovy316_219d0f0: ; 0x0219D0F0
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	mov r0, #7
	mov r1, #4
	bl sub_02049D24
	str r0, [r4, #0x28]
	mov r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219d0f0

	thumb_func_start sub_0219D108
sub_0219D108: ; 0x0219D108
	ldr r0, [r0, #0x28]
	ldr r3, _0219D110 ; =sub_02049DDC
	bx r3
	nop
_0219D110: .word sub_02049DDC
	thumb_func_end sub_0219D108

	thumb_func_start ovy316_219d114
ovy316_219d114: ; 0x0219D114
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	ldr r1, _0219D1F4 ; =0x0219FAD0
	bl sub_02049E00
	strh r0, [r6, #0x2c]
	mov r0, #4
	strh r0, [r6, #0x36]
	ldrh r0, [r6]
	ldrh r1, [r6, #0x36]
	bl ovy316_219ce90
	str r0, [r6, #0x38]
	ldrh r1, [r6, #0x2c]
	ldr r0, [r6, #0x28]
	mov r4, #0
	bl sub_0204A5A8
	mov ip, r0
	mov r5, #0
_0219D13E:
	lsl r0, r5, #1
	add r0, r6, r0
	strh r4, [r0, #0x2e]
	mov r1, #0x44
	add r2, r4, #0
	mul r2, r1
	ldr r0, [r6, #0x38]
	mov r1, ip
	add r1, r1, r5
	add r3, r0, r2
	strh r1, [r0, r2]
	mov r0, #1
	str r0, [r3, #0x40]
	cmp r5, #1
	blt _0219D17A
	cmp r5, #3
	bgt _0219D17A
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _0219D1F8 ; =0x0219FB30
	add r7, r3, #4
	add r2, r0, r1
	sub r2, #0xc
	ldmia r2!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r2]
	str r0, [r7]
	mov r0, #0
	str r0, [r3, #0x40]
_0219D17A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _0219D13E
	ldrh r2, [r6, #0x2e]
	mov r1, #0x44
	ldr r3, [r6, #0x38]
	mul r1, r2
	ldrh r1, [r3, r1]
	ldr r0, [r6, #0x28]
	bl sub_0204A5C0
	add r7, r0, #0
	bl sub_02049970
	add r5, r0, #0
	ldr r4, _0219D1FC ; =0x00000000
	beq _0219D1B8
_0219D1A6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02049974
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _0219D1A6
_0219D1B8:
	ldrh r0, [r6]
	mov r1, #0xca
	mov r2, #0x26
	mov r3, #0xa
	mov r5, #0xa
	bl sub_02015BC8
	str r0, [r6, #0x3c]
	ldr r0, [r6, #0x14]
	bl sub_0219F8B4
	ldr r1, [r6, #0x3c]
	bl sub_020162A4
	ldr r0, [r6, #0x14]
	bl sub_0219F8B4
	ldr r7, _0219D200 ; =0x020955FC
	mov r1, #8
	ldrsh r1, [r7, r1]
	add r4, r0, #0
	bl sub_0204A6D4
	ldrsh r1, [r7, r5]
	add r0, r4, #0
	bl sub_0204A6C8
	mov r0, #0
	str r0, [r6, #0x4c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D1F4: .word 0x0219FAD0
_0219D1F8: .word 0x0219FB30
_0219D1FC: .word 0x00000000
_0219D200: .word 0x020955FC
	thumb_func_end ovy316_219d114

	thumb_func_start ovy316_219d204
ovy316_219d204: ; 0x0219D204
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	bl sub_02049F4C
	ldr r0, [r4, #0x38]
	bl sub_0219CEE0
	mov r0, #0
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x3c]
	bl sub_02015C10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219d204

	thumb_func_start ovy316_219d224
ovy316_219d224: ; 0x0219D224
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrh r2, [r7, #0x2e]
	mov r1, #0x44
	ldr r3, [r7, #0x38]
	mul r1, r2
	ldrh r1, [r3, r1]
	ldr r0, [r7, #0x28]
	bl sub_0204A5C0
	add r6, r0, #0
	bl sub_02049970
	add r4, r0, #0
	ldr r5, _0219D278 ; =0x00000000
	beq _0219D25A
_0219D244:
	mov r2, #2
	add r0, r6, #0
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_02049A64
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r4
	blo _0219D244
_0219D25A:
	mov r1, #2
	ldr r0, [r7, #0x3c]
	lsl r1, r1, #0xa
	bl sub_02015C48
	ldr r0, [r7, #0x14]
	bl sub_0219F8B4
	ldr r1, [r7, #0x3c]
	bl sub_020162A4
	ldr r0, [r7, #0x4c]
	add r0, r0, #1
	str r0, [r7, #0x4c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D278: .word 0x00000000
	thumb_func_end ovy316_219d224

	thumb_func_start ovy316_219d27c
ovy316_219d27c: ; 0x0219D27C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	beq _0219D28A
	mov r1, #1
	b _0219D28C
_0219D28A:
	mov r1, #0
_0219D28C:
	mov r0, #0xa
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0219D2E0 ; =0x0219FB10
	lsl r1, r1, #1
	add r0, r0, r2
	ldrh r4, [r1, r0]
	cmp r4, #0
	beq _0219D2B0
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219D2BE
_0219D2B0:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219D2BE:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0219CE80
	ldr r0, [r5, #0x14]
	bl sub_0219F8B4
	ldr r1, [r5, #0x3c]
	bl sub_020162A4
	str r6, [r5, #0x40]
	str r7, [r5, #0x44]
	str r4, [r5, #0x48]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D2E0: .word 0x0219FB10
	thumb_func_end ovy316_219d27c

	thumb_func_start ovy316_219d2e4
ovy316_219d2e4: ; 0x0219D2E4
	push {r3, r4}
	ldr r1, [r0, #0x44]
	mov r4, #0
	cmp r1, #0
	bne _0219D2F0
	mov r4, #1
_0219D2F0:
	ldr r2, [r0, #0x40]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mov r0, #0xa
	mul r3, r0
	ldr r0, _0219D314 ; =0x0219FB10
	lsl r2, r4, #1
	add r0, r0, r3
	ldrh r0, [r2, r0]
	cmp r1, r0
	bne _0219D30C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0219D30C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0219D314: .word 0x0219FB10
	thumb_func_end ovy316_219d2e4

	thumb_func_start ovy316_219d318
ovy316_219d318: ; 0x0219D318
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r4, #0
	cmp r0, #0
	bne _0219D326
	mov r4, #1
_0219D326:
	ldr r2, [r5, #0x40]
	mov r1, #0xa
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0219D38C ; =0x0219FB10
	lsl r2, r4, #1
	add r1, r1, r3
	ldrh r4, [r2, r1]
	ldr r1, [r5, #0x48]
	cmp r1, r4
	beq _0219D38A
	cmp r0, #0
	beq _0219D344
	ldr r1, _0219D390 ; =0xFFFFF800
	b _0219D348
_0219D344:
	mov r1, #2
	lsl r1, r1, #0xa
_0219D348:
	ldr r0, [r5, #0x3c]
	bl sub_02015C48
	ldr r0, [r5, #0x14]
	bl sub_0219F8B4
	ldr r1, [r5, #0x3c]
	bl sub_020162A4
	ldr r0, [r5, #0x44]
	cmp r0, #0
	ldr r0, [r5, #0x48]
	beq _0219D366
	sub r0, r0, #1
	b _0219D368
_0219D366:
	add r0, r0, #1
_0219D368:
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x48]
	cmp r0, r4
	bne _0219D38A
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0219D38A
	ldr r0, [r5, #0x3c]
	ldr r1, _0219D394 ; =0x00116000
	bl sub_0219CE80
	ldr r0, [r5, #0x14]
	bl sub_0219F8B4
	ldr r1, [r5, #0x3c]
	bl sub_020162A4
_0219D38A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D38C: .word 0x0219FB10
_0219D390: .word 0xFFFFF800
_0219D394: .word 0x00116000
	thumb_func_end ovy316_219d318

	thumb_func_start ovy316_219d398
ovy316_219d398: ; 0x0219D398
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xa
	add r6, r1, #0
	mul r1, r0
	ldr r0, _0219D3EC ; =0x0219FB14
	ldrh r4, [r0, r1]
	cmp r4, #0
	beq _0219D3BC
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219D3CA
_0219D3BC:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219D3CA:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0219CE80
	ldr r0, [r5, #0x14]
	bl sub_0219F8B4
	ldr r1, [r5, #0x3c]
	bl sub_020162A4
	mov r0, #0
	str r6, [r5, #0x40]
	str r0, [r5, #0x44]
	str r4, [r5, #0x48]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D3EC: .word 0x0219FB14
	thumb_func_end ovy316_219d398

	thumb_func_start ovy316_219d3f0
ovy316_219d3f0: ; 0x0219D3F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	mov r0, #0xa
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0219D424 ; =0x0219FB16
	ldr r3, [r4, #0x48]
	ldrh r0, [r0, r2]
	cmp r3, r0
	beq _0219D422
	mov r1, #2
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xa
	bl sub_02015C48
	ldr r0, [r4, #0x14]
	bl sub_0219F8B4
	ldr r1, [r4, #0x3c]
	bl sub_020162A4
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0219D422:
	pop {r4, pc}
	.align 2, 0
_0219D424: .word 0x0219FB16
	thumb_func_end ovy316_219d3f0

	thumb_func_start ovy316_219d428
ovy316_219d428: ; 0x0219D428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r2, [r7, r0]
	str r1, [sp]
	cmp r2, #4
	beq _0219D474
	add r0, r1, #0
	cmp r2, r0
	beq _0219D474
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r7, r2
	ldrh r3, [r2, #0x2e]
	mov r2, #0x44
	ldr r1, [r7, #0x38]
	mul r2, r3
	ldrh r1, [r1, r2]
	ldr r0, [r7, #0x28]
	bl sub_0204A5C0
	add r6, r0, #0
	bl sub_02049970
	add r4, r0, #0
	ldr r5, _0219D4E0 ; =0x00000000
	beq _0219D474
_0219D462:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02049994
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r4
	blo _0219D462
_0219D474:
	ldr r0, [sp]
	cmp r0, #4
	beq _0219D4D4
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	ldr r0, [sp]
	cmp r1, r0
	beq _0219D4D4
	ldr r2, [sp]
	ldr r1, [r7, #0x38]
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r7, r2
	ldrh r3, [r2, #0x2e]
	mov r2, #0x44
	ldr r0, [r7, #0x28]
	mul r2, r3
	ldrh r1, [r1, r2]
	bl sub_0204A5C0
	add r4, r0, #0
	bl sub_02049970
	ldr r5, _0219D4E0 ; =0x00000000
	add r6, r0, #0
	str r5, [sp, #4]
	beq _0219D4C8
_0219D4AC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02049974
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #4
	bl sub_020499E4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _0219D4AC
_0219D4C8:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_0204C504
_0219D4D4:
	mov r1, #0x8a
	ldr r0, [sp]
	lsl r1, r1, #2
	str r0, [r7, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4E0: .word 0x00000000
	thumb_func_end ovy316_219d428

	thumb_func_start ovy316_219d4e4
ovy316_219d4e4: ; 0x0219D4E4
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r2, [r3, r0]
	cmp r2, #4
	beq _0219D52C
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r3, r2
	ldr r0, [r3, #0x28]
	ldr r1, [r3, #0x38]
	ldrh r3, [r2, #0x2e]
	mov r2, #0x44
	mul r2, r3
	ldrh r1, [r1, r2]
	bl sub_0204A5C0
	add r6, r0, #0
	bl sub_02049970
	add r4, r0, #0
	ldr r5, _0219D530 ; =0x00000000
	beq _0219D52C
	mov r7, #2
	lsl r7, r7, #0xa
_0219D518:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02049A64
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r4
	blo _0219D518
_0219D52C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D530: .word 0x00000000
	thumb_func_end ovy316_219d4e4

	thumb_func_start ovy316_219d534
ovy316_219d534: ; 0x0219D534
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldrh r0, [r5]
	bl sub_02033E24
	mov r6, #0
	str r0, [sp, #0x24]
	add r4, r6, #0
_0219D546:
	ldr r0, _0219D7D0 ; =0x0219FA94
	lsl r1, r6, #1
	ldrh r0, [r0, r1]
	str r4, [sp]
	str r4, [sp, #4]
	str r0, [sp, #0x1c]
	mov r0, #0x94
	mul r0, r6
	str r4, [sp, #8]
	add r7, r5, r0
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldrh r0, [r5]
	ldr r1, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	bl sub_02033E78
	str r0, [r7, #0x50]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0219D7D4 ; =0x0219FA88
	ldr r1, [sp, #0x1c]
	ldrb r0, [r0, r6]
	add r2, r4, #0
	add r3, r4, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r5]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	bl sub_02033E34
	str r0, [r7, #0x54]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r3, r4, #0
	bl sub_02033EF4
	str r0, [r7, #0x58]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _0219D546
	ldr r0, [sp, #0x24]
	bl GFL_ArcToolFree
	mov r6, #0
_0219D5C6:
	add r0, sp, #0x28
	add r1, r6, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0xe
	add r2, r4, #0
	mul r2, r0
	ldr r0, _0219D7D8 ; =0x0219FB78
	ldr r1, _0219D7D8 ; =0x0219FB78
	add r0, r0, r2
	ldrb r2, [r1, r2]
	add r1, sp, #0x28
	strh r2, [r1]
	ldrb r1, [r0, #1]
	add r0, sp, #0x28
	strh r1, [r0, #2]
	strh r6, [r0, #4]
	mov r1, #2
	strb r1, [r0, #6]
	mov r1, #3
	strb r1, [r0, #7]
	mov r0, #0x94
	mul r0, r4
	add r7, r5, r0
	ldr r0, [r5, #0x14]
	bl sub_0219F8A8
	add r1, sp, #0x28
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r5]
	str r1, [sp, #8]
	ldr r1, [r7, #0x50]
	ldr r2, [r7, #0x54]
	ldr r3, [r7, #0x58]
	bl Oam_CreateSprite
	add r1, r6, #0
	str r0, [r7, #0x68]
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219D5C6
	ldrh r1, [r5]
	mov r0, #0xca
	bl sub_0204AA30
	str r0, [sp, #0x20]
	mov r7, #0
_0219D632:
	lsl r0, r6, #2
	add r1, r6, r0
	ldr r0, _0219D7DC ; =0x0219FAC0
	ldr r2, _0219D7DC ; =0x0219FAC0
	add r4, r0, r1
	mov r0, #0x94
	mul r0, r6
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	ldrb r1, [r2, r1]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r3, #1
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x18]
	ldrb r2, [r4, #3]
	str r0, [r1, #0x5c]
	ldrb r1, [r4, #2]
	ldrh r3, [r5]
	ldr r0, [sp, #0x20]
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x64]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _0219D632
	ldr r0, [sp, #0x20]
	bl GFL_ArcToolFree
	mov r6, #0
_0219D67A:
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	mov r0, #0xe
	add r2, r7, #0
	mul r2, r0
	ldr r0, _0219D7D8 ; =0x0219FB78
	ldr r1, _0219D7D8 ; =0x0219FB78
	add r0, r0, r2
	ldrb r2, [r1, r2]
	add r1, sp, #0x28
	ldrb r4, [r0, #6]
	strh r2, [r1, #8]
	ldrb r2, [r0, #1]
	add r0, r4, #0
	strh r2, [r1, #0xa]
	mov r2, #0
	strh r2, [r1, #0xc]
	mov r2, #2
	strb r2, [r1, #0xe]
	mov r2, #3
	strb r2, [r1, #0xf]
	mov r2, #0
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219D6E2
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219D7E4 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219D6FE
_0219D6E2:
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219D7E4 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219D6FE:
	blx sub_0208DA4C
	str r0, [sp, #0x3c]
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219D738
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219D7E4 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219D754
_0219D738:
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r1, _0219D7E0 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219D7E4 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219D754:
	blx sub_0208DA4C
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	strh r6, [r0, #0x1c]
	mov r1, #1
	strh r1, [r0, #0x1e]
	mov r0, #0x94
	mul r0, r7
	add r4, r5, r0
	ldr r0, [r5, #0x14]
	bl sub_0219F8A8
	add r1, sp, #0x30
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r5]
	str r1, [sp, #8]
	ldr r1, [r4, #0x5c]
	ldr r2, [r4, #0x54]
	ldr r3, [r4, #0x64]
	bl sub_0204C0A4
	add r1, r6, #0
	str r0, [r4, #0x6c]
	bl sub_0204C124
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	bhs _0219D798
	b _0219D67A
_0219D798:
	mov r0, #0
	mov r1, #0x94
_0219D79C:
	add r3, r6, #0
	mul r3, r1
	add r2, r5, r3
	add r2, #0xd4
	strh r0, [r2]
	add r2, r5, r3
	add r2, #0xd8
	str r0, [r2]
	add r2, r5, r3
	add r2, #0xdc
	str r0, [r2]
	add r2, r5, r3
	add r2, #0xe0
	str r0, [r2]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #3
	blo _0219D79C
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D7D0: .word 0x0219FA94
_0219D7D4: .word 0x0219FA88
_0219D7D8: .word 0x0219FB78
_0219D7DC: .word 0x0219FAC0
_0219D7E0: .word 0x41800000
_0219D7E4: .word 0x45800000
	thumb_func_end ovy316_219d534

	thumb_func_start ovy316_219d7e8
ovy316_219d7e8: ; 0x0219D7E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r7, #0xc
_0219D7F4:
	ldr r1, [sp, #4]
	mov r0, #0x94
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r2
_0219D802:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, #0x68]
	bl sub_0204C108
	add r0, r4, #0
	mul r0, r7
	add r5, r6, r0
	ldr r0, [r5, #0x58]
	bl sub_0204BE64
	ldr r0, [r5, #0x50]
	bl sub_0204B98C
	cmp r4, #1
	beq _0219D828
	ldr r0, [r5, #0x54]
	bl sub_0204BCD0
_0219D828:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0219D802
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #3
	blo _0219D7F4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy316_219d7e8

	thumb_func_start ovy316_219d844
ovy316_219d844: ; 0x0219D844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r7, r0, #0
	ldr r4, [sp, #0x88]
	ldr r0, [sp, #4]
	str r1, [sp]
	ldr r5, [sp, #0x80]
	blx sub_0208D3BC
	str r0, [sp, #0x10]
	add r0, r4, #0
	blx sub_0208D3BC
	add r6, sp, #0x70
	str r0, [sp, #0x14]
	ldrb r0, [r6]
	blx sub_0208D3BC
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	blx sub_0208DD34
	str r0, [sp, #0x1c]
	add r0, r5, #0
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	blx sub_0208DF14
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	blx sub_0208D3BC
	str r0, [sp, #0x24]
	add r0, r4, #0
	blx sub_0208D3BC
	str r0, [sp, #0x28]
	ldrb r0, [r6, #4]
	blx sub_0208D3BC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #8]
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	blx sub_0208DD34
	str r0, [sp, #0x30]
	add r0, r5, #0
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	blx sub_0208DF14
	str r0, [sp, #0xc]
	ldrb r0, [r6, #0x14]
	blx sub_0208D3BC
	str r0, [sp, #0x34]
	ldrb r0, [r6, #0x14]
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0
	blx sub_0208E144
	str r0, [sp, #0x38]
	add r0, r4, #0
	blx sub_0208D3BC
	str r0, [sp, #0x3c]
	add r0, r5, #0
	blx sub_0208D3BC
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x3c]
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, [sp, #0x38]
	blx sub_0208DD34
	str r0, [sp, #0x40]
	add r0, r4, #0
	blx sub_0208D3BC
	str r0, [sp, #0x44]
	add r0, r5, #0
	blx sub_0208D3BC
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	blx sub_0208E144
	add r1, r0, #0
	ldr r0, [sp, #0x40]
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0219DA40 ; =0x40800000
	blx sub_0208DD34
	str r0, [sp, #0x48]
	add r0, r5, #0
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x48]
	blx sub_0208E3C8
	str r0, [sp, #0x4c]
	add r0, r5, #0
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x4c]
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	blx sub_0208DF14
	str r0, [sp, #0x50]
	ldrb r0, [r6, #8]
	blx sub_0208D3BC
	str r0, [sp, #0x54]
	add r0, r4, #0
	blx sub_0208D3BC
	add r4, r0, #0
	ldrb r0, [r6, #0xc]
	blx sub_0208D3BC
	str r0, [sp, #0x58]
	ldrb r0, [r6, #8]
	blx sub_0208D3BC
	add r1, r0, #0
	ldr r0, [sp, #0x58]
	blx sub_0208E144
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r4, r0, #0
	add r0, r5, #0
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, [sp, #0x54]
	blx sub_0208DF14
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x50]
	blx sub_0208E144
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r1, _0219DA44 ; =0x41800000
	add r0, r6, #0
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	ldr r1, _0219DA44 ; =0x41800000
	bls _0219DA0C
	add r0, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DA48 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DA22
_0219DA0C:
	add r0, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DA48 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DA22:
	blx sub_0208DA4C
	ldr r1, [sp]
	strh r4, [r7]
	strh r5, [r7, #2]
	str r0, [r1, #4]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0219DA40: .word 0x40800000
_0219DA44: .word 0x41800000
_0219DA48: .word 0x45800000
	thumb_func_end ovy316_219d844

	thumb_func_start ovy316_219da4c
ovy316_219da4c: ; 0x0219DA4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp, #0x1c]
	mov r7, #0
	add r0, sp, #0x98
	str r7, [r0]
	str r7, [r0, #4]
	str r7, [r0, #8]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x30]
	add r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, _0219DD78 ; =0x45800000
	lsr r0, r0, #0x15
	str r0, [sp, #0x34]
_0219DA6A:
	mov r0, #0x94
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x30]
	mov r6, #0
	add r4, r0, r1
	mov r0, #0xe
	add r1, r7, #0
	mul r1, r0
	ldr r0, _0219DD7C ; =0x0219FB78
	add r5, r0, r1
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0219DB08
	beq _0219DA9C
	cmp r0, #1
	beq _0219DA96
	cmp r0, #2
	beq _0219DA9A
	b _0219DA9C
_0219DA96:
	mov r6, #1
	b _0219DA9C
_0219DA9A:
	sub r6, r6, #1
_0219DA9C:
	cmp r6, #0
	bge _0219DAB0
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x88
	mov r0, #1
	str r0, [r1]
_0219DAB0:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #4
	bhi _0219DB08
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DAC6: ; jump table
	.short _0219DAD0 - _0219DAC6 - 2 ; case 0
	.short _0219DB10 - _0219DAC6 - 2 ; case 1
	.short _0219DC30 - _0219DAC6 - 2 ; case 2
	.short _0219DCFA - _0219DAC6 - 2 ; case 3
	.short _0219DE16 - _0219DAC6 - 2 ; case 4
_0219DAD0:
	cmp r6, #0
	ble _0219DAFE
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C124
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x88
	mov r0, #1
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x90
	mov r0, #0
	str r0, [r1]
	b _0219DB10
_0219DAFE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #2
	beq _0219DB0A
_0219DB08:
	b _0219DED4
_0219DB0A:
	add r4, #0x8c
	mov r0, #0
_0219DB0E:
	b _0219DCCA
_0219DB10:
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DB8E
	ldrb r1, [r5]
	add r0, sp, #0x8c
	strh r1, [r0]
	ldrb r1, [r5, #1]
	strh r1, [r0, #2]
	ldrb r0, [r5, #6]
	str r0, [sp, #0x2c]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219DB5A
	ldr r0, [sp, #0x2c]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DB76
_0219DB5A:
	ldr r0, [sp, #0x2c]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DB76:
	blx sub_0208DA4C
	str r0, [sp, #0x88]
	str r0, [sp, #0x84]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x8c
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x84
	b _0219DBD2
_0219DB8E:
	ldrb r1, [r5, #2]
	ldrb r2, [r5]
	ldrb r3, [r5, #1]
	str r1, [sp]
	ldrb r1, [r5, #3]
	str r1, [sp, #4]
	ldrb r1, [r5, #6]
	str r1, [sp, #8]
	ldrb r1, [r5, #7]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #0xa]
	str r1, [sp, #0x10]
	ldrb r1, [r5, #0xc]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0x80
	add r1, sp, #0x78
	bl ovy316_219d844
	add r2, r0, #0
	lsl r1, r7, #1
	add r0, sp, #0x90
	strh r2, [r0, r1]
	lsl r2, r7, #2
	mov r1, #1
	add r0, sp, #0x98
	str r1, [r0, r2]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x80
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x78
_0219DBD2:
	bl sub_0204C270
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DC06
	cmp r6, #0
	bge _0219DC06
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r4, #0x90
	b _0219DB0E
_0219DC06:
	add r1, r0, r6
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x90
	mov r0, #0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldrh r1, [r0]
	ldrb r0, [r5, #0xa]
	cmp r1, r0
	bne _0219DCEA
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r4, #0x88
	mov r0, #2
	b _0219DB0E
_0219DC30:
	ldrb r1, [r5, #2]
	add r0, sp, #0x38
	strh r1, [r0, #0x3c]
	ldrb r1, [r5, #3]
	strh r1, [r0, #0x3e]
	ldrb r0, [r5, #7]
	str r0, [sp, #0x28]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219DC70
	ldr r0, [sp, #0x28]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DC8C
_0219DC70:
	ldr r0, [sp, #0x28]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DC8C:
	blx sub_0208DA4C
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x74
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x6c
	bl sub_0204C270
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DCCE
	cmp r6, #0
	bge _0219DCCE
	ldrb r0, [r5, #0xa]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x88
	mov r0, #1
_0219DCC4:
	str r0, [r1]
	add r4, #0x90
	mov r0, #0
_0219DCCA:
	str r0, [r4]
	b _0219DED4
_0219DCCE:
	add r1, r0, r6
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x90
	mov r0, #0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldrh r1, [r0]
	ldrb r0, [r5, #9]
	cmp r1, r0
	beq _0219DCEC
_0219DCEA:
	b _0219DED4
_0219DCEC:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r4, #0x88
	mov r0, #3
	b _0219DB0E
_0219DCFA:
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DD84
	ldrb r1, [r5, #2]
	add r0, sp, #0x38
	strh r1, [r0, #0x30]
	ldrb r1, [r5, #3]
	strh r1, [r0, #0x32]
	ldrb r0, [r5, #7]
	str r0, [sp, #0x24]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219DD44
	ldr r0, [sp, #0x24]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DD60
_0219DD44:
	ldr r0, [sp, #0x24]
	blx sub_0208D3BC
	ldr r1, _0219DD80 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DD78 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DD60:
	blx sub_0208DA4C
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x68
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x60
	b _0219DDC8
	.align 2, 0
_0219DD78: .word 0x45800000
_0219DD7C: .word 0x0219FB78
_0219DD80: .word 0x41800000
_0219DD84:
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	ldrb r1, [r5, #7]
	str r1, [sp, #8]
	ldrb r1, [r5, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #0xb]
	str r1, [sp, #0x10]
	ldrb r1, [r5, #0xd]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0x5c
	add r1, sp, #0x54
	bl ovy316_219d844
	add r2, r0, #0
	lsl r1, r7, #1
	add r0, sp, #0x90
	strh r2, [r0, r1]
	lsl r2, r7, #2
	mov r1, #1
	add r0, sp, #0x98
	str r1, [r0, r2]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x5c
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x54
_0219DDC8:
	bl sub_0204C270
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219DDEC
	cmp r6, #0
	bge _0219DDEC
	ldrb r0, [r5, #9]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x88
	mov r0, #2
	b _0219DCC4
_0219DDEC:
	add r1, r0, r6
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x90
	mov r0, #0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldrh r1, [r0]
	ldrb r0, [r5, #0xb]
	cmp r1, r0
	bne _0219DED4
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	strh r0, [r1]
	add r4, #0x88
	mov r0, #4
	b _0219DB0E
_0219DE16:
	ldrb r1, [r5, #4]
	add r0, sp, #0x38
	strh r1, [r0, #0x18]
	ldrb r1, [r5, #5]
	strh r1, [r0, #0x1a]
	ldrb r0, [r5, #8]
	str r0, [sp, #0x20]
	blx sub_0208D3BC
	ldr r1, _0219DFA8 ; =0x41800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _0219DE56
	ldr r0, [sp, #0x20]
	blx sub_0208D3BC
	ldr r1, _0219DFA8 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DFAC ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DE72
_0219DE56:
	ldr r0, [sp, #0x20]
	blx sub_0208D3BC
	ldr r1, _0219DFA8 ; =0x41800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _0219DFAC ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DE72:
	blx sub_0208DA4C
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x50
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x48
	bl sub_0204C270
	cmp r6, #0
	bge _0219DEAA
	ldr r0, [r4, #0x1c]
	mov r1, #3
	bl sub_0204C468
	ldrb r0, [r5, #0xb]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x88
	mov r0, #3
	b _0219DCC4
_0219DEAA:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #1
	bne _0219DED4
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0204C468
	add r1, r4, #0
	add r1, #0x8c
	mov r0, #0
	add r4, #0x90
	str r0, [r1]
	ldr r0, [r4]
	cmp r0, #0
	bne _0219DED4
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	mov r2, #1
	str r2, [r1, r0]
_0219DED4:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	bhs _0219DEE0
	b _0219DA6A
_0219DEE0:
	ldr r0, _0219DFB0 ; =0x0219FA84
	add r6, sp, #0x38
	ldrb r1, [r0]
	mov r5, #0
	add r4, sp, #0x3c
	strb r1, [r6, #0xa]
	ldrb r1, [r0, #1]
	add r7, sp, #0x98
	strb r1, [r6, #0xb]
	ldrb r0, [r0, #2]
	strb r0, [r6, #0xc]
_0219DEF6:
	lsl r0, r5, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0219DF08
	lsl r1, r5, #1
	add r0, sp, #0x90
	ldrsh r0, [r0, r1]
	strh r0, [r4, r1]
	b _0219DF24
_0219DF08:
	mov r0, #0x94
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r2, #1
	add r0, r0, r1
	ldr r0, [r0, #0x6c]
	add r1, sp, #0x38
	bl Oam_GetSpritePosData
	mov r0, #2
	ldrsh r1, [r6, r0]
	lsl r0, r5, #1
	strh r1, [r4, r0]
_0219DF24:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _0219DEF6
	mov r0, #0
	mov ip, r0
_0219DF32:
	mov r0, ip
	mov r5, #2
	cmp r0, #2
	bhs _0219DF64
_0219DF3A:
	add r0, sp, #0x40
	add r0, #2
	add r4, r0, r5
	ldrb r2, [r0, r5]
	sub r7, r4, #1
	ldrb r3, [r7]
	lsl r1, r2, #1
	add r0, sp, #0x3c
	ldrsh r6, [r0, r1]
	lsl r1, r3, #1
	ldrsh r0, [r0, r1]
	cmp r6, r0
	ble _0219DF58
	strb r2, [r7]
	strb r3, [r4]
_0219DF58:
	sub r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r0, ip
	cmp r5, r0
	bhi _0219DF3A
_0219DF64:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	blo _0219DF32
	add r0, sp, #0x38
	ldrb r4, [r0, #0xb]
	ldrb r6, [r0, #0xa]
	mov r5, #0
	mov r7, #0x94
_0219DF7C:
	cmp r6, r5
	bne _0219DF84
	mov r1, #0
	b _0219DF8C
_0219DF84:
	mov r1, #1
	cmp r4, r5
	beq _0219DF8C
	mov r1, #2
_0219DF8C:
	add r2, r5, #0
	ldr r0, [sp, #0x1c]
	mul r2, r7
	add r0, r0, r2
	ldr r0, [r0, #0x6c]
	bl sub_0204C438
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _0219DF7C
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DFA8: .word 0x41800000
_0219DFAC: .word 0x45800000
_0219DFB0: .word 0x0219FA84
	thumb_func_end ovy316_219da4c

	thumb_func_start ovy316_219dfb4
ovy316_219dfb4: ; 0x0219DFB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_0219DFBE:
	cmp r4, r6
	bne _0219DFCA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	b _0219DFD0
_0219DFCA:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
_0219DFD0:
	bl sub_0219EF24
	cmp r4, r6
	bne _0219DFEC
	mov r0, #0x94
	add r1, r4, #0
	mul r1, r0
	add r0, r5, r1
	add r0, #0xdc
	str r7, [r0]
	add r0, r5, r1
	add r0, #0xe0
	str r7, [r0]
	b _0219E002
_0219DFEC:
	mov r0, #0x94
	add r2, r4, #0
	mul r2, r0
	add r1, r5, r2
	add r1, #0xdc
	mov r0, #2
	str r0, [r1]
	add r1, r5, r2
	add r1, #0xe0
	mov r0, #1
	str r0, [r1]
_0219E002:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219DFBE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy316_219dfb4

	thumb_func_start ovy316_219e010
ovy316_219e010: ; 0x0219E010
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
	mov r7, #0x94
_0219E01A:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E01A
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	mov r0, #0x10
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, _0219E050 ; =0x04001050
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E050: .word 0x04001050
	thumb_func_end ovy316_219e010

	thumb_func_start sub_0219E054
sub_0219E054: ; 0x0219E054
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0219E062
	mov r0, #1
	bx lr
_0219E062:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E054

	thumb_func_start ovy316_219e068
ovy316_219e068: ; 0x0219E068
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x21
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #1
	beq _0219E080
	cmp r0, #2
	beq _0219E0A8
	cmp r0, #3
	beq _0219E102
	pop {r3, r4, r5, r6, r7, pc}
_0219E080:
	mov r4, #0
	mov r7, #1
	mov r6, #0x94
_0219E086:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E086
	mov r0, #0x21
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219E0A8:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0x10
	bge _0219E0FC
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	cmp r1, #0x10
	bne _0219E0E4
	mov r4, #0
	add r7, r4, #0
	mov r6, #0x94
_0219E0C4:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r7, #0
	bl sub_0204C318
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E0C4
	mov r0, #0x21
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r5, r0]
_0219E0E4:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _0219E118 ; =0x04001050
	mov r1, #0
	mov r2, #0x3f
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, r6, r7, pc}
_0219E0FC:
	mov r0, #3
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E102:
	ldr r0, _0219E118 ; =0x04001050
	mov r3, #8
	mov r1, #4
	mov r2, #0x3f
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E118: .word 0x04001050
	thumb_func_end ovy316_219e068

	thumb_func_start ovy316_219e11c
ovy316_219e11c: ; 0x0219E11C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xca
	bl sub_0204AA30
	mov r7, #0
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #0xb
	add r4, r0, #0
	bl Oam_LoadNCLRFile
	mov r6, #0x86
	lsl r6, r6, #2
	str r0, [r5, r6]
	ldrh r0, [r5]
	mov r1, #0x11
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	sub r1, r6, #4
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x1c
	bl Oam_LoadNCERFile
	add r1, r6, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r4, sp, #0xc
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0x2a
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x1d
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	strb r7, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	ldr r0, [r5, #0x14]
	bl sub_0219F8A8
	str r4, [sp]
	str r7, [sp, #4]
	ldrh r1, [r5]
	add r3, r6, #4
	str r1, [sp, #8]
	sub r1, r6, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r6]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0x11
	lsl r1, r1, #5
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r5, #0
	mov r1, #0
	bl ovy316_219e1f0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy316_219e11c

	thumb_func_start ovy316_219e1c4
ovy316_219e1c4: ; 0x0219E1C4
	push {r3, r4, r5, lr}
	mov r4, #0x22
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C108
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204B98C
	sub r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy316_219e1c4

	thumb_func_start ovy316_219e1f0
ovy316_219e1f0: ; 0x0219E1F0
	push {r3, lr}
	cmp r1, #0
	beq _0219E1FC
	bl ovy316_219e218
	pop {r3, pc}
_0219E1FC:
	mov r3, #0x19
	lsl r3, r3, #4
	add r1, sp, #0
	add r2, r3, #0
	strh r3, [r1]
	sub r2, #0x64
	strh r2, [r1, #2]
	add r3, #0x90
	ldr r0, [r0, r3]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, pc}
	thumb_func_end ovy316_219e1f0

	thumb_func_start ovy316_219e218
ovy316_219e218: ; 0x0219E218
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, r1, #4
	lsl r4, r2, #1
	ldr r2, _0219E244 ; =0x0219FA9A
	ldrb r3, [r2, r4]
	add r2, sp, #0
	strh r3, [r2]
	ldr r3, _0219E248 ; =0x0219FA9B
	ldrb r3, [r3, r4]
	strh r3, [r2, #2]
	ldr r0, [r0, r1]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219E244: .word 0x0219FA9A
_0219E248: .word 0x0219FA9B
	thumb_func_end ovy316_219e218

	thumb_func_start ovy316_219e24c
ovy316_219e24c: ; 0x0219E24C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0219E2FC ; =0x00000882
	ldr r3, _0219E300 ; =0x0219FE00
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x20
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r7, #0
	strh r7, [r4]
	mov r3, #0x1a
	ldr r0, _0219E304 ; =0x00007FFF
	strh r7, [r4, #2]
	strh r0, [r4, #4]
	mov r0, #1
	add r1, r4, #0
	mov r2, #0x20
	lsl r3, r3, #4
	bl sub_02045320
	mov r0, #6
	add r1, r4, #0
	mov r2, #0x20
	mov r3, #0
	bl sub_02045320
	add r0, r4, #0
	bl GFL_HeapFree
	ldrh r3, [r5]
	mov r0, #2
	mov r1, #1
	mov r2, #0x20
	bl sub_02046E28
	mov r5, #8
	str r5, [sp]
	add r4, r0, #0
	str r7, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #8
	bl sub_020470F8
	str r5, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	mov r3, #8
	str r6, [sp, #4]
	bl sub_020470F8
	add r0, r4, #0
	bl sub_02046EF4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02046F00
	add r2, r0, #0
	mov r0, #1
	add r1, r5, #0
	mov r3, #0
	bl sub_02045080
	add r0, r4, #0
	bl sub_02046EF4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02046F00
	add r2, r0, #0
	mov r0, #6
	add r1, r5, #0
	mov r3, #0
	bl sub_02045080
	add r0, r4, #0
	bl sub_02046EDC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E2FC: .word 0x00000882
_0219E300: .word 0x0219FE00
_0219E304: .word 0x00007FFF
	thumb_func_end ovy316_219e24c

	thumb_func_start sub_0219E308
sub_0219E308: ; 0x0219E308
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E308

	thumb_func_start ovy316_219e30c
ovy316_219e30c: ; 0x0219E30C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _0219E3F8 ; =0x000008A9
	mov r1, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, _0219E3FC ; =0x0219FE00
	ldrh r0, [r0]
	lsl r1, r1, #8
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0xd
	mov r6, #0
	mov r5, #0
	mov r7, #1
	lsl r0, r0, #0xc
_0219E332:
	mov r3, #0
_0219E334:
	cmp r5, #0x11
	blo _0219E340
	cmp r5, #0x17
	bhs _0219E340
	add r1, r7, #0
	b _0219E342
_0219E340:
	mov r1, #0
_0219E342:
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r1, #0
	orr r2, r0
	lsl r1, r6, #1
	strh r2, [r4, r1]
	add r1, r6, #1
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0x20
	blo _0219E334
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #0x18
	blo _0219E332
	mov r0, #0x20
	str r0, [sp]
	mov r6, #0x18
	mov r0, #1
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp, #4]
	mov r5, #0
	bl sub_020454AC
	mov r0, #1
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r0, _0219E400 ; =0x000008C2
	ldr r3, _0219E3FC ; =0x0219FE00
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r1, r6, #6
	ldrh r0, [r0]
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r3, #0
	add r7, r5, #0
	mov r1, #1
_0219E3A4:
	mov r2, #0
_0219E3A6:
	cmp r3, #0x11
	blo _0219E3B2
	cmp r3, #0x17
	bhs _0219E3B2
	add r6, r1, #0
	b _0219E3B4
_0219E3B2:
	add r6, r7, #0
_0219E3B4:
	lsl r0, r5, #1
	strh r6, [r4, r0]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x20
	blo _0219E3A6
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x18
	blo _0219E3A4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #6
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E3F8: .word 0x000008A9
_0219E3FC: .word 0x0219FE00
_0219E400: .word 0x000008C2
	thumb_func_end ovy316_219e30c

	thumb_func_start ovy316_219e404
ovy316_219e404: ; 0x0219E404
	push {r3, lr}
	mov r1, #0xd
	mov r0, #1
	lsl r1, r1, #0xc
	bl sub_02045790
	mov r0, #6
	mov r1, #0
	bl sub_02045790
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy316_219e404

	thumb_func_start ovy316_219e41c
ovy316_219e41c: ; 0x0219E41C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5]
	mov r4, #0xca
	mov r0, #0xca
	bl sub_0204AA30
	add r4, #0x36
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r1, [r5]
	mov r2, #4
	add r3, r4, #0
	str r1, [sp, #8]
	mov r1, #7
	add r6, r0, #0
	bl sub_0204B124
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #4
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x13
	mov r2, #4
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x14
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #4
	bl sub_02044F90
	mov r0, #5
	bl sub_02044F90
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy316_219e41c

	thumb_func_start sub_0219E498
sub_0219E498: ; 0x0219E498
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E498

	thumb_func_start ovy316_219e49c
ovy316_219e49c: ; 0x0219E49C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r5, #0x20
	add r6, r0, #0
	str r5, [sp]
	ldrh r0, [r6]
	mov r7, #7
	lsl r7, r7, #6
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r7, #0
	mov r4, #0
	bl sub_0204B0B8
	str r5, [sp]
	ldrh r0, [r6]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	mov r3, #0x20
	bl sub_0204B0B8
	ldrh r3, [r6]
	mov r0, #0
	mov r1, #3
	mov r2, #0xa9
	bl GFL_MsgSysLoadData
	add r1, r7, #0
	add r1, #0x70
	str r0, [r6, r1]
	ldrh r0, [r6]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r7, #0
	add r1, #0x90
	str r0, [r6, r1]
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x74
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #0x74
	str r0, [sp, #0x10]
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x74
	str r0, [sp, #0xc]
	add r7, #0x80
_0219E516:
	lsl r0, r4, #3
	ldr r1, _0219E574 ; =0x0219FAF4
	add r0, r4, r0
	add r3, r1, r0
	lsl r1, r4, #2
	add r5, r6, r1
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #6]
	str r1, [sp, #8]
	ldr r1, _0219E574 ; =0x0219FAF4
	ldrb r0, [r1, r0]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	ldr r1, [sp, #0x14]
	str r0, [r5, r1]
	ldr r0, [sp, #0x10]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #1
	str r0, [r5, r7]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E516
	mov r1, #0x93
	lsl r1, r1, #2
	mov r0, #0
	str r0, [r6, r1]
	add r1, #8
	str r0, [r6, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E574: .word 0x0219FAF4
	thumb_func_end ovy316_219e49c

	thumb_func_start ovy316_219e578
ovy316_219e578: ; 0x0219E578
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E58A
	bl sub_020223CC
_0219E58A:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E598
	bl GFL_StrBufFree
_0219E598:
	mov r6, #0x8d
	mov r4, #0
	lsl r6, r6, #2
_0219E59E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E59E
	mov r4, #0x25
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	sub r4, #0x20
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy316_219e578

	thumb_func_start ovy316_219e5c8
ovy316_219e5c8: ; 0x0219E5C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0203A7F4
	add r0, r4, #0
	bl ovy316_219e5e0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219e5c8

	thumb_func_start ovy316_219e5e0
ovy316_219e5e0: ; 0x0219E5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x8d
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, #0xc
	mov r4, #0
	str r0, [sp, #4]
_0219E600:
	lsl r0, r4, #2
	add r5, r7, r0
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219E64A
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r7, #0x1c]
	bl sub_02021C1C
	cmp r0, #0
	beq _0219E628
	mov r0, #0
	str r0, [sp]
	b _0219E64A
_0219E628:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r5, r0]
_0219E64A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219E600
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy316_219e5e0

	thumb_func_start ovy316_219e65c
ovy316_219e65c: ; 0x0219E65C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #0x8e
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r4, [r5, r6]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r7, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r6, #0x14
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0219E68A
	bl sub_020223CC
_0219E68A:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E698
	bl GFL_StrBufFree
_0219E698:
	mov r6, #0x23
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_0204898C
	add r1, r6, #0
	add r1, #0x24
	str r0, [r5, r1]
	ldr r1, [r5, #0x18]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	add r6, #0x24
	lsr r7, r0, #0x10
	ldr r0, [r5, r6]
	ldr r1, [r5, #0x18]
	bl sub_020229B0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl BmpWin_GetBitmap
	bl sub_02046EFC
	ldr r1, [sp, #0x20]
	cmp r1, r7
	bls _0219E6EC
	sub r2, r1, r7
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	str r1, [sp, #0x1c]
_0219E6EC:
	cmp r0, r6
	bls _0219E6FC
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
_0219E6FC:
	bl sub_02017BCC
	ldr r1, [r5, #0x18]
	mov r6, #0x25
	str r1, [sp]
	lsl r6, r6, #4
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	add r3, r6, #4
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	ldr r3, [r5, r3]
	add r0, r4, #0
	bl sub_02022268
	sub r1, r6, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy316_219e65c

	thumb_func_start ovy316_219e748
ovy316_219e748: ; 0x0219E748
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	bl sub_020223B4
	cmp r0, #0
	beq _0219E766
	cmp r0, #1
	beq _0219E79A
	cmp r0, #2
	beq _0219E7C6
	b _0219E7C8
_0219E766:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _0219E778
	bl sub_0203DA2C
	cmp r0, #0
	beq _0219E7C8
_0219E778:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r6, #0
	bl sub_020223E0
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _0219E794
	str r6, [r5, #8]
	b _0219E7C8
_0219E794:
	mov r0, #1
_0219E796:
	str r0, [r5, #8]
	b _0219E7C8
_0219E79A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _0219E7AC
	bl sub_0203DA48
	cmp r0, #0
	beq _0219E7C8
_0219E7AC:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020223BC
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219E7C4
	mov r0, #0
	b _0219E796
_0219E7C4:
	b _0219E794
_0219E7C6:
	mov r4, #1
_0219E7C8:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy316_219e748

	thumb_func_start ovy316_219e7cc
ovy316_219e7cc: ; 0x0219E7CC
	push {r4, r5, r6, lr}
	mov r4, #0x8e
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r6, [r5, r4]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r4, #0x14
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219E804
	bl sub_020223CC
_0219E804:
	mov r0, #0x93
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E818
	bl GFL_StrBufFree
_0219E818:
	mov r0, #0x95
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy316_219e7cc

	thumb_func_start ovy316_219e824
ovy316_219e824: ; 0x0219E824
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0x8f
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r7, [r5, r4]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	add r6, r1, #0
	bl GFL_WordSetSystemCreateDefault
	ldr r1, _0219E904 ; =0x0219FAB4
	lsl r2, r6, #2
	sub r4, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r5, r4]
	ldr r1, [r1, r2]
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r2, _0219E908 ; =0x0219FA94
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl sub_020243D0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_WordSetSystemFree
	add r0, r7, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	bl sub_020229B0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r0, r7, #0
	bl BmpWin_GetBitmap
	bl sub_02046EFC
	cmp r0, r6
	bls _0219E8CA
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
_0219E8CA:
	add r0, r7, #0
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	mov r6, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	str r6, [r5, r0]
	add r0, r5, #0
	bl ovy316_219e5e0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219E904: .word 0x0219FAB4
_0219E908: .word 0x0219FA94
	thumb_func_end ovy316_219e824

	thumb_func_start ovy316_219e90c
ovy316_219e90c: ; 0x0219E90C
	push {r3, r4, r5, lr}
	mov r4, #0x8f
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r4, [r5, r4]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy316_219e90c

	thumb_func_start ovy316_219e93c
ovy316_219e93c: ; 0x0219E93C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	mov r1, #0xb
	str r0, [sp]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	mov r0, #2
	bl sub_0202E168
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy316_219e93c

	thumb_func_start sub_0219E95C
sub_0219E95C: ; 0x0219E95C
	mov r1, #0x96
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E968 ; =sub_0202E1DC
	bx r3
	nop
_0219E968: .word sub_0202E1DC
	thumb_func_end sub_0219E95C

	thumb_func_start ovy316_219e96c
ovy316_219e96c: ; 0x0219E96C
	push {r4, r5, lr}
	sub sp, #0x14
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #0x28
	bl sub_0204898C
	str r0, [sp, #8]
	ldr r1, _0219E9B0 ; =0x000039E3
	add r0, sp, #8
	strh r1, [r0, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp]
	ldrh r0, [r5]
	add r1, sp, #8
	mov r2, #9
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	mov r3, #0x15
	bl sub_0202E1F0
	add r4, #0x2c
	str r0, [r5, r4]
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0219E9B0: .word 0x000039E3
	thumb_func_end ovy316_219e96c

	thumb_func_start sub_0219E9B4
sub_0219E9B4: ; 0x0219E9B4
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E9C0 ; =sub_0202E34C
	bx r3
	nop
_0219E9C0: .word sub_0202E34C
	thumb_func_end sub_0219E9B4

	thumb_func_start sub_0219E9C4
sub_0219E9C4: ; 0x0219E9C4
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E9D0 ; =sub_0202E37C
	bx r3
	nop
_0219E9D0: .word sub_0202E37C
	thumb_func_end sub_0219E9C4

	thumb_func_start ovy316_219e9d4
ovy316_219e9d4: ; 0x0219E9D4
	push {r3, r4, r5, lr}
	mov r4, #0x97
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202E41C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202E430
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy316_219e9d4

	thumb_func_start sub_0219E9F0
sub_0219E9F0: ; 0x0219E9F0
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E9FC ; =sub_0202E438
	bx r3
	nop
_0219E9FC: .word sub_0202E438
	thumb_func_end sub_0219E9F0

	thumb_func_start ovy316_219ea00
ovy316_219ea00: ; 0x0219EA00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	mov r4, #0
_0219EA08:
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	add r0, sp, #0
	add r5, r0, r6
	mov r0, #0x23
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r7, r0]
	add r1, #0x29
	bl sub_0204898C
	add r1, sp, #0
	str r0, [r1, r6]
	ldr r0, _0219EA84 ; =0x000039E3
	strh r0, [r5, #4]
	mov r0, #0
	cmp r4, #0
	beq _0219EA30
	mov r0, #1
_0219EA30:
	add r4, r4, #1
	str r0, [r5, #8]
	cmp r4, #2
	blo _0219EA08
	ldrh r0, [r7]
	mov r4, #0x96
	mov r1, #2
	str r0, [sp, #0x18]
	add r0, sp, #0
	strb r1, [r0, #0x1c]
	mov r0, #1
	str r0, [sp, #0x24]
	add r6, sp, #0
	mov r1, #0x20
	add r0, sp, #0x18
	strb r1, [r0, #0x10]
	mov r1, #0x11
	strb r1, [r0, #0x11]
	mov r1, #9
	strb r1, [r0, #0x12]
	mov r1, #3
	str r6, [sp, #0x20]
	lsl r4, r4, #2
	strb r1, [r0, #0x13]
	ldr r1, [r7, r4]
	bl sub_0202D974
	add r4, #8
	str r0, [r7, r4]
	mov r5, #0
	mov r4, #0xc
_0219EA6E:
	add r0, r5, #0
	mul r0, r4
	ldr r0, [r6, r0]
	bl GFL_StrBufFree
	add r5, r5, #1
	cmp r5, #2
	blo _0219EA6E
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0219EA84: .word 0x000039E3
	thumb_func_end ovy316_219ea00

	thumb_func_start sub_0219EA88
sub_0219EA88: ; 0x0219EA88
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _0219EA94 ; =sub_0202DA54
	bx r3
	nop
_0219EA94: .word sub_0202DA54
	thumb_func_end sub_0219EA88

	thumb_func_start sub_0219EA98
sub_0219EA98: ; 0x0219EA98
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _0219EAA4 ; =sub_0202DB70
	bx r3
	nop
_0219EAA4: .word sub_0202DB70
	thumb_func_end sub_0219EA98

	thumb_func_start sub_0219EAA8
sub_0219EAA8: ; 0x0219EAA8
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _0219EAB4 ; =sub_0202DBE4
	bx r3
	nop
_0219EAB4: .word sub_0202DBE4
	thumb_func_end sub_0219EAA8

	thumb_func_start ovy316_219eab8
ovy316_219eab8: ; 0x0219EAB8
	push {r3, lr}
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219EACC
	mov r0, #1
	pop {r3, pc}
_0219EACC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy316_219eab8

	thumb_func_start ovy316_219ead0
ovy316_219ead0: ; 0x0219EAD0
	push {r4, r5}
	mov r4, #0x1f
	add r5, r0, #0
	and r5, r4
	strh r5, [r1]
	lsl r1, r4, #5
	and r1, r0
	asr r1, r1, #5
	strh r1, [r2]
	lsl r1, r4, #0xa
	and r0, r1
	asr r0, r0, #0xa
	strh r0, [r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy316_219ead0

	thumb_func_start ovy316_219eaf0
ovy316_219eaf0: ; 0x0219EAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xca
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x70
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x90
	mov r4, #0
	str r0, [sp, #0x10]
_0219EB12:
	lsl r0, r4, #2
	add r1, r4, r0
	ldr r0, _0219EBD4 ; =0x0219FAC0
	ldrh r3, [r5]
	add r0, r0, r1
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	ldrb r1, [r1, #1]
	add r2, sp, #0x14
	bl sub_0204B37C
	str r0, [sp, #4]
	mov r0, #0x94
	add r6, r4, #0
	mul r6, r0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0xc]
	add r1, r1, r6
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	ldr r1, [sp]
	ldrh r3, [r5]
	ldrb r1, [r1, #4]
	add r0, r7, #0
	add r2, sp, #0x14
	bl sub_0204B37C
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r6
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0xc]
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219EB12
	add r0, r7, #0
	bl GFL_ArcToolFree
	mov r2, #0
	mov r1, #2
	mov r0, #0x10
	mov r3, #0x94
_0219EB82:
	add r6, r2, #0
	mul r6, r3
	add r4, r5, r6
	add r4, #0xd0
	add r2, r2, #1
	strh r1, [r4]
	add r4, r5, r6
	lsl r2, r2, #0x18
	add r4, #0xd2
	lsr r2, r2, #0x18
	strh r0, [r4]
	cmp r2, #3
	blo _0219EB82
	add r6, r5, #0
	mov r4, #0
	add r6, #0xb0
	add r5, #0x90
_0219EBA4:
	mov r0, #0x94
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r7
	add r1, r6, r7
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r1, _0219EBD8 ; =0x0219FA88
	mov r0, #0x1e
	ldrb r1, [r1, r4]
	add r2, r6, r7
	mov r3, #0x20
	lsl r1, r1, #5
	bl sub_0205FA10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0219EBA4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EBD4: .word 0x0219FAC0
_0219EBD8: .word 0x0219FA88
	thumb_func_end ovy316_219eaf0

	thumb_func_start sub_0219EBDC
sub_0219EBDC: ; 0x0219EBDC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EBDC

	thumb_func_start ovy316_219ebe0
ovy316_219ebe0: ; 0x0219EBE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
_0219EBEA:
	ldr r1, [sp, #0xc]
	mov r2, #0x94
	mul r2, r1
	ldr r1, [sp]
	mov r0, #0
	add r1, r1, r2
	add r1, #0xd0
	ldrh r1, [r1]
	str r2, [sp, #4]
	cmp r1, #1
	beq _0219EC06
	cmp r1, #3
	beq _0219EC38
	b _0219EC66
_0219EC06:
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r1, r2, r1
	add r1, #0xd2
	ldrh r1, [r1]
	cmp r1, #0x10
	bne _0219EC20
	ldr r1, [sp, #4]
	mov r3, #2
	add r1, r2, r1
	add r1, #0xd0
	strh r3, [r1]
	b _0219EC66
_0219EC20:
	ldr r0, [sp, #4]
	add r1, r2, #0
	add r0, r1, r0
	add r0, #0xd2
	ldrh r0, [r0]
	add r2, r0, #1
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0xd2
	strh r2, [r0]
	mov r2, #0x10
	b _0219EC5C
_0219EC38:
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r1, r2, r1
	add r1, #0xd2
	ldrh r1, [r1]
	cmp r1, #0
	bne _0219EC50
	ldr r1, [sp, #4]
	add r1, r2, r1
	add r1, #0xd0
	strh r0, [r1]
	b _0219EC66
_0219EC50:
	ldr r0, [sp, #4]
	add r1, r2, #0
	add r0, r1, r0
	add r0, #0xd2
	ldrh r0, [r0]
	sub r2, r0, #1
_0219EC5C:
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0xd2
	strh r2, [r0]
	mov r0, #1
_0219EC66:
	cmp r0, #0
	beq _0219ED3C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0xd0
	ldrh r0, [r0]
	cmp r0, #1
	beq _0219EC7C
	cmp r0, #3
	bne _0219ED24
_0219EC7C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r7, #0
	add r5, r1, r0
	add r6, sp, #0x14
_0219EC86:
	add r0, r5, #0
	add r0, #0xd2
	ldrh r4, [r0]
	lsl r0, r7, #1
	str r0, [sp, #0x10]
	add r0, r5, r0
	add r0, #0x90
	ldrh r0, [r0]
	add r1, sp, #0x1c
	add r3, sp, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r1, #2
	add r0, r5, r0
	add r0, #0x70
	ldrh r0, [r0]
	add r2, sp, #0x1c
	add r3, #2
	bl ovy316_219ead0
	add r2, sp, #0x14
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r2, #2
	add r3, sp, #0x14
	bl ovy316_219ead0
	mov r0, #0x10
	sub r2, r0, r4
	ldrh r0, [r6, #6]
	add r3, r0, #0
	ldrh r0, [r6]
	mul r3, r2
	add r1, r0, #0
	mul r1, r4
	add r0, r3, r1
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r0, r1, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #6
	mov ip, r0
	ldrh r0, [r6, #0xa]
	add r3, r0, #0
	ldrh r0, [r6, #4]
	mul r3, r2
	add r1, r0, #0
	mul r1, r4
	add r0, r3, r1
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	lsl r0, r1, #0xc
	ldrh r1, [r6, #8]
	lsr r0, r0, #0x10
	mul r2, r1
	ldrh r1, [r6, #2]
	add r3, r1, #0
	mul r3, r4
	add r1, r2, r3
	asr r2, r1, #3
	lsr r2, r2, #0x1c
	add r2, r1, r2
	asr r1, r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0xb
	orr r1, r0
	mov r0, ip
	orr r1, r0
	ldr r0, [sp, #0x10]
	add r0, r5, r0
	add r0, #0xb0
	strh r1, [r0]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #0x10
	blo _0219EC86
_0219ED24:
	ldr r2, _0219ED50 ; =0x0219FA88
	ldr r1, [sp, #0xc]
	ldr r3, [sp]
	ldrb r1, [r2, r1]
	ldr r2, [sp, #4]
	add r3, #0xb0
	add r2, r3, r2
	mov r0, #0x1e
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
_0219ED3C:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #3
	bhs _0219ED4C
	b _0219EBEA
_0219ED4C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED50: .word 0x0219FA88
	thumb_func_end ovy316_219ebe0

	thumb_func_start ovy316_219ed54
ovy316_219ed54: ; 0x0219ED54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0xca
	bl sub_0204AA30
	str r0, [sp]
	ldr r0, _0219EDDC ; =0x00000266
	mov r4, #0
	add r7, r5, r0
_0219ED6A:
	ldr r1, _0219EDE0 ; =0x0219FA8B
	ldrh r3, [r5]
	ldrb r1, [r1, r4]
	ldr r0, [sp]
	add r2, sp, #4
	bl sub_0204B37C
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r2, #1
	ldr r1, [r0, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r1, r4, #8
	add r1, r7, r1
	lsl r2, r2, #8
	blx MI_CpuCopy8
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219ED6A
	ldr r0, [sp]
	bl GFL_ArcToolFree
	ldr r0, _0219EDE4 ; =0x00000868
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #4
	mov r2, #0x10
	strb r2, [r5, r1]
	mov r1, #3
	add r0, r0, #5
	strb r1, [r5, r0]
	ldr r0, _0219EDE8 ; =0x00000566
	ldr r4, _0219EDEC ; =0x00000766
	add r0, r5, r0
	add r1, r5, r4
	add r2, #0xf0
	blx MI_CpuCopy8
	mov r1, #0x1f
	mov r3, #0x1f
	mov r0, #0x1f
	add r1, #0xe1
	add r2, r5, r4
	add r3, #0xe1
	bl sub_0205FA10
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EDDC: .word 0x00000266
_0219EDE0: .word 0x0219FA8B
_0219EDE4: .word 0x00000868
_0219EDE8: .word 0x00000566
_0219EDEC: .word 0x00000766
	thumb_func_end ovy316_219ed54

	thumb_func_start sub_0219EDF0
sub_0219EDF0: ; 0x0219EDF0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EDF0

	thumb_func_start ovy316_219edf4
ovy316_219edf4: ; 0x0219EDF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _0219EEE0 ; =0x00000868
	add r4, r0, #0
	ldr r0, [r4, r1]
	mov r2, #0
	cmp r0, #1
	bne _0219EEDC
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0x10
	bne _0219EE10
	str r2, [r4, r1]
	b _0219EE1C
_0219EE10:
	add r0, r1, #4
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #4
	strb r2, [r4, r0]
	mov r2, #1
_0219EE1C:
	cmp r2, #0
	beq _0219EEDC
	ldr r0, _0219EEE4 ; =0x0000086C
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #8]
	add r6, sp, #0xc
_0219EE2A:
	ldr r1, [sp, #8]
	ldr r0, _0219EEE4 ; =0x0000086C
	ldrb r1, [r4, r1]
	ldrb r5, [r4, r0]
	add r3, sp, #0x10
	lsl r1, r1, #8
	lsl r0, r7, #1
	add r1, r4, r1
	add r2, r0, r1
	ldr r1, _0219EEE8 ; =0x00000266
	add r3, #2
	ldrh r1, [r2, r1]
	add r2, sp, #0x14
	str r1, [sp, #4]
	add r1, r4, r0
	ldr r0, _0219EEEC ; =0x00000666
	str r1, [sp]
	ldrh r0, [r1, r0]
	add r1, sp, #0x14
	add r1, #2
	bl ovy316_219ead0
	add r2, sp, #0xc
	ldr r0, [sp, #4]
	add r1, sp, #0x10
	add r2, #2
	add r3, sp, #0xc
	bl ovy316_219ead0
	mov r0, #0x10
	sub r2, r0, r5
	ldrh r0, [r6, #6]
	add r3, r0, #0
	ldrh r0, [r6]
	mul r3, r2
	add r1, r0, #0
	mul r1, r5
	add r0, r3, r1
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r0, r1, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #6
	mov ip, r0
	ldrh r0, [r6, #0xa]
	add r3, r0, #0
	ldrh r0, [r6, #4]
	mul r3, r2
	add r1, r0, #0
	mul r1, r5
	add r0, r3, r1
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	lsl r0, r1, #0xc
	ldrh r1, [r6, #8]
	lsr r0, r0, #0x10
	mul r2, r1
	ldrh r1, [r6, #2]
	add r3, r1, #0
	mul r3, r5
	add r1, r2, r3
	asr r2, r1, #3
	lsr r2, r2, #0x1c
	add r2, r1, r2
	asr r1, r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0xb
	orr r1, r0
	mov r0, ip
	add r2, r0, #0
	orr r2, r1
	ldr r1, [sp]
	ldr r0, _0219EEF0 ; =0x00000766
	strh r2, [r1, r0]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #0x80
	blo _0219EE2A
	mov r1, #0x1f
	ldr r2, _0219EEF0 ; =0x00000766
	add r1, #0xe1
	mov r0, #0x1f
	add r2, r4, r2
	add r3, r1, #0
	bl sub_0205FA10
_0219EEDC:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EEE0: .word 0x00000868
_0219EEE4: .word 0x0000086C
_0219EEE8: .word 0x00000266
_0219EEEC: .word 0x00000666
_0219EEF0: .word 0x00000766
	thumb_func_end ovy316_219edf4

	thumb_func_start ovy316_219eef4
ovy316_219eef4: ; 0x0219EEF4
	push {r4, lr}
	add r4, r0, #0
	bl ovy316_219eaf0
	add r0, r4, #0
	bl ovy316_219ed54
	pop {r4, pc}
	thumb_func_end ovy316_219eef4

	thumb_func_start ovy316_219ef04
ovy316_219ef04: ; 0x0219EF04
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219EBDC
	add r0, r4, #0
	bl sub_0219EDF0
	pop {r4, pc}
	thumb_func_end ovy316_219ef04

	thumb_func_start ovy316_219ef14
ovy316_219ef14: ; 0x0219EF14
	push {r4, lr}
	add r4, r0, #0
	bl ovy316_219ebe0
	add r0, r4, #0
	bl ovy316_219edf4
	pop {r4, pc}
	thumb_func_end ovy316_219ef14

	thumb_func_start sub_0219EF24
sub_0219EF24: ; 0x0219EF24
	cmp r2, #0
	beq _0219EF2E
	cmp r2, #2
	beq _0219EF40
	bx lr
_0219EF2E:
	mov r2, #0x94
	add r0, #0xd0
	mul r2, r1
	ldrh r1, [r0, r2]
	cmp r1, #0
	beq _0219EF50
	mov r1, #3
	strh r1, [r0, r2]
	bx lr
_0219EF40:
	mov r2, #0x94
	add r0, #0xd0
	mul r2, r1
	ldrh r1, [r0, r2]
	cmp r1, #2
	beq _0219EF50
	mov r1, #1
	strh r1, [r0, r2]
_0219EF50:
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EF24

	thumb_func_start ovy316_219ef54
ovy316_219ef54: ; 0x0219EF54
	push {r3, r4, r5, lr}
	ldr r4, _0219EF80 ; =0x0000086D
	add r3, r0, #0
	ldrb r0, [r3, r4]
	cmp r0, r1
	beq _0219EF7C
	mov r2, #1
	sub r0, r4, #5
	str r2, [r3, r0]
	mov r5, #0
	sub r0, r4, #1
	strb r5, [r3, r0]
	strb r1, [r3, r4]
	ldr r0, _0219EF84 ; =0x00000766
	ldr r1, _0219EF88 ; =0x00000666
	add r0, r3, r0
	add r1, r3, r1
	add r2, #0xff
	blx MI_CpuCopy8
_0219EF7C:
	pop {r3, r4, r5, pc}
	nop
_0219EF80: .word 0x0000086D
_0219EF84: .word 0x00000766
_0219EF88: .word 0x00000666
	thumb_func_end ovy316_219ef54
_0219EF8C:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy316_219ef90
ovy316_219ef90: ; 0x0219EF90
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	mov r0, #1
	bl ovy316_219f778
	str r0, [r4, #0x14]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r5, #0
	bl GFL_FontCreate
	str r0, [r4, #0x18]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x1c]
	mov r0, #0
	mov r1, #2
	bl sub_02044BD8
	mov r0, #3
	mov r1, #3
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	mov r0, #4
	mov r1, #3
	bl sub_02044BD8
	mov r0, #5
	mov r1, #2
	bl sub_02044BD8
	mov r0, #6
	mov r1, #1
	bl sub_02044BD8
	mov r0, #7
	mov r1, #0
	bl sub_02044BD8
	ldr r0, _0219F024 ; =ovy316_219d01c
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x20]
	add r0, r4, #0
	str r5, [r4, #0x24]
	bl ovy316_219d0f0
	add r0, r4, #0
	bl ovy316_219e24c
	add r0, r4, #0
	bl ovy316_219e49c
	add r0, r4, #0
	bl ovy316_219e93c
	mov r0, #2
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F024: .word ovy316_219d01c
	thumb_func_end ovy316_219ef90

	thumb_func_start ovy316_219f028
ovy316_219f028: ; 0x0219F028
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	mov r6, #0
	bl sub_02046DF8
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	mov r0, #4
	mov r1, #0
	bl sub_02045350
	add r0, r5, #0
	bl ovy316_219d114
	add r0, r5, #0
	bl ovy316_219d534
	add r0, r5, #0
	bl ovy316_219e11c
	add r0, r5, #0
	bl ovy316_219e30c
	add r0, r5, #0
	bl ovy316_219e41c
	add r0, r5, #0
	bl ovy316_219eef4
	ldr r0, [r5, #0x24]
	mov r4, #8
	add r1, r0, #0
	orr r1, r4
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #0x24]
	ldr r0, _0219F09C ; =0x04000050
	mov r1, #3
	mov r2, #0x3f
	mov r3, #8
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _0219F0A0 ; =0x04001050
	mov r1, #4
	mov r2, #0x3f
	mov r3, #8
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	str r6, [r5, #0x10]
	mov r0, #3
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219F09C: .word 0x04000050
_0219F0A0: .word 0x04001050
	thumb_func_end ovy316_219f028

	thumb_func_start ovy316_219f0a4
ovy316_219f0a4: ; 0x0219F0A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x10]
	cmp r1, #0x10
	blo _0219F0B4
	bl ovy316_219d224
_0219F0B4:
	add r0, r5, #0
	bl ovy316_219d4e4
	add r0, r5, #0
	bl ovy316_219da4c
	add r0, r5, #0
	bl ovy316_219ef14
	ldr r0, [r4]
	cmp r0, #0
	beq _0219F0D2
	cmp r0, #1
	beq _0219F0E6
	b _0219F0F6
_0219F0D2:
	mov r0, #4
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F0F6
_0219F0E6:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219F0F6
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0219F0F6:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ovy316_219f0a4

	thumb_func_start ovy316_219f100
ovy316_219f100: ; 0x0219F100
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0
	bl ovy316_219d4e4
	add r0, r4, #0
	bl ovy316_219da4c
	add r0, r4, #0
	bl ovy316_219e068
	add r0, r4, #0
	bl ovy316_219ef14
	ldr r0, [r5]
	cmp r0, #0x10
	bhi _0219F1A2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F132: ; jump table
	.short _0219F154 - _0219F132 - 2 ; case 0
	.short _0219F1B0 - _0219F132 - 2 ; case 1
	.short _0219F1DA - _0219F132 - 2 ; case 2
	.short _0219F1FA - _0219F132 - 2 ; case 3
	.short _0219F270 - _0219F132 - 2 ; case 4
	.short _0219F3C8 - _0219F132 - 2 ; case 5
	.short _0219F3D2 - _0219F132 - 2 ; case 6
	.short _0219F470 - _0219F132 - 2 ; case 7
	.short _0219F492 - _0219F132 - 2 ; case 8
	.short _0219F4AC - _0219F132 - 2 ; case 9
	.short _0219F4CA - _0219F132 - 2 ; case 10
	.short _0219F4DA - _0219F132 - 2 ; case 11
	.short _0219F520 - _0219F132 - 2 ; case 12
	.short _0219F532 - _0219F132 - 2 ; case 13
	.short _0219F546 - _0219F132 - 2 ; case 14
	.short _0219F55C - _0219F132 - 2 ; case 15
	.short _0219F57A - _0219F132 - 2 ; case 16
_0219F154:
	add r0, r4, #0
	bl ovy316_219d224
	ldr r0, [r4, #0x4c]
	cmp r0, #0xa0
	bne _0219F17C
	ldr r7, _0219F438 ; =0x000008CF
	add r0, r7, #0
	bl GFL_SndSEPlay
	add r0, r7, #1
	bl GFL_SndSEPlay
	mov r0, #8
	mov r1, #0x10
	add r2, r6, #0
	mov r3, #2
	bl sub_0204E060
	b _0219F186
_0219F17C:
	cmp r0, #0xca
	bne _0219F186
	ldr r0, _0219F43C ; =0x000008D1
	bl GFL_SndSEPlay
_0219F186:
	ldr r1, [r4, #0x4c]
	cmp r1, #0xa2
	bne _0219F1A4
	mov r1, #1
	add r0, r1, #0
	mov r2, #0x44
_0219F192:
	add r3, r1, #0
	ldr r5, [r4, #0x38]
	mul r3, r2
	add r3, r5, r3
	add r1, r1, #1
	str r0, [r3, #0x40]
	cmp r1, #3
	ble _0219F192
_0219F1A2:
	b _0219F588
_0219F1A4:
	ldr r0, _0219F440 ; =0x00000116
	cmp r1, r0
	bne _0219F1EE
	mov r0, #1
_0219F1AC:
	str r0, [r5]
	b _0219F588
_0219F1B0:
	bl sub_0204E0E0
	cmp r0, #1
	bne _0219F1BE
	add sp, #0x10
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0219F1BE:
	ldr r1, [r4, #0x24]
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0x24]
	add r0, r4, #0
	mov r1, #0x26
	bl ovy316_219e65c
	mov r0, #2
	str r0, [r5]
	add r0, r4, #0
	bl ovy316_219e010
	b _0219F588
_0219F1DA:
	add r0, r4, #0
	bl ovy316_219e748
	cmp r0, #0
	beq _0219F1EE
	add r0, r4, #0
	bl sub_0219E054
	cmp r0, #0
	bne _0219F1F0
_0219F1EE:
	b _0219F588
_0219F1F0:
	mov r0, #3
	str r0, [r5]
	mov r0, #1
	str r0, [r4, #8]
	b _0219F588
_0219F1FA:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219F24A
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #4
	bne _0219F20E
	mov r6, #1
	str r6, [r4, r0]
_0219F20E:
	add r0, r4, #0
	mov r1, #1
	bl ovy316_219e1f0
	ldr r0, _0219F444 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy316_219e218
	mov r7, #0x89
	lsl r7, r7, #2
	ldr r1, [r4, r7]
	add r0, r4, #0
	bl ovy316_219d428
	ldr r1, [r4, r7]
	add r0, r4, #0
	bl ovy316_219dfb4
	ldr r1, [r4, r7]
	cmp r1, #4
	bne _0219F23E
	mov r1, #3
_0219F23E:
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy316_219ef54
	b _0219F26C
_0219F24A:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy316_219e1f0
	add r0, r4, #0
	mov r1, #4
	bl ovy316_219d428
	add r0, r4, #0
	mov r1, #4
	bl ovy316_219dfb4
	add r0, r4, #0
	mov r1, #3
	bl ovy316_219ef54
	mov r6, #1
_0219F26C:
	mov r0, #4
	b _0219F1AC
_0219F270:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219F372
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219F30A
	add r7, r6, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219F29E
	ldr r0, _0219F448 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r6, #0
	bl ovy316_219e1f0
	mov r0, #8
	str r0, [r5]
	b _0219F2D0
_0219F29E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219F2B6
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _0219F2D0
	sub r1, r1, #1
	b _0219F2CC
_0219F2B6:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219F2D0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #2
	bge _0219F2D0
	add r1, r1, #1
_0219F2CC:
	str r1, [r4, r0]
	mov r7, #1
_0219F2D0:
	cmp r7, #0
	beq _0219F320
	ldr r0, _0219F444 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy316_219e218
	mov r5, #0x89
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy316_219d428
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy316_219dfb4
	ldr r1, [r4, r5]
	cmp r1, #4
	bne _0219F2FC
	mov r1, #3
_0219F2FC:
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy316_219ef54
	mov r6, #1
	b _0219F588
_0219F30A:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219F320
	ldr r0, _0219F44C ; =0x0219FAE0
	bl sub_0203DA0C
	add r7, r0, #0
	bmi _0219F320
	cmp r7, #2
	ble _0219F322
_0219F320:
	b _0219F588
_0219F322:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r7
	beq _0219F32E
	mov r6, #1
_0219F32E:
	ldr r0, _0219F444 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy316_219e1f0
	mov r0, #0x89
	lsl r0, r0, #2
	str r7, [r4, r0]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy316_219d428
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy316_219dfb4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #4
	bne _0219F362
	mov r1, #3
_0219F362:
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy316_219ef54
	mov r0, #1
	str r0, [r4, #8]
	b _0219F3C4
_0219F372:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219F37E
	str r6, [r4, #8]
	b _0219F542
_0219F37E:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219F480
	ldr r0, _0219F44C ; =0x0219FAE0
	bl sub_0203DA0C
	add r7, r0, #0
	bmi _0219F480
	cmp r7, #2
	bgt _0219F480
	ldr r0, _0219F444 ; =0x00000548
	bl GFL_SndSEPlay
	mov r6, #0x89
	lsl r6, r6, #2
	str r7, [r4, r6]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy316_219d428
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy316_219dfb4
	ldr r1, [r4, r6]
	cmp r1, #4
	bne _0219F3B8
	mov r1, #3
_0219F3B8:
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy316_219ef54
	mov r6, #1
_0219F3C4:
	mov r0, #5
	b _0219F1AC
_0219F3C8:
	add r0, r4, #0
	bl ovy316_219e96c
	mov r0, #6
	b _0219F1AC
_0219F3D2:
	add r0, r4, #0
	bl sub_0219E9C4
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219F3FC
	str r6, [r4, #8]
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219F3EE
	b _0219F410
_0219F3EE:
	add r0, r4, #0
	bl sub_0219E9B4
	mov r0, #2
	bl sub_02045B7C
	b _0219F542
_0219F3FC:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219F480
	ldr r0, _0219F44C ; =0x0219FAE0
	bl sub_0203DA0C
	add r7, r0, #0
	cmp r7, #3
	bne _0219F420
_0219F410:
	ldr r0, _0219F448 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy316_219e9d4
	mov r0, #7
	b _0219F1AC
_0219F420:
	cmp r7, #0
	blt _0219F480
	cmp r7, #2
	bgt _0219F480
	mov r5, #0x89
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, r7
	beq _0219F480
	ldr r0, _0219F444 ; =0x00000548
	b _0219F450
	nop
_0219F438: .word 0x000008CF
_0219F43C: .word 0x000008D1
_0219F440: .word 0x00000116
_0219F444: .word 0x00000548
_0219F448: .word 0x0000054C
_0219F44C: .word 0x0219FAE0
_0219F450:
	bl GFL_SndSEPlay
	str r7, [r4, r5]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy316_219d428
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy316_219dfb4
	ldr r1, [r4, r5]
	cmp r1, #4
	bne _0219F46E
	mov r1, #3
_0219F46E:
	b _0219F2FC
_0219F470:
	add r0, r4, #0
	bl sub_0219E9C4
	add r0, r4, #0
	bl sub_0219E9F0
	cmp r0, #0
	bne _0219F482
_0219F480:
	b _0219F588
_0219F482:
	add r0, r4, #0
	bl sub_0219E9B4
	mov r0, #2
	bl sub_02045B7C
	mov r0, #8
	b _0219F1AC
_0219F492:
	add r0, r4, #0
	mov r1, #0x27
	bl ovy316_219e65c
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ovy316_219d27c
	mov r0, #9
	b _0219F1AC
_0219F4AC:
	add r0, r4, #0
	bl ovy316_219d318
	add r0, r4, #0
	bl ovy316_219e748
	cmp r0, #0
	beq _0219F588
	add r0, r4, #0
	bl ovy316_219d2e4
	cmp r0, #0
	beq _0219F588
	mov r0, #0xa
	b _0219F1AC
_0219F4CA:
	ldr r0, [r4, #8]
	bl sub_0203D564
	add r0, r4, #0
	bl ovy316_219ea00
	mov r0, #0xb
	b _0219F1AC
_0219F4DA:
	add r0, r4, #0
	bl sub_0219EA98
	add r0, r4, #0
	bl sub_0219EAA8
	cmp r0, #0
	beq _0219F588
	add r0, r4, #0
	bl ovy316_219eab8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219EA88
	bl sub_0203D554
	str r0, [r4, #8]
	cmp r7, #0
	beq _0219F514
	ldr r1, [r4, #0x24]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl ovy316_219e7cc
	mov r0, #0xe
	b _0219F1AC
_0219F514:
	add r0, r4, #0
	mov r1, #0x26
	bl ovy316_219e65c
	mov r0, #0xc
	b _0219F1AC
_0219F520:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ovy316_219d27c
	mov r0, #0xd
	b _0219F1AC
_0219F532:
	add r0, r4, #0
	bl ovy316_219d318
	add r0, r4, #0
	bl ovy316_219d2e4
	cmp r0, #0
	beq _0219F588
_0219F542:
	mov r0, #3
	b _0219F1AC
_0219F546:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy316_219d398
	ldr r0, _0219F5EC ; =0x000007B7
	bl GFL_SndSEPlay
	mov r0, #0xf
	b _0219F1AC
_0219F55C:
	add r0, r4, #0
	bl ovy316_219d3f0
	ldr r2, [r4, #0x40]
	mov r1, #0xa
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0219F5F0 ; =0x0219FB18
	ldr r0, [r4, #0x48]
	ldrh r1, [r1, r3]
	sub r1, r1, #2
	cmp r0, r1
	bne _0219F588
	mov r0, #0x10
	b _0219F1AC
_0219F57A:
	add r0, r4, #0
	bl ovy316_219d3f0
	add sp, #0x10
	str r6, [r4, #0x10]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219F588:
	cmp r6, #0
	beq _0219F59C
	ldr r1, [r4, #0x24]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl ovy316_219e90c
	b _0219F5D6
_0219F59C:
	mov r5, #0x8b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219F5D6
	ldr r1, [r4, #0x24]
	mov r0, #0x10
	orr r0, r1
	add r1, r5, #0
	str r0, [r4, #0x24]
	sub r1, #8
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy316_219e824
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	sub r5, #8
	ldr r0, [r4, r5]
	mov r3, #0
	lsl r2, r0, #1
	ldr r0, _0219F5F4 ; =0x0219FA94
	ldrh r0, [r0, r2]
	mov r2, #0x40
	bl sub_020069F4
_0219F5D6:
	mov r0, #0x8b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F5EC: .word 0x000007B7
_0219F5F0: .word 0x0219FB18
_0219F5F4: .word 0x0219FA94
	thumb_func_end ovy316_219f100

	thumb_func_start ovy316_219f5f8
ovy316_219f5f8: ; 0x0219F5F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy316_219d3f0
	add r0, r5, #0
	bl ovy316_219d4e4
	add r0, r5, #0
	bl ovy316_219da4c
	add r0, r5, #0
	bl ovy316_219ef14
	ldr r0, [r4]
	cmp r0, #0
	beq _0219F620
	cmp r0, #1
	beq _0219F634
	b _0219F644
_0219F620:
	mov r0, #0xc
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F644
_0219F634:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219F644
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #6
	pop {r3, r4, r5, pc}
_0219F644:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r0, #5
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy316_219f5f8

	thumb_func_start ovy316_219f650
ovy316_219f650: ; 0x0219F650
	push {r3, r4, r5, lr}
	ldr r1, _0219F688 ; =0x04000050
	mov r4, #0
	strh r4, [r1]
	ldr r1, _0219F68C ; =0x04001050
	add r5, r0, #0
	strh r4, [r1]
	bl ovy316_219ef04
	add r0, r5, #0
	bl sub_0219E498
	add r0, r5, #0
	bl ovy316_219e404
	add r0, r5, #0
	bl ovy316_219e1c4
	add r0, r5, #0
	bl ovy316_219d7e8
	add r0, r5, #0
	bl ovy316_219d204
	str r4, [r5, #0x10]
	mov r0, #7
	pop {r3, r4, r5, pc}
	nop
_0219F688: .word 0x04000050
_0219F68C: .word 0x04001050
	thumb_func_end ovy316_219f650

	thumb_func_start ovy316_219f690
ovy316_219f690: ; 0x0219F690
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219E95C
	add r0, r4, #0
	bl ovy316_219e578
	add r0, r4, #0
	bl sub_0219E308
	add r0, r4, #0
	bl sub_0219D108
	ldr r0, [r4, #0x20]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x1c]
	bl sub_02021C44
	ldr r0, [r4, #0x1c]
	bl sub_02021A18
	ldr r0, [r4, #0x18]
	bl sub_02022DA8
	ldr r0, [r4, #0x14]
	bl ovy316_219f820
	mov r0, #8
	pop {r4, pc}
	thumb_func_end ovy316_219f690
_0219F6CC:
	.byte 0x08, 0x20, 0x70, 0x47

	thumb_func_start ovy316_219f6d0
ovy316_219f6d0: ; 0x0219F6D0
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _0219F760 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219F764 ; =0xFFFFCFFD
	mov r3, #0
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	mov r4, #0
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r5, #2
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0219F768 ; =0x0000CFFB
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r5, #2
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	add r1, r5, #2
	and r2, r1
	mov r1, #0x20
	orr r1, r2
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
	ldr r1, _0219F76C ; =0xBFFF0000
	ldr r0, _0219F770 ; =0x04000580
	str r1, [r0]
	ldr r5, _0219F774 ; =0x0219FC94
_0219F744:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219F744
	mov r0, #0
	mov r1, #1
	bl sub_02049214
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F760: .word 0x04000008
_0219F764: .word 0xFFFFCFFD
_0219F768: .word 0x0000CFFB
_0219F76C: .word 0xBFFF0000
_0219F770: .word 0x04000580
_0219F774: .word 0x0219FC94
	thumb_func_end ovy316_219f6d0

	thumb_func_start ovy316_219f778
ovy316_219f778: ; 0x0219F778
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219F804 ; =0x000001D1
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219F808 ; =0x0219FE08
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219F80C ; =0x04000050
	ldr r0, _0219F810 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219F814 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219F818 ; =0x0219FCB4
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy316_219f8d4
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy316_219f978
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy316_219f9e8
	ldr r0, _0219F81C ; =ovy316_219f8c0
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F804: .word 0x000001D1
_0219F808: .word 0x0219FE08
_0219F80C: .word 0x04000050
_0219F810: .word 0x04001050
_0219F814: .word 0xFFFF1FFF
_0219F818: .word 0x0219FCB4
_0219F81C: .word ovy316_219f8c0
	thumb_func_end ovy316_219f778

	thumb_func_start ovy316_219f820
ovy316_219f820: ; 0x0219F820
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy316_219fa54
	add r0, r4, #4
	bl ovy316_219f9b8
	add r0, r4, #0
	bl ovy316_219f934
	bl sub_020232D8
	ldr r5, _0219F870 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219F874 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219F878 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_0219F870: .word 0x04000050
_0219F874: .word 0x04001050
_0219F878: .word 0xFFFF1FFF
	thumb_func_end ovy316_219f820

	thumb_func_start ovy316_219f87c
ovy316_219f87c: ; 0x0219F87C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219F9D4
	add r0, r4, #0
	bl sub_0219F96C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219f87c

	thumb_func_start sub_0219F890
sub_0219F890: ; 0x0219F890
	ldr r3, _0219F898 ; =ovy316_219fa64
	add r0, #8
	bx r3
	nop
_0219F898: .word ovy316_219fa64
	thumb_func_end sub_0219F890

	thumb_func_start sub_0219F89C
sub_0219F89C: ; 0x0219F89C
	ldr r3, _0219F8A4 ; =sub_0219FA78
	add r0, #8
	bx r3
	nop
_0219F8A4: .word sub_0219FA78
	thumb_func_end sub_0219F89C

	thumb_func_start sub_0219F8A8
sub_0219F8A8: ; 0x0219F8A8
	ldr r3, _0219F8B0 ; =sub_0219F9E4
	add r0, r0, #4
	bx r3
	nop
_0219F8B0: .word sub_0219F9E4
	thumb_func_end sub_0219F8A8

	thumb_func_start sub_0219F8B4
sub_0219F8B4: ; 0x0219F8B4
	ldr r3, _0219F8BC ; =sub_0219FA80
	add r0, #8
	bx r3
	nop
_0219F8BC: .word sub_0219FA80
	thumb_func_end sub_0219F8B4

	thumb_func_start ovy316_219f8c0
ovy316_219f8c0: ; 0x0219F8C0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219F970
	add r0, r4, #4
	bl sub_0219F9DC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219f8c0

	thumb_func_start ovy316_219f8d4
ovy316_219f8d4: ; 0x0219F8D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl BmpWin_InitAllocator
	ldr r0, _0219F92C ; =0x0219FC68
	bl sub_02044710
	ldr r7, _0219F930 ; =0x0219FCE4
_0219F8F6:
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
	cmp r4, #6
	blo _0219F8F6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F92C: .word 0x0219FC68
_0219F930: .word 0x0219FCE4
	thumb_func_end ovy316_219f8d4

	thumb_func_start ovy316_219f934
ovy316_219f934: ; 0x0219F934
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219F968 ; =0x0219FCE4
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219F93E:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #6
	blo _0219F93E
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F968: .word 0x0219FCE4
	thumb_func_end ovy316_219f934

	thumb_func_start sub_0219F96C
sub_0219F96C: ; 0x0219F96C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F96C

	thumb_func_start sub_0219F970
sub_0219F970: ; 0x0219F970
	ldr r3, _0219F974 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219F974: .word sub_02045A5C
	thumb_func_end sub_0219F970

	thumb_func_start ovy316_219f978
ovy316_219f978: ; 0x0219F978
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219F9B4 ; =0x0219FC78
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F9B4: .word 0x0219FC78
	thumb_func_end ovy316_219f978

	thumb_func_start ovy316_219f9b8
ovy316_219f9b8: ; 0x0219F9B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy316_219f9b8

	thumb_func_start sub_0219F9D4
sub_0219F9D4: ; 0x0219F9D4
	ldr r3, _0219F9D8 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219F9D8: .word sub_0204B794
	thumb_func_end sub_0219F9D4

	thumb_func_start sub_0219F9DC
sub_0219F9DC: ; 0x0219F9DC
	ldr r3, _0219F9E0 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219F9E0: .word sub_0204B7C8
	thumb_func_end sub_0219F9DC

	thumb_func_start sub_0219F9E4
sub_0219F9E4: ; 0x0219F9E4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219F9E4

	thumb_func_start ovy316_219f9e8
ovy316_219f9e8: ; 0x0219F9E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r7, #1
	lsl r7, r7, #0xc
	add r5, r0, #0
	add r4, r1, #0
	str r7, [sp]
	ldr r0, _0219FA3C ; =ovy316_219f6d0
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r6, #0
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	str r6, [sp]
	mov r0, #1
	str r7, [sp, #4]
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	ldr r0, _0219FA40 ; =0x0219FC50
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219FA44 ; =0x0219FC44
	ldr r3, _0219FA48 ; =0x020955BC
	mov r1, #0x1c
	mov r2, #0x1e
	str r0, [sp, #0x14]
	ldr r0, _0219FA4C ; =0x0219FC5C
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _0219FA50 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FA3C: .word ovy316_219f6d0
_0219FA40: .word 0x0219FC50
_0219FA44: .word 0x0219FC44
_0219FA48: .word 0x020955BC
_0219FA4C: .word 0x0219FC5C
_0219FA50: .word 0x00001555
	thumb_func_end ovy316_219f9e8

	thumb_func_start ovy316_219fa54
ovy316_219fa54: ; 0x0219FA54
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy316_219fa54

	thumb_func_start ovy316_219fa64
ovy316_219fa64: ; 0x0219FA64
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy316_219fa64

	thumb_func_start sub_0219FA78
sub_0219FA78: ; 0x0219FA78
	ldr r3, _0219FA7C ; =sub_02049AA0
	bx r3
	.align 2, 0
_0219FA7C: .word sub_02049AA0
	thumb_func_end sub_0219FA78

	thumb_func_start sub_0219FA80
sub_0219FA80: ; 0x0219FA80
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219FA80
_0219FA84:
	.byte 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x02, 0x09, 0x08, 0x0A, 0x07, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0xEF, 0x01, 0xF2, 0x01, 0xF5, 0x01, 0x2A, 0x1D, 0x80, 0x1D, 0xD3, 0x1D
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x15, 0x19, 0x01, 0x0D, 0x02, 0x16, 0x1A, 0x03, 0x0E, 0x04, 0x17, 0x1B, 0x05, 0x00
	.byte 0xF0, 0xFB, 0x19, 0x02, 0x07, 0x00, 0x00, 0x00, 0xB0, 0xFB, 0x19, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xFE, 0x3C, 0x5A, 0x1B, 0xFE, 0x80, 0x5A, 0x1B, 0xFE, 0xC8, 0x5A, 0x1B, 0xA8, 0xBF, 0x48, 0xB7
	.byte 0xFF, 0x00, 0x00, 0x00, 0x02, 0x04, 0x05, 0x18, 0x0E, 0x0E, 0x01, 0x00, 0x00, 0x02, 0x01, 0x13
	.byte 0x1E, 0x02, 0x0E, 0x01, 0x00, 0x00, 0x07, 0x01, 0x12, 0x1E, 0x04, 0x01, 0x01, 0x00, 0x00, 0x00
	.byte 0x54, 0x01, 0x66, 0x01, 0xB8, 0x01, 0x2E, 0x02, 0xF4, 0x01, 0x68, 0x01, 0x7A, 0x01, 0x30, 0x02
	.byte 0xA6, 0x02, 0x6C, 0x02, 0x7C, 0x01, 0x8E, 0x01, 0xA8, 0x02, 0x1E, 0x03, 0xE4, 0x02, 0x00, 0x00
	.byte 0x9A, 0xB9, 0xFF, 0xFF, 0xCD, 0xC4, 0x01, 0x00, 0x9A, 0xD9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCD, 0xC4, 0x01, 0x00, 0x9A, 0xD9, 0x00, 0x00, 0x66, 0x46, 0x00, 0x00, 0xCD, 0xC4, 0x01, 0x00
	.byte 0x9A, 0xD9, 0x00, 0x00, 0x8D, 0xEF, 0x19, 0x02, 0x91, 0xEF, 0x19, 0x02, 0x29, 0xF0, 0x19, 0x02
	.byte 0xA5, 0xF0, 0x19, 0x02, 0x01, 0xF1, 0x19, 0x02, 0xF9, 0xF5, 0x19, 0x02, 0x51, 0xF6, 0x19, 0x02
	.byte 0x91, 0xF6, 0x19, 0x02, 0xCD, 0xF6, 0x19, 0x02, 0x35, 0x49, 0x5A, 0x53, 0x80, 0x5E, 0x08, 0x0C
	.byte 0x10, 0x08, 0x04, 0x04, 0x20, 0x20, 0x80, 0x44, 0x80, 0x51, 0x80, 0x5E, 0x08, 0x0C, 0x10, 0x08
	.byte 0x04, 0x04, 0x20, 0x20, 0xCA, 0x49, 0xA5, 0x53, 0x80, 0x5E, 0x08, 0x0C, 0x10, 0x08, 0x04, 0x04
	.byte 0x20, 0x20, 0x00, 0x00, 0xE9, 0xCE, 0x19, 0x02, 0xBD, 0xCF, 0x19, 0x02, 0x55, 0xCF, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xFA, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xA0, 0xFA, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xA0, 0xFA, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xA0, 0xFA, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xCA, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCA, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0xCD, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x73, 0x65, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x70, 0x73, 0x65, 0x6C, 0x5F, 0x67, 0x72, 0x61
	.byte 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219FA84
