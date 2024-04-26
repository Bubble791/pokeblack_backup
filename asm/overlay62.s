    .include "macros/function.inc"
	.include "overlay62.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy62_21e5800
ovy62_21e5800: ; 0x021E5800
	push {r3, r4}
	ldr r2, _021E5824 ; =0x021E6906
	mov r4, #0
_021E5806:
	lsl r3, r4, #2
	ldrh r1, [r2, r3]
	cmp r0, r1
	bne _021E5816
	ldr r0, _021E5828 ; =0x021E6908
	ldrh r0, [r0, r3]
	pop {r3, r4}
	bx lr
_021E5816:
	add r4, r4, #1
	cmp r4, #0xf
	blo _021E5806
	mov r0, #0xb
	pop {r3, r4}
	bx lr
	nop
_021E5824: .word 0x021E6906
_021E5828: .word 0x021E6908
	thumb_func_end ovy62_21e5800

	thumb_func_start sub_021E582C
sub_021E582C: ; 0x021E582C
	cmp r0, #5
	blo _021E5832
	mov r0, #0
_021E5832:
	lsl r1, r0, #1
	ldr r0, _021E583C ; =0x021E6868
	ldrh r0, [r0, r1]
	bx lr
	nop
_021E583C: .word 0x021E6868
	thumb_func_end sub_021E582C

	thumb_func_start sub_021E5840
sub_021E5840: ; 0x021E5840
	add r2, r0, #0
	ldr r0, _021E5848 ; =0x0000010D
	ldr r3, _021E584C ; =sub_0204A934
	bx r3
	.align 2, 0
_021E5848: .word 0x0000010D
_021E584C: .word sub_0204A934
	thumb_func_end sub_021E5840

	thumb_func_start ovy62_21e5850
ovy62_21e5850: ; 0x021E5850
	push {r3, r4, r5, lr}
	add r2, r0, #0
	add r5, r1, #0
	mov r0, #4
	add r1, r2, #0
	mov r4, #0
	bl sub_021E5840
	cmp r5, #3
	bhi _021E5886
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5870: ; jump table
	.short _021E5878 - _021E5870 - 2 ; case 0
	.short _021E587C - _021E5870 - 2 ; case 1
	.short _021E5880 - _021E5870 - 2 ; case 2
	.short _021E5884 - _021E5870 - 2 ; case 3
