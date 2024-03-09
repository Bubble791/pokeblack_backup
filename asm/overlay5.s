    .include "macros/function.inc"
	.include "overlay5.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy5_214f500
ovy5_214f500: ; 0x0214F500
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02016AF0
	add r6, r0, #0
	ldr r2, _0214F564 ; =ovy5_214f56c
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	str r5, [r4]
	str r6, [r4, #4]
	mov r0, #0x69
	str r0, [sp]
	ldr r3, _0214F568 ; =0x0214F5E0
	mov r0, #4
	mov r1, #8
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #8]
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _0214F560
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BD80
_0214F560:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F564: .word ovy5_214f56c
_0214F568: .word sub_0214F5E0
	thumb_func_end ovy5_214f500

	thumb_func_start ovy5_214f56c
ovy5_214f56c: ; 0x0214F56C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0214F582
	cmp r0, #1
	beq _0214F596
	cmp r0, #2
	beq _0214F5B2
	b _0214F5BC
_0214F582:
	ldr r0, [r2]
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _0214F5BC
	mov r0, #1
_0214F592:
	str r0, [r4]
	b _0214F5BC
_0214F596:
	ldr r0, [r2, #8]
	ldr r3, _0214F5C0 ; =0x021B70D4
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _0214F5C4 ; =0x00000147
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	mov r0, #2
	b _0214F592
_0214F5B2:
	ldr r0, [r2, #8]
	bl sub_0203A24C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0214F5BC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0214F5C0: .word 0x021B70D4
_0214F5C4: .word 0x00000147
	thumb_func_end ovy5_214f56c

	.data
	.public sub_0214F5E0
sub_0214F5E0:
	.ascii "event_wbt_wifi.c"
