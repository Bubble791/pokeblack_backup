    .include "macros/function.inc"
	.include "overlay330.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy330_219ce80
ovy330_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x60
	str r0, [sp]
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldr r3, _0219CEA4 ; =0x0219D1E0
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #8]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219CEA4: .word 0x0219D1E0
	thumb_func_end ovy330_219ce80
_0219CEA8:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy330_219ceb0
ovy330_219ceb0: ; 0x0219CEB0
	push {r3, r4, r5, lr}
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x8b
	lsl r2, r2, #0xc
	mov r5, #0x8b
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0x8b
	bl sub_0203AAEC
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x8b
	bl sub_02048530
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	bl sub_0203A970
	str r0, [r4, #0x34]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy330_219ceb0

	thumb_func_start ovy330_219cef0
ovy330_219cef0: ; 0x0219CEF0
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0203A980
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0219CF06
	bl sub_02048564
_0219CF06:
	ldr r0, [r4, #4]
	bl sub_02048564
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x8b
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy330_219cef0

	thumb_func_start ovy330_219cf1c
ovy330_219cf1c: ; 0x0219CF1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r3, #0
	ldr r0, [r4, #0x34]
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0203A978
	cmp r0, #1
	bne _0219CF36
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219CF36:
	ldr r1, [r6]
	cmp r1, #4
	bls _0219CF3E
	b _0219D18E
_0219CF3E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219CF4A: ; jump table
	.short _0219CF54 - _0219CF4A - 2 ; case 0
	.short _0219D0AC - _0219CF4A - 2 ; case 1
	.short _0219D0FE - _0219CF4A - 2 ; case 2
	.short _0219D162 - _0219CF4A - 2 ; case 3
	.short _0219D18E - _0219CF4A - 2 ; case 4
_0219CF54:
	ldr r0, [r5]
	bl sub_0201735C
	str r0, [sp, #0x24]
	ldr r0, [r5]
	bl sub_0201736C
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl sub_0200D190
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_02017364
	str r0, [sp, #0x1c]
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _0219CF7C
	b _0219D09C
_0219CF7C:
	ldr r0, [r5]
	bl sub_02017994
	str r0, [sp, #0x28]
	mov r1, #7
	bl sub_020095A0
	ldr r0, [sp, #0x28]
	mov r1, #0x54
	bl sub_020095A0
	mov r0, #0x1f
	bl sub_02038BC8
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	bl sub_02008BA0
	ldr r0, [r5, #8]
	ldr r2, [r4, #4]
	mov r1, #0x8d
	bl sub_0201CD1C
	ldr r0, [sp, #0x24]
	bl sub_0201FDF8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	bl sub_0201FDF4
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	blt _0219D008
	ldr r0, [sp, #0x1c]
	bl sub_0200795C
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl sub_02007994
	ldr r0, [sp, #0x34]
	ldr r2, _0219D19C ; =0x000001B9
	str r0, [r4, #0x2c]
	mov r0, #0
	mov r1, #2
	mov r3, #0x8b
	bl sub_0204875C
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl sub_02017394
	ldr r1, _0219D1A0 ; =0x0000096B
	bl sub_020191AC
	mov r1, #0xb2
	cmp r0, #0
	bne _0219CFFA
	mov r1, #0xb1
_0219CFFA:
	ldr r0, [sp, #0x14]
	bl sub_0204898C
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x14]
	bl sub_020487D4
_0219D008:
	ldr r0, [r5]
	bl sub_020171F4
	bl sub_02017544
	bl sub_02018C80
	add r3, r0, #0
	ldrh r0, [r4, #0x30]
	mov r1, #0
	str r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x20]
	mov r1, #0
	bl sub_02035964
	add r0, r7, #0
	bl sub_0200D1AC
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0200D660
	cmp r0, #0
	bne _0219D050
	mov r0, #1
	str r0, [sp, #0x10]
_0219D050:
	ldr r1, [r5, #8]
	add r0, r7, #0
	bl sub_0200D72C
	ldr r1, [r5, #8]
	add r0, r7, #0
	bl sub_0200D568
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0219D082
	mov r0, #0
	b _0219D084
_0219D082:
	mov r0, #1
_0219D084:
	str r0, [r4, #8]
	ldr r0, [r4, #0x34]
	add r4, #8
	ldr r1, _0219D1A4 ; =0x00000129
	ldr r2, _0219D1A8 ; =0x021F4E38
	add r3, r4, #0
_0219D090:
	bl sub_0203A988
_0219D094:
	ldr r0, [r6]
	add r0, r0, #1
_0219D098:
	str r0, [r6]
	b _0219D194
_0219D09C:
	cmp r0, #2
	bne _0219D0A8
	ldr r1, [r5, #8]
	add r0, r7, #0
	bl sub_0200D72C
_0219D0A8:
	mov r0, #4
_0219D0AA:
	b _0219D098
_0219D0AC:
	cmp r0, #1
	beq _0219D0F8
	ldr r0, [r5]
	bl sub_02017364
	add r7, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0
	cmp r0, #1
	bne _0219D0C2
	mov r1, #1
_0219D0C2:
	cmp r1, #0
	beq _0219D0F4
	ldr r0, [r5]
	bl sub_02017934
	bl sub_0200C838
	ldr r1, [r4, #0x28]
	mov r2, #0xa
	str r1, [sp]
	str r7, [sp, #4]
	ldr r1, [r4, #0x2c]
	mov r3, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x30]
	ldr r1, [r5, #8]
	bl sub_02165ACC
	add r3, r0, #0
	str r3, [r4]
	ldr r0, [r4, #0x34]
	ldr r1, _0219D1AC ; =0x00000118
	ldr r2, _0219D1B0 ; =0x021DD940
	b _0219D090
_0219D0F4:
	mov r0, #3
	b _0219D0AA
_0219D0F8:
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D0FE:
	cmp r0, #1
	beq _0219D15C
	ldr r0, [r4]
	bl sub_02165B0C
	cmp r0, #0
	bne _0219D150
	ldrh r1, [r4, #0x30]
	mov r0, #0x20
	bl sub_02048530
	add r7, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_02165AFC
	ldr r0, [r5, #8]
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0201CCF8
	ldr r0, [r5, #8]
	ldr r2, [r4, #4]
	mov r1, #0x73
	bl sub_0201CD1C
	ldr r0, [r4]
	add r1, r7, #0
	bl sub_02165B10
	cmp r0, #0
	bne _0219D14A
	ldr r0, [r5]
	bl sub_02017994
	mov r1, #0x1e
	bl sub_020095A0
_0219D14A:
	add r0, r7, #0
	bl sub_02048564
_0219D150:
	ldr r0, [r4]
	bl sub_02165AE8
	mov r0, #0
	str r0, [r4]
	b _0219D094
_0219D15C:
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D162:
	ldr r0, [r5]
	bl sub_0201735C
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _0219D176
	ldr r1, [r5, #8]
	bl sub_0201FD6C
	b _0219D18C
_0219D176:
	ldr r0, [r5]
	bl sub_02017364
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_0201D620
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02007794
_0219D18C:
	b _0219D094
_0219D18E:
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D194:
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D19C: .word 0x000001B9
_0219D1A0: .word 0x0000096B
_0219D1A4: .word 0x00000129
_0219D1A8: .word 0x021F4E38
_0219D1AC: .word 0x00000118
_0219D1B0: .word 0x021DD940
	thumb_func_end ovy330_219cf1c
_0219D1B4:
	.byte 0xB1, 0xCE, 0x19, 0x02, 0x1D, 0xCF, 0x19, 0x02, 0xF1, 0xCE, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x76, 0x65, 0x6E, 0x74, 0x5F, 0x70, 0x64, 0x63, 0x5F, 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219D1B4
