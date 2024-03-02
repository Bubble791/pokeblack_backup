    .include "macros/function.inc"
	.include "overlay279.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy279_21e8be0
ovy279_21e8be0: ; 0x021E8BE0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02017354
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201736C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02007FD8
	add r0, r6, #0
	bl sub_02008BF0
	cmp r0, #0
	bne _021E8C0A
	add r0, r4, #0
	ldr r1, _021E8C24 ; =0x0000026D
	b _021E8C0E
_021E8C0A:
	ldr r1, _021E8C28 ; =0x00000272
	add r0, r4, #0
_021E8C0E:
	mov r2, #1
	add r3, r5, #0
	bl sub_02008268
	ldr r1, _021E8C2C ; =0x000001B5
	add r0, r4, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_02008268
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E8C24: .word 0x0000026D
_021E8C28: .word 0x00000272
_021E8C2C: .word 0x000001B5
	thumb_func_end ovy279_21e8be0

	thumb_func_start ovy279_21e8c30
ovy279_21e8c30: ; 0x021E8C30
	push {r4, lr}
	bl sub_02017934
	bl sub_02011350
	add r4, r0, #0
	mov r0, #0
	bl sub_02005748
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_02011334
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_02011334
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_02011334
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy279_21e8c30
_021E8C64:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xE1, 0x8B, 0x1E, 0x02, 0x00, 0x4B, 0x18, 0x47
	.byte 0x31, 0x8C, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E8C64
