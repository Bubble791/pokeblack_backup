	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02082608
sub_02082608: ; 0x02082608
	ldr r0, _0208261C ; =0x02FFFC30
	ldrh r1, [r0]
	ldr r0, _02082620 ; =0x0000FFFF
	cmp r1, r0
	beq _02082616
	mov r0, #1
	bx lr
_02082616:
	mov r0, #0
	bx lr
	nop
_0208261C: .word 0x02FFFC30
_02082620: .word 0x0000FFFF
	thumb_func_end sub_02082608

	thumb_func_start sub_02082624
sub_02082624: ; 0x02082624
	push {r3, lr}
	mov r0, #0
	str r0, [sp]
	ldr r1, _02082640 ; =0x0214EDC4
	ldr r2, _02082644 ; =0x05000001
	add r0, sp, #0
	bl sub_02004190
	blx OS_GetLockID
	ldr r1, _02082648 ; =0x0214EDC0
	strh r0, [r1, #6]
	pop {r3, pc}
	nop
_02082640: .word 0x0214EDC4
_02082644: .word 0x05000001
_02082648: .word 0x0214EDC0
	thumb_func_end sub_02082624

	thumb_func_start sub_0208264C
sub_0208264C: ; 0x0208264C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r5, #1
	bl sub_02082608
	cmp r0, #0
	bne _02082660
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_02082660:
	ldr r4, _020826E4 ; =0x02FFFC30
	ldrb r0, [r4, #5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02082672
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_02082672:
	ldr r0, _020826E8 ; =0x0214EDC0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl sub_0208274C
	add r0, sp, #0
	bl sub_020826F0
	mov r2, #2
	lsl r2, r2, #0x1a
	add r0, r2, #0
	add r0, #0xb2
	ldrb r3, [r0]
	cmp r3, #0x96
	bne _0208269A
	add r2, #0xbe
	ldrh r1, [r4]
	ldrh r0, [r2]
	cmp r1, r0
	bne _020826C2
_0208269A:
	cmp r3, #0x96
	beq _020826AA
	ldr r0, _020826E4 ; =0x02FFFC30
	ldrh r1, [r0]
	ldr r0, _020826EC ; =0x0801FFFE
	ldrh r0, [r0]
	cmp r1, r0
	bne _020826C2
_020826AA:
	mov r0, #2
	ldr r2, _020826E4 ; =0x02FFFC30
	lsl r0, r0, #0x1a
	add r0, #0xac
	ldr r1, [r2, #8]
	ldr r0, [r0]
	cmp r1, r0
	beq _020826CE
	ldrb r0, [r2, #5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020826CE
_020826C2:
	ldr r2, _020826E4 ; =0x02FFFC30
	mov r0, #2
	ldrb r1, [r2, #5]
	mov r5, #0
	orr r0, r1
	strb r0, [r2, #5]
_020826CE:
	add r0, sp, #0
	bl sub_02082724
	ldr r0, _020826E8 ; =0x0214EDC0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl sub_02082788
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_020826E4: .word 0x02FFFC30
_020826E8: .word 0x0214EDC0
_020826EC: .word 0x0801FFFE
	thumb_func_end sub_0208264C

	thumb_func_start sub_020826F0
sub_020826F0: ; 0x020826F0
	push {r3, r4}
	ldr r1, _02082720 ; =0x04000204
	mov r3, #0xc
	ldrh r2, [r1]
	and r2, r3
	asr r2, r2, #2
	str r2, [r0]
	ldrh r4, [r1]
	mov r2, #0x10
	and r2, r4
	asr r2, r2, #4
	str r2, [r0, #4]
	ldrh r2, [r1]
	mov r0, #0xc
	bic r2, r0
	add r0, r2, #0
	orr r0, r3
	strh r0, [r1]
	ldrh r2, [r1]
	mov r0, #0x10
	bic r2, r0
	strh r2, [r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02082720: .word 0x04000204
	thumb_func_end sub_020826F0

	thumb_func_start sub_02082724
sub_02082724: ; 0x02082724
	push {r3, r4}
	ldr r1, _02082748 ; =0x04000204
	ldr r4, [r0]
	ldrh r3, [r1]
	mov r2, #0xc
	bic r3, r2
	lsl r2, r4, #2
	orr r2, r3
	strh r2, [r1]
	ldr r3, [r0, #4]
	ldrh r2, [r1]
	mov r0, #0x10
	bic r2, r0
	lsl r0, r3, #4
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02082748: .word 0x04000204
	thumb_func_end sub_02082724

	thumb_func_start sub_0208274C
sub_0208274C: ; 0x0208274C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02082784 ; =0x02FFFFE8
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0x40
_02082756:
	blx OS_DisableInterrupts
	str r0, [r4, #4]
	add r0, r7, #0
	bl OS_ReadOwnerOfLockWord
	and r0, r6
	str r0, [r4]
	bne _02082780
	add r0, r5, #0
	bl OS_TryLockCartridge
	cmp r0, #0
	beq _02082780
	ldr r0, [r4, #4]
	blx OS_RestoreInterrupts
	mov r0, #1
	bl SVC_WaitByLoop
	b _02082756
_02082780:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02082784: .word 0x02FFFFE8
	thumb_func_end sub_0208274C

	thumb_func_start sub_02082788
sub_02082788: ; 0x02082788
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	bne _02082796
	bl sub_0207A138
_02082796:
	ldr r0, [r4, #4]
	blx OS_RestoreInterrupts
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02082788

	thumb_func_start sub_020827A0
sub_020827A0: ; 0x020827A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xd
	add r1, r5, #0
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	beq _020827CC
	mov r4, #1
	mov r6, #0xd
	mov r7, #0
_020827B8:
	add r0, r4, #0
	bl SVC_WaitByLoop
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _020827B8
_020827CC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020827A0

	thumb_func_start sub_020827D0
sub_020827D0: ; 0x020827D0
	push {r3, lr}
	bl sub_02082624
	mov r0, #0xd
	mov r1, #0
	bl PXI_SetFifoRecvCallback
	ldr r1, _020827F0 ; =0x020827F5
	mov r0, #0xd
	bl PXI_SetFifoRecvCallback
	mov r0, #1
	bl sub_020827A0
	pop {r3, pc}
	nop
_020827F0: .word 0x020827F5
	thumb_func_end sub_020827D0
_020827F4:
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0xF8, 0xF7, 0x5E, 0xFA
	.byte 0x00, 0x28, 0x01, 0xD1, 0xF9, 0xF7, 0xB6, 0xFF, 0x20, 0x1C, 0x00, 0xF0, 0x01, 0xF8, 0x10, 0xBD
	.byte 0x78, 0x47, 0xC0, 0x46, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0xE9, 0x96, 0x76, 0x02
	.byte 0x70, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x16, 0x1C, 0xF8, 0xF7, 0x48, 0xFA, 0x00, 0x28, 0x01, 0xD1
	.byte 0xF9, 0xF7, 0xA0, 0xFF, 0x28, 0x1C, 0x21, 0x1C, 0x32, 0x1C, 0x00, 0xF0, 0x01, 0xF8, 0x70, 0xBD
	.byte 0x78, 0x47, 0xC0, 0x46, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0xF5, 0x96, 0x76, 0x02
	.byte 0x38, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0xF8, 0xF7, 0x31, 0xFA, 0x00, 0x28, 0x01, 0xD1, 0xF9, 0xF7
	.byte 0x89, 0xFF, 0x28, 0x1C, 0x21, 0x1C, 0x00, 0xF0, 0x01, 0xF8, 0x38, 0xBD, 0x78, 0x47, 0xC0, 0x46
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0xF9, 0x96, 0x76, 0x02

	thumb_func_start sub_0208287C
sub_0208287C: ; 0x0208287C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl OSi_IsRunOnTwl
	cmp r0, #0
	bne _02082892
	bl OS_Terminate
_02082892:
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	blx sub_020828A4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208287C

