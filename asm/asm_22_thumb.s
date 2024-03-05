	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02067D1C
sub_02067D1C: ; 0x02067D1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02067D9C ; =0x02146974
	add r7, r1, #0
	ldr r6, [r0]
	add r4, r2, #0
	cmp r6, #0
	beq _02067D82
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02067D68
	ldr r3, [r6]
	add r1, r3, #1
	add r2, r1, r4
	cmp r2, #0xc0
	bhi _02067D68
	str r1, [r6]
	ldr r2, [r0]
	lsl r1, r3, #2
	add r1, r2, r1
	str r5, [r1, #4]
	cmp r4, #0
	beq _02067D98
	ldr r1, [r0]
	add r0, r7, #0
	add r2, r1, #4
	ldr r1, [r1]
	lsl r1, r1, #2
	add r1, r2, r1
	lsl r2, r4, #2
	blx sub_020786E8
	ldr r0, _02067D9C ; =0x02146974
	ldr r1, [r0]
	ldr r0, [r1]
	add r0, r0, r4
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_02067D68:
	ldr r0, [r6]
	cmp r0, #0
	beq _02067D74
	bl sub_02067B9C
	b _02067D8C
_02067D74:
	ldr r0, _02067D9C ; =0x02146974
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02067D8C
	bl sub_02067BD4
	b _02067D8C
_02067D82:
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02067D8C
	bl sub_02067BD4
_02067D8C:
	ldr r1, _02067DA0 ; =0x04000400
	add r0, r7, #0
	lsl r2, r4, #2
	str r5, [r1]
	blx sub_02078684
_02067D98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02067D9C: .word 0x02146974
_02067DA0: .word 0x04000400
	thumb_func_end sub_02067D1C

	thumb_func_start sub_02067DA4
sub_02067DA4: ; 0x02067DA4
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02067B9C
	mov r1, #0
	ldr r0, _02067DF0 ; =0x04000440
	cmp r6, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	beq _02067DD2
	add r4, sp, #0
_02067DC0:
	add r0, r4, #0
	bl sub_02074EBC
	cmp r0, #0
	bne _02067DC0
	add r0, sp, #0
	add r1, r6, #0
	blx MTX_Copy44To43_
_02067DD2:
	cmp r5, #0
	beq _02067DE0
_02067DD6:
	add r0, r5, #0
	bl sub_02074EE0
	cmp r0, #0
	bne _02067DD6
_02067DE0:
	ldr r1, _02067DF4 ; =0x04000448
	mov r0, #1
	str r0, [r1]
	mov r0, #2
	sub r1, #8
	str r0, [r1]
	add sp, #0x40
	pop {r4, r5, r6, pc}
	.align 2, 0
_02067DF0: .word 0x04000440
_02067DF4: .word 0x04000448
	thumb_func_end sub_02067DA4

	thumb_func_start sub_02067DF8
sub_02067DF8: ; 0x02067DF8
	push {r3, lr}
	bl sub_02074C9C
	bl sub_02065698
	ldr r2, _02067E14 ; =0x04000600
	ldr r0, _02067E18 ; =0x3FFFFFFF
	ldr r1, [r2]
	and r1, r0
	lsl r0, r2, #0x16
	orr r0, r1
	str r0, [r2]
	pop {r3, pc}
	nop
_02067E14: .word 0x04000600
_02067E18: .word 0x3FFFFFFF
	thumb_func_end sub_02067DF8

	thumb_func_start sub_02067E1C
sub_02067E1C: ; 0x02067E1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r1, [sp]
	str r2, [sp, #4]
	ldr r5, _02067F98 ; =0x02143A14
	ldr r1, _02067F9C ; =0x02143A58
	add r2, sp, #0x50
	blx sub_02073290
	ldr r0, [sp, #0x58]
	ldr r2, [r5, #0x2c]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r7, r0, #0
	ldr r2, [r5, #0xc]
	ldr r0, [sp, #0x50]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x1c]
	ldr r0, [sp, #0x54]
	add r4, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x10]
	add r0, r2, r0
	adc r4, r1
	add r1, r7, r0
	adc r6, r4
	lsl r0, r6, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r5, #0x3c]
	add r0, r1, r0
	bl FX_InvAsync
	ldr r0, [sp, #0x54]
	ldr r2, [r5, #0x20]
	str r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	asr r3, r2, #0x1f
	str r0, [sp, #0x1c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	asr r7, r0, #0x1f
	add r1, r7, #0
	str r0, [sp, #0x24]
	blx sub_0208D60C
	ldr r2, [r5]
	str r0, [sp, #0x28]
	add r6, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #0x10]
	str r0, [sp, #0x2c]
	add r4, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x2c]
	add r2, r2, r0
	ldr r0, [sp, #0x28]
	adc r4, r1
	add r1, r0, r2
	adc r6, r4
	lsl r0, r6, #0x14
	lsr r6, r1, #0xc
	orr r6, r0
	ldr r0, [r5, #0x30]
	ldr r2, [r5, #0x24]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #4]
	str r0, [sp, #0x34]
	add r7, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #0x14]
	str r0, [sp, #0x38]
	add r4, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x38]
	add r2, r2, r0
	ldr r0, [sp, #0x34]
	adc r4, r1
	add r1, r0, r2
	adc r7, r4
	lsl r0, r7, #0x14
	lsr r4, r1, #0xc
	orr r4, r0
	ldr r7, [r5, #0x34]
	bl FX_GetDivResultFx64c
	str r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0xc]
	add r0, r6, r0
	blx sub_02074674
	mov r1, #1
	lsl r1, r1, #0xc
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r5, r0, #1
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0xc]
	add r0, r4, r7
	blx sub_02074674
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r0, r1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r4, r0, #1
	cmp r5, #0
	blt _02067F4E
	cmp r4, #0
	blt _02067F4E
	cmp r5, r1
	bgt _02067F4E
	cmp r4, r1
	ble _02067F54
_02067F4E:
	mov r6, #0
	mvn r6, r6
	b _02067F56
_02067F54:
	mov r6, #0
_02067F56:
	add r0, sp, #0x4c
	add r1, sp, #0x48
	add r2, sp, #0x44
	add r3, sp, #0x40
	bl sub_02065C10
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x48]
	add r3, r5, #0
	sub r2, r1, r0
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x44]
	mul r2, r4
	sub r0, r0, r1
	mul r3, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r3, r3, r0
	asr r3, r3, #0xc
	add r3, r1, r3
	ldr r1, [sp]
	add r0, r2, r0
	str r3, [r1]
	ldr r3, [sp, #0x48]
	mov r1, #0xbf
	sub r1, r1, r3
	asr r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0]
	add r0, r6, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02067F98: .word 0x02143A14
_02067F9C: .word 0x02143A58
	thumb_func_end sub_02067E1C

	thumb_func_start sub_02067FA0
sub_02067FA0: ; 0x02067FA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	add r0, sp, #0x58
	add r1, sp, #0x54
	add r2, sp, #0x50
	add r3, sp, #0x4c
	bl sub_02065C10
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	ldr r2, [sp, #0x50]
	sub r6, r1, r0
	ldr r1, [sp, #0x58]
	sub r0, r4, r1
	sub r1, r2, r1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	add r4, r0, #0
	ldr r0, [sp, #0x54]
	neg r1, r6
	add r0, r7, r0
	sub r0, #0xbf
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	cmp r4, #0
	blt _02067FF4
	cmp r0, #0
	blt _02067FF4
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r4, r1
	bgt _02067FF4
	cmp r0, r1
	ble _02067FFC
_02067FF4:
	mov r1, #0
	mvn r1, r1
	str r1, [sp, #0x30]
	b _02068000
_02067FFC:
	mov r1, #0
	str r1, [sp, #0x30]
_02068000:
	mov r2, #2
	lsl r2, r2, #0xa
	sub r1, r4, r2
	sub r0, r0, r2
	lsl r1, r1, #1
	lsl r6, r0, #1
	str r1, [sp, #0xc]
	bl sub_02065BCC
	add r4, r0, #0
	asr r0, r6, #0x1f
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	asr r0, r0, #0x1f
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x1c]
	add r7, r1, #0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [r4, #0x3c]
	add r0, r0, r2
	adc r7, r3
	lsl r2, r7, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	ldr r1, [r4, #0x2c]
	str r0, [sp, #0x2c]
	sub r0, r0, r1
	bl FX_InvAsync
	ldr r2, [r4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	add r7, r1, #0
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x40]
	ldr r1, [r4, #0x30]
	add r0, r0, r2
	adc r7, r3
	lsl r2, r7, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	ldr r2, [r4, #4]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x14]
	add r7, r1, #0
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x44]
	ldr r1, [r4, #0x34]
	add r0, r0, r2
	adc r7, r3
	lsl r2, r7, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r7, r1, r0
	ldr r2, [r4, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x18]
	str r1, [sp, #8]
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r3, [sp, #0x48]
	ldr r2, [r4, #0x38]
	add r0, r3, r0
	ldr r3, [sp, #8]
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r6, r2, r0
	str r3, [sp, #8]
	cmp r5, #0
	beq _0206810A
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	add r0, r7, r0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x28]
	add r0, r6, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r0, r0, r1
	str r0, [sp, #0x28]
_0206810A:
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	sub r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x24]
	sub r7, r7, r0
	ldr r0, [r4, #0x28]
	sub r6, r6, r0
	bl FX_GetDivResultFx64c
	add r4, r1, #0
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _0206812C
	ldr r0, [sp, #0x28]
	bl FX_InvAsync
_0206812C:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r2, r4, #0
	blx sub_02074674
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r1]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	blx sub_02074674
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r1, #4]
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	blx sub_02074674
	ldr r1, [sp]
	cmp r5, #0
	str r0, [r1, #8]
	beq _02068186
	bl FX_GetDivResultFx64c
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	blx sub_02074674
	str r0, [r5]
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	blx sub_02074674
	str r0, [r5, #4]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	blx sub_02074674
	str r0, [r5, #8]
_02068186:
	ldr r0, [sp, #0x30]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02067FA0

	thumb_func_start sub_0206818C
sub_0206818C: ; 0x0206818C
	ldr r3, _02068194 ; =sub_0205F3D4
	mov r1, #0x54
	bx r3
	nop
_02068194: .word sub_0205F3D4
	thumb_func_end sub_0206818C

	thumb_func_start sub_02068198
sub_02068198: ; 0x02068198
	ldr r3, _0206819C ; =sub_0205F3E0
	bx r3
	.align 2, 0
_0206819C: .word sub_0205F3E0
	thumb_func_end sub_02068198

	thumb_func_start sub_020681A0
sub_020681A0: ; 0x020681A0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02064F8C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205F3D4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020681A0

	thumb_func_start sub_020681B8
sub_020681B8: ; 0x020681B8
	ldr r3, _020681BC ; =sub_0205F3E0
	bx r3
	.align 2, 0
_020681BC: .word sub_0205F3E0
	thumb_func_end sub_020681B8

	thumb_func_start sub_020681C0
sub_020681C0: ; 0x020681C0
	push {r4, r5}
	cmp r0, #0
	beq _020681D0
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020681D0
	add r0, r0, r3
	b _020681D2
_020681D0:
	mov r0, #0
_020681D2:
	cmp r0, #0
	beq _020681FA
	add r5, r0, #4
	beq _020681EE
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _020681EE
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _020681F0
_020681EE:
	mov r1, #0
_020681F0:
	cmp r1, #0
	beq _020681FA
	ldr r1, [r1]
	add r3, r0, r1
	b _020681FC
_020681FA:
	mov r3, #0
_020681FC:
	ldr r1, [r3, #0xc]
	mov r0, #0xf
	bic r1, r0
	add r0, r1, #0
	orr r0, r2
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_020681C0

	thumb_func_start sub_0206820C
sub_0206820C: ; 0x0206820C
	push {r4, r5}
	cmp r0, #0
	beq _0206821C
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0206821C
	add r0, r0, r3
	b _0206821E
_0206821C:
	mov r0, #0
_0206821E:
	cmp r0, #0
	beq _02068246
	add r5, r0, #4
	beq _0206823A
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _0206823A
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _0206823C
_0206823A:
	mov r1, #0
_0206823C:
	cmp r1, #0
	beq _02068246
	ldr r1, [r1]
	add r3, r0, r1
	b _02068248
_02068246:
	mov r3, #0
_02068248:
	ldr r1, [r3, #0xc]
	mov r0, #0x30
	bic r1, r0
	lsl r0, r2, #4
	orr r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0206820C

	thumb_func_start sub_02068258
sub_02068258: ; 0x02068258
	push {r4, r5}
	cmp r0, #0
	beq _02068268
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02068268
	add r0, r0, r3
	b _0206826A
_02068268:
	mov r0, #0
_0206826A:
	cmp r0, #0
	beq _02068292
	add r5, r0, #4
	beq _02068286
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _02068286
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _02068288
_02068286:
	mov r1, #0
_02068288:
	cmp r1, #0
	beq _02068292
	ldr r1, [r1]
	add r3, r0, r1
	b _02068294
_02068292:
	mov r3, #0
_02068294:
	ldr r1, [r3, #0xc]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r2, #6
	orr r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02068258

	thumb_func_start sub_020682A4
sub_020682A4: ; 0x020682A4
	push {r4, r5}
	cmp r0, #0
	beq _020682B4
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020682B4
	add r0, r0, r3
	b _020682B6
_020682B4:
	mov r0, #0
_020682B6:
	cmp r0, #0
	beq _020682DE
	add r5, r0, #4
	beq _020682D2
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _020682D2
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _020682D4
_020682D2:
	mov r1, #0
_020682D4:
	cmp r1, #0
	beq _020682DE
	ldr r1, [r1]
	add r3, r0, r1
	b _020682E0
_020682DE:
	mov r3, #0
_020682E0:
	ldr r1, [r3, #0xc]
	ldr r0, _020682F0 ; =0xC0FFFFFF
	and r1, r0
	lsl r0, r2, #0x18
	orr r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	.align 2, 0
_020682F0: .word 0xC0FFFFFF
	thumb_func_end sub_020682A4

	thumb_func_start sub_020682F4
sub_020682F4: ; 0x020682F4
	push {r4, r5}
	cmp r0, #0
	beq _02068304
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02068304
	add r0, r0, r3
	b _02068306
_02068304:
	mov r0, #0
_02068306:
	cmp r0, #0
	beq _0206832E
	add r5, r0, #4
	beq _02068322
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _02068322
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _02068324
_02068322:
	mov r1, #0
_02068324:
	cmp r1, #0
	beq _0206832E
	ldr r1, [r1]
	add r3, r0, r1
	b _02068330
_0206832E:
	mov r3, #0
_02068330:
	ldr r1, [r3, #0xc]
	ldr r0, _02068340 ; =0xFFE0FFFF
	and r1, r0
	lsl r0, r2, #0x10
	orr r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02068340: .word 0xFFE0FFFF
	thumb_func_end sub_020682F4

	thumb_func_start sub_02068344
sub_02068344: ; 0x02068344
	push {r4, r5}
	cmp r0, #0
	beq _02068354
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02068354
	add r0, r0, r3
	b _02068356
_02068354:
	mov r0, #0
_02068356:
	cmp r0, #0
	beq _0206837E
	add r5, r0, #4
	beq _02068372
	ldrb r3, [r0, #5]
	cmp r1, r3
	bhs _02068372
	ldrh r3, [r0, #0xa]
	add r4, r5, r3
	ldrh r3, [r5, r3]
	add r4, r4, #4
	mul r1, r3
	add r1, r4, r1
	b _02068374
_02068372:
	mov r1, #0
_02068374:
	cmp r1, #0
	beq _0206837E
	ldr r1, [r1]
	add r3, r0, r1
	b _02068380
_0206837E:
	mov r3, #0
_02068380:
	cmp r2, #0
	ldr r1, [r3, #0xc]
	beq _02068392
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
_02068392:
	ldr r0, _0206839C ; =0xFFFF7FFF
	and r0, r1
	str r0, [r3, #0xc]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0206839C: .word 0xFFFF7FFF
	thumb_func_end sub_02068344

	thumb_func_start sub_020683A0
sub_020683A0: ; 0x020683A0
	push {r3, r4}
	cmp r0, #0
	beq _020683B0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020683B0
	add r0, r0, r2
	b _020683B2
_020683B0:
	mov r0, #0
_020683B2:
	cmp r0, #0
	beq _020683DA
	add r4, r0, #4
	beq _020683CE
	ldrb r2, [r0, #5]
	cmp r1, r2
	bhs _020683CE
	ldrh r2, [r0, #0xa]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #4
	mul r1, r2
	add r1, r3, r1
	b _020683D0
_020683CE:
	mov r1, #0
_020683D0:
	cmp r1, #0
	beq _020683DA
	ldr r1, [r1]
	add r0, r0, r1
	b _020683DC
_020683DA:
	mov r0, #0
_020683DC:
	ldr r1, [r0, #0xc]
	mov r0, #0x1f
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020683A0

	thumb_func_start sub_020683EC
sub_020683EC: ; 0x020683EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _0206840C
_020683FA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020682A4
	ldrb r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020683FA
_0206840C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020683EC

	thumb_func_start sub_02068410
sub_02068410: ; 0x02068410
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _02068430
_0206841E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020682F4
	ldrb r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _0206841E
_02068430:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02068410

	thumb_func_start sub_02068434
sub_02068434: ; 0x02068434
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _02068454
_02068442:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02068344
	ldrb r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _02068442
_02068454:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02068434

	thumb_func_start sub_02068458
sub_02068458: ; 0x02068458
	push {r3, r4, r5, r6, r7, lr}
	add r2, r0, #0
	add r0, r1, #0
	bne _02068464
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02068464:
	ldrb r1, [r2, #1]
	mov lr, r1
	cmp r1, #0x10
	bhs _020684DE
	ldr r1, [r0]
	ldr r7, [r0, #8]
	mov ip, r1
	ldr r1, [r0, #4]
	ldr r6, [r0, #0xc]
	str r1, [sp]
	mov r1, lr
	mov r0, #0
	cmp r1, #0
	bls _02068570
	add r5, r0, #0
_02068482:
	cmp r2, #0
	beq _02068498
	ldrb r1, [r2, #1]
	cmp r0, r1
	bhs _02068498
	ldrh r1, [r2, #6]
	add r3, r2, r1
	ldrh r1, [r3, #2]
	add r1, r3, r1
	add r1, r1, r5
	b _0206849A
_02068498:
	mov r1, #0
_0206849A:
	ldr r4, [r1]
	mov r3, ip
	cmp r4, r3
	bne _020684D2
	ldr r4, [r1, #4]
	ldr r3, [sp]
	cmp r4, r3
	bne _020684D2
	ldr r3, [r1, #8]
	cmp r3, r7
	bne _020684D2
	ldr r1, [r1, #0xc]
	cmp r1, r6
	bne _020684D2
	cmp r2, #0
	beq _020684CE
	mov r1, lr
	cmp r0, r1
	bhs _020684CE
	ldrh r1, [r2, #6]
	add r3, r2, r1
	ldrh r1, [r2, r1]
	add r3, r3, #4
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4, r5, r6, r7, pc}
_020684CE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020684D2:
	ldrb r1, [r2, #1]
	add r0, r0, #1
	add r5, #0x10
	cmp r0, r1
	blo _02068482
	b _02068570
_020684DE:
	add r7, r2, #0
	add r7, #8
	ldrb r1, [r7, #1]
	cmp r1, #0
	beq _02068570
	lsl r1, r1, #2
	add r5, r7, r1
	ldrb r6, [r7, r1]
	ldrb r1, [r7]
	cmp r1, r6
	bls _02068516
_020684F4:
	asr r1, r6, #5
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r1, #0x1f
	and r1, r6
	lsr r3, r1
	mov r1, #1
	and r1, r3
	add r1, r5, r1
	ldrb r1, [r1, #1]
	add r4, r5, #0
	lsl r1, r1, #2
	add r5, r7, r1
	ldrb r6, [r7, r1]
	ldrb r1, [r4]
	cmp r1, r6
	bhi _020684F4
_02068516:
	ldrb r3, [r5, #3]
	cmp r2, #0
	beq _02068530
	mov r1, lr
	cmp r3, r1
	bhs _02068530
	ldrh r1, [r2, #6]
	add r4, r2, r1
	ldrh r1, [r4, #2]
	add r4, r4, r1
	lsl r1, r3, #4
	add r1, r4, r1
	b _02068532
_02068530:
	mov r1, #0
_02068532:
	ldr r5, [r1]
	ldr r4, [r0]
	cmp r5, r4
	bne _02068570
	ldr r5, [r1, #4]
	ldr r4, [r0, #4]
	cmp r5, r4
	bne _02068570
	ldr r5, [r1, #8]
	ldr r4, [r0, #8]
	cmp r5, r4
	bne _02068570
	ldr r1, [r1, #0xc]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _02068570
	cmp r2, #0
	beq _0206856C
	mov r0, lr
	cmp r3, r0
	bhs _0206856C
	ldrh r0, [r2, #6]
	add r1, r2, r0
	ldrh r0, [r2, r0]
	add r4, r1, #4
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	pop {r3, r4, r5, r6, r7, pc}
_0206856C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02068570:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02068458

	thumb_func_start sub_02068574
sub_02068574: ; 0x02068574
	push {r3, r4, r5, r6, r7, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _02068582
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02068582:
	ldrb r0, [r2, #1]
	mov lr, r0
	cmp r0, #0x10
	bhs _020685E0
	ldr r0, [r1]
	ldr r7, [r1, #8]
	mov ip, r0
	ldr r0, [r1, #4]
	ldr r6, [r1, #0xc]
	str r0, [sp]
	mov r1, lr
	mov r0, #0
	cmp r1, #0
	bls _02068654
	add r3, r0, #0
_020685A0:
	cmp r2, #0
	beq _020685B6
	ldrb r1, [r2, #1]
	cmp r0, r1
	bhs _020685B6
	ldrh r1, [r2, #6]
	add r4, r2, r1
	ldrh r1, [r4, #2]
	add r1, r4, r1
	add r1, r1, r3
	b _020685B8
_020685B6:
	mov r1, #0
_020685B8:
	ldr r5, [r1]
	mov r4, ip
	cmp r5, r4
	bne _020685D4
	ldr r5, [r1, #4]
	ldr r4, [sp]
	cmp r5, r4
	bne _020685D4
	ldr r4, [r1, #8]
	cmp r4, r7
	bne _020685D4
	ldr r1, [r1, #0xc]
	cmp r1, r6
	beq _02068658
_020685D4:
	ldrb r1, [r2, #1]
	add r0, r0, #1
	add r3, #0x10
	cmp r0, r1
	blo _020685A0
	b _02068654
_020685E0:
	add r7, r2, #0
	add r7, #8
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _02068654
	lsl r0, r0, #2
	add r5, r7, r0
	ldrb r6, [r7, r0]
	ldrb r0, [r7]
	cmp r0, r6
	bls _02068618
_020685F6:
	asr r0, r6, #5
	lsl r0, r0, #2
	ldr r3, [r1, r0]
	mov r0, #0x1f
	and r0, r6
	lsr r3, r0
	mov r0, #1
	and r0, r3
	add r0, r5, r0
	ldrb r0, [r0, #1]
	add r4, r5, #0
	lsl r0, r0, #2
	add r5, r7, r0
	ldrb r6, [r7, r0]
	ldrb r0, [r4]
	cmp r0, r6
	bhi _020685F6
_02068618:
	ldrb r0, [r5, #3]
	cmp r2, #0
	beq _02068632
	mov r3, lr
	cmp r0, r3
	bhs _02068632
	ldrh r3, [r2, #6]
	add r3, r2, r3
	ldrh r2, [r3, #2]
	add r3, r3, r2
	lsl r2, r0, #4
	add r2, r3, r2
	b _02068634
_02068632:
	mov r2, #0
_02068634:
	ldr r4, [r2]
	ldr r3, [r1]
	cmp r4, r3
	bne _02068654
	ldr r4, [r2, #4]
	ldr r3, [r1, #4]
	cmp r4, r3
	bne _02068654
	ldr r4, [r2, #8]
	ldr r3, [r1, #8]
	cmp r4, r3
	bne _02068654
	ldr r2, [r2, #0xc]
	ldr r1, [r1, #0xc]
	cmp r2, r1
	beq _02068658
_02068654:
	mov r0, #0
	mvn r0, r0
_02068658:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02068574

	thumb_func_start sub_0206865C
sub_0206865C: ; 0x0206865C
	ldrh r1, [r0, #0xc]
	ldr r1, [r0, r1]
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0206865C

	thumb_func_start sub_02068664
sub_02068664: ; 0x02068664
	ldrh r1, [r0, #0xc]
	add r3, r0, r1
	ldrh r1, [r0, #0xe]
	cmp r1, #1
	bne _02068680
	ldr r2, [r0]
	ldr r1, _02068688 ; =0x30585442
	cmp r2, r1
	bne _0206867C
	ldr r1, [r3]
	add r0, r0, r1
	bx lr
_0206867C:
	mov r0, #0
	bx lr
_02068680:
	ldr r1, [r3, #4]
	add r0, r0, r1
	bx lr
	nop
_02068688: .word 0x30585442
	thumb_func_end sub_02068664

	thumb_func_start sub_0206868C
sub_0206868C: ; 0x0206868C
	push {r3, r4}
	cmp r0, #0
	beq _020686C0
	ldrh r2, [r0, #0xc]
	ldr r2, [r0, r2]
	add r0, r0, r2
	add r4, r0, #0
	add r4, #8
	beq _020686B2
	ldrb r2, [r0, #9]
	cmp r1, r2
	bhs _020686B2
	ldrh r2, [r0, #0xe]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #4
	mul r1, r2
	add r1, r3, r1
	b _020686B4
_020686B2:
	mov r1, #0
_020686B4:
	cmp r1, #0
	beq _020686C0
	ldr r1, [r1]
	add r0, r0, r1
	pop {r3, r4}
	bx lr
_020686C0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0206868C

	thumb_func_start sub_020686C8
sub_020686C8: ; 0x020686C8
	cmp r0, #0
	beq _020686DC
	ldrb r2, [r0, #6]
	cmp r1, r2
	bhs _020686DC
	ldrh r2, [r0, #8]
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
_020686DC:
	mov r0, #0
	bx lr
	thumb_func_end sub_020686C8

	thumb_func_start sub_020686E0
sub_020686E0: ; 0x020686E0
	cmp r0, #0
	beq _020686F4
	ldrb r2, [r0, #7]
	cmp r1, r2
	bhs _020686F4
	ldrh r2, [r0, #0xa]
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
_020686F4:
	mov r0, #0
	bx lr
	thumb_func_end sub_020686E0

	thumb_func_start sub_020686F8
sub_020686F8: ; 0x020686F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02068744
	mov r2, #4
	ldrsh r2, [r0, r2]
	ldrh r1, [r0, #6]
	add r3, r2, #0
	mul r3, r4
	lsr r2, r3, #0xc
	add r1, r5, r1
	lsl r3, r2, #2
	add r5, r1, r3
	b _0206871A
_02068716:
	sub r5, r5, #4
	sub r2, r2, #1
_0206871A:
	cmp r2, #0
	beq _02068724
	ldrh r3, [r5]
	cmp r3, r4
	bhs _02068716
_02068724:
	lsl r3, r2, #2
	add r3, r1, r3
	ldrh r5, [r0]
	b _02068730
_0206872C:
	add r3, r3, #4
	add r2, r2, #1
_02068730:
	add r0, r2, #1
	cmp r0, r5
	bhs _0206873C
	ldrh r0, [r3, #4]
	cmp r0, r4
	bls _0206872C
_0206873C:
	lsl r0, r2, #2
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020686F8

	thumb_func_start sub_02068744
sub_02068744: ; 0x02068744
	add r3, r0, #0
	add r3, #0xc
	beq _0206875E
	ldrb r2, [r0, #0xd]
	cmp r1, r2
	bhs _0206875E
	ldrh r0, [r0, #0x12]
	add r2, r3, r0
	ldrh r0, [r3, r0]
	add r2, r2, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
_0206875E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02068744

	thumb_func_start sub_02068764
sub_02068764: ; 0x02068764
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _020687AC ; =0x0209B28C
	str r4, [r5, #8]
	ldr r0, [r0]
	add r1, r5, #0
	str r0, [r5, #0xc]
	ldrb r2, [r2, #0x17]
	mov r0, #0
	add r1, #0x1a
	strb r2, [r5, #0x19]
	lsl r2, r2, #1
	blx sub_02078624
	add r1, r4, #0
	ldrh r2, [r4, #6]
	add r1, #0x14
	mov r0, #0
	cmp r2, #0
	bls _020687A8
	mov r2, #1
	lsl r2, r2, #8
_02068792:
	ldrh r3, [r1]
	add r0, r0, #1
	add r1, r1, #2
	ldr r3, [r4, r3]
	lsr r3, r3, #0x18
	orr r3, r2
	strh r3, [r5, #0x1a]
	ldrh r3, [r4, #6]
	add r5, r5, #2
	cmp r0, r3
	blo _02068792
_020687A8:
	pop {r3, r4, r5, pc}
	nop
_020687AC: .word 0x0209B28C
	thumb_func_end sub_02068764

	thumb_func_start sub_020687B0
sub_020687B0: ; 0x020687B0
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, [r1, #8]
	ldr r5, [r1]
	ldrh r4, [r0, #4]
	lsl r4, r4, #0xc
	cmp r5, r4
	blt _020687C4
	sub r5, r4, #1
	b _020687CA
_020687C4:
	cmp r5, #0
	bge _020687CA
	mov r5, #0
_020687CA:
	add r1, r2, #0
	add r2, r5, #0
	bl sub_020689B0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020687B0

	thumb_func_start sub_020687D4
sub_020687D4: ; 0x020687D4
	push {r4, r5}
	ldr r1, _02068830 ; =0x02143C70
	ldr r2, [r1]
	ldr r1, [r2]
	add r2, #0xd4
	ldrb r5, [r1, #1]
	ldr r1, [r2]
	cmp r1, #0
	beq _0206880A
	beq _020687FE
	ldrb r2, [r1, #1]
	cmp r5, r2
	bhs _020687FE
	ldrh r2, [r1, #6]
	add r3, r1, r2
	ldrh r2, [r1, r2]
	add r4, r3, #4
	add r3, r2, #0
	mul r3, r5
	add r2, r4, r3
	b _02068800
_020687FE:
	mov r2, #0
_02068800:
	cmp r2, #0
	beq _0206880A
	ldr r2, [r2]
	add r3, r1, r2
	b _0206880C
_0206880A:
	mov r3, #0
_0206880C:
	ldrh r2, [r3]
	mov r1, #1
	tst r1, r2
	beq _02068820
	ldr r2, [r0]
	mov r1, #4
	orr r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr
_02068820:
	ldr r1, [r3, #4]
	str r1, [r0, #0x4c]
	ldr r1, [r3, #8]
	str r1, [r0, #0x50]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0x54]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02068830: .word 0x02143C70
	thumb_func_end sub_020687D4

	thumb_func_start sub_02068834
sub_02068834: ; 0x02068834
	push {r4, r5, r6, lr}
	ldr r1, _02068894 ; =0x02143C70
	ldr r4, [r1]
	add r1, r4, #0
	add r1, #0xd4
	ldr r2, [r4]
	ldr r5, [r1]
	ldrb r3, [r2, #1]
	cmp r5, #0
	beq _0206886A
	beq _0206885E
	ldrb r1, [r5, #1]
	cmp r3, r1
	bhs _0206885E
	ldrh r6, [r5, #6]
	add r1, r5, r6
	ldrh r6, [r5, r6]
	add r1, r1, #4
	mul r3, r6
	add r1, r1, r3
	b _02068860
_0206885E:
	mov r1, #0
_02068860:
	cmp r1, #0
	beq _0206886A
	ldr r1, [r1]
	add r3, r5, r1
	b _0206886C
_0206886A:
	mov r3, #0
_0206886C:
	add r1, r3, #4
	ldrh r3, [r3]
	mov r5, #1
	tst r5, r3
	bne _02068878
	add r1, #0xc
_02068878:
	mov r5, #2
	tst r5, r3
	bne _0206888A
	mov r5, #8
	tst r5, r3
	beq _02068888
	add r1, r1, #4
	b _0206888A
_02068888:
	add r1, #0x10
_0206888A:
	add r4, #0xe8
	ldr r4, [r4]
	blx r4
	pop {r4, r5, r6, pc}
	nop
_02068894: .word 0x02143C70
	thumb_func_end sub_02068834

	thumb_func_start sub_02068898
sub_02068898: ; 0x02068898
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02068998 ; =0x02143C70
	ldr r1, [r0]
	ldr r0, [r1]
	add r1, #0xd4
	ldr r1, [r1]
	ldrb r0, [r0, #1]
	cmp r1, #0
	beq _020688CE
	beq _020688C2
	ldrb r2, [r1, #1]
	cmp r0, r2
	bhs _020688C2
	ldrh r2, [r1, #6]
	add r3, r1, r2
	ldrh r2, [r1, r2]
	add r3, r3, #4
	mul r0, r2
	add r0, r3, r0
	b _020688C4
_020688C2:
	mov r0, #0
_020688C4:
	cmp r0, #0
	beq _020688CE
	ldr r0, [r0]
	add r4, r1, r0
	b _020688D0
_020688CE:
	mov r4, #0
_020688D0:
	ldrh r0, [r4]
	mov r1, #1
	add r3, r4, #4
	tst r1, r0
	bne _020688DC
	add r3, #0xc
_020688DC:
	mov r2, #2
	add r1, r0, #0
	tst r1, r2
	bne _0206898E
	mov r1, #8
	add r6, r0, #0
	tst r6, r1
	beq _0206895C
	mov r1, #0
	ldrsh r6, [r3, r1]
	mov r1, #0xf0
	and r0, r1
	asr r0, r0, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	ldrsh r7, [r3, r2]
	bl sub_02079084
	mov r0, #1
	ldrh r1, [r4]
	lsl r0, r0, #8
	tst r1, r0
	beq _02068910
	ldr r1, _0206899C ; =0xFFFFF000
	b _02068912
_02068910:
	lsl r1, r0, #4
_02068912:
	ldr r0, [sp]
	lsl r0, r0, #2
	add r2, r5, r0
	str r1, [r2, #0x28]
	ldr r1, _020689A0 ; =0x02094458
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r1, r5, r1
	str r6, [r1, #0x28]
	ldr r1, _020689A4 ; =0x02094459
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r1, r5, r1
	str r7, [r1, #0x28]
	mov r1, #2
	ldrh r2, [r4]
	lsl r1, r1, #8
	tst r1, r2
	beq _0206893A
	neg r7, r7
_0206893A:
	ldr r1, _020689A8 ; =0x0209445A
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r1, r5, r1
	str r7, [r1, #0x28]
	ldrh r2, [r4]
	mov r1, #1
	lsl r1, r1, #0xa
	tst r1, r2
	beq _02068950
	neg r6, r6
_02068950:
	ldr r1, _020689AC ; =0x0209445B
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	str r6, [r0, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0206895C:
	ldrsh r0, [r4, r2]
	str r0, [r5, #0x28]
	mov r0, #0
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x2c]
	ldrsh r0, [r3, r2]
	str r0, [r5, #0x30]
	mov r0, #4
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x34]
	mov r0, #6
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x38]
	ldrsh r0, [r3, r1]
	str r0, [r5, #0x3c]
	mov r0, #0xa
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x40]
	mov r0, #0xc
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x44]
	mov r0, #0xe
	ldrsh r0, [r3, r0]
	str r0, [r5, #0x48]
	pop {r3, r4, r5, r6, r7, pc}
_0206898E:
	ldr r0, [r5]
	orr r0, r2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068998: .word 0x02143C70
_0206899C: .word 0xFFFFF000
_020689A0: .word 0x02094458
_020689A4: .word 0x02094459
_020689A8: .word 0x0209445A
_020689AC: .word 0x0209445B
	thumb_func_end sub_02068898

	thumb_func_start sub_020689B0
sub_020689B0: ; 0x020689B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r0, #0
	lsl r0, r1, #1
	add r0, r7, r0
	ldrh r0, [r0, #0x14]
	str r2, [sp]
	add r5, r3, #0
	ldr r6, [r7, r0]
	add r1, r7, r0
	mov r0, #1
	str r0, [sp, #4]
	tst r0, r6
	beq _020689D2
	mov r0, #7
	str r0, [r5]
	b _02068C34
_020689D2:
	add r4, r1, #4
	ldr r1, _02068C58 ; =0x00000FFF
	add r0, r2, #0
	tst r0, r1
	beq _020689E4
	ldr r1, [r7, #8]
	ldr r0, [sp, #4]
	tst r0, r1
	bne _020689E8
_020689E4:
	mov r0, #0
	str r0, [sp, #4]
_020689E8:
	mov r0, #0
	str r0, [r5]
	mov r0, #6
	tst r0, r6
	bne _02068A90
	mov r0, #8
	tst r0, r6
	bne _02068A20
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02068A0E
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x4c
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068D50
	b _02068A1C
_02068A0E:
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x4c
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068C60
_02068A1C:
	add r4, #8
	b _02068A26
_02068A20:
	ldr r0, [r4]
	add r4, r4, #4
	str r0, [r5, #0x4c]
_02068A26:
	mov r0, #0x10
	tst r0, r6
	bne _02068A54
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02068A42
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x50
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068D50
	b _02068A50
_02068A42:
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x50
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068C60
_02068A50:
	add r4, #8
	b _02068A5A
_02068A54:
	ldr r0, [r4]
	add r4, r4, #4
	str r0, [r5, #0x50]
_02068A5A:
	mov r0, #0x20
	tst r0, r6
	bne _02068A88
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02068A76
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x54
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068D50
	b _02068A84
_02068A76:
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x54
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068C60
_02068A84:
	add r4, #8
	b _02068AA6
_02068A88:
	ldr r0, [r4]
	add r4, r4, #4
	str r0, [r5, #0x54]
	b _02068AA6
_02068A90:
	mov r0, #2
	tst r0, r6
	beq _02068AA0
	ldr r1, [r5]
	mov r0, #4
	orr r0, r1
	str r0, [r5]
	b _02068AA6
_02068AA0:
	add r0, r5, #0
	bl sub_020687D4
_02068AA6:
	mov r0, #0xc0
	add r1, r6, #0
	tst r1, r0
	bne _02068B40
	add r0, #0x40
	tst r0, r6
	bne _02068ADC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02068ACA
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x28
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02069390
	b _02068AD8
_02068ACA:
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x28
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020690DC
_02068AD8:
	add r4, #8
	b _02068B56
_02068ADC:
	ldr r1, [r7, #0xc]
	ldr r2, [r7, #0x10]
	add r0, r5, #0
	ldr r3, [r4]
	add r0, #0x28
	add r1, r7, r1
	add r2, r7, r2
	bl sub_02069600
	cmp r0, #0
	beq _02068B3C
	ldr r0, [r5, #0x3c]
	ldr r2, [r5, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0x10]
	mov ip, r0
	add r3, r1, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mul r3, r0
	mov r0, ip
	mul r0, r1
	sub r0, r3, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x40]
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	mul r3, r0
	ldr r0, [sp, #8]
	mul r0, r2
	sub r0, r3, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x44]
	mov r0, ip
	mul r0, r2
	ldr r2, [sp, #0x10]
	mul r1, r2
	sub r0, r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x48]
_02068B3C:
	add r4, r4, #4
	b _02068B56
_02068B40:
	mov r0, #0x40
	tst r0, r6
	beq _02068B50
	ldr r1, [r5]
	mov r0, #2
	orr r0, r1
	str r0, [r5]
	b _02068B56
_02068B50:
	add r0, r5, #0
	bl sub_02068898
_02068B56:
	mov r0, #6
	lsl r0, r0, #8
	tst r0, r6
	bne _02068C18
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r6
	bne _02068B8E
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sp, #0x28
	beq _02068B7A
	ldr r1, [sp]
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068FB0
	b _02068B84
_02068B7A:
	ldr r1, [sp]
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068E68
_02068B84:
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x3c]
	b _02068B96
_02068B8E:
	ldr r0, [r4]
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	str r0, [sp, #0x3c]
_02068B96:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r6
	bne _02068BCA
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sp, #0x20
	beq _02068BB4
	add r2, r4, #0
	ldr r1, [sp]
	add r2, #8
	add r3, r7, #0
	bl sub_02068FB0
	b _02068BC0
_02068BB4:
	add r2, r4, #0
	ldr r1, [sp]
	add r2, #8
	add r3, r7, #0
	bl sub_02068E68
_02068BC0:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x40]
	b _02068BD6
_02068BCA:
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #8
	str r0, [sp, #0x34]
	ldr r0, [r1, #4]
	str r0, [sp, #0x40]
_02068BD6:
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r6
	bne _02068C0A
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sp, #0x18
	beq _02068BF4
	add r4, #0x10
	ldr r1, [sp]
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068FB0
	b _02068C00
_02068BF4:
	add r4, #0x10
	ldr r1, [sp]
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02068E68
_02068C00:
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x44]
	b _02068C34
_02068C0A:
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x10
	str r0, [sp, #0x38]
	ldr r0, [r1, #4]
	str r0, [sp, #0x44]
	b _02068C34
_02068C18:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r6
	beq _02068C2A
	ldr r1, [r5]
	mov r0, #1
	orr r0, r1
	str r0, [r5]
	b _02068C34
_02068C2A:
	add r0, r5, #0
	bl sub_02068834
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_02068C34:
	ldr r1, [r5]
	mov r0, #1
	tst r0, r1
	beq _02068C40
	mov r3, #4
	b _02068C42
_02068C40:
	mov r3, #0
_02068C42:
	ldr r0, _02068C5C ; =0x02143C70
	add r1, sp, #0x30
	ldr r4, [r0]
	add r0, r5, #0
	ldr r2, [r4]
	add r4, #0xe8
	ldr r4, [r4]
	blx r4
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068C58: .word 0x00000FFF
_02068C5C: .word 0x02143C70
	thumb_func_end sub_020689B0

	thumb_func_start sub_02068C60
sub_02068C60: ; 0x02068C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	asr r6, r1, #0xc
	add r4, r3, r0
	mov r0, #3
	ldr r1, [r2]
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02068D32
	ldr r0, _02068D4C ; =0x1FFF0000
	mov r2, #1
	and r0, r1
	lsl r2, r2, #0x1e
	lsr r0, r0, #0x10
	tst r2, r1
	beq _02068C9A
	mov r2, #1
	tst r2, r6
	beq _02068C96
	cmp r6, r0
	bls _02068C92
	lsr r0, r0, #1
	add r6, r0, #1
	b _02068D32
_02068C92:
	lsr r2, r6, #1
	b _02068D06
_02068C96:
	lsr r6, r6, #1
	b _02068D32
_02068C9A:
	mov r2, #3
	and r2, r6
	beq _02068D02
	cmp r6, r0
	bls _02068CAA
	lsr r0, r0, #2
	add r6, r0, r2
	b _02068D32
_02068CAA:
	mov r0, #1
	tst r0, r6
	beq _02068CFE
	mov r0, #2
	tst r0, r6
	beq _02068CBC
	lsr r6, r6, #2
	add r2, r6, #1
	b _02068CC0
_02068CBC:
	lsr r2, r6, #2
	add r6, r2, #1
_02068CC0:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068CDC
	lsl r0, r2, #1
	ldrsh r1, [r4, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	lsl r0, r6, #1
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02068CDC:
	lsl r0, r2, #2
	ldr r0, [r4, r0]
	mov r2, #3
	asr r1, r0, #0x1f
	mov r3, #0
	blx sub_0208D60C
	lsl r2, r6, #2
	ldr r3, [r4, r2]
	asr r2, r3, #0x1f
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x1e
	lsr r1, r3, #2
	orr r1, r0
	str r1, [r5]
	pop {r4, r5, r6, pc}
_02068CFE:
	lsr r2, r6, #2
	b _02068D06
_02068D02:
	lsr r6, r6, #2
	b _02068D32
_02068D06:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068D20
	lsl r0, r2, #1
	ldrsh r2, [r4, r0]
	add r1, r4, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	asr r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02068D20:
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	asr r1, r0, #1
	add r0, r4, r2
	ldr r0, [r0, #4]
	asr r0, r0, #1
	add r0, r1, r0
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02068D32:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068D42
	lsl r0, r6, #1
	ldrsh r0, [r4, r0]
	str r0, [r5]
	pop {r4, r5, r6, pc}
_02068D42:
	lsl r0, r6, #2
	ldr r0, [r4, r0]
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_02068D4C: .word 0x1FFF0000
	thumb_func_end sub_02068C60

	thumb_func_start sub_02068D50
sub_02068D50: ; 0x02068D50
	push {r4, r5, r6, r7}
	add r4, r3, #0
	ldrh r6, [r4, #4]
	add r5, r1, #0
	ldr r1, [r2, #4]
	asr r3, r5, #0xc
	sub r6, r6, #1
	add r1, r4, r1
	ldr r2, [r2]
	cmp r3, r6
	bne _02068DD6
	mov r6, #3
	lsl r6, r6, #0x1e
	tst r6, r2
	beq _02068D88
	mov r6, #1
	lsl r6, r6, #0x1e
	tst r6, r2
	beq _02068D80
	mov r7, #1
	lsr r6, r3, #1
	and r3, r7
	add r3, r6, r3
	b _02068D88
_02068D80:
	mov r7, #3
	lsr r6, r3, #2
	and r3, r7
	add r3, r6, r3
_02068D88:
	ldr r6, [r4, #8]
	mov r4, #2
	tst r4, r6
	beq _02068DBA
	ldr r4, _02068E5C ; =0x00000FFF
	and r4, r5
	mov r5, #2
	lsl r5, r5, #0x1c
	tst r2, r5
	beq _02068DA6
	lsl r2, r3, #1
	ldrsh r3, [r1, r2]
	mov r2, #0
	ldrsh r1, [r1, r2]
	b _02068DAC
_02068DA6:
	lsl r2, r3, #2
	ldr r3, [r1, r2]
	ldr r1, [r1]
_02068DAC:
	sub r1, r1, r3
	mul r1, r4
	asr r1, r1, #0xc
	add r1, r3, r1
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
_02068DBA:
	mov r4, #2
	lsl r4, r4, #0x1c
	tst r2, r4
	beq _02068DCC
	lsl r2, r3, #1
	ldrsh r1, [r1, r2]
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
_02068DCC:
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
_02068DD6:
	mov r4, #3
	lsl r4, r4, #0x1e
	tst r4, r2
	beq _02068E20
	ldr r6, _02068E60 ; =0x1FFF0000
	add r4, r2, #0
	mov r7, #1
	and r4, r6
	lsl r7, r7, #0x1e
	lsr r4, r4, #0x10
	tst r7, r2
	beq _02068E04
	cmp r3, r4
	blo _02068DF6
	lsr r3, r4, #1
	b _02068E20
_02068DF6:
	lsr r4, r6, #0x10
	add r6, r5, #0
	and r6, r4
	lsr r3, r3, #1
	mov r4, #2
	mov r5, #1
	b _02068E2A
_02068E04:
	cmp r3, r4
	blo _02068E12
	mov r4, #3
	lsr r6, r3, #2
	and r3, r4
	add r3, r6, r3
	b _02068E20
_02068E12:
	ldr r4, _02068E64 ; =0x00003FFF
	add r6, r5, #0
	and r6, r4
	lsr r3, r3, #2
	mov r4, #4
	mov r5, #2
	b _02068E2A
_02068E20:
	ldr r4, _02068E5C ; =0x00000FFF
	add r6, r5, #0
	and r6, r4
	mov r4, #1
	mov r5, #0
_02068E2A:
	mov r7, #2
	lsl r7, r7, #0x1c
	tst r2, r7
	beq _02068E3E
	lsl r3, r3, #1
	ldrsh r2, [r1, r3]
	add r3, r1, r3
	mov r1, #2
	ldrsh r1, [r3, r1]
	b _02068E46
_02068E3E:
	lsl r3, r3, #2
	ldr r2, [r1, r3]
	add r1, r1, r3
	ldr r1, [r1, #4]
_02068E46:
	sub r1, r1, r2
	add r3, r2, #0
	mul r1, r6
	mul r3, r4
	asr r1, r1, #0xc
	add r1, r3, r1
	asr r1, r5
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02068E5C: .word 0x00000FFF
_02068E60: .word 0x1FFF0000
_02068E64: .word 0x00003FFF
	thumb_func_end sub_02068D50

	thumb_func_start sub_02068E68
sub_02068E68: ; 0x02068E68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	asr r6, r1, #0xc
	add r4, r3, r0
	mov r0, #3
	ldr r1, [r2]
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02068F44
	ldr r0, _02068FAC ; =0x1FFF0000
	mov r2, #1
	and r0, r1
	lsl r2, r2, #0x1e
	lsr r0, r0, #0x10
	tst r2, r1
	beq _02068EA2
	mov r2, #1
	tst r2, r6
	beq _02068E9E
	cmp r6, r0
	bls _02068E9A
	lsr r0, r0, #1
	add r6, r0, #1
	b _02068F44
_02068E9A:
	lsr r2, r6, #1
	b _02068F6A
_02068E9E:
	lsr r6, r6, #1
	b _02068F44
_02068EA2:
	mov r2, #3
	and r2, r6
	beq _02068F42
	cmp r6, r0
	bls _02068EB2
	lsr r0, r0, #2
	add r6, r0, r2
	b _02068F44
_02068EB2:
	mov r0, #1
	tst r0, r6
	beq _02068F3E
	mov r0, #2
	tst r0, r6
	beq _02068EC4
	lsr r2, r6, #2
	add r3, r2, #1
	b _02068EC8
_02068EC4:
	lsr r3, r6, #2
	add r2, r3, #1
_02068EC8:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068EF8
	lsl r1, r3, #2
	ldrsh r6, [r4, r1]
	lsl r0, r2, #2
	ldrsh r3, [r4, r0]
	lsl r2, r6, #1
	add r2, r6, r2
	add r2, r3, r2
	asr r2, r2, #2
	str r2, [r5]
	add r2, r4, r1
	mov r1, #2
	ldrsh r2, [r2, r1]
	add r0, r4, r0
	ldrsh r1, [r0, r1]
	lsl r0, r2, #1
	add r0, r2, r0
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02068EF8:
	lsl r0, r3, #3
	lsl r7, r2, #3
	str r0, [sp]
	ldr r0, [r4, r0]
	ldr r6, [r4, r7]
	asr r1, r0, #0x1f
	mov r2, #3
	mov r3, #0
	blx sub_0208D60C
	asr r2, r6, #0x1f
	add r3, r0, r6
	adc r1, r2
	lsl r0, r1, #0x1e
	lsr r1, r3, #2
	orr r1, r0
	ldr r0, [sp]
	str r1, [r5]
	add r0, r4, r0
	ldr r0, [r0, #4]
	mov r2, #3
	asr r1, r0, #0x1f
	mov r3, #0
	blx sub_0208D60C
	add r2, r4, r7
	ldr r3, [r2, #4]
	asr r2, r3, #0x1f
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x1e
	lsr r1, r3, #2
	orr r1, r0
	str r1, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02068F3E:
	lsr r2, r6, #2
	b _02068F6A
_02068F42:
	lsr r6, r6, #2
_02068F44:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068F5C
	lsl r1, r6, #2
	ldrsh r0, [r4, r1]
	add r1, r4, r1
	str r0, [r5]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02068F5C:
	lsl r1, r6, #3
	ldr r0, [r4, r1]
	str r0, [r5]
	add r0, r4, r1
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02068F6A:
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02068F92
	lsl r0, r2, #2
	ldrsh r1, [r4, r0]
	add r2, r4, r0
	mov r0, #4
	ldrsh r0, [r2, r0]
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r5]
	mov r0, #2
	ldrsh r1, [r2, r0]
	mov r0, #6
	ldrsh r0, [r2, r0]
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02068F92:
	lsl r0, r2, #3
	add r2, r4, r0
	ldr r1, [r4, r0]
	ldr r0, [r2, #8]
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r5]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02068FAC: .word 0x1FFF0000
	thumb_func_end sub_02068E68

	thumb_func_start sub_02068FB0
sub_02068FB0: ; 0x02068FB0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r2, #4]
	ldr r5, [r2]
	ldrh r2, [r3, #4]
	asr r6, r4, #0xc
	add r1, r3, r1
	sub r2, r2, #1
	cmp r6, r2
	bne _02069016
	mov r2, #3
	lsl r2, r2, #0x1e
	tst r2, r5
	beq _02068FE6
	mov r2, #1
	lsl r2, r2, #0x1e
	tst r2, r5
	beq _02068FDE
	mov r7, #1
	lsr r2, r6, #1
	and r6, r7
	add r6, r2, r6
	b _02068FE6
_02068FDE:
	mov r7, #3
	lsr r2, r6, #2
	and r6, r7
	add r6, r2, r6
_02068FE6:
	ldr r2, [r3, #8]
	mov r3, #2
	tst r2, r3
	beq _02068FF2
	mov r2, #0
	b _0206906A
_02068FF2:
	mov r2, #2
	lsl r2, r2, #0x1c
	tst r2, r5
	beq _02069008
	lsl r4, r6, #2
	ldrsh r2, [r1, r4]
	add r1, r1, r4
	str r2, [r0]
	ldrsh r1, [r1, r3]
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02069008:
	lsl r3, r6, #3
	ldr r2, [r1, r3]
	add r1, r1, r3
	str r2, [r0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02069016:
	mov r2, #3
	lsl r2, r2, #0x1e
	tst r2, r5
	beq _02069068
	ldr r3, _020690D0 ; =0x1FFF0000
	add r2, r5, #0
	mov r7, #1
	and r2, r3
	lsl r7, r7, #0x1e
	lsr r2, r2, #0x10
	tst r7, r5
	beq _02069048
	cmp r6, r2
	blo _02069038
	lsr r6, r2, #1
	add r2, r6, #1
	b _0206906A
_02069038:
	lsr r3, r3, #0x10
	lsr r6, r6, #1
	and r3, r4
	mov ip, r3
	add r2, r6, #1
	mov r7, #2
	mov r3, #1
	b _02069074
_02069048:
	cmp r6, r2
	blo _02069058
	mov r2, #3
	lsr r3, r6, #2
	and r2, r6
	add r6, r3, r2
	add r2, r6, #1
	b _0206906A
_02069058:
	ldr r3, _020690D4 ; =0x00003FFF
	lsr r6, r6, #2
	and r3, r4
	mov ip, r3
	add r2, r6, #1
	mov r7, #4
	mov r3, #2
	b _02069074
_02069068:
	add r2, r6, #1
_0206906A:
	ldr r3, _020690D8 ; =0x00000FFF
	mov r7, #1
	and r3, r4
	mov ip, r3
	mov r3, #0
_02069074:
	mov r4, #2
	lsl r4, r4, #0x1c
	tst r4, r5
	beq _02069094
	lsl r4, r6, #2
	ldrsh r5, [r1, r4]
	lsl r2, r2, #2
	mov lr, r5
	add r5, r1, r4
	mov r4, #2
	ldrsh r4, [r5, r4]
	ldrsh r5, [r1, r2]
	add r2, r1, r2
	mov r1, #2
	ldrsh r2, [r2, r1]
	b _020690A6
_02069094:
	lsl r4, r6, #3
	ldr r5, [r1, r4]
	lsl r2, r2, #3
	mov lr, r5
	add r4, r1, r4
	ldr r5, [r1, r2]
	add r1, r1, r2
	ldr r4, [r4, #4]
	ldr r2, [r1, #4]
_020690A6:
	mov r1, lr
	add r6, r1, #0
	mov r1, lr
	sub r5, r5, r1
	mov r1, ip
	mul r5, r1
	mul r6, r7
	asr r1, r5, #0xc
	add r1, r6, r1
	asr r1, r3
	str r1, [r0]
	add r1, r4, #0
	sub r4, r2, r4
	mov r2, ip
	mul r4, r2
	mul r1, r7
	asr r2, r4, #0xc
	add r1, r1, r2
	asr r1, r3
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020690D0: .word 0x1FFF0000
_020690D4: .word 0x00003FFF
_020690D8: .word 0x00000FFF
	thumb_func_end sub_02068FB0

	thumb_func_start sub_020690DC
sub_020690DC: ; 0x020690DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	asr r3, r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldr r1, [r2]
	str r0, [sp, #0xc]
	ldr r0, [r2, #4]
	add r7, r5, r0
	mov r0, #3
	lsl r0, r0, #0x1e
	tst r0, r1
	bne _020690FE
	b _0206932A
_020690FE:
	ldr r0, _0206938C ; =0x1FFF0000
	mov r2, #1
	and r0, r1
	lsl r2, r2, #0x1e
	lsr r0, r0, #0x10
	tst r1, r2
	beq _02069124
	mov r1, #1
	tst r1, r3
	beq _02069120
	cmp r3, r0
	bls _0206911C
	lsr r0, r0, #1
	add r3, r0, #1
	b _0206932A
_0206911C:
	lsr r0, r3, #1
	b _02069252
_02069120:
	lsr r3, r3, #1
	b _0206932A
_02069124:
	mov r1, #3
	and r1, r3
	bne _0206912C
	b _0206924E
_0206912C:
	cmp r3, r0
	bls _02069136
	lsr r0, r0, #2
	add r3, r0, r1
	b _0206932A
_02069136:
	mov r0, #1
	tst r0, r3
	bne _0206913E
	b _0206924A
_0206913E:
	mov r0, #2
	mov r6, #0
	tst r0, r3
	beq _0206914E
	lsr r0, r3, #2
	str r0, [sp, #4]
	add r3, r0, #1
	b _02069154
_0206914E:
	lsr r3, r3, #2
	add r0, r3, #1
	str r0, [sp, #4]
_02069154:
	lsl r3, r3, #1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrh r3, [r7, r3]
	add r0, r4, #0
	add r1, r5, r1
	add r2, r5, r2
	bl sub_02069600
	ldr r3, [sp, #4]
	ldr r1, [sp, #8]
	lsl r3, r3, #1
	ldr r2, [sp, #0xc]
	orr r6, r0
	ldrh r3, [r7, r3]
	add r0, sp, #0x3c
	add r1, r5, r1
	add r2, r5, r2
	bl sub_02069600
	ldr r1, [r4]
	orr r6, r0
	lsl r0, r1, #1
	ldr r2, [sp, #0x3c]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x40]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [sp, #0x44]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [sp, #0x48]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #0x4c]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [sp, #0x50]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add r0, r4, #0
	add r0, #0xc
	add r1, r0, #0
	blx sub_02074254
	cmp r6, #0
	bne _0206920E
	ldr r1, [r4, #0x18]
	ldr r2, [sp, #0x54]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [sp, #0x58]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x5c]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x20]
	add r4, #0x18
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_0206920E:
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	add r7, r0, #0
	ldr r1, [r4, #8]
	str r6, [sp, #0x10]
	mul r7, r5
	mul r6, r1
	sub r6, r7, r6
	ldr r3, [r4]
	ldr r2, [r4, #0xc]
	asr r6, r6, #0xc
	str r6, [r4, #0x18]
	add r6, r1, #0
	add r1, r3, #0
	mul r1, r5
	mul r6, r2
	sub r1, r6, r1
	asr r1, r1, #0xc
	str r1, [r4, #0x1c]
	ldr r1, [sp, #0x10]
	add r5, r3, #0
	mul r5, r1
	add r1, r0, #0
	mul r1, r2
	sub r0, r5, r1
	asr r0, r0, #0xc
	add sp, #0x60
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
_0206924A:
	lsr r0, r3, #2
	b _02069252
_0206924E:
	lsr r3, r3, #2
	b _0206932A
_02069252:
	lsl r0, r0, #1
	str r0, [sp]
	ldr r3, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrh r3, [r7, r3]
	add r0, r4, #0
	add r1, r5, r1
	add r2, r5, r2
	mov r6, #0
	bl sub_02069600
	ldr r3, [sp]
	ldr r1, [sp, #8]
	add r3, r7, r3
	ldr r2, [sp, #0xc]
	orr r6, r0
	ldrh r3, [r3, #2]
	add r0, sp, #0x18
	add r1, r5, r1
	add r2, r5, r2
	bl sub_02069600
	orr r6, r0
	ldr r1, [r4]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [r4]
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add r0, r4, #0
	add r0, #0xc
	add r1, r0, #0
	blx sub_02074254
	cmp r6, #0
	bne _020692EE
	ldr r2, [r4, #0x18]
	ldr r1, [sp, #0x30]
	add r0, r4, #0
	add r1, r2, r1
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	ldr r1, [sp, #0x34]
	add r0, #0x18
	add r1, r2, r1
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	ldr r1, [sp, #0x38]
	add r1, r2, r1
	str r1, [r4, #0x20]
	add r1, r0, #0
	blx sub_02074254
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_020692EE:
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	add r7, r0, #0
	ldr r1, [r4, #8]
	str r6, [sp, #0x14]
	mul r7, r5
	mul r6, r1
	sub r6, r7, r6
	ldr r3, [r4]
	ldr r2, [r4, #0xc]
	asr r6, r6, #0xc
	str r6, [r4, #0x18]
	add r6, r1, #0
	add r1, r3, #0
	mul r1, r5
	mul r6, r2
	sub r1, r6, r1
	asr r1, r1, #0xc
	str r1, [r4, #0x1c]
	ldr r1, [sp, #0x14]
	add r5, r3, #0
	mul r5, r1
	add r1, r0, #0
	mul r1, r2
	sub r0, r5, r1
	asr r0, r0, #0xc
	add sp, #0x60
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
_0206932A:
	lsl r3, r3, #1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrh r3, [r7, r3]
	add r0, r4, #0
	add r1, r5, r1
	add r2, r5, r2
	bl sub_02069600
	cmp r0, #0
	beq _0206937C
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	add r7, r0, #0
	ldr r1, [r4, #8]
	mov ip, r6
	mul r7, r5
	mul r6, r1
	sub r6, r7, r6
	ldr r3, [r4]
	ldr r2, [r4, #0xc]
	asr r6, r6, #0xc
	str r6, [r4, #0x18]
	add r6, r1, #0
	add r1, r3, #0
	mul r1, r5
	mul r6, r2
	sub r1, r6, r1
	asr r1, r1, #0xc
	str r1, [r4, #0x1c]
	mov r1, ip
	add r5, r3, #0
	mul r5, r1
	add r1, r0, #0
	mul r1, r2
	sub r0, r5, r1
	asr r0, r0, #0xc
	add sp, #0x60
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
_0206937C:
	add r4, #0x18
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206938C: .word 0x1FFF0000
	thumb_func_end sub_020690DC

	thumb_func_start sub_02069390
sub_02069390: ; 0x02069390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r7, r3, #0
	add r4, r0, #0
	ldr r0, [r7, #0xc]
	asr r3, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0x10]
	ldmia r2!, {r0, r2}
	add r2, r7, r2
	str r2, [sp, #4]
	ldrh r2, [r7, #4]
	sub r2, r2, #1
	cmp r3, r2
	bne _02069442
	mov r2, #3
	lsl r2, r2, #0x1e
	tst r2, r0
	beq _020693D2
	mov r2, #1
	lsl r2, r2, #0x1e
	tst r0, r2
	beq _020693CA
	mov r0, #1
	lsr r2, r3, #1
	and r0, r3
	add r3, r2, r0
	b _020693D2
_020693CA:
	mov r0, #3
	lsr r2, r3, #2
	and r0, r3
	add r3, r2, r0
_020693D2:
	ldr r2, [r7, #8]
	mov r0, #2
	tst r0, r2
	beq _020693E0
	mov r0, #0
	str r0, [sp, #8]
	b _0206949C
_020693E0:
	lsl r5, r3, #1
	ldr r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldrh r3, [r3, r5]
	add r0, r4, #0
	add r1, r7, r1
	add r2, r7, r2
	bl sub_02069600
	cmp r0, #0
	beq _02069434
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	add r7, r0, #0
	ldr r1, [r4, #8]
	str r6, [sp, #0x14]
	mul r7, r5
	mul r6, r1
	sub r6, r7, r6
	ldr r3, [r4]
	ldr r2, [r4, #0xc]
	asr r6, r6, #0xc
	str r6, [r4, #0x18]
	add r6, r1, #0
	add r1, r3, #0
	mul r1, r5
	mul r6, r2
	sub r1, r6, r1
	asr r1, r1, #0xc
	str r1, [r4, #0x1c]
	ldr r1, [sp, #0x14]
	add r5, r3, #0
	mul r5, r1
	add r1, r0, #0
	mul r1, r2
	sub r0, r5, r1
	asr r0, r0, #0xc
	add sp, #0x64
	str r0, [r4, #0x20]
	pop {r4, r5, r6, r7, pc}
_02069434:
	add r4, #0x18
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_02069442:
	mov r2, #3
	lsl r2, r2, #0x1e
	tst r2, r0
	beq _02069498
	ldr r6, _020695F4 ; =0x1FFF0000
	add r2, r0, #0
	and r2, r6
	lsr r5, r2, #0x10
	mov r2, #1
	lsl r2, r2, #0x1e
	tst r0, r2
	beq _02069476
	cmp r3, r5
	blo _02069466
	lsr r3, r5, #1
	add r0, r3, #1
	str r0, [sp, #8]
	b _0206949C
_02069466:
	lsr r3, r3, #1
	add r0, r3, #1
	str r0, [sp, #8]
	lsr r0, r6, #0x10
	and r0, r1
	str r0, [sp, #0x18]
	mov r5, #2
	b _020694A4
_02069476:
	cmp r3, r5
	blo _02069488
	mov r0, #3
	lsr r2, r3, #2
	and r0, r3
	add r3, r2, r0
	add r0, r3, #1
	str r0, [sp, #8]
	b _0206949C
_02069488:
	lsr r3, r3, #2
	add r0, r3, #1
	str r0, [sp, #8]
	ldr r0, _020695F8 ; =0x00003FFF
	mov r5, #4
	and r0, r1
	str r0, [sp, #0x18]
	b _020694A4
_02069498:
	add r0, r3, #1
	str r0, [sp, #8]
_0206949C:
	ldr r0, _020695FC ; =0x00000FFF
	mov r5, #1
	and r0, r1
	str r0, [sp, #0x18]
_020694A4:
	lsl r6, r3, #1
	ldr r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	ldrh r3, [r3, r6]
	add r0, sp, #0x40
	add r1, r7, r1
	add r2, r7, r2
	bl sub_02069600
	ldr r3, [sp, #8]
	ldr r1, [sp]
	lsl r6, r3, #1
	orr r0, r1
	ldr r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	ldrh r3, [r3, r6]
	add r0, sp, #0x1c
	add r1, r7, r1
	add r2, r7, r2
	bl sub_02069600
	ldr r1, [sp]
	ldr r2, [sp, #0x40]
	orr r0, r1
	str r0, [sp]
	add r0, r2, #0
	ldr r1, [sp, #0x1c]
	mul r0, r5
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x20]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x24]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [sp, #0x4c]
	ldr r1, [sp, #0x28]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x2c]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #0x10]
	ldr r2, [sp, #0x54]
	ldr r1, [sp, #0x30]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add r0, r4, #0
	add r0, #0xc
	add r1, r0, #0
	blx sub_02074254
	ldr r0, [sp]
	cmp r0, #0
	bne _020695B8
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #0x34]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #0x18]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x38]
	add r0, r2, #0
	sub r2, r1, r2
	ldr r1, [sp, #0x18]
	mul r0, r5
	mul r2, r1
	asr r1, r2, #0xc
	add r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x3c]
	add r2, r1, #0
	sub r1, r0, r1
	ldr r0, [sp, #0x18]
	mul r2, r5
	mul r1, r0
	asr r0, r1, #0xc
	add r0, r2, r0
	str r0, [r4, #0x20]
	add r4, #0x18
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02074254
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_020695B8:
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	add r7, r0, #0
	ldr r1, [r4, #8]
	mov ip, r6
	mul r7, r5
	mul r6, r1
	sub r6, r7, r6
	ldr r3, [r4]
	ldr r2, [r4, #0xc]
	asr r6, r6, #0xc
	str r6, [r4, #0x18]
	add r6, r1, #0
	add r1, r3, #0
	mul r1, r5
	mul r6, r2
	sub r1, r6, r1
	asr r1, r1, #0xc
	str r1, [r4, #0x1c]
	mov r1, ip
	add r5, r3, #0
	mul r5, r1
	add r1, r0, #0
	mul r1, r2
	sub r0, r5, r1
	asr r0, r0, #0xc
	str r0, [r4, #0x20]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020695F4: .word 0x1FFF0000
_020695F8: .word 0x00003FFF
_020695FC: .word 0x00000FFF
	thumb_func_end sub_02069390

	thumb_func_start sub_02069600
sub_02069600: ; 0x02069600
	push {r3, r4, r5, r6}
	mov r4, #2
	lsl r4, r4, #0xe
	add r5, r3, #0
	tst r5, r4
	beq _0206968A
	mov r2, #0
	str r2, [r0, #0x20]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r2, [r0, #0x14]
	str r2, [r0, #0x10]
	str r2, [r0, #0xc]
	str r2, [r0, #8]
	str r2, [r0, #4]
	str r2, [r0]
	sub r2, r4, #1
	and r3, r2
	lsl r2, r3, #1
	add r2, r3, r2
	lsl r5, r2, #1
	add r2, r1, r5
	ldrsh r5, [r1, r5]
	mov r3, #2
	ldrsh r4, [r2, r3]
	mov r3, #4
	mov r1, #0xf
	add r6, r5, #0
	and r6, r1
	mov r1, #0x10
	ldrsh r3, [r2, r3]
	tst r5, r1
	beq _02069646
	ldr r5, _020696F8 ; =0xFFFFF000
	b _02069648
_02069646:
	lsl r5, r1, #8
_02069648:
	lsl r1, r6, #2
	str r5, [r0, r1]
	ldr r5, _020696FC ; =0x02094458
	ldrb r5, [r5, r1]
	lsl r5, r5, #2
	str r4, [r0, r5]
	ldr r5, _02069700 ; =0x02094459
	ldrb r5, [r5, r1]
	lsl r5, r5, #2
	str r3, [r0, r5]
	mov r5, #0
	ldrsh r6, [r2, r5]
	mov r5, #0x20
	tst r5, r6
	beq _02069668
	neg r3, r3
_02069668:
	ldr r5, _02069704 ; =0x0209445A
	ldrb r5, [r5, r1]
	lsl r5, r5, #2
	str r3, [r0, r5]
	mov r3, #0
	ldrsh r3, [r2, r3]
	mov r2, #0x40
	tst r2, r3
	beq _0206967C
	neg r4, r4
_0206967C:
	ldr r2, _02069708 ; =0x0209445B
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	str r4, [r0, r1]
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0206968A:
	sub r1, r4, #1
	and r3, r1
	lsl r1, r3, #2
	add r1, r3, r1
	lsl r3, r1, #1
	add r4, r2, r3
	mov r1, #8
	ldrsh r6, [r4, r1]
	mov r1, #7
	add r5, r6, #0
	asr r6, r6, #3
	str r6, [r0, #0x10]
	ldrsh r2, [r2, r3]
	and r5, r1
	lsl r5, r5, #0x10
	add r3, r2, #0
	asr r2, r2, #3
	str r2, [r0]
	mov r2, #2
	asr r5, r5, #0xd
	and r3, r1
	orr r3, r5
	lsl r3, r3, #0x10
	ldrsh r2, [r4, r2]
	asr r5, r3, #0xd
	add r3, r2, #0
	asr r2, r2, #3
	str r2, [r0, #4]
	mov r2, #4
	and r3, r1
	orr r3, r5
	lsl r3, r3, #0x10
	ldrsh r2, [r4, r2]
	asr r5, r3, #0xd
	add r3, r2, #0
	asr r2, r2, #3
	str r2, [r0, #8]
	mov r2, #6
	and r3, r1
	ldrsh r2, [r4, r2]
	orr r3, r5
	lsl r3, r3, #0x10
	asr r3, r3, #0xd
	and r1, r2
	orr r1, r3
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	asr r1, r2, #3
	str r1, [r0, #0xc]
	lsl r1, r3, #0x13
	asr r1, r1, #0x13
	str r1, [r0, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_020696F8: .word 0xFFFFF000
_020696FC: .word 0x02094458
_02069700: .word 0x02094459
_02069704: .word 0x0209445A
_02069708: .word 0x0209445B
	thumb_func_end sub_02069600

	thumb_func_start sub_0206970C
sub_0206970C: ; 0x0206970C
	push {r3, r4}
	mov r3, #2
	lsl r3, r3, #0x1c
	add r4, r1, #0
	tst r4, r3
	beq _02069720
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02069720:
	lsl r4, r1, #0x10
	lsr r4, r4, #0x10
	add r4, r0, r4
	mov r0, #3
	lsl r0, r0, #0x1e
	tst r0, r1
	bne _02069736
	lsl r0, r2, #1
	ldrh r0, [r4, r0]
	pop {r3, r4}
	bx lr
_02069736:
	ldr r0, _02069810 ; =0x1FFF0000
	lsl r3, r3, #1
	and r0, r1
	lsr r0, r0, #0x10
	tst r1, r3
	beq _02069766
	mov r1, #1
	tst r1, r2
	beq _0206975C
	cmp r2, r0
	bls _02069758
	mov r1, #1
	bic r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r3, r4}
	bx lr
_02069758:
	lsr r0, r2, #1
	b _020697DC
_0206975C:
	mov r0, #1
	bic r2, r0
	ldrh r0, [r4, r2]
	pop {r3, r4}
	bx lr
_02069766:
	mov r1, #3
	and r1, r2
	beq _020697D2
	cmp r2, r0
	bls _0206977E
	lsr r0, r0, #2
	lsl r0, r0, #1
	lsl r1, r1, #1
	add r0, r4, r0
	ldrh r0, [r1, r0]
	pop {r3, r4}
	bx lr
_0206977E:
	mov r0, #1
	tst r0, r2
	beq _020697CE
	mov r0, #2
	tst r0, r2
	beq _02069790
	lsr r1, r2, #2
	add r0, r1, #1
	b _02069794
_02069790:
	lsr r0, r2, #2
	add r1, r0, #1
_02069794:
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	lsl r0, r1, #1
	ldr r3, _02069814 ; =0x00007C1F
	ldrh r1, [r4, r0]
	add r4, r2, #0
	and r4, r3
	lsl r0, r4, #1
	add r4, r4, r0
	add r0, r1, #0
	and r0, r3
	add r0, r4, r0
	lsr r4, r3, #5
	and r4, r2
	lsl r2, r4, #1
	add r4, r4, r2
	lsr r2, r3, #5
	and r1, r2
	add r1, r4, r1
	lsr r0, r0, #2
	lsr r2, r1, #2
	lsr r1, r3, #5
	and r0, r3
	and r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_020697CE:
	lsr r0, r2, #2
	b _020697DC
_020697D2:
	lsr r0, r2, #2
	lsl r0, r0, #1
	ldrh r0, [r4, r0]
	pop {r3, r4}
	bx lr
_020697DC:
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	add r0, r4, r0
	ldrh r1, [r0, #2]
	ldr r3, _02069814 ; =0x00007C1F
	add r4, r2, #0
	add r0, r1, #0
	and r4, r3
	and r0, r3
	add r0, r4, r0
	lsr r4, r3, #5
	and r4, r2
	lsr r2, r3, #5
	and r1, r2
	add r1, r4, r1
	lsr r0, r0, #1
	lsr r2, r1, #1
	lsr r1, r3, #5
	and r0, r3
	and r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_02069810: .word 0x1FFF0000
_02069814: .word 0x00007C1F
	thumb_func_end sub_0206970C

	thumb_func_start sub_02069818
sub_02069818: ; 0x02069818
	push {r3, r4}
	mov r3, #2
	lsl r3, r3, #0x1c
	add r4, r1, #0
	tst r4, r3
	beq _0206982C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_0206982C:
	lsl r4, r1, #0x10
	lsr r4, r4, #0x10
	add r4, r0, r4
	mov r0, #3
	lsl r0, r0, #0x1e
	tst r0, r1
	bne _02069840
	ldrb r0, [r4, r2]
	pop {r3, r4}
	bx lr
_02069840:
	ldr r0, _020698D0 ; =0x1FFF0000
	lsl r3, r3, #1
	and r0, r1
	lsr r0, r0, #0x10
	tst r1, r3
	beq _0206987A
	mov r1, #1
	tst r1, r2
	beq _02069872
	cmp r2, r0
	bls _02069860
	lsr r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #1]
	pop {r3, r4}
	bx lr
_02069860:
	lsr r0, r2, #1
	ldrb r1, [r4, r0]
	add r0, r4, r0
	ldrb r0, [r0, #1]
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02069872:
	lsr r0, r2, #1
	ldrb r0, [r4, r0]
	pop {r3, r4}
	bx lr
_0206987A:
	mov r1, #3
	and r1, r2
	beq _020698C8
	cmp r2, r0
	bls _0206988E
	lsr r0, r0, #2
	add r0, r4, r0
	ldrb r0, [r1, r0]
	pop {r3, r4}
	bx lr
_0206988E:
	mov r0, #1
	tst r0, r2
	beq _020698B6
	mov r0, #2
	tst r0, r2
	beq _020698A0
	lsr r2, r2, #2
	add r0, r2, #1
	b _020698A4
_020698A0:
	lsr r0, r2, #2
	add r2, r0, #1
_020698A4:
	ldrb r1, [r4, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	ldrb r0, [r4, r2]
	add r0, r1, r0
	lsl r0, r0, #0xe
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_020698B6:
	lsr r0, r2, #2
	ldrb r1, [r4, r0]
	add r0, r4, r0
	ldrb r0, [r0, #1]
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_020698C8:
	lsr r0, r2, #2
	ldrb r0, [r4, r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_020698D0: .word 0x1FFF0000
	thumb_func_end sub_02069818

	thumb_func_start sub_020698D4
sub_020698D4: ; 0x020698D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	cmp r2, #0
	beq _020698EA
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _020698EA
	add r7, r2, r0
	b _020698EC
_020698EA:
	mov r7, #0
_020698EC:
	ldr r0, _02069964 ; =0x0209B298
	ldr r1, [r0]
	ldr r0, [sp]
	str r1, [r0, #0xc]
	ldrb r2, [r2, #0x18]
	ldr r1, [sp]
	strb r2, [r0, #0x19]
	mov r0, #0
	add r1, #0x1a
	lsl r2, r2, #1
	blx sub_02078624
	ldrb r0, [r5, #9]
	mov r4, #0
	cmp r0, #0
	bls _0206995E
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #8
	add r6, r4, #0
	str r0, [sp, #4]
_02069916:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02069930
	ldrb r0, [r5, #9]
	cmp r4, r0
	bhs _02069930
	ldrh r1, [r5, #0xe]
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6
	b _02069932
_02069930:
	mov r1, #0
_02069932:
	cmp r7, #0
	beq _0206993E
	add r0, r7, #4
	bl sub_02068574
	b _02069942
_0206993E:
	mov r0, #0
	mvn r0, r0
_02069942:
	cmp r0, #0
	blt _02069954
	mov r1, #1
	lsl r2, r0, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	orr r1, r4
	add r0, r0, r2
	strh r1, [r0, #0x1a]
_02069954:
	ldrb r0, [r5, #9]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, r0
	blo _02069916
_0206995E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02069964: .word 0x0209B298
	thumb_func_end sub_020698D4

	thumb_func_start sub_02069968
sub_02069968: ; 0x02069968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, [r1, #8]
	add r5, r0, #0
	ldr r0, [r1]
	add r3, r6, #0
	asr r7, r0, #0xc
	add r3, #8
	beq _02069992
	lsl r0, r2, #0x10
	lsr r1, r0, #0x10
	ldrb r0, [r6, #9]
	cmp r1, r0
	bhs _02069992
	ldrh r2, [r6, #0xe]
	add r0, r3, r2
	ldrh r2, [r3, r2]
	add r0, r0, #4
	mul r1, r2
	add r4, r0, r1
	b _02069994
_02069992:
	mov r4, #0
_02069994:
	ldr r1, [r4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0206970C
	str r0, [sp]
	ldr r1, [r4, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0206970C
	mov r1, #2
	ldr r2, [r5, #4]
	lsl r1, r1, #0xe
	tst r1, r2
	beq _020699B8
	mov r1, #1
	b _020699BA
_020699B8:
	mov r1, #0
_020699BA:
	lsl r2, r0, #0x10
	ldr r0, [sp]
	lsl r1, r1, #0xf
	orr r0, r2
	orr r0, r1
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0206970C
	str r0, [sp, #4]
	ldr r1, [r4, #8]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0206970C
	mov r1, #2
	ldr r2, [r5, #8]
	lsl r1, r1, #0xe
	tst r1, r2
	beq _020699EA
	mov r1, #1
	b _020699EC
_020699EA:
	mov r1, #0
_020699EC:
	ldr r2, [sp, #4]
	lsl r1, r1, #0xf
	lsl r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02069818
	ldr r2, [r5, #0xc]
	ldr r1, _02069A14 ; =0xFFE0FFFF
	lsl r0, r0, #0x10
	and r1, r2
	orr r0, r1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02069A14: .word 0xFFE0FFFF
	thumb_func_end sub_02069968

	thumb_func_start sub_02069A18
sub_02069A18: ; 0x02069A18
	push {r4, r5}
	mov r4, #2
	lsl r4, r4, #0x1c
	add r5, r1, #0
	tst r5, r4
	beq _02069A2A
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02069A2A:
	add r2, r0, r2
	mov r0, #3
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02069AA8
	lsl r0, r1, #0x10
	lsl r4, r4, #1
	lsr r0, r0, #0x10
	tst r4, r1
	beq _02069A56
	mov r4, #1
	tst r4, r3
	beq _02069A52
	cmp r3, r0
	bls _02069A4E
	lsr r0, r0, #1
	add r3, r0, #1
	b _02069AA8
_02069A4E:
	lsr r3, r3, #1
	b _02069AC0
_02069A52:
	lsr r3, r3, #1
	b _02069AA8
_02069A56:
	mov r4, #3
	and r4, r3
	beq _02069AA6
	cmp r3, r0
	bls _02069A66
	lsr r0, r0, #2
	add r3, r0, r4
	b _02069AA8
_02069A66:
	mov r0, #1
	tst r0, r3
	beq _02069AA2
	mov r0, #2
	tst r0, r3
	beq _02069A78
	lsr r4, r3, #2
	add r3, r4, #1
	b _02069A7C
_02069A78:
	lsr r3, r3, #2
	add r4, r3, #1
_02069A7C:
	mov r0, #1
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02069A8E
	lsl r0, r3, #1
	ldrsh r1, [r2, r0]
	lsl r0, r4, #1
	ldrsh r2, [r2, r0]
	b _02069A96
_02069A8E:
	lsl r0, r3, #2
	ldr r1, [r2, r0]
	lsl r0, r4, #2
	ldr r2, [r2, r0]
_02069A96:
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r0, r2
	asr r0, r0, #2
	pop {r4, r5}
	bx lr
_02069AA2:
	lsr r3, r3, #2
	b _02069AC0
_02069AA6:
	lsr r3, r3, #2
_02069AA8:
	mov r0, #1
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02069AB8
	lsl r0, r3, #1
	ldrsh r0, [r2, r0]
	pop {r4, r5}
	bx lr
_02069AB8:
	lsl r0, r3, #2
	ldr r0, [r2, r0]
	pop {r4, r5}
	bx lr
_02069AC0:
	mov r0, #1
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02069AD4
	lsl r0, r3, #1
	ldrsh r3, [r2, r0]
	add r1, r2, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	b _02069ADC
_02069AD4:
	lsl r0, r3, #2
	ldr r3, [r2, r0]
	add r0, r2, r0
	ldr r0, [r0, #4]
_02069ADC:
	add r0, r3, r0
	asr r0, r0, #1
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02069A18

	thumb_func_start sub_02069AE4
sub_02069AE4: ; 0x02069AE4
	push {r4, r5}
	mov r4, #2
	lsl r4, r4, #0x1c
	add r5, r1, #0
	tst r5, r4
	beq _02069AF6
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02069AF6:
	add r0, r0, r2
	mov r2, #3
	lsl r2, r2, #0x1e
	tst r2, r1
	beq _02069B7C
	lsl r2, r1, #0x10
	lsl r4, r4, #1
	lsr r2, r2, #0x10
	tst r1, r4
	beq _02069B22
	mov r1, #1
	tst r1, r3
	beq _02069B1E
	cmp r3, r2
	bls _02069B1A
	lsr r1, r2, #1
	add r3, r1, #1
	b _02069B7C
_02069B1A:
	lsr r1, r3, #1
	b _02069B84
_02069B1E:
	lsr r3, r3, #1
	b _02069B7C
_02069B22:
	mov r1, #3
	add r4, r3, #0
	and r4, r1
	beq _02069B7A
	cmp r3, r2
	bls _02069B34
	lsr r1, r2, #2
	add r3, r1, r4
	b _02069B7C
_02069B34:
	mov r1, #1
	tst r1, r3
	beq _02069B76
	mov r1, #2
	tst r1, r3
	beq _02069B46
	lsr r2, r3, #2
	add r1, r2, #1
	b _02069B4A
_02069B46:
	lsr r1, r3, #2
	add r2, r1, #1
_02069B4A:
	lsl r1, r1, #2
	ldrsh r4, [r0, r1]
	add r1, r0, r1
	mov r5, #2
	ldrsh r3, [r1, r5]
	lsl r1, r4, #1
	lsl r2, r2, #2
	add r4, r4, r1
	ldrsh r1, [r0, r2]
	add r0, r0, r2
	ldrsh r0, [r0, r5]
	add r1, r4, r1
	lsl r4, r3, #1
	add r3, r3, r4
	add r0, r3, r0
	asr r2, r0, #2
	lsl r0, r1, #0xe
	lsr r1, r0, #0x10
	lsl r0, r2, #0x10
	orr r0, r1
	pop {r4, r5}
	bx lr
_02069B76:
	lsr r1, r3, #2
	b _02069B84
_02069B7A:
	lsr r3, r3, #2
_02069B7C:
	lsl r1, r3, #2
	ldr r0, [r0, r1]
	pop {r4, r5}
	bx lr
_02069B84:
	lsl r2, r1, #2
	add r1, r0, r2
	ldrsh r2, [r0, r2]
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	mov r2, #2
	ldrsh r3, [r1, r2]
	mov r2, #6
	ldrsh r1, [r1, r2]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	add r1, r3, r1
	asr r1, r1, #1
	lsl r1, r1, #0x10
	orr r0, r1
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02069AE4

	thumb_func_start sub_02069BA8
sub_02069BA8: ; 0x02069BA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r3, #0
	str r2, [sp]
	add r0, #8
	beq _02069BCA
	ldrb r2, [r7, #9]
	cmp r1, r2
	bhs _02069BCA
	ldrh r3, [r7, #0xe]
	add r2, r0, r3
	ldrh r0, [r0, r3]
	add r2, r2, #4
	mul r1, r0
	add r6, r2, r1
	b _02069BCC
_02069BCA:
	mov r6, #0
_02069BCC:
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	ldr r3, [sp]
	add r0, r7, #0
	ldr r4, [r5]
	bl sub_02069A18
	str r0, [sp, #8]
	ldr r1, [r6, #0x20]
	ldr r2, [r6, #0x24]
	ldr r3, [sp]
	add r0, r7, #0
	bl sub_02069A18
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _02069BF8
	cmp r0, #0
	bne _02069BF8
	mov r0, #4
	orr r4, r0
	b _02069C02
_02069BF8:
	mov r1, #4
	bic r4, r1
	ldr r1, [sp, #8]
	str r1, [r5, #0x24]
	str r0, [r5, #0x28]
_02069C02:
	ldr r1, [r6, #0x10]
	ldr r2, [r6, #0x14]
	ldr r3, [sp]
	add r0, r7, #0
	bl sub_02069AE4
	mov r1, #1
	lsl r1, r1, #0x1c
	cmp r0, r1
	bne _02069C1C
	mov r0, #2
	orr r4, r0
	b _02069C26
_02069C1C:
	strh r0, [r5, #0x20]
	lsr r0, r0, #0x10
	strh r0, [r5, #0x22]
	mov r0, #2
	bic r4, r0
_02069C26:
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [sp]
	add r0, r7, #0
	bl sub_02069A18
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	ldr r3, [sp]
	add r0, r7, #0
	bl sub_02069A18
	mov r2, #1
	ldr r1, [sp, #4]
	lsl r2, r2, #0xc
	cmp r1, r2
	bne _02069C54
	cmp r0, r2
	bne _02069C54
	mov r0, #1
	orr r4, r0
	b _02069C5E
_02069C54:
	mov r1, #1
	bic r4, r1
	ldr r1, [sp, #4]
	str r1, [r5, #0x18]
	str r0, [r5, #0x1c]
_02069C5E:
	str r4, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02069BA8

	thumb_func_start sub_02069C64
sub_02069C64: ; 0x02069C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	cmp r2, #0
	beq _02069C7A
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _02069C7A
	add r7, r2, r0
	b _02069C7C
_02069C7A:
	mov r7, #0
_02069C7C:
	ldr r0, _02069CF4 ; =0x0209B290
	ldr r1, [r0]
	ldr r0, [sp]
	str r1, [r0, #0xc]
	ldrb r2, [r2, #0x18]
	ldr r1, [sp]
	strb r2, [r0, #0x19]
	mov r0, #0
	add r1, #0x1a
	lsl r2, r2, #1
	blx sub_02078624
	ldrb r0, [r5, #9]
	mov r4, #0
	cmp r0, #0
	bls _02069CEE
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #8
	add r6, r4, #0
	str r0, [sp, #4]
_02069CA6:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02069CC0
	ldrb r0, [r5, #9]
	cmp r4, r0
	bhs _02069CC0
	ldrh r1, [r5, #0xe]
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6
	b _02069CC2
_02069CC0:
	mov r1, #0
_02069CC2:
	cmp r7, #0
	beq _02069CCE
	add r0, r7, #4
	bl sub_02068574
	b _02069CD2
_02069CCE:
	mov r0, #0
	mvn r0, r0
_02069CD2:
	cmp r0, #0
	blt _02069CE4
	mov r1, #1
	lsl r2, r0, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	orr r1, r4
	add r0, r0, r2
	strh r1, [r0, #0x1a]
_02069CE4:
	ldrb r0, [r5, #9]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, r0
	blo _02069CA6
_02069CEE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02069CF4: .word 0x0209B290
	thumb_func_end sub_02069C64

	thumb_func_start sub_02069CF8
sub_02069CF8: ; 0x02069CF8
	push {r4, lr}
	add r3, r1, #0
	lsl r1, r2, #0x10
	ldr r2, [r3]
	add r4, r0, #0
	ldr r0, [r3, #8]
	lsr r1, r1, #0x10
	asr r2, r2, #0xc
	add r3, r4, #0
	bl sub_02069BA8
	ldr r1, [r4, #0x10]
	ldr r0, _02069D24 ; =0x3FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r4]
	mov r0, #8
	orr r0, r1
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02069D24: .word 0x3FFFFFFF
	thumb_func_end sub_02069CF8

	thumb_func_start sub_02069D28
sub_02069D28: ; 0x02069D28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	cmp r2, #0
	beq _02069D3E
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _02069D3E
	add r7, r2, r0
	b _02069D40
_02069D3E:
	mov r7, #0
_02069D40:
	ldr r0, _02069DBC ; =0x0209B294
	ldr r1, [r0]
	ldr r0, [sp]
	str r1, [r0, #0xc]
	ldrb r1, [r2, #0x18]
	ldr r2, [sp]
	strb r1, [r0, #0x19]
	str r5, [r0, #8]
	ldrb r2, [r2, #0x19]
	ldr r1, [sp]
	mov r0, #0
	add r1, #0x1a
	lsl r2, r2, #1
	blx sub_02078624
	ldrb r0, [r5, #0xd]
	mov r4, #0
	cmp r0, #0
	bls _02069DB8
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0xc
	add r6, r4, #0
	str r0, [sp, #4]
_02069D70:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02069D8A
	ldrb r0, [r5, #0xd]
	cmp r4, r0
	bhs _02069D8A
	ldrh r1, [r5, #0x12]
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6
	b _02069D8C
_02069D8A:
	mov r1, #0
_02069D8C:
	cmp r7, #0
	beq _02069D98
	add r0, r7, #4
	bl sub_02068574
	b _02069D9C
_02069D98:
	mov r0, #0
	mvn r0, r0
_02069D9C:
	cmp r0, #0
	blt _02069DAE
	mov r1, #1
	lsl r2, r0, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	orr r1, r4
	add r0, r0, r2
	strh r1, [r0, #0x1a]
_02069DAE:
	ldrb r0, [r5, #0xd]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, r0
	blo _02069D70
_02069DB8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02069DBC: .word 0x0209B294
	thumb_func_end sub_02069D28

	thumb_func_start sub_02069DC0
sub_02069DC0: ; 0x02069DC0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r4, #0
	beq _02069DD2
	add r0, #0x3c
	bl sub_02068458
	b _02069DD4
_02069DD2:
	mov r0, #0
_02069DD4:
	mov r1, #7
	ldr r2, [r0]
	lsl r1, r1, #0x1a
	and r2, r1
	mov r1, #5
	lsl r1, r1, #0x1a
	cmp r2, r1
	beq _02069DE8
	ldr r1, [r4, #8]
	b _02069DEA
_02069DE8:
	ldr r1, [r4, #0x18]
_02069DEA:
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r3, r2, #0
	ldr r1, _02069E50 ; =0x1FFFFFFF
	ldr r2, [r5, #0x10]
	and r3, r1
	ldr r1, _02069E54 ; =0xC00F0000
	and r2, r1
	str r2, [r5, #0x10]
	ldr r1, [r0]
	add r1, r1, r3
	orr r1, r2
	str r1, [r5, #0x10]
	ldr r1, [r0, #4]
	ldr r2, _02069E58 ; =0x000007FF
	and r1, r2
	strh r1, [r5, #0x2c]
	ldr r3, [r0, #4]
	lsl r1, r2, #0xb
	and r1, r3
	lsr r1, r1, #0xb
	strh r1, [r5, #0x2e]
	ldr r1, [r0, #4]
	lsl r0, r2, #0xb
	add r3, r1, #0
	and r0, r1
	ldrh r1, [r5, #0x2c]
	and r3, r2
	lsr r4, r0, #0xb
	cmp r3, r1
	beq _02069E32
	lsl r0, r3, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	b _02069E36
_02069E32:
	mov r0, #1
	lsl r0, r0, #0xc
_02069E36:
	str r0, [r5, #0x30]
	ldrh r1, [r5, #0x2e]
	cmp r4, r1
	beq _02069E48
	lsl r0, r4, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	b _02069E4C
_02069E48:
	mov r0, #1
	lsl r0, r0, #0xc
_02069E4C:
	str r0, [r5, #0x34]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02069E50: .word 0x1FFFFFFF
_02069E54: .word 0xC00F0000
_02069E58: .word 0x000007FF
	thumb_func_end sub_02069DC0

	thumb_func_start sub_02069E5C
sub_02069E5C: ; 0x02069E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r5, #0
	beq _02069E74
	ldrh r0, [r5, #0x34]
	cmp r0, #0
	beq _02069E74
	add r0, r5, r0
	bl sub_02068458
	b _02069E76
_02069E74:
	mov r0, #0
_02069E76:
	ldr r2, [r5, #0x2c]
	ldrh r1, [r0]
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	ldr r2, _02069E9C ; =0x1FFFFFFF
	and r2, r3
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	ldrh r2, [r0, #2]
	mov r0, #1
	tst r0, r2
	bne _02069E96
	lsl r0, r1, #0xf
	lsr r1, r0, #0x10
	lsl r0, r3, #0xf
	lsr r3, r0, #0x10
_02069E96:
	add r0, r1, r3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02069E9C: .word 0x1FFFFFFF
	thumb_func_end sub_02069E5C

	thumb_func_start sub_02069EA0
sub_02069EA0: ; 0x02069EA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	lsl r1, r2, #0x10
	ldr r2, [r4]
	ldr r6, [r4, #8]
	lsl r2, r2, #4
	add r5, r0, #0
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_020686F8
	add r7, r0, #0
	ldrb r1, [r7, #2]
	add r0, r6, #0
	bl sub_020686C8
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	add r2, r5, #0
	bl sub_02069DC0
	ldrb r1, [r7, #3]
	cmp r1, #0xff
	beq _02069EE2
	add r0, r6, #0
	bl sub_020686E0
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	add r2, r5, #0
	bl sub_02069E5C
_02069EE2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02069EA0

	thumb_func_start sub_02069EE4
sub_02069EE4: ; 0x02069EE4
	push {r3, r4}
	ldr r3, _02069F14 ; =0x0209B288
	ldr r3, [r3]
	str r3, [r0, #0xc]
	ldrb r2, [r2, #0x17]
	mov r3, #0
	strb r2, [r0, #0x19]
	str r1, [r0, #8]
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bls _02069F10
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #8
_02069F00:
	add r2, r3, #0
	orr r2, r1
	strh r2, [r4, #0x1a]
	ldrb r2, [r0, #0x19]
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r2
	blo _02069F00
_02069F10:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02069F14: .word 0x0209B288
	thumb_func_end sub_02069EE4

	thumb_func_start sub_02069F18
sub_02069F18: ; 0x02069F18
	push {r3, r4}
	ldr r3, [r1, #8]
	ldr r1, [r1]
	asr r4, r1, #0xc
	ldrh r1, [r3, #6]
	mul r1, r4
	add r4, r2, r1
	mov r1, #0x1f
	mov r2, #1
	and r1, r4
	lsl r2, r1
	lsr r1, r4, #5
	lsl r1, r1, #2
	add r1, r3, r1
	ldr r1, [r1, #0xc]
	and r1, r2
	str r1, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02069F18

	thumb_func_start sub_02069F40
sub_02069F40: ; 0x02069F40
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	tst r0, r1
	bne _02069F6E
	mov r0, #2
	tst r0, r1
	bne _02069F60
	add r1, r4, #0
	mov r0, #0x19
	add r1, #0x28
	mov r2, #0xc
	bl sub_02067D1C
	b _02069F80
_02069F60:
	add r1, r4, #0
	mov r0, #0x1c
	add r1, #0x4c
	mov r2, #3
	bl sub_02067D1C
	b _02069F80
_02069F6E:
	mov r0, #2
	tst r0, r1
	bne _02069F80
	add r1, r4, #0
	mov r0, #0x1a
	add r1, #0x28
	mov r2, #9
	bl sub_02067D1C
_02069F80:
	ldr r1, [r4]
	mov r0, #1
	tst r0, r1
	bne _02069F92
	mov r0, #0x1b
	add r1, r4, #4
	mov r2, #3
	bl sub_02067D1C
_02069F92:
	pop {r4, pc}
	thumb_func_end sub_02069F40

	thumb_func_start sub_02069F94
sub_02069F94: ; 0x02069F94
	mov r2, #4
	tst r2, r3
	beq _02069FA4
	ldr r2, [r0]
	mov r1, #1
	orr r1, r2
	str r1, [r0]
	b _02069FB0
_02069FA4:
	ldr r2, [r1]
	str r2, [r0, #4]
	ldr r2, [r1, #4]
	str r2, [r0, #8]
	ldr r1, [r1, #8]
	str r1, [r0, #0xc]
_02069FB0:
	ldr r2, [r0]
	mov r1, #0x18
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02069F94

	thumb_func_start sub_02069FBC
sub_02069FBC: ; 0x02069FBC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #4
	mov r5, #0
	tst r1, r0
	bne _02069FCC
	mov r5, #1
_02069FCC:
	mov r1, #0x20
	tst r1, r0
	beq _02069FF6
	mov r1, #8
	tst r0, r1
	bne _02069FF6
	cmp r5, #0
	beq _02069FEA
	add r1, r4, #0
	mov r0, #0x1c
	add r1, #0x4c
	mov r2, #3
	bl sub_02067D1C
	mov r5, #0
_02069FEA:
	add r1, r4, #0
	mov r0, #0x1b
	add r1, #0x10
	mov r2, #3
	bl sub_02067D1C
_02069FF6:
	ldr r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _0206A01E
	cmp r5, #0
	beq _0206A010
	add r1, r4, #0
	mov r0, #0x19
	add r1, #0x28
	mov r2, #0xc
	bl sub_02067D1C
	b _0206A02E
_0206A010:
	add r1, r4, #0
	mov r0, #0x1a
	add r1, #0x28
	mov r2, #9
	bl sub_02067D1C
	b _0206A02E
_0206A01E:
	cmp r5, #0
	beq _0206A02E
	add r1, r4, #0
	mov r0, #0x1c
	add r1, #0x4c
	mov r2, #3
	bl sub_02067D1C
_0206A02E:
	ldr r1, [r4]
	mov r0, #1
	tst r0, r1
	bne _0206A040
	mov r0, #0x1b
	add r1, r4, #4
	mov r2, #3
	bl sub_02067D1C
_0206A040:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02069FBC

	thumb_func_start sub_0206A044
sub_0206A044: ; 0x0206A044
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r4, r0, #0
	mov r2, #4
	ldrb r0, [r7, #3]
	tst r2, r3
	beq _0206A07C
	ldr r2, [r4]
	mov r1, #1
	orr r1, r2
	str r1, [r4]
	mov r1, #2
	tst r1, r0
	beq _0206A0C8
	ldr r1, _0206A120 ; =0x02143C70
	ldrb r5, [r7, #1]
	ldr r3, [r1]
	mov r6, #0x1f
	lsr r1, r5, #5
	and r6, r5
	mov r5, #1
	add r3, #0xc4
	lsl r2, r1, #2
	ldr r1, [r3, r2]
	lsl r5, r6
	orr r1, r5
	str r1, [r3, r2]
	b _0206A0C8
_0206A07C:
	ldr r2, [r1]
	str r2, [r4, #4]
	ldr r2, [r1, #4]
	str r2, [r4, #8]
	ldr r2, [r1, #8]
	str r2, [r4, #0xc]
	mov r2, #2
	tst r2, r0
	beq _0206A0C8
	ldr r2, _0206A120 ; =0x02143C70
	ldrb r5, [r7, #1]
	ldr r6, [r2]
	mov r3, #1
	lsr r2, r5, #5
	lsl r2, r2, #2
	add r6, #0xc4
	mov lr, r2
	ldr r2, [r6, r2]
	mov ip, r2
	mov r2, #0x1f
	and r2, r5
	lsl r3, r2
	mvn r3, r3
	mov r2, ip
	and r2, r3
	mov r3, lr
	str r2, [r6, r3]
	mov r2, #0x18
	mul r2, r5
	ldr r5, [r1, #0xc]
	ldr r3, _0206A124 ; =0x02144A80
	str r5, [r3, r2]
	ldr r5, [r1, #0x10]
	ldr r3, _0206A128 ; =0x02144A84
	str r5, [r3, r2]
	ldr r3, [r1, #0x14]
	ldr r1, _0206A12C ; =0x02144A88
	str r3, [r1, r2]
_0206A0C8:
	mov r3, #1
	tst r0, r3
	beq _0206A114
	ldrb r1, [r7, #2]
	ldr r2, [r4]
	mov r0, #0x20
	orr r0, r2
	str r0, [r4]
	mov r0, #0x1f
	add r2, r1, #0
	and r2, r0
	add r0, r3, #0
	lsl r0, r2
	ldr r2, _0206A120 ; =0x02143C70
	ldr r3, [r2]
	lsr r2, r1, #5
	lsl r2, r2, #2
	add r2, r3, r2
	add r2, #0xc4
	ldr r2, [r2]
	tst r0, r2
	beq _0206A0FE
	ldr r1, [r4]
	mov r0, #8
	orr r0, r1
	str r0, [r4]
	b _0206A114
_0206A0FE:
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0206A124 ; =0x02144A80
	add r3, r0, r2
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_0206A114:
	ldr r1, [r4]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206A120: .word 0x02143C70
_0206A124: .word 0x02144A80
_0206A128: .word 0x02144A84
_0206A12C: .word 0x02144A88
	thumb_func_end sub_0206A044

