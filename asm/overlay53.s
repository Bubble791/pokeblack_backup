    .include "macros/function.inc"
	.include "overlay53.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy53_21e5800
ovy53_21e5800: ; 0x021E5800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0215516C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155174
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	add r6, r0, #0
	mov r0, #0x44
	str r0, [sp]
	ldr r3, _021E585C ; =0x021E58C0
	mov r0, #4
	mov r1, #8
	mov r7, #0
	mov r2, #0
	bl GFL_HeapAllocate
	strb r7, [r0]
	str r4, [r0, #4]
	str r0, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _021E5860 ; =0x000000B5
	ldr r3, _021E5864 ; =0x021A42B8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02019708
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl ovy12_2153880
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E585C: .word 0x021E58C0
_021E5860: .word 0x000000B5
_021E5864: .word 0x021A42B8
	thumb_func_end ovy53_21e5800

	thumb_func_start ovy53_21e5868
ovy53_21e5868: ; 0x021E5868
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0x20]
	add r6, r1, #0
	ldrb r5, [r2]
	add r2, r2, #1
	str r2, [r0, #0x20]
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02155174
	bl sub_02017934
	bl sub_0200C838
	cmp r5, #0
	beq _021E5892
	cmp r5, #1
	beq _021E5898
	b _021E589E
_021E5892:
	bl sub_0200C8EC
	b _021E589C
_021E5898:
	bl sub_0200C8CC
_021E589C:
	strh r0, [r4]
_021E589E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy53_21e5868
_021E58A4:
	.byte 0x01, 0x58, 0x1E, 0x02, 0x69, 0x58, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x72, 0x63, 0x6D, 0x64, 0x5F, 0x70, 0x61, 0x6C, 0x70, 0x61, 0x72, 0x6B, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E58A4
