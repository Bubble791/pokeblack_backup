	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0206FEBC
sub_0206FEBC: ; 0x0206FEBC
	ldr ip, _0206FEC4 ; =sub_02767520
	bx ip
	.align 2, 0
_0206FEC4: .word sub_02767520
	arm_func_end sub_0206FEBC

	thumb_func_start sub_0206FEC8
sub_0206FEC8: ; 0x0206FEC8
	ldr r3, _0206FECC ; =sub_0206F07C
	bx r3
	.align 2, 0
_0206FECC: .word sub_0206F07C
	thumb_func_end sub_0206FEC8

	thumb_func_start sub_0206FED0
sub_0206FED0: ; 0x0206FED0
	ldr r0, _0206FED4 ; =0x0214BAAC
	bx lr
	.align 2, 0
_0206FED4: .word 0x0214BAAC
	thumb_func_end sub_0206FED0

	thumb_func_start sub_0206FED8
sub_0206FED8: ; 0x0206FED8
	push {r3, r4, r5, lr}
	bl PXI_Init
	ldr r4, _0206FEF4 ; =0x0214BD40
	mov r5, #0
	str r5, [r4]
	ldr r1, _0206FEF8 ; =sub_0206FEFC
	mov r0, #0xe
	str r5, [r4, #4]
	bl PXI_SetFifoRecvCallback
	str r5, [r4, #8]
	pop {r3, r4, r5, pc}
	nop
_0206FEF4: .word 0x0214BD40
_0206FEF8: .word sub_0206FEFC
	thumb_func_end sub_0206FED8

	thumb_func_start sub_0206FEFC
sub_0206FEFC: ; 0x0206FEFC
	push {r3, r4, r5, lr}
	mov r0, #0x3f
	and r0, r1
	cmp r0, #0x11
	bne _0206FF2E
	ldr r5, _0206FF4C ; =0x0214BD40
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0206FF4A
	mov r4, #1
	str r4, [r5, #4]
	mov r0, #1
	mov r1, #0
	bl sub_0206F0F0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0206FF24
	blx r0
	add r4, r0, #0
_0206FF24:
	cmp r4, #0
	beq _0206FF4A
	bl sub_0206FF68
	pop {r3, r4, r5, pc}
_0206FF2E:
	cmp r0, #2
	bne _0206FF46
	ldr r0, _0206FF4C ; =0x0214BD40
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #2
	bl sub_0206F0F0
	pop {r3, r4, r5, pc}
_0206FF46:
	bl OS_Terminate
_0206FF4A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206FF4C: .word 0x0214BD40
	thumb_func_end sub_0206FEFC

	thumb_func_start sub_0206FF50
sub_0206FF50: ; 0x0206FF50
	ldr r1, _0206FF58 ; =0x0214BD40
	str r0, [r1, #8]
	bx lr
	nop
_0206FF58: .word 0x0214BD40
	thumb_func_end sub_0206FF50

	thumb_func_start sub_0206FF5C
sub_0206FF5C: ; 0x0206FF5C
	ldr r0, _0206FF64 ; =0x0214BD40
	ldr r0, [r0, #4]
	bx lr
	nop
_0206FF64: .word 0x0214BD40
	thumb_func_end sub_0206FF5C

	thumb_func_start sub_0206FF68
sub_0206FF68: ; 0x0206FF68
	push {r3, lr}
	ldr r0, _0206FFA8 ; =0x02FFFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _0206FF7C
	bl sub_0207EF8C
_0206FF7C:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206FF88
	bl sub_0206FFAC
_0206FF88:
	mov r0, #1
	mov r1, #1
	bl sub_0206FFFC
	bl MI_StopAllDma
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206FFA0
	bl sub_0206FFBC
_0206FFA0:
	bl OS_Terminate
	pop {r3, pc}
	nop
_0206FFA8: .word 0x02FFFFA8
	thumb_func_end sub_0206FF68

	thumb_func_start sub_0206FFAC
sub_0206FFAC: ; 0x0206FFAC
	bx pc
	nop
	thumb_func_end sub_0206FFAC

	arm_func_start sub_0206FFB0
sub_0206FFB0: ; 0x0206FFB0
	ldr ip, _0206FFB8 ; =sub_02769578
	bx ip
	.align 2, 0
_0206FFB8: .word sub_02769578
	arm_func_end sub_0206FFB0

	thumb_func_start sub_0206FFBC
sub_0206FFBC: ; 0x0206FFBC
	bx pc
	nop
	thumb_func_end sub_0206FFBC

	arm_func_start sub_0206FFC0
sub_0206FFC0: ; 0x0206FFC0
	ldr ip, _0206FFC8 ; =sub_02768298
	bx ip
	.align 2, 0
_0206FFC8: .word sub_02768298
	arm_func_end sub_0206FFC0