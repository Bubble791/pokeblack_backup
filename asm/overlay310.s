    .include "macros/function.inc"
	.include "overlay310.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy310_219ce80
ovy310_219ce80: ; 0x0219CE80
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r3, #0
	cmp r1, #0
	beq _0219CE92
	cmp r1, #1
	beq _0219CEA2
	b _0219CED8
_0219CE92:
	mov r1, #0x20
	mov r2, #1
	bl GFL_ProcInitSubsystem
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219CED8
_0219CEA2:
	ldr r1, [r2]
	add r0, r4, #0
	bl sub_0219D13C
	ldr r0, _0219CEDC ; =0x021A68B8
	bl GFL_BGSysSetVRAMBanks
	mov r0, #0
	bl sub_02046DF8
	ldrh r0, [r4]
	bl ovy310_219d198
	ldrh r0, [r4]
	bl ovy310_219d314
	ldrh r0, [r4]
	bl ovy310_219d210
	add r0, r4, #0
	bl ovy310_219d154
	add r0, r4, #0
	bl ovy310_219d174
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219CED8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CEDC: .word 0x021A68B8
	thumb_func_end ovy310_219ce80

	thumb_func_start ovy310_219cee0
ovy310_219cee0: ; 0x0219CEE0
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy310_219d188
	add r0, r4, #0
	bl ovy310_219d164
	bl ovy310_219d1fc
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219cee0

	thumb_func_start ovy310_219cf00
ovy310_219cf00: ; 0x0219CF00
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r0, r4, #0
	add r5, r1, #0
	bl ovy310_219cf80
	ldr r0, [r4, #4]
	bl sub_02016BEC
	cmp r0, #0
	beq _0219CF1C
	ldr r0, [r4, #0xc]
	bl sub_021A4414
_0219CF1C:
	ldr r0, [r5]
	cmp r0, #4
	bhi _0219CF5E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CF2E: ; jump table
	.short _0219CF38 - _0219CF2E - 2 ; case 0
	.short _0219CF42 - _0219CF2E - 2 ; case 1
	.short _0219CF4A - _0219CF2E - 2 ; case 2
	.short _0219CF52 - _0219CF2E - 2 ; case 3
	.short _0219CF5A - _0219CF2E - 2 ; case 4
_0219CF38:
	add r0, r4, #0
	bl sub_0219D098
_0219CF3E:
	add r6, r0, #0
	b _0219CF5E
_0219CF42:
	add r0, r4, #0
	bl ovy310_219d09c
	b _0219CF3E
_0219CF4A:
	add r0, r4, #0
	bl ovy310_219d0d8
	b _0219CF3E
_0219CF52:
	add r0, r4, #0
	bl ovy310_219d104
	b _0219CF3E
_0219CF5A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219CF5E:
	add r0, r4, #0
	bl ovy310_219d2dc
	add r0, r4, #0
	bl sub_0219D134
	ldr r0, [r5]
	cmp r0, r6
	beq _0219CF7A
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy310_219cfa8
_0219CF7A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_219cf00

	thumb_func_start ovy310_219cf80
ovy310_219cf80: ; 0x0219CF80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02016AD8
	bl sub_02017238
	bl sub_02012BE4
	ldr r0, [r4, #4]
	bl sub_02016BB4
	cmp r0, #0
	beq _0219CFA4
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
_0219CFA4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219cf80

	thumb_func_start ovy310_219cfa8
ovy310_219cfa8: ; 0x0219CFA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy310_219cfec
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy310_219d054
	ldr r0, [r4]
	cmp r0, #1
	beq _0219CFCE
	cmp r0, #2
	beq _0219CFD8
	cmp r0, #3
	beq _0219CFE2
	pop {r4, r5, r6, pc}
_0219CFCE:
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_021A43D4
	pop {r4, r5, r6, pc}
_0219CFD8:
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_021A43D4
	pop {r4, r5, r6, pc}
_0219CFE2:
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_021A43D4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_219cfa8

	thumb_func_start ovy310_219cfec
ovy310_219cfec: ; 0x0219CFEC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bhi _0219D024
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D004: ; jump table
	.short _0219D024 - _0219D004 - 2 ; case 0
	.short _0219D00E - _0219D004 - 2 ; case 1
	.short _0219D016 - _0219D004 - 2 ; case 2
	.short _0219D01E - _0219D004 - 2 ; case 3
	.short _0219D024 - _0219D004 - 2 ; case 4
_0219D00E:
	ldr r0, [r4, #0x10]
	bl ovy310_219d3e8
	b _0219D024
_0219D016:
	ldr r0, [r4, #0x14]
	bl ovy310_219e4a4
	b _0219D024
_0219D01E:
	ldr r0, [r4, #0x18]
	bl ovy310_21a0f88
_0219D024:
	ldr r0, [r5]
	cmp r0, #4
	bhi _0219D050
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D036: ; jump table
	.short _0219D050 - _0219D036 - 2 ; case 0
	.short _0219D040 - _0219D036 - 2 ; case 1
	.short _0219D046 - _0219D036 - 2 ; case 2
	.short _0219D04C - _0219D036 - 2 ; case 3
	.short _0219D050 - _0219D036 - 2 ; case 4
_0219D040:
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0219D046:
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_0219D04C:
	mov r0, #0
	str r0, [r4, #0x18]
_0219D050:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219cfec

	thumb_func_start ovy310_219d054
ovy310_219d054: ; 0x0219D054
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r0, #0
	add r6, r1, #0
	cmp r5, #4
	bhi _0219D094
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D06C: ; jump table
	.short _0219D094 - _0219D06C - 2 ; case 0
	.short _0219D076 - _0219D06C - 2 ; case 1
	.short _0219D080 - _0219D06C - 2 ; case 2
	.short _0219D08C - _0219D06C - 2 ; case 3
	.short _0219D094 - _0219D06C - 2 ; case 4
_0219D076:
	ldr r0, [r4, #0xc]
	bl ovy310_219d3c0
	str r0, [r4, #0x10]
	b _0219D094
_0219D080:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	bl ovy310_219e470
	str r0, [r4, #0x14]
	b _0219D094
_0219D08C:
	ldr r0, [r4, #0xc]
	bl ovy310_21a0f60
	str r0, [r4, #0x18]
_0219D094:
	str r5, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_219d054

	thumb_func_start sub_0219D098
sub_0219D098: ; 0x0219D098
	mov r0, #1
	bx lr
	thumb_func_end sub_0219D098

	thumb_func_start ovy310_219d09c
ovy310_219d09c: ; 0x0219D09C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy310_219d3f8
	ldr r0, [r4, #0x10]
	bl sub_0219D470
	cmp r0, #0
	beq _0219D0D4
	ldr r0, [r4, #0x10]
	bl sub_0219D480
	cmp r0, #0
	beq _0219D0C4
	cmp r0, #1
	beq _0219D0C8
	cmp r0, #2
	beq _0219D0CC
	b _0219D0D0
_0219D0C4:
	mov r0, #2
	pop {r4, pc}
_0219D0C8:
	mov r0, #3
	pop {r4, pc}
_0219D0CC:
	mov r0, #4
	pop {r4, pc}
_0219D0D0:
	mov r0, #4
	pop {r4, pc}
_0219D0D4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy310_219d09c

	thumb_func_start ovy310_219d0d8
ovy310_219d0d8: ; 0x0219D0D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ovy310_219e4b4
	ldr r0, [r4, #0x14]
	bl sub_0219E580
	cmp r0, #0
	beq _0219D0FE
	ldr r0, [r4, #0x14]
	bl sub_0219E588
	cmp r0, #0
	bne _0219D0FA
	mov r0, #1
	pop {r4, pc}
_0219D0FA:
	mov r0, #4
	pop {r4, pc}
_0219D0FE:
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219d0d8

	thumb_func_start ovy310_219d104
ovy310_219d104: ; 0x0219D104
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy310_21a0f98
	ldr r0, [r4, #0x18]
	bl sub_021A1074
	cmp r0, #0
	beq _0219D12A
	ldr r0, [r4, #0x18]
	bl sub_021A107C
	cmp r0, #0
	bne _0219D126
	mov r0, #1
	pop {r4, pc}
_0219D126:
	mov r0, #4
	pop {r4, pc}
_0219D12A:
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219d104

	thumb_func_start sub_0219D130
sub_0219D130: ; 0x0219D130
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219D130

	thumb_func_start sub_0219D134
sub_0219D134: ; 0x0219D134
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219D134

	thumb_func_start sub_0219D13C
sub_0219D13C: ; 0x0219D13C
	mov r2, #1
	str r1, [r0, #4]
	mov r1, #0
	strh r2, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D13C

	thumb_func_start ovy310_219d154
ovy310_219d154: ; 0x0219D154
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldr r1, [r4, #4]
	bl ovy310_21a4394
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy310_219d154

	thumb_func_start ovy310_219d164
ovy310_219d164: ; 0x0219D164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ovy310_21a43b4
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy310_219d164

	thumb_func_start ovy310_219d174
ovy310_219d174: ; 0x0219D174
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	bl ovy310_21a47dc
	str r0, [r4, #0x1c]
	bl sub_021A47FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219d174

	thumb_func_start ovy310_219d188
ovy310_219d188: ; 0x0219D188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_021A47F4
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ovy310_219d188

	thumb_func_start ovy310_219d198
ovy310_219d198: ; 0x0219D198
	push {r3, lr}
	bl GFL_BGSysCreate
	ldr r0, _0219D1EC ; =0x021A6848
	bl GFL_BGSysSetLCDConfig
	ldr r1, _0219D1F0 ; =0x021A6878
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D1F4 ; =0x021A6858
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	ldr r1, _0219D1F8 ; =0x021A6898
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r3, pc}
	.align 2, 0
_0219D1EC: .word 0x021A6848
_0219D1F0: .word 0x021A6878
_0219D1F4: .word 0x021A6858
_0219D1F8: .word 0x021A6898
	thumb_func_end ovy310_219d198

	thumb_func_start ovy310_219d1fc
ovy310_219d1fc: ; 0x0219D1FC
	push {r3, lr}
	mov r0, #1
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy310_219d1fc

	thumb_func_start ovy310_219d210
ovy310_219d210: ; 0x0219D210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xbd
	add r1, r5, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #9
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0204AB1C
	add r1, sp, #0x14
	add r6, r0, #0
	bl sub_020602D8
	ldr r1, [sp, #0x14]
	mov r2, #4
	ldr r1, [r1, #0xc]
	mov r0, #4
	lsl r2, r2, #7
	mov r3, #0
	bl sub_02045320
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0xa
	add r2, r5, #0
	bl sub_0204AB1C
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020602A8
	ldr r2, [sp, #0x10]
	mov r0, #4
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0xb
	add r2, r5, #0
	bl sub_0204AB1C
	add r1, sp, #0xc
	add r6, r0, #0
	bl sub_02060338
	mov r7, #0x20
	str r7, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r0, #4
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #4
	bl GFL_BGSysLoadScr
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r5, r0, #0
	bl sub_02060338
	str r7, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #5
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #5
	bl GFL_BGSysLoadScr
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219d210

	thumb_func_start ovy310_219d2dc
ovy310_219d2dc: ; 0x0219D2DC
	push {r3, lr}
	sub sp, #8
	bl sub_0219D130
	mov r1, #0xa
	blx sub_0208D868
	mov r1, #6
	blx sub_0208D868
	mov r0, #0x18
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy310_219d2dc

	thumb_func_start ovy310_219d314
ovy310_219d314: ; 0x0219D314
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, _0219D3BC ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0xbd
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0204AB1C
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020602D8
	ldr r1, [sp, #0x10]
	mov r2, #1
	ldr r1, [r1, #0xc]
	mov r0, #1
	lsl r2, r2, #9
	mov r3, #0
	bl sub_02045320
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_0204AB1C
	add r1, sp, #0xc
	add r6, r0, #0
	bl sub_020602A8
	ldr r2, [sp, #0xc]
	mov r0, #1
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r5, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #1
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #1
	bl GFL_BGSysLoadScr
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0219D3BC: .word 0x00007FFF
	thumb_func_end ovy310_219d314

	thumb_func_start ovy310_219d3c0
ovy310_219d3c0: ; 0x0219D3C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A43C4
	add r6, r0, #0
	bl ovy310_219ddd0
	add r4, r0, #0
	bl ovy310_219ddf4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0219DDC0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0219DDBC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_219d3c0

	thumb_func_start ovy310_219d3e8
ovy310_219d3e8: ; 0x0219D3E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219DF7C
	add r0, r4, #0
	bl sub_0219DDEC
	pop {r4, pc}
	thumb_func_end ovy310_219d3e8

	thumb_func_start ovy310_219d3f8
ovy310_219d3f8: ; 0x0219D3F8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #6
	bhi _0219D442
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219D40E: ; jump table
	.short _0219D41C - _0219D40E - 2 ; case 0
	.short _0219D422 - _0219D40E - 2 ; case 1
	.short _0219D428 - _0219D40E - 2 ; case 2
	.short _0219D42E - _0219D40E - 2 ; case 3
	.short _0219D434 - _0219D40E - 2 ; case 4
	.short _0219D43A - _0219D40E - 2 ; case 5
	.short _0219D440 - _0219D40E - 2 ; case 6
_0219D41C:
	bl ovy310_219d488
	b _0219D442
_0219D422:
	bl ovy310_219d544
	b _0219D442
_0219D428:
	bl ovy310_219d734
	b _0219D442
_0219D42E:
	bl ovy310_219d968
	b _0219D442
_0219D434:
	bl ovy310_219d984
	b _0219D442
_0219D43A:
	bl ovy310_219d9b4
	b _0219D442
_0219D440:
	pop {r4, pc}
_0219D442:
	add r0, r4, #0
	bl sub_0219D470
	cmp r0, #0
	bne _0219D462
	add r0, r4, #0
	bl ovy310_219dac4
	add r0, r4, #0
	bl ovy310_219dd0c
	ldr r0, [r4]
	bl sub_021A43E8
	bl sub_0204B794
_0219D462:
	add r0, r4, #0
	bl sub_0219DC64
	add r0, r4, #0
	bl ovy310_219da48
	pop {r4, pc}
	thumb_func_end ovy310_219d3f8

	thumb_func_start sub_0219D470
sub_0219D470: ; 0x0219D470
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D47C
	mov r0, #1
	bx lr
_0219D47C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219D470

	thumb_func_start sub_0219D480
sub_0219D480: ; 0x0219D480
	add r0, #0x8c
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D480

	thumb_func_start ovy310_219d488
ovy310_219d488: ; 0x0219D488
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy310_219df6c
	add r0, r5, #0
	bl ovy310_219deac
	add r0, r5, #0
	bl ovy310_219dee8
	add r0, r5, #0
	bl ovy310_219df2c
	add r0, r5, #0
	bl ovy310_219de50
	add r0, r5, #0
	bl ovy310_219df88
	add r0, r5, #0
	bl ovy310_219e058
	add r0, r5, #0
	bl ovy310_219e0a8
	add r0, r5, #0
	bl ovy310_219e0d0
	add r0, r5, #0
	bl ovy310_219e120
	add r0, r5, #0
	bl ovy310_219e15c
	add r0, r5, #0
	bl ovy310_219e200
	add r0, r5, #0
	bl ovy310_219e268
	add r0, r5, #0
	bl ovy310_219e2ec
	add r0, r5, #0
	bl ovy310_219e338
	add r0, r5, #0
	bl ovy310_219e3c8
	add r0, r5, #0
	bl ovy310_219e3fc
	add r0, r5, #0
	bl sub_0219E460
	add r0, r5, #0
	bl sub_0219E448
	add r0, r5, #0
	mov r1, #0
	bl ovy310_219dca4
	cmp r0, #0
	bne _0219D50E
	add r0, r5, #0
	bl ovy310_219dbec
_0219D50E:
	add r0, r5, #0
	bl ovy310_219da8c
	add r4, r0, #0
	add r0, r5, #0
	bl ovy310_219da8c
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0219DA34
	cmp r4, #2
	bne _0219D536
	ldr r0, [r5, #0x28]
	bl ovy310_219db74
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DCD8
_0219D536:
	bl ovy310_219dc44
	add r0, r5, #0
	bl sub_0219DA40
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219d488

	thumb_func_start ovy310_219d544
ovy310_219d544: ; 0x0219D544
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x2c
	bl sub_0203DA0C
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	add r7, r0, #0
	add r0, r5, #0
	bl ovy310_219ddc4
	cmp r0, #0
	bne _0219D572
	cmp r7, #0
	bne _0219D5B6
_0219D572:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DAB0
	add r0, r5, #0
	mov r1, #2
	bl sub_0219DABC
	add r0, r5, #0
	bl sub_0219DC0C
	ldr r0, _0219D728 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D5B6:
	mov r7, #2
	add r0, r4, #0
	tst r0, r7
	beq _0219D602
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DAB0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DABC
	add r0, r5, #0
	bl sub_0219DC0C
	ldr r0, _0219D728 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D602:
	mov r0, #0x40
	tst r0, r4
	bne _0219D620
	mov r0, #0x80
	tst r0, r4
	bne _0219D620
	mov r0, #0x20
	tst r0, r4
	bne _0219D620
	mov r0, #0x10
	tst r0, r4
	bne _0219D620
	mov r0, #1
	tst r0, r4
	beq _0219D63E
_0219D620:
	ldr r0, [r5, #0x28]
	bl ovy310_219db74
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DCD8
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #2
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D63E:
	cmp r6, #0
	bne _0219D6B4
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219D6AC
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DAB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DABC
	add r0, r5, #0
	add r1, r4, #0
	bl ovy310_219db44
	ldr r0, [r5, #0x28]
	bl ovy310_219db74
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DCFC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DCD8
	ldr r0, _0219D72C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D6AC:
	ldr r0, _0219D730 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219D6B4:
	cmp r6, #1
	bne _0219D726
	add r0, r5, #0
	mov r1, #1
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219D720
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DAB0
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DABC
	add r0, r5, #0
	mov r1, #1
	bl ovy310_219db44
	ldr r0, [r5, #0x28]
	bl ovy310_219db74
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DCFC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DCD8
	ldr r0, _0219D72C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D720:
	ldr r0, _0219D730 ; =0x00000557
	bl GFL_SndSEPlay
_0219D726:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D728: .word 0x00000551
_0219D72C: .word 0x0000054C
_0219D730: .word 0x00000557
	thumb_func_end ovy310_219d544

	thumb_func_start ovy310_219d734
ovy310_219d734: ; 0x0219D734
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x2c
	bl sub_0203DA0C
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	add r7, r0, #0
	add r0, r5, #0
	bl ovy310_219ddc4
	cmp r0, #0
	bne _0219D762
	cmp r7, #0
	bne _0219D7A6
_0219D762:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DAB0
	add r0, r5, #0
	mov r1, #2
	bl sub_0219DABC
	add r0, r5, #0
	bl sub_0219DC0C
	ldr r0, _0219D95C ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D7A6:
	mov r0, #0x40
	tst r0, r4
	beq _0219D7B2
	add r0, r5, #0
	bl ovy310_219dae8
_0219D7B2:
	mov r0, #0x80
	tst r0, r4
	beq _0219D7BE
	add r0, r5, #0
	bl ovy310_219db18
_0219D7BE:
	mov r7, #1
	add r0, r4, #0
	tst r0, r7
	beq _0219D838
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl sub_0219DAB0
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DCFC
	add r0, r5, #0
	mov r1, #2
	mov r6, #2
	bl sub_0219DCD8
	ldr r0, _0219D960 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0219D81A
	cmp r0, #1
	beq _0219D824
	b _0219D82E
_0219D81A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DABC
	pop {r3, r4, r5, r6, r7, pc}
_0219D824:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DABC
	pop {r3, r4, r5, r6, r7, pc}
_0219D82E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219DABC
	pop {r3, r4, r5, r6, r7, pc}
_0219D838:
	cmp r6, #0
	bne _0219D8A8
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219D8A0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DAB0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy310_219db44
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DCFC
	add r0, r5, #0
	mov r1, #2
	bl sub_0219DCD8
	ldr r0, _0219D960 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DABC
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D8A0:
	ldr r0, _0219D964 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219D8A8:
	cmp r6, #1
	bne _0219D916
	add r0, r5, #0
	add r1, r7, #0
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219D90E
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DAB0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy310_219db44
	add r0, r5, #0
	mov r1, #0
	bl sub_0219DCFC
	add r0, r5, #0
	mov r1, #2
	bl sub_0219DCD8
	ldr r0, _0219D960 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219DABC
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
	pop {r3, r4, r5, r6, r7, pc}
_0219D90E:
	ldr r0, _0219D964 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219D916:
	mov r6, #2
	add r0, r4, #0
	tst r0, r6
	beq _0219D958
	add r0, r5, #0
	bl sub_0219DC0C
	ldr r0, _0219D95C ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219DABC
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219DC70
	add r0, r5, #0
	bl sub_0219DA40
	add r0, r5, #0
	mov r1, #3
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #4
	bl sub_0219DA34
	add r0, r5, #0
	mov r1, #5
	bl sub_0219DA34
_0219D958:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D95C: .word 0x00000551
_0219D960: .word 0x0000054C
_0219D964: .word 0x00000557
	thumb_func_end ovy310_219d734

	thumb_func_start ovy310_219d968
ovy310_219d968: ; 0x0219D968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219DC74
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0219DC6C
	cmp r4, r0
	bhs _0219D982
	add r0, r5, #0
	bl sub_0219DA40
_0219D982:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219d968

	thumb_func_start ovy310_219d984
ovy310_219d984: ; 0x0219D984
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219DA80
	cmp r0, #0
	beq _0219D996
	cmp r0, #1
	beq _0219D9A2
	pop {r4, pc}
_0219D996:
	bl ovy310_219dc54
	add r0, r4, #0
	bl sub_0219DA84
	pop {r4, pc}
_0219D9A2:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D9B0
	add r0, r4, #0
	bl sub_0219DA40
_0219D9B0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219d984

	thumb_func_start ovy310_219d9b4
ovy310_219d9b4: ; 0x0219D9B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219E458
	ldr r0, [r4]
	bl sub_021A43F8
	ldr r0, [r4]
	bl sub_021A4404
	add r0, r4, #0
	bl ovy310_219e428
	add r0, r4, #0
	bl ovy310_219e3e4
	add r0, r4, #0
	bl sub_0219E3A8
	add r0, r4, #0
	bl ovy310_219e318
	add r0, r4, #0
	bl ovy310_219e250
	add r0, r4, #0
	bl ovy310_219e2c0
	add r0, r4, #0
	bl ovy310_219e1d0
	add r0, r4, #0
	bl sub_0219E138
	add r0, r4, #0
	bl sub_0219E11C
	add r0, r4, #0
	bl sub_0219E0C0
	add r0, r4, #0
	bl sub_0219E0A4
	add r0, r4, #0
	bl ovy310_219e038
	add r0, r4, #0
	bl ovy310_219df14
	add r0, r4, #0
	bl sub_0219DEC8
	add r0, r4, #0
	mov r1, #1
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	mov r1, #6
	bl sub_0219DA34
	add r0, r4, #0
	bl sub_0219DA40
	pop {r4, pc}
	thumb_func_end ovy310_219d9b4

	thumb_func_start sub_0219DA34
sub_0219DA34: ; 0x0219DA34
	ldr r0, [r0, #0x14]
	ldr r3, _0219DA3C ; =sub_021A4864
	bx r3
	nop
_0219DA3C: .word sub_021A4864
	thumb_func_end sub_0219DA34

	thumb_func_start sub_0219DA40
sub_0219DA40: ; 0x0219DA40
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	bx lr
	thumb_func_end sub_0219DA40

	thumb_func_start ovy310_219da48
ovy310_219da48: ; 0x0219DA48
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219DA6C
	ldr r0, [r4, #0x14]
	bl sub_021A487C
	cmp r0, #0
	bne _0219DA6C
	ldr r0, [r4, #0x14]
	bl sub_021A486C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0219DA70
_0219DA6C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219da48

	thumb_func_start sub_0219DA70
sub_0219DA70: ; 0x0219DA70
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	add r0, #0x80
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DA70

	thumb_func_start sub_0219DA80
sub_0219DA80: ; 0x0219DA80
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219DA80

	thumb_func_start sub_0219DA84
sub_0219DA84: ; 0x0219DA84
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219DA84

	thumb_func_start ovy310_219da8c
ovy310_219da8c: ; 0x0219DA8C
	push {r3, r4, r5, lr}
	ldr r5, [r0]
	add r0, r5, #0
	bl sub_021A43E0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A43E4
	cmp r4, #0
	beq _0219DAAA
	cmp r0, #0
	bne _0219DAAA
	mov r0, #2
	pop {r3, r4, r5, pc}
_0219DAAA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219da8c

	thumb_func_start sub_0219DAB0
sub_0219DAB0: ; 0x0219DAB0
	ldr r0, [r0]
	ldr r3, _0219DAB8 ; =sub_021A43DC
	bx r3
	nop
_0219DAB8: .word sub_021A43DC
	thumb_func_end sub_0219DAB0

	thumb_func_start sub_0219DABC
sub_0219DABC: ; 0x0219DABC
	add r0, #0x8c
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DABC

	thumb_func_start ovy310_219dac4
ovy310_219dac4: ; 0x0219DAC4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _0219DAE6
	bl sub_0202D080
	cmp r0, #1
	bne _0219DAE6
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0]
	add r0, r4, #0
	bl ovy310_219dc18
_0219DAE6:
	pop {r4, pc}
	thumb_func_end ovy310_219dac4

	thumb_func_start ovy310_219dae8
ovy310_219dae8: ; 0x0219DAE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ovy310_219dbac
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy310_219dc78
	ldr r0, [r4, #0x28]
	bl ovy310_219db74
	ldr r0, _0219DB14 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
	bl sub_0219DCD8
	pop {r4, pc}
	nop
_0219DB14: .word 0x00000548
	thumb_func_end ovy310_219dae8

	thumb_func_start ovy310_219db18
ovy310_219db18: ; 0x0219DB18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ovy310_219dbac
	add r0, r4, #0
	mov r1, #1
	bl ovy310_219dc78
	ldr r0, [r4, #0x28]
	bl ovy310_219db74
	ldr r0, _0219DB40 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
	bl sub_0219DCD8
	pop {r4, pc}
	.align 2, 0
_0219DB40: .word 0x00000548
	thumb_func_end ovy310_219db18

	thumb_func_start ovy310_219db44
ovy310_219db44: ; 0x0219DB44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	bl ovy310_219dbac
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DCA0
	ldr r0, [r5, #0x28]
	bl ovy310_219db74
	ldr r0, _0219DB70 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DCD8
	pop {r3, r4, r5, pc}
	nop
_0219DB70: .word 0x00000548
	thumb_func_end ovy310_219db44

	thumb_func_start ovy310_219db74
ovy310_219db74: ; 0x0219DB74
	push {r3, r4, r5, lr}
	sub sp, #8
	cmp r0, #0
	beq _0219DB84
	cmp r0, #1
	beq _0219DB8C
	add sp, #8
	pop {r3, r4, r5, pc}
_0219DB84:
	mov r4, #2
	mov r1, #3
	mov r2, #5
	b _0219DB92
_0219DB8C:
	mov r4, #2
	mov r1, #3
	mov r2, #0xc
_0219DB92:
	mov r3, #0x1a
	mov r0, #5
	mov r5, #0xa
	str r0, [sp]
	add r0, r4, #0
	str r5, [sp, #4]
	bl sub_0204566C
	add r0, r4, #0
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219db74

	thumb_func_start ovy310_219dbac
ovy310_219dbac: ; 0x0219DBAC
	push {r3, r4, r5, lr}
	sub sp, #8
	cmp r0, #0
	beq _0219DBBC
	cmp r0, #1
	beq _0219DBCA
	add sp, #8
	pop {r3, r4, r5, pc}
_0219DBBC:
	mov r4, #2
	mov r1, #3
	mov r2, #5
	mov r3, #0x1a
	mov r0, #5
	mov r5, #5
	b _0219DBD6
_0219DBCA:
	mov r4, #2
	mov r1, #3
	mov r2, #0xc
	mov r3, #0x1a
	mov r0, #5
	mov r5, #6
_0219DBD6:
	str r0, [sp]
	add r0, r4, #0
	str r5, [sp, #4]
	bl sub_0204566C
	add r0, r4, #0
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219dbac

	thumb_func_start ovy310_219dbec
ovy310_219dbec: ; 0x0219DBEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0xf
	bl ovy310_21a4a50
	add r0, r4, #0
	mov r1, #3
	bl sub_0219DCD8
	add r0, r4, #0
	mov r1, #4
	bl sub_0219DCD8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219dbec

	thumb_func_start sub_0219DC0C
sub_0219DC0C: ; 0x0219DC0C
	ldr r0, [r0]
	ldr r3, _0219DC14 ; =sub_021A43F0
	mov r1, #0
	bx r3
	.align 2, 0
_0219DC14: .word sub_021A43F0
	thumb_func_end sub_0219DC0C

	thumb_func_start ovy310_219dc18
ovy310_219dc18: ; 0x0219DC18
	push {r3, r4, r5, lr}
	mov r1, #0
	bl sub_0219DCD0
	add r5, r0, #0
	mov r1, #1
	mov r4, #1
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r5, #0
	lsl r1, r4, #0xc
	bl sub_0204C53C
	add r0, r5, #0
	mov r1, #0
	bl sub_0204C4D4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219dc18

	thumb_func_start ovy310_219dc44
ovy310_219dc44: ; 0x0219DC44
	push {r3, lr}
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_219dc44

	thumb_func_start ovy310_219dc54
ovy310_219dc54: ; 0x0219DC54
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_219dc54

	thumb_func_start sub_0219DC64
sub_0219DC64: ; 0x0219DC64
	ldr r1, [r0, #0x20]
	add r1, r1, #1
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219DC64

	thumb_func_start sub_0219DC6C
sub_0219DC6C: ; 0x0219DC6C
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219DC6C

	thumb_func_start sub_0219DC70
sub_0219DC70: ; 0x0219DC70
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_0219DC70

	thumb_func_start sub_0219DC74
sub_0219DC74: ; 0x0219DC74
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0219DC74

	thumb_func_start ovy310_219dc78
ovy310_219dc78: ; 0x0219DC78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x28]
	add r6, r1, #0
	mov r7, #0x1f
_0219DC82:
	add r0, r4, r6
	add r0, r0, #2
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r4, r1, r0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219DC82
	str r4, [r5, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219dc78

	thumb_func_start sub_0219DCA0
sub_0219DCA0: ; 0x0219DCA0
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0219DCA0

	thumb_func_start ovy310_219dca4
ovy310_219dca4: ; 0x0219DCA4
	push {r3, lr}
	cmp r1, #0
	bne _0219DCBA
	bl ovy310_219dd24
	cmp r0, #1
	bls _0219DCB6
	mov r0, #1
	pop {r3, pc}
_0219DCB6:
	mov r0, #0
	pop {r3, pc}
_0219DCBA:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219dca4

	thumb_func_start sub_0219DCC0
sub_0219DCC0: ; 0x0219DCC0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_0219DCC0

	thumb_func_start sub_0219DCC8
sub_0219DCC8: ; 0x0219DCC8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x74]
	bx lr
	thumb_func_end sub_0219DCC8

	thumb_func_start sub_0219DCD0
sub_0219DCD0: ; 0x0219DCD0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x7c]
	bx lr
	thumb_func_end sub_0219DCD0

	thumb_func_start sub_0219DCD8
sub_0219DCD8: ; 0x0219DCD8
	add r3, r1, #0
	mov r2, #0x14
	mul r3, r2
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, _0219DCF0 ; =0x021A6A20
	ldr r1, _0219DCF4 ; =0x021A6A1C
	ldrh r2, [r2, r3]
	ldr r1, [r1, r3]
	ldr r0, [r0, #0x38]
	ldr r3, _0219DCF8 ; =sub_021A6410
	bx r3
	.align 2, 0
_0219DCF0: .word 0x021A6A20
_0219DCF4: .word 0x021A6A1C
_0219DCF8: .word sub_021A6410
	thumb_func_end sub_0219DCD8

	thumb_func_start sub_0219DCFC
sub_0219DCFC: ; 0x0219DCFC
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x38]
	ldr r3, _0219DD08 ; =sub_021A6418
	bx r3
	nop
_0219DD08: .word sub_021A6418
	thumb_func_end sub_0219DCFC

	thumb_func_start ovy310_219dd0c
ovy310_219dd0c: ; 0x0219DD0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219DD12:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_021A6408
	add r4, r4, #1
	cmp r4, #5
	blt _0219DD12
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219dd0c

	thumb_func_start ovy310_219dd24
ovy310_219dd24: ; 0x0219DD24
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	bl sub_021A43CC
	bl sub_02017394
	mov r1, #0xbf
	add r4, r0, #0
	mov r5, #1
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD40
	add r5, r5, #1
_0219DD40:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD4E
	add r5, r5, #1
_0219DD4E:
	add r0, r4, #0
	mov r1, #0xc1
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD5C
	add r5, r5, #1
_0219DD5C:
	add r0, r4, #0
	mov r1, #0xc2
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD6A
	add r5, r5, #1
_0219DD6A:
	add r0, r4, #0
	mov r1, #0xc3
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD78
	add r5, r5, #1
_0219DD78:
	add r0, r4, #0
	mov r1, #0xc4
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD86
	add r5, r5, #1
_0219DD86:
	add r0, r4, #0
	mov r1, #0xc5
	bl sub_020191AC
	cmp r0, #1
	bne _0219DD94
	add r5, r5, #1
_0219DD94:
	add r0, r4, #0
	mov r1, #0xc6
	bl sub_020191AC
	cmp r0, #1
	bne _0219DDA2
	add r5, r5, #1
_0219DDA2:
	add r0, r4, #0
	mov r1, #0xc7
	bl sub_020191AC
	cmp r0, #1
	bne _0219DDB0
	add r5, r5, #1
_0219DDB0:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219dd24

	thumb_func_start sub_0219DDB8
sub_0219DDB8: ; 0x0219DDB8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219DDB8

	thumb_func_start sub_0219DDBC
sub_0219DDBC: ; 0x0219DDBC
	str r1, [r0]
	bx lr
	thumb_func_end sub_0219DDBC

	thumb_func_start sub_0219DDC0
sub_0219DDC0: ; 0x0219DDC0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219DDC0

	thumb_func_start ovy310_219ddc4
ovy310_219ddc4: ; 0x0219DDC4
	push {r3, lr}
	bl sub_0219DDB8
	bl sub_021A4410
	pop {r3, pc}
	thumb_func_end ovy310_219ddc4

	thumb_func_start ovy310_219ddd0
ovy310_219ddd0: ; 0x0219DDD0
	push {r3, lr}
	ldr r1, _0219DDE4 ; =0x000005CE
	ldr r3, _0219DDE8 ; =0x021A77EC
	str r1, [sp]
	mov r1, #0x90
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_0219DDE4: .word 0x000005CE
_0219DDE8: .word 0x021A77EC
	thumb_func_end ovy310_219ddd0

	thumb_func_start sub_0219DDEC
sub_0219DDEC: ; 0x0219DDEC
	ldr r3, _0219DDF0 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_0219DDF0: .word GFL_HeapFree
	thumb_func_end sub_0219DDEC

	thumb_func_start ovy310_219ddf4
ovy310_219ddf4: ; 0x0219DDF4
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0
	add r2, #0x80
	str r1, [r2]
	add r2, r4, #0
	add r2, #0x84
	str r1, [r2]
	add r2, r4, #0
	add r2, #0x88
	str r1, [r2]
	add r2, r4, #0
	mov r3, #2
	add r2, #0x8c
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r3, [r2]
	str r1, [r4, #0x1c]
	bl sub_0219E1EC
	add r0, r4, #0
	bl sub_0219DF64
	add r0, r4, #0
	bl sub_0219DED4
	add r0, r4, #0
	bl sub_0219DEA4
	add r0, r4, #0
	bl sub_0219E148
	add r0, r4, #0
	bl sub_0219E2D8
	add r0, r4, #0
	bl sub_0219E330
	add r0, r4, #0
	bl sub_0219E3B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219ddf4

	thumb_func_start ovy310_219de50
ovy310_219de50: ; 0x0219DE50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5]
	add r0, r6, #0
	bl sub_021A43E0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021A43E4
	cmp r4, #0
	beq _0219DE82
	cmp r0, #0
	bne _0219DE82
	cmp r4, #2
	beq _0219DE74
	cmp r4, #3
	beq _0219DE78
_0219DE74:
	mov r1, #0
	b _0219DE7A
_0219DE78:
	mov r1, #1
_0219DE7A:
	add r0, r5, #0
	bl sub_0219DCA0
	pop {r4, r5, r6, pc}
_0219DE82:
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy310_219dca4
	cmp r0, #0
	beq _0219DE9A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DCA0
	pop {r4, r5, r6, pc}
_0219DE9A:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219DCA0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_219de50

	thumb_func_start sub_0219DEA4
sub_0219DEA4: ; 0x0219DEA4
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DEA4

	thumb_func_start ovy310_219deac
ovy310_219deac: ; 0x0219DEAC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #8]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy310_219deac

	thumb_func_start sub_0219DEC8
sub_0219DEC8: ; 0x0219DEC8
	ldr r0, [r0, #8]
	ldr r3, _0219DED0 ; =sub_02022DA8
	bx r3
	nop
_0219DED0: .word sub_02022DA8
	thumb_func_end sub_0219DEC8

	thumb_func_start sub_0219DED4
sub_0219DED4: ; 0x0219DED4
	mov r3, #0
	add r2, r3, #0
_0219DED8:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0xc]
	cmp r3, #2
	blt _0219DED8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DED4

	thumb_func_start ovy310_219dee8
ovy310_219dee8: ; 0x0219DEE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219DF10 ; =0x021A68F0
	add r5, r0, #0
	mov r4, #0
_0219DEF0:
	lsl r6, r4, #2
	ldr r2, [r7, r6]
	ldrh r3, [r5, #4]
	lsl r2, r2, #0x10
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	add r1, r5, r6
	add r4, r4, #1
	str r0, [r1, #0xc]
	cmp r4, #2
	blt _0219DEF0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DF10: .word 0x021A68F0
	thumb_func_end ovy310_219dee8

	thumb_func_start ovy310_219df14
ovy310_219df14: ; 0x0219DF14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219DF1A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl GFL_MsgDataFree
	add r4, r4, #1
	cmp r4, #2
	blt _0219DF1A
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219df14

	thumb_func_start ovy310_219df2c
ovy310_219df2c: ; 0x0219DF2C
	push {r3, r4, r5, r6}
	ldr r1, _0219DF60 ; =0x021A68F8
	mov r4, #0
_0219DF32:
	lsl r3, r4, #2
	ldrb r6, [r1, r3]
	add r5, r0, r3
	add r5, #0x2e
	strb r6, [r5]
	add r2, r1, r3
	add r5, r0, r3
	ldrb r6, [r2, #1]
	add r5, #0x2f
	add r4, r4, #1
	strb r6, [r5]
	add r5, r0, r3
	ldrb r6, [r2, #2]
	add r5, #0x2c
	strb r6, [r5]
	ldrb r5, [r2, #3]
	add r2, r0, r3
	add r2, #0x2d
	strb r5, [r2]
	cmp r4, #3
	blt _0219DF32
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_0219DF60: .word 0x021A68F8
	thumb_func_end ovy310_219df2c

	thumb_func_start sub_0219DF64
sub_0219DF64: ; 0x0219DF64
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DF64

	thumb_func_start ovy310_219df6c
ovy310_219df6c: ; 0x0219DF6C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xa
	bl ovy310_21a4820
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ovy310_219df6c

	thumb_func_start sub_0219DF7C
sub_0219DF7C: ; 0x0219DF7C
	ldr r0, [r0, #0x14]
	ldr r3, _0219DF84 ; =ovy310_21a4854
	bx r3
	nop
_0219DF84: .word ovy310_21a4854
	thumb_func_end sub_0219DF7C

	thumb_func_start ovy310_219df88
ovy310_219df88: ; 0x0219DF88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219E01C ; =0x021A6904
	bl GFL_BGSysSetLCDConfig
	ldr r1, _0219E020 ; =0x021A6990
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219E024 ; =0x021A6930
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219E028 ; =0x021A6950
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219E02C ; =0x021A6970
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	mov r4, #5
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #0xf
	str r0, [sp]
	ldr r0, _0219E030 ; =0x04001050
	mov r1, #2
	mov r2, #1
	mov r3, #7
	bl G2x_SetBlendAlpha_
	ldr r0, _0219E034 ; =0x04000050
	str r4, [sp]
	mov r1, #4
	mov r2, #2
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	ldrh r0, [r5, #4]
	bl BmpWin_InitAllocator
	pop {r3, r4, r5, pc}
	nop
_0219E01C: .word 0x021A6904
_0219E020: .word 0x021A6990
_0219E024: .word 0x021A6930
_0219E028: .word 0x021A6950
_0219E02C: .word 0x021A6970
_0219E030: .word 0x04001050
_0219E034: .word 0x04000050
	thumb_func_end ovy310_219df88

	thumb_func_start ovy310_219e038
ovy310_219e038: ; 0x0219E038
	push {r3, lr}
	bl sub_020480A8
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy310_219e038

	thumb_func_start ovy310_219e058
ovy310_219e058: ; 0x0219E058
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xbd
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #4]
	mov r1, #0xd
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #6
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #6
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy310_219e058

	thumb_func_start sub_0219E0A4
sub_0219E0A4: ; 0x0219E0A4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E0A4

	thumb_func_start ovy310_219e0a8
ovy310_219e0a8: ; 0x0219E0A8
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #7
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219e0a8

	thumb_func_start sub_0219E0C0
sub_0219E0C0: ; 0x0219E0C0
	ldr r3, _0219E0CC ; =sub_02045264
	mov r0, #7
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_0219E0CC: .word sub_02045264
	thumb_func_end sub_0219E0C0

	thumb_func_start ovy310_219e0d0
ovy310_219e0d0: ; 0x0219E0D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xbd
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #4]
	mov r1, #4
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #2
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #2
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy310_219e0d0

	thumb_func_start sub_0219E11C
sub_0219E11C: ; 0x0219E11C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E11C

	thumb_func_start ovy310_219e120
ovy310_219e120: ; 0x0219E120
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #3
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219e120

	thumb_func_start sub_0219E138
sub_0219E138: ; 0x0219E138
	ldr r3, _0219E144 ; =sub_02045264
	mov r0, #3
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_0219E144: .word sub_02045264
	thumb_func_end sub_0219E138

	thumb_func_start sub_0219E148
sub_0219E148: ; 0x0219E148
	mov r3, #0
	add r2, r3, #0
_0219E14C:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x4c]
	cmp r3, #4
	blt _0219E14C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E148

	thumb_func_start ovy310_219e15c
ovy310_219e15c: ; 0x0219E15C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #4
_0219E166:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, _0219E1CC ; =0x021A69B0
	add r5, r0, r1
	ldrb r0, [r0, r1]
	ldr r2, [r5, #0xc]
	strb r0, [r4]
	ldrb r0, [r5, #1]
	lsl r2, r2, #2
	add r2, r6, r2
	strb r0, [r4, #1]
	ldrb r0, [r5, #2]
	strb r0, [r4, #2]
	ldrb r0, [r5, #3]
	strb r0, [r4, #3]
	ldrb r0, [r5, #4]
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	ldrb r0, [r5, #6]
	strb r0, [r4, #6]
	ldrb r0, [r5, #7]
	strb r0, [r4, #7]
	ldrb r0, [r5, #8]
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	ldrb r0, [r5, #0xa]
	strb r0, [r4, #0xa]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x10]
	lsl r0, r7, #2
	add r0, r6, r0
	str r0, [sp]
	ldrh r3, [r6, #4]
	ldr r1, [r6, #8]
	ldr r2, [r2, #0xc]
	add r0, sp, #4
	bl ovy310_21a490c
	ldr r1, [sp]
	str r0, [r1, #0x4c]
	ldr r1, [r5, #0x10]
	bl ovy310_21a4974
	add r7, r7, #1
	cmp r7, #4
	blt _0219E166
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E1CC: .word 0x021A69B0
	thumb_func_end ovy310_219e15c

	thumb_func_start ovy310_219e1d0
ovy310_219e1d0: ; 0x0219E1D0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219E1D8:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x4c]
	bl ovy310_21a4960
	add r4, r4, #1
	str r7, [r5, #0x4c]
	cmp r4, #4
	blt _0219E1D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219e1d0

	thumb_func_start sub_0219E1EC
sub_0219E1EC: ; 0x0219E1EC
	mov r3, #0
	add r2, r3, #0
_0219E1F0:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x5c]
	cmp r3, #6
	blt _0219E1F0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E1EC

	thumb_func_start ovy310_219e200
ovy310_219e200: ; 0x0219E200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r4, [r5, #4]
	mov r0, #0xbd
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r1, #0xf
	mov r2, #0
	mov r3, #1
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	str r4, [sp]
	bl sub_0204BBA0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	bl Oam_LoadNCERFile
	ldr r1, [sp, #4]
	str r0, [r5, #0x70]
	add r0, r6, #0
	str r7, [r5, #0x68]
	str r1, [r5, #0x6c]
	bl GFL_ArcToolFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_219e200

	thumb_func_start ovy310_219e250
ovy310_219e250: ; 0x0219E250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_0204B98C
	ldr r0, [r4, #0x6c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x70]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy310_219e250

	thumb_func_start ovy310_219e268
ovy310_219e268: ; 0x0219E268
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r4, [r5, #4]
	mov r0, #0xbd
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0xf
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x64]
	add r0, r6, #0
	str r7, [r5, #0x5c]
	str r1, [r5, #0x60]
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_219e268

	thumb_func_start ovy310_219e2c0
ovy310_219e2c0: ; 0x0219E2C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_0204B98C
	ldr r0, [r4, #0x60]
	bl sub_0204BCD0
	ldr r0, [r4, #0x64]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy310_219e2c0

	thumb_func_start sub_0219E2D8
sub_0219E2D8: ; 0x0219E2D8
	mov r3, #0
	add r2, r3, #0
_0219E2DC:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x74]
	cmp r3, #2
	blt _0219E2DC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E2D8

	thumb_func_start ovy310_219e2ec
ovy310_219e2ec: ; 0x0219E2EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219E310 ; =0x021A68EA
	ldr r7, _0219E314 ; =0x021A68E8
	add r5, r0, #0
	mov r4, #0
_0219E2F6:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	ldrb r1, [r7, r4]
	ldrh r2, [r5, #4]
	bl sub_0204BF1C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x74]
	cmp r4, #2
	blt _0219E2F6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E310: .word 0x021A68EA
_0219E314: .word 0x021A68E8
	thumb_func_end ovy310_219e2ec

	thumb_func_start ovy310_219e318
ovy310_219e318: ; 0x0219E318
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219E31E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x74]
	bl sub_0204BF98
	add r4, r4, #1
	cmp r4, #2
	blt _0219E31E
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219e318

	thumb_func_start sub_0219E330
sub_0219E330: ; 0x0219E330
	mov r1, #0
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E330

	thumb_func_start ovy310_219e338
ovy310_219e338: ; 0x0219E338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _0219E3A4 ; =0x021A6914
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r2, sp, #0x10
	add r5, r0, #0
	strh r1, [r2]
	mov r1, #2
	ldrsh r1, [r4, r1]
	strh r1, [r2, #2]
	mov r1, #4
	ldrsh r1, [r4, r1]
	strh r1, [r2, #4]
	ldrb r1, [r4, #6]
	strb r1, [r2, #6]
	ldrb r1, [r4, #7]
	strb r1, [r2, #7]
	ldr r1, [r4, #8]
	bl sub_0219DCC8
	add r6, r0, #0
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_0219DCC0
	add r7, r0, #0
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_0219DCC0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_0219DCC0
	add r3, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldrh r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r5, #0x7c]
	bl sub_0204C124
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E3A4: .word 0x021A6914
	thumb_func_end ovy310_219e338

	thumb_func_start sub_0219E3A8
sub_0219E3A8: ; 0x0219E3A8
	ldr r0, [r0, #0x7c]
	ldr r3, _0219E3B0 ; =Oam_RemoveOam
	bx r3
	nop
_0219E3B0: .word Oam_RemoveOam
	thumb_func_end sub_0219E3A8

	thumb_func_start sub_0219E3B4
sub_0219E3B4: ; 0x0219E3B4
	mov r3, #0
	add r2, r3, #0
_0219E3B8:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x38]
	cmp r3, #5
	blt _0219E3B8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E3B4

	thumb_func_start ovy310_219e3c8
ovy310_219e3c8: ; 0x0219E3C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219E3CE:
	ldrh r0, [r5, #4]
	bl ovy310_21a63e0
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x38]
	cmp r4, #5
	blt _0219E3CE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219e3c8

	thumb_func_start ovy310_219e3e4
ovy310_219e3e4: ; 0x0219E3E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219E3EA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl ovy310_21a63f0
	add r4, r4, #1
	cmp r4, #5
	blt _0219E3EA
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219e3e4

	thumb_func_start ovy310_219e3fc
ovy310_219e3fc: ; 0x0219E3FC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219E424 ; =0x021A6A10
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x14
_0219E406:
	add r1, r4, #0
	mul r1, r7
	add r3, r6, r1
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r2, [r3, #4]
	ldrb r3, [r3, #8]
	ldr r0, [r0, #0x38]
	ldr r1, [r6, r1]
	bl ovy310_21a6400
	add r4, r4, #1
	cmp r4, #5
	blt _0219E406
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E424: .word 0x021A6A10
	thumb_func_end ovy310_219e3fc

	thumb_func_start ovy310_219e428
ovy310_219e428: ; 0x0219E428
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219E42E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_021A6420
	add r4, r4, #1
	cmp r4, #5
	blt _0219E42E
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219e428
_0219E440:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start sub_0219E448
sub_0219E448: ; 0x0219E448
	ldr r0, _0219E450 ; =0x0219E441
	ldr r3, _0219E454 ; =sub_020056B0
	mov r1, #0
	bx r3
	.align 2, 0
_0219E450: .word 0x0219E441
_0219E454: .word sub_020056B0
	thumb_func_end sub_0219E448

	thumb_func_start sub_0219E458
sub_0219E458: ; 0x0219E458
	ldr r3, _0219E45C ; =sub_020056C8
	bx r3
	.align 2, 0
_0219E45C: .word sub_020056C8
	thumb_func_end sub_0219E458

	thumb_func_start sub_0219E460
sub_0219E460: ; 0x0219E460
	add r1, r0, #0
	ldrh r1, [r1, #4]
	ldr r3, _0219E46C ; =sub_02042BA8
	mov r0, #1
	bx r3
	nop
_0219E46C: .word sub_02042BA8
	thumb_func_end sub_0219E460

	thumb_func_start ovy310_219e470
ovy310_219e470: ; 0x0219E470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021A43C4
	add r7, r0, #0
	bl ovy310_21a00c4
	add r4, r0, #0
	bl ovy310_21a00e0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0219FFA0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0219FFA4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0219FFAC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_219e470

	thumb_func_start ovy310_219e4a4
ovy310_219e4a4: ; 0x0219E4A4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A02C0
	add r0, r4, #0
	bl sub_021A0184
	pop {r4, pc}
	thumb_func_end ovy310_219e4a4

	thumb_func_start ovy310_219e4b4
ovy310_219e4b4: ; 0x0219E4B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F268
	cmp r0, #0xe
	bhi _0219E558
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E4CC: ; jump table
	.short _0219E4EA - _0219E4CC - 2 ; case 0
	.short _0219E4F2 - _0219E4CC - 2 ; case 1
	.short _0219E4FA - _0219E4CC - 2 ; case 2
	.short _0219E502 - _0219E4CC - 2 ; case 3
	.short _0219E50A - _0219E4CC - 2 ; case 4
	.short _0219E51A - _0219E4CC - 2 ; case 5
	.short _0219E512 - _0219E4CC - 2 ; case 6
	.short _0219E522 - _0219E4CC - 2 ; case 7
	.short _0219E52A - _0219E4CC - 2 ; case 8
	.short _0219E532 - _0219E4CC - 2 ; case 9
	.short _0219E53A - _0219E4CC - 2 ; case 10
	.short _0219E542 - _0219E4CC - 2 ; case 11
	.short _0219E54A - _0219E4CC - 2 ; case 12
	.short _0219E552 - _0219E4CC - 2 ; case 13
	.short _0219E558 - _0219E4CC - 2 ; case 14
_0219E4EA:
	add r0, r4, #0
	bl ovy310_219e590
	b _0219E558
_0219E4F2:
	add r0, r4, #0
	bl ovy310_219e6f0
	b _0219E558
_0219E4FA:
	add r0, r4, #0
	bl ovy310_219e860
	b _0219E558
_0219E502:
	add r0, r4, #0
	bl ovy310_219ea80
	b _0219E558
_0219E50A:
	add r0, r4, #0
	bl ovy310_219eaf0
	b _0219E558
_0219E512:
	add r0, r4, #0
	bl ovy310_219ef90
	b _0219E558
_0219E51A:
	add r0, r4, #0
	bl ovy310_219f004
	b _0219E558
_0219E522:
	add r0, r4, #0
	bl ovy310_219ed74
	b _0219E558
_0219E52A:
	add r0, r4, #0
	bl ovy310_219eba4
	b _0219E558
_0219E532:
	add r0, r4, #0
	bl ovy310_219ee24
	b _0219E558
_0219E53A:
	add r0, r4, #0
	bl ovy310_219ec6c
	b _0219E558
_0219E542:
	add r0, r4, #0
	bl ovy310_219f078
	b _0219E558
_0219E54A:
	add r0, r4, #0
	bl ovy310_219eee4
	b _0219E558
_0219E552:
	add r0, r4, #0
	bl ovy310_219f140
_0219E558:
	add r0, r4, #0
	bl sub_0219E580
	cmp r0, #0
	bne _0219E572
	add r0, r4, #0
	bl sub_0219FF5C
	add r0, r4, #0
	bl ovy310_219ff40
	bl sub_0204B794
_0219E572:
	add r0, r4, #0
	bl sub_0219F1FC
	add r0, r4, #0
	bl ovy310_219f240
	pop {r4, pc}
	thumb_func_end ovy310_219e4b4

	thumb_func_start sub_0219E580
sub_0219E580: ; 0x0219E580
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_0219E580

	thumb_func_start sub_0219E588
sub_0219E588: ; 0x0219E588
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_0219E588

	thumb_func_start ovy310_219e590
ovy310_219e590: ; 0x0219E590
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy310_21a02a8
	add r0, r5, #0
	bl ovy310_21a0220
	add r0, r5, #0
	bl ovy310_21a0250
	add r0, r5, #0
	bl ovy310_21a02cc
	add r0, r5, #0
	bl ovy310_219fd30
	add r0, r5, #0
	bl ovy310_21a018c
	add r0, r5, #0
	bl ovy310_21a0368
	add r0, r5, #0
	bl ovy310_21a0454
	add r0, r5, #0
	bl ovy310_21a04b4
	add r0, r5, #0
	bl ovy310_21a04dc
	add r0, r5, #0
	bl ovy310_21a053c
	add r0, r5, #0
	bl ovy310_21a05ac
	add r0, r5, #0
	bl ovy310_21a05d4
	add r0, r5, #0
	bl ovy310_21a075c
	add r0, r5, #0
	bl ovy310_21a07e8
	add r0, r5, #0
	bl ovy310_21a08d4
	add r0, r5, #0
	bl ovy310_21a093c
	add r0, r5, #0
	bl ovy310_21a0a00
	add r0, r5, #0
	bl ovy310_21a0a30
	add r0, r5, #0
	bl ovy310_21a0ae4
	add r0, r5, #0
	bl ovy310_21a0be0
	add r0, r5, #0
	bl ovy310_21a0cf8
	add r0, r5, #0
	bl ovy310_21a0d20
	add r0, r5, #0
	bl ovy310_21a0de8
	add r0, r5, #0
	bl ovy310_21a0e5c
	add r0, r5, #0
	bl ovy310_21a0ea8
	add r0, r5, #0
	bl ovy310_21a0f30
	add r0, r5, #0
	bl sub_021A0F20
	add r0, r5, #0
	bl ovy310_21a0ef4
	add r0, r5, #0
	mov r1, #0
	bl sub_0219FEEC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_021A0098
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_021A0098
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_021A0098
	add r0, r5, #0
	bl ovy310_219ffb0
	add r0, r5, #0
	bl ovy310_219f544
	add r4, r0, #0
	cmp r4, #0xff
	beq _0219E68E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy310_219f6e4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A0058
	add r0, r5, #0
	bl ovy310_219f908
_0219E68E:
	add r0, r5, #0
	bl ovy310_219fd30
	add r0, r5, #0
	bl ovy310_219fa5c
	add r0, r5, #0
	bl ovy310_219f908
	add r0, r5, #0
	bl ovy310_219f854
	add r0, r5, #0
	bl sub_0219F960
	add r0, r5, #0
	bl sub_0219F21C
	cmp r0, #0
	bne _0219E6CE
	add r0, r5, #0
	bl ovy310_219f65c
	add r0, r5, #0
	bl ovy310_219fa1c
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #2
	b _0219E6E4
_0219E6CE:
	add r0, r5, #0
	bl ovy310_219f6a0
	add r0, r5, #0
	bl ovy310_219f9dc
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #1
_0219E6E4:
	bl sub_0219F204
	bl ovy310_219fd8c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219e590

	thumb_func_start ovy310_219e6f0
ovy310_219e6f0: ; 0x0219E6F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x64
	bl sub_0203DA0C
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	add r7, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	add r0, r5, #0
	bl ovy310_21a003c
	cmp r0, #0
	bne _0219E728
	cmp r7, #0
	bne _0219E74E
_0219E728:
	ldr r0, _0219E858 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F3C4
	add r0, r5, #0
	mov r1, #1
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #5
	bl sub_0219F204
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E74E:
	mov r7, #2
	add r0, r4, #0
	tst r0, r7
	beq _0219E77C
	ldr r0, _0219E858 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F3C4
	add r0, r5, #0
	mov r1, #0
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #5
	bl sub_0219F204
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E77C:
	mov r0, #0x40
	tst r0, r4
	bne _0219E79A
	mov r0, #0x80
	tst r0, r4
	bne _0219E79A
	mov r0, #0x20
	tst r0, r4
	bne _0219E79A
	mov r0, #0x10
	tst r0, r4
	bne _0219E79A
	mov r0, #1
	tst r0, r4
	beq _0219E7B8
_0219E79A:
	add r0, r5, #0
	bl ovy310_219f65c
	add r0, r5, #0
	bl ovy310_219fa1c
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E7B8:
	cmp r6, #0
	blt _0219E81A
	cmp r6, #9
	bgt _0219E81A
	ldr r0, [sp]
	cmp r0, #0x18
	blo _0219E852
	cmp r0, #0xa8
	bhi _0219E852
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_21a0060
	cmp r0, #1
	bne _0219E852
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f398
	add r1, r5, #0
	add r1, #0x32
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021A0058
	ldr r0, _0219E85C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219FEEC
	add r0, r5, #0
	bl sub_0219F960
	add r0, r5, #0
	bl ovy310_219fa1c
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #7
	bl sub_0219F204
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E81A:
	add r0, r5, #0
	add r0, #0x90
	bl sub_0203D9C8
	cmp r0, #0
	beq _0219E832
	add r0, r5, #0
	add r0, #0x90
	bl sub_0203DA0C
	cmp r0, #0
	bne _0219E852
_0219E832:
	add r0, r5, #0
	bl ovy310_219fd1c
	cmp r0, #1
	bne _0219E852
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #4
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #1
	bl sub_0219F204
_0219E852:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E858: .word 0x00000551
_0219E85C: .word 0x0000054C
	thumb_func_end ovy310_219e6f0

	thumb_func_start ovy310_219e860
ovy310_219e860: ; 0x0219E860
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203DF20
	add r7, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x64
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	str r0, [sp]
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	mov r0, #0xc0
	tst r0, r7
	beq _0219E89E
	add r0, r5, #0
	bl sub_0219FF6C
	b _0219E8A4
_0219E89E:
	add r0, r5, #0
	bl sub_0219FF74
_0219E8A4:
	add r0, r5, #0
	bl ovy310_21a003c
	cmp r0, #0
	bne _0219E8B4
	ldr r0, [sp]
	cmp r0, #0
	bne _0219E8DA
_0219E8B4:
	ldr r0, _0219EA78 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F3C4
	add r0, r5, #0
	mov r1, #1
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #6
	bl sub_0219F204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E8DA:
	mov r0, #0x40
	add r1, r6, #0
	tst r1, r0
	bne _0219E8FA
	tst r0, r7
	beq _0219E924
	add r0, r5, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219E924
	add r0, r5, #0
	bl sub_0219FF68
	cmp r0, #0xa
	bls _0219E924
_0219E8FA:
	add r0, r5, #0
	bl ovy310_219f6a0
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ovy310_219f634
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #3
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E924:
	mov r0, #0x80
	add r1, r6, #0
	tst r1, r0
	bne _0219E94C
	tst r0, r7
	beq _0219E974
	add r0, r5, #0
	bl sub_021A0048
	add r1, r5, #0
	add r1, #0x32
	ldrb r1, [r1]
	sub r0, r0, #1
	cmp r1, r0
	bge _0219E974
	add r0, r5, #0
	bl sub_0219FF68
	cmp r0, #0xa
	bls _0219E974
_0219E94C:
	add r0, r5, #0
	bl ovy310_219f6a0
	add r0, r5, #0
	mov r1, #1
	bl ovy310_219f634
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #3
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E974:
	mov r0, #1
	tst r0, r6
	beq _0219E9A6
	add r0, r5, #0
	mov r1, #2
	bl sub_0219FEEC
	add r1, r5, #0
	add r1, #0x32
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021A0058
	ldr r0, _0219EA7C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #9
	bl sub_0219F204
	add r0, r5, #0
	bl sub_0219F210
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219E9A6:
	cmp r4, #0
	blt _0219EA02
	cmp r4, #9
	bgt _0219EA02
	ldr r0, [sp, #4]
	cmp r0, #0x18
	blo _0219EA72
	cmp r0, #0xa8
	bhi _0219EA72
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_21a0060
	cmp r0, #1
	bne _0219EA72
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f398
	add r1, r5, #0
	add r1, #0x32
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021A0058
	add r0, r5, #0
	mov r1, #2
	bl sub_0219FEEC
	ldr r0, _0219EA7C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F960
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #7
	bl sub_0219F204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219EA02:
	mov r0, #2
	tst r0, r6
	beq _0219EA2E
	ldr r0, _0219EA78 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F3C4
	add r0, r5, #0
	mov r1, #0
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #6
	bl sub_0219F204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219EA2E:
	add r0, r5, #0
	add r0, #0x90
	bl sub_0203D9C8
	cmp r0, #0
	beq _0219EA46
	add r0, r5, #0
	add r0, #0x90
	bl sub_0203DA0C
	cmp r0, #0
	bne _0219EA72
_0219EA46:
	add r0, r5, #0
	bl ovy310_219fd1c
	cmp r0, #1
	bne _0219EA72
	add r0, r5, #0
	bl ovy310_219f6a0
	add r0, r5, #0
	bl ovy310_219f9dc
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #4
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #1
	bl sub_0219F204
_0219EA72:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219EA78: .word 0x00000551
_0219EA7C: .word 0x0000054C
	thumb_func_end ovy310_219e860

	thumb_func_start ovy310_219ea80
ovy310_219ea80: ; 0x0219EA80
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219EA92
	cmp r0, #1
	beq _0219EAB2
	pop {r4, pc}
_0219EA92:
	add r0, r4, #0
	bl ovy310_219f3d0
	add r1, r4, #0
	add r1, #0x33
	ldrb r1, [r1]
	add r0, r4, #0
	bl ovy310_219f398
	add r0, r4, #0
	bl sub_0219F960
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EAB2:
	add r0, r4, #0
	bl ovy310_219fbcc
	add r0, r4, #0
	bl ovy310_219fc2c
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl sub_0219FBF0
	cmp r0, #0
	beq _0219EAEC
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl sub_0219F210
_0219EAEC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219ea80

	thumb_func_start ovy310_219eaf0
ovy310_219eaf0: ; 0x0219EAF0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219EB10
	cmp r0, #1
	beq _0219EB58
	b _0219EB98
_0219EB10:
	cmp r5, #0
	bne _0219EB28
	add r0, r4, #0
	bl ovy310_219fb74
	add r0, r4, #0
	bl sub_0219FBAC
	add r0, r4, #0
	bl sub_0219F284
	b _0219EB98
_0219EB28:
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy310_219faf4
	add r1, r0, #0
	add r0, r4, #0
	bl ovy310_219fc00
	add r0, r4, #0
	bl ovy310_219fc74
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl sub_0219FB68
	b _0219EB98
_0219EB58:
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x4c]
	add r0, r4, #0
	add r1, r2, r1
	bl ovy310_219fc00
	add r0, r4, #0
	bl ovy310_219fc74
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl sub_0219FB44
	add r0, r4, #0
	bl sub_0219FB58
	cmp r0, #0
	bne _0219EB98
	add r0, r4, #0
	bl sub_0219F960
	add r0, r4, #0
	bl sub_0219F210
_0219EB98:
	add r0, r4, #0
	bl ovy310_219f324
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219eaf0

	thumb_func_start ovy310_219eba4
ovy310_219eba4: ; 0x0219EBA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x58
	bl sub_0203DA0C
	add r6, r0, #0
	mov r0, #0x40
	tst r0, r4
	bne _0219EBD8
	mov r0, #0x80
	tst r0, r4
	bne _0219EBD8
	mov r0, #0x20
	tst r0, r4
	bne _0219EBD8
	mov r0, #0x10
	tst r0, r4
	bne _0219EBD8
	mov r7, #1
	add r0, r4, #0
	tst r0, r7
	beq _0219EBE8
_0219EBD8:
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #9
	bl sub_0219F204
	pop {r3, r4, r5, r6, r7, pc}
_0219EBE8:
	cmp r6, #0
	bne _0219EC1C
	add r0, r5, #0
	mov r1, #0
	bl ovy310_219f2f4
	add r0, r5, #0
	mov r1, #3
	bl sub_0219FF14
	add r0, r5, #0
	mov r1, #5
	bl sub_0219FEEC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xc
	bl sub_0219F204
	pop {r3, r4, r5, r6, r7, pc}
_0219EC1C:
	add r0, r5, #0
	bl ovy310_21a003c
	cmp r0, #0
	bne _0219EC30
	mov r0, #2
	tst r0, r4
	bne _0219EC30
	cmp r6, #1
	bne _0219EC64
_0219EC30:
	add r0, r5, #0
	mov r1, #1
	bl ovy310_219f2f4
	add r0, r5, #0
	mov r1, #3
	bl sub_0219FF14
	add r0, r5, #0
	mov r1, #5
	bl sub_0219FEEC
	ldr r0, _0219EC68 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
_0219EC64:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EC68: .word 0x00000551
	thumb_func_end ovy310_219eba4

	thumb_func_start ovy310_219ec6c
ovy310_219ec6c: ; 0x0219EC6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x58
	bl sub_0203DA0C
	add r6, r0, #0
	mov r0, #0x40
	tst r0, r4
	beq _0219EC8C
	add r0, r5, #0
	bl ovy310_219f294
_0219EC8C:
	mov r0, #0x80
	tst r0, r4
	beq _0219EC98
	add r0, r5, #0
	bl ovy310_219f2c4
_0219EC98:
	mov r7, #1
	add r0, r4, #0
	tst r0, r7
	beq _0219ECF2
	add r0, r5, #0
	mov r1, #3
	bl sub_0219FF14
	add r0, r5, #0
	mov r1, #5
	bl sub_0219FEEC
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0219ECBC
	cmp r0, #1
	beq _0219ECD4
	pop {r3, r4, r5, r6, r7, pc}
_0219ECBC:
	add r0, r5, #0
	mov r1, #0
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xc
	bl sub_0219F204
	pop {r3, r4, r5, r6, r7, pc}
_0219ECD4:
	ldr r0, _0219ED70 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
	pop {r3, r4, r5, r6, r7, pc}
_0219ECF2:
	cmp r6, #0
	bne _0219ED26
	add r0, r5, #0
	mov r1, #0
	bl ovy310_219f2f4
	add r0, r5, #0
	mov r1, #3
	bl sub_0219FF14
	add r0, r5, #0
	mov r1, #5
	bl sub_0219FEEC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0219F228
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xc
	bl sub_0219F204
	pop {r3, r4, r5, r6, r7, pc}
_0219ED26:
	add r0, r5, #0
	bl ovy310_21a003c
	cmp r0, #0
	bne _0219ED3A
	mov r0, #2
	tst r0, r4
	bne _0219ED3A
	cmp r6, #1
	bne _0219ED6E
_0219ED3A:
	add r0, r5, #0
	mov r1, #1
	bl ovy310_219f2f4
	add r0, r5, #0
	mov r1, #3
	bl sub_0219FF14
	add r0, r5, #0
	mov r1, #5
	bl sub_0219FEEC
	ldr r0, _0219ED70 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219F210
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0219F204
	add r0, r5, #0
	mov r1, #2
	bl sub_0219F204
_0219ED6E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED70: .word 0x00000551
	thumb_func_end ovy310_219ec6c

	thumb_func_start ovy310_219ed74
ovy310_219ed74: ; 0x0219ED74
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219ED86
	cmp r0, #1
	beq _0219EDE6
	pop {r4, pc}
_0219ED86:
	add r0, r4, #0
	mov r1, #1
	bl ovy310_219f61c
	add r0, r4, #0
	mov r1, #0
	bl ovy310_219f61c
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_021A0098
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0219EDD8
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xe
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4a50
	add r0, r4, #0
	bl ovy310_219fdc0
_0219EDD8:
	add r0, r4, #0
	bl ovy310_219f4d8
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EDE6:
	add r0, r4, #0
	bl ovy310_219fbcc
	add r0, r4, #0
	bl ovy310_219fc2c
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl sub_0219FBF0
	cmp r0, #0
	beq _0219EE22
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #8
	bl sub_0219F204
_0219EE22:
	pop {r4, pc}
	thumb_func_end ovy310_219ed74

	thumb_func_start ovy310_219ee24
ovy310_219ee24: ; 0x0219EE24
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219EE36
	cmp r0, #1
	beq _0219EEA6
	pop {r4, pc}
_0219EE36:
	add r0, r4, #0
	mov r1, #0
	bl sub_0219F608
	add r0, r4, #0
	mov r1, #1
	bl ovy310_219f61c
	add r0, r4, #0
	mov r1, #0
	bl ovy310_219f60c
	add r0, r4, #0
	mov r1, #3
	bl sub_0219FEEC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_021A0098
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0219EE98
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xe
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4a50
	add r0, r4, #0
	bl ovy310_219fdc0
_0219EE98:
	add r0, r4, #0
	bl ovy310_219f4d8
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EEA6:
	add r0, r4, #0
	bl ovy310_219fbcc
	add r0, r4, #0
	bl ovy310_219fc2c
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl sub_0219FBF0
	cmp r0, #0
	beq _0219EEE2
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0219F204
_0219EEE2:
	pop {r4, pc}
	thumb_func_end ovy310_219ee24

	thumb_func_start ovy310_219eee4
ovy310_219eee4: ; 0x0219EEE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #3
	bhi _0219EF8A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EEFC: ; jump table
	.short _0219EF04 - _0219EEFC - 2 ; case 0
	.short _0219EF4A - _0219EEFC - 2 ; case 1
	.short _0219EF5C - _0219EEFC - 2 ; case 2
	.short _0219EF72 - _0219EEFC - 2 ; case 3
_0219EF04:
	add r0, r4, #0
	bl ovy310_219fea0
	add r0, r4, #0
	bl ovy310_219f544
	add r1, r0, #0
	add r0, r4, #0
	bl ovy310_219f770
	add r0, r4, #0
	bl ovy310_219f5a4
	add r0, r4, #0
	bl sub_021A0050
	add r1, r0, #0
	add r0, r4, #0
	bl ovy310_219f6e4
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_021A0098
	ldr r0, _0219EF8C ; =0x00000769
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EF4A:
	ldr r0, [r4, #0x24]
	cmp r0, #0x3c
	blo _0219EF8A
	bl ovy310_219fd9c
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EF5C:
	bl ovy310_219fdac
	cmp r0, #0
	beq _0219EF8A
	add r0, r4, #0
	bl ovy310_219fe30
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EF72:
	add r0, r4, #0
	bl ovy310_219fec8
	cmp r0, #0
	beq _0219EF8A
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #0xd
	bl sub_0219F204
_0219EF8A:
	pop {r4, pc}
	.align 2, 0
_0219EF8C: .word 0x00000769
	thumb_func_end ovy310_219eee4

	thumb_func_start ovy310_219ef90
ovy310_219ef90: ; 0x0219EF90
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219EFA6
	cmp r0, #1
	beq _0219EFBE
	cmp r0, #2
	beq _0219EFD4
	pop {r4, pc}
_0219EFA6:
	add r0, r4, #0
	bl sub_0219F23C
	ldr r1, [r4, #0x24]
	cmp r0, r1
	bhs _0219F000
	bl ovy310_219fd9c
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EFBE:
	bl ovy310_219fdac
	cmp r0, #0
	beq _0219F000
	add r0, r4, #0
	bl ovy310_219fe30
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219EFD4:
	add r0, r4, #0
	bl ovy310_219fec8
	cmp r0, #0
	beq _0219F000
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xf
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4a50
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #0xd
	bl sub_0219F204
_0219F000:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219ef90

	thumb_func_start ovy310_219f004
ovy310_219f004: ; 0x0219F004
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #0
	beq _0219F01A
	cmp r0, #1
	beq _0219F032
	cmp r0, #2
	beq _0219F048
	pop {r4, pc}
_0219F01A:
	add r0, r4, #0
	bl sub_0219F23C
	ldr r1, [r4, #0x24]
	cmp r0, r1
	bhs _0219F074
	bl ovy310_219fd9c
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219F032:
	bl ovy310_219fdac
	cmp r0, #0
	beq _0219F074
	add r0, r4, #0
	bl ovy310_219fe30
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219F048:
	add r0, r4, #0
	bl ovy310_219fec8
	cmp r0, #0
	beq _0219F074
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xf
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4a50
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #0xd
	bl sub_0219F204
_0219F074:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219f004

	thumb_func_start ovy310_219f078
ovy310_219f078: ; 0x0219F078
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F280
	cmp r0, #3
	bhi _0219F13E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F090: ; jump table
	.short _0219F098 - _0219F090 - 2 ; case 0
	.short _0219F0A6 - _0219F090 - 2 ; case 1
	.short _0219F0DC - _0219F090 - 2 ; case 2
	.short _0219F11A - _0219F090 - 2 ; case 3
_0219F098:
	add r0, r4, #0
	bl ovy310_219f454
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219F0A6:
	add r0, r4, #0
	bl ovy310_219fbcc
	add r0, r4, #0
	bl ovy310_219fc2c
	add r0, r4, #0
	bl ovy310_219fd30
	add r0, r4, #0
	bl ovy310_219fa5c
	add r0, r4, #0
	bl ovy310_219f908
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl sub_0219FBF0
	cmp r0, #0
	beq _0219F13E
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219F0DC:
	add r0, r4, #0
	mov r1, #5
	bl ovy310_219ff24
	cmp r0, #0
	beq _0219F13E
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_021A0098
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_021A0098
	add r0, r4, #0
	bl ovy310_219f854
	add r0, r4, #0
	bl ovy310_219fe30
	add r0, r4, #0
	bl sub_0219F284
	pop {r4, pc}
_0219F11A:
	add r0, r4, #0
	bl ovy310_219fec8
	cmp r0, #0
	beq _0219F13E
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xf
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4a50
	add r0, r4, #0
	bl sub_0219F210
_0219F13E:
	pop {r4, pc}
	thumb_func_end ovy310_219f078

	thumb_func_start ovy310_219f140
ovy310_219f140: ; 0x0219F140
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_219fff4
	add r0, r4, #0
	bl ovy310_21a0f4c
	add r0, r4, #0
	bl ovy310_21a0ed8
	add r0, r4, #0
	bl ovy310_21a0e8c
	ldr r0, [r4]
	bl sub_021A43F8
	ldr r0, [r4]
	bl sub_021A4404
	add r0, r4, #0
	bl ovy310_21a0e38
	add r0, r4, #0
	bl ovy310_21a0cdc
	add r0, r4, #0
	bl ovy310_21a0dc4
	add r0, r4, #0
	bl sub_021A0D10
	add r0, r4, #0
	bl ovy310_21a09c8
	add r0, r4, #0
	bl ovy310_21a0904
	add r0, r4, #0
	bl ovy310_21a07c8
	add r0, r4, #0
	bl ovy310_21a088c
	add r0, r4, #0
	bl ovy310_21a06fc
	add r0, r4, #0
	bl sub_021A05C4
	add r0, r4, #0
	bl sub_021A0538
	add r0, r4, #0
	bl sub_021A05A8
	add r0, r4, #0
	bl sub_021A04CC
	add r0, r4, #0
	bl sub_021A04B0
	add r0, r4, #0
	bl ovy310_21a042c
	add r0, r4, #0
	bl ovy310_21a0290
	add r0, r4, #0
	bl sub_021A0244
	add r0, r4, #0
	mov r1, #0
	bl sub_0219F234
	add r0, r4, #0
	bl sub_0219F210
	add r0, r4, #0
	mov r1, #0xe
	bl sub_0219F204
	mov r0, #0x59
	mov r2, #1
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0219F1F8 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	pop {r4, pc}
	.align 2, 0
_0219F1F8: .word 0xFFFF1FFF
	thumb_func_end ovy310_219f140

	thumb_func_start sub_0219F1FC
sub_0219F1FC: ; 0x0219F1FC
	ldr r1, [r0, #0x24]
	add r1, r1, #1
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_0219F1FC

	thumb_func_start sub_0219F204
sub_0219F204: ; 0x0219F204
	ldr r0, [r0, #0x18]
	ldr r3, _0219F20C ; =sub_021A4864
	bx r3
	nop
_0219F20C: .word sub_021A4864
	thumb_func_end sub_0219F204

	thumb_func_start sub_0219F210
sub_0219F210: ; 0x0219F210
	mov r1, #0x56
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F210

	thumb_func_start sub_0219F21C
sub_0219F21C: ; 0x0219F21C
	ldr r0, [r0]
	ldr r3, _0219F224 ; =sub_021A43E4
	bx r3
	nop
_0219F224: .word sub_021A43E4
	thumb_func_end sub_0219F21C

	thumb_func_start sub_0219F228
sub_0219F228: ; 0x0219F228
	ldr r0, [r0]
	ldr r3, _0219F230 ; =sub_021A43DC
	bx r3
	nop
_0219F230: .word sub_021A43DC
	thumb_func_end sub_0219F228

	thumb_func_start sub_0219F234
sub_0219F234: ; 0x0219F234
	mov r2, #0x5a
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0219F234

	thumb_func_start sub_0219F23C
sub_0219F23C: ; 0x0219F23C
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0219F23C

	thumb_func_start ovy310_219f240
ovy310_219f240: ; 0x0219F240
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219F266
	ldr r0, [r4, #0x18]
	bl sub_021A487C
	cmp r0, #0
	bne _0219F266
	ldr r0, [r4, #0x18]
	bl sub_021A486C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0219F26C
_0219F266:
	pop {r4, pc}
	thumb_func_end ovy310_219f240

	thumb_func_start sub_0219F268
sub_0219F268: ; 0x0219F268
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219F268

	thumb_func_start sub_0219F26C
sub_0219F26C: ; 0x0219F26C
	str r1, [r0, #0x1c]
	mov r2, #0
	mov r1, #0x56
	ldr r3, _0219F27C ; =sub_0219F28C
	str r2, [r0, #0x24]
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx r3
	.align 2, 0
_0219F27C: .word sub_0219F28C
	thumb_func_end sub_0219F26C

	thumb_func_start sub_0219F280
sub_0219F280: ; 0x0219F280
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219F280

	thumb_func_start sub_0219F284
sub_0219F284: ; 0x0219F284
	ldr r1, [r0, #0x20]
	add r1, r1, #1
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219F284

	thumb_func_start sub_0219F28C
sub_0219F28C: ; 0x0219F28C
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F28C

	thumb_func_start ovy310_219f294
ovy310_219f294: ; 0x0219F294
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ovy310_219f61c
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0219F5F0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	bl ovy310_219f60c
	ldr r0, _0219F2C0 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #4
	bl sub_0219FEEC
	pop {r4, pc}
	.align 2, 0
_0219F2C0: .word 0x00000548
	thumb_func_end ovy310_219f294

	thumb_func_start ovy310_219f2c4
ovy310_219f2c4: ; 0x0219F2C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ovy310_219f61c
	add r0, r4, #0
	mov r1, #1
	bl sub_0219F5F0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	bl ovy310_219f60c
	ldr r0, _0219F2F0 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #4
	bl sub_0219FEEC
	pop {r4, pc}
	nop
_0219F2F0: .word 0x00000548
	thumb_func_end ovy310_219f2c4

	thumb_func_start ovy310_219f2f4
ovy310_219f2f4: ; 0x0219F2F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x2c]
	bl ovy310_219f61c
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219F608
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	bl ovy310_219f60c
	ldr r0, _0219F320 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #4
	bl sub_0219FEEC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F320: .word 0x00000548
	thumb_func_end ovy310_219f2f4

	thumb_func_start ovy310_219f324
ovy310_219f324: ; 0x0219F324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy310_219fcc8
	add r7, r0, #0
	bl ovy310_219fcd4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x32
	ldrb r0, [r0]
	bl sub_0219FCEC
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x32
	ldrb r0, [r0]
	bl ovy310_219fcf4
	cmp r0, r7
	bgt _0219F370
	add r0, r0, #1
	bl sub_0219FCE0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F36A
	add r0, r5, #0
	bl ovy310_219f398
	b _0219F370
_0219F36A:
	add r0, r5, #0
	bl sub_0219F62C
_0219F370:
	cmp r6, r4
	bgt _0219F396
	sub r0, r4, #1
	bl sub_0219FCE0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F390
	add r0, r5, #0
	bl ovy310_219f398
	pop {r3, r4, r5, r6, r7, pc}
_0219F390:
	add r0, r5, #0
	bl sub_0219F62C
_0219F396:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f324

	thumb_func_start ovy310_219f398
ovy310_219f398: ; 0x0219F398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy310_219f6a0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219F62C
	add r0, r5, #0
	bl ovy310_219f65c
	ldr r0, _0219F3C0 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #1
	bl sub_0219FEEC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F3C0: .word 0x00000548
	thumb_func_end ovy310_219f398

	thumb_func_start sub_0219F3C4
sub_0219F3C4: ; 0x0219F3C4
	ldr r3, _0219F3CC ; =sub_0219FEE0
	mov r1, #0
	bx r3
	nop
_0219F3CC: .word sub_0219FEE0
	thumb_func_end sub_0219F3C4

	thumb_func_start ovy310_219f3d0
ovy310_219f3d0: ; 0x0219F3D0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r1, [sp]
	ldr r4, [r0, #0x34]
	add r0, #0x33
	add r1, #0x32
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r1, r0
	bhs _0219F3EC
	bl ovy310_219fcf4
	add r5, r0, #1
	b _0219F3F2
_0219F3EC:
	bl sub_0219FCEC
	add r5, r0, #0
_0219F3F2:
	bl ovy310_219fcc8
	add r6, r0, #0
	bl ovy310_219fcd4
	cmp r5, r6
	blt _0219F404
	cmp r0, r5
	bge _0219F40E
_0219F404:
	cmp r4, r5
	bge _0219F40C
	add r4, r0, #0
	b _0219F40E
_0219F40C:
	add r4, r6, #0
_0219F40E:
	add r0, r4, #0
	cmp r4, r5
	ble _0219F416
	add r0, r5, #0
_0219F416:
	add r1, r4, #0
	cmp r4, r5
	bge _0219F41E
	add r1, r5, #0
_0219F41E:
	sub r1, r1, r0
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r6, r0, #2
	bl ovy310_219fcc8
	add r7, r0, #0
	bl ovy310_219fcd4
	cmp r7, r4
	bgt _0219F444
	cmp r4, r0
	bgt _0219F444
	cmp r7, r5
	bgt _0219F444
	cmp r5, r0
	bgt _0219F444
	mov r6, #0
_0219F444:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0219FBC0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_219f3d0

	thumb_func_start ovy310_219f454
ovy310_219f454: ; 0x0219F454
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, [r6, #0x34]
	add r5, r4, #0
	bl ovy310_219fd10
	cmp r0, r4
	bge _0219F470
	add r0, r6, #0
	bl ovy310_219fd00
	add r5, r0, #0
	add r5, #0x18
	b _0219F476
_0219F470:
	cmp r4, #0
	bge _0219F476
	mov r5, #0x90
_0219F476:
	bl ovy310_219fcc8
	add r7, r0, #0
	bl ovy310_219fcd4
	cmp r5, r7
	blt _0219F488
	cmp r0, r5
	bge _0219F492
_0219F488:
	cmp r4, r5
	bge _0219F490
	add r4, r0, #0
	b _0219F492
_0219F490:
	add r4, r7, #0
_0219F492:
	add r0, r4, #0
	cmp r4, r5
	ble _0219F49A
	add r0, r5, #0
_0219F49A:
	add r1, r4, #0
	cmp r4, r5
	bge _0219F4A2
	add r1, r5, #0
_0219F4A2:
	sub r0, r1, r0
	mov r1, #3
	blx sub_0208D65C
	add r7, r0, #0
	bl ovy310_219fcc8
	str r0, [sp]
	bl ovy310_219fcd4
	ldr r1, [sp]
	cmp r1, r4
	bgt _0219F4CA
	cmp r4, r0
	bgt _0219F4CA
	cmp r1, r5
	bgt _0219F4CA
	cmp r5, r0
	bgt _0219F4CA
	mov r7, #1
_0219F4CA:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_0219FBC0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f454

	thumb_func_start ovy310_219f4d8
ovy310_219f4d8: ; 0x0219F4D8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ovy310_219fcc8
	add r4, r0, #0
	bl ovy310_219fcd4
	add r1, r4, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	add r1, r7, #0
	add r1, #0x32
	asr r4, r0, #1
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0219F810
	lsl r6, r0, #3
	cmp r4, r6
	bge _0219F510
	bl ovy310_219fcd4
	add r5, r0, #0
	bl ovy310_219fcd4
	sub r1, r6, r4
	add r4, r1, r0
	b _0219F51E
_0219F510:
	bl ovy310_219fcc8
	add r5, r0, #0
	bl ovy310_219fcc8
	sub r1, r4, r6
	sub r4, r0, r1
_0219F51E:
	add r0, r5, #0
	cmp r5, r4
	ble _0219F526
	add r0, r4, #0
_0219F526:
	add r1, r5, #0
	cmp r5, r4
	bge _0219F52E
	add r1, r4, #0
_0219F52E:
	sub r0, r1, r0
	mov r1, #3
	blx sub_0208D65C
	add r3, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0219FBC0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f4d8

	thumb_func_start ovy310_219f544
ovy310_219f544: ; 0x0219F544
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0219FF94
	bl sub_02017934
	bl sub_0200EC2C
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #0
_0219F558:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200ECE4
	strb r0, [r6, r4]
	add r4, r4, #1
	cmp r4, #3
	blt _0219F558
	add r3, sp, #0
	ldrb r5, [r3, #1]
	ldrb r6, [r3, #2]
	ldrb r4, [r3]
	ldr r1, _0219F598 ; =0x021A6AA2
	ldr r2, _0219F59C ; =0x021A6A98
	ldr r3, _0219F5A0 ; =0x021A6AC0
	mov r0, #0
_0219F578:
	ldrb r7, [r3, r0]
	cmp r4, r7
	bne _0219F58A
	ldrb r7, [r2, r0]
	cmp r5, r7
	bne _0219F58A
	ldrb r7, [r1, r0]
	cmp r6, r7
	beq _0219F596
_0219F58A:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _0219F578
	mov r0, #0
_0219F596:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F598: .word 0x021A6AA2
_0219F59C: .word 0x021A6A98
_0219F5A0: .word 0x021A6AC0
	thumb_func_end ovy310_219f544

	thumb_func_start ovy310_219f5a4
ovy310_219f5a4: ; 0x0219F5A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021A0050
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219FF94
	bl sub_02017934
	bl sub_0200EC2C
	ldr r1, _0219F5E4 ; =0x021A6AC0
	mov r2, #0
	ldrb r1, [r1, r5]
	add r4, r0, #0
	bl sub_0200ECD8
	ldr r1, _0219F5E8 ; =0x021A6A98
	add r0, r4, #0
	ldrb r1, [r1, r5]
	mov r2, #1
	bl sub_0200ECD8
	ldr r1, _0219F5EC ; =0x021A6AA2
	add r0, r4, #0
	ldrb r1, [r1, r5]
	mov r2, #2
	bl sub_0200ECD8
	pop {r3, r4, r5, pc}
	nop
_0219F5E4: .word 0x021A6AC0
_0219F5E8: .word 0x021A6A98
_0219F5EC: .word 0x021A6AA2
	thumb_func_end ovy310_219f5a4

	thumb_func_start sub_0219F5F0
sub_0219F5F0: ; 0x0219F5F0
	ldr r2, [r0, #0x2c]
	add r1, r2, r1
	add r1, r1, #2
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F5F0

	thumb_func_start sub_0219F608
sub_0219F608: ; 0x0219F608
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0219F608

	thumb_func_start ovy310_219f60c
ovy310_219f60c: ; 0x0219F60C
	push {r3, lr}
	bl sub_021A00AC
	mov r1, #0
	bl sub_0202B378
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219f60c

	thumb_func_start ovy310_219f61c
ovy310_219f61c: ; 0x0219F61C
	push {r3, lr}
	bl sub_021A00AC
	mov r1, #1
	bl sub_0202B378
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219f61c

	thumb_func_start sub_0219F62C
sub_0219F62C: ; 0x0219F62C
	add r0, #0x32
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F62C

	thumb_func_start ovy310_219f634
ovy310_219f634: ; 0x0219F634
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r1, r5, #0
	add r1, #0x32
	ldrb r4, [r1]
	bl sub_021A0048
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021A0048
	add r1, r0, #0
	add r0, r4, r6
	add r0, r0, r7
	blx sub_0208D65C
	add r5, #0x33
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f634

	thumb_func_start ovy310_219f65c
ovy310_219f65c: ; 0x0219F65C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x32
	ldrb r4, [r1]
	add r1, r4, #0
	bl ovy310_219f7f8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219F810
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	add r1, r6, #0
	mov r3, #0x1c
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_219f65c

	thumb_func_start ovy310_219f6a0
ovy310_219f6a0: ; 0x0219F6A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x32
	ldrb r4, [r1]
	add r1, r4, #0
	bl ovy310_219f7f8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219F810
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	add r1, r6, #0
	mov r3, #0x1c
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_219f6a0

	thumb_func_start ovy310_219f6e4
ovy310_219f6e4: ; 0x0219F6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #2
	str r1, [sp, #4]
	bl sub_02045814
	add r7, r0, #0
	mov r0, #3
	bl sub_02045814
	add r4, r0, #0
	mov r6, #0
_0219F6FE:
	mov r5, #0
_0219F700:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0219F810
	add r0, r0, r6
	add r1, r5, #2
	lsl r0, r0, #5
	add r0, r1, r0
	lsl r1, r0, #1
	sub r0, r0, #1
	ldrh r2, [r7, r1]
	lsl r0, r0, #1
	add r5, r5, #1
	strh r2, [r7, r0]
	ldrh r1, [r4, r1]
	cmp r5, #0x1c
	strh r1, [r4, r0]
	blt _0219F700
	add r6, r6, #1
	cmp r6, #3
	blt _0219F6FE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0219F810
	lsl r1, r0, #5
	add r1, #0x1d
	lsl r2, r1, #1
	ldrh r1, [r7]
	strh r1, [r7, r2]
	ldrh r1, [r4]
	strh r1, [r4, r2]
	add r1, r0, #1
	lsl r1, r1, #5
	add r1, #0x1d
	lsl r2, r1, #1
	ldrh r1, [r7]
	add r0, r0, #2
	lsl r0, r0, #5
	strh r1, [r7, r2]
	ldrh r1, [r4]
	add r0, #0x1d
	strh r1, [r4, r2]
	lsl r1, r0, #1
	ldrh r0, [r7]
	strh r0, [r7, r1]
	ldrh r0, [r4]
	strh r0, [r4, r1]
	mov r0, #2
	bl sub_02045B7C
	mov r0, #3
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f6e4

	thumb_func_start ovy310_219f770
ovy310_219f770: ; 0x0219F770
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #2
	str r1, [sp, #4]
	mov r6, #2
	bl sub_02045814
	add r7, r0, #0
	mov r0, #3
	bl sub_02045814
	add r4, r0, #0
_0219F78A:
	mov r5, #0x1b
_0219F78C:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0219F810
	add r0, r0, r6
	add r1, r5, #1
	lsl r0, r0, #5
	add r0, r1, r0
	lsl r1, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	ldrh r2, [r7, r1]
	sub r5, r5, #1
	strh r2, [r7, r0]
	ldrh r1, [r4, r1]
	strh r1, [r4, r0]
	bpl _0219F78C
	sub r6, r6, #1
	bpl _0219F78A
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0219F810
	lsl r1, r0, #5
	add r1, r1, #1
	lsl r2, r1, #1
	ldrh r1, [r7]
	strh r1, [r7, r2]
	ldrh r1, [r4]
	strh r1, [r4, r2]
	add r1, r0, #1
	lsl r1, r1, #5
	add r1, r1, #1
	lsl r2, r1, #1
	ldrh r1, [r7]
	add r0, r0, #2
	lsl r0, r0, #5
	strh r1, [r7, r2]
	ldrh r1, [r4]
	add r0, r0, #1
	strh r1, [r4, r2]
	lsl r1, r0, #1
	ldrh r0, [r7]
	strh r0, [r7, r1]
	ldrh r0, [r4]
	strh r0, [r4, r1]
	mov r0, #2
	bl sub_02045B7C
	mov r0, #3
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f770

	thumb_func_start ovy310_219f7f8
ovy310_219f7f8: ; 0x0219F7F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #2
	bl ovy310_219f544
	cmp r5, r0
	bne _0219F80C
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0219F80C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219f7f8

	thumb_func_start sub_0219F810
sub_0219F810: ; 0x0219F810
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F810

	thumb_func_start ovy310_219f81c
ovy310_219f81c: ; 0x0219F81C
	push {r4, lr}
	bl ovy310_219f7f8
	lsl r4, r0, #3
	mov r0, #2
	bl sub_02045828
	sub r0, r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219f81c

	thumb_func_start ovy310_219f830
ovy310_219f830: ; 0x0219F830
	push {r4, lr}
	bl sub_0219F810
	lsl r4, r0, #3
	bl sub_0219FCA0
	sub r0, r4, r0
	pop {r4, pc}
	thumb_func_end ovy310_219f830

	thumb_func_start ovy310_219f840
ovy310_219f840: ; 0x0219F840
	push {r4, lr}
	bl sub_0219F810
	lsl r4, r0, #3
	add r4, #0x17
	bl sub_0219FCA0
	sub r0, r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219f840

	thumb_func_start ovy310_219f854
ovy310_219f854: ; 0x0219F854
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r1, #0
	mov r4, #0
	bl ovy310_219f830
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #9
	bl ovy310_219f840
	cmp r7, #0
	ble _0219F87E
	mov r0, #0
	mov r4, #1
	str r0, [sp, #8]
	mov r6, #0xf0
	str r0, [sp, #4]
	sub r5, r7, #1
	b _0219F890
_0219F87E:
	cmp r0, #0xc0
	bge _0219F890
	mov r1, #0
	add r0, r0, #1
	mov r4, #1
	str r1, [sp, #8]
	mov r6, #0xf0
	str r0, [sp, #4]
	mov r5, #0xc0
_0219F890:
	cmp r4, #0
	beq _0219F8F4
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _0219F904 ; =0xFFFF1FFF
	add r4, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0]
	ldr r1, [sp, #8]
	mov r2, #0xff
	lsl r1, r1, #8
	add r3, r1, #0
	lsl r2, r2, #8
	lsl r1, r6, #0x18
	and r3, r2
	lsr r1, r1, #0x18
	orr r3, r1
	add r1, r0, #0
	add r1, #0x40
	strh r3, [r1]
	ldr r1, [sp, #4]
	add r4, #0x4a
	lsl r1, r1, #8
	and r2, r1
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	orr r2, r1
	add r1, r0, #0
	add r1, #0x44
	strh r2, [r1]
	ldrh r3, [r4]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4]
	add r0, #0x48
	ldrh r4, [r0]
	mov r1, #0x13
	add sp, #0xc
	bic r4, r2
	orr r1, r4
	orr r1, r3
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0219F8F4:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0219F904 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F904: .word 0xFFFF1FFF
	thumb_func_end ovy310_219f854

	thumb_func_start ovy310_219f908
ovy310_219f908: ; 0x0219F908
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy310_219f544
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_021A008C
	add r6, r0, #0
	cmp r4, #0xff
	bne _0219F928
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_0219F928:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f81c
	add r7, sp, #0
	lsl r1, r4, #0x18
	strh r0, [r7]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f830
	add r0, #0xa
	strh r0, [r7, #2]
	add r0, r6, #0
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r6, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219f908

	thumb_func_start sub_0219F960
sub_0219F960: ; 0x0219F960
	add r1, r0, #0
	add r1, #0x32
	ldrb r1, [r1]
	ldr r3, _0219F96C ; =ovy310_219f970
	bx r3
	nop
_0219F96C: .word ovy310_219f970
	thumb_func_end sub_0219F960

	thumb_func_start ovy310_219f970
ovy310_219f970: ; 0x0219F970
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _0219F9C4 ; =0x021A6AB6
	add r5, r0, #0
	add r0, #0xe4
	ldrb r1, [r1, r4]
	ldr r0, [r0]
	bl ovy310_21a4974
	ldr r1, _0219F9C8 ; =0x021A6AAC
	add r0, r5, #0
	add r0, #0xe8
	ldrb r1, [r1, r4]
	ldr r0, [r0]
	bl ovy310_21a4974
	ldr r1, _0219F9CC ; =0x021A6AC0
	add r0, r5, #0
	add r0, #0xec
	ldrb r1, [r1, r4]
	ldr r6, _0219F9D0 ; =0x021A6AE8
	ldr r0, [r0]
	ldrb r1, [r6, r1]
	bl ovy310_21a4974
	ldr r1, _0219F9D4 ; =0x021A6A98
	add r0, r5, #0
	ldrb r1, [r1, r4]
	add r0, #0xf0
	ldr r0, [r0]
	ldrb r1, [r6, r1]
	bl ovy310_21a4974
	ldr r1, _0219F9D8 ; =0x021A6AA2
	add r5, #0xf4
	ldrb r1, [r1, r4]
	ldr r0, [r5]
	ldrb r1, [r6, r1]
	bl ovy310_21a4974
	pop {r4, r5, r6, pc}
	nop
_0219F9C4: .word 0x021A6AB6
_0219F9C8: .word 0x021A6AAC
_0219F9CC: .word 0x021A6AC0
_0219F9D0: .word 0x021A6AE8
_0219F9D4: .word 0x021A6A98
_0219F9D8: .word 0x021A6AA2
	thumb_func_end ovy310_219f970

	thumb_func_start ovy310_219f9dc
ovy310_219f9dc: ; 0x0219F9DC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #0
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #0
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #0
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #0
	bl ovy310_21a4a10
	add r4, #0xf4
	ldr r0, [r4]
	mov r1, #0
	bl ovy310_21a4a10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219f9dc

	thumb_func_start ovy310_219fa1c
ovy310_219fa1c: ; 0x0219FA1C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	mov r1, #1
	bl ovy310_21a4a10
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl ovy310_21a4a10
	add r4, #0xf4
	ldr r0, [r4]
	mov r1, #1
	bl ovy310_21a4a10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219fa1c

	thumb_func_start ovy310_219fa5c
ovy310_219fa5c: ; 0x0219FA5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	mov r7, #0
	bl sub_021A008C
	add r4, r0, #0
	add r0, r5, #0
	bl ovy310_219fd1c
	cmp r0, #0
	bne _0219FA7E
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_0219FA7E:
	mov r0, #0xf8
	add r6, sp, #0
	strh r0, [r6]
	add r0, r5, #0
	bl ovy310_219faa0
	strh r0, [r6, #2]
	add r0, r4, #0
	add r1, sp, #0
	add r2, r7, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219fa5c

	thumb_func_start ovy310_219faa0
ovy310_219faa0: ; 0x0219FAA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219FCA0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy310_219fd00
	add r4, #0x18
	add r5, r0, #0
	add r0, r4, #0
	blx sub_0208D374
	add r5, #0x18
	add r4, r0, #0
	add r0, r5, #0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #0x18
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x42
	lsl r0, r0, #0x18
	blx sub_0208DF14
	blx sub_0208DA4C
	cmp r0, #0x20
	bge _0219FAEA
	mov r0, #0x20
_0219FAEA:
	cmp r0, #0xa0
	ble _0219FAF0
	mov r0, #0xa0
_0219FAF0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219faa0

	thumb_func_start ovy310_219faf4
ovy310_219faf4: ; 0x0219FAF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0x20
	bge _0219FAFE
	mov r1, #0x20
_0219FAFE:
	cmp r1, #0xa0
	ble _0219FB04
	mov r1, #0xa0
_0219FB04:
	sub r1, #0x20
	add r0, r1, #0
	blx sub_0208D374
	mov r1, #0x43
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy310_219fd00
	add r5, r0, #0
	add r5, #0x18
	mov r0, #0
	blx sub_0208D374
	add r6, r0, #0
	add r0, r5, #0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_219faf4

	thumb_func_start sub_0219FB44
sub_0219FB44: ; 0x0219FB44
	ldr r2, [r0, #0x4c]
	ldr r1, [r0, #0x50]
	add r3, r2, r1
	add r1, r2, #0
	mul r1, r3
	cmp r1, #0
	bgt _0219FB54
	mov r3, #0
_0219FB54:
	str r3, [r0, #0x4c]
	bx lr
	thumb_func_end sub_0219FB44

	thumb_func_start sub_0219FB58
sub_0219FB58: ; 0x0219FB58
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _0219FB62
	mov r0, #1
	bx lr
_0219FB62:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FB58

	thumb_func_start sub_0219FB68
sub_0219FB68: ; 0x0219FB68
	ldr r2, [r0, #0x34]
	ldr r1, [r0, #0x38]
	sub r1, r2, r1
	str r1, [r0, #0x4c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FB68

	thumb_func_start ovy310_219fb74
ovy310_219fb74: ; 0x0219FB74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	blx sub_0208CD70
	ldr r3, _0219FBA8 ; =0x3FF80000
	mov r2, #0
	mov r4, #0
	blx sub_0208C908
	blx sub_0208DAC0
	str r0, [r5, #0x4c]
	cmp r0, #9
	ble _0219FB98
	mov r0, #9
	str r0, [r5, #0x4c]
	pop {r3, r4, r5, pc}
_0219FB98:
	add r1, r4, #0
	sub r1, #9
	cmp r0, r1
	bge _0219FBA4
	sub r4, #9
	str r4, [r5, #0x4c]
_0219FBA4:
	pop {r3, r4, r5, pc}
	nop
_0219FBA8: .word 0x3FF80000
	thumb_func_end ovy310_219fb74

	thumb_func_start sub_0219FBAC
sub_0219FBAC: ; 0x0219FBAC
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	bge _0219FBB8
	mov r1, #1
	str r1, [r0, #0x50]
	bx lr
_0219FBB8:
	mov r1, #0
	mvn r1, r1
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end sub_0219FBAC

	thumb_func_start sub_0219FBC0
sub_0219FBC0: ; 0x0219FBC0
	str r1, [r0, #0x3c]
	mov r1, #0
	str r2, [r0, #0x40]
	str r3, [r0, #0x44]
	str r1, [r0, #0x48]
	bx lr
	thumb_func_end sub_0219FBC0

	thumb_func_start ovy310_219fbcc
ovy310_219fbcc: ; 0x0219FBCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	ldr r4, [r5, #0x3c]
	add r1, r0, #1
	ldr r0, [r5, #0x40]
	str r1, [r5, #0x48]
	sub r0, r0, r4
	mul r0, r1
	ldr r1, [r5, #0x44]
	blx sub_0208D65C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0219FC24
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219fbcc

	thumb_func_start sub_0219FBF0
sub_0219FBF0: ; 0x0219FBF0
	ldr r1, [r0, #0x44]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bgt _0219FBFC
	mov r0, #1
	bx lr
_0219FBFC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219FBF0

	thumb_func_start ovy310_219fc00
ovy310_219fc00: ; 0x0219FC00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0219FC0A
	mov r4, #0
_0219FC0A:
	add r0, r5, #0
	bl ovy310_219fd10
	cmp r0, r4
	bge _0219FC1C
	add r0, r5, #0
	bl ovy310_219fd10
	add r4, r0, #0
_0219FC1C:
	ldr r0, [r5, #0x34]
	str r0, [r5, #0x38]
	str r4, [r5, #0x34]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219fc00

	thumb_func_start sub_0219FC24
sub_0219FC24: ; 0x0219FC24
	str r1, [r0, #0x38]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FC24

	thumb_func_start ovy310_219fc2c
ovy310_219fc2c: ; 0x0219FC2C
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x34]
	bl ovy310_219fcc8
	add r4, r0, #0
	bl ovy310_219fcd4
	cmp r5, r4
	bge _0219FC56
	sub r5, #0x18
	mov r0, #2
	mov r1, #3
	add r2, r5, #0
	bl GFL_BGSysMoveBGReq
	mov r0, #3
	mov r1, #3
	add r2, r5, #0
	bl GFL_BGSysMoveBGReq
	pop {r3, r4, r5, pc}
_0219FC56:
	cmp r0, r5
	bge _0219FC70
	sub r5, #0xa8
	mov r0, #2
	mov r1, #3
	add r2, r5, #0
	bl GFL_BGSysMoveBGReq
	mov r0, #3
	mov r1, #3
	add r2, r5, #0
	bl GFL_BGSysMoveBGReq
_0219FC70:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219fc2c

	thumb_func_start ovy310_219fc74
ovy310_219fc74: ; 0x0219FC74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r0, #0x17
	sub r4, #0x18
	mvn r0, r0
	cmp r4, r0
	bge _0219FC86
	add r4, r0, #0
_0219FC86:
	add r0, r5, #0
	bl ovy310_219fd00
	cmp r0, r4
	bge _0219FC98
	add r0, r5, #0
	bl ovy310_219fd00
	add r4, r0, #0
_0219FC98:
	add r0, r4, #0
	bl ovy310_219fcac
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_219fc74

	thumb_func_start sub_0219FCA0
sub_0219FCA0: ; 0x0219FCA0
	ldr r3, _0219FCA8 ; =sub_02044E74
	mov r0, #2
	bx r3
	nop
_0219FCA8: .word sub_02044E74
	thumb_func_end sub_0219FCA0

	thumb_func_start ovy310_219fcac
ovy310_219fcac: ; 0x0219FCAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #3
	add r2, r4, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r4, #0
	bl sub_02044CFC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219fcac

	thumb_func_start ovy310_219fcc8
ovy310_219fcc8: ; 0x0219FCC8
	push {r3, lr}
	bl sub_0219FCA0
	add r0, #0x18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fcc8

	thumb_func_start ovy310_219fcd4
ovy310_219fcd4: ; 0x0219FCD4
	push {r3, lr}
	bl sub_0219FCA0
	add r0, #0xa8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fcd4

	thumb_func_start sub_0219FCE0
sub_0219FCE0: ; 0x0219FCE0
	ldr r3, _0219FCE8 ; =sub_0208D65C
	mov r1, #0x18
	bx r3
	nop
_0219FCE8: .word sub_0208D65C
	thumb_func_end sub_0219FCE0

	thumb_func_start sub_0219FCEC
sub_0219FCEC: ; 0x0219FCEC
	mov r1, #0x18
	mul r1, r0
	add r0, r1, #0
	bx lr
	thumb_func_end sub_0219FCEC

	thumb_func_start ovy310_219fcf4
ovy310_219fcf4: ; 0x0219FCF4
	push {r3, lr}
	bl sub_0219FCEC
	add r0, #0x17
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fcf4

	thumb_func_start ovy310_219fd00
ovy310_219fd00: ; 0x0219FD00
	push {r3, lr}
	bl sub_021A0048
	mov r1, #0x18
	mul r1, r0
	sub r1, #0xa8
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end ovy310_219fd00

	thumb_func_start ovy310_219fd10
ovy310_219fd10: ; 0x0219FD10
	push {r3, lr}
	bl ovy310_219fd00
	add r0, #0xa8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fd10

	thumb_func_start ovy310_219fd1c
ovy310_219fd1c: ; 0x0219FD1C
	push {r3, lr}
	bl sub_021A0048
	mov r1, #0x18
	mul r1, r0
	mov r0, #1
	cmp r1, #0x90
	bgt _0219FD2E
	mov r0, #0
_0219FD2E:
	pop {r3, pc}
	thumb_func_end ovy310_219fd1c

	thumb_func_start ovy310_219fd30
ovy310_219fd30: ; 0x0219FD30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0219FD36:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f81c
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_219f830
	add r3, r0, #0
	add r7, r6, #0
	cmp r6, #0
	bge _0219FD56
	mov r7, #0
_0219FD56:
	add r6, #0xd8
	bpl _0219FD5C
	mov r6, #0
_0219FD5C:
	add r2, r3, #0
	cmp r3, #0
	bge _0219FD64
	mov r2, #0
_0219FD64:
	add r3, #0x18
	bpl _0219FD6A
	mov r3, #0
_0219FD6A:
	lsl r1, r4, #2
	add r0, r5, r1
	add r0, #0x66
	strb r7, [r0]
	add r0, r5, r1
	add r0, #0x67
	strb r6, [r0]
	add r0, r5, r1
	add r0, #0x64
	strb r2, [r0]
	add r0, r5, r1
	add r0, #0x65
	add r4, r4, #1
	strb r3, [r0]
	cmp r4, #9
	ble _0219FD36
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_219fd30

	thumb_func_start ovy310_219fd8c
ovy310_219fd8c: ; 0x0219FD8C
	push {r3, lr}
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_219fd8c

	thumb_func_start ovy310_219fd9c
ovy310_219fd9c: ; 0x0219FD9C
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_219fd9c

	thumb_func_start ovy310_219fdac
ovy310_219fdac: ; 0x0219FDAC
	push {r3, lr}
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219FDBA
	mov r0, #1
	pop {r3, pc}
_0219FDBA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fdac

	thumb_func_start ovy310_219fdc0
ovy310_219fdc0: ; 0x0219FDC0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x15
	str r1, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, _0219FE28 ; =0x0000BBFF
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	mov r3, #2
	bl sub_02026FE4
	add r0, r5, #0
	bl ovy310_219f544
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A0050
	mov r2, #0xcf
	cmp r4, r0
	beq _0219FDFE
	ldr r2, _0219FE2C ; =0x000004CF
_0219FDFE:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r4, #0x15
	str r1, [sp, #8]
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r3, #2
	bl sub_02026FE4
	mov r0, #1
	add r4, #0xc
	str r0, [r5, r4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FE28: .word 0x0000BBFF
_0219FE2C: .word 0x000004CF
	thumb_func_end ovy310_219fdc0

	thumb_func_start ovy310_219fe30
ovy310_219fe30: ; 0x0219FE30
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, _0219FE98 ; =0x0000BBFF
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	mov r3, #2
	bl sub_02026FE4
	add r0, r5, #0
	bl ovy310_219f544
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A0050
	mov r2, #0xcf
	cmp r4, r0
	beq _0219FE6E
	ldr r2, _0219FE9C ; =0x000004CF
_0219FE6E:
	mov r0, #0xa
	str r0, [sp]
	mov r6, #0
	str r6, [sp, #4]
	mov r4, #0x15
	str r6, [sp, #8]
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r3, #2
	bl sub_02026FE4
	add r4, #0xc
	str r6, [r5, r4]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0219FE98: .word 0x0000BBFF
_0219FE9C: .word 0x000004CF
	thumb_func_end ovy310_219fe30

	thumb_func_start ovy310_219fea0
ovy310_219fea0: ; 0x0219FEA0
	push {r3, lr}
	sub sp, #0x10
	mov r1, #0xa
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r1, #0x15
	str r3, [sp, #8]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	add r0, #0x98
	str r1, [sp, #0xc]
	mov r1, #4
	ldr r0, [r0]
	lsl r2, r1, #8
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fea0

	thumb_func_start ovy310_219fec8
ovy310_219fec8: ; 0x0219FEC8
	push {r3, lr}
	add r0, #0x98
	ldr r0, [r0]
	bl sub_02027780
	cmp r0, #0
	bne _0219FEDA
	mov r0, #1
	pop {r3, pc}
_0219FEDA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219fec8

	thumb_func_start sub_0219FEE0
sub_0219FEE0: ; 0x0219FEE0
	ldr r0, [r0]
	ldr r3, _0219FEE8 ; =sub_021A43F0
	bx r3
	nop
_0219FEE8: .word sub_021A43F0
	thumb_func_end sub_0219FEE0

	thumb_func_start sub_0219FEEC
sub_0219FEEC: ; 0x0219FEEC
	add r3, r1, #0
	mov r2, #0x14
	mul r3, r2
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, _0219FF08 ; =0x021A6C88
	ldr r1, _0219FF0C ; =0x021A6C84
	add r0, #0x9c
	ldrh r2, [r2, r3]
	ldr r1, [r1, r3]
	ldr r0, [r0]
	ldr r3, _0219FF10 ; =sub_021A6410
	bx r3
	nop
_0219FF08: .word 0x021A6C88
_0219FF0C: .word 0x021A6C84
_0219FF10: .word sub_021A6410
	thumb_func_end sub_0219FEEC

	thumb_func_start sub_0219FF14
sub_0219FF14: ; 0x0219FF14
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x9c
	ldr r0, [r0]
	ldr r3, _0219FF20 ; =sub_021A6418
	bx r3
	.align 2, 0
_0219FF20: .word sub_021A6418
	thumb_func_end sub_0219FF14

	thumb_func_start ovy310_219ff24
ovy310_219ff24: ; 0x0219FF24
	push {r3, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_021A6428
	cmp r0, #0
	bne _0219FF3A
	mov r0, #1
	pop {r3, pc}
_0219FF3A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_219ff24

	thumb_func_start ovy310_219ff40
ovy310_219ff40: ; 0x0219FF40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219FF46:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_021A6408
	add r4, r4, #1
	cmp r4, #6
	blt _0219FF46
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_219ff40

	thumb_func_start sub_0219FF5C
sub_0219FF5C: ; 0x0219FF5C
	ldr r0, [r0]
	ldr r3, _0219FF64 ; =sub_021A43E8
	bx r3
	nop
_0219FF64: .word sub_021A43E8
	thumb_func_end sub_0219FF5C

	thumb_func_start sub_0219FF68
sub_0219FF68: ; 0x0219FF68
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_0219FF68

	thumb_func_start sub_0219FF6C
sub_0219FF6C: ; 0x0219FF6C
	ldr r1, [r0, #0x54]
	add r1, r1, #1
	str r1, [r0, #0x54]
	bx lr
	thumb_func_end sub_0219FF6C

	thumb_func_start sub_0219FF74
sub_0219FF74: ; 0x0219FF74
	mov r1, #0
	str r1, [r0, #0x54]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FF74

	thumb_func_start ovy310_219ff7c
ovy310_219ff7c: ; 0x0219FF7C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02045A5C
	bl sub_0204B7C8
	add r4, #0x98
	ldr r0, [r4]
	bl sub_020275F8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219ff7c

	thumb_func_start sub_0219FF94
sub_0219FF94: ; 0x0219FF94
	ldr r0, [r0]
	ldr r3, _0219FF9C ; =sub_021A43CC
	bx r3
	nop
_0219FF9C: .word sub_021A43CC
	thumb_func_end sub_0219FF94

	thumb_func_start sub_0219FFA0
sub_0219FFA0: ; 0x0219FFA0
	strh r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219FFA0

	thumb_func_start sub_0219FFA4
sub_0219FFA4: ; 0x0219FFA4
	str r1, [r0]
	bx lr
	thumb_func_end sub_0219FFA4

	thumb_func_start sub_0219FFA8
sub_0219FFA8: ; 0x0219FFA8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219FFA8

	thumb_func_start sub_0219FFAC
sub_0219FFAC: ; 0x0219FFAC
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0219FFAC

	thumb_func_start ovy310_219ffb0
ovy310_219ffb0: ; 0x0219FFB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219FFF0
	bl sub_021A4810
	mov r1, #0x17
	mvn r1, r1
	cmp r0, r1
	bge _0219FFC8
	add r0, r1, #0
_0219FFC8:
	cmp r0, #0x48
	ble _0219FFCE
	mov r0, #0x48
_0219FFCE:
	bl ovy310_219fcac
	ldr r0, [r4, #4]
	bl sub_021A480C
	cmp r0, #0
	bge _0219FFDE
	mov r0, #0
_0219FFDE:
	cmp r0, #0xf0
	ble _0219FFE4
	mov r0, #0xf0
_0219FFE4:
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	bl sub_021A4808
	add r4, #0x32
	strb r0, [r4]
_0219FFF0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219ffb0

	thumb_func_start ovy310_219fff4
ovy310_219fff4: ; 0x0219FFF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A0038
	bl sub_0219FCA0
	add r1, r0, #0
	mov r0, #0x17
	mvn r0, r0
	cmp r1, r0
	bge _021A000E
	add r1, r0, #0
_021A000E:
	cmp r1, #0x48
	ble _021A0014
	mov r1, #0x48
_021A0014:
	ldr r0, [r4, #4]
	bl sub_021A481C
	ldr r1, [r4, #0x34]
	cmp r1, #0
	bge _021A0022
	mov r1, #0
_021A0022:
	cmp r1, #0xf0
	ble _021A0028
	mov r1, #0xf0
_021A0028:
	ldr r0, [r4, #4]
	bl sub_021A4818
	ldr r0, [r4, #4]
	add r4, #0x32
	ldrb r1, [r4]
	bl sub_021A4814
_021A0038:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_219fff4

	thumb_func_start ovy310_21a003c
ovy310_21a003c: ; 0x021A003C
	push {r3, lr}
	bl sub_0219FFA8
	bl sub_021A4410
	pop {r3, pc}
	thumb_func_end ovy310_21a003c

	thumb_func_start sub_021A0048
sub_021A0048: ; 0x021A0048
	add r0, #0x30
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0048

	thumb_func_start sub_021A0050
sub_021A0050: ; 0x021A0050
	add r0, #0x31
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0050

	thumb_func_start sub_021A0058
sub_021A0058: ; 0x021A0058
	add r0, #0x31
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0058

	thumb_func_start ovy310_21a0060
ovy310_21a0060: ; 0x021A0060
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A0048
	cmp r4, r0
	bhs _021A0070
	mov r0, #1
	pop {r4, pc}
_021A0070:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy310_21a0060

	thumb_func_start sub_021A0074
sub_021A0074: ; 0x021A0074
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xf8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0074

	thumb_func_start sub_021A0080
sub_021A0080: ; 0x021A0080
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021A0080

	thumb_func_start sub_021A008C
sub_021A008C: ; 0x021A008C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021A008C

	thumb_func_start sub_021A0098
sub_021A0098: ; 0x021A0098
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021A00A8 ; =sub_0202B098
	add r1, r2, #0
	bx r3
	.align 2, 0
_021A00A8: .word sub_0202B098
	thumb_func_end sub_021A0098

	thumb_func_start sub_021A00AC
sub_021A00AC: ; 0x021A00AC
	lsl r2, r1, #2
	ldr r1, _021A00C0 ; =0x021A6A80
	ldr r1, [r1, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	nop
_021A00C0: .word 0x021A6A80
	thumb_func_end sub_021A00AC

	thumb_func_start ovy310_21a00c4
ovy310_21a00c4: ; 0x021A00C4
	push {r3, lr}
	ldr r1, _021A00D8 ; =0x00000EC4
	ldr r3, _021A00DC ; =0x021A77FC
	str r1, [sp]
	mov r1, #0x5b
	lsl r1, r1, #2
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	.align 2, 0
_021A00D8: .word 0x00000EC4
_021A00DC: .word 0x021A77FC
	thumb_func_end ovy310_21a00c4

	thumb_func_start ovy310_21a00e0
ovy310_21a00e0: ; 0x021A00E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r0, #0x56
	str r4, [r5, #4]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x24]
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xf
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x32
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x33
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x30
	strb r4, [r0]
	add r0, r5, #0
	mov r6, #0xff
	add r0, #0x31
	str r4, [r5, #0x2c]
	strb r6, [r0]
	bl GFL_VBlankGetTCBMgr
	mov r1, #0xff
	add r1, #0x51
	str r0, [r5, r1]
	mov r0, #0xff
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
	str r4, [r5, #0x48]
	add r0, #0x5d
	str r4, [r5, r0]
	mov r0, #0xff
	add r0, #0x61
	str r4, [r5, r0]
	mov r0, #0xff
	add r0, #0x69
	str r4, [r5, r0]
	mov r0, #0xff
	add r0, #0x65
	str r4, [r5, r0]
	add r6, #0x55
	add r0, r5, #0
	str r4, [r5, r6]
	bl sub_021A02B8
	add r0, r5, #0
	bl sub_021A027C
	add r0, r5, #0
	bl sub_021A023C
	add r0, r5, #0
	bl sub_021A06D8
	add r0, r5, #0
	bl ovy310_21a08b8
	add r0, r5, #0
	bl ovy310_21a0920
	add r0, r5, #0
	bl sub_021A0748
	add r0, r5, #0
	bl sub_021A0DE0
	add r0, r5, #0
	bl ovy310_21a09e4
	add r0, r5, #0
	bl sub_021A0E78
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a00e0

	thumb_func_start sub_021A0184
sub_021A0184: ; 0x021A0184
	ldr r3, _021A0188 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A0188: .word GFL_HeapFree
	thumb_func_end sub_021A0184

	thumb_func_start ovy310_21a018c
ovy310_21a018c: ; 0x021A018C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0219FF94
	bl sub_02017394
	mov r1, #0xbf
	add r4, r0, #0
	mov r5, #1
	bl sub_020191AC
	cmp r0, #1
	bne _021A01A8
	add r5, r5, #1
_021A01A8:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020191AC
	cmp r0, #1
	bne _021A01B6
	add r5, r5, #1
_021A01B6:
	add r0, r4, #0
	mov r1, #0xc1
	bl sub_020191AC
	cmp r0, #1
	bne _021A01C4
	add r5, r5, #1
_021A01C4:
	add r0, r4, #0
	mov r1, #0xc2
	bl sub_020191AC
	cmp r0, #1
	bne _021A01D2
	add r5, r5, #1
_021A01D2:
	add r0, r4, #0
	mov r1, #0xc3
	bl sub_020191AC
	cmp r0, #1
	bne _021A01E0
	add r5, r5, #1
_021A01E0:
	add r0, r4, #0
	mov r1, #0xc4
	bl sub_020191AC
	cmp r0, #1
	bne _021A01EE
	add r5, r5, #1
_021A01EE:
	add r0, r4, #0
	mov r1, #0xc5
	bl sub_020191AC
	cmp r0, #1
	bne _021A01FC
	add r5, r5, #1
_021A01FC:
	add r0, r4, #0
	mov r1, #0xc6
	bl sub_020191AC
	cmp r0, #1
	bne _021A020A
	add r5, r5, #1
_021A020A:
	add r0, r4, #0
	mov r1, #0xc7
	bl sub_020191AC
	cmp r0, #1
	bne _021A0218
	add r5, r5, #1
_021A0218:
	add r6, #0x30
	strb r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a018c

	thumb_func_start ovy310_21a0220
ovy310_21a0220: ; 0x021A0220
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #8]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0xc]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy310_21a0220

	thumb_func_start sub_021A023C
sub_021A023C: ; 0x021A023C
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A023C

	thumb_func_start sub_021A0244
sub_021A0244: ; 0x021A0244
	ldr r0, [r0, #0xc]
	ldr r3, _021A024C ; =sub_02022DA8
	bx r3
	nop
_021A024C: .word sub_02022DA8
	thumb_func_end sub_021A0244

	thumb_func_start ovy310_21a0250
ovy310_21a0250: ; 0x021A0250
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A0278 ; =0x021A6A90
	add r5, r0, #0
	mov r4, #0
_021A0258:
	lsl r6, r4, #2
	ldr r2, [r7, r6]
	ldrh r3, [r5, #8]
	lsl r2, r2, #0x10
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	add r1, r5, r6
	add r4, r4, #1
	str r0, [r1, #0x10]
	cmp r4, #2
	blt _021A0258
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0278: .word 0x021A6A90
	thumb_func_end ovy310_21a0250

	thumb_func_start sub_021A027C
sub_021A027C: ; 0x021A027C
	mov r3, #0
	add r2, r3, #0
_021A0280:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x10]
	cmp r3, #2
	blt _021A0280
	bx lr
	.align 2, 0
	thumb_func_end sub_021A027C

	thumb_func_start ovy310_21a0290
ovy310_21a0290: ; 0x021A0290
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0296:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl GFL_MsgDataFree
	add r4, r4, #1
	cmp r4, #2
	blt _021A0296
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a0290

	thumb_func_start ovy310_21a02a8
ovy310_21a02a8: ; 0x021A02A8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	mov r0, #0xa
	bl ovy310_21a4820
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ovy310_21a02a8

	thumb_func_start sub_021A02B8
sub_021A02B8: ; 0x021A02B8
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A02B8

	thumb_func_start sub_021A02C0
sub_021A02C0: ; 0x021A02C0
	ldr r0, [r0, #0x18]
	ldr r3, _021A02C8 ; =ovy310_21a4854
	bx r3
	nop
_021A02C8: .word ovy310_21a4854
	thumb_func_end sub_021A02C0

	thumb_func_start ovy310_21a02cc
ovy310_21a02cc: ; 0x021A02CC
	push {r3, r4, r5, r6}
	ldr r1, _021A035C ; =0x021A6ACA
	mov r4, #0
_021A02D2:
	lsl r3, r4, #2
	ldrb r6, [r1, r3]
	add r5, r0, r3
	add r5, #0x5a
	strb r6, [r5]
	add r2, r1, r3
	add r5, r0, r3
	ldrb r6, [r2, #1]
	add r5, #0x5b
	add r4, r4, #1
	strb r6, [r5]
	add r5, r0, r3
	ldrb r6, [r2, #2]
	add r5, #0x58
	strb r6, [r5]
	ldrb r5, [r2, #3]
	add r2, r0, r3
	add r2, #0x59
	strb r5, [r2]
	cmp r4, #3
	blt _021A02D2
	ldr r1, _021A0360 ; =0x021A6BA8
	mov r4, #0
_021A0300:
	lsl r3, r4, #2
	ldrb r6, [r1, r3]
	add r5, r0, r3
	add r5, #0x66
	strb r6, [r5]
	add r2, r1, r3
	add r5, r0, r3
	ldrb r6, [r2, #1]
	add r5, #0x67
	add r4, r4, #1
	strb r6, [r5]
	add r5, r0, r3
	ldrb r6, [r2, #2]
	add r5, #0x64
	strb r6, [r5]
	ldrb r5, [r2, #3]
	add r2, r0, r3
	add r2, #0x65
	strb r5, [r2]
	cmp r4, #0xb
	blt _021A0300
	ldr r1, _021A0364 ; =0x021A6A88
	mov r4, #0
_021A032E:
	lsl r3, r4, #2
	ldrb r6, [r1, r3]
	add r5, r0, r3
	add r5, #0x92
	strb r6, [r5]
	add r2, r1, r3
	add r5, r0, r3
	ldrb r6, [r2, #1]
	add r5, #0x93
	add r4, r4, #1
	strb r6, [r5]
	add r5, r0, r3
	ldrb r6, [r2, #2]
	add r5, #0x90
	strb r6, [r5]
	ldrb r5, [r2, #3]
	add r2, r0, r3
	add r2, #0x91
	strb r5, [r2]
	cmp r4, #2
	blt _021A032E
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021A035C: .word 0x021A6ACA
_021A0360: .word 0x021A6BA8
_021A0364: .word 0x021A6A88
	thumb_func_end ovy310_21a02cc

	thumb_func_start ovy310_21a0368
ovy310_21a0368: ; 0x021A0368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021A040C ; =0x021A6AD8
	bl GFL_BGSysSetLCDConfig
	ldr r1, _021A0410 ; =0x021A6B28
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A0414 ; =0x021A6B48
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A0418 ; =0x021A6B08
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A041C ; =0x021A6B68
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A0420 ; =0x021A6B88
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	mov r4, #5
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	ldr r0, _021A0424 ; =0x04001050
	mov r1, #2
	mov r2, #1
	mov r3, #0x10
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _021A0428 ; =0x04000050
	mov r1, #4
	mov r2, #2
	mov r3, #0x10
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldrh r0, [r5, #8]
	bl BmpWin_InitAllocator
	pop {r3, r4, r5, pc}
	nop
_021A040C: .word 0x021A6AD8
_021A0410: .word 0x021A6B28
_021A0414: .word 0x021A6B48
_021A0418: .word 0x021A6B08
_021A041C: .word 0x021A6B68
_021A0420: .word 0x021A6B88
_021A0424: .word 0x04001050
_021A0428: .word 0x04000050
	thumb_func_end ovy310_21a0368

	thumb_func_start ovy310_21a042c
ovy310_21a042c: ; 0x021A042C
	push {r3, lr}
	bl sub_020480A8
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a042c

	thumb_func_start ovy310_21a0454
ovy310_21a0454: ; 0x021A0454
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r2, [r4, #8]
	ldr r1, _021A04AC ; =0x00007FFF
	mov r0, #0xbd
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #8]
	mov r1, #0xd
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #6
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #6
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021A04AC: .word 0x00007FFF
	thumb_func_end ovy310_21a0454

	thumb_func_start sub_021A04B0
sub_021A04B0: ; 0x021A04B0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A04B0

	thumb_func_start ovy310_21a04b4
ovy310_21a04b4: ; 0x021A04B4
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #7
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a04b4

	thumb_func_start sub_021A04CC
sub_021A04CC: ; 0x021A04CC
	ldr r3, _021A04D8 ; =sub_02045264
	mov r0, #7
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021A04D8: .word sub_02045264
	thumb_func_end sub_021A04CC

	thumb_func_start ovy310_21a04dc
ovy310_21a04dc: ; 0x021A04DC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r2, [r4, #8]
	ldr r1, _021A0534 ; =0x00007FFF
	mov r0, #0xbd
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #8]
	mov r1, #3
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #0
	bl sub_02045B7C
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021A0534: .word 0x00007FFF
	thumb_func_end ovy310_21a04dc

	thumb_func_start sub_021A0538
sub_021A0538: ; 0x021A0538
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0538

	thumb_func_start ovy310_21a053c
ovy310_21a053c: ; 0x021A053C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r2, [r5, #8]
	ldr r1, _021A05A4 ; =0x00007FFF
	mov r0, #0xbd
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A0048
	lsl r1, r0, #1
	add r4, r0, r1
	ldrh r2, [r5, #8]
	add r0, r6, #0
	mov r1, #5
	bl sub_0204AB1C
	add r1, sp, #8
	add r5, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #2
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #2
	bl sub_02045B7C
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A05A4: .word 0x00007FFF
	thumb_func_end ovy310_21a053c

	thumb_func_start sub_021A05A8
sub_021A05A8: ; 0x021A05A8
	bx lr
	.align 2, 0
	thumb_func_end sub_021A05A8

	thumb_func_start ovy310_21a05ac
ovy310_21a05ac: ; 0x021A05AC
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #3
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a05ac

	thumb_func_start sub_021A05C4
sub_021A05C4: ; 0x021A05C4
	ldr r3, _021A05D0 ; =sub_02045264
	mov r0, #3
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021A05D0: .word sub_02045264
	thumb_func_end sub_021A05C4

	thumb_func_start ovy310_21a05d4
ovy310_21a05d4: ; 0x021A05D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r7, #0
	add r6, sp, #8
_021A05DE:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021A06D0 ; =0x021A6DE0
	add r4, r0, r1
	ldrb r0, [r0, r1]
	ldr r2, [r4, #0xc]
	strb r0, [r6, #0x10]
	ldrb r0, [r4, #1]
	lsl r2, r2, #2
	add r2, r5, r2
	strb r0, [r6, #0x11]
	ldrb r0, [r4, #2]
	strb r0, [r6, #0x12]
	ldrb r0, [r4, #3]
	strb r0, [r6, #0x13]
	ldrb r0, [r4, #4]
	strb r0, [r6, #0x14]
	ldrb r0, [r4, #5]
	strb r0, [r6, #0x15]
	ldrb r0, [r4, #6]
	strb r0, [r6, #0x16]
	ldrb r0, [r4, #7]
	strb r0, [r6, #0x17]
	ldrb r0, [r4, #8]
	strb r0, [r6, #0x18]
	ldrb r0, [r4, #9]
	strb r0, [r6, #0x19]
	ldrb r0, [r4, #0xa]
	strb r0, [r6, #0x1a]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x24]
	lsl r0, r7, #2
	str r0, [sp]
	ldrh r3, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r2, #0x10]
	add r0, sp, #0x18
	bl ovy310_21a490c
	ldr r1, [sp]
	add r1, r5, r1
	add r1, #0xdc
	str r0, [r1]
	ldr r0, [sp]
	ldr r1, [r4, #0x10]
	add r0, r5, r0
	add r0, #0xdc
	ldr r0, [r0]
	bl ovy310_21a4974
	add r7, r7, #1
	cmp r7, #7
	blt _021A05DE
	add r0, r5, #0
	mov r7, #0
	bl sub_021A0048
	cmp r0, #0
	ble _021A06CA
	add r6, sp, #8
_021A0658:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021A06D4 ; =0x021A6F38
	add r4, r0, r1
	ldrb r0, [r0, r1]
	ldr r2, [r4, #0xc]
	strb r0, [r6]
	ldrb r0, [r4, #1]
	lsl r2, r2, #2
	add r2, r5, r2
	strb r0, [r6, #1]
	ldrb r0, [r4, #2]
	strb r0, [r6, #2]
	ldrb r0, [r4, #3]
	strb r0, [r6, #3]
	ldrb r0, [r4, #4]
	strb r0, [r6, #4]
	ldrb r0, [r4, #5]
	strb r0, [r6, #5]
	ldrb r0, [r4, #6]
	strb r0, [r6, #6]
	ldrb r0, [r4, #7]
	strb r0, [r6, #7]
	ldrb r0, [r4, #8]
	strb r0, [r6, #8]
	ldrb r0, [r4, #9]
	strb r0, [r6, #9]
	ldrb r0, [r4, #0xa]
	strb r0, [r6, #0xa]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	lsl r0, r7, #2
	str r0, [sp, #4]
	ldrh r3, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r2, #0x10]
	add r0, sp, #8
	bl ovy310_21a490c
	ldr r1, [sp, #4]
	add r1, r5, r1
	add r1, #0xb4
	str r0, [r1]
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x10]
	add r0, r5, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4974
	add r0, r5, #0
	add r7, r7, #1
	bl sub_021A0048
	cmp r7, r0
	blt _021A0658
_021A06CA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A06D0: .word 0x021A6DE0
_021A06D4: .word 0x021A6F38
	thumb_func_end ovy310_21a05d4

	thumb_func_start sub_021A06D8
sub_021A06D8: ; 0x021A06D8
	mov r2, #0
	add r3, r2, #0
_021A06DC:
	lsl r1, r2, #2
	add r1, r0, r1
	add r1, #0xdc
	add r2, r2, #1
	str r3, [r1]
	cmp r2, #7
	blt _021A06DC
	mov r2, #0
_021A06EC:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0xb4
	add r3, r3, #1
	str r2, [r1]
	cmp r3, #0xa
	blt _021A06EC
	bx lr
	thumb_func_end sub_021A06D8

	thumb_func_start ovy310_21a06fc
ovy310_21a06fc: ; 0x021A06FC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_021A0704:
	lsl r7, r6, #2
	add r0, r5, r7
	add r0, #0xdc
	ldr r0, [r0]
	bl ovy310_21a4960
	add r0, r5, r7
	add r0, #0xdc
	add r6, r6, #1
	str r4, [r0]
	cmp r6, #7
	blt _021A0704
	add r0, r5, #0
	bl sub_021A0048
	cmp r0, #0
	ble _021A0746
	mov r7, #0
_021A0728:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xb4
	ldr r0, [r0]
	bl ovy310_21a4960
	add r0, r5, r6
	add r0, #0xb4
	str r7, [r0]
	add r0, r5, #0
	add r4, r4, #1
	bl sub_021A0048
	cmp r4, r0
	blt _021A0728
_021A0746:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a06fc

	thumb_func_start sub_021A0748
sub_021A0748: ; 0x021A0748
	mov r3, #0
	add r2, r3, #0
_021A074C:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0xf8
	add r3, r3, #1
	str r2, [r1]
	cmp r3, #7
	blt _021A074C
	bx lr
	thumb_func_end sub_021A0748

	thumb_func_start ovy310_21a075c
ovy310_21a075c: ; 0x021A075C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r4, [r5, #8]
	ldr r1, _021A07C4 ; =0x00007FFF
	mov r0, #0xbd
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	mov r1, #0xf
	mov r2, #0
	mov r3, #1
	str r4, [sp]
	bl Oam_LoadNCGRFile
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	str r4, [sp]
	bl sub_0204BBA0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	mov r6, #0x11
	bl Oam_LoadNCERFile
	mov r2, #0x11
	ldr r1, [sp, #4]
	add r2, #0xf7
	str r1, [r5, r2]
	mov r2, #0x11
	ldr r1, [sp, #8]
	add r2, #0xfb
	str r1, [r5, r2]
	add r6, #0xff
	str r0, [r5, r6]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A07C4: .word 0x00007FFF
	thumb_func_end ovy310_21a075c

	thumb_func_start ovy310_21a07c8
ovy310_21a07c8: ; 0x021A07C8
	push {r3, r4, r5, lr}
	mov r4, #0x42
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204B98C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a07c8

	thumb_func_start ovy310_21a07e8
ovy310_21a07e8: ; 0x021A07E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r4, [r5, #8]
	ldr r1, _021A0888 ; =0x00007FFF
	mov r0, #0xbd
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0xf
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	bl Oam_LoadNCERFile
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0x52
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0x14]
	mov r1, #0x1f
	mov r2, #0
	mov r3, #0x80
	mov r4, #0x80
	bl Oam_LoadNCLRFile
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl GFL_ArcToolFree
	add r0, r5, #0
	add r0, #0xf8
	str r7, [r0]
	add r1, r5, #0
	ldr r0, [sp, #0xc]
	add r1, #0xfc
	str r0, [r1]
	mov r1, #0x80
	ldr r0, [sp, #0x10]
	add r1, #0x80
	str r0, [r5, r1]
	add r4, #0x84
	str r6, [r5, r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0888: .word 0x00007FFF
	thumb_func_end ovy310_21a07e8

	thumb_func_start ovy310_21a088c
ovy310_21a088c: ; 0x021A088C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_0204BCD0
	mov r5, #1
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	bl sub_0204BE64
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BCD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a088c

	thumb_func_start ovy310_21a08b8
ovy310_21a08b8: ; 0x021A08B8
	push {r3, r4}
	mov r4, #0
	mov r1, #0x45
	add r3, r4, #0
	lsl r1, r1, #2
_021A08C2:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #3
	blt _021A08C2
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a08b8

	thumb_func_start ovy310_21a08d4
ovy310_21a08d4: ; 0x021A08D4
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A08FC ; =0x021A6A78
	ldr r7, _021A0900 ; =0x021A6A74
	add r5, r0, #0
	mov r4, #0
_021A08DE:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	ldrb r1, [r7, r4]
	ldrh r2, [r5, #8]
	bl sub_0204BF1C
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x45
	lsl r1, r1, #2
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #3
	blt _021A08DE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A08FC: .word 0x021A6A78
_021A0900: .word 0x021A6A74
	thumb_func_end ovy310_21a08d4

	thumb_func_start ovy310_21a0904
ovy310_21a0904: ; 0x021A0904
	push {r4, r5, r6, lr}
	mov r6, #0x45
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A090E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BF98
	add r4, r4, #1
	cmp r4, #3
	blt _021A090E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a0904

	thumb_func_start ovy310_21a0920
ovy310_21a0920: ; 0x021A0920
	push {r3, r4}
	mov r4, #0
	mov r1, #0x12
	add r3, r4, #0
	lsl r1, r1, #4
_021A092A:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #3
	blt _021A092A
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a0920

	thumb_func_start ovy310_21a093c
ovy310_21a093c: ; 0x021A093C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r6, #0
	add r7, sp, #0x1c
_021A0946:
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021A09C4 ; =0x021A6C24
	add r4, r0, r1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #8]
	strh r0, [r7]
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r7, #2]
	mov r0, #4
	ldrsh r0, [r4, r0]
	strh r0, [r7, #4]
	ldrb r0, [r4, #6]
	strb r0, [r7, #6]
	ldrb r0, [r4, #7]
	strb r0, [r7, #7]
	add r0, r5, #0
	bl sub_021A0080
	str r0, [sp, #0x10]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_021A0074
	str r0, [sp, #0x14]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_021A0074
	str r0, [sp, #0x18]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_021A0074
	add r3, r0, #0
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	str r0, [sp]
	ldrh r0, [r4, #0x18]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldrh r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl Oam_CreateSprite
	mov r1, #0x12
	ldr r2, [sp, #0xc]
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r1, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #3
	blt _021A0946
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A09C4: .word 0x021A6C24
	thumb_func_end ovy310_21a093c

	thumb_func_start ovy310_21a09c8
ovy310_21a09c8: ; 0x021A09C8
	push {r4, r5, r6, lr}
	mov r6, #0x12
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #4
_021A09D2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #3
	blt _021A09D2
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a09c8

	thumb_func_start ovy310_21a09e4
ovy310_21a09e4: ; 0x021A09E4
	push {r3, r4}
	mov r4, #0
	mov r1, #5
	add r3, r4, #0
	lsl r1, r1, #6
_021A09EE:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #4
	blt _021A09EE
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a09e4

	thumb_func_start ovy310_21a0a00
ovy310_21a0a00: ; 0x021A0A00
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	ldr r6, _021A0A2C ; =0x021A6E88
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021A0A0C:
	mov r0, #0x2c
	mul r0, r4
	add r2, r6, r0
	ldr r1, [r2, #4]
	ldrh r3, [r5, #8]
	ldr r0, [r6, r0]
	ldr r2, [r2, #8]
	bl sub_02046E28
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #4
	blt _021A0A0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0A2C: .word 0x021A6E88
	thumb_func_end ovy310_21a0a00

	thumb_func_start ovy310_21a0a30
ovy310_21a0a30: ; 0x021A0A30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r6, #0
_021A0A38:
	mov r0, #0x2c
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021A0AE0 ; =0x021A6E88
	add r4, r0, r1
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A0AD6
	ldrh r3, [r5, #8]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	mov r2, #0
	bl sub_02046F3C
	lsl r1, r6, #2
	add r7, r5, r1
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4]
	mov r2, #0
	lsl r1, r1, #3
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	mov r3, #0
	lsl r1, r1, #3
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x1e]
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	mov r1, #5
	lsl r1, r1, #6
	ldr r1, [r7, r1]
	bl sub_02047008
	ldrb r2, [r4, #0x1d]
	ldrb r1, [r4, #0x1e]
	mov r0, #0x1f
	lsl r2, r2, #0x1b
	and r1, r0
	ldrb r0, [r4, #0x1c]
	lsr r2, r2, #0x16
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x18]
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r7, r0]
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [sp, #0x1c]
	bl GFL_HeapFree
	ldr r0, [sp, #0x18]
	bl GFL_BitmapFree
_021A0AD6:
	add r6, r6, #1
	cmp r6, #4
	blt _021A0A38
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0AE0: .word 0x021A6E88
	thumb_func_end ovy310_21a0a30

	thumb_func_start ovy310_21a0ae4
ovy310_21a0ae4: ; 0x021A0AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	ldr r4, _021A0BD8 ; =0x021A6D68
	add r7, r0, #0
	add r3, sp, #0x24
	mov r2, #0xf
_021A0AF0:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A0AF0
	ldr r0, _021A0BDC ; =0x021A6EB4
	ldr r1, _021A0BDC ; =0x021A6EB4
	mov r2, #0
	str r2, [sp, #0x20]
	ldrh r3, [r7, #8]
	ldr r0, [r0, #0x20]
	ldr r1, [r1, #0x24]
	mov r2, #0
	bl sub_02046F3C
	str r0, [sp, #0x1c]
_021A0B0E:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x28
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x24
	add r0, r0, r2
	mov r4, #0
	str r0, [sp, #0x14]
_021A0B24:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r1, #3
	add r0, r6, #0
	blx sub_0208D65C
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #3
	blx sub_0208D65C
	add r3, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0x51
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [r7, r1]
	lsl r2, r5, #3
	lsl r3, r3, #3
	bl sub_02047008
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A0B24
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021A0B0E
	ldr r0, [sp, #0x1c]
	bl GFL_BitmapFree
	ldr r0, _021A0BDC ; =0x021A6EB4
	ldrb r1, [r0, #0x1e]
	mov r0, #0x1f
	and r0, r1
	ldr r1, _021A0BDC ; =0x021A6EB4
	ldrb r1, [r1, #0x1c]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x11
	ldr r1, _021A0BDC ; =0x021A6EB4
	ldrb r1, [r1, #0x1d]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _021A0BDC ; =0x021A6EB4
	ldr r1, _021A0BDC ; =0x021A6EB4
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	lsl r0, r0, #2
	add r0, r7, r0
	ldr r0, [r0, #0x10]
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	ldr r1, _021A0BDC ; =0x021A6EB4
	str r0, [sp]
	ldr r2, _021A0BDC ; =0x021A6EB4
	mov r0, #0x51
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r4, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r5, #0
	bl sub_02021D28
	add r0, r5, #0
	bl GFL_HeapFree
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_021A0BD8: .word 0x021A6D68
_021A0BDC: .word 0x021A6EB4
	thumb_func_end ovy310_21a0ae4

	thumb_func_start ovy310_21a0be0
ovy310_21a0be0: ; 0x021A0BE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	ldr r4, _021A0CD4 ; =0x021A6CF0
	add r7, r0, #0
	add r3, sp, #0x24
	mov r2, #0xf
_021A0BEC:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A0BEC
	ldr r0, _021A0CD8 ; =0x021A6EE0
	ldr r1, _021A0CD8 ; =0x021A6EE0
	mov r2, #0
	str r2, [sp, #0x20]
	ldrh r3, [r7, #8]
	ldr r0, [r0, #0x20]
	ldr r1, [r1, #0x24]
	mov r2, #0
	bl sub_02046F3C
	str r0, [sp, #0x1c]
_021A0C0A:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x28
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x24
	add r0, r0, r2
	mov r4, #0
	str r0, [sp, #0x14]
_021A0C20:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r1, #3
	add r0, r6, #0
	blx sub_0208D65C
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #3
	blx sub_0208D65C
	add r3, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0x52
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [r7, r1]
	lsl r2, r5, #3
	lsl r3, r3, #3
	bl sub_02047008
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A0C20
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021A0C0A
	ldr r0, [sp, #0x1c]
	bl GFL_BitmapFree
	ldr r0, _021A0CD8 ; =0x021A6EE0
	ldrb r1, [r0, #0x1e]
	mov r0, #0x1f
	and r0, r1
	ldr r1, _021A0CD8 ; =0x021A6EE0
	ldrb r1, [r1, #0x1c]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x11
	ldr r1, _021A0CD8 ; =0x021A6EE0
	ldrb r1, [r1, #0x1d]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _021A0CD8 ; =0x021A6EE0
	ldr r1, _021A0CD8 ; =0x021A6EE0
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	lsl r0, r0, #2
	add r0, r7, r0
	ldr r0, [r0, #0x10]
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	ldr r1, _021A0CD8 ; =0x021A6EE0
	str r0, [sp]
	ldr r2, _021A0CD8 ; =0x021A6EE0
	mov r0, #0x52
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r4, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r5, #0
	bl sub_02021D28
	add r0, r5, #0
	bl GFL_HeapFree
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_021A0CD4: .word 0x021A6CF0
_021A0CD8: .word 0x021A6EE0
	thumb_func_end ovy310_21a0be0

	thumb_func_start ovy310_21a0cdc
ovy310_21a0cdc: ; 0x021A0CDC
	push {r4, r5, r6, lr}
	mov r6, #5
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #6
_021A0CE6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_BitmapFree
	add r4, r4, #1
	cmp r4, #4
	blt _021A0CE6
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a0cdc

	thumb_func_start ovy310_21a0cf8
ovy310_21a0cf8: ; 0x021A0CF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0x47
	lsl r4, r4, #2
	ldrh r0, [r5, #8]
	ldr r1, [r5, r4]
	bl sub_0202AE5C
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a0cf8

	thumb_func_start sub_021A0D10
sub_021A0D10: ; 0x021A0D10
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A0D1C ; =sub_0202AEAC
	bx r3
	nop
_021A0D1C: .word sub_0202AEAC
	thumb_func_end sub_021A0D10

	thumb_func_start ovy310_21a0d20
ovy310_21a0d20: ; 0x021A0D20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	sub r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp, #8]
	sub r0, #0x10
	str r0, [sp, #8]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp, #4]
	sub r0, #0x10
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	sub r0, #0x10
	mov r4, #0
	str r0, [sp]
_021A0D50:
	lsl r0, r4, #2
	add r6, r7, r0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	mul r1, r0
	ldr r0, _021A0DC0 ; =0x021A6BD4
	add r5, r0, r1
	ldrsh r1, [r0, r1]
	add r0, sp, #0x10
	strh r1, [r0, #4]
	mov r0, #2
	ldrsh r1, [r5, r0]
	add r0, sp, #0x10
	strh r1, [r0, #6]
	ldr r1, [r5, #4]
	add r0, r7, #0
	bl sub_021A0074
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	ldrb r1, [r5, #0xc]
	str r0, [sp, #0x1c]
	add r0, sp, #0x10
	strb r1, [r0, #0x10]
	ldrb r1, [r5, #0xd]
	strb r1, [r0, #0x11]
	ldrh r1, [r5, #0xe]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	ldr r0, [r7, r0]
	bl sub_0202AEC4
	ldr r1, [sp, #8]
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0202B098
	ldr r0, [sp]
	ldr r0, [r6, r0]
	bl sub_0202B0F4
	add r4, r4, #1
	cmp r4, #4
	blt _021A0D50
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0DC0: .word 0x021A6BD4
	thumb_func_end ovy310_21a0d20

	thumb_func_start ovy310_21a0dc4
ovy310_21a0dc4: ; 0x021A0DC4
	push {r4, r5, r6, lr}
	mov r6, #0x13
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #4
_021A0DCE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0202B030
	add r4, r4, #1
	cmp r4, #4
	blt _021A0DCE
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a0dc4

	thumb_func_start sub_021A0DE0
sub_021A0DE0: ; 0x021A0DE0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
	bx lr
	thumb_func_end sub_021A0DE0

	thumb_func_start ovy310_21a0de8
ovy310_21a0de8: ; 0x021A0DE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	bl sub_02026DC0
	add r1, r5, #0
	mov r4, #2
	add r1, #0x98
	lsl r4, r4, #8
	str r0, [r1]
	ldrh r3, [r5, #8]
	mov r1, #0
	add r2, r4, #0
	bl sub_02026E04
	add r0, r5, #0
	add r0, #0x98
	ldrh r3, [r5, #8]
	ldr r0, [r0]
	mov r1, #2
	add r2, r4, #0
	bl sub_02026E04
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	add r5, #0x98
	ldr r0, [r5]
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a0de8

	thumb_func_start ovy310_21a0e38
ovy310_21a0e38: ; 0x021A0E38
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl sub_02026E48
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #2
	bl sub_02026E48
	add r4, #0x98
	ldr r0, [r4]
	bl sub_02026DE8
	pop {r4, pc}
	thumb_func_end ovy310_21a0e38

	thumb_func_start ovy310_21a0e5c
ovy310_21a0e5c: ; 0x021A0E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0E62:
	ldrh r0, [r5, #8]
	bl ovy310_21a63e0
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0x9c
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #6
	blt _021A0E62
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a0e5c

	thumb_func_start sub_021A0E78
sub_021A0E78: ; 0x021A0E78
	mov r3, #0
	add r2, r3, #0
_021A0E7C:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0x9c
	add r3, r3, #1
	str r2, [r1]
	cmp r3, #6
	blt _021A0E7C
	bx lr
	thumb_func_end sub_021A0E78

	thumb_func_start ovy310_21a0e8c
ovy310_21a0e8c: ; 0x021A0E8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0E92:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl ovy310_21a63f0
	add r4, r4, #1
	cmp r4, #6
	blt _021A0E92
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a0e8c

	thumb_func_start ovy310_21a0ea8
ovy310_21a0ea8: ; 0x021A0EA8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A0ED4 ; =0x021A6C78
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x14
_021A0EB2:
	add r1, r4, #0
	mul r1, r7
	add r3, r6, r1
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r2, [r3, #4]
	ldrb r3, [r3, #8]
	ldr r0, [r0]
	ldr r1, [r6, r1]
	bl ovy310_21a6400
	add r4, r4, #1
	cmp r4, #6
	blt _021A0EB2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0ED4: .word 0x021A6C78
	thumb_func_end ovy310_21a0ea8

	thumb_func_start ovy310_21a0ed8
ovy310_21a0ed8: ; 0x021A0ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0EDE:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_021A6420
	add r4, r4, #1
	cmp r4, #6
	blt _021A0EDE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a0ed8

	thumb_func_start ovy310_21a0ef4
ovy310_21a0ef4: ; 0x021A0EF4
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #1
	bl sub_021A008C
	mov r2, #0x80
	add r1, sp, #0
	strh r2, [r1]
	mov r2, #0x60
	strh r2, [r1, #2]
	add r4, r0, #0
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a0ef4

	thumb_func_start sub_021A0F20
sub_021A0F20: ; 0x021A0F20
	add r1, r0, #0
	ldrh r1, [r1, #8]
	ldr r3, _021A0F2C ; =sub_02042BA8
	mov r0, #1
	bx r3
	nop
_021A0F2C: .word sub_02042BA8
	thumb_func_end sub_021A0F20

	thumb_func_start ovy310_21a0f30
ovy310_21a0f30: ; 0x021A0F30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A0F48 ; =ovy310_219ff7c
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021A0F48: .word ovy310_219ff7c
	thumb_func_end ovy310_21a0f30

	thumb_func_start ovy310_21a0f4c
ovy310_21a0f4c: ; 0x021A0F4C
	push {r3, r4, r5, lr}
	mov r5, #0x55
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a0f4c

	thumb_func_start ovy310_21a0f60
ovy310_21a0f60: ; 0x021A0F60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A43C4
	add r6, r0, #0
	bl ovy310_21a3434
	add r4, r0, #0
	bl ovy310_21a3450
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021A316C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A3174
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a0f60

	thumb_func_start ovy310_21a0f88
ovy310_21a0f88: ; 0x021A0F88
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A3544
	add r0, r4, #0
	bl sub_021A3524
	pop {r4, pc}
	thumb_func_end ovy310_21a0f88

	thumb_func_start ovy310_21a0f98
ovy310_21a0f98: ; 0x021A0F98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0xd
	bhi _021A101A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A0FAE: ; jump table
	.short _021A0FCA - _021A0FAE - 2 ; case 0
	.short _021A0FD0 - _021A0FAE - 2 ; case 1
	.short _021A0FD6 - _021A0FAE - 2 ; case 2
	.short _021A0FDC - _021A0FAE - 2 ; case 3
	.short _021A0FE2 - _021A0FAE - 2 ; case 4
	.short _021A0FE8 - _021A0FAE - 2 ; case 5
	.short _021A0FEE - _021A0FAE - 2 ; case 6
	.short _021A0FF4 - _021A0FAE - 2 ; case 7
	.short _021A0FFA - _021A0FAE - 2 ; case 8
	.short _021A1000 - _021A0FAE - 2 ; case 9
	.short _021A1006 - _021A0FAE - 2 ; case 10
	.short _021A100C - _021A0FAE - 2 ; case 11
	.short _021A1012 - _021A0FAE - 2 ; case 12
	.short _021A1018 - _021A0FAE - 2 ; case 13
_021A0FCA:
	bl ovy310_21a1084
	b _021A101A
_021A0FD0:
	bl ovy310_21a11d4
	b _021A101A
_021A0FD6:
	bl ovy310_21a1208
	b _021A101A
_021A0FDC:
	bl ovy310_21a1584
	b _021A101A
_021A0FE2:
	bl ovy310_21a18c4
	b _021A101A
_021A0FE8:
	bl ovy310_21a19c8
	b _021A101A
_021A0FEE:
	bl ovy310_21a1a1c
	b _021A101A
_021A0FF4:
	bl ovy310_21a1a58
	b _021A101A
_021A0FFA:
	bl ovy310_21a1a90
	b _021A101A
_021A1000:
	bl ovy310_21a1bb4
	b _021A101A
_021A1006:
	bl ovy310_21a1ce4
	b _021A101A
_021A100C:
	bl ovy310_21a1d14
	b _021A101A
_021A1012:
	bl ovy310_21a1d2c
	b _021A101A
_021A1018:
	pop {r3, r4, r5, pc}
_021A101A:
	add r0, r4, #0
	bl ovy310_21a30f4
	add r0, r4, #0
	bl sub_021A3130
	mov r5, #0xf1
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A1060
	bl sub_0204B794
	add r0, r4, #0
	bl ovy310_21a2790
	sub r5, #0xf4
	ldr r0, [r4, r5]
	bl sub_021A5ADC
	add r0, r4, #0
	bl sub_021A3020
	add r0, r4, #0
	bl ovy310_21a3004
	add r0, r4, #0
	bl ovy310_21a27b8
	add r0, r4, #0
	bl ovy310_21a27e0
	ldr r0, _021A1070 ; =0x04000540
	mov r1, #0
	str r1, [r0]
_021A1060:
	add r0, r4, #0
	bl sub_021A1E38
	add r0, r4, #0
	bl ovy310_21a1e4c
	pop {r3, r4, r5, pc}
	nop
_021A1070: .word 0x04000540
	thumb_func_end ovy310_21a0f98

	thumb_func_start sub_021A1074
sub_021A1074: ; 0x021A1074
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021A1074

	thumb_func_start sub_021A107C
sub_021A107C: ; 0x021A107C
	mov r1, #0xf9
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021A107C

	thumb_func_start ovy310_21a1084
ovy310_21a1084: ; 0x021A1084
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy310_21a3534
	add r0, r4, #0
	bl ovy310_21a3558
	add r0, r4, #0
	bl ovy310_21a3594
	add r0, r4, #0
	bl ovy310_21a35e0
	add r0, r4, #0
	bl ovy310_21a3858
	add r0, r4, #0
	bl ovy310_21a29ec
	bl ovy310_21a3990
	add r0, r4, #0
	bl ovy310_21a39e0
	add r0, r4, #0
	bl ovy310_21a3ac4
	add r0, r4, #0
	bl ovy310_21a3b14
	add r0, r4, #0
	bl ovy310_21a3b3c
	add r0, r4, #0
	bl ovy310_21a3b8c
	add r0, r4, #0
	bl ovy310_21a3bd0
	add r0, r4, #0
	bl ovy310_21a3c68
	add r0, r4, #0
	bl ovy310_21a3ce0
	add r0, r4, #0
	bl ovy310_21a3db8
	add r0, r4, #0
	bl ovy310_21a3e20
	add r0, r4, #0
	bl ovy310_21a3ee4
	add r0, r4, #0
	bl ovy310_21a3f14
	add r0, r4, #0
	bl ovy310_21a3fc8
	add r0, r4, #0
	bl ovy310_21a40e0
	add r0, r4, #0
	bl ovy310_21a4108
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	bl ovy310_21a361c
	add r0, r4, #0
	bl ovy310_21a38a4
	add r0, r4, #0
	bl ovy310_21a3918
	add r0, r4, #0
	bl ovy310_21a41d4
	add r0, r4, #0
	bl ovy310_21a4254
	add r0, r4, #0
	bl ovy310_21a4290
	add r0, r4, #0
	bl ovy310_21a42ec
	add r0, r4, #0
	bl sub_021A42DC
	add r0, r4, #0
	bl sub_021A2AF4
	add r0, r4, #0
	bl ovy310_21a2b10
	add r0, r4, #0
	bl ovy310_21a2b30
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2d80
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a2e9c
	add r0, r4, #0
	bl sub_021A2F7C
	add r0, r4, #0
	mov r1, #0
	bl sub_021A2FB4
	add r0, r4, #0
	mov r1, #7
	bl sub_021A2FB4
	add r0, r4, #0
	bl ovy310_21a24a0
	mov r0, #0xf1
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl ovy310_21a22a4
	add r0, r4, #0
	bl ovy310_21a1e14
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_021A1E40
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1E40
	cmp r5, #3
	bne _021A11CA
	add r0, r4, #0
	bl ovy310_21a22dc
_021A11CA:
	add r0, r4, #0
	bl sub_021A1DF0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1084

	thumb_func_start ovy310_21a11d4
ovy310_21a11d4: ; 0x021A11D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A11E6
	cmp r0, #1
	beq _021A11F4
	pop {r4, pc}
_021A11E6:
	add r0, r4, #0
	bl ovy310_21a4330
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A11F4:
	add r0, r4, #0
	bl ovy310_21a4354
	cmp r0, #0
	beq _021A1204
	add r0, r4, #0
	bl sub_021A1DF0
_021A1204:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a11d4

	thumb_func_start ovy310_21a1208
ovy310_21a1208: ; 0x021A1208
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203DF20
	bl GCTX_HIDGetPressedKeys
	ldr r7, _021A13A8 ; =0x000002FE
	add r6, r0, #0
	add r0, r5, r7
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xca
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1278
	add r0, r7, #0
	add r0, #0xda
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1278
	add r7, #0xd6
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A1278
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #8
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A1278:
	add r0, r5, #0
	bl ovy310_21a3178
	cmp r0, #0
	bne _021A1288
	ldr r0, [sp]
	cmp r0, #0
	bne _021A12BC
_021A1288:
	add r0, r5, #0
	mov r1, #1
	bl sub_021A1DFC
	add r0, r5, #0
	bl sub_021A25F4
	ldr r0, _021A13AC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xc
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A12BC:
	mov r0, #0x40
	tst r0, r6
	bne _021A12DC
	mov r0, #0x80
	tst r0, r6
	bne _021A12DC
	mov r0, #0x20
	tst r0, r6
	bne _021A12DC
	mov r0, #0x10
	tst r0, r6
	bne _021A12DC
	mov r7, #1
	add r0, r6, #0
	tst r0, r7
	beq _021A12F8
_021A12DC:
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A12F8:
	cmp r4, #6
	bne _021A134E
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A134E
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A134E
	mov r0, #0xf2
	lsl r0, r0, #2
	add r0, r0, #4
	str r7, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A134E:
	cmp r4, #7
	bne _021A13BA
	mov r4, #0xf2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A13A2
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A13A2
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A13A2:
	ldr r0, _021A13B0 ; =0x00000557
	b _021A13B4
	nop
_021A13A8: .word 0x000002FE
_021A13AC: .word 0x00000551
_021A13B0: .word 0x00000557
_021A13B4:
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021A13BA:
	cmp r4, #2
	bne _021A1418
	mov r4, #0xf2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A140E
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A140E
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A140E:
	add r0, r5, #0
	mov r1, #0
	bl ovy310_21a1fbc
	pop {r3, r4, r5, r6, r7, pc}
_021A1418:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1454
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A1454
	cmp r4, #3
	bne _021A1454
	add r0, r5, #0
	mov r1, #1
	bl ovy310_21a1fbc
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A1454:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1490
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A1490
	cmp r4, #4
	bne _021A1490
	add r0, r5, #0
	mov r1, #2
	bl ovy310_21a1fbc
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A1490:
	cmp r4, #5
	bne _021A14B8
	add r0, r5, #0
	mov r1, #3
	bl ovy310_21a1fbc
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A14B8:
	cmp r4, #0
	bne _021A14FE
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A14E6
	cmp r0, #1
	beq _021A14EE
	cmp r0, #3
	beq _021A14F6
	pop {r3, r4, r5, r6, r7, pc}
_021A14E6:
	add r0, r5, #0
	bl ovy310_21a20ac
	pop {r3, r4, r5, r6, r7, pc}
_021A14EE:
	add r0, r5, #0
	bl ovy310_21a215c
	pop {r3, r4, r5, r6, r7, pc}
_021A14F6:
	add r0, r5, #0
	bl ovy310_21a21b0
	pop {r3, r4, r5, r6, r7, pc}
_021A14FE:
	cmp r4, #1
	bne _021A1544
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A152C
	cmp r0, #1
	beq _021A1534
	cmp r0, #3
	beq _021A153C
	pop {r3, r4, r5, r6, r7, pc}
_021A152C:
	add r0, r5, #0
	bl ovy310_21a2020
	pop {r3, r4, r5, r6, r7, pc}
_021A1534:
	add r0, r5, #0
	bl ovy310_21a2138
	pop {r3, r4, r5, r6, r7, pc}
_021A153C:
	add r0, r5, #0
	bl ovy310_21a21b0
	pop {r3, r4, r5, r6, r7, pc}
_021A1544:
	mov r0, #2
	tst r0, r6
	beq _021A157C
	add r0, r5, #0
	mov r1, #0
	bl sub_021A1DFC
	add r0, r5, #0
	bl sub_021A25F4
	ldr r0, _021A1580 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xc
	bl sub_021A1E40
_021A157C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1580: .word 0x00000551
	thumb_func_end ovy310_21a1208

	thumb_func_start ovy310_21a1584
ovy310_21a1584: ; 0x021A1584
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203DF20
	bl GCTX_HIDGetPressedKeys
	ldr r7, _021A1894 ; =0x000002FE
	add r6, r0, #0
	add r0, r5, r7
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_021A43D0
	bl sub_0203DA0C
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xca
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A15F4
	add r0, r7, #0
	add r0, #0xda
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A15F4
	add r7, #0xd6
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A15F4
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #9
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A15F4:
	add r0, r5, #0
	bl ovy310_21a3178
	cmp r0, #0
	bne _021A1604
	ldr r0, [sp]
	cmp r0, #0
	bne _021A1638
_021A1604:
	add r0, r5, #0
	mov r1, #1
	bl sub_021A1DFC
	add r0, r5, #0
	bl sub_021A25F4
	ldr r0, _021A1898 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xc
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A1638:
	mov r0, #0x40
	tst r0, r6
	beq _021A1646
	add r0, r5, #0
	bl ovy310_21a1e90
	pop {r3, r4, r5, r6, r7, pc}
_021A1646:
	mov r0, #0x80
	tst r0, r6
	beq _021A1654
	add r0, r5, #0
	bl ovy310_21a1f28
	pop {r3, r4, r5, r6, r7, pc}
_021A1654:
	cmp r4, #6
	bne _021A16A8
	mov r7, #0xf2
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	cmp r0, #0
	bne _021A16A8
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A16A8
	mov r1, #1
	add r0, r7, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A16A8:
	cmp r4, #7
	bne _021A1704
	mov r4, #0xf2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A16FC
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A16FC
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A16FC:
	ldr r0, _021A189C ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021A1704:
	cmp r4, #2
	bne _021A1762
	mov r4, #0xf2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A1758
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A1758
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A1758:
	add r0, r5, #0
	mov r1, #0
	bl ovy310_21a1fbc
	pop {r3, r4, r5, r6, r7, pc}
_021A1762:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1784
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A1784
	cmp r4, #3
	bne _021A1784
	add r0, r5, #0
	mov r1, #1
	bl ovy310_21a1fbc
	pop {r3, r4, r5, r6, r7, pc}
_021A1784:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A17A6
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A17A6
	cmp r4, #4
	bne _021A17A6
	add r0, r5, #0
	mov r1, #2
	bl ovy310_21a1fbc
	pop {r3, r4, r5, r6, r7, pc}
_021A17A6:
	cmp r4, #5
	bne _021A17B4
	add r0, r5, #0
	mov r1, #3
	bl ovy310_21a1fbc
	pop {r3, r4, r5, r6, r7, pc}
_021A17B4:
	mov r0, #0x20
	tst r0, r6
	bne _021A17BE
	cmp r4, #0
	bne _021A17E6
_021A17BE:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A17CE
	cmp r0, #1
	beq _021A17D6
	cmp r0, #3
	beq _021A17DE
	pop {r3, r4, r5, r6, r7, pc}
_021A17CE:
	add r0, r5, #0
	bl ovy310_21a20ac
	pop {r3, r4, r5, r6, r7, pc}
_021A17D6:
	add r0, r5, #0
	bl ovy310_21a215c
	pop {r3, r4, r5, r6, r7, pc}
_021A17DE:
	add r0, r5, #0
	bl ovy310_21a21b0
	pop {r3, r4, r5, r6, r7, pc}
_021A17E6:
	mov r0, #0x10
	tst r0, r6
	bne _021A17F0
	cmp r4, #1
	bne _021A1818
_021A17F0:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A1800
	cmp r0, #1
	beq _021A1808
	cmp r0, #3
	beq _021A1810
	pop {r3, r4, r5, r6, r7, pc}
_021A1800:
	add r0, r5, #0
	bl ovy310_21a2020
	pop {r3, r4, r5, r6, r7, pc}
_021A1808:
	add r0, r5, #0
	bl ovy310_21a2138
	pop {r3, r4, r5, r6, r7, pc}
_021A1810:
	add r0, r5, #0
	bl ovy310_21a21b0
	pop {r3, r4, r5, r6, r7, pc}
_021A1818:
	mov r0, #1
	tst r0, r6
	beq _021A187A
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A187A
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A187A
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021A183C
	cmp r0, #4
	bne _021A187A
_021A183C:
	mov r0, #0xf3
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy310_21a24e8
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #4
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #6
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #7
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #5
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #3
	bl sub_021A1E40
	pop {r3, r4, r5, r6, r7, pc}
_021A187A:
	mov r0, #2
	tst r0, r6
	beq _021A18C2
	add r0, r5, #0
	mov r1, #0
	bl sub_021A1DFC
	add r0, r5, #0
	bl sub_021A25F4
	ldr r0, _021A1898 ; =0x00000551
	b _021A18A0
	nop
_021A1894: .word 0x000002FE
_021A1898: .word 0x00000551
_021A189C: .word 0x00000557
_021A18A0:
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021A1E40
	add r0, r5, #0
	mov r1, #0xc
	bl sub_021A1E40
_021A18C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a1584

	thumb_func_start ovy310_21a18c4
ovy310_21a18c4: ; 0x021A18C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A18DA
	cmp r0, #1
	beq _021A192A
	cmp r0, #2
	beq _021A1948
	pop {r3, r4, r5, pc}
_021A18DA:
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	bl sub_021A3124
	add r0, r4, #0
	bl sub_021A2F88
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2678
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a2678
	add r0, r4, #0
	bl sub_021A318C
	mov r1, #1
	bl sub_021A4B9C
	add r0, r4, #0
	bl sub_021A318C
	bl sub_021A4B6C
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2514
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2e70
	add r0, r4, #0
	bl sub_021A1E88
	pop {r3, r4, r5, pc}
_021A192A:
	bl GFL_SndPlayerIsActiveAny
	cmp r0, #0
	bne _021A19BC
	ldr r0, [r4, #0x28]
	cmp r0, #0x78
	blo _021A1940
	add r0, r4, #0
	bl sub_021A1E88
	pop {r3, r4, r5, pc}
_021A1940:
	ldr r0, _021A19C0 ; =0x0000076A
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021A1948:
	mov r5, #0xf2
	mov r0, #1
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a2514
	add r0, r4, #0
	mov r1, #1
	bl sub_021A22D8
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a29ec
	add r0, r4, #0
	bl ovy310_21a2198
	add r0, r4, #0
	bl sub_021A2F94
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2898
	add r0, r4, #0
	bl ovy310_21a2e9c
	add r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A19B0
	add r0, r4, #0
	bl ovy310_21a22dc
_021A19B0:
	ldr r0, _021A19C4 ; =0x0000076B
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A1DF0
_021A19BC:
	pop {r3, r4, r5, pc}
	nop
_021A19C0: .word 0x0000076A
_021A19C4: .word 0x0000076B
	thumb_func_end ovy310_21a18c4

	thumb_func_start ovy310_21a19c8
ovy310_21a19c8: ; 0x021A19C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A19DA
	cmp r0, #1
	beq _021A19E8
	pop {r4, pc}
_021A19DA:
	add r0, r4, #0
	bl ovy310_21a2924
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A19E8:
	ldr r0, [r4, #0x28]
	mov r1, #0xa
	blx sub_0208D868
	cmp r1, #0
	bne _021A1A02
	ldr r0, _021A1A18 ; =0x000002FD
	ldrb r1, [r4, r0]
	add r2, r1, #1
	strb r2, [r4, r0]
	add r0, r4, #0
	bl sub_021A29B4
_021A1A02:
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhi _021A1A16
	add r0, r4, #0
	bl sub_021A1DF0
_021A1A16:
	pop {r4, pc}
	.align 2, 0
_021A1A18: .word 0x000002FD
	thumb_func_end ovy310_21a19c8

	thumb_func_start ovy310_21a1a1c
ovy310_21a1a1c: ; 0x021A1A1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A1A2E
	cmp r0, #1
	beq _021A1A44
	pop {r4, pc}
_021A1A2E:
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FDC
	add r0, r4, #0
	bl ovy310_21a302c
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1A44:
	add r0, r4, #0
	bl ovy310_21a30c4
	cmp r0, #0
	beq _021A1A54
	add r0, r4, #0
	bl sub_021A1DF0
_021A1A54:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1a1c

	thumb_func_start ovy310_21a1a58
ovy310_21a1a58: ; 0x021A1A58
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A1A6A
	cmp r0, #1
	beq _021A1A78
	pop {r4, pc}
_021A1A6A:
	add r0, r4, #0
	bl ovy310_21a3078
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1A78:
	add r0, r4, #0
	bl ovy310_21a30c4
	cmp r0, #0
	beq _021A1A8E
	add r0, r4, #0
	bl ovy310_21a24a0
	add r0, r4, #0
	bl sub_021A1DF0
_021A1A8E:
	pop {r4, pc}
	thumb_func_end ovy310_21a1a58

	thumb_func_start ovy310_21a1a90
ovy310_21a1a90: ; 0x021A1A90
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A1AA6
	cmp r0, #1
	beq _021A1B2E
	cmp r0, #2
	beq _021A1B4C
	pop {r4, pc}
_021A1AA6:
	mov r0, #0x3d
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl sub_021A3124
	add r0, r4, #0
	bl sub_021A3148
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2514
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2e70
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2d80
	add r0, r4, #0
	bl ovy310_21a2898
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a298c
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2704
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a2704
	add r0, r4, #0
	bl ovy310_21a2658
	add r0, r4, #0
	bl sub_021A319C
	mov r1, #1
	bl sub_021A4B9C
	add r0, r4, #0
	bl sub_021A319C
	bl sub_021A4B90
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1B2E:
	bl GFL_SndPlayerIsActiveAny
	cmp r0, #0
	bne _021A1BA8
	ldr r0, [r4, #0x28]
	cmp r0, #0x3c
	blo _021A1B44
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1B44:
	ldr r0, _021A1BAC ; =0x0000076A
	bl GFL_SndSEPlay
	pop {r4, pc}
_021A1B4C:
	mov r0, #0x3d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy310_21a2600
	add r0, r4, #0
	bl sub_021A319C
	mov r1, #0
	bl sub_021A4B9C
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2898
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a2ecc
	add r0, r4, #0
	bl ovy310_21a2e9c
	ldr r0, _021A1BB0 ; =0x0000076B
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A1DF0
_021A1BA8:
	pop {r4, pc}
	nop
_021A1BAC: .word 0x0000076A
_021A1BB0: .word 0x0000076B
	thumb_func_end ovy310_21a1a90

	thumb_func_start ovy310_21a1bb4
ovy310_21a1bb4: ; 0x021A1BB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A1BCA
	cmp r0, #1
	beq _021A1C58
	cmp r0, #2
	beq _021A1C76
	pop {r4, pc}
_021A1BCA:
	mov r0, #0x3d
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl sub_021A3124
	add r0, r4, #0
	bl sub_021A3148
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2514
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2e70
	add r0, r4, #0
	bl ovy310_21a2360
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2d80
	add r0, r4, #0
	bl ovy310_21a2898
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a298c
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a2704
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a2704
	add r0, r4, #0
	bl ovy310_21a2658
	add r0, r4, #0
	bl sub_021A319C
	mov r1, #1
	bl sub_021A4B9C
	add r0, r4, #0
	bl sub_021A319C
	bl sub_021A4B90
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1C58:
	bl GFL_SndPlayerIsActiveAny
	cmp r0, #0
	bne _021A1CD8
	ldr r0, [r4, #0x28]
	cmp r0, #0x3c
	blo _021A1C6E
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1C6E:
	ldr r0, _021A1CDC ; =0x0000076A
	bl GFL_SndSEPlay
	pop {r4, pc}
_021A1C76:
	mov r0, #0x3d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy310_21a2600
	add r0, r4, #0
	bl sub_021A319C
	mov r1, #0
	bl sub_021A4B9C
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a22dc
	add r0, r4, #0
	bl ovy310_21a2da8
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2898
	add r0, r4, #0
	bl ovy310_21a2dcc
	add r0, r4, #0
	bl ovy310_21a2ecc
	add r0, r4, #0
	bl ovy310_21a2e9c
	ldr r0, _021A1CE0 ; =0x0000076B
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A1DF0
_021A1CD8:
	pop {r4, pc}
	nop
_021A1CDC: .word 0x0000076A
_021A1CE0: .word 0x0000076B
	thumb_func_end ovy310_21a1bb4

	thumb_func_start ovy310_21a1ce4
ovy310_21a1ce4: ; 0x021A1CE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E84
	cmp r0, #0
	beq _021A1CF6
	cmp r0, #1
	beq _021A1D02
	pop {r4, pc}
_021A1CF6:
	bl ovy310_21a22b4
	add r0, r4, #0
	bl sub_021A1E88
	pop {r4, pc}
_021A1D02:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A1D10
	add r0, r4, #0
	bl sub_021A1DF0
_021A1D10:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1ce4

	thumb_func_start ovy310_21a1d14
ovy310_21a1d14: ; 0x021A1D14
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1E10
	ldr r1, [r4, #0x28]
	cmp r0, r1
	bhs _021A1D28
	add r0, r4, #0
	bl sub_021A1DF0
_021A1D28:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1d14

	thumb_func_start ovy310_21a1d2c
ovy310_21a1d2c: ; 0x021A1D2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy310_21a42c0
	add r0, r5, #0
	bl ovy310_21a4274
	ldr r0, [r5]
	bl sub_021A43F8
	ldr r0, [r5]
	bl sub_021A4404
	add r0, r5, #0
	bl sub_021A4308
	add r0, r5, #0
	bl ovy310_21a3974
	add r0, r5, #0
	bl sub_021A38EC
	add r0, r5, #0
	bl ovy310_21a3648
	add r0, r5, #0
	bl ovy310_21a4218
	add r0, r5, #0
	bl ovy310_21a40c4
	add r0, r5, #0
	bl ovy310_21a41ac
	add r0, r5, #0
	bl sub_021A40F8
	add r0, r5, #0
	bl ovy310_21a3eac
	add r0, r5, #0
	bl ovy310_21a3de8
	add r0, r5, #0
	bl ovy310_21a3cc0
	add r0, r5, #0
	bl ovy310_21a3d70
	add r0, r5, #0
	bl ovy310_21a3c48
	add r0, r5, #0
	bl sub_021A3BA4
	add r0, r5, #0
	bl sub_021A3B88
	add r0, r5, #0
	bl sub_021A3B2C
	add r0, r5, #0
	bl sub_021A3B10
	add r0, r5, #0
	bl ovy310_21a3a9c
	add r0, r5, #0
	bl sub_021A35F0
	add r0, r5, #0
	bl ovy310_21a35c0
	add r0, r5, #0
	bl sub_021A3574
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl sub_021A1E08
	add r0, r5, #0
	mov r1, #0xd
	bl sub_021A1E40
	add r0, r5, #0
	bl sub_021A1DF0
	add r0, r5, #0
	bl ovy310_21a4380
	mov r0, #0xf1
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r1, #1
	add r0, #0x1c
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a1d2c

	thumb_func_start sub_021A1DF0
sub_021A1DF0: ; 0x021A1DF0
	mov r1, #0xf7
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1DF0

	thumb_func_start sub_021A1DFC
sub_021A1DFC: ; 0x021A1DFC
	ldr r0, [r0]
	ldr r3, _021A1E04 ; =sub_021A43DC
	bx r3
	nop
_021A1E04: .word sub_021A43DC
	thumb_func_end sub_021A1DFC

	thumb_func_start sub_021A1E08
sub_021A1E08: ; 0x021A1E08
	mov r2, #0xf9
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021A1E08

	thumb_func_start sub_021A1E10
sub_021A1E10: ; 0x021A1E10
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021A1E10

	thumb_func_start ovy310_21a1e14
ovy310_21a1e14: ; 0x021A1E14
	push {r3, r4, r5, lr}
	ldr r5, [r0]
	add r0, r5, #0
	bl sub_021A43E0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A43E4
	cmp r4, #0
	beq _021A1E32
	cmp r0, #0
	bne _021A1E32
	mov r0, #3
	pop {r3, r4, r5, pc}
_021A1E32:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1e14

	thumb_func_start sub_021A1E38
sub_021A1E38: ; 0x021A1E38
	ldr r1, [r0, #0x28]
	add r1, r1, #1
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_021A1E38

	thumb_func_start sub_021A1E40
sub_021A1E40: ; 0x021A1E40
	ldr r0, [r0, #0x1c]
	ldr r3, _021A1E48 ; =sub_021A4864
	bx r3
	nop
_021A1E48: .word sub_021A4864
	thumb_func_end sub_021A1E40

	thumb_func_start ovy310_21a1e4c
ovy310_21a1e4c: ; 0x021A1E4C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A1E72
	ldr r0, [r4, #0x1c]
	bl sub_021A487C
	cmp r0, #0
	bne _021A1E72
	ldr r0, [r4, #0x1c]
	bl sub_021A486C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A1E74
_021A1E72:
	pop {r4, pc}
	thumb_func_end ovy310_21a1e4c

	thumb_func_start sub_021A1E74
sub_021A1E74: ; 0x021A1E74
	mov r2, #0
	str r1, [r0, #0x20]
	mov r1, #0xf7
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_021A1E74

	thumb_func_start sub_021A1E84
sub_021A1E84: ; 0x021A1E84
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_021A1E84

	thumb_func_start sub_021A1E88
sub_021A1E88: ; 0x021A1E88
	ldr r1, [r0, #0x24]
	add r1, r1, #1
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_021A1E88

	thumb_func_start ovy310_21a1e90
ovy310_21a1e90: ; 0x021A1E90
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	add r5, r0, #0
	bl ovy310_21a2360
	sub r6, r4, #2
	add r0, r5, #0
	add r1, r6, #0
	bl ovy310_21a22c4
	mov r0, #0xf2
	lsl r0, r0, #2
	add r7, r5, r0
_021A1EAA:
	ldr r1, [r5, #0x34]
	sub r0, r1, #1
	cmp r0, #1
	bhi _021A1ED2
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1EC6
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A1ED0
_021A1EC6:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy310_21a22c4
	b _021A1EEC
_021A1ED0:
	b _021A1EEA
_021A1ED2:
	cmp r1, #4
	bne _021A1EEA
	ldr r0, [r7]
	cmp r0, #1
	beq _021A1EE6
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A1EE8
_021A1EE6:
	b _021A1EC6
_021A1EE8:
	b _021A1EEA
_021A1EEA:
	mov r4, #0
_021A1EEC:
	cmp r4, #0
	bne _021A1EAA
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a2dcc
	add r0, r5, #0
	bl ovy310_21a2ecc
	add r0, r5, #0
	mov r1, #1
	bl sub_021A2FB4
	ldr r0, [r5, #0x34]
	cmp r0, #4
	bne _021A1F16
	add r0, r5, #0
	bl ovy310_21a2598
_021A1F16:
	ldr r0, _021A1F24 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy310_21a29ec
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1F24: .word 0x00000548
	thumb_func_end ovy310_21a1e90

	thumb_func_start ovy310_21a1f28
ovy310_21a1f28: ; 0x021A1F28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #1
	bl ovy310_21a2360
	add r0, r5, #0
	mov r1, #1
	bl ovy310_21a22c4
	mov r7, #0xf2
	lsl r7, r7, #2
	add r6, r5, r7
_021A1F40:
	ldr r1, [r5, #0x34]
	sub r0, r1, #1
	cmp r0, #1
	bhi _021A1F64
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A1F58
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A1F62
_021A1F58:
	add r0, r5, #0
	mov r1, #1
	bl ovy310_21a22c4
	b _021A1F7E
_021A1F62:
	b _021A1F7C
_021A1F64:
	cmp r1, #4
	bne _021A1F7C
	ldr r0, [r6]
	cmp r0, #1
	beq _021A1F78
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A1F7A
_021A1F78:
	b _021A1F58
_021A1F7A:
	b _021A1F7C
_021A1F7C:
	mov r4, #0
_021A1F7E:
	cmp r4, #0
	bne _021A1F40
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a2dcc
	add r0, r5, #0
	bl ovy310_21a2ecc
	add r0, r5, #0
	mov r1, #1
	bl sub_021A2FB4
	ldr r0, [r5, #0x34]
	cmp r0, #4
	bne _021A1FA8
	add r0, r5, #0
	bl ovy310_21a2598
_021A1FA8:
	ldr r0, _021A1FB8 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy310_21a29ec
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1FB8: .word 0x00000548
	thumb_func_end ovy310_21a1f28

	thumb_func_start ovy310_21a1fbc
ovy310_21a1fbc: ; 0x021A1FBC
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a1fd8
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2FB4
	ldr r0, _021A1FD4 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r4, pc}
	.align 2, 0
_021A1FD4: .word 0x00000548
	thumb_func_end ovy310_21a1fbc

	thumb_func_start ovy310_21a1fd8
ovy310_21a1fd8: ; 0x021A1FD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	sub r1, r4, #1
	add r5, r0, #0
	cmp r1, #1
	bhi _021A1FF6
	mov r1, #0xf2
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021A201C
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A201C
_021A1FF6:
	add r0, r5, #0
	bl ovy310_21a2360
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A22D8
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a2dcc
	add r0, r5, #0
	bl ovy310_21a2ecc
	add r0, r5, #0
	bl ovy310_21a29ec
_021A201C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a1fd8

	thumb_func_start ovy310_21a2020
ovy310_21a2020: ; 0x021A2020
	push {r4, lr}
	mov r1, #0xf2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021A2040
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A2040
	add r0, r4, #0
	bl sub_021A318C
	bl sub_021A4B84
_021A2040:
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	bl sub_021A3124
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a23e4
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a22dc
	add r0, r4, #0
	bl ovy310_21a2b10
	add r0, r4, #0
	bl ovy310_21a2b30
	add r0, r4, #0
	bl ovy310_21a2180
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2d80
	add r0, r4, #0
	bl ovy310_21a298c
	add r0, r4, #0
	bl ovy310_21a2e9c
	add r0, r4, #0
	bl ovy310_21a24a0
	ldr r0, _021A20A8 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r4, pc}
	nop
_021A20A8: .word 0x00000548
	thumb_func_end ovy310_21a2020

	thumb_func_start ovy310_21a20ac
ovy310_21a20ac: ; 0x021A20AC
	push {r4, lr}
	mov r1, #0xf2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021A20CC
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A20CC
	add r0, r4, #0
	bl sub_021A318C
	bl sub_021A4B84
_021A20CC:
	add r0, r4, #0
	bl ovy310_21a3680
	add r0, r4, #0
	bl sub_021A3124
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy310_21a23e4
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy310_21a2a80
	add r0, r4, #0
	bl ovy310_21a22dc
	add r0, r4, #0
	bl ovy310_21a2b10
	add r0, r4, #0
	bl ovy310_21a2b30
	add r0, r4, #0
	bl ovy310_21a2180
	add r0, r4, #0
	bl ovy310_21a2c58
	add r0, r4, #0
	bl ovy310_21a2cf0
	add r0, r4, #0
	bl ovy310_21a2d80
	add r0, r4, #0
	bl ovy310_21a298c
	add r0, r4, #0
	bl ovy310_21a2e9c
	add r0, r4, #0
	bl ovy310_21a24a0
	ldr r0, _021A2134 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r4, pc}
	.align 2, 0
_021A2134: .word 0x00000548
	thumb_func_end ovy310_21a20ac

	thumb_func_start ovy310_21a2138
ovy310_21a2138: ; 0x021A2138
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy310_21a2434
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2898
	ldr r0, _021A2158 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r4, pc}
	nop
_021A2158: .word 0x00000548
	thumb_func_end ovy310_21a2138

	thumb_func_start ovy310_21a215c
ovy310_21a215c: ; 0x021A215C
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	bl ovy310_21a2434
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2898
	ldr r0, _021A217C ; =0x00000548
	bl GFL_SndSEPlay
	pop {r4, pc}
	.align 2, 0
_021A217C: .word 0x00000548
	thumb_func_end ovy310_21a215c

	thumb_func_start ovy310_21a2180
ovy310_21a2180: ; 0x021A2180
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A2494
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2898
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2180

	thumb_func_start ovy310_21a2198
ovy310_21a2198: ; 0x021A2198
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a23fc
	add r0, r4, #0
	bl ovy310_21a2b50
	add r0, r4, #0
	bl ovy310_21a2898
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2198

	thumb_func_start ovy310_21a21b0
ovy310_21a21b0: ; 0x021A21B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl ovy310_21a31ac
	cmp r0, #0
	beq _021A229E
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A21DE
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A21DE
	add r0, r5, #0
	bl sub_021A318C
	bl sub_021A4B84
	mov r4, #1
_021A21DE:
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A21EE
	cmp r0, #1
	beq _021A21F2
	b _021A21F4
_021A21EE:
	mov r6, #1
	b _021A21F4
_021A21F2:
	mov r6, #0
_021A21F4:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A3184
	add r0, r5, #0
	bl ovy310_21a2a80
	add r0, r5, #0
	bl ovy310_21a22dc
	add r0, r5, #0
	bl ovy310_21a2b50
	add r0, r5, #0
	bl ovy310_21a2c58
	add r0, r5, #0
	bl ovy310_21a2cf0
	add r0, r5, #0
	bl ovy310_21a2d80
	add r0, r5, #0
	bl ovy310_21a2da8
	add r0, r5, #0
	bl ovy310_21a2e9c
	add r0, r5, #0
	bl ovy310_21a24a0
	add r0, r5, #0
	bl ovy310_21a2898
	add r0, r5, #0
	bl ovy310_21a298c
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A225E
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A225E
	add r0, r5, #0
	bl ovy310_21a2924
	add r0, r5, #0
	bl ovy310_21a29c8
_021A225E:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A2298
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A2298
	cmp r4, #0
	beq _021A2282
	add r0, r5, #0
	bl sub_021A318C
	mov r1, #0x14
	bl sub_021A4BA4
_021A2282:
	add r0, r5, #0
	bl sub_021A318C
	bl sub_021A4B78
	add r0, r5, #0
	bl sub_021A318C
	mov r1, #1
	bl sub_021A4B9C
_021A2298:
	ldr r0, _021A22A0 ; =0x00000548
	bl GFL_SndSEPlay
_021A229E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A22A0: .word 0x00000548
	thumb_func_end ovy310_21a21b0

	thumb_func_start ovy310_21a22a4
ovy310_21a22a4: ; 0x021A22A4
	push {r3, lr}
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_21a22a4

	thumb_func_start ovy310_21a22b4
ovy310_21a22b4: ; 0x021A22B4
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	pop {r3, pc}
	thumb_func_end ovy310_21a22b4

	thumb_func_start ovy310_21a22c4
ovy310_21a22c4: ; 0x021A22C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r0, r0, r1
	add r0, r0, #5
	mov r1, #5
	blx sub_0208D65C
	str r1, [r4, #0x34]
	pop {r4, pc}
	thumb_func_end ovy310_21a22c4

	thumb_func_start sub_021A22D8
sub_021A22D8: ; 0x021A22D8
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_021A22D8

	thumb_func_start ovy310_21a22dc
ovy310_21a22dc: ; 0x021A22DC
	push {r4, lr}
	sub sp, #8
	ldr r1, [r0, #0x34]
	cmp r1, #4
	bhi _021A2346
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A22F2: ; jump table
	.short _021A22FC - _021A22F2 - 2 ; case 0
	.short _021A2320 - _021A22F2 - 2 ; case 1
	.short _021A22FC - _021A22F2 - 2 ; case 2
	.short _021A22FC - _021A22F2 - 2 ; case 3
	.short _021A2342 - _021A22F2 - 2 ; case 4
_021A22FC:
	add r3, r1, #0
	mov r0, #0x24
	mul r3, r0
	ldr r0, _021A2350 ; =0x021A74C3
	ldr r1, _021A2354 ; =0x021A74C0
	ldrb r0, [r0, r3]
	ldr r2, _021A2358 ; =0x021A74C1
	ldr r4, _021A235C ; =0x021A74C2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldrb r3, [r4, r3]
	mov r0, #2
_021A231A:
	bl sub_0204566C
	b _021A2346
_021A2320:
	mov r2, #4
	str r2, [sp]
	mov r4, #0xa
	mov r0, #2
	mov r1, #0xd
	mov r3, #0x13
	str r4, [sp, #4]
	bl sub_0204566C
	mov r0, #3
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #2
	mov r1, #0x10
	mov r2, #8
	mov r3, #0x10
	b _021A231A
_021A2342:
	bl ovy310_21a2560
_021A2346:
	mov r0, #2
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A2350: .word 0x021A74C3
_021A2354: .word 0x021A74C0
_021A2358: .word 0x021A74C1
_021A235C: .word 0x021A74C2
	thumb_func_end ovy310_21a22dc

	thumb_func_start ovy310_21a2360
ovy310_21a2360: ; 0x021A2360
	push {r4, lr}
	sub sp, #8
	ldr r1, [r0, #0x34]
	cmp r1, #4
	bhi _021A23CA
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A2376: ; jump table
	.short _021A2380 - _021A2376 - 2 ; case 0
	.short _021A23A4 - _021A2376 - 2 ; case 1
	.short _021A2380 - _021A2376 - 2 ; case 2
	.short _021A2380 - _021A2376 - 2 ; case 3
	.short _021A23C6 - _021A2376 - 2 ; case 4
_021A2380:
	add r3, r1, #0
	mov r0, #0x24
	mul r3, r0
	ldr r0, _021A23D4 ; =0x021A74C3
	ldr r1, _021A23D8 ; =0x021A74C0
	ldrb r0, [r0, r3]
	ldr r2, _021A23DC ; =0x021A74C1
	ldr r4, _021A23E0 ; =0x021A74C2
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldrb r3, [r4, r3]
	mov r0, #2
_021A239E:
	bl sub_0204566C
	b _021A23CA
_021A23A4:
	mov r2, #4
	str r2, [sp]
	mov r4, #6
	mov r0, #2
	mov r1, #0xd
	mov r3, #0x13
	str r4, [sp, #4]
	bl sub_0204566C
	mov r0, #3
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #2
	mov r1, #0x10
	mov r2, #8
	mov r3, #0x10
	b _021A239E
_021A23C6:
	bl ovy310_21a257c
_021A23CA:
	mov r0, #2
	bl GFL_BGSysLoadScr
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A23D4: .word 0x021A74C3
_021A23D8: .word 0x021A74C0
_021A23DC: .word 0x021A74C1
_021A23E0: .word 0x021A74C2
	thumb_func_end ovy310_21a2360

	thumb_func_start ovy310_21a23e4
ovy310_21a23e4: ; 0x021A23E4
	push {r3, r4, r5, lr}
	mov r5, #0xae
	add r4, r0, #0
	lsl r5, r5, #2
	ldrb r0, [r4, r5]
	add r0, r0, r1
	add r0, r0, #3
	mov r1, #3
	blx sub_0208D65C
	strb r1, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a23e4

	thumb_func_start ovy310_21a23fc
ovy310_21a23fc: ; 0x021A23FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A318C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A31EC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl ovy310_21a4be8
	add r2, r0, #0
	add r0, r5, #0
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	add r0, #0x38
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ovy310_21a60c4
	ldr r1, _021A2430 ; =0x000002B9
	strb r0, [r5, r1]
	pop {r4, r5, r6, pc}
	nop
_021A2430: .word 0x000002B9
	thumb_func_end ovy310_21a23fc

	thumb_func_start ovy310_21a2434
ovy310_21a2434: ; 0x021A2434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021A318C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021A31EC
	str r0, [sp]
	add r0, r5, #0
	bl sub_021A3200
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A3214
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_021A4BE0
	add r0, r0, r6
	add r0, r4, r0
	add r1, r4, #0
	blx sub_0208D65C
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ovy310_21a4be8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, #0x38
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ovy310_21a60c4
	ldr r1, _021A2490 ; =0x000002B9
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2490: .word 0x000002B9
	thumb_func_end ovy310_21a2434

	thumb_func_start sub_021A2494
sub_021A2494: ; 0x021A2494
	ldr r1, _021A249C ; =0x000002B9
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021A249C: .word 0x000002B9
	thumb_func_end sub_021A2494

	thumb_func_start ovy310_21a24a0
ovy310_21a24a0: ; 0x021A24A0
	push {r4, lr}
	mov r1, #0xf2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #1
	beq _021A24BE
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, #1
	beq _021A24BE
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A24D2
_021A24BE:
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FF0
	cmp r0, #0
	bne _021A24E4
	add r0, r4, #0
	bl ovy310_21a25d8
	pop {r4, pc}
_021A24D2:
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FF0
	cmp r0, #1
	bne _021A24E4
	add r0, r4, #0
	bl ovy310_21a25b4
_021A24E4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a24a0

	thumb_func_start ovy310_21a24e8
ovy310_21a24e8: ; 0x021A24E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FDC
	add r0, r4, #0
	mov r1, #6
	bl sub_021A2FDC
	add r0, r4, #0
	mov r1, #2
	bl sub_021A2FB4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a24e8

	thumb_func_start ovy310_21a2514
ovy310_21a2514: ; 0x021A2514
	push {r3, lr}
	sub sp, #0x10
	cmp r1, #0
	beq _021A253C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0xef
	str r3, [sp, #8]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, r1, #4
	str r2, [sp, #0xc]
	ldr r0, [r0, r1]
	mov r1, #4
	mov r2, #1
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, pc}
_021A253C:
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r1, #0xef
	str r3, [sp, #8]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, r1, #4
	str r2, [sp, #0xc]
	ldr r0, [r0, r1]
	mov r1, #4
	mov r2, #1
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2514

	thumb_func_start ovy310_21a2560
ovy310_21a2560: ; 0x021A2560
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #3
	bl sub_021A2FB4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2560

	thumb_func_start ovy310_21a257c
ovy310_21a257c: ; 0x021A257C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #3
	bl sub_021A2FDC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a257c

	thumb_func_start ovy310_21a2598
ovy310_21a2598: ; 0x021A2598
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #4
	bl sub_021A2FB4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2598

	thumb_func_start ovy310_21a25b4
ovy310_21a25b4: ; 0x021A25B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FDC
	add r0, r4, #0
	mov r1, #6
	bl sub_021A2FB4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a25b4

	thumb_func_start ovy310_21a25d8
ovy310_21a25d8: ; 0x021A25D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0202B378
	add r0, r4, #0
	mov r1, #5
	bl sub_021A2FB4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a25d8

	thumb_func_start sub_021A25F4
sub_021A25F4: ; 0x021A25F4
	ldr r0, [r0]
	ldr r3, _021A25FC ; =sub_021A43F0
	mov r1, #0
	bx r3
	.align 2, 0
_021A25FC: .word sub_021A43F0
	thumb_func_end sub_021A25F4

	thumb_func_start ovy310_21a2600
ovy310_21a2600: ; 0x021A2600
	push {r4, r5, r6, r7}
	mov r3, #0xaf
	lsl r3, r3, #2
	add r2, r3, #0
	add r4, r3, #0
	mov r1, #0
	add r2, #8
	add r4, #8
_021A2610:
	lsl r5, r1, #2
	add r7, r0, r5
	ldr r6, [r7, r3]
	ldr r5, [r7, r2]
	add r1, r1, #1
	str r5, [r7, r3]
	str r6, [r7, r4]
	cmp r1, #2
	blt _021A2610
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a2600

	thumb_func_start ovy310_21a2628
ovy310_21a2628: ; 0x021A2628
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #3
	add r0, #0x3e
	blx sub_0208D65C
	add r4, r0, #0
	ldrb r0, [r5, #0xa]
	mov r1, #3
	add r0, #0x3e
	blx sub_0208D65C
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #3
	add r0, #0x3e
	blx sub_0208D65C
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	strb r6, [r5, #0xd]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2628

	thumb_func_start ovy310_21a2658
ovy310_21a2658: ; 0x021A2658
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A318C
	ldr r1, _021A2674 ; =0xFFFFE000
	bl ovy310_21a4bbc
	add r0, r4, #0
	bl sub_021A319C
	mov r1, #0
	bl ovy310_21a4bbc
	pop {r4, pc}
	.align 2, 0
_021A2674: .word 0xFFFFE000
	thumb_func_end ovy310_21a2658

	thumb_func_start ovy310_21a2678
ovy310_21a2678: ; 0x021A2678
	push {r4, r5, r6, r7, lr}
	sub sp, #0x11c
	add r7, r1, #0
	mov r5, #0xaf
	add r4, r0, #0
	lsl r1, r7, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	str r1, [sp, #4]
	bl sub_021A3200
	sub r1, r5, #4
	ldrb r2, [r4, r1]
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xd4
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp]
	add r0, #0x3c
	mov r6, #0
	cmp r1, #0
	ble _021A26F4
	add r0, r0, r3
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
_021A26B0:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r2, sp, #0xc
	add r4, r0, r1
	lsl r0, r6, #4
	add r5, r2, r0
	ldr r2, [sp, #8]
	ldrh r2, [r2, r1]
	add r1, sp, #0xc
	strb r2, [r1, r0]
	ldrb r0, [r4, #2]
	strb r0, [r5, #8]
	ldrb r0, [r4, #3]
	strb r0, [r5, #9]
	ldrb r0, [r4, #4]
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ovy310_21a2628
	cmp r7, #0
	beq _021A26E4
	cmp r7, #1
	beq _021A26E8
	b _021A26EC
_021A26E4:
	ldrh r0, [r4, #6]
	b _021A26EA
_021A26E8:
	ldr r0, [r4, #8]
_021A26EA:
	str r0, [r5, #4]
_021A26EC:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _021A26B0
_021A26F4:
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, sp, #0xc
	bl ovy310_21a4b00
	add sp, #0x11c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2678

	thumb_func_start ovy310_21a2704
ovy310_21a2704: ; 0x021A2704
	push {r4, r5, r6, r7, lr}
	sub sp, #0x11c
	add r7, r1, #0
	mov r4, #0xb1
	add r5, r0, #0
	lsl r1, r7, #2
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	str r1, [sp, #4]
	bl sub_021A3200
	sub r4, #0xc
	ldrb r2, [r5, r4]
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xd4
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp]
	add r0, #0x3c
	mov r6, #0
	cmp r1, #0
	ble _021A2780
	add r0, r0, r3
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
_021A273C:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r2, sp, #0xc
	add r4, r0, r1
	lsl r0, r6, #4
	add r5, r2, r0
	ldr r2, [sp, #8]
	ldrh r2, [r2, r1]
	add r1, sp, #0xc
	strb r2, [r1, r0]
	ldrb r0, [r4, #2]
	strb r0, [r5, #8]
	ldrb r0, [r4, #3]
	strb r0, [r5, #9]
	ldrb r0, [r4, #4]
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ovy310_21a2628
	cmp r7, #0
	beq _021A2770
	cmp r7, #1
	beq _021A2774
	b _021A2778
_021A2770:
	ldrh r0, [r4, #6]
	b _021A2776
_021A2774:
	ldr r0, [r4, #8]
_021A2776:
	str r0, [r5, #4]
_021A2778:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _021A273C
_021A2780:
	ldr r0, [sp, #4]
	ldr r2, [sp]
	add r1, sp, #0xc
	bl ovy310_21a4b00
	add sp, #0x11c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2704

	thumb_func_start ovy310_21a2790
ovy310_21a2790: ; 0x021A2790
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xaf
	lsl r6, r6, #2
	add r7, r0, #0
	mov r4, #0
	add r6, #8
_021A279C:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021A4B3C
	ldr r0, [r5, r6]
	bl sub_021A4B3C
	add r4, r4, #1
	cmp r4, #2
	blt _021A279C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2790

	thumb_func_start ovy310_21a27b8
ovy310_21a27b8: ; 0x021A27B8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xaf
	lsl r6, r6, #2
	add r7, r0, #0
	mov r4, #0
	add r6, #8
_021A27C4:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy310_21a4b44
	ldr r0, [r5, r6]
	bl ovy310_21a4b44
	add r4, r4, #1
	cmp r4, #2
	blt _021A27C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a27b8

	thumb_func_start ovy310_21a27e0
ovy310_21a27e0: ; 0x021A27E0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xf2
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021A287E
	add r1, #8
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _021A287E
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A287E
	mov r2, #0xae
	mov r1, #0xae
	lsl r2, r2, #2
	lsl r1, r1, #2
	add r2, r2, #1
	add r4, r5, #0
	add r4, #0x38
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl sub_021A606C
	mov r2, #0xae
	mov r1, #0xae
	lsl r2, r2, #2
	lsl r1, r1, #2
	add r2, r2, #1
	add r6, r0, #0
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl sub_021A607C
	mov r2, #0xae
	mov r1, #0xae
	lsl r2, r2, #2
	lsl r1, r1, #2
	add r2, r2, #1
	add r7, r0, #0
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl sub_021A608C
	ldr r1, _021A2880 ; =0x040004A4
	ldr r2, _021A2884 ; =0x001F00C0
	add r3, r1, #0
	str r2, [r1]
	mov r2, #1
	str r2, [r1, #0x5c]
	lsl r2, r0, #0xa
	lsl r0, r7, #5
	orr r0, r6
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, r1, #0
	sub r0, #0x24
	str r2, [r0]
	ldr r0, _021A2888 ; =0x096CFC68
	sub r3, #0x18
	str r0, [r3]
	mov r2, #0
	ldr r0, _021A288C ; =0x0A7AFC68
	str r2, [r3]
	str r0, [r3]
	ldr r0, _021A2890 ; =0x0A7AFDA1
	str r2, [r3]
	str r0, [r3]
	ldr r0, _021A2894 ; =0x096CFDA1
	str r2, [r3]
	str r0, [r3]
	str r2, [r3]
	str r2, [r1, #0x60]
_021A287E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2880: .word 0x040004A4
_021A2884: .word 0x001F00C0
_021A2888: .word 0x096CFC68
_021A288C: .word 0x0A7AFC68
_021A2890: .word 0x0A7AFDA1
_021A2894: .word 0x096CFDA1
	thumb_func_end ovy310_21a27e0

	thumb_func_start ovy310_21a2898
ovy310_21a2898: ; 0x021A2898
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x2d
	add r5, r0, #0
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	bl ovy310_21a5af0
	mov r4, #0x3d
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #1
	beq _021A2920
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A2920
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	beq _021A2920
	add r0, r5, #0
	bl sub_021A318C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A3214
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ovy310_21a4bf4
	cmp r0, #0
	beq _021A2920
	sub r4, #8
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A2920
	add r0, r5, #0
	bl sub_021A318C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A3214
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, sp, #8
	add r3, sp, #4
	bl ovy310_21a4c14
	ldr r0, [sp, #4]
	mov r1, #0x68
	str r0, [sp]
	ldr r0, [r5, r7]
	ldr r3, [sp, #8]
	mov r2, #0x22
	bl ovy310_21a5acc
	ldr r0, [r5, r7]
	bl sub_021A5AE4
_021A2920:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2898

	thumb_func_start ovy310_21a2924
ovy310_21a2924: ; 0x021A2924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	bl sub_021A3200
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_021A318C
	add r7, r0, #0
	mov r5, #0
	sub r4, r4, #1
	bmi _021A2980
_021A293E:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ovy310_21a4c00
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	add r3, sp, #8
	bl ovy310_21a4c3c
	cmp r6, #0xa
	blt _021A297C
	ldr r0, [sp]
	lsl r1, r5, #2
	add r1, r0, r1
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #4]
	bl ovy310_21a6144
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl ovy310_21a6134
	add r5, r5, #1
_021A297C:
	sub r4, r4, #1
	bpl _021A293E
_021A2980:
	mov r1, #0xbf
	ldr r0, [sp]
	lsl r1, r1, #2
	strb r5, [r0, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2924

	thumb_func_start ovy310_21a298c
ovy310_21a298c: ; 0x021A298C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0xb5
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #2
_021A2998:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	add r1, r6, #0
	bl sub_021A6158
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A2998
	ldr r0, _021A29B0 ; =0x000002FD
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A29B0: .word 0x000002FD
	thumb_func_end ovy310_21a298c

	thumb_func_start sub_021A29B4
sub_021A29B4: ; 0x021A29B4
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021A29C4 ; =sub_021A6158
	mov r1, #1
	bx r3
	.align 2, 0
_021A29C4: .word sub_021A6158
	thumb_func_end sub_021A29B4

	thumb_func_start ovy310_21a29c8
ovy310_21a29c8: ; 0x021A29C8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrb r5, [r6, r0]
	mov r4, #0
	cmp r5, #0
	ble _021A29E8
_021A29D8:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_021A29B4
	add r4, r4, #1
	cmp r4, r5
	blt _021A29D8
_021A29E8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a29c8

	thumb_func_start ovy310_21a29ec
ovy310_21a29ec: ; 0x021A29EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	ldr r7, _021A2A78 ; =0x000002FE
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021A2A7C ; =0x021A74C0
	add r4, r5, r7
	add r6, r0, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x14]
	add r0, r1, r0
	sub r0, #0x10
	bl sub_021A4318
	strb r0, [r4, #2]
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x18]
	add r0, r1, r0
	sub r0, #0x10
	bl sub_021A4318
	strb r0, [r5, r7]
	ldrb r0, [r4, #2]
	add r0, #0x20
	bl sub_021A4318
	strb r0, [r4, #3]
	ldrb r0, [r5, r7]
	add r0, #0x20
	bl sub_021A4318
	strb r0, [r4, #1]
	ldr r1, [r5, #0x34]
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021A2A7C ; =0x021A74C0
	add r6, r0, r2
	add r0, r7, #4
	add r4, r5, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x1c]
	add r0, r1, r0
	sub r0, #0x10
	bl sub_021A4318
	strb r0, [r4, #2]
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x20]
	add r0, r1, r0
	sub r0, #0x10
	bl sub_021A4318
	add r1, r7, #4
	strb r0, [r5, r1]
	ldrb r0, [r4, #2]
	add r0, #0x20
	bl sub_021A4318
	strb r0, [r4, #3]
	add r0, r7, #4
	ldrb r0, [r5, r0]
	add r0, #0x20
	bl sub_021A4318
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2A78: .word 0x000002FE
_021A2A7C: .word 0x021A74C0
	thumb_func_end ovy310_21a29ec

	thumb_func_start ovy310_21a2a80
ovy310_21a2a80: ; 0x021A2A80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0xbd
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0x3d
	lsl r4, r4, #4
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A2A9E
	mov r1, #8
	b _021A2AB8
_021A2A9E:
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A2AAC
	mov r1, #6
	b _021A2AB8
_021A2AAC:
	sub r4, #8
	ldr r0, [r5, r4]
	mov r1, #6
	cmp r0, #0
	beq _021A2AB8
	mov r1, #7
_021A2AB8:
	ldrh r2, [r5, #4]
	add r0, r6, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #2
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #2
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2a80

	thumb_func_start sub_021A2AF4
sub_021A2AF4: ; 0x021A2AF4
	add r1, r0, #0
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, #0x38
	ldrb r2, [r1]
	ldr r1, _021A2B08 ; =0x021A7054
	ldr r3, _021A2B0C ; =ovy310_21a4974
	ldrb r1, [r1, r2]
	bx r3
	.align 2, 0
_021A2B08: .word 0x021A7054
_021A2B0C: .word ovy310_21a4974
	thumb_func_end sub_021A2AF4

	thumb_func_start ovy310_21a2b10
ovy310_21a2b10: ; 0x021A2B10
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A31EC
	add r2, r0, #0
	ldr r1, _021A2B2C ; =0x021A70B2
	mov r0, #0xd3
	lsl r0, r0, #2
	ldrb r1, [r1, r2]
	ldr r0, [r4, r0]
	bl ovy310_21a4974
	pop {r4, pc}
	nop
_021A2B2C: .word 0x021A70B2
	thumb_func_end ovy310_21a2b10

	thumb_func_start ovy310_21a2b30
ovy310_21a2b30: ; 0x021A2B30
	push {r4, lr}
	mov r1, #0x35
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	bl sub_021A31EC
	add r2, r0, #0
	ldr r1, _021A2B4C ; =0x021A7094
	add r0, r4, #0
	ldrb r1, [r1, r2]
	bl ovy310_21a4974
	pop {r4, pc}
	nop
_021A2B4C: .word 0x021A7094
	thumb_func_end ovy310_21a2b30

	thumb_func_start ovy310_21a2b50
ovy310_21a2b50: ; 0x021A2B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #0xd5
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r4, [r5, r6]
	bl sub_021A318C
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A2B74
	add r6, #0x7c
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _021A2B80
_021A2B74:
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a4a10
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A2B80:
	add r0, r5, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A2B96
	add r0, r4, #0
	mov r1, #0
	bl ovy310_21a4a10
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A2B96:
	add r0, r5, #0
	bl sub_021A3214
	add r6, r0, #0
	lsl r1, r6, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_021A4BE0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy310_21a3274
	lsl r1, r6, #0x18
	str r0, [sp, #0xc]
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ovy310_21a4bf4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r1, #0xd
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	add r2, r2, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0xc]
	mov r1, #2
	mov r3, #5
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x10]
	mov r1, #3
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	add r1, r6, #0
	bl ovy310_21a4990
	add r0, r4, #0
	mov r1, #1
	bl ovy310_21a4a10
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2b50

	thumb_func_start ovy310_21a2c58
ovy310_21a2c58: ; 0x021A2C58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0xf2
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _021A2C70
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A2C80
_021A2C70:
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ovy310_21a4a10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A2C80:
	add r0, r5, #0
	bl ovy310_21a3330
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0xe
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl sub_0204898C
	str r0, [sp, #8]
	ldrh r1, [r5, #4]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #8]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x70
	ldr r0, [r5, r0]
	mov r1, #1
	bl ovy310_21a4a10
	sub r4, #0x70
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl ovy310_21a4990
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2c58

	thumb_func_start ovy310_21a2cf0
ovy310_21a2cf0: ; 0x021A2CF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021A2D16
	sub r0, #0xfc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A2D0E
	cmp r0, #1
	beq _021A2D12
	b _021A2D2A
_021A2D0E:
	mov r5, #0xf
	b _021A2D2A
_021A2D12:
	mov r5, #0x11
	b _021A2D2A
_021A2D16:
	sub r0, #0xfc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A2D24
	cmp r0, #1
	beq _021A2D28
	b _021A2D2A
_021A2D24:
	mov r5, #0x10
	b _021A2D2A
_021A2D28:
	mov r5, #0x12
_021A2D2A:
	add r0, r4, #0
	bl ovy310_21a3230
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r6, [r4, #0x18]
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r1, #0
	mov r3, #6
	bl StringSetNumber
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ovy310_21a4990
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a2cf0

	thumb_func_start ovy310_21a2d80
ovy310_21a2d80: ; 0x021A2D80
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A2D9A
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ovy310_21a4a10
	pop {r4, pc}
_021A2D9A:
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ovy310_21a4a10
	pop {r4, pc}
	thumb_func_end ovy310_21a2d80

	thumb_func_start ovy310_21a2da8
ovy310_21a2da8: ; 0x021A2DA8
	push {r3, lr}
	mov r1, #0x3d
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021A2DC0
	sub r1, #0x6c
	ldr r0, [r0, r1]
	mov r1, #1
	bl ovy310_21a4a10
	pop {r3, pc}
_021A2DC0:
	sub r1, #0x6c
	ldr r0, [r0, r1]
	mov r1, #0
	bl ovy310_21a4a10
	pop {r3, pc}
	thumb_func_end ovy310_21a2da8

	thumb_func_start ovy310_21a2dcc
ovy310_21a2dcc: ; 0x021A2DCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x34]
	mov r1, #0x24
	ldr r3, _021A2E6C ; =0x021A74C0
	mul r1, r2
	add r4, r3, r1
	mov r1, #0
	bl sub_021A3428
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_021A3428
	add r6, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _021A2E00
	ldr r0, [r5, #0x34]
	cmp r0, #2
	beq _021A2E00
	cmp r0, #4
	bne _021A2E12
_021A2E00:
	add r0, r7, #0
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A2E12:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	add r5, sp, #0
	add r0, r1, r0
	strh r0, [r5]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r5, #2]
	add r0, r7, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r5]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	strh r0, [r5, #2]
	add r0, r6, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	add r0, r7, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r7, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r6, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2E6C: .word 0x021A74C0
	thumb_func_end ovy310_21a2dcc

	thumb_func_start ovy310_21a2e70
ovy310_21a2e70: ; 0x021A2E70
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl sub_021A3428
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_021A3428
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0204C124
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a2e70

	thumb_func_start ovy310_21a2e9c
ovy310_21a2e9c: ; 0x021A2E9C
	push {r3, r4, r5, lr}
	mov r5, #0xf2
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _021A2EB2
	bl ovy310_21a3230
	cmp r0, #0
	bne _021A2EC0
_021A2EB2:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_021A2EC0:
	sub r5, #0x2c
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a2e9c

	thumb_func_start ovy310_21a2ecc
ovy310_21a2ecc: ; 0x021A2ECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x3a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	add r1, #0x28
	ldr r1, [r5, r1]
	ldr r7, _021A2F78 ; =0x021A7248
	cmp r1, #0
	bne _021A2EEE
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A2EEE:
	ldr r1, [r5, #0x34]
	cmp r1, #2
	beq _021A2F00
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A2F00:
	bl ovy310_21a3330
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A318C
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl ovy310_21a4bf4
	cmp r0, #0
	bne _021A2F24
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A2F24:
	cmp r6, #0
	bne _021A2F34
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A2F34:
	add r0, r5, #0
	bl sub_021A318C
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r2, sp, #8
	add r3, sp, #4
	bl ovy310_21a4c14
	ldr r1, [sp, #8]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #4]
	ldrh r2, [r7, #0x18]
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r4, #0
	mov r1, #2
	bl sub_0204C584
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A2F78: .word 0x021A7248
	thumb_func_end ovy310_21a2ecc

	thumb_func_start sub_021A2F7C
sub_021A2F7C: ; 0x021A2F7C
	ldr r3, _021A2F84 ; =sub_021A2FA0
	mov r1, #1
	mov r2, #1
	bx r3
	.align 2, 0
_021A2F84: .word sub_021A2FA0
	thumb_func_end sub_021A2F7C

	thumb_func_start sub_021A2F88
sub_021A2F88: ; 0x021A2F88
	ldr r3, _021A2F90 ; =sub_021A2FA0
	mov r1, #0
	mov r2, #1
	bx r3
	.align 2, 0
_021A2F90: .word sub_021A2FA0
	thumb_func_end sub_021A2F88

	thumb_func_start sub_021A2F94
sub_021A2F94: ; 0x021A2F94
	ldr r3, _021A2F9C ; =sub_021A2FA0
	mov r1, #0
	mov r2, #0
	bx r3
	.align 2, 0
_021A2F9C: .word sub_021A2FA0
	thumb_func_end sub_021A2F94

	thumb_func_start sub_021A2FA0
sub_021A2FA0: ; 0x021A2FA0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021A2FB0 ; =sub_0202B098
	add r1, r2, #0
	bx r3
	.align 2, 0
_021A2FB0: .word sub_0202B098
	thumb_func_end sub_021A2FA0

	thumb_func_start sub_021A2FB4
sub_021A2FB4: ; 0x021A2FB4
	mov r2, #0x14
	mul r2, r1
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021A2FD0 ; =0x021A742C
	ldr r3, _021A2FD4 ; =0x021A7430
	ldr r1, [r1, r2]
	ldrh r2, [r3, r2]
	ldr r3, _021A2FD8 ; =sub_021A6410
	bx r3
	nop
_021A2FD0: .word 0x021A742C
_021A2FD4: .word 0x021A7430
_021A2FD8: .word sub_021A6410
	thumb_func_end sub_021A2FB4

	thumb_func_start sub_021A2FDC
sub_021A2FDC: ; 0x021A2FDC
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021A2FEC ; =sub_021A6418
	bx r3
	nop
_021A2FEC: .word sub_021A6418
	thumb_func_end sub_021A2FDC

	thumb_func_start sub_021A2FF0
sub_021A2FF0: ; 0x021A2FF0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021A3000 ; =sub_021A6428
	bx r3
	nop
_021A3000: .word sub_021A6428
	thumb_func_end sub_021A2FF0

	thumb_func_start ovy310_21a3004
ovy310_21a3004: ; 0x021A3004
	push {r4, r5, r6, lr}
	mov r6, #0xc9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A300E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_021A6408
	add r4, r4, #1
	cmp r4, #8
	blt _021A300E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a3004

	thumb_func_start sub_021A3020
sub_021A3020: ; 0x021A3020
	ldr r0, [r0]
	ldr r3, _021A3028 ; =sub_021A43E8
	bx r3
	nop
_021A3028: .word sub_021A43E8
	thumb_func_end sub_021A3020

	thumb_func_start ovy310_21a302c
ovy310_21a302c: ; 0x021A302C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #0
	add r5, r0, #0
	mov r4, #0xef
	str r6, [sp]
	mov r7, #7
	ldr r0, _021A3074 ; =0x0000FFFF
	str r7, [sp, #4]
	lsl r4, r4, #2
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, _021A3074 ; =0x0000FFFF
	str r0, [sp, #0xc]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #3
	bl sub_02026FE4
	str r6, [sp]
	ldr r0, _021A3074 ; =0x0000FFFF
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, _021A3074 ; =0x0000FFFF
	str r0, [sp, #0xc]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #3
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3074: .word 0x0000FFFF
	thumb_func_end ovy310_21a302c

	thumb_func_start ovy310_21a3078
ovy310_21a3078: ; 0x021A3078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #7
	add r5, r0, #0
	mov r4, #0xef
	str r6, [sp]
	mov r7, #0
	ldr r0, _021A30C0 ; =0x0000FFFF
	str r7, [sp, #4]
	lsl r4, r4, #2
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, _021A30C0 ; =0x0000FFFF
	str r0, [sp, #0xc]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #3
	bl sub_02026FE4
	str r6, [sp]
	ldr r0, _021A30C0 ; =0x0000FFFF
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r2, _021A30C0 ; =0x0000FFFF
	str r0, [sp, #0xc]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #3
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A30C0: .word 0x0000FFFF
	thumb_func_end ovy310_21a3078

	thumb_func_start ovy310_21a30c4
ovy310_21a30c4: ; 0x021A30C4
	push {r3, lr}
	mov r1, #0xee
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02027780
	cmp r0, #0
	bne _021A30D8
	mov r0, #1
	pop {r3, pc}
_021A30D8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy310_21a30c4

	thumb_func_start ovy310_21a30dc
ovy310_21a30dc: ; 0x021A30DC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02045A5C
	bl sub_0204B7C8
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020275F8
	pop {r4, pc}
	thumb_func_end ovy310_21a30dc

	thumb_func_start ovy310_21a30f4
ovy310_21a30f4: ; 0x021A30F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202D080
	cmp r0, #1
	bne _021A3120
	add r0, r5, #0
	bl sub_021A3254
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	bl ovy310_21a33ec
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	beq _021A3120
	mov r0, #0xf6
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A3120:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a30f4

	thumb_func_start sub_021A3124
sub_021A3124: ; 0x021A3124
	mov r1, #0xf6
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3124

	thumb_func_start sub_021A3130
sub_021A3130: ; 0x021A3130
	ldr r1, [r0, #0x30]
	cmp r1, #0xf0
	bhs _021A313C
	add r1, r1, #1
	str r1, [r0, #0x30]
	bx lr
_021A313C:
	mov r1, #0xf5
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3130

	thumb_func_start sub_021A3148
sub_021A3148: ; 0x021A3148
	mov r2, #0
	mov r1, #0xf5
	str r2, [r0, #0x30]
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_021A3148

	thumb_func_start sub_021A3154
sub_021A3154: ; 0x021A3154
	ldr r0, [r0]
	ldr r3, _021A315C ; =sub_021A43C8
	bx r3
	nop
_021A315C: .word sub_021A43C8
	thumb_func_end sub_021A3154

	thumb_func_start sub_021A3160
sub_021A3160: ; 0x021A3160
	ldr r0, [r0]
	ldr r3, _021A3168 ; =sub_021A43CC
	bx r3
	nop
_021A3168: .word sub_021A43CC
	thumb_func_end sub_021A3160

	thumb_func_start sub_021A316C
sub_021A316C: ; 0x021A316C
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_021A316C

	thumb_func_start sub_021A3170
sub_021A3170: ; 0x021A3170
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A3170

	thumb_func_start sub_021A3174
sub_021A3174: ; 0x021A3174
	str r1, [r0]
	bx lr
	thumb_func_end sub_021A3174

	thumb_func_start ovy310_21a3178
ovy310_21a3178: ; 0x021A3178
	push {r3, lr}
	bl sub_021A3170
	bl sub_021A4410
	pop {r3, pc}
	thumb_func_end ovy310_21a3178

	thumb_func_start sub_021A3184
sub_021A3184: ; 0x021A3184
	mov r2, #0xb3
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_021A3184

	thumb_func_start sub_021A318C
sub_021A318C: ; 0x021A318C
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0x10
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021A318C

	thumb_func_start sub_021A319C
sub_021A319C: ; 0x021A319C
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #8
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021A319C

	thumb_func_start ovy310_21a31ac
ovy310_21a31ac: ; 0x021A31AC
	push {r3, r4, r5, lr}
	mov r4, #0xaf
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_021A4C0C
	cmp r0, #0
	bne _021A31E4
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_021A4C0C
	cmp r0, #0
	bne _021A31E4
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_021A4C0C
	cmp r0, #0
	bne _021A31E4
	add r4, #0xc
	ldr r0, [r5, r4]
	bl sub_021A4C0C
	cmp r0, #0
	beq _021A31E8
_021A31E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A31E8:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a31ac

	thumb_func_start sub_021A31EC
sub_021A31EC: ; 0x021A31EC
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	mov r1, #0xd4
	mul r1, r2
	add r0, r0, r1
	add r0, #0x3c
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A31EC

	thumb_func_start sub_021A3200
sub_021A3200: ; 0x021A3200
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	mov r1, #0xd4
	mul r1, r2
	add r0, r0, r1
	add r0, #0x3d
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3200

	thumb_func_start sub_021A3214
sub_021A3214: ; 0x021A3214
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r3, [r0, r1]
	add r1, r1, #1
	mov r2, #0xd4
	mul r2, r3
	ldrb r1, [r0, r1]
	add r2, r0, r2
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	add r0, #0x44
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021A3214

	thumb_func_start ovy310_21a3230
ovy310_21a3230: ; 0x021A3230
	push {r3, lr}
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r2, #0
	cmp r1, #0
	beq _021A3244
	cmp r1, #1
	beq _021A324A
	b _021A3250
_021A3244:
	bl sub_021A3254
	b _021A324E
_021A324A:
	bl sub_021A3264
_021A324E:
	add r2, r0, #0
_021A3250:
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end ovy310_21a3230

	thumb_func_start sub_021A3254
sub_021A3254: ; 0x021A3254
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	mov r1, #0xd4
	mul r1, r2
	add r0, r0, r1
	ldrh r0, [r0, #0x3e]
	bx lr
	thumb_func_end sub_021A3254

	thumb_func_start sub_021A3264
sub_021A3264: ; 0x021A3264
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	mov r1, #0xd4
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_021A3264

	thumb_func_start ovy310_21a3274
ovy310_21a3274: ; 0x021A3274
	push {r3, lr}
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021A3286
	cmp r1, #1
	beq _021A328C
	b _021A3292
_021A3286:
	bl sub_021A3298
	pop {r3, pc}
_021A328C:
	bl sub_021A32B4
	pop {r3, pc}
_021A3292:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3274

	thumb_func_start sub_021A3298
sub_021A3298: ; 0x021A3298
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r3, [r0, r1]
	add r1, r1, #1
	mov r2, #0xd4
	mul r2, r3
	ldrb r1, [r0, r1]
	add r2, r0, r2
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	add r0, #0x4a
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021A3298

	thumb_func_start sub_021A32B4
sub_021A32B4: ; 0x021A32B4
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r3, [r0, r1]
	add r1, r1, #1
	mov r2, #0xd4
	mul r2, r3
	ldrb r1, [r0, r1]
	add r2, r0, r2
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #0x4c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A32B4

	thumb_func_start ovy310_21a32d0
ovy310_21a32d0: ; 0x021A32D0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_021A3160
	bl sub_02017934
	bl sub_0200EC2C
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #0
_021A32E4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200ECE4
	strb r0, [r6, r4]
	add r4, r4, #1
	cmp r4, #3
	blt _021A32E4
	add r3, sp, #0
	ldrb r5, [r3, #1]
	ldrb r6, [r3, #2]
	ldrb r4, [r3]
	ldr r1, _021A3324 ; =0x021A705E
	ldr r2, _021A3328 ; =0x021A704A
	ldr r3, _021A332C ; =0x021A7040
	mov r0, #0
_021A3304:
	ldrb r7, [r3, r0]
	cmp r4, r7
	bne _021A3316
	ldrb r7, [r2, r0]
	cmp r5, r7
	bne _021A3316
	ldrb r7, [r1, r0]
	cmp r6, r7
	beq _021A3322
_021A3316:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _021A3304
	mov r0, #0
_021A3322:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3324: .word 0x021A705E
_021A3328: .word 0x021A704A
_021A332C: .word 0x021A7040
	thumb_func_end ovy310_21a32d0

	thumb_func_start ovy310_21a3330
ovy310_21a3330: ; 0x021A3330
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021A3160
	bl sub_02017934
	bl sub_0200EC2C
	bl sub_0200EC38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021A31EC
	add r1, r0, #0
	cmp r1, #0x1d
	bne _021A335A
	add r0, r4, #0
	bl ovy310_21a3388
	pop {r3, r4, r5, pc}
_021A335A:
	add r0, r5, #0
	bl sub_0200EC3C
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _021A336A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A336A:
	mov r1, #0xae
	sub r2, r2, #1
	lsl r1, r1, #2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	add r0, r4, #0
	lsl r2, r2, #0x18
	ldrb r1, [r4, r1]
	add r0, #0x38
	lsr r2, r2, #0x18
	bl sub_021A605C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a3330

	thumb_func_start ovy310_21a3388
ovy310_21a3388: ; 0x021A3388
	push {r3, lr}
	bl sub_021A3160
	bl sub_02017A40
	bl sub_02008CEC
	cmp r0, #0xa
	bhs _021A339E
	mov r0, #0x87
	pop {r3, pc}
_021A339E:
	cmp r0, #0x14
	bhs _021A33A6
	mov r0, #0x88
	pop {r3, pc}
_021A33A6:
	cmp r0, #0x1e
	bhs _021A33AE
	mov r0, #0x89
	pop {r3, pc}
_021A33AE:
	cmp r0, #0x28
	bhs _021A33B6
	mov r0, #0x8a
	pop {r3, pc}
_021A33B6:
	cmp r0, #0x32
	bhs _021A33BE
	mov r0, #0x8b
	pop {r3, pc}
_021A33BE:
	cmp r0, #0x3c
	bhs _021A33C6
	mov r0, #0x8c
	pop {r3, pc}
_021A33C6:
	cmp r0, #0x46
	bhs _021A33CE
	mov r0, #0x8d
	pop {r3, pc}
_021A33CE:
	cmp r0, #0x50
	bhs _021A33D6
	mov r0, #0x8e
	pop {r3, pc}
_021A33D6:
	cmp r0, #0x5a
	bhs _021A33DE
	mov r0, #0x8f
	pop {r3, pc}
_021A33DE:
	cmp r0, #0x64
	bhs _021A33E6
	mov r0, #0x90
	pop {r3, pc}
_021A33E6:
	mov r0, #0x91
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3388

	thumb_func_start ovy310_21a33ec
ovy310_21a33ec: ; 0x021A33EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021A3160
	bl sub_02017934
	bl sub_0200EC2C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A31EC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0200ECF0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a33ec

	thumb_func_start sub_021A3410
sub_021A3410: ; 0x021A3410
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021A3410

	thumb_func_start sub_021A341C
sub_021A341C: ; 0x021A341C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021A341C

	thumb_func_start sub_021A3428
sub_021A3428: ; 0x021A3428
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_021A3428

	thumb_func_start ovy310_21a3434
ovy310_21a3434: ; 0x021A3434
	push {r3, lr}
	ldr r1, _021A3448 ; =0x0000105F
	ldr r3, _021A344C ; =0x021A780C
	str r1, [sp]
	mov r1, #0xfa
	lsl r1, r1, #2
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	.align 2, 0
_021A3448: .word 0x0000105F
_021A344C: .word 0x021A780C
	thumb_func_end ovy310_21a3434

	thumb_func_start ovy310_21a3450
ovy310_21a3450: ; 0x021A3450
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0xf7
	str r4, [r5, #0x20]
	str r4, [r5, #0x24]
	lsl r7, r7, #2
	str r4, [r5, r7]
	mov r0, #0xf
	str r0, [r5, #0x2c]
	add r0, r7, #0
	str r4, [r5, #0x28]
	str r4, [r5, #0x30]
	str r4, [r5, #0x34]
	sub r0, #0x18
	str r4, [r5, r0]
	add r0, r7, #0
	sub r0, #0x14
	str r4, [r5, r0]
	add r0, r7, #0
	sub r0, #0x10
	str r4, [r5, r0]
	add r0, r7, #0
	sub r0, #0xc
	str r4, [r5, r0]
	add r0, r7, #0
	sub r0, #8
	str r4, [r5, r0]
	sub r0, r7, #4
	mov r6, #0xae
	str r4, [r5, r0]
	lsl r6, r6, #2
	strb r4, [r5, r6]
	add r0, r6, #1
	strb r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x14
	str r4, [r5, r0]
	bl GFL_VBlankGetTCBMgr
	add r1, r7, #0
	sub r1, #0x20
	str r0, [r5, r1]
	add r0, r6, #0
	add r0, #0x44
	strb r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x45
	strb r4, [r5, r0]
	add r0, r7, #0
	add r0, #8
	str r4, [r5, r0]
	add r0, r7, #4
	str r4, [r5, r0]
	add r1, r4, #0
	add r6, #0xb0
_021A34C0:
	lsl r0, r4, #2
	add r0, r5, r0
	add r4, r4, #1
	str r1, [r0, r6]
	cmp r4, #7
	blt _021A34C0
	add r0, r5, #0
	bl sub_021A3670
	add r0, r5, #0
	bl sub_021A352C
	add r0, r5, #0
	bl ovy310_21a35fc
	add r0, r5, #0
	bl sub_021A3898
	add r0, r5, #0
	bl ovy310_21a38fc
	add r0, r5, #0
	bl sub_021A3580
	add r0, r5, #0
	bl sub_021A35D8
	add r0, r5, #0
	bl sub_021A3550
	add r0, r5, #0
	bl ovy310_21a3bb4
	add r0, r5, #0
	bl ovy310_21a3d9c
	add r0, r5, #0
	bl ovy310_21a3e04
	add r0, r5, #0
	bl ovy310_21a3ec8
	add r0, r5, #0
	bl sub_021A41C8
	add r0, r5, #0
	bl ovy310_21a4238
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3450

	thumb_func_start sub_021A3524
sub_021A3524: ; 0x021A3524
	ldr r3, _021A3528 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A3528: .word GFL_HeapFree
	thumb_func_end sub_021A3524

	thumb_func_start sub_021A352C
sub_021A352C: ; 0x021A352C
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A352C

	thumb_func_start ovy310_21a3534
ovy310_21a3534: ; 0x021A3534
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xa
	bl ovy310_21a4820
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ovy310_21a3534

	thumb_func_start sub_021A3544
sub_021A3544: ; 0x021A3544
	ldr r0, [r0, #0x1c]
	ldr r3, _021A354C ; =ovy310_21a4854
	bx r3
	nop
_021A354C: .word ovy310_21a4854
	thumb_func_end sub_021A3544

	thumb_func_start sub_021A3550
sub_021A3550: ; 0x021A3550
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3550

	thumb_func_start ovy310_21a3558
ovy310_21a3558: ; 0x021A3558
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #8]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy310_21a3558

	thumb_func_start sub_021A3574
sub_021A3574: ; 0x021A3574
	ldr r0, [r0, #8]
	ldr r3, _021A357C ; =sub_02022DA8
	bx r3
	nop
_021A357C: .word sub_02022DA8
	thumb_func_end sub_021A3574

	thumb_func_start sub_021A3580
sub_021A3580: ; 0x021A3580
	mov r3, #0
	add r2, r3, #0
_021A3584:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0xc]
	cmp r3, #3
	blt _021A3584
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3580

	thumb_func_start ovy310_21a3594
ovy310_21a3594: ; 0x021A3594
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A35BC ; =0x021A7068
	add r5, r0, #0
	mov r4, #0
_021A359C:
	lsl r6, r4, #2
	ldr r2, [r7, r6]
	ldrh r3, [r5, #4]
	lsl r2, r2, #0x10
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	add r1, r5, r6
	add r4, r4, #1
	str r0, [r1, #0xc]
	cmp r4, #3
	blt _021A359C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A35BC: .word 0x021A7068
	thumb_func_end ovy310_21a3594

	thumb_func_start ovy310_21a35c0
ovy310_21a35c0: ; 0x021A35C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A35C6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl GFL_MsgDataFree
	add r4, r4, #1
	cmp r4, #3
	blt _021A35C6
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a35c0

	thumb_func_start sub_021A35D8
sub_021A35D8: ; 0x021A35D8
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A35D8

	thumb_func_start ovy310_21a35e0
ovy310_21a35e0: ; 0x021A35E0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a35e0

	thumb_func_start sub_021A35F0
sub_021A35F0: ; 0x021A35F0
	ldr r0, [r0, #0x18]
	ldr r3, _021A35F8 ; =GFL_WordSetSystemFree
	bx r3
	nop
_021A35F8: .word GFL_WordSetSystemFree
	thumb_func_end sub_021A35F0

	thumb_func_start ovy310_21a35fc
ovy310_21a35fc: ; 0x021A35FC
	push {r4, r5}
	mov r1, #0xaf
	lsl r1, r1, #2
	mov r5, #0
	add r2, r1, #0
	add r3, r5, #0
	add r2, #8
_021A360A:
	lsl r4, r5, #2
	add r4, r0, r4
	str r3, [r4, r1]
	add r5, r5, #1
	str r3, [r4, r2]
	cmp r5, #2
	blt _021A360A
	pop {r4, r5}
	bx lr
	thumb_func_end ovy310_21a35fc

	thumb_func_start ovy310_21a361c
ovy310_21a361c: ; 0x021A361C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xaf
	lsl r7, r7, #2
	add r5, r0, #0
	mov r4, #0
	add r7, #8
_021A3628:
	lsl r0, r4, #2
	add r6, r5, r0
	ldrh r0, [r5, #4]
	bl ovy310_21a4ae0
	mov r1, #0xaf
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldrh r0, [r5, #4]
	bl ovy310_21a4ae0
	add r4, r4, #1
	str r0, [r6, r7]
	cmp r4, #2
	blt _021A3628
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a361c

	thumb_func_start ovy310_21a3648
ovy310_21a3648: ; 0x021A3648
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xaf
	lsl r6, r6, #2
	add r7, r0, #0
	mov r4, #0
	add r6, #8
_021A3654:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy310_21a4af0
	ldr r0, [r5, r6]
	bl ovy310_21a4af0
	add r4, r4, #1
	cmp r4, #2
	blt _021A3654
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a3648

	thumb_func_start sub_021A3670
sub_021A3670: ; 0x021A3670
	mov r2, #0xa
	ldr r3, _021A367C ; =MI_CpuFill8
	add r0, #0x38
	mov r1, #0
	lsl r2, r2, #6
	bx r3
	.align 2, 0
_021A367C: .word MI_CpuFill8
	thumb_func_end sub_021A3670

	thumb_func_start ovy310_21a3680
ovy310_21a3680: ; 0x021A3680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x48
	str r0, [sp]
	bl sub_021A3160
	bl sub_02017934
	bl sub_0200EC2C
	add r7, r0, #0
	ldr r0, [sp]
	bl ovy310_21a32d0
	mov r1, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200ECE4
	add r4, sp, #0x24
	strb r0, [r4, #3]
	add r0, r7, #0
	mov r1, #1
	bl sub_0200ECE4
	strb r0, [r4, #4]
	add r0, r7, #0
	mov r1, #2
	bl sub_0200ECE4
	strb r0, [r4, #5]
	ldrb r0, [r4, #3]
	str r0, [sp, #8]
	bl sub_0201143C
	strb r0, [r4]
	ldrb r6, [r4, #4]
	add r0, r6, #0
	bl sub_0201143C
	strb r0, [r4, #1]
	ldrb r5, [r4, #5]
	add r0, r5, #0
	bl sub_0201143C
	strb r0, [r4, #2]
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl sub_0200ECF0
	str r0, [sp, #0x38]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200ECF0
	str r0, [sp, #0x3c]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200ECF0
	str r0, [sp, #0x40]
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl sub_0200ED14
	str r0, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200ED14
	str r0, [sp, #0x30]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200ED14
	str r0, [sp, #0x34]
_021A371C:
	add r1, sp, #0x24
	ldr r0, [sp, #0x1c]
	add r1, #3
	ldrb r5, [r1, r0]
	add r1, sp, #0x24
	ldrb r0, [r1, r0]
	mov r4, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _021A3782
	ldr r1, [sp, #0x1c]
	mov r0, #0x22
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x1dc
	add r0, r0, r2
	str r0, [sp, #0x14]
	mov r0, #0x44
	mul r0, r1
	add r1, sp, #0x110
	add r1, r1, r0
	str r1, [sp, #0x10]
	add r1, sp, #0x44
	add r0, r1, r0
	str r0, [sp, #0xc]
_021A374E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201142C
	ldr r1, [sp, #0x14]
	lsl r2, r4, #1
	strh r0, [r1, r2]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #1
	lsl r6, r4, #2
	bl sub_0200ED48
	ldr r1, [sp, #0x10]
	add r2, r4, #1
	str r0, [r1, r6]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200ED90
	ldr r1, [sp, #0xc]
	add r4, r4, #1
	str r0, [r1, r6]
	ldr r0, [sp, #0x20]
	cmp r4, r0
	blt _021A374E
_021A3782:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #3
	blt _021A371C
	ldr r1, [sp]
	ldr r0, [sp, #0x18]
	add r1, #0x38
	strb r0, [r1]
	mov r0, #0
	str r0, [sp, #4]
_021A3798:
	ldr r0, [sp, #4]
	mov r1, #0xd4
	mul r1, r0
	ldr r0, [sp]
	add r2, r0, r1
	add r1, sp, #0x24
	ldr r0, [sp, #4]
	add r1, #3
	ldrb r1, [r1, r0]
	add r0, r2, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r1, sp, #0x24
	ldrb r1, [r1, r0]
	add r0, r2, #0
	add r0, #0x3d
	strb r1, [r0]
	ldr r0, [sp, #4]
	lsl r3, r0, #2
	add r0, sp, #0x38
	ldr r1, [r0, r3]
	add r0, sp, #0x2c
	ldr r0, [r0, r3]
	strh r1, [r2, #0x3e]
	add r1, r1, r0
	ldr r0, _021A3848 ; =0x000F423F
	str r1, [r2, #0x40]
	cmp r1, r0
	bls _021A37D6
	str r0, [r2, #0x40]
_021A37D6:
	ldr r0, [sp, #4]
	mov r1, #0x22
	add r4, sp, #0x1dc
	mul r1, r0
	add r0, r4, r1
	mov ip, r0
	ldr r1, [sp, #4]
	mov r0, #0x44
	mul r0, r1
	add r1, sp, #0x110
	add r7, r1, r0
	add r1, sp, #0x44
	mov r3, #0
	add r6, r1, r0
_021A37F2:
	lsl r1, r3, #1
	mov r0, ip
	ldrh r1, [r0, r1]
	mov r0, #0xc
	mul r0, r3
	add r0, r2, r0
	add r4, r0, #0
	add r4, #0x44
	strh r1, [r4]
	ldr r4, _021A384C ; =0x021A7264
	ldrb r5, [r4, r1]
	add r4, r0, #0
	add r4, #0x46
	strb r5, [r4]
	ldr r4, _021A3850 ; =0x021A72F8
	ldrb r5, [r4, r1]
	add r4, r0, #0
	add r4, #0x47
	strb r5, [r4]
	ldr r4, _021A3854 ; =0x021A738C
	lsl r5, r3, #2
	ldrb r4, [r4, r1]
	add r1, r0, #0
	add r1, #0x48
	strb r4, [r1]
	add r1, r0, #0
	ldr r4, [r7, r5]
	add r1, #0x4a
	strh r4, [r1]
	ldr r1, [r6, r5]
	add r3, r3, #1
	add r1, r4, r1
	str r1, [r0, #0x4c]
	cmp r3, #0x11
	blt _021A37F2
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _021A3798
	add sp, #0x1fc
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3848: .word 0x000F423F
_021A384C: .word 0x021A7264
_021A3850: .word 0x021A72F8
_021A3854: .word 0x021A738C
	thumb_func_end ovy310_21a3680

	thumb_func_start ovy310_21a3858
ovy310_21a3858: ; 0x021A3858
	push {r4, r5, r6, r7}
	mov ip, r0
	mov r0, #3
	lsl r0, r0, #8
	mov r2, #0
	add r7, r0, #1
	sub r4, r0, #2
	sub r5, r0, #1
_021A3868:
	ldr r0, _021A3894 ; =0x021A7150
	lsl r6, r2, #2
	add r1, r0, r6
	mov r0, ip
	ldr r3, _021A3894 ; =0x021A7150
	add r0, r0, r6
	ldrb r6, [r3, r6]
	mov r3, #3
	lsl r3, r3, #8
	strb r6, [r0, r3]
	ldrb r3, [r1, #1]
	add r2, r2, #1
	cmp r2, #9
	strb r3, [r0, r7]
	ldrb r3, [r1, #2]
	ldrb r1, [r1, #3]
	strb r3, [r0, r4]
	strb r1, [r0, r5]
	blt _021A3868
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021A3894: .word 0x021A7150
	thumb_func_end ovy310_21a3858

	thumb_func_start sub_021A3898
sub_021A3898: ; 0x021A3898
	mov r1, #0x2d
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3898

	thumb_func_start ovy310_21a38a4
ovy310_21a38a4: ; 0x021A38A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r1, #0
	mov r4, #0
	bl sub_021A3410
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl sub_021A3410
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r7, #2
	bl sub_021A3410
	str r0, [sp, #8]
	add r0, sp, #0
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r6, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, #3
	strh r1, [r0, #0x14]
	ldrh r0, [r5, #4]
	add r1, sp, #0
	bl ovy310_21a5a88
	mov r1, #0x2d
	lsl r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a38a4

	thumb_func_start sub_021A38EC
sub_021A38EC: ; 0x021A38EC
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021A38F8 ; =ovy310_21a5ab4
	bx r3
	nop
_021A38F8: .word ovy310_21a5ab4
	thumb_func_end sub_021A38EC

	thumb_func_start ovy310_21a38fc
ovy310_21a38fc: ; 0x021A38FC
	push {r3, r4}
	mov r4, #0
	mov r1, #0xb5
	add r3, r4, #0
	lsl r1, r1, #2
_021A3906:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #0xa
	blt _021A3906
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a38fc

	thumb_func_start ovy310_21a3918
ovy310_21a3918: ; 0x021A3918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r1, #0
	mov r4, #0
	bl sub_021A3410
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl sub_021A3410
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_021A3410
	str r0, [sp, #8]
	add r0, sp, #0
	mov r7, #0xb5
	strh r4, [r0, #0xc]
	mov r1, #0xc
	strh r1, [r0, #0xe]
	mov r1, #0xd
	strh r1, [r0, #0x10]
	lsl r7, r7, #2
_021A394C:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	mov r1, #3
	bl sub_021A341C
	add r2, r0, #0
	ldrh r0, [r5, #4]
	add r1, sp, #0
	bl ovy310_21a6100
	mov r1, #0
	str r0, [r6, r7]
	bl sub_021A6158
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A394C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a3918

	thumb_func_start ovy310_21a3974
ovy310_21a3974: ; 0x021A3974
	push {r4, r5, r6, lr}
	mov r6, #0xb5
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A397E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy310_21a6124
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A397E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a3974

	thumb_func_start ovy310_21a3990
ovy310_21a3990: ; 0x021A3990
	push {r3, lr}
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r2, _021A39D0 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2]
	add r1, #0x14
	str r3, [r1]
	mov r0, #2
	str r0, [r2]
	ldr r0, _021A39D4 ; =0x04000060
	str r3, [r1]
	ldrh r1, [r0]
	ldr r2, _021A39D8 ; =0xFFFFCFFF
	add r3, r1, #0
	and r3, r2
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _021A39DC ; =0x021A7084
	bl G3X_SetEdgeColorTable
	pop {r3, pc}
	nop
_021A39D0: .word 0x04000440
_021A39D4: .word 0x04000060
_021A39D8: .word 0xFFFFCFFF
_021A39DC: .word 0x021A7084
	thumb_func_end ovy310_21a3990

	thumb_func_start ovy310_21a39e0
ovy310_21a39e0: ; 0x021A39E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021A3A80 ; =0x021A7074
	bl GFL_BGSysSetLCDConfig
	mov r0, #2
	bl sub_02044BB8
	ldr r1, _021A3A84 ; =0x021A70D0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A3A88 ; =0x021A70F0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A3A8C ; =0x021A7110
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A3A90 ; =0x021A7130
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	mov r4, #5
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #0xf
	str r0, [sp]
	ldr r0, _021A3A94 ; =0x04001050
	mov r1, #2
	mov r2, #1
	mov r3, #7
	bl G2x_SetBlendAlpha_
	ldr r0, _021A3A98 ; =0x04000050
	str r4, [sp]
	mov r1, #4
	mov r2, #2
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	ldrh r0, [r5, #4]
	bl BmpWin_InitAllocator
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A3A80: .word 0x021A7074
_021A3A84: .word 0x021A70D0
_021A3A88: .word 0x021A70F0
_021A3A8C: .word 0x021A7110
_021A3A90: .word 0x021A7130
_021A3A94: .word 0x04001050
_021A3A98: .word 0x04000050
	thumb_func_end ovy310_21a39e0

	thumb_func_start ovy310_21a3a9c
ovy310_21a3a9c: ; 0x021A3A9C
	push {r3, lr}
	bl sub_020480A8
	mov r0, #0
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3a9c

	thumb_func_start ovy310_21a3ac4
ovy310_21a3ac4: ; 0x021A3AC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xbd
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #4]
	mov r1, #0xd
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #6
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #6
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy310_21a3ac4

	thumb_func_start sub_021A3B10
sub_021A3B10: ; 0x021A3B10
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3B10

	thumb_func_start ovy310_21a3b14
ovy310_21a3b14: ; 0x021A3B14
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #7
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3b14

	thumb_func_start sub_021A3B2C
sub_021A3B2C: ; 0x021A3B2C
	ldr r3, _021A3B38 ; =sub_02045264
	mov r0, #7
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021A3B38: .word sub_02045264
	thumb_func_end sub_021A3B2C

	thumb_func_start ovy310_21a3b3c
ovy310_21a3b3c: ; 0x021A3B3C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0xbd
	bl GFL_ArcSysCreateFileHandle
	ldrh r2, [r4, #4]
	mov r1, #7
	add r5, r0, #0
	bl sub_0204AB1C
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, #2
	add r1, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_020454AC
	mov r0, #2
	bl GFL_BGSysLoadScr
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3b3c

	thumb_func_start sub_021A3B88
sub_021A3B88: ; 0x021A3B88
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3B88

	thumb_func_start ovy310_21a3b8c
ovy310_21a3b8c: ; 0x021A3B8C
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #3
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3b8c

	thumb_func_start sub_021A3BA4
sub_021A3BA4: ; 0x021A3BA4
	ldr r3, _021A3BB0 ; =sub_02045264
	mov r0, #3
	mov r1, #1
	mov r2, #0
	bx r3
	nop
_021A3BB0: .word sub_02045264
	thumb_func_end sub_021A3BA4

	thumb_func_start ovy310_21a3bb4
ovy310_21a3bb4: ; 0x021A3BB4
	push {r3, r4}
	mov r4, #0
	mov r1, #0xd1
	add r3, r4, #0
	lsl r1, r1, #2
_021A3BBE:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #9
	blt _021A3BBE
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a3bb4

	thumb_func_start ovy310_21a3bd0
ovy310_21a3bd0: ; 0x021A3BD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #4
_021A3BDA:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021A3C44 ; =0x021A7574
	add r5, r0, r1
	ldrb r0, [r0, r1]
	ldr r2, [r5, #0xc]
	strb r0, [r4]
	ldrb r0, [r5, #1]
	lsl r2, r2, #2
	add r2, r6, r2
	strb r0, [r4, #1]
	ldrb r0, [r5, #2]
	strb r0, [r4, #2]
	ldrb r0, [r5, #3]
	strb r0, [r4, #3]
	ldrb r0, [r5, #4]
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	ldrb r0, [r5, #6]
	strb r0, [r4, #6]
	ldrb r0, [r5, #7]
	strb r0, [r4, #7]
	ldrb r0, [r5, #8]
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	ldrb r0, [r5, #0xa]
	strb r0, [r4, #0xa]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x10]
	lsl r0, r7, #2
	add r0, r6, r0
	str r0, [sp]
	ldrh r3, [r6, #4]
	ldr r1, [r6, #8]
	ldr r2, [r2, #0xc]
	add r0, sp, #4
	bl ovy310_21a490c
	mov r1, #0xd1
	ldr r2, [sp]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r1, [r5, #0x10]
	bl ovy310_21a4974
	add r7, r7, #1
	cmp r7, #9
	blt _021A3BDA
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3C44: .word 0x021A7574
	thumb_func_end ovy310_21a3bd0

	thumb_func_start ovy310_21a3c48
ovy310_21a3c48: ; 0x021A3C48
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xd1
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A3C52:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl ovy310_21a4960
	mov r0, #0
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #9
	blt _021A3C52
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a3c48

	thumb_func_start ovy310_21a3c68
ovy310_21a3c68: ; 0x021A3C68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r4, [r5, #4]
	mov r0, #0xbd
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	mov r1, #0xf
	mov r2, #0
	mov r3, #1
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	str r4, [sp]
	bl sub_0204BBA0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	bl Oam_LoadNCERFile
	mov r3, #0xde
	lsl r3, r3, #2
	ldr r1, [sp, #4]
	str r7, [r5, r3]
	add r2, r3, #4
	str r1, [r5, r2]
	add r3, #8
	str r0, [r5, r3]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3c68

	thumb_func_start ovy310_21a3cc0
ovy310_21a3cc0: ; 0x021A3CC0
	push {r3, r4, r5, lr}
	mov r4, #0xde
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204B98C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a3cc0

	thumb_func_start ovy310_21a3ce0
ovy310_21a3ce0: ; 0x021A3CE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r4, [r5, #4]
	mov r0, #0xbd
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0xf
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0x11
	add r3, r4, #0
	bl Oam_LoadNCERFile
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0x52
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r6, r0, #0
	mov r1, #0x1f
	mov r2, #0
	mov r3, #0x80
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	add r4, r0, #0
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	str r7, [r5, r0]
	add r2, r0, #4
	str r1, [r5, r2]
	add r1, r0, #0
	add r1, #0xc
	str r4, [r5, r1]
	ldr r1, [sp, #0x10]
	add r0, #8
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3ce0

	thumb_func_start ovy310_21a3d70
ovy310_21a3d70: ; 0x021A3D70
	push {r3, r4, r5, lr}
	mov r4, #0xda
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204B98C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a3d70

	thumb_func_start ovy310_21a3d9c
ovy310_21a3d9c: ; 0x021A3D9C
	push {r3, r4}
	mov r4, #0
	mov r1, #0xe1
	add r3, r4, #0
	lsl r1, r1, #2
_021A3DA6:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #4
	blt _021A3DA6
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a3d9c

	thumb_func_start ovy310_21a3db8
ovy310_21a3db8: ; 0x021A3DB8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A3DE0 ; =0x021A7038
	ldr r7, _021A3DE4 ; =0x021A702C
	add r5, r0, #0
	mov r4, #0
_021A3DC2:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	ldrb r1, [r7, r4]
	ldrh r2, [r5, #4]
	bl sub_0204BF1C
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0xe1
	lsl r1, r1, #2
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #4
	blt _021A3DC2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3DE0: .word 0x021A7038
_021A3DE4: .word 0x021A702C
	thumb_func_end ovy310_21a3db8

	thumb_func_start ovy310_21a3de8
ovy310_21a3de8: ; 0x021A3DE8
	push {r4, r5, r6, lr}
	mov r6, #0xe1
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A3DF2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BF98
	add r4, r4, #1
	cmp r4, #4
	blt _021A3DF2
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a3de8

	thumb_func_start ovy310_21a3e04
ovy310_21a3e04: ; 0x021A3E04
	push {r3, r4}
	mov r4, #0
	mov r1, #0xe5
	add r3, r4, #0
	lsl r1, r1, #2
_021A3E0E:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #4
	blt _021A3E0E
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a3e04

	thumb_func_start ovy310_21a3e20
ovy310_21a3e20: ; 0x021A3E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r6, #0
	add r7, sp, #0x1c
_021A3E2A:
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021A3EA8 ; =0x021A71F4
	add r4, r0, r1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #8]
	strh r0, [r7]
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r7, #2]
	mov r0, #4
	ldrsh r0, [r4, r0]
	strh r0, [r7, #4]
	ldrb r0, [r4, #6]
	strb r0, [r7, #6]
	ldrb r0, [r4, #7]
	strb r0, [r7, #7]
	add r0, r5, #0
	bl sub_021A341C
	str r0, [sp, #0x10]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_021A3410
	str r0, [sp, #0x14]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_021A3410
	str r0, [sp, #0x18]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_021A3410
	add r3, r0, #0
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	str r0, [sp]
	ldrh r0, [r4, #0x18]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl Oam_CreateSprite
	mov r1, #0xe5
	ldr r2, [sp, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r1, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #4
	blt _021A3E2A
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3EA8: .word 0x021A71F4
	thumb_func_end ovy310_21a3e20

	thumb_func_start ovy310_21a3eac
ovy310_21a3eac: ; 0x021A3EAC
	push {r4, r5, r6, lr}
	mov r6, #0xe5
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A3EB6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #4
	blt _021A3EB6
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a3eac

	thumb_func_start ovy310_21a3ec8
ovy310_21a3ec8: ; 0x021A3EC8
	push {r3, r4}
	mov r4, #0
	mov r1, #0x3b
	add r3, r4, #0
	lsl r1, r1, #4
_021A3ED2:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #2
	blt _021A3ED2
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a3ec8

	thumb_func_start ovy310_21a3ee4
ovy310_21a3ee4: ; 0x021A3EE4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x3b
	ldr r6, _021A3F10 ; =0x021A719C
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021A3EF0:
	mov r0, #0x2c
	mul r0, r4
	add r2, r6, r0
	ldr r1, [r2, #4]
	ldrh r3, [r5, #4]
	ldr r0, [r6, r0]
	ldr r2, [r2, #8]
	bl sub_02046E28
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #2
	blt _021A3EF0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3F10: .word 0x021A719C
	thumb_func_end ovy310_21a3ee4

	thumb_func_start ovy310_21a3f14
ovy310_21a3f14: ; 0x021A3F14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r6, #0
_021A3F1C:
	mov r0, #0x2c
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021A3FC4 ; =0x021A719C
	add r4, r0, r1
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A3FBA
	ldrh r3, [r5, #4]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	mov r2, #0
	bl sub_02046F3C
	lsl r1, r6, #2
	add r7, r5, r1
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4]
	mov r2, #0
	lsl r1, r1, #3
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	mov r3, #0
	lsl r1, r1, #3
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x1e]
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	mov r1, #0x3b
	lsl r1, r1, #4
	ldr r1, [r7, r1]
	bl sub_02047008
	ldrb r2, [r4, #0x1d]
	ldrb r1, [r4, #0x1e]
	mov r0, #0x1f
	lsl r2, r2, #0x1b
	and r1, r0
	ldrb r0, [r4, #0x1c]
	lsr r2, r2, #0x16
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	ldr r1, [r4, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x18]
	str r0, [sp, #4]
	mov r0, #0x3b
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r7, r0]
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [sp, #0x1c]
	bl GFL_HeapFree
	ldr r0, [sp, #0x18]
	bl GFL_BitmapFree
_021A3FBA:
	add r6, r6, #1
	cmp r6, #2
	blt _021A3F1C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3FC4: .word 0x021A719C
	thumb_func_end ovy310_21a3f14

	thumb_func_start ovy310_21a3fc8
ovy310_21a3fc8: ; 0x021A3FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x114
	ldr r4, _021A40BC ; =0x021A764C
	add r7, r0, #0
	add r3, sp, #0x24
	mov r2, #0x1e
_021A3FD4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A3FD4
	ldr r0, _021A40C0 ; =0x021A71C8
	ldr r1, _021A40C0 ; =0x021A71C8
	mov r2, #0
	str r2, [sp, #0x20]
	ldrh r3, [r7, #4]
	ldr r0, [r0, #0x20]
	ldr r1, [r1, #0x24]
	mov r2, #0
	bl sub_02046F3C
	str r0, [sp, #0x1c]
_021A3FF2:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x24
	add r0, r0, r2
	mov r4, #0
	str r0, [sp, #0x14]
_021A4008:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r1, #3
	add r0, r6, #0
	blx sub_0208D65C
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #3
	blx sub_0208D65C
	add r3, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0xed
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [r7, r1]
	lsl r2, r5, #3
	lsl r3, r3, #3
	bl sub_02047008
	add r4, r4, #1
	cmp r4, #0x14
	blt _021A4008
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021A3FF2
	ldr r0, [sp, #0x1c]
	bl GFL_BitmapFree
	ldr r0, _021A40C0 ; =0x021A71C8
	ldrb r1, [r0, #0x1e]
	mov r0, #0x1f
	and r0, r1
	ldr r1, _021A40C0 ; =0x021A71C8
	ldrb r1, [r1, #0x1c]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x11
	ldr r1, _021A40C0 ; =0x021A71C8
	ldrb r1, [r1, #0x1d]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _021A40C0 ; =0x021A71C8
	ldr r1, _021A40C0 ; =0x021A71C8
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	lsl r0, r0, #2
	add r0, r7, r0
	ldr r0, [r0, #0xc]
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [r7, #8]
	ldr r1, _021A40C0 ; =0x021A71C8
	str r0, [sp]
	ldr r2, _021A40C0 ; =0x021A71C8
	mov r0, #0xed
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r4, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r5, #0
	bl sub_02021D28
	add r0, r5, #0
	bl GFL_HeapFree
	add sp, #0x114
	pop {r4, r5, r6, r7, pc}
	nop
_021A40BC: .word 0x021A764C
_021A40C0: .word 0x021A71C8
	thumb_func_end ovy310_21a3fc8

	thumb_func_start ovy310_21a40c4
ovy310_21a40c4: ; 0x021A40C4
	push {r4, r5, r6, lr}
	mov r6, #0x3b
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #4
_021A40CE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_BitmapFree
	add r4, r4, #1
	cmp r4, #2
	blt _021A40CE
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a40c4

	thumb_func_start ovy310_21a40e0
ovy310_21a40e0: ; 0x021A40E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xe3
	lsl r4, r4, #2
	ldrh r0, [r5, #4]
	ldr r1, [r5, r4]
	bl sub_0202AE5C
	add r4, #0x18
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a40e0

	thumb_func_start sub_021A40F8
sub_021A40F8: ; 0x021A40F8
	mov r1, #0xe9
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A4104 ; =sub_0202AEAC
	bx r3
	nop
_021A4104: .word sub_0202AEAC
	thumb_func_end sub_021A40F8

	thumb_func_start ovy310_21a4108
ovy310_21a4108: ; 0x021A4108
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	mov r0, #0x3b
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	sub r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r0, [sp, #8]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r0, [sp]
	sub r0, #8
	mov r4, #0
	str r0, [sp]
_021A4138:
	lsl r0, r4, #2
	add r6, r7, r0
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	mul r1, r0
	ldr r0, _021A41A8 ; =0x021A7174
	add r5, r0, r1
	ldrsh r1, [r0, r1]
	add r0, sp, #0x10
	strh r1, [r0, #4]
	mov r0, #2
	ldrsh r1, [r5, r0]
	add r0, sp, #0x10
	strh r1, [r0, #6]
	ldr r1, [r5, #4]
	add r0, r7, #0
	bl sub_021A3410
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	ldrb r1, [r5, #0xc]
	str r0, [sp, #0x1c]
	add r0, sp, #0x10
	strb r1, [r0, #0x10]
	ldrb r1, [r5, #0xd]
	strb r1, [r0, #0x11]
	ldrh r1, [r5, #0xe]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	ldr r0, [r7, r0]
	bl sub_0202AEC4
	ldr r1, [sp, #8]
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0202B098
	ldr r0, [sp]
	ldr r0, [r6, r0]
	bl sub_0202B0F4
	add r4, r4, #1
	cmp r4, #2
	blt _021A4138
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A41A8: .word 0x021A7174
	thumb_func_end ovy310_21a4108

	thumb_func_start ovy310_21a41ac
ovy310_21a41ac: ; 0x021A41AC
	push {r4, r5, r6, lr}
	mov r6, #0xea
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A41B6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0202B030
	add r4, r4, #1
	cmp r4, #2
	blt _021A41B6
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a41ac

	thumb_func_start sub_021A41C8
sub_021A41C8: ; 0x021A41C8
	mov r1, #0xee
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A41C8

	thumb_func_start ovy310_21a41d4
ovy310_21a41d4: ; 0x021A41D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	bl sub_02026DC0
	mov r4, #0xee
	lsl r4, r4, #2
	str r0, [r5, r4]
	mov r6, #2
	lsl r6, r6, #8
	ldrh r3, [r5, #4]
	mov r1, #0
	add r2, r6, #0
	bl sub_02026E04
	ldrh r3, [r5, #4]
	ldr r0, [r5, r4]
	mov r1, #2
	add r2, r6, #0
	bl sub_02026E04
	ldr r0, [r5, r4]
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	ldr r0, [r5, r4]
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a41d4

	thumb_func_start ovy310_21a4218
ovy310_21a4218: ; 0x021A4218
	push {r3, r4, r5, lr}
	mov r4, #0xee
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r5, r4]
	bl sub_02026DE8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a4218

	thumb_func_start ovy310_21a4238
ovy310_21a4238: ; 0x021A4238
	push {r3, r4}
	mov r4, #0
	mov r1, #0xc9
	add r3, r4, #0
	lsl r1, r1, #2
_021A4242:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #8
	blt _021A4242
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a4238

	thumb_func_start ovy310_21a4254
ovy310_21a4254: ; 0x021A4254
	push {r4, r5, r6, lr}
	mov r6, #0xc9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A425E:
	ldrh r0, [r5, #4]
	bl ovy310_21a63e0
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #8
	blt _021A425E
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4254

	thumb_func_start ovy310_21a4274
ovy310_21a4274: ; 0x021A4274
	push {r4, r5, r6, lr}
	mov r6, #0xc9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A427E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy310_21a63f0
	add r4, r4, #1
	cmp r4, #8
	blt _021A427E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a4274

	thumb_func_start ovy310_21a4290
ovy310_21a4290: ; 0x021A4290
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc9
	ldr r6, _021A42BC ; =0x021A7420
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A429C:
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	add r3, r6, r1
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r2, [r3, #4]
	ldrb r3, [r3, #8]
	ldr r0, [r0, r7]
	ldr r1, [r6, r1]
	bl ovy310_21a6400
	add r4, r4, #1
	cmp r4, #8
	blt _021A429C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A42BC: .word 0x021A7420
	thumb_func_end ovy310_21a4290

	thumb_func_start ovy310_21a42c0
ovy310_21a42c0: ; 0x021A42C0
	push {r4, r5, r6, lr}
	mov r6, #0xc9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A42CA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_021A6420
	add r4, r4, #1
	cmp r4, #8
	blt _021A42CA
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a42c0

	thumb_func_start sub_021A42DC
sub_021A42DC: ; 0x021A42DC
	add r1, r0, #0
	ldrh r1, [r1, #4]
	ldr r3, _021A42E8 ; =sub_02042BA8
	mov r0, #1
	bx r3
	nop
_021A42E8: .word sub_02042BA8
	thumb_func_end sub_021A42DC

	thumb_func_start ovy310_21a42ec
ovy310_21a42ec: ; 0x021A42EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A4304 ; =ovy310_21a30dc
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0xf
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021A4304: .word ovy310_21a30dc
	thumb_func_end ovy310_21a42ec

	thumb_func_start sub_021A4308
sub_021A4308: ; 0x021A4308
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r3, _021A4314 ; =GFL_TCBRemove
	bx r3
	nop
_021A4314: .word GFL_TCBRemove
	thumb_func_end sub_021A4308

	thumb_func_start sub_021A4318
sub_021A4318: ; 0x021A4318
	cmp r0, #0
	bge _021A4320
	mov r0, #0
	bx lr
_021A4320:
	cmp r0, #0xff
	ble _021A4328
	mov r0, #0xff
	bx lr
_021A4328:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4318

	thumb_func_start ovy310_21a4330
ovy310_21a4330: ; 0x021A4330
	push {r4, lr}
	bl sub_021A3154
	bl sub_02016B20
	add r4, r0, #0
	mov r1, #1
	bl sub_0202BE14
	add r0, r4, #0
	bl sub_0202BDD4
	cmp r0, #2
	bne _021A4352
	add r0, r4, #0
	bl sub_0202BD80
_021A4352:
	pop {r4, pc}
	thumb_func_end ovy310_21a4330

	thumb_func_start ovy310_21a4354
ovy310_21a4354: ; 0x021A4354
	push {r4, lr}
	bl sub_021A3154
	add r4, r0, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _021A436E
	cmp r0, #2
	beq _021A437C
	b _021A4378
_021A436E:
	add r0, r4, #0
	bl sub_02016BB4
	mov r0, #1
	pop {r4, pc}
_021A4378:
	mov r0, #1
	pop {r4, pc}
_021A437C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy310_21a4354

	thumb_func_start ovy310_21a4380
ovy310_21a4380: ; 0x021A4380
	push {r3, lr}
	bl sub_021A3154
	bl sub_02016B20
	mov r1, #0
	bl sub_0202BE14
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4380

	thumb_func_start ovy310_21a4394
ovy310_21a4394: ; 0x021A4394
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy310_21a4450
	add r4, r0, #0
	bl ovy310_21a441c
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy310_21a4474
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4394

	thumb_func_start ovy310_21a43b4
ovy310_21a43b4: ; 0x021A43B4
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a44bc
	add r0, r4, #0
	bl sub_021A446C
	pop {r4, pc}
	thumb_func_end ovy310_21a43b4

	thumb_func_start sub_021A43C4
sub_021A43C4: ; 0x021A43C4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021A43C4

	thumb_func_start sub_021A43C8
sub_021A43C8: ; 0x021A43C8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A43C8

	thumb_func_start sub_021A43CC
sub_021A43CC: ; 0x021A43CC
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021A43CC

	thumb_func_start sub_021A43D0
sub_021A43D0: ; 0x021A43D0
	add r0, #0xc
	bx lr
	thumb_func_end sub_021A43D0

	thumb_func_start sub_021A43D4
sub_021A43D4: ; 0x021A43D4
	ldr r2, [r0, #0x34]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_021A43D4

	thumb_func_start sub_021A43DC
sub_021A43DC: ; 0x021A43DC
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end sub_021A43DC

	thumb_func_start sub_021A43E0
sub_021A43E0: ; 0x021A43E0
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_021A43E0

	thumb_func_start sub_021A43E4
sub_021A43E4: ; 0x021A43E4
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_021A43E4

	thumb_func_start sub_021A43E8
sub_021A43E8: ; 0x021A43E8
	ldr r3, _021A43EC ; =sub_021A4794
	bx r3
	.align 2, 0
_021A43EC: .word sub_021A4794
	thumb_func_end sub_021A43E8

	thumb_func_start sub_021A43F0
sub_021A43F0: ; 0x021A43F0
	ldr r3, _021A43F4 ; =sub_021A4750
	bx r3
	.align 2, 0
_021A43F4: .word sub_021A4750
	thumb_func_end sub_021A43F0

	thumb_func_start sub_021A43F8
sub_021A43F8: ; 0x021A43F8
	ldr r3, _021A4400 ; =sub_021A4774
	mov r1, #0
	bx r3
	nop
_021A4400: .word sub_021A4774
	thumb_func_end sub_021A43F8

	thumb_func_start sub_021A4404
sub_021A4404: ; 0x021A4404
	ldr r3, _021A440C ; =sub_021A4784
	mov r1, #0
	bx r3
	nop
_021A440C: .word sub_021A4784
	thumb_func_end sub_021A4404

	thumb_func_start sub_021A4410
sub_021A4410: ; 0x021A4410
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end sub_021A4410

	thumb_func_start sub_021A4414
sub_021A4414: ; 0x021A4414
	mov r1, #1
	str r1, [r0, #0x3c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4414

	thumb_func_start ovy310_21a441c
ovy310_21a441c: ; 0x021A441C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x40
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	str r4, [r5, #0x30]
	str r4, [r5, #0x34]
	bl sub_021A4510
	add r0, r5, #0
	bl sub_021A45A4
	add r0, r5, #0
	bl sub_021A45CC
	add r0, r5, #0
	bl sub_021A4650
	add r0, r5, #0
	bl sub_021A4708
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a441c

	thumb_func_start ovy310_21a4450
ovy310_21a4450: ; 0x021A4450
	push {r3, lr}
	ldr r1, _021A4464 ; =0x000001E1
	ldr r3, _021A4468 ; =0x021A7820
	str r1, [sp]
	mov r1, #0x40
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_021A4464: .word 0x000001E1
_021A4468: .word 0x021A7820
	thumb_func_end ovy310_21a4450

	thumb_func_start sub_021A446C
sub_021A446C: ; 0x021A446C
	ldr r3, _021A4470 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A4470: .word GFL_HeapFree
	thumb_func_end sub_021A446C

	thumb_func_start ovy310_21a4474
ovy310_21a4474: ; 0x021A4474
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	strh r2, [r4]
	str r1, [r4, #4]
	bl sub_02016AD8
	str r0, [r4, #8]
	add r0, r4, #0
	bl sub_021A44F0
	add r0, r4, #0
	bl ovy310_21a4524
	add r0, r4, #0
	bl ovy310_21a45ac
	add r0, r4, #0
	bl ovy310_21a45d4
	add r0, r4, #0
	bl ovy310_21a4658
	add r0, r4, #0
	bl ovy310_21a4674
	add r0, r4, #0
	bl ovy310_21a47a0
	add r0, r4, #0
	bl ovy310_21a4710
	add r0, r4, #0
	bl ovy310_21a472c
	pop {r4, pc}
	thumb_func_end ovy310_21a4474

	thumb_func_start ovy310_21a44bc
ovy310_21a44bc: ; 0x021A44BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A4744
	add r0, r4, #0
	bl sub_021A4720
	add r0, r4, #0
	bl ovy310_21a46e0
	add r0, r4, #0
	bl sub_021A4668
	add r0, r4, #0
	bl sub_021A4644
	add r0, r4, #0
	bl sub_021A45C0
	add r0, r4, #0
	bl ovy310_21a458c
	add r0, r4, #0
	bl sub_021A4508
	pop {r4, pc}
	thumb_func_end ovy310_21a44bc

	thumb_func_start sub_021A44F0
sub_021A44F0: ; 0x021A44F0
	add r2, r0, #0
	ldrh r2, [r2]
	ldr r0, _021A44FC ; =0x021A775C
	ldr r1, _021A4500 ; =0x021A7794
	ldr r3, _021A4504 ; =Oam_CreateSystem
	bx r3
	.align 2, 0
_021A44FC: .word 0x021A775C
_021A4500: .word 0x021A7794
_021A4504: .word Oam_CreateSystem
	thumb_func_end sub_021A44F0

	thumb_func_start sub_021A4508
sub_021A4508: ; 0x021A4508
	ldr r3, _021A450C ; =sub_0204B758
	bx r3
	.align 2, 0
_021A450C: .word sub_0204B758
	thumb_func_end sub_021A4508

	thumb_func_start sub_021A4510
sub_021A4510: ; 0x021A4510
	mov r3, #0
	add r2, r3, #0
_021A4514:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #3
	blt _021A4514
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4510

	thumb_func_start ovy310_21a4524
ovy310_21a4524: ; 0x021A4524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r4, [r5]
	ldr r1, _021A4588 ; =0x00007FFF
	mov r0, #0x52
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x14
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0x18
	add r3, r4, #0
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x1c]
	add r0, r6, #0
	str r7, [r5, #0x14]
	str r1, [r5, #0x18]
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4588: .word 0x00007FFF
	thumb_func_end ovy310_21a4524

	thumb_func_start ovy310_21a458c
ovy310_21a458c: ; 0x021A458C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0204B98C
	ldr r0, [r4, #0x18]
	bl sub_0204BCD0
	ldr r0, [r4, #0x1c]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy310_21a458c

	thumb_func_start sub_021A45A4
sub_021A45A4: ; 0x021A45A4
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A45A4

	thumb_func_start ovy310_21a45ac
ovy310_21a45ac: ; 0x021A45AC
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	mov r0, #1
	mov r1, #2
	bl sub_0204BF1C
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a45ac

	thumb_func_start sub_021A45C0
sub_021A45C0: ; 0x021A45C0
	ldr r0, [r0, #0x20]
	ldr r3, _021A45C8 ; =sub_0204BF98
	bx r3
	nop
_021A45C8: .word sub_0204BF98
	thumb_func_end sub_021A45C0

	thumb_func_start sub_021A45CC
sub_021A45CC: ; 0x021A45CC
	mov r1, #0
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A45CC

	thumb_func_start ovy310_21a45d4
ovy310_21a45d4: ; 0x021A45D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _021A4640 ; =0x021A7778
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r2, sp, #0x10
	add r5, r0, #0
	strh r1, [r2]
	mov r1, #2
	ldrsh r1, [r4, r1]
	strh r1, [r2, #2]
	mov r1, #4
	ldrsh r1, [r4, r1]
	strh r1, [r2, #4]
	ldrb r1, [r4, #6]
	strb r1, [r2, #6]
	ldrb r1, [r4, #7]
	strb r1, [r2, #7]
	ldr r1, [r4, #8]
	bl sub_021A47D4
	add r6, r0, #0
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_021A47CC
	add r7, r0, #0
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_021A47CC
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_021A47CC
	add r3, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldrh r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r5, #0x24]
	bl sub_0204C124
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4640: .word 0x021A7778
	thumb_func_end ovy310_21a45d4

	thumb_func_start sub_021A4644
sub_021A4644: ; 0x021A4644
	ldr r0, [r0, #0x24]
	ldr r3, _021A464C ; =Oam_RemoveOam
	bx r3
	nop
_021A464C: .word Oam_RemoveOam
	thumb_func_end sub_021A4644

	thumb_func_start sub_021A4650
sub_021A4650: ; 0x021A4650
	mov r1, #0
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4650

	thumb_func_start ovy310_21a4658
ovy310_21a4658: ; 0x021A4658
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	bl sub_02026DC0
	str r0, [r4, #0x28]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4658

	thumb_func_start sub_021A4668
sub_021A4668: ; 0x021A4668
	ldr r0, [r0, #0x28]
	ldr r3, _021A4670 ; =sub_02026DE8
	bx r3
	nop
_021A4670: .word sub_02026DE8
	thumb_func_end sub_021A4668

	thumb_func_start ovy310_21a4674
ovy310_21a4674: ; 0x021A4674
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x28]
	mov r6, #2
	lsl r6, r6, #8
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_02026E04
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02026E04
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02026E04
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02026E04
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a4674

	thumb_func_start ovy310_21a46e0
ovy310_21a46e0: ; 0x021A46E0
	push {r4, lr}
	ldr r4, [r0, #0x28]
	mov r1, #0
	add r0, r4, #0
	bl sub_02026E48
	add r0, r4, #0
	mov r1, #2
	bl sub_02026E48
	add r0, r4, #0
	mov r1, #1
	bl sub_02026E48
	add r0, r4, #0
	mov r1, #3
	bl sub_02026E48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a46e0

	thumb_func_start sub_021A4708
sub_021A4708: ; 0x021A4708
	mov r1, #0
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4708

	thumb_func_start ovy310_21a4710
ovy310_21a4710: ; 0x021A4710
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	bl ovy310_21a63e0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4710

	thumb_func_start sub_021A4720
sub_021A4720: ; 0x021A4720
	ldr r0, [r0, #0x2c]
	ldr r3, _021A4728 ; =ovy310_21a63f0
	bx r3
	nop
_021A4728: .word ovy310_21a63f0
	thumb_func_end sub_021A4720

	thumb_func_start ovy310_21a472c
ovy310_21a472c: ; 0x021A472C
	push {r3, lr}
	ldr r3, _021A4740 ; =0x021A7748
	ldr r0, [r0, #0x2c]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldrb r3, [r3, #8]
	bl ovy310_21a6400
	pop {r3, pc}
	nop
_021A4740: .word 0x021A7748
	thumb_func_end ovy310_21a472c

	thumb_func_start sub_021A4744
sub_021A4744: ; 0x021A4744
	ldr r0, [r0, #0x2c]
	ldr r3, _021A474C ; =sub_021A6420
	bx r3
	nop
_021A474C: .word sub_021A6420
	thumb_func_end sub_021A4744

	thumb_func_start sub_021A4750
sub_021A4750: ; 0x021A4750
	add r3, r1, #0
	mov r2, #0x14
	mul r3, r2
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, _021A4768 ; =0x021A7758
	ldr r1, _021A476C ; =0x021A7754
	ldrh r2, [r2, r3]
	ldr r1, [r1, r3]
	ldr r0, [r0, #0x2c]
	ldr r3, _021A4770 ; =sub_021A6410
	bx r3
	.align 2, 0
_021A4768: .word 0x021A7758
_021A476C: .word 0x021A7754
_021A4770: .word sub_021A6410
	thumb_func_end sub_021A4750

	thumb_func_start sub_021A4774
sub_021A4774: ; 0x021A4774
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x2c]
	ldr r3, _021A4780 ; =sub_021A6418
	bx r3
	nop
_021A4780: .word sub_021A6418
	thumb_func_end sub_021A4774

	thumb_func_start sub_021A4784
sub_021A4784: ; 0x021A4784
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x2c]
	ldr r3, _021A4790 ; =sub_021A6420
	bx r3
	nop
_021A4790: .word sub_021A6420
	thumb_func_end sub_021A4784

	thumb_func_start sub_021A4794
sub_021A4794: ; 0x021A4794
	ldr r0, [r0, #0x2c]
	ldr r3, _021A479C ; =sub_021A6408
	bx r3
	nop
_021A479C: .word sub_021A6408
	thumb_func_end sub_021A4794

	thumb_func_start ovy310_21a47a0
ovy310_21a47a0: ; 0x021A47A0
	push {r4, r5}
	ldr r4, _021A47C8 ; =0x021A7740
	mov r1, #0
_021A47A6:
	lsl r2, r1, #2
	add r5, r4, r2
	add r3, r0, r2
	ldrb r2, [r4, r2]
	add r1, r1, #1
	cmp r1, #2
	strb r2, [r3, #0xe]
	ldrb r2, [r5, #1]
	strb r2, [r3, #0xf]
	ldrb r2, [r5, #2]
	strb r2, [r3, #0xc]
	ldrb r2, [r5, #3]
	strb r2, [r3, #0xd]
	blt _021A47A6
	pop {r4, r5}
	bx lr
	nop
_021A47C8: .word 0x021A7740
	thumb_func_end ovy310_21a47a0

	thumb_func_start sub_021A47CC
sub_021A47CC: ; 0x021A47CC
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021A47CC

	thumb_func_start sub_021A47D4
sub_021A47D4: ; 0x021A47D4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_021A47D4

	thumb_func_start ovy310_21a47dc
ovy310_21a47dc: ; 0x021A47DC
	push {r3, lr}
	mov r1, #0x20
	str r1, [sp]
	ldr r3, _021A47F0 ; =0x021A7834
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_021A47F0: .word 0x021A7834
	thumb_func_end ovy310_21a47dc

	thumb_func_start sub_021A47F4
sub_021A47F4: ; 0x021A47F4
	ldr r3, _021A47F8 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A47F8: .word GFL_HeapFree
	thumb_func_end sub_021A47F4

	thumb_func_start sub_021A47FC
sub_021A47FC: ; 0x021A47FC
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #4]
	sub r1, #0x18
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021A47FC

	thumb_func_start sub_021A4808
sub_021A4808: ; 0x021A4808
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_021A4808

	thumb_func_start sub_021A480C
sub_021A480C: ; 0x021A480C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A480C

	thumb_func_start sub_021A4810
sub_021A4810: ; 0x021A4810
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021A4810

	thumb_func_start sub_021A4814
sub_021A4814: ; 0x021A4814
	strb r1, [r0]
	bx lr
	thumb_func_end sub_021A4814

	thumb_func_start sub_021A4818
sub_021A4818: ; 0x021A4818
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021A4818

	thumb_func_start sub_021A481C
sub_021A481C: ; 0x021A481C
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021A481C

	thumb_func_start ovy310_21a4820
ovy310_21a4820: ; 0x021A4820
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, _021A4850 ; =0x021A7850
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	bl sub_021A4884
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy310_21a4890
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A4850: .word 0x021A7850
	thumb_func_end ovy310_21a4820

	thumb_func_start ovy310_21a4854
ovy310_21a4854: ; 0x021A4854
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A48B0
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy310_21a4854

	thumb_func_start sub_021A4864
sub_021A4864: ; 0x021A4864
	ldr r3, _021A4868 ; =ovy310_21a48bc
	bx r3
	.align 2, 0
_021A4868: .word ovy310_21a48bc
	thumb_func_end sub_021A4864

	thumb_func_start sub_021A486C
sub_021A486C: ; 0x021A486C
	ldr r3, _021A4870 ; =ovy310_21a48d8
	bx r3
	.align 2, 0
_021A4870: .word ovy310_21a48d8
	thumb_func_end sub_021A486C

	thumb_func_start sub_021A4874
sub_021A4874: ; 0x021A4874
	ldr r3, _021A4878 ; =sub_021A48F4
	bx r3
	.align 2, 0
_021A4878: .word sub_021A48F4
	thumb_func_end sub_021A4874

	thumb_func_start sub_021A487C
sub_021A487C: ; 0x021A487C
	ldr r3, _021A4880 ; =sub_021A48FC
	bx r3
	.align 2, 0
_021A4880: .word sub_021A48FC
	thumb_func_end sub_021A487C

	thumb_func_start sub_021A4884
sub_021A4884: ; 0x021A4884
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A4884

	thumb_func_start ovy310_21a4890
ovy310_21a4890: ; 0x021A4890
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xd3
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021A48AC ; =0x021A7850
	lsl r1, r4, #2
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r5]
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A48AC: .word 0x021A7850
	thumb_func_end ovy310_21a4890

	thumb_func_start sub_021A48B0
sub_021A48B0: ; 0x021A48B0
	ldr r0, [r0]
	ldr r3, _021A48B8 ; =GFL_HeapFree
	bx r3
	nop
_021A48B8: .word GFL_HeapFree
	thumb_func_end sub_021A48B0

	thumb_func_start ovy310_21a48bc
ovy310_21a48bc: ; 0x021A48BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, [r4]
	lsl r0, r0, #2
	str r1, [r2, r0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	add r0, r0, #1
	blx sub_0208D65C
	str r1, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a48bc

	thumb_func_start ovy310_21a48d8
ovy310_21a48d8: ; 0x021A48D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	ldr r1, [r5]
	lsl r0, r2, #2
	ldr r4, [r1, r0]
	ldr r1, [r5, #4]
	add r0, r2, #1
	blx sub_0208D65C
	str r1, [r5, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a48d8

	thumb_func_start sub_021A48F4
sub_021A48F4: ; 0x021A48F4
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A48F4

	thumb_func_start sub_021A48FC
sub_021A48FC: ; 0x021A48FC
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _021A4908
	mov r0, #1
	bx lr
_021A4908:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A48FC

	thumb_func_start ovy310_21a490c
ovy310_21a490c: ; 0x021A490C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x37
	str r0, [sp]
	add r0, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r3, _021A495C ; =0x021A7858
	mov r1, #0x20
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r6, [r4, #0x10]
	ldrb r0, [r5, #4]
	str r7, [r4, #0x14]
	ldrb r1, [r5, #1]
	str r0, [sp]
	ldrb r0, [r5, #7]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r0, [r5]
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A495C: .word 0x021A7858
	thumb_func_end ovy310_21a490c

	thumb_func_start ovy310_21a4960
ovy310_21a4960: ; 0x021A4960
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl BmpWin_Free
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4960

	thumb_func_start ovy310_21a4974
ovy310_21a4974: ; 0x021A4974
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy310_21a4990
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a4974

	thumb_func_start ovy310_21a4990
ovy310_21a4990: ; 0x021A4990
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldrb r1, [r5, #0xa]
	mov r0, #0x1f
	and r0, r1
	ldrb r1, [r5, #8]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x11
	ldrb r1, [r5, #9]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	ldrb r1, [r5, #0xa]
	add r7, r0, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021A49D4
	add r0, r5, #0
	add r1, r6, #0
	bl ovy310_21a4aa8
	ldrb r1, [r5, #5]
	add r1, r1, r0
	b _021A49D6
_021A49D4:
	ldrb r1, [r5, #5]
_021A49D6:
	ldrb r2, [r5, #6]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #0x10
	str r0, [sp]
	lsl r2, r2, #0x10
	str r4, [sp, #4]
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r6, #0
	bl sub_02021D28
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A4A0C
	ldr r4, [r5, #0x18]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A4A0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a4990

	thumb_func_start ovy310_21a4a10
ovy310_21a4a10: ; 0x021A4A10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	cmp r0, #0
	bne _021A4A30
	cmp r4, #0
	beq _021A4A30
	ldr r6, [r5, #0x18]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	b _021A4A40
_021A4A30:
	cmp r0, #0
	beq _021A4A4A
	cmp r4, #0
	bne _021A4A4A
	ldr r6, [r5, #0x18]
	add r0, r6, #0
	bl sub_020484B4
_021A4A40:
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A4A4A:
	str r4, [r5, #0x1c]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4a10

	thumb_func_start ovy310_21a4a50
ovy310_21a4a50: ; 0x021A4A50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	bl sub_02048508
	ldr r0, [r5, #0x18]
	bl sub_020484D4
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_020484E8
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_020484EC
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	bl sub_020484E0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	bl sub_020484E4
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	str r4, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204566C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A4AA4
	ldr r0, [r5, #0x18]
	bl sub_020484D4
	bl sub_02045B7C
_021A4AA4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a4a50

	thumb_func_start ovy310_21a4aa8
ovy310_21a4aa8: ; 0x021A4AA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r1, #0
	bl sub_020484D8
	ldr r1, [r5, #0x10]
	lsl r4, r0, #3
	add r0, r6, #0
	mov r2, #0
	mov r5, #0
	bl GFL_FontGetBlockWidth
	sub r0, r4, r0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DD34
	blx sub_0208DA4C
	cmp r0, #0
	bge _021A4ADC
	add r0, r5, #0
_021A4ADC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4aa8

	thumb_func_start ovy310_21a4ae0
ovy310_21a4ae0: ; 0x021A4AE0
	push {r4, lr}
	bl ovy310_21a57d4
	add r4, r0, #0
	bl ovy310_21a577c
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy310_21a4ae0

	thumb_func_start ovy310_21a4af0
ovy310_21a4af0: ; 0x021A4AF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A578C
	add r0, r4, #0
	bl sub_021A5800
	pop {r4, pc}
	thumb_func_end ovy310_21a4af0

	thumb_func_start ovy310_21a4b00
ovy310_21a4b00: ; 0x021A4B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bl ovy310_21a511c
	mov r4, #0
	cmp r6, #0
	ble _021A4B22
_021A4B12:
	lsl r1, r4, #4
	add r0, r5, #0
	add r1, r7, r1
	bl ovy310_21a5138
	add r4, r4, #1
	cmp r4, r6
	blt _021A4B12
_021A4B22:
	add r0, r5, #0
	bl ovy310_21a51dc
	add r0, r5, #0
	bl ovy310_21a5268
	add r0, r5, #0
	bl ovy310_21a52dc
	add r0, r5, #0
	bl ovy310_21a5310
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a4b00

	thumb_func_start sub_021A4B3C
sub_021A4B3C: ; 0x021A4B3C
	ldr r3, _021A4B40 ; =ovy310_21a4fd0
	bx r3
	.align 2, 0
_021A4B40: .word ovy310_21a4fd0
	thumb_func_end sub_021A4B3C

	thumb_func_start ovy310_21a4b44
ovy310_21a4b44: ; 0x021A4B44
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A573C
	cmp r0, #1
	bne _021A4B68
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A4B68
	add r0, r4, #0
	bl ovy310_21a4ef4
	add r0, r4, #0
	bl ovy310_21a4c64
	add r0, r4, #0
	bl ovy310_21a4e00
_021A4B68:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4b44

	thumb_func_start sub_021A4B6C
sub_021A4B6C: ; 0x021A4B6C
	ldr r3, _021A4B74 ; =sub_021A50F4
	mov r1, #1
	bx r3
	nop
_021A4B74: .word sub_021A50F4
	thumb_func_end sub_021A4B6C

	thumb_func_start sub_021A4B78
sub_021A4B78: ; 0x021A4B78
	ldr r3, _021A4B80 ; =sub_021A50F4
	mov r1, #2
	bx r3
	nop
_021A4B80: .word sub_021A50F4
	thumb_func_end sub_021A4B78

	thumb_func_start sub_021A4B84
sub_021A4B84: ; 0x021A4B84
	ldr r3, _021A4B8C ; =sub_021A50F4
	mov r1, #3
	bx r3
	nop
_021A4B8C: .word sub_021A50F4
	thumb_func_end sub_021A4B84

	thumb_func_start sub_021A4B90
sub_021A4B90: ; 0x021A4B90
	ldr r3, _021A4B98 ; =sub_021A50F4
	mov r1, #5
	bx r3
	nop
_021A4B98: .word sub_021A50F4
	thumb_func_end sub_021A4B90

	thumb_func_start sub_021A4B9C
sub_021A4B9C: ; 0x021A4B9C
	ldr r3, _021A4BA0 ; =sub_021A5470
	bx r3
	.align 2, 0
_021A4BA0: .word sub_021A5470
	thumb_func_end sub_021A4B9C

	thumb_func_start sub_021A4BA4
sub_021A4BA4: ; 0x021A4BA4
	ldr r3, _021A4BA8 ; =sub_021A5474
	bx r3
	.align 2, 0
_021A4BA8: .word sub_021A5474
	thumb_func_end sub_021A4BA4

	thumb_func_start ovy310_21a4bac
ovy310_21a4bac: ; 0x021A4BAC
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a547c
	add r0, r4, #0
	bl ovy310_21a5310
	pop {r4, pc}
	thumb_func_end ovy310_21a4bac

	thumb_func_start ovy310_21a4bbc
ovy310_21a4bbc: ; 0x021A4BBC
	push {r4, lr}
	sub sp, #8
	ldr r2, _021A4BDC ; =0x000001B6
	ldrsh r4, [r0, r2]
	sub r2, r2, #2
	ldrsh r3, [r0, r2]
	add r2, sp, #0
	strh r3, [r2]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	add r1, sp, #0
	bl ovy310_21a4bac
	add sp, #8
	pop {r4, pc}
	nop
_021A4BDC: .word 0x000001B6
	thumb_func_end ovy310_21a4bbc

	thumb_func_start sub_021A4BE0
sub_021A4BE0: ; 0x021A4BE0
	ldr r3, _021A4BE4 ; =ovy310_21a549c
	bx r3
	.align 2, 0
_021A4BE4: .word ovy310_21a549c
	thumb_func_end sub_021A4BE0

	thumb_func_start ovy310_21a4be8
ovy310_21a4be8: ; 0x021A4BE8
	push {r3, lr}
	bl sub_021A54CC
	ldrb r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4be8

	thumb_func_start ovy310_21a4bf4
ovy310_21a4bf4: ; 0x021A4BF4
	push {r3, lr}
	bl ovy310_21a54d8
	ldrb r0, [r0, #8]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4bf4

	thumb_func_start ovy310_21a4c00
ovy310_21a4c00: ; 0x021A4C00
	push {r3, lr}
	bl sub_021A54CC
	ldrb r0, [r0, #8]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy310_21a4c00

	thumb_func_start sub_021A4C0C
sub_021A4C0C: ; 0x021A4C0C
	ldr r3, _021A4C10 ; =sub_021A5740
	bx r3
	.align 2, 0
_021A4C10: .word sub_021A5740
	thumb_func_end sub_021A4C0C

	thumb_func_start ovy310_21a4c14
ovy310_21a4c14: ; 0x021A4C14
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ovy310_21a54d8
	add r1, r0, #0
	add r0, r5, #0
	add r5, sp, #0
	add r2, r5, #0
	bl ovy310_21a558c
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy310_21a595c
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a4c14

	thumb_func_start ovy310_21a4c3c
ovy310_21a4c3c: ; 0x021A4C3C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_021A54CC
	add r1, r0, #0
	add r0, r5, #0
	add r5, sp, #0
	add r2, r5, #0
	bl ovy310_21a558c
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy310_21a595c
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a4c3c

	thumb_func_start ovy310_21a4c64
ovy310_21a4c64: ; 0x021A4C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021A4CCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A4C7C: ; jump table
	.short _021A4C88 - _021A4C7C - 2 ; case 0
	.short _021A4C8E - _021A4C7C - 2 ; case 1
	.short _021A4C9A - _021A4C7C - 2 ; case 2
	.short _021A4CA6 - _021A4C7C - 2 ; case 3
	.short _021A4CB4 - _021A4C7C - 2 ; case 4
	.short _021A4CBC - _021A4C7C - 2 ; case 5
_021A4C88:
	mov r1, #0
	str r1, [sp]
	b _021A4CCE
_021A4C8E:
	ldr r1, [r4, #0x10]
	mov r5, #0x64
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x78
	b _021A4CC6
_021A4C9A:
	ldr r1, [r4, #0x10]
	mov r5, #0x64
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x1e
	b _021A4CC6
_021A4CA6:
	ldr r0, [r4, #0x10]
	mov r1, #0x14
	sub r2, r1, r0
	mov r5, #0x64
	add r0, r2, #0
	mul r0, r5
	b _021A4CC6
_021A4CB4:
	mov r0, #0x64
	str r0, [sp]
	mov r0, #0
	b _021A4CCE
_021A4CBC:
	ldr r1, [r4, #0x10]
	mov r5, #0x64
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x3c
_021A4CC6:
	blx sub_0208D868
	str r0, [sp]
	sub r0, r5, r0
_021A4CCE:
	lsl r1, r0, #1
	add r6, r0, r1
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp]
	cmp r0, #0
	bgt _021A4CDE
	b _021A4DEE
_021A4CDE:
	ldr r0, _021A4DF4 ; =0x040004A4
	ldr r7, _021A4DF4 ; =0x040004A4
	str r0, [sp, #4]
	add r0, #0x5c
	str r0, [sp, #4]
	ldr r0, _021A4DF4 ; =0x040004A4
	ldr r5, _021A4DF4 ; =0x040004A4
	str r0, [sp, #8]
	add r0, #0x60
	str r0, [sp, #8]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r7, #0x24
	sub r0, r0, #2
	str r0, [sp, #0x38]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r5, #0x18
	sub r0, r0, #4
	str r0, [sp, #0x34]
	ldr r0, _021A4DF8 ; =0x0000041A
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #6
	str r0, [sp, #0x2c]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, _021A4DF8 ; =0x0000041A
	str r0, [sp, #0x20]
	sub r0, #8
	str r0, [sp, #0x20]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, _021A4DF8 ; =0x0000041A
	str r0, [sp, #0x10]
	sub r0, #8
	str r0, [sp, #0x10]
	ldr r0, _021A4DF8 ; =0x0000041A
	sub r0, r0, #6
	str r0, [sp, #0xc]
_021A4D44:
	mov r0, #0xa
	mul r0, r6
	add r3, r4, r0
	ldr r0, _021A4DF8 ; =0x0000041A
	ldrb r0, [r3, r0]
	lsl r1, r0, #0x18
	ldr r0, _021A4DFC ; =0x001F00C0
	orr r1, r0
	ldr r0, _021A4DF4 ; =0x040004A4
	str r1, [r0]
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0]
	ldr r0, [sp, #0x38]
	ldrh r0, [r3, r0]
	str r0, [r7]
	ldr r0, [sp, #0x34]
	ldrh r2, [r3, r0]
	ldr r0, [sp, #0x30]
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r3, r0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5]
	mov r1, #0x4b
	add r0, r6, #1
	lsl r1, r1, #2
	str r2, [r5]
	blx sub_0208D65C
	add r6, r1, #0
	mov r0, #0xa
	mul r0, r6
	add r3, r4, r0
	ldr r0, [sp, #0x28]
	ldrh r0, [r3, r0]
	str r0, [r7]
	ldr r0, [sp, #0x24]
	ldrh r2, [r3, r0]
	ldr r0, [sp, #0x20]
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x1c]
	ldrh r0, [r3, r0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5]
	mov r1, #0x4b
	add r0, r6, #1
	lsl r1, r1, #2
	str r2, [r5]
	blx sub_0208D65C
	add r6, r1, #0
	mov r0, #0xa
	mul r0, r6
	add r3, r4, r0
	ldr r0, [sp, #0x18]
	ldrh r0, [r3, r0]
	str r0, [r7]
	ldr r0, [sp, #0x14]
	ldrh r2, [r3, r0]
	ldr r0, [sp, #0x10]
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0xc]
	ldrh r0, [r3, r0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5]
	mov r1, #0x4b
	add r0, r6, #1
	lsl r1, r1, #2
	str r2, [r5]
	blx sub_0208D65C
	add r6, r1, #0
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	cmp r0, r1
	blt _021A4D44
_021A4DEE:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4DF4: .word 0x040004A4
_021A4DF8: .word 0x0000041A
_021A4DFC: .word 0x001F00C0
	thumb_func_end ovy310_21a4c64

	thumb_func_start ovy310_21a4e00
ovy310_21a4e00: ; 0x021A4E00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl sub_021A5740
	cmp r0, #0
	bne _021A4EE8
	ldr r0, _021A4EEC ; =0x040004A4
	ldr r1, _021A4EF0 ; =0x001F00C0
	str r0, [sp, #8]
	str r1, [r0]
	mov r0, #0x6b
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldrb r0, [r5, r0]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	ble _021A4EE8
	ldr r0, [sp, #8]
	ldr r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r4, #0x18
	str r0, [sp, #0x10]
	sub r0, #0x24
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsr r6, r0, #0xc
	add r0, #0x60
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	add r0, #8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	add r0, #0xa
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, #0xe
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
_021A4E64:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_021A54CC
	add r1, sp, #0x24
	add r7, r0, #0
	add r1, #1
	add r2, sp, #0x24
	bl ovy310_21a5540
	ldrb r0, [r7, #8]
	cmp r0, #3
	blo _021A4EDC
	add r2, sp, #0x24
	ldrb r3, [r2, #1]
	mov r2, #6
	ldr r0, [sp, #0x20]
	mul r2, r3
	add r3, r5, r2
	ldr r2, [sp, #0x18]
	ldrsh r1, [r5, r0]
	ldrsh r2, [r3, r2]
	ldr r0, [sp, #0x1c]
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	mov ip, r2
	ldr r2, [sp, #0x14]
	ldrsh r0, [r5, r0]
	ldrsh r2, [r3, r2]
	lsl r1, r1, #0x10
	mov r3, #0
	add r2, r0, r2
	lsl r2, r2, #0x10
	asr r7, r2, #0x10
	ldr r2, [sp, #0xc]
	lsl r0, r0, #0x10
	str r3, [r2]
	ldr r2, [sp, #0x10]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	str r3, [r2]
	str r0, [r4]
	str r6, [r4]
	str r0, [r4]
	mov r0, ip
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r6, [r4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r6, [r4]
	mov r1, #0
	str r1, [r0]
_021A4EDC:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _021A4E64
_021A4EE8:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4EEC: .word 0x040004A4
_021A4EF0: .word 0x001F00C0
	thumb_func_end ovy310_21a4e00

	thumb_func_start ovy310_21a4ef4
ovy310_21a4ef4: ; 0x021A4EF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	mov r4, #1
	mov r5, #0
	lsl r4, r4, #0xc
	str r5, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r4, [sp, #0x34]
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	str r5, [sp, #0x28]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	add r0, sp, #0x2c
	add r1, sp, #0x20
	add r2, sp, #0x14
	mov r3, #1
	str r5, [sp]
	mov r6, #1
	bl G3i_LookAt_
	ldr r7, _021A4FA8 ; =0x0000019A
	mov r0, #5
	str r7, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r6, _021A4FAC ; =0xFFFFF000
	ldr r2, _021A4FB0 ; =0xFFFFEAAC
	ldr r3, _021A4FB4 ; =0x00001554
	add r0, r4, #0
	add r1, r6, #0
	str r5, [sp, #0x10]
	bl G3i_OrthoW_
	bl sub_02065698
	add r3, sp, #0x2c
	ldr r2, _021A4FB8 ; =0x02143C4C
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x20
	str r0, [r2]
	ldr r2, _021A4FBC ; =0x02143C58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x14
	str r0, [r2]
	ldr r2, _021A4FC0 ; =0x02143C64
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021A4FC4 ; =0x02143A58
	str r0, [r2]
	add r0, sp, #0x2c
	add r1, sp, #0x20
	add r2, sp, #0x14
	blx MTX_LookAt
	ldr r5, _021A4FC8 ; =0x02143A8C
	mov r0, #0xe8
	ldr r1, [r5, #0x7c]
	ldr r2, _021A4FB0 ; =0xFFFFEAAC
	bic r1, r0
	str r1, [r5, #0x7c]
	mov r0, #5
	str r7, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _021A4FCC ; =0x02143A14
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, _021A4FB4 ; =0x00001554
	add r0, r4, #0
	add r1, r6, #0
	blx MTX_OrthoW
	ldr r1, [r5, #0x7c]
	mov r0, #0x50
	bic r1, r0
	str r1, [r5, #0x7c]
	bl sub_0206578C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4FA8: .word 0x0000019A
_021A4FAC: .word 0xFFFFF000
_021A4FB0: .word 0xFFFFEAAC
_021A4FB4: .word 0x00001554
_021A4FB8: .word 0x02143C4C
_021A4FBC: .word 0x02143C58
_021A4FC0: .word 0x02143C64
_021A4FC4: .word 0x02143A58
_021A4FC8: .word 0x02143A8C
_021A4FCC: .word 0x02143A14
	thumb_func_end ovy310_21a4ef4

	thumb_func_start ovy310_21a4fd0
ovy310_21a4fd0: ; 0x021A4FD0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _021A501A
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021A501A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A4FEC: ; jump table
	.short _021A4FF8 - _021A4FEC - 2 ; case 0
	.short _021A4FFE - _021A4FEC - 2 ; case 1
	.short _021A5004 - _021A4FEC - 2 ; case 2
	.short _021A500A - _021A4FEC - 2 ; case 3
	.short _021A5010 - _021A4FEC - 2 ; case 4
	.short _021A5016 - _021A4FEC - 2 ; case 5
_021A4FF8:
	bl ovy310_21a5028
	b _021A501A
_021A4FFE:
	bl ovy310_21a5040
	b _021A501A
_021A5004:
	bl ovy310_21a5050
	b _021A501A
_021A500A:
	bl ovy310_21a5060
	b _021A501A
_021A5010:
	bl ovy310_21a5070
	b _021A501A
_021A5016:
	bl ovy310_21a5088
_021A501A:
	add r0, r4, #0
	bl sub_021A5098
	add r0, r4, #0
	bl sub_021A50DC
	pop {r4, pc}
	thumb_func_end ovy310_21a4fd0

	thumb_func_start ovy310_21a5028
ovy310_21a5028: ; 0x021A5028
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021A487C
	cmp r0, #0
	bne _021A503C
	add r0, r4, #0
	bl ovy310_21a5100
_021A503C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5028

	thumb_func_start ovy310_21a5040
ovy310_21a5040: ; 0x021A5040
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0x78
	blo _021A504E
	mov r1, #4
	bl sub_021A5114
_021A504E:
	pop {r3, pc}
	thumb_func_end ovy310_21a5040

	thumb_func_start ovy310_21a5050
ovy310_21a5050: ; 0x021A5050
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0x1e
	blo _021A505E
	mov r1, #4
	bl sub_021A5114
_021A505E:
	pop {r3, pc}
	thumb_func_end ovy310_21a5050

	thumb_func_start ovy310_21a5060
ovy310_21a5060: ; 0x021A5060
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0x14
	blo _021A506E
	mov r1, #0
	bl sub_021A5114
_021A506E:
	pop {r3, pc}
	thumb_func_end ovy310_21a5060

	thumb_func_start ovy310_21a5070
ovy310_21a5070: ; 0x021A5070
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021A487C
	cmp r0, #0
	bne _021A5084
	add r0, r4, #0
	bl ovy310_21a5100
_021A5084:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5070

	thumb_func_start ovy310_21a5088
ovy310_21a5088: ; 0x021A5088
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0x3c
	blo _021A5096
	mov r1, #4
	bl sub_021A5114
_021A5096:
	pop {r3, pc}
	thumb_func_end ovy310_21a5088

	thumb_func_start sub_021A5098
sub_021A5098: ; 0x021A5098
	ldr r2, [r0, #0x10]
	add r2, r2, #1
	str r2, [r0, #0x10]
	ldr r2, [r0, #8]
	cmp r2, #5
	bhi _021A50D2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A50B0: ; jump table
	.short _021A50BC - _021A50B0 - 2 ; case 0
	.short _021A50C2 - _021A50B0 - 2 ; case 1
	.short _021A50C6 - _021A50B0 - 2 ; case 2
	.short _021A50CA - _021A50B0 - 2 ; case 3
	.short _021A50CE - _021A50B0 - 2 ; case 4
	.short _021A50D0 - _021A50B0 - 2 ; case 5
_021A50BC:
	mov r1, #0
	mvn r1, r1
	b _021A50D2
_021A50C2:
	mov r1, #0x78
	b _021A50D2
_021A50C6:
	mov r1, #0x1e
	b _021A50D2
_021A50CA:
	mov r1, #0x14
	b _021A50D2
_021A50CE:
	b _021A50BC
_021A50D0:
	mov r1, #0x3c
_021A50D2:
	ldr r2, [r0, #0x10]
	cmp r1, r2
	bhs _021A50DA
	str r1, [r0, #0x10]
_021A50DA:
	bx lr
	thumb_func_end sub_021A5098

	thumb_func_start sub_021A50DC
sub_021A50DC: ; 0x021A50DC
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021A50F2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021A50F2
	sub r1, r1, #1
	str r1, [r0, #0x18]
	bne _021A50F2
	mov r1, #0
	str r1, [r0, #0x14]
_021A50F2:
	bx lr
	thumb_func_end sub_021A50DC

	thumb_func_start sub_021A50F4
sub_021A50F4: ; 0x021A50F4
	ldr r0, [r0, #0xc]
	ldr r3, _021A50FC ; =sub_021A4864
	bx r3
	nop
_021A50FC: .word sub_021A4864
	thumb_func_end sub_021A50F4

	thumb_func_start ovy310_21a5100
ovy310_21a5100: ; 0x021A5100
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021A486C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A5114
	pop {r4, pc}
	thumb_func_end ovy310_21a5100

	thumb_func_start sub_021A5114
sub_021A5114: ; 0x021A5114
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021A5114

	thumb_func_start ovy310_21a511c
ovy310_21a511c: ; 0x021A511C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [r4, #0xc]
	bl sub_021A4874
	add r0, r4, #0
	mov r1, #0
	bl sub_021A5114
	pop {r4, pc}
	thumb_func_end ovy310_21a511c

	thumb_func_start ovy310_21a5138
ovy310_21a5138: ; 0x021A5138
	push {r3, r4, r5, r6}
	mov r3, #0x6b
	lsl r3, r3, #2
	ldrb r4, [r0, r3]
	ldrb r6, [r1]
	mov r2, #0x14
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	strb r6, [r4, #0x1c]
	ldrb r4, [r0, r3]
	ldr r6, [r1, #4]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	str r6, [r4, #0x20]
	ldrb r5, [r0, r3]
	mov r4, #0
	add r6, r5, #0
	mul r6, r2
	add r5, r0, r6
	add r5, #0x24
	strb r4, [r5]
	ldrb r5, [r0, r3]
	add r6, r5, #0
	mul r6, r2
	add r5, r0, r6
	add r5, #0x25
	strb r4, [r5]
	ldrb r5, [r0, r3]
	add r6, r5, #0
	mul r6, r2
	add r5, r0, r6
	add r5, #0x26
	strb r4, [r5]
	ldrb r4, [r0, r3]
	ldrb r6, [r1, #8]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	add r4, #0x27
	strb r6, [r4]
	ldrb r4, [r0, r3]
	ldrb r6, [r1, #9]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	add r4, #0x28
	strb r6, [r4]
	ldrb r4, [r0, r3]
	ldrb r6, [r1, #0xa]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	add r4, #0x29
	strb r6, [r4]
	ldrb r4, [r0, r3]
	ldrb r6, [r1, #0xb]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	add r4, #0x2a
	strb r6, [r4]
	ldrb r4, [r0, r3]
	ldrb r6, [r1, #0xc]
	add r5, r4, #0
	mul r5, r2
	add r4, r0, r5
	add r4, #0x2b
	strb r6, [r4]
	ldrb r4, [r1, #0xd]
	ldrb r1, [r0, r3]
	mul r2, r1
	add r1, r0, r2
	add r1, #0x2c
	strb r4, [r1]
	ldrb r1, [r0, r3]
	add r1, r1, #1
	strb r1, [r0, r3]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a5138

	thumb_func_start ovy310_21a51dc
ovy310_21a51dc: ; 0x021A51DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [sp]
	ldrb r0, [r0, r1]
	mov lr, r0
	mov r0, #0
	mov ip, r0
	mov r0, lr
	sub r0, r0, #1
	cmp r0, #0
	ble _021A5262
_021A51F6:
	mov r0, lr
	sub r1, r0, #1
	mov r0, ip
	sub r7, r1, r0
	mov r6, #0
	cmp r7, #0
	ble _021A5252
_021A5204:
	mov r0, #0x14
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bhs _021A524C
	add r2, r4, #0
	add r2, #0x1c
	ldmia r2!, {r0, r1}
	add r5, sp, #4
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	add r2, r4, #0
	str r0, [r5]
	add r5, r4, #0
	add r2, #0x30
	ldmia r2!, {r0, r1}
	add r5, #0x1c
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	add r4, #0x30
	str r0, [r5]
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r3]
	str r0, [r4]
_021A524C:
	add r6, r6, #1
	cmp r6, r7
	blt _021A5204
_021A5252:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	mov r0, lr
	sub r1, r0, #1
	mov r0, ip
	cmp r0, r1
	blt _021A51F6
_021A5262:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a51dc

	thumb_func_start ovy310_21a5268
ovy310_21a5268: ; 0x021A5268
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl ovy310_21a54ec
	str r0, [sp]
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r6, [r4, r0]
	mov r5, #0
	cmp r6, #0
	ble _021A52A6
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #4]
_021A5288:
	mov r0, #0x14
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r7, r0, r1
	ldr r1, [r7, #4]
	mov r0, #0x64
	mul r0, r1
	ldr r1, [sp]
	blx sub_0208D868
	add r5, r5, #1
	strb r0, [r7, #8]
	cmp r5, r6
	blt _021A5288
_021A52A6:
	add r0, r4, #0
	bl ovy310_21a5514
	mov r1, #0x64
	sub r5, r1, r0
	mov r1, #0
	cmp r5, #0
	ble _021A52D8
	mov r7, #0x14
_021A52B8:
	add r2, r1, #0
	mul r2, r7
	add r0, r4, r2
	add r0, #0x24
	ldrb r0, [r0]
	add r2, r4, r2
	add r2, #0x24
	add r0, r0, #1
	strb r0, [r2]
	add r0, r1, #1
	add r1, r6, #0
	sub r5, r5, #1
	blx sub_0208D65C
	cmp r5, #0
	bgt _021A52B8
_021A52D8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a5268

	thumb_func_start ovy310_21a52dc
ovy310_21a52dc: ; 0x021A52DC
	push {r3, r4, r5, r6}
	mov r1, #0x6b
	lsl r1, r1, #2
	ldrb r3, [r0, r1]
	mov r4, #0
	mov r2, #0
	cmp r3, #0
	ble _021A530A
	add r0, #0x1c
	mov r5, #0x14
_021A52F0:
	add r1, r2, #0
	mul r1, r5
	add r1, r0, r1
	strb r4, [r1, #9]
	ldrb r6, [r1, #8]
	add r2, r2, #1
	add r6, r4, r6
	sub r6, r6, #1
	strb r6, [r1, #0xa]
	ldrb r1, [r1, #8]
	add r4, r4, r1
	cmp r2, r3
	blt _021A52F0
_021A530A:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a52dc

	thumb_func_start ovy310_21a5310
ovy310_21a5310: ; 0x021A5310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [sp]
	ldrb r0, [r0, r1]
	mov r6, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bgt _021A532C
	b _021A5468
_021A532C:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl sub_021A54CC
	add r4, r0, #0
	bl sub_021A5578
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_021A5564
	add r1, sp, #0x3c
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, #1
	add r2, sp, #0x3c
	bl ovy310_21a5540
	mov r0, #0x6d
	ldr r1, [sp]
	lsl r0, r0, #2
	ldrsh r2, [r1, r0]
	add r1, sp, #0x3c
	strh r2, [r1, #2]
	ldr r1, [sp]
	add r2, r0, #2
	ldrsh r2, [r1, r2]
	add r1, sp, #0x3c
	strh r2, [r1, #4]
	ldr r1, [sp]
	add r2, r0, #4
	ldrsh r3, [r1, r2]
	ldr r1, [sp, #0xc]
	mov r2, #0xcd
	mul r2, r1
	add r2, r3, r2
	add r1, sp, #0x3c
	strh r2, [r1, #6]
	ldrb r4, [r1, #1]
	ldrb r1, [r1]
	cmp r4, r1
	bgt _021A545A
	ldr r1, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	add r1, r0, #6
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r0, _021A546C ; =0x00000412
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, _021A546C ; =0x00000412
	add r0, r0, #6
	str r0, [sp, #0x38]
	ldr r0, _021A546C ; =0x00000412
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, _021A546C ; =0x00000412
	add r0, r0, #4
	str r0, [sp, #0x30]
	ldr r0, _021A546C ; =0x00000412
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	ldr r0, _021A546C ; =0x00000412
	str r0, [sp, #0x28]
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, _021A546C ; =0x00000412
	str r0, [sp, #0x24]
	add r0, #0x12
	str r0, [sp, #0x24]
	ldr r0, _021A546C ; =0x00000412
	str r0, [sp, #0x20]
	add r0, #0x1a
	str r0, [sp, #0x20]
	ldr r0, _021A546C ; =0x00000412
	str r0, [sp, #0x1c]
	add r0, #0x1c
	str r0, [sp, #0x1c]
_021A53D0:
	mov r0, #0xa
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r2, r4, #0
	add r5, r0, r1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x38]
	mov r3, #0xa
	strh r1, [r5, r0]
	add r0, sp, #0x3c
	ldrh r1, [r0, #2]
	ldr r0, _021A546C ; =0x00000412
	strh r1, [r5, r0]
	add r0, sp, #0x3c
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x34]
	strh r1, [r5, r0]
	add r0, sp, #0x3c
	ldrh r1, [r0, #6]
	ldr r0, [sp, #0x30]
	strh r1, [r5, r0]
	ldr r0, [sp, #0x2c]
	strb r7, [r5, r0]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	strh r1, [r5, r0]
	mov r1, #6
	mul r2, r1
	ldr r1, [sp, #0x14]
	add r0, sp, #0x3c
	add r1, r1, r2
	add r2, r6, #1
	mul r3, r2
	ldr r2, [sp, #0x18]
	add r0, #2
	add r2, r2, r3
	bl VEC_Fx16Add
	ldr r0, [sp, #0x24]
	strb r7, [r5, r0]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x20]
	strh r1, [r5, r0]
	add r0, r4, #1
	mov r1, #0x64
	blx sub_0208D65C
	mov r2, #6
	mul r2, r1
	ldr r1, [sp, #0x14]
	add r0, sp, #0x3c
	add r1, r1, r2
	add r2, r6, #2
	mov r3, #0xa
	mul r3, r2
	ldr r2, [sp, #0x18]
	add r0, #2
	add r2, r2, r3
	bl VEC_Fx16Add
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	strb r7, [r5, r0]
	add r0, sp, #0x3c
	ldrb r0, [r0]
	add r6, r6, #3
	cmp r4, r0
	ble _021A53D0
_021A545A:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021A5468
	b _021A532C
_021A5468:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A546C: .word 0x00000412
	thumb_func_end ovy310_21a5310

	thumb_func_start sub_021A5470
sub_021A5470: ; 0x021A5470
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021A5470

	thumb_func_start sub_021A5474
sub_021A5474: ; 0x021A5474
	mov r2, #1
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A5474

	thumb_func_start ovy310_21a547c
ovy310_21a547c: ; 0x021A547C
	push {r3, r4}
	mov r3, #2
	ldrsh r4, [r1, r3]
	mov r3, #0
	mov r2, #4
	ldrsh r3, [r1, r3]
	ldrsh r2, [r1, r2]
	mov r1, #0x6d
	lsl r1, r1, #2
	strh r3, [r0, r1]
	add r3, r1, #2
	strh r4, [r0, r3]
	add r1, r1, #4
	strh r2, [r0, r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy310_21a547c

	thumb_func_start ovy310_21a549c
ovy310_21a549c: ; 0x021A549C
	push {r4, r5}
	mov r2, #0x6b
	lsl r2, r2, #2
	ldrb r5, [r0, r2]
	mov r4, #0
	cmp r5, #0
	ble _021A54C6
	mov r2, #0x14
_021A54AC:
	add r3, r4, #0
	mul r3, r2
	add r3, r0, r3
	ldrb r3, [r3, #0x1c]
	cmp r3, r1
	bne _021A54C0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5}
	bx lr
_021A54C0:
	add r4, r4, #1
	cmp r4, r5
	blt _021A54AC
_021A54C6:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy310_21a549c

	thumb_func_start sub_021A54CC
sub_021A54CC: ; 0x021A54CC
	mov r2, #0x14
	add r0, #0x1c
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021A54CC

	thumb_func_start ovy310_21a54d8
ovy310_21a54d8: ; 0x021A54D8
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a549c
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A54CC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a54d8

	thumb_func_start ovy310_21a54ec
ovy310_21a54ec: ; 0x021A54EC
	push {r4, r5}
	mov r1, #0x6b
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r5, #0
	mov r3, #0
	cmp r4, #0
	ble _021A550E
	mov r1, #0x14
_021A54FE:
	add r2, r3, #0
	mul r2, r1
	add r2, r0, r2
	ldr r2, [r2, #0x20]
	add r3, r3, #1
	add r5, r5, r2
	cmp r3, r4
	blt _021A54FE
_021A550E:
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy310_21a54ec

	thumb_func_start ovy310_21a5514
ovy310_21a5514: ; 0x021A5514
	push {r4, r5}
	mov r1, #0x6b
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r5, #0
	mov r3, #0
	cmp r4, #0
	ble _021A5538
	mov r1, #0x14
_021A5526:
	add r2, r3, #0
	mul r2, r1
	add r2, r0, r2
	add r2, #0x24
	ldrb r2, [r2]
	add r3, r3, #1
	add r5, r5, r2
	cmp r3, r4
	blt _021A5526
_021A5538:
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a5514

	thumb_func_start ovy310_21a5540
ovy310_21a5540: ; 0x021A5540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r6, r2, #0
	blx sub_0208D3BC
	blx sub_0208DA4C
	add r7, r0, #0
	ldrb r0, [r5, #0xa]
	blx sub_0208D3BC
	blx sub_0208DA4C
	strb r7, [r4]
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a5540

	thumb_func_start sub_021A5564
sub_021A5564: ; 0x021A5564
	ldrb r1, [r0, #0xd]
	lsl r2, r1, #0xa
	ldrb r1, [r0, #0xb]
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #5
	orr r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_021A5564

	thumb_func_start sub_021A5578
sub_021A5578: ; 0x021A5578
	ldrb r1, [r0, #0x10]
	lsl r2, r1, #0xa
	ldrb r1, [r0, #0xe]
	ldrb r0, [r0, #0xf]
	lsl r0, r0, #5
	orr r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_021A5578

	thumb_func_start ovy310_21a558c
ovy310_21a558c: ; 0x021A558C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0xc
	add r4, r2, #0
	add r1, #1
	add r2, sp, #0xc
	bl ovy310_21a5540
	add r0, sp, #0xc
	ldrb r6, [r0]
	ldrb r0, [r0, #1]
	add r0, r0, r6
	add r0, r0, #1
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _021A5724 ; =0x40490FDB
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _021A5728 ; =0x3C23D70A
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _021A572C ; =0x3FC90FDB
	blx sub_0208E144
	add r7, r0, #0
	blx sub_0208D2F0
	blx sub_0208B9B0
	blx sub_0208CC6C
	add r1, r0, #0
	ldr r0, _021A5730 ; =0x3ED70A3D
	blx sub_0208DD34
	str r0, [sp, #4]
	add r0, r7, #0
	blx sub_0208D2F0
	blx sub_0208C028
	blx sub_0208CC6C
	add r1, r0, #0
	ldr r0, _021A5730 ; =0x3ED70A3D
	blx sub_0208DD34
	str r0, [sp]
	mov r0, #6
	mul r0, r6
	add r1, r5, r0
	ldr r0, _021A5734 ; =0x000001BE
	ldrsh r0, [r1, r0]
	blx sub_0208D374
	ldr r1, _021A5738 ; =0x45800000
	blx sub_0208E3C8
	add r7, r0, #0
	ldr r0, _021A5734 ; =0x000001BE
	sub r0, #0xa
	ldrsh r0, [r5, r0]
	blx sub_0208D374
	ldr r1, _021A5738 ; =0x45800000
	blx sub_0208E3C8
	str r0, [sp, #8]
	ldr r0, _021A5734 ; =0x000001BE
	sub r0, #8
	ldrsh r0, [r5, r0]
	blx sub_0208D374
	ldr r1, _021A5738 ; =0x45800000
	blx sub_0208E3C8
	add r6, r0, #0
	ldr r0, _021A5734 ; =0x000001BE
	sub r0, r0, #6
	ldrsh r0, [r5, r0]
	blx sub_0208D374
	ldr r1, _021A5738 ; =0x45800000
	blx sub_0208E3C8
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	blx sub_0208DF14
	mov r1, #0
	blx sub_0208D1D0
	bls _021A566E
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A5686
_021A566E:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A5686:
	blx sub_0208DA4C
	ldr r1, [sp]
	strh r0, [r4]
	add r0, r6, #0
	blx sub_0208DF14
	mov r1, #0
	blx sub_0208D1D0
	bls _021A56B8
	ldr r1, [sp]
	add r0, r6, #0
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A56D0
_021A56B8:
	ldr r1, [sp]
	add r0, r6, #0
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A56D0:
	blx sub_0208DA4C
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208DF14
	mov r1, #0
	blx sub_0208D1D0
	bls _021A5702
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A571A
_021A5702:
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208DF14
	add r1, r0, #0
	ldr r0, _021A5738 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A571A:
	blx sub_0208DA4C
	strh r0, [r4, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5724: .word 0x40490FDB
_021A5728: .word 0x3C23D70A
_021A572C: .word 0x3FC90FDB
_021A5730: .word 0x3ED70A3D
_021A5734: .word 0x000001BE
_021A5738: .word 0x45800000
	thumb_func_end ovy310_21a558c

	thumb_func_start sub_021A573C
sub_021A573C: ; 0x021A573C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A573C

	thumb_func_start sub_021A5740
sub_021A5740: ; 0x021A5740
	ldr r0, [r0, #8]
	cmp r0, #5
	bhi _021A5776
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A5752: ; jump table
	.short _021A575E - _021A5752 - 2 ; case 0
	.short _021A5762 - _021A5752 - 2 ; case 1
	.short _021A5766 - _021A5752 - 2 ; case 2
	.short _021A576A - _021A5752 - 2 ; case 3
	.short _021A576E - _021A5752 - 2 ; case 4
	.short _021A5772 - _021A5752 - 2 ; case 5
_021A575E:
	mov r0, #0
	bx lr
_021A5762:
	mov r0, #1
	bx lr
_021A5766:
	mov r0, #1
	bx lr
_021A576A:
	mov r0, #1
	bx lr
_021A576E:
	mov r0, #0
	bx lr
_021A5772:
	mov r0, #1
	bx lr
_021A5776:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5740

	thumb_func_start ovy310_21a577c
ovy310_21a577c: ; 0x021A577C
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a5808
	add r0, r4, #0
	bl ovy310_21a5824
	pop {r4, pc}
	thumb_func_end ovy310_21a577c

	thumb_func_start sub_021A578C
sub_021A578C: ; 0x021A578C
	ldr r3, _021A5790 ; =sub_021A5818
	bx r3
	.align 2, 0
_021A5790: .word sub_021A5818
	thumb_func_end sub_021A578C

	thumb_func_start ovy310_21a5794
ovy310_21a5794: ; 0x021A5794
	push {r3, r4}
	mov r4, #0
	strh r1, [r0]
	mov r2, #0x1b
	ldr r1, _021A57C8 ; =0x000007DB
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	lsl r2, r2, #4
	str r1, [r0, r2]
	sub r1, r2, #4
	strb r4, [r0, r1]
	ldr r3, _021A57CC ; =0xFFFFF4D1
	add r1, r2, #4
	strh r3, [r0, r1]
	add r1, r2, #6
	sub r4, #0xc9
	strh r4, [r0, r1]
	ldr r1, _021A57D0 ; =0xFFFFF000
	add r2, #8
	strh r1, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_021A57C8: .word 0x000007DB
_021A57CC: .word 0xFFFFF4D1
_021A57D0: .word 0xFFFFF000
	thumb_func_end ovy310_21a5794

	thumb_func_start ovy310_21a57d4
ovy310_21a57d4: ; 0x021A57D4
	push {r3, r4, r5, lr}
	ldr r1, _021A57F4 ; =0x00000634
	ldr r3, _021A57F8 ; =0x021A7864
	str r1, [sp]
	ldr r1, _021A57FC ; =0x00000FCC
	add r4, r0, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r5, r0, #0
	bl ovy310_21a5794
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_021A57F4: .word 0x00000634
_021A57F8: .word 0x021A7864
_021A57FC: .word 0x00000FCC
	thumb_func_end ovy310_21a57d4

	thumb_func_start sub_021A5800
sub_021A5800: ; 0x021A5800
	ldr r3, _021A5804 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A5804: .word GFL_HeapFree
	thumb_func_end sub_021A5800

	thumb_func_start ovy310_21a5808
ovy310_21a5808: ; 0x021A5808
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	mov r0, #0xa
	bl ovy310_21a4820
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy310_21a5808

	thumb_func_start sub_021A5818
sub_021A5818: ; 0x021A5818
	ldr r0, [r0, #0xc]
	ldr r3, _021A5820 ; =ovy310_21a4854
	bx r3
	nop
_021A5820: .word ovy310_21a4854
	thumb_func_end sub_021A5818

	thumb_func_start ovy310_21a5824
ovy310_21a5824: ; 0x021A5824
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [sp]
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	blx sub_0208D374
	ldr r1, _021A594C ; =0x45800000
	blx sub_0208E3C8
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r7, #0x3f
	str r0, [sp, #0xc]
	add r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r4, #0
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsl r7, r7, #0x18
	add r0, #0xe
	str r0, [sp, #8]
_021A585C:
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _021A5950 ; =0x40C90FDB
	blx sub_0208DD34
	ldr r1, _021A5954 ; =0x42C80000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A5958 ; =0x3FC90FDB
	blx sub_0208E144
	add r5, r0, #0
	blx sub_0208D2F0
	blx sub_0208B9B0
	blx sub_0208CC6C
	add r1, r0, #0
	ldr r0, [sp, #4]
	blx sub_0208DD34
	add r6, r0, #0
	add r0, r5, #0
	blx sub_0208D2F0
	blx sub_0208C028
	blx sub_0208CC6C
	add r1, r0, #0
	ldr r0, [sp, #4]
	blx sub_0208DD34
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021A594C ; =0x45800000
	bls _021A58C4
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _021A58D0
_021A58C4:
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r7, #0
	blx sub_0208E144
_021A58D0:
	blx sub_0208DA4C
	mov r1, #6
	add r2, r4, #0
	mul r2, r1
	ldr r1, [sp]
	add r6, r1, r2
	ldr r1, [sp, #0xc]
	strh r0, [r6, r1]
	add r0, r5, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021A594C ; =0x45800000
	bls _021A58FE
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _021A590A
_021A58FE:
	add r1, r5, #0
	blx sub_0208DD34
	add r1, r7, #0
	blx sub_0208E144
_021A590A:
	blx sub_0208DA4C
	ldr r1, [sp, #0x10]
	strh r0, [r6, r1]
	mov r0, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021A594C ; =0x45800000
	bls _021A592E
	mov r1, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _021A593A
_021A592E:
	mov r1, #0
	blx sub_0208DD34
	add r1, r7, #0
	blx sub_0208E144
_021A593A:
	blx sub_0208DA4C
	ldr r1, [sp, #8]
	add r4, r4, #1
	strh r0, [r6, r1]
	cmp r4, #0x64
	blt _021A585C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A594C: .word 0x45800000
_021A5950: .word 0x40C90FDB
_021A5954: .word 0x42C80000
_021A5958: .word 0x3FC90FDB
	thumb_func_end ovy310_21a5824

	thumb_func_start ovy310_21a595c
ovy310_21a595c: ; 0x021A595C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	ldrsh r5, [r4, r0]
	add r6, r1, #0
	add r7, r2, #0
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021A599E
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A5A84 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A59BA
_021A599E:
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A5A84 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A59BA:
	blx sub_0208DA4C
	str r0, [sp]
	mov r0, #2
	ldrsh r5, [r4, r0]
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021A59F8
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A5A84 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A5A14
_021A59F8:
	add r0, r5, #0
	blx sub_0208D374
	ldr r1, _021A5A84 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021A5A84 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A5A14:
	blx sub_0208DA4C
	str r0, [sp, #4]
	mov r0, #4
	ldrsh r4, [r4, r0]
	add r0, r4, #0
	blx sub_0208D374
	ldr r5, _021A5A84 ; =0x45800000
	add r1, r5, #0
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021A5A54
	add r0, r4, #0
	blx sub_0208D374
	add r1, r5, #0
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A5A70
_021A5A54:
	add r0, r4, #0
	blx sub_0208D374
	add r1, r5, #0
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A5A70:
	blx sub_0208DA4C
	str r0, [sp, #8]
	add r0, sp, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02067E1C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5A84: .word 0x45800000
	thumb_func_end ovy310_21a595c

	thumb_func_start ovy310_21a5a88
ovy310_21a5a88: ; 0x021A5A88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy310_21a5f68
	add r4, r0, #0
	add r1, r5, #0
	bl ovy310_21a5f84
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021A6048
	add r0, r4, #0
	bl ovy310_21a5fc8
	add r0, r4, #0
	bl ovy310_21a5fe8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5a88

	thumb_func_start ovy310_21a5ab4
ovy310_21a5ab4: ; 0x021A5AB4
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a602c
	add r0, r4, #0
	bl sub_021A5FDC
	add r0, r4, #0
	bl sub_021A5FC0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5ab4

	thumb_func_start ovy310_21a5acc
ovy310_21a5acc: ; 0x021A5ACC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy310_21a5ca0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy310_21a5acc

	thumb_func_start sub_021A5ADC
sub_021A5ADC: ; 0x021A5ADC
	ldr r3, _021A5AE0 ; =ovy310_21a5b04
	bx r3
	.align 2, 0
_021A5AE0: .word ovy310_21a5b04
	thumb_func_end sub_021A5ADC

	thumb_func_start sub_021A5AE4
sub_021A5AE4: ; 0x021A5AE4
	ldr r3, _021A5AEC ; =sub_021A5BA4
	mov r1, #1
	bx r3
	nop
_021A5AEC: .word sub_021A5BA4
	thumb_func_end sub_021A5AE4

	thumb_func_start ovy310_21a5af0
ovy310_21a5af0: ; 0x021A5AF0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_021A5BA4
	add r0, r4, #0
	bl ovy310_21a5c78
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5af0

	thumb_func_start ovy310_21a5b04
ovy310_21a5b04: ; 0x021A5B04
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _021A5B18
	cmp r1, #1
	beq _021A5B1E
	cmp r1, #2
	beq _021A5B24
	b _021A5B28
_021A5B18:
	bl sub_021A5B30
	b _021A5B28
_021A5B1E:
	bl ovy310_21a5b34
	b _021A5B28
_021A5B24:
	bl sub_021A5BA0
_021A5B28:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ovy310_21a5b04

	thumb_func_start sub_021A5B30
sub_021A5B30: ; 0x021A5B30
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5B30

	thumb_func_start ovy310_21a5b34
ovy310_21a5b34: ; 0x021A5B34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _021A5B8A
	add r7, r5, r0
_021A5B46:
	mov r0, #0x18
	mul r0, r4
	add r6, r5, r0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _021A5B64
	ldrh r1, [r6, #0x2c]
	ldr r0, [r5, #0x24]
	cmp r1, r0
	bhi _021A5B64
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy310_21a5bdc
_021A5B64:
	ldr r0, [r6, #0x28]
	cmp r0, #1
	bne _021A5B82
	ldr r0, [r6, #0x30]
	cmp r0, #1
	bne _021A5B82
	ldrh r1, [r6, #0x34]
	ldr r0, [r5, #0x24]
	cmp r1, r0
	bhi _021A5B82
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021A5C68
_021A5B82:
	ldrb r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blt _021A5B46
_021A5B8A:
	add r0, r5, #0
	bl ovy310_21a5bac
	cmp r0, #0
	beq _021A5B9C
	add r0, r5, #0
	mov r1, #2
	bl sub_021A5BA4
_021A5B9C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5b34

	thumb_func_start sub_021A5BA0
sub_021A5BA0: ; 0x021A5BA0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5BA0

	thumb_func_start sub_021A5BA4
sub_021A5BA4: ; 0x021A5BA4
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_021A5BA4

	thumb_func_start ovy310_21a5bac
ovy310_21a5bac: ; 0x021A5BAC
	push {r3, r4}
	mov r1, #0xa6
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r3, #0
	cmp r4, #0
	ble _021A5BD4
	mov r1, #0x18
_021A5BBC:
	add r2, r3, #0
	mul r2, r1
	add r2, r0, r2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	bne _021A5BCE
	mov r0, #0
	pop {r3, r4}
	bx lr
_021A5BCE:
	add r3, r3, #1
	cmp r3, r4
	blt _021A5BBC
_021A5BD4:
	mov r0, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a5bac

	thumb_func_start ovy310_21a5bdc
ovy310_21a5bdc: ; 0x021A5BDC
	push {r3, r4, r5, r6, r7, lr}
	mov r3, #0x18
	add r6, r1, #0
	add r2, r0, #0
	add r0, #0x28
	mul r6, r3
	add r1, r0, r6
	ldrb r3, [r1, #0xe]
	ldr r4, [r1, #0x14]
	add r7, sp, #0
	strh r3, [r7]
	ldrb r3, [r1, #0xf]
	strh r3, [r7, #2]
	mov r3, #1
	str r3, [r0, r6]
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bhi _021A5C22
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A5C0C: ; jump table
	.short _021A5C14 - _021A5C0C - 2 ; case 0
	.short _021A5C18 - _021A5C0C - 2 ; case 1
	.short _021A5C1C - _021A5C0C - 2 ; case 2
	.short _021A5C20 - _021A5C0C - 2 ; case 3
_021A5C14:
	ldrh r5, [r2, #0x16]
	b _021A5C22
_021A5C18:
	ldrh r5, [r2, #0x18]
	b _021A5C22
_021A5C1C:
	ldrh r5, [r2, #0x1a]
	b _021A5C22
_021A5C20:
	ldrh r5, [r2, #0x1c]
_021A5C22:
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r1, r5, #0
	bl Oam_SetOamAnimIndex
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C584
	add r0, r4, #0
	mov r1, #1
	bl Oam_EnableOamAnim
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0204C53C
	add r0, r4, #0
	bl sub_0204C540
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5bdc

	thumb_func_start sub_021A5C68
sub_021A5C68: ; 0x021A5C68
	mov r2, #0x18
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x3c]
	ldr r3, _021A5C74 ; =sub_0204C550
	bx r3
	.align 2, 0
_021A5C74: .word sub_0204C550
	thumb_func_end sub_021A5C68

	thumb_func_start ovy310_21a5c78
ovy310_21a5c78: ; 0x021A5C78
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r5, [r6, r0]
	mov r4, #0
	cmp r5, #0
	ble _021A5C9E
	mov r7, #0x18
_021A5C8A:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, r5
	blt _021A5C8A
_021A5C9E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a5c78

	thumb_func_start ovy310_21a5ca0
ovy310_21a5ca0: ; 0x021A5CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #4]
	add r6, r1, #0
	add r0, r3, #0
	sub r0, r6, r0
	sub r1, r0, #4
	str r0, [sp, #0x20]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0x1c]
	add r0, r2, #0
	sub r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r5, #0
	mov r4, #0
	sub r6, #8
	mov r7, #0
	cmp r0, #0
	ble _021A5D1A
	ldr r0, [sp, #4]
	str r0, [sp, #0x28]
	add r0, #0x28
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
_021A5CE2:
	add r0, r5, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r0, r1
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_021A5F54
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
	sub r6, #8
	blx sub_0208DF14
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r4, r4, #1
	cmp r7, r0
	blt _021A5CE2
_021A5D1A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021A5D88
	ldr r0, [sp, #0x20]
	sub r0, r0, #4
	cmp r0, #0
	ble _021A5DFE
	mov r0, #0x18
	add r7, r4, #0
	mul r7, r0
	add r0, r5, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x24]
	add r0, #0x28
	lsl r1, r6, #0x18
	lsl r2, r2, #0x18
	add r0, r0, r7
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_021A5F54
	ldr r0, [sp, #0x20]
	sub r0, r0, #4
	cmp r0, #4
	bge _021A5D60
	ldr r0, [sp, #4]
	mov r1, #1
	add r0, r0, r7
	str r1, [r0, #0x30]
	strh r1, [r0, #0x34]
_021A5D60:
	ldr r0, [sp, #0x20]
	sub r0, r0, #4
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0x1e
	blx sub_0208DD34
	mov r1, #0x41
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	mov r1, #0xfe
	lsl r1, r1, #0x16
	blx sub_0208E144
	add r1, r0, #0
	add r0, r5, #0
	b _021A5DF6
_021A5D88:
	ldr r0, [sp, #0x20]
	mov r1, #0x1d
	sub r0, r0, #4
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	beq _021A5DFE
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #3
	sub r0, r0, r1
	blx sub_0208D374
	mov r6, #1
	lsl r6, r6, #0x1e
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DD34
	mov r1, #0x41
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208E144
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208E144
	add r5, r0, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #0
	ldr r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x18
	ldr r2, [sp, #0x24]
	add r1, #0x28
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x18
	add r1, r1, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_021A5F54
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
_021A5DF6:
	blx sub_0208DF14
	add r5, r0, #0
	add r4, r4, #1
_021A5DFE:
	add r0, r5, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #2
	ldr r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x18
	ldr r2, [sp, #8]
	add r1, #0x28
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	sub r2, r2, #4
	sub r1, r1, #4
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_021A5F54
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
	blx sub_0208DF14
	add r5, r0, #0
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #8]
	add r4, r4, #1
	sub r0, r1, r0
	sub r1, r0, #4
	str r0, [sp, #0x14]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r7, #0
	sub r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r6, r0, #4
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _021A5EA4
	ldr r0, [sp, #4]
	str r0, [sp, #0x30]
	add r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_021A5E6C:
	add r0, r5, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r6, #0x18
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x30]
	lsr r2, r2, #0x18
	add r0, r0, r1
	ldr r1, [sp, #0x34]
	bl sub_021A5F54
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
	add r6, #8
	blx sub_0208DF14
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r4, r4, #1
	cmp r7, r0
	blt _021A5E6C
_021A5EA4:
	ldr r0, [sp, #0x14]
	mov r1, #0x1d
	sub r0, r0, #4
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	beq _021A5F1A
	ldr r1, [sp, #0x18]
	lsl r1, r1, #3
	sub r0, r0, r1
	blx sub_0208D374
	mov r6, #1
	lsl r6, r6, #0x1e
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DD34
	mov r1, #0x41
	lsl r1, r1, #0x18
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208E144
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208E144
	add r5, r0, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #1
	ldr r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x18
	ldr r2, [sp, #0x50]
	add r1, #0x28
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	sub r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_021A5F54
	mov r1, #0xfe
	add r0, r5, #0
	lsl r1, r1, #0x16
	blx sub_0208DF14
	add r5, r0, #0
	add r4, r4, #1
_021A5F1A:
	add r0, r5, #0
	blx sub_0208DA80
	add r3, r0, #0
	mov r0, #3
	ldr r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x18
	ldr r2, [sp, #0x50]
	add r1, #0x28
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	sub r2, r2, #4
	sub r1, r1, #4
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_021A5F54
	mov r1, #0xa6
	ldr r0, [sp, #4]
	add r2, r4, #1
	lsl r1, r1, #2
	strb r2, [r0, r1]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5ca0

	thumb_func_start sub_021A5F54
sub_021A5F54: ; 0x021A5F54
	strb r1, [r0, #0xe]
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	ldr r1, [sp]
	strb r2, [r0, #0xf]
	strh r3, [r0, #4]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021A5F54

	thumb_func_start ovy310_21a5f68
ovy310_21a5f68: ; 0x021A5F68
	push {r3, lr}
	ldr r1, _021A5F7C ; =0x0000022E
	ldr r3, _021A5F80 ; =0x021A7874
	str r1, [sp]
	add r1, #0x6e
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	nop
_021A5F7C: .word 0x0000022E
_021A5F80: .word 0x021A7874
	thumb_func_end ovy310_21a5f68

	thumb_func_start ovy310_21a5f84
ovy310_21a5f84: ; 0x021A5F84
	push {r4, r5}
	strh r1, [r0]
	mov r1, #0
	mov r2, #0xa6
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	lsl r2, r2, #2
	strb r1, [r0, r2]
	str r1, [r0, #4]
	add r4, r1, #0
	mov r2, #0x18
_021A5F9A:
	add r3, r1, #0
	mul r3, r2
	add r5, r0, r3
	str r4, [r5, #0x28]
	strh r4, [r5, #0x2c]
	str r4, [r5, #0x30]
	add r3, r5, #0
	strh r4, [r5, #0x34]
	add r3, #0x36
	strb r4, [r3]
	add r3, r5, #0
	add r3, #0x37
	strb r4, [r3]
	add r1, r1, #1
	str r4, [r5, #0x3c]
	cmp r1, #0x1a
	blt _021A5F9A
	pop {r4, r5}
	bx lr
	thumb_func_end ovy310_21a5f84

	thumb_func_start sub_021A5FC0
sub_021A5FC0: ; 0x021A5FC0
	ldr r3, _021A5FC4 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A5FC4: .word GFL_HeapFree
	thumb_func_end sub_021A5FC0

	thumb_func_start ovy310_21a5fc8
ovy310_21a5fc8: ; 0x021A5FC8
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	mov r0, #0x1a
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5fc8

	thumb_func_start sub_021A5FDC
sub_021A5FDC: ; 0x021A5FDC
	ldr r0, [r0, #4]
	ldr r3, _021A5FE4 ; =sub_0204BF98
	bx r3
	nop
_021A5FE4: .word sub_0204BF98
	thumb_func_end sub_021A5FDC

	thumb_func_start ovy310_21a5fe8
ovy310_21a5fe8: ; 0x021A5FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r4, #0
	add r0, sp, #0xc
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	add r6, r5, #0
	strb r4, [r0, #6]
	add r6, #8
	strb r4, [r0, #7]
	add r7, sp, #0xc
_021A6002:
	str r7, [sp]
	ldrh r0, [r6, #0xc]
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [r6, #8]
	bl Oam_CreateSprite
	mov r1, #0x18
	mul r1, r4
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x3c]
	cmp r4, #0x1a
	blt _021A6002
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a5fe8

	thumb_func_start ovy310_21a602c
ovy310_21a602c: ; 0x021A602C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x18
_021A6034:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #0x1a
	blt _021A6034
	pop {r4, r5, r6, pc}
	thumb_func_end ovy310_21a602c

	thumb_func_start sub_021A6048
sub_021A6048: ; 0x021A6048
	add r2, r0, #0
	add r3, r1, #0
	add r2, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bx lr
	thumb_func_end sub_021A6048

	thumb_func_start sub_021A605C
sub_021A605C: ; 0x021A605C
	mov r3, #0xd4
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	ldrh r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A605C

	thumb_func_start sub_021A606C
sub_021A606C: ; 0x021A606C
	mov r3, #0xd4
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	ldrb r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_021A606C

	thumb_func_start sub_021A607C
sub_021A607C: ; 0x021A607C
	mov r3, #0xd4
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_021A607C

	thumb_func_start sub_021A608C
sub_021A608C: ; 0x021A608C
	mov r3, #0xd4
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	ldrb r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021A608C

	thumb_func_start ovy310_21a609c
ovy310_21a609c: ; 0x021A609C
	push {r3, r4}
	mov r4, #0
	mov r2, #0xd4
_021A60A2:
	add r3, r4, #0
	mul r3, r2
	add r3, r0, r3
	ldrb r3, [r3, #4]
	cmp r1, r3
	bne _021A60B6
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
_021A60B6:
	add r4, r4, #1
	cmp r4, #3
	blt _021A60A2
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy310_21a609c

	thumb_func_start ovy310_21a60c4
ovy310_21a60c4: ; 0x021A60C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ovy310_21a609c
	mov r1, #0xd4
	mul r1, r0
	add r2, r5, #4
	add r1, r2, r1
	ldrb r2, [r1, #1]
	mov r0, #0
	cmp r2, #0
	ble _021A60FA
	mov r2, #0xc
_021A60E0:
	add r3, r0, #0
	mul r3, r2
	add r3, r1, r3
	ldrh r3, [r3, #8]
	cmp r4, r3
	bne _021A60F2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021A60F2:
	ldrb r3, [r1, #1]
	add r0, r0, #1
	cmp r0, r3
	blt _021A60E0
_021A60FA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a60c4

	thumb_func_start ovy310_21a6100
ovy310_21a6100: ; 0x021A6100
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ovy310_21a6314
	add r4, r0, #0
	add r1, r5, #0
	bl sub_021A6334
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy310_21a634c
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a6100

	thumb_func_start ovy310_21a6124
ovy310_21a6124: ; 0x021A6124
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A6368
	add r0, r4, #0
	bl sub_021A632C
	pop {r4, pc}
	thumb_func_end ovy310_21a6124

	thumb_func_start ovy310_21a6134
ovy310_21a6134: ; 0x021A6134
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A62A4
	add r0, r4, #0
	bl ovy310_21a61a4
	pop {r4, pc}
	thumb_func_end ovy310_21a6134

	thumb_func_start ovy310_21a6144
ovy310_21a6144: ; 0x021A6144
	push {r4, lr}
	lsl r1, r1, #0x18
	add r4, r0, #0
	lsr r1, r1, #0x18
	bl sub_021A62A0
	add r0, r4, #0
	bl ovy310_21a61a4
	pop {r4, pc}
	thumb_func_end ovy310_21a6144

	thumb_func_start sub_021A6158
sub_021A6158: ; 0x021A6158
	ldr r3, _021A615C ; =ovy310_21a6160
	bx r3
	.align 2, 0
_021A615C: .word ovy310_21a6160
	thumb_func_end sub_021A6158

	thumb_func_start ovy310_21a6160
ovy310_21a6160: ; 0x021A6160
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	bl sub_0204C124
	add r0, r5, #0
	bl ovy310_21a62d4
	cmp r0, #0
	beq _021A617E
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0204C124
_021A617E:
	add r0, r5, #0
	bl ovy310_21a62d4
	cmp r0, #0
	bne _021A6192
	add r0, r5, #0
	bl ovy310_21a62bc
	cmp r0, #0
	beq _021A619A
_021A6192:
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0204C124
_021A619A:
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a6160

	thumb_func_start ovy310_21a61a4
ovy310_21a61a4: ; 0x021A61A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, [r6, #0x10]
	ldr r1, [r6, #4]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r6, #8]
	add r5, r6, #0
	strh r1, [r0, #2]
	add r5, #0x20
	ldrh r2, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrh r1, [r5, #0x10]
	add r0, r4, #0
	bl Oam_SetOamAnimIndex
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl sub_0204C4D4
	add r0, r4, #0
	bl sub_0204C550
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add r2, sp, #0
	add r0, r6, #0
	add r1, sp, #0
	add r2, #2
	ldr r4, [r6, #0x14]
	bl sub_021A6304
	ldrh r2, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	bl Oam_SetOamAnimIndex
	add r0, r6, #0
	bl ovy310_21a62d4
	add r1, r0, #0
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0204C4D4
	add r0, r4, #0
	bl sub_0204C550
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add r2, sp, #0
	add r0, r6, #0
	add r1, sp, #0
	add r2, #2
	ldr r4, [r6, #0x18]
	bl sub_021A62F4
	ldrh r2, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	bl Oam_SetOamAnimIndex
	add r0, r6, #0
	bl ovy310_21a62bc
	add r1, r0, #0
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0204C4D4
	add r0, r4, #0
	bl sub_0204C550
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add r2, sp, #0
	add r0, r6, #0
	add r1, sp, #0
	add r2, #2
	ldr r4, [r6, #0x1c]
	bl sub_021A62E4
	ldrh r2, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	bl Oam_SetOamAnimIndex
	add r0, r6, #0
	bl ovy310_21a62ac
	add r1, r0, #0
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0204C4D4
	add r0, r4, #0
	bl sub_0204C550
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy310_21a61a4

	thumb_func_start sub_021A62A0
sub_021A62A0: ; 0x021A62A0
	strb r1, [r0, #2]
	bx lr
	thumb_func_end sub_021A62A0

	thumb_func_start sub_021A62A4
sub_021A62A4: ; 0x021A62A4
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A62A4

	thumb_func_start ovy310_21a62ac
ovy310_21a62ac: ; 0x021A62AC
	push {r3, lr}
	ldrb r0, [r0, #2]
	mov r1, #0xa
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ovy310_21a62ac

	thumb_func_start ovy310_21a62bc
ovy310_21a62bc: ; 0x021A62BC
	push {r3, lr}
	ldrb r0, [r0, #2]
	mov r1, #0x64
	blx sub_0208D65C
	add r0, r1, #0
	mov r1, #0xa
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ovy310_21a62bc

	thumb_func_start ovy310_21a62d4
ovy310_21a62d4: ; 0x021A62D4
	push {r3, lr}
	ldrb r0, [r0, #2]
	mov r1, #0x64
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ovy310_21a62d4

	thumb_func_start sub_021A62E4
sub_021A62E4: ; 0x021A62E4
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
	add r3, #0x14
	strh r3, [r1]
	sub r0, #8
	strh r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A62E4

	thumb_func_start sub_021A62F4
sub_021A62F4: ; 0x021A62F4
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
	add r3, #0xf
	strh r3, [r1]
	sub r0, #8
	strh r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A62F4

	thumb_func_start sub_021A6304
sub_021A6304: ; 0x021A6304
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
	add r3, #0xa
	strh r3, [r1]
	sub r0, #8
	strh r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6304

	thumb_func_start ovy310_21a6314
ovy310_21a6314: ; 0x021A6314
	push {r3, lr}
	mov r1, #0x69
	lsl r1, r1, #2
	str r1, [sp]
	ldr r3, _021A6328 ; =0x021A787C
	mov r1, #0x34
	mov r2, #0
	bl GFL_HeapAllocate
	pop {r3, pc}
	.align 2, 0
_021A6328: .word 0x021A787C
	thumb_func_end ovy310_21a6314

	thumb_func_start sub_021A632C
sub_021A632C: ; 0x021A632C
	ldr r3, _021A6330 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A6330: .word GFL_HeapFree
	thumb_func_end sub_021A632C

	thumb_func_start sub_021A6334
sub_021A6334: ; 0x021A6334
	mov r3, #0
	strh r1, [r0]
	strb r3, [r0, #2]
	str r3, [r0, #0xc]
	add r2, r3, #0
_021A633E:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x10]
	cmp r3, #4
	blt _021A633E
	bx lr
	thumb_func_end sub_021A6334

	thumb_func_start ovy310_21a634c
ovy310_21a634c: ; 0x021A634C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl sub_021A6370
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A63CC
	add r0, r5, #0
	bl ovy310_21a6374
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a634c

	thumb_func_start sub_021A6368
sub_021A6368: ; 0x021A6368
	ldr r3, _021A636C ; =ovy310_21a63b4
	bx r3
	.align 2, 0
_021A636C: .word ovy310_21a63b4
	thumb_func_end sub_021A6368

	thumb_func_start sub_021A6370
sub_021A6370: ; 0x021A6370
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A6370

	thumb_func_start ovy310_21a6374
ovy310_21a6374: ; 0x021A6374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r4, #0
	add r0, sp, #0xc
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	add r6, r5, #0
	strb r4, [r0, #6]
	add r6, #0x20
	strb r4, [r0, #7]
	add r7, sp, #0xc
_021A638E:
	str r7, [sp]
	ldrh r0, [r6, #0xc]
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [r6, #8]
	bl Oam_CreateSprite
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x10]
	cmp r4, #4
	blt _021A638E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy310_21a6374

	thumb_func_start ovy310_21a63b4
ovy310_21a63b4: ; 0x021A63B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A63BA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl Oam_RemoveOam
	add r4, r4, #1
	cmp r4, #4
	blt _021A63BA
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a63b4

	thumb_func_start sub_021A63CC
sub_021A63CC: ; 0x021A63CC
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_021A63CC

	thumb_func_start ovy310_21a63e0
ovy310_21a63e0: ; 0x021A63E0
	push {r4, lr}
	bl ovy310_21a67b8
	add r4, r0, #0
	bl ovy310_21a67e4
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy310_21a63e0

	thumb_func_start ovy310_21a63f0
ovy310_21a63f0: ; 0x021A63F0
	push {r4, lr}
	add r4, r0, #0
	bl ovy310_21a6838
	add r0, r4, #0
	bl sub_021A67DC
	pop {r4, pc}
	thumb_func_end ovy310_21a63f0

	thumb_func_start ovy310_21a6400
ovy310_21a6400: ; 0x021A6400
	push {r3, lr}
	bl ovy310_21a67f8
	pop {r3, pc}
	thumb_func_end ovy310_21a6400

	thumb_func_start sub_021A6408
sub_021A6408: ; 0x021A6408
	ldr r3, _021A640C ; =ovy310_21a6448
	bx r3
	.align 2, 0
_021A640C: .word ovy310_21a6448
	thumb_func_end sub_021A6408

	thumb_func_start sub_021A6410
sub_021A6410: ; 0x021A6410
	ldr r3, _021A6414 ; =sub_021A6430
	bx r3
	.align 2, 0
_021A6414: .word sub_021A6430
	thumb_func_end sub_021A6410

	thumb_func_start sub_021A6418
sub_021A6418: ; 0x021A6418
	ldr r3, _021A641C ; =sub_021A6440
	bx r3
	.align 2, 0
_021A641C: .word sub_021A6440
	thumb_func_end sub_021A6418

	thumb_func_start sub_021A6420
sub_021A6420: ; 0x021A6420
	ldr r3, _021A6424 ; =sub_021A67A0
	bx r3
	.align 2, 0
_021A6424: .word sub_021A67A0
	thumb_func_end sub_021A6420

	thumb_func_start sub_021A6428
sub_021A6428: ; 0x021A6428
	ldr r3, _021A642C ; =sub_021A67B4
	bx r3
	.align 2, 0
_021A642C: .word sub_021A67B4
	thumb_func_end sub_021A6428

	thumb_func_start sub_021A6430
sub_021A6430: ; 0x021A6430
	mov r3, #1
	str r1, [r0, #0x18]
	mov r1, #0
	str r3, [r0, #0x14]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x12]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6430

	thumb_func_start sub_021A6440
sub_021A6440: ; 0x021A6440
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A6440

	thumb_func_start ovy310_21a6448
ovy310_21a6448: ; 0x021A6448
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021A64B6
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021A64B6
	ldr r1, [r0, #0x18]
	cmp r1, #9
	bhi _021A64B6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A6468: ; jump table
	.short _021A647C - _021A6468 - 2 ; case 0
	.short _021A6482 - _021A6468 - 2 ; case 1
	.short _021A6488 - _021A6468 - 2 ; case 2
	.short _021A648E - _021A6468 - 2 ; case 3
	.short _021A6494 - _021A6468 - 2 ; case 4
	.short _021A649A - _021A6468 - 2 ; case 5
	.short _021A64A0 - _021A6468 - 2 ; case 6
	.short _021A64A6 - _021A6468 - 2 ; case 7
	.short _021A64AC - _021A6468 - 2 ; case 8
	.short _021A64B2 - _021A6468 - 2 ; case 9
_021A647C:
	bl ovy310_21a64b8
	pop {r3, pc}
_021A6482:
	bl ovy310_21a6528
	pop {r3, pc}
_021A6488:
	bl ovy310_21a6598
	pop {r3, pc}
_021A648E:
	bl ovy310_21a6608
	pop {r3, pc}
_021A6494:
	bl ovy310_21a6648
	pop {r3, pc}
_021A649A:
	bl ovy310_21a6688
	pop {r3, pc}
_021A64A0:
	bl ovy310_21a66c8
	pop {r3, pc}
_021A64A6:
	bl ovy310_21a6708
	pop {r3, pc}
_021A64AC:
	bl ovy310_21a6740
	pop {r3, pc}
_021A64B2:
	bl ovy310_21a6780
_021A64B6:
	pop {r3, pc}
	thumb_func_end ovy310_21a6448

	thumb_func_start ovy310_21a64b8
ovy310_21a64b8: ; 0x021A64B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0x3c
	lsl r0, r0, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021A651C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	blx sub_0208D374
	ldr r1, _021A6520 ; =0x45800000
	blx sub_0208E3C8
	ldr r5, _021A6524 ; =0x41800000
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xa
	add r1, r2, #0
	mul r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsl r0, r0, #0x13
	lsr r3, r0, #0x18
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A651C: .word FX_SinCosTable_
_021A6520: .word 0x45800000
_021A6524: .word 0x41800000
	thumb_func_end ovy310_21a64b8

	thumb_func_start ovy310_21a6528
ovy310_21a6528: ; 0x021A6528
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0x1e
	lsl r0, r0, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021A658C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	blx sub_0208D374
	ldr r1, _021A6590 ; =0x45800000
	blx sub_0208E3C8
	ldr r5, _021A6594 ; =0x41800000
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #1
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsl r0, r0, #0x13
	lsr r3, r0, #0x18
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
	nop
_021A658C: .word FX_SinCosTable_
_021A6590: .word 0x45800000
_021A6594: .word 0x41800000
	thumb_func_end ovy310_21a6528

	thumb_func_start ovy310_21a6598
ovy310_21a6598: ; 0x021A6598
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0x5a
	lsl r0, r0, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021A65FC ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	blx sub_0208D374
	ldr r1, _021A6600 ; =0x45800000
	blx sub_0208E3C8
	ldr r5, _021A6604 ; =0x41800000
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #1
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsl r0, r0, #0x13
	lsr r3, r0, #0x18
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
	nop
_021A65FC: .word FX_SinCosTable_
_021A6600: .word 0x45800000
_021A6604: .word 0x41800000
	thumb_func_end ovy310_21a6598

	thumb_func_start ovy310_21a6608
ovy310_21a6608: ; 0x021A6608
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	lsr r1, r0, #2
	mov r0, #1
	tst r0, r1
	bne _021A661C
	mov r3, #0
	b _021A661E
_021A661C:
	mov r3, #6
_021A661E:
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x14
	bls _021A6642
	add r0, r4, #0
	bl sub_021A6440
	add r0, r4, #0
	bl sub_021A67A0
_021A6642:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a6608

	thumb_func_start ovy310_21a6648
ovy310_21a6648: ; 0x021A6648
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	lsr r1, r0, #2
	mov r0, #1
	tst r0, r1
	bne _021A665C
	mov r3, #0
	b _021A665E
_021A665C:
	mov r3, #6
_021A665E:
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0xa
	bls _021A6682
	add r0, r4, #0
	bl sub_021A6440
	add r0, r4, #0
	bl sub_021A67A0
_021A6682:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a6648

	thumb_func_start ovy310_21a6688
ovy310_21a6688: ; 0x021A6688
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	lsr r1, r0, #2
	mov r0, #1
	tst r0, r1
	bne _021A669C
	mov r3, #0
	b _021A669E
_021A669C:
	mov r3, #6
_021A669E:
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	bls _021A66C2
	add r0, r4, #0
	bl sub_021A6440
	add r0, r4, #0
	bl sub_021A67A0
_021A66C2:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a6688

	thumb_func_start ovy310_21a66c8
ovy310_21a66c8: ; 0x021A66C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	lsr r1, r0, #2
	mov r0, #1
	tst r0, r1
	bne _021A66DC
	mov r3, #0
	b _021A66DE
_021A66DC:
	mov r3, #9
_021A66DE:
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x14
	bls _021A6702
	add r0, r4, #0
	bl sub_021A6440
	add r0, r4, #0
	bl sub_021A67A0
_021A6702:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a66c8

	thumb_func_start ovy310_21a6708
ovy310_21a6708: ; 0x021A6708
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #0x14
	bhs _021A6724
	mov r0, #7
	mul r0, r1
	mov r1, #0x14
	blx sub_0208D868
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _021A6726
_021A6724:
	mov r3, #7
_021A6726:
	ldrh r0, [r4, #0x12]
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy310_21a6708

	thumb_func_start ovy310_21a6740
ovy310_21a6740: ; 0x021A6740
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	mov r5, #7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x1e
	blx sub_0208D868
	add r3, r0, #0
	ldrh r0, [r4, #0x12]
	sub r3, r5, r3
	lsl r3, r3, #0x18
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	lsr r3, r3, #0x18
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	bls _021A677E
	add r0, r4, #0
	bl sub_021A6440
	add r0, r4, #0
	bl sub_021A67A0
_021A677E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy310_21a6740

	thumb_func_start ovy310_21a6780
ovy310_21a6780: ; 0x021A6780
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	mov r3, #7
	str r0, [sp]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	bl sub_0202780C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy310_21a6780

	thumb_func_start sub_021A67A0
sub_021A67A0: ; 0x021A67A0
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #8]
	ldrb r2, [r2, #0x10]
	ldr r3, _021A67B0 ; =MI_CpuCopy8
	lsl r2, r2, #1
	bx r3
	nop
_021A67B0: .word MI_CpuCopy8
	thumb_func_end sub_021A67A0

	thumb_func_start sub_021A67B4
sub_021A67B4: ; 0x021A67B4
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021A67B4

	thumb_func_start ovy310_21a67b8
ovy310_21a67b8: ; 0x021A67B8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021A67D4 ; =0x0000029B
	ldr r3, _021A67D8 ; =0x021A788C
	str r1, [sp]
	mov r1, #0x20
	mov r2, #0
	add r4, r0, #0
	bl GFL_HeapAllocate
	strh r4, [r0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021A67D4: .word 0x0000029B
_021A67D8: .word 0x021A788C
	thumb_func_end ovy310_21a67b8

	thumb_func_start sub_021A67DC
sub_021A67DC: ; 0x021A67DC
	ldr r3, _021A67E0 ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021A67E0: .word GFL_HeapFree
	thumb_func_end sub_021A67DC

	thumb_func_start ovy310_21a67e4
ovy310_21a67e4: ; 0x021A67E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x20
	ldrh r4, [r5]
	blx MI_CpuFill8
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy310_21a67e4

	thumb_func_start ovy310_21a67f8
ovy310_21a67f8: ; 0x021A67F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r3, #0
	mov r0, #1
	str r0, [r5, #4]
	mov r0, #0xb6
	str r1, [r5, #8]
	add r7, r2, #0
	strb r6, [r5, #0x10]
	lsl r0, r0, #2
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _021A6834 ; =0x021A788C
	lsl r1, r6, #1
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0xc]
	cmp r6, #0
	ble _021A6830
_021A6822:
	lsl r2, r4, #1
	ldrh r1, [r7, r2]
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	strh r1, [r0, r2]
	cmp r4, r6
	blt _021A6822
_021A6830:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A6834: .word 0x021A788C
	thumb_func_end ovy310_21a67f8

	thumb_func_start ovy310_21a6838
ovy310_21a6838: ; 0x021A6838
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ovy310_21a6838
_021A6848:
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x68, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x00, 0x18, 0xE8, 0x28, 0x50, 0x18, 0xE8, 0x60, 0x88
	.byte 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x68, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x11, 0x20, 0x06, 0x00, 0x10, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x00, 0x1C, 0x04, 0x00, 0x04, 0x0E
	.byte 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x03, 0x05, 0x1A, 0x05, 0x00, 0x10, 0x0E, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x0C, 0x1A, 0x05, 0x00, 0x10, 0x0E
	.byte 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x01, 0x00, 0x05, 0x46, 0x01, 0x00, 0x05, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x4C, 0x01, 0x00, 0x05, 0x4C, 0x01, 0x00, 0x05, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x4C, 0x01, 0x00, 0x05, 0x4C, 0x01, 0x00, 0x05
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x05
	.byte 0xA0, 0x00, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE0, 0x01, 0x00, 0x05, 0xE0, 0x01, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xE8, 0xFF, 0x18, 0xA8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x68, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x00, 0x08, 0x19, 0x07, 0x05, 0x06, 0x0D, 0x15, 0x10
	.byte 0x13, 0x12, 0x1D, 0x1A, 0x1C, 0x0B, 0x0E, 0x18, 0x16, 0x11, 0x17, 0x1B, 0x0A, 0x0B, 0x0C, 0x0D
	.byte 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x0C, 0x14, 0x0A, 0x09, 0x0F, 0xA0, 0xF0, 0x8E, 0xA6, 0xA0, 0xF0
	.byte 0xA8, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B
	.byte 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B
	.byte 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x8E, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0xA8, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x4C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x01, 0x00, 0x05, 0x46, 0x01, 0x00, 0x05
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x40, 0x01, 0x00, 0x05
	.byte 0x40, 0x01, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x40, 0x01, 0x00, 0x05, 0x40, 0x01, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x05, 0x8C, 0x02, 0x00, 0x05, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x80, 0x02, 0x00, 0x05, 0x80, 0x02, 0x00, 0x05
	.byte 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x80, 0x02, 0x00, 0x05
	.byte 0x80, 0x02, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x07, 0x02, 0x00, 0x1C, 0x03, 0x00, 0x03, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x12, 0x20, 0x06, 0x00, 0x05, 0x0F
	.byte 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x03, 0x20, 0x03, 0x00, 0x00, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x20, 0x04, 0x00, 0x00, 0x0F
	.byte 0x03, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x03, 0x0B, 0x1E, 0x02, 0x00, 0x00, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x03, 0x0D, 0x1E, 0x02, 0x00, 0x00, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x03, 0x0F, 0x1E, 0x02, 0x00, 0x00, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0F, 0x0E, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x0E, 0x0F, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x0F, 0x00, 0x00
	.byte 0x52, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0F, 0x0E, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x02, 0x00, 0x1C, 0x03, 0x08, 0x05, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x03, 0x1C, 0x03, 0x08, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x06, 0x1C, 0x03, 0x08, 0x05, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x09, 0x1C, 0x03, 0x08, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x0C, 0x1C, 0x03, 0x08, 0x05, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x0F, 0x1C, 0x03, 0x08, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x12, 0x1C, 0x03, 0x08, 0x05, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x15, 0x1C, 0x03, 0x08, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x18, 0x1C, 0x03, 0x08, 0x05, 0x0F
	.byte 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x02, 0x1B, 0x1C, 0x03, 0x08, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00, 0x22, 0x00, 0x44, 0x00
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x0C, 0x14, 0x0A, 0x09, 0x0F, 0x08, 0x19, 0x07, 0x05, 0x06, 0x0D
	.byte 0x15, 0x10, 0x13, 0x12, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x1D, 0x1A
	.byte 0x1C, 0x0B, 0x0E, 0x18, 0x16, 0x11, 0x17, 0x1B, 0x68, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F
	.byte 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F
	.byte 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0xF0, 0x00, 0x20, 0x68, 0xFF, 0x20, 0x58
	.byte 0x88, 0xFF, 0x58, 0x80, 0x68, 0xFF, 0x80, 0xA8, 0x08, 0x70, 0x30, 0x98, 0x00, 0xA0, 0xA0, 0xC0
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0F, 0x0E, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0E, 0x0F, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8A, 0x00, 0x6C, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1F, 0x07, 0x15, 0x00, 0x1F, 0x1F, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00
	.byte 0x10, 0x00, 0x1F, 0x00, 0x1F, 0x10, 0x1F, 0x00, 0x00, 0x1F, 0x00, 0x1F, 0x15, 0x07, 0x1F, 0x1F
	.byte 0x00, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x15, 0x07, 0x1F, 0x1F, 0x1F, 0x00, 0x1F, 0x1F, 0x1F, 0x00
	.byte 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x14, 0x0E, 0x09, 0x03, 0x00, 0x1F
	.byte 0x1F, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x1D, 0x12, 0x12, 0x00, 0x1F, 0x00, 0x1D, 0x1F, 0x00, 0x1D
	.byte 0x12, 0x1F, 0x05, 0x1F, 0x00, 0x1F, 0x00, 0x00, 0x1D, 0x1F, 0x00, 0x1F, 0x00, 0x12, 0x1F, 0x00
	.byte 0x1F, 0x10, 0x00, 0x00, 0x1F, 0x00, 0x10, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x1F, 0x1D, 0x10, 0x10
	.byte 0x10, 0x00, 0x10, 0x11, 0x00, 0x00, 0x00, 0x1F, 0x1F, 0x1F, 0x10, 0x1F, 0x00, 0x10, 0x00, 0x00
	.byte 0x10, 0x10, 0x11, 0x00, 0x1D, 0x00, 0x0A, 0x03, 0x00, 0x03, 0x12, 0x14, 0x12, 0x10, 0x0E, 0x0C
	.byte 0x0A, 0x09, 0x07, 0x05, 0x03, 0x00, 0x00, 0x00, 0x1F, 0x07, 0x15, 0x00, 0x00, 0x10, 0x10, 0x00
	.byte 0x1F, 0x00, 0x10, 0x10, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x1F
	.byte 0x15, 0x07, 0x1F, 0x10, 0x1F, 0x00, 0x00, 0x00, 0x16, 0x1F, 0x15, 0x07, 0x1F, 0x1F, 0x00, 0x00
	.byte 0x11, 0x16, 0x00, 0x00, 0x16, 0x10, 0x00, 0x00, 0x16, 0x1F, 0x00, 0x00, 0x16, 0x1F, 0x14, 0x0E
	.byte 0x09, 0x03, 0x00, 0x00, 0x16, 0x1F, 0x10, 0x1F, 0x00, 0x00, 0x00, 0x12, 0x12, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x16, 0x05, 0x00, 0x00, 0x16, 0x1F, 0x10, 0x00, 0x00, 0x00, 0x16
	.byte 0x1F, 0x12, 0x1F, 0x0E, 0x11, 0x00, 0x10, 0x00, 0x00, 0x10, 0x10, 0x1F, 0x10, 0x10, 0x00, 0x00
	.byte 0x11, 0x00, 0x10, 0x10, 0x00, 0x10, 0x10, 0x10, 0x0E, 0x00, 0x00, 0x1F, 0x1F, 0x1F, 0x10, 0x00
	.byte 0x00, 0x10, 0x1F, 0x10, 0x00, 0x00, 0x10, 0x0E, 0x00, 0x10, 0x0A, 0x09, 0x00, 0x03, 0x12, 0x14
	.byte 0x12, 0x10, 0x0E, 0x0C, 0x0A, 0x09, 0x07, 0x05, 0x03, 0x00, 0x00, 0x00, 0x1F, 0x07, 0x15, 0x1F
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x1F, 0x1F, 0x00, 0x1F, 0x10, 0x1F, 0x1F, 0x1F, 0x00, 0x1F
	.byte 0x00, 0x00, 0x1F, 0x1F, 0x15, 0x07, 0x1F, 0x10, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x00, 0x15, 0x07
	.byte 0x1F, 0x1F, 0x00, 0x1F, 0x11, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x1F
	.byte 0x00, 0x00, 0x14, 0x0E, 0x09, 0x03, 0x1F, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x1F, 0x1F, 0x12
	.byte 0x12, 0x1F, 0x00, 0x1F, 0x1F, 0x00, 0x1F, 0x1F, 0x12, 0x00, 0x05, 0x00, 0x1F, 0x00, 0x00, 0x1F
	.byte 0x1F, 0x00, 0x1F, 0x00, 0x00, 0x12, 0x1F, 0x1F, 0x11, 0x00, 0x10, 0x1F, 0x00, 0x1F, 0x10, 0x00
	.byte 0x00, 0x1F, 0x00, 0x1F, 0x11, 0x1F, 0x10, 0x10, 0x10, 0x00, 0x00, 0x0B, 0x1F, 0x10, 0x1F, 0x1F
	.byte 0x1F, 0x1F, 0x10, 0x00, 0x1F, 0x00, 0x00, 0x1F, 0x00, 0x10, 0x0B, 0x1F, 0x1F, 0x00, 0x0A, 0x0A
	.byte 0x10, 0x03, 0x12, 0x14, 0x12, 0x10, 0x0E, 0x0C, 0x0A, 0x09, 0x07, 0x05, 0x03, 0x00, 0x00, 0x00
	.byte 0x46, 0x01, 0x00, 0x05, 0x46, 0x01, 0x00, 0x05, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x40, 0x01, 0x00, 0x05, 0x40, 0x01, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x80, 0x02, 0x00, 0x05, 0x80, 0x02, 0x00, 0x05
	.byte 0x10, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x05
	.byte 0x8C, 0x02, 0x00, 0x05, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x8C, 0x02, 0x00, 0x05, 0x8C, 0x02, 0x00, 0x05, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xA0, 0x02, 0x00, 0x05, 0xA0, 0x02, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x02, 0x00, 0x05, 0xA0, 0x02, 0x00, 0x05
	.byte 0x10, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x01, 0x00, 0x05
	.byte 0x60, 0x01, 0x00, 0x05, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x02, 0x00, 0x1C, 0x04, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0xFF, 0x0C, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x04, 0x13, 0x07, 0x68, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x96, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x11, 0x0B, 0x0F, 0x05, 0x88, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x0D, 0x10, 0x13, 0x05
	.byte 0x68, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x02, 0x00, 0x1C, 0x03, 0x00, 0x04, 0x0F, 0x03, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x12, 0x20
	.byte 0x02, 0x00, 0x00, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x14, 0x20, 0x04, 0x00, 0x00, 0x0F, 0x03, 0x04, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x02, 0x00, 0x1C
	.byte 0x04, 0x00, 0x05, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x0D, 0x04, 0x13, 0x07, 0x00, 0x04, 0x0F, 0x01, 0x02, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x11, 0x0B, 0x0F
	.byte 0x05, 0xF8, 0x04, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x0D, 0x10, 0x13, 0x05, 0x26, 0x04, 0x0F, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x0A, 0x0B
	.byte 0x04, 0x02, 0x00, 0x0F, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x0C, 0x05, 0x14, 0x05, 0x0F, 0x04, 0x0F, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0xD8, 0xF0, 0xA8, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x05, 0x00, 0x02, 0x00, 0x05
	.byte 0x10, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0xD8, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x03, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0x01, 0xCF, 0x19, 0x02, 0xE1, 0xCE, 0x19, 0x02, 0x72, 0x65, 0x73, 0x65
	.byte 0x61, 0x72, 0x63, 0x68, 0x5F, 0x74, 0x6F, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x72, 0x65, 0x73, 0x65
	.byte 0x61, 0x72, 0x63, 0x68, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x63, 0x00, 0x72, 0x65, 0x73, 0x65
	.byte 0x61, 0x72, 0x63, 0x68, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x6F, 0x6E, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x72, 0x65, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x5F, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x72, 0x65, 0x63, 0x6F, 0x76, 0x65, 0x72, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x71, 0x75, 0x65, 0x75, 0x65, 0x2E, 0x63, 0x00, 0x62, 0x67, 0x5F, 0x66, 0x6F, 0x6E, 0x74, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x63, 0x69, 0x72, 0x63, 0x6C, 0x65, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68
	.byte 0x2E, 0x63, 0x00, 0x00, 0x61, 0x72, 0x72, 0x6F, 0x77, 0x2E, 0x63, 0x00, 0x70, 0x65, 0x72, 0x63
	.byte 0x65, 0x6E, 0x74, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x61, 0x6C, 0x65
	.byte 0x74, 0x74, 0x65, 0x5F, 0x61, 0x6E, 0x69, 0x6D, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A6848
