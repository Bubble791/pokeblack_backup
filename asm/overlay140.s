    .include "macros/function.inc"
	.include "overlay140.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy140_219ce80
ovy140_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0219D040 ; =0x0000008B
	add r7, r2, #0
	bl sub_0203CE0C
	mov r2, #0x21
	mov r0, #1
	mov r1, #0x1c
	lsl r2, r2, #0xc
	mov r6, #0x1c
	bl GFL_HeapCreateChild
	mov r5, #0x27
	lsl r5, r5, #4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x1c
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	sub r0, r5, #4
	str r7, [r4, r0]
	add r1, r7, #0
	mov r0, #0
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0x1c
	bl ovy140_219d130
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl GFL_FontCreate
	add r1, r5, #0
	sub r1, #0x1c
	str r0, [r4, r1]
	mov r0, #0x1c
	bl sub_02021998
	add r1, r5, #0
	sub r1, #0x18
	str r0, [r4, r1]
	add r2, r5, #0
	add r3, r5, #0
	str r6, [sp]
	sub r2, #0x1c
	sub r3, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	mov r0, #0
	mov r1, #0xd
	bl sub_0202E168
	add r1, r5, #0
	sub r1, #0x10
	str r0, [r4, r1]
	add r2, r5, #0
	add r3, r5, #0
	str r6, [sp]
	sub r2, #0x1c
	sub r3, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	mov r0, #3
	mov r1, #9
	bl sub_0202E168
	add r1, r5, #0
	sub r1, #0xc
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x1c
	mov r7, #0x20
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	sub r1, #0x14
	str r0, [r4, r1]
	mov r0, #0x1c
	mov r1, #0x1c
	mov r2, #0x20
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02008DDC
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0x28
	add r0, r4, r0
	bl ovy140_219e860
	add r0, r4, #0
	ldr r2, _0219D044 ; =ovy140_219ea4c
	add r0, #0xd4
	add r1, r4, #0
	bl ovy140_219e9fc
	sub r0, r5, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02016AD8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219D230
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	add r3, r5, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r2, #0x1c
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	sub r3, #0x18
	add r7, #0xe4
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r4, r7
	bl ovy140_219dc5c
	add r0, r5, #0
	sub r0, #0x28
	mov r7, #0x52
	add r0, r4, r0
	str r0, [sp]
	lsl r7, r7, #2
	add r0, r4, r7
	mov r1, #1
	mov r2, #2
	add r3, r4, #0
	str r6, [sp, #4]
	bl ovy140_219e014
	add r0, r4, #0
	add r0, #0xe4
	mov r1, #0x1c
	bl sub_0219D904
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0219D23C
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	add r3, r5, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x58
	str r6, [sp, #8]
	sub r2, #0x1c
	sub r3, #0x14
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r4, r0
	bl ovy140_219daa4
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0219D23C
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	sub r2, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	sub r5, #0x14
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r7, #0x90
	ldr r2, [r4, r2]
	ldr r3, [r4, r5]
	add r0, r4, r7
	bl ovy140_219e664
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D040: .word 0x0000008B
_0219D044: .word ovy140_219ea4c
	thumb_func_end ovy140_219ce80

	thumb_func_start ovy140_219d048
ovy140_219d048: ; 0x0219D048
	push {r4, r5, r6, lr}
	mov r4, #0x76
	add r5, r3, #0
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	bl ovy140_219e700
	add r0, r4, #0
	sub r0, #0x38
	add r0, r5, r0
	bl ovy140_219db34
	add r0, r5, #0
	add r0, #0xe4
	bl sub_0219D910
	add r0, r4, #0
	sub r0, #0x90
	add r0, r5, r0
	bl sub_0219E094
	add r0, r4, #0
	sub r0, #0xd4
	add r0, r5, r0
	bl ovy140_219dcf0
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0219EA18
	add r0, r4, #0
	add r0, #0x70
	add r0, r5, r0
	bl sub_0219E8A0
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r5, r0]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r4, #0x7c
	ldr r0, [r5, r4]
	bl sub_02022DA8
	add r0, r5, #0
	bl ovy140_219d1c0
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x1c
	bl sub_0203A1D0
	ldr r0, _0219D0E8 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219D0E8: .word 0x0000008B
	thumb_func_end ovy140_219d048

	thumb_func_start ovy140_219d0ec
ovy140_219d0ec: ; 0x0219D0EC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r0, r4, #0
	add r0, #0xd4
	bl ovy140_219ea24
	add r0, r4, #0
	bl ovy140_219d210
	mov r5, #0x96
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02021A3C
	add r5, #0x10
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy140_219df24
	add r4, #0xd4
	add r0, r4, #0
	bl sub_0219EA38
	cmp r0, #0
	beq _0219D12A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D12A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy140_219d0ec

	thumb_func_start ovy140_219d130
ovy140_219d130: ; 0x0219D130
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xd4
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r1, _0219D1AC ; =0x04000050
	ldr r0, _0219D1B0 ; =0x04001050
	strh r6, [r1]
	strh r6, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219D1B4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r6, _0219D1B8 ; =0x0219EE9C
	add r0, r6, #0
	bl sub_02046C40
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy140_219d260
	add r0, r5, #0
	add r0, #0x7c
	add r1, r6, #0
	add r2, r4, #0
	bl ovy140_219d708
	ldr r0, _0219D1BC ; =ovy140_219d24c
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r5, #0xd0
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D1AC: .word 0x04000050
_0219D1B0: .word 0x04001050
_0219D1B4: .word 0xFFFF1FFF
_0219D1B8: .word 0x0219EE9C
_0219D1BC: .word ovy140_219d24c
	thumb_func_end ovy140_219d130

	thumb_func_start ovy140_219d1c0
ovy140_219d1c0: ; 0x0219D1C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0x7c
	bl ovy140_219d850
	add r0, r4, #0
	bl ovy140_219d44c
	bl sub_020232D8
	ldr r5, _0219D204 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219D208 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219D20C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0xd4
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D204: .word 0x04000050
_0219D208: .word 0x04001050
_0219D20C: .word 0xFFFF1FFF
	thumb_func_end ovy140_219d1c0

	thumb_func_start ovy140_219d210
ovy140_219d210: ; 0x0219D210
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x7c
	bl ovy140_219d8a0
	add r0, r4, #0
	bl ovy140_219d4b0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy140_219d210

	thumb_func_start sub_0219D224
sub_0219D224: ; 0x0219D224
	ldr r3, _0219D22C ; =sub_0219D8F8
	add r0, #0x7c
	bx r3
	nop
_0219D22C: .word sub_0219D8F8
	thumb_func_end sub_0219D224

	thumb_func_start sub_0219D230
sub_0219D230: ; 0x0219D230
	ldr r3, _0219D238 ; =sub_0219D900
	add r0, #0x7c
	bx r3
	nop
_0219D238: .word sub_0219D900
	thumb_func_end sub_0219D230

	thumb_func_start sub_0219D23C
sub_0219D23C: ; 0x0219D23C
	ldr r3, _0219D240 ; =sub_0219D4DC
	bx r3
	.align 2, 0
_0219D240: .word sub_0219D4DC
	thumb_func_end sub_0219D23C

	thumb_func_start sub_0219D244
sub_0219D244: ; 0x0219D244
	ldr r3, _0219D248 ; =sub_0219D638
	bx r3
	.align 2, 0
_0219D248: .word sub_0219D638
	thumb_func_end sub_0219D244

	thumb_func_start ovy140_219d24c
ovy140_219d24c: ; 0x0219D24C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219D640
	add r4, #0x7c
	add r0, r4, #0
	bl sub_0219D8F0
	pop {r4, pc}
	thumb_func_end ovy140_219d24c

	thumb_func_start ovy140_219d260
ovy140_219d260: ; 0x0219D260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	mov r2, #0x7c
	add r7, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	add r0, r6, #0
	bl sub_020444A4
	add r0, r6, #0
	bl sub_02048080
	ldr r0, _0219D444 ; =0x0219EE44
	bl sub_02044710
_0219D284:
	mov r0, #0x28
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219D448 ; =0x0219EF18
	add r2, r0, r1
	ldr r5, [r0, r1]
	add r1, r2, #4
	ldr r2, [r2, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
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
	cmp r4, #6
	blt _0219D284
	mov r0, #3
	mov r1, #0
	mov r5, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x1b
	add r1, r6, #0
	bl sub_0204AA30
	str r5, [sp]
	str r6, [sp, #4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #0
	bl sub_0204AF50
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
	mov r1, #2
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #3
	mov r3, #1
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0x1e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0x80
	str r6, [sp, #8]
	bl sub_0204B124
	add r3, r7, #0
	str r6, [sp]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	add r3, #0x58
	bl sub_0204B28C
	str r0, [r7, #0x54]
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #8
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #4
	mov r3, #1
	str r6, [sp, #8]
	bl sub_0204ADA8
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #0x1b
	mov r1, #1
	add r2, sp, #0xc
	add r3, r6, #0
	bl sub_0204B354
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	ldr r0, [r0, #0xc]
	add r1, #0x5c
	add r0, #0xe0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r7, #0x44]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r7, #0x48]
	mov r0, #3
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	mov r3, #0x10
	bl sub_020480C0
	str r0, [r7, #0x40]
	add r0, r7, #0
	bl ovy140_219d4e4
	mov r0, #4
	add r1, r5, #0
	bl sub_02044C98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D444: .word 0x0219EE44
_0219D448: .word 0x0219EF18
	thumb_func_end ovy140_219d260

	thumb_func_start ovy140_219d44c
ovy140_219d44c: ; 0x0219D44C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0219D452:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D45E
	bl sub_02048210
_0219D45E:
	add r4, r4, #1
	cmp r4, #0x13
	blt _0219D452
	ldr r0, [r5, #0x54]
	bl sub_0203A24C
	mov r0, #4
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl sub_02045264
	mov r0, #3
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r6, _0219D4AC ; =0x0219EF18
	mov r7, #0x28
_0219D484:
	add r0, r4, #0
	mul r0, r7
	ldr r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #6
	blt _0219D484
	bl sub_020480A8
	bl sub_02044528
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x7c
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4AC: .word 0x0219EF18
	thumb_func_end ovy140_219d44c

	thumb_func_start ovy140_219d4b0
ovy140_219d4b0: ; 0x0219D4B0
	push {lr}
	sub sp, #0xc
	mov r2, #1
	add r1, r0, #0
	str r2, [sp]
	add r0, #0x72
	ldrh r0, [r0]
	lsl r2, r2, #0xa
	mov r3, #7
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x74
	ldrh r0, [r0]
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x50
	add r1, #0x4c
	bl ovy140_219d648
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy140_219d4b0

	thumb_func_start sub_0219D4DC
sub_0219D4DC: ; 0x0219D4DC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D4DC

	thumb_func_start ovy140_219d4e4
ovy140_219d4e4: ; 0x0219D4E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	str r0, [sp, #0x10]
	mov r0, #0
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x1c
	bl GFL_MsgSysLoadData
	str r0, [sp, #0xc]
_0219D50C:
	mov r5, #0
	cmp r4, #0
	beq _0219D51C
	cmp r4, #1
	beq _0219D520
	cmp r4, #2
	beq _0219D524
	b _0219D526
_0219D51C:
	mov r5, #7
	b _0219D526
_0219D520:
	mov r5, #4
	b _0219D526
_0219D524:
	mov r5, #2
_0219D526:
	ldr r0, _0219D630 ; =0x0219F120
	lsl r1, r4, #3
	add r7, r0, r1
	ldr r2, _0219D630 ; =0x0219F120
	ldr r0, [sp, #0xc]
	ldr r1, [r2, r1]
	bl sub_0204898C
	ldr r1, [sp, #0x10]
	mov r2, #0
	str r0, [sp, #0x14]
	bl sub_02022888
	add r0, r5, r0
	add r0, r0, #7
	lsl r0, r0, #0x15
	lsr r3, r0, #0x18
	lsl r0, r4, #2
	strb r3, [r7, #6]
	str r0, [sp, #0x18]
	ldrb r0, [r7, #7]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r1, [r7, #4]
	ldrb r2, [r7, #5]
	bl sub_020480C0
	ldr r1, [sp, #0x18]
	str r0, [r6, r1]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [sp, #0x18]
	ldr r0, [r6, r0]
	bl sub_020484F4
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r1, [sp]
	lsl r1, r5, #0x10
	asr r1, r1, #0x10
	mov r2, #0
	bl sub_02021CFC
	ldr r0, [sp, #0x18]
	ldr r5, [r6, r0]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #0x10
	blt _0219D50C
	ldr r0, [r6, #0x58]
	ldr r4, [r0, #0x14]
	ldr r0, [r6, #0x40]
	bl sub_020484F4
	bl sub_02046EF4
	mov r2, #6
	add r1, r0, #0
	add r0, r4, #0
	lsl r2, r2, #8
	blx MIi_CpuCopy32
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [r6, #0x40]
	bl sub_020484D8
	lsl r4, r0, #2
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r4, r4, r0
	ldr r0, [r6, #0x40]
	bl sub_020484F4
	ldr r1, [sp, #0x10]
	mov r2, #4
	str r1, [sp]
	ldr r1, _0219D634 ; =0x00003DC1
	add r3, r5, #0
	str r1, [sp, #4]
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	bl sub_02021D28
	ldr r4, [r6, #0x40]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r5, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x10]
	bl sub_02022DA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D630: .word 0x0219F120
_0219D634: .word 0x00003DC1
	thumb_func_end ovy140_219d4e4

	thumb_func_start sub_0219D638
sub_0219D638: ; 0x0219D638
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	bx lr
	thumb_func_end sub_0219D638

	thumb_func_start sub_0219D640
sub_0219D640: ; 0x0219D640
	ldr r3, _0219D644 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219D644: .word sub_02045A5C
	thumb_func_end sub_0219D640

	thumb_func_start ovy140_219d648
ovy140_219d648: ; 0x0219D648
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	ldrh r1, [r0]
	mov ip, r3
	add r2, r1, r2
	mov r1, #1
	lsl r1, r1, #0x10
	cmp r2, r1
	blt _0219D662
	sub r1, r2, r1
	strh r1, [r0]
	b _0219D664
_0219D662:
	strh r2, [r0]
_0219D664:
	add r1, sp, #0x18
	ldrh r5, [r1, #4]
	ldrh r0, [r0]
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r5
	asr r0, r0, #4
	lsl r1, r1, #0x13
	lsl r0, r0, #1
	lsr r4, r1, #0x18
	add r1, sp, #0x18
	add r0, r0, #1
	ldrh r3, [r1, #8]
	lsl r1, r0, #1
	ldr r0, _0219D704 ; =FX_SinCosTable_ ; 0x020946BC
	mov r7, #0x1f
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r2, r0, #0x10
	add r0, r5, #0
	and r0, r7
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r7, #0xa
	and r0, r5
	lsl r5, r7, #0xa
	and r5, r3
	asr r0, r0, #0xa
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r2
	asr r5, r5, #0xc
	add r0, r0, r5
	add r5, r3, #0
	and r5, r7
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r2
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	lsl r1, r7, #5
	and r1, r3
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r4
	mul r1, r2
	asr r1, r1, #0xc
	add r1, r4, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r0, r1
	mov r1, ip
	strh r0, [r6]
	lsl r2, r1, #5
	add r1, sp, #0x18
	ldrb r1, [r1]
	mov r0, #0xf
	mov r3, #2
	lsl r1, r1, #1
	add r1, r2, r1
	add r2, r6, #0
	bl sub_0205FA10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D704: .word FX_SinCosTable_
	thumb_func_end ovy140_219d648

	thumb_func_start ovy140_219d708
ovy140_219d708: ; 0x0219D708
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x54
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r0, _0219D848 ; =0x02093F08
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r6, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x1b
	add r1, r6, #0
	bl sub_0204AA30
	str r6, [sp]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #4]
	str r6, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	add r3, r6, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	str r6, [sp]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xa
	add r3, r6, #0
	bl sub_0204BDE0
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	add r1, r7, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r4, #2
	add r0, sp, #0xc
	strb r4, [r0, #7]
	strb r4, [r0, #6]
_0219D7B2:
	mov r0, #0x18
	ldr r1, _0219D84C ; =0x0219F008
	mul r0, r4
	add r1, r1, r0
	sub r1, #0x28
	ldr r2, [r1]
	add r1, sp, #0xc
	strh r2, [r1]
	ldr r1, _0219D84C ; =0x0219F008
	add r0, r1, r0
	sub r0, #0x24
	ldr r1, [r0]
	add r0, sp, #0xc
	strh r1, [r0, #2]
	lsl r0, r4, #2
	add r7, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_0204C040
	mov r1, #0
	str r0, [r7, #0x18]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #0xd
	blt _0219D7B2
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r1, #2
	strb r1, [r0, #7]
	mov r4, #1
	strb r4, [r0, #6]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_0204C040
	mov r1, #6
	mov r2, #1
	str r0, [r5, #0x1c]
	bl sub_0204C378
	bl sub_02042788
	cmp r0, #0
	beq _0219D842
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02042BA8
_0219D842:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D848: .word 0x02093F08
_0219D84C: .word 0x0219F008
	thumb_func_end ovy140_219d708

	thumb_func_start ovy140_219d850
ovy140_219d850: ; 0x0219D850
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D856:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0219D864
	bl sub_0204C108
_0219D864:
	add r4, r4, #1
	cmp r4, #0xe
	blt _0219D856
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5, #0x10]
	bl sub_0204B98C
	ldr r0, [r5, #0x14]
	bl sub_0204BE64
	ldr r0, [r5]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x54
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy140_219d850

	thumb_func_start ovy140_219d8a0
ovy140_219d8a0: ; 0x0219D8A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x50
	strh r1, [r0]
	cmp r2, #0x60
	bls _0219D8C2
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
_0219D8C2:
	mov r4, #2
	mov r6, #0xc
_0219D8C6:
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r1, r6, #0
	blx sub_0208D65C
	add r1, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x18]
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r4, r4, #1
	cmp r4, #0xd
	blt _0219D8C6
	bl sub_0204B794
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy140_219d8a0

	thumb_func_start sub_0219D8F0
sub_0219D8F0: ; 0x0219D8F0
	ldr r3, _0219D8F4 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219D8F4: .word sub_0204B7C8
	thumb_func_end sub_0219D8F0

	thumb_func_start sub_0219D8F8
sub_0219D8F8: ; 0x0219D8F8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219D8F8

	thumb_func_start sub_0219D900
sub_0219D900: ; 0x0219D900
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219D900

	thumb_func_start sub_0219D904
sub_0219D904: ; 0x0219D904
	ldr r3, _0219D90C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r3
	.align 2, 0
_0219D90C: .word MI_CpuFill8
	thumb_func_end sub_0219D904

	thumb_func_start sub_0219D910
sub_0219D910: ; 0x0219D910
	ldr r3, _0219D918 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r3
	.align 2, 0
_0219D918: .word MI_CpuFill8
	thumb_func_end sub_0219D910

	thumb_func_start ovy140_219d91c
ovy140_219d91c: ; 0x0219D91C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r6, sp, #0
	add r4, sp, #4
	str r0, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219D94E
	mov r0, #3
	str r0, [r5]
	ldr r0, [sp, #4]
	str r0, [r5, #4]
	ldr r0, [sp]
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	str r0, [r5, #0x14]
	ldr r0, [sp]
	str r0, [r5, #0x18]
	mov r0, #1
	b _0219D98E
_0219D94E:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _0219D98C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219D98C
	ldr r1, [sp]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	bpl _0219D96A
	neg r0, r0
_0219D96A:
	cmp r0, #1
	blt _0219D990
	mov r0, #1
	str r0, [r5]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [sp]
	ldr r0, [r5, #0x18]
	sub r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [sp, #4]
	str r0, [r5, #0x14]
	ldr r0, [sp]
	str r0, [r5, #0x18]
	b _0219D990
_0219D98C:
	mov r0, #0
_0219D98E:
	str r0, [r5, #0x1c]
_0219D990:
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	bl sub_0203DF20
	add r6, r0, #0
	cmp r4, #0
	beq _0219D9C2
	bl sub_0203D554
	cmp r0, #1
	bne _0219D9C2
	ldr r0, _0219DA68 ; =0x00000C02
	tst r0, r4
	bne _0219D9C2
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xe
	str r0, [r5]
	ldr r0, _0219DA6C ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #8
	pop {r4, r5, r6, pc}
_0219D9C2:
	mov r0, #1
	tst r0, r4
	beq _0219D9D0
	mov r0, #8
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219D9D0:
	mov r1, #2
	add r0, r4, #0
	tst r0, r1
	beq _0219D9E6
	mov r0, #0
	bl sub_0203D564
	mov r0, #9
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219D9E6:
	lsl r0, r1, #0xa
	tst r0, r4
	beq _0219D9FA
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xc
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219D9FA:
	lsl r0, r1, #9
	tst r0, r4
	beq _0219DA0E
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xd
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA0E:
	mov r2, #0x40
	add r0, r4, #0
	tst r0, r2
	beq _0219DA1E
	mov r0, #4
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA1E:
	mov r1, #0x80
	add r0, r4, #0
	tst r0, r1
	beq _0219DA2E
	mov r0, #5
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA2E:
	mov r0, #0x20
	tst r0, r4
	beq _0219DA3C
	mov r0, #7
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA3C:
	mov r0, #0x10
	tst r0, r4
	beq _0219DA4A
	mov r0, #6
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA4A:
	add r0, r6, #0
	tst r0, r2
	beq _0219DA58
	mov r0, #0xa
	add sp, #8
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219DA58:
	add r0, r6, #0
	tst r0, r1
	beq _0219DA62
	mov r0, #0xb
	str r0, [r5]
_0219DA62:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0219DA68: .word 0x00000C02
_0219DA6C: .word 0x00000548
	thumb_func_end ovy140_219d91c

	thumb_func_start sub_0219DA70
sub_0219DA70: ; 0x0219DA70
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219DA70

	thumb_func_start sub_0219DA74
sub_0219DA74: ; 0x0219DA74
	cmp r2, #0
	beq _0219DAA2
	cmp r1, #0
	beq _0219DA86
	cmp r1, #1
	beq _0219DA90
	cmp r1, #2
	beq _0219DA9A
	bx lr
_0219DA86:
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	str r1, [r2]
	str r0, [r2, #4]
	bx lr
_0219DA90:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [r2]
	str r0, [r2, #4]
	bx lr
_0219DA9A:
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	str r1, [r2]
	str r0, [r2, #4]
_0219DAA2:
	bx lr
	thumb_func_end sub_0219DA74

	thumb_func_start ovy140_219daa4
ovy140_219daa4: ; 0x0219DAA4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #4
	strh r0, [r5, #0x18]
	str r4, [r5, #0x10]
	add r0, sp, #0x18
	ldrh r1, [r0, #8]
	mov r0, #0xff
	strh r1, [r5, #0x1a]
	str r6, [r5, #4]
	str r7, [r5]
	bl GFL_StrBufCreate
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	ldr r1, _0219DB30 ; =0x00000406
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	bl sub_0202E678
	add r0, r4, #0
	bl sub_020484F8
	add r3, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r2, #1
	bl sub_02024E80
	ldr r0, [r5, #0x10]
	bl sub_020484F4
	ldrh r1, [r5, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x1c]
	add r5, #0x20
	mov r0, #0
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DB30: .word 0x00000406
	thumb_func_end ovy140_219daa4

	thumb_func_start ovy140_219db34
ovy140_219db34: ; 0x0219DB34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219DB46
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_0219DB46:
	ldr r0, [r4, #0x14]
	bl GFL_StrBufFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy140_219db34

	thumb_func_start ovy140_219db58
ovy140_219db58: ; 0x0219DB58
	push {r3, r4, r5, lr}
	str r3, [sp]
	add r5, r1, #0
	add r4, r2, #0
	ldr r1, [r0]
	add r2, r5, #0
	add r3, r4, #0
	bl ovy140_219db6c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy140_219db58

	thumb_func_start ovy140_219db6c
ovy140_219db6c: ; 0x0219DB6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219DBA0
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #8]
_0219DBA0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0219DBD2
	ldr r0, [r5, #0x1c]
	ldr r4, [r5, #0x24]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02021C54
	add r0, r5, #0
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
	mov r0, #2
	add sp, #0x18
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0219DBD2:
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r0, [r5, #0x1a]
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	ldr r3, [r5, #0x14]
	bl sub_02022268
	str r0, [r5, #8]
	mov r0, #1
	str r0, [r5, #0x28]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy140_219db6c

	thumb_func_start ovy140_219dbfc
ovy140_219dbfc: ; 0x0219DBFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0219DC0E
	cmp r0, #1
	beq _0219DC4E
	cmp r0, #2
	beq _0219DC12
_0219DC0E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219DC12:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldr r4, [r5, #0x24]
	cmp r0, #0
	beq _0219DC3E
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DC3E
	ldr r0, [r5, #0x1c]
	bl sub_02048244
	add r0, r5, #0
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
_0219DC3E:
	add r5, #0x20
	ldrb r0, [r5]
	cmp r0, #0
	bne _0219DC4A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219DC4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219DC4E:
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x2c
	bl sub_0202E68C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy140_219dbfc

	thumb_func_start ovy140_219dc5c
ovy140_219dc5c: ; 0x0219DC5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x44
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #3
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x7c]
	str r6, [r5]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x78]
	ldr r6, _0219DCEC ; =0x0219EED8
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x80]
	str r7, [r5, #4]
	str r0, [r5, #0x3c]
	add r3, sp, #0x20
	mov r2, #8
_0219DC8A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219DC8A
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	mov r6, #0
	blx MI_CpuFill8
	mov r1, #2
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #8
	mov r7, #1
	str r4, [sp, #8]
	str r0, [sp, #0x14]
	str r7, [sp, #0x1c]
	add r4, sp, #0x78
	str r1, [sp, #4]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0xc]
	add r0, sp, #0
	bl sub_02199AA0
	str r0, [r5, #8]
	ldrh r1, [r4, #0xc]
	add r0, r5, #0
	bl ovy140_219df98
	ldr r0, [r5, #0x3c]
	mov r1, #0x1b
	bl sub_0201765C
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _0219DCE0
	mov r1, #6
	add r2, r7, #0
	bl sub_02199D58
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_0219DCE0:
	mov r1, #6
	add r2, r6, #0
	bl sub_02199D58
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DCEC: .word 0x0219EED8
	thumb_func_end ovy140_219dc5c

	thumb_func_start ovy140_219dcf0
ovy140_219dcf0: ; 0x0219DCF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_02199B5C
	mov r4, #0
	mov r6, #0xc
_0219DCFE:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl GFL_StrBufFree
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl sub_0202E34C
	add r4, r4, #1
	cmp r4, #2
	blt _0219DCFE
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy140_219dcf0

	thumb_func_start ovy140_219dd28
ovy140_219dd28: ; 0x0219DD28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r5, #0
	add r7, r1, #0
	str r2, [sp]
	str r5, [r4, #0x40]
	cmp r0, #0
	beq _0219DD40
	add r6, r5, #0
	b _0219DD48
_0219DD40:
	add r0, r7, #0
	bl sub_0219DA70
	add r6, r0, #0
_0219DD48:
	ldr r0, [sp]
	bl sub_0219E2E0
	cmp r6, #0xe
	bhi _0219DE4E
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DD5E: ; jump table
	.short _0219DE4E - _0219DD5E - 2 ; case 0
	.short _0219DE4E - _0219DD5E - 2 ; case 1
	.short _0219DE4E - _0219DD5E - 2 ; case 2
	.short _0219DD80 - _0219DD5E - 2 ; case 3
	.short _0219DE06 - _0219DD5E - 2 ; case 4
	.short _0219DE06 - _0219DD5E - 2 ; case 5
	.short _0219DE06 - _0219DD5E - 2 ; case 6
	.short _0219DE06 - _0219DD5E - 2 ; case 7
	.short _0219DE1E - _0219DD5E - 2 ; case 8
	.short _0219DE42 - _0219DD5E - 2 ; case 9
	.short _0219DE06 - _0219DD5E - 2 ; case 10
	.short _0219DE06 - _0219DD5E - 2 ; case 11
	.short _0219DE4E - _0219DD5E - 2 ; case 12
	.short _0219DE4E - _0219DD5E - 2 ; case 13
	.short _0219DD7C - _0219DD5E - 2 ; case 14
_0219DD7C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219DD80:
	add r6, sp, #4
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	mov r5, #0
	bl sub_0219DA74
	ldr r0, _0219DF14 ; =0x0219EE54
	add r1, r6, #0
	bl ovy140_219ee0c
	cmp r0, #0
	beq _0219DDC6
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219DDC6
	mov r0, #4
	add r1, r5, #0
	bl sub_02044C98
	ldr r0, _0219DF18 ; =0x0000054C
	bl GFL_SndSEPlay
	str r5, [r4, #0xc]
	mov r5, #1
	str r5, [r4, #0x10]
	str r5, [r4, #0x40]
	bl sub_0203D554
	cmp r0, #0
	bne _0219DE02
_0219DDBE:
	add r0, r5, #0
	bl sub_0203D564
	b _0219DE02
_0219DDC6:
	ldr r0, _0219DF1C ; =0x0219EE64
	add r1, sp, #4
	bl ovy140_219ee0c
	cmp r0, #0
	beq _0219DDF8
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0219DDF8
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	ldr r0, _0219DF20 ; =0x00000551
	bl GFL_SndSEPlay
	mov r5, #1
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x40]
	bl sub_0203D554
	cmp r0, #0
	bne _0219DE02
	b _0219DDBE
_0219DDF8:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	beq _0219DE02
	mov r0, #3
	str r0, [r4, #0xc]
_0219DE02:
	mov r5, #1
	b _0219DE4E
_0219DE06:
	cmp r0, #5
	beq _0219DE10
	cmp r0, #6
	beq _0219DE14
	b _0219DE18
_0219DE10:
	mov r0, #0
	b _0219DE1A
_0219DE14:
	mov r0, #1
	b _0219DE1A
_0219DE18:
	mov r0, #3
_0219DE1A:
	str r0, [r4, #0xc]
	b _0219DE02
_0219DE1E:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	beq _0219DE34
	cmp r0, #1
	bne _0219DE2C
	ldr r0, _0219DF20 ; =0x00000551
	b _0219DE2E
_0219DE2C:
	ldr r0, _0219DF18 ; =0x0000054C
_0219DE2E:
	bl GFL_SndSEPlay
	b _0219DE3E
_0219DE34:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, _0219DF18 ; =0x0000054C
	bl GFL_SndSEPlay
_0219DE3E:
	mov r5, #1
	b _0219DE4C
_0219DE42:
	ldr r0, _0219DF20 ; =0x00000551
	bl GFL_SndSEPlay
	mov r5, #1
	str r5, [r4, #0xc]
_0219DE4C:
	str r5, [r4, #0x10]
_0219DE4E:
	cmp r5, #0
	beq _0219DEA6
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bne _0219DE64
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0202E41C
	ldr r0, [r4, #0x38]
	b _0219DEA0
_0219DE64:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219DE88
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	mov r1, #0
	bl sub_0202E41C
	ldr r0, [r4, #0xc]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	mov r5, #1
	bl sub_0202E430
	b _0219DE96
_0219DE88:
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	mov r1, #1
	mov r5, #1
	bl sub_0202E41C
_0219DE96:
	ldr r0, [r4, #0xc]
	eor r0, r5
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
_0219DEA0:
	mov r1, #0
	bl sub_0202E41C
_0219DEA6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0219DF10
	ldr r0, [r4, #8]
	bl sub_02199B90
	ldr r0, [r4, #8]
	bl sub_02199C30
	cmp r0, #0
	beq _0219DECA
	cmp r0, #6
	bne _0219DED6
	bl sub_0203D554
	cmp r0, #1
	bne _0219DED6
	b _0219DED2
_0219DECA:
	bl sub_0203D554
	cmp r0, #1
	bne _0219DED6
_0219DED2:
	mov r0, #1
	str r0, [r4, #0x40]
_0219DED6:
	ldr r0, [r4, #8]
	bl sub_02199C08
	cmp r0, #0
	beq _0219DF08
	cmp r0, #6
	bne _0219DF10
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_02199D68
	cmp r0, #0
	ldr r0, [r4, #0x3c]
	beq _0219DEF8
	mov r1, #0x1b
	mov r2, #1
	b _0219DEFC
_0219DEF8:
	mov r1, #0x1b
	mov r2, #0
_0219DEFC:
	bl sub_02017644
	mov r0, #3
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_0219DF08:
	mov r0, #2
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
_0219DF10:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DF14: .word 0x0219EE54
_0219DF18: .word 0x0000054C
_0219DF1C: .word 0x0219EE64
_0219DF20: .word 0x00000551
	thumb_func_end ovy140_219dd28

	thumb_func_start ovy140_219df24
ovy140_219df24: ; 0x0219DF24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219DF2A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl sub_0202E37C
	add r4, r4, #1
	cmp r4, #2
	blt _0219DF2A
	pop {r3, r4, r5, pc}
	thumb_func_end ovy140_219df24

	thumb_func_start sub_0219DF3C
sub_0219DF3C: ; 0x0219DF3C
	cmp r1, #0
	beq _0219DF44
	ldr r2, [r0, #0xc]
	str r2, [r1]
_0219DF44:
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219DF3C

	thumb_func_start ovy140_219df48
ovy140_219df48: ; 0x0219DF48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #0
	beq _0219DF6E
	ldr r0, [r5, #0xc]
	cmp r0, #3
	beq _0219DF6E
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl sub_0202E438
	add r4, r0, #0
	beq _0219DF6E
	add r0, r5, #0
	bl ovy140_219df74
_0219DF6E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy140_219df48

	thumb_func_start ovy140_219df74
ovy140_219df74: ; 0x0219DF74
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219DF7C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x34]
	bl sub_0202E4AC
	ldr r0, [r5, #0x34]
	add r1, r7, #0
	bl sub_0202E41C
	add r4, r4, #1
	cmp r4, #2
	blt _0219DF7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy140_219df74

	thumb_func_start ovy140_219df98
ovy140_219df98: ; 0x0219DF98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r0, [sp, #0xc]
	add r0, #0x1c
	str r1, [sp, #8]
	mov r4, #0
	str r0, [sp, #0xc]
_0219DFA8:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r7
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0219DFBA
	bl GFL_StrBufFree
_0219DFBA:
	mov r0, #0xc
	mul r0, r4
	add r6, r5, r0
	add r1, r4, #0
	ldr r0, [r5, #0x18]
	add r1, #8
	bl sub_0204898C
	str r0, [r6, #0x1c]
	ldr r0, _0219E00C ; =0x000039E3
	strh r0, [r6, #0x20]
	lsl r0, r4, #2
	str r4, [r6, #0x24]
	add r6, r5, r0
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0219DFE0
	bl sub_0202E34C
_0219DFE0:
	mov r0, #9
	lsl r2, r4, #3
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r4, r2
	ldr r1, [sp, #0xc]
	add r2, #0xe
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x14]
	add r1, r1, r7
	lsr r2, r2, #0x18
	mov r3, #0x15
	bl sub_0202E1F0
	add r4, r4, #1
	str r0, [r6, #0x34]
	cmp r4, #2
	blt _0219DFA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E00C: .word 0x000039E3
	thumb_func_end ovy140_219df98

	thumb_func_start sub_0219E010
sub_0219E010: ; 0x0219E010
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_0219E010

	thumb_func_start ovy140_219e014
ovy140_219e014: ; 0x0219E014
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r2, [sp]
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x58
	add r6, r3, #0
	mov r4, #0
	blx MI_CpuFill8
	strh r7, [r5]
	ldr r0, [sp]
	add r2, r5, #0
	strh r0, [r5, #2]
	mov r0, #0x10
	ldr r3, [sp, #0x18]
	str r0, [r5, #0x34]
	ldmia r3!, {r0, r1}
	add r2, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_0219E040:
	add r0, r6, #0
	add r1, r4, #2
	bl sub_0219D224
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #8]
	cmp r4, #0xb
	blt _0219E040
	mov r1, #7
	mvn r1, r1
	add r2, r1, #0
	add r0, r5, #0
	sub r2, #0xb8
	mov r3, #0xc0
	mov r4, #0xc0
	bl ovy140_219e4e4
	bl sub_0203D554
	cmp r0, #1
	bne _0219E080
	sub r4, #0xc1
	str r4, [r5, #4]
	add r0, r5, #0
	mov r4, #0
	mov r1, #0
	bl ovy140_219e310
	str r4, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_0219E080:
	mov r0, #0
	str r0, [r5, #4]
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy140_219e310
	str r4, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy140_219e014

	thumb_func_start sub_0219E094
sub_0219E094: ; 0x0219E094
	ldr r3, _0219E09C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x58
	bx r3
	.align 2, 0
_0219E09C: .word MI_CpuFill8
	thumb_func_end sub_0219E094

	thumb_func_start ovy140_219e0a0
ovy140_219e0a0: ; 0x0219E0A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r0, #0
	add r0, r7, #0
	str r2, [sp]
	add r5, r3, #0
	bl sub_0219DA70
	add r6, r0, #0
	ldrh r0, [r4, #2]
	bl sub_02044E74
	cmp r6, #0xe
	bhi _0219E13A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E0CA: ; jump table
	.short _0219E246 - _0219E0CA - 2 ; case 0
	.short _0219E246 - _0219E0CA - 2 ; case 1
	.short _0219E246 - _0219E0CA - 2 ; case 2
	.short _0219E150 - _0219E0CA - 2 ; case 3
	.short _0219E112 - _0219E0CA - 2 ; case 4
	.short _0219E13C - _0219E0CA - 2 ; case 5
	.short _0219E19C - _0219E0CA - 2 ; case 6
	.short _0219E1E0 - _0219E0CA - 2 ; case 7
	.short _0219E23E - _0219E0CA - 2 ; case 8
	.short _0219E23E - _0219E0CA - 2 ; case 9
	.short _0219E108 - _0219E0CA - 2 ; case 10
	.short _0219E130 - _0219E0CA - 2 ; case 11
	.short _0219E226 - _0219E0CA - 2 ; case 12
	.short _0219E214 - _0219E0CA - 2 ; case 13
	.short _0219E0E8 - _0219E0CA - 2 ; case 14
_0219E0E8:
	ldr r0, [r4, #4]
	cmp r0, #6
	ble _0219E0F2
	mov r0, #6
	b _0219E0F8
_0219E0F2:
	cmp r0, #0
	bge _0219E0F8
	mov r0, #0
_0219E0F8:
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy140_219e310
	str r5, [r4, #0x50]
	b _0219E246
_0219E108:
	ldr r1, [r4, #0x38]
	add r0, r1, #1
	str r0, [r4, #0x38]
	cmp r1, #0xa
	blo _0219E13A
_0219E112:
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0219E120
	mov r0, #6
	b _0219E122
_0219E120:
	sub r0, r0, #1
_0219E122:
	str r0, [r4, #4]
_0219E124:
	mov r0, #1
	str r0, [r4, #0x50]
	ldr r0, _0219E2BC ; =0x00000548
	bl GFL_SndSEPlay
	b _0219E1B0
_0219E130:
	ldr r1, [r4, #0x38]
	add r0, r1, #1
	str r0, [r4, #0x38]
	cmp r1, #0xa
	bhs _0219E13C
_0219E13A:
	b _0219E246
_0219E13C:
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r4, #0x38]
	cmp r0, #6
	bne _0219E14A
	str r1, [r4, #4]
	b _0219E14E
_0219E14A:
	add r0, r0, #1
	str r0, [r4, #4]
_0219E14E:
	b _0219E124
_0219E150:
	add r0, r7, #0
	add r7, sp, #4
	mov r1, #0
	add r2, r7, #0
	mov r6, #0
	bl sub_0219DA74
	ldr r0, [sp, #8]
	cmp r0, #0x18
	blt _0219E246
	cmp r0, #0xa8
	bgt _0219E246
	add r0, r4, #0
	add r1, r7, #0
	bl ovy140_219e63c
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy140_219e574
	add r0, r4, #0
	add r1, r6, #0
	bl ovy140_219e310
	add r0, r5, #0
	bl sub_0219D244
	mov r5, #1
	str r5, [r4, #0x50]
	bl sub_0203D554
	cmp r0, #0
	bne _0219E246
	add r0, r5, #0
	bl sub_0203D564
	b _0219E246
_0219E19C:
	ldr r0, [r4, #4]
	cmp r0, #5
	bge _0219E1C0
	ldr r0, _0219E2BC ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
_0219E1AC:
	bl ovy140_219e618
_0219E1B0:
	add r0, r4, #0
	mov r1, #1
	bl ovy140_219e310
	add r0, r5, #0
	bl sub_0219D244
	b _0219E246
_0219E1C0:
	bne _0219E246
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, _0219E2BC ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r4, #4]
	cmp r0, #6
	ble _0219E1D6
	mov r0, #6
	b _0219E1DC
_0219E1D6:
	cmp r0, #0
	bge _0219E1DC
	mov r0, #0
_0219E1DC:
	str r0, [r4, #4]
	b _0219E246
_0219E1E0:
	ldr r0, [r4, #4]
	cmp r0, #5
	bge _0219E1F4
	ldr r0, _0219E2BC ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	b _0219E1AC
_0219E1F4:
	cmp r0, #6
	bne _0219E246
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, _0219E2BC ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r4, #4]
	cmp r0, #6
	ble _0219E20C
	mov r0, #6
	b _0219E212
_0219E20C:
	cmp r0, #0
	bge _0219E212
	mov r0, #0
_0219E212:
	b _0219E1DC
_0219E214:
	ldr r0, [r4, #4]
	cmp r0, #6
	ble _0219E21E
	mov r0, #6
	b _0219E224
_0219E21E:
	cmp r0, #0
	bge _0219E224
	mov r0, #0
_0219E224:
	b _0219E1DC
_0219E226:
	ldr r0, [r4, #4]
	cmp r0, #6
	ble _0219E230
	mov r0, #6
	b _0219E236
_0219E230:
	cmp r0, #0
	bge _0219E236
	mov r0, #0
_0219E236:
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #1
	b _0219E242
_0219E23E:
	add r0, r4, #0
	mov r1, #0
_0219E242:
	bl ovy140_219e310
_0219E246:
	add r0, r4, #0
	add r0, #0x44
	bl sub_0219E9DC
	cmp r0, #0
	beq _0219E25A
	cmp r0, #1
	beq _0219E25A
	cmp r0, #2
	bne _0219E25E
_0219E25A:
	mov r0, #1
	str r0, [r4, #0x50]
_0219E25E:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0219E2AC
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _0219E2A0
	cmp r0, #5
	bge _0219E2A0
	cmp r0, #0
	bne _0219E280
	add r0, r4, #0
	add r0, #0x44
	mov r5, #1
	bl sub_0219E9D4
	add r6, r0, #0
	b _0219E284
_0219E280:
	mov r5, #0
	mov r6, #0
_0219E284:
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	ldr r1, [r4, #4]
	ldr r0, [sp]
	lsl r2, r1, #3
	ldr r1, _0219E2C0 ; =0x0219EE74
	add r3, r5, #0
	ldrh r1, [r1, r2]
	add r2, r6, #0
	bl ovy140_219db58
	b _0219E2A8
_0219E2A0:
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
_0219E2A8:
	mov r0, #0
	str r0, [r4, #0x50]
_0219E2AC:
	ldr r0, [sp]
	bl ovy140_219dbfc
	add r0, r4, #0
	bl sub_0219E65C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E2BC: .word 0x00000548
_0219E2C0: .word 0x0219EE74
	thumb_func_end ovy140_219e0a0

	thumb_func_start ovy140_219e2c4
ovy140_219e2c4: ; 0x0219E2C4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl ovy140_219e310
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	add r0, r4, #0
	bl sub_0219D244
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy140_219e2c4

	thumb_func_start sub_0219E2E0
sub_0219E2E0: ; 0x0219E2E0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219E2E0

	thumb_func_start sub_0219E2E4
sub_0219E2E4: ; 0x0219E2E4
	add r2, r0, #0
	add r2, #0x44
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0219E2E4

	thumb_func_start sub_0219E2F4
sub_0219E2F4: ; 0x0219E2F4
	ldr r1, [r0, #0x54]
	ldr r3, _0219E2FC ; =ovy140_219e310
	bx r3
	nop
_0219E2FC: .word ovy140_219e310
	thumb_func_end sub_0219E2F4

	thumb_func_start sub_0219E300
sub_0219E300: ; 0x0219E300
	add r2, r0, #0
	add r2, #0x48
	strb r1, [r2]
	ldr r1, [r0, #0x54]
	ldr r3, _0219E30C ; =ovy140_219e310
	bx r3
	.align 2, 0
_0219E30C: .word ovy140_219e310
	thumb_func_end sub_0219E300

	thumb_func_start ovy140_219e310
ovy140_219e310: ; 0x0219E310
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	cmp r0, #5
	blt _0219E320
	mov r7, #0
_0219E320:
	ldrh r0, [r5, #2]
	str r7, [r5, #0x54]
	bl sub_02044E74
	add r0, #0x14
	mov r1, #0x18
	blx sub_0208D65C
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldrh r0, [r5, #2]
	mov r1, #0
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0x20
	mov r6, #0
	bl sub_0204566C
	add r4, r6, #0
_0219E34E:
	mov r0, #3
	str r0, [sp]
	ldr r0, _0219E4D8 ; =0x0219EE3C
	ldr r2, [sp, #8]
	ldrb r0, [r0, r6]
	add r3, r2, r6
	lsl r2, r3, #1
	add r2, r3, r2
	str r0, [sp, #4]
	ldrh r0, [r5, #2]
	add r2, r2, #2
	lsl r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #0x20
	bl sub_0204566C
	add r6, r6, #1
	cmp r6, #5
	blo _0219E34E
	add r6, r5, #0
	add r6, #0x44
_0219E37E:
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0219E4DC ; =0x0219F008
	ldr r0, [r5, #4]
	ldr r1, [r1, r2]
	cmp r0, r1
	bne _0219E3BA
	cmp r7, #0
	beq _0219E3BA
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219E9B0
	cmp r0, #0
	beq _0219E3AC
	ldr r0, _0219E4E0 ; =0x0219F120
	lsl r1, r4, #3
	add r3, r0, r1
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #7
	b _0219E3E0
_0219E3AC:
	ldr r0, _0219E4E0 ; =0x0219F120
	lsl r1, r4, #3
	add r3, r0, r1
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #0xc
	b _0219E3E0
_0219E3BA:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219E9B0
	cmp r0, #0
	beq _0219E3D4
	ldr r0, _0219E4E0 ; =0x0219F120
	lsl r1, r4, #3
	add r3, r0, r1
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #0
	b _0219E3E0
_0219E3D4:
	ldr r0, _0219E4E0 ; =0x0219F120
	lsl r1, r4, #3
	add r3, r0, r1
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #3
_0219E3E0:
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r3, #6]
	lsr r0, r0, #0x18
	bl sub_0204566C
	add r4, r4, #1
	cmp r4, #0xb
	blt _0219E37E
	ldr r6, _0219E4E0 ; =0x0219F120
	mov r4, #0xb
_0219E3FC:
	add r1, r4, #0
	ldr r0, [r5, #4]
	sub r1, #0xb
	cmp r1, r0
	bne _0219E416
	cmp r7, #0
	beq _0219E416
	lsl r0, r4, #3
	add r3, r6, r0
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #7
	b _0219E420
_0219E416:
	lsl r0, r4, #3
	add r3, r6, r0
	ldrb r0, [r3, #7]
	str r0, [sp]
	mov r0, #0
_0219E420:
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r3, #6]
	lsr r0, r0, #0x18
	bl sub_0204566C
	add r4, r4, #1
	cmp r4, #0x10
	blt _0219E3FC
	cmp r7, #0
	beq _0219E45E
	mov r0, #3
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	ldr r3, [r5, #4]
	ldrh r0, [r5, #2]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, r2, #2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x20
	bl sub_0204566C
_0219E45E:
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	ldrh r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	add r6, r5, #0
	mov r4, #0
	add r6, #0x44
_0219E478:
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0219E4DC ; =0x0219F008
	ldr r0, [r5, #4]
	ldr r1, [r1, r2]
	cmp r0, r1
	bne _0219E4AC
	cmp r7, #0
	beq _0219E4AC
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219E9B0
	cmp r0, #0
	beq _0219E4A2
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	mov r1, #3
	b _0219E4CA
_0219E4A2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	mov r1, #2
	b _0219E4CA
_0219E4AC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219E9B0
	cmp r0, #0
	beq _0219E4C2
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	mov r1, #0
	b _0219E4CA
_0219E4C2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	mov r1, #1
_0219E4CA:
	bl sub_0204C4B8
	add r4, r4, #1
	cmp r4, #0xb
	blt _0219E478
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E4D8: .word 0x0219EE3C
_0219E4DC: .word 0x0219F008
_0219E4E0: .word 0x0219F120
	thumb_func_end ovy140_219e310

	thumb_func_start ovy140_219e4e4
ovy140_219e4e4: ; 0x0219E4E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #2]
	str r1, [sp]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02044E74
	ldr r1, [sp]
	add r7, r0, r1
	cmp r7, r6
	ble _0219E502
	add r7, r6, #0
	b _0219E508
_0219E502:
	cmp r7, r4
	bge _0219E508
	add r7, r4, #0
_0219E508:
	ldrh r0, [r5]
	add r2, r7, #0
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, #0x14
	bl sub_02045E1C
	ldrh r0, [r5, #2]
	mov r1, #3
	add r2, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045E1C
	ldr r1, [r5, #0x34]
	ldr r0, [sp]
	sub r1, r1, r0
	mov r0, #0x10
	sub r2, r0, r4
	str r1, [r5, #0x34]
	cmp r1, r2
	bgt _0219E53E
	sub r2, r0, r6
	cmp r1, r2
	blt _0219E53E
	add r2, r1, #0
_0219E53E:
	ldr r7, _0219E570 ; =0x0219F008
	str r2, [r5, #0x34]
	mov r4, #0
	add r6, sp, #4
_0219E546:
	mov r0, #0x18
	mul r0, r4
	add r2, r7, r0
	ldr r0, [r2, #8]
	strh r0, [r6]
	ldr r0, [r2, #0xc]
	ldr r1, [r5, #0x34]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r6, #2]
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	add r1, sp, #4
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #0xb
	blt _0219E546
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E570: .word 0x0219F008
	thumb_func_end ovy140_219e4e4

	thumb_func_start ovy140_219e574
ovy140_219e574: ; 0x0219E574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
_0219E57E:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219E5F0 ; =0x0219F008
	add r6, r0, r1
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	ldr r1, [r5, #0x34]
	add r3, r1, r0
	mov r0, #0x10
	ldrsh r2, [r6, r0]
	mov r0, #0x16
	ldrsh r0, [r6, r0]
	str r3, [sp, #4]
	str r2, [sp]
	add r1, r3, r0
	mov r0, #0x14
	ldrsh r0, [r6, r0]
	str r1, [sp, #0xc]
	add r0, r2, r0
	str r0, [sp, #8]
	cmp r3, #0x18
	blt _0219E5E4
	cmp r3, #0xa8
	bgt _0219E5E4
	cmp r1, #0x18
	blt _0219E5E4
	cmp r1, #0xa8
	bgt _0219E5E4
	add r0, sp, #0
	add r1, r7, #0
	bl ovy140_219ee0c
	cmp r0, #0
	beq _0219E5E4
	ldr r0, _0219E5F4 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0x44
	add r1, r4, #0
	bl ovy140_219e8dc
	mov r1, #0x47
	ldrsb r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy140_219e5f8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219E5E4:
	add r4, r4, #1
	cmp r4, #0xb
	blt _0219E57E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E5F0: .word 0x0219F008
_0219E5F4: .word 0x00000548
	thumb_func_end ovy140_219e574

	thumb_func_start ovy140_219e5f8
ovy140_219e5f8: ; 0x0219E5F8
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #3
	beq _0219E604
	cmp r2, #1
	bne _0219E616
_0219E604:
	cmp r1, #0
	bne _0219E610
	mov r0, #1
	bl sub_02005C80
	pop {r3, pc}
_0219E610:
	mov r0, #0
	bl sub_02005C80
_0219E616:
	pop {r3, pc}
	thumb_func_end ovy140_219e5f8

	thumb_func_start ovy140_219e618
ovy140_219e618: ; 0x0219E618
	push {r4, lr}
	add r4, r0, #0
	add r2, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #5
	bge _0219E63A
	add r0, #0x44
	bl ovy140_219e904
	ldr r1, [r4, #4]
	add r0, r4, #0
	add r2, r4, r1
	mov r1, #0x44
	ldrsb r1, [r2, r1]
	mov r2, #0
	bl ovy140_219e5f8
_0219E63A:
	pop {r4, pc}
	thumb_func_end ovy140_219e618

	thumb_func_start ovy140_219e63c
ovy140_219e63c: ; 0x0219E63C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl sub_02044E74
	ldr r1, [r5, #4]
	add r0, r0, r1
	sub r0, #0x10
	mov r1, #0x18
	blx sub_0208D65C
	cmp r0, #5
	blo _0219E65A
	ldr r0, [r4, #4]
_0219E65A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy140_219e63c

	thumb_func_start sub_0219E65C
sub_0219E65C: ; 0x0219E65C
	ldr r1, [r0, #0x3c]
	lsl r1, r1, #1
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0219E65C

	thumb_func_start ovy140_219e664
ovy140_219e664: ; 0x0219E664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r2, [sp, #0xc]
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x70
	add r7, r3, #0
	mov r4, #0
	blx MI_CpuFill8
	add r0, r6, #0
	add r0, #0x54
	strh r4, [r0]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	str r0, [r6, #0x6c]
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	bl ovy140_219daa4
_0219E69E:
	mov r0, #0xc
	mul r0, r4
	add r1, r4, #0
	add r5, r6, r0
	add r0, r7, #0
	add r1, #0x22
	bl sub_0204898C
	str r0, [r5, #0x3c]
	add r1, r5, #0
	ldr r0, _0219E6FC ; =0x000039E3
	add r1, #0x40
	strh r0, [r1]
	mov r0, #0
	add r4, r4, #1
	str r0, [r5, #0x44]
	cmp r4, #2
	blt _0219E69E
	add r0, sp, #0x28
	ldrh r0, [r0, #0xc]
	mov r1, #2
	str r0, [r6, #0x58]
	add r0, r6, #0
	add r0, #0x5c
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0x3c
	str r0, [r6, #0x60]
	mov r0, #1
	str r0, [r6, #0x64]
	add r0, r6, #0
	mov r1, #0x20
	add r0, #0x68
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0xc
	add r0, #0x69
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0xd
	add r0, #0x6a
	strb r1, [r0]
	mov r0, #3
	add r6, #0x6b
	strb r0, [r6]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E6FC: .word 0x000039E3
	thumb_func_end ovy140_219e664

	thumb_func_start ovy140_219e700
ovy140_219e700: ; 0x0219E700
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xc
_0219E708:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #2
	blt _0219E708
	add r0, r5, #0
	bl ovy140_219db34
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x70
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy140_219e700

	thumb_func_start ovy140_219e72c
ovy140_219e72c: ; 0x0219E72C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x56
	ldrh r1, [r1]
	cmp r1, #0
	beq _0219E744
	cmp r1, #1
	beq _0219E754
	cmp r1, #2
	beq _0219E766
	pop {r4, pc}
_0219E744:
	bl ovy140_219dbfc
	cmp r0, #0
	beq _0219E792
	mov r0, #1
	add r4, #0x56
	strh r0, [r4]
	pop {r4, pc}
_0219E754:
	ldr r1, [r4, #0x6c]
	add r0, #0x58
	bl sub_0202D974
	str r0, [r4, #0x38]
	mov r0, #2
	add r4, #0x56
	strh r0, [r4]
	pop {r4, pc}
_0219E766:
	ldr r0, [r4, #0x38]
	bl sub_0202DB70
	ldr r0, [r4, #0x38]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E792
	ldr r0, [r4, #0x38]
	bl sub_0202DC00
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0x56
	strh r1, [r0]
	ldr r0, [r4, #0x38]
	bl sub_0202DA54
_0219E792:
	pop {r4, pc}
	thumb_func_end ovy140_219e72c

	thumb_func_start ovy140_219e794
ovy140_219e794: ; 0x0219E794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0219E7BC ; =0x04000050
	mov r1, #0x17
	mov r2, #8
	bl G2x_SetBlendBrightness_
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #0x21
	add r2, r4, #0
	mov r3, #0
	bl ovy140_219db58
	pop {r3, r4, r5, pc}
	nop
_0219E7BC: .word 0x04000050
	thumb_func_end ovy140_219e794

	thumb_func_start sub_0219E7C0
sub_0219E7C0: ; 0x0219E7C0
	add r0, #0x54
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E7C0

	thumb_func_start ovy140_219e7c8
ovy140_219e7c8: ; 0x0219E7C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _0219E808 ; =0x04000050
	mov r1, #0x17
	mov r2, #8
	bl G2x_SetBlendBrightness_
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	ldr r3, _0219E80C ; =0x0000801C
	mov r0, #0
	mov r1, #3
	mov r2, #0xd0
	bl GFL_MsgSysLoadData
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy140_219db6c
	add r0, r4, #0
	bl GFL_MsgDataFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E808: .word 0x04000050
_0219E80C: .word 0x0000801C
	thumb_func_end ovy140_219e7c8

	thumb_func_start ovy140_219e810
ovy140_219e810: ; 0x0219E810
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	ldr r0, _0219E838 ; =0x04000050
	mov r1, #0x17
	mov r2, #8
	bl G2x_SetBlendBrightness_
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy140_219db58
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E838: .word 0x04000050
	thumb_func_end ovy140_219e810

	thumb_func_start ovy140_219e83c
ovy140_219e83c: ; 0x0219E83C
	push {r3, lr}
	bl ovy140_219dbfc
	cmp r0, #0
	beq _0219E856
	ldr r0, _0219E85C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #3
	bl sub_02044C98
	mov r0, #1
	pop {r3, pc}
_0219E856:
	mov r0, #0
	pop {r3, pc}
	nop
_0219E85C: .word 0x04000050
	thumb_func_end ovy140_219e83c

	thumb_func_start ovy140_219e860
ovy140_219e860: ; 0x0219E860
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0xb
	strb r0, [r5, #5]
	add r0, r4, #0
	str r4, [r5, #8]
	bl sub_02008A14
	strb r0, [r5]
	add r0, r4, #0
	bl sub_02008A4C
	strb r0, [r5, #1]
	add r0, r4, #0
	bl sub_02008A68
	strb r0, [r5, #2]
	add r0, r4, #0
	bl sub_02008A30
	strb r0, [r5, #3]
	add r0, r4, #0
	bl sub_02008AC8
	strb r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy140_219e860

	thumb_func_start sub_0219E8A0
sub_0219E8A0: ; 0x0219E8A0
	ldr r3, _0219E8A8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xc
	bx r3
	.align 2, 0
_0219E8A8: .word MI_CpuFill8
	thumb_func_end sub_0219E8A0

	thumb_func_start ovy140_219e8ac
ovy140_219e8ac: ; 0x0219E8AC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4]
	ldr r0, [r4, #8]
	bl sub_02008A1C
	ldrb r1, [r4, #1]
	ldr r0, [r4, #8]
	bl sub_02008A54
	ldrb r1, [r4, #2]
	ldr r0, [r4, #8]
	bl sub_02008A70
	ldrb r1, [r4, #3]
	ldr r0, [r4, #8]
	bl sub_02008A38
	ldrb r1, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_02008AD0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy140_219e8ac

	thumb_func_start ovy140_219e8dc
ovy140_219e8dc: ; 0x0219E8DC
	push {r4, lr}
	mov r2, #0x18
	add r3, r1, #0
	mul r3, r2
	ldr r2, _0219E8FC ; =0x0219F00C
	ldr r4, [r2, r3]
	ldr r2, _0219E900 ; =0x0219F008
	ldr r3, [r2, r3]
	ldrb r2, [r0, r3]
	cmp r2, r4
	beq _0219E8FA
	strb r4, [r0, r3]
	strb r1, [r0, #5]
	bl ovy140_219e8ac
_0219E8FA:
	pop {r4, pc}
	.align 2, 0
_0219E8FC: .word 0x0219F00C
_0219E900: .word 0x0219F008
	thumb_func_end ovy140_219e8dc

	thumb_func_start ovy140_219e904
ovy140_219e904: ; 0x0219E904
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r0, [sp, #8]
	lsl r0, r7, #3
	ldr r1, _0219E99C ; =0x0219EE76
	str r0, [sp, #4]
	ldrh r0, [r1, r0]
	mov r6, #0
	str r2, [sp]
	mvn r6, r6
	mov r3, #0
	mov ip, r0
	cmp r0, #0
	ble _0219E948
	ldr r1, _0219E9A0 ; =0x0219EE74
	ldr r0, [sp, #4]
	add r4, r1, r0
	ldr r0, [sp, #8]
	ldrh r1, [r4, #2]
	ldrb r5, [r0, r7]
_0219E92E:
	add r0, r4, r3
	ldrb r6, [r0, #4]
	mov r0, #0x18
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0219E9A4 ; =0x0219F008
	add r0, r0, r2
	ldr r0, [r0, #4]
	cmp r0, r5
	beq _0219E948
	add r3, r3, #1
	cmp r3, r1
	blt _0219E92E
_0219E948:
	ldr r0, _0219E9A8 ; =0x0219EE78
	lsl r1, r7, #3
	ldrb r0, [r0, r1]
	sub r0, r6, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldr r0, [sp]
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, ip
	sub r0, r0, #1
	cmp r1, r0
	bgt _0219E96C
	cmp r1, #0
	bge _0219E96A
	mov r1, #0
_0219E96A:
	add r0, r1, #0
_0219E96C:
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldr r2, _0219E9A8 ; =0x0219EE78
	ldr r0, [sp, #4]
	add r0, r2, r0
	ldrb r0, [r1, r0]
	mov r1, #0x18
	add r2, r0, #0
	mul r2, r1
	ldr r1, _0219E9AC ; =0x0219F00C
	ldr r2, [r1, r2]
	ldr r1, [sp, #8]
	ldrb r1, [r1, r7]
	cmp r1, r2
	beq _0219E996
	ldr r1, [sp, #8]
	strb r2, [r1, r7]
	strb r0, [r1, #5]
	add r0, r1, #0
	bl ovy140_219e8ac
_0219E996:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E99C: .word 0x0219EE76
_0219E9A0: .word 0x0219EE74
_0219E9A4: .word 0x0219F008
_0219E9A8: .word 0x0219EE78
_0219E9AC: .word 0x0219F00C
	thumb_func_end ovy140_219e904

	thumb_func_start sub_0219E9B0
sub_0219E9B0: ; 0x0219E9B0
	mov r2, #0x18
	mul r2, r1
	ldr r1, _0219E9CC ; =0x0219F008
	ldr r1, [r1, r2]
	ldrb r1, [r0, r1]
	ldr r0, _0219E9D0 ; =0x0219F00C
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0219E9C6
	mov r0, #1
	bx lr
_0219E9C6:
	mov r0, #0
	bx lr
	nop
_0219E9CC: .word 0x0219F008
_0219E9D0: .word 0x0219F00C
	thumb_func_end sub_0219E9B0

	thumb_func_start sub_0219E9D4
sub_0219E9D4: ; 0x0219E9D4
	ldr r3, _0219E9D8 ; =sub_02017BCC
	bx r3
	.align 2, 0
_0219E9D8: .word sub_02017BCC
	thumb_func_end sub_0219E9D4

	thumb_func_start sub_0219E9DC
sub_0219E9DC: ; 0x0219E9DC
	ldrb r2, [r0, #5]
	mov r1, #0xb
	strb r1, [r0, #5]
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E9DC

	thumb_func_start ovy140_219e9e8
ovy140_219e9e8: ; 0x0219E9E8
	push {r3, lr}
	mov r2, #5
	bl sub_02043E98
	cmp r0, #0
	bne _0219E9F8
	mov r0, #1
	pop {r3, pc}
_0219E9F8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy140_219e9e8

	thumb_func_start ovy140_219e9fc
ovy140_219e9fc: ; 0x0219E9FC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_0219EA3C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy140_219e9fc

	thumb_func_start sub_0219EA18
sub_0219EA18: ; 0x0219EA18
	ldr r3, _0219EA20 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_0219EA20: .word MI_CpuFill8
	thumb_func_end sub_0219EA18

	thumb_func_start ovy140_219ea24
ovy140_219ea24: ; 0x0219EA24
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0219EA36
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_0219EA36:
	pop {r3, pc}
	thumb_func_end ovy140_219ea24

	thumb_func_start sub_0219EA38
sub_0219EA38: ; 0x0219EA38
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219EA38

	thumb_func_start sub_0219EA3C
sub_0219EA3C: ; 0x0219EA3C
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219EA3C

	thumb_func_start sub_0219EA44
sub_0219EA44: ; 0x0219EA44
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EA44

	thumb_func_start ovy140_219ea4c
ovy140_219ea4c: ; 0x0219EA4C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219EA60
	cmp r1, #1
	beq _0219EA72
	cmp r1, #2
	beq _0219EA80
	pop {r4, pc}
_0219EA60:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219EA72:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219EA86
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_0219EA80:
	ldr r1, _0219EA88 ; =ovy140_219eac8
	bl sub_0219EA3C
_0219EA86:
	pop {r4, pc}
	.align 2, 0
_0219EA88: .word ovy140_219eac8
	thumb_func_end ovy140_219ea4c

	thumb_func_start ovy140_219ea8c
ovy140_219ea8c: ; 0x0219EA8C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219EAA0
	cmp r1, #1
	beq _0219EAB2
	cmp r1, #2
	beq _0219EAC0
	pop {r4, pc}
_0219EAA0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219EAB2:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219EAC4
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_0219EAC0:
	bl sub_0219EA44
_0219EAC4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy140_219ea8c

	thumb_func_start ovy140_219eac8
ovy140_219eac8: ; 0x0219EAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r6, #0x96
	add r4, r2, #0
	lsl r6, r6, #2
	add r7, r0, #0
	ldr r0, [r4, r6]
	add r5, r1, #0
	bl PrintSystem_IsTextPrintActive
	cmp r0, #0
	bne _0219EAE2
	b _0219ED0C
_0219EAE2:
	ldr r0, [r5]
	cmp r0, #5
	bls _0219EAEA
	b _0219ED0C
_0219EAEA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EAF6: ; jump table
	.short _0219EB02 - _0219EAF6 - 2 ; case 0
	.short _0219EC34 - _0219EAF6 - 2 ; case 1
	.short _0219EC66 - _0219EAF6 - 2 ; case 2
	.short _0219EC98 - _0219EAF6 - 2 ; case 3
	.short _0219ECCA - _0219EAF6 - 2 ; case 4
	.short _0219ECFC - _0219EAF6 - 2 ; case 5
_0219EB02:
	add r0, r4, #0
	add r0, #0xe4
	bl ovy140_219d91c
	mov r6, #0x41
	lsl r6, r6, #2
	add r0, r4, r6
	mov r1, #0
	bl sub_0219DF3C
	cmp r0, #0
	bne _0219EB32
	add r0, r4, r6
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x44
	add r1, r4, #0
	add r6, #0x9c
	add r0, r4, r0
	add r1, #0xe4
	add r2, r4, r6
	add r3, r4, #0
	bl ovy140_219e0a0
_0219EB32:
	mov r6, #0x41
	lsl r6, r6, #2
	add r2, r6, #0
	add r1, r4, #0
	add r2, #0x44
	add r0, r4, r6
	add r1, #0xe4
	add r2, r4, r2
	bl ovy140_219dd28
	add r0, r4, r6
	bl sub_0219E010
	cmp r0, #0
	beq _0219EB5A
	add r6, #0x44
	add r0, r4, r6
	add r1, r4, #0
	bl ovy140_219e2c4
_0219EB5A:
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, sp, #4
	bl sub_0219DF3C
	cmp r0, #0
	beq _0219EBFE
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0219EB7A
	cmp r0, #1
	beq _0219EBBC
	cmp r0, #2
	beq _0219EB8E
	b _0219EBFE
_0219EB7A:
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy140_219df48
	cmp r0, #0
	beq _0219EBFE
	add r0, r7, #0
	ldr r1, _0219ED10 ; =ovy140_219edd8
	b _0219EBFA
_0219EB8E:
	mov r6, #0x9b
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #1
	str r1, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, #0x44
	add r0, r4, r0
	add r1, sp, #0x50
	bl sub_0219E2E4
	sub r6, #0x24
	add r0, r4, r6
	add r1, sp, #0x50
	bl ovy140_219e9e8
	cmp r0, #0
	beq _0219EBBA
_0219EBB4:
	add r0, r7, #0
	ldr r1, _0219ED14 ; =ovy140_219eda8
	b _0219EBFA
_0219EBBA:
	b _0219EBEC
_0219EBBC:
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy140_219df48
	cmp r0, #0
	beq _0219EBFE
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, #0x44
	add r6, sp, #0x44
	add r0, r4, r0
	add r1, r6, #0
	bl sub_0219E2E4
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r6, #0
	bl ovy140_219e9e8
	cmp r0, #0
	beq _0219EBEC
	b _0219EBB4
_0219EBEC:
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy140_219df74
	ldr r1, _0219ED18 ; =ovy140_219ed1c
	add r0, r7, #0
_0219EBFA:
	bl sub_0219EA3C
_0219EBFE:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200746C
	add r6, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, sp, #0x38
	add r1, r4, #0
	bl sub_0219E2E4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0219ED0C
	cmp r6, #0
	beq _0219ED0C
	mov r0, #1
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219EC34:
	mov r6, #0x52
	lsl r6, r6, #2
	add r7, sp, #0x2c
	add r0, r4, r6
	add r1, r7, #0
	bl sub_0219E2E4
	add r0, r7, #0
	bl sub_0219E9D4
	add r2, r0, #0
	add r0, r6, #0
	add r0, #0x90
	add r0, r4, r0
	mov r1, #0x20
	bl ovy140_219e810
	add r0, r4, r6
	mov r1, #1
	bl sub_0219E300
	mov r0, #5
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219EC66:
	mov r6, #0x52
	lsl r6, r6, #2
	add r7, sp, #0x20
	add r0, r4, r6
	add r1, r7, #0
	bl sub_0219E2E4
	add r0, r7, #0
	bl sub_0219E9D4
	add r2, r0, #0
	add r0, r6, #0
	add r0, #0x90
	add r0, r4, r0
	mov r1, #0x16
	bl ovy140_219e7c8
	add r0, r4, r6
	mov r1, #0
	bl sub_0219E2F4
	mov r0, #5
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219EC98:
	mov r6, #0x52
	lsl r6, r6, #2
	add r7, sp, #0x14
	add r0, r4, r6
	add r1, r7, #0
	bl sub_0219E2E4
	add r0, r7, #0
	bl sub_0219E9D4
	add r2, r0, #0
	add r0, r6, #0
	add r0, #0x90
	add r0, r4, r0
	mov r1, #0x16
	bl ovy140_219e7c8
	add r0, r4, r6
	mov r1, #0
	bl sub_0219E2F4
	mov r0, #5
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219ECCA:
	mov r6, #0x52
	lsl r6, r6, #2
	add r7, sp, #8
	add r0, r4, r6
	add r1, r7, #0
	bl sub_0219E2E4
	add r0, r7, #0
	bl sub_0219E9D4
	add r2, r0, #0
	add r0, r6, #0
	add r0, #0x90
	add r0, r4, r0
	mov r1, #0x24
	bl ovy140_219e810
	add r0, r4, r6
	mov r1, #1
	bl sub_0219E2F4
	mov r0, #5
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219ECFC:
	sub r6, #0x80
	add r0, r4, r6
	bl ovy140_219e83c
	cmp r0, #0
	beq _0219ED0C
	mov r0, #0
	str r0, [r5]
_0219ED0C:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED10: .word ovy140_219edd8
_0219ED14: .word ovy140_219eda8
_0219ED18: .word ovy140_219ed1c
	thumb_func_end ovy140_219eac8

	thumb_func_start ovy140_219ed1c
ovy140_219ed1c: ; 0x0219ED1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #3
	bhi _0219ED90
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219ED36: ; jump table
	.short _0219ED3E - _0219ED36 - 2 ; case 0
	.short _0219ED6A - _0219ED36 - 2 ; case 1
	.short _0219ED86 - _0219ED36 - 2 ; case 2
	.short _0219ED8A - _0219ED36 - 2 ; case 3
_0219ED3E:
	mov r6, #0x52
	lsl r6, r6, #2
	add r7, sp, #0
	add r0, r5, r6
	add r1, r7, #0
	bl sub_0219E2E4
	add r0, r7, #0
	bl sub_0219E9D4
	add r6, #0x90
	add r1, r0, #0
	add r0, r5, r6
	bl ovy140_219e794
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
_0219ED66:
	str r0, [r4]
	b _0219ED90
_0219ED6A:
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219E7C0
	cmp r0, #1
	beq _0219ED7E
	cmp r0, #2
	beq _0219ED82
	b _0219ED90
_0219ED7E:
	mov r0, #2
	b _0219ED66
_0219ED82:
	mov r0, #3
	b _0219ED66
_0219ED86:
	ldr r1, _0219EDA0 ; =ovy140_219edd8
	b _0219ED8C
_0219ED8A:
	ldr r1, _0219EDA4 ; =ovy140_219eda8
_0219ED8C:
	bl sub_0219EA3C
_0219ED90:
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy140_219e72c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219EDA0: .word ovy140_219edd8
_0219EDA4: .word ovy140_219eda8
	thumb_func_end ovy140_219ed1c

	thumb_func_start ovy140_219eda8
ovy140_219eda8: ; 0x0219EDA8
	push {r4, r5, r6, lr}
	mov r6, #0x92
	add r4, r2, #0
	lsl r6, r6, #2
	add r5, r0, #0
	add r0, r4, r6
	bl ovy140_219e8ac
	add r1, r6, #3
	mov r0, #0x52
	lsl r0, r0, #2
	ldrsb r1, [r4, r1]
	add r0, r4, r0
	mov r2, #1
	bl ovy140_219e5f8
	ldr r1, _0219EDD4 ; =ovy140_219ea8c
	add r0, r5, #0
	bl sub_0219EA3C
	pop {r4, r5, r6, pc}
	nop
_0219EDD4: .word ovy140_219ea8c
	thumb_func_end ovy140_219eda8

	thumb_func_start ovy140_219edd8
ovy140_219edd8: ; 0x0219EDD8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	add r5, sp, #0
	add r0, r2, r0
	add r1, r5, #0
	bl sub_0219E2E4
	add r0, r5, #0
	bl ovy140_219e8ac
	ldr r0, _0219EE04 ; =0x00000558
	bl GFL_SndSEPlay
	ldr r1, _0219EE08 ; =ovy140_219ea8c
	add r0, r4, #0
	bl sub_0219EA3C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219EE04: .word 0x00000558
_0219EE08: .word ovy140_219ea8c
	thumb_func_end ovy140_219edd8

	thumb_func_start ovy140_219ee0c
ovy140_219ee0c: ; 0x0219EE0C
	push {r4, r5}
	ldr r5, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	sub r4, r3, r5
	ldr r3, [r0, #8]
	sub r3, r3, r5
	cmp r4, r3
	bhi _0219EE22
	mov r3, #1
	b _0219EE24
_0219EE22:
	mov r3, #0
_0219EE24:
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	sub r1, r1, r2
	sub r0, r0, r2
	cmp r1, r0
	bhi _0219EE34
	mov r0, #1
	b _0219EE36
_0219EE34:
	mov r0, #0
_0219EE36:
	and r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end ovy140_219ee0c
_0219EE3C:
	.byte 0x03, 0x01, 0x00, 0x01
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x01, 0x02, 0x00, 0x1A, 0x00, 0x02, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x1B, 0x00, 0x02, 0x00, 0x05, 0x06, 0x00, 0x00, 0x1C, 0x00, 0x02, 0x00
	.byte 0x07, 0x08, 0x00, 0x00, 0x1F, 0x00, 0x02, 0x00, 0x09, 0x0A, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x81, 0xCE, 0x19, 0x02
	.byte 0xED, 0xD0, 0x19, 0x02, 0x49, 0xD0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x30, 0x00, 0xAC, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x05, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xA5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA0, 0x00, 0x00, 0x00, 0x30, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0xD3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x18, 0x00, 0x48, 0x00, 0x18, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x18, 0x00, 0x48, 0x00, 0x18, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x30, 0x00, 0x48, 0x00, 0x18, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x30, 0x00, 0x48, 0x00, 0x18, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x48, 0x00, 0x48, 0x00, 0x18, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x48, 0x00, 0x48, 0x00, 0x18, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x60, 0x00, 0x48, 0x00, 0x18, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x60, 0x00, 0x48, 0x00, 0x18, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0E, 0x05, 0x06, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x14, 0x05, 0x06, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x1A, 0x05, 0x06, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x0F, 0x08, 0x04, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x18, 0x08, 0x06, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0x0B, 0x08, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0x18, 0x0B, 0x08, 0x02, 0x11, 0x00, 0x00, 0x00, 0x0F, 0x0E, 0x06, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0x18, 0x0E, 0x06, 0x02, 0x17, 0x00, 0x00, 0x00, 0x0F, 0x11, 0x06, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x18, 0x11, 0x07, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x05, 0x0C, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x08, 0x0A, 0x02, 0x03, 0x00, 0x00, 0x00, 0x01, 0x0B, 0x0C, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x01, 0x0E, 0x06, 0x02, 0x07, 0x00, 0x00, 0x00, 0x01, 0x11, 0x0A, 0x02
	; 0x0219EE3C
