    .include "macros/function.inc"
	.include "overlay72.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy72_21e8be0
ovy72_21e8be0: ; 0x021E8BE0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, [r4, #0xc]
	bl sub_0216FA28
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0219382C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy72_21e8be0

	thumb_func_start ovy72_21e8bf8
ovy72_21e8bf8: ; 0x021E8BF8
	push {r3, lr}
	ldrb r2, [r1, #7]
	cmp r2, #0
	beq _021E8C04
	bl ovy72_21e8f48
_021E8C04:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy72_21e8bf8

	thumb_func_start ovy72_21e8c08
ovy72_21e8c08: ; 0x021E8C08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5, #7]
	add r4, r3, #0
	cmp r0, #0
	beq _021E8C38
	add r0, r5, #0
	add r1, r2, #0
	bl sub_0216FA34
	mov r1, #1
	add r0, r0, r4
	strb r1, [r0, #4]
	lsl r0, r4, #2
	add r2, r5, r0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_02167534
	add r0, r5, #0
	add r1, r4, #0
	bl ovy72_21e909c
_021E8C38:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy72_21e8c08

	thumb_func_start ovy72_21e8c3c
ovy72_21e8c3c: ; 0x021E8C3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #6]
	mov r6, #1
	cmp r0, #0
	bne _021E8C4A
	mov r6, #0
_021E8C4A:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _021E8C60
	mov r4, #0
_021E8C52:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy72_21e909c
	add r4, r4, #1
	cmp r4, #4
	blt _021E8C52
_021E8C60:
	ldr r2, _021E8C70 ; =0x000006FC
	mov r0, #0
	add r1, r5, #0
	blx MIi_CpuClear32
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021E8C70: .word 0x000006FC
	thumb_func_end ovy72_21e8c3c

	thumb_func_start ovy72_21e8c74
ovy72_21e8c74: ; 0x021E8C74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	str r1, [sp]
	ldr r0, [r0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x16
	cmp r0, #6
	bne _021E8D04
	add r0, r1, #0
	bl sub_0201FDF8
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	bl sub_02014870
	str r0, [sp, #4]
	cmp r0, #0x1e
	ble _021E8CA0
	mov r0, #0x1e
	str r0, [sp, #4]
_021E8CA0:
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	ble _021E8D04
_021E8CA8:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0201FF08
	mov r1, #0x9e
	mov r2, #0
	add r5, r0, #0
	bl sub_0201CCF8
	ldr r1, [sp, #4]
	add r6, r1, r0
	cmp r6, #0x64
	ble _021E8CC4
	mov r6, #0x64
_021E8CC4:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsl r2, r6, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021E8CA8
_021E8D04:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy72_21e8c74

	thumb_func_start ovy72_21e8d08
ovy72_21e8d08: ; 0x021E8D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, [r0, #0xc]
	add r7, r1, #0
	ldr r1, [r0]
	ldr r5, [sp, #0x20]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x16
	ldr r4, [sp, #0x24]
	cmp r0, #2
	beq _021E8D2E
	mov r0, #0x11
	strh r0, [r5]
	mov r0, #0x1a
	add sp, #8
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021E8D2E:
	lsl r1, r1, #2
	lsr r2, r1, #0x16
	mov r1, #0x30
	ldr r0, _021E8D6C ; =0x02170160
	mul r1, r2
	add r6, r0, r1
	add r0, r7, #0
	mov r1, #0
	bl sub_021670BC
	mov r1, #0xc
	mul r1, r0
	ldr r0, [sp]
	lsl r2, r0, #1
	add r0, r6, r1
	ldrh r0, [r2, r0]
	mov r1, #1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_021670BC
	add r2, r0, #0
	mov r1, #0xc
	ldr r0, [sp, #4]
	mul r2, r1
	lsl r1, r0, #1
	add r0, r6, r2
	ldrh r0, [r1, r0]
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8D6C: .word 0x02170160
	thumb_func_end ovy72_21e8d08

	thumb_func_start ovy72_21e8d70
ovy72_21e8d70: ; 0x021E8D70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0216FA18
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x16
	cmp r0, #3
	beq _021E8D9A
	mov r0, #0x11
	strh r0, [r4]
	mov r0, #0x4b
	lsl r0, r0, #2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021E8D9A:
	add r0, r7, #0
	mov r1, #0
	bl sub_021670BC
	strh r0, [r4]
	add r0, r7, #0
	mov r1, #2
	bl sub_021670BC
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _021E8DCA
	mov r0, #0x2a
	bl sub_02005748
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	add r5, #8
	blx sub_0208D65C
	add r4, r0, #0
	mul r4, r5
_021E8DCA:
	ldr r0, _021E8DD8 ; =0x0000E998
	cmp r4, r0
	ble _021E8DD2
	add r4, r0, #0
_021E8DD2:
	strh r4, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8DD8: .word 0x0000E998
	thumb_func_end ovy72_21e8d70

	thumb_func_start ovy72_21e8ddc
ovy72_21e8ddc: ; 0x021E8DDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x22
	str r3, [sp, #8]
	ldr r6, [r5, #0x40]
	blx MI_CpuFill8
	ldr r0, [r5, #8]
	bl sub_020145D8
	add r1, r5, #0
	add r1, #0x44
	add r5, #0x44
	strb r0, [r1]
	ldrb r0, [r5]
	cmp r0, #3
	bhs _021E8E10
	mov r0, #3
	b _021E8E16
_021E8E10:
	cmp r0, #0xa
	bls _021E8E18
	mov r0, #0xa
_021E8E16:
	strb r0, [r4]
_021E8E18:
	ldrb r7, [r4]
	cmp r7, #5
	bhs _021E8E20
	mov r7, #5
_021E8E20:
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	add r1, r1, #4
	add r1, r6, r1
	lsr r0, r0, #1
	mov r6, #0
	str r1, [sp, #0xc]
	cmp r7, #0
	ble _021E8E66
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_021E8E3A:
	add r0, sp, #0x14
	strb r6, [r0, r6]
	add r1, sp, #0x1c
	ldr r0, [sp, #0x10]
	add r1, #2
	add r2, r6, #0
	lsl r5, r6, #1
	bl ovy72_21e8f24
	add r1, sp, #0x1c
	add r1, #2
	strh r0, [r1, r5]
	add r0, r1, #0
	ldrh r0, [r0, r5]
	add r6, r6, #1
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, r1]
	add r0, r4, r5
	strh r1, [r0, #4]
	cmp r6, r7
	blt _021E8E3A
_021E8E66:
	ldrb r0, [r4]
	bl sub_02005748
	mov r5, #0
	strb r0, [r4, #1]
	cmp r7, #0
	ble _021E8E90
_021E8E74:
	add r0, sp, #0x14
	ldrb r6, [r0, r5]
	add r0, r7, #0
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x14
	ldrb r2, [r1, r0]
	strb r2, [r1, r5]
	add r5, r5, #1
	strb r6, [r1, r0]
	cmp r5, r7
	blt _021E8E74
_021E8E90:
	mov r0, #0xff
	strb r0, [r4, #2]
	mov r2, #0
	add r1, sp, #0x14
_021E8E98:
	ldrb r0, [r1, r2]
	lsl r3, r0, #1
	add r3, r4, r3
	ldrh r5, [r3, #4]
	lsl r3, r2, #1
	add r3, r4, r3
	strh r5, [r3, #0x18]
	ldrb r3, [r4, #1]
	cmp r0, r3
	bne _021E8EAE
	strb r2, [r4, #2]
_021E8EAE:
	add r2, r2, #1
	cmp r2, #5
	blt _021E8E98
	ldrb r0, [r4, #2]
	cmp r0, #0xff
	bne _021E8ED2
	mov r0, #5
	bl sub_02005748
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r1, [r0, #4]
	ldrb r0, [r4, #2]
	lsl r0, r0, #1
	add r0, r4, r0
	strh r1, [r0, #0x18]
_021E8ED2:
	ldrb r1, [r4]
	ldr r0, [sp]
	strh r1, [r0]
	ldrb r1, [r4, #1]
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldrb r1, [r4, #2]
	ldr r0, [sp, #8]
	strh r1, [r0]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy72_21e8ddc
_021E8EE8:
	.byte 0x49, 0x00, 0x40, 0x18, 0x48, 0x30, 0x00, 0x88
	.byte 0x70, 0x47, 0x00, 0x00, 0x49, 0x00, 0x40, 0x18, 0x5C, 0x30, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy72_21e8f00
ovy72_21e8f00: ; 0x021E8F00
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	ble _021E8F1C
_021E8F08:
	lsl r3, r4, #1
	ldrh r3, [r1, r3]
	cmp r0, r3
	bne _021E8F16
	mov r0, #1
	pop {r3, r4}
	bx lr
_021E8F16:
	add r4, r4, #1
	cmp r4, r2
	blt _021E8F08
_021E8F1C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy72_21e8f00

	thumb_func_start ovy72_21e8f24
ovy72_21e8f24: ; 0x021E8F24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
_021E8F2C:
	add r0, r5, #0
	bl sub_02005748
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy72_21e8f00
	cmp r0, #0
	bne _021E8F2C
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy72_21e8f24

	thumb_func_start ovy72_21e8f48
ovy72_21e8f48: ; 0x021E8F48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	ldrh r1, [r5, #4]
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0216FA34
	str r0, [sp]
	ldrb r0, [r5, #7]
	mov r4, #0
	cmp r0, #0
	ble _021E8FE4
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	mov r0, #0x6d
	lsl r0, r0, #2
	str r0, [sp, #8]
	sub r0, #0x1c
	str r0, [sp, #8]
_021E8F74:
	ldr r0, [sp, #8]
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0x14
	add r2, r1, #0
	ldr r1, [sp]
	mul r2, r0
	add r6, r1, r4
	ldr r0, [sp, #4]
	ldrb r1, [r6, #4]
	add r0, r0, r2
	cmp r1, #0
	bne _021E8FDC
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021E8FDC
	ldrh r1, [r0, #6]
	cmp r1, #0
	bne _021E8FBA
	add r1, sp, #0x14
	bl sub_0215D4D0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, sp, #0x14
	bl ovy72_21e8fec
	cmp r0, #0
	beq _021E8FDC
	b _021E8FD0
_021E8FBA:
	add r1, sp, #0xc
	bl sub_0215D4EC
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, sp, #0xc
	bl ovy72_21e9058
	cmp r0, #0
	beq _021E8FDC
_021E8FD0:
	mov r0, #1
	strb r0, [r6, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy72_21e909c
_021E8FDC:
	ldrb r0, [r5, #7]
	add r4, r4, #1
	cmp r4, r0
	blt _021E8F74
_021E8FE4:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy72_21e8f48

	thumb_func_start ovy72_21e8fec
ovy72_21e8fec: ; 0x021E8FEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #5
	lsl r0, r0, #0xe
	str r0, [sp]
	lsl r0, r2, #2
	mov r6, #0
	add r1, r1, r0
	mov r0, #0x6d
	add r4, r3, #0
	str r6, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r4]
	str r0, [sp, #8]
	asr r2, r1, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	ldr r2, [r4, #8]
	lsl r1, r1, #4
	asr r2, r2, #4
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	lsl r2, r3, #4
	ldr r0, [r5, #0x1c]
	ldr r3, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02167948
	cmp r0, #0
	beq _021E9038
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E9038:
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	mov r3, #8
	bl sub_0215D388
	ldr r1, _021E9054 ; =0x0000FFFF
	cmp r0, r1
	beq _021E904C
	mov r6, #1
_021E904C:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E9054: .word 0x0000FFFF
	thumb_func_end ovy72_21e8fec

	thumb_func_start ovy72_21e9058
ovy72_21e9058: ; 0x021E9058
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	str r3, [sp]
	add r1, r3, #0
	lsl r3, r7, #2
	add r6, r6, r3
	mov r3, #0x6d
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r0, [r4, #0x1c]
	ldr r3, [r6, r3]
	mov r2, #0
	mov r5, #0
	bl sub_0219584C
	cmp r0, #0
	beq _021E9080
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9080:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [sp]
	bl sub_0215D3B8
	ldr r1, _021E9098 ; =0x0000FFFF
	cmp r0, r1
	beq _021E9092
	mov r5, #1
_021E9092:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9098: .word 0x0000FFFF
	thumb_func_end ovy72_21e9058

	thumb_func_start ovy72_21e909c
ovy72_21e909c: ; 0x021E909C
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0x6d
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021E90B4
	bl sub_02166940
	mov r0, #0
	str r0, [r4, r5]
_021E90B4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy72_21e909c
_021E90B8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E90B8
