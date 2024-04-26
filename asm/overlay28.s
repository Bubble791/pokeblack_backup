    .include "macros/function.inc"
	.include "overlay28.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy28_2170340
ovy28_2170340: ; 0x02170340
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r2, #0x8a
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x41
	lsl r2, r2, #8
	bl GFL_HeapCreateChild
	mov r0, #0x89
	str r0, [sp]
	ldr r1, _0217038C ; =0x00003638
	ldr r3, _02170390 ; =0x02172F20
	mov r0, #0x41
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	str r4, [r5]
	bl ovy28_2170c64
	ldr r0, _02170394 ; =0x000030E4
	ldr r4, _02170398 ; =0x0000283E
	add r0, r5, r0
	strb r6, [r5, r4]
	bl ovy28_2170de0
	mov r0, #0x41
	bl sub_0200B50C
	ldr r1, _0217039C ; =0x00003530
	sub r4, #0x14
	str r0, [r5, r1]
	strb r6, [r5, r4]
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0217038C: .word 0x00003638
_02170390: .word 0x02172F20
_02170394: .word 0x000030E4
_02170398: .word 0x0000283E
_0217039C: .word 0x00003530
	thumb_func_end ovy28_2170340

	thumb_func_start ovy28_21703a0
ovy28_21703a0: ; 0x021703A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021703CC ; =0x00003530
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021703B2
	bl GFL_HeapFree
_021703B2:
	add r0, r4, #0
	bl ovy28_2170ba4
	add r0, r4, #0
	bl GFL_HeapFree
	mov r0, #0x41
	bl GFL_HeapDelete
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_021703CC: .word 0x00003530
	thumb_func_end ovy28_21703a0

	thumb_func_start ovy28_21703d0
ovy28_21703d0: ; 0x021703D0
	push {r4, lr}
	add r0, r1, #0
	bl ovy28_2170340
	add r4, r0, #0
	ldr r0, _021703F0 ; =0x00003628
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _021703F4 ; =0x02172C94
	ldr r1, _021703F8 ; =0x0217041D
	add r2, r4, #0
	bl sub_020425EC
	add r0, r4, #0
	pop {r4, pc}
	nop
_021703F0: .word 0x00003628
_021703F4: .word 0x02172C94
_021703F8: .word 0x0217041D
	thumb_func_end ovy28_21703d0

	thumb_func_start ovy28_21703fc
ovy28_21703fc: ; 0x021703FC
	push {r3, lr}
	ldr r0, _02170418 ; =0x00003628
	ldrb r1, [r2, r0]
	cmp r1, #2
	blo _02170414
	mov r1, #3
	strb r1, [r2, r0]
	mov r0, #0
	bl sub_02042A10
	mov r0, #1
	pop {r3, pc}
_02170414:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02170418: .word 0x00003628
	thumb_func_end ovy28_21703fc
_0217041C:
	.byte 0x02, 0x49, 0x02, 0x22
	.byte 0x42, 0x54, 0x02, 0x4B, 0x00, 0x20, 0x18, 0x47, 0x28, 0x36, 0x00, 0x00, 0x51, 0x2F, 0x04, 0x02

	thumb_func_start ovy28_2170430
ovy28_2170430: ; 0x02170430
	push {r4, lr}
	ldr r0, _02170464 ; =0x00003634
	add r4, r2, #0
	mov r1, #1
	str r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0xc
	ldrb r1, [r4, r1]
	cmp r1, #3
	bhs _02170448
	mov r0, #0
	pop {r4, pc}
_02170448:
	mov r1, #4
	sub r0, #0xc
	strb r1, [r4, r0]
	ldr r0, _02170468 ; =sub_02170498
	bl sub_02042860
	cmp r0, #0
	bne _0217045E
	add r0, r4, #0
	bl sub_02170498
_0217045E:
	mov r0, #1
	pop {r4, pc}
	nop
_02170464: .word 0x00003634
_02170468: .word sub_02170498
	thumb_func_end ovy28_2170430

	thumb_func_start ovy28_217046c
ovy28_217046c: ; 0x0217046C
	push {r3, lr}
	ldr r0, _02170494 ; =0x00003628
	ldrb r0, [r2, r0]
	cmp r0, #5
	bne _0217048E
	add r0, r1, #0
	add r1, r2, #0
	bl ovy28_21703a0
	bl sub_020120C8
	cmp r0, #0
	beq _0217048A
	bl sub_02012144
_0217048A:
	mov r0, #1
	pop {r3, pc}
_0217048E:
	mov r0, #0
	pop {r3, pc}
	nop
_02170494: .word 0x00003628
	thumb_func_end ovy28_217046c

	thumb_func_start sub_02170498
sub_02170498: ; 0x02170498
	ldr r1, _021704A0 ; =0x00003628
	mov r2, #5
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021704A0: .word 0x00003628
	thumb_func_end sub_02170498
_021704A4:
	.byte 0x04, 0x49, 0x42, 0x5C, 0x00, 0x2A, 0x04, 0xD1, 0x01, 0x22, 0x42, 0x54
	.byte 0x00, 0x22, 0x49, 0x1C, 0x42, 0x54, 0x70, 0x47, 0x29, 0x36, 0x00, 0x00

	thumb_func_start sub_021704BC
sub_021704BC: ; 0x021704BC
	ldr r1, _021704D0 ; =0x00003629
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _021704CC
	mov r2, #1
	strb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
_021704CC:
	bx lr
	nop
_021704D0: .word 0x00003629
	thumb_func_end sub_021704BC
_021704D4:
	.byte 0x04, 0x49, 0x42, 0x5C, 0x00, 0x2A, 0x04, 0xD1, 0x01, 0x22, 0x42, 0x54
	.byte 0x02, 0x22, 0x49, 0x1C, 0x42, 0x54, 0x70, 0x47, 0x29, 0x36, 0x00, 0x00, 0x03, 0x49, 0x40, 0x5C
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x29, 0x36, 0x00, 0x00

	thumb_func_start ovy28_2170500
ovy28_2170500: ; 0x02170500
	push {r4, r5, r6, lr}
	ldr r5, _021705BC ; =0x00003629
	add r4, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #5
	bhi _021705B8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02170518: ; jump table
	.short _02170524 - _02170518 - 2 ; case 0
	.short _02170534 - _02170518 - 2 ; case 1
	.short _02170556 - _02170518 - 2 ; case 2
	.short _02170574 - _02170518 - 2 ; case 3
	.short _0217058C - _02170518 - 2 ; case 4
	.short _021705A0 - _02170518 - 2 ; case 5
_02170524:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02170530
	mov r0, #1
	pop {r4, r5, r6, pc}
_02170530:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02170534:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02170546
	cmp r0, #1
	beq _02170546
	cmp r0, #2
	beq _0217054E
	b _02170552
_02170546:
	ldr r0, _021705BC ; =0x00003629
	mov r1, #2
_0217054A:
	strb r1, [r4, r0]
	b _021705B8
_0217054E:
	mov r0, #4
	b _02170588
_02170552:
	mov r0, #0
	b _02170588
_02170556:
	mov r1, #4
	sub r0, r5, #1
	strb r1, [r4, r0]
	ldr r0, _021705C0 ; =sub_02170498
	bl sub_02042860
	cmp r0, #0
	bne _0217056C
	add r0, r4, #0
	bl sub_02170498
_0217056C:
	ldr r0, _021705BC ; =0x00003629
	ldrb r1, [r4, r0]
	add r1, r1, #1
	b _0217054A
_02170574:
	sub r1, r5, #1
	ldrb r1, [r4, r1]
	cmp r1, #5
	bne _021705B8
	add r1, r5, #1
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02170586
	b _02170552
_02170586:
	add r0, r0, #1
_02170588:
	strb r0, [r4, r5]
	b _021705B8
_0217058C:
	mov r1, #1
	sub r0, r5, #1
	strb r1, [r4, r0]
	ldr r0, _021705C4 ; =0x02172C94
	ldr r1, _021705C8 ; =0x0217041D
	add r2, r4, #0
	bl sub_020425EC
	ldrb r0, [r4, r5]
	b _02170586
_021705A0:
	sub r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #2
	blo _021705B8
	mov r1, #3
	sub r0, r5, #1
	strb r1, [r4, r0]
	mov r0, #0
	mov r6, #0
	bl sub_02042A10
	strb r6, [r4, r5]
_021705B8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021705BC: .word 0x00003629
_021705C0: .word sub_02170498
_021705C4: .word 0x02172C94
_021705C8: .word 0x0217041D
	thumb_func_end ovy28_2170500

	thumb_func_start ovy28_21705cc
ovy28_21705cc: ; 0x021705CC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r0, r5, #0
	bl ovy28_2170500
	cmp r0, #1
	beq _02170652
	bl sub_02042788
	cmp r0, #0
	beq _02170652
	ldr r4, _02170654 ; =0x00002829
	ldrb r0, [r5, r4]
	cmp r0, #1
	bne _021705F2
	bl sub_02173780
	mov r0, #0
	strb r0, [r5, r4]
