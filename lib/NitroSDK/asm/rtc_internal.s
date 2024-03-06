	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start RTCi_ReadRawDateTimeAsync
RTCi_ReadRawDateTimeAsync: ; 0x0207D064
	ldr r3, _0207D06C ; =RtcSendPxiCommand
	mov r0, #0x10
	bx r3
	nop
_0207D06C: .word RtcSendPxiCommand
	thumb_func_end RTCi_ReadRawDateTimeAsync

	thumb_func_start RTCi_ReadRawDateAsync
RTCi_ReadRawDateAsync: ; 0x0207D070
	ldr r3, _0207D078 ; =RtcSendPxiCommand
	mov r0, #0x11
	bx r3
	nop
_0207D078: .word RtcSendPxiCommand
	thumb_func_end RTCi_ReadRawDateAsync

	thumb_func_start RTCi_ReadRawTimeAsync
RTCi_ReadRawTimeAsync: ; 0x0207D07C
	ldr r3, _0207D084 ; =RtcSendPxiCommand
	mov r0, #0x12
	bx r3
	nop
_0207D084: .word RtcSendPxiCommand
	thumb_func_end RTCi_ReadRawTimeAsync

	thumb_func_start RTCi_WriteRawStatus2Async
RTCi_WriteRawStatus2Async: ; 0x0207D088
	ldr r3, _0207D090 ; =RtcSendPxiCommand
	mov r0, #0x27
	bx r3
	nop
_0207D090: .word RtcSendPxiCommand
	thumb_func_end RTCi_WriteRawStatus2Async

	thumb_func_start RtcSendPxiCommand
RtcSendPxiCommand: ; 0x0207D094
	push {r4, lr}
	add r1, r0, #0
	lsl r2, r1, #8
	mov r1, #0x7f
	lsl r1, r1, #8
	and r1, r2
	mov r0, #5
	mov r2, #0
	mov r4, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _0207D0B0
	mov r4, #1
_0207D0B0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end RtcSendPxiCommand