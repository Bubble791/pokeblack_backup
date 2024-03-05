    .include "macros/function.inc"
	.include "overlay29.inc"
	.include "global.inc"
    
	.text

	thumb_func_start ovy29_21922c0
ovy29_21922c0: ; 0x021922C0
	push {r4, r5, r6, lr}
	bl sub_0207E75C
	bl sub_0207EBB8
	mov r0, #1
	bl sub_0207EFC4
	mov r0, #3
	bl sub_0207EFF4
	mov r0, #1
	blx sub_02194480
	bl sub_0206B8D4
	ldr r5, _0219230C ; =0x02197440
	ldr r4, _02192310 ; =0x000019B8
	ldr r0, [r5]
	add r0, r0, r4
	bl sub_0206C480
	ldr r2, [r5]
	ldr r1, _02192314 ; =0x00001104
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x22
	lsl r2, r2, #6
	mov r6, #0
	blx MIi_CpuClearFast
	ldr r0, [r5]
	add r4, #0x8c
	str r6, [r0, r4]
	mov r0, #1
	blx sub_021944B0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219230C: .word 0x02197440
_02192310: .word 0x000019B8
_02192314: .word 0x00001104
	thumb_func_end ovy29_21922c0
_02192318:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy29_219231c
ovy29_219231c: ; 0x0219231C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r5, _021923F4 ; =0x02197440
	add r7, r2, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r0, #0
	bne _02192348
	mov r5, #0
	cmp r4, #0
	bls _021923F2
_02192334:
	lsl r0, r5, #2
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	add r5, r5, #1
	cmp r5, r4
	blo _02192334
	pop {r3, r4, r5, r6, r7, pc}
_02192348:
	bl sub_020352E0
	cmp r0, #0
	ldr r0, [r5]
	ldr r1, _021923F8 ; =0x00001A4B
	bne _0219236A
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02192386
	ldr r1, _021923F8 ; =0x00001A4B
	mov r2, #0
	sub r1, #0x2b
	add r0, r0, r1
	ldr r1, _021923FC ; =0x02192319
	bl sub_0207E7A0
	b _0219237E
_0219236A:
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02192386
	ldr r1, _021923F8 ; =0x00001A4B
	mov r2, #0
	sub r1, #0x2b
	add r0, r0, r1
	ldr r1, _021923FC ; =0x02192319
	bl sub_0207E904
_0219237E:
	ldr r2, [r5]
	ldr r0, _021923F8 ; =0x00001A4B
	mov r1, #0
	strb r1, [r2, r0]
_02192386:
	bl sub_0207E8F8
	ldr r1, [sp]
	sub r0, r0, r1
	cmp r0, r6
	bhs _02192398
	add r0, r1, #0
	add r0, r0, r6
	str r0, [sp]
_02192398:
	ldr r0, _02192400 ; =0x02FFFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	bne _021923B2
	ldr r0, _021923F4 ; =0x02197440
	ldr r1, [r0]
	ldr r0, _02192404 ; =0x000019B2
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021923BC
_021923B2:
	ldr r0, _021923F4 ; =0x02197440
	ldr r1, [r0]
	ldr r0, _02192408 ; =0x00001104
	add r0, r1, r0
	str r0, [sp]
_021923BC:
	mov r5, #0
	cmp r4, #0
	bls _021923D4
_021923C2:
	lsl r0, r5, #2
	ldr r0, [r7, r0]
	add r1, r6, #0
	mov r2, #0
	blx sub_021942F0
	add r5, r5, #1
	cmp r5, r4
	blo _021923C2
_021923D4:
	ldr r0, _021923F4 ; =0x02197440
	ldr r1, [r0]
	ldr r0, _0219240C ; =0x000019B0
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021923E8
	ldr r0, [sp]
	add r1, r6, #0
	blx sub_02193FA0
_021923E8:
	ldr r0, _021923F4 ; =0x02197440
	mov r2, #2
	ldr r1, [r0]
	ldr r0, _02192410 ; =0x00001A4A
	strb r2, [r1, r0]
