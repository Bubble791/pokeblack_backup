	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start OS_GetMacAddress
OS_GetMacAddress: ; 0x0207C33C
	add r1, r0, #0
	ldr r0, _0207C348 ; =0x02FFFCF4
	ldr r3, _0207C34C ; =MI_CpuCopy8
	mov r2, #6
	bx r3
	nop
_0207C348: .word 0x02FFFCF4
_0207C34C: .word MI_CpuCopy8
	thumb_func_end OS_GetMacAddress

	thumb_func_start OS_GetOwnerInfo
OS_GetOwnerInfo: ; 0x0207C350
	push {r3, r4, r5, lr}
	ldr r4, _0207C3A4 ; =0x02FFFC80
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x64
	ldrh r0, [r0]
	mov r2, #0x14
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r5]
	ldrb r0, [r4, #2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r5, #1]
	ldrb r0, [r4, #3]
	strb r0, [r5, #2]
	ldrb r0, [r4, #4]
	strb r0, [r5, #3]
	ldrb r0, [r4, #0x1a]
	strh r0, [r5, #0x1a]
	add r0, r4, #0
	add r0, #0x50
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x52
	strh r1, [r0]
	add r0, r4, #6
	add r1, r5, #4
	blx MIi_CpuCopy16
	add r4, #0x1c
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1c
	mov r2, #0x34
	blx MIi_CpuCopy16
	mov r0, #0
	strh r0, [r5, #0x18]
	add r5, #0x50
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207C3A4: .word 0x02FFFC80
	thumb_func_end OS_GetOwnerInfo

	thumb_func_start OS_GetOwnerRtcOffset
OS_GetOwnerRtcOffset: ; 0x0207C3A8
	ldr r1, _0207C3B0 ; =0x02FFFC80
	ldr r0, [r1, #0x68]
	ldr r1, [r1, #0x6c]
	bx lr
	.align 2, 0
_0207C3B0: .word 0x02FFFC80
	thumb_func_end OS_GetOwnerRtcOffset

	thumb_func_start OS_GetFavoriteColorTable
OS_GetFavoriteColorTable: ; 0x0207C3B4
	ldr r0, _0207C3B8 ; =0x0209886C
	bx lr
	.align 2, 0
_0207C3B8: .word 0x0209886C
	thumb_func_end OS_GetFavoriteColorTable