    .include "macros/function.inc"
	.include "overlay285.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy285_21f4260
ovy285_21f4260: ; 0x021F4260
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x2b
	str r1, [sp]
	ldr r3, _021F4280 ; =0x021F4420
	mov r1, #0x18
	mov r2, #0
	add r4, r0, #0
	bl GFL_HeapAllocate
	strh r4, [r0, #0x10]
	mov r1, #1
	str r1, [r0, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F4280: .word 0x021F4420
	thumb_func_end ovy285_21f4260
_021F4284:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy285_21f428c
ovy285_21f428c: ; 0x021F428C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	mov r4, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x18
	strh r4, [r0]
	strh r4, [r0, #2]
	str r1, [sp, #0xc]
	mov r1, #1
	strb r4, [r0, #6]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	strb r1, [r0, #7]
	add r7, r1, #0
_021F42AC:
	add r0, sp, #0x18
	strh r4, [r0, #4]
	add r0, sp, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x38]
	lsl r6, r4, #2
	bl Oam_CreateSprite
	str r0, [r5, r6]
	mov r1, #0
	add r2, r7, #0
	bl sub_0204C378
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Oam_EnableOamAnim
	add r4, r4, #1
	cmp r4, #4
	blo _021F42AC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy285_21f428c

	thumb_func_start ovy285_21f42e4
ovy285_21f42e4: ; 0x021F42E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F42EA:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #4
	blo _021F42EA
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy285_21f42e4

	thumb_func_start ovy285_21f42fc
ovy285_21f42fc: ; 0x021F42FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r6, r1, #0
	cmp r0, r6
	beq _021F431C
	mov r4, #0
_021F430A:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #4
	blo _021F430A
	str r6, [r5, #0x14]
_021F431C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy285_21f42fc

	thumb_func_start ovy285_21f4320
ovy285_21f4320: ; 0x021F4320
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #3]
	mov r2, #1
	lsl r0, r0, #0x17
	lsr r4, r0, #0x18
	ldrb r0, [r5, #2]
	lsl r0, r0, #0x17
	lsr r7, r0, #0x18
	ldrb r0, [r5]
	sub r1, r0, r7
	add r0, sp, #0
	strh r1, [r0]
	ldrb r0, [r5, #1]
	sub r1, r0, r4
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r6]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrb r0, [r5]
	mov r2, #1
	sub r1, r0, r7
	add r0, sp, #0
	strh r1, [r0]
	ldrb r0, [r5, #1]
	add r1, r0, r4
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrb r0, [r5]
	mov r2, #1
	add r1, r0, r7
	add r0, sp, #0
	strh r1, [r0]
	ldrb r0, [r5, #1]
	sub r1, r0, r4
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r6, #8]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrb r0, [r5]
	mov r2, #1
	add r1, r0, r7
	add r0, sp, #0
	strh r1, [r0]
	ldrb r0, [r5, #1]
	add r1, r0, r4
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r6, #0xc]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy285_21f4320

	thumb_func_start ovy285_21f439c
ovy285_21f439c: ; 0x021F439C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl BmpWin_FlushMap
	ldr r0, [r4]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy285_21f439c

	thumb_func_start ovy285_21f43b4
ovy285_21f43b4: ; 0x021F43B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021F43BC:
	ldrb r0, [r6, r4]
	cmp r0, #0xff
	beq _021F43CE
	lsl r0, r0, #3
	add r0, r5, r0
	bl ovy285_21f439c
	add r4, r4, #1
	b _021F43BC
_021F43CE:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy285_21f43b4

	thumb_func_start ovy285_21f43d0
ovy285_21f43d0: ; 0x021F43D0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	str r1, [sp]
	add r6, r2, #0
	bl sub_02021A3C
	mov r4, #0
	cmp r6, #0
	bls _021F4410
_021F43E4:
	lsl r0, r4, #3
	add r5, r7, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _021F440A
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02021C1C
	cmp r0, #0
	bne _021F440A
	ldr r0, [r5]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #4]
_021F440A:
	add r4, r4, #1
	cmp r4, r6
	blo _021F43E4
_021F4410:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy285_21f43d0
_021F4414:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x5F, 0x61, 0x70, 0x70, 0x5F, 0x74, 0x6F, 0x6F, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F4414
