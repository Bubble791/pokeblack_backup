    .include "macros/function.inc"
	.include "overlay171.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy171_21dda60
ovy171_21dda60: ; 0x021DDA60
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x71
	lsl r2, r2, #0xe
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r4, #0x71
	add r4, #0xaf
	add r1, r4, #0
	mov r2, #0x71
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r4, #0
	add r6, r0, #0
	blx MI_CpuFill8
	str r5, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy171_21dda60

	thumb_func_start ovy171_21dda90
ovy171_21dda90: ; 0x021DDA90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r3, #0
	lsl r2, r1, #2
	ldr r1, _021DDAC0 ; =0x021DEB08
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	str r0, [r5]
	cmp r0, #5
	bne _021DDAAC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DDAAC:
	ldr r0, [r4, #8]
	bl sub_0203349C
	add r0, r4, #0
	bl ovy171_21de038
	bl sub_0204B794
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DDAC0: .word 0x021DEB08
	thumb_func_end ovy171_21dda90

	thumb_func_start ovy171_21ddac4
ovy171_21ddac4: ; 0x021DDAC4
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x71
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy171_21ddac4

	thumb_func_start ovy171_21ddad4
ovy171_21ddad4: ; 0x021DDAD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021DDB4C ; =0x04000050
	strh r4, [r0]
	ldr r0, _021DDB50 ; =0x04001050
	strh r4, [r0]
	mov r0, #1
	bl sub_02046DF8
	add r0, r5, #0
	bl ovy171_21ddf28
	bl sub_021DDD2C
	bl ovy171_21ddd3c
	add r0, r5, #0
	bl ovy171_21dddfc
	add r0, r5, #0
	bl ovy171_21dde70
	add r0, r5, #0
	bl ovy171_21ddf98
	add r0, r5, #0
	bl ovy171_21de424
	add r0, r5, #0
	bl ovy171_21de84c
	mov r0, #1
	mov r1, #0x71
	bl sub_02042BA8
	mov r0, #0x17
	mov r1, #1
	bl sub_02046CFC
	add r0, r5, #0
	bl ovy171_21ddee4
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #4
	bl sub_021DDD1C
	add r1, r0, #0
	add r0, r5, #0
	bl ovy171_21ddcc8
	pop {r3, r4, r5, pc}
	nop
_021DDB4C: .word 0x04000050
_021DDB50: .word 0x04001050
	thumb_func_end ovy171_21ddad4

	thumb_func_start ovy171_21ddb54
ovy171_21ddb54: ; 0x021DDB54
	push {r4, lr}
	add r4, r0, #0
	bl sub_021DDEFC
	mov r0, #0x17
	mov r1, #0
	bl sub_02046CFC
	add r0, r4, #0
	bl sub_021DEAE0
	add r0, r4, #0
	bl ovy171_21de43c
	add r0, r4, #0
	bl ovy171_21de01c
	add r0, r4, #0
	bl ovy171_21ddec0
	bl ovy171_21ddde0
	mov r0, #5
	pop {r4, pc}
	thumb_func_end ovy171_21ddb54

	thumb_func_start ovy171_21ddb84
ovy171_21ddb84: ; 0x021DDB84
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021DDB98
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
_021DDB98:
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ovy171_21ddb84
_021DDB9C:
	.byte 0x47, 0x21, 0x89, 0x00
	.byte 0x42, 0x58, 0x00, 0x2A, 0x02, 0xD1, 0x08, 0x39, 0x40, 0x58, 0x70, 0x47, 0x52, 0x1E, 0x42, 0x50
	.byte 0x03, 0x20, 0x70, 0x47

	thumb_func_start ovy171_21ddbb4
ovy171_21ddbb4: ; 0x021DDBB4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x11
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021DDBCC
	cmp r1, #1
	beq _021DDC44
	cmp r1, #2
	beq _021DDCB4
	b _021DDCBC
_021DDBCC:
	ldr r0, [r5, #0x1c]
	bl PrintSystem_IsTextPrintActive
	cmp r0, #0
	beq _021DDCBC
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DDC0C
	mov r7, #0x10
	mov r4, #0
	mov r6, #0x10
	sub r7, #0x11
_021DDBE6:
	str r6, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #3
	add r2, r7, #0
	mov r3, #0
	bl sub_0203346C
	str r6, [sp]
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #9
	add r2, r7, #0
	mov r3, #0
	bl sub_0203346C
	add r4, r4, #1
	cmp r4, #3
	blo _021DDBE6
	b _021DDC34
_021DDC0C:
	mov r4, #0
	mov r6, #0x10
	mov r7, #1
_021DDC12:
	str r6, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0203346C
	str r6, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #6
	add r2, r7, #0
	mov r3, #0
	bl sub_0203346C
	add r4, r4, #1
	cmp r4, #3
	blo _021DDC12
_021DDC34:
	ldr r0, _021DDCC0 ; =0x00000642
	bl GFL_SndSEPlay
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_021DDC44:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldr r0, [r5, #8]
	bne _021DDC84
	mov r1, #3
	mov r4, #3
	bl sub_02033548
	cmp r0, #0
	bne _021DDC76
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, _021DDCC4 ; =0x0000057A
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #4
	bl sub_021DDD1C
	pop {r3, r4, r5, r6, r7, pc}
_021DDC76:
	add r1, r4, #0
	sub r4, #0xb
	add r0, r5, #0
	add r2, r4, #0
_021DDC7E:
	bl ovy171_21de808
	b _021DDCBC
_021DDC84:
	mov r1, #0
	mov r4, #0
	bl sub_02033548
	cmp r0, #0
	bne _021DDCAC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, _021DDCC4 ; =0x0000057A
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #4
	bl sub_021DDD1C
	pop {r3, r4, r5, r6, r7, pc}
_021DDCAC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	b _021DDC7E
_021DDCB4:
	mov r1, #1
	bl ovy171_21ddcf0
	pop {r3, r4, r5, r6, r7, pc}
_021DDCBC:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDCC0: .word 0x00000642
_021DDCC4: .word 0x0000057A
	thumb_func_end ovy171_21ddbb4

	thumb_func_start ovy171_21ddcc8
ovy171_21ddcc8: ; 0x021DDCC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r6, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r4, #0x71
	mov r0, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #8]
	bl GFL_FadeScreenSet
	add r4, #0xa7
	str r6, [r5, r4]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy171_21ddcc8

	thumb_func_start ovy171_21ddcf0
ovy171_21ddcf0: ; 0x021DDCF0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	add r6, r1, #0
	str r0, [sp, #4]
	mov r4, #0x71
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl GFL_FadeScreenSet
	add r4, #0xa7
	str r6, [r5, r4]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy171_21ddcf0

	thumb_func_start sub_021DDD1C
sub_021DDD1C: ; 0x021DDD1C
	mov r3, #0x47
	lsl r3, r3, #2
	str r1, [r0, r3]
	sub r3, #8
	str r2, [r0, r3]
	mov r0, #3
	bx lr
	.align 2, 0
	thumb_func_end sub_021DDD1C

	thumb_func_start sub_021DDD2C
sub_021DDD2C: ; 0x021DDD2C
	ldr r0, _021DDD34 ; =0x021DEB1C
	ldr r3, _021DDD38 ; =sub_02046C40
	bx r3
	nop
_021DDD34: .word 0x021DEB1C
_021DDD38: .word sub_02046C40
	thumb_func_end sub_021DDD2C

	thumb_func_start ovy171_21ddd3c
ovy171_21ddd3c: ; 0x021DDD3C
	push {r4, lr}
	sub sp, #0x70
	mov r0, #0x71
	bl sub_020444A4
	ldr r4, _021DDDD0 ; =0x021DEAF8
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021DDDD4 ; =0x021DEB88
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
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl sub_020450CC
	ldr r4, _021DDDD8 ; =0x021DEB68
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
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	ldr r4, _021DDDDC ; =0x021DEBA8
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
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	add sp, #0x70
	pop {r4, pc}
	.align 2, 0
_021DDDD0: .word 0x021DEAF8
_021DDDD4: .word 0x021DEB88
_021DDDD8: .word 0x021DEB68
_021DDDDC: .word 0x021DEBA8
	thumb_func_end ovy171_21ddd3c

	thumb_func_start ovy171_21ddde0
ovy171_21ddde0: ; 0x021DDDE0
	push {r3, lr}
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy171_21ddde0

	thumb_func_start ovy171_21dddfc
ovy171_21dddfc: ; 0x021DDDFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _021DDE6C ; =0x00008071
	mov r0, #0x63
	add r1, r5, #0
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	mov r7, #1
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0x12
	mov r2, #2
	mov r3, #0
	add r4, r0, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #4
	mov r1, #0
	bl sub_02045350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DDE6C: .word 0x00008071
	thumb_func_end ovy171_21dddfc

	thumb_func_start ovy171_21dde70
ovy171_21dde70: ; 0x021DDE70
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r2, #2
	mov r3, #0x71
	mov r6, #2
	mov r4, #0x71
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x14]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0xc]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x10]
	mov r0, #0x71
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, #0x18]
	lsl r0, r6, #0xa
	mov r1, #0x71
	bl sub_020219A8
	str r0, [r5, #0x1c]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy171_21dde70

	thumb_func_start ovy171_21ddec0
ovy171_21ddec0: ; 0x021DDEC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	ldr r0, [r4, #0x10]
	bl sub_02022DA8
	ldr r0, [r4, #0x18]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x1c]
	bl sub_02021A18
	pop {r4, pc}
	thumb_func_end ovy171_21ddec0

	thumb_func_start ovy171_21ddee4
ovy171_21ddee4: ; 0x021DDEE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DDEF8 ; =ovy171_21ddf08
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_021DDEF8: .word ovy171_21ddf08
	thumb_func_end ovy171_21ddee4

	thumb_func_start sub_021DDEFC
sub_021DDEFC: ; 0x021DDEFC
	ldr r0, [r0, #4]
	ldr r3, _021DDF04 ; =GFL_TCBRemove
	bx r3
	nop
_021DDF04: .word GFL_TCBRemove
	thumb_func_end sub_021DDEFC

	thumb_func_start ovy171_21ddf08
ovy171_21ddf08: ; 0x021DDF08
	push {r3, lr}
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r3, _021DDF20 ; =0x02FE0000
	ldr r1, _021DDF24 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_021DDF20: .word 0x02FE0000
_021DDF24: .word 0x00003FF8
	thumb_func_end ovy171_21ddf08

	thumb_func_start ovy171_21ddf28
ovy171_21ddf28: ; 0x021DDF28
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021DDF3C
	ldr r0, [r1]
	ldr r7, [r1, #4]
	str r0, [sp]
	b _021DDF42
_021DDF3C:
	ldr r0, [r1, #4]
	ldr r7, [r1]
	str r0, [sp]
_021DDF42:
	mov r4, #0
_021DDF44:
	ldr r0, [sp]
	bl sub_0201FDF8
	cmp r0, r4
	bls _021DDF60
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0201FF08
	add r1, r5, #0
	add r1, #0xf8
	b _021DDF6A
_021DDF60:
	lsl r0, r4, #2
	add r5, r6, r0
	add r1, r5, #0
	add r1, #0xf8
	mov r0, #0
_021DDF6A:
	str r0, [r1]
	add r0, r7, #0
	bl sub_0201FDF8
	cmp r0, r4
	bls _021DDF86
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0201FF08
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _021DDF8E
_021DDF86:
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021DDF8E:
	add r4, r4, #1
	cmp r4, #3
	blo _021DDF44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy171_21ddf28

	thumb_func_start ovy171_21ddf98
ovy171_21ddf98: ; 0x021DDF98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x71
	bl sub_02048080
	mov r6, #0
	mov r7, #5
	add r4, r6, #0
_021DDFAA:
	str r7, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	mov r3, #0xf
	bl sub_020480C0
	lsl r1, r6, #3
	add r1, r5, r1
	add r6, r6, #1
	str r0, [r1, #0x20]
	cmp r6, #6
	blo _021DDFAA
	mov r7, #0
_021DDFCE:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r0, [r6, #0x20]
	bl sub_020484F4
	add r1, r7, #0
	bl sub_0204713C
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE00C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy171_21de07c
	add r0, r5, #0
	add r1, r4, #0
	bl ovy171_21de1e4
	add r0, r5, #0
	add r1, r4, #0
	bl ovy171_21de270
	add r0, r5, #0
	add r1, r4, #0
	bl ovy171_21de3e8
	b _021DE012
_021DE00C:
	ldr r0, [r6, #0x20]
	bl sub_02048244
_021DE012:
	add r4, r4, #1
	cmp r4, #6
	blo _021DDFCE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy171_21ddf98

	thumb_func_start ovy171_21de01c
ovy171_21de01c: ; 0x021DE01C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DE022:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #6
	blo _021DE022
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy171_21de01c

	thumb_func_start ovy171_21de038
ovy171_21de038: ; 0x021DE038
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x1c]
	bl sub_02021A3C
	mov r4, #0
_021DE044:
	lsl r0, r4, #3
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r6, [r7, #0x1c]
	cmp r0, #0
	beq _021DE072
	ldr r0, [r5, #0x20]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021DE072
	ldr r0, [r5, #0x20]
	bl sub_02048244
	add r5, #0x24
	mov r0, #0
	strb r0, [r5]
_021DE072:
	add r4, r4, #1
	cmp r4, #6
	blo _021DE044
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy171_21de038

	thumb_func_start ovy171_21de07c
ovy171_21de07c: ; 0x021DE07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r1, #0
	add r5, r0, #0
	str r0, [sp, #0x1c]
	add r0, #0x20
	lsl r4, r7, #3
	str r0, [sp, #0x1c]
	ldr r0, [r0, r4]
	ldr r1, _021DE1D8 ; =0x00008071
	str r0, [sp, #0x18]
	mov r0, #0xc
	bl GFL_StrBufCreate
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204898C
	add r6, r5, #0
	str r0, [sp, #0x24]
	add r6, #0xf8
	lsl r7, r7, #2
	ldr r0, [r5, #0x18]
	ldr r2, [r6, r7]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r2, #0x20
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #7
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_02021C7C
	add r0, r5, #0
	str r0, [sp, #0x28]
	add r0, #0x24
	mov r1, #1
	str r0, [sp, #0x28]
	strb r1, [r0, r4]
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [r6, r7]
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021DE1D2
	ldr r0, [r6, r7]
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021DE1D2
	ldr r0, [r6, r7]
	bl sub_0201CEB4
	cmp r0, #0
	bne _021DE17A
	ldr r0, [r5, #0x14]
	mov r1, #0x16
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	ldr r7, [r5, #0xc]
	bl sub_020484D8
	str r0, [sp, #0x2c]
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	mov r2, #0
	bl sub_02022888
	ldr r1, [sp, #0x2c]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r5, [r5, #0x1c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	add r1, r0, #0
	str r6, [sp]
	ldr r0, _021DE1DC ; =0x00002960
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r3, #7
	bl sub_02021C7C
	ldr r0, [sp, #0x28]
	mov r1, #1
	strb r1, [r0, r4]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DE17A:
	cmp r0, #1
	bne _021DE1D2
	ldr r0, [r5, #0x14]
	mov r1, #0x17
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	ldr r7, [r5, #0xc]
	bl sub_020484D8
	str r0, [sp, #0x30]
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	mov r2, #0
	bl sub_02022888
	ldr r1, [sp, #0x30]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r5, [r5, #0x1c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	add r1, r0, #0
	str r6, [sp]
	ldr r0, _021DE1E0 ; =0x000031A0
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r3, #7
	bl sub_02021C7C
	ldr r0, [sp, #0x28]
	mov r1, #1
	strb r1, [r0, r4]
	add r0, r6, #0
	bl GFL_StrBufFree
_021DE1D2:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DE1D8: .word 0x00008071
_021DE1DC: .word 0x00002960
_021DE1E0: .word 0x000031A0
	thumb_func_end ovy171_21de07c

	thumb_func_start ovy171_21de1e4
ovy171_21de1e4: ; 0x021DE1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _021DE26C ; =0x00008071
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0xb
	bl sub_0204898C
	str r0, [sp, #0xc]
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #0x9e
	mov r7, #0
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	lsl r4, r4, #3
	add r0, r5, r4
	ldr r7, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	mov r2, #8
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x20
	bl sub_02021C7C
	add r1, r5, r4
	add r1, #0x24
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE26C: .word 0x00008071
	thumb_func_end ovy171_21de1e4

	thumb_func_start ovy171_21de270
ovy171_21de270: ; 0x021DE270
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _021DE3E4 ; =0x00008071
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl sub_0204898C
	ldr r1, [r5, #0x10]
	mov r2, #0
	str r0, [sp, #0x28]
	bl sub_02022888
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	lsr r1, r0, #1
	mov r0, #0x5c
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	lsl r4, r0, #3
	add r0, r5, #0
	str r0, [sp, #0x2c]
	add r0, #0x20
	str r0, [sp, #0x2c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r3, #0x20
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl sub_02021C7C
	add r0, r5, #0
	str r0, [sp, #0x30]
	add r0, #0x24
	mov r1, #1
	str r0, [sp, #0x30]
	strb r1, [r0, r4]
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl sub_0204898C
	str r0, [sp, #0x34]
	add r0, r5, #0
	str r0, [sp, #0x38]
	add r0, #0xf8
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [r1, r0]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x34]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x10]
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_02022888
	sub r0, r7, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	mov r3, #0x20
	bl sub_02021C7C
	ldr r0, [sp, #0x30]
	mov r1, #1
	strb r1, [r0, r4]
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl sub_0204898C
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #0xa1
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x40]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, r4]
	bl sub_020484F4
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	mov r3, #0x20
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_02021C7C
	ldr r0, [sp, #0x30]
	mov r1, #1
	strb r1, [r0, r4]
	ldr r0, [sp, #0x40]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DE3E4: .word 0x00008071
	thumb_func_end ovy171_21de270

	thumb_func_start ovy171_21de3e8
ovy171_21de3e8: ; 0x021DE3E8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r5, #0x20
	lsl r4, r1, #3
	ldr r0, [r5, r4]
	bl sub_020484F4
	mov r6, #1
	str r6, [sp]
	str r6, [sp, #4]
	mov r1, #0x40
	mov r2, #0x1b
	mov r3, #0x30
	bl sub_020470F8
	ldr r0, [r5, r4]
	bl sub_020484F4
	str r6, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0x40
	mov r2, #0x1c
	mov r3, #0x30
	bl sub_020470F8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy171_21de3e8

	thumb_func_start ovy171_21de424
ovy171_21de424: ; 0x021DE424
	push {r4, lr}
	add r4, r0, #0
	bl ovy171_21de450
	add r0, r4, #0
	bl ovy171_21de488
	add r0, r4, #0
	bl ovy171_21de64c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy171_21de424

	thumb_func_start ovy171_21de43c
ovy171_21de43c: ; 0x021DE43C
	push {r4, lr}
	add r4, r0, #0
	bl ovy171_21de7bc
	add r0, r4, #0
	bl ovy171_21de608
	bl sub_021DE480
	pop {r4, pc}
	thumb_func_end ovy171_21de43c

	thumb_func_start ovy171_21de450
ovy171_21de450: ; 0x021DE450
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r4, _021DE478 ; =0x021DEB4C
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r1, _021DE47C ; =0x021DEB1C
	str r0, [r3]
	add r0, r2, #0
	mov r2, #0x71
	bl sub_0204B6A8
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_021DE478: .word 0x021DEB4C
_021DE47C: .word 0x021DEB1C
	thumb_func_end ovy171_21de450

	thumb_func_start sub_021DE480
sub_021DE480: ; 0x021DE480
	ldr r3, _021DE484 ; =sub_0204B758
	bx r3
	.align 2, 0
_021DE484: .word sub_0204B758
	thumb_func_end sub_021DE480

	thumb_func_start ovy171_21de488
ovy171_21de488: ; 0x021DE488
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _021DE604 ; =0x00008071
	add r5, r0, #0
	mov r0, #7
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0xb4
	str r0, [sp, #4]
	mov r4, #0
_021DE4A2:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE4B8
	bl sub_0201D624
	bl sub_02020F40
	b _021DE4C4
_021DE4B8:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02020F94
_021DE4C4:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x71
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	ldr r1, [sp, #4]
	str r0, [r1, r6]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE4A2
	bl sub_02021114
	add r1, r0, #0
	mov r0, #0x71
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204BC48
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	bl sub_02021154
	add r4, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #0x71
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	add r0, r7, #0
	bl sub_0204AB0C
	bl sub_0202D7E0
	ldr r1, _021DE604 ; =0x00008071
	bl sub_0204AA30
	mov r1, #0x71
	str r1, [sp]
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	mov r0, #0x71
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #0x60
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x12
	mov r3, #0x71
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	mov r0, #0x71
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x41
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	mov r0, #0x71
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x42
	mov r2, #0
	mov r3, #0x80
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0x45
	mov r2, #0x48
	mov r3, #0x71
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	mov r0, #2
	bl sub_0202D958
	add r1, r0, #0
	mov r0, #0x71
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	bl sub_0202D954
	add r1, r0, #0
	mov r0, #0x71
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0xa0
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	mov r0, #2
	bl sub_0202D95C
	add r6, r0, #0
	mov r0, #2
	bl sub_0202D960
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x71
	bl sub_0204BDE0
	add r5, #0xf4
	str r0, [r5]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE604: .word 0x00008071
	thumb_func_end ovy171_21de488

	thumb_func_start ovy171_21de608
ovy171_21de608: ; 0x021DE608
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021DE60E:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204B98C
	add r5, r5, #1
	cmp r5, #9
	blo _021DE60E
	mov r5, #0
_021DE622:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0204BCD0
	add r5, r5, #1
	cmp r5, #4
	blo _021DE622
	mov r5, #0
_021DE636:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_0204BE64
	add r5, r5, #1
	cmp r5, #4
	blo _021DE636
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy171_21de608

	thumb_func_start ovy171_21de64c
ovy171_21de64c: ; 0x021DE64C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x18
	mov r1, #0
	mov r2, #0x71
	mov r4, #0
	bl sub_0204BF1C
	ldr r6, _021DE7B8 ; =0x021DEBC8
	str r0, [r5, #0x50]
	add r7, r4, #0
_021DE664:
	mov r0, #0x14
	mul r0, r4
	add r3, r6, r0
	str r3, [sp]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	lsl r1, r1, #2
	lsl r2, r2, #2
	lsl r3, r3, #2
	add r1, r5, r1
	add r2, r5, r2
	add r3, r5, r3
	str r7, [sp, #4]
	mov r0, #0x71
	str r0, [sp, #8]
	add r1, #0xb4
	add r2, #0xd8
	add r3, #0xe8
	ldr r0, [r5, #0x50]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl sub_0204C040
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x54]
	cmp r4, #0x18
	blo _021DE664
	mov r6, #0
_021DE6A4:
	lsl r0, r7, #2
	add r4, r5, r0
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x54]
	bne _021DE6D0
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
_021DE6C8:
	mov r1, #0
	bl sub_0204C124
	b _021DE72A
_021DE6D0:
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_0201D624
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	mov r2, #1
	bl sub_0204C378
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _021DE706
	ldr r0, [r4, #0x6c]
	b _021DE6C8
_021DE706:
	bl sub_02026BA0
	cmp r0, #1
	ldr r0, [r4, #0x6c]
	bne _021DE71C
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r4, #0x6c]
	mov r1, #1
	b _021DE726
_021DE71C:
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r4, #0x6c]
	mov r1, #0
_021DE726:
	bl sub_0204C488
_021DE72A:
	add r4, #0x84
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0204C124
	add r7, r7, #1
	cmp r7, #6
	blo _021DE6A4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DE77C
	mov r4, #0x80
_021DE744:
	add r0, r5, #0
	add r1, r6, #3
	add r2, r4, #0
	bl ovy171_21de7dc
	add r1, r6, #0
	add r0, r5, #0
	add r1, #9
	add r2, r4, #0
	bl ovy171_21de7dc
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0xf
	add r2, r4, #0
	bl ovy171_21de7dc
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x15
	add r2, r4, #0
	bl ovy171_21de7dc
	add r6, r6, #1
	cmp r6, #3
	blo _021DE744
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021DE77C:
	mov r4, #0x7f
	mvn r4, r4
_021DE780:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy171_21de7dc
	add r0, r5, #0
	add r1, r6, #6
	add r2, r4, #0
	bl ovy171_21de7dc
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0xc
	add r2, r4, #0
	bl ovy171_21de7dc
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x12
	add r2, r4, #0
	bl ovy171_21de7dc
	add r6, r6, #1
	cmp r6, #3
	blo _021DE780
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DE7B8: .word 0x021DEBC8
	thumb_func_end ovy171_21de64c

	thumb_func_start ovy171_21de7bc
ovy171_21de7bc: ; 0x021DE7BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DE7C2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #0x18
	blo _021DE7C2
	ldr r0, [r5, #0x50]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy171_21de7bc

	thumb_func_start ovy171_21de7dc
ovy171_21de7dc: ; 0x021DE7DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x54
	add r6, r2, #0
	ldr r0, [r5, r4]
	add r1, sp, #0
	mov r2, #0
	mov r7, #0
	bl sub_0204C178
	add r0, sp, #0
	ldrsh r1, [r0, r7]
	mov r2, #0
	add r1, r1, r6
	strh r1, [r0]
	ldr r0, [r5, r4]
	add r1, sp, #0
	bl sub_0204C140
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy171_21de7dc

	thumb_func_start ovy171_21de808
ovy171_21de808: ; 0x021DE808
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r4, #3
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, r7
	bhs _021DE848
_021DE816:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy171_21de7dc
	add r0, r5, #0
	add r1, r4, #6
	add r2, r6, #0
	bl ovy171_21de7dc
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xc
	add r2, r6, #0
	bl ovy171_21de7dc
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x12
	add r2, r6, #0
	bl ovy171_21de7dc
	add r4, r4, #1
	cmp r4, r7
	blo _021DE816
_021DE848:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy171_21de808

	thumb_func_start ovy171_21de84c
ovy171_21de84c: ; 0x021DE84C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #2
	mov r1, #0xc
	mov r2, #0x71
	bl sub_020330C8
	mov r6, #0
	str r0, [r5, #8]
	mov r7, #6
	add r4, r6, #0
_021DE864:
	str r7, [sp]
	ldr r0, [r5, #8]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0x10
	bl sub_02033150
	str r7, [sp]
	ldr r0, [r5, #8]
	add r1, r6, #6
	add r2, r4, #0
	mov r3, #0x10
	bl sub_02033150
	lsl r2, r6, #3
	add r2, r5, r2
	ldr r0, [r5, #8]
	ldr r2, [r2, #0x20]
	add r1, r6, #6
	bl sub_020335C4
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #6
	blo _021DE864
	mov r0, #1
	bl sub_02045814
	add r7, r0, #0
	mov r0, #0x61
	lsl r0, r0, #4
	str r0, [sp]
	ldr r0, _021DEAD8 ; =0x00008071
	ldr r3, _021DEADC ; =0x021DEDC0
	mov r1, #0xc0
	add r2, r4, #0
	bl sub_0203A1FC
	add r6, r0, #0
_021DE8B4:
	lsl r0, r4, #6
	lsl r1, r4, #5
	add r0, r7, r0
	add r1, r6, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE8B4
	mov r4, #0
_021DE8CE:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE8E4
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020331D4
_021DE8E4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE8CE
	mov r4, #0
_021DE8F0:
	add r0, r4, #0
	add r0, #0x12
	lsl r0, r0, #6
	lsl r1, r4, #5
	add r0, r7, r0
	add r1, r6, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE8F0
	mov r4, #0
_021DE90E:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	bne _021DE924
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020331D4
_021DE924:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE90E
	add r0, r6, #0
	bl sub_0203A24C
	mov r0, #1
	bl sub_02045738
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DE974
	mov r4, #3
	mov r6, #0x10
	mov r7, #6
_021DE948:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE968
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033558
_021DE968:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021DE948
	b _021DE9A4
_021DE974:
	mov r4, #0
	mov r6, #0x10
	mov r7, #6
_021DE97A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE99A
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033558
_021DE99A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _021DE97A
_021DE9A4:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldr r0, [r5, #8]
	bne _021DEA40
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	mov r3, #6
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #2
	mov r2, #0
	mov r3, #0xc
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #7
	mov r2, #0
	mov r3, #6
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #8
	mov r2, #0
	mov r3, #0xc
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #3
	mov r2, #0x20
	mov r3, #1
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #0x20
	mov r3, #7
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0x20
	mov r3, #0xd
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #9
	mov r2, #0x20
	mov r3, #1
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #0xa
	mov r2, #0x20
	mov r3, #7
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #0xb
	mov r2, #0x20
	mov r3, #0xd
	bl sub_02033254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021DEA40:
	mov r4, #0
	sub r4, #0x10
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #1
	add r2, r4, #0
	mov r3, #6
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0xc
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #6
	add r2, r4, #0
	mov r3, #0
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #7
	add r2, r4, #0
	mov r3, #6
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #8
	add r2, r4, #0
	mov r3, #0xc
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #3
	mov r2, #0x10
	mov r3, #1
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #0x10
	mov r3, #7
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0x10
	mov r3, #0xd
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #9
	mov r2, #0x10
	mov r3, #1
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #0xa
	mov r2, #0x10
	mov r3, #7
	bl sub_02033254
	ldr r0, [r5, #8]
	mov r1, #0xb
	mov r2, #0x10
	mov r3, #0xd
	bl sub_02033254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DEAD8: .word 0x00008071
_021DEADC: .word 0x021DEDC0
	thumb_func_end ovy171_21de84c

	thumb_func_start sub_021DEAE0
sub_021DEAE0: ; 0x021DEAE0
	ldr r0, [r0, #8]
	ldr r3, _021DEAE8 ; =sub_02033120
	bx r3
	nop
_021DEAE8: .word sub_02033120
	thumb_func_end sub_021DEAE0
_021DEAEC:
	.byte 0x61, 0xDA, 0x1D, 0x02
	.byte 0x91, 0xDA, 0x1D, 0x02, 0xC5, 0xDA, 0x1D, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD5, 0xDA, 0x1D, 0x02, 0x55, 0xDB, 0x1D, 0x02
	.byte 0x85, 0xDB, 0x1D, 0x02, 0x9D, 0xDB, 0x1D, 0x02, 0xB5, 0xDB, 0x1D, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x01, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x40, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x70, 0x00, 0x01, 0x00, 0x01, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x18, 0x00, 0x01, 0x00, 0x01, 0x01, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x48, 0x00, 0x01, 0x00, 0x01, 0x01
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x78, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x98, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x98, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02, 0x01
	.byte 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x58, 0x00
	.byte 0x00, 0x00, 0x02, 0x01, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x88, 0x00, 0x00, 0x00, 0x02, 0x01, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x01, 0x07, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x60, 0x00, 0x00, 0x00, 0x02, 0x01
	.byte 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x90, 0x00
	.byte 0x00, 0x00, 0x02, 0x01, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x57, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x01, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x57, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x02, 0x01, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x57, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x02, 0x01
	.byte 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xD7, 0x00, 0x24, 0x00
	.byte 0x00, 0x00, 0x02, 0x01, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0xD7, 0x00, 0x54, 0x00, 0x00, 0x00, 0x02, 0x01, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xD7, 0x00, 0x84, 0x00, 0x00, 0x00, 0x02, 0x01, 0x08, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x76, 0x73, 0x5F, 0x6D, 0x75, 0x6C, 0x74, 0x69, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021DEAEC
