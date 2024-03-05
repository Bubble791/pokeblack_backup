	.include "asm/macros.inc"
	.include "gx_load2d.inc"
	.include "global.inc"
	.public GXi_DmaId

	.bss

sSubBGExtPltt: ; 0x021E15DC
	.space 0x4

sOBJExtPlttLCDCBlk: ; 0x021E15E0
	.space 0x4

sOBJExtPltt: ; 0x021E15E4
	.space 0x4

sBGExtPlttLCDCOffset: ; 0x021E15E8
	.space 0x4

sBGExtPlttLCDCBlk: ; 0x021E15EC
	.space 0x4

sBGExtPltt: ; 0x021E15F0
	.space 0x4

sSubOBJExtPltt: ; 0x021E15F4
	.space 0x4

	.text

	thumb_func_start GX_LoadBGPltt
GX_LoadBGPltt: ; 0x020754B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075520 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _02075510
	cmp r3, #0x1c
	bls _02075510
	cmp r6, #3
	bls _020754FC
	mov r1, #5
	lsl r1, r1, #0x18
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _020754F4
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_020754F4:
	add r1, r7, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_020754FC:
	mov r2, #5
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_02075510:
	mov r1, #5
	lsl r1, r1, #0x18
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02075520: .word 0x0209B528
	thumb_func_end GX_LoadBGPltt

	thumb_func_start sub_02075524
sub_02075524: ; 0x02075524
	bx pc
	nop
	thumb_func_end sub_02075524

	arm_func_start sub_02075528
sub_02075528: ; 0x02075528
	ldr ip, _02075530 ; =sub_02768180
	bx ip
	.align 2, 0
_02075530: .word sub_02768180
	arm_func_end sub_02075528

	thumb_func_start GXS_LoadBGPltt
GXS_LoadBGPltt: ; 0x02075534
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075598 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _02075588
	cmp r3, #0x1c
	bls _02075588
	cmp r6, #3
	bls _02075576
	ldr r1, _0207559C ; =0x05000400
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _0207556E
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_0207556E:
	add r1, r7, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_02075576:
	ldr r2, _0207559C ; =0x05000400
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_02075588:
	ldr r1, _0207559C ; =0x05000400
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02075598: .word 0x0209B528
_0207559C: .word 0x05000400
	thumb_func_end GXS_LoadBGPltt

	thumb_func_start GX_LoadOBJPltt
GX_LoadOBJPltt: ; 0x020755A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075604 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _020755F4
	cmp r3, #0x1c
	bls _020755F4
	cmp r6, #3
	bls _020755E2
	ldr r1, _02075608 ; =0x05000200
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _020755DA
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_020755DA:
	add r1, r7, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_020755E2:
	ldr r2, _02075608 ; =0x05000200
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_020755F4:
	ldr r1, _02075608 ; =0x05000200
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02075604: .word 0x0209B528
_02075608: .word 0x05000200
	thumb_func_end GX_LoadOBJPltt

	thumb_func_start GXS_LoadOBJPltt
GXS_LoadOBJPltt: ; 0x0207560C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075670 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _02075660
	cmp r3, #0x1c
	bls _02075660
	cmp r6, #3
	bls _0207564E
	ldr r1, _02075674 ; =0x05000600
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _02075646
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_02075646:
	add r1, r7, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_0207564E:
	ldr r2, _02075674 ; =0x05000600
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_02075660:
	ldr r1, _02075674 ; =0x05000600
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02075670: .word 0x0209B528
_02075674: .word 0x05000600
	thumb_func_end GXS_LoadOBJPltt

	thumb_func_start GX_LoadOAM
GX_LoadOAM: ; 0x02075678
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020756C8 ; =0x0209B528
	add r4, r1, #0
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	add r3, r2, #0
	cmp r0, r1
	beq _020756B6
	cmp r3, #0x30
	bls _020756B6
	cmp r0, #3
	bls _020756A4
	mov r2, #7
	lsl r2, r2, #0x18
	sub r0, r0, #4
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02075524
	pop {r3, r4, r5, pc}
_020756A4:
	mov r2, #7
	mov r1, #1
	lsl r2, r2, #0x18
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02078080
	pop {r3, r4, r5, pc}