_021705F2:
	add r0, r5, #0
	bl ovy28_217084c
	add r0, r5, #0
	bl ovy28_21707c0
	add r0, r5, #0
	bl ovy28_2170774
	add r0, r5, #0
	bl ovy28_2170670
	bl sub_020120C8
	cmp r0, #0
	beq _02170652
	bl sub_02042BC4
	cmp r0, #1
	bne _02170652
	ldr r4, _02170658 ; =0x00003624
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170652
	add r0, #0xc8
	ldrb r1, [r0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02170652
	ldr r0, _0217065C ; =0x00002831
	ldrb r0, [r5, r0]
	cmp r0, #0x2a
	bne _02170652
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	bne _02170652
	add r0, r5, #0
	bl sub_021704BC
	ldr r2, [r5, r4]
	add r0, r2, #0
	add r0, #0xc8
	ldrb r1, [r0]
	mov r0, #2
	add r2, #0xc8
	orr r0, r1
	strb r0, [r2]
_02170652:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02170654: .word 0x00002829
_02170658: .word 0x00003624
_0217065C: .word 0x00002831
	thumb_func_end ovy28_21705cc

	thumb_func_start sub_02170660
sub_02170660: ; 0x02170660
	ldr r2, _0217066C ; =0x0000288F
	mov r1, #0x80
	ldrb r3, [r0, r2]
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	.align 2, 0
_0217066C: .word 0x0000288F
	thumb_func_end sub_02170660

	thumb_func_start ovy28_2170670
ovy28_2170670: ; 0x02170670
	push {r4, r5, r6, lr}
	ldr r6, _02170770 ; =0x00002830
	add r5, r0, #0
	add r0, r5, r6
	add r0, #0x5f
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0217076C
	bl sub_020120C8
	cmp r0, #0
	bne _0217076C
	add r0, r5, r6
	add r0, #0x5f
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _021706A0
	cmp r0, #1
	beq _021706CC
	cmp r0, #2
	beq _0217070A
	pop {r4, r5, r6, pc}
_021706A0:
	bl ovy28_217115c
	cmp r0, #1
	bne _0217076C
	add r0, r5, r6
	add r0, #0x5f
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r5, r6
	add r0, #0x5f
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_021706CC:
	add r0, r5, r6
	add r0, #0x5e
	ldrb r0, [r0]
	bl MATH_CountPopulation
	add r4, r0, #0
	bl sub_02042A78
	cmp r4, r0
	blt _0217076C
	mov r0, #0
	bl sub_02042E9C
	add r0, r5, r6
	add r0, #0x5f
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r5, r6
	add r0, #0x5f
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_0217070A:
	bl sub_02042BC4
	cmp r0, #1
	bne _02170744
	bl sub_02042A78
	cmp r0, #1
	bgt _0217076C
	add r0, r5, #0
	bl sub_021704BC
	add r0, r5, r6
	add r0, #0x5f
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r5, r6
	add r0, #0x5f
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_02170744:
	add r0, r5, #0
	bl sub_021704BC
	add r0, r5, r6
	add r0, #0x5f
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r5, r6
	add r0, #0x5f
	strb r1, [r0]
_0217076C:
	pop {r4, r5, r6, pc}
	nop
_02170770: .word 0x00002830
	thumb_func_end ovy28_2170670

	thumb_func_start ovy28_2170774
ovy28_2170774: ; 0x02170774
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042A78
	cmp r0, #1
	ble _021707AA
	ldr r5, _021707B8 ; =0x0000282D
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02170794
	bl ovy28_217157c
	cmp r0, #1
	bne _02170794
	mov r0, #0
	strb r0, [r4, r5]
_02170794:
	ldr r5, _021707BC ; =0x0000282C
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021707B4
	bl ovy28_21715b0
	cmp r0, #1
	bne _021707B4
	mov r0, #0
	strb r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021707AA:
	ldr r0, _021707B8 ; =0x0000282D
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #1
	strb r1, [r4, r0]
_021707B4:
	pop {r3, r4, r5, pc}
	nop
_021707B8: .word 0x0000282D
_021707BC: .word 0x0000282C
	thumb_func_end ovy28_2170774

	thumb_func_start ovy28_21707c0
ovy28_21707c0: ; 0x021707C0
	push {r4, r5, r6, lr}
	ldr r4, _02170844 ; =0x00003624
	add r5, r0, #0
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _02170842
	add r1, #0xc8
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _02170842
	bl ovy28_2170fc8
	cmp r0, #1
	bne _02170834
	add r0, r5, #0
	bl sub_02171B0C
	cmp r0, #0
	bne _0217082C
	ldr r0, [r5]
	ldr r1, [r5, r4]
	ldr r0, [r0, #0xc]
	ldr r1, [r1]
	bl sub_0216144C
	ldr r1, [r5, r4]
	ldr r6, _02170848 ; =0x0000017F
	ldrb r0, [r1, r6]
	cmp r0, #0
	bne _02170810
	ldr r0, [r1]
	add r1, r1, #4
	bl sub_021616B0
	cmp r0, #1
	bne _02170810
	ldr r0, [r5, r4]
	mov r1, #1
	strb r1, [r0, r6]
_02170810:
	ldr r6, _02170844 ; =0x00003624
	ldr r4, _02170848 ; =0x0000017F
	ldr r1, [r5, r6]
	ldrb r0, [r1, r4]
	cmp r0, #1
	bne _0217082C
	add r0, r1, #4
	bl ovy28_2172574
	cmp r0, #1
	bne _0217082C
	ldr r0, [r5, r6]
	mov r1, #0
	strb r1, [r0, r4]
_0217082C:
	ldr r0, _02170844 ; =0x00003624
	ldr r0, [r5, r0]
	bl sub_0217BE34
_02170834:
	ldr r4, _02170844 ; =0x00003624
	ldr r0, [r5, r4]
	bl ovy28_2172a1c
	ldr r0, [r5, r4]
	bl ovy28_2172a50
_02170842:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02170844: .word 0x00003624
_02170848: .word 0x0000017F
	thumb_func_end ovy28_21707c0

	thumb_func_start ovy28_217084c
ovy28_217084c: ; 0x0217084C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
_02170852:
	add r0, r5, #0
	bl sub_020428A8
	add r4, r0, #0
	beq _02170874
	add r0, r5, #0
	bl sub_020428C8
	add r2, r0, #0
	beq _0217086E
	add r0, r6, #0
	add r1, r4, #0
	bl ovy28_217087c
_0217086E:
	add r0, r5, #0
	bl sub_02173BEC
_02170874:
	add r5, r5, #1
	cmp r5, #0xa
	blt _02170852
	pop {r4, r5, r6, pc}
	thumb_func_end ovy28_217084c

	thumb_func_start ovy28_217087c
ovy28_217087c: ; 0x0217087C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	ldr r1, _0217095C ; =0x00002914
	str r0, [sp]
	add r5, r0, r1
	ldr r0, [sp, #4]
	add r7, r2, #0
	ldrb r0, [r0, #7]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0217089C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0217089C:
	mov r4, #0
_0217089E:
	mov r0, #0x8c
	mul r0, r4
	add r6, r5, r0
	str r0, [sp, #8]
	ldrb r0, [r6, #7]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021708EC
	add r1, r6, #0
	add r0, r7, #0
	add r1, #0x64
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _021708EC
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r2, #0x64
	blx MI_CpuCopy8
	add r2, r5, #0
	ldr r0, [sp, #8]
	add r2, #0x6a
	ldrb r0, [r2, r0]
	cmp r0, #1
	beq _021708DC
	ldr r0, [sp, #8]
	mov r1, #2
	strb r1, [r2, r0]
_021708DC:
	ldr r0, [sp, #8]
	ldr r1, _02170960 ; =0x000001C2
	add r0, r5, r0
	add r0, #0x6c
	strh r1, [r0]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021708EC:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0217089E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ovy28_2170964
	cmp r0, #0
	bne _02170906
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02170906:
	mov r4, #0
	mov r1, #0x8c
_0217090A:
	add r6, r4, #0
	mul r6, r1
	add r0, r5, r6
	str r0, [sp, #0xc]
	ldrb r0, [r0, #7]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0217094E
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r2, #0x64
	blx MI_CpuCopy8
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r1, #0x64
	mov r2, #6
	str r1, [sp, #0xc]
	blx MI_CpuCopy8
	add r0, r5, r6
	add r0, #0x6b
	add r1, r5, r6
	strb r4, [r0]
	mov r0, #1
	add r1, #0x6a
	strb r0, [r1]
	add r1, r5, r6
	ldr r2, _02170960 ; =0x000001C2
	add r1, #0x6c
	strh r2, [r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0217094E:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0217090A
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217095C: .word 0x00002914
_02170960: .word 0x000001C2
	thumb_func_end ovy28_217087c

	thumb_func_start ovy28_2170964
ovy28_2170964: ; 0x02170964
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021709C8 ; =0x00002914
	add r7, r2, #0
	add r4, r0, r1
	mov r0, #0
	str r0, [sp]
_02170970:
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021709B8
	add r6, r4, #0
	mov r5, #0
	add r6, #0x28
_02170980:
	lsl r1, r5, #3
	add r0, r4, r1
	add r0, #0x2f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021709B2
	add r0, r7, #0
	add r1, r6, r1
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _021709B2
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	cmp r0, #0
	beq _021709AE
	mov r0, #1
	add r4, #0x6c
	strh r0, [r4]
_021709AE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021709B2:
	add r5, r5, #1
	cmp r5, #5
	blt _02170980
_021709B8:
	ldr r0, [sp]
	add r4, #0x8c
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0xa
	blt _02170970
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021709C8: .word 0x00002914
	thumb_func_end ovy28_2170964

	thumb_func_start ovy28_21709cc
ovy28_21709cc: ; 0x021709CC
	push {r3, r4, r5, lr}
	ldr r4, _021709DC ; =0x000028B0
	add r5, r0, #0
	add r1, r5, r4
	bl ovy28_21709e0
	add r0, r5, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021709DC: .word 0x000028B0
	thumb_func_end ovy28_21709cc

	thumb_func_start ovy28_21709e0
ovy28_21709e0: ; 0x021709E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02170B3C ; =0x00002830
	add r5, r1, #0
	add r4, r6, r0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x64
	blx MI_CpuFill8
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02170A0E
	bl sub_02042BC4
	cmp r0, #1
	bne _02170A0A
	add r0, r5, #0
	bl OS_GetMacAddress
	b _02170A1E
_02170A0A:
	ldr r0, [r4, #0x20]
	b _02170A14
_02170A0E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02170A1E
_02170A14:
	add r0, #0x64
	add r1, r5, #0
	mov r2, #6
	blx MI_CpuCopy8
_02170A1E:
	bl sub_02042A78
	lsl r0, r0, #0x18
	ldrb r1, [r5, #6]
	mov r2, #7
	lsr r0, r0, #0x18
	mov r7, #7
	bic r1, r2
	and r0, r7
	orr r0, r1
	strb r0, [r5, #6]
	mov r0, #0x17
	strb r0, [r5, #8]
	mov r0, #2
	strb r0, [r5, #9]
	ldrb r0, [r4, #1]
	mov r1, #0xe0
	mov r2, #8
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #7]
	bic r0, r1
	ldrb r1, [r4, #2]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #7]
	ldrb r0, [r4]
	add r1, r5, #0
	add r1, #0xc
	strb r0, [r5, #0xb]
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02008B98
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02008BF4
	lsl r0, r0, #0x1c
	ldrb r1, [r5, #6]
	mov r2, #0xf0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, #6]
	ldr r0, [r6]
	ldr r0, [r0]
	bl MyStatus_GetTrainerGender
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r5, #7]
	mov r2, #8
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, #7]
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02008BD0
	str r0, [r5, #0x5c]
	ldrb r0, [r5, #7]
	mov r1, #7
	bic r0, r1
	ldrb r1, [r4, #0xf]
	and r1, r7
	orr r0, r1
	strb r0, [r5, #7]
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x20]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0x22]
	ldrh r0, [r4, #0xc]
	strh r0, [r5, #0x24]
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02008C0C
	add r1, r5, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02008C10
	add r1, r5, #0
	add r1, #0x27
	add r2, r5, #0
	strb r0, [r1]
	add r4, #0x30
	add r2, #0x28
	mov r1, #0x28
_02170AE2:
	ldrb r0, [r4]
	add r4, r4, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02170AE2
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	bl sub_02016AD8
	bl sub_02017238
	add r1, r5, #0
	add r1, #0x50
	bl sub_0200A3CC
	ldr r0, _02170B40 ; =0x0000352C
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02170B22
	bl sub_0217CEA8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r5, #6]
	mov r2, #8
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, #6]
	b _02170B2A
_02170B22:
	ldrb r1, [r5, #6]
	mov r0, #8
	bic r1, r0
	strb r1, [r5, #6]
_02170B2A:
	ldrb r1, [r5, #7]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #7]
	ldr r0, _02170B44 ; =0x00002829
	mov r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02170B3C: .word 0x00002830
_02170B40: .word 0x0000352C
_02170B44: .word 0x00002829
	thumb_func_end ovy28_21709e0
_02170B48:
	.byte 0x64, 0x20, 0x70, 0x47, 0x0C, 0x4B, 0xD2, 0x5C
	.byte 0xD2, 0x07, 0xD2, 0x0F, 0x01, 0x2A, 0x0B, 0xD1, 0x14, 0x28, 0x01, 0xD0, 0x14, 0x29, 0x01, 0xD1
	.byte 0x00, 0x20, 0x70, 0x47, 0x88, 0x42, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x14, 0x29, 0x03, 0xD3, 0x1B, 0x29, 0x01, 0xD8, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x8A, 0x28, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x02, 0x49, 0x03, 0x4A
	.byte 0x40, 0x18, 0x03, 0x4B, 0x00, 0x21, 0x18, 0x47, 0x14, 0x29, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00
	.byte 0xA8, 0x87, 0x07, 0x02

	thumb_func_start ovy28_2170ba4
ovy28_2170ba4: ; 0x02170BA4
	push {r4, r5, r6, lr}
	mov r6, #0xd5
	add r5, r0, #0
	lsl r6, r6, #6
	mov r4, #0
	str r4, [r5, r6]
	add r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02170BC0
	bl GFL_HeapFree
	add r0, r6, #4
	str r4, [r5, r0]
_02170BC0:
	ldr r4, _02170C18 ; =0x00003548
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170BD0
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_02170BD0:
	ldr r4, _02170C1C ; =0x0000353C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170BE0
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_02170BE0:
	ldr r4, _02170C20 ; =0x00003538
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170BF0
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_02170BF0:
	ldr r4, _02170C24 ; =0x0000352C
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170C00
	bl sub_0217C9C0
	mov r0, #0
	str r0, [r5, r4]
_02170C00:
	ldr r4, _02170C28 ; =0x00003624
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02170C14
	ldr r1, [r5]
	ldr r1, [r1, #0xc]
	bl ovy28_2172968
	mov r0, #0
	str r0, [r5, r4]
_02170C14:
	pop {r4, r5, r6, pc}
	nop
_02170C18: .word 0x00003548
_02170C1C: .word 0x0000353C
_02170C20: .word 0x00003538
_02170C24: .word 0x0000352C
_02170C28: .word 0x00003624
	thumb_func_end ovy28_2170ba4

	thumb_func_start sub_02170C2C
sub_02170C2C: ; 0x02170C2C
	ldr r3, _02170C60 ; =0x00002830
	add r3, r0, r3
	cmp r1, #4
	bhi _02170C5C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02170C40: ; jump table
	.short _02170C4A - _02170C40 - 2 ; case 0
	.short _02170C4E - _02170C40 - 2 ; case 1
	.short _02170C52 - _02170C40 - 2 ; case 2
	.short _02170C56 - _02170C40 - 2 ; case 3
	.short _02170C5A - _02170C40 - 2 ; case 4
_02170C4A:
	str r2, [r3, #0x14]
	bx lr
_02170C4E:
	str r2, [r3, #0x18]
	bx lr
_02170C52:
	str r2, [r3, #0x1c]
	bx lr
_02170C56:
	str r2, [r3, #0x20]
	bx lr
_02170C5A:
	strb r2, [r3]
_02170C5C:
	bx lr
	nop
_02170C60: .word 0x00002830
	thumb_func_end sub_02170C2C

	thumb_func_start ovy28_2170c64
ovy28_2170c64: ; 0x02170C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02170C94 ; =0x00002830
	mov r1, #0
	add r4, r5, r0
	add r0, r4, #0
	mov r2, #0x80
	blx MI_CpuFill8
	ldr r0, _02170C98 ; =0x0000FFFF
	bl sub_02005748
	strh r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xf]
	mov r0, #2
	strb r0, [r4, #1]
	add r4, #0x14
	add r0, r5, #0
	add r1, r4, #0
	bl ovy28_2170ca8
	pop {r3, r4, r5, pc}
	nop
_02170C94: .word 0x00002830
_02170C98: .word 0x0000FFFF
	thumb_func_end ovy28_2170c64

	thumb_func_start sub_02170C9C
sub_02170C9C: ; 0x02170C9C
	mov r1, #0xff
	strb r1, [r0, #0x19]
	strb r1, [r0, #0x1b]
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
	thumb_func_end sub_02170C9C

	thumb_func_start ovy28_2170ca8
ovy28_2170ca8: ; 0x02170CA8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x50
	blx MI_CpuFill8
	add r0, r6, #0
	bl sub_02170C9C
	add r4, r6, #0
	add r4, #0x1c
	add r0, r4, #0
	bl OS_GetMacAddress
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02008BF4
	strb r0, [r4, #6]
	ldr r0, [r5]
	ldr r0, [r0]
	bl MyStatus_GetTrainerGender
	ldrb r1, [r4, #7]
	mov r2, #1
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #1
	and r0, r2
	orr r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	mov r0, #2
	add r6, #0x44
	orr r0, r1
	strb r0, [r4, #7]
	ldr r0, _02170CFC ; =0x0000FFFF
	strh r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02170CFC: .word 0x0000FFFF
	thumb_func_end ovy28_2170ca8

	thumb_func_start ovy28_2170d00
ovy28_2170d00: ; 0x02170D00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r2, [sp]
	add r4, r6, #0
	add r7, r1, #0
	str r3, [sp, #4]
	mov r5, #0
	add r4, #0x1c
_02170D12:
	lsl r0, r5, #3
	add r1, r4, r0
	ldrb r0, [r1, #7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02170D32
	add r0, r7, #0
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _02170D32
	add sp, #8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02170D32:
	add r5, r5, #1
	cmp r5, #5
	blt _02170D12
	mov r4, #0
	add r6, #0x1c
_02170D3C:
	lsl r0, r4, #3
	add r5, r6, r0
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02170D74
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #6
	blx MI_CpuCopy8
	ldr r0, [sp]
	mov r1, #1
	strb r0, [r5, #6]
	ldrb r2, [r5, #7]
	mov r0, #1
	bic r2, r0
	ldr r0, [sp, #4]
	add sp, #8
	and r0, r1
	orr r0, r2
	strb r0, [r5, #7]
	ldrb r1, [r5, #7]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, #7]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02170D74:
	add r4, r4, #1
	cmp r4, #5
	blt _02170D3C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy28_2170d00

	thumb_func_start ovy28_2170d80
ovy28_2170d80: ; 0x02170D80
	push {r3, lr}
	add r3, r1, #0
	ldrb r2, [r3, #6]
	ldrb r3, [r3, #7]
	add r1, #0x64
	lsl r2, r2, #0x18
	lsl r3, r3, #0x1c
	lsr r2, r2, #0x1c
	lsr r3, r3, #0x1f
	bl ovy28_2170d00
	pop {r3, pc}
	thumb_func_end ovy28_2170d80

	thumb_func_start ovy28_2170d98
ovy28_2170d98: ; 0x02170D98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r6, #0x1c
_02170DA2:
	lsl r0, r4, #3
	add r5, r6, r0
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02170DCA
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _02170DCA
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
_02170DCA:
	add r4, r4, #1
	cmp r4, #5
	blt _02170DA2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy28_2170d98
_02170DD4:
	.byte 0x01, 0x4B, 0x64, 0x31, 0x18, 0x47, 0xC0, 0x46, 0x99, 0x0D, 0x17, 0x02

	thumb_func_start ovy28_2170de0
ovy28_2170de0: ; 0x02170DE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _02170E1C ; =0x00000448
	mov r1, #0
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	mov r7, #0xff
	mov r6, #0x24
_02170DF2:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	add r0, #0x1a
	add r1, r7, #0
	mov r2, #6
	blx MI_CpuFill8
	add r4, r4, #1
	cmp r4, #0x1e
	blt _02170DF2
	mov r2, #0
	ldr r1, _02170E20 ; =0x0000043C
	mvn r2, r2
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r1, #8
	str r2, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02170E1C: .word 0x00000448
_02170E20: .word 0x0000043C
	thumb_func_end ovy28_2170de0
_02170E24:
	.byte 0x08, 0x4A, 0x80, 0x18, 0x0A, 0x88, 0x82, 0x80, 0x4A, 0x88, 0xC2, 0x80
	.byte 0x8A, 0x88, 0xC9, 0x88, 0x02, 0x81, 0x41, 0x81, 0x00, 0x21, 0xC1, 0x73, 0x81, 0x89, 0x49, 0x1C
	.byte 0x81, 0x81, 0x01, 0x21, 0x81, 0x73, 0x70, 0x47, 0x30, 0x28, 0x00, 0x00, 0x04, 0x4A, 0x82, 0x18
	.byte 0xD1, 0x73, 0x90, 0x89, 0x40, 0x1C, 0x90, 0x81, 0x01, 0x20, 0x90, 0x73, 0x70, 0x47, 0xC0, 0x46
	.byte 0x30, 0x28, 0x00, 0x00

	thumb_func_start ovy28_2170e64
ovy28_2170e64: ; 0x02170E64
	push {r3, lr}
	cmp r0, #3
	bhi _02170E6E
	beq _02170EB4
	pop {r3, pc}
_02170E6E:
	sub r0, #0x14
	cmp r0, #5
	bhi _02170EC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02170E80: ; jump table
	.short _02170E8C - _02170E80 - 2 ; case 0
	.short _02170E96 - _02170E80 - 2 ; case 1
	.short _02170EA0 - _02170E80 - 2 ; case 2
	.short _02170EAA - _02170E80 - 2 ; case 3
	.short _02170EC6 - _02170E80 - 2 ; case 4
	.short _02170EBE - _02170E80 - 2 ; case 5
_02170E8C:
	mov r0, #0x17
	mov r1, #5
	bl sub_02042D14
	pop {r3, pc}
_02170E96:
	mov r0, #0x18
	mov r1, #5
	bl sub_02042D14
	pop {r3, pc}
_02170EA0:
	mov r0, #0x19
	mov r1, #5
	bl sub_02042D14
	pop {r3, pc}
_02170EAA:
	mov r0, #0x1a
	mov r1, #5
	bl sub_02042D14
	pop {r3, pc}
_02170EB4:
	mov r0, #0x16
	mov r1, #5
	bl sub_02042D14
	pop {r3, pc}
_02170EBE:
	mov r0, #0x1b
	mov r1, #5
	bl sub_02042D14
_02170EC6:
	pop {r3, pc}
	thumb_func_end ovy28_2170e64

	thumb_func_start ovy28_2170ec8
ovy28_2170ec8: ; 0x02170EC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02016B20
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202BDD4
	cmp r0, #0
	beq _02170EEE
	ldr r0, _02170F1C ; =0x02172F30
	ldr r2, _02170F20 ; =0x02172F34
	mov r1, #0
	bl sub_0203CB80
_02170EEE:
	mov r0, #0x37
	str r0, [sp]
	ldr r3, _02170F24 ; =0x02172F6C
	mov r0, #5
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0201736C
	str r0, [r4]
	str r5, [r4, #4]
	str r7, [r4, #8]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	str r6, [r4, #0xc]
	bl sub_0202BD58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02170F1C: .word 0x02172F30
_02170F20: .word 0x02172F34
_02170F24: .word 0x02172F6C
	thumb_func_end ovy28_2170ec8

	thumb_func_start ovy28_2170f28
ovy28_2170f28: ; 0x02170F28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0202BDD4
	cmp r0, #3
	bne _02170FBA
	add r0, r4, #0
	bl sub_0202BDF4
	add r4, r0, #0
	bne _02170F4A
	ldr r0, _02170FBC ; =0x02172F30
	ldr r2, _02170FC0 ; =0x02172F7C
	mov r1, #0
	bl sub_0203CB80
_02170F4A:
	add r0, r5, #0
	bl sub_021804BC
	bl sub_02016B14
	cmp r0, #1
	beq _02170FBA
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_02016DB8
	cmp r0, #1
	beq _02170FBA
	add r0, r4, #0
	bl ovy28_2170fc8
	cmp r0, #1
	bne _02170FBA
	ldr r0, _02170FC4 ; =0x00002830
	ldrb r0, [r4, r0]
	cmp r0, #4
	blo _02170F8E
	cmp r0, #0x17
	bhi _02170F8E
	add r0, r4, #0
	bl sub_02171B0C
	cmp r0, #0
	bne _02170FBA
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02177528
	pop {r3, r4, r5, pc}
_02170F8E:
	cmp r0, #0
	beq _02170F96
	cmp r0, #1
	bne _02170FBA
_02170F96:
	add r0, r4, #0
	bl sub_02171B0C
	cmp r0, #0
	bne _02170FBA
	add r0, r4, #0
	bl sub_02177444
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02177528
	ldr r1, [r4]
	add r0, r4, #0
	ldr r1, [r1, #8]
	add r2, r5, #0
	bl sub_02176F4C
_02170FBA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02170FBC: .word 0x02172F30
_02170FC0: .word 0x02172F7C
_02170FC4: .word 0x00002830
	thumb_func_end ovy28_2170f28

	thumb_func_start ovy28_2170fc8
ovy28_2170fc8: ; 0x02170FC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02170FF8 ; =0x0000282A
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02170FF4
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_02016AF8
	cmp r0, #1
	bne _02170FF4
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_02016AF0
	bl sub_02180424
	cmp r0, #1
	bne _02170FF4
	mov r0, #1
	pop {r4, pc}
_02170FF4:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02170FF8: .word 0x0000282A
	thumb_func_end ovy28_2170fc8

	thumb_func_start ovy28_2170ffc
ovy28_2170ffc: ; 0x02170FFC
	push {r4, r5, r6, lr}
	ldr r0, _02171054 ; =0x00003624
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [r5, r0]
	ldr r2, _02171058 ; =0x0000282A
	mov r1, #1
	strb r1, [r5, r2]
	add r0, r0, #7
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0217101A
	add r0, r6, #0
	bl sub_0219A470
_0217101A:
	add r0, r6, #0
	bl sub_021804D8
	bl sub_02018A54
	cmp r0, #1
	bne _0217103A
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl sub_02016AD8
	add r1, r0, #0
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02177128
_0217103A:
	cmp r4, #0
	beq _02171052
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02171052
	ldr r0, [r4]
	bl sub_021615A4
_02171052:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02171054: .word 0x00003624
_02171058: .word 0x0000282A
	thumb_func_end ovy28_2170ffc

	thumb_func_start ovy28_217105c
ovy28_217105c: ; 0x0217105C
	push {r3, r4, r5, lr}
	ldr r4, _0217109C ; =0x00003624
	add r5, r1, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02171094
	add r1, r0, #0
	add r1, #0xc9
	ldrb r1, [r1]
	cmp r1, #1
	bne _02171080
	ldr r1, [r5]
	ldr r1, [r1, #0xc]
	bl ovy28_2172968
	mov r0, #0
	str r0, [r5, r4]
	b _02171094
_02171080:
	add r1, r0, #0
	add r1, #0xc8
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _02171094
	ldr r0, [r0]
	bl sub_02161544
_02171094:
	ldr r0, _021710A0 ; =0x0000282A
	mov r1, #0
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0217109C: .word 0x00003624
_021710A0: .word 0x0000282A
	thumb_func_end ovy28_217105c
_021710A4:
	.byte 0x01, 0x49, 0x40, 0x58, 0x70, 0x47, 0xC0, 0x46, 0x30, 0x36, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x58, 0x70, 0x47, 0xC0, 0x46, 0x34, 0x36, 0x00, 0x00, 0x01, 0x4A, 0x81, 0x54
	.byte 0x70, 0x47, 0xC0, 0x46, 0x32, 0x28, 0x00, 0x00, 0x01, 0x49, 0x40, 0x5C, 0x70, 0x47, 0xC0, 0x46
	.byte 0x32, 0x28, 0x00, 0x00

	thumb_func_start ovy28_21710d4
ovy28_21710d4: ; 0x021710D4
	push {r3, lr}
	bl sub_02016B20
	bl sub_0202BDF4
	cmp r0, #0
	bne _021710E6
	mov r0, #0
	pop {r3, pc}
_021710E6:
	ldr r1, _02171104 ; =0x00002831
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021710F2
	cmp r1, #0x2a
	bne _021710FE
_021710F2:
	ldr r1, _02171108 ; =0x0000362B
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021710FE
	mov r0, #1
	pop {r3, pc}
_021710FE:
	mov r0, #0
	pop {r3, pc}
	nop
_02171104: .word 0x00002831
_02171108: .word 0x0000362B
	thumb_func_end ovy28_21710d4

	thumb_func_start ovy28_217110c
ovy28_217110c: ; 0x0217110C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r3, r2, #0
	lsl r0, r0, #0xa
	add r4, r1, #0
	cmp r3, r0
	ble _02171128
	str r0, [sp]
	ldr r0, _02171130 ; =0x02172F8C
	ldr r2, _02171134 ; =0x02172F90
	mov r1, #0
	bl sub_0203CB94
_02171128:
	add r1, r4, #4
	lsl r0, r5, #0xb
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02171130: .word 0x02172F8C
_02171134: .word 0x02172F90
	thumb_func_end ovy28_217110c

	thumb_func_start ovy28_2171138
ovy28_2171138: ; 0x02171138
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02170660
	ldr r1, _02171158 ; =0x0000288E
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_02171158: .word 0x0000288E
	thumb_func_end ovy28_2171138

	thumb_func_start ovy28_217115c
ovy28_217115c: ; 0x0217115C
	push {r3, lr}
	bl sub_02040440
	mov r1, #5
	lsl r1, r1, #0xa
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	pop {r3, pc}
	thumb_func_end ovy28_217115c

	thumb_func_start ovy28_2171170
ovy28_2171170: ; 0x02171170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, _02171190 ; =0x00002830
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217118E
	add r0, r6, r7
	ldr r1, [r4]
	add r0, #0x2d
	strb r1, [r0]
_0217118E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02171190: .word 0x00002830
	thumb_func_end ovy28_2171170

	thumb_func_start ovy28_2171194
ovy28_2171194: ; 0x02171194
	push {r0, r1, r2, r3}
	push {r3, lr}
	bl sub_02040440
	ldr r1, _021711B0 ; =0x00001401
	mov r2, #4
	add r3, sp, #8
	bl sub_02042BE8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021711B0: .word 0x00001401
	thumb_func_end ovy28_2171194

	thumb_func_start ovy28_21711b4
ovy28_21711b4: ; 0x021711B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, _021711D4 ; =0x00002830
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021711D2
	add r0, r6, r7
	ldr r1, [r4]
	add r0, #0x2e
	strb r1, [r0]
_021711D2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021711D4: .word 0x00002830
	thumb_func_end ovy28_21711b4

	thumb_func_start ovy28_21711d8
ovy28_21711d8: ; 0x021711D8
	push {r0, r1, r2, r3}
	thumb_func_end ovy28_21711d8

	non_word_aligned_thumb_func_start ovy28_21711da
ovy28_21711da: ; 0x021711DA
	push {r3, lr}
	bl sub_02040440
	ldr r1, _021711F4 ; =0x00001402
	mov r2, #4
	add r3, sp, #8
	bl sub_02042BE8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021711F4: .word 0x00001402
	thumb_func_end ovy28_21711da

	thumb_func_start ovy28_21711f8
ovy28_21711f8: ; 0x021711F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	ldr r7, _0217121C ; =0x00002830
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217121A
	add r1, r4, r7
	add r0, r6, #0
	add r1, #0x24
	mov r2, #8
	blx MI_CpuCopy8
_0217121A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217121C: .word 0x00002830
	thumb_func_end ovy28_21711f8

	thumb_func_start ovy28_2171220
ovy28_2171220: ; 0x02171220
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, r4, #0
	bl OS_GetMacAddress
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #6]
	bl sub_02040440
	ldr r1, _02171250 ; =0x00001403
	mov r2, #8
	add r3, r4, #0
	bl sub_02042BE8
	add sp, #8
	pop {r4, pc}
	nop
_02171250: .word 0x00001403
	thumb_func_end ovy28_2171220

	thumb_func_start ovy28_2171254
ovy28_2171254: ; 0x02171254
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	ldr r7, _02171288 ; =0x00002830
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02171286
	add r0, r4, r7
	add r0, #0x5a
	ldrb r0, [r0]
	mov r1, #0xc
	bic r0, r1
	ldr r1, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1c
	orr r1, r0
	add r0, r4, r7
	add r0, #0x5a
	strb r1, [r0]
_02171286:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02171288: .word 0x00002830
	thumb_func_end ovy28_2171254

	thumb_func_start ovy28_217128c
ovy28_217128c: ; 0x0217128C
	push {r0, r1, r2, r3}
	thumb_func_end ovy28_217128c

	non_word_aligned_thumb_func_start ovy28_217128e
ovy28_217128e: ; 0x0217128E
	push {r3, lr}
	bl sub_02040440
	ldr r1, _021712A8 ; =0x00001404
	mov r2, #4
	add r3, sp, #8
	bl sub_02042BE8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021712A8: .word 0x00001404
	thumb_func_end ovy28_217128e

	thumb_func_start ovy28_21712ac
ovy28_21712ac: ; 0x021712AC
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	ldr r0, [r0, #8]
	add r1, r5, #0
	bl sub_02017378
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02008B34
	ldr r1, _021712D8 ; =0x0000288B
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021712D8: .word 0x0000288B
	thumb_func_end ovy28_21712ac

	thumb_func_start ovy28_21712dc
ovy28_21712dc: ; 0x021712DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02040440
	add r6, r0, #0
	bl sub_02008B08
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201736C
	lsl r2, r4, #0x10
	add r3, r0, #0
	ldr r1, _02171304 ; =0x00001405
	add r0, r6, #0
	lsr r2, r2, #0x10
	bl sub_02042BE8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02171304: .word 0x00001405
	thumb_func_end ovy28_21712dc

	thumb_func_start ovy28_2171308
ovy28_2171308: ; 0x02171308
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02171334
	ldr r0, _02171338 ; =0x00002830
	mov r1, #1
	add r0, r4, r0
	add r0, #0x5d
	strb r1, [r0]
	ldr r1, _0217133C ; =0x00003548
	add r0, r7, #0
	ldr r1, [r4, r1]
	add r2, r6, #0
	blx MI_CpuCopy8
_02171334:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02171338: .word 0x00002830
_0217133C: .word 0x00003548
	thumb_func_end ovy28_2171308

	thumb_func_start ovy28_2171340
ovy28_2171340: ; 0x02171340
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0217137C ; =0x00003544
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02171358
	ldr r0, _02171380 ; =0x02172F8C
	ldr r2, _02171384 ; =0x02172FA8
	mov r1, #0
	bl sub_0203CB80
_02171358:
	bl sub_02040440
	ldr r1, _0217137C ; =0x00003544
	mov r2, #1
	ldr r1, [r4, r1]
	ldr r3, _02171388 ; =0x000006C4
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0217138C ; =0x00001406
	mov r1, #0xff
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_0217137C: .word 0x00003544
_02171380: .word 0x02172F8C
_02171384: .word 0x02172FA8
_02171388: .word 0x000006C4
_0217138C: .word 0x00001406
	thumb_func_end ovy28_2171340

	thumb_func_start ovy28_2171390
ovy28_2171390: ; 0x02171390
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021713CC ; =0x00003544
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021713A8
	ldr r0, _021713D0 ; =0x02172F8C
	ldr r2, _021713D4 ; =0x02172FA8
	mov r1, #0
	bl sub_0203CB80
_021713A8:
	bl sub_02040440
	ldr r1, _021713CC ; =0x00003544
	mov r2, #1
	ldr r1, [r4, r1]
	ldr r3, _021713D8 ; =0x00000678
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _021713DC ; =0x00001406
	mov r1, #0xff
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_021713CC: .word 0x00003544
_021713D0: .word 0x02172F8C
_021713D4: .word 0x02172FA8
_021713D8: .word 0x00000678
_021713DC: .word 0x00001406
	thumb_func_end ovy28_2171390

	thumb_func_start ovy28_21713e0
ovy28_21713e0: ; 0x021713E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _02171440 ; =0x00003624
	add r5, r2, #0
	ldr r4, [r3, r0]
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	bl sub_02016AD8
	add r7, r0, #0
	cmp r4, #0
	beq _0217140A
	ldr r0, [r4]
	cmp r0, #0
	beq _0217140A
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02171418
_0217140A:
	ldr r0, _02171444 ; =0x02172F8C
	ldr r2, _02171448 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02171418:
	add r0, sp, #4
	bl OS_GetMacAddress
	add r0, r7, #0
	bl sub_0201736C
	add r2, r0, #0
	add r0, sp, #4
	str r0, [sp]
	mov r0, #0x5e
	add r5, #0x27
	lsl r0, r0, #2
	ldrb r3, [r5]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_021C3F34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02171440: .word 0x00003624
_02171444: .word 0x02172F8C
_02171448: .word 0x02172FC8
	thumb_func_end ovy28_21713e0

	thumb_func_start ovy28_217144c
ovy28_217144c: ; 0x0217144C
	push {r3, lr}
	ldr r0, _0217146C ; =0x00003624
	ldr r1, [r3, r0]
	cmp r1, #0
	bne _02171462
	ldr r0, _02171470 ; =0x02172F8C
	ldr r2, _02171474 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, pc}
_02171462:
	ldr r0, [r2]
	add r1, #0xde
	strb r0, [r1]
	pop {r3, pc}
	nop
_0217146C: .word 0x00003624
_02171470: .word 0x02172F8C
_02171474: .word 0x02172FC8
	thumb_func_end ovy28_217144c

	thumb_func_start ovy28_2171478
ovy28_2171478: ; 0x02171478
	push {r3, lr}
	ldr r0, _02171498 ; =0x00003624
	ldr r1, [r3, r0]
	cmp r1, #0
	bne _0217148E
	ldr r0, _0217149C ; =0x02172F8C
	ldr r2, _021714A0 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, pc}
_0217148E:
	mov r0, #1
	add r1, #0xca
	strb r0, [r1]
	pop {r3, pc}
	nop
_02171498: .word 0x00003624
_0217149C: .word 0x02172F8C
_021714A0: .word 0x02172FC8
	thumb_func_end ovy28_2171478

	thumb_func_start ovy28_21714a4
ovy28_21714a4: ; 0x021714A4
	push {r3, lr}
	bl sub_02040440
	ldr r1, _021714B8 ; =0x00001409
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	pop {r3, pc}
	nop
_021714B8: .word 0x00001409
	thumb_func_end ovy28_21714a4

	thumb_func_start ovy28_21714bc
ovy28_21714bc: ; 0x021714BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02171518 ; =0x0000352C
	add r4, r3, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021714E6
	ldr r0, _0217151C ; =0x02172F8C
	ldr r2, _02171520 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	ldr r1, _02171524 ; =0x0000282D
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, r1]
	pop {r3, r4, r5, pc}
_021714E6:
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl sub_0217C9C8
	cmp r0, #1
	bne _02171504
	ldr r1, _02171528 ; =0x0000282C
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02171504:
	ldr r1, _02171524 ; =0x0000282D
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	ldrb r2, [r4, r1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_02171518: .word 0x0000352C
_0217151C: .word 0x02172F8C
_02171520: .word 0x02172FC8
_02171524: .word 0x0000282D
_02171528: .word 0x0000282C
	thumb_func_end ovy28_21714bc

	thumb_func_start ovy28_217152c
ovy28_217152c: ; 0x0217152C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02171568 ; =0x0000282B
	mov r7, #0
	strb r7, [r5, r0]
	bl sub_02040440
	add r4, r0, #0
	bl sub_02008B08
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201736C
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r2, _0217156C ; =0x0000140A
	add r0, r4, #0
	mov r1, #0
	add r3, r6, #0
	str r7, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02171568: .word 0x0000282B
_0217156C: .word 0x0000140A
	thumb_func_end ovy28_217152c
_02171570:
	.byte 0x01, 0x48, 0x02, 0x21, 0x19, 0x54, 0x70, 0x47, 0x2B, 0x28, 0x00, 0x00

	thumb_func_start ovy28_217157c
ovy28_217157c: ; 0x0217157C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r2, _021715A0 ; =0x0000140B
	add r1, r4, #0
	str r3, [sp, #0xc]
	bl sub_02042C9C
	add sp, #0x10
	pop {r4, pc}
	nop
_021715A0: .word 0x0000140B
	thumb_func_end ovy28_217157c
_021715A4:
	.byte 0x01, 0x48, 0x01, 0x21, 0x19, 0x54, 0x70, 0x47, 0x2B, 0x28, 0x00, 0x00

	thumb_func_start ovy28_21715b0
ovy28_21715b0: ; 0x021715B0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r2, _021715D4 ; =0x0000140C
	add r1, r4, #0
	str r3, [sp, #0xc]
	bl sub_02042C9C
	add sp, #0x10
	pop {r4, pc}
	nop
_021715D4: .word 0x0000140C
	thumb_func_end ovy28_21715b0

	thumb_func_start ovy28_21715d8
ovy28_21715d8: ; 0x021715D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _02171604
	ldr r0, _02171608 ; =0x0000352C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021715FC
	bne _02171604
	ldr r0, _0217160C ; =0x02172F8C
	ldr r2, _02171610 ; =0x02172FCC
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
_021715FC:
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CD4C
_02171604:
	pop {r3, r4, r5, pc}
	nop
_02171608: .word 0x0000352C
_0217160C: .word 0x02172F8C
_02171610: .word 0x02172FCC
	thumb_func_end ovy28_21715d8

	thumb_func_start ovy28_2171614
ovy28_2171614: ; 0x02171614
	push {r3, lr}
	sub sp, #0x10
	bl sub_02040440
	mov r1, #0
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02171634 ; =0x0000140D
	mov r3, #0
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_02171634: .word 0x0000140D
	thumb_func_end ovy28_2171614

	thumb_func_start ovy28_2171638
ovy28_2171638: ; 0x02171638
	push {r3, lr}
	ldr r0, _02171658 ; =0x0000352C
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _02171650
	bne _02171654
	ldr r0, _0217165C ; =0x02172F8C
	ldr r2, _02171660 ; =0x02172FCC
	mov r1, #0
	bl sub_0203CB80
	pop {r3, pc}
_02171650:
	bl sub_0217CD5C
_02171654:
	pop {r3, pc}
	nop
_02171658: .word 0x0000352C
_0217165C: .word 0x02172F8C
_02171660: .word 0x02172FCC
	thumb_func_end ovy28_2171638

	thumb_func_start ovy28_2171664
ovy28_2171664: ; 0x02171664
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r2, _02171688 ; =0x0000140E
	add r1, r4, #0
	str r3, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	nop
_02171688: .word 0x0000140E
	thumb_func_end ovy28_2171664

	thumb_func_start ovy28_217168c
ovy28_217168c: ; 0x0217168C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _021716B8
	ldr r0, _021716BC ; =0x0000352C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021716B0
	bne _021716B8
	ldr r0, _021716C0 ; =0x02172F8C
	ldr r2, _021716C4 ; =0x02172FCC
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
_021716B0:
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl sub_0217CD68
_021716B8:
	pop {r3, r4, r5, pc}
	nop
_021716BC: .word 0x0000352C
_021716C0: .word 0x02172F8C
_021716C4: .word 0x02172FCC
	thumb_func_end ovy28_217168c

	thumb_func_start ovy28_21716c8
ovy28_21716c8: ; 0x021716C8
	push {r3, lr}
	sub sp, #0x10
	bl sub_02040440
	mov r1, #0
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _021716E8 ; =0x0000140F
	mov r3, #0
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021716E8: .word 0x0000140F
	thumb_func_end ovy28_21716c8

	thumb_func_start ovy28_21716ec
ovy28_21716ec: ; 0x021716EC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02042BC4
	cmp r0, #1
	beq _02171714
	ldr r0, _02171718 ; =0x0000352C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0217170E
	ldr r0, _0217171C ; =0x02172F8C
	ldr r2, _02171720 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
_0217170E:
	add r1, r5, #0
	bl sub_0217CD78
_02171714:
	pop {r3, r4, r5, pc}
	nop
_02171718: .word 0x0000352C
_0217171C: .word 0x02172F8C
_02171720: .word 0x02172FC8
	thumb_func_end ovy28_21716ec

	thumb_func_start ovy28_2171724
ovy28_2171724: ; 0x02171724
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	add r6, r0, #0
	bl sub_0217CE88
	add r3, r0, #0
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _02171754 ; =0x00001410
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02042C9C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02171754: .word 0x00001410
	thumb_func_end ovy28_2171724

	thumb_func_start ovy28_2171758
ovy28_2171758: ; 0x02171758
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0217178C ; =0x0000352C
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, r7]
	add r6, r2, #0
	cmp r0, #0
	bne _02171774
	ldr r0, _02171790 ; =0x02172F8C
	ldr r2, _02171794 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_02171774:
	lsl r2, r4, #0x18
	add r1, r5, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_0217CD98
	lsl r1, r4, #0x18
	ldr r0, [r5, r7]
	lsr r1, r1, #0x18
	bl sub_0217CD88
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217178C: .word 0x0000352C
_02171790: .word 0x02172F8C
_02171794: .word 0x02172FC8
	thumb_func_end ovy28_2171758

	thumb_func_start ovy28_2171798
ovy28_2171798: ; 0x02171798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x28
	mov r6, #0
	blx MI_CpuFill8
	add r2, r7, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x30
	bl OS_GetMacAddress
	bl sub_02040440
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r2, _021717E4 ; =0x00001411
	add r1, r5, #0
	mov r3, #0x28
	str r6, [sp, #0xc]
	bl sub_02042C9C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021717E4: .word 0x00001411
	thumb_func_end ovy28_2171798

	thumb_func_start ovy28_21717e8
ovy28_21717e8: ; 0x021717E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02171810 ; =0x0000352C
	add r4, r2, #0
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _02171802
	ldr r0, _02171814 ; =0x02172F8C
	ldr r2, _02171818 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
_02171802:
	lsl r2, r5, #0x18
	add r1, r3, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_0217CD98
	pop {r3, r4, r5, pc}
	.align 2, 0
_02171810: .word 0x0000352C
_02171814: .word 0x02172F8C
_02171818: .word 0x02172FC8
	thumb_func_end ovy28_21717e8

	thumb_func_start ovy28_217181c
ovy28_217181c: ; 0x0217181C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02040440
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _02171844 ; =0x00001412
	add r1, r4, #0
	mov r3, #0x28
	bl sub_02042C9C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02171844: .word 0x00001412
	thumb_func_end ovy28_217181c

	thumb_func_start ovy28_2171848
ovy28_2171848: ; 0x02171848
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02171886
	ldr r7, _02171888 ; =0x0000352C
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _02171870
	ldr r0, _0217188C ; =0x02172F8C
	ldr r2, _02171890 ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_02171870:
	lsl r2, r5, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_0217CD98
	lsl r1, r5, #0x18
	ldr r0, [r4, r7]
	lsr r1, r1, #0x18
	bl sub_0217CE40
_02171886:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02171888: .word 0x0000352C
_0217188C: .word 0x02172F8C
_02171890: .word 0x02172FC8
	thumb_func_end ovy28_2171848

	thumb_func_start ovy28_2171894
ovy28_2171894: ; 0x02171894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x28
	mov r6, #0
	blx MI_CpuFill8
	add r2, r7, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x30
	bl OS_GetMacAddress
	bl sub_02040440
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r2, _021718E0 ; =0x00001413
	add r1, r5, #0
	mov r3, #0x28
	str r6, [sp, #0xc]
	bl sub_02042C9C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021718E0: .word 0x00001413
	thumb_func_end ovy28_2171894

	thumb_func_start ovy28_21718e4
ovy28_21718e4: ; 0x021718E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02171912
	ldr r0, _02171914 ; =0x0000352C
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0217190C
	ldr r0, _02171918 ; =0x02172F8C
	ldr r2, _0217191C ; =0x02172FC8
	mov r1, #0
	bl sub_0203CB80
	pop {r4, r5, r6, pc}
_0217190C:
	ldrb r1, [r4]
	bl sub_0217CE84
_02171912:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02171914: .word 0x0000352C
_02171918: .word 0x02172F8C
_0217191C: .word 0x02172FC8
	thumb_func_end ovy28_21718e4

	thumb_func_start ovy28_2171920
ovy28_2171920: ; 0x02171920
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	ldr r0, [r0, #8]
	bl sub_02017934
	bl sub_02010044
	add r7, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02171964
	ldr r0, _02171968 ; =0x00002830
	mov r1, #1
	add r0, r4, r0
	add r0, #0x60
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #3
	bl sub_020373EC
	ldr r1, [r4]
	add r0, r7, #0
	ldr r1, [r1, #8]
	add r2, r6, #0
	mov r3, #1
	bl sub_02010078
_02171964:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02171968: .word 0x00002830
	thumb_func_end ovy28_2171920

	thumb_func_start ovy28_217196c
ovy28_217196c: ; 0x0217196C
	push {r0, r1, r2, r3}
	thumb_func_end ovy28_217196c

	non_word_aligned_thumb_func_start ovy28_217196e
ovy28_217196e: ; 0x0217196E
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	add r1, sp, #0x1c
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _02171998 ; =0x00001414
	add r1, r4, #0
	bl sub_02042C9C
	add sp, #0x10
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_02171998: .word 0x00001414
	thumb_func_end ovy28_217196e

	thumb_func_start ovy28_217199c
ovy28_217199c: ; 0x0217199C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_02016AD8
	ldr r5, _021719D4 ; =0x0000354C
	add r1, r0, #0
	add r0, r4, r5
	bl sub_02036DC0
	bl sub_02040440
	add r1, r4, r5
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _021719D8 ; =0x00001415
	mov r1, #0xff
	mov r3, #0xc4
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021719D4: .word 0x0000354C
_021719D8: .word 0x00001415
	thumb_func_end ovy28_217199c

	thumb_func_start ovy28_21719dc
ovy28_21719dc: ; 0x021719DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r1, #0
	ldr r2, _02171A04 ; =ovy28_2171a0c
	add r5, r0, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r6, [r0, #4]
	str r4, [r0, #8]
	ldr r0, _02171A08 ; =0x00003610
	mov r1, #1
	str r1, [r4, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02171A04: .word ovy28_2171a0c
_02171A08: .word 0x00003610
	thumb_func_end ovy28_21719dc

	thumb_func_start ovy28_2171a0c
ovy28_2171a0c: ; 0x02171A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r2]
	add r5, r1, #0
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r6, [r0, #8]
	ldr r0, _02171ABC ; =0x00003610
	str r2, [sp, #0xc]
	add r4, r6, r0
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	cmp r0, #0
	beq _02171A36
	cmp r0, #1
	beq _02171A56
	cmp r0, #2
	beq _02171A90
	b _02171AB4
_02171A36:
	add r0, r6, #0
	bl sub_0217AEF4
	ldr r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, _02171AC0 ; =0x02172DB8
	ldrb r2, [r0, r1]
	cmp r2, #0x1b
	beq _02171A50
	add r0, r6, #0
	mov r1, #4
	bl sub_02170C2C
_02171A50:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_02171A56:
	str r7, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc
	str r0, [sp, #8]
	ldr r3, [r4, #8]
	ldr r2, [sp, #0xc]
	ldr r4, [r4, #4]
	add r1, r6, #0
	lsl r6, r4, #3
	ldr r4, _02171AC4 ; =0x02172DB4
	ldr r0, [sp, #0x10]
	ldr r2, [r2, #4]
	ldr r4, [r4, r6]
	blx r4
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02171A84
	add r0, r7, #0
	bl sub_02016D68
	b _02171AB4
_02171A84:
	cmp r0, #1
	bne _02171AB4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02171AB4
_02171A90:
	ldr r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, _02171AC8 ; =0x02172DB9
	ldrb r2, [r0, r1]
	cmp r2, #0x1b
	beq _02171AA4
	add r0, r6, #0
	mov r1, #4
	bl sub_02170C2C
_02171AA4:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	strb r0, [r4, #0xc]
	str r0, [r4]
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02171AB4:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02171ABC: .word 0x00003610
_02171AC0: .word 0x02172DB8
_02171AC4: .word 0x02172DB4
_02171AC8: .word 0x02172DB9
	thumb_func_end ovy28_2171a0c

	thumb_func_start ovy28_2171acc
ovy28_2171acc: ; 0x02171ACC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02171B00 ; =0x00003614
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r6, r2, #0
	cmp r1, #0
	bne _02171AE4
	sub r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02171AEE
_02171AE4:
	ldr r0, _02171B04 ; =0x02172FEC
	ldr r2, _02171B08 ; =0x02172FF0
	mov r1, #0
	bl sub_0203CB80
_02171AEE:
	ldr r1, _02171B00 ; =0x00003614
	str r4, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	mov r0, #0
	add r1, #8
	strb r0, [r5, r1]
	pop {r4, r5, r6, pc}
	nop
_02171B00: .word 0x00003614
_02171B04: .word 0x02172FEC
_02171B08: .word 0x02172FF0
	thumb_func_end ovy28_2171acc

	thumb_func_start sub_02171B0C
sub_02171B0C: ; 0x02171B0C
	ldr r1, _02171B24 ; =0x00003614
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _02171B20
	sub r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02171B20
	mov r0, #0
	bx lr
_02171B20:
	mov r0, #1
	bx lr
	.align 2, 0
_02171B24: .word 0x00003614
	thumb_func_end sub_02171B0C

	thumb_func_start ovy28_2171b28
ovy28_2171b28: ; 0x02171B28
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	ldrb r1, [r4]
	cmp r1, #0
	bne _02171B46
	str r3, [sp]
	add r1, r2, #0
	ldr r2, _02171B58 ; =0x000000BA
	ldr r3, _02171B5C ; =0x0216DD6C
	bl sub_020195C0
	ldr r1, [sp, #0x14]
	str r0, [r1]
	b _02171B4C
_02171B46:
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02171B4C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02171B58: .word 0x000000BA
_02171B5C: .word 0x0216DD6C
	thumb_func_end ovy28_2171b28

	thumb_func_start ovy28_2171b60
ovy28_2171b60: ; 0x02171B60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x28]
	add r7, r2, #0
	ldrb r1, [r4]
	add r5, r3, #0
	ldr r6, [sp, #0x24]
	cmp r1, #7
	bhi _02171C2A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02171B7E: ; jump table
	.short _02171B8E - _02171B7E - 2 ; case 0
	.short _02171BA2 - _02171B7E - 2 ; case 1
	.short _02171BAA - _02171B7E - 2 ; case 2
	.short _02171BB0 - _02171B7E - 2 ; case 3
	.short _02171BC4 - _02171B7E - 2 ; case 4
	.short _02171BEC - _02171B7E - 2 ; case 5
	.short _02171C08 - _02171B7E - 2 ; case 6
	.short _02171C12 - _02171B7E - 2 ; case 7
_02171B8E:
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_02171B98:
	str r0, [r6]
_02171B9A:
	ldrb r0, [r4]
	add r0, r0, #1
_02171B9E:
	strb r0, [r4]
	b _02171C30
_02171BA2:
	add r1, r7, #0
	bl sub_020193A4
	b _02171B98
_02171BAA:
	ldr r1, _02171C38 ; =0x000000C2
	ldr r2, _02171C3C ; =0x021C640C
	b _02171BE6
_02171BB0:
	bl sub_02016AD4
	cmp r0, #0
	bne _02171C30
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _02171BC2
	mov r0, #4
	b _02171B9E
_02171BC2:
	b _02171BFC
_02171BC4:
	ldr r3, [r5, #0x20]
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r1, [r3]
	ldr r1, [r5, #0x1c]
	str r1, [r3, #4]
	ldr r1, [r5, #0xc]
	strh r1, [r3, #8]
	strb r2, [r3, #0xa]
	ldr r1, [r5, #0x10]
	strb r1, [r3, #0xb]
	mov r1, #1
	str r1, [r3, #0xc]
	str r2, [r3, #0x10]
	ldr r1, _02171C40 ; =0x0000011C
	ldr r2, _02171C44 ; =0x021E7D9C
	str r3, [r5, #0x20]
_02171BE6:
	bl sub_02016A98
	b _02171B9A
_02171BEC:
	bl sub_02016AD4
	cmp r0, #0
	bne _02171C30
	bl sub_020120C8
	cmp r0, #0
	beq _02171C00
_02171BFC:
	mov r0, #6
	b _02171B9E
_02171C00:
	mov r0, #1
	str r0, [r5, #8]
	mov r0, #2
	b _02171B9E
_02171C08:
	bl sub_02019494
	str r0, [r6]
	mov r0, #7
	b _02171B9E
_02171C12:
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r1, r7, #0
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	str r0, [r6]
	mov r0, #8
	b _02171B9E
_02171C2A:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02171C30:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02171C38: .word 0x000000C2
_02171C3C: .word 0x021C640C
_02171C40: .word 0x0000011C
_02171C44: .word 0x021E7D9C
	thumb_func_end ovy28_2171b60

	thumb_func_start ovy28_2171c48
ovy28_2171c48: ; 0x02171C48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r5, r1, #0
	str r0, [sp, #0x28]
	ldr r0, _02171ED0 ; =0x00003610
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	add r7, r5, r0
	bl sub_020120C8
	cmp r0, #0
	beq _02171C72
	ldrb r0, [r4]
	cmp r0, #2
	bls _02171C72
	cmp r0, #0xd
	bhi _02171C72
	mov r0, #0x10
	strb r0, [r4]
_02171C72:
	ldr r0, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02171C80
	add r1, r5, #0
	bl sub_0217CA1C
_02171C80:
	ldrb r0, [r4]
	cmp r0, #0x13
	bls _02171C88
	b _02171EC4
_02171C88:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02171C94: ; jump table
	.short _02171CBC - _02171C94 - 2 ; case 0
	.short _02171CD8 - _02171C94 - 2 ; case 1
	.short _02171CE2 - _02171C94 - 2 ; case 2
	.short _02171D1C - _02171C94 - 2 ; case 3
	.short _02171D2A - _02171C94 - 2 ; case 4
	.short _02171D3C - _02171C94 - 2 ; case 5
	.short _02171D46 - _02171C94 - 2 ; case 6
	.short _02171D56 - _02171C94 - 2 ; case 7
	.short _02171D60 - _02171C94 - 2 ; case 8
	.short _02171D6E - _02171C94 - 2 ; case 9
	.short _02171D90 - _02171C94 - 2 ; case 10
	.short _02171DA0 - _02171C94 - 2 ; case 11
	.short _02171DF0 - _02171C94 - 2 ; case 12
	.short _02171E0E - _02171C94 - 2 ; case 13
	.short _02171E3C - _02171C94 - 2 ; case 14
	.short _02171E80 - _02171C94 - 2 ; case 15
	.short _02171E8C - _02171C94 - 2 ; case 16
	.short _02171EA6 - _02171C94 - 2 ; case 17
	.short _02171EAE - _02171C94 - 2 ; case 18
	.short _02171EC4 - _02171C94 - 2 ; case 19
_02171CBC:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_02171CC8:
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_02016D68
	ldrb r0, [r4]
	add r0, r0, #1
_02171CD4:
	strb r0, [r4]
	b _02171ECA
_02171CD8:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_020193A4
	b _02171CC8
_02171CE2:
	ldr r0, _02171ED8 ; =0x00000045
	bl GFL_OvlLoad
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201736C
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	mov r6, #5
	bl sub_0217C940
	ldr r1, _02171ED4 ; =0x0000352C
	str r0, [r5, r1]
	ldr r0, _02171EDC ; =0x00002830
	add r0, r5, r0
	add r0, #0x5a
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02171D16
	strb r6, [r4]
	b _02171ECA
_02171D16:
	ldrb r0, [r4]
	add r0, r0, #1
_02171D1A:
	b _02171CD4
_02171D1C:
	bl sub_02040440
	mov r1, #9
	mov r2, #0x14
	bl sub_02040624
	b _02171D16
_02171D2A:
	bl sub_02040440
	mov r1, #9
	mov r2, #0x14
	bl sub_02040664
	cmp r0, #1
	bne _02171D9C
	b _02171D52
_02171D3C:
	bl ovy28_2171614
	cmp r0, #1
	bne _02171D9C
	b _02171D16
_02171D46:
	ldr r0, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r0]
	bl sub_0217CD64
	cmp r0, #1
	bne _02171D9C
_02171D52:
	mov r0, #7
	b _02171D1A
_02171D56:
	bl ovy28_21716c8
	cmp r0, #1
	bne _02171D9C
	b _02171D16
_02171D60:
	ldr r0, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r0]
	bl sub_0217CDFC
	cmp r0, #1
	bne _02171D9C
	b _02171D16
_02171D6E:
	ldr r0, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r0]
	bl sub_0217CF80
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201736C
	add r1, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl ovy28_2171798
	cmp r0, #1
	bne _02171D9C
	b _02171D16
_02171D90:
	ldr r0, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r0]
	bl sub_0217CE0C
	cmp r0, #1
	beq _02171D9E
_02171D9C:
	b _02171ECA
_02171D9E:
	b _02171D16
_02171DA0:
	ldr r0, _02171EDC ; =0x00002830
	add r0, r5, r0
	add r0, #0x5a
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02171DD8
	ldr r7, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r7]
	bl sub_0217CF80
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201736C
	add r1, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl ovy28_2171894
	cmp r0, #1
	bne _02171ECA
	ldr r0, [r5, r7]
	bl sub_0217CE8C
	b _02171E0A
_02171DD8:
	ldr r0, _02171EDC ; =0x00002830
	ldrb r0, [r5, r0]
	bl ovy28_2170e64
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x14
	bl sub_02040624
	mov r0, #0xc
	b _02171D1A
_02171DF0:
	bl sub_02040440
	mov r1, #0xa
	mov r2, #0x14
	bl sub_02040664
	cmp r0, #1
	bne _02171ECA
	bl sub_02040440
	mov r1, #1
	bl sub_02042A9C
_02171E0A:
	mov r0, #0xd
	b _02171D1A
_02171E0E:
	mov r0, #0
	bl sub_02042E9C
	ldr r0, _02171EDC ; =0x00002830
	ldr r3, [r7, #8]
	ldrb r0, [r5, r0]
	cmp r0, #3
	ldr r0, _02171ED4 ; =0x0000352C
	bne _02171E2C
	ldr r0, [r5, r0]
	ldr r1, _02171EE0 ; =0x00000046
	str r0, [r3]
	add r0, r6, #0
	ldr r2, _02171EE4 ; =0x0217F910
	b _02171E36
_02171E2C:
	ldr r0, [r5, r0]
	ldr r1, _02171EE8 ; =0x000000D8
	str r0, [r3]
	ldr r2, _02171EEC ; =0x021C08D0
	add r0, r6, #0
_02171E36:
	bl sub_02016A98
	b _02171D16
_02171E3C:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _02171ECA
	ldr r0, _02171EDC ; =0x00002830
	ldrb r0, [r5, r0]
	cmp r0, #0x19
	bne _02171E7E
	ldr r0, [r7, #8]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _02171E7C
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_020173AC
	add r2, r0, #0
	ldr r0, [r5]
	ldr r1, _02171EF0 ; =0x000001A6
	ldr r0, [r0, #8]
	bl sub_02030078
	lsl r0, r0, #0x10
	ldr r1, _02171EF4 ; =0x0000FFFF
	lsr r0, r0, #0x10
	mov r2, #6
	mov r3, #0x3c
	bl sub_02005E08
	mov r0, #0xf
	b _02171D1A
_02171E7C:
	b _02171E88
_02171E7E:
	b _02171E88
_02171E80:
	bl sub_02005EC0
	cmp r0, #0
	bne _02171ECA
_02171E88:
	mov r0, #0x10
	b _02171D1A
_02171E8C:
	ldr r6, _02171ED4 ; =0x0000352C
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02171EA2
	bl sub_0217C9C0
	mov r0, #0
	str r0, [r5, r6]
	ldr r0, _02171ED8 ; =0x00000045
	bl GFL_OvlUnload
_02171EA2:
	mov r0, #0x11
	b _02171D1A
_02171EA6:
	add r0, r6, #0
	bl sub_02019494
	b _02171CC8
_02171EAE:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	b _02171CC8
_02171EC4:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02171ECA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02171ED0: .word 0x00003610
_02171ED4: .word 0x0000352C
_02171ED8: .word 0x00000045
_02171EDC: .word 0x00002830
_02171EE0: .word 0x00000046
_02171EE4: .word 0x0217F910
_02171EE8: .word 0x000000D8
_02171EEC: .word 0x021C08D0
_02171EF0: .word 0x000001A6
_02171EF4: .word 0x0000FFFF
	thumb_func_end ovy28_2171c48

	thumb_func_start ovy28_2171ef8
ovy28_2171ef8: ; 0x02171EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x30]
	add r5, r0, #0
	ldrb r0, [r4]
	add r6, r2, #0
	cmp r0, #0
	bne _02171F38
	bl sub_02040440
	bl sub_02042A6C
	lsl r0, r0, #4
	add r0, #0x58
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x26
	mov r7, #0
	lsl r0, r0, #0xe
	str r0, [sp, #0x10]
	str r7, [sp, #0xc]
	str r7, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x96
	add r3, sp, #8
	str r7, [sp, #4]
	bl sub_0217DB40
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	b _02171F3E
_02171F38:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02171F3E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy28_2171ef8

	thumb_func_start ovy28_2171f4c
ovy28_2171f4c: ; 0x02171F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x30]
	add r5, r0, #0
	ldrb r0, [r4]
	add r6, r2, #0
	cmp r0, #0
	bne _02171F8C
	bl sub_02040440
	bl sub_02042A6C
	lsl r0, r0, #4
	add r0, #0x58
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x26
	mov r7, #0
	lsl r0, r0, #0xe
	str r0, [sp, #0x10]
	str r7, [sp, #0xc]
	str r7, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x97
	add r3, sp, #8
	str r7, [sp, #4]
	bl sub_0217DB40
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	b _02171F92
_02171F8C:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02171F92:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy28_2171f4c

	thumb_func_start ovy28_2171fa0
ovy28_2171fa0: ; 0x02171FA0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, [sp, #0x28]
	ldrb r1, [r5]
	cmp r1, #0
	bne _02171FD0
	mov r1, #0x2e
	lsl r1, r1, #0xe
	str r1, [sp, #8]
	mov r1, #0x3a
	mov r4, #0
	lsl r1, r1, #0xe
	str r1, [sp, #0x10]
	str r4, [sp, #0xc]
	add r1, r2, #0
	str r4, [sp]
	ldr r2, _02171FE4 ; =0x000001A6
	add r3, sp, #8
	str r4, [sp, #4]
	bl sub_0217DB40
	ldr r1, [sp, #0x24]
	str r0, [r1]
	b _02171FD6
_02171FD0:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_02171FD6:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02171FE4: .word 0x000001A6
	thumb_func_end ovy28_2171fa0

	thumb_func_start ovy28_2171fe8
ovy28_2171fe8: ; 0x02171FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x10]
	str r0, [sp, #0x48]
	ldr r1, _021722F8 ; =0x00003624
	ldr r0, [sp, #0x10]
	add r5, r3, #0
	ldr r0, [r0, r1]
	add r4, r5, #0
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0xd0
	ldr r6, [sp, #0x50]
	str r2, [sp, #0x14]
	add r4, #0xa8
	ldr r7, [r0]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x24]
	ldrb r0, [r6]
	cmp r0, #2
	bls _02172026
	cmp r0, #7
	bhs _02172026
	add r0, r5, #0
	bl sub_021998D4
_02172026:
	ldrb r0, [r6]
	cmp r0, #0x11
	bls _0217202E
	b _02172372
_0217202E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0217203A: ; jump table
	.short _0217205E - _0217203A - 2 ; case 0
	.short _0217206C - _0217203A - 2 ; case 1
	.short _02172076 - _0217203A - 2 ; case 2
	.short _02172084 - _0217203A - 2 ; case 3
	.short _02172092 - _0217203A - 2 ; case 4
	.short _021720AC - _0217203A - 2 ; case 5
	.short _021720E8 - _0217203A - 2 ; case 6
	.short _021720FA - _0217203A - 2 ; case 7
	.short _0217210A - _0217203A - 2 ; case 8
	.short _02172196 - _0217203A - 2 ; case 9
	.short _021721B2 - _0217203A - 2 ; case 10
	.short _021721D4 - _0217203A - 2 ; case 11
	.short _021721EE - _0217203A - 2 ; case 12
	.short _0217225A - _0217203A - 2 ; case 13
	.short _02172348 - _0217203A - 2 ; case 14
	.short _02172350 - _0217203A - 2 ; case 15
	.short _02172372 - _0217203A - 2 ; case 16
	.short _02172378 - _0217203A - 2 ; case 17
_0217205E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
	b _02172364
_0217206C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	bl sub_020193A4
	b _02172364
_02172076:
	ldr r0, _021722FC ; =0x000000A4
	bl GFL_OvlLoad
	add r0, r5, #0
	bl sub_021998C0
	b _02172258
_02172084:
	ldr r0, [sp, #0xc]
	ldr r1, _02172300 ; =0x000000A5
	ldr r2, _02172304 ; =0x021A4CE0
	add r3, r5, #0
_0217208C:
	bl sub_02016A98
	b _02172258
_02172092:
	ldr r0, [sp, #0xc]
	bl sub_02016AD4
	cmp r0, #0
	beq _0217209E
	b _0217237C
_0217209E:
	ldr r0, [r5, #0x50]
	cmp r0, #1
	bne _021720A8
	mov r0, #5
	b _0217237A
_021720A8:
	mov r0, #7
	b _0217237A
_021720AC:
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #0xc]
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	bl sub_02016AD8
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r5]
	bl sub_0201FDF8
	mov r1, #0
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x4c]
	strb r1, [r4, #0xd]
	strb r0, [r4, #0xf]
	ldr r0, [r4, #8]
	strb r1, [r4, #0x10]
	bl GameData_GetPokedex
	bl sub_0200D1AC
	str r0, [r4, #0x18]
	ldr r0, [sp, #0xc]
	ldr r1, _02172308 ; =0x000000CF
	ldr r2, _0217230C ; =0x021BB6A0
	add r3, r4, #0
	b _0217208C
_021720E8:
	ldr r0, [sp, #0xc]
	bl sub_02016AD4
	cmp r0, #0
	bne _021721EA
	ldrb r0, [r4, #0xf]
	str r0, [r5, #0x4c]
	mov r0, #3
	b _0217237A
_021720FA:
	add r0, r5, #0
	bl sub_021998C8
	ldr r0, _021722FC ; =0x000000A4
	bl GFL_OvlUnload
	mov r0, #8
	b _0217237A
_0217210A:
	bl sub_020120C8
	cmp r0, #0
	beq _02172114
	b _021721DC
_02172114:
	ldr r3, [r5, #0x50]
	cmp r3, #0
	beq _02172124
	ldr r0, _02172310 ; =0x02172FEC
	ldr r2, _02172314 ; =0x02173040
	mov r1, #0
	bl sub_0203CB94
_02172124:
	ldr r3, [r5, #0x4c]
	cmp r3, #6
	beq _02172134
	ldr r0, _02172310 ; =0x02172FEC
	ldr r2, _02172318 ; =0x0217305C
	mov r1, #0
	bl sub_0203CB94
_02172134:
	ldr r0, [sp, #0x24]
	lsl r1, r0, #2
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	mov r0, #0x41
	bl sub_0201FD00
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl sub_020200AC
	add r0, r7, #0
	bl sub_0201FD28
	mov r4, #0
_0217215A:
	add r0, r5, r4
	add r0, #0x59
	ldrb r1, [r0]
	cmp r1, #0
	beq _0217217A
	ldr r0, [sp, #0x20]
	sub r1, r1, #1
	bl sub_0201FF08
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0201FD6C
	add r4, r4, #1
	cmp r4, #6
	blt _0217215A
_0217217A:
	ldr r0, [sp, #0x20]
	bl GFL_HeapFree
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl ovy28_2172b4c
	bl sub_02040440
	mov r1, #0x16
	mov r2, #0x14
	bl sub_02040624
	b _02172258
_02172196:
	bl sub_020120C8
	cmp r0, #0
	beq _021721A0
	b _021721DC
_021721A0:
	bl sub_02040440
	mov r1, #0x16
	mov r2, #0x14
	bl sub_02040664
	cmp r0, #1
	bne _021721EA
	b _02172258
_021721B2:
	bl sub_020120C8
	cmp r0, #0
	beq _021721BC
	b _021721DC
_021721BC:
	ldr r0, [sp, #0x24]
	lsl r1, r0, #2
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ovy28_217267c
	cmp r0, #1
	bne _021721EA
	b _02172258
_021721D4:
	bl sub_020120C8
	cmp r0, #0
	beq _021721E0
_021721DC:
	mov r0, #0x11
	b _0217237A
_021721E0:
	ldr r0, [sp, #0x28]
	bl ovy28_2172b20
	cmp r0, #1
	beq _021721EC
_021721EA:
	b _0217237C
_021721EC:
	b _02172258
_021721EE:
	ldr r0, [sp, #0x24]
	ldr r3, _0217231C ; =0x00003530
	lsl r1, r0, #2
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	add r2, r0, #0
	str r1, [r7]
	ldr r1, [sp, #0x28]
	add r2, #0x14
	add r1, r1, r2
	ldr r2, [sp, #0x24]
	ldrb r2, [r1, r2]
	strb r2, [r7, #0x12]
	ldr r2, [sp, #0x10]
	ldr r2, [r2, r3]
	str r2, [r7, #0x14]
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0217222E
	ldr r2, [sp, #0x28]
	add r0, #0x14
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	mov r3, #2
	ldrb r1, [r1, r2]
	and r0, r3
	and r1, r3
	cmp r0, r1
	bne _02172232
_0217222E:
	ldr r0, _02172320 ; =0x00000489
	b _02172234
_02172232:
	ldr r0, _02172324 ; =0x0000048A
_02172234:
	strh r0, [r7, #0x10]
	add r2, r7, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0xc]
	add r2, #0x18
	mov r3, #0x41
	bl ovy28_2172b8c
	ldr r3, [sp, #0x10]
	ldr r2, _02172328 ; =0x00002830
	ldr r0, [sp, #0xc]
	ldrb r2, [r3, r2]
	ldr r1, [sp, #0x14]
	add r3, r7, #0
	bl sub_02152704
	ldr r1, [sp, #0x4c]
	str r0, [r1]
_02172258:
	b _0217236C
_0217225A:
	bl sub_020120C8
	cmp r0, #0
	bne _0217233C
	ldr r0, [sp, #0xc]
	bl sub_02016AD8
	bl sub_02017238
	add r4, r0, #0
	bl sub_02042A78
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	mov r5, #0
	add r1, r1, r0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	mov r0, #1
	and r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _0217233C
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, #0x18
	str r0, [sp, #0x2c]
_02172296:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	beq _02172334
	mov r1, #0x2c
	add r2, r5, #0
	mul r2, r1
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	add r1, r1, r2
	add r2, sp, #0x30
	bl sub_0200A438
	cmp r0, #1
	bne _02172334
	ldr r0, [sp, #0x28]
	add r1, r0, r5
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	mov r0, #1
	and r1, r0
	ldr r0, [sp, #0x18]
	cmp r0, r1
	bne _021722C8
	b _0217232C
_021722C8:
	ldr r0, [r7, #0x58]
	cmp r0, #0
	beq _021722D8
	cmp r0, #1
	beq _021722EA
	cmp r0, #2
	beq _0217232C
	b _02172334
_021722D8:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
_021722E4:
	bl sub_0200A2D4
	b _02172334
_021722EA:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [sp, #0x30]
	mov r2, #0
	mov r3, #1
	b _021722E4
	.align 2, 0
_021722F8: .word 0x00003624
_021722FC: .word 0x000000A4
_02172300: .word 0x000000A5
_02172304: .word 0x021A4CE0
_02172308: .word 0x000000CF
_0217230C: .word 0x021BB6A0
_02172310: .word 0x02172FEC
_02172314: .word 0x02173040
_02172318: .word 0x0217305C
_0217231C: .word 0x00003530
_02172320: .word 0x00000489
_02172324: .word 0x0000048A
_02172328: .word 0x00002830
_0217232C:
	ldr r1, [sp, #0x30]
	add r0, r4, #0
	bl sub_0200A29C
_02172334:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blt _02172296
_0217233C:
	add r7, #0x18
	add r0, r7, #0
	bl sub_02172C60
	mov r0, #0x10
	b _0217237A
_02172348:
	ldr r0, [sp, #0xc]
	bl sub_02019494
	b _02172364
_02172350:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
_02172364:
	add r1, r0, #0
	ldr r0, [sp, #0x48]
	bl sub_02016D68
_0217236C:
	ldrb r0, [r6]
	add r0, r0, #1
	b _0217237A
_02172372:
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02172378:
	mov r0, #0xe
_0217237A:
	strb r0, [r6]
_0217237C:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy28_2171fe8

	thumb_func_start ovy28_2172384
ovy28_2172384: ; 0x02172384
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x18]
	add r5, r1, #0
	ldrb r1, [r4]
	ldr r6, _021723B0 ; =0x00002830
	cmp r1, #0
	bne _021723A0
	add r1, r2, #0
	ldrb r2, [r5, r6]
	bl sub_02152704
	ldr r1, [sp, #0x14]
	str r0, [r1]
	b _021723A4
_021723A0:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021723A4:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021723B0: .word 0x00002830
	thumb_func_end ovy28_2172384

	thumb_func_start ovy28_21723b4
ovy28_21723b4: ; 0x021723B4
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	ldrb r1, [r4]
	cmp r1, #0
	bne _021723D2
	str r3, [sp]
	add r1, r2, #0
	ldr r2, _021723E4 ; =0x000000B9
	ldr r3, _021723E8 ; =0x021A72B4
	bl sub_020195C0
	ldr r1, [sp, #0x14]
	str r0, [r1]
	b _021723D8
_021723D2:
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021723D8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021723E4: .word 0x000000B9
_021723E8: .word 0x021A72B4
	thumb_func_end ovy28_21723b4

	thumb_func_start ovy28_21723ec
ovy28_21723ec: ; 0x021723EC
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x15
	ldr r1, _02172400 ; =0x02172EA4
	lsl r0, r0, #8
	mov r2, #0xe
	bl sub_02040C20
	pop {r3, pc}
	nop
_02172400: .word 0x02172EA4
	thumb_func_end ovy28_21723ec

	thumb_func_start ovy28_2172404
ovy28_2172404: ; 0x02172404
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r3, r2, #0
	lsl r0, r0, #0xa
	add r4, r1, #0
	cmp r3, r0
	ble _02172420
	str r0, [sp]
	ldr r0, _02172428 ; =0x02173068
	ldr r2, _0217242C ; =0x0217306C
	mov r1, #0
	bl sub_0203CB94
_02172420:
	add r1, r4, #4
	lsl r0, r5, #0xb
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02172428: .word 0x02173068
_0217242C: .word 0x0217306C
	thumb_func_end ovy28_2172404
_02172430:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy28_2172434
ovy28_2172434: ; 0x02172434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02172468 ; =0x00003624
	add r6, r1, #0
	add r7, r2, #0
	ldr r4, [r3, r0]
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02172466
	cmp r4, #0
	beq _02172466
	ldr r0, [r4]
	cmp r0, #0
	beq _02172466
	mov r1, #0x2c
	add r4, #0x18
	mul r1, r5
	add r0, r7, #0
	add r1, r4, r1
	add r2, r6, #0
	blx MI_CpuCopy8
_02172466:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02172468: .word 0x00003624
	thumb_func_end ovy28_2172434

	thumb_func_start ovy28_217246c
ovy28_217246c: ; 0x0217246C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	cmp r1, #1
	beq _0217247A
	mov r4, #0xff
_0217247A:
	bl sub_02040440
	str r5, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _0217249C ; =0x00001501
	lsr r1, r1, #0x18
	mov r3, #0x2c
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0217249C: .word 0x00001501
	thumb_func_end ovy28_217246c

	thumb_func_start ovy28_21724a0
ovy28_21724a0: ; 0x021724A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021724E8 ; =0x00003624
	add r7, r1, #0
	str r2, [sp]
	ldr r4, [r3, r0]
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021724E6
	cmp r4, #0
	beq _021724E6
	ldr r0, [r4]
	cmp r0, #0
	beq _021724E6
	lsl r0, r5, #2
	mov r6, #0x51
	add r1, r4, r0
	lsl r6, r6, #2
	ldr r0, [r1, r6]
	cmp r0, #0
	beq _021724E6
	add r2, r6, #0
	sub r2, #0x10
	ldr r1, [r1, r2]
	ldr r0, [sp]
	add r2, r7, #0
	blx MI_CpuCopy8
	mov r1, #1
	add r0, r4, r5
	add r6, #0x10
	strb r1, [r0, r6]
_021724E6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021724E8: .word 0x00003624
	thumb_func_end ovy28_21724a0

	thumb_func_start ovy28_21724ec
ovy28_21724ec: ; 0x021724EC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	str r4, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _02172510 ; =0x00001502
	ldr r3, _02172514 ; =0x000006C4
	mov r1, #0xff
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02172510: .word 0x00001502
_02172514: .word 0x000006C4
	thumb_func_end ovy28_21724ec

	thumb_func_start ovy28_2172518
ovy28_2172518: ; 0x02172518
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	str r4, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _0217253C ; =0x00001502
	ldr r3, _02172540 ; =0x00000678
	mov r1, #0xff
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0217253C: .word 0x00001502
_02172540: .word 0x00000678
	thumb_func_end ovy28_2172518

	thumb_func_start ovy28_2172544
ovy28_2172544: ; 0x02172544
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02172570 ; =0x00003624
	add r6, r2, #0
	ldr r4, [r3, r0]
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217256E
	cmp r4, #0
	beq _0217256E
	ldr r0, [r4]
	cmp r0, #0
	beq _0217256E
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy28_2172ac0
_0217256E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02172570: .word 0x00003624
	thumb_func_end ovy28_2172544

	thumb_func_start ovy28_2172574
ovy28_2172574: ; 0x02172574
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _02172598 ; =0x00001503
	mov r1, #0xff
	mov r3, #0x14
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02172598: .word 0x00001503
	thumb_func_end ovy28_2172574

	thumb_func_start ovy28_217259c
ovy28_217259c: ; 0x0217259C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021725C4 ; =0x00003624
	add r5, r2, #0
	ldr r4, [r3, r0]
	cmp r4, #0
	beq _021725C2
	ldr r0, [r4]
	cmp r0, #0
	beq _021725C2
	bl sub_02042BC4
	cmp r0, #0
	beq _021725C2
	ldrb r2, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy28_21729e4
_021725C2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021725C4: .word 0x00003624
	thumb_func_end ovy28_217259c

	thumb_func_start ovy28_21725c8
ovy28_21725c8: ; 0x021725C8
	push {lr}
	sub sp, #0x14
	bl sub_021729CC
	add r1, sp, #0x10
	strb r0, [r1]
	bl sub_02040440
	add r1, sp, #0x10
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r2, _021725F0 ; =0x00001504
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x14
	pop {pc}
	.align 2, 0
_021725F0: .word 0x00001504
	thumb_func_end ovy28_21725c8

	thumb_func_start ovy28_21725f4
ovy28_21725f4: ; 0x021725F4
	push {r3, lr}
	ldr r0, _0217260C ; =0x00003624
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _0217260A
	ldr r1, [r0]
	cmp r1, #0
	beq _0217260A
	ldr r1, [r2]
	bl sub_021729D4
_0217260A:
	pop {r3, pc}
	.align 2, 0
_0217260C: .word 0x00003624
	thumb_func_end ovy28_21725f4

	thumb_func_start ovy28_2172610
ovy28_2172610: ; 0x02172610
	push {r0, r1, r2, r3}
	thumb_func_end ovy28_2172610

	non_word_aligned_thumb_func_start ovy28_2172612
ovy28_2172612: ; 0x02172612
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	bl sub_021729CC
	bl sub_02040440
	add r1, sp, #0x20
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _02172644 ; =0x00001505
	lsr r1, r1, #0x18
	mov r3, #4
	bl sub_02042C18
	add sp, #0x10
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_02172644: .word 0x00001505
	thumb_func_end ovy28_2172612

	thumb_func_start ovy28_2172648
ovy28_2172648: ; 0x02172648
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02172678 ; =0x00003624
	add r7, r1, #0
	ldr r4, [r3, r0]
	cmp r4, #0
	beq _02172674
	lsl r0, r5, #2
	mov r6, #0x56
	add r0, r4, r0
	lsl r6, r6, #2
	ldr r1, [r0, r6]
	cmp r1, #0
	beq _02172674
	add r0, r2, #0
	add r2, r7, #0
	blx MI_CpuCopy8
	mov r1, #1
	add r0, r4, r5
	add r6, #0x10
	strb r1, [r0, r6]
_02172674:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02172678: .word 0x00003624
	thumb_func_end ovy28_2172648

	thumb_func_start ovy28_217267c
ovy28_217267c: ; 0x0217267C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021726A8 ; =0x00001506
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021726A8: .word 0x00001506
	thumb_func_end ovy28_217267c

	thumb_func_start ovy28_21726ac
ovy28_21726ac: ; 0x021726AC
	push {r4, r5, r6, lr}
	ldr r0, _021726D0 ; =0x00003624
	add r6, r1, #0
	ldr r5, [r3, r0]
	cmp r5, #0
	beq _021726CC
	mov r4, #0x5b
	lsl r4, r4, #2
	add r0, r2, #0
	add r1, r5, r4
	add r2, r6, #0
	blx MI_CpuCopy8
	mov r1, #1
	add r0, r4, #4
	strb r1, [r5, r0]
_021726CC:
	pop {r4, r5, r6, pc}
	nop
_021726D0: .word 0x00003624
	thumb_func_end ovy28_21726ac

	thumb_func_start ovy28_21726d4
ovy28_21726d4: ; 0x021726D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	ldr r1, _021726E8 ; =0x00001507
	mov r2, #4
	add r3, r4, #0
	bl sub_02042BE8
	pop {r4, pc}
	.align 2, 0
_021726E8: .word 0x00001507
	thumb_func_end ovy28_21726d4
_021726EC:
	.byte 0x04, 0x49, 0x5A, 0x58
	.byte 0x00, 0x2A, 0x03, 0xD0, 0x10, 0x18, 0x01, 0x21, 0xD4, 0x30, 0x01, 0x70, 0x70, 0x47, 0xC0, 0x46
	.byte 0x24, 0x36, 0x00, 0x00

	thumb_func_start ovy28_2172704
ovy28_2172704: ; 0x02172704
	push {r3, lr}
	sub sp, #0x10
	bl sub_02040440
	mov r1, #0
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02172724 ; =0x00001508
	mov r3, #0
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_02172724: .word 0x00001508
	thumb_func_end ovy28_2172704
_02172728:
	.byte 0x06, 0x49, 0x5B, 0x58, 0x00, 0x2B, 0x07, 0xD0
	.byte 0x19, 0x18, 0x18, 0x18, 0x01, 0x22, 0xD8, 0x31, 0x0A, 0x70, 0x00, 0x21, 0xD4, 0x30, 0x01, 0x70
	.byte 0x70, 0x47, 0xC0, 0x46, 0x24, 0x36, 0x00, 0x00

	thumb_func_start ovy28_2172748
ovy28_2172748: ; 0x02172748
	push {r3, lr}
	sub sp, #0x10
	bl sub_02040440
	mov r1, #0
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02172768 ; =0x00001509
	mov r3, #0
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_02172768: .word 0x00001509
	thumb_func_end ovy28_2172748
_0217276C:
	.byte 0x03, 0x48, 0x19, 0x58
	.byte 0x00, 0x29, 0x02, 0xD0, 0x00, 0x20, 0xDF, 0x31, 0x08, 0x70, 0x70, 0x47, 0x24, 0x36, 0x00, 0x00

	thumb_func_start ovy28_2172780
ovy28_2172780: ; 0x02172780
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02040440
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r1, r4, #0x18
	str r3, [sp, #8]
	ldr r2, _021727A4 ; =0x0000150A
	lsr r1, r1, #0x18
	str r3, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021727A4: .word 0x0000150A
	thumb_func_end ovy28_2172780
_021727A8:
	.byte 0x03, 0x48, 0x19, 0x58, 0x00, 0x29, 0x02, 0xD0
	.byte 0x01, 0x20, 0xCB, 0x31, 0x08, 0x70, 0x70, 0x47, 0x24, 0x36, 0x00, 0x00

	thumb_func_start ovy28_21727bc
ovy28_21727bc: ; 0x021727BC
	push {r3, lr}
	sub sp, #0x10
	bl sub_02040440
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r2, _021727DC ; =0x0000150B
	mov r1, #0xff
	str r3, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021727DC: .word 0x0000150B
	thumb_func_end ovy28_21727bc
_021727E0:
	.byte 0x04, 0x48, 0x1A, 0x58, 0x00, 0x2A, 0x03, 0xD0, 0x03, 0x48, 0x11, 0x5C, 0x49, 0x1C, 0x11, 0x54
	.byte 0x70, 0x47, 0xC0, 0x46, 0x24, 0x36, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0x04, 0x49, 0x59, 0x58
	.byte 0x00, 0x29, 0x03, 0xD0, 0x09, 0x18, 0x03, 0x48, 0x01, 0x22, 0x0A, 0x54, 0x70, 0x47, 0xC0, 0x46
	.byte 0x24, 0x36, 0x00, 0x00, 0x72, 0x01, 0x00, 0x00

	thumb_func_start ovy28_2172818
ovy28_2172818: ; 0x02172818
	push {r3, lr}
	bl sub_02040440
	ldr r1, _0217282C ; =0x0000150D
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	pop {r3, pc}
	nop
_0217282C: .word 0x0000150D
	thumb_func_end ovy28_2172818

	thumb_func_start ovy28_2172830
ovy28_2172830: ; 0x02172830
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	add r5, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02040440
	bl sub_02042A6C
	str r0, [sp, #0x10]
	mov r0, #0x35
	mov r1, #6
	str r0, [sp]
	lsl r1, r1, #6
	ldr r3, _02172960 ; =0x02173084
	mov r0, #0x41
	mov r2, #1
	str r1, [sp, #0x14]
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #4
	add r1, r5, #0
	mov r2, #0x41
	mov r3, #0
	mov r6, #0
	bl sub_021613D0
	str r0, [r4]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x1c]
	sub r0, #0x4c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r7, #0x3c
	str r0, [sp, #0x18]
	sub r0, #0x4c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x28
	str r0, [sp, #0x14]
_02172886:
	lsl r0, r6, #2
	add r5, r4, r0
	mov r0, #0x38
	str r0, [sp]
	ldr r1, _02172964 ; =0x000006C4
	ldr r3, _02172960 ; =0x02173084
	mov r0, #0x41
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r1, [sp, #0x1c]
	str r0, [r5, r1]
	ldr r0, [sp, #0x18]
	ldr r0, [r5, r0]
	str r0, [r5, r7]
	mov r0, #0x41
	bl sub_0201FD00
	ldr r1, [sp, #0x14]
	add r6, r6, #1
	str r0, [r5, r1]
	cmp r6, #4
	blt _02172886
	mov r2, #0
	mov r1, #0xff
_021728B8:
	add r0, r4, r2
	add r0, #0xcc
	strb r1, [r0]
	add r0, r4, r2
	add r0, #0xd0
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #4
	blt _021728B8
	add r0, r4, #0
	add r0, #0xdc
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xdd
	strb r1, [r0]
	ldr r0, [sp, #4]
	bl sub_0201735C
	ldr r1, [sp, #0x10]
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_020200AC
	ldr r0, [sp, #0x10]
	add r5, r4, #0
	add r6, r0, #0
	mov r1, #0x2c
	add r5, #0x18
	mul r6, r1
	ldr r0, [sp, #8]
	add r1, r5, r6
	bl sub_02008B34
	add r0, r5, r6
	add r0, #0x20
	bl OS_GetMacAddress
	add r0, r5, r6
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02172918
	mov r1, #0
_02172918:
	add r0, r5, r6
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, r6
	mov r7, #0x64
	add r0, #0x28
	strb r7, [r0]
	ldr r0, [sp, #0x10]
	mov r2, #1
	lsl r5, r0, #2
	mov r0, #0x41
	str r0, [sp]
	mov r0, #0x64
	add r1, r4, r5
	add r0, #0xe0
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	mov r3, #0
	mov r6, #1
	bl sub_02169770
	mov r0, #0x41
	add r1, r4, r5
	add r0, #0xf3
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	mov r2, #0x41
	bl sub_02169508
	ldr r0, [sp, #0x10]
	add r7, #0xf0
	add r0, r4, r0
	strb r6, [r0, r7]
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02172960: .word 0x02173084
_02172964: .word 0x000006C4
	thumb_func_end ovy28_2172830

	thumb_func_start ovy28_2172968
ovy28_2172968: ; 0x02172968
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x4d
	lsl r7, r7, #2
	add r6, r0, #0
	str r1, [sp]
	mov r4, #0
	add r7, #0x24
_02172976:
	lsl r0, r4, #2
	add r5, r6, r0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	ldr r0, [r5, r7]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #4
	blt _02172976
	ldr r0, [sp]
	ldr r1, [r6]
	bl sub_02161404
	add r0, r6, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy28_2172968
_021729A0:
	.byte 0x02, 0x1C, 0xC8, 0x32, 0x13, 0x78, 0x01, 0x22, 0x09, 0x06, 0x93, 0x43, 0x0A, 0x0E, 0x01, 0x21
	.byte 0x11, 0x40, 0x19, 0x43, 0xC8, 0x30, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x02, 0x1C, 0xDC, 0x32
	.byte 0x11, 0x70, 0xFF, 0x21, 0xDD, 0x30, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021729CC
sub_021729CC: ; 0x021729CC
	add r0, #0xdc
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021729CC

	thumb_func_start sub_021729D4
sub_021729D4: ; 0x021729D4
	add r0, #0xdd
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021729D4
_021729DC:
	.byte 0xDD, 0x30, 0x00, 0x78
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy28_21729e4
ovy28_21729e4: ; 0x021729E4
	push {r4, r5}
	cmp r2, #0xff
	bne _021729EC
	b _02172A06
_021729EC:
	mov r4, #0
_021729EE:
	add r3, r0, r4
	add r3, #0xcc
	ldrb r3, [r3]
	cmp r2, r3
	bne _021729FC
	mov r5, #0
	b _02172A02
_021729FC:
	add r4, r4, #1
	cmp r4, #4
	blt _021729EE
_02172A02:
	cmp r4, #4
	bne _02172A0E
_02172A06:
	add r3, r0, r1
	add r3, #0xcc
	strb r2, [r3]
	mov r5, #1
_02172A0E:
	add r0, r0, r1
	add r0, #0xd0
	strb r5, [r0]
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy28_21729e4

	thumb_func_start ovy28_2172a1c
ovy28_2172a1c: ; 0x02172A1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _02172A4E
	mov r4, #0
	mov r6, #0xff
_02172A2C:
	add r0, r5, r4
	add r0, #0xd0
	ldrb r2, [r0]
	cmp r2, #0xff
	beq _02172A48
	add r0, r5, #0
	add r1, r4, #0
	bl ovy28_2172610
	cmp r0, #1
	bne _02172A48
	add r0, r5, r4
	add r0, #0xd0
	strb r6, [r0]
_02172A48:
	add r4, r4, #1
	cmp r4, #4
	blt _02172A2C
_02172A4E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy28_2172a1c

	thumb_func_start ovy28_2172a50
ovy28_2172a50: ; 0x02172A50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _02172ABE
	mov r4, #0
	mov r1, #0
_02172A60:
	add r0, r5, r1
	add r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02172A6C
	add r4, r4, #1
_02172A6C:
	add r1, r1, #1
	cmp r1, #4
	blt _02172A60
	bl sub_02042A78
	cmp r4, r0
	bne _02172A9A
	bl ovy28_21727bc
	cmp r0, #1
	bne _02172ABE
	mov r2, #0
	add r1, r2, #0
_02172A86:
	add r0, r5, r2
	add r0, #0xd4
	strb r1, [r0]
	add r0, r5, r2
	add r0, #0xd8
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #4
	blt _02172A86
	pop {r4, r5, r6, pc}
_02172A9A:
	mov r4, #0
	add r6, r4, #0
_02172A9E:
	add r0, r5, r4
	add r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #1
	bne _02172AB8
	add r0, r4, #0
	bl ovy28_2172780
	cmp r0, #1
	bne _02172AB8
	add r0, r5, r4
	add r0, #0xd8
	strb r6, [r0]
_02172AB8:
	add r4, r4, #1
	cmp r4, #4
	blt _02172A9E
_02172ABE:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy28_2172a50

	thumb_func_start ovy28_2172ac0
ovy28_2172ac0: ; 0x02172AC0
	push {r4, r5}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #0x14
	mul r0, r3
	add r5, r4, r0
	ldmia r2!, {r0, r1}
	add r5, #0xe0
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	mov r2, #1
	str r0, [r5]
	mov r0, #0x13
	add r1, r4, r3
	lsl r0, r0, #4
	strb r2, [r1, r0]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy28_2172ac0

	thumb_func_start ovy28_2172ae8
ovy28_2172ae8: ; 0x02172AE8
	push {r4, r5}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #0x14
	mul r0, r3
	add r5, r4, r0
	add r5, #0xe0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r2]
	mov r0, #0x13
	lsl r0, r0, #4
	add r2, r4, r0
	ldrb r0, [r2, r3]
	strb r1, [r2, r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy28_2172ae8
_02172B14:
	.byte 0x01, 0x49, 0x00, 0x22, 0x42, 0x54, 0x70, 0x47, 0x71, 0x01, 0x00, 0x00

	thumb_func_start ovy28_2172b20
ovy28_2172b20: ; 0x02172B20
	push {r4, lr}
	mov r1, #0x5a
	mov r4, #0
	mov r3, #0
	lsl r1, r1, #2
_02172B2A:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #1
	bne _02172B34
	add r4, r4, #1
_02172B34:
	add r3, r3, #1
	cmp r3, #4
	blt _02172B2A
	bl sub_02042A78
	cmp r4, r0
	blt _02172B46
	mov r0, #1
	pop {r4, pc}
_02172B46:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy28_2172b20

	thumb_func_start ovy28_2172b4c
ovy28_2172b4c: ; 0x02172B4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r6, #0x56
	lsl r6, r6, #2
	str r0, [sp]
	mov r4, #0
	add r6, #0x10
_02172B64:
	cmp r7, #0
	beq _02172B6E
	ldr r0, [sp]
	cmp r0, r4
	beq _02172B7C
_02172B6E:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0201FD28
_02172B7C:
	add r1, r5, r4
	mov r0, #0
	add r4, r4, #1
	strb r0, [r1, r6]
	cmp r4, #4
	blt _02172B64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy28_2172b4c

	thumb_func_start ovy28_2172b8c
ovy28_2172b8c: ; 0x02172B8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r6, r0, #0
	str r1, [sp]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x58
	str r3, [sp, #4]
	mov r4, #0
	blx MI_CpuFill8
	mov r0, #3
	str r0, [r7, #0x44]
	mov r0, #0x5a
	mov r2, #0
	lsl r0, r0, #2
_02172BAE:
	add r1, r6, r2
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02172BBC
	mov r0, #1
	str r0, [r7, #0x44]
	b _02172BC4
_02172BBC:
	add r2, r2, #1
	add r4, r4, #1
	cmp r2, #4
	blt _02172BAE
_02172BC4:
	cmp r4, #2
	beq _02172BD6
	cmp r4, #4
	beq _02172BD6
	ldr r0, _02172C54 ; =0x02173090
	ldr r2, _02172C58 ; =0x02173094
	mov r1, #0
	bl sub_0203CB80
_02172BD6:
	bl sub_02040440
	bl sub_02042A6C
	add r1, r6, r0
	mov r0, #0x5b
	lsl r0, r0, #2
	mov r5, #0
	ldrb r1, [r1, r0]
	cmp r4, #0
	ble _02172C42
	mov r0, #1
	and r0, r1
	str r0, [sp, #8]
_02172BF2:
	mov r0, #0x5b
	add r1, r6, r5
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	mov r1, #1
	add r2, r0, #0
	and r2, r1
	ldr r1, [sp, #8]
	cmp r2, r1
	bne _02172C0A
	mov r1, #0
	b _02172C16
_02172C0A:
	ldr r1, [r7, #0x44]
	cmp r1, #1
	bne _02172C14
	mov r1, #1
	b _02172C16
_02172C14:
	mov r1, #2
_02172C16:
	asr r0, r0, #1
	add r0, r1, r0
	str r0, [sp, #0xc]
	cmp r0, r4
	blt _02172C2A
	ldr r0, _02172C54 ; =0x02173090
	ldr r2, _02172C5C ; =0x021730B8
	mov r1, #0
	bl sub_0203CB80
_02172C2A:
	ldr r1, [sp, #0xc]
	lsl r2, r5, #0x18
	lsl r1, r1, #4
	ldr r3, [sp, #4]
	add r0, r6, #0
	add r1, r7, r1
	lsr r2, r2, #0x18
	bl ovy28_2172c6c
	add r5, r5, #1
	cmp r5, r4
	blt _02172BF2
_02172C42:
	ldr r0, [sp]
	bl sub_02016AD8
	bl sub_02017994
	str r0, [r7, #0x54]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02172C54: .word 0x02173090
_02172C58: .word 0x02173094
_02172C5C: .word 0x021730B8
	thumb_func_end ovy28_2172b8c

	thumb_func_start sub_02172C60
sub_02172C60: ; 0x02172C60
	ldr r3, _02172C68 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x58
	bx r3
	.align 2, 0
_02172C68: .word MI_CpuFill8
	thumb_func_end sub_02172C60

	thumb_func_start ovy28_2172c6c
ovy28_2172c6c: ; 0x02172C6C
	push {r3, r4}
	lsl r3, r2, #2
	add r4, r0, r3
	mov r3, #0x56
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	str r3, [r1]
	mov r3, #0x2c
	mul r3, r2
	add r2, r0, #0
	add r2, #0x18
	add r2, r2, r3
	add r0, r0, r3
	str r2, [r1, #4]
	add r0, #0x40
	ldrb r0, [r0]
	strb r0, [r1, #9]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy28_2172c6c
_02172C94:
	.byte 0x04, 0x2D, 0x17, 0x02, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCD, 0x09, 0x17, 0x02
	.byte 0x49, 0x0B, 0x17, 0x02, 0x4D, 0x0B, 0x17, 0x02, 0x85, 0x0B, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x89, 0x0B, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x80, 0x0F, 0x80, 0x0D, 0x80
	.byte 0xF0, 0x00, 0x00, 0x00, 0x05, 0x5A, 0x0A, 0x01, 0x00, 0x00, 0x01, 0x14, 0x2C, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x39, 0x11, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x71, 0x11, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB5, 0x11, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF9, 0x11, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x55, 0x12, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAD, 0x12, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x13, 0x17, 0x02, 0x0D, 0x11, 0x17, 0x02, 0xE1, 0x13, 0x17, 0x02
	.byte 0x0D, 0x11, 0x17, 0x02, 0x4D, 0x14, 0x17, 0x02, 0x0D, 0x11, 0x17, 0x02, 0x79, 0x14, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xBD, 0x14, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x71, 0x15, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA5, 0x15, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD9, 0x15, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x39, 0x16, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8D, 0x16, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xED, 0x16, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x59, 0x17, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x17, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x49, 0x18, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE5, 0x18, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x21, 0x19, 0x17, 0x02
	.byte 0x0D, 0x11, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x1B, 0x17, 0x02
	.byte 0x02, 0x01, 0x00, 0x00, 0x61, 0x1B, 0x17, 0x02, 0x18, 0x01, 0x00, 0x00, 0x49, 0x1C, 0x17, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x49, 0x1C, 0x17, 0x02, 0x19, 0x00, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x04, 0x04, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x05, 0x05, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x06, 0x06, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x07, 0x07, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x08, 0x08, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x09, 0x09, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x0A, 0x0A, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x0B, 0x0B, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x0C, 0x0C, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x0D, 0x0D, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x0E, 0x0E, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x0F, 0x0F, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x10, 0x10, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x11, 0x11, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02
	.byte 0x12, 0x12, 0x00, 0x00, 0xF9, 0x1E, 0x17, 0x02, 0x13, 0x13, 0x00, 0x00, 0x4D, 0x1F, 0x17, 0x02
	.byte 0x14, 0x14, 0x00, 0x00, 0x4D, 0x1F, 0x17, 0x02, 0x15, 0x15, 0x00, 0x00, 0x4D, 0x1F, 0x17, 0x02
	.byte 0x16, 0x16, 0x00, 0x00, 0x4D, 0x1F, 0x17, 0x02, 0x17, 0x17, 0x00, 0x00, 0xA1, 0x1F, 0x17, 0x02
	.byte 0x1B, 0x1B, 0x00, 0x00, 0xE9, 0x1F, 0x17, 0x02, 0x1B, 0x1B, 0x00, 0x00, 0x85, 0x23, 0x17, 0x02
	.byte 0x1B, 0x1B, 0x00, 0x00, 0x29, 0x1B, 0x17, 0x02, 0x1B, 0x1B, 0x00, 0x00, 0xB5, 0x23, 0x17, 0x02
	.byte 0x1B, 0x1B, 0x00, 0x00, 0x31, 0x24, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x35, 0x24, 0x17, 0x02
	.byte 0x05, 0x24, 0x17, 0x02, 0xA1, 0x24, 0x17, 0x02, 0x05, 0x24, 0x17, 0x02, 0x45, 0x25, 0x17, 0x02
	.byte 0x05, 0x24, 0x17, 0x02, 0x9D, 0x25, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xF5, 0x25, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x49, 0x26, 0x17, 0x02, 0x05, 0x24, 0x17, 0x02, 0xAD, 0x26, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xED, 0x26, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x29, 0x27, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x27, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA9, 0x27, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE1, 0x27, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFD, 0x27, 0x17, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x6F, 0x6E, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x47, 0x61, 0x6D, 0x65, 0x43, 0x6F, 0x6D, 0x6D, 0x53, 0x79, 0x73, 0x5F
	.byte 0x42, 0x6F, 0x6F, 0x74, 0x43, 0x68, 0x65, 0x63, 0x6B, 0x28, 0x67, 0x61, 0x6D, 0x65, 0x5F, 0x63
	.byte 0x6F, 0x6D, 0x6D, 0x29, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x41, 0x4D, 0x45, 0x5F, 0x43, 0x4F, 0x4D
	.byte 0x4D, 0x5F, 0x4E, 0x4F, 0x5F, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x75, 0x6E, 0x69, 0x6F
	.byte 0x6E, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x75, 0x6E, 0x69, 0x73
	.byte 0x79, 0x73, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x69, 0x7A, 0x65, 0x3D, 0x25, 0x78, 0x2C, 0x20, 0x72, 0x65, 0x63, 0x76, 0x5F, 0x73, 0x69
	.byte 0x7A, 0x65, 0x3D, 0x25, 0x78, 0x0A, 0x00, 0x00, 0x75, 0x6E, 0x69, 0x73, 0x79, 0x73, 0x2D, 0x3E
	.byte 0x61, 0x6C, 0x6C, 0x6F, 0x63, 0x2E, 0x6D, 0x79, 0x5F, 0x63, 0x61, 0x72, 0x64, 0x20, 0x21, 0x3D
	.byte 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x75, 0x6E, 0x69, 0x73
	.byte 0x79, 0x73, 0x2D, 0x3E, 0x61, 0x6C, 0x6C, 0x6F, 0x63, 0x2E, 0x75, 0x6E, 0x69, 0x61, 0x70, 0x70
	.byte 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x73, 0x79, 0x73, 0x2D, 0x3E, 0x73, 0x75, 0x62, 0x70, 0x72, 0x6F, 0x63, 0x2E
	.byte 0x69, 0x64, 0x20, 0x3D, 0x3D, 0x20, 0x55, 0x4E, 0x49, 0x4F, 0x4E, 0x5F, 0x53, 0x55, 0x42, 0x50
	.byte 0x52, 0x4F, 0x43, 0x5F, 0x49, 0x44, 0x5F, 0x4E, 0x55, 0x4C, 0x4C, 0x20, 0x26, 0x26, 0x20, 0x75
	.byte 0x6E, 0x69, 0x73, 0x79, 0x73, 0x2D, 0x3E, 0x73, 0x75, 0x62, 0x70, 0x72, 0x6F, 0x63, 0x2E, 0x61
	.byte 0x63, 0x74, 0x69, 0x76, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x46, 0x41, 0x4C, 0x53, 0x45, 0x00, 0x00
	.byte 0x70, 0x6C, 0x69, 0x73, 0x74, 0x2D, 0x3E, 0x72, 0x65, 0x74, 0x5F, 0x6D, 0x6F, 0x64, 0x65, 0x20
	.byte 0x95, 0x73, 0x90, 0xB3, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x74, 0x5F
	.byte 0x73, 0x65, 0x6C, 0x3D, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x69, 0x7A, 0x65
	.byte 0x3D, 0x25, 0x78, 0x2C, 0x20, 0x72, 0x65, 0x63, 0x76, 0x5F, 0x73, 0x69, 0x7A, 0x65, 0x3D, 0x25
	.byte 0x78, 0x0A, 0x00, 0x00, 0x63, 0x6F, 0x6C, 0x6F, 0x73, 0x73, 0x65, 0x75, 0x6D, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x5F, 0x6D, 0x61, 0x78, 0x20, 0x3D
	.byte 0x3D, 0x20, 0x32, 0x20, 0x7C, 0x7C, 0x20, 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x5F, 0x6D, 0x61
	.byte 0x78, 0x20, 0x3D, 0x3D, 0x20, 0x34, 0x00, 0x00, 0x74, 0x72, 0x5F, 0x6E, 0x6F, 0x20, 0x3C, 0x20
	.byte 0x6D, 0x65, 0x6D, 0x62, 0x65, 0x72, 0x5F, 0x6D, 0x61, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x02172C94
