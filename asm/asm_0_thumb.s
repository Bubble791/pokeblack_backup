	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start NitroMain
NitroMain: ; 0x02005124
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02005364
	bl sub_020054B8
	ldr r1, _020051C4 ; =sub_0200522C
	mov r0, #2
	bl sub_02079D20
	ldr r1, _020051C8 ; =sub_02005234
	mov r0, #1
	mov r4, #1
	bl sub_02079D20
	mov r0, #3
	bl sub_02079E70
	ldr r6, _020051CC ; =0x04000208
	ldrh r0, [r6]
	mov r0, #1
	strh r4, [r6]
	bl sub_02074844
	mov r0, #1
	bl sub_0207486C
	blx sub_0207C0D0
	bl sub_02005264
	ldr r4, _020051D0 ; =0x0209DC18
	sub r5, r6, #4
	lsr r7, r6, #0xb
_02005166:
	bl sub_02005430
	bl sub_02005654
	bl sub_02005328
	bl sub_02005668
	bl sub_02049AB8
	bl sub_020051E4
	add r6, r0, #0
	beq _0200518A
	ldrh r1, [r5]
	ldr r0, _020051D4 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r5]
_0200518A:
	add r0, r4, #0
	bl sub_0207A828
	cmp r0, #0
	bne _0200519C
	add r0, r4, #0
	mov r1, #0
	bl sub_0207A838
_0200519C:
	mov r0, #1
	mov r1, #1
	blx sub_02079BB0
	bl sub_02005258
	add r0, r4, #0
	bl sub_0207A828
	cmp r0, #0
	bne _020051B8
	add r0, r4, #0
	bl sub_0207A8E4
_020051B8:
	cmp r6, #0
	beq _02005166
	ldrh r0, [r5]
	orr r0, r7
	strh r0, [r5]
	b _02005166
	.align 2, 0
_020051C4: .word sub_0200522C
_020051C8: .word sub_02005234
_020051CC: .word 0x04000208
_020051D0: .word 0x0209DC18
_020051D4: .word 0xFFFF7FFF
	thumb_func_end NitroMain

	thumb_func_start sub_020051D8
sub_020051D8: ; 0x020051D8
	ldr r1, _020051E0 ; =0x0209D740
	str r0, [r1]
	bx lr
	nop
_020051E0: .word 0x0209D740
	thumb_func_end sub_020051D8

	thumb_func_start sub_020051E4
sub_020051E4: ; 0x020051E4
	push {r3, lr}
	bl sub_0203FF6C
	cmp r0, #1
	ble _020051F2
	mov r0, #0
	pop {r3, pc}
_020051F2:
	bl sub_02042B00
	cmp r0, #0
	beq _020051FE
	mov r0, #0
	pop {r3, pc}
_020051FE:
	bl sub_02042B20
	cmp r0, #0
	beq _0200520A
	mov r0, #0
	pop {r3, pc}
_0200520A:
	bl sub_02007040
	cmp r0, #0
	beq _02005216
	mov r0, #0
	pop {r3, pc}
_02005216:
	ldr r0, _02005228 ; =0x0209D740
	ldr r0, [r0]
	cmp r0, #0
	bne _02005222
	mov r0, #1
	pop {r3, pc}
_02005222:
	mov r0, #0
	pop {r3, pc}
	nop
_02005228: .word 0x0209D740
	thumb_func_end sub_020051E4

	thumb_func_start sub_0200522C
sub_0200522C: ; 0x0200522C
	ldr r3, _02005230 ; =sub_0200566C
	bx r3
	.align 2, 0
_02005230: .word sub_0200566C
	thumb_func_end sub_0200522C

	thumb_func_start sub_02005234
sub_02005234: ; 0x02005234
	push {r3, lr}
	bl sub_0200569C
	ldr r3, _02005250 ; =0x02FE0000
	ldr r1, _02005254 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #3
	bl sub_0207829C
	pop {r3, pc}
	nop
_02005250: .word 0x02FE0000
_02005254: .word 0x00003FF8
	thumb_func_end sub_02005234

	thumb_func_start sub_02005258
sub_02005258: ; 0x02005258
	push {r3, lr}
	bl sub_02005484
	bl sub_020056D8
	pop {r3, pc}
	thumb_func_end sub_02005258

	thumb_func_start sub_02005264
