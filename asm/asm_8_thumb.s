	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_020054B8
sub_020054B8: ; 0x020054B8
	push {r3, r4, r5, r6, r7, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _020054FC
	mov r0, #0
	bl sub_0207B298
	add r4, r0, #0
	mov r0, #0
	bl sub_0207B2A4
	add r1, r0, #0
	mov r0, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_0207B5DC
	add r1, r0, #0
	mov r0, #0
	bl sub_0207B418
	mov r0, #0
	bl sub_0207B6B8
	mov r2, #0x3f
	add r1, r0, #0
	ldr r4, _02005630 ; =0x0209DA58
	mov r0, #0
	lsl r2, r2, #8
	str r1, [r4, #8]
	bl sub_0207B4F4
	str r0, [r4, #4]
_020054FC:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02005508
	ldr r0, _02005634 ; =0x0208EE58
	b _0200550A
_02005508:
	ldr r0, _02005638 ; =0x0208EE68
_0200550A:
	mov r1, #2
	mov r2, #0xc1
	mov r3, #0
	bl sub_0203A130
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_0203A4DC
	mov r2, #0x27
	mov r0, #1
	mov r1, #7
	lsl r2, r2, #0xc
	mov r4, #1
	bl sub_0203A15C
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _02005542
	ldr r0, _02005630 ; =0x0209DA58
	mov r1, #0x3f
	ldr r0, [r0, #4]
	lsl r1, r1, #8
	mov r2, #9
	bl sub_0203A178
	b _0200554E
_02005542:
	mov r2, #0x3f
	add r0, r4, #0
	mov r1, #9
	lsl r2, r2, #8
	bl sub_0203A15C
_0200554E:
	mov r0, #0
	mov r4, #0
	bl sub_02043E40
	mov r1, #0x4d
	ldr r0, _0200563C ; =0x02099A20
	lsl r1, r1, #2
	bl sub_0204A7A4
	mov r0, #0
	mov r1, #0
	bl sub_0203D00C
	bl sub_0207AC24
	mov r1, #0x81
	lsl r1, r1, #0x18
	tst r0, r1
	beq _0200557A
	bl sub_0203CD30
	b _02005584
_0200557A:
	ldr r2, _02005640 ; =sub_020057C4
	add r0, r4, #0
	add r1, r4, #0
	bl sub_0203CB64
_02005584:
	mov r0, #0
	mov r1, #0x14
	mov r2, #4
	mov r3, #4
	mov r6, #0
	bl sub_0203CD4C
	mov r0, #0
	bl sub_0203A918
	ldr r7, _02005644 ; =0x02099EF0
	ldr r5, _02005648 ; =0x0000012D
	mov r0, #0
	mov r1, #0x28
	mov r2, #0
	add r3, r7, #0
	str r5, [sp]
	bl sub_0203A1FC
	ldr r4, _02005630 ; =0x0209DA58
	str r0, [r4, #0x14]
	mov r0, #4
	bl sub_0203A584
	add r1, r0, #0
	add r0, r5, #2
	str r0, [sp]
	mov r0, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_0203A1FC
	ldr r1, [r4, #0x14]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x14]
	mov r0, #4
	ldr r1, [r1, #0x1c]
	bl sub_0203A58C
	ldr r1, [r4, #0x14]
	str r0, [r1, #0x18]
	mov r0, #0x10
	bl sub_0203A584
	add r1, r0, #0
	add r0, r5, #5
	str r0, [sp]
	mov r0, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_0203A1FC
	ldr r1, [r4, #0x14]
	str r0, [r1, #0x24]
	ldr r1, [r4, #0x14]
	mov r0, #0x10
	ldr r1, [r1, #0x24]
	bl sub_0203A58C
	ldr r1, [r4, #0x14]
	str r0, [r1, #0x20]
	mov r0, #0
	bl sub_0204DFA4
	ldr r1, _0200564C ; =sub_0203603C
	ldr r2, _02005650 ; =sub_02036048
	mov r0, #7
	bl sub_0203ABAC
	mov r0, #0
	bl sub_0204DCA4
	bl sub_02044170
	bl sub_0200572C
	str r6, [r4, #0xc]
	bl sub_020056C8
	bl sub_02005808
	mov r0, #2
	bl sub_0204E044
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005630: .word 0x0209DA58
_02005634: .word 0x0208EE58
_02005638: .word 0x0208EE68
_0200563C: .word 0x02099A20
_02005640: .word sub_020057C4
_02005644: .word 0x02099EF0
_02005648: .word 0x0000012D
_0200564C: .word sub_0203603C
_02005650: .word sub_02036048
	thumb_func_end sub_020054B8

	thumb_func_start sub_02005654
sub_02005654: ; 0x02005654
	push {r3, lr}
	bl sub_0203D0EC
	bl sub_02011818
	bl sub_0203A928
	bl sub_02044198
	pop {r3, pc}
	thumb_func_end sub_02005654

	thumb_func_start sub_02005668
sub_02005668: ; 0x02005668
	bx lr
	.align 2, 0
	thumb_func_end sub_02005668

	thumb_func_start sub_0200566C
sub_0200566C: ; 0x0200566C
	ldr r0, _02005678 ; =0x0209DA58
	ldr r3, _0200567C ; =sub_0203A5D0
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x18]
	bx r3
	nop
_02005678: .word 0x0209DA58
_0200567C: .word sub_0203A5D0
	thumb_func_end sub_0200566C

	thumb_func_start sub_02005680
sub_02005680: ; 0x02005680
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02005698 ; =0x0209DA58
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r2, #0
	ldr r0, [r0, #0x18]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203A614
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005698: .word 0x0209DA58
	thumb_func_end sub_02005680

	thumb_func_start sub_0200569C
sub_0200569C: ; 0x0200569C
	push {r3, lr}
	ldr r0, _020056AC ; =0x0209DA58
	ldr r1, [r0]
	cmp r1, #0
	beq _020056AA
	ldr r0, [r0, #0x10]
	blx r1
_020056AA:
	pop {r3, pc}
	.align 2, 0
_020056AC: .word 0x0209DA58
	thumb_func_end sub_0200569C

	thumb_func_start sub_020056B0
sub_020056B0: ; 0x020056B0
	ldr r2, _020056C4 ; =0x0209DA58
	ldr r3, [r2]
	cmp r3, #0
	beq _020056BC
	mov r0, #0
	bx lr
_020056BC:
	str r0, [r2]
	str r1, [r2, #0x10]
	mov r0, #1
	bx lr
	.align 2, 0
_020056C4: .word 0x0209DA58
	thumb_func_end sub_020056B0

	thumb_func_start sub_020056C8
sub_020056C8: ; 0x020056C8
	ldr r0, _020056D4 ; =0x0209DA58
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #0x10]
	bx lr
	nop
_020056D4: .word 0x0209DA58
	thumb_func_end sub_020056C8

	thumb_func_start sub_020056D8
sub_020056D8: ; 0x020056D8
	push {r4, lr}
	ldr r4, _020056F8 ; =0x0209DA58
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x20]
	bl sub_0203A5D0
	bl sub_02045A5C
	bl sub_0204F864
	bl sub_0204DFD4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_020056F8: .word 0x0209DA58
	thumb_func_end sub_020056D8

	thumb_func_start sub_020056FC
sub_020056FC: ; 0x020056FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02005714 ; =0x0209DA58
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r2, #0
	ldr r0, [r0, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203A614
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005714: .word 0x0209DA58
	thumb_func_end sub_020056FC

	thumb_func_start sub_02005718
sub_02005718: ; 0x02005718
	ldr r0, _02005720 ; =0x0209DA58
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
_02005720: .word 0x0209DA58
	thumb_func_end sub_02005718

	thumb_func_start sub_02005724
sub_02005724: ; 0x02005724
	ldr r3, _02005728 ; =sub_02044098
	bx r3
	.align 2, 0
_02005728: .word sub_02044098
	thumb_func_end sub_02005724

	thumb_func_start sub_0200572C
sub_0200572C: ; 0x0200572C
	push {r3, lr}
	ldr r0, _02005744 ; =0x0209DA58
	ldr r0, [r0, #0x14]
	bl sub_02005724
	mov r0, #0
	bl sub_02005748
	bl sub_02043EDC
	pop {r3, pc}
	nop
_02005744: .word 0x0209DA58
	thumb_func_end sub_0200572C

	thumb_func_start sub_02005748
sub_02005748: ; 0x02005748
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02005780 ; =0x0209DA58
	ldr r4, [r0, #0x14]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4]
	str r3, [r4, #4]
	cmp r5, #0
	bne _02005770
	ldr r1, [r4, #4]
	b _0200577C
_02005770:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r3, #0
	add r2, r5, #0
	blx sub_0208D60C
_0200577C:
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005780: .word 0x0209DA58
	thumb_func_end sub_02005748

	thumb_func_start sub_02005784
sub_02005784: ; 0x02005784
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020057B4 ; =0x0209DA58
	ldr r4, [r0, #0x14]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r3, #0
	add r2, r5, #0
	blx sub_0208D60C
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_020057B4: .word 0x0209DA58
	thumb_func_end sub_02005784

	thumb_func_start sub_020057B8
sub_020057B8: ; 0x020057B8
	lsl r1, r0, #2
	ldr r0, _020057C0 ; =0x02099A20
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_020057C0: .word 0x02099A20
	thumb_func_end sub_020057B8

	thumb_func_start sub_020057C4
sub_020057C4: ; 0x020057C4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	lsl r7, r7, #8
	lsl r4, r7, #2
	lsl r6, r7, #3
	lsl r5, r7, #1
_020057D0:
	bl sub_0203D0EC
	bl sub_0203DF20
	add r1, r0, #0
	tst r1, r5
	beq _020057D0
	add r1, r0, #0
	tst r1, r7
	beq _020057D0
	add r1, r0, #0
	tst r1, r4
	beq _020057D0
	tst r0, r6
	beq _020057D0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020057C4

	thumb_func_start sub_020057F0
sub_020057F0: ; 0x020057F0
	ldr r3, _020057F8 ; =sub_0206B954
	mov r0, #0
	bx r3
	nop
_020057F8: .word sub_0206B954
	thumb_func_end sub_020057F0

	thumb_func_start sub_020057FC
sub_020057FC: ; 0x020057FC
	ldr r3, _02005804 ; =sub_0206B954
	mov r0, #0x7f
	bx r3
	nop
_02005804: .word sub_0206B954
	thumb_func_end sub_020057FC

	thumb_func_start sub_02005808
sub_02005808: ; 0x02005808
	ldr r0, _02005814 ; =sub_020057F0
	ldr r1, _02005818 ; =sub_020057FC
	ldr r3, _0200581C ; =sub_0203D1C4
	mov r2, #0
	bx r3
	nop
_02005814: .word sub_020057F0
_02005818: .word sub_020057FC
_0200581C: .word sub_0203D1C4
	thumb_func_end sub_02005808

	thumb_func_start sub_02005820
sub_02005820: ; 0x02005820
	push {r3, lr}
	bl sub_0203D20C
	ldr r1, _02005834 ; =sub_020057F0
	cmp r0, r1
	bne _02005830
	mov r0, #1
	pop {r3, pc}
_02005830:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02005834: .word sub_020057F0
	thumb_func_end sub_02005820

	thumb_func_start sub_02005838
sub_02005838: ; 0x02005838
	ldr r1, _02005840 ; =0x0209DA70
	str r0, [r1, #8]
	bx lr
	nop
_02005840: .word 0x0209DA70
	thumb_func_end sub_02005838

	thumb_func_start sub_02005844
sub_02005844: ; 0x02005844
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x1c
	mul r5, r1
	ldr r2, _02005874 ; =0x0209DA7C
	mov r4, #0
	ldr r1, _02005878 ; =0x0000FFFF
	ldr r0, _0200587C ; =0x0209DA80
	str r4, [r2, r5]
	strh r1, [r0, r5]
	add r0, r2, r5
	add r0, #8
	bl sub_0206BDF0
	ldr r0, _02005880 ; =0x0209DA88
	sub r1, r4, #1
	str r1, [r0, r5]
	ldr r0, _02005884 ; =0x0209DA8C
	str r1, [r0, r5]
	ldr r0, _02005888 ; =0x0209DA90
	str r1, [r0, r5]
	ldr r0, _0200588C ; =0x0209DA94
	str r1, [r0, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005874: .word 0x0209DA7C
_02005878: .word 0x0000FFFF
_0200587C: .word 0x0209DA80
_02005880: .word 0x0209DA88
_02005884: .word 0x0209DA8C
_02005888: .word 0x0209DA90
_0200588C: .word 0x0209DA94
	thumb_func_end sub_02005844

	thumb_func_start sub_02005890
sub_02005890: ; 0x02005890
	ldr r1, _020058AC ; =0x0209DA70
	ldr r3, _020058B0 ; =0x0209DA7C
	ldr r2, [r1, #4]
	mov r1, #0x1c
	mul r1, r2
	add r2, r3, r1
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [r3, r1]
	bx lr
	nop
_020058AC: .word 0x0209DA70
_020058B0: .word 0x0209DA7C
	thumb_func_end sub_02005890

	thumb_func_start sub_020058B4
sub_020058B4: ; 0x020058B4
	push {r3, r4, r5, lr}
	ldr r4, _020058DC ; =0x0209DA70
	ldr r2, _020058E0 ; =0x0209DA7C
	ldr r1, [r4, #4]
	mov r0, #0x1c
	mul r0, r1
	add r5, r2, r0
	add r0, r5, #0
	add r0, #8
	bl sub_0206BDF0
	ldr r0, [r4, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r0]
	bl sub_0206D154
	ldr r0, [r4, #4]
	bl sub_02005844
	pop {r3, r4, r5, pc}
	.align 2, 0
_020058DC: .word 0x0209DA70
_020058E0: .word 0x0209DA7C
	thumb_func_end sub_020058B4

	thumb_func_start sub_020058E4
sub_020058E4: ; 0x020058E4
	push {r4, r5, r6, lr}
	ldr r1, _02005924 ; =0x0209DA70
	mov r5, #0
	strh r0, [r1]
	ldr r4, _02005928 ; =0x0209DA7C
	str r5, [r1, #4]
	mov r6, #0x1c
_020058F2:
	add r0, r5, #0
	bl sub_02005844
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	add r0, #8
	bl sub_0206BDE8
	add r5, r5, #1
	cmp r5, #6
	blt _020058F2
	ldr r4, _02005924 ; =0x0209DA70
	mov r1, #6
	ldrh r0, [r4]
	bl sub_0206BD4C
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl sub_0206D120
	bl sub_02005890
	pop {r4, r5, r6, pc}
	nop
_02005924: .word 0x0209DA70
_02005928: .word 0x0209DA7C
	thumb_func_end sub_020058E4

	thumb_func_start sub_0200592C
sub_0200592C: ; 0x0200592C
	ldr r0, _02005950 ; =0x0209DA70
	ldr r2, _02005954 ; =0x0209DA7C
	ldr r1, [r0, #4]
	mov r0, #0x1c
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _02005942
	mov r0, #0
	bx lr
_02005942:
	ldrh r0, [r1, #4]
	ldr r1, _02005958 ; =0x0000FFFF
	cmp r0, r1
	bne _0200594C
	mov r0, #0
_0200594C:
	bx lr
	nop
_02005950: .word 0x0209DA70
_02005954: .word 0x0209DA7C
_02005958: .word 0x0000FFFF
	thumb_func_end sub_0200592C

	thumb_func_start sub_0200595C
sub_0200595C: ; 0x0200595C
	ldr r0, _02005964 ; =0x0209DA70
	ldr r0, [r0, #4]
	bx lr
	nop
_02005964: .word 0x0209DA70
	thumb_func_end sub_0200595C

	thumb_func_start sub_02005968
sub_02005968: ; 0x02005968
	ldr r0, _02005978 ; =0x0209DA70
	ldr r2, _0200597C ; =0x0209DA7C
	ldr r1, [r0, #4]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	add r0, #8
	bx lr
	.align 2, 0
_02005978: .word 0x0209DA70
_0200597C: .word 0x0209DA7C
	thumb_func_end sub_02005968

	thumb_func_start sub_02005980
sub_02005980: ; 0x02005980
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _020059D0 ; =0x0209DA70
	mov r1, #0x1c
	ldr r2, [r6, #4]
	ldr r3, _020059D4 ; =0x0209DA7C
	mul r1, r2
	ldr r2, [r6, #8]
	add r4, r3, r1
	ldr r2, [r2]
	mov r1, #3
	add r5, r0, #0
	bl sub_0206D2AC
	cmp r0, #0
	bne _020059A2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020059A2:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0206D120
	str r0, [r4, #0x14]
	ldr r2, [r6, #8]
	add r0, r5, #0
	ldr r2, [r2]
	mov r1, #4
	bl sub_0206D2AC
	add r7, r0, #0
	bne _020059C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020059C0:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0206D120
	str r0, [r4, #0x18]
	strh r5, [r4, #4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020059D0: .word 0x0209DA70
_020059D4: .word 0x0209DA7C
	thumb_func_end sub_02005980

	thumb_func_start sub_020059D8
sub_020059D8: ; 0x020059D8
	push {r4, lr}
	ldr r1, _020059F4 ; =0x0209DA70
	ldr r3, _020059F8 ; =0x0209DA7C
	ldr r2, [r1, #4]
	mov r0, #0x1c
	mul r0, r2
	add r4, r3, r0
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_0206D120
	str r0, [r4, #0x14]
	pop {r4, pc}
	nop
_020059F4: .word 0x0209DA70
_020059F8: .word 0x0209DA7C
	thumb_func_end sub_020059D8

	thumb_func_start sub_020059FC
sub_020059FC: ; 0x020059FC
	push {r3, r4, r5, lr}
	ldr r1, _02005A1C ; =0x0209DA70
	add r5, r0, #0
	ldr r2, [r1, #4]
	mov r0, #0x1c
	ldr r3, _02005A20 ; =0x0209DA7C
	mul r0, r2
	add r4, r3, r0
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_0206D120
	str r0, [r4, #0x18]
	strh r5, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005A1C: .word 0x0209DA70
_02005A20: .word 0x0209DA7C
	thumb_func_end sub_020059FC

	thumb_func_start sub_02005A24
sub_02005A24: ; 0x02005A24
	push {r4, lr}
	ldr r1, _02005A50 ; =0x0209DA70
	ldr r3, _02005A54 ; =0x0209DA7C
	ldr r2, [r1, #4]
	mov r0, #0x1c
	mul r0, r2
	add r4, r3, r0
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _02005A4E
	ldr r0, _02005A58 ; =0x0000FFFF
	strh r0, [r4, #4]
	ldr r0, [r1, #8]
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	bl sub_0206D154
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x18]
_02005A4E:
	pop {r4, pc}
	.align 2, 0
_02005A50: .word 0x0209DA70
_02005A54: .word 0x0209DA7C
_02005A58: .word 0x0000FFFF
	thumb_func_end sub_02005A24

	thumb_func_start sub_02005A5C
sub_02005A5C: ; 0x02005A5C
	push {r3, r4, r5, lr}
	ldr r2, _02005AA0 ; =0x0209DA70
	ldr r1, _02005AA4 ; =0x0209DA7C
	ldr r3, [r2, #4]
	mov r4, #0x1c
	add r0, r3, #0
	mul r0, r4
	add r5, r1, r0
	cmp r3, #5
	blt _02005A74
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005A74:
	add r0, r4, #0
	ldr r1, [r5, #0x14]
	sub r0, #0x1d
	cmp r1, r0
	beq _02005A8E
	ldr r0, [r2, #8]
	ldr r0, [r0]
	bl sub_0206D154
	sub r4, #0x1d
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x14]
	b _02005A90
_02005A8E:
	ldr r0, [r5, #0x10]
_02005A90:
	ldr r1, _02005AA0 ; =0x0209DA70
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	bl sub_02005890
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005AA0: .word 0x0209DA70
_02005AA4: .word 0x0209DA7C
	thumb_func_end sub_02005A5C

	thumb_func_start sub_02005AA8
sub_02005AA8: ; 0x02005AA8
	push {r3, r4, r5, lr}
	ldr r4, _02005AE8 ; =0x0209DA70
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _02005AB6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005AB6:
	bl sub_020058B4
	ldr r0, [r4, #4]
	ldr r1, _02005AEC ; =0x0209DA7C
	sub r2, r0, #1
	mov r0, #0x1c
	mul r0, r2
	add r5, r1, r0
	ldrh r0, [r5, #4]
	ldr r1, _02005AF0 ; =0x0000FFFF
	str r2, [r4, #4]
	cmp r0, r1
	beq _02005AE4
	ldr r2, [r4, #8]
	mov r1, #6
	ldr r2, [r2]
	bl sub_0206D2AC
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl sub_0206D120
	str r0, [r5, #0x18]
_02005AE4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02005AE8: .word 0x0209DA70
_02005AEC: .word 0x0209DA7C
_02005AF0: .word 0x0000FFFF
	thumb_func_end sub_02005AA8

	thumb_func_start sub_02005AF4
sub_02005AF4: ; 0x02005AF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _02005B58 ; =0x0209DA70
	add r5, r1, #0
	ldr r1, [r7, #4]
	add r6, r0, #0
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02005B5C ; =0x0209DA7C
	add r0, r0, r2
	ldr r0, [r0, #0xc]
	str r0, [sp, #4]
	bl sub_020058B4
	mov r4, #0
	str r4, [sp]
	ldr r0, [r7, #8]
	mov r1, #8
	ldr r0, [r0]
	mov r2, #0
	mov r3, #0
	bl sub_0206D0DC
	str r0, [sp, #8]
	cmp r5, #0
	bls _02005B3C
_02005B2A:
	ldr r1, [r7, #8]
	lsl r0, r4, #2
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl sub_0206D274
	add r4, r4, #1
	cmp r4, r5
	blo _02005B2A
_02005B3C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r5, [r0]
	str r1, [r0, #4]
	ldr r0, _02005B58 ; =0x0209DA70
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_0206D120
	bl sub_02005890
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005B58: .word 0x0209DA70
_02005B5C: .word 0x0209DA7C
	thumb_func_end sub_02005AF4

	thumb_func_start sub_02005B60
sub_02005B60: ; 0x02005B60
	push {r4, lr}
	ldr r4, [r0, #4]
	bl sub_020058B4
	ldr r0, _02005B7C ; =0x0209DA70
	add r1, r4, #0
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_0206D154
	add r0, r4, #0
	bl sub_02005890
	pop {r4, pc}
	.align 2, 0
_02005B7C: .word 0x0209DA70
	thumb_func_end sub_02005B60

	thumb_func_start sub_02005B80
sub_02005B80: ; 0x02005B80
	push {r3, lr}
	bl sub_0206B8D4
	mov r1, #0x9d
	ldr r0, _02005BB4 ; =_0209E278
	lsl r1, r1, #0xc
	bl sub_0206D010
	add r2, r0, #0
	ldr r0, _02005BB8 ; =0x0209DB24
	ldr r1, _02005BBC ; =0x02099EFC
	str r2, [r0, #0x10]
	ldr r0, _02005BC0 ; =0x0209DB80
	mov r3, #0
	bl sub_0206C9BC
	mov r0, #1
	bl sub_02005BCC
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _02005BB2
	blx sub_02005BC4
_02005BB2:
	pop {r3, pc}
	.align 2, 0
_02005BB4: .word _0209E278
_02005BB8: .word 0x0209DB24
_02005BBC: .word 0x02099EFC
_02005BC0: .word 0x0209DB80
	thumb_func_end sub_02005B80

