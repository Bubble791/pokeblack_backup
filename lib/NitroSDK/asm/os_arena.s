	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.public sub_027692EC
	
	.text
    
	thumb_func_start OS_InitArena
OS_InitArena: ; 0x0207B18C
	push {r3, lr}
	ldr r0, _0207B238 ; =0x0214C4A4
	ldr r1, [r0]
	cmp r1, #0
	bne _0207B236
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #0
	bl OS_SetArenaHi
	mov r0, #0
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #0
	bl OS_SetArenaLo
	mov r0, #2
	mov r1, #0
	bl OS_SetArenaLo
	mov r0, #2
	mov r1, #0
	bl OS_SetArenaHi
	mov r0, #3
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #3
	bl OS_SetArenaHi
	mov r0, #3
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #3
	bl OS_SetArenaLo
	mov r0, #4
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #4
	bl OS_SetArenaHi
	mov r0, #4
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #4
	bl OS_SetArenaLo
	mov r0, #5
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #5
	bl OS_SetArenaHi
	mov r0, #5
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #5
	bl OS_SetArenaLo
	mov r0, #6
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #6
	bl OS_SetArenaHi
	mov r0, #6
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #6
	bl OS_SetArenaLo
_0207B236:
	pop {r3, pc}
	.align 2, 0
_0207B238: .word 0x0214C4A4
	thumb_func_end OS_InitArena

	thumb_func_start OS_InitArenaEx
OS_InitArenaEx: ; 0x0207B23C
	push {r4, lr}
	bl OS_GetConsoleType
	mov r0, #2
	mov r4, #2
	bl OS_GetInitArenaHi
	add r1, r0, #0
	mov r0, #2
	bl OS_SetArenaHi
	mov r0, #2
	bl OS_GetInitArenaLo
	add r1, r0, #0
	mov r0, #2
	bl OS_SetArenaLo
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207B27E
	mov r0, #1
	lsl r1, r4, #0x18
	mov r2, #0x2a
	blx OS_SetProtectionRegionEx
	ldr r1, _0207B284 ; =0x027FF000
	add r0, r4, #0
	mov r2, #0x16
	blx OS_SetProtectionRegionEx
	pop {r4, pc}
_0207B27E:
	bl OSi_InitArenaEx_ltdmain
	pop {r4, pc}
	.align 2, 0
_0207B284: .word 0x027FF000
	thumb_func_end OS_InitArenaEx

	thumb_func_start OSi_InitArenaEx_ltdmain
OSi_InitArenaEx_ltdmain: ; 0x0207B288
	bx pc
	nop
	thumb_func_end OSi_InitArenaEx_ltdmain

	arm_func_start sub_0207B28C
sub_0207B28C: ; 0x0207C4E8
	ldr ip, _0207B290 ; =sub_027692EC
	bx ip
	.align 2, 0
_0207B290: .word sub_027692EC
	arm_func_end sub_0207B28C

	thumb_func_start OS_GetArenaHi
OS_GetArenaHi: ; 0x0207B298
	lsl r1, r0, #2
	ldr r0, _0207B2A0 ; =0x02FFFDC4
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_0207B2A0: .word 0x02FFFDC4
	thumb_func_end OS_GetArenaHi

	thumb_func_start OS_GetArenaLo
OS_GetArenaLo: ; 0x0207B2A4
	lsl r1, r0, #2
	ldr r0, _0207B2AC ; =0x02FFFDA0
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_0207B2AC: .word 0x02FFFDA0
	thumb_func_end OS_GetArenaLo

	thumb_func_start OS_GetInitArenaHi
OS_GetInitArenaHi: ; 0x0207B2B0
	push {r4, lr}
	cmp r0, #6
	bhi _0207B354
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B2C2: ; jump table
	.short _0207B2D0 - _0207B2C2 - 2 ; case 0
	.short _0207B354 - _0207B2C2 - 2 ; case 1
	.short _0207B2E2 - _0207B2C2 - 2 ; case 2
	.short _0207B31C - _0207B2C2 - 2 ; case 3
	.short _0207B322 - _0207B2C2 - 2 ; case 4
	.short _0207B34A - _0207B2C2 - 2 ; case 5
	.short _0207B34E - _0207B2C2 - 2 ; case 6
_0207B2D0:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B2DE
	mov r0, #0xbe
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B2DE:
	ldr r0, _0207B358 ; =0x023E0000
	pop {r4, pc}
_0207B2E2:
	ldr r0, _0207B35C ; =0x0214C4A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207B2EE
	mov r0, #0
	pop {r4, pc}
_0207B2EE:
	bl OS_GetConsoleType
	mov r1, #0xf
	add r4, r0, #0
	and r4, r1
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B30E
	cmp r4, #4
	bne _0207B308
	mov r0, #0
	pop {r4, pc}
_0207B308:
	mov r0, #0xdf
	lsl r0, r0, #0x14
	pop {r4, pc}
_0207B30E:
	cmp r4, #1
	bne _0207B316
	mov r0, #0
	pop {r4, pc}
_0207B316:
	mov r0, #0x27
	lsl r0, r0, #0x14
	pop {r4, pc}
_0207B31C:
	mov r0, #2
	lsl r0, r0, #0x18
	pop {r4, pc}
