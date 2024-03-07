    .include "macros/function.inc"
	.include "overlay52.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy52_21e5800
ovy52_21e5800: ; 0x021E5800
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r1, r0, #0
	sub r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ovy52_21e5870
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5800

	thumb_func_start ovy52_21e5834
ovy52_21e5834: ; 0x021E5834
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02180494
	add r4, r0, #0
	sub r0, r5, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_021E58A0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02185804
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5834

	thumb_func_start ovy52_21e5870
ovy52_21e5870: ; 0x021E5870
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02180498
	add r4, r0, #0
	mov r1, #1
	mov r2, #0
	mov r6, #0
	bl sub_021B3DA8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_021B3DA8
	cmp r5, #0
	bne _021E589C
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_021B3DA8
_021E589C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5870

	thumb_func_start sub_021E58A0
sub_021E58A0: ; 0x021E58A0
	lsl r1, r0, #2
	ldr r0, _021E58A8 ; =0x021E5B44
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_021E58A8: .word 0x021E5B44
	thumb_func_end sub_021E58A0

	thumb_func_start ovy52_21e58ac
ovy52_21e58ac: ; 0x021E58AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED08
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e58ac

	thumb_func_start ovy52_21e58cc
ovy52_21e58cc: ; 0x021E58CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED3C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e58cc

	thumb_func_start ovy52_21e58ec
ovy52_21e58ec: ; 0x021E58EC
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_0201749C
	ldr r1, _021E5908 ; =0x0000088F
	bl sub_0202ED00
	mov r0, #0
	pop {r3, pc}
	nop
_021E5908: .word 0x0000088F
	thumb_func_end ovy52_21e58ec

	thumb_func_start ovy52_21e590c
ovy52_21e590c: ; 0x021E590C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED10
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e590c

	thumb_func_start ovy52_21e592c
ovy52_21e592c: ; 0x021E592C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EED4C
	add r1, r0, #0
	bne _021E594A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E594A:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e592c

	thumb_func_start ovy52_21e5954
ovy52_21e5954: ; 0x021E5954
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED6C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy52_21e5954

	thumb_func_start ovy52_21e5964
ovy52_21e5964: ; 0x021E5964
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021EED80
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy52_21e5964

	thumb_func_start ovy52_21e598c
ovy52_21e598c: ; 0x021E598C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EED14
	add r1, r0, #0
	bne _021E59AA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E59AA:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e598c

	thumb_func_start ovy52_21e59b4
ovy52_21e59b4: ; 0x021E59B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155184
	add r0, r5, #0
	bl sub_0215516C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021EED40
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e59b4

	thumb_func_start ovy52_21e59dc
ovy52_21e59dc: ; 0x021E59DC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EEDCC
	add r1, r0, #0
	bne _021E5A08
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5A08:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy52_21e59dc

	thumb_func_start ovy52_21e5a14
ovy52_21e5a14: ; 0x021E5A14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EEDF8
	add r1, r0, #0
	bne _021E5A32
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5A32:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e5a14

	thumb_func_start ovy52_21e5a3c
ovy52_21e5a3c: ; 0x021E5A3C
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EECF0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy52_21e5a3c

	thumb_func_start ovy52_21e5a4c
ovy52_21e5a4c: ; 0x021E5A4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED20
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5a4c

	thumb_func_start ovy52_21e5a6c
ovy52_21e5a6c: ; 0x021E5A6C
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED40
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy52_21e5a6c

	thumb_func_start ovy52_21e5a7c
ovy52_21e5a7c: ; 0x021E5A7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EED6C
	add r1, r0, #0
	bne _021E5A9A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5A9A:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e5a7c

	thumb_func_start ovy52_21e5aa4
ovy52_21e5aa4: ; 0x021E5AA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EECF0
	add r1, r0, #0
	bne _021E5AC2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5AC2:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e5aa4

	thumb_func_start ovy52_21e5acc
ovy52_21e5acc: ; 0x021E5ACC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EECF8
	add r1, r0, #0
	bne _021E5AEA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5AEA:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy52_21e5acc

	thumb_func_start ovy52_21e5af4
ovy52_21e5af4: ; 0x021E5AF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED00
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5af4

	thumb_func_start ovy52_21e5b14
ovy52_21e5b14: ; 0x021E5B14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EED1C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy52_21e5b14

	thumb_func_start ovy52_21e5b34
ovy52_21e5b34: ; 0x021E5B34
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED38
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy52_21e5b34
_021E5B44:
	.byte 0x1C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x01, 0x58, 0x1E, 0x02, 0x35, 0x58, 0x1E, 0x02, 0xAD, 0x58, 0x1E, 0x02
	.byte 0xCD, 0x58, 0x1E, 0x02, 0xED, 0x58, 0x1E, 0x02, 0x0D, 0x59, 0x1E, 0x02, 0x2D, 0x59, 0x1E, 0x02
	.byte 0x55, 0x59, 0x1E, 0x02, 0x65, 0x59, 0x1E, 0x02, 0x8D, 0x59, 0x1E, 0x02, 0xB5, 0x59, 0x1E, 0x02
	.byte 0xDD, 0x59, 0x1E, 0x02, 0x15, 0x5A, 0x1E, 0x02, 0x3D, 0x5A, 0x1E, 0x02, 0x4D, 0x5A, 0x1E, 0x02
	.byte 0x6D, 0x5A, 0x1E, 0x02, 0x7D, 0x5A, 0x1E, 0x02, 0xA5, 0x5A, 0x1E, 0x02, 0xCD, 0x5A, 0x1E, 0x02
	.byte 0xF5, 0x5A, 0x1E, 0x02, 0x15, 0x5B, 0x1E, 0x02, 0x35, 0x5B, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5B44