_021923F2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021923F4: .word 0x02197440
_021923F8: .word 0x00001A4B
_021923FC: .word 0x02192319
_02192400: .word 0x02FFFFA8
_02192404: .word 0x000019B2
_02192408: .word 0x00001104
_0219240C: .word 0x000019B0
_02192410: .word 0x00001A4A
	thumb_func_end ovy29_219231c

	thumb_func_start ovy29_2192414
ovy29_2192414: ; 0x02192414
	push {r4, lr}
	ldr r1, _0219245C ; =0x02197440
	ldr r2, [r1]
	ldr r1, _02192460 ; =0x00001A1C
	ldr r4, [r2, r1]
	cmp r4, #0
	bne _02192430
	blx sub_021956D4
	add r4, r0, #0
	bne _0219242E
	mov r0, #0
	pop {r4, pc}
_0219242E:
	b _02192432
_02192430:
	add r0, r4, #0
_02192432:
	mov r1, #0
	blx sub_02195858
	cmp r0, #0
	beq _0219244E
	add r0, r4, #0
	blx sub_021956FC
	ldr r1, _0219245C ; =0x02197440
	mov r0, #0
	ldr r2, [r1]
	ldr r1, _02192460 ; =0x00001A1C
	str r0, [r2, r1]
	pop {r4, pc}
_0219244E:
	ldr r0, _0219245C ; =0x02197440
	ldr r1, [r0]
	ldr r0, _02192460 ; =0x00001A1C
	str r4, [r1, r0]
	mov r0, #1
	pop {r4, pc}
	nop
_0219245C: .word 0x02197440
_02192460: .word 0x00001A1C
	thumb_func_end ovy29_2192414

	thumb_func_start ovy29_2192464
