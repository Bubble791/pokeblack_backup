    .include "macros/function.inc"
	.include "overlay67.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy67_21e5800
ovy67_21e5800: ; 0x021E5800
	push {r3, r4, r5, r6, r7, lr}
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
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021EECD8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy67_21e5800

	thumb_func_start ovy67_21e5840
ovy67_21e5840: ; 0x021E5840
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
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
	bl ovy12_2154910
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	bl sub_021EED38
	add r1, r0, #0
	bne _021E5896
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E5896:
	add r0, r6, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy67_21e5840
_021E58A4:
	.byte 0x01, 0x58, 0x1E, 0x02, 0x41, 0x58, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E58A4
