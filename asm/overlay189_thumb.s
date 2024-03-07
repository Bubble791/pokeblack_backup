    .include "macros/function.inc"
	.include "overlay189.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy189_219ceb4
ovy189_219ceb4: ; 0x0219CEB4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, r0, #0
	ldr r0, _0219CF74 ; =0x0219CEA1
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r1, _0219CF78 ; =0x021ACF48
	ldr r3, _0219CF7C ; =0x000005A8
	str r5, [sp, #4]
	lsl r2, r2, #3
	ldr r1, [r1, r2]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ovy189_21a0e1c
	add r4, r0, #0
	bne _0219CEE8
	ldr r0, _0219CF80 ; =0x021ACF9C
	ldr r2, _0219CF84 ; =0x021ACFA0
	mov r1, #0
	bl sub_0203CB80
_0219CEE8:
	cmp r4, #0
	bne _0219CEF2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CEF2:
	ldr r1, _0219CF88 ; =0x021ACF40
	add r0, r4, #0
	str r4, [r5, #0xc]
	mov r2, #1
	mov r5, #1
	bl ovy189_21a09ec
	add r3, r0, #0
	bpl _0219CF14
	ldr r0, _0219CF80 ; =0x021ACF9C
	ldr r2, _0219CF8C ; =0x021ACFA8
	mov r1, #0
	bl sub_0203CB94
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CF14:
	ldr r1, _0219CF90 ; =0x021ACFC0
	ldr r2, _0219CF94 ; =0x021ACFC8
	add r0, r4, #0
	bl ovy189_21a07bc
	cmp r0, #0
	beq _0219CF32
	ldr r0, _0219CF80 ; =0x021ACF9C
	ldr r2, _0219CF98 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CF32:
	ldr r1, _0219CF9C ; =0x021ACFD0
	ldr r2, _0219CFA0 ; =0x021ACFDC
	add r0, r4, #0
	bl ovy189_21a07bc
	cmp r0, #0
	beq _0219CF50
	ldr r0, _0219CF80 ; =0x021ACF9C
	ldr r2, _0219CF98 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CF50:
	ldr r1, _0219CFA4 ; =0x021ACFE8
	ldr r2, _0219CFA8 ; =0x021ACFF0
	add r0, r4, #0
	bl ovy189_21a0954
	cmp r0, #0
	beq _0219CF6E
	ldr r0, _0219CF80 ; =0x021ACF9C
	ldr r2, _0219CF98 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CF6E:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CF74: .word 0x0219CEA1
_0219CF78: .word 0x021ACF48
_0219CF7C: .word 0x000005A8
_0219CF80: .word 0x021ACF9C
_0219CF84: .word 0x021ACFA0
_0219CF88: .word 0x021ACF40
_0219CF8C: .word 0x021ACFA8
_0219CF90: .word 0x021ACFC0
_0219CF94: .word 0x021ACFC8
_0219CF98: .word 0x021ACFCC
_0219CF9C: .word 0x021ACFD0
_0219CFA0: .word 0x021ACFDC
_0219CFA4: .word 0x021ACFE8
_0219CFA8: .word 0x021ACFF0
	thumb_func_end ovy189_219ceb4

	thumb_func_start ovy189_219cfac
ovy189_219cfac: ; 0x0219CFAC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r6, #0x41
	add r5, r0, #0
	lsl r6, r6, #4
	add r4, r1, #0
	add r0, r5, r6
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	cmp r4, #4
	bne _0219CFDE
	ldr r2, _0219D008 ; =0x021ACF44
	lsl r3, r4, #3
	ldr r2, [r2, r3]
	ldr r3, [r5, #8]
	mov r1, #0x19
	add r0, r5, r6
	lsl r1, r1, #4
	add r3, #0x45
	bl sub_02080108
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0219CFDE:
	mov r0, #0x17
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r2, _0219D008 ; =0x021ACF44
	add r0, #0x45
	str r0, [sp, #0xc]
	lsl r3, r4, #3
	ldr r2, [r2, r3]
	ldr r3, _0219D00C ; =0x000005A4
	mov r1, #0x19
	ldr r3, [r5, r3]
	add r0, r5, r6
	lsl r1, r1, #4
	bl sub_02080108
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D008: .word 0x021ACF44
_0219D00C: .word 0x000005A4
	thumb_func_end ovy189_219cfac

	thumb_func_start ovy189_219d010
ovy189_219d010: ; 0x0219D010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0219D04C ; =0x0219CE81
	ldr r1, _0219D050 ; =0x0219CE91
	mov r2, #0xc
	bl ovy189_21a076c
	cmp r0, #0
	beq _0219D032
	ldr r0, _0219D054 ; =0x021ACF9C
	ldr r2, _0219D058 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219D032:
	cmp r4, #0
	bne _0219D03A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219D03A:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_219cfac
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_219ceb4
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D04C: .word 0x0219CE81
_0219D050: .word 0x0219CE91
_0219D054: .word 0x021ACF9C
_0219D058: .word 0x021ACFCC
	thumb_func_end ovy189_219d010

	thumb_func_start ovy189_219d05c
ovy189_219d05c: ; 0x0219D05C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldr r0, _0219D0D8 ; =0x0219CE81
	ldr r1, _0219D0DC ; =0x0219CE91
	mov r2, #0xc
	bl ovy189_21a076c
	cmp r0, #0
	beq _0219D084
	ldr r0, _0219D0E0 ; =0x021ACF9C
	ldr r2, _0219D0E4 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D084:
	cmp r4, #0
	bne _0219D08E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D08E:
	cmp r5, #0xa
	bne _0219D0C4
	mov r7, #0x41
	lsl r7, r7, #4
	add r0, r4, r7
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	mov r0, #0x17
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0x19
	add r0, #0x45
	str r0, [sp, #0xc]
	ldr r2, _0219D0E8 ; =0x021ACF44
	add r0, r4, r7
	ldr r2, [r2, #0x50]
	lsl r1, r1, #4
	add r3, r6, #0
	bl sub_02080108
	b _0219D0CC
_0219D0C4:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_219cfac
_0219D0CC:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_219ceb4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D0D8: .word 0x0219CE81
_0219D0DC: .word 0x0219CE91
_0219D0E0: .word 0x021ACF9C
_0219D0E4: .word 0x021ACFCC
_0219D0E8: .word 0x021ACF44
	thumb_func_end ovy189_219d05c
_0219D0EC:
	.byte 0x00, 0x28, 0x01, 0xD0
	.byte 0xC0, 0x68, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy189_219d0f8
ovy189_219d0f8: ; 0x0219D0F8
	push {r4, lr}
	cmp r0, #0
	beq _0219D11A
	ldr r0, [r0, #0xc]
	bl ovy189_21a0fe4
	add r4, r0, #0
	beq _0219D116
	ldr r3, _0219D120 ; =0x000003F6
	mov r1, #2
	add r2, r4, #0
	bl sub_020424AC
	add r0, r4, #0
	pop {r4, pc}
_0219D116:
	mov r0, #0
	pop {r4, pc}
_0219D11A:
	mov r0, #1
	pop {r4, pc}
	nop
_0219D120: .word 0x000003F6
	thumb_func_end ovy189_219d0f8

	thumb_func_start ovy189_219d124
ovy189_219d124: ; 0x0219D124
	push {r4, lr}
	add r4, r0, #0
	beq _0219D13C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219D13C
	bl ovy189_21a0edc
	mov r0, #0
	str r0, [r4, #0xc]
	bl ovy189_21a07a0
_0219D13C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_219d124

	thumb_func_start ovy189_219d140
ovy189_219d140: ; 0x0219D140
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bne _0219D150
	mov r0, #0
	add sp, #0xc
	mvn r0, r0
	pop {r4, r5, pc}
_0219D150:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0219D15C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0219D15C:
	bl ovy189_21a10f4
	add r4, r0, #0
	cmp r4, #0xf
	ldr r0, [r5, #0xc]
	bne _0219D172
	add r1, sp, #8
	add r2, sp, #4
	bl ovy189_21a1114
	b _0219D19A
_0219D172:
	bl ovy189_21a10f4
	cmp r0, #0
	bne _0219D184
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ovy189_21a08cc
	b _0219D18E
_0219D184:
	ldr r3, _0219D1A0 ; =0x000003F6
	mov r1, #2
	add r2, r0, #0
	bl sub_020424AC
_0219D18E:
	add r0, r5, #0
	bl ovy189_219d124
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, pc}
_0219D19A:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D1A0: .word 0x000003F6
	thumb_func_end ovy189_219d140
_0219D1A4:
	.byte 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x70, 0x47, 0x01, 0x49, 0x40, 0x58
	.byte 0x70, 0x47, 0xC0, 0x46, 0xA8, 0x05, 0x00, 0x00

	thumb_func_start ovy189_219d1b8
ovy189_219d1b8: ; 0x0219D1B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0219D1E4 ; =0x000001CB
	mov r5, #0x5b
	add r7, r2, #0
	lsl r5, r5, #4
	str r1, [sp]
	ldr r3, _0219D1E8 ; =0x021ACFFC
	add r1, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, _0219D1EC ; =0x021ae6a0
	add r4, r0, #0
	str r4, [r1]
	sub r5, #0xc
	str r6, [r4, r5]
	str r7, [r4, #8]
	bl sub_0219D3CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D1E4: .word 0x000001CB
_0219D1E8: .word 0x021ACFFC
_0219D1EC: .word 0x021ae6a0
	thumb_func_end ovy189_219d1b8

	thumb_func_start ovy189_219d1f0
ovy189_219d1f0: ; 0x0219D1F0
	push {r4, lr}
	add r4, r0, #0
	beq _0219D200
	bl ovy189_219d384
	add r0, r4, #0
	bl sub_0203A24C
_0219D200:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_219d1f0

	thumb_func_start ovy189_219d204
ovy189_219d204: ; 0x0219D204
	push {r4, r5}
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r0, #0
	beq _0219D254
	ldr r3, [r0, #8]
	mov r2, #0
	add r4, r3, r2
	str r2, [r0, #4]
	mov r3, #0x45
	ldrsb r5, [r4, r3]
	cmp r5, #0
	beq _0219D232
_0219D21E:
	ldr r4, [r0]
	strb r5, [r4, r2]
	ldr r2, [r0, #4]
	ldr r4, [r0, #8]
	add r2, r2, #1
	str r2, [r0, #4]
	add r4, r4, r2
	ldrsb r5, [r4, r3]
	cmp r5, #0
	bne _0219D21E
_0219D232:
	ldr r3, [r0, #4]
	mov r4, #0
	add r3, r3, #1
	str r3, [r0, #4]
	ldr r3, [r0]
	strb r4, [r3, r2]
	ldr r4, [r0, #4]
	asr r3, r1, #8
	add r2, r4, #1
	str r2, [r0, #4]
	ldr r2, [r0]
	strb r3, [r2, r4]
	ldr r3, [r0, #4]
	add r2, r3, #1
	str r2, [r0, #4]
	ldr r0, [r0]
	strb r1, [r0, r3]
_0219D254:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy189_219d204

	thumb_func_start ovy189_219d258
ovy189_219d258: ; 0x0219D258
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #0
	beq _0219D288
	mov r7, #0x13
	lsl r7, r7, #4
	add r3, r7, #0
	add r0, r1, #0
	ldr r2, _0219D28C ; =0x021ACFFC
	add r1, r4, r7
	add r3, #0xe9
	bl sub_02042EA4
	mov r1, #0
	add r2, r4, r7
	str r0, [r5]
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	bl ovy189_219d204
_0219D288:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D28C: .word 0x021ACFFC
	thumb_func_end ovy189_219d258

	thumb_func_start ovy189_219d290
ovy189_219d290: ; 0x0219D290
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	beq _0219D2AC
	add r0, r1, #0
	ldr r3, [r5]
	ldr r1, [r5, #4]
	add r1, r3, r1
	blx MI_CpuCopy8
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r0, [r5, #4]
_0219D2AC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_219d290

	thumb_func_start ovy189_219d2b0
ovy189_219d2b0: ; 0x0219D2B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bne _0219D2BE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D2BE:
	ldr r0, _0219D35C ; =0x0219CE81
	ldr r1, _0219D360 ; =0x0219CE91
	mov r2, #0xc
	bl ovy189_21a076c
	cmp r0, #0
	beq _0219D2DC
	ldr r0, _0219D364 ; =0x021ACF9C
	ldr r2, _0219D368 ; =0x021ACFCC
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D2DC:
	mov r4, #0x41
	lsl r4, r4, #4
	add r0, r5, r4
	mov r1, #0
	mov r2, #4
	mov r6, #0
	blx MI_CpuFill8
	add r0, r5, r4
	ldr r4, _0219D36C ; =0x021ACF44
	ldr r1, [r4, #0x38]
	bl sub_0207F7A4
	ldr r0, _0219D370 ; =0x0219CEA1
	ldr r3, _0219D374 ; =0x000005A8
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	ldr r3, [r5, r3]
	bl ovy189_21a0e1c
	add r4, r0, #0
	bne _0219D32A
	bl ovy189_21a07b0
	add r3, r0, #0
	cmp r4, #0
	bne _0219D324
	ldr r0, _0219D364 ; =0x021ACF9C
	ldr r2, _0219D378 ; =0x021AD008
	add r1, r6, #0
	bl sub_0203CB94
_0219D324:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D32A:
	ldr r1, _0219D37C ; =0x021ACF40
	mov r2, #1
	str r4, [r5, #0xc]
	mov r7, #1
	bl ovy189_21a09ec
	add r3, r0, #0
	bpl _0219D34A
	ldr r0, _0219D364 ; =0x021ACF9C
	ldr r2, _0219D380 ; =0x021ACFA8
	add r1, r6, #0
	bl sub_0203CB94
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D34A:
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl ovy189_21a0854
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D35C: .word 0x0219CE81
_0219D360: .word 0x0219CE91
_0219D364: .word 0x021ACF9C
_0219D368: .word 0x021ACFCC
_0219D36C: .word 0x021ACF44
_0219D370: .word 0x0219CEA1
_0219D374: .word 0x000005A8
_0219D378: .word 0x021AD008
_0219D37C: .word 0x021ACF40
_0219D380: .word 0x021ACFA8
	thumb_func_end ovy189_219d2b0

	thumb_func_start ovy189_219d384
ovy189_219d384: ; 0x0219D384
	push {r4, lr}
	add r4, r0, #0
	beq _0219D39A
	ldr r0, [r4]
	cmp r0, #0
	beq _0219D394
	bl sub_02042ED0
_0219D394:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
_0219D39A:
	ldr r0, _0219D3A4 ; =0x021ae6a0
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	nop
_0219D3A4: .word 0x021ae6a0
	thumb_func_end ovy189_219d384

	thumb_func_start ovy189_219d3a8
ovy189_219d3a8: ; 0x0219D3A8
	push {r3, lr}
	cmp r0, #0
	beq _0219D3B6
	ldr r0, [r0, #0xc]
	bl ovy189_21a0900
	pop {r3, pc}
_0219D3B6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_219d3a8
_0219D3BC:
	.byte 0x02, 0x4B, 0xC1, 0x50
	.byte 0x19, 0x1D, 0x42, 0x50, 0x70, 0x47, 0xC0, 0x46, 0xA8, 0x05, 0x00, 0x00

	thumb_func_start sub_0219D3CC
sub_0219D3CC: ; 0x0219D3CC
	add r2, r0, #0
	ldr r1, _0219D3E0 ; =0x000005A8
	add r2, #0x10
	str r2, [r0, r1]
	mov r2, #1
	lsl r2, r2, #0xa
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
	nop
_0219D3E0: .word 0x000005A8
	thumb_func_end sub_0219D3CC
_0219D3E4:
	.byte 0x00, 0x78, 0x70, 0x47

	thumb_func_start ovy189_219d3e8
ovy189_219d3e8: ; 0x0219D3E8
	push {r4, r5}
	add r4, r0, #1
	lsl r2, r1, #2
	add r5, r4, r2
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	lsl r3, r1, #8
	ldrb r1, [r4, r2]
	lsl r2, r1, #0x18
	ldrb r1, [r5, #1]
	lsl r1, r1, #0x10
	orr r1, r2
	orr r1, r3
	orr r0, r1
	pop {r4, r5}
	bx lr
	thumb_func_end ovy189_219d3e8
_0219D408:
	.byte 0x42, 0x1C, 0x88, 0x00, 0x10, 0x18, 0x70, 0x47

	thumb_func_start ovy189_219d410
ovy189_219d410: ; 0x0219D410
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, sp, #0x18
	add r5, r1, #0
	ldrh r1, [r0]
	ldr r0, _0219D444 ; =0x021AD028
	add r4, r2, #0
	strh r1, [r0]
	ldr r0, _0219D448 ; =ovy189_219d49c
	ldr r1, _0219D44C ; =0x0219D4FD
	mov r2, #0
	add r7, r3, #0
	blx sub_021A9778
	add r1, r5, #0
	ldr r3, _0219D450 ; =0x021AD02C
	add r0, r6, #0
	mul r1, r4
	add r2, r7, #0
	blx sub_021A96CC
	ldr r2, _0219D454 ; =0x0000FFFF
	ldr r1, _0219D444 ; =0x021AD028
	strh r2, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D444: .word 0x021AD028
_0219D448: .word ovy189_219d49c
_0219D44C: .word 0x0219D4FD
_0219D450: .word 0x021AD02C
_0219D454: .word 0x0000FFFF
	thumb_func_end ovy189_219d410

	thumb_func_start ovy189_219d458
ovy189_219d458: ; 0x0219D458
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mul r4, r0
	mov r0, #0xb9
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _0219D47C ; =0x021AD0AC
	add r1, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D47C: .word 0x021AD0AC
	thumb_func_end ovy189_219d458
_0219D480:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy189_219d488
ovy189_219d488: ; 0x0219D488
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mul r1, r3
	add r1, r4, r1
	blx MI_CpuCopy8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_219d488

	thumb_func_start ovy189_219d49c
ovy189_219d49c: ; 0x0219D49C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0219D4E4 ; =0x021AD028
	ldrh r1, [r0]
	ldr r0, _0219D4E8 ; =0x0000FFFF
	cmp r1, r0
	bne _0219D4B4
	ldr r0, _0219D4EC ; =0x021AD0C4
	ldr r2, _0219D4F0 ; =0x021AD0C8
	mov r1, #0
	bl sub_0203CB94
_0219D4B4:
	ldr r6, _0219D4E4 ; =0x021AD028
	mov r0, #0xe9
	str r0, [sp]
	ldrh r0, [r6]
	ldr r3, _0219D4F4 ; =0x021AD0AC
	add r1, r5, #0
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bne _0219D4E0
	ldrh r0, [r6]
	bl sub_0203A2A8
	str r0, [sp]
	ldr r0, _0219D4EC ; =0x021AD0C4
	ldr r2, _0219D4F8 ; =0x021AD0E4
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0203CB94
_0219D4E0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4E4: .word 0x021AD028
_0219D4E8: .word 0x0000FFFF
_0219D4EC: .word 0x021AD0C4
_0219D4F0: .word 0x021AD0C8
_0219D4F4: .word 0x021AD0AC
_0219D4F8: .word 0x021AD0E4
	thumb_func_end ovy189_219d49c
_0219D4FC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy189_219d504
ovy189_219d504: ; 0x0219D504
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x64
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	mov r0, #0x17
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5, #1]
	add r0, r4, #0
	bl sub_02008C0C
	strb r0, [r5, #2]
	add r0, r4, #0
	bl sub_02008C10
	strb r0, [r5, #3]
	add r0, r4, #0
	bl sub_02008BD0
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_02008B94
	add r1, r5, #0
	add r1, #8
	mov r2, #8
	bl sub_02024AD4
	add r0, r5, #0
	add r0, #0x24
	str r6, [r5, #0x18]
	strb r6, [r0]
	str r6, [r5, #0x5c]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_219d504

	thumb_func_start sub_0219D550
sub_0219D550: ; 0x0219D550
	ldr r3, _0219D554 ; =OS_InitMutex
	bx r3
	.align 2, 0
_0219D554: .word OS_InitMutex
	thumb_func_end sub_0219D550

	thumb_func_start sub_0219D558
sub_0219D558: ; 0x0219D558
	ldr r3, _0219D55C ; =OS_LockMutex
	bx r3
	.align 2, 0
_0219D55C: .word OS_LockMutex
	thumb_func_end sub_0219D558

	thumb_func_start ovy189_219d560
ovy189_219d560: ; 0x0219D560
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0219EC3C
	cmp r0, #0
	bne _0219D584
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x20
	mov r2, #3
	bl OS_InitMessageQueue
	add r0, r5, #0
	bl sub_0219EC2C
_0219D584:
	mov r3, #2
	lsl r3, r3, #0xc
	str r3, [sp]
	add r0, r5, #0
	ldr r1, _0219D5A8 ; =0x0219D605
	add r0, #0x2c
	mov r2, #0
	add r3, r6, r3
	str r4, [sp, #4]
	bl OS_CreateThread
	add r5, #0x2c
	add r0, r5, #0
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D5A8: .word 0x0219D605
	thumb_func_end ovy189_219d560

	thumb_func_start ovy189_219d5ac
ovy189_219d5ac: ; 0x0219D5AC
	push {r4, lr}
	mov r2, #1
	add r4, r0, #0
	str r2, [r1, #0x18]
	bl sub_0219D5D0
	add r4, #0x2c
	add r0, r4, #0
	bl OS_JoinThread
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_219d5ac

	thumb_func_start ovy189_219d5c4
ovy189_219d5c4: ; 0x0219D5C4
	push {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	pop {r3, pc}
	thumb_func_end ovy189_219d5c4

	thumb_func_start sub_0219D5D0
sub_0219D5D0: ; 0x0219D5D0
	ldr r3, _0219D5D8 ; =OS_SendMessage
	mov r1, #0
	mov r2, #0
	bx r3
	.align 2, 0
_0219D5D8: .word OS_SendMessage
	thumb_func_end sub_0219D5D0

	thumb_func_start ovy189_219d5dc
ovy189_219d5dc: ; 0x0219D5DC
	push {r3, lr}
	ldr r2, _0219D600 ; =0x0214C22C
	add r0, #0x2c
	ldr r2, [r2, #4]
	cmp r2, #0
	beq _0219D5FC
	cmp r1, #0
	bne _0219D5F0
	cmp r2, r0
	bne _0219D5F8
_0219D5F0:
	cmp r1, #0
	beq _0219D5FC
	cmp r2, r0
	bne _0219D5FC
_0219D5F8:
	bl OS_Terminate
_0219D5FC:
	pop {r3, pc}
	nop
_0219D600: .word 0x0214C22C
	thumb_func_end ovy189_219d5dc
_0219D604:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x8D, 0x06, 0x1A, 0x02, 0x02, 0x21, 0x89, 0x03
	.byte 0x01, 0x42, 0x01, 0xD0, 0x01, 0x49, 0x08, 0x40, 0x70, 0x47, 0xC0, 0x46, 0xFF, 0x7F, 0xFF, 0xFF
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy189_219d624
ovy189_219d624: ; 0x0219D624
	push {r4, lr}
	ldr r4, _0219D638 ; =0x021AE6A4
	add r0, r4, #0
	bl OS_GetLowEntropyData
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02159D64
	pop {r4, pc}
	.align 2, 0
_0219D638: .word 0x021AE6A4
	thumb_func_end ovy189_219d624

	thumb_func_start ovy189_219d63c
ovy189_219d63c: ; 0x0219D63C
	push {r3, r4, r5, lr}
	mov r5, #0
	sub r1, r5, #1
	cmp r0, r1
	bne _0219D64A
	sub r5, r5, #1
	b _0219D660
_0219D64A:
	add r1, sp, #0
	mov r2, #1
	mov r3, #4
	mov r4, #4
	bl sub_02157C50
	mov r1, #4
	sub r1, #0xa
	cmp r0, r1
	beq _0219D660
	sub r5, r4, #5
_0219D660:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_219d63c

	thumb_func_start sub_0219D664
sub_0219D664: ; 0x0219D664
	ldr r3, _0219D670 ; =sub_02157BD0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_0219D670: .word sub_02157BD0
	thumb_func_end sub_0219D664

	thumb_func_start ovy189_219d674
ovy189_219d674: ; 0x0219D674
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r0, r5, #0
	str r1, [sp]
	bl sub_02157D38
	add r7, r0, #0
	beq _0219D68C
	mov r0, #0x19
	mvn r0, r0
	cmp r7, r0
	bne _0219D6B6
_0219D68C:
	mov r6, #0x7d
	mov r4, #0
	lsl r6, r6, #2
	b _0219D6A0
_0219D694:
	add r0, r6, #0
	bl OS_Sleep
	bl ovy11_21575f8
	add r4, r4, r6
_0219D6A0:
	add r0, r5, #0
	bl sub_02157D38
	add r7, r0, #0
	mov r0, #0x19
	mvn r0, r0
	cmp r7, r0
	bne _0219D6B6
	ldr r0, _0219D6E0 ; =0x00002710
	cmp r4, r0
	ble _0219D694
_0219D6B6:
	mov r0, #0x19
	mvn r0, r0
	cmp r7, r0
	beq _0219D6DA
	ldr r0, [sp]
	cmp r0, #0
	beq _0219D6DA
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D6DA
	bl ovy189_219ddd8
	ldr r0, [sp]
	mov r1, #0
	add r0, #0xac
	str r0, [sp]
	str r1, [r0]
_0219D6DA:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D6E0: .word 0x00002710
	thumb_func_end ovy189_219d674

	thumb_func_start ovy189_219d6e4
ovy189_219d6e4: ; 0x0219D6E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #8
	add r5, sp, #4
	strb r6, [r5]
	mov r6, #2
	strb r6, [r5, #1]
	ldr r5, [sp, #0x24]
	add r4, r2, #0
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	asr r6, r5, #8
	lsl r6, r6, #0x18
	lsr r7, r6, #0x18
	lsl r6, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r5, r6
	add r6, r7, #0
	orr r6, r5
	add r5, sp, #4
	strh r6, [r5, #2]
	ldr r5, [sp, #0x20]
	str r3, [sp]
	str r5, [sp, #8]
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0219D72A
	ldr r5, [r4, #0xc]
	cmp r5, #0
	bne _0219D72A
	bl ovy189_219d758
	cmp r0, #0
	blt _0219D74A
_0219D72A:
	ldr r0, [sp]
	add r1, sp, #4
	bl sub_02157C10
	cmp r0, #0
	bge _0219D748
	ldr r0, [r4]
	cmp r0, #0
	beq _0219D742
	add sp, #0xc
	ldr r0, _0219D750 ; =0xFFFFFC16
	pop {r4, r5, r6, r7, pc}
_0219D742:
	add sp, #0xc
	ldr r0, _0219D754 ; =0xFFFFFC17
	pop {r4, r5, r6, r7, pc}
_0219D748:
	mov r0, #0
_0219D74A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D750: .word 0xFFFFFC16
_0219D754: .word 0xFFFFFC17
	thumb_func_end ovy189_219d6e4

	thumb_func_start ovy189_219d758
ovy189_219d758: ; 0x0219D758
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r0, r5, #0
	add r0, #0xac
	ldr r4, [r0]
	add r6, r3, #0
	cmp r4, #0
	bne _0219D782
	mov r7, #0x83
	lsl r7, r7, #4
	add r0, r7, #0
	mov r1, #4
	bl ovy189_219ddbc
	add r1, r5, #0
	add r4, r0, #0
	add r1, #0xac
	str r4, [r1]
	add r1, r7, #0
	bl sub_0219D97C
_0219D782:
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0]
	ldr r0, _0219D7C8 ; =0x00000814
	str r1, [r4, r0]
	add r1, r5, #0
	add r1, #0xc4
	ldr r2, [r1]
	add r1, r0, #4
	str r2, [r4, r1]
	ldr r2, [r5, #0x28]
	add r1, r0, #0
	sub r1, #0x14
	add r5, #0xd8
	str r2, [r4, r1]
	ldr r1, [r5]
	cmp r1, #0
	beq _0219D7AA
	ldr r1, _0219D7CC ; =0x0219D621
	b _0219D7AC
_0219D7AA:
	ldr r1, _0219D7D0 ; =0x0219D60D
_0219D7AC:
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy11_2158174
	cmp r0, #0
	bge _0219D7C0
	ldr r0, _0219D7D4 ; =0xFFFFFC17
	pop {r3, r4, r5, r6, r7, pc}
_0219D7C0:
	bl ovy189_219d624
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D7C8: .word 0x00000814
_0219D7CC: .word 0x0219D621
_0219D7D0: .word 0x0219D60D
_0219D7D4: .word 0xFFFFFC17
	thumb_func_end ovy189_219d758

	thumb_func_start ovy189_219d7d8
ovy189_219d7d8: ; 0x0219D7D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r5, #0
	add r0, r3, #0
	str r2, [sp]
	str r3, [sp, #4]
	add r6, #0x40
	mov r7, #0
	cmp r0, #0
	ble _0219D850
	ldr r4, _0219D858 ; =0x00008044
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219D80E
	add r2, r4, #0
	add r0, r1, #0
	ldr r3, [sp, #0x20]
	add r1, r6, #0
	sub r2, #0x44
	bl sub_02157C50
	cmp r0, #0
	ble _0219D852
	str r0, [r5, r4]
	sub r0, r4, #4
	str r7, [r5, r0]
_0219D80E:
	ldr r0, _0219D858 ; =0x00008044
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _0219D850
	ldr r0, [sp, #4]
	cmp r0, r4
	bhi _0219D81E
	add r4, r0, #0
_0219D81E:
	ldr r7, _0219D85C ; =0x00008040
	ldr r0, [sp]
	ldr r1, [r5, r7]
	add r2, r4, #0
	add r1, r6, r1
	bl sub_0219D954
	add r0, r7, #4
	ldr r0, [r5, r0]
	sub r1, r0, r4
	add r0, r7, #4
	str r1, [r5, r0]
	cmp r1, #0
	bne _0219D848
	add r1, r7, #0
	add r0, r6, #0
	sub r1, #0x40
	bl sub_0219D97C
	mov r0, #0
	b _0219D84C
_0219D848:
	ldr r0, [r5, r7]
	add r0, r0, r4
_0219D84C:
	str r0, [r5, r7]
	add r7, r4, #0
_0219D850:
	add r0, r7, #0
_0219D852:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D858: .word 0x00008044
_0219D85C: .word 0x00008040
	thumb_func_end ovy189_219d7d8

	thumb_func_start ovy189_219d860
ovy189_219d860: ; 0x0219D860
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_021A0B60
	cmp r0, #0
	beq _0219D882
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_219d7d8
	b _0219D888
_0219D882:
	add sp, #4
	ldr r0, _0219D8AC ; =0xFFFFFC17
	pop {r3, r4, r5, r6, pc}
_0219D888:
	cmp r0, #0
	bge _0219D8A8
	ldr r1, [r5]
	cmp r1, #0
	beq _0219D898
	add sp, #4
	ldr r0, _0219D8B0 ; =0xFFFFFC16
	pop {r3, r4, r5, r6, pc}
_0219D898:
	mov r1, #0x37
	mvn r1, r1
	cmp r0, r1
	bne _0219D8A6
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0219D8A6:
	ldr r0, _0219D8AC ; =0xFFFFFC17
_0219D8A8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D8AC: .word 0xFFFFFC17
_0219D8B0: .word 0xFFFFFC16
	thumb_func_end ovy189_219d860

	thumb_func_start ovy189_219d8b4
ovy189_219d8b4: ; 0x0219D8B4
	push {r3, lr}
	bl sub_02157CBC
	pop {r3, pc}
	thumb_func_end ovy189_219d8b4

	thumb_func_start ovy189_219d8bc
ovy189_219d8bc: ; 0x0219D8BC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl ovy189_219d8b4
	cmp r0, #0
	bge _0219D8E8
	ldr r1, [r4]
	cmp r1, #0
	beq _0219D8DA
	ldr r0, _0219D8EC ; =0xFFFFFC16
	pop {r4, pc}
_0219D8DA:
	mov r1, #0x37
	mvn r1, r1
	cmp r0, r1
	bne _0219D8E6
	mov r0, #0
	pop {r4, pc}
_0219D8E6:
	ldr r0, _0219D8F0 ; =0xFFFFFC17
_0219D8E8:
	pop {r4, pc}
	nop
_0219D8EC: .word 0xFFFFFC16
_0219D8F0: .word 0xFFFFFC17
	thumb_func_end ovy189_219d8bc

	thumb_func_start ovy189_219d8f4
ovy189_219d8f4: ; 0x0219D8F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_021A0DCC
	cmp r4, #0
	blt _0219D90A
	add r0, r4, #0
	mov r1, #2
	bl sub_02157D30
_0219D90A:
	add r0, r5, #0
	bl sub_021A0DD4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_219d8f4

	thumb_func_start ovy189_219d914
ovy189_219d914: ; 0x0219D914
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02158034
	cmp r0, #0
	beq _0219D930
	ldr r0, [sp]
	str r0, [sp, #4]
	b _0219D94E
_0219D930:
	add r0, r4, #0
	bl sub_02157D40
	add r1, r0, #0
	beq _0219D94E
	mov r0, #0xa
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0219D94E
	ldr r1, [r1, #0xc]
	add r0, sp, #4
	ldr r1, [r1]
	mov r2, #4
	bl sub_0219D954
_0219D94E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy189_219d914

	thumb_func_start sub_0219D954
sub_0219D954: ; 0x0219D954
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _0219D960 ; =MI_CpuCopy8
	bx r3
	nop
_0219D960: .word MI_CpuCopy8
	thumb_func_end sub_0219D954

	thumb_func_start sub_0219D964
sub_0219D964: ; 0x0219D964
	ldr r3, _0219D968 ; =STD_GetStringLength
	bx r3
	.align 2, 0
_0219D968: .word STD_GetStringLength
	thumb_func_end sub_0219D964

	thumb_func_start sub_0219D96C
sub_0219D96C: ; 0x0219D96C
	ldr r3, _0219D970 ; =sub_0207F900
	bx r3
	.align 2, 0
_0219D970: .word sub_0207F900
	thumb_func_end sub_0219D96C

	thumb_func_start sub_0219D974
sub_0219D974: ; 0x0219D974
	ldr r3, _0219D978 ; =sub_0207F95C
	bx r3
	.align 2, 0
_0219D978: .word sub_0207F95C
	thumb_func_end sub_0219D974

	thumb_func_start sub_0219D97C
sub_0219D97C: ; 0x0219D97C
	ldr r3, _0219D984 ; =MI_CpuFill8
	add r2, r1, #0
	mov r1, #0
	bx r3
	.align 2, 0
_0219D984: .word MI_CpuFill8
	thumb_func_end sub_0219D97C

	thumb_func_start ovy189_219d988
ovy189_219d988: ; 0x0219D988
	push {r4, r5, r6, r7}
	cmp r2, #0
	ble _0219D9E4
	mov r5, #0
_0219D990:
	mov r3, #0
	ldrsb r4, [r0, r3]
	ldrsb r3, [r1, r5]
	add r0, r0, #1
	add r1, r1, #1
	cmp r4, #0
	beq _0219D9A2
	cmp r3, #0
	bne _0219D9AE
_0219D9A2:
	cmp r4, #0
	bne _0219D9AE
	cmp r3, #0
	bne _0219D9AE
	mov r2, #0
	b _0219D9E4
_0219D9AE:
	mov r6, #1
	cmp r3, #0x41
	bge _0219D9B6
	mov r6, #0
_0219D9B6:
	mov r7, #1
	cmp r3, #0x5a
	ble _0219D9BE
	mov r7, #0
_0219D9BE:
	tst r6, r7
	beq _0219D9C4
	add r3, #0x20
_0219D9C4:
	mov r6, #1
	cmp r4, #0x41
	bge _0219D9CC
	mov r6, #0
_0219D9CC:
	mov r7, #1
	cmp r4, #0x5a
	ble _0219D9D4
	mov r7, #0
_0219D9D4:
	tst r6, r7
	beq _0219D9DA
	add r4, #0x20
_0219D9DA:
	cmp r4, r3
	bne _0219D9E4
	sub r2, r2, #1
	cmp r2, #0
	bgt _0219D990
_0219D9E4:
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy189_219d988

	thumb_func_start sub_0219D9EC
sub_0219D9EC: ; 0x0219D9EC
	mov r2, #0
	ldrsb r3, [r0, r2]
	add r0, r0, #1
	cmp r3, #0
	beq _0219DA22
	add r1, r2, #0
_0219D9F8:
	cmp r3, #0x30
	blt _0219DA00
	cmp r3, #0x39
	ble _0219DA14
_0219DA00:
	cmp r3, #0x41
	blt _0219DA08
	cmp r3, #0x5a
	ble _0219DA14
_0219DA08:
	cmp r3, #0x61
	blt _0219DA10
	cmp r3, #0x7a
	ble _0219DA14
_0219DA10:
	cmp r3, #0x20
	bne _0219DA18
_0219DA14:
	add r2, r2, #1
	b _0219DA1A
_0219DA18:
	add r2, r2, #3
_0219DA1A:
	ldrsb r3, [r0, r1]
	add r0, r0, #1
	cmp r3, #0
	bne _0219D9F8
_0219DA22:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D9EC

	thumb_func_start ovy189_219da28
ovy189_219da28: ; 0x0219DA28
	push {r4, r5}
	mov r3, #0
	ldrsb r5, [r0, r3]
	mov r4, #0
	add r0, r0, #1
	cmp r1, #0
	ble _0219DA66
	ble _0219DA66
	add r2, r3, #0
_0219DA3A:
	cmp r5, #0x30
	blt _0219DA42
	cmp r5, #0x39
	ble _0219DA56
_0219DA42:
	cmp r5, #0x41
	blt _0219DA4A
	cmp r5, #0x5a
	ble _0219DA56
_0219DA4A:
	cmp r5, #0x61
	blt _0219DA52
	cmp r5, #0x7a
	ble _0219DA56
_0219DA52:
	cmp r5, #0x20
	bne _0219DA5A
_0219DA56:
	add r4, r4, #1
	b _0219DA5C
_0219DA5A:
	add r4, r4, #3
_0219DA5C:
	add r3, r3, #1
	ldrsb r5, [r0, r2]
	add r0, r0, #1
	cmp r3, r1
	blt _0219DA3A
_0219DA66:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy189_219da28

	thumb_func_start sub_0219DA6C
sub_0219DA6C: ; 0x0219DA6C
	cmp r1, #0x20
	bne _0219DA78
	mov r1, #0x2b
	strb r1, [r0]
	mov r0, #1
	bx lr
_0219DA78:
	cmp r1, #0x30
	blt _0219DA80
	cmp r1, #0x39
	ble _0219DA90
_0219DA80:
	cmp r1, #0x41
	blt _0219DA88
	cmp r1, #0x5a
	ble _0219DA90
_0219DA88:
	cmp r1, #0x61
	blt _0219DA96
	cmp r1, #0x7a
	bgt _0219DA96
_0219DA90:
	strb r1, [r0]
	mov r0, #1
	bx lr
_0219DA96:
	asr r3, r1, #4
	mov r2, #0xf
	and r3, r2
	and r2, r1
	mov r1, #0x25
	strb r1, [r0]
	cmp r3, #0xa
	bge _0219DAAA
	add r3, #0x30
	b _0219DAAC
_0219DAAA:
	add r3, #0x37
_0219DAAC:
	strb r3, [r0, #1]
	cmp r2, #0xa
	bge _0219DAB6
	add r2, #0x30
	b _0219DAB8
_0219DAB6:
	add r2, #0x37
_0219DAB8:
	strb r2, [r0, #2]
	mov r0, #3
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DA6C

	thumb_func_start ovy189_219dac0
ovy189_219dac0: ; 0x0219DAC0
	push {r4, r5, r6, r7}
	cmp r1, #8
	ble _0219DACE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0219DACE:
	bne _0219DADE
	mov r2, #0
	ldrsb r3, [r0, r2]
	cmp r3, #0x37
	ble _0219DADE
	sub r0, r2, #1
	pop {r4, r5, r6, r7}
	bx lr
_0219DADE:
	mov r5, #0
	mov r6, #0
	mov r4, #0
	cmp r1, #0
	ble _0219DB48
_0219DAE8:
	ldrsb r2, [r0, r4]
	mov r3, #1
	cmp r2, #0x41
	bge _0219DAF2
	mov r3, #0
_0219DAF2:
	mov r7, #1
	cmp r2, #0x5a
	ble _0219DAFA
	mov r7, #0
_0219DAFA:
	tst r3, r7
	beq _0219DB00
	add r2, #0x20
_0219DB00:
	lsl r2, r2, #0x18
	asr r3, r2, #0x18
	cmp r3, #0x30
	blt _0219DB16
	cmp r3, #0x39
	bgt _0219DB16
	lsl r2, r5, #4
	add r5, r2, r3
	sub r5, #0x30
_0219DB12:
	mov r6, #1
	b _0219DB42
_0219DB16:
	cmp r3, #0x61
	blt _0219DB26
	cmp r3, #0x66
	bgt _0219DB26
	lsl r2, r5, #4
	add r5, r2, r3
	sub r5, #0x57
	b _0219DB12
_0219DB26:
	cmp r6, #0
	beq _0219DB32
	cmp r3, #0x20
	beq _0219DB48
	cmp r3, #0
	beq _0219DB48
_0219DB32:
	cmp r6, #0
	bne _0219DB3A
	cmp r3, #0x20
	beq _0219DB42
_0219DB3A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0219DB42:
	add r4, r4, #1
	cmp r4, r1
	blt _0219DAE8
_0219DB48:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy189_219dac0

	thumb_func_start ovy189_219db50
ovy189_219db50: ; 0x0219DB50
	push {r4, r5, r6, r7}
	cmp r1, #0xa
	ble _0219DB5E
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0219DB5E:
	mov r3, #0
	mov r4, #0
	mov r2, #0
	cmp r1, #0
	ble _0219DBAA
_0219DB68:
	ldrsb r6, [r0, r2]
	cmp r4, #0
	beq _0219DB76
	cmp r6, #0x20
	beq _0219DBAA
	cmp r6, #0
	beq _0219DBAA
_0219DB76:
	cmp r4, #0
	bne _0219DB7E
	cmp r6, #0x20
	beq _0219DBA4
_0219DB7E:
	cmp r6, #0x30
	blt _0219DB86
	cmp r6, #0x39
	ble _0219DB8E
_0219DB86:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0219DB8E:
	mov r7, #0xa
	mul r7, r3
	add r5, r3, #0
	add r3, r6, r7
	sub r3, #0x30
	mov r4, #1
	cmp r5, r3
	ble _0219DBA4
	sub r0, r4, #2
	pop {r4, r5, r6, r7}
	bx lr
_0219DBA4:
	add r2, r2, #1
	cmp r2, r1
	blt _0219DB68
_0219DBAA:
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy189_219db50

	thumb_func_start ovy189_219dbb0
ovy189_219dbb0: ; 0x0219DBB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r4, _0219DC10 ; =0x021ACC64
	str r0, [sp]
	add r5, r1, #0
	add r3, sp, #4
	mov r2, #4
_0219DBBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219DBBE
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	mov r1, #0
	mov r6, #0
_0219DBD0:
	lsl r2, r6, #2
	add r0, sp, #4
	ldr r7, [r0, r2]
	cmp r5, r7
	blo _0219DBF2
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D868
	add r1, r0, #0
	mul r1, r7
	sub r5, r5, r1
	ldr r2, [sp]
	add r0, #0x30
	mov r1, #1
	strb r0, [r2, r4]
	b _0219DBFC
_0219DBF2:
	cmp r1, #0
	beq _0219DBFE
	ldr r0, [sp]
	mov r2, #0x30
	strb r2, [r0, r4]
_0219DBFC:
	add r4, r4, #1
_0219DBFE:
	add r6, r6, #1
	cmp r6, #9
	blt _0219DBD0
	ldr r0, [sp]
	add r5, #0x30
	strb r5, [r0, r4]
	add r0, r4, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DC10: .word 0x021ACC64
	thumb_func_end ovy189_219dbb0

	thumb_func_start ovy189_219dc14
ovy189_219dc14: ; 0x0219DC14
	push {r4, r5, r6, r7}
	mov r3, #0
	mov r4, #0
	b _0219DC2E
_0219DC1C:
	cmp r6, #0
	beq _0219DC24
	cmp r6, #0x20
	bne _0219DC2A
_0219DC24:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0219DC2A:
	add r0, r0, #1
	add r1, r1, #1
_0219DC2E:
	ldrsb r2, [r1, r4]
	mov r5, #1
	cmp r2, #0x41
	bge _0219DC38
	mov r5, #0
_0219DC38:
	mov r6, #1
	cmp r2, #0x5a
	ble _0219DC40
	mov r6, #0
_0219DC40:
	tst r5, r6
	beq _0219DC46
	add r2, #0x20
_0219DC46:
	ldrsb r6, [r0, r3]
	mov r5, #1
	cmp r6, #0x41
	bge _0219DC50
	mov r5, #0
_0219DC50:
	mov r7, #1
	cmp r6, #0x5a
	ble _0219DC58
	mov r7, #0
_0219DC58:
	tst r5, r7
	beq _0219DC62
	add r5, r6, #0
	add r5, #0x20
	b _0219DC64
_0219DC62:
	add r5, r6, #0
_0219DC64:
	cmp r5, r2
	beq _0219DC1C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy189_219dc14

	thumb_func_start ovy189_219dc70
ovy189_219dc70: ; 0x0219DC70
	push {r4, r5, r6, r7}
	add r3, r1, #0
	mov r7, #0
	mov r2, #0
	sub r1, r1, #1
	cmp r3, #0
	beq _0219DCAC
	mov r3, #0xa
	add r4, r7, #0
_0219DC82:
	ldrsb r6, [r0, r4]
	cmp r6, #0x20
	beq _0219DCA6
	cmp r6, #0x30
	blt _0219DCA6
	cmp r6, #0x39
	bgt _0219DCA6
	add r5, r2, #0
	mul r5, r3
	add r2, r6, r5
	add r7, r7, #1
	sub r2, #0x30
	cmp r7, #9
	ble _0219DCA6
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0219DCA6:
	add r0, r0, #1
	sub r1, r1, #1
	bhs _0219DC82
_0219DCAC:
	cmp r7, #0
	bne _0219DCB4
	mov r2, #0
	mvn r2, r2
_0219DCB4:
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy189_219dc70

	thumb_func_start ovy189_219dcbc
ovy189_219dcbc: ; 0x0219DCBC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	cmp r1, r0
	bge _0219DCCC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219DCCC:
	sub r1, r1, r0
	add r1, r1, #1
	mov r6, #0
	mov lr, r1
	cmp r1, #0
	ble _0219DD0A
	ldrsb r1, [r2, r6]
	mov ip, r1
_0219DCDC:
	ldrsb r3, [r7, r6]
	mov r1, ip
	cmp r1, r3
	bne _0219DD02
	add r5, r7, r6
	mov r4, #1
	cmp r0, #1
	ble _0219DCFA
_0219DCEC:
	ldrsb r3, [r5, r4]
	ldrsb r1, [r2, r4]
	cmp r3, r1
	bne _0219DCFA
	add r4, r4, #1
	cmp r4, r0
	blt _0219DCEC
_0219DCFA:
	cmp r4, r0
	bne _0219DD02
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DD02:
	add r6, r6, #1
	mov r1, lr
	cmp r6, r1
	blt _0219DCDC
_0219DD0A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219dcbc

	thumb_func_start ovy189_219dd10
ovy189_219dd10: ; 0x0219DD10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, _0219DD90 ; =0x021AD110
	bl sub_0219D964
	add r7, r0, #0
	mov r1, #0
	cmp r7, #0
	ble _0219DD66
_0219DD28:
	mov r0, #0
	ldrsb r2, [r5, r0]
	add r1, r1, #3
	asr r0, r2, #2
	ldrsb r0, [r6, r0]
	strb r0, [r4]
	lsl r0, r2, #0x1e
	mov r2, #1
	ldrsb r2, [r5, r2]
	lsr r0, r0, #0x1a
	add r0, r6, r0
	asr r3, r2, #4
	ldrsb r0, [r3, r0]
	strb r0, [r4, #1]
	lsl r0, r2, #0x1c
	lsr r2, r0, #0x1a
	mov r0, #2
	ldrsb r0, [r5, r0]
	add r2, r6, r2
	add r5, r5, #3
	asr r3, r0, #6
	ldrsb r2, [r3, r2]
	add r3, r4, #3
	strb r2, [r4, #2]
	mov r2, #0x3f
	and r0, r2
	ldrsb r0, [r6, r0]
	add r4, r4, #4
	strb r0, [r3]
	cmp r1, r7
	blt _0219DD28
_0219DD66:
	add r0, r7, #1
	cmp r1, r0
	bne _0219DD70
	mov r1, #0x3d
	b _0219DD80
_0219DD70:
	add r0, r7, #2
	cmp r1, r0
	bne _0219DD84
	mov r1, #0x3d
	sub r0, r4, #2
	strb r1, [r0]
	sub r1, #0x3f
	ldrsb r1, [r4, r1]
_0219DD80:
	sub r0, r4, #1
	strb r1, [r0]
_0219DD84:
	mov r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	bl sub_0219D964
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DD90: .word 0x021AD110
	thumb_func_end ovy189_219dd10

	thumb_func_start ovy189_219dd94
ovy189_219dd94: ; 0x0219DD94
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	sub r1, r4, #1
	str r1, [r5, #0xc]
	mov r1, #0
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	bl sub_0219DDF0
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DDEC
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_219dd94

	thumb_func_start ovy189_219ddbc
ovy189_219ddbc: ; 0x0219DDBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy189_21a0d54
	ldr r2, [r0]
	cmp r2, #0
	beq _0219DDD4
	add r0, r5, #0
	add r1, r4, #0
	blx r2
	pop {r3, r4, r5, pc}
_0219DDD4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_219ddbc

	thumb_func_start ovy189_219ddd8
ovy189_219ddd8: ; 0x0219DDD8
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0219DDEA
	add r0, r4, #0
	blx r1
_0219DDEA:
	pop {r4, pc}
	thumb_func_end ovy189_219ddd8

	thumb_func_start sub_0219DDEC
sub_0219DDEC: ; 0x0219DDEC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219DDEC

	thumb_func_start sub_0219DDF0
sub_0219DDF0: ; 0x0219DDF0
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219DDF0

	thumb_func_start sub_0219DDF4
sub_0219DDF4: ; 0x0219DDF4
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219DDF4

	thumb_func_start ovy189_219ddf8
ovy189_219ddf8: ; 0x0219DDF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_021A0D74
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A0D78
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_021A0D7C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_021A0D84
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_021A0D80
	str r6, [r4]
	str r0, [sp, #0x10]
	str r7, [r4, #4]
	mov r5, #0
	str r5, [r4, #0x14]
	str r5, [r4, #0x10]
	str r5, [r4, #0x18]
	ldr r0, [sp, #4]
	str r5, [r4, #0x24]
	bl sub_0219E0D8
	ldr r0, [sp, #8]
	bl sub_0219E538
	ldr r0, [sp, #0xc]
	bl ovy189_21a0db4
	bl ovy189_21a0d90
	sub r0, r5, #1
	str r0, [r4, #0xc]
	mov r0, #2
	lsl r0, r0, #0xc
	mov r1, #8
	bl ovy189_219ddbc
	str r0, [r4, #0x1c]
	add r2, r0, #0
	bne _0219DE74
	add r0, r4, #0
	mov r1, #1
	bl sub_0219DDEC
	bl sub_021A0DC8
	add sp, #0x14
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_0219DE74:
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl ovy189_219d560
	cmp r0, #0
	bne _0219DE9A
	add r0, r4, #0
	mov r1, #9
	bl sub_0219DDEC
	ldr r0, [r4, #0x1c]
	bl ovy189_219ddd8
	str r5, [r4, #0x1c]
	bl sub_021A0DC8
	add sp, #0x14
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_0219DE9A:
	mov r0, #1
	str r0, [r4, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219ddf8

	thumb_func_start ovy189_219dea4
ovy189_219dea4: ; 0x0219DEA4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_021A0D74
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021A0D80
	mov r1, #1
	add r7, r0, #0
	bl ovy189_219d5dc
	add r0, r4, #0
	bl ovy189_219e9c8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_219d5ac
	ldr r0, [r5, #0x1c]
	bl ovy189_219ddd8
	mov r4, #0
	str r4, [r5, #0x1c]
	bl sub_021A0DC8
	str r4, [r5, #8]
	cmp r6, #0
	beq _0219DEE2
	blx r6
_0219DEE2:
	bl sub_021A0BAC
	ldr r2, [r5, #0xc]
	cmp r2, #0
	blt _0219DEFA
	mov r0, #0
	mov r1, #0
	mov r4, #0
	bl ovy189_219d674
	sub r0, r4, #1
	str r0, [r5, #0xc]
_0219DEFA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219dea4

	thumb_func_start sub_0219DEFC
sub_0219DEFC: ; 0x0219DEFC
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219DEFC

	thumb_func_start ovy189_219df00
ovy189_219df00: ; 0x0219DF00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	str r1, [sp]
	add r6, r2, #0
	mov r7, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	cmp r0, #0
	beq _0219DF4A
	ldr r1, [sp, #8]
	add r4, r0, #0
	ldr r1, [r1, #8]
	add r0, r6, #0
	bl ovy189_219dc14
	cmp r0, #0
	beq _0219DF48
	ldr r0, [sp, #8]
	ldr r4, [r0, #4]
	ldr r0, [r5]
	cmp r4, r0
	beq _0219DF4A
_0219DF30:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ovy189_219dc14
	cmp r0, #0
	bne _0219DF3E
	b _0219DF48
_0219DF3E:
	ldr r4, [r4, #4]
	ldr r0, [r5]
	cmp r4, r0
	bne _0219DF30
	b _0219DF4A
_0219DF48:
	mov r7, #1
_0219DF4A:
	cmp r7, #0
	beq _0219DF54
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	b _0219DF9A
_0219DF54:
	mov r0, #0x18
	mov r1, #4
	bl ovy189_219ddbc
	cmp r0, #0
	bne _0219DF6E
	ldr r0, [sp]
	mov r1, #1
	bl sub_0219DDEC
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219DF6E:
	ldr r1, [sp, #4]
	str r6, [r0, #8]
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [r5]
	cmp r1, #0
	beq _0219DF94
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r5]
	str r1, [r0, #4]
	ldr r1, [r5]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r5]
	str r0, [r1]
	b _0219DF9A
_0219DF94:
	str r0, [r0, #4]
	str r0, [r0]
	str r0, [r5]
_0219DF9A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219df00

	thumb_func_start sub_0219DFA0
sub_0219DFA0: ; 0x0219DFA0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x7b
	bne _0219DFAE
	mov r0, #0x30
	b _0219DFBC
_0219DFAE:
	cmp r0, #0x5b
	bne _0219DFB6
	mov r0, #0x61
	b _0219DFBC
_0219DFB6:
	cmp r0, #0x3a
	bne _0219DFBC
	mov r0, #0x41
_0219DFBC:
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DFA0

	thumb_func_start ovy189_219dfc4
ovy189_219dfc4: ; 0x0219DFC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	add r1, r2, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r2, #0x3a
	mov r3, #0x12
	bl ovy189_219dcbc
	cmp r0, #0
	bge _0219DFE6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219DFE6:
	mov r0, #0x13
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [sp, #0xc]
	add r0, #0x3a
	str r0, [sp, #0xc]
_0219DFF2:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	add r6, r1, r0
	mov r0, #0x38
	ldrsb r4, [r6, r0]
	ldr r1, _0219E03C ; =0x021ACC88
	ldr r0, [sp, #8]
	ldrsb r5, [r1, r0]
_0219E002:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0219DFA0
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x38
	strb r4, [r0]
	cmp r4, r5
	beq _0219E02C
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	mov r3, #0x12
	bl ovy189_219dcbc
	cmp r0, #0
	bge _0219E002
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E02C:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	bge _0219DFF2
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E03C: .word 0x021ACC88
	thumb_func_end ovy189_219dfc4

	thumb_func_start sub_0219E040
sub_0219E040: ; 0x0219E040
	ldr r3, [r0]
	cmp r3, #0
	beq _0219E05E
	ldr r2, [r3]
	cmp r3, r2
	beq _0219E05A
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	b _0219E05C
_0219E05A:
	mov r1, #0
_0219E05C:
	str r1, [r0]
_0219E05E:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E040

	thumb_func_start ovy189_219e064
ovy189_219e064: ; 0x0219E064
	push {r4, lr}
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _0219E070
	mov r0, #0
	pop {r4, pc}
_0219E070:
	add r0, #0x30
	bl ovy189_219df00
	pop {r4, pc}
	thumb_func_end ovy189_219e064

	thumb_func_start ovy189_219e078
ovy189_219e078: ; 0x0219E078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp]
	str r2, [sp, #4]
	add r4, r3, #0
	mov r7, #0
	mov r6, #0
	cmp r0, #0
	beq _0219E094
	add sp, #8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E094:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0219E0A0
	add sp, #8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E0A0:
	cmp r4, #0
	beq _0219E0AC
	add r0, r4, #0
	bl sub_0219D964
	add r6, r0, #0
_0219E0AC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_219dfc4
	cmp r0, #0
	beq _0219E0D2
	add r0, r5, #0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, #0x34
	add r3, r4, #0
	bl ovy189_219df00
	add r7, r0, #0
	beq _0219E0D2
	ldr r0, [r5, #0x34]
	ldr r0, [r0]
	str r6, [r0, #0x10]
_0219E0D2:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e078

	thumb_func_start sub_0219E0D8
sub_0219E0D8: ; 0x0219E0D8
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219E0D8

	thumb_func_start ovy189_219e0e0
ovy189_219e0e0: ; 0x0219E0E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r0, #0x14
	mov r1, #4
	mvn r4, r4
	bl ovy189_219ddbc
	cmp r0, #0
	beq _0219E132
	ldr r1, [r5]
	cmp r1, #0
	beq _0219E110
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r5]
	str r1, [r0, #4]
	ldr r1, [r5]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r5]
	str r0, [r1]
	b _0219E116
_0219E110:
	str r0, [r0]
	str r0, [r0, #4]
	str r0, [r5]
_0219E116:
	ldr r4, [r5, #4]
	ldr r1, [r5, #4]
	add r1, r1, #1
	str r1, [r5, #4]
	str r4, [r0, #8]
	mov r1, #0
	str r6, [r0, #0xc]
	mvn r1, r1
	str r1, [r0, #0x10]
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _0219E132
	mov r0, #0
	str r0, [r5, #4]
_0219E132:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_219e0e0

	thumb_func_start ovy189_219e138
ovy189_219e138: ; 0x0219E138
	push {r3, r4}
	ldr r3, [r0]
	mov r2, #0
	cmp r3, #0
	beq _0219E162
	ldr r0, [r3, #8]
	cmp r0, r1
	bne _0219E14C
	add r2, r3, #0
	b _0219E162
_0219E14C:
	ldr r4, [r3, #4]
	cmp r4, r3
	beq _0219E162
_0219E152:
	ldr r0, [r4, #8]
	cmp r0, r1
	bne _0219E15C
	add r2, r4, #0
	b _0219E162
_0219E15C:
	ldr r4, [r4, #4]
	cmp r4, r3
	bne _0219E152
_0219E162:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy189_219e138

	thumb_func_start ovy189_219e168
ovy189_219e168: ; 0x0219E168
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	mov r6, #0
	bl ovy189_219e138
	add r4, r0, #0
	beq _0219E1CC
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r1, r0
	beq _0219E19A
	ldr r1, [r4, #4]
	ldr r0, [r4]
	str r1, [r0, #4]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0]
	ldr r0, [r5]
	cmp r0, r4
	bne _0219E19C
	ldr r0, [r4, #4]
	str r0, [r5]
	b _0219E19C
_0219E19A:
	str r6, [r5]
_0219E19C:
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	bl sub_021A0B60
	add r5, r0, #0
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	bl ovy189_219e8d4
	add r0, r4, #0
	bl ovy189_219ddd8
	cmp r5, #0
	beq _0219E1CA
	mov r0, #8
	str r0, [r5, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_21a0cb0
	add r0, r5, #0
	bl ovy189_21a0f00
_0219E1CA:
	mov r6, #1
_0219E1CC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e168

	thumb_func_start ovy189_219e1d0
ovy189_219e1d0: ; 0x0219E1D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5]
	add r4, r1, #0
	cmp r2, #0
	beq _0219E1EC
_0219E1DC:
	ldr r2, [r2, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_219e168
	ldr r2, [r5]
	cmp r2, #0
	bne _0219E1DC
_0219E1EC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_219e1d0

	thumb_func_start sub_0219E1F0
sub_0219E1F0: ; 0x0219E1F0
	ldr r3, _0219E1F4 ; =sub_0219E040
	bx r3
	.align 2, 0
_0219E1F4: .word sub_0219E040
	thumb_func_end sub_0219E1F0

	thumb_func_start ovy189_219e1f8
ovy189_219e1f8: ; 0x0219E1F8
	push {r4, r5}
	mov r4, #1
	lsl r4, r4, #0xa
	cmp r1, r4
	bge _0219E20C
	mov r0, #0
	str r0, [r2]
	str r1, [r3]
	pop {r4, r5}
	bx lr
_0219E20C:
	sub r4, r1, r4
	asr r4, r4, #9
	sub r5, r4, #1
	ldr r0, [r0, #0x34]
	cmp r4, #0
	beq _0219E21E
_0219E218:
	ldr r0, [r0]
	sub r5, r5, #1
	bhs _0219E218
_0219E21E:
	str r0, [r2]
	mov r0, #1
	lsl r0, r0, #0xa
	sub r1, r1, r0
	ldr r0, _0219E230 ; =0x000001FF
	and r0, r1
	str r0, [r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0219E230: .word 0x000001FF
	thumb_func_end ovy189_219e1f8

	thumb_func_start ovy189_219e234
ovy189_219e234: ; 0x0219E234
	push {r3, r4}
	ldr r3, [r1]
	cmp r3, #0
	bne _0219E25C
	mov r3, #1
	ldr r4, [r2]
	lsl r3, r3, #0xa
	cmp r4, r3
	bge _0219E254
	add r1, r4, #1
	str r1, [r2]
	add r1, r0, r4
	mov r0, #0x38
	ldrsb r0, [r1, r0]
	pop {r3, r4}
	bx lr
_0219E254:
	mov r3, #0
	str r3, [r2]
	ldr r0, [r0, #0x34]
	b _0219E26E
_0219E25C:
	mov r0, #2
	ldr r3, [r2]
	lsl r0, r0, #8
	cmp r3, r0
	bne _0219E270
	mov r0, #0
	str r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0]
_0219E26E:
	str r0, [r1]
_0219E270:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r1, r0, r3
	mov r0, #4
	ldrsb r0, [r1, r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy189_219e234

	thumb_func_start ovy189_219e284
ovy189_219e284: ; 0x0219E284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	ldr r6, [sp, #0x30]
	beq _0219E29A
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
_0219E29A:
	cmp r5, r7
	bge _0219E33A
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ovy189_219e1f8
	cmp r5, r7
	bge _0219E33A
	sub r0, r7, #1
	str r0, [sp, #0xc]
_0219E2BC:
	ldr r0, [sp]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ovy189_219e234
	cmp r0, #0x3a
	bne _0219E2D6
	cmp r4, #0
	beq _0219E2D6
	ldr r1, [r4]
	cmp r1, #0
	bge _0219E2D6
	str r5, [r4]
_0219E2D6:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0219E2FC
	cmp r0, #0xa
	bne _0219E2F6
	sub r0, r7, #1
	cmp r5, r0
	bne _0219E2EA
	mov r0, #0
	b _0219E2EC
_0219E2EA:
	add r0, r5, #1
_0219E2EC:
	str r0, [sp, #4]
	cmp r6, #0
	beq _0219E2F6
	mov r0, #2
	str r0, [r6]
_0219E2F6:
	ldr r0, [sp, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219E2FC:
	cmp r0, #0xd
	bne _0219E318
	ldr r1, [sp, #0xc]
	cmp r5, r1
	bne _0219E30A
	mov r1, #0
	b _0219E30C
_0219E30A:
	add r1, r5, #1
_0219E30C:
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	cmp r6, #0
	beq _0219E318
	str r1, [r6]
_0219E318:
	cmp r0, #0xa
	bne _0219E334
	sub r0, r7, #1
	cmp r5, r0
	bne _0219E326
	mov r0, #0
	b _0219E328
_0219E326:
	add r0, r5, #1
_0219E328:
	cmp r6, #0
	beq _0219E33E
	mov r1, #1
	add sp, #0x18
	str r1, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219E334:
	add r5, r5, #1
	cmp r5, r7
	blt _0219E2BC
_0219E33A:
	mov r0, #0
	mvn r0, r0
_0219E33E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219e284

	thumb_func_start ovy189_219e344
ovy189_219e344: ; 0x0219E344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	cmp r5, r4
	bge _0219E37A
	add r7, sp, #4
	add r2, r7, #0
	add r3, sp, #0
	bl ovy189_219e1f8
	cmp r5, r4
	bge _0219E37A
_0219E360:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ovy189_219e234
	cmp r0, #0x20
	beq _0219E374
	add sp, #8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E374:
	add r5, r5, #1
	cmp r5, r4
	blt _0219E360
_0219E37A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219e344

	thumb_func_start ovy189_219e384
ovy189_219e384: ; 0x0219E384
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r4, r3, #0
	ldr r7, [sp, #0x28]
	cmp r5, r2
	bge _0219E414
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ovy189_219e1f8
	ldr r0, [sp]
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ovy189_219e234
	add r6, r0, #0
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #8]
	b _0219E3DA
_0219E3B2:
	cmp r0, #0
	beq _0219E3C4
	cmp r0, #0x20
	beq _0219E3C4
	cmp r0, r7
	beq _0219E3C4
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _0219E3CA
_0219E3C4:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219E3CA:
	ldr r0, [sp]
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ovy189_219e234
	add r6, r0, #0
	add r5, r5, #1
	add r4, r4, #1
_0219E3DA:
	mov r0, #0
	ldrsb r0, [r4, r0]
	mov r1, #1
	cmp r0, #0x41
	bge _0219E3E6
	mov r1, #0
_0219E3E6:
	mov r2, #1
	cmp r0, #0x5a
	ble _0219E3EE
	mov r2, #0
_0219E3EE:
	tst r1, r2
	bne _0219E3F6
	add r1, r0, #0
	b _0219E3FA
_0219E3F6:
	add r1, r0, #0
	add r1, #0x20
_0219E3FA:
	mov r2, #1
	cmp r6, #0x41
	bge _0219E402
	mov r2, #0
_0219E402:
	mov r3, #1
	cmp r6, #0x5a
	ble _0219E40A
	mov r3, #0
_0219E40A:
	tst r2, r3
	beq _0219E410
	add r6, #0x20
_0219E410:
	cmp r6, r1
	beq _0219E3B2
_0219E414:
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e384

	thumb_func_start ovy189_219e41c
ovy189_219e41c: ; 0x0219E41C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	str r1, [sp]
	ldr r0, [r7]
	add r1, r6, r5
	cmp r1, r0
	bgt _0219E4B8
	cmp r5, #0
	beq _0219E4B2
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r6, r0
	bge _0219E45C
	sub r4, r0, r6
	cmp r5, r4
	bgt _0219E444
	add r4, r5, #0
_0219E444:
	add r1, r7, #0
	add r1, #0x38
	ldr r0, [sp]
	add r1, r1, r6
	add r2, r4, #0
	bl sub_0219D954
	ldr r0, [sp]
	add r6, r6, r4
	add r0, r0, r4
	sub r5, r5, r4
	str r0, [sp]
_0219E45C:
	cmp r5, #0
	beq _0219E4B2
	mov r0, #1
	lsl r0, r0, #0xa
	sub r2, r6, r0
	ldr r0, _0219E4C0 ; =0x000001FF
	add r6, r2, #0
	asr r1, r2, #9
	and r6, r0
	sub r0, r1, #1
	ldr r7, [r7, #0x34]
	cmp r1, #0
	beq _0219E47C
_0219E476:
	ldr r7, [r7]
	sub r0, r0, #1
	bhs _0219E476
_0219E47C:
	cmp r5, #0
	beq _0219E4B2
	ldr r0, _0219E4C0 ; =0x000001FF
	add r0, r0, #1
	str r0, [sp, #4]
_0219E486:
	ldr r0, [sp, #4]
	sub r4, r0, r6
	cmp r5, r4
	bgt _0219E490
	add r4, r5, #0
_0219E490:
	add r1, r7, #4
	ldr r0, [sp]
	add r1, r1, r6
	add r2, r4, #0
	bl sub_0219D954
	add r1, r6, r4
	ldr r0, _0219E4C0 ; =0x000001FF
	add r6, r1, #0
	and r6, r0
	ldr r0, [sp]
	sub r5, r5, r4
	add r0, r0, r4
	ldr r7, [r7]
	str r0, [sp]
	cmp r5, #0
	bne _0219E486
_0219E4B2:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E4B8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E4C0: .word 0x000001FF
	thumb_func_end ovy189_219e41c

	thumb_func_start sub_0219E4C4
sub_0219E4C4: ; 0x0219E4C4
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	bhi _0219E4CE
	mov r0, #1
	bx lr
_0219E4CE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E4C4

	thumb_func_start ovy189_219e4d4
ovy189_219e4d4: ; 0x0219E4D4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r4, [r1, #0x2c]
	ldr r5, [r4, #0x1c]
	sub r5, r5, r3
	str r5, [sp]
	ldr r5, [sp, #0x18]
	str r5, [sp, #4]
	ldr r4, [r4, #0x28]
	add r3, r4, r3
	bl ovy189_219d860
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_219e4d4

	thumb_func_start ovy189_219e4f0
ovy189_219e4f0: ; 0x0219E4F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r4, [r5, #0x2c]
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	str r2, [sp, #8]
	bl sub_0219E4C4
	cmp r0, #0
	beq _0219E510
	add sp, #0xc
	ldr r0, _0219E534 ; =0xFFFFFC15
	pop {r4, r5, r6, r7, pc}
_0219E510:
	ldr r0, [r4, #0x1c]
	sub r1, r0, r6
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bgt _0219E51C
	add r1, r0, #0
_0219E51C:
	ldr r0, [sp, #0x24]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [r4, #0x28]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r3, r6
	bl ovy189_219d860
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E534: .word 0xFFFFFC15
	thumb_func_end ovy189_219e4f0

	thumb_func_start sub_0219E538
sub_0219E538: ; 0x0219E538
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E538

	thumb_func_start ovy189_219e540
ovy189_219e540: ; 0x0219E540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1c
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	add r6, r3, #0
	mov r5, #0
	add r1, r2, #0
	beq _0219E560
	cmp r1, #1
	beq _0219E560
	cmp r1, #2
	beq _0219E560
	mov r1, #0xb
	b _0219E574
_0219E560:
	mov r4, #0x96
	lsl r4, r4, #2
	add r0, r4, #0
	mov r1, #4
	bl ovy189_219ddbc
	add r5, r0, #0
	bne _0219E57A
_0219E570:
	ldr r0, [sp]
	mov r1, #1
_0219E574:
	bl sub_0219DDEC
	b _0219E854
_0219E57A:
	add r1, r4, #0
	bl sub_0219D97C
	ldr r0, _0219E82C ; =0x0000043C
	mov r1, #4
	bl ovy189_219ddbc
	str r0, [r5, #0x2c]
	cmp r0, #0
	bne _0219E590
	b _0219E570
_0219E590:
	ldr r1, _0219E82C ; =0x0000043C
	bl sub_0219D97C
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #0x230]
	str r6, [r0, #0x28]
	ldr r0, [r5, #0x2c]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x238]
	ldr r0, [r5, #0x2c]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x23c]
	ldr r0, [r5, #0x2c]
	str r1, [r0, #0x30]
	add r1, r4, #0
	add r0, r7, #0
	sub r1, #0x59
	bl sub_0219D96C
	add r6, r0, #0
	cmp r6, #7
	bgt _0219E5C2
_0219E5BC:
	ldr r0, [sp]
	mov r1, #4
	b _0219E574
_0219E5C2:
	mov r1, #4
	add r0, sp, #0x18
	lsl r1, r1, #7
	bl sub_0219D97C
	add r0, sp, #0x18
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0219D954
	mov r0, #0x50
	str r0, [r5, #0x20]
	mov r0, #7
	str r0, [sp, #8]
	ldr r1, _0219E830 ; =0x021AD154
	add r0, sp, #0x18
	mov r2, #7
	bl ovy189_219d988
	cmp r0, #0
	beq _0219E608
	mov r2, #8
	str r2, [sp, #8]
	ldr r1, _0219E834 ; =0x021AD15C
	add r0, sp, #0x18
	mov r2, #8
	bl ovy189_219d988
	cmp r0, #0
	beq _0219E600
	b _0219E5BC
_0219E600:
	mov r0, #1
	str r0, [r5, #8]
	sub r4, #0x9d
	str r4, [r5, #0x20]
_0219E608:
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r6, r0
	str r0, [sp, #0x14]
	cmp r0, #0
	bgt _0219E61C
	b _0219E5BC
_0219E61C:
	mov r6, #0
	mov r7, #0
	mov r4, #0
	b _0219E65A
_0219E624:
	cmp r4, #2
	bne _0219E62C
	sub r4, r4, #1
	b _0219E658
_0219E62C:
	cmp r4, #1
	bne _0219E650
	ldr r0, [sp, #0xc]
	sub r1, r6, #1
	add r0, r0, r1
	mov r1, #2
	bl ovy189_219dac0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub r4, r4, #1
	cmp r0, #0
	bge _0219E648
	b _0219E5BC
_0219E648:
	cmp r0, #0x2f
	bne _0219E658
	sub r7, r7, #1
	b _0219E668
_0219E650:
	cmp r0, #0x25
	bne _0219E658
	mov r4, #2
	add r7, r7, #1
_0219E658:
	add r6, r6, #1
_0219E65A:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	bge _0219E668
	ldr r0, [sp, #0xc]
	ldrsb r0, [r0, r6]
	cmp r0, #0x2f
	bne _0219E624
_0219E668:
	cmp r4, #0
	beq _0219E66E
	b _0219E5BC
_0219E66E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r1, r1, r0
	lsl r0, r7, #1
	sub r4, r1, r0
	add r0, r4, #1
	mov r1, #4
	bl ovy189_219ddbc
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _0219E688
	b _0219E570
_0219E688:
	add r1, r4, #1
	bl sub_0219D97C
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #8]
	add r1, sp, #0x18
	bl sub_0219D954
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r7, #0
	mov r4, #0
	mov r6, #0
	cmp r0, #0
	ble _0219E708
_0219E6A8:
	cmp r6, #2
	bne _0219E6B0
	sub r6, r6, #1
	b _0219E700
_0219E6B0:
	cmp r6, #1
	bne _0219E6DC
	ldr r0, [sp, #0xc]
	sub r1, r7, #1
	add r0, r0, r1
	mov r1, #2
	bl ovy189_219dac0
	lsl r0, r0, #0x18
	ldr r2, [r5, #0x24]
	ldr r1, [sp, #8]
	asr r0, r0, #0x18
	add r1, r1, r2
	add r1, r4, r1
	sub r1, r1, #1
	sub r6, r6, #1
	strb r0, [r1]
	cmp r0, #0x2f
	bne _0219E700
	mov r0, #1
	str r0, [sp, #0x10]
	b _0219E700
_0219E6DC:
	ldr r0, [sp, #0xc]
	ldrsb r0, [r0, r7]
	cmp r0, #0x2f
	bne _0219E6E8
	mov r1, #1
	str r1, [sp, #0x10]
_0219E6E8:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0219E6F6
	cmp r0, #0x25
	bne _0219E6F6
	mov r6, #2
	b _0219E6FE
_0219E6F6:
	ldr r2, [r5, #0x24]
	ldr r1, [sp, #8]
	add r1, r1, r2
	strb r0, [r4, r1]
_0219E6FE:
	add r4, r4, #1
_0219E700:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	cmp r7, r0
	blt _0219E6A8
_0219E708:
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x24]
	mov r1, #0
	add r0, r0, r4
	strb r1, [r2, r0]
	ldr r2, [r5, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	cmp r4, #0
	ble _0219E734
_0219E71C:
	ldrsb r2, [r0, r1]
	cmp r2, #0x2f
	beq _0219E726
	cmp r2, #0x3a
	bne _0219E72E
_0219E726:
	ldr r2, [sp, #8]
	add r2, r1, r2
	str r2, [r5, #0x14]
	b _0219E734
_0219E72E:
	add r1, r1, #1
	cmp r1, r4
	blt _0219E71C
_0219E734:
	cmp r1, r4
	bne _0219E742
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r5, #0x14]
_0219E73E:
	str r0, [r5, #0x18]
	b _0219E798
_0219E742:
	ldrsb r2, [r0, r1]
	cmp r2, #0x2f
	bne _0219E74C
	ldr r0, [r5, #0x14]
	b _0219E73E
_0219E74C:
	cmp r2, #0x3a
	bne _0219E798
	cmp r1, r4
	bge _0219E768
_0219E754:
	ldrsb r2, [r0, r1]
	cmp r2, #0x2f
	bne _0219E762
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r5, #0x18]
	b _0219E768
_0219E762:
	add r1, r1, #1
	cmp r1, r4
	blt _0219E754
_0219E768:
	cmp r1, r4
	bne _0219E772
	ldr r0, [sp, #8]
	add r0, r1, r0
	b _0219E73E
_0219E772:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r0, #1
	ldr r0, [r5, #0x24]
	sub r1, r1, r2
	add r0, r0, r2
	bl ovy189_219dc70
	cmp r0, #0
	bge _0219E78A
	ldr r0, [r5, #0x20]
	b _0219E792
_0219E78A:
	ldr r1, _0219E838 ; =0x0000FFFF
	cmp r0, r1
	ble _0219E792
	b _0219E5BC
_0219E792:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5, #0x20]
_0219E798:
	ldr r0, [r5, #8]
	mov r1, #8
	cmp r0, #0
	bne _0219E7A2
	mov r1, #7
_0219E7A2:
	ldr r0, [r5, #0x14]
	sub r4, r0, r1
	add r0, r4, #1
	mov r1, #4
	bl ovy189_219ddbc
	str r0, [r5, #0x28]
	cmp r0, #0
	bne _0219E7B6
	b _0219E570
_0219E7B6:
	add r1, r4, #1
	bl sub_0219D97C
	ldr r0, [r5, #8]
	mov r2, #8
	cmp r0, #0
	bne _0219E7C6
	mov r2, #7
_0219E7C6:
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x28]
	add r1, r1, r2
	add r2, r4, #0
	bl sub_0219D954
	add r0, r5, #0
	ldr r1, _0219E83C ; =0x021ACC88
	add r0, #0x38
	mov r2, #0x14
	bl sub_0219D954
	ldr r0, [sp, #4]
	add r1, r5, #0
	str r0, [r5, #0x1c]
	mov r0, #0
	add r1, #0xac
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	ldr r3, [sp, #0x234]
	add sp, #0x1fc
	ldr r2, [r5, #0x2c]
	ldr r1, _0219E840 ; =0x00000438
	b _0219E844
	nop
_0219E82C: .word 0x0000043C
_0219E830: .word 0x021AD154
_0219E834: .word 0x021AD15C
_0219E838: .word 0x0000FFFF
_0219E83C: .word 0x021ACC88
_0219E840: .word 0x00000438
_0219E844:
	add sp, #0x1c
	str r3, [r2, r1]
	mov r1, #0x92
	str r0, [r5, #0xc]
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E854:
	cmp r5, #0
	beq _0219E87C
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0219E862
	bl ovy189_219ddd8
_0219E862:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0219E86C
	bl ovy189_219ddd8
_0219E86C:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0219E876
	bl ovy189_219ddd8
_0219E876:
	add r0, r5, #0
	bl ovy189_219ddd8
_0219E87C:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x1c
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e540

	thumb_func_start ovy189_219e884
ovy189_219e884: ; 0x0219E884
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_021A0D84
	add r1, r5, #0
	add r4, r0, #0
	bl sub_021A0B60
	cmp r0, #0
	beq _0219E89C
	mov r1, #0
	str r1, [r0, #0x14]
_0219E89C:
	ldr r0, [r5, #0x2c]
	bl ovy189_219ddd8
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_219e8d4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_219e884

	thumb_func_start ovy189_219e8ac
ovy189_219e8ac: ; 0x0219E8AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _0219E8D0
	mov r6, #0
_0219E8B4:
	ldr r0, [r5]
	cmp r5, r0
	beq _0219E8C4
	ldr r4, [r0]
	bl ovy189_219ddd8
	str r4, [r5]
	b _0219E8CC
_0219E8C4:
	add r0, r5, #0
	bl ovy189_219ddd8
	add r5, r6, #0
_0219E8CC:
	cmp r5, #0
	bne _0219E8B4
_0219E8D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_219e8ac

	thumb_func_start ovy189_219e8d4
ovy189_219e8d4: ; 0x0219E8D4
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A0B60
	cmp r0, #0
	beq _0219E8E4
	mov r1, #0
	str r1, [r0, #0x10]
_0219E8E4:
	ldr r0, [r4, #0x30]
	bl ovy189_219e8ac
	ldr r0, [r4, #0x34]
	bl ovy189_219e8ac
	ldr r0, [r4, #0x24]
	bl ovy189_219ddd8
	ldr r0, [r4, #0x28]
	bl ovy189_219ddd8
	add r0, r4, #0
	bl ovy189_219ddd8
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_219e8d4

	thumb_func_start ovy189_219e908
ovy189_219e908: ; 0x0219E908
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A0D74
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A0D80
	str r0, [sp]
	add r0, r5, #0
	bl sub_021A0D84
	ldr r1, [r4, #4]
	add r7, r0, #0
	cmp r1, #0
	beq _0219E93A
	add r0, r6, #0
	mov r4, #0xb
	mov r1, #0xb
	bl sub_0219DDEC
	sub r4, #0xc
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E93A:
	bl sub_021A0DCC
	add r0, r5, #0
	bl sub_021A0D78
	add r1, r4, #0
	bl ovy189_219e0e0
	add r5, r0, #0
	bmi _0219E95A
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [sp]
	bl sub_0219D5D0
	b _0219E962
_0219E95A:
	add r0, r6, #0
	mov r1, #1
	bl sub_0219DDEC
_0219E962:
	add r0, r7, #0
	bl sub_021A0DD4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e908

	thumb_func_start ovy189_219e96c
ovy189_219e96c: ; 0x0219E96C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	mov r5, #0
	bl sub_021A0D7C
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_021A0D84
	ldr r4, [r4]
	add r7, r0, #0
	bl sub_021A0DCC
	cmp r4, #0
	beq _0219E9AA
	ldr r0, [r4, #8]
	cmp r0, r6
	bne _0219E9AA
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219E9AA
	ldr r0, [r4, #0xc]
	mov r5, #1
	str r5, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	bl ovy189_219d8f4
_0219E9AA:
	cmp r5, #0
	bne _0219E9BE
	ldr r0, [sp]
	bl sub_021A0D78
	add r1, r7, #0
	add r2, r6, #0
	bl ovy189_219e168
	add r5, r0, #0
_0219E9BE:
	add r0, r7, #0
	bl sub_021A0DD4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219e96c

	thumb_func_start ovy189_219e9c8
ovy189_219e9c8: ; 0x0219E9C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A0D7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A0D78
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A0D84
	ldr r4, [r4]
	add r5, r0, #0
	bl sub_021A0DCC
	cmp r4, #0
	beq _0219EA04
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219EA04
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	bl ovy189_219d8f4
_0219EA04:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy189_219e1d0
	add r0, r5, #0
	bl sub_021A0DD4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_219e9c8

	thumb_func_start ovy189_219ea14
ovy189_219ea14: ; 0x0219EA14
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _0219EA2E
_0219EA20:
	ldr r4, [r0]
	bl ovy189_219ddd8
	add r0, r4, #0
	str r4, [r5, #0x34]
	cmp r4, #0
	bne _0219EA20
_0219EA2E:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0219EA38
	bl ovy189_219ddd8
_0219EA38:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0219EA42
	bl ovy189_219ddd8
_0219EA42:
	ldr r3, [r5, #0x30]
	cmp r3, #0
	beq _0219EA58
	ldr r2, _0219EA70 ; =0x00000438
	ldr r0, [r5, #0x28]
	ldr r1, _0219EA74 ; =ovy189_219ddd8
	ldr r2, [r5, r2]
	blx r3
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x1c]
_0219EA58:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021A0B6C
	cmp r0, #0
	beq _0219EA68
	mov r1, #0
	str r1, [r0, #0x14]
_0219EA68:
	add r0, r5, #0
	bl ovy189_219ddd8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219EA70: .word 0x00000438
_0219EA74: .word ovy189_219ddd8
	thumb_func_end ovy189_219ea14

	thumb_func_start ovy189_219ea78
ovy189_219ea78: ; 0x0219EA78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	mov r1, #0
	str r1, [sp, #8]
	add r1, sp, #8
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r2, [r5]
	mov r1, #0xc
	add r3, sp, #0xc
	bl ovy189_219e284
	add r4, r0, #0
	cmp r4, #0
	ble _0219EB1C
_0219EA9A:
	add r0, sp, #8
	str r0, [sp]
	ldr r2, [r5]
	add r0, r5, #0
	add r1, r4, #0
	add r3, sp, #0xc
	bl ovy189_219e284
	ldr r2, [sp, #0xc]
	add r6, r0, #0
	cmp r2, #0
	ble _0219EB16
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ovy189_219e384
	cmp r0, #0
	bne _0219EB16
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [r5]
	cmp r1, r0
	bge _0219EB10
	add r0, sp, #8
	str r0, [sp]
	ldr r2, [r5]
	add r0, r5, #0
	mov r3, #0
	bl ovy189_219e284
	cmp r0, #0
	bgt _0219EAE4
	ldr r4, [r5]
	b _0219EAF4
_0219EAE4:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _0219EAF2
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219EAF2:
	sub r4, r0, r1
_0219EAF4:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, #1
	add r2, r4, #0
	bl ovy189_219e344
	cmp r0, #0
	bge _0219EB06
	add r0, r4, #0
_0219EB06:
	ldr r1, [sp, #4]
	add sp, #0x10
	str r0, [r1]
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219EB10:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219EB16:
	add r4, r6, #0
	cmp r6, #0
	bgt _0219EA9A
_0219EB1C:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219ea78

	thumb_func_start ovy189_219eb24
ovy189_219eb24: ; 0x0219EB24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r7, r1, #0
	add r6, r2, #0
	cmp r0, #0
	bne _0219EB38
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219EB38:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0219EB46
	bl ovy189_219ddd8
	mov r0, #0
	str r0, [r5, #0x24]
_0219EB46:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ovy189_219ea78
	add r4, r0, #0
	bmi _0219EB80
	add r0, r4, #1
	mov r1, #4
	mov r7, #4
	bl ovy189_219ddbc
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _0219EB68
	sub r0, r7, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219EB68:
	mov r1, #0
	strb r1, [r0, r4]
	ldr r1, [r5, #0x24]
	ldr r2, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ovy189_219e41c
	ldr r0, [r5, #0x24]
	str r0, [r6]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219EB80:
	ldr r0, _0219EBC0 ; =0x021AD168
	add r1, r7, #0
	bl sub_0219D974
	cmp r0, #0
	bne _0219EBB8
	mov r0, #4
	mov r1, #4
	mov r4, #4
	bl ovy189_219ddbc
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _0219EBA0
	sub r0, r4, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219EBA0:
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	mov r2, #9
	mov r3, #3
	bl ovy189_219e41c
	ldr r0, [r5, #0x24]
	str r0, [r6]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219EBB8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EBC0: .word 0x021AD168
	thumb_func_end ovy189_219eb24

	thumb_func_start ovy189_219ebc4
ovy189_219ebc4: ; 0x0219EBC4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r2, #0
	cmp r0, #0
	beq _0219EBD8
	ldr r0, [r5]
	cmp r0, #0
	bne _0219EBDE
_0219EBD8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0219EBDE:
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #0xa
	cmp r1, r0
	bge _0219EBEE
	add r0, r5, #0
	add r0, #0x38
	b _0219EC1C
_0219EBEE:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0219EC1A
	ldr r0, [r5]
	mov r1, #4
	bl ovy189_219ddbc
	add r1, r0, #0
	str r1, [r5, #0x20]
	bne _0219EC10
	add r0, r6, #0
	mov r4, #1
	mov r1, #1
	bl sub_0219DDEC
	sub r0, r4, #2
	pop {r4, r5, r6, pc}
_0219EC10:
	ldr r3, [r5]
	add r0, r5, #0
	mov r2, #0
	bl ovy189_219e41c
_0219EC1A:
	ldr r0, [r5, #0x20]
_0219EC1C:
	str r0, [r4]
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_219ebc4

	thumb_func_start sub_0219EC24
sub_0219EC24: ; 0x0219EC24
	ldr r3, _0219EC28 ; =sub_0219EC34
	bx r3
	.align 2, 0
_0219EC28: .word sub_0219EC34
	thumb_func_end sub_0219EC24

	thumb_func_start sub_0219EC2C
sub_0219EC2C: ; 0x0219EC2C
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_0219EC2C

	thumb_func_start sub_0219EC34
sub_0219EC34: ; 0x0219EC34
	mov r1, #0
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_0219EC34

	thumb_func_start sub_0219EC3C
sub_0219EC3C: ; 0x0219EC3C
	add r0, #0xec
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EC3C

	thumb_func_start ovy189_219ec44
ovy189_219ec44: ; 0x0219EC44
	push {r3, r4}
	sub r2, r1, #2
	mov r3, #3
	and r2, r3
	ldrsb r2, [r0, r2]
	cmp r2, #0xd
	bne _0219EC62
	sub r4, r1, #1
	and r3, r4
	ldrsb r3, [r0, r3]
	cmp r3, #0xd
	bne _0219EC62
	mov r0, #1
	pop {r3, r4}
	bx lr
_0219EC62:
	cmp r2, #0xa
	bne _0219EC78
	sub r4, r1, #1
	mov r3, #3
	and r3, r4
	ldrsb r3, [r0, r3]
	cmp r3, #0xa
	bne _0219EC78
	mov r0, #1
	pop {r3, r4}
	bx lr
_0219EC78:
	sub r4, r1, #4
	mov r3, #3
	and r4, r3
	ldrsb r4, [r0, r4]
	cmp r4, #0xd
	bne _0219ECA2
	sub r4, r1, #3
	and r4, r3
	ldrsb r4, [r0, r4]
	cmp r4, #0xa
	bne _0219ECA2
	cmp r2, #0xd
	bne _0219ECA2
	sub r1, r1, #1
	and r1, r3
	ldrsb r0, [r0, r1]
	cmp r0, #0xa
	bne _0219ECA2
	mov r0, #1
	pop {r3, r4}
	bx lr
_0219ECA2:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy189_219ec44

	thumb_func_start ovy189_219eca8
ovy189_219eca8: ; 0x0219ECA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	str r0, [sp, #4]
	add r0, r4, #0
	add r5, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r7, [sp, #0x28]
	str r4, [sp, #0x10]
	cmp r0, #0
	ble _0219ED1C
_0219ECC0:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ECD0
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0219ECD0:
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #0xe
	sub r6, r0, r1
	cmp r4, r6
	bgt _0219ECDE
	add r6, r4, #0
_0219ECDE:
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r0, r0, r1
	add r1, r7, #0
	bl sub_0219D954
	ldr r0, [r5]
	add r7, r7, r6
	add r1, r0, r6
	mov r0, #1
	lsl r0, r0, #0xe
	sub r4, r4, r6
	str r1, [r5]
	cmp r1, r0
	bne _0219ED18
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r3, r3, #0xe
	bl ovy189_219d8bc
	cmp r0, #0
	ble _0219ED1E
	ldr r1, [r5]
	sub r0, r1, r0
	str r0, [r5]
_0219ED18:
	cmp r4, #0
	bgt _0219ECC0
_0219ED1C:
	ldr r0, [sp, #0x10]
_0219ED1E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219eca8

	thumb_func_start ovy189_219ed24
ovy189_219ed24: ; 0x0219ED24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r5, #0
	add r0, sp, #0x10
	strb r5, [r0]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	strb r5, [r0, #1]
	mov r4, #0
	add r6, sp, #0x10
	b _0219ED58
_0219ED3C:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r3, r6, r3
	bl ovy189_219d860
	cmp r0, #0
	ble _0219ED72
	add r5, r5, r0
	add r4, r4, #1
_0219ED58:
	mov r0, #1
	add r3, r4, #0
	and r3, r0
	ldrsb r0, [r6, r3]
	cmp r0, #0xd
	bne _0219ED3C
	sub r1, r4, #1
	mov r0, #1
	and r0, r1
	ldrsb r0, [r6, r0]
	cmp r0, #0xa
	bne _0219ED3C
	add r0, r5, #0
_0219ED72:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219ed24

	thumb_func_start ovy189_219ed78
ovy189_219ed78: ; 0x0219ED78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	mov r7, #0
	bl sub_021A0B60
	add r6, r0, #0
	bne _0219ED96
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0219ED96:
	str r7, [r6, #0x24]
_0219ED98:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EDA6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219EDA6:
	mov r0, #0
	str r0, [r6, #0x28]
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r6, #0
	add r3, r7, #0
	bl ovy189_21a0bc4
	cmp r0, #0
	bge _0219EDC0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219EDC0:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x24]
	cmp r1, #0
	beq _0219EDF4
	cmp r0, #0
	bne _0219EDD2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219EDD2:
	add r7, r7, r1
	cmp r4, #0
	beq _0219EDE2
	cmp r4, #1
	beq _0219EDE2
	cmp r4, #2
	beq _0219EDE8
	b _0219ED98
_0219EDE2:
	ldr r0, [r5]
	add r0, r0, r1
	b _0219EDF0
_0219EDE8:
	bl ovy189_219da28
	ldr r1, [r5]
	add r0, r1, r0
_0219EDF0:
	str r0, [r5]
	b _0219ED98
_0219EDF4:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219ed78

	thumb_func_start ovy189_219edfc
ovy189_219edfc: ; 0x0219EDFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	str r2, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	str r3, [sp, #0x14]
	str r2, [sp, #0x40]
	mov r2, #0
	str r2, [sp, #0x1c]
	bl sub_021A0B60
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _0219EE28
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219EE28:
	ldr r1, [sp, #0x1c]
	add r4, sp, #0x20
	str r1, [r0, #0x24]
_0219EE2E:
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EE3C
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219EE3C:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0x28]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	bl ovy189_21a0bc4
	cmp r0, #0
	bge _0219EE58
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219EE58:
	ldr r0, [sp, #0x18]
	ldr r6, [r0, #0x28]
	ldr r7, [r0, #0x24]
	cmp r6, #0
	beq _0219EEE4
	cmp r7, #0
	bne _0219EE6C
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219EE6C:
	ldr r0, [sp, #0x1c]
	add r0, r0, r6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0219EE82
	cmp r0, #1
	beq _0219EE82
	cmp r0, #2
	beq _0219EEA4
	b _0219EE2E
_0219EE82:
	ldr r0, [sp, #0xc]
	str r7, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	str r6, [sp, #4]
	bl ovy189_219eca8
	cmp r0, #0
	bge _0219EE9C
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219EE9C:
	bne _0219EE2E
	add sp, #0x24
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0219EEA4:
	mov r5, #0
	cmp r6, #0
	bls _0219EE2E
_0219EEAA:
	add r0, r4, #0
	mov r1, #3
	bl sub_0219D97C
	ldrsb r1, [r7, r5]
	add r0, r4, #0
	bl sub_0219DA6C
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl ovy189_219eca8
	cmp r0, #0
	bge _0219EED4
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219EED4:
	bne _0219EEDC
	add sp, #0x24
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0219EEDC:
	add r5, r5, #1
	cmp r5, r6
	blo _0219EEAA
	b _0219EE2E
_0219EEE4:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219edfc

	thumb_func_start ovy189_219eeec
ovy189_219eeec: ; 0x0219EEEC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r6, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl sub_0219E4C4
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _0219EF0C
	ldr r1, [r5, #0x28]
	cmp r1, #0
	beq _0219EF0C
	cmp r0, #0
	beq _0219EF38
_0219EF0C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021A0B6C
	add r1, r0, #0
	beq _0219EF3C
	add r0, r6, #0
	bl ovy189_21a0c18
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0219EF3C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219EF3C
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl sub_0219E4C4
	cmp r0, #0
	bne _0219EF3C
	b _0219EF3A
_0219EF38:
	bne _0219EF3C
_0219EF3A:
	mov r4, #1
_0219EF3C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_219eeec

	thumb_func_start ovy189_219ef40
ovy189_219ef40: ; 0x0219EF40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ovy189_21a0d54
	add r7, r0, #0
	bl sub_021A0D74
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_021A0D80
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, #0xc]
	cmp r4, #0
	bne _0219EF76
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219EF76:
	ldr r1, [sp, #0xc]
	str r6, [sp]
	add r1, r1, r2
	mov r3, #0xc9
	lsl r3, r3, #2
	ldr r2, [sp, #8]
	str r4, [sp, #4]
	ldr r2, [r2, #0xc]
	add r3, r5, r3
	bl ovy189_219eca8
	cmp r0, #0
	bge _0219EF96
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219EF96:
	bne _0219EF9E
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219EF9E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219ef40

	thumb_func_start ovy189_219efa4
ovy189_219efa4: ; 0x0219EFA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D7C
	ldr r0, [r0]
	mov r6, #0x91
	ldr r4, [r0, #0xc]
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _0219EFC2
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219EFC2:
	ldr r1, _0219EFF4 ; =0x021AD178
	add r0, r5, #0
	mov r2, #0x1b
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219EFF2
	add r1, r6, #0
	sub r1, #0x5c
	ldr r2, [r4, r6]
	add r0, r5, #0
	add r1, r4, r1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219EFF2
	ldr r1, _0219EFF8 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219EFF2
	mov r0, #0
_0219EFF2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219EFF4: .word 0x021AD178
_0219EFF8: .word 0x021AD194
	thumb_func_end ovy189_219efa4

	thumb_func_start ovy189_219effc
ovy189_219effc: ; 0x0219EFFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _0219F01A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219F01A:
	ldr r1, _0219F04C ; =0x021AD198
	add r0, r5, #0
	mov r2, #0x15
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F04A
	add r1, r4, #0
	add r4, #0xa8
	ldr r2, [r4]
	add r0, r5, #0
	add r1, #0x4c
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F04A
	ldr r1, _0219F050 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F04A
	mov r0, #0
_0219F04A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F04C: .word 0x021AD198
_0219F050: .word 0x021AD194
	thumb_func_end ovy189_219effc

	thumb_func_start ovy189_219f054
ovy189_219f054: ; 0x0219F054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ovy189_21a0d54
	add r7, r0, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	add r0, r7, #0
	bl sub_021A0D80
	add r6, r0, #0
	add r0, r7, #0
	bl sub_021A0D74
	str r0, [sp, #4]
	ldr r1, [r4, #0x20]
	add r0, sp, #8
	bl ovy189_219dbb0
	add r7, r0, #0
	ldr r1, _0219F188 ; =0x021AD1B0
	add r0, r5, #0
	mov r2, #8
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	add r1, #8
	sub r2, #8
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F18C ; =0x021AD1BC
	add r0, r5, #0
	mov r2, #1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	add r0, r5, #0
	add r1, sp, #8
	add r2, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F190 ; =0x021AD1C0
	add r0, r5, #0
	mov r2, #0xb
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F194 ; =0x021AD1CC
	add r0, r5, #0
	mov r2, #6
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	add r1, #8
	sub r2, #8
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F18C ; =0x021AD1BC
	add r0, r5, #0
	mov r2, #1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	add r0, r5, #0
	add r1, sp, #8
	add r2, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F198 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	mov r7, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F19C ; =0x021AD1D4
	add r0, r5, #0
	mov r2, #0x25
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F182
	add r0, r5, #0
	bl ovy189_219efa4
	cmp r0, #0
	bne _0219F182
	ldr r1, _0219F198 ; =0x021AD194
	add r0, r5, #0
	add r2, r7, #0
	bl ovy189_219ef40
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	cmp r3, #0
	ble _0219F16A
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	add r2, #0xfe
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	add r2, r6, r2
	bl ovy189_219d8bc
	cmp r0, #0
	bge _0219F162
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F162:
	bne _0219F16A
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F16A:
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #1
	add r0, r6, r0
	lsl r1, r1, #0xe
	bl sub_0219D97C
	mov r0, #0
_0219F182:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F188: .word 0x021AD1B0
_0219F18C: .word 0x021AD1BC
_0219F190: .word 0x021AD1C0
_0219F194: .word 0x021AD1CC
_0219F198: .word 0x021AD194
_0219F19C: .word 0x021AD1D4
	thumb_func_end ovy189_219f054

	thumb_func_start ovy189_219f1a0
ovy189_219f1a0: ; 0x0219F1A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x28
	bl ovy189_21a0d54
	add r5, r0, #0
	bl sub_021A0D7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A0D80
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl sub_021A0D74
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_021A0D84
	str r0, [sp, #0x18]
	ldr r0, [r4]
	mov r6, #0
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
_0219F1DA:
	mov r0, #2
	lsl r0, r0, #8
	sub r0, r0, r6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r4, sp, #0x24
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0xc]
	add r3, r4, r6
	bl ovy189_219d860
	str r0, [sp, #0xc]
	add r6, r6, r0
	add r0, sp, #0x2c
	add r0, #1
	mov r1, #3
	bl ovy189_219db50
	ldr r1, [sp, #0x10]
	mov r2, #5
	str r0, [r1, #0x18]
	ldr r1, _0219F2F8 ; =0x021AD1FC
	add r0, r4, #0
	bl ovy189_219d988
	cmp r0, #0
	bne _0219F22C
	add r1, sp, #0x24
	mov r0, #8
	ldrsb r0, [r1, r0]
	cmp r0, #0x20
	bne _0219F22C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x18]
	cmp r0, #0xc8
	bne _0219F22C
	mov r0, #1
	str r0, [sp, #8]
_0219F22C:
	mov r0, #0
	mov r1, #0
	cmp r6, #0
	ble _0219F294
	sub r2, r0, #1
	sub r3, r2, #1
	add r4, sp, #0x24
	mov ip, r3
	sub r7, r2, #2
_0219F23E:
	cmp r0, #1
	ble _0219F254
	add r3, r4, r0
	ldrsb r5, [r3, r2]
	cmp r5, #0xd
	bne _0219F254
	mov r5, #0
	ldrsb r3, [r3, r5]
	cmp r3, #0xd
	bne _0219F254
	b _0219F28C
_0219F254:
	cmp r0, #1
	ble _0219F26A
	add r3, r4, r0
	ldrsb r5, [r3, r2]
	cmp r5, #0xa
	bne _0219F26A
	mov r5, #0
	ldrsb r3, [r3, r5]
	cmp r3, #0xa
	bne _0219F26A
	b _0219F28C
_0219F26A:
	cmp r0, #3
	ble _0219F28E
	add r3, r4, r0
	ldrsb r5, [r3, r7]
	cmp r5, #0xd
	bne _0219F28E
	mov r5, ip
	ldrsb r5, [r3, r5]
	cmp r5, #0xa
	bne _0219F28E
	ldrsb r5, [r3, r2]
	cmp r5, #0xd
	bne _0219F28E
	mov r5, #0
	ldrsb r3, [r3, r5]
	cmp r3, #0xa
	bne _0219F28E
_0219F28C:
	mov r1, #1
_0219F28E:
	add r0, r0, #1
	cmp r0, r6
	blt _0219F23E
_0219F294:
	cmp r1, #0
	beq _0219F2AE
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0219F2A6
	add sp, #0x1fc
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219F2A6:
	add sp, #0x1fc
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219F2AE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _0219F2BC
	add sp, #0x1fc
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219F2BC:
	mov r0, #2
	lsl r0, r0, #8
	cmp r6, r0
	blt _0219F1DA
	mov r0, #1
	str r0, [sp]
	mov r4, #0
	mov r3, #1
	ldr r2, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r5, [sp, #0x20]
	lsl r3, r3, #8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0xc]
	add r3, r5, r3
	bl ovy189_219d860
	cmp r0, #0
	bge _0219F2EC
	add sp, #0x1fc
	add sp, #0x28
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0219F2EC:
	bne _0219F2F0
	b _0219F1DA
_0219F2F0:
	add r0, r4, #0
	add sp, #0x1fc
	add sp, #0x28
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F2F8: .word 0x021AD1FC
	thumb_func_end ovy189_219f1a0

	thumb_func_start ovy189_219f2fc
ovy189_219f2fc: ; 0x0219F2FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r6, [r0, #0xc]
	add r0, r6, #0
	add r0, #0x30
	bl sub_0219E040
	add r4, r0, #0
	beq _0219F370
	mov r7, #2
	add r6, #0x30
_0219F31C:
	ldr r0, [r4, #8]
	bl sub_0219D964
	add r2, r0, #0
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F372
	ldr r1, _0219F374 ; =0x021AD204
	add r0, r5, #0
	add r2, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F372
	ldr r0, [r4, #0xc]
	bl sub_0219D964
	add r2, r0, #0
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F372
	ldr r1, _0219F378 ; =0x021AD194
	add r0, r5, #0
	add r2, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F372
	add r0, r4, #0
	bl ovy189_219ddd8
	add r0, r6, #0
	bl sub_0219E040
	add r4, r0, #0
	bne _0219F31C
_0219F370:
	mov r0, #0
_0219F372:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F374: .word 0x021AD204
_0219F378: .word 0x021AD194
	thumb_func_end ovy189_219f2fc

	thumb_func_start ovy189_219f37c
ovy189_219f37c: ; 0x0219F37C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D84
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	add r0, r6, #0
	bl sub_021A0D80
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_021A0D74
	add r6, r0, #0
	mov r2, #0
	mov r0, #0x93
	str r2, [sp, #0x14]
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0219F3CC
	add r0, r7, #0
	add r1, r4, #0
	add r3, sp, #0x14
	str r2, [sp]
	bl ovy189_219ed78
	cmp r0, #0
	bne _0219F3D2
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219F3CC:
	add r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x14]
_0219F3D2:
	ldr r1, [sp, #0x14]
	add r0, sp, #0x18
	bl ovy189_219dbb0
	str r0, [sp, #0x10]
	ldr r1, _0219F45C ; =0x021AD208
	add r0, r5, #0
	mov r2, #0x10
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F456
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F456
	ldr r1, _0219F460 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F456
	ldr r1, _0219F460 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F456
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	bne _0219F446
	ldr r0, [r6, #0xc]
	add r2, #0xd8
	str r0, [sp]
	add r0, r5, r2
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	lsl r2, r2, #8
	add r2, r3, r2
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy189_219edfc
	cmp r0, #0
	beq _0219F454
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0219F446:
	add r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F456
_0219F454:
	mov r0, #0
_0219F456:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219F45C: .word 0x021AD208
_0219F460: .word 0x021AD194
	thumb_func_end ovy189_219f37c

	thumb_func_start ovy189_219f464
ovy189_219f464: ; 0x0219F464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	bl ovy189_21a0d54
	add r5, r0, #0
	bl sub_021A0D84
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r6, [r0, #0xc]
	add r0, r5, #0
	bl sub_021A0D80
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_021A0D74
	mov r1, #0
	str r1, [sp, #0x1c]
	ldr r5, [r6, #0x34]
	str r0, [sp, #0xc]
	cmp r5, #0
	beq _0219F4F2
_0219F49A:
	add r1, #0x16
	str r1, [sp, #0x1c]
	ldr r0, [r5, #8]
	bl sub_0219D964
	ldr r1, [sp, #0x1c]
	add r0, #0x29
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0219F4B4
	add r1, #0x4b
_0219F4B4:
	add r1, r1, #2
	str r1, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0219F4D8
	mov r0, #1
	str r0, [sp]
	ldr r2, [r5, #8]
	add r0, r7, #0
	add r1, r6, #0
	add r3, sp, #0x1c
	bl ovy189_219ed78
	cmp r0, #0
	bne _0219F4DE
	add sp, #0x2c
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219F4D8:
	ldr r0, [r5, #0x10]
	add r1, r1, r0
	str r1, [sp, #0x1c]
_0219F4DE:
	ldr r0, [sp, #0x1c]
	add r1, r0, #2
	str r1, [sp, #0x1c]
	ldr r0, [r6, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _0219F4F2
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0219F49A
_0219F4F2:
	add r1, #0x18
	add r0, sp, #0x20
	str r1, [sp, #0x1c]
	bl ovy189_219dbb0
	add r5, r0, #0
	ldr r1, _0219F664 ; =0x021ACCC7
	add r0, r4, #0
	mov r2, #0x2c
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F554
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0x12
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F554
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F554
	ldr r1, _0219F66C ; =0x021AD208
	add r0, r4, #0
	mov r2, #0x10
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F554
	add r0, r4, #0
	add r1, sp, #0x20
	add r2, r5, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F554
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	beq _0219F556
_0219F554:
	b _0219F65E
_0219F556:
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r5, [r6, #0x34]
	cmp r5, #0
	beq _0219F63E
	mov r0, #0xc9
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x38
	str r0, [sp, #0x14]
_0219F57A:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	mov r2, #0x14
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r1, _0219F670 ; =0x021ACCA0
	add r0, r4, #0
	mov r2, #0x26
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r0, [r5, #8]
	bl sub_0219D964
	add r2, r0, #0
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r1, _0219F674 ; =0x021AD21C
	add r0, r4, #0
	mov r2, #3
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0219F5DA
	ldr r1, _0219F678 ; =0x021ACD28
	add r0, r4, #0
	mov r2, #0x4b
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
_0219F5DA:
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _0219F616
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r0, [r0, #0xc]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	lsl r2, r2, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r3, r2
	ldr r3, [r5, #8]
	add r0, r7, #0
	add r1, r6, #0
	bl ovy189_219edfc
	cmp r0, #0
	beq _0219F622
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0219F616:
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
_0219F622:
	ldr r1, _0219F668 ; =0x021AD194
	add r0, r4, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r0, [r6, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _0219F63E
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0219F57A
_0219F63E:
	add r6, #0x38
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x14
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	ldr r1, _0219F67C ; =0x021AD220
	add r0, r4, #0
	mov r2, #4
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F65E
	mov r0, #0
_0219F65E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0219F664: .word 0x021ACCC7
_0219F668: .word 0x021AD194
_0219F66C: .word 0x021AD208
_0219F670: .word 0x021ACCA0
_0219F674: .word 0x021AD21C
_0219F678: .word 0x021ACD28
_0219F67C: .word 0x021AD220
	thumb_func_end ovy189_219f464

	thumb_func_start ovy189_219f680
ovy189_219f680: ; 0x0219F680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D84
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_021A0D80
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_021A0D74
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r4, [r0, #0x34]
	cmp r4, #0
	beq _0219F70A
	mov r5, #2
	add r7, sp, #0x1c
_0219F6BE:
	ldr r0, [r4, #8]
	bl sub_0219D9EC
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0219F6EA
	str r5, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #8]
	add r3, r7, #0
	bl ovy189_219ed78
	cmp r0, #0
	bne _0219F6F4
	add sp, #0x2c
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0219F6EA:
	bl sub_0219D9EC
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x1c]
_0219F6F4:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	ldr r0, [r0]
	cmp r4, r0
	beq _0219F70A
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _0219F6BE
_0219F70A:
	add r5, sp, #0x20
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ovy189_219dbb0
	add r4, r0, #0
	ldr r1, _0219F824 ; =0x021ACCF4
	add r0, r6, #0
	mov r2, #0x31
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r1, _0219F828 ; =0x021AD208
	add r0, r6, #0
	mov r2, #0x10
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r5, _0219F82C ; =0x021AD194
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r4, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0x34]
	cmp r5, #0
	beq _0219F81C
_0219F768:
	ldr r1, [r5, #8]
	mov r4, #0
	ldrsb r0, [r1, r4]
	cmp r0, #0
	beq _0219F794
	add r7, sp, #0x20
_0219F774:
	ldrsb r1, [r1, r4]
	add r0, r7, #0
	bl sub_0219DA6C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldrsb r0, [r1, r4]
	cmp r0, #0
	bne _0219F774
_0219F794:
	ldr r1, _0219F830 ; =0x021AD228
	add r0, r6, #0
	mov r2, #1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _0219F7D4
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r0, [r0, #0xc]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, #0xc9
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	lsl r2, r2, #8
	add r2, r3, r2
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r3, [r5, #8]
	bl ovy189_219edfc
	cmp r0, #0
	beq _0219F7FE
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0219F7D4:
	mov r4, #0
	ldrsb r0, [r1, r4]
	cmp r0, #0
	beq _0219F7FE
	add r7, sp, #0x20
_0219F7DE:
	ldrsb r1, [r1, r4]
	add r0, r7, #0
	bl sub_0219DA6C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldrsb r0, [r1, r4]
	cmp r0, #0
	bne _0219F7DE
_0219F7FE:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _0219F81C
	ldr r1, _0219F834 ; =0x021AD22C
	add r0, r6, #0
	mov r2, #1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219F81E
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0219F768
_0219F81C:
	mov r0, #0
_0219F81E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0219F824: .word 0x021ACCF4
_0219F828: .word 0x021AD208
_0219F82C: .word 0x021AD194
_0219F830: .word 0x021AD228
_0219F834: .word 0x021AD22C
	thumb_func_end ovy189_219f680

	thumb_func_start ovy189_219f838
ovy189_219f838: ; 0x0219F838
	push {r4, r5, r6, lr}
	mov r6, #1
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #8
	mvn r4, r4
	add r0, r5, #4
	add r1, r6, #0
	str r4, [r5]
	bl sub_0219D97C
	add r0, r6, #4
	add r0, r5, r0
	lsl r1, r6, #1
	bl sub_0219D97C
	mov r0, #0xc5
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r1, r0, #4
	str r4, [r5, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x10
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x24
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x28
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x18
	str r2, [r5, r1]
	add r0, #0x1c
	str r2, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_219f838

	thumb_func_start ovy189_219f888
ovy189_219f888: ; 0x0219F888
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D74
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_021A0D7C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021A0D84
	ldr r1, [r7]
	str r0, [sp, #4]
	ldr r1, [r1, #0xc]
	str r1, [sp]
	ldr r6, [r1, #0x2c]
	bl sub_021A0B60
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219F8CE
	mov r0, #0x33
	mov r1, #8
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
_0219F8CE:
	mov r0, #0xce
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219F900
	ldr r0, [sp, #8]
	ldr r2, [r0, #0xc]
	cmp r2, #0
	blt _0219F900
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ovy189_219d674
	cmp r0, #0
	bge _0219F8F8
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	sub r0, #8
	str r0, [sp, #0xc]
	str r1, [r5, r0]
_0219F8F8:
	mov r1, #0
	ldr r0, [sp, #8]
	mvn r1, r1
	str r1, [r0, #0xc]
_0219F900:
	mov r1, #0x33
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0219F910
	mov r0, #1
	str r0, [r6, #0x10]
	b _0219F92E
_0219F910:
	mov r0, #0
	str r0, [r6, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r5, r1]
	bl sub_0219DDEC
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r1, [r6, #0x28]
	add r0, r5, r0
	cmp r1, r0
	bne _0219F92E
	mov r0, #0
	str r0, [r6, #0x28]
	str r0, [r6, #0x1c]
_0219F92E:
	cmp r4, #0
	beq _0219F93A
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [r4, #4]
_0219F93A:
	ldr r0, [sp, #4]
	bl sub_021A0DCC
	ldr r0, [r7]
	bl ovy189_219ddd8
	mov r0, #0
	str r0, [r7]
	ldr r0, [sp, #4]
	bl sub_021A0DD4
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ovy189_219e8d4
	cmp r4, #0
	beq _0219F966
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0219F966
	mov r0, #5
	str r0, [r4]
_0219F966:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ovy189_21a0cb0
	cmp r4, #0
	beq _0219F978
	add r0, r4, #0
	bl ovy189_21a0a80
_0219F978:
	add r0, r4, #0
	bl ovy189_21a0f00
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219f888

	thumb_func_start ovy189_219f984
ovy189_219f984: ; 0x0219F984
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D84
	add r7, r0, #0
	bl sub_021A0DCC
	add r0, r6, #0
	bl sub_021A0D78
	bl sub_0219E1F0
	add r4, r0, #0
	beq _0219F9B4
	add r0, r6, #0
	bl sub_021A0D7C
	ldr r1, [r4, #8]
	str r1, [r5]
	str r4, [r0]
	b _0219F9BA
_0219F9B4:
	mov r0, #0
	mvn r0, r0
	str r0, [r5]
_0219F9BA:
	add r0, r7, #0
	bl sub_021A0DD4
	ldr r0, [r5]
	cmp r0, #0
	bge _0219F9D4
	add r0, r6, #0
	bl sub_021A0D80
	bl ovy189_219d5c4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F9D4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219f984

	thumb_func_start ovy189_219f9d8
ovy189_219f9d8: ; 0x0219F9D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #0x28]
	cmp r0, #0
	beq _0219F9F4
	add r6, r4, #0
	add r6, #0xe4
_0219F9F4:
	add r0, r6, #0
	bl sub_0219D964
	cmp r0, #0
	beq _0219FA0A
	add r0, r6, #0
	add r1, r5, #4
	bl sub_0219D974
	cmp r0, #0
	beq _0219FA36
_0219FA0A:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy189_219d914
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r0, #0
	bne _0219FA40
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219FA2C
	mov r0, #0xc
	add r1, #0x1c
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FA2C:
	mov r0, #4
	add r1, #0x1c
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FA36:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
_0219FA40:
	mov r1, #1
	add r0, r5, #4
	lsl r1, r1, #8
	bl sub_0219D97C
	add r0, r6, #0
	mov r1, #0xff
	mov r7, #0xff
	bl sub_0219D96C
	add r2, r0, #0
	add r0, r5, #4
	add r1, r6, #0
	bl sub_0219D954
	mov r0, #0xc7
	ldr r1, [r4, #0x20]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0219FA72
	add r7, #0xe5
	ldr r1, [r4, r7]
	str r1, [r5, r0]
_0219FA72:
	mov r1, #0xc5
	lsl r1, r1, #2
	add r0, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r2, r0
	bne _0219FA94
	add r0, r1, #0
	add r0, #8
	add r1, #0xc
	ldr r2, [r5, r0]
	ldr r0, [r5, r1]
	cmp r2, r0
	bne _0219FA94
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0219FA9C
_0219FA94:
	mov r0, #0xce
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219FA9C:
	mov r1, #0xc5
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219f9d8

	thumb_func_start ovy189_219fab4
ovy189_219fab4: ; 0x0219FAB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ovy189_21a0d54
	str r0, [sp, #0xc]
	bl sub_021A0D74
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_021A0D7C
	add r6, r0, #0
	ldr r0, [r6]
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0xc]
	bl sub_021A0D84
	str r0, [sp, #8]
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219FAFA
	ldr r0, [r4, #0xc]
	bl ovy189_219d63c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219FAFA
	mov r0, #0xce
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219FAFA:
	mov r0, #0xce
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219FBBA
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _0219FB2E
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ovy189_219d674
	cmp r0, #0
	bge _0219FB2E
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	mov r1, #0xa
	sub r0, #8
	str r0, [sp, #0x10]
	str r1, [r5, r0]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FB2E:
	add r0, r7, #0
	bl sub_0219D664
	str r0, [r4, #0xc]
	cmp r0, #0
	bge _0219FB48
	mov r0, #0x33
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FB48:
	ldr r0, [sp, #8]
	bl sub_021A0DCC
	ldr r1, [r4, #0xc]
	ldr r0, [r6]
	str r1, [r0, #0x10]
	ldr r0, [sp, #8]
	bl sub_021A0DD4
	ldr r0, [r7]
	cmp r0, #0
	beq _0219FB66
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FB66:
	mov r6, #0xc5
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r1, [sp, #8]
	str r0, [sp]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r3, [r4, #0xc]
	add r0, r4, #0
	bl ovy189_219d6e4
	cmp r0, #0
	bge _0219FBCC
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0219FB98
	mov r0, #0xd
	add r6, #0x1c
	str r0, [r5, r6]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FB98:
	add r0, r4, #0
	bl sub_0219DDF4
	cmp r0, #0
	beq _0219FBAE
	mov r0, #0xe
	add r6, #0x1c
	str r0, [r5, r6]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FBAE:
	mov r0, #5
	add r6, #0x1c
	str r0, [r5, r6]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FBBA:
	ldr r0, [sp, #8]
	bl sub_021A0DCC
	ldr r1, [r4, #0xc]
	ldr r0, [r6]
	str r1, [r0, #0x10]
	ldr r0, [sp, #8]
	bl sub_021A0DD4
_0219FBCC:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_219fab4

	thumb_func_start ovy189_219fbd4
ovy189_219fbd4: ; 0x0219FBD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D74
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021A0D7C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021A0D84
	str r0, [sp]
	ldr r0, [r7]
	mov r7, #0x33
	ldr r4, [r0, #0xc]
	mov r0, #0xa
	lsl r7, r7, #4
	str r0, [r5, r7]
	add r0, r7, #0
	mov r1, #0
	sub r0, #0xc
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219FC7E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219FC7E
	add r0, r5, #0
	bl ovy189_219f054
	cmp r0, #0
	bne _0219FC80
	add r0, r5, #0
	bl ovy189_219f1a0
	cmp r0, #0
	bne _0219FC2C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FC2C:
	ldr r1, [sp]
	ldr r3, [r6, #0xc]
	add r0, r6, #0
	add r2, r4, #0
	bl ovy189_219d758
	cmp r0, #0
	beq _0219FC7E
	ldr r1, _0219FC84 ; =0xFFFFFC14
	cmp r0, r1
	bne _0219FC54
	add r0, r6, #0
	bl sub_0219DDF4
	cmp r0, #0
	beq _0219FC50
	mov r0, #0x10
	str r0, [r5, r7]
_0219FC50:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FC54:
	sub r1, r1, #1
	cmp r0, r1
	bne _0219FC6C
	add r0, r6, #0
	bl sub_0219DDF4
	cmp r0, #0
	beq _0219FC68
	mov r0, #0x11
	str r0, [r5, r7]
_0219FC68:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FC6C:
	add r0, r6, #0
	bl sub_0219DDF4
	cmp r0, #0
	beq _0219FC7A
	mov r0, #0xe
	str r0, [r5, r7]
_0219FC7A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219FC7E:
	mov r0, #0
_0219FC80:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FC84: .word 0xFFFFFC14
	thumb_func_end ovy189_219fbd4

	thumb_func_start ovy189_219fc88
ovy189_219fc88: ; 0x0219FC88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	add r0, r6, #0
	bl sub_021A0D84
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021A0D74
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021A0B60
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_021A0D80
	add r7, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_0219D964
	mov r1, #0x33
	add r6, r0, #0
	mov r2, #0xa
	lsl r1, r1, #4
	str r2, [r5, r1]
	ldr r1, [sp, #8]
	mov r0, #0
	cmp r1, #0
	beq _0219FCDA
	mov r2, #2
	str r2, [r1]
_0219FCDA:
	mov r1, #0xc9
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r5, r1]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0219FCF2
	cmp r1, #1
	beq _0219FCFA
	cmp r1, #2
	beq _0219FD00
	b _0219FD0A
_0219FCF2:
	add r0, r5, #0
	ldr r1, _0219FEA0 ; =0x021AD230
	mov r2, #4
	b _0219FD06
_0219FCFA:
	add r0, r5, #0
	ldr r1, _0219FEA4 ; =0x021AD238
	b _0219FD04
_0219FD00:
	ldr r1, _0219FEA8 ; =0x021AD240
	add r0, r5, #0
_0219FD04:
	mov r2, #5
_0219FD06:
	bl ovy189_219ef40
_0219FD0A:
	cmp r0, #0
	bne _0219FD8C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219FD2C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219FD2C
	ldr r1, [r4, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl ovy189_219ef40
	cmp r0, #0
	beq _0219FD54
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219FD2C:
	ldr r2, [r4, #0x18]
	cmp r6, r2
	ble _0219FD46
	ldr r1, [r4, #0x24]
	add r0, r5, #0
	add r1, r1, r2
	sub r2, r6, r2
	bl ovy189_219ef40
	cmp r0, #0
	beq _0219FD54
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219FD46:
	ldr r1, _0219FEAC ; =0x021AD248
	add r0, r5, #0
	mov r2, #1
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219FD8C
_0219FD54:
	ldr r1, _0219FEB0 ; =0x021AD1C0
	add r0, r5, #0
	mov r2, #0xb
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219FD8C
	ldr r0, [r4, #8]
	mov r6, #8
	cmp r0, #0
	bne _0219FD6C
	mov r6, #7
_0219FD6C:
	ldr r1, _0219FEB4 ; =0x021AD1CC
	add r0, r5, #0
	mov r2, #6
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219FD8C
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	add r1, r1, r6
	sub r2, r2, r6
	bl ovy189_219ef40
	cmp r0, #0
	beq _0219FD8E
_0219FD8C:
	b _0219FE9A
_0219FD8E:
	ldr r1, _0219FEB8 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219FE9A
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219FDB2
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219FDB2
	add r0, r5, #0
	bl ovy189_219efa4
	cmp r0, #0
	bne _0219FE9A
_0219FDB2:
	add r0, r5, #0
	bl ovy189_219effc
	cmp r0, #0
	bne _0219FE9A
	add r0, r5, #0
	bl ovy189_219f2fc
	cmp r0, #0
	bne _0219FE9A
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0219FE34
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219FDDA
	add r0, r5, #0
	bl ovy189_219f37c
	b _0219FE20
_0219FDDA:
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	bne _0219FE06
	ldr r2, [r4, #0x34]
	mov r0, #0
	add r1, r2, #0
	cmp r2, #0
	beq _0219FE0E
_0219FDEE:
	ldr r3, [r1, #0x14]
	cmp r3, #0
	beq _0219FDF8
_0219FDF4:
	mov r0, #1
	b _0219FE0E
_0219FDF8:
	ldr r3, [r2]
	cmp r1, r3
	beq _0219FE0E
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0219FDEE
	b _0219FE0E
_0219FE06:
	cmp r0, #2
	bne _0219FE0C
	b _0219FDF4
_0219FE0C:
	mov r0, #0
_0219FE0E:
	cmp r0, #0
	beq _0219FE1A
	add r0, r5, #0
	bl ovy189_219f464
	b _0219FE20
_0219FE1A:
	add r0, r5, #0
	bl ovy189_219f680
_0219FE20:
	cmp r0, #0
	beq _0219FE42
	cmp r0, #3
	bne _0219FE9A
	mov r1, #0x33
	mov r2, #3
	lsl r1, r1, #4
	add sp, #0xc
	str r2, [r5, r1]
	pop {r4, r5, r6, r7, pc}
_0219FE34:
	ldr r1, _0219FEB8 ; =0x021AD194
	add r0, r5, #0
	mov r2, #2
	bl ovy189_219ef40
	cmp r0, #0
	bne _0219FE9A
_0219FE42:
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r6, #0
	cmp r3, #0
	ble _0219FE82
	ldr r1, [sp, #4]
	str r6, [sp]
	mov r2, #1
	lsl r2, r2, #8
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	add r2, r7, r2
	bl ovy189_219d8bc
	add r4, r0, #0
	mov r0, #0xc9
	lsl r0, r0, #2
	str r6, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #1
	add r0, r7, r0
	lsl r1, r1, #0xe
	bl sub_0219D97C
	cmp r4, #0
	bge _0219FE7C
	mov r6, #1
_0219FE7C:
	cmp r4, #0
	bne _0219FE82
	mov r6, #2
_0219FE82:
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #1
	add r0, r7, r0
	lsl r1, r1, #0xe
	bl sub_0219D97C
	add r0, r6, #0
_0219FE9A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219FEA0: .word 0x021AD230
_0219FEA4: .word 0x021AD238
_0219FEA8: .word 0x021AD240
_0219FEAC: .word 0x021AD248
_0219FEB0: .word 0x021AD1C0
_0219FEB4: .word 0x021AD1CC
_0219FEB8: .word 0x021AD194
	thumb_func_end ovy189_219fc88

	thumb_func_start ovy189_219febc
ovy189_219febc: ; 0x0219FEBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r7, [r0, #0xc]
	ldr r0, [r7, #0x2c]
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_021A0D84
	add r1, r7, #0
	str r0, [sp, #0xc]
	bl sub_021A0B60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021A0D74
	str r0, [sp, #8]
	mov r0, #0
	add r1, sp, #0x30
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	cmp r4, #0
	beq _0219FF00
	mov r0, #3
	str r0, [r4]
_0219FF00:
	ldr r0, [sp, #0x10]
	mov r6, #0
	str r6, [r0]
	mov r0, #0xc1
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r0, r5, r0
	mov r1, #0xe
	bl sub_0219D97C
	ldr r0, [sp, #0x10]
	ldr r4, [r0, #0x34]
	ldr r0, [sp, #0x18]
	add r0, #0x24
	str r6, [r5, r0]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0x38
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	add r0, #0x24
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x20]
	add r0, #0xfc
	str r0, [sp, #0x20]
	mov r0, #0x81
	lsl r0, r0, #2
	sub r0, r0, #5
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x2c]
	add r0, #0x24
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	add r0, #0x24
	str r0, [sp, #0x18]
_0219FF54:
	ldr r0, [r7]
	cmp r0, #0
	beq _0219FF60
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FF60:
	ldr r0, [sp, #0x24]
	ldr r6, [r5, r0]
	ldr r0, [sp, #0x20]
	cmp r6, r0
	bge _0219FF92
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0xc]
	add r1, r7, #0
	add r3, r3, r6
	bl ovy189_219d860
	ldr r1, [sp, #0x18]
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x10]
	add r3, r1, r2
	mov r1, #0x38
	ldrsb r1, [r3, r1]
	mov r3, #3
	b _0219FFF6
_0219FF92:
	ldr r0, [sp, #0x28]
	and r6, r0
	bne _0219FFD2
	cmp r4, #0
	beq _0219FFAC
	mov r0, #0x81
	lsl r0, r0, #2
	mov r1, #4
	bl ovy189_219ddbc
	str r0, [r4]
	add r4, r0, #0
	b _0219FFBC
_0219FFAC:
	mov r0, #0x81
	lsl r0, r0, #2
	mov r1, #4
	bl ovy189_219ddbc
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [r0, #0x34]
_0219FFBC:
	cmp r4, #0
	bne _0219FFCE
	mov r0, #0x33
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219FFCE:
	mov r0, #0
	str r0, [r4]
_0219FFD2:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	add r3, r4, #4
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0xc]
	add r1, r7, #0
	add r3, r3, r6
	bl ovy189_219d860
	add r2, r4, r6
	mov r1, #4
	ldrsb r1, [r2, r1]
	ldr r2, [sp, #0x2c]
	ldr r3, [r5, r2]
	mov r2, #3
_0219FFF6:
	and r3, r2
	add r2, sp, #0x30
	strb r1, [r2, r3]
	cmp r0, #0
	bgt _021A000E
	mov r0, #0x33
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A000E:
	ldr r1, [sp, #0x1c]
	ldr r1, [r5, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r5, r0]
	add r0, sp, #0x30
	bl ovy189_219ec44
	cmp r0, #0
	beq _0219FF54
	mov r1, #0xca
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, [sp, #0x10]
	str r2, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _021A003E
	mov r0, #7
	add r1, #8
	str r0, [r5, r1]
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A003E:
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_219febc

	thumb_func_start ovy189_21a0044
ovy189_21a0044: ; 0x021A0044
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	str r0, [sp, #4]
	ldr r6, [r0, #0x2c]
	add r0, r4, #0
	bl sub_021A0D80
	mov r4, #0xc1
	lsl r4, r4, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, r4
	mov r2, #0
	mov r3, #0xe
	bl ovy189_219e41c
	cmp r0, #0
	bne _021A0084
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0084:
	ldr r1, _021A0240 ; =0x021AD1FC
	add r0, r5, r4
	mov r2, #5
	bl ovy189_219d988
	cmp r0, #0
	beq _021A009E
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A009E:
	add r0, r4, #0
	add r0, #8
	ldrsb r0, [r5, r0]
	cmp r0, #0x20
	beq _021A00B4
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A00B4:
	add r0, r4, #0
	add r0, #9
	add r0, r5, r0
	mov r1, #3
	bl ovy189_219db50
	str r0, [r6, #0x18]
	cmp r0, #0
	bge _021A00D2
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A00D2:
	mov r0, #0
	str r0, [sp]
	ldr r2, [r6]
	add r0, r6, #0
	mov r1, #0xc
	add r3, sp, #0x10
	mov r7, #0xc
	bl ovy189_219e284
	cmp r0, #0
	bge _021A00F4
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A00F4:
	ldr r1, _021A0244 ; =0x021AD24C
	add r0, r6, #0
	add r2, sp, #0xc
	bl ovy189_219ea78
	add r3, r0, #0
	add r0, r4, #0
	add r0, #0x28
	str r3, [r5, r0]
	cmp r3, #0
	bne _021A0114
	add r4, #0x2c
	mov r0, #0
	add sp, #0x14
	str r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_021A0114:
	add r0, r7, #0
	add r0, #0xf4
	lsl r0, r0, #6
	cmp r3, r0
	ble _021A012A
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A012A:
	cmp r3, #0
	ble _021A017A
	add r1, r7, #0
	ldr r2, [sp, #8]
	add r1, #0xf4
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl ovy189_219e41c
	cmp r0, #0
	bne _021A014E
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A014E:
	add r0, r7, #0
	ldr r1, [sp, #8]
	add r0, #0xf4
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0x28
	ldr r1, [r5, r1]
	bl ovy189_219db50
	add r1, r4, #0
	add r1, #0x28
	str r0, [r5, r1]
	cmp r0, #0
	bge _021A0176
	mov r0, #7
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0176:
	str r0, [r6, #0xc]
	b _021A017E
_021A017A:
	sub r7, #0xd
	str r7, [r6, #0xc]
_021A017E:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021A0188
	b _021A01D6
_021A0188:
	ldr r1, _021A0248 ; =0x021AD25C
	add r0, r6, #0
	add r2, sp, #0xc
	bl ovy189_219ea78
	add r2, r0, #0
	bne _021A01A8
	mov r1, #0x33
	mov r0, #7
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0
	add r1, #8
	add sp, #0x14
	str r0, [r5, r1]
	pop {r4, r5, r6, r7, pc}
_021A01A8:
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r2, r0
	ble _021A01B2
	b _021A01D6
_021A01B2:
	cmp r2, #0
	ble _021A01D6
	ldr r1, [sp, #0xc]
	ldr r3, _021A024C ; =0x021AD268
	mov r4, #0
	add r0, r6, #0
	add r2, r1, r2
	str r4, [sp]
	bl ovy189_219e384
	cmp r0, #0
	bne _021A01CE
	mov r1, #1
	b _021A01D8
_021A01CE:
	mov r0, #0xce
	lsl r0, r0, #2
	str r4, [r5, r0]
	b _021A01DE
_021A01D6:
	mov r1, #0
_021A01D8:
	mov r0, #0xce
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A01DE:
	ldr r1, _021A0250 ; =0x021AD274
	add r0, r6, #0
	add r2, sp, #0xc
	bl ovy189_219ea78
	ldr r1, _021A0254 ; =0x0000033C
	add r2, r0, #0
	str r2, [r5, r1]
	bne _021A01FC
	mov r0, #7
	sub r1, #0xc
	str r0, [r5, r1]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A01FC:
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r2, r0
	ble _021A020A
	mov r0, #0
	str r0, [r5, r1]
	b _021A022E
_021A020A:
	cmp r2, #0
	ble _021A0226
	ldr r1, [sp, #0xc]
	mov r0, #0x3b
	str r0, [sp]
	ldr r3, _021A0258 ; =0x021AD288
	add r0, r6, #0
	add r2, r1, r2
	bl ovy189_219e384
	mov r1, #1
	cmp r0, #0
	beq _021A0228
	b _021A0226
_021A0226:
	mov r1, #0
_021A0228:
	mov r0, #0xcf
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A022E:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #1
	str r0, [r6, #0x14]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A0240: .word 0x021AD1FC
_021A0244: .word 0x021AD24C
_021A0248: .word 0x021AD25C
_021A024C: .word 0x021AD268
_021A0250: .word 0x021AD274
_021A0254: .word 0x0000033C
_021A0258: .word 0x021AD288
	thumb_func_end ovy189_21a0044

	thumb_func_start ovy189_21a025c
ovy189_21a025c: ; 0x021A025C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r4, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D7C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x18]
	ldr r5, [r0, #0x2c]
	add r0, r6, #0
	bl sub_021A0D74
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_021A0D84
	ldr r1, [sp, #0x18]
	add r7, r0, #0
	bl sub_021A0B60
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_021A0D80
	mov r1, #1
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	cmp r0, #2
	beq _021A02B6
	ldr r0, [r5, #0x18]
	cmp r0, #0xcc
	beq _021A02B6
	add r1, #0x30
	cmp r0, r1
	beq _021A02B6
	cmp r0, #0x64
	blt _021A02BC
	cmp r0, #0xc8
	bge _021A02BC
_021A02B6:
	add sp, #0x64
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A02BC:
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_021A0D88
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021A02CE
	mov r1, #4
	str r1, [r0]
_021A02CE:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bge _021A02DA
	b _021A03DE
_021A02DA:
	ldr r0, [sp, #0x10]
	bl sub_021A0D88
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _021A03AC
	mov r0, #0x41
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	add r0, r4, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r6, r5, #0
	add r0, #0xfc
	str r0, [sp, #0x20]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x3c]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x40]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x44]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	add r6, #8
	str r0, [sp, #0x38]
_021A031E:
	ldr r0, [sp, #0x38]
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021A0340
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_219eeec
	cmp r0, #0
	bne _021A0340
	ldr r0, [sp, #0x3c]
	mov r1, #6
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x1c]
_021A0340:
	ldr r0, [sp, #0x40]
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _021A0360
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	mov r3, #0
	b _021A0376
_021A0360:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	ldr r3, [r5, #4]
	add r0, r7, #0
_021A0376:
	bl ovy189_219e4f0
	cmp r0, #0
	bge _021A0384
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0384:
	beq _021A03AC
	ldr r1, [sp, #0x44]
	ldr r1, [r4, r1]
	cmp r1, #6
	beq _021A039A
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r6]
_021A039A:
	mov r1, #0xcb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	sub r1, r1, r0
	mov r0, #0xcb
	lsl r0, r0, #2
	str r1, [r4, r0]
	cmp r1, #0
	bgt _021A031E
_021A03AC:
	mov r1, #0x33
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #6
	bne _021A03B8
	b _021A0668
_021A03B8:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A03D8
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl sub_0219E4C4
	mov r1, #6
	cmp r0, #0
	bne _021A03D0
	mov r1, #0xa
_021A03D0:
	mov r0, #0x33
	lsl r0, r0, #4
_021A03D4:
	str r1, [r4, r0]
	b _021A0668
_021A03D8:
	mov r0, #0
	str r0, [r4, r1]
	b _021A0668
_021A03DE:
	mov r0, #0xa
	str r0, [sp, #0x5c]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r0, #4
	ldr r0, [sp, #0x5c]
	str r0, [r4, r1]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A03FA
	b _021A05D8
_021A03FA:
	ldr r0, [sp, #0x5c]
	sub r0, #0xb
	str r0, [sp, #0x5c]
_021A0400:
	mov r0, #0
	add r1, sp, #0x60
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	mov ip, r0
	cmp r0, r1
	bge _021A04C2
_021A0418:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0xc]
	mov r6, ip
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	add r0, r7, #0
	add r3, r3, r6
	bl ovy189_219d860
	cmp r0, #0
	bge _021A043C
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A043C:
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #1
	ldr r2, [sp, #0xc]
	str r1, [sp, #8]
	and r0, r1
	ldrsb r1, [r2, r1]
	add r2, sp, #0x60
	strb r1, [r2, r0]
	cmp r1, #0x3b
	beq _021A0468
	cmp r1, #0xa
	bne _021A04AA
	ldr r0, [sp, #8]
	sub r2, r0, #1
	mov r0, #1
	and r2, r0
	add r0, sp, #0x60
	ldrsb r0, [r0, r2]
	cmp r0, #0xd
	bne _021A04AA
_021A0468:
	cmp r1, #0xa
	bne _021A0474
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [sp, #8]
	b _021A048A
_021A0474:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	add r0, r7, #0
	bl ovy189_219ed24
	cmp r0, #0
	bgt _021A048A
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A048A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A0496
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0496:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl ovy189_219dac0
	str r0, [sp, #0x5c]
	cmp r0, #0
	bge _021A04C2
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A04AA:
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xca
	add r0, r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	mov ip, r0
	cmp r0, r1
	blt _021A0418
_021A04C2:
	mov r0, #0xca
	lsl r0, r0, #2
	str r0, [sp, #0x48]
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _021A04E2
	ldr r0, [sp, #0x48]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x48]
	str r1, [r4, r0]
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A04E2:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	ble _021A05C2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x5c]
	bl sub_021A0D88
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	ble _021A0400
	mov r0, #0x41
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, r4, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	add r0, #0xfc
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, #8
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x50]
	add r0, #8
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x48]
	add r0, #8
	str r0, [sp, #0x48]
_021A0524:
	ldr r0, [sp, #0x48]
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021A0546
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_219eeec
	cmp r0, #0
	bne _021A0546
	ldr r0, [sp, #0x4c]
	mov r1, #6
	str r1, [r4, r0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x1c]
_021A0546:
	ldr r0, [sp, #0x50]
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _021A0562
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	mov r3, #0
	b _021A0574
_021A0562:
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	ldr r3, [r5, #4]
	add r0, r7, #0
_021A0574:
	bl ovy189_219e4f0
	cmp r0, #0
	bgt _021A0582
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0582:
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [sp, #0x2c]
	ldr r1, [r1]
	add r2, r1, r0
	ldr r1, [sp, #0x2c]
	str r2, [r1]
	ldr r1, [sp, #0x5c]
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bne _021A05BA
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	bl ovy189_219d860
	cmp r0, #0
	bgt _021A05BA
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A05BA:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bgt _021A0524
	b _021A0400
_021A05C2:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	add r0, r7, #0
	bl ovy189_219ed24
	ldr r0, [sp, #0x48]
	mov r1, #0
	add r0, #8
	str r0, [sp, #0x48]
	b _021A03D4
_021A05D8:
	mov r0, #0x41
	lsl r0, r0, #2
	str r0, [sp, #0x34]
	add r0, r4, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r6, r5, #0
	add r0, #0xfc
	str r0, [sp, #0x34]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x54]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r0, #4
	add r6, #8
	str r0, [sp, #0x58]
_021A05FC:
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_219eeec
	cmp r0, #0
	bne _021A0616
	ldr r0, [sp, #0x54]
	mov r1, #6
	str r1, [r4, r0]
	ldr r0, [sp, #0x30]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x1c]
_021A0616:
	ldr r0, [sp, #0x58]
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _021A062E
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	mov r3, #0
	b _021A063C
_021A062E:
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0xc]
	ldr r3, [r5, #4]
	add r0, r7, #0
_021A063C:
	bl ovy189_219e4d4
	cmp r0, #0
	bge _021A064A
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A064A:
	bne _021A065A
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #6
	beq _021A0668
	mov r1, #0
	b _021A03D4
_021A065A:
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r6]
	add r0, r1, r0
	str r0, [r6]
	b _021A05FC
_021A0668:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_021A0B6C
	add r1, r0, #0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A0686
	cmp r1, #0
	beq _021A0686
	add r0, r7, #0
	bl ovy189_21a0c64
_021A0686:
	mov r0, #1
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a025c

	thumb_func_start ovy189_21a068c
ovy189_21a068c: ; 0x021A068C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x144
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D74
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021A0D7C
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy189_219f838
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _021A0764
	mov r7, #0
_021A06B6:
	ldr r0, [sp, #0x334]
	cmp r0, #0
	bne _021A06DE
	add r0, r4, #0
	bl ovy189_219f984
	cmp r0, #0
	beq _021A075E
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	beq _021A06D2
	b _021A0758
_021A06D2:
	add r0, r4, #0
	bl ovy189_219f9d8
	cmp r0, #0
	bne _021A06DE
	b _021A0758
_021A06DE:
	ldr r0, [sp, #0x334]
	cmp r0, #1
	bne _021A06E6
	str r7, [sp, #0x334]
_021A06E6:
	add r0, r4, #0
	bl ovy189_219fab4
	cmp r0, #0
	bne _021A06F2
	b _021A0758
_021A06F2:
	add r0, r4, #0
	bl ovy189_219fbd4
	cmp r0, #0
	beq _021A070C
	cmp r0, #1
	beq _021A070A
	cmp r0, #2
	bne _021A070C
_021A0704:
	mov r0, #1
	str r0, [sp, #0x334]
	b _021A075E
_021A070A:
	b _021A0758
_021A070C:
	add r0, r4, #0
	bl ovy189_219fc88
	cmp r0, #3
	bhi _021A072E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0722: ; jump table
	.short _021A072E - _021A0722 - 2 ; case 0
	.short _021A072C - _021A0722 - 2 ; case 1
	.short _021A072A - _021A0722 - 2 ; case 2
	.short _021A072C - _021A0722 - 2 ; case 3
_021A072A:
	b _021A0704
_021A072C:
	b _021A0758
_021A072E:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	beq _021A073A
	b _021A0758
_021A073A:
	add r0, r4, #0
	bl ovy189_219febc
	cmp r0, #0
	bne _021A0746
	b _021A0758
_021A0746:
	add r0, r4, #0
	bl ovy189_21a0044
	cmp r0, #0
	bne _021A0752
	b _021A0758
_021A0752:
	add r0, r4, #0
	bl ovy189_21a025c
_021A0758:
	add r0, r4, #0
	bl ovy189_219f888
_021A075E:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _021A06B6
_021A0764:
	add sp, #0x1fc
	add sp, #0x144
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a068c

	thumb_func_start ovy189_21a076c
ovy189_21a076c: ; 0x021A076C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy189_219ddf8
	cmp r0, #0
	bne _021A078A
	mov r0, #1
	b _021A078C
_021A078A:
	mov r0, #0
_021A078C:
	neg r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a076c

	thumb_func_start ovy189_21a0790
ovy189_21a0790: ; 0x021A0790
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	add r1, r4, #0
	bl ovy189_219dea4
	pop {r4, pc}
	thumb_func_end ovy189_21a0790

	thumb_func_start ovy189_21a07a0
ovy189_21a07a0: ; 0x021A07A0
	push {r3, lr}
	bl ovy189_21a0d54
	mov r1, #0
	bl ovy189_219dea4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a07a0

	thumb_func_start ovy189_21a07b0
ovy189_21a07b0: ; 0x021A07B0
	push {r3, lr}
	bl ovy189_21a0d54
	bl sub_0219DEFC
	pop {r3, pc}
	thumb_func_end ovy189_21a07b0

	thumb_func_start ovy189_21a07bc
ovy189_21a07bc: ; 0x021A07BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b84
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_21a07dc
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a07bc

	thumb_func_start ovy189_21a07dc
ovy189_21a07dc: ; 0x021A07DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D74
	add r1, r0, #0
	cmp r5, #0
	bne _021A07F8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A07F8:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021A0804
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A0804:
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy189_219e064
	cmp r0, #0
	bne _021A0816
	mov r0, #1
	b _021A0818
_021A0816:
	mov r0, #0
_021A0818:
	neg r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a07dc

	thumb_func_start ovy189_21a081c
ovy189_21a081c: ; 0x021A081C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	add r7, r0, #0
	bl sub_021A0D74
	str r0, [sp]
	add r0, r7, #0
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b84
	ldr r1, [sp]
	add r2, r4, #0
	add r3, r6, #0
	bl ovy189_219e078
	cmp r0, #0
	bne _021A084E
	mov r0, #1
	b _021A0850
_021A084E:
	mov r0, #0
_021A0850:
	neg r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a081c

	thumb_func_start ovy189_21a0854
ovy189_21a0854: ; 0x021A0854
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r6, #0
	bl ovy189_21a0b84
	cmp r0, #0
	bne _021A0874
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A0874:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021A0880
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A0880:
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _021A088C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A088C:
	mov r1, #1
	str r1, [r0, #0x10]
	mov r1, #0x93
	lsl r1, r1, #2
	str r5, [r0, r1]
	add r1, r1, #4
	str r4, [r0, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0854

	thumb_func_start ovy189_21a08a0
ovy189_21a08a0: ; 0x021A08A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b98
	cmp r0, #0
	bne _021A08C0
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A08C0:
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_219eb24
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a08a0

	thumb_func_start ovy189_21a08cc
ovy189_21a08cc: ; 0x021A08CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D74
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b98
	add r1, r0, #0
	bne _021A08F4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A08F4:
	add r0, r7, #0
	add r2, r4, #0
	bl ovy189_219ebc4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a08cc

	thumb_func_start ovy189_21a0900
ovy189_21a0900: ; 0x021A0900
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r4, #0
	bl ovy189_21a0b98
	cmp r0, #0
	bne _021A091C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_021A091C:
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021A0926
	ldr r0, [r0, #0x18]
	pop {r4, pc}
_021A0926:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ovy189_21a0900

	thumb_func_start ovy189_21a092c
ovy189_21a092c: ; 0x021A092C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b84
	cmp r0, #0
	bne _021A094A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021A094A:
	add r0, #0xd0
	str r4, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a092c

	thumb_func_start ovy189_21a0954
ovy189_21a0954: ; 0x021A0954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r4, #0
	bl ovy189_21a0b84
	add r7, r0, #0
	beq _021A0978
	cmp r5, #0
	beq _021A0978
	cmp r6, #0
	bne _021A0980
_021A0978:
	mov r0, #0
	add sp, #0x48
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A0980:
	add r0, r5, #0
	mov r1, #0x21
	bl sub_0219D96C
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x21
	bl sub_0219D96C
	str r0, [sp]
	cmp r4, #0x20
	bgt _021A09D8
	cmp r0, #0x20
	bgt _021A09D8
	add r0, sp, #4
	mov r1, #0x41
	bl sub_0219D97C
	add r0, sp, #4
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0219D954
	add r0, sp, #4
	ldr r1, _021A09E8 ; =0x021AD290
	add r0, r0, r4
	mov r2, #1
	bl sub_0219D954
	add r1, r4, #1
	add r0, sp, #4
	add r0, r0, r1
	ldr r2, [sp]
	add r1, r6, #0
	bl sub_0219D954
	add r0, r7, #0
	add r0, #0x4c
	add r1, sp, #4
	bl ovy189_219dd10
	add r7, #0xa8
	str r0, [r7]
	b _021A09E0
_021A09D8:
	mov r0, #0
	add sp, #0x48
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A09E0:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A09E8: .word 0x021AD290
	thumb_func_end ovy189_21a0954

	thumb_func_start ovy189_21a09ec
ovy189_21a09ec: ; 0x021A09EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r5, #0
	bl ovy189_21a0b84
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_21a0a0c
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a09ec

	thumb_func_start ovy189_21a0a0c
ovy189_21a0a0c: ; 0x021A0A0C
	push {r3, r4}
	cmp r0, #0
	bne _021A0A1A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_021A0A1A:
	add r3, r0, #0
	mov r4, #0
	add r3, #0xc8
	str r4, [r3]
	add r3, r0, #0
	add r3, #0xdc
	str r4, [r3]
	add r3, r0, #0
	add r3, #0xc0
	add r0, #0xc4
	str r2, [r0]
	str r1, [r3]
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy189_21a0a0c

	thumb_func_start ovy189_21a0a38
ovy189_21a0a38: ; 0x021A0A38
	push {r4, lr}
	ldr r0, _021A0A58 ; =0x021AE6C4
	ldr r4, _021A0A5C ; =0x021AE6CC
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021A0A54
	add r0, r4, #4
	bl sub_0219D550
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	mov r0, #1
	str r0, [r4]
_021A0A54:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021A0A58: .word 0x021AE6C4
_021A0A5C: .word 0x021AE6CC
	thumb_func_end ovy189_21a0a38

	thumb_func_start ovy189_21a0a60
ovy189_21a0a60: ; 0x021A0A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy189_21a0a38
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _021A0A7E
	add r4, r0, #0
	add r4, #0x1c
_021A0A72:
	add r0, r4, #0
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021A0A72
_021A0A7E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_21a0a60

	thumb_func_start ovy189_21a0a80
ovy189_21a0a80: ; 0x021A0A80
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0a38
	mov r1, #0
	add r0, #0x1c
	str r1, [r4, #0xc]
	bl OS_WakeupThread
	pop {r4, pc}
	thumb_func_end ovy189_21a0a80

	thumb_func_start ovy189_21a0a94
ovy189_21a0a94: ; 0x021A0A94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r5, #0
	bl sub_021A0DCC
	cmp r6, #3
	bne _021A0AB2
	ldr r0, _021A0B14 ; =0x021AE6C4
	add r5, r4, #0
	ldr r1, [r0]
	str r1, [r4, #0x20]
	str r4, [r0]
	b _021A0B08
_021A0AB2:
	ldr r1, _021A0B14 ; =0x021AE6C4
	ldr r0, _021A0B18 ; =0x021AE6C4
	ldr r1, [r1]
	cmp r1, #0
	beq _021A0B08
_021A0ABC:
	cmp r6, #4
	bhi _021A0AF8
	add r2, r6, r6
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A0ACC: ; jump table
	.short _021A0AD6 - _021A0ACC - 2 ; case 0
	.short _021A0ADE - _021A0ACC - 2 ; case 1
	.short _021A0AE6 - _021A0ACC - 2 ; case 2
	.short _021A0AF8 - _021A0ACC - 2 ; case 3
	.short _021A0AEE - _021A0ACC - 2 ; case 4
_021A0AD6:
	cmp r1, r4
	bne _021A0AF8
_021A0ADA:
	add r5, r1, #0
	b _021A0AF8
_021A0ADE:
	ldr r2, [r1, #0x10]
	cmp r2, r4
	bne _021A0AF8
	b _021A0ADA
_021A0AE6:
	ldr r2, [r1, #0x14]
	cmp r2, r4
	bne _021A0AF8
	b _021A0ADA
_021A0AEE:
	cmp r1, r4
	bne _021A0AF8
	ldr r5, [r0]
	ldr r1, [r5, #0x20]
	str r1, [r0]
_021A0AF8:
	cmp r5, #0
	bne _021A0B08
	ldr r1, [r0]
	add r0, r1, #0
	ldr r1, [r1, #0x20]
	add r0, #0x20
	cmp r1, #0
	bne _021A0ABC
_021A0B08:
	add r0, r7, #0
	bl sub_021A0DD4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0B14: .word 0x021AE6C4
_021A0B18: .word 0x021AE6C4
	thumb_func_end ovy189_21a0a94

	thumb_func_start ovy189_21a0b1c
ovy189_21a0b1c: ; 0x021A0B1C
	push {r3, lr}
	mov r2, #3
	bl ovy189_21a0a94
	cmp r0, #0
	bne _021A0B2C
	mov r0, #1
	b _021A0B2E
_021A0B2C:
	mov r0, #0
_021A0B2E:
	neg r0, r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0b1c

	thumb_func_start ovy189_21a0b34
ovy189_21a0b34: ; 0x021A0B34
	push {r3, lr}
	mov r2, #4
	bl ovy189_21a0a94
	cmp r0, #0
	bne _021A0B44
	mov r0, #1
	b _021A0B46
_021A0B44:
	mov r0, #0
_021A0B46:
	neg r0, r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0b34

	thumb_func_start ovy189_21a0b4c
ovy189_21a0b4c: ; 0x021A0B4C
	push {r3, lr}
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0B5A
	ldr r0, [r0, #0x14]
	pop {r3, pc}
_021A0B5A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0b4c

	thumb_func_start sub_021A0B60
sub_021A0B60: ; 0x021A0B60
	ldr r3, _021A0B68 ; =ovy189_21a0a94
	mov r2, #1
	bx r3
	nop
_021A0B68: .word ovy189_21a0a94
	thumb_func_end sub_021A0B60

	thumb_func_start sub_021A0B6C
sub_021A0B6C: ; 0x021A0B6C
	ldr r3, _021A0B74 ; =ovy189_21a0a94
	mov r2, #2
	bx r3
	nop
_021A0B74: .word ovy189_21a0a94
	thumb_func_end sub_021A0B6C

	thumb_func_start sub_021A0B78
sub_021A0B78: ; 0x021A0B78
	ldr r3, _021A0B80 ; =ovy189_21a0a94
	mov r2, #0
	bx r3
	nop
_021A0B80: .word ovy189_21a0a94
	thumb_func_end sub_021A0B78

	thumb_func_start ovy189_21a0b84
ovy189_21a0b84: ; 0x021A0B84
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0B92
	ldr r4, [r0, #0x10]
_021A0B92:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0b84

	thumb_func_start ovy189_21a0b98
ovy189_21a0b98: ; 0x021A0B98
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0BA6
	ldr r4, [r0, #0x14]
_021A0BA6:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0b98

	thumb_func_start sub_021A0BAC
sub_021A0BAC: ; 0x021A0BAC
	ldr r0, _021A0BC0 ; =0x021AE6C4
	ldr r1, [r0]
	mov r0, #0
	cmp r1, #0
	beq _021A0BBE
_021A0BB6:
	ldr r1, [r1, #0x20]
	add r0, r0, #1
	cmp r1, #0
	bne _021A0BB6
_021A0BBE:
	bx lr
	.align 2, 0
_021A0BC0: .word 0x021AE6C4
	thumb_func_end sub_021A0BAC

	thumb_func_start ovy189_21a0bc4
ovy189_21a0bc4: ; 0x021A0BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	mov r2, #0
	mvn r2, r2
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	str r2, [sp]
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0C12
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A0C12
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _021A0C12
	str r6, [sp, #4]
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r7, [sp, #0x10]
	blx r3
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a0ccc
_021A0C12:
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a0bc4

	thumb_func_start ovy189_21a0c18
ovy189_21a0c18: ; 0x021A0C18
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0C5E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A0C5E
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _021A0C5E
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	blx r3
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy189_21a0ce8
_021A0C5E:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0c18

	thumb_func_start ovy189_21a0c64
ovy189_21a0c64: ; 0x021A0C64
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0CAA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A0CAA
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _021A0CAA
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	mov r1, #3
	str r0, [sp, #0xc]
	add r0, r4, #0
	blx r3
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy189_21a0ce8
_021A0CAA:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0c64

	thumb_func_start ovy189_21a0cb0
ovy189_21a0cb0: ; 0x021A0CB0
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A0CCA
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _021A0CCA
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	blx r3
_021A0CCA:
	pop {r4, pc}
	thumb_func_end ovy189_21a0cb0

	thumb_func_start ovy189_21a0ccc
ovy189_21a0ccc: ; 0x021A0CCC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021A0B78
	cmp r0, #0
	bne _021A0CE0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021A0CE0:
	str r5, [r0, #0x24]
	str r4, [r0, #0x28]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_21a0ccc

	thumb_func_start ovy189_21a0ce8
ovy189_21a0ce8: ; 0x021A0CE8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021A0B78
	add r1, r0, #0
	beq _021A0D14
	add r0, r6, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A0D0E
	str r5, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x1c]
	str r1, [r0, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A0D0E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A0D14:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0ce8

	thumb_func_start ovy189_21a0d1c
ovy189_21a0d1c: ; 0x021A0D1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A0D74
	bl ovy189_219dd94
	add r0, r4, #0
	bl sub_021A0D78
	bl sub_0219E0D8
	add r0, r4, #0
	bl sub_021A0D7C
	bl sub_0219E538
	add r0, r4, #0
	bl sub_021A0D84
	bl sub_021A0DAC
	add r0, r4, #0
	bl sub_021A0D80
	bl sub_0219EC24
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0d1c

	thumb_func_start ovy189_21a0d54
ovy189_21a0d54: ; 0x021A0D54
	push {r4, lr}
	ldr r0, _021A0D6C ; =0x021AE6C4
	ldr r4, [r0, #4]
	cmp r4, #0
	bne _021A0D68
	ldr r4, _021A0D70 ; =0x021AE700
	str r4, [r0, #4]
	add r0, r4, #0
	bl ovy189_21a0d1c
_021A0D68:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021A0D6C: .word 0x021AE6C4
_021A0D70: .word 0x021AE700
	thumb_func_end ovy189_21a0d54

	thumb_func_start sub_021A0D74
sub_021A0D74: ; 0x021A0D74
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0D74

	thumb_func_start sub_021A0D78
sub_021A0D78: ; 0x021A0D78
	add r0, #0x28
	bx lr
	thumb_func_end sub_021A0D78

	thumb_func_start sub_021A0D7C
sub_021A0D7C: ; 0x021A0D7C
	add r0, #0x30
	bx lr
	thumb_func_end sub_021A0D7C

	thumb_func_start sub_021A0D80
sub_021A0D80: ; 0x021A0D80
	add r0, #0x50
	bx lr
	thumb_func_end sub_021A0D80

	thumb_func_start sub_021A0D84
sub_021A0D84: ; 0x021A0D84
	add r0, #0x34
	bx lr
	thumb_func_end sub_021A0D84

	thumb_func_start sub_021A0D88
sub_021A0D88: ; 0x021A0D88
	cmp r0, #0
	beq _021A0D8E
	str r1, [r0, #0x2c]
_021A0D8E:
	bx lr
	thumb_func_end sub_021A0D88

	thumb_func_start ovy189_21a0d90
ovy189_21a0d90: ; 0x021A0D90
	push {r3, lr}
	ldr r0, _021A0DA8 ; =0x021AE6C4
	ldr r0, [r0]
	cmp r0, #0
	beq _021A0D9E
	bl sub_021A0BAC
_021A0D9E:
	ldr r0, _021A0DA8 ; =0x021AE6C4
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	nop
_021A0DA8: .word 0x021AE6C4
	thumb_func_end ovy189_21a0d90

	thumb_func_start sub_021A0DAC
sub_021A0DAC: ; 0x021A0DAC
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0DAC

	thumb_func_start ovy189_21a0db4
ovy189_21a0db4: ; 0x021A0DB4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _021A0DC6
	bl sub_0219D550
	mov r0, #1
	str r0, [r4, #0x18]
_021A0DC6:
	pop {r4, pc}
	thumb_func_end ovy189_21a0db4

	thumb_func_start sub_021A0DC8
sub_021A0DC8: ; 0x021A0DC8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0DC8

	thumb_func_start sub_021A0DCC
sub_021A0DCC: ; 0x021A0DCC
	ldr r3, _021A0DD0 ; =sub_0219D558
	bx r3
	.align 2, 0
_021A0DD0: .word sub_0219D558
	thumb_func_end sub_021A0DCC

	thumb_func_start sub_021A0DD4
sub_021A0DD4: ; 0x021A0DD4
	ldr r3, _021A0DD8 ; =OS_UnlockMutex
	bx r3
	.align 2, 0
_021A0DD8: .word OS_UnlockMutex
	thumb_func_end sub_021A0DD4

	thumb_func_start ovy189_21a0ddc
ovy189_21a0ddc: ; 0x021A0DDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A0DCC
	ldr r6, _021A0DF8 ; =0x00008048
	ldr r0, [r4, r6]
	add r0, r0, #1
	str r0, [r4, r6]
	add r0, r5, #0
	bl sub_021A0DD4
	ldr r0, [r4, r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0DF8: .word 0x00008048
	thumb_func_end ovy189_21a0ddc

	thumb_func_start ovy189_21a0dfc
ovy189_21a0dfc: ; 0x021A0DFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A0DCC
	ldr r6, _021A0E18 ; =0x00008048
	ldr r0, [r4, r6]
	sub r0, r0, #1
	str r0, [r4, r6]
	add r0, r5, #0
	bl sub_021A0DD4
	ldr r0, [r4, r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0E18: .word 0x00008048
	thumb_func_end ovy189_21a0dfc

	thumb_func_start ovy189_21a0e1c
ovy189_21a0e1c: ; 0x021A0E1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	add r4, r3, #0
	bl ovy189_21a0d54
	add r5, r0, #0
	bl sub_021A0D74
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A0D84
	add r7, r0, #0
	ldr r0, _021A0ED8 ; =0x0000804C
	mov r1, #0x20
	bl ovy189_219ddbc
	add r5, r0, #0
	bne _021A0E56
	add r0, r6, #0
	mov r1, #1
	bl sub_0219DDEC
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A0E56:
	ldr r1, _021A0ED8 ; =0x0000804C
	bl sub_0219D97C
	str r4, [sp]
	ldr r0, [sp, #0x34]
	mov r4, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	str r4, [sp, #0xc]
	bl ovy189_219e540
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _021A0E86
	add r0, r5, #0
	bl ovy189_219ddd8
	add sp, #0x1c
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021A0E86:
	ldr r0, [r0, #0x2c]
	add r1, r5, #0
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x30]
	str r4, [r5]
	str r0, [r5, #0x1c]
	str r4, [r5, #0x24]
	str r4, [r5, #0x28]
	sub r0, r4, #1
	str r0, [r5, #0x18]
	add r0, r7, #0
	bl ovy189_21a0b1c
	mov r0, #0xf
	str r0, [r5, #4]
	str r4, [r5, #8]
	mov r6, #1
	add r0, r5, #0
	add r1, r4, #0
	str r6, [r5, #0xc]
	bl sub_021A0D88
	ldr r0, _021A0ED8 ; =0x0000804C
	str r4, [r5, #0x30]
	sub r0, #0xc
	str r4, [r5, r0]
	ldr r0, _021A0ED8 ; =0x0000804C
	lsl r1, r6, #0xf
	sub r0, #8
	str r4, [r5, r0]
	add r0, r5, #0
	add r0, #0x40
	bl sub_0219D97C
	ldr r0, _021A0ED8 ; =0x0000804C
	sub r0, r0, #4
	str r6, [r5, r0]
	add r0, r5, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A0ED8: .word 0x0000804C
	thumb_func_end ovy189_21a0e1c

	thumb_func_start ovy189_21a0edc
ovy189_21a0edc: ; 0x021A0EDC
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r4, #0
	bl sub_021A0B78
	cmp r0, #0
	bne _021A0EF8
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_021A0EF8:
	bl ovy189_21a0f00
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0edc

	thumb_func_start ovy189_21a0f00
ovy189_21a0f00: ; 0x021A0F00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	add r6, r0, #0
	bl sub_021A0D84
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021A0D80
	cmp r5, #0
	bne _021A0F20
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A0F20:
	ldr r0, _021A0F88 ; =0x00008048
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021A0F3A
	ldr r1, [r5, #0x18]
	cmp r1, #0
	blt _021A0F3A
	add r0, r6, #0
	bl ovy189_219e96c
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x18]
_021A0F3A:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_21a0dfc
	cmp r0, #0
	ble _021A0F4A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A0F4A:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021A0F5C
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _021A0F5C
	add r0, r6, #0
	bl ovy189_219e884
_021A0F5C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021A0F76
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021A0F6E
	add r0, r5, #0
	bl ovy189_21a0f8c
_021A0F6E:
	ldr r1, [r5, #0x14]
	add r0, r4, #0
	bl ovy189_219ea14
_021A0F76:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_21a0b34
	add r0, r5, #0
	bl ovy189_219ddd8
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0F88: .word 0x00008048
	thumb_func_end ovy189_21a0f00

	thumb_func_start ovy189_21a0f8c
ovy189_21a0f8c: ; 0x021A0F8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D80
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021A0D84
	add r1, r5, #0
	bl sub_021A0B78
	add r6, r0, #0
	bne _021A0FB2
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A0FB2:
	add r0, r5, #0
	bl ovy189_21a1060
	add r4, r0, #0
	add r0, r7, #0
	mov r7, #1
	mov r1, #1
	bl ovy189_219d5dc
	sub r0, r7, #2
	cmp r4, r0
	beq _021A0FDE
	cmp r4, #0
	beq _021A0FDE
	add r0, r5, #0
	bl ovy189_21a10f4
	cmp r0, #0xf
	bne _021A0FDE
	add r0, r6, #0
	bl ovy189_21a0a60
_021A0FDE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a0f8c

	thumb_func_start ovy189_21a0fe4
ovy189_21a0fe4: ; 0x021A0FE4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	add r5, r0, #0
	bl sub_021A0D84
	add r1, r4, #0
	add r6, r0, #0
	bl sub_021A0B78
	add r4, r0, #0
	bne _021A1004
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A1004:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _021A1010
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A1010:
	add r0, r5, #0
	bl ovy189_219e908
	str r0, [r4, #0x18]
	cmp r0, #0
	blt _021A1028
	mov r0, #1
	str r0, [r4]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy189_21a0ddc
_021A1028:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a0fe4

	thumb_func_start ovy189_21a102c
ovy189_21a102c: ; 0x021A102C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	add r4, r0, #0
	bl sub_021A0D84
	add r1, r5, #0
	bl sub_021A0B78
	cmp r0, #0
	bne _021A104A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021A104A:
	ldr r1, [r0, #0x18]
	cmp r1, #0
	blt _021A105A
	add r0, r4, #0
	bl ovy189_219e96c
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A105A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_21a102c

	thumb_func_start ovy189_21a1060
ovy189_21a1060: ; 0x021A1060
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r4, #0
	bl sub_021A0B78
	cmp r0, #0
	bne _021A107C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_021A107C:
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end ovy189_21a1060

	thumb_func_start ovy189_21a1080
ovy189_21a1080: ; 0x021A1080
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r6, #0
	add r7, r0, #0
	bl sub_021A0B78
	add r1, r0, #0
	beq _021A10B8
	add r0, r7, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A10B2
	ldr r1, [r0, #0x28]
	str r1, [r5]
	ldr r1, [r0, #0x1c]
	str r1, [r4]
	ldr r0, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021A10B2:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A10B8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1080

	thumb_func_start ovy189_21a10c0
ovy189_21a10c0: ; 0x021A10C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r5, #0
	add r4, r0, #0
	bl sub_021A0B78
	add r1, r0, #0
	beq _021A10EC
	add r0, r4, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A10E8
	ldr r1, _021A10F0 ; =0x00000438
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021A10E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A10EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A10F0: .word 0x00000438
	thumb_func_end ovy189_21a10c0

	thumb_func_start ovy189_21a10f4
ovy189_21a10f4: ; 0x021A10F4
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r4, #0
	bl sub_021A0B78
	cmp r0, #0
	beq _021A110E
	ldr r0, [r0, #4]
	pop {r4, pc}
_021A110E:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ovy189_21a10f4

	thumb_func_start ovy189_21a1114
ovy189_21a1114: ; 0x021A1114
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy189_21a0d54
	bl sub_021A0D84
	add r1, r6, #0
	add r7, r0, #0
	bl sub_021A0B78
	add r1, r0, #0
	beq _021A115A
	add r0, r7, #0
	bl ovy189_21a0b4c
	cmp r0, #0
	beq _021A1154
	ldr r1, [r0, #8]
	str r1, [r5]
	mov r1, #0
	ldr r2, [r0, #0xc]
	mvn r1, r1
	cmp r2, r1
	bne _021A114C
	mov r0, #0
	b _021A114E
_021A114C:
	ldr r0, [r0, #0xc]
_021A114E:
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1154:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A115A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a1114

	thumb_func_start ovy189_21a1160
ovy189_21a1160: ; 0x021A1160
	push {r3, lr}
	ldr r1, _021A1174 ; =0x021AD298
	bl sub_021A3064
	cmp r0, #1
	bne _021A1170
	mov r0, #1
	pop {r3, pc}
_021A1170:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021A1174: .word 0x021AD298
	thumb_func_end ovy189_21a1160

	thumb_func_start ovy189_21a1178
ovy189_21a1178: ; 0x021A1178
	push {r3, lr}
	bl sub_021A306C
	cmp r0, #1
	bne _021A1186
	mov r0, #1
	pop {r3, pc}
_021A1186:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1178

	thumb_func_start ovy189_21a118c
ovy189_21a118c: ; 0x021A118C
	push {r3, lr}
	bl ovy189_21a2e24
	ldr r0, _021A11A0 ; =0x021B2860
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	mov r0, #1
	pop {r3, pc}
	nop
_021A11A0: .word 0x021B2860
	thumb_func_end ovy189_21a118c

	thumb_func_start ovy189_21a11a4
ovy189_21a11a4: ; 0x021A11A4
	push {r4, lr}
	ldr r4, _021A11C8 ; =0x021B2860
	ldr r0, [r4]
	cmp r0, #0
	bgt _021A11B2
	mov r0, #1
	pop {r4, pc}
_021A11B2:
	bl ovy189_21a2e5c
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	bne _021A11C2
	bl ovy189_21a1510
_021A11C2:
	mov r0, #1
	pop {r4, pc}
	nop
_021A11C8: .word 0x021B2860
	thumb_func_end ovy189_21a11a4

	thumb_func_start ovy189_21a11cc
ovy189_21a11cc: ; 0x021A11CC
	push {r3, lr}
	blx sub_020584B0
	cmp r0, #0
	beq _021A11DA
	mov r0, #0
	pop {r3, pc}
_021A11DA:
	bl sub_021A2FCC
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a11cc

	thumb_func_start ovy189_21a11e4
ovy189_21a11e4: ; 0x021A11E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r1, #0
	ldr r6, [r4, #4]
	ldr r7, [r4, #0x10]
	cmp r6, #0
	beq _021A1212
	cmp r5, #0
	bne _021A11FC
	add r0, r2, #0
	add r1, r3, #0
	b _021A120C
_021A11FC:
	cmp r5, #0x12
	bne _021A1202
	b _021A1208
_021A1202:
	add r0, r5, #0
	bl ovy189_21a13a0
_021A1208:
	mov r0, #0
	mov r1, #0
_021A120C:
	ldr r3, [r4]
	add r2, r5, #0
	blx r6
_021A1212:
	cmp r5, #0
	bne _021A121A
	cmp r7, #1
	bne _021A1230
_021A121A:
	cmp r4, #0
	beq _021A122E
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A122E
	mov r0, #6
	mov r2, #0
	blx sub_02058728
	b _021A1230
_021A122E:
	mov r7, #1
_021A1230:
	add r0, r4, #0
	bl ovy189_21a14ac
	mov r0, #1
	cmp r7, #0
	bne _021A123E
	mov r0, #0
_021A123E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a11e4

	thumb_func_start ovy189_21a1240
ovy189_21a1240: ; 0x021A1240
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x20]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _021A125E
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	blx r4
_021A125E:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1240

	thumb_func_start ovy189_21a1264
ovy189_21a1264: ; 0x021A1264
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl ovy189_21a127c
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy189_21a1264

	thumb_func_start ovy189_21a127c
ovy189_21a127c: ; 0x021A127C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	mov r0, #0
	str r1, [sp, #0x1c]
	add r4, r2, #0
	str r3, [sp, #0x20]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	str r0, [sp, #0x24]
	blx sub_020584B0
	cmp r0, #0
	beq _021A12A0
	mov r0, #0
	add sp, #0x3c
	sub r0, r0, #1
	pop {r4, r5, r6, r7, pc}
_021A12A0:
	ldr r0, [sp, #0x50]
	str r6, [sp, #0x28]
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	str r5, [sp, #0x2c]
	str r4, [sp, #0x38]
	bl ovy189_21a1468
	add r4, r0, #0
	bne _021A12CE
	mov r0, #0
	sub r4, r0, #5
	add r0, r4, #0
	bl ovy189_21a13a0
	mov r0, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	blx r5
	add sp, #0x3c
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021A12CE:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _021A1304
	ldr r1, [sp, #0x1c]
	mov r0, #6
	mov r7, #6
	blx sub_020586E4
	str r0, [sp, #0x24]
	cmp r0, #0
	bne _021A1302
	sub r7, #0xb
	add r0, r7, #0
	bl ovy189_21a13a0
	mov r0, #0
	mov r1, #0
	add r2, r7, #0
	add r3, r6, #0
	blx r5
	add r0, r4, #0
	bl ovy189_21a14ac
	add sp, #0x3c
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A1302:
	str r0, [r4, #0x14]
_021A1304:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _021A130E
	mov r0, #0
	b _021A1310
_021A130E:
	ldr r0, _021A1370 ; =ovy189_21a1240
_021A1310:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _021A131A
	mov r1, #0
	b _021A131C
_021A131A:
	ldr r1, [r1]
_021A131C:
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021A1374 ; =ovy189_21a11e4
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	mov r1, #0
	str r4, [sp, #0x14]
	bl ovy189_21a2e98
	add r7, r0, #0
	bpl _021A135E
	bl ovy189_21a13a0
	mov r0, #0
	mov r1, #0
	add r2, r7, #0
	add r3, r6, #0
	blx r5
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A1358
	mov r0, #6
	mov r2, #0
	blx sub_02058728
_021A1358:
	add r0, r4, #0
	bl ovy189_21a14ac
_021A135E:
	add r0, r7, #0
	mov r1, #1
	str r7, [r4, #0x18]
	bl ovy189_21a3028
	add r0, r7, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021A1370: .word ovy189_21a1240
_021A1374: .word ovy189_21a11e4
	thumb_func_end ovy189_21a127c

	thumb_func_start ovy189_21a1378
ovy189_21a1378: ; 0x021A1378
	push {r4, lr}
	add r4, r0, #0
	bl ovy189_21a2ff4
	add r0, r4, #0
	bl sub_021A14F4
	add r4, r0, #0
	beq _021A139E
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A1398
	mov r0, #6
	mov r2, #0
	blx sub_02058728
_021A1398:
	add r0, r4, #0
	bl ovy189_21a14ac
_021A139E:
	pop {r4, pc}
	thumb_func_end ovy189_21a1378

	thumb_func_start ovy189_21a13a0
ovy189_21a13a0: ; 0x021A13A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, _021A1448 ; =0xFFFE8130
	ldr r0, _021A144C ; =0x00000007
	bne _021A13AE
	mov r0, #0
	pop {r4, pc}
_021A13AE:
	add r2, r4, #7
	cmp r2, #0x1b
	bhi _021A1440
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A13C0: ; jump table
	.short _021A13F8 - _021A13C0 - 2 ; case 0
	.short _021A13FC - _021A13C0 - 2 ; case 1
	.short _021A1400 - _021A13C0 - 2 ; case 2
	.short _021A1402 - _021A13C0 - 2 ; case 3
	.short _021A1402 - _021A13C0 - 2 ; case 4
	.short _021A1402 - _021A13C0 - 2 ; case 5
	.short _021A1406 - _021A13C0 - 2 ; case 6
	.short _021A1440 - _021A13C0 - 2 ; case 7
	.short _021A140A - _021A13C0 - 2 ; case 8
	.short _021A1410 - _021A13C0 - 2 ; case 9
	.short _021A1416 - _021A13C0 - 2 ; case 10
	.short _021A141A - _021A13C0 - 2 ; case 11
	.short _021A141E - _021A13C0 - 2 ; case 12
	.short _021A1422 - _021A13C0 - 2 ; case 13
	.short _021A1426 - _021A13C0 - 2 ; case 14
	.short _021A142A - _021A13C0 - 2 ; case 15
	.short _021A142A - _021A13C0 - 2 ; case 16
	.short _021A142A - _021A13C0 - 2 ; case 17
	.short _021A1422 - _021A13C0 - 2 ; case 18
	.short _021A1422 - _021A13C0 - 2 ; case 19
	.short _021A142E - _021A13C0 - 2 ; case 20
	.short _021A142E - _021A13C0 - 2 ; case 21
	.short _021A1434 - _021A13C0 - 2 ; case 22
	.short _021A1438 - _021A13C0 - 2 ; case 23
	.short _021A143C - _021A13C0 - 2 ; case 24
	.short _021A1440 - _021A13C0 - 2 ; case 25
	.short _021A1440 - _021A13C0 - 2 ; case 26
	.short _021A140A - _021A13C0 - 2 ; case 27
_021A13F8:
	mov r2, #0x32
	b _021A1430
_021A13FC:
	ldr r2, _021A1450 ; =0x0000032A
	b _021A143E
_021A1400:
	b _021A1410
_021A1402:
	mov r2, #0xcd
	b _021A143A
_021A1406:
	ldr r2, _021A1454 ; =0x0000033E
	b _021A143E
_021A140A:
	mov r0, #9
	sub r1, r1, #1
	b _021A1440
_021A1410:
	mov r2, #0xd2
_021A1412:
	lsl r2, r2, #2
	b _021A143E
_021A1416:
	ldr r2, _021A1458 ; =0x00000352
	b _021A143E
_021A141A:
	sub r1, #0x1e
	b _021A1440
_021A141E:
	sub r1, #0x32
	b _021A1440
_021A1422:
	sub r1, #0x14
	b _021A1440
_021A1426:
	mov r2, #0xd7
	b _021A143A
_021A142A:
	ldr r2, _021A145C ; =0x00000366
	b _021A143E
_021A142E:
	mov r2, #0x37
_021A1430:
	lsl r2, r2, #4
	b _021A143E
_021A1434:
	ldr r2, _021A1460 ; =0x0000037A
	b _021A143E
_021A1438:
	mov r2, #0xe1
_021A143A:
	b _021A1412
_021A143C:
	ldr r2, _021A1464 ; =0x0000038E
_021A143E:
	sub r1, r1, r2
_021A1440:
	blx sub_020584CC
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021A1448: .word 0xFFFE8130
_021A144C: .word 0x00000007
_021A1450: .word 0x0000032A
_021A1454: .word 0x0000033E
_021A1458: .word 0x00000352
_021A145C: .word 0x00000366
_021A1460: .word 0x0000037A
_021A1464: .word 0x0000038E
	thumb_func_end ovy189_21a13a0

	thumb_func_start ovy189_21a1468
ovy189_21a1468: ; 0x021A1468
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	mov r1, #0x20
	blx sub_020586E4
	add r2, r0, #0
	bne _021A147C
	mov r0, #0
	pop {r4, pc}
_021A147C:
	ldmia r4!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #0
	str r0, [r2, #0x1c]
	str r0, [r2, #0x14]
	ldr r0, _021A14A8 ; =0x021B2860
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021A149E
	str r2, [r0, #4]
	add r0, r2, #0
	pop {r4, pc}
_021A149E:
	str r1, [r2, #0x1c]
	str r2, [r0, #4]
	add r0, r2, #0
	pop {r4, pc}
	nop
_021A14A8: .word 0x021B2860
	thumb_func_end ovy189_21a1468

	thumb_func_start ovy189_21a14ac
ovy189_21a14ac: ; 0x021A14AC
	push {r3, r4, r5, lr}
	ldr r4, _021A14F0 ; =0x021B2860
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021A14EE
	cmp r1, r0
	bne _021A14C8
	ldr r5, [r1, #0x1c]
	mov r0, #6
	mov r2, #0
	blx sub_02058728
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
_021A14C8:
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	beq _021A14EE
_021A14CE:
	cmp r2, r0
	beq _021A14D6
	add r1, r2, #0
	b _021A14E8
_021A14D6:
	ldr r2, [r1, #0x1c]
	ldr r0, [r2, #0x1c]
	str r0, [r1, #0x1c]
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	blx sub_02058728
	pop {r3, r4, r5, pc}
_021A14E8:
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	bne _021A14CE
_021A14EE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A14F0: .word 0x021B2860
	thumb_func_end ovy189_21a14ac

	thumb_func_start sub_021A14F4
sub_021A14F4: ; 0x021A14F4
	ldr r1, _021A150C ; =0x021B2860
	ldr r2, [r1, #4]
	b _021A14FC
_021A14FA:
	ldr r2, [r2, #0x1c]
_021A14FC:
	cmp r2, #0
	beq _021A1506
	ldr r1, [r2, #0x18]
	cmp r1, r0
	bne _021A14FA
_021A1506:
	add r0, r2, #0
	bx lr
	nop
_021A150C: .word 0x021B2860
	thumb_func_end sub_021A14F4

	thumb_func_start ovy189_21a1510
ovy189_21a1510: ; 0x021A1510
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _021A1548 ; =0x021B2860
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _021A153E
	mov r6, #6
	mov r7, #0
_021A151E:
	add r5, r4, #0
	ldr r1, [r5, #0x14]
	ldr r4, [r4, #0x1c]
	cmp r1, #0
	beq _021A1530
	add r0, r6, #0
	add r2, r7, #0
	blx sub_02058728
_021A1530:
	mov r0, #6
	add r1, r5, #0
	mov r2, #0
	blx sub_02058728
	cmp r4, #0
	bne _021A151E
_021A153E:
	ldr r0, _021A1548 ; =0x021B2860
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1548: .word 0x021B2860
	thumb_func_end ovy189_21a1510

	thumb_func_start ovy189_21a154c
ovy189_21a154c: ; 0x021A154C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _021A1556
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1556:
	cmp r1, #0
	bgt _021A155E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A155E:
	ldr r0, [r4, #8]
	add r5, r0, r1
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_0216DDEC
	cmp r0, #0
	bne _021A1572
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1572:
	str r0, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a154c

	thumb_func_start ovy189_21a157c
ovy189_21a157c: ; 0x021A157C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r0, #0
	bne _021A1588
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1588:
	cmp r5, #0
	bne _021A1590
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1590:
	cmp r2, #0
	bgt _021A1598
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1598:
	cmp r3, #0
	bgt _021A15A0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A15A0:
	mov r4, #0
	str r0, [r5]
	add r0, r5, #0
	add r1, r2, #0
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	str r3, [r5, #0x14]
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	bl ovy189_21a154c
	cmp r0, #0
	bne _021A15C4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A15C4:
	ldr r0, [r5, #4]
	strb r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_21a157c

	thumb_func_start sub_021A15CC
sub_021A15CC: ; 0x021A15CC
	cmp r0, #0
	bne _021A15D4
	mov r0, #0
	bx lr
_021A15D4:
	cmp r1, #0
	bne _021A15DC
	mov r0, #0
	bx lr
_021A15DC:
	cmp r2, #0
	bne _021A15E4
	mov r0, #0
	bx lr
_021A15E4:
	cmp r3, #0
	bgt _021A15EC
	mov r0, #0
	bx lr
_021A15EC:
	str r0, [r1]
	mov r0, #1
	str r3, [r1, #8]
	mov r3, #0
	str r2, [r1, #4]
	str r3, [r1, #0xc]
	str r3, [r1, #0x10]
	str r3, [r1, #0x14]
	str r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	str r3, [r1, #0x20]
	strb r3, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A15CC

	thumb_func_start ovy189_21a1608
ovy189_21a1608: ; 0x021A1608
	push {r4, lr}
	add r4, r0, #0
	beq _021A1628
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A1628
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _021A161E
	bl ovy11_216ddfc
_021A161E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx sub_020839D0
_021A1628:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1608

	thumb_func_start ovy189_21a162c
ovy189_21a162c: ; 0x021A162C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021A163C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A163C:
	cmp r7, #0
	bne _021A1644
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1644:
	cmp r6, #0
	bge _021A164C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A164C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021A1656
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1656:
	cmp r6, #0
	bne _021A1662
	add r0, r7, #0
	blx sub_02085D9C
	add r6, r0, #0
_021A1662:
	ldr r0, [r5, #0xc]
	add r4, r0, r6
	ldr r0, [r5, #8]
	cmp r4, r0
	blt _021A16AA
_021A166C:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021A1686
	mov r0, #0x49
	ldr r1, [r5]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r5]
	mov r1, #2
	str r1, [r0, #0x40]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1686:
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	bl ovy189_21a154c
	cmp r0, #0
	bne _021A16A4
	mov r0, #0x49
	ldr r1, [r5]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r5]
	str r2, [r0, #0x40]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A16A4:
	ldr r0, [r5, #8]
	cmp r4, r0
	bge _021A166C
_021A16AA:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	add r2, r6, #0
	add r0, r1, r0
	add r1, r7, #0
	blx sub_02083964
	ldr r0, [r5, #4]
	str r4, [r5, #0xc]
	mov r1, #0
	strb r1, [r0, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a162c

	thumb_func_start ovy189_21a16c4
ovy189_21a16c4: ; 0x021A16C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r7, #0
	add r5, r0, #0
	add r4, r2, #0
	str r1, [sp, #8]
	str r7, [sp, #0x14]
	cmp r5, #0
	bne _021A16DC
	add sp, #0x18
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A16DC:
	add r0, r1, #0
	bne _021A16E6
	add sp, #0x18
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A16E6:
	cmp r4, #0
	bge _021A16F0
	add sp, #0x18
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A16F0:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021A16FC
	add sp, #0x18
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A16FC:
	mov r0, #0x66
	ldr r2, [r5]
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021A1710
	add r0, #0xc
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021A171E
_021A1710:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy189_21a162c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A171E:
	cmp r4, #0
	bne _021A172A
	ldr r0, [sp, #8]
	blx sub_02085D9C
	add r4, r0, #0
_021A172A:
	cmp r4, #0
	bne _021A1734
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1734:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0x65
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x2c
	str r0, [sp, #0x10]
_021A1746:
	ldr r0, _021A17C4 ; =0x00003F01
	cmp r4, r0
	bge _021A1750
	str r4, [sp, #0xc]
	b _021A1752
_021A1750:
	str r0, [sp, #0xc]
_021A1752:
	ldr r2, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r5]
	add r1, r2, r1
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	ldr r6, [sp, #0x10]
	mov r1, #0x65
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	ldr r6, [r0, r6]
	add r1, r0, r1
	add r2, r2, r7
	add r3, r4, #0
	blx r6
	cmp r0, #2
	bne _021A1792
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	bl ovy189_21a154c
	cmp r0, #0
	bne _021A1788
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1788:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	b _021A17B8
_021A1792:
	cmp r0, #1
	bne _021A17A4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #8]
	add r7, r7, r0
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	b _021A17B8
_021A17A4:
	ldr r3, _021A17C8 ; =0x021AD2A0
	str r0, [sp]
	mov r0, #8
	mov r1, #4
	mov r2, #2
	bl ovy11_216cca8
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A17B8:
	cmp r7, r4
	blt _021A1746
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A17C4: .word 0x00003F01
_021A17C8: .word 0x021AD2A0
	thumb_func_end ovy189_21a16c4

	thumb_func_start ovy189_21a17cc
ovy189_21a17cc: ; 0x021A17CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #0
	add r5, r0, #0
	mov r4, #0
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A17E2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A17E2:
	ldr r1, _021A181C ; =0x021AD2E0
	add r0, r5, #0
	mov r2, #2
	mov r7, #2
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A17F6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A17F6:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A1808
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1808:
	ldr r1, _021A1820 ; =0x021AD2E4
	add r0, r5, #0
	add r2, r7, #0
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A1818
	mov r4, #1
_021A1818:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A181C: .word 0x021AD2E0
_021A1820: .word 0x021AD2E4
	thumb_func_end ovy189_21a17cc

	thumb_func_start ovy189_21a1824
ovy189_21a1824: ; 0x021A1824
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021A1832
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1832:
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _021A183C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A183C:
	ldr r1, [r5, #0xc]
	add r2, r1, #1
	ldr r1, [r5, #8]
	cmp r2, r1
	blt _021A187C
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021A1860
	mov r0, #0x49
	ldr r1, [r5]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r5]
	mov r1, #2
	str r1, [r0, #0x40]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1860:
	ldr r1, [r5, #0x14]
	bl ovy189_21a154c
	cmp r0, #0
	bne _021A187C
	mov r0, #0x49
	ldr r1, [r5]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r5]
	str r2, [r0, #0x40]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A187C:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	strb r4, [r1, r0]
	ldr r0, [r5, #0xc]
	mov r1, #0
	add r2, r0, #1
	ldr r0, [r5, #4]
	str r2, [r5, #0xc]
	strb r1, [r0, r2]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1824

	thumb_func_start ovy189_21a1894
ovy189_21a1894: ; 0x021A1894
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r2, r1, #0
	add r4, sp, #0
	add r5, r0, #0
	ldr r1, _021A18B4 ; =0x021AD2E8
	add r0, r4, #0
	bl OS_SPrintf
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy189_21a162c
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A18B4: .word 0x021AD2E8
	thumb_func_end ovy189_21a1894

	thumb_func_start sub_021A18B8
sub_021A18B8: ; 0x021A18B8
	ldr r1, [r0, #0x20]
	mov r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	cmp r1, #0
	bne _021A18C8
	ldr r0, [r0, #4]
	strb r2, [r0]
_021A18C8:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A18B8

	thumb_func_start ovy189_21a18cc
ovy189_21a18cc: ; 0x021A18CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	mov r6, #0x6a
	add r4, r5, #0
	mvn r0, r0
	lsl r6, r6, #2
	add r4, #0x68
	sub r7, r0, #1
	sub r6, #0x10
_021A18E2:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A18F2
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1944
_021A18F2:
	ldr r0, [r5, #0x50]
	mov r1, #0
	add r2, sp, #4
	add r3, sp, #0
	bl sub_0216DFB4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1910
	cmp r0, #1
	bne _021A1934
	ldr r1, [sp]
	cmp r1, #0
	beq _021A1934
_021A1910:
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r5, r1]
	mov r1, #5
	str r1, [r5, #0x40]
	sub r1, r1, #6
	cmp r0, r1
	bne _021A192A
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	b _021A192C
_021A192A:
	mov r0, #0
_021A192C:
	add sp, #8
	str r0, [r5, #0x54]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1934:
	cmp r0, #1
	blt _021A193E
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A1944
_021A193E:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1944:
	ldr r3, [r5, #0x68]
	ldr r1, [r5, #0x5c]
	ldr r2, [r5, #0x64]
	add r0, r5, #0
	add r1, r1, r3
	sub r2, r2, r3
	bl ovy189_21a1c90
	cmp r0, r7
	beq _021A1966
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A196C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1966:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A196C:
	ldr r1, [r4]
	add r1, r1, r0
	ldr r0, [r5, #0x64]
	str r1, [r4]
	cmp r1, r0
	blt _021A18E2
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a18cc

	thumb_func_start ovy189_21a1980
ovy189_21a1980: ; 0x021A1980
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _021A199A
	ldr r0, [r5, #0x54]
	ldr r3, _021A19D4 ; =0x021AD2EC
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #2
	bl ovy11_216cca8
_021A199A:
	ldr r7, [r5, #0x48]
	cmp r7, #0
	beq _021A19D0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021A19AE
	add r0, r5, #0
	add r0, #0xec
	ldr r4, [r0]
	b _021A19B0
_021A19AE:
	mov r4, #0
_021A19B0:
	ldr r0, [r5, #0x4c]
	mov r6, #0x4a
	str r0, [sp]
	lsl r6, r6, #2
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, r6]
	add r2, r4, #0
	blx r7
	cmp r4, #0
	beq _021A19D0
	cmp r0, #0
	bne _021A19D0
	mov r0, #1
	sub r6, #0x24
	str r0, [r5, r6]
_021A19D0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A19D4: .word 0x021AD2EC
	thumb_func_end ovy189_21a1980

	thumb_func_start ovy189_21a19d8
ovy189_21a19d8: ; 0x021A19D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r4, [r6, #0x44]
	add r5, r1, #0
	add r3, r2, #0
	cmp r4, #0
	beq _021A1A02
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [sp]
	ldr r0, [r6, r0]
	add r2, r5, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x4c]
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	blx r4
_021A1A02:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a19d8

	thumb_func_start ovy189_21a1a08
ovy189_21a1a08: ; 0x021A1A08
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r4, #0x5e
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A1A3E
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02171588
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	add r3, r4, #0
	str r0, [sp, #4]
	sub r2, r4, #4
	sub r1, #8
	sub r3, #0xc
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	blx r4
_021A1A3E:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1a08

	thumb_func_start sub_021A1A44
sub_021A1A44: ; 0x021A1A44
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1A44

	thumb_func_start sub_021A1A48
sub_021A1A48: ; 0x021A1A48
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1A48

	thumb_func_start sub_021A1A4C
sub_021A1A4C: ; 0x021A1A4C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1A4C

	thumb_func_start sub_021A1A50
sub_021A1A50: ; 0x021A1A50
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1A50

	thumb_func_start ovy189_21a1a54
ovy189_21a1a54: ; 0x021A1A54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0xa0
	str r0, [sp, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	add r6, r5, #0
	add r7, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x30
	add r6, #0xd4
	add r7, #0xac
	str r0, [sp, #0xc]
_021A1A7A:
	add r0, r5, #0
	add r0, #0xd4
	ldr r3, [r0]
	add r0, r5, #0
	add r0, #0xc8
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r4, r5, #0
	sub r0, r0, r3
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xac
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	add r4, #0xa8
	ldr r0, [r0]
	ldr r4, [r4]
	add r0, r0, r1
	sub r1, r4, r1
	str r1, [sp, #0x10]
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	ldr r4, [sp, #0xc]
	mov r1, #0x65
	lsl r1, r1, #2
	add r2, r2, r3
	ldr r4, [r5, r4]
	add r0, r5, #0
	add r1, r5, r1
	add r3, sp, #0x14
	blx r4
	add r4, r0, #0
	cmp r4, #2
	bne _021A1ADC
	add r1, r5, #0
	add r1, #0xb4
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl ovy189_21a154c
	cmp r0, #0
	bne _021A1AE6
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1ADC:
	cmp r4, #3
	bne _021A1AE6
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1AE6:
	cmp r4, #2
	bne _021A1AF0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021A1A7A
_021A1AF0:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	ldr r2, [sp, #0x14]
	cmp r2, r0
	ble _021A1B12
	str r2, [sp]
	str r0, [sp, #4]
	ldr r3, _021A1B58 ; =0x021AD308
	mov r0, #8
	mov r1, #4
	mov r2, #1
	bl ovy11_216cca8
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1B12:
	ldr r1, [r6]
	ldr r3, [r7]
	add r1, r1, r2
	str r1, [r6]
	ldr r2, [sp, #0x10]
	add r2, r3, r2
	str r2, [r7]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bgt _021A1A7A
	cmp r1, #0xff
	ble _021A1B52
	sub r4, r0, r1
	bne _021A1B38
	add r5, #0xc4
	add r0, r5, #0
	bl sub_021A18B8
	b _021A1B52
_021A1B38:
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r2, r4, #0
	add r1, r0, r1
	blx sub_02083984
	add r0, r5, #0
	add r5, #0xd0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0]
	str r4, [r5]
_021A1B52:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1B58: .word 0x021AD308
	thumb_func_end ovy189_21a1a54

	thumb_func_start ovy189_21a1b5c
ovy189_21a1b5c: ; 0x021A1B5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r2]
	mov r4, #0x57
	lsl r4, r4, #2
	sub r6, r0, #1
	ldr r0, [r5, r4]
	add r7, r1, #0
	str r2, [sp, #4]
	cmp r0, #0
	beq _021A1B9A
	bl ovy11_216e324
	add r2, r0, #0
	add r0, r4, #4
	ldr r3, _021A1C88 ; =0x021AD300
	ldr r1, [r5, r0]
	ldr r0, [r3]
	add r0, r1, r0
	cmp r2, r0
	bhs _021A1B8E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A1B8E:
	add r0, r4, #4
	str r2, [r5, r0]
	ldr r0, [r3, #4]
	cmp r6, r0
	blt _021A1B9A
	add r6, r0, #0
_021A1B9A:
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A1BF6
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1BF6
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1BF6
	sub r1, r4, #4
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	add r3, sp, #8
	str r6, [sp, #8]
	bl sub_021A2BE8
	cmp r0, #1
	bne _021A1BDC
	mov r1, #0
	ldr r0, [sp, #8]
	mvn r1, r1
	cmp r0, r1
	bne _021A1C58
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A1BDC:
	add r0, r4, #0
	mov r1, #1
	sub r0, #0x74
	str r1, [r5, r0]
	mov r0, #5
	str r0, [r5, #0x40]
	mov r0, #0
	str r0, [r5, #0x54]
	sub r4, #0x40
	add sp, #0xc
	str r1, [r5, r4]
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021A1BF6:
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	add r2, r6, #0
	mov r4, #0
	mov r3, #0
	bl ovy11_216def0
	sub r1, r4, #1
	cmp r0, r1
	bne _021A1C58
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	add r1, r4, #0
	sub r1, #0x38
	cmp r0, r1
	bne _021A1C26
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A1C26:
	sub r1, r4, #6
	cmp r0, r1
	beq _021A1C3A
	add r1, r4, #0
	sub r1, #0x1a
	cmp r0, r1
	beq _021A1C3A
	sub r4, #0x4c
	cmp r0, r4
	bne _021A1C40
_021A1C3A:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A1C40:
	mov r1, #0x49
	mov r3, #1
	lsl r1, r1, #2
	str r3, [r5, r1]
	mov r2, #5
	str r0, [r5, #0x54]
	str r2, [r5, #0x40]
	add r1, #0x34
	add sp, #0xc
	str r3, [r5, r1]
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021A1C58:
	cmp r0, #0
	bne _021A1C6A
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A1C6A:
	mov r1, #0
	strb r1, [r7, r0]
	ldr r1, [sp, #4]
	ldr r3, _021A1C8C ; =0x021AD360
	str r0, [r1]
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #0x20
	bl ovy11_216cca8
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A1C88: .word 0x021AD300
_021A1C8C: .word 0x021AD360
	thumb_func_end ovy189_21a1b5c

	thumb_func_start ovy189_21a1c90
ovy189_21a1c90: ; 0x021A1C90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r3, r2, #0
	cmp r6, #0
	beq _021A1CA2
	cmp r3, #0
	bne _021A1CA8
_021A1CA2:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1CA8:
	mov r5, #0x66
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _021A1CFC
	add r1, r5, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _021A1CFC
	add r1, r5, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _021A1CFC
	mov r7, #0
	str r7, [sp, #4]
	add r1, sp, #4
	str r1, [sp]
	sub r1, r5, #4
	add r1, r4, r1
	add r2, r6, #0
	bl ovy189_021A2BE4
	cmp r0, #1
	bne _021A1CEA
	ldr r0, [sp, #4]
	sub r1, r7, #1
	cmp r0, r1
	bne _021A1D44
	add sp, #8
	sub r0, r7, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A1CEA:
	mov r0, #1
	sub r5, #0x74
	str r0, [r4, r5]
	mov r0, #5
	str r0, [r4, #0x40]
	add sp, #8
	str r7, [r4, #0x54]
	sub r0, r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021A1CFC:
	ldr r0, [r4, #0x50]
	add r2, r3, #0
	add r1, r6, #0
	mov r5, #0
	mov r3, #0
	bl sub_0216DF24
	sub r1, r5, #1
	cmp r0, r1
	bne _021A1D44
	ldr r0, [r4, #0x50]
	bl ovy11_0216DFA8
	sub r1, r5, #6
	cmp r0, r1
	beq _021A1D2A
	add r1, r5, #0
	sub r1, #0x1a
	cmp r0, r1
	beq _021A1D2A
	sub r5, #0x4c
	cmp r0, r5
	bne _021A1D30
_021A1D2A:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1D30:
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r1, #5
	str r0, [r4, #0x54]
	add sp, #8
	str r1, [r4, #0x40]
	sub r0, r1, #6
	pop {r3, r4, r5, r6, r7, pc}
_021A1D44:
	ldr r1, [r4, #0x10]
	cmp r1, #6
	bne _021A1D60
	mov r2, #6
	lsl r2, r2, #6
	ldr r1, [r4, r2]
	cmp r1, #0
	bne _021A1D60
	add r1, r2, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	sub r2, #0x10
	add r1, r1, r0
	str r1, [r4, r2]
_021A1D60:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a1c90

	thumb_func_start ovy189_21a1d64
ovy189_21a1d64: ; 0x021A1D64
	push {r3, r4, r5, r6, r7, lr}
	mov r3, #0x66
	add r5, r0, #0
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
	cmp r0, #0
	beq _021A1DC0
	add r0, r3, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1DC0
	add r3, #0x10
	ldr r0, [r5, r3]
	cmp r0, #1
	bne _021A1DC0
	add r0, r5, #0
	add r0, #0x58
	bl ovy189_21a16c4
	cmp r0, #0
	bne _021A1D9A
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1D9A:
	add r0, r5, #0
	bl ovy189_21a18cc
	cmp r0, #0
	bne _021A1DA8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1DA8:
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	blt _021A1DBC
	add r5, #0x58
	add r0, r5, #0
	bl sub_021A18B8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1DBC:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A1DC0:
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	blt _021A1DF2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy189_21a1c90
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021A1DE6
	add r0, r0, #1
	cmp r4, r0
	bne _021A1DEA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1DE6:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A1DEA:
	cmp r4, r6
	bne _021A1DF2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1DF2:
	add r5, #0x58
	add r0, r5, #0
	add r1, r7, r4
	sub r2, r6, r4
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A1E06
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1E06:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a1d64

	thumb_func_start ovy189_21a1e0c
ovy189_21a1e0c: ; 0x021A1E0C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021A1E98 ; =0x021B2870
	mov r0, #0
	ldr r3, [r1]
	cmp r3, #0
	ble _021A1E2A
	ldr r2, [r1, #0xc]
_021A1E1A:
	lsl r1, r0, #2
	ldr r1, [r2, r1]
	ldr r1, [r1]
	cmp r1, #0
	beq _021A1E94
	add r0, r0, #1
	cmp r0, r3
	blt _021A1E1A
_021A1E2A:
	ldr r0, _021A1E98 ; =0x021B2870
	ldr r7, [r0]
	ldr r0, [r0, #0xc]
	add r6, r7, #4
	lsl r1, r6, #2
	bl sub_0216DDEC
	cmp r0, #0
	bne _021A1E42
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A1E42:
	ldr r1, _021A1E98 ; =0x021B2870
	add r5, r7, #0
	str r0, [r1, #0xc]
	cmp r7, r6
	bge _021A1E8E
_021A1E4C:
	mov r0, #0x75
	lsl r0, r0, #2
	lsl r4, r5, #2
	bl ovy11_216dddc
	ldr r1, _021A1E98 ; =0x021B2870
	ldr r1, [r1, #0xc]
	str r0, [r1, r4]
	ldr r0, _021A1E98 ; =0x021B2870
	ldr r0, [r0, #0xc]
	ldr r1, [r0, r4]
	cmp r1, #0
	bne _021A1E84
	sub r5, r5, #1
	cmp r5, r7
	blt _021A1E7E
	ldr r4, _021A1E98 ; =0x021B2870
_021A1E6E:
	ldr r1, [r4, #0xc]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl ovy11_216ddfc
	sub r5, r5, #1
	cmp r5, r7
	bge _021A1E6E
_021A1E7E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A1E84:
	mov r0, #0
	add r5, r5, #1
	str r0, [r1]
	cmp r5, r6
	blt _021A1E4C
_021A1E8E:
	ldr r0, _021A1E98 ; =0x021B2870
	str r6, [r0]
	add r0, r7, #0
_021A1E94:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1E98: .word 0x021B2870
	thumb_func_end ovy189_21a1e0c

	thumb_func_start ovy189_21a1e9c
ovy189_21a1e9c: ; 0x021A1E9C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_021A1A4C
	bl ovy189_21a1e0c
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _021A1EB8
	bl sub_021A1A50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1EB8:
	ldr r0, _021A2004 ; =0x021B2870
	mov r4, #0x75
	ldr r1, [r0, #0xc]
	lsl r0, r7, #2
	ldr r5, [r1, r0]
	lsl r4, r4, #2
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r6, #0
	blx sub_020839D0
	mov r0, #1
	str r0, [r5]
	ldr r0, _021A2004 ; =0x021B2870
	str r7, [r5, #4]
	ldr r2, [r0, #8]
	mov r3, #1
	add r1, r2, #1
	str r1, [r0, #8]
	str r2, [r5, #8]
	str r6, [r5, #0xc]
	str r6, [r5, #0x10]
	str r6, [r5, #0x14]
	str r6, [r5, #0x18]
	str r6, [r5, #0x1c]
	strh r6, [r5, #0x20]
	str r6, [r5, #0x24]
	str r6, [r5, #0x2c]
	str r6, [r5, #0x30]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	str r6, [r5, #0x48]
	str r6, [r5, #0x4c]
	sub r0, r6, #1
	str r0, [r5, #0x50]
	add r0, r4, #0
	str r6, [r5, #0x54]
	sub r0, #0xc8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc0
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xbc
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xb8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xb4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xb0
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xac
	add r1, r4, #0
	str r6, [r5, r0]
	sub r1, #0xa8
	sub r0, r6, #1
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0xa4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xa0
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x9c
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x80
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x78
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x74
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x70
	str r6, [r5, r0]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x20
	sub r0, #0x4c
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x50
	sub r0, #0x44
	strh r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x48
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x40
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x38
	str r6, [r5, r0]
	sub r0, r4, #4
	str r6, [r5, r0]
	sub r4, #8
	add r1, r5, #0
	mov r2, #1
	str r6, [r5, r4]
	lsl r4, r2, #0xb
	add r0, r5, #0
	add r1, #0x58
	add r2, r4, #0
	lsl r3, r3, #0xc
	bl ovy189_21a157c
	cmp r0, #0
	beq _021A1FBA
	add r1, r5, #0
	mov r3, #1
	add r0, r5, #0
	add r1, #0x7c
	add r2, r4, #0
	lsl r3, r3, #0xa
	bl ovy189_21a157c
_021A1FBA:
	cmp r0, #0
	beq _021A1FCE
	mov r2, #2
	add r1, r5, #0
	lsl r2, r2, #0xa
	add r0, r5, #0
	add r1, #0xa0
	add r3, r2, #0
	bl ovy189_21a157c
_021A1FCE:
	cmp r0, #0
	beq _021A1FE2
	mov r2, #2
	add r1, r5, #0
	lsl r2, r2, #0xa
	add r0, r5, #0
	add r1, #0xc4
	lsr r3, r2, #1
	bl ovy189_21a157c
_021A1FE2:
	cmp r0, #0
	bne _021A1FF4
	add r0, r5, #0
	bl ovy189_21a217c
	bl sub_021A1A50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1FF4:
	ldr r0, _021A2004 ; =0x021B2870
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bl sub_021A1A50
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2004: .word 0x021B2870
	thumb_func_end ovy189_21a1e9c

	thumb_func_start ovy189_21a2008
ovy189_21a2008: ; 0x021A2008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _021A2012
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A2012:
	ldr r0, [r5]
	cmp r0, #0
	bne _021A201C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A201C:
	ldr r1, [r5, #4]
	cmp r1, #0
	bge _021A2026
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A2026:
	ldr r0, _021A2088 ; =0x021B2870
	ldr r0, [r0]
	cmp r1, r0
	blt _021A2032
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A2032:
	bl sub_021A1A4C
	mov r4, #0x73
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A2056
	ldr r3, _021A208C ; =0x021AD374
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	ldr r0, [r5, r4]
	bl ovy11_216e2b4
	mov r0, #0
	str r0, [r5, r4]
_021A2056:
	mov r4, #0
	ldr r0, [r5, #0x50]
	mvn r4, r4
	cmp r0, r4
	beq _021A2080
	mov r1, #2
	bl sub_0216DE7C
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_0216DE40
	cmp r0, #0
	bne _021A207E
	bl sub_021A1A50
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A207E:
	str r4, [r5, #0x50]
_021A2080:
	bl sub_021A1A50
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2088: .word 0x021B2870
_021A208C: .word 0x021AD374
	thumb_func_end ovy189_21a2008

	thumb_func_start ovy189_21a2090
ovy189_21a2090: ; 0x021A2090
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _021A209A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A209A:
	ldr r0, [r5]
	cmp r0, #0
	bne _021A20A4
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A20A4:
	ldr r1, [r5, #4]
	cmp r1, #0
	bge _021A20AE
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A20AE:
	ldr r0, _021A2178 ; =0x021B2870
	ldr r0, [r0]
	cmp r1, r0
	blt _021A20BA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A20BA:
	bl sub_021A1A4C
	ldr r0, [r5, #0x14]
	bl ovy11_216ddfc
	mov r6, #0
	ldr r0, [r5, #0x34]
	str r6, [r5, #0x14]
	bl ovy11_216ddfc
	ldr r0, [r5, #0x18]
	str r6, [r5, #0x34]
	bl ovy11_216ddfc
	ldr r0, [r5, #0x24]
	str r6, [r5, #0x18]
	bl ovy11_216ddfc
	ldr r0, [r5, #0x2c]
	str r6, [r5, #0x24]
	bl ovy11_216ddfc
	mov r4, #0x13
	str r6, [r5, #0x2c]
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl ovy11_216ddfc
	add r0, r4, #0
	str r6, [r5, #0x2c]
	add r0, #0x5c
	ldr r0, [r5, r0]
	bl ovy11_216ddfc
	add r0, r4, #0
	add r0, #0x5c
	str r6, [r5, r0]
	add r0, r5, #0
	add r0, #0x58
	bl ovy189_21a1608
	add r0, r5, #0
	add r0, #0x7c
	bl ovy189_21a1608
	add r0, r5, #0
	add r0, #0xa0
	bl ovy189_21a1608
	add r0, r5, #0
	add r0, #0xc4
	bl ovy189_21a1608
	add r0, r5, #0
	add r0, #0xe8
	bl ovy189_21a1608
	add r4, #0x38
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A213A
	add r0, r5, #0
	bl ovy189_21a3660
_021A213A:
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021A215E
	add r0, r1, #0
	add r0, #0x1c
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _021A2156
	sub r1, #8
	add r0, r5, #0
	add r1, r5, r1
	blx r2
_021A2156:
	mov r0, #0x67
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A215E:
	mov r0, #0x1d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021A2178 ; =0x021B2870
	str r1, [r5]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bl sub_021A1A50
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A2178: .word 0x021B2870
	thumb_func_end ovy189_21a2090

	thumb_func_start ovy189_21a217c
ovy189_21a217c: ; 0x021A217C
	push {r4, lr}
	add r4, r0, #0
	bne _021A2186
	mov r0, #0
	pop {r4, pc}
_021A2186:
	ldr r1, [r4]
	cmp r1, #0
	bne _021A2190
	mov r0, #0
	pop {r4, pc}
_021A2190:
	ldr r2, [r4, #4]
	cmp r2, #0
	bge _021A219A
	mov r0, #0
	pop {r4, pc}
_021A219A:
	ldr r1, _021A21BC ; =0x021B2870
	ldr r1, [r1]
	cmp r2, r1
	blt _021A21A6
	mov r0, #0
	pop {r4, pc}
_021A21A6:
	bl ovy189_21a2008
	cmp r0, #1
	beq _021A21B2
	mov r0, #0
	pop {r4, pc}
_021A21B2:
	add r0, r4, #0
	bl ovy189_21a2090
	pop {r4, pc}
	nop
_021A21BC: .word 0x021B2870
	thumb_func_end ovy189_21a217c

	thumb_func_start ovy189_21a21c0
ovy189_21a21c0: ; 0x021A21C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1A4C
	cmp r4, #0
	blt _021A21D4
	ldr r0, _021A21F4 ; =0x021B2870
	ldr r1, [r0]
	cmp r4, r1
	blt _021A21DC
_021A21D4:
	bl sub_021A1A50
	mov r0, #0
	pop {r4, pc}
_021A21DC:
	ldr r1, [r0, #0xc]
	lsl r0, r4, #2
	ldr r4, [r1, r0]
	ldr r0, [r4]
	cmp r0, #0
	bne _021A21EA
	mov r4, #0
_021A21EA:
	bl sub_021A1A50
	add r0, r4, #0
	pop {r4, pc}
	nop
_021A21F4: .word 0x021B2870
	thumb_func_end ovy189_21a21c0

	thumb_func_start ovy189_21a21f8
ovy189_21a21f8: ; 0x021A21F8
	push {r4, r5, r6, lr}
	ldr r6, _021A222C ; =0x021B2870
	add r5, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021A222A
	bl sub_021A1A4C
	ldr r0, [r6]
	mov r4, #0
	cmp r0, #0
	ble _021A2226
_021A2210:
	ldr r1, [r6, #0xc]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	ldr r1, [r0]
	cmp r1, #0
	beq _021A221E
	blx r5
_021A221E:
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021A2210
_021A2226:
	bl sub_021A1A50
_021A222A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A222C: .word 0x021B2870
	thumb_func_end ovy189_21a21f8

	thumb_func_start ovy189_21a2230
ovy189_21a2230: ; 0x021A2230
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021A2338 ; =0x021AD39C
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	mov r6, #8
	mov r7, #3
	bl ovy11_216cca8
	mov r4, #0x73
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A2264
	ldr r3, _021A233C ; =0x021AD374
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x10
	bl ovy11_216cca8
	ldr r0, [r5, r4]
	bl ovy11_216e2b4
	mov r0, #0
	str r0, [r5, r4]
_021A2264:
	ldr r0, [r5, #0x50]
	mov r1, #2
	bl sub_0216DE7C
	mov r4, #0x72
	lsl r4, r4, #2
	ldr r0, [r5, #0x50]
	add r1, r5, r4
	bl sub_0216DE40
	cmp r0, #0
	beq _021A2334
	ldr r0, [r5, #0x14]
	bl ovy11_216ddfc
	add r0, r4, #0
	sub r0, #0x98
	ldr r0, [r5, r0]
	mov r6, #0
	str r0, [r5, #0x14]
	add r0, r4, #0
	sub r0, #0x98
	str r6, [r5, r0]
	ldr r0, [r5, #0x18]
	bl ovy11_216ddfc
	ldr r0, [r5, #0x24]
	str r6, [r5, #0x18]
	str r6, [r5, #0x1c]
	strh r6, [r5, #0x20]
	bl ovy11_216ddfc
	sub r0, r6, #1
	str r0, [r5, #0x50]
	add r0, r5, #0
	add r0, #0x58
	str r6, [r5, #0x24]
	str r6, [r5, #0x10]
	bl sub_021A18B8
	add r0, r5, #0
	add r0, #0x7c
	bl sub_021A18B8
	add r0, r5, #0
	add r0, #0xa0
	bl sub_021A18B8
	add r0, r5, #0
	add r0, #0xc4
	bl sub_021A18B8
	add r0, r4, #0
	sub r0, #0xb8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xb4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xb0
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xac
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xa8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x70
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A232A
	add r0, r4, #0
	sub r0, #0x10
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _021A230C
	sub r4, #0x34
	add r0, r5, #0
	add r1, r5, r4
	blx r2
_021A230C:
	mov r4, #0x67
	mov r6, #0
	lsl r4, r4, #2
	str r6, [r5, r4]
	ldr r0, _021A2340 ; =0x021AD3B4
	ldr r1, [r5, #0x14]
	mov r2, #8
	blx sub_02086014
	cmp r0, #0
	beq _021A232A
	sub r0, r4, #4
	str r6, [r5, r0]
	sub r4, #8
	str r6, [r5, r4]
_021A232A:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_021A2334:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2338: .word 0x021AD39C
_021A233C: .word 0x021AD374
_021A2340: .word 0x021AD3B4
	thumb_func_end ovy189_21a2230

	thumb_func_start ovy189_21a2344
ovy189_21a2344: ; 0x021A2344
	push {r3, r4, r5, lr}
	ldr r5, _021A2380 ; =0x021B2870
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021A237E
	ldr r0, _021A2384 ; =ovy189_21a217c
	bl ovy189_21a21f8
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021A236E
_021A235C:
	ldr r1, [r5, #0xc]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	bl ovy11_216ddfc
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021A235C
_021A236E:
	ldr r4, _021A2380 ; =0x021B2870
	ldr r0, [r4, #0xc]
	bl ovy11_216ddfc
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4]
	str r0, [r4, #4]
_021A237E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2380: .word 0x021B2870
_021A2384: .word ovy189_21a217c
	thumb_func_end ovy189_21a2344

	thumb_func_start ovy189_21a2388
ovy189_21a2388: ; 0x021A2388
	push {r4, r5, r6, lr}
	ldr r1, _021A23CC ; =0x021AD3C0
	mov r2, #7
	add r5, r0, #0
	blx sub_02086014
	cmp r0, #0
	bne _021A239C
	add r5, r5, #7
	b _021A23B2
_021A239C:
	ldr r1, _021A23D0 ; =0x021AD3B4
	add r0, r5, #0
	mov r2, #8
	blx sub_02086014
	cmp r0, #0
	bne _021A23AE
	add r5, #8
	b _021A23B2
_021A23AE:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A23B2:
	ldr r1, _021A23D4 ; =0x021AD3C8
	add r0, r5, #0
	blx sub_02086080
	add r6, r0, #0
	ldrsb r4, [r5, r6]
	mov r0, #0
	strb r0, [r5, r6]
	add r0, r5, #0
	bl ovy11_216e2c8
	strb r4, [r5, r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A23CC: .word 0x021AD3C0
_021A23D0: .word 0x021AD3B4
_021A23D4: .word 0x021AD3C8
	thumb_func_end ovy189_21a2388

	thumb_func_start ovy189_21a23d8
ovy189_21a23d8: ; 0x021A23D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy189_21a21c0
	add r4, r0, #0
	bne _021A23E8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A23E8:
	cmp r5, #5
	bne _021A23EE
	mov r5, #4
_021A23EE:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, r5
	bne _021A23FC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A23FC:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A240C
	cmp r1, r5
	beq _021A240C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A240C:
	cmp r5, #0
	bne _021A2422
	ldr r0, [r4, #0x14]
	ldr r1, _021A2490 ; =0x021AD4A0
	mov r2, #8
	blx sub_02086014
	cmp r0, #0
	bne _021A2422
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A2422:
	mov r1, #0x66
	lsl r1, r1, #2
	str r5, [r4, r1]
	cmp r5, #0
	bne _021A2436
	mov r2, #0
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2436:
	mov r2, #0
	sub r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r3, _021A2494 ; =ovy189_21a29c0
	add r0, #0x1c
	str r3, [r4, r0]
	add r0, r1, #0
	ldr r3, _021A2498 ; =ovy189_21a2a98
	add r0, #0x24
	str r3, [r4, r0]
	add r0, r1, #0
	ldr r3, _021A249C ; =ovy189_21a2bf4
	add r0, #0x20
	str r3, [r4, r0]
	add r0, r1, #0
	ldr r3, _021A24A0 ; =0x021A2BED
	add r0, #0x28
	str r3, [r4, r0]
	add r0, r1, #0
	ldr r3, _021A24A4 ; =0x021A2BF1
	add r0, #0x2c
	str r3, [r4, r0]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	add r3, r1, #0
	str r2, [r4, r0]
	mov r0, #1
	add r3, #0x10
	str r0, [r4, r3]
	add r3, r1, #0
	add r3, #0x14
	str r2, [r4, r3]
	add r3, r1, #0
	add r3, #0x18
	str r2, [r4, r3]
	add r1, #0x30
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_021A2490: .word 0x021AD4A0
_021A2494: .word ovy189_21a29c0
_021A2498: .word ovy189_21a2a98
_021A249C: .word ovy189_21a2bf4
_021A24A0: .word 0x021A2BED
_021A24A4: .word 0x021A2BF1
	thumb_func_end ovy189_21a23d8

	thumb_func_start ovy189_21a24a8
ovy189_21a24a8: ; 0x021A24A8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	beq _021A24C0
	cmp r5, #0
	beq _021A24C0
	ldr r1, _021A24F0 ; =0x021AD4AC
	blx sub_02085F00
	cmp r0, #0
	bne _021A24E2
_021A24C0:
	ldr r0, _021A24F4 ; =0x021AD504
	ldr r3, _021A24F8 ; =0x021AD4B0
	str r0, [sp]
	ldr r0, _021A24FC ; =0x021AD402
	mov r1, #4
	str r0, [sp, #4]
	mov r0, #0x74
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #8
	mov r2, #1
	str r4, [sp, #0x10]
	bl ovy11_216cca8
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, pc}
_021A24E2:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a25e4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021A24F0: .word 0x021AD4AC
_021A24F4: .word 0x021AD504
_021A24F8: .word 0x021AD4B0
_021A24FC: .word 0x021AD402
	thumb_func_end ovy189_21a24a8

	thumb_func_start sub_021A2500
sub_021A2500: ; 0x021A2500
	ldr r3, _021A2504 ; =ovy189_21a26d0
	bx r3
	.align 2, 0
_021A2504: .word ovy189_21a26d0
	thumb_func_end sub_021A2500
_021A2508:
	.byte 0x00, 0x68, 0x09, 0x68, 0x00, 0x4B, 0x18, 0x47
	.byte 0x00, 0x5F, 0x08, 0x02

	thumb_func_start ovy189_21a2514
ovy189_21a2514: ; 0x021A2514
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	beq _021A252E
	ldr r6, _021A25AC ; =0x021B2880
	ldr r1, [r6]
	cmp r1, #0
	beq _021A252E
	ldr r1, _021A25B0 ; =0x021AD4AC
	blx sub_02085F00
	cmp r0, #0
	bne _021A2554
_021A252E:
	ldr r0, _021A25B4 ; =0x021AD504
	ldr r3, _021A25B8 ; =0x021AD518
	str r0, [sp]
	ldr r0, _021A25BC ; =0x021AD44D
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A25C0 ; =0x00000312
	mov r2, #1
	str r0, [sp, #8]
	ldr r0, _021A25AC ; =0x021B2880
	str r5, [sp, #0xc]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #8
	bl ovy11_216cca8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2554:
	add r0, r5, #0
	bl ovy189_21a2388
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, _021A25C4 ; =0x021A2509
	add r1, sp, #0x14
	mov r3, #0
	mov r7, #0
	bl ovy11_21716ac
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ovy11_216ddfc
	sub r0, r7, #1
	cmp r4, r0
	bne _021A259C
	ldr r0, _021A25B4 ; =0x021AD504
	ldr r3, _021A25C8 ; =0x021AD56C
	str r0, [sp]
	ldr r0, _021A25BC ; =0x021AD44D
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A25CC ; =0x00000323
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #8
	str r5, [sp, #0xc]
	bl ovy11_216cca8
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A259C:
	ldr r0, [r6]
	add r1, r4, #0
	bl sub_0217158C
	ldr r0, [r0, #4]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A25AC: .word 0x021B2880
_021A25B0: .word 0x021AD4AC
_021A25B4: .word 0x021AD504
_021A25B8: .word 0x021AD518
_021A25BC: .word 0x021AD44D
_021A25C0: .word 0x00000312
_021A25C4: .word 0x021A2509
_021A25C8: .word 0x021AD56C
_021A25CC: .word 0x00000323
	thumb_func_end ovy189_21a2514

	thumb_func_start ovy189_21a25d0
ovy189_21a25d0: ; 0x021A25D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	str r4, [r5, #4]
	bl ovy11_216ddfc
	str r4, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy189_21a25d0

	thumb_func_start ovy189_21a25e4
ovy189_21a25e4: ; 0x021A25E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021A25FE
	cmp r4, #0
	beq _021A25FE
	ldr r1, _021A26AC ; =0x021AD4AC
	blx sub_02085F00
	cmp r0, #0
	bne _021A2620
_021A25FE:
	ldr r0, _021A26B0 ; =0x021AD504
	ldr r3, _021A26B4 ; =0x021AD4B0
	str r0, [sp]
	ldr r0, _021A26B8 ; =0x021AD434
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A26BC ; =0x00000345
	mov r2, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #8
	str r4, [sp, #0x10]
	bl ovy11_216cca8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2620:
	ldr r6, _021A26C0 ; =0x021B2880
	ldr r0, [r6]
	cmp r0, #0
	bne _021A265A
	ldr r2, _021A26C4 ; =ovy189_21a25d0
	mov r0, #0x10
	mov r1, #1
	mov r7, #1
	bl ovy11_2171514
	str r0, [r6]
	cmp r0, #0
	bne _021A265A
	ldr r0, _021A26B0 ; =0x021AD504
	ldr r3, _021A26C8 ; =0x021AD5AC
	str r0, [sp]
	ldr r0, _021A26B8 ; =0x021AD434
	mov r1, #2
	str r0, [sp, #4]
	mov r0, #0xd5
	lsl r0, r0, #2
	str r0, [sp, #8]
	mov r0, #8
	add r2, r7, #0
	bl ovy11_216cca8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A265A:
	add r0, r5, #0
	bl ovy189_21a2388
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x20]
	add r7, sp, #0x14
	ldr r4, _021A26C0 ; =0x021B2880
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, _021A26CC ; =0x021A2509
	add r1, r7, #0
	mov r6, #0
	mov r3, #0
	bl ovy11_21716ac
	add r5, r0, #0
	sub r0, r6, #1
	cmp r5, r0
	bne _021A2690
	ldr r0, [r4]
	ldr r2, _021A26CC ; =0x021A2509
	add r1, r7, #0
	bl ovy11_2171600
	b _021A26A4
_021A2690:
	ldr r0, [sp, #0x14]
	bl ovy11_216ddfc
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_0217158C
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
_021A26A4:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A26AC: .word 0x021AD4AC
_021A26B0: .word 0x021AD504
_021A26B4: .word 0x021AD4B0
_021A26B8: .word 0x021AD434
_021A26BC: .word 0x00000345
_021A26C0: .word 0x021B2880
_021A26C4: .word ovy189_21a25d0
_021A26C8: .word 0x021AD5AC
_021A26CC: .word 0x021A2509
	thumb_func_end ovy189_21a25e4

	thumb_func_start ovy189_21a26d0
ovy189_21a26d0: ; 0x021A26D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r4, _021A278C ; =0x00000001
	beq _021A26EC
	ldr r6, _021A2790 ; =0x021B2880
	ldr r1, [r6]
	cmp r1, #0
	beq _021A26EC
	ldr r1, _021A2794 ; =0x021AD4AC
	blx sub_02085F00
	cmp r0, #0
	bne _021A2712
_021A26EC:
	ldr r0, _021A2798 ; =0x021AD504
	ldr r3, _021A279C ; =0x021AD5F8
	str r0, [sp]
	ldr r0, _021A27A0 ; =0x021AD482
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A27A4 ; =0x0000037B
	mov r2, #1
	str r0, [sp, #8]
	ldr r0, _021A2790 ; =0x021B2880
	str r5, [sp, #0xc]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #8
	bl ovy11_216cca8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2712:
	add r0, r5, #0
	bl ovy189_21a2388
	str r0, [sp, #0x14]
	str r4, [sp]
	ldr r0, [r6]
	ldr r2, _021A27A8 ; =0x021A2509
	add r1, sp, #0x14
	mov r3, #0
	bl ovy11_21716ac
	add r7, r0, #0
	mov r0, #0
	sub r0, r0, #1
	cmp r7, r0
	bne _021A2750
	ldr r0, _021A2798 ; =0x021AD504
	ldr r3, _021A27AC ; =0x021AD56C
	str r0, [sp]
	ldr r0, _021A27A0 ; =0x021AD482
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A27B0 ; =0x0000038A
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #8
	str r5, [sp, #0xc]
	bl ovy11_216cca8
	mov r4, #0
	b _021A277E
_021A2750:
	ldr r0, [r6]
	add r1, r7, #0
	bl sub_0217158C
	ldr r1, [r0, #0xc]
	sub r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0
	bgt _021A277E
	ldr r0, [r6]
	add r1, r7, #0
	bl ovy11_2171668
	ldr r0, [r6]
	bl sub_02171588
	cmp r0, #0
	bne _021A277E
	ldr r0, [r6]
	bl ovy11_2171558
	mov r0, #0
	str r0, [r6]
_021A277E:
	ldr r0, [sp, #0x14]
	bl ovy11_216ddfc
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A278C: .word 0x00000001
_021A2790: .word 0x021B2880
_021A2794: .word 0x021AD4AC
_021A2798: .word 0x021AD504
_021A279C: .word 0x021AD5F8
_021A27A0: .word 0x021AD482
_021A27A4: .word 0x0000037B
_021A27A8: .word 0x021A2509
_021A27AC: .word 0x021AD56C
_021A27B0: .word 0x0000038A
	thumb_func_end ovy189_21a26d0

	thumb_func_start ovy189_21a27b4
ovy189_21a27b4: ; 0x021A27B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021A28B4 ; =0x021AD504
	add r5, r1, #0
	str r0, [sp]
	ldr r0, _021A28B8 ; =0x021AD3DA
	add r7, r2, #0
	str r0, [sp, #4]
	ldr r6, _021A28BC ; =0x000003AA
	ldr r3, _021A28C0 ; =0x021AD64C
	mov r0, #8
	mov r1, #4
	mov r2, #8
	str r6, [sp, #8]
	bl ovy11_216cca8
	mov r0, #0x6b
	lsl r0, r0, #4
	str r7, [sp]
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0x5b
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r3, _021A28C4 ; =0x021AD674
	mov r0, #8
	mov r1, #4
	mov r2, #8
	bl ovy11_216cca8
	mov r0, #4
	lsl r0, r0, #0xd
	tst r0, r4
	beq _021A2820
	ldr r0, _021A28B4 ; =0x021AD504
	ldr r3, _021A28C8 ; =0x021AD690
	str r0, [sp]
	ldr r0, _021A28B8 ; =0x021AD3DA
	add r6, #8
	str r0, [sp, #4]
	mov r0, #8
	mov r1, #4
	mov r2, #2
	str r6, [sp, #8]
	bl ovy11_216cca8
	ldr r0, _021A28CC ; =0xFFFF7FFF
	and r4, r0
_021A2820:
	mov r0, #1
	lsl r0, r0, #0xe
	ldr r6, _021A28B8 ; =0x021AD3DA
	ldr r5, _021A28B4 ; =0x021AD504
	tst r0, r4
	beq _021A2844
	str r5, [sp]
	ldr r0, _021A28D0 ; =0x000003BA
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r3, _021A28D4 ; =0x021AD6C4
	mov r0, #8
	mov r1, #4
	mov r2, #2
	bl ovy11_216cca8
	ldr r0, _021A28D8 ; =0xFFFFBFFF
	and r4, r0
_021A2844:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	bhi _021A28AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2858: ; jump table
	.short _021A28AC - _021A2858 - 2 ; case 0
	.short _021A2862 - _021A2858 - 2 ; case 1
	.short _021A2874 - _021A2858 - 2 ; case 2
	.short _021A2886 - _021A2858 - 2 ; case 3
	.short _021A2898 - _021A2858 - 2 ; case 4
_021A2862:
	str r5, [sp]
	ldr r0, _021A28DC ; =0x000003C3
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #4
	mov r2, #2
	ldr r3, _021A28E0 ; =0x021AD700
	b _021A28A8
_021A2874:
	str r5, [sp]
	ldr r0, _021A28E4 ; =0x000003C9
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #4
	mov r2, #2
	ldr r3, _021A28E8 ; =0x021AD738
	b _021A28A8
_021A2886:
	str r5, [sp]
	ldr r0, _021A28EC ; =0x000003CF
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #4
	mov r2, #2
	ldr r3, _021A28F0 ; =0x021AD768
	b _021A28A8
_021A2898:
	str r5, [sp]
	ldr r0, _021A28F4 ; =0x000003D5
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r3, _021A28F8 ; =0x021AD798
	mov r0, #8
	mov r1, #4
	mov r2, #2
_021A28A8:
	bl ovy11_216cca8
_021A28AC:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A28B4: .word 0x021AD504
_021A28B8: .word 0x021AD3DA
_021A28BC: .word 0x000003AA
_021A28C0: .word 0x021AD64C
_021A28C4: .word 0x021AD674
_021A28C8: .word 0x021AD690
_021A28CC: .word 0xFFFF7FFF
_021A28D0: .word 0x000003BA
_021A28D4: .word 0x021AD6C4
_021A28D8: .word 0xFFFFBFFF
_021A28DC: .word 0x000003C3
_021A28E0: .word 0x021AD700
_021A28E4: .word 0x000003C9
_021A28E8: .word 0x021AD738
_021A28EC: .word 0x000003CF
_021A28F0: .word 0x021AD768
_021A28F4: .word 0x000003D5
_021A28F8: .word 0x021AD798
	thumb_func_end ovy189_21a27b4

	thumb_func_start ovy189_21a28fc
ovy189_21a28fc: ; 0x021A28FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0
	mov r5, #0
	bl ovy189_21a2514
	add r4, r0, #0
	beq _021A2980
	ldr r0, [r4]
	cmp r0, #0
	beq _021A2974
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021A2974
	ldr r5, _021A29A0 ; =0x021B2884
	add r0, r5, #0
	bl OS_GetLowEntropyData
	add r0, r5, #0
	mov r1, #0x20
	bl sub_02159D64
	mov r6, #0x83
	lsl r6, r6, #4
	add r0, r6, #0
	bl ovy11_216dddc
	add r5, r0, #0
	beq _021A295C
	add r1, r7, #0
	add r2, r6, #0
	blx sub_020839D0
	add r0, r6, #0
	sub r0, #0x30
	str r7, [r5, r0]
	add r0, r6, #0
	ldr r1, [r4]
	sub r0, #0x1c
	str r1, [r5, r0]
	add r0, r6, #0
	ldr r1, [r4, #4]
	sub r0, #0x18
	str r1, [r5, r0]
	ldr r0, _021A29A4 ; =ovy189_21a27b4
	sub r6, #0x20
	str r0, [r5, r6]
	b _021A2998
_021A295C:
	ldr r0, _021A29A8 ; =0x021AD504
	mov r1, #2
	str r0, [sp]
	ldr r0, _021A29AC ; =0x021AD3CC
	mov r2, #2
	str r0, [sp, #4]
	mov r0, #0xff
	lsl r0, r0, #2
	str r0, [sp, #8]
	mov r0, #8
	ldr r3, _021A29B0 ; =0x021AD7C8
	b _021A2994
_021A2974:
	ldr r0, _021A29A8 ; =0x021AD504
	str r0, [sp]
	ldr r0, _021A29AC ; =0x021AD3CC
	str r0, [sp, #4]
	ldr r0, _021A29B4 ; =0x00000403
	b _021A298A
_021A2980:
	ldr r0, _021A29A8 ; =0x021AD504
	str r0, [sp]
	ldr r0, _021A29AC ; =0x021AD3CC
	str r0, [sp, #4]
	ldr r0, _021A29B8 ; =0x0000040A
_021A298A:
	ldr r3, _021A29BC ; =0x021AD808
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #2
	mov r2, #2
_021A2994:
	bl ovy11_216cca8
_021A2998:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A29A0: .word 0x021B2884
_021A29A4: .word ovy189_21a27b4
_021A29A8: .word 0x021AD504
_021A29AC: .word 0x021AD3CC
_021A29B0: .word 0x021AD7C8
_021A29B4: .word 0x00000403
_021A29B8: .word 0x0000040A
_021A29BC: .word 0x021AD808
	thumb_func_end ovy189_21a28fc

	thumb_func_start ovy189_21a29c0
ovy189_21a29c0: ; 0x021A29C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, _021A2A7C ; =0x021AD504
	add r5, r1, #0
	str r0, [sp]
	ldr r0, _021A2A80 ; =0x021AD3EA
	ldr r4, _021A2A84 ; =0x00000417
	str r0, [sp, #4]
	ldr r3, _021A2A88 ; =0x021AD83C
	mov r0, #8
	mov r1, #4
	mov r2, #0xf
	str r4, [sp, #8]
	bl ovy11_216cca8
	mov r0, #8
	bl ovy11_216dddc
	str r0, [r5]
	cmp r0, #0
	bne _021A2A0C
	ldr r0, _021A2A7C ; =0x021AD504
	add r4, #0xe
	str r0, [sp]
	ldr r0, _021A2A80 ; =0x021AD3EA
	ldr r3, _021A2A8C ; =0x021AD84C
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #8
	mov r1, #2
	mov r2, #2
	str r0, [sp, #0xc]
	bl ovy11_216cca8
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A2A0C:
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	ldr r6, [r5]
	ldr r0, [r7, #0x14]
	bl ovy189_21a28fc
	mov r1, #0
	str r0, [r6]
	str r1, [r6, #4]
	cmp r0, #0
	bne _021A2A4E
	ldr r0, _021A2A7C ; =0x021AD504
	ldr r3, _021A2A90 ; =0x021AD894
	str r0, [sp]
	ldr r0, _021A2A80 ; =0x021AD3EA
	add r4, #0x1a
	str r0, [sp, #4]
	mov r0, #8
	mov r1, #4
	mov r2, #0xf
	str r4, [sp, #8]
	bl ovy11_216cca8
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A2A4E:
	mov r0, #0
	mov r1, #1
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	ldr r0, _021A2A7C ; =0x021AD504
	str r1, [r5, #8]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r0, [sp]
	ldr r0, _021A2A80 ; =0x021AD3EA
	ldr r3, _021A2A94 ; =0x021AD8D0
	str r0, [sp, #4]
	add r4, #0x26
	mov r0, #8
	mov r1, #4
	mov r2, #0xf
	str r4, [sp, #8]
	bl ovy11_216cca8
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2A7C: .word 0x021AD504
_021A2A80: .word 0x021AD3EA
_021A2A84: .word 0x00000417
_021A2A88: .word 0x021AD83C
_021A2A8C: .word 0x021AD84C
_021A2A90: .word 0x021AD894
_021A2A94: .word 0x021AD8D0
	thumb_func_end ovy189_21a29c0

	thumb_func_start ovy189_21a2a98
ovy189_21a2a98: ; 0x021A2A98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r7, [r1]
	ldr r0, _021A2BB4 ; =0x021AD504
	ldr r4, _021A2BB8 ; =0x0000044C
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	str r1, [sp, #0x10]
	str r0, [sp, #4]
	ldr r3, _021A2BC0 ; =0x021AD83C
	str r4, [sp, #8]
	mov r0, #8
	mov r1, #4
	mov r2, #0xf
	bl ovy11_216cca8
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _021A2B8C
	ldr r0, [r6, #0x50]
	ldr r1, [r7]
	bl ovy11_2158174
	add r5, r0, #0
	bpl _021A2B88
	mov r0, #0xf
	sub r0, #0x30
	cmp r5, r0
	bgt _021A2AFE
	mov r0, #0xf
	sub r0, #0x30
	cmp r5, r0
	bge _021A2B1C
	mov r0, #0xf
	sub r0, #0x36
	cmp r5, r0
	bgt _021A2B5A
	mov r0, #0xf
	sub r0, #0x39
	cmp r5, r0
	blt _021A2B5A
	mov r0, #0xf
	sub r0, #0x39
	cmp r5, r0
	beq _021A2B44
	mov r0, #0xf
	sub r0, #0x36
	cmp r5, r0
	beq _021A2B2E
	b _021A2B5A
_021A2AFE:
	mov r0, #0xf
	sub r0, #0x2b
	cmp r5, r0
	bne _021A2B5A
	ldr r0, _021A2BB4 ; =0x021AD504
	add r4, #0xd
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	mov r1, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #8
	mov r2, #0xf
	ldr r3, _021A2BC4 ; =0x021AD904
	b _021A2B70
_021A2B1C:
	ldr r0, _021A2BBC ; =0x021AD41B
	add r4, #0x12
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #8
	mov r1, #4
	mov r2, #0xf
	ldr r3, _021A2BC8 ; =0x021AD950
	b _021A2B70
_021A2B2E:
	ldr r0, _021A2BB4 ; =0x021AD504
	add r4, #0x18
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	mov r1, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #8
	mov r2, #0xf
	ldr r3, _021A2BCC ; =0x021AD9AC
	b _021A2B70
_021A2B44:
	ldr r0, _021A2BB4 ; =0x021AD504
	add r4, #0x1d
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	mov r1, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #8
	mov r2, #0xf
	ldr r3, _021A2BD0 ; =0x021AD9F0
	b _021A2B70
_021A2B5A:
	ldr r0, _021A2BB4 ; =0x021AD504
	ldr r3, _021A2BD4 ; =0x021ADA28
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A2BD8 ; =0x0000046F
	mov r2, #0xf
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #8
_021A2B70:
	bl ovy11_216cca8
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #6
	str r0, [r6, #0x40]
	add sp, #0x14
	str r5, [r6, #0x54]
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021A2B88:
	mov r0, #1
	str r0, [r7, #4]
_021A2B8C:
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r0, _021A2BB4 ; =0x021AD504
	ldr r3, _021A2BDC ; =0x021ADA74
	str r0, [sp]
	ldr r0, _021A2BBC ; =0x021AD41B
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, _021A2BE0 ; =0x00000482
	mov r2, #0xf
	str r0, [sp, #8]
	mov r0, #8
	bl ovy11_216cca8
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A2BB4: .word 0x021AD504
_021A2BB8: .word 0x0000044C
_021A2BBC: .word 0x021AD41B
_021A2BC0: .word 0x021AD83C
_021A2BC4: .word 0x021AD904
_021A2BC8: .word 0x021AD950
_021A2BCC: .word 0x021AD9AC
_021A2BD0: .word 0x021AD9F0
_021A2BD4: .word 0x021ADA28
_021A2BD8: .word 0x0000046F
_021A2BDC: .word 0x021ADA74
_021A2BE0: .word 0x00000482
	thumb_func_end ovy189_21a2a98

	thumb_func_start ovy189_021A2BE4
ovy189_021A2BE4: ; 0x021A2BE4
	mov r0, #1
	bx lr
	thumb_func_end ovy189_021A2BE4

	thumb_func_start sub_021A2BE8
sub_021A2BE8: ; 0x021A2BE8
	mov r0, #1
	bx lr
	thumb_func_end sub_021A2BE8
_021A2BEC:
	.byte 0x03, 0x20, 0x70, 0x47
	.byte 0x03, 0x20, 0x70, 0x47

	thumb_func_start ovy189_21a2bf4
ovy189_21a2bf4: ; 0x021A2BF4
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _021A2C40 ; =0x021AD504
	add r4, r1, #0
	str r0, [sp]
	ldr r0, _021A2C44 ; =0x021AD467
	ldr r3, _021A2C48 ; =0x021ADA90
	str r0, [sp, #4]
	ldr r0, _021A2C4C ; =0x000004D5
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #8
	mov r2, #0xf
	bl ovy11_216cca8
	cmp r4, #0
	beq _021A2C38
	ldr r5, [r4]
	cmp r5, #0
	beq _021A2C30
	ldr r0, [r5]
	cmp r0, #0
	beq _021A2C26
	bl ovy11_216ddfc
_021A2C26:
	add r0, r5, #0
	bl ovy11_216ddfc
	mov r0, #0
	str r0, [r4]
_021A2C30:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_021A2C38:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021A2C40: .word 0x021AD504
_021A2C44: .word 0x021AD467
_021A2C48: .word 0x021ADA90
_021A2C4C: .word 0x000004D5
	thumb_func_end ovy189_21a2bf4

	thumb_func_start ovy189_21a2c50
ovy189_21a2c50: ; 0x021A2C50
	push {r4, r5, r6, lr}
	mov r5, #0x46
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r6, [r4, r5]
	mov r1, #0x64
	add r0, r6, #0
	blx sub_0208D65C
	cmp r0, #5
	bhi _021A2CC4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2C72: ; jump table
	.short _021A2CC4 - _021A2C72 - 2 ; case 0
	.short _021A2C7E - _021A2C72 - 2 ; case 1
	.short _021A2C7E - _021A2C72 - 2 ; case 2
	.short _021A2C7E - _021A2C72 - 2 ; case 3
	.short _021A2C80 - _021A2C72 - 2 ; case 4
	.short _021A2CC0 - _021A2C72 - 2 ; case 5
_021A2C7E:
	pop {r4, r5, r6, pc}
_021A2C80:
	add r5, #0x79
	sub r0, r6, r5
	cmp r0, #9
	bhi _021A2CBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2C94: ; jump table
	.short _021A2CA8 - _021A2C94 - 2 ; case 0
	.short _021A2CBA - _021A2C94 - 2 ; case 1
	.short _021A2CAE - _021A2C94 - 2 ; case 2
	.short _021A2CB4 - _021A2C94 - 2 ; case 3
	.short _021A2CBA - _021A2C94 - 2 ; case 4
	.short _021A2CBA - _021A2C94 - 2 ; case 5
	.short _021A2CBA - _021A2C94 - 2 ; case 6
	.short _021A2CBA - _021A2C94 - 2 ; case 7
	.short _021A2CBA - _021A2C94 - 2 ; case 8
	.short _021A2CB4 - _021A2C94 - 2 ; case 9
_021A2CA8:
	mov r0, #9
	str r0, [r4, #0x40]
	pop {r4, r5, r6, pc}
_021A2CAE:
	mov r0, #0xa
	str r0, [r4, #0x40]
	pop {r4, r5, r6, pc}
_021A2CB4:
	mov r0, #0xb
	str r0, [r4, #0x40]
	pop {r4, r5, r6, pc}
_021A2CBA:
	mov r0, #8
	str r0, [r4, #0x40]
	pop {r4, r5, r6, pc}
_021A2CC0:
	mov r0, #0xc
	str r0, [r4, #0x40]
_021A2CC4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a2c50

	thumb_func_start ovy189_21a2cc8
ovy189_21a2cc8: ; 0x021A2CC8
	push {r4, r5, r6, lr}
	mov r1, #0x55
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021A2CDA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A2CDA:
	mov r2, #1
	str r2, [r5, r1]
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bne _021A2CE8
	bl ovy189_21a4208
_021A2CE8:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021A2CF4
	add r0, r5, #0
	bl ovy189_21a42fc
_021A2CF4:
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _021A2D00
	add r0, r5, #0
	bl ovy189_21a43a8
_021A2D00:
	ldr r0, [r5, #0x10]
	cmp r0, #3
	bne _021A2D0C
	add r0, r5, #0
	bl ovy189_21a4418
_021A2D0C:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	bne _021A2D18
	add r0, r5, #0
	bl ovy189_21a45c8
_021A2D18:
	ldr r0, [r5, #0x10]
	cmp r0, #5
	bne _021A2D24
	add r0, r5, #0
	bl ovy189_21a472c
_021A2D24:
	ldr r0, [r5, #0x10]
	cmp r0, #6
	bne _021A2D30
	add r0, r5, #0
	bl ovy189_21a4940
_021A2D30:
	ldr r0, [r5, #0x10]
	cmp r0, #7
	bne _021A2D3C
	add r0, r5, #0
	bl ovy189_21a49d0
_021A2D3C:
	ldr r0, [r5, #0x10]
	cmp r0, #8
	bne _021A2D48
	add r0, r5, #0
	bl ovy189_21a4af8
_021A2D48:
	ldr r0, [r5, #0x10]
	cmp r0, #9
	bne _021A2D54
	add r0, r5, #0
	bl ovy189_21a4ee4
_021A2D54:
	ldr r0, [r5, #0x10]
	cmp r0, #0xa
	bne _021A2D60
	add r0, r5, #0
	bl ovy189_21a52e0
_021A2D60:
	ldr r0, [r5, #0x10]
	cmp r0, #0xb
	bne _021A2D72
	ldr r3, _021A2E20 ; =0x021ADAC8
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
_021A2D72:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A2D82
	add r0, r5, #0
	bl ovy189_21a2230
_021A2D82:
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, #0x40]
	ldr r6, [r5, r4]
	cmp r0, #0x12
	bne _021A2DA0
	cmp r6, #0
	bne _021A2DA0
	ldr r0, [r5, #0x50]
	bl ovy11_216e10c
	cmp r0, #0
	bne _021A2DA0
	mov r0, #1
	str r0, [r5, r4]
_021A2DA0:
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A2E16
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A2DE8
	add r0, r5, #0
	bl ovy189_21a2c50
	add r0, r5, #0
	bl ovy189_21a2008
	cmp r0, #0
	bne _021A2DD0
	mov r0, #0
	add r4, #0x30
	str r0, [r5, r4]
	mov r1, #0xb
	str r1, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021A2DD0:
	add r0, r5, #0
	bl ovy189_21a1980
	add r0, r5, #0
	bl ovy189_21a2090
	cmp r0, #0
	bne _021A2E1C
	mov r0, #0
	add r4, #0x30
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_021A2DE8:
	add r0, r5, #0
	bl ovy189_21a2008
	cmp r0, #0
	bne _021A2DFE
	mov r0, #0
	add r4, #0x30
	str r0, [r5, r4]
	mov r1, #0xb
	str r1, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021A2DFE:
	add r0, r5, #0
	bl ovy189_21a1980
	add r0, r5, #0
	bl ovy189_21a2090
	cmp r0, #0
	bne _021A2E1C
	mov r0, #0
	add r4, #0x30
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_021A2E16:
	mov r0, #0
	add r4, #0x30
	str r0, [r5, r4]
_021A2E1C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A2E20: .word 0x021ADAC8
	thumb_func_end ovy189_21a2cc8

	thumb_func_start ovy189_21a2e24
ovy189_21a2e24: ; 0x021A2E24
	push {r3, lr}
	bl sub_021A1A4C
	ldr r0, _021A2E50 ; =0x021B28A4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r1, #1
	bne _021A2E48
	bl sub_021A1A44
	ldr r0, _021A2E54 ; =0x021AD304
	mov r1, #0x7d
	str r1, [r0]
	ldr r0, _021A2E58 ; =0x021AD300
	mov r1, #0xfa
	str r1, [r0]
	pop {r3, pc}
_021A2E48:
	bl sub_021A1A50
	pop {r3, pc}
	nop
_021A2E50: .word 0x021B28A4
_021A2E54: .word 0x021AD304
_021A2E58: .word 0x021AD300
	thumb_func_end ovy189_21a2e24

	thumb_func_start ovy189_21a2e5c
ovy189_21a2e5c: ; 0x021A2E5C
	push {r4, lr}
	bl sub_021A1A4C
	ldr r0, _021A2E90 ; =0x021B28A4
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bne _021A2E8A
	bl ovy189_21a2344
	ldr r4, _021A2E94 ; =0x021B286C
	ldr r0, [r4]
	cmp r0, #0
	beq _021A2E80
	bl ovy11_216ddfc
	mov r0, #0
	str r0, [r4]
_021A2E80:
	bl sub_021A1A50
	bl sub_021A1A48
	pop {r4, pc}
_021A2E8A:
	bl sub_021A1A50
	pop {r4, pc}
	.align 2, 0
_021A2E90: .word 0x021B28A4
_021A2E94: .word 0x021B286C
	thumb_func_end ovy189_21a2e5c

	thumb_func_start ovy189_21a2e98
ovy189_21a2e98: ; 0x021A2E98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	beq _021A2EAE
	mov r1, #0
	ldrsb r0, [r5, r1]
	cmp r0, #0
	bne _021A2EB4
_021A2EAE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A2EB4:
	add r0, r3, #0
	bpl _021A2EBC
	sub r0, r1, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2EBC:
	cmp r7, #0
	beq _021A2EC8
	cmp r0, #0
	bne _021A2EC8
	sub r0, r1, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2EC8:
	ldr r0, _021A2FC8 ; =0x021B28A4
	ldr r0, [r0]
	cmp r0, #0
	bne _021A2ED4
	bl ovy189_21a2e24
_021A2ED4:
	bl ovy189_21a1e9c
	add r4, r0, #0
	bne _021A2EE2
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A2EE2:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ovy11_216e2c8
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _021A2EFE
	add r0, r4, #0
	bl ovy189_21a217c
	mov r0, #0
	sub r0, r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2EFE:
	cmp r6, #0
	beq _021A2F22
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _021A2F22
	add r0, r6, #0
	bl ovy11_216e2c8
	str r0, [r4, #0x2c]
	cmp r0, #0
	bne _021A2F22
	add r0, r4, #0
	bl ovy189_21a217c
	mov r0, #0
	sub r0, r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A2F22:
	mov r0, #0x59
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [sp, #0x20]
	sub r0, #8
	str r1, [r4, #0x38]
	ldr r1, [sp, #0x24]
	str r1, [r4, #0x44]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x48]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #0x4c]
	ldr r1, [sp, #0x1c]
	str r1, [r4, r0]
	mov r1, #1
	cmp r7, #0
	bne _021A2F48
	mov r1, #0
_021A2F48:
	mov r0, #0x43
	lsl r0, r0, #2
	str r1, [r4, r0]
	cmp r1, #0
	beq _021A2F62
	add r1, r4, #0
	ldr r3, [sp]
	add r0, r4, #0
	add r1, #0xe8
	add r2, r7, #0
	bl sub_021A15CC
	b _021A2F72
_021A2F62:
	mov r2, #2
	add r1, r4, #0
	lsl r2, r2, #0xa
	add r0, r4, #0
	add r1, #0xe8
	add r3, r2, #0
	bl ovy189_21a157c
_021A2F72:
	cmp r0, #0
	bne _021A2F82
	add r0, r4, #0
	bl ovy189_21a217c
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A2F82:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021A2F9E
	add r0, r4, #0
	bl ovy189_21a355c
	cmp r0, #0
	bne _021A2F9E
	add r0, r4, #0
	bl ovy189_21a217c
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A2F9E:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021A2FC4
	add r0, r4, #0
	bl ovy189_21a2cc8
	cmp r0, #0
	bne _021A2FC0
	mov r5, #0xa
_021A2FB0:
	add r0, r5, #0
	bl sub_0216E360
	add r0, r4, #0
	bl ovy189_21a2cc8
	cmp r0, #0
	beq _021A2FB0
_021A2FC0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2FC4:
	ldr r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2FC8: .word 0x021B28A4
	thumb_func_end ovy189_21a2e98

	thumb_func_start sub_021A2FCC
sub_021A2FCC: ; 0x021A2FCC
	ldr r0, _021A2FD4 ; =ovy189_21a2cc8
	ldr r3, _021A2FD8 ; =ovy189_21a21f8
	bx r3
	nop
_021A2FD4: .word ovy189_21a2cc8
_021A2FD8: .word ovy189_21a21f8
	thumb_func_end sub_021A2FCC

	thumb_func_start ovy189_21a2fdc
ovy189_21a2fdc: ; 0x021A2FDC
	push {r3, lr}
	bl ovy189_21a21c0
	cmp r0, #0
	bne _021A2FEA
	mov r0, #0
	pop {r3, pc}
_021A2FEA:
	bl ovy189_21a2cc8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a2fdc

	thumb_func_start ovy189_21a2ff4
ovy189_21a2ff4: ; 0x021A2FF4
	push {r3, lr}
	bl ovy189_21a21c0
	cmp r0, #0
	beq _021A3012
	mov r1, #0x12
	str r1, [r0, #0x40]
	mov r1, #0xb
	str r1, [r0, #0x10]
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bl ovy189_21a2008
_021A3012:
	pop {r3, pc}
	thumb_func_end ovy189_21a2ff4

	thumb_func_start ovy189_21a3014
ovy189_21a3014: ; 0x021A3014
	push {r3, lr}
	bl ovy189_21a21c0
	cmp r0, #0
	beq _021A3022
	ldr r0, [r0, #0x10]
	pop {r3, pc}
_021A3022:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a3014

	thumb_func_start ovy189_21a3028
ovy189_21a3028: ; 0x021A3028
	push {r4, lr}
	add r4, r1, #0
	bl ovy189_21a21c0
	cmp r0, #0
	beq _021A303A
	mov r1, #0x62
	lsl r1, r1, #2
	str r4, [r0, r1]
_021A303A:
	pop {r4, pc}
	thumb_func_end ovy189_21a3028
_021A303C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xC9, 0x30, 0x1A, 0x02

	thumb_func_start ovy189_21a3044
ovy189_21a3044: ; 0x021A3044
	push {r3, lr}
	cmp r0, #0
	beq _021A304E
	bl sub_021A3110
_021A304E:
	pop {r3, pc}
	thumb_func_end ovy189_21a3044

	thumb_func_start ovy189_21a3050
ovy189_21a3050: ; 0x021A3050
	push {r3, lr}
	cmp r1, #0
	beq _021A305A
	bl ovy189_21a3130
_021A305A:
	pop {r3, pc}
	thumb_func_end ovy189_21a3050
_021A305C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xC9, 0x31, 0x1A, 0x02

	thumb_func_start sub_021A3064
sub_021A3064: ; 0x021A3064
	ldr r3, _021A3068 ; =ovy189_21a24a8
	bx r3
	.align 2, 0
_021A3068: .word ovy189_21a24a8
	thumb_func_end sub_021A3064

	thumb_func_start sub_021A306C
sub_021A306C: ; 0x021A306C
	ldr r3, _021A3070 ; =sub_021A2500
	bx r3
	.align 2, 0
_021A3070: .word sub_021A2500
	thumb_func_end sub_021A306C

	thumb_func_start ovy189_21a3074
ovy189_21a3074: ; 0x021A3074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	beq _021A3084
	ldr r0, [r4, #4]
	bl ovy11_216ddfc
_021A3084:
	ldr r0, [r4]
	cmp r0, #0
	bne _021A3092
	ldr r0, [r4, #8]
	bl ovy11_216ddfc
	pop {r4, pc}
_021A3092:
	cmp r0, #1
	bne _021A30AA
	ldr r0, [r4, #8]
	bl ovy11_216ddfc
	ldr r0, [r4, #0xc]
	bl ovy11_216ddfc
	ldr r0, [r4, #0x10]
	bl ovy11_216ddfc
	pop {r4, pc}
_021A30AA:
	cmp r0, #2
	bne _021A30BC
	ldr r0, [r4, #0x10]
	bl ovy11_216ddfc
	ldr r0, [r4, #0x14]
	bl ovy11_216ddfc
	pop {r4, pc}
_021A30BC:
	cmp r0, #3
	bne _021A30C6
	ldr r0, [r4, #8]
	bl ovy11_216fe64
_021A30C6:
	pop {r4, pc}
	thumb_func_end ovy189_21a3074

	thumb_func_start ovy189_21a30c8
ovy189_21a30c8: ; 0x021A30C8
	push {r3, r4, r5, lr}
	mov r0, #0x1c
	mov r4, #0x1c
	bl ovy11_216dddc
	add r5, r0, #0
	bne _021A30DA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A30DA:
	add r1, r5, #0
	mov r0, #0
_021A30DE:
	strb r0, [r1]
	add r1, r1, #1
	sub r4, r4, #1
	bne _021A30DE
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r2, _021A310C ; =ovy189_21a3074
	mov r0, #0x18
	mov r1, #0
	mov r4, #0
	bl ovy11_2171514
	str r0, [r5]
	cmp r0, #0
	bne _021A3106
	add r0, r5, #0
	bl ovy11_216ddfc
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A3106:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_021A310C: .word ovy189_21a3074
	thumb_func_end ovy189_21a30c8

	thumb_func_start sub_021A3110
sub_021A3110: ; 0x021A3110
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A3110

	thumb_func_start ovy189_21a3114
ovy189_21a3114: ; 0x021A3114
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A3122
	bl ovy11_2171558
_021A3122:
	mov r0, #0
	str r0, [r4]
	add r0, r4, #0
	bl ovy11_216ddfc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a3114

	thumb_func_start ovy189_21a3130
ovy189_21a3130: ; 0x021A3130
	push {r4, lr}
	add r4, r1, #0
	bl ovy189_21a21c0
	cmp r0, #0
	beq _021A3140
	bl ovy189_21a3660
_021A3140:
	add r0, r4, #0
	bl ovy189_21a3114
	pop {r4, pc}
	thumb_func_end ovy189_21a3130

	thumb_func_start ovy189_21a3148
ovy189_21a3148: ; 0x021A3148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl ovy11_216e2c8
	add r7, r0, #0
	ldr r0, [sp, #0x38]
	bl ovy11_216e2c8
	add r6, r0, #0
	ldr r0, [sp, #0x3c]
	bl ovy11_216e2c8
	add r4, r0, #0
	cmp r7, #0
	beq _021A3176
	cmp r6, #0
	beq _021A3176
	cmp r4, #0
	bne _021A318E
_021A3176:
	add r0, r7, #0
	bl ovy11_216ddfc
	add r0, r6, #0
	bl ovy11_216ddfc
	add r0, r4, #0
	bl ovy11_216ddfc
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A318E:
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [sp]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl ovy11_21715a4
	mov r1, #1
	ldr r0, [r5, #0x10]
	str r1, [r5, #0xc]
	cmp r0, #1
	bne _021A31C2
	str r1, [r5, #0x14]
_021A31C2:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a3148

	thumb_func_start ovy189_21a31c8
ovy189_21a31c8: ; 0x021A31C8
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #3
	str r1, [sp, #8]
	str r0, [sp]
	ldr r0, [r4]
	add r1, sp, #0
	bl ovy11_21715a4
	mov r1, #1
	ldr r0, [r4, #0xc]
	str r1, [r4, #0x10]
	cmp r0, #1
	bne _021A31E8
	str r1, [r4, #0x14]
_021A31E8:
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a31c8

	thumb_func_start sub_021A31F0
sub_021A31F0: ; 0x021A31F0
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021A31FE
	ldr r0, _021A3220 ; =0x021ADB20
	bx lr
_021A31FE:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021A3208
	ldr r0, _021A3224 ; =0x021ADB24
	bx lr
_021A3208:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021A3212
	ldr r0, _021A3228 ; =0x021ADB38
	bx lr
_021A3212:
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _021A321C
	ldr r0, _021A322C ; =0x021ADB7C
	bx lr
_021A321C:
	ldr r0, _021A3230 ; =0x021ADB88
	bx lr
	.align 2, 0
_021A3220: .word 0x021ADB20
_021A3224: .word 0x021ADB24
_021A3228: .word 0x021ADB38
_021A322C: .word 0x021ADB7C
_021A3230: .word 0x021ADB88
	thumb_func_end sub_021A31F0

	thumb_func_start ovy189_21a3234
ovy189_21a3234: ; 0x021A3234
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r5, #0
	str r0, [sp]
	ldr r0, [r0]
	bl sub_02171588
	add r7, r0, #0
	bne _021A324E
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A324E:
	add r6, r5, #0
	cmp r7, #0
	ble _021A328E
_021A3254:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0]
	bl sub_0217158C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _021A327C
	ldr r0, [r4, #4]
	blx sub_02085D9C
	add r1, r5, r0
	ldr r0, [r4, #0xc]
	add r1, r1, r0
	ldr r0, [r4, #0x14]
	lsl r0, r0, #1
	add r0, r1, r0
	add r5, r0, #1
	b _021A3288
_021A327C:
	cmp r0, #3
	bne _021A3288
	ldr r0, [r4, #8]
	bl ovy11_216fed0
	add r5, r5, r0
_021A3288:
	add r6, r6, #1
	cmp r6, r7
	blt _021A3254
_021A328E:
	sub r0, r7, #1
	add r0, r5, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a3234

	thumb_func_start ovy189_21a3294
ovy189_21a3294: ; 0x021A3294
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r7, [r0, r1]
	str r0, [sp]
	ldr r0, [r7, #0x14]
	mov r5, #0
	cmp r0, #0
	beq _021A32B6
	mov r0, #0xc
	str r0, [sp, #0x28]
	mov r0, #0xc
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	str r5, [sp, #0x20]
	b _021A32D2
_021A32B6:
	ldr r0, _021A34B0 ; =0x021ADBAC
	blx sub_02085D9C
	add r1, r0, #0
	str r1, [sp, #0x28]
	add r1, #0x2f
	str r1, [sp, #0x28]
	add r1, r0, #0
	str r1, [sp, #0x24]
	add r1, #0x4c
	add r0, r0, #4
	str r1, [sp, #0x24]
	str r5, [sp, #0x1c]
	str r0, [sp, #0x20]
_021A32D2:
	ldr r0, [r7]
	bl sub_02171588
	mov r6, #0
	str r0, [sp, #0x2c]
	cmp r0, #0
	bgt _021A32E2
	b _021A34A6
_021A32E2:
	ldr r0, [r7]
	add r1, r6, #0
	bl sub_0217158C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _021A3304
	ldr r0, [sp, #0x28]
	add r5, r5, r0
	ldr r0, [r4, #4]
	blx sub_02085D9C
	add r1, r5, r0
	ldr r0, [r4, #0xc]
	add r5, r1, r0
	b _021A349C
_021A3304:
	cmp r0, #1
	bne _021A339A
	ldr r0, [sp, #0x24]
	add r5, r5, r0
	ldr r0, [r4, #4]
	blx sub_02085D9C
	add r5, r5, r0
	ldr r0, [r4, #0x10]
	blx sub_02085D9C
	add r5, r5, r0
	mov r0, #0x5a
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0217158C
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x14]
	add r5, r5, r0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _021A3340
	ldr r0, [r4, #0xc]
	blx sub_02085D9C
	add r5, r5, r0
_021A3340:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021A3394
	ldr r0, [r4, #4]
	blx sub_02085D9C
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r1, r1, r2
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A3362
	add r5, r5, r0
_021A3362:
	ldr r0, [r4, #0x10]
	blx sub_02085D9C
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A337E
	add r5, r5, r0
_021A337E:
	ldr r0, [sp, #0x14]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	bne _021A3396
_021A3394:
	b _021A349C
_021A3396:
	add r5, r5, r0
	b _021A349C
_021A339A:
	cmp r0, #2
	bne _021A3422
	ldr r0, [sp, #0x24]
	add r5, r5, r0
	ldr r0, [r4, #4]
	str r0, [sp, #0xc]
	blx sub_02085D9C
	add r5, r5, r0
	ldr r0, [r4, #0x14]
	str r0, [sp, #8]
	blx sub_02085D9C
	add r1, r5, r0
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	add r5, r1, r0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _021A33CC
	ldr r0, [r4, #0x10]
	blx sub_02085D9C
	add r5, r5, r0
_021A33CC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021A349C
	ldr r0, [sp, #0xc]
	blx sub_02085D9C
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A33EE
	add r5, r5, r0
_021A33EE:
	ldr r0, [sp, #8]
	blx sub_02085D9C
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A340A
	add r5, r5, r0
_021A340A:
	ldr r0, [sp, #4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A349C
	b _021A3396
_021A3422:
	cmp r0, #3
	bne _021A3496
	ldr r0, [sp, #0x1c]
	add r5, r5, r0
	ldr r0, [r4, #8]
	bl ovy11_216fed0
	add r5, r5, r0
	ldr r0, [r4, #8]
	bl ovy11_216fed0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A344E
	add r5, r5, r0
_021A344E:
	ldr r0, _021A34B4 ; =0x021ADBD4
	blx sub_02085D9C
	add r5, r5, r0
	ldr r0, _021A34B4 ; =0x021ADBD4
	blx sub_02085D9C
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A3472
	add r5, r5, r0
_021A3472:
	ldr r0, _021A34B8 ; =0x021ADBDC
	blx sub_02085D9C
	add r5, r5, r0
	ldr r0, _021A34B8 ; =0x021ADBDC
	blx sub_02085D9C
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A349C
	b _021A3396
_021A3496:
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A349C:
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	cmp r6, r0
	bge _021A34A6
	b _021A32E2
_021A34A6:
	ldr r0, [sp, #0x20]
	add r0, r5, r0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A34B0: .word 0x021ADBAC
_021A34B4: .word 0x021ADBD4
_021A34B8: .word 0x021ADBDC
	thumb_func_end ovy189_21a3294

	thumb_func_start ovy189_21a34bc
ovy189_21a34bc: ; 0x021A34BC
	push {r3, lr}
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021A34CC
	mov r0, #0
	pop {r3, pc}
_021A34CC:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021A34D8
	bl ovy189_21a3294
	pop {r3, pc}
_021A34D8:
	bl ovy189_21a3234
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a34bc

	thumb_func_start ovy189_21a34e0
ovy189_21a34e0: ; 0x021A34E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	ldr r0, [r0]
	mvn r4, r4
	str r4, [r5, #4]
	cmp r0, #0
	beq _021A3536
	cmp r0, #1
	bne _021A352A
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021A3500
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3500:
	mov r1, #0
	mov r2, #2
	mov r6, #0
	blx sub_02083624
	cmp r0, #0
	beq _021A3512
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3512:
	ldr r0, [r5, #8]
	blx sub_02083358
	str r0, [r5, #0xc]
	cmp r0, r4
	bne _021A3522
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3522:
	ldr r0, [r5, #8]
	blx sub_02083740
	b _021A3536
_021A352A:
	cmp r0, #2
	beq _021A3536
	cmp r0, #3
	beq _021A3536
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3536:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a34e0

	thumb_func_start ovy189_21a353c
ovy189_21a353c: ; 0x021A353C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021A355A
	cmp r0, #1
	bne _021A355A
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A3556
	blx sub_02083108
_021A3556:
	mov r0, #0
	str r0, [r4, #8]
_021A355A:
	pop {r4, pc}
	thumb_func_end ovy189_21a353c

	thumb_func_start ovy189_21a355c
ovy189_21a355c: ; 0x021A355C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A3572
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A3572:
	mov r1, #0x59
	lsl r1, r1, #2
	mov r4, #0
	add r1, #8
	str r4, [r5, r1]
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, #0xc
	str r4, [r5, r1]
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, #0x10
	str r4, [r5, r1]
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, #0x20
	str r4, [r5, r1]
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r2, [r0, #4]
	add r1, #0x14
	str r2, [r5, r1]
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r2, [r0, #8]
	add r1, #0x18
	str r2, [r5, r1]
	ldr r0, [r0]
	bl sub_02171588
	add r7, r0, #0
	mov r0, #0x10
	add r1, r7, #0
	mov r2, #0
	bl ovy11_2171514
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r5, r1]
	cmp r0, #0
	bne _021A35CC
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021A35CC:
	cmp r7, #0
	ble _021A3638
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r0, #4
	add r6, sp, #4
	str r0, [sp]
_021A35DA:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0217158C
	mov r1, #0
	str r1, [r6]
	str r0, [sp, #4]
	add r0, r6, #0
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #0xc]
	bl ovy189_21a34e0
	cmp r0, #0
	bne _021A3628
	sub r4, r4, #1
	bmi _021A3616
	mov r6, #0x5a
	lsl r6, r6, #2
_021A3606:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0217158C
	bl ovy189_21a353c
	sub r4, r4, #1
	bpl _021A3606
_021A3616:
	mov r4, #0x5a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy11_2171558
	mov r0, #0
	add sp, #0x14
	str r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_021A3628:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl ovy11_21715a4
	add r4, r4, #1
	cmp r4, r7
	blt _021A35DA
_021A3638:
	add r0, r5, #0
	bl ovy189_21a34bc
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021A3654
	mov r0, #1
	b _021A3656
_021A3654:
	mov r0, #0
_021A3656:
	add r1, #0xc
	str r0, [r5, r1]
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a355c

	thumb_func_start ovy189_21a3660
ovy189_21a3660: ; 0x021A3660
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x5a
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A369A
	bl sub_02171588
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _021A368C
_021A367A:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0217158C
	bl ovy189_21a353c
	add r4, r4, #1
	cmp r4, r6
	blt _021A367A
_021A368C:
	mov r4, #0x5a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy11_2171558
	mov r0, #0
	str r0, [r5, r4]
_021A369A:
	mov r4, #0x59
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A36B2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021A36B2
	bl ovy189_21a3114
	mov r0, #0
	str r0, [r5, r4]
_021A36B2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a3660

	thumb_func_start ovy189_21a36b4
ovy189_21a36b4: ; 0x021A36B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	bne _021A36C8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A36C8:
	mov r3, #0x59
	ldr r0, [sp]
	lsl r3, r3, #2
	ldr r4, [r0, r3]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021A376C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021A376C
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _021A376C
	ldr r7, [r1, #8]
	ldr r1, _021A37C0 ; =0x021ACD74
	add r0, sp, #4
	ldrb r2, [r1]
	add r3, #0x34
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r1, [r1, #3]
	strb r1, [r0, #3]
	ldr r0, [sp]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _021A3708
	ldr r5, [sp]
	add r5, #0x58
	b _021A370C
_021A3708:
	ldr r5, [sp]
	add r5, #0x7c
_021A370C:
	mov r6, #0
	ldrsb r4, [r7, r6]
	cmp r4, #0
	beq _021A3784
_021A3714:
	ldr r0, _021A37C4 ; =0x021ADADC
	add r1, r4, #0
	blx sub_02086048
	cmp r0, #0
	beq _021A372A
	add r0, r5, #0
	add r1, r4, #0
_021A3724:
	bl ovy189_21a1824
	b _021A3762
_021A372A:
	cmp r4, #0x20
	bne _021A3734
	add r0, r5, #0
	mov r1, #0x2b
	b _021A3724
_021A3734:
	asr r0, r4, #3
	lsr r0, r0, #0x1c
	add r0, r4, r0
	asr r1, r0, #4
	ldr r0, _021A37C8 ; =0x021ADC08
	lsr r2, r4, #0x1f
	ldrsb r1, [r0, r1]
	add r0, sp, #4
	strb r1, [r0, #1]
	lsl r1, r4, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r1, r2, r1
	ldr r0, _021A37C8 ; =0x021ADC08
	mov r2, #3
	ldrsb r1, [r0, r1]
	add r0, sp, #4
	strb r1, [r0, #2]
	add r0, r5, #0
	add r1, sp, #4
	bl ovy189_21a162c
_021A3762:
	add r6, r6, #1
	ldrsb r4, [r7, r6]
	cmp r4, #0
	bne _021A3714
	b _021A3784
_021A376C:
	ldr r0, [sp]
	ldr r1, [r1, #8]
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A377E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A377E:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3784:
	mov r1, #0x66
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021A37BA
	ldr r0, [sp]
	bl ovy189_21a18cc
	cmp r0, #0
	bne _021A37A0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A37A0:
	ldr r0, [sp]
	ldr r1, [r0, #0x68]
	ldr r0, [r0, #0x64]
	cmp r1, r0
	bne _021A37B4
	ldr r0, [sp]
	add r0, #0x58
	str r0, [sp]
	bl sub_021A18B8
_021A37B4:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A37BA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A37C0: .word 0x021ACD74
_021A37C4: .word 0x021ADADC
_021A37C8: .word 0x021ADC08
	thumb_func_end ovy189_21a36b4

	thumb_func_start ovy189_21a37cc
ovy189_21a37cc: ; 0x021A37CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	mov r7, #0
	ldr r4, [r0, #8]
	add r0, sp, #0
	strb r7, [r0]
	strb r7, [r0, #1]
	strb r7, [r0, #2]
	mov r0, #0x59
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021A3808
	add r0, r4, #0
	bl ovy11_216fed0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #4
	sub r6, r0, r1
	cmp r6, #4
	bne _021A3808
	add r6, r7, #0
_021A3808:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021A388E
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A388E
	add r0, r4, #0
	bl ovy11_216fecc
	add r7, r0, #0
	add r0, r4, #0
	bl ovy11_216fed0
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x7c
	add r1, r7, #0
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A3860
	add r0, r5, #0
	add r0, #0x7c
	add r1, sp, #0
	add r2, r6, #0
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A3860
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x80
	add r2, #0x88
	add r0, r5, #0
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, #0x58
	bl ovy189_21a16c4
	cmp r0, #0
	bne _021A3864
_021A3860:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3864:
	add r0, r5, #0
	add r0, #0x7c
	bl sub_021A18B8
	add r0, r5, #0
	bl ovy189_21a18cc
	cmp r0, #0
	bne _021A387A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A387A:
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	bne _021A388A
	add r5, #0x58
	add r0, r5, #0
	bl sub_021A18B8
_021A388A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A388E:
	add r0, r4, #0
	bl ovy11_216fecc
	add r7, r0, #0
	add r0, r4, #0
	bl ovy11_216fed0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A38AE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A38AE:
	add r0, r5, #0
	add r1, sp, #0
	add r2, r6, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A38C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A38C0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a37cc

	thumb_func_start ovy189_21a38c4
ovy189_21a38c4: ; 0x021A38C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x24
	add r6, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, #3
	mov r7, #1
_021A38E2:
	mov r2, #1
	ldr r3, [r5, #8]
	add r0, r6, #0
	add r1, r7, #0
	lsl r2, r2, #0xc
	blx sub_02082CF4
	add r2, r0, #0
	cmp r2, #0
	bgt _021A3916
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #0x49
	add sp, #0x1fc
	lsl r0, r0, #2
	add sp, #0x1fc
	str r7, [r4, r0]
	mov r0, #0xe
	str r0, [r4, #0x40]
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A3916:
	ldr r0, [r5, #4]
	add r1, r0, r2
	ldr r0, [r5, #0xc]
	str r1, [r5, #4]
	cmp r1, r0
	ble _021A3942
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #0x49
	add sp, #0x1fc
	lsl r0, r0, #2
	add sp, #0x1fc
	str r7, [r4, r0]
	mov r0, #0xe
	str r0, [r4, #0x40]
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A3942:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A3964
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A3964:
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	cmp r1, r2
	bne _021A39D0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021A39BA
	lsr r3, r2, #0x1f
	lsl r2, r2, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r2, r3, r2
	mov r0, #4
	add r1, sp, #0
	mov r5, #0
	sub r2, r0, r2
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	cmp r2, #4
	beq _021A39BA
	cmp r2, #0
	ble _021A39BA
	add r0, r4, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A39BA
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x24
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_021A39BA:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A39D0:
	cmp r0, #1
	beq _021A38E2
	mov r0, #2
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a38c4

	thumb_func_start ovy189_21a39ec
ovy189_21a39ec: ; 0x021A39EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5]
	add r6, r1, #0
	ldr r3, [r2, #0xc]
	cmp r3, #0
	bne _021A3A02
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3A02:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021A3A88
	mov r7, #0
	mvn r7, r7
_021A3A10:
	ldr r4, [r5, #4]
	ldr r1, [r2, #8]
	add r0, r6, #0
	add r1, r1, r4
	sub r2, r3, r4
	bl ovy189_21a1c90
	cmp r0, r7
	bne _021A3A28
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3A28:
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r3, [r2, #0xc]
	cmp r3, r1
	bne _021A3A7E
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021A3A78
	add r1, sp, #0
	add r1, #3
	mov r4, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	ldr r0, [r2, #0xc]
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r2, r3, r2
	mov r0, #4
	sub r2, r0, r2
	cmp r2, #4
	beq _021A3A78
	cmp r2, #0
	ble _021A3A78
	add r0, r6, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A3A78
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3A78:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3A7E:
	cmp r0, #0
	bne _021A3A10
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A3A88:
	ldr r7, _021A3B08 ; =0x00003F01
_021A3A8A:
	ldr r1, [r5, #4]
	sub r4, r3, r1
	cmp r4, r7
	blt _021A3A94
	add r4, r7, #0
_021A3A94:
	ldr r2, [r2, #8]
	add r0, r6, #0
	add r1, r2, r1
	add r2, r4, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A3AAA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3AAA:
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r1, r1, r4
	str r1, [r5, #4]
	ldr r3, [r2, #0xc]
	cmp r3, r1
	bne _021A3AFE
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021A3AF8
	add r1, sp, #0
	mov r4, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	ldr r0, [r2, #0xc]
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r2, r3, r2
	mov r0, #4
	sub r2, r0, r2
	cmp r2, #4
	beq _021A3AF8
	cmp r2, #0
	ble _021A3AF8
	add r0, r6, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A3AF8
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3AF8:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A3AFE:
	cmp r0, #1
	beq _021A3A8A
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3B08: .word 0x00003F01
	thumb_func_end ovy189_21a39ec

	thumb_func_start ovy189_21a3b0c
ovy189_21a3b0c: ; 0x021A3B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x68
	add r5, r0, #0
	add r0, r2, #0
	mov r4, #0
	add r7, r1, #0
	ldr r2, [r5, #4]
	sub r1, r4, #1
	add r6, sp, #0x58
	str r3, [sp, #8]
	cmp r2, r1
	beq _021A3B2E
	b _021A3F48
_021A3B2E:
	mov r1, #0x59
	str r4, [r5, #4]
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	bne _021A3B54
	ldr r2, [r1, #0x10]
	cmp r2, #0
	bne _021A3B54
	cmp r0, #0
	add r0, sp, #0x58
	beq _021A3B50
	ldr r1, _021A3E70 ; =0x021ADC1C
_021A3B4A:
	ldr r2, [r5]
	ldr r2, [r2, #4]
	b _021A3E96
_021A3B50:
	ldr r1, _021A3E74 ; =0x021ADC20
	b _021A3B4A
_021A3B54:
	ldr r2, [r5]
	str r2, [sp, #0xc]
	ldr r2, [r2]
	cmp r2, #0
	bne _021A3B6C
	ldr r2, _021A3E78 ; =0x021ADC28
	cmp r0, #0
	bne _021A3B66
	ldr r2, _021A3E7C ; =0x021ADC50
_021A3B66:
	add r0, sp, #0x58
	ldr r1, _021A3E80 ; =0x021ADC7C
	b _021A3E92
_021A3B6C:
	cmp r2, #3
	beq _021A3B72
	b _021A3CEA
_021A3B72:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _021A3B7A
	b _021A3CE2
_021A3B7A:
	mov r2, #8
	add r1, sp, #0x40
	mov r4, #0
	strb r2, [r1, #0xc]
	cmp r0, #0
	beq _021A3B92
	add r0, r1, #0
	ldrb r1, [r0, #0xc]
	mov r0, #4
	orr r1, r0
	add r0, sp, #0x40
	strb r1, [r0, #0xc]
_021A3B92:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A3BA4
	add r0, sp, #0x40
	ldrb r1, [r0, #0xc]
	mov r0, #2
	orr r1, r0
	add r0, sp, #0x40
	strb r1, [r0, #0xc]
_021A3BA4:
	mov r1, #0x20
	add r0, sp, #0x40
	strb r1, [r0, #0xd]
	mov r1, #0
	strh r1, [r0, #0xe]
	ldr r0, _021A3E84 ; =0x021ADBD4
	blx sub_02085D9C
	str r0, [sp, #0x1c]
	ldr r0, _021A3E84 ; =0x021ADBD4
	blx sub_02085D9C
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #8
	lsr r2, r0, #8
	mov r0, #0xff
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r1, r0
	add r0, sp, #0x40
	strh r1, [r0, #0x10]
	ldr r0, _021A3E88 ; =0x021ADBDC
	blx sub_02085D9C
	str r0, [sp, #0x20]
	ldr r0, _021A3E88 ; =0x021ADBDC
	blx sub_02085D9C
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #8
	lsr r2, r0, #8
	mov r0, #0xff
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r1, r0
	add r0, sp, #0x40
	strh r1, [r0, #0x12]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl ovy11_216fed0
	str r0, [sp, #0x24]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl ovy11_216fed0
	str r0, [sp, #0x28]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl ovy11_216fed0
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl ovy11_216fed0
	mov ip, r0
	ldr r0, [sp, #0x24]
	mov r1, #0xff
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	and r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	mov r1, #0xff
	lsl r0, r0, #8
	lsl r1, r1, #0x10
	and r0, r1
	ldr r1, [sp, #0x2c]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, ip
	lsr r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	orr r1, r3
	orr r1, r0
	ldr r0, [sp, #0x38]
	add r2, sp, #0x58
	orr r0, r1
	str r0, [sp, #0x54]
	add r1, sp, #0x4c
	mov r0, #0xc
_021A3C72:
	ldrb r3, [r1]
	add r1, r1, #1
	strb r3, [r2]
	add r2, r2, #1
	sub r0, r0, #1
	bne _021A3C72
	mov r2, #2
	add r4, #0xc
	lsl r2, r2, #0xa
	ldr r1, _021A3E84 ; =0x021ADBD4
	add r0, r6, r4
	sub r2, r2, r4
	bl ovy11_216ee7c
	mov r1, #3
	add r4, r4, r0
	and r1, r0
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A3CB0
	sub r1, r0, #1
	cmp r0, #0
	ble _021A3CB0
	mov r0, #0
_021A3CA4:
	add r2, r1, #0
	strb r0, [r6, r4]
	add r4, r4, #1
	sub r1, r1, #1
	cmp r2, #0
	bgt _021A3CA4
_021A3CB0:
	mov r2, #2
	lsl r2, r2, #0xa
	ldr r1, _021A3E88 ; =0x021ADBDC
	add r0, r6, r4
	sub r2, r2, r4
	bl ovy11_216ee7c
	mov r1, #3
	add r4, r4, r0
	and r1, r0
	mov r0, #4
	sub r1, r0, r1
	cmp r1, #4
	beq _021A3CE0
	sub r0, r1, #1
	cmp r1, #0
	ble _021A3CE0
	mov r1, #0
_021A3CD4:
	add r2, r0, #0
	strb r1, [r6, r4]
	add r4, r4, #1
	sub r0, r0, #1
	cmp r2, #0
	bgt _021A3CD4
_021A3CE0:
	b _021A3E9A
_021A3CE2:
	mov r1, #0
	add r0, sp, #0x40
	strb r1, [r0, #0x18]
	b _021A3E9A
_021A3CEA:
	sub r3, r2, #1
	cmp r3, #1
	bls _021A3CF2
	b _021A3E9A
_021A3CF2:
	cmp r2, #1
	bne _021A3D02
	ldr r2, [r5, #0xc]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0xc]
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x10]
	b _021A3D0E
_021A3D02:
	ldr r2, [sp, #0xc]
	ldr r2, [r2, #0xc]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0xc]
	ldr r3, [r2, #0x10]
	ldr r2, [r2, #0x14]
_021A3D0E:
	str r2, [sp, #0x18]
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _021A3D18
	b _021A3E5E
_021A3D18:
	mov r2, #8
	add r1, sp, #0x40
	mov r4, #0
	add r6, sp, #0x58
	strb r2, [r1]
	cmp r0, #0
	beq _021A3D2E
	ldrb r2, [r1]
	mov r0, #4
	orr r0, r2
	strb r0, [r1]
_021A3D2E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A3D40
	add r0, sp, #0x40
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	add r0, sp, #0x40
	strb r1, [r0]
_021A3D40:
	mov r1, #0x10
	add r0, sp, #0x40
	strb r1, [r0, #1]
	mov r1, #0
	strh r1, [r0, #2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	str r0, [sp, #0x10]
	blx sub_02085D9C
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	blx sub_02085D9C
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #8
	lsr r2, r0, #8
	mov r0, #0xff
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r1, r0
	add r0, sp, #0x40
	strh r1, [r0, #4]
	ldr r0, [sp, #0x18]
	blx sub_02085D9C
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	blx sub_02085D9C
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #8
	lsr r2, r0, #8
	mov r0, #0xff
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	and r0, r2
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, sp, #0x40
	strh r1, [r0, #6]
	ldr r0, [sp, #0x14]
	mov r2, #0xff
	lsl r1, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	ldr r1, [sp, #0x14]
	lsl r2, r2, #0x10
	lsl r1, r1, #8
	add r3, r1, #0
	ldr r1, [sp, #0x14]
	and r3, r2
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x14]
	lsr r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r2, r1
	ldr r1, [sp, #0x3c]
	orr r1, r2
	orr r1, r3
	orr r0, r1
	str r0, [sp, #0x48]
	add r2, sp, #0x58
	add r1, sp, #0x40
	mov r0, #0xc
_021A3DEC:
	ldrb r3, [r1]
	add r1, r1, #1
	strb r3, [r2]
	add r2, r2, #1
	sub r0, r0, #1
	bne _021A3DEC
	ldr r1, [r5]
	mov r2, #2
	add r4, #0xc
	lsl r2, r2, #0xa
	ldr r1, [r1, #4]
	add r0, r6, r4
	sub r2, r2, r4
	bl ovy11_216ee7c
	mov r1, #3
	add r4, r4, r0
	and r1, r0
	mov r0, #4
	sub r0, r0, r1
	cmp r0, #4
	beq _021A3E2C
	sub r1, r0, #1
	cmp r0, #0
	ble _021A3E2C
	mov r0, #0
_021A3E20:
	add r2, r1, #0
	strb r0, [r6, r4]
	add r4, r4, #1
	sub r1, r1, #1
	cmp r2, #0
	bgt _021A3E20
_021A3E2C:
	mov r2, #2
	lsl r2, r2, #0xa
	ldr r1, [sp, #0x18]
	add r0, r6, r4
	sub r2, r2, r4
	bl ovy11_216ee7c
	mov r1, #3
	add r4, r4, r0
	and r1, r0
	mov r0, #4
	sub r1, r0, r1
	cmp r1, #4
	beq _021A3E9A
	sub r0, r1, #1
	cmp r1, #0
	ble _021A3E9A
	mov r1, #0
_021A3E50:
	add r2, r0, #0
	strb r1, [r6, r4]
	add r4, r4, #1
	sub r0, r0, #1
	cmp r2, #0
	bgt _021A3E50
	b _021A3E9A
_021A3E5E:
	ldr r2, _021A3E78 ; =0x021ADC28
	cmp r0, #0
	bne _021A3E66
	ldr r2, _021A3E7C ; =0x021ADC50
_021A3E66:
	ldr r0, [sp, #0x18]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021A3E8C ; =0x021ADCAC
	b _021A3E90
	.align 2, 0
_021A3E70: .word 0x021ADC1C
_021A3E74: .word 0x021ADC20
_021A3E78: .word 0x021ADC28
_021A3E7C: .word 0x021ADC50
_021A3E80: .word 0x021ADC7C
_021A3E84: .word 0x021ADBD4
_021A3E88: .word 0x021ADBDC
_021A3E8C: .word 0x021ADCAC
_021A3E90:
	add r0, sp, #0x58
_021A3E92:
	ldr r3, [sp, #0xc]
	ldr r3, [r3, #4]
_021A3E96:
	bl OS_SPrintf
_021A3E9A:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _021A3F06
	add r0, #0x10
	ldr r0, [r7, r0]
	cmp r0, #1
	bne _021A3F06
	cmp r4, #0
	bne _021A3EB8
	add r0, sp, #0x58
	blx sub_02085D9C
	add r4, r0, #0
_021A3EB8:
	add r0, r7, #0
	add r0, #0x58
	add r1, sp, #0x58
	add r2, r4, #0
	bl ovy189_21a16c4
	cmp r0, #0
	bne _021A3ED6
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3ED6:
	add r0, r7, #0
	bl ovy189_21a18cc
	cmp r0, #0
	bne _021A3EEE
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3EEE:
	ldr r1, [r7, #0x68]
	ldr r0, [r7, #0x64]
	cmp r1, r0
	bge _021A3F04
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A3F04:
	b _021A3F40
_021A3F06:
	cmp r4, #0
	bne _021A3F12
	add r0, sp, #0x58
	blx sub_02085D9C
	add r4, r0, #0
_021A3F12:
	add r0, r7, #0
	add r1, sp, #0x58
	add r2, r4, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A3F2E
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3F2E:
	cmp r0, #2
	bne _021A3F40
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A3F40:
	add r0, r7, #0
	add r0, #0x58
	bl sub_021A18B8
_021A3F48:
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _021A3F64
	add r0, r5, #0
	add r1, r7, #0
	bl ovy189_21a36b4
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_021A3F64:
	cmp r0, #3
	bne _021A3F7C
	add r0, r5, #0
	add r1, r7, #0
	bl ovy189_21a37cc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_021A3F7C:
	cmp r0, #1
	bne _021A3F94
	add r0, r5, #0
	add r1, r7, #0
	bl ovy189_21a38c4
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_021A3F94:
	add r0, r5, #0
	add r1, r7, #0
	bl ovy189_21a39ec
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a3b0c

	thumb_func_start ovy189_21a3fa8
ovy189_21a3fa8: ; 0x021A3FA8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x5a
	add r5, r0, #0
	lsl r6, r6, #2
	add r4, r5, r6
	ldr r0, [r4]
	bl sub_02171588
	str r0, [sp]
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	bge _021A4000
	add r0, r5, #0
	bl ovy189_21a18cc
	cmp r0, #0
	bne _021A3FD0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3FD0:
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	bge _021A3FDC
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A3FDC:
	add r0, r5, #0
	add r0, #0x58
	bl sub_021A18B8
	add r0, r6, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A3FF2
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A3FF2:
	add r0, r6, #4
	ldr r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bne _021A4000
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4000:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021A4050
	add r0, r1, #0
	sub r0, #0x1c
	ldr r2, [r5, r0]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021A401C
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _021A404C
_021A401C:
	ldr r6, _021A410C ; =0x021ADD00
	add r0, r6, #0
	blx sub_02085D9C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A4036
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4036:
	cmp r0, #2
	bne _021A403E
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A403E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A4050
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A404C:
	mov r0, #0
	str r0, [r5, r1]
_021A4050:
	ldr r1, [r4, #4]
	ldr r0, [sp]
	cmp r1, r0
	bge _021A409E
_021A4058:
	ldr r0, [r4]
	bl sub_0217158C
	add r7, r0, #0
	ldr r0, [r4]
	ldr r6, [r4, #4]
	bl sub_02171588
	sub r0, r0, #1
	mov r3, #1
	cmp r6, r0
	beq _021A4072
	mov r3, #0
_021A4072:
	mov r2, #1
	cmp r6, #0
	beq _021A407A
	mov r2, #0
_021A407A:
	add r0, r7, #0
	add r1, r5, #0
	bl ovy189_21a3b0c
	cmp r0, #0
	bne _021A408A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A408A:
	cmp r0, #2
	bne _021A4092
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A4092:
	ldr r0, [r4, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r4, #4]
	cmp r1, r0
	blt _021A4058
_021A409E:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A40D0
	add r0, r5, #0
	add r0, #0x88
	ldr r2, [r0]
	cmp r2, #0
	ble _021A40D0
	add r1, r5, #0
	add r1, #0x80
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0x58
	bl ovy189_21a16c4
	cmp r0, #0
	bne _021A40C8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A40C8:
	add r0, r5, #0
	add r0, #0x7c
	bl sub_021A18B8
_021A40D0:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021A40FC
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021A40FC
	ldr r4, _021A4110 ; =0x021ADD04
	add r0, r4, #0
	blx sub_02085D9C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a1d64
	cmp r0, #0
	bne _021A40FC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A40FC:
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	bge _021A4108
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A4108:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A410C: .word 0x021ADD00
_021A4110: .word 0x021ADD04
	thumb_func_end ovy189_21a3fa8

	thumb_func_start ovy189_21a4114
ovy189_21a4114: ; 0x021A4114
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _021A411E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A411E:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _021A4128
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4128:
	ldr r1, _021A41F4 ; =0x021ADD30
	add r0, r4, #0
	mov r2, #7
	blx sub_02086014
	cmp r0, #0
	bne _021A413E
	mov r0, #0
	str r0, [r5, #0x28]
	add r4, r4, #7
	b _021A4158
_021A413E:
	ldr r1, _021A41F8 ; =0x021ADD38
	add r0, r4, #0
	mov r2, #8
	blx sub_02086014
	cmp r0, #0
	bne _021A4154
	mov r0, #1
	str r0, [r5, #0x28]
	add r4, #8
	b _021A4158
_021A4154:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4158:
	ldr r1, _021A41FC ; =0x021ADD44
	add r0, r4, #0
	blx sub_02086080
	add r6, r0, #0
	ldrsb r7, [r4, r6]
	mov r0, #0
	strb r0, [r4, r6]
	add r0, r4, #0
	bl ovy11_216e2c8
	str r0, [r5, #0x18]
	cmp r0, #0
	bne _021A4178
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4178:
	strb r7, [r4, r6]
	add r4, r4, r6
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x3a
	bne _021A41A8
	add r4, r4, #1
	add r0, r4, #0
	blx sub_02087B00
	strh r0, [r5, #0x20]
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	bne _021A4198
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4198:
	mov r0, #0
_021A419A:
	add r4, r4, #1
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _021A41B6
	cmp r1, #0x2f
	bne _021A419A
	b _021A41B6
_021A41A8:
	ldr r0, [r5, #0x28]
	cmp r0, #1
	bne _021A41B2
	ldr r0, _021A4200 ; =0x000001BB
	b _021A41B4
_021A41B2:
	mov r0, #0x50
_021A41B4:
	strh r0, [r5, #0x20]
_021A41B6:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021A41C0
	ldr r4, _021A4204 ; =0x021ADD48
_021A41C0:
	add r0, r4, #0
	bl ovy11_216e2c8
	add r4, r0, #0
	mov r1, #0x20
	str r4, [r5, #0x24]
	blx sub_02086048
	cmp r0, #0
	beq _021A41E8
	mov r6, #0x2b
	mov r7, #0x20
_021A41D8:
	strb r6, [r0]
	ldr r4, [r5, #0x24]
	add r1, r7, #0
	add r0, r4, #0
	blx sub_02086048
	cmp r0, #0
	bne _021A41D8
_021A41E8:
	mov r0, #0
	cmp r4, #0
	beq _021A41F0
	mov r0, #1
_021A41F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A41F4: .word 0x021ADD30
_021A41F8: .word 0x021ADD38
_021A41FC: .word 0x021ADD44
_021A4200: .word 0x000001BB
_021A4204: .word 0x021ADD48
	thumb_func_end ovy189_21a4114

	thumb_func_start ovy189_21a4208
ovy189_21a4208: ; 0x021A4208
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021A42E8 ; =0x021ADD4C
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	mov r6, #8
	mov r4, #3
	bl ovy11_216cca8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r7, #0
	bl ovy189_21a19d8
	bl sub_0216E31C
	add r0, r5, #0
	bl ovy189_21a4114
	cmp r0, #0
	bne _021A4242
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	str r4, [r5, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
_021A4242:
	ldr r1, [r5, #0x28]
	cmp r1, #1
	bne _021A4268
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4268
	ldr r3, _021A42EC ; =0x021ADD64
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #2
	bl ovy11_216cca8
	ldr r0, [r5, #4]
	mov r1, #5
	bl ovy189_21a23d8
	b _021A428A
_021A4268:
	cmp r1, #1
	beq _021A428A
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A428A
	ldr r0, [r5, #4]
	mov r1, #0
	bl ovy189_21a23d8
	ldr r3, _021A42F0 ; =0x021ADDA4
	mov r0, #8
	mov r1, #0
	mov r2, #2
	bl ovy11_216cca8
_021A428A:
	ldr r0, [r5, #0x28]
	cmp r0, #1
	bne _021A42D6
	mov r4, #0x67
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A42D6
	ldr r3, _021A42F4 ; =0x021ADDE4
	mov r0, #8
	mov r1, #3
	mov r2, #0xf
	mov r6, #8
	mov r7, #3
	bl ovy11_216cca8
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0x18
	sub r1, #8
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	blx r2
	cmp r0, #3
	bne _021A42D6
	ldr r3, _021A42F8 ; =0x021ADE00
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #2
	bl ovy11_216cca8
	mov r0, #1
	sub r4, #0x78
	str r0, [r5, r4]
	mov r0, #0x11
	str r0, [r5, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
_021A42D6:
	mov r0, #1
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A42E8: .word 0x021ADD4C
_021A42EC: .word 0x021ADD64
_021A42F0: .word 0x021ADDA4
_021A42F4: .word 0x021ADDE4
_021A42F8: .word 0x021ADE00
	thumb_func_end ovy189_21a4208

	thumb_func_start ovy189_21a42fc
ovy189_21a42fc: ; 0x021A42FC
	push {r4, r5, r6, lr}
	mov r4, #0x73
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _021A4318
	mov r1, #2
	str r1, [r5, #0x10]
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	pop {r4, r5, r6, pc}
_021A4318:
	ldr r3, _021A439C ; =0x021ADE24
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	sub r4, #0x40
	ldr r4, [r5, r4]
	cmp r4, #0
	bne _021A4336
	ldr r0, _021A43A0 ; =0x021B286C
	ldr r4, [r0]
	cmp r4, #0
	bne _021A4336
	ldr r4, [r5, #0x18]
_021A4336:
	add r0, r4, #0
	bl sub_0216DF90
	mov r6, #0
	mvn r6, r6
	str r0, [r5, #0x1c]
	cmp r0, r6
	bne _021A4372
	add r0, r4, #0
	mov r4, #0x73
	lsl r4, r4, #2
	add r1, r5, r4
	bl ovy11_216e26c
	cmp r0, r6
	bne _021A4372
	ldr r3, _021A43A4 ; =0x021ADE34
	mov r0, #8
	mov r1, #3
	mov r2, #1
	mov r6, #1
	bl ovy11_216cca8
	mov r0, #0
	str r0, [r5, r4]
	sub r4, #0xa8
	str r6, [r5, r4]
	mov r0, #4
	str r0, [r5, #0x40]
	pop {r4, r5, r6, pc}
_021A4372:
	mov r0, #0
	ldr r1, [r5, #0x1c]
	mvn r0, r0
	cmp r1, r0
	bne _021A438C
	mov r0, #2
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	pop {r4, r5, r6, pc}
_021A438C:
	mov r0, #3
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A439C: .word 0x021ADE24
_021A43A0: .word 0x021B286C
_021A43A4: .word 0x021ADE34
	thumb_func_end ovy189_21a42fc

	thumb_func_start ovy189_21a43a8
ovy189_21a43a8: ; 0x021A43A8
	push {r4, r5, r6, lr}
	mov r4, #0x73
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy11_216e2bc
	mov r1, #0
	mvn r1, r1
	str r0, [r5, #0x1c]
	cmp r0, r1
	bne _021A43DC
	ldr r3, _021A4410 ; =0x021ADE4C
	mov r0, #8
	mov r1, #3
	mov r2, #1
	mov r6, #1
	bl ovy11_216cca8
	mov r0, #0
	str r0, [r5, r4]
	sub r4, #0xa8
	str r6, [r5, r4]
	mov r0, #4
	str r0, [r5, #0x40]
	pop {r4, r5, r6, pc}
_021A43DC:
	cmp r0, #0
	bne _021A43F0
	mov r0, #2
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	pop {r4, r5, r6, pc}
_021A43F0:
	mov r0, #0
	str r0, [r5, r4]
	ldr r3, _021A4414 ; =0x021ADE68
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	mov r4, #3
	bl ovy11_216cca8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	str r4, [r5, #0x10]
	bl ovy189_21a19d8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A4410: .word 0x021ADE4C
_021A4414: .word 0x021ADE68
	thumb_func_end ovy189_21a43a8

	thumb_func_start ovy189_21a4418
ovy189_21a4418: ; 0x021A4418
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _021A45B8 ; =0x021ADE80
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	mov r4, #0x10
	bl ovy11_216cca8
	ldr r0, [r5, #0x50]
	sub r4, #0x11
	cmp r0, r4
	beq _021A4436
	b _021A4548
_021A4436:
	mov r0, #2
	mov r1, #1
	mov r6, #0
	mov r2, #0
	mov r4, #1
	bl sub_0216DE20
	sub r1, r6, #1
	str r0, [r5, #0x50]
	cmp r0, r1
	bne _021A4460
	mov r1, #0x49
	lsl r1, r1, #2
	str r4, [r5, r1]
	mov r1, #5
	str r1, [r5, #0x40]
	bl ovy11_0216DFA8
	add sp, #0x10
	str r0, [r5, #0x54]
	pop {r4, r5, r6, pc}
_021A4460:
	add r1, r6, #0
	bl ovy11_216e054
	cmp r0, #0
	bne _021A4480
	mov r0, #0x49
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #5
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	add sp, #0x10
	str r0, [r5, #0x54]
	pop {r4, r5, r6, pc}
_021A4480:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A4494
	ldr r1, _021A45BC ; =0x021AD304
	ldr r0, [r5, #0x50]
	ldr r1, [r1]
	bl ovy11_216e0d0
_021A4494:
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #4
	bne _021A44C2
	add r2, r4, #0
	add r2, #0x24
	sub r1, r4, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	blx r2
	cmp r0, #3
	bne _021A44BE
	mov r0, #1
	sub r4, #0x74
	str r0, [r5, r4]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r5, #0x40]
	pop {r4, r5, r6, pc}
_021A44BE:
	mov r0, #0
	str r0, [r5, r4]
_021A44C2:
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #9]
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021A44E0
	add r1, r1, #4
	ldrh r2, [r5, r1]
	b _021A44F0
_021A44E0:
	ldr r1, _021A45C0 ; =0x021B286C
	ldr r1, [r1]
	cmp r1, #0
	beq _021A44EE
	ldr r1, _021A45C4 ; =0x021B2868
	ldrh r2, [r1]
	b _021A44F0
_021A44EE:
	ldrh r2, [r5, #0x20]
_021A44F0:
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xff
	lsl r2, r2, #8
	lsl r1, r1, #8
	and r1, r2
	orr r1, r3
	strh r1, [r0, #0xa]
	ldr r0, [r5, #0x1c]
	add r1, sp, #8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x50]
	mov r2, #8
	mov r4, #8
	bl ovy11_216dec4
	mov r1, #8
	sub r1, #9
	cmp r0, r1
	bne _021A4548
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	add r1, r4, #0
	sub r1, #0xe
	cmp r0, r1
	beq _021A4548
	add r1, r4, #0
	sub r1, #0x22
	cmp r0, r1
	beq _021A4548
	sub r4, #0x54
	cmp r0, r4
	beq _021A4548
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r5, r1]
	mov r1, #6
	add sp, #0x10
	str r1, [r5, #0x40]
	str r0, [r5, #0x54]
	pop {r4, r5, r6, pc}
_021A4548:
	ldr r0, [r5, #0x50]
	mov r4, #0
	mov r1, #0
	add r2, sp, #4
	add r3, sp, #0
	bl sub_0216DFB4
	sub r1, r4, #1
	cmp r0, r1
	beq _021A4566
	cmp r0, #1
	bne _021A458C
	ldr r1, [sp]
	cmp r1, #0
	beq _021A458C
_021A4566:
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r5, r1]
	mov r1, #6
	str r1, [r5, #0x40]
	sub r1, r1, #7
	cmp r0, r1
	bne _021A4584
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	add sp, #0x10
	str r0, [r5, #0x54]
	pop {r4, r5, r6, pc}
_021A4584:
	mov r0, #0
	add sp, #0x10
	str r0, [r5, #0x54]
	pop {r4, r5, r6, pc}
_021A458C:
	cmp r0, #1
	bne _021A45B2
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A45B2
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A45A4
	mov r0, #5
	b _021A45A6
_021A45A4:
	mov r0, #4
_021A45A6:
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A45B2:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021A45B8: .word 0x021ADE80
_021A45BC: .word 0x021AD304
_021A45C0: .word 0x021B286C
_021A45C4: .word 0x021B2868
	thumb_func_end ovy189_21a4418

	thumb_func_start ovy189_21a45c8
ovy189_21a45c8: ; 0x021A45C8
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x10
	mov r5, #0x1a
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021A4632
	ldr r3, _021A4724 ; =0x021ADE8C
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	add r0, r5, #0
	add r0, #0x1c
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021A4612
	add r1, r5, #0
	sub r1, #0xc
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #3
	bne _021A4612
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #1
	sub r5, #0x7c
	str r0, [r4, r5]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_021A4612:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A4632
	mov r0, #5
	str r0, [r4, #0x10]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021A4632:
	mov r5, #0x1b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A4686
	add r0, r5, #0
	add r0, #0xc
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021A4666
	add r1, r5, #0
	sub r1, #0x1c
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #3
	bne _021A4666
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #1
	sub r5, #0x8c
	str r0, [r4, r5]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_021A4666:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A471C
	mov r0, #5
	str r0, [r4, #0x10]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021A4686:
	ldr r1, [r4, #0x68]
	ldr r0, [r4, #0x64]
	cmp r1, r0
	bge _021A46A8
	add r0, r4, #0
	bl ovy189_21a18cc
	cmp r0, #0
	beq _021A471C
	ldr r1, [r4, #0x68]
	ldr r0, [r4, #0x64]
	cmp r1, r0
	blt _021A471C
	add r0, r4, #0
	add r0, #0x58
	bl sub_021A18B8
_021A46A8:
	ldr r0, _021A4728 ; =0x00000401
	add r5, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ovy189_21a1b5c
	sub r1, r0, #2
	cmp r1, #1
	bhi _021A46D2
	mov r0, #0x49
	add sp, #0x1fc
	add sp, #0x1fc
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_021A46D2:
	cmp r0, #0
	bne _021A471C
	add r0, r4, #0
	ldr r2, [sp]
	add r0, #0xc4
	add r1, r5, #0
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A471C
	add r0, r4, #0
	bl ovy189_21a1a54
	cmp r0, #0
	bne _021A4704
	mov r0, #0x49
	add sp, #0x1fc
	add sp, #0x1fc
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_021A4704:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A471C
	mov r0, #5
	str r0, [r4, #0x10]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A471C:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A4724: .word 0x021ADE8C
_021A4728: .word 0x00000401
	thumb_func_end ovy189_21a45c8

	thumb_func_start ovy189_21a472c
ovy189_21a472c: ; 0x021A472C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _021A48FC ; =0x021ADEA0
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021A4746
	b _021A48BA
_021A4746:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021A4758
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A475E
_021A4758:
	add r4, r5, #0
	add r4, #0x58
	b _021A4762
_021A475E:
	add r4, r5, #0
	add r4, #0x7c
_021A4762:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021A4778
	add r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4778
	ldr r1, _021A4900 ; =0x021ADEB4
	b _021A4782
_021A4778:
	ldr r0, [r5, #0xc]
	ldr r1, _021A4904 ; =0x021ADEBC
	cmp r0, #3
	beq _021A4782
	ldr r1, _021A4908 ; =0x021ADEC4
_021A4782:
	add r0, r4, #0
	mov r2, #0
	mov r6, #0
	bl ovy189_21a162c
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A479E
	ldr r0, _021A490C ; =0x021B286C
	ldr r0, [r0]
	cmp r0, #0
	beq _021A47A6
_021A479E:
	add r0, r4, #0
	ldr r1, [r5, #0x14]
	mov r2, #0
	b _021A47AC
_021A47A6:
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	add r2, r6, #0
_021A47AC:
	bl ovy189_21a162c
	ldr r1, _021A4910 ; =0x021ADECC
	add r0, r4, #0
	mov r2, #0
	mov r6, #0
	bl ovy189_21a162c
	ldrh r0, [r5, #0x20]
	cmp r0, #0x50
	bne _021A47CE
	ldr r1, _021A4914 ; =0x021ADED8
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl ovy189_21a17cc
	b _021A47FC
_021A47CE:
	ldr r1, _021A4918 ; =0x021ADEE0
	add r0, r4, #0
	add r2, r6, #0
	bl ovy189_21a162c
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	add r2, r6, #0
	bl ovy189_21a162c
	add r0, r4, #0
	mov r1, #0x3a
	bl ovy189_21a1824
	ldrh r1, [r5, #0x20]
	add r0, r4, #0
	bl ovy189_21a1894
	ldr r1, _021A491C ; =0x021ADEE8
	add r0, r4, #0
	mov r2, #2
	bl ovy189_21a162c
_021A47FC:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021A480C
	ldr r1, _021A4920 ; =0x021ADEEC
	blx sub_02086140
	cmp r0, #0
	bne _021A4816
_021A480C:
	ldr r1, _021A4920 ; =0x021ADEEC
	ldr r2, _021A4924 ; =0x021ADEF8
	add r0, r4, #0
	bl ovy189_21a17cc
_021A4816:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021A4824
	add r0, r4, #0
	ldr r1, _021A4928 ; =0x021ADF08
	ldr r2, _021A492C ; =0x021ADF14
	b _021A482A
_021A4824:
	ldr r1, _021A4928 ; =0x021ADF08
	ldr r2, _021A4930 ; =0x021ADF20
	add r0, r4, #0
_021A482A:
	bl ovy189_21a17cc
	mov r2, #0x59
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	cmp r0, #0
	beq _021A486A
	add r0, r2, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A486A
	add r2, #0x10
	add r6, sp, #0
	ldr r1, _021A4934 ; =0x021ADF28
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl OS_SPrintf
	ldr r1, _021A4938 ; =0x021ADF2C
	add r0, r4, #0
	add r2, r6, #0
	bl ovy189_21a17cc
	add r0, r5, #0
	bl sub_021A31F0
	add r2, r0, #0
	ldr r1, _021A493C ; =0x021ADF3C
	add r0, r4, #0
	bl ovy189_21a17cc
_021A486A:
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq _021A4878
	add r0, r4, #0
	mov r2, #0
	bl ovy189_21a162c
_021A4878:
	ldr r1, _021A491C ; =0x021ADEE8
	add r0, r4, #0
	mov r2, #2
	bl ovy189_21a162c
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A48BA
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A48BA
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r0, #0x58
	bl ovy189_21a16c4
	cmp r0, #0
	bne _021A48B4
	mov r0, #1
	sub r6, #0x74
	str r0, [r5, r6]
	mov r0, #0x11
	add sp, #0x10
	str r0, [r5, #0x40]
	pop {r4, r5, r6, pc}
_021A48B4:
	add r0, r4, #0
	bl sub_021A18B8
_021A48BA:
	add r0, r5, #0
	bl ovy189_21a18cc
	cmp r0, #0
	beq _021A48F8
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x64]
	cmp r1, r0
	blt _021A48F8
	add r0, r5, #0
	add r0, #0x58
	bl sub_021A18B8
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021A48EA
	add r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A48EA
	mov r0, #6
	b _021A48EC
_021A48EA:
	mov r0, #7
_021A48EC:
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A48F8:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A48FC: .word 0x021ADEA0
_021A4900: .word 0x021ADEB4
_021A4904: .word 0x021ADEBC
_021A4908: .word 0x021ADEC4
_021A490C: .word 0x021B286C
_021A4910: .word 0x021ADECC
_021A4914: .word 0x021ADED8
_021A4918: .word 0x021ADEE0
_021A491C: .word 0x021ADEE8
_021A4920: .word 0x021ADEEC
_021A4924: .word 0x021ADEF8
_021A4928: .word 0x021ADF08
_021A492C: .word 0x021ADF14
_021A4930: .word 0x021ADF20
_021A4934: .word 0x021ADF28
_021A4938: .word 0x021ADF2C
_021A493C: .word 0x021ADF3C
	thumb_func_end ovy189_21a472c

	thumb_func_start ovy189_21a4940
ovy189_21a4940: ; 0x021A4940
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021A49CC ; =0x021ADF4C
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	mov r4, #0x17
	lsl r4, r4, #4
	add r0, r5, #0
	ldr r7, [r5, r4]
	bl ovy189_21a3fa8
	add r6, r0, #0
	bne _021A4990
	mov r4, #0
	str r4, [sp]
	add r0, r5, #0
	bl ovy189_21a3660
	ldr r0, [r5, #0x50]
	add r1, sp, #0
	mov r2, #0
	mov r3, #0
	bl sub_0216DFB4
	cmp r0, #1
	bne _021A49C8
	ldr r0, [sp]
	cmp r0, #0
	beq _021A49C8
	mov r0, #8
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	bl ovy189_21a19d8
	pop {r3, r4, r5, r6, r7, pc}
_021A4990:
	cmp r6, #3
	bne _021A499C
	mov r0, #0
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A499C:
	ldr r0, [r5, r4]
	cmp r7, r0
	beq _021A49A8
	add r0, r5, #0
	bl ovy189_21a1a08
_021A49A8:
	cmp r6, #1
	bne _021A49C8
	add r0, r5, #0
	bl ovy189_21a3660
	mov r0, #0x61
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #7
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A49C8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A49CC: .word 0x021ADF4C
	thumb_func_end ovy189_21a4940

	thumb_func_start ovy189_21a49d0
ovy189_21a49d0: ; 0x021A49D0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _021A4A44 ; =0x021ADF58
	add r4, r0, #0
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	ldr r0, [r4, #0x50]
	add r1, sp, #4
	mov r5, #0
	mov r2, #0
	add r3, sp, #0
	bl sub_0216DFB4
	sub r1, r5, #1
	cmp r0, r1
	beq _021A4A00
	cmp r0, #1
	bne _021A4A26
	ldr r1, [sp]
	cmp r1, #0
	beq _021A4A26
_021A4A00:
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r1, #5
	str r1, [r4, #0x40]
	sub r1, r1, #6
	cmp r0, r1
	bne _021A4A1E
	ldr r0, [r4, #0x50]
	bl ovy11_0216DFA8
	add sp, #8
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021A4A1E:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021A4A26:
	cmp r0, #1
	bne _021A4A3E
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A4A3E
	mov r0, #8
	str r0, [r4, #0x10]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A4A3E:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A4A44: .word 0x021ADF58
	thumb_func_end ovy189_21a49d0

	thumb_func_start ovy189_21a4a48
ovy189_21a4a48: ; 0x021A4A48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r1, _021A4AF0 ; =0x021ADF64
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_0207FA4C
	cmp r0, #3
	bne _021A4A80
	ldr r0, [sp, #0x14]
	mov ip, r0
	cmp r0, #1
	blt _021A4A80
	ldr r1, [sp, #0xc]
	cmp r1, #0x64
	blt _021A4A80
	mov r0, #0x96
	lsl r0, r0, #2
	cmp r1, r0
	blt _021A4A92
_021A4A80:
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #7
	str r0, [r4, #0x40]
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4A92:
	mov r0, #1
	mov r7, #0
	mov r6, #1
	ldr r1, _021A4AF4 ; =0x02098D60
	ldr r2, [sp, #8]
	add r0, #0xff
	b _021A4AA4
_021A4AA0:
	add r2, r2, #1
	str r2, [sp, #8]
_021A4AA4:
	add r3, r4, #0
	add r3, #0xa4
	ldr r3, [r3]
	ldrsb r3, [r3, r2]
	cmp r3, #0
	beq _021A4ACE
	add r5, r6, #0
	cmp r3, #0
	blt _021A4ABC
	cmp r3, #0x80
	bge _021A4ABC
	add r5, r7, #0
_021A4ABC:
	cmp r5, #0
	beq _021A4AC4
	mov r3, #0
	b _021A4ACA
_021A4AC4:
	lsl r3, r3, #1
	ldrh r3, [r1, r3]
	and r3, r0
_021A4ACA:
	cmp r3, #0
	bne _021A4AA0
_021A4ACE:
	mov r1, #0x11
	lsl r1, r1, #4
	mov r0, ip
	str r0, [r4, r1]
	ldr r2, [sp, #0x10]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, [sp, #0xc]
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #8]
	add r1, #0xc
	str r0, [r4, r1]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4AF0: .word 0x021ADF64
_021A4AF4: .word 0x02098D60
	thumb_func_end ovy189_21a4a48

	thumb_func_start ovy189_21a4af8
ovy189_21a4af8: ; 0x021A4AF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	ldr r3, _021A4C24 ; =0x021ADF74
	add r5, r0, #0
	mov r0, #8
	mov r1, #3
	mov r4, #0x10
	mov r2, #0x10
	bl ovy11_216cca8
	lsl r0, r4, #6
	add r7, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ovy189_21a1b5c
	add r4, r0, #0
	cmp r4, #3
	beq _021A4C1C
	cmp r4, #1
	beq _021A4C1C
	cmp r4, #0
	bne _021A4B7E
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A4B6E
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A4B6E
	add r0, r5, #0
	ldr r2, [sp]
	add r0, #0xc4
	add r1, r7, #0
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A4C1C
	add r0, r5, #0
	bl ovy189_21a1a54
	cmp r0, #0
	bne _021A4B7E
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #1
	sub r6, #0x74
	str r0, [r5, r6]
	mov r0, #0x11
	add sp, #0xc
	str r0, [r5, #0x40]
	pop {r4, r5, r6, r7, pc}
_021A4B6E:
	add r0, r5, #0
	ldr r2, [sp]
	add r0, #0xa0
	add r1, sp, #4
	bl ovy189_21a162c
	cmp r0, #0
	beq _021A4C1C
_021A4B7E:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r1, _021A4C28 ; =0x021ADEE8
	blx sub_02086140
	cmp r0, #0
	beq _021A4C04
	mov r6, #0
	add r1, r5, #0
	strb r6, [r0]
	add r1, #0xa4
	ldr r1, [r1]
	sub r4, r0, r1
	add r0, r5, #0
	bl ovy189_21a4a48
	cmp r0, #0
	beq _021A4C1C
	mov r1, #0x12
	add r0, r4, #2
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0x64
	bne _021A4BEE
	add r0, r1, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A4BEE
	add r0, r5, #0
	add r1, #0x60
	add r0, #0xa0
	str r6, [r5, r1]
	bl sub_021A18B8
	mov r0, #6
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy189_21a19d8
	ldr r3, _021A4C2C ; =0x021ADF88
	mov r0, #8
	add r1, r6, #0
	mov r2, #0x10
	bl ovy11_216cca8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A4BEE:
	mov r0, #9
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A4C04:
	cmp r4, #2
	bne _021A4C1C
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #7
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	str r0, [r5, #0x54]
_021A4C1C:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A4C24: .word 0x021ADF74
_021A4C28: .word 0x021ADEE8
_021A4C2C: .word 0x021ADF88
	thumb_func_end ovy189_21a4af8

	thumb_func_start ovy189_21a4c30
ovy189_21a4c30: ; 0x021A4C30
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x4a
	lsl r5, r5, #2
	add r4, r0, #0
	ldr r0, [r4, r5]
	add r3, r1, #0
	add r0, r0, r2
	str r0, [r4, r5]
	add r6, r5, #4
	ldr r6, [r4, r6]
	mov r1, #0
	mov r7, #0
	cmp r0, r6
	beq _021A4C54
	add r5, #0x30
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A4C5C
_021A4C54:
	mov r0, #0x49
	mov r5, #1
	lsl r0, r0, #2
	str r5, [r4, r0]
_021A4C5C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021A4C82
	add r0, r4, #0
	add r0, #0xe8
	add r1, r3, #0
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A4C74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4C74:
	add r0, r4, #0
	add r0, #0xec
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldr r7, [r0]
	b _021A4CA4
_021A4C82:
	cmp r0, #1
	bne _021A4C9C
	cmp r2, #0
	beq _021A4C9A
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xd
	str r0, [r4, #0x40]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4C9A:
	b _021A4CA0
_021A4C9C:
	cmp r0, #2
	bne _021A4CA4
_021A4CA0:
	add r1, r3, #0
	add r7, r2, #0
_021A4CA4:
	add r0, r4, #0
	add r2, r7, #0
	bl ovy189_21a19d8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a4c30

	thumb_func_start ovy189_21a4cb0
ovy189_21a4cb0: ; 0x021A4CB0
	push {r3, lr}
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, _021A4CD0 ; =0x021ADF9C
	add r2, sp, #0
	bl sub_0207FA4C
	cmp r0, #1
	beq _021A4CCA
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021A4CCA:
	ldr r0, [sp]
	pop {r3, pc}
	nop
_021A4CD0: .word 0x021ADF9C
	thumb_func_end ovy189_21a4cb0

	thumb_func_start ovy189_21a4cd4
ovy189_21a4cd4: ; 0x021A4CD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r2, #0
	beq _021A4D12
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0xa
	bge _021A4D12
	mov r3, #0xa
	sub r4, r3, r0
	cmp r4, r2
	blt _021A4CF0
	add r4, r2, #0
_021A4CF0:
	mov r6, #0x4f
	lsl r6, r6, #2
	add r2, r5, r6
	add r0, r2, r0
	add r2, r4, #0
	blx sub_02083964
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r0, r4
	add r0, r6, #0
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r5, r2
	strb r1, [r0, r6]
_021A4D12:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a4cd4

	thumb_func_start ovy189_21a4d14
ovy189_21a4d14: ; 0x021A4D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r3, #0x4e
	lsl r3, r3, #2
	add r5, r0, #0
	str r3, [sp, #4]
	ldr r3, [r5, r3]
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #0
	bne _021A4D2C
	b _021A4EBA
_021A4D2C:
	cmp r6, #0
	bgt _021A4D32
	b _021A4EB4
_021A4D32:
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	add r0, #0x14
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x28]
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	str r0, [sp, #0x24]
	add r0, #0x14
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	add r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
_021A4D86:
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A4E0A
	add r0, r4, #0
	mov r1, #0xa
	blx sub_02086048
	add r7, r0, #0
	beq _021A4DFA
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r7, r4
	bl ovy189_21a4cd4
	add r0, r7, #1
	sub r1, r0, r4
	add r4, r0, #0
	add r0, r5, #0
	sub r6, r6, r1
	bl ovy189_21a4cb0
	ldr r1, [sp, #0xc]
	str r0, [r5, r1]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A4DD0
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #7
	str r0, [r5, #0x40]
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4DD0:
	cmp r0, #0
	bne _021A4DE8
	ldr r0, [sp, #0x10]
	mov r1, #3
	str r1, [r5, r0]
	ldr r3, _021A4EC4 ; =0x021ADFA0
	mov r0, #8
	mov r1, #0
	mov r2, #0x20
_021A4DE2:
	bl ovy11_216cca8
	b _021A4EAE
_021A4DE8:
	ldr r1, [sp, #0x14]
	mov r2, #1
	str r2, [r5, r1]
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #0x20
	ldr r3, _021A4EC8 ; =0x021ADFB0
	b _021A4DE2
_021A4DFA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_21a4cd4
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4E0A:
	cmp r0, #1
	bne _021A4E52
	ldr r0, [sp, #0x18]
	ldr r7, [r5, r0]
	cmp r7, r6
	blt _021A4E18
	add r7, r6, #0
_021A4E18:
	ldr r3, _021A4ECC ; =0x021ADFC8
	mov r0, #8
	mov r1, #0
	mov r2, #0x20
	str r7, [sp]
	bl ovy11_216cca8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy189_21a4c30
	cmp r0, #0
	bne _021A4E3A
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4E3A:
	ldr r0, [sp, #8]
	add r4, r4, r7
	ldr r0, [r5, r0]
	sub r6, r6, r7
	sub r1, r0, r7
	ldr r0, [sp, #8]
	str r1, [r5, r0]
	bne _021A4EAE
	ldr r0, [sp, #0x1c]
	mov r1, #2
	str r1, [r5, r0]
	b _021A4EAE
_021A4E52:
	cmp r0, #2
	bne _021A4E8A
	add r0, r4, #0
	mov r1, #0xa
	blx sub_02086048
	cmp r0, #0
	bne _021A4E68
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4E68:
	add r0, r0, #1
	sub r1, r0, r4
	add r4, r0, #0
	sub r6, r6, r1
	ldr r0, [sp, #0x2c]
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x28]
	mov r2, #0x20
	str r1, [r5, r0]
	ldr r0, [sp, #0x24]
	ldr r3, _021A4ED0 ; =0x021ADFE0
	str r1, [r5, r0]
	ldr r0, [sp, #0x20]
	str r1, [r5, r0]
	mov r0, #8
	b _021A4DE2
_021A4E8A:
	cmp r0, #3
	bne _021A4EA8
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r3, _021A4ED4 ; =0x021ADFF4
	mov r0, #8
	mov r1, #0
	mov r2, #0x20
	bl ovy11_216cca8
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4EA8:
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4EAE:
	cmp r6, #0
	ble _021A4EB4
	b _021A4D86
_021A4EB4:
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4EBA:
	bl ovy189_21a4c30
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4EC4: .word 0x021ADFA0
_021A4EC8: .word 0x021ADFB0
_021A4ECC: .word 0x021ADFC8
_021A4ED0: .word 0x021ADFE0
_021A4ED4: .word 0x021ADFF4
	thumb_func_end ovy189_21a4d14

	thumb_func_start ovy189_21a4ed8
ovy189_21a4ed8: ; 0x021A4ED8
	push {r3, lr}
	cmp r0, #0
	beq _021A4EE2
	bl ovy11_216ddfc
_021A4EE2:
	pop {r3, pc}
	thumb_func_end ovy189_21a4ed8

	thumb_func_start ovy189_21a4ee4
ovy189_21a4ee4: ; 0x021A4EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #1
	lsl r6, r4, #0xc
	add r5, r0, #0
	add r0, r6, #0
	bl ovy11_216dddc
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _021A4F06
	mov r0, #0x49
	lsl r0, r0, #2
	str r4, [r5, r0]
	add sp, #0x2c
	str r4, [r5, #0x40]
	pop {r4, r5, r6, r7, pc}
_021A4F06:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, sp, #0x1c
	str r6, [sp, #0x1c]
	bl ovy189_21a1b5c
	str r0, [sp, #0x14]
	cmp r0, #3
	bne _021A4F22
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A4F22:
	cmp r0, #1
	bne _021A4F30
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A4F30:
	cmp r0, #0
	bne _021A4F98
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A4F7E
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A4F7E
	add r0, r5, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	add r0, #0xc4
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A4F62
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A4F62:
	add r0, r5, #0
	bl ovy189_21a1a54
	cmp r0, #0
	bne _021A4F98
	sub r6, #0x74
	str r4, [r5, r6]
	mov r0, #0x11
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A4F7E:
	add r0, r5, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	add r0, #0xa0
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A4F98
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A4F98:
	add r0, r5, #0
	mov r1, #0x12
	add r0, #0xa4
	lsl r1, r1, #4
	ldr r7, [r0]
	ldr r0, [r5, r1]
	sub r1, #8
	str r0, [sp, #0x18]
	ldr r0, [r5, r1]
	mov r1, #0x64
	blx sub_0208D65C
	cmp r0, #1
	bne _021A4FDE
	ldr r0, [sp, #0x18]
	ldr r1, _021A5298 ; =0x021ADEE8
	add r0, r7, r0
	mov r2, #2
	mov r6, #2
	blx sub_02086014
	cmp r0, #0
	beq _021A4FD6
	ldr r0, [sp, #0x18]
	ldr r1, _021A529C ; =0x021AE010
	add r0, r7, r0
	add r2, r6, #0
	blx sub_02086014
	cmp r0, #0
	bne _021A4FDE
_021A4FD6:
	ldr r0, [sp, #0x18]
	mov r4, #0
	add r0, r7, r0
	b _021A4FE8
_021A4FDE:
	ldr r0, [sp, #0x18]
	ldr r1, _021A52A0 ; =0x021AE014
	add r0, r7, r0
	blx sub_02086140
_021A4FE8:
	cmp r0, #0
	bne _021A4FF6
	ldr r0, [sp, #0x18]
	ldr r1, _021A529C ; =0x021AE010
	add r0, r7, r0
	blx sub_02086140
_021A4FF6:
	cmp r0, #0
	bne _021A4FFC
	b _021A52BC
_021A4FFC:
	cmp r4, #1
	bne _021A5002
	add r0, r0, #2
_021A5002:
	mov r1, #0
	strb r1, [r0]
	add r1, r0, #2
	str r1, [sp, #0xc]
	add r1, r5, #0
	add r1, #0xa4
	add r2, r5, #0
	ldr r1, [r1]
	add r2, #0xac
	ldr r3, [r2]
	ldr r2, [sp, #0xc]
	mov r4, #0x46
	sub r2, r2, r1
	sub r0, r0, r1
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0]
	lsl r4, r4, #2
	sub r2, r3, r2
	ldr r0, [r5, r4]
	mov r1, #0x64
	str r2, [sp, #8]
	mov r6, #0x64
	blx sub_0208D65C
	cmp r0, #1
	bne _021A509A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A5060
	add r0, r5, #0
	add r0, #0xa4
	ldr r2, [sp, #8]
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r2, #1
	blx sub_02083984
	add r1, r5, #0
	ldr r0, [sp, #8]
	add r1, #0xac
	str r0, [r1]
	b _021A5068
_021A5060:
	add r0, r5, #0
	add r0, #0xa0
	bl sub_021A18B8
_021A5068:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021A5082
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #6
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r2, #0
	bl ovy189_21a19d8
_021A5082:
	mov r0, #8
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy189_21a19d8
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A509A:
	cmp r0, #3
	bne _021A517C
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r5, r0]
	cmp r0, #0xa
	ble _021A50BC
	mov r0, #1
	add r6, #0xc0
	str r0, [r5, r6]
	mov r0, #0xb
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A50BC:
	ldr r0, [sp, #0x18]
	ldr r1, _021A52A4 ; =0x021AE01C
	add r0, r7, r0
	blx sub_02086140
	add r6, r0, #0
	beq _021A517C
	add r6, #9
	ldr r3, _021A52A8 ; =0x02098D60
	mov r0, #0
	sub r4, #0x18
	mov r1, #0
	b _021A50D8
_021A50D6:
	add r6, r6, #1
_021A50D8:
	ldrsb r2, [r6, r1]
	cmp r2, #0x80
	blo _021A50E2
	add r2, r0, #0
	b _021A50E8
_021A50E2:
	lsl r2, r2, #1
	ldrh r2, [r3, r2]
	and r2, r4
_021A50E8:
	cmp r2, #0
	bne _021A50D6
	mov r1, #1
	add r0, r6, #0
	ldr r4, _021A52A8 ; =0x02098D60
	mov r7, #0
	lsl r1, r1, #8
	mov r2, #0
	b _021A50FC
_021A50FA:
	add r0, r0, #1
_021A50FC:
	ldrsb r3, [r0, r2]
	cmp r3, #0
	beq _021A5114
	cmp r3, #0x80
	blo _021A510A
	add r3, r7, #0
	b _021A5110
_021A510A:
	lsl r3, r3, #1
	ldrh r3, [r4, r3]
	and r3, r1
_021A5110:
	cmp r3, #0
	beq _021A50FA
_021A5114:
	mov r1, #0
	strb r1, [r0]
	ldrsb r0, [r6, r1]
	cmp r0, #0x2f
	bne _021A515A
	ldr r0, [r5, #0x18]
	blx sub_02085D9C
	add r4, r0, #0
	add r0, r6, #0
	blx sub_02085D9C
	add r4, #0xe
	add r0, r4, r0
	bl ovy11_216dddc
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r5, r1]
	cmp r0, #0
	bne _021A5146
	mov r0, #1
	sub r1, #0xc
	str r0, [r5, r1]
	str r0, [r5, #0x40]
_021A5146:
	str r6, [sp]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrh r3, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r1, _021A52AC ; =0x021AE028
	ldr r2, [r5, #0x18]
	bl OS_SPrintf
	b _021A5172
_021A515A:
	add r0, r6, #0
	bl ovy11_216e2c8
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r5, r1]
	cmp r0, #0
	bne _021A5172
	mov r0, #1
	sub r1, #0xc
	str r0, [r5, r1]
	str r0, [r5, #0x40]
_021A5172:
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A517C:
	ldr r0, [sp, #0x18]
	ldr r1, _021A52B0 ; =0x021AE038
	add r0, r7, r0
	blx sub_02086140
	str r0, [sp, #4]
	cmp r0, #0
	beq _021A5214
	ldr r3, _021A52B4 ; =0x021ACD78
	add r2, sp, #0x20
	mov r1, #0xb
_021A5192:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A5192
	ldr r6, [sp, #4]
	add r0, sp, #0x20
	add r6, #0x10
	add r4, r6, #0
	blx sub_02085D9C
	mov r1, #0
	b _021A51B0
_021A51AE:
	add r4, r4, #1
_021A51B0:
	cmp r4, #0
	beq _021A51C6
	ldrsb r2, [r4, r1]
	cmp r2, #0
	beq _021A51C6
	cmp r2, #0xa
	beq _021A51C6
	cmp r2, #0xd
	beq _021A51C6
	cmp r2, #0x20
	bne _021A51AE
_021A51C6:
	sub r2, r4, r6
	cmp r2, r0
	ble _021A51E2
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x10
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A51E2:
	cmp r0, r2
	bne _021A5208
	add r0, r6, #0
	add r1, sp, #0x20
	blx sub_02086014
	cmp r0, #0
	blt _021A5208
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x10
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A5208:
	add r0, r6, #0
	blx sub_02087B00
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
_021A5214:
	ldr r0, [sp, #0x18]
	ldr r1, _021A52B8 ; =0x021AE048
	add r0, r7, r0
	blx sub_02086140
	cmp r0, #0
	beq _021A5226
	mov r0, #1
	b _021A5228
_021A5226:
	mov r0, #0
_021A5228:
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r0, #0
	beq _021A5248
	mov r2, #0
	add r0, r1, #4
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x14
	str r2, [r5, r0]
	add r1, #0x18
	str r2, [r5, r1]
_021A5248:
	ldr r0, [r5, #0xc]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A5262
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A5262:
	mov r0, #0xa
	str r0, [r5, #0x10]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A5286
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A5286
	mov r1, #1
	sub r0, #8
	str r1, [r5, r0]
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021A5286:
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _021A52D6
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r5, #0
	bl ovy189_21a4d14
	b _021A52D6
	.align 2, 0
_021A5298: .word 0x021ADEE8
_021A529C: .word 0x021AE010
_021A52A0: .word 0x021AE014
_021A52A4: .word 0x021AE01C
_021A52A8: .word 0x02098D60
_021A52AC: .word 0x021AE028
_021A52B0: .word 0x021AE038
_021A52B4: .word 0x021ACD78
_021A52B8: .word 0x021AE048
_021A52BC:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _021A52D6
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #7
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x50]
	bl ovy11_0216DFA8
	str r0, [r5, #0x54]
_021A52D6:
	ldr r0, [sp, #0x10]
	bl ovy189_21a4ed8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy189_21a4ee4

	thumb_func_start ovy189_21a52e0
ovy189_21a52e0: ; 0x021A52E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl ovy11_216e324
	str r0, [sp, #4]
	mov r0, #2
	mov r6, #0
	lsl r0, r0, #0xc
	str r6, [sp, #0x18]
	bl ovy11_216dddc
	add r4, r0, #0
	bne _021A530A
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x1c
	str r1, [r5, #0x40]
	pop {r4, r5, r6, r7, pc}
_021A530A:
	ldr r3, _021A54A8 ; =0x021AE064
	mov r0, #8
	mov r1, #3
	mov r2, #0x10
	bl ovy11_216cca8
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0xc4
	str r0, [sp, #8]
	mov r0, #0x62
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x62
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x62
	mov r7, #0x62
	lsl r0, r0, #2
	lsl r7, r7, #2
	str r0, [sp, #0x14]
	sub r0, #0x64
	add r7, #0x48
	str r0, [sp, #0x14]
	b _021A5488
_021A5344:
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x18
	bl ovy189_21a1b5c
	cmp r0, #1
	bne _021A53AA
	add r0, r4, #0
	bl ovy189_21a4ed8
	mov r4, #0x1d
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A5372
	bl ovy11_216e324
	add sp, #0x1c
	str r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_021A5372:
	bl ovy11_216e324
	ldr r1, [r5, r4]
	sub r1, r0, r1
	ldr r0, _021A54AC ; =0x00007530
	cmp r1, r0
	bhs _021A5382
	b _021A54A2
_021A5382:
	bl ovy11_216e324
	ldr r1, [r5, r4]
	ldr r3, _021A54B0 ; =0x021AE074
	sub r0, r0, r1
	str r0, [sp]
	mov r0, #8
	mov r6, #0
	mov r1, #0
	mov r2, #1
	mov r7, #1
	bl ovy11_216cca8
	str r6, [r5, r4]
	sub r4, #0xac
	str r7, [r5, r4]
	mov r0, #0x13
	add sp, #0x1c
	str r0, [r5, #0x40]
	pop {r4, r5, r6, r7, pc}
_021A53AA:
	mov r1, #0
	str r1, [r5, r7]
	cmp r0, #3
	bne _021A53BC
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A53BC:
	cmp r0, #2
	bne _021A53E8
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
	cmp r1, #0
	ble _021A53DE
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	bge _021A53DE
	mov r0, #0xf
	str r0, [r5, #0x40]
_021A53DE:
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A53E8:
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A5468
	ldr r0, [sp, #0x10]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A5468
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	bl ovy189_21a162c
	cmp r0, #0
	bne _021A5410
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A5410:
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	add r0, r5, #0
	bl ovy189_21a1a54
	cmp r0, #0
	bne _021A543C
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x11
	str r0, [r5, #0x40]
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A543C:
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	sub r2, r0, r1
	beq _021A5480
	add r3, r5, #0
	add r3, #0xa4
	ldr r3, [r3]
	add r0, r5, #0
	add r1, r3, r1
	bl ovy189_21a4d14
	cmp r0, #0
	bne _021A5480
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A5468:
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a4d14
	cmp r0, #0
	bne _021A5480
	add r0, r4, #0
	bl ovy189_21a4ed8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A5480:
	bl ovy11_216e324
	ldr r1, [sp, #4]
	sub r6, r0, r1
_021A5488:
	ldr r0, [sp, #0x14]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A549C
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bhs _021A549C
	b _021A5344
_021A549C:
	add r0, r4, #0
	bl ovy189_21a4ed8
_021A54A2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A54A8: .word 0x021AE064
_021A54AC: .word 0x00007530
_021A54B0: .word 0x021AE074
	thumb_func_end ovy189_21a52e0

	thumb_func_start sub_021A54B4
sub_021A54B4: ; 0x021A54B4
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _021A54C0 ; =sub_020586F4
	mov r0, #0xa
	bx r3
	.align 2, 0
_021A54C0: .word sub_020586F4
	thumb_func_end sub_021A54B4

	thumb_func_start sub_021A54C4
sub_021A54C4: ; 0x021A54C4
	ldr r3, _021A54D0 ; =sub_02058728
	add r1, r0, #0
	mov r0, #0xa
	mov r2, #0
	bx r3
	nop
_021A54D0: .word sub_02058728
	thumb_func_end sub_021A54C4

	thumb_func_start ovy189_21a54d4
ovy189_21a54d4: ; 0x021A54D4
	push {r3, r4, r5, lr}
	ldr r4, _021A5504 ; =0x021B28A8
	ldr r0, _021A5508 ; =0x000009B8
	ldr r1, [r4, #0x18]
	add r0, r1, r0
	bl OS_JoinThread
	ldr r0, [r4, #0x18]
	bl sub_021A54C4
	mov r0, #0
	ldr r5, _021A550C ; =0x021B28C4
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl OS_LockMutex
	mov r0, #3
	str r0, [r4, #0x14]
	mov r0, #4
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl OS_UnlockMutex
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A5504: .word 0x021B28A8
_021A5508: .word 0x000009B8
_021A550C: .word 0x021B28C4
	thumb_func_end ovy189_21a54d4

	thumb_func_start ovy189_21a5510
ovy189_21a5510: ; 0x021A5510
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xa4
	mov r4, #0x64
_021A5518:
	bl sub_0215DEA8
	cmp r0, #3
	beq _021A552A
	cmp r0, #4
	beq _021A55E0
	cmp r0, #5
	beq _021A55FE
	b _021A560E
_021A552A:
	ldr r6, _021A561C ; =0x021B28A8
	ldr r4, [r6, #0x18]
	add r0, r4, #0
	add r0, #0x48
	blx sub_02085D9C
	add r5, r0, #0
	ldr r0, _021A5620 ; =0x021AE09C
	blx sub_02085D9C
	add r0, r5, r0
	cmp r0, #0xff
	bls _021A5556
	mov r2, #8
	mov r0, #0
	mov r1, #8
	sub r2, #9
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A5556:
	mov r5, #1
	add r7, sp, #0x1a0
	lsl r5, r5, #8
	add r4, #0x48
	ldr r2, _021A5624 ; =0x021AE0B0
	add r0, r7, #0
	add r1, r5, #0
	add r3, r4, #0
	bl OS_SNPrintf
	ldr r4, [r6, #0x18]
	add r0, r4, #0
	add r0, #0x89
	blx sub_02085D9C
	add r5, #0x90
	add r4, #0x89
	add r1, r0, #0
	add r0, r4, #0
	add r4, sp, #0x10
	add r2, r4, #0
	add r3, r5, #0
	blx sub_020580B8
	cmp r0, #0
	bge _021A559C
	mov r2, #8
	mov r0, #0
	mov r1, #8
	sub r2, #9
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A559C:
	ldr r0, [r6, #0x18]
	ldr r1, _021A5628 ; =sub_021A54C4
	str r0, [sp]
	add r0, #0x20
	str r0, [sp, #4]
	ldr r0, _021A562C ; =ovy189_21a5634
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, _021A5630 ; =sub_021A54B4
	add r3, r4, #0
	bl ovy189_21a5d00
	cmp r0, #0
	bne _021A55CA
	mov r2, #8
	mov r0, #0
	mov r1, #8
	sub r2, #9
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A55CA:
	ldr r0, [r6, #0x18]
	mov r1, #1
	str r1, [r0, #0x40]
	mov r0, #0
	mov r1, #0
	sub r2, r0, #1
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A55E0:
	add r0, sp, #0xc
	blx sub_02058390
	ldr r1, [sp, #0xc]
	mov r0, #0xd
	blx sub_020584CC
	mov r1, #3
	mov r0, #0
	sub r2, r1, #4
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A55FE:
	mov r1, #6
	mov r0, #0
	sub r2, r1, #7
	bl ovy189_21a5634
	add sp, #0x1fc
	add sp, #0xa4
	pop {r3, r4, r5, r6, r7, pc}
_021A560E:
	add r0, r4, #0
	bl OS_Sleep
	b _021A5518
_021A5616:
	.byte 0x7F, 0xB0, 0x29, 0xB0, 0xF8, 0xBD
_021A561C: .word 0x021B28A8
_021A5620: .word 0x021AE09C
_021A5624: .word 0x021AE0B0
_021A5628: .word sub_021A54C4
_021A562C: .word ovy189_21a5634
_021A5630: .word sub_021A54B4
	thumb_func_end ovy189_21a5510

	thumb_func_start ovy189_21a5634
ovy189_21a5634: ; 0x021A5634
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	beq _021A5648
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a5e74
_021A5648:
	ldr r0, _021A566C ; =0x021B28C4
	bl OS_LockMutex
	mov r1, #3
	ldr r0, _021A5670 ; =0x021B28A8
	cmp r5, #0
	str r1, [r0, #0x14]
	str r6, [r0, #0x10]
	str r5, [r0, #0xc]
	str r4, [r0, #8]
	beq _021A5662
	mov r1, #4
	str r1, [r0, #0x14]
_021A5662:
	ldr r0, _021A566C ; =0x021B28C4
	bl OS_UnlockMutex
	pop {r4, r5, r6, pc}
	nop
_021A566C: .word 0x021B28C4
_021A5670: .word 0x021B28A8
	thumb_func_end ovy189_21a5634

	thumb_func_start ovy189_21a5674
ovy189_21a5674: ; 0x021A5674
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #8]
	blx sub_020584B0
	cmp r0, #0
	beq _021A568C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A568C:
	ldr r7, _021A5754 ; =0x021B28C4
	add r0, r7, #0
	bl OS_InitMutex
	add r0, r7, #0
	bl OS_LockMutex
	ldr r4, _021A5758 ; =0x021B28A8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A56B6
	mov r0, #2
	mov r1, #0
	bl ovy189_21a5e74
	add r0, r7, #0
	bl OS_UnlockMutex
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A56B6:
	mov r0, #2
	str r0, [r4, #0x14]
	add r0, r7, #0
	bl OS_UnlockMutex
	mov r7, #0
	str r7, [r4, #0x10]
	str r7, [r4, #0xc]
	str r7, [r4, #8]
	str r5, [r4]
	ldr r5, _021A575C ; =0x00000A78
	mov r1, #0x20
	add r0, r5, #0
	str r7, [r4, #4]
	bl sub_021A54B4
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _021A56EA
	mov r0, #1
	add r1, r7, #0
	bl ovy189_21a5e74
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A56EA:
	add r1, r7, #0
	add r2, r5, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	str r7, [r0, #0x40]
	ldr r0, [r4, #0x18]
	mov r2, #0x1f
	blx sub_02085E80
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #8]
	add r0, #0x20
	mov r2, #0x1f
	blx sub_02085E80
	ldr r1, [r4, #0x18]
	ldr r0, _021A5760 ; =0x021AE0C4
	add r1, #0x44
	bl sub_0215DE44
	cmp r0, #0
	bne _021A5728
	ldr r0, [r4, #0x18]
	bl sub_021A54C4
	add sp, #0xc
	str r7, [r4, #0x18]
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A5728:
	mov r0, #0x20
	add r3, r5, #0
	ldr r6, [r4, #0x18]
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0x10
	sub r3, #0xc0
	str r0, [sp, #4]
	add r0, r6, r3
	ldr r1, _021A5764 ; =ovy189_21a5510
	add r2, r7, #0
	add r3, r6, r3
	bl OS_CreateThread
	ldr r0, [r4, #0x18]
	sub r5, #0xc0
	add r0, r0, r5
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5754: .word 0x021B28C4
_021A5758: .word 0x021B28A8
_021A575C: .word 0x00000A78
_021A5760: .word 0x021AE0C4
_021A5764: .word ovy189_21a5510
	thumb_func_end ovy189_21a5674

	thumb_func_start ovy189_21a5768
ovy189_21a5768: ; 0x021A5768
	push {r3, r4, r5, lr}
	ldr r0, _021A57D4 ; =0x021B28C4
	mov r4, #0
	mov r5, #0
	bl OS_LockMutex
	ldr r1, _021A57D8 ; =0x021B28A8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _021A578E
	ldr r2, [r1, #0x14]
	cmp r2, #4
	bne _021A578E
	ldr r2, [r1, #4]
	cmp r2, #0
	bne _021A579C
	mov r4, #1
	str r4, [r1, #4]
	b _021A579C
_021A578E:
	ldr r1, _021A57D8 ; =0x021B28A8
	ldr r2, [r1, #0x14]
	sub r2, r2, #3
	cmp r2, #1
	bhi _021A579C
	mov r4, #1
	str r4, [r1, #0x14]
_021A579C:
	cmp r0, #4
	bne _021A57AA
	ldr r0, _021A57D8 ; =0x021B28A8
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	mov r5, #1
_021A57AA:
	ldr r0, _021A57D4 ; =0x021B28C4
	bl OS_UnlockMutex
	ldr r2, _021A57D8 ; =0x021B28A8
	ldr r3, [r2]
	cmp r3, #0
	beq _021A57D2
	cmp r5, #0
	beq _021A57C6
	mov r1, #0
	mov r0, #4
	sub r2, r1, #1
	blx r3
	pop {r3, r4, r5, pc}
_021A57C6:
	cmp r4, #0
	beq _021A57D2
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	blx r3
_021A57D2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A57D4: .word 0x021B28C4
_021A57D8: .word 0x021B28A8
	thumb_func_end ovy189_21a5768

	thumb_func_start ovy189_21a57dc
ovy189_21a57dc: ; 0x021A57DC
	push {r3, r4, r5, lr}
	ldr r5, _021A5824 ; =0x021B28A8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021A57EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A57EA:
	ldr r4, _021A5828 ; =0x021B28C4
	add r0, r4, #0
	bl OS_LockMutex
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021A5802
	add r0, r4, #0
	bl OS_UnlockMutex
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A5802:
	mov r0, #2
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl OS_UnlockMutex
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _021A581A
	bl ovy189_21a54d4
	b _021A5820
_021A581A:
	ldr r0, _021A582C ; =ovy189_21a54d4
	bl ovy189_21a5e1c
_021A5820:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A5824: .word 0x021B28A8
_021A5828: .word 0x021B28C4
_021A582C: .word ovy189_21a54d4
	thumb_func_end ovy189_21a57dc

	thumb_func_start ovy189_21a5830
ovy189_21a5830: ; 0x021A5830
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	blx sub_020584B0
	cmp r0, #0
	beq _021A5844
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A5844:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy189_21a5a68
	pop {r4, r5, r6, pc}
	thumb_func_end ovy189_21a5830

	thumb_func_start ovy189_21a5850
ovy189_21a5850: ; 0x021A5850
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	blx sub_020584B0
	cmp r0, #0
	beq _021A5864
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5864:
	ldr r0, _021A58C0 ; =0x021B28C4
	bl OS_LockMutex
	ldr r7, _021A58C4 ; =0x021B28A8
	ldr r0, [r7, #0x14]
	cmp r0, #1
	beq _021A5884
	mov r0, #2
	mov r1, #0
	bl ovy189_21a5e74
	ldr r0, _021A58C0 ; =0x021B28C4
	bl OS_UnlockMutex
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5884:
	mov r0, #2
	str r0, [r7, #0x14]
	ldr r0, _021A58C0 ; =0x021B28C4
	bl OS_UnlockMutex
	mov r2, #0xb0
	add r0, r5, #0
	mov r1, #0
	mul r2, r4
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy189_21a65b4
	cmp r0, #0
	beq _021A58AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A58AC:
	ldr r0, _021A58C0 ; =0x021B28C4
	bl OS_LockMutex
	mov r0, #1
	str r0, [r7, #0x14]
	ldr r0, _021A58C0 ; =0x021B28C4
	bl OS_UnlockMutex
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A58C0: .word 0x021B28C4
_021A58C4: .word 0x021B28A8
	thumb_func_end ovy189_21a5850

	thumb_func_start ovy189_21a58c8
ovy189_21a58c8: ; 0x021A58C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	blx sub_020584B0
	cmp r0, #0
	beq _021A58DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A58DC:
	ldr r0, _021A5930 ; =0x021B28C4
	bl OS_LockMutex
	ldr r7, _021A5934 ; =0x021B28A8
	ldr r0, [r7, #0x14]
	cmp r0, #1
	beq _021A58FC
	mov r0, #2
	mov r1, #0
	bl ovy189_21a5e74
	ldr r0, _021A5930 ; =0x021B28C4
	bl OS_UnlockMutex
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A58FC:
	mov r0, #2
	str r0, [r7, #0x14]
	ldr r0, _021A5930 ; =0x021B28C4
	bl OS_UnlockMutex
	add r1, r4, #0
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	mov r4, #0
	bl ovy189_21a6738
	cmp r0, #0
	beq _021A591C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A591C:
	ldr r0, _021A5930 ; =0x021B28C4
	bl OS_LockMutex
	mov r0, #1
	str r0, [r7, #0x14]
	ldr r0, _021A5930 ; =0x021B28C4
	bl OS_UnlockMutex
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5930: .word 0x021B28C4
_021A5934: .word 0x021B28A8
	thumb_func_end ovy189_21a58c8

	thumb_func_start ovy189_21a5938
ovy189_21a5938: ; 0x021A5938
	push {r4, lr}
	blx sub_020584B0
	cmp r0, #0
	beq _021A5946
	mov r0, #0
	pop {r4, pc}
_021A5946:
	ldr r4, _021A5978 ; =0x021B28C4
	add r0, r4, #0
	bl OS_LockMutex
	ldr r0, _021A597C ; =0x021B28A8
	ldr r0, [r0, #0x14]
	cmp r0, #2
	beq _021A5960
	add r0, r4, #0
	bl OS_UnlockMutex
	mov r0, #0
	pop {r4, pc}
_021A5960:
	add r0, r4, #0
	bl OS_UnlockMutex
	bl ovy189_21a5f04
	cmp r0, #0
	beq _021A5972
	mov r0, #1
	pop {r4, pc}
_021A5972:
	mov r0, #0
	pop {r4, pc}
	nop
_021A5978: .word 0x021B28C4
_021A597C: .word 0x021B28A8
	thumb_func_end ovy189_21a5938

	thumb_func_start ovy189_21a5980
ovy189_21a5980: ; 0x021A5980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx sub_020584B0
	cmp r0, #0
	beq _021A5992
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A5992:
	ldr r6, _021A59BC ; =0x021B28C4
	add r0, r6, #0
	bl OS_LockMutex
	ldr r0, _021A59C0 ; =0x021B28A8
	ldr r0, [r0, #0x14]
	cmp r0, #2
	beq _021A59AC
	add r0, r6, #0
	bl OS_UnlockMutex
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A59AC:
	add r0, r6, #0
	bl OS_UnlockMutex
	add r0, r5, #0
	add r1, r4, #0
	bl ovy189_21a6844
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A59BC: .word 0x021B28C4
_021A59C0: .word 0x021B28A8
	thumb_func_end ovy189_21a5980

	thumb_func_start ovy189_21a59c4
ovy189_21a59c4: ; 0x021A59C4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r6, _021A59E4 ; =0x021B2918
	add r7, r5, #0
_021A59CC:
	lsl r4, r5, #2
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021A59DC
	ldr r1, _021A59E8 ; =0x021B28DC
	ldr r1, [r1, #0x14]
	blx r1
	str r7, [r6, r4]
_021A59DC:
	add r5, r5, #1
	cmp r5, #3
	blt _021A59CC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A59E4: .word 0x021B2918
_021A59E8: .word 0x021B28DC
	thumb_func_end ovy189_21a59c4

	thumb_func_start ovy189_21a59ec
ovy189_21a59ec: ; 0x021A59EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _021A5A5A
	add r0, r5, #0
	bl sub_021A6B6C
	cmp r0, #0xa
	ble _021A5A10
	mov r0, #5
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5A10:
	add r0, r5, #0
	bl sub_021A6B6C
	add r7, r0, #0
	cmp r7, #0xa
	ble _021A5A28
	mov r0, #5
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5A28:
	bl ovy189_21a5b24
	ldr r2, _021A5A60 ; =0x021B28DC
	ldr r6, _021A5A64 ; =0x021B2918
	ldr r2, [r2, #4]
	add r0, r0, #1
	mov r1, #4
	lsl r4, r4, #2
	blx r2
	str r0, [r6, r4]
	cmp r0, #0
	bne _021A5A4C
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5A4C:
	add r1, r5, #0
	add r2, r7, #0
	bl ovy189_21a5b34
	ldr r2, [r6, r4]
	mov r1, #0
	strb r1, [r2, r0]
_021A5A5A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A5A60: .word 0x021B28DC
_021A5A64: .word 0x021B2918
	thumb_func_end ovy189_21a59ec

	thumb_func_start ovy189_21a5a68
ovy189_21a5a68: ; 0x021A5A68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021A6A98
	bl ovy189_21a59c4
	mov r0, #0
	add r1, r5, #0
	bl ovy189_21a59ec
	cmp r0, #0
	beq _021A5AA6
	mov r0, #1
	add r1, r4, #0
	mov r5, #1
	bl ovy189_21a59ec
	cmp r0, #0
	beq _021A5AA6
	mov r0, #2
	add r1, r6, #0
	bl ovy189_21a59ec
	cmp r0, #0
	beq _021A5AA6
	bl sub_021A6AA8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021A5AA6:
	bl ovy189_21a59c4
	bl sub_021A6AA8
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy189_21a5a68

	thumb_func_start ovy189_21a5ab4
ovy189_21a5ab4: ; 0x021A5AB4
	push {r4, r5, r6, r7}
	mov r7, #0
	mov r6, #0
	cmp r2, #0
	ble _021A5ADA
	add r4, r7, #0
	add r3, r7, #0
_021A5AC2:
	ldrsb r5, [r1, r3]
	cmp r5, #0
	beq _021A5AD0
	add r7, r7, #1
	add r1, r1, #1
	strb r5, [r0]
	b _021A5AD2
_021A5AD0:
	strb r4, [r0]
_021A5AD2:
	add r6, r6, #1
	add r0, r0, #1
	cmp r6, r2
	blt _021A5AC2
_021A5ADA:
	add r0, r7, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy189_21a5ab4

	thumb_func_start sub_021A5AE0
sub_021A5AE0: ; 0x021A5AE0
	cmp r0, #0x41
	blo _021A5AEC
	cmp r0, #0x5a
	bhi _021A5AEC
	sub r0, #0x41
	bx lr
_021A5AEC:
	cmp r0, #0x61
	blo _021A5AF8
	cmp r0, #0x7a
	bhi _021A5AF8
	sub r0, #0x47
	bx lr
_021A5AF8:
	cmp r0, #0x30
	blo _021A5B04
	cmp r0, #0x39
	bhi _021A5B04
	add r0, r0, #4
	bx lr
_021A5B04:
	cmp r0, #0x2e
	bne _021A5B0C
	mov r0, #0x3e
	bx lr
_021A5B0C:
	cmp r0, #0x2d
	bne _021A5B14
	mov r0, #0x3f
	bx lr
_021A5B14:
	mov r0, #0
	mvn r0, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5AE0

	thumb_func_start sub_021A5B1C
sub_021A5B1C: ; 0x021A5B1C
	asr r1, r0, #2
	lsl r0, r1, #1
	add r0, r1, r0
	bx lr
	thumb_func_end sub_021A5B1C

	thumb_func_start ovy189_21a5b24
ovy189_21a5b24: ; 0x021A5B24
	push {r3, lr}
	add r0, r0, #2
	mov r1, #3
	blx sub_0208D65C
	lsl r0, r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy189_21a5b24

	thumb_func_start ovy189_21a5b34
ovy189_21a5b34: ; 0x021A5B34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r4, r2, #0
	add r7, r1, #0
	str r0, [sp]
	cmp r4, #3
	ble _021A5B48
	mov r2, #3
_021A5B48:
	add r0, sp, #8
	add r1, r7, #0
	bl ovy189_21a5ab4
	add r2, r0, #0
	cmp r2, #0
	ble _021A5BF4
_021A5B56:
	cmp r4, #3
	bge _021A5B60
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0, #2]
_021A5B60:
	cmp r4, #2
	bge _021A5B6A
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0, #1]
_021A5B6A:
	add r0, sp, #8
	ldrb r0, [r0, #1]
	str r0, [sp, #4]
	add r0, sp, #8
	ldrb r1, [r0]
	ldr r3, [sp, #4]
	ldrb r0, [r0, #2]
	lsl r6, r3, #2
	asr r3, r0, #6
	orr r6, r3
	mov r3, #0x3f
	and r3, r6
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	mov ip, r3
	mov r3, #0x3f
	and r0, r3
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r1, #0x16
	lsr r3, r0, #0x18
	ldr r0, _021A5C00 ; =0x021ACDB4
	ldrsb r0, [r0, r3]
	strb r0, [r5]
	lsl r0, r1, #4
	ldr r1, [sp, #4]
	asr r1, r1, #4
	orr r1, r0
	mov r0, #0x3f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _021A5C00 ; =0x021ACDB4
	cmp r2, #1
	ldrsb r0, [r0, r1]
	strb r0, [r5, #1]
	ble _021A5BBC
	ldr r0, _021A5C00 ; =0x021ACDB4
	mov r1, ip
	ldrsb r0, [r0, r1]
	b _021A5BBE
_021A5BBC:
	mov r0, #0x2a
_021A5BBE:
	strb r0, [r5, #2]
	cmp r2, #2
	ble _021A5BCA
	ldr r0, _021A5C00 ; =0x021ACDB4
	ldrsb r1, [r0, r6]
	b _021A5BCC
_021A5BCA:
	mov r1, #0x2a
_021A5BCC:
	add r0, r5, #3
	strb r1, [r0]
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	add r7, r7, r2
	str r0, [sp]
	sub r4, r4, r2
	beq _021A5BF4
	mov r2, #3
	cmp r4, #3
	bgt _021A5BE6
	add r2, r4, #0
_021A5BE6:
	add r0, sp, #8
	add r1, r7, #0
	bl ovy189_21a5ab4
	add r2, r0, #0
	cmp r2, #0
	bgt _021A5B56
_021A5BF4:
	mov r0, #0
	strb r0, [r5]
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A5C00: .word 0x021ACDB4
	thumb_func_end ovy189_21a5b34

	thumb_func_start ovy189_21a5c04
ovy189_21a5c04: ; 0x021A5C04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	str r2, [sp, #4]
	add r0, #3
	mov r2, #4
	str r1, [sp]
	bl ovy189_21a5ab4
	add r7, r0, #0
	mov r4, #0
	b _021A5CC0
_021A5C22:
	add r6, sp, #0xc
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	ldrb r0, [r6, #3]
	bl sub_021A5AE0
	add r4, r0, #0
	bmi _021A5C84
	lsl r0, r4, #2
	strb r0, [r6]
	ldrb r0, [r6, #4]
	bl sub_021A5AE0
	add r4, r0, #0
	bmi _021A5C84
	mov r0, #0
	ldrsb r1, [r6, r0]
	lsl r0, r4, #0x14
	asr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6]
	lsl r0, r4, #4
	strb r0, [r6, #1]
	ldrb r0, [r6, #5]
	bl sub_021A5AE0
	add r4, r0, #0
	bmi _021A5C84
	mov r0, #1
	ldrsb r1, [r6, r0]
	lsl r0, r4, #0x16
	asr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6, #1]
	lsl r0, r4, #6
	strb r0, [r6, #2]
	ldrb r0, [r6, #6]
	bl sub_021A5AE0
	add r4, r0, #0
	bmi _021A5C84
	mov r0, #2
	ldrsb r1, [r6, r0]
	lsl r0, r4, #0x18
	asr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6, #2]
_021A5C84:
	sub r2, r7, #1
	mov r3, #0
	cmp r2, #0
	ble _021A5C9A
	add r1, sp, #0xc
_021A5C8E:
	ldrsb r0, [r1, r3]
	add r3, r3, #1
	strb r0, [r5]
	add r5, r5, #1
	cmp r3, r2
	blt _021A5C8E
_021A5C9A:
	ldr r0, [sp]
	sub r1, r7, #1
	add r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, r0, #4
	str r0, [sp, #4]
	cmp r0, #0
	ble _021A5CC8
	add r0, sp, #0xc
	ldr r1, [sp]
	add r0, #3
	mov r2, #4
	bl ovy189_21a5ab4
	add r7, r0, #0
_021A5CC0:
	cmp r7, #0
	ble _021A5CC8
	cmp r4, #0
	bge _021A5C22
_021A5CC8:
	mov r0, #0
	strb r0, [r5]
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a5c04

	thumb_func_start ovy189_21a5cd4
ovy189_21a5cd4: ; 0x021A5CD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_021A6B6C
	ldr r2, _021A5CFC ; =0x021B28DC
	add r4, r0, #0
	ldr r2, [r2, #4]
	add r0, r4, #1
	mov r1, #4
	blx r2
	add r5, r0, #0
	beq _021A5CF8
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021A6B88
	mov r0, #0
	strb r0, [r5, r4]
_021A5CF8:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A5CFC: .word 0x021B28DC
	thumb_func_end ovy189_21a5cd4

	thumb_func_start ovy189_21a5d00
ovy189_21a5d00: ; 0x021A5D00
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A5DDC ; =0x021B28DC
	add r5, r0, #0
	add r6, r1, #0
	str r5, [r4, #4]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0x14]
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	ldr r0, _021A5DE0 ; =0x021B2924
	add r7, r2, #0
	str r3, [sp]
	bl ovy189_21a6b34
	ldr r0, _021A5DE4 ; =0x021B29A9
	bl ovy189_21a6058
	add r0, r7, #0
	bl ovy189_21a5cd4
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _021A5DB6
	ldr r0, [sp]
	bl ovy189_21a5cd4
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _021A5DB6
	ldr r7, _021A5DE8 ; =0x021B290D
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	mov r2, #4
	bl ovy189_21a5b34
	mov r1, #0
	strb r1, [r7, r0]
	ldr r7, _021A5DEC ; =0x021B2990
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	mov r2, #0x10
	bl ovy189_21a5b34
	mov r1, #0
	strb r1, [r7, r0]
	bl ovy189_21a6ab8
	cmp r0, #0
	beq _021A5D9C
	bl ovy189_21a6a84
	cmp r0, #0
	beq _021A5D9C
	add r0, r5, #0
	add r1, r6, #0
	mov r5, #0x11
	mov r2, #0x11
	bl ovy189_21a076c
	sub r5, #0x12
	cmp r0, r5
	beq _021A5D98
	ldr r0, _021A5DF0 ; =0x021B2935
	bl ovy189_21a5f64
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A5D98:
	bl sub_021A6A94
_021A5D9C:
	ldr r4, _021A5DDC ; =0x021B28DC
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	mov r0, #8
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5DB6:
	ldr r1, _021A5DDC ; =0x021B28DC
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021A5DC2
	ldr r1, [r1, #0x14]
	blx r1
_021A5DC2:
	ldr r1, _021A5DDC ; =0x021B28DC
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	beq _021A5DCE
	ldr r1, [r1, #0x14]
	blx r1
_021A5DCE:
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A5DDC: .word 0x021B28DC
_021A5DE0: .word 0x021B2924
_021A5DE4: .word 0x021B29A9
_021A5DE8: .word 0x021B290D
_021A5DEC: .word 0x021B2990
_021A5DF0: .word 0x021B2935
	thumb_func_end ovy189_21a5d00

	thumb_func_start ovy189_21a5df4
ovy189_21a5df4: ; 0x021A5DF4
	push {r4, lr}
	bl ovy189_21a59c4
	bl sub_021A6A94
	bl sub_021A6AD4
	ldr r4, _021A5E18 ; =0x021B28DC
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x24]
	blx r0
	pop {r4, pc}
	nop
_021A5E18: .word 0x021B28DC
	thumb_func_end ovy189_21a5df4

	thumb_func_start ovy189_21a5e1c
ovy189_21a5e1c: ; 0x021A5E1C
	push {r3, lr}
	ldr r1, _021A5E34 ; =0x021B28DC
	mov r2, #0
	str r2, [r1, #8]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x10]
	bl ovy189_21a5e3c
	ldr r0, _021A5E38 ; =ovy189_21a5df4
	bl ovy189_21a0790
	pop {r3, pc}
	.align 2, 0
_021A5E34: .word 0x021B28DC
_021A5E38: .word ovy189_21a5df4
	thumb_func_end ovy189_21a5e1c

	thumb_func_start ovy189_21a5e3c
ovy189_21a5e3c: ; 0x021A5E3C
	push {r0, r1, r2, r3}
	thumb_func_end ovy189_21a5e3c

	non_word_aligned_thumb_func_start ovy189_21a5e3e
ovy189_21a5e3e: ; 0x021A5E3E
	push {r4, lr}
	mov r4, #1
	bl sub_021A6A98
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A5E64
	ldr r0, [sp, #8]
	bl ovy189_21a1060
	ldr r0, [sp, #8]
	bl ovy189_21a0edc
	cmp r0, #0
	beq _021A5E60
	mov r4, #0
	b _021A5E64
_021A5E60:
	mov r0, #0
	str r0, [sp, #8]
_021A5E64:
	bl sub_021A6AA8
	add r0, r4, #0
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy189_21a5e3e

	thumb_func_start ovy189_21a5e74
ovy189_21a5e74: ; 0x021A5E74
	push {r3, lr}
	cmp r0, #8
	bhi _021A5EE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A5E86: ; jump table
	.short _021A5EE8 - _021A5E86 - 2 ; case 0
	.short _021A5E98 - _021A5E86 - 2 ; case 1
	.short _021A5ED6 - _021A5E86 - 2 ; case 2
	.short _021A5EA2 - _021A5E86 - 2 ; case 3
	.short _021A5EAC - _021A5E86 - 2 ; case 4
	.short _021A5EC2 - _021A5E86 - 2 ; case 5
	.short _021A5EE8 - _021A5E86 - 2 ; case 6
	.short _021A5EB6 - _021A5E86 - 2 ; case 7
	.short _021A5ECC - _021A5E86 - 2 ; case 8
_021A5E98:
	ldr r1, _021A5EEC ; =0xFFFF86E7
	mov r0, #9
	blx sub_020584CC
	pop {r3, pc}
_021A5EA2:
	ldr r1, _021A5EF0 ; =0xFFFF86D4
	mov r0, #0xe
	blx sub_020584CC
	pop {r3, pc}
_021A5EAC:
	ldr r1, _021A5EF4 ; =0xFFFF86C0
	mov r0, #0xd
	blx sub_020584CC
	pop {r3, pc}
_021A5EB6:
	ldr r2, _021A5EF8 ; =0xFFFF86E8
	mov r0, #0xd
	sub r1, r2, r1
	blx sub_020584CC
	pop {r3, pc}
_021A5EC2:
	ldr r1, _021A5EF4 ; =0xFFFF86C0
	mov r0, #0xd
	blx sub_020584CC
	pop {r3, pc}
_021A5ECC:
	ldr r1, _021A5EFC ; =0xFFFF86DF
	mov r0, #9
	blx sub_020584CC
	pop {r3, pc}
_021A5ED6:
	ldr r1, _021A5F00 ; =0xFFFF86DE
	mov r0, #0xd
	blx sub_020584CC
	pop {r3, pc}
_021A5EE0:
	ldr r1, _021A5EFC ; =0xFFFF86DF
	mov r0, #9
	blx sub_020584CC
_021A5EE8:
	pop {r3, pc}
	nop
_021A5EEC: .word 0xFFFF86E7
_021A5EF0: .word 0xFFFF86D4
_021A5EF4: .word 0xFFFF86C0
_021A5EF8: .word 0xFFFF86E8
_021A5EFC: .word 0xFFFF86DF
_021A5F00: .word 0xFFFF86DE
	thumb_func_end ovy189_21a5e74

	thumb_func_start ovy189_21a5f04
ovy189_21a5f04: ; 0x021A5F04
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, _021A5F60 ; =0x021B28DC
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021A5F16
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A5F16:
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl ovy189_21a5980
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	bne _021A5F32
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A5F32:
	bl ovy189_21a6ad8
	cmp r0, #0
	bne _021A5F56
	bl sub_021A6A98
	ldr r5, [r5, #0x10]
	bl sub_021A6AA8
	add r0, r5, #0
	bl ovy189_21a102c
	cmp r0, #0
	bne _021A5F50
	mov r4, #1
_021A5F50:
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A5F56:
	bl ovy189_21a6b08
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A5F60: .word 0x021B28DC
	thumb_func_end ovy189_21a5f04

	thumb_func_start ovy189_21a5f64
ovy189_21a5f64: ; 0x021A5F64
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _021A5FE8 ; =0x021ACDA4
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0xd
_021A5F70:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A5F70
	ldr r5, _021A5FEC ; =0x021B29CC
	add r0, r5, #0
	blx sub_0205B29C
	cmp r0, #0
	beq _021A5FE0
	ldr r1, [r5]
	cmp r1, #0
	blt _021A5F9A
	cmp r1, #0xa
	bge _021A5F9A
	add r1, #0x30
	add r0, sp, #0
	strb r1, [r0, #1]
	b _021A5FA8
_021A5F9A:
	cmp r1, #0xa
	blt _021A5FA8
	cmp r1, #0x64
	bge _021A5FA8
	add r0, sp, #0
	bl sub_021A6BA0
_021A5FA8:
	ldr r0, _021A5FEC ; =0x021B29CC
	ldr r0, [r0]
	cmp r0, #4
	beq _021A5FB4
	cmp r0, #8
	bne _021A5FD0
_021A5FB4:
	ldr r0, _021A5FEC ; =0x021B29CC
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _021A5FC6
	cmp r1, #0xa
	bge _021A5FC6
	add r1, #0x30
	add r0, sp, #0
	strb r1, [r0, #3]
_021A5FC6:
	ldr r1, _021A5FF0 ; =0x021B29D8
	add r0, sp, #4
	mov r2, #9
	bl sub_021A6B88
_021A5FD0:
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #0xd
	bl ovy189_21a5b34
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A5FE0:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021A5FE8: .word 0x021ACDA4
_021A5FEC: .word 0x021B29CC
_021A5FF0: .word 0x021B29D8
	thumb_func_end ovy189_21a5f64

	thumb_func_start ovy189_21a5ff4
ovy189_21a5ff4: ; 0x021A5FF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x14
	bl sub_021A6B7C
	add r0, r6, #0
	blx sub_02056A90
	ldr r1, [sp, #0x10]
	mov r0, #0
	ldr r2, [sp, #0x14]
	mov r3, #0
	eor r3, r2
	eor r0, r1
	orr r0, r3
	bne _021A6022
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A6022:
	add r7, sp, #0
	add r0, r7, #0
	mov r3, #0xd
	mov r6, #0xd
	bl ovy189_21a6ba8
	cmp r0, #0
	bge _021A6038
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A6038:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy189_21a5b34
	ldr r1, _021A6054 ; =0x02FFFE0C
	add r0, r5, #0
	mov r2, #4
	bl ovy189_21a5b34
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A6054: .word 0x02FFFE0C
	thumb_func_end ovy189_21a5ff4

	thumb_func_start ovy189_21a6058
ovy189_21a6058: ; 0x021A6058
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	ldr r2, _021A606C ; =0x021AE1B8
	mov r1, #0x21
	mov r3, #5
	bl OS_SNPrintf
	pop {r3, pc}
	nop
_021A606C: .word 0x021AE1B8
	thumb_func_end ovy189_21a6058

	thumb_func_start ovy189_21a6070
ovy189_21a6070: ; 0x021A6070
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	add r6, r2, #0
	str r1, [sp, #4]
	bl ovy189_21a10c0
	str r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r5, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r7, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #8]
	bne _021A6098
	b _021A61D2
_021A6098:
	cmp r5, #3
	beq _021A60A0
	cmp r5, #4
	beq _021A60A2
_021A60A0:
	b _021A61EC
_021A60A2:
	ldr r0, [sp]
	bl ovy189_21a10f4
	cmp r0, #8
	bne _021A60B0
	mov r4, #6
	b _021A61B0
_021A60B0:
	ldr r0, [sp]
	ldr r1, _021A61F4 ; =0x021AE1D0
	add r2, sp, #0x1c
	bl ovy189_21a08a0
	cmp r0, #3
	beq _021A60C2
_021A60BE:
	mov r4, #3
	b _021A61B0
_021A60C2:
	ldr r0, [sp, #0x1c]
	mov r1, #3
	mov r5, #3
	bl sub_021A6B98
	ldr r1, _021A61F8 ; =0x0000012E
	cmp r0, r1
	bne _021A6166
	ldr r0, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x20
	mov r6, #0
	bl ovy189_21a1080
	add r4, r0, #0
	bpl _021A60E4
	b _021A61AE
_021A60E4:
	add r5, r6, #0
	cmp r4, #0
	ble _021A615A
_021A60EA:
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	b _021A60F2
_021A60F0:
	add r5, r5, #1
_021A60F2:
	ldrsb r2, [r1, r5]
	cmp r2, #0x3d
	beq _021A60FC
	cmp r5, r4
	blt _021A60F0
_021A60FC:
	sub r2, r5, r0
	add r5, r5, #1
	cmp r2, #8
	bne _021A6116
	add r0, r1, r0
	ldr r1, _021A61FC ; =0x021AE1E0
	mov r2, #8
	bl sub_021A6B74
	mov r6, #1
	cmp r0, #0
	beq _021A6116
	mov r6, #0
_021A6116:
	add r3, r5, #0
	ldr r1, [sp, #0x18]
	b _021A611E
_021A611C:
	add r5, r5, #1
_021A611E:
	ldrsb r0, [r1, r5]
	cmp r0, #0x26
	beq _021A6130
	cmp r0, #0xd
	beq _021A6130
	cmp r0, #0
	beq _021A6130
	cmp r5, r4
	blt _021A611C
_021A6130:
	sub r2, r5, r3
	add r5, r5, #1
	cmp r6, #0
	beq _021A6156
	cmp r2, #4
	bne _021A615A
	add r4, sp, #0x14
	add r0, r4, #0
	add r1, r1, r3
	bl ovy189_21a5c04
	add r1, r0, #0
	mov r0, #0
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_021A6B98
	str r0, [sp, #4]
	b _021A615A
_021A6156:
	cmp r5, r4
	blt _021A60EA
_021A615A:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _021A6162
	b _021A60BE
_021A6162:
	mov r4, #7
	b _021A61B0
_021A6166:
	cmp r0, #0
	ble _021A616E
	cmp r0, #0xc8
	beq _021A6170
_021A616E:
	b _021A60BE
_021A6170:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _021A6180
	cmp r0, #2
	beq _021A6190
	cmp r0, #3
	beq _021A61A0
	b _021A61B0
_021A6180:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ovy189_21a6870
	cmp r0, #0
	beq _021A618E
	mov r5, #0
_021A618E:
	b _021A61AE
_021A6190:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ovy189_21a68c8
	cmp r0, #0
	beq _021A619E
	mov r5, #0
_021A619E:
	b _021A61AE
_021A61A0:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ovy189_21a68a8
	cmp r0, #0
	beq _021A61AE
	mov r5, #0
_021A61AE:
	add r4, r5, #0
_021A61B0:
	ldr r0, [sp, #0x10]
	bl ovy189_21a6200
	bl ovy189_21a6b08
	cmp r7, #0
	beq _021A61C6
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #4]
	add r1, r4, #0
	blx r7
_021A61C6:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021A61EC
	bl sub_021A6B28
	b _021A61EC
_021A61D2:
	mov r0, #0
	str r0, [r6, #8]
	ldr r1, [sp, #4]
	mov r0, #4
	mov r4, #4
	bl ovy189_21a5e74
	cmp r7, #0
	beq _021A61EC
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #4]
	add r1, r4, #0
	blx r7
_021A61EC:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A61F4: .word 0x021AE1D0
_021A61F8: .word 0x0000012E
_021A61FC: .word 0x021AE1E0
	thumb_func_end ovy189_21a6070

	thumb_func_start ovy189_21a6200
ovy189_21a6200: ; 0x021A6200
	push {r3, r4, r5, lr}
	ldr r5, _021A6254 ; =0x021B28DC
	add r4, r0, #0
	beq _021A6250
	ldr r0, [r4]
	cmp r0, #1
	beq _021A624A
	cmp r0, #2
	beq _021A6218
	cmp r0, #3
	beq _021A6240
	b _021A624A
_021A6218:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021A6226
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x1c]
_021A6226:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021A6234
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x18]
_021A6234:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x14]
	b _021A624A
_021A6240:
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_021A624A:
	ldr r1, [r5, #0x14]
	add r0, r4, #0
	blx r1
_021A6250:
	pop {r3, r4, r5, pc}
	nop
_021A6254: .word 0x021B28DC
	thumb_func_end ovy189_21a6200

	thumb_func_start ovy189_21a6258
ovy189_21a6258: ; 0x021A6258
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovy189_21a5e3c
	bl ovy189_21a6b08
	add r0, r4, #0
	bl ovy189_21a6200
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a6258

	thumb_func_start ovy189_21a6270
ovy189_21a6270: ; 0x021A6270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _021A6520 ; =0x021B2904
	ldr r1, _021A6524 ; =0x021B294A
	str r2, [sp, #0x10]
	add r5, r3, #0
	ldr r7, [sp, #0x134]
	bl ovy189_21a5ff4
	cmp r0, #0
	bne _021A6298
	mov r0, #8
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A6298:
	ldr r2, _021A6528 ; =0x021B28DC
	mov r0, #0x20
	ldr r2, [r2, #4]
	mov r1, #4
	blx r2
	add r4, r0, #0
	bne _021A62B4
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A62B4:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r0, [r0]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	bl ovy189_21a6ad8
	cmp r0, #0
	bne _021A62DA
	add r0, r4, #0
	bl ovy189_21a6200
	mov r0, #2
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A62DA:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r0, [r0, #0x10]
	bl ovy189_21a5e3c
	cmp r0, #0
	bne _021A62EC
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A62EC:
	ldr r0, _021A652C ; =ovy189_21a6070
	ldr r3, [sp, #0x130]
	str r0, [sp]
	ldr r0, _021A6528 ; =0x021B28DC
	str r4, [sp, #4]
	ldr r0, [r0, #0x1c]
	mov r1, #1
	add r2, r5, #0
	mov r6, #1
	bl ovy189_21a0e1c
	add r5, r0, #0
	bne _021A631E
	bl ovy189_21a6b08
	add r0, r4, #0
	bl ovy189_21a6200
	mov r0, #3
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A631E:
	ldr r1, [sp, #8]
	add r2, r6, #0
	str r4, [r1]
	ldr r1, [sp, #0xc]
	str r5, [r1]
	ldr r1, _021A6530 ; =0x021AE0D0
	bl ovy189_21a09ec
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	add r0, r5, #0
	mov r1, #0
	bl ovy189_21a092c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6534 ; =0x021AE1EC
	ldr r2, _021A6538 ; =0x021B29A9
	add r0, r5, #0
	bl ovy189_21a07bc
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A653C ; =0x021AE1F8
	ldr r2, _021A6540 ; =0x021B290D
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6544 ; =0x021AE200
	ldr r2, _021A6520 ; =0x021B2904
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6548 ; =0x021AE20C
	ldr r2, _021A654C ; =0x021B2990
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r2, _021A6528 ; =0x021B28DC
	ldr r1, _021A6550 ; =0x021AE214
	ldr r2, [r2, #0x18]
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6554 ; =0x021AE21C
	ldr r2, _021A6524 ; =0x021B294A
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6558 ; =0x021AE224
	ldr r2, _021A655C ; =0x021B2924
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r1, _021A6560 ; =0x021AE22C
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r2, [r0, #0x3c]
	cmp r2, #0
	beq _021A63DA
	ldr r1, _021A6564 ; =0x021AE234
	add r0, r5, #0
	bl ovy189_21a081c
	sub r1, r6, #2
	cmp r0, r1
	beq _021A63F2
_021A63DA:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _021A63F4
	ldr r1, _021A6568 ; =0x021AE23C
	add r0, r5, #0
	bl ovy189_21a081c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A63F4
_021A63F2:
	b _021A650A
_021A63F4:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r2, [r0, #0x44]
	cmp r2, #0
	beq _021A640C
	ldr r1, _021A656C ; =0x021AE244
	add r0, r5, #0
	bl ovy189_21a081c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A650A
_021A640C:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021A6426
	ldr r1, _021A6570 ; =0x021AE24C
	ldr r2, _021A6574 ; =0x021B2935
	add r0, r5, #0
	bl ovy189_21a081c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A650A
_021A6426:
	cmp r7, #0
	beq _021A6470
	add r0, r7, #0
	bl sub_021A6B6C
	str r0, [sp, #0x14]
	cmp r0, #0x40
	ble _021A644C
	mov r0, #5
	mov r1, #0
	bl ovy189_21a5e74
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_21a6258
	add sp, #0x118
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A644C:
	ldr r0, _021A6578 ; =0x021B2A0C
	mov r1, #0x59
	mov r6, #0x59
	bl sub_021A6B7C
	ldr r0, _021A6578 ; =0x021B2A0C
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ovy189_21a5b34
	ldr r1, _021A657C ; =0x021AE254
	ldr r2, _021A6578 ; =0x021B2A0C
	add r0, r5, #0
	bl ovy189_21a081c
	sub r6, #0x5a
	cmp r0, r6
	beq _021A650A
_021A6470:
	add r5, sp, #0x18
	ldr r1, _021A6540 ; =0x021B290D
	add r0, r5, #0
	mov r2, #0x80
	mov r4, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A6520 ; =0x021B2904
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A654C ; =0x021B2990
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A6528 ; =0x021B28DC
	add r0, r5, #0
	ldr r1, [r1, #0x18]
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A6524 ; =0x021B294A
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A655C ; =0x021B2924
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r1, _021A6574 ; =0x021B2935
	add r0, r5, #0
	mov r2, #0x80
	bl ovy189_21a5c04
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _021A64D6
	add r0, r5, #0
	add r2, r4, #0
	bl ovy189_21a5c04
_021A64D6:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r1, [r0, #0x40]
	cmp r1, #0
	beq _021A64E6
	add r0, sp, #0x18
	mov r2, #0x80
	bl ovy189_21a5c04
_021A64E6:
	ldr r0, _021A6528 ; =0x021B28DC
	ldr r1, [r0, #0x44]
	cmp r1, #0
	beq _021A64F6
	add r0, sp, #0x18
	mov r2, #0x80
	bl ovy189_21a5c04
_021A64F6:
	cmp r7, #0
	beq _021A6504
	ldr r1, _021A6578 ; =0x021B2A0C
	add r0, sp, #0x18
	mov r2, #0x80
	bl ovy189_21a5c04
_021A6504:
	add sp, #0x118
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A650A:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy189_21a6258
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6520: .word 0x021B2904
_021A6524: .word 0x021B294A
_021A6528: .word 0x021B28DC
_021A652C: .word ovy189_21a6070
_021A6530: .word 0x021AE0D0
_021A6534: .word 0x021AE1EC
_021A6538: .word 0x021B29A9
_021A653C: .word 0x021AE1F8
_021A6540: .word 0x021B290D
_021A6544: .word 0x021AE200
_021A6548: .word 0x021AE20C
_021A654C: .word 0x021B2990
_021A6550: .word 0x021AE214
_021A6554: .word 0x021AE21C
_021A6558: .word 0x021AE224
_021A655C: .word 0x021B2924
_021A6560: .word 0x021AE22C
_021A6564: .word 0x021AE234
_021A6568: .word 0x021AE23C
_021A656C: .word 0x021AE244
_021A6570: .word 0x021AE24C
_021A6574: .word 0x021B2935
_021A6578: .word 0x021B2A0C
_021A657C: .word 0x021AE254
	thumb_func_end ovy189_21a6270

	thumb_func_start ovy189_21a6580
ovy189_21a6580: ; 0x021A6580
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A6A98
	add r0, r4, #0
	bl ovy189_21a0fe4
	cmp r0, #0
	beq _021A65A2
	mov r0, #3
	mov r1, #0
	bl ovy189_21a5e74
	bl sub_021A6AA8
	mov r0, #0
	pop {r4, pc}
_021A65A2:
	ldr r0, _021A65B0 ; =0x021B28DC
	str r4, [r0, #0x10]
	bl sub_021A6AA8
	mov r0, #1
	pop {r4, pc}
	nop
_021A65B0: .word 0x021B28DC
	thumb_func_end ovy189_21a6580

	thumb_func_start ovy189_21a65b4
ovy189_21a65b4: ; 0x021A65B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #8]
	lsl r0, r2, #8
	add r5, r1, #0
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r0, #0x80
	bge _021A65CA
	mov r0, #0x80
	str r0, [sp, #0x10]
_021A65CA:
	ldr r4, _021A6728 ; =0x021B28DC
	ldr r0, [sp, #0x10]
	ldr r2, [r4, #4]
	mov r1, #4
	blx r2
	add r7, r0, #0
	bne _021A65E6
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A65E6:
	add r0, sp, #0x20
	add r1, r5, #0
	bl sub_021A6BA0
	add r6, r0, #0
	bl ovy189_21a5b24
	ldr r2, [r4, #4]
	add r0, r0, #1
	mov r1, #4
	blx r2
	add r5, r0, #0
	bne _021A6614
	ldr r1, [r4, #0x14]
	add r0, r7, #0
	blx r1
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A6614:
	add r1, sp, #0x20
	add r2, r6, #0
	bl ovy189_21a5b34
	mov r1, #0
	strb r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, sp, #0x20
	bl sub_021A6BA0
	str r0, [sp, #0x14]
	bl ovy189_21a5b24
	ldr r2, [r4, #4]
	add r0, r0, #1
	mov r1, #4
	blx r2
	add r6, r0, #0
	bne _021A6654
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r7, #0
	blx r1
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A6654:
	ldr r2, [sp, #0x14]
	add r1, sp, #0x20
	bl ovy189_21a5b34
	mov r1, #0
	strb r1, [r6, r0]
	ldr r0, [sp, #0x10]
	ldr r2, _021A672C ; =0x021ACD8E
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	add r3, r7, #0
	bl ovy189_21a6270
	cmp r0, #0
	bne _021A6690
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r7, #0
	blx r1
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A6690:
	ldr r0, [sp, #0x18]
	ldr r1, _021A6730 ; =0x021AE264
	add r2, r5, #0
	bl ovy189_21a081c
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	beq _021A66FC
	ldr r0, [sp, #0x18]
	ldr r1, _021A6734 ; =0x021AE26C
	add r2, r6, #0
	bl ovy189_21a081c
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	beq _021A66FC
	ldr r0, [sp, #0x1c]
	mov r1, #2
	str r1, [r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r5, [r0, #0x18]
	ldr r0, [sp, #0x1c]
	str r6, [r0, #0x1c]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	str r7, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl ovy189_21a6580
	cmp r0, #0
	bne _021A66F6
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r7, #0
	blx r1
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A66F6:
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A66FC:
	ldr r4, _021A6728 ; =0x021B28DC
	add r0, r6, #0
	ldr r1, [r4, #0x14]
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r7, #0
	blx r1
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl ovy189_21a6258
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A6728: .word 0x021B28DC
_021A672C: .word 0x021ACD8E
_021A6730: .word 0x021AE264
_021A6734: .word 0x021AE26C
	thumb_func_end ovy189_21a65b4

	thumb_func_start ovy189_21a6738
ovy189_21a6738: ; 0x021A6738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp, #8]
	add r1, r5, #0
	add r1, #0xac
	ldr r1, [r1]
	str r3, [sp, #0xc]
	cmp r2, r1
	bhs _021A675A
	mov r0, #5
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A675A:
	bl sub_021A6B6C
	add r7, r0, #0
	cmp r7, #0x20
	ble _021A6772
	mov r0, #5
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A6772:
	cmp r7, #0
	ble _021A677E
	bl ovy189_21a5b24
	add r6, r0, #0
	b _021A6780
_021A677E:
	mov r6, #0
_021A6780:
	ldr r2, _021A6838 ; =0x021B28DC
	add r0, r6, #1
	ldr r2, [r2, #4]
	mov r1, #4
	blx r2
	add r4, r0, #0
	bne _021A679C
	mov r0, #1
	mov r1, #0
	bl ovy189_21a5e74
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A679C:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	ldr r2, _021A683C ; =0x021ACD97
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #8]
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl ovy189_21a6270
	cmp r0, #0
	bne _021A67C6
	ldr r1, _021A6838 ; =0x021B28DC
	add r0, r4, #0
	ldr r1, [r1, #0x14]
	blx r1
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A67C6:
	cmp r6, #0
	ble _021A67E8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy189_21a5b34
	mov r6, #0
	strb r6, [r4, r0]
	ldr r0, [sp, #0x10]
	ldr r1, _021A6840 ; =0x021AE270
	add r2, r4, #0
	bl ovy189_21a081c
	sub r1, r6, #1
	cmp r0, r1
	beq _021A681A
_021A67E8:
	ldr r0, [sp, #0x14]
	mov r1, #3
	str r1, [r0]
	ldr r0, [sp, #0x14]
	add r5, #0xac
	str r4, [r0, #0xc]
	ldr r1, [r5]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl ovy189_21a6580
	cmp r0, #0
	bne _021A6814
	ldr r1, _021A6838 ; =0x021B28DC
	add r0, r4, #0
	ldr r1, [r1, #0x14]
	blx r1
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A6814:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A681A:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl ovy189_21a6258
	ldr r1, _021A6838 ; =0x021B28DC
	add r0, r4, #0
	ldr r1, [r1, #0x14]
	blx r1
	mov r0, #1
	add r1, r6, #0
	bl ovy189_21a5e74
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A6838: .word 0x021B28DC
_021A683C: .word 0x021ACD97
_021A6840: .word 0x021AE270
	thumb_func_end ovy189_21a6738

	thumb_func_start ovy189_21a6844
ovy189_21a6844: ; 0x021A6844
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _021A686C ; =0x021B28DC
	add r2, r1, #0
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021A6856
	mov r0, #0
	pop {r3, pc}
_021A6856:
	ldr r0, [r0, #0x10]
	add r1, r3, #0
	bl ovy189_21a1114
	cmp r0, #0
	bne _021A6866
	mov r0, #1
	pop {r3, pc}
_021A6866:
	mov r0, #0
	pop {r3, pc}
	nop
_021A686C: .word 0x021B28DC
	thumb_func_end ovy189_21a6844

	thumb_func_start ovy189_21a6870
ovy189_21a6870: ; 0x021A6870
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ovy189_21a1080
	add r1, r0, #0
	bmi _021A68A0
	ldr r0, [sp, #4]
	bl sub_021A6B98
	ldr r1, [r4, #0xc]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	blt _021A689A
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021A689A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021A68A0:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy189_21a6870

	thumb_func_start ovy189_21a68a8
ovy189_21a68a8: ; 0x021A68A8
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ovy189_21a1080
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bne _021A68C2
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021A68C2:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy189_21a68a8

	thumb_func_start ovy189_21a68c8
ovy189_21a68c8: ; 0x021A68C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r2, [r1, #0x10]
	str r1, [sp]
	mov r1, #0xb0
	ldr r0, [r0, #0xc]
	mul r1, r2
	bl sub_021A6B7C
	ldr r1, _021A6A80 ; =0x021AE27C
	add r0, r4, #0
	add r2, sp, #0x28
	bl ovy189_21a08a0
	cmp r0, #0
	ble _021A6904
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #4]
	ldrsb r0, [r1, r0]
	cmp r0, #0x30
	bne _021A6904
	mov r0, #1
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bne _021A6904
	b _021A6A7A
_021A6904:
	add r0, r4, #0
	add r1, sp, #0x30
	add r2, sp, #0x2c
	bl ovy189_21a1080
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _021A6922
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bgt _021A6924
_021A6922:
	b _021A6A78
_021A6924:
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _021A6930
	mov r0, #1
	str r0, [sp, #4]
	b _021A6A78
_021A6930:
	ldr r0, [sp]
	mov r1, #0xb0
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0xc]
	mov r6, #0
	mul r1, r0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r4, r5, #0
	mov r2, #0
	cmp r5, r0
	blt _021A694E
	b _021A6A66
_021A694E:
	add r0, r1, #0
	add r0, r7, r0
	str r0, [sp, #0x24]
	add r0, #0x9e
	str r0, [sp, #0x24]
	add r0, r1, #0
	add r0, r7, r0
	str r0, [sp, #0x20]
	add r0, #0x93
	str r0, [sp, #0x20]
	add r0, r1, #0
	add r0, r7, r0
	str r0, [sp, #0x1c]
	add r0, #0x88
	str r0, [sp, #0x1c]
	add r0, r1, #0
	add r0, r7, r0
	str r0, [sp, #0x18]
	add r0, #0x22
	str r0, [sp, #0x18]
_021A6976:
	ldr r1, [sp, #0x30]
	ldrsb r0, [r1, r5]
	cmp r0, #0xd
	bne _021A6982
	mov r2, #1
	b _021A6A5E
_021A6982:
	cmp r2, #0
	beq _021A69BA
	cmp r0, #0xa
	bne _021A6A5C
	cmp r6, #5
	bne _021A69AA
	sub r0, r5, #1
	sub r2, r0, r4
	cmp r2, #8
	bgt _021A6A78
	add r0, r1, r4
	add r1, r2, #0
	bl sub_021A6B98
	cmp r0, #0
	blt _021A6A78
	ldr r1, [sp, #0x14]
	add r1, r7, r1
	add r1, #0xac
	str r0, [r1]
_021A69AA:
	add r5, r5, #1
	cmp r6, #5
	blt _021A69B4
	mov r0, #1
	b _021A69B6
_021A69B4:
	mov r0, #0
_021A69B6:
	str r0, [sp, #4]
	b _021A6A66
_021A69BA:
	cmp r0, #9
	bne _021A6A5C
	cmp r6, #5
	bhi _021A6A58
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A69CE: ; jump table
	.short _021A69DA - _021A69CE - 2 ; case 0
	.short _021A69EC - _021A69CE - 2 ; case 1
	.short _021A6A20 - _021A69CE - 2 ; case 2
	.short _021A6A2A - _021A69CE - 2 ; case 3
	.short _021A6A34 - _021A69CE - 2 ; case 4
	.short _021A6A3E - _021A69CE - 2 ; case 5
_021A69DA:
	sub r2, r5, r4
	cmp r2, #0x20
	bhi _021A6A78
	ldr r0, [sp, #0x14]
	add r0, r7, r0
_021A69E4:
	add r1, r1, r4
	bl sub_021A6B88
	b _021A6A58
_021A69EC:
	sub r0, r5, r4
	str r0, [sp, #8]
	bl sub_021A5B1C
	cmp r0, #0x66
	bhi _021A6A78
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #8]
	add r0, sp, #0x34
	add r1, r1, r4
	bl ovy189_21a5c04
	add r2, r0, #0
	cmp r2, #0x66
	bls _021A6A0C
	mov r2, #0x66
_021A6A0C:
	ldr r0, [sp, #0x18]
	add r1, sp, #0x34
	bl sub_021A6B88
	ldr r0, [sp, #0x14]
	add r1, r7, r0
	add r1, #0x86
	mov r0, #0
	strh r0, [r1]
	b _021A6A58
_021A6A20:
	sub r2, r5, r4
	cmp r2, #0xa
	bhi _021A6A78
	ldr r0, [sp, #0x1c]
	b _021A69E4
_021A6A2A:
	sub r2, r5, r4
	cmp r2, #0xa
	bhi _021A6A78
	ldr r0, [sp, #0x20]
	b _021A69E4
_021A6A34:
	sub r2, r5, r4
	cmp r2, #0xa
	bhi _021A6A78
	ldr r0, [sp, #0x24]
	b _021A69E4
_021A6A3E:
	sub r2, r5, r4
	cmp r2, #8
	bgt _021A6A78
	add r0, r1, r4
	add r1, r2, #0
	bl sub_021A6B98
	cmp r0, #0
	blt _021A6A78
	ldr r1, [sp, #0x14]
	add r1, r7, r1
	add r1, #0xac
	str r0, [r1]
_021A6A58:
	add r6, r6, #1
	add r4, r5, #1
_021A6A5C:
	mov r2, #0
_021A6A5E:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021A6976
_021A6A66:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _021A6A78
	b _021A6924
_021A6A78:
	ldr r0, [sp, #4]
_021A6A7A:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_021A6A80: .word 0x021AE27C
	thumb_func_end ovy189_21a68c8

	thumb_func_start ovy189_21a6a84
ovy189_21a6a84: ; 0x021A6A84
	push {r3, lr}
	ldr r0, _021A6A90 ; =0x021B2978
	bl OS_InitMutex
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_021A6A90: .word 0x021B2978
	thumb_func_end ovy189_21a6a84

	thumb_func_start sub_021A6A94
sub_021A6A94: ; 0x021A6A94
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6A94

	thumb_func_start sub_021A6A98
sub_021A6A98: ; 0x021A6A98
	ldr r0, _021A6AA0 ; =0x021B2978
	ldr r3, _021A6AA4 ; =OS_LockMutex
	bx r3
	nop
_021A6AA0: .word 0x021B2978
_021A6AA4: .word OS_LockMutex
	thumb_func_end sub_021A6A98

	thumb_func_start sub_021A6AA8
sub_021A6AA8: ; 0x021A6AA8
	ldr r0, _021A6AB0 ; =0x021B2978
	ldr r3, _021A6AB4 ; =OS_UnlockMutex
	bx r3
	nop
_021A6AB0: .word 0x021B2978
_021A6AB4: .word OS_UnlockMutex
	thumb_func_end sub_021A6AA8

	thumb_func_start ovy189_21a6ab8
ovy189_21a6ab8: ; 0x021A6AB8
	push {r3, lr}
	ldr r0, _021A6ACC ; =0x021B2960
	bl OS_InitMutex
	ldr r0, _021A6AD0 ; =0x021B28DC
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #1
	pop {r3, pc}
	nop
_021A6ACC: .word 0x021B2960
_021A6AD0: .word 0x021B28DC
	thumb_func_end ovy189_21a6ab8

	thumb_func_start sub_021A6AD4
sub_021A6AD4: ; 0x021A6AD4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6AD4

	thumb_func_start ovy189_21a6ad8
ovy189_21a6ad8: ; 0x021A6AD8
	push {r4, lr}
	ldr r0, _021A6B00 ; =0x021B2960
	bl OS_LockMutex
	ldr r0, _021A6B04 ; =0x021B28DC
	mov r4, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021A6AEC
	mov r4, #0
_021A6AEC:
	cmp r4, #0
	beq _021A6AF6
	ldr r0, _021A6B04 ; =0x021B28DC
	mov r1, #1
	str r1, [r0, #0x20]
_021A6AF6:
	ldr r0, _021A6B00 ; =0x021B2960
	bl OS_UnlockMutex
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021A6B00: .word 0x021B2960
_021A6B04: .word 0x021B28DC
	thumb_func_end ovy189_21a6ad8

	thumb_func_start ovy189_21a6b08
ovy189_21a6b08: ; 0x021A6B08
	push {r4, lr}
	ldr r4, _021A6B20 ; =0x021B2960
	add r0, r4, #0
	bl OS_LockMutex
	ldr r0, _021A6B24 ; =0x021B28DC
	mov r1, #0
	str r1, [r0, #0x20]
	add r0, r4, #0
	bl OS_UnlockMutex
	pop {r4, pc}
	.align 2, 0
_021A6B20: .word 0x021B2960
_021A6B24: .word 0x021B28DC
	thumb_func_end ovy189_21a6b08

	thumb_func_start sub_021A6B28
sub_021A6B28: ; 0x021A6B28
	ldr r3, _021A6B30 ; =OS_SendMessage
	mov r1, #0
	mov r2, #0
	bx r3
	.align 2, 0
_021A6B30: .word OS_SendMessage
	thumb_func_end sub_021A6B28

	thumb_func_start ovy189_21a6b34
ovy189_21a6b34: ; 0x021A6B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, sp, #4
	str r0, [sp]
	add r0, r6, #0
	bl OS_GetMacAddress
	add r4, sp, #8
	mov r5, #0
	add r4, #2
	mov r7, #2
_021A6B4A:
	ldrb r1, [r6, r5]
	lsl r0, r5, #1
	add r0, r4, r0
	add r2, r7, #0
	bl ovy189_21a6c48
	add r5, r5, #1
	cmp r5, #6
	blt _021A6B4A
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0xc
	bl ovy189_21a5b34
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy189_21a6b34

	thumb_func_start sub_021A6B6C
sub_021A6B6C: ; 0x021A6B6C
	ldr r3, _021A6B70 ; =sub_02085D9C
	bx r3
	.align 2, 0
_021A6B70: .word sub_02085D9C
	thumb_func_end sub_021A6B6C

	thumb_func_start sub_021A6B74
sub_021A6B74: ; 0x021A6B74
	ldr r3, _021A6B78 ; =sub_02086014
	bx r3
	.align 2, 0
_021A6B78: .word sub_02086014
	thumb_func_end sub_021A6B74

	thumb_func_start sub_021A6B7C
sub_021A6B7C: ; 0x021A6B7C
	ldr r3, _021A6B84 ; =MI_CpuFill8
	add r2, r1, #0
	mov r1, #0
	bx r3
	.align 2, 0
_021A6B84: .word MI_CpuFill8
	thumb_func_end sub_021A6B7C

	thumb_func_start sub_021A6B88
sub_021A6B88: ; 0x021A6B88
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _021A6B94 ; =MI_CpuCopy8
	bx r3
	nop
_021A6B94: .word MI_CpuCopy8
	thumb_func_end sub_021A6B88

	thumb_func_start sub_021A6B98
sub_021A6B98: ; 0x021A6B98
	ldr r3, _021A6B9C ; =ovy189_219db50
	bx r3
	.align 2, 0
_021A6B9C: .word ovy189_219db50
	thumb_func_end sub_021A6B98

	thumb_func_start sub_021A6BA0
sub_021A6BA0: ; 0x021A6BA0
	ldr r3, _021A6BA4 ; =ovy189_219dbb0
	bx r3
	.align 2, 0
_021A6BA4: .word ovy189_219dbb0
	thumb_func_end sub_021A6BA0

	thumb_func_start ovy189_21a6ba8
ovy189_21a6ba8: ; 0x021A6BA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	ldr r0, _021A6C3C ; =0x01634578
	ldr r1, _021A6C40 ; =0x5D8A0000
	sub r1, r5, r1
	mov ip, r7
	mov r1, ip
	sbc r1, r0
	blo _021A6BCA
	add sp, #0x14
	sub r0, r4, #1
	pop {r4, r5, r6, r7, pc}
_021A6BCA:
	add r6, r4, #0
	add r3, r4, #0
_021A6BCE:
	ldr r0, _021A6C44 ; =0x021ACDF8
	lsl r1, r6, #3
	add r2, r0, r1
	ldr r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r5, r0
	mov ip, r7
	mov r1, ip
	ldr r0, [sp, #0xc]
	sbc r1, r0
	blo _021A6C10
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D5C4
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, #0
	blx sub_0208D60C
	sub r5, r5, r0
	sbc r7, r1
	ldr r1, [sp, #0x10]
	mov r3, #1
	add r1, #0x30
	str r1, [sp, #0x10]
	b _021A6C20
_021A6C10:
	cmp r3, #0
	bne _021A6C1E
	mov r0, #0x11
	sub r1, r0, r6
	ldr r0, [sp, #4]
	cmp r1, r0
	bgt _021A6C26
_021A6C1E:
	mov r1, #0x30
_021A6C20:
	ldr r0, [sp]
	strb r1, [r0, r4]
	add r4, r4, #1
_021A6C26:
	add r6, r6, #1
	cmp r6, #0x10
	blt _021A6BCE
	mov r0, #0x30
	add r1, r5, r0
	ldr r0, [sp]
	strb r1, [r0, r4]
	add r0, r4, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A6C3C: .word 0x01634578
_021A6C40: .word 0x5D8A0000
_021A6C44: .word 0x021ACDF8
	thumb_func_end ovy189_21a6ba8

	thumb_func_start ovy189_21a6c48
ovy189_21a6c48: ; 0x021A6C48
	push {r4, r5, r6, r7}
	mov r4, #0
	cmp r2, #8
	ble _021A6C56
	sub r0, r4, #1
	pop {r4, r5, r6, r7}
	bx lr
_021A6C56:
	mov r3, #1
	cmp r2, #1
	blt _021A6C7E
	mov r5, #0xf
_021A6C5E:
	sub r6, r2, r3
	lsl r6, r6, #2
	add r7, r1, #0
	lsr r7, r6
	add r6, r7, #0
	and r6, r5
	cmp r6, #0xa
	bhs _021A6C72
	add r6, #0x30
	b _021A6C74
_021A6C72:
	add r6, #0x57
_021A6C74:
	add r3, r3, #1
	strb r6, [r0, r4]
	add r4, r4, #1
	cmp r3, r2
	ble _021A6C5E
_021A6C7E:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy189_21a6c48
_021A6C84:
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x68, 0xC0, 0x9F, 0xE5, 0x01, 0x40, 0xA0, 0xE3
	.byte 0x00, 0x40, 0x8C, 0xE5, 0x00, 0xE0, 0xA0, 0xE3, 0x04, 0xE0, 0x8C, 0xE5, 0x08, 0x00, 0x8C, 0xE5
	.byte 0x0C, 0x10, 0x8C, 0xE5, 0x10, 0x20, 0x8C, 0xE5, 0x00, 0x00, 0x53, 0xE3, 0x04, 0x00, 0x00, 0x0A
	.byte 0x01, 0x00, 0x53, 0xE3, 0x05, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x53, 0xE3, 0x06, 0x00, 0x00, 0x0A
	.byte 0x09, 0x00, 0x00, 0xEA, 0x30, 0x00, 0x9F, 0xE5, 0x00, 0xE0, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x24, 0x00, 0x9F, 0xE5, 0x00, 0x40, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x18, 0x00, 0x9F, 0xE5
	.byte 0x02, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x08, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x40, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02
	.byte 0xF8, 0x41, 0x2D, 0xE9, 0x0C, 0xD0, 0x4D, 0xE2, 0x20, 0x5A, 0x9F, 0xE5, 0x20, 0x6A, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x95, 0xE5, 0x0C, 0x70, 0xE0, 0xE3, 0x18, 0x00, 0x50, 0xE3, 0x00, 0x80, 0xA0, 0xE3
	.byte 0x18, 0x40, 0xA0, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x7E, 0x02, 0x00, 0xEA, 0x7D, 0x02, 0x00, 0xEA
	.byte 0x7C, 0x02, 0x00, 0xEA, 0x15, 0x00, 0x00, 0xEA, 0x76, 0x02, 0x00, 0xEA, 0x59, 0x00, 0x00, 0xEA
	.byte 0x74, 0x02, 0x00, 0xEA, 0x8D, 0x00, 0x00, 0xEA, 0x72, 0x02, 0x00, 0xEA, 0xBC, 0x00, 0x00, 0xEA
	.byte 0x70, 0x02, 0x00, 0xEA, 0xF4, 0x00, 0x00, 0xEA, 0x6E, 0x02, 0x00, 0xEA, 0x25, 0x01, 0x00, 0xEA
	.byte 0x6C, 0x02, 0x00, 0xEA, 0x59, 0x01, 0x00, 0xEA, 0x6A, 0x02, 0x00, 0xEA, 0x8F, 0x01, 0x00, 0xEA
	.byte 0x68, 0x02, 0x00, 0xEA, 0xD3, 0x01, 0x00, 0xEA, 0x66, 0x02, 0x00, 0xEA, 0xF9, 0x01, 0x00, 0xEA
	.byte 0x64, 0x02, 0x00, 0xEA, 0x2A, 0x02, 0x00, 0xEA, 0x62, 0x02, 0x00, 0xEA, 0x65, 0x02, 0x00, 0xEA
	.byte 0x38, 0x08, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3
	.byte 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x7C, 0xC5, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5
	.byte 0x74, 0x04, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0x56, 0x08, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x62, 0x08, 0x00, 0xFA
	.byte 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5, 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5
	.byte 0xC4, 0x01, 0xD5, 0xE5, 0x0E, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x25, 0x00, 0x00, 0xEA
	.byte 0x24, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x00, 0xEA, 0x0D, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x00, 0xEA
	.byte 0x20, 0x00, 0x00, 0xEA, 0x1F, 0x00, 0x00, 0xEA, 0x1E, 0x00, 0x00, 0xEA, 0x0D, 0x00, 0x00, 0xEA
	.byte 0x12, 0x00, 0x00, 0xEA, 0x13, 0x00, 0x00, 0xEA, 0x14, 0x00, 0x00, 0xEA, 0x15, 0x00, 0x00, 0xEA
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x00, 0xEA, 0x14, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5
	.byte 0x15, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x85, 0xE5, 0x12, 0x00, 0x00, 0xEA
	.byte 0x1C, 0x00, 0x44, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA, 0x19, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA
	.byte 0x1E, 0x00, 0x44, 0xE2, 0xF7, 0xFF, 0xFF, 0xEA, 0x1F, 0x00, 0x44, 0xE2, 0xF5, 0xFF, 0xFF, 0xEA
	.byte 0x20, 0x00, 0x44, 0xE2, 0xF3, 0xFF, 0xFF, 0xEA, 0x21, 0x00, 0x44, 0xE2, 0xF1, 0xFF, 0xFF, 0xEA
	.byte 0x22, 0x00, 0x44, 0xE2, 0xEF, 0xFF, 0xFF, 0xEA, 0x23, 0x00, 0x44, 0xE2, 0xED, 0xFF, 0xFF, 0xEA
	.byte 0x1A, 0x00, 0x44, 0xE2, 0xEB, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5, 0x21, 0x08, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0xF2, 0x07, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0x36, 0xC5, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x2E, 0x04, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5
	.byte 0x10, 0x08, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x40, 0x85, 0xE5, 0x1C, 0x08, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5
	.byte 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5, 0xC4, 0x01, 0xD5, 0xE5, 0x05, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0xA0, 0x13, 0x00, 0x00, 0xEA
	.byte 0x12, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x07, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3, 0x09, 0x00, 0x00, 0x0A
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5, 0x09, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x44, 0xE2
	.byte 0x04, 0x00, 0x85, 0xE5, 0x06, 0x00, 0x00, 0xEA, 0x1C, 0x00, 0x44, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA
	.byte 0x1B, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA, 0x01, 0x00, 0xE0, 0xE3, 0xF7, 0xFF, 0xFF, 0xEA
	.byte 0x04, 0x70, 0x85, 0xE5, 0xEB, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0xBC, 0x07, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3
	.byte 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x00, 0xC5, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5
	.byte 0xF8, 0x03, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0xDA, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0xE6, 0x07, 0x00, 0xFA
	.byte 0x00, 0x10, 0xA0, 0xE1, 0x4A, 0x6F, 0xA0, 0xE3, 0xC8, 0x01, 0x95, 0xE5, 0x06, 0x20, 0xA0, 0xE1
	.byte 0x5F, 0x72, 0xFB, 0xEB, 0x08, 0x00, 0x9D, 0xE5, 0x4A, 0x0F, 0x50, 0xE3, 0x04, 0x80, 0x85, 0x05
	.byte 0x10, 0x00, 0x00, 0x0A, 0xC8, 0x01, 0x95, 0xE5, 0x00, 0x00, 0xD0, 0xE5, 0x03, 0x00, 0x50, 0xE3
	.byte 0x06, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x50, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x0E, 0x00, 0x50, 0xE3
	.byte 0x04, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x00, 0xEA, 0x1B, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x00, 0xEA
	.byte 0x4B, 0x0F, 0x46, 0xE2, 0x02, 0x00, 0x00, 0xEA, 0x1A, 0x00, 0x44, 0xE2, 0x00, 0x00, 0x00, 0xEA
	.byte 0x25, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x85, 0xE5, 0xBA, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x8B, 0x07, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0xCF, 0xC4, 0xFA, 0xEB
	.byte 0x00, 0x00, 0x9D, 0xE5, 0xC7, 0x03, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0xA9, 0x07, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0xB5, 0x07, 0x00, 0xFA, 0x00, 0x10, 0xA0, 0xE1, 0x4A, 0x6F, 0xA0, 0xE3, 0xC8, 0x01, 0x95, 0xE5
	.byte 0x06, 0x20, 0xA0, 0xE1, 0x2E, 0x72, 0xFB, 0xEB, 0x08, 0x00, 0x9D, 0xE5, 0x4A, 0x0F, 0x50, 0xE3
	.byte 0x01, 0x00, 0xA0, 0x03, 0x04, 0x00, 0x85, 0x05, 0x18, 0x00, 0x00, 0x0A, 0xC8, 0x01, 0x95, 0xE5
	.byte 0x00, 0x00, 0xD0, 0xE5, 0x05, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0xCA, 0x03, 0x00, 0x50, 0xE3
	.byte 0x11, 0x00, 0x00, 0xBA, 0x0A, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0x00, 0x0A
	.byte 0x05, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x0B, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3
	.byte 0x07, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x00, 0xEA, 0x1B, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x85, 0xE5
	.byte 0x06, 0x00, 0x00, 0xEA, 0x4B, 0x0F, 0x46, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA, 0x04, 0x80, 0x85, 0xE5
	.byte 0x02, 0x00, 0x00, 0xEA, 0x1A, 0x00, 0x44, 0xE2, 0xF7, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5
	.byte 0x80, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x51, 0x07, 0x00, 0xFA
	.byte 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2
	.byte 0x00, 0x40, 0x85, 0xE5, 0x95, 0xC4, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x8D, 0x03, 0x00, 0xEB
	.byte 0x04, 0x00, 0x85, 0xE5, 0x6F, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x7B, 0x07, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5
	.byte 0x01, 0x00, 0xD0, 0xE5, 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5, 0xC4, 0x01, 0xD5, 0xE5
	.byte 0x05, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0xCA, 0x01, 0x00, 0x50, 0xE3, 0x11, 0x00, 0x00, 0xBA
	.byte 0x07, 0x00, 0x00, 0x0A, 0x03, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x50, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x0B, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5, 0x07, 0x00, 0x00, 0xEA, 0x1B, 0x00, 0x44, 0xE2
	.byte 0x04, 0x00, 0x85, 0xE5, 0x04, 0x00, 0x00, 0xEA, 0x1C, 0x00, 0x44, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA
	.byte 0x1A, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5, 0x4D, 0x07, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x1E, 0x07, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0x62, 0xC4, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x5A, 0x03, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5
	.byte 0x3C, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x40, 0x85, 0xE5, 0x48, 0x07, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5
	.byte 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5, 0xC4, 0x01, 0xD5, 0xE5, 0x05, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0x00, 0xCA, 0x00, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0xA0, 0x13, 0x00, 0x00, 0xEA
	.byte 0x12, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3, 0x09, 0x00, 0x00, 0x0A
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5, 0x09, 0x00, 0x00, 0xEA, 0x1B, 0x00, 0x44, 0xE2
	.byte 0x04, 0x00, 0x85, 0xE5, 0x06, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x44, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA
	.byte 0x1C, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA, 0x01, 0x00, 0xE0, 0xE3, 0xF7, 0xFF, 0xFF, 0xEA
	.byte 0x04, 0x70, 0x85, 0xE5, 0x17, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0xE8, 0x06, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3
	.byte 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x2C, 0xC4, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5
	.byte 0x24, 0x03, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0x06, 0x07, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x12, 0x07, 0x00, 0xFA
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x00, 0x10, 0xD6, 0xE5, 0x01, 0x00, 0xD6, 0xE5, 0xC8, 0x21, 0x95, 0xE5
	.byte 0x00, 0x10, 0xC2, 0xE5, 0x01, 0x00, 0xC2, 0xE5, 0xC8, 0x01, 0x95, 0xE5, 0x00, 0x10, 0xD0, 0xE5
	.byte 0x01, 0x00, 0x51, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x0E, 0x00, 0x51, 0xE3, 0x10, 0x00, 0x00, 0x0A
	.byte 0x11, 0x00, 0x00, 0xEA, 0x08, 0x10, 0x9D, 0xE5, 0x02, 0x20, 0x41, 0xE2, 0x4A, 0x0F, 0x52, 0xE3
	.byte 0x08, 0x00, 0x00, 0x3A, 0xCC, 0x33, 0x9F, 0xE5, 0x02, 0x10, 0x86, 0xE2, 0x92, 0x33, 0x84, 0xE0
	.byte 0x04, 0x30, 0x42, 0xE0, 0xA3, 0x40, 0x84, 0xE0, 0x24, 0x44, 0xA0, 0xE1, 0x04, 0x40, 0x85, 0xE5
	.byte 0x77, 0x71, 0xFB, 0xEB, 0x06, 0x00, 0x00, 0xEA, 0x02, 0x00, 0x51, 0xE3, 0x04, 0x80, 0x85, 0x05
	.byte 0x03, 0x00, 0x00, 0xEA, 0x1A, 0x00, 0x44, 0xE2, 0x00, 0x00, 0x00, 0xEA, 0x25, 0x00, 0x44, 0xE2
	.byte 0x04, 0x00, 0x85, 0xE5, 0xDF, 0x06, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0xB0, 0x06, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3
	.byte 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0xF4, 0xC3, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5
	.byte 0xEC, 0x02, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0xCE, 0x06, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0xDA, 0x06, 0x00, 0xFA
	.byte 0x00, 0x10, 0xA0, 0xE1, 0x4A, 0x6F, 0xA0, 0xE3, 0xC8, 0x01, 0x95, 0xE5, 0x06, 0x20, 0xA0, 0xE1
	.byte 0x53, 0x71, 0xFB, 0xEB, 0x08, 0x00, 0x9D, 0xE5, 0x4A, 0x0F, 0x50, 0xE3, 0x04, 0x80, 0x85, 0x05
	.byte 0x25, 0x00, 0x00, 0x0A, 0xC8, 0x01, 0x95, 0xE5, 0x00, 0x00, 0xD0, 0xE5, 0x0E, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x1F, 0x00, 0x00, 0xEA, 0x1E, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x00, 0xEA
	.byte 0x0B, 0x00, 0x00, 0xEA, 0x1B, 0x00, 0x00, 0xEA, 0x1A, 0x00, 0x00, 0xEA, 0x19, 0x00, 0x00, 0xEA
	.byte 0x18, 0x00, 0x00, 0xEA, 0x17, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x00, 0xEA, 0x0D, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x85, 0xE5, 0x0E, 0x00, 0x00, 0xEA
	.byte 0x1E, 0x00, 0x44, 0xE2, 0xFB, 0xFF, 0xFF, 0xEA, 0x1F, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA
	.byte 0x13, 0x0E, 0x46, 0xE2, 0xF7, 0xFF, 0xFF, 0xEA, 0x21, 0x00, 0x44, 0xE2, 0xF5, 0xFF, 0xFF, 0xEA
	.byte 0x22, 0x00, 0x44, 0xE2, 0xF3, 0xFF, 0xFF, 0xEA, 0x23, 0x00, 0x44, 0xE2, 0xF1, 0xFF, 0xFF, 0xEA
	.byte 0x1A, 0x00, 0x44, 0xE2, 0xEF, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5, 0x99, 0x06, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x6A, 0x06, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0xAE, 0xC3, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0xA6, 0x02, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5
	.byte 0x88, 0x06, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x40, 0x85, 0xE5, 0x94, 0x06, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5
	.byte 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5, 0xC4, 0x01, 0xD5, 0xE5, 0x01, 0x00, 0x50, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A, 0x0E, 0x00, 0x50, 0xE3
	.byte 0x1A, 0x00, 0x44, 0x02, 0x04, 0x00, 0x85, 0x05, 0x03, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5
	.byte 0x01, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x44, 0xE2, 0x04, 0x00, 0x85, 0xE5, 0x71, 0x06, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x42, 0x06, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0x86, 0xC3, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x7E, 0x02, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5
	.byte 0x60, 0x06, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x40, 0x85, 0xE5, 0x6C, 0x06, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5
	.byte 0x00, 0x10, 0xC6, 0xE5, 0x01, 0x00, 0xC6, 0xE5, 0xC4, 0x01, 0xD5, 0xE5, 0x07, 0x00, 0x50, 0xE3
	.byte 0x07, 0x00, 0x00, 0xCA, 0x01, 0x00, 0x50, 0xE3, 0x11, 0x00, 0x00, 0xBA, 0x07, 0x00, 0x00, 0x0A
	.byte 0x06, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A, 0x07, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x00, 0x0A
	.byte 0x0B, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x00, 0xEA
	.byte 0x04, 0x80, 0x85, 0xE5, 0x07, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3, 0x04, 0x00, 0x85, 0xE5
	.byte 0x04, 0x00, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3, 0xFB, 0xFF, 0xFF, 0xEA, 0x1A, 0x00, 0x44, 0xE2
	.byte 0xF9, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5, 0x3E, 0x06, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x0F, 0x06, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5, 0x53, 0xC3, 0xFA, 0xEB
	.byte 0x00, 0x00, 0x9D, 0xE5, 0x4B, 0x02, 0x00, 0xEB, 0x04, 0x00, 0x85, 0xE5, 0x2D, 0x06, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x40, 0x85, 0xE5
	.byte 0x39, 0x06, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5, 0x01, 0x00, 0xD0, 0xE5, 0xC8, 0x21, 0x95, 0xE5
	.byte 0x00, 0x10, 0xC2, 0xE5, 0x01, 0x00, 0xC2, 0xE5, 0x08, 0x00, 0x9D, 0xE5, 0x08, 0x00, 0x50, 0xE3
	.byte 0x04, 0x80, 0x85, 0x05, 0x18, 0x00, 0x00, 0x0A, 0xC8, 0x01, 0x95, 0xE5, 0x00, 0x00, 0xD0, 0xE5
	.byte 0x07, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0xCA, 0x01, 0x00, 0x50, 0xE3, 0x11, 0x00, 0x00, 0xBA
	.byte 0x07, 0x00, 0x00, 0x0A, 0x06, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A, 0x07, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0x00, 0x0A, 0x0B, 0x00, 0x00, 0xEA, 0x0E, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x00, 0xEA, 0x04, 0x80, 0x85, 0xE5, 0x07, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x85, 0xE5, 0x04, 0x00, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3, 0xFB, 0xFF, 0xFF, 0xEA
	.byte 0x1A, 0x00, 0x44, 0xE2, 0xF9, 0xFF, 0xFF, 0xEA, 0x04, 0x70, 0x85, 0xE5, 0x05, 0x06, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x00, 0x40, 0x85, 0xE5, 0x24, 0x00, 0x44, 0xE2
	.byte 0x04, 0x00, 0x85, 0xE5, 0xFF, 0x05, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8
	.byte 0x6C, 0x2A, 0x1B, 0x02, 0x30, 0x2C, 0x1B, 0x02, 0x4D, 0x91, 0xCF, 0xBA, 0x08, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0x6C, 0x2A, 0x1B, 0x02
	.byte 0x30, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x50, 0xE3, 0x02, 0x00, 0x00, 0x0A
	.byte 0x18, 0x00, 0x50, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x01, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x81, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x1E, 0xFF, 0x2F, 0xE1, 0x6C, 0x2A, 0x1B, 0x02, 0x04, 0x00, 0x9F, 0xE5
	.byte 0x04, 0x00, 0x90, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0x6C, 0x2A, 0x1B, 0x02, 0xF8, 0x41, 0x2D, 0xE9
	.byte 0x04, 0xD0, 0x4D, 0xE2, 0x90, 0x60, 0x9F, 0xE5, 0x00, 0x30, 0xA0, 0xE1, 0x01, 0x80, 0xA0, 0xE1
	.byte 0x02, 0x70, 0xA0, 0xE1, 0x06, 0x00, 0xA0, 0xE1, 0x03, 0x10, 0xA0, 0xE1, 0x4A, 0x2F, 0xA0, 0xE3
	.byte 0x67, 0x70, 0xFB, 0xEB, 0x74, 0x40, 0x9F, 0xE5, 0x00, 0x50, 0xA0, 0xE3, 0x70, 0x00, 0x9F, 0xE5
	.byte 0x08, 0x10, 0xA0, 0xE1, 0x07, 0x20, 0xA0, 0xE1, 0x3C, 0x51, 0x84, 0xE5, 0x60, 0x70, 0xFB, 0xEB
	.byte 0x60, 0x00, 0x9F, 0xE5, 0xC0, 0x71, 0x84, 0xE5, 0x5C, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0x5C, 0x05, 0x00, 0xFA, 0x00, 0x50, 0x8D, 0xE5, 0x50, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5
	.byte 0x06, 0x20, 0xA0, 0xE1, 0x1B, 0x3E, 0xA0, 0xE3, 0x33, 0x06, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x02, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0xF8, 0x81, 0xBD, 0x08
	.byte 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5
	.byte 0xBC, 0x05, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x80, 0x2A, 0x1B, 0x02
	.byte 0x6C, 0x2A, 0x1B, 0x02, 0xAC, 0x2B, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02
	.byte 0xCC, 0xE2, 0x1A, 0x02, 0x38, 0x40, 0x2D, 0xE9, 0x68, 0x10, 0x9F, 0xE5, 0x68, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x30, 0x91, 0xE5, 0x64, 0x50, 0x9F, 0xE5, 0x04, 0x20, 0x91, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0x5C, 0x10, 0x9F, 0xE5, 0x00, 0x30, 0x85, 0xE5, 0x04, 0x20, 0x85, 0xE5, 0x39, 0x05, 0x00, 0xFA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x48, 0x40, 0x9F, 0xE5, 0x48, 0x00, 0x9F, 0xE5
	.byte 0x08, 0x10, 0x94, 0xE5, 0x05, 0x20, 0xA0, 0xE1, 0x08, 0x30, 0xA0, 0xE3, 0x0E, 0x06, 0x00, 0xFA
	.byte 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x84, 0x05, 0x38, 0x80, 0xBD, 0x08
	.byte 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5
	.byte 0x98, 0x05, 0x00, 0xFA, 0x38, 0x80, 0xBD, 0xE8, 0x78, 0x2A, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02
	.byte 0x80, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x6C, 0x2A, 0x1B, 0x02, 0xE8, 0xE2, 0x1A, 0x02
	.byte 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x5C, 0x40, 0x9F, 0xE5, 0x5C, 0x10, 0x9F, 0xE5
	.byte 0xC8, 0x01, 0x84, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x54, 0x10, 0x9F, 0xE5, 0x19, 0x05, 0x00, 0xFA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x44, 0x00, 0x9F, 0xE5
	.byte 0x44, 0x20, 0x9F, 0xE5, 0x1B, 0x3E, 0xA0, 0xE3, 0xEF, 0x05, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x06, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08
	.byte 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5
	.byte 0x78, 0x05, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02
	.byte 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x0C, 0xE3, 0x1A, 0x02, 0x80, 0x2A, 0x1B, 0x02
	.byte 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x5C, 0x40, 0x9F, 0xE5, 0x5C, 0x10, 0x9F, 0xE5
	.byte 0xC8, 0x01, 0x84, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x54, 0x10, 0x9F, 0xE5, 0xF9, 0x04, 0x00, 0xFA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x44, 0x00, 0x9F, 0xE5
	.byte 0x44, 0x20, 0x9F, 0xE5, 0x1B, 0x3E, 0xA0, 0xE3, 0xCF, 0x05, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08
	.byte 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5
	.byte 0x58, 0x05, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02
	.byte 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x28, 0xE3, 0x1A, 0x02, 0x80, 0x2A, 0x1B, 0x02
	.byte 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x58, 0x00, 0x9F, 0xE5, 0x58, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0xDB, 0x04, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5
	.byte 0x48, 0x40, 0x9F, 0xE5, 0x48, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x44, 0x20, 0x9F, 0xE5
	.byte 0x1B, 0x3E, 0xA0, 0xE3, 0xB0, 0x05, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0xA0, 0x03
	.byte 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x39, 0x05, 0x00, 0xFA
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8, 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02
	.byte 0x6C, 0x2A, 0x1B, 0x02, 0x48, 0xE3, 0x1A, 0x02, 0x80, 0x2A, 0x1B, 0x02, 0x18, 0x40, 0x2D, 0xE9
	.byte 0x04, 0xD0, 0x4D, 0xE2, 0x54, 0x00, 0x9F, 0xE5, 0x54, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xBC, 0x04, 0x00, 0xFA, 0x00, 0x30, 0xA0, 0xE3, 0x48, 0x40, 0x9F, 0xE5, 0x00, 0x30, 0x8D, 0xE5
	.byte 0x08, 0x10, 0x94, 0xE5, 0x40, 0x00, 0x9F, 0xE5, 0x40, 0x20, 0x9F, 0xE5, 0x92, 0x05, 0x00, 0xFA
	.byte 0x00, 0x00, 0x50, 0xE3, 0x0C, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05
	.byte 0x18, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2
	.byte 0x04, 0x00, 0x84, 0xE5, 0x1B, 0x05, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8
	.byte 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x6C, 0x2A, 0x1B, 0x02, 0x68, 0xE3, 0x1A, 0x02
	.byte 0x80, 0x2A, 0x1B, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x18, 0x41, 0x9F, 0xE5, 0x00, 0x00, 0x94, 0xE5
	.byte 0x16, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x10, 0x80, 0xBD, 0xE8, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x13, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x15, 0x00, 0x00, 0xEA
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x17, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x19, 0x00, 0x00, 0xEA
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x1B, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x1D, 0x00, 0x00, 0xEA
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x1F, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x21, 0x00, 0x00, 0xEA
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x23, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x25, 0x00, 0x00, 0xEA
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x27, 0x00, 0x00, 0xEA, 0xEF, 0x04, 0x00, 0xFA, 0x03, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xEB, 0x04, 0x00, 0xFA, 0x05, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xE7, 0x04, 0x00, 0xFA, 0x07, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xE3, 0x04, 0x00, 0xFA, 0x09, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xDF, 0x04, 0x00, 0xFA, 0x0B, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xDB, 0x04, 0x00, 0xFA, 0x0D, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xD7, 0x04, 0x00, 0xFA, 0x0F, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xD3, 0x04, 0x00, 0xFA, 0x11, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xCF, 0x04, 0x00, 0xFA, 0x13, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xCB, 0x04, 0x00, 0xFA, 0x15, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xC7, 0x04, 0x00, 0xFA, 0x17, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02, 0xF8, 0x40, 0x2D, 0xE9
	.byte 0x8C, 0x50, 0x9F, 0xE5, 0x00, 0x70, 0xD0, 0xE5, 0x01, 0x60, 0xD0, 0xE5, 0x02, 0xE0, 0xD0, 0xE5
	.byte 0x03, 0xC0, 0xD0, 0xE5, 0x04, 0x30, 0xD0, 0xE5, 0x05, 0x00, 0xD0, 0xE5, 0x74, 0x40, 0x9F, 0xE5
	.byte 0xC8, 0x21, 0x85, 0xE5, 0x05, 0x00, 0xC4, 0xE5, 0x00, 0x70, 0xC4, 0xE5, 0x01, 0x60, 0xC4, 0xE5
	.byte 0x02, 0xE0, 0xC4, 0xE5, 0x03, 0xC0, 0xC4, 0xE5, 0x04, 0x30, 0xC4, 0xE5, 0x1A, 0x10, 0xC5, 0xE5
	.byte 0x54, 0x00, 0x9F, 0xE5, 0x54, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x45, 0x04, 0x00, 0xFA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x08, 0x10, 0x95, 0xE5, 0x40, 0x00, 0x9F, 0xE5
	.byte 0x04, 0x20, 0xA0, 0xE1, 0x07, 0x30, 0xA0, 0xE3, 0x1B, 0x05, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x0E, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x85, 0x05, 0xF8, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x85, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x85, 0xE5, 0xA5, 0x04, 0x00, 0xFA
	.byte 0xF8, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02, 0x80, 0x2A, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02
	.byte 0x8C, 0xE2, 0x1A, 0x02, 0x88, 0xE3, 0x1A, 0x02, 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2
	.byte 0x80, 0x20, 0x9F, 0xE5, 0x80, 0x40, 0x9F, 0xE5, 0xC8, 0x11, 0x82, 0xE5, 0x04, 0x30, 0xA0, 0xE3
	.byte 0x01, 0x10, 0xD0, 0xE5, 0x02, 0x20, 0xD0, 0xE4, 0x01, 0x30, 0x53, 0xE2, 0x01, 0x10, 0xC4, 0xE5
	.byte 0x02, 0x20, 0xC4, 0xE4, 0xF9, 0xFF, 0xFF, 0x1A, 0x60, 0x00, 0x9F, 0xE5, 0x60, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x1F, 0x04, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5
	.byte 0x40, 0x40, 0x9F, 0xE5, 0x4C, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x38, 0x20, 0x9F, 0xE5
	.byte 0x08, 0x30, 0xA0, 0xE3, 0xF4, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x0E, 0x00, 0xA0, 0x03
	.byte 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x7D, 0x04, 0x00, 0xFA
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8, 0x6C, 0x2A, 0x1B, 0x02, 0x80, 0x2A, 0x1B, 0x02
	.byte 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x88, 0xE3, 0x1A, 0x02, 0xF8, 0x40, 0x2D, 0xE9
	.byte 0x88, 0x40, 0x9F, 0xE5, 0x88, 0x50, 0x9F, 0xE5, 0x00, 0x70, 0xA0, 0xE1, 0xC8, 0x21, 0x84, 0xE5
	.byte 0x05, 0x00, 0xA0, 0xE1, 0x4A, 0x2F, 0xA0, 0xE3, 0x03, 0x60, 0xA0, 0xE1, 0xFC, 0x6E, 0xFB, 0xEB
	.byte 0x18, 0x20, 0x9D, 0xE5, 0x6C, 0x00, 0x9F, 0xE5, 0x06, 0x10, 0xA0, 0xE1, 0x3C, 0x71, 0x84, 0xE5
	.byte 0xF7, 0x6E, 0xFB, 0xEB, 0x18, 0x10, 0x9D, 0xE5, 0x5C, 0x00, 0x9F, 0xE5, 0xC0, 0x11, 0x84, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x54, 0x10, 0x9F, 0xE5, 0xF2, 0x03, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x8D, 0xE5, 0x48, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x05, 0x20, 0xA0, 0xE1
	.byte 0x1B, 0x3E, 0xA0, 0xE3, 0xC8, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x10, 0x00, 0xA0, 0x03
	.byte 0x00, 0x00, 0x84, 0x05, 0xF8, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5
	.byte 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x52, 0x04, 0x00, 0xFA, 0xF8, 0x80, 0xBD, 0xE8
	.byte 0x6C, 0x2A, 0x1B, 0x02, 0x80, 0x2A, 0x1B, 0x02, 0xAC, 0x2B, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02
	.byte 0x8C, 0xE2, 0x1A, 0x02, 0xA8, 0xE3, 0x1A, 0x02, 0x38, 0x40, 0x2D, 0xE9, 0x68, 0x10, 0x9F, 0xE5
	.byte 0x68, 0x00, 0x9F, 0xE5, 0x00, 0x30, 0x91, 0xE5, 0x64, 0x50, 0x9F, 0xE5, 0x04, 0x20, 0x91, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x5C, 0x10, 0x9F, 0xE5, 0x00, 0x30, 0x85, 0xE5, 0x04, 0x20, 0x85, 0xE5
	.byte 0xD0, 0x03, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x48, 0x40, 0x9F, 0xE5
	.byte 0x48, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x05, 0x20, 0xA0, 0xE1, 0x08, 0x30, 0xA0, 0xE3
	.byte 0xA5, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x12, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x84, 0x05
	.byte 0x38, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2
	.byte 0x04, 0x00, 0x84, 0xE5, 0x2F, 0x04, 0x00, 0xFA, 0x38, 0x80, 0xBD, 0xE8, 0x78, 0x2A, 0x1B, 0x02
	.byte 0x68, 0x2A, 0x1B, 0x02, 0x80, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02, 0x6C, 0x2A, 0x1B, 0x02
	.byte 0xC8, 0xE3, 0x1A, 0x02, 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x54, 0x00, 0x9F, 0xE5
	.byte 0x54, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0xB2, 0x03, 0x00, 0xFA, 0x00, 0x30, 0xA0, 0xE3
	.byte 0x48, 0x40, 0x9F, 0xE5, 0x00, 0x30, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x40, 0x00, 0x9F, 0xE5
	.byte 0x40, 0x20, 0x9F, 0xE5, 0x88, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x14, 0x00, 0xA0, 0x03
	.byte 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x11, 0x04, 0x00, 0xFA
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8, 0x68, 0x2A, 0x1B, 0x02, 0x8C, 0xE2, 0x1A, 0x02
	.byte 0x6C, 0x2A, 0x1B, 0x02, 0xF0, 0xE3, 0x1A, 0x02, 0x80, 0x2A, 0x1B, 0x02, 0xF8, 0x40, 0x2D, 0xE9
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x1C, 0x00, 0x84, 0xE2, 0x01, 0x70, 0xA0, 0xE1, 0x0A, 0x51, 0xFB, 0xFA
	.byte 0x6C, 0x60, 0x9F, 0xE5, 0x64, 0x50, 0xA0, 0xE3, 0x06, 0x00, 0xA0, 0xE1, 0x04, 0x10, 0xA0, 0xE1
	.byte 0x05, 0x20, 0xA0, 0xE1, 0x8E, 0x6E, 0xFB, 0xEB, 0x58, 0x40, 0x9F, 0xE5, 0x58, 0x00, 0x9F, 0xE5
	.byte 0xC8, 0x71, 0x84, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x50, 0x10, 0x9F, 0xE5, 0x89, 0x03, 0x00, 0xFA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x44, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5
	.byte 0x06, 0x20, 0xA0, 0xE1, 0x05, 0x30, 0xA0, 0xE1, 0x5F, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x16, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x84, 0x05, 0xF8, 0x80, 0xBD, 0x08, 0x18, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x25, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0xE9, 0x03, 0x00, 0xFA
	.byte 0xF8, 0x80, 0xBD, 0xE8, 0x80, 0x2A, 0x1B, 0x02, 0x6C, 0x2A, 0x1B, 0x02, 0x68, 0x2A, 0x1B, 0x02
	.byte 0x8C, 0xE2, 0x1A, 0x02, 0x0C, 0xE4, 0x1A, 0x02, 0x38, 0x40, 0x2D, 0xE9, 0x07, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x0F, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA
	.byte 0x05, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x0E, 0x50, 0xE0, 0xE3, 0x06, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0xFA, 0xFF, 0xFF, 0xEA, 0x01, 0x00, 0x00, 0xEA
	.byte 0x0C, 0x50, 0xE0, 0xE3, 0x00, 0x00, 0x00, 0xEA, 0x0D, 0x50, 0xE0, 0xE3, 0x0C, 0x40, 0xE0, 0xE3
	.byte 0x04, 0x00, 0x55, 0xE1, 0x03, 0x00, 0x00, 0x0A, 0x7B, 0xCD, 0xFA, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x01, 0x50, 0x44, 0x12, 0x21, 0xC1, 0xFA, 0xEB, 0x05, 0x00, 0xA0, 0xE1, 0x38, 0x80, 0xBD, 0xE8
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x68, 0xC0, 0x9F, 0xE5, 0x01, 0x40, 0xA0, 0xE3, 0x00, 0x40, 0x8C, 0xE5
	.byte 0x00, 0xE0, 0xA0, 0xE3, 0x04, 0xE0, 0x8C, 0xE5, 0x08, 0x00, 0x8C, 0xE5, 0x0C, 0x10, 0x8C, 0xE5
	.byte 0x10, 0x20, 0x8C, 0xE5, 0x00, 0x00, 0x53, 0xE3, 0x04, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x53, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x53, 0xE3, 0x06, 0x00, 0x00, 0x0A, 0x09, 0x00, 0x00, 0xEA
	.byte 0x30, 0x00, 0x9F, 0xE5, 0x00, 0xE0, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x24, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x40, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x18, 0x00, 0x9F, 0xE5, 0x02, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x10, 0x80, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x08, 0x00, 0x9F, 0xE5, 0x00, 0x40, 0x80, 0xE5
	.byte 0x10, 0x80, 0xBD, 0xE8, 0xC4, 0x2D, 0x1B, 0x02, 0x3C, 0x2C, 0x1B, 0x02, 0x78, 0x40, 0x2D, 0xE9
	.byte 0x0C, 0xD0, 0x4D, 0xE2, 0xFC, 0x63, 0x9F, 0xE5, 0x00, 0x40, 0xA0, 0xE3, 0x00, 0x00, 0x96, 0xE5
	.byte 0x0C, 0x50, 0xA0, 0xE3, 0x0C, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0xF7, 0x00, 0x00, 0xEA
	.byte 0xF6, 0x00, 0x00, 0xEA, 0xF5, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0xEF, 0x00, 0x00, 0xEA
	.byte 0x28, 0x00, 0x00, 0xEA, 0xED, 0x00, 0x00, 0xEA, 0x53, 0x00, 0x00, 0xEA, 0xEB, 0x00, 0x00, 0xEA
	.byte 0x81, 0x00, 0x00, 0xEA, 0xE9, 0x00, 0x00, 0xEA, 0xAF, 0x00, 0x00, 0xEA, 0xE7, 0x00, 0x00, 0xEA
	.byte 0xEA, 0x00, 0x00, 0xEA, 0x63, 0x03, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8
	.byte 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5, 0xA7, 0xC0, 0xFA, 0xEB
	.byte 0x00, 0x00, 0x9D, 0xE5, 0xEA, 0x01, 0x00, 0xEB, 0x04, 0x00, 0x86, 0xE5, 0x81, 0x03, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5
	.byte 0x8D, 0x03, 0x00, 0xFA, 0x00, 0x20, 0xD0, 0xE5, 0x08, 0x10, 0x9D, 0xE5, 0x01, 0x00, 0xD0, 0xE5
	.byte 0x54, 0x33, 0x9F, 0xE5, 0x00, 0x00, 0x51, 0xE3, 0x00, 0x20, 0xC3, 0xE5, 0x01, 0x00, 0xC3, 0xE5
	.byte 0x98, 0x01, 0xD6, 0x15, 0x0E, 0x00, 0x45, 0x02, 0x04, 0x00, 0x86, 0xE5, 0x71, 0x03, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x42, 0x03, 0x00, 0xFA, 0x01, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0x78, 0x80, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5
	.byte 0x86, 0xC0, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0xC9, 0x01, 0x00, 0xEB, 0x04, 0x00, 0x86, 0xE5
	.byte 0x60, 0x03, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x08, 0x00, 0x8D, 0xE2
	.byte 0x00, 0x50, 0x86, 0xE5, 0x6C, 0x03, 0x00, 0xFA, 0x00, 0x10, 0xA0, 0xE1, 0x9C, 0x01, 0x96, 0xE5
	.byte 0x2A, 0x2D, 0x85, 0xE2, 0xE6, 0x6D, 0xFB, 0xEB, 0x08, 0x10, 0x9D, 0xE5, 0x2A, 0x0D, 0x85, 0xE2
	.byte 0x00, 0x00, 0x51, 0xE1, 0x04, 0x40, 0x86, 0x05, 0x0C, 0x00, 0x00, 0x0A, 0x9C, 0x01, 0x96, 0xE5
	.byte 0x00, 0x00, 0xD0, 0xE5, 0x02, 0x00, 0x50, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x05, 0x00, 0x50, 0xE3
	.byte 0x02, 0x00, 0x00, 0x0A, 0x03, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x45, 0xE2, 0x02, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x45, 0xE2, 0x00, 0x00, 0x00, 0xEA, 0x11, 0x00, 0x45, 0xE2, 0x04, 0x00, 0x86, 0xE5
	.byte 0x44, 0x03, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x15, 0x03, 0x00, 0xFA
	.byte 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2
	.byte 0x00, 0x50, 0x86, 0xE5, 0x59, 0xC0, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x9C, 0x01, 0x00, 0xEB
	.byte 0x04, 0x00, 0x86, 0xE5, 0x33, 0x03, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8
	.byte 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5, 0x3F, 0x03, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5
	.byte 0x01, 0x00, 0xD0, 0xE5, 0x20, 0x22, 0x9F, 0xE5, 0x00, 0x10, 0xC2, 0xE5, 0x01, 0x00, 0xC2, 0xE5
	.byte 0x98, 0x01, 0xD6, 0xE5, 0x05, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x0D, 0x00, 0x00, 0xEA
	.byte 0x0C, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x04, 0x40, 0x86, 0xE5, 0x07, 0x00, 0x00, 0xEA
	.byte 0x0F, 0x00, 0x45, 0xE2, 0x04, 0x00, 0x00, 0xEA, 0x0D, 0x00, 0x45, 0xE2, 0x02, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x45, 0xE2, 0x00, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xE0, 0xE3, 0x04, 0x00, 0x86, 0xE5
	.byte 0x14, 0x03, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0xE5, 0x02, 0x00, 0xFA
	.byte 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2
	.byte 0x00, 0x50, 0x86, 0xE5, 0x29, 0xC0, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x6C, 0x01, 0x00, 0xEB
	.byte 0x04, 0x00, 0x86, 0xE5, 0x03, 0x03, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8
	.byte 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5, 0x0F, 0x03, 0x00, 0xFA, 0x00, 0x10, 0xD0, 0xE5
	.byte 0x01, 0x00, 0xD0, 0xE5, 0x60, 0x21, 0x9F, 0xE5, 0x00, 0x10, 0xC2, 0xE5, 0x01, 0x00, 0xC2, 0xE5
	.byte 0x98, 0x01, 0xD6, 0xE5, 0x05, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x0D, 0x00, 0x00, 0xEA
	.byte 0x0C, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x04, 0x40, 0x86, 0xE5, 0x07, 0x00, 0x00, 0xEA
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x04, 0x00, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3, 0x02, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x45, 0xE2, 0x00, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xE0, 0xE3, 0x04, 0x00, 0x86, 0xE5
	.byte 0xE4, 0x02, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0xB5, 0x02, 0x00, 0xFA
	.byte 0x01, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0x04, 0x00, 0x8D, 0xE2, 0x00, 0x10, 0x8D, 0xE2
	.byte 0x00, 0x50, 0x86, 0xE5, 0xF9, 0xBF, 0xFA, 0xEB, 0x00, 0x00, 0x9D, 0xE5, 0x3C, 0x01, 0x00, 0xEB
	.byte 0x04, 0x00, 0x86, 0xE5, 0xD3, 0x02, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8
	.byte 0x08, 0x00, 0x8D, 0xE2, 0x00, 0x50, 0x86, 0xE5, 0xDF, 0x02, 0x00, 0xFA, 0x9C, 0x51, 0x96, 0xE5
	.byte 0x04, 0x30, 0xA0, 0xE3, 0x00, 0x20, 0xD0, 0xE5, 0x01, 0x10, 0xD0, 0xE5, 0x02, 0x00, 0x80, 0xE2
	.byte 0x01, 0x30, 0x53, 0xE2, 0x01, 0x10, 0xC5, 0xE5, 0x02, 0x20, 0xC5, 0xE4, 0xF8, 0xFF, 0xFF, 0x1A
	.byte 0x08, 0x00, 0x9D, 0xE5, 0x08, 0x00, 0x50, 0xE3, 0x04, 0x40, 0x86, 0x05, 0x14, 0x00, 0x00, 0x0A
	.byte 0x9C, 0x01, 0x96, 0xE5, 0x00, 0x00, 0xD0, 0xE5, 0x05, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90
	.byte 0x0D, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x04, 0x40, 0x86, 0xE5
	.byte 0x07, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3, 0x04, 0x00, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3
	.byte 0x02, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xE0, 0xE3, 0x00, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xE0, 0xE3
	.byte 0x04, 0x00, 0x86, 0xE5, 0xAB, 0x02, 0x00, 0xFA, 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8
	.byte 0x00, 0x50, 0x86, 0xE5, 0x10, 0x00, 0x45, 0xE2, 0x04, 0x00, 0x86, 0xE5, 0xA5, 0x02, 0x00, 0xFA
	.byte 0x0C, 0xD0, 0x8D, 0xE2, 0x78, 0x80, 0xBD, 0xE8, 0xC4, 0x2D, 0x1B, 0x02, 0x5C, 0x2F, 0x1B, 0x02
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xC4, 0x2D, 0x1B, 0x02, 0x30, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x50, 0xE3
	.byte 0x02, 0x00, 0x00, 0x0A, 0x0C, 0x00, 0x50, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x00, 0xEA
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x1E, 0xFF, 0x2F, 0xE1, 0x01, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x81, 0xE5
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x00, 0x00, 0xA0, 0xE3, 0x1E, 0xFF, 0x2F, 0xE1, 0xC4, 0x2D, 0x1B, 0x02
	.byte 0x04, 0x00, 0x9F, 0xE5, 0x04, 0x00, 0x90, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xC4, 0x2D, 0x1B, 0x02
	.byte 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x60, 0x10, 0x9F, 0xE5, 0x01, 0x20, 0x40, 0xE2
	.byte 0x5C, 0x40, 0x9F, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x58, 0x10, 0x9F, 0xE5, 0x14, 0x20, 0xC4, 0xE5
	.byte 0x10, 0x02, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5
	.byte 0x44, 0x00, 0x9F, 0xE5, 0x44, 0x20, 0x9F, 0xE5, 0x01, 0x30, 0xA0, 0xE3, 0xE6, 0x02, 0x00, 0xFA
	.byte 0x00, 0x00, 0x50, 0xE3, 0x02, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05
	.byte 0x18, 0x80, 0xBD, 0x08, 0x0C, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x11, 0x00, 0x40, 0xE2
	.byte 0x04, 0x00, 0x84, 0xE5, 0x6F, 0x02, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8
	.byte 0x3C, 0x2C, 0x1B, 0x02, 0xC4, 0x2D, 0x1B, 0x02, 0x28, 0xE4, 0x1A, 0x02, 0x68, 0xE4, 0x1A, 0x02
	.byte 0xD8, 0x2D, 0x1B, 0x02, 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x6C, 0x40, 0x9F, 0xE5
	.byte 0x01, 0x00, 0x40, 0xE2, 0x9C, 0x21, 0x84, 0xE5, 0x14, 0x00, 0xC4, 0xE5, 0x01, 0x10, 0x41, 0xE2
	.byte 0x15, 0x10, 0xC4, 0xE5, 0x58, 0x00, 0x9F, 0xE5, 0x58, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xEC, 0x01, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5
	.byte 0x44, 0x00, 0x9F, 0xE5, 0x44, 0x20, 0x9F, 0xE5, 0x02, 0x30, 0xA0, 0xE3, 0xC2, 0x02, 0x00, 0xFA
	.byte 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02, 0x00, 0x00, 0x84, 0x05
	.byte 0x18, 0x80, 0xBD, 0x08, 0x0C, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x11, 0x00, 0x40, 0xE2
	.byte 0x04, 0x00, 0x84, 0xE5, 0x4B, 0x02, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2, 0x18, 0x80, 0xBD, 0xE8
	.byte 0xC4, 0x2D, 0x1B, 0x02, 0x3C, 0x2C, 0x1B, 0x02, 0x28, 0xE4, 0x1A, 0x02, 0x88, 0xE4, 0x1A, 0x02
	.byte 0xD8, 0x2D, 0x1B, 0x02, 0xF8, 0x40, 0x2D, 0xE9, 0xD4, 0x40, 0x9F, 0xE5, 0x00, 0x70, 0xA0, 0xE1
	.byte 0x01, 0x60, 0xA0, 0xE1, 0x02, 0x50, 0xA0, 0xE1, 0x04, 0x00, 0xA0, 0xE1, 0x03, 0x10, 0xA0, 0xE1
	.byte 0xF0, 0x20, 0xA0, 0xE3, 0xCA, 0x6C, 0xFB, 0xEB, 0x01, 0x00, 0x47, 0xE2, 0xF0, 0x00, 0xC4, 0xE5
	.byte 0x01, 0x00, 0x46, 0xE2, 0xF1, 0x00, 0xC4, 0xE5, 0xA8, 0x00, 0x9F, 0xE5, 0xF2, 0x50, 0xC4, 0xE5
	.byte 0x00, 0xC0, 0x90, 0xE5, 0xA0, 0xE0, 0x9F, 0xE5, 0x04, 0x30, 0x90, 0xE5, 0x18, 0x10, 0x9D, 0xE5
	.byte 0x98, 0x00, 0x9F, 0xE5, 0x80, 0x20, 0xA0, 0xE3, 0x00, 0xC0, 0x8E, 0xE5, 0x04, 0x30, 0x8E, 0xE5
	.byte 0xBB, 0x6C, 0xFB, 0xEB, 0x1C, 0x00, 0x9D, 0xE5, 0x84, 0xE0, 0x9F, 0xE5, 0x80, 0x01, 0x84, 0xE5
	.byte 0x18, 0xC0, 0xA0, 0xE3, 0x0F, 0x00, 0xB4, 0xE8, 0x0F, 0x00, 0xAE, 0xE8, 0x01, 0xC0, 0x5C, 0xE2
	.byte 0xFB, 0xFF, 0xFF, 0x1A, 0x6C, 0x00, 0x9F, 0xE5, 0x00, 0x20, 0x94, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0x64, 0x10, 0x9F, 0xE5, 0x00, 0x20, 0x8E, 0xE5, 0xAE, 0x01, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x8D, 0xE5, 0x54, 0x40, 0x9F, 0xE5, 0x54, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5
	.byte 0x3C, 0x20, 0x9F, 0xE5, 0x61, 0x3F, 0xA0, 0xE3, 0x83, 0x02, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3
	.byte 0x06, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x84, 0x05, 0xF8, 0x80, 0xBD, 0x08, 0x0C, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x84, 0xE5, 0x11, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x0D, 0x02, 0x00, 0xFA
	.byte 0xF8, 0x80, 0xBD, 0xE8, 0x40, 0x2C, 0x1B, 0x02, 0xD0, 0x2D, 0x1B, 0x02, 0x38, 0x2D, 0x1B, 0x02
	.byte 0x40, 0x2D, 0x1B, 0x02, 0xD8, 0x2D, 0x1B, 0x02, 0x3C, 0x2C, 0x1B, 0x02, 0x28, 0xE4, 0x1A, 0x02
	.byte 0xC4, 0x2D, 0x1B, 0x02, 0xA8, 0xE4, 0x1A, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x88, 0x40, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x94, 0xE5, 0x0A, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x10, 0x80, 0xBD, 0xE8, 0x07, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x09, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x0D, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x0F, 0x00, 0x00, 0xEA, 0xEA, 0x01, 0x00, 0xFA
	.byte 0x03, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xE6, 0x01, 0x00, 0xFA
	.byte 0x05, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xE2, 0x01, 0x00, 0xFA
	.byte 0x07, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xDE, 0x01, 0x00, 0xFA
	.byte 0x09, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xDA, 0x01, 0x00, 0xFA
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0xC4, 0x2D, 0x1B, 0x02
	.byte 0x18, 0x40, 0x2D, 0xE9, 0x04, 0xD0, 0x4D, 0xE2, 0x54, 0x00, 0x9F, 0xE5, 0x54, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x67, 0x01, 0x00, 0xFA, 0x00, 0x30, 0xA0, 0xE3, 0x48, 0x40, 0x9F, 0xE5
	.byte 0x00, 0x30, 0x8D, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x40, 0x00, 0x9F, 0xE5, 0x40, 0x20, 0x9F, 0xE5
	.byte 0x3D, 0x02, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0xA0, 0x03, 0x04, 0xD0, 0x8D, 0x02
	.byte 0x00, 0x00, 0x84, 0x05, 0x18, 0x80, 0xBD, 0x08, 0x0C, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5
	.byte 0x11, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0xC6, 0x01, 0x00, 0xFA, 0x04, 0xD0, 0x8D, 0xE2
	.byte 0x18, 0x80, 0xBD, 0xE8, 0x3C, 0x2C, 0x1B, 0x02, 0x28, 0xE4, 0x1A, 0x02, 0xC4, 0x2D, 0x1B, 0x02
	.byte 0xC4, 0xE4, 0x1A, 0x02, 0xD8, 0x2D, 0x1B, 0x02, 0xF8, 0x40, 0x2D, 0xE9, 0x00, 0x40, 0xA0, 0xE1
	.byte 0x1C, 0x00, 0x84, 0xE2, 0x01, 0x70, 0xA0, 0xE1, 0xBF, 0x4E, 0xFB, 0xFA, 0x6C, 0x60, 0x9F, 0xE5
	.byte 0x64, 0x50, 0xA0, 0xE3, 0x06, 0x00, 0xA0, 0xE1, 0x04, 0x10, 0xA0, 0xE1, 0x05, 0x20, 0xA0, 0xE1
	.byte 0x43, 0x6C, 0xFB, 0xEB, 0x58, 0x40, 0x9F, 0xE5, 0x58, 0x00, 0x9F, 0xE5, 0x9C, 0x71, 0x84, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x50, 0x10, 0x9F, 0xE5, 0x3E, 0x01, 0x00, 0xFA, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x8D, 0xE5, 0x44, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x94, 0xE5, 0x06, 0x20, 0xA0, 0xE1
	.byte 0x05, 0x30, 0xA0, 0xE1, 0x14, 0x02, 0x00, 0xFA, 0x00, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0xA0, 0x03
	.byte 0x00, 0x00, 0x84, 0x05, 0xF8, 0x80, 0xBD, 0x08, 0x0C, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x84, 0xE5
	.byte 0x11, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x84, 0xE5, 0x9E, 0x01, 0x00, 0xFA, 0xF8, 0x80, 0xBD, 0xE8
	.byte 0xD8, 0x2D, 0x1B, 0x02, 0xC4, 0x2D, 0x1B, 0x02, 0x3C, 0x2C, 0x1B, 0x02, 0x28, 0xE4, 0x1A, 0x02
	.byte 0xE0, 0xE4, 0x1A, 0x02, 0x38, 0x40, 0x2D, 0xE9, 0x07, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90
	.byte 0x0F, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA
	.byte 0x05, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x05, 0x00, 0x00, 0xEA, 0x06, 0x50, 0xE0, 0xE3, 0x06, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0x00, 0xEA, 0xFA, 0xFF, 0xFF, 0xEA, 0x01, 0x00, 0x00, 0xEA, 0x04, 0x50, 0xE0, 0xE3
	.byte 0x00, 0x00, 0x00, 0xEA, 0x05, 0x50, 0xE0, 0xE3, 0x04, 0x40, 0xE0, 0xE3, 0x04, 0x00, 0x55, 0xE1
	.byte 0x03, 0x00, 0x00, 0x0A, 0x30, 0xCB, 0xFA, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x01, 0x50, 0x44, 0x12
	.byte 0xD6, 0xBE, 0xFA, 0xEB, 0x05, 0x00, 0xA0, 0xE1, 0x38, 0x80, 0xBD, 0xE8

	thumb_func_start ovy189_21a893c
ovy189_21a893c: ; 0x021A893C
	push {r3, r4, r5, lr}
	mov r1, #3
	add r5, r0, #0
	blx sub_0208D868
	mov r4, #1
	cmp r1, #0
	bne _021A894E
	mov r4, #0
_021A894E:
	add r0, r5, #0
	mov r1, #3
	blx sub_0208D868
	add r0, r0, r4
	lsl r0, r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end ovy189_21a893c

	thumb_func_start sub_021A895C
sub_021A895C: ; 0x021A895C
	lsl r1, r0, #0x10
	orr r1, r0
	ldr r0, _021A8968 ; =0x021B2F68
	str r1, [r0]
	bx lr
	nop
_021A8968: .word 0x021B2F68
	thumb_func_end sub_021A895C

	thumb_func_start ovy189_21a896c
ovy189_21a896c: ; 0x021A896C
	push {r4, lr}
	ldr r1, _021A898C ; =0x021AE500
	ldr r4, _021A8990 ; =0x021B2F68
	ldr r2, [r1, #0x44]
	ldr r0, [r4]
	ldr r3, [r1, #0x48]
	mul r0, r2
	ldr r1, [r1, #0x4c]
	add r0, r3, r0
	blx sub_0208D868
	asr r0, r1, #0x10
	lsl r0, r0, #0x18
	str r1, [r4]
	lsr r0, r0, #0x18
	pop {r4, pc}
	.align 2, 0
_021A898C: .word 0x021AE500
_021A8990: .word 0x021B2F68
	thumb_func_end ovy189_21a896c

	thumb_func_start ovy189_21a8994
ovy189_21a8994: ; 0x021A8994
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, _021A8A30 ; =0x021AE500
	mov r4, #0
	str r0, [sp]
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	str r4, [r1, #0xc]
	blx sub_02085D9C
	cmp r0, #0x20
	blo _021A89B6
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A89B6:
	add r0, r6, #0
	blx sub_02085D9C
	cmp r0, #0x14
	beq _021A89C6
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A89C6:
	sub r1, r7, #5
	mov r0, #7
	tst r0, r1
	beq _021A89D4
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A89D4:
	ldr r0, [sp, #4]
	mov r1, #1
	tst r0, r1
	bne _021A89E2
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A89E2:
	add r0, r4, #0
_021A89E4:
	add r2, r5, #0
	lsr r2, r0
	and r2, r1
	cmp r2, #1
	bne _021A89F0
	add r4, r4, #1
_021A89F0:
	add r0, r0, #1
	cmp r0, #0x20
	blt _021A89E4
	cmp r4, #1
	beq _021A8A00
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A8A00:
	ldr r0, _021A8A34 ; =0x021AE510
	ldr r1, [sp]
	mov r2, #0x20
	blx sub_02085E80
	ldr r2, _021A8A38 ; =0x021AE530
	mov r1, #0x14
_021A8A0E:
	ldrb r0, [r6]
	add r6, r6, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A8A0E
	ldr r1, _021A8A30 ; =0x021AE500
	ldr r0, [sp, #4]
	str r7, [r1, #0x44]
	str r0, [r1, #0x48]
	ldr r0, [sp, #0x24]
	str r5, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r0, #1
	str r0, [r1, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8A30: .word 0x021AE500
_021A8A34: .word 0x021AE510
_021A8A38: .word 0x021AE530
	thumb_func_end ovy189_21a8994

	thumb_func_start ovy189_21a8a3c
ovy189_21a8a3c: ; 0x021A8A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r3, _021A8B34 ; =0x021ACE78
	str r1, [sp, #4]
	str r0, [sp]
	add r2, sp, #0xc
	mov r1, #0x11
_021A8A4A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A8A4A
	ldr r0, [sp, #4]
	cmp r0, #0x28
	bgt _021A8A62
	add sp, #0x5c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A8A62:
	str r0, [sp, #8]
	sub r0, #0x28
	str r0, [sp, #8]
	bl ovy189_21a893c
	add r1, r0, #0
	mov r0, #8
	add r1, #0x29
	blx sub_020586E4
	add r4, r0, #0
	bne _021A8A80
	add sp, #0x5c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A8A80:
	ldr r3, _021A8B38 ; =0x021AE530
	add r2, r4, #0
	mov r1, #0x14
_021A8A86:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A8A86
	add r1, r4, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, #0x14
	mov r3, #2
	bl ovy11_216e878
	ldr r0, [sp, #8]
	bl ovy189_21a893c
	add r1, r4, #0
	add r1, #0x14
	add r3, r1, r0
	ldr r2, _021A8B38 ; =0x021AE530
	mov r1, #0x14
_021A8AB0:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _021A8AB0
	ldr r0, [sp, #8]
	bl ovy189_21a893c
	add r2, r0, #0
	add r0, sp, #0x1c
	add r0, #1
	add r1, r4, #0
	add r2, #0x28
	bl MATH_CalcSHA1
	add r1, r4, #0
	mov r0, #8
	mov r2, #0
	mov r4, #0
	blx sub_02058728
	add r1, sp, #0x30
	add r1, #1
	add r6, sp, #0xc
	mov r7, #0xf
_021A8AE4:
	add r0, sp, #0x1c
	add r0, #1
	ldrb r3, [r0, r4]
	lsl r0, r4, #1
	add r2, r1, r0
	asr r5, r3, #4
	ldrsb r5, [r6, r5]
	add r4, r4, #1
	strb r5, [r1, r0]
	add r0, r3, #0
	and r0, r7
	ldrsb r0, [r6, r0]
	cmp r4, #0x14
	strb r0, [r2, #1]
	blt _021A8AE4
	add r0, sp, #0x50
	mov r4, #0
	add r0, #1
	strb r4, [r0, #8]
	ldr r0, [sp, #4]
	ldr r2, [sp]
	sub r0, #0x28
	str r0, [sp, #4]
	add r0, r2, r0
	mov r2, #0x28
	blx sub_02086014
	cmp r0, #0
	beq _021A8B24
	add sp, #0x5c
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021A8B24:
	ldr r1, _021A8B3C ; =0x021AE500
	ldr r0, [sp]
	str r0, [r1, #0x68]
	ldr r0, [sp, #8]
	str r0, [r1, #0x6c]
	mov r0, #1
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A8B34: .word 0x021ACE78
_021A8B38: .word 0x021AE530
_021A8B3C: .word 0x021AE500
	thumb_func_end ovy189_21a8a3c
_021A8B40:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy189_21a8b44
ovy189_21a8b44: ; 0x021A8B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r0, #0
	mov r0, #0
	ldr r5, _021A8C88 ; =0x021AE500
	mvn r0, r0
	str r0, [r5, #8]
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #1
	bne _021A8B5C
	b _021A8C84
_021A8B5C:
	cmp r2, #0
	beq _021A8B62
	b _021A8C80
_021A8B62:
	cmp r0, #5
	beq _021A8B6E
	cmp r0, #7
	beq _021A8C0A
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021A8B6E:
	cmp r4, #0x20
	bne _021A8BFC
	ldr r4, [r5, #0x58]
	ldr r3, _021A8C8C ; =0x021ACE8C
	add r4, #0x14
	add r2, sp, #0
	mov r1, #0x11
_021A8B7C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A8B7C
	add r3, sp, #0x10
	ldr r2, _021A8C90 ; =0x021AE530
	add r3, #1
	mov r1, #0x14
_021A8B90:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _021A8B90
	add r0, sp, #0x24
	add r0, #1
	add r1, r7, #0
	mov r2, #0x20
	blx sub_02083964
	add r1, sp, #0x10
	add r0, r4, #0
	add r1, #1
	mov r2, #0x34
	bl MATH_CalcSHA1
	mov r2, #0
	add r0, sp, #0
_021A8BB8:
	ldrb r3, [r4, r2]
	lsl r1, r2, #1
	asr r3, r3, #4
	ldrsb r6, [r0, r3]
	ldr r3, [r5, #0x58]
	strb r6, [r3, r1]
	ldrb r6, [r4, r2]
	mov r3, #0xf
	add r2, r2, #1
	and r3, r6
	ldrsb r6, [r0, r3]
	ldr r3, [r5, #0x58]
	add r1, r3, r1
	strb r6, [r1, #1]
	cmp r2, #0x14
	blt _021A8BB8
	ldr r0, _021A8C94 ; =0x021AE5A0
	blx sub_02085D9C
	ldr r1, _021A8C88 ; =0x021AE500
	mov r2, #0x26
	ldr r1, [r1, #0x58]
	sub r0, r1, r0
	strb r2, [r0]
	ldr r1, _021A8C88 ; =0x021AE500
	ldr r0, _021A8C98 ; =0x021AE574
	ldr r1, [r1, #0x58]
	mov r2, #0x29
	blx sub_02085E80
	ldr r0, _021A8C88 ; =0x021AE500
	mov r1, #6
	str r1, [r0]
	b _021A8C00
_021A8BFC:
	bl ovy189_21a8e54
_021A8C00:
	add r0, r7, #0
	blx sub_02058814
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021A8C0A:
	ldr r6, _021A8C9C ; =0x021AE5A8
	add r0, r6, #0
	blx sub_02085D9C
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	blx sub_02086014
	cmp r0, #0
	bne _021A8C2E
	add r0, r7, #0
	blx sub_02058814
	bl ovy189_21a8e54
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021A8C2E:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _021A8C3C
	blx sub_02058814
	mov r0, #0
	str r0, [r5, #0x60]
_021A8C3C:
	add r0, r7, #0
	add r1, r4, #0
	bl ovy189_21a8a3c
	cmp r0, #0
	bne _021A8C56
	add r0, r7, #0
	blx sub_02058814
	bl ovy189_21a8e54
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021A8C56:
	ldr r2, [r5, #0x70]
	cmp r2, #0
	beq _021A8C74
	add r0, r7, #0
	add r1, r4, #0
	blx r2
	cmp r0, #0
	bne _021A8C74
	add r0, r7, #0
	blx sub_02058814
	bl ovy189_21a8e54
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021A8C74:
	str r7, [r5, #0x60]
	str r4, [r5, #0x64]
	mov r0, #8
	add sp, #0x48
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A8C80:
	bl ovy189_21a8e54
_021A8C84:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8C88: .word 0x021AE500
_021A8C8C: .word 0x021ACE8C
_021A8C90: .word 0x021AE530
_021A8C94: .word 0x021AE5A0
_021A8C98: .word 0x021AE574
_021A8C9C: .word 0x021AE5A8
	thumb_func_end ovy189_21a8b44

	thumb_func_start ovy189_21a8ca0
ovy189_21a8ca0: ; 0x021A8CA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	add r6, r0, r5
	str r1, [sp, #4]
	mov r0, #8
	add r1, r6, #4
	str r3, [sp, #8]
	mov r7, #0
	blx sub_020586E4
	add r4, r0, #0
	bne _021A8CC4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A8CC4:
	add r0, r7, #0
	cmp r5, #0
	ble _021A8CD8
_021A8CCA:
	ldr r1, [sp, #4]
	ldrb r2, [r1, r0]
	add r1, r4, r0
	add r0, r0, #1
	strb r2, [r1, #4]
	cmp r0, r5
	blt _021A8CCA
_021A8CD8:
	ldr r1, [sp, #0x20]
	mov r0, #0
	mov ip, r1
	cmp r1, #0
	ble _021A8CF4
	add r3, r4, r5
_021A8CE4:
	ldr r1, [sp, #8]
	ldrb r2, [r1, r0]
	add r1, r3, r0
	add r0, r0, #1
	strb r2, [r1, #4]
	mov r1, ip
	cmp r0, r1
	blt _021A8CE4
_021A8CF4:
	mov r1, #0
	cmp r6, #0
	ble _021A8D06
_021A8CFA:
	add r0, r4, r1
	ldrb r0, [r0, #4]
	add r1, r1, #1
	add r7, r7, r0
	cmp r1, r6
	blt _021A8CFA
_021A8D06:
	add r0, r7, #0
	bl sub_021A895C
	mov r5, #0
	cmp r6, #0
	ble _021A8D24
_021A8D12:
	bl ovy189_21a896c
	add r1, r4, r5
	ldrb r2, [r1, #4]
	add r5, r5, #1
	eor r0, r2
	strb r0, [r1, #4]
	cmp r5, r6
	blt _021A8D12
_021A8D24:
	ldr r0, _021A8D64 ; =0x021AE500
	add r1, r7, #0
	ldr r0, [r0, #0x50]
	add r2, r6, #4
	eor r1, r0
	lsr r0, r1, #0x18
	strb r0, [r4]
	lsr r0, r1, #0x10
	strb r0, [r4, #1]
	lsr r0, r1, #8
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	ldr r1, [sp]
	add r0, r4, #0
	mov r3, #2
	bl ovy11_216e878
	add r1, r4, #0
	mov r0, #8
	mov r2, #0
	mov r4, #0
	blx sub_02058728
	add r0, r6, #4
	bl ovy189_21a893c
	ldr r1, [sp]
	strb r4, [r1, r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A8D64: .word 0x021AE500
	thumb_func_end ovy189_21a8ca0

	thumb_func_start ovy189_21a8d68
ovy189_21a8d68: ; 0x021A8D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r3, #0
	add r1, sp, #8
	sub r2, r3, #1
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r3, [r1, #6]
	strb r3, [r1, #7]
	strb r3, [r1, #8]
	ldr r1, _021A8E40 ; =0x021AE500
	cmp r0, #0
	str r2, [r1, #8]
	str r3, [r1, #0x54]
	str r3, [r1, #0x58]
	str r3, [r1, #0x5c]
	str r3, [r1, #0x60]
	str r3, [r1, #0x64]
	beq _021A8DA2
	cmp r0, #1
	beq _021A8DA6
	cmp r0, #2
	beq _021A8DAA
	b _021A8DB0
_021A8DA2:
	ldr r1, _021A8E44 ; =0x021AE5B0
	b _021A8DAC
_021A8DA6:
	ldr r1, _021A8E48 ; =0x021AE5D8
	b _021A8DAC
_021A8DAA:
	ldr r1, _021A8E4C ; =0x021AE5FC
_021A8DAC:
	ldr r0, _021A8E50 ; =0x021AE4FC
	str r1, [r0]
_021A8DB0:
	add r0, sp, #0x10
	add r0, #1
	add r1, r5, #0
	mov r2, #0x14
	blx sub_02085E80
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0, #0x1d]
	add r1, r5, #0
	add r0, sp, #8
	add r1, #0x14
	mov r2, #8
	blx sub_02085E80
	mov r1, #0
	mov r2, #0x10
	blx sub_020874CC
	add r1, r5, #0
	add r6, r0, #0
	add r0, sp, #8
	add r1, #0x1c
	mov r2, #8
	blx sub_02085E80
	mov r1, #0
	mov r2, #0x10
	blx sub_020874CC
	add r1, r5, #0
	add r7, r0, #0
	add r0, sp, #8
	add r1, #0x24
	mov r2, #8
	blx sub_02085E80
	mov r1, #0
	mov r2, #0x10
	blx sub_020874CC
	add r1, r5, #0
	add r4, r0, #0
	add r0, sp, #8
	add r1, #0x2c
	mov r2, #8
	blx sub_02085E80
	mov r1, #0
	mov r2, #0x10
	blx sub_020874CC
	str r4, [sp]
	add r1, sp, #0x10
	add r5, #0x34
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, #1
	add r2, r6, #0
	add r3, r7, #0
	bl ovy189_21a8994
	mov r0, #0
	bl ovy189_21a118c
	ldr r0, _021A8E40 ; =0x021AE500
	mov r1, #3
	str r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A8E40: .word 0x021AE500
_021A8E44: .word 0x021AE5B0
_021A8E48: .word 0x021AE5D8
_021A8E4C: .word 0x021AE5FC
_021A8E50: .word 0x021AE4FC
	thumb_func_end ovy189_21a8d68

	thumb_func_start ovy189_21a8e54
ovy189_21a8e54: ; 0x021A8E54
	push {r3, lr}
	blx sub_020584B0
	cmp r0, #0
	bne _021A8E66
	ldr r1, _021A8E70 ; =0xFFFEA048
	mov r0, #6
	blx sub_020584CC
_021A8E66:
	ldr r0, _021A8E74 ; =0x021AE500
	mov r1, #1
	str r1, [r0]
	pop {r3, pc}
	nop
_021A8E70: .word 0xFFFEA048
_021A8E74: .word 0x021AE500
	thumb_func_end ovy189_21a8e54

	thumb_func_start ovy189_21a8e78
ovy189_21a8e78: ; 0x021A8E78
	push {r4, lr}
	sub sp, #8
	ldr r4, _021A8F00 ; =0x021AE500
	ldr r0, [r4]
	cmp r0, #8
	bhi _021A8EF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A8E90: ; jump table
	.short _021A8EF8 - _021A8E90 - 2 ; case 0
	.short _021A8EA2 - _021A8E90 - 2 ; case 1
	.short _021A8EF8 - _021A8E90 - 2 ; case 2
	.short _021A8EF8 - _021A8E90 - 2 ; case 3
	.short _021A8EA4 - _021A8E90 - 2 ; case 4
	.short _021A8EC4 - _021A8E90 - 2 ; case 5
	.short _021A8ECE - _021A8E90 - 2 ; case 6
	.short _021A8EEC - _021A8E90 - 2 ; case 7
	.short _021A8EF8 - _021A8E90 - 2 ; case 8
_021A8EA2:
	b _021A8EF4
_021A8EA4:
	ldr r0, _021A8F04 ; =ovy189_21a8b44
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, _021A8F08 ; =0x021A8B41
	mov r2, #0
	bl ovy189_21a1264
	str r0, [r4, #8]
	cmp r0, #0
	blt _021A8EC2
	mov r0, #5
_021A8EBE:
	str r0, [r4]
	b _021A8EF8
_021A8EC2:
	b _021A8EF4
_021A8EC4:
	bl ovy189_21a11cc
	cmp r0, #0
	bne _021A8EF8
	b _021A8EF4
_021A8ECE:
	ldr r0, _021A8F04 ; =ovy189_21a8b44
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0x54]
	ldr r3, _021A8F08 ; =0x021A8B41
	mov r2, #0
	bl ovy189_21a1264
	str r0, [r4, #8]
	cmp r0, #0
	blt _021A8EEA
	mov r0, #7
	b _021A8EBE
_021A8EEA:
	b _021A8EF4
_021A8EEC:
	bl ovy189_21a11cc
	cmp r0, #0
	bne _021A8EF8
_021A8EF4:
	bl ovy189_21a8e54
_021A8EF8:
	ldr r0, _021A8F00 ; =0x021AE500
	ldr r0, [r0]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A8F00: .word 0x021AE500
_021A8F04: .word ovy189_21a8b44
_021A8F08: .word 0x021A8B41
	thumb_func_end ovy189_21a8e78

	thumb_func_start ovy189_21a8f0c
ovy189_21a8f0c: ; 0x021A8F0C
	push {r3, lr}
	ldr r0, _021A8F24 ; =0x021AE500
	ldr r0, [r0, #8]
	cmp r0, #0
	blt _021A8F1A
	bl ovy189_21a1378
_021A8F1A:
	ldr r0, _021A8F24 ; =0x021AE500
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	nop
_021A8F24: .word 0x021AE500
	thumb_func_end ovy189_21a8f0c

	thumb_func_start ovy189_21a8f28
ovy189_21a8f28: ; 0x021A8F28
	push {r3, r4, r5, lr}
	ldr r4, _021A8F68 ; =0x021AE500
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A8F64
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _021A8F44
	mov r0, #8
	mov r2, #0
	mov r5, #0
	blx sub_02058728
	str r5, [r4, #0x54]
_021A8F44:
	ldr r4, _021A8F68 ; =0x021AE500
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021A8F56
	blx sub_02058814
	mov r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
_021A8F56:
	bl ovy189_21a11a4
	ldr r0, _021A8F68 ; =0x021AE500
	mov r1, #2
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
_021A8F64:
	pop {r3, r4, r5, pc}
	nop
_021A8F68: .word 0x021AE500
	thumb_func_end ovy189_21a8f28
_021A8F6C:
	.byte 0x02, 0x49, 0xCA, 0x6E
	.byte 0x02, 0x60, 0x88, 0x6E, 0x70, 0x47, 0xC0, 0x46, 0x00, 0xE5, 0x1A, 0x02

	thumb_func_start ovy189_21a8f7c
ovy189_21a8f7c: ; 0x021A8F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r4, _021A90B0 ; =0x021AE500
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r6, r1, #0
	add r7, r3, #0
	str r2, [sp, #0x10]
	cmp r0, #1
	beq _021A8F96
	add sp, #0x44
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021A8F96:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _021A8FA8
	mov r0, #8
	mov r2, #0
	blx sub_02058728
	mov r0, #0
	str r0, [r4, #0x54]
_021A8FA8:
	add r0, r7, #0
	add r0, #0xc
	bl ovy189_21a893c
	add r4, r0, #0
	ldr r0, _021A90B4 ; =0x021AE624
	blx sub_02085D9C
	str r0, [sp, #0x14]
	ldr r0, _021A90B8 ; =0x021AE5A0
	blx sub_02085D9C
	str r0, [sp, #0x18]
	ldr r2, _021A90BC ; =0x021AE62C
	add r0, sp, #0x34
	mov r1, #0x10
	add r3, r6, #0
	bl OS_SNPrintf
	str r0, [sp, #0x1c]
	ldr r0, _021A90C0 ; =0x021AE630
	blx sub_02085D9C
	str r0, [sp, #0x20]
	add r0, r5, #0
	blx sub_02085D9C
	str r0, [sp, #0x24]
	ldr r0, _021A90C4 ; =0x021AE4FC
	ldr r0, [r0]
	blx sub_02085D9C
	str r0, [sp, #0x28]
	ldr r0, _021A90C8 ; =0x021AE510
	blx sub_02085D9C
	add r2, r0, #0
	ldr r1, [sp, #0x28]
	mov r0, #8
	add r2, r1, r2
	ldr r1, [sp, #0x24]
	add r2, r1, r2
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldr r1, [sp, #0x1c]
	add r2, r1, r2
	ldr r1, [sp, #0x18]
	add r2, r1, r2
	ldr r1, [sp, #0x14]
	add r2, #0x29
	add r1, r1, r2
	add r1, r4, r1
	blx sub_020586E4
	ldr r4, _021A90B0 ; =0x021AE500
	cmp r0, #0
	str r0, [r4, #0x54]
	bne _021A9022
	add sp, #0x44
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A9022:
	str r5, [sp]
	ldr r1, _021A90CC ; =0x021AE654
	str r6, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _021A90D0 ; =0x021AE680
	ldr r2, _021A90C4 ; =0x021AE4FC
	str r1, [sp, #0xc]
	ldr r1, _021A90D4 ; =0x021AE638
	ldr r2, [r2]
	ldr r3, _021A90C8 ; =0x021AE510
	bl OS_SPrintf
	ldr r5, [r4, #0x54]
	add r0, r5, #0
	blx sub_02085D9C
	add r0, r5, r0
	str r0, [r4, #0x5c]
	ldr r0, _021A90B4 ; =0x021AE624
	blx sub_02085D9C
	ldr r1, [r4, #0x5c]
	ldr r3, [sp, #0x10]
	sub r0, r1, r0
	sub r0, #0x28
	str r0, [r4, #0x58]
	str r6, [sp, #0x2c]
	str r7, [sp, #0x30]
	str r7, [sp]
	ldr r0, [r4, #0x5c]
	add r1, sp, #0x2c
	mov r2, #8
	bl ovy189_21a8ca0
	cmp r0, #2
	bne _021A907E
	ldr r1, [r4, #0x54]
	mov r0, #8
	mov r2, #0
	mov r5, #0
	blx sub_02058728
	add sp, #0x44
	str r5, [r4, #0x54]
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A907E:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021A9092
	ldr r0, [r4, #0x58]
	ldr r1, _021A90D8 ; =0x021AE574
	mov r2, #0x28
	blx sub_02083964
	mov r0, #6
	b _021A90A2
_021A9092:
	ldr r0, _021A90B8 ; =0x021AE5A0
	blx sub_02085D9C
	ldr r1, [r4, #0x58]
	mov r2, #0
	sub r0, r1, r0
	strb r2, [r0]
	mov r0, #4
_021A90A2:
	str r0, [r4]
	ldr r1, [sp, #0x58]
	ldr r0, _021A90B0 ; =0x021AE500
	str r1, [r0, #0x70]
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A90B0: .word 0x021AE500
_021A90B4: .word 0x021AE624
_021A90B8: .word 0x021AE5A0
_021A90BC: .word 0x021AE62C
_021A90C0: .word 0x021AE630
_021A90C4: .word 0x021AE4FC
_021A90C8: .word 0x021AE510
_021A90CC: .word 0x021AE654
_021A90D0: .word 0x021AE680
_021A90D4: .word 0x021AE638
_021A90D8: .word 0x021AE574
	thumb_func_end ovy189_21a8f7c

	thumb_func_start ovy189_21a90dc
ovy189_21a90dc: ; 0x021A90DC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ovy189_21a8f7c
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy189_21a90dc