_020756B6:
	mov r1, #7
	lsl r1, r1, #0x18
	add r0, r5, #0
	add r1, r4, r1
	add r2, r3, #0
	blx MIi_CpuCopy32
	pop {r3, r4, r5, pc}
	nop
_020756C8: .word 0x0209B528
	thumb_func_end GX_LoadOAM

	thumb_func_start GXS_LoadOAM
GXS_LoadOAM: ; 0x020756CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02075714 ; =0x0209B528
	add r4, r1, #0
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	add r3, r2, #0
	cmp r0, r1
	beq _02075704
	cmp r3, #0x30
	bls _02075704
	cmp r0, #3
	ldr r2, _02075718 ; =0x07000400
	bls _020756F6
	sub r0, r0, #4
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02075524
	pop {r3, r4, r5, pc}
_020756F6:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02078080
	pop {r3, r4, r5, pc}
_02075704:
	ldr r1, _02075718 ; =0x07000400
	add r0, r5, #0
	add r1, r4, r1
	add r2, r3, #0
	blx MIi_CpuCopy32
	pop {r3, r4, r5, pc}
	nop
_02075714: .word 0x0209B528
_02075718: .word 0x07000400
	thumb_func_end GXS_LoadOAM

	thumb_func_start GX_LoadOBJ
GX_LoadOBJ: ; 0x0207571C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02075764 ; =0x0209B528
	add r4, r1, #0
	mov r1, #0
	add r3, r2, #0
	mov r2, #0x19
	ldr r0, [r0]
	mvn r1, r1
	lsl r2, r2, #0x16
	cmp r0, r1
	beq _02075756
	cmp r3, #0x30
	bls _02075756
	cmp r0, #3
	bls _02075748
	sub r0, r0, #4
	add r1, r5, #0
	add r2, r2, r4
	bl sub_02075524
	pop {r3, r4, r5, pc}
_02075748:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r4
	bl sub_02078080
	pop {r3, r4, r5, pc}
_02075756:
	add r1, r2, r4
	add r0, r5, #0
	add r2, r3, #0
	blx MIi_CpuCopy32
	pop {r3, r4, r5, pc}
	nop
_02075764: .word 0x0209B528
	thumb_func_end GX_LoadOBJ

	thumb_func_start GXS_LoadOBJ
GXS_LoadOBJ: ; 0x02075768
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020757B0 ; =0x0209B528
	add r4, r1, #0
	mov r1, #0
	add r3, r2, #0
	mov r2, #0x66
	ldr r0, [r0]
	mvn r1, r1
	lsl r2, r2, #0x14
	cmp r0, r1
	beq _020757A2
	cmp r3, #0x30
	bls _020757A2
	cmp r0, #3
	bls _02075794
	sub r0, r0, #4
	add r1, r5, #0
	add r2, r2, r4
	bl sub_02075524
	pop {r3, r4, r5, pc}
_02075794:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r4
	bl sub_02078080
	pop {r3, r4, r5, pc}
_020757A2:
	add r1, r2, r4
	add r0, r5, #0
	add r2, r3, #0
	blx MIi_CpuCopy32
	pop {r3, r4, r5, pc}
	nop
_020757B0: .word 0x0209B528
	thumb_func_end GXS_LoadOBJ

	thumb_func_start GX_LoadBG0Scr
GX_LoadBG0Scr: ; 0x020757B4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2_GetBG0ScrPtr
	add r2, r0, #0
	ldr r0, _02075824 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075816
	cmp r4, #0x1c
	bls _02075816
	cmp r0, #3
	bls _02075804
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _020757F6
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020757F6:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075804:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075816:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075824: .word 0x0209B528
	thumb_func_end GX_LoadBG0Scr

	thumb_func_start GXS_LoadBG0Scr
GXS_LoadBG0Scr: ; 0x02075828
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2S_GetBG0ScrPtr
	add r2, r0, #0
	ldr r0, _02075898 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _0207588A
	cmp r4, #0x1c
	bls _0207588A
	cmp r0, #3
	bls _02075878
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _0207586A
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0207586A:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075878:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0207588A:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075898: .word 0x0209B528
	thumb_func_end GXS_LoadBG0Scr

	thumb_func_start GX_LoadBG1Scr
