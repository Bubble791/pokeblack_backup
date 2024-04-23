    .include "macros/function.inc"
	.include "overlay122.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy122_21eec80
ovy122_21eec80: ; 0x021EEC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x4c
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_0201793C
	mov r1, #0x27
	bl sub_0200BAC4
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy122_21eeeb4
	add r0, r4, #0
	bl ovy122_21eee10
	pop {r4, r5, r6, pc}
	thumb_func_end ovy122_21eec80

	thumb_func_start ovy122_21eecc8
ovy122_21eecc8: ; 0x021EECC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl ovy122_021EEF78
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy122_21eecc8

	thumb_func_start ovy122_21eece0
ovy122_21eece0: ; 0x021EECE0
	push {r3, r4, r5, lr}
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021EED0C
	ldr r0, [r4, #4]
	bl sub_021804A0
	add r5, r0, #0
	bl sub_0219761C
	cmp r0, #0
	bne _021EED04
	mov r0, #0
	str r0, [r4, #0x48]
_021EED04:
	add r0, r5, #0
	mov r1, #0
	bl sub_021975D4
_021EED0C:
	add r0, r4, #0
	bl sub_021EEF84
	pop {r3, r4, r5, pc}
	thumb_func_end ovy122_21eece0

	thumb_func_start ovy122_21eed14
ovy122_21eed14: ; 0x021EED14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r4, r0, #0
	mov r0, #0
	add r1, r5, #0
	bl ovy122_21ef630
	add r5, r0, #0
	beq _021EED3A
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_021EF8D0
_021EED3A:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy122_21eed14

	thumb_func_start ovy122_21eed40
ovy122_21eed40: ; 0x021EED40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	mov r1, #1
	bl sub_0218105C
	str r0, [sp]
	add r0, r7, #0
	bl sub_02180570
	ldr r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xc
	mul r0, r5
	add r6, #0xc
	str r0, [sp, #8]
	add r4, r6, r0
	add r0, r7, #0
	bl ovy36_0218056c
	ldr r1, [sp, #8]
	cmp r5, #0
	str r0, [r6, r1]
	str r7, [r4, #4]
	str r5, [r4, #8]
	bne _021EED9C
	ldr r0, [sp]
	bl ovy122_21ef214
	ldr r0, [sp]
	bl ovy122_21ef4a4
	ldr r0, [sp, #4]
	ldr r1, _021EEDBC ; =ovy122_21ef68c
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r0, _021EEDC0 ; =0x00000893
	bl GFL_SndSEPlay
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EED9C:
	ldr r0, [sp]
	sub r1, r5, #1
	bl ovy122_21ef2c8
	ldr r0, [sp, #4]
	ldr r1, _021EEDC4 ; =ovy122_21ef6b0
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r0, _021EEDC8 ; =0x00000891
	bl GFL_SndSEPlay
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EEDBC: .word ovy122_21ef68c
_021EEDC0: .word 0x00000893
_021EEDC4: .word ovy122_21ef6b0
_021EEDC8: .word 0x00000891
	thumb_func_end ovy122_21eed40

	thumb_func_start ovy122_21eedcc
ovy122_21eedcc: ; 0x021EEDCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	mov r1, #1
	mov r7, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy122_21ef6e0
	add r5, r0, #0
	beq _021EEDF4
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_021EF8D8
_021EEDF4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21eedcc

	thumb_func_start ovy122_21eedf8
ovy122_21eedf8: ; 0x021EEDF8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	mov r0, #0
	add r1, r4, #0
	bl ovy122_21ef850
	pop {r4, pc}
	thumb_func_end ovy122_21eedf8

	thumb_func_start ovy122_21eee10
ovy122_21eee10: ; 0x021EEE10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021EF8D4
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_021EF8DC
	cmp r5, #0
	bne _021EEE4E
	cmp r0, #0
	bne _021EEE4E
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	mov r3, #0
	bl sub_021B8258
	add r0, r4, #0
	bl ovy122_21ef08c
	add r0, r4, #0
	bl ovy122_21ef384
	add r0, r4, #0
	bl ovy122_21ef4d0
	mov r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021EEE4E:
	cmp r5, #1
	bne _021EEE9A
	cmp r0, #0
	bne _021EEE9A
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	mov r3, #0
	bl sub_021B8258
	add r0, r4, #0
	bl ovy122_21ef08c
	add r0, r4, #0
	bl ovy122_21ef384
	add r0, r4, #0
	bl ovy122_21ef288
	add r0, r4, #0
	mov r1, #0
	bl ovy122_21ef340
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy122_21ef340
	add r0, r4, #0
	mov r1, #2
	bl ovy122_21ef340
	add r0, r4, #0
	mov r1, #3
	bl ovy122_21ef340
	str r5, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021EEE9A:
	cmp r0, #1
	bne _021EEEB0
	add r0, r4, #0
	bl ovy122_21ef150
	add r0, r4, #0
	bl ovy122_21ef450
	add r0, r4, #0
	bl ovy122_21ef5f0
_021EEEB0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy122_21eee10

	thumb_func_start ovy122_21eeeb4
ovy122_21eeeb4: ; 0x021EEEB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEF70 ; =0x021EF8F8
	mov r2, #0
	bl ovy36_21b8598
	ldr r0, [r5]
	mov r1, #0
	mov r2, #8
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #1
	mov r2, #9
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #2
	mov r2, #9
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #3
	mov r2, #9
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #4
	mov r2, #9
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #5
	mov r2, #9
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #6
	mov r2, #6
	mov r4, #6
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #7
	mov r2, #2
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #8
	mov r2, #6
	bl ovy122_21eef90
	ldr r0, [r5]
	mov r1, #9
	mov r2, #4
	bl ovy122_21eef90
	ldr r3, _021EEF74 ; =0x021EF9A0
	add r2, sp, #0
_021EEF2E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _021EEF2E
	mov r6, #1
	mov r4, #0
	add r7, sp, #0
	lsl r6, r6, #0x14
_021EEF3E:
	add r2, r4, #2
	lsl r2, r2, #0x10
	ldr r0, [r5]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	add r2, r4, #0
	mov r1, #0xc
	mul r2, r1
	add r1, r7, r2
	ldr r2, [r7, r2]
	add r4, r4, #1
	add r2, r2, r6
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r1, [r1, #8]
	add r1, r1, r6
	str r1, [r0, #8]
	cmp r4, #4
	blt _021EEF3E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEF70: .word 0x021EF8F8
_021EEF74: .word 0x021EF9A0
	thumb_func_end ovy122_21eeeb4

	thumb_func_start ovy122_021EEF78
ovy122_021EEF78: ; 0x021EEF78
	ldr r0, [r0]
	ldr r3, _021EEF80 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEF80: .word ovy36_21b81bc
	thumb_func_end ovy122_021EEF78

	thumb_func_start sub_021EEF84
sub_021EEF84: ; 0x021EEF84
	ldr r0, [r0]
	ldr r3, _021EEF8C ; =ovy36_21b83b4
	bx r3
	nop
_021EEF8C: .word ovy36_21b83b4
	thumb_func_end sub_021EEF84

	thumb_func_start ovy122_21eef90
ovy122_21eef90: ; 0x021EEF90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r2, [sp, #4]
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	str r4, [r0, #4]
	str r1, [r0, #8]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8248
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EF004
_021EEFCC:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEFCC
_021EF004:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21eef90

	thumb_func_start ovy122_21ef008
ovy122_21ef008: ; 0x021EF008
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	add r6, r0, #0
	bl ovy36_21b84a8
	str r0, [sp, #4]
	mov r1, #0
	bl sub_021B84E8
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8538
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21ef008

	thumb_func_start ovy122_21ef054
ovy122_21ef054: ; 0x021EF054
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	add r5, r0, #0
	mov r7, #0
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8538
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8504
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21ef054

	thumb_func_start ovy122_21ef08c
ovy122_21ef08c: ; 0x021EF08C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #4
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #5
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #6
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	bl ovy122_21ef054
	pop {r4, pc}
	thumb_func_end ovy122_21ef08c

	thumb_func_start ovy122_21ef0f4
ovy122_21ef0f4: ; 0x021EF0F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #4
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #5
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	mov r3, #0
	bl ovy122_21ef008
	pop {r4, pc}
	thumb_func_end ovy122_21ef0f4

	thumb_func_start ovy122_21ef150
ovy122_21ef150: ; 0x021EF150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #5
	bl ovy36_21b84a8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #5
	bl ovy36_21b8538
	add r0, r4, #0
	bl ovy36_21b8580
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #5
	bl ovy36_21b8504
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef150

	thumb_func_start ovy122_21ef198
ovy122_21ef198: ; 0x021EF198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #5
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #6
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef198

	thumb_func_start ovy122_21ef200
ovy122_21ef200: ; 0x021EF200
	push {r3, lr}
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	mov r3, #3
	bl ovy36_21b84a8
	bl sub_021B84F4
	pop {r3, pc}
	thumb_func_end ovy122_21ef200

	thumb_func_start ovy122_21ef214
ovy122_21ef214: ; 0x021EF214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #1
	add r7, r4, #0
_021EF22A:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy122_21ef008
	add r4, r4, #1
	cmp r4, #4
	ble _021EF22A
	mov r4, #5
	mov r6, #1
_021EF242:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy122_21ef054
	add r4, r4, #1
	cmp r4, #8
	ble _021EF242
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef214

	thumb_func_start ovy122_21ef258
ovy122_21ef258: ; 0x021EF258
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021EF262:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF27C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF27C:
	add r4, r4, #1
	cmp r4, #4
	ble _021EF262
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef258

	thumb_func_start ovy122_21ef288
ovy122_21ef288: ; 0x021EF288
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #1
_021EF29C:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy122_21ef054
	add r4, r4, #1
	cmp r4, #4
	ble _021EF29C
	mov r4, #5
	mov r6, #1
_021EF2B2:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ovy122_21ef008
	add r4, r4, #1
	cmp r4, #8
	ble _021EF2B2
	pop {r4, r5, r6, pc}
	thumb_func_end ovy122_21ef288

	thumb_func_start ovy122_21ef2c8
ovy122_21ef2c8: ; 0x021EF2C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r4]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	mov r5, #0
	bl sub_021B8258
	add r7, r5, #0
_021EF2E2:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy122_21ef008
	add r5, r5, #1
	cmp r5, #4
	ble _021EF2E2
	mov r5, #5
_021EF2F8:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy122_21ef054
	add r5, r5, #1
	cmp r5, #8
	ble _021EF2F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21ef2c8

	thumb_func_start ovy122_21ef30c
ovy122_21ef30c: ; 0x021EF30C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #2
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r7, r4, #0
_021EF31A:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF334
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF334:
	add r4, r4, #1
	cmp r4, #4
	ble _021EF31A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef30c

	thumb_func_start ovy122_21ef340
ovy122_21ef340: ; 0x021EF340
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r4]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	mov r5, #0
	bl sub_021B8258
_021EF358:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy122_21ef054
	add r5, r5, #1
	cmp r5, #4
	ble _021EF358
	mov r5, #5
	mov r7, #1
_021EF36E:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy122_21ef008
	add r5, r5, #1
	cmp r5, #8
	ble _021EF36E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy122_21ef340

	thumb_func_start ovy122_21ef384
ovy122_21ef384: ; 0x021EF384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #1
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #2
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #3
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #4
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #5
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef384

	thumb_func_start ovy122_21ef3d8
ovy122_21ef3d8: ; 0x021EF3D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	mov r2, #2
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #1
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #4
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #5
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef3d8

	thumb_func_start ovy122_21ef420
ovy122_21ef420: ; 0x021EF420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #2
	mov r6, #0
	mov r7, #6
_021EF42A:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF444
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF444:
	add r4, r4, #1
	cmp r4, #3
	ble _021EF42A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef420

	thumb_func_start ovy122_21ef450
ovy122_21ef450: ; 0x021EF450
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #6
	mov r2, #4
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #5
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #1
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #2
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #6
	mov r2, #3
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef450

	thumb_func_start ovy122_21ef4a4
ovy122_21ef4a4: ; 0x021EF4A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #7
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #7
	mov r2, #1
	mov r3, #0
	bl ovy122_21ef008
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef4a4

	thumb_func_start ovy122_21ef4d0
ovy122_21ef4d0: ; 0x021EF4D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #8
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #1
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #2
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #3
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #8
	mov r2, #4
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #8
	mov r2, #5
	bl ovy122_21ef054
	pop {r4, pc}
	thumb_func_end ovy122_21ef4d0

	thumb_func_start ovy122_21ef524
ovy122_21ef524: ; 0x021EF524
	push {r3, lr}
	ldr r0, [r0]
	mov r1, #0
	mov r2, #8
	mov r3, #2
	bl ovy36_21b84a8
	bl sub_021B84F4
	pop {r3, pc}
	thumb_func_end ovy122_21ef524

	thumb_func_start ovy122_21ef538
ovy122_21ef538: ; 0x021EF538
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	mov r2, #3
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #4
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #5
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #8
	mov r2, #1
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #8
	mov r2, #2
	bl ovy122_21ef054
	pop {r4, pc}
	thumb_func_end ovy122_21ef538

	thumb_func_start ovy122_21ef580
ovy122_21ef580: ; 0x021EF580
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #9
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #9
	mov r2, #1
	mov r3, #0
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #9
	mov r2, #2
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #9
	mov r2, #3
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef580

	thumb_func_start ovy122_21ef5c0
ovy122_21ef5c0: ; 0x021EF5C0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #9
_021EF5CA:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF5E4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF5E4:
	add r4, r4, #1
	cmp r4, #1
	ble _021EF5CA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef5c0

	thumb_func_start ovy122_21ef5f0
ovy122_21ef5f0: ; 0x021EF5F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #9
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #9
	mov r2, #2
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #9
	mov r2, #3
	mov r3, #1
	bl ovy122_21ef008
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0
	bl ovy122_21ef054
	ldr r0, [r4]
	mov r1, #9
	mov r2, #1
	bl ovy122_21ef054
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef5f0

	thumb_func_start ovy122_21ef630
ovy122_21ef630: ; 0x021EF630
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _021EF644 ; =ovy122_21ef648
	mov r3, #0
	bl sub_02016CB4
	pop {r3, pc}
	nop
_021EF644: .word ovy122_21ef648
	thumb_func_end ovy122_21ef630

	thumb_func_start ovy122_21ef648
ovy122_21ef648: ; 0x021EF648
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	ldr r1, [r5]
	cmp r1, #0
	beq _021EF668
	cmp r1, #1
	beq _021EF678
	b _021EF688
_021EF668:
	bl ovy122_21ef524
	cmp r0, #0
	beq _021EF688
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF688
_021EF678:
	bl ovy122_21ef538
	mov r0, #0x89
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EF688:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy122_21ef648

	thumb_func_start ovy122_21ef68c
ovy122_21ef68c: ; 0x021EF68C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #4]
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	bl ovy122_21ef258
	cmp r0, #0
	beq _021EF6AE
	add r0, r4, #0
	bl ovy122_21ef288
	add r0, r5, #0
	bl GFL_TCBRemove
_021EF6AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy122_21ef68c

	thumb_func_start ovy122_21ef6b0
ovy122_21ef6b0: ; 0x021EF6B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0218105C
	ldr r1, [r4, #8]
	add r6, r0, #0
	sub r1, r1, #1
	bl ovy122_21ef30c
	cmp r0, #0
	beq _021EF6DC
	ldr r1, [r4, #8]
	add r0, r6, #0
	sub r1, r1, #1
	bl ovy122_21ef340
	add r0, r5, #0
	bl GFL_TCBRemove
_021EF6DC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy122_21ef6b0

	thumb_func_start ovy122_21ef6e0
ovy122_21ef6e0: ; 0x021EF6E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	add r5, r0, #0
	ldr r2, _021EF720 ; =ovy122_21ef724
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	str r5, [r4, #4]
	add r0, r5, #0
	str r6, [r4, #8]
	bl sub_021804B8
	mov r1, #0
	bl ovy12_2167a14
	str r0, [r4, #0xc]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF720: .word ovy122_21ef724
	thumb_func_end ovy122_21ef6e0

	thumb_func_start ovy122_21ef724
ovy122_21ef724: ; 0x021EF724
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r1, #0
	bl sub_02016ED8
	ldr r0, [r4, #4]
	mov r1, #1
	mov r7, #1
	bl sub_0218105C
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #9
	bhi _021EF840
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF74E: ; jump table
	.short _021EF762 - _021EF74E - 2 ; case 0
	.short _021EF76E - _021EF74E - 2 ; case 1
	.short _021EF78A - _021EF74E - 2 ; case 2
	.short _021EF840 - _021EF74E - 2 ; case 3
	.short _021EF7AA - _021EF74E - 2 ; case 4
	.short _021EF7B8 - _021EF74E - 2 ; case 5
	.short _021EF7DA - _021EF74E - 2 ; case 6
	.short _021EF810 - _021EF74E - 2 ; case 7
	.short _021EF82E - _021EF74E - 2 ; case 8
	.short _021EF83A - _021EF74E - 2 ; case 9
_021EF762:
	ldr r0, [r4, #0xc]
	mov r1, #0x4b
	bl ovy12_2166e88
	str r7, [r5]
	b _021EF840
_021EF76E:
	ldr r0, [r4, #0xc]
	bl sub_02166ECC
	cmp r0, #0
	beq _021EF840
	add r0, r6, #0
	bl ovy122_21ef198
	ldr r0, _021EF848 ; =0x00000892
	bl GFL_SndSEPlay
	mov r0, #2
_021EF786:
	str r0, [r5]
	b _021EF840
_021EF78A:
	bl ovy122_21ef200
	cmp r0, #0
	beq _021EF840
	ldr r0, [r4, #0xc]
	mov r1, #0x21
	bl ovy12_2166e88
	add r0, r6, #0
	bl ovy122_21ef0f4
	ldr r0, _021EF84C ; =0x00000895
	bl GFL_SndSEPlay
	mov r0, #4
	b _021EF786
_021EF7AA:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _021EF840
	mov r0, #5
	b _021EF786
_021EF7B8:
	ldr r0, [r4, #4]
	bl sub_021804C0
	mov r6, #6
	str r6, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	str r6, [r5]
	mov r0, #0xf
	str r0, [r4, #8]
	b _021EF840
_021EF7DA:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021EF840
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _021EF840
	ldr r0, [r4, #4]
	bl sub_021804A0
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021975D4
	add r0, r6, #0
	bl sub_021975A0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #9
	mov r3, #0
	bl sub_021B8258
	mov r0, #7
	b _021EF786
_021EF810:
	ldr r0, [r4, #4]
	bl sub_021804C0
	mov r1, #6
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	add r1, r7, #0
	add r2, r7, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #8
	b _021EF786
_021EF82E:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021EF840
	mov r0, #9
	b _021EF786
_021EF83A:
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021EF840:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EF848: .word 0x00000892
_021EF84C: .word 0x00000895
	thumb_func_end ovy122_21ef724

	thumb_func_start ovy122_21ef850
ovy122_21ef850: ; 0x021EF850
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _021EF864 ; =ovy122_21ef868
	mov r3, #0
	bl sub_02016CB4
	pop {r3, pc}
	nop
_021EF864: .word ovy122_21ef868
	thumb_func_end ovy122_21ef850

	thumb_func_start ovy122_21ef868
ovy122_21ef868: ; 0x021EF868
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021EF88E
	cmp r1, #1
	beq _021EF8A6
	cmp r1, #2
	beq _021EF8BA
	b _021EF8C8
_021EF88E:
	bl ovy122_21ef3d8
	add r0, r4, #0
	bl ovy122_21ef580
	ldr r0, _021EF8CC ; =0x00000894
	bl GFL_SndSEPlay
_021EF89E:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF8C8
_021EF8A6:
	bl ovy122_21ef420
	cmp r0, #0
	beq _021EF8C8
	add r0, r4, #0
	bl ovy122_21ef5c0
	cmp r0, #0
	beq _021EF8C8
	b _021EF89E
_021EF8BA:
	bl ovy122_21ef450
	add r0, r4, #0
	bl ovy122_21ef5f0
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021EF8C8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EF8CC: .word 0x00000894
	thumb_func_end ovy122_21ef868

	thumb_func_start sub_021EF8D0
sub_021EF8D0: ; 0x021EF8D0
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EF8D0

	thumb_func_start sub_021EF8D4
sub_021EF8D4: ; 0x021EF8D4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF8D4

	thumb_func_start sub_021EF8D8
sub_021EF8D8: ; 0x021EF8D8
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021EF8D8

	thumb_func_start sub_021EF8DC
sub_021EF8DC: ; 0x021EF8DC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021EF8DC
_021EF8E0:
	.byte 0x25, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x70, 0xFA, 0x1E, 0x02, 0x33, 0x00, 0x00, 0x00
	.byte 0xD0, 0xF9, 0x1E, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x02, 0x00, 0x00, 0x00, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x00, 0x80, 0xFA, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00, 0x00, 0xF8, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0xF9, 0x1E, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x58, 0xF9, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x7C, 0xF9, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x7C, 0xF9, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x7C, 0xF9, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x7C, 0xF9, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x20, 0xF9, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0xE0, 0xF8, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x08, 0xF9, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0xE8, 0xF8, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x01, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF8E0
