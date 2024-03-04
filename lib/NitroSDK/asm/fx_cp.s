	.include "asm/macros.inc"
	.include "fx_cp.inc"
	.include "global.inc"
	.text

	thumb_func_start FX_Div
FX_Div: ; 0x02073DF0
	push {r3, lr}
	bl FX_DivAsync
	bl FX_GetDivResult
	pop {r3, pc}
	thumb_func_end FX_Div

	thumb_func_start FX_Inv
FX_Inv: ; 0x02073DFC
	push {r3, lr}
	bl FX_InvAsync
	bl FX_GetDivResult
	pop {r3, pc}
	thumb_func_end FX_Inv

	thumb_func_start FX_InvFx64c
FX_InvFx64c: ; 0x02073E08
	push {r3, lr}
	bl FX_InvAsync
	ldr r2, _02073E20 ; =0x04000280
	lsr r0, r2, #0xb
_02073E12:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073E12
	ldr r1, _02073E24 ; =0x040002A0
	ldmia r1!, {r0, r1}
	pop {r3, pc}

_02073E20: .word 0x04000280
_02073E24: .word 0x040002A0
	thumb_func_end FX_InvFx64c

	thumb_func_start FX_Sqrt
FX_Sqrt: ; 0x02073E28
	push {r3, lr}
	cmp r0, #0
	ble _02073E42
	ldr r1, _02073E48 ; =0x040002B0
	mov r2, #1
	strh r2, [r1]
	mov r2, #0
	add r1, #8
	str r2, [r1]
	str r0, [r1, #4]
	bl FX_GetSqrtResult
	pop {r3, pc}
_02073E42:
	mov r0, #0
	pop {r3, pc}

_02073E48: .word 0x040002B0
	thumb_func_end FX_Sqrt

	thumb_func_start FX_InvSqrt
FX_InvSqrt: ; 0x02073E4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r4, #0
	ble _02073E82
	bl FX_InvAsync
	add r0, r4, #0
	bl FX_SqrtAsync
	bl FX_GetDivResultFx64c
	ldr r4, _02073E88 ; =0x040002B0
	lsr r2, r4, #0xb
_02073E66:
	ldrh r3, [r4]
	tst r3, r2
	bne _02073E66
	ldr r5, _02073E8C ; =0x040002B4
	mov r3, #0
	ldr r2, [r5]
	mov r4, #0
	blx sub_0208D60C
	lsr r2, r5, #0x11
	add r0, r0, r4
	adc r1, r2
	asr r0, r1, #0xa
	pop {r3, r4, r5, pc}
_02073E82:
	mov r0, #0
	pop {r3, r4, r5, pc}

_02073E88: .word 0x040002B0
_02073E8C: .word 0x040002B4
	thumb_func_end FX_InvSqrt

	thumb_func_start FX_GetDivResultFx64c
FX_GetDivResultFx64c: ; 0x02073E90
	ldr r2, _02073EA0 ; =0x04000280
	lsr r0, r2, #0xb
_02073E94:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073E94
	ldr r1, _02073EA4 ; =0x040002A0
	ldmia r1!, {r0, r1}
	bx lr
	.align 2, 0
_02073EA0: .word 0x04000280
_02073EA4: .word 0x040002A0
	thumb_func_end FX_GetDivResultFx64c

	thumb_func_start FX_GetDivResult
FX_GetDivResult: ; 0x02073EA8
	ldr r2, _02073ECC ; =0x04000280
	lsr r0, r2, #0xb
_02073EAC:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073EAC
	ldr r0, _02073ED0 ; =0x040002A0
	mov r1, #0
	ldr r2, [r0]
	ldr r3, [r0, #4]
	mov r0, #2
	lsl r0, r0, #0x12
	add r0, r2, r0
	adc r3, r1
	lsl r1, r3, #0xc
	lsr r0, r0, #0x14
	orr r0, r1
	bx lr

_02073ECC: .word 0x04000280
_02073ED0: .word 0x040002A0
	thumb_func_end FX_GetDivResult

	thumb_func_start FX_InvAsync
FX_InvAsync: ; 0x02073ED4
	push {r3, r4}
	ldr r4, _02073EF4 ; =0x04000280
	mov r1, #1
	strh r1, [r4]
	add r1, r4, #0
	lsr r3, r4, #0xe
	mov r2, #0
	add r1, #0x10
	str r2, [r1]
	str r3, [r1, #4]
	add r4, #0x18
	str r0, [r4]
	str r2, [r4, #4]
	pop {r3, r4}
	bx lr

_02073EF4: .word 0x04000280
	thumb_func_end FX_InvAsync

	thumb_func_start FX_SqrtAsync
FX_SqrtAsync: ; 0x02073EF8
	cmp r0, #0
	ldr r1, _02073F1C ; =0x040002B0
	ble _02073F0C
	mov r2, #1
	strh r2, [r1]
	mov r2, #0
	add r1, #8
	str r2, [r1]
	str r0, [r1, #4]
	bx lr
_02073F0C:
	mov r0, #1
	strh r0, [r1]
	mov r0, #0
	add r1, #8
	str r0, [r1]
	str r0, [r1, #4]
	bx lr

_02073F1C: .word 0x040002B0
	thumb_func_end FX_SqrtAsync

	thumb_func_start FX_GetSqrtResult
FX_GetSqrtResult: ; 0x02073F20
	ldr r2, _02073F38 ; =0x040002B0
	lsr r0, r2, #0xb
_02073F24:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073F24
	ldr r0, _02073F3C ; =0x040002B4
	ldr r1, [r0]
	lsr r0, r0, #0x11
	add r0, r1, r0
	lsr r0, r0, #0xa
	bx lr

_02073F38: .word 0x040002B0
_02073F3C: .word 0x040002B4
	thumb_func_end FX_GetSqrtResult

	thumb_func_start FX_DivAsync
FX_DivAsync: ; 0x02073F40
	push {r3, r4}
	ldr r4, _02073F60 ; =0x04000280
	mov r2, #1
	strh r2, [r4]
	add r2, r4, #0
	mov r3, #0
	add r2, #0x10
	str r3, [r2]
	str r0, [r2, #4]
	add r4, #0x18
	mov r2, #0
	str r1, [r4]
	str r2, [r4, #4]
	pop {r3, r4}
	bx lr

_02073F60: .word 0x04000280
	thumb_func_end FX_DivAsync

	thumb_func_start FX_DivS32
FX_DivS32: ; 0x02073F64
	ldr r2, _02073F84 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	add r0, #0x18
	str r1, [r0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02073F76:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073F76
	ldr r0, _02073F88 ; =0x040002A0
	ldr r0, [r0]
	bx lr

_02073F84: .word 0x04000280
_02073F88: .word 0x040002A0
	thumb_func_end FX_DivS32

	thumb_func_start FX_ModS32
FX_ModS32: ; 0x02073F8C
	ldr r2, _02073FAC ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	add r0, #0x18
	str r1, [r0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02073F9E:
	ldrh r1, [r2]
	tst r1, r0
	bne _02073F9E
	ldr r0, _02073FB0 ; =0x040002A8
	ldr r0, [r0]
	bx lr

_02073FAC: .word 0x04000280
_02073FB0: .word 0x040002A8
	thumb_func_end FX_ModS32
