    .include "macros/function.inc"
	.include "overlay300.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy300_219fbc0
ovy300_219fbc0: ; 0x0219FBC0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x7b
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r6, #0xb5
	lsl r6, r6, #2
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x7b
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_219fbc0

	thumb_func_start ovy300_219fbf0
ovy300_219fbf0: ; 0x0219FBF0
	push {r3, lr}
	add r0, r3, #0
	bl ovy300_21a08d0
	cmp r0, #0
	bne _0219FC00
	mov r0, #1
	pop {r3, pc}
_0219FC00:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy300_219fbf0

	thumb_func_start ovy300_219fc04
ovy300_219fc04: ; 0x0219FC04
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x7b
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy300_219fc04

	thumb_func_start ovy300_219fc14
ovy300_219fc14: ; 0x0219FC14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FC28 ; =ovy300_219fc38
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_0219FC28: .word ovy300_219fc38
	thumb_func_end ovy300_219fc14

	thumb_func_start sub_0219FC2C
sub_0219FC2C: ; 0x0219FC2C
	ldr r0, [r0, #4]
	ldr r3, _0219FC34 ; =GFL_TCBRemove
	bx r3
	nop
_0219FC34: .word GFL_TCBRemove
	thumb_func_end sub_0219FC2C

	thumb_func_start ovy300_219fc38
ovy300_219fc38: ; 0x0219FC38
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r0, [r5, #0xc]
	bl sub_020275F8
	mov r4, #0xae
	lsl r4, r4, #2
	ldrb r0, [r5, r4]
	cmp r0, #1
	bne _0219FC6A
	mov r0, #0xa
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0
	strb r0, [r5, r4]
	b _0219FC82
_0219FC6A:
	cmp r0, #2
	bne _0219FC82
	mov r0, #0xa
	mov r1, #0
	mov r6, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #2
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	strb r6, [r5, r4]
_0219FC82:
	ldr r3, _0219FC90 ; =0x02FE0000
	ldr r1, _0219FC94 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219FC90: .word 0x02FE0000
_0219FC94: .word 0x00003FF8
	thumb_func_end ovy300_219fc38

	thumb_func_start ovy300_219fc98
ovy300_219fc98: ; 0x0219FC98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FCAC ; =0x0219FCBD
	add r1, r4, #0
	mov r2, #0
	bl sub_02005680
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0219FCAC: .word 0x0219FCBD
	thumb_func_end ovy300_219fc98

	thumb_func_start sub_0219FCB0
sub_0219FCB0: ; 0x0219FCB0
	ldr r0, [r0, #8]
	ldr r3, _0219FCB8 ; =GFL_TCBRemove
	bx r3
	nop
_0219FCB8: .word GFL_TCBRemove
	thumb_func_end sub_0219FCB0
_0219FCBC:
	.byte 0x1C, 0x48, 0x02, 0x88
	.byte 0x1C, 0x48, 0x08, 0x5C, 0x04, 0x28, 0x1C, 0x48, 0x16, 0xD1, 0x98, 0x2A, 0x02, 0xDB, 0x1B, 0x49
	.byte 0x01, 0x80, 0x70, 0x47, 0x70, 0x2A, 0x02, 0xDB, 0x19, 0x49, 0x01, 0x80, 0x70, 0x47, 0x48, 0x2A
	.byte 0x02, 0xDB, 0x18, 0x49, 0x01, 0x80, 0x70, 0x47, 0x20, 0x2A, 0x02, 0xDB, 0x16, 0x49, 0x01, 0x80
	.byte 0x70, 0x47, 0x16, 0x49, 0x01, 0x80, 0x70, 0x47, 0xA8, 0x2A, 0x02, 0xDB, 0x0F, 0x49, 0x01, 0x80
	.byte 0x70, 0x47, 0x90, 0x2A, 0x02, 0xDB, 0x0E, 0x49, 0x01, 0x80, 0x70, 0x47, 0x78, 0x2A, 0x02, 0xDB
	.byte 0x0C, 0x49, 0x01, 0x80, 0x70, 0x47, 0x60, 0x2A, 0x02, 0xDB, 0x0B, 0x49, 0x01, 0x80, 0x70, 0x47
	.byte 0x48, 0x2A, 0x02, 0xDB, 0x09, 0x49, 0x01, 0x80, 0x70, 0x47, 0x09, 0x49, 0x01, 0x80, 0x70, 0x47
	.byte 0x06, 0x00, 0x00, 0x04, 0xB9, 0x02, 0x00, 0x00, 0x52, 0x10, 0x00, 0x04, 0x0B, 0x05, 0x00, 0x00
	.byte 0x0A, 0x06, 0x00, 0x00, 0x09, 0x07, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x06, 0x0A, 0x00, 0x00
	.byte 0x04, 0x0C, 0x00, 0x00

	thumb_func_start ovy300_219fd54
ovy300_219fd54: ; 0x0219FD54
	push {r3, lr}
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _0219FD64 ; =0x021A40D4
	bl GFL_BGSysSetVRAMBanks
	pop {r3, pc}
	.align 2, 0
_0219FD64: .word 0x021A40D4
	thumb_func_end ovy300_219fd54

	thumb_func_start sub_0219FD68
sub_0219FD68: ; 0x0219FD68
	ldr r0, _0219FD6C ; =0x021A40D4
	bx lr
	.align 2, 0
_0219FD6C: .word 0x021A40D4
	thumb_func_end sub_0219FD68

	thumb_func_start ovy300_219fd70
ovy300_219fd70: ; 0x0219FD70
	push {r4, lr}
	sub sp, #0x110
	mov r0, #0x7b
	bl GFL_BGSysCreate
	ldr r4, _0219FED4 ; =0x021A4104
	add r3, sp, #0x100
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r4, _0219FED8 ; =0x021A4194
	add r3, sp, #0xe0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r4, _0219FEDC ; =0x021A4174
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	bl sub_02045B7C
	ldr r4, _0219FEE0 ; =0x021A41D4
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r4, _0219FEE4 ; =0x021A41F4
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	bl sub_02045738
	mov r0, #3
	bl sub_02045B7C
	ldr r4, _0219FEE8 ; =0x021A41B4
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r4, _0219FEEC ; =0x021A4154
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	mov r0, #5
	bl sub_02045B7C
	ldr r4, _0219FEF0 ; =0x021A4134
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r4, _0219FEF4 ; =0x021A4114
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r0, #7
	bl sub_02045738
	mov r0, #7
	bl sub_02045B7C
	mov r0, #0xf
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0xf
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add sp, #0x110
	pop {r4, pc}
	nop
_0219FED4: .word 0x021A4104
_0219FED8: .word 0x021A4194
_0219FEDC: .word 0x021A4174
_0219FEE0: .word 0x021A41D4
_0219FEE4: .word 0x021A41F4
_0219FEE8: .word 0x021A41B4
_0219FEEC: .word 0x021A4154
_0219FEF0: .word 0x021A4134
_0219FEF4: .word 0x021A4114
	thumb_func_end ovy300_219fd70

	thumb_func_start ovy300_219fef8
ovy300_219fef8: ; 0x0219FEF8
	push {r3, lr}
	mov r0, #0xf
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0xf
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy300_219fef8

	thumb_func_start ovy300_219ff34
ovy300_219ff34: ; 0x0219FF34
	push {r3, lr}
	mov r0, #0
	mov r1, #1
	bl sub_02044BD8
	mov r0, #1
	mov r1, #0
	bl sub_02044BD8
	pop {r3, pc}
	thumb_func_end ovy300_219ff34

	thumb_func_start ovy300_219ff48
ovy300_219ff48: ; 0x0219FF48
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	pop {r3, pc}
	thumb_func_end ovy300_219ff48

	thumb_func_start ovy300_219ff5c
ovy300_219ff5c: ; 0x0219FF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _021A010C ; =0x0000807B
	mov r0, #0x9d
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0xc0
	str r1, [sp]
	mov r4, #0x7b
	mov r1, #0x4b
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp, #4]
	mov r5, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0xa0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r5, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0x53
	mov r2, #0
	mov r3, #0
	bl GFL_BGSysLoadArcNCGRDynamic
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x53
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x53
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x51
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x53
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x52
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x52
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x61
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x60
	mov r2, #4
	mov r3, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0x62
	mov r2, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	bl GetDefaultUINarcIdx
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	bl sub_0202D824
	add r1, r0, #0
	str r5, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	bl GFL_BGSysLoadArcNCGRDynamic
	add r7, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r3, #7
	str r4, [sp, #4]
	add r0, r6, #0
	mov r2, #0
	lsl r3, r3, #6
	bl GFL_G2DIOLoadArcNCLRDefault
	bl sub_0202D828
	str r5, [sp]
	add r1, r0, #0
	str r5, [sp, #4]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #0
	bl sub_02045B7C
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0
	bl sub_02045814
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x15
	lsl r1, r1, #6
_021A00C8:
	lsl r3, r5, #1
	add r4, r0, r3
	ldrh r3, [r4, r1]
	add r5, r5, #1
	add r3, r3, r2
	strh r3, [r4, r1]
	cmp r5, #0x60
	blo _021A00C8
	mov r0, #0
	bl sub_02045B7C
	mov r5, #0x20
	mov r6, #0x1e
	lsl r6, r6, #4
	str r5, [sp]
	mov r4, #0x7b
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	str r5, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r4, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A010C: .word 0x0000807B
	thumb_func_end ovy300_219ff5c

	thumb_func_start ovy300_21a0110
ovy300_21a0110: ; 0x021A0110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7b
	bl sub_02026DC0
	mov r4, #2
	lsl r4, r4, #8
	str r0, [r5, #0xc]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #3
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a0110

	thumb_func_start ovy300_21a0180
ovy300_21a0180: ; 0x021A0180
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	bl sub_02026DE8
	pop {r4, pc}
	thumb_func_end ovy300_21a0180

	thumb_func_start ovy300_21a01ac
ovy300_21a01ac: ; 0x021A01AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02005718
	str r4, [sp]
	mov r7, #1
	sub r7, #0xf
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0228 ; =0x0000BFFF
	mov r1, #1
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A022C ; =0x00007FEF
	mov r1, #2
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0230 ; =0x0000FE1F
	mov r1, #4
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0228 ; =0x0000BFFF
	mov r1, #8
	add r3, r7, #0
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0228: .word 0x0000BFFF
_021A022C: .word 0x00007FEF
_021A0230: .word 0x0000FE1F
	thumb_func_end ovy300_21a01ac

	thumb_func_start ovy300_21a0234
ovy300_21a0234: ; 0x021A0234
	push {r3, lr}
	cmp r0, #1
	bne _021A025C
	mov r0, #6
	str r0, [sp]
	ldr r0, _021A0264 ; =0x04000050
	mov r1, #8
	mov r2, #4
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021A0268 ; =0x04001050
	mov r1, #2
	mov r2, #6
	mov r3, #6
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
_021A025C:
	ldr r0, _021A0268 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	.align 2, 0
_021A0264: .word 0x04000050
_021A0268: .word 0x04001050
	thumb_func_end ovy300_21a0234

	thumb_func_start sub_021A026C
sub_021A026C: ; 0x021A026C
	ldr r0, _021A02A0 ; =0x0400104A
	ldr r1, _021A02A4 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x1d
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	sub r0, #0x4a
	ldr r3, [r0]
	ldr r2, _021A02A8 ; =0xFFFF1FFF
	lsl r1, r1, #0xa
	and r2, r3
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_021A02A0: .word 0x0400104A
_021A02A4: .word 0xFFFFC0FF
_021A02A8: .word 0xFFFF1FFF
	thumb_func_end sub_021A026C

	thumb_func_start sub_021A02AC
sub_021A02AC: ; 0x021A02AC
	ldr r2, _021A02B8 ; =0x04001000
	ldr r0, _021A02BC ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_021A02B8: .word 0x04001000
_021A02BC: .word 0xFFFF1FFF
	thumb_func_end sub_021A02AC

	thumb_func_start ovy300_21a02c0
ovy300_21a02c0: ; 0x021A02C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _021A0318 ; =0x000001DF
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x7b
	mov r6, #0x7b
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	sub r1, #0xf
	str r0, [r5, r1]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	sub r1, #0x13
	str r0, [r5, r1]
	mov r0, #0x7b
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #0
	sub r1, #0xb
	str r0, [r5, r1]
	mov r0, #0x7b
	bl sub_02021998
	sub r1, r4, #3
	str r0, [r5, r1]
	mov r0, #0x80
	mov r1, #0x7b
	bl GFL_StrBufCreate
	sub r1, r4, #7
	str r0, [r5, r1]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A0318: .word 0x000001DF
	thumb_func_end ovy300_21a02c0

	thumb_func_start ovy300_21a031c
ovy300_21a031c: ; 0x021A031C
	push {r3, r4, r5, lr}
	mov r4, #0x76
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02021A18
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02022DA8
	sub r4, #8
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a031c

	thumb_func_start ovy300_21a0350
ovy300_21a0350: ; 0x021A0350
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _021A038C ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	mov r0, #0x30
	mov r1, #0x10
	mov r2, #1
	mov r3, #0x7b
	mov r6, #0x30
	bl sub_02035024
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r5, r1]
	str r6, [sp]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #0x20
	bl sub_02035104
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A038C: .word 0x0000807B
	thumb_func_end ovy300_21a0350

	thumb_func_start sub_021A0390
sub_021A0390: ; 0x021A0390
	mov r1, #0xad
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A039C ; =sub_02035178
	bx r3
	nop
_021A039C: .word sub_02035178
	thumb_func_end sub_021A0390

	thumb_func_start ovy300_21a03a0
ovy300_21a03a0: ; 0x021A03A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	mov r6, #0
	bl sub_02045814
	add r4, r0, #0
	mov r0, #2
	mov r1, #1
	mov r2, #0x7b
	bl sub_020330C8
	str r0, [r5, #0x20]
	mov r7, #3
	str r7, [sp]
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_02033150
	mov r2, #0x15
	lsl r2, r2, #6
	ldr r0, [r5, #0x20]
	mov r1, #0
	add r2, r4, r2
	bl sub_020331D4
	mov r0, #0x20
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x15
	str r6, [sp, #8]
	bl sub_02045604
	mov r0, #0
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a03a0

	thumb_func_start sub_021A03F8
sub_021A03F8: ; 0x021A03F8
	ldr r0, [r0, #0x20]
	ldr r3, _021A0400 ; =sub_02033120
	bx r3
	nop
_021A0400: .word sub_02033120
	thumb_func_end sub_021A03F8

	thumb_func_start ovy300_21a0404
ovy300_21a0404: ; 0x021A0404
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r1, _021A0444 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r6, #0x7b
	str r6, [sp, #8]
	mov r1, #0x5f
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #0x5e
	mov r2, #3
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A0444: .word 0x0000807B
	thumb_func_end ovy300_21a0404

	thumb_func_start ovy300_21a0448
ovy300_21a0448: ; 0x021A0448
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A0474 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x7b
	str r1, [sp, #8]
	add r4, r0, #0
	mov r1, #0x5b
	mov r2, #3
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A0474: .word 0x0000807B
	thumb_func_end ovy300_21a0448

	thumb_func_start ovy300_21a0478
ovy300_21a0478: ; 0x021A0478
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A04A4 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x7b
	str r1, [sp, #8]
	add r4, r0, #0
	mov r1, #0x5a
	mov r2, #3
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A04A4: .word 0x0000807B
	thumb_func_end ovy300_21a0478

	thumb_func_start ovy300_21a04a8
ovy300_21a04a8: ; 0x021A04A8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A04D4 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x7b
	str r1, [sp, #8]
	add r4, r0, #0
	mov r1, #0x5c
	mov r2, #3
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A04D4: .word 0x0000807B
	thumb_func_end ovy300_21a04a8

	thumb_func_start ovy300_21a04d8
ovy300_21a04d8: ; 0x021A04D8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A0504 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x7b
	str r1, [sp, #8]
	add r4, r0, #0
	mov r1, #0x58
	mov r2, #3
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A0504: .word 0x0000807B
	thumb_func_end ovy300_21a04d8

	thumb_func_start ovy300_21a0508
ovy300_21a0508: ; 0x021A0508
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A0534 ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x7b
	str r1, [sp, #8]
	add r4, r0, #0
	mov r1, #0x59
	mov r2, #3
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021A0534: .word 0x0000807B
	thumb_func_end ovy300_21a0508

	thumb_func_start ovy300_21a0538
ovy300_21a0538: ; 0x021A0538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x3b
	mov r1, #6
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r3, _021A0594 ; =0x021A4800
	mov r0, #0x7b
	lsl r1, r1, #6
	mov r2, #0
	str r4, [sp]
	bl GFL_HeapAllocate
	add r1, r4, #0
	sub r1, #0xf4
	str r0, [r5, r1]
	ldr r7, _021A0598 ; =0x0000807B
	mov r0, #0x9d
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	str r7, [sp]
	mov r1, #0x5d
	mov r2, #0
	add r3, sp, #4
	add r6, r0, #0
	bl sub_0204B32C
	add r7, r0, #0
	ldr r0, [sp, #4]
	sub r4, #0xf4
	mov r2, #6
	ldr r1, [r5, r4]
	add r0, #0xc
	lsl r2, r2, #6
	blx MIi_CpuCopy16
	add r0, r7, #0
	bl GFL_HeapFree
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0594: .word 0x021A4800
_021A0598: .word 0x0000807B
	thumb_func_end ovy300_21a0538

	thumb_func_start sub_021A059C
sub_021A059C: ; 0x021A059C
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A05A8 ; =GFL_HeapFree
	bx r3
	nop
_021A05A8: .word GFL_HeapFree
	thumb_func_end sub_021A059C

	thumb_func_start ovy300_21a05ac
ovy300_21a05ac: ; 0x021A05AC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #6
	mov r1, #0xaf
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #1
	mov r2, #0
	mov r3, #0x11
	bl sub_020454AC
	mov r0, #1
	bl sub_02045B7C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xf
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xe
	bl ovy300_21a2738
	ldr r0, [r4]
	mov r1, #0x13
	ldr r0, [r0]
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	bne _021A05FA
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x16
	b _021A0600
_021A05FA:
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x15
_021A0600:
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_021A2800
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_021A2800
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl sub_021A2800
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a05ac

	thumb_func_start ovy300_21a0628
ovy300_21a0628: ; 0x021A0628
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r1, #8
	mov r2, #0
	add r5, r0, #0
	mov r4, #0
	bl ovy300_21a2770
	mov r0, #0x20
	str r0, [sp]
	mov r6, #6
	str r6, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x11
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2738
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy300_21a2738
	ldr r0, [r5]
	mov r1, #0x13
	ldr r0, [r0]
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	bne _021A067E
	add r0, r5, #0
	mov r1, #4
	mov r2, #7
	b _021A0684
_021A067E:
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
_021A0684:
	bl ovy300_21a2738
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_021A2800
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl sub_021A2800
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_021A2800
	add r0, r5, #0
	bl sub_021A269C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a0628

	thumb_func_start sub_021A06B0
sub_021A06B0: ; 0x021A06B0
	mov r1, #0xae
	mov r2, #1
	lsl r1, r1, #2
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A06B0

	thumb_func_start ovy300_21a06bc
ovy300_21a06bc: ; 0x021A06BC
	push {lr}
	sub sp, #0xc
	mov r1, #0xae
	mov r2, #2
	lsl r1, r1, #2
	strb r2, [r0, r1]
	mov r0, #1
	bl sub_02045738
	mov r0, #3
	bl sub_02045738
	mov r0, #5
	bl sub_02045738
	mov r0, #1
	bl sub_02045B7C
	mov r0, #3
	bl sub_02045B7C
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #0
	bl sub_02045B7C
	mov r0, #1
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	mov r0, #5
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy300_21a06bc

	thumb_func_start ovy300_21a0724
ovy300_21a0724: ; 0x021A0724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #4
	mov r1, #3
	mov r2, #0x30
	bl sub_02045E1C
	mov r0, #7
	mov r1, #3
	mov r2, #0x30
	bl sub_02045E1C
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r2, #0
	mov r3, #0x1b
	bl sub_02033254
	ldr r0, [r5, #0x20]
	bl sub_0203349C
	mov r4, #2
	mov r7, #0
	add r6, sp, #4
_021A0756:
	add r2, sp, #4
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #4
	str r7, [sp]
	bl ovy300_21a27d8
	mov r0, #0
	ldrsh r0, [r6, r0]
	mov r2, #2
	mov r3, #0
	add r0, #0x30
	strh r0, [r6]
	str r7, [sp]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy300_21a27b8
	add r4, r4, #1
	cmp r4, #4
	bls _021A0756
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy300_21a0724

	thumb_func_start ovy300_21a078c
ovy300_21a078c: ; 0x021A078C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xb2
	mov r2, #0x30
	lsl r0, r0, #2
	strh r2, [r5, r0]
	add r0, r0, #2
	neg r4, r1
	strh r1, [r5, r0]
	cmp r1, #0
	blt _021A07A6
	add r4, r1, #0
_021A07A6:
	neg r2, r1
	cmp r1, #0
	blt _021A07AE
	add r2, r1, #0
_021A07AE:
	add r0, r1, #0
	add r1, r2, #0
	blx sub_0208D65C
	add r6, r0, #0
	mov r0, #0x30
	add r1, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r3, r6, #0x18
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r2, #0
	asr r3, r3, #0x18
	bl sub_0203346C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a078c

	thumb_func_start ovy300_21a07d8
ovy300_21a07d8: ; 0x021A07D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0xb2
	add r5, r0, #0
	lsl r7, r7, #2
	ldrh r0, [r5, r7]
	cmp r0, #0
	bne _021A07EE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A07EE:
	ldr r0, [r5, #0x20]
	bl sub_0203349C
	add r2, r7, #2
	ldrsh r2, [r5, r2]
	mov r0, #4
	mov r1, #4
	bl sub_02045E1C
	add r2, r7, #2
	ldrsh r2, [r5, r2]
	mov r0, #7
	mov r1, #4
	bl sub_02045E1C
	mov r4, #2
	add r6, sp, #4
	add r7, r7, #2
_021A0812:
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	mov r0, #0
	ldrsh r1, [r6, r0]
	ldrsh r0, [r5, r7]
	mov r2, #2
	mov r3, #0
	add r0, r1, r0
	strh r0, [r6]
	mov r0, #0
	str r0, [sp]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy300_21a27b8
	add r4, r4, #1
	cmp r4, #4
	bls _021A0812
	ldr r0, _021A0868 ; =0x000002CA
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021A0852
	neg r0, r0
_021A0852:
	mov r1, #0xb2
	lsl r1, r1, #2
	ldrh r2, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r2, r0
	strh r0, [r5, r1]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0868: .word 0x000002CA
	thumb_func_end ovy300_21a07d8

	thumb_func_start sub_021A086C
sub_021A086C: ; 0x021A086C
	add r0, r1, #0
	bx lr
	thumb_func_end sub_021A086C

	thumb_func_start sub_021A0870
sub_021A0870: ; 0x021A0870
	add r0, r1, #0
	bx lr
	thumb_func_end sub_021A0870

	thumb_func_start sub_021A0874
sub_021A0874: ; 0x021A0874
	ldr r0, _021A087C ; =0x021A40AE
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
_021A087C: .word 0x021A40AE
	thumb_func_end sub_021A0874

	thumb_func_start sub_021A0880
sub_021A0880: ; 0x021A0880
	ldr r0, _021A0888 ; =0x021A40AE
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
_021A0888: .word 0x021A40AE
	thumb_func_end sub_021A0880

	thumb_func_start ovy300_21a088c
ovy300_21a088c: ; 0x021A088C
	push {r3, r4}
	ldr r0, [r0]
	ldr r4, [r0, #8]
	ldrb r3, [r4, #6]
	cmp r3, #0xff
	beq _021A08AE
	ldr r1, _021A08B4 ; =0x021A40A0
	mov r2, #0
_021A089C:
	ldrb r0, [r1, r2]
	cmp r3, r0
	bne _021A08A8
	strb r2, [r4, #6]
	pop {r3, r4}
	bx lr
_021A08A8:
	add r2, r2, #1
	cmp r2, #0xe
	blo _021A089C
_021A08AE:
	pop {r3, r4}
	bx lr
	nop
_021A08B4: .word 0x021A40A0
	thumb_func_end ovy300_21a088c

	thumb_func_start sub_021A08B8
sub_021A08B8: ; 0x021A08B8
	ldr r0, [r0]
	ldr r2, [r0, #8]
	ldrb r1, [r2, #6]
	cmp r1, #0xff
	beq _021A08C8
	ldr r0, _021A08CC ; =0x021A40A0
	ldrb r0, [r0, r1]
	strb r0, [r2, #6]
_021A08C8:
	bx lr
	nop
_021A08CC: .word 0x021A40A0
	thumb_func_end sub_021A08B8

	thumb_func_start ovy300_21a08d0
ovy300_21a08d0: ; 0x021A08D0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	lsl r2, r1, #2
	ldr r1, _021A0908 ; =0x021A4214
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #0x10]
	cmp r0, #0x1b
	bne _021A08E8
	mov r0, #0
	pop {r4, pc}
_021A08E8:
	add r0, r4, #0
	bl ovy300_21a26e8
	add r0, r4, #0
	bl ovy300_21a1d54
	mov r2, #0xb1
	lsl r2, r2, #2
	mov r0, #2
	mov r1, #6
	add r2, r4, r2
	bl sub_021AD7C8
	mov r0, #1
	pop {r4, pc}
	nop
_021A0908: .word 0x021A4214
	thumb_func_end ovy300_21a08d0

	thumb_func_start ovy300_21a090c
ovy300_21a090c: ; 0x021A090C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A09D4 ; =0x0000008B
	bl sub_0203CE0C
	mov r0, #0
	mov r7, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsB
	ldr r4, _021A09D8 ; =0x04000050
	ldr r6, _021A09DC ; =0x04001050
	strh r7, [r4]
	mov r0, #0
	strh r7, [r6]
	bl sub_02046DF8
	add r4, #0x1c
	add r0, r4, #0
	mov r4, #0
	sub r4, #0x10
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A095E
	ldr r0, [r5]
	ldr r0, [r0, #8]
	strb r7, [r0]
	b _021A0966
_021A095E:
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0]
_021A0966:
	bl ovy300_219fd54
	bl ovy300_219fd70
	bl ovy300_219ff5c
	add r0, r5, #0
	bl ovy300_21a02c0
	add r0, r5, #0
	bl ovy300_21a1ce8
	add r0, r5, #0
	bl ovy300_21a26ac
	add r0, r5, #0
	bl ovy300_21a0350
	mov r0, #1
	mov r1, #0x7b
	bl sub_02042BA8
	add r0, r5, #0
	bl ovy300_21a03a0
	add r0, r5, #0
	bl ovy300_21a0724
	add r0, r5, #0
	bl ovy300_21a0110
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0x10
	bl ovy300_21a01ac
	add r0, r5, #0
	bl ovy300_21a0538
	bl sub_021A026C
	add r0, r5, #0
	bl ovy300_219fc14
	add r0, r5, #0
	bl ovy300_219fc98
	ldr r0, _021A09E0 ; =0x000002B9
	mov r1, #0xff
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy300_21a088c
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A09D4: .word 0x0000008B
_021A09D8: .word 0x04000050
_021A09DC: .word 0x04001050
_021A09E0: .word 0x000002B9
	thumb_func_end ovy300_21a090c

	thumb_func_start ovy300_21a09e4
ovy300_21a09e4: ; 0x021A09E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ovy300_21a07d8
	cmp r0, #1
	beq _021A09FA
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	beq _021A09FE
_021A09FA:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A09FE:
	add r0, r4, #0
	bl sub_0219FCB0
	add r0, r4, #0
	bl sub_0219FC2C
	bl sub_021A02AC
	add r0, r4, #0
	bl sub_021A059C
	add r0, r4, #0
	bl sub_021A03F8
	add r0, r4, #0
	bl ovy300_21a0180
	add r0, r4, #0
	bl sub_021A0390
	add r0, r4, #0
	bl ovy300_21a26d4
	add r0, r4, #0
	bl ovy300_21a1d34
	add r0, r4, #0
	bl ovy300_21a031c
	bl ovy300_219fef8
	ldr r5, _021A0A74 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _021A0A78 ; =0x0400106C
	add r1, r6, #0
	add r0, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	sub r5, #0x1c
	strh r0, [r5]
	sub r4, #0x1c
	strh r0, [r4]
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsB
	ldr r0, _021A0A7C ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #0x1b
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0A74: .word 0x0400006C
_021A0A78: .word 0x0400106C
_021A0A7C: .word 0x0000008B
	thumb_func_end ovy300_21a09e4

	thumb_func_start ovy300_21a0a80
ovy300_21a0a80: ; 0x021A0A80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	bne _021A0A92
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
_021A0A92:
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a0a80

	thumb_func_start ovy300_21a0a98
ovy300_21a0a98: ; 0x021A0A98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	beq _021A0AAA
	mov r0, #3
	pop {r4, pc}
_021A0AAA:
	mov r0, #1
	bl ovy300_21a0234
	add r0, r4, #0
	bl ovy300_21a0404
	add r0, r4, #0
	bl ovy300_21a1ee4
	add r0, r4, #0
	bl ovy300_21a2d98
	bl ovy300_219ff34
	add r0, r4, #0
	bl sub_021A06B0
	ldr r0, _021A0B10 ; =0x000002B9
	ldrb r1, [r4, r0]
	cmp r1, #0xff
	bne _021A0B04
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a382c
	ldr r0, _021A0B14 ; =0x0400006C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021A0B18 ; =0x0400106C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	mov r1, #0
	add r0, r4, #0
	sub r1, #8
	bl ovy300_21a078c
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy300_21a01ac
	mov r0, #4
	pop {r4, pc}
_021A0B04:
	add r0, r4, #0
	bl ovy300_21a382c
	mov r0, #4
	pop {r4, pc}
	nop
_021A0B10: .word 0x000002B9
_021A0B14: .word 0x0400006C
_021A0B18: .word 0x0400106C
	thumb_func_end ovy300_21a0a98

	thumb_func_start ovy300_21a0b1c
ovy300_21a0b1c: ; 0x021A0B1C
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a07d8
	cmp r0, #1
	beq _021A0B32
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	beq _021A0B36
_021A0B32:
	mov r0, #4
	pop {r4, pc}
_021A0B36:
	add r0, r4, #0
	bl ovy300_21a38e8
	mov r1, #3
	mvn r1, r1
	cmp r0, r1
	bhi _021A0B6C
	blo _021A0B48
	b _021A0C94
_021A0B48:
	cmp r0, #9
	bhi _021A0B78
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A0B58: ; jump table
	.short _021A0B84 - _021A0B58 - 2 ; case 0
	.short _021A0BA0 - _021A0B58 - 2 ; case 1
	.short _021A0BBC - _021A0B58 - 2 ; case 2
	.short _021A0BD8 - _021A0B58 - 2 ; case 3
	.short _021A0BF4 - _021A0B58 - 2 ; case 4
	.short _021A0C10 - _021A0B58 - 2 ; case 5
	.short _021A0C24 - _021A0B58 - 2 ; case 6
	.short _021A0C38 - _021A0B58 - 2 ; case 7
	.short _021A0C46 - _021A0B58 - 2 ; case 8
	.short _021A0C6A - _021A0B58 - 2 ; case 9
_021A0B6C:
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021A0B7A
	bne _021A0B78
	b _021A0C9C
_021A0B78:
	b _021A0CC8
_021A0B7A:
	add r1, r1, #1
	cmp r0, r1
	bne _021A0B82
	b _021A0C9E
_021A0B82:
	b _021A0CC8
_021A0B84:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #9
	bl sub_021A1C94
	add r3, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0BA0:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xc
	bl sub_021A1C94
	add r3, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0BBC:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xf
	bl sub_021A1C94
	add r3, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0BD8:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0x12
	bl sub_021A1C94
	add r3, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0BF4:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0x15
	bl sub_021A1C94
	add r3, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0C10:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	mov r2, #5
	mov r3, #7
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0C24:
	ldr r0, _021A0CD8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	mov r3, #6
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0C38:
	ldr r0, _021A0CDC ; =0x00000646
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1ca4
	b _021A0CC8
_021A0C46:
	ldr r0, _021A0CE0 ; =0x00000556
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r4, #0
	mov r1, #3
	mov r2, #8
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x1a
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0C6A:
	ldr r0, _021A0CE4 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A08B8
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x1a
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0C94:
	ldr r0, _021A0CE8 ; =0x00000548
	bl GFL_SndSEPlay
	b _021A0CC8
_021A0C9C:
	b _021A0C94
_021A0C9E:
	ldr r0, _021A0CE4 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A08B8
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x1a
	bl ovy300_21a1c74
	pop {r4, pc}
_021A0CC8:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02035198
	mov r0, #4
	pop {r4, pc}
	nop
_021A0CD8: .word 0x0000054C
_021A0CDC: .word 0x00000646
_021A0CE0: .word 0x00000556
_021A0CE4: .word 0x00000551
_021A0CE8: .word 0x00000548
	thumb_func_end ovy300_21a0b1c

	thumb_func_start ovy300_21a0cec
ovy300_21a0cec: ; 0x021A0CEC
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	bl ovy300_21a3898
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ovy300_21a0cec

	thumb_func_start ovy300_21a0d08
ovy300_21a0d08: ; 0x021A0D08
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bl sub_021AD764
	add r0, r4, #0
	bl ovy300_21a1ee4
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl ovy300_21a2770
	mov r0, #4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a0d08

	thumb_func_start ovy300_21a0d2c
ovy300_21a0d2c: ; 0x021A0D2C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021A0E18 ; =0x000002BB
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A0D52
	ldr r0, _021A0E1C ; =0x0000063F
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a05ac
	add r0, r4, #0
	bl sub_021A2678
	add r0, r4, #0
	bl ovy300_21a21a0
_021A0D52:
	ldr r0, _021A0E18 ; =0x000002BB
	ldrb r0, [r4, r0]
	cmp r0, #0x64
	bne _021A0D5E
	bl sub_02006280
_021A0D5E:
	ldr r5, _021A0E18 ; =0x000002BB
	ldrb r0, [r4, r5]
	cmp r0, #1
	bne _021A0D84
	add r0, r4, #0
	bl sub_021A08B8
	ldr r1, [r4]
	ldr r2, _021A0E20 ; =0x0000807B
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bl sub_021ADECC
	add r1, r5, #0
	add r1, #0x11
	str r0, [r4, r1]
	mov r0, #0
	add r5, #0x15
	str r0, [r4, r5]
_021A0D84:
	ldr r5, _021A0E18 ; =0x000002BB
	ldrb r0, [r4, r5]
	cmp r0, #2
	blo _021A0DC6
	add r0, r5, #0
	add r0, #0x15
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A0DC6
	add r0, r5, #0
	add r0, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x69
	add r2, sp, #0
	add r3, sp, #4
	bl sub_021ADF0C
	add r1, r5, #0
	add r1, #0x15
	str r0, [r4, r1]
	cmp r0, #1
	bne _021A0DC6
	add r0, sp, #0
	ldrh r1, [r0]
	ldr r0, [r4]
	add r5, #0x11
	strh r1, [r0, #0x14]
	ldr r1, [sp, #4]
	ldr r0, [r4]
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_021ADF04
_021A0DC6:
	ldr r5, _021A0E18 ; =0x000002BB
	ldrb r1, [r4, r5]
	cmp r1, #0x79
	bne _021A0E04
	add r5, #0x15
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A0E10
	ldr r0, [r4]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _021A0DEC
	ldr r0, _021A0E24 ; =0x0000076E
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A2684
	b _021A0DF8
_021A0DEC:
	ldr r0, _021A0E28 ; =0x00000557
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A2690
_021A0DF8:
	ldr r0, _021A0E18 ; =0x000002BB
	mov r1, #0
	strb r1, [r4, r0]
	add sp, #8
	mov r0, #8
	pop {r3, r4, r5, pc}
_021A0E04:
	add r0, r4, #0
	bl ovy300_21a3804
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
_021A0E10:
	mov r0, #7
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A0E18: .word 0x000002BB
_021A0E1C: .word 0x0000063F
_021A0E20: .word 0x0000807B
_021A0E24: .word 0x0000076E
_021A0E28: .word 0x00000557
	thumb_func_end ovy300_21a0d2c

	thumb_func_start ovy300_21a0e2c
ovy300_21a0e2c: ; 0x021A0E2C
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a3a7c
	cmp r0, #1
	bne _021A0E7C
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _021A0E48
	mov r0, #0
	str r0, [r1, #0xc]
	mov r0, #0x1a
	pop {r4, pc}
_021A0E48:
	add r0, r4, #0
	bl ovy300_21a0628
	add r0, r4, #0
	bl ovy300_21a2164
	bl sub_0203D554
	cmp r0, #1
	bne _021A0E66
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	b _021A0E6E
_021A0E66:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
_021A0E6E:
	bl sub_0202BA74
	add r0, r4, #0
	bl ovy300_21a088c
	mov r0, #4
	pop {r4, pc}
_021A0E7C:
	mov r0, #8
	pop {r4, pc}
	thumb_func_end ovy300_21a0e2c

	thumb_func_start ovy300_21a0e80
ovy300_21a0e80: ; 0x021A0E80
	push {r3, r4, r5, lr}
	ldr r4, _021A0EE4 ; =0x000002BA
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021A0E92
	cmp r0, #1
	beq _021A0EB0
	b _021A0EDE
_021A0E92:
	mov r1, #0
	sub r0, r4, #1
	strb r1, [r5, r0]
	mov r0, #1
	bl ovy300_21a0234
	add r0, r5, #0
	bl ovy300_21a21bc
	add r0, r5, #0
	bl ovy300_21a3bb4
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_021A0EB0:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021A0EDE
	add r0, r5, #0
	bl ovy300_21a2e00
	add r0, r5, #0
	bl ovy300_21a0448
	bl ovy300_219ff48
	add r0, r5, #0
	bl sub_021A06B0
	mov r0, #0
	add r4, #0xda
	strb r0, [r5, r4]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_021A0EDE:
	mov r0, #9
	pop {r3, r4, r5, pc}
	nop
_021A0EE4: .word 0x000002BA
	thumb_func_end ovy300_21a0e80

	thumb_func_start ovy300_21a0ee8
ovy300_21a0ee8: ; 0x021A0EE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219B2E0
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021A0F30
	cmp r5, #5
	bhi _021A0FB4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0F10: ; jump table
	.short _021A0F1C - _021A0F10 - 2 ; case 0
	.short _021A0F1C - _021A0F10 - 2 ; case 1
	.short _021A0F1C - _021A0F10 - 2 ; case 2
	.short _021A0F1C - _021A0F10 - 2 ; case 3
	.short _021A0F1C - _021A0F10 - 2 ; case 4
	.short _021A0F1C - _021A0F10 - 2 ; case 5
_021A0F1C:
	bl sub_0203D554
	cmp r0, #0
	bne _021A0FB4
	ldr r0, _021A0FB8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	b _021A0FB0
_021A0F30:
	add r0, r4, #0
	bl ovy300_21a3acc
	add r5, r0, #0
	cmp r5, #9
	bhi _021A0FB4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0F48: ; jump table
	.short _021A0F5C - _021A0F48 - 2 ; case 0
	.short _021A0FA6 - _021A0F48 - 2 ; case 1
	.short _021A0FA6 - _021A0F48 - 2 ; case 2
	.short _021A0FA6 - _021A0F48 - 2 ; case 3
	.short _021A0FA6 - _021A0F48 - 2 ; case 4
	.short _021A0FA6 - _021A0F48 - 2 ; case 5
	.short _021A0FA6 - _021A0F48 - 2 ; case 6
	.short _021A0FB4 - _021A0F48 - 2 ; case 7
	.short _021A0F7A - _021A0F48 - 2 ; case 8
	.short _021A0F98 - _021A0F48 - 2 ; case 9
_021A0F5C:
	ldr r0, _021A0FBC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0xb
	bl ovy300_21a1c74
	pop {r3, r4, r5, pc}
_021A0F7A:
	ldr r0, _021A0FBC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0xb
	bl ovy300_21a1c74
	pop {r3, r4, r5, pc}
_021A0F98:
	ldr r0, _021A0FB8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1a90
	b _021A0FB4
_021A0FA6:
	ldr r0, _021A0FB8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	sub r1, r5, #1
_021A0FB0:
	bl ovy300_21a1a64
_021A0FB4:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0FB8: .word 0x0000054C
_021A0FBC: .word 0x00000551
	thumb_func_end ovy300_21a0ee8

	thumb_func_start ovy300_21a0fc0
ovy300_21a0fc0: ; 0x021A0FC0
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	bl ovy300_21a2d0c
	add r0, r4, #0
	bl ovy300_21a3ed0
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy300_21a0fc0

	thumb_func_start ovy300_21a0fd8
ovy300_21a0fd8: ; 0x021A0FD8
	push {r4, r5, r6, lr}
	ldr r4, _021A1040 ; =0x000002BA
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021A0FEA
	cmp r0, #1
	beq _021A1006
	b _021A103C
_021A0FEA:
	mov r0, #1
	sub r1, r4, #1
	strb r0, [r5, r1]
	bl ovy300_21a0234
	add r0, r5, #0
	bl ovy300_21a2278
	add r0, r5, #0
	bl ovy300_21a3c5c
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_021A1006:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021A103C
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy300_21a30a8
	add r0, r5, #0
	bl ovy300_21a2e24
	add r0, r5, #0
	bl ovy300_21a0478
	bl ovy300_219ff48
	add r0, r5, #0
	bl sub_021A06B0
	add r4, #0xda
	strb r6, [r5, r4]
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_021A103C:
	mov r0, #0xc
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1040: .word 0x000002BA
	thumb_func_end ovy300_21a0fd8

	thumb_func_start ovy300_21a1044
ovy300_21a1044: ; 0x021A1044
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x1e
	add r4, r0, #0
	lsl r7, r7, #4
	ldr r0, [r4, r7]
	mov r6, #0xd
	bl sub_0219B2E0
	add r5, r0, #0
	mov r0, #0xd
	sub r0, #0x17
	cmp r5, r0
	bhi _021A109E
	add r0, r6, #0
	sub r0, #0x17
	cmp r5, r0
	bhs _021A10FE
	add r0, r6, #0
	sub r0, #0x19
	cmp r5, r0
	bhi _021A1094
	add r0, r6, #0
	sub r0, #0x19
	cmp r5, r0
	bhs _021A109C
	cmp r5, #6
	bhi _021A109C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1086: ; jump table
	.short _021A10E8 - _021A1086 - 2 ; case 0
	.short _021A10E8 - _021A1086 - 2 ; case 1
	.short _021A10E8 - _021A1086 - 2 ; case 2
	.short _021A10E8 - _021A1086 - 2 ; case 3
	.short _021A10E8 - _021A1086 - 2 ; case 4
	.short _021A10E8 - _021A1086 - 2 ; case 5
	.short _021A10E8 - _021A1086 - 2 ; case 6
_021A1094:
	mov r0, #0xa
	mvn r0, r0
	cmp r5, r0
	beq _021A10FE
_021A109C:
	b _021A1206
_021A109E:
	add r0, r6, #0
	sub r0, #0x15
	cmp r5, r0
	bhi _021A10B8
	add r0, r6, #0
	sub r0, #0x15
	cmp r5, r0
	bhs _021A10FE
	add r0, r6, #0
	sub r0, #0x16
	cmp r5, r0
	beq _021A10FE
	b _021A1206
_021A10B8:
	add r0, r6, #0
	sub r0, #0x14
	cmp r5, r0
	bhi _021A10CA
	add r0, r6, #0
	sub r0, #0x14
	cmp r5, r0
	beq _021A1108
	b _021A1206
_021A10CA:
	add r0, r5, #6
	cmp r0, #5
	bhi _021A10F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A10DC: ; jump table
	.short _021A1122 - _021A10DC - 2 ; case 0
	.short _021A112C - _021A10DC - 2 ; case 1
	.short _021A1144 - _021A10DC - 2 ; case 2
	.short _021A115C - _021A10DC - 2 ; case 3
	.short _021A115C - _021A10DC - 2 ; case 4
	.short _021A117A - _021A10DC - 2 ; case 5
_021A10E8:
	bl sub_0203D554
	cmp r0, #0
	beq _021A10F2
_021A10F0:
	b _021A1206
_021A10F2:
	ldr r0, _021A1210 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	b _021A1202
_021A10FE:
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	b _021A1206
_021A1108:
	add r0, r4, #0
	mov r5, #6
	mov r1, #6
	mov r2, #0xc
_021A1110:
	bl ovy300_21a2738
	add r7, #0xe1
	strb r5, [r4, r7]
	mov r0, #0
_021A111A:
	str r6, [r4, #0x18]
	str r0, [r4, #0x14]
	mov r6, #0x18
	b _021A1206
_021A1122:
	add r0, r4, #0
	mov r5, #5
	mov r1, #5
	add r2, r6, #0
	b _021A1110
_021A112C:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0xc
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A1144:
	add r0, r4, #0
	mov r1, #5
	add r2, r6, #0
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A115C:
	add r0, r4, #0
	bl ovy300_21a319c
	ldr r2, [r4]
	add r0, r4, #0
	ldr r2, [r2, #8]
	mov r1, #0
	ldrb r2, [r2, #2]
	bl ovy300_21a343c
	mov r0, #0x39
	add r7, #0xe1
	strb r0, [r4, r7]
	mov r0, #1
	b _021A111A
_021A117A:
	add r0, r4, #0
	bl ovy300_21a3acc
	add r5, r0, #0
	cmp r5, #9
	bhi _021A1206
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1192: ; jump table
	.short _021A11A6 - _021A1192 - 2 ; case 0
	.short _021A11F0 - _021A1192 - 2 ; case 1
	.short _021A11F0 - _021A1192 - 2 ; case 2
	.short _021A11F0 - _021A1192 - 2 ; case 3
	.short _021A11F0 - _021A1192 - 2 ; case 4
	.short _021A11F0 - _021A1192 - 2 ; case 5
	.short _021A11F0 - _021A1192 - 2 ; case 6
	.short _021A11F0 - _021A1192 - 2 ; case 7
	.short _021A11C4 - _021A1192 - 2 ; case 8
	.short _021A11E2 - _021A1192 - 2 ; case 9
_021A11A6:
	ldr r0, _021A1214 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0xe
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A11C4:
	ldr r0, _021A1214 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0xe
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A11E2:
	ldr r0, _021A1210 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1af8
	b _021A1206
_021A11F0:
	ldr r0, _021A1210 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	add r0, r4, #0
	sub r1, r5, #1
_021A1202:
	bl ovy300_21a1aac
_021A1206:
	add r0, r4, #0
	bl ovy300_21a3060
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1210: .word 0x0000054C
_021A1214: .word 0x00000551
	thumb_func_end ovy300_21a1044

	thumb_func_start ovy300_21a1218
ovy300_21a1218: ; 0x021A1218
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	bl ovy300_21a2d0c
	add r0, r4, #0
	bl ovy300_21a3ed0
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy300_21a1218

	thumb_func_start ovy300_21a1230
ovy300_21a1230: ; 0x021A1230
	push {r4, r5, r6, lr}
	ldr r4, _021A129C ; =0x000002BA
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021A1242
	cmp r0, #1
	beq _021A1260
	b _021A1296
_021A1242:
	mov r1, #2
	sub r0, r4, #1
	strb r1, [r5, r0]
	mov r0, #1
	bl ovy300_21a0234
	add r0, r5, #0
	bl ovy300_21a2354
	add r0, r5, #0
	bl ovy300_21a3d04
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_021A1260:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021A1296
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy300_21a30a8
	add r0, r5, #0
	bl ovy300_21a2e80
	add r0, r5, #0
	bl ovy300_21a04a8
	bl ovy300_219ff48
	add r0, r5, #0
	bl sub_021A06B0
	add r4, #0xda
	strb r6, [r5, r4]
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_021A1296:
	mov r0, #0xf
	pop {r4, r5, r6, pc}
	nop
_021A129C: .word 0x000002BA
	thumb_func_end ovy300_21a1230

	thumb_func_start ovy300_21a12a0
ovy300_21a12a0: ; 0x021A12A0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x1e
	add r4, r0, #0
	lsl r7, r7, #4
	ldr r0, [r4, r7]
	mov r6, #0x10
	bl sub_0219B2E0
	add r5, r0, #0
	mov r0, #0x10
	sub r0, #0x1a
	cmp r5, r0
	bhi _021A12FA
	add r0, r6, #0
	sub r0, #0x1a
	cmp r5, r0
	bhs _021A135A
	add r0, r6, #0
	sub r0, #0x1c
	cmp r5, r0
	bhi _021A12F0
	add r0, r6, #0
	sub r0, #0x1c
	cmp r5, r0
	bhs _021A12F8
	cmp r5, #6
	bhi _021A12F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A12E2: ; jump table
	.short _021A1344 - _021A12E2 - 2 ; case 0
	.short _021A1344 - _021A12E2 - 2 ; case 1
	.short _021A1344 - _021A12E2 - 2 ; case 2
	.short _021A1344 - _021A12E2 - 2 ; case 3
	.short _021A1344 - _021A12E2 - 2 ; case 4
	.short _021A1344 - _021A12E2 - 2 ; case 5
	.short _021A1344 - _021A12E2 - 2 ; case 6
_021A12F0:
	mov r0, #0xa
	mvn r0, r0
	cmp r5, r0
	beq _021A135A
_021A12F8:
	b _021A148A
_021A12FA:
	add r0, r6, #0
	sub r0, #0x18
	cmp r5, r0
	bhi _021A1314
	add r0, r6, #0
	sub r0, #0x18
	cmp r5, r0
	bhs _021A135A
	add r0, r6, #0
	sub r0, #0x19
	cmp r5, r0
	beq _021A135A
	b _021A148A
_021A1314:
	add r0, r6, #0
	sub r0, #0x17
	cmp r5, r0
	bhi _021A1326
	add r0, r6, #0
	sub r0, #0x17
	cmp r5, r0
	beq _021A1364
	b _021A148A
_021A1326:
	add r0, r5, #6
	cmp r0, #5
	bhi _021A134C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1338: ; jump table
	.short _021A137E - _021A1338 - 2 ; case 0
	.short _021A1388 - _021A1338 - 2 ; case 1
	.short _021A13A0 - _021A1338 - 2 ; case 2
	.short _021A13B8 - _021A1338 - 2 ; case 3
	.short _021A13B8 - _021A1338 - 2 ; case 4
	.short _021A13FE - _021A1338 - 2 ; case 5
_021A1344:
	bl sub_0203D554
	cmp r0, #0
	beq _021A134E
_021A134C:
	b _021A148A
_021A134E:
	ldr r0, _021A1494 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	b _021A1486
_021A135A:
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	b _021A148A
_021A1364:
	add r0, r4, #0
	mov r5, #6
	mov r1, #6
	mov r2, #0xc
_021A136C:
	bl ovy300_21a2738
	add r7, #0xe1
	strb r5, [r4, r7]
	mov r0, #0
	str r0, [r4, #0x14]
_021A1378:
	str r6, [r4, #0x18]
	mov r6, #0x18
	b _021A148A
_021A137E:
	add r0, r4, #0
	mov r5, #5
	mov r1, #5
	mov r2, #0xd
	b _021A136C
_021A1388:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0xc
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A13A0:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A13B8:
	add r0, r4, #0
	bl ovy300_21a319c
	ldr r1, [r4]
	add r0, r4, #0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #3]
	bl sub_021A0870
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	bl ovy300_21a343c
	ldr r1, [r4]
	add r0, r4, #0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #4]
	bl sub_021A0870
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	mov r1, #1
	lsr r2, r2, #0x10
	mov r5, #1
	bl ovy300_21a343c
	mov r0, #0x39
	add r7, #0xe1
	strb r0, [r4, r7]
	str r5, [r4, #0x14]
	b _021A1378
_021A13FE:
	add r0, r4, #0
	bl ovy300_21a3acc
	add r5, r0, #0
	cmp r5, #9
	bhi _021A148A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1416: ; jump table
	.short _021A142A - _021A1416 - 2 ; case 0
	.short _021A1474 - _021A1416 - 2 ; case 1
	.short _021A1474 - _021A1416 - 2 ; case 2
	.short _021A1474 - _021A1416 - 2 ; case 3
	.short _021A1474 - _021A1416 - 2 ; case 4
	.short _021A1474 - _021A1416 - 2 ; case 5
	.short _021A1474 - _021A1416 - 2 ; case 6
	.short _021A1474 - _021A1416 - 2 ; case 7
	.short _021A1448 - _021A1416 - 2 ; case 8
	.short _021A1466 - _021A1416 - 2 ; case 9
_021A142A:
	ldr r0, _021A1498 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x11
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A1448:
	ldr r0, _021A1498 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x11
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A1466:
	ldr r0, _021A1494 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1b8c
	b _021A148A
_021A1474:
	ldr r0, _021A1494 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	add r0, r4, #0
	sub r1, r5, #1
_021A1486:
	bl ovy300_21a1b10
_021A148A:
	add r0, r4, #0
	bl ovy300_21a3060
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1494: .word 0x0000054C
_021A1498: .word 0x00000551
	thumb_func_end ovy300_21a12a0

	thumb_func_start ovy300_21a149c
ovy300_21a149c: ; 0x021A149C
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	bl ovy300_21a2d0c
	add r0, r4, #0
	bl ovy300_21a3ed0
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy300_21a149c

	thumb_func_start ovy300_21a14b4
ovy300_21a14b4: ; 0x021A14B4
	push {r4, r5, r6, lr}
	ldr r4, _021A1520 ; =0x000002BA
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021A14C6
	cmp r0, #1
	beq _021A14E4
	b _021A151A
_021A14C6:
	mov r1, #3
	sub r0, r4, #1
	strb r1, [r5, r0]
	mov r0, #1
	bl ovy300_21a0234
	add r0, r5, #0
	bl ovy300_21a248c
	add r0, r5, #0
	bl ovy300_21a3db4
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_021A14E4:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021A151A
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy300_21a30a8
	add r0, r5, #0
	bl ovy300_21a2edc
	add r0, r5, #0
	bl ovy300_21a04d8
	bl ovy300_219ff48
	add r0, r5, #0
	bl sub_021A06B0
	add r4, #0xda
	strb r6, [r5, r4]
	mov r0, #0x13
	pop {r4, r5, r6, pc}
_021A151A:
	mov r0, #0x12
	pop {r4, r5, r6, pc}
	nop
_021A1520: .word 0x000002BA
	thumb_func_end ovy300_21a14b4

	thumb_func_start ovy300_21a1524
ovy300_21a1524: ; 0x021A1524
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x1e
	add r4, r0, #0
	lsl r7, r7, #4
	ldr r0, [r4, r7]
	mov r6, #0x13
	bl sub_0219B2E0
	add r5, r0, #0
	mov r0, #0x13
	sub r0, #0x1d
	cmp r5, r0
	bhi _021A157E
	add r0, r6, #0
	sub r0, #0x1d
	cmp r5, r0
	bhs _021A15DE
	add r0, r6, #0
	sub r0, #0x1f
	cmp r5, r0
	bhi _021A1574
	add r0, r6, #0
	sub r0, #0x1f
	cmp r5, r0
	bhs _021A157C
	cmp r5, #6
	bhi _021A157C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1566: ; jump table
	.short _021A15C8 - _021A1566 - 2 ; case 0
	.short _021A15C8 - _021A1566 - 2 ; case 1
	.short _021A15C8 - _021A1566 - 2 ; case 2
	.short _021A15C8 - _021A1566 - 2 ; case 3
	.short _021A15C8 - _021A1566 - 2 ; case 4
	.short _021A15C8 - _021A1566 - 2 ; case 5
	.short _021A15C8 - _021A1566 - 2 ; case 6
_021A1574:
	mov r0, #0xa
	mvn r0, r0
	cmp r5, r0
	beq _021A15DE
_021A157C:
	b _021A16E6
_021A157E:
	add r0, r6, #0
	sub r0, #0x1b
	cmp r5, r0
	bhi _021A1598
	add r0, r6, #0
	sub r0, #0x1b
	cmp r5, r0
	bhs _021A15DE
	add r0, r6, #0
	sub r0, #0x1c
	cmp r5, r0
	beq _021A15DE
	b _021A16E6
_021A1598:
	add r0, r6, #0
	sub r0, #0x1a
	cmp r5, r0
	bhi _021A15AA
	add r0, r6, #0
	sub r0, #0x1a
	cmp r5, r0
	beq _021A15E8
	b _021A16E6
_021A15AA:
	add r0, r5, #6
	cmp r0, #5
	bhi _021A15D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A15BC: ; jump table
	.short _021A1602 - _021A15BC - 2 ; case 0
	.short _021A160C - _021A15BC - 2 ; case 1
	.short _021A1624 - _021A15BC - 2 ; case 2
	.short _021A163C - _021A15BC - 2 ; case 3
	.short _021A163C - _021A15BC - 2 ; case 4
	.short _021A165A - _021A15BC - 2 ; case 5
_021A15C8:
	bl sub_0203D554
	cmp r0, #0
	beq _021A15D2
_021A15D0:
	b _021A16E6
_021A15D2:
	ldr r0, _021A16F0 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	b _021A16E2
_021A15DE:
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	b _021A16E6
_021A15E8:
	add r0, r4, #0
	mov r5, #6
	mov r1, #6
	mov r2, #0xc
_021A15F0:
	bl ovy300_21a2738
	add r7, #0xe1
	strb r5, [r4, r7]
	mov r0, #0
_021A15FA:
	str r6, [r4, #0x18]
	str r0, [r4, #0x14]
	mov r6, #0x18
	b _021A16E6
_021A1602:
	add r0, r4, #0
	mov r5, #5
	mov r1, #5
	mov r2, #0xd
	b _021A15F0
_021A160C:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0xc
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A1624:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	add r3, r6, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A163C:
	add r0, r4, #0
	bl ovy300_21a319c
	ldr r2, [r4]
	add r0, r4, #0
	ldr r2, [r2, #8]
	mov r1, #0
	ldrb r2, [r2, #5]
	bl ovy300_21a343c
	mov r0, #0x39
	add r7, #0xe1
	strb r0, [r4, r7]
	mov r0, #1
	b _021A15FA
_021A165A:
	add r0, r4, #0
	bl ovy300_21a3acc
	add r5, r0, #0
	cmp r5, #9
	bhi _021A16E6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1672: ; jump table
	.short _021A1686 - _021A1672 - 2 ; case 0
	.short _021A16D0 - _021A1672 - 2 ; case 1
	.short _021A16D0 - _021A1672 - 2 ; case 2
	.short _021A16D0 - _021A1672 - 2 ; case 3
	.short _021A16D0 - _021A1672 - 2 ; case 4
	.short _021A16D0 - _021A1672 - 2 ; case 5
	.short _021A16D0 - _021A1672 - 2 ; case 6
	.short _021A16D0 - _021A1672 - 2 ; case 7
	.short _021A16A4 - _021A1672 - 2 ; case 8
	.short _021A16C2 - _021A1672 - 2 ; case 9
_021A1686:
	ldr r0, _021A16F4 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x14
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A16A4:
	ldr r0, _021A16F4 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x14
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A16C2:
	ldr r0, _021A16F0 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1bf8
	b _021A16E6
_021A16D0:
	ldr r0, _021A16F0 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	add r0, r4, #0
	sub r1, r5, #1
_021A16E2:
	bl ovy300_21a1bac
_021A16E6:
	add r0, r4, #0
	bl ovy300_21a3060
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A16F0: .word 0x0000054C
_021A16F4: .word 0x00000551
	thumb_func_end ovy300_21a1524

	thumb_func_start ovy300_21a16f8
ovy300_21a16f8: ; 0x021A16F8
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	bl ovy300_21a2d0c
	add r0, r4, #0
	bl ovy300_21a3ed0
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy300_21a16f8

	thumb_func_start ovy300_21a1710
ovy300_21a1710: ; 0x021A1710
	push {r4, r5, r6, lr}
	ldr r4, _021A177C ; =0x000002BA
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021A1722
	cmp r0, #1
	beq _021A1740
	b _021A1776
_021A1722:
	mov r1, #4
	sub r0, r4, #1
	strb r1, [r5, r0]
	mov r0, #1
	bl ovy300_21a0234
	add r0, r5, #0
	bl ovy300_21a2568
	add r0, r5, #0
	bl ovy300_21a3e4c
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_021A1740:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0219B294
	cmp r0, #0
	bne _021A1776
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy300_21a30a8
	add r0, r5, #0
	bl ovy300_21a2f38
	add r0, r5, #0
	bl ovy300_21a0508
	bl ovy300_219ff48
	add r0, r5, #0
	bl sub_021A06B0
	add r4, #0xda
	strb r6, [r5, r4]
	mov r0, #0x16
	pop {r4, r5, r6, pc}
_021A1776:
	mov r0, #0x15
	pop {r4, r5, r6, pc}
	nop
_021A177C: .word 0x000002BA
	thumb_func_end ovy300_21a1710

	thumb_func_start ovy300_21a1780
ovy300_21a1780: ; 0x021A1780
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x1e
	add r4, r0, #0
	lsl r7, r7, #4
	ldr r0, [r4, r7]
	mov r5, #0x16
	bl sub_0219B2E0
	add r6, r0, #0
	mov r0, #0x16
	sub r0, #0x21
	cmp r6, r0
	bhi _021A17C2
	add r0, r5, #0
	sub r0, #0x21
	cmp r6, r0
	bhs _021A1810
	cmp r6, #3
	bhi _021A17BA
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A17B2: ; jump table
	.short _021A17FA - _021A17B2 - 2 ; case 0
	.short _021A17FA - _021A17B2 - 2 ; case 1
	.short _021A17FA - _021A17B2 - 2 ; case 2
	.short _021A17FA - _021A17B2 - 2 ; case 3
_021A17BA:
	mov r0, #0xb
	mvn r0, r0
	cmp r6, r0
	b _021A1916
_021A17C2:
	add r0, r5, #0
	sub r0, #0x20
	cmp r6, r0
	bhi _021A17D4
	add r0, r5, #0
	sub r0, #0x20
	cmp r6, r0
	beq _021A1810
	b _021A1916
_021A17D4:
	add r0, r6, #0
	add r0, #9
	cmp r0, #8
	bhi _021A1802
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A17E8: ; jump table
	.short _021A1810 - _021A17E8 - 2 ; case 0
	.short _021A1810 - _021A17E8 - 2 ; case 1
	.short _021A181A - _021A17E8 - 2 ; case 2
	.short _021A1834 - _021A17E8 - 2 ; case 3
	.short _021A183E - _021A17E8 - 2 ; case 4
	.short _021A1856 - _021A17E8 - 2 ; case 5
	.short _021A186E - _021A17E8 - 2 ; case 6
	.short _021A186E - _021A17E8 - 2 ; case 7
	.short _021A188A - _021A17E8 - 2 ; case 8
_021A17FA:
	bl sub_0203D554
	cmp r0, #0
	beq _021A1804
_021A1802:
	b _021A1916
_021A1804:
	ldr r0, _021A1920 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r6, #0
	b _021A1912
_021A1810:
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	b _021A1916
_021A181A:
	add r0, r4, #0
	mov r6, #6
	mov r1, #6
	mov r2, #0xc
_021A1822:
	bl ovy300_21a2738
	add r7, #0xe1
	strb r6, [r4, r7]
	mov r0, #0
_021A182C:
	str r5, [r4, #0x18]
	str r0, [r4, #0x14]
	mov r5, #0x18
	b _021A1916
_021A1834:
	add r0, r4, #0
	mov r6, #5
	mov r1, #5
	mov r2, #0xd
	b _021A1822
_021A183E:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0xc
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r5, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A1856:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	add r3, r5, #0
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A186E:
	add r0, r4, #0
	bl ovy300_21a2fd8
	add r0, r4, #0
	bl ovy300_21a319c
	add r0, r4, #0
	bl ovy300_21a34a4
	mov r0, #0x39
	add r7, #0xe1
	strb r0, [r4, r7]
	mov r0, #1
	b _021A182C
_021A188A:
	add r0, r4, #0
	bl ovy300_21a3b40
	add r6, r0, #0
	cmp r6, #9
	bhi _021A1916
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A18A2: ; jump table
	.short _021A18B6 - _021A18A2 - 2 ; case 0
	.short _021A1900 - _021A18A2 - 2 ; case 1
	.short _021A1900 - _021A18A2 - 2 ; case 2
	.short _021A1900 - _021A18A2 - 2 ; case 3
	.short _021A1900 - _021A18A2 - 2 ; case 4
	.short _021A1916 - _021A18A2 - 2 ; case 5
	.short _021A1916 - _021A18A2 - 2 ; case 6
	.short _021A1916 - _021A18A2 - 2 ; case 7
	.short _021A18D4 - _021A18A2 - 2 ; case 8
	.short _021A18F2 - _021A18A2 - 2 ; case 9
_021A18B6:
	ldr r0, _021A1924 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x17
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A18D4:
	ldr r0, _021A1924 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	mov r2, #9
	bl ovy300_21a2738
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x17
	bl ovy300_21a1c74
	pop {r3, r4, r5, r6, r7, pc}
_021A18F2:
	ldr r0, _021A1920 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy300_21a1c5c
	b _021A1916
_021A1900:
	ldr r0, _021A1920 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
	add r0, r4, #0
	sub r1, r6, #1
_021A1912:
	bl ovy300_21a1c10
_021A1916:
	add r0, r4, #0
	bl ovy300_21a3060
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1920: .word 0x0000054C
_021A1924: .word 0x00000551
	thumb_func_end ovy300_21a1780

	thumb_func_start ovy300_21a1928
ovy300_21a1928: ; 0x021A1928
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a06bc
	add r0, r4, #0
	bl ovy300_21a2d0c
	add r0, r4, #0
	bl ovy300_21a3ed0
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy300_21a1928

	thumb_func_start ovy300_21a1940
ovy300_21a1940: ; 0x021A1940
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A1950
	cmp r1, #1
	beq _021A196A
	b _021A1988
_021A1950:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219B2E0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A1988
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021A1988
_021A196A:
	ldr r1, _021A198C ; =0x000002C1
	ldrb r1, [r4, r1]
	cmp r1, #0x39
	beq _021A197A
	bl sub_021A2760
	cmp r0, #0
	bne _021A1988
_021A197A:
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x14]
	bl ovy300_21a30a8
	ldr r0, [r4, #0x18]
	pop {r4, pc}
_021A1988:
	mov r0, #0x18
	pop {r4, pc}
	.align 2, 0
_021A198C: .word 0x000002C1
	thumb_func_end ovy300_21a1940

	thumb_func_start ovy300_21a1990
ovy300_21a1990: ; 0x021A1990
	push {r3, r4, r5, lr}
	mov r5, #0xb
	add r4, r0, #0
	lsl r5, r5, #6
	ldrb r1, [r4, r5]
	cmp r1, #0
	bne _021A1A1E
	add r1, r5, #2
	ldrb r1, [r4, r1]
	cmp r1, #4
	bhi _021A1A3E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A19B2: ; jump table
	.short _021A19BC - _021A19B2 - 2 ; case 0
	.short _021A19EA - _021A19B2 - 2 ; case 1
	.short _021A19BC - _021A19B2 - 2 ; case 2
	.short _021A19EA - _021A19B2 - 2 ; case 3
	.short _021A19FC - _021A19B2 - 2 ; case 4
_021A19BC:
	add r1, r5, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021A19DE
	add r1, r5, #1
	ldrb r1, [r4, r1]
	mov r2, #1
_021A19CA:
	bl ovy300_21a38b0
	mov r1, #4
	add r0, r5, #3
	strb r1, [r4, r0]
	add r0, r5, #2
	ldrb r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #2
	b _021A19E6
_021A19DE:
	add r0, r5, #3
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	add r0, r5, #3
_021A19E6:
	strb r1, [r4, r0]
	b _021A1A3E
_021A19EA:
	add r1, r5, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021A19FA
	add r1, r5, #1
	ldrb r1, [r4, r1]
	mov r2, #2
	b _021A19CA
_021A19FA:
	b _021A19DE
_021A19FC:
	bl sub_0203D554
	cmp r0, #1
	bne _021A1A0E
	add r1, r5, #1
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #1
	b _021A1A16
_021A1A0E:
	add r1, r5, #1
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #3
_021A1A16:
	bl ovy300_21a38b0
	ldr r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_021A1A1E:
	add r1, r5, #1
	ldrb r1, [r4, r1]
	bl sub_021A2760
	cmp r0, #0
	bne _021A1A3E
	sub r5, #0xe0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A1A3A
	add r0, r4, #0
	mov r1, #0
	bl ovy300_21a30a8
_021A1A3A:
	ldr r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_021A1A3E:
	mov r0, #0x19
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1990

	thumb_func_start ovy300_21a1a44
ovy300_21a1a44: ; 0x021A1A44
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a3898
	add r0, r4, #0
	mov r1, #8
	bl ovy300_21a078c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl ovy300_21a01ac
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1a44

	thumb_func_start ovy300_21a1a64
ovy300_21a1a64: ; 0x021A1A64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0, #8]
	strb r4, [r0, #1]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC58
	add r0, r5, #0
	bl ovy300_21a2238
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl ovy300_21a31dc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1a64

	thumb_func_start ovy300_21a1a90
ovy300_21a1a90: ; 0x021A1A90
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r2, #0
	ldr r1, [r1, #8]
	strb r2, [r1, #1]
	bl ovy300_21a2238
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a31dc
	pop {r4, pc}
	thumb_func_end ovy300_21a1a90

	thumb_func_start ovy300_21a1aac
ovy300_21a1aac: ; 0x021A1AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0219CC3C
	add r2, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #2]
	cmp r0, r2
	bne _021A1AD6
	mov r0, #0xff
	strb r0, [r1, #2]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0
	b _021A1AE0
_021A1AD6:
	strb r2, [r1, #2]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
_021A1AE0:
	bl ovy300_21a31dc
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC58
	add r0, r5, #0
	bl ovy300_21a22f8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a1aac

	thumb_func_start ovy300_21a1af8
ovy300_21a1af8: ; 0x021A1AF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r2, #0xff
	ldr r1, [r1, #8]
	strb r2, [r1, #2]
	bl ovy300_21a22f8
	add r0, r4, #0
	bl ovy300_21a319c
	pop {r4, pc}
	thumb_func_end ovy300_21a1af8

	thumb_func_start ovy300_21a1b10
ovy300_21a1b10: ; 0x021A1B10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0219CC3C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r4, r1
	bl sub_021A086C
	ldr r1, [r5]
	ldr r1, [r1, #8]
	ldrb r3, [r1, #3]
	cmp r3, #0xff
	bne _021A1B38
_021A1B34:
	strb r0, [r1, #3]
	b _021A1B68
_021A1B38:
	ldrb r2, [r1, #4]
	cmp r2, #0xff
	bne _021A1B48
	cmp r3, r0
	bne _021A1B46
	mov r0, #0xff
	b _021A1B34
_021A1B46:
	b _021A1B66
_021A1B48:
	cmp r3, r0
	bne _021A1B58
	strb r2, [r1, #3]
	ldr r0, [r5]
	mov r1, #0xff
	ldr r0, [r0, #8]
	strb r1, [r0, #4]
	b _021A1B68
_021A1B58:
	cmp r2, r0
	bne _021A1B60
	mov r0, #0xff
	b _021A1B66
_021A1B60:
	strb r2, [r1, #3]
	ldr r1, [r5]
	ldr r1, [r1, #8]
_021A1B66:
	strb r0, [r1, #4]
_021A1B68:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC58
	add r0, r5, #0
	bl ovy300_21a23d4
	ldr r0, [r5]
	ldr r2, [r0, #8]
	add r0, r5, #0
	ldrb r1, [r2, #3]
	ldrb r2, [r2, #4]
	bl ovy300_21a321c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1b10

	thumb_func_start ovy300_21a1b8c
ovy300_21a1b8c: ; 0x021A1B8C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r2, #0xff
	ldr r1, [r1, #8]
	strb r2, [r1, #3]
	ldr r1, [r4]
	ldr r1, [r1, #8]
	strb r2, [r1, #4]
	bl ovy300_21a23d4
	add r0, r4, #0
	bl ovy300_21a319c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1b8c

	thumb_func_start ovy300_21a1bac
ovy300_21a1bac: ; 0x021A1BAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0219CC3C
	add r2, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #5]
	cmp r0, r2
	bne _021A1BD6
	mov r0, #0xff
	strb r0, [r1, #5]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0
	b _021A1BE0
_021A1BD6:
	strb r2, [r1, #5]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
_021A1BE0:
	bl ovy300_21a31dc
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC58
	add r0, r5, #0
	bl ovy300_21a250c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a1bac

	thumb_func_start ovy300_21a1bf8
ovy300_21a1bf8: ; 0x021A1BF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r2, #0xff
	ldr r1, [r1, #8]
	strb r2, [r1, #5]
	bl ovy300_21a250c
	add r0, r4, #0
	bl ovy300_21a319c
	pop {r4, pc}
	thumb_func_end ovy300_21a1bf8

	thumb_func_start ovy300_21a1c10
ovy300_21a1c10: ; 0x021A1C10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0219CC3C
	add r2, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #6]
	cmp r0, r2
	bne _021A1C3A
	mov r0, #0xff
	strb r0, [r1, #6]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0
	b _021A1C44
_021A1C3A:
	strb r2, [r1, #6]
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
_021A1C44:
	bl ovy300_21a33fc
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC58
	add r0, r5, #0
	bl ovy300_21a2f98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a1c10

	thumb_func_start ovy300_21a1c5c
ovy300_21a1c5c: ; 0x021A1C5C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r2, #0xff
	ldr r1, [r1, #8]
	strb r2, [r1, #6]
	bl ovy300_21a2f98
	add r0, r4, #0
	bl ovy300_21a319c
	pop {r4, pc}
	thumb_func_end ovy300_21a1c5c

	thumb_func_start ovy300_21a1c74
ovy300_21a1c74: ; 0x021A1C74
	push {r3, r4}
	mov r4, #0xb
	lsl r4, r4, #6
	strb r1, [r0, r4]
	add r1, r4, #1
	strb r2, [r0, r1]
	mov r2, #0
	add r1, r4, #2
	strb r2, [r0, r1]
	add r1, r4, #3
	strb r2, [r0, r1]
	str r3, [r0, #0x1c]
	mov r0, #0x19
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy300_21a1c74

	thumb_func_start sub_021A1C94
sub_021A1C94: ; 0x021A1C94
	ldr r2, _021A1CA0 ; =0x000002BA
	mov r3, #0
	strb r3, [r0, r2]
	str r1, [r0, #0x18]
	mov r0, #5
	bx lr
	.align 2, 0
_021A1CA0: .word 0x000002BA
	thumb_func_end sub_021A1C94

	thumb_func_start ovy300_21a1ca4
ovy300_21a1ca4: ; 0x021A1CA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0x13
	ldr r0, [r0]
	mov r4, #0x13
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	ldr r0, [r5]
	bne _021A1CD0
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl sub_02017644
	add r0, r5, #0
	mov r1, #4
	mov r2, #6
	bl ovy300_21a2738
	pop {r3, r4, r5, pc}
_021A1CD0:
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #1
	bl sub_02017644
	add r0, r5, #0
	mov r1, #4
	mov r2, #7
	bl ovy300_21a2738
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1ca4

	thumb_func_start ovy300_21a1ce8
ovy300_21a1ce8: ; 0x021A1CE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x7b
	bl BmpWin_InitAllocator
	ldr r6, _021A1D30 ; =0x021A4280
	mov r4, #0
	mov r7, #1
_021A1CFA:
	mov r0, #6
	mul r0, r4
	add r3, r6, r0
	ldrb r1, [r3, #4]
	ldrb r0, [r6, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r2, r5, r1
	mov r1, #0x53
	lsl r1, r1, #2
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #0x10
	blo _021A1CFA
	add r0, r5, #0
	bl ovy300_21a1e34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1D30: .word 0x021A4280
	thumb_func_end ovy300_21a1ce8

	thumb_func_start ovy300_21a1d34
ovy300_21a1d34: ; 0x021A1D34
	push {r4, r5, r6, lr}
	mov r6, #0x53
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A1D3E:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1D3E
	bl sub_020480A8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a1d34

	thumb_func_start ovy300_21a1d54
ovy300_21a1d54: ; 0x021A1D54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r1, r0, #0
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02021A3C
	mov r0, #0x77
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	sub r0, #0x90
	str r0, [sp, #0xc]
	mov r0, #0x77
	lsl r0, r0, #2
	str r0, [sp, #8]
	sub r0, #0x8c
	str r0, [sp, #8]
	mov r0, #0x77
	lsl r0, r0, #2
	mov r7, #0x77
	str r0, [sp, #4]
	sub r0, #0x90
	lsl r7, r7, #2
	mov r4, #0
	str r0, [sp, #4]
	sub r7, #0x8c
_021A1D8C:
	mov r0, #0x77
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	ldrb r0, [r5, r7]
	cmp r0, #0
	beq _021A1DC2
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1DC2
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	ldr r0, [sp, #8]
	mov r1, #0
	strb r1, [r5, r0]
_021A1DC2:
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1D8C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a1d54

	thumb_func_start ovy300_21a1dcc
ovy300_21a1dcc: ; 0x021A1DCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x1d
	add r5, r0, #0
	lsl r4, r4, #4
	add r6, r1, #0
	ldr r0, [r5, r4]
	add r1, r2, #0
	add r7, r3, #0
	bl sub_0204898C
	str r0, [sp, #0x10]
	str r0, [sp]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	lsl r2, r7, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	sub r0, #0x84
	add r1, r5, r0
	lsl r0, r6, #3
	add r4, #0xc
	add r0, r1, r0
	ldr r1, [r5, r4]
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a1dcc

	thumb_func_start ovy300_21a1e1c
ovy300_21a1e1c: ; 0x021A1E1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204826C
	ldr r0, [r4]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1e1c

	thumb_func_start ovy300_21a1e34
ovy300_21a1e34: ; 0x021A1E34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5]
	ldr r1, [r1, #8]
	ldrb r1, [r1]
	cmp r1, #0
	bne _021A1E56
	mov r1, #4
	str r1, [sp]
	mov r1, #0xf1
	lsl r1, r1, #6
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #0x12
	b _021A1E66
_021A1E56:
	mov r1, #4
	str r1, [sp]
	mov r1, #0xf1
	lsl r1, r1, #6
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #0x11
_021A1E66:
	mov r3, #0
	bl ovy300_21a1dcc
	mov r4, #4
	mov r6, #0xf1
	str r4, [sp]
	lsl r6, r6, #6
	str r6, [sp, #4]
	mov r7, #2
	str r7, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xc
	mov r3, #0x28
	bl ovy300_21a1dcc
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xd
	mov r3, #0x28
	bl ovy300_21a1dcc
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xe
	mov r3, #0x28
	bl ovy300_21a1dcc
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xf
	mov r3, #0x28
	bl ovy300_21a1dcc
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x10
	mov r3, #0x28
	bl ovy300_21a1dcc
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0x14
	mov r3, #0x28
	str r7, [sp, #8]
	bl ovy300_21a1dcc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a1e34

	thumb_func_start ovy300_21a1ee4
ovy300_21a1ee4: ; 0x021A1EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x10
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x18
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x20
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x28
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x30
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x58
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r5, #0
	bl ovy300_21a2164
	add r0, r4, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r6, #4
	mov r7, #0xf1
	str r6, [sp]
	lsl r7, r7, #6
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [r5]
	add r0, r5, #0
	ldr r2, [r2, #8]
	mov r1, #7
	ldrb r2, [r2, #1]
	mov r3, #0x28
	add r2, #0x19
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #0x38
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r4, #0x40
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #2]
	cmp r2, #0xff
	str r6, [sp]
	bne _021A1F98
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	mov r2, #0x5f
	b _021A1FA4
_021A1F98:
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	add r2, #0x33
_021A1FA4:
	mov r3, #8
	bl ovy300_21a1dcc
	mov r4, #0x63
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #3]
	cmp r1, #0xff
	bne _021A1FEA
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x30
_021A1FE2:
	mov r3, #0x40
	bl ovy300_21a1dcc
	b _021A2102
_021A1FEA:
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	bne _021A200C
	add r0, r5, #0
	bl sub_021A0880
	add r2, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	b _021A1FE2
_021A200C:
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	mov r1, #0x31
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	str r6, [sp]
	add r0, #0x40
	ldr r0, [r5, r0]
	add r1, #0x50
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x42
	mov r3, #4
	bl sub_0219A2A4
	add r1, r4, #0
	add r1, #0x40
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #0
	bl GFL_StrBufFree
	lsl r0, r7, #0x17
	lsr r1, r0, #0x18
	mov r0, #0x40
	sub r0, r0, r1
	ldr r1, [r5]
	lsl r0, r0, #0x18
	ldr r1, [r1, #8]
	lsr r6, r0, #0x18
	ldrb r1, [r1, #3]
	add r0, r5, #0
	bl sub_021A0880
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r1, r4, #0
	add r2, r6, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0x10]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x40
	ldr r0, [r5, r0]
	add r1, #0x50
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r1]
	add r0, r5, r0
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0219A2A4
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	ldr r1, [r5]
	add r0, r6, r7
	ldr r1, [r1, #8]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrb r1, [r1, #4]
	add r0, r5, #0
	bl sub_021A0880
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r7, r0, #0
	add r0, r4, #0
	add r2, r6, #2
	lsl r2, r2, #0x10
	str r7, [sp]
	add r0, #0x40
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r4, #0x50
	add r0, #8
	ldr r1, [r5, r4]
	add r0, r5, r0
	mov r3, #4
	bl sub_0219A2A4
	add r0, r7, #0
	bl GFL_StrBufFree
_021A2102:
	mov r4, #0x65
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r4, #8
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #5]
	cmp r2, #0xff
	bne _021A213A
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x6a
	b _021A214E
_021A213A:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa
	add r2, #0x60
_021A214E:
	mov r3, #0x28
	bl ovy300_21a1dcc
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy300_21a1e1c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy300_21a1ee4

	thumb_func_start ovy300_21a2164
ovy300_21a2164: ; 0x021A2164
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r6, #0x55
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r4, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r5, r6
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2164

	thumb_func_start ovy300_21a21a0
ovy300_21a21a0: ; 0x021A21A0
	push {r3, r4, r5, lr}
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a21a0

	thumb_func_start ovy300_21a21bc
ovy300_21a21bc: ; 0x021A21BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	mov r2, #4
	mov r0, #0x11
	str r2, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	str r6, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #8
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0xc
	mov r3, #0x28
	bl ovy300_21a1dcc
	add r4, #0x60
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r5, #0
	bl ovy300_21a2238
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a21bc

	thumb_func_start ovy300_21a2238
ovy300_21a2238: ; 0x021A2238
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r6, #0x6d
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r4, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [r5]
	add r0, r5, #0
	ldr r2, [r2, #8]
	mov r1, #0xd
	ldrb r2, [r2, #1]
	mov r3, #0x30
	add r2, #0x19
	bl ovy300_21a1dcc
	add r0, r5, r6
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a2238

	thumb_func_start ovy300_21a2278
ovy300_21a2278: ; 0x021A2278
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #8
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0x28
	bl ovy300_21a1dcc
	add r4, #0x60
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r5, #0
	bl ovy300_21a22f8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2278

	thumb_func_start ovy300_21a22f8
ovy300_21a22f8: ; 0x021A22F8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #2]
	cmp r2, #0xff
	str r4, [sp]
	beq _021A232E
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	add r2, #0x33
	b _021A233E
_021A232E:
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0x5f
_021A233E:
	mov r3, #0x30
	bl ovy300_21a1dcc
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a22f8

	thumb_func_start ovy300_21a2354
ovy300_21a2354: ; 0x021A2354
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #8
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0xe
	mov r3, #0x28
	bl ovy300_21a1dcc
	add r4, #0x60
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r5, #0
	bl ovy300_21a23d4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2354

	thumb_func_start ovy300_21a23d4
ovy300_21a23d4: ; 0x021A23D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x6d
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	add r4, #8
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #3]
	cmp r1, #0xff
	beq _021A241E
	add r0, r5, #0
	bl sub_021A0880
	add r2, r0, #0
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	b _021A2430
_021A241E:
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0x30
_021A2430:
	mov r3, #0x30
	bl ovy300_21a1dcc
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #4]
	cmp r1, #0xff
	beq _021A245C
	add r0, r5, #0
	bl sub_021A0880
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xe
	b _021A2470
_021A245C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0x30
_021A2470:
	mov r3, #0x30
	bl ovy300_21a1dcc
	mov r4, #0x6d
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r4, #8
	add r0, r5, r4
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a23d4

	thumb_func_start ovy300_21a248c
ovy300_21a248c: ; 0x021A248C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	mov r3, #0
	str r6, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #8
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0xf
	mov r3, #0x28
	bl ovy300_21a1dcc
	add r4, #0x60
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r5, #0
	bl ovy300_21a250c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a248c

	thumb_func_start ovy300_21a250c
ovy300_21a250c: ; 0x021A250C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #5]
	cmp r2, #0xff
	str r4, [sp]
	beq _021A2542
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	add r2, #0x60
	b _021A2552
_021A2542:
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0x6a
_021A2552:
	mov r3, #0x30
	bl ovy300_21a1dcc
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a250c

	thumb_func_start ovy300_21a2568
ovy300_21a2568: ; 0x021A2568
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	mov r0, #4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	mov r3, #0
	str r6, [sp, #8]
	bl ovy300_21a1dcc
	add r0, r4, #0
	add r0, #8
	add r0, r5, r0
	bl ovy300_21a1e1c
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0x10
	mov r3, #0x28
	bl ovy300_21a1dcc
	add r4, #0x60
	add r0, r5, r4
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a2568

	thumb_func_start ovy300_21a25e0
ovy300_21a25e0: ; 0x021A25E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0219CC18
	str r0, [sp, #0x10]
	ldr r0, [r6]
	bl sub_020484D8
	add r2, r0, #0
	lsl r3, r2, #3
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	str r7, [sp]
	sub r4, #0x14
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021A2628 ; =0x000039E0
	lsr r2, r2, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #4
	bl sub_0219A2A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A2628: .word 0x000039E0
	thumb_func_end ovy300_21a25e0

	thumb_func_start sub_021A262C
sub_021A262C: ; 0x021A262C
	ldr r0, [r1]
	ldr r3, _021A2634 ; =BmpWin_FlushChar
	bx r3
	nop
_021A2634: .word BmpWin_FlushChar
	thumb_func_end sub_021A262C

	thumb_func_start ovy300_21a2638
ovy300_21a2638: ; 0x021A2638
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r6, #0x71
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #6
	bl BmpWin_BitmapFill
	mov r0, #0
	str r0, [sp]
	ldr r0, _021A2674 ; =0x00000446
	mov r1, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x78
	bl ovy300_21a1dcc
	add r0, r5, r6
	bl ovy300_21a1e1c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A2674: .word 0x00000446
	thumb_func_end ovy300_21a2638

	thumb_func_start sub_021A2678
sub_021A2678: ; 0x021A2678
	ldr r3, _021A2680 ; =ovy300_21a2638
	mov r1, #0xb
	bx r3
	nop
_021A2680: .word ovy300_21a2638
	thumb_func_end sub_021A2678

	thumb_func_start sub_021A2684
sub_021A2684: ; 0x021A2684
	ldr r3, _021A268C ; =ovy300_21a2638
	mov r1, #9
	bx r3
	nop
_021A268C: .word ovy300_21a2638
	thumb_func_end sub_021A2684

	thumb_func_start sub_021A2690
sub_021A2690: ; 0x021A2690
	ldr r3, _021A2698 ; =ovy300_21a2638
	mov r1, #0xa
	bx r3
	nop
_021A2698: .word ovy300_21a2638
	thumb_func_end sub_021A2690

	thumb_func_start sub_021A269C
sub_021A269C: ; 0x021A269C
	mov r1, #0x69
	lsl r1, r1, #2
	ldr r3, _021A26A8 ; =ovy300_21a1e1c
	add r0, r0, r1
	bx r3
	nop
_021A26A8: .word ovy300_21a1e1c
	thumb_func_end sub_021A269C

	thumb_func_start ovy300_21a26ac
ovy300_21a26ac: ; 0x021A26AC
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a2814
	add r0, r4, #0
	bl ovy300_21a2844
	add r0, r4, #0
	bl ovy300_21a2a5c
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a26ac

	thumb_func_start ovy300_21a26d4
ovy300_21a26d4: ; 0x021A26D4
	push {r4, lr}
	add r4, r0, #0
	bl ovy300_21a2cf0
	add r0, r4, #0
	bl ovy300_21a2a00
	bl sub_0204B758
	pop {r4, pc}
	thumb_func_end ovy300_21a26d4

	thumb_func_start ovy300_21a26e8
ovy300_21a26e8: ; 0x021A26E8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #0xc
_021A26F2:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021A270C
	bl sub_0204C534
	cmp r0, #1
	beq _021A270C
	ldr r0, [r5, #0x28]
	add r1, r7, #0
	bl sub_0204C4E0
_021A270C:
	add r4, r4, #1
	cmp r4, #0x39
	blo _021A26F2
	bl sub_0204B794
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a26e8

	thumb_func_start ovy300_21a2718
ovy300_21a2718: ; 0x021A2718
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x28
	ldr r0, [r5, r4]
	add r6, r2, #0
	mov r1, #0
	bl sub_0204C4D4
	lsl r1, r6, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2718

	thumb_func_start ovy300_21a2738
ovy300_21a2738: ; 0x021A2738
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ovy300_21a2718
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x28]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a2738

	thumb_func_start sub_021A2750
sub_021A2750: ; 0x021A2750
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	ldr r3, _021A275C ; =sub_0204C4A0
	bx r3
	nop
_021A275C: .word sub_0204C4A0
	thumb_func_end sub_021A2750

	thumb_func_start sub_021A2760
sub_021A2760: ; 0x021A2760
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	ldr r3, _021A276C ; =sub_0204C560
	bx r3
	nop
_021A276C: .word sub_0204C560
	thumb_func_end sub_021A2760

	thumb_func_start ovy300_21a2770
ovy300_21a2770: ; 0x021A2770
	push {r3, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021A2782
	add r1, r2, #0
	bl sub_0204C124
_021A2782:
	pop {r3, pc}
	thumb_func_end ovy300_21a2770

	thumb_func_start sub_021A2784
sub_021A2784: ; 0x021A2784
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	ldr r3, _021A2790 ; =sub_0204C138
	bx r3
	nop
_021A2790: .word sub_0204C138
	thumb_func_end sub_021A2784

	thumb_func_start ovy300_21a2794
ovy300_21a2794: ; 0x021A2794
	push {r3, lr}
	cmp r2, #1
	bne _021A27A8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	mov r1, #1
	bl sub_0204C318
	pop {r3, pc}
_021A27A8:
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl sub_0204C318
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2794

	thumb_func_start ovy300_21a27b8
ovy300_21a27b8: ; 0x021A27B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r2, [r4]
	lsl r1, r1, #2
	add r0, r0, r1
	strh r3, [r4, #2]
	add r2, sp, #0x10
	ldrh r2, [r2]
	ldr r0, [r0, #0x28]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a27b8

	thumb_func_start ovy300_21a27d8
ovy300_21a27d8: ; 0x021A27D8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	lsl r1, r1, #2
	add r0, r0, r1
	add r2, sp, #0x10
	ldrh r2, [r2]
	ldr r0, [r0, #0x28]
	add r1, sp, #0
	add r4, r3, #0
	bl Oam_GetSpritePosData
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a27d8

	thumb_func_start sub_021A2800
sub_021A2800: ; 0x021A2800
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r1, r2, #0x18
	ldr r0, [r0, #0x28]
	ldr r3, _021A2810 ; =sub_0204C468
	lsr r1, r1, #0x18
	bx r3
	nop
_021A2810: .word sub_0204C468
	thumb_func_end sub_021A2800

	thumb_func_start ovy300_21a2814
ovy300_21a2814: ; 0x021A2814
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _021A2840 ; =0x021A4310
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl sub_0219FD68
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x7b
	bl Oam_CreateSystem
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_021A2840: .word 0x021A4310
	thumb_func_end ovy300_21a2814

	thumb_func_start ovy300_21a2844
ovy300_21a2844: ; 0x021A2844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r3, #0
	mov r0, #0x43
	sub r2, r3, #1
	lsl r0, r0, #2
_021A2852:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #6
	blo _021A2852
	mov r3, #0
	mov r0, #0x49
	sub r2, r3, #1
	lsl r0, r0, #2
_021A2866:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #6
	blo _021A2866
	mov r3, #0
	mov r0, #0x4f
	sub r2, r3, #1
	lsl r0, r0, #2
_021A287A:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #4
	blo _021A287A
	ldr r1, _021A29FC ; =0x0000807B
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	mov r6, #0x7b
	mov r1, #0x50
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r6, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x50
	add r1, #0xc0
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl sub_0204BBA0
	mov r1, #0x4d
	add r1, #0xdb
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x56
	mov r2, #0x66
	mov r3, #0x7b
	mov r7, #0x66
	bl Oam_LoadNCERFile
	mov r1, #0x66
	add r1, #0xda
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x50
	mov r2, #0
	mov r3, #1
	str r6, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x66
	add r1, #0xae
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #1
	mov r3, #0
	str r6, [sp]
	bl sub_0204BBA0
	add r7, #0xc6
	str r0, [r5, r7]
	add r0, r4, #0
	mov r7, #0x4f
	mov r1, #0x4f
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl Oam_LoadNCGRFile
	add r7, #0xd1
	str r0, [r5, r7]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	mov r3, #0x60
	str r6, [sp]
	bl sub_0204BBA0
	mov r1, #0x60
	add r1, #0xd8
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x55
	mov r7, #0x65
	mov r2, #0x65
	mov r3, #0x7b
	bl Oam_LoadNCERFile
	add r7, #0xe3
	str r0, [r5, r7]
	add r0, r4, #0
	mov r1, #0x54
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x54
	add r1, #0xc4
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x4e
	mov r2, #0
	mov r7, #0x80
	mov r3, #0x80
	str r6, [sp]
	bl sub_0204BBA0
	add r7, #0xb0
	str r0, [r5, r7]
	add r0, r4, #0
	mov r1, #0x57
	mov r2, #0x67
	mov r3, #0x7b
	mov r7, #0x67
	bl Oam_LoadNCERFile
	mov r1, #0x67
	add r1, #0xdd
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x54
	mov r2, #0
	mov r3, #1
	str r6, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x67
	add r1, #0xb5
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x4e
	mov r2, #1
	mov r3, #0x60
	str r6, [sp]
	bl sub_0204BBA0
	mov r1, #0x67
	add r1, #0xcd
	str r0, [r5, r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	bl GetDefaultUINarcIdx
	ldr r1, _021A29FC ; =0x0000807B
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #4]
	bl sub_0202D814
	add r1, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl Oam_LoadNCGRFile
	add r7, #0xa5
	str r0, [r5, r7]
	bl sub_0202D810
	add r1, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, #0xa0
	str r6, [sp]
	mov r4, #0xa0
	bl sub_0204BBA0
	mov r1, #0xa0
	add r1, #0x84
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	add r6, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r3, #0x7b
	bl Oam_LoadNCERFile
	add r4, #0x9c
	str r0, [r5, r4]
	ldr r0, [sp, #4]
	bl GFL_ArcToolFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A29FC: .word 0x0000807B
	thumb_func_end ovy300_21a2844

	thumb_func_start ovy300_21a2a00
ovy300_21a2a00: ; 0x021A2A00
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x43
	add r5, r0, #0
	lsl r7, r7, #2
	sub r6, r4, #1
_021A2A0C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A2A1A
	bl sub_0204B98C
_021A2A1A:
	add r4, r4, #1
	cmp r4, #6
	blo _021A2A0C
	mov r4, #0
	mov r7, #0x49
	lsl r7, r7, #2
	sub r6, r4, #1
_021A2A28:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A2A36
	bl sub_0204BCD0
_021A2A36:
	add r4, r4, #1
	cmp r4, #6
	blo _021A2A28
	mov r4, #0
	mov r7, #0x4f
	lsl r7, r7, #2
	sub r6, r4, #1
_021A2A44:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A2A52
	bl sub_0204BE64
_021A2A52:
	add r4, r4, #1
	cmp r4, #4
	blo _021A2A44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2a00

	thumb_func_start ovy300_21a2a5c
ovy300_21a2a5c: ; 0x021A2A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r5, r0, #0
	mov r0, #0x39
	mov r1, #0
	mov r2, #0x7b
	mov r6, #0
	bl sub_0204BF1C
	str r0, [r5, #0x24]
	add r4, r6, #0
_021A2A72:
	lsl r0, r6, #2
	add r0, r5, r0
	add r6, r6, #1
	str r4, [r0, #0x28]
	cmp r6, #0x39
	blo _021A2A72
	mov r0, #0x43
	lsl r0, r0, #2
	mov r7, #0x43
	str r0, [sp]
	add r0, #0x18
	lsl r7, r7, #2
	str r0, [sp]
	add r7, #0x30
_021A2A8E:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021A2CCC ; =0x021A432C
	add r3, sp, #0x5c
	add r6, r0, r1
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x64]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x68]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp]
	ldr r0, [r1, r0]
	add r1, r2, #0
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	mov r2, #0x7b
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	str r0, [sp, #0x6c]
	ldr r0, [r5, #0x24]
	bl sub_021AD7F0
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x28]
	cmp r4, #0xe
	bls _021A2A8E
	ldr r0, [r5]
	mov r1, #0x13
	ldr r0, [r0]
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	bne _021A2AFA
	add r0, r5, #0
	mov r1, #4
	mov r2, #7
	bl ovy300_21a2738
_021A2AFA:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy300_21a2770
	ldr r0, [r5, #0x5c]
	mov r1, #2
	bl sub_0204C318
	ldr r0, [r5, #0x60]
	mov r1, #2
	bl sub_0204C318
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #1
	bl ovy300_21a2794
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #1
	bl ovy300_21a2794
	ldr r3, _021A2CD0 ; =0x021A42F8
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021A2CD4 ; =0x021A42E0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
_021A2BE0:
	add r3, sp, #0x2c
	add r2, sp, #0x44
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x4c]
	mov r2, #0x7b
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r1, r0]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0xc]
	ldr r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #0x54]
	add r0, sp, #0x14
	strh r4, [r0, #0x34]
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r5, #0x24]
	bl sub_021AD7F0
	add r1, r4, #0
	str r0, [r6, #0x64]
	add r0, r5, #0
	add r1, #0xf
	mov r2, #0
	bl ovy300_21a2770
	add r2, sp, #0x14
	add r3, r7, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x4c]
	mov r2, #0x7b
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #8]
	ldr r0, [r1, r0]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #0x54]
	add r0, sp, #0x14
	strh r4, [r0, #0x34]
	ldr r0, [r5, #0x24]
	bl sub_021AD7F0
	add r1, r6, #0
	add r1, #0x9c
	str r0, [r1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1d
	mov r2, #0
	bl ovy300_21a2770
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1d
	mov r2, #1
	bl ovy300_21a2794
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	mov r2, #0x7b
	bl sub_021AD7F0
	add r1, r6, #0
	add r1, #0xd4
	str r0, [r1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x2b
	mov r2, #0
	bl ovy300_21a2770
	add r6, #0xd4
	ldr r0, [r6]
	mov r1, #2
	bl sub_0204C318
	add r4, r4, #1
	cmp r4, #0xe
	blo _021A2BE0
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021A2CCC: .word 0x021A432C
_021A2CD0: .word 0x021A42F8
_021A2CD4: .word 0x021A42E0
	thumb_func_end ovy300_21a2a5c

	thumb_func_start ovy300_21a2cd8
ovy300_21a2cd8: ; 0x021A2CD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0x28
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A2CEE
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021A2CEE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a2cd8

	thumb_func_start ovy300_21a2cf0
ovy300_21a2cf0: ; 0x021A2CF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A2CF6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy300_21a2cd8
	add r4, r4, #1
	cmp r4, #0x39
	blo _021A2CF6
	ldr r0, [r5, #0x24]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a2cf0

	thumb_func_start ovy300_21a2d0c
ovy300_21a2d0c: ; 0x021A2D0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy300_21a2770
	add r6, r4, #0
_021A2D62:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xf
	add r2, r6, #0
	bl ovy300_21a2770
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1d
	add r2, r6, #0
	bl ovy300_21a2770
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x2b
	add r2, r6, #0
	bl ovy300_21a2770
	add r4, r4, #1
	cmp r4, #0xe
	blo _021A2D62
	add r0, r5, #0
	mov r1, #7
	add r2, r6, #0
	bl ovy300_21a2770
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a2d0c

	thumb_func_start ovy300_21a2d98
ovy300_21a2d98: ; 0x021A2D98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #6
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r6, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ovy300_21a2770
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #6]
	cmp r2, #0xff
	beq _021A2DFC
	add r0, r5, #0
	mov r1, #7
	bl ovy300_21a2718
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xc0
	mov r3, #0x74
	str r4, [sp]
	bl ovy300_21a27b8
	add r0, r5, #0
	mov r1, #7
	add r2, r6, #0
	bl ovy300_21a2770
_021A2DFC:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy300_21a2d98

	thumb_func_start ovy300_21a2e00
ovy300_21a2e00: ; 0x021A2E00
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2770
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2e00

	thumb_func_start ovy300_21a2e24
ovy300_21a2e24: ; 0x021A2E24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #6
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xfc
	mov r3, #0xc
	str r4, [sp]
	bl ovy300_21a27b8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2e24

	thumb_func_start ovy300_21a2e80
ovy300_21a2e80: ; 0x021A2E80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #6
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xfc
	mov r3, #0xc
	str r4, [sp]
	bl ovy300_21a27b8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2e80

	thumb_func_start ovy300_21a2edc
ovy300_21a2edc: ; 0x021A2EDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #6
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xfc
	mov r3, #0xc
	str r4, [sp]
	bl ovy300_21a27b8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2edc

	thumb_func_start ovy300_21a2f38
ovy300_21a2f38: ; 0x021A2F38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #6
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xfc
	mov r3, #0xc
	str r4, [sp]
	bl ovy300_21a27b8
	add r0, r5, #0
	bl ovy300_21a2f98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a2f38

	thumb_func_start ovy300_21a2f98
ovy300_21a2f98: ; 0x021A2F98
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #8]
	ldrb r2, [r1, #6]
	cmp r2, #0xff
	beq _021A2FCC
	mov r1, #7
	bl ovy300_21a2718
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x40
	mov r3, #0x68
	bl ovy300_21a27b8
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl ovy300_21a2770
	add sp, #4
	pop {r3, r4, pc}
_021A2FCC:
	mov r1, #7
	mov r2, #0
	bl ovy300_21a2770
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy300_21a2f98

	thumb_func_start ovy300_21a2fd8
ovy300_21a2fd8: ; 0x021A2FD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC3C
	lsl r0, r0, #0x10
	mov r6, #0
	asr r7, r0, #0x10
	add r4, r6, #0
_021A2FEE:
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0xf
	add r2, r4, #0
	bl ovy300_21a2770
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x1d
	add r2, r4, #0
	bl ovy300_21a2770
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x2b
	add r2, r4, #0
	bl ovy300_21a2770
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #0xe
	blt _021A2FEE
	mov r6, #0x28
_021A301E:
	add r2, r4, #0
	add r1, r7, r4
	mul r2, r6
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #1
	bl ovy300_21a350c
	add r3, r4, #1
	sub r1, r7, r3
	bmi _021A3052
	mov r2, #0x28
	mul r2, r3
	mov r3, #0xc0
	sub r2, r3, r2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ovy300_21a350c
_021A3052:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #5
	blt _021A301E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy300_21a2fd8

	thumb_func_start ovy300_21a3060
ovy300_21a3060: ; 0x021A3060
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r4, #0
	mov r1, #0
	add r2, #2
	add r3, sp, #4
	add r5, r0, #0
	str r4, [sp]
	bl ovy300_21a27d8
	mov r0, #0x1e
	add r1, sp, #4
	lsl r0, r0, #4
	ldrsh r1, [r1, r4]
	ldr r0, [r5, r0]
	bl sub_0219C324
	add r3, r0, #0
	cmp r3, #0xc
	bhs _021A308E
	mov r3, #0xc
	b _021A3094
_021A308E:
	cmp r3, #0x9c
	bls _021A3094
	mov r3, #0x9c
_021A3094:
	lsl r3, r3, #0x10
	mov r1, #0
	add r0, r5, #0
	mov r2, #0xfc
	asr r3, r3, #0x10
	str r1, [sp]
	bl ovy300_21a27b8
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a3060

	thumb_func_start ovy300_21a30a8
ovy300_21a30a8: ; 0x021A30A8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, r1, #0
	bl sub_0219CC34
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_021A2750
	cmp r0, #0xc
	bne _021A30CA
	cmp r5, #0
	bne _021A30EE
_021A30CA:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC3C
	cmp r0, #0
	bne _021A30E4
	cmp r6, #0
	bne _021A30E4
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x12
	b _021A30EA
_021A30E4:
	add r0, r4, #0
	mov r1, #6
	mov r2, #4
_021A30EA:
	bl ovy300_21a2738
_021A30EE:
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2750
	cmp r0, #0xd
	bne _021A30FE
	cmp r5, #0
	bne _021A312C
_021A30FE:
	mov r5, #0x1e
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0219CC44
	cmp r0, #0
	bne _021A3122
	add r5, #0xcc
	ldr r0, [r4, r5]
	sub r0, r0, #1
	cmp r6, r0
	bne _021A3122
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x13
	bl ovy300_21a2738
	pop {r4, r5, r6, pc}
_021A3122:
	add r0, r4, #0
	mov r1, #5
	mov r2, #5
	bl ovy300_21a2738
_021A312C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a30a8

	thumb_func_start ovy300_21a3130
ovy300_21a3130: ; 0x021A3130
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021A315C
	add r5, #9
	add r1, r5, #0
	mov r2, #1
	bl ovy300_21a2770
	add r4, #0xc
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	pop {r3, r4, r5, r6, r7, pc}
_021A315C:
	add r7, r5, #0
	add r7, #0xb
	add r1, r7, #0
	mov r2, #1
	bl ovy300_21a2770
	add r4, #0xc
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	add r5, #0xd
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ovy300_21a2770
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a3130

	thumb_func_start ovy300_21a319c
ovy300_21a319c: ; 0x021A319C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #9
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy300_21a2770
	pop {r4, pc}
	thumb_func_end ovy300_21a319c

	thumb_func_start ovy300_21a31dc
ovy300_21a31dc: ; 0x021A31DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #9
	add r6, r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	mov r7, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	cmp r6, #1
	bne _021A321A
	mov r3, #0x18
	mul r3, r4
	add r3, #0xc
	lsl r3, r3, #0x10
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r7, [sp]
	bl ovy300_21a27b8
_021A321A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a31dc

	thumb_func_start ovy300_21a321c
ovy300_21a321c: ; 0x021A321C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x1e
	str r2, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r7, r1, #0
	bl sub_0219CC3C
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy300_21a2770
	cmp r7, #0xff
	beq _021A32FC
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021A0870
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	sub r0, r7, r6
	bpl _021A3286
	neg r0, r0
_021A3286:
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r7, r6
	bhs _021A32D6
	cmp r5, #8
	bhi _021A32FC
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #1
	mov r7, #1
	bl ovy300_21a2770
	mov r0, #8
	sub r1, r0, r5
	add r5, r1, #0
	mov r0, #0x18
	mul r5, r0
	add r5, #0xc
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r7, [sp]
	bl ovy300_21a27b8
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl ovy300_21a2770
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r7, [sp]
	bl ovy300_21a27b8
	b _021A32FC
_021A32D6:
	cmp r5, #7
	bhi _021A32FC
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl ovy300_21a2770
	mov r3, #0x18
	mul r3, r5
	add r3, #0xc
	mov r0, #0
	lsl r3, r3, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
_021A32FC:
	ldr r0, [sp, #4]
	cmp r0, #0xff
	beq _021A3390
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_021A0870
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	sub r0, r0, r6
	bpl _021A3316
	neg r0, r0
_021A3316:
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #4]
	cmp r0, r6
	bhs _021A336A
	cmp r5, #8
	bhi _021A3390
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	mov r6, #1
	bl ovy300_21a2770
	mov r0, #8
	sub r1, r0, r5
	add r5, r1, #0
	mov r0, #0x18
	mul r5, r0
	add r5, #0xc
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r6, [sp]
	bl ovy300_21a27b8
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #1
	bl ovy300_21a2770
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r6, [sp]
	bl ovy300_21a27b8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A336A:
	cmp r5, #7
	bhi _021A3390
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #1
	bl ovy300_21a2770
	mov r3, #0x18
	mul r3, r5
	add r3, #0xc
	mov r0, #0
	lsl r3, r3, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
_021A3390:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a321c

	thumb_func_start ovy300_21a3394
ovy300_21a3394: ; 0x021A3394
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #1
	bne _021A33C0
	mov r1, #9
	mov r2, #1
	bl ovy300_21a2770
	add r4, #0x14
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x8c
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021A33C0:
	mov r1, #0xb
	mov r2, #1
	mov r6, #1
	bl ovy300_21a2770
	add r4, #0x14
	lsl r3, r4, #0x10
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r6, [sp]
	bl ovy300_21a27b8
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #1
	bl ovy300_21a2770
	lsl r3, r4, #0x10
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r6, [sp]
	bl ovy300_21a27b8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a3394

	thumb_func_start ovy300_21a33fc
ovy300_21a33fc: ; 0x021A33FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #9
	add r6, r2, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	mov r7, #0
	bl ovy300_21a2770
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
	cmp r6, #1
	bne _021A343A
	mov r3, #0x28
	mul r3, r4
	add r3, #0x14
	lsl r3, r3, #0x10
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x8c
	asr r3, r3, #0x10
	str r7, [sp]
	bl ovy300_21a27b8
_021A343A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a33fc

	thumb_func_start ovy300_21a343c
ovy300_21a343c: ; 0x021A343C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0219CC3C
	add r2, r0, #0
	sub r0, r2, #7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r2, #7
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r1, #0
	bge _021A3462
	mov r1, #0
_021A3462:
	cmp r4, r1
	blt _021A3486
	cmp r4, r2
	bhs _021A3486
	sub r3, r2, r4
	add r4, r3, #0
	mov r2, #0x18
	mul r4, r2
	mov r2, #0xc0
	sub r2, r2, r4
	lsl r2, r2, #0x10
	add r0, r5, #0
	add r1, r6, #0
	asr r2, r2, #0x10
	mov r3, #0
	bl ovy300_21a3130
	pop {r4, r5, r6, pc}
_021A3486:
	cmp r4, r2
	blo _021A34A2
	cmp r4, r0
	bge _021A34A2
	sub r3, r4, r2
	mov r2, #0x18
	mul r2, r3
	lsl r2, r2, #0x10
	add r0, r5, #0
	add r1, r6, #0
	asr r2, r2, #0x10
	mov r3, #1
	bl ovy300_21a3130
_021A34A2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a343c

	thumb_func_start ovy300_21a34a4
ovy300_21a34a4: ; 0x021A34A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC3C
	add r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	ldrb r2, [r0, #6]
	sub r0, r2, #4
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	add r0, r2, #4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r3, #0
	bge _021A34CC
	mov r3, #0
_021A34CC:
	cmp r2, r3
	blt _021A34EE
	cmp r2, r1
	bhs _021A34EE
	sub r2, r1, r2
	add r3, r2, #0
	mov r1, #0x28
	mul r3, r1
	mov r1, #0xc0
	sub r1, r1, r3
	lsl r1, r1, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	mov r2, #0
	bl ovy300_21a3394
	pop {r4, pc}
_021A34EE:
	cmp r2, r1
	blo _021A3508
	cmp r2, r0
	bge _021A3508
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	lsl r1, r1, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	mov r2, #1
	bl ovy300_21a3394
_021A3508:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a34a4

	thumb_func_start ovy300_21a350c
ovy300_21a350c: ; 0x021A350C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021A3538
	add r5, #0xf
	add r1, r5, #0
	mov r2, #1
	bl ovy300_21a2770
	add r4, #0x14
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xcc
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	pop {r3, r4, r5, r6, r7, pc}
_021A3538:
	add r7, r5, #0
	add r7, #0x1d
	add r1, r7, #0
	mov r2, #1
	bl ovy300_21a2770
	add r4, #0x14
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0xcc
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	add r5, #0x2b
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ovy300_21a2770
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xcc
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a350c

	thumb_func_start ovy300_21a3578
ovy300_21a3578: ; 0x021A3578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r5, #9
	add r7, sp, #4
_021A3584:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A2784
	cmp r0, #0
	beq _021A35D8
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	mov r0, #0
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xb
	mvn r0, r0
	cmp r1, r0
	ble _021A35CE
	cmp r1, #0xcc
	blt _021A35D8
_021A35CE:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy300_21a2770
_021A35D8:
	add r5, r5, #1
	cmp r5, #0xa
	bls _021A3584
	mov r5, #0xb
	add r7, sp, #4
_021A35E2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A2784
	cmp r0, #0
	beq _021A365A
	mov r0, #1
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #2
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xb
	mvn r0, r0
	cmp r1, r0
	ble _021A3646
	cmp r1, #0xcc
	blt _021A365A
_021A3646:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	add r1, r5, #2
	mov r2, #0
	bl ovy300_21a2770
_021A365A:
	add r5, r5, #1
	cmp r5, #0xc
	bls _021A35E2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a3578

	thumb_func_start ovy300_21a3664
ovy300_21a3664: ; 0x021A3664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r5, #0xf
	add r7, sp, #4
_021A3670:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A2784
	cmp r0, #0
	beq _021A36C4
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	mov r0, #0
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0x13
	mvn r0, r0
	cmp r1, r0
	ble _021A36BA
	cmp r1, #0xdc
	blt _021A36C4
_021A36BA:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy300_21a2770
_021A36C4:
	add r5, r5, #1
	cmp r5, #0x1d
	blo _021A3670
	mov r7, #0
	add r2, sp, #4
	str r7, [sp]
	add r0, r4, #0
	mov r1, #9
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	str r7, [sp]
	add r3, sp, #4
	ldrsh r3, [r3, r7]
	mov r5, #2
	add r2, sp, #4
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldrsh r2, [r2, r5]
	add r0, r4, #0
	mov r1, #9
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	add r0, sp, #4
	ldrsh r0, [r0, r7]
	sub r5, #0x16
	add r0, r0, r6
	cmp r0, r5
	ble _021A3706
	cmp r0, #0xdc
	blt _021A3710
_021A3706:
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl ovy300_21a2770
_021A3710:
	mov r5, #0x1d
	add r7, sp, #4
_021A3714:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A2784
	cmp r0, #0
	beq _021A3790
	mov r0, #1
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	add r1, r5, #0
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldrsh r2, [r7, r2]
	add r0, r4, #0
	add r1, #0xe
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0x1b
	mvn r0, r0
	cmp r1, r0
	ble _021A377A
	cmp r1, #0xd4
	blt _021A3790
_021A377A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy300_21a2770
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0xe
	mov r2, #0
	bl ovy300_21a2770
_021A3790:
	add r5, r5, #1
	cmp r5, #0x2b
	blo _021A3714
	mov r5, #1
	add r2, sp, #4
	str r5, [sp]
	add r0, r4, #0
	mov r1, #0xb
	add r2, #2
	add r3, sp, #4
	bl ovy300_21a27d8
	str r5, [sp]
	add r7, sp, #4
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	mov r1, #0xb
	asr r3, r3, #0x10
	bl ovy300_21a27b8
	str r5, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	mov r1, #0xd
	asr r3, r3, #0x10
	mov r5, #0xd
	bl ovy300_21a27b8
	mov r0, #0
	ldrsh r0, [r7, r0]
	sub r5, #0x29
	add r0, r0, r6
	cmp r0, r5
	ble _021A37EC
	cmp r0, #0xd4
	blt _021A3800
_021A37EC:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy300_21a2770
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy300_21a2770
_021A3800:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a3664

	thumb_func_start ovy300_21a3804
ovy300_21a3804: ; 0x021A3804
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #8
	mov r2, #1
	add r5, r0, #0
	bl ovy300_21a2770
	lsl r2, r4, #1
	add r2, #8
	mov r0, #0
	lsl r2, r2, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #8
	asr r2, r2, #0x10
	mov r3, #0xa8
	bl ovy300_21a27b8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a3804

	thumb_func_start ovy300_21a382c
ovy300_21a382c: ; 0x021A382C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D554
	cmp r0, #1
	bne _021A385A
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x7b
	str r0, [sp, #4]
	ldr r0, _021A3890 ; =0x021A44E0
	ldr r1, _021A3894 ; =0x021A4494
	add r2, r5, #0
	mov r3, #0
	bl sub_0202B650
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _021A3880
_021A385A:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x7b
	str r0, [sp, #4]
	ldr r0, _021A3890 ; =0x021A44E0
	ldr r1, _021A3894 ; =0x021A4494
	add r2, r5, #0
	mov r3, #1
	bl sub_0202B650
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ovy300_21a38b0
_021A3880:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202B69C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A3890: .word 0x021A44E0
_021A3894: .word 0x021A4494
	thumb_func_end ovy300_21a382c

	thumb_func_start ovy300_21a3898
ovy300_21a3898: ; 0x021A3898
	push {r3, r4, r5, lr}
	mov r5, #0x2b
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A38AE
	bl sub_0202B694
	mov r0, #0
	str r0, [r4, r5]
_021A38AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a3898

	thumb_func_start ovy300_21a38b0
ovy300_21a38b0: ; 0x021A38B0
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	cmp r1, #6
	bhi _021A38E2
	mov r2, #0x2b
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	bl sub_0202BAEC
	add r3, r0, #0
	ldrb r0, [r3, #3]
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrb r1, [r3]
	ldrb r2, [r3, #1]
	ldrb r3, [r3, #2]
	mov r0, #0
	bl sub_0204566C
	mov r0, #0
	bl sub_02045B7C
_021A38E2:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy300_21a38b0

	thumb_func_start ovy300_21a38e8
ovy300_21a38e8: ; 0x021A38E8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x2b
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0202B768
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	cmp r6, r1
	bne _021A39B8
	bl GCTX_HIDGetPressedKeys
	mov r7, #1
	lsl r7, r7, #0xa
	tst r0, r7
	beq _021A3916
	mov r0, #0
	bl sub_0203D564
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A3916:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r7, #1
	tst r0, r1
	beq _021A393A
	bl sub_0203D554
	cmp r0, #1
	bne _021A3930
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202BA74
_021A3930:
	mov r0, #0
	bl sub_0203D564
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021A393A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #8
	tst r0, r1
	beq _021A3966
	bl sub_0203D554
	cmp r0, #1
	bne _021A3954
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202BA74
_021A3954:
	mov r0, #0
	bl sub_0203D564
	add r0, r5, #0
	mov r1, #5
	bl ovy300_21a39bc
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021A3966:
	bl GCTX_HIDGetPressedKeys
	mov r1, #4
	tst r0, r1
	beq _021A3992
	bl sub_0203D554
	cmp r0, #1
	bne _021A3980
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202BA74
_021A3980:
	mov r0, #0
	bl sub_0203D564
	add r0, r5, #0
	mov r1, #6
	bl ovy300_21a39bc
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021A3992:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A39B6
	bl sub_0203D554
	cmp r0, #1
	bne _021A39B6
	mov r0, #0
	bl sub_0203D564
	ldr r0, [r5, r4]
	mov r4, #1
	mov r1, #1
	bl sub_0202BA74
	sub r0, r4, #5
	pop {r3, r4, r5, r6, r7, pc}
_021A39B6:
	add r0, r6, #0
_021A39B8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy300_21a38e8

	thumb_func_start ovy300_21a39bc
ovy300_21a39bc: ; 0x021A39BC
	push {r4, r5, r6, lr}
	mov r6, #0x2b
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r1, #0
	bl sub_0202BA60
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ovy300_21a38b0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ovy300_21a38b0
	lsl r1, r4, #0x18
	ldr r0, [r5, r6]
	lsr r1, r1, #0x18
	bl sub_0202BA64
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a39bc

	thumb_func_start ovy300_21a39ec
ovy300_21a39ec: ; 0x021A39EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r1, r0
	beq _021A3A02
	mov r1, #0xf1
	tst r0, r1
	beq _021A3A16
_021A3A02:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ovy300_21a38b0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020352B0
_021A3A16:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a39ec

	thumb_func_start ovy300_21a3a18
ovy300_21a3a18: ; 0x021A3A18
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	mov r2, #1
	bl ovy300_21a38b0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy300_21a38b0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy300_21a3a18

	thumb_func_start ovy300_21a3a34
ovy300_21a3a34: ; 0x021A3A34
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r0, #0
	mov r2, #1
	bl ovy300_21a38b0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ovy300_21a38b0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020352B0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy300_21a3a34

	thumb_func_start ovy300_21a3a58
ovy300_21a3a58: ; 0x021A3A58
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	mov r2, #1
	add r5, r0, #0
	bl ovy300_21a38b0
	cmp r4, #7
	bne _021A3A7A
	mov r0, #0x2b
	lsl r0, r0, #4
	lsl r1, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_0202BA64
_021A3A7A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a3a58

	thumb_func_start ovy300_21a3a7c
ovy300_21a3a7c: ; 0x021A3A7C
	push {r4, r5, r6, lr}
	ldr r4, _021A3AC8 ; =0x000002BB
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0x5a
	bne _021A3A90
	mov r0, #0
	strb r0, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A3A90:
	add r0, r0, #1
	strb r0, [r5, r4]
	bl sub_0203DA48
	cmp r0, #0
	beq _021A3AAA
	mov r0, #1
	bl sub_0203D564
	mov r0, #0
	strb r0, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A3AAA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A3AC2
	mov r6, #0
	mov r0, #0
	bl sub_0203D564
	strb r6, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A3AC2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A3AC8: .word 0x000002BB
	thumb_func_end ovy300_21a3a7c

	thumb_func_start ovy300_21a3acc
ovy300_21a3acc: ; 0x021A3ACC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021A3B3C ; =0x021A44BC
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A3AEA
	mov r0, #1
	bl sub_0203D564
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A3AEA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A3AFE
	mov r0, #0
	bl sub_0203D564
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A3AFE:
	bl GCTX_HIDGetPressedKeys
	mov r6, #8
	tst r0, r6
	beq _021A3B12
	mov r0, #0
	bl sub_0203D564
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3B12:
	bl GCTX_HIDGetPressedKeys
	mov r1, #4
	tst r0, r1
	beq _021A3B38
	bl sub_0203D554
	cmp r0, #1
	bne _021A3B34
	mov r0, #0
	bl sub_0203D564
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC90
_021A3B34:
	mov r0, #9
	pop {r4, r5, r6, pc}
_021A3B38:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A3B3C: .word 0x021A44BC
	thumb_func_end ovy300_21a3acc

	thumb_func_start ovy300_21a3b40
ovy300_21a3b40: ; 0x021A3B40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021A3BB0 ; =0x021A44A4
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A3B5E
	mov r0, #1
	bl sub_0203D564
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A3B5E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A3B72
	mov r0, #0
	bl sub_0203D564
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A3B72:
	bl GCTX_HIDGetPressedKeys
	mov r6, #8
	tst r0, r6
	beq _021A3B86
	mov r0, #0
	bl sub_0203D564
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3B86:
	bl GCTX_HIDGetPressedKeys
	mov r1, #4
	tst r0, r1
	beq _021A3BAC
	bl sub_0203D554
	cmp r0, #1
	bne _021A3BA8
	mov r0, #0
	bl sub_0203D564
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC90
_021A3BA8:
	mov r0, #9
	pop {r4, r5, r6, pc}
_021A3BAC:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A3BB0: .word 0x021A44A4
	thumb_func_end ovy300_21a3b40

	thumb_func_start ovy300_21a3bb4
ovy300_21a3bb4: ; 0x021A3BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _021A3C54 ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	ldr r4, _021A3C58 ; =0x021A45A0
	add r6, r0, #0
	add r3, sp, #4
	mov r2, #5
_021A3BCA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3BCA
	mov r4, #0
	add r7, sp, #4
	strb r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	add r0, sp, #4
	mov r1, #0x7b
	str r5, [sp, #0x28]
	bl sub_0219AF1C
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldrb r1, [r7, #0x19]
	add r0, #0xcc
	mov r2, #0x63
	str r1, [r5, r0]
	mov r0, #0x1e
	str r4, [sp]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x4b
	mov r3, #2
	bl sub_0219B27C
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r6, #0x1e
	mov r0, #0x1e
	lsl r6, r6, #4
	lsl r0, r0, #4
	sub r6, #0x10
	add r7, r0, #4
_021A3C2C:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0219B1B4
	add r1, r4, #0
	ldr r0, [r5, r6]
	add r1, #0x19
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #6
	blo _021A3C2C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3C54: .word 0x0000807B
_021A3C58: .word 0x021A45A0
	thumb_func_end ovy300_21a3bb4

	thumb_func_start ovy300_21a3c5c
ovy300_21a3c5c: ; 0x021A3C5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _021A3CFC ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	ldr r4, _021A3D00 ; =0x021A45F0
	add r6, r0, #0
	add r3, sp, #4
	mov r2, #5
_021A3C72:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3C72
	mov r4, #0
	add r7, sp, #4
	strb r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	add r0, sp, #4
	mov r1, #0x7b
	str r5, [sp, #0x28]
	bl sub_0219AF1C
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldrb r1, [r7, #0x19]
	add r0, #0xcc
	mov r2, #0x63
	str r1, [r5, r0]
	mov r0, #0x1e
	str r4, [sp]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x4b
	mov r3, #2
	bl sub_0219B27C
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r6, #0x1e
	mov r0, #0x1e
	lsl r6, r6, #4
	lsl r0, r0, #4
	sub r6, #0x10
	add r7, r0, #4
_021A3CD4:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0219B1B4
	add r1, r4, #0
	ldr r0, [r5, r6]
	add r1, #0x33
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #0x1a
	blo _021A3CD4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3CFC: .word 0x0000807B
_021A3D00: .word 0x021A45F0
	thumb_func_end ovy300_21a3c5c

	thumb_func_start ovy300_21a3d04
ovy300_21a3d04: ; 0x021A3D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _021A3DAC ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	ldr r4, _021A3DB0 ; =0x021A45C8
	add r6, r0, #0
	add r3, sp, #4
	mov r2, #5
_021A3D1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3D1A
	mov r4, #0
	add r7, sp, #4
	strb r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	add r0, sp, #4
	mov r1, #0x7b
	str r5, [sp, #0x28]
	bl sub_0219AF1C
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldrb r1, [r7, #0x19]
	add r0, #0xcc
	mov r2, #0x63
	str r1, [r5, r0]
	mov r0, #0x1e
	str r4, [sp]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x4b
	mov r3, #2
	bl sub_0219B27C
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r6, #0x1e
	mov r0, #0x1e
	lsl r6, r6, #4
	lsl r0, r0, #4
	sub r6, #0x10
	add r7, r0, #4
_021A3D7C:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0219B1B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A0874
	add r1, r0, #0
	ldr r0, [r5, r6]
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #0x10
	bls _021A3D7C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A3DAC: .word 0x0000807B
_021A3DB0: .word 0x021A45C8
	thumb_func_end ovy300_21a3d04

	thumb_func_start ovy300_21a3db4
ovy300_21a3db4: ; 0x021A3DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _021A3E44 ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	ldr r6, _021A3E48 ; =0x021A4618
	add r4, r0, #0
	add r3, sp, #4
	mov r2, #5
_021A3DCA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3DCA
	mov r6, #0
	add r0, sp, #4
	strb r6, [r0, #0x18]
	strh r6, [r0, #0x1a]
	add r0, sp, #4
	mov r1, #0x7b
	str r5, [sp, #0x28]
	bl sub_0219AF1C
	mov r7, #0x1e
	lsl r7, r7, #4
	str r0, [r5, r7]
	add r0, sp, #4
	ldrb r1, [r0, #0x19]
	add r0, r7, #0
	add r0, #0xcc
	str r1, [r5, r0]
	str r6, [sp]
	ldr r0, [r5, r7]
	add r1, r4, #0
	mov r2, #0x63
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #2
	bl sub_0219B27C
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r6, r7, #0
	mov r4, #0x60
	sub r6, #0x10
_021A3E1E:
	add r2, r4, #0
	ldr r0, [r5, r7]
	mov r1, #0
	sub r2, #0x60
	bl sub_0219B1B4
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x64]
	cmp r4, #0x69
	bls _021A3E1E
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A3E44: .word 0x0000807B
_021A3E48: .word 0x021A4618
	thumb_func_end ovy300_21a3db4

	thumb_func_start ovy300_21a3e4c
ovy300_21a3e4c: ; 0x021A3E4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _021A3EC8 ; =0x0000807B
	add r5, r0, #0
	mov r0, #0x9d
	bl GFL_ArcSysCreateFileHandle
	ldr r4, _021A3ECC ; =0x021A4640
	add r7, r0, #0
	add r3, sp, #4
	mov r2, #5
_021A3E62:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3E62
	mov r4, #0
	add r0, sp, #4
	strb r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	add r0, sp, #4
	mov r1, #0x7b
	str r5, [sp, #0x28]
	bl sub_0219AF1C
	mov r6, #0x1e
	lsl r6, r6, #4
	str r0, [r5, r6]
	add r0, sp, #4
	ldrb r1, [r0, #0x19]
	add r0, r6, #0
	add r0, #0xcc
	str r1, [r5, r0]
	str r4, [sp]
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0x64
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0x4b
	mov r3, #2
	bl sub_0219B27C
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r7, r4, #0
_021A3EB2:
	ldr r0, [r5, r6]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0219B1B4
	add r4, r4, #1
	cmp r4, #0xe
	blo _021A3EB2
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021A3EC8: .word 0x0000807B
_021A3ECC: .word 0x021A4640
	thumb_func_end ovy300_21a3e4c

	thumb_func_start ovy300_21a3ed0
ovy300_21a3ed0: ; 0x021A3ED0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x1e
	add r6, r0, #0
	lsl r5, r5, #4
	ldr r0, [r6, r5]
	bl sub_0219B138
	add r0, r5, #4
	mov r4, #0
	str r4, [r6, r5]
	str r0, [sp]
	add r7, r0, #0
_021A3EE8:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A3EFC
	bl GFL_StrBufFree
	ldr r0, [sp]
	mov r1, #0
	str r1, [r5, r0]
_021A3EFC:
	add r4, r4, #1
	cmp r4, #0x32
	blo _021A3EE8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy300_21a3ed0

	thumb_func_start ovy300_21a3f04
ovy300_21a3f04: ; 0x021A3F04
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	lsl r2, r4, #2
	add r6, r3, #0
	add r3, r5, r2
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl ovy300_21a25e0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #1]
	cmp r0, r4
	bne _021A3F32
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy300_21a3130
_021A3F32:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a3f04
_021A3F34:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy300_21a3f3c
ovy300_21a3f3c: ; 0x021A3F3C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	lsl r2, r4, #2
	add r6, r3, #0
	add r3, r5, r2
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl ovy300_21a25e0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #2]
	cmp r0, r4
	bne _021A3F6A
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy300_21a3130
_021A3F6A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a3f3c
_021A3F6C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy300_21a3f70
ovy300_21a3f70: ; 0x021A3F70
	push {r4, lr}
	neg r1, r1
	lsl r1, r1, #0x18
	add r4, r0, #0
	asr r1, r1, #0x18
	bl ovy300_21a3578
	add r0, r4, #0
	mov r1, #1
	bl ovy300_21a30a8
	pop {r4, pc}
	thumb_func_end ovy300_21a3f70

	thumb_func_start ovy300_21a3f88
ovy300_21a3f88: ; 0x021A3F88
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	lsl r2, r4, #2
	add r6, r3, #0
	add r3, r5, r2
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl ovy300_21a25e0
	ldr r1, [r5]
	add r0, r5, #0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #3]
	bl sub_021A0870
	cmp r4, r0
	bne _021A3FBC
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy300_21a3130
_021A3FBC:
	ldr r1, [r5]
	add r0, r5, #0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #4]
	bl sub_021A0870
	cmp r4, r0
	bne _021A3FD8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy300_21a3130
_021A3FD8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a3f88
_021A3FDC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy300_21a3fe0
ovy300_21a3fe0: ; 0x021A3FE0
	push {r4, lr}
	neg r1, r1
	lsl r1, r1, #0x18
	add r4, r0, #0
	asr r1, r1, #0x18
	bl ovy300_21a3578
	add r0, r4, #0
	mov r1, #1
	bl ovy300_21a30a8
	pop {r4, pc}
	thumb_func_end ovy300_21a3fe0

	thumb_func_start ovy300_21a3ff8
ovy300_21a3ff8: ; 0x021A3FF8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	lsl r2, r4, #2
	add r6, r3, #0
	add r3, r5, r2
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl ovy300_21a25e0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #5]
	cmp r0, r4
	bne _021A4026
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ovy300_21a3130
_021A4026:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy300_21a3ff8
_021A4028:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy300_21a402c
ovy300_21a402c: ; 0x021A402C
	push {r4, lr}
	neg r1, r1
	lsl r1, r1, #0x18
	add r4, r0, #0
	asr r1, r1, #0x18
	bl ovy300_21a3578
	add r0, r4, #0
	mov r1, #1
	bl ovy300_21a30a8
	pop {r4, pc}
	thumb_func_end ovy300_21a402c

	thumb_func_start ovy300_21a4044
ovy300_21a4044: ; 0x021A4044
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_021A262C
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #6]
	cmp r0, r4
	bne _021A4066
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy300_21a3394
_021A4066:
	lsl r1, r4, #0x10
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ovy300_21a350c
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy300_21a4044
_021A4078:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy300_21a407c
ovy300_21a407c: ; 0x021A407C
	push {r4, lr}
	neg r1, r1
	lsl r1, r1, #0x18
	add r4, r0, #0
	asr r1, r1, #0x18
	bl ovy300_21a3664
	add r0, r4, #0
	mov r1, #1
	bl ovy300_21a30a8
	pop {r4, pc}
	thumb_func_end ovy300_21a407c
_021A4094:
	.byte 0xC1, 0xFB, 0x19, 0x02, 0xF1, 0xFB, 0x19, 0x02, 0x05, 0xFC, 0x19, 0x02
	.byte 0x00, 0x0D, 0x01, 0x07, 0x05, 0x0C, 0x08, 0x04, 0x06, 0x03, 0x02, 0x09, 0x0B, 0x0A, 0x2A, 0x00
	.byte 0x22, 0x00, 0x2C, 0x00, 0x28, 0x00, 0x26, 0x00, 0x20, 0x00, 0x2F, 0x00, 0x25, 0x00, 0x2B, 0x00
	.byte 0x2D, 0x00, 0x2E, 0x00, 0x23, 0x00, 0x27, 0x00, 0x21, 0x00, 0x24, 0x00, 0x29, 0x00, 0x1F, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x02, 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0D, 0x09, 0x1A, 0x02, 0xE5, 0x09, 0x1A, 0x02, 0x81, 0x0A, 0x1A, 0x02
	.byte 0x99, 0x0A, 0x1A, 0x02, 0x1D, 0x0B, 0x1A, 0x02, 0xED, 0x0C, 0x1A, 0x02, 0x09, 0x0D, 0x1A, 0x02
	.byte 0x2D, 0x0D, 0x1A, 0x02, 0x2D, 0x0E, 0x1A, 0x02, 0x81, 0x0E, 0x1A, 0x02, 0xE9, 0x0E, 0x1A, 0x02
	.byte 0xC1, 0x0F, 0x1A, 0x02, 0xD9, 0x0F, 0x1A, 0x02, 0x45, 0x10, 0x1A, 0x02, 0x19, 0x12, 0x1A, 0x02
	.byte 0x31, 0x12, 0x1A, 0x02, 0xA1, 0x12, 0x1A, 0x02, 0x9D, 0x14, 0x1A, 0x02, 0xB5, 0x14, 0x1A, 0x02
	.byte 0x25, 0x15, 0x1A, 0x02, 0xF9, 0x16, 0x1A, 0x02, 0x11, 0x17, 0x1A, 0x02, 0x81, 0x17, 0x1A, 0x02
	.byte 0x29, 0x19, 0x1A, 0x02, 0x41, 0x19, 0x1A, 0x02, 0x91, 0x19, 0x1A, 0x02, 0x45, 0x1A, 0x1A, 0x02
	.byte 0x07, 0x01, 0x00, 0x1E, 0x03, 0x0F, 0x07, 0x01, 0x03, 0x1E, 0x03, 0x0F, 0x01, 0x03, 0x00, 0x0A
	.byte 0x03, 0x0F, 0x01, 0x03, 0x03, 0x0A, 0x03, 0x0F, 0x01, 0x03, 0x06, 0x0A, 0x03, 0x0F, 0x01, 0x03
	.byte 0x09, 0x0A, 0x03, 0x0F, 0x01, 0x03, 0x0D, 0x0A, 0x03, 0x0F, 0x01, 0x13, 0x00, 0x0A, 0x03, 0x0F
	.byte 0x01, 0x17, 0x03, 0x02, 0x03, 0x0F, 0x01, 0x10, 0x06, 0x10, 0x03, 0x0F, 0x01, 0x13, 0x09, 0x0A
	.byte 0x03, 0x0F, 0x01, 0x13, 0x12, 0x0A, 0x03, 0x0F, 0x00, 0x03, 0x08, 0x0A, 0x02, 0x0F, 0x00, 0x02
	.byte 0x0B, 0x0C, 0x02, 0x0F, 0x00, 0x02, 0x0E, 0x0C, 0x02, 0x0F, 0x01, 0x01, 0x12, 0x1E, 0x02, 0x05
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x06, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0xFC, 0x00, 0x0C, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x54, 0x00, 0x01, 0x00, 0x0A, 0x01, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xAC, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xA8, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xA8, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0xED, 0x39, 0x1A, 0x02, 0x19, 0x3A, 0x1A, 0x02, 0x35, 0x3A, 0x1A, 0x02
	.byte 0x59, 0x3A, 0x1A, 0x02, 0xA8, 0xBF, 0xE8, 0xFF, 0x00, 0x27, 0x80, 0x8F, 0x28, 0x4F, 0x80, 0x8F
	.byte 0x50, 0x77, 0x80, 0x8F, 0x78, 0x9F, 0x80, 0x8F, 0xFF, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xE8, 0xFF
	.byte 0x00, 0x17, 0x80, 0x8F, 0x18, 0x2F, 0x80, 0x8F, 0x30, 0x47, 0x80, 0x8F, 0x48, 0x5F, 0x80, 0x8F
	.byte 0x60, 0x77, 0x80, 0x8F, 0x78, 0x8F, 0x80, 0x8F, 0x90, 0xA7, 0x80, 0x8F, 0xFF, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x03, 0x05, 0x01, 0x00, 0x00, 0x00, 0x17, 0x80, 0xFF, 0x10, 0x03, 0x10, 0x03
	.byte 0x00, 0x02, 0x01, 0x01, 0x18, 0x2F, 0x80, 0xFF, 0x10, 0x06, 0x10, 0x03, 0x01, 0x03, 0x02, 0x02
	.byte 0x30, 0x47, 0x80, 0xFF, 0x10, 0x09, 0x10, 0x03, 0x02, 0x04, 0x03, 0x03, 0x48, 0x5F, 0x80, 0xFF
	.byte 0x10, 0x0C, 0x10, 0x05, 0x03, 0x05, 0x04, 0x04, 0x60, 0x87, 0x80, 0xFF, 0x0E, 0x12, 0x12, 0x03
	.byte 0x04, 0x00, 0x06, 0x06, 0x90, 0xA7, 0x71, 0xFF, 0x00, 0x12, 0x07, 0x03, 0x04, 0x00, 0x05, 0x05
	.byte 0x90, 0xA7, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0xA8, 0xBF, 0xB8, 0xCF
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0xA8, 0xBF, 0xD0, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x09, 0x09, 0x09, 0xA8, 0xBF, 0xE8, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x45, 0x40, 0x1A, 0x02, 0x79, 0x40, 0x1A, 0x02, 0x7D, 0x40, 0x1A, 0x02
	.byte 0x89, 0x3F, 0x1A, 0x02, 0xDD, 0x3F, 0x1A, 0x02, 0xE1, 0x3F, 0x1A, 0x02, 0x3D, 0x3F, 0x1A, 0x02
	.byte 0x6D, 0x3F, 0x1A, 0x02, 0x71, 0x3F, 0x1A, 0x02, 0xF9, 0x3F, 0x1A, 0x02, 0x29, 0x40, 0x1A, 0x02
	.byte 0x2D, 0x40, 0x1A, 0x02, 0x05, 0x3F, 0x1A, 0x02, 0x35, 0x3F, 0x1A, 0x02, 0x39, 0x3F, 0x1A, 0x02
	.byte 0x01, 0x05, 0x10, 0x00, 0x10, 0x03, 0x03, 0x00, 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x03, 0x08, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x68, 0x46, 0x1A, 0x02
	.byte 0x94, 0x45, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x05, 0x10, 0x00, 0x10, 0x03, 0x03, 0x00
	.byte 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04, 0x03, 0x03, 0x08, 0x00, 0x32, 0x00, 0x01, 0x00
	.byte 0x00, 0x07, 0x00, 0x00, 0x90, 0x47, 0x1A, 0x02, 0x70, 0x45, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x05, 0x10, 0x00, 0x10, 0x03, 0x03, 0x00, 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x03, 0x08, 0x00, 0x32, 0x00, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0xE0, 0x46, 0x1A, 0x02
	.byte 0x7C, 0x45, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x05, 0x10, 0x00, 0x10, 0x03, 0x03, 0x00
	.byte 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04, 0x03, 0x03, 0x08, 0x00, 0x32, 0x00, 0x01, 0x00
	.byte 0x00, 0x07, 0x00, 0x00, 0x38, 0x47, 0x1A, 0x02, 0x88, 0x45, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x05, 0x10, 0x00, 0x10, 0x05, 0x04, 0x01, 0x01, 0x01, 0x01, 0x28, 0x14, 0x0A, 0x08, 0x05
	.byte 0x04, 0x03, 0x08, 0x00, 0x0E, 0x00, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0xA0, 0x46, 0x1A, 0x02
	.byte 0x64, 0x45, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x60, 0x77, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x98, 0xE7, 0x08, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x27, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x28, 0x4F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x50, 0x77, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x78, 0x9F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xB8, 0xCF, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xD0, 0xE7, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x17, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x18, 0x2F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x47, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x48, 0x5F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x60, 0x77, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x78, 0x8F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x90, 0xA7, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xB8, 0xCF, 0x04, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xD0, 0xE7, 0x05, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x30, 0x47, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x60, 0x77, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xB8, 0xCF, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xD0, 0xE7, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x17, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x18, 0x2F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x47, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x48, 0x5F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x60, 0x77, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x78, 0x8F, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x90, 0xA7, 0x98, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xB8, 0xCF, 0x04, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xD0, 0xE7, 0x05, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7A, 0x6B, 0x6E, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A4094