GX_LoadBG1Scr: ; 0x0207589C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2_GetBG1ScrPtr
	add r2, r0, #0
	ldr r0, _0207590C ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020758FE
	cmp r4, #0x1c
	bls _020758FE
	cmp r0, #3
	bls _020758EC
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _020758DE
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020758DE:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020758EC:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020758FE:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207590C: .word 0x0209B528
	thumb_func_end GX_LoadBG1Scr

	thumb_func_start GXS_LoadBG1Scr
GXS_LoadBG1Scr: ; 0x02075910
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2S_GetBG1ScrPtr
	add r2, r0, #0
	ldr r0, _02075980 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075972
	cmp r4, #0x1c
	bls _02075972
	cmp r0, #3
	bls _02075960
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _02075952
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075952:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075960:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075972:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075980: .word 0x0209B528
	thumb_func_end GXS_LoadBG1Scr

	thumb_func_start GX_LoadBG2Scr
GX_LoadBG2Scr: ; 0x02075984
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	blx G2_GetBG2ScrPtr
	add r2, r0, #0
	ldr r0, _020759F4 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020759E6
	cmp r4, #0x1c
	bls _020759E6
	cmp r0, #3
	bls _020759D4
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _020759C6
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020759C6:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020759D4:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020759E6:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_020759F4: .word 0x0209B528
	thumb_func_end GX_LoadBG2Scr

	thumb_func_start GXS_LoadBG2Scr
GXS_LoadBG2Scr: ; 0x020759F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2S_GetBG2ScrPtr
	add r2, r0, #0
	ldr r0, _02075A68 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075A5A
	cmp r4, #0x1c
	bls _02075A5A
	cmp r0, #3
	bls _02075A48
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _02075A3A
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075A3A:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075A48:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075A5A:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075A68: .word 0x0209B528
	thumb_func_end GXS_LoadBG2Scr

	thumb_func_start GX_LoadBG3Scr
GX_LoadBG3Scr: ; 0x02075A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	blx G2_GetBG3ScrPtr
	add r2, r0, #0
	ldr r0, _02075ADC ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075ACE
	cmp r4, #0x1c
	bls _02075ACE
	cmp r0, #3
	bls _02075ABC
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _02075AAE
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075AAE:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075ABC:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075ACE:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075ADC: .word 0x0209B528
	thumb_func_end GX_LoadBG3Scr

	thumb_func_start GXS_LoadBG3Scr
GXS_LoadBG3Scr: ; 0x02075AE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl G2S_GetBG3ScrPtr
	add r2, r0, #0
	ldr r0, _02075B50 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075B42
	cmp r4, #0x1c
	bls _02075B42
	cmp r0, #3
	bls _02075B30
	add r2, r2, r6
	add r1, r5, #0
	orr r1, r2
	add r3, r4, #0
	orr r3, r1
	mov r1, #3
	tst r1, r3
	bne _02075B22
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075B22:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075B30:
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r2, r2, r6
	add r3, r4, #0
	bl sub_020780E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075B42:
	add r1, r2, r6
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy16
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075B50: .word 0x0209B528
	thumb_func_end GXS_LoadBG3Scr

	thumb_func_start GX_LoadBG0Char
GX_LoadBG0Char: ; 0x02075B54
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2_GetBG0CharPtr
	add r2, r0, #0
	ldr r0, _02075BA8 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075B9A
	cmp r4, #0x30
	bls _02075B9A
	cmp r0, #3
	bls _02075B88
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075B88:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075B9A:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075BA8: .word 0x0209B528
	thumb_func_end GX_LoadBG0Char

	thumb_func_start GXS_LoadBG0Char
GXS_LoadBG0Char: ; 0x02075BAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2S_GetBG0CharPtr
	add r2, r0, #0
	ldr r0, _02075C00 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075BF2
	cmp r4, #0x30
	bls _02075BF2
	cmp r0, #3
	bls _02075BE0
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075BE0:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075BF2:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075C00: .word 0x0209B528
	thumb_func_end GXS_LoadBG0Char

	thumb_func_start GX_LoadBG1Char
