    .include "macros/function.inc"
	.include "overlay179.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy179_219ad20
ovy179_219ad20: ; 0x0219AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	mov r1, #0x3c
	lsl r2, r0, #0x11
	bl sub_0203A15C
	mov r6, #0x6a
	lsl r6, r6, #2
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x3c
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	blx MI_CpuFill8
	sub r0, r6, #4
	str r4, [r5, r0]
	add r0, r5, #0
	mov r1, #0x3c
	bl ovy179_219b00c
	add r0, r5, #0
	add r0, #0xb0
	mov r1, #0
	mov r2, #0x3c
	bl ovy179_219b3e0
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AD70
	bl sub_02016B20
_0219AD70:
	mov r0, #0x1e
	str r0, [sp]
	mov r4, #5
	str r4, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	mov r6, #0x3c
	str r6, [sp, #0xc]
	add r0, #0xc0
	mov r1, #5
	mov r2, #1
	mov r3, #0x12
	mov r7, #1
	bl ovy179_219b470
	add r0, r5, #0
	ldr r2, [r5]
	add r0, #0xc0
	lsl r2, r2, #0x10
	ldr r0, [r0]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #6
	bl sub_02024E80
	mov r0, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	mov r4, #8
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r5, #0
	str r7, [sp, #0x10]
	add r0, #0xd4
	mov r1, #7
	mov r2, #6
	mov r3, #3
	str r6, [sp, #0x14]
	bl ovy179_219b4e0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xb0
	mov r2, #1
	bl ovy179_219b608
	lsl r4, r4, #9
	mov r0, #7
	mov r1, #3
	add r2, r4, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #6
	add r2, r4, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	mov r0, #7
	mov r1, #0xc
	mov r2, #0x28
	bl sub_02045EA0
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	add r0, r5, #0
	ldrb r2, [r2, #0xc]
	add r0, #0xe8
	add r1, r5, #0
	bl ovy179_219bb34
	ldr r0, [r5, r4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AE32
	add r7, sp, #0x44
	add r1, r7, #0
	bl sub_02199D4C
	ldr r0, [r5, r4]
	add r1, r5, #0
	ldr r0, [r0, #8]
	add r1, #0xb0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	mov r2, #0
	add r3, r7, #0
	str r6, [sp, #4]
	bl ovy179_219b738
_0219AE32:
	add r0, r5, #0
	bl sub_0219B094
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0219B460
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0219B464
	mov r1, #0xd
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x3c
	str r0, [sp, #0x10]
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	mov r3, #0xd
	bl sub_0219A89C
	mov r4, #0x62
	lsl r4, r4, #2
	mov r1, #0
	str r0, [r5, r4]
	bl sub_0219AA4C
	add r2, r4, #0
	add r2, #0x1c
	ldr r2, [r5, r2]
	add r0, r4, #0
	sub r0, #0x60
	ldrb r2, [r2, #0xc]
	add r0, r5, r0
	mov r1, #3
	mov r3, #0x3c
	bl ovy179_219bca0
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AEDC
	add r1, sp, #0x18
	bl sub_02199D4C
	add r0, sp, #0x18
	ldrb r0, [r0, #0xb]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _0219AEBE
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0xb]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _0219AEBE
	mov r0, #1
	add r4, #0x14
	str r0, [r5, r4]
	b _0219AEC6
_0219AEBE:
	mov r0, #0x67
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219AEC6:
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r1, r4, #0
	sub r1, #8
	ldrb r0, [r0, #0xc]
	ldr r1, [r5, r1]
	bl sub_0219C02C
	sub r1, r4, #4
	str r0, [r5, r1]
_0219AEDC:
	ldr r1, _0219AEEC ; =0x0219B899
	add r0, r5, #0
	bl sub_0219B87C
	mov r0, #1
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AEEC: .word 0x0219B899
	thumb_func_end ovy179_219ad20

	thumb_func_start ovy179_219aef0
ovy179_219aef0: ; 0x0219AEF0
	push {r4, r5, r6, lr}
	mov r4, #0x4a
	add r5, r3, #0
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0219BD84
	add r0, r5, #0
	add r0, #0xd4
	bl ovy179_219b550
	add r4, #0x60
	ldr r0, [r5, r4]
	bl sub_0219A980
	add r0, r5, #0
	add r0, #0xc0
	bl ovy179_219b550
	add r0, r5, #0
	bl ovy179_219b060
	add r5, #0xb0
	add r0, r5, #0
	bl ovy179_219b42c
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x3c
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy179_219aef0

	thumb_func_start ovy179_219af38
ovy179_219af38: ; 0x0219AF38
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #6
	bhi _0219AFBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219AF50: ; jump table
	.short _0219AF5E - _0219AF50 - 2 ; case 0
	.short _0219AF64 - _0219AF50 - 2 ; case 1
	.short _0219AF74 - _0219AF50 - 2 ; case 2
	.short _0219AF80 - _0219AF50 - 2 ; case 3
	.short _0219AF9A - _0219AF50 - 2 ; case 4
	.short _0219AFAA - _0219AF50 - 2 ; case 5
	.short _0219AFB6 - _0219AF50 - 2 ; case 6
_0219AF5E:
	mov r0, #1
_0219AF60:
	str r0, [r4]
	b _0219AFBA
_0219AF64:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #2
	b _0219AF60
_0219AF74:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219AFBA
	mov r0, #3
	b _0219AF60
_0219AF80:
	mov r6, #0x19
	lsl r6, r6, #4
	sub r2, r6, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r6
	blx r2
	add r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219AFBA
	mov r0, #4
	b _0219AF60
_0219AF9A:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #5
	b _0219AF60
_0219AFAA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219AFBA
	mov r0, #6
	b _0219AF60
_0219AFB6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219AFBA:
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0219B454
	cmp r0, #0
	beq _0219AFDE
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xc0
	add r1, #0xb0
	bl ovy179_219b56c
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xb0
	bl ovy179_219b56c
_0219AFDE:
	add r0, r5, #0
	bl sub_0219B07C
	mov r4, #0x4a
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy179_219bd90
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl sub_0219A9A4
	add r4, #0x7c
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219B006
	bl sub_02199B90
_0219B006:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy179_219af38

	thumb_func_start ovy179_219b00c
ovy179_219b00c: ; 0x0219B00C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xb0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0
	bl sub_02046BE0
	ldr r6, _0219B058 ; =0x0219C1C4
	add r0, r6, #0
	bl sub_02046C40
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	add r0, r5, #4
	add r1, r6, #0
	add r2, r4, #0
	bl ovy179_219b248
	add r0, r5, #0
	add r1, r4, #0
	bl ovy179_219b0b4
	ldr r0, _0219B05C ; =ovy179_219b0a0
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	add r5, #0xac
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B058: .word 0x0219C1C4
_0219B05C: .word ovy179_219b0a0
	thumb_func_end ovy179_219b00c

	thumb_func_start ovy179_219b060
ovy179_219b060: ; 0x0219B060
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy179_219b1fc
	add r0, r4, #4
	bl ovy179_219b380
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy179_219b060

	thumb_func_start sub_0219B07C
sub_0219B07C: ; 0x0219B07C
	ldr r3, _0219B084 ; =sub_0219B3C4
	add r0, r0, #4
	bx r3
	nop
_0219B084: .word sub_0219B3C4
	thumb_func_end sub_0219B07C

	thumb_func_start sub_0219B088
sub_0219B088: ; 0x0219B088
	ldr r3, _0219B090 ; =sub_0219B3D4
	add r0, r0, #4
	bx r3
	nop
_0219B090: .word sub_0219B3D4
	thumb_func_end sub_0219B088

	thumb_func_start sub_0219B094
sub_0219B094: ; 0x0219B094
	ldr r3, _0219B09C ; =sub_0219B3DC
	add r0, r0, #4
	bx r3
	nop
_0219B09C: .word sub_0219B3DC
	thumb_func_end sub_0219B094

	thumb_func_start ovy179_219b0a0
ovy179_219b0a0: ; 0x0219B0A0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219B240
	add r0, r4, #4
	bl sub_0219B3CC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy179_219b0a0

	thumb_func_start ovy179_219b0b4
ovy179_219b0b4: ; 0x0219B0B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_020444A4
	add r0, r6, #0
	bl sub_02048080
	ldr r0, _0219B1EC ; =0x0219C150
	bl sub_02044710
	ldr r7, _0219B1F0 ; =0x0219C1A4
	mov r4, #0
_0219B0D2:
	ldr r1, _0219B1F4 ; =0x0219C1F4
	lsl r3, r4, #5
	add r1, r1, r3
	lsl r2, r4, #2
	ldr r5, [r7, r2]
	ldr r3, _0219B1F8 ; =0x0219C184
	lsl r0, r5, #0x18
	ldr r2, [r3, r2]
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blt _0219B0D2
	mov r0, #0x5d
	add r1, r6, #0
	bl sub_0204AA30
	mov r5, #0
	str r5, [sp]
	str r6, [sp, #4]
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #4
	mov r3, #0
	mov r7, #4
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x2e
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #1
	add r3, r5, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #5
	add r1, r5, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_02045118
	str r5, [sp]
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #5
	add r3, r5, #0
	str r6, [sp, #4]
	bl sub_0204AE3C
	ldr r1, [sp, #0xc]
	str r0, [r1]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B1EC: .word 0x0219C150
_0219B1F0: .word 0x0219C1A4
_0219B1F4: .word 0x0219C1F4
_0219B1F8: .word 0x0219C184
	thumb_func_end ovy179_219b0b4

	thumb_func_start ovy179_219b1fc
ovy179_219b1fc: ; 0x0219B1FC
	push {r3, r4, r5, lr}
	ldr r2, [r0]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #5
	mov r1, #1
	mov r2, #0
	mov r5, #0
	bl sub_02045264
	ldr r4, _0219B23C ; =0x0219C1A4
_0219B21E:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blt _0219B21E
	bl sub_020480A8
	bl sub_02044528
	pop {r3, r4, r5, pc}
	nop
_0219B23C: .word 0x0219C1A4
	thumb_func_end ovy179_219b1fc

	thumb_func_start sub_0219B240
sub_0219B240: ; 0x0219B240
	ldr r3, _0219B244 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219B244: .word sub_02045A5C
	thumb_func_end sub_0219B240

	thumb_func_start ovy179_219b248
ovy179_219b248: ; 0x0219B248
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0xa8
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _0219B37C ; =0x02093F08
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r7, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x5d
	add r1, r7, #0
	bl sub_0204AA30
	str r7, [sp]
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #4]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #9
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r4, r6, #0
_0219B2CE:
	add r0, sp, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_0204C040
	lsl r1, r6, #2
	add r1, r5, r1
	add r6, r6, #1
	str r0, [r1, #0x10]
	cmp r6, #3
	blt _0219B2CE
	add r6, sp, #0xc
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	str r6, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_0204C040
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0204C468
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0204C438
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0xb
	bl sub_0204C488
	mov r7, #0
_0219B354:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x10]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r6, #0x10]
	add r1, r7, #0
	bl sub_0204C468
	ldr r0, [r6, #0x10]
	add r1, r7, #0
	bl sub_0204C438
	add r4, r4, #1
	cmp r4, #3
	blt _0219B354
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219B37C: .word 0x02093F08
	thumb_func_end ovy179_219b248

	thumb_func_start ovy179_219b380
ovy179_219b380: ; 0x0219B380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B386:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0219B394
	bl sub_0204C108
_0219B394:
	add r4, r4, #1
	cmp r4, #0x26
	blt _0219B386
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xa8
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy179_219b380

	thumb_func_start sub_0219B3C4
sub_0219B3C4: ; 0x0219B3C4
	ldr r3, _0219B3C8 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B3C8: .word sub_0204B794
	thumb_func_end sub_0219B3C4

	thumb_func_start sub_0219B3CC
sub_0219B3CC: ; 0x0219B3CC
	ldr r3, _0219B3D0 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219B3D0: .word sub_0204B7C8
	thumb_func_end sub_0219B3CC

	thumb_func_start sub_0219B3D4
sub_0219B3D4: ; 0x0219B3D4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219B3D4

	thumb_func_start sub_0219B3DC
sub_0219B3DC: ; 0x0219B3DC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B3DC

	thumb_func_start ovy179_219b3e0
ovy179_219b3e0: ; 0x0219B3E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	bl sub_020232D0
	cmp r6, #0
	bne _0219B40A
	mov r0, #0x17
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02022D58
	str r0, [r5]
_0219B40A:
	add r0, r4, #0
	bl sub_02021998
	str r0, [r5, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3c
	add r3, r4, #0
	bl sub_0204875C
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_020241D4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy179_219b3e0

	thumb_func_start ovy179_219b42c
ovy179_219b42c: ; 0x0219B42C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #4]
	bl GFL_MsgDataFree
	ldr r0, [r4, #8]
	bl sub_02021A18
	ldr r0, [r4]
	bl sub_02022DA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy179_219b42c

	thumb_func_start sub_0219B454
sub_0219B454: ; 0x0219B454
	ldr r0, [r0, #8]
	ldr r3, _0219B45C ; =sub_02021A3C
	bx r3
	nop
_0219B45C: .word sub_02021A3C
	thumb_func_end sub_0219B454

	thumb_func_start sub_0219B460
sub_0219B460: ; 0x0219B460
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B460

	thumb_func_start sub_0219B464
sub_0219B464: ; 0x0219B464
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219B464

	thumb_func_start sub_0219B468
sub_0219B468: ; 0x0219B468
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219B468

	thumb_func_start sub_0219B46C
sub_0219B46C: ; 0x0219B46C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219B46C

	thumb_func_start ovy179_219b470
ovy179_219b470: ; 0x0219B470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	mov r0, #0xf
	add r4, sp, #0x28
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	add r1, r7, #0
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020480C0
	str r0, [r5]
	ldrh r1, [r4, #0xc]
	mov r0, #0xff
	bl sub_02048530
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0
	str r0, [r5, #4]
	strb r1, [r5, #8]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy179_219b470

	thumb_func_start ovy179_219b4e0
ovy179_219b4e0: ; 0x0219B4E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	add r4, sp, #0x28
	ldrh r0, [r4, #0xc]
	add r1, r7, #0
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020480C0
	str r0, [r5]
	ldrh r1, [r4, #0x14]
	mov r0, #0xff
	bl sub_02048530
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0
	str r0, [r5, #4]
	strb r1, [r5, #8]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy179_219b4e0

	thumb_func_start ovy179_219b550
ovy179_219b550: ; 0x0219B550
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy179_219b550

	thumb_func_start ovy179_219b56c
ovy179_219b56c: ; 0x0219B56C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #8]
	ldr r4, [r1, #8]
	cmp r0, #0
	beq _0219B594
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B594
	ldr r0, [r5, #4]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #8]
_0219B594:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0219B59E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219B59E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy179_219b56c

	thumb_func_start ovy179_219b5a4
ovy179_219b5a4: ; 0x0219B5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0219B468
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0219B464
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0219B460
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_020484F4
	ldrh r1, [r4, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #8]
	ldr r2, [r4, #0xc]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	add r5, sp, #0x28
	mov r3, #0
	ldrsh r3, [r5, r3]
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy179_219b5a4

	thumb_func_start ovy179_219b608
ovy179_219b608: ; 0x0219B608
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0219B468
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0219B464
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219B460
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	bl sub_020484D8
	lsl r0, r0, #0x12
	lsr r6, r0, #0x10
	ldr r0, [r5]
	bl sub_020484DC
	lsl r0, r0, #0x12
	lsr r4, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, _0219B6A8 ; =0x00003DC4
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219B6A8: .word 0x00003DC4
	thumb_func_end ovy179_219b608

	thumb_func_start ovy179_219b6ac
ovy179_219b6ac: ; 0x0219B6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r3, [sp, #8]
	ldr r0, [r5]
	add r4, r1, #0
	add r7, r2, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	add r0, r4, #0
	bl sub_0219B46C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B468
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r1, sp, #0x28
	ldrh r1, [r1]
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0219B464
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B460
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy179_219b6ac

	thumb_func_start ovy179_219b738
ovy179_219b738: ; 0x0219B738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	add r0, r4, #0
	bl sub_0219B46C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B468
	ldr r2, [sp, #0x28]
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	add r2, #0xc
	bl GFL_CopyVarForText
	add r7, #0xc
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl GFL_CopyVarForText
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_0204898C
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0219B464
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B460
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy179_219b738

	thumb_func_start ovy179_219b7c8
ovy179_219b7c8: ; 0x0219B7C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	add r0, r4, #0
	bl sub_0219B46C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B468
	ldr r2, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	add r2, #0xc
	add r0, r6, #0
	mov r1, #0
	str r2, [sp, #8]
	bl GFL_CopyVarForText
	cmp r7, #1
	bls _0219B80E
	mov r0, #1
	str r0, [sp, #0xc]
_0219B80E:
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0x86
	bl sub_020244E0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	mov r3, #1
	bl sub_0202451C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	bl sub_0204898C
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0219B464
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B460
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy179_219b7c8

	thumb_func_start sub_0219B87C
sub_0219B87C: ; 0x0219B87C
	mov r2, #0x63
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r3, #0
	add r1, r2, #4
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B87C

	thumb_func_start sub_0219B88C
sub_0219B88C: ; 0x0219B88C
	mov r1, #0x65
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B88C
_0219B898:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xA9, 0xB8, 0x19, 0x02, 0x7D, 0xB8, 0x19, 0x02

	thumb_func_start ovy179_219b8a8
ovy179_219b8a8: ; 0x0219B8A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0xa
	bhi _0219B9AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B8C2: ; jump table
	.short _0219B8D8 - _0219B8C2 - 2 ; case 0
	.short _0219B8F0 - _0219B8C2 - 2 ; case 1
	.short _0219B8FE - _0219B8C2 - 2 ; case 2
	.short _0219B934 - _0219B8C2 - 2 ; case 3
	.short _0219B962 - _0219B8C2 - 2 ; case 4
	.short _0219B9A0 - _0219B8C2 - 2 ; case 5
	.short _0219BA1C - _0219B8C2 - 2 ; case 6
	.short _0219BA3A - _0219B8C2 - 2 ; case 7
	.short _0219BAB0 - _0219B8C2 - 2 ; case 8
	.short _0219BAD2 - _0219B8C2 - 2 ; case 9
	.short _0219BAE2 - _0219B8C2 - 2 ; case 10
_0219B8D8:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x1e
	bls _0219B9AE
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
_0219B8EC:
	strh r0, [r5]
	b _0219BAF2
_0219B8F0:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219BF08
	mov r0, #2
	b _0219B8EC
_0219B8FE:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219BF1C
	cmp r0, #0
	beq _0219B9AE
	ldr r0, _0219BB14 ; =0x00000653
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #0
	bl ovy179_219bbcc
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #1
	bl ovy179_219bbcc
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #2
	bl ovy179_219bbcc
	mov r0, #3
	b _0219B8EC
_0219B934:
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #0
	bl sub_0219BC24
	cmp r0, #0
	beq _0219B9AE
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #1
	bl sub_0219BC24
	cmp r0, #0
	beq _0219B9AE
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #2
	bl sub_0219BC24
	cmp r0, #0
	beq _0219B9AE
	mov r0, #4
	b _0219B8EC
_0219B962:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	ldrb r6, [r0, #0xc]
	add r0, r6, #0
	blx sub_0208D65C
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xc
	bls _0219B980
	mov r2, #0xc
	b _0219B986
_0219B980:
	cmp r2, #2
	bhs _0219B986
	mov r2, #2
_0219B986:
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	add r1, r4, #0
	lsl r2, r2, #0x18
	add r0, #0xc0
	add r1, #0xb0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl ovy179_219b6ac
	mov r0, #5
	b _0219B8EC
_0219B9A0:
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r1, #1
	str r0, [r4, r6]
	cmp r1, #0x32
	bhi _0219B9B0
_0219B9AE:
	b _0219BAF2
_0219B9B0:
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200FB40
	mov r1, #0
	str r1, [r4, r6]
	add r6, #0xc
	add r7, r0, #0
	ldr r0, [r4, r6]
	ldrb r0, [r0, #0xc]
	bl sub_0219BFD4
	cmp r0, #5
	bhi _0219BA18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B9E4: ; jump table
	.short _0219BA10 - _0219B9E4 - 2 ; case 0
	.short _0219BA0E - _0219B9E4 - 2 ; case 1
	.short _0219BA0E - _0219B9E4 - 2 ; case 2
	.short _0219BA0E - _0219B9E4 - 2 ; case 3
	.short _0219BA02 - _0219B9E4 - 2 ; case 4
	.short _0219B9F0 - _0219B9E4 - 2 ; case 5
_0219B9F0:
	ldr r0, _0219BB18 ; =0x00000527
	ldr r1, _0219BB1C ; =0x0000FFFF
	bl sub_02005DF4
	add r0, r7, #0
	mov r1, #0xb4
	bl sub_0200F98C
	b _0219BA18
_0219BA02:
	add r0, r7, #0
	mov r1, #0xb4
	bl sub_0200F98C
	ldr r0, _0219BB20 ; =0x00000528
	b _0219BA12
_0219BA0E:
	b _0219BA10
_0219BA10:
	ldr r0, _0219BB24 ; =0x00000529
_0219BA12:
	ldr r1, _0219BB1C ; =0x0000FFFF
	bl sub_02005DF4
_0219BA18:
	mov r0, #6
	b _0219B8EC
_0219BA1C:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219BAF2
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x1e
	bls _0219BAF2
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #7
	b _0219B8EC
_0219BA3A:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219BAF2
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219BA54
	add r1, sp, #4
	bl sub_02199D4C
_0219BA54:
	add r0, r4, #0
	bl ovy179_219c04c
	cmp r0, #0
	bne _0219BA94
	mov r3, #0x67
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, sp, #4
	cmp r0, #0
	bne _0219BA7A
	mov r3, #0xd
	add r0, r4, #0
	add r1, r4, #0
	str r3, [sp]
	add r0, #0xc0
	add r1, #0xb0
	lsl r3, r3, #5
	b _0219BA88
_0219BA7A:
	mov r0, #0xe
	str r0, [sp]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc0
	add r1, #0xb0
	add r3, r3, #4
_0219BA88:
	ldr r3, [r4, r3]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy179_219b7c8
	b _0219BAAA
_0219BA94:
	cmp r0, #2
	bne _0219BAAE
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0
	add r0, #0xc0
	add r1, #0xb0
	mov r2, #0xf
	str r3, [sp]
	bl ovy179_219b5a4
_0219BAAA:
	mov r0, #8
	b _0219B8EC
_0219BAAE:
	b _0219BACE
_0219BAB0:
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r1, #1
	str r0, [r4, r6]
	cmp r1, #0x1e
	bls _0219BAF2
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0219AA4C
	mov r0, #0
	str r0, [r4, r6]
_0219BACE:
	mov r0, #9
	b _0219B8EC
_0219BAD2:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0219AA4C
	mov r0, #0xa
	b _0219B8EC
_0219BAE2:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219BAF2
	ldr r1, _0219BB28 ; =0x0219BB2D
	add r0, r4, #0
	bl sub_0219B87C
_0219BAF2:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BB06
	add r0, r4, #0
	bl sub_0219B88C
_0219BB06:
	add r4, #0xe8
	add r0, r4, #0
	bl sub_0219BC20
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BB14: .word 0x00000653
_0219BB18: .word 0x00000527
_0219BB1C: .word 0x0000FFFF
_0219BB20: .word 0x00000528
_0219BB24: .word 0x00000529
_0219BB28: .word 0x0219BB2D
	thumb_func_end ovy179_219b8a8
_0219BB2C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x8D, 0xB8, 0x19, 0x02

	thumb_func_start ovy179_219bb34
ovy179_219bb34: ; 0x0219BB34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	add r7, sp, #0xc
_0219BB4A:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0219B088
	lsl r1, r4, #2
	str r0, [r5, r1]
	cmp r6, #0x64
	bge _0219BB62
	mov r0, #0x24
	mul r0, r4
	add r0, #0x4a
	b _0219BB78
_0219BB62:
	cmp r6, #0
	blt _0219BB72
	cmp r6, #0xa
	bge _0219BB72
	mov r0, #0x24
	mul r0, r4
	add r0, #0x38
	b _0219BB78
_0219BB72:
	mov r0, #0x24
	mul r0, r4
	add r0, #0x5c
_0219BB78:
	strh r0, [r7]
	mov r0, #0x54
	strh r0, [r7, #2]
	lsl r0, r4, #2
	str r0, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0204C140
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0
	strh r0, [r1, #0xc]
	mov r0, #0x3c
	strh r0, [r1, #0x12]
	ldrh r1, [r1, #0x12]
	ldr r0, _0219BBC8 ; =0x00000FEF
	blx sub_0208D65C
	ldr r1, [sp, #4]
	add r4, r4, #1
	str r0, [r1, #0x18]
	cmp r4, #3
	blt _0219BB4A
	add r0, r5, #0
	add r1, r6, #0
	bl ovy179_219bc2c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BBC8: .word 0x00000FEF
	thumb_func_end ovy179_219bb34

	thumb_func_start ovy179_219bbcc
ovy179_219bbcc: ; 0x0219BBCC
	push {r4, lr}
	add r2, r0, #0
	lsl r3, r1, #2
	add r2, #0x34
	ldr r4, [r2, r3]
	cmp r4, #0
	bne _0219BC1C
	cmp r1, #0
	bne _0219BBF2
	mov r4, #2
	sub r4, r4, r1
	add r4, r0, r4
	add r4, #0x30
	ldrb r4, [r4]
	cmp r4, #0
	bne _0219BBF2
	mov r0, #1
	str r0, [r2, r3]
	pop {r4, pc}
_0219BBF2:
	cmp r1, #0
	bne _0219BC12
	mov r4, #2
	sub r4, r4, r1
	add r4, r0, r4
	add r4, #0x30
	ldrb r4, [r4]
	cmp r4, #0
	bne _0219BC12
	cmp r1, #1
	bne _0219BC12
	cmp r4, #0
	bne _0219BC12
	mov r0, #1
	str r0, [r2, r3]
	pop {r4, pc}
_0219BC12:
	mov r1, #1
	str r1, [r2, r3]
	ldr r0, [r0, r3]
	bl sub_0204C124
_0219BC1C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy179_219bbcc

	thumb_func_start sub_0219BC20
sub_0219BC20: ; 0x0219BC20
	mov r0, #0
	bx lr
	thumb_func_end sub_0219BC20

	thumb_func_start sub_0219BC24
sub_0219BC24: ; 0x0219BC24
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0219BC24

	thumb_func_start ovy179_219bc2c
ovy179_219bc2c: ; 0x0219BC2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	beq _0219BC4A
	mov r4, #0xa
_0219BC3A:
	cmp r0, #0
	beq _0219BC4A
	add r1, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _0219BC3A
_0219BC4A:
	mov r6, #0
	add r4, r6, #0
_0219BC4E:
	lsl r0, r6, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204C488
	add r6, r6, #1
	cmp r6, #3
	blt _0219BC4E
	ldr r7, _0219BC9C ; =0x0219C160
_0219BC60:
	lsl r6, r4, #2
	add r1, r7, r6
	ldr r0, [sp]
	ldr r1, [r1, #4]
	blx sub_0208D868
	add r0, r1, #0
	ldr r1, [r7, r6]
	blx sub_0208D868
	add r1, r5, r4
	add r1, #0x30
	strb r0, [r1]
	add r1, r5, r4
	add r1, #0x30
	ldrb r1, [r1]
	mov r0, #2
	sub r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, #1
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r4, r4, #1
	cmp r4, #3
	blt _0219BC60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BC9C: .word 0x0219C160
	thumb_func_end ovy179_219bc2c

	thumb_func_start ovy179_219bca0
ovy179_219bca0: ; 0x0219BCA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x60
	add r6, r3, #0
	blx MI_CpuFill8
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x5c
	strh r4, [r5]
	bl sub_0219BFD4
	add r1, r5, #0
	add r1, #0x54
	strh r0, [r1]
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0219BCDA
	add r0, r5, #0
	add r0, #0x54
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x54
	strh r1, [r0]
_0219BCDA:
	mov r0, #0x5d
	add r1, r6, #0
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r1, #0xf
	mov r2, #3
	mov r3, #0
	add r7, r0, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	add r0, r7, #0
	mov r1, #0x11
	mov r2, #3
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0x5d
	mov r1, #0x10
	add r2, sp, #0xc
	add r3, r6, #0
	bl sub_0204B354
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldr r6, [r0, #0xc]
	add r1, #8
	add r0, r6, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	mov r0, #0x20
	add r0, #0xe0
	add r1, r5, #0
	add r0, r6, r0
	add r1, #8
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0x28
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r1, _0219BD80 ; =0x00007FFF
_0219BD52:
	lsl r0, r4, #1
	add r0, r5, r0
	add r4, r4, #1
	strh r1, [r0, #0x28]
	cmp r4, #0xd
	blt _0219BD52
	mov r6, #0xf
	mov r4, #0
	mov r7, #0xf
	add r5, #0x28
	add r6, #0xf1
_0219BD68:
	lsl r2, r4, #1
	add r1, r2, r6
	add r0, r7, #0
	add r2, r5, r2
	mov r3, #2
	bl sub_0205FA10
	add r4, r4, #1
	cmp r4, #0x10
	blt _0219BD68
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BD80: .word 0x00007FFF
	thumb_func_end ovy179_219bca0

	thumb_func_start sub_0219BD84
sub_0219BD84: ; 0x0219BD84
	ldr r3, _0219BD8C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x60
	bx r3
	.align 2, 0
_0219BD8C: .word MI_CpuFill8
	thumb_func_end sub_0219BD84

	thumb_func_start ovy179_219bd90
ovy179_219bd90: ; 0x0219BD90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _0219BD9E
	b _0219BEF0
_0219BD9E:
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _0219BDB0
	cmp r0, #1
	beq _0219BE56
	cmp r0, #2
	beq _0219BE6C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BDB0:
	add r0, r5, #0
	add r0, #0x56
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x54
	ldrh r0, [r0]
	cmp r1, r0
	bls _0219BDDA
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0219BDCE
	mov r0, #1
	add sp, #0xc
	str r0, [r5, #0x58]
	pop {r4, r5, r6, r7, pc}
_0219BDCE:
	mov r0, #1
	str r0, [r5, #0x4c]
	mov r0, #0
	add sp, #0xc
	str r0, [r5, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219BDDA:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0219BDE8
	ldr r0, _0219BEF4 ; =0x000007CF
	add r0, r1, r0
	bl GFL_SndSEPlay
_0219BDE8:
	add r0, r5, #0
	add r0, #0x56
	ldrh r1, [r0]
	mov r4, #0
	lsl r0, r1, #1
	add r0, r1, r0
	ldr r1, _0219BEF8 ; =0x0219C172
	ldrb r1, [r1, r0]
	cmp r1, #0
	ble _0219BE38
	add r6, r5, #0
	ldr r7, _0219BEFC ; =0x0219C170
	add r6, #0x28
_0219BE02:
	add r0, r7, r0
	ldrb r1, [r4, r0]
	mov r2, #0x28
	mov r3, #8
	lsl r0, r1, #1
	str r1, [sp]
	ldr r1, _0219BF00 ; =0x00007FFF
	str r1, [sp, #4]
	add r1, r5, r0
	ldrh r1, [r1, #8]
	add r0, r6, r0
	str r1, [sp, #8]
	ldr r1, [r5, #0x48]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy179_219bf20
	add r0, r5, #0
	add r0, #0x56
	ldrh r1, [r0]
	add r4, r4, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r7, r0
	ldrb r1, [r1, #2]
	cmp r4, r1
	blt _0219BE02
_0219BE38:
	ldr r1, [r5, #0x48]
	add r0, r1, #1
	str r0, [r5, #0x48]
	cmp r1, #0x28
	blo _0219BEF0
	mov r0, #0
	str r0, [r5, #0x48]
	add r0, r5, #0
	add r0, #0x56
	ldrh r0, [r0]
	add r5, #0x56
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219BE56:
	ldr r1, [r5, #0x48]
	add r0, r1, #1
	str r0, [r5, #0x48]
	cmp r1, #0x3c
	blo _0219BEF0
	mov r0, #0
	str r0, [r5, #0x48]
	mov r0, #2
	add sp, #0xc
	str r0, [r5, #0x58]
	pop {r4, r5, r6, r7, pc}
_0219BE6C:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0219BE80
	add r0, r5, #0
	add r0, #0x56
	ldrh r1, [r0]
	ldr r0, _0219BF04 ; =0x000007CD
	add r0, r1, r0
	bl GFL_SndSEPlay
_0219BE80:
	add r0, r5, #0
	add r0, #0x56
	ldrh r0, [r0]
	mov r4, #0
	sub r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _0219BEF8 ; =0x0219C172
	ldrb r1, [r1, r2]
	cmp r1, #0
	ble _0219BEDC
	add r6, r5, #0
	ldr r7, _0219BEFC ; =0x0219C170
	add r6, #0x28
_0219BE9C:
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r7, r0
	add r0, r4, r0
	sub r0, r0, #3
	ldrb r1, [r0]
	mov r2, #0x28
	mov r3, #8
	lsl r0, r1, #1
	str r1, [sp]
	add r1, r5, r0
	ldrh r1, [r1, #8]
	add r0, r6, r0
	str r1, [sp, #4]
	ldr r1, _0219BF00 ; =0x00007FFF
	str r1, [sp, #8]
	ldr r1, [r5, #0x48]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy179_219bf20
	add r0, r5, #0
	add r0, #0x56
	ldrh r0, [r0]
	add r4, r4, #1
	lsl r1, r0, #1
	add r1, r0, r1
	add r1, r7, r1
	sub r1, r1, #1
	ldrb r1, [r1]
	cmp r4, r1
	blt _0219BE9C
_0219BEDC:
	ldr r1, [r5, #0x48]
	add r0, r1, #1
	str r0, [r5, #0x48]
	cmp r1, #0x28
	blo _0219BEF0
	mov r1, #0
	mov r0, #1
	str r1, [r5, #0x48]
	str r0, [r5, #0x4c]
	str r1, [r5, #0x50]
_0219BEF0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BEF4: .word 0x000007CF
_0219BEF8: .word 0x0219C172
_0219BEFC: .word 0x0219C170
_0219BF00: .word 0x00007FFF
_0219BF04: .word 0x000007CD
	thumb_func_end ovy179_219bd90

	thumb_func_start sub_0219BF08
sub_0219BF08: ; 0x0219BF08
	add r1, r0, #0
	mov r2, #0
	mov r3, #1
	add r1, #0x56
	str r3, [r0, #0x50]
	str r2, [r0, #0x4c]
	strh r3, [r1]
	str r2, [r0, #0x58]
	str r2, [r0, #0x48]
	bx lr
	thumb_func_end sub_0219BF08

	thumb_func_start sub_0219BF1C
sub_0219BF1C: ; 0x0219BF1C
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end sub_0219BF1C

	thumb_func_start ovy179_219bf20
ovy179_219bf20: ; 0x0219BF20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #4]
	str r0, [sp]
	str r3, [sp, #8]
	add r0, sp, #0x30
	add r5, r1, #0
	mov r1, #0x3e
	ldrh r0, [r0, #4]
	lsl r1, r1, #4
	and r1, r0
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	add r1, sp, #0x30
	ldrh r4, [r1, #8]
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	mov r1, #0x1f
	lsl r1, r1, #0xa
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r4
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r6
	ldr r1, [sp, #4]
	mul r0, r5
	blx sub_0208D65C
	str r0, [sp, #0x10]
	mov r0, #0x1f
	and r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r7
	ldr r1, [sp, #4]
	mul r0, r5
	blx sub_0208D65C
	str r0, [sp, #0x14]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r4
	lsl r0, r0, #0x13
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	sub r0, r1, r0
	ldr r1, [sp, #4]
	mul r0, r5
	blx sub_0208D65C
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, r7, r2
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	ldr r2, [sp, #0xc]
	add r1, r6, r1
	add r0, r2, r0
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x13
	orr r0, r3
	lsl r1, r1, #0xa
	orr r1, r0
	ldr r0, [sp]
	mov r3, #2
	strh r1, [r0]
	ldr r1, [sp, #8]
	mov r0, #0xf
	lsl r2, r1, #5
	add r1, sp, #0x30
	ldrb r1, [r1]
	lsl r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp]
	bl sub_0205FA10
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy179_219bf20

	thumb_func_start sub_0219BFD4
sub_0219BFD4: ; 0x0219BFD4
	cmp r0, #0x64
	bne _0219BFDE
	ldr r2, _0219C028 ; =0x0000FFFF
	mov r3, #5
	b _0219C010
_0219BFDE:
	cmp r0, #0x50
	blo _0219BFE8
	mov r2, #0x64
	mov r3, #4
	b _0219C010
_0219BFE8:
	cmp r0, #0x3c
	blo _0219BFF2
	mov r2, #0x50
	mov r3, #3
	b _0219C010
_0219BFF2:
	cmp r0, #0x1e
	blo _0219BFFC
	mov r2, #0x3c
	mov r3, #2
	b _0219C010
_0219BFFC:
	cmp r0, #0
	beq _0219C004
	mov r2, #0x1e
	b _0219C00E
_0219C004:
	bne _0219C00C
	mov r2, #0
	mov r3, #0
	b _0219C010
_0219C00C:
	mov r2, #0x64
_0219C00E:
	mov r3, #1
_0219C010:
	cmp r1, #0
	beq _0219C022
	add r0, r0, #3
	cmp r0, r2
	ble _0219C01E
	mov r0, #1
	b _0219C020
_0219C01E:
	mov r0, #0
_0219C020:
	str r0, [r1]
_0219C022:
	add r0, r3, #0
	bx lr
	nop
_0219C028: .word 0x0000FFFF
	thumb_func_end sub_0219BFD4

	thumb_func_start sub_0219C02C
sub_0219C02C: ; 0x0219C02C
	cmp r1, #0
	beq _0219C034
	mov r1, #2
	b _0219C036
_0219C034:
	mov r1, #1
_0219C036:
	cmp r0, #0x64
	bne _0219C040
	lsl r0, r1, #1
	add r0, r1, r0
	bx lr
_0219C040:
	cmp r0, #0x4f
	bls _0219C046
	lsl r1, r1, #1
_0219C046:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C02C

	thumb_func_start ovy179_219c04c
ovy179_219c04c: ; 0x0219C04C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r7, #0x69
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	mov r6, #1
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200AFBC
	str r0, [sp, #0x24]
	ldr r0, [r5, r7]
	ldr r4, [r0, #8]
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	bl sub_02008BD0
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	bl sub_0200B0C0
	cmp r0, #0
	bne _0219C0CA
	ldr r0, [r5, r7]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219C0CA
	bl sub_02016AD8
	bl sub_02017354
	mov r1, #0x86
	mov r2, #0x3c
	add r6, r0, #0
	bl sub_02008538
	ldr r1, _0219C140 ; =0x000003E7
	cmp r0, r1
	bne _0219C0A8
	b _0219C0C8
_0219C0A8:
	sub r2, r7, #4
	ldr r2, [r5, r2]
	sub r0, r1, r0
	cmp r0, r2
	bhs _0219C0B4
	add r2, r0, #0
_0219C0B4:
	lsl r2, r2, #0x10
	add r0, r6, #0
	mov r1, #0x86
	lsr r2, r2, #0x10
	mov r3, #0x3c
	bl sub_02008268
	mov r6, #0
	cmp r0, #0
	bne _0219C0CA
_0219C0C8:
	mov r6, #2
_0219C0CA:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219C120
	ldr r0, [sp, #0x20]
	bl sub_02008B94
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl sub_02008BF0
	mov r7, #1
	cmp r0, #0
	beq _0219C0EC
	mov r7, #0
_0219C0EC:
	ldr r0, [sp, #0x20]
	bl sub_02008BD0
	ldrb r1, [r4, #4]
	mov r2, #0x69
	lsl r3, r7, #0x18
	str r1, [sp]
	ldrb r1, [r4, #5]
	lsl r2, r2, #2
	lsr r3, r3, #0x18
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldrh r0, [r4, #6]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #0x18]
	ldr r2, [r5, r2]
	ldr r0, [sp, #0x24]
	ldrb r2, [r2, #0xc]
	bl sub_0200B184
_0219C120:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219C13A
	bl sub_02016AD8
	bl sub_02017994
	mov r1, #0x71
	bl sub_020095A0
_0219C13A:
	add r0, r6, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C140: .word 0x000003E7
	thumb_func_end ovy179_219c04c
_0219C144:
	.byte 0x21, 0xAD, 0x19, 0x02, 0x39, 0xAF, 0x19, 0x02, 0xF1, 0xAE, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x0C, 0x0B, 0x02, 0x09, 0x0A, 0x02, 0x08, 0x00, 0x01, 0x07, 0x06, 0x02, 0x03
	.byte 0x05, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x03, 0x05, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219C144
