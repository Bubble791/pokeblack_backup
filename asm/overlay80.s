    .include "macros/function.inc"
	.include "overlay80.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_021EA860
sub_021EA860: ; 0x021EA860
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EA860

	thumb_func_start sub_021EA864
sub_021EA864: ; 0x021EA864
	ldr r3, _021EA868 ; =sub_021EA860
	bx r3
	.align 2, 0
_021EA868: .word sub_021EA860
	thumb_func_end sub_021EA864

	thumb_func_start ovy80_21ea86c
ovy80_21ea86c: ; 0x021EA86C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5, #8]
	ldr r0, _021EA8EC ; =0x0000011F
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_02016AD8
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	mov r6, #0
	add r1, r0, #0
	str r6, [sp]
	ldrh r0, [r5, #8]
	lsl r2, r1, #2
	ldr r1, _021EA8F0 ; =0x021EAAD4
	str r0, [sp, #4]
	ldr r1, [r1, r2]
	add r0, r4, #0
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	ldrh r0, [r5, #8]
	mov r1, #2
	mov r2, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	str r0, [r5, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r5, #8]
	mov r1, #3
	mov r2, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl GFL_G2DIOLoadNSCRSync
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldrh r1, [r5, #8]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EA8EC: .word 0x0000011F
_021EA8F0: .word 0x021EAAD4
	thumb_func_end ovy80_21ea86c

	thumb_func_start ovy80_21ea8f4
ovy80_21ea8f4: ; 0x021EA8F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r4, #4
	mov r7, #0
_021EA8FC:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	ble _021EA8FC
	ldr r4, _021EA9EC ; =0x021EAADC
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #3
	bl sub_02044BD8
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	mov r0, #6
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r6, _021EA9F0 ; =0x021EAAFC
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044BD8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #5
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #5
	bl sub_02044F90
	ldr r6, _021EA9F4 ; =0x021EAB1C
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #2
	bl sub_02044BD8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #4
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #4
	bl sub_02044F90
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA9EC: .word 0x021EAADC
_021EA9F0: .word 0x021EAAFC
_021EA9F4: .word 0x021EAB1C
	thumb_func_end ovy80_21ea8f4

	thumb_func_start ovy80_21ea9f8
ovy80_21ea9f8: ; 0x021EA9F8
	push {r4, lr}
	add r4, r0, #0
	bl ovy80_21ea8f4
	add r0, r4, #0
	bl ovy80_21ea86c
	ldr r1, _021EAA14 ; =0x021EAA65
	ldr r2, _021EAA18 ; =0x00000147
	add r0, r4, #0
	bl sub_021EA864
	pop {r4, pc}
	nop
_021EAA14: .word 0x021EAA65
_021EAA18: .word 0x00000147
	thumb_func_end ovy80_21ea9f8

	thumb_func_start ovy80_21eaa1c
ovy80_21eaa1c: ; 0x021EAA1C
	push {r3, lr}
	ldr r2, [r0, #0x14]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	pop {r3, pc}
	thumb_func_end ovy80_21eaa1c
_021EAA64:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy80_21eaa68
ovy80_21eaa68: ; 0x021EAA68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r0, #0x5e
	lsl r0, r0, #2
	add r5, r2, #0
	str r0, [sp]
	ldr r3, _021EAA94 ; =0x021EAB40
	mov r0, #0x15
	mov r1, #0x20
	mov r2, #1
	mov r6, #0x15
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r6, [r4, #8]
	str r5, [r4, #0x18]
	bl ovy80_21ea9f8
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EAA94: .word 0x021EAB40
	thumb_func_end ovy80_21eaa68

	thumb_func_start ovy80_21eaa98
ovy80_21eaa98: ; 0x021EAA98
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EAAA4
	blx r1
_021EAAA4:
	ldr r0, [r4, #0x18]
	bl sub_02016AD8
	bl sub_02017238
	bl sub_02012BE4
	pop {r4, pc}
	thumb_func_end ovy80_21eaa98
_021EAAB4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy80_21eaab8
ovy80_21eaab8: ; 0x021EAAB8
	push {r4, lr}
	add r4, r0, #0
	bl ovy80_21eaa1c
	ldr r0, _021EAAD0 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	nop
_021EAAD0: .word 0x04001050
	thumb_func_end ovy80_21eaab8
_021EAAD4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6E, 0x6F, 0x5F, 0x67, 0x65, 0x61, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EAAD4