GX_LoadBG1Char: ; 0x02075C04
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2_GetBG1CharPtr
	add r2, r0, #0
	ldr r0, _02075C58 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075C4A
	cmp r4, #0x30
	bls _02075C4A
	cmp r0, #3
	bls _02075C38
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075C38:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075C4A:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075C58: .word 0x0209B528
	thumb_func_end GX_LoadBG1Char

	thumb_func_start GXS_LoadBG1Char
GXS_LoadBG1Char: ; 0x02075C5C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2S_GetBG1CharPtr
	add r2, r0, #0
	ldr r0, _02075CB0 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075CA2
	cmp r4, #0x30
	bls _02075CA2
	cmp r0, #3
	bls _02075C90
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075C90:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075CA2:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075CB0: .word 0x0209B528
	thumb_func_end GXS_LoadBG1Char

	thumb_func_start GX_LoadBG2Char
GX_LoadBG2Char: ; 0x02075CB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2_GetBG2CharPtr
	add r2, r0, #0
	ldr r0, _02075D08 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075CFA
	cmp r4, #0x30
	bls _02075CFA
	cmp r0, #3
	bls _02075CE8
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075CE8:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075CFA:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075D08: .word 0x0209B528
	thumb_func_end GX_LoadBG2Char

	thumb_func_start GXS_LoadBG2Char
GXS_LoadBG2Char: ; 0x02075D0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2S_GetBG2CharPtr
	add r2, r0, #0
	ldr r0, _02075D60 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075D52
	cmp r4, #0x30
	bls _02075D52
	cmp r0, #3
	bls _02075D40
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075D40:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075D52:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075D60: .word 0x0209B528
	thumb_func_end GXS_LoadBG2Char

	thumb_func_start GX_LoadBG3Char
GX_LoadBG3Char: ; 0x02075D64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2_GetBG3CharPtr
	add r2, r0, #0
	ldr r0, _02075DB8 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075DAA
	cmp r4, #0x30
	bls _02075DAA
	cmp r0, #3
	bls _02075D98
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075D98:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075DAA:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075DB8: .word 0x0209B528
	thumb_func_end GX_LoadBG3Char

	thumb_func_start GXS_LoadBG3Char
GXS_LoadBG3Char: ; 0x02075DBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl G2S_GetBG3CharPtr
	add r2, r0, #0
	ldr r0, _02075E10 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075E02
	cmp r4, #0x30
	bls _02075E02
	cmp r0, #3
	bls _02075DF0
	sub r0, r0, #4
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02075524
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075DF0:
	mov r1, #1
	str r1, [sp]
	add r1, r6, #0
	add r2, r2, r5
	add r3, r4, #0
	bl sub_02078080
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02075E02:
	add r1, r2, r5
	add r0, r6, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075E10: .word 0x0209B528
	thumb_func_end GXS_LoadBG3Char

	thumb_func_start GX_BeginLoadBGExtPltt
