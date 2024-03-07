    .include "macros/function.inc"
	.include "overlay51.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy51_21e5800
ovy51_21e5800: ; 0x021E5800
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804BC
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_02017394
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017944
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020191AC
	ldr r1, [r5]
	cmp r1, #0
	bne _021E5844
	bl sub_021C2080
	str r0, [r5]
_021E5844:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy51_21e5800

	thumb_func_start ovy51_21e5848
ovy51_21e5848: ; 0x021E5848
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_02017944
	bl sub_02160A00
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy51_21e5848

	thumb_func_start ovy51_21e5868
ovy51_21e5868: ; 0x021E5868
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_02017944
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r7, #0
	bl sub_021C21B8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy51_21e5868

	thumb_func_start ovy51_21e58ac
ovy51_21e58ac: ; 0x021E58AC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_02017944
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_021C2168
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy51_21e58ac

	thumb_func_start ovy51_21e58ec
ovy51_21e58ec: ; 0x021E58EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017944
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r4, #0
	bl sub_020159E8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020159E8
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	cmp r5, #8
	bhi _021E595A
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5938: ; jump table
	.short _021E595A - _021E5938 - 2 ; case 0
	.short _021E595A - _021E5938 - 2 ; case 1
	.short _021E595A - _021E5938 - 2 ; case 2
	.short _021E595A - _021E5938 - 2 ; case 3
	.short _021E595A - _021E5938 - 2 ; case 4
	.short _021E595A - _021E5938 - 2 ; case 5
	.short _021E595A - _021E5938 - 2 ; case 6
	.short _021E595A - _021E5938 - 2 ; case 7
	.short _021E594A - _021E5938 - 2 ; case 8
_021E594A:
	mov r2, #1
	cmp r0, #1
	beq _021E5952
	mov r2, #0
_021E5952:
	ldr r0, [r7]
	ldr r1, [sp]
	bl sub_021C2254
_021E595A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy51_21e58ec

	thumb_func_start ovy51_21e5960
ovy51_21e5960: ; 0x021E5960
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_02017944
	ldr r0, [r0]
	bl sub_021C2290
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy51_21e5960
_021E5984:
	.byte 0x01, 0x58, 0x1E, 0x02, 0x49, 0x58, 0x1E, 0x02, 0x69, 0x58, 0x1E, 0x02
	.byte 0xAD, 0x58, 0x1E, 0x02, 0xED, 0x58, 0x1E, 0x02, 0x61, 0x59, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5984