sub_02005264: ; 0x02005264
	push {r4, lr}
	ldr r0, _0200530C ; =0x0000000C
	bl sub_0203CE0C
	ldr r0, _02005310 ; =0x0000001B
	bl sub_0203CE0C
	mov r0, #0
	mov r4, #0
	bl sub_02021974
	ldr r0, _02005314 ; =0x0209D740
	mov r1, #0
	str r4, [r0]
	mov r0, #1
	mov r2, #1
	mov r3, #0xc
	mov r4, #0xc
	bl sub_020425A0
	mov r0, #0xc
	bl sub_02012DEC
	bl sub_02012E28
	sub r4, #0xd
	ldr r1, _02005318 ; =0x02092BF4
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A938
	mov r0, #7
	bl sub_020070F0
	bl sub_020072FC
	bl sub_02008DDC
	bl sub_02008AB4
	bl sub_020072FC
	bl sub_02017BC0
	bl sub_020072FC
	bl sub_020393FC
	bl sub_02011BFC
	mov r0, #8
	bl sub_02011C1C
	ldr r0, _0200531C ; =sub_02012110
	bl sub_0203CB74
	mov r0, #0
	bl sub_020249FC
	mov r0, #0
	bl sub_0201C2AC
	bl sub_02005B80
	ldr r1, _02005320 ; =sub_02006C70
	ldr r2, _02005324 ; =sub_02006CC8
	mov r0, #1
	bl sub_020065B4
	bl sub_020072FC
	bl sub_02008DDC
	bl sub_02005348
	bl sub_0200897C
	mov r0, #1
	bl sub_0202BF94
	bl sub_0201340C
	pop {r4, pc}
	nop
_0200530C: .word 0x0000000C
_02005310: .word 0x0000001B
_02005314: .word 0x0209D740
_02005318: .word 0x02092BF4
_0200531C: .word sub_02012110
_02005320: .word sub_02006C70
_02005324: .word sub_02006CC8
	thumb_func_end sub_02005264

	thumb_func_start sub_02005328
sub_02005328: ; 0x02005328
	push {r3, lr}
	bl sub_020298FC
	bl sub_02027A9C
	bl sub_02011C78
	bl sub_02005C18
	bl sub_0200666C
	bl sub_0202C038
	bl sub_02013424
	pop {r3, pc}
	thumb_func_end sub_02005328

	thumb_func_start sub_02005348
sub_02005348: ; 0x02005348
	push {r3, lr}
	bl sub_02008A30
	cmp r0, #0
	bne _0200535A
	mov r0, #1
	bl sub_02005C80
	pop {r3, pc}
_0200535A:
	mov r0, #0
	bl sub_02005C80
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005348

	thumb_func_start sub_02005364
sub_02005364: ; 0x02005364
	push {r3, r4, r5, lr}
	bl sub_0207B124
	bl sub_0207BA7C
	bl sub_0207BBF4
	bl sub_0207CB88
	bl sub_02074718
	bl sub_02074658
	bl sub_0207AC24
	mov r1, #3
	lsl r1, r1, #0x18
	tst r0, r1
	beq _020053A2
	mov r0, #1
	bl sub_0207F6E8
	ldr r2, _02005400 ; =0x04004008
	ldr r0, _02005404 ; =0xFFFFDFFF
	ldr r1, [r2]
	and r1, r0
	str r1, [r2]
	ldr r2, _02005408 ; =0x02FFFDF0
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_020053A2:
	ldr r1, _0200540C ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl sub_02072390
	mov r0, #0
	mov r1, #0
	mov r4, #0
	bl sub_02072358
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #4
	bl sub_0207B424
	add r1, r5, #0
	bl sub_02072358
	ldr r0, _02005410 ; =0x0209D758
	mov r1, #0x30
	bl sub_0205F9A8
	bl sub_020352E0
	cmp r0, #0
	beq _020053EA
	ldr r0, _02005414 ; =0x0209D744
	ldr r1, _02005418 ; =sub_02005494
	str r4, [r0]
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, _0200541C ; =0x0209D748
	bl sub_02005420
_020053EA:
	add r0, sp, #0
	bl sub_0207F0AC
	ldr r0, [sp]
	cmp r0, #1
	bne _020053FC
	mov r0, #0
	bl sub_0207EFC4
_020053FC:
	pop {r3, r4, r5, pc}
	nop
_02005400: .word 0x04004008
_02005404: .word 0xFFFFDFFF
_02005408: .word 0x02FFFDF0
_0200540C: .word 0x04000208
_02005410: .word 0x0209D758
_02005414: .word 0x0209D744
_02005418: .word sub_02005494
_0200541C: .word 0x0209D748
	thumb_func_end sub_02005364

	thumb_func_start sub_02005420
sub_02005420: ; 0x02005420
	bx pc
	nop
	thumb_func_end sub_02005420

	arm_func_start sub_02005424
sub_02005424: ; 0x02005424
	ldr ip, _0200542C ; =sub_0276952C
	bx ip
	.align 2, 0
_0200542C: .word sub_0276952C
	arm_func_end sub_02005424