ovy29_2192464: ; 0x02192464
	push {r4, r5, r6, lr}
	ldr r4, _021924A0 ; =0x02197440
	ldr r6, _021924A4 ; =0x00001A1C
	ldr r0, [r4]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0219249A
	ldr r1, [r0, #0xc]
	cmp r1, #4
	bne _0219249A
	mov r1, #0
	mov r5, #0
	blx sub_02195928
	cmp r0, #0
	beq _02192488
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_02192488:
	ldr r0, [r4]
	ldr r0, [r0, r6]
	blx sub_02193DBC
	cmp r0, #0
	beq _02192496
	mov r5, #1
_02192496:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_0219249A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021924A0: .word 0x02197440
_021924A4: .word 0x00001A1C
	thumb_func_end ovy29_2192464

	thumb_func_start ovy29_21924a8
ovy29_21924a8: ; 0x021924A8
	push {r3, lr}
	cmp r1, #7
	beq _021924C0
	cmp r1, #9
	beq _021924B8
	cmp r1, #0xc
	beq _021924C8
	pop {r3, pc}
_021924B8:
	add r0, r2, #0
	bl ovy29_219258c
	pop {r3, pc}
_021924C0:
	add r0, r2, #0
	blx sub_02193DBC
	pop {r3, pc}
_021924C8:
	add r0, r2, #0
	bl ovy29_219258c
	pop {r3, pc}
	thumb_func_end ovy29_21924a8

	thumb_func_start ovy29_21924d0
ovy29_21924d0: ; 0x021924D0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	cmp r1, #0xc
	bhi _0219257E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021924E4: ; jump table
	.short _0219257E - _021924E4 - 2 ; case 0
	.short _021924FE - _021924E4 - 2 ; case 1
	.short _02192570 - _021924E4 - 2 ; case 2
	.short _02192578 - _021924E4 - 2 ; case 3
	.short _02192536 - _021924E4 - 2 ; case 4
	.short _0219257E - _021924E4 - 2 ; case 5
	.short _0219257E - _021924E4 - 2 ; case 6
	.short _02192546 - _021924E4 - 2 ; case 7
	.short _0219251E - _021924E4 - 2 ; case 8
	.short _0219252E - _021924E4 - 2 ; case 9
	.short _0219257E - _021924E4 - 2 ; case 10
	.short _02192578 - _021924E4 - 2 ; case 11
	.short _02192578 - _021924E4 - 2 ; case 12
_021924FE:
	ldr r0, _02192580 ; =0x02197440
	ldr r2, [r0]
	ldr r0, _02192584 ; =0x00001A1C
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _0219251A
	add r0, r4, #0
	mov r1, #3
	blx sub_02195928
	add r0, r4, #0
	blx sub_021956FC
	pop {r4, r5, r6, pc}
_0219251A:
	str r4, [r2, r0]
	pop {r4, r5, r6, pc}
_0219251E:
	add r0, r4, #0
	mov r1, #0
	blx sub_02195928
	add r0, r4, #0
	bl ovy29_219258c
	pop {r4, r5, r6, pc}
_0219252E:
	add r0, r4, #0
	bl ovy29_219258c
	pop {r4, r5, r6, pc}
_02192536:
	add r0, r4, #0
	mov r1, #4
	blx sub_02195928
	add r0, r4, #0
	bl ovy29_219258c
	pop {r4, r5, r6, pc}
_02192546:
	ldr r5, _02192580 ; =0x02197440
	ldr r6, _02192588 ; =0x000019A8
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r0, [r0, r6]
	cmp r1, r0
	beq _0219255C
	add r0, r4, #0
	bl ovy29_219258c
	pop {r4, r5, r6, pc}
_0219255C:
	add r0, r4, #0
	blx sub_02193DBC
	cmp r0, #0
	beq _0219257E
	ldr r1, [r5]
	mov r2, #2
	add r0, r6, #4
	str r2, [r1, r0]
	pop {r4, r5, r6, pc}
_02192570:
	add r0, r4, #0
	bl ovy29_219258c
	pop {r4, r5, r6, pc}
_02192578:
	add r0, r4, #0
	bl ovy29_219258c
_0219257E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02192580: .word 0x02197440
_02192584: .word 0x00001A1C
_02192588: .word 0x000019A8
	thumb_func_end ovy29_21924d0

	thumb_func_start ovy29_219258c
ovy29_219258c: ; 0x0219258C
	push {r4, lr}
	add r4, r0, #0
	blx sub_02193EF4
	add r0, r4, #0
	blx sub_021956FC
	ldr r0, _021925AC ; =0x02197440
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021925B0 ; =0x00001A1C
	str r2, [r1, r0]
	bl sub_02151674
	pop {r4, pc}
	nop
_021925AC: .word 0x02197440
_021925B0: .word 0x00001A1C
	thumb_func_end ovy29_219258c

	thumb_func_start ovy29_21925b4
ovy29_21925b4: ; 0x021925B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _021926C8 ; =0x02197440
	ldr r4, _021926CC ; =0x000019B0
	ldr r1, [r5]
	strh r0, [r1, r4]
	bl sub_0207BB0C
	add r7, r0, #0
	add r0, r4, #0
	ldr r6, [r5]
	add r0, #0x8c
	ldr r0, [r6, r0]
	str r1, [sp, #4]
	sub r1, r7, r0
	mov r0, #0xfa
	lsl r0, r0, #8
	mul r0, r1
	ldr r1, _021926D0 ; =0x000082EA
	blx sub_0208D868
	add r1, r4, #0
	add r1, #0x94
	ldr r2, _021926D4 ; =0x0000411A
	ldr r1, [r6, r1]
	sub r0, r0, r2
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x94
	str r1, [r6, r0]
	add r1, r4, #0
	ldr r0, [r5]
	add r1, #0x94
	ldr r2, [r0, r1]
	ldr r1, _021926D8 ; =0xFFFFD8F0
	cmp r2, r1
	bge _02192604
	mov r1, #0
	add r4, #0x94
	str r1, [r0, r4]
_02192604:
	ldr r4, _021926DC ; =0x00001A3C
	ldr r2, [r5]
	ldr r0, [sp, #4]
	str r7, [r2, r4]
	add r1, r4, #4
	str r0, [r2, r1]
	blx sub_02197014
	add r1, r4, #0
	ldr r0, [r5]
	add r1, #8
	ldr r2, [r0, r1]
	ldr r1, _021926D4 ; =0x0000411A
	cmp r2, r1
	blt _02192644
	add r7, r4, #0
	add r6, r4, #0
	add r7, #8
	add r6, #8
	add r4, #8
_0219262C:
	blx sub_02197014
	ldr r0, [r5]
	ldr r1, _021926D4 ; =0x0000411A
	ldr r2, [r0, r7]
	sub r1, r2, r1
	str r1, [r0, r6]
	ldr r0, [r5]
	ldr r1, _021926D4 ; =0x0000411A
	ldr r2, [r0, r4]
	cmp r2, r1
	bge _0219262C
_02192644:
	ldr r4, _021926E0 ; =0x000019A8
	ldr r1, [r0, r4]
	cmp r1, #3
	beq _021926C2
	add r1, r4, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0219265E
	cmp r1, #1
	beq _021926A2
	add sp, #8
	cmp r1, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219265E:
	bl sub_021602C0
	cmp r0, #0
	bne _02192684
	mov r0, #1
	mov r6, #1
	bl ovy29_2192414
	cmp r0, #0
	beq _021926C2
	ldr r1, [r5]
	add r0, r4, #4
	str r6, [r1, r0]
	ldr r0, [r5]
	mov r1, #0x3c
	add r4, #0xa0
	add sp, #8
	strh r1, [r0, r4]
	pop {r3, r4, r5, r6, r7, pc}
_02192684:
	bl sub_021602C0
	cmp r0, #1
	bne _021926C2
	mov r0, #0
	bl ovy29_2192464
	cmp r0, #0
	beq _021926C2
	ldr r1, [r5]
	mov r2, #2
	add r0, r4, #4
	str r2, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021926A2:
	add r1, r4, #0
	add r1, #0xa0
	ldrh r1, [r0, r1]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0xa0
	strh r2, [r0, r1]
	add r0, r4, #0
	ldr r2, [r5]
	add r0, #0xa0
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _021926C2
	mov r1, #0
	add r0, r4, #4
	str r1, [r2, r0]
_021926C2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021926C8: .word 0x02197440
_021926CC: .word 0x000019B0
_021926D0: .word 0x000082EA
_021926D4: .word 0x0000411A
_021926D8: .word 0xFFFFD8F0
_021926DC: .word 0x00001A3C
_021926E0: .word 0x000019A8
	thumb_func_end ovy29_21925b4

	thumb_func_start ovy29_21926e4
ovy29_21926e4: ; 0x021926E4
	push {r3, lr}
	ldr r3, _02192708 ; =0x02197440
	ldr r3, [r3]
	cmp r3, #0
	bne _021926F2
	mov r0, #0
	pop {r3, pc}
_021926F2:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	blx sub_02197058
	cmp r0, #0
	beq _02192702
	mov r0, #1
	pop {r3, pc}
_02192702:
	mov r0, #0
	pop {r3, pc}
	nop
_02192708: .word 0x02197440
	thumb_func_end ovy29_21926e4

	thumb_func_start ovy29_219270c
ovy29_219270c: ; 0x0219270C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _0219288C ; =0x02197440
	str r1, [sp, #0x10]
	add r6, r2, #0
	add r2, sp, #0x14
	mov r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0
	bne _02192760
	ldr r5, _02192890 ; =0x00001A4C
	mov r2, #0x20
	add r1, r5, #0
	bl sub_021521E8
	mov r1, #0
	add r2, r5, #0
	str r0, [r4]
	blx MI_CpuFill8
	mov r1, #0x8f
	lsl r1, r1, #6
	mul r1, r6
	add r0, r7, #0
	add r1, #0x20
	mov r2, #0x20
	bl sub_021521E8
	mov r1, #0x22
	ldr r2, [r4]
	lsl r1, r1, #6
	str r0, [r2, r1]
	ldr r1, [r4]
	sub r5, #0xc8
	mov r0, #0
	str r0, [r1, r5]
	bl ovy29_21922c0
_02192760:
	ldr r0, [r4]
	ldr r5, _02192894 ; =0x00001A20
	mov r1, #3
	str r1, [r0, r5]
	mov r2, #0x22
	ldr r1, [r4]
	add r0, r5, #4
	str r1, [r1, r0]
	add r0, r5, #0
	ldr r1, [r4]
	lsl r2, r2, #6
	add r0, #8
	str r2, [r1, r0]
	bl sub_020352E0
	cmp r0, #0
	bne _02192788
	mov r1, #0x41
	lsl r1, r1, #6
	b _0219278A
_02192788:
	ldr r1, _02192898 ; =0x00001001
_0219278A:
	ldr r0, [r4]
	add r5, #0xc
	str r1, [r0, r5]
	ldr r5, _0219289C ; =0x00001A30
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, r5]
	ldr r3, [r4]
	mov r0, #0
	add r2, r5, #4
	str r0, [r3, r2]
	add r2, r5, #0
	ldr r3, [r4]
	add r2, #8
	str r0, [r3, r2]
	add r0, r5, #0
	ldr r2, [r4]
	add r0, #0x1b
	strb r1, [r2, r0]
	add r0, r5, #0
	ldr r1, [r4]
	sub r0, #0x78
	add r0, r1, r0
	mov r1, #1
	add r2, sp, #0x14
	bl sub_0206C4CC
	ldr r0, [r4]
	sub r5, #0x78
	add r0, r0, r5
	mov r1, #0
	bl sub_0206C680
	bl sub_020352E0
	cmp r0, #0
	beq _021927D8
	mov r0, #0x40
	b _021927DA
_021927D8:
	mov r0, #0x41
_021927DA:
	ldr r2, [r4]
	ldr r3, _021928A0 ; =0x00000884
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021928A4 ; =ovy29_219231c
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, _021928A8 ; =0x000019B8
	str r2, [sp, #0xc]
	add r0, r2, r0
	add r2, r2, r3
	sub r3, r3, #4
	bl sub_0206C524
	cmp r0, #0
	bne _02192806
	ldr r0, _021928AC ; =0x021973C0
	ldr r2, _021928B0 ; =0x021973C4
	mov r1, #0
	bl sub_0203CB80
_02192806:
	ldr r0, [r4]
	ldr r1, _021928B4 ; =0x000019AC
	mov r5, #0
	str r5, [r0, r1]
	add r0, r1, #0
	ldr r2, [r4]
	add r0, #0x70
	str r5, [r2, r0]
	mov r7, #1
	sub r0, r1, #4
	ldr r2, [r4]
	str r7, [sp, #0x20]
	str r7, [r2, r0]
	ldr r0, [r4]
	sub r1, #0x24
	add r0, r0, r1
	str r0, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl sub_021602C0
	add r1, sp, #0x14
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	sub r0, r7, #2
	cmp r1, r0
	bne _02192844
	ldr r0, _021928AC ; =0x021973C0
	ldr r2, _021928B8 ; =0x021973C8
	add r1, r5, #0
	bl sub_0203CB80
_02192844:
	ldr r0, [r4]
	ldr r1, _021928BC ; =0x000019A8
	ldr r1, [r0, r1]
	cmp r1, #3
	bne _02192852
	ldr r1, _021928C0 ; =ovy29_21924a8
	b _02192854
_02192852:
	ldr r1, _021928C4 ; =ovy29_21924d0
_02192854:
	str r1, [sp, #0x30]
	mov r5, #0
	mov r1, #0x22
	str r5, [sp, #0x34]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	str r0, [sp, #0x28]
	mov r0, #0x8f
	lsl r0, r0, #6
	mul r0, r6
	add r0, #0x20
	str r0, [sp, #0x2c]
	add r0, sp, #0x18
	blx sub_02196EB4
	ldr r1, [r4]
	ldr r0, _021928C8 ; =0x000019B0
	strh r5, [r1, r0]
	ldr r0, [sp, #0x10]
	blx sub_0219440C
	bl sub_021928CC
	mov r0, #1
	blx sub_021944B0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219288C: .word 0x02197440
_02192890: .word 0x00001A4C
_02192894: .word 0x00001A20
_02192898: .word 0x00001001
_0219289C: .word 0x00001A30
_021928A0: .word 0x00000884
_021928A4: .word ovy29_219231c
_021928A8: .word 0x000019B8
_021928AC: .word 0x021973C0
_021928B0: .word 0x021973C4
_021928B4: .word 0x000019AC
_021928B8: .word 0x021973C8
_021928BC: .word 0x000019A8
_021928C0: .word ovy29_21924a8
_021928C4: .word ovy29_21924d0
_021928C8: .word 0x000019B0
	thumb_func_end ovy29_219270c

	thumb_func_start sub_021928CC
sub_021928CC: ; 0x021928CC
	ldr r0, _021928D8 ; =0x02197440
	ldr r3, _021928DC ; =sub_0206C638
	ldr r1, [r0]
	ldr r0, _021928E0 ; =0x000019B8
	add r0, r1, r0
	bx r3
	.align 2, 0
_021928D8: .word 0x02197440
_021928DC: .word sub_0206C638
_021928E0: .word 0x000019B8
	thumb_func_end sub_021928CC

	thumb_func_start ovy29_21928e4
ovy29_21928e4: ; 0x021928E4
	push {r3, lr}
	ldr r0, _0219292C ; =0x02197440
	ldr r1, _02192930 ; =0x00001A1C
	ldr r2, [r0]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _021928FA
	sub r1, #0x70
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _02192900
_021928FA:
	bl sub_02151674
	pop {r3, pc}
_02192900:
	cmp r1, #1
	bne _02192914
	mov r1, #2
	blx sub_02195858
	cmp r0, #0
	beq _02192914
	bl sub_02151674
	pop {r3, pc}
_02192914:
	ldr r0, _0219292C ; =0x02197440
	ldr r1, [r0]
	ldr r0, _02192930 ; =0x00001A1C
	ldr r0, [r1, r0]
	mov r1, #1
	blx sub_02195858
	cmp r0, #0
	beq _0219292A
	bl sub_02151674
_0219292A:
	pop {r3, pc}
	.align 2, 0
_0219292C: .word 0x02197440
_02192930: .word 0x00001A1C
	thumb_func_end ovy29_21928e4
_02192934:
	.byte 0x02, 0x49, 0x0A, 0x68, 0x02, 0x49, 0x50, 0x50, 0x70, 0x47, 0xC0, 0x46
	.byte 0x40, 0x74, 0x19, 0x02, 0x84, 0x19, 0x00, 0x00

	thumb_func_start ovy29_2192948
ovy29_2192948: ; 0x02192948
	push {r4, r5, r6, lr}
	ldr r0, _021929AC ; =0x02197440
	ldr r1, [r0]
	cmp r1, #0
	beq _021929AA
	ldr r0, _021929B0 ; =0x00001984
	ldr r5, [r1, r0]
	bl sub_020352E0
	cmp r0, #0
	bne _02192964
	bl sub_0207E8D4
	b _02192968
_02192964:
	bl sub_0207E958
_02192968:
	ldr r4, _021929AC ; =0x02197440
	ldr r6, _021929B4 ; =0x000019B8
	ldr r0, [r4]
	add r0, r0, r6
	bl sub_0206C670
	ldr r0, [r4]
	add r0, r0, r6
	bl sub_0206C50C
	blx sub_02196FEC
	mov r0, #0
	mov r6, #0
	bl sub_0207EFC4
	mov r1, #0x22
	ldr r2, [r4]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	mov r0, #0
	mov r2, #0
	bl sub_02152268
	ldr r1, [r4]
	mov r0, #0
	mov r2, #0
	bl sub_02152268
	str r6, [r4]
	cmp r5, #0
	beq _021929AA
	blx r5
_021929AA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021929AC: .word 0x02197440
_021929B0: .word 0x00001984
_021929B4: .word 0x000019B8
	thumb_func_end ovy29_2192948

	thumb_func_start ovy29_21929b8
ovy29_21929b8: ; 0x021929B8
	push {r3, lr}
	sub sp, #0x10
	ldr r0, _021929DC ; =0x02197440
	ldr r0, [r0]
	cmp r0, #0
	beq _021929D6
	add r0, sp, #0
	blx sub_0219680C
	ldr r0, [sp, #4]
	cmp r0, #2
	ble _021929D6
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, pc}
_021929D6:
	mov r0, #0
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021929DC: .word 0x02197440
	thumb_func_end ovy29_21929b8

	thumb_func_start ovy29_21929e0
ovy29_21929e0: ; 0x021929E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, _02192A4C ; =0x02197440
	str r1, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021929F8
	ldr r6, _02192A50 ; =0x000019A8
	ldr r0, [r0, r6]
	cmp r0, #3
	beq _021929FE
_021929F8:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021929FE:
	add r7, r6, #0
	mov r4, #0
	sub r7, #8
	sub r6, #8
_02192A06:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _02192A40
	mov r1, #1
	lsl r1, r4
	ldr r0, [sp]
	tst r0, r1
	beq _02192A40
	ldr r0, _02192A4C ; =0x02197440
	lsl r5, r4, #2
	ldr r0, [r0]
	add r0, r0, r5
	ldr r0, [r0, r6]
	cmp r0, #1
	beq _02192A40
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	blx sub_0219594C
	cmp r0, #0
	beq _02192A36
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02192A36:
	ldr r0, _02192A4C ; =0x02197440
	ldr r0, [r0]
	add r1, r0, r5
	mov r0, #1
	str r0, [r1, r7]
_02192A40:
	add r4, r4, #1
	cmp r4, #2
	blt _02192A06
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02192A4C: .word 0x02197440
_02192A50: .word 0x000019A8
	thumb_func_end ovy29_21929e0

	thumb_func_start ovy29_2192a54
ovy29_2192a54: ; 0x02192A54
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _02192AAC ; =0x02197440
	ldr r0, [r0]
	cmp r0, #0
	beq _02192A68
	ldr r6, _02192AB0 ; =0x000019A8
	ldr r0, [r0, r6]
	cmp r0, #3
	beq _02192A6C
_02192A68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02192A6C:
	add r7, r6, #0
	mov r4, #0
	sub r7, #8
	sub r6, #8
_02192A74:
	ldr r0, [sp]
	cmp r4, r0
	beq _02192AA2
	ldr r0, _02192AAC ; =0x02197440
	lsl r5, r4, #2
	ldr r0, [r0]
	add r0, r0, r5
	ldr r0, [r0, r6]
	cmp r0, #1
	bne _02192AA2
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	blx sub_021959FC
	cmp r0, #0
	beq _02192A98
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02192A98:
	ldr r0, _02192AAC ; =0x02197440
	ldr r0, [r0]
	add r1, r0, r5
	mov r0, #0
	str r0, [r1, r7]
_02192AA2:
	add r4, r4, #1
	cmp r4, #2
	blt _02192A74
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02192AAC: .word 0x02197440
_02192AB0: .word 0x000019A8
	thumb_func_end ovy29_2192a54
_02192AB4:
	.byte 0x08, 0xB5, 0x0A, 0x4A, 0x13, 0x68, 0x00, 0x2B, 0x0F, 0xD0, 0x09, 0x49
	.byte 0x58, 0x52, 0x12, 0x68, 0x6A, 0x31, 0x51, 0x58, 0x00, 0x29, 0x08, 0xD0, 0x00, 0x28, 0x03, 0xD0
	.byte 0x08, 0x1C, 0x01, 0xF0, 0x10, 0xEA, 0x08, 0xBD, 0x08, 0x1C, 0x01, 0xF0, 0x70, 0xE9, 0x08, 0xBD
	.byte 0x40, 0x74, 0x19, 0x02, 0xB2, 0x19, 0x00, 0x00