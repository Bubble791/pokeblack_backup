	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start RTC_Init
RTC_Init: ; 0x0207CB88
	push {r3, r4, r5, lr}
	ldr r0, _0207CBC0 ; =0x0214C668
	ldrh r1, [r0]
	cmp r1, #0
	bne _0207CBBE
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bl PXI_Init
	mov r5, #5
	mov r4, #1
_0207CBAA:
	add r0, r5, #0
	add r1, r4, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0207CBAA
	ldr r1, _0207CBC4 ; =RtcCommonCallback
	add r0, r5, #0
	bl PXI_SetFifoRecvCallback
_0207CBBE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207CBC0: .word 0x0214C668
_0207CBC4: .word RtcCommonCallback
	thumb_func_end RTC_Init

	thumb_func_start RTC_GetDateAsync
RTC_GetDateAsync: ; 0x0207CBC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	blx OS_DisableInterrupts
	ldr r4, _0207CC0C ; =0x0214C668
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0207CBE4
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207CBE4:
	mov r1, #1
	str r1, [r4, #4]
	blx OS_RestoreInterrupts
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r5, [r4, #0xc]
	str r6, [r4, #8]
	str r7, [r4, #0x14]
	bl RTCi_ReadRawDateAsync
	cmp r0, #0
	beq _0207CC04
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207CC04:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207CC0C: .word 0x0214C668
	thumb_func_end RTC_GetDateAsync

	thumb_func_start RTC_GetDate
RTC_GetDate: ; 0x0207CC10
	push {r3, lr}
	ldr r1, _0207CC2C ; =RtcGetResultCallback
	mov r2, #0
	bl RTC_GetDateAsync
	ldr r1, _0207CC30 ; =0x0214C668
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0207CC26
	blx RtcWaitBusy
_0207CC26:
	ldr r0, _0207CC30 ; =0x0214C668
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	.align 2, 0
_0207CC2C: .word RtcGetResultCallback
_0207CC30: .word 0x0214C668
	thumb_func_end RTC_GetDate

	thumb_func_start RTC_GetTimeAsync
RTC_GetTimeAsync: ; 0x0207CC34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	blx OS_DisableInterrupts
	ldr r4, _0207CC7C ; =0x0214C668
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0207CC50
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207CC50:
	mov r1, #1
	str r1, [r4, #4]
	blx OS_RestoreInterrupts
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	str r5, [r4, #0xc]
	str r6, [r4, #8]
	str r7, [r4, #0x14]
	bl RTCi_ReadRawTimeAsync
	cmp r0, #0
	beq _0207CC72
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207CC72:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207CC7C: .word 0x0214C668
	thumb_func_end RTC_GetTimeAsync

	thumb_func_start RTC_GetTime
RTC_GetTime: ; 0x0207CC80
	push {r3, lr}
	ldr r1, _0207CC9C ; =RtcGetResultCallback
	mov r2, #0
	bl RTC_GetTimeAsync
	ldr r1, _0207CCA0 ; =0x0214C668
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0207CC96
	blx RtcWaitBusy
_0207CC96:
	ldr r0, _0207CCA0 ; =0x0214C668
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	.align 2, 0
_0207CC9C: .word RtcGetResultCallback
_0207CCA0: .word 0x0214C668
	thumb_func_end RTC_GetTime

	thumb_func_start RTC_GetDateTimeAsync
RTC_GetDateTimeAsync: ; 0x0207CCA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	blx OS_DisableInterrupts
	ldr r4, _0207CCF0 ; =0x0214C668
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0207CCC2
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207CCC2:
	mov r1, #1
	str r1, [r4, #4]
	blx OS_RestoreInterrupts
	mov r0, #2
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0x14]
	bl RTCi_ReadRawDateTimeAsync
	cmp r0, #0
	beq _0207CCE8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207CCE8:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207CCF0: .word 0x0214C668
	thumb_func_end RTC_GetDateTimeAsync

	thumb_func_start RTC_GetDateTime
RTC_GetDateTime: ; 0x0207CCF4
	push {r3, lr}
	ldr r2, _0207CD10 ; =RtcGetResultCallback
	mov r3, #0
	bl RTC_GetDateTimeAsync
	ldr r1, _0207CD14 ; =0x0214C668
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0207CD0A
	blx RtcWaitBusy
_0207CD0A:
	ldr r0, _0207CD14 ; =0x0214C668
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	.align 2, 0
_0207CD10: .word RtcGetResultCallback
_0207CD14: .word 0x0214C668
	thumb_func_end RTC_GetDateTime

	thumb_func_start sub_0207CD18
sub_0207CD18: ; 0x0207CD18
	ldr r0, _0207CD1C ; =0x0214C66C
	bx lr
	.align 2, 0
_0207CD1C: .word 0x0214C66C
	thumb_func_end sub_0207CD18

	thumb_func_start RtcCommonCallback
RtcCommonCallback: ; 0x0207CD20
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0207CFE0 ; =0x0214C668
	cmp r2, #0
	beq _0207CD4E
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0207CD32
	mov r0, #0
	str r0, [r4, #0x1c]
_0207CD32:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0207CD3C
	mov r0, #0
	str r0, [r4, #4]
_0207CD3C:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0207CD68
	mov r0, #0
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	mov r0, #6
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
_0207CD4E:
	mov r2, #0x7f
	lsl r2, r2, #8
	lsl r0, r1, #0x18
	and r1, r2
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	cmp r1, #0x30
	bne _0207CD6E
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0207CD6A
_0207CD68:
	b _0207CFDC
_0207CD6A:
	blx r0
	pop {r3, r4, r5, r6, r7, pc}
_0207CD6E:
	cmp r0, #0
	beq _0207CD74
	b _0207CF90
_0207CD74:
	ldr r0, [r4, #0x18]
	mov r5, #0
	cmp r0, #0xf
	bls _0207CD7E
	b _0207CF78
_0207CD7E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207CD8A: ; jump table
	.short _0207CDAA - _0207CD8A - 2 ; case 0
	.short _0207CDDC - _0207CD8A - 2 ; case 1
	.short _0207CE06 - _0207CD8A - 2 ; case 2
	.short _0207CFBC - _0207CD8A - 2 ; case 3
	.short _0207CFBC - _0207CD8A - 2 ; case 4
	.short _0207CFBC - _0207CD8A - 2 ; case 5
	.short _0207CE54 - _0207CD8A - 2 ; case 6
	.short _0207CE6C - _0207CD8A - 2 ; case 7
	.short _0207CE7C - _0207CD8A - 2 ; case 8
	.short _0207CED0 - _0207CD8A - 2 ; case 9
	.short _0207CF2A - _0207CD8A - 2 ; case 10
	.short _0207CFBC - _0207CD8A - 2 ; case 11
	.short _0207CFBC - _0207CD8A - 2 ; case 12
	.short _0207CFBC - _0207CD8A - 2 ; case 13
	.short _0207CFBC - _0207CD8A - 2 ; case 14
	.short _0207CFBC - _0207CD8A - 2 ; case 15
_0207CDAA:
	ldr r7, _0207CFE4 ; =0x02FFFDE8
	ldr r6, [r4, #0xc]
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RtcBCD2HEX
	str r0, [r6]
	ldr r0, [r7]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1b
	bl RtcBCD2HEX
	str r0, [r6, #4]
	ldr r0, [r7]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1a
	bl RtcBCD2HEX
	str r0, [r6, #8]
	add r0, r6, #0
	bl RTC_GetDayOfWeek
_0207CDD8:
	str r0, [r6, #0xc]
	b _0207CFBC
_0207CDDC:
	ldr r7, _0207CFE8 ; =0x02FFFDEC
	ldr r6, [r4, #0xc]
	ldr r0, [r7]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	bl RtcBCD2HEX
	str r0, [r6]
	ldr r0, [r7]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x19
	bl RtcBCD2HEX
	str r0, [r6, #4]
	ldr r0, [r7]
_0207CDFA:
	lsl r0, r0, #9
	lsr r0, r0, #0x19
	bl RtcBCD2HEX
	str r0, [r6, #8]
	b _0207CFBC
_0207CE06:
	ldr r7, _0207CFE4 ; =0x02FFFDE8
	ldr r6, [r4, #0xc]
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RtcBCD2HEX
	str r0, [r6]
	ldr r0, [r7]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1b
	bl RtcBCD2HEX
	str r0, [r6, #4]
	ldr r0, [r7]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1a
	bl RtcBCD2HEX
	str r0, [r6, #8]
	add r0, r6, #0
	bl RTC_GetDayOfWeek
	str r0, [r6, #0xc]
	ldr r0, [r7, #4]
	ldr r6, [r4, #0x10]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	bl RtcBCD2HEX
	str r0, [r6]
	ldr r0, [r7, #4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x19
	bl RtcBCD2HEX
	str r0, [r6, #4]
	ldr r0, [r7, #4]
	b _0207CDFA
_0207CE54:
	ldr r1, _0207CFEC ; =0x02FFFDEA
	ldr r0, [r4, #0xc]
	ldrh r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #4
	bne _0207CE68
_0207CE62:
	mov r1, #1
	str r1, [r0]
	b _0207CFBC
_0207CE68:
	str r5, [r0]
	b _0207CFBC
_0207CE6C:
	ldr r1, _0207CFEC ; =0x02FFFDEA
	ldr r0, [r4, #0xc]
	ldrh r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _0207CE7A
	b _0207CE62
_0207CE7A:
	b _0207CE68
_0207CE7C:
	ldr r7, _0207CFE8 ; =0x02FFFDEC
	ldr r6, [r4, #0xc]
	ldr r0, [r7]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	str r0, [r6]
	ldr r0, [r7]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1a
	bl RtcBCD2HEX
	str r0, [r6, #4]
	ldr r0, [r7]
	lsl r0, r0, #9
	lsr r0, r0, #0x19
	bl RtcBCD2HEX
	str r0, [r6, #8]
	str r5, [r6, #0xc]
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0207CEB0
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
_0207CEB0:
	ldr r0, _0207CFE8 ; =0x02FFFDEC
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _0207CEC0
	ldr r0, [r6, #0xc]
	add r0, r0, #2
	str r0, [r6, #0xc]
_0207CEC0:
	ldr r0, _0207CFE8 ; =0x02FFFDEC
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1f
	beq _0207CFBC
	ldr r0, [r6, #0xc]
	add r0, r0, #4
	b _0207CDD8
_0207CED0:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _0207CF26
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	ldr r0, _0207CFEC ; =0x02FFFDEA
	bne _0207CF08
	ldrh r2, [r0]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	cmp r2, #4
	beq _0207CFBC
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldrh r2, [r0]
	mov r1, #0xf
	bic r2, r1
	mov r1, #4
	orr r1, r2
	strh r1, [r0]
	bl RTCi_WriteRawStatus2Async
	cmp r0, #0
	bne _0207CFBC
_0207CF02:
	str r5, [r4, #0x1c]
	mov r5, #3
	b _0207CFBC
_0207CF08:
	ldrh r2, [r0]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	beq _0207CFBC
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldrh r2, [r0]
	mov r1, #0xf
	bic r2, r1
	strh r2, [r0]
	bl RTCi_WriteRawStatus2Async
	cmp r0, #0
	bne _0207CFBC
	b _0207CF02
_0207CF26:
	str r5, [r4, #0x1c]
	b _0207CFBC
_0207CF2A:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _0207CF76
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	ldr r0, _0207CFEC ; =0x02FFFDEA
	bne _0207CF58
	ldrh r2, [r0]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bne _0207CFBC
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	bl RTCi_WriteRawStatus2Async
	cmp r0, #0
	bne _0207CFBC
	b _0207CF02
_0207CF58:
	ldrh r2, [r0]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	beq _0207CFBC
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	bl RTCi_WriteRawStatus2Async
	cmp r0, #0
	bne _0207CFBC
	b _0207CF02
_0207CF76:
	b _0207CF26
_0207CF78:
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207CF88
	blx sub_0207CFF0
	add r5, r0, #0
	b _0207CFBC
_0207CF88:
	mov r0, #0
	mov r5, #4
	str r0, [r4, #0x1c]
	b _0207CFBC
_0207CF90:
	mov r1, #0
	str r1, [r4, #0x1c]
	cmp r0, #4
	bhi _0207CFBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207CFA4: ; jump table
	.short _0207CFBA - _0207CFA4 - 2 ; case 0
	.short _0207CFAE - _0207CFA4 - 2 ; case 1
	.short _0207CFB2 - _0207CFA4 - 2 ; case 2
	.short _0207CFB6 - _0207CFA4 - 2 ; case 3
	.short _0207CFBA - _0207CFA4 - 2 ; case 4
_0207CFAE:
	mov r5, #4
	b _0207CFBC
_0207CFB2:
	mov r5, #5
	b _0207CFBC
_0207CFB6:
	mov r5, #1
	b _0207CFBC
_0207CFBA:
	mov r5, #6
_0207CFBC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0207CFDC
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0207CFCC
	mov r0, #0
	str r0, [r4, #4]
_0207CFCC:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0207CFDC
	mov r0, #0
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r2
_0207CFDC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207CFE0: .word 0x0214C668
_0207CFE4: .word 0x02FFFDE8
_0207CFE8: .word 0x02FFFDEC
_0207CFEC: .word 0x02FFFDEA
	thumb_func_end RtcCommonCallback

	arm_func_start sub_0207CFF0
sub_0207CFF0: ; 0x0207CFF0
	ldr pc, _0207CFF4 ; =sub_02700000
	.align 2, 0
_0207CFF4: .word sub_02700000
	arm_func_end sub_0207CFF0

	thumb_func_start RtcBCD2HEX
RtcBCD2HEX: ; 0x0207CFF8
	push {r4, r5, r6, r7}
	mov r1, #0
	mov r5, #0
	mov r2, #0xf
_0207D000:
	lsl r3, r5, #2
	add r4, r0, #0
	lsr r4, r3
	add r3, r4, #0
	and r3, r2
	cmp r3, #0xa
	blo _0207D014
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207D014:
	add r5, r5, #1
	cmp r5, #8
	blt _0207D000
	mov r3, #0
	mov r2, #1
	mov r4, #0xf
	mov r5, #0xa
_0207D022:
	lsl r6, r3, #2
	add r7, r0, #0
	lsr r7, r6
	add r6, r7, #0
	and r6, r4
	mul r6, r2
	add r3, r3, #1
	add r1, r1, r6
	mul r2, r5
	cmp r3, #8
	blt _0207D022
	add r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end RtcBCD2HEX

	thumb_func_start RtcGetResultCallback
RtcGetResultCallback: ; 0x0207D040
	ldr r1, _0207D048 ; =0x0214C668
	str r0, [r1, #0x24]
	bx lr
	nop
_0207D048: .word 0x0214C668
	thumb_func_end RtcGetResultCallback

	arm_func_start RtcWaitBusy
RtcWaitBusy: ; 0x0207D04C
	ldr ip, _0207D060 ; =0x0214C66C
_0207D050:
	ldr r0, [ip]
	cmp r0, #1
	beq _0207D050
	bx lr
	.align 2, 0
_0207D060: .word 0x0214C66C
	arm_func_end RtcWaitBusy