    .include "macros/function.inc"
	.include "overlay178.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy178_219ad20
ovy178_219ad20: ; 0x0219AD20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	mov r1, #0x38
	lsl r2, r0, #0x11
	bl sub_0203A15C
	ldr r6, _0219AF14 ; =0x000008B4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x38
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	blx sub_020787A8
	sub r0, r6, #4
	str r4, [r5, r0]
	add r0, r5, #0
	mov r1, #0x38
	bl ovy178_219b0ac
	add r0, r5, #0
	add r0, #0xbc
	mov r1, #0
	mov r2, #0x38
	bl ovy178_219b4e8
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AD6E
	bl sub_02016B20
_0219AD6E:
	mov r0, #0x1e
	str r0, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r6, #0x38
	add r0, r5, #0
	str r6, [sp, #0xc]
	add r0, #0xcc
	mov r2, #1
	mov r3, #0x12
	bl ovy178_219b5b0
	add r0, r5, #0
	ldr r2, [r5]
	add r0, #0xcc
	lsl r2, r2, #0x10
	ldr r0, [r0]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #6
	mov r7, #0
	bl sub_02024E80
	ldr r4, _0219AF18 ; =0x000007CC
	mov r1, #0x38
	add r0, r5, r4
	bl ovy178_219c650
	add r4, #0xe4
	ldr r3, [r5, r4]
	ldr r0, [r3]
	cmp r0, #0
	str r7, [sp]
	beq _0219ADCC
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	add r1, r5, #0
	ldr r3, [r3, #8]
	add r0, #0xcc
	add r1, #0xbc
	add r2, r7, #0
	bl ovy178_219b7f0
	b _0219ADDC
_0219ADCC:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xcc
	add r1, #0xbc
	add r2, r7, #0
	add r3, r7, #0
	bl ovy178_219b6dc
_0219ADDC:
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0x38
	mov r6, #0x38
	bl ovy178_219b894
	mov r0, #0x14
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, #0x2c
	add r0, r5, r0
	mov r1, #7
	mov r2, #6
	mov r3, #3
	str r6, [sp, #0x14]
	bl ovy178_219b618
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, #0x2c
	add r1, r5, #0
	add r0, r5, r0
	add r1, #0xbc
	mov r2, #7
	bl ovy178_219b740
	mov r2, #1
	lsl r4, r2, #0xc
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
	mov r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, #0x40
	add r0, r5, r0
	mov r1, #2
	mov r2, #8
	mov r3, #0xa
	str r6, [sp, #0x14]
	bl ovy178_219b618
	mov r4, #0x8b
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	add r0, r5, #0
	ldr r1, [r1, #4]
	add r0, #0xe0
	bl ovy178_219bee4
	add r0, r4, #0
	sub r0, #0x9c
	add r0, r5, r0
	bl sub_0219BD98
	mov r0, #0
	str r0, [sp]
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0
	bl ovy178_219c248
	add r0, r5, #0
	bl sub_0219B134
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xbc
	bl sub_0219B5A0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xbc
	bl sub_0219B5A4
	mov r1, #0xd
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	mov r0, #2
	mov r2, #0
	mov r3, #0xe
	str r6, [sp, #0x10]
	bl sub_0219A89C
	mov r1, #0x7b
	lsl r1, r1, #4
	sub r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_02199B8C
	mov r2, #0x22
	ldr r0, _0219AF1C ; =0x04000050
	mov r1, #0x22
	sub r2, #0x2a
	bl sub_02074A88
	ldr r0, _0219AF20 ; =0x0219C6C9
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	sub r4, #0xc
	str r0, [r5, r4]
	ldr r1, _0219AF24 ; =ovy178_219b958
	add r0, r5, #0
	bl sub_0219B93C
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219AF14: .word 0x000008B4
_0219AF18: .word 0x000007CC
_0219AF1C: .word 0x04000050
_0219AF20: .word 0x0219C6C9
_0219AF24: .word ovy178_219b958
	thumb_func_end ovy178_219ad20

	thumb_func_start ovy178_219af28
ovy178_219af28: ; 0x0219AF28
	push {r4, r5, r6, lr}
	ldr r4, _0219AFA4 ; =0x000008A4
	add r5, r3, #0
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_0203A6A8
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219C29C
	ldr r0, _0219AFA8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	sub r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219A980
	add r0, r5, #0
	add r0, #0xe0
	bl ovy178_219bf0c
	add r0, r4, #0
	sub r0, #0xf4
	add r0, r5, r0
	bl sub_0219B8B8
	add r0, r4, #0
	sub r0, #0xd8
	add r0, r5, r0
	bl sub_0219C664
	add r0, r4, #0
	sub r0, #0xb4
	add r0, r5, r0
	bl ovy178_219b688
	sub r4, #0xc8
	add r0, r5, r4
	bl ovy178_219b688
	add r0, r5, #0
	add r0, #0xcc
	bl ovy178_219b688
	add r0, r5, #0
	bl ovy178_219b100
	add r5, #0xbc
	add r0, r5, #0
	bl ovy178_219b56c
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x38
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219AFA4: .word 0x000008A4
_0219AFA8: .word 0x04000050
	thumb_func_end ovy178_219af28

	thumb_func_start ovy178_219afac
ovy178_219afac: ; 0x0219AFAC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #6
	bhi _0219B036
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219AFC4: ; jump table
	.short _0219AFD2 - _0219AFC4 - 2 ; case 0
	.short _0219AFD8 - _0219AFC4 - 2 ; case 1
	.short _0219AFE8 - _0219AFC4 - 2 ; case 2
	.short _0219AFF4 - _0219AFC4 - 2 ; case 3
	.short _0219B016 - _0219AFC4 - 2 ; case 4
	.short _0219B026 - _0219AFC4 - 2 ; case 5
	.short _0219B032 - _0219AFC4 - 2 ; case 6
_0219AFD2:
	mov r0, #1
_0219AFD4:
	str r0, [r5]
	b _0219B036
_0219AFD8:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #2
	b _0219AFD4
_0219AFE8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B036
	mov r0, #3
	b _0219AFD4
_0219AFF4:
	ldr r6, _0219B098 ; =0x00000808
	add r0, r4, #0
	sub r2, r6, #4
	ldr r2, [r4, r2]
	add r1, r4, r6
	blx r2
	add r0, r6, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219B00C
	mov r0, #4
	str r0, [r5]
_0219B00C:
	ldr r0, _0219B09C ; =0x000007CC
	add r0, r4, r0
	bl ovy178_219c670
	b _0219B036
_0219B016:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #5
	b _0219AFD4
_0219B026:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219B036
	mov r0, #6
	b _0219AFD4
_0219B032:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219B036:
	add r0, r4, #0
	add r0, #0xbc
	bl sub_0219B594
	cmp r0, #0
	beq _0219B066
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xcc
	add r1, #0xbc
	bl ovy178_219b6a4
	ldr r5, _0219B0A0 ; =0x000007DC
	add r1, r4, #0
	add r0, r4, r5
	add r1, #0xbc
	bl ovy178_219b6a4
	add r5, #0x14
	add r1, r4, #0
	add r0, r4, r5
	add r1, #0xbc
	bl ovy178_219b6a4
_0219B066:
	add r0, r4, #0
	bl sub_0219B11C
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy178_219c2ac
	ldr r0, _0219B0A4 ; =0x000008AC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0219B086
	ldr r0, _0219B0A8 ; =0x000007AC
	ldr r0, [r4, r0]
	bl sub_0219A9A4
_0219B086:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199B90
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0219B098: .word 0x00000808
_0219B09C: .word 0x000007CC
_0219B0A0: .word 0x000007DC
_0219B0A4: .word 0x000008AC
_0219B0A8: .word 0x000007AC
	thumb_func_end ovy178_219afac

	thumb_func_start ovy178_219b0ac
ovy178_219b0ac: ; 0x0219B0AC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xbc
	add r5, r0, #0
	blx sub_020787A8
	mov r0, #0
	bl sub_02046BE0
	ldr r6, _0219B0F8 ; =0x0219C738
	add r0, r6, #0
	bl sub_02046C40
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	add r0, r5, #4
	add r1, r6, #0
	add r2, r4, #0
	bl ovy178_219b2ec
	add r0, r5, #0
	add r1, r4, #0
	bl ovy178_219b154
	ldr r0, _0219B0FC ; =ovy178_219b140
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	add r5, #0xb8
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B0F8: .word 0x0219C738
_0219B0FC: .word ovy178_219b140
	thumb_func_end ovy178_219b0ac

	thumb_func_start ovy178_219b100
ovy178_219b100: ; 0x0219B100
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0203A6A8
	add r0, r4, #0
	bl ovy178_219b294
	add r0, r4, #4
	bl ovy178_219b464
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy178_219b100

	thumb_func_start sub_0219B11C
sub_0219B11C: ; 0x0219B11C
	ldr r3, _0219B124 ; =sub_0219B4CC
	add r0, r0, #4
	bx r3
	nop
	thumb_func_end sub_0219B11C
_0219B124: .word sub_0219B4CC

	thumb_func_start sub_0219B128
sub_0219B128: ; 0x0219B128
	ldr r3, _0219B130 ; =sub_0219B4DC
	add r0, r0, #4
	bx r3
	nop
	thumb_func_end sub_0219B128
_0219B130: .word sub_0219B4DC

	thumb_func_start sub_0219B134
sub_0219B134: ; 0x0219B134
	ldr r3, _0219B13C ; =sub_0219B4E4
	add r0, r0, #4
	bx r3
	nop
	thumb_func_end sub_0219B134
_0219B13C: .word sub_0219B4E4

	thumb_func_start ovy178_219b140
ovy178_219b140: ; 0x0219B140
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219B2E4
	add r0, r4, #4
	bl sub_0219B4D4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy178_219b140

	thumb_func_start ovy178_219b154
ovy178_219b154: ; 0x0219B154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_020444A4
	add r0, r6, #0
	bl sub_02048080
	ldr r0, _0219B284 ; =0x0219C6F0
	bl sub_02044710
	ldr r7, _0219B288 ; =0x0219C71C
	mov r4, #0
_0219B172:
	ldr r1, _0219B28C ; =0x0219C774
	lsl r3, r4, #5
	add r1, r1, r3
	lsl r2, r4, #2
	ldr r5, [r7, r2]
	ldr r3, _0219B290 ; =0x0219C700
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
	cmp r4, #7
	blt _0219B172
	mov r0, #0x5d
	add r1, r6, #0
	bl sub_0204AA30
	mov r5, #0
	str r5, [sp]
	str r6, [sp, #4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
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
	mov r1, #0x25
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #4
	mov r3, #0
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
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x1a
	mov r0, #0x17
	mov r1, #5
	add r2, r5, #0
	lsl r3, r3, #4
	str r6, [sp, #4]
	bl sub_0204B0B8
	mov r0, #2
	add r1, r5, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_02045118
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B284: .word 0x0219C6F0
_0219B288: .word 0x0219C71C
_0219B28C: .word 0x0219C774
_0219B290: .word 0x0219C700
	thumb_func_end ovy178_219b154

	thumb_func_start ovy178_219b294
ovy178_219b294: ; 0x0219B294
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	mov r5, #0
	bl sub_02045264
	ldr r2, [r4]
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
	bl sub_02045264
	ldr r4, _0219B2E0 ; =0x0219C71C
_0219B2C2:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blt _0219B2C2
	bl sub_020480A8
	bl sub_02044528
	pop {r3, r4, r5, pc}
	nop
_0219B2E0: .word 0x0219C71C
	thumb_func_end ovy178_219b294

	thumb_func_start sub_0219B2E4
sub_0219B2E4: ; 0x0219B2E4
	ldr r3, _0219B2E8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219B2E8: .word sub_02045A5C
	thumb_func_end sub_0219B2E4

	thumb_func_start ovy178_219b2ec
ovy178_219b2ec: ; 0x0219B2EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0xb4
	add r5, r0, #0
	mov r6, #0
	blx sub_020787A8
	ldr r0, _0219B460 ; =0x02093F08
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
	mov r1, #0x23
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #4]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0x20
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	mov r3, #0xe0
	bl sub_0204BBB8
	str r0, [r5, #0x1c]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x20]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #9
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x24]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0x23
	mov r2, #1
	mov r3, #0
	bl sub_0204BBA0
	str r0, [r5, #0x10]
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0x20
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	blx sub_020787A8
_0219B3D4:
	lsl r0, r6, #2
	add r4, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_0204C040
	str r0, [r4, #0x28]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0204C468
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0204C488
	add r6, r6, #1
	cmp r6, #0x1e
	blt _0219B3D4
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r4, #0x1f
_0219B420:
	add r1, r4, #0
	sub r1, #0x1e
	add r0, sp, #0xc
	strh r1, [r0, #4]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	bl sub_0204C040
	str r0, [r6, #0x28]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r6, #0x28]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
	add r4, r4, #1
	cmp r4, #0x22
	blt _0219B420
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219B460: .word 0x02093F08
	thumb_func_end ovy178_219b2ec

	thumb_func_start ovy178_219b464
ovy178_219b464: ; 0x0219B464
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B46A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0219B478
	bl sub_0204C108
_0219B478:
	add r4, r4, #1
	cmp r4, #0x23
	blt _0219B46A
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5, #0x10]
	bl sub_0204BCD0
	ldr r0, [r5, #0x14]
	bl sub_0204B98C
	ldr r0, [r5, #0x18]
	bl sub_0204BE64
	ldr r0, [r5, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x20]
	bl sub_0204B98C
	ldr r0, [r5, #0x24]
	bl sub_0204BE64
	ldr r0, [r5]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb4
	blx sub_020787A8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy178_219b464

	thumb_func_start sub_0219B4CC
sub_0219B4CC: ; 0x0219B4CC
	ldr r3, _0219B4D0 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B4D0: .word sub_0204B794
	thumb_func_end sub_0219B4CC

	thumb_func_start sub_0219B4D4
sub_0219B4D4: ; 0x0219B4D4
	ldr r3, _0219B4D8 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219B4D8: .word sub_0204B7C8
	thumb_func_end sub_0219B4D4

	thumb_func_start sub_0219B4DC
sub_0219B4DC: ; 0x0219B4DC
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0219B4DC

	thumb_func_start sub_0219B4E4
sub_0219B4E4: ; 0x0219B4E4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B4E4

	thumb_func_start ovy178_219b4e8
ovy178_219b4e8: ; 0x0219B4E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r7, #0
	blx sub_020787A8
	bl sub_020232D0
	cmp r6, #0
	beq _0219B50A
	cmp r6, #1
	beq _0219B512
	b _0219B522
_0219B50A:
	str r4, [sp]
	mov r0, #0x17
	add r1, r7, #0
	b _0219B518
_0219B512:
	str r4, [sp]
	mov r0, #0x17
	mov r1, #1
_0219B518:
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02022D58
	str r0, [r5]
_0219B522:
	add r0, r4, #0
	bl sub_02021998
	str r0, [r5, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3d
	add r3, r4, #0
	bl sub_0204875C
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_020241D4
	str r0, [r5, #0xc]
	mov r5, #0x20
	mov r6, #7
	str r5, [sp]
	lsl r6, r6, #6
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	bl sub_0204B0B8
	str r5, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy178_219b4e8

	thumb_func_start ovy178_219b56c
ovy178_219b56c: ; 0x0219B56C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02024274
	ldr r0, [r4, #4]
	bl sub_020487D4
	ldr r0, [r4, #8]
	bl sub_02021A18
	ldr r0, [r4]
	bl sub_02022DA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
	pop {r4, pc}
	thumb_func_end ovy178_219b56c

	thumb_func_start sub_0219B594
sub_0219B594: ; 0x0219B594
	ldr r0, [r0, #8]
	ldr r3, _0219B59C ; =sub_02021A3C
	bx r3
	nop
_0219B59C: .word sub_02021A3C
	thumb_func_end sub_0219B594

	thumb_func_start sub_0219B5A0
sub_0219B5A0: ; 0x0219B5A0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B5A0

	thumb_func_start sub_0219B5A4
sub_0219B5A4: ; 0x0219B5A4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219B5A4

	thumb_func_start sub_0219B5A8
sub_0219B5A8: ; 0x0219B5A8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219B5A8

	thumb_func_start sub_0219B5AC
sub_0219B5AC: ; 0x0219B5AC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219B5AC

	thumb_func_start ovy178_219b5b0
ovy178_219b5b0: ; 0x0219B5B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx sub_020787A8
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
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #8]
	add r0, r5, #0
	bl ovy178_219b878
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
	thumb_func_end ovy178_219b5b0

	thumb_func_start ovy178_219b618
ovy178_219b618: ; 0x0219B618
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx sub_020787A8
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
	thumb_func_end ovy178_219b618

	thumb_func_start ovy178_219b688
ovy178_219b688: ; 0x0219B688
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02048564
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx sub_020787A8
	pop {r4, pc}
	thumb_func_end ovy178_219b688

	thumb_func_start ovy178_219b6a4
ovy178_219b6a4: ; 0x0219B6A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #8]
	ldr r4, [r1, #8]
	cmp r0, #0
	beq _0219B6CC
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B6CC
	ldr r0, [r5, #4]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #8]
_0219B6CC:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0219B6D6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219B6D6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy178_219b6a4

	thumb_func_start ovy178_219b6dc
ovy178_219b6dc: ; 0x0219B6DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0219B5A8
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0219B5A4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0219B5A0
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
	bl sub_02048838
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
	thumb_func_end ovy178_219b6dc

	thumb_func_start ovy178_219b740
ovy178_219b740: ; 0x0219B740
	push {r3, lr}
	ldr r3, _0219B74C ; =0x00003DC4
	bl ovy178_219b750
	pop {r3, pc}
	nop
_0219B74C: .word 0x00003DC4
	thumb_func_end ovy178_219b740

	thumb_func_start ovy178_219b750
ovy178_219b750: ; 0x0219B750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	str r3, [sp, #0xc]
	bl sub_0219B5A8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219B5A4
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0219B5A0
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_02048838
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
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r3, r4, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy178_219b750

	thumb_func_start ovy178_219b7f0
ovy178_219b7f0: ; 0x0219B7F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	add r0, r4, #0
	bl sub_0219B5AC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219B5A8
	add r6, #0xc
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_020245A8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_0204898C
	add r6, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_02024920
	add r0, r6, #0
	bl sub_02048564
	add r0, r4, #0
	bl sub_0219B5A4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B5A0
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r4, sp, #0x28
	mov r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r6, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy178_219b7f0

	thumb_func_start ovy178_219b878
ovy178_219b878: ; 0x0219B878
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_020484F4
	ldrh r1, [r4, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4]
	bl sub_02048244
	pop {r4, pc}
	thumb_func_end ovy178_219b878

	thumb_func_start ovy178_219b894
ovy178_219b894: ; 0x0219B894
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	mov r4, #0
	blx sub_020787A8
_0219B8A4:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1f
	bl sub_0219B128
	add r4, r4, #1
	str r0, [r5]
	cmp r4, #3
	blt _0219B8A4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy178_219b894

	thumb_func_start sub_0219B8B8
sub_0219B8B8: ; 0x0219B8B8
	ldr r3, _0219B8C0 ; =sub_020787A8
	mov r1, #0
	mov r2, #0x1c
	bx r3
	.align 2, 0
_0219B8C0: .word sub_020787A8
	thumb_func_end sub_0219B8B8

	thumb_func_start ovy178_219b8c4
ovy178_219b8c4: ; 0x0219B8C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0219B920
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0219B8F2
	ldr r0, _0219B924 ; =0x0000066A
	bl sub_02006254
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C124
	ldr r2, [r4, #0x10]
	mov r1, #4
	sub r1, r1, r2
	lsl r1, r1, #0x10
	ldr r0, [r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
_0219B8F2:
	ldr r1, [r4, #0xc]
	add r0, r1, #1
	str r0, [r4, #0xc]
	cmp r1, #0x3c
	blo _0219B906
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
_0219B906:
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bne _0219B920
	ldr r0, _0219B928 ; =0x0000066B
	bl sub_02006254
	mov r0, #1
	str r0, [r4, #0x18]
	mov r1, #0
	ldr r0, [r4]
	str r1, [r4, #0x14]
	bl sub_0204C124
_0219B920:
	pop {r4, pc}
	nop
_0219B924: .word 0x0000066A
_0219B928: .word 0x0000066B
	thumb_func_end ovy178_219b8c4

	thumb_func_start sub_0219B92C
sub_0219B92C: ; 0x0219B92C
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219B92C

	thumb_func_start sub_0219B938
sub_0219B938: ; 0x0219B938
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219B938

	thumb_func_start sub_0219B93C
sub_0219B93C: ; 0x0219B93C
	ldr r2, _0219B948 ; =0x00000804
	mov r3, #0
	str r1, [r0, r2]
	add r1, r2, #4
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
_0219B948: .word 0x00000804
	thumb_func_end sub_0219B93C

	thumb_func_start sub_0219B94C
sub_0219B94C: ; 0x0219B94C
	ldr r1, _0219B954 ; =0x0000080C
	mov r2, #1
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_0219B954: .word 0x0000080C
	thumb_func_end sub_0219B94C

	thumb_func_start ovy178_219b958
ovy178_219b958: ; 0x0219B958
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0219B96E
	cmp r0, #1
	beq _0219B97A
	cmp r0, #3
	beq _0219B986
	b _0219B998
_0219B96E:
	ldr r0, _0219B9D0 ; =0x0000080A
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #1
_0219B976:
	strh r0, [r4]
	b _0219B998
_0219B97A:
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	b _0219B976
_0219B986:
	mov r0, #0x7b
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0219B92C
	ldr r1, _0219B9D4 ; =ovy178_219b9e0
	add r0, r5, #0
	bl sub_0219B93C
_0219B998:
	ldr r0, _0219B9D8 ; =0x000007AC
	ldr r0, [r5, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219B9B4
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219B94C
_0219B9B4:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219B9CC
	ldr r1, _0219B9DC ; =ovy178_219bce8
	add r0, r5, #0
	bl sub_0219B93C
_0219B9CC:
	pop {r3, r4, r5, pc}
	nop
_0219B9D0: .word 0x0000080A
_0219B9D4: .word ovy178_219b9e0
_0219B9D8: .word 0x000007AC
_0219B9DC: .word ovy178_219bce8
	thumb_func_end ovy178_219b958

	thumb_func_start ovy178_219b9e0
ovy178_219b9e0: ; 0x0219B9E0
	push {r3, r4, r5, lr}
	mov r4, #0x7b
	add r5, r0, #0
	lsl r4, r4, #4
	add r0, r5, r4
	bl ovy178_219b8c4
	add r0, r5, r4
	bl sub_0219B938
	cmp r0, #0
	beq _0219BA1A
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf8
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x64
	add r0, r5, r0
	bl ovy178_219bda4
	add r4, #0x1c
	add r0, r5, r4
	bl sub_0219C6C0
	ldr r1, _0219BA50 ; =ovy178_219ba5c
	add r0, r5, #0
	bl sub_0219B93C
_0219BA1A:
	ldr r0, _0219BA54 ; =0x000007AC
	ldr r0, [r5, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BA36
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219B94C
_0219BA36:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BA4E
	ldr r1, _0219BA58 ; =ovy178_219bce8
	add r0, r5, #0
	bl sub_0219B93C
_0219BA4E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219BA50: .word ovy178_219ba5c
_0219BA54: .word 0x000007AC
_0219BA58: .word ovy178_219bce8
	thumb_func_end ovy178_219b9e0

	thumb_func_start ovy178_219ba5c
ovy178_219ba5c: ; 0x0219BA5C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _0219BB30 ; =0x00000814
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x68
	ldr r0, [r5, r0]
	bl sub_0219AA3C
	cmp r0, #0
	bne _0219BAB0
	add r6, sp, #4
	add r0, r6, #0
	bl ovy178_219c00c
	cmp r0, #0
	beq _0219BAB0
	add r0, r5, r4
	bl ovy178_219be60
	add r2, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ovy178_219c3fc
	add r0, r4, #0
	add r0, #0x8c
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _0219BAAA
	add r0, r5, r4
	bl ovy178_219bde4
_0219BAAA:
	ldr r0, _0219BB34 ; =0x000008AC
	mov r1, #1
	str r1, [r5, r0]
_0219BAB0:
	add r0, r5, r4
	bl sub_0219BDD4
	cmp r0, #0
	beq _0219BAF0
	ldr r6, _0219BB38 ; =0x0000089C
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _0219BADE
	add r0, r5, #0
	add r1, r5, #0
	mov r3, #0
	add r0, #0xcc
	add r1, #0xbc
	mov r2, #1
	str r3, [sp]
	mov r4, #1
	bl ovy178_219b6dc
	ldr r0, _0219BB3C ; =0x00000654
	bl sub_02006254
	str r4, [r5, r6]
_0219BADE:
	ldr r1, _0219BB38 ; =0x0000089C
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0219BAF0
	add r1, r1, #4
	add r0, r5, #0
	add r1, r5, r1
	bl ovy178_219bb44
_0219BAF0:
	ldr r4, _0219BB38 ; =0x0000089C
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219BB2C
	add r0, r4, #0
	sub r0, #0xf0
	ldr r0, [r5, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BB14
	add r4, #0x14
	ldr r0, [r5, r4]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219B94C
_0219BB14:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BB2C
	ldr r1, _0219BB40 ; =ovy178_219bce8
	add r0, r5, #0
	bl sub_0219B93C
_0219BB2C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219BB30: .word 0x00000814
_0219BB34: .word 0x000008AC
_0219BB38: .word 0x0000089C
_0219BB3C: .word 0x00000654
_0219BB40: .word ovy178_219bce8
	thumb_func_end ovy178_219ba5c

	thumb_func_start ovy178_219bb44
ovy178_219bb44: ; 0x0219BB44
	push {r4, r5, r6, lr}
	sub sp, #0x88
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #5
	bhs _0219BB7A
	ldr r0, _0219BCD0 ; =0x000007AC
	ldr r0, [r4, r0]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BB7A
	mov r5, #0x8b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	ldr r0, [r0, #4]
	bl sub_02199B7C
	ldr r0, [r4, r5]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl sub_0219B94C
	add sp, #0x88
	pop {r4, r5, r6, pc}
_0219BB7A:
	ldrh r0, [r5]
	cmp r0, #7
	bls _0219BB82
	b _0219BC96
_0219BB82:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219BB8E: ; jump table
	.short _0219BB9E - _0219BB8E - 2 ; case 0
	.short _0219BBB6 - _0219BB8E - 2 ; case 1
	.short _0219BBCE - _0219BB8E - 2 ; case 2
	.short _0219BBE2 - _0219BB8E - 2 ; case 3
	.short _0219BC00 - _0219BB8E - 2 ; case 4
	.short _0219BC20 - _0219BB8E - 2 ; case 5
	.short _0219BC44 - _0219BB8E - 2 ; case 6
	.short _0219BC8C - _0219BB8E - 2 ; case 7
_0219BB9E:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219BC96
	mov r0, #1
_0219BBB2:
	strh r0, [r5]
	b _0219BC96
_0219BBB6:
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0
	add r0, #0xcc
	add r1, #0xbc
	mov r2, #2
	str r3, [sp]
	mov r6, #2
	bl ovy178_219b6dc
	strh r6, [r5]
	b _0219BC96
_0219BBCE:
	ldr r1, _0219BCD4 ; =0x00000814
	add r0, r4, #0
	add r0, #0xe0
	add r1, r4, r1
	bl ovy178_219bf28
	cmp r0, #0
	beq _0219BC96
	mov r0, #3
	b _0219BBB2
_0219BBE2:
	mov r6, #0x8b
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_02199B8C
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199BE4
	cmp r0, #0
	beq _0219BC96
	mov r0, #4
	b _0219BBB2
_0219BC00:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219BC96
	ldr r0, _0219BCD0 ; =0x000007AC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0219AA60
	mov r0, #5
	b _0219BBB2
_0219BC20:
	ldr r0, _0219BCD8 ; =0x0000080A
	ldrh r0, [r4, r0]
	cmp r0, #0x3c
	blo _0219BC96
	ldr r0, _0219BCDC ; =0x0000064B
	bl sub_02006254
	add r0, r4, #0
	add r1, r4, #0
	mov r3, #0
	add r0, #0xcc
	add r1, #0xbc
	mov r2, #3
	str r3, [sp]
	bl ovy178_219b6dc
	mov r0, #6
	b _0219BBB2
_0219BC44:
	ldr r6, _0219BCE0 ; =0x000008A2
	ldrh r1, [r4, r6]
	add r0, r1, #1
	strh r0, [r4, r6]
	cmp r1, #0x1e
	blo _0219BCCA
	add r0, r4, #0
	bl ovy178_219c040
	add r1, r6, #0
	add r1, #0xe
	ldr r1, [r4, r1]
	strb r0, [r1, #0x10]
	add r0, r4, #0
	add r0, #0xe0
	add r1, sp, #4
	bl ovy178_219bfb4
	sub r6, #0x14
	add r0, sp, #0x44
	ldrh r1, [r4, r6]
	ldrh r0, [r0, #0x3a]
	sub r2, r1, r0
	bpl _0219BC76
	neg r2, r2
_0219BC76:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add sp, #0x88
	str r2, [r1, #0x14]
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0xc]
	mov r0, #7
	strh r0, [r5]
	pop {r4, r5, r6, pc}
_0219BC8C:
	add r0, r4, #0
	bl sub_0219B94C
	add sp, #0x88
	pop {r4, r5, r6, pc}
_0219BC96:
	ldrh r0, [r5]
	cmp r0, #1
	blo _0219BCAC
	cmp r0, #5
	bhi _0219BCAC
	ldr r0, _0219BCD8 ; =0x0000080A
	ldrh r1, [r4, r0]
	cmp r1, #0x3c
	bhi _0219BCAC
	add r1, r1, #1
	strh r1, [r4, r0]
_0219BCAC:
	ldrh r0, [r5]
	cmp r0, #3
	bhs _0219BCCA
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BCCA
	ldr r1, _0219BCE4 ; =ovy178_219bce8
	add r0, r4, #0
	bl sub_0219B93C
_0219BCCA:
	add sp, #0x88
	pop {r4, r5, r6, pc}
	nop
_0219BCD0: .word 0x000007AC
_0219BCD4: .word 0x00000814
_0219BCD8: .word 0x0000080A
_0219BCDC: .word 0x0000064B
_0219BCE0: .word 0x000008A2
_0219BCE4: .word ovy178_219bce8
	thumb_func_end ovy178_219bb44

	thumb_func_start ovy178_219bce8
ovy178_219bce8: ; 0x0219BCE8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldrh r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _0219BD92
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219BD02: ; jump table
	.short _0219BD0C - _0219BD02 - 2 ; case 0
	.short _0219BD46 - _0219BD02 - 2 ; case 1
	.short _0219BD5C - _0219BD02 - 2 ; case 2
	.short _0219BD74 - _0219BD02 - 2 ; case 3
	.short _0219BD8E - _0219BD02 - 2 ; case 4
_0219BD0C:
	mov r6, #0x8b
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	ble _0219BD32
	ldr r0, [r4, r6]
	mov r1, #0
	strb r1, [r0, #0x10]
	ldr r0, [r4, r6]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl sub_0219B94C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219BD32:
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	bge _0219BD92
	mov r0, #1
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219BD46:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r2, #0
	strb r2, [r1, #0x10]
	ldr r0, [r4, r0]
	mov r1, #2
	str r1, [r0, #0xc]
	add sp, #4
	strh r1, [r5]
	pop {r3, r4, r5, r6, pc}
_0219BD5C:
	add r4, #0xbc
	mov r3, #0
	add r0, #0xcc
	add r1, r4, #0
	mov r2, #4
	str r3, [sp]
	bl ovy178_219b6dc
	mov r0, #3
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219BD74:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219BD92
	mov r0, #4
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219BD8E:
	bl sub_0219B94C
_0219BD92:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy178_219bce8

	thumb_func_start sub_0219BD98
sub_0219BD98: ; 0x0219BD98
	ldr r3, _0219BDA0 ; =sub_020787A8
	mov r1, #0
	mov r2, #0x84
	bx r3
	.align 2, 0
_0219BDA0: .word sub_020787A8
	thumb_func_end sub_0219BD98

	thumb_func_start ovy178_219bda4
ovy178_219bda4: ; 0x0219BDA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207BAC0
	cmp r0, #0
	beq _0219BDB4
	bl sub_0207BA7C
_0219BDB4:
	bl sub_0207BB0C
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _0219BDD0 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	blx sub_0208D5C4
	str r0, [r4, #0x7c]
	add r4, #0x80
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_0219BDD0: .word 0x000082EA
	thumb_func_end ovy178_219bda4

	thumb_func_start sub_0219BDD4
sub_0219BDD4: ; 0x0219BDD4
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0xa
	blo _0219BDE0
	mov r0, #1
	bx lr
_0219BDE0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219BDD4

	thumb_func_start ovy178_219bde4
ovy178_219bde4: ; 0x0219BDE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0xa
	bhs _0219BE44
	bl sub_0207BB0C
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _0219BE5C ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	mov r4, #0
	blx sub_0208D5C4
	ldr r2, [r5, #0x7c]
	sub r1, r0, r2
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	lsl r0, r0, #3
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _0219BE26
	lsl r0, r0, #3
	add r0, r5, r0
	str r4, [r0, #4]
	b _0219BE36
_0219BE26:
	lsl r2, r0, #3
	sub r0, r0, #1
	lsl r0, r0, #3
	ldr r1, [r5, r2]
	ldr r0, [r5, r0]
	sub r1, r1, r0
	add r0, r5, r2
	str r1, [r0, #4]
_0219BE36:
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	add r5, #0x78
	add r0, r0, #1
	strh r0, [r5]
	pop {r3, r4, r5, pc}
_0219BE44:
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x63
	bhs _0219BE5A
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	add r5, #0x7a
	add r0, r0, #1
	strh r0, [r5]
_0219BE5A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219BE5C: .word 0x000082EA
	thumb_func_end ovy178_219bde4

	thumb_func_start ovy178_219be60
ovy178_219be60: ; 0x0219BE60
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r3, [r1]
	cmp r3, #2
	bhs _0219BE72
_0219BE6C:
	ldr r0, _0219BED4 ; =0x0000064C
	mov r4, #3
	b _0219BECA
_0219BE72:
	sub r1, r3, #1
	lsl r1, r1, #3
	add r1, r0, r1
	ldr r2, [r1, #4]
	sub r1, r3, #2
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	sub r1, r2, r0
	bpl _0219BE8A
	neg r0, r1
	b _0219BE8C
_0219BE8A:
	add r0, r1, #0
_0219BE8C:
	cmp r0, #0
	blt _0219BE9E
	neg r0, r1
	cmp r1, #0
	blt _0219BE98
	add r0, r1, #0
_0219BE98:
	cmp r0, #0x32
	bge _0219BE9E
	b _0219BE6C
_0219BE9E:
	cmp r1, #0
	bge _0219BEB8
	bge _0219BEA6
	neg r1, r1
_0219BEA6:
	cmp r1, #0xc8
	bge _0219BEB0
	ldr r0, _0219BED8 ; =0x0000064F
	mov r4, #1
	b _0219BECA
_0219BEB0:
	mov r0, #0x65
	lsl r0, r0, #4
	mov r4, #0
	b _0219BECA
_0219BEB8:
	bge _0219BEBC
	neg r1, r1
_0219BEBC:
	cmp r1, #0xc8
	bge _0219BEC6
	ldr r0, _0219BEDC ; =0x0000064D
	mov r4, #5
	b _0219BECA
_0219BEC6:
	ldr r0, _0219BEE0 ; =0x0000064E
	mov r4, #6
_0219BECA:
	bl sub_02006254
	add r0, r4, #0
	pop {r4, pc}
	nop
_0219BED4: .word 0x0000064C
_0219BED8: .word 0x0000064F
_0219BEDC: .word 0x0000064D
_0219BEE0: .word 0x0000064E
	thumb_func_end ovy178_219be60

	thumb_func_start ovy178_219bee4
ovy178_219bee4: ; 0x0219BEE4
	push {r3, r4, r5, lr}
	mov r2, #0x66
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	blx sub_020787A8
	mov r1, #0xf
	str r4, [r5]
	ldr r2, _0219BF08 ; =0x0219C6E8
	add r0, r4, #0
	lsl r1, r1, #8
	mov r3, #1
	str r5, [sp]
	bl sub_02199CB0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219BF08: .word 0x0219C6E8
	thumb_func_end ovy178_219bee4

	thumb_func_start ovy178_219bf0c
ovy178_219bf0c: ; 0x0219BF0C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xf
	ldr r0, [r4]
	lsl r1, r1, #8
	bl sub_02199CC8
	mov r2, #0x66
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	blx sub_020787A8
	pop {r4, pc}
	thumb_func_end ovy178_219bf0c

	thumb_func_start ovy178_219bf28
ovy178_219bf28: ; 0x0219BF28
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r1, #0
	cmp r0, #0
	beq _0219BF40
	cmp r0, #1
	beq _0219BF5A
	cmp r0, #2
	beq _0219BF96
	b _0219BFAC
_0219BF40:
	mov r0, #0x11
	lsl r0, r0, #4
	add r5, r4, r0
	mov r3, #0x10
_0219BF48:
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0219BF48
	ldr r0, [r2]
	str r0, [r5]
	mov r0, #1
_0219BF56:
	str r0, [r4, #4]
	b _0219BFAC
_0219BF5A:
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	bne _0219BF6A
	mov r0, #1
	b _0219BF6C
_0219BF6A:
	mov r0, #0
_0219BF6C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	mov r3, #0x84
	str r0, [sp, #0xc]
	mov r1, #0xf
	add r3, #0x8c
	ldr r0, [r4]
	lsl r1, r1, #8
	mov r2, #0x84
	add r3, r4, r3
	bl sub_02199C78
	cmp r0, #0
	beq _0219BFAC
	mov r0, #2
	b _0219BF56
_0219BF96:
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0219BFAC
	mov r1, #0
	str r1, [r4, r0]
	add sp, #0x10
	str r1, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219BFAC:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy178_219bf28

	thumb_func_start ovy178_219bfb4
ovy178_219bfb4: ; 0x0219BFB4
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #8
	mov r2, #0x10
_0219BFBE:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0219BFBE
	ldr r0, [r3]
	str r0, [r4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy178_219bfb4

	thumb_func_start ovy178_219bfd0
ovy178_219bfd0: ; 0x0219BFD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219BFF0
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219BFF0
	mov r0, #0x65
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0219BFF0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy178_219bfd0

	thumb_func_start ovy178_219bff4
ovy178_219bff4: ; 0x0219BFF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r5, r0
	bne _0219C006
	add r4, #0x8c
	b _0219C008
_0219C006:
	add r4, #8
_0219C008:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy178_219bff4

	thumb_func_start ovy178_219c00c
ovy178_219c00c: ; 0x0219C00C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219C03A
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	cmp r1, r0
	bhi _0219C03A
	ldr r0, [sp]
	cmp r0, #0xa8
	bhi _0219C03A
	str r1, [r4]
	ldr r0, [sp]
	add sp, #8
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_0219C03A:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy178_219c00c

	thumb_func_start ovy178_219c040
ovy178_219c040: ; 0x0219C040
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10c
	add r2, r0, #0
	ldr r0, _0219C188 ; =0x00000814
	add r4, sp, #0x88
	add r5, r2, r0
	mov r3, #0x10
_0219C04E:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0219C04E
	ldr r0, [r5]
	add r2, #0xe0
	str r0, [r4]
	add r4, sp, #4
	add r0, r2, #0
	add r1, r4, #0
	bl ovy178_219bfb4
	add r0, sp, #0xc8
	ldrh r0, [r0, #0x38]
	sub r0, r0, #1
	lsl r1, r0, #3
	add r0, sp, #0x88
	ldr r1, [r0, r1]
	ldr r0, [sp, #0x88]
	sub r0, r1, r0
	add r1, sp, #0x44
	ldrh r1, [r1, #0x38]
	sub r1, r1, #1
	lsl r1, r1, #3
	ldr r2, [r4, r1]
	ldr r1, [sp, #4]
	sub r1, r2, r1
	sub r0, r0, r1
	bpl _0219C08A
	neg r0, r0
_0219C08A:
	cmp r0, #0
	bne _0219C092
	mov r0, #0x64
	b _0219C0EC
_0219C092:
	mov r1, #0x7d
	lsl r1, r1, #2
	cmp r0, r1
	bhs _0219C09E
	mov r0, #0x5a
	b _0219C0EC
_0219C09E:
	lsl r1, r1, #1
	cmp r0, r1
	bhs _0219C0A8
	mov r0, #0x50
	b _0219C0EC
_0219C0A8:
	ldr r1, _0219C18C ; =0x00000BB8
	cmp r0, r1
	bhs _0219C0B2
	mov r0, #0x46
	b _0219C0EC
_0219C0B2:
	ldr r3, _0219C190 ; =0x00001388
	cmp r0, r3
	bhs _0219C0BC
	mov r0, #0x3c
	b _0219C0EC
_0219C0BC:
	lsl r1, r3, #1
	cmp r0, r1
	bhs _0219C0C6
	mov r0, #0x32
	b _0219C0EC
_0219C0C6:
	ldr r2, _0219C194 ; =0x00003A98
	cmp r0, r2
	bhs _0219C0D0
	mov r0, #0x28
	b _0219C0EC
_0219C0D0:
	lsl r1, r3, #2
	cmp r0, r1
	bhs _0219C0DA
	mov r0, #0x1e
	b _0219C0EC
_0219C0DA:
	ldr r1, _0219C198 ; =0x000061A8
	cmp r0, r1
	bhs _0219C0E4
	mov r0, #0x14
	b _0219C0EC
_0219C0E4:
	lsl r1, r2, #1
	cmp r0, r1
	bhs _0219C0EE
	mov r0, #0xa
_0219C0EC:
	str r0, [sp]
_0219C0EE:
	mov r2, #0x4b
	mov r1, #0x4b
	lsl r2, r2, #2
	lsl r1, r1, #2
	mov r0, #0x4b
	mov r5, #0
	mov r6, #1
	add r2, #0x64
	add r1, #0xc8
	lsl r7, r0, #3
_0219C102:
	lsl r4, r6, #3
	add r0, sp, #0x88
	add r0, r0, r4
	ldr r3, [r0, #4]
	add r0, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #4]
	sub r0, r3, r0
	bpl _0219C116
	neg r0, r0
_0219C116:
	cmp r0, #0
	bne _0219C11E
	add r5, #0x64
	b _0219C16E
_0219C11E:
	cmp r0, #0x32
	bhs _0219C126
	add r5, #0x5a
	b _0219C16E
_0219C126:
	cmp r0, #0x64
	bhs _0219C12E
	add r5, #0x50
	b _0219C16E
_0219C12E:
	cmp r0, #0xc8
	bhs _0219C136
	add r5, #0x46
	b _0219C16E
_0219C136:
	mov r3, #0x4b
	lsl r3, r3, #2
	cmp r0, r3
	bhs _0219C142
	add r5, #0x3c
	b _0219C16E
_0219C142:
	cmp r0, r2
	bhs _0219C14A
	add r5, #0x32
	b _0219C16E
_0219C14A:
	cmp r0, r1
	bhs _0219C152
	add r5, #0x28
	b _0219C16E
_0219C152:
	cmp r0, r7
	bhs _0219C15A
	add r5, #0x1e
	b _0219C16E
_0219C15A:
	mov r3, #0xfa
	lsl r3, r3, #2
	cmp r0, r3
	bhs _0219C166
	add r5, #0x14
	b _0219C16E
_0219C166:
	ldr r3, _0219C194 ; =0x00003A98
	cmp r0, r3
	bhs _0219C16E
	add r5, #0xa
_0219C16E:
	add r6, r6, #1
	cmp r6, #0xa
	blt _0219C102
	add r0, r5, #0
	mov r1, #9
	blx sub_0208D868
	ldr r1, [sp]
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	add sp, #0x10c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C188: .word 0x00000814
_0219C18C: .word 0x00000BB8
_0219C190: .word 0x00001388
_0219C194: .word 0x00003A98
_0219C198: .word 0x000061A8
	thumb_func_end ovy178_219c040

	thumb_func_start ovy178_219c19c
ovy178_219c19c: ; 0x0219C19C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, sp, #0x18
	mov ip, r3
	mov r3, #0x3e
	asr r2, r2, #4
	lsl r2, r2, #1
	ldrh r1, [r1, #4]
	lsl r3, r3, #4
	add r2, r2, #1
	and r3, r1
	lsl r3, r3, #0x13
	lsr r6, r3, #0x18
	add r3, sp, #0x18
	ldrh r4, [r3, #8]
	lsl r3, r2, #1
	ldr r2, _0219C244 ; =0x020946BC
	mov r5, #0x1f
	ldrsh r3, [r2, r3]
	mov r2, #1
	lsl r2, r2, #0xc
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r1
	lsl r5, r5, #0xa
	and r1, r5
	mov r5, #0x1f
	lsl r5, r5, #0xa
	and r5, r4
	asr r1, r1, #0xa
	asr r5, r5, #0xa
	lsl r1, r1, #0x18
	lsl r5, r5, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r3
	asr r5, r5, #0xc
	add r1, r1, r5
	mov r5, #0x1f
	and r5, r4
	lsl r5, r5, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r2
	mul r5, r3
	asr r5, r5, #0xc
	add r2, r2, r5
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	mov r2, #0x3e
	lsl r2, r2, #4
	and r2, r4
	lsl r2, r2, #0x13
	lsr r2, r2, #0x18
	sub r2, r2, r6
	mul r2, r3
	asr r2, r2, #0xc
	add r2, r6, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x13
	lsl r1, r1, #0xa
	orr r2, r5
	orr r1, r2
	strh r1, [r7]
	mov r1, ip
	lsl r2, r1, #5
	add r1, sp, #0x18
	ldrb r1, [r1]
	mov r3, #2
	lsl r1, r1, #1
	add r1, r2, r1
	add r2, r7, #0
	bl sub_0205FA10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C244: .word 0x020946BC
	thumb_func_end ovy178_219c19c

	thumb_func_start ovy178_219c248
ovy178_219c248: ; 0x0219C248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp, #4]
	str r1, [sp]
	ldr r2, _0219C298 ; =0x00000534
	mov r1, #0
	add r5, r0, #0
	add r6, r3, #0
	ldr r7, [sp, #0x20]
	mov r4, #0
	blx sub_020787A8
	ldr r1, _0219C298 ; =0x00000534
	ldr r0, [sp, #4]
	sub r1, #0xc
	str r0, [r5, r1]
	ldr r0, _0219C298 ; =0x00000534
	mov r1, #0xa
	sub r0, #8
	str r4, [r5, r0]
	ldr r0, _0219C298 ; =0x00000534
	sub r0, r0, #4
	str r1, [r5, r0]
_0219C276:
	ldr r0, [sp]
	add r1, r6, r4
	bl sub_0219B128
	add r1, r0, #0
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	add r2, r7, #0
	bl ovy178_219c4c8
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219C276
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C298: .word 0x00000534
	thumb_func_end ovy178_219c248

	thumb_func_start sub_0219C29C
sub_0219C29C: ; 0x0219C29C
	ldr r2, _0219C2A4 ; =0x00000534
	ldr r3, _0219C2A8 ; =sub_020787A8
	mov r1, #0
	bx r3
	.align 2, 0
_0219C2A4: .word 0x00000534
_0219C2A8: .word sub_020787A8
	thumb_func_end sub_0219C29C

	thumb_func_start ovy178_219c2ac
ovy178_219c2ac: ; 0x0219C2AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0219C3F0 ; =0x00000528
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0219C2C4
	cmp r1, #1
	beq _0219C2C2
	cmp r1, #2
	beq _0219C352
_0219C2C2:
	b _0219C3D8
_0219C2C4:
	add r2, r0, #4
	add r1, r0, #4
	ldr r2, [r5, r2]
	ldr r1, [r5, r1]
	add r3, r2, #1
	add r2, r0, #4
	str r3, [r5, r2]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	cmp r1, r2
	bls _0219C3D8
	mov r4, #0
	add r0, r0, #4
	str r4, [r5, r0]
	mov r7, #0x2c
_0219C2E4:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_0219C64C
	cmp r0, #0
	bne _0219C34A
	mov r0, #2
	mov r7, #2
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	add r0, #0xfe
	bl sub_02005748
	mov r1, #2
	sub r1, #0x26
	str r0, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0xe4
	str r0, [sp, #0xc]
	mov r0, #0x32
	str r1, [sp, #0x14]
	bl sub_02005748
	add r4, r0, #0
	mov r0, #2
	add r4, #0x6e
	bl sub_02005748
	cmp r0, #0
	beq _0219C32C
	mov r7, #5
_0219C32C:
	ldr r0, [sp, #4]
	cmp r0, #0
	str r4, [sp]
	beq _0219C342
	add r0, r5, r6
	add r1, sp, #8
	add r2, sp, #0x10
_0219C33A:
	add r3, r7, #0
_0219C33C:
	bl ovy178_219c564
	b _0219C3D8
_0219C342:
	add r0, r5, r6
	add r1, sp, #0x10
	add r2, sp, #8
	b _0219C33A
_0219C34A:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219C2E4
	b _0219C3D8
_0219C352:
	add r2, r0, #4
	add r1, r0, #4
	ldr r2, [r5, r2]
	ldr r1, [r5, r1]
	add r3, r2, #1
	add r2, r0, #4
	str r3, [r5, r2]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	cmp r1, r2
	bls _0219C3D8
	mov r4, #0
	add r0, r0, #4
	str r4, [r5, r0]
	mov r7, #0x2c
_0219C372:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_0219C64C
	cmp r0, #0
	bne _0219C3D2
	ldr r0, _0219C3F4 ; =0x0000FFFF
	bl sub_02005748
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r0, r0, #1
	lsl r1, r0, #1
	ldr r2, _0219C3F8 ; =0x020946BC
	add r0, r0, #1
	lsl r0, r0, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	lsl r0, r0, #8
	asr r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x80
	lsl r1, r1, #8
	str r0, [sp, #8]
	mov r0, #0x60
	asr r1, r1, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x32
	str r1, [sp, #0x10]
	bl sub_02005748
	add r7, r0, #0
	mov r0, #2
	add r7, #0x6e
	mov r4, #2
	bl sub_02005748
	cmp r0, #0
	beq _0219C3C6
	mov r4, #5
_0219C3C6:
	str r7, [sp]
	add r0, r5, r6
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, r4, #0
	b _0219C33C
_0219C3D2:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219C372
_0219C3D8:
	mov r4, #0
	mov r6, #0x2c
_0219C3DC:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	bl ovy178_219c4e0
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219C3DC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C3F0: .word 0x00000528
_0219C3F4: .word 0x0000FFFF
_0219C3F8: .word 0x020946BC
	thumb_func_end ovy178_219c2ac

	thumb_func_start ovy178_219c3fc
ovy178_219c3fc: ; 0x0219C3FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0]
	str r1, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r2, [sp, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x38]
_0219C41C:
	mov r4, #0
	mov r7, #0x2c
_0219C420:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	bl sub_0219C64C
	cmp r0, #0
	bne _0219C4AA
	ldr r0, _0219C4C0 ; =0x0000FFFF
	bl sub_02005748
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	ldr r2, _0219C4C4 ; =0x020946BC
	lsl r0, r0, #2
	add r1, r2, r0
	ldrsh r0, [r2, r0]
	mov r2, #2
	ldrsh r1, [r1, r2]
	lsl r0, r0, #8
	asr r0, r0, #0xc
	lsl r1, r1, #8
	str r0, [sp, #0x10]
	asr r1, r1, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	lsl r0, r1, #0xc
	str r0, [sp, #0x28]
	mov r0, #0
	add r4, sp, #0x18
	str r1, [sp, #0x14]
	str r0, [sp, #0x2c]
	add r0, sp, #0x24
	add r1, sp, #0x30
	add r2, r4, #0
	bl VEC_Subtract
	add r0, r4, #0
	add r1, r4, #0
	blx VEC_Normalize
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #4]
	lsl r0, r0, #8
	asr r1, r0, #0xc
	ldr r0, [sp, #0x1c]
	ldr r2, [r2]
	str r1, [sp, #0x10]
	add r1, r1, r2
	str r1, [sp, #0x10]
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	asr r0, r0, #0xc
	ldr r1, [r1, #4]
	str r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, #5
	bl sub_02005748
	add r0, #0x28
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, r6
	add r2, sp, #0x10
	bl ovy178_219c564
	b _0219C4B0
_0219C4AA:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219C420
_0219C4B0:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0xc
	blt _0219C41C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0219C4C0: .word 0x0000FFFF
_0219C4C4: .word 0x020946BC
	thumb_func_end ovy178_219c3fc

	thumb_func_start ovy178_219c4c8
ovy178_219c4c8: ; 0x0219C4C8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	blx sub_020787A8
	str r4, [r5]
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy178_219c4c8

	thumb_func_start ovy178_219c4e0
ovy178_219c4e0: ; 0x0219C4E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219C55E
	add r0, r5, #0
	add r1, r5, #0
	add r6, sp, #0x10
	add r0, #0x18
	add r1, #0xc
	add r2, r6, #0
	bl VEC_Subtract
	add r0, r6, #0
	blx VEC_Mag
	add r4, r0, #0
	add r0, r6, #0
	add r1, r6, #0
	blx VEC_Normalize
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mul r0, r4
	blx sub_0208D868
	add r2, r5, #0
	add r1, r6, #0
	add r2, #0xc
	add r3, sp, #4
	blx VEC_MultAdd
	ldr r0, [sp, #4]
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #8]
	asr r1, r1, #0xc
	strh r1, [r0, #2]
	ldr r2, [r5, #0x24]
	add r1, r2, #1
	str r1, [r5, #0x24]
	ldr r1, [r5, #0x28]
	cmp r2, r1
	bls _0219C550
	ldr r1, [r5, #0x18]
	mov r4, #0
	strh r1, [r0]
	ldr r1, [r5, #0x1c]
	strh r1, [r0, #2]
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	str r4, [r5, #8]
_0219C550:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	add r1, sp, #0
	lsr r2, r2, #0x10
	bl sub_0204C140
_0219C55E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy178_219c4e0

	thumb_func_start ovy178_219c564
ovy178_219c564: ; 0x0219C564
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	add r6, r2, #0
	str r3, [sp]
	cmp r0, #0
	ble _0219C58A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C598
_0219C58A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C598:
	blx sub_0208DA4C
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _0219C5B6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C5C4
_0219C5B6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C5C4:
	blx sub_0208DA4C
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r6, #4]
	str r7, [r5, #0x10]
	cmp r0, #0
	ble _0219C5E8
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C5F6
_0219C5E8:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C5F6:
	blx sub_0208DA4C
	add r4, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	ble _0219C614
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C622
_0219C614:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C622:
	blx sub_0208DA4C
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r0, [r5, #0x28]
	ldr r0, [r5]
	str r4, [r5, #0x1c]
	bl sub_0204C124
	ldr r1, [sp]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy178_219c564

	thumb_func_start sub_0219C64C
sub_0219C64C: ; 0x0219C64C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219C64C

	thumb_func_start ovy178_219c650
ovy178_219c650: ; 0x0219C650
	push {r4, lr}
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx sub_020787A8
	mov r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy178_219c650

	thumb_func_start sub_0219C664
sub_0219C664: ; 0x0219C664
	ldr r3, _0219C66C ; =sub_020787A8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_0219C66C: .word sub_020787A8
	thumb_func_end sub_0219C664

	thumb_func_start ovy178_219c670
ovy178_219c670: ; 0x0219C670
	push {lr}
	sub sp, #0xc
	add r1, r0, #0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0219C6B2
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0219C6B2
	ldrh r3, [r1, #2]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, r0
	lsl r0, r0, #6
	cmp r2, r0
	blt _0219C69A
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r3, r0
	strh r0, [r1, #2]
	b _0219C69C
_0219C69A:
	strh r2, [r1, #2]
_0219C69C:
	mov r0, #3
	str r0, [sp]
	ldr r0, _0219C6B8 ; =0x00006ADF
	mov r3, #5
	str r0, [sp, #4]
	ldr r0, _0219C6BC ; =0x000055FE
	str r0, [sp, #8]
	ldrh r2, [r1, #2]
	mov r0, #0xf
	bl ovy178_219c19c
_0219C6B2:
	add sp, #0xc
	pop {pc}
	nop
_0219C6B8: .word 0x00006ADF
_0219C6BC: .word 0x000055FE
	thumb_func_end ovy178_219c670

	thumb_func_start sub_0219C6C0
sub_0219C6C0: ; 0x0219C6C0
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219C6C0
_0219C6C8:
	.byte 0x04, 0x48, 0x0A, 0x58, 0x00, 0x2A, 0x03, 0xD0
	.byte 0x00, 0x22, 0x0A, 0x50, 0x02, 0x48, 0x02, 0x80, 0x70, 0x47, 0xC0, 0x46, 0xA8, 0x08, 0x00, 0x00
	.byte 0x50, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0xD1, 0xBF, 0x19, 0x02, 0xF5, 0xBF, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x21, 0xAD, 0x19, 0x02, 0xAD, 0xAF, 0x19, 0x02
	.byte 0x29, 0xAF, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x03, 0x05, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219C6C8
