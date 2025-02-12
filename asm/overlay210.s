    .include "macros/function.inc"
	.include "overlay210.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy210_21eec80
ovy210_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	mov r1, #0xaa
	mov r2, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021EEC96
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EEC96:
	add r0, r5, #0
	bl sub_0201D620
	bl sub_0201CE8C
	cmp r0, #1
	beq _021EECA6
	mov r4, #1
_021EECA6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy210_21eec80

	thumb_func_start ovy210_21eecac
ovy210_21eecac: ; 0x021EECAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	mov r0, #0x93
	str r0, [sp]
	add r0, r1, #0
	ldr r3, _021EED2C ; =0x021EF1A0
	mov r1, #0x7c
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	mov r0, #4
	str r0, [r5]
	add r0, r5, #0
	mov r1, #0
	str r6, [r5, #4]
	add r0, #0x4a
	strh r1, [r0]
	mov r0, #0xff
	add r4, r1, #0
	mov r2, #6
_021EECD8:
	add r3, r1, #0
	mul r3, r2
	add r3, r5, r3
	strh r0, [r3, #0x14]
	strh r4, [r3, #0x16]
	lsl r3, r1, #2
	add r3, r5, r3
	add r1, r1, #1
	str r4, [r3, #0x54]
	cmp r1, #9
	blt _021EECD8
	add r0, r6, #0
	mov r1, #5
	add r2, r4, #0
	bl sub_0201CCF8
	strh r0, [r5, #8]
	add r0, r6, #0
	mov r1, #0x6e
	add r2, r4, #0
	bl sub_0201CCF8
	strb r0, [r5, #0xa]
	add r0, r6, #0
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	strb r0, [r5, #0xb]
	add r0, r6, #0
	bl sub_0201CDAC
	strb r0, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0201CCF8
	str r0, [r5, #0x10]
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EED2C: .word 0x021EF1A0
	thumb_func_end ovy210_21eecac

	thumb_func_start ovy210_21eed30
ovy210_21eed30: ; 0x021EED30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	mov r0, #0xab
	str r0, [sp]
	add r0, sp, #0x20
	add r7, r1, #0
	ldrh r0, [r0, #4]
	ldr r3, _021EEDA8 ; =0x021EF1A0
	mov r1, #0x7c
	mov r2, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	mov r0, #4
	str r0, [r2]
	mov r1, #0
	add r0, r2, #0
	str r1, [r2, #4]
	add r0, #0x4a
	strh r1, [r0]
	mov r0, #0xff
	add r3, r1, #0
	mov r5, #6
_021EED64:
	add r6, r1, #0
	mul r6, r5
	add r6, r2, r6
	strh r0, [r6, #0x14]
	strh r3, [r6, #0x16]
	lsl r6, r1, #2
	add r6, r2, r6
	add r1, r1, #1
	str r3, [r6, #0x54]
	cmp r1, #9
	blt _021EED64
	mov r0, #0
_021EED7C:
	lsl r1, r3, #1
	add r1, r2, r1
	add r1, #0x4c
	add r3, r3, #1
	strh r0, [r1]
	cmp r3, #4
	blt _021EED7C
	add r1, r2, #0
	add r1, #0x78
	strh r0, [r1]
	strh r4, [r2, #8]
	strb r7, [r2, #0xa]
	ldr r0, [sp, #4]
	strb r0, [r2, #0xb]
	ldr r0, [sp, #8]
	strb r0, [r2, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x10]
	add r0, r2, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EEDA8: .word 0x021EF1A0
	thumb_func_end ovy210_21eed30

	thumb_func_start ovy210_21eedac
ovy210_21eedac: ; 0x021EEDAC
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xc8
	str r1, [sp]
	ldr r3, _021EEDD4 ; =0x021EF1A0
	mov r1, #0x30
	mov r4, #0
	mov r2, #0
	bl GFL_HeapAllocate
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EEDD4: .word 0x021EF1A0
	thumb_func_end ovy210_21eedac

	thumb_func_start ovy210_21eedd8
ovy210_21eedd8: ; 0x021EEDD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EEDE6
	bl GFL_HeapFree
_021EEDE6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EEDF0
	bl GFL_HeapFree
_021EEDF0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EEDFA
	bl GFL_HeapFree
_021EEDFA:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EEE04
	bl GFL_HeapFree
_021EEE04:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy210_21eedd8

	thumb_func_start ovy210_21eee0c
ovy210_21eee0c: ; 0x021EEE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r3, [sp, #4]
	add r5, r0, #0
	ldr r4, [sp, #0x28]
	ldr r0, [sp, #4]
	strb r0, [r5]
	ldr r0, [sp, #4]
	cmp r0, #4
	blo _021EEE4E
	add r0, r2, #0
	add r1, r4, #0
	bl sub_0200CCA0
	str r0, [sp, #8]
	bl sub_0200CE44
	add r6, r0, #0
	ldr r0, [sp, #8]
	bl sub_0200CE48
	add r1, r0, #0
	ldr r2, _021EEF2C ; =0x00007FFF
	add r3, r4, #0
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	add r0, r6, #0
	lsr r2, r2, #0x10
	bl sub_0204AA60
	b _021EEE62
_021EEE4E:
	ldr r1, _021EEF2C ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	add r0, #0x70
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
_021EEE62:
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x20
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B610
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x24
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B610
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B610
	str r0, [r5, #0xc]
	add r0, r6, #0
	mov r1, #4
	bl sub_0204AC0C
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #3
	bl sub_0204AC0C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	bl sub_0204AC0C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r3, _021EEF30 ; =0x021EF1A0
	add r0, #0xc
	add r1, r0, r7
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r0, r0, r1
	str r0, [r5, #0x2c]
	ldr r0, _021EEF34 ; =0x0000010A
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	add r0, r4, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	add r2, #0xc
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x10]
	add r1, r2, r1
	str r1, [r5, #0x18]
	add r1, r7, r1
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0xc]
	str r2, [r5, #0x14]
	str r1, [r0]
	ldr r1, [sp, #0x10]
	str r7, [r0, #4]
	str r1, [r0, #8]
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	mov r1, #4
	bl sub_0204ABA4
	ldr r2, [r5, #0x18]
	add r0, r6, #0
	mov r1, #3
	bl sub_0204ABA4
	ldr r2, [r5, #0x1c]
	add r0, r6, #0
	mov r1, #5
	bl sub_0204ABA4
	add r0, r6, #0
	bl GFL_ArcToolFree
	ldr r0, [sp, #4]
	cmp r0, #4
	blo _021EEF26
	ldr r0, [sp, #8]
	bl sub_0200CD10
_021EEF26:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EEF2C: .word 0x00007FFF
_021EEF30: .word 0x021EF1A0
_021EEF34: .word 0x0000010A
	thumb_func_end ovy210_21eee0c

	thumb_func_start ovy210_21eef38
ovy210_21eef38: ; 0x021EEF38
	push {r3, r4, r5, lr}
	mov r1, #0x47
	str r1, [sp]
	ldr r3, _021EEF60 ; =0x021EF1B4
	add r4, r0, #0
	mov r1, #8
	mov r2, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	mov r0, #0x2c
	mov r1, #0x65
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B4E4
	str r0, [r5]
	str r0, [r5, #4]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EEF60: .word 0x021EF1B4
	thumb_func_end ovy210_21eef38

	thumb_func_start ovy210_21eef64
ovy210_21eef64: ; 0x021EEF64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy210_21eef64

	thumb_func_start sub_021EEF78
sub_021EEF78: ; 0x021EEF78
	ldr r2, [r0, #4]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EEF78
_021EEF84:
	.byte 0x04, 0x22, 0x82, 0x56, 0x0A, 0x60, 0x05, 0x22, 0x80, 0x56, 0x48, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x70, 0x47, 0x09, 0x29, 0x3A, 0xD8, 0x49, 0x18, 0x79, 0x44
	.byte 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44, 0x12, 0x00, 0x12, 0x00, 0x1C, 0x00, 0x28, 0x00
	.byte 0x34, 0x00, 0x40, 0x00, 0x4C, 0x00, 0x58, 0x00, 0x58, 0x00, 0x64, 0x00, 0xC1, 0x88, 0x01, 0x20
	.byte 0x01, 0x42, 0x26, 0xD0, 0x70, 0x47, 0xC1, 0x88, 0x02, 0x20, 0x08, 0x42, 0x21, 0xD0, 0x01, 0x20
	.byte 0x70, 0x47, 0xC1, 0x88, 0x04, 0x20, 0x08, 0x42, 0x1B, 0xD0, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88
	.byte 0x08, 0x20, 0x08, 0x42, 0x15, 0xD0, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x10, 0x20, 0x08, 0x42
	.byte 0x0F, 0xD0, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x20, 0x20, 0x08, 0x42, 0x09, 0xD0, 0x01, 0x20
	.byte 0x70, 0x47, 0xC1, 0x88, 0x40, 0x20, 0x08, 0x42, 0x03, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x08, 0x29, 0x33, 0xD8, 0x49, 0x18, 0x79, 0x44
	.byte 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44, 0x10, 0x00, 0x10, 0x00, 0x1A, 0x00, 0x26, 0x00
	.byte 0x32, 0x00, 0x3E, 0x00, 0x4A, 0x00, 0x4A, 0x00, 0x56, 0x00, 0xC1, 0x88, 0x01, 0x20, 0x01, 0x42
	.byte 0x20, 0xD0, 0x70, 0x47, 0xC1, 0x88, 0x02, 0x20, 0x08, 0x42, 0x1B, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0xC1, 0x88, 0x0C, 0x20, 0x08, 0x42, 0x15, 0xD0, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x10, 0x20
	.byte 0x08, 0x42, 0x0F, 0xD0, 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x20, 0x20, 0x08, 0x42, 0x09, 0xD0
	.byte 0x01, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x40, 0x20, 0x08, 0x42, 0x03, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x08, 0x29, 0x31, 0xD8, 0x49, 0x18, 0x79, 0x44
	.byte 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44, 0x10, 0x00, 0x10, 0x00, 0x1A, 0x00, 0x24, 0x00
	.byte 0x34, 0x00, 0x3E, 0x00, 0x48, 0x00, 0x48, 0x00, 0x52, 0x00, 0x00, 0x7A, 0x00, 0x28, 0x1F, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x7A, 0x01, 0x28, 0x1A, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x7A
	.byte 0xFE, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x12, 0xD8, 0x01, 0x20, 0x70, 0x47, 0x00, 0x7A
	.byte 0x04, 0x28, 0x0D, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x7A, 0x05, 0x28, 0x08, 0xD1, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x7A, 0x06, 0x28, 0x03, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x80, 0x20, 0x08, 0x42, 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0xC1, 0x88, 0x02, 0x20, 0x00, 0x02, 0x08, 0x42, 0x01, 0xD0, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x09, 0x28, 0x21, 0xD8, 0x00, 0x18, 0x78, 0x44
	.byte 0xC0, 0x88, 0x00, 0x04, 0x00, 0x14, 0x87, 0x44, 0x12, 0x00, 0x16, 0x00, 0x1A, 0x00, 0x1E, 0x00
	.byte 0x1E, 0x00, 0x22, 0x00, 0x26, 0x00, 0x2A, 0x00, 0x2E, 0x00, 0x32, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x01, 0x20, 0x70, 0x47, 0x02, 0x20, 0x70, 0x47, 0x03, 0x20, 0x70, 0x47, 0x04, 0x20, 0x70, 0x47
	.byte 0x05, 0x20, 0x70, 0x47, 0x06, 0x20, 0x70, 0x47, 0x07, 0x20, 0x70, 0x47, 0x08, 0x20, 0x70, 0x47
	.byte 0x09, 0x20, 0x70, 0x47

	thumb_func_start ovy210_21ef164
ovy210_21ef164: ; 0x021EF164
	push {r3, lr}
	bl sub_021EEF78
	ldrb r0, [r0, #9]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy210_21ef164

	thumb_func_start ovy210_21ef170
ovy210_21ef170: ; 0x021EF170
	push {r3, lr}
	bl sub_021EEF78
	ldrb r0, [r0, #0xa]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy210_21ef170

	thumb_func_start ovy210_21ef17c
ovy210_21ef17c: ; 0x021EF17C
	push {r3, lr}
	bl sub_021EEF78
	ldrb r0, [r0, #8]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy210_21ef17c
_021EF188:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x75, 0x73, 0x69, 0x63, 0x61, 0x6C, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x75, 0x73, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x5F, 0x64, 0x61, 0x74
	.byte 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF188
