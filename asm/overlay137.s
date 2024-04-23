    .include "macros/function.inc"
	.include "overlay137.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy137_21eec80
ovy137_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r6, r0, #0
	bl sub_021804C0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_02017B84
	mov r1, #1
	str r0, [sp, #0x1c]
	str r1, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r5, #0
	mov r3, #0x14
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02017934
	bl sub_02010044
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_02017B7C
	str r0, [sp, #0x24]
	add r0, sp, #0x4c
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	ldr r0, [sp, #0x20]
	bl sub_02010060
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	bl sub_02010050
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x24]
	ldr r0, [r0]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	bl sub_02010054
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x20]
	bl sub_0201006C
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x4c
	add r2, r5, #0
	bl ovy137_21f1f1c
	str r0, [r4, #8]
	bl sub_021F202C
	mov r1, #7
	mov r2, #0
	bl sub_02038F00
	str r0, [sp, #0x28]
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r5, #0
	bl ovy137_21f0be4
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r5, #0
	bl ovy137_21f0ae0
	ldr r0, [sp, #0x1c]
	mov r1, #8
	bl sub_02039978
	str r0, [sp, #0x2c]
	add r0, r7, #0
	bl sub_0201738C
	str r0, [sp, #0x30]
	add r0, r6, #0
	bl sub_021804F0
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ovy137_21f042c
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	str r0, [r4]
	bl ovy137_21f0508
	add r0, sp, #0x38
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r7, #0
	bl sub_0201738C
	str r0, [sp, #0x38]
	mov r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [r4, #8]
	bl sub_021F202C
	str r0, [sp, #0x44]
	add r0, r6, #0
	bl sub_021804D8
	bl sub_02039518
	str r0, [sp, #0x40]
	ldr r0, [r4, #8]
	bl sub_021F2010
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	add r1, r5, #0
	bl ovy137_21f1c24
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02180490
	str r0, [sp, #0x14]
	ldr r0, [r4, #8]
	bl sub_021F2014
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	bl sub_021F202C
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	bl sub_021F201C
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _021EEDBC
	mov r1, #0
	str r1, [sp, #8]
_021EEDBC:
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl ovy137_21efdac
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl ovy36_0218056c
	str r0, [sp, #0x34]
	add r0, r6, #0
	bl sub_02180494
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	bl ovy137_21f0758
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl sub_02017934
	bl sub_0200FF40
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	bl sub_021F2028
	add r5, r0, #0
	mov r4, #0
	bl sub_02037ED4
	cmp r0, #0
	bls _021EEE48
	mov r7, #3
_021EEE0A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02037F04
	add r6, r0, #0
	bl sub_02037A90
	cmp r0, #0
	bne _021EEE3C
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02037B38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xdf
	bne _021EEE3C
	ldr r0, [sp, #0x18]
	mov r1, #2
	mov r2, #0xf
	bl sub_0200FF50
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_021EEE3C:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02037ED4
	cmp r4, r0
	blo _021EEE0A
_021EEE48:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21eec80

	thumb_func_start ovy137_21eee4c
ovy137_21eee4c: ; 0x021EEE4C
	push {r3, r4, r5, lr}
	mov r1, #1
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy137_21f0790
	ldr r0, [r4, #0xc]
	bl ovy137_21efe1c
	ldr r0, [r4, #4]
	bl ovy137_21f1c74
	ldr r0, [r4]
	bl ovy137_21f0540
	ldr r0, [r4, #8]
	bl ovy137_21f1fb4
	add r0, r5, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21eee4c

	thumb_func_start ovy137_21eee80
ovy137_21eee80: ; 0x021EEE80
	push {r3, r4, r5, lr}
	mov r1, #1
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy137_21f0560
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ovy137_21f1c88
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ovy137_21efe54
	ldr r0, [r4, #0x10]
	bl ovy137_21f07a4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21eee80

	thumb_func_start ovy137_21eeeac
ovy137_21eeeac: ; 0x021EEEAC
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0]
	bl sub_021F059C
	pop {r3, pc}
	thumb_func_end ovy137_21eeeac

	thumb_func_start ovy137_21eeebc
ovy137_21eeebc: ; 0x021EEEBC
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #4]
	pop {r3, pc}
	thumb_func_end ovy137_21eeebc

	thumb_func_start ovy137_21eeec8
ovy137_21eeec8: ; 0x021EEEC8
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #8]
	pop {r3, pc}
	thumb_func_end ovy137_21eeec8

	thumb_func_start ovy137_21eeed4
ovy137_21eeed4: ; 0x021EEED4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_021F05A0
	pop {r4, pc}
	thumb_func_end ovy137_21eeed4

	thumb_func_start ovy137_21eeee8
ovy137_21eeee8: ; 0x021EEEE8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0x10]
	add r1, r4, #0
	bl ovy137_21f07d0
	pop {r4, pc}
	thumb_func_end ovy137_21eeee8

	thumb_func_start ovy137_21eeefc
ovy137_21eeefc: ; 0x021EEEFC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_021F07EC
	pop {r4, pc}
	thumb_func_end ovy137_21eeefc

	thumb_func_start ovy137_21eef10
ovy137_21eef10: ; 0x021EEF10
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0x10]
	add r1, r4, #0
	bl ovy137_21f0800
	pop {r4, pc}
	thumb_func_end ovy137_21eef10

	thumb_func_start ovy137_21eef24
ovy137_21eef24: ; 0x021EEF24
	push {r4, lr}
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	bl ovy137_21f0584
	ldr r0, [r4, #0xc]
	bl sub_021F009C
	pop {r4, pc}
	thumb_func_end ovy137_21eef24

	thumb_func_start ovy137_21eef3c
ovy137_21eef3c: ; 0x021EEF3C
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0]
	bl sub_021F0670
	pop {r3, pc}
	thumb_func_end ovy137_21eef3c

	thumb_func_start ovy137_21eef4c
ovy137_21eef4c: ; 0x021EEF4C
	push {r4, lr}
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021F00A4
	ldr r0, [r4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	bl ovy137_21f05b0
	pop {r4, pc}
	thumb_func_end ovy137_21eef4c

	thumb_func_start ovy137_21eef68
ovy137_21eef68: ; 0x021EEF68
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0xc]
	add r1, r4, #0
	bl ovy137_21f00ac
	pop {r4, pc}
	thumb_func_end ovy137_21eef68

	thumb_func_start ovy137_21eef7c
ovy137_21eef7c: ; 0x021EEF7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _021EEFBC ; =0x00000293
	ldr r3, _021EEFC0 ; =0x021F58A0
	str r1, [sp]
	mov r1, #0x2c
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4, #0x18]
	ldr r0, [r5, #8]
	str r0, [r4, #0x20]
	ldr r0, [r5, #4]
	str r0, [r4, #0x1c]
	bl sub_0202D608
	add r0, r4, #0
	bl sub_021EEFFC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021EEFBC: .word 0x00000293
_021EEFC0: .word 0x021F58A0
	thumb_func_end ovy137_21eef7c

	thumb_func_start ovy137_21eefc4
ovy137_21eefc4: ; 0x021EEFC4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl sub_0202D608
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21eefc4

	thumb_func_start ovy137_21eefd8
ovy137_21eefd8: ; 0x021EEFD8
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x24]
	add r1, r2, #1
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x14]
	cmp r2, r1
	bls _021EEFF6
	bl ovy137_21ef004
	add r0, r4, #0
	bl ovy137_21ef0dc
	mov r0, #0
	str r0, [r4, #0x24]
_021EEFF6:
	pop {r4, pc}
	thumb_func_end ovy137_21eefd8

	thumb_func_start sub_021EEFF8
sub_021EEFF8: ; 0x021EEFF8
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021EEFF8

	thumb_func_start sub_021EEFFC
sub_021EEFFC: ; 0x021EEFFC
	mov r1, #1
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EEFFC

	thumb_func_start ovy137_21ef004
ovy137_21ef004: ; 0x021EF004
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	bl sub_0203802C
	cmp r0, #0
	bls _021EF070
_021EF018:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #4]
	bl sub_02038060
	add r4, r0, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_020370EC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021EF05E
	cmp r7, #0
	beq _021EF05E
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_020373EC
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #0x10]
	add r1, r4, #0
	mov r2, #2
	add r3, r7, #0
	blx r6
	cmp r0, #0
	bne _021EF05E
	add r0, r4, #0
	mov r1, #0x1c
	add r2, r7, #0
	bl sub_020373EC
_021EF05E:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	bl sub_0203802C
	ldr r1, [sp, #4]
	cmp r1, r0
	blo _021EF018
_021EF070:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	bl sub_0203802C
	cmp r0, #0
	bls _021EF0D6
_021EF07E:
	ldr r0, [r5, #0x1c]
	ldr r1, [sp]
	bl sub_02038060
	add r4, r0, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_020370EC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021EF0C4
	cmp r7, #0
	beq _021EF0C4
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_020373EC
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #0x10]
	add r1, r4, #0
	mov r2, #2
	add r3, r7, #0
	blx r6
	cmp r0, #0
	bne _021EF0C4
	add r0, r4, #0
	mov r1, #0x1c
	add r2, r7, #0
	bl sub_020373EC
_021EF0C4:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	bl sub_0203802C
	ldr r1, [sp]
	cmp r1, r0
	blo _021EF07E
_021EF0D6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef004

	thumb_func_start ovy137_21ef0dc
ovy137_21ef0dc: ; 0x021EF0DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021EF122
	ldr r0, [r5, #0x20]
	mov r4, #0
	bl sub_02037ED4
	cmp r0, #0
	bls _021EF11E
	mov r7, #1
_021EF0F4:
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl sub_02037F04
	add r6, r0, #0
	bl sub_02037A90
	cmp r0, #0
	bne _021EF112
	add r1, r6, #0
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #0x10]
	add r2, r7, #0
	mov r3, #2
	blx r6
_021EF112:
	ldr r0, [r5, #0x20]
	add r4, r4, #1
	bl sub_02037ED4
	cmp r4, r0
	blo _021EF0F4
_021EF11E:
	mov r0, #0
	str r0, [r5, #0x28]
_021EF122:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef0dc

	thumb_func_start ovy137_21ef124
ovy137_21ef124: ; 0x021EF124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _021EF1A0 ; =0x000003B6
	str r3, [sp, #4]
	str r1, [sp]
	add r7, r2, #0
	ldr r1, _021EF1A4 ; =0x00000B24
	ldr r3, _021EF1A8 ; =0x021F58A0
	mov r2, #1
	add r4, r0, #0
	bl sub_0203A1FC
	add r6, r0, #0
	ldr r0, _021EF1A4 ; =0x00000B24
	ldr r1, _021EF1A4 ; =0x00000B24
	sub r0, #0x14
	str r7, [r6, r0]
	ldr r0, _021EF1A4 ; =0x00000B24
	add r7, r6, #0
	sub r0, #0x10
	str r5, [r6, r0]
	ldr r0, [sp, #4]
	sub r1, #0xc
	str r0, [r6, r1]
	ldr r0, _021EF1A4 ; =0x00000B24
	ldr r1, [sp, #0x20]
	sub r0, #8
	str r1, [r6, r0]
	ldr r0, _021EF1A4 ; =0x00000B24
	ldr r1, [sp, #0x24]
	sub r0, r0, #4
	str r1, [r6, r0]
	mov r5, #0
	add r7, #0xc0
_021EF16A:
	mov r0, #0x58
	mul r0, r5
	add r0, r7, r0
	add r1, r4, #0
	bl sub_021EF388
	add r5, r5, #1
	cmp r5, #0x1e
	blt _021EF16A
	ldr r7, _021EF1AC ; =0x021F52E6
	mov r5, #0
_021EF180:
	ldr r2, _021EF1B0 ; =0x021F52DA
	lsl r3, r5, #1
	ldrh r1, [r7, r3]
	ldrh r2, [r2, r3]
	lsl r0, r5, #5
	add r0, r6, r0
	add r3, r4, #0
	bl ovy137_21efb50
	add r5, r5, #1
	cmp r5, #6
	blt _021EF180
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF1A0: .word 0x000003B6
_021EF1A4: .word 0x00000B24
_021EF1A8: .word 0x021F58A0
_021EF1AC: .word 0x021F52E6
_021EF1B0: .word 0x021F52DA
	thumb_func_end ovy137_21ef124

	thumb_func_start ovy137_21ef1b4
ovy137_21ef1b4: ; 0x021EF1B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_021EF1BA:
	lsl r0, r4, #5
	add r0, r5, r0
	bl sub_021EFB78
	add r4, r4, #1
	cmp r4, #6
	blt _021EF1BA
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc0
	mov r7, #0x58
_021EF1D0:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy137_21ef390
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021EF1D0
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef1b4

	thumb_func_start ovy137_21ef1e8
ovy137_21ef1e8: ; 0x021EF1E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_021812CC
	cmp r0, #0
	bne _021EF20C
	mov r6, #0xb1
	mov r4, #0
	lsl r6, r6, #4
_021EF1FC:
	lsl r0, r4, #5
	ldr r1, [r5, r6]
	add r0, r5, r0
	bl ovy137_21efb84
	add r4, r4, #1
	cmp r4, #6
	blt _021EF1FC
_021EF20C:
	ldr r0, _021EF230 ; =0x00000B14
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc0
	sub r7, r0, #4
_021EF216:
	ldr r1, _021EF230 ; =0x00000B14
	mov r0, #0x58
	mul r0, r4
	ldr r1, [r5, r1]
	ldr r2, [r5, r7]
	add r0, r6, r0
	bl ovy137_21ef3b0
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021EF216
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF230: .word 0x00000B14
	thumb_func_end ovy137_21ef1e8

	thumb_func_start ovy137_21ef234
ovy137_21ef234: ; 0x021EF234
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021EF23C:
	lsl r0, r4, #5
	add r0, r5, r0
	add r1, r6, #0
	bl ovy137_21efc78
	add r4, r4, #1
	cmp r4, #6
	blt _021EF23C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef234

	thumb_func_start ovy137_21ef250
ovy137_21ef250: ; 0x021EF250
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	add r0, r1, #0
	add r1, sp, #8
	add r1, #2
	add r2, sp, #8
	bl ovy137_21efd48
	cmp r0, #0
	beq _021EF2B6
	add r4, r7, #0
	mov r5, #0
	add r4, #0xc0
_021EF26E:
	mov r0, #0x58
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	bl sub_021EF498
	cmp r0, #0
	bne _021EF2B0
	mov r3, #0xb2
	lsl r3, r3, #4
	ldr r0, [r7, r3]
	add r2, r3, #0
	add r4, r7, #0
	str r0, [sp]
	sub r2, #8
	sub r3, r3, #4
	add r4, #0xc0
	ldr r1, [sp, #4]
	ldr r2, [r7, r2]
	ldr r3, [r7, r3]
	add r0, r4, r6
	bl ovy137_21ef418
	add r1, sp, #8
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	add r2, r4, r6
	lsl r0, r0, #5
	add r0, r7, r0
	bl sub_021EFD2C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EF2B0:
	add r5, r5, #1
	cmp r5, #0x1e
	blt _021EF26E
_021EF2B6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef250

	thumb_func_start ovy137_21ef2bc
ovy137_21ef2bc: ; 0x021EF2BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl ovy137_21efd48
	cmp r0, #0
	beq _021EF2F2
	add r0, r5, #0
	add r1, r4, #0
	bl ovy137_21ef340
	add r4, r0, #0
	beq _021EF2F2
	add r1, sp, #0
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	lsl r0, r0, #5
	add r0, r5, r0
	bl sub_021EFD38
	add r0, r4, #0
	bl ovy137_21ef390
_021EF2F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21ef2bc

	thumb_func_start ovy137_21ef2f4
ovy137_21ef2f4: ; 0x021EF2F4
	push {r3, lr}
	bl ovy137_21ef340
	cmp r0, #0
	beq _021EF302
	bl sub_021EF5F0
_021EF302:
	pop {r3, pc}
	thumb_func_end ovy137_21ef2f4

	thumb_func_start ovy137_21ef304
ovy137_21ef304: ; 0x021EF304
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	lsl r2, r5, #0x10
	lsl r1, r1, #0xe
	add r2, r2, r1
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r2, r4, #0x10
	add r1, r2, r1
	str r1, [sp, #8]
	add r1, sp, #0
	add r6, r0, #0
	bl sub_02167308
	lsl r1, r5, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	bl sub_021672B0
	lsl r1, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	bl sub_021672E0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy137_21ef304

	thumb_func_start ovy137_21ef340
ovy137_21ef340: ; 0x021EF340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r1, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, #2
	add r2, sp, #4
	bl ovy137_21efd48
	cmp r0, #0
	beq _021EF382
	ldr r4, [sp]
	mov r5, #0
	add r4, #0xc0
_021EF35E:
	mov r0, #0x58
	add r7, r5, #0
	mul r7, r0
	add r0, r4, r7
	add r1, r6, #0
	bl sub_021EF488
	cmp r0, #0
	beq _021EF37C
	ldr r0, [sp]
	add r0, #0xc0
	str r0, [sp]
	add sp, #8
	add r0, r0, r7
	pop {r3, r4, r5, r6, r7, pc}
_021EF37C:
	add r5, r5, #1
	cmp r5, #0x1e
	blt _021EF35E
_021EF382:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef340

	thumb_func_start sub_021EF388
sub_021EF388: ; 0x021EF388
	ldr r3, _021EF38C ; =ovy137_21ef470
	bx r3
	.align 2, 0
_021EF38C: .word ovy137_21ef470
	thumb_func_end sub_021EF388

	thumb_func_start ovy137_21ef390
ovy137_21ef390: ; 0x021EF390
	push {r4, lr}
	add r4, r0, #0
	bl sub_021EF498
	cmp r0, #0
	beq _021EF3A8
	ldr r0, [r4, #8]
	bl sub_021F110C
	mov r1, #0
	bl sub_02167CAC
_021EF3A8:
	add r0, r4, #0
	bl ovy137_21ef470
	pop {r4, pc}
	thumb_func_end ovy137_21ef390

	thumb_func_start ovy137_21ef3b0
ovy137_21ef3b0: ; 0x021EF3B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021EF498
	cmp r0, #0
	beq _021EF416
	ldr r0, [r5, #8]
	bl sub_021F110C
	ldrb r1, [r5, #0x14]
	add r4, r0, #0
	cmp r1, #0
	beq _021EF3FC
	ldrb r1, [r5, #0x15]
	cmp r1, #0
	bne _021EF3FC
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _021EF3DC
	cmp r1, #1
	beq _021EF3E8
	b _021EF3FC
_021EF3DC:
	mov r1, #0xbe
	bl sub_02166EB0
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
_021EF3E8:
	add r0, r4, #0
	bl sub_0218F01C
	cmp r0, #0
	beq _021EF3FC
	mov r0, #0
	str r0, [r5, #0x54]
	strb r0, [r5, #0x14]
	mov r0, #1
	strb r0, [r5, #0x15]
_021EF3FC:
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _021EF416
	add r0, r5, #0
	bl sub_021EF5B8
	cmp r0, #0
	beq _021EF416
	ldr r0, [r5, #8]
	bl ovy137_21f0f64
	mov r0, #0
	strh r0, [r5, #0x16]
_021EF416:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21ef3b0

	thumb_func_start ovy137_21ef418
ovy137_21ef418: ; 0x021EF418
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy137_21ef470
	add r0, r4, #0
	str r4, [r5, #8]
	bl sub_021F110C
	ldr r1, _021EF464 ; =0x021F5354
	bl sub_021682E8
	ldr r0, [r5, #8]
	mov r1, #0
	bl ovy137_21f1070
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy137_21ef9a8
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_021F10F4
	cmp r0, #1
	beq _021EF458
	cmp r0, #2
	bne _021EF460
_021EF458:
	ldr r0, _021EF468 ; =ovy137_21ef644
	str r0, [r5, #0x18]
	ldr r0, _021EF46C ; =ovy137_21ef984
	str r0, [r5, #0x1c]
_021EF460:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF464: .word 0x021F5354
_021EF468: .word ovy137_21ef644
_021EF46C: .word ovy137_21ef984
	thumb_func_end ovy137_21ef418

	thumb_func_start ovy137_21ef470
ovy137_21ef470: ; 0x021EF470
	push {r4, lr}
	mov r1, #0
	mov r2, #0x58
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, _021EF484 ; =0x0765F573
	str r0, [r4]
	pop {r4, pc}
	nop
_021EF484: .word 0x0765F573
	thumb_func_end ovy137_21ef470

	thumb_func_start sub_021EF488
sub_021EF488: ; 0x021EF488
	ldr r0, [r0, #8]
	cmp r1, r0
	bne _021EF492
	mov r0, #1
	bx lr
_021EF492:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF488

	thumb_func_start sub_021EF498
sub_021EF498: ; 0x021EF498
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EF4A2
	mov r0, #1
	bx lr
_021EF4A2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF498

	thumb_func_start ovy137_21ef4a8
ovy137_21ef4a8: ; 0x021EF4A8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ovy137_21ef4b8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy137_21ef4a8

	thumb_func_start ovy137_21ef4b8
ovy137_21ef4b8: ; 0x021EF4B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	mov r0, #0
	strh r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	add r7, r3, #0
	strh r1, [r5, #0xc]
	strh r2, [r5, #0xe]
	bl sub_021F110C
	add r6, r0, #0
	add r0, r5, #0
	bl ovy137_21ef5c8
	cmp r0, #0
	beq _021EF51A
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _021EF4FA
	cmp r4, #0
	bne _021EF4EA
	mov r4, #0x4d
_021EF4EA:
	add r0, r4, #0
	sub r0, #8
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF512
	b _021EF50E
_021EF4FA:
	cmp r4, #0
	bne _021EF500
	mov r4, #9
_021EF500:
	mov r0, #0x4e
	sub r0, r0, r4
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF512
_021EF50E:
	mov r0, #1
	strh r0, [r5, #0x12]
_021EF512:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	b _021EF596
_021EF51A:
	add r0, r6, #0
	bl sub_021672D8
	add r2, r0, #0
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _021EF55C
	cmp r2, #9
	bge _021EF548
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x4d
	bl ovy137_21ef304
	mov r0, #0x45
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF59A
_021EF542:
	mov r0, #1
	strh r0, [r5, #0x12]
	b _021EF59A
_021EF548:
	add r0, r2, #0
	sub r0, #8
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF55A
	mov r0, #1
	strh r0, [r5, #0x12]
_021EF55A:
	b _021EF58E
_021EF55C:
	cmp r0, #1
	bne _021EF59A
	cmp r2, #0x4d
	ble _021EF57C
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #9
	bl ovy137_21ef304
	mov r0, #0x45
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF59A
	b _021EF542
_021EF57C:
	mov r0, #0x4e
	sub r0, r0, r2
	strh r0, [r5, #0x12]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF58E
	mov r0, #1
	strh r0, [r5, #0x12]
_021EF58E:
	lsl r2, r2, #0x10
	add r0, r6, #0
	add r1, r7, #0
	lsr r2, r2, #0x10
_021EF596:
	bl ovy137_21ef304
_021EF59A:
	ldr r0, [r5, #8]
	mov r1, #1
	bl ovy137_21f1070
	ldr r0, [r5, #8]
	mov r1, #0x26
	mov r2, #1
	bl sub_021F10DC
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021EF5B6
	add r0, r5, #0
	blx r1
_021EF5B6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef4b8

	thumb_func_start sub_021EF5B8
sub_021EF5B8: ; 0x021EF5B8
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021EF5C2
	mov r0, #1
	bx lr
_021EF5C2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF5B8

	thumb_func_start ovy137_21ef5c8
ovy137_21ef5c8: ; 0x021EF5C8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	bl sub_021F110C
	add r5, r0, #0
	bl sub_021672A8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021672D8
	cmp r4, #0
	bne _021EF5EA
	cmp r0, #0
	bne _021EF5EA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF5EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef5c8

	thumb_func_start sub_021EF5F0
sub_021EF5F0: ; 0x021EF5F0
	mov r1, #1
	strh r1, [r0, #0x16]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF5F0

	thumb_func_start ovy137_21ef5f8
ovy137_21ef5f8: ; 0x021EF5F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_021F10F4
	add r4, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0x1f
	mov r2, #0
	bl sub_021F10E8
	cmp r4, #1
	bne _021EF61E
	sub r0, r0, #2
	cmp r0, #1
	bhi _021EF61E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF61E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef5f8

	thumb_func_start ovy137_21ef624
ovy137_21ef624: ; 0x021EF624
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021F110C
	ldrh r1, [r4, #0xe]
	bl sub_0215E4B0
	mov r1, #4
	tst r0, r1
	beq _021EF63E
	mov r0, #1
	pop {r4, pc}
_021EF63E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef624

	thumb_func_start ovy137_21ef644
ovy137_21ef644: ; 0x021EF644
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0x22
	mov r2, #0
	mov r6, #0
	bl sub_021F10E8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_021F10F4
	cmp r0, #1
	bne _021EF676
	ldr r0, [r5, #8]
	mov r1, #0x1f
	add r2, r6, #0
	bl sub_021F10E8
	sub r0, r0, #2
	cmp r0, #1
	bhi _021EF676
	mov r4, #7
_021EF676:
	mov r7, #0x12
	ldrsh r1, [r5, r7]
	add r0, r1, #0
	mul r0, r4
	mov r1, #0x45
	blx sub_0208D65C
	add r1, r5, #0
	mov r2, #0
	add r1, #0x2a
	strb r2, [r1]
	mov r1, #0xf
	strh r2, [r5, #0x20]
	strh r1, [r5, #0x22]
	strh r0, [r5, #0x24]
	bl sub_02043F2C
	mov r1, #0x24
	add r6, r0, #0
	ldrsh r0, [r5, r7]
	ldrsh r1, [r5, r1]
	blx sub_0208D65C
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #5
	mov r3, #0
	blx sub_0208D60C
	add r0, r4, #2
	sub r0, r0, r1
	strh r0, [r5, #0x28]
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EF6C4
	mov r0, #1
	strh r0, [r5, #0x28]
_021EF6C4:
	mov r0, #0x12
	ldrsh r1, [r5, r0]
	mov r0, #0x28
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	strh r0, [r5, #0x26]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef644

	thumb_func_start ovy137_21ef6d4
ovy137_21ef6d4: ; 0x021EF6D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _021EF70A
	mov r0, #0
	str r0, [r4, #4]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy137_21f1070
	ldr r0, [r4, #8]
	bl sub_021F110C
	mov r1, #0
	mov r2, #0
	bl ovy137_21ef304
	ldr r0, [r4, #8]
	mov r1, #0x26
	mov r2, #0
	bl sub_021F10DC
	mov r0, #0
	pop {r4, pc}
_021EF70A:
	mov r0, #1
	strh r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ovy137_21ef6d4

	thumb_func_start ovy137_21ef710
ovy137_21ef710: ; 0x021EF710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	add r6, r2, #0
	bl sub_021F110C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy137_21ef624
	cmp r0, #0
	beq _021EF744
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_02166EB0
	add r0, r4, #0
	bl sub_021674B0
	b _021EF790
_021EF744:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy137_21efa68
	cmp r0, #0
	beq _021EF754
	mov r0, #4
_021EF752:
	b _021EF792
_021EF754:
	mov r0, #0x26
	mov r6, #0x12
	ldrsh r1, [r5, r0]
	ldrsh r0, [r5, r6]
	cmp r1, r0
	bne _021EF76C
	add r1, r5, #0
	add r1, #0x2a
	mov r0, #0
	strb r0, [r1]
	mov r0, #3
	b _021EF752
_021EF76C:
	ldrh r0, [r5, #0xe]
	ldrh r1, [r5, #0xc]
	bl sub_0218EFBC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02166EB0
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	bl sub_02167080
	add r0, r4, #0
	bl sub_021674B0
	ldrsh r0, [r5, r6]
	sub r0, r0, #1
	strh r0, [r5, #0x12]
_021EF790:
	mov r0, #2
_021EF792:
	strh r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef710

	thumb_func_start ovy137_21ef798
ovy137_21ef798: ; 0x021EF798
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021F110C
	add r5, r0, #0
	bl sub_0218F01C
	cmp r0, #0
	beq _021EF7B6
	add r0, r5, #0
	bl sub_021674BC
	mov r0, #0
	strh r0, [r4, #0x10]
_021EF7B6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef798

	thumb_func_start ovy137_21ef7bc
ovy137_21ef7bc: ; 0x021EF7BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021F110C
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #5
	bls _021EF7D4
	b _021EF8E0
_021EF7D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF7E0: ; jump table
	.short _021EF7EC - _021EF7E0 - 2 ; case 0
	.short _021EF820 - _021EF7E0 - 2 ; case 1
	.short _021EF83E - _021EF7E0 - 2 ; case 2
	.short _021EF866 - _021EF7E0 - 2 ; case 3
	.short _021EF894 - _021EF7E0 - 2 ; case 4
	.short _021EF8B2 - _021EF7E0 - 2 ; case 5
_021EF7EC:
	bl sub_02043F2C
	mov r1, #0
	lsr r0, r0, #0x1f
	lsl r1, r1, #1
	orr r1, r0
	beq _021EF7FE
	mov r1, #2
	b _021EF800
_021EF7FE:
	mov r1, #3
_021EF800:
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x2b
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02166EB0
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
_021EF820:
	add r0, r5, #0
	bl sub_0218F01C
	cmp r0, #0
	beq _021EF83A
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	b _021EF83E
_021EF83A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF83E:
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x20]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _021EF862
	mov r0, #0
	strh r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	b _021EF866
_021EF862:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF866:
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r1, #2
	cmp r0, #3
	beq _021EF874
	mov r1, #3
_021EF874:
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x2b
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02166EB0
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
_021EF894:
	add r0, r5, #0
	bl sub_0218F01C
	cmp r0, #0
	beq _021EF8AE
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	b _021EF8B2
_021EF8AE:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF8B2:
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	add r0, r1, #1
	strh r0, [r4, #0x20]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _021EF8DC
	add r0, r4, #0
	mov r2, #0
	add r0, #0x2a
	strb r2, [r0]
	strh r2, [r4, #0x20]
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	strh r0, [r4, #0x26]
	strh r2, [r4, #0x10]
	b _021EF8E0
_021EF8DC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF8E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21ef7bc

	thumb_func_start ovy137_21ef8e4
ovy137_21ef8e4: ; 0x021EF8E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021F110C
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r5, r0, #0
	cmp r1, #3
	bhi _021EF97E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF906: ; jump table
	.short _021EF90E - _021EF906 - 2 ; case 0
	.short _021EF938 - _021EF906 - 2 ; case 1
	.short _021EF956 - _021EF906 - 2 ; case 2
	.short _021EF96E - _021EF906 - 2 ; case 3
_021EF90E:
	bl sub_021674BC
	add r0, r5, #0
	bl sub_021674E8
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x3c]
	bl sub_02166EB0
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
_021EF938:
	add r0, r5, #0
	bl sub_0218F01C
	cmp r0, #0
	beq _021EF952
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	b _021EF956
_021EF952:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF956:
	mov r0, #1
	strb r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r1, #0
	str r1, [r4, #0x54]
	strb r1, [r4, #0x15]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
_021EF96E:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _021EF97A
	mov r0, #2
	strh r0, [r4, #0x10]
	b _021EF97E
_021EF97A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF97E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21ef8e4

	thumb_func_start ovy137_21ef984
ovy137_21ef984: ; 0x021EF984
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021EF9A4 ; =0x021F5368
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
_021EF98E:
	ldrh r3, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	add r2, r6, #0
	blx r3
	cmp r0, #1
	beq _021EF98E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9A4: .word 0x021F5368
	thumb_func_end ovy137_21ef984

	thumb_func_start ovy137_21ef9a8
ovy137_21ef9a8: ; 0x021EF9A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0x13
	mov r2, #0
	str r3, [sp, #8]
	mov r4, #0
	bl sub_021F10E8
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	bl sub_021F110C
	bl sub_021672D8
	add r6, r5, #0
	add r6, #0x4e
_021EF9E0:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_02038860
	add r7, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021EFA54
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02039798
	mov r1, #0
	bl sub_020397CC
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _021EFA54
	ldr r0, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_020395F8
	add r7, r0, #0
	bl sub_02043F2C
	mov r1, #0
	mov r2, #7
	mov r3, #0
	blx sub_0208D60C
	add r0, r7, r1
	add r1, r5, #0
	add r1, #0x4e
	ldrh r1, [r1]
	lsr r2, r4, #0x1f
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x2c]
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021EFA40
	mov r0, #3
	b _021EFA42
_021EFA40:
	mov r0, #2
_021EFA42:
	add r1, r5, #0
	add r1, #0x4e
	ldrh r1, [r1]
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, #0x3c]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_021EFA54:
	add r4, r4, #1
	cmp r4, #8
	blt _021EF9E0
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	add r5, #0x50
	strh r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21ef9a8

	thumb_func_start ovy137_21efa68
ovy137_21efa68: ; 0x021EFA68
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl sub_021F110C
	add r2, sp, #0
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, #2
	add r3, sp, #0
	bl sub_0219AC64
	add r0, r6, #0
	bl sub_021672D8
	add r1, sp, #0
	mov r4, #0
	ldrsh r2, [r1, r4]
	add r1, r2, #0
	sub r1, #0x14
	cmp r1, r0
	bge _021EFAA0
	add r1, r2, #7
	cmp r0, r1
	blt _021EFAA6
_021EFAA0:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EFAA6:
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	ble _021EFAE8
_021EFAB0:
	add r0, r6, #0
	bl sub_021672D8
	lsl r1, r4, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, r0
	bne _021EFADC
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, r4
	beq _021EFADC
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	add r5, #0x50
	add sp, #8
	strh r4, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EFADC:
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EFAB0
_021EFAE8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21efa68
_021EFAF0:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy137_21efaf4
ovy137_21efaf4: ; 0x021EFAF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021670FC
	add r6, r0, #0
	bl sub_02166FAC
	mov r1, #1
	str r0, [sp]
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_021F05AC
	add r7, r0, #0
	ldr r0, [r4]
	bl sub_021F059C
	add r1, r5, #0
	bl ovy137_21f15cc
	add r1, r0, #0
	add r0, r7, #0
	bl ovy137_21ef340
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021EFB46
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EFB46
	ldr r0, [sp]
	bl sub_021804F0
	add r2, r0, #0
	ldr r3, [r4, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	blx r3
_021EFB46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21efaf4
_021EFB48:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy137_21efb50
ovy137_21efb50: ; 0x021EFB50
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	strh r4, [r5, #0x1e]
	strh r6, [r5, #0x1c]
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0xef
	mov r3, #0
	blx sub_0208D60C
	add r0, r1, #1
	strh r0, [r5, #0x18]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21efb50

	thumb_func_start sub_021EFB78
sub_021EFB78: ; 0x021EFB78
	ldr r3, _021EFB80 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r3
	.align 2, 0
_021EFB80: .word MI_CpuFill8
	thumb_func_end sub_021EFB78

	thumb_func_start ovy137_21efb84
ovy137_21efb84: ; 0x021EFB84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r6, #0
	bl sub_0219A6A0
	add r7, r0, #0
	bl sub_021672D8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021672A8
	ldrh r1, [r5, #0x1e]
	cmp r0, r1
	bne _021EFBCC
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _021EFBBA
	sub r4, #0x4d
	lsl r0, r4, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021EFBCC
	pop {r3, r4, r5, r6, r7, pc}
_021EFBBA:
	cmp r0, #1
	bne _021EFBCC
	sub r4, #9
	lsl r0, r4, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bls _021EFC76
_021EFBCC:
	mov r4, #0
_021EFBCE:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EFBE0
	bl sub_021EF5B8
	cmp r0, #0
	bne _021EFBE0
	add r6, r6, #1
_021EFBE0:
	add r4, r4, #1
	cmp r4, #5
	blt _021EFBCE
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	beq _021EFC76
	cmp r6, #1
	bhs _021EFC76
	ldrh r0, [r5, #0x16]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021EFC1E
	add r4, r5, #0
	add r4, #0x16
	cmp r0, #0
	bne _021EFC1E
	mov r6, #5
_021EFC04:
	ldrh r0, [r4]
	add r1, r6, #0
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	blx sub_0208D65C
	strh r1, [r4]
	ldrh r0, [r5, #0x16]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EFC04
_021EFC1E:
	bl ovy137_21ef5f8
	cmp r0, #0
	beq _021EFC2A
	mov r0, #0
	strh r0, [r5, #0x18]
_021EFC2A:
	mov r0, #0x18
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	strh r0, [r5, #0x18]
	cmp r1, #0
	bgt _021EFC76
	ldrh r0, [r5, #0x16]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021EF5B8
	cmp r0, #0
	beq _021EFC66
	ldrh r0, [r5, #0x16]
	ldrh r2, [r5, #0x1c]
	ldrh r3, [r5, #0x1e]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc
	bl ovy137_21ef4a8
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0xef
	mov r3, #0
	blx sub_0208D60C
	add r0, r1, #1
	strh r0, [r5, #0x18]
_021EFC66:
	ldrh r0, [r5, #0x16]
	mov r1, #5
	add r0, r0, #1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x16]
	blx sub_0208D65C
	strh r1, [r5, #0x16]
_021EFC76:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21efb84

	thumb_func_start ovy137_21efc78
ovy137_21efc78: ; 0x021EFC78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r5, #0
	str r1, [sp, #4]
	mov r4, #0
	add r7, #0x16
_021EFC86:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021EFD20
	bl sub_021EF498
	cmp r0, #0
	beq _021EFD20
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EFCE6
	ldr r0, [r5, r6]
	bl ovy137_21ef5c8
	cmp r0, #0
	beq _021EFD20
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _021EFCBE
	bl sub_02043F2C
	lsr r1, r0, #0x1d
	mov r0, #0
	lsl r0, r0, #3
	orr r0, r1
	add r0, #8
	mul r0, r4
	b _021EFCD2
_021EFCBE:
	bl sub_02043F2C
	lsr r2, r0, #0x1d
	mov r0, #0
	lsl r0, r0, #3
	mov r1, #4
	orr r0, r2
	sub r1, r1, r4
	add r0, #8
	mul r0, r1
_021EFCD2:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrh r2, [r5, #0x1c]
	ldrh r3, [r5, #0x1e]
	ldr r0, [r5, r6]
	mov r1, #0xc
	bl ovy137_21ef4b8
	b _021EFD12
_021EFCE6:
	cmp r0, #1
	bne _021EFD20
	ldr r0, [r5, r6]
	bl ovy137_21ef5c8
	cmp r0, #0
	bne _021EFD20
	ldrh r2, [r5, #0x1c]
	ldrh r3, [r5, #0x1e]
	ldr r0, [r5, r6]
	mov r1, #0xc
	bl ovy137_21ef4a8
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0xef
	mov r3, #0
	blx sub_0208D60C
	add r0, r1, #1
	strh r0, [r5, #0x18]
_021EFD12:
	add r0, r4, #1
	strh r0, [r5, #0x16]
	ldrh r0, [r7]
	mov r1, #5
	blx sub_0208D65C
	strh r1, [r7]
_021EFD20:
	add r4, r4, #1
	cmp r4, #5
	blt _021EFC86
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21efc78

	thumb_func_start sub_021EFD2C
sub_021EFD2C: ; 0x021EFD2C
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldrh r1, [r0, #0x1a]
	add r1, r1, #1
	strh r1, [r0, #0x1a]
	bx lr
	thumb_func_end sub_021EFD2C

	thumb_func_start sub_021EFD38
sub_021EFD38: ; 0x021EFD38
	ldrh r2, [r0, #0x1a]
	lsl r1, r1, #2
	sub r2, r2, #1
	strh r2, [r0, #0x1a]
	mov r2, #0
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EFD38

	thumb_func_start ovy137_21efd48
ovy137_21efd48: ; 0x021EFD48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_021F1110
	add r5, r0, #0
	bl sub_021F1988
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021F198C
	lsl r0, r0, #0x10
	ldr r1, _021EFDA0 ; =0x021F53FC
	lsr r6, r0, #0x10
	mov r5, #0
	mov r7, #0xc
_021EFD6C:
	add r3, r5, #0
	mul r3, r7
	ldr r0, [r1, r3]
	add r2, r1, r3
	cmp r4, r0
	bne _021EFD94
	ldrh r0, [r2, #4]
	cmp r6, r0
	bne _021EFD94
	ldr r0, _021EFDA4 ; =0x021F5402
	ldrh r1, [r0, r3]
	ldr r0, [sp]
	strh r1, [r0]
	ldr r0, _021EFDA8 ; =0x021F5404
	ldr r1, [r0, r3]
	ldr r0, [sp, #4]
	add sp, #8
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EFD94:
	add r5, r5, #1
	cmp r5, #0x1c
	blo _021EFD6C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EFDA0: .word 0x021F53FC
_021EFDA4: .word 0x021F5402
_021EFDA8: .word 0x021F5404
	thumb_func_end ovy137_21efd48

	thumb_func_start ovy137_21efdac
ovy137_21efdac: ; 0x021EFDAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _021EFE14 ; =0x00000A34
	str r3, [sp, #4]
	add r5, r2, #0
	str r1, [sp]
	ldr r3, _021EFE18 ; =0x021F58A0
	mov r1, #0xfc
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r7, r0, #0
	str r4, [r7, #0x20]
	str r5, [r7, #0x24]
	ldr r0, [sp, #4]
	mov r1, #3
	str r0, [r7, #0x28]
	ldr r0, [sp, #0x20]
	mov r2, #0xcb
	str r0, [r7, #0x2c]
	ldr r0, [sp, #0x24]
	add r3, r6, #0
	str r0, [r7, #4]
	mov r0, #0
	mov r5, #0
	bl sub_0204875C
	add r1, r7, #0
	add r1, #0xf8
	add r4, r7, #0
	str r0, [r1]
	add r4, #0x34
_021EFDF0:
	mov r0, #0xc
	mul r0, r5
	lsl r1, r5, #0x10
	add r0, r4, r0
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ovy137_21f022c
	add r5, r5, #1
	cmp r5, #0x10
	blt _021EFDF0
	add r0, r7, #0
	bl ovy137_21f00d8
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFE14: .word 0x00000A34
_021EFE18: .word 0x021F58A0
	thumb_func_end ovy137_21efdac

	thumb_func_start ovy137_21efe1c
ovy137_21efe1c: ; 0x021EFE1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r7, #0
	mov r5, #0
	add r4, #0x34
_021EFE26:
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	ldr r1, [r7, #0x20]
	add r0, r4, r6
	bl ovy137_21f03f8
	add r0, r4, r6
	bl ovy137_21f024c
	add r5, r5, #1
	cmp r5, #0x10
	blt _021EFE26
	add r0, r7, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl GFL_MsgDataFree
	add r0, r7, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21efe1c

	thumb_func_start ovy137_21efe54
ovy137_21efe54: ; 0x021EFE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	mov r6, #0
	cmp r0, #0
	bne _021EFE66
	b _021F0076
_021EFE66:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _021EFE80
	add r0, r1, #0
	bl sub_021812CC
	cmp r0, #0
	bne _021EFE7C
	b _021EFE86
_021EFE7C:
	mov r6, #1
	b _021EFE88
_021EFE80:
	ldr r0, [r5]
	cmp r0, #0
	beq _021EFE88
_021EFE86:
	mov r4, #1
_021EFE88:
	cmp r4, #0
	bne _021EFE8E
	b _021F006C
_021EFE8E:
	ldrh r0, [r5, #0x1e]
	cmp r0, #0
	beq _021EFEA0
	cmp r0, #1
	beq _021EFEF8
	cmp r0, #2
	bne _021EFE9E
	b _021F001C
_021EFE9E:
	b _021F004E
_021EFEA0:
	mov r0, #8
	ldrsh r1, [r5, r0]
	mov r6, #0xa
	add r0, r1, #1
	strh r0, [r5, #8]
	ldrsh r0, [r5, r6]
	cmp r1, r0
	blt _021EFF18
	add r0, r5, #0
	bl ovy137_21f00d8
	mov r4, #0
	strh r4, [r5, #0x14]
	bl sub_02043F2C
	lsr r0, r0, #0x1f
	lsl r1, r4, #1
	orr r1, r0
	add r0, r1, #1
	strh r0, [r5, #0x16]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	strh r4, [r5, #0xc]
	cmp r0, #0
	bne _021EFEEA
	mov r0, #0x1e
	strh r0, [r5, #0xe]
	bl sub_02043F2C
	add r1, r4, #0
	mov r2, #3
	add r3, r4, #0
	blx sub_0208D60C
	str r1, [r5, #0x10]
	b _021EFEEC
_021EFEEA:
	strh r6, [r5, #0xe]
_021EFEEC:
	mov r0, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0x1e]
	add r0, r0, #1
_021EFEF4:
	strh r0, [r5, #0x1e]
	b _021F004E
_021EFEF8:
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	add r0, r1, #1
	strh r0, [r5, #0xc]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021EFF18
	add r0, r5, #0
	bl ovy137_21f0164
	mov r6, #0
	str r0, [sp, #0x10]
	strh r6, [r5, #0xc]
	cmp r0, #0
	bne _021EFF1A
_021EFF18:
	b _021F004E
_021EFF1A:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _021EFF28
	cmp r0, #1
	beq _021EFF3A
	cmp r0, #2
	beq _021EFF74
_021EFF28:
	bl sub_02043F2C
	mov r1, #0
	lsr r0, r0, #0x1c
	lsl r1, r1, #4
	orr r1, r0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	b _021EFFBE
_021EFF3A:
	add r7, r6, #0
_021EFF3C:
	bl sub_02043F2C
	lsr r0, r0, #0x1c
	lsl r1, r7, #4
	orr r1, r0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	add r6, r6, #1
	cmp r0, #0x1e
	blo _021EFF60
	ldrh r0, [r5, #0x16]
	add sp, #0x14
	sub r0, r0, #1
	strh r0, [r5, #0x16]
	mov r0, #2
	strh r0, [r5, #0x1e]
	pop {r4, r5, r6, r7, pc}
_021EFF60:
	add r2, r5, #0
	add r2, #0xf4
	ldrh r1, [r5, #0x18]
	ldr r2, [r2]
	add r0, r4, #0
	bl ovy137_21f0280
	cmp r0, #0
	bne _021EFF3C
	b _021EFFBE
_021EFF74:
	add r7, r6, #0
_021EFF76:
	bl sub_02043F2C
	lsr r0, r0, #0x1c
	lsl r1, r7, #4
	orr r1, r0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	add r6, r6, #1
	cmp r0, #0x1e
	blo _021EFF9A
	ldrh r0, [r5, #0x16]
	add sp, #0x14
	sub r0, r0, #1
	strh r0, [r5, #0x16]
	mov r0, #2
	strh r0, [r5, #0x1e]
	pop {r4, r5, r6, r7, pc}
_021EFF9A:
	add r2, r5, #0
	add r2, #0xf4
	ldrh r1, [r5, #0x18]
	ldr r2, [r2]
	add r0, r4, #0
	bl ovy137_21f0280
	cmp r0, #0
	bne _021EFF76
	add r2, r5, #0
	add r2, #0xf4
	ldrh r1, [r5, #0x1a]
	ldr r2, [r2]
	add r0, r4, #0
	bl ovy137_21f0280
	cmp r0, #0
	bne _021EFF76
_021EFFBE:
	ldrh r0, [r5, #0x14]
	lsl r0, r0, #1
	add r0, r5, r0
	strh r4, [r0, #0x18]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #1
	bne _021EFFE0
	bl sub_02043F2C
	mov r1, #0
	lsr r0, r0, #0x1e
	lsl r1, r1, #2
	orr r1, r0
	add r0, r1, #4
	str r0, [r5, #0x10]
_021EFFE0:
	ldr r0, [r5, #0x2c]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r1, #0x34
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	str r0, [sp, #0xc]
	mov r0, #0xc
	mul r0, r4
	add r0, r1, r0
	ldr r1, [r5, #0x20]
	ldr r3, [r5, #0x28]
	bl ovy137_21f02f0
	ldrh r1, [r5, #0x14]
	add r0, r1, #1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	blo _021F004E
	mov r0, #2
	b _021EFEF4
_021F001C:
	ldrh r0, [r5, #0x16]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _021F0044
	add r7, r5, #0
	add r7, #0x34
_021F002A:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r1, [r0, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r0, r7, r0
	bl sub_021F041C
	and r6, r0
	ldrh r0, [r5, #0x16]
	add r4, r4, #1
	cmp r4, r0
	blt _021F002A
_021F0044:
	cmp r6, #0
	beq _021F004E
	mov r0, #0
	strh r0, [r5, #0x1e]
	str r0, [r5]
_021F004E:
	add r6, r5, #0
	mov r4, #0
	add r6, #0x34
	mov r7, #0xc
_021F0056:
	add r0, r4, #0
	mul r0, r7
	ldr r1, [r5, #0x20]
	add r0, r6, r0
	bl ovy137_21f0264
	add r4, r4, #1
	cmp r4, #0x10
	blt _021F0056
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F006C:
	cmp r6, #0
	beq _021F0076
	add r0, r5, #0
	bl ovy137_21f007c
_021F0076:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21efe54

	thumb_func_start ovy137_21f007c
ovy137_21f007c: ; 0x021F007C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x34
	mov r7, #0xc
_021F0088:
	add r0, r4, #0
	mul r0, r7
	ldr r1, [r5, #0x20]
	add r0, r6, r0
	bl ovy137_21f03f8
	add r4, r4, #1
	cmp r4, #0x10
	blt _021F0088
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f007c

	thumb_func_start sub_021F009C
sub_021F009C: ; 0x021F009C
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021F009C

	thumb_func_start sub_021F00A4
sub_021F00A4: ; 0x021F00A4
	mov r1, #1
	add r0, #0xf4
	str r1, [r0]
	bx lr
	thumb_func_end sub_021F00A4

	thumb_func_start ovy137_21f00ac
ovy137_21f00ac: ; 0x021F00AC
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0xf4
	ldr r2, [r2]
	cmp r2, #1
	bne _021F00D6
	cmp r1, #0
	beq _021F00CE
	mov r0, #0
	strh r0, [r4, #0x1e]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	strh r0, [r4, #8]
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021F00CE:
	bl ovy137_21f007c
	mov r0, #0
	str r0, [r4]
_021F00D6:
	pop {r4, pc}
	thumb_func_end ovy137_21f00ac

	thumb_func_start ovy137_21f00d8
ovy137_21f00d8: ; 0x021F00D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, _021F0160 ; =0x021F5334
	mov r2, #4
	mov r4, #0
	bl ovy137_21f1ae0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	add r6, sp, #4
	mov r7, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F00FE:
	ldr r0, [r5, #0x24]
	ldr r2, _021F0160 ; =0x021F5334
	add r1, r6, #0
	add r3, r7, #0
	bl ovy137_21f1b0c
	cmp r0, #0
	beq _021F011A
	bl ovy137_21f195c
	cmp r0, #0
	bne _021F00FE
	add r4, r4, #1
	b _021F00FE
_021F011A:
	cmp r4, #0x16
	blo _021F0126
	mov r0, #0x3c
	add sp, #8
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021F0126:
	cmp r4, #0x10
	blo _021F0132
	mov r0, #0x78
	add sp, #8
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021F0132:
	cmp r4, #0xa
	blo _021F013E
	mov r0, #0xb4
	add sp, #8
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021F013E:
	cmp r4, #4
	blo _021F014A
	mov r0, #0xf0
	add sp, #8
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021F014A:
	cmp r4, #1
	blo _021F0158
	mov r0, #0x5a
	lsl r0, r0, #2
	add sp, #8
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021F0158:
	mov r0, #0
	strh r0, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0160: .word 0x021F5334
	thumb_func_end ovy137_21f00d8

	thumb_func_start ovy137_21f0164
ovy137_21f0164: ; 0x021F0164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x24]
	ldr r1, _021F0220 ; =0x021F5344
	mov r2, #4
	mov r5, #0
	bl ovy137_21f1ae0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	ldr r7, _021F0224 ; =0x021F5948
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F0188:
	ldr r0, [r6, #0x24]
	ldr r2, _021F0220 ; =0x021F5344
	add r1, sp, #4
	mov r3, #4
	bl ovy137_21f1b0c
	add r4, r0, #0
	beq _021F01BA
	bl ovy137_21f195c
	cmp r0, #0
	bne _021F0188
	add r0, r4, #0
	bl sub_021F1988
	lsl r1, r5, #2
	str r0, [r7, r1]
	add r0, r4, #0
	bl sub_021F198C
	lsl r2, r5, #1
	ldr r1, _021F0228 ; =ovy137_21f5900
	add r5, r5, #1
	strh r0, [r1, r2]
	b _021F0188
_021F01BA:
	cmp r5, #0
	bne _021F01C4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F01C4:
	cmp r5, #1
	bne _021F01DA
	ldr r2, _021F0228 ; =ovy137_21f5900
	ldr r1, _021F0224 ; =0x021F5948
	ldrh r2, [r2]
	ldr r0, [r6, #0x24]
	ldr r1, [r1]
	bl sub_021F1B94
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F01DA:
	mov r4, #0
	bl sub_02043F2C
	add r1, r0, #0
	cmp r5, #0
	beq _021F01F0
	add r1, r4, #0
	add r2, r5, #0
	add r3, r4, #0
	blx sub_0208D60C
_021F01F0:
	mov r2, #0
	cmp r5, #0
	ble _021F021A
_021F01F6:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, r1
	bne _021F0214
	ldr r1, _021F0224 ; =0x021F5948
	lsl r3, r2, #2
	ldr r1, [r1, r3]
	lsl r3, r2, #1
	ldr r2, _021F0228 ; =ovy137_21f5900
	ldr r0, [r6, #0x24]
	ldrh r2, [r2, r3]
	bl sub_021F1B94
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F0214:
	add r2, r2, #1
	cmp r2, r5
	blt _021F01F6
_021F021A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0220: .word 0x021F5344
_021F0224: .word 0x021F5948
_021F0228: .word 0x021f5900
	thumb_func_end ovy137_21f0164

	thumb_func_start ovy137_21f022c
ovy137_21f022c: ; 0x021F022C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0x21
	add r1, r6, #0
	bl sub_02048530
	str r0, [r5]
	strh r4, [r5, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21f022c

	thumb_func_start ovy137_21f024c
ovy137_21f024c: ; 0x021F024C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl GFL_StrBufFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f024c

	thumb_func_start ovy137_21f0264
ovy137_21f0264: ; 0x021F0264
	push {r3, lr}
	ldrh r2, [r0, #4]
	cmp r2, #0
	beq _021F027E
	mov r2, #0xa
	ldrsh r3, [r0, r2]
	add r3, r3, #1
	strh r3, [r0, #0xa]
	ldrsh r2, [r0, r2]
	cmp r2, #0x3c
	blt _021F027E
	bl ovy137_21f03f8
_021F027E:
	pop {r3, pc}
	thumb_func_end ovy137_21f0264

	thumb_func_start ovy137_21f0280
ovy137_21f0280: ; 0x021F0280
	push {r4, r5}
	mov r3, #0xe
	ldr r4, _021F02E4 ; =0x021F5324
	cmp r2, #1
	bne _021F028E
	ldr r4, _021F02E8 ; =0x021F5314
	add r3, r3, #2
_021F028E:
	ldr r5, _021F02EC ; =0x021F5304
	ldrb r2, [r4, r1]
	ldrb r4, [r4, r0]
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r5, r0, #4
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	cmp r5, r1
	blt _021F02A6
	mov r5, #1
	b _021F02A8
_021F02A6:
	mov r5, #0
_021F02A8:
	add r1, r1, #4
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	cmp r0, r1
	bgt _021F02B6
	mov r0, #1
	b _021F02B8
_021F02B6:
	mov r0, #0
_021F02B8:
	add r1, r3, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	cmp r4, r1
	bgt _021F02C6
	mov r1, #1
	b _021F02C8
_021F02C6:
	mov r1, #0
_021F02C8:
	add r3, r3, r4
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	cmp r3, r2
	blt _021F02D6
	mov r2, #1
	b _021F02D8
_021F02D6:
	mov r2, #0
_021F02D8:
	and r1, r2
	and r0, r1
	and r0, r5
	pop {r4, r5}
	bx lr
	nop
_021F02E4: .word 0x021F5324
_021F02E8: .word 0x021F5314
_021F02EC: .word 0x021F5304
	thumb_func_end ovy137_21f0280

	thumb_func_start ovy137_21f02f0
ovy137_21f02f0: ; 0x021F02F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r1, #0
	add r1, r2, #0
	add r4, r0, #0
	mov r6, #1
	mov r5, #0
	ldr r2, [sp, #0xa0]
	add r0, r3, #0
	strh r6, [r4, #4]
	strh r5, [r4, #0xa]
	cmp r2, #7
	bhi _021F033C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021F0316: ; jump table
	.short _021F0326 - _021F0316 - 2 ; case 0
	.short _021F033C - _021F0316 - 2 ; case 1
	.short _021F0356 - _021F0316 - 2 ; case 2
	.short _021F033C - _021F0316 - 2 ; case 3
	.short _021F036E - _021F0316 - 2 ; case 4
	.short _021F037C - _021F0316 - 2 ; case 5
	.short _021F0396 - _021F0316 - 2 ; case 6
	.short _021F03A4 - _021F0316 - 2 ; case 7
_021F0326:
	add r6, sp, #0x70
	add r0, r1, #0
	mov r1, #5
	add r2, r6, #0
	bl ovy137_21f1968
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_02048614
	b _021F03B0
_021F033C:
	add r5, sp, #0x5c
	add r5, #2
	add r0, r1, #0
	mov r1, #0x58
	add r2, r5, #0
	bl ovy137_21f1968
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_02048614
	mov r5, #1
	b _021F03B0
_021F0356:
	add r5, sp, #0x4c
	add r0, r1, #0
	mov r1, #0x59
	add r2, r5, #0
	bl ovy137_21f1968
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_02048614
	mov r5, #2
	b _021F03B0
_021F036E:
	ldr r0, [sp, #0x98]
	bl sub_02038A18
	add r5, sp, #0x38
	mov r1, #0x58
	add r5, #2
	b _021F0386
_021F037C:
	ldr r0, [sp, #0x98]
	bl sub_02038A18
	mov r1, #0x59
	add r5, sp, #0x28
_021F0386:
	add r2, r5, #0
	bl sub_020370EC
_021F038C:
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_02048614
	b _021F03AE
_021F0396:
	add r5, sp, #0x10
	add r5, #2
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02038F00
	b _021F038C
_021F03A4:
	ldr r0, [sp, #0x9c]
	ldr r2, [r4]
	mov r1, #0x1d
	bl GFL_MsgDataLoadStrbuf
_021F03AE:
	add r5, r6, #0
_021F03B0:
	add r2, sp, #0x10
	ldr r1, [r4]
	add r0, r7, #0
	add r2, #1
	add r3, sp, #0x10
	ldr r6, _021F03EC ; =0x021F5324
	bl sub_02188D2C
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _021F03C8
	ldr r6, _021F03F0 ; =0x021F5314
_021F03C8:
	ldrh r2, [r4, #8]
	ldr r0, _021F03F4 ; =0x021F5304
	ldrb r0, [r0, r2]
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldrb r3, [r6, r2]
	ldr r1, [r4]
	add r0, r7, #0
	bl sub_02188DFC
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_021F03EC: .word 0x021F5324
_021F03F0: .word 0x021F5314
_021F03F4: .word 0x021F5304
	thumb_func_end ovy137_21f02f0

	thumb_func_start ovy137_21f03f8
ovy137_21f03f8: ; 0x021F03F8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _021F0410
	add r0, r1, #0
	ldrh r1, [r4, #8]
	bl sub_02188E90
	add r0, r4, #0
	bl sub_021F0414
_021F0410:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f03f8

	thumb_func_start sub_021F0414
sub_021F0414: ; 0x021F0414
	mov r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_021F0414

	thumb_func_start sub_021F041C
sub_021F041C: ; 0x021F041C
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _021F0426
	mov r0, #1
	bx lr
_021F0426:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F041C

	thumb_func_start ovy137_21f042c
ovy137_21f042c: ; 0x021F042C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r1, #0
	ldr r1, _021F04F8 ; =0x00000E11
	str r3, [sp, #8]
	add r7, r2, #0
	str r1, [sp]
	ldr r3, _021F04FC ; =0x021F58A0
	mov r1, #0x10
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0x18
	str r5, [r4, #0xc]
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_021F2020
	str r0, [sp, #0x30]
	add r0, r5, #0
	bl sub_021F2024
	str r0, [sp, #0x34]
	add r0, r5, #0
	bl sub_021F2028
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x60]
	str r4, [sp, #0x3c]
	cmp r0, #0
	beq _021F0478
	ldr r0, _021F0500 ; =ovy137_21f0720
	b _021F047A
_021F0478:
	ldr r0, _021F0504 ; =ovy137_21f067c
_021F047A:
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x44]
	add r0, r6, #0
	add r1, sp, #0x30
	bl ovy137_21eef7c
	str r0, [r4, #8]
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	add r0, r5, #0
	str r7, [sp, #0x14]
	bl sub_021F2018
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_021F2014
	str r0, [sp, #0x1c]
	mov r0, #0x40
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl sub_021F1FF8
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl sub_021F2004
	str r0, [sp, #0x2c]
	add r0, sp, #0x14
	add r1, r6, #0
	bl ovy137_21f12b4
	str r0, [r4]
	add r0, r5, #0
	bl sub_021F1FF8
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_021F2004
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_021F201C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy137_21ef124
	str r0, [r4, #4]
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F04F8: .word 0x00000E11
_021F04FC: .word 0x021F58A0
_021F0500: .word ovy137_21f0720
_021F0504: .word ovy137_21f067c
	thumb_func_end ovy137_21f042c

	thumb_func_start ovy137_21f0508
ovy137_21f0508: ; 0x021F0508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	ldr r0, [r5]
	beq _021F0518
	bl ovy137_21f13a4
	b _021F051C
_021F0518:
	bl ovy137_21f1350
_021F051C:
	mov r4, #0
_021F051E:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_021F1634
	add r1, r0, #0
	beq _021F0530
	ldr r0, [r5, #4]
	bl ovy137_21ef250
_021F0530:
	add r4, r4, #1
	cmp r4, #0x40
	blt _021F051E
	ldr r0, [r5, #4]
	mov r1, #1
	bl ovy137_21ef234
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0508

	thumb_func_start ovy137_21f0540
ovy137_21f0540: ; 0x021F0540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ovy137_21ef1b4
	ldr r0, [r4]
	bl ovy137_21f1300
	ldr r0, [r4, #8]
	bl ovy137_21eefc4
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f0540

	thumb_func_start ovy137_21f0560
ovy137_21f0560: ; 0x021F0560
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl ovy137_21eefd8
	add r0, r4, #0
	bl sub_021804F0
	add r1, r0, #0
	ldr r0, [r5]
	bl sub_021F1348
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy137_21ef1e8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0560

	thumb_func_start ovy137_21f0584
ovy137_21f0584: ; 0x021F0584
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021EEFFC
	ldr r0, [r4, #8]
	ldr r1, _021F0598 ; =ovy137_21f067c
	bl sub_021EEFF8
	pop {r4, pc}
	.align 2, 0
_021F0598: .word ovy137_21f067c
	thumb_func_end ovy137_21f0584

	thumb_func_start sub_021F059C
sub_021F059C: ; 0x021F059C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F059C

	thumb_func_start sub_021F05A0
sub_021F05A0: ; 0x021F05A0
	ldr r0, [r0, #4]
	ldr r3, _021F05A8 ; =ovy137_21ef2bc
	bx r3
	nop
_021F05A8: .word ovy137_21ef2bc
	thumb_func_end sub_021F05A0

	thumb_func_start sub_021F05AC
sub_021F05AC: ; 0x021F05AC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021F05AC

	thumb_func_start ovy137_21f05b0
ovy137_21f05b0: ; 0x021F05B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	add r7, r2, #0
	bl sub_021F2014
	ldr r1, _021F066C ; =0x021F52B0
	mov r2, #1
	str r0, [sp, #8]
	bl ovy137_21f1ae0
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F05D8:
	ldr r0, [sp, #8]
	ldr r2, _021F066C ; =0x021F52B0
	add r1, sp, #0x10
	mov r3, #1
	bl ovy137_21f1b0c
	add r4, r0, #0
	beq _021F0628
	bl ovy137_21f195c
	cmp r0, #0
	bne _021F05D8
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0]
	bl ovy137_21f163c
	bl sub_021F110C
	add r4, r0, #0
	bl sub_021672A8
	cmp r0, #0xf
	bge _021F060E
	mov r6, #0xb
	mov r5, #3
	b _021F0612
_021F060E:
	mov r6, #0x13
	mov r5, #2
_021F0612:
	add r0, r4, #0
	bl sub_021672D8
	add r3, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	str r5, [sp]
	bl ovy12_2167c3c
	b _021F05D8
_021F0628:
	add r0, r7, #0
	mov r4, #0
	bl sub_021F1D00
	cmp r0, #0
	bls _021F0666
	mov r6, #3
_021F0636:
	add r0, r7, #0
	add r1, r4, #0
	bl ovy137_21f1cc8
	add r5, r0, #0
	beq _021F065A
	bl sub_021672A8
	add r1, r6, #0
	cmp r0, #0xf
	blt _021F064E
	mov r1, #2
_021F064E:
	add r1, #0xe
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02167CAC
_021F065A:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_021F1D00
	cmp r4, r0
	blo _021F0636
_021F0666:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F066C: .word 0x021F52B0
	thumb_func_end ovy137_21f05b0

	thumb_func_start sub_021F0670
sub_021F0670: ; 0x021F0670
	ldr r0, [r0, #8]
	ldr r3, _021F0678 ; =sub_021EEFFC
	bx r3
	nop
_021F0678: .word sub_021EEFFC
	thumb_func_end sub_021F0670

	thumb_func_start ovy137_21f067c
ovy137_21f067c: ; 0x021F067C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	cmp r3, #4
	bhi _021F069E
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0694: ; jump table
	.short _021F06A4 - _021F0694 - 2 ; case 0
	.short _021F06C4 - _021F0694 - 2 ; case 1
	.short _021F06DE - _021F0694 - 2 ; case 2
	.short _021F06AA - _021F0694 - 2 ; case 3
	.short _021F06BE - _021F0694 - 2 ; case 4
_021F069E:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F06A4:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F06AA:
	ldr r0, [r4]
	bl ovy137_21f1600
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ovy137_21ef2f4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F06BE:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F06C4:
	ldr r0, [r4]
	bl ovy137_21f1600
	add r5, r0, #0
	beq _021F06DE
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021F05A0
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy137_21f15ac
_021F06DE:
	ldr r0, [r4]
	add r1, r6, #0
	bl ovy137_21f1600
	cmp r0, #0
	bne _021F0718
	add r5, sp, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [r4, #0xc]
	bl sub_021F2014
	add r1, r6, #0
	bl ovy137_21f1b6c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy137_21f14a8
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ovy137_21ef250
_021F0718:
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21f067c

	thumb_func_start ovy137_21f0720
ovy137_21f0720: ; 0x021F0720
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
	str r3, [sp]
	cmp r5, #1
	bne _021F0742
	add r0, r6, #0
	mov r1, #0x1f
	add r2, r4, #0
	bl sub_02037B38
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F0742
	mov r4, #1
_021F0742:
	cmp r4, #0
	beq _021F0754
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy137_21f067c
	pop {r3, r4, r5, r6, r7, pc}
_021F0754:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f0720

	thumb_func_start ovy137_21f0758
ovy137_21f0758: ; 0x021F0758
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, _021F0784 ; =0x00001002
	add r4, r2, #0
	str r1, [sp]
	ldr r3, _021F0788 ; =0x021F58A0
	mov r1, #0x10
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	str r5, [r6]
	ldr r1, _021F078C ; =0x021F52F4
	add r0, r5, #0
	mov r2, #0
	str r4, [r6, #4]
	bl ovy36_21b80b4
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F0784: .word 0x00001002
_021F0788: .word 0x021F58A0
_021F078C: .word 0x021F52F4
	thumb_func_end ovy137_21f0758

	thumb_func_start ovy137_21f0790
ovy137_21f0790: ; 0x021F0790
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl ovy36_21b81bc
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy137_21f0790

	thumb_func_start ovy137_21f07a4
ovy137_21f07a4: ; 0x021F07A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl ovy36_21b83b4
	mov r4, #0
	add r7, r4, #0
_021F07B2:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _021F07C8
	ldr r1, [r1, #4]
	add r0, r5, #0
	blx r1
	cmp r0, #0
	beq _021F07C8
	str r7, [r6, #8]
_021F07C8:
	add r4, r4, #1
	cmp r4, #2
	blt _021F07B2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f07a4

	thumb_func_start ovy137_21f07d0
ovy137_21f07d0: ; 0x021F07D0
	push {r3, r4, r5, lr}
	mov r4, #0xc
	add r3, r0, #0
	ldr r5, _021F07E8 ; =0x021F537C
	mul r4, r1
	lsl r2, r1, #2
	add r3, #8
	add r1, r5, r4
	str r1, [r3, r2]
	ldr r1, [r1]
	blx r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F07E8: .word 0x021F537C
	thumb_func_end ovy137_21f07d0

	thumb_func_start sub_021F07EC
sub_021F07EC: ; 0x021F07EC
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F07FA
	mov r0, #1
	bx lr
_021F07FA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F07EC

	thumb_func_start ovy137_21f0800
ovy137_21f0800: ; 0x021F0800
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #8
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _021F0816
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0
	str r0, [r4, r5]
_021F0816:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0800

	thumb_func_start ovy137_21f0818
ovy137_21f0818: ; 0x021F0818
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_021B8224
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	bl sub_021B8224
	add r7, r0, #0
	ldr r1, _021F08D8 ; =FX_SinCosTable_ ; 0x020946BC
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	ldrsh r0, [r1, r4]
	ldr r2, [sp, #8]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #4]
	add r0, #0x18
	bl MTX_RotX33_
	add r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, #0x18
	bl MTX_RotX33_
	mov r0, #0x7f
	lsl r0, r0, #0xc
	str r0, [r6]
	mov r0, #0x7d
	lsl r0, r0, #0xe
	str r0, [r6, #8]
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r7]
	ldr r0, [r5]
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r7, r4, #0
_021F088A:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r3, r4, #0x10
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #2
	blo _021F088A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F08D8: .word FX_SinCosTable_
	thumb_func_end ovy137_21f0818

	thumb_func_start ovy137_21f08dc
ovy137_21f08dc: ; 0x021F08DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl ovy36_21b84a8
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl ovy36_021B8268
	cmp r0, #0
	bne _021F096C
	add r0, r6, #0
	bl sub_021B84F4
	cmp r0, #1
	bne _021F096C
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021F0924:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r3, r4, #0x10
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #2
	blo _021F0924
_021F096C:
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	bl sub_021B8224
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_021862B4
	add r1, sp, #4
	bl sub_0204A64C
	mov r0, #0x79
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4]
	ldr r1, [sp, #0xc]
	ldr r0, _021F09B0 ; =0x00101000
	sub r0, r1, r0
	str r0, [r4, #8]
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4]
	str r0, [r6]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F09B0: .word 0x00101000
	thumb_func_end ovy137_21f08dc

	thumb_func_start ovy137_21f09b4
ovy137_21f09b4: ; 0x021F09B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	mov r6, #0
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r4, r6, #0
_021F09D4:
	lsl r3, r6, #0x10
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r3, r6, #0x10
	str r4, [sp]
	add r7, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	add r6, r6, #1
	cmp r6, #2
	blo _021F09D4
	mov r7, #1
_021F0A04:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #2
	blo _021F0A04
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f09b4

	thumb_func_start ovy137_21f0a38
ovy137_21f0a38: ; 0x021F0A38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ovy137_21f0818
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_021B8224
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl sub_021B8224
	ldr r1, _021F0A7C ; =0x02097DFC
	add r7, r0, #0
	mov r0, #2
	ldrsh r4, [r1, r0]
	ldrsh r5, [r1, r5]
	add r6, #0x18
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MTX_RotX33_
	add r7, #0x18
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MTX_RotX33_
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0A7C: .word 0x02097DFC
	thumb_func_end ovy137_21f0a38

	thumb_func_start ovy137_21f0a80
ovy137_21f0a80: ; 0x021F0A80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy137_21f08dc
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	bl sub_021B8224
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_021862B4
	add r1, sp, #0
	bl sub_0204A64C
	mov r0, #0x79
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4]
	mov r0, #0x32
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [sp, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4]
	str r0, [r6]
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f0a80
_021F0AD8:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB5, 0x09, 0x1F, 0x02

	thumb_func_start ovy137_21f0ae0
ovy137_21f0ae0: ; 0x021F0AE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	add r6, r1, #0
	str r2, [sp, #0xc]
	bl sub_021F202C
	mov r1, #7
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02038F00
	cmp r0, #0
	bne _021F0BCE
	ldr r0, [sp, #0x18]
	mov r1, #6
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	bne _021F0BCE
	add r0, r6, #0
	bl sub_02017934
	add r7, r0, #0
	bl sub_02010044
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl sub_021F2028
	ldr r0, [sp, #0xc]
	ldr r1, _021F0BD4 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02037A40
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02169B78
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0200C838
	bl sub_0200C9A0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	bl sub_0200FB40
	bl sub_0200FA4C
	cmp r5, #6
	bhs _021F0B62
	ldr r1, _021F0BD8 ; =0x021F52B9
	ldrb r2, [r1, r5]
	mov r1, #0
	add r7, r1, r2
	b _021F0B66
_021F0B62:
	mov r1, #0
	add r7, r1, #5
_021F0B66:
	cmp r4, #9
	bhs _021F0B72
	ldr r1, _021F0BDC ; =0x021F52D0
	ldrb r1, [r1, r4]
	add r7, r7, r1
	b _021F0B74
_021F0B72:
	add r7, r7, #2
_021F0B74:
	cmp r0, #5
	bhs _021F0B80
	ldr r1, _021F0BE0 ; =0x021F52B4
	ldrb r0, [r1, r0]
	add r7, r7, r0
	b _021F0B82
_021F0B80:
	add r7, r7, #5
_021F0B82:
	mov r4, #0
	mov r5, #0
	cmp r7, #0
	bls _021F0BBE
_021F0B8A:
	str r5, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r3, #4
	bl ovy137_21f4b94
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	mov r3, #2
	bl sub_02010078
	cmp r0, #2
	bne _021F0BAE
	add r4, r4, #1
_021F0BAE:
	cmp r0, #0
	beq _021F0BBE
	add r0, r5, #0
	add r5, r5, #1
	cmp r0, #0x64
	bgt _021F0BBE
	cmp r4, r7
	blo _021F0B8A
_021F0BBE:
	ldr r0, [sp, #0x10]
	bl sub_02037A68
	ldr r0, [sp, #0x18]
	mov r1, #6
	mov r2, #1
	bl sub_02039064
_021F0BCE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F0BD4: .word 0x00007FFF
_021F0BD8: .word 0x021F52B9
_021F0BDC: .word 0x021F52D0
_021F0BE0: .word 0x021F52B4
	thumb_func_end ovy137_21f0ae0

	thumb_func_start ovy137_21f0be4
ovy137_21f0be4: ; 0x021F0BE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	add r0, r1, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl sub_02017934
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_021F2000
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl sub_021F202C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	bl sub_02017394
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02010044
	str r0, [sp, #0x18]
	mov r0, #0
	mov r1, #0x96
	str r0, [sp, #0x14]
	add r0, r4, #0
	lsl r1, r1, #4
	mov r5, #0
	bl sub_020191AC
	cmp r0, #0
	beq _021F0C8A
	ldr r0, [sp, #0x1c]
	mov r1, #0x18
	add r2, r5, #0
	bl sub_02038F00
	cmp r0, #0
	bne _021F0C8A
	ldr r0, [sp, #8]
	bl sub_021F2028
	mov r1, #1
	add r4, r0, #0
	str r1, [sp, #0x14]
	bl sub_02037ED4
	cmp r0, #0
	bls _021F0C80
	mov r7, #0x1f
_021F0C4E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02037F04
	add r6, r0, #0
	bl sub_02037A90
	cmp r0, #0
	bne _021F0C74
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02037B38
	cmp r0, #5
	bne _021F0C74
	mov r0, #0
	str r0, [sp, #0x14]
	b _021F0C80
_021F0C74:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02037ED4
	cmp r5, r0
	blo _021F0C4E
_021F0C80:
	ldr r0, [sp, #0x1c]
	mov r1, #0x18
	mov r2, #1
	bl sub_02039064
_021F0C8A:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021F0D08
	ldr r0, [sp, #0x1c]
	mov r1, #2
	mov r2, #0
	mov r6, #2
	mov r5, #0
	bl sub_02038F00
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0203968C
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r2, #0xa
	bl sub_020395F8
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0x15
	mov r2, #0x64
	bl sub_020393E4
	cmp r0, r4
	bhs _021F0D08
	ldr r0, [sp, #0x10]
	ldr r1, _021F0D0C ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02037A40
	add r4, r0, #0
	str r5, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r4, #0
	mov r3, #5
	bl ovy137_21f4b94
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02010078
	cmp r0, #2
	bne _021F0D02
	ldr r0, [sp, #0x1c]
	mov r1, #0x19
	add r2, r5, #0
	bl sub_02039064
_021F0D02:
	add r0, r4, #0
	bl sub_02037A68
_021F0D08:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0D0C: .word 0x00007FFF
	thumb_func_end ovy137_21f0be4

	thumb_func_start ovy137_21f0d10
ovy137_21f0d10: ; 0x021F0D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	bl sub_021804C0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_02017934
	bl sub_02010044
	add r0, r7, #0
	bl sub_02017B84
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0xc
	mov r5, #0
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02017934
	bl sub_02010044
	str r0, [sp, #4]
	add r0, sp, #0x38
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	ldr r0, [sp, #4]
	bl sub_02010060
	str r0, [sp, #0x38]
	ldr r0, [sp, #4]
	bl sub_02010050
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r5, [sp, #0x40]
	bl sub_02010054
	str r0, [sp, #0x44]
	ldr r0, [sp, #4]
	bl sub_0201006C
	str r0, [sp, #0x48]
	ldr r1, [sp]
	add r0, sp, #0x38
	add r2, r6, #0
	bl ovy137_21f1f1c
	str r0, [r4, #4]
	bl sub_021F202C
	mov r1, #7
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	bne _021F0D9E
	mov r5, #1
_021F0D9E:
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	add r0, r7, #0
	bl sub_0201738C
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl sub_021F2018
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	bl sub_021F2014
	str r0, [sp, #0x24]
	mov r0, #0x10
	str r0, [sp, #0x28]
	mov r0, #2
	str r0, [sp, #0x2c]
	ldr r0, [r4, #4]
	bl sub_021F1FF8
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	bl sub_021F2004
	str r0, [sp, #0x34]
	add r0, sp, #0x1c
	add r1, r6, #0
	bl ovy137_21f12b4
	str r0, [r4]
	cmp r5, #0
	beq _021F0DEC
	ldr r0, [r4]
	bl ovy137_21f1350
_021F0DEC:
	add r5, sp, #8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r7, #0
	bl sub_0201738C
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_021F202C
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl sub_021F2010
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy137_21f1c24
	str r0, [r4, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f0d10

	thumb_func_start ovy137_21f0e28
ovy137_21f0e28: ; 0x021F0E28
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy137_21f1c74
	ldr r0, [r4]
	bl ovy137_21f1300
	ldr r0, [r4, #4]
	bl ovy137_21f1fb4
	add r0, r5, #0
	mov r1, #0
	bl ovy36_218102c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0e28

	thumb_func_start ovy137_21f0e50
ovy137_21f0e50: ; 0x021F0E50
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ovy137_21f1c88
	add r0, r5, #0
	bl sub_021804F0
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_021F1348
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0e50

	thumb_func_start ovy137_21f0e74
ovy137_21f0e74: ; 0x021F0E74
	push {r3, lr}
	mov r1, #0
	bl sub_0218105C
	ldr r0, [r0]
	pop {r3, pc}
	thumb_func_end ovy137_21f0e74

	thumb_func_start ovy137_21f0e80
ovy137_21f0e80: ; 0x021F0E80
	push {r3, lr}
	mov r1, #0
	bl sub_0218105C
	ldr r0, [r0, #4]
	pop {r3, pc}
	thumb_func_end ovy137_21f0e80

	thumb_func_start ovy137_21f0e8c
ovy137_21f0e8c: ; 0x021F0E8C
	push {r3, lr}
	mov r1, #0
	bl sub_0218105C
	ldr r0, [r0, #8]
	pop {r3, pc}
	thumb_func_end ovy137_21f0e8c

	thumb_func_start ovy137_21f0e98
ovy137_21f0e98: ; 0x021F0E98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	mov r1, #0xa6
	str r1, [sp]
	ldr r3, _021F0F34 ; =0x021F58B0
	mov r1, #0x30
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldrh r0, [r5, #4]
	ldr r1, [r5, #0x20]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r5]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x10]
	ldr r1, [r5, #0x14]
	str r1, [r4, #0x28]
	ldr r1, [r5, #0x18]
	str r1, [r4, #0x2c]
	bl sub_021F1984
	str r0, [r4]
	ldr r0, [r4, #0x1c]
	mov r1, #0x1f
	mov r2, #0
	bl ovy137_21f1968
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	add r3, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_02039628
	str r0, [r4, #0x20]
	ldr r0, [r4]
	ldr r1, _021F0F38 ; =0x021F5554
	lsl r0, r0, #3
	add r0, r1, r0
	str r0, [r4, #0x24]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	add r1, #0x50
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _021F0F1A
	add r0, r4, #0
	add r1, r5, #0
	bl ovy137_21f122c
_021F0F1A:
	ldr r0, [r4, #0x18]
	bl ovy12_2167520
	cmp r0, #0
	bne _021F0F28
	mov r0, #1
	b _021F0F2A
_021F0F28:
	mov r0, #0
_021F0F2A:
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F0F34: .word 0x021F58B0
_021F0F38: .word 0x021F5554
	thumb_func_end ovy137_21f0e98

	thumb_func_start sub_021F0F3C
sub_021F0F3C: ; 0x021F0F3C
	ldr r3, _021F0F40 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021F0F40: .word sub_0203A24C
	thumb_func_end sub_021F0F3C

	thumb_func_start ovy137_21f0f44
ovy137_21f0f44: ; 0x021F0F44
	push {r4, lr}
	add r4, r1, #0
	bl sub_021F110C
	cmp r4, r0
	bne _021F0F54
	mov r0, #1
	pop {r4, pc}
_021F0F54:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy137_21f0f44
_021F0F58:
	.byte 0xC0, 0x69, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x81, 0x19, 0x1F, 0x02

	thumb_func_start ovy137_21f0f64
ovy137_21f0f64: ; 0x021F0F64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021F110C
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #3
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	bl ovy12_2167de8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f0f64
_021F0F84:
	.byte 0x81, 0x60, 0x70, 0x47

	thumb_func_start ovy137_21f0f88
ovy137_21f0f88: ; 0x021F0F88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	cmp r0, #0
	beq _021F0F9C
	bl ovy12_2166940
	mov r0, #0
	str r0, [r5, #0x18]
_021F0F9C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy137_21f122c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21f0f88

	thumb_func_start ovy137_21f0fa8
ovy137_21f0fa8: ; 0x021F0FA8
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	bl sub_021F1980
	bl sub_02038470
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f0fa8

	thumb_func_start ovy137_21f0fb8
ovy137_21f0fb8: ; 0x021F0FB8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _021F101A
	bl sub_021F110C
	add r5, r0, #0
	add r0, r4, #0
	ldr r4, [r4, #0x24]
	add r2, sp, #0
	ldr r4, [r4, #4]
	add r1, sp, #4
	add r2, #2
	add r3, sp, #0
	blx r4
	add r4, sp, #0
	ldrh r0, [r4, #4]
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldrh r1, [r4, #2]
	lsl r1, r1, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #8
	bl sub_02167308
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_021672B0
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_021672E0
	ldrh r1, [r4]
	add r0, r5, #0
	bl ovy12_2167060
_021F101A:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21f0fb8

	thumb_func_start ovy137_21f1020
ovy137_21f1020: ; 0x021F1020
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x24]
	add r4, r3, #0
	ldr r6, [r6, #4]
	add r5, r1, #0
	blx r6
	ldrh r0, [r4]
	cmp r0, #2
	ldrh r0, [r5]
	bne _021F103E
	sub r0, r0, #1
	strh r0, [r5]
	mov r0, #3
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_021F103E:
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #2
	strh r0, [r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21f1020

	thumb_func_start ovy137_21f1048
ovy137_21f1048: ; 0x021F1048
	push {r4, lr}
	ldr r0, [r0, #0x1c]
	add r4, r1, #0
	bl sub_021F1980
	cmp r0, r4
	bne _021F105A
	mov r0, #1
	pop {r4, pc}
_021F105A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1048

	thumb_func_start sub_021F1060
sub_021F1060: ; 0x021F1060
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	bne _021F106A
	mov r0, #1
	bx lr
_021F106A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F1060

	thumb_func_start ovy137_21f1070
ovy137_21f1070: ; 0x021F1070
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021F110C
	add r6, r0, #0
	mov r1, #1
	cmp r4, #0
	beq _021F1084
	mov r1, #0
_021F1084:
	add r0, r6, #0
	bl ovy12_2167534
	add r0, r6, #0
	add r1, r4, #0
	bl ovy12_2167580
	str r4, [r5, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1070

	thumb_func_start ovy137_21f1098
ovy137_21f1098: ; 0x021F1098
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_021F110C
	add r4, r0, #0
	bl ovy12_2167520
	cmp r5, #0
	beq _021F10B6
	cmp r5, #1
	beq _021F10C0
	cmp r5, #2
	beq _021F10CA
	pop {r4, r5, r6, pc}
_021F10B6:
	add r0, r4, #0
	mov r1, #0
	bl ovy12_2167534
	pop {r4, r5, r6, pc}
_021F10C0:
	add r0, r4, #0
	mov r1, #1
	bl ovy12_2167534
	pop {r4, r5, r6, pc}
_021F10CA:
	ldr r0, [r6, #0xc]
	mov r1, #1
	cmp r0, #0
	beq _021F10D4
	mov r1, #0
_021F10D4:
	add r0, r4, #0
	bl ovy12_2167534
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21f1098

	thumb_func_start sub_021F10DC
sub_021F10DC: ; 0x021F10DC
	ldr r0, [r0, #0x1c]
	ldr r3, _021F10E4 ; =ovy137_21f1974
	bx r3
	nop
_021F10E4: .word ovy137_21f1974
	thumb_func_end sub_021F10DC

	thumb_func_start sub_021F10E8
sub_021F10E8: ; 0x021F10E8
	ldr r0, [r0, #0x1c]
	ldr r3, _021F10F0 ; =ovy137_21f1968
	bx r3
	nop
_021F10F0: .word ovy137_21f1968
	thumb_func_end sub_021F10E8

	thumb_func_start sub_021F10F4
sub_021F10F4: ; 0x021F10F4
	cmp r1, #0
	beq _021F10FE
	cmp r1, #1
	beq _021F1102
	b _021F1106
_021F10FE:
	ldr r0, [r0]
	bx lr
_021F1102:
	ldr r0, [r0, #0x10]
	bx lr
_021F1106:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F10F4

	thumb_func_start sub_021F110C
sub_021F110C: ; 0x021F110C
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021F110C

	thumb_func_start sub_021F1110
sub_021F1110: ; 0x021F1110
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021F1110

	thumb_func_start ovy137_21f1114
ovy137_21f1114: ; 0x021F1114
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r1, sp, #4
	add r2, #2
	add r3, sp, #0
	bl ovy137_21f113c
	add r2, sp, #0
	ldrh r0, [r2]
	mov r3, #0
	strh r0, [r4, #0xc]
	ldrh r1, [r2, #4]
	ldrh r2, [r2, #2]
	add r0, r4, #0
	bl sub_021682C0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy137_21f1114

	thumb_func_start ovy137_21f113c
ovy137_21f113c: ; 0x021F113C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_021F198C
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	bl ovy137_21f0fa8
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #0x28]
	bl sub_020397B4
	add r3, r0, #0
	lsr r2, r7, #0x1f
	lsl r1, r7, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021F1180
	mov r0, #1
	str r0, [sp, #4]
_021F1180:
	ldr r1, [sp, #4]
	add r0, r3, #0
	add r1, r1, #6
	bl sub_020397CC
	ldr r3, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02039538
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	mov r2, #1
	bl sub_020395F8
	ldrh r1, [r4]
	mov r2, #2
	add r0, r1, r0
	strh r0, [r4]
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	bl sub_020395F8
	ldrh r1, [r6]
	add r0, r1, r0
	strh r0, [r6]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f113c

	thumb_func_start ovy137_21f11b8
ovy137_21f11b8: ; 0x021F11B8
	push {r3, lr}
	mov r1, #0
	strh r1, [r2, #0xc]
	add r0, r2, #0
	mov r2, #0
	mov r3, #0
	bl sub_021682C0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f11b8

	thumb_func_start ovy137_21f11cc
ovy137_21f11cc: ; 0x021F11CC
	push {r3, lr}
	mov r1, #0
	strh r1, [r2, #0xc]
	add r0, r2, #0
	mov r2, #0
	mov r3, #0
	bl sub_021682C0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f11cc

	thumb_func_start ovy137_21f11e0
ovy137_21f11e0: ; 0x021F11E0
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r1, sp, #4
	add r2, #2
	add r3, sp, #0
	bl ovy137_21f1208
	add r2, sp, #0
	ldrh r0, [r2]
	mov r3, #0
	strh r0, [r4, #0xc]
	ldrh r1, [r2, #4]
	ldrh r2, [r2, #2]
	add r0, r4, #0
	bl sub_021682C0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy137_21f11e0

	thumb_func_start ovy137_21f1208
ovy137_21f1208: ; 0x021F1208
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x1c]
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0x1f
	mov r2, #0
	add r6, r3, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02039578
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1208

	thumb_func_start ovy137_21f122c
ovy137_21f122c: ; 0x021F122C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r6, _021F12B0 ; =0x021F5574
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #4
_021F123A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F123A
	ldr r0, [r6]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r5, #0x1c]
	mov r2, #0
	mov r7, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r6, sp, #0
	strh r0, [r6, #2]
	ldr r0, [r5, #0x20]
	bl sub_02039624
	strh r0, [r6, #0xa]
	ldrh r0, [r4, #4]
	add r1, r4, #0
	add r0, #0x50
	strh r0, [r6]
	ldr r3, [r5, #0x24]
	add r6, sp, #0
	ldr r3, [r3]
	add r0, r5, #0
	add r2, r6, #0
	blx r3
	ldr r0, [r4, #8]
	bl sub_0203950C
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ovy12_2166874
	str r0, [r5, #0x18]
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl sub_021F10DC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl sub_021F10DC
	ldr r0, [r5, #0x18]
	bl ovy12_2167520
	cmp r0, #0
	beq _021F12AA
	add r6, r7, #0
_021F12AA:
	str r6, [r5, #0xc]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F12B0: .word 0x021F5574
	thumb_func_end ovy137_21f122c

	thumb_func_start ovy137_21f12b4
ovy137_21f12b4: ; 0x021F12B4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0xc]
	mov r0, #0xb2
	lsl r0, r0, #2
	lsl r1, r1, #2
	str r0, [sp]
	ldr r3, _021F12FC ; =0x021F58B0
	add r0, r6, #0
	add r1, #0x24
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r2]
	mov r0, #0
	add r2, r6, #0
	strh r6, [r4, #0x1c]
	bl sub_020395AC
	str r0, [r4, #0x20]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F12FC: .word 0x021F58B0
	thumb_func_end ovy137_21f12b4

	thumb_func_start ovy137_21f1300
ovy137_21f1300: ; 0x021F1300
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021F1334
_021F130C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021F1634
	cmp r0, #0
	beq _021F132C
	bl sub_021F110C
	add r6, r0, #0
	bl ovy12_0216721C
	cmp r0, #0xbe
	bne _021F132C
	add r0, r6, #0
	bl ovy12_2166f2c
_021F132C:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F130C
_021F1334:
	add r0, r5, #0
	bl ovy137_21f1504
	ldr r0, [r5, #0x20]
	bl sub_020395E4
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21f1300

	thumb_func_start sub_021F1348
sub_021F1348: ; 0x021F1348
	bx lr
	.align 2, 0
	thumb_func_end sub_021F1348

	thumb_func_start sub_021F134C
sub_021F134C: ; 0x021F134C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021F134C

	thumb_func_start ovy137_21f1350
ovy137_21f1350: ; 0x021F1350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	mov r4, #0
	add r7, sp, #0
_021F135C:
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021F1808
	cmp r0, #0
	bne _021F1392
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl ovy137_21f1824
	str r0, [sp]
	ldr r0, [r5, #0x10]
	lsl r3, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy137_21f1464
_021F1392:
	add r4, r4, #1
	cmp r4, #0x40
	blt _021F135C
	add r0, r5, #0
	bl ovy137_21f1670
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1350

	thumb_func_start ovy137_21f13a4
ovy137_21f13a4: ; 0x021F13A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _021F145C ; =0x021F554C
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r2, #2
	bl ovy137_21f1ae0
	add r1, sp, #8
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xe]
_021F13C8:
	ldr r0, [r5, #8]
	ldr r2, _021F145C ; =0x021F554C
	add r1, sp, #0x14
	mov r3, #2
	bl ovy137_21f1b0c
	add r4, r0, #0
	beq _021F1452
	bl ovy137_21f195c
	cmp r0, #0
	bne _021F13C8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl ovy137_21f1968
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_021F1808
	cmp r0, #0
	bne _021F13FE
	mov r6, #1
_021F13FE:
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	bl sub_021F1988
	cmp r0, #4
	bne _021F142E
	ldr r1, [sp]
	ldr r0, _021F1460 ; =0x0000FFFE
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021F142C
	mov r0, #1
	orr r6, r0
	b _021F142E
_021F142C:
	mov r6, #0
_021F142E:
	cmp r6, #0
	beq _021F13C8
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	str r4, [sp, #0xc]
	ldr r0, [r5, #0x10]
	lsl r3, r7, #0x10
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0xc
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy137_21f1464
	b _021F13C8
_021F1452:
	add r0, r5, #0
	bl ovy137_21f1670
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F145C: .word 0x021F554C
_021F1460: .word 0x0000FFFE
	thumb_func_end ovy137_21f13a4

	thumb_func_start ovy137_21f1464
ovy137_21f1464: ; 0x021F1464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	add r4, r2, #0
	add r5, r0, #0
	lsl r2, r6, #2
	add r2, r5, r2
	ldr r2, [r2, #0x24]
	cmp r2, #0
	bne _021F14A0
	add r7, sp, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy137_21f16d0
	str r4, [sp, #0x20]
	add r4, r5, #0
	ldrh r0, [r5, #0x1c]
	add r4, #0x24
	lsl r6, r6, #2
	add r1, r7, #0
	bl ovy137_21f0e98
	str r0, [r4, r6]
	ldr r0, [r5, #4]
	bl ovy137_21f1748
	add sp, #0x24
	ldr r0, [r4, r6]
	pop {r4, r5, r6, r7, pc}
_021F14A0:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1464

	thumb_func_start ovy137_21f14a8
ovy137_21f14a8: ; 0x021F14A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl ovy137_21f184c
	add r3, r0, #0
	ldr r0, _021F14D4 ; =0x0000FFFF
	cmp r3, r0
	beq _021F14CE
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy137_21f1464
	pop {r3, r4, r5, pc}
_021F14CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021F14D4: .word 0x0000FFFF
	thumb_func_end ovy137_21f14a8

	thumb_func_start ovy137_21f14d8
ovy137_21f14d8: ; 0x021F14D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r3, [r5, #0xc]
	mov r2, #0
	cmp r3, #0
	bls _021F1502
_021F14E4:
	lsl r4, r2, #2
	add r0, r5, r4
	ldr r0, [r0, #0x24]
	cmp r1, r0
	bne _021F14FC
	add r0, r1, #0
	bl sub_021F0F3C
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x24]
	pop {r3, r4, r5, pc}
_021F14FC:
	add r2, r2, #1
	cmp r2, r3
	blo _021F14E4
_021F1502:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f14d8

	thumb_func_start ovy137_21f1504
ovy137_21f1504: ; 0x021F1504
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021F152A
	add r7, r4, #0
_021F1512:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _021F1522
	bl sub_021F0F3C
	str r7, [r6, #0x24]
_021F1522:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F1512
_021F152A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1504

	thumb_func_start ovy137_21f152c
ovy137_21f152c: ; 0x021F152C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021F1552
	mov r6, #2
_021F153A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021F154A
	add r1, r6, #0
	bl ovy137_21f1098
_021F154A:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F153A
_021F1552:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21f152c

	thumb_func_start ovy137_21f1554
ovy137_21f1554: ; 0x021F1554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_021F10E8
	add r7, sp, #0
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_021F1110
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_021F10E8
	str r0, [sp, #4]
	add r0, r5, #0
	add r5, sp, #8
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ovy137_21f16d0
	add r0, r4, #0
	mov r1, #1
	bl sub_021F10F4
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy137_21f0f88
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1554

	thumb_func_start ovy137_21f15ac
ovy137_21f15ac: ; 0x021F15AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021F110C
	bl ovy12_2166940
	add r0, r5, #0
	add r1, r4, #0
	bl ovy137_21f14d8
	ldr r0, [r5, #4]
	bl ovy137_21f1748
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f15ac

	thumb_func_start ovy137_21f15cc
ovy137_21f15cc: ; 0x021F15CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _021F15FC
_021F15DA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x24]
	cmp r6, #0
	beq _021F15F4
	add r0, r6, #0
	add r1, r7, #0
	bl ovy137_21f0f44
	cmp r0, #0
	beq _021F15F4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F15F4:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F15DA
_021F15FC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f15cc

	thumb_func_start ovy137_21f1600
ovy137_21f1600: ; 0x021F1600
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _021F1630
_021F160E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x24]
	cmp r6, #0
	beq _021F1628
	add r0, r6, #0
	add r1, r7, #0
	bl ovy137_21f1048
	cmp r0, #0
	beq _021F1628
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1628:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F160E
_021F1630:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1600

	thumb_func_start sub_021F1634
sub_021F1634: ; 0x021F1634
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_021F1634

	thumb_func_start ovy137_21f163c
ovy137_21f163c: ; 0x021F163C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _021F166C
_021F164A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x24]
	cmp r6, #0
	beq _021F1664
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021F1060
	cmp r0, #0
	beq _021F1664
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1664:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021F164A
_021F166C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f163c

	thumb_func_start ovy137_21f1670
ovy137_21f1670: ; 0x021F1670
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r6, sp, #4
	add r7, sp, #0
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy12_2167870
	cmp r0, #1
	bne _021F16CC
_021F168C:
	ldr r0, [sp, #4]
	bl sub_02167008
	bl sub_021F1700
	cmp r0, #0
	beq _021F16BE
	ldr r0, [sp, #4]
	bl sub_02167010
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0203950C
	cmp r4, r0
	bne _021F16BE
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy137_21f15cc
	cmp r0, #0
	bne _021F16BE
	ldr r0, [sp, #4]
	bl ovy12_2166940
_021F16BE:
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy12_2167870
	cmp r0, #1
	beq _021F168C
_021F16CC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1670

	thumb_func_start ovy137_21f16d0
ovy137_21f16d0: ; 0x021F16D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	ldr r0, [r6]
	strh r7, [r4, #4]
	str r0, [r4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [r5]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f16d0

	thumb_func_start sub_021F1700
sub_021F1700: ; 0x021F1700
	cmp r0, #0x50
	blt _021F170C
	cmp r0, #0x94
	bge _021F170C
	mov r0, #1
	bx lr
_021F170C:
	mov r0, #0
	bx lr
	thumb_func_end sub_021F1700

	thumb_func_start ovy137_21f1710
ovy137_21f1710: ; 0x021F1710
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0x61
	add r5, r0, #0
	mov r0, #0x4f
	str r0, [sp]
	lsl r6, r6, #2
	add r0, r1, #0
	ldr r3, _021F173C ; =0x021F58C0
	add r1, r6, #0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	sub r1, r6, #4
	str r5, [r4, r1]
	bl ovy137_21f1748
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F173C: .word 0x021F58C0
	thumb_func_end ovy137_21f1710

	thumb_func_start sub_021F1740
sub_021F1740: ; 0x021F1740
	ldr r3, _021F1744 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021F1744: .word sub_0203A24C
	thumb_func_end sub_021F1740

	thumb_func_start ovy137_21f1748
ovy137_21f1748: ; 0x021F1748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r3, #0
	add r5, r0, #0
	mov r2, #5
	mov r1, #0xff
	add r7, r3, #0
_021F1756:
	lsl r0, r3, #7
	add r6, r5, r0
	add r4, r7, #0
_021F175C:
	add r0, r6, r4
	add r0, #0x40
	strb r2, [r0]
	strb r1, [r6, r4]
	add r4, r4, #1
	cmp r4, #0x40
	blt _021F175C
	add r3, r3, #1
	cmp r3, #3
	blt _021F1756
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, _021F17E8 ; =0x021F55B8
	bl ovy137_21f1ae0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F178C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, _021F17E8 ; =0x021F55B8
	add r1, sp, #4
	mov r3, #5
	bl ovy137_21f1b0c
	add r4, r0, #0
	beq _021F17E2
	bl ovy137_21f195c
	cmp r0, #0
	bne _021F178C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ovy137_21f1968
	cmp r0, #1
	blt _021F178C
	cmp r0, #3
	bge _021F178C
	lsl r0, r0, #7
	add r7, r5, r0
	add r0, r4, #0
	bl sub_021F1988
	add r1, r7, r6
	add r1, #0x40
	strb r0, [r1]
	add r0, r4, #0
	bl sub_021F198C
	strb r0, [r7, r6]
	b _021F178C
_021F17E2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F17E8: .word 0x021F55B8
	thumb_func_end ovy137_21f1748

	thumb_func_start sub_021F17EC
sub_021F17EC: ; 0x021F17EC
	lsl r1, r0, #2
	ldr r0, _021F17F8 ; =0x021F55CC
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
_021F17F8: .word 0x021F55CC
	thumb_func_end sub_021F17EC

	thumb_func_start sub_021F17FC
sub_021F17FC: ; 0x021F17FC
	lsl r1, r0, #2
	ldr r0, _021F1804 ; =0x021F55A8
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_021F1804: .word 0x021F55A8
	thumb_func_end sub_021F17FC

	thumb_func_start sub_021F1808
sub_021F1808: ; 0x021F1808
	lsl r1, r1, #7
	add r1, r0, r1
	ldrb r0, [r2, r1]
	mov r3, #0
	cmp r0, #0xff
	bne _021F1820
	add r0, r1, r2
	add r0, #0x40
	ldrb r0, [r0]
	cmp r0, #5
	bne _021F1820
	mov r3, #1
_021F1820:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_021F1808

	thumb_func_start ovy137_21f1824
ovy137_21f1824: ; 0x021F1824
	push {r3, lr}
	lsl r1, r1, #7
	add r3, r0, r1
	add r1, r3, r2
	add r1, #0x40
	ldrb r1, [r1]
	ldrb r2, [r2, r3]
	cmp r1, #5
	beq _021F183A
	cmp r2, #0xff
	bne _021F183E
_021F183A:
	mov r0, #0
	pop {r3, pc}
_021F183E:
	mov r3, #6
	lsl r3, r3, #6
	ldr r0, [r0, r3]
	bl sub_021F1B94
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1824

	thumb_func_start ovy137_21f184c
ovy137_21f184c: ; 0x021F184C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021F1854:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021F1808
	cmp r0, #0
	beq _021F1866
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021F1866:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x40
	blo _021F1854
	ldr r0, _021F1874 ; =0x0000FFFF
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F1874: .word 0x0000FFFF
	thumb_func_end ovy137_21f184c

	thumb_func_start ovy137_21f1878
ovy137_21f1878: ; 0x021F1878
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	mov r2, #0x64
	str r0, [sp]
	bl ovy137_21f1990
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203968C
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #8
	bl sub_020395F8
	cmp r6, r0
	bhs _021F18EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #7
	bl sub_020395F8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_020395F8
	add r2, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ovy137_21f1990
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039824
	add r2, r0, #0
	cmp r2, #0xa
	beq _021F18EC
	lsl r2, r2, #1
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, #3
	bl sub_020395F8
	pop {r3, r4, r5, r6, r7, pc}
_021F18EC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1878

	thumb_func_start ovy137_21f18f0
ovy137_21f18f0: ; 0x021F18F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021F1918 ; =0x000001D3
	add r6, r3, #0
	add r4, r2, #0
	str r1, [sp]
	ldr r3, _021F191C ; =0x021F58C0
	mov r1, #0x14
	mov r2, #1
	bl sub_0203A1FC
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	add r7, r0, #0
	bl ovy137_21f1928
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1918: .word 0x000001D3
_021F191C: .word 0x021F58C0
	thumb_func_end ovy137_21f18f0

	thumb_func_start sub_021F1920
sub_021F1920: ; 0x021F1920
	ldr r3, _021F1924 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021F1924: .word sub_0203A24C
	thumb_func_end sub_021F1920

	thumb_func_start ovy137_21f1928
ovy137_21f1928: ; 0x021F1928
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	str r2, [r5, #8]
	str r3, [r5, #0xc]
	bl sub_021F17EC
	str r0, [r5, #0x10]
	ldr r1, _021F194C ; =0x021F5608
	lsl r0, r0, #5
	add r0, r1, r0
	str r0, [r5, #4]
	cmp r4, #0
	beq _021F1948
	str r4, [r5]
_021F1948:
	pop {r3, r4, r5, pc}
	nop
_021F194C: .word 0x021F5608
	thumb_func_end ovy137_21f1928

	thumb_func_start ovy137_21f1950
ovy137_21f1950: ; 0x021F1950
	push {r3, lr}
	add r1, r0, #0
	ldmia r1!, {r0, r1}
	ldr r1, [r1, #8]
	blx r1
	pop {r3, pc}
	thumb_func_end ovy137_21f1950

	thumb_func_start ovy137_21f195c
ovy137_21f195c: ; 0x021F195C
	push {r3, lr}
	add r1, r0, #0
	ldmia r1!, {r0, r1}
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	thumb_func_end ovy137_21f195c

	thumb_func_start ovy137_21f1968
ovy137_21f1968: ; 0x021F1968
	push {r3, lr}
	add r3, r0, #0
	ldmia r3!, {r0, r3}
	ldr r3, [r3, #0x10]
	blx r3
	pop {r3, pc}
	thumb_func_end ovy137_21f1968

	thumb_func_start ovy137_21f1974
ovy137_21f1974: ; 0x021F1974
	push {r3, lr}
	add r3, r0, #0
	ldmia r3!, {r0, r3}
	ldr r3, [r3, #0x14]
	blx r3
	pop {r3, pc}
	thumb_func_end ovy137_21f1974

	thumb_func_start sub_021F1980
sub_021F1980: ; 0x021F1980
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F1980

	thumb_func_start sub_021F1984
sub_021F1984: ; 0x021F1984
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021F1984

	thumb_func_start sub_021F1988
sub_021F1988: ; 0x021F1988
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021F1988

	thumb_func_start sub_021F198C
sub_021F198C: ; 0x021F198C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021F198C

	thumb_func_start ovy137_21f1990
ovy137_21f1990: ; 0x021F1990
	push {r3, lr}
	add r3, r0, #0
	ldmia r3!, {r0, r3}
	ldr r3, [r3, #0x1c]
	blx r3
	pop {r3, pc}
	thumb_func_end ovy137_21f1990

	thumb_func_start ovy137_21f199c
ovy137_21f199c: ; 0x021F199C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #7
	mov r2, #0
	add r7, r3, #0
	bl ovy137_21f1968
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy137_21f1968
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0203941C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f199c

	thumb_func_start ovy137_21f19c4
ovy137_21f19c4: ; 0x021F19C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021F1AB8 ; =0x000002DF
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021F1ABC ; =0x021F58C0
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	mov r5, #0
_021F19E0:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	bl sub_02038860
	add r1, r0, #0
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	mov r2, #0
	bl ovy137_21f18f0
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r6, r1]
	cmp r5, #8
	blt _021F19E0
	mov r5, #8
_021F1A06:
	add r0, r5, #0
	sub r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	bl sub_0203888C
	add r1, r0, #0
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	mov r2, #1
	bl ovy137_21f18f0
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r6, r1]
	cmp r5, #0xc
	blt _021F1A06
	mov r5, #0xc
_021F1A30:
	add r0, r5, #0
	sub r0, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	bl sub_02038060
	add r1, r0, #0
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	mov r2, #2
	bl ovy137_21f18f0
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r6, r1]
	cmp r5, #0x14
	blt _021F1A30
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F1A88
	mov r5, #0x14
_021F1A60:
	add r0, r5, #0
	sub r0, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #8]
	bl sub_02038060
	add r1, r0, #0
	ldr r3, [sp, #8]
	add r0, r7, #0
	mov r2, #3
	bl ovy137_21f18f0
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r6, r1]
	cmp r5, #0x1c
	blt _021F1A60
_021F1A88:
	mov r5, #0x1c
_021F1A8A:
	add r0, r5, #0
	sub r0, #0x1c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #4]
	bl sub_02037F04
	add r1, r0, #0
	ldr r3, [sp, #4]
	add r0, r7, #0
	mov r2, #4
	bl ovy137_21f18f0
	lsl r1, r5, #2
	add r5, r5, #1
	str r0, [r6, r1]
	cmp r5, #0x28
	blt _021F1A8A
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F1AB8: .word 0x000002DF
_021F1ABC: .word 0x021F58C0
	thumb_func_end ovy137_21f19c4

	thumb_func_start ovy137_21f1ac0
ovy137_21f1ac0: ; 0x021F1AC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F1AC6:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F1AD2
	bl sub_021F1920
_021F1AD2:
	add r4, r4, #1
	cmp r4, #0x28
	blt _021F1AC6
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy137_21f1ac0

	thumb_func_start ovy137_21f1ae0
ovy137_21f1ae0: ; 0x021F1AE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	ldr r1, [r5]
	add r0, sp, #0
	lsl r2, r1, #3
	ldr r1, _021F1B08 ; =0x021F55E0
	strh r4, [r0]
	ldrh r1, [r1, r2]
	strh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	pop {r3, r4, r5, pc}
	nop
_021F1B08: .word 0x021F55E0
	thumb_func_end ovy137_21f1ae0

	thumb_func_start ovy137_21f1b0c
ovy137_21f1b0c: ; 0x021F1B0C
	push {r3, r4, r5, r6}
	ldrh r4, [r1]
	cmp r4, r3
	bhs _021F1B5C
	lsl r4, r4, #2
	ldr r4, [r2, r4]
	ldr r6, _021F1B64 ; =0x021F55E0
	lsl r5, r4, #3
	ldrh r4, [r1, #2]
	ldrh r6, [r6, r5]
	cmp r6, r4
	bhi _021F1B38
	ldr r6, _021F1B68 ; =0x021F55E2
	ldrh r5, [r6, r5]
	cmp r4, r5
	bhs _021F1B38
	add r2, r4, #1
	strh r2, [r1, #2]
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021F1B38:
	ldrh r4, [r1]
	add r4, r4, #1
	strh r4, [r1]
	ldrh r4, [r1]
	cmp r4, r3
	bhs _021F1B5C
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	lsl r3, r2, #3
	ldr r2, _021F1B64 ; =0x021F55E0
	ldrh r3, [r2, r3]
	strh r3, [r1, #2]
	add r2, r3, #1
	strh r2, [r1, #2]
	lsl r1, r3, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021F1B5C:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021F1B64: .word 0x021F55E0
_021F1B68: .word 0x021F55E2
	thumb_func_end ovy137_21f1b0c

	thumb_func_start ovy137_21f1b6c
ovy137_21f1b6c: ; 0x021F1B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021F1B74:
	lsl r7, r4, #2
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021F1B88
	bl sub_021F1980
	cmp r6, r0
	bne _021F1B88
	ldr r0, [r5, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021F1B88:
	add r4, r4, #1
	cmp r4, #0x28
	blt _021F1B74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1b6c

	thumb_func_start sub_021F1B94
sub_021F1B94: ; 0x021F1B94
	lsl r3, r1, #3
	ldr r1, _021F1BA4 ; =0x021F55E0
	ldrh r1, [r1, r3]
	add r1, r2, r1
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	nop
_021F1BA4: .word 0x021F55E0
	thumb_func_end sub_021F1B94

	thumb_func_start sub_021F1BA8
sub_021F1BA8: ; 0x021F1BA8
	cmp r1, #2
	bne _021F1BBE
	cmp r2, #8
	bhs _021F1BB4
	mov r1, #2
	b _021F1BC4
_021F1BB4:
	sub r2, #8
	lsl r2, r2, #0x10
	mov r1, #3
	lsr r2, r2, #0x10
	b _021F1BC4
_021F1BBE:
	lsl r3, r1, #2
	ldr r1, _021F1BC8 ; =0x021F5598
	ldr r1, [r1, r3]
_021F1BC4:
	ldr r3, _021F1BCC ; =sub_021F1B94
	bx r3
	.align 2, 0
_021F1BC8: .word 0x021F5598
_021F1BCC: .word sub_021F1B94
	thumb_func_end sub_021F1BA8

	thumb_func_start ovy137_21f1bd0
ovy137_21f1bd0: ; 0x021F1BD0
	push {r0, r1, r2, r3}
	thumb_func_end ovy137_21f1bd0

	non_word_aligned_thumb_func_start ovy137_21f1bd2
ovy137_21f1bd2: ; 0x021F1BD2
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r1, sp, #0x24
	mov r2, #1
	add r5, r0, #0
	bl ovy137_21f1ae0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	add r6, sp, #4
	mov r7, #1
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F1BF4:
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x24
	add r3, r7, #0
	bl ovy137_21f1b0c
	add r4, r0, #0
	bne _021F1C10
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_021F1C10:
	bl ovy137_21f195c
	cmp r0, #0
	beq _021F1BF4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy137_21f1bd2

	thumb_func_start ovy137_21f1c24
ovy137_21f1c24: ; 0x021F1C24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x42
	str r0, [sp]
	ldr r3, _021F1C70 ; =0x021F58D8
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x14
	str r0, [r2]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #6
	bl sub_020395AC
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy137_21f1d7c
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F1C70: .word 0x021F58D8
	thumb_func_end ovy137_21f1c24

	thumb_func_start ovy137_21f1c74
ovy137_21f1c74: ; 0x021F1C74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020395E4
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1c74

	thumb_func_start ovy137_21f1c88
ovy137_21f1c88: ; 0x021F1C88
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_021812CC
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _021F1CA2
	cmp r0, #0
	bne _021F1CAE
	mov r0, #1
	str r0, [r4, #0x28]
	b _021F1CAC
_021F1CA2:
	cmp r0, #1
	bne _021F1CAE
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
_021F1CAC:
	str r0, [r4, #0x20]
_021F1CAE:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021F1CC4
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	bl ovy137_21f1e90
	cmp r0, #0
	bne _021F1CC4
	mov r0, #0
	str r0, [r4, #0x28]
_021F1CC4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1c88

	thumb_func_start ovy137_21f1cc8
ovy137_21f1cc8: ; 0x021F1CC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	mov r4, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F1CFC
_021F1CDA:
	add r1, r4, #0
	add r1, #0x94
	lsl r1, r1, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	cmp r0, #0
	beq _021F1CF0
	cmp r4, r6
	beq _021F1CFE
_021F1CF0:
	ldr r0, [r5]
	add r4, r4, #1
	bl sub_02039608
	cmp r4, r0
	blo _021F1CDA
_021F1CFC:
	mov r0, #0
_021F1CFE:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy137_21f1cc8

	thumb_func_start sub_021F1D00
sub_021F1D00: ; 0x021F1D00
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_021F1D00

	thumb_func_start ovy137_21f1d04
ovy137_21f1d04: ; 0x021F1D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r0, #0
	str r6, [sp, #4]
	add r4, r1, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	add r2, sp, #4
	bl ovy12_2167870
	cmp r0, #1
	bne _021F1D5C
	cmp r4, #0
	bne _021F1D24
	mov r6, #1
_021F1D24:
	add r7, sp, #0
_021F1D26:
	ldr r0, [sp]
	bl sub_02167008
	bl sub_021F1F0C
	cmp r0, #0
	beq _021F1D4E
	ldr r0, [sp]
	bl sub_02167010
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_0203950C
	cmp r4, r0
	bne _021F1D4E
	ldr r0, [sp]
	add r1, r6, #0
	bl ovy12_2167534
_021F1D4E:
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	add r2, sp, #4
	bl ovy12_2167870
	cmp r0, #1
	beq _021F1D26
_021F1D5C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f1d04

	thumb_func_start ovy137_21f1d60
ovy137_21f1d60: ; 0x021F1D60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	mov r2, #9
	bl sub_020395F8
	add r1, r0, #0
	ldr r0, [r5, #8]
	add r2, r4, #0
	bl sub_020395F8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1d60

	thumb_func_start ovy137_21f1d7c
ovy137_21f1d7c: ; 0x021F1D7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F1E86
	ldr r0, _021F1E8C ; =0x000029C6
	add r7, r5, #0
	add r0, r0, #1
	str r0, [sp, #0xc]
	add r7, #0x24
	add r6, sp, #0x14
_021F1D9A:
	ldr r0, [r5, #0x18]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #4
	bl sub_020395F8
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #1
	bl sub_020395F8
	add r1, r4, #0
	add r1, #0x94
	str r0, [sp, #8]
	lsl r1, r1, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	ldr r2, [sp, #4]
	ldr r1, [sp]
	cmp r2, r1
	bhi _021F1E7A
	cmp r0, #0
	bne _021F1E7A
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021F1E7A
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x94
	strh r0, [r6]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl sub_020395F8
	strh r0, [r6, #2]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #5
	bl sub_020395F8
	strh r0, [r6, #4]
	mov r0, #1
	strh r0, [r6, #0xc]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #8
	bl sub_020395F8
	cmp r0, #0
	beq _021F1E26
	cmp r0, #1
	bne _021F1E2A
	ldr r0, [sp, #0xc]
	b _021F1E28
_021F1E26:
	ldr r0, _021F1E8C ; =0x000029C6
_021F1E28:
	strh r0, [r6, #0xa]
_021F1E2A:
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #6
	bl sub_020395F8
	strh r0, [r6, #0x14]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #7
	bl sub_020395F8
	strh r0, [r6, #0x16]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #2
	bl sub_020395F8
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #3
	bl sub_020395F8
	add r2, r0, #0
	ldr r1, [sp, #0x10]
	add r0, sp, #0x14
	mov r3, #0
	bl sub_021682C0
	ldr r0, [r5, #0x14]
	bl sub_0203950C
	add r2, r0, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #0x14
	bl ovy12_2166874
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
_021F1E7A:
	ldr r0, [r5]
	add r4, r4, #1
	bl sub_02039608
	cmp r4, r0
	blo _021F1D9A
_021F1E86:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1E8C: .word 0x000029C6
	thumb_func_end ovy137_21f1d7c

	thumb_func_start ovy137_21f1e90
ovy137_21f1e90: ; 0x021F1E90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r0, #0
	str r6, [sp, #4]
	add r7, r1, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	add r2, sp, #4
	bl ovy12_2167870
	cmp r0, #1
	bne _021F1EF8
_021F1EAA:
	ldr r0, [sp]
	bl sub_02167008
	bl sub_021F1F0C
	cmp r0, #0
	beq _021F1EEA
	ldr r0, [sp]
	bl sub_02167010
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_0203950C
	cmp r4, r0
	bne _021F1EEA
	ldr r0, [sp]
	bl ovy12_21674c8
	cmp r0, #0
	beq _021F1ED8
	add r6, r6, #1
	b _021F1EEA
_021F1ED8:
	cmp r7, #0
	beq _021F1EE4
	ldr r0, [sp]
	bl sub_021675E8
	b _021F1EEA
_021F1EE4:
	ldr r0, [sp]
	bl sub_021675F4
_021F1EEA:
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	add r2, sp, #4
	bl ovy12_2167870
	cmp r0, #1
	beq _021F1EAA
_021F1EF8:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1e90
_021F1F00:
	.byte 0x00, 0x68, 0x01, 0x4B, 0x09, 0x22, 0x18, 0x47, 0xF9, 0x95, 0x03, 0x02

	thumb_func_start sub_021F1F0C
sub_021F1F0C: ; 0x021F1F0C
	cmp r0, #0x94
	blt _021F1F18
	cmp r0, #0xa6
	bge _021F1F18
	mov r0, #1
	bx lr
_021F1F18:
	mov r0, #0
	bx lr
	thumb_func_end sub_021F1F0C

	thumb_func_start ovy137_21f1f1c
ovy137_21f1f1c: ; 0x021F1F1C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x4b
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021F1FB0 ; =0x021F58E8
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r3, r6, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	str r7, [r4, #0x38]
	add r0, r5, #0
	bl sub_020396E8
	str r0, [r4, #0x14]
	mov r0, #4
	mov r1, #0x2a
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x18]
	mov r0, #7
	mov r1, #0xd
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x1c]
	mov r0, #3
	mov r1, #4
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x20]
	mov r0, #8
	mov r1, #0x16
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x24]
	mov r0, #9
	mov r1, #0x17
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x28]
	mov r0, #5
	mov r1, #0xb
	add r2, r5, #0
	bl sub_020395AC
	str r0, [r4, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy137_21f19c4
	add r1, r5, #0
	str r0, [r4, #0x30]
	bl ovy137_21f1710
	str r0, [r4, #0x34]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1FB0: .word 0x021F58E8
	thumb_func_end ovy137_21f1f1c

	thumb_func_start ovy137_21f1fb4
ovy137_21f1fb4: ; 0x021F1FB4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021F1740
	ldr r0, [r4, #0x30]
	bl ovy137_21f1ac0
	ldr r0, [r4, #0x2c]
	bl sub_020395E4
	ldr r0, [r4, #0x28]
	bl sub_020395E4
	ldr r0, [r4, #0x24]
	bl sub_020395E4
	ldr r0, [r4, #0x20]
	bl sub_020395E4
	ldr r0, [r4, #0x1c]
	bl sub_020395E4
	ldr r0, [r4, #0x18]
	bl sub_020395E4
	ldr r0, [r4, #0x14]
	bl sub_02039720
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f1fb4

	thumb_func_start sub_021F1FF8
sub_021F1FF8: ; 0x021F1FF8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021F1FF8

	thumb_func_start sub_021F1FFC
sub_021F1FFC: ; 0x021F1FFC
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021F1FFC

	thumb_func_start sub_021F2000
sub_021F2000: ; 0x021F2000
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021F2000

	thumb_func_start sub_021F2004
sub_021F2004: ; 0x021F2004
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_021F2004
_021F2008:
	.byte 0x40, 0x6A, 0x70, 0x47

	thumb_func_start sub_021F200C
sub_021F200C: ; 0x021F200C
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_021F200C

	thumb_func_start sub_021F2010
sub_021F2010: ; 0x021F2010
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021F2010

	thumb_func_start sub_021F2014
sub_021F2014: ; 0x021F2014
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_021F2014

	thumb_func_start sub_021F2018
sub_021F2018: ; 0x021F2018
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_021F2018

	thumb_func_start sub_021F201C
sub_021F201C: ; 0x021F201C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F201C

	thumb_func_start sub_021F2020
sub_021F2020: ; 0x021F2020
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021F2020

	thumb_func_start sub_021F2024
sub_021F2024: ; 0x021F2024
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021F2024

	thumb_func_start sub_021F2028
sub_021F2028: ; 0x021F2028
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021F2028

	thumb_func_start sub_021F202C
sub_021F202C: ; 0x021F202C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021F202C

	thumb_func_start sub_021F2030
sub_021F2030: ; 0x021F2030
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_021F2030

	thumb_func_start sub_021F2034
sub_021F2034: ; 0x021F2034
	cmp r0, #0
	beq _021F203A
	add r1, r2, #0
_021F203A:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021F2034

	thumb_func_start ovy137_21f2040
ovy137_21f2040: ; 0x021F2040
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp, #8]
	ldr r0, [sp, #0x78]
	str r1, [sp, #0xc]
	str r0, [sp, #0x78]
	add r0, r1, #0
	add r5, r2, #0
	str r3, [sp, #0x10]
	bl sub_021F2014
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	bl sub_021F202C
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	bl sub_021F1FFC
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	bl sub_021F1FF8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	bl sub_021F2000
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	bl sub_021F200C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl sub_021F201C
	add r7, r0, #0
	mov r0, #0
	mov r6, #0
	mov r4, #0
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _021F20B8
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl ovy137_21f1968
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021F1984
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x1f
	add r2, r6, #0
	bl ovy137_21f1968
	add r6, r0, #0
_021F20B8:
	ldr r0, [sp, #8]
	cmp r0, #0xb0
	bls _021F20C2
	bl _021F2E40
_021F20C2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F20CE: ; jump table
	.short _021F2230 - _021F20CE - 2 ; case 0
	.short _021F2230 - _021F20CE - 2 ; case 1
	.short _021F2230 - _021F20CE - 2 ; case 2
	.short _021F2230 - _021F20CE - 2 ; case 3
	.short _021F22B0 - _021F20CE - 2 ; case 4
	.short _021F2312 - _021F20CE - 2 ; case 5
	.short _021F2386 - _021F20CE - 2 ; case 6
	.short _021F2E40 - _021F20CE - 2 ; case 7
	.short _021F23C0 - _021F20CE - 2 ; case 8
	.short _021F23D2 - _021F20CE - 2 ; case 9
	.short _021F23E4 - _021F20CE - 2 ; case 10
	.short _021F23F6 - _021F20CE - 2 ; case 11
	.short _021F2C1A - _021F20CE - 2 ; case 12
	.short _021F2C1A - _021F20CE - 2 ; case 13
	.short _021F2C1A - _021F20CE - 2 ; case 14
	.short _021F2C1A - _021F20CE - 2 ; case 15
	.short _021F2C1A - _021F20CE - 2 ; case 16
	.short _021F2C1A - _021F20CE - 2 ; case 17
	.short _021F2C1A - _021F20CE - 2 ; case 18
	.short _021F2C1A - _021F20CE - 2 ; case 19
	.short _021F2E40 - _021F20CE - 2 ; case 20
	.short _021F2E40 - _021F20CE - 2 ; case 21
	.short _021F2E40 - _021F20CE - 2 ; case 22
	.short _021F2E40 - _021F20CE - 2 ; case 23
	.short _021F2E40 - _021F20CE - 2 ; case 24
	.short _021F2E40 - _021F20CE - 2 ; case 25
	.short _021F2E40 - _021F20CE - 2 ; case 26
	.short _021F2E40 - _021F20CE - 2 ; case 27
	.short _021F2E40 - _021F20CE - 2 ; case 28
	.short _021F2E40 - _021F20CE - 2 ; case 29
	.short _021F2E40 - _021F20CE - 2 ; case 30
	.short _021F2E40 - _021F20CE - 2 ; case 31
	.short _021F2E40 - _021F20CE - 2 ; case 32
	.short _021F2E40 - _021F20CE - 2 ; case 33
	.short _021F2E40 - _021F20CE - 2 ; case 34
	.short _021F2E40 - _021F20CE - 2 ; case 35
	.short _021F2E40 - _021F20CE - 2 ; case 36
	.short _021F2E40 - _021F20CE - 2 ; case 37
	.short _021F2E40 - _021F20CE - 2 ; case 38
	.short _021F2E40 - _021F20CE - 2 ; case 39
	.short _021F2E40 - _021F20CE - 2 ; case 40
	.short _021F2E40 - _021F20CE - 2 ; case 41
	.short _021F2E40 - _021F20CE - 2 ; case 42
	.short _021F2E40 - _021F20CE - 2 ; case 43
	.short _021F2E40 - _021F20CE - 2 ; case 44
	.short _021F2E40 - _021F20CE - 2 ; case 45
	.short _021F2E40 - _021F20CE - 2 ; case 46
	.short _021F2E40 - _021F20CE - 2 ; case 47
	.short _021F2E40 - _021F20CE - 2 ; case 48
	.short _021F2E40 - _021F20CE - 2 ; case 49
	.short _021F241E - _021F20CE - 2 ; case 50
	.short _021F257C - _021F20CE - 2 ; case 51
	.short _021F25F6 - _021F20CE - 2 ; case 52
	.short _021F2608 - _021F20CE - 2 ; case 53
	.short _021F261A - _021F20CE - 2 ; case 54
	.short _021F262C - _021F20CE - 2 ; case 55
	.short _021F263E - _021F20CE - 2 ; case 56
	.short _021F266C - _021F20CE - 2 ; case 57
	.short _021F267E - _021F20CE - 2 ; case 58
	.short _021F26AC - _021F20CE - 2 ; case 59
	.short _021F26BE - _021F20CE - 2 ; case 60
	.short _021F2E40 - _021F20CE - 2 ; case 61
	.short _021F26E2 - _021F20CE - 2 ; case 62
	.short _021F2E40 - _021F20CE - 2 ; case 63
	.short _021F2E40 - _021F20CE - 2 ; case 64
	.short _021F2E40 - _021F20CE - 2 ; case 65
	.short _021F2E40 - _021F20CE - 2 ; case 66
	.short _021F2E40 - _021F20CE - 2 ; case 67
	.short _021F2E40 - _021F20CE - 2 ; case 68
	.short _021F2E40 - _021F20CE - 2 ; case 69
	.short _021F2E40 - _021F20CE - 2 ; case 70
	.short _021F2E40 - _021F20CE - 2 ; case 71
	.short _021F2E40 - _021F20CE - 2 ; case 72
	.short _021F2E40 - _021F20CE - 2 ; case 73
	.short _021F2E40 - _021F20CE - 2 ; case 74
	.short _021F2E40 - _021F20CE - 2 ; case 75
	.short _021F2E40 - _021F20CE - 2 ; case 76
	.short _021F2E40 - _021F20CE - 2 ; case 77
	.short _021F2E40 - _021F20CE - 2 ; case 78
	.short _021F2E40 - _021F20CE - 2 ; case 79
	.short _021F26F4 - _021F20CE - 2 ; case 80
	.short _021F2706 - _021F20CE - 2 ; case 81
	.short _021F2718 - _021F20CE - 2 ; case 82
	.short _021F272A - _021F20CE - 2 ; case 83
	.short _021F273C - _021F20CE - 2 ; case 84
	.short _021F274E - _021F20CE - 2 ; case 85
	.short _021F2922 - _021F20CE - 2 ; case 86
	.short _021F295E - _021F20CE - 2 ; case 87
	.short _021F2C94 - _021F20CE - 2 ; case 88
	.short _021F2D60 - _021F20CE - 2 ; case 89
	.short _021F2D72 - _021F20CE - 2 ; case 90
	.short _021F2D84 - _021F20CE - 2 ; case 91
	.short _021F2D96 - _021F20CE - 2 ; case 92
	.short _021F2DCC - _021F20CE - 2 ; case 93
	.short _021F2DBA - _021F20CE - 2 ; case 94
	.short _021F2DA8 - _021F20CE - 2 ; case 95
	.short _021F2DDE - _021F20CE - 2 ; case 96
	.short _021F2E40 - _021F20CE - 2 ; case 97
	.short _021F2E40 - _021F20CE - 2 ; case 98
	.short _021F2E40 - _021F20CE - 2 ; case 99
	.short _021F2760 - _021F20CE - 2 ; case 100
	.short _021F27C0 - _021F20CE - 2 ; case 101
	.short _021F2820 - _021F20CE - 2 ; case 102
	.short _021F285C - _021F20CE - 2 ; case 103
	.short _021F286E - _021F20CE - 2 ; case 104
	.short _021F2880 - _021F20CE - 2 ; case 105
	.short _021F2892 - _021F20CE - 2 ; case 106
	.short _021F28A4 - _021F20CE - 2 ; case 107
	.short _021F28B6 - _021F20CE - 2 ; case 108
	.short _021F2E40 - _021F20CE - 2 ; case 109
	.short _021F2E40 - _021F20CE - 2 ; case 110
	.short _021F2E40 - _021F20CE - 2 ; case 111
	.short _021F28C8 - _021F20CE - 2 ; case 112
	.short _021F28DA - _021F20CE - 2 ; case 113
	.short _021F28EC - _021F20CE - 2 ; case 114
	.short _021F28FE - _021F20CE - 2 ; case 115
	.short _021F2910 - _021F20CE - 2 ; case 116
	.short _021F2E40 - _021F20CE - 2 ; case 117
	.short _021F2E40 - _021F20CE - 2 ; case 118
	.short _021F2E40 - _021F20CE - 2 ; case 119
	.short _021F297C - _021F20CE - 2 ; case 120
	.short _021F2E40 - _021F20CE - 2 ; case 121
	.short _021F2E40 - _021F20CE - 2 ; case 122
	.short _021F2E40 - _021F20CE - 2 ; case 123
	.short _021F2E40 - _021F20CE - 2 ; case 124
	.short _021F2970 - _021F20CE - 2 ; case 125
	.short _021F2E40 - _021F20CE - 2 ; case 126
	.short _021F2E40 - _021F20CE - 2 ; case 127
	.short _021F2E40 - _021F20CE - 2 ; case 128
	.short _021F2E40 - _021F20CE - 2 ; case 129
	.short _021F2976 - _021F20CE - 2 ; case 130
	.short _021F2E40 - _021F20CE - 2 ; case 131
	.short _021F2E40 - _021F20CE - 2 ; case 132
	.short _021F2E40 - _021F20CE - 2 ; case 133
	.short _021F2E40 - _021F20CE - 2 ; case 134
	.short _021F2E40 - _021F20CE - 2 ; case 135
	.short _021F2E40 - _021F20CE - 2 ; case 136
	.short _021F2E40 - _021F20CE - 2 ; case 137
	.short _021F2E40 - _021F20CE - 2 ; case 138
	.short _021F2E40 - _021F20CE - 2 ; case 139
	.short _021F298E - _021F20CE - 2 ; case 140
	.short _021F29A0 - _021F20CE - 2 ; case 141
	.short _021F29B4 - _021F20CE - 2 ; case 142
	.short _021F29C6 - _021F20CE - 2 ; case 143
	.short _021F29D8 - _021F20CE - 2 ; case 144
	.short _021F29EC - _021F20CE - 2 ; case 145
	.short _021F2E40 - _021F20CE - 2 ; case 146
	.short _021F2E40 - _021F20CE - 2 ; case 147
	.short _021F2E40 - _021F20CE - 2 ; case 148
	.short _021F2E40 - _021F20CE - 2 ; case 149
	.short _021F2ABA - _021F20CE - 2 ; case 150
	.short _021F2ACC - _021F20CE - 2 ; case 151
	.short _021F2AE0 - _021F20CE - 2 ; case 152
	.short _021F2AF2 - _021F20CE - 2 ; case 153
	.short _021F2B06 - _021F20CE - 2 ; case 154
	.short _021F2B18 - _021F20CE - 2 ; case 155
	.short _021F2B2C - _021F20CE - 2 ; case 156
	.short _021F2B3E - _021F20CE - 2 ; case 157
	.short _021F2B52 - _021F20CE - 2 ; case 158
	.short _021F2B64 - _021F20CE - 2 ; case 159
	.short _021F2B76 - _021F20CE - 2 ; case 160
	.short _021F2B8A - _021F20CE - 2 ; case 161
	.short _021F2B9C - _021F20CE - 2 ; case 162
	.short _021F29FE - _021F20CE - 2 ; case 163
	.short _021F2A12 - _021F20CE - 2 ; case 164
	.short _021F2A24 - _021F20CE - 2 ; case 165
	.short _021F2A38 - _021F20CE - 2 ; case 166
	.short _021F2A4A - _021F20CE - 2 ; case 167
	.short _021F2A5E - _021F20CE - 2 ; case 168
	.short _021F2A94 - _021F20CE - 2 ; case 169
	.short _021F2BAE - _021F20CE - 2 ; case 170
	.short _021F2BC0 - _021F20CE - 2 ; case 171
	.short _021F2BD2 - _021F20CE - 2 ; case 172
	.short _021F2BE4 - _021F20CE - 2 ; case 173
	.short _021F2BF6 - _021F20CE - 2 ; case 174
	.short _021F2C08 - _021F20CE - 2 ; case 175
	.short _021F2AA8 - _021F20CE - 2 ; case 176
_021F2230:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r1, #0x50
	mov r2, #0
	mov r6, #0
	bl ovy137_21f1968
	ldr r1, [sp, #8]
	add r7, r0, #0
	add r1, #0x54
	add r0, r5, #0
	mov r2, #0
	str r1, [sp, #8]
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x78]
	asr r3, r5, #9
	mov r2, #0x7f
	and r2, r3
	mov r1, #0
	mov r3, #2
	bl sub_0202451C
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x78]
	asr r3, r5, #5
	mov r2, #0xf
	and r2, r3
	mov r1, #2
	mov r3, #2
	bl sub_0202451C
	mov r2, #0x1f
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x78]
	mov r1, #3
	and r2, r5
	mov r3, #2
	bl sub_0202451C
	cmp r7, #0
	beq _021F22AA
	ldr r1, _021F23FC ; =0x00000418
	add r0, r4, #0
	add r2, r1, #0
	add r2, #0x21
	bl sub_021F2034
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021F22AA:
	add sp, #0x64
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_021F22B0:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021F22CC
	cmp r6, #5
	bne _021F22CC
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0xc
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F22CC:
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	mov r7, #6
	bl ovy137_21f1968
	add r6, r0, #0
	bne _021F22F2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	bl ovy137_21f3d54
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy137_21f1974
_021F22F2:
	cmp r4, #0
	bne _021F2304
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	mov r2, #0
	bl sub_020395F8
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_021F2304:
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	mov r2, #1
	bl sub_020395F8
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_021F2312:
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	bl sub_020394B0
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	mov r1, #0x46
	lsl r1, r1, #4
	add r2, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r2, #8
	bl sub_021F2034
	add r0, r5, r0
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2386:
	add r0, r5, #0
	bl sub_021F1980
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x2c]
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	mov r1, #0x52
	lsl r1, r1, #2
	add r2, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r2, #8
	bl sub_021F2034
	add r0, r5, r0
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F23C0:
	ldr r1, _021F2400 ; =0x0000045C
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F23D2:
	ldr r1, _021F2404 ; =0x0000045E
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F23E4:
	ldr r1, _021F2408 ; =0x0000045A
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F23F6:
	ldr r1, _021F23FC ; =0x00000418
	b _021F240C
	nop
_021F23FC: .word 0x00000418
_021F2400: .word 0x0000045C
_021F2404: .word 0x0000045E
_021F2408: .word 0x0000045A
_021F240C:
	add r0, r4, #0
	add r2, r1, #0
	add r2, #0x21
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F241E:
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #0
	bl ovy137_21f1968
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #0
	bl ovy137_21f1968
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy137_21f1968
	sub r0, #0x16
	cmp r0, #1
	bhi _021F250A
	cmp r6, #8
	bne _021F2476
	add r0, r4, #0
	mov r1, #8
	mov r2, #0x1b
	bl sub_021F2034
	cmp r7, #0
	bne _021F246A
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0x25
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F246A:
	add r0, r0, r7
	sub r0, r0, #1
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2476:
	cmp r6, #9
	bne _021F248C
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x22
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F248C:
	cmp r6, #7
	bne _021F24BC
	add r0, r5, #0
	mov r1, #0x5c
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _021F24A2
	mov r2, #1
_021F24A2:
	ldr r0, [sp, #0x78]
	mov r1, #1
	bl sub_020243D0
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x1a
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F24BC:
	cmp r6, #6
	bne _021F24EC
	add r0, r5, #0
	mov r1, #0x5c
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _021F24D2
	mov r2, #1
_021F24D2:
	ldr r0, [sp, #0x78]
	mov r1, #1
	bl sub_020243D0
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x19
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F24EC:
	cmp r6, #0
	bne _021F24F4
	bl _021F2E40
_021F24F4:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl sub_021F2034
	add r0, r0, r6
	sub r0, r0, #1
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F250A:
	cmp r6, #6
	bne _021F253A
	add r0, r5, #0
	mov r1, #0x5c
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _021F2520
	mov r2, #1
_021F2520:
	ldr r0, [sp, #0x78]
	mov r1, #1
	bl sub_020243D0
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x19
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F253A:
	cmp r6, #7
	bne _021F256A
	add r0, r5, #0
	mov r1, #0x5c
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _021F2550
	mov r2, #1
_021F2550:
	ldr r0, [sp, #0x78]
	mov r1, #1
	bl sub_020243D0
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x1a
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F256A:
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0x26
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F257C:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ovy137_21f1968
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ovy137_21f1968
	add r5, r0, #0
	cmp r6, #0
	beq _021F25C4
	cmp r5, #0
	beq _021F25C4
	ldr r0, [sp, #0x78]
	mov r1, #1
	add r2, r6, #0
	bl sub_020245E0
	ldr r0, [sp, #0x78]
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl sub_02024630
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x28
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F25C4:
	cmp r6, #0
	beq _021F25E4
	ldr r0, [sp, #0x78]
	mov r1, #1
	add r2, r6, #0
	bl sub_020245E0
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #0x2c
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F25E4:
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x2a
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F25F6:
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #0x37
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2608:
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x38
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F261A:
	add r0, r4, #0
	mov r1, #0x35
	mov r2, #0x39
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F262C:
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0x3a
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F263E:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021F265A
	cmp r6, #5
	bne _021F265A
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0xd
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F265A:
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0x4c
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F266C:
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0x32
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F267E:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021F269A
	cmp r6, #5
	bne _021F269A
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x16
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F269A:
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x30
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F26AC:
	add r0, r4, #0
	mov r1, #0x2d
	mov r2, #0x2e
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F26BE:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021F26DA
	cmp r6, #5
	bne _021F26DA
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0xe
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F26DA:
	mov r0, #0x43
	add sp, #0x64
	lsl r0, r0, #2
	pop {r4, r5, r6, r7, pc}
_021F26E2:
	ldr r1, _021F2A64 ; =0x000005CC
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F26F4:
	add r0, r4, #0
	mov r1, #0x3f
	mov r2, #0x40
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2706:
	add r0, r4, #0
	mov r1, #0x41
	mov r2, #0x42
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2718:
	add r0, r4, #0
	mov r1, #0x43
	mov r2, #0x44
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F272A:
	add r0, r4, #0
	mov r1, #0x45
	mov r2, #0x46
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F273C:
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0x48
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F274E:
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0x4a
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2760:
	cmp r6, #3
	bhi _021F2778
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2770: ; jump table
	.short _021F2778 - _021F2770 - 2 ; case 0
	.short _021F278A - _021F2770 - 2 ; case 1
	.short _021F27AE - _021F2770 - 2 ; case 2
	.short _021F279C - _021F2770 - 2 ; case 3
_021F2778:
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #0x7e
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F278A:
	add r0, r4, #0
	mov r1, #0x7b
	mov r2, #0x7f
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F279C:
	add r0, r4, #0
	mov r1, #0x7c
	mov r2, #0x80
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F27AE:
	add r0, r4, #0
	mov r1, #0x7d
	mov r2, #0x81
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F27C0:
	cmp r6, #3
	bhi _021F27D8
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F27D0: ; jump table
	.short _021F27D8 - _021F27D0 - 2 ; case 0
	.short _021F27EA - _021F27D0 - 2 ; case 1
	.short _021F280E - _021F27D0 - 2 ; case 2
	.short _021F27FC - _021F27D0 - 2 ; case 3
_021F27D8:
	add r0, r4, #0
	mov r1, #0x82
	mov r2, #0x86
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F27EA:
	add r0, r4, #0
	mov r1, #0x83
	mov r2, #0x87
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F27FC:
	add r0, r4, #0
	mov r1, #0x84
	mov r2, #0x88
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F280E:
	add r0, r4, #0
	mov r1, #0x85
	mov r2, #0x89
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2820:
	ldr r0, [sp, #0x34]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #0x28]
	bl sub_020396D0
	cmp r5, r0
	blo _021F284A
	add r0, r4, #0
	mov r1, #0x94
	mov r2, #0xa5
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F284A:
	add r0, r4, #0
	mov r1, #0x8a
	mov r2, #0x9b
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F285C:
	add r0, r4, #0
	mov r1, #0x8e
	mov r2, #0x9f
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F286E:
	add r0, r4, #0
	mov r1, #0x8f
	mov r2, #0xa0
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2880:
	add r0, r4, #0
	mov r1, #0x91
	mov r2, #0xa2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2892:
	add r0, r4, #0
	mov r1, #0x90
	mov r2, #0xa1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28A4:
	add r0, r4, #0
	mov r1, #0x92
	mov r2, #0xa3
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28B6:
	add r0, r4, #0
	mov r1, #0x93
	mov r2, #0xa4
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28C8:
	add r0, r4, #0
	mov r1, #0x8d
	mov r2, #0x9e
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28DA:
	add r0, r4, #0
	mov r1, #0x8b
	mov r2, #0x9c
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28EC:
	add r0, r4, #0
	mov r1, #0x8c
	mov r2, #0x9d
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F28FE:
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0xaa
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2910:
	add r0, r4, #0
	mov r1, #0x9a
	mov r2, #0xab
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2922:
	add r0, r5, #0
	bl sub_021F1980
	bl sub_02038470
	mov r1, #1
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #9
	blo _021F294C
	add r0, r4, #0
	mov r1, #0x50
	mov r2, #0x55
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F294C:
	add r0, r4, #0
	mov r1, #0x4f
	mov r2, #0x54
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F295E:
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0x4e
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2970:
	add sp, #0x64
	mov r0, #0x3d
	pop {r4, r5, r6, r7, pc}
_021F2976:
	add sp, #0x64
	mov r0, #0x3e
	pop {r4, r5, r6, r7, pc}
_021F297C:
	add r0, r4, #0
	mov r1, #0x3b
	mov r2, #0x3c
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F298E:
	ldr r1, _021F2A68 ; =0x00000169
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29A0:
	mov r1, #0x5a
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29B4:
	ldr r1, _021F2A6C ; =0x0000016A
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29C6:
	ldr r1, _021F2A70 ; =0x0000016B
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29D8:
	mov r1, #0x5b
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29EC:
	ldr r1, _021F2A74 ; =0x0000016D
	add r0, r4, #0
	add r2, r1, #6
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F29FE:
	mov r1, #0x56
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A12:
	ldr r1, _021F2A78 ; =0x0000015A
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A24:
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A38:
	ldr r1, _021F2A7C ; =0x0000015E
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A4A:
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A5E:
	ldr r1, _021F2A80 ; =0x00000162
	b _021F2A84
	nop
_021F2A64: .word 0x000005CC
_021F2A68: .word 0x00000169
_021F2A6C: .word 0x0000016A
_021F2A70: .word 0x0000016B
_021F2A74: .word 0x0000016D
_021F2A78: .word 0x0000015A
_021F2A7C: .word 0x0000015E
_021F2A80: .word 0x00000162
_021F2A84:
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2A94:
	mov r1, #0x59
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2AA8:
	ldr r1, _021F2CDC ; =0x00000166
	add r0, r4, #0
	add r2, r1, #1
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2ABA:
	ldr r1, _021F2CE0 ; =0x00000175
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2ACC:
	mov r1, #0x5d
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2AE0:
	ldr r1, _021F2CE4 ; =0x00000179
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2AF2:
	mov r1, #0x5e
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B06:
	ldr r1, _021F2CE8 ; =0x0000017D
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B18:
	mov r1, #0x5f
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #2
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B2C:
	ldr r1, _021F2CEC ; =0x00000181
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B3E:
	mov r1, #6
	lsl r1, r1, #6
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B52:
	ldr r1, _021F2CF0 ; =0x00000182
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B64:
	ldr r1, _021F2CF4 ; =0x00000183
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B76:
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B8A:
	ldr r1, _021F2CF8 ; =0x00000185
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2B9C:
	ldr r1, _021F2CFC ; =0x00000186
	add r0, r4, #0
	add r2, r1, #7
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2BAE:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0xb
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2BC0:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x11
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2BD2:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x12
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2BE4:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x13
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2BF6:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x14
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2C08:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	mov r2, #0x15
	bl ovy137_21f44ac
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2C1A:
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x38]
	sub r2, #0xc
	str r2, [sp, #8]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_021F1B94
	add r5, r0, #0
	bl sub_021F1980
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl sub_02039798
	mov r1, #0
	bl sub_020397CC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021F1980
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	add r3, sp, #0x78
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldrh r3, [r3, #4]
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	bl ovy137_21f4930
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r5, #2
	bl ovy137_21f1968
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x78]
	mov r1, #0
	add r2, r6, #0
	str r5, [sp, #4]
	bl sub_0202437C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, _021F2D00 ; =0x00000875
	add sp, #0x64
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2C94:
	add r2, sp, #0x40
	mov r0, #0
	mov r1, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	add r0, r5, #0
	mov r6, #0
	bl sub_021F1980
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r5, #0
_021F2CB4:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0203888C
	str r0, [sp, #0x3c]
	bl sub_020384E0
	cmp r0, #0
	bne _021F2D04
	ldr r0, [sp, #0x3c]
	mov r1, #0x1f
	mov r2, #0
	bl sub_020385A8
	cmp r0, #2
	bne _021F2D04
	mov r0, #1
	str r0, [sp, #0x14]
	b _021F2D0A
	nop
_021F2CDC: .word 0x00000166
_021F2CE0: .word 0x00000175
_021F2CE4: .word 0x00000179
_021F2CE8: .word 0x0000017D
_021F2CEC: .word 0x00000181
_021F2CF0: .word 0x00000182
_021F2CF4: .word 0x00000183
_021F2CF8: .word 0x00000185
_021F2CFC: .word 0x00000186
_021F2D00: .word 0x00000875
_021F2D04:
	add r5, r5, #1
	cmp r5, #4
	blt _021F2CB4
_021F2D0A:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F2D16
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2D16:
	mov r5, #0
_021F2D18:
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	add r2, r5, #0
	bl ovy137_21f4340
	cmp r0, #0
	bne _021F2D2E
	lsl r1, r6, #2
	add r0, sp, #0x40
	str r5, [r0, r1]
	add r6, r6, #1
_021F2D2E:
	add r5, r5, #1
	cmp r5, #8
	ble _021F2D18
	cmp r6, #0
	bne _021F2D3E
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2D3E:
	add r0, r6, #0
	bl sub_02005748
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x67
	mov r2, #0x70
	bl sub_021F2034
	add r1, sp, #0x40
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add sp, #0x64
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2D60:
	add r0, r4, #0
	mov r1, #0x59
	mov r2, #0x60
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2D72:
	add r0, r4, #0
	mov r1, #0x5a
	mov r2, #0x61
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2D84:
	add r0, r4, #0
	mov r1, #0x5b
	mov r2, #0x62
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2D96:
	add r0, r4, #0
	mov r1, #0x5c
	mov r2, #0x63
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2DA8:
	add r0, r4, #0
	mov r1, #0x5d
	mov r2, #0x64
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2DBA:
	add r0, r4, #0
	mov r1, #0x5e
	mov r2, #0x65
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2DCC:
	add r0, r4, #0
	mov r1, #0x5f
	mov r2, #0x66
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2DDE:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ovy137_21f50f4
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl ovy137_21f5294
	cmp r0, #0
	bne _021F2DF8
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2DF8:
	cmp r5, #0x14
	blo _021F2E0E
	add r0, r4, #0
	mov r1, #0x53
	mov r2, #0x58
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2E0E:
	cmp r5, #0xa
	blo _021F2E24
	add r0, r4, #0
	mov r1, #0x52
	mov r2, #0x57
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2E24:
	cmp r5, #5
	blo _021F2E3A
	add r0, r4, #0
	mov r1, #0x51
	mov r2, #0x56
	bl sub_021F2034
	lsl r0, r0, #0x10
	add sp, #0x64
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_021F2E3A:
	add sp, #0x64
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2E40:
	mov r0, #0
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f2040

	thumb_func_start ovy137_21f2e48
ovy137_21f2e48: ; 0x021F2E48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r7, r1, #0
	str r3, [sp, #4]
	bl sub_021F201C
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_021F1FFC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_021F1FF8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02038470
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02039798
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020363E0
	mov r1, #0
	str r1, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_020397CC
	add r0, r4, #0
	mov r1, #0
	bl sub_020397CC
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x24]
_021F2EA8:
	ldr r1, [sp, #0x24]
	mov r0, #6
	add r5, r1, #0
	mul r5, r0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp]
	add r2, r5, #6
	bl sub_020395F8
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp]
	add r2, r5, #7
	bl sub_020395F8
	add r4, r0, #0
	add r5, #8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp]
	add r2, r5, #0
	bl sub_020395F8
	mov r5, #0
	str r0, [sp, #8]
	cmp r6, #0x1b
	bhi _021F2F92
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2EE8: ; jump table
	.short _021F2F20 - _021F2EE8 - 2 ; case 0
	.short _021F2F2A - _021F2EE8 - 2 ; case 1
	.short _021F2F3A - _021F2EE8 - 2 ; case 2
	.short _021F2F3A - _021F2EE8 - 2 ; case 3
	.short _021F2F3A - _021F2EE8 - 2 ; case 4
	.short _021F2F3A - _021F2EE8 - 2 ; case 5
	.short _021F2F3A - _021F2EE8 - 2 ; case 6
	.short _021F2F3A - _021F2EE8 - 2 ; case 7
	.short _021F2F3A - _021F2EE8 - 2 ; case 8
	.short _021F2F3A - _021F2EE8 - 2 ; case 9
	.short _021F2F3A - _021F2EE8 - 2 ; case 10
	.short _021F2F3A - _021F2EE8 - 2 ; case 11
	.short _021F2F3A - _021F2EE8 - 2 ; case 12
	.short _021F2F3A - _021F2EE8 - 2 ; case 13
	.short _021F2F3A - _021F2EE8 - 2 ; case 14
	.short _021F2F3A - _021F2EE8 - 2 ; case 15
	.short _021F2F3A - _021F2EE8 - 2 ; case 16
	.short _021F2F3A - _021F2EE8 - 2 ; case 17
	.short _021F2F92 - _021F2EE8 - 2 ; case 18
	.short _021F2F52 - _021F2EE8 - 2 ; case 19
	.short _021F2F52 - _021F2EE8 - 2 ; case 20
	.short _021F2F52 - _021F2EE8 - 2 ; case 21
	.short _021F2F52 - _021F2EE8 - 2 ; case 22
	.short _021F2F52 - _021F2EE8 - 2 ; case 23
	.short _021F2F52 - _021F2EE8 - 2 ; case 24
	.short _021F2F52 - _021F2EE8 - 2 ; case 25
	.short _021F2F52 - _021F2EE8 - 2 ; case 26
	.short _021F2F52 - _021F2EE8 - 2 ; case 27
_021F2F20:
	ldr r0, [sp, #0x18]
	cmp r0, r4
	bne _021F2F94
_021F2F26:
	mov r5, #1
	b _021F2F94
_021F2F2A:
	add r0, r7, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_020370EC
	cmp r4, r0
	bne _021F2F94
	b _021F2F26
_021F2F3A:
	sub r1, r6, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r7, #0
	add r1, #0x40
	add r2, r5, #0
	bl sub_020370EC
	add r1, r4, #1
	cmp r1, r0
	bne _021F2F94
	b _021F2F26
_021F2F52:
	sub r6, #0x13
	lsl r0, r6, #0x10
	lsr r2, r0, #0x10
	cmp r4, #0
	bne _021F2F6A
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	bl ovy137_21f4340
	cmp r0, #0
	bne _021F2F94
	b _021F2F26
_021F2F6A:
	cmp r2, #8
	bne _021F2F7E
	add r0, r7, #0
	mov r1, #0x2b
	add r2, r5, #0
	bl sub_020370EC
	cmp r0, r4
	blo _021F2F94
	b _021F2F26
_021F2F7E:
	bhs _021F2F94
	add r2, #0x38
	add r1, r2, #0
	add r0, r7, #0
	add r2, r5, #0
	bl sub_020370EC
	cmp r0, r4
	blo _021F2F94
	b _021F2F26
_021F2F92:
	mov r5, #0
_021F2F94:
	cmp r5, #0
	beq _021F2FB4
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _021F2FA8
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	b _021F2FC0
_021F2FA8:
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bge _021F2FB4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
_021F2FB4:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #6
	bge _021F2FC0
	b _021F2EA8
_021F2FC0:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F2FCA
	ldr r1, [sp, #0xc]
	str r1, [r0]
_021F2FCA:
	ldr r0, [sp, #0x14]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f2e48

	thumb_func_start ovy137_21f2fd0
ovy137_21f2fd0: ; 0x021F2FD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	ldr r0, [sp, #0x40]
	str r2, [sp, #4]
	str r0, [sp, #0x40]
	add r0, r2, #0
	str r1, [sp]
	add r5, r3, #0
	ldr r4, [sp, #0x44]
	bl sub_021F1FFC
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	bl sub_021F200C
	mov r2, #0
	str r0, [sp, #0x1c]
	str r2, [sp, #0x14]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_021F1984
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021F3040
	cmp r1, #5
	bne _021F3040
	mov r0, #1
	str r0, [sp, #0x14]
_021F3040:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r3, sp, #0x24
	bl ovy137_21f2e48
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r1, #2
	mov r2, #0
	bl sub_020370EC
	cmp r0, #0
	bne _021F306A
	ldr r3, [sp, #0x24]
	mov r2, #6
	mul r2, r3
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	add r2, #9
	b _021F3076
_021F306A:
	ldr r3, [sp, #0x24]
	mov r2, #6
	mul r2, r3
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	add r2, #0xa
_021F3076:
	bl sub_020395F8
	ldr r1, [sp, #0x40]
	strh r0, [r1]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F30E0
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	mov r2, #4
	bl sub_020395F8
	strh r0, [r4]
	ldr r3, [sp, #0x24]
	mov r2, #6
	mul r2, r3
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	add r2, #8
	bl sub_020395F8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldrh r0, [r4]
	lsl r2, r1, #2
	ldr r1, _021F3124 ; =0x021F5698
	ldr r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	strh r0, [r4]
	add r0, r6, #0
	bl sub_021F1984
	cmp r0, #1
	bne _021F30E0
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl ovy137_21f1968
	cmp r0, #4
	beq _021F30D4
	cmp r0, #5
	bne _021F30E0
	ldrh r0, [r4]
	lsl r0, r0, #0xd
	b _021F30DC
_021F30D4:
	ldrh r1, [r4]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0xa
_021F30DC:
	asr r0, r0, #0xc
	strh r0, [r4]
_021F30E0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F30FC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021F30F4
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	mov r2, #0xf
	b _021F3108
_021F30F4:
	ldr r0, [sp, #0x10]
	add r0, #0xfb
	str r0, [sp, #0x10]
	b _021F311C
_021F30FC:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021F310E
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	mov r2, #0x10
_021F3108:
	bl ovy137_21f44ac
	b _021F311C
_021F310E:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F311A
	mov r0, #1
	lsl r0, r0, #8
	b _021F311C
_021F311A:
	ldr r0, _021F3128 ; =0x00000101
_021F311C:
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F3124: .word 0x021F5698
_021F3128: .word 0x00000101
	thumb_func_end ovy137_21f2fd0

	thumb_func_start ovy137_21f312c
ovy137_21f312c: ; 0x021F312C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_021F202C
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_021F2000
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl sub_02038F00
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	strh r0, [r5]
	ldrh r0, [r5]
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020396D0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	blo _021F3176
	add sp, #0x20
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021F3176:
	add r0, r7, #0
	bl sub_0203968C
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	mov r2, #5
	bl sub_020395F8
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #8]
	add r2, r2, r1
	cmp r2, r0
	bhs _021F31A0
	add r0, r6, #0
	mov r1, #3
	bl sub_02039064
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F31A0:
	ldrh r0, [r5]
	mov r1, #2
	add r0, r0, #1
	strh r0, [r5]
	ldrh r2, [r5]
	add r0, r6, #0
	bl sub_02039064
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl sub_02039064
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_0203968C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	mov r2, #6
	bl sub_020395F8
	str r0, [sp, #0x1c]
	ldrh r2, [r5]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ovy137_21f4294
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	mov r2, #6
	bl sub_020395F8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	beq _021F31EE
	mov r4, #1
_021F31EE:
	cmp r5, #0
	beq _021F3210
	cmp r5, #8
	bne _021F3200
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #1
	bl sub_02039064
_021F3200:
	add r5, #0xf
	add r1, r5, #0
	add r0, r6, #0
	mov r2, #1
	mov r5, #1
	bl sub_02039064
	b _021F3212
_021F3210:
	mov r5, #0
_021F3212:
	cmp r5, #0
	beq _021F3220
	cmp r4, #0
	beq _021F3220
	add sp, #0x20
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021F3220:
	cmp r5, #0
	beq _021F322A
	add sp, #0x20
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021F322A:
	mov r0, #4
	cmp r4, #0
	bne _021F3232
	mov r0, #1
_021F3232:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f312c

	thumb_func_start ovy137_21f3238
ovy137_21f3238: ; 0x021F3238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	add r6, r0, #0
	add r0, r7, #0
	str r2, [sp]
	add r5, r3, #0
	bl sub_021F1FF8
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_021F202C
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02038470
	mov r1, #2
	add r4, r0, #0
	bl sub_020363E0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_02039798
	str r0, [sp, #4]
	mov r1, #3
	bl sub_020397CC
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_020397CC
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	mov r1, #1
	bl sub_020397CC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #1
	bl sub_020363E0
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #9
	blo _021F32A0
	add sp, #0x20
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021F32A0:
	ldr r2, [sp, #0x10]
	ldr r1, [sp]
	add r2, r2, r1
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bhs _021F32BA
	add r0, r4, #0
	mov r1, #2
	bl sub_0203640C
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F32BA:
	add r0, r0, #1
	strh r0, [r5]
	ldrh r2, [r5]
	add r0, r4, #0
	mov r1, #1
	bl sub_0203640C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_0203640C
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0203640C
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	ldrh r2, [r5]
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r3, r3, #0x10
	bl sub_02039738
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0203640C
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_02039798
	add r4, r0, #0
	add r0, r7, #0
	bl ovy137_21f3354
	cmp r0, #0
	beq _021F3322
	ldr r0, [sp, #0xc]
	mov r1, #0x1b
	mov r2, #1
	bl sub_02039064
	ldr r0, [sp, #0xc]
	mov r1, #0x1a
	mov r2, #0
	bl sub_02039064
_021F3322:
	ldr r0, [sp, #4]
	mov r1, #6
	bl sub_020397CC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_020397CC
	cmp r5, r0
	beq _021F333E
	add sp, #0x20
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021F333E:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f3238

	thumb_func_start ovy137_21f3344
ovy137_21f3344: ; 0x021F3344
	push {r3, lr}
	bl sub_021F202C
	mov r1, #0x1b
	mov r2, #0
	bl sub_02038F00
	pop {r3, pc}
	thumb_func_end ovy137_21f3344

	thumb_func_start ovy137_21f3354
ovy137_21f3354: ; 0x021F3354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_021F2014
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021F202C
	ldr r7, _021F33B4 ; =0x021F568C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ovy137_21f1ae0
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	add r6, sp, #4
	mov r4, #1
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
_021F3386:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy137_21f1b0c
	cmp r0, #0
	beq _021F33AE
	bl sub_021F1980
	bl sub_02038470
	add r1, r4, #0
	bl sub_020363E0
	cmp r0, #9
	beq _021F3386
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F33AE:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F33B4: .word 0x021F568C
	thumb_func_end ovy137_21f3354

	thumb_func_start ovy137_21f33b8
ovy137_21f33b8: ; 0x021F33B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x110
	str r0, [sp, #8]
	ldr r0, [sp, #0x128]
	str r2, [sp, #0xc]
	str r0, [sp, #0x128]
	ldr r0, [sp, #0x134]
	add r6, r1, #0
	str r0, [sp, #0x134]
	ldr r0, [sp, #0x128]
	add r7, r3, #0
	ldr r5, [sp, #0x130]
	ldr r4, [sp, #0x138]
	bl sub_021F202C
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x128]
	bl sub_021F1FF8
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x128]
	bl sub_021F2000
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x128]
	bl sub_021F201C
	bl sub_02038A18
	str r0, [sp, #0x2c]
	cmp r6, #0xfe
	beq _021F3400
	cmp r6, #0xff
	bne _021F3408
	mov r6, #0
	b _021F341E
_021F3400:
	ldr r0, [sp, #0x12c]
	bl sub_021F1110
	b _021F3416
_021F3408:
	ldr r0, [sp, #0x128]
	bl sub_021F2014
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl sub_021F1BA8
_021F3416:
	add r6, r0, #0
	bl sub_021F1980
	str r0, [sp, #0x28]
_021F341E:
	ldr r0, [sp, #8]
	cmp r0, #0x17
	bls _021F3426
	b _021F3BD0
_021F3426:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F3432: ; jump table
	.short _021F3462 - _021F3432 - 2 ; case 0
	.short _021F34B8 - _021F3432 - 2 ; case 1
	.short _021F3B1E - _021F3432 - 2 ; case 2
	.short _021F3582 - _021F3432 - 2 ; case 3
	.short _021F35D6 - _021F3432 - 2 ; case 4
	.short _021F3B76 - _021F3432 - 2 ; case 5
	.short _021F362C - _021F3432 - 2 ; case 6
	.short _021F37F2 - _021F3432 - 2 ; case 7
	.short _021F3976 - _021F3432 - 2 ; case 8
	.short _021F39E0 - _021F3432 - 2 ; case 9
	.short _021F3A24 - _021F3432 - 2 ; case 10
	.short _021F3A54 - _021F3432 - 2 ; case 11
	.short _021F3A76 - _021F3432 - 2 ; case 12
	.short _021F3AD8 - _021F3432 - 2 ; case 13
	.short _021F34FC - _021F3432 - 2 ; case 14
	.short _021F3858 - _021F3432 - 2 ; case 15
	.short _021F3900 - _021F3432 - 2 ; case 16
	.short _021F39BC - _021F3432 - 2 ; case 17
	.short _021F3680 - _021F3432 - 2 ; case 18
	.short _021F36D6 - _021F3432 - 2 ; case 19
	.short _021F372C - _021F3432 - 2 ; case 20
	.short _021F378E - _021F3432 - 2 ; case 21
	.short _021F37AE - _021F3432 - 2 ; case 22
	.short _021F37D0 - _021F3432 - 2 ; case 23
_021F3462:
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #8
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	str r0, [sp, #0x3c]
	add r0, r6, #0
	add r6, sp, #0xfc
	add r6, #2
	mov r1, #4
	add r2, r6, #0
	bl ovy137_21f1968
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x3c]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F34B8:
	ldr r0, [sp, #0x28]
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	add r3, r4, #0
	bl ovy137_21f4930
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r6, #2
	bl ovy137_21f1968
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	str r6, [sp, #4]
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F34FC:
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	bl sub_020394B0
	add r2, r0, #0
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	add r3, r4, #0
	bl ovy137_21f4930
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r6, #2
	bl ovy137_21f1968
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	str r6, [sp, #4]
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3582:
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #9
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	str r0, [sp, #0x40]
	add r0, r6, #0
	add r6, sp, #0xec
	mov r1, #5
	add r2, r6, #0
	bl ovy137_21f1968
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x40]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F35D6:
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0xb
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	ldr r0, [sp, #0x134]
	bl sub_0201736C
	bl sub_02008BF0
	add r6, r0, #0
	add r2, sp, #0xd4
	ldr r0, [sp, #0x38]
	mov r1, #1
	add r2, #2
	bl sub_02038F00
	add r1, sp, #0xd4
	add r0, r4, #0
	add r1, #2
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F362C:
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #9
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	str r0, [sp, #0x44]
	add r0, r6, #0
	add r6, sp, #0xc4
	mov r1, #0x58
	add r2, r6, #0
	bl ovy137_21f1968
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3680:
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #9
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	str r0, [sp, #0x48]
	add r0, r6, #0
	add r6, sp, #0xb0
	add r6, #2
	mov r1, #0x59
	add r2, r6, #0
	bl ovy137_21f1968
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x48]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F36D6:
	ldr r0, [sp, #0x134]
	bl sub_0201736C
	ldr r1, _021F3738 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	add r6, r0, #0
	mov r0, #9
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02008BF0
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	mov r1, #0x58
	add r2, sp, #0xa0
	bl sub_020370EC
	add r0, r4, #0
	add r1, sp, #0xa0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F372C:
	ldr r0, [sp, #0x134]
	bl sub_0201736C
	ldr r1, _021F3738 ; =0x00007FFF
	b _021F373C
	nop
_021F3738: .word 0x00007FFF
_021F373C:
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	add r6, r0, #0
	mov r0, #9
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02008BF0
	add r6, r0, #0
	add r2, sp, #0x8c
	ldr r0, [sp, #0x2c]
	mov r1, #0x59
	add r2, #2
	bl sub_020370EC
	add r1, sp, #0x8c
	add r0, r4, #0
	add r1, #2
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F378E:
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl ovy137_21f1968
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F37AE:
	add r0, r6, #0
	mov r1, #0x16
	mov r4, #0
	mov r2, #0
	bl ovy137_21f1968
	add r2, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #2
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F37D0:
	add r0, r6, #0
	mov r1, #0x17
	mov r4, #0
	mov r2, #0
	bl ovy137_21f1968
	add r2, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #2
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F37F2:
	ldr r0, [sp, #0x28]
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x34]
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	ldr r3, _021F3B90 ; =0x00007FFF
	add r6, r0, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	mov r1, #0x46
	lsl r1, r1, #2
	add r1, r6, r1
	str r0, [sp, #0x4c]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x4c]
	bl GFL_MsgDataFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3858:
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_020394B0
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	ldr r3, _021F3B90 ; =0x00007FFF
	add r6, r0, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	mov r1, #0x46
	lsl r1, r1, #2
	add r1, r6, r1
	str r0, [sp, #0x50]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x50]
	bl GFL_MsgDataFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3900:
	ldr r0, [sp, #0x128]
	bl sub_021F201C
	bl sub_02038A18
	add r6, r0, #0
	ldr r0, [sp, #0x134]
	bl sub_0201736C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02038A20
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x34]
	lsr r1, r1, #0x10
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	ldr r3, _021F3B90 ; =0x00007FFF
	add r6, r0, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	mov r1, #0x46
	lsl r1, r1, #2
	add r1, r6, r1
	str r0, [sp, #0x54]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x54]
	bl GFL_MsgDataFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3976:
	ldr r1, _021F3B90 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0x15
	lsr r1, r1, #0x10
	bl sub_02048530
	add r4, r0, #0
	add r6, sp, #0x64
	ldr r0, [sp, #0x38]
	mov r1, #0
	add r2, r6, #0
	bl sub_02038F00
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	str r3, [sp, #4]
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F39BC:
	ldr r0, [sp, #0x38]
	mov r1, #0x1a
	mov r4, #0
	mov r2, #0
	bl sub_02038F00
	add r2, r0, #0
	str r4, [sp]
	mov r4, #7
	mov r3, #1
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r4, r2
	str r3, [sp, #4]
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F39E0:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	bl sub_02039798
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_02038470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020397CC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r2, r4, r0
	bpl _021F3A0E
	mov r2, #0
_021F3A0E:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #5
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3A24:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	bl sub_02039798
	ldr r0, [sp, #0x28]
	bl sub_02038470
	mov r1, #1
	mov r4, #1
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r2, #1
	mov r3, #4
	str r4, [sp, #4]
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3A54:
	ldr r0, [sp, #0x38]
	mov r1, #2
	mov r4, #0
	mov r2, #0
	bl sub_02038F00
	add r2, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #4
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3A76:
	ldr r0, [sp, #0x38]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl sub_0203968C
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	mov r2, #6
	bl sub_020395F8
	ldr r3, _021F3B90 ; =0x00007FFF
	str r0, [sp, #0x58]
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	ldr r1, [sp, #0x58]
	add r6, r0, #0
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_MsgDataFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3AD8:
	ldr r0, [sp, #0x38]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	mov r1, #3
	mov r2, #0
	bl sub_02038F00
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	bl sub_0203968C
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	mov r2, #5
	bl sub_020395F8
	sub r2, r0, r4
	bpl _021F3B08
	mov r2, #0
_021F3B08:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #5
	bl sub_0202451C
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3B1E:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	bl sub_02039798
	mov r1, #0
	bl sub_020397CC
	ldr r3, _021F3B90 ; =0x00007FFF
	add r6, r0, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	mov r1, #5
	lsl r1, r1, #6
	add r1, r6, r1
	str r0, [sp, #0x5c]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x5c]
	bl GFL_MsgDataFree
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
_021F3B76:
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #0
	bl ovy137_21f1968
	ldr r3, _021F3B90 ; =0x00007FFF
	add r6, r0, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	ldr r2, _021F3B94 ; =0x00000261
	b _021F3B98
	.align 2, 0
_021F3B90: .word 0x00007FFF
_021F3B94: .word 0x00000261
_021F3B98:
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	mov r1, #0x5d
	lsl r1, r1, #4
	add r1, r6, r1
	str r0, [sp, #0x60]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x60]
	bl GFL_MsgDataFree
_021F3BD0:
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f33b8

	thumb_func_start ovy137_21f3bd4
ovy137_21f3bd4: ; 0x021F3BD4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021F2000
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021F202C
	mov r1, #2
	mov r2, #0
	mov r4, #0
	bl sub_02038F00
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0203968C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x64
	bl ovy137_21f1990
	add r6, r0, #0
	mov r5, #0
_021F3C0A:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r5, #2
	bl sub_020395F8
	add r4, r4, r0
	cmp r4, r6
	bls _021F3C1E
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3C1E:
	add r5, r5, #1
	cmp r5, #4
	blt _021F3C0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f3bd4

	thumb_func_start ovy137_21f3c28
ovy137_21f3c28: ; 0x021F3C28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #2
	bl sub_020395F8
	add r4, r0, #0
	cmp r4, #0x10
	bhi _021F3C6A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F3C48: ; jump table
	.short _021F3C6E - _021F3C48 - 2 ; case 0
	.short _021F3C72 - _021F3C48 - 2 ; case 1
	.short _021F3C72 - _021F3C48 - 2 ; case 2
	.short _021F3C72 - _021F3C48 - 2 ; case 3
	.short _021F3C72 - _021F3C48 - 2 ; case 4
	.short _021F3C72 - _021F3C48 - 2 ; case 5
	.short _021F3C72 - _021F3C48 - 2 ; case 6
	.short _021F3C72 - _021F3C48 - 2 ; case 7
	.short _021F3C72 - _021F3C48 - 2 ; case 8
	.short _021F3C72 - _021F3C48 - 2 ; case 9
	.short _021F3C72 - _021F3C48 - 2 ; case 10
	.short _021F3C72 - _021F3C48 - 2 ; case 11
	.short _021F3C72 - _021F3C48 - 2 ; case 12
	.short _021F3C72 - _021F3C48 - 2 ; case 13
	.short _021F3C72 - _021F3C48 - 2 ; case 14
	.short _021F3C72 - _021F3C48 - 2 ; case 15
	.short _021F3C72 - _021F3C48 - 2 ; case 16
_021F3C6A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3C6E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F3C72:
	add r0, r5, #0
	bl sub_021F202C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021F2010
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r5, #0
	bl sub_02038F00
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	sub r1, r4, #1
	mov r2, #4
	bl sub_020395F8
	cmp r6, r0
	blo _021F3CA2
	mov r5, #1
_021F3CA2:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f3c28

	thumb_func_start ovy137_21f3ca8
ovy137_21f3ca8: ; 0x021F3CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_021F1FFC
	add r4, r0, #0
	mov r6, #0
	mov r5, #1
	bl sub_02039608
	cmp r0, #1
	bls _021F3CF6
_021F3CC6:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl sub_020395F8
	add r7, r0, #0
	lsl r2, r5, #0x10
	ldr r0, [sp, #4]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl ovy137_21f3c28
	ldr r1, [sp, #8]
	cmp r1, r7
	bne _021F3CEA
	cmp r0, #0
	beq _021F3CEA
	add r6, r6, #1
_021F3CEA:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F3CC6
_021F3CF6:
	ldr r0, [sp]
	mov r1, #3
	add r2, r6, #0
	bl ovy137_21f1990
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r6, #0
	mov r5, #1
	bl sub_02039608
	cmp r0, #1
	bls _021F3D4C
_021F3D10:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl sub_020395F8
	add r7, r0, #0
	lsl r2, r5, #0x10
	ldr r0, [sp, #4]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl ovy137_21f3c28
	ldr r1, [sp, #8]
	cmp r1, r7
	bne _021F3D40
	cmp r0, #0
	beq _021F3D40
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bne _021F3D3E
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3D3E:
	add r6, r6, #1
_021F3D40:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F3D10
_021F3D4C:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f3ca8

	thumb_func_start ovy137_21f3d54
ovy137_21f3d54: ; 0x021F3D54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	add r5, r1, #0
	add r4, r2, #0
	bl ovy137_21f3bd4
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_021F1FF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021F201C
	bl sub_02038A18
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0201736C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02038A20
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021F201C
	str r0, [sp, #0xc]
	mov r4, #0
_021F3DA8:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_02038860
	add r6, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021F3DDC
	add r0, r6, #0
	bl sub_02038470
	add r0, r5, #0
	bl sub_021F1FF8
	add r1, r6, #0
	bl sub_02039798
	mov r1, #0
	bl sub_020397CC
	cmp r0, r7
	bne _021F3DDC
	mov r0, #1
	str r0, [sp, #0x10]
	b _021F3DE2
_021F3DDC:
	add r4, r4, #1
	cmp r4, #8
	blt _021F3DA8
_021F3DE2:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021F3E04
	ldr r0, [sp]
	mov r1, #4
	mov r2, #0x64
	bl ovy137_21f1990
	ldr r1, [sp, #0x14]
	lsl r2, r1, #2
	ldr r1, _021F3E78 ; =0x021F56A4
	ldr r1, [r1, r2]
	cmp r0, r1
	bge _021F3E04
	add sp, #0x20
	add r0, r7, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F3E04:
	ldr r0, [sp]
	ldr r2, [sp, #0x14]
	add r1, r5, #0
	bl ovy137_21f3ca8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021F3E70
	add r0, r5, #0
	bl sub_021F1FFC
	add r0, r5, #0
	bl sub_021F201C
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_021F3E30:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_02038860
	add r6, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021F3E58
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, sp, #0x1c
	bl ovy137_21f2e48
	cmp r0, #0
	beq _021F3E58
	mov r0, #0
	str r0, [sp, #4]
	b _021F3E5E
_021F3E58:
	add r4, r4, #1
	cmp r4, #8
	blt _021F3E30
_021F3E5E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F3E70
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	bl ovy137_21f3ca8
	str r0, [sp, #0x18]
_021F3E70:
	ldr r0, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3E78: .word 0x021F56A4
	thumb_func_end ovy137_21f3d54

	thumb_func_start ovy137_21f3e7c
ovy137_21f3e7c: ; 0x021F3E7C
	push {r3, lr}
	sub sp, #8
	mov r1, #0x1e
	str r1, [sp]
	mov r1, #0x16
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy36_2187bfc
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f3e7c

	thumb_func_start ovy137_21f3e98
ovy137_21f3e98: ; 0x021F3E98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	str r0, [sp, #8]
	ldr r0, [sp, #0xd4]
	str r1, [sp, #0xc]
	str r0, [sp, #0xd4]
	mov r0, #0
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0xd0]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02017B84
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xd0]
	bl sub_0201736C
	str r0, [sp, #0x34]
	mov r0, #0
	mov r4, #0
	add r2, sp, #0x70
	mvn r0, r0
_021F3ECA:
	lsl r1, r4, #3
	add r3, r2, r1
	str r0, [r2, r1]
	add r4, r4, #1
	str r0, [r3, #4]
	cmp r4, #9
	blt _021F3ECA
	ldr r7, [sp, #0xd4]
	mov r5, #7
	add r7, #0x38
_021F3EDE:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_02038860
	add r4, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021F3F54
	add r0, r4, #0
	mov r1, #1
	bl sub_02036E4C
	cmp r0, #0
	beq _021F3F02
	ldr r0, [sp, #0xd4]
	cmp r0, #4
	blo _021F3F26
_021F3F02:
	add r0, r4, #0
	mov r1, #2
	bl sub_02036E4C
	cmp r0, #0
	beq _021F3F14
	ldr r0, [sp, #0xd4]
	cmp r0, #4
	bhs _021F3F26
_021F3F14:
	add r0, r4, #0
	mov r1, #0
	bl sub_02036E4C
	cmp r0, #0
	beq _021F3F54
	ldr r0, [sp, #0xd4]
	cmp r0, #8
	bne _021F3F54
_021F3F26:
	ldr r0, [sp, #0x44]
	lsl r1, r0, #3
	add r0, sp, #0x70
	add r6, r0, r1
	str r5, [r0, r1]
	ldr r0, [sp, #0xd4]
	cmp r0, #8
	bhs _021F3F3C
	add r0, r4, #0
	add r1, r7, #0
	b _021F3F40
_021F3F3C:
	add r0, r4, #0
	mov r1, #0x2b
_021F3F40:
	mov r2, #0
	bl sub_020370EC
	str r0, [r6, #4]
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021F3F54
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
_021F3F54:
	sub r5, r5, #1
	bpl _021F3EDE
	ldr r0, [sp, #0x44]
	mov r1, #8
	lsl r4, r0, #3
	add r0, sp, #0x70
	str r1, [r0, r4]
	ldr r0, [sp, #0xd4]
	cmp r0, #8
	bhs _021F3F72
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0xd4]
	bl sub_02039978
	b _021F3F82
_021F3F72:
	ldr r0, [sp, #0xd0]
	bl sub_02017934
	bl sub_0200FB40
	mov r1, #0
	bl sub_0200FAC8
_021F3F82:
	add r1, sp, #0x74
	str r0, [r1, r4]
	ldr r0, [sp, #0x44]
	mov r7, #0
	cmp r0, #0
	ble _021F3FC4
_021F3F8E:
	ldr r6, [sp, #0x44]
	add r0, r6, #0
	cmp r0, r7
	ble _021F3FBC
_021F3F96:
	sub r0, r6, #1
	lsl r1, r0, #3
	add r0, sp, #0x70
	add r5, r0, r1
	lsl r1, r6, #3
	add r3, r0, r1
	ldr r4, [r5, #4]
	ldr r2, [r3, #4]
	cmp r4, r2
	bhs _021F3FB6
	ldr r1, [r5]
	ldr r0, [r3]
	str r0, [r5]
	str r2, [r5, #4]
	str r4, [r3, #4]
	str r1, [r3]
_021F3FB6:
	sub r6, r6, #1
	cmp r6, r7
	bgt _021F3F96
_021F3FBC:
	ldr r0, [sp, #0x44]
	add r7, r7, #1
	cmp r7, r0
	blt _021F3F8E
_021F3FC4:
	add r0, sp, #0xd0
	ldrh r1, [r0, #8]
	ldr r0, _021F4200 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	add r7, r1, #0
	orr r7, r0
	lsl r1, r7, #0x10
	mov r0, #8
	lsr r1, r1, #0x10
	bl sub_02048530
	lsl r1, r7, #0x10
	str r0, [sp, #0x30]
	mov r0, #0x80
	lsr r1, r1, #0x10
	bl sub_02048530
	lsl r1, r7, #0x10
	add r4, r0, #0
	mov r0, #0x80
	lsr r1, r1, #0x10
	bl sub_02048530
	lsl r3, r7, #0x10
	add r5, r0, #0
	ldr r2, _021F4204 ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	mov r6, #0
	bl sub_0204875C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	bl sub_0218799C
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	bl sub_02187C7C
	ldr r1, _021F4208 ; =0x0000087D
	ldr r2, [sp, #0xd4]
	str r1, [sp, #0x5c]
	add r1, r2, r1
	ldr r0, [sp, #0x2c]
	add r2, r5, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl sub_02022888
	add r1, r0, #0
	lsr r2, r1, #1
	mov r1, #0x78
	sub r1, r1, r2
	lsl r1, r1, #0x10
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	mov r2, #0
	add r3, r5, #0
	bl ovy36_2187c4c
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x48]
	cmp r0, #0
	bgt _021F4052
	b _021F41E4
_021F4052:
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x4c]
	add r0, #9
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x50]
	add r0, #0xa
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x58]
	add r0, #0xb
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	add r0, #0xc
	str r0, [sp, #0x5c]
_021F4070:
	lsl r1, r6, #3
	add r0, sp, #0x70
	add r0, r0, r1
	str r0, [sp, #0x1c]
	add r0, sp, #0x70
	ldr r0, [r0, r1]
	str r0, [sp, #0x24]
	cmp r0, #8
	bne _021F408A
	ldr r0, [sp, #0xc]
	bl sub_02038A18
	b _021F4092
_021F408A:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	bl sub_02038860
_021F4092:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x4c]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x40]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r2, #1
	mov r3, #1
	bl sub_0202451C
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl sub_02022888
	add r1, r0, #0
	lsl r0, r6, #1
	add r0, r0, #3
	mov r2, #0x28
	lsl r7, r0, #3
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsl r2, r7, #0x10
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ovy36_2187c4c
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x50]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x24]
	cmp r0, #8
	bne _021F40FE
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x34]
	mov r1, #0
	bl GFL_CopyVarForText
	b _021F4130
_021F40FE:
	ldr r0, [sp, #0x18]
	mov r1, #2
	mov r2, #0
	bl sub_020370EC
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x18]
	mov r1, #4
	add r2, sp, #0x60
	bl sub_020370EC
	ldr r0, [sp, #0x30]
	add r1, sp, #0x60
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x54]
	mov r1, #0
	bl sub_0202437C
_021F4130:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl sub_02022888
	lsl r2, r7, #0x10
	ldr r0, [sp, #8]
	mov r1, #0x38
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ovy36_2187c4c
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x58]
	add r2, r5, #0
	bl GFL_MsgDataLoadStrbuf
	lsl r2, r7, #0x10
	ldr r0, [sp, #8]
	mov r1, #0x80
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ovy36_2187c4c
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x5c]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x1c]
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #9
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	bl sub_0202451C
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl sub_02022888
	add r2, r0, #0
	mov r1, #0xd8
	sub r1, r1, r2
	lsl r1, r1, #0x10
	lsl r2, r7, #0x10
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ovy36_2187c4c
	ldr r1, [sp, #0x48]
	add r2, r6, #1
	mov r0, #1
	cmp r2, r1
	bge _021F41CC
	ldr r1, [sp, #0x1c]
	ldr r2, [r1, #0xc]
	ldr r1, [sp, #0x20]
	cmp r1, r2
	bne _021F41CC
	mov r0, #0
_021F41CC:
	ldr r1, [sp, #0x3c]
	add r1, r1, #1
	str r1, [sp, #0x3c]
	cmp r0, #0
	beq _021F41DA
	add r0, r1, #0
	str r0, [sp, #0x40]
_021F41DA:
	ldr r0, [sp, #0x48]
	add r6, r6, #1
	cmp r6, r0
	bge _021F41E4
	b _021F4070
_021F41E4:
	ldr r0, [sp, #0x2c]
	bl GFL_MsgDataFree
	add r0, r5, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x30]
	bl GFL_StrBufFree
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F4200: .word 0x00007FFF
_021F4204: .word 0x00000261
_021F4208: .word 0x0000087D
	thumb_func_end ovy137_21f3e98

	thumb_func_start ovy137_21f420c
ovy137_21f420c: ; 0x021F420C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	bl sub_021F202C
	str r0, [sp, #4]
	mov r4, #0
_021F421C:
	mov r0, #0x14
	mul r0, r4
	ldr r1, _021F4258 ; =0x021F57F0
	str r0, [sp]
	add r5, r1, r0
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	blx r2
	cmp r0, #0
	beq _021F424A
	ldr r0, [sp, #4]
	ldr r1, [r5]
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	beq _021F424A
	ldr r0, [sp]
	ldr r1, _021F425C ; =0x021F57F8
	add sp, #8
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F424A:
	add r4, r4, #1
	cmp r4, #8
	blo _021F421C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4258: .word 0x021F57F0
_021F425C: .word 0x021F57F8
	thumb_func_end ovy137_21f420c

	thumb_func_start ovy137_21f4260
ovy137_21f4260: ; 0x021F4260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4290
	mov r7, #9
_021F4272:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020395F8
	cmp r6, r0
	bne _021F4284
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F4284:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02039608
	cmp r4, r0
	blo _021F4272
_021F4290:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f4260

	thumb_func_start ovy137_21f4294
ovy137_21f4294: ; 0x021F4294
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_021F202C
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl sub_021F2000
	str r0, [sp, #0x14]
	mov r6, #0
_021F42AE:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	mul r0, r6
	ldr r1, _021F4338 ; =0x021F57F0
	str r0, [sp, #0xc]
	add r5, r1, r0
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #8]
	mov r4, #0
	mov r7, #0
	bl ovy137_21f4260
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0
	bl sub_020395F8
	ldr r1, [sp, #8]
	cmp r1, r0
	blo _021F42DC
	mov r0, #1
	str r0, [sp, #0x10]
_021F42DC:
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #4]
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	beq _021F42F4
	ldr r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #0
	bne _021F42F4
	mov r4, #1
_021F42F4:
	ldr r0, [sp, #0x18]
	ldr r1, [r5]
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	beq _021F4304
	mov r4, #1
_021F4304:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0xc]
	blx r2
	cmp r0, #0
	beq _021F4312
	mov r7, #1
_021F4312:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021F432A
	cmp r7, #0
	beq _021F432A
	cmp r4, #0
	bne _021F432A
	ldr r0, [sp, #0xc]
	ldr r1, _021F433C ; =0x021F57F8
	add sp, #0x1c
	ldr r0, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_021F432A:
	add r6, r6, #1
	cmp r6, #8
	blo _021F42AE
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F4338: .word 0x021F57F0
_021F433C: .word 0x021F57F8
	thumb_func_end ovy137_21f4294

	thumb_func_start ovy137_21f4340
ovy137_21f4340: ; 0x021F4340
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0
	add r5, r2, #0
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #0
	str r1, [sp, #4]
	mov r4, #0
	add r2, sp, #0x1c
	mvn r0, r0
	mov r6, #0
	mov r7, #0xc
_021F4360:
	add r1, r4, #0
	mul r1, r7
	add r3, r2, r1
	str r0, [r2, r1]
	str r0, [r3, #4]
	add r4, r4, #1
	str r6, [r3, #8]
	cmp r4, #8
	blt _021F4360
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x38
	str r0, [sp, #0x10]
_021F437A:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02038860
	add r4, r0, #0
	bl sub_02036E44
	cmp r0, #0
	bne _021F43F2
	add r0, r4, #0
	mov r1, #1
	bl sub_02036E4C
	cmp r0, #0
	beq _021F439C
	cmp r5, #4
	blo _021F43C0
_021F439C:
	add r0, r4, #0
	mov r1, #2
	bl sub_02036E4C
	cmp r0, #0
	beq _021F43B0
	cmp r5, #4
	blo _021F43B0
	cmp r5, #8
	blo _021F43C0
_021F43B0:
	add r0, r4, #0
	mov r1, #0
	bl sub_02036E4C
	cmp r0, #0
	beq _021F43F2
	cmp r5, #8
	bne _021F43F2
_021F43C0:
	ldr r1, [sp, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r1, sp, #0x1c
	add r7, r1, r0
	str r6, [r1, r0]
	cmp r5, #8
	bne _021F43D6
	add r0, r4, #0
	mov r1, #0x2b
	b _021F43DA
_021F43D6:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
_021F43DA:
	mov r2, #0
	bl sub_020370EC
	str r0, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _021F43EC
	mov r0, #1
	str r0, [r7, #8]
_021F43EC:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_021F43F2:
	add r6, r6, #1
	cmp r6, #8
	blt _021F437A
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	mov ip, r0
	cmp r0, #0
	ble _021F4452
_021F4406:
	ldr r0, [sp, #0xc]
	mov r1, ip
	mov r5, ip
	cmp r1, r0
	ble _021F4446
_021F4410:
	sub r2, r5, #1
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	add r0, sp, #0x1c
	add r4, r0, r1
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	add r0, sp, #0x1c
	add r2, r0, r1
	ldr r3, [r4, #4]
	ldr r0, [r2, #4]
	cmp r3, r0
	bhs _021F443E
	add r6, r2, #0
	ldmia r6!, {r0, r1}
	ldr r7, [r4]
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	str r0, [r4]
	str r3, [r2, #4]
	str r7, [r2]
_021F443E:
	ldr r0, [sp, #0xc]
	sub r5, r5, #1
	cmp r5, r0
	bgt _021F4410
_021F4446:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021F4406
_021F4452:
	ldr r0, [sp, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _021F44A6
	mov r7, #1
	add r4, sp, #0x1c
	mov r1, #0xc
_021F4460:
	add r0, r6, #0
	mul r0, r1
	add r3, r4, r0
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _021F447E
	add r1, sp, #0x20
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021F4478
	mov r0, #8
	str r0, [sp, #8]
_021F4478:
	ldr r0, [sp, #8]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021F447E:
	ldr r0, [sp, #0x18]
	add r2, r6, #1
	add r5, r7, #0
	cmp r2, r0
	bge _021F4492
	ldr r0, [r3, #4]
	ldr r2, [r3, #0x10]
	cmp r0, r2
	bne _021F4492
	mov r5, #0
_021F4492:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _021F449E
	str r0, [sp, #8]
_021F449E:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _021F4460
_021F44A6:
	mov r0, #8
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f4340

	thumb_func_start ovy137_21f44ac
ovy137_21f44ac: ; 0x021F44AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r1, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl ovy137_21f1968
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F44F2
	mov r7, #2
_021F44CC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020395F8
	cmp r6, r0
	bne _021F44E6
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020395F8
	pop {r3, r4, r5, r6, r7, pc}
_021F44E6:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02039608
	cmp r4, r0
	blo _021F44CC
_021F44F2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f44ac

	thumb_func_start ovy137_21f44f8
ovy137_21f44f8: ; 0x021F44F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	str r0, [sp]
	add r0, r4, #0
	str r1, [sp, #4]
	add r6, r3, #0
	bl sub_021804F0
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_02180494
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _021F4524
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x30]
_021F4524:
	ldr r0, [sp]
	mov r7, #0
	bl sub_021F134C
	cmp r0, #0
	bls _021F459E
	ldr r0, [sp, #0x30]
	ldr r1, _021F460C ; =0x021F56DC
	lsl r0, r0, #4
	add r5, r1, r0
_021F4538:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_021F1634
	add r4, r0, #0
	beq _021F4592
	mov r1, #0
	bl sub_021F10F4
	mov r2, #0
	b _021F4586
_021F454E:
	cmp r4, r6
	beq _021F4584
	cmp r0, r1
	bne _021F4584
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F4574
	add r0, r4, #0
	bl sub_021F110C
	ldr r1, [sp, #0x10]
	bl ovy137_21f4610
	cmp r0, #0
	beq _021F4574
	mov r0, #0
	str r0, [sp, #8]
_021F4574:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F4592
	add r0, r4, #0
	mov r1, #1
	bl ovy137_21f1098
	b _021F4592
_021F4584:
	add r2, r2, #1
_021F4586:
	cmp r2, #4
	bge _021F4592
	lsl r1, r2, #2
	ldr r1, [r5, r1]
	cmp r1, #4
	bne _021F454E
_021F4592:
	ldr r0, [sp]
	add r7, r7, #1
	bl sub_021F134C
	cmp r7, r0
	blo _021F4538
_021F459E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F45BE
	ldr r0, [sp, #0x14]
	bl sub_0219A6A0
	ldr r1, [sp, #0x10]
	add r4, r0, #0
	bl ovy137_21f4610
	cmp r0, #0
	bne _021F45BE
	add r0, r4, #0
	mov r1, #1
	bl ovy12_2167534
_021F45BE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F4600
	ldr r0, [sp, #4]
	mov r5, #0
	bl sub_021F1D00
	cmp r0, #0
	bls _021F4608
	mov r6, #1
_021F45D2:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ovy137_21f1cc8
	add r4, r0, #0
	beq _021F45F0
	ldr r1, [sp, #0x10]
	bl ovy137_21f4610
	cmp r0, #0
	bne _021F45F0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2167534
_021F45F0:
	ldr r0, [sp, #4]
	add r5, r5, #1
	bl sub_021F1D00
	cmp r5, r0
	blo _021F45D2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F4600:
	ldr r0, [sp, #4]
	mov r1, #0
	bl ovy137_21f1d04
_021F4608:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F460C: .word 0x021F56DC
	thumb_func_end ovy137_21f44f8

	thumb_func_start ovy137_21f4610
ovy137_21f4610: ; 0x021F4610
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl sub_02186374
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_021672F8
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0x12
	ldr r2, [sp, #0x14]
	sub r0, r1, r0
	cmp r2, r0
	bge _021F463A
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_021F463A:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ovy137_21f4610
_021F4640:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy137_21f4644
ovy137_21f4644: ; 0x021F4644
	push {r3, lr}
	add r0, r1, #0
	bl sub_02017394
	mov r1, #0x96
	lsl r1, r1, #4
	bl sub_020191AC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4644

	thumb_func_start ovy137_21f4658
ovy137_21f4658: ; 0x021F4658
	push {r3, lr}
	bl sub_021F201C
	bl sub_02038868
	cmp r0, #8
	bne _021F466A
	mov r0, #1
	pop {r3, pc}
_021F466A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4658

	thumb_func_start ovy137_21f4670
ovy137_21f4670: ; 0x021F4670
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_02181048
	cmp r0, #0
	beq _021F4686
	add r0, r4, #0
	bl ovy137_21eeec8
	pop {r4, pc}
_021F4686:
	add r0, r4, #0
	bl ovy137_21f0e80
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4670

	thumb_func_start ovy137_21f4690
ovy137_21f4690: ; 0x021F4690
	push {r4, lr}
	add r4, r1, #0
	bl sub_02155184
	bl sub_02153EE0
	add r1, r0, #0
	add r0, r4, #0
	bl ovy137_21f15cc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4690

	thumb_func_start ovy137_21f46a8
ovy137_21f46a8: ; 0x021F46A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #8]
	add r7, r1, #0
	add r5, r2, #0
	bl sub_021F2018
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	bl sub_021F1FF8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x38]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020395A0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021F1984
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	bl sub_021F202C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r0, r5
	bne _021F47D4
	add r0, r7, #0
	bl sub_021F1980
	add r5, r0, #0
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	bl sub_020397B4
	str r0, [sp, #0x24]
	mov r1, #2
	bl sub_020397CC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	mov r1, #1
	bl sub_020397CC
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, [sp, #0x20]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_020394B0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	add r1, r0, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	bl sub_02039738
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, r5, #0
	mov r1, #0x13
	bl sub_020373EC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_020370EC
	add r1, sp, #0x34
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_020370EC
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #1
	bl sub_020373EC
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, sp, #0x34
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02038274
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0x12
	bl sub_020373EC
	add r0, r7, #0
	bl sub_021F198C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F47D4:
	add r0, r5, #0
	bl sub_021F17FC
	add r1, r0, #0
	add r0, sp, #0x38
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r4, #0
	add r3, sp, #0x34
	bl ovy137_21f48d4
	cmp r0, #0
	beq _021F48CA
	ldr r0, [sp, #0x1c]
	ldr r1, _021F48D0 ; =0x021F5730
	lsl r2, r5, #4
	lsl r0, r0, #2
	add r1, r1, r2
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _021F48B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F480A: ; jump table
	.short _021F48B4 - _021F480A - 2 ; case 0
	.short _021F4814 - _021F480A - 2 ; case 1
	.short _021F4838 - _021F480A - 2 ; case 2
	.short _021F485C - _021F480A - 2 ; case 3
	.short _021F4888 - _021F480A - 2 ; case 4
_021F4814:
	ldr r0, [sp, #0x38]
	bl sub_021F1980
	add r5, r0, #0
	add r0, r7, #0
	bl sub_021F1980
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, sp, #0x34
	ldrh r3, [r3]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02038274
	b _021F48BA
_021F4838:
	ldr r0, [sp, #0x38]
	bl sub_021F1980
	add r5, r0, #0
	add r0, r7, #0
	bl sub_021F1980
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, sp, #0x34
	ldrh r3, [r3]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020382D8
	b _021F48BA
_021F485C:
	ldr r0, [sp, #0x38]
	bl sub_021F1980
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	bl sub_021F198C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	bl sub_021F1980
	lsl r3, r4, #0x10
	add r1, r0, #0
	str r5, [sp]
	add r2, sp, #0x34
	ldrh r2, [r2]
	add r0, r6, #0
	lsr r3, r3, #0x10
	bl sub_020386F4
	b _021F48BA
_021F4888:
	ldr r0, [sp, #0x38]
	bl sub_021F1980
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	bl sub_021F198C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	bl sub_021F1980
	lsl r3, r4, #0x10
	add r1, r0, #0
	str r5, [sp]
	add r2, sp, #0x34
	ldrh r2, [r2]
	add r0, r6, #0
	lsr r3, r3, #0x10
	bl sub_02038778
	b _021F48BA
_021F48B4:
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F48BA:
	ldr r0, [sp, #0x18]
	bl ovy137_21f1748
	ldr r0, [sp, #0x38]
	bl sub_021F198C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F48CA:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F48D0: .word 0x021F5730
	thumb_func_end ovy137_21f46a8

	thumb_func_start ovy137_21f48d4
ovy137_21f48d4: ; 0x021F48D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	add r4, r3, #0
	bl sub_021F2018
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021F2014
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl ovy137_21f184c
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ovy137_21f1bd0
	ldr r1, _021F492C ; =0x0000FFFF
	cmp r5, r1
	bne _021F490E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F490E:
	cmp r0, #0
	bne _021F4918
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F4918:
	cmp r4, #0
	beq _021F491E
	strh r5, [r4]
_021F491E:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _021F4926
	str r0, [r1]
_021F4926:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F492C: .word 0x0000FFFF
	thumb_func_end ovy137_21f48d4

	thumb_func_start ovy137_21f4930
ovy137_21f4930: ; 0x021F4930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #8]
	add r1, r2, #0
	add r4, r3, #0
	bl sub_020397B4
	str r0, [sp, #0xc]
	ldr r0, _021F49E8 ; =0x00007FFF
	add r1, r4, #0
	and r1, r0
	add r0, r0, #1
	add r5, r1, #0
	orr r5, r0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020241D4
	lsl r3, r5, #0x10
	add r6, r0, #0
	ldr r2, _021F49EC ; =0x00000261
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl sub_020397CC
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0204898C
	lsl r1, r5, #0x10
	str r0, [sp, #0x10]
	mov r0, #8
	lsr r1, r1, #0x10
	bl sub_02048530
	add r5, r0, #0
	mov r0, #0x40
	add r1, r4, #0
	bl sub_02048530
	add r4, r0, #0
	ldr r0, [sp, #8]
	mov r1, #2
	mov r2, #0
	bl ovy137_21f1968
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #4
	add r2, sp, #0x18
	bl ovy137_21f1968
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0202437C
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F49E8: .word 0x00007FFF
_021F49EC: .word 0x00000261
	thumb_func_end ovy137_21f4930

	thumb_func_start ovy137_21f49f0
ovy137_21f49f0: ; 0x021F49F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r2, #0
	add r6, r3, #0
	add r5, r0, #0
	str r1, [sp]
	bl sub_02037A70
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_020395F8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #7
	bl sub_020395F8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl sub_020395F8
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #9
	bl sub_020395F8
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl sub_020395F8
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_020395F8
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #4
	bl sub_020395F8
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #5
	bl sub_020395F8
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #6
	bl sub_020395F8
	add r3, sp, #0x48
	str r0, [sp, #0x20]
	ldrh r3, [r3]
	ldr r4, _021F4B8C ; =0x00007FFF
	ldr r2, _021F4B90 ; =0x00000261
	and r3, r4
	add r4, r4, #1
	orr r3, r4
	lsl r3, r3, #0x10
	mov r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204875C
	add r1, r7, #0
	add r4, r0, #0
	bl sub_0204898C
	add r6, r0, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_02037C70
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_0204898C
	add r6, r0, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_02037C70
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_0204898C
	add r6, r0, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x58
	bl sub_02037C70
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204898C
	add r6, r0, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x59
	bl sub_02037C70
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r1, #2
	bl sub_02037C70
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r1, #3
	bl sub_02037C70
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0xe
	bl sub_02037C70
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0x13
	bl sub_02037C70
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #6
	bl sub_02037C70
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #0x1f
	bl sub_02037C70
	add r0, r4, #0
	bl GFL_MsgDataFree
	add r0, sp, #0x24
	bl sub_0204424C
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_02037C70
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	mov r1, #0x16
	bl sub_02037C70
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0x17
	bl sub_02037C70
	mov r0, #0
	bl sub_02005748
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #7
	bl sub_02037C70
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0x17
	bl sub_02037C70
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #2
	bl sub_02037C70
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4B8C: .word 0x00007FFF
_021F4B90: .word 0x00000261
	thumb_func_end ovy137_21f49f0

	thumb_func_start ovy137_21f4b94
ovy137_21f4b94: ; 0x021F4B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_021F202C
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl sub_021F201C
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_021F200C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02038A18
	mov r0, #0xff
	ldr r2, _021F4C68 ; =0x021F5690
	str r0, [sp, #0x18]
	mov r7, #0xff
	mov r5, #0
_021F4BC6:
	lsl r3, r5, #2
	ldrh r1, [r2, r3]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _021F4BD6
	ldr r0, _021F4C6C ; =0x021F5692
	ldrh r7, [r0, r3]
	b _021F4BDC
_021F4BD6:
	add r5, r5, #1
	cmp r5, #2
	blo _021F4BC6
_021F4BDC:
	add r0, r4, #0
	mov r6, #0
	mov r5, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4C06
_021F4BEA:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020395F8
	cmp r7, r0
	bne _021F4BFA
	add r6, r6, #1
_021F4BFA:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F4BEA
_021F4C06:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x20]
	add r1, #0x16
	add r2, r6, #0
	bl sub_020393E4
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r6, #0
	mov r5, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4C48
_021F4C22:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020395F8
	cmp r7, r0
	bne _021F4C3C
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	bne _021F4C3A
	str r5, [sp, #0x18]
	b _021F4C48
_021F4C3A:
	add r6, r6, #1
_021F4C3C:
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F4C22
_021F4C48:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #0x38
	ldrh r0, [r0, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl ovy137_21f4c70
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F4C68: .word 0x021F5690
_021F4C6C: .word 0x021F5692
	thumb_func_end ovy137_21f4b94

	thumb_func_start ovy137_21f4c70
ovy137_21f4c70: ; 0x021F4C70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r6, r0, #0
	str r1, [sp, #4]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021F201C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021F200C
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02038A18
	lsl r1, r4, #0x10
	add r3, sp, #0xa0
	add r6, r0, #0
	ldrh r0, [r3, #4]
	ldr r2, [sp, #8]
	lsr r1, r1, #0x10
	str r0, [sp]
	ldrh r3, [r3]
	add r0, r5, #0
	bl ovy137_21f49f0
	cmp r4, #4
	bne _021F4CEC
	ldr r0, [sp, #4]
	bl sub_02017934
	bl sub_0200C838
	bl sub_0200C93C
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_02037C70
	add r4, sp, #0xc
	add r0, r6, #0
	mov r1, #0x58
	add r2, r4, #0
	bl sub_020370EC
	add r0, r5, #0
	mov r1, #0x58
	add r2, r4, #0
	bl sub_02037C70
	add r0, r6, #0
	mov r1, #0x59
	add r2, r4, #0
	bl sub_020370EC
	add r0, r5, #0
	mov r1, #0x59
	add r2, r4, #0
	bl sub_02037C70
_021F4CEC:
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f4c70

	thumb_func_start ovy137_21f4cf0
ovy137_21f4cf0: ; 0x021F4CF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_021F200C
	add r4, r0, #0
	mov r5, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4D26
	add r7, r5, #0
_021F4D0C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020395F8
	cmp r6, r0
	beq _021F4D26
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F4D0C
_021F4D26:
	add r7, sp, #0x20
	ldrh r1, [r7, #4]
	ldr r0, _021F4D68 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02037A40
	ldrh r1, [r7, #4]
	lsl r3, r5, #0x10
	add r2, r4, #0
	str r1, [sp]
	mov r1, #0
	lsr r3, r3, #0x10
	add r6, r0, #0
	bl ovy137_21f49f0
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldrh r2, [r7]
	ldr r0, [sp, #4]
	mov r3, #2
	bl sub_02038778
	add r0, r6, #0
	bl sub_02037A68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F4D68: .word 0x00007FFF
	thumb_func_end ovy137_21f4cf0

	thumb_func_start ovy137_21f4d6c
ovy137_21f4d6c: ; 0x021F4D6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_021F200C
	add r4, r0, #0
	mov r5, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4DA2
	add r7, r5, #0
_021F4D88:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020395F8
	cmp r6, r0
	beq _021F4DA2
	add r0, r4, #0
	add r5, r5, #1
	bl sub_02039608
	cmp r5, r0
	blo _021F4D88
_021F4DA2:
	add r0, sp, #0x20
	ldrh r0, [r0]
	lsl r3, r5, #0x10
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsr r3, r3, #0x10
	bl ovy137_21f49f0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4d6c

	thumb_func_start ovy137_21f4dbc
ovy137_21f4dbc: ; 0x021F4DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	ldr r6, [sp, #0x30]
	bl sub_021F2018
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	bl sub_021F201C
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl sub_021F2028
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	bl sub_021F200C
	cmp r5, #1
	beq _021F4DF2
	cmp r5, #3
	beq _021F4E58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F4DF2:
	ldr r0, _021F4EC0 ; =0x021F56B0
	mov r5, #0xff
	mov r2, #0
_021F4DF8:
	lsl r3, r2, #2
	add r1, r0, r3
	ldrh r3, [r0, r3]
	cmp r4, r3
	bne _021F4E04
	ldrh r5, [r1, #2]
_021F4E04:
	add r2, r2, #1
	cmp r2, #3
	blo _021F4DF8
	ldr r0, _021F4EC4 ; =0x00007FFF
	add r1, r6, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02037A40
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	str r6, [sp]
	bl ovy137_21f4d6c
	cmp r4, #0
	bne _021F4E46
	ldr r0, [sp, #0x14]
	bl sub_02038A18
	ldr r1, [sp, #0xc]
	bl sub_02038A20
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0x13
	bl sub_02037C70
_021F4E46:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_02037E7C
	add r0, r7, #0
	bl sub_02037A68
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F4E58:
	ldr r0, _021F4EC8 ; =0x021F56CA
	mov r5, #0xff
	mov r2, #0
_021F4E5E:
	lsl r3, r2, #2
	add r1, r0, r3
	ldrh r3, [r0, r3]
	cmp r4, r3
	bne _021F4E6A
	ldrh r5, [r1, #2]
_021F4E6A:
	add r2, r2, #1
	cmp r2, #4
	blo _021F4E5E
	ldr r0, _021F4EC4 ; =0x00007FFF
	add r1, r6, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020384A4
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #2
	bl ovy137_21f184c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	str r6, [sp, #4]
	bl ovy137_21f4cf0
	ldr r0, [sp, #0x14]
	bl sub_020388C0
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x58
	blx MI_CpuCopy8
	ldr r0, [sp, #0x18]
	bl ovy137_21f1748
	add r0, r7, #0
	bl sub_020384CC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4EC0: .word 0x021F56B0
_021F4EC4: .word 0x00007FFF
_021F4EC8: .word 0x021F56CA
	thumb_func_end ovy137_21f4dbc

	thumb_func_start ovy137_21f4ecc
ovy137_21f4ecc: ; 0x021F4ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	bl sub_021F202C
	ldr r0, [sp]
	bl sub_021F2030
	str r0, [sp, #0xc]
	ldr r0, _021F4F64 ; =0x0000FFFF
	add r1, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r2, #0x19
	mov r3, #0x64
	bl ovy137_21f199c
	add r7, r0, #0
	mov r0, #0xc
	mov r1, #8
	mov r2, #4
	mov r6, #0
	bl sub_020395AC
	add r5, r0, #0
	mov r4, #0
	bl sub_02039608
	cmp r0, #0
	bls _021F4F2C
_021F4F0C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_020395F8
	add r6, r6, r0
	cmp r7, r6
	bhs _021F4F20
	str r4, [sp, #8]
	b _021F4F2C
_021F4F20:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02039608
	cmp r4, r0
	blo _021F4F0C
_021F4F2C:
	add r0, r5, #0
	bl sub_02039608
	ldr r1, [sp, #8]
	cmp r1, r0
	bls _021F4F3C
	mov r0, #0
	str r0, [sp, #8]
_021F4F3C:
	add r0, r5, #0
	bl sub_020395E4
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ovy137_21f4f68
	ldr r0, [sp, #4]
	bl sub_021F198C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0xc]
	add r1, #0xb
	mov r2, #1
	bl sub_02039980
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4F64: .word 0x0000FFFF
	thumb_func_end ovy137_21f4ecc

	thumb_func_start ovy137_21f4f68
ovy137_21f4f68: ; 0x021F4F68
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_021F202C
	add r0, r4, #0
	bl sub_021F2030
	add r4, r0, #0
	mov r1, #9
	add r2, r5, #0
	bl sub_02039980
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02039980
	mov r5, #0xb
	mov r6, #0
_021F4F90:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02039980
	add r5, r5, #1
	cmp r5, #0x12
	ble _021F4F90
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy137_21f4f68

	thumb_func_start ovy137_21f4fa4
ovy137_21f4fa4: ; 0x021F4FA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_021F2030
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021F202C
	ldr r0, [sp]
	bl sub_021F198C
	lsl r0, r0, #0x10
	lsr r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r6, #0
	ldr r0, _021F50EC ; =0x021F5770
	ldr r1, [sp, #0x10]
	sub r2, r6, #1
	ldrsb r1, [r0, r1]
	mov r4, #0
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x18]
	cmp r1, r2
	beq _021F4FFC
	ldr r1, [sp, #0x10]
	add r5, r0, r1
_021F4FE0:
	ldrb r1, [r5, r4]
	add r0, r7, #0
	add r1, #0xb
	bl sub_02039978
	cmp r0, #0
	bne _021F4FF0
	add r6, r6, #1
_021F4FF0:
	add r4, r4, #1
	ldrsb r1, [r5, r4]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021F4FE0
_021F4FFC:
	cmp r6, #0
	ble _021F5052
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0x17
	add r3, r6, #0
	bl ovy137_21f199c
	str r0, [sp, #0x24]
	mov r4, #0
	ldr r0, [sp, #0x18]
	sub r1, r4, #1
	mov r5, #0
	cmp r0, r1
	beq _021F5052
	ldr r1, _021F50EC ; =0x021F5770
	ldr r0, [sp, #0x10]
	add r6, r1, r0
_021F5020:
	ldrb r0, [r6, r5]
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	add r1, #0xb
	bl sub_02039978
	cmp r0, #0
	bne _021F5046
	ldr r0, [sp, #0x24]
	cmp r4, r0
	bne _021F5044
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #8]
	add sp, #0x28
	str r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5044:
	add r4, r4, #1
_021F5046:
	add r5, r5, #1
	ldrsb r1, [r6, r5]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021F5020
_021F5052:
	ldr r1, _021F50F0 ; =0x021F5778
	ldr r0, [sp, #0x10]
	mov r6, #0
	ldrsb r0, [r1, r0]
	sub r1, r6, #1
	mov r5, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _021F508C
	ldr r1, _021F50EC ; =0x021F5770
	ldr r0, [sp, #0x10]
	add r4, r1, r0
_021F506C:
	add r1, r4, r5
	ldrb r1, [r1, #8]
	add r0, r7, #0
	add r1, #0xb
	bl sub_02039978
	cmp r0, #0
	bne _021F507E
	add r6, r6, #1
_021F507E:
	add r5, r5, #1
	add r1, r4, r5
	mov r0, #8
	ldrsb r1, [r1, r0]
	sub r0, #9
	cmp r1, r0
	bne _021F506C
_021F508C:
	cmp r6, #0
	ble _021F50E6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0x18
	add r3, r6, #0
	bl ovy137_21f199c
	str r0, [sp, #0xc]
	mov r4, #0
	ldr r0, [sp, #0x14]
	sub r1, r4, #1
	mov r5, #0
	cmp r0, r1
	beq _021F50E6
	ldr r1, _021F50EC ; =0x021F5770
	ldr r0, [sp, #0x10]
	add r6, r1, r0
_021F50B0:
	add r0, r6, r5
	ldrb r0, [r0, #8]
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r1, #0xb
	bl sub_02039978
	cmp r0, #0
	bne _021F50D8
	ldr r0, [sp, #0xc]
	cmp r4, r0
	bne _021F50D6
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #8]
	add sp, #0x28
	str r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F50D6:
	add r4, r4, #1
_021F50D8:
	add r5, r5, #1
	add r1, r6, r5
	mov r0, #8
	ldrsb r1, [r1, r0]
	sub r0, #9
	cmp r1, r0
	bne _021F50B0
_021F50E6:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F50EC: .word 0x021F5770
_021F50F0: .word 0x021F5778
	thumb_func_end ovy137_21f4fa4

	thumb_func_start ovy137_21f50f4
ovy137_21f50f4: ; 0x021F50F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021F1FF8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021F202C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021F2030
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02038F00
	add r6, r0, #0
	add r0, sp, #0
	bl sub_0204424C
	add r0, r4, #0
	bl sub_021F1980
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r7, #0
	bl sub_020397B4
	mov r1, #0
	bl sub_020397CC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ovy137_21f1968
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202B610
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021F5164
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_021F5164:
	mov r0, #0xa
	mov r1, #7
	mov r2, #4
	bl sub_020395AC
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	add r1, r4, #0
	bl sub_020395F8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020395E4
	mov r0, #0xb
	mov r1, #7
	mov r2, #4
	bl sub_020395AC
	lsl r1, r5, #2
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	add r1, r6, r1
	bl sub_020395F8
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020395E4
	add r0, r4, r5
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f50f4

	thumb_func_start ovy137_21f51a4
ovy137_21f51a4: ; 0x021F51A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021F2030
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy137_21f50f4
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02039978
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #9
	bl sub_02039978
	add r4, r0, #0
	mov r0, #0xc
	mov r1, #8
	mov r2, #4
	bl sub_020395AC
	add r1, r4, #0
	add r2, r6, #1
	add r7, r0, #0
	bl sub_020395F8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r7, #0
	bl sub_020395E4
	add r0, r5, r4
	cmp r0, #0x64
	ble _021F51F8
	mov r0, #0x64
	pop {r3, r4, r5, r6, r7, pc}
_021F51F8:
	cmp r0, #0
	bge _021F51FE
	mov r0, #0
_021F51FE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy137_21f51a4

	thumb_func_start ovy137_21f5200
ovy137_21f5200: ; 0x021F5200
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_021F2030
	add r5, #0xb
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_02039980
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02039978
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	add r2, r2, #1
	bl sub_02039980
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy137_21f5200

	thumb_func_start ovy137_21f522c
ovy137_21f522c: ; 0x021F522C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_021F202C
	add r7, r0, #0
	cmp r5, #5
	bne _021F5246
	mov r1, #0xd
	mov r2, #0
	bl sub_02038F00
	pop {r3, r4, r5, r6, r7, pc}
_021F5246:
	add r0, r4, #0
	bl sub_0201736C
	bl sub_02008BD4
	mov r1, #7
	blx sub_0208D65C
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #2
	mov r2, #0
	mov r4, #0
	bl sub_02038F00
	cmp r0, #0xd
	blo _021F526C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F526C:
	mov r1, #7
	ldr r2, _021F528C ; =0x021F56FC
	mul r1, r6
	add r3, r2, r1
	ldr r2, _021F5290 ; =0x021F56BC
_021F5276:
	ldrb r1, [r2, r4]
	ldrb r1, [r3, r1]
	cmp r5, r1
	bne _021F5282
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5282:
	add r4, r4, #1
	cmp r4, r0
	bls _021F5276
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F528C: .word 0x021F56FC
_021F5290: .word 0x021F56BC
	thumb_func_end ovy137_21f522c

	thumb_func_start ovy137_21f5294
ovy137_21f5294: ; 0x021F5294
	push {r3, lr}
	bl sub_021F201C
	bl sub_02038868
	cmp r0, #8
	bne _021F52A6
	mov r0, #1
	pop {r3, pc}
_021F52A6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy137_21f5294
_021F52AC:
	.byte 0x00, 0xDD, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x10, 0x00, 0x11, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0xB4, 0x53, 0x1F, 0x02, 0x06, 0x00, 0x00, 0x00, 0x94, 0x53, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x02, 0x13, 0x0E, 0x11, 0x0A, 0x0E, 0x02, 0x0A, 0x11, 0x0A, 0x06
	.byte 0x02, 0x06, 0x0E, 0x13, 0x01, 0x10, 0x02, 0x0F, 0x04, 0x10, 0x03, 0x0D, 0x01, 0x0D, 0x02, 0x10
	.byte 0x03, 0x0F, 0x04, 0x0E, 0x01, 0x12, 0x02, 0x10, 0x04, 0x12, 0x03, 0x0F, 0x01, 0x0F, 0x02, 0x12
	.byte 0x03, 0x11, 0x04, 0x10, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xFA, 0x1E, 0x02, 0xF5, 0xFA, 0x1E, 0x02
	.byte 0x49, 0xFB, 0x1E, 0x02, 0x4D, 0xFB, 0x1E, 0x02, 0xD5, 0xF6, 0x1E, 0x02, 0x11, 0xF7, 0x1E, 0x02
	.byte 0x99, 0xF7, 0x1E, 0x02, 0xBD, 0xF7, 0x1E, 0x02, 0xE5, 0xF8, 0x1E, 0x02, 0x19, 0x08, 0x1F, 0x02
	.byte 0xDD, 0x08, 0x1F, 0x02, 0xB5, 0x09, 0x1F, 0x02, 0x39, 0x0A, 0x1F, 0x02, 0x81, 0x0A, 0x1F, 0x02
	.byte 0xD9, 0x0A, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x52, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xC8, 0x52, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x2A, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x01, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2A, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x05, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x03, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x05, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x01, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x02, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x03, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x15, 0x11, 0x1F, 0x02, 0x3D, 0x11, 0x1F, 0x02, 0xB9, 0x11, 0x1F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0x11, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE1, 0x11, 0x1F, 0x02
	.byte 0x09, 0x12, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x14, 0x00, 0x08, 0x00, 0x00, 0x00, 0x14, 0x00, 0x1C, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x28, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x95, 0x6D, 0x03, 0x02, 0xB9, 0x6D, 0x03, 0x02
	.byte 0x15, 0x6E, 0x03, 0x02, 0x45, 0x6E, 0x03, 0x02, 0xED, 0x70, 0x03, 0x02, 0xED, 0x73, 0x03, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF9, 0x78, 0x03, 0x02, 0x41, 0x7A, 0x03, 0x02, 0x69, 0x7A, 0x03, 0x02
	.byte 0x71, 0x7A, 0x03, 0x02, 0x91, 0x7A, 0x03, 0x02, 0x39, 0x7B, 0x03, 0x02, 0x71, 0x7C, 0x03, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x35, 0x7E, 0x03, 0x02, 0x95, 0x6D, 0x03, 0x02, 0xB9, 0x6D, 0x03, 0x02
	.byte 0x15, 0x6E, 0x03, 0x02, 0x45, 0x6E, 0x03, 0x02, 0xED, 0x70, 0x03, 0x02, 0xED, 0x73, 0x03, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF9, 0x78, 0x03, 0x02, 0xA5, 0x84, 0x03, 0x02, 0xCD, 0x84, 0x03, 0x02
	.byte 0xD5, 0x84, 0x03, 0x02, 0xE1, 0x84, 0x03, 0x02, 0xA9, 0x85, 0x03, 0x02, 0x81, 0x86, 0x03, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF5, 0x87, 0x03, 0x02, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x02, 0x00, 0x05, 0x00, 0x03, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00, 0x03, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x01, 0x00, 0x06, 0x00, 0x02, 0x00, 0x07, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x02, 0x07, 0x04
	.byte 0x06, 0x01, 0x03, 0x01, 0x03, 0x00, 0x02, 0x07, 0x04, 0x06, 0x04, 0x06, 0x01, 0x03, 0x00, 0x02
	.byte 0x07, 0x02, 0x07, 0x04, 0x06, 0x01, 0x03, 0x00, 0x03, 0x00, 0x02, 0x07, 0x04, 0x06, 0x01, 0x06
	.byte 0x01, 0x03, 0x00, 0x02, 0x07, 0x04, 0x07, 0x04, 0x06, 0x01, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x05, 0x06, 0x07, 0xFF, 0x00, 0x00
	.byte 0x00, 0x02, 0x03, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x04, 0x05, 0x06, 0x07, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x03, 0x04, 0xFF, 0x00, 0x00, 0x00, 0x05, 0x06, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x02, 0x04, 0x05, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x06, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x03, 0x05, 0x06, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x04, 0x06, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x05, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0xFF, 0x00, 0x00, 0x00
	.byte 0x05, 0x06, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0xFF, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x41, 0x46, 0x1F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x41, 0x46, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x41, 0x46, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x41, 0x46, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x41, 0x46, 0x1F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x45, 0x46, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x59, 0x46, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x41, 0x46, 0x1F, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x66, 0x69, 0x65, 0x6C, 0x64, 0x2E, 0x63, 0x00, 0x00
	.byte 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x70, 0x65, 0x6F, 0x70, 0x6C, 0x65, 0x2E, 0x63, 0x00
	.byte 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x6D, 0x61, 0x6E, 0x61
	.byte 0x67, 0x65, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x6E
	.byte 0x70, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x73
	.byte 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F52AC