_021E5878:
	ldrh r4, [r0, #8]
	b _021E5886
_021E587C:
	ldrh r4, [r0, #0x18]
	b _021E5886
_021E5880:
	ldrh r4, [r0, #0x1c]
	b _021E5886
_021E5884:
	ldrh r4, [r0, #4]
_021E5886:
	bl GFL_HeapFree
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5850

	thumb_func_start ovy62_21e5890
ovy62_21e5890: ; 0x021E5890
	push {r3, lr}
	bl sub_02155174
	bl sub_02011040
	pop {r3, pc}
	thumb_func_end ovy62_21e5890

	thumb_func_start ovy62_21e589c
ovy62_21e589c: ; 0x021E589C
	push {r3, lr}
	bl sub_02155174
	bl sub_02017A04
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy62_21e589c

	thumb_func_start ovy62_21e58ac
ovy62_21e58ac: ; 0x021E58AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r0, r1, #0
	bl sub_02155174
	add r5, r0, #0
	bl sub_02011040
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017A04
	add r4, r0, #0
	mov r0, #4
	bl ovy62_21e614c
	str r0, [r4]
	ldr r4, _021E58F4 ; =0x00000017
	add r0, r4, #0
	bl sub_0203CE0C
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_0216F59C
	add r0, r4, #0
	bl sub_0203CDC8
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E58F4: .word 0x00000017
	thumb_func_end ovy62_21e58ac

	thumb_func_start ovy62_21e58f8
ovy62_21e58f8: ; 0x021E58F8
	push {r4, lr}
	add r0, r1, #0
	bl sub_02155174
	bl sub_02017A04
	add r4, r0, #0
	ldr r0, [r4]
	bl ovy62_21e618c
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy62_21e58f8

	thumb_func_start ovy62_21e5914
ovy62_21e5914: ; 0x021E5914
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e589c
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021E6290
	ldr r0, [sp]
	ldr r1, _021E5974 ; =0x00000017
	ldr r2, _021E5978 ; =0x0216F2DD
	add r3, sp, #4
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r7, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E5974: .word 0x00000017
_021E5978: .word 0x0216F2DD
	thumb_func_end ovy62_21e5914

	thumb_func_start ovy62_21e597c
ovy62_21e597c: ; 0x021E597C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	bl sub_02153EA4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e589c
	add r4, r0, #0
	ldr r1, _021E59C4 ; =0x00000017
	ldr r2, _021E59C8 ; =0x0216F545
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r6, #0
	bl ovy12_2153880
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021E6290
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E59C4: .word 0x00000017
_021E59C8: .word 0x0216F545
	thumb_func_end ovy62_21e597c

	thumb_func_start ovy62_21e59cc
ovy62_21e59cc: ; 0x021E59CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AD8
	add r0, r4, #0
	bl ovy62_21e589c
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021E62A0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy62_21e59cc

	thumb_func_start ovy62_21e5a00
ovy62_21e5a00: ; 0x021E5A00
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
	bl sub_02016AD8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e589c
	add r4, r0, #0
	ldr r1, _021E5A58 ; =0x00000017
	ldr r2, _021E5A5C ; =0x0216F30D
	add r0, r7, #0
	add r3, sp, #0
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r6, #0
	bl ovy12_2153880
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021E6290
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5A58: .word 0x00000017
_021E5A5C: .word 0x0216F30D
	thumb_func_end ovy62_21e5a00

	thumb_func_start ovy62_21e5a60
ovy62_21e5a60: ; 0x021E5A60
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl ovy62_21e589c
	add r4, r0, #0
	ldr r1, _021E5AA0 ; =0x00000017
	ldr r2, _021E5AA4 ; =0x0216F339
	add r0, r6, #0
	mov r3, #0
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r5, #0
	bl ovy12_2153880
	add r0, r4, #0
	mov r1, #0
	bl sub_021E6290
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E5AA0: .word 0x00000017
_021E5AA4: .word 0x0216F339
	thumb_func_end ovy62_21e5a60

	thumb_func_start ovy62_21e5aa8
ovy62_21e5aa8: ; 0x021E5AA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02155184
	str r0, [sp]
	add r0, r5, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0215515C
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02017A04
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ovy62_21e6680
	add r5, r0, #0
	ldr r1, _021E5B0C ; =0x00000017
	ldr r2, _021E5B10 ; =0x0216F365
	add r0, r4, #0
	add r3, r5, #0
	bl sub_02016EA0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E66B8
	ldr r0, [sp]
	add r1, r4, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5B0C: .word 0x00000017
_021E5B10: .word 0x0216F365
	thumb_func_end ovy62_21e5aa8

	thumb_func_start ovy62_21e5b14
ovy62_21e5b14: ; 0x021E5B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	str r0, [sp]
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_0215515C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl ovy62_21e66c0
	add r4, r0, #0
	ldr r1, _021E5B7C ; =0x00000017
	ldr r2, _021E5B80 ; =0x0216F41D
	add r0, r6, #0
	add r3, r4, #0
	bl sub_02016EA0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E670C
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5B7C: .word 0x00000017
_021E5B80: .word 0x0216F41D
	thumb_func_end ovy62_21e5b14

	thumb_func_start ovy62_21e5b84
ovy62_21e5b84: ; 0x021E5B84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r6, r0, #0
	mov r4, #0
	bl sub_020105E0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02010644
	cmp r0, #1
	bne _021E5BBE
	bl sub_020107B0
	cmp r0, #1
	bne _021E5BBE
	mov r4, #1
_021E5BBE:
	bl sub_02010600
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5b84

	thumb_func_start ovy62_21e5bc8
ovy62_21e5bc8: ; 0x021E5BC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r6, r0, #0
	mov r5, #0
	bl sub_020105E0
	mov r4, #0
_021E5BEA:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02010644
	cmp r0, #1
	bne _021E5C02
	bl sub_020107B0
	cmp r0, #1
	bne _021E5C02
	add r5, r5, #1
_021E5C02:
	add r4, r4, #1
	cmp r4, #8
	blo _021E5BEA
	bl sub_02010600
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5bc8

	thumb_func_start ovy62_21e5c10
ovy62_21e5c10: ; 0x021E5C10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	str r0, [sp]
	add r0, r4, #0
	bl sub_0215515C
	add r4, r0, #0
	bl sub_020105E0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02010644
	cmp r0, #1
	bne _021E5C4E
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020107F0
	add r4, r0, #0
	b _021E5C50
_021E5C4E:
	mov r4, #0
_021E5C50:
	bl sub_02010600
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5c10

	thumb_func_start ovy62_21e5c58
ovy62_21e5c58: ; 0x021E5C58
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy62_21e5b84
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e5c58

	thumb_func_start ovy62_21e5c7c
ovy62_21e5c7c: ; 0x021E5C7C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	mov r5, #1
	bl ovy62_21e5c10
	cmp r0, #0
	beq _021E5CAC
	cmp r0, #1
	beq _021E5CB0
	cmp r0, #2
	beq _021E5CB4
_021E5CAC:
	mov r0, #0
	b _021E5CB6
_021E5CB0:
	strh r5, [r4]
	b _021E5CB8
_021E5CB4:
	mov r0, #2
_021E5CB6:
	strh r0, [r4]
_021E5CB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e5c7c

	thumb_func_start ovy62_21e5cbc
ovy62_21e5cbc: ; 0x021E5CBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02155184
	str r0, [sp, #0xc]
	bl sub_02153EC4
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	ldrb r5, [r0]
	add r0, r0, #1
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215515C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r4, #0x2a
	bl sub_02153ECC
	add r6, r0, #0
	ldr r2, _021E5D2C ; =0x00000162
	mov r0, #0
	mov r1, #2
	add r3, r7, #0
	bl GFL_MsgSysLoadData
	add r7, r0, #0
	beq _021E5D14
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	bl GFL_MsgDataFree
_021E5D14:
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl sub_0202437C
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5D2C: .word 0x00000162
	thumb_func_end ovy62_21e5cbc

	thumb_func_start ovy62_21e5d30
ovy62_21e5d30: ; 0x021E5D30
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020110AC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5d30

	thumb_func_start ovy62_21e5d6c
ovy62_21e5d6c: ; 0x021E5D6C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020110D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5d6c

	thumb_func_start ovy62_21e5d9c
ovy62_21e5d9c: ; 0x021E5D9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020112D8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5d9c

	thumb_func_start ovy62_21e5dcc
ovy62_21e5dcc: ; 0x021E5DCC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy62_21e5bc8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5dcc

	thumb_func_start ovy62_21e5de4
ovy62_21e5de4: ; 0x021E5DE4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	str r1, [sp]
	add r0, r1, #0
	bl ovy62_21e5890
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	bl ovy12_2154910
	add r5, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	bl ovy12_21548e8
	add r6, r0, #0
	mov r1, #0
	add r0, r7, #0
	add r2, r5, #0
	strh r1, [r6]
	bl sub_020110AC
	cmp r0, #1
	bne _021E5E8C
	add r0, r7, #0
	mov r1, #3
	add r2, r5, #0
	bl sub_020110AC
	cmp r0, #0
	bne _021E5E8C
	add r0, r7, #0
	mov r1, #3
	add r2, r5, #0
	bl sub_020110D4
	ldr r7, _021E5E90 ; =0x00000017
	add r0, r7, #0
	bl sub_0203CE0C
	add r0, r5, #0
	bl sub_0216F698
	cmp r0, #7
	bhi _021E5E66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5E56: ; jump table
	.short _021E5E66 - _021E5E56 - 2 ; case 0
	.short _021E5E66 - _021E5E56 - 2 ; case 1
	.short _021E5E6A - _021E5E56 - 2 ; case 2
	.short _021E5E6E - _021E5E56 - 2 ; case 3
	.short _021E5E72 - _021E5E56 - 2 ; case 4
	.short _021E5E76 - _021E5E56 - 2 ; case 5
	.short _021E5E7A - _021E5E56 - 2 ; case 6
	.short _021E5E7E - _021E5E56 - 2 ; case 7
_021E5E66:
	mov r0, #0
	b _021E5E80
_021E5E6A:
	mov r0, #1
	b _021E5E80
_021E5E6E:
	mov r0, #2
	b _021E5E80
_021E5E72:
	mov r0, #3
	b _021E5E80
_021E5E76:
	mov r0, #4
	b _021E5E80
_021E5E7A:
	mov r0, #5
	b _021E5E80
_021E5E7E:
	mov r0, #6
_021E5E80:
	strh r0, [r4]
	add r0, r7, #0
	bl sub_0203CDC8
	mov r0, #1
	strh r0, [r6]
_021E5E8C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5E90: .word 0x00000017
	thumb_func_end ovy62_21e5de4

	thumb_func_start ovy62_21e5e94
ovy62_21e5e94: ; 0x021E5E94
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r4, r0, #0
	bl sub_020111B0
	bl sub_020111EC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0201122C
	strh r0, [r5]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_02011240
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e5e94

	thumb_func_start ovy62_21e5ec8
ovy62_21e5ec8: ; 0x021E5EC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020111A0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5ec8

	thumb_func_start ovy62_21e5ef8
ovy62_21e5ef8: ; 0x021E5EF8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ovy62_21e5890
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020111A8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e5ef8

	thumb_func_start ovy62_21e5f1c
ovy62_21e5f1c: ; 0x021E5F1C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy62_21e5890
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #9
	mov r3, #0
	bl ovy62_21e5c10
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5f1c

	thumb_func_start ovy62_21e5f50
ovy62_21e5f50: ; 0x021E5F50
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155174
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	mov r1, #1
	cmp r4, #0
	beq _021E5F8E
	mov r1, #2
_021E5F8E:
	ldr r0, [sp]
	bl ovy62_21e5850
	bl ovy62_21e5800
	strh r0, [r7]
	ldr r0, [sp]
	mov r1, #0
	bl ovy62_21e5850
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_021E582C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e5f50

	thumb_func_start ovy62_21e5fb0
ovy62_21e5fb0: ; 0x021E5FB0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy62_21e5890
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r0, r4, #0
	bl sub_02155174
	add r0, r4, #0
	bl ovy62_21e589c
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021E62C0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy62_21e5fb0

	thumb_func_start ovy62_21e5fec
ovy62_21e5fec: ; 0x021E5FEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl ovy62_21e5850
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e5fec

	thumb_func_start ovy62_21e6010
ovy62_21e6010: ; 0x021E6010
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ovy62_21e5890
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_020112D8
	cmp r0, #0x28
	bne _021E6038
	mov r0, #1
	b _021E603A
_021E6038:
	mov r0, #0
_021E603A:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e6010

	thumb_func_start ovy62_21e6040
ovy62_21e6040: ; 0x021E6040
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02155184
	str r0, [sp]
	add r0, r5, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0215515C
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r0, r7, #0
	bl sub_02017A04
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ovy62_21e6714
	add r5, r0, #0
	ldr r1, _021E60A0 ; =0x00000017
	ldr r2, _021E60A4 ; =0x0216F6A5
	add r0, r4, #0
	add r3, r5, #0
	bl sub_02016EA0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E674C
	ldr r0, [sp]
	add r1, r4, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E60A0: .word 0x00000017
_021E60A4: .word 0x0216F6A5
	thumb_func_end ovy62_21e6040

	thumb_func_start ovy62_21e60a8
ovy62_21e60a8: ; 0x021E60A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy12_2154910
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ovy12_21548e8
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	bl ovy62_21e5c10
	lsl r7, r0, #0x10
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy62_21e5c10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #3
	bl ovy62_21e5850
	lsr r0, r0, #1
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r2, r1, #0
	mov r0, #6
	mul r2, r0
	ldr r0, _021E613C ; =0x021E6872
	lsr r1, r7, #0xf
	add r0, r0, r2
	ldrh r2, [r1, r0]
	ldr r0, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _021E6140 ; =0x021E68DA
	ldrh r1, [r0, r1]
	cmp r1, #0xff
	beq _021E612E
	lsl r0, r2, #1
	lsl r2, r1, #3
	ldr r1, _021E6144 ; =0x021E68B2
	add r1, r1, r2
	ldrh r1, [r0, r1]
	strh r1, [r4]
	ldr r1, _021E6148 ; =0x021E688A
	add r1, r1, r2
	ldrh r0, [r0, r1]
	b _021E6132
_021E612E:
	mov r0, #0
	strh r0, [r4]
_021E6132:
	strh r0, [r6]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E613C: .word 0x021E6872
_021E6140: .word 0x021E68DA
_021E6144: .word 0x021E68B2
_021E6148: .word 0x021E688A
	thumb_func_end ovy62_21e60a8

	thumb_func_start ovy62_21e614c
ovy62_21e614c: ; 0x021E614C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _021E6188 ; =0x021E6A58
	mov r1, #0x33
	str r1, [sp]
	add r1, #0xcd
	mov r2, #1
	add r3, r6, #0
	add r5, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r5, [r4]
	bl sub_020105D8
	add r1, r0, #0
	mov r0, #0x37
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	add r3, r6, #0
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6188: .word 0x021E6A58
	thumb_func_end ovy62_21e614c

	thumb_func_start ovy62_21e618c
ovy62_21e618c: ; 0x021E618C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy62_21e618c

	thumb_func_start ovy62_21e61a0
ovy62_21e61a0: ; 0x021E61A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x59
	add r1, #8
	mov r2, #6
	blx MI_CpuCopy8
	ldr r0, [r4, #0x4c]
	strh r0, [r5, #0xe]
	ldr r0, [r4, #0x50]
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _021E61D0
	ldrh r1, [r5, #0xe]
	ldr r0, _021E61E4 ; =0x0000FFF9
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021E61DA
_021E61D0:
	add r5, #0xd4
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_021E61DA:
	add r5, #0xd4
	ldr r0, [r5]
	mov r1, #1
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E61E4: .word 0x0000FFF9
	thumb_func_end ovy62_21e61a0

	thumb_func_start ovy62_21e61e8
ovy62_21e61e8: ; 0x021E61E8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	add r0, r6, #0
	bl sub_0201735C
	add r3, r0, #0
	add r1, r6, #0
	add r0, r4, #0
	mov r2, #0x16
	mov r6, #0x16
	bl sub_02034BD8
	add r1, r5, #0
	mov r0, #5
	add r1, #0x12
	bl sub_0201F744
	add r1, r5, #0
	add r1, #0xd2
	add r6, #0xf7
	ldrh r1, [r1]
	add r0, r6, #0
	mov r2, #4
	bl sub_0204A934
	mov r1, #6
	ldrsh r2, [r0, r1]
	strb r2, [r5, #0x14]
	ldrsh r1, [r0, r1]
	strb r1, [r5, #0x15]
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0x11
	add r0, #0xce
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xcf
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x90
	add r0, #0xd0
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x12
	str r0, [r4, #0x14]
	add r5, #0xce
	mov r0, #0
	str r5, [r4, #0x18]
	str r0, [r4, #0x48]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy62_21e61e8

	thumb_func_start ovy62_21e6254
ovy62_21e6254: ; 0x021E6254
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r0, r5, #0
	bl GameData_GetPokedex
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x28
	mov r7, #0
	blx MIi_CpuClear32
	add r0, r5, #0
	bl sub_0201735C
	mov r1, #1
	str r0, [r4]
	strb r1, [r4, #0xc]
	bl sub_0201FDF8
	strb r0, [r4, #0xe]
	add r0, r6, #0
	strb r7, [r4, #0xd]
	strb r7, [r4, #0x10]
	str r5, [r4, #8]
	bl sub_0200D1AC
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy62_21e6254

	thumb_func_start sub_021E6290
sub_021E6290: ; 0x021E6290
	add r0, #0xd4
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E6290
_021E6298:
	.byte 0xD4, 0x30, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021E62A0
sub_021E62A0: ; 0x021E62A0
	add r0, #0xd8
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E62A0
_021E62A8:
	.byte 0xD8, 0x30, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00
	.byte 0xD2, 0x30, 0x01, 0x80, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021E62B8
sub_021E62B8: ; 0x021E62B8
	add r0, #0xd2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E62B8

	thumb_func_start sub_021E62C0
sub_021E62C0: ; 0x021E62C0
	add r0, #0xda
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E62C0

	thumb_func_start sub_021E62C8
sub_021E62C8: ; 0x021E62C8
	add r0, #0xda
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E62C8

	thumb_func_start sub_021E62D0
sub_021E62D0: ; 0x021E62D0
	add r0, #0xdc
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E62D0

	thumb_func_start ovy62_21e62d8
ovy62_21e62d8: ; 0x021E62D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #6
	str r2, [sp, #4]
	bl sub_0201FD34
	add r0, r4, #0
	bl sub_0201735C
	str r0, [sp, #0xc]
	ldrh r1, [r7]
	ldr r0, _021E6360 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021E6364 ; =0x0000010D
	ldr r3, _021E6368 ; =0x021E6A58
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	bl sub_0201C404
	ldrb r0, [r7, #0x15]
	str r0, [sp, #8]
	cmp r0, #0
	bls _021E6354
_021E6324:
	add r0, r7, r5
	ldrb r1, [r0, #8]
	cmp r1, #0
	bne _021E632E
	mov r1, #1
_021E632E:
	ldr r0, [sp, #0xc]
	sub r1, r1, #1
	bl sub_0201FF08
	add r6, r0, #0
	bl sub_02020EC8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0201EF6C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0201FD6C
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _021E6324
_021E6354:
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6360: .word 0x00007FFF
_021E6364: .word 0x0000010D
_021E6368: .word 0x021E6A58
	thumb_func_end ovy62_21e62d8

	thumb_func_start ovy62_21e636c
ovy62_21e636c: ; 0x021E636C
	push {r3, r4, r5, lr}
	add r0, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02011040
	cmp r4, #1
	bne _021E6386
	mov r1, #2
	add r2, r5, #0
	bl sub_020110D4
	pop {r3, r4, r5, pc}
_021E6386:
	cmp r4, #2
	bne _021E6394
	mov r1, #4
	add r2, r5, #0
	bl sub_020110D4
	pop {r3, r4, r5, pc}
_021E6394:
	cmp r4, #0
	bne _021E63A0
	mov r1, #6
	add r2, r5, #0
	bl sub_020110D4
_021E63A0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy62_21e636c

	thumb_func_start ovy62_21e63a4
ovy62_21e63a4: ; 0x021E63A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021E63E0 ; =0x021E69E0
	mov r4, #0
	add r5, r0, r2
	ldrb r0, [r0, r2]
	cmp r0, #0xff
	beq _021E63D2
	mov r7, #1
_021E63BC:
	ldrb r2, [r5, r4]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020110AC
	cmp r0, #0
	beq _021E63D2
	add r4, r4, #1
	ldrb r0, [r5, r4]
	cmp r0, #0xff
	bne _021E63BC
_021E63D2:
	ldrb r0, [r5, r4]
	cmp r0, #0xff
	bne _021E63DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E63DC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E63E0: .word 0x021E69E0
	thumb_func_end ovy62_21e63a4

	thumb_func_start ovy62_21e63e4
ovy62_21e63e4: ; 0x021E63E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02017934
	bl sub_0200FB40
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02011040
	ldr r7, _021E6488 ; =0x021E69E0
	add r6, r0, #0
	mov r5, #0
_021E63FE:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy62_21e63a4
	cmp r0, #0
	beq _021E6418
	mov r1, #6
	mul r1, r5
	add r1, r7, r1
	ldrb r1, [r1, #5]
	add r0, r4, #0
	bl sub_0200F98C
_021E6418:
	add r5, r5, #1
	cmp r5, #0xd
	blo _021E63FE
	add r0, r6, #0
	mov r1, #1
	bl sub_020112D8
	cmp r0, #0x28
	bne _021E643A
	add r0, r4, #0
	mov r1, #0xd8
	bl sub_0200F98C
	add r0, r4, #0
	mov r1, #0xdc
	bl sub_0200F9AC
_021E643A:
	add r0, r6, #0
	mov r1, #2
	bl sub_020112D8
	cmp r0, #0x28
	bne _021E644E
	add r0, r4, #0
	mov r1, #0xd9
	bl sub_0200F98C
_021E644E:
	add r0, r6, #0
	bl sub_020111B0
	bl sub_020111EC
	cmp r0, #2
	blt _021E6464
	add r0, r4, #0
	mov r1, #0xd9
	bl sub_0200F9AC
_021E6464:
	add r0, r6, #0
	mov r1, #4
	bl sub_020112D8
	add r5, r0, #0
	beq _021E6478
	add r0, r4, #0
	mov r1, #0xdb
	bl sub_0200F98C
_021E6478:
	cmp r5, #0x28
	bne _021E6484
	add r0, r4, #0
	mov r1, #0xdc
	bl sub_0200F98C
_021E6484:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6488: .word 0x021E69E0
	thumb_func_end ovy62_21e63e4

	thumb_func_start ovy62_21e648c
ovy62_21e648c: ; 0x021E648C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	ldr r6, [r1, #0x24]
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0x14
	mov r5, #0
	blx MI_CpuFill8
	mov r1, #0x13
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021E6528
	add r7, r5, #0
_021E64B8:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201FF08
	add r4, r0, #0
	mov r1, #5
	add r2, r7, #0
	bl sub_0201CCF8
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, r7, #0
	bl sub_0201CCF8
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x6e
	add r2, r7, #0
	bl sub_0201CCF8
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_02021204
	lsl r2, r5, #1
	add r1, sp, #0x10
	add r1, r1, r2
	strh r0, [r1, #4]
	add r0, r4, #0
	mov r1, #0xb3
	add r2, r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201F010
	cmp r0, #2
	blt _021E651C
	mov r1, #1
	add r0, sp, #0x10
	lsl r1, r5
	lsl r1, r1, #0x18
	ldrb r0, [r0, #0x12]
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, sp, #0x10
	strb r1, [r0, #0x12]
_021E651C:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_0201FDF8
	cmp r5, r0
	blt _021E64B8
_021E6528:
	add r3, sp, #0x10
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	add r2, #0xe0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x49
	str r0, [r2]
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, [sp]
	add r0, #0xf4
	str r0, [sp]
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy62_21e648c

	thumb_func_start ovy62_21e6550
ovy62_21e6550: ; 0x021E6550
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02011040
	add r1, r5, #0
	add r1, #0xd2
	ldrh r1, [r1]
	add r4, r0, #0
	bl sub_02011194
	add r1, r5, #0
	add r1, #0xe0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	blt _021E6580
	add r1, r5, #0
	add r1, #0xd2
	ldrh r1, [r1]
	add r5, #0xe0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02011130
_021E6580:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy62_21e6550

	thumb_func_start ovy62_21e6584
ovy62_21e6584: ; 0x021E6584
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02017934
	bl sub_02009408
	add r1, r5, #0
	add r1, #0xe0
	ldr r2, [r1]
	add r4, r0, #0
	cmp r2, #0
	ble _021E65A2
	mov r1, #0x33
	bl sub_02009508
_021E65A2:
	add r5, #0xe0
	ldr r2, [r5]
	cmp r2, #0
	ble _021E65B2
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0200955C
_021E65B2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy62_21e6584

	thumb_func_start ovy62_21e65b4
ovy62_21e65b4: ; 0x021E65B4
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r2, #0
	bl sub_02011040
	add r1, r4, #0
	add r6, r0, #0
	bl sub_020111A0
	cmp r0, #0
	bne _021E65D6
	ldr r1, _021E65D8 ; =0x021E6A40
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r6, #0
	bl sub_020111D0
_021E65D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E65D8: .word 0x021E6A40
	thumb_func_end ovy62_21e65b4

	thumb_func_start ovy62_21e65dc
ovy62_21e65dc: ; 0x021E65DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_0201735C
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	ldrh r0, [r0]
	cmp r0, #0
	beq _021E6634
	ldrb r7, [r5, #0x15]
	mov r4, #0
	cmp r7, #0
	ble _021E6634
_021E65F8:
	add r1, r5, r4
	ldrb r1, [r1, #8]
	ldr r0, [sp]
	sub r1, r1, #1
	bl sub_0201FF08
	mov r1, #0xb3
	mov r2, #0
	add r6, r0, #0
	bl sub_0201CCF8
	add r1, r5, #0
	add r1, #0xf4
	ldr r1, [r1]
	lsl r2, r1, #2
	ldr r1, _021E6638 ; =0x021E6A4C
	ldr r1, [r1, r2]
	add r2, r0, r1
	bpl _021E6620
	mov r2, #0
_021E6620:
	cmp r2, #0xff
	ble _021E6626
	mov r2, #0xff
_021E6626:
	add r0, r6, #0
	mov r1, #0xb3
	bl sub_0201CD1C
	add r4, r4, #1
	cmp r4, r7
	blt _021E65F8
_021E6634:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6638: .word 0x021E6A4C
	thumb_func_end ovy62_21e65dc

	thumb_func_start ovy62_21e663c
ovy62_21e663c: ; 0x021E663C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02011040
	add r1, r5, #0
	add r1, #0xd2
	ldrh r3, [r1]
	cmp r3, #0x28
	bhs _021E6660
	ldr r2, _021E6664 ; =0x021E69B4
	add r5, #0xf8
	ldrb r2, [r2, r3]
	add r1, r4, #0
	add r3, r5, #0
	add r2, r2, #1
	bl sub_0201127C
_021E6660:
	pop {r3, r4, r5, pc}
	nop
_021E6664: .word 0x021E69B4
	thumb_func_end ovy62_21e663c

	thumb_func_start ovy62_21e6668
ovy62_21e6668: ; 0x021E6668
	push {r3, r4}
	mov r4, #0
_021E666C:
	ldrb r3, [r1, r4]
	add r2, r0, r4
	add r2, #0xf8
	add r4, r4, #1
	strb r3, [r2]
	cmp r4, #8
	blt _021E666C
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy62_21e6668

	thumb_func_start ovy62_21e6680
ovy62_21e6680: ; 0x021E6680
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_0201736C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02011040
	add r6, r0, #0
	mov r0, #0x4b
	str r0, [sp]
	ldr r3, _021E66B4 ; =0x021E6A6C
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	str r4, [r0]
	str r6, [r0, #4]
	str r5, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E66B4: .word 0x021E6A6C
	thumb_func_end ovy62_21e6680

	thumb_func_start sub_021E66B8
sub_021E66B8: ; 0x021E66B8
	ldr r3, _021E66BC ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021E66BC: .word GFL_HeapFree
	thumb_func_end sub_021E66B8

	thumb_func_start ovy62_21e66c0
ovy62_21e66c0: ; 0x021E66C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_0201736C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02011040
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02017934
	add r5, r0, #0
	mov r0, #0x6f
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _021E6708 ; =0x021E6A6C
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	str r7, [r0]
	str r5, [r0, #4]
	ldr r1, [sp, #8]
	str r6, [r0, #8]
	str r1, [r0, #0xc]
	str r4, [r0, #0x10]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E6708: .word 0x021E6A6C
	thumb_func_end ovy62_21e66c0

	thumb_func_start sub_021E670C
sub_021E670C: ; 0x021E670C
	ldr r3, _021E6710 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021E6710: .word GFL_HeapFree
	thumb_func_end sub_021E670C

	thumb_func_start ovy62_21e6714
ovy62_21e6714: ; 0x021E6714
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r0, r1, #0
	bl sub_02016AD8
	add r4, r0, #0
	bl sub_0201736C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02011040
	add r4, r0, #0
	mov r0, #0xbd
	str r0, [sp]
	ldr r3, _021E6748 ; =0x021E6A6C
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl GFL_HeapAllocate
	str r5, [r0]
	str r4, [r0, #4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E6748: .word 0x021E6A6C
	thumb_func_end ovy62_21e6714

	thumb_func_start sub_021E674C
sub_021E674C: ; 0x021E674C
	ldr r3, _021E6750 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021E6750: .word GFL_HeapFree
	thumb_func_end sub_021E674C

	thumb_func_start ovy62_21e6754
ovy62_21e6754: ; 0x021E6754
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	bl sub_021E62B8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02011124
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_020111A8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ovy62_21e663c
	add r0, r4, #0
	bl ovy62_21e63e4
	add r0, r4, #0
	add r1, r5, #0
	bl ovy62_21e6550
	add r0, r4, #0
	add r1, r5, #0
	bl ovy62_21e6584
	add r0, r4, #0
	add r1, r5, #0
	bl ovy62_21e65dc
	add r0, r4, #0
	bl sub_02017934
	bl sub_02009408
	mov r1, #0x83
	bl sub_020095A0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy62_21e6754

	thumb_func_start ovy62_21e67b0
ovy62_21e67b0: ; 0x021E67B0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r0, [r4]
	add r5, r1, #0
	bl sub_02011040
	add r2, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021E67CE
	cmp r0, #1
	beq _021E67EC
	cmp r0, #2
	beq _021E681E
	b _021E6826
_021E67CE:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	ldr r3, [r4, #8]
	bl ovy62_21e6754
	mov r0, #0x15
	bl sub_020105E0
	ldr r0, [r4, #4]
	bl sub_021E62D0
	bl sub_0201062C
	mov r0, #1
	str r0, [r5]
_021E67EC:
	add r3, r4, #0
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #0x15
	add r3, #0xc
	bl sub_020106EC
	cmp r0, #2
	beq _021E6812
	cmp r0, #3
	bne _021E6826
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021E680C
	mov r0, #0
	strh r0, [r1]
_021E680C:
	mov r0, #2
	str r0, [r5]
	b _021E6826
_021E6812:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021E681C
	mov r0, #1
	strh r0, [r1]
_021E681C:
	b _021E680C
_021E681E:
	bl sub_02010600
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6826:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy62_21e67b0

	thumb_func_start ovy62_21e682c
ovy62_21e682c: ; 0x021E682C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021E6864 ; =ovy62_21e67b0
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #0
	mov r3, #0x14
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [r4]
	bl sub_02017A04
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_021E62C8
	str r0, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xc]
	str r5, [r4, #0x10]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6864: .word ovy62_21e67b0
	thumb_func_end ovy62_21e682c
_021E6868:
	.byte 0x1C, 0x00, 0x53, 0x00, 0x19, 0x00, 0x2C, 0x00
	.byte 0x2F, 0x01, 0x03, 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x3B, 0x02, 0x2A, 0x00, 0x20, 0x00, 0x1E, 0x00, 0x1D, 0x00, 0x19, 0x00, 0x2B, 0x00
	.byte 0x11, 0x00, 0x5C, 0x00, 0x21, 0x00, 0x4E, 0x00, 0x8A, 0x00, 0x5B, 0x00, 0x36, 0x00, 0xF8, 0x01
	.byte 0x86, 0x00, 0x17, 0x00, 0x59, 0x00, 0x23, 0x00, 0x22, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0xFF, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0x03, 0x00, 0xFF, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0xFF, 0x00, 0x04, 0x00, 0x04, 0x00, 0x4C, 0x00, 0x2C, 0x00, 0x2E, 0x00, 0x4A, 0x00, 0x7C, 0x00
	.byte 0x00, 0x01, 0x34, 0x00, 0x49, 0x00, 0xDF, 0x00, 0x5A, 0x01, 0x57, 0x00, 0x41, 0x00, 0x36, 0x00
	.byte 0x5B, 0x00, 0x32, 0x00, 0x1E, 0x00, 0x31, 0x00, 0x1F, 0x00, 0x3A, 0x00, 0x45, 0x00, 0x30, 0x00
	.byte 0x35, 0x00, 0xE0, 0x00, 0x5A, 0x01, 0x0E, 0x00, 0x9A, 0x00, 0x43, 0x00, 0x34, 0x00, 0x1A, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x15, 0x59, 0x1E, 0x02, 0x01, 0x5A, 0x1E, 0x02, 0xA9, 0x5A, 0x1E, 0x02
	.byte 0x15, 0x5B, 0x1E, 0x02, 0xB1, 0x5F, 0x1E, 0x02, 0xBD, 0x5C, 0x1E, 0x02, 0x31, 0x5D, 0x1E, 0x02
	.byte 0x6D, 0x5D, 0x1E, 0x02, 0xCD, 0x5D, 0x1E, 0x02, 0x59, 0x5C, 0x1E, 0x02, 0x7D, 0x5C, 0x1E, 0x02
	.byte 0xAD, 0x58, 0x1E, 0x02, 0xF9, 0x58, 0x1E, 0x02, 0x7D, 0x59, 0x1E, 0x02, 0xCD, 0x59, 0x1E, 0x02
	.byte 0xE5, 0x5D, 0x1E, 0x02, 0x95, 0x5E, 0x1E, 0x02, 0xC9, 0x5E, 0x1E, 0x02, 0x1D, 0x5F, 0x1E, 0x02
	.byte 0x51, 0x5F, 0x1E, 0x02, 0xED, 0x5F, 0x1E, 0x02, 0x11, 0x60, 0x1E, 0x02, 0xF9, 0x5E, 0x1E, 0x02
	.byte 0x41, 0x60, 0x1E, 0x02, 0xA9, 0x60, 0x1E, 0x02, 0x9D, 0x5D, 0x1E, 0x02, 0x61, 0x5A, 0x1E, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x0B, 0x0B, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03
	.byte 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x05, 0x05, 0x05, 0x06, 0x06, 0x06, 0x07, 0x07, 0x07, 0x07
	.byte 0x08, 0x08, 0x08, 0x09, 0x09, 0x09, 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0C, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xFF, 0x00, 0x00, 0x00, 0xCB, 0x01, 0x02, 0xFF, 0x00, 0x00, 0xCC, 0x03, 0x04, 0x05, 0x06
	.byte 0xFF, 0xCD, 0x07, 0x08, 0x09, 0x0A, 0xFF, 0xCE, 0x0B, 0x0C, 0x0D, 0x0E, 0xFF, 0xCF, 0x0F, 0x10
	.byte 0x11, 0xFF, 0x00, 0xD0, 0x12, 0x13, 0x14, 0xFF, 0x00, 0xD1, 0x15, 0x16, 0x17, 0xFF, 0x00, 0xD2
	.byte 0x18, 0x19, 0x1A, 0x1B, 0xFF, 0xD3, 0x1C, 0x1D, 0x1E, 0xFF, 0x00, 0xD4, 0x1F, 0x20, 0x21, 0x22
	.byte 0xFF, 0xD5, 0x23, 0x24, 0x25, 0x26, 0xFF, 0xD6, 0x27, 0xFF, 0x00, 0x00, 0x00, 0xD7, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xCE, 0xFF, 0xFF, 0xFF
	.byte 0x19, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x70, 0x6F, 0x6B, 0x65, 0x77, 0x6F, 0x6F, 0x64
	.byte 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x70, 0x6F, 0x6B, 0x65
	.byte 0x77, 0x6F, 0x6F, 0x64, 0x5F, 0x73, 0x65, 0x74, 0x75, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	; 0x021E6868