GX_BeginLoadBGExtPltt: ; 0x02075E14
	push {r3, lr}
	bl sub_02076C60
	ldr r1, _02075E64 ; =0x0214C050
	cmp r0, #0x20
	str r0, [r1, #0x14]
	bgt _02075E32
	bge _02075E56
	cmp r0, #0
	bgt _02075E2C
	cmp r0, #0
	pop {r3, pc}
_02075E2C:
	cmp r0, #0x10
	beq _02075E40
	pop {r3, pc}
_02075E32:
	cmp r0, #0x40
	bgt _02075E3A
	beq _02075E4A
	pop {r3, pc}
_02075E3A:
	cmp r0, #0x60
	beq _02075E56
	pop {r3, pc}
_02075E40:
	ldr r0, _02075E68 ; =0x06880000
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [r1, #0xc]
	pop {r3, pc}
_02075E4A:
	ldr r0, _02075E6C ; =0x06894000
	str r0, [r1, #0x10]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [r1, #0xc]
	pop {r3, pc}
_02075E56:
	ldr r1, _02075E70 ; =0x06890000
	ldr r0, _02075E64 ; =0x0214C050
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_02075E64: .word 0x0214C050
_02075E68: .word 0x06880000
_02075E6C: .word 0x06894000
_02075E70: .word 0x06890000
	thumb_func_end GX_BeginLoadBGExtPltt

	thumb_func_start GX_LoadBGExtPltt
GX_LoadBGExtPltt: ; 0x02075E74
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r3, _02075ED0 ; =0x0214C050
	add r5, r0, #0
	ldr r6, [r3, #0x10]
	add r4, r2, #0
	add r6, r6, r1
	ldr r1, [r3, #0xc]
	sub r3, r6, r1
	ldr r1, _02075ED4 ; =0x0209B528
	mov r6, #0
	ldr r1, [r1]
	mvn r6, r6
	cmp r1, r6
	beq _02075EC6
	cmp r1, #3
	bls _02075EAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r2, r3, #0
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02075EAC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r2, r3, #0
	add r1, r5, #0
	add r3, r4, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02075EC6:
	add r1, r3, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02075ED0: .word 0x0214C050
_02075ED4: .word 0x0209B528
	thumb_func_end GX_LoadBGExtPltt

	thumb_func_start sub_02075ED8
sub_02075ED8: ; 0x02075ED8
	bx pc
	nop
	thumb_func_end sub_02075ED8

	arm_func_start sub_02075EDC
sub_02075EDC: ; 0x02075EDC
	ldr ip, _02075EE4 ; =sub_027681F4
	bx ip
	.align 2, 0
_02075EE4: .word sub_027681F4
	arm_func_end sub_02075EDC

	thumb_func_start GX_EndLoadBGExtPltt
GX_EndLoadBGExtPltt: ; 0x02075EE8
	push {r4, lr}
	ldr r0, _02075F18 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075F06
	cmp r0, #3
	bls _02075F02
	sub r0, r0, #4
	bl sub_02075F20
	b _02075F06
_02075F02:
	bl sub_0207829C
_02075F06:
	ldr r4, _02075F1C ; =0x0214C050
	ldr r0, [r4, #0x14]
	bl sub_02076758
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_02075F18: .word 0x0209B528
_02075F1C: .word 0x0214C050
	thumb_func_end GX_EndLoadBGExtPltt

	thumb_func_start sub_02075F20
sub_02075F20: ; 0x02075F20
	bx pc
	nop
	thumb_func_end sub_02075F20

	arm_func_start sub_02075F24
sub_02075F24: ; 0x02075F24
	ldr ip, _02075F2C ; =sub_0276824C
	bx ip
	.align 2, 0
_02075F2C: .word sub_0276824C
	arm_func_end sub_02075F24

	thumb_func_start GX_BeginLoadOBJExtPltt
GX_BeginLoadOBJExtPltt: ; 0x02075F30
	push {r3, lr}
	bl sub_02076C80
	ldr r1, _02075F54 ; =0x0214C050
	cmp r0, #0
	str r0, [r1, #8]
	beq _02075F52
	cmp r0, #0x20
	beq _02075F48
	cmp r0, #0x40
	beq _02075F4E
	pop {r3, pc}
_02075F48:
	ldr r0, _02075F58 ; =0x06890000
	str r0, [r1, #4]
	pop {r3, pc}
_02075F4E:
	ldr r0, _02075F5C ; =0x06894000
	str r0, [r1, #4]
_02075F52:
	pop {r3, pc}
	.align 2, 0
_02075F54: .word 0x0214C050
_02075F58: .word 0x06890000
_02075F5C: .word 0x06894000
	thumb_func_end GX_BeginLoadOBJExtPltt

	thumb_func_start GX_LoadOBJExtPltt
GX_LoadOBJExtPltt: ; 0x02075F60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _02075FB8 ; =0x0214C050
	add r5, r0, #0
	ldr r3, [r1, #4]
	ldr r1, _02075FBC ; =0x0209B528
	add r7, r2, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _02075FAE
	cmp r6, #3
	bls _02075F94
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r3, r4
	sub r0, r6, #4
	add r1, r5, #0
	add r3, r7, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02075F94:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r3, r4
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02075FAE:
	add r1, r3, r4
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02075FB8: .word 0x0214C050
_02075FBC: .word 0x0209B528
	thumb_func_end GX_LoadOBJExtPltt

	thumb_func_start GX_EndLoadOBJExtPltt
GX_EndLoadOBJExtPltt: ; 0x02075FC0
	push {r4, lr}
	ldr r0, _02075FF0 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02075FDE
	cmp r0, #3
	bls _02075FDA
	sub r0, r0, #4
	bl sub_02075F20
	b _02075FDE
_02075FDA:
	bl sub_0207829C
_02075FDE:
	ldr r4, _02075FF4 ; =0x0214C050
	ldr r0, [r4, #8]
	bl sub_020767F4
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02075FF0: .word 0x0209B528
_02075FF4: .word 0x0214C050
	thumb_func_end GX_EndLoadOBJExtPltt

	thumb_func_start GXS_BeginLoadBGExtPltt
GXS_BeginLoadBGExtPltt: ; 0x02075FF8
	push {r3, lr}
	bl sub_02076CF0
	ldr r1, _02076004 ; =0x0214C050
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
_02076004: .word 0x0214C050
	thumb_func_end GXS_BeginLoadBGExtPltt

	thumb_func_start GXS_LoadBGExtPltt
GXS_LoadBGExtPltt: ; 0x02076008
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _0207605C ; =0x0209B528
	mov r6, #0
	ldr r1, [r1]
	mvn r6, r6
	add r5, r0, #0
	add r3, r2, #0
	cmp r1, r6
	beq _02076050
	cmp r1, #3
	ldr r2, _02076060 ; =0x06898000
	bls _02076038
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02075ED8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076038:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r4, r2
	bl sub_020781F0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076050:
	ldr r1, _02076060 ; =0x06898000
	add r1, r4, r1
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207605C: .word 0x0209B528
_02076060: .word 0x06898000
	thumb_func_end GXS_LoadBGExtPltt

	thumb_func_start GXS_EndLoadBGExtPltt
GXS_EndLoadBGExtPltt: ; 0x02076064
	push {r4, lr}
	ldr r0, _02076090 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076082
	cmp r0, #3
	bls _0207607E
	sub r0, r0, #4
	bl sub_02075F20
	b _02076082
_0207607E:
	bl sub_0207829C
_02076082:
	ldr r4, _02076094 ; =0x0214C050
	ldr r0, [r4]
	bl sub_02076B7C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02076090: .word 0x0209B528
_02076094: .word 0x0214C050
	thumb_func_end GXS_EndLoadBGExtPltt

	thumb_func_start GXS_BeginLoadOBJExtPltt
GXS_BeginLoadOBJExtPltt: ; 0x02076098
	push {r3, lr}
	bl sub_02076D10
	ldr r1, _020760A4 ; =0x0214C050
	str r0, [r1, #0x18]
	pop {r3, pc}
	.align 2, 0
_020760A4: .word 0x0214C050
	thumb_func_end GXS_BeginLoadOBJExtPltt

	thumb_func_start GXS_LoadOBJExtPltt
GXS_LoadOBJExtPltt: ; 0x020760A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _020760FC ; =0x0209B528
	mov r6, #0
	ldr r1, [r1]
	mvn r6, r6
	add r5, r0, #0
	add r3, r2, #0
	cmp r1, r6
	beq _020760F0
	cmp r1, #3
	ldr r2, _02076100 ; =0x068A0000
	bls _020760D8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r5, #0
	add r2, r4, r2
	bl sub_02075ED8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_020760D8:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r4, r2
	bl sub_020781F0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_020760F0:
	ldr r1, _02076100 ; =0x068A0000
	add r1, r4, r1
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_020760FC: .word 0x0209B528
_02076100: .word 0x068A0000
	thumb_func_end GXS_LoadOBJExtPltt

	thumb_func_start GXS_EndLoadOBJExtPltt
GXS_EndLoadOBJExtPltt: ; 0x02076104
	push {r4, lr}
	ldr r0, _02076130 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076122
	cmp r0, #3
	bls _0207611E
	sub r0, r0, #4
	bl sub_02075F20
	b _02076122
_0207611E:
	bl sub_0207829C
_02076122:
	ldr r4, _02076134 ; =0x0214C050
	ldr r0, [r4, #0x18]
	bl sub_02076BCC
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
_02076130: .word 0x0209B528
_02076134: .word 0x0214C050
	thumb_func_end GXS_EndLoadOBJExtPltt