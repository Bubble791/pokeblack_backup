    .include "macros/function.inc"
	.include "overlay144.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy144_219ce80
ovy144_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r2, #0
	add r4, r0, #0
	ldr r0, [r6, #0x14]
	bl sub_02016AD8
	add r5, r0, #0
	ldr r0, _0219D130 ; =0x0000008B
	bl sub_0203CE0C
	mov r0, #1
	mov r2, #6
	str r0, [sp, #0x14]
	mov r0, #1
	mov r1, #0x44
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r7, #0x15
	lsl r7, r7, #4
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x44
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r7, #0
	add r4, r0, #0
	blx MI_CpuFill8
	add r0, r7, #0
	sub r0, #0x14
	sub r7, #0x14
	str r6, [r4, r0]
	ldr r0, [r4, r7]
	ldr r0, [r0]
	cmp r0, #2
	beq _0219CED2
	mov r0, #0
	str r0, [sp, #0x14]
_0219CED2:
	mov r0, #0x44
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	mov r1, #0x44
	add r1, #0xec
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #2
	mov r7, #0x6d
	mov r2, #0x6d
	mov r3, #0x44
	bl GFL_MsgSysLoadData
	add r7, #0xc7
	str r0, [r4, r7]
	ldr r7, _0219D134 ; =0x00000179
	mov r0, #0
	mov r1, #2
	add r2, r7, #0
	mov r3, #0x44
	bl GFL_MsgSysLoadData
	add r1, r7, #0
	sub r1, #0x41
	str r0, [r4, r1]
	mov r0, #0x44
	bl ovy144_219f2dc
	str r0, [r4]
	mov r0, #0x44
	bl ovy144_219f718
	str r0, [r4, #0x34]
	ldr r2, _0219D138 ; =ovy144_219d258
	add r0, r4, #4
	add r1, r4, #0
	bl ovy144_219d208
	add r0, r7, #0
	sub r0, #0x3d
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #1
	beq _0219CF80
	ldr r0, [r4]
	mov r1, #1
	bl sub_0219F358
	add r2, r7, #0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	sub r2, #0x49
	sub r7, #0x41
	add r0, r4, #0
	ldr r2, [r4, r2]
	ldr r3, [r4, r7]
	add r0, #0xcc
	bl ovy144_219ef34
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	add r0, #0xcc
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl ovy144_219ef94
	bl sub_020232D8
_0219CF80:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0219F36C
	add r7, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl sub_0219F358
	add r3, r0, #0
	mov r0, #0xf
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0x44
	str r5, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	add r1, #0xf8
	ldr r1, [r4, r1]
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x14
	add r2, r7, #0
	bl ovy144_219d720
	ldr r0, [r4]
	mov r1, #1
	bl sub_0219F358
	add r7, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl sub_0219F378
	str r0, [sp]
	mov r2, #0x44
	mov r3, #0x44
	str r5, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	add r2, #0xec
	add r3, #0xf0
	add r0, r4, #0
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, #0xdc
	add r1, r7, #0
	bl ovy144_219f050
	ldr r0, [r4]
	mov r1, #1
	bl sub_0219F358
	mov r2, #3
	mov r1, #3
	sub r2, r2, #7
	bl sub_02044CFC
	ldr r0, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrh r1, [r6, #8]
	ldrh r2, [r6, #0xa]
	ldr r3, [r4, #0x34]
	add r0, #0x50
	bl ovy144_219dd78
	ldr r0, [r4]
	mov r1, #1
	bl sub_0219F378
	add r7, r0, #0
	ldr r0, [r4]
	mov r1, #2
	bl sub_0219F378
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x38
	add r1, r7, #0
	mov r3, #0x44
	bl ovy144_219d934
	ldrh r1, [r6, #8]
	add r0, r4, #0
	ldrh r2, [r6, #0xa]
	add r0, #0x50
	bl ovy144_219e118
	add r6, r0, #0
	beq _0219D054
	mov r1, #4
	bl ovy144_219e094
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #5
	bl ovy144_219e094
	b _0219D05A
_0219D054:
	mov r0, #0x76
	str r0, [sp, #0x20]
	mov r0, #0x4e
_0219D05A:
	str r0, [sp, #0x24]
	add r0, r4, #0
	add r0, #0x38
	add r1, sp, #0x20
	bl sub_0219DCB4
	ldr r0, [r4]
	mov r1, #3
	bl sub_0219F358
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #2
	bl sub_0219F358
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r0, #0x78
	mov r3, #0x44
	mov r6, #0x44
	bl ovy144_219e8ac
	ldr r0, [r4]
	mov r1, #5
	mov r7, #5
	bl sub_0219F358
	add r1, r0, #0
	mov r0, #0x44
	add r0, #0xf4
	ldr r0, [r4, r0]
	mov r2, #0x44
	str r0, [sp]
	str r5, [sp, #4]
	mov r3, #0x44
	add r0, r4, #0
	str r6, [sp, #8]
	add r2, #0xec
	add r3, #0xf0
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, #0xb0
	bl ovy144_219eaf4
	mov r0, #5
	add r0, #0xfb
	add r0, r4, r0
	mov r1, #0x44
	bl sub_0219F1C8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x50
	add r1, #0x38
	bl ovy144_219dfe8
	add r5, r0, #0
	beq _0219D10A
	add r0, r4, #0
	add r0, #0xdc
	add r1, r5, #0
	bl sub_0219F1A0
	add r0, r4, #0
	add r0, #0xb0
	add r1, r5, #0
	bl ovy144_219eb6c
	add r0, r4, #0
	add r0, #0x50
	add r1, r5, #0
	bl ovy144_219e0c4
	lsl r0, r7, #6
	str r5, [r4, r0]
	add r0, r4, #0
	add r6, sp, #0x18
	add r0, #0x50
	add r1, r6, #0
	bl sub_0219DFBC
	add r0, r4, #0
	add r0, #0x38
	add r1, r5, #0
	add r2, r6, #0
	bl ovy144_219dcdc
_0219D10A:
	bl sub_02042788
	cmp r0, #0
	beq _0219D11A
	mov r0, #1
	mov r1, #0x44
	bl sub_02042BA8
_0219D11A:
	ldr r0, _0219D13C ; =0x0219F2D9
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D130: .word 0x0000008B
_0219D134: .word 0x00000179
_0219D138: .word ovy144_219d258
_0219D13C: .word 0x0219F2D9
	thumb_func_end ovy144_219ce80

	thumb_func_start ovy144_219d140
ovy144_219d140: ; 0x0219D140
	push {r4, r5, r6, lr}
	mov r5, #0x52
	add r4, r3, #0
	lsl r5, r5, #2
	add r6, r0, #0
	ldr r0, [r4, r5]
	bl GFL_TCBRemove
	add r0, r5, #0
	sub r0, #0x48
	add r0, r4, r0
	bl sub_0219F1D4
	add r0, r4, #0
	add r0, #0xb0
	bl ovy144_219eb48
	add r0, r4, #0
	add r0, #0x78
	bl sub_0219E8D4
	add r0, r4, #0
	add r0, #0x50
	bl ovy144_219de90
	add r0, r4, #0
	add r0, #0x38
	bl sub_0219D9C0
	add r0, r4, #0
	add r0, #0xdc
	bl ovy144_219f0d4
	sub r5, #0xc
	ldr r0, [r4, r5]
	ldr r0, [r0]
	cmp r0, #1
	beq _0219D194
	add r0, r4, #0
	add r0, #0xcc
	bl ovy144_219ef78
_0219D194:
	add r0, r4, #0
	add r0, #0x14
	bl ovy144_219d808
	add r0, r4, #4
	bl sub_0219D224
	ldr r0, [r4, #0x34]
	bl sub_0219F728
	ldr r0, [r4]
	bl ovy144_219f32c
	mov r5, #0x4e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl GFL_MsgDataFree
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_MsgDataFree
	sub r5, #8
	ldr r0, [r4, r5]
	bl sub_02022DA8
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x44
	bl sub_0203A1D0
	ldr r0, _0219D1E0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219D1E0: .word 0x0000008B
	thumb_func_end ovy144_219d140

	thumb_func_start ovy144_219d1e4
ovy144_219d1e4: ; 0x0219D1E4
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #4
	bl ovy144_219d230
	ldr r0, [r4]
	bl sub_0219F34C
	add r0, r4, #4
	bl sub_0219D244
	cmp r0, #0
	beq _0219D202
	mov r0, #1
	pop {r4, pc}
_0219D202:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219d1e4

	thumb_func_start ovy144_219d208
ovy144_219d208: ; 0x0219D208
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_0219D248
	pop {r4, r5, r6, pc}
	thumb_func_end ovy144_219d208

	thumb_func_start sub_0219D224
sub_0219D224: ; 0x0219D224
	ldr r3, _0219D22C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_0219D22C: .word MI_CpuFill8
	thumb_func_end sub_0219D224

	thumb_func_start ovy144_219d230
ovy144_219d230: ; 0x0219D230
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0219D242
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_0219D242:
	pop {r3, pc}
	thumb_func_end ovy144_219d230

	thumb_func_start sub_0219D244
sub_0219D244: ; 0x0219D244
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219D244

	thumb_func_start sub_0219D248
sub_0219D248: ; 0x0219D248
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219D248

	thumb_func_start sub_0219D250
sub_0219D250: ; 0x0219D250
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D250

	thumb_func_start ovy144_219d258
ovy144_219d258: ; 0x0219D258
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219D26C
	cmp r1, #1
	beq _0219D27E
	cmp r1, #2
	beq _0219D28C
	pop {r4, pc}
_0219D26C:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219D27E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D292
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_0219D28C:
	ldr r1, _0219D294 ; =ovy144_219d2d4
	bl sub_0219D248
_0219D292:
	pop {r4, pc}
	.align 2, 0
_0219D294: .word ovy144_219d2d4
	thumb_func_end ovy144_219d258

	thumb_func_start ovy144_219d298
ovy144_219d298: ; 0x0219D298
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0219D2AC
	cmp r1, #1
	beq _0219D2BE
	cmp r1, #2
	beq _0219D2CC
	pop {r4, pc}
_0219D2AC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0219D2BE:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D2D0
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_0219D2CC:
	bl sub_0219D250
_0219D2D0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219d298

	thumb_func_start ovy144_219d2d4
ovy144_219d2d4: ; 0x0219D2D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x14
	mov r4, #0
	bl sub_0219D928
	cmp r0, #0
	beq _0219D2EC
	b _0219D594
_0219D2EC:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D302
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	beq _0219D304
_0219D302:
	b _0219D41C
_0219D304:
	add r0, sp, #0x30
	str r4, [r0]
	str r4, [r0, #4]
	add r0, r5, #0
	add r0, #0x38
	add r1, sp, #0x38
	bl sub_0219DCA4
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219DCD4
	ldr r1, [sp, #0x3c]
	cmp r1, #0x10
	bge _0219D330
	mov r2, #0x40
	tst r2, r0
	beq _0219D330
	ldr r2, [sp, #0x34]
	mov r4, #1
	sub r2, r2, #4
	str r2, [sp, #0x34]
_0219D330:
	cmp r1, #0xa8
	bgt _0219D346
	cmp r1, #0x88
	ble _0219D346
	mov r1, #0x80
	tst r1, r0
	beq _0219D346
	ldr r1, [sp, #0x34]
	mov r4, #1
	add r1, r1, #4
	str r1, [sp, #0x34]
_0219D346:
	ldr r1, [sp, #0x38]
	cmp r1, #0x10
	bge _0219D35A
	mov r2, #0x20
	tst r2, r0
	beq _0219D35A
	ldr r2, [sp, #0x30]
	mov r4, #1
	sub r2, r2, #4
	str r2, [sp, #0x30]
_0219D35A:
	cmp r1, #0xf0
	ble _0219D36C
	mov r1, #0x10
	tst r0, r1
	beq _0219D36C
	ldr r0, [sp, #0x30]
	mov r4, #1
	add r0, r0, #4
	str r0, [sp, #0x30]
_0219D36C:
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	bne _0219D3D0
	mov r6, #1
	lsl r6, r6, #8
	add r0, r5, r6
	add r1, sp, #0x40
	add r2, sp, #0x2c
	bl ovy144_219f2a0
	cmp r0, #0
	beq _0219D3D0
	ldr r2, [sp, #0x40]
	asr r1, r2, #0x1f
	lsr r0, r2, #0x14
	lsl r1, r1, #0xc
	orr r1, r0
	lsl r3, r2, #0xc
	mov r0, #0
	lsl r2, r6, #3
	add r2, r3, r2
	adc r1, r0
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	neg r1, r2
	ldr r3, [sp, #0x44]
	asr r1, r1, #0xc
	str r1, [sp, #0x30]
	asr r1, r3, #0x1f
	lsr r2, r3, #0x14
	lsl r1, r1, #0xc
	orr r1, r2
	lsl r3, r3, #0xc
	lsl r2, r6, #3
	add r2, r3, r2
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	asr r0, r0, #0xc
	str r0, [sp, #0x34]
	add r0, r5, r6
	bl sub_0219F2D0
	mov r4, #1
_0219D3D0:
	cmp r4, #0
	beq _0219D41C
	add r0, r5, #0
	add r0, #0x50
	add r1, sp, #0x24
	bl sub_0219DFBC
	add r0, r5, #0
	add r6, sp, #0x30
	add r0, #0x78
	add r1, r6, #0
	bl ovy144_219ead4
	ldr r1, [sp, #0x30]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x30]
	mul r0, r1
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0x50
	add r1, r6, #0
	bl ovy144_219dfc8
	add r0, r5, #0
	add r6, sp, #0x1c
	add r0, #0x50
	add r1, r6, #0
	bl sub_0219DFBC
	add r0, r5, #0
	add r0, #0x38
	add r1, r6, #0
	bl ovy144_219dd38
_0219D41C:
	cmp r4, #0
	bne _0219D42C
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	beq _0219D42E
_0219D42C:
	b _0219D570
_0219D42E:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D43E
	cmp r0, #2
	bne _0219D4C0
_0219D43E:
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219DD70
	add r7, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x50
	add r1, #0x38
	bl ovy144_219dfe8
	cmp r7, #0
	beq _0219D4C0
	cmp r7, r0
	bne _0219D4C0
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219DCD0
	cmp r0, #0
	beq _0219D4C0
	add r0, r7, #0
	mov r1, #0xc
	bl ovy144_219e094
	cmp r0, #0
	beq _0219D4C0
	mov r6, #0x4f
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #2
	str r1, [r0, #4]
	add r0, r7, #0
	mov r1, #0
	bl ovy144_219e094
	ldr r1, [r5, r6]
	strh r0, [r1, #8]
	add r0, r7, #0
	mov r1, #0xd
	bl ovy144_219e094
	ldr r1, [r5, r6]
	str r0, [r1, #0xc]
	add r0, r7, #0
	mov r1, #0xe
	bl ovy144_219e094
	ldr r1, [r5, r6]
	str r0, [r1, #0x10]
	ldr r2, [r5, r6]
	add r0, r6, #0
	ldrh r1, [r2, #8]
	add r0, #0xae
	cmp r1, r0
	bne _0219D4B2
	add r6, #0xa
	strh r6, [r2, #8]
_0219D4B2:
	ldr r0, _0219D708 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [sp]
	ldr r1, _0219D70C ; =ovy144_219d298
	bl sub_0219D248
_0219D4C0:
	bl sub_0203D554
	cmp r0, #0
	bne _0219D4CC
	mov r0, #1
	b _0219D4D4
_0219D4CC:
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219DCD0
_0219D4D4:
	cmp r0, #0
	beq _0219D570
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x50
	add r1, #0x38
	bl ovy144_219dfe8
	mov r7, #5
	lsl r7, r7, #6
	add r6, r0, #0
	ldr r0, [r5, r7]
	cmp r6, r0
	beq _0219D53A
	cmp r6, #0
	beq _0219D53A
	ldr r0, _0219D710 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0xb0
	add r1, r6, #0
	bl ovy144_219eb6c
	add r0, r5, #0
	add r0, #0x50
	add r1, r6, #0
	bl ovy144_219e0c4
	add r0, r5, #0
	add r0, #0x50
	add r1, sp, #0x14
	str r6, [r5, r7]
	bl sub_0219DFBC
	add r0, r5, #0
	add r0, #0x38
	add r1, r6, #0
	add r2, sp, #0x14
	bl ovy144_219dcdc
	add r0, r7, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219D570
	add r0, r5, #0
	add r0, #0xdc
	add r1, r6, #0
	bl sub_0219F1A0
	b _0219D570
_0219D53A:
	cmp r6, #0
	bne _0219D570
	cmp r0, #0
	beq _0219D570
	add r0, r5, #0
	add r0, #0xb0
	bl ovy144_219ef1c
	add r0, r5, #0
	add r0, #0xdc
	mov r1, #0
	mov r6, #0
	bl ovy144_219f1a8
	add r0, r5, #0
	add r0, #0x50
	bl ovy144_219e0f4
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	mov r2, #0
	bl ovy144_219dcdc
	mov r0, #5
	lsl r0, r0, #6
	str r6, [r5, r0]
_0219D570:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D584
	add r0, r5, #0
	add r0, #0xdc
	mov r1, #0
	bl ovy144_219f1a8
_0219D584:
	mov r1, #1
	cmp r4, #0
	beq _0219D58C
	mov r1, #0
_0219D58C:
	add r0, r5, #0
	add r0, #0x38
	bl sub_0219DD74
_0219D594:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x14
	add r1, #0x78
	bl ovy144_219d838
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	bne _0219D5B8
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x38
	add r1, #0x50
	bl ovy144_219d9cc
_0219D5B8:
	add r0, r5, #0
	add r0, #0x50
	bl sub_0219DECC
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x78
	add r1, #0x50
	bl ovy144_219e8e0
	add r0, r5, #0
	add r0, #0xdc
	bl ovy144_219f0ec
	mov r4, #1
	lsl r4, r4, #8
	add r0, r5, r4
	bl ovy144_219f1e0
	add r0, r5, #0
	add r0, #0x14
	bl ovy144_219d910
	cmp r0, #0
	beq _0219D5F4
	cmp r0, #1
	beq _0219D606
	cmp r0, #7
	beq _0219D60A
	b _0219D6FA
_0219D5F4:
	mov r1, #1
_0219D5F6:
	add r4, #0x3c
	ldr r0, [r5, r4]
	str r1, [r0, #4]
	ldr r0, [sp]
	ldr r1, _0219D70C ; =ovy144_219d298
	bl sub_0219D248
	b _0219D6FA
_0219D606:
	mov r1, #0
	b _0219D5F6
_0219D60A:
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219D67A
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	bne _0219D67A
	add r0, r5, #0
	add r6, sp, #0xc
	add r0, #0x38
	add r1, r6, #0
	bl sub_0219DCA4
	add r0, r5, #0
	ldr r2, _0219D714 ; =0x0219F76C
	add r0, #0x78
	lsl r1, r4, #5
	add r3, r6, #0
	bl ovy144_219e9ec
	ldr r0, _0219D718 ; =0x00000648
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x40
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D676
	add r0, r5, #0
	add r0, #0xb0
	bl ovy144_219ef1c
	add r0, r5, #0
	add r0, #0xdc
	mov r1, #0
	mov r6, #0
	bl ovy144_219f1a8
	add r0, r5, #0
	add r0, #0x50
	bl ovy144_219e0f4
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	mov r2, #0
	bl ovy144_219dcdc
	add r4, #0x40
	str r6, [r5, r4]
_0219D676:
	mov r1, #1
	b _0219D6F4
_0219D67A:
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #1
	bne _0219D6FA
	add r0, r5, #0
	add r0, #0x78
	bl sub_0219EA18
	cmp r0, #0
	bne _0219D6FA
	add r0, r5, #0
	add r6, sp, #4
	add r0, #0x78
	add r1, r6, #0
	bl sub_0219EAC8
	ldr r0, [sp, #4]
	mov r1, #1
	add r0, #0x80
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, _0219D714 ; =0x0219F76C
	add r0, #0x60
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x78
	lsl r1, r1, #0xc
	add r2, r6, #0
	bl ovy144_219e9ec
	ldr r0, _0219D71C ; =0x00000649
	bl GFL_SndSEPlay
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D6F2
	add r0, r5, #0
	add r0, #0xb0
	bl ovy144_219ef1c
	add r0, r5, #0
	add r0, #0xdc
	mov r1, #0
	mov r6, #0
	bl ovy144_219f1a8
	add r0, r5, #0
	add r0, #0x50
	bl ovy144_219e0f4
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	mov r2, #0
	bl ovy144_219dcdc
	sub r0, r4, #4
	str r6, [r5, r0]
_0219D6F2:
	mov r1, #0
_0219D6F4:
	mov r0, #0x51
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219D6FA:
	add r5, #0x78
	add r0, r5, #0
	bl sub_0219EA14
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0219D708: .word 0x0000054C
_0219D70C: .word ovy144_219d298
_0219D710: .word 0x00000548
_0219D714: .word 0x0219F76C
_0219D718: .word 0x00000648
_0219D71C: .word 0x00000649
	thumb_func_end ovy144_219d2d4

	thumb_func_start ovy144_219d720
ovy144_219d720: ; 0x0219D720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	ldr r4, [sp, #0x9c]
	blx MI_CpuFill8
	ldr r0, [sp, #0x98]
	add r1, r4, #0
	str r0, [r5, #0x10]
	mov r0, #0x54
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	str r4, [sp, #8]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	add r7, r0, #0
	bl sub_0204BBB8
	str r0, [r5]
	str r4, [sp]
	add r0, r7, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	mov r6, #8
	bl sub_0204B81C
	str r0, [r5, #4]
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0x13
	add r3, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	add r0, r7, #0
	bl sub_0204AB0C
	add r7, sp, #0x14
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r1, #0xa8
	add r0, sp, #0x14
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #7
	strh r1, [r0, #4]
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl sub_0204C040
	str r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x14]
	bl sub_0204C550
	ldr r3, _0219D804 ; =0x0219F780
	add r2, sp, #0x1c
_0219D7BC:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0219D7BC
	add r6, sp, #0x5c
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, sp, #0x1c
	str r0, [sp, #0x5c]
	mov r0, #2
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x60]
	str r1, [sp, #0x64]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x68]
	add r1, sp, #0x90
	ldrb r2, [r1]
	str r2, [sp, #0x6c]
	ldrb r1, [r1, #4]
	add r1, r1, #4
	str r1, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02199AA0
	mov r1, #0xa
	str r0, [r5, #0xc]
	bl sub_02199CE0
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0219D804: .word 0x0219F780
	thumb_func_end ovy144_219d720

	thumb_func_start ovy144_219d808
ovy144_219d808: ; 0x0219D808
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02199B5C
	ldr r0, [r4, #0x14]
	bl sub_0204C108
	ldr r0, [r4, #8]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204B98C
	ldr r0, [r4]
	bl sub_0204BCD0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219d808

	thumb_func_start ovy144_219d838
ovy144_219d838: ; 0x0219D838
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	bl sub_02199B90
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219D85A
	cmp r0, #1
	beq _0219D8E6
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0219D85A:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	mov r2, #0
	mov r4, #0
	bl sub_0204C178
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219D894
	add r1, sp, #0
	ldrsh r0, [r1, r4]
	ldr r2, [sp, #8]
	sub r0, r2, r0
	cmp r0, #0x18
	bhi _0219D8A6
	mov r0, #2
	ldrsh r0, [r1, r0]
	ldr r2, [sp, #4]
	sub r0, r2, r0
	cmp r0, #0x18
	bhi _0219D8A6
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
	b _0219D8A6
_0219D894:
	bl GCTX_HIDGetPressedKeys
	mov r1, #4
	tst r0, r1
	beq _0219D8A6
	add r0, r4, #0
	bl sub_0203D564
	mov r4, #1
_0219D8A6:
	cmp r4, #0
	beq _0219D90A
	ldr r0, [r5, #0x14]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D90A
	add r0, r6, #0
	bl sub_0219EA18
	cmp r0, #0
	bne _0219D90A
	ldr r0, [r5, #0x14]
	bl sub_0204C4A0
	cmp r0, #7
	ldr r0, [r5, #0x14]
	bne _0219D8CE
	mov r1, #9
	b _0219D8D0
_0219D8CE:
	mov r1, #0xa
_0219D8D0:
	bl sub_0204C488
	ldr r0, [r5, #0x14]
	bl sub_0204C540
	mov r0, #7
	str r0, [r5, #0x18]
	mov r0, #1
	add sp, #0xc
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, pc}
_0219D8E6:
	ldr r0, [r5, #0x14]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D90A
	ldr r0, [r5, #0x14]
	bl sub_0204C4A0
	cmp r0, #9
	ldr r0, [r5, #0x14]
	bne _0219D900
	mov r1, #8
	b _0219D902
_0219D900:
	mov r1, #7
_0219D902:
	bl sub_0204C488
	mov r0, #0
	str r0, [r5, #0x1c]
_0219D90A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy144_219d838

	thumb_func_start ovy144_219d910
ovy144_219d910: ; 0x0219D910
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02199C08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219D924
	ldr r0, [r4, #0x18]
_0219D924:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219d910

	thumb_func_start sub_0219D928
sub_0219D928: ; 0x0219D928
	ldr r0, [r0, #0xc]
	ldr r3, _0219D930 ; =sub_02199C58
	bx r3
	nop
_0219D930: .word sub_02199C58
	thumb_func_end sub_0219D928

	thumb_func_start ovy144_219d934
ovy144_219d934: ; 0x0219D934
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x18
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #0x76
	strh r0, [r5, #8]
	mov r0, #0x4e
	add r1, r5, #0
	strh r0, [r5, #0xa]
	str r6, [r5, #4]
	add r0, r4, #0
	add r1, #8
	mov r2, #0
	str r4, [r5]
	bl sub_0204C140
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #8
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r5]
	mov r1, #1
	mov r4, #1
	bl sub_0204C124
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C468
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C438
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_0204C468
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_0204C438
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204C520
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5]
	bne _0219D9B6
	add r1, r4, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_0219D9B6:
	add r1, r7, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219d934

	thumb_func_start sub_0219D9C0
sub_0219D9C0: ; 0x0219D9C0
	ldr r3, _0219D9C8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x18
	bx r3
	.align 2, 0
_0219D9C8: .word MI_CpuFill8
	thumb_func_end sub_0219D9C0

	thumb_func_start ovy144_219d9cc
ovy144_219d9cc: ; 0x0219D9CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, sp, #0x34
	mov r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	add r0, sp, #0x28
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	add r7, r1, #0
	str r4, [r5, #0xc]
	bl sub_0203DF20
	mov r6, #0x40
	tst r0, r6
	beq _0219DA02
	add r0, r4, #0
	bl sub_0203D564
	ldr r1, [sp, #0x38]
	lsl r0, r6, #6
	sub r0, r1, r0
	str r0, [sp, #0x38]
	mov r4, #1
_0219DA02:
	bl sub_0203DF20
	mov r6, #0x80
	tst r0, r6
	beq _0219DA1C
	mov r0, #0
	bl sub_0203D564
	ldr r1, [sp, #0x38]
	lsl r0, r6, #5
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r4, #1
_0219DA1C:
	bl sub_0203DF20
	mov r6, #0x20
	tst r0, r6
	beq _0219DA36
	mov r0, #0
	bl sub_0203D564
	ldr r1, [sp, #0x34]
	lsl r0, r6, #7
	sub r0, r1, r0
	str r0, [sp, #0x34]
	mov r4, #1
_0219DA36:
	bl sub_0203DF20
	mov r6, #0x10
	tst r0, r6
	beq _0219DA50
	mov r0, #0
	bl sub_0203D564
	ldr r1, [sp, #0x34]
	lsl r0, r6, #8
	add r0, r1, r0
	str r0, [sp, #0x34]
	mov r4, #1
_0219DA50:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0219DA6A
	bl sub_0203D554
	cmp r0, #0
	bne _0219DA6A
	add r0, r7, #0
	add r1, r5, #0
	bl ovy144_219e030
	add r6, r0, #0
	bne _0219DA6C
_0219DA6A:
	b _0219DBA6
_0219DA6C:
	add r0, r7, #0
	add r1, sp, #8
	bl sub_0219DFBC
	add r0, r6, #0
	mov r1, #4
	mov r4, #4
	bl ovy144_219e094
	ldr r1, [sp, #8]
	add r0, r1, r0
	cmp r0, #0
	ble _0219DAA4
	add r0, r6, #0
	add r1, r4, #0
	bl ovy144_219e094
	ldr r1, [sp, #8]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DABE
_0219DAA4:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy144_219e094
	ldr r1, [sp, #8]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DABE:
	blx sub_0208DA4C
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #5
	mov r4, #5
	bl ovy144_219e094
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	cmp r0, #0
	ble _0219DAF4
	add r0, r6, #0
	add r1, r4, #0
	bl ovy144_219e094
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DB0E
_0219DAF4:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy144_219e094
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DB0E:
	blx sub_0208DA4C
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0219DB32
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DB40
_0219DB32:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DB40:
	blx sub_0208DA4C
	str r0, [sp, #0x10]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0219DB60
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219DB6E
_0219DB60:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219DB6E:
	blx sub_0208DA4C
	str r0, [sp, #0x14]
	mov r0, #0
	add r6, sp, #0x28
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	add r2, r6, #0
	bl VEC_Subtract
	add r0, r6, #0
	blx VEC_Mag
	mov r4, #1
	lsl r4, r4, #0xc
	cmp r0, r4
	ble _0219DBA4
	add r0, r6, #0
	add r1, r6, #0
	blx VEC_Normalize
	add r0, r6, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02050784
_0219DBA4:
	mov r4, #1
_0219DBA6:
	cmp r4, #0
	beq _0219DC44
	add r0, sp, #0x34
	add r1, r0, #0
	blx VEC_Normalize
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x28]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x2c]
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r3, r1
	cmp r0, #0
	ble _0219DBD4
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r0, r2
	bge _0219DBD4
	b _0219DBDE
_0219DBD4:
	ldr r2, _0219DCA0 ; =0xFFFFF000
	cmp r0, r2
	ble _0219DBE0
	cmp r0, #0
	bge _0219DBE0
_0219DBDE:
	add r0, r2, #0
_0219DBE0:
	cmp r1, #0
	ble _0219DBEE
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r1, r2
	bge _0219DBEE
	b _0219DBF8
_0219DBEE:
	ldr r2, _0219DCA0 ; =0xFFFFF000
	cmp r1, r2
	ble _0219DBFA
	cmp r1, #0
	bge _0219DBFA
_0219DBF8:
	add r1, r2, #0
_0219DBFA:
	mov r2, #8
	ldrsh r3, [r5, r2]
	lsl r0, r0, #4
	asr r0, r0, #0x10
	add r0, r3, r0
	strh r0, [r5, #8]
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	lsl r0, r1, #4
	asr r0, r0, #0x10
	add r0, r3, r0
	strh r0, [r5, #0xa]
	ldrsh r0, [r5, r2]
	cmp r0, #0xf8
	ble _0219DC1C
	mov r0, #0xf8
	b _0219DC22
_0219DC1C:
	cmp r0, #0
	bge _0219DC22
	mov r0, #0
_0219DC22:
	strh r0, [r5, #8]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0xa8
	ble _0219DC30
	mov r0, #0xa8
	b _0219DC36
_0219DC30:
	cmp r0, #8
	bge _0219DC36
	mov r0, #8
_0219DC36:
	strh r0, [r5, #0xa]
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #8
	mov r2, #0
	bl sub_0204C140
_0219DC44:
	bl GCTX_HIDGetPressedKeys
	mov r4, #1
	tst r0, r4
	beq _0219DC56
	mov r0, #0
	bl sub_0203D564
	str r4, [r5, #0xc]
_0219DC56:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219DC82
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
	ldr r0, [sp, #4]
	cmp r0, #0xf8
	bhi _0219DC82
	ldr r0, [sp]
	sub r0, #8
	cmp r0, #0xa0
	bhi _0219DC82
	str r4, [r5, #0xc]
	ldr r0, [sp, #4]
	strh r0, [r5, #8]
	ldr r0, [sp]
	strh r0, [r5, #0xa]
_0219DC82:
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5]
	bne _0219DC96
	mov r1, #1
	bl sub_0204C124
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0219DC96:
	mov r1, #0
	bl sub_0204C124
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DCA0: .word 0xFFFFF000
	thumb_func_end ovy144_219d9cc

	thumb_func_start sub_0219DCA4
sub_0219DCA4: ; 0x0219DCA4
	mov r2, #8
	ldrsh r2, [r0, r2]
	str r2, [r1]
	mov r2, #0xa
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DCA4

	thumb_func_start sub_0219DCB4
sub_0219DCB4: ; 0x0219DCB4
	add r2, r0, #0
	ldr r0, [r1]
	ldr r3, _0219DCCC ; =sub_0204C140
	strh r0, [r2, #8]
	ldr r0, [r1, #4]
	strh r0, [r2, #0xa]
	ldr r0, [r2]
	add r2, #8
	add r1, r2, #0
	mov r2, #0
	bx r3
	nop
_0219DCCC: .word sub_0204C140
	thumb_func_end sub_0219DCB4

	thumb_func_start sub_0219DCD0
sub_0219DCD0: ; 0x0219DCD0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219DCD0

	thumb_func_start sub_0219DCD4
sub_0219DCD4: ; 0x0219DCD4
	ldr r3, _0219DCD8 ; =sub_0203DF20
	bx r3
	.align 2, 0
_0219DCD8: .word sub_0203DF20
	thumb_func_end sub_0219DCD4

	thumb_func_start ovy144_219dcdc
ovy144_219dcdc: ; 0x0219DCDC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _0219DCF6
	ldr r0, [r5, #4]
	mov r4, #0
	mov r1, #0
	bl sub_0204C124
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DCF6:
	ldr r0, [r5, #0x14]
	cmp r0, r4
	beq _0219DD34
	add r0, r4, #0
	mov r1, #4
	bl ovy144_219e094
	ldr r1, [r6]
	add r7, sp, #0
	add r0, r1, r0
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #5
	bl ovy144_219e094
	ldr r1, [r6, #4]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r7, #2]
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl sub_0204C140
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #4]
	bl sub_0204C56C
	str r4, [r5, #0x14]
_0219DD34:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219dcdc

	thumb_func_start ovy144_219dd38
ovy144_219dd38: ; 0x0219DD38
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #0
	beq _0219DD6C
	mov r1, #4
	bl ovy144_219e094
	ldr r1, [r4]
	add r6, sp, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #0x14]
	mov r1, #5
	bl ovy144_219e094
	ldr r1, [r4, #4]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r6, #2]
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl sub_0204C140
_0219DD6C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy144_219dd38

	thumb_func_start sub_0219DD70
sub_0219DD70: ; 0x0219DD70
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0219DD70

	thumb_func_start sub_0219DD74
sub_0219DD74: ; 0x0219DD74
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219DD74

	thumb_func_start ovy144_219dd78
ovy144_219dd78: ; 0x0219DD78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r7, r0, #0
	ldr r0, [sp, #0x68]
	mov r1, #0
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	str r3, [sp, #0x20]
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x60]
	ldr r6, [sp, #0x64]
	mov r5, #0
	bl sub_0219F36C
	str r0, [sp, #0x2c]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	mov r0, #0x54
	str r0, [r7, #0xc]
	ldr r0, _0219DE88 ; =0x000008D5
	str r6, [r7]
	str r0, [sp]
	ldr r2, [r7, #0xc]
	ldr r0, [sp, #0x68]
	add r1, r2, #0
	mov r4, #0x44
	ldr r3, _0219DE8C ; =0x0219F940
	mul r1, r4
	mov r2, #0
	bl sub_0203A1FC
	ldr r3, [r7, #0xc]
	mov r1, #0
	add r2, r3, #0
	mul r2, r4
	str r0, [r7, #8]
	blx MI_CpuFill8
	ldr r0, [sp, #0x60]
	add r1, sp, #0x44
	add r2, sp, #0x40
	add r3, sp, #0x3c
	bl ovy144_219f384
	mov r4, #0
_0219DDDC:
	mov r0, #0
	str r0, [sp, #0x28]
	lsl r1, r4, #0x10
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0219F730
	str r0, [sp, #0x24]
	cmp r0, #0
	bne _0219DE04
	add r0, r6, #0
	bl sub_02017220
	cmp r0, #0
	beq _0219DE04
	cmp r0, #1
	bne _0219DE04
	mov r0, #1
	str r0, [sp, #0x28]
_0219DE04:
	mov r0, #0x6a
	ldr r1, [sp, #0x24]
	lsl r0, r0, #2
	cmp r1, r0
	beq _0219DE3A
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	add r2, r4, r2
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x14]
	mov r0, #0x44
	ldr r1, [r7, #8]
	mul r0, r5
	add r0, r1, r0
	ldr r1, [sp, #0x20]
	bl ovy144_219e18c
	add r5, r5, #1
_0219DE3A:
	add r4, r4, #1
	cmp r4, #0x55
	blt _0219DDDC
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	bl ovy144_219e118
	add r4, r0, #0
	ldr r0, [sp, #0x60]
	add r1, sp, #0x38
	add r2, sp, #0x34
	add r3, sp, #0x30
	bl ovy144_219f384
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x68]
	str r0, [sp, #8]
	add r0, r7, #0
	ldr r3, [sp, #0x38]
	add r0, #0x20
	bl ovy144_219e7d4
	mov r0, #0
	strh r0, [r7, #0x18]
	strh r0, [r7, #0x1a]
	strh r0, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	add r0, r7, #0
	bl ovy144_219e0f4
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DE88: .word 0x000008D5
_0219DE8C: .word 0x0219F940
	thumb_func_end ovy144_219dd78

	thumb_func_start ovy144_219de90
ovy144_219de90: ; 0x0219DE90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x20
	bl ovy144_219e85c
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219DEB8
	mov r6, #0x44
_0219DEA4:
	add r0, r4, #0
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	bl ovy144_219e340
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219DEA4
_0219DEB8:
	ldr r0, [r5, #8]
	bl sub_0203A24C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy144_219de90

	thumb_func_start sub_0219DECC
sub_0219DECC: ; 0x0219DECC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DECC

	thumb_func_start ovy144_219ded0
ovy144_219ded0: ; 0x0219DED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _0219DEEC
	mov r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
	b _0219DEFC
_0219DEEC:
	mov r0, #0x47
	mvn r0, r0
	strh r0, [r5, #0x18]
	sub r0, #0x38
	strh r0, [r5, #0x1a]
	mov r0, #0x80
	strh r0, [r5, #0x1c]
	mov r0, #0x60
_0219DEFC:
	strh r0, [r5, #0x1e]
	ldr r0, [r2]
	add r1, sp, #4
	neg r0, r0
	str r0, [sp, #4]
	ldr r0, [r2, #4]
	neg r0, r0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy144_219df58
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219DF42
	add r7, r5, #0
	add r7, #0x10
_0219DF1E:
	mov r0, #0x44
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #8]
	ldr r1, [sp]
	ldr r2, _0219DF54 ; =0x0219F76C
	add r0, r0, r6
	bl ovy144_219e648
	ldr r0, [r5, #8]
	add r1, r7, #0
	add r0, r0, r6
	bl ovy144_219e6bc
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219DF1E
_0219DF42:
	add r0, r5, #0
	add r5, #0x10
	add r0, #0x20
	add r1, r5, #0
	bl ovy144_219e874
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DF54: .word 0x0219F76C
	thumb_func_end ovy144_219ded0

	thumb_func_start ovy144_219df58
ovy144_219df58: ; 0x0219DF58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	ldr r2, [r1]
	cmp r2, r0
	bgt _0219DF70
	mov r0, #0x1a
	ldrsh r0, [r5, r0]
	cmp r2, r0
	blt _0219DF70
	add r0, r2, #0
_0219DF70:
	str r0, [r5, #0x10]
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	ldr r1, [r1, #4]
	cmp r1, r0
	bgt _0219DF86
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _0219DF86
	add r0, r1, #0
_0219DF86:
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219DFAC
	add r6, r5, #0
	add r6, #0x10
	mov r7, #0x44
_0219DF96:
	add r0, r4, #0
	ldr r1, [r5, #8]
	mul r0, r7
	add r0, r1, r0
	add r1, r6, #0
	bl ovy144_219e6bc
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219DF96
_0219DFAC:
	add r0, r5, #0
	add r5, #0x10
	add r0, #0x20
	add r1, r5, #0
	bl ovy144_219e874
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219df58

	thumb_func_start sub_0219DFBC
sub_0219DFBC: ; 0x0219DFBC
	ldr r2, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r2, [r1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DFBC

	thumb_func_start ovy144_219dfc8
ovy144_219dfc8: ; 0x0219DFC8
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r0, #0x10]
	add r2, r0, #0
	add r3, r4, r3
	str r3, [r0, #0x10]
	ldr r3, [r0, #0x14]
	ldr r1, [r1, #4]
	add r2, #0x10
	add r1, r3, r1
	str r1, [r0, #0x14]
	add r1, r2, #0
	bl ovy144_219df58
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219dfc8

	thumb_func_start ovy144_219dfe8
ovy144_219dfe8: ; 0x0219DFE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl sub_0219DCA4
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219E028
	add r6, r5, #0
	add r6, #0x10
_0219E002:
	mov r0, #0x44
	add r7, r4, #0
	mul r7, r0
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r0, r0, r7
	add r2, r6, #0
	bl ovy144_219e3bc
	cmp r0, #0
	beq _0219E020
	ldr r0, [r5, #8]
	add sp, #8
	add r0, r0, r7
	pop {r3, r4, r5, r6, r7, pc}
_0219E020:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219E002
_0219E028:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219dfe8

	thumb_func_start ovy144_219e030
ovy144_219e030: ; 0x0219E030
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, r1, #0
	add r1, sp, #8
	bl sub_0219DCA4
	mov r5, #0
	mvn r5, r5
	ldr r0, [r6, #0xc]
	mov r4, #0
	str r5, [sp]
	cmp r0, #0
	bls _0219E078
	add r7, r6, #0
	add r7, #0x10
_0219E050:
	mov r0, #0x44
	ldr r1, [r6, #8]
	mul r0, r4
	add r0, r1, r0
	add r1, sp, #8
	add r2, r7, #0
	add r3, sp, #4
	bl ovy144_219e5dc
	cmp r0, #0
	beq _0219E070
	ldr r0, [sp, #4]
	cmp r5, r0
	bls _0219E070
	str r4, [sp]
	add r5, r0, #0
_0219E070:
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219E050
_0219E078:
	mov r1, #0
	ldr r0, [sp]
	mvn r1, r1
	cmp r0, r1
	bne _0219E088
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E088:
	mov r1, #0x44
	ldr r2, [r6, #8]
	mul r1, r0
	add r0, r2, r1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy144_219e030

	thumb_func_start ovy144_219e094
ovy144_219e094: ; 0x0219E094
	push {r3, lr}
	add r2, r1, #0
	add r3, r0, #0
	cmp r2, #2
	blt _0219E0AC
	cmp r2, #0xa
	bgt _0219E0AC
	sub r0, r2, #2
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r0, [r0, #0xc]
	pop {r3, pc}
_0219E0AC:
	cmp r2, #0xc
	bne _0219E0B4
	ldr r0, [r3, #0x3c]
	pop {r3, pc}
_0219E0B4:
	ldr r1, [r3, #8]
	ldr r0, [r3, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0219F730
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy144_219e094

	thumb_func_start ovy144_219e0c4
ovy144_219e0c4: ; 0x0219E0C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _0219E0F2
	mov r7, #0x44
_0219E0D4:
	add r0, r4, #0
	ldr r1, [r5, #8]
	mul r0, r7
	add r0, r1, r0
	cmp r0, r6
	bne _0219E0E6
	bl ovy144_219e72c
	b _0219E0EA
_0219E0E6:
	bl ovy144_219e77c
_0219E0EA:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219E0D4
_0219E0F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy144_219e0c4

	thumb_func_start ovy144_219e0f4
ovy144_219e0f4: ; 0x0219E0F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219E116
	mov r6, #0x44
_0219E102:
	add r0, r4, #0
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	bl ovy144_219e77c
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219E102
_0219E116:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy144_219e0f4

	thumb_func_start ovy144_219e118
ovy144_219e118: ; 0x0219E118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02160EB4
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _0219E14E
_0219E12C:
	mov r0, #0x44
	mul r0, r4
	ldr r6, [r5, #8]
	str r0, [sp]
	add r0, r6, r0
	mov r1, #0
	bl ovy144_219e094
	cmp r7, r0
	bne _0219E146
	ldr r0, [sp]
	add r0, r6, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219E146:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219E12C
_0219E14E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219e118

	thumb_func_start ovy144_219e154
ovy144_219e154: ; 0x0219E154
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xf
	bl sub_0219F730
	ldr r1, _0219E188 ; =0x0000FFFF
	cmp r0, r1
	beq _0219E178
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _0219E178
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _0219E17E
_0219E178:
	ldr r1, _0219E188 ; =0x0000FFFF
	cmp r0, r1
	bne _0219E182
_0219E17E:
	mov r0, #1
	pop {r4, pc}
_0219E182:
	mov r0, #0
	pop {r4, pc}
	nop
_0219E188: .word 0x0000FFFF
	thumb_func_end ovy144_219e154

	thumb_func_start ovy144_219e18c
ovy144_219e18c: ; 0x0219E18C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r2, #0
	mov r1, #0
	mov r2, #0x44
	add r4, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	mov r0, #1
	lsl r0, r0, #0xc
	lsl r1, r5, #0x10
	str r0, [r4, #0x34]
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #0xf
	str r6, [r4, #4]
	str r5, [r4, #8]
	bl sub_0219F730
	add r1, r0, #0
	ldr r0, _0219E33C ; =0x0000FFFF
	cmp r1, r0
	beq _0219E1C6
	ldr r0, [sp, #0x34]
	bl sub_02160F74
	b _0219E1C8
_0219E1C6:
	mov r0, #0
_0219E1C8:
	str r0, [r4, #0x38]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0219E1D4
	mov r0, #1
	str r0, [r4, #0x38]
_0219E1D4:
	mov r5, #0
_0219E1D6:
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r5, #2
	bl sub_0219F730
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #0xc]
	cmp r5, #9
	blt _0219E1D6
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0219E1FA
	mov r0, #1
	b _0219E218
_0219E1FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0219E216
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xc
	bl sub_0219F730
	cmp r0, #0
	beq _0219E216
	mov r0, #1
	b _0219E218
_0219E216:
	mov r0, #0
_0219E218:
	str r0, [r4, #0x3c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x10
	bl sub_0219F730
	add r1, r0, #0
	ldr r0, _0219E33C ; =0x0000FFFF
	cmp r1, r0
	beq _0219E242
	ldr r0, [sp, #0x34]
	bl sub_02160F74
	cmp r0, #0
	bne _0219E23E
	mov r0, #1
	b _0219E240
_0219E23E:
	mov r0, #0
_0219E240:
	b _0219E244
_0219E242:
	mov r0, #0
_0219E244:
	str r0, [r4, #0x40]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0219E250
	mov r0, #0
	str r0, [r4, #0x40]
_0219E250:
	add r0, r4, #0
	mov r1, #0xb
	bl ovy144_219e094
	cmp r0, #5
	bhi _0219E2D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E268: ; jump table
	.short _0219E274 - _0219E268 - 2 ; case 0
	.short _0219E296 - _0219E268 - 2 ; case 1
	.short _0219E280 - _0219E268 - 2 ; case 2
	.short _0219E2A0 - _0219E268 - 2 ; case 3
	.short _0219E2AC - _0219E268 - 2 ; case 4
	.short _0219E2B8 - _0219E268 - 2 ; case 5
_0219E274:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x31
	strb r1, [r0]
	mov r1, #1
	b _0219E2CC
_0219E280:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x31
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x30
	strb r1, [r0]
	mov r0, #1
	str r0, [r4, #0x38]
	b _0219E2D2
_0219E296:
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x31
	strb r1, [r0]
	b _0219E2CC
_0219E2A0:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x31
	strb r1, [r0]
	mov r1, #0xd
	b _0219E2CC
_0219E2AC:
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x31
	strb r1, [r0]
	mov r1, #0xe
	b _0219E2CC
_0219E2B8:
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0x31
	strb r1, [r0]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0219E2CA
	mov r1, #0x11
	b _0219E2CC
_0219E2CA:
	mov r1, #0x10
_0219E2CC:
	add r0, r4, #0
	add r0, #0x30
	strb r1, [r0]
_0219E2D2:
	add r0, r4, #0
	mov r1, #0xb
	bl ovy144_219e094
	cmp r0, #1
	beq _0219E330
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	mov r5, #0
	blx MI_CpuFill8
	add r0, r4, #0
	mov r1, #2
	bl ovy144_219e094
	add r6, sp, #0xc
	strh r0, [r6]
	add r0, r4, #0
	mov r1, #3
	bl ovy144_219e094
	strh r0, [r6, #2]
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x30]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	add r0, r7, #0
	bl sub_0204C040
	str r0, [r4]
	mov r1, #2
	bl sub_0204C244
	ldr r0, [r4]
	mov r1, #2
	bl sub_0204C468
	ldr r0, [r4]
	mov r1, #4
	bl sub_0204C438
_0219E330:
	add r0, r4, #0
	bl ovy144_219e77c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219E33C: .word 0x0000FFFF
	thumb_func_end ovy144_219e18c

	thumb_func_start ovy144_219e340
ovy144_219e340: ; 0x0219E340
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0219E34E
	bl sub_0204C108
_0219E34E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x44
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219e340

	thumb_func_start ovy144_219e35c
ovy144_219e35c: ; 0x0219E35C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5]
	add r4, r1, #0
	cmp r2, #0
	beq _0219E3B8
	add r1, r5, #0
	add r1, #0x32
	ldrb r1, [r1]
	cmp r1, #0xff
	beq _0219E3B8
	ldr r1, [r5, #0x40]
	cmp r1, #0
	beq _0219E382
	add r0, r2, #0
	mov r1, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
_0219E382:
	mov r1, #0xb
	mov r6, #0xb
	bl ovy144_219e094
	cmp r0, #4
	beq _0219E39A
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	cmp r0, #5
	bne _0219E3B0
_0219E39A:
	add r1, r5, #0
	add r1, #0x30
	ldrb r1, [r1]
	add r0, r5, #0
	bl ovy144_219e6f4
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C124
	pop {r4, r5, r6, pc}
_0219E3B0:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0204C124
_0219E3B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy144_219e35c

	thumb_func_start ovy144_219e3bc
ovy144_219e3bc: ; 0x0219E3BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6]
	add r4, r2, #0
	cmp r0, #0
	ble _0219E3DE
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E3EC
_0219E3DE:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E3EC:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0219E40A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E418
_0219E40A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E418:
	blx sub_0208DA4C
	str r0, [sp, #0x10]
	mov r2, #0
	add r0, sp, #0x34
	add r1, sp, #0xc
	str r2, [sp, #0x14]
	bl sub_02050678
	add r0, r5, #0
	mov r1, #6
	mov r6, #6
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	cmp r0, #0
	ble _0219E45A
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E474
_0219E45A:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E474:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	mov r6, #7
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	cmp r0, #0
	ble _0219E4AA
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E4C4
_0219E4AA:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E4C4:
	blx sub_0208DA4C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #8
	mov r6, #8
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	cmp r0, #0
	ble _0219E4FE
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E518
_0219E4FE:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E518:
	blx sub_0208DA4C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r6, #9
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	cmp r0, #0
	ble _0219E54E
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E568
_0219E54E:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E568:
	blx sub_0208DA4C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa
	mov r4, #0xa
	bl ovy144_219e094
	cmp r0, #0
	ble _0219E59A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy144_219e094
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219E5B0
_0219E59A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy144_219e094
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219E5B0:
	blx sub_0208DA4C
	add r4, sp, #0x18
	add r3, r0, #0
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	bl sub_02050760
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0219E5CE
	add sp, #0x44
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0219E5CE:
	add r0, r4, #0
	add r1, sp, #0x34
	mov r2, #0
	bl sub_02050690
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy144_219e3bc

	thumb_func_start ovy144_219e5dc
ovy144_219e5dc: ; 0x0219E5DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #4
	add r5, r0, #0
	add r7, r3, #0
	bl ovy144_219e094
	ldr r1, [r6]
	add r0, r1, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	bl ovy144_219e094
	ldr r1, [r6, #4]
	add r6, r1, r0
	add r0, r5, #0
	mov r1, #1
	bl ovy144_219e094
	ldr r2, [r4]
	ldr r1, [sp]
	sub r2, r1, r2
	add r1, r2, #0
	mul r1, r2
	ldr r2, [r4, #4]
	sub r2, r6, r2
	add r3, r2, #0
	mul r3, r2
	ldr r2, [r5, #0x40]
	cmp r2, #0
	beq _0219E622
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E622:
	ldr r4, [r5, #0x34]
	cmp r4, #0
	bge _0219E62A
	neg r4, r4
_0219E62A:
	add r2, r1, r3
	add r1, r0, #0
	mul r1, r0
	add r0, r1, #0
	mul r0, r4
	lsr r0, r0, #0xc
	cmp r2, r0
	bhs _0219E644
	cmp r7, #0
	beq _0219E640
	str r2, [r7]
_0219E640:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E644:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy144_219e5dc

	thumb_func_start ovy144_219e648
ovy144_219e648: ; 0x0219E648
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	mov r4, #0
_0219E654:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0219E666
	ldr r5, [r7]
	b _0219E668
_0219E666:
	ldr r5, [r7, #4]
_0219E668:
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r4, #2
	bl sub_0219F730
	sub r1, r0, r5
	ldr r0, [sp]
	mul r0, r1
	asr r0, r0, #0xc
	add r1, r0, r5
	lsl r0, r4, #2
	add r0, r6, r0
	add r4, r4, #1
	str r1, [r0, #0xc]
	cmp r4, #8
	blt _0219E654
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xa
	bl sub_0219F730
	ldr r1, [sp]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r6, #0x2c]
	add r0, r1, #0
	str r0, [r6, #0x34]
	ldr r0, [r6]
	cmp r0, #0
	beq _0219E6B6
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r1, sp, #4
	bl sub_0204C270
_0219E6B6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219e648

	thumb_func_start ovy144_219e6bc
ovy144_219e6bc: ; 0x0219E6BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	bl ovy144_219e094
	ldr r1, [r4]
	add r6, sp, #0
	add r0, r1, r0
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #3
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	strh r0, [r6, #2]
	ldr r0, [r5]
	cmp r0, #0
	beq _0219E6EE
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
_0219E6EE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy144_219e6bc

	thumb_func_start ovy144_219e6f4
ovy144_219e6f4: ; 0x0219E6F4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0xff
	ldr r0, [r4]
	beq _0219E71E
	cmp r0, #0
	beq _0219E728
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4]
	add r4, #0x32
	ldrb r1, [r4]
	bl sub_0204C488
	pop {r4, pc}
_0219E71E:
	cmp r0, #0
	beq _0219E728
	mov r1, #0
	bl sub_0204C124
_0219E728:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219e6f4

	thumb_func_start ovy144_219e72c
ovy144_219e72c: ; 0x0219E72C
	push {r4, r5, r6, lr}
	mov r1, #0xb
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xb
	bl ovy144_219e094
	cmp r0, #4
	beq _0219E74A
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	cmp r0, #5
	bne _0219E754
_0219E74A:
	ldr r0, [r5, #0x40]
	mov r4, #1
	cmp r0, #0
	beq _0219E754
	mov r4, #0
_0219E754:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219E75E
	cmp r4, #0
	beq _0219E772
_0219E75E:
	add r0, r5, #0
	mov r1, #1
	bl ovy144_219e35c
	add r0, r5, #0
	add r5, #0x31
	ldrb r1, [r5]
	bl ovy144_219e6f4
	pop {r4, r5, r6, pc}
_0219E772:
	add r0, r5, #0
	mov r1, #0
	bl ovy144_219e35c
	pop {r4, r5, r6, pc}
	thumb_func_end ovy144_219e72c

	thumb_func_start ovy144_219e77c
ovy144_219e77c: ; 0x0219E77C
	push {r4, r5, r6, lr}
	mov r1, #0xb
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xb
	bl ovy144_219e094
	cmp r0, #4
	beq _0219E79A
	add r0, r5, #0
	add r1, r6, #0
	bl ovy144_219e094
	cmp r0, #5
	bne _0219E7A4
_0219E79A:
	ldr r0, [r5, #0x40]
	mov r4, #1
	cmp r0, #0
	beq _0219E7A4
	mov r4, #0
_0219E7A4:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219E7AE
	cmp r4, #0
	beq _0219E7C8
_0219E7AE:
	ldr r0, [r5]
	cmp r0, #0
	beq _0219E7D0
	add r0, r5, #0
	mov r1, #1
	bl ovy144_219e35c
	add r0, r5, #0
	add r5, #0x30
	ldrb r1, [r5]
	bl ovy144_219e6f4
	pop {r4, r5, r6, pc}
_0219E7C8:
	add r0, r5, #0
	mov r1, #0
	bl ovy144_219e35c
_0219E7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy144_219e77c

	thumb_func_start ovy144_219e7d4
ovy144_219e7d4: ; 0x0219E7D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	str r4, [r5, #4]
	blx MI_CpuFill8
	cmp r4, #0
	beq _0219E810
	add r0, r4, #0
	mov r1, #2
	bl ovy144_219e094
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #3
	bl ovy144_219e094
	add r1, sp, #0xc
	strh r0, [r1, #2]
_0219E810:
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204C040
	str r0, [r5]
	mov r1, #2
	bl sub_0204C468
	ldr r0, [r5]
	mov r1, #2
	bl sub_0204C438
	ldr r0, [r5]
	mov r1, #6
	bl sub_0204C488
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C520
	cmp r4, #0
	bne _0219E856
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
_0219E856:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219e7d4

	thumb_func_start ovy144_219e85c
ovy144_219e85c: ; 0x0219E85C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204C108
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219e85c

	thumb_func_start ovy144_219e874
ovy144_219e874: ; 0x0219E874
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _0219E89E
	mov r1, #2
	bl ovy144_219e094
	ldr r1, [r4]
	add r6, sp, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #3
	bl ovy144_219e094
	ldr r1, [r4, #4]
	add r0, r1, r0
	strh r0, [r6, #2]
_0219E89E:
	ldr r0, [r5]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy144_219e874

	thumb_func_start ovy144_219e8ac
ovy144_219e8ac: ; 0x0219E8AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #1
	lsl r0, r0, #0xc
	strb r4, [r5]
	strb r6, [r5, #1]
	str r0, [r5, #0x14]
	strh r7, [r5, #4]
	strh r7, [r5, #6]
	strh r7, [r5, #8]
	strh r7, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219e8ac

	thumb_func_start sub_0219E8D4
sub_0219E8D4: ; 0x0219E8D4
	ldr r3, _0219E8DC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x38
	bx r3
	.align 2, 0
_0219E8DC: .word MI_CpuFill8
	thumb_func_end sub_0219E8D4

	thumb_func_start ovy144_219e8e0
ovy144_219e8e0: ; 0x0219E8E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0219E9EA
	ldr r6, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	mov r1, #0xa
	sub r0, r0, r6
	mov r4, #0xa
	blx sub_0208D65C
	ldrh r1, [r5, #2]
	add r2, r0, #0
	mul r2, r1
	add r0, r6, r2
	str r0, [r5, #0x14]
	ldr r2, [r5, #0x2c]
	ldr r0, [r5, #0x34]
	ldr r6, [r5, #0x30]
	sub r0, r2, r0
	lsl r7, r0, #0xc
	ldr r0, [r5, #0x28]
	sub r0, r0, r6
	lsl r2, r0, #0xc
	add r0, r2, #0
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	asr r0, r0, #0xc
	add r0, r6, r0
	str r0, [r5, #0x20]
	ldrh r0, [r5, #2]
	mov r1, #0xa
	mul r0, r7
	blx sub_0208D65C
	ldr r1, [r5, #0x34]
	asr r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x24]
	mov r0, #1
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0xc
	cmp r1, r0
	ldrh r0, [r5, #2]
	bne _0219E974
	add r1, r4, #0
	sub r1, #0x13
	mul r1, r0
	sub r4, #0x6a
	sub r1, r4, r1
	strh r1, [r5, #4]
	mov r1, #7
	mul r1, r0
	mov r2, #0x48
	sub r1, r2, r1
	strh r1, [r5, #0xa]
	mov r1, #0x48
	sub r1, #0x54
	mul r1, r0
	sub r2, #0xc8
	sub r1, r2, r1
	strh r1, [r5, #6]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0x80
	sub r0, r0, r1
	strh r0, [r5, #8]
	b _0219E990
_0219E974:
	sub r4, #0x13
	add r1, r0, #0
	mul r1, r4
	strh r1, [r5, #4]
	mov r1, #7
	add r2, r0, #0
	mul r2, r1
	sub r1, #0x13
	mul r1, r0
	strh r1, [r5, #6]
	mov r1, #0xc
	mul r1, r0
	strh r2, [r5, #0xa]
	strh r1, [r5, #8]
_0219E990:
	ldrh r1, [r5, #2]
	add r0, r1, #1
	strh r0, [r5, #2]
	cmp r1, #0xa
	blo _0219E9D4
	ldr r0, [r5, #0x2c]
	mov r3, #0
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x28]
	str r0, [r5, #0x24]
	mov r0, #1
	lsl r0, r0, #0xc
	strh r3, [r5, #2]
	str r3, [r5, #0x10]
	str r2, [r5, #0x14]
	str r1, [r5, #0x20]
	cmp r2, r0
	bne _0219E9BE
	strh r3, [r5, #4]
	strh r3, [r5, #6]
	strh r3, [r5, #8]
	strh r3, [r5, #0xa]
	b _0219E9D0
_0219E9BE:
	add r0, r3, #0
	sub r0, #0x60
	strh r0, [r5, #4]
	mov r0, #0x80
	sub r3, #0x80
	strh r0, [r5, #8]
	mov r0, #0x48
	strh r3, [r5, #6]
	strh r0, [r5, #0xa]
_0219E9D0:
	mov r0, #1
	str r0, [r5, #0xc]
_0219E9D4:
	add r2, r5, #0
	ldr r0, [sp]
	ldr r1, [r5, #0x14]
	add r2, #0x20
	bl ovy144_219ded0
	add r0, r5, #0
	add r5, #0x20
	add r1, r5, #0
	bl ovy144_219ea1c
_0219E9EA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy144_219e8e0

	thumb_func_start ovy144_219e9ec
ovy144_219e9ec: ; 0x0219E9EC
	push {r3, r4}
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x14]
	mov r4, #1
	str r1, [r0, #0x1c]
	ldr r1, [r2]
	str r4, [r0, #0x10]
	sub r1, #0x80
	str r1, [r0, #0x30]
	ldr r1, [r2, #4]
	sub r1, #0x60
	str r1, [r0, #0x34]
	ldr r1, [r3]
	sub r1, #0x80
	str r1, [r0, #0x28]
	ldr r1, [r3, #4]
	sub r1, #0x60
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy144_219e9ec

	thumb_func_start sub_0219EA14
sub_0219EA14: ; 0x0219EA14
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219EA14

	thumb_func_start sub_0219EA18
sub_0219EA18: ; 0x0219EA18
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219EA18

	thumb_func_start ovy144_219ea1c
ovy144_219ea1c: ; 0x0219EA1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	ldrsh r0, [r4, r0]
	ldr r2, [r1]
	cmp r2, r0
	bgt _0219EA34
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r2, r0
	blt _0219EA34
	add r0, r2, #0
_0219EA34:
	str r0, [r4, #0x20]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	ldr r1, [r1, #4]
	cmp r1, r0
	bgt _0219EA4A
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _0219EA4A
	add r0, r1, #0
_0219EA4A:
	str r0, [r4, #0x24]
	ldrb r0, [r4]
	ldr r2, [r4, #0x20]
	mov r1, #0
	bl sub_02045E1C
	ldrb r0, [r4]
	ldr r2, [r4, #0x24]
	mov r1, #3
	bl sub_02045E1C
	ldrb r0, [r4]
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	ldrb r0, [r4]
	mov r1, #0xc
	mov r2, #0x60
	bl sub_02045EA0
	ldrb r0, [r4]
	ldr r2, [r4, #0x14]
	mov r1, #3
	bl sub_02045E74
	ldrb r0, [r4]
	ldr r2, [r4, #0x14]
	mov r1, #6
	bl sub_02045E74
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x20]
	mov r1, #0
	bl sub_02045E1C
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x24]
	mov r1, #3
	bl sub_02045E1C
	ldrb r0, [r4, #1]
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	ldrb r0, [r4, #1]
	mov r1, #0xc
	mov r2, #0x60
	bl sub_02045EA0
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x14]
	mov r1, #3
	bl sub_02045E74
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x14]
	mov r1, #6
	bl sub_02045E74
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219ea1c

	thumb_func_start sub_0219EAC8
sub_0219EAC8: ; 0x0219EAC8
	ldr r2, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r2, [r1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EAC8

	thumb_func_start ovy144_219ead4
ovy144_219ead4: ; 0x0219EAD4
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r0, #0x20]
	add r2, r0, #0
	add r3, r4, r3
	str r3, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r1, [r1, #4]
	add r2, #0x20
	add r1, r3, r1
	str r1, [r0, #0x24]
	add r1, r2, #0
	bl ovy144_219ea1c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219ead4

	thumb_func_start ovy144_219eaf4
ovy144_219eaf4: ; 0x0219EAF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	add r6, r3, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x20]
	str r4, [r5, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x24]
	str r6, [r5, #0x14]
	add r4, sp, #0x20
	str r0, [r5]
	ldrh r0, [r4, #8]
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, #0x10]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_020480C0
	str r0, [r5, #4]
	ldrh r1, [r4, #8]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r5, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219eaf4

	thumb_func_start ovy144_219eb48
ovy144_219eb48: ; 0x0219EB48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl GFL_StrBufFree
	ldr r0, [r4, #4]
	bl sub_02048210
	ldr r0, [r4, #0x10]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219eb48

	thumb_func_start ovy144_219eb6c
ovy144_219eb6c: ; 0x0219EB6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl BmpWin_GetBitmap
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_02017934
	str r0, [sp, #0x28]
	bl sub_02010044
	add r4, r0, #0
	bl sub_0201006C
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_02010060
	add r0, r4, #0
	bl sub_02010050
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02010054
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	bl sub_02017B7C
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	cmp r7, #0
	beq _0219EC70
	mov r0, #1
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	bl sub_02018BFC
	cmp r0, #0
	beq _0219EBFA
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_02038F00
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02048614
	ldr r0, [sp, #0x24]
	mov r1, #7
	add r2, r4, #0
	bl sub_02038F00
	cmp r0, #0
	beq _0219EC0A
	str r4, [sp, #8]
	b _0219EC0A
_0219EBFA:
	ldr r0, [sp, #0x14]
	bl sub_02018C80
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
_0219EC0A:
	ldr r0, [r5, #4]
	bl sub_020484D8
	lsl r0, r0, #0x12
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldr r0, [r5, #0xc]
	mov r2, #0x30
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	bl sub_02021CFC
	add r0, r7, #0
	mov r1, #0x11
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EC60
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x1c
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0x50
	bl sub_02021CFC
_0219EC60:
	add r0, r7, #0
	bl ovy144_219e154
	cmp r0, #0
	beq _0219EC70
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0219EC72
_0219EC70:
	b _0219EEFA
_0219EC72:
	add r0, r7, #0
	mov r1, #0x12
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EC9C
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0x80
	bl sub_02021CFC
_0219EC9C:
	add r0, r7, #0
	mov r1, #0x13
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219ECC6
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0x90
	bl sub_02021CFC
_0219ECC6:
	add r0, r7, #0
	mov r1, #0x14
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219ECF0
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0xa0
	bl sub_02021CFC
_0219ECF0:
	ldr r0, [sp, #0x14]
	bl sub_02018BFC
	cmp r0, #0
	bne _0219ECFC
	b _0219EE7C
_0219ECFC:
	ldr r0, [sp, #0x28]
	bl sub_02009408
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x7f
	bl sub_020095AC
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020095AC
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x20]
	bl sub_02038030
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_02037ED8
	add r0, r4, r0
	str r0, [sp, #0xc]
	mov r0, #0x80
	mov r1, #0x44
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ED52
	bl sub_02038030
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0219ED52:
	add r0, r7, #0
	mov r1, #0x15
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EDB2
	ldr r0, [r5, #0x18]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl sub_02046EF8
	str r0, [sp, #0x34]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0
	bl sub_02022888
	ldr r1, [sp, #0x34]
	mov r2, #0x80
	sub r1, r1, r0
	ldr r0, [r5, #0xc]
	sub r1, #0x1e
	str r0, [sp]
	lsl r1, r1, #0x10
	ldr r3, [r5, #8]
	add r0, r6, #0
	asr r1, r1, #0x10
	bl sub_02021CFC
_0219EDB2:
	add r0, r7, #0
	mov r1, #0x16
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EE16
	ldr r0, [r5, #0x18]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r0, [r5, #0x10]
	add r2, r3, r2
	mov r1, #0
	mov r3, #7
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl sub_02046EF8
	str r0, [sp, #0x38]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0
	bl sub_02022888
	ldr r1, [sp, #0x38]
	mov r2, #0x90
	sub r1, r1, r0
	ldr r0, [r5, #0xc]
	sub r1, #0x1e
	str r0, [sp]
	lsl r1, r1, #0x10
	ldr r3, [r5, #8]
	add r0, r6, #0
	asr r1, r1, #0x10
	bl sub_02021CFC
_0219EE16:
	add r0, r7, #0
	mov r1, #0x17
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EE74
	ldr r0, [r5, #0x18]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0xc]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl sub_02046EF8
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0
	bl sub_02022888
	sub r1, r7, r0
	ldr r0, [r5, #0xc]
	sub r1, #0x1e
	str r0, [sp]
	lsl r1, r1, #0x10
	ldr r3, [r5, #8]
	add r0, r6, #0
	asr r1, r1, #0x10
	mov r2, #0xa0
	bl sub_02021CFC
_0219EE74:
	add r0, r4, #0
	bl GFL_StrBufFree
	b _0219EEFA
_0219EE7C:
	add r0, r7, #0
	mov r1, #0x15
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EEA6
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x88
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0x80
	bl sub_02021CFC
_0219EEA6:
	add r0, r7, #0
	mov r1, #0x16
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EED0
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x88
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0x90
	bl sub_02021CFC
_0219EED0:
	add r0, r7, #0
	mov r1, #0x17
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0219EF18 ; =0x0000FFFF
	cmp r1, r0
	beq _0219EEFA
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	mov r1, #0x88
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r6, #0
	mov r2, #0xa0
	bl sub_02021CFC
_0219EEFA:
	ldr r4, [r5, #4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0219EF18: .word 0x0000FFFF
	thumb_func_end ovy144_219eb6c

	thumb_func_start ovy144_219ef1c
ovy144_219ef1c: ; 0x0219EF1C
	push {r4, lr}
	ldr r4, [r0, #4]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219ef1c

	thumb_func_start ovy144_219ef34
ovy144_219ef34: ; 0x0219EF34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	str r4, [r5, #8]
	str r6, [r5, #0xc]
	add r4, sp, #0x20
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_020480C0
	str r0, [r5]
	ldrh r1, [r4, #0x10]
	mov r0, #0xff
	bl GFL_StrBufCreate
	str r0, [r5, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219ef34

	thumb_func_start ovy144_219ef78
ovy144_219ef78: ; 0x0219EF78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_StrBufFree
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy144_219ef78

	thumb_func_start ovy144_219ef94
ovy144_219ef94: ; 0x0219EF94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #4]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #8]
	lsl r2, r6, #0x10
	str r1, [sp]
	lsl r1, r4, #0x10
	ldr r3, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219ef94

	thumb_func_start ovy144_219efe8
ovy144_219efe8: ; 0x0219EFE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02048580
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #8]
	lsl r2, r6, #0x10
	str r1, [sp]
	lsl r1, r4, #0x10
	ldr r3, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy144_219efe8

	thumb_func_start ovy144_219f038
ovy144_219f038: ; 0x0219F038
	push {r4, lr}
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219f038

	thumb_func_start ovy144_219f050
ovy144_219f050: ; 0x0219F050
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x34]
	add r2, r6, #0
	str r0, [r5]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, sp, #0x30
	ldrh r0, [r0, #8]
	add r3, r7, #0
	str r0, [sp, #0x10]
	add r0, r5, #4
	bl ovy144_219ef34
	mov r1, #0x80
	add r0, sp, #0x14
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x14
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C468
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C438
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204C488
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x14]
	bl sub_0204C550
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219f050

	thumb_func_start ovy144_219f0d4
ovy144_219f0d4: ; 0x0219F0D4
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ovy144_219ef78
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219f0d4

	thumb_func_start ovy144_219f0ec
ovy144_219f0ec: ; 0x0219F0EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0219F118
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r5, #0x20]
	bl sub_0204C488
	ldr r0, [r5, #0x14]
	bl sub_0204C540
	ldr r0, [r5, #0x14]
	mov r1, #1
	mov r4, #1
	bl sub_0204C124
	add r0, r5, #4
	bl ovy144_219f038
	str r4, [r5, #0x1c]
_0219F118:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219F19C
	ldr r0, [r5, #0x14]
	bl sub_0204C560
	cmp r0, #0
	bne _0219F19C
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r7, #0
	bl ovy144_219e094
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	bl sub_02018BFC
	cmp r0, #0
	beq _0219F180
	ldr r0, [r5]
	bl sub_02017934
	bl sub_02010044
	bl sub_0201006C
	add r6, r0, #0
	mov r0, #0x80
	mov r1, #0x44
	bl GFL_StrBufCreate
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02038F00
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02048614
	add r0, r5, #4
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #2
	bl ovy144_219efe8
	add r0, r4, #0
	bl GFL_StrBufFree
	b _0219F192
_0219F180:
	add r0, r4, #0
	bl sub_02018C80
	add r1, r0, #0
	add r0, r5, #4
	mov r2, #0x10
	mov r3, #2
	bl ovy144_219ef94
_0219F192:
	ldr r0, [r5, #0x14]
	bl sub_0204C550
	mov r0, #0
	str r0, [r5, #0x1c]
_0219F19C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219f0ec

	thumb_func_start sub_0219F1A0
sub_0219F1A0: ; 0x0219F1A0
	mov r2, #1
	str r2, [r0, #0x20]
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219F1A0

	thumb_func_start ovy144_219f1a8
ovy144_219f1a8: ; 0x0219F1A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	add r5, r1, #0
	bl sub_0204C124
	cmp r5, #0
	bne _0219F1C4
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	add r0, r4, #4
	bl ovy144_219f038
_0219F1C4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy144_219f1a8

	thumb_func_start sub_0219F1C8
sub_0219F1C8: ; 0x0219F1C8
	ldr r3, _0219F1D0 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x30
	bx r3
	.align 2, 0
_0219F1D0: .word MI_CpuFill8
	thumb_func_end sub_0219F1C8

	thumb_func_start sub_0219F1D4
sub_0219F1D4: ; 0x0219F1D4
	ldr r3, _0219F1DC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x30
	bx r3
	.align 2, 0
_0219F1DC: .word MI_CpuFill8
	thumb_func_end sub_0219F1D4

	thumb_func_start ovy144_219f1e0
ovy144_219f1e0: ; 0x0219F1E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0
	add r6, sp, #4
	add r5, r0, #0
	mov r4, #0
	add r0, r6, #0
	add r1, r7, #0
	str r4, [r5, #0x1c]
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219F220
	ldr r0, [sp]
	cmp r0, #0xa8
	bhi _0219F29A
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r5]
	ldr r0, [sp]
	lsl r0, r0, #0xc
	str r4, [r5, #8]
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [sp]
	add sp, #8
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219F220:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _0219F29A
	ldr r0, [sp]
	cmp r0, #0xa8
	bhi _0219F27E
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0219F248
	add r3, r5, #0
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	str r4, [r5, #0x20]
_0219F248:
	ldr r0, [sp, #4]
	add r2, r5, #0
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [sp]
	add r1, r5, #0
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r0, #0xc
	add r2, #0x24
	bl VEC_Subtract
	add r0, r5, #0
	add r0, #0x24
	blx VEC_Mag
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _0219F29A
	mov r0, #1
	add sp, #8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0219F27E:
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r5]
	ldr r0, [sp]
	lsl r0, r0, #0xc
	str r4, [r5, #8]
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [sp]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
_0219F29A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219f1e0

	thumb_func_start ovy144_219f2a0
ovy144_219f2a0: ; 0x0219F2A0
	push {r4, r5}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	cmp r0, #0
	beq _0219F2CA
	cmp r4, #0
	beq _0219F2BC
	add r3, r5, #0
	add r3, #0x24
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r3]
	str r0, [r4]
_0219F2BC:
	cmp r2, #0
	beq _0219F2C4
	ldr r0, [r5, #0x18]
	str r0, [r2]
_0219F2C4:
	mov r0, #1
	pop {r4, r5}
	bx lr
_0219F2CA:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy144_219f2a0

	thumb_func_start sub_0219F2D0
sub_0219F2D0: ; 0x0219F2D0
	mov r1, #1
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F2D0
_0219F2D8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy144_219f2dc
ovy144_219f2dc: ; 0x0219F2DC
	push {r3, r4, r5, lr}
	mov r1, #0xec
	str r1, [sp]
	ldr r3, _0219F320 ; =0x0219F94C
	mov r1, #0x2c
	mov r2, #0
	add r4, r0, #0
	bl sub_0203A1FC
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x2c
	blx MI_CpuFill8
	bl ovy144_219f3b0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy144_219f414
	ldr r1, _0219F324 ; =0x0219F7D0
	add r0, r5, #4
	add r2, r4, #0
	bl ovy144_219f5ac
	ldr r0, _0219F328 ; =ovy144_219f400
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x28]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0219F320: .word 0x0219F94C
_0219F324: .word 0x0219F7D0
_0219F328: .word ovy144_219f400
	thumb_func_end ovy144_219f2dc

	thumb_func_start ovy144_219f32c
ovy144_219f32c: ; 0x0219F32C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy144_219f6a8
	add r0, r4, #0
	bl ovy144_219f55c
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219f32c

	thumb_func_start sub_0219F34C
sub_0219F34C: ; 0x0219F34C
	ldr r3, _0219F354 ; =sub_0219F6F0
	add r0, r0, #4
	bx r3
	nop
_0219F354: .word sub_0219F6F0
	thumb_func_end sub_0219F34C

	thumb_func_start sub_0219F358
sub_0219F358: ; 0x0219F358
	mov r0, #0x28
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0219F368 ; =0x0219F81C
	ldr r0, [r0, r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
_0219F368: .word 0x0219F81C
	thumb_func_end sub_0219F358

	thumb_func_start sub_0219F36C
sub_0219F36C: ; 0x0219F36C
	ldr r3, _0219F374 ; =sub_0219F708
	add r0, r0, #4
	bx r3
	nop
_0219F374: .word sub_0219F708
	thumb_func_end sub_0219F36C

	thumb_func_start sub_0219F378
sub_0219F378: ; 0x0219F378
	ldr r3, _0219F380 ; =sub_0219F700
	add r0, r0, #4
	bx r3
	nop
_0219F380: .word sub_0219F700
	thumb_func_end sub_0219F378

	thumb_func_start ovy144_219f384
ovy144_219f384: ; 0x0219F384
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r5, #4
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219F710
	str r0, [r4]
	add r0, r5, #4
	mov r1, #1
	bl sub_0219F710
	str r0, [r6]
	add r0, r5, #4
	mov r1, #2
	bl sub_0219F710
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy144_219f384

	thumb_func_start ovy144_219f3b0
ovy144_219f3b0: ; 0x0219F3B0
	push {r3, lr}
	ldr r3, _0219F3F0 ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0219F3F4 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3]
	ldr r0, _0219F3F8 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3]
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _0219F3FC ; =0x0219F7D0
	bl sub_02046C40
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_020232D0
	pop {r3, pc}
	nop
_0219F3F0: .word 0x04000050
_0219F3F4: .word 0x04001050
_0219F3F8: .word 0xFFFF1FFF
_0219F3FC: .word 0x0219F7D0
	thumb_func_end ovy144_219f3b0

	thumb_func_start ovy144_219f400
ovy144_219f400: ; 0x0219F400
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #4
	bl sub_0219F6F8
	add r0, r4, #0
	bl sub_0219F5A4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy144_219f400

	thumb_func_start ovy144_219f414
ovy144_219f414: ; 0x0219F414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _0219F554 ; =0x0219F7C0
	bl sub_02044710
	ldr r7, _0219F558 ; =0x0219F81C
_0219F438:
	mov r0, #0x28
	mul r0, r4
	add r2, r7, r0
	ldr r6, [r7, r0]
	add r1, r2, #4
	ldr r2, [r2, #0x24]
	lsl r0, r6, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	blt _0219F438
	mov r0, #0x54
	add r1, r5, #0
	bl sub_0204AA30
	mov r7, #2
	lsl r7, r7, #0xc
	mov r3, #6
	str r7, [sp]
	mov r1, #0
	mov r2, #2
	lsl r3, r3, #0xc
	add r4, r0, #0
	str r5, [sp, #4]
	mov r6, #0
	bl sub_0204B0D4
	mov r3, #2
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	lsl r3, r3, #0xd
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #2
	lsl r7, r0, #0xf
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #2
	lsl r7, r0, #0xa
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #5
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	mov r7, #0x20
	mov r3, #7
	str r7, [sp]
	lsl r6, r3, #6
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B0B8
	str r7, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r5, [sp, #4]
	bl sub_0204B0B8
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219F554: .word 0x0219F7C0
_0219F558: .word 0x0219F81C
	thumb_func_end ovy144_219f414

	thumb_func_start ovy144_219f55c
ovy144_219f55c: ; 0x0219F55C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #1
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl sub_02045264
	ldr r6, _0219F5A0 ; =0x0219F81C
	mov r7, #0x28
_0219F570:
	add r0, r4, #0
	mul r0, r7
	ldr r5, [r6, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #7
	blt _0219F570
	bl sub_020480A8
	bl sub_02044528
	ldr r0, [sp]
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F5A0: .word 0x0219F81C
	thumb_func_end ovy144_219f55c

	thumb_func_start sub_0219F5A4
sub_0219F5A4: ; 0x0219F5A4
	ldr r3, _0219F5A8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219F5A8: .word sub_02045A5C
	thumb_func_end sub_0219F5A4

	thumb_func_start ovy144_219f5ac
ovy144_219f5ac: ; 0x0219F5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0xc]
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x24
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r3, _0219F6A4 ; =0x0219F800
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	str r0, [r2]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r6, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x54
	add r1, r6, #0
	bl sub_0204AA30
	str r6, [sp]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	add r7, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #0x20]
	str r6, [sp]
	add r0, r7, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x18]
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0x13
	add r3, r6, #0
	bl sub_0204BDE0
	str r0, [r5, #0x1c]
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r7, #1
_0219F648:
	add r0, sp, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0x1c]
	bl sub_0204C040
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #4]
	cmp r4, #4
	blt _0219F648
	ldr r0, [r5, #4]
	mov r1, #0
	mov r4, #0
	bl sub_0204C488
	ldr r0, [r5, #8]
	mov r1, #4
	bl sub_0204C488
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_0204C488
	ldr r0, [r5, #0x10]
	mov r1, #6
	bl sub_0204C488
	add r6, r4, #0
_0219F68C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #4
	blt _0219F68C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0219F6A4: .word 0x0219F800
	thumb_func_end ovy144_219f5ac

	thumb_func_start ovy144_219f6a8
ovy144_219f6a8: ; 0x0219F6A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219F6AE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219F6BC
	bl sub_0204C108
_0219F6BC:
	add r4, r4, #1
	cmp r4, #4
	blt _0219F6AE
	ldr r0, [r5, #0x1c]
	bl sub_0204BE64
	ldr r0, [r5, #0x18]
	bl sub_0204B98C
	ldr r0, [r5, #0x20]
	bl sub_0204BCD0
	ldr r0, [r5]
	cmp r0, #0
	beq _0219F6DE
	bl sub_0204BF98
_0219F6DE:
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy144_219f6a8

	thumb_func_start sub_0219F6F0
sub_0219F6F0: ; 0x0219F6F0
	ldr r3, _0219F6F4 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219F6F4: .word sub_0204B794
	thumb_func_end sub_0219F6F0

	thumb_func_start sub_0219F6F8
sub_0219F6F8: ; 0x0219F6F8
	ldr r3, _0219F6FC ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219F6FC: .word sub_0204B7C8
	thumb_func_end sub_0219F6F8

	thumb_func_start sub_0219F700
sub_0219F700: ; 0x0219F700
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219F700

	thumb_func_start sub_0219F708
sub_0219F708: ; 0x0219F708
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F708

	thumb_func_start sub_0219F710
sub_0219F710: ; 0x0219F710
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219F710

	thumb_func_start ovy144_219f718
ovy144_219f718: ; 0x0219F718
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x55
	mov r1, #0
	mov r2, #0
	bl sub_0204B4E4
	pop {r3, pc}
	thumb_func_end ovy144_219f718

	thumb_func_start sub_0219F728
sub_0219F728: ; 0x0219F728
	ldr r3, _0219F72C ; =sub_0203A24C
	bx r3
	.align 2, 0
_0219F72C: .word sub_0203A24C
	thumb_func_end sub_0219F728

	thumb_func_start sub_0219F730
sub_0219F730: ; 0x0219F730
	mov r3, #0x36
	mul r3, r1
	lsl r1, r2, #1
	add r0, r0, r3
	ldrh r0, [r1, r0]
	bx lr
	thumb_func_end sub_0219F730

	thumb_func_start ovy144_219f73c
ovy144_219f73c: ; 0x0219F73C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r4, #0
_0219F746:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0219F730
	cmp r5, r0
	bne _0219F75C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219F75C:
	add r4, r4, #1
	cmp r4, #0x55
	blt _0219F746
	ldr r0, _0219F768 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F768: .word 0x0000FFFF
	thumb_func_end ovy144_219f73c
_0219F76C:
	.byte 0x80, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0xE5, 0xD1, 0x19, 0x02, 0x41, 0xD1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x04, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x6F, 0x77, 0x6E, 0x6D, 0x61, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x74, 0x6F, 0x77, 0x6E
	.byte 0x6D, 0x61, 0x70, 0x5F, 0x67, 0x72, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219F76C
