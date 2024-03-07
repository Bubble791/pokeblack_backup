    .include "macros/function.inc"
	.include "overlay68.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy68_21e5800
ovy68_21e5800: ; 0x021E5800
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_021EECD8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy68_21e5800

	thumb_func_start ovy68_21e582c
ovy68_21e582c: ; 0x021E582C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EED34
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy68_21e582c

	thumb_func_start ovy68_21e5854
ovy68_21e5854: ; 0x021E5854
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EEDA0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy68_21e5854

	thumb_func_start ovy68_21e587c
ovy68_21e587c: ; 0x021E587C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EF3C4
	add r1, r0, #0
	bne _021E589A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E589A:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy68_21e587c

	thumb_func_start ovy68_21e58a4
ovy68_21e58a4: ; 0x021E58A4
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EF3DC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy68_21e58a4

	thumb_func_start ovy68_21e58b4
ovy68_21e58b4: ; 0x021E58B4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804F0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EF078
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy68_21e58b4

	thumb_func_start ovy68_21e58e4
ovy68_21e58e4: ; 0x021E58E4
	push {r3, lr}
	ldr r0, [r2]
	bl sub_021EF104
	cmp r0, #1
	bne _021E58F4
	mov r0, #1
	pop {r3, pc}
_021E58F4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy68_21e58e4

	thumb_func_start ovy68_21e58f8
ovy68_21e58f8: ; 0x021E58F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AF0
	add r5, r0, #0
	ldr r2, _021E593C ; =ovy68_21e58e4
	add r0, r4, #0
	mov r1, #0
	mov r3, #4
	mov r7, #0
	bl sub_02016CB4
	add r4, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	cmp r4, #0
	bne _021E5930
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E5930:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E593C: .word ovy68_21e58e4
	thumb_func_end ovy68_21e58f8

	thumb_func_start ovy68_21e5940
ovy68_21e5940: ; 0x021E5940
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021EF120
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy68_21e5940
_021E595C:
	.byte 0x01, 0x58, 0x1E, 0x02
	.byte 0x2D, 0x58, 0x1E, 0x02, 0x55, 0x58, 0x1E, 0x02, 0x7D, 0x58, 0x1E, 0x02, 0xA5, 0x58, 0x1E, 0x02
	.byte 0xB5, 0x58, 0x1E, 0x02, 0xF9, 0x58, 0x1E, 0x02, 0x41, 0x59, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E595C