_0207B322:
	mov r1, #0xfe
	ldr r0, _0207B360 ; =0x02FE0000
	lsl r1, r1, #6
	add r2, r0, r1
	ldr r1, _0207B364 ; =0x00000800
	sub r2, r2, r1
	ldr r1, _0207B368 ; =0x00001800
	cmp r1, #0
	bne _0207B33E
	ldr r1, _0207B36C ; =0x02FE00C0
	cmp r0, r1
	bhs _0207B356
	add r0, r1, #0
	pop {r4, pc}
_0207B33E:
	bge _0207B346
	ldr r0, _0207B36C ; =0x02FE00C0
	sub r0, r0, r1
	pop {r4, pc}
_0207B346:
	sub r0, r2, r1
	pop {r4, pc}
_0207B34A:
	ldr r0, _0207B370 ; =0x02FFF680
	pop {r4, pc}
_0207B34E:
	mov r0, #0xc1
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B354:
	mov r0, #0
_0207B356:
	pop {r4, pc}
	.align 2, 0
_0207B358: .word 0x023E0000
_0207B35C: .word 0x0214C4A4
_0207B360: .word 0x02FE0000
_0207B364: .word 0x00000800
_0207B368: .word 0x00001800
_0207B36C: .word 0x02FE00C0
_0207B370: .word 0x02FFF680
	thumb_func_end OS_GetInitArenaHi

	thumb_func_start OS_GetInitArenaLo
OS_GetInitArenaLo: ; 0x0207B374
	push {r4, lr}
	cmp r0, #6
	bhi _0207B3E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B386: ; jump table
	.short _0207B394 - _0207B386 - 2 ; case 0
	.short _0207B3E8 - _0207B386 - 2 ; case 1
	.short _0207B3A4 - _0207B386 - 2 ; case 2
	.short _0207B3D6 - _0207B386 - 2 ; case 3
	.short _0207B3DA - _0207B386 - 2 ; case 4
	.short _0207B3DE - _0207B386 - 2 ; case 5
	.short _0207B3E2 - _0207B386 - 2 ; case 6
_0207B394:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B3A0
	ldr r0, _0207B3EC ; =0x0276DDE0
	pop {r4, pc}
_0207B3A0:
	ldr r0, _0207B3F0 ; =0x021FD080
	pop {r4, pc}
_0207B3A4:
	ldr r0, _0207B3F4 ; =0x0214C4A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207B3B0
	mov r0, #0
	pop {r4, pc}
_0207B3B0:
	bl OS_GetConsoleType
	mov r1, #0xf
	add r4, r0, #0
	and r4, r1
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B3CC
	mov r0, #0
	cmp r4, #4
	beq _0207B3EA
	ldr r0, _0207B3F8 ; =0x0D000000
	pop {r4, pc}
_0207B3CC:
	mov r0, #0
	cmp r4, #1
	beq _0207B3EA
	ldr r0, _0207B3FC ; =0x02400060
	pop {r4, pc}
_0207B3D6:
	ldr r0, _0207B400 ; =0x01FF93A0
	pop {r4, pc}
_0207B3DA:
	ldr r0, _0207B404 ; =0x02FE00C0
	pop {r4, pc}
_0207B3DE:
	ldr r0, _0207B408 ; =0x02FFF000
	pop {r4, pc}
_0207B3E2:
	mov r0, #0xc1
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B3E8:
	mov r0, #0
_0207B3EA:
	pop {r4, pc}
	.align 2, 0
_0207B3EC: .word 0x0276DDE0
_0207B3F0: .word 0x021FD080
_0207B3F4: .word 0x0214C4A4
_0207B3F8: .word 0x0D000000
_0207B3FC: .word 0x02400060
_0207B400: .word 0x01FF93A0
_0207B404: .word 0x02FE00C0
_0207B408: .word 0x02FFF000
	thumb_func_end OS_GetInitArenaLo

	thumb_func_start OS_SetArenaHi
OS_SetArenaHi: ; 0x0207B40C
	lsl r2, r0, #2
	ldr r0, _0207B414 ; =0x02FFFDC4
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_0207B414: .word 0x02FFFDC4
	thumb_func_end OS_SetArenaHi

	thumb_func_start OS_SetArenaLo
OS_SetArenaLo: ; 0x0207B418
	lsl r2, r0, #2
	ldr r0, _0207B420 ; =0x02FFFDA0
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_0207B420: .word 0x02FFFDA0
	thumb_func_end OS_SetArenaLo

	thumb_func_start OS_AllocFromArenaLo
OS_AllocFromArenaLo: ; 0x0207B424
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl OS_GetArenaLo
	cmp r0, #0
	bne _0207B438
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B438:
	sub r1, r4, #1
	mvn r1, r1
	add r0, r0, r4
	sub r0, r0, #1
	add r7, r1, #0
	and r7, r0
	add r0, r7, r6
	add r0, r0, r4
	sub r0, r0, #1
	add r4, r1, #0
	and r4, r0
	add r0, r5, #0
	bl OS_GetArenaHi
	cmp r4, r0
	bls _0207B45C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B45C:
	add r0, r5, #0
	add r1, r4, #0
	bl OS_SetArenaLo
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OS_AllocFromArenaLo