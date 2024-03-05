	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_020700A8
sub_020700A8: ; 0x020700A8
	sub r0, #9
	mov r3, #0
	cmp r0, #0x1a
	bhi _020700BE
	mov r2, #1
	lsl r2, r0
	ldr r0, _020700C4 ; =0x0400030F
	mov r1, #1
	tst r0, r2
	beq _020700BE
	add r3, r1, #0
_020700BE:
	add r0, r3, #0
	bx lr
	nop
_020700C4: .word 0x0400030F
	thumb_func_end sub_020700A8

	thumb_func_start sub_020700C8
sub_020700C8: ; 0x020700C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	ldr r4, [r5, #8]
	str r0, [sp]
	cmp r4, #0
	beq _020700FA
	ldr r0, [r4, #8]
	add r1, r4, #0
	add r1, #8
	cmp r0, #0
	beq _020700F6
_020700E4:
	cmp r0, r5
	bne _020700EE
	ldr r0, [r5]
	str r0, [r1]
	b _020700F6
_020700EE:
	add r1, r0, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _020700E4
_020700F6:
	mov r0, #0
	str r0, [r5]
_020700FA:
	ldr r0, [r5, #0xc]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl sub_020700A8
	cmp r0, #0
	bne _02070114
	cmp r4, #0
	beq _02070114
	str r7, [r4, #0x18]
	str r6, [r4, #0x1c]
_02070114:
	ldr r1, [r5, #0xc]
	mov r0, #0xcf
	bic r1, r0
	str r6, [r5, #0x14]
	str r1, [r5, #0xc]
	add r5, #0x18
	add r0, r5, #0
	bl sub_0207A89C
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020700C8

	thumb_func_start sub_02070130
sub_02070130: ; 0x02070130
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bne _0207016C
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #8
	tst r0, r1
	bne _0207015C
	add r4, r5, #0
	add r4, #0x18
	mov r6, #8
_02070150:
	add r0, r4, #0
	bl sub_0207A868
	ldr r0, [r5, #0xc]
	tst r0, r6
	beq _02070150
_0207015C:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	ldr r1, [r5, #0xc]
	mov r0, #8
	bic r1, r0
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x14]
_0207016C:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02070130

	thumb_func_start sub_02070170
sub_02070170: ; 0x02070170
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r6, r1, #0
	ldr r5, [r0, #0x24]
	cmp r6, #0x23
	blo _02070182
	b _02070358
_02070182:
	lsl r1, r6, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0207018C
	b _02070358
_0207018C:
	cmp r6, #0x22
	bls _02070192
	b _02070358
_02070192:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207019E: ; jump table
	.short _020701E4 - _0207019E - 2 ; case 0
	.short _020701F4 - _0207019E - 2 ; case 1
	.short _02070200 - _0207019E - 2 ; case 2
	.short _0207020A - _0207019E - 2 ; case 3
	.short _02070216 - _0207019E - 2 ; case 4
	.short _02070226 - _0207019E - 2 ; case 5
	.short _02070236 - _0207019E - 2 ; case 6
	.short _02070240 - _0207019E - 2 ; case 7
	.short _0207024E - _0207019E - 2 ; case 8
	.short _02070256 - _0207019E - 2 ; case 9
	.short _02070260 - _0207019E - 2 ; case 10
	.short _0207026A - _0207019E - 2 ; case 11
	.short _02070274 - _0207019E - 2 ; case 12
	.short _0207027E - _0207019E - 2 ; case 13
	.short _0207028C - _0207019E - 2 ; case 14
	.short _02070296 - _0207019E - 2 ; case 15
	.short _0207029E - _0207019E - 2 ; case 16
	.short _020702A6 - _0207019E - 2 ; case 17
	.short _020702B0 - _0207019E - 2 ; case 18
	.short _020702BA - _0207019E - 2 ; case 19
	.short _020702C0 - _0207019E - 2 ; case 20
	.short _020702CC - _0207019E - 2 ; case 21
	.short _020702D4 - _0207019E - 2 ; case 22
	.short _020702E4 - _0207019E - 2 ; case 23
	.short _020702F0 - _0207019E - 2 ; case 24
	.short _020702FC - _0207019E - 2 ; case 25
	.short _02070308 - _0207019E - 2 ; case 26
	.short _02070310 - _0207019E - 2 ; case 27
	.short _02070320 - _0207019E - 2 ; case 28
	.short _02070358 - _0207019E - 2 ; case 29
	.short _02070328 - _0207019E - 2 ; case 30
	.short _0207032E - _0207019E - 2 ; case 31
	.short _02070338 - _0207019E - 2 ; case 32
	.short _02070346 - _0207019E - 2 ; case 33
	.short _0207034E - _0207019E - 2 ; case 34
_020701E4:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldr r2, [r3]
	add r3, r3, #4
_020701EC:
	ldr r5, [r5]
_020701EE:
	blx r5
_020701F0:
	add r5, r0, #0
	b _0207035A
_020701F4:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #4]
	ldr r2, [r3]
	add r1, r4, #0
	add r3, r3, #4
_020701FE:
	b _020701EE
_02070200:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #8]
	b _020701FE
_0207020A:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0xc]
	ldr r2, [r2]
	add r1, r4, #0
_02070212:
	blx r3
	b _02070254
_02070216:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	add r3, #8
	ldr r5, [r5, #0x10]
	b _020701FE
_02070226:
	ldr r3, [r4, #0x10]
	add r1, r3, #0
	add r1, #8
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x14]
	b _020701FE
_02070236:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x18]
	b _020701FE
_02070240:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	str r3, [sp]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x1c]
	b _020701FE
_0207024E:
	ldr r2, [r5, #0x20]
	add r1, r4, #0
_02070252:
	blx r2
_02070254:
	b _020701F0
_02070256:
	ldr r1, [r5, #0x24]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02070260:
	ldr r1, [r5, #0x28]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207026A:
	ldr r1, [r5, #0x2c]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02070274:
	ldr r1, [r5, #0x30]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207027E:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #8]
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x34]
	b _020701FE
_0207028C:
	ldr r2, [r4, #0x10]
	add r1, r4, #0
	ldr r3, [r2, #4]
	ldr r5, [r5, #0x38]
	b _020701FE
_02070296:
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x3c]
	b _02070212
_0207029E:
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x40]
	b _02070212
_020702A6:
	ldr r1, [r5, #0x44]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020702B0:
	ldr r1, [r5, #0x48]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020702BA:
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0x4c]
	b _02070252
_020702C0:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x50]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702CC:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x54]
	ldmia r2!, {r1, r2}
	b _02070212
_020702D4:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x58]
	b _020701FE
_020702E4:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x5c]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702F0:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x60]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702FC:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x64]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_02070308:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x68]
	ldmia r2!, {r1, r2}
	b _02070212
_02070310:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x6c]
	b _020701FE
_02070320:
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0x70]
	ldr r1, [r1]
	b _02070252
_02070328:
	add r1, r4, #0
	ldr r2, [r5, #0x78]
	b _02070252
_0207032E:
	ldr r2, [r4, #0x10]
	add r1, r4, #0
	ldr r2, [r2]
	ldr r3, [r5, #0x7c]
	b _02070212
_02070338:
	ldr r3, [r4, #0x10]
	add r5, #0x80
	ldr r1, [r3, #8]
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	b _020701EC
_02070346:
	add r5, #0x84
	add r1, r4, #0
	ldr r2, [r5]
	b _02070252
_0207034E:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	add r5, #0x88
	b _020701EC
_02070358:
	mov r5, #4
_0207035A:
	add r0, r6, #0
	bl sub_020700A8
	cmp r0, #0
	bne _02070386
	ldr r1, [r4, #0xc]
	mov r0, #4
	tst r1, r0
	beq _02070378
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02070130
	add r5, r0, #0
	b _02070386
_02070378:
	add r0, #0xfc
	cmp r5, r0
	beq _02070386
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020700C8
_02070386:
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02070170

	thumb_func_start sub_0207038C
sub_0207038C: ; 0x0207038C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r2, [r5, #0x14]
	mov r0, #0x20
	tst r0, r2
	beq _020703D6
	mov r1, #0x20
	bic r2, r1
	ldr r0, [r5, #8]
	str r2, [r5, #0x14]
	cmp r0, #0
	beq _020703D6
_020703B0:
	ldr r2, [r0, #0xc]
	mov r1, #2
	ldr r4, [r0]
	tst r1, r2
	beq _020703BE
	mov r1, #1
	b _020703C0
_020703BE:
	mov r1, #0
_020703C0:
	cmp r1, #0
	beq _020703D0
	mov r1, #3
	bl sub_020700C8
	cmp r4, #0
	bne _020703D0
	ldr r4, [r5, #8]
_020703D0:
	add r0, r4, #0
	cmp r4, #0
	bne _020703B0
_020703D6:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #0x40
	tst r1, r0
	bne _02070456
	mov r1, #8
	tst r1, r0
	bne _02070456
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02070456
	cmp r7, #0
	beq _02070404
	mov r1, #0x10
	tst r0, r1
	bne _02070404
	mov r4, #1
	b _02070406
_02070404:
	mov r4, #0
_02070406:
	cmp r4, #0
	beq _02070412
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	orr r0, r1
	str r0, [r5, #0x14]
_02070412:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	cmp r4, #0
	beq _02070424
	ldr r0, [r5, #8]
	mov r1, #9
	bl sub_02070170
_02070424:
	blx OS_DisableInterrupts
	str r0, [sp]
	cmp r7, #0
	bne _02070432
	cmp r4, #0
	beq _0207043C
_02070432:
	ldr r6, [r5, #8]
	mov r0, #0x40
	ldr r1, [r6, #0xc]
	orr r0, r1
	str r0, [r6, #0xc]
_0207043C:
	cmp r7, #0
	beq _02070452
	ldr r1, [r6, #0xc]
	mov r0, #4
	tst r0, r1
	beq _02070452
	add r6, #0x18
	add r0, r6, #0
	bl sub_0207A89C
	mov r6, #0
_02070452:
	ldr r0, [sp]
	b _02070496
_02070456:
	cmp r7, #0
	beq _02070494
	mov r1, #0x10
	tst r0, r1
	beq _0207047A
	add r4, sp, #0xc
	add r0, r4, #0
	bl sub_02070C7C
	str r5, [sp, #0x14]
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	bic r1, r0
	str r1, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02070170
_0207047A:
	ldr r1, [r5, #0x14]
	mov r0, #0x40
	tst r0, r1
	beq _02070494
	mov r0, #0x40
	bic r1, r0
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0x14]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0207A89C
_02070494:
	ldr r0, [sp, #4]
_02070496:
	blx OS_RestoreInterrupts
	add r0, r6, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207038C

	thumb_func_start sub_020704A0
sub_020704A0: ; 0x020704A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, [r5, #8]
	beq _020704F2
	mov r7, #4
_020704AA:
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0x40
	orr r0, r1
	str r0, [r5, #0xc]
	tst r0, r7
	beq _020704C6
	add r5, #0x18
	add r0, r5, #0
	bl sub_0207A89C
	mov r5, #0
_020704C6:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	cmp r5, #0
	beq _020704F2
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02070170
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _020704F2
	add r0, r6, #0
	mov r1, #1
	bl sub_0207038C
	add r5, r0, #0
	bne _020704AA
_020704F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020704A0

	thumb_func_start sub_020704F4
sub_020704F4: ; 0x020704F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r5, #0
	str r0, [sp]
	add r4, #0x18
	mov r7, #1
	mov r6, #0x40
	b _0207050E
_02070508:
	add r0, r4, #0
	bl sub_0207A868
_0207050E:
	ldr r1, [r5, #0xc]
	add r0, r1, #0
	tst r0, r6
	bne _0207051C
	add r0, r1, #0
	tst r0, r7
	bne _02070508
_0207051C:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	ldr r1, [r5, #0xc]
	mov r0, #0x40
	tst r0, r1
	beq _02070552
	ldr r1, [r5, #0xc]
	ldr r4, [r5, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02070170
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020700C8
	add r0, r4, #0
	mov r1, #1
	bl sub_0207038C
	cmp r0, #0
	beq _02070552
	bl sub_020704A0
_02070552:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020704F4

	thumb_func_start sub_02070554
sub_02070554: ; 0x02070554
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	mov r1, #1
	add r7, r2, #0
	mov r6, #0
	ldr r4, [r5, #8]
	tst r0, r1
	bne _0207056C
	add r1, r6, #0
_0207056C:
	cmp r1, #0
	beq _02070574
	bl OS_Terminate
_02070574:
	cmp r4, #0
	bne _02070582
	mov r0, #6
	str r0, [r5, #0x14]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02070582:
	mov r0, #2
	str r0, [r5, #0x14]
	ldr r2, [r5, #0xc]
	ldr r0, _02070628 ; =0xFFFF00FF
	add r1, r5, #0
	and r0, r2
	ldr r2, [sp]
	add r1, #0xc
	lsl r2, r2, #8
	orr r2, r0
	mov r0, #1
	orr r0, r2
	mov r2, #0
	str r0, [r5, #0xc]
	str r2, [r5]
	cmp r7, #0
	beq _020705AA
	mov r2, #4
	orr r0, r2
	str r0, [r1]
_020705AA:
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	mov r0, #0x80
	tst r0, r1
	beq _020705C2
	add r0, r5, #0
	mov r1, #3
	bl sub_020700C8
	b _020705D6
_020705C2:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r0, #8
	cmp r1, #0
	beq _020705D4
_020705CC:
	add r0, r1, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _020705CC
_020705D4:
	str r5, [r0]
_020705D6:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	cmp r0, r5
	bne _020705EC
	ldr r1, [r4, #0x14]
	mov r0, #0x10
	tst r0, r1
	bne _020705EC
	mov r0, #1
	str r0, [sp, #4]
_020705EC:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	ldr r0, [r5, #0x14]
	cmp r0, #3
	beq _02070620
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_0207038C
	cmp r7, #0
	beq _02070616
	add r0, r5, #0
	bl sub_020704F4
	ldr r0, [r5, #0x14]
	mov r6, #1
	cmp r0, #0
	beq _02070620
	mov r6, #0
	b _02070620
_02070616:
	cmp r0, #0
	beq _0207061E
	bl sub_020704A0
_0207061E:
	mov r6, #1
_02070620:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02070628: .word 0xFFFF00FF
	thumb_func_end sub_02070554

	thumb_func_start sub_0207062C
sub_0207062C: ; 0x0207062C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0207067C ; =0x0214BD4C
	ldr r4, [r0]
	cmp r4, #0
	beq _02070672
_02070640:
	ldr r1, [r4, #0x14]
	mov r0, #2
	tst r0, r1
	beq _0207064C
	mov r0, #1
	b _0207064E
_0207064C:
	mov r0, #0
_0207064E:
	cmp r0, #0
	beq _0207066C
	add r0, r4, #0
	bl sub_02070A24
	add r1, r7, #0
	add r2, r5, #0
	add r6, r0, #0
	bl sub_0207F9C8
	cmp r0, #0
	bne _0207066C
	ldrsb r0, [r5, r6]
	cmp r0, #0
	beq _02070672
_0207066C:
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _02070640
_02070672:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207067C: .word 0x0214BD4C
	thumb_func_end sub_0207062C

	thumb_func_start sub_02070680
sub_02070680: ; 0x02070680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x160
	add r7, sp, #0x5c
	mov r5, #0
	add r1, sp, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_02070734
	add r4, r0, #0
	beq _020706EC
	ldr r6, _020706F4 ; =0x0214BD4C
	mov r2, #0x41
	str r4, [r6, #4]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	str r5, [r6, #0xc]
	ldr r5, _020706F8 ; =0x0214BE5C
	add r1, r7, #0
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_0207F7CC
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020706EA
	add r0, sp, #0x14
	bl sub_02070C7C
	add r0, sp, #4
	str r0, [sp, #0x24]
	ldr r0, [sp]
	mov r1, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	mov r2, #1
	str r4, [sp, #0x1c]
	str r7, [sp, #8]
	bl sub_02070554
	cmp r0, #0
	beq _020706EA
	ldr r0, [sp, #0xc]
	mov r2, #0x41
	strh r0, [r6, #8]
	add r0, r5, #0
	add r1, r7, #0
	lsl r2, r2, #2
	bl sub_0207F7CC
_020706EA:
	mov r5, #1
_020706EC:
	add r0, r5, #0
	add sp, #0x160
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020706F4: .word 0x0214BD4C
_020706F8: .word 0x0214BE5C
	thumb_func_end sub_02070680

	thumb_func_start sub_020706FC
sub_020706FC: ; 0x020706FC
	push {r4, r5}
	sub r5, r1, #1
	cmp r5, r3
	blt _02070706
	add r5, r3, #0
_02070706:
	mov r1, #0
	b _0207070E
_0207070A:
	strb r4, [r0, r1]
	add r1, r1, #1
_0207070E:
	cmp r1, r5
	bge _02070718
	ldrsb r4, [r2, r1]
	cmp r4, #0
	bne _0207070A
_02070718:
	cmp r1, r3
	bge _02070728
	ldrsb r2, [r2, r1]
	cmp r2, #0
	beq _02070728
	ldr r2, [sp, #8]
	mov r3, #1
	str r3, [r2]
_02070728:
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r1, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_020706FC

	thumb_func_start sub_02070734
sub_02070734: ; 0x02070734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02070900 ; =0x0214BD4C
	add r7, r1, #0
	mov r4, #0
	ldr r1, [r0, #4]
	str r2, [sp, #4]
	str r4, [sp, #0xc]
	cmp r1, #0
	bne _02070758
	ldr r1, [r0]
	str r1, [r0, #4]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strh r4, [r0, #0xa]
	ldr r0, _02070904 ; =0x0214BE5C
	strb r4, [r0]
_02070758:
	ldrb r0, [r5]
	cmp r0, #0x2f
	beq _02070762
	cmp r0, #0x5c
	bne _02070774
_02070762:
	ldr r0, _02070900 ; =0x0214BD4C
	add r5, r5, #1
	ldr r0, [r0, #4]
	cmp r7, #0
	str r0, [sp, #8]
	beq _0207080E
_0207076E:
	mov r0, #0
	str r0, [r7]
	b _0207080E
_02070774:
	mov r6, #0
	mov r0, #1
	mov r2, #0x20
_0207077A:
	ldrb r1, [r5, r6]
	cmp r1, #0
	beq _02070788
	cmp r1, #0x2f
	beq _02070788
	cmp r1, #0x5c
	bne _020707D6
_02070788:
	ldr r1, _02070900 ; =0x0214BD4C
	cmp r7, #0
	ldr r0, [r1, #4]
	str r0, [sp, #8]
	beq _02070796
	ldrh r0, [r1, #8]
	str r0, [r7]
_02070796:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0207080E
	ldr r0, _02070900 ; =0x0214BD4C
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0207080E
	ldr r2, _02070904 ; =0x0214BE5C
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0207080E
	mov r7, #0x41
	lsl r7, r7, #2
	add r6, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl sub_020706FC
	add r4, r4, r0
	ldr r0, [sp, #4]
	ldr r2, _02070908 ; =0x0209B508
	add r0, r0, r4
	sub r1, r7, r4
	mov r3, #1
	str r6, [sp]
	bl sub_020706FC
	add r4, r4, r0
	b _0207080E
_020707D6:
	cmp r1, #0x3a
	bne _020707FA
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207062C
	str r0, [sp, #8]
	add r0, r6, #1
	add r5, r5, r0
	ldrb r0, [r5]
	cmp r0, #0x2f
	beq _020707F2
	cmp r0, #0x5c
	bne _020707F4
_020707F2:
	add r5, r5, #1
_020707F4:
	cmp r7, #0
	beq _0207080E
	b _0207076E
_020707FA:
	eor r1, r2
	sub r1, #0xa1
	cmp r1, #0x3c
	bhs _02070806
	add r1, r0, #0
	b _02070808
_02070806:
	mov r1, #0
_02070808:
	add r3, r6, #1
	add r6, r3, r1
	b _0207077A
_0207080E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020708EE
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	bne _020708E4
_0207081C:
	ldrsb r7, [r5, r6]
	add r1, r5, r6
	cmp r7, #0
	beq _0207086A
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	mov r0, #1
	cmp r2, #0x2f
	beq _02070834
	cmp r2, #0x5c
	beq _02070834
	mov r0, #0
_02070834:
	cmp r0, #0
	bne _0207086A
	lsl r2, r7, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x20
	eor r2, r3
	sub r2, #0xa1
	mov r0, #0
	cmp r2, #0x3c
	bhs _0207085C
	mov r2, #1
	ldrsb r1, [r1, r2]
	cmp r1, #0x7f
	beq _0207085C
	sub r1, #0x40
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0xbc
	bhi _0207085C
	add r0, r2, #0
_0207085C:
	cmp r0, #0
	beq _02070864
	mov r0, #2
	b _02070866
_02070864:
	mov r0, #1
_02070866:
	add r6, r6, r0
	b _020708DE
_0207086A:
	cmp r6, #0
	beq _020708D4
	cmp r6, #1
	bne _0207087A
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	beq _020708D4
_0207087A:
	cmp r6, #2
	bne _020708A0
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	bne _020708A0
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	bne _020708A0
	cmp r4, #0
	ble _02070894
	sub r4, r4, #1
_02070894:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02070C34
	add r4, r0, #1
	b _020708D4
_020708A0:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x41
	lsl r1, r1, #2
	add r0, r0, r4
	sub r1, r1, r4
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020706FC
	add r4, r4, r0
	cmp r7, #0
	beq _020708D4
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r2, _02070908 ; =0x0209B508
	add r0, r0, r4
	sub r1, r1, r4
	mov r3, #1
	bl sub_020706FC
	add r4, r4, r0
_020708D4:
	cmp r7, #0
	beq _020708E4
	add r0, r6, #1
	add r5, r5, r0
	mov r6, #0
_020708DE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0207081C
_020708E4:
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, r4]
	bl sub_02070C50
_020708EE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020708F8
	mov r0, #0
	str r0, [sp, #8]
_020708F8:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02070900: .word 0x0214BD4C
_02070904: .word 0x0214BE5C
_02070908: .word 0x0209B508
	thumb_func_end sub_02070734

	thumb_func_start sub_0207090C
sub_0207090C: ; 0x0207090C
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0x5c
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	str r4, [r5, #0x10]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207090C

	thumb_func_start sub_02070920
sub_02070920: ; 0x02070920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0207062C
	cmp r0, #0
	bne _020709A0
	ldr r0, _020709AC ; =0x0214BD4C
	ldr r1, _020709B0 ; =0x0214BD4C
	ldr r0, [r0]
	cmp r0, #0
	beq _02070950
_02070948:
	add r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02070948
_02070950:
	str r5, [r1]
	cmp r7, #3
	bhi _02070966
	mov r0, #0
	str r0, [r5]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #1
	bl sub_0207F7CC
	b _02070998
_02070966:
	cmp r7, #0xf
	bhi _02070994
	mov r4, #0
_0207096C:
	cmp r4, #0x10
	blt _02070976
	bl OS_Terminate
	b _02070990
_02070976:
	ldr r0, _020709B4 ; =0x0214BD5C
	lsl r1, r4, #4
	add r6, r0, r1
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _02070990
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #1
	bl sub_0207F7CC
	str r6, [r5]
	b _02070998
_02070990:
	add r4, r4, #1
	b _0207096C
_02070994:
	bl OS_Terminate
_02070998:
	ldr r0, [r5, #0x14]
	mov r4, #1
	orr r0, r4
	str r0, [r5, #0x14]
_020709A0:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020709AC: .word 0x0214BD4C
_020709B0: .word 0x0214BD4C
_020709B4: .word 0x0214BD5C
	thumb_func_end sub_02070920

	thumb_func_start sub_020709B8
sub_020709B8: ; 0x020709B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02070A1C ; =0x0214BD4C
	ldr r0, [r0]
	cmp r4, r0
	bne _020709C8
	bl OS_Terminate
_020709C8:
	ldr r0, [r4]
	cmp r0, #0
	beq _02070A18
	blx OS_DisableInterrupts
	ldr r1, _02070A1C ; =0x0214BD4C
	ldr r2, _02070A20 ; =0x0214BD4C
	ldr r1, [r1]
	cmp r1, #0
	beq _020709EE
_020709DC:
	cmp r1, r4
	bne _020709E6
	ldr r1, [r1, #4]
	str r1, [r2]
	b _020709EE
_020709E6:
	add r2, r1, #4
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020709DC
_020709EE:
	mov r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _020709FC
	ldr r1, [r4]
	mov r2, #0
	strb r2, [r1]
_020709FC:
	ldr r2, [r4, #0x14]
	mov r1, #1
	mov r3, #0
	bic r2, r1
	ldr r1, _02070A1C ; =0x0214BD4C
	str r3, [r4]
	str r3, [r4, #4]
	str r2, [r4, #0x14]
	ldr r2, [r1, #4]
	cmp r2, r4
	bne _02070A14
	str r3, [r1, #4]
_02070A14:
	blx OS_RestoreInterrupts
_02070A18:
	pop {r4, pc}
	nop
_02070A1C: .word 0x0214BD4C
_02070A20: .word 0x0214BD4C
	thumb_func_end sub_020709B8

	thumb_func_start sub_02070A24
sub_02070A24: ; 0x02070A24
	mov r1, #3
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _02070A2E
	ldr r0, [r0]
_02070A2E:
	bx lr
	thumb_func_end sub_02070A24

	thumb_func_start sub_02070A30
sub_02070A30: ; 0x02070A30
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r5, sp, #0
	str r1, [r4, #0x20]
	str r2, [r4, #0x24]
	add r0, r5, #0
	bl sub_02070C7C
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_02070170
	ldr r1, [r4, #0x14]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x14]
	mov r0, #1
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070A30

	thumb_func_start sub_02070A5C
sub_02070A5C: ; 0x02070A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r1, [r5, #0x14]
	mov r0, #2
	tst r0, r1
	beq _02070A74
	mov r0, #1
	b _02070A76
_02070A74:
	mov r0, #0
_02070A76:
	cmp r0, #0
	beq _02070AC8
	add r0, r5, #0
	bl sub_02070AD4
	add r7, r0, #0
	ldr r2, [r5, #0x14]
	mov r1, #0x80
	orr r1, r2
	ldr r0, [r5, #8]
	str r1, [r5, #0x14]
	cmp r0, #0
	beq _02070AA0
	mov r6, #3
_02070A92:
	ldr r4, [r0]
	add r1, r6, #0
	bl sub_020700C8
	add r0, r4, #0
	cmp r4, #0
	bne _02070A92
_02070AA0:
	mov r0, #0
	str r0, [r5, #8]
	cmp r7, #0
	beq _02070AAE
	add r0, r5, #0
	bl sub_02070B44
_02070AAE:
	add r4, sp, #4
	add r0, r4, #0
	bl sub_02070C7C
	str r5, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_02070170
	ldr r1, [r5, #0x14]
	mov r0, #0xa2
	bic r1, r0
	str r1, [r5, #0x14]
_02070AC8:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #1
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02070A5C

	thumb_func_start sub_02070AD4
sub_02070AD4: ; 0x02070AD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r1, [r5, #0x14]
	mov r0, #8
	tst r0, r1
	beq _02070AEC
	mov r0, #1
	b _02070AEE
_02070AEC:
	mov r0, #0
_02070AEE:
	mov r7, #1
	cmp r0, #0
	beq _02070AF6
	mov r7, #0
_02070AF6:
	cmp r7, #0
	beq _02070B36
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	tst r0, r1
	bne _02070B0A
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0x14]
	b _02070B36
_02070B0A:
	mov r4, #0x40
	add r0, r1, #0
	orr r0, r4
	str r0, [r5, #0x14]
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, [r5, #0x14]
	tst r0, r4
	beq _02070B30
	add r4, r5, #0
	add r4, #0xc
	mov r6, #0x40
_02070B24:
	add r0, r4, #0
	bl sub_0207A868
	ldr r0, [r5, #0x14]
	tst r0, r6
	bne _02070B24
_02070B30:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
_02070B36:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02070AD4

	thumb_func_start sub_02070B44
sub_02070B44: ; 0x02070B44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r2, [r5, #0x14]
	mov r1, #8
	tst r1, r2
	beq _02070B58
	mov r1, #1
	b _02070B5A
_02070B58:
	mov r1, #0
_02070B5A:
	mov r4, #1
	cmp r1, #0
	beq _02070B62
	mov r4, #0
_02070B62:
	cmp r4, #0
	bne _02070B6E
	ldr r2, [r5, #0x14]
	mov r1, #8
	bic r2, r1
	str r2, [r5, #0x14]
_02070B6E:
	blx OS_RestoreInterrupts
	add r0, r5, #0
	mov r1, #1
	bl sub_0207038C
	cmp r0, #0
	beq _02070B82
	bl sub_020704A0
_02070B82:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070B44

	thumb_func_start sub_02070B88
sub_02070B88: ; 0x02070B88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	mov r0, #4
	ldr r2, [r4, #0xc]
	add r5, r1, #0
	tst r0, r2
	beq _02070BB8
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r1, [r4, #0xc]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	str r5, [r4, #0x14]
	add r4, #0x18
	add r0, r4, #0
	bl sub_0207A89C
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
_02070BB8:
	add r0, r4, #0
	bl sub_020700C8
	add r0, r6, #0
	mov r1, #1
	bl sub_0207038C
	cmp r0, #0
	beq _02070BCE
	bl sub_020704A0
_02070BCE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02070B88

	thumb_func_start sub_02070BD0
sub_02070BD0: ; 0x02070BD0
	push {r3, r4}
	sub r2, r1, #1
	mov r4, #0x20
	b _02070BDA
_02070BD8:
	sub r2, r2, #1
_02070BDA:
	cmp r2, #0
	ble _02070BEC
	add r3, r0, r2
	sub r3, r3, #1
	ldrb r3, [r3]
	eor r3, r4
	sub r3, #0xa1
	cmp r3, #0x3c
	blo _02070BD8
_02070BEC:
	sub r3, r1, #1
	sub r1, r3, r2
	mov r0, #1
	and r0, r1
	sub r0, r3, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02070BD0

	thumb_func_start sub_02070BFC
sub_02070BFC: ; 0x02070BFC
	push {r3, r4, r5, r6}
	mov r2, #0
	mov r3, #1
	mov r5, #0x20
	b _02070C1C
_02070C06:
	lsl r4, r6, #0x18
	lsr r4, r4, #0x18
	eor r4, r5
	sub r4, #0xa1
	cmp r4, #0x3c
	bhs _02070C16
	add r4, r3, #0
	b _02070C18
_02070C16:
	add r4, r2, #0
_02070C18:
	add r1, r1, #1
	add r1, r1, r4
_02070C1C:
	ldrsb r6, [r0, r1]
	cmp r6, #0
	beq _02070C2E
	lsl r4, r6, #0x18
	lsr r4, r4, #0x18
	cmp r4, #0x2f
	beq _02070C2E
	cmp r4, #0x5c
	bne _02070C06
_02070C2E:
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02070BFC

	thumb_func_start sub_02070C34
sub_02070C34: ; 0x02070C34
	push {r4, lr}
	add r4, r0, #0
_02070C38:
	add r0, r4, #0
	bl sub_02070BD0
	add r1, r0, #0
	bmi _02070C4C
	ldrb r0, [r4, r1]
	cmp r0, #0x2f
	beq _02070C4C
	cmp r0, #0x5c
	bne _02070C38
_02070C4C:
	add r0, r1, #0
	pop {r4, pc}
	thumb_func_end sub_02070C34

	thumb_func_start sub_02070C50
sub_02070C50: ; 0x02070C50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0207F8AC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02070BD0
	cmp r0, #0
	blt _02070C76
	ldrb r1, [r5, r0]
	cmp r1, #0x2f
	beq _02070C70
	cmp r1, #0x5c
	bne _02070C76
_02070C70:
	mov r1, #0
	add r4, r0, #0
	strb r1, [r5, r0]
_02070C76:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070C50

	thumb_func_start sub_02070C7C
sub_02070C7C: ; 0x02070C7C
	mov r1, #0x23
	mov r2, #0
	lsl r1, r1, #8
	orr r1, r2
	str r2, [r0, #8]
	str r2, [r0, #4]
	str r2, [r0]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_02070C7C

	thumb_func_start sub_02070C98
sub_02070C98: ; 0x02070C98
	push {r4, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, [r4, #0xc]
	mov r2, #1
	tst r1, r2
	bne _02070CAA
	mov r2, #0
_02070CAA:
	cmp r2, #0
	beq _02070CC0
	ldr r2, [r4, #0xc]
	mov r1, #2
	orr r1, r2
	str r1, [r4, #0xc]
	ldr r3, [r4, #8]
	mov r1, #0x20
	ldr r2, [r3, #0x14]
	orr r1, r2
	str r1, [r3, #0x14]
_02070CC0:
	blx OS_RestoreInterrupts
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02070C98

	thumb_func_start sub_02070CC8
sub_02070CC8: ; 0x02070CC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x174
	add r7, sp, #0x5c
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	add r1, sp, #0
	add r2, r7, #0
	str r4, [sp]
	bl sub_02070734
	add r6, r0, #0
	beq _02070D0E
	add r0, sp, #0x14
	bl sub_02070C7C
	add r0, sp, #4
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r7, [sp, #8]
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #4
	mov r2, #1
	str r6, [sp, #0x1c]
	str r4, [sp, #0x10]
	mov r7, #1
	bl sub_02070554
	cmp r0, #0
	beq _02070D0E
	str r6, [r5]
	ldr r0, [sp, #0xc]
	add r4, r7, #0
	str r0, [r5, #4]
_02070D0E:
	add r0, r4, #0
	add sp, #0x174
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02070CC8

	thumb_func_start sub_02070D14
sub_02070D14: ; 0x02070D14
	push {r3, lr}
	sub sp, #0x10
	str r1, [r0, #8]
	add r1, sp, #0
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #7
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02070554
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02070D14

	thumb_func_start sub_02070D38
sub_02070D38: ; 0x02070D38
	push {r0, r1, r2, r3}
	push {r3, lr}
	sub sp, #8
	ldr r1, [sp, #0x14]
	mov r3, #0
	ldr r2, [sp, #0x18]
	cmp r1, #0
	beq _02070D5C
	str r1, [r0, #8]
	add r1, sp, #0
	str r1, [r0, #0x10]
	str r2, [sp]
	mov r1, #6
	mov r2, #1
	str r3, [sp, #4]
	bl sub_02070554
	add r3, r0, #0
_02070D5C:
	add r0, r3, #0
	add sp, #8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02070D38

	thumb_func_start sub_02070D68
sub_02070D68: ; 0x02070D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x128
	add r5, r0, #0
	add r6, r2, #0
	mov r4, #0
	add r0, r1, #0
	add r1, sp, #0
	add r2, sp, #0x10
	str r4, [sp]
	bl sub_02070734
	add r7, r0, #0
	beq _02070DAE
	add r0, r5, #0
	bl sub_02070C7C
	add r0, sp, #4
	str r7, [r5, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp]
	str r6, [sp, #0xc]
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #1
	mov r6, #1
	bl sub_02070554
	cmp r0, #0
	beq _02070DAC
	add r4, r6, #0
	b _02070DAE
_02070DAC:
	str r4, [r5, #8]
_02070DAE:
	add r0, r4, #0
	add sp, #0x128
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02070D68

	thumb_func_start sub_02070DB4
sub_02070DB4: ; 0x02070DB4
	ldr r3, _02070DBC ; =sub_02070554
	mov r1, #8
	mov r2, #1
	bx r3
	.align 2, 0
_02070DBC: .word sub_02070554
	thumb_func_end sub_02070DB4

	thumb_func_start sub_02070DC0
sub_02070DC0: ; 0x02070DC0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r4, #0
	add r1, sp, #4
	add r5, r0, #0
	str r4, [sp, #4]
	bl sub_02071E74
	cmp r0, #0
	bne _02070DEC
	add r0, sp, #0
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #1
	str r4, [sp]
	bl sub_02070554
	cmp r0, #0
	beq _02070DEC
	ldr r0, [sp]
	str r0, [sp, #4]
_02070DEC:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070DC0

	thumb_func_start sub_02070DF4
sub_02070DF4: ; 0x02070DF4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r4, #0
	add r1, sp, #4
	add r5, r0, #0
	str r4, [sp, #4]
	bl sub_02071E9C
	cmp r0, #0
	bne _02070E20
	add r0, sp, #0
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #1
	str r4, [sp]
	bl sub_02070554
	cmp r0, #0
	beq _02070E20
	ldr r0, [sp]
	str r0, [sp, #4]
_02070E20:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070DF4

	thumb_func_start sub_02070E28
sub_02070E28: ; 0x02070E28
	push {r3, lr}
	sub sp, #8
	add r3, sp, #0
	str r3, [r0, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0xe
	mov r2, #1
	bl sub_02070554
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_02070E28

	thumb_func_start sub_02070E40
sub_02070E40: ; 0x02070E40
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r3, sp, #0
	str r3, [r5, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	mov r2, #1
	mov r4, #1
	bl sub_02070554
	cmp r0, #0
	beq _02070E5E
	b _02070E66
_02070E5E:
	ldr r0, [r5, #0x14]
	sub r2, r4, #2
	cmp r0, #6
	beq _02070E68
_02070E66:
	ldr r2, [sp, #4]
_02070E68:
	add r0, r2, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070E40

	thumb_func_start sub_02070E70
sub_02070E70: ; 0x02070E70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r3, sp, #0
	str r3, [r5, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #1
	mov r2, #1
	mov r4, #1
	bl sub_02070554
	cmp r0, #0
	beq _02070E8E
	b _02070E96
_02070E8E:
	ldr r0, [r5, #0x14]
	sub r2, r4, #2
	cmp r0, #6
	beq _02070E98
_02070E96:
	ldr r2, [sp, #4]
_02070E98:
	add r0, r2, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02070E70

	thumb_func_start sub_02070EA0
sub_02070EA0: ; 0x02070EA0
	ldr r3, _02070EA8 ; =sub_02070D68
	mov r2, #1
	bx r3
	nop
_02070EA8: .word sub_02070D68
	thumb_func_end sub_02070EA0

	thumb_func_start sub_02070EAC
sub_02070EAC: ; 0x02070EAC
	ldr r3, _02070EB0 ; =sub_02070DC0
	bx r3
	.align 2, 0
_02070EB0: .word sub_02070DC0
	thumb_func_end sub_02070EAC

	thumb_func_start sub_02070EB4
sub_02070EB4: ; 0x02070EB4
	ldr r3, _02070EB8 ; =sub_02070680
	bx r3
	.align 2, 0
_02070EB8: .word sub_02070680
	thumb_func_end sub_02070EB4

	thumb_func_start sub_02070EBC
sub_02070EBC: ; 0x02070EBC
	push {r4, lr}
	bl OS_GetBootType
	cmp r0, #2
	bne _02070ED6
	mov r2, #0
	ldr r0, _02070EF8 ; =0x0214BF60
	mvn r2, r2
	str r2, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	b _02070EE0
_02070ED6:
	ldr r0, _02070EF8 ; =0x0214BF60
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
_02070EE0:
	str r1, [r0, #0x14]
	ldr r0, _02070EFC ; =0x02094548
	ldr r4, _02070EF8 ; =0x0214BF60
	mov r1, #3
	str r0, [r4, #0x18]
	mov r0, #0x40
	str r0, [r4, #0x1c]
	ldr r0, _02070F00 ; =0x0209B50C
	bl sub_0207062C
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_02070EF8: .word 0x0214BF60
_02070EFC: .word 0x02094548
_02070F00: .word 0x0209B50C
	thumb_func_end sub_02070EBC

	thumb_func_start sub_02070F04
sub_02070F04: ; 0x02070F04
	ldr r2, [r0, #0x1c]
	mov r1, #1
	lsr r3, r2, #0x18
	tst r1, r3
	beq _02070F14
	lsl r0, r2, #8
	lsr r0, r0, #8
	bx lr
_02070F14:
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02070F04

	thumb_func_start sub_02070F18
sub_02070F18: ; 0x02070F18
	push {r4, r5, r6, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
	add r6, r5, r0
	add r0, r4, #0
	add r1, r6, #0
	blx sub_0207B0E8
	add r0, r4, #0
	add r1, r6, #0
	blx sub_0207B074
	add r0, r4, r5
	mov r1, #0
	sub r2, r6, r5
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02070F18

	thumb_func_start sub_02070F40
sub_02070F40: ; 0x02070F40
	sub sp, #8
	ldr r2, _02070F54 ; =0x0214BF60
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #4]
	str r2, [sp]
	str r2, [r0]
	str r1, [r0, #4]
	add sp, #8
	bx lr
	.align 2, 0
_02070F54: .word 0x0214BF60
	thumb_func_end sub_02070F40

	thumb_func_start sub_02070F58
sub_02070F58: ; 0x02070F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	add r4, r0, #0
	mov r0, #0
	add r7, r1, #0
	lsl r6, r2, #5
	str r0, [sp]
	ldr r5, _0207104C ; =0x0214BF68
	cmp r7, #0
	beq _02070F6E
	ldr r5, _02071050 ; =0x0214BF70
_02070F6E:
	ldr r0, _02071054 ; =0x00000158
	cmp r2, r0
	blo _02070F7C
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02071046
_02070F7C:
	ldr r0, [r5]
	cmp r0, #0
	beq _02070FC6
	ldr r0, [r5, #4]
	cmp r6, r0
	bhs _02071046
	add r0, sp, #0x5c
	bl sub_02070C7C
	ldr r0, [r5]
	add r1, r4, #0
	add r0, r0, r6
	mov r2, #0x20
	blx MI_CpuCopy8
	add r5, sp, #0xc
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x20]
	bl sub_02070F40
	add r0, sp, #0x5c
	ldmia r5!, {r1, r2}
	bl sub_02070D38
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x5c
	bl sub_02072010
	str r0, [r4, #0x24]
	add r0, sp, #0x5c
	bl sub_02070DC0
	str r0, [r4, #0x28]
	add r0, sp, #0x5c
	b _0207103E
_02070FC6:
	cmp r7, #0
	bne _02070FD4
	bl sub_0206EEE0
	add r5, r0, #0
	add r5, #0x50
	b _02070FDC
_02070FD4:
	bl sub_0206EEE0
	add r5, r0, #0
	add r5, #0x58
_02070FDC:
	ldr r0, [r5, #4]
	cmp r6, r0
	bhs _02071046
	add r0, sp, #0x14
	bl sub_02070C7C
	ldr r2, [r5]
	ldr r3, [r5, #4]
	add r1, r2, r6
	add r0, sp, #0x14
	add r2, r2, r3
	bl sub_0207236C
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x14
	add r1, r4, #0
	mov r2, #0x20
	bl sub_02070E40
	cmp r0, #0x20
	add r0, sp, #0x14
	beq _02071010
	bl sub_02070DB4
	b _02071046
_02071010:
	bl sub_02070DB4
	add r5, sp, #4
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x20]
	bl sub_02070F40
	add r0, sp, #0x14
	ldmia r5!, {r1, r2}
	bl sub_02070D38
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x14
	bl sub_02072010
	str r0, [r4, #0x24]
	add r0, sp, #0x14
	bl sub_02070DC0
	str r0, [r4, #0x28]
	add r0, sp, #0x14
_0207103E:
	bl sub_02070DB4
	mov r0, #1
	str r0, [sp]
_02071046:
	ldr r0, [sp]
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0207104C: .word 0x0214BF68
_02071050: .word 0x0214BF70
_02071054: .word 0x00000158
	thumb_func_end sub_02070F58

	thumb_func_start sub_02071058
sub_02071058: ; 0x02071058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, sp, #8
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl sub_02070C7C
	add r5, sp, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02070F40
	add r0, r7, #0
	ldmia r5!, {r1, r2}
	bl sub_02070D38
	cmp r0, #0
	beq _020710A2
	add r0, r4, #0
	bl sub_02070F04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02070F18
	ldr r1, [r4, #4]
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02070E40
	cmp r5, r0
	bne _0207109C
	mov r6, #1
_0207109C:
	add r0, sp, #8
	bl sub_02070DB4
_020710A2:
	add r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071058

	thumb_func_start sub_020710A8
sub_020710A8: ; 0x020710A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, sp, #0x48
	mov r1, #0
	mov r2, #0x14
	add r4, r3, #0
	blx MI_CpuFill8
	ldr r0, _02071138 ; =0x0214BF60
	ldr r2, _02071138 ; =0x0214BF60
	ldr r0, [r0, #0x18]
	ldr r2, [r2, #0x1c]
	add r1, sp, #8
	blx MI_CpuCopy8
	cmp r4, #0
	bne _020710EC
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020710EC
	ldr r0, _02071138 ; =0x0214BF60
	add r1, r6, #0
	ldr r0, [r0, #0x1c]
	add r2, r7, #0
	str r0, [sp]
	add r0, sp, #0x48
	add r3, sp, #8
	bl sub_0208287C
	b _02071118
_020710EC:
	mov r0, #0
	str r0, [sp, #4]
	cmp r4, #0
	beq _020710FC
	mov r0, #1
	bl MATHi_SetOverlayTableMode
	str r0, [sp, #4]
_020710FC:
	ldr r0, _02071138 ; =0x0214BF60
	add r1, r6, #0
	ldr r0, [r0, #0x1c]
	add r2, r7, #0
	str r0, [sp]
	add r0, sp, #0x48
	add r3, sp, #8
	bl MATH_CalcHMACSHA1
	cmp r4, #0
	beq _02071118
	ldr r0, [sp, #4]
	bl MATHi_SetOverlayTableMode
_02071118:
	mov r3, #0
	add r2, sp, #0x48
_0207111C:
	ldr r1, [r2, r3]
	ldr r0, [r5, r3]
	cmp r1, r0
	bne _0207112A
	add r3, r3, #4
	cmp r3, #0x14
	blo _0207111C
_0207112A:
	mov r0, #1
	cmp r3, #0x14
	beq _02071132
	mov r0, #0
_02071132:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02071138: .word 0x0214BF60
	thumb_func_end sub_020710A8

	thumb_func_start sub_0207113C
sub_0207113C: ; 0x0207113C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02070F04
	add r7, r0, #0
	ldr r1, [r5, #4]
	ldr r0, _020711EC ; =0x02700000
	cmp r1, r0
	blo _02071168
	ldr r0, _020711F0 ; =0x0276DDE0
	cmp r1, r0
	bhs _02071168
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02071168
	ldr r0, _020711F4 ; =0x0214BF60
	ldr r1, [r0]
	cmp r1, #0
	bne _02071168
	mov r1, #1
	str r1, [r0]
_02071168:
	bl OS_GetBootType
	cmp r0, #1
	beq _020711B8
	ldr r0, [r5, #0x1c]
	mov r6, #0
	lsr r1, r0, #0x18
	mov r0, #2
	tst r0, r1
	beq _020711A4
	ldr r1, _020711F8 ; =0x0209D728
	ldr r0, _020711FC ; =0x0209BC48
	ldr r4, [r5]
	sub r0, r1, r0
	mov r1, #0x14
	blx sub_0208D65C
	cmp r4, r0
	bhs _020711A4
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020711FC ; =0x0209BC48
	add r2, r7, #0
	add r0, r0, r1
	ldr r1, [r5, #4]
	add r3, r6, #0
	bl sub_020710A8
	add r6, r0, #0
_020711A4:
	cmp r6, #0
	bne _020711B8
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	bl OS_Terminate
	pop {r3, r4, r5, r6, r7, pc}
_020711B8:
	ldr r0, [r5, #0x1c]
	lsr r1, r0, #0x18
	mov r0, #1
	tst r0, r1
	beq _020711CA
	ldr r0, [r5, #4]
	add r0, r0, r7
	blx sub_02004DF4
_020711CA:
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	blx sub_0207B0AC
	ldr r4, [r5, #0x10]
	ldr r5, [r5, #0x14]
	cmp r4, r5
	bhs _020711E8
_020711DA:
	ldr r0, [r4]
	cmp r0, #0
	beq _020711E2
	blx r0
_020711E2:
	add r4, r4, #4
	cmp r4, r5
	blo _020711DA
_020711E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020711EC: .word 0x02700000
_020711F0: .word 0x0276DDE0
_020711F4: .word 0x0214BF60
_020711F8: .word 0x0209D728
_020711FC: .word 0x0209BC48
	thumb_func_end sub_0207113C

	thumb_func_start sub_02071200
sub_02071200: ; 0x02071200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
_02071206:
	ldr r0, [sp]
	mov r6, #0
	ldr r0, [r0, #4]
	mov r7, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #4]
	blx OS_DisableInterrupts
	mov ip, r0
	ldr r0, _020712A0 ; =0x0214F4F8
	mov r1, #0
	ldr r2, [r0]
	str r2, [sp, #0xc]
	add r0, r2, #0
	beq _0207127E
_02071230:
	ldr r4, [r2, #8]
	ldr r3, [r2]
	ldr r0, [r2, #4]
	cmp r4, #0
	bne _02071246
	ldr r5, [sp, #8]
	cmp r0, r5
	blo _02071246
	ldr r5, [sp, #4]
	cmp r0, r5
	blo _02071252
_02071246:
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _02071276
	ldr r0, [sp, #4]
	cmp r4, r0
	bhs _02071276
_02071252:
	cmp r7, #0
	bne _0207125A
	add r6, r2, #0
	b _0207125C
_0207125A:
	str r2, [r7]
_0207125C:
	ldr r0, [sp, #0xc]
	cmp r0, r2
	bne _02071268
	ldr r0, _020712A0 ; =0x0214F4F8
	str r3, [sp, #0xc]
	str r3, [r0]
_02071268:
	mov r0, #0
	add r7, r2, #0
	str r0, [r2]
	cmp r1, #0
	beq _02071278
	str r3, [r1]
	b _02071278
_02071276:
	add r1, r2, #0
_02071278:
	add r2, r3, #0
	cmp r3, #0
	bne _02071230
_0207127E:
	mov r0, ip
	blx OS_RestoreInterrupts
	cmp r6, #0
	beq _0207129C
_02071288:
	ldr r1, [r6, #4]
	ldr r4, [r6]
	cmp r1, #0
	beq _02071294
	ldr r0, [r6, #8]
	blx r1
_02071294:
	add r6, r4, #0
	cmp r4, #0
	bne _02071288
	b _02071206
_0207129C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020712A0: .word 0x0214F4F8
	thumb_func_end sub_02071200

	thumb_func_start sub_020712A4
sub_020712A4: ; 0x020712A4
	push {r3, lr}
	bl sub_02071200
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020712A4

	thumb_func_start sub_020712B0
sub_020712B0: ; 0x020712B0
	push {r4, r5, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r4, sp, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	mov r5, #0
	bl sub_02070F58
	cmp r0, #0
	beq _020712DA
	add r0, r4, #0
	bl sub_02071058
	cmp r0, #0
	beq _020712DA
	add r0, r4, #0
	bl sub_0207113C
	mov r5, #1
_020712DA:
	add r0, r5, #0
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end sub_020712B0

	thumb_func_start sub_020712E0
sub_020712E0: ; 0x020712E0
	push {r3, r4, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r4, sp, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_02070F58
	cmp r0, #0
	beq _02071306
	add r0, r4, #0
	bl sub_020712A4
	cmp r0, #0
	beq _02071306
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, pc}
_02071306:
	mov r0, #0
	add sp, #0x2c
	pop {r3, r4, pc}
	thumb_func_end sub_020712E0

	thumb_func_start sub_0207130C
sub_0207130C: ; 0x0207130C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5]
	add r7, r2, #0
	ldr r6, [r4, #0x20]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _02071326
	ldr r0, [r5, #4]
	blx MI_CpuCopy8
	mov r0, #0
	b _02071338
_02071326:
	ldr r2, [r5, #4]
	ldr r6, [r6, #0x20]
	add r0, r4, #0
	add r3, r7, #0
	blx r6
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02070130
_02071338:
	ldr r1, [r5, #4]
	add r1, r1, r7
	str r1, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207130C

	thumb_func_start sub_02071340
sub_02071340: ; 0x02071340
	ldr r2, [r0, #8]
	strh r1, [r0, #0x34]
	mov r1, #0
	str r2, [r0, #0x30]
	ldr r3, _02071354 ; =sub_020718AC
	strh r1, [r0, #0x36]
	str r1, [r0, #0x38]
	mov r1, #2
	mov r2, #1
	bx r3
	.align 2, 0
_02071354: .word sub_020718AC
	thumb_func_end sub_02071340

	thumb_func_start sub_02071358
sub_02071358: ; 0x02071358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r5, #0
	ldr r6, [r0, #0x20]
	add r4, #0x30
	str r0, [sp]
	ldrh r0, [r4, #4]
	ldr r1, [r6, #0xc]
	mov r2, #8
	lsl r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #8
	bl sub_0207130C
	add r7, r0, #0
	bne _020713B2
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _020713A8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020713A8
	add r0, sp, #0
	ldrh r0, [r0, #0xc]
	strh r0, [r5, #0x26]
	ldr r1, [r6, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r5, #0x28]
_020713A8:
	add r0, sp, #0
	ldrh r1, [r0, #0xe]
	ldr r0, _020713B8 ; =0x00000FFF
	and r0, r1
	str r0, [r5, #0x2c]
_020713B2:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020713B8: .word 0x00000FFF
	thumb_func_end sub_02071358

	thumb_func_start sub_020713BC
sub_020713BC: ; 0x020713BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #0x30]
	ldr r0, [r5, #8]
	add r7, sp, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r2, #1
	mov r6, #1
	bl sub_0207130C
	cmp r0, #0
	bne _0207145E
	add r1, sp, #0
	ldrb r1, [r1]
	mov r2, #0x7f
	and r2, r1
	asr r1, r1, #7
	and r1, r6
	str r2, [r4, #0x10]
	str r1, [r4, #0xc]
	cmp r2, #0
	bne _020713F8
	add sp, #0xc
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020713F8:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	bne _02071416
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x14
	bl sub_0207130C
	cmp r0, #0
	bne _0207145E
	ldr r1, [r4, #0x10]
	mov r2, #0
	add r1, r4, r1
	strb r2, [r1, #0x14]
	b _0207141C
_02071416:
	ldr r1, [sp, #8]
	add r1, r1, r2
	str r1, [sp, #8]
_0207141C:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02071432
	ldr r1, [r5, #8]
	str r1, [r4]
	ldrh r1, [r5, #0x26]
	str r1, [r4, #4]
	ldrh r1, [r5, #0x26]
	add r1, r1, #1
	strh r1, [r5, #0x26]
	b _02071456
_02071432:
	add r1, sp, #0
	add r0, sp, #4
	add r1, #2
	mov r2, #2
	bl sub_0207130C
	cmp r0, #0
	bne _02071456
	ldr r1, [r5, #8]
	str r1, [r4]
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldr r1, _02071464 ; =0x00000FFF
	and r1, r2
	strh r1, [r4, #4]
	mov r1, #0
	strh r1, [r4, #6]
	str r1, [r4, #8]
_02071456:
	cmp r0, #0
	bne _0207145E
	ldr r1, [sp, #8]
	str r1, [r5, #0x28]
_0207145E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02071464: .word 0x00000FFF
	thumb_func_end sub_020713BC

	thumb_func_start sub_02071468
sub_02071468: ; 0x02071468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r1, r0, #0
	ldr r1, [r1, #0x40]
	ldr r4, [r0, #0x3c]
	str r1, [sp, #8]
	mov r1, #2
	mov r2, #1
	str r0, [sp]
	bl sub_020718AC
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _02071488
	b _020715A8
_02071488:
	add r0, r4, #0
	mov r1, #0
	mov r6, #0
	bl sub_02070BFC
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	ldrsb r0, [r4, r5]
	cmp r0, #0
	bne _020714A6
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020714A6
	str r6, [sp, #4]
_020714A6:
	cmp r5, #0
	bne _020714B0
	add sp, #0xa0
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_020714B0:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x2e
	bne _020714E2
	cmp r5, #1
	bne _020714C0
	add r4, r4, #1
	b _02071592
_020714C0:
	cmp r5, #2
	bne _020714E6
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0x2e
	bne _020714E6
	ldr r0, [sp]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _020714DE
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x2c]
	bl sub_02071340
_020714DE:
	add r4, r4, #2
	b _02071592
_020714E2:
	cmp r0, #0x2a
	beq _020715A8
_020714E6:
	cmp r5, #0x7f
	ble _020714F0
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_020714F0:
	ldr r0, [sp]
	add r6, sp, #0xc
	mov r1, #0
	str r6, [r0, #0x30]
	str r1, [r0, #0x34]
	mov r7, #0x14
_020714FC:
	ldr r0, [sp]
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	beq _02071510
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02071510:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _020714FC
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _020714FC
	mov r0, #0
	mov r1, #0
	cmp r5, #0
	bls _0207154E
_02071526:
	ldrsb r0, [r4, r1]
	add r2, r6, r1
	ldrsb r2, [r2, r7]
	sub r0, #0x41
	lsl r0, r0, #0x18
	sub r2, #0x41
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	cmp r0, #0x19
	bhi _0207153E
	add r0, #0x20
_0207153E:
	cmp r2, #0x19
	bhi _02071544
	add r2, #0x20
_02071544:
	sub r0, r0, r2
	bne _0207154E
	add r1, r1, #1
	cmp r1, r5
	blo _02071526
_0207154E:
	cmp r0, #0
	bne _020714FC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02071574
	add r3, sp, #0xc
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r0, [sp]
	mov r2, #1
	add r4, r4, r5
	bl sub_020718AC
	b _02071592
_02071574:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02071580
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02071580:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [r0, #0x44]
	ldr r0, [sp, #0x10]
	add sp, #0xa0
	str r1, [r2]
	str r0, [r2, #4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071592:
	mov r1, #0
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _0207159C
	mov r1, #1
_0207159C:
	add r4, r4, r1
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _020715A8
	b _02071488
_020715A8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020715B4
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_020715B4:
	ldr r0, [sp]
	add r2, r0, #0
	add r2, #0x20
	ldr r3, [r0, #0x44]
	str r2, [sp]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp]
	str r0, [r3]
	mov r0, #0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071468

	thumb_func_start sub_020715D0
sub_020715D0: ; 0x020715D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xfc
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r6, sp, #0x20
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x30
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	bl sub_02070C7C
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x28]
	ldr r1, [r4, #0xc]
	mov r0, #0x20
	tst r0, r1
	beq _020715FA
	mov r0, #1
	b _020715FC
_020715FA:
	mov r0, #0
_020715FC:
	cmp r0, #0
	beq _02071608
	ldrh r5, [r4, #0x24]
	mov r4, #1
	lsl r4, r4, #0x10
	b _02071674
_02071608:
	mov r0, #0
	mov r5, #1
	str r0, [sp, #0xc]
	mov r0, #0
	lsl r5, r5, #0x10
	ldr r4, [r4, #0x20]
	str r0, [sp, #8]
	mov r7, #3
	str r5, [sp, #0x1c]
_0207161A:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_02071340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0207162C
	ldr r0, [sp, #0x4c]
	str r0, [sp, #8]
_0207162C:
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	bne _02071662
_02071642:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	bne _02071654
	ldr r0, [sp, #0x6c]
	cmp r0, r4
	bne _02071654
	add r0, sp, #0x20
	ldrh r5, [r0, #0x24]
	b _02071662
_02071654:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	beq _02071642
_02071662:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _02071674
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _0207161A
_02071674:
	mov r0, #1
	lsl r0, r0, #0x10
	add r7, sp, #0x20
	cmp r5, r0
	bne _0207168A
	ldr r0, [sp, #0x10]
	mov r1, #0
	strh r1, [r0, #8]
	add sp, #0xfc
	mov r0, #0xb
	pop {r4, r5, r6, r7, pc}
_0207168A:
	ldr r0, [sp, #0x14]
	add r6, r5, #0
	bl sub_02070A24
	bl sub_0207F8AC
	add r0, r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02071340
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r4, r0
	beq _020716B2
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
_020716B2:
	cmp r5, #0
	beq _02071704
_020716B6:
	ldr r1, [sp, #0x4c]
	add r0, r7, #0
	bl sub_02071340
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	add r0, r7, #0
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	bne _020716FC
_020716D4:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	beq _020716EE
	add r0, sp, #0x68
	ldrh r0, [r0, #4]
	cmp r0, r6
	bne _020716EE
	ldr r0, [sp, #0x78]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	b _020716FC
_020716EE:
	add r0, r7, #0
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	beq _020716D4
_020716FC:
	add r0, sp, #0x20
	ldrh r6, [r0, #0x24]
	cmp r6, #0
	bne _020716B6
_02071704:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, [r0]
	str r0, [sp]
	cmp r0, #0
	beq _02071812
	ldr r0, [sp, #0x10]
	ldrh r6, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, r6
	blo _02071812
	ldr r0, [sp, #0x14]
	bl sub_02070A24
	str r0, [sp, #0x18]
	bl sub_0207F8AC
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp]
	add r2, r7, #0
	blx MI_CpuCopy8
	mov r0, #0
	add r2, r0, r7
	ldr r1, [sp]
	ldr r0, _02071818 ; =0x0209B510
	add r1, r1, r2
	mov r2, #2
	mov r7, #2
	blx MI_CpuCopy8
	add r0, sp, #0x20
	add r1, r5, #0
	bl sub_02071340
	lsl r0, r7, #0xf
	cmp r4, r0
	beq _020717A0
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	add r0, sp, #0x20
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	bne _0207178A
	mov r7, #3
_02071770:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	bne _0207177C
	ldr r0, [sp, #0x6c]
	cmp r0, r4
	beq _0207178A
_0207177C:
	add r0, sp, #0x20
	add r1, r7, #0
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	beq _02071770
_0207178A:
	ldr r0, [sp, #0x78]
	ldr r1, [sp]
	add r4, r0, #1
	add r1, r1, r6
	add r0, sp, #0x7c
	sub r1, r1, r4
	add r2, r4, #0
	blx MI_CpuCopy8
	sub r6, r6, r4
	b _020717AC
_020717A0:
	ldr r0, [sp]
	add r0, r0, r6
	sub r1, r0, #1
	mov r0, #0
	strb r0, [r1]
	sub r6, r6, #1
_020717AC:
	add r4, sp, #0x20
	cmp r5, #0
	beq _02071812
	add r7, sp, #0x68
_020717B4:
	ldr r1, [sp, #0x4c]
	add r0, r4, #0
	bl sub_02071340
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp]
	str r7, [sp, #0x50]
	add r0, r0, r6
	sub r1, r0, #1
	mov r0, #0x2f
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	sub r6, r6, #1
	bl sub_020718AC
	cmp r0, #0
	bne _0207180A
_020717DC:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	beq _020717FC
	ldrh r0, [r7, #4]
	cmp r0, r5
	bne _020717FC
	ldr r1, [sp]
	ldr r5, [sp, #0x78]
	add r1, r1, r6
	add r0, sp, #0x7c
	sub r1, r1, r5
	add r2, r5, #0
	blx MI_CpuCopy8
	sub r6, r6, r5
	b _0207180A
_020717FC:
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	cmp r0, #0
	beq _020717DC
_0207180A:
	add r0, sp, #0x20
	ldrh r5, [r0, #0x24]
	cmp r5, #0
	bne _020717B4
_02071812:
	mov r0, #0
	add sp, #0xfc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02071818: .word 0x0209B510
	thumb_func_end sub_020715D0

	thumb_func_start sub_0207181C
sub_0207181C: ; 0x0207181C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r3, [r5, #8]
	ldr r4, [r5, #0x34]
	ldr r2, [r3, #0x20]
	lsl r1, r4, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	blo _02071836
	add sp, #0x10
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02071836:
	str r3, [sp]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #8
	bl sub_0207130C
	cmp r0, #0
	bne _02071860
	ldr r0, [sp, #8]
	mov r1, #7
	str r0, [r5, #0x30]
	ldr r0, [sp, #0xc]
	mov r2, #1
	str r0, [r5, #0x34]
	add r0, r5, #0
	str r4, [r5, #0x38]
	bl sub_020718AC
_02071860:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207181C

	thumb_func_start sub_02071864
sub_02071864: ; 0x02071864
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x24]
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x34]
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0x20]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02071864

	thumb_func_start sub_02071878
sub_02071878: ; 0x02071878
	push {r4, r5, r6, lr}
	ldr r6, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r5, [r6, #0x20]
	add r4, r2, r3
	str r4, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r4, [r5, #0x20]
	add r0, r6, #0
	blx r4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02071878

	thumb_func_start sub_02071890
sub_02071890: ; 0x02071890
	push {r4, r5, r6, lr}
	ldr r6, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r5, [r6, #0x20]
	add r4, r2, r3
	str r4, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r4, [r5, #0x24]
	add r0, r6, #0
	blx r4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02071890

	thumb_func_start sub_020718A8
sub_020718A8: ; 0x020718A8
	mov r0, #0
	bx lr
	thumb_func_end sub_020718A8

	thumb_func_start sub_020718AC
sub_020718AC: ; 0x020718AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp]
	add r2, r0, #0
	ldr r2, [r2, #8]
	add r5, r1, #0
	ldr r4, [r2, #0x20]
	mov r2, #1
	lsl r2, r5
	ldr r3, [r4, #0x30]
	mov r7, #1
	str r0, [sp, #8]
	ldr r6, _02071938 ; =0x00000101
	str r2, [sp, #4]
	tst r2, r3
	beq _02071906
	ldr r2, [r4, #0x2c]
	blx r2
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xff
	cmp r6, r0
	bgt _020718F2
	add r7, #0xff
	cmp r6, r7
	bge _02071906
	cmp r6, #4
	bgt _02071906
	cmp r6, #0
	blt _02071906
	beq _02071906
	cmp r6, #1
	beq _02071906
	cmp r6, #4
	b _02071906
_020718F2:
	ldr r0, _02071938 ; =0x00000101
	add r0, r0, #1
	cmp r6, r0
	bne _02071906
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x30]
	mvn r0, r0
	and r0, r1
	ldr r6, _02071938 ; =0x00000101
	str r0, [r4, #0x30]
_02071906:
	ldr r0, _02071938 ; =0x00000101
	cmp r6, r0
	bne _02071920
	cmp r5, #0xd
	bhs _0207191E
	ldr r1, _0207193C ; =0x02094588
	lsl r2, r5, #2
	ldr r0, [sp, #8]
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	b _02071920
_0207191E:
	mov r6, #4
_02071920:
	ldr r0, [sp]
	cmp r0, #0
	beq _02071930
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_02070130
	add r6, r0, #0
_02071930:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02071938: .word 0x00000101
_0207193C: .word 0x02094588
	thumb_func_end sub_020718AC

	thumb_func_start sub_02071940
sub_02071940: ; 0x02071940
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r4, r0
	ldr r4, [r3]
	cmp r4, r0
	bls _02071952
	str r0, [r3]
_02071952:
	str r2, [r1, #0x30]
	str r4, [r1, #0x34]
	ldr r0, [r3]
	mov r2, #0
	str r0, [r1, #0x38]
	add r0, r1, #0
	mov r1, #0
	bl sub_020718AC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02071940

	thumb_func_start sub_02071968
sub_02071968: ; 0x02071968
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r4, r0
	ldr r4, [r3]
	cmp r4, r0
	bls _0207197A
	str r0, [r3]
_0207197A:
	str r2, [r1, #0x30]
	str r4, [r1, #0x34]
	ldr r0, [r3]
	mov r2, #0
	str r0, [r1, #0x38]
	add r0, r1, #0
	mov r1, #1
	bl sub_020718AC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02071968

	thumb_func_start sub_02071990
sub_02071990: ; 0x02071990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, #0x30
	lsr r0, r2, #0x10
	strh r2, [r1, #4]
	strh r0, [r1, #6]
	str r3, [r1, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	str r5, [r4, #8]
	str r5, [r4, #0x30]
	bl sub_020718AC
	cmp r0, #0
	bne _020719C6
	ldr r2, [r4, #0xc]
	mov r1, #0x20
	orr r2, r1
	mov r1, #0x10
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_020719C6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02071990

	thumb_func_start sub_020719C8
sub_020719C8: ; 0x020719C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	add r5, r2, #0
	add r2, r1, #0
	add r6, r0, #0
	add r0, sp, #0x14
	str r0, [r1, #0x30]
	add r0, r1, #0
	add r2, #0x30
	mov r7, #0
	str r7, [r2, #4]
	mov r1, #3
	mov r2, #1
	bl sub_020718AC
	str r0, [sp]
	cmp r0, #0
	bne _02071AA4
	str r7, [r5, #0x10]
	mov r4, #0x46
	add r1, r5, #0
	ldr r2, [sp, #0x24]
	lsl r4, r4, #2
	str r2, [r5, r4]
	add r0, sp, #0x28
	add r1, #0x14
	blx MI_CpuCopy8
	ldr r0, [r5, r4]
	add r0, r5, r0
	strb r7, [r0, #0x14]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02071A2A
	add r1, r4, #0
	sub r1, #0x18
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, sp, #4
	ldrh r1, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x10
	orr r1, r0
	add r0, r4, #0
	add r0, #0x54
	str r1, [r5, r0]
	add r4, #0x50
	str r7, [r5, r4]
	b _02071A82
_02071A2A:
	add r0, r4, #4
	str r7, [r5, r0]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x54
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x50
	str r7, [r5, r1]
	ldr r2, [r6, #0x20]
	lsl r1, r0, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	bhs _02071A82
	str r6, [sp, #4]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, sp, #4
	add r1, sp, #0xc
	mov r7, #8
	bl sub_0207130C
	cmp r0, #0
	bne _02071A82
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0x50
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_02072130
	cmp r0, #0
	beq _02071A82
	add r0, r4, #4
	ldr r1, [r5, r0]
	lsl r0, r7, #7
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
_02071A82:
	mov r1, #0x4e
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r5, r0]
	add r1, #0x14
	str r2, [r5, r1]
_02071AA4:
	ldr r0, [sp]
	add sp, #0xa8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020719C8

	thumb_func_start sub_02071AAC
sub_02071AAC: ; 0x02071AAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r0, sp, #0xc
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02070C7C
	add r0, sp, #0xc
	mov r1, #0
	strh r6, [r0, #0x34]
	strh r1, [r0, #0x36]
	ldr r0, [sp, #0x68]
	str r1, [sp, #0x44]
	str r0, [sp, #0x4c]
	add r0, sp, #0
	str r0, [sp, #0x50]
	add r0, sp, #0xc
	mov r1, #4
	mov r2, #1
	str r5, [sp, #0x14]
	str r5, [sp, #0x3c]
	str r7, [sp, #0x48]
	bl sub_020718AC
	cmp r0, #0
	bne _02071AF8
	ldr r1, [sp, #0x68]
	cmp r1, #0
	beq _02071AF4
	add r1, sp, #0
	ldrh r1, [r1, #4]
	add sp, #0x54
	str r1, [r4]
	pop {r4, r5, r6, r7, pc}
_02071AF4:
	ldr r1, [sp, #4]
	str r1, [r4]
_02071AF8:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02071AAC

	thumb_func_start sub_02071AFC
sub_02071AFC: ; 0x02071AFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [sp, #0x10]
	add r4, #0x30
	mov r0, #0
	str r3, [r1, #0x30]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, [r5]
	mov r2, #1
	str r0, [r4, #4]
	add r0, r1, #0
	mov r1, #5
	bl sub_020718AC
	cmp r0, #0
	bne _02071B22
	ldr r1, [r4, #4]
	str r1, [r5]
_02071B22:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02071AFC

	thumb_func_start sub_02071B24
sub_02071B24: ; 0x02071B24
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x30
	str r2, [r0, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	str r5, [r4, #0x30]
	bl sub_020718AC
	cmp r0, #0
	bne _02071B54
	ldr r2, [r4, #0xc]
	mov r1, #0x10
	orr r2, r1
	mov r1, #0x20
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_02071B54:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071B24

	thumb_func_start sub_02071B58
sub_02071B58: ; 0x02071B58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, #0x30
	str r2, [r4, #0x30]
	ldr r0, [sp, #0x10]
	str r3, [r1, #4]
	ldr r0, [r0]
	mov r2, #1
	str r0, [r1, #8]
	add r0, r4, #0
	mov r1, #7
	bl sub_020718AC
	cmp r0, #0
	bne _02071B8C
	ldr r2, [r4, #0xc]
	mov r1, #0x10
	orr r2, r1
	mov r1, #0x20
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_02071B8C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071B58

	thumb_func_start sub_02071B90
sub_02071B90: ; 0x02071B90
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl sub_020718AC
	mov r1, #0
	str r1, [r4, #4]
	ldr r2, [r4, #0xc]
	mov r1, #0x30
	bic r2, r1
	str r2, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_02071B90

	thumb_func_start sub_02071BAC
sub_02071BAC: ; 0x02071BAC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02070C7C
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	str r5, [sp, #8]
	bl sub_020718AC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071BAC

	thumb_func_start sub_02071BCC
sub_02071BCC: ; 0x02071BCC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02070C7C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	str r5, [sp, #8]
	bl sub_020718AC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071BCC

	thumb_func_start sub_02071BEC
sub_02071BEC: ; 0x02071BEC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02070C7C
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	str r5, [sp, #8]
	bl sub_020718AC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071BEC

	thumb_func_start sub_02071C0C
sub_02071C0C: ; 0x02071C0C
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02070C7C
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	str r5, [sp, #8]
	bl sub_020718AC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071C0C

	thumb_func_start sub_02071C2C
sub_02071C2C: ; 0x02071C2C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02071AAC
	cmp r0, #0
	bne _02071C52
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02071B24
_02071C52:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071C2C

	thumb_func_start sub_02071C58
sub_02071C58: ; 0x02071C58
	ldr r0, [r1, #4]
	ldr r1, [r2]
	cmp r3, #0
	beq _02071C6A
	cmp r3, #1
	beq _02071C6E
	cmp r3, #2
	beq _02071C72
	b _02071C6E
_02071C6A:
	ldr r3, [r0, #4]
	b _02071C74
_02071C6E:
	ldr r3, [r0, #0xc]
	b _02071C74
_02071C72:
	ldr r3, [r0, #8]
_02071C74:
	add r1, r1, r3
	ldr r3, [r0, #4]
	cmp r1, r3
	blt _02071C82
	ldr r3, [r0, #8]
	cmp r1, r3
	ble _02071C86
_02071C82:
	mov r0, #6
	bx lr
_02071C86:
	str r1, [r0, #0xc]
	str r1, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02071C58

	thumb_func_start sub_02071C90
sub_02071C90: ; 0x02071C90
	ldr r0, [r1, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	str r0, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02071C90

	thumb_func_start sub_02071CA0
sub_02071CA0: ; 0x02071CA0
	ldr r0, [r1, #4]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	str r0, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02071CA0

	thumb_func_start sub_02071CB0
sub_02071CB0: ; 0x02071CB0
	push {r4, lr}
	ldr r4, [r0, #0x20]
	bl sub_02072000
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02071CB0

	thumb_func_start sub_02071CCC
sub_02071CCC: ; 0x02071CCC
	mov r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_02071CCC

	thumb_func_start sub_02071CD4
sub_02071CD4: ; 0x02071CD4
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #0
	add r4, r1, #0
	str r6, [sp, #4]
	mov r1, #1
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02071AAC
	cmp r0, #0
	bne _02071CFE
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl sub_02071990
_02071CFE:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02071CD4

	thumb_func_start sub_02071D04
sub_02071D04: ; 0x02071D04
	ldr r3, [r1, #0xc]
	mov r2, #0x30
	mov r0, #0
	bic r3, r2
	str r0, [r1, #4]
	str r3, [r1, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_02071D04

	thumb_func_start sub_02071D14
sub_02071D14: ; 0x02071D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	mov r6, #5
	blx MI_CpuFill8
	mov r7, #1
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, sp, #0x1c
	str r7, [sp]
	bl sub_02071AAC
	cmp r0, #0
	bne _02071D4E
	add r7, #0xff
	str r7, [r4]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x50]
	b _02071DAE
_02071D4E:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, sp, #0x1c
	bl sub_02071AAC
	cmp r0, #0
	bne _02071DB0
	mov r0, #0
	str r0, [r4]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	lsl r1, r0, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	bhs _02071DAE
	str r5, [sp, #0xc]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	add r1, sp, #0x14
	mov r6, #8
	bl sub_0207130C
	cmp r0, #0
	bne _02071DAE
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl sub_02072130
	cmp r0, #0
	beq _02071DAE
	ldr r1, [r4]
	lsl r0, r6, #7
	orr r0, r1
	str r0, [r4]
_02071DAE:
	mov r6, #0
_02071DB0:
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071D14

	thumb_func_start sub_02071DC0
sub_02071DC0: ; 0x02071DC0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0206EED8
	mov r2, #0
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	str r2, [r4, #0x2c]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _02071DEC ; =0x7FFFFFFF
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r2, [r4, #0x14]
	str r2, [r4, #0x1c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02071DEC: .word 0x7FFFFFFF
	thumb_func_end sub_02071DC0

	thumb_func_start sub_02071DF0
sub_02071DF0: ; 0x02071DF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl sub_02071FF8
	add r1, r5, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02071DF0

	thumb_func_start sub_02071E08
sub_02071E08: ; 0x02071E08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl sub_02071FF8
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02071E08

	thumb_func_start sub_02071E24
sub_02071E24: ; 0x02071E24
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x28
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r3, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [sp, #8]
	str r2, [r4, #4]
	str r1, [r4, #0xc]
	str r1, [r4, #0x18]
	ldr r1, [sp, #0x10]
	str r2, [r4, #0x14]
	cmp r1, #0
	bne _02071E44
	ldr r1, _02071E60 ; =sub_02071DF0
_02071E44:
	str r1, [r4, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _02071E4E
	ldr r1, _02071E64 ; =sub_02071E08
_02071E4E:
	ldr r2, _02071E68 ; =0x020945BC
	str r1, [r4, #0x24]
	mov r3, #0
	add r1, r4, #0
	str r3, [r4, #0x1c]
	bl sub_02070A30
	pop {r4, pc}
	nop
_02071E60: .word sub_02071DF0
_02071E64: .word sub_02071E08
_02071E68: .word 0x020945BC
	thumb_func_end sub_02071E24

	thumb_func_start sub_02071E6C
sub_02071E6C: ; 0x02071E6C
	ldr r3, _02071E70 ; =sub_02070A5C
	bx r3
	.align 2, 0
_02071E70: .word sub_02070A5C
	thumb_func_end sub_02071E6C

	thumb_func_start sub_02071E74
sub_02071E74: ; 0x02071E74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	ldr r3, [r0, #0x24]
	ldr r1, _02071E98 ; =0x020945BC
	mov r4, #0
	cmp r3, r1
	bne _02071E92
	add r1, r5, #0
	bl sub_02071C90
	cmp r0, #0
	bne _02071E92
	mov r4, #1
_02071E92:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02071E98: .word 0x020945BC
	thumb_func_end sub_02071E74

	thumb_func_start sub_02071E9C
sub_02071E9C: ; 0x02071E9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	ldr r3, [r0, #0x24]
	ldr r1, _02071EC0 ; =0x020945BC
	mov r4, #0
	cmp r3, r1
	bne _02071EBA
	add r1, r5, #0
	bl sub_02071CA0
	cmp r0, #0
	bne _02071EBA
	mov r4, #1
_02071EBA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02071EC0: .word 0x020945BC
	thumb_func_end sub_02071E9C

	thumb_func_start sub_02071EC4
sub_02071EC4: ; 0x02071EC4
	add r0, #0x28
	cmp r2, #0
	bne _02071ECE
	mov r1, #0
	b _02071ED4
_02071ECE:
	cmp r1, #0
	bne _02071ED4
	mov r2, #0
_02071ED4:
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end sub_02071EC4

	thumb_func_start sub_02071EDC
sub_02071EDC: ; 0x02071EDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	cmp r7, #0
	beq _02071EF8
	bl sub_02072000
	cmp r0, #0
	beq _02071EF8
	add r0, r6, #0
	bl sub_02071FA0
_02071EF8:
	ldr r4, [r6, #0x20]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, #0x3f
	mov r1, #0x1f
	str r0, [sp, #4]
	bic r0, r1
	str r0, [sp, #4]
	cmp r0, r5
	bhi _02071F9A
	add r5, r7, #0
	add r5, #0x1f
	add r0, sp, #8
	bic r5, r1
	bl sub_02070C7C
	mov r0, #0
	ldr r2, [r4, #4]
	mvn r0, r0
	str r0, [sp]
	ldr r3, [r4, #8]
	add r0, sp, #8
	add r1, r6, #0
	add r3, r2, r3
	bl sub_02070D14
	cmp r0, #0
	beq _02071F52
	ldr r2, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02070E40
	cmp r0, #0
	bge _02071F4C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0
	blx MI_CpuFill8
_02071F4C:
	add r0, sp, #8
	bl sub_02070DB4
_02071F52:
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	add r5, r5, r0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r3, [r4, #0x10]
	add r0, sp, #8
	add r1, r6, #0
	add r3, r2, r3
	bl sub_02070D14
	cmp r0, #0
	beq _02071F8E
	ldr r2, [r4, #0x10]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02070E40
	cmp r0, #0
	bge _02071F88
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0
	blx MI_CpuFill8
_02071F88:
	add r0, sp, #8
	bl sub_02070DB4
_02071F8E:
	str r5, [r4, #0xc]
	str r7, [r4, #0x1c]
	ldr r1, [r6, #0x14]
	mov r0, #4
	orr r0, r1
	str r0, [r6, #0x14]
_02071F9A:
	ldr r0, [sp, #4]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071EDC

	thumb_func_start sub_02071FA0
sub_02071FA0: ; 0x02071FA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	mov r0, #2
	mov r6, #0
	tst r0, r1
	beq _02071FB2
	mov r0, #1
	b _02071FB4
_02071FB2:
	add r0, r6, #0
_02071FB4:
	cmp r0, #0
	beq _02071FEC
	add r0, r5, #0
	ldr r4, [r5, #0x20]
	bl sub_02070AD4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02072000
	cmp r0, #0
	beq _02071FE2
	ldr r1, [r5, #0x14]
	mov r0, #4
	bic r1, r0
	str r1, [r5, #0x14]
	ldr r6, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x1c]
_02071FE2:
	cmp r7, #0
	beq _02071FEC
	add r0, r5, #0
	bl sub_02070B44
_02071FEC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071FA0

	thumb_func_start sub_02071FF0
sub_02071FF0: ; 0x02071FF0
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02071FF0

	thumb_func_start sub_02071FF8
sub_02071FF8: ; 0x02071FF8
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	add r0, r0, r1
	bx lr
	thumb_func_end sub_02071FF8

	thumb_func_start sub_02072000
sub_02072000: ; 0x02072000
	ldr r1, [r0, #0x14]
	mov r0, #4
	tst r0, r1
	beq _0207200C
	mov r0, #1
	bx lr
_0207200C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02072000

	thumb_func_start sub_02072010
sub_02072010: ; 0x02072010
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_02072010

	thumb_func_start sub_02072014
sub_02072014: ; 0x02072014
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #6
	bhi _02072086
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072028: ; jump table
	.short _02072086 - _02072028 - 2 ; case 0
	.short _02072086 - _02072028 - 2 ; case 1
	.short _02072082 - _02072028 - 2 ; case 2
	.short _02072036 - _02072028 - 2 ; case 3
	.short _02072082 - _02072028 - 2 ; case 4
	.short _02072082 - _02072028 - 2 ; case 5
	.short _02072082 - _02072028 - 2 ; case 6
_02072036:
	ldr r6, [r4, #0x28]
	ldr r5, [r4, #0x30]
	cmp r6, #0
	bne _02072048
	mov r0, #0
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02072048:
	add r0, r6, #0
	bl sub_02070A24
	add r7, r0, #0
	bl sub_0207F8AC
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0207207A
	add r0, r5, #0
	ldr r1, _0207208C ; =0x0209B514
	add r0, #0x14
	add r2, r7, #0
	bl sub_020800E8
	ldr r0, [r4, #8]
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	str r0, [r5, #8]
_0207207A:
	ldr r1, [r6, #4]
	mov r0, #0
	str r1, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02072082:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02072086:
	ldr r0, _02072090 ; =0x00000102
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207208C: .word 0x0209B514
_02072090: .word 0x00000102
	thumb_func_end sub_02072014

	thumb_func_start sub_02072094
sub_02072094: ; 0x02072094
	push {r3, r4, r5, lr}
	sub sp, #0x10
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020720FC ; =0x0214BF80
	ldr r0, [r0]
	cmp r0, #0
	beq _020720BA
	ldr r0, _02072100 ; =0x0214BF84
	ldr r1, [r0, #0x14]
	mov r0, #2
	tst r0, r1
	beq _020720B4
	mov r0, #1
	b _020720B6
_020720B4:
	mov r0, #0
_020720B6:
	cmp r0, #0
	bne _020720F0
_020720BA:
	ldr r5, _02072100 ; =0x0214BF84
	add r0, r5, #0
	bl sub_0207090C
	mov r2, #0
	ldr r1, _02072104 ; =sub_02072014
	add r0, r5, #0
	mvn r2, r2
	bl sub_02071EC4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	str r1, [sp, #0xc]
	bl sub_02071E24
	cmp r0, #0
	bne _020720EA
	bl OS_Terminate
_020720EA:
	ldr r0, _020720FC ; =0x0214BF80
	mov r1, #1
	str r1, [r0]
_020720F0:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_020720FC: .word 0x0214BF80
_02072100: .word 0x0214BF84
_02072104: .word sub_02072014
	thumb_func_end sub_02072094

	thumb_func_start sub_02072108
sub_02072108: ; 0x02072108
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02072094
	mov r0, #0
	str r0, [sp]
	ldr r1, _0207212C ; =0x0214BF84
	add r0, r5, #0
	add r2, r6, #0
	add r3, r6, r4
	bl sub_02070D14
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0207212C: .word 0x0214BF84
	thumb_func_end sub_02072108

	thumb_func_start sub_02072130
sub_02072130: ; 0x02072130
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
	bl sub_02070A24
	ldr r1, _02072160 ; =0x0209B518
	bl sub_0207F95C
	cmp r0, #0
	bne _0207215C
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207215C
	bl sub_0206EEE0
	add r0, #0x92
	ldrh r0, [r0]
	lsl r0, r0, #0x13
	cmp r5, r0
	blo _0207215C
	mov r4, #1
_0207215C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02072160: .word 0x0209B518
	thumb_func_end sub_02072130

	thumb_func_start sub_02072164
sub_02072164: ; 0x02072164
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206FF5C
	mov r1, #5
	cmp r0, #0
	bne _02072174
	mov r1, #0
_02072174:
	add r0, r4, #0
	bl sub_02070B88
	pop {r4, pc}
	thumb_func_end sub_02072164

	thumb_func_start sub_0207217C
sub_0207217C: ; 0x0207217C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _020721A0 ; =sub_02072164
	mov r4, #1
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _020721A4 ; =0x0214BFE0
	str r4, [sp, #8]
	add r1, r2, #0
	ldr r0, [r0]
	add r2, r5, #0
	bl sub_0206FD24
	add r4, #0xff
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_020721A0: .word sub_02072164
_020721A4: .word 0x0214BFE0
	thumb_func_end sub_0207217C

	thumb_func_start sub_020721A8
sub_020721A8: ; 0x020721A8
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0xa
	bhi _0207220A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020721BC: ; jump table
	.short _0207220A - _020721BC - 2 ; case 0
	.short _02072206 - _020721BC - 2 ; case 1
	.short _0207220A - _020721BC - 2 ; case 2
	.short _0207220A - _020721BC - 2 ; case 3
	.short _0207220A - _020721BC - 2 ; case 4
	.short _0207220A - _020721BC - 2 ; case 5
	.short _0207220A - _020721BC - 2 ; case 6
	.short _020721F2 - _020721BC - 2 ; case 7
	.short _0207220A - _020721BC - 2 ; case 8
	.short _020721D2 - _020721BC - 2 ; case 9
	.short _020721E2 - _020721BC - 2 ; case 10
_020721D2:
	ldr r0, _02072210 ; =0x0214BFE0
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EEF0
	mov r0, #0
	pop {r3, pc}
_020721E2:
	ldr r0, _02072210 ; =0x0214BFE0
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF38
	mov r0, #0
	pop {r3, pc}
_020721F2:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	bl sub_02072130
	cmp r0, #0
	beq _02072202
	mov r0, #9
	pop {r3, pc}
_02072202:
	ldr r0, _02072214 ; =0x00000101
	pop {r3, pc}
_02072206:
	mov r0, #4
	pop {r3, pc}
_0207220A:
	ldr r0, _02072218 ; =0x00000102
	pop {r3, pc}
	nop
_02072210: .word 0x0214BFE0
_02072214: .word 0x00000101
_02072218: .word 0x00000102
	thumb_func_end sub_020721A8

	thumb_func_start sub_0207221C
sub_0207221C: ; 0x0207221C
	mov r0, #4
	cmp r1, #1
	beq _02072224
	ldr r0, _02072228 ; =0x00000102
_02072224:
	bx lr
	nop
_02072228: .word 0x00000102
	thumb_func_end sub_0207221C

	thumb_func_start sub_0207222C
sub_0207222C: ; 0x0207222C
	mov r0, #4
	bx lr
	thumb_func_end sub_0207222C

	thumb_func_start sub_02072230
sub_02072230: ; 0x02072230
	mov r0, #4
	bx lr
	thumb_func_end sub_02072230

	thumb_func_start sub_02072234
sub_02072234: ; 0x02072234
	mov r0, #0
	bx lr
	thumb_func_end sub_02072234

	thumb_func_start sub_02072238
sub_02072238: ; 0x02072238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_0206EDE0
	ldr r4, _020722FC ; =0x0214BFE0
	str r5, [r4]
	blx sub_0207A208
	str r0, [r4, #4]
	ldr r0, _02072300 ; =0x0214BFE8
	bl sub_0207090C
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, _02072304 ; =0x0209B518
	mov r2, #3
	mov r6, #3
	bl sub_02070920
	bl OS_GetBootType
	cmp r0, #1
	bne _020722B0
	bl sub_0206EEE0
	add r7, r0, #0
	add r4, r7, #0
	add r4, #0x40
	bl sub_0206EEE0
	add r5, r0, #0
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, _02072308 ; =sub_020721A8
	ldr r2, _0207230C ; =0x00000682
	add r5, #0x48
	bl sub_02071EC4
	ldr r1, [r7, #0x40]
	sub r0, r6, #4
	cmp r1, r0
	beq _020722B6
	cmp r1, #0
	beq _020722B6
	ldr r2, [r5]
	cmp r2, r0
	beq _020722B6
	cmp r2, #0
	beq _020722B6
	str r1, [sp]
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, _02072310 ; =sub_0207217C
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r3, [r5, #4]
	bl sub_02071E24
	b _020722B6
_020722B0:
	ldr r0, _02072300 ; =0x0214BFE8
	bl sub_02072234
_020722B6:
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, [r0, #0x14]
	mov r0, #2
	tst r0, r1
	beq _020722C4
	mov r0, #1
	b _020722C6
_020722C4:
	mov r0, #0
_020722C6:
	cmp r0, #0
	bne _020722F0
	ldr r4, _02072300 ; =0x0214BFE8
	mov r2, #0
	ldr r1, _02072314 ; =sub_0207221C
	add r0, r4, #0
	mvn r2, r2
	bl sub_02071EC4
	mov r1, #0
	str r1, [sp]
	ldr r0, _02072318 ; =sub_0207222C
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0207231C ; =sub_02072230
	mov r2, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_02071E24
_020722F0:
	ldr r0, _02072320 ; =0x0209B51C
	bl sub_02070680
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020722FC: .word 0x0214BFE0
_02072300: .word 0x0214BFE8
_02072304: .word 0x0209B518
_02072308: .word sub_020721A8
_0207230C: .word 0x00000682
_02072310: .word sub_0207217C
_02072314: .word sub_0207221C
_02072318: .word sub_0207222C
_0207231C: .word sub_02072230
_02072320: .word 0x0209B51C
	thumb_func_end sub_02072238

	thumb_func_start sub_02072324
sub_02072324: ; 0x02072324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r4, _02072350 ; =0x0214BFE0
	add r7, r0, #0
	ldr r0, _02072354 ; =0x0214BFE8
	ldr r6, [r4]
	bl sub_02070AD4
	str r5, [r4]
	cmp r0, #0
	beq _02072344
	ldr r0, _02072354 ; =0x0214BFE8
	bl sub_02070B44
_02072344:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02072350: .word 0x0214BFE0
_02072354: .word 0x0214BFE8
	thumb_func_end sub_02072324

	thumb_func_start sub_02072358
sub_02072358: ; 0x02072358
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, _02072364 ; =0x0214BFE8
	ldr r3, _02072368 ; =sub_02071EDC
	bx r3
	.align 2, 0
_02072364: .word 0x0214BFE8
_02072368: .word sub_02071EDC
	thumb_func_end sub_02072358

	thumb_func_start sub_0207236C
sub_0207236C: ; 0x0207236C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, _02072388 ; =0x0000FFFF
	add r3, r2, #0
	str r1, [sp]
	ldr r1, _0207238C ; =0x0214BFE8
	add r2, r4, #0
	add r3, r4, r3
	bl sub_02070D14
	add sp, #4
	pop {r3, r4, pc}
	nop
_02072388: .word 0x0000FFFF
_0207238C: .word 0x0214BFE8
	thumb_func_end sub_0207236C

	thumb_func_start sub_02072390
sub_02072390: ; 0x02072390
	push {r3, lr}
	ldr r1, _020723A8 ; =0x0214C044
	ldr r2, [r1]
	cmp r2, #0
	bne _020723A6
	mov r2, #1
	str r2, [r1]
	bl sub_02072238
	bl sub_02070EBC
_020723A6:
	pop {r3, pc}
	.align 2, 0
_020723A8: .word 0x0214C044
	thumb_func_end sub_02072390

	thumb_func_start sub_020723AC
sub_020723AC: ; 0x020723AC
	ldr r0, _020723B4 ; =0x0214C044
	ldr r0, [r0]
	bx lr
	nop
_020723B4: .word 0x0214C044
	thumb_func_end sub_020723AC